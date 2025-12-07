@interface FCBundleSubscriptionManager
- (FCBundleSubscription)cachedSubscription;
- (FCBundleSubscription)validatedCachedSubscription;
- (FCBundleSubscriptionManager)init;
- (FCBundleSubscriptionManager)initWithPrivateDataDirectory:(id)directory configurationManager:(id)manager cloudContext:(id)context contentContext:(id)contentContext appActivityMonitor:(id)monitor entitlementsProvider:(id)provider;
- (id)bundleSubscriptionLookupEntry;
- (id)updateHasRunEntitlementOnce:(id *)result;
- (uint64_t)hasRunEntitlementOnce;
- (void)activityObservingApplicationDidEnterBackground;
- (void)addObserver:(id)observer;
- (void)bundleChannelProvider:(id)provider bundleChannelIDsDidChangeWithChannelIDs:(id)ds version:(id)version;
- (void)clearBundleSubscription;
- (void)expireBundleSubscription;
- (void)forceExpireBundleSubscriptionBasedOnInternalSettings;
- (void)networkReachabilityDidChange:(id)change;
- (void)notifyObserversForChangeStateWithNewSubscription:(void *)subscription previousBundleSubscription:;
- (void)notifyObserversForExpiredStateWithSubscription:(uint64_t)subscription;
- (void)notifyObserversForSubscribedStateWithSubscription:(char)subscription hideBundleDetectionUI:;
- (void)prepareForUseWithCompletion:(id)completion;
- (void)prewarmBundleTagIDsWithPurchaseID:(id)d;
- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy hideBundleDetectionUI:(BOOL)i completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)renewalNoticeShownWithPurchaseID:(id)d;
- (void)setEntitlementsOverrideProvider:(id)provider;
- (void)silentExpireBundleSubscription;
- (void)updateCachedSubscriptionWithSubscription:(uint64_t)subscription;
@end

@implementation FCBundleSubscriptionManager

- (FCBundleSubscription)cachedSubscription
{
  selfCopy = self;
  if (self)
  {
    self = self->_accessLock;
  }

  [(FCBundleSubscriptionManager *)self lock];
  v3 = selfCopy->_cachedSubscription;
  [(NFMutexLock *)selfCopy->_accessLock unlock];

  return v3;
}

void __54__FCBundleSubscriptionManager_setupCachedSubscription__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Cache bundle subscription is initialized as 'not subscribed' state", &v14, 2u);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[8];
  }

  v4 = v3;
  v5 = [v4 bundleChannelIDs];
  v6 = [FCBundleSubscription subscriptionWithSubscriptionState:3 bundleChannelIDs:v5];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v6 + 116];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-116 - v6];
  objc_setAssociatedObject(v6, (v6 + 1), v7, 1);
  objc_setAssociatedObject(v6, (-117 - v6), v8, 1);

  [(FCBundleSubscriptionManager *)*(a1 + 32) updateCachedSubscriptionWithSubscription:v6];
  v9 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = v9;
    v12 = [v10 cachedSubscription];
    v13 = [v12 debugDescription];
    v14 = 138543362;
    v15 = v13;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Cache bundle subscription is set up: %{public}@", &v14, 0xCu);
  }
}

- (uint64_t)hasRunEntitlementOnce
{
  if (self)
  {
    [*(self + 56) lock];
    v2 = *(self + 8);
    [*(self + 56) unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (FCBundleSubscription)validatedCachedSubscription
{
  selfCopy = self;
  if (self)
  {
    self = self->_accessLock;
  }

  [(FCBundleSubscriptionManager *)self lock];
  if (selfCopy->_hasRunEntitlementOnce)
  {
    cachedSubscription = selfCopy->_cachedSubscription;
  }

  else
  {
    cachedSubscription = 0;
  }

  v4 = cachedSubscription;
  [(NFMutexLock *)selfCopy->_accessLock unlock];

  return v4;
}

- (FCBundleSubscriptionManager)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCBundleSubscriptionManager init]";
    v10 = 2080;
    v11 = "FCBundleSubscriptionManager.m";
    v12 = 1024;
    v13 = 68;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCBundleSubscriptionManager init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCBundleSubscriptionManager)initWithPrivateDataDirectory:(id)directory configurationManager:(id)manager cloudContext:(id)context contentContext:(id)contentContext appActivityMonitor:(id)monitor entitlementsProvider:(id)provider
{
  v67 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  managerCopy = manager;
  contextCopy = context;
  contentContextCopy = contentContext;
  monitorCopy = monitor;
  providerCopy = provider;
  if (!directoryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v62 = providerCopy;
    v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "privateDataDirectory != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCBundleSubscriptionManager initWithPrivateDataDirectory:configurationManager:cloudContext:contentContext:appActivityMonitor:entitlementsProvider:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCBundleSubscriptionManager.m";
    *&buf[22] = 1024;
    LODWORD(v66) = 78;
    WORD2(v66) = 2114;
    *(&v66 + 6) = v56;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    providerCopy = v62;
    if (v62)
    {
      goto LABEL_6;
    }
  }

  else if (providerCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v63 = providerCopy;
    v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "entitlementsProvider != nil"];
    *buf = 136315906;
    *&buf[4] = "[FCBundleSubscriptionManager initWithPrivateDataDirectory:configurationManager:cloudContext:contentContext:appActivityMonitor:entitlementsProvider:]";
    *&buf[12] = 2080;
    *&buf[14] = "FCBundleSubscriptionManager.m";
    *&buf[22] = 1024;
    LODWORD(v66) = 79;
    WORD2(v66) = 2114;
    *(&v66 + 6) = v57;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    providerCopy = v63;
  }

LABEL_6:
  v64.receiver = self;
  v64.super_class = FCBundleSubscriptionManager;
  v20 = [(FCBundleSubscriptionManager *)&v64 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_configurationManager, manager);
    objc_storeStrong(&v21->_bundleEntitlementsProvider, provider);
    objc_storeStrong(&v21->_contentContext, contentContext);
    v21->_hasRunEntitlementOnce = 0;
    v22 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
    observers = v21->_observers;
    v21->_observers = v22;

    v24 = objc_alloc_init(MEMORY[0x1E69B68E8]);
    accessLock = v21->_accessLock;
    v21->_accessLock = v24;

    v26 = [[FCKeyValueStore alloc] initWithName:@"BundleSubscription" directory:directoryCopy version:1 options:0 classRegistry:0];
    localStore = v21->_localStore;
    v21->_localStore = v26;

    v28 = [[FCBundleSubscriptionLookUpEntryManager alloc] initWithLocalStore:v21->_localStore];
    bundleSubscriptionLookupEntryManager = v21->_bundleSubscriptionLookupEntryManager;
    v21->_bundleSubscriptionLookupEntryManager = v28;

    v30 = [[FCBundleChannelProvider alloc] initWithLocalStore:monitorCopy appActivityMonitor:managerCopy configurationManager:contentContextCopy contentContext:?];
    bundleChannelProvider = v21->_bundleChannelProvider;
    v21->_bundleChannelProvider = v30;

    [(FCBundleChannelProviderType *)v21->_bundleChannelProvider setDelegate:v21];
    v32 = [[FCAsyncSerialQueue alloc] initWithQualityOfService:25];
    refreshQueue = v21->_refreshQueue;
    v21->_refreshQueue = v32;

    bundleSubscriptionLookUpEntry = [(FCBundleSubscriptionLookUpEntryManager *)v21->_bundleSubscriptionLookupEntryManager bundleSubscriptionLookUpEntry];
    v35 = bundleSubscriptionLookUpEntry;
    v61 = providerCopy;
    if (!bundleSubscriptionLookUpEntry)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __54__FCBundleSubscriptionManager_setupCachedSubscription__block_invoke;
      *&v66 = &unk_1E7C36EA0;
      *(&v66 + 1) = v21;
      __54__FCBundleSubscriptionManager_setupCachedSubscription__block_invoke(buf);
LABEL_20:

      networkReachability = [contextCopy networkReachability];
      [networkReachability addObserver:v21];

      [monitorCopy addObserver:v21];
      providerCopy = v61;
      goto LABEL_21;
    }

    if (![bundleSubscriptionLookUpEntry purchaseValidationState])
    {
      bundleSubscription = [v35 bundleSubscription];
      [(FCBundleSubscriptionManager *)v21 updateCachedSubscriptionWithSubscription:bundleSubscription];
      v48 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v48;
        cachedSubscription = [(FCBundleSubscriptionManager *)v21 cachedSubscription];
        v50 = [cachedSubscription debugDescription];
        *buf = 138543362;
        *&buf[4] = v50;
        _os_log_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_DEFAULT, "Cache bundle subscription state valid: %{public}@", buf, 0xCu);
      }

      goto LABEL_20;
    }

    v58 = contextCopy;
    v59 = managerCopy;
    purchaseValidationState = [v35 purchaseValidationState];
    v37 = v21->_bundleChannelProvider;
    bundleChannelIDs = [(FCBundleChannelProviderType *)v37 bundleChannelIDs];
    if (purchaseValidationState == 1)
    {
      v39 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:bundleChannelIDs];
      v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39 + 132];
      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-132 - v39];
      objc_setAssociatedObject(v39, (v39 + 1), v40, 1);
      objc_setAssociatedObject(v39, (-133 - v39), v41, 1);

      [(FCBundleSubscriptionManager *)v21 updateCachedSubscriptionWithSubscription:v39];
      v42 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v42;
        cachedSubscription2 = [(FCBundleSubscriptionManager *)v21 cachedSubscription];
        v45 = [cachedSubscription2 debugDescription];
        *buf = 138543362;
        *&buf[4] = v45;
        v46 = "Cache bundle subscription state expired: %{public}@";
LABEL_18:
        _os_log_impl(&dword_1B63EF000, v43, OS_LOG_TYPE_DEFAULT, v46, buf, 0xCu);
      }
    }

    else
    {
      v39 = [FCBundleSubscription subscriptionWithSubscriptionState:3 bundleChannelIDs:bundleChannelIDs];
      v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39 + 139];
      v52 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-139 - v39];
      objc_setAssociatedObject(v39, (v39 + 1), v51, 1);
      objc_setAssociatedObject(v39, (-140 - v39), v52, 1);

      [(FCBundleSubscriptionManager *)v21 updateCachedSubscriptionWithSubscription:v39];
      v53 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v43 = v53;
        cachedSubscription2 = [(FCBundleSubscriptionManager *)v21 cachedSubscription];
        v45 = [cachedSubscription2 debugDescription];
        *buf = 138543362;
        *&buf[4] = v45;
        v46 = "Cache bundle subscription state not subscribed: %{public}@";
        goto LABEL_18;
      }
    }

    contextCopy = v58;
    managerCopy = v59;
    goto LABEL_20;
  }

LABEL_21:

  return v21;
}

- (void)updateCachedSubscriptionWithSubscription:(uint64_t)subscription
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (subscription)
  {
    [*(subscription + 56) lock];
    objc_storeStrong((subscription + 88), a2);
    v5 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 debugDescription];
      v14 = 138412290;
      v15 = v7;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "updateCachedSubscriptionWithSubscription  bundleSubscription= %@", &v14, 0xCu);
    }

    [*(subscription + 56) unlock];
    v8 = NewsCoreUserDefaults();
    v9 = v4;
    v10 = objc_getAssociatedObject(v9, v4 + 1);
    unsignedIntegerValue = [v10 unsignedIntegerValue];
    v12 = unsignedIntegerValue;
    v13 = objc_getAssociatedObject(v9, ~unsignedIntegerValue);

    LOBYTE(v9) = [v13 unsignedIntegerValue] ^ v12;
    [v8 setBool:v9 & 1 forKey:@"news_url_resolution_subscription_status"];
  }
}

- (void)setEntitlementsOverrideProvider:(id)provider
{
  if (self)
  {
    self = self->_bundleEntitlementsProvider;
  }

  [(FCBundleSubscriptionManager *)self setEntitlementsOverrideProvider:provider];
}

- (void)activityObservingApplicationDidEnterBackground
{
  selfCopy = self;
  if (self)
  {
    self = self->_bundleSubscriptionLookupEntryManager;
  }

  [(FCBundleSubscriptionManager *)self cleanupStaleExpiredEntry];
  if (NFInternalBuild())
  {
    if (selfCopy)
    {
      v3 = FCPersistenceQueue();
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke;
      block[3] = &unk_1E7C36EA0;
      block[4] = selfCopy;
      dispatch_async(v3, block);
    }
  }
}

void __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke(uint64_t a1)
{
  v36[3] = *MEMORY[0x1E69E9840];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_2;
  v32[3] = &unk_1E7C371A8;
  v32[4] = *(a1 + 32);
  v2 = __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_2(v32);
  v36[0] = v2;
  v35[0] = @"state";
  v35[1] = @"bundleChannels";
  v3 = [*(a1 + 32) bundleSubscription];
  v4 = [v3 bundleChannelIDs];
  v5 = [v4 array];
  v36[1] = v5;
  v35[2] = @"lastUpdated";
  v6 = MEMORY[0x1E696AEC0];
  v7 = [MEMORY[0x1E695DF00] date];
  [v7 timeIntervalSince1970];
  v9 = [v6 stringWithFormat:@"%f", v8];
  v36[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];

  v31 = 0;
  v11 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v10 options:1 error:&v31];
  v12 = v31;
  v13 = v12;
  if (v11)
  {
    v14 = MEMORY[0x1E695DFF8];
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = *(v15 + 32);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 storeDirectory];
    v18 = [v14 fileURLWithPath:v17];
    v19 = [v18 URLByAppendingPathComponent:@"bundle"];
    v20 = [v19 URLByAppendingPathExtension:@"json"];

    if (v20)
    {
      v21 = [v20 path];
      v28 = v13;
      v22 = [v11 writeToFile:v21 options:1 error:&v28];
      v23 = v28;

      v24 = FCPersonalizationLog;
      if (v22)
      {
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
        {
          v25 = v24;
          v26 = [v20 path];
          *buf = 138412290;
          v34 = v26;
          _os_log_debug_impl(&dword_1B63EF000, v25, OS_LOG_TYPE_DEBUG, "Successfully saved readable bundle data at %@.", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v23;
        _os_log_error_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_ERROR, "Error when saving readable bundle data: %@", buf, 0xCu);
      }

      v13 = v23;
    }

    else
    {
      v27 = FCPersonalizationLog;
      if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_ERROR, "Failed to construct file URL for saving readable bundle data", buf, 2u);
      }

      v20 = 0;
    }
  }

  else
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_3;
    v29[3] = &unk_1E7C36EA0;
    v13 = v12;
    v30 = v13;
    __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_3(v29);
    v20 = v30;
  }
}

__CFString *__54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) bundleSubscription];
  v2 = [v1 unprotectedSubscriptionState];

  if (v2 > 2)
  {
    return @"unsubscribed";
  }

  else
  {
    return off_1E7C3A860[v2];
  }
}

void __54__FCBundleSubscriptionManager_saveReadableBundleState__block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Error when saving readable bundle data: %@", &v4, 0xCu);
  }
}

- (void)bundleChannelProvider:(id)provider bundleChannelIDsDidChangeWithChannelIDs:(id)ds version:(id)version
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  versionCopy = version;
  v9 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    cachedSubscription = [(FCBundleSubscriptionManager *)self cachedSubscription];
    v12 = [cachedSubscription debugDescription];
    v19 = 138412290;
    v20 = v12;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "bundleChannelIDsDidChangeWithChannelIDs  bundleSubscription= %@", &v19, 0xCu);
  }

  cachedSubscription2 = [(FCBundleSubscriptionManager *)self cachedSubscription];
  v14 = [cachedSubscription2 copy];

  v15 = MEMORY[0x1E695DFB8];
  v16 = [dsCopy copy];
  v17 = [v15 orderedSetWithArray:v16];
  [v14 setBundleChannelIDs:v17];

  v18 = [versionCopy copy];
  [v14 setBundleChannelIDsVersion:v18];

  [(FCBundleSubscriptionManager *)self updateCachedSubscriptionWithSubscription:v14];
}

- (void)refreshBundleSubscriptionWithCachePolicy:(unint64_t)policy hideBundleDetectionUI:(BOOL)i completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke;
  aBlock[3] = &unk_1E7C3A6D8;
  aBlock[4] = self;
  aBlock[5] = policy;
  v9 = _Block_copy(aBlock);
  if (v9[2]())
  {
    v11 = policy == 3 || policy == 0;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    date = [MEMORY[0x1E695DF00] date];
    v15 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v33 = uUIDString;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Will wait on serial queue for bundle subscription refresh opportunity, id=%{public}@", buf, 0xCu);
    }

    if (self)
    {
      refreshQueue = self->_refreshQueue;
    }

    else
    {
      refreshQueue = 0;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_78;
    v19[3] = &unk_1E7C3A778;
    v20 = date;
    v21 = uUIDString;
    v23 = v9;
    policyCopy = policy;
    v24 = completionCopy;
    selfCopy = self;
    v26 = v11;
    iCopy = i;
    v17 = uUIDString;
    v18 = date;
    [(FCAsyncSerialQueue *)refreshQueue enqueueBlock:v19];
  }

  else
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_75;
    v28[3] = &unk_1E7C3A700;
    policyCopy2 = policy;
    v28[4] = self;
    v29 = completionCopy;
    __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_75(v28);
    v18 = v29;
  }
}

uint64_t __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (([v3 isEqualToString:@"com.apple.stocks"] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", @"com.apple.news") & 1) != 0 || NSClassFromString(&cfstr_Xctest.isa))
  {
    v7 = 1;
    if ((NFStoreDemoMode() & 1) == 0 && *(a1 + 40) <= 1uLL)
    {
      v4 = [*(a1 + 32) cachedSubscription];
      if (v4)
      {
        v5 = v4;
        v6 = [(FCBundleSubscriptionManager *)*(a1 + 32) hasRunEntitlementOnce];

        if (v6)
        {
          v7 = 0;
        }
      }
    }
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_2;
    v9[3] = &unk_1E7C36F68;
    v9[4] = *(a1 + 32);
    v10 = v3;
    v7 = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_2(v9);
  }

  return v7;
}

uint64_t __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = *(a1 + 40);
    v7 = 138412546;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%@ ignoring bundle entitlement check for bundleID=%{public}@", &v7, 0x16u);
  }

  return 0;
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_75(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v4 = v2;
    v5 = FCStringFromBundleSubscriptionCachePolicy(v3);
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Bundle subscription does not need refresh, policy=%{public}@", buf, 0xCu);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_76;
  v7[3] = &unk_1E7C37778;
  v6 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v6;
  FCPerformBlockOnMainThread(v7);
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_76(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) cachedSubscription];
    (*(v1 + 16))(v1, v2);
  }
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_78(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 fc_millisecondTimeIntervalUntilNow];
    v8 = *(a1 + 40);
    *buf = 134218242;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Did wait on serial queue for bundle subscription refresh opportunity, time=%llums, id=%{public}@", buf, 0x16u);
  }

  if ((*(*(a1 + 56) + 16))())
  {
    v9 = [MEMORY[0x1E695DF00] date];
    v10 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 72);
      v12 = v10;
      v13 = FCStringFromBundleSubscriptionCachePolicy(v11);
      v14 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2114;
      *&buf[14] = v14;
      _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "Will refresh bundle subscription with cache policy=%{public}@, id=%{public}@", buf, 0x16u);
    }

    v15 = *(a1 + 80);
    v32 = *(a1 + 81);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_81;
    v34[3] = &unk_1E7C3A750;
    v35 = v9;
    v16 = *(a1 + 48);
    v36 = *(a1 + 40);
    v37 = v3;
    v38 = *(a1 + 64);
    v17 = v3;
    v18 = v9;
    v33 = v34;
    if (v16)
    {
      if (([(FCBundleSubscriptionManager *)v16 hasRunEntitlementOnce]& 1) == 0)
      {
        v19 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Fetching entitlements now because the entitlements check has not run at least once", buf, 2u);
        }
      }

      v20 = dispatch_group_create();
      v62[0] = 0;
      v62[1] = v62;
      v62[2] = 0x3032000000;
      v62[3] = __Block_byref_object_copy__18;
      v62[4] = __Block_byref_object_dispose__18;
      v63 = 0;
      v60[0] = 0;
      v60[1] = v60;
      v60[2] = 0x3032000000;
      v60[3] = __Block_byref_object_copy__18;
      v60[4] = __Block_byref_object_dispose__18;
      v61 = 0;
      v21 = [MEMORY[0x1E695DF00] date];
      dispatch_group_enter(v20);
      v22 = v16[8];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke;
      v55[3] = &unk_1E7C3A7A0;
      v58 = v62;
      v59 = v60;
      v55[4] = v16;
      v23 = v21;
      v56 = v23;
      v24 = v20;
      v57 = v24;
      [v22 loadInitialBundleChannelIDsWithCompletion:v55];

      v53[0] = 0;
      v53[1] = v53;
      v53[2] = 0x3032000000;
      v53[3] = __Block_byref_object_copy__18;
      v53[4] = __Block_byref_object_dispose__18;
      v54 = 0;
      v51[0] = 0;
      v51[1] = v51;
      v51[2] = 0x3032000000;
      v51[3] = __Block_byref_object_copy__18;
      v51[4] = __Block_byref_object_dispose__18;
      v52 = 0;
      v25 = [MEMORY[0x1E695DF00] date];
      dispatch_group_enter(v24);
      v26 = v16[2];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_85;
      v46[3] = &unk_1E7C3A7C8;
      v49 = v53;
      v50 = v51;
      v27 = v25;
      v47 = v27;
      v28 = v24;
      v48 = v28;
      [v26 fetchEntitlementsWithIgnoreCache:v15 completion:v46];

      objc_initWeak(&location, v16);
      if (FCDispatchGroupIsEmpty(v28))
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_87;
        v65 = &unk_1E7C3A818;
        objc_copyWeak(&v72, &location);
        v68 = v53;
        v66 = v16;
        v69 = v62;
        v70 = v60;
        v73 = v32;
        v71 = v51;
        v67 = v33;
        (*&buf[16])(buf);
      }

      else
      {
        v31 = dispatch_get_global_queue(25, 0);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_90;
        v65 = &unk_1E7C3A818;
        objc_copyWeak(&v72, &location);
        v68 = v53;
        v66 = v16;
        v69 = v62;
        v70 = v60;
        v73 = v32;
        v71 = v51;
        v67 = v33;
        dispatch_group_notify(v28, v31, buf);
      }

      objc_destroyWeak(&v72);
      objc_destroyWeak(&location);

      _Block_object_dispose(v51, 8);
      _Block_object_dispose(v53, 8);

      _Block_object_dispose(v60, 8);
      _Block_object_dispose(v62, 8);
    }
  }

  else
  {
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_79;
    v39[3] = &unk_1E7C3A728;
    v44 = *(a1 + 72);
    v40 = *(a1 + 40);
    v42 = v3;
    v29 = *(a1 + 64);
    v30 = *(a1 + 48);
    v43 = v29;
    v41 = v30;
    v18 = v3;
    __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_79(v39);

    v17 = v40;
  }
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_79(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    v4 = v2;
    v5 = FCStringFromBundleSubscriptionCachePolicy(v3);
    v6 = *(a1 + 32);
    *buf = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "Bundle subscription does not need refresh, policy=%{public}@, id=%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_80;
  v8[3] = &unk_1E7C37778;
  v7 = *(a1 + 56);
  v8[4] = *(a1 + 40);
  v9 = v7;
  FCPerformBlockOnMainThread(v8);
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_80(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) cachedSubscription];
    (*(v1 + 16))(v1, v2);
  }
}

void __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_81(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 fc_millisecondTimeIntervalUntilNow];
    v8 = *(a1 + 40);
    *buf = 134218242;
    v15 = v7;
    v16 = 2114;
    v17 = v8;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Did refresh bundle subscription with duration=%llums, id=%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_82;
  v11[3] = &unk_1E7C37778;
  v9 = *(a1 + 56);
  v12 = v3;
  v13 = v9;
  v10 = v3;
  FCPerformBlockOnMainThread(v11);
}

uint64_t __105__FCBundleSubscriptionManager_refreshBundleSubscriptionWithCachePolicy_hideBundleDetectionUI_completion___block_invoke_82(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[8];
  }

  v3 = v2;
  v4 = [v3 bundleChannelIDs];
  v5 = [v4 copy];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(a1 + 32);
  if (v8)
  {
    v8 = v8[8];
  }

  v9 = v8;
  v10 = [v9 bundleChannelIDsVersion];
  v11 = [v10 copy];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(a1 + 40);
    v16 = v14;
    v17 = 134217984;
    v18 = [v15 fc_millisecondTimeIntervalUntilNow];
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Spent %llums fetching channel IDs for bundle subscription", &v17, 0xCu);
  }

  dispatch_group_leave(*(a1 + 48));
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_85(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  v8 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = v8;
    v11 = 134217984;
    v12 = [v9 fc_millisecondTimeIntervalUntilNow];
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Spent %llums fetching entitlements for bundle subscription", &v11, 0xCu);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_87(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_2;
  v5[3] = &unk_1E7C3A7F0;
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v9 = *(a1 + 88);
  v8 = *(a1 + 72);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  FCPerformIfNonNil(WeakRetained, v5);
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 cachedSubscription];
  v5 = [v4 copy];

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:FCEntitlementsNotFoundErrorDateDate];

    v7 = *(a1 + 32);
    v72 = v3;
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 configuration];
    v10 = [v9 paidBundleViaOfferConfig];
    v11 = [v10 vendorAdHocOfferIds];

    v12 = [*(*(*(a1 + 48) + 8) + 40) vendorAdHocOfferID];
    v70 = v11;
    v71 = v5;
    if (v12)
    {
      v13 = [*(*(*(a1 + 48) + 8) + 40) vendorAdHocOfferID];
      v14 = [v11 containsObject:v13];
    }

    else
    {
      v14 = 0;
    }

    v21 = [*(*(*(a1 + 48) + 8) + 40) bundlePurchaseID];
    v22 = *(*(*(a1 + 56) + 8) + 40);
    v23 = *(*(*(a1 + 64) + 8) + 40);
    v24 = [*(*(*(a1 + 48) + 8) + 40) inTrialPeriod];
    v25 = [*(*(*(a1 + 48) + 8) + 40) isPurchaser];
    v26 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
    v27 = [*(*(*(a1 + 48) + 8) + 40) isAmplifyUser];
    v28 = [*(*(*(a1 + 48) + 8) + 40) initialPurchaseTimestamp];
    v29 = FCBundleSubscriptionMakeInline(v21, v22, v23, v24, v25, v26, v27, v14, v28);

    v30 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v29 debugDescription];
      *buf = 138412290;
      v74 = v32;
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Refresh bundle subscription bundleSubscription= %@", buf, 0xCu);
    }

    v5 = v71;
    v33 = v71;
    v34 = objc_getAssociatedObject(v33, (v71 + 1));
    v35 = [v34 unsignedIntegerValue];
    v36 = v35;
    v37 = objc_getAssociatedObject(v33, ~v35);

    v38 = [v37 unsignedIntegerValue] ^ v36;
    if (v38)
    {
      if (([v33 isEqual:v29] & 1) == 0)
      {
        v50 = v14;
        v51 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
          v53 = [v33 debugDescription];
          v54 = [v29 debugDescription];
          *buf = 138543618;
          v74 = v53;
          v75 = 2114;
          v76 = v54;
          _os_log_impl(&dword_1B63EF000, v52, OS_LOG_TYPE_DEFAULT, "Checked cachedSubscription: %{public}@ is not equal to bundleSubscription: %{public}@", buf, 0x16u);
        }

        if (v72)
        {
          v55 = *(v72 + 40);
        }

        else
        {
          v55 = 0;
        }

        v56 = [v55 bundleSubscriptionLookUpEntry];
        v57 = [v56 mutableCopy];

        if (v57)
        {
          [v57 setBundleChannelIDs:*(*(*(a1 + 56) + 8) + 40)];
          [v57 setBundleChannelIDsVersion:*(*(*(a1 + 64) + 8) + 40)];
          v58 = [*(*(*(a1 + 48) + 8) + 40) bundlePurchaseID];
          [v57 setPurchaseID:v58];

          [v57 setInTrialPeriod:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "inTrialPeriod")}];
          [v57 setIsPurchaser:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isPurchaser")}];
          v59 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
          [v57 setServicesBundlePurchaseID:v59];

          [v57 setIsAmplifyUser:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isAmplifyUser")}];
          [v57 setIsPaidBundleViaOfferActivated:v50];
          if (v72)
          {
            v60 = *(v72 + 40);
          }

          else
          {
            v60 = 0;
          }

          [v60 updateEntry:v57];
        }

        v61 = [v29 copy];
        v62 = [v33 copy];
        [(FCBundleSubscriptionManager *)v72 updateCachedSubscriptionWithSubscription:v29];
        [(FCBundleSubscriptionManager *)v72 notifyObserversForChangeStateWithNewSubscription:v61 previousBundleSubscription:v62];
      }
    }

    else
    {
      v39 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v39, OS_LOG_TYPE_INFO, "Bundle subscription did subscribe", buf, 2u);
      }

      v69 = v29;
      v68 = v14;
      if (v72)
      {
        v40 = *(v72 + 40);
      }

      else
      {
        v40 = 0;
      }

      v67 = *(*(*(a1 + 56) + 8) + 40);
      v41 = *(*(*(a1 + 64) + 8) + 40);
      v42 = *(*(*(a1 + 48) + 8) + 40);
      v43 = v40;
      v44 = [v42 bundlePurchaseID];
      v45 = [*(*(*(a1 + 48) + 8) + 40) inTrialPeriod];
      v46 = [*(*(*(a1 + 48) + 8) + 40) isPurchaser];
      v47 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
      v48 = [*(*(*(a1 + 48) + 8) + 40) isAmplifyUser];
      v49 = [*(*(*(a1 + 48) + 8) + 40) initialPurchaseTimestamp];
      LOBYTE(v66) = v68;
      LOBYTE(v65) = v48;
      [v43 addBundleChannelIDs:v67 bundleChannelIDsVersion:v41 purchaseID:v44 inTrialPeriod:v45 isPurchaser:v46 servicesBundlePurchaseID:v47 isAmplifyUser:v65 initialPurchaseTimestamp:v49 isPaidBundleViaOfferActivated:v66];

      v29 = v69;
      [(FCBundleSubscriptionManager *)v72 updateCachedSubscriptionWithSubscription:v69];
      [(FCBundleSubscriptionManager *)v72 notifyObserversForSubscribedStateWithSubscription:v69 hideBundleDetectionUI:*(a1 + 80)];
      v5 = v71;
    }

    v3 = v72;
  }

  else if ([*(*(*(a1 + 72) + 8) + 40) code] == 5002 && (v15 = v5, objc_getAssociatedObject(v15, (v5 + 1)), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "unsignedIntegerValue"), v18 = v17, objc_getAssociatedObject(v15, ~v17), v19 = objc_claimAutoreleasedReturnValue(), v15, LOBYTE(v15) = objc_msgSend(v19, "unsignedIntegerValue") ^ v18, v19, v16, (v15 & 1) != 0))
  {
    [(FCBundleSubscriptionManager *)v3 expireBundleSubscription];
  }

  else if ([*(*(*(a1 + 72) + 8) + 40) code] == 3001)
  {
    v20 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "Refresh bundle subscription failed with timeout error. Maintaining the same state as before", buf, 2u);
    }
  }

  [FCBundleSubscriptionManager updateHasRunEntitlementOnce:v3];
  v63 = *(a1 + 40);
  if (v63)
  {
    v64 = [v3 cachedSubscription];
    (*(v63 + 16))(v63, v64);
  }
}

- (void)notifyObserversForSubscribedStateWithSubscription:(char)subscription hideBundleDetectionUI:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __103__FCBundleSubscriptionManager_notifyObserversForSubscribedStateWithSubscription_hideBundleDetectionUI___block_invoke;
    v7[3] = &unk_1E7C37678;
    v7[4] = self;
    v8 = v5;
    subscriptionCopy = subscription;
    FCPerformBlockOnMainThread(v7);
  }
}

- (void)notifyObserversForChangeStateWithNewSubscription:(void *)subscription previousBundleSubscription:
{
  v5 = a2;
  subscriptionCopy = subscription;
  if (self)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __107__FCBundleSubscriptionManager_notifyObserversForChangeStateWithNewSubscription_previousBundleSubscription___block_invoke;
    v7[3] = &unk_1E7C376A0;
    v7[4] = self;
    v8 = v5;
    v9 = subscriptionCopy;
    FCPerformBlockOnMainThread(v7);
  }
}

- (void)expireBundleSubscription
{
  if (self)
  {
    v2 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_INFO))
    {
      *v14 = 0;
      _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_INFO, "Bundle subscription did expire", v14, 2u);
    }

    bundleSubscriptionLookUpEntry = [self[5] bundleSubscriptionLookUpEntry];
    v4 = [bundleSubscriptionLookUpEntry mutableCopy];

    if (v4)
    {
      date = [MEMORY[0x1E695DF00] date];
      [v4 setDateOfExpiration:date];

      [v4 setPurchaseValidationState:1];
      [self[5] updateEntry:v4];
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults removeObjectForKey:FCEntitlementsCacheExpiredErrorDateDate];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 removeObjectForKey:FCEntitlementsNotFoundErrorDateDate];

    v8 = self[8];
    bundleChannelIDs = [v8 bundleChannelIDs];
    v10 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:bundleChannelIDs];
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10 + 460];
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-460 - v10];
    objc_setAssociatedObject(v10, (v10 + 1), v11, 1);
    objc_setAssociatedObject(v10, (-461 - v10), v12, 1);

    [(FCBundleSubscriptionManager *)self updateCachedSubscriptionWithSubscription:v10];
    cachedSubscription = [self cachedSubscription];
    [(FCBundleSubscriptionManager *)self notifyObserversForExpiredStateWithSubscription:cachedSubscription];
  }
}

- (id)updateHasRunEntitlementOnce:(id *)result
{
  if (result)
  {
    v1 = result;
    [result[7] lock];
    *(v1 + 8) = 1;
    v2 = v1[7];

    return [v2 unlock];
  }

  return result;
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_90(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_2_91;
  v5[3] = &unk_1E7C3A7F0;
  v5[4] = *(a1 + 32);
  v7 = *(a1 + 56);
  v9 = *(a1 + 88);
  v8 = *(a1 + 72);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  FCPerformIfNonNil(WeakRetained, v5);
}

void __95__FCBundleSubscriptionManager__unguardedRefreshIgnoringCache_hideBundleDetectionUI_completion___block_invoke_2_91(uint64_t a1, void *a2)
{
  v77 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 cachedSubscription];
  v5 = [v4 copy];

  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v6 removeObjectForKey:FCEntitlementsNotFoundErrorDateDate];

    v7 = *(a1 + 32);
    v72 = v3;
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    v9 = [v8 configuration];
    v10 = [v9 paidBundleViaOfferConfig];
    v11 = [v10 vendorAdHocOfferIds];

    v12 = [*(*(*(a1 + 48) + 8) + 40) vendorAdHocOfferID];
    v70 = v11;
    v71 = v5;
    if (v12)
    {
      v13 = [*(*(*(a1 + 48) + 8) + 40) vendorAdHocOfferID];
      v14 = [v11 containsObject:v13];
    }

    else
    {
      v14 = 0;
    }

    v21 = [*(*(*(a1 + 48) + 8) + 40) bundlePurchaseID];
    v22 = *(*(*(a1 + 56) + 8) + 40);
    v23 = *(*(*(a1 + 64) + 8) + 40);
    v24 = [*(*(*(a1 + 48) + 8) + 40) inTrialPeriod];
    v25 = [*(*(*(a1 + 48) + 8) + 40) isPurchaser];
    v26 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
    v27 = [*(*(*(a1 + 48) + 8) + 40) isAmplifyUser];
    v28 = [*(*(*(a1 + 48) + 8) + 40) initialPurchaseTimestamp];
    v29 = FCBundleSubscriptionMakeInline(v21, v22, v23, v24, v25, v26, v27, v14, v28);

    v30 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v31 = v30;
      v32 = [v29 debugDescription];
      *buf = 138412290;
      v74 = v32;
      _os_log_impl(&dword_1B63EF000, v31, OS_LOG_TYPE_DEFAULT, "Refresh bundle subscription bundleSubscription= %@", buf, 0xCu);
    }

    v5 = v71;
    v33 = v71;
    v34 = objc_getAssociatedObject(v33, (v71 + 1));
    v35 = [v34 unsignedIntegerValue];
    v36 = v35;
    v37 = objc_getAssociatedObject(v33, ~v35);

    v38 = [v37 unsignedIntegerValue] ^ v36;
    if (v38)
    {
      if (([v33 isEqual:v29] & 1) == 0)
      {
        v50 = v14;
        v51 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v51;
          v53 = [v33 debugDescription];
          v54 = [v29 debugDescription];
          *buf = 138543618;
          v74 = v53;
          v75 = 2114;
          v76 = v54;
          _os_log_impl(&dword_1B63EF000, v52, OS_LOG_TYPE_DEFAULT, "Checked cachedSubscription: %{public}@ is not equal to bundleSubscription: %{public}@", buf, 0x16u);
        }

        if (v72)
        {
          v55 = *(v72 + 40);
        }

        else
        {
          v55 = 0;
        }

        v56 = [v55 bundleSubscriptionLookUpEntry];
        v57 = [v56 mutableCopy];

        if (v57)
        {
          [v57 setBundleChannelIDs:*(*(*(a1 + 56) + 8) + 40)];
          [v57 setBundleChannelIDsVersion:*(*(*(a1 + 64) + 8) + 40)];
          v58 = [*(*(*(a1 + 48) + 8) + 40) bundlePurchaseID];
          [v57 setPurchaseID:v58];

          [v57 setInTrialPeriod:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "inTrialPeriod")}];
          [v57 setIsPurchaser:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isPurchaser")}];
          v59 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
          [v57 setServicesBundlePurchaseID:v59];

          [v57 setIsAmplifyUser:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "isAmplifyUser")}];
          [v57 setIsPaidBundleViaOfferActivated:v50];
          if (v72)
          {
            v60 = *(v72 + 40);
          }

          else
          {
            v60 = 0;
          }

          [v60 updateEntry:v57];
        }

        v61 = [v29 copy];
        v62 = [v33 copy];
        [(FCBundleSubscriptionManager *)v72 updateCachedSubscriptionWithSubscription:v29];
        [(FCBundleSubscriptionManager *)v72 notifyObserversForChangeStateWithNewSubscription:v61 previousBundleSubscription:v62];
      }
    }

    else
    {
      v39 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v39, OS_LOG_TYPE_INFO, "Bundle subscription did subscribe", buf, 2u);
      }

      v69 = v29;
      v68 = v14;
      if (v72)
      {
        v40 = *(v72 + 40);
      }

      else
      {
        v40 = 0;
      }

      v67 = *(*(*(a1 + 56) + 8) + 40);
      v41 = *(*(*(a1 + 64) + 8) + 40);
      v42 = *(*(*(a1 + 48) + 8) + 40);
      v43 = v40;
      v44 = [v42 bundlePurchaseID];
      v45 = [*(*(*(a1 + 48) + 8) + 40) inTrialPeriod];
      v46 = [*(*(*(a1 + 48) + 8) + 40) isPurchaser];
      v47 = [*(*(*(a1 + 48) + 8) + 40) servicesBundlePurchaseID];
      v48 = [*(*(*(a1 + 48) + 8) + 40) isAmplifyUser];
      v49 = [*(*(*(a1 + 48) + 8) + 40) initialPurchaseTimestamp];
      LOBYTE(v66) = v68;
      LOBYTE(v65) = v48;
      [v43 addBundleChannelIDs:v67 bundleChannelIDsVersion:v41 purchaseID:v44 inTrialPeriod:v45 isPurchaser:v46 servicesBundlePurchaseID:v47 isAmplifyUser:v65 initialPurchaseTimestamp:v49 isPaidBundleViaOfferActivated:v66];

      v29 = v69;
      [(FCBundleSubscriptionManager *)v72 updateCachedSubscriptionWithSubscription:v69];
      [(FCBundleSubscriptionManager *)v72 notifyObserversForSubscribedStateWithSubscription:v69 hideBundleDetectionUI:*(a1 + 80)];
      v5 = v71;
    }

    v3 = v72;
  }

  else if ([*(*(*(a1 + 72) + 8) + 40) code] == 5002 && (v15 = v5, objc_getAssociatedObject(v15, (v5 + 1)), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "unsignedIntegerValue"), v18 = v17, objc_getAssociatedObject(v15, ~v17), v19 = objc_claimAutoreleasedReturnValue(), v15, LOBYTE(v15) = objc_msgSend(v19, "unsignedIntegerValue") ^ v18, v19, v16, (v15 & 1) != 0))
  {
    [(FCBundleSubscriptionManager *)v3 expireBundleSubscription];
  }

  else if ([*(*(*(a1 + 72) + 8) + 40) code] == 3001)
  {
    v20 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "Refresh bundle subscription failed with timeout error. Maintaining the same state as before", buf, 2u);
    }
  }

  [FCBundleSubscriptionManager updateHasRunEntitlementOnce:v3];
  v63 = *(a1 + 40);
  if (v63)
  {
    v64 = [v3 cachedSubscription];
    (*(v63 + 16))(v63, v64);
  }
}

- (void)notifyObserversForExpiredStateWithSubscription:(uint64_t)subscription
{
  v3 = a2;
  v4 = v3;
  if (subscription)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __78__FCBundleSubscriptionManager_notifyObserversForExpiredStateWithSubscription___block_invoke;
    v5[3] = &unk_1E7C36C58;
    v5[4] = subscription;
    v6 = v3;
    FCPerformBlockOnMainThread(v5);
  }
}

- (void)clearBundleSubscription
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    cachedSubscription = [(FCBundleSubscriptionManager *)self cachedSubscription];
    v6 = [cachedSubscription debugDescription];
    v25 = 138412290;
    v26 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "clearBundleSubscription cachedSubscription=%@", &v25, 0xCu);
  }

  cachedSubscription2 = [(FCBundleSubscriptionManager *)self cachedSubscription];
  v8 = objc_getAssociatedObject(cachedSubscription2, (cachedSubscription2 + 1));
  unsignedIntegerValue = [v8 unsignedIntegerValue];
  v10 = unsignedIntegerValue;
  v11 = objc_getAssociatedObject(cachedSubscription2, ~unsignedIntegerValue);
  v12 = [v11 unsignedIntegerValue] ^ v10;

  if (v12)
  {
    if (self)
    {
      bundleSubscriptionLookupEntryManager = self->_bundleSubscriptionLookupEntryManager;
    }

    else
    {
      bundleSubscriptionLookupEntryManager = 0;
    }

    bundleSubscriptionLookUpEntry = [(FCBundleSubscriptionLookUpEntryManager *)bundleSubscriptionLookupEntryManager bundleSubscriptionLookUpEntry];
    v15 = [bundleSubscriptionLookUpEntry mutableCopy];

    if (v15)
    {
      date = [MEMORY[0x1E695DF00] date];
      [v15 setDateOfExpiration:date];

      [v15 setPurchaseValidationState:1];
      [v15 setHasShownRenewalNotice:1];
      if (self)
      {
        v17 = self->_bundleSubscriptionLookupEntryManager;
      }

      else
      {
        v17 = 0;
      }

      [(FCBundleSubscriptionLookUpEntryManager *)v17 updateEntry:v15];
    }

    if (self)
    {
      bundleChannelProvider = self->_bundleChannelProvider;
    }

    else
    {
      bundleChannelProvider = 0;
    }

    v19 = bundleChannelProvider;
    bundleChannelIDs = [(FCBundleChannelProviderType *)v19 bundleChannelIDs];
    v21 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:bundleChannelIDs];
    v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21 + 482];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-482 - v21];
    objc_setAssociatedObject(v21, (v21 + 1), v22, 1);
    objc_setAssociatedObject(v21, (-483 - v21), v23, 1);

    [(FCBundleSubscriptionManager *)self updateCachedSubscriptionWithSubscription:v21];
    cachedSubscription3 = [(FCBundleSubscriptionManager *)self cachedSubscription];
    [(FCBundleSubscriptionManager *)self notifyObserversForExpiredStateWithSubscription:cachedSubscription3];
  }
}

- (id)bundleSubscriptionLookupEntry
{
  if (self)
  {
    self = self->_bundleSubscriptionLookupEntryManager;
  }

  return [(FCBundleSubscriptionManager *)self bundleSubscriptionLookUpEntry];
}

- (void)renewalNoticeShownWithPurchaseID:(id)d
{
  selfCopy = self;
  if (self)
  {
    self = self->_bundleSubscriptionLookupEntryManager;
  }

  bundleSubscriptionLookUpEntry = [(FCBundleSubscriptionManager *)self bundleSubscriptionLookUpEntry];
  v7 = [bundleSubscriptionLookUpEntry mutableCopy];

  v5 = v7;
  if (v7)
  {
    [v7 setHasShownRenewalNotice:1];
    if (selfCopy)
    {
      bundleSubscriptionLookupEntryManager = selfCopy->_bundleSubscriptionLookupEntryManager;
    }

    else
    {
      bundleSubscriptionLookupEntryManager = 0;
    }

    [(FCBundleSubscriptionLookUpEntryManager *)bundleSubscriptionLookupEntryManager updateEntry:v7];
    v5 = v7;
  }
}

- (void)prewarmBundleTagIDsWithPurchaseID:(id)d
{
  v10[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = [FCPurchaseLookupFetchOperation alloc];
  v10[0] = dCopy;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  if (self)
  {
    contentContext = self->_contentContext;
  }

  else
  {
    contentContext = 0;
  }

  v8 = [(FCPurchaseLookupFetchOperation *)v5 initWithPurchaseIDs:v6 contentContext:contentContext];

  [(FCOperation *)v8 setQualityOfService:25];
  [(FCOperation *)v8 setRelativePriority:1];
  fc_sharedConcurrentQueue = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
  [fc_sharedConcurrentQueue addOperation:v8];
}

- (void)forceExpireBundleSubscriptionBasedOnInternalSettings
{
  v23 = *MEMORY[0x1E69E9840];
  if (NFInternalBuild())
  {
    v3 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v3;
      cachedSubscription = [(FCBundleSubscriptionManager *)self cachedSubscription];
      v6 = [cachedSubscription debugDescription];
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "forceExpireBundleSubscriptionBasedOnInternalSettings  cachedSubscription=%@", &v21, 0xCu);
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v8 = [standardUserDefaults BOOLForKey:@"newssubscription.bundle_subscriptions.force_expire_bundle_subscriptions"];

    if (v8)
    {
      if (self)
      {
        bundleSubscriptionLookupEntryManager = self->_bundleSubscriptionLookupEntryManager;
      }

      else
      {
        bundleSubscriptionLookupEntryManager = 0;
      }

      bundleSubscriptionLookUpEntry = [(FCBundleSubscriptionLookUpEntryManager *)bundleSubscriptionLookupEntryManager bundleSubscriptionLookUpEntry];
      v11 = [bundleSubscriptionLookUpEntry mutableCopy];

      if (v11)
      {
        date = [MEMORY[0x1E695DF00] date];
        [v11 setDateOfExpiration:date];

        [v11 setPurchaseValidationState:1];
        if (self)
        {
          v13 = self->_bundleSubscriptionLookupEntryManager;
        }

        else
        {
          v13 = 0;
        }

        [(FCBundleSubscriptionLookUpEntryManager *)v13 updateEntry:v11];
      }

      if (self)
      {
        bundleChannelProvider = self->_bundleChannelProvider;
      }

      else
      {
        bundleChannelProvider = 0;
      }

      v15 = bundleChannelProvider;
      bundleChannelIDs = [(FCBundleChannelProviderType *)v15 bundleChannelIDs];
      v17 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:bundleChannelIDs];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17 + 577];
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-577 - v17];
      objc_setAssociatedObject(v17, (v17 + 1), v18, 1);
      objc_setAssociatedObject(v17, (-578 - v17), v19, 1);

      [(FCBundleSubscriptionManager *)self updateCachedSubscriptionWithSubscription:v17];
      cachedSubscription2 = [(FCBundleSubscriptionManager *)self cachedSubscription];
      [(FCBundleSubscriptionManager *)self notifyObserversForExpiredStateWithSubscription:cachedSubscription2];
    }
  }
}

- (void)silentExpireBundleSubscription
{
  selfCopy = self;
  if (self)
  {
    self = self->_bundleSubscriptionLookupEntryManager;
  }

  bundleSubscriptionLookUpEntry = [(FCBundleSubscriptionManager *)self bundleSubscriptionLookUpEntry];
  v13 = [bundleSubscriptionLookUpEntry mutableCopy];

  if (v13)
  {
    date = [MEMORY[0x1E695DF00] date];
    [v13 setDateOfExpiration:date];

    [v13 setPurchaseValidationState:1];
    [v13 setHasShownRenewalNotice:1];
    if (selfCopy)
    {
      bundleSubscriptionLookupEntryManager = selfCopy->_bundleSubscriptionLookupEntryManager;
    }

    else
    {
      bundleSubscriptionLookupEntryManager = 0;
    }

    [(FCBundleSubscriptionLookUpEntryManager *)bundleSubscriptionLookupEntryManager updateEntry:v13];
  }

  if (selfCopy)
  {
    bundleChannelProvider = selfCopy->_bundleChannelProvider;
  }

  else
  {
    bundleChannelProvider = 0;
  }

  v7 = bundleChannelProvider;
  bundleChannelIDs = [(FCBundleChannelProviderType *)v7 bundleChannelIDs];
  v9 = [FCBundleSubscription subscriptionWithSubscriptionState:2 bundleChannelIDs:bundleChannelIDs];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v9 + 594];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:-594 - v9];
  objc_setAssociatedObject(v9, (v9 + 1), v10, 1);
  objc_setAssociatedObject(v9, (-595 - v9), v11, 1);

  [(FCBundleSubscriptionManager *)selfCopy updateCachedSubscriptionWithSubscription:v9];
  cachedSubscription = [(FCBundleSubscriptionManager *)selfCopy cachedSubscription];
  [(FCBundleSubscriptionManager *)selfCopy notifyObserversForExpiredStateWithSubscription:cachedSubscription];
}

- (void)addObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    if (self)
    {
      observers = self->_observers;
    }

    else
    {
      observers = 0;
    }

    if ([(NSHashTable *)observers containsObject:observerCopy]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      observerCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", observerCopy];
      *buf = 136315906;
      v10 = "[FCBundleSubscriptionManager addObserver:]";
      v11 = 2080;
      v12 = "FCBundleSubscriptionManager.m";
      v13 = 1024;
      v14 = 614;
      v15 = 2114;
      v16 = observerCopy;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

      if (self)
      {
        goto LABEL_7;
      }
    }

    else if (self)
    {
LABEL_7:
      v6 = self->_observers;
LABEL_8:
      [(NSHashTable *)v6 addObject:observerCopy];
      goto LABEL_11;
    }

    v6 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v10 = "[FCBundleSubscriptionManager addObserver:]";
    v11 = 2080;
    v12 = "FCBundleSubscriptionManager.m";
    v13 = 1024;
    v14 = 610;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
}

- (void)removeObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    if (self)
    {
      observers = self->_observers;
    }

    else
    {
      observers = 0;
    }

    [(NSHashTable *)observers removeObject:observerCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v8 = "[FCBundleSubscriptionManager removeObserver:]";
    v9 = 2080;
    v10 = "FCBundleSubscriptionManager.m";
    v11 = 1024;
    v12 = 623;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

void __103__FCBundleSubscriptionManager_notifyObserversForSubscribedStateWithSubscription_hideBundleDetectionUI___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 bundleSubscriptionDidSubscribe:{*(a1 + 40), v10}];
        }

        if (objc_opt_respondsToSelector())
        {
          [v9 bundleSubscriptionDidSubscribe:*(a1 + 40) hideBundleDetectionUI:*(a1 + 48)];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void __78__FCBundleSubscriptionManager_notifyObserversForExpiredStateWithSubscription___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 bundleSubscriptionDidExpire:{*(a1 + 40), v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void __107__FCBundleSubscriptionManager_notifyObserversForChangeStateWithNewSubscription_previousBundleSubscription___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  if (v2)
  {
    v3 = *(v2 + 48);
  }

  else
  {
    v3 = 0;
  }

  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 copy];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if (objc_opt_respondsToSelector())
        {
          [v9 bundleSubscriptionDidChange:a1[5] previousBundleSubscription:{a1[6], v10}];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)prepareForUseWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__FCBundleSubscriptionManager_prepareForUseWithCompletion___block_invoke;
  v6[3] = &unk_1E7C3A840;
  v7 = completionCopy;
  v5 = completionCopy;
  [(FCBundleSubscriptionManager *)self refreshBundleSubscriptionWithCachePolicy:1 completion:v6];
}

uint64_t __59__FCBundleSubscriptionManager_prepareForUseWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)networkReachabilityDidChange:(id)change
{
  if ([change isNetworkReachable])
  {
    v4 = self ? self->_bundleChannelProvider : 0;
    bundleChannelIDs = [(FCBundleChannelProviderType *)v4 bundleChannelIDs];
    v6 = [bundleChannelIDs count];

    if (!v6)
    {
      v7 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        *v9 = 0;
        _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "bundleChannelIDs list found empty.Initiating download for bundle channelIds list", v9, 2u);
      }

      if (self)
      {
        bundleChannelProvider = self->_bundleChannelProvider;
      }

      else
      {
        bundleChannelProvider = 0;
      }

      [(FCBundleChannelProviderType *)bundleChannelProvider loadInitialBundleChannelIDsWithCompletion:&__block_literal_global_115];
    }
  }
}

void __60__FCBundleSubscriptionManager_networkReachabilityDidChange___block_invoke()
{
  v0 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B63EF000, v0, OS_LOG_TYPE_DEFAULT, "Successfully downloaded bundleChannelIDs list", v1, 2u);
  }
}

@end