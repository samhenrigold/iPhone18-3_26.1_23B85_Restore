@interface IMDBadgeUtilities
+ (BOOL)_iMessageEnabled;
+ (BOOL)_iMessageFailedAccountIsIrreparable;
+ (BOOL)_isTryingToLogin;
+ (BOOL)_isUsableSendingForAccount:(id)account;
+ (BOOL)_isUserIntentNotLoggedOut;
+ (id)_accountsArrayForServiceIMessage;
+ (id)sharedInstance;
- (BOOL)_shouldShowFailureString;
- (BOOL)isInAppleStoreDemoMode;
- (BOOL)isUnexpectedlyLoggedOut;
- (IMDBadgeUtilities)init;
- (IMDBadgeUtilities)initWithMessageStore:(id)store defaultsStore:(id)defaultsStore;
- (IMDMessageStore)messageStore;
- (IMDefaults)sharedDefaultsInstance;
- (int64_t)_savedFailureDate;
- (void)_cacheFailureDate:(int64_t)date;
- (void)_checkIfUnexpectedlyLoggedOut;
- (void)_clearFailureBadge;
- (void)_compareLastFailureDateAndUpdateBadge:(int64_t)badge;
- (void)_postBadgeNumber:(id)number;
- (void)_postBadgeString:(id)string;
- (void)_rebuildUnreadMessageCount;
- (void)_saveFailureDate:(int64_t)date;
- (void)_stopSuppressingSound;
- (void)_updateBadge;
- (void)_updateBadgeForLastFailedMessageDateChangeIfNeeded:(int64_t)needed;
- (void)_updateBadgeForUnreadCountChangeIfNeeded:(int64_t)needed;
- (void)checkIfUnexpectedlyLoggedOut;
- (void)clearFailureBadge;
- (void)dealloc;
- (void)satelliteStateDidChange:(BOOL)change;
- (void)updateBadgeForLastFailedMessageDateChangeIfNeeded:(int64_t)needed;
- (void)updateBadgeForPendingSatelliteMessagesIfNeeded:(int64_t)needed onService:(id)service;
- (void)updateBadgeForUnreadCountChangeIfNeeded:(int64_t)needed;
- (void)updateBadgeInCaseOfMistakenLoginInvalidation;
@end

@implementation IMDBadgeUtilities

- (void)clearFailureBadge
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4D82BC;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)checkIfUnexpectedlyLoggedOut
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B4D8768;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_clearFailureBadge
{
  v7 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      if (self->_showingFailure)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      v5 = 138412290;
      v6 = v4;
      _os_log_impl(&dword_22B4CC000, v3, OS_LOG_TYPE_INFO, "Clearing failure badge, old value = %@", &v5, 0xCu);
    }
  }

  self->_showingFailure = 0;
  [(IMDBadgeUtilities *)self _updateBadge];
}

- (void)_updateBadge
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(IMDBadgeUtilities *)self _shouldShowFailureString])
  {

    MEMORY[0x2821F9670](self, sel__postBadgeString_);
  }

  else
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    unreadCount = self->_unreadCount;
    if (self->_isStewieActive)
    {
      pendingSatelliteMessagesPerService = [(IMDBadgeUtilities *)self pendingSatelliteMessagesPerService];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = sub_22B6DEF18;
      v7[3] = &unk_278708790;
      v7[4] = &v8;
      [pendingSatelliteMessagesPerService enumerateKeysAndObjectsUsingBlock:v7];
    }

    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = v9[3];
        *buf = 134217984;
        v13 = v5;
        _os_log_impl(&dword_22B4CC000, v4, OS_LOG_TYPE_INFO, "Updating unread message count badge to %ld", buf, 0xCu);
      }
    }

    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9[3]];
    [(IMDBadgeUtilities *)self _postBadgeNumber:v6];

    _Block_object_dispose(&v8, 8);
  }
}

- (BOOL)_shouldShowFailureString
{
  v16 = *MEMORY[0x277D85DE8];
  if (-[IMDBadgeUtilities isInAppleStoreDemoMode](self, "isInAppleStoreDemoMode") || ([MEMORY[0x277D1A8A0] sharedManager], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "isAssistiveAccessRunning"), v3, (v4 & 1) != 0))
  {
    LOBYTE(v5) = 0;
  }

  else if (self->_showingFailure || (v5 = [(IMDBadgeUtilities *)self _isUnexpectedlyLoggedOut]))
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        showingFailure = self->_showingFailure;
        _isUnexpectedlyLoggedOut = [(IMDBadgeUtilities *)self _isUnexpectedlyLoggedOut];
        v9 = @"NO";
        if (showingFailure)
        {
          v10 = @"YES";
        }

        else
        {
          v10 = @"NO";
        }

        if (_isUnexpectedlyLoggedOut)
        {
          v9 = @"YES";
        }

        v12 = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "_shouldShowFailureString _showingFailure %@ _isUnexpectedlyLoggedOut %@ ", &v12, 0x16u);
      }
    }

    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)isInAppleStoreDemoMode
{
  if (qword_2814212E8 != -1)
  {
    sub_22B7D99F8();
  }

  return byte_2814212F0;
}

- (void)_checkIfUnexpectedlyLoggedOut
{
  v3 = ([objc_opt_class() _iMessageEnabled] & 1) == 0 && (objc_msgSend(objc_opt_class(), "_isTryingToLogin") & 1) == 0 && (objc_msgSend(objc_opt_class(), "_iMessageFailedAccountIsIrreparable") & 1) == 0 && (objc_msgSend(objc_opt_class(), "_isUserIntentNotLoggedOut") & 1) != 0;
  self->_unexpectedlyLoggedOut = v3;

  [(IMDBadgeUtilities *)self _updateBadge];
}

+ (BOOL)_iMessageEnabled
{
  v14 = *MEMORY[0x277D85DE8];
  [objc_opt_class() _accountsArrayForServiceIMessage];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        if ([objc_opt_class() _isUsableSendingForAccount:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

+ (id)_accountsArrayForServiceIMessage
{
  v2 = +[IMDAccountController sharedInstance];
  v3 = +[IMDServiceController sharedController];
  v4 = [v3 serviceWithName:*MEMORY[0x277D1A620]];
  v5 = [v2 accountsForService:v4];

  return v5;
}

+ (BOOL)_isTryingToLogin
{
  v12 = *MEMORY[0x277D85DE8];
  [objc_opt_class() _accountsArrayForServiceIMessage];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v2);
        }

        if ([*(*(&v7 + 1) + 8 * i) loginStatus] == 3)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

+ (BOOL)_iMessageFailedAccountIsIrreparable
{
  v19 = *MEMORY[0x277D85DE8];
  _accountsArrayForServiceIMessage = [objc_opt_class() _accountsArrayForServiceIMessage];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [_accountsArrayForServiceIMessage countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = 0;
    v5 = 0;
    v6 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(_accountsArrayForServiceIMessage);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        session = [v8 session];
        registrationStatus = [session registrationStatus];

        if (registrationStatus == -1)
        {
          session2 = [v8 session];
          v12 = [session2 registrationError] != 26;

          v5 |= v12;
          v4 = 1;
        }
      }

      v3 = [_accountsArrayForServiceIMessage countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
    LOBYTE(v3) = v4 & (v5 ^ 1);
  }

  return v3 & 1;
}

+ (BOOL)_isUserIntentNotLoggedOut
{
  if (IMGetUserLoginIntent() == 2)
  {
    return 0;
  }

  else
  {
    return IMGetUserIgnoreLogoutIntent() ^ 1;
  }
}

+ (id)sharedInstance
{
  if (qword_2814211F0 != -1)
  {
    sub_22B7D99E4();
  }

  v3 = qword_281421078;

  return v3;
}

- (IMDBadgeUtilities)init
{
  v3 = +[IMDMessageStore sharedInstance];
  v4 = [(IMDBadgeUtilities *)self initWithMessageStore:v3];

  return v4;
}

- (IMDBadgeUtilities)initWithMessageStore:(id)store defaultsStore:(id)defaultsStore
{
  v31 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  defaultsStoreCopy = defaultsStore;
  v26.receiver = self;
  v26.super_class = IMDBadgeUtilities;
  v8 = [(IMDBadgeUtilities *)&v26 init];
  if (v8)
  {
    v9 = dispatch_queue_create("IMDBadgeUtilitiesQueue", 0);
    queue = v8->_queue;
    v8->_queue = v9;

    objc_storeWeak(&v8->_messageStore, storeCopy);
    v8->_unreadCount = [storeCopy unreadMessagesCount];
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingSatelliteMessagesPerService = v8->_pendingSatelliteMessagesPerService;
    v8->_pendingSatelliteMessagesPerService = v11;

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        unreadCount = v8->_unreadCount;
        *buf = 134217984;
        v28 = unreadCount;
        _os_log_impl(&dword_22B4CC000, v13, OS_LOG_TYPE_INFO, "Initializing IMDBadgeUtilities with unread count: %ld", buf, 0xCu);
      }
    }

    v15 = [objc_alloc(MEMORY[0x277CE2028]) initWithBundleIdentifier:@"com.apple.MobileSMS"];
    notificationCenter = v8->_notificationCenter;
    v8->_notificationCenter = v15;

    v17 = +[IMDChorosController sharedController];
    [v17 addObserver:v8];

    *&v8->_showingFailure = 0;
    v8->_addedObserverForUnexpectedlyLoggedOut = 0;
    objc_storeStrong(&v8->_sharedDefaultsInstance, defaultsStore);
    _savedFailureDate = [(IMDBadgeUtilities *)v8 _savedFailureDate];
    v8->_lastFailedMessageDate = _savedFailureDate;
    if (_savedFailureDate <= 0)
    {
      lastFailedMessageDate = [storeCopy lastFailedMessageDate];
      v8->_lastFailedMessageDate = lastFailedMessageDate;
      [(IMDBadgeUtilities *)v8 _saveFailureDate:lastFailedMessageDate];
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [MEMORY[0x277CCABB0] numberWithLongLong:v8->_lastFailedMessageDate];
        v22 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(storeCopy, "lastFailedMessageDate")}];
        *buf = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = v22;
        _os_log_impl(&dword_22B4CC000, v20, OS_LOG_TYPE_INFO, "_lastFailedMessageDate saved date %@  last failed message data in DB %@ ", buf, 0x16u);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, sub_22B4D8130, @"__kMessagesBadgeControllerClearFailureBadgeNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v24 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v24, v8, sub_22B6DE778, @"__kIMDBadgeUtilitiesRebuildUnreadMessageCountNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(IMDBadgeUtilities *)v8 _updateBadge];
  }

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"__kMessagesBadgeControllerClearFailureBadgeNotification", 0);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v4, self, @"__kIMDBadgeUtilitiesRebuildUnreadMessageCountNotification", 0);
  if (self->_addedObserverForUnexpectedlyLoggedOut)
  {
    v5 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v5, self, @"com.apple.IMSharedUtilities.IMUserLoginIntentChangedInternal", 0);
    v6 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v6, self, @"__kIMDBadgeUtilitiesLoginStatusChangedNotification", 0);
    v7 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(v7, self, @"__kIMDBadgeUtilitiesOperationalAccountsChangedNotification", 0);
  }

  v8.receiver = self;
  v8.super_class = IMDBadgeUtilities;
  [(IMDBadgeUtilities *)&v8 dealloc];
}

- (void)updateBadgeForUnreadCountChangeIfNeeded:(int64_t)needed
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B6DE950;
  v4[3] = &unk_278704970;
  v4[4] = self;
  v4[5] = needed;
  dispatch_async(queue, v4);
}

- (void)_updateBadgeForUnreadCountChangeIfNeeded:(int64_t)needed
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B6DE9D0;
  v4[3] = &unk_278704970;
  v4[4] = self;
  v4[5] = needed;
  dispatch_async(queue, v4);
}

- (void)updateBadgeForLastFailedMessageDateChangeIfNeeded:(int64_t)needed
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B6DEBE8;
  v4[3] = &unk_278704970;
  v4[4] = self;
  v4[5] = needed;
  dispatch_async(queue, v4);
}

- (void)_updateBadgeForLastFailedMessageDateChangeIfNeeded:(int64_t)needed
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B6DEC68;
  v4[3] = &unk_278704970;
  v4[4] = self;
  v4[5] = needed;
  dispatch_async(queue, v4);
}

- (void)updateBadgeInCaseOfMistakenLoginInvalidation
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6DEDF0;
  block[3] = &unk_278702FF0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)updateBadgeForPendingSatelliteMessagesIfNeeded:(int64_t)needed onService:(id)service
{
  serviceCopy = service;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6DEEA0;
  block[3] = &unk_278703DE8;
  block[4] = self;
  v10 = serviceCopy;
  neededCopy = needed;
  v8 = serviceCopy;
  dispatch_async(queue, block);
}

- (void)_postBadgeNumber:(id)number
{
  v9 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = numberCopy;
      _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Call notification center to post badge number %@", &v7, 0xCu);
    }
  }

  notificationCenter = [(IMDBadgeUtilities *)self notificationCenter];
  [notificationCenter setBadgeCount:objc_msgSend(numberCopy withCompletionHandler:{"integerValue"), &unk_283F1B368}];
}

- (void)_postBadgeString:(id)string
{
  v14 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  notificationCenter = [(IMDBadgeUtilities *)self notificationCenter];
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v13 = stringCopy;
      _os_log_impl(&dword_22B4CC000, v6, OS_LOG_TYPE_INFO, "Call notification center to post badge string %@", buf, 0xCu);
    }
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22B6DF2A4;
  v9[3] = &unk_278702FA0;
  v10 = notificationCenter;
  v11 = stringCopy;
  v7 = stringCopy;
  v8 = notificationCenter;
  dispatch_async(MEMORY[0x277D85CD0], v9);
}

- (BOOL)isUnexpectedlyLoggedOut
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_22B6DF4F8;
  v11[3] = &unk_278702FF0;
  v11[4] = self;
  if (qword_2814212E0 != -1)
  {
    dispatch_once(&qword_2814212E0, v11);
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22B6DF6B8;
  block[3] = &unk_278707ED0;
  block[4] = self;
  block[5] = &v7;
  dispatch_sync(queue, block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

+ (BOOL)_isUsableSendingForAccount:(id)account
{
  accountCopy = account;
  if (![accountCopy isActive])
  {
    goto LABEL_14;
  }

  if (![accountCopy accountType])
  {
    goto LABEL_9;
  }

  service = [accountCopy service];
  supportsRegistration = [service supportsRegistration];

  if (!supportsRegistration)
  {
    goto LABEL_9;
  }

  if ([accountCopy accountType] == 2)
  {
    if ([accountCopy registrationStatus] != 5)
    {
      v6 = [accountCopy registrationStatus] == 2;
      goto LABEL_15;
    }

LABEL_9:
    v6 = 1;
    goto LABEL_15;
  }

  if ([accountCopy accountType] == 1)
  {
    if ([accountCopy registrationStatus] == 2)
    {
      goto LABEL_9;
    }

    if ([accountCopy registrationStatus] != 5)
    {
LABEL_14:
      v6 = 0;
      goto LABEL_15;
    }
  }

  aliases = [accountCopy aliases];
  if ([aliases count])
  {
    if ([aliases count] == 1)
    {
      lastObject = [aliases lastObject];
      v9 = [lastObject isEqualToIgnoringCase:*MEMORY[0x277D19478]];

      v6 = v9 ^ 1;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_15:
  return v6 & 1;
}

- (void)_rebuildUnreadMessageCount
{
  WeakRetained = objc_loadWeakRetained(&self->_messageStore);
  [WeakRetained rebuildUnreadMessageCount];
}

- (void)_compareLastFailureDateAndUpdateBadge:(int64_t)badge
{
  lastFailedMessageDate = self->_lastFailedMessageDate;
  if (lastFailedMessageDate < badge)
  {
    self->_lastFailedMessageDate = badge;
    v4 = 1;
LABEL_5:
    self->_showingFailure = v4;
    goto LABEL_6;
  }

  if (lastFailedMessageDate > badge)
  {
    v4 = 0;
    goto LABEL_5;
  }

LABEL_6:
  [(IMDBadgeUtilities *)self _updateBadge];
}

- (void)_stopSuppressingSound
{
  IMSetDomainValueForKey();

  IMSetDomainValueForKey();
}

- (void)_cacheFailureDate:(int64_t)date
{
  v11 = *MEMORY[0x277D85DE8];
  if (date >= 1)
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        lastFailedMessageDate = self->_lastFailedMessageDate;
        v7 = 134218240;
        v8 = lastFailedMessageDate;
        v9 = 2048;
        dateCopy = date;
        _os_log_impl(&dword_22B4CC000, v5, OS_LOG_TYPE_INFO, "Cached failure id %lld    alert failure id %lld", &v7, 0x16u);
      }
    }

    [(IMDBadgeUtilities *)self _saveFailureDate:date];
  }
}

- (IMDefaults)sharedDefaultsInstance
{
  sharedDefaultsInstance = self->_sharedDefaultsInstance;
  if (!sharedDefaultsInstance)
  {
    mEMORY[0x277D1A990] = [MEMORY[0x277D1A990] sharedInstance];
    v5 = self->_sharedDefaultsInstance;
    self->_sharedDefaultsInstance = mEMORY[0x277D1A990];

    sharedDefaultsInstance = self->_sharedDefaultsInstance;
  }

  return sharedDefaultsInstance;
}

- (int64_t)_savedFailureDate
{
  sharedDefaultsInstance = [(IMDBadgeUtilities *)self sharedDefaultsInstance];
  v3 = [sharedDefaultsInstance getValueFromDomain:@"com.apple.imdbadgeutilities" forKey:@"lastMadridFailureID"];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    longLongValue = [v3 longLongValue];
  }

  else
  {
    longLongValue = -1;
  }

  return longLongValue;
}

- (void)_saveFailureDate:(int64_t)date
{
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:date];
  sharedDefaultsInstance = [(IMDBadgeUtilities *)self sharedDefaultsInstance];
  [sharedDefaultsInstance setValue:v5 forDomain:@"com.apple.imdbadgeutilities" forKey:@"lastMadridFailureID"];
}

- (void)satelliteStateDidChange:(BOOL)change
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_22B6DFBC4;
  v4[3] = &unk_2787087B8;
  v4[4] = self;
  changeCopy = change;
  dispatch_async(queue, v4);
}

- (IMDMessageStore)messageStore
{
  WeakRetained = objc_loadWeakRetained(&self->_messageStore);

  return WeakRetained;
}

@end