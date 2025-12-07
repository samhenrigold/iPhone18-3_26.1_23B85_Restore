@interface IMDAvailabilityVerificationManager
+ (BOOL)deviceSupportsSubscriptionValidationTokens;
+ (id)availabilityStatusTypeIdentifier;
+ (id)sharedInstance;
- (IMDAvailabilityVerificationManager)init;
- (id)cachedAvailabilityVerificationTokensForHandleID:(id)d;
- (void)_inviteSenderHandleID:(id)d fromHandleID:(id)iD;
- (void)_validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken fromSender:(id)sender completion:(id)completion;
- (void)populateCacheWithAvailabilityVerificationTokensForHandleID:(id)d;
- (void)subscriptionInvitationReceived:(id)received;
- (void)subscriptionReceivedStatusUpdate:(id)update;
- (void)subscriptionServiceDaemonDisconnected:(id)disconnected;
- (void)subscriptionStateChanged:(id)changed;
- (void)verifyPersonalSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken receivedByHandleID:(id)d fromHandleID:(id)iD messageDate:(id)date;
@end

@implementation IMDAvailabilityVerificationManager

+ (id)sharedInstance
{
  if (qword_281421098 != -1)
  {
    sub_22B7D08EC();
  }

  v3 = qword_281420F28;

  return v3;
}

- (IMDAvailabilityVerificationManager)init
{
  v12.receiver = self;
  v12.super_class = IMDAvailabilityVerificationManager;
  v2 = [(IMDAvailabilityVerificationManager *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("com.apple.Messages.IMDAvailabilityVerificationManager", v3);
    privateWorkQueue = v2->_privateWorkQueue;
    v2->_privateWorkQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEA78]);
    subscriptionValidationTokenByHandleIDCache = v2->_subscriptionValidationTokenByHandleIDCache;
    v2->_subscriptionValidationTokenByHandleIDCache = v6;

    availabilityStatusTypeIdentifier = [objc_opt_class() availabilityStatusTypeIdentifier];
    v9 = [objc_alloc(MEMORY[0x231897B40](@"SKStatusSubscriptionService" @"StatusKit"))];
    availabilitySubscriptionService = v2->_availabilitySubscriptionService;
    v2->_availabilitySubscriptionService = v9;

    [(SKStatusSubscriptionService *)v2->_availabilitySubscriptionService addDelegate:v2 queue:v2->_privateWorkQueue];
  }

  return v2;
}

+ (id)availabilityStatusTypeIdentifier
{
  v2 = *MEMORY[0x231897B50]("AKAvailabilityStatusTypeIdentifier", @"AvailabilityKit");

  return v2;
}

- (id)cachedAvailabilityVerificationTokensForHandleID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache objectForKey:dCopy];
  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v9 = 138412546;
        v10 = v5;
        v11 = 2112;
        v12 = dCopy;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Using cached availability verification tokens %@ for message to handleID %@", &v9, 0x16u);
      }
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_22B7D0900();
    }

    [(IMDAvailabilityVerificationManager *)self populateCacheWithAvailabilityVerificationTokensForHandleID:dCopy];
  }

  return v5;
}

- (void)populateCacheWithAvailabilityVerificationTokensForHandleID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache objectForKey:dCopy];
  v6 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v17 = v5;
        v18 = 2112;
        v19 = dCopy;
        _os_log_impl(&dword_22B4CC000, v7, OS_LOG_TYPE_INFO, "Subscription validation tokens %@ is already cached for handleID: %@. Not fetching again", buf, 0x16u);
      }
    }
  }

  else
  {
    if (v6)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = dCopy;
        _os_log_impl(&dword_22B4CC000, v8, OS_LOG_TYPE_INFO, "Fetching subscription validation token for handle handleID: %@", buf, 0xCu);
      }
    }

    v9 = [objc_alloc(MEMORY[0x231897B40](@"SKHandle" @"StatusKit"))];
    if (objc_opt_respondsToSelector())
    {
      availabilitySubscriptionService = self->_availabilitySubscriptionService;
      v11 = v15;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = sub_22B52FE58;
      v15[3] = &unk_278703B18;
      v15[4] = dCopy;
      v15[5] = self;
      [(SKStatusSubscriptionService *)availabilitySubscriptionService subscriptionValidationTokensForHandle:v9 completion:v15];
    }

    else
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_22B7D093C();
      }

      v13 = self->_availabilitySubscriptionService;
      v11 = v14;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = sub_22B52FFFC;
      v14[3] = &unk_278703B40;
      v14[4] = dCopy;
      v14[5] = self;
      [(SKStatusSubscriptionService *)v13 subscriptionValidationTokenForHandle:v9 completion:v14];
    }
  }
}

+ (BOOL)deviceSupportsSubscriptionValidationTokens
{
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_22B4CC000, v2, OS_LOG_TYPE_INFO, "This device will validate subscription validation tokens", v4, 2u);
    }
  }

  return 1;
}

- (void)verifyPersonalSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken receivedByHandleID:(id)d fromHandleID:(id)iD messageDate:(id)date
{
  v32 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  validationTokenCopy = validationToken;
  dCopy = d;
  iDCopy = iD;
  dateCopy = date;
  if (IMOSLoggingEnabled())
  {
    v17 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v27 = tokenCopy;
      v28 = 2112;
      v29 = iDCopy;
      _os_log_impl(&dword_22B4CC000, v17, OS_LOG_TYPE_INFO, "Received request to validate validation token %@ from senderHandleID %@", buf, 0x16u);
    }
  }

  if ([objc_opt_class() deviceSupportsSubscriptionValidationTokens])
  {
    [dateCopy timeIntervalSinceNow];
    if (fabs(v18) <= 300.0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v19 = IMLogHandleForCategory();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          sub_22B7D0A58();
        }

        goto LABEL_19;
      }

      v20 = [objc_alloc(MEMORY[0x231897B40](@"SKHandle" @"StatusKit"))];
      objc_initWeak(buf, self);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = sub_22B5305A8;
      v21[3] = &unk_278703B68;
      objc_copyWeak(&v25, buf);
      v22 = tokenCopy;
      v23 = iDCopy;
      v24 = dCopy;
      [(IMDAvailabilityVerificationManager *)self _validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:v22 encryptionValidationToken:validationTokenCopy fromSender:v20 completion:v21];

      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }

    else if (IMOSLoggingEnabled())
    {
      v19 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v27 = tokenCopy;
        v28 = 2112;
        v29 = iDCopy;
        v30 = 2112;
        v31 = dateCopy;
        _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Not processing validation token %@ for old message from %@ with date: %@", buf, 0x20u);
      }

LABEL_19:
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22B4CC000, v19, OS_LOG_TYPE_INFO, "Skipping validation, this device should not validate tokens", buf, 2u);
    }

    goto LABEL_19;
  }
}

- (void)_validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:(id)token encryptionValidationToken:(id)validationToken fromSender:(id)sender completion:(id)completion
{
  tokenCopy = token;
  validationTokenCopy = validationToken;
  senderCopy = sender;
  completionCopy = completion;
  if (objc_opt_respondsToSelector())
  {
    v13 = [objc_alloc(MEMORY[0x231897B40](@"SKSubscriptionValidationTokens" @"StatusKit"))];
    [(SKStatusSubscriptionService *)self->_availabilitySubscriptionService validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:v13 fromSender:senderCopy completion:completionCopy];
  }

  else
  {
    [(SKStatusSubscriptionService *)self->_availabilitySubscriptionService validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:tokenCopy fromSender:senderCopy completion:completionCopy];
  }
}

- (void)_inviteSenderHandleID:(id)d fromHandleID:(id)iD
{
  v5 = MEMORY[0x277D1A8C0];
  iDCopy = iD;
  dCopy = d;
  sharedInstance = [v5 sharedInstance];
  [sharedInstance repairSharedFocusStatusFollowingFailedValidationWithHandleID:dCopy fromHandleID:iDCopy completion:&unk_283F198A8];
}

- (void)subscriptionInvitationReceived:(id)received
{
  v8 = *MEMORY[0x277D85DE8];
  receivedCopy = received;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = receivedCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Subscription invitation received, clearing cache. Subscription: %@", &v6, 0xCu);
    }
  }

  [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache removeAllObjects];
}

- (void)subscriptionReceivedStatusUpdate:(id)update
{
  v7 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 138412290;
      v6 = updateCopy;
      _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Subscription received status update, no verification manager action required. Subscription: %@", &v5, 0xCu);
    }
  }
}

- (void)subscriptionStateChanged:(id)changed
{
  v8 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138412290;
      v7 = changedCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Subscription state changed, clearing cache. Subscription: %@", &v6, 0xCu);
    }
  }

  [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache removeAllObjects];
}

- (void)subscriptionServiceDaemonDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Subscription service daemon disconnected, clearing cache, but not reconnecting.", v6, 2u);
    }
  }

  [(NSCache *)self->_subscriptionValidationTokenByHandleIDCache removeAllObjects];
}

@end