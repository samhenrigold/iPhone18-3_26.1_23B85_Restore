@interface VSPrivacyVoucherLockbox
+ (id)getVouchersFromSelectedAppDescriptions:(id)descriptions forProviderID:(id)d;
- (NSArray)unredeemedVouchers;
- (VSPrivacyVoucherLockbox)init;
- (id)_voucherArchiveURL;
- (void)issueVouchers:(id)vouchers;
- (void)issueVouchersForAppDescriptions:(id)descriptions providerID:(id)d;
- (void)issueVouchersForApps:(id)apps providerID:(id)d;
- (void)redeemVoucher:(id)voucher;
- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info;
- (void)setUnredeemedVouchers:(id)vouchers;
- (void)unredeemedVouchers;
@end

@implementation VSPrivacyVoucherLockbox

- (VSPrivacyVoucherLockbox)init
{
  v6.receiver = self;
  v6.super_class = VSPrivacyVoucherLockbox;
  v2 = [(VSPrivacyVoucherLockbox *)&v6 init];
  if (v2)
  {
    v3 = [[VSRemoteNotifier alloc] initWithNotificationName:@"VSPrivacyConsentVouchersDidChangeNotification"];
    remoteNotifier = v2->_remoteNotifier;
    v2->_remoteNotifier = v3;

    [(VSRemoteNotifier *)v2->_remoteNotifier setDelegate:v2];
  }

  return v2;
}

- (void)remoteNotifier:(id)notifier didReceiveRemoteNotificationWithUserInfo:(id)info
{
  [(VSPrivacyVoucherLockbox *)self willChangeValueForKey:@"unredeemedVouchers", info];

  [(VSPrivacyVoucherLockbox *)self didChangeValueForKey:@"unredeemedVouchers"];
}

- (void)issueVouchersForApps:(id)apps providerID:(id)d
{
  dCopy = d;
  appsCopy = apps;
  [(VSPrivacyVoucherLockbox *)self removeAllVouchers];
  nonChannelApps = [appsCopy nonChannelApps];
  if ([appsCopy hasUserChannelList])
  {
    [appsCopy subscribedApps];
  }

  else
  {
    [appsCopy availableApps];
  }
  v9 = ;

  v10 = [nonChannelApps arrayByAddingObjectsFromArray:v9];

  [(VSPrivacyVoucherLockbox *)self issueVouchersForAppDescriptions:v10 providerID:dCopy];
}

- (void)issueVouchersForAppDescriptions:(id)descriptions providerID:(id)d
{
  v5 = [VSPrivacyVoucherLockbox getVouchersFromSelectedAppDescriptions:descriptions forProviderID:d];
  [(VSPrivacyVoucherLockbox *)self issueVouchers:v5];
}

- (void)issueVouchers:(id)vouchers
{
  vouchersCopy = vouchers;
  unredeemedVouchers = [(VSPrivacyVoucherLockbox *)self unredeemedVouchers];
  v6 = [unredeemedVouchers mutableCopy];

  [v6 addObjectsFromArray:vouchersCopy];
  [(VSPrivacyVoucherLockbox *)self setUnredeemedVouchers:v6];
}

- (void)redeemVoucher:(id)voucher
{
  voucherCopy = voucher;
  v5 = [(VSPrivacyVoucherLockbox *)self mutableArrayValueForKey:@"unredeemedVouchers"];
  [v5 removeObject:voucherCopy];
}

- (id)_voucherArchiveURL
{
  v2 = +[VSPersistentStorage defaultStorageDirectoryURL];
  v3 = [v2 URLByAppendingPathComponent:@"VSPrivacyConsentVouchers.data"];

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [[VSPersistentStorage defaultStorageDirectoryURL] URLByAppendingPathComponent:@VSPrivacyConsentVouchers.data] parameter must not be nil."];
  }

  v4 = +[VSPersistentStorage defaultStorageDirectoryURL];
  v5 = [v4 URLByAppendingPathComponent:@"VSPrivacyConsentVouchers.data"];

  return v5;
}

- (void)setUnredeemedVouchers:(id)vouchers
{
  v25 = *MEMORY[0x277D85DE8];
  vouchersCopy = vouchers;
  v5 = VSDefaultLogObject(vouchersCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = vouchersCopy;
    _os_log_impl(&dword_23AB8E000, v5, OS_LOG_TYPE_DEFAULT, "Setting unredeemed vouchers: %@", buf, 0xCu);
  }

  undoManager = [(VSPrivacyVoucherLockbox *)self undoManager];
  if (undoManager)
  {
    unredeemedVouchers = [(VSPrivacyVoucherLockbox *)self unredeemedVouchers];
    v8 = [undoManager prepareWithInvocationTarget:self];
    [v8 setUnredeemedVouchers:unredeemedVouchers];
  }

  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:vouchersCopy requiringSecureCoding:1 error:0];
  _voucherArchiveURL = [(VSPrivacyVoucherLockbox *)self _voucherArchiveURL];
  v22 = 0;
  v11 = [v9 writeToURL:_voucherArchiveURL options:0 error:&v22];
  v12 = v22;

  if ((v11 & 1) == 0)
  {
    v14 = VSErrorLogObject(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(VSPrivacyVoucherLockbox *)v12 setUnredeemedVouchers:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  remoteNotifier = [(VSPrivacyVoucherLockbox *)self remoteNotifier];
  [remoteNotifier postNotification];
}

- (NSArray)unredeemedVouchers
{
  v39[2] = *MEMORY[0x277D85DE8];
  _voucherArchiveURL = [(VSPrivacyVoucherLockbox *)self _voucherArchiveURL];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  path = [_voucherArchiveURL path];
  v5 = [v3 fileExistsAtPath:path];

  if (v5)
  {
    v38 = 0;
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:_voucherArchiveURL options:0 error:&v38];
    v8 = v38;
    v9 = v8;
    if (v7)
    {
      v10 = v7;
      v37 = 0;
      v11 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v10 error:&v37];
      v12 = v37;
      v13 = v12;
      if (v11)
      {
        v35 = v12;
        v14 = v11;
        [v14 setDecodingFailurePolicy:1];
        v15 = MEMORY[0x277CBEB98];
        v39[0] = objc_opt_class();
        v39[1] = objc_opt_class();
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
        v17 = [v15 setWithArray:v16];

        v18 = [v14 decodeObjectOfClasses:v17 forKey:*MEMORY[0x277CCA308]];
        v19 = v18;
        if (v18)
        {
          v20 = v18;
        }

        else
        {
          v33 = VSErrorLogObject(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            [(VSPrivacyVoucherLockbox *)v33 unredeemedVouchers];
          }

          v20 = MEMORY[0x277CBEBF8];
        }

        v13 = v35;
      }

      else
      {
        v14 = VSErrorLogObject(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(VSPrivacyVoucherLockbox *)v13 unredeemedVouchers:v14];
        }

        v20 = MEMORY[0x277CBEBF8];
      }
    }

    else
    {
      v10 = VSErrorLogObject(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(VSPrivacyVoucherLockbox *)v9 unredeemedVouchers:v10];
      }

      v20 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v9 = VSDefaultLogObject(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23AB8E000, v9, OS_LOG_TYPE_DEFAULT, "No vouchers file exists.", buf, 2u);
    }

    v20 = MEMORY[0x277CBEBF8];
  }

  return v20;
}

+ (id)getVouchersFromSelectedAppDescriptions:(id)descriptions forProviderID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  dCopy = d;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = descriptionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        adamID = [v13 adamID];
        stringValue = [adamID stringValue];

        if (stringValue)
        {
          if ([v13 appType] == 2)
          {
            goto LABEL_12;
          }

          v17 = [[VSPrivacyConsentVoucher alloc] initWithAppAdamID:stringValue providerID:dCopy];
          [v7 addObject:v17];
        }

        else
        {
          v17 = VSErrorLogObject(v16);
          if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
          {
            [(VSPrivacyVoucherLockbox *)v23 getVouchersFromSelectedAppDescriptions:v13 forProviderID:&v24, &v17->super];
          }
        }

LABEL_12:
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)setUnredeemedVouchers:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_23AB8E000, a2, a3, "Unable to write vouchers: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)unredeemedVouchers
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_0_0(&dword_23AB8E000, a2, a3, "Unable to read vouchers file: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)getVouchersFromSelectedAppDescriptions:(void *)a3 forProviderID:(NSObject *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 displayName];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_23AB8E000, a4, OS_LOG_TYPE_ERROR, "Could not create voucher for %@, missing adamID", a1, 0xCu);
}

@end