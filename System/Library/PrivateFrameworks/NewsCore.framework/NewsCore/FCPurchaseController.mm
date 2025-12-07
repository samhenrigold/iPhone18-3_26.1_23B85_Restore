@interface FCPurchaseController
- (BOOL)hasPurchaseTypeAppStore;
- (BOOL)hasRenewalNoticeShownForTagID:(id)d;
- (BOOL)isPaidSubscriber;
- (BOOL)isPaidSubscriberFromAppStore;
- (BOOL)isPaidSubscriberFromNews;
- (BOOL)isPaidSubscriberFromWeb;
- (BOOL)isTagIDPurchased:(id)purchased;
- (BOOL)isTagPurchased:(id)purchased;
- (FCPurchaseController)init;
- (FCPurchaseController)initWithCloudContext:(id)context entitlementService:(id)service;
- (NSDictionary)purchaseLookUpEntriesByTagID;
- (NSSet)allPurchaseIDs;
- (NSSet)allTagIDs;
- (NSString)lastSignedInItunesAccountName;
- (id)_allPurchasedTagIDs;
- (id)expiredPurchaseChannelIDs;
- (id)lastSignedInItunesAccountDSID;
- (id)purchaseLookUpEntryForTagID:(id)d;
- (id)subscriptionNotSupportedChannelIDs;
- (id)webAccessEntryForTagID:(void *)d;
- (id)webAccessOptedInTagIDs;
- (uint64_t)atleastOneValidAppStorePurchase;
- (void)_enumerateValidPurchasesUsingBlock:(void *)block;
- (void)_removeFromPurchasedChannelsListWithTagIDs:(void *)result;
- (void)activityObservingApplicationDidEnterBackground;
- (void)addToPurchasedChannelsListWithTagID:(uint64_t)d purchaseID:(void *)iD purchaseType:(void *)type purchaseValidationState:(uint64_t)state isNewsAppPurchase:(char)purchase lastVerificationTime:(void *)time;
- (void)addToWebAccessOptedInListWithTagID:(id)d;
- (void)clearAllAppStorePurchases;
- (void)dealloc;
- (void)forceExpireAllSubscriptionsIfNeeded;
- (void)handleAccessTokenChangeWithTagID:(uint64_t)d userInitiated:(void *)initiated;
- (void)notifyPurchaseAddedWithTagIDs:(uint64_t)ds;
- (void)notifyPurchaseListChanged;
- (void)notifyPurchaseRemovedWithTagIDs:(uint64_t)ds;
- (void)notifyPurchasesDiscoveredWithTagIDs:(uint64_t)ds;
- (void)performEntitlementCheckWithIgnoreCache:(BOOL)cache callbackQueue:(id)queue completion:(id)completion;
- (void)removeFromPurchasedChannelsListWithTagIDs:(id)ds;
- (void)removeFromPurchasesDiscoveredList:(id)list completion:(id)completion;
- (void)removeWebPurchaseForTagID:(id)d userInitiated:(BOOL)initiated;
- (void)renewalNoticeShownForPurchasedChannelsListWithTagIDs:(id)ds;
- (void)setPurchasesDiscoveredTagIDs:(uint64_t)ds;
- (void)shouldShowSignedInWithDifferentiTunesAccountAlertWithiTunesAccountName:(id)name iTunesAccountDSID:(id)d isUserSignedIntoiTunes:(BOOL)tunes isBundleSubscriber:(BOOL)subscriber completion:(id)completion;
- (void)shouldShowiTunesSignedOutAlertWithiTunesAccountName:(id)name iTunesAccountDSID:(id)d isUserSignedIntoiTunes:(BOOL)tunes isBundleSubscriber:(BOOL)subscriber completion:(id)completion;
- (void)silentExpireInAppSubscriptions;
- (void)submitWebAccessWithTagID:(id)d purchaseID:(id)iD emailAddress:(id)address purchaseReceipt:(id)receipt serialCompletion:(id)completion completion:(id)a8;
- (void)updatePurchaseEntryToExpired:(id)expired;
- (void)updatePurchaseEntryToExpiredForTagIDs:(id)ds;
- (void)verifyAccessTokenWithTagID:(id)d accessToken:(id)token consumedArticleCount:(unint64_t)count serialCompletion:(id)completion callbackQueue:(id)queue completion:(id)a8;
@end

@implementation FCPurchaseController

- (id)_allPurchasedTagIDs
{
  selfCopy = self;
  if (self)
  {
    v2 = [MEMORY[0x1E695DFA8] set];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __43__FCPurchaseController__allPurchasedTagIDs__block_invoke;
    v5[3] = &unk_1E7C38FA0;
    v6 = v2;
    v3 = v2;
    [(FCPurchaseController *)selfCopy _enumerateValidPurchasesUsingBlock:v5];
    selfCopy = [v3 copy];
  }

  return selfCopy;
}

- (BOOL)isPaidSubscriber
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__FCPurchaseController_isPaidSubscriber__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)isPaidSubscriberFromWeb
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FCPurchaseController_isPaidSubscriberFromWeb__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)isPaidSubscriberFromNews
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__FCPurchaseController_isPaidSubscriberFromNews__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (BOOL)isPaidSubscriberFromAppStore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__FCPurchaseController_isPaidSubscriberFromAppStore__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

- (id)webAccessOptedInTagIDs
{
  if (self)
  {
    self = self->_cloudContext;
  }

  tagSettings = [(FCPurchaseController *)self tagSettings];
  webAccessOptedInTagIDs = [tagSettings webAccessOptedInTagIDs];

  return webAccessOptedInTagIDs;
}

- (FCPurchaseController)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCPurchaseController init]";
    v10 = 2080;
    v11 = "FCPurchaseController.m";
    v12 = 1024;
    v13 = 162;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCPurchaseController init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCPurchaseController)initWithCloudContext:(id)context entitlementService:(id)service
{
  v108 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  serviceCopy = service;
  if (contextCopy)
  {
    v9 = contextCopy;
    v10 = serviceCopy;
    if (!self)
    {
LABEL_51:
      v13 = 0;
      goto LABEL_50;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cloudContext != nil"];
      *v92 = 136315906;
      v93 = "[FCPurchaseController initWithCloudContext:entitlementService:]";
      v94 = 2080;
      v95 = "FCPurchaseController.m";
      v96 = 1024;
      v97 = 168;
      v98 = 2114;
      v99 = v74;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v92, 0x26u);
    }

    v11 = serviceCopy;
    if (!self)
    {
      goto LABEL_51;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "cloudContext != nil"];
      *v92 = 136315906;
      v93 = "[FCPurchaseController initWithCloudContext:entitlementService:keyValueStoreOption:]";
      v94 = 2080;
      v95 = "FCPurchaseController.m";
      v96 = 1024;
      v97 = 178;
      v98 = 2114;
      v99 = v75;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v92, 0x26u);
    }
  }

  v85.receiver = self;
  v85.super_class = FCPurchaseController;
  v12 = [(FCPurchaseController *)&v85 init];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_50;
  }

  v78 = serviceCopy;
  objc_storeStrong(&v12->_cloudContext, context);
  objc_storeStrong(&v13->_entitlementService, service);
  userInfo = [contextCopy userInfo];
  [userInfo addObserver:v13];

  v90[0] = @"newssubscription.subscriptions.metered_count_duration";
  v90[1] = @"newssubscription.a_la_carte_subscriptions.metered_count_maximum_limit";
  v91[0] = &unk_1F2E6FDC8;
  v91[1] = &unk_1F2E6FDC8;
  v90[2] = @"newssubscription.bundle_subscriptions.metered_count_maximum_limit";
  v91[2] = &unk_1F2E6FDC8;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:3];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v77 = v15;
  [standardUserDefaults registerDefaults:v15];

  privateDataDirectory = [contextCopy privateDataDirectory];
  v17 = [[FCKeyValueStore alloc] initWithName:@"PurchasedChannelList" directory:privateDataDirectory version:1 options:0 classRegistry:0];
  localStore = v13->_localStore;
  v13->_localStore = v17;

  v19 = [[FCPurchaseLookUpEntriesManager alloc] initWithLocalStore:?];
  purchaseLookupEntriesManager = v13->_purchaseLookupEntriesManager;
  v13->_purchaseLookupEntriesManager = v19;

  v79 = contextCopy;
  appActivityMonitor = [contextCopy appActivityMonitor];
  [appActivityMonitor addObserver:v13];

  v22 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v23 = dispatch_queue_attr_make_with_qos_class(v22, QOS_CLASS_BACKGROUND, 0);
  v24 = dispatch_queue_create("FCPurchaseLookUpData.purchasedChannelsAccessQueue", v23);
  accessQueue = v13->_accessQueue;
  v13->_accessQueue = v24;

  v26 = objc_opt_new();
  entitlementQueue = v13->_entitlementQueue;
  v13->_entitlementQueue = v26;

  v28 = [objc_alloc(MEMORY[0x1E69B68D8]) initWithConstructor:&__block_literal_global_14];
  session = v13->_session;
  v13->_session = v28;

  objc_setProperty_atomic_copy(v13, v30, MEMORY[0x1E695E0F8], 64);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  webAccessEntriesByTagID = v13->_webAccessEntriesByTagID;
  v13->_webAccessEntriesByTagID = dictionary;

  v33 = [MEMORY[0x1E695DFA8] set];
  purchasesDiscoveredTagIDs = v13->_purchasesDiscoveredTagIDs;
  v13->_purchasesDiscoveredTagIDs = v33;

  v35 = v13->_localStore;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  obj = [(FCKeyValueStore *)v35 allKeys];
  v36 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
  if (!v36)
  {
    goto LABEL_43;
  }

  v37 = v36;
  v38 = *v87;
  v81 = v35;
  v82 = v13;
  v80 = *v87;
  do
  {
    v39 = 0;
    v83 = v37;
    do
    {
      if (*v87 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(*(&v86 + 1) + 8 * v39);
      objc_opt_class();
      v41 = [(FCKeyValueStore *)v35 objectForKey:v40];
      if (v41)
      {
        if (objc_opt_isKindOfClass())
        {
          v42 = v41;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }

      v43 = v42;

      if (v43)
      {
        if (![v40 hasPrefix:@"wa-"])
        {
          goto LABEL_39;
        }

        v44 = [FCWebAccessEntry alloc];
        webAccessEntriesByTagID = v40;
        v46 = v43;
        v47 = v46;
        if (v44)
        {
          if (!webAccessEntriesByTagID && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v58 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"web access entry must have an identifier"];
            *buf = 136315906;
            v101 = "[FCWebAccessEntry initWithEntryID:dictionaryRepresentation:]";
            v102 = 2080;
            v103 = "FCPurchaseController.m";
            v104 = 1024;
            v105 = 1829;
            v106 = 2114;
            v107 = v58;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v48 = [v47 objectForKeyedSubscript:@"WebAccessEntryLastRetryAttemptTime"];
          v49 = [v47 objectForKeyedSubscript:@"WebAccessEntryEmail"];
          v50 = [v47 objectForKeyedSubscript:@"WebAccessEntryPurchaseReceipt"];
          v51 = [v47 objectForKeyedSubscript:@"WebAccessEntryTagID"];
          v52 = [v47 objectForKeyedSubscript:@"WebAccessEntryPurchaseID"];
          v44 = [(FCWebAccessEntry *)v44 initWithEntryID:webAccessEntriesByTagID tagID:v51 purchaseID:v52 lastRetryAttemptTime:v48 email:v49 purchaseReceipt:v50];

          if (!v44)
          {
            v35 = v81;
            v13 = v82;
            v37 = v83;
            v38 = v80;
            goto LABEL_38;
          }

          v13 = v82;
          webAccessEntriesByTagID = [(FCPurchaseController *)v82 webAccessEntriesByTagID];
          [webAccessEntriesByTagID setObject:v44 forKey:v44->_tagID];
          v38 = v80;
          v35 = v81;
          v37 = v83;
        }

        else
        {
        }
      }

      else
      {
        objc_opt_class();
        v53 = [(FCKeyValueStore *)v35 objectForKey:v40];
        if (v53)
        {
          if (objc_opt_isKindOfClass())
          {
            v54 = v53;
          }

          else
          {
            v54 = 0;
          }
        }

        else
        {
          v54 = 0;
        }

        v44 = v54;

        if (!v44 || ![v40 isEqualToString:@"SubscriptionsDiscoveredList"])
        {
          goto LABEL_38;
        }

        v55 = MEMORY[0x1E695DFD8];
        webAccessEntriesByTagID = [(FCWebAccessEntry *)v44 copy];
        v56 = [v55 setWithArray:webAccessEntriesByTagID];
        v57 = v13->_purchasesDiscoveredTagIDs;
        v13->_purchasesDiscoveredTagIDs = v56;
      }

LABEL_38:
LABEL_39:

      ++v39;
    }

    while (v37 != v39);
    v59 = [obj countByEnumeratingWithState:&v86 objects:v92 count:16];
    v37 = v59;
  }

  while (v59);
LABEL_43:

  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)&v13->_purchaseLookupEntriesManager->super.isa lookupEntriesByTagID];
  v61 = [lookupEntriesByTagID copy];
  objc_setProperty_atomic_copy(v13, v62, v61, 64);

  serviceCopy = v78;
  if (NFInternalBuild())
  {
    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    v64 = [standardUserDefaults2 BOOLForKey:@"simulate_subscription_detection_enabled"];

    if (v64)
    {
      v65 = arc4random_uniform(5u);
      array = [MEMORY[0x1E695DF70] array];
      if (v65 <= 0x7FFFFFFE)
      {
        v67 = 0;
        do
        {
          v68 = [&unk_1F2E6F720 objectAtIndexedSubscript:v67];
          [array addObject:v68];

          ++v67;
        }

        while (v65 + 1 != v67);
      }

      v69 = MEMORY[0x1E695DFD8];
      v70 = [array copy];
      v71 = [v69 setWithArray:v70];
      v72 = v13->_purchasesDiscoveredTagIDs;
      v13->_purchasesDiscoveredTagIDs = v71;
    }
  }

  contextCopy = v79;
LABEL_50:

  return v13;
}

id __84__FCPurchaseController_initWithCloudContext_entitlementService_keyValueStoreOption___block_invoke()
{
  v0 = [MEMORY[0x1E695AC80] ephemeralSessionConfiguration];
  [v0 setNetworkServiceType:0];
  v1 = [MEMORY[0x1E696AE30] processInfo];
  [v0 setHTTPMaximumConnectionsPerHost:{2 * objc_msgSend(v1, "processorCount")}];

  [v0 setTimeoutIntervalForRequest:15.0];
  v2 = [MEMORY[0x1E695AC78] sessionWithConfiguration:v0];

  return v2;
}

- (void)dealloc
{
  if (!NSClassFromString(&cfstr_Xctest.isa))
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __31__FCPurchaseController_dealloc__block_invoke_2;
    v4[3] = &unk_1E7C36EA0;
    v4[4] = self;
    FCPerformBlockOnMainThread(v4);
  }

  v3.receiver = self;
  v3.super_class = FCPurchaseController;
  [(FCPurchaseController *)&v3 dealloc];
}

void __31__FCPurchaseController_dealloc__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = v2;
  v4 = [v3 userInfo];
  [v4 removeObserver:*(a1 + 32)];
}

- (void)setPurchasesDiscoveredTagIDs:(uint64_t)ds
{
  if (ds)
  {
    objc_storeStrong((ds + 8), a2);
  }
}

- (void)notifyPurchaseAddedWithTagIDs:(uint64_t)ds
{
  v3 = a2;
  v4 = v3;
  if (ds && [v3 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__FCPurchaseController_notifyPurchaseAddedWithTagIDs___block_invoke_2;
    v5[3] = &unk_1E7C36C58;
    v6 = v4;
    dsCopy = ds;
    FCPerformBlockOnMainThread(v5);
  }
}

void __54__FCPurchaseController_notifyPurchaseAddedWithTagIDs___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5 = FCPurchaseAddedTagIDsKey;
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:FCPurchaseAddedNotificationName object:0 userInfo:v3];

  [(FCPurchaseController *)*(a1 + 40) notifyPurchaseListChanged];
}

- (void)notifyPurchaseListChanged
{
  if (self)
  {
    v1[0] = MEMORY[0x1E69E9820];
    v1[1] = 3221225472;
    v1[2] = __49__FCPurchaseController_notifyPurchaseListChanged__block_invoke;
    v1[3] = &unk_1E7C36EA0;
    v1[4] = self;
    FCPerformBlockOnMainThread(v1);
  }
}

- (void)notifyPurchaseRemovedWithTagIDs:(uint64_t)ds
{
  v3 = a2;
  v4 = v3;
  if (ds && [v3 count])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__FCPurchaseController_notifyPurchaseRemovedWithTagIDs___block_invoke_2;
    v5[3] = &unk_1E7C36C58;
    v6 = v4;
    dsCopy = ds;
    FCPerformBlockOnMainThread(v5);
  }
}

void __56__FCPurchaseController_notifyPurchaseRemovedWithTagIDs___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v5 = FCPurchaseRemovedTagIDsKey;
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:FCPurchaseRemovedNotificationName object:0 userInfo:v3];

  [(FCPurchaseController *)*(a1 + 40) notifyPurchaseListChanged];
}

void __49__FCPurchaseController_notifyPurchaseListChanged__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = [(FCPurchaseController *)*(a1 + 32) _allPurchasedTagIDs];
  v4 = FCPurchasedTagIDsKey;
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:FCPurchaseListChangedNotificationName object:0 userInfo:v2];
}

void __57__FCPurchaseController_notifyWebAccessOptedInListChanged__block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:FCWebAccessOptedInListChangedNotificationName object:0];
}

- (void)notifyPurchasesDiscoveredWithTagIDs:(uint64_t)ds
{
  v3 = a2;
  v4 = v3;
  if (ds)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __60__FCPurchaseController_notifyPurchasesDiscoveredWithTagIDs___block_invoke;
    v5[3] = &unk_1E7C36EA0;
    v6 = v3;
    FCPerformBlockOnMainThread(v5);
  }
}

void __60__FCPurchaseController_notifyPurchasesDiscoveredWithTagIDs___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v4 = FCPurchasedTagIDsKey;
  v5[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:FCPurchasesDiscoveredNotificationName object:0 userInfo:v2];
}

- (void)addToWebAccessOptedInListWithTagID:(id)d
{
  if (self)
  {
    cloudContext = self->_cloudContext;
    dCopy = d;
    tagSettings = [(FCCloudContext *)cloudContext tagSettings];
    [tagSettings setWebAccessOptInForTagID:dCopy webAccessOptIn:1];

    FCPerformBlockOnMainThread(&__block_literal_global_177);
  }

  else
  {
    dCopy2 = d;
    tagSettings2 = [0 tagSettings];
    [tagSettings2 setWebAccessOptInForTagID:dCopy2 webAccessOptIn:1];
  }
}

- (void)shouldShowSignedInWithDifferentiTunesAccountAlertWithiTunesAccountName:(id)name iTunesAccountDSID:(id)d isUserSignedIntoiTunes:(BOOL)tunes isBundleSubscriber:(BOOL)subscriber completion:(id)completion
{
  subscriberCopy = subscriber;
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  lastSignedInItunesAccountName = [(FCPurchaseController *)self lastSignedInItunesAccountName];
  v22 = nameCopy;
  v16 = dCopy;
  lastSignedInItunesAccountDSID = [(FCPurchaseController *)&self->super.isa lastSignedInItunesAccountDSID];
  v18 = lastSignedInItunesAccountDSID;
  if (lastSignedInItunesAccountDSID && tunes)
  {
    lastSignedInItunesAccountDSID2 = [(FCPurchaseController *)&self->super.isa lastSignedInItunesAccountDSID];
    v20 = [lastSignedInItunesAccountDSID2 isEqualToString:v16];

    if ((v20 & 1) == 0 && (([(FCPurchaseController *)self atleastOneValidAppStorePurchase]& 1) != 0 || subscriberCopy))
    {
      if (self)
      {
        [(FCKeyValueStore *)self->_localStore setObject:v16 forKey:@"LastSignedInITunesAccountDSID"];
        localStore = self->_localStore;
      }

      else
      {
        [0 setObject:v16 forKey:@"LastSignedInITunesAccountDSID"];
        localStore = 0;
      }

      [(FCKeyValueStore *)localStore setObject:v22 forKey:@"LastSignedInITunesAccountName"];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, lastSignedInItunesAccountName, v22);
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0, 0);
  }

LABEL_13:
}

- (id)lastSignedInItunesAccountDSID
{
  if (self)
  {
    self = [self[6] objectForKey:@"LastSignedInITunesAccountDSID"];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)atleastOneValidAppStorePurchase
{
  if (self)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v1 = *(self + 56);
    lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v1 lookupEntriesByTagID];
    v3 = [lookupEntriesByTagID copy];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__FCPurchaseController_atleastOneValidAppStorePurchase__block_invoke;
    v6[3] = &unk_1E7C38F78;
    v6[4] = &v7;
    [v3 enumerateKeysAndObjectsUsingBlock:v6];

    v4 = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (void)shouldShowiTunesSignedOutAlertWithiTunesAccountName:(id)name iTunesAccountDSID:(id)d isUserSignedIntoiTunes:(BOOL)tunes isBundleSubscriber:(BOOL)subscriber completion:(id)completion
{
  subscriberCopy = subscriber;
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  lastSignedInItunesAccountName = [(FCPurchaseController *)self lastSignedInItunesAccountName];
  v18 = nameCopy;
  v16 = dCopy;
  if (!lastSignedInItunesAccountName || tunes)
  {
    if (self)
    {
      [(FCKeyValueStore *)self->_localStore setObject:v16 forKey:@"LastSignedInITunesAccountDSID"];
      localStore = self->_localStore;
    }

    else
    {
      [0 setObject:v16 forKey:@"LastSignedInITunesAccountDSID"];
      localStore = 0;
    }

    [(FCKeyValueStore *)localStore setObject:v18 forKey:@"LastSignedInITunesAccountName"];
  }

  else if (([(FCPurchaseController *)self atleastOneValidAppStorePurchase]& 1) != 0 || subscriberCopy)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, lastSignedInItunesAccountName);
    }

    goto LABEL_12;
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 0, 0);
  }

LABEL_12:
}

- (void)clearAllAppStorePurchases
{
  v3 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v5 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v5 lookupEntriesByTagID];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __49__FCPurchaseController_clearAllAppStorePurchases__block_invoke;
  v18 = &unk_1E7C38F50;
  v7 = v3;

  v19 = v7;
  selfCopy = self;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:&v15];

  [(FCPurchaseController *)self notifyPurchaseRemovedWithTagIDs:v7];
  v8 = [(FCPurchaseController *)self purchasesDiscoveredTagIDs:v15];
  v9 = [v8 fc_setByMinusingSet:v7];
  [(FCPurchaseController *)self setPurchasesDiscoveredTagIDs:v9];

  if (self)
  {
    localStore = self->_localStore;
  }

  else
  {
    localStore = 0;
  }

  v11 = localStore;
  purchasesDiscoveredTagIDs = [(FCPurchaseController *)self purchasesDiscoveredTagIDs];
  allObjects = [purchasesDiscoveredTagIDs allObjects];
  [(FCKeyValueStore *)v11 setObject:allObjects forKey:@"SubscriptionsDiscoveredList"];

  purchasesDiscoveredTagIDs2 = [(FCPurchaseController *)self purchasesDiscoveredTagIDs];
  [(FCPurchaseController *)self notifyPurchasesDiscoveredWithTagIDs:purchasesDiscoveredTagIDs2];
}

void __49__FCPurchaseController_clearAllAppStorePurchases__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([v5 purchaseType] == 1)
  {
    [*(a1 + 32) addObject:v14];
    v6 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 56);
    }

    else
    {
      v7 = 0;
    }

    [(FCPurchaseLookUpEntriesManager *)v7 removeEntry:v5];
    v8 = *(a1 + 40);
    if (v8)
    {
      v8 = v8[7];
    }

    v9 = v8;
    v10 = [(FCPurchaseLookUpEntriesManager *)v9 lookupEntriesByTagID];
    v12 = [v10 copy];
    v13 = *(a1 + 40);
    if (v13)
    {
      objc_setProperty_atomic_copy(v13, v11, v12, 64);
    }
  }
}

- (NSString)lastSignedInItunesAccountName
{
  if (self)
  {
    self = self->_localStore;
  }

  return [(FCPurchaseController *)self objectForKey:@"LastSignedInITunesAccountName"];
}

- (void)addToPurchasedChannelsListWithTagID:(uint64_t)d purchaseID:(void *)iD purchaseType:(void *)type purchaseValidationState:(uint64_t)state isNewsAppPurchase:(char)purchase lastVerificationTime:(void *)time
{
  iDCopy = iD;
  typeCopy = type;
  timeCopy = time;
  if (d)
  {
    v14 = *(d + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __147__FCPurchaseController_addToPurchasedChannelsListWithTagID_purchaseID_purchaseType_purchaseValidationState_isNewsAppPurchase_lastVerificationTime___block_invoke;
    block[3] = &unk_1E7C393A8;
    block[4] = d;
    v16 = iDCopy;
    v17 = typeCopy;
    v18 = timeCopy;
    stateCopy = state;
    v20 = 1;
    purchaseCopy = purchase;
    dispatch_sync(v14, block);
  }
}

void __40__FCPurchaseController_isPaidSubscriber__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 purchaseValidationState] == 1 || objc_msgSend(v6, "purchaseValidationState") == 3)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __48__FCPurchaseController_isPaidSubscriberFromNews__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 isNewsAppPurchase] && objc_msgSend(v6, "purchaseValidationState") == 1 && objc_msgSend(v6, "purchaseType") == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __52__FCPurchaseController_isPaidSubscriberFromAppStore__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 isNewsAppPurchase] & 1) == 0 && objc_msgSend(v6, "purchaseValidationState") == 1 && objc_msgSend(v6, "purchaseType") == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __47__FCPurchaseController_isPaidSubscriberFromWeb__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if (([v6 purchaseValidationState] == 1 || objc_msgSend(v6, "purchaseValidationState") == 3) && objc_msgSend(v6, "purchaseType") == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)hasPurchaseTypeAppStore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v3 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __47__FCPurchaseController_hasPurchaseTypeAppStore__block_invoke;
  v6[3] = &unk_1E7C38F78;
  v6[4] = &v7;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:v6];

  LOBYTE(v3) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v3;
}

void __47__FCPurchaseController_hasPurchaseTypeAppStore__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ([v6 purchaseValidationState] == 1 && objc_msgSend(v6, "purchaseType") == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (BOOL)hasRenewalNoticeShownForTagID:(id)d
{
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__FCPurchaseController_hasRenewalNoticeShownForTagID___block_invoke;
  block[3] = &unk_1E7C37138;
  v12 = &v13;
  block[4] = self;
  v6 = dCopy;
  v11 = v6;
  dispatch_sync(accessQueue, block);
  v7 = v14[5];
  if (v7)
  {
    hasShownRenewalNotice = [v7 hasShownRenewalNotice];
  }

  else
  {
    hasShownRenewalNotice = 0;
  }

  _Block_object_dispose(&v13, 8);
  return hasShownRenewalNotice;
}

void __54__FCPurchaseController_hasRenewalNoticeShownForTagID___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[7];
  }

  v3 = v2;
  v7 = [(FCPurchaseLookUpEntriesManager *)v3 lookupEntriesByTagID];
  v4 = [v7 objectForKey:a1[5]];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)forceExpireAllSubscriptionsIfNeeded
{
  if (NFInternalBuild())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [standardUserDefaults BOOLForKey:@"force_expire_subscriptions"];

    if (v4)
    {
      if (self)
      {
        purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
      }

      else
      {
        purchaseLookupEntriesManager = 0;
      }

      lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)&purchaseLookupEntriesManager->super.isa lookupEntriesByTagID];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __59__FCPurchaseController_forceExpireAllSubscriptionsIfNeeded__block_invoke_2;
      v12[3] = &unk_1E7C38FA0;
      v12[4] = self;
      [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:v12];

      if (self)
      {
        v7 = self->_purchaseLookupEntriesManager;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;
      lookupEntriesByTagID2 = [(FCPurchaseLookUpEntriesManager *)v8 lookupEntriesByTagID];
      v11 = [lookupEntriesByTagID2 copy];
      if (self)
      {
        objc_setProperty_atomic_copy(self, v10, v11, 64);
      }
    }
  }
}

void __59__FCPurchaseController_forceExpireAllSubscriptionsIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = [a3 mutableCopy];
  [v7 setPurchaseValidationState:2];
  [v7 setHasShownRenewalNotice:0];
  v4 = [MEMORY[0x1E695DF00] date];
  [v7 setDateOfExpiration:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 56);
  }

  else
  {
    v6 = 0;
  }

  [(FCPurchaseLookUpEntriesManager *)v6 updateEntry:v7];
}

- (void)silentExpireInAppSubscriptions
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__10;
  v16 = __Block_byref_object_dispose__10;
  v17 = [MEMORY[0x1E695DFA8] set];
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v4 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v4 lookupEntriesByTagID];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__FCPurchaseController_silentExpireInAppSubscriptions__block_invoke;
  v11[3] = &unk_1E7C38FC8;
  v11[4] = self;
  v11[5] = &v12;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:v11];

  if (self)
  {
    v6 = self->_purchaseLookupEntriesManager;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  lookupEntriesByTagID2 = [(FCPurchaseLookUpEntriesManager *)v7 lookupEntriesByTagID];
  v10 = [lookupEntriesByTagID2 copy];
  if (self)
  {
    objc_setProperty_atomic_copy(self, v9, v10, 64);
  }

  [(FCPurchaseController *)self notifyPurchaseRemovedWithTagIDs:?];
  _Block_object_dispose(&v12, 8);
}

void __54__FCPurchaseController_silentExpireInAppSubscriptions__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v5 purchaseType] == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v10];
    v6 = [v5 mutableCopy];
    [v6 setPurchaseValidationState:2];
    [v6 setHasShownRenewalNotice:1];
    v7 = [MEMORY[0x1E695DF00] date];
    [v6 setDateOfExpiration:v7];

    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = *(v8 + 56);
    }

    else
    {
      v9 = 0;
    }

    [(FCPurchaseLookUpEntriesManager *)v9 updateEntry:v6];
  }
}

- (id)expiredPurchaseChannelIDs
{
  array = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v5 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v5 lookupEntriesByTagID];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__FCPurchaseController_expiredPurchaseChannelIDs__block_invoke;
  v10[3] = &unk_1E7C38FA0;

  v11 = array;
  v7 = array;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [v7 copy];

  return v8;
}

void __49__FCPurchaseController_expiredPurchaseChannelIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 purchaseValidationState] == 2 && (objc_msgSend(v6, "hasShownRenewalNotice") & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = [v6 tagID];
    [v4 addObject:v5];
  }
}

- (id)subscriptionNotSupportedChannelIDs
{
  array = [MEMORY[0x1E695DF70] array];
  if (self)
  {
    purchaseLookupEntriesManager = self->_purchaseLookupEntriesManager;
  }

  else
  {
    purchaseLookupEntriesManager = 0;
  }

  v5 = purchaseLookupEntriesManager;
  lookupEntriesByTagID = [(FCPurchaseLookUpEntriesManager *)v5 lookupEntriesByTagID];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__FCPurchaseController_subscriptionNotSupportedChannelIDs__block_invoke;
  v13 = &unk_1E7C38F50;
  selfCopy = self;

  v15 = array;
  v7 = array;
  [lookupEntriesByTagID enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __58__FCPurchaseController_subscriptionNotSupportedChannelIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 purchaseValidationState] == 4)
  {
    v5 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = [v4 tagID];
      v11 = 138412546;
      v12 = v7;
      v13 = 2114;
      v14 = v8;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%@ found a purchaseLookupEntry with not supported validation state for tagID %{public}@", &v11, 0x16u);
    }

    v9 = *(a1 + 40);
    v10 = [v4 tagID];
    [v9 addObject:v10];
  }
}

- (void)performEntitlementCheckWithIgnoreCache:(BOOL)cache callbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if (([bundleIdentifier isEqualToString:@"com.apple.stocks"] & 1) != 0 || (objc_msgSend(bundleIdentifier, "isEqualToString:", @"com.apple.news") & 1) != 0 || NSClassFromString(&cfstr_Xctest.isa))
  {
    objc_initWeak(&location, self);
    if (self)
    {
      cloudContext = self->_cloudContext;
    }

    else
    {
      cloudContext = 0;
    }

    v13 = cloudContext;
    configurationManager = [(FCCloudContext *)v13 configurationManager];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_189;
    v15[3] = &unk_1E7C39068;
    objc_copyWeak(&v18, &location);
    v15[4] = self;
    cacheCopy = cache;
    v16 = queueCopy;
    v17 = completionCopy;
    [configurationManager fetchConfigurationIfNeededWithCompletion:v15];

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke;
    v21[3] = &unk_1E7C38FF0;
    v21[4] = self;
    v22 = bundleIdentifier;
    v23 = completionCopy;
    __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke(v21);
  }
}

uint64_t __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v2;
    v4 = objc_opt_class();
    v5 = a1[5];
    v7 = 138412546;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "%@ ignoring alacarte entitlement check for bundleID=%{public}@", &v7, 0x16u);
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

void __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_189(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_2;
  v7[3] = &unk_1E7C39040;
  v11 = *(a1 + 64);
  v5 = *(a1 + 40);
  v7[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 48);
  v6 = v3;
  FCPerformIfNonNil(WeakRetained, v7);
}

void __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 88);
  }

  else
  {
    v5 = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_3;
  v7[3] = &unk_1E7C39018;
  v7[4] = a2;
  v11 = *(a1 + 64);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v6 = a2;
  [v5 enqueueBlock:v7];
}

void __88__FCPurchaseController_performEntitlementCheckWithIgnoreCache_callbackQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 64);
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v15 = [v4 paidBundleConfig];
  v7 = [v15 restorableBundlePurchaseIDs];
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v7;
  v11 = v8;
  v12 = v9;
  v13 = v6;
  if (v5)
  {
    objc_initWeak(&location, v5);
    v14 = v5[12];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke;
    v16[3] = &unk_1E7C392E0;
    v16[4] = v5;
    v17 = v11;
    v19 = v12;
    v20 = v13;
    objc_copyWeak(&v21, &location);
    v18 = v10;
    [v14 performEntitlementWithIgnoreCache:v3 completion:v16];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke(id *a1, void *a2, uint64_t a3, void *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 138412802;
    v42 = objc_opt_class();
    v43 = 2114;
    v44 = v6;
    v45 = 2114;
    v46 = v7;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%@ Entitlements response received with entitlements:%{public}@ error:%{public}@", buf, 0x20u);
  }

  v10 = NewsCoreUserDefaults();
  if ([v10 BOOLForKey:@"running_ui_automation"])
  {
    v11 = NFInternalBuild();

    if (v11)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_193;
      v37[3] = &unk_1E7C390B8;
      v38 = a1[5];
      v39 = a1[7];
      v40 = a1[8];
      __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_193(v37);

      v12 = v38;
      goto LABEL_19;
    }
  }

  else
  {
  }

  v12 = [v6 fc_arrayByTransformingWithBlock:&__block_literal_global_196];
  v13 = [a1[4] entitlementsOverrideProvider];

  if (v13)
  {
    v14 = [a1[4] entitlementsOverrideProvider];
    v15 = [v14 entitlementsOverrideWithDefaultEntitlements:v12];

    if (v15)
    {
      v16 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v17 = v16;
        v18 = [v15 entitlements];
        *buf = 138543618;
        v42 = v18;
        v43 = 2114;
        v44 = v7;
        _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "Overriding entitlements response with entitlements:%{public}@ error:%{public}@", buf, 0x16u);
      }

      v19 = [v15 entitlements];

      v20 = [v15 error];

      v12 = v19;
      v7 = v20;
    }
  }

  if (v12 && (!v7 || [v12 count]))
  {
    WeakRetained = objc_loadWeakRetained(a1 + 9);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_199;
    v27[3] = &unk_1E7C392B8;
    v22 = &v28;
    v28 = a1[6];
    v23 = &v29;
    v29 = v12;
    v24 = a1[5];
    v25 = a1[4];
    v30 = v24;
    v31 = v25;
    v32 = a1[7];
    v33 = a1[8];
    FCPerformIfNonNil(WeakRetained, v27);
  }

  else
  {
    v26 = a1[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_198;
    block[3] = &unk_1E7C39090;
    v22 = &v35;
    v35 = a1[7];
    v23 = &v36;
    v36 = a1[8];
    dispatch_async(v26, block);
  }

LABEL_19:
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_193(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2;
  v3[3] = &unk_1E7C39090;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  dispatch_async(v2, v3);
}

uint64_t __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

FCSubscriptionEntitlement *__120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[FCSubscriptionEntitlement alloc] initWithASDEntitlement:v2];

  return v3;
}

uint64_t __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_198(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, 0);
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_199(uint64_t a1, void *a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = dispatch_group_create();
  dispatch_group_enter(v4);
  v5 = [v3 allPurchasedTagIDs];
  v6 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "allPurchasedTagIDs:%@", &buf, 0xCu);
    v6 = FCPurchaseLog;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "restorableBundleIAPs:%@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v62 = 0x3032000000;
  v63 = __Block_byref_object_copy__10;
  v64 = __Block_byref_object_dispose__10;
  v65 = [MEMORY[0x1E695DF90] dictionary];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_200;
  v51[3] = &unk_1E7C39100;
  v8 = *(a1 + 40);
  v52 = *(a1 + 32);
  p_buf = &buf;
  v9 = [v8 fc_arrayByTransformingWithBlock:v51];
  v10 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v56) = 138412290;
    *(&v56 + 4) = v9;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "entitled PurchaseIDs:%@", &v56, 0xCu);
  }

  *&v56 = 0;
  *(&v56 + 1) = &v56;
  v57 = 0x3032000000;
  v58 = __Block_byref_object_copy__10;
  v59 = __Block_byref_object_dispose__10;
  v60 = [MEMORY[0x1E695DFA8] set];
  v49[0] = 0;
  v49[1] = v49;
  v49[2] = 0x3032000000;
  v49[3] = __Block_byref_object_copy__10;
  v49[4] = __Block_byref_object_dispose__10;
  v50 = [MEMORY[0x1E695DFA8] set];
  v47[0] = 0;
  v47[1] = v47;
  v47[2] = 0x3032000000;
  v47[3] = __Block_byref_object_copy__10;
  v47[4] = __Block_byref_object_dispose__10;
  v48 = [MEMORY[0x1E695DFA8] set];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = __Block_byref_object_copy__10;
  v45[4] = __Block_byref_object_dispose__10;
  v46 = [MEMORY[0x1E695DF90] dictionary];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy__10;
  v43[4] = __Block_byref_object_dispose__10;
  v44 = [MEMORY[0x1E695DF70] array];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_202;
  v32[3] = &unk_1E7C39240;
  v11 = *(a1 + 48);
  v32[4] = *(a1 + 56);
  v37 = &v56;
  v38 = v45;
  v12 = v9;
  v33 = v12;
  v39 = v47;
  v13 = v5;
  v34 = v13;
  v35 = v3;
  v40 = &buf;
  v41 = v43;
  v42 = v49;
  v14 = v4;
  v36 = v14;
  v15 = v32;
  if (v3)
  {
    v16 = v11;
    v17 = v12;
    v18 = [[FCPurchaseLookupFetchOperation alloc] initWithPurchaseIDs:v17 contentContext:v3[4]];

    [(FCOperation *)v18 setQualityOfService:25];
    [(FCOperation *)v18 setRelativePriority:1];
    [(FCFetchOperation *)v18 setFetchCompletionQueue:v16];

    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __79__FCPurchaseController_fetchChannelIDsForPurchaseIDs_callbackQueue_completion___block_invoke;
    v54[3] = &unk_1E7C37A38;
    v55 = v15;
    [(FCFetchOperation *)v18 setFetchCompletionBlock:v54];
    v19 = [MEMORY[0x1E696ADC8] fc_sharedConcurrentQueue];
    [v19 addOperation:v18];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_217;
  v21[3] = &unk_1E7C39290;
  v28 = &v56;
  v29 = v49;
  v22 = v13;
  v23 = v3;
  v30 = v47;
  v24 = *(a1 + 48);
  v26 = *(a1 + 64);
  v25 = *(a1 + 40);
  v31 = v43;
  v27 = *(a1 + 72);
  v20 = v13;
  dispatch_group_notify(v14, MEMORY[0x1E69E96A0], v21);

  _Block_object_dispose(v43, 8);
  _Block_object_dispose(v45, 8);

  _Block_object_dispose(v47, 8);
  _Block_object_dispose(v49, 8);

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&buf, 8);
}

id __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_200(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 inAppAdamID];
  v5 = [v4 stringValue];

  if (v5 && ([*(a1 + 32) containsObject:v5] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKey:v5];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_202(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
    Property = objc_getProperty(v4, v6, 64, 1);
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __62__FCPurchaseController_allAppStorePurchasedTagIDsByPurchaseID__block_invoke;
    v54 = &unk_1E7C38FA0;
    v55 = v5;
    v8 = v5;
    [Property enumerateKeysAndObjectsUsingBlock:buf];
    v4 = [v8 copy];
  }

  v9 = [v3 error];

  if (!v9)
  {
    v17 = [v3 channelIDsByPurchaseID];
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_203;
    v51[3] = &unk_1E7C39150;
    v52 = *(a1 + 72);
    [v17 enumerateKeysAndObjectsUsingBlock:v51];

    v18 = *(a1 + 40);
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_4;
    v47[3] = &unk_1E7C391A0;
    v19 = v4;
    v20 = *(a1 + 72);
    v48 = v19;
    v49 = v20;
    v50 = *(a1 + 88);
    [v18 enumerateObjectsUsingBlock:v47];
    v16 = v48;
LABEL_10:

    goto LABEL_11;
  }

  v10 = [v3 error];
  if (v10)
  {
    v11 = v10;
    v12 = [v3 error];
    v13 = [v12 fc_isOfflineError];

    if (v13)
    {
      v14 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
      {
        v36 = v14;
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        v39 = *(a1 + 32);
        v40 = [v3 error];
        *buf = 138543874;
        *&buf[4] = v38;
        *&buf[12] = 2048;
        *&buf[14] = v39;
        *&buf[22] = 2114;
        v54 = v40;
        _os_log_error_impl(&dword_1B63EF000, v36, OS_LOG_TYPE_ERROR, "<%{public}@ %p> fetchChannelIDsForPurchaseIDs failed with error: %{public}@", buf, 0x20u);
      }

      v15 = *(*(*(a1 + 72) + 8) + 40);
      v16 = [*(a1 + 48) allObjects];
      [v15 addObjectsFromArray:v16];
      goto LABEL_10;
    }
  }

LABEL_11:
  v21 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(*(*(a1 + 88) + 8) + 40);
    *buf = 138412290;
    *&buf[4] = v22;
    _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "subscriptionNotSupportedTagIDs:%@", buf, 0xCu);
    v21 = FCPurchaseLog;
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 138412290;
    *&buf[4] = v23;
    _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "entitledTagIDs:%@", buf, 0xCu);
  }

  v24 = MEMORY[0x1E695DF70];
  v25 = [*(*(*(a1 + 72) + 8) + 40) allObjects];
  v26 = [v24 arrayWithArray:v25];

  v27 = [*(*(*(a1 + 88) + 8) + 40) allObjects];
  [v26 addObjectsFromArray:v27];

  v28 = *(a1 + 56);
  if (v28)
  {
    v28 = v28[4];
  }

  v29 = v28;
  v30 = [v29 tagController];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_207;
  v41[3] = &unk_1E7C39218;
  v31 = *(a1 + 72);
  v32 = *(a1 + 64);
  v41[4] = *(a1 + 56);
  v33 = *(a1 + 96);
  v43 = v31;
  v44 = v33;
  v34 = *(a1 + 112);
  v45 = *(a1 + 88);
  v46 = v34;
  v35 = v32;

  v42 = v35;
  [v30 fetchTagsForTagIDs:v26 maximumCachedAge:9 qualityOfService:v41 completionHandler:0.0];
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_203(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3_204;
  v7[3] = &unk_1E7C39128;
  v9 = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 enumerateObjectsUsingBlock:v7];
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3_204(void *a1, void *a2)
{
  v3 = *(*(a1[5] + 8) + 40);
  v4 = a2;
  [v3 addObject:v4];
  [*(*(a1[6] + 8) + 40) setObject:a1[4] forKey:v4];
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectForKey:a2];
  v4 = v3;
  if (v3)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_5;
    v5[3] = &unk_1E7C39178;
    v6 = *(a1 + 40);
    [v3 enumerateObjectsUsingBlock:v5];
  }
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(*(*(a1 + 32) + 8) + 40) containsObject:?] & 1) == 0)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
  }
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_207(uint64_t a1, void *a2)
{
  v3 = a2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_208;
  v9[3] = &unk_1E7C391F0;
  v4 = *(a1 + 32);
  v10 = v3;
  v11 = v4;
  v5 = *(a1 + 72);
  v13 = *(a1 + 56);
  v14 = v5;
  v15 = *(a1 + 88);
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  FCPerformBlockOnMainThread(v9);
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_208(uint64_t a1)
{
  v2 = *(a1 + 32);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3_209;
  v11[3] = &unk_1E7C391C8;
  v3 = *(a1 + 56);
  v11[4] = *(a1 + 40);
  v4 = *(a1 + 72);
  v12 = v3;
  v13 = v4;
  v14 = *(a1 + 88);
  [v2 enumerateKeysAndObjectsUsingBlock:v11];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_213;
  v9[3] = &unk_1E7C38B40;
  v10 = *(a1 + 32);
  v6 = [v5 fc_setOfObjectsPassingTest:v9];
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  dispatch_group_leave(*(a1 + 48));
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_3_209(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 identifier];
  if (![*(*(*(a1 + 40) + 8) + 40) containsObject:v5])
  {
    if (![*(*(*(a1 + 72) + 8) + 40) containsObject:v5])
    {
      goto LABEL_20;
    }

    v6 = [v4 replacementID];
    v7 = [v4 identifier];
    if (v6 && [*(*(*(a1 + 40) + 8) + 40) containsObject:v6])
    {
      [*(*(*(a1 + 80) + 8) + 40) addObject:v6];
      [*(*(*(a1 + 72) + 8) + 40) removeObject:v7];
      v8 = *(a1 + 32);
      v19 = v7;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
      v10 = v9;
      if (v8)
      {
        v11 = v8[10];
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = __72__FCPurchaseController_silentRemoveFromPurchasedChannelsListWithTagIDs___block_invoke;
        v21 = &unk_1E7C36C58;
        v22 = v8;
        v23 = v9;
        dispatch_sync(v11, block);
      }

      goto LABEL_15;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (+[FCTagController isTagAllowedInContentStoreFront:](FCTagController, "isTagAllowedInContentStoreFront:", v4) && ([v4 isDeprecated] & 1) == 0)
  {
    v6 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:v5];
    v12 = [*(a1 + 32) purchaseLookUpEntryForTagID:v5];
    v7 = v12;
    if (!v12)
    {
      v16 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        *block = 138412546;
        *&block[4] = v5;
        *&block[12] = 2112;
        *&block[14] = v6;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Adding tagID:%@ and purchaseID:%@ to purchased channels list", block, 0x16u);
      }

      v17 = [*(*(*(a1 + 56) + 8) + 40) objectForKey:v6];
      -[FCPurchaseController addToPurchasedChannelsListWithTagID:purchaseID:purchaseType:purchaseValidationState:isNewsAppPurchase:lastVerificationTime:](*(a1 + 32), v5, v6, 1, [v17 isNewsAppPurchase], 0);
      v18 = -[FCRestorePaidSubscriptionItem initWithChannelID:isNewsAppPurchase:]([FCRestorePaidSubscriptionItem alloc], "initWithChannelID:isNewsAppPurchase:", v5, [v17 isNewsAppPurchase]);
      [*(*(*(a1 + 64) + 8) + 40) addObject:v18];

      goto LABEL_19;
    }

    if ([v12 purchaseValidationState] != 1)
    {
      v13 = *(a1 + 32);
      v14 = v7;
      v10 = v14;
      if (v13)
      {
        v15 = v13[10];
        *block = MEMORY[0x1E69E9820];
        *&block[8] = 3221225472;
        *&block[16] = __64__FCPurchaseController_updatePurchaseEntryToValid_purchaseType___block_invoke;
        v21 = &unk_1E7C393F8;
        v23 = v13;
        v24 = 1;
        v22 = v14;
        dispatch_sync(v15, block);
      }

LABEL_15:

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  [*(*(*(a1 + 40) + 8) + 40) removeObject:v5];
LABEL_20:
}

BOOL __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_213(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_217(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = [*(*(*(a1 + 80) + 8) + 40) allObjects];
  v3 = [*(a1 + 32) allObjects];
  v4 = [v2 fc_arrayByRemovingObjectsInArray:v3];

  v5 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "restoredChannelIDs:%@", &buf, 0xCu);
  }

  v6 = [*(*(*(a1 + 88) + 8) + 40) allObjects];
  v7 = [v4 fc_arrayByRemovingObjectsInArray:v6];

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = v8[4];
    v10 = v7;
    v11 = [v9 tagController];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v52 = __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke;
    v53 = &unk_1E7C39358;
    v54 = v8;
    [v11 fetchTagsForTagIDs:v10 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:&buf];
  }

  v12 = [MEMORY[0x1E695DFA8] set];
  v13 = [*(a1 + 40) purchasesDiscoveredTagIDs];
  v14 = [v13 allObjects];
  [v12 addObjectsFromArray:v14];

  [v12 addObjectsFromArray:v7];
  [(FCPurchaseController *)*(a1 + 40) setPurchasesDiscoveredTagIDs:v12];
  v15 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = v15;
    v18 = [v16 purchasesDiscoveredTagIDs];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "purchasesDiscoveredTagIDs:%@", &buf, 0xCu);
  }

  v19 = *(a1 + 40);
  if (v19)
  {
    v20 = v19[6];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  v22 = [v19 purchasesDiscoveredTagIDs];
  v23 = [v22 allObjects];
  [v21 setObject:v23 forKey:@"SubscriptionsDiscoveredList"];

  v24 = [*(a1 + 40) purchasesDiscoveredTagIDs];
  v25 = [v24 count];

  if (v25)
  {
    v26 = *(a1 + 40);
    v27 = [v26 purchasesDiscoveredTagIDs];
    [(FCPurchaseController *)v26 notifyPurchasesDiscoveredWithTagIDs:v27];
  }

  v28 = [*(*(*(a1 + 96) + 8) + 40) allObjects];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_218;
  v50[3] = &unk_1E7C389E0;
  v50[4] = *(a1 + 40);
  [v28 enumerateObjectsUsingBlock:v50];

  v29 = *(a1 + 40);
  if (v29)
  {
    v30 = [MEMORY[0x1E695DFA8] set];
    v31 = *(v29 + 56);
    v32 = [(FCPurchaseLookUpEntriesManager *)v31 lookupEntriesByTagID];
    v33 = [v32 copy];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v52 = __50__FCPurchaseController_allAppStorePurchasedTagIDs__block_invoke;
    v53 = &unk_1E7C38FA0;
    v34 = v30;

    v54 = v34;
    [v33 enumerateKeysAndObjectsUsingBlock:&buf];
  }

  else
  {
    v34 = 0;
  }

  v35 = [v34 allObjects];
  v36 = [*(*(*(a1 + 80) + 8) + 40) allObjects];
  v37 = [v35 fc_arrayByRemovingObjectsInArray:v36];

  v38 = [*(*(*(a1 + 96) + 8) + 40) allObjects];
  v39 = [v37 fc_arrayByRemovingObjectsInArray:v38];

  v40 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v39;
    _os_log_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEFAULT, "expiredPurchaseIDs:%@", &buf, 0xCu);
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_219;
  v49[3] = &unk_1E7C389E0;
  v49[4] = *(a1 + 40);
  [v39 enumerateObjectsUsingBlock:v49];
  v41 = *(a1 + 48);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_220;
  v44[3] = &unk_1E7C39268;
  v46 = *(a1 + 64);
  v42 = *(a1 + 56);
  v43 = *(a1 + 104);
  v45 = v42;
  v48 = v43;
  v47 = *(a1 + 72);
  dispatch_async(v41, v44);
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_218(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  v6 = [(FCPurchaseLookUpEntriesManager *)v4 lookupEntriesByTagID];
  v7 = [v6 objectForKey:v5];

  v8 = *(a1 + 32);
  v10 = v7;
  if (v8)
  {
    v9 = *(v8 + 80);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__FCPurchaseController_updatePurchaseEntryToSubscriptionNotSupported___block_invoke;
    block[3] = &unk_1E7C36C58;
    v12 = v10;
    v13 = v8;
    dispatch_sync(v9, block);
  }
}

void __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_219(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  v6 = [(FCPurchaseLookUpEntriesManager *)v4 lookupEntriesByTagID];
  v11 = [v6 objectForKey:v5];

  [*(a1 + 32) updatePurchaseEntryToExpired:v11];
  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = *(v7 + 32);
    v9 = v5;
    v10 = [v8 tagSettings];
    [v10 setWebAccessOptInForTagID:v9 webAccessOptIn:0];

    FCPerformBlockOnMainThread(&__block_literal_global_177);
  }
}

uint64_t __120__FCPurchaseController__entitlementCheckWithIgnoreCache_restorableBundleIAPs_callbackQueue_completion_serialCompletion___block_invoke_2_220(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    (*(v2 + 16))(v2, a1[4], *(*(a1[7] + 8) + 40));
  }

  result = a1[6];
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

void __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Couldn't add the subscriptions detected channels to favorites"];
      *buf = 136315906;
      v10 = "[FCPurchaseController addAppStoreDiscoveredChannelsToFavorites:]_block_invoke";
      v11 = 2080;
      v12 = "FCPurchaseController.m";
      v13 = 1024;
      v14 = 1035;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke_225;
    v8[3] = &unk_1E7C39330;
    v8[4] = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v8];
  }
}

void __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke_225(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[4];
  }

  v6 = v5;
  v7 = [v6 subscriptionController];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke_2;
  v9[3] = &unk_1E7C39308;
  v9[4] = *(a1 + 32);

  v10 = v4;
  v8 = v4;
  [v7 subscriptionsWithCompletion:v9];
}

void __65__FCPurchaseController_addAppStoreDiscoveredChannelsToFavorites___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[4];
  }

  v3 = v2;
  v4 = [v3 subscriptionController];
  v5 = [v4 hasSubscriptionToTag:*(a1 + 40)];

  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = v6[4];
    }

    v7 = v6;
    v8 = [v7 subscriptionController];
    v9 = *(a1 + 40);
    v11 = 0;
    [v8 addSubscriptionToTag:v9 error:&v11];
    v10 = v11;
  }
}

void __79__FCPurchaseController_fetchChannelIDsForPurchaseIDs_callbackQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [a2 fetchedObject];
    (*(v2 + 16))(v2, v3);
  }
}

- (NSDictionary)purchaseLookUpEntriesByTagID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  v2 = [(FCPurchaseController *)self copy];

  return v2;
}

- (id)purchaseLookUpEntryForTagID:(id)d
{
  dCopy = d;
  if (self)
  {
    Property = objc_getProperty(self, v4, 64, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = [Property objectForKey:dCopy];

  return v7;
}

void __62__FCPurchaseController_allAppStorePurchasedTagIDsByPurchaseID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([v5 purchaseType] == 1 && objc_msgSend(v5, "purchaseValidationState") == 1)
  {
    v6 = [v5 purchaseID];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DF70] arrayWithObject:v14];
      v8 = *(a1 + 32);
      v9 = [v5 purchaseID];
      v10 = [v8 objectForKey:v9];

      if (v10)
      {
        [v7 addObjectsFromArray:v10];
      }

      v11 = *(a1 + 32);
      v12 = [v7 copy];
      v13 = [v5 purchaseID];
      [v11 setObject:v12 forKey:v13];
    }
  }
}

- (NSSet)allTagIDs
{
  v2 = MEMORY[0x1E695DFD8];
  if (self)
  {
    self = objc_getProperty(self, a2, 64, 1);
  }

  allKeys = [(FCPurchaseController *)self allKeys];
  v4 = [v2 setWithArray:allKeys];

  return v4;
}

- (void)_enumerateValidPurchasesUsingBlock:(void *)block
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (block)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "block != nil"];
      *buf = 136315906;
      v11 = "[FCPurchaseController _enumerateValidPurchasesUsingBlock:]";
      v12 = 2080;
      v13 = "FCPurchaseController.m";
      v14 = 1024;
      v15 = 1150;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    Property = objc_getProperty(block, v4, 64, 1);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__FCPurchaseController__enumerateValidPurchasesUsingBlock___block_invoke;
    v8[3] = &unk_1E7C39380;
    v9 = v5;
    [Property enumerateKeysAndObjectsUsingBlock:v8];
  }
}

- (NSSet)allPurchaseIDs
{
  v3 = [MEMORY[0x1E695DFA8] set];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__FCPurchaseController_allPurchaseIDs__block_invoke;
  v6[3] = &unk_1E7C38FA0;
  v4 = v3;
  v7 = v4;
  [(FCPurchaseController *)self _enumerateValidPurchasesUsingBlock:v6];

  return v4;
}

void __38__FCPurchaseController_allPurchaseIDs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if ([v6 purchaseType] == 1 && objc_msgSend(v6, "purchaseValidationState") == 1)
  {
    v4 = *(a1 + 32);
    v5 = [v6 purchaseID];
    [v4 addObject:v5];
  }
}

void __59__FCPurchaseController__enumerateValidPurchasesUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 purchaseValidationState] == 1 || objc_msgSend(v5, "purchaseValidationState") == 3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __50__FCPurchaseController_allAppStorePurchasedTagIDs__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 purchaseValidationState] == 1 && objc_msgSend(v5, "purchaseType") == 1)
  {
    [*(a1 + 32) addObject:v6];
  }
}

- (BOOL)isTagIDPurchased:(id)purchased
{
  v3 = [(FCPurchaseController *)self purchaseLookUpEntryForTagID:purchased];
  v4 = [v3 purchaseValidationState] == 1 || objc_msgSend(v3, "purchaseValidationState") == 3;

  return v4;
}

- (BOOL)isTagPurchased:(id)purchased
{
  purchasedCopy = purchased;
  if ([purchasedCopy tagType] == 3)
  {
    asSection = [purchasedCopy asSection];

    parentID = [asSection parentID];
    purchasedCopy = asSection;
  }

  else
  {
    parentID = [purchasedCopy identifier];
  }

  v7 = [(FCPurchaseController *)self isTagIDPurchased:parentID];
  return v7;
}

void __55__FCPurchaseController_atleastOneValidAppStorePurchase__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = v7;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  else if ([v7 purchaseType] == 1 && objc_msgSend(v8, "purchaseValidationState") == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

void __147__FCPurchaseController_addToPurchasedChannelsListWithTagID_purchaseID_purchaseType_purchaseValidationState_isNewsAppPurchase_lastVerificationTime___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 56);
  }

  else
  {
    v3 = 0;
  }

  [(FCPurchaseLookUpEntriesManager *)v3 addEntryWithTagID:*(a1 + 48) purchaseID:*(a1 + 56) lastVerificationTime:0 lastVerificationFailureTime:*(a1 + 64) purchaseType:*(a1 + 72) purchaseValidationState:*(a1 + 80) isNewsAppPurchase:0 dateOfExpiration:0 hasShownRenewalNotice:?];
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[7];
  }

  v5 = v4;
  v6 = [(FCPurchaseLookUpEntriesManager *)v5 lookupEntriesByTagID];
  v8 = [v6 copy];
  v9 = *(a1 + 32);
  if (v9)
  {
    objc_setProperty_atomic_copy(v9, v7, v8, 64);
  }

  v10 = *(a1 + 32);
  v11 = [MEMORY[0x1E695DFD8] setWithObjects:{*(a1 + 40), 0}];
  [(FCPurchaseController *)v10 notifyPurchaseAddedWithTagIDs:v11];
}

- (void)renewalNoticeShownForPurchasedChannelsListWithTagIDs:(id)ds
{
  dsCopy = ds;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __77__FCPurchaseController_renewalNoticeShownForPurchasedChannelsListWithTagIDs___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v8 = dsCopy;
  selfCopy = self;
  v6 = dsCopy;
  dispatch_sync(accessQueue, v7);
}

uint64_t __77__FCPurchaseController_renewalNoticeShownForPurchasedChannelsListWithTagIDs___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__FCPurchaseController_renewalNoticeShownForPurchasedChannelsListWithTagIDs___block_invoke_2;
  v3[3] = &unk_1E7C393D0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __77__FCPurchaseController_renewalNoticeShownForPurchasedChannelsListWithTagIDs___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  v6 = [(FCPurchaseLookUpEntriesManager *)v4 lookupEntriesByTagID];
  v7 = [v6 objectForKey:v5];

  v11 = [v7 mutableCopy];
  v8 = v11;
  if (v11)
  {
    [v11 setHasShownRenewalNotice:1];
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = *(v9 + 56);
    }

    else
    {
      v10 = 0;
    }

    [(FCPurchaseLookUpEntriesManager *)v10 updateEntry:v11];
    v8 = v11;
  }
}

- (void)updatePurchaseEntryToExpiredForTagIDs:(id)ds
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__FCPurchaseController_updatePurchaseEntryToExpiredForTagIDs___block_invoke;
  v3[3] = &unk_1E7C393D0;
  v3[4] = self;
  [ds enumerateObjectsUsingBlock:v3];
}

void __62__FCPurchaseController_updatePurchaseEntryToExpiredForTagIDs___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) purchaseLookUpEntryForTagID:a2];
  [*(a1 + 32) updatePurchaseEntryToExpired:v3];
}

- (void)updatePurchaseEntryToExpired:(id)expired
{
  expiredCopy = expired;
  v5 = expiredCopy;
  if (self)
  {
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__FCPurchaseController_updatePurchaseEntryToExpired_hasShownRenewalNotice___block_invoke;
    block[3] = &unk_1E7C37678;
    v10 = 0;
    v8 = expiredCopy;
    selfCopy = self;
    dispatch_sync(accessQueue, block);
  }
}

void __75__FCPurchaseController_updatePurchaseEntryToExpired_hasShownRenewalNotice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v16 = [v2 mutableCopy];
    [v16 setPurchaseValidationState:2];
    v3 = [MEMORY[0x1E695DF00] date];
    [v16 setDateOfExpiration:v3];

    [v16 setHasShownRenewalNotice:*(a1 + 48)];
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(v4 + 56);
    }

    else
    {
      v5 = 0;
    }

    [(FCPurchaseLookUpEntriesManager *)v5 updateEntry:v16];
    v6 = *(a1 + 40);
    if (v6)
    {
      v6 = v6[7];
    }

    v7 = v6;
    v8 = [(FCPurchaseLookUpEntriesManager *)v7 lookupEntriesByTagID];
    v10 = [v8 copy];
    v11 = *(a1 + 40);
    if (v11)
    {
      objc_setProperty_atomic_copy(v11, v9, v10, 64);
    }

    v12 = MEMORY[0x1E695DFD8];
    v13 = *(a1 + 40);
    v14 = [*(a1 + 32) tagID];
    v15 = [v12 setWithObjects:{v14, 0}];
    [(FCPurchaseController *)v13 notifyPurchaseRemovedWithTagIDs:v15];
  }
}

void __70__FCPurchaseController_updatePurchaseEntryToSubscriptionNotSupported___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPurchaseValidationState:4];
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = *(a1 + 32);
  v4 = v2;
  v6 = [v3 dictionaryRepresentation];
  v5 = [*(a1 + 32) identifier];
  [v4 setObject:v6 forKey:v5];
}

void __64__FCPurchaseController_updatePurchaseEntryToValid_purchaseType___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPurchaseValidationState:1];
  [*(a1 + 32) setPurchaseType:*(a1 + 48)];
  [*(a1 + 32) setHasShownRenewalNotice:0];
  [*(a1 + 32) setDateOfExpiration:0];
  v2 = *(a1 + 40);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = *(a1 + 32);
  v4 = v2;
  v5 = [v3 dictionaryRepresentation];
  v6 = [*(a1 + 32) identifier];
  [v4 setObject:v5 forKey:v6];

  v7 = MEMORY[0x1E695DFD8];
  v8 = *(a1 + 40);
  v10 = [*(a1 + 32) tagID];
  v9 = [v7 setWithObjects:{v10, 0}];
  [(FCPurchaseController *)v8 notifyPurchaseAddedWithTagIDs:v9];
}

- (void)removeFromPurchasedChannelsListWithTagIDs:(id)ds
{
  dsCopy = ds;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__FCPurchaseController_removeFromPurchasedChannelsListWithTagIDs___block_invoke;
  v7[3] = &unk_1E7C36C58;
  v7[4] = self;
  v8 = dsCopy;
  v6 = dsCopy;
  dispatch_async(accessQueue, v7);
}

- (void)_removeFromPurchasedChannelsListWithTagIDs:(void *)result
{
  if (result)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __67__FCPurchaseController__removeFromPurchasedChannelsListWithTagIDs___block_invoke;
    v2[3] = &unk_1E7C393D0;
    v2[4] = result;
    return [a2 enumerateObjectsUsingBlock:v2];
  }

  return result;
}

void __67__FCPurchaseController__removeFromPurchasedChannelsListWithTagIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 56);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  [(FCPurchaseLookUpEntriesManager *)v4 removeEntryForTagID:v5];
  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = v6[7];
  }

  v7 = v6;
  v8 = [(FCPurchaseLookUpEntriesManager *)v7 lookupEntriesByTagID];
  v10 = [v8 copy];
  v11 = *(a1 + 32);
  if (v11)
  {
    objc_setProperty_atomic_copy(v11, v9, v10, 64);
  }

  v12 = *(a1 + 32);
  v13 = [MEMORY[0x1E695DFD8] setWithObjects:{v5, 0}];

  [(FCPurchaseController *)v12 notifyPurchaseRemovedWithTagIDs:v13];
}

- (void)removeFromPurchasesDiscoveredList:(id)list completion:(id)completion
{
  listCopy = list;
  completionCopy = completion;
  if (self)
  {
    accessQueue = self->_accessQueue;
  }

  else
  {
    accessQueue = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__FCPurchaseController_removeFromPurchasesDiscoveredList_completion___block_invoke;
  block[3] = &unk_1E7C38FF0;
  block[4] = self;
  v12 = listCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = listCopy;
  dispatch_async(accessQueue, block);
}

uint64_t __69__FCPurchaseController_removeFromPurchasesDiscoveredList_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) purchasesDiscoveredTagIDs];
  v3 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 40)];
  v4 = [v2 fc_setByMinusingSet:v3];
  [(FCPurchaseController *)*(a1 + 32) setPurchasesDiscoveredTagIDs:v4];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = v5[6];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = [v5 purchasesDiscoveredTagIDs];
  v9 = [v8 allObjects];
  [v7 setObject:v9 forKey:@"SubscriptionsDiscoveredList"];

  result = *(a1 + 48);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

- (void)removeWebPurchaseForTagID:(id)d userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  if (self)
  {
    cloudContext = self->_cloudContext;
  }

  else
  {
    cloudContext = 0;
  }

  dCopy = d;
  tagSettings = [(FCCloudContext *)cloudContext tagSettings];
  [tagSettings setAccessTokenForTagID:dCopy accessToken:0 userInitiated:initiatedCopy];
}

void __67__FCPurchaseController_cleanupExpiredPurchaseLookupEntriesIfNeeded__block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 64, 1);
    v4 = *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__FCPurchaseController_cleanupExpiredPurchaseLookupEntriesIfNeeded__block_invoke_2;
  v11[3] = &unk_1E7C38FA0;
  v11[4] = v4;
  [Property enumerateKeysAndObjectsUsingBlock:v11];
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[7];
  }

  v6 = v5;
  v7 = [(FCPurchaseLookUpEntriesManager *)v6 lookupEntriesByTagID];
  v9 = [v7 copy];
  v10 = *(a1 + 32);
  if (v10)
  {
    objc_setProperty_atomic_copy(v10, v8, v9, 64);
  }
}

void __67__FCPurchaseController_cleanupExpiredPurchaseLookupEntriesIfNeeded__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if ([v5 purchaseValidationState] == 2)
  {
    v6 = [v5 dateOfExpiration];
    v7 = [MEMORY[0x1E695DF00] date];
    v8 = [v6 fc_isWithinTimeInterval:v7 ofDate:864000.0];

    if ((v8 & 1) == 0)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10 = *(v9 + 56);
      }

      else
      {
        v10 = 0;
      }

      [(FCPurchaseLookUpEntriesManager *)v10 removeEntryForTagID:v11];
    }
  }
}

- (void)activityObservingApplicationDidEnterBackground
{
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    accessQueue = self->_accessQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__FCPurchaseController_cleanupExpiredPurchaseLookupEntriesIfNeeded__block_invoke;
    block[3] = &unk_1E7C36EA0;
    block[4] = self;
    dispatch_sync(accessQueue, block);
    localStore = self->_localStore;

    [(FCKeyValueStore *)localStore saveWithCompletionHandler:0];
  }
}

- (void)handleAccessTokenChangeWithTagID:(uint64_t)d userInitiated:(void *)initiated
{
  v37[1] = *MEMORY[0x1E69E9840];
  initiatedCopy = initiated;
  if (d)
  {
    v4 = *(d + 32);
    tagSettings = [v4 tagSettings];
    v6 = [tagSettings accessTokenForTagID:initiatedCopy];

    v31 = 0;
    v32 = &v31;
    v33 = 0x3032000000;
    v34 = __Block_byref_object_copy__10;
    v35 = __Block_byref_object_dispose__10;
    v36 = [d purchaseLookUpEntryForTagID:initiatedCopy];
    if (v6)
    {
      objc_initWeak(&location, d);
      v7 = *(d + 32);
      tagController = [v7 tagController];
      v9 = MEMORY[0x1E69E96A0];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke;
      v25[3] = &unk_1E7C39448;
      objc_copyWeak(&v29, &location);
      dCopy = d;
      v28 = &v31;
      v26 = initiatedCopy;
      [tagController fetchTagForTagID:v26 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v25];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }

    else
    {
      v10 = v32[5];
      if (v10)
      {
        if ([v10 purchaseType] == 2)
        {
          v37[0] = initiatedCopy;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:1];
          [d removeFromPurchasedChannelsListWithTagIDs:v11];

          purchasesDiscoveredTagIDs = [d purchasesDiscoveredTagIDs];
          v13 = [purchasesDiscoveredTagIDs containsObject:initiatedCopy];

          if (v13)
          {
            purchasesDiscoveredTagIDs2 = [d purchasesDiscoveredTagIDs];
            allObjects = [purchasesDiscoveredTagIDs2 allObjects];
            v16 = [allObjects mutableCopy];

            [v16 removeObject:initiatedCopy];
            v17 = MEMORY[0x1E695DFD8];
            v18 = [v16 copy];
            v19 = [v17 setWithArray:v18];
            v20 = *(d + 8);
            *(d + 8) = v19;

            v21 = *(d + 48);
            purchasesDiscoveredTagIDs3 = [d purchasesDiscoveredTagIDs];
            allObjects2 = [purchasesDiscoveredTagIDs3 allObjects];
            [v21 setObject:allObjects2 forKey:@"SubscriptionsDiscoveredList"];

            purchasesDiscoveredTagIDs4 = [d purchasesDiscoveredTagIDs];
            [(FCPurchaseController *)d notifyPurchasesDiscoveredWithTagIDs:purchasesDiscoveredTagIDs4];
          }
        }
      }
    }

    _Block_object_dispose(&v31, 8);
  }
}

void __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_2;
  v6[3] = &unk_1E7C39420;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v3;
  FCPerformIfNonNil(WeakRetained, v6);
}

void __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    if (+[FCTagController isTagAllowedInContentStoreFront:](FCTagController, "isTagAllowedInContentStoreFront:") && ([*(a1 + 32) isDeprecated] & 1) == 0)
    {
      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v4 = *(a1 + 40);
        v5 = [MEMORY[0x1E695DF00] date];
        [FCPurchaseController addToPurchasedChannelsListWithTagID:v3 purchaseID:v4 purchaseType:0 purchaseValidationState:2 isNewsAppPurchase:1 lastVerificationTime:v5];

        if (v3)
        {
          v6 = v3[4];
        }

        else
        {
          v6 = 0;
        }

        v7 = v6;
        v8 = [v7 subscriptionController];
        [v8 addSubscriptionToTag:*(a1 + 32) error:0];

        v9 = [*(a1 + 48) purchasesDiscoveredTagIDs];
        v10 = [v9 allObjects];
        v11 = [v10 mutableCopy];

        [v11 addObject:*(a1 + 40)];
        v12 = MEMORY[0x1E695DFD8];
        v13 = [v11 copy];
        v14 = [v12 setWithArray:v13];
        [(FCPurchaseController *)v3 setPurchasesDiscoveredTagIDs:v14];

        if (v3)
        {
          v15 = v3[6];
        }

        else
        {
          v15 = 0;
        }

        v16 = v15;
        v17 = [v3 purchasesDiscoveredTagIDs];
        v18 = [v17 allObjects];
        [v16 setObject:v18 forKey:@"SubscriptionsDiscoveredList"];

        v19 = [v3 purchasesDiscoveredTagIDs];
        [(FCPurchaseController *)v3 notifyPurchasesDiscoveredWithTagIDs:v19];
      }
    }

    else
    {
      [v3 removeWebPurchaseForTagID:*(a1 + 40) userInitiated:0];
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_3;
    v20[3] = &unk_1E7C36C58;
    v21 = *(a1 + 40);
    v22 = v3;
    __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_3(v20);
  }
}

uint64_t __71__FCPurchaseController_handleAccessTokenChangeWithTagID_userInitiated___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Nil tag returned in handleAccessTokenChange for tagID:%@", &v5, 0xCu);
  }

  return [*(a1 + 40) removeWebPurchaseForTagID:*(a1 + 32) userInitiated:0];
}

void __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_2;
  v6[3] = &unk_1E7C39498;
  v7 = v3;
  v8 = *(a1 + 32);
  v10 = *(a1 + 56);
  v9 = *(a1 + 40);
  v5 = v3;
  FCPerformIfNonNil(WeakRetained, v6);
}

void __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    v5 = [v3 purchaseLookUpEntryForTagID:*(a1 + 40)];
    if (v5)
    {
      if (v4)
      {
        v6 = v4[10];
      }

      else
      {
        v6 = 0;
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_235;
      block[3] = &unk_1E7C39470;
      v7 = v5;
      v22 = *(a1 + 56);
      v17 = v7;
      v18 = v4;
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      dispatch_sync(v6, block);
    }

    else
    {
      if (*(a1 + 56) == 1)
      {
        if (v4)
        {
          v8 = v4[4];
        }

        else
        {
          v8 = 0;
        }

        v9 = v8;
        v10 = [v9 tagSettings];
        [v10 setAccessTokenForTagID:*(a1 + 40) accessToken:*(a1 + 48) userInitiated:0];

        v11 = *(a1 + 40);
        v12 = [MEMORY[0x1E695DF00] date];
        [FCPurchaseController addToPurchasedChannelsListWithTagID:v4 purchaseID:v11 purchaseType:0 purchaseValidationState:2 isNewsAppPurchase:1 lastVerificationTime:v12];

        if (v4)
        {
          v13 = v4[4];
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;
        v15 = [v14 subscriptionController];
        [v15 addSubscriptionToTag:*(a1 + 32) error:0];
      }

      v7 = 0;
    }
  }

  else
  {
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_3;
    v23[3] = &unk_1E7C36EA0;
    v24 = *(a1 + 40);
    __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_3(v23);
    v7 = v24;
  }
}

void __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_DEFAULT, "Nil tag returned in handleAccessTokenVerification for tagID:%@", &v4, 0xCu);
  }
}

void __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke_235(uint64_t a1)
{
  v2 = [*(a1 + 32) purchaseValidationState];
  [*(a1 + 32) setPurchaseType:2];
  v3 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setLastVerificationTime:v3];

  [*(a1 + 32) setLastVerificationFailureTime:0];
  if (*(a1 + 72))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  [*(a1 + 32) setPurchaseValidationState:v4];
  if (*(a1 + 72) == 1)
  {
    [*(a1 + 32) setDateOfExpiration:0];
  }

  else
  {
    v5 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 32) setDateOfExpiration:v5];
  }

  if ((*(a1 + 72) & 1) != 0 || v2 != 2)
  {
    [*(a1 + 32) setHasShownRenewalNotice:0];
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v6 = v6[6];
  }

  v7 = *(a1 + 32);
  v8 = v6;
  v9 = [v7 dictionaryRepresentation];
  v10 = [*(a1 + 32) identifier];
  [v8 setObject:v9 forKey:v10];

  if (*(a1 + 72) == 1 && v2 != 1)
  {
    v11 = *(a1 + 40);
    if (v11)
    {
      v11 = v11[4];
    }

    v12 = v11;
    v13 = [v12 tagSettings];
    [v13 setAccessTokenForTagID:*(a1 + 48) accessToken:*(a1 + 56) userInitiated:0];

    v14 = MEMORY[0x1E695DFD8];
    v15 = *(a1 + 40);
    v16 = [*(a1 + 32) tagID];
    v17 = [v14 setWithObjects:{v16, 0}];
    [(FCPurchaseController *)v15 notifyPurchaseAddedWithTagIDs:v17];

    v18 = *(a1 + 40);
    if (v18)
    {
      v18 = v18[4];
    }

    v19 = v18;
    v20 = [v19 subscriptionController];
    [v20 addSubscriptionToTag:*(a1 + 64) error:0];
  }
}

void __70__FCPurchaseController_handleAccessTokenVerificationFailureWithTagID___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  [*(a1 + 32) setLastVerificationTime:v2];

  v3 = [*(a1 + 32) lastVerificationFailureTime];

  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 32) setLastVerificationFailureTime:v4];
  }

  [*(a1 + 32) setPurchaseValidationState:3];
  v5 = *(a1 + 40);
  if (v5)
  {
    v5 = v5[6];
  }

  v6 = *(a1 + 32);
  v7 = v5;
  v9 = [v6 dictionaryRepresentation];
  v8 = [*(a1 + 32) identifier];
  [v7 setObject:v9 forKey:v8];
}

- (void)verifyAccessTokenWithTagID:(id)d accessToken:(id)token consumedArticleCount:(unint64_t)count serialCompletion:(id)completion callbackQueue:(id)queue completion:(id)a8
{
  v48 = *MEMORY[0x1E69E9840];
  dCopy = d;
  tokenCopy = token;
  completionCopy = completion;
  queueCopy = queue;
  v18 = a8;
  if (self)
  {
    cloudContext = self->_cloudContext;
  }

  else
  {
    cloudContext = 0;
  }

  networkReachability = [(FCCloudContext *)cloudContext networkReachability];
  isNetworkReachable = [networkReachability isNetworkReachable];

  if (isNetworkReachable)
  {
    if (self)
    {
      v22 = self->_cloudContext;
    }

    else
    {
      v22 = 0;
    }

    v23 = v22;
    tagController = [(FCCloudContext *)v23 tagController];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke;
    v37[3] = &unk_1E7C39588;
    v37[4] = self;
    v38 = dCopy;
    v39 = queueCopy;
    v41 = v18;
    v42 = completionCopy;
    v40 = tokenCopy;
    countCopy = count;
    v25 = completionCopy;
    v26 = v18;
    [tagController fetchTagForTagID:v38 qualityOfService:9 callbackQueue:MEMORY[0x1E69E96A0] completionHandler:v37];

    v27 = v38;
  }

  else
  {
    v28 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138543618;
      v45 = v31;
      v46 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID failed because the network is not reachable", buf, 0x16u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_254;
    block[3] = &unk_1E7C39090;
    v35 = v18;
    v36 = completionCopy;
    v32 = completionCopy;
    v33 = v18;
    dispatch_async(queueCopy, block);

    v27 = v35;
  }
}

void __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v82[1] = *MEMORY[0x1E69E9840];
  v64 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      *buf = 138544130;
      *&buf[4] = v9;
      *&buf[12] = 2048;
      *&buf[14] = v10;
      *&buf[22] = 2114;
      *v80 = v11;
      *&v80[8] = 2114;
      *&v80[10] = v5;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID failed to fetch tagID: %{public}@ error: %{public}@", buf, 0x2Au);
    }

    v12 = *(a1 + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_236;
    block[3] = &unk_1E7C39090;
    v77 = *(a1 + 64);
    v78 = *(a1 + 72);
    dispatch_async(v12, block);

    v13 = v77;
  }

  else
  {
    v14 = NewsCoreUserDefaults();
    v15 = [v14 stringForKey:@"web_authentication_local_server_ip_address"];

    if (NFInternalBuild() && v15)
    {
      v16 = NewsCoreUserDefaults();
      v17 = [v16 stringForKey:@"web_authentication_local_server_ip_address"];

      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", @"http://", v17, @":3000/verify_authorization"];
    }

    else
    {
      v18 = [v64 publisherPaidVerificationURL];
    }

    v19 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = *(a1 + 32);
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 2048;
      *&buf[14] = v23;
      *&buf[22] = 2114;
      *v80 = v18;
      _os_log_impl(&dword_1B63EF000, v20, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID will use verificationURL: %{public}@", buf, 0x20u);
    }

    if (v18)
    {
      objc_initWeak(&location, *(a1 + 32));
      v24 = *(a1 + 32);
      v25 = *(a1 + 56);
      v26 = *(a1 + 80);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_2;
      v65[3] = &unk_1E7C39560;
      objc_copyWeak(&v71, &location);
      v62 = *(a1 + 32);
      v27 = *(a1 + 40);
      v28 = *(a1 + 56);
      v29 = *(a1 + 48);
      *&v30 = v28;
      *(&v30 + 1) = v29;
      v66 = v62;
      v67 = v30;
      v69 = *(a1 + 64);
      v68 = v64;
      v70 = *(a1 + 72);
      v13 = v18;
      v63 = v25;
      v61 = v65;
      if (v24)
      {
        if (!v63 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"invalid nil value for '%s'", "accessToken"];
          *buf = 136315906;
          *&buf[4] = "[FCPurchaseController performHTTPRequestForVerifyAccessTokenWithURL:accessToken:consumedArticleCount:completion:]";
          *&buf[12] = 2080;
          *&buf[14] = "FCPurchaseController.m";
          *&buf[22] = 1024;
          *v80 = 1624;
          *&v80[4] = 2114;
          *&v80[6] = v60;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v31 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEBUG))
        {
          v54 = v31;
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          *buf = 138543874;
          *&buf[4] = v56;
          *&buf[12] = 2048;
          *&buf[14] = v24;
          *&buf[22] = 2114;
          *v80 = v13;
          _os_log_debug_impl(&dword_1B63EF000, v54, OS_LOG_TYPE_DEBUG, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL: %{public}@", buf, 0x20u);
        }

        v32 = [MEMORY[0x1E696AF20] componentsWithString:v13];
        v33 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
        v34 = [v33 mutableCopy];

        [v34 removeCharactersInString:@"?=&+/"];
        v35 = [v63 stringByAddingPercentEncodingWithAllowedCharacters:v34];
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=%@&%@=%lu", @"access_token", v35, @"read_article_count", v26];
        [v32 setPercentEncodedQuery:v36];

        v37 = MEMORY[0x1E695AC18];
        v38 = [v32 URL];
        v39 = [v37 requestWithURL:v38];

        v81 = @"Accept";
        v82[0] = @"application/json";
        v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:&v81 count:1];
        [v39 setAllHTTPHeaderFields:v40];
        [v39 setHTTPMethod:@"GET"];
        v41 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v42 = v41;
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          *buf = 138543874;
          *&buf[4] = v44;
          *&buf[12] = 2048;
          *&buf[14] = v24;
          *&buf[22] = 2114;
          *v80 = v39;
          _os_log_impl(&dword_1B63EF000, v42, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL request: %{public}@", buf, 0x20u);
        }

        v45 = *(v24 + 40);
        v46 = [v45 value];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __114__FCPurchaseController_performHTTPRequestForVerifyAccessTokenWithURL_accessToken_consumedArticleCount_completion___block_invoke;
        *v80 = &unk_1E7C395B0;
        *&v80[8] = v24;
        *&v80[16] = v61;
        v47 = [v46 dataTaskWithRequest:v39 completionHandler:buf];

        [v47 resume];
      }

      objc_destroyWeak(&v71);
      objc_destroyWeak(&location);
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v57 = objc_alloc(MEMORY[0x1E696AEC0]);
        v58 = [v64 identifier];
        v59 = [v57 initWithFormat:@"Verification URL is nil for publisher : %@", v58];
        *buf = 136315906;
        *&buf[4] = "[FCPurchaseController verifyAccessTokenWithTagID:accessToken:consumedArticleCount:serialCompletion:callbackQueue:completion:]_block_invoke";
        *&buf[12] = 2080;
        *&buf[14] = "FCPurchaseController.m";
        *&buf[22] = 1024;
        *v80 = 1570;
        *&v80[4] = 2114;
        *&v80[6] = v59;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }

      v48 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v49 = v48;
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        v52 = *(a1 + 32);
        *buf = 138543618;
        *&buf[4] = v51;
        *&buf[12] = 2048;
        *&buf[14] = v52;
        _os_log_impl(&dword_1B63EF000, v49, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID failed to get a verificationURL", buf, 0x16u);
      }

      v53 = *(a1 + 48);
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_250;
      v73[3] = &unk_1E7C39090;
      v74 = *(a1 + 64);
      v75 = *(a1 + 72);
      dispatch_async(v53, v73);

      v13 = 0;
    }
  }
}

uint64_t __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_236(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v7 = @"error_message";
    v8[0] = @"CloudKit error while fetching channel information";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"FCTokenVerificationErrorDomain" code:5002 userInfo:v4];
    (*(v2 + 16))(v2, 0, 0, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_250(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v7 = @"error_message";
    v8[0] = @"URL not found";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"FCTokenVerificationErrorDomain" code:5001 userInfo:v4];
    (*(v2 + 16))(v2, 0, 0, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_3;
  v15[3] = &unk_1E7C39538;
  v21 = a2;
  v7 = *(a1 + 40);
  v15[4] = *(a1 + 32);
  v16 = v5;
  v8 = v7;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v19 = *(a1 + 72);
  v11 = *(a1 + 64);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v17 = v13;
  v18 = v12;
  v20 = *(a1 + 80);
  v14 = v5;
  FCPerformIfNonNil(WeakRetained, v15);
}

void __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 96);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    *buf = 138544130;
    v26 = v7;
    v27 = 2048;
    v28 = v9;
    v29 = 1024;
    v30 = v8;
    v31 = 2114;
    v32 = v10;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> verifyAccessTokenWithTagID isSubscribed: %d verificationError: %{public}@", buf, 0x26u);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_251;
  v17[3] = &unk_1E7C39510;
  v18 = *(a1 + 40);
  v19 = v3;
  v11 = *(a1 + 48);
  v24 = *(a1 + 96);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v22 = *(a1 + 80);
  v14 = *(a1 + 72);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  *&v16 = v11;
  *(&v16 + 1) = v12;
  v20 = v16;
  v21 = v15;
  v23 = *(a1 + 88);
  FCPerformBlockOnMainThread(v17);
}

void __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_251(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (!*(a1 + 32))
  {
    v7 = *(a1 + 96);
    v8 = *(a1 + 56);
    v5 = v3;
    v9 = v8;
    if (v2)
    {
      objc_initWeak(&location, v2);
      v10 = *(v2 + 32);
      v11 = [v10 tagController];
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
      block = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __93__FCPurchaseController_handleAccessTokenVerificationSuccessWithTagID_subscribed_accessToken___block_invoke;
      v24 = &unk_1E7C394C0;
      objc_copyWeak(&v27, &location);
      v25 = v5;
      v28 = v7;
      v26 = v9;
      [v11 fetchTagForTagID:v25 qualityOfService:9 callbackQueue:v12 completionHandler:&block];

      objc_destroyWeak(&v27);
      objc_destroyWeak(&location);
    }

    goto LABEL_8;
  }

  if (v2)
  {
    v4 = [*(a1 + 40) purchaseLookUpEntryForTagID:v3];
    v5 = v4;
    if (v4)
    {
      v6 = *(v2 + 80);
      block = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __70__FCPurchaseController_handleAccessTokenVerificationFailureWithTagID___block_invoke;
      v24 = &unk_1E7C36C58;
      v25 = v4;
      v26 = v2;
      dispatch_async(v6, &block);
    }

LABEL_8:
  }

  v14 = *(a1 + 64);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_2_252;
  v15[3] = &unk_1E7C394E8;
  v18 = *(a1 + 80);
  v20 = *(a1 + 96);
  v16 = *(a1 + 72);
  v17 = *(a1 + 32);
  v19 = *(a1 + 88);
  dispatch_async(v14, v15);
}

uint64_t __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_2_252(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 64), *(a1 + 32), *(a1 + 40));
  }

  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __126__FCPurchaseController_verifyAccessTokenWithTagID_accessToken_consumedArticleCount_serialCompletion_callbackQueue_completion___block_invoke_254(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E696ABC0];
    v7 = @"error_message";
    v8[0] = @"Device in offline";
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    v5 = [v3 errorWithDomain:@"FCTokenVerificationErrorDomain" code:5000 userInfo:v4];
    (*(v2 + 16))(v2, 0, 0, v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __114__FCPurchaseController_performHTTPRequestForVerifyAccessTokenWithURL_accessToken_consumedArticleCount_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v100 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v8;
  v11 = FCPurchaseLog;
  if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = *(a1 + 32);
    *buf = 138544130;
    v93 = v14;
    v94 = 2048;
    v95 = v15;
    v96 = 2114;
    v97 = v10;
    v98 = 2114;
    v99 = v9;
    _os_log_impl(&dword_1B63EF000, v12, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL response: %{public}@ error: %{public}@", buf, 0x2Au);
  }

  if (!v9)
  {
    v79 = 0;
    v20 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v79];
    v19 = v79;
    if (v19)
    {
      v22 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_ERROR))
      {
        v71 = v22;
        v72 = objc_opt_class();
        v73 = NSStringFromClass(v72);
        v74 = *(a1 + 32);
        *buf = 138543874;
        v93 = v73;
        v94 = 2048;
        v95 = v74;
        v96 = 2114;
        v97 = v19;
        _os_log_error_impl(&dword_1B63EF000, v71, OS_LOG_TYPE_ERROR, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL failed to parse with error: %{public}@", buf, 0x20u);
      }

      v23 = *(a1 + 40);
      v24 = MEMORY[0x1E696ABC0];
      v25 = [v10 statusCode];
      v88 = @"error_message";
      v89 = @"JSON parsing error";
      v26 = MEMORY[0x1E695DF20];
      v27 = &v89;
      v28 = &v88;
LABEL_20:
      v21 = [v26 dictionaryWithObjects:v27 forKeys:v28 count:1];
      v42 = [v24 errorWithDomain:@"FCTokenVerificationErrorDomain" code:v25 userInfo:v21];
      (*(v23 + 16))(v23, 0, v42);
LABEL_21:

      goto LABEL_22;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v37 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v38 = v37;
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        v41 = *(a1 + 32);
        *buf = 138543618;
        v93 = v40;
        v94 = 2048;
        v95 = v41;
        _os_log_impl(&dword_1B63EF000, v38, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL invalid JSON response format", buf, 0x16u);
      }

      v23 = *(a1 + 40);
      v24 = MEMORY[0x1E696ABC0];
      v25 = [v10 statusCode];
      v80 = @"error_message";
      v81 = @"Invalid JSON format found";
      v26 = MEMORY[0x1E695DF20];
      v27 = &v81;
      v28 = &v80;
      goto LABEL_20;
    }

    v21 = v20;
    v29 = FCPurchaseLog;
    if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v29;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      v33 = *(a1 + 32);
      *buf = 138543874;
      v93 = v32;
      v94 = 2048;
      v95 = v33;
      v96 = 2114;
      v97 = v21;
      _os_log_impl(&dword_1B63EF000, v30, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL validResponseJSON: %{public}@", buf, 0x20u);
    }

    v34 = [v21 objectForKey:@"status"];

    if (v34)
    {
      objc_opt_class();
      v35 = [v21 objectForKey:@"status"];
      if (v35)
      {
        if (objc_opt_isKindOfClass())
        {
          v36 = v35;
        }

        else
        {
          v36 = 0;
        }
      }

      else
      {
        v36 = 0;
      }

      v42 = v36;

      v63 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        v64 = v63;
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        v67 = *(a1 + 32);
        *buf = 138543874;
        v93 = v66;
        v94 = 2048;
        v95 = v67;
        v96 = 2114;
        v97 = v42;
        _os_log_impl(&dword_1B63EF000, v64, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL status: %{public}@", buf, 0x20u);
      }

      if (![v42 caseInsensitiveCompare:@"subscribed"])
      {
        (*(*(a1 + 40) + 16))(*(a1 + 40), 1, 0);
        goto LABEL_21;
      }

      v68 = [v42 caseInsensitiveCompare:@"not_subscribed"];
      v69 = *(a1 + 40);
      if (!v68)
      {
        (*(v69 + 16))(v69, 0, 0);
        goto LABEL_21;
      }

      v75 = MEMORY[0x1E696ABC0];
      v70 = [v10 statusCode];
      v86 = @"error_message";
      v87 = @"Invalid response.Response structure did not meet agreement";
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
      v54 = [v75 errorWithDomain:@"FCTokenVerificationErrorDomain" code:v70 userInfo:v53];
      (*(v69 + 16))(v69, 0, v54);
    }

    else
    {
      v43 = [v21 objectForKey:@"error"];
      if (!v43 || (v44 = v43, [v21 objectForKey:@"error"], v45 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), log = objc_opt_isKindOfClass(), v45, v44, (log & 1) == 0))
      {
        v55 = FCPurchaseLog;
        if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
        {
          v56 = v55;
          v57 = objc_opt_class();
          v58 = NSStringFromClass(v57);
          v59 = *(a1 + 32);
          *buf = 138543618;
          v93 = v58;
          v94 = 2048;
          v95 = v59;
          _os_log_impl(&dword_1B63EF000, v56, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL missing status and error", buf, 0x16u);
        }

        v60 = *(a1 + 40);
        v61 = MEMORY[0x1E696ABC0];
        v62 = [v10 statusCode];
        v82 = @"error_message";
        v83 = @"Invalid response.Response structure did not meet agreement";
        v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
        v53 = [v61 errorWithDomain:@"FCTokenVerificationErrorDomain" code:v62 userInfo:v42];
        (*(v60 + 16))(v60, 0, v53);
        goto LABEL_38;
      }

      v46 = FCPurchaseLog;
      if (os_log_type_enabled(FCPurchaseLog, OS_LOG_TYPE_DEFAULT))
      {
        loga = v46;
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = *(a1 + 32);
        v50 = [v21 objectForKey:@"error"];
        *buf = 138543874;
        v93 = v48;
        v94 = 2048;
        v95 = v49;
        v96 = 2114;
        v97 = v50;
        _os_log_impl(&dword_1B63EF000, loga, OS_LOG_TYPE_DEFAULT, "<%{public}@ %p> performHTTPRequestForVerifyAccessTokenWithURL error: %{public}@", buf, 0x20u);
      }

      v51 = *(a1 + 40);
      logb = MEMORY[0x1E696ABC0];
      v52 = [v10 statusCode];
      v84 = @"error_message";
      v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v21];
      v85 = v42;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
      v54 = [logb errorWithDomain:@"FCTokenVerificationErrorDomain" code:v52 userInfo:v53];
      (*(v51 + 16))(v51, 0, v54);
    }

LABEL_38:
    goto LABEL_21;
  }

  v16 = *(a1 + 40);
  v17 = MEMORY[0x1E696ABC0];
  v18 = [v9 code];
  v90 = @"error_message";
  v19 = [v9 localizedDescription];
  v91 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v21 = [v17 errorWithDomain:@"FCTokenVerificationErrorDomain" code:v18 userInfo:v20];
  (*(v16 + 16))(v16, 0, v21);
LABEL_22:
}

- (id)webAccessEntryForTagID:(void *)d
{
  v3 = a2;
  webAccessEntriesByTagID = [d webAccessEntriesByTagID];
  v5 = [webAccessEntriesByTagID objectForKey:v3];

  return v5;
}

- (void)submitWebAccessWithTagID:(id)d purchaseID:(id)iD emailAddress:(id)address purchaseReceipt:(id)receipt serialCompletion:(id)completion completion:(id)a8
{
  v46[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  iDCopy = iD;
  addressCopy = address;
  receiptCopy = receipt;
  completionCopy = completion;
  v16 = a8;
  if (self)
  {
    cloudContext = self->_cloudContext;
  }

  else
  {
    cloudContext = 0;
  }

  networkReachability = [(FCCloudContext *)cloudContext networkReachability];
  isNetworkReachable = [networkReachability isNetworkReachable];

  if (isNetworkReachable)
  {
    objc_initWeak(&location, self);
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v21 = [currentLocale objectForKey:*MEMORY[0x1E695D9B0]];

    currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
    v32 = [currentLocale2 objectForKey:*MEMORY[0x1E695D978]];

    v23 = [receiptCopy dataUsingEncoding:4];
    v31 = [v23 base64EncodedStringWithOptions:0];
    if (self)
    {
      v24 = self->_cloudContext;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    endpointConnection = [(FCCloudContext *)v25 endpointConnection];
    v27 = MEMORY[0x1E69E96A0];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __117__FCPurchaseController_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_serialCompletion_completion___block_invoke;
    v36[3] = &unk_1E7C39600;
    objc_copyWeak(&v43, &location);
    v37 = dCopy;
    v38 = iDCopy;
    v39 = addressCopy;
    v40 = receiptCopy;
    v41 = v16;
    v42 = completionCopy;
    [endpointConnection submitWebAccessWithTagID:v37 purchaseID:v38 emailAddress:v39 purchaseReceipt:v31 countryCode:v32 languageCode:v21 callbackQueue:MEMORY[0x1E69E96A0] completion:v36];

    objc_destroyWeak(&v43);
    objc_destroyWeak(&location);
  }

  else
  {
    if (v16)
    {
      v28 = MEMORY[0x1E696ABC0];
      v45 = @"error_message";
      v46[0] = @"Device in offline";
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      v30 = [v28 errorWithDomain:@"FCWebAccessErrorDomain" code:5000 userInfo:v29];
      (*(v16 + 2))(v16, 0, v30);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

void __117__FCPurchaseController_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_serialCompletion_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 10);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__FCPurchaseController_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_serialCompletion_completion___block_invoke_2;
  v15[3] = &unk_1E7C395D8;
  v21 = a2;
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v10 = a1[7];
  *&v11 = v9;
  *(&v11 + 1) = v10;
  *&v12 = v7;
  *(&v12 + 1) = v8;
  v16 = v12;
  v17 = v11;
  v13 = a1[8];
  v18 = v5;
  v19 = v13;
  v20 = a1[9];
  v14 = v5;
  FCPerformIfNonNil(WeakRetained, v15);
}

void __117__FCPurchaseController_submitWebAccessWithTagID_purchaseID_emailAddress_purchaseReceipt_serialCompletion_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v36 = v3;
  if (*(a1 + 88) != 1)
  {
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v5 = v4;
    v8 = v9;
    v12 = v10;
    v13 = v11;
    if (v36)
    {
      v14 = [(FCPurchaseController *)v36 webAccessEntryForTagID:v5];
      if (v14)
      {
        v15 = v14;
        v16 = [v36 webAccessEntriesByTagID];
        [v16 removeObjectForKey:v15[6]];

        v17 = v15[5];
        v18 = v36[6];
        [v18 removeObjectForKey:v17];
      }

      else
      {
        v19 = [FCWebAccessEntry alloc];
        v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"wa-", v5];
        v21 = [MEMORY[0x1E695DF00] date];
        v22 = [(FCWebAccessEntry *)v19 initWithEntryID:v20 tagID:v5 purchaseID:v8 lastRetryAttemptTime:v21 email:v12 purchaseReceipt:v13];

        v18 = v22;
        v23 = [v36 webAccessEntriesByTagID];
        v24 = v23;
        if (v18)
        {
          v25 = v18[6];
        }

        else
        {
          v25 = 0;
        }

        [v23 setObject:v18 forKey:v25];

        v26 = v36[6];
        if (v18)
        {
          v27 = [MEMORY[0x1E695DF90] dictionary];
          [v27 fc_safelySetObjectAllowingNil:v18[6] forKey:@"WebAccessEntryTagID"];
          v28 = [v18 purchaseID];
          [v27 fc_safelySetObjectAllowingNil:v28 forKey:@"WebAccessEntryPurchaseID"];

          v29 = [v18 lastRetryAttemptTime];
          [v27 fc_safelySetObjectAllowingNil:v29 forKey:@"WebAccessEntryLastRetryAttemptTime"];

          v30 = [v18 email];
          [v27 fc_safelySetObjectAllowingNil:v30 forKey:@"WebAccessEntryEmail"];

          v31 = [v18 purchaseReceipt];
          [v27 fc_safelySetObjectAllowingNil:v31 forKey:@"WebAccessEntryPurchaseReceipt"];

          v32 = [v27 copy];
          v33 = v18[5];
        }

        else
        {
          v32 = 0;
          v33 = 0;
        }

        [v26 setObject:v32 forKey:v33];

        v15 = v18;
      }
    }

    goto LABEL_15;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = [(FCPurchaseController *)v3 webAccessEntryForTagID:v4];
  if (v5)
  {
    v6 = [v36 webAccessEntriesByTagID];
    [v6 removeObjectForKey:v5[6]];

    v7 = v5[5];
    v8 = v36[6];
    [v8 removeObjectForKey:v7];
LABEL_15:
  }

LABEL_17:
  v34 = *(a1 + 72);
  if (v34)
  {
    (*(v34 + 16))(v34, *(a1 + 88), *(a1 + 64));
  }

  v35 = *(a1 + 80);
  if (v35)
  {
    (*(v35 + 16))(v35, v4);
  }
}

@end