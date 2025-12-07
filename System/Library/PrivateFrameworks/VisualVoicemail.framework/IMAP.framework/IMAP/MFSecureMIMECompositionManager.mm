@interface MFSecureMIMECompositionManager
+ (BOOL)isRevokedCertificate:(__SecCertificate *)certificate sendingAddress:(id)address;
+ (__SecIdentity)copyEncryptionIdentityForAccount:(id)account sendingAddress:(id)address error:(id *)error;
+ (__SecIdentity)copySigningIdentityForAccount:(id)account sendingAddress:(id)address error:(id *)error;
+ (id)copyEncryptionCertificatesForAccount:(id)account recipientAddress:(id)address error:(id *)error;
- (BOOL)_nts_copyEncryptionIdentity:(__SecIdentity *)identity error:(id *)error certificatesByRecipient:(id *)recipient errorsByRecipient:(id *)byRecipient;
- (BOOL)_nts_copySigningIdentity:(__SecIdentity *)identity error:(id *)error;
- (BOOL)_shouldAllowSend_nts;
- (BOOL)_updateEncryptionStatus_nts;
- (BOOL)_updateSigningStatus_nts;
- (BOOL)shouldAllowSend;
- (MFSecureMIMECompositionManager)initWithSendingAccount:(id)account signingPolicy:(int)policy encryptionPolicy:(int)encryptionPolicy;
- (MFSecureMIMECompositionManagerDelegate)delegate;
- (NSSet)recipients;
- (NSString)sendingAddress;
- (id)compositionSpecification;
- (int)encryptionStatus;
- (int)signingStatus;
- (void)_determineEncryptionStatusWithNewRecipients:(id)recipients;
- (void)_determineEncryptionStatusWithSendingAddress:(id)address;
- (void)_determineIdentitiesWithSendingAddress:(id)address forSigning:(BOOL)signing encryption:(BOOL)encryption;
- (void)_determineRevocationStatusWithIdentity:(__SecIdentity *)identity sendingAddress:(id)address;
- (void)_determineSigningStatusWithSendingAddress:(id)address;
- (void)_notifyDelegateEncryptionStatusDidChange:(int)change certsByRecipient:(id)recipient errorsByRecipient:(id)byRecipient identity:(__SecIdentity *)identity error:(id)error;
- (void)_notifyDelegateSigningStatusDidChange:(int)change identity:(__SecIdentity *)identity error:(id)error;
- (void)_nts_setEncryptionIdentity:(__SecIdentity *)identity error:(id)error;
- (void)_nts_setSigningIdentity:(__SecIdentity *)identity error:(id)error;
- (void)addRecipients:(id)recipients;
- (void)dealloc;
- (void)invalidate;
- (void)removeRecipients:(id)recipients;
- (void)setDelegate:(id)delegate;
- (void)setSendingAddress:(id)address;
@end

@implementation MFSecureMIMECompositionManager

- (MFSecureMIMECompositionManager)initWithSendingAccount:(id)account signingPolicy:(int)policy encryptionPolicy:(int)encryptionPolicy
{
  accountCopy = account;
  v16.receiver = self;
  v16.super_class = MFSecureMIMECompositionManager;
  v10 = [(MFSecureMIMECompositionManager *)&v16 init];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D24F28]) initWithName:@"MFSecureMIMECompositionManager_lock" andDelegate:0];
    lock = v10->_lock;
    v10->_lock = v11;

    v13 = dispatch_queue_create("com.apple.mobilemail.MFSecureMIMECompositionManagerQueue", 0);
    queue = v10->_queue;
    v10->_queue = v13;

    objc_storeStrong(&v10->_sendingAccount, account);
    v10->_signingPolicy = policy;
    v10->_encryptionPolicy = encryptionPolicy;
    [(MFSecureMIMECompositionManager *)v10 _updateSigningStatus_nts];
    [(MFSecureMIMECompositionManager *)v10 _updateEncryptionStatus_nts];
  }

  return v10;
}

- (void)dealloc
{
  signingIdentity = self->_signingIdentity;
  if (signingIdentity)
  {
    CFRelease(signingIdentity);
  }

  encryptionIdentity = self->_encryptionIdentity;
  if (encryptionIdentity)
  {
    CFRelease(encryptionIdentity);
  }

  v5.receiver = self;
  v5.super_class = MFSecureMIMECompositionManager;
  [(MFSecureMIMECompositionManager *)&v5 dealloc];
}

- (void)addRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if ([recipientsCopy count])
  {
    v5 = [recipientsCopy copy];
    [(NSLock *)self->_lock lock];
    if (self->_invalidated)
    {
      [(NSLock *)self->_lock unlock];
    }

    else
    {
      recipients = self->_recipients;
      if (!recipients)
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v8 = self->_recipients;
        self->_recipients = v7;

        recipients = self->_recipients;
      }

      [(NSMutableSet *)recipients unionSet:v5];
      encryptionPolicy = self->_encryptionPolicy;
      if (encryptionPolicy)
      {
        ++self->_encryptionStatusSemaphore;
      }

      _updateEncryptionStatus_nts = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
      encryptionStatus = self->_encryptionStatus;
      [(NSLock *)self->_lock unlock];
      if (_updateEncryptionStatus_nts)
      {
        [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:0 errorsByRecipient:0 identity:0 error:0];
      }

      if (encryptionPolicy)
      {
        queue = self->_queue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __48__MFSecureMIMECompositionManager_addRecipients___block_invoke;
        v13[3] = &unk_279E346E0;
        v13[4] = self;
        v14 = v5;
        dispatch_async(queue, v13);
      }
    }
  }
}

- (void)removeRecipients:(id)recipients
{
  recipientsCopy = recipients;
  [(NSLock *)self->_lock lock];
  if (self->_invalidated)
  {
    [(NSLock *)self->_lock unlock];
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_24;
  }

  allObjects = [recipientsCopy allObjects];
  v8 = [(NSMutableDictionary *)self->_errorsByRecipient count];
  v9 = [(NSMutableDictionary *)self->_certificatesByRecipient count];
  [(NSMutableSet *)self->_recipients minusSet:recipientsCopy];
  [(NSMutableDictionary *)self->_errorsByRecipient removeObjectsForKeys:allObjects];
  [(NSMutableDictionary *)self->_certificatesByRecipient removeObjectsForKeys:allObjects];
  if (!self->_encryptionStatusSemaphore)
  {
    if ([(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts]|| [(NSMutableDictionary *)self->_certificatesByRecipient count]!= v9)
    {
      encryptionStatus = self->_encryptionStatus;
    }

    else
    {
      v13 = [(NSMutableDictionary *)self->_errorsByRecipient count];
      encryptionStatus = self->_encryptionStatus;
      if (v13 == v8)
      {
        v10 = 0;
        v4 = 0;
        v5 = 0;
        v6 = 0;
        v11 = 0;
        goto LABEL_20;
      }
    }

    if ([(NSMutableDictionary *)self->_errorsByRecipient count])
    {
      v6 = [(NSMutableDictionary *)self->_errorsByRecipient copy];
    }

    else
    {
      v6 = 0;
    }

    if ([(NSMutableDictionary *)self->_certificatesByRecipient count])
    {
      v5 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
    }

    else
    {
      v5 = 0;
    }

    encryptionIdentity = self->_encryptionIdentity;
    if (encryptionIdentity)
    {
      v10 = CFRetain(encryptionIdentity);
      v4 = 0;
    }

    else
    {
      v4 = self->_encryptionIdentityError;
      v10 = 0;
    }

    v11 = 1;
    goto LABEL_20;
  }

  v10 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  v11 = 0;
  encryptionStatus = 1;
LABEL_20:

  [(NSLock *)self->_lock unlock];
  if (v11)
  {
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v5 errorsByRecipient:v6 identity:v10 error:v4];
  }

  if (v10)
  {
    CFRelease(v10);
  }

LABEL_24:
}

- (void)invalidate
{
  [(NSLock *)self->_lock lock];
  delegate = self->_delegate;
  self->_delegate = 0;

  self->_invalidated = 1;
  lock = self->_lock;

  [(NSLock *)lock unlock];
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  [(NSLock *)self->_lock lock];
  delegate = self->_delegate;
  self->_delegate = delegateCopy;
  v6 = delegateCopy;

  [(NSLock *)self->_lock unlock];
}

- (MFSecureMIMECompositionManagerDelegate)delegate
{
  [(NSLock *)self->_lock lock];
  v3 = self->_delegate;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)setSendingAddress:(id)address
{
  addressCopy = address;
  [(NSLock *)self->_lock lock];
  if (!self->_invalidated && ![(NSString *)self->_sendingAddress isEqualToString:addressCopy])
  {
    v7 = [addressCopy copy];
    sendingAddress = self->_sendingAddress;
    self->_sendingAddress = v7;

    if (self->_signingPolicy && self->_sendingAddress)
    {
      ++self->_signingStatusSemaphore;
      v5 = 1;
    }

    else
    {
      v5 = 0;
    }

    _updateSigningStatus_nts = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
    if (self->_encryptionPolicy && self->_sendingAddress)
    {
      ++self->_encryptionStatusSemaphore;
      v6 = 1;
    }

    else
    {
      v6 = 0;
    }

    signingStatus = self->_signingStatus;
    _updateEncryptionStatus_nts = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
    encryptionStatus = self->_encryptionStatus;
    [(NSLock *)self->_lock unlock];
    if (_updateSigningStatus_nts)
    {
      [(MFSecureMIMECompositionManager *)self _notifyDelegateSigningStatusDidChange:signingStatus identity:0 error:0];
      if (!_updateEncryptionStatus_nts)
      {
        goto LABEL_4;
      }
    }

    else if (!_updateEncryptionStatus_nts)
    {
      goto LABEL_4;
    }

    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:0 errorsByRecipient:0 identity:0 error:0];
    goto LABEL_4;
  }

  [(NSLock *)self->_lock unlock];
  v5 = 0;
  v6 = 0;
  v7 = 0;
LABEL_4:
  if ((v5 & 1) != 0 || v6)
  {
    queue = self->_queue;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__MFSecureMIMECompositionManager_setSendingAddress___block_invoke;
    v14[3] = &unk_279E35028;
    v14[4] = self;
    v15 = v7;
    v17 = v5;
    v18 = v6;
    v16 = addressCopy;
    dispatch_async(queue, v14);
  }
}

void *__52__MFSecureMIMECompositionManager_setSendingAddress___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineIdentitiesWithSendingAddress:*(a1 + 40) forSigning:*(a1 + 56) encryption:1];
  if (*(a1 + 56) == 1)
  {
    result = [*(a1 + 32) _determineSigningStatusWithSendingAddress:*(a1 + 40)];
  }

  if (*(a1 + 57) == 1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 48);

    return [v3 _determineEncryptionStatusWithSendingAddress:v4];
  }

  return result;
}

- (NSString)sendingAddress
{
  [(NSLock *)self->_lock lock];
  v3 = self->_sendingAddress;
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (void)_determineIdentitiesWithSendingAddress:(id)address forSigning:(BOOL)signing encryption:(BOOL)encryption
{
  encryptionCopy = encryption;
  signingCopy = signing;
  addressCopy = address;
  if (signingCopy)
  {
    v9 = objc_opt_class();
    sendingAccount = self->_sendingAccount;
    v18 = 0;
    v11 = [v9 copySigningIdentityForAccount:sendingAccount sendingAddress:addressCopy error:&v18];
    v12 = v18;
    if (!encryptionCopy)
    {
LABEL_3:
      v13 = 0;
      v14 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
    if (!encryptionCopy)
    {
      goto LABEL_3;
    }
  }

  v15 = objc_opt_class();
  v16 = self->_sendingAccount;
  v17 = 0;
  v14 = [v15 copyEncryptionIdentityForAccount:v16 sendingAddress:addressCopy error:&v17];
  v13 = v17;
LABEL_6:
  [(NSLock *)self->_lock lock];
  if (!self->_invalidated)
  {
    if (signingCopy)
    {
      [(MFSecureMIMECompositionManager *)self _nts_setSigningIdentity:v11 error:v12];
    }

    if (encryptionCopy)
    {
      [(MFSecureMIMECompositionManager *)self _nts_setEncryptionIdentity:v14 error:v13];
    }
  }

  [(NSLock *)self->_lock unlock];
  if (v11)
  {
    CFRelease(v11);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

- (void)_determineRevocationStatusWithIdentity:(__SecIdentity *)identity sendingAddress:(id)address
{
  v19 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  certificateRef = 0;
  v7 = SecIdentityCopyCertificate(identity, &certificateRef);
  if (!certificateRef)
  {
    v8 = vm_imap_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = addressCopy;
      _os_log_impl(&dword_2720B1000, v8, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors SecIdentityCopyCertificate could not find certificate for %@", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if ([objc_opt_class() isRevokedCertificate:certificateRef sendingAddress:addressCopy])
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:0];
    [(NSLock *)self->_lock lock];
    if (!self->_signingStatusSemaphore && (signingIdentity = self->_signingIdentity) != 0 && CFEqual(identity, signingIdentity))
    {
      [(MFSecureMIMECompositionManager *)self _nts_setSigningIdentity:0 error:v8];
      _updateSigningStatus_nts = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
      signingStatus = self->_signingStatus;
      [(NSLock *)self->_lock unlock];
      if (_updateSigningStatus_nts)
      {
        queue = self->_queue;
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v13[2] = __88__MFSecureMIMECompositionManager__determineRevocationStatusWithIdentity_sendingAddress___block_invoke;
        v13[3] = &unk_279E35050;
        v13[4] = self;
        v15 = signingStatus;
        v8 = v8;
        v14 = v8;
        dispatch_async(queue, v13);
      }
    }

    else
    {
      [(NSLock *)self->_lock unlock];
    }

LABEL_7:
  }
}

- (void)_determineSigningStatusWithSendingAddress:(id)address
{
  addressCopy = address;
  v15 = 0;
  [(NSLock *)self->_lock lock];
  signingStatusSemaphore = self->_signingStatusSemaphore;
  if (!signingStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineSigningStatusWithSendingAddress:];
  }

  self->_signingStatusSemaphore = signingStatusSemaphore - 1;
  if (self->_invalidated)
  {
    v6 = 0;
LABEL_5:
    [(NSLock *)self->_lock unlock];
    goto LABEL_6;
  }

  v14 = 0;
  [(MFSecureMIMECompositionManager *)self _nts_copySigningIdentity:&v15 error:&v14];
  v6 = v14;
  if (self->_signingStatusSemaphore)
  {
    goto LABEL_5;
  }

  v7 = v15;
  if (v15)
  {
    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__MFSecureMIMECompositionManager__determineSigningStatusWithSendingAddress___block_invoke;
    block[3] = &unk_279E35078;
    block[4] = self;
    v13 = v7;
    v12 = addressCopy;
    dispatch_async(v8, block);
  }

  _updateSigningStatus_nts = [(MFSecureMIMECompositionManager *)self _updateSigningStatus_nts];
  signingStatus = self->_signingStatus;
  [(NSLock *)self->_lock unlock];
  if (_updateSigningStatus_nts)
  {
    [(MFSecureMIMECompositionManager *)self _notifyDelegateSigningStatusDidChange:signingStatus identity:v15 error:v6];
  }

LABEL_6:
  if (v15)
  {
    CFRelease(v15);
  }
}

- (void)_notifyDelegateSigningStatusDidChange:(int)change identity:(__SecIdentity *)identity error:(id)error
{
  v6 = *&change;
  v17[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  delegate = [(MFSecureMIMECompositionManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    if (identity)
    {
      v16 = @"IdentityRef";
      v17[0] = identity;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v17;
      v12 = &v16;
    }

    else
    {
      if (!errorCopy)
      {
        v13 = 0;
        goto LABEL_7;
      }

      v14 = @"IdentityError";
      v15 = errorCopy;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v15;
      v12 = &v14;
    }

    v13 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
LABEL_7:
    [delegate secureMIMECompositionManager:self signingStatusDidChange:v6 context:v13];
  }
}

- (BOOL)_updateSigningStatus_nts
{
  signingStatus = self->_signingStatus;
  if (self->_signingPolicy)
  {
    if (self->_signingStatusSemaphore)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2 * (self->_signingIdentity == 0);
    }
  }

  else
  {
    v3 = 2;
  }

  self->_signingStatus = v3;
  return signingStatus != v3;
}

- (void)_nts_setSigningIdentity:(__SecIdentity *)identity error:(id)error
{
  errorCopy = error;
  signingIdentity = self->_signingIdentity;
  v11 = errorCopy;
  if (signingIdentity != identity)
  {
    if (signingIdentity)
    {
      CFRelease(signingIdentity);
    }

    if (identity)
    {
      signingIdentity = CFRetain(identity);
    }

    else
    {
      signingIdentity = 0;
    }

    errorCopy = v11;
    self->_signingIdentity = signingIdentity;
  }

  signingIdentityError = self->_signingIdentityError;
  p_signingIdentityError = &self->_signingIdentityError;
  if (signingIdentityError != errorCopy)
  {
    objc_storeStrong(p_signingIdentityError, error);
    errorCopy = v11;
  }

  MEMORY[0x2821F96F8](signingIdentity, errorCopy);
}

- (BOOL)_nts_copySigningIdentity:(__SecIdentity *)identity error:(id *)error
{
  if (identity)
  {
    signingIdentity = self->_signingIdentity;
    if (signingIdentity)
    {
      signingIdentity = CFRetain(signingIdentity);
    }

    *identity = signingIdentity;
  }

  if (!error)
  {
    return 0;
  }

  v8 = self->_signingIdentityError;
  *error = v8;
  return v8 != 0;
}

- (int)signingStatus
{
  [(NSLock *)self->_lock lock];
  signingStatus = self->_signingStatus;
  [(NSLock *)self->_lock unlock];
  return signingStatus;
}

- (void)_determineEncryptionStatusWithSendingAddress:(id)address
{
  addressCopy = address;
  cf = 0;
  [(NSLock *)self->_lock lock];
  encryptionStatusSemaphore = self->_encryptionStatusSemaphore;
  if (!encryptionStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineEncryptionStatusWithSendingAddress:];
  }

  v6 = encryptionStatusSemaphore - 1;
  self->_encryptionStatusSemaphore = v6;
  if (v6 || self->_invalidated || ![(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts])
  {
    [(NSLock *)self->_lock unlock];
    v10 = 0;
    v9 = 0;
    v8 = 0;
  }

  else
  {
    encryptionStatus = self->_encryptionStatus;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    [(MFSecureMIMECompositionManager *)self _nts_copyEncryptionIdentity:&cf error:&v13 certificatesByRecipient:&v12 errorsByRecipient:&v11];
    v8 = v13;
    v9 = v12;
    v10 = v11;
    [(NSLock *)self->_lock unlock];
    [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v9 errorsByRecipient:v10 identity:cf error:v8];
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (void)_determineEncryptionStatusWithNewRecipients:(id)recipients
{
  v56 = *MEMORY[0x277D85DE8];
  recipientsCopy = recipients;
  cf = 0;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = recipientsCopy;
  v8 = [v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        v13 = objc_opt_class();
        sendingAccount = self->_sendingAccount;
        v48 = 0;
        v15 = [v13 copyEncryptionCertificatesForAccount:sendingAccount recipientAddress:v12 error:&v48];
        v16 = v48;
        v17 = v16;
        if (v15)
        {
          v18 = v5;
          v19 = v15;
        }

        else
        {
          if (!v16)
          {
            goto LABEL_11;
          }

          v18 = v6;
          v19 = v17;
        }

        [v18 setObject:v19 forKey:v12];
LABEL_11:
      }

      v9 = [v7 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v9);
  }

  [(NSLock *)self->_lock lock];
  encryptionStatusSemaphore = self->_encryptionStatusSemaphore;
  if (!encryptionStatusSemaphore)
  {
    [MFSecureMIMECompositionManager _determineEncryptionStatusWithNewRecipients:];
  }

  self->_encryptionStatusSemaphore = encryptionStatusSemaphore - 1;
  if (self->_invalidated)
  {
    [(NSLock *)self->_lock unlock];
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    v24 = [v7 mutableCopy];
    [v24 minusSet:self->_recipients];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v25 = v24;
    v26 = [v25 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v45;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v45 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v44 + 1) + 8 * j);
          [v5 removeObjectForKey:v30];
          [v6 removeObjectForKey:v30];
        }

        v27 = [v25 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v27);
    }

    errorsByRecipient = self->_errorsByRecipient;
    if (!errorsByRecipient)
    {
      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v33 = self->_errorsByRecipient;
      self->_errorsByRecipient = v32;

      errorsByRecipient = self->_errorsByRecipient;
    }

    [(NSMutableDictionary *)errorsByRecipient addEntriesFromDictionary:v6];
    certificatesByRecipient = self->_certificatesByRecipient;
    if (!certificatesByRecipient)
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v36 = self->_certificatesByRecipient;
      self->_certificatesByRecipient = v35;

      certificatesByRecipient = self->_certificatesByRecipient;
    }

    [(NSMutableDictionary *)certificatesByRecipient addEntriesFromDictionary:v5];
    if (self->_encryptionStatusSemaphore)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v37 = 0;
      encryptionStatus = 1;
    }

    else
    {
      _updateEncryptionStatus_nts = [(MFSecureMIMECompositionManager *)self _updateEncryptionStatus_nts];
      encryptionStatus = self->_encryptionStatus;
      if (_updateEncryptionStatus_nts)
      {
        v42 = 0;
        v43 = 0;
        v41 = 0;
        [(MFSecureMIMECompositionManager *)self _nts_copyEncryptionIdentity:&cf error:&v43 certificatesByRecipient:&v42 errorsByRecipient:&v41];
        v21 = v43;
        v22 = v42;
        v23 = v41;
        v37 = 1;
      }

      else
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v37 = 0;
      }
    }

    [(NSLock *)self->_lock unlock];
    v40 = cf;
    if (v37)
    {
      [(MFSecureMIMECompositionManager *)self _notifyDelegateEncryptionStatusDidChange:encryptionStatus certsByRecipient:v22 errorsByRecipient:v23 identity:cf error:v21];
      v40 = cf;
    }

    if (v40)
    {
      CFRelease(v40);
    }
  }
}

- (BOOL)_updateEncryptionStatus_nts
{
  encryptionStatus = self->_encryptionStatus;
  if (!self->_encryptionPolicy)
  {
    goto LABEL_7;
  }

  if (!self->_encryptionStatusSemaphore)
  {
    if (self->_encryptionIdentity)
    {
      v5 = [(NSMutableSet *)self->_recipients count];
      if (v5 == [(NSMutableDictionary *)self->_certificatesByRecipient count])
      {
        v4 = 0;
        goto LABEL_8;
      }
    }

LABEL_7:
    v4 = 2;
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:
  self->_encryptionStatus = v4;
  return encryptionStatus != v4;
}

- (void)_nts_setEncryptionIdentity:(__SecIdentity *)identity error:(id)error
{
  errorCopy = error;
  encryptionIdentity = self->_encryptionIdentity;
  v11 = errorCopy;
  if (encryptionIdentity != identity)
  {
    if (encryptionIdentity)
    {
      CFRelease(encryptionIdentity);
    }

    if (identity)
    {
      encryptionIdentity = CFRetain(identity);
    }

    else
    {
      encryptionIdentity = 0;
    }

    errorCopy = v11;
    self->_encryptionIdentity = encryptionIdentity;
  }

  encryptionIdentityError = self->_encryptionIdentityError;
  p_encryptionIdentityError = &self->_encryptionIdentityError;
  if (encryptionIdentityError != errorCopy)
  {
    objc_storeStrong(p_encryptionIdentityError, error);
    errorCopy = v11;
  }

  MEMORY[0x2821F96F8](encryptionIdentity, errorCopy);
}

- (BOOL)_nts_copyEncryptionIdentity:(__SecIdentity *)identity error:(id *)error certificatesByRecipient:(id *)recipient errorsByRecipient:(id *)byRecipient
{
  if (identity)
  {
    encryptionIdentity = self->_encryptionIdentity;
    if (encryptionIdentity)
    {
      encryptionIdentity = CFRetain(encryptionIdentity);
    }

    *identity = encryptionIdentity;
  }

  if (error)
  {
    *error = self->_encryptionIdentityError;
  }

  if (recipient)
  {
    if (![(NSMutableDictionary *)self->_certificatesByRecipient count])
    {
      *recipient = 0;
      if (byRecipient)
      {
        goto LABEL_11;
      }

LABEL_15:
      if (error)
      {
        return *error != 0;
      }

      return 0;
    }

    v12 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
    *recipient = v12;
  }

  if (!byRecipient)
  {
    goto LABEL_15;
  }

LABEL_11:
  if ([(NSMutableDictionary *)self->_errorsByRecipient count])
  {
    v13 = [(NSMutableDictionary *)self->_errorsByRecipient copy];
    *byRecipient = v13;

    if (!error)
    {
      return 0;
    }

    return *error != 0;
  }

  *byRecipient = 0;
  if (error)
  {
    return *error != 0;
  }

  return 0;
}

- (void)_notifyDelegateEncryptionStatusDidChange:(int)change certsByRecipient:(id)recipient errorsByRecipient:(id)byRecipient identity:(__SecIdentity *)identity error:(id)error
{
  v10 = *&change;
  recipientCopy = recipient;
  byRecipientCopy = byRecipient;
  errorCopy = error;
  delegate = [(MFSecureMIMECompositionManager *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_14;
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (recipientCopy)
  {
    [v15 setObject:recipientCopy forKey:@"CertificatesByRecipient"];
  }

  if (byRecipientCopy)
  {
    [v15 setObject:byRecipientCopy forKey:@"ErrorsByRecipient"];
  }

  if (identity)
  {
    v16 = @"IdentityRef";
    v17 = v15;
    identityCopy = identity;
LABEL_10:
    [v17 setObject:identityCopy forKey:v16];
    goto LABEL_11;
  }

  if (errorCopy)
  {
    v16 = @"IdentityError";
    v17 = v15;
    identityCopy = errorCopy;
    goto LABEL_10;
  }

LABEL_11:
  if (![v15 count])
  {

    v15 = 0;
  }

  [delegate secureMIMECompositionManager:self encryptionStatusDidChange:v10 context:v15];

LABEL_14:
}

- (int)encryptionStatus
{
  [(NSLock *)self->_lock lock];
  encryptionStatus = self->_encryptionStatus;
  [(NSLock *)self->_lock unlock];
  return encryptionStatus;
}

- (NSSet)recipients
{
  [(NSLock *)self->_lock lock];
  v3 = [(NSMutableSet *)self->_recipients copy];
  [(NSLock *)self->_lock unlock];

  return v3;
}

- (id)compositionSpecification
{
  [(NSLock *)self->_lock lock];
  if (*&self->_encryptionStatusSemaphore == 0 && [(MFSecureMIMECompositionManager *)self _shouldAllowSend_nts])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    _shouldSign_nts = [(MFSecureMIMECompositionManager *)self _shouldSign_nts];
    _shouldEncrypt_nts = [(MFSecureMIMECompositionManager *)self _shouldEncrypt_nts];
    v6 = [MEMORY[0x277CCABB0] numberWithBool:_shouldSign_nts];
    [v3 setObject:v6 forKeyedSubscript:@"ShouldSign"];

    v7 = [MEMORY[0x277CCABB0] numberWithBool:_shouldEncrypt_nts];
    [v3 setObject:v7 forKeyedSubscript:@"ShouldEncrypt"];

    if (_shouldSign_nts)
    {
      signingIdentity = self->_signingIdentity;
      if (!signingIdentity)
      {
        [MFSecureMIMECompositionManager compositionSpecification];
      }

      [v3 setObject:signingIdentity forKeyedSubscript:@"SigningIdentity"];
      encryptionIdentity = self->_encryptionIdentity;
      if (encryptionIdentity)
      {
        [v3 setObject:encryptionIdentity forKeyedSubscript:@"EncryptionIdentity"];
      }
    }

    if (_shouldEncrypt_nts)
    {
      v10 = self->_encryptionIdentity;
      if (!v10)
      {
        [MFSecureMIMECompositionManager compositionSpecification];
      }

      [v3 setObject:v10 forKeyedSubscript:@"EncryptionIdentity"];
      if ([(NSMutableDictionary *)self->_certificatesByRecipient count])
      {
        v11 = [(NSMutableDictionary *)self->_certificatesByRecipient copy];
        [v3 setObject:v11 forKeyedSubscript:@"RecipientCertificates"];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  [(NSLock *)self->_lock unlock];

  return v3;
}

- (BOOL)shouldAllowSend
{
  [(NSLock *)self->_lock lock];
  _shouldAllowSend_nts = [(MFSecureMIMECompositionManager *)self _shouldAllowSend_nts];
  [(NSLock *)self->_lock unlock];
  return _shouldAllowSend_nts;
}

- (BOOL)_shouldAllowSend_nts
{
  if (self->_signingPolicy == 2 && self->_signingStatus)
  {
    return 0;
  }

  if (self->_encryptionPolicy == 2)
  {
    return self->_encryptionStatus == 0;
  }

  return 1;
}

+ (__SecIdentity)copySigningIdentityForAccount:(id)account sendingAddress:(id)address error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v8 = [account signingIdentityPersistentReferenceForAddress:addressCopy];
  v15 = 0;
  v9 = [MFMessageKeychainManager copyIdentityForPersistentReference:v8 error:&v15];
  v10 = v15;
  v11 = v10;
  if (error && !v9)
  {
    if (v10)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v17[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v12 = 0;
    }

    addressCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"You can’t send signed messages because a signing identity for the address “%@” could not be found.  Go to the Advanced settings for this account to choose a signing identity.", addressCopy];
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:addressCopy title:0 userInfo:v12];
  }

  return v9;
}

+ (__SecIdentity)copyEncryptionIdentityForAccount:(id)account sendingAddress:(id)address error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v8 = [account encryptionIdentityPersistentReferenceForAddress:addressCopy];
  v15 = 0;
  v9 = [MFMessageKeychainManager copyIdentityForPersistentReference:v8 error:&v15];
  v10 = v15;
  v11 = v10;
  if (error && !v9)
  {
    if (v10)
    {
      v16 = *MEMORY[0x277CCA7E8];
      v17[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v12 = 0;
    }

    addressCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"You can’t send encrypted messages because an encryption identity for the address “%@” could not be found.  Go to the Advanced settings for this account to choose an encryption identity.", addressCopy];
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1052 localizedDescription:addressCopy title:0 userInfo:v12];
  }

  return v9;
}

+ (id)copyEncryptionCertificatesForAccount:(id)account recipientAddress:(id)address error:(id *)error
{
  v45 = *MEMORY[0x277D85DE8];
  addressCopy = address;
  v39 = 0;
  v8 = [account copyDataForRemoteEncryptionCertificatesForAddress:addressCopy error:&v39];
  v9 = v39;
  if ([v8 count])
  {
    errorCopy = error;
    v33 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = v8;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = SecCertificateCreateWithData(0, v15);
          if (v16)
          {
            v17 = v16;
            v18 = checkCertificateExpiration(v16, addressCopy);

            if (!v18)
            {
              [v33 addObject:v17];
            }

            CFRelease(v17);
            v9 = v18;
          }

          else
          {
            v19 = vm_imap_log(0);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v43 = v15;
              _os_log_impl(&dword_2720B1000, v19, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors SecCertificateCreateWithData() failed for %@", buf, 0xCu);
            }

            v20 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:@"An error occurred while retrieving the encryption certificate." title:0 userInfo:0];

            v9 = v20;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v12);
    }

    v21 = v33;
    if ([v33 count])
    {
      v21 = v33;
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v8 = v31;
    error = errorCopy;
  }

  else
  {
    v34 = 0;
    v23 = [MFMessageKeychainManager copyEncryptionCertificateForAddress:addressCopy error:&v34];
    v24 = v34;
    v21 = v24;
    if (v23)
    {
      v25 = checkCertificateExpiration(v23, addressCopy);

      if (v25)
      {
        v22 = 0;
      }

      else
      {
        v22 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v23, 0}];
      }

      CFRelease(v23);
      v9 = v25;
    }

    else
    {
      if (!v9)
      {
        if (v24)
        {
          v40 = *MEMORY[0x277CCA7E8];
          v41 = v24;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          v27 = @"An error occurred while searching for an encryption certificate for “%@” in your keychain.";
        }

        else
        {
          v26 = 0;
          v27 = @"You can’t send encrypted messages because an encryption certificate for the address “%@” could not be found.";
        }

        addressCopy = [MEMORY[0x277CCACA8] stringWithFormat:v27, addressCopy];
        v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:addressCopy title:@"Unable to Encrypt" userInfo:v26];
      }

      v22 = 0;
    }
  }

  if (error && !v22 && v9)
  {
    v29 = v9;
    *error = v9;
  }

  return v22;
}

+ (BOOL)isRevokedCertificate:(__SecCertificate *)certificate sendingAddress:(id)address
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  addressCopy = address;
  v7 = [[v5 alloc] initWithCapacity:2];
  v8 = [MFMessageKeychainManager copySMIMESigningPolicyForAddress:addressCopy];

  if (v8)
  {
    [v7 addObject:v8];
    CFRelease(v8);
  }

  Revocation = SecPolicyCreateRevocation(3uLL);
  if (Revocation)
  {
    v10 = Revocation;
    [v7 addObject:Revocation];
    CFRelease(v10);
  }

  trust = 0;
  v11 = SecTrustCreateWithCertificates(certificate, v7, &trust);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = trust == 0;
  }

  if (v12)
  {
    v13 = vm_imap_log(trust);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MFSecureMIMECompositionManager isRevokedCertificate:v11 sendingAddress:v13];
    }

    goto LABEL_17;
  }

  v14 = MEMORY[0x2743C2800]();
  CFRelease(trust);
  v16 = vm_imap_log(v15);
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MFSecureMIMECompositionManager isRevokedCertificate:v14 sendingAddress:v17];
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v22 = 0;
    _os_log_impl(&dword_2720B1000, v17, OS_LOG_TYPE_DEFAULT, "#SMIMEErrors Revocation check succeeded (SecTrustResultType: %d)", buf, 8u);
  }

  v18 = 1;
LABEL_18:

  return v18;
}

+ (void)isRevokedCertificate:(int)a1 sendingAddress:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "#SMIMEErrors SecTrustCreateWithCertificates returned %ld", &v2, 0xCu);
}

+ (void)isRevokedCertificate:(int)a1 sendingAddress:(NSObject *)a2 .cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_2720B1000, a2, OS_LOG_TYPE_ERROR, "#SMIMEErrors Revocation check failed with status %ld", &v2, 0xCu);
}

@end