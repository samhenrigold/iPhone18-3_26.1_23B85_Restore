@interface IMHandleAvailabilityManager
+ (id)sharedInstance;
- (IMHandleAvailabilityManager)init;
- (SKStatusSubscriptionService)subscriptionService;
- (id)_cachedStatusSubscriptionForIMHandle:(id)handle fromCache:(id)cache cacheDescription:(id)description cacheMiss:(BOOL *)miss;
- (id)_skHandleForIMHandle:(id)handle;
- (id)_skHandleForString:(id)string;
- (id)_subscriptionCacheKeyForHandle:(id)handle;
- (id)availabilityStatusPublishedDateForHandle:(id)handle;
- (id)statusSubscriptionForHandle:(id)handle;
- (int64_t)_availablityFromStatusSubscription:(id)subscription handleID:(id)d;
- (int64_t)availabilityForHandle:(id)handle;
- (void)_clearCurrentSubscriptionCache;
- (void)_postNotificationForUpdatedStatusWithSubscription:(id)subscription;
- (void)beginObservingAvailabilityForHandle:(id)handle;
- (void)endObservingAvailabilityForHandle:(id)handle;
- (void)fetchPersonalAvailabilityWithCompletion:(id)completion;
- (void)fetchUpdatedStatusAndUpdateCachesForHandle:(id)handle lastKnownStatus:(id)status;
- (void)fetchUpdatedStatusForHandle:(id)handle completion:(id)completion;
- (void)subscriptionInvitationReceived:(id)received;
- (void)subscriptionReceivedStatusUpdate:(id)update;
- (void)subscriptionServiceDaemonDisconnected:(id)disconnected;
- (void)subscriptionStateChanged:(id)changed;
@end

@implementation IMHandleAvailabilityManager

+ (id)sharedInstance
{
  if (qword_1ED7678B0 != -1)
  {
    sub_1A84E4148();
  }

  v3 = qword_1ED767870;

  return v3;
}

- (IMHandleAvailabilityManager)init
{
  v13.receiver = self;
  v13.super_class = IMHandleAvailabilityManager;
  v2 = [(IMHandleAvailabilityManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    currentSubscriptionCache = v2->_currentSubscriptionCache;
    v2->_currentSubscriptionCache = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    lastKnownSubscriptionCache = v2->_lastKnownSubscriptionCache;
    v2->_lastKnownSubscriptionCache = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    pendingFetchesForCacheKeys = v2->_pendingFetchesForCacheKeys;
    v2->_pendingFetchesForCacheKeys = v7;

    v2->_currentCacheGeneration = 0;
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v10 = dispatch_queue_create("com.apple.Messages.IMHandleAvailabilityManager", v9);
    privateWorkQueue = v2->_privateWorkQueue;
    v2->_privateWorkQueue = v10;
  }

  return v2;
}

- (id)availabilityStatusPublishedDateForHandle:(id)handle
{
  v16 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v5 = [(IMHandleAvailabilityManager *)self statusSubscriptionForHandle:handleCopy];
  v6 = v5;
  if (v5)
  {
    currentStatus = [v5 currentStatus];
    v8 = currentStatus;
    if (currentStatus)
    {
      datePublished = [currentStatus datePublished];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = datePublished;
          _os_log_impl(&dword_1A823F000, v10, OS_LOG_TYPE_INFO, "Determined status was published on: %@", &v14, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v14 = 138412290;
          v15 = v6;
          _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "Subscription has no published status, returning nil status creation date. Subscription: %@", &v14, 0xCu);
        }
      }

      datePublished = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Subscription cache miss, returning nil for sync call for status creation date", &v14, 2u);
      }
    }

    datePublished = 0;
  }

  return datePublished;
}

- (int64_t)availabilityForHandle:(id)handle
{
  handleCopy = handle;
  v5 = [handleCopy ID];
  v6 = [(IMHandleAvailabilityManager *)self statusSubscriptionForHandle:handleCopy];

  v7 = [(IMHandleAvailabilityManager *)self _availablityFromStatusSubscription:v6 handleID:v5];
  return v7;
}

- (id)statusSubscriptionForHandle:(id)handle
{
  handleCopy = handle;
  v10 = 0;
  currentSubscriptionCache = [(IMHandleAvailabilityManager *)self currentSubscriptionCache];
  v6 = [(IMHandleAvailabilityManager *)self _cachedStatusSubscriptionForIMHandle:handleCopy fromCache:currentSubscriptionCache cacheDescription:@"Current" cacheMiss:&v10];

  if (v10 == 1)
  {
    lastKnownSubscriptionCache = [(IMHandleAvailabilityManager *)self lastKnownSubscriptionCache];
    v8 = [(IMHandleAvailabilityManager *)self _cachedStatusSubscriptionForIMHandle:handleCopy fromCache:lastKnownSubscriptionCache cacheDescription:@"LastKnown" cacheMiss:0];

    [(IMHandleAvailabilityManager *)self fetchUpdatedStatusAndUpdateCachesForHandle:handleCopy lastKnownStatus:v8];
    v6 = v8;
  }

  return v6;
}

- (void)fetchUpdatedStatusAndUpdateCachesForHandle:(id)handle lastKnownStatus:(id)status
{
  v24 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  statusCopy = status;
  currentStatus = [statusCopy currentStatus];
  statusUniqueIdentifier = [currentStatus statusUniqueIdentifier];

  v10 = [(IMHandleAvailabilityManager *)self _subscriptionCacheKeyForHandle:handleCopy];
  v11 = self->_pendingFetchesForCacheKeys;
  objc_sync_enter(v11);
  if (([(NSMutableSet *)self->_pendingFetchesForCacheKeys containsObject:v10]& 1) != 0)
  {
    objc_sync_exit(v11);

    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_1A823F000, v12, OS_LOG_TYPE_INFO, "We already have a pending subscription fetch for cache key: %@. That fetch will notify if the subscription has changed. Taking no further action.", buf, 0xCu);
      }
    }
  }

  else
  {
    [(NSMutableSet *)self->_pendingFetchesForCacheKeys addObject:v10];
    objc_sync_exit(v11);

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v10;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "We do not have any pending fetches for cache key: %@", buf, 0xCu);
      }
    }

    objc_initWeak(buf, self);
    v14 = [handleCopy ID];
    currentCacheGeneration = [(IMHandleAvailabilityManager *)self currentCacheGeneration];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = sub_1A83CCB38;
    v17[3] = &unk_1E7814728;
    objc_copyWeak(v21, buf);
    v21[1] = currentCacheGeneration;
    v18 = v10;
    v16 = v14;
    v19 = v16;
    v20 = statusUniqueIdentifier;
    [(IMHandleAvailabilityManager *)self fetchUpdatedStatusForHandle:handleCopy completion:v17];

    objc_destroyWeak(v21);
    objc_destroyWeak(buf);
  }
}

- (void)fetchUpdatedStatusForHandle:(id)handle completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  completionCopy = completion;
  if ([MEMORY[0x1E69A7EE0] isInAppleStoreDemoMode])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Not fetching subscription in Apple Store Demo mode.", buf, 2u);
      }
    }

    completionCopy[2](completionCopy, 0);
  }

  else
  {
    subscriptionService = [(IMHandleAvailabilityManager *)self subscriptionService];
    v10 = [handleCopy ID];
    if ([handleCopy matchesLoginHandleForAnyAccount])
    {
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v10;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Handle %@ matches login handle. Fetching personal status subscription", buf, 0xCu);
        }
      }

      privateWorkQueue = self->_privateWorkQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_1A83CD2DC;
      block[3] = &unk_1E7814750;
      v20 = subscriptionService;
      v21 = completionCopy;
      dispatch_async(privateWorkQueue, block);

      v13 = v20;
    }

    else
    {
      v14 = [(IMHandleAvailabilityManager *)self _skHandleForIMHandle:handleCopy];
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v23 = v10;
          _os_log_impl(&dword_1A823F000, v15, OS_LOG_TYPE_INFO, "Initiating a subscription fetch for handle: %@", buf, 0xCu);
        }
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = sub_1A83CD450;
      v16[3] = &unk_1E7814778;
      v17 = v14;
      v18 = completionCopy;
      v13 = v14;
      [subscriptionService statusSubscriptionForHandle:v13 completion:v16];
    }
  }
}

- (void)_postNotificationForUpdatedStatusWithSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83CD6D0;
  block[3] = &unk_1E780FCB0;
  v6 = subscriptionCopy;
  v4 = subscriptionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (int64_t)_availablityFromStatusSubscription:(id)subscription handleID:(id)d
{
  v26 = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  dCopy = d;
  if (subscriptionCopy)
  {
    currentStatus = [subscriptionCopy currentStatus];
    v8 = currentStatus;
    if (!currentStatus)
    {
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v22 = 138412290;
          v23 = dCopy;
          _os_log_impl(&dword_1A823F000, v16, OS_LOG_TYPE_INFO, "Current status not found for handle %@, returning unknown availability", &v22, 0xCu);
        }
      }

      v15 = 0;
      goto LABEL_39;
    }

    statusUniqueIdentifier = [currentStatus statusUniqueIdentifier];
    v10 = [objc_alloc(MEMORY[0x1AC56C550](@"AKAvailability" @"AvailabilityKit"))];
    if (!v10)
    {
      v17 = IMLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E4214(dCopy, v17);
      }

      v15 = 0;
      goto LABEL_38;
    }

    if ([subscriptionCopy isPersonalStatusSubscription])
    {
      isAvailable = [v10 isAvailable];
      v12 = IMOSLoggingEnabled();
      if (isAvailable)
      {
        if (v12)
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v22 = 138412546;
            v23 = dCopy;
            v24 = 2112;
            v25 = statusUniqueIdentifier;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Personal status subscription for handleID %@ says we are AVAILABLE from status %@", &v22, 0x16u);
          }

LABEL_27:

          goto LABEL_28;
        }

        goto LABEL_28;
      }

      if (v12)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = 138412546;
          v23 = dCopy;
          v24 = 2112;
          v25 = statusUniqueIdentifier;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Personal status subscription for handleID %@ says we are UNAVAILABLE from status %@", &v22, 0x16u);
        }

LABEL_36:
      }
    }

    else
    {
      isAvailableToMe = [v10 isAvailableToMe];
      v19 = IMOSLoggingEnabled();
      if (isAvailableToMe)
      {
        if (v19)
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v22 = 138412546;
            v23 = dCopy;
            v24 = 2112;
            v25 = statusUniqueIdentifier;
            _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "StatusKit indicates handle %@ is AVAILABLE from status %@", &v22, 0x16u);
          }

          goto LABEL_27;
        }

LABEL_28:
        v15 = 1;
LABEL_38:

LABEL_39:
        goto LABEL_40;
      }

      if (v19)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = 138412546;
          v23 = dCopy;
          v24 = 2112;
          v25 = statusUniqueIdentifier;
          _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "StatusKit indicates handle %@ is UNAVAILABLE from status %@", &v22, 0x16u);
        }

        goto LABEL_36;
      }
    }

    v15 = 2;
    goto LABEL_38;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v22 = 138412290;
      v23 = dCopy;
      _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Subscription not found for handle %@, returning unknown availability", &v22, 0xCu);
    }
  }

  v15 = 0;
LABEL_40:

  return v15;
}

- (void)fetchPersonalAvailabilityWithCompletion:(id)completion
{
  completionCopy = completion;
  privateWorkQueue = self->_privateWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A83CDBF0;
  v7[3] = &unk_1E7814750;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(privateWorkQueue, v7);
}

- (void)beginObservingAvailabilityForHandle:(id)handle
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if ([MEMORY[0x1E69A7EE0] isInAppleStoreDemoMode])
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Not beginnign observing availability in Apple Store Demo mode.", buf, 2u);
      }
    }
  }

  else
  {
    v6 = [handleCopy ID];
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v19 = v6;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Received request to begin observing availability for: %@", buf, 0xCu);
      }
    }

    v8 = [(IMHandleAvailabilityManager *)self statusSubscriptionForHandle:handleCopy];
    v9 = v8;
    if (v8)
    {
      subscriptionIdentifier = [v8 subscriptionIdentifier];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v19 = subscriptionIdentifier;
          v20 = 2112;
          v21 = v6;
          _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "Retaining transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
        }
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = sub_1A83CE000;
      v15[3] = &unk_1E7813450;
      v16 = subscriptionIdentifier;
      v17 = v6;
      v12 = subscriptionIdentifier;
      [v9 retainTransientSubscriptionAssertionWithCompletion:v15];
    }

    else if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [handleCopy ID];
        *buf = 138412290;
        v19 = v14;
        _os_log_impl(&dword_1A823F000, v13, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing availability (yet).", buf, 0xCu);
      }
    }
  }
}

- (void)endObservingAvailabilityForHandle:(id)handle
{
  v26 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  isInAppleStoreDemoMode = [MEMORY[0x1E69A7EE0] isInAppleStoreDemoMode];
  v6 = IMOSLoggingEnabled();
  if (isInAppleStoreDemoMode)
  {
    if (v6)
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1A823F000, v7, OS_LOG_TYPE_INFO, "Not ending observing availability in Apple Store Demo mode.", buf, 2u);
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
        v9 = [handleCopy ID];
        *buf = 138412290;
        v23 = v9;
        _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received request to end observing availability for: %@", buf, 0xCu);
      }
    }

    v10 = [(IMHandleAvailabilityManager *)self statusSubscriptionForHandle:handleCopy];
    v11 = v10;
    if (v10)
    {
      subscriptionIdentifier = [v10 subscriptionIdentifier];
      v13 = [handleCopy ID];
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v23 = subscriptionIdentifier;
          v24 = 2112;
          v25 = v13;
          _os_log_impl(&dword_1A823F000, v14, OS_LOG_TYPE_INFO, "Releasing transient subscription assertion on subscription: %@ for handle: %@", buf, 0x16u);
        }
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1A83CE470;
      v19[3] = &unk_1E7813450;
      v20 = v13;
      v21 = subscriptionIdentifier;
      v15 = subscriptionIdentifier;
      v16 = v13;
      [v11 releaseTransientSubscriptionAssertionWithCompletion:v19];
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [handleCopy ID];
        *buf = 138412290;
        v23 = v18;
        _os_log_impl(&dword_1A823F000, v17, OS_LOG_TYPE_INFO, "Could not find cached subscription for handle: %@. Not observing availability (yet).", buf, 0xCu);
      }
    }
  }
}

- (id)_subscriptionCacheKeyForHandle:(id)handle
{
  handleCopy = handle;
  normalizedID = [handleCopy normalizedID];
  if (![normalizedID length])
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E4394(handleCopy, v5);
    }

    v6 = [handleCopy ID];

    normalizedID = v6;
  }

  return normalizedID;
}

- (SKStatusSubscriptionService)subscriptionService
{
  subscriptionService = self->_subscriptionService;
  if (!subscriptionService)
  {
    v4 = MEMORY[0x1AC56C550](@"SKStatusSubscriptionService", @"StatusKit");
    v5 = *MEMORY[0x1AC56C560]("AKAvailabilityStatusTypeIdentifier", @"AvailabilityKit");
    v6 = [[v4 alloc] initWithStatusTypeIdentifier:v5];
    v7 = self->_subscriptionService;
    self->_subscriptionService = v6;

    [(SKStatusSubscriptionService *)self->_subscriptionService addDelegate:self queue:MEMORY[0x1E69E96A0]];
    subscriptionService = self->_subscriptionService;
  }

  return subscriptionService;
}

- (id)_cachedStatusSubscriptionForIMHandle:(id)handle fromCache:(id)cache cacheDescription:(id)description cacheMiss:(BOOL *)miss
{
  v29 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  cacheCopy = cache;
  descriptionCopy = description;
  v13 = [(IMHandleAvailabilityManager *)self _subscriptionCacheKeyForHandle:handleCopy];
  v14 = cacheCopy;
  objc_sync_enter(v14);
  if (v13)
  {
    v15 = [v14 objectForKey:v13];
  }

  else
  {
    v15 = 0;
  }

  objc_sync_exit(v14);

  if (!v15)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v23 = 138412546;
        v24 = descriptionCopy;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_1A823F000, v20, OS_LOG_TYPE_INFO, "Subscription cache miss (%@) for key %@", &v23, 0x16u);
      }
    }

    if (miss)
    {
      v16 = 0;
      *miss = 1;
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (miss)
  {
    *miss = 0;
  }

  MEMORY[0x1AC56C550](@"SKStatusSubscription", @"StatusKit");
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!IMOSLoggingEnabled())
      {
LABEL_27:
        v16 = 0;
        goto LABEL_28;
      }

      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v23 = 138412546;
        v24 = descriptionCopy;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Subscription cache hit (%@), we do not have a subscription for key: %@", &v23, 0x16u);
      }
    }

    else
    {
      v21 = IMLogHandleForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v23 = 138412802;
        v24 = descriptionCopy;
        v25 = 2112;
        v26 = v13;
        v27 = 2112;
        v28 = v15;
        _os_log_fault_impl(&dword_1A823F000, v21, OS_LOG_TYPE_FAULT, "Subscription cache hit (%@) for key %@, but object in cache is of unknown type: %@", &v23, 0x20u);
      }
    }

    goto LABEL_27;
  }

  v16 = v15;
  currentStatus = [v16 currentStatus];
  statusUniqueIdentifier = [currentStatus statusUniqueIdentifier];

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v23 = 138412802;
      v24 = descriptionCopy;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = statusUniqueIdentifier;
      _os_log_impl(&dword_1A823F000, v19, OS_LOG_TYPE_INFO, "Subscription cache hit (%@), found subscription for key: %@ Status: %@", &v23, 0x20u);
    }
  }

LABEL_28:

  return v16;
}

- (id)_skHandleForIMHandle:(id)handle
{
  normalizedID = [handle normalizedID];
  v5 = [(IMHandleAvailabilityManager *)self _skHandleForString:normalizedID];

  return v5;
}

- (id)_skHandleForString:(id)string
{
  stringCopy = string;
  v4 = [objc_alloc(MEMORY[0x1AC56C550](@"SKHandle" @"StatusKit"))];

  return v4;
}

- (void)_clearCurrentSubscriptionCache
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = self->_pendingFetchesForCacheKeys;
  objc_sync_enter(v3);
  v4 = self->_currentCacheGeneration + 1;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      v8 = v4;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Clearing current subscription cache. New cache generation: %ld", &v7, 0xCu);
    }
  }

  self->_currentCacheGeneration = v4;
  [(NSMutableSet *)self->_pendingFetchesForCacheKeys removeAllObjects];
  objc_sync_exit(v3);

  v6 = self->_currentSubscriptionCache;
  objc_sync_enter(v6);
  [(NSMutableDictionary *)self->_currentSubscriptionCache removeAllObjects];
  objc_sync_exit(v6);
}

- (void)subscriptionInvitationReceived:(id)received
{
  v9 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = receivedCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Subscription invitation received, clearing cache and notifying UI to subscribe, if necessary. %@", &v7, 0xCu);
    }
  }

  [(IMHandleAvailabilityManager *)self _clearCurrentSubscriptionCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMHandleAvailabilityInvitationReceivedNotification object:receivedCopy];
}

- (void)subscriptionReceivedStatusUpdate:(id)update
{
  v9 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = updateCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Status update received, clearing cache and notifying UI to display updated status, if necessary. %@", &v7, 0xCu);
    }
  }

  [(IMHandleAvailabilityManager *)self _clearCurrentSubscriptionCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMHandleAvailabilityChangedNotification object:updateCopy];
}

- (void)subscriptionStateChanged:(id)changed
{
  v9 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = changedCopy;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Status state changed, clearing cache and notifying UI to refetch all relevant state. %@", &v7, 0xCu);
    }
  }

  [(IMHandleAvailabilityManager *)self _clearCurrentSubscriptionCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMHandleAvailabilityStateChangedNotification object:changedCopy];
}

- (void)subscriptionServiceDaemonDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A823F000, v5, OS_LOG_TYPE_INFO, "Subscription service daemon was disconnected, (e.g. app is returning from backgrounded) clearing stale cached data and notifying UI to refetch if necessary", v7, 2u);
    }
  }

  [(IMHandleAvailabilityManager *)self _clearCurrentSubscriptionCache];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:IMHandleAvailabilityDaemonDisconnectedNotification object:0];
}

@end