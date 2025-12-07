@interface UAFAssetSetManager
+ (BOOL)cacheDeleteDisabledForAutoAssetType:(id)type autoAssetSpecifier:(id)specifier;
+ (BOOL)subscribe:(id)subscribe subscriptions:(id)subscriptions user:(id)user storeManager:(id)manager configurationManager:(id)configurationManager userInitiated:(BOOL)initiated;
+ (BOOL)unsubscribe:(id)unsubscribe subscriptions:(id)subscriptions user:(id)user storeManager:(id)manager configurationManager:(id)configurationManager userInitiated:(BOOL)initiated;
+ (UAFAssetSetManager)sharedManager;
+ (id)_subscriptionDiffersFromDB:(id)b subscriber:(id)subscriber user:(id)user error:(id *)error;
+ (id)createProxyXPCConnection;
+ (id)createSubscriptionXPCConnection;
+ (id)createXPCConnection;
+ (id)defaults;
+ (id)generateInformationWithError:(id *)error;
+ (id)getAssetSetUsages:(id)usages storeManager:(id)manager;
+ (id)getComparableUsages:(id)usages;
+ (id)getConcurrentQueue;
+ (id)getSerialQueue;
+ (id)getSubscriptions:(id)subscriptions storeManager:(id)manager;
+ (id)getSystemUsageAssets:(id)assets;
+ (id)resetAssetSets:(id)sets;
+ (id)sysdiagnoseInformationWithError:(id *)error;
+ (unint64_t)coalesceDownloadStatus:(id)status;
+ (void)autoAssetDetailsForAssetNamed:(id)named assetSet:(id)set usages:(id)usages autoAssetType:(id *)type autoAssetSpecifier:(id *)specifier;
+ (void)configureAssetDelivery:(id)delivery configurationManager:(id)manager;
+ (void)configureAssetDelivery:(id)delivery configurationManager:(id)manager lockIfUnchanged:(BOOL)unchanged;
+ (void)configureAssetDelivery:(id)delivery configurationManager:(id)manager lockIfUnchanged:(BOOL)unchanged oldSubscriptions:(id)subscriptions newSubscriptions:(id)newSubscriptions userInitiated:(BOOL)initiated;
+ (void)disableCacheDelete:(BOOL)delete forAutoAssetType:(id)type autoAssetSpecifier:(id)specifier;
+ (void)processAssetSet:(id)set allAssets:(id)assets;
- (BOOL)cacheDeleteDisabledForAssetNamed:(id)named assetSet:(id)set usages:(id)usages;
- (UAFAssetSetManager)init;
- (id)assetNamesForAssetSet:(id)set usages:(id)usages;
- (id)assetSetInfo:(id)info;
- (id)assetSetUsagesForSubscribers:(id)subscribers storeManager:(id)manager configurationManager:(id)configurationManager anyUnknown:(BOOL *)unknown error:(id *)error;
- (id)diskSpaceNeededForSubscriber:(id)subscriber subscriptionName:(id)name error:(id *)error;
- (id)diskSpaceNeededForSubscribers:(id)subscribers error:(id *)error;
- (id)diskSpaceNeededForSubscribers:(id)subscribers storeManager:(id)manager configurationManager:(id)configurationManager error:(id *)error;
- (id)knownUsagesForAssetSet:(id)set usageType:(id)type;
- (id)observeAssetSet:(id)set policies:(id)policies queue:(id)queue handler:(id)handler;
- (id)retrieveAssetSet:(id)set usages:(id)usages consistencyToken:(id)token;
- (id)retrieveAssetSet:(id)set usages:(id)usages disableExperimentation:(BOOL)experimentation;
- (id)subscribedUsagesForAssetSet:(id)set;
- (id)subscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user storeManager:(id)manager error:(id *)error;
- (id)subscriptionsForSubscriber:(id)subscriber;
- (unint64_t)downloadStatusForSubscriber:(id)subscriber subscriptionName:(id)name;
- (unint64_t)downloadStatusForSubscribers:(id)subscribers;
- (void)disableCacheDelete:(BOOL)delete forAssetNamed:(id)named assetSet:(id)set usages:(id)usages queue:(id)queue completion:(id)completion;
- (void)downloadStatusForSubscriber:(id)subscriber subscriptionName:(id)name queue:(id)queue completion:(id)completion;
- (void)downloadStatusForSubscribers:(id)subscribers queue:(id)queue completion:(id)completion;
- (void)markAssetsExpired:(id)expired completion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)resetAssetSets:(id)sets queue:(id)queue completion:(id)completion;
- (void)retrieveAssetSet:(id)set usages:(id)usages consistencyToken:(id)token queue:(id)queue completion:(id)completion;
- (void)retrieveAssetSet:(id)set usages:(id)usages queue:(id)queue completion:(id)completion;
- (void)subscribe:(id)subscribe subscriptions:(id)subscriptions queue:(id)queue completion:(id)completion;
- (void)subscribe:(id)subscribe subscriptions:(id)subscriptions user:(id)user userInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion;
- (void)unsubscribe:(id)unsubscribe subscriptionNames:(id)names queue:(id)queue completion:(id)completion;
- (void)unsubscribe:(id)unsubscribe subscriptionNames:(id)names user:(id)user userInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion;
- (void)updateAssetsForSubscriber:(id)subscriber subscriptionName:(id)name policies:(id)policies queue:(id)queue detailedProgress:(id)progress completion:(id)completion;
- (void)updateAssetsForSubscriber:(id)subscriber subscriptionName:(id)name policies:(id)policies queue:(id)queue progress:(id)progress completion:(id)completion;
- (void)updateAssetsForSubscriber:(id)subscriber subscriptionName:(id)name policies:(id)policies queue:(id)queue progress:(id)progress detailedProgress:(id)detailedProgress completion:(id)completion storeManager:(id)self0 configurationManager:(id)self1;
- (void)updateAssetsForSubscribers:(id)subscribers policies:(id)policies queue:(id)queue detailedProgress:(id)progress completion:(id)completion;
- (void)updateAssetsForSubscribers:(id)subscribers policies:(id)policies queue:(id)queue progress:(id)progress detailedProgress:(id)detailedProgress internalProgress:(id)internalProgress completion:(id)completion storeManager:(id)self0 configurationManager:(id)self1;
@end

@implementation UAFAssetSetManager

- (UAFAssetSetManager)init
{
  v7.receiver = self;
  v7.super_class = UAFAssetSetManager;
  v2 = [(UAFAssetSetManager *)&v7 init];
  if (v2)
  {
    v3 = objc_opt_new();
    assetSetObservers = v2->_assetSetObservers;
    v2->_assetSetObservers = v3;

    v5 = v2;
  }

  return v2;
}

+ (UAFAssetSetManager)sharedManager
{
  if (qword_1ED7D11C8 != -1)
  {
    dispatch_once(&qword_1ED7D11C8, &__block_literal_global_398);
  }

  v3 = qword_1ED7D11D0;

  return v3;
}

void __35__UAFAssetSetManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(UAFAssetSetManager);
  v1 = qword_1ED7D11D0;
  qword_1ED7D11D0 = v0;
}

+ (id)getConcurrentQueue
{
  if (_MergedGlobals_14 != -1)
  {
    dispatch_once(&_MergedGlobals_14, &__block_literal_global_14);
  }

  v3 = qword_1ED7D11B0;

  return v3;
}

+ (id)defaults
{
  if (qword_1ED7D11D8 != -1)
  {
    dispatch_once(&qword_1ED7D11D8, &__block_literal_global_410);
  }

  v3 = qword_1ED7D11E0;

  return v3;
}

+ (id)getSerialQueue
{
  if (qword_1ED7D11B8 != -1)
  {
    dispatch_once(&qword_1ED7D11B8, &__block_literal_global_310_0);
  }

  v3 = qword_1ED7D11C0;

  return v3;
}

void __40__UAFAssetSetManager_getConcurrentQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAssetSetManager.Concurrent", v2);
  v1 = qword_1ED7D11B0;
  qword_1ED7D11B0 = v0;
}

void __36__UAFAssetSetManager_getSerialQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("UAFAssetSetManager.Serial", v2);
  v1 = qword_1ED7D11C0;
  qword_1ED7D11C0 = v0;
}

+ (id)createXPCConnection
{
  initWithDefaultService = [[UAFXPCConnection alloc] initWithDefaultService];

  return initWithDefaultService;
}

+ (id)createProxyXPCConnection
{
  initWithDefaultService = [[UAFXPCConnection alloc] initWithDefaultService];

  return initWithDefaultService;
}

+ (id)createSubscriptionXPCConnection
{
  initWithSubscriptionServiceName = [[UAFXPCConnection alloc] initWithSubscriptionServiceName];

  return initWithSubscriptionServiceName;
}

+ (id)_subscriptionDiffersFromDB:(id)b subscriber:(id)subscriber user:(id)user error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  bCopy = b;
  subscriberCopy = subscriber;
  userCopy = user;
  v11 = +[UAFSubscriptionStoreManager defaultManager];
  v29 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = bCopy;
  v12 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    errorCopy = error;
    v14 = 0;
    v15 = *v33;
    while (2)
    {
      v16 = 0;
      v17 = v14;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v32 + 1) + 8 * v16);
        v19 = objc_autoreleasePoolPush();
        v31 = v17;
        v20 = [v18 isValid:0 error:&v31];
        v14 = v31;

        if ((v20 & 1) == 0)
        {
          v23 = UAFGetLogCategory(&UAFLogContextSubscription);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315906;
            v37 = "+[UAFAssetSetManager _subscriptionDiffersFromDB:subscriber:user:error:]";
            v38 = 2114;
            v39 = subscriberCopy;
            v40 = 2114;
            v41 = v18;
            v42 = 2114;
            v43 = v14;
            _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, "%s Subscription invalid for subscriber %{public}@, subscription:%{public}@: %{public}@", buf, 0x2Au);
          }

          objc_autoreleasePoolPop(v19);
          v29 = 0;
          goto LABEL_16;
        }

        name = [v18 name];
        v22 = [v11 getSubscription:name subscriber:subscriberCopy user:userCopy error:0];

        if (!v22 || ([v18 isEqual:v22] & 1) == 0)
        {
          [v29 addObject:v18];
        }

        objc_autoreleasePoolPop(v19);
        ++v16;
        v17 = v14;
      }

      while (v13 != v16);
      v13 = [obj countByEnumeratingWithState:&v32 objects:v44 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

LABEL_16:
    error = errorCopy;
  }

  else
  {
    v14 = 0;
  }

  if (error)
  {
    v24 = v14;
    *error = v14;
  }

  allObjects = [v29 allObjects];

  return allObjects;
}

+ (id)getComparableUsages:(id)usages
{
  v3 = MEMORY[0x1E695DF90];
  usagesCopy = usages;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__UAFAssetSetManager_getComparableUsages___block_invoke;
  v8[3] = &unk_1E7FFE028;
  v6 = dictionary;
  v9 = v6;
  [usagesCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

void __42__UAFAssetSetManager_getComparableUsages___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = a2;
  v7 = [v5 setWithArray:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

+ (BOOL)subscribe:(id)subscribe subscriptions:(id)subscriptions user:(id)user storeManager:(id)manager configurationManager:(id)configurationManager userInitiated:(BOOL)initiated
{
  subscribeCopy = subscribe;
  subscriptionsCopy = subscriptions;
  userCopy = user;
  managerCopy = manager;
  configurationManagerCopy = configurationManager;
  if (!managerCopy)
  {
    managerCopy = +[UAFSubscriptionStoreManager writeManager];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v18 = +[UAFAssetSetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke;
  block[3] = &unk_1E7FFE4A0;
  v27 = subscriptionsCopy;
  v28 = subscribeCopy;
  v29 = userCopy;
  v30 = managerCopy;
  v31 = configurationManagerCopy;
  v32 = &v34;
  initiatedCopy = initiated;
  v19 = configurationManagerCopy;
  v20 = managerCopy;
  v21 = userCopy;
  v22 = subscribeCopy;
  v23 = subscriptionsCopy;
  dispatch_sync(v18, block);

  v24 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  return v24;
}

void __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v52 = 0;
  v5 = [UAFAssetSetManager _subscriptionDiffersFromDB:v2 subscriber:v3 user:v4 error:&v52];
  v6 = v52;
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if ([v5 count])
    {
      v10 = *(a1 + 56);
      v51 = 0;
      v11 = [v10 getAllSubscriptions:&v51];
      v8 = v51;
      if (v8)
      {
        v12 = UAFGetLogCategory(&UAFLogContextSubscription);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v54 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
          v55 = 2114;
          v56 = v8;
          _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Could not read subscriptions from database: %{public}@", buf, 0x16u);
        }

        *(*(*(a1 + 72) + 8) + 24) = 0;
      }

      else
      {
        v17 = [MEMORY[0x1E695DF90] dictionary];
        v48[0] = MEMORY[0x1E69E9820];
        v48[1] = 3221225472;
        v48[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_319;
        v48[3] = &unk_1E7FFE450;
        v18 = v17;
        v49 = v18;
        v37 = v11;
        v19 = v11;
        v50 = v19;
        [v19 enumerateKeysAndObjectsUsingBlock:v48];
        v20 = [v19 objectForKeyedSubscript:*(a1 + 48)];

        if (!v20 || ([v19 objectForKeyedSubscript:*(a1 + 48)], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "objectForKeyedSubscript:", *(a1 + 40)), v22 = objc_claimAutoreleasedReturnValue(), v21, !v22))
        {
          v22 = [MEMORY[0x1E695DEC8] array];
        }

        v36 = v22;
        v23 = objc_opt_new();
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_2;
        v46[3] = &unk_1E7FFDEF0;
        v24 = v23;
        v47 = v24;
        [v22 enumerateObjectsUsingBlock:v46];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_3;
        v44[3] = &unk_1E7FFDEF0;
        v25 = v24;
        v45 = v25;
        [v5 enumerateObjectsUsingBlock:v44];
        v26 = [v18 objectForKeyedSubscript:*(a1 + 48)];

        if (!v26)
        {
          v27 = objc_opt_new();
          [v18 setObject:v27 forKeyedSubscript:*(a1 + 48)];
        }

        v28 = [v25 allValues];
        v29 = [v18 objectForKeyedSubscript:*(a1 + 48)];
        [v29 setObject:v28 forKeyedSubscript:*(a1 + 40)];

        v30 = [UAFSubscriptionStoreManager flattenSubscriptions:v18];
        v38[0] = MEMORY[0x1E69E9820];
        v38[1] = 3221225472;
        v38[2] = __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_4;
        v38[3] = &unk_1E7FFE478;
        v39 = *(a1 + 48);
        v40 = *(a1 + 56);
        v41 = *(a1 + 40);
        v42 = v5;
        v43 = *(a1 + 32);
        v31 = MEMORY[0x1BFB33950](v38);
        v32 = [UAFSubscriptionStoreManager flattenSubscriptions:v19];
        [UAFAssetSetManager configureAssetDelivery:*(a1 + 56) configurationManager:*(a1 + 64) lockIfUnchanged:0 oldSubscriptions:v32 newSubscriptions:v30 userInitiated:*(a1 + 80)];
        *(*(*(a1 + 72) + 8) + 24) = v31[2](v31);

        v11 = v37;
      }
    }

    else
    {
      v13 = UAFGetLogCategory(&UAFLogContextSubscription);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 40);
        v16 = *(a1 + 48);
        *buf = 136315906;
        v54 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
        v55 = 2114;
        v56 = v14;
        v57 = 2114;
        v58 = v15;
        v59 = 2112;
        v60 = v16;
        _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s No subscription changes for subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
      }

      v8 = 0;
      *(*(*(a1 + 72) + 8) + 24) = 1;
    }
  }

  else
  {
    v8 = v6;
    v9 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      v35 = *(a1 + 48);
      *buf = 136316162;
      v54 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
      v55 = 2114;
      v56 = v33;
      v57 = 2114;
      v58 = v34;
      v59 = 2112;
      v60 = v35;
      v61 = 2114;
      v62 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Not attempting to update subscriptions for subscriptions %{public}@ for subscriber %{public}@ and user: %@: %{public}@", buf, 0x34u);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

void __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_319(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 objectForKeyedSubscript:v5];
  v6 = [v3 dictionaryWithDictionary:v7];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 name];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

void __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 name];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

uint64_t __99__UAFAssetSetManager_subscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_4(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v22 = 0;
  v3 = [UAFUser nodeForUser:v2 error:&v22];
  v4 = v22;
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v7 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      *buf = 136315650;
      v24 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke_4";
      v25 = 2112;
      v26 = v8;
      v27 = 2114;
      v28 = v5;
      v9 = "%s Failed to determine node for user '%@': %{public}@";
      v10 = v7;
      v11 = 32;
LABEL_15:
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, v9, buf, v11);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v12 = [*(a1 + 40) subscribe:*(a1 + 48) subscriptions:*(a1 + 56) user:*(a1 + 32) node:v3];
  v13 = UAFGetLogCategory(&UAFLogContextSubscription);
  v7 = v13;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v19 = *(a1 + 64);
      v20 = *(a1 + 48);
      v21 = *(a1 + 32);
      *buf = 136315906;
      v24 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      v29 = 2112;
      v30 = v21;
      v9 = "%s Failed to update storage to reflect subscriptions %{public}@ for subscriber %{public}@ and user: %@";
      v10 = v7;
      v11 = 42;
      goto LABEL_15;
    }

LABEL_12:

    v17 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = *(a1 + 32);
    *buf = 136315906;
    v24 = "+[UAFAssetSetManager subscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
    v25 = 2114;
    v26 = v14;
    v27 = 2114;
    v28 = v15;
    v29 = 2112;
    v30 = v16;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Updated storage to reflect subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
  }

  [UAFInstrumentationProvider logSubscriptionCompleteForSubscriptions:*(a1 + 56) subscriber:*(a1 + 48) user:*(a1 + 32)];
  v17 = 1;
LABEL_13:

  return v17;
}

+ (BOOL)unsubscribe:(id)unsubscribe subscriptions:(id)subscriptions user:(id)user storeManager:(id)manager configurationManager:(id)configurationManager userInitiated:(BOOL)initiated
{
  unsubscribeCopy = unsubscribe;
  subscriptionsCopy = subscriptions;
  userCopy = user;
  managerCopy = manager;
  configurationManagerCopy = configurationManager;
  if (!managerCopy)
  {
    managerCopy = +[UAFSubscriptionStoreManager writeManager];
  }

  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v18 = +[UAFAssetSetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke;
  block[3] = &unk_1E7FFE4A0;
  v27 = subscriptionsCopy;
  v28 = managerCopy;
  v29 = unsubscribeCopy;
  v30 = userCopy;
  v31 = configurationManagerCopy;
  v32 = &v34;
  initiatedCopy = initiated;
  v19 = configurationManagerCopy;
  v20 = userCopy;
  v21 = unsubscribeCopy;
  v22 = managerCopy;
  v23 = subscriptionsCopy;
  dispatch_sync(v18, block);

  v24 = *(v35 + 24);
  _Block_object_dispose(&v34, 8);
  return v24;
}

void __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v42;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v42 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v41 + 1) + 8 * i);
        v10 = [*(a1 + 40) getSubscription:v9 subscriber:*(a1 + 48) user:*(a1 + 56) error:0];
        if (v10)
        {
          [v2 addObject:v9];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v11 = *(a1 + 40);
    v40 = 0;
    v12 = [v11 getAllSubscriptions:&v40];
    v13 = v40;
    if (v13)
    {
      v14 = UAFGetLogCategory(&UAFLogContextSubscription);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
        v47 = 2114;
        v48 = v13;
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, "%s Could not read subscriptions from database: %{public}@", buf, 0x16u);
      }

      *(*(*(a1 + 72) + 8) + 24) = 0;
    }

    else
    {
      v19 = [MEMORY[0x1E695DF90] dictionary];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_327;
      v37[3] = &unk_1E7FFE450;
      v20 = v19;
      v38 = v20;
      v30 = v12;
      v21 = v12;
      v39 = v21;
      [v21 enumerateKeysAndObjectsUsingBlock:v37];
      v22 = [v21 objectForKeyedSubscript:*(a1 + 56)];

      if (!v22 || ([v21 objectForKeyedSubscript:*(a1 + 56)], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "objectForKeyedSubscript:", *(a1 + 48)), v24 = objc_claimAutoreleasedReturnValue(), v23, !v24))
      {
        v24 = [MEMORY[0x1E695DEC8] array];
      }

      v25 = [MEMORY[0x1E695DF70] arrayWithArray:v24];
      [v25 removeObjectsInArray:v3];
      v26 = [v20 objectForKeyedSubscript:*(a1 + 56)];
      [v26 setObject:v25 forKeyedSubscript:*(a1 + 48)];

      v27 = [UAFSubscriptionStoreManager flattenSubscriptions:v20];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_2;
      v31[3] = &unk_1E7FFE478;
      v32 = *(a1 + 40);
      v33 = *(a1 + 56);
      v34 = *(a1 + 48);
      v35 = v2;
      v36 = *(a1 + 32);
      v28 = MEMORY[0x1BFB33950](v31);
      v29 = [UAFSubscriptionStoreManager flattenSubscriptions:v21];
      [UAFAssetSetManager configureAssetDelivery:*(a1 + 40) configurationManager:*(a1 + 64) lockIfUnchanged:0 oldSubscriptions:v29 newSubscriptions:v27 userInitiated:*(a1 + 80)];
      *(*(*(a1 + 72) + 8) + 24) = v28[2](v28);

      v12 = v30;
    }
  }

  else
  {
    v15 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      *buf = 136315906;
      v46 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
      v47 = 2114;
      v48 = v16;
      v49 = 2114;
      v50 = v17;
      v51 = 2112;
      v52 = v18;
      _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, "%s No changes found for subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
    }

    v13 = 0;
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

void __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_327(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DF90];
  v4 = *(a1 + 40);
  v5 = a2;
  v7 = [v4 objectForKeyedSubscript:v5];
  v6 = [v3 dictionaryWithDictionary:v7];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

uint64_t __101__UAFAssetSetManager_unsubscribe_subscriptions_user_storeManager_configurationManager_userInitiated___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v25 = 0;
  v4 = [v2 getUserNodeName:v3 error:&v25];
  v5 = v25;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 40);
      *buf = 136315650;
      v27 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke_2";
      v28 = 2112;
      v29 = v9;
      v30 = 2114;
      v31 = v6;
      v10 = "%s Failed to determine node for user '%@': %{public}@";
      v11 = v8;
      v12 = 32;
LABEL_15:
      _os_log_error_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v15 = [*(a1 + 56) allObjects];
  LOBYTE(v14) = [v13 unsubscribe:v14 subscriptions:v15 user:*(a1 + 40) node:v4];

  v16 = UAFGetLogCategory(&UAFLogContextSubscription);
  v8 = v16;
  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v22 = *(a1 + 64);
      v24 = *(a1 + 40);
      v23 = *(a1 + 48);
      *buf = 136315906;
      v27 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
      v28 = 2114;
      v29 = v22;
      v30 = 2114;
      v31 = v23;
      v32 = 2112;
      v33 = v24;
      v10 = "%s Failed to update storage to reflect subscriptions %{public}@ for subscriber %{public}@ and user: %@";
      v11 = v8;
      v12 = 42;
      goto LABEL_15;
    }

LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 64);
    v19 = *(a1 + 40);
    v18 = *(a1 + 48);
    *buf = 136315906;
    v27 = "+[UAFAssetSetManager unsubscribe:subscriptions:user:storeManager:configurationManager:userInitiated:]_block_invoke";
    v28 = 2114;
    v29 = v17;
    v30 = 2114;
    v31 = v18;
    v32 = 2112;
    v33 = v19;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Updated storage to reflect removal of subscriptions %{public}@ for subscriber %{public}@ and user: %@", buf, 0x2Au);
  }

  v20 = 1;
LABEL_13:

  return v20;
}

+ (id)getSubscriptions:(id)subscriptions storeManager:(id)manager
{
  v17 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  managerCopy = manager;
  v12 = 0;
  v7 = [UAFUser currentUserWithNode:0 error:&v12];
  v8 = v12;
  if (v7)
  {
    v9 = [UAFAssetSetSubscriptionManager getSubscriptions:subscriptionsCopy user:v7 storeManager:managerCopy error:0];
  }

  else
  {
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "+[UAFAssetSetManager getSubscriptions:storeManager:]";
      v15 = 2112;
      v16 = v8;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Unable to identify current user: %@", buf, 0x16u);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)getAssetSetUsages:(id)usages storeManager:(id)manager
{
  usagesCopy = usages;
  managerCopy = manager;
  if (!managerCopy)
  {
    managerCopy = +[UAFSubscriptionStoreManager defaultManager];
  }

  v7 = [managerCopy getSystemAssetSetUsages:usagesCopy];

  return v7;
}

- (id)assetSetUsagesForSubscribers:(id)subscribers storeManager:(id)manager configurationManager:(id)configurationManager anyUnknown:(BOOL *)unknown error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  subscribersCopy = subscribers;
  managerCopy = manager;
  configurationManagerCopy = configurationManager;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v13 = subscribersCopy;
  v14 = [v13 countByEnumeratingWithState:&v53 objects:v64 count:16];
  if (v14)
  {
    v15 = v14;
    v46 = 0;
    v16 = *v54;
    v42 = *v54;
    v43 = v13;
LABEL_3:
    v17 = 0;
    v44 = v15;
    while (1)
    {
      if (*v54 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v45 = v17;
      v18 = *(*(&v53 + 1) + 8 * v17);
      v19 = [v13 objectForKeyedSubscript:v18];
      v20 = [v19 count];

      if (v20)
      {
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v21 = [v13 objectForKeyedSubscript:v18];
        v22 = [v21 countByEnumeratingWithState:&v48 objects:v57 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = 0;
          v25 = *v49;
          do
          {
            for (i = 0; i != v23; ++i)
            {
              v27 = v24;
              if (*v49 != v25)
              {
                objc_enumerationMutation(v21);
              }

              v24 = [(UAFAssetSetManager *)self subscriptions:*(*(&v48 + 1) + 8 * i) subscriber:v18 user:0 storeManager:managerCopy error:error];

              if (v24 && [v24 count])
              {
                v28 = v46;
                if (!v46)
                {
                  v28 = objc_opt_new();
                }

                v46 = v28;
                [v28 addObjectsFromArray:v24];
              }

              else if (unknown)
              {
                *unknown = 1;
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v48 objects:v57 count:16];
          }

          while (v23);

          v16 = v42;
          v13 = v43;
          v15 = v44;
        }
      }

      else
      {
        v52 = 0;
        v21 = [(UAFAssetSetManager *)self subscriptions:0 subscriber:v18 user:0 storeManager:managerCopy error:&v52];
        v29 = v52;
        if (v29)
        {
          v32 = v29;
          v33 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = geteuid();
            *buf = 136316162;
            v59 = "[UAFAssetSetManager assetSetUsagesForSubscribers:storeManager:configurationManager:anyUnknown:error:]";
            v60 = 1024;
            *v61 = v34;
            *&v61[4] = 2114;
            *&v61[6] = v18;
            *&v61[14] = 2114;
            *&v61[16] = 0;
            v62 = 2114;
            v63 = v32;
            _os_log_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEFAULT, "%s Unable to get subscriptions for uid: %d Subscriber: '%{public}@' Subscription Name: '%{public}@': %{public}@", buf, 0x30u);
          }

          if (error)
          {
            v35 = v32;
            *error = v32;
          }

          v36 = 0;
          v37 = configurationManagerCopy;
          v38 = v46;
          goto LABEL_43;
        }

        if (!v21)
        {
          if (unknown)
          {
            *unknown = 1;
          }

          goto LABEL_28;
        }

        v30 = v46;
        if (!v46)
        {
          v30 = objc_opt_new();
        }

        v46 = v30;
        [v30 addObjectsFromArray:v21];
      }

LABEL_28:
      v17 = v45 + 1;
      if (v45 + 1 == v15)
      {
        v31 = [v13 countByEnumeratingWithState:&v53 objects:v64 count:16];
        v15 = v31;
        if (v31)
        {
          goto LABEL_3;
        }

        goto LABEL_40;
      }
    }
  }

  v46 = 0;
LABEL_40:

  v39 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v59 = "[UAFAssetSetManager assetSetUsagesForSubscribers:storeManager:configurationManager:anyUnknown:error:]";
    v60 = 2114;
    *v61 = v13;
    *&v61[8] = 2114;
    *&v61[10] = v46;
    _os_log_debug_impl(&dword_1BCF2C000, v39, OS_LOG_TYPE_DEBUG, "%s Subscriptions for %{public}@: %{public}@", buf, 0x20u);
  }

  v37 = configurationManagerCopy;
  v38 = v46;
  v36 = [configurationManagerCopy applySubscriptions:v46];
LABEL_43:

  return v36;
}

- (void)updateAssetsForSubscribers:(id)subscribers policies:(id)policies queue:(id)queue progress:(id)progress detailedProgress:(id)detailedProgress internalProgress:(id)internalProgress completion:(id)completion storeManager:(id)self0 configurationManager:(id)self1
{
  v84 = *MEMORY[0x1E69E9840];
  subscribersCopy = subscribers;
  policiesCopy = policies;
  queueCopy = queue;
  progressCopy = progress;
  detailedProgressCopy = detailedProgress;
  internalProgressCopy = internalProgress;
  completionCopy = completion;
  managerCopy = manager;
  configurationManagerCopy = configurationManager;
  v21 = configurationManagerCopy;
  if (managerCopy)
  {
    if (configurationManagerCopy)
    {
      goto LABEL_3;
    }

LABEL_15:
    v21 = +[UAFConfigurationManager defaultManager];
    if (queueCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  managerCopy = +[UAFSubscriptionStoreManager defaultManager];
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (queueCopy)
  {
    goto LABEL_4;
  }

LABEL_16:
  queueCopy = +[UAFAssetSetManager getConcurrentQueue];
LABEL_4:
  v22 = objc_alloc_init(MEMORY[0x1E696AFB0]);
  v23 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v80 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]";
    v81 = 2114;
    *v82 = v22;
    *&v82[8] = 2114;
    *&v82[10] = subscribersCopy;
    _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s %{public}@: updateAssets for subscribers '%{public}@'", buf, 0x20u);
  }

  v54 = queueCopy;
  v55 = v22;

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v24 = policiesCopy;
  v25 = [v24 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v28 = *v76;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v76 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v27 |= [*(*(&v75 + 1) + 8 * i) isEqualToString:@"UseCellular"];
      }

      v26 = [v24 countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v26);
  }

  else
  {
    LOBYTE(v27) = 0;
  }

  if ([subscribersCopy count])
  {
    v73 = 0;
    v30 = &v73;
    v31 = [(UAFAssetSetManager *)self assetSetUsagesForSubscribers:subscribersCopy storeManager:managerCopy configurationManager:v21 anyUnknown:0 error:&v73];
  }

  else
  {
    v74 = 0;
    v30 = &v74;
    v31 = [managerCopy getAllSystemAssetSetUsages:&v74];
  }

  v32 = v31;
  v33 = *v30;
  v34 = UAFGetLogCategory(&UAFLogContextClient);
  v35 = v34;
  if (v33)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v36 = geteuid();
      *buf = 136315906;
      v80 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]";
      v81 = 1024;
      *v82 = v36;
      *&v82[4] = 2114;
      *&v82[6] = subscribersCopy;
      *&v82[14] = 2114;
      *&v82[16] = v33;
      _os_log_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEFAULT, "%s Unable to get asset set usages for uid: %d Subscribers: '%{public}@': %{public}@", buf, 0x26u);
    }

    v38 = completionCopy;
    v37 = v54;
    if (completionCopy)
    {
      dispatch_async(v54, completionCopy);
    }
  }

  else
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v80 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]";
      v81 = 2114;
      *v82 = v32;
      _os_log_debug_impl(&dword_1BCF2C000, v35, OS_LOG_TYPE_DEBUG, "%s All asset set usages now %{public}@", buf, 0x16u);
    }

    v52 = managerCopy;

    subscribersCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", subscribersCopy];
    v49 = subscribersCopy;
    v50 = subscribersCopy;
    if (progressCopy || detailedProgressCopy || internalProgressCopy)
    {
      v40 = v32;
      v43 = [UAFAssetSetProgress alloc];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke;
      v68[3] = &unk_1E7FFE4F0;
      v69 = v54;
      v70 = internalProgressCopy;
      v71 = progressCopy;
      v72 = detailedProgressCopy;
      v44 = [(UAFAssetSetProgress *)v43 initWithName:subscribersCopy maxProgressBeforeComplete:100 progressWithStatus:v68];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_3;
      v66[3] = &unk_1E7FFE518;
      v41 = v44;
      v67 = v41;
      v42 = MEMORY[0x1BFB33950](v66);
    }

    else
    {
      v40 = v32;
      v41 = 0;
      v42 = 0;
    }

    v45 = dispatch_group_create();
    dispatch_group_enter(v45);
    v64[0] = MEMORY[0x1E69E9820];
    v64[1] = 3221225472;
    v64[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_4;
    v64[3] = &unk_1E7FFCFD0;
    v65 = v45;
    v46 = v45;
    [UAFAutoAssetManager updateAutoAssetsFromAssetSetUsages:v40 configurationManager:v21 expensiveNetworking:v27 & 1 progress:v42 requestId:v55 completion:v64];
    v47 = +[UAFAssetSetManager getConcurrentQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_5;
    block[3] = &unk_1E7FFD670;
    v60 = v41;
    v63 = completionCopy;
    v61 = v55;
    v37 = v54;
    v62 = v54;
    v48 = v41;
    dispatch_group_notify(v46, v47, block);

    v32 = v40;
    v38 = completionCopy;

    subscribersCopy = v50;
    managerCopy = v52;
    v33 = 0;
  }
}

void __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, double a7)
{
  v13 = a6;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_2;
  block[3] = &unk_1E7FFE4C8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 40);
  v22 = a7;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v18 = v13;
  v19 = v15;
  v20 = *(a1 + 48);
  v21 = *(a1 + 56);
  v16 = v13;
  dispatch_async(v14, block);
}

void __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 32), *(a1 + 64));
  }

  if (*(a1 + 96) == 1)
  {
    v3 = *(a1 + 48);
    if (v3)
    {
      (*(v3 + 16))(v3, *(a1 + 88), *(a1 + 64));
    }

    if (*(a1 + 56))
    {
      v4 = [[UAFAssetSetStatus alloc] initWithStatus:*(a1 + 88) percent:*(a1 + 72) completedBytes:*(a1 + 80) totalBytes:*(a1 + 64)];
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_5(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_6;
    v5[3] = &unk_1E7FFE540;
    v8 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    [v2 updateFinished:v5];
  }

  else if (*(a1 + 56))
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 40);
      *buf = 136315394;
      v10 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]_block_invoke";
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Dispatching completion method for Request ID %{public}@", buf, 0x16u);
    }

    dispatch_async(*(a1 + 48), *(a1 + 56));
  }
}

void __152__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_progress_detailedProgress_internalProgress_completion_storeManager_configurationManager___block_invoke_6(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = 136315394;
      v5 = "[UAFAssetSetManager updateAssetsForSubscribers:policies:queue:progress:detailedProgress:internalProgress:completion:storeManager:configurationManager:]_block_invoke_6";
      v6 = 2114;
      v7 = v3;
      _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Dispatching completion method for Request ID %{public}@", &v4, 0x16u);
    }

    dispatch_async(*(a1 + 40), *(a1 + 48));
  }
}

- (void)updateAssetsForSubscriber:(id)subscriber subscriptionName:(id)name policies:(id)policies queue:(id)queue progress:(id)progress detailedProgress:(id)detailedProgress completion:(id)completion storeManager:(id)self0 configurationManager:(id)self1
{
  managerCopy3 = manager;
  configurationManagerCopy3 = configurationManager;
  completionCopy3 = completion;
  v49[1] = *MEMORY[0x1E69E9840];
  if (name)
  {
    nameCopy = name;
    subscriberCopy = subscriber;
    v43 = MEMORY[0x1E695DEC8];
    configurationManagerCopy2 = configurationManager;
    managerCopy2 = manager;
    completionCopy2 = completion;
    detailedProgressCopy = detailedProgress;
    progressCopy = progress;
    queueCopy = queue;
    policiesCopy = policies;
    detailedProgressCopy2 = detailedProgress;
    progressCopy2 = progress;
    queueCopy2 = queue;
    policiesCopy2 = policies;
    nameCopy2 = name;
    subscriberCopy2 = subscriber;
    subscriberCopy4 = [v43 arrayWithObjects:&nameCopy count:1];
    v49[0] = subscriberCopy4;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&subscriberCopy count:1];

    policies = policiesCopy2;
    queue = queueCopy2;
    progress = progressCopy2;
    detailedProgress = detailedProgressCopy2;
    completionCopy3 = completion;
    managerCopy3 = manager;
    configurationManagerCopy3 = configurationManager;
  }

  else
  {
    subscriberCopy3 = subscriber;
    v46 = MEMORY[0x1E695E0F0];
    v35 = MEMORY[0x1E695DF20];
    configurationManagerCopy4 = configurationManager;
    managerCopy4 = manager;
    completionCopy4 = completion;
    detailedProgressCopy3 = detailedProgress;
    progressCopy3 = progress;
    queueCopy3 = queue;
    policiesCopy3 = policies;
    subscriberCopy4 = subscriber;
    v34 = [v35 dictionaryWithObjects:&v46 forKeys:&subscriberCopy3 count:1];
    subscriberCopy2 = 0;
  }

  [(UAFAssetSetManager *)self updateAssetsForSubscribers:v34 policies:policies queue:queue progress:progress detailedProgress:detailedProgress internalProgress:0 completion:completionCopy3 storeManager:managerCopy3 configurationManager:configurationManagerCopy3];
}

- (id)diskSpaceNeededForSubscribers:(id)subscribers storeManager:(id)manager configurationManager:(id)configurationManager error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  subscribersCopy = subscribers;
  managerCopy = manager;
  configurationManagerCopy = configurationManager;
  v13 = configurationManagerCopy;
  if (managerCopy)
  {
    if (configurationManagerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    managerCopy = +[UAFSubscriptionStoreManager defaultManager];
    if (v13)
    {
      goto LABEL_3;
    }
  }

  v13 = +[UAFConfigurationManager defaultManager];
LABEL_3:
  v14 = &unk_1F3B731D0;
  v24 = 0;
  v15 = [(UAFAssetSetManager *)self assetSetUsagesForSubscribers:subscribersCopy storeManager:managerCopy configurationManager:v13 anyUnknown:0 error:&v24];
  v16 = v24;
  v17 = UAFGetLogCategory(&UAFLogContextClient);
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v19 = geteuid();
      *buf = 136315906;
      v26 = "[UAFAssetSetManager diskSpaceNeededForSubscribers:storeManager:configurationManager:error:]";
      v27 = 1024;
      *v28 = v19;
      *&v28[4] = 2114;
      *&v28[6] = subscribersCopy;
      v29 = 2114;
      v30 = v16;
      _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Unable to get asset set usages for uid: %d Subscribers: '%{public}@': %{public}@", buf, 0x26u);
    }

    if (error)
    {
      v20 = v16;
      *error = v16;
    }
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v26 = "[UAFAssetSetManager diskSpaceNeededForSubscribers:storeManager:configurationManager:error:]";
      v27 = 2114;
      *v28 = v15;
      _os_log_debug_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEBUG, "%s All asset set usages now %{public}@", buf, 0x16u);
    }

    v21 = [UAFAutoAssetManager spaceNeededForAssetSetUsages:v15 key:@"_UnarchivedSize" configurationManager:v13 error:error];

    v14 = v21;
  }

  v22 = v14;

  return v14;
}

- (id)diskSpaceNeededForSubscribers:(id)subscribers error:(id *)error
{
  subscribersCopy = subscribers;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__9;
  v19 = __Block_byref_object_dispose__9;
  v20 = 0;
  v7 = _os_activity_create(&dword_1BCF2C000, "UAF.diskSpaceNeededForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__UAFAssetSetManager_diskSpaceNeededForSubscribers_error___block_invoke;
  v11[3] = &unk_1E7FFE568;
  v11[4] = self;
  v12 = subscribersCopy;
  v13 = &v15;
  errorCopy = error;
  v8 = subscribersCopy;
  os_activity_apply(v7, v11);

  v9 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v9;
}

void __58__UAFAssetSetManager_diskSpaceNeededForSubscribers_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) diskSpaceNeededForSubscribers:*(a1 + 40) storeManager:0 configurationManager:0 error:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)diskSpaceNeededForSubscriber:(id)subscriber subscriptionName:(id)name error:(id *)error
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (name)
  {
    nameCopy = name;
    subscriberCopy = subscriber;
    v8 = MEMORY[0x1E695DEC8];
    nameCopy2 = name;
    subscriberCopy2 = subscriber;
    subscriberCopy4 = [v8 arrayWithObjects:&nameCopy count:1];
    v20[0] = subscriberCopy4;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&subscriberCopy count:1];
  }

  else
  {
    subscriberCopy3 = subscriber;
    v17 = MEMORY[0x1E695E0F0];
    v13 = MEMORY[0x1E695DF20];
    subscriberCopy4 = subscriber;
    v12 = [v13 dictionaryWithObjects:&v17 forKeys:&subscriberCopy3 count:1];
    subscriberCopy2 = 0;
  }

  v14 = [(UAFAssetSetManager *)self diskSpaceNeededForSubscribers:v12 storeManager:0 configurationManager:0 error:error];

  return v14;
}

+ (id)sysdiagnoseInformationWithError:(id *)error
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__9;
  v28 = __Block_byref_object_dispose__9;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__9;
  v22 = __Block_byref_object_dispose__9;
  v23 = 0;
  v4 = dispatch_group_create();
  v5 = +[UAFAssetSetManager createXPCConnection];
  dispatch_group_enter(v4);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__UAFAssetSetManager_sysdiagnoseInformationWithError___block_invoke;
  v13[3] = &unk_1E7FFE590;
  v6 = v5;
  v14 = v6;
  v16 = &v24;
  v17 = &v18;
  v7 = v4;
  v15 = v7;
  [v6 diagnosticInformation:v13];
  dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v19[5];
  }

  v8 = v25[5];
  if (!v8)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No output found: %@", v19[5]];
    v10 = v25[5];
    v25[5] = v9;

    v8 = v25[5];
  }

  v11 = v8;

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

void __54__UAFAssetSetManager_sysdiagnoseInformationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) invalidate];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 40));
}

+ (void)processAssetSet:(id)set allAssets:(id)assets
{
  v60 = *MEMORY[0x1E69E9840];
  setCopy = set;
  assetsCopy = assets;
  assets = [setCopy assets];
  v6 = +[UAFConfigurationManager defaultManager];
  name = [setCopy name];
  v8 = [v6 getAssetSet:name];

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v33 = v8;
  obj = [v8 assets];
  v38 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v38)
  {
    v36 = *v54;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v54 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v53 + 1) + 8 * i);
        name2 = [v10 name];
        v12 = [assets objectForKey:name2];

        if (v12)
        {
          v39 = v12;
          v40 = i;
          metadata = [v12 metadata];
          v14 = [metadata mutableCopy];

          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          expansions = [v10 expansions];
          v43 = [expansions countByEnumeratingWithState:&v49 objects:v58 count:16];
          if (v43)
          {
            v42 = *v50;
            do
            {
              v15 = 0;
              do
              {
                if (*v50 != v42)
                {
                  objc_enumerationMutation(expansions);
                }

                v44 = v15;
                v16 = *(*(&v49 + 1) + 8 * v15);
                v45 = 0u;
                v46 = 0u;
                v47 = 0u;
                v48 = 0u;
                requiredUsageTypes = [v16 requiredUsageTypes];
                v18 = [requiredUsageTypes countByEnumeratingWithState:&v45 objects:v57 count:16];
                if (v18)
                {
                  v19 = v18;
                  v20 = *v46;
                  do
                  {
                    for (j = 0; j != v19; ++j)
                    {
                      if (*v46 != v20)
                      {
                        objc_enumerationMutation(requiredUsageTypes);
                      }

                      v22 = *(*(&v45 + 1) + 8 * j);
                      usages = [setCopy usages];
                      v24 = [usages objectForKey:v22];

                      if (v24)
                      {
                        v25 = [@"com.apple.UnifiedAssetFramework.FoundUsageType." stringByAppendingString:v22];
                        [v14 setObject:v24 forKeyedSubscript:v25];
                      }
                    }

                    v19 = [requiredUsageTypes countByEnumeratingWithState:&v45 objects:v57 count:16];
                  }

                  while (v19);
                }

                v15 = v44 + 1;
              }

              while (v44 + 1 != v43);
              v43 = [expansions countByEnumeratingWithState:&v49 objects:v58 count:16];
            }

            while (v43);
          }

          v26 = [v14 count];
          v12 = v39;
          metadata2 = [v39 metadata];
          v28 = [metadata2 count];

          if (v26 <= v28)
          {
            [assetsCopy addObject:v39];
          }

          else
          {
            v29 = [UAFAsset alloc];
            name3 = [v39 name];
            location = [v39 location];
            v32 = [(UAFAsset *)v29 initWithName:name3 location:location metadata:v14];
            [assetsCopy addObject:v32];
          }

          i = v40;
        }
      }

      v38 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v38);
  }
}

+ (id)getSystemUsageAssets:(id)assets
{
  assetsCopy = assets;
  v5 = objc_opt_new();
  v6 = objc_autoreleasePoolPush();
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__UAFAssetSetManager_getSystemUsageAssets___block_invoke;
  v13[3] = &unk_1E7FFE5B8;
  selfCopy = self;
  v7 = v5;
  v14 = v7;
  v8 = MEMORY[0x1BFB33950](v13);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__UAFAssetSetManager_getSystemUsageAssets___block_invoke_350;
  v11[3] = &unk_1E7FFE5E0;
  v12 = v8;
  v9 = v8;
  [assetsCopy enumerateKeysAndObjectsUsingBlock:v11];

  objc_autoreleasePoolPop(v6);

  return v7;
}

void __43__UAFAssetSetManager_getSystemUsageAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [[UAFAssetSet alloc] initWithAssetSet:v5 usages:v6];
  if (!v7)
  {
    p_super = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315650;
      v14 = "+[UAFAssetSetManager getSystemUsageAssets:]_block_invoke";
      v15 = 2114;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      _os_log_error_impl(&dword_1BCF2C000, p_super, OS_LOG_TYPE_ERROR, "%s failed to init assetSet with assetSetName '%{public}@' and usages '%{public}@'", &v13, 0x20u);
    }

    goto LABEL_10;
  }

  [*(a1 + 40) processAssetSet:v7 allAssets:*(a1 + 32)];
  v8 = [(UAFAssetSet *)v7 experimentId];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [[UAFAssetSet alloc] initWithAssetSet:v5 usages:v6 disableExperimentation:1];
    if (v10)
    {
      p_super = &v10->super;
      [*(a1 + 40) processAssetSet:v10 allAssets:*(a1 + 32)];
    }

    else
    {
      v12 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 136315650;
        v14 = "+[UAFAssetSetManager getSystemUsageAssets:]_block_invoke";
        v15 = 2114;
        v16 = v5;
        v17 = 2114;
        v18 = v6;
        _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s failed to init assetSetWithoutExperimentation with assetSetName '%{public}@' and usages '%{public}@'", &v13, 0x20u);
      }

      p_super = 0;
    }

LABEL_10:
  }
}

void __43__UAFAssetSetManager_getSystemUsageAssets___block_invoke_350(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(a1 + 32) + 16))(*(a1 + 32));
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (id)generateInformationWithError:(id *)error
{
  v126 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v5 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v121 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Generating subscription log", buf, 0xCu);
  }

  v6 = +[UAFSubscriptionStoreManager defaultManager];
  v7 = objc_autoreleasePoolPush();
  v83 = v6;
  v8 = [v6 getAllSubscriptions:0];
  v9 = objc_opt_new();
  v112[0] = MEMORY[0x1E69E9820];
  v112[1] = 3221225472;
  v112[2] = __51__UAFAssetSetManager_generateInformationWithError___block_invoke;
  v112[3] = &unk_1E7FFE050;
  v10 = v9;
  v113 = v10;
  [v8 enumerateKeysAndObjectsUsingBlock:v112];

  objc_autoreleasePoolPop(v7);
  v79 = v10;
  [dictionary setObject:v10 forKeyedSubscript:@"Subscriptions"];
  v11 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v121 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Generating asset usages log", buf, 0xCu);
  }

  v111 = 0;
  v12 = [v83 getAllSystemAssetSetUsages:&v111];
  v13 = v111;
  if (v13)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v13];
    [dictionary2 setObject:v15 forKeyedSubscript:@"SystemAssetSetUsages"];

    if (error)
    {
      v16 = v13;
      *error = v13;
    }
  }

  else
  {
    [dictionary setObject:v12 forKeyedSubscript:@"SystemAssetSetUsages"];
    dictionary2 = 0;
  }

  v17 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v121 = "+[UAFAssetSetManager generateInformationWithError:]";
    v122 = 2114;
    v123 = v12;
    v124 = 2114;
    v125 = v13;
    _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s System AssetSetUsages: %{public}@, error = %{public}@", buf, 0x20u);
  }

  errorCopy = error;
  v81 = dictionary2;
  v84 = dictionary;

  v18 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v121 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Generating system asset log", buf, 0xCu);
  }

  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  context = objc_autoreleasePoolPush();
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v12;
  v19 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v108;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v108 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v107 + 1) + 8 * i);
        v24 = [[UAFAssetSet alloc] initWithAssetSet:v23 usages:0];
        v25 = v24;
        if (v24)
        {
          assetSetId = [(UAFAssetSet *)v24 assetSetId];
          if (assetSetId)
          {
            assetSetId2 = [(UAFAssetSet *)v25 assetSetId];
            [dictionary3 setObject:assetSetId2 forKeyedSubscript:v23];
          }

          else
          {
            [dictionary3 setObject:@"none" forKeyedSubscript:v23];
          }

          v28 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            assetSetId3 = [(UAFAssetSet *)v25 assetSetId];
            *buf = 136315650;
            v121 = "+[UAFAssetSetManager generateInformationWithError:]";
            v122 = 2114;
            v123 = v23;
            v124 = 2114;
            v125 = assetSetId3;
            _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s AssetSet Identifier: %{public}@: %{public}@", buf, 0x20u);
          }

          consistencyToken = [(UAFAssetSet *)v25 consistencyToken];
          jsonDictionary = [consistencyToken jsonDictionary];
          [dictionary4 setObject:jsonDictionary forKeyedSubscript:v23];

          v32 = UAFGetLogCategory(&UAFLogContextClient);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            consistencyToken2 = [(UAFAssetSet *)v25 consistencyToken];
            *buf = 136315650;
            v121 = "+[UAFAssetSetManager generateInformationWithError:]";
            v122 = 2114;
            v123 = v23;
            v124 = 2114;
            v125 = consistencyToken2;
            _os_log_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_DEFAULT, "%s AssetSet Token: %{public}@: %{public}@", buf, 0x20u);
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v107 objects:v119 count:16];
    }

    while (v20);
  }

  objc_autoreleasePoolPop(context);
  [v84 setObject:dictionary3 forKeyedSubscript:@"AssetSetIdentifiers"];
  [v84 setObject:dictionary4 forKeyedSubscript:@"AssetSetTokens"];
  v34 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v121 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEFAULT, "%s Generating expired asset set tokens", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v106 = 0;
  v35 = [UAFExpiredAssets expiredTokens:&v106];
  v78 = v106;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  contexta = v35;
  v36 = [contexta countByEnumeratingWithState:&v102 objects:v118 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v103;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v103 != v38)
        {
          objc_enumerationMutation(contexta);
        }

        v40 = *(*(&v102 + 1) + 8 * j);
        jsonDictionary2 = [v40 jsonDictionary];
        [array addObject:jsonDictionary2];

        v42 = UAFGetLogCategory(&UAFLogContextClient);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v121 = "+[UAFAssetSetManager generateInformationWithError:]";
          v122 = 2114;
          v123 = v40;
          _os_log_impl(&dword_1BCF2C000, v42, OS_LOG_TYPE_DEFAULT, "%s Expired Asset Set Token: %{public}@", buf, 0x16u);
        }
      }

      v37 = [contexta countByEnumeratingWithState:&v102 objects:v118 count:16];
    }

    while (v37);
  }

  [v84 setObject:array forKeyedSubscript:@"ExpiredAssetSetTokens"];
  v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [UAFAssetSetManager getSystemUsageAssets:obj];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v44 = v101 = 0u;
  v45 = [v44 countByEnumeratingWithState:&v98 objects:v117 count:16];
  dictionary5 = v81;
  if (v45)
  {
    v47 = v45;
    v48 = *v99;
    do
    {
      for (k = 0; k != v47; ++k)
      {
        if (*v99 != v48)
        {
          objc_enumerationMutation(v44);
        }

        v50 = [*(*(&v98 + 1) + 8 * k) propertiesAsDictionary:1];
        [v43 addObject:v50];
      }

      v47 = [v44 countByEnumeratingWithState:&v98 objects:v117 count:16];
    }

    while (v47);
  }

  [v84 setObject:v43 forKeyedSubscript:@"SystemAssets"];
  v51 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v121 = "+[UAFAssetSetManager generateInformationWithError:]";
    _os_log_impl(&dword_1BCF2C000, v51, OS_LOG_TYPE_DEFAULT, "%s Generating system configuration log", buf, 0xCu);
  }

  v97 = 0;
  v52 = [v83 getAllSystemConfiguration:&v97];
  v53 = v97;
  if (v53)
  {
    if (!v81)
    {
      dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    }

    v54 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v53];
    [dictionary5 setObject:v54 forKeyedSubscript:@"SystemConfigKey"];

    if (errorCopy)
    {
      v55 = v53;
      *errorCopy = v53;
    }
  }

  else
  {
    [v84 setObject:v52 forKeyedSubscript:@"SystemConfigKey"];
  }

  v82 = dictionary5;
  v56 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v121 = "+[UAFAssetSetManager generateInformationWithError:]";
    v122 = 2114;
    v123 = v52;
    v124 = 2114;
    v125 = v53;
    _os_log_impl(&dword_1BCF2C000, v56, OS_LOG_TYPE_DEFAULT, "%s System Configuration: %{public}@, error = %{public}@", buf, 0x20u);
  }

  v85 = v52;

  v57 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v58 = +[UAFAssetSetManager sharedManager];
  v59 = [v58 assetSetInfo:0];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v60 = v59;
  v61 = [v60 countByEnumeratingWithState:&v93 objects:v116 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v94;
    do
    {
      for (m = 0; m != v62; ++m)
      {
        if (*v94 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v114 = *(*(&v93 + 1) + 8 * m);
        v65 = [v60 objectForKeyedSubscript:?];
        v115 = v65;
        v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
        [v57 addObject:v66];
      }

      v62 = [v60 countByEnumeratingWithState:&v93 objects:v116 count:16];
    }

    while (v62);
  }

  [v84 setObject:v57 forKeyedSubscript:@"AssetSetConfiguration"];
  v67 = objc_autoreleasePoolPush();
  v68 = +[UAFAutoAssetHistory getPersistedAssetInfo];
  objc_autoreleasePoolPop(v67);
  [v84 setObject:v68 forKeyedSubscript:@"PersistedAssetInfo"];
  v69 = objc_autoreleasePoolPush();
  v70 = +[UAFAssetSetManager defaults];
  dictionaryRepresentation = [v70 dictionaryRepresentation];

  objc_autoreleasePoolPop(v69);
  [v84 setObject:0 forKeyedSubscript:@"Preferences"];
  if (v82)
  {
    v72 = v82;
  }

  else
  {
    v72 = &unk_1F3B732C0;
  }

  [v84 setObject:v72 forKeyedSubscript:@"Errors"];
  v73 = objc_autoreleasePoolPush();
  v92 = 0;
  v74 = [UAFCommonUtilities bestEffortSerializeDictToJSONStr:v84 error:&v92];
  v75 = v92;
  objc_autoreleasePoolPop(v73);
  if (errorCopy)
  {
    v76 = v75;
    *errorCopy = v75;
  }

  return v74;
}

void __51__UAFAssetSetManager_generateInformationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionary];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__UAFAssetSetManager_generateInformationWithError___block_invoke_2;
  v10[3] = &unk_1E7FFE028;
  v11 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __51__UAFAssetSetManager_generateInformationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = a2;
  v8 = objc_alloc_init(v5);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__UAFAssetSetManager_generateInformationWithError___block_invoke_3;
  v10[3] = &unk_1E7FFDEF0;
  v11 = v8;
  v9 = v8;
  [v6 enumerateObjectsUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __51__UAFAssetSetManager_generateInformationWithError___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 propertiesAsDictionary];
  [v2 addObject:v3];
}

+ (void)configureAssetDelivery:(id)delivery configurationManager:(id)manager lockIfUnchanged:(BOOL)unchanged oldSubscriptions:(id)subscriptions newSubscriptions:(id)newSubscriptions userInitiated:(BOOL)initiated
{
  initiatedCopy = initiated;
  unchangedCopy = unchanged;
  v29 = *MEMORY[0x1E69E9840];
  deliveryCopy = delivery;
  managerCopy = manager;
  subscriptionsCopy = subscriptions;
  newSubscriptionsCopy = newSubscriptions;
  v17 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v26 = "+[UAFAssetSetManager configureAssetDelivery:configurationManager:lockIfUnchanged:oldSubscriptions:newSubscriptions:userInitiated:]";
    _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Configuring asset delivery systems", buf, 0xCu);
  }

  v18 = +[UAFAssetSetManager getSerialQueue];
  dispatch_assert_queue_V2(v18);

  if (deliveryCopy)
  {
    if (managerCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    deliveryCopy = +[UAFSubscriptionStoreManager writeManager];
    if (managerCopy)
    {
LABEL_5:
      if (newSubscriptionsCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  managerCopy = +[UAFConfigurationManager defaultManager];
  if (newSubscriptionsCopy)
  {
    goto LABEL_12;
  }

LABEL_9:
  v24 = 0;
  v19 = [deliveryCopy getAllSubscriptions:&v24];
  v20 = v24;
  v21 = v20;
  if (v19 && !v20)
  {
    newSubscriptionsCopy = [UAFSubscriptionStoreManager flattenSubscriptions:v19];

LABEL_12:
    [UAFAutoAssetManager configureAutoAssetsFromNewSubscriptions:newSubscriptionsCopy oldSubscriptions:subscriptionsCopy configurationManager:managerCopy lockIfUnchanged:unchangedCopy userInitiated:initiatedCopy];
    if (!subscriptionsCopy)
    {
      v22 = [deliveryCopy updateSystemAssetSetUsages:0];
    }

    goto LABEL_17;
  }

  v23 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "+[UAFAssetSetManager configureAssetDelivery:configurationManager:lockIfUnchanged:oldSubscriptions:newSubscriptions:userInitiated:]";
    v27 = 2114;
    v28 = v21;
    _os_log_error_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_ERROR, "%s Could not get subscriptions: %{public}@", buf, 0x16u);
  }

  newSubscriptionsCopy = 0;
LABEL_17:
}

+ (void)configureAssetDelivery:(id)delivery configurationManager:(id)manager lockIfUnchanged:(BOOL)unchanged
{
  deliveryCopy = delivery;
  managerCopy = manager;
  v9 = +[UAFAssetSetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__UAFAssetSetManager_configureAssetDelivery_configurationManager_lockIfUnchanged___block_invoke;
  block[3] = &unk_1E7FFD048;
  v13 = deliveryCopy;
  v14 = managerCopy;
  unchangedCopy = unchanged;
  v10 = managerCopy;
  v11 = deliveryCopy;
  dispatch_sync(v9, block);
}

+ (void)configureAssetDelivery:(id)delivery configurationManager:(id)manager
{
  deliveryCopy = delivery;
  managerCopy = manager;
  v7 = +[UAFAssetSetManager getSerialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__UAFAssetSetManager_configureAssetDelivery_configurationManager___block_invoke;
  v10[3] = &unk_1E7FFD098;
  v11 = deliveryCopy;
  v12 = managerCopy;
  v8 = managerCopy;
  v9 = deliveryCopy;
  dispatch_sync(v7, v10);
}

+ (unint64_t)coalesceDownloadStatus:(id)status
{
  v22 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = [statusCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = 4;
    v7 = *v18;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(statusCopy);
        }

        v9 = [statusCopy objectForKeyedSubscript:*(*(&v17 + 1) + 8 * v8)];
        unsignedIntValue = [v9 unsignedIntValue];

        if (unsignedIntValue > 4)
        {
          if (unsignedIntValue <= 6)
          {
            if (unsignedIntValue == 5)
            {
              v11 = (v6 - 7) < 2 || (v6 & 0xFFFFFFFFFFFFFFFDLL) == 4;
              v12 = 5;
            }

            else
            {
              v11 = v6 == 4;
              v12 = 6;
            }

LABEL_34:
            if (v11)
            {
              v6 = v12;
            }

            goto LABEL_36;
          }

          if (unsignedIntValue == 7)
          {
            v11 = (v6 & 0xFFFFFFFFFFFFFFFDLL) == 4;
            v12 = 7;
            goto LABEL_34;
          }

          if (unsignedIntValue == 8)
          {
            if ((v6 & 0xFFFFFFFFFFFFFFFDLL) == 4 || v6 == 7)
            {
              v6 = 8;
            }
          }

          else if (unsignedIntValue == 9 && v6 == 4)
          {
            v6 = 9;
          }
        }

        else
        {
          if (unsignedIntValue > 1)
          {
            if (unsignedIntValue == 2)
            {
              v11 = (v6 & 0xFFFFFFFFFFFFFFFELL) == 4;
              v12 = 2;
            }

            else
            {
              if (unsignedIntValue != 3)
              {
                ++v5;
                goto LABEL_36;
              }

              v11 = (v6 & 0xFFFFFFFFFFFFFFFELL) == 4 || v6 == 2;
              v12 = 3;
            }

            goto LABEL_34;
          }

          if (unsignedIntValue)
          {
            if (unsignedIntValue == 1)
            {
              v6 = v6 != 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

LABEL_36:
        ++v8;
      }

      while (v4 != v8);
      v14 = [statusCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
      v4 = v14;
      if (!v14)
      {
        v4 = v5;
        goto LABEL_47;
      }
    }
  }

  v6 = 4;
LABEL_47:
  if ([statusCopy count] == v4)
  {
    v15 = 4;
  }

  else
  {
    v15 = v6;
  }

  return v15;
}

- (id)retrieveAssetSet:(id)set usages:(id)usages consistencyToken:(id)token
{
  setCopy = set;
  usagesCopy = usages;
  tokenCopy = token;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v10 = _os_activity_create(&dword_1BCF2C000, "UAF.retrieveAssetSetWithToken", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken___block_invoke;
  v16[3] = &unk_1E7FFE608;
  v17 = setCopy;
  v18 = usagesCopy;
  v19 = tokenCopy;
  v20 = &v21;
  v11 = tokenCopy;
  v12 = usagesCopy;
  v13 = setCopy;
  os_activity_apply(v10, v16);

  v14 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v14;
}

void __63__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken___block_invoke(void *a1)
{
  v2 = [[UAFAssetSet alloc] initWithAssetSet:a1[4] usages:a1[5] configurationDirURLs:0 disableExperimentation:0 consistencyToken:a1[6]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)retrieveAssetSet:(id)set usages:(id)usages consistencyToken:(id)token queue:(id)queue completion:(id)completion
{
  setCopy = set;
  usagesCopy = usages;
  tokenCopy = token;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFAssetSetManager getConcurrentQueue];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  v22 = setCopy;
  v23 = usagesCopy;
  v24 = tokenCopy;
  v25 = queueCopy;
  v26 = completionCopy;
  v16 = completionCopy;
  v17 = queueCopy;
  v18 = tokenCopy;
  v19 = usagesCopy;
  v20 = setCopy;
  dispatch_async(v17, block);
}

void __80__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken_queue_completion___block_invoke(uint64_t a1)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = [[UAFAssetSet alloc] initWithAssetSet:*(a1 + 32) usages:*(a1 + 40) configurationDirURLs:0 disableExperimentation:0 consistencyToken:*(a1 + 48)];
  v2 = [v13[5] autoAssetSetError];
  v3 = [UAFAutoAssetManager shouldWaitForMobileAssetStart:v2];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 56);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __80__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken_queue_completion___block_invoke_2;
    v6[3] = &unk_1E7FFE630;
    v11 = &v12;
    v7 = v4;
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = *(a1 + 64);
    [UAFAutoAssetManager waitForMobileAssetStart:v7 queue:v5 completion:v6];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }

  _Block_object_dispose(&v12, 8);
}

uint64_t __80__UAFAssetSetManager_retrieveAssetSet_usages_consistencyToken_queue_completion___block_invoke_2(void *a1)
{
  v2 = [[UAFAssetSet alloc] initWithAssetSet:a1[4] usages:a1[5] configurationDirURLs:0 disableExperimentation:0 consistencyToken:a1[6]];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1[7] + 16);

  return v5();
}

- (void)retrieveAssetSet:(id)set usages:(id)usages queue:(id)queue completion:(id)completion
{
  setCopy = set;
  usagesCopy = usages;
  queueCopy = queue;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.retrieveAssetSetAsync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__UAFAssetSetManager_retrieveAssetSet_usages_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  block[4] = self;
  v20 = setCopy;
  v21 = usagesCopy;
  v22 = queueCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = queueCopy;
  v17 = usagesCopy;
  v18 = setCopy;
  os_activity_apply(v14, block);
}

- (id)retrieveAssetSet:(id)set usages:(id)usages disableExperimentation:(BOOL)experimentation
{
  setCopy = set;
  usagesCopy = usages;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  v9 = _os_activity_create(&dword_1BCF2C000, "UAF.retrieveAssetSetWithDisableExperimentation", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__UAFAssetSetManager_retrieveAssetSet_usages_disableExperimentation___block_invoke;
  v14[3] = &unk_1E7FFE680;
  v16 = usagesCopy;
  v17 = &v19;
  v15 = setCopy;
  experimentationCopy = experimentation;
  v10 = usagesCopy;
  v11 = setCopy;
  os_activity_apply(v9, v14);

  v12 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __69__UAFAssetSetManager_retrieveAssetSet_usages_disableExperimentation___block_invoke(uint64_t a1)
{
  v2 = [[UAFAssetSet alloc] initWithAssetSet:*(a1 + 32) usages:*(a1 + 40) disableExperimentation:*(a1 + 56)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)markAssetsExpired:(id)expired completion:(id)completion
{
  expiredCopy = expired;
  completionCopy = completion;
  v7 = _os_activity_create(&dword_1BCF2C000, "UAF.markAssetsExpired", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__UAFAssetSetManager_markAssetsExpired_completion___block_invoke;
  v10[3] = &unk_1E7FFD5A8;
  v11 = expiredCopy;
  v12 = completionCopy;
  v8 = completionCopy;
  v9 = expiredCopy;
  os_activity_apply(v7, v10);
}

void __51__UAFAssetSetManager_markAssetsExpired_completion___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__UAFAssetSetManager_markAssetsExpired_completion___block_invoke_2;
  v5[3] = &unk_1E7FFD648;
  v6 = v2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v3 = v2;
  v4 = MEMORY[0x1BFB33950](v5);
  [v3 markAssetsExpired:*(a1 + 32) completion:v4];
}

void __51__UAFAssetSetManager_markAssetsExpired_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = 136315650;
    v7 = "[UAFAssetSetManager markAssetsExpired:completion:]_block_invoke_2";
    v8 = 2114;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Marking token %{public}@ expired completed (error = %{public}@)", &v6, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

- (id)observeAssetSet:(id)set policies:(id)policies queue:(id)queue handler:(id)handler
{
  setCopy = set;
  policiesCopy = policies;
  queueCopy = queue;
  handlerCopy = handler;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__9;
  v32 = __Block_byref_object_dispose__9;
  v33 = 0;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.observeAssetSet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __61__UAFAssetSetManager_observeAssetSet_policies_queue_handler___block_invoke;
  v21[3] = &unk_1E7FFE6A8;
  v22 = policiesCopy;
  v23 = setCopy;
  v26 = handlerCopy;
  v27 = &v28;
  v24 = queueCopy;
  selfCopy = self;
  v15 = handlerCopy;
  v16 = queueCopy;
  v17 = setCopy;
  v18 = policiesCopy;
  os_activity_apply(v14, v21);

  v19 = v29[5];
  _Block_object_dispose(&v28, 8);

  return v19;
}

void __61__UAFAssetSetManager_observeAssetSet_policies_queue_handler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = 0;
  v4 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v3 |= [*(*(&v12 + 1) + 8 * v6++) isEqualToString:{@"IgnoreMobileAssetStartup", v12}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v4);
  }

  v7 = [[UAFAssetSetObserver alloc] initWithAssetSet:*(a1 + 40) ignoreMobileAssetStartup:v3 & 1 configurationDirURLs:0 queue:*(a1 + 48) updateHandler:*(a1 + 64)];
  v8 = *(*(a1 + 72) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (*(*(*(a1 + 72) + 8) + 40))
  {
    v10 = *(*(a1 + 56) + 8);
    objc_sync_enter(v10);
    [*(*(a1 + 56) + 8) addObject:*(*(*(a1 + 72) + 8) + 40)];
    objc_sync_exit(v10);
  }

  else
  {
    v10 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 136315394;
      v17 = "[UAFAssetSetManager observeAssetSet:policies:queue:handler:]_block_invoke";
      v18 = 2114;
      v19 = v11;
      _os_log_error_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to create UAFAssetSetObserver for %{public}@'", buf, 0x16u);
    }
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  v5 = _os_activity_create(&dword_1BCF2C000, "UAF.removeObserver", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__UAFAssetSetManager_removeObserver___block_invoke;
  v7[3] = &unk_1E7FFD098;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  os_activity_apply(v5, v7);
}

void __37__UAFAssetSetManager_removeObserver___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v2 = *(*(a1 + 40) + 8);
    objc_sync_enter(v2);
    [*(*(a1 + 40) + 8) removeObject:v4];
    [v4 invalidate];
    objc_sync_exit(v2);
  }

  else
  {
    v3 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = "[UAFAssetSetManager removeObserver:]_block_invoke";
      _os_log_error_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_ERROR, "%s Unexpected token is not of kind UAFAssetSetObserver'", buf, 0xCu);
    }
  }
}

- (void)subscribe:(id)subscribe subscriptions:(id)subscriptions queue:(id)queue completion:(id)completion
{
  subscribeCopy = subscribe;
  subscriptionsCopy = subscriptions;
  queueCopy = queue;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.subscribe", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__UAFAssetSetManager_subscribe_subscriptions_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  block[4] = self;
  v20 = subscribeCopy;
  v21 = subscriptionsCopy;
  v22 = queueCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = queueCopy;
  v17 = subscriptionsCopy;
  v18 = subscribeCopy;
  os_activity_apply(v14, block);
}

- (void)subscribe:(id)subscribe subscriptions:(id)subscriptions user:(id)user userInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion
{
  v62 = *MEMORY[0x1E69E9840];
  subscribeCopy = subscribe;
  subscriptionsCopy = subscriptions;
  userCopy = user;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFAssetSetManager getConcurrentQueue];
  }

  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__9;
  v52 = __Block_byref_object_dispose__9;
  v18 = subscriptionsCopy;
  v53 = v18;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke;
  v41[3] = &unk_1E7FFE6F8;
  v19 = userCopy;
  v42 = v19;
  v20 = subscribeCopy;
  v43 = v20;
  v46 = &v48;
  initiatedCopy = initiated;
  v21 = completionCopy;
  v45 = v21;
  v22 = queueCopy;
  v44 = v22;
  v23 = MEMORY[0x1BFB33950](v41);
  if (v19)
  {
    goto LABEL_4;
  }

  if (!+[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", +[UAFCommonUtilities geteuid]))
  {
    v40 = 0;
    v19 = [UAFUser currentUserWithNode:0 error:&v40];
    v24 = v40;
    if (v19)
    {
      goto LABEL_5;
    }

    v32 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v55 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]";
      v56 = 2114;
      v57 = v24;
      _os_log_error_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_ERROR, "%s Could not determine current user: %{public}@", buf, 0x16u);
    }

    v23[2](v23);
LABEL_23:
    v19 = 0;
    goto LABEL_30;
  }

  v19 = [UAFUser currentConsoleUserWithUID:0];
  if (!v19)
  {
    v31 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v55 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]";
      _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Could not determine console user, trying with XPC", buf, 0xCu);
    }

    v23[2](v23);
    v24 = 0;
    goto LABEL_23;
  }

LABEL_4:
  v24 = 0;
LABEL_5:
  v39 = v24;
  v25 = [UAFAssetSetManager _subscriptionDiffersFromDB:v18 subscriber:v20 user:v19 error:&v39];
  v26 = v39;

  v27 = v49[5];
  v49[5] = v25;

  v28 = v49[5];
  if (!v28 || v26)
  {
    v29 = UAFGetLogCategory(&UAFLogContextSubscription);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v55 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]";
      v56 = 2112;
      v57 = v19;
      v58 = 2114;
      v59 = v20;
      v60 = 2114;
      v61 = v26;
      _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, "%s Not attempting to update subscriptions for user '%@' subscriptions: %{public}@: %{public}@", buf, 0x2Au);
    }

    if (!v21)
    {
      v24 = v26;
      goto LABEL_30;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_403;
    block[3] = &unk_1E7FFD940;
    v38 = v21;
    v24 = v26;
    v37 = v24;
    dispatch_async(v22, block);

    v30 = &v38;
    goto LABEL_28;
  }

  if (![v28 count])
  {
    v33 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v55 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]";
      v56 = 2114;
      v57 = v20;
      v58 = 2114;
      v59 = v18;
      v60 = 2112;
      v61 = v19;
      _os_log_impl(&dword_1BCF2C000, v33, OS_LOG_TYPE_DEFAULT, "%s No subscription changes for subscriber '%{public}@' and subscriptions '%{public}@' user: '%@'", buf, 0x2Au);
    }

    if (!v21)
    {
      goto LABEL_9;
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_404;
    v34[3] = &unk_1E7FFD4E8;
    v30 = &v35;
    v35 = v21;
    dispatch_async(v22, v34);
    v24 = 0;
LABEL_28:

    goto LABEL_30;
  }

  v23[2](v23);
LABEL_9:
  v24 = 0;
LABEL_30:

  _Block_object_dispose(&v48, 8);
}

void __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextSubscription);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(*(*(a1 + 64) + 8) + 40);
    *buf = 136315906;
    v31 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]_block_invoke";
    v32 = 2112;
    v33 = v3;
    v34 = 2114;
    v35 = v4;
    v36 = 2114;
    v37 = v5;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Changing subscriptions for user: '%@', subscriber: '%{public}@': '%{public}@'", buf, 0x2Au);
  }

  v6 = MEMORY[0x1E695DF90];
  v28[0] = @"Operation";
  v28[1] = @"Subscriber";
  v7 = *(a1 + 40);
  v29[0] = @"Subscribe";
  v29[1] = v7;
  v28[2] = @"Subscriptions";
  v29[2] = *(*(*(a1 + 64) + 8) + 40);
  v28[3] = @"UserInitiated";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 72)];
  v29[3] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v10 = [v6 dictionaryWithDictionary:v9];

  v11 = *(a1 + 32);
  if (v11)
  {
    [v10 setObject:v11 forKeyedSubscript:@"SubscriptionUser"];
  }

  v12 = +[UAFAssetSetManager createXPCConnection];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_402;
  v23 = &unk_1E7FFE6D0;
  v24 = v12;
  v13 = *(a1 + 56);
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  *&v16 = *(a1 + 40);
  *(&v16 + 1) = v13;
  *&v17 = v14;
  *(&v17 + 1) = v15;
  v25 = v17;
  v26 = v16;
  v27 = *(a1 + 64);
  v18 = v12;
  v19 = MEMORY[0x1BFB33950](&v20);
  [v18 operationWithConfig:v10 completion:{v19, v20, v21, v22, v23}];
}

void __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_402(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 64);
  if (v4)
  {
    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __82__UAFAssetSetManager_subscribe_subscriptions_user_userInitiated_queue_completion___block_invoke_2;
    v10[3] = &unk_1E7FFD940;
    v12 = v4;
    v11 = v3;
    dispatch_async(v5, v10);
  }

  v6 = UAFGetLogCategory(&UAFLogContextSubscription);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(*(*(a1 + 72) + 8) + 40);
    *buf = 136315906;
    v14 = "[UAFAssetSetManager subscribe:subscriptions:user:userInitiated:queue:completion:]_block_invoke";
    v15 = 2112;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Changed subscriptions for user: '%@', subscriber: '%{public}@': '%{public}@'", buf, 0x2Au);
  }
}

- (void)unsubscribe:(id)unsubscribe subscriptionNames:(id)names queue:(id)queue completion:(id)completion
{
  unsubscribeCopy = unsubscribe;
  namesCopy = names;
  queueCopy = queue;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.unsubscribe", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__UAFAssetSetManager_unsubscribe_subscriptionNames_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  block[4] = self;
  v20 = unsubscribeCopy;
  v21 = namesCopy;
  v22 = queueCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = queueCopy;
  v17 = namesCopy;
  v18 = unsubscribeCopy;
  os_activity_apply(v14, block);
}

- (void)unsubscribe:(id)unsubscribe subscriptionNames:(id)names user:(id)user userInitiated:(BOOL)initiated queue:(id)queue completion:(id)completion
{
  initiatedCopy = initiated;
  v73 = *MEMORY[0x1E69E9840];
  unsubscribeCopy = unsubscribe;
  namesCopy = names;
  userCopy = user;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFAssetSetManager getConcurrentQueue];
  }

  v43 = completionCopy;
  if (userCopy)
  {
    goto LABEL_4;
  }

  if (+[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", +[UAFCommonUtilities geteuid]))
  {
    v27 = [UAFUser currentConsoleUserWithUID:0];
    if (v27)
    {
      userCopy = v27;
LABEL_4:
      v41 = queueCopy;
      v17 = 0;
LABEL_5:
      v18 = +[UAFSubscriptionStoreManager defaultManager];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v42 = namesCopy;
      v19 = namesCopy;
      v20 = [v19 countByEnumeratingWithState:&v55 objects:v72 count:16];
      if (!v20)
      {
        v26 = v17;
        goto LABEL_19;
      }

      v21 = v20;
      v40 = initiatedCopy;
      v22 = *v56;
LABEL_7:
      v23 = 0;
      while (1)
      {
        if (*v56 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v55 + 1) + 8 * v23);
        v54 = v17;
        v25 = [v18 getSubscription:v24 subscriber:unsubscribeCopy user:userCopy error:&v54];
        v26 = v54;

        if (v26)
        {
          break;
        }

        if (v25)
        {

          v32 = 0;
          v26 = 0;
          queueCopy = v41;
          namesCopy = v42;
LABEL_27:
          initiatedCopy = v40;
          goto LABEL_37;
        }

        v17 = 0;
        if (v21 == ++v23)
        {
          v21 = [v19 countByEnumeratingWithState:&v55 objects:v72 count:16];
          v17 = 0;
          v26 = 0;
          if (v21)
          {
            goto LABEL_7;
          }

LABEL_19:

          v28 = UAFGetLogCategory(&UAFLogContextSubscription);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v63 = "[UAFAssetSetManager unsubscribe:subscriptionNames:user:userInitiated:queue:completion:]";
            v64 = 2112;
            v65 = userCopy;
            v66 = 2114;
            v67 = unsubscribeCopy;
            v68 = 2114;
            v69 = v19;
            _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s Already unsubscribed for user '%@', subscriber '%{public}@', subscriptions '%{public}@'", buf, 0x2Au);
          }

          queueCopy = v41;
          namesCopy = v42;
          v29 = v43;
          if (v43)
          {
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __88__UAFAssetSetManager_unsubscribe_subscriptionNames_user_userInitiated_queue_completion___block_invoke;
            block[3] = &unk_1E7FFD4E8;
            v53 = v43;
            dispatch_async(v41, block);
            v30 = v53;
            goto LABEL_42;
          }

          goto LABEL_43;
        }
      }

      v31 = UAFGetLogCategory(&UAFLogContextClient);
      queueCopy = v41;
      namesCopy = v42;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v63 = "[UAFAssetSetManager unsubscribe:subscriptionNames:user:userInitiated:queue:completion:]";
        v64 = 2112;
        v65 = userCopy;
        v66 = 2114;
        v67 = unsubscribeCopy;
        v68 = 2114;
        v69 = v24;
        v70 = 2114;
        v71 = v26;
        _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Could not retrieve subscription for user '%@', subscriber '%{public}@', subscription '%{public}@': %{public}@", buf, 0x34u);
      }

      v32 = 0;
      goto LABEL_27;
    }

    v18 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v63 = "[UAFAssetSetManager unsubscribe:subscriptionNames:user:userInitiated:queue:completion:]";
      _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Could not determine console user, trying via XPC", buf, 0xCu);
    }

    userCopy = 0;
    v26 = 0;
  }

  else
  {
    v59 = 0;
    userCopy = [UAFUser currentUserWithNode:0 error:&v59];
    v33 = v59;
    v26 = v33;
    if (userCopy)
    {
      v41 = queueCopy;
      v17 = v33;
      goto LABEL_5;
    }

    v18 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v63 = "[UAFAssetSetManager unsubscribe:subscriptionNames:user:userInitiated:queue:completion:]";
      v64 = 2114;
      v65 = v26;
      _os_log_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_DEFAULT, "%s Could not determine current user, falling back to XPC: %{public}@", buf, 0x16u);
    }

    userCopy = 0;
  }

  v32 = 1;
LABEL_37:

  v34 = UAFGetLogCategory(&UAFLogContextSubscription);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v63 = "[UAFAssetSetManager unsubscribe:subscriptionNames:user:userInitiated:queue:completion:]";
    v64 = 2112;
    v65 = userCopy;
    v66 = 2114;
    v67 = unsubscribeCopy;
    v68 = 2114;
    v69 = namesCopy;
    _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEFAULT, "%s Unsubscribing for user '%@', subscriber '%{public}@', subscription '%{public}@'", buf, 0x2Au);
  }

  v35 = MEMORY[0x1E695DF90];
  v60[0] = @"Operation";
  v60[1] = @"Subscriber";
  v61[0] = @"Unsubscribe";
  v61[1] = unsubscribeCopy;
  v61[2] = namesCopy;
  v60[2] = @"Subscriptions";
  v60[3] = @"UserInitiated";
  v36 = [MEMORY[0x1E696AD98] numberWithBool:initiatedCopy];
  v61[3] = v36;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:4];
  v18 = [v35 dictionaryWithDictionary:v37];

  if ((v32 & 1) == 0)
  {
    [v18 setObject:userCopy forKeyedSubscript:@"SubscriptionUser"];
  }

  v38 = +[UAFAssetSetManager createXPCConnection];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __88__UAFAssetSetManager_unsubscribe_subscriptionNames_user_userInitiated_queue_completion___block_invoke_405;
  v45[3] = &unk_1E7FFE720;
  v46 = v38;
  v29 = v43;
  v51 = v43;
  v47 = queueCopy;
  userCopy = userCopy;
  v48 = userCopy;
  v49 = unsubscribeCopy;
  v50 = namesCopy;
  v30 = v38;
  v39 = MEMORY[0x1BFB33950](v45);
  [v30 operationWithConfig:v18 completion:v39];

LABEL_42:
LABEL_43:
}

void __88__UAFAssetSetManager_unsubscribe_subscriptionNames_user_userInitiated_queue_completion___block_invoke_405(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 72);
  if (v4)
  {
    v5 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __88__UAFAssetSetManager_unsubscribe_subscriptionNames_user_userInitiated_queue_completion___block_invoke_2;
    v10[3] = &unk_1E7FFD940;
    v12 = v4;
    v11 = v3;
    dispatch_async(v5, v10);
  }

  v6 = UAFGetLogCategory(&UAFLogContextSubscription);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9 = *(a1 + 64);
    *buf = 136316162;
    v14 = "[UAFAssetSetManager unsubscribe:subscriptionNames:user:userInitiated:queue:completion:]_block_invoke";
    v15 = 2112;
    v16 = v7;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v3;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s Unsubscribed for user '%@', subscriber '%{public}@', subscription '%{public}@' with error: %{public}@", buf, 0x34u);
  }
}

- (id)subscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user storeManager:(id)manager error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  subscriberCopy = subscriber;
  userCopy = user;
  managerCopy = manager;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__9;
  v54 = __Block_byref_object_dispose__9;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__9;
  v48 = __Block_byref_object_dispose__9;
  v49 = 0;
  if (!managerCopy)
  {
    managerCopy = +[UAFSubscriptionStoreManager defaultManager];
  }

  v15 = managerCopy;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x3032000000;
  v42[3] = __Block_byref_object_copy__9;
  v42[4] = __Block_byref_object_dispose__9;
  v43 = 0;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __71__UAFAssetSetManager_subscriptions_subscriber_user_storeManager_error___block_invoke;
  v41[3] = &unk_1E7FFE748;
  v41[4] = &v50;
  v41[5] = v42;
  v41[6] = &v44;
  v16 = MEMORY[0x1BFB33950](v41);
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __71__UAFAssetSetManager_subscriptions_subscriber_user_storeManager_error___block_invoke_2;
  v35[3] = &unk_1E7FFE630;
  v40 = v42;
  v17 = subscriptionsCopy;
  v36 = v17;
  v18 = subscriberCopy;
  v37 = v18;
  v19 = userCopy;
  v38 = v19;
  v20 = v16;
  v39 = v20;
  v21 = MEMORY[0x1BFB33950](v35);
  if (v19)
  {
LABEL_4:
    v22 = v51;
    obj = v51[5];
    v23 = [UAFAssetSetSubscriptionManager getSubscription:v17 subscriber:v18 user:v19 storeManager:v15 error:&obj];
    objc_storeStrong(v22 + 5, obj);
    v24 = v45[5];
    v45[5] = v23;

    if (!v45[5] && v51[5])
    {
      v25 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v51[5];
        *buf = 136315394;
        v57 = "[UAFAssetSetManager subscriptions:subscriber:user:storeManager:error:]";
        v58 = 2114;
        v59 = v26;
        _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s Could not retrieve subscriptions, falling back to XPC: %{public}@", buf, 0x16u);
      }

      v21[2](v21);
    }

    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (+[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", +[UAFCommonUtilities geteuid]))
  {
    v19 = [UAFUser currentConsoleUserWithUID:0];
    if (v19)
    {
      goto LABEL_4;
    }

    v29 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v57 = "[UAFAssetSetManager subscriptions:subscriber:user:storeManager:error:]";
      _os_log_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_DEFAULT, "%s Could not determine console user, trying via XPC", buf, 0xCu);
    }

    v21[2](v21);
  }

  else
  {
    v30 = v51;
    v34 = v51[5];
    v19 = [UAFUser currentUserWithNode:0 error:&v34];
    objc_storeStrong(v30 + 5, v34);
    if (v19)
    {
      goto LABEL_4;
    }

    v31 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v51[5];
      *buf = 136315394;
      v57 = "[UAFAssetSetManager subscriptions:subscriber:user:storeManager:error:]";
      v58 = 2112;
      v59 = v32;
      _os_log_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_DEFAULT, "%s Unable to identify current user, falling back to daemon determing user: %@", buf, 0x16u);
    }

    v21[2](v21);
  }

  v19 = 0;
  if (error)
  {
LABEL_10:
    *error = v51[5];
  }

LABEL_11:
  v27 = v45[5];

  _Block_object_dispose(v42, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);

  return v27;
}

void __71__UAFAssetSetManager_subscriptions_subscriber_user_storeManager_error___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(a1[4] + 8) + 40), a3);
  v8 = a3;
  [*(*(a1[5] + 8) + 40) invalidate];
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __71__UAFAssetSetManager_subscriptions_subscriber_user_storeManager_error___block_invoke_2(void *a1)
{
  v2 = +[UAFAssetSetManager createProxyXPCConnection];
  v3 = *(a1[8] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[7];
  v6 = *(*(a1[8] + 8) + 40);
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];

  return [v6 subscriptions:v7 subscriber:v8 user:v9 completion:v5];
}

- (id)subscriptionsForSubscriber:(id)subscriber
{
  subscriberCopy = subscriber;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v5 = _os_activity_create(&dword_1BCF2C000, "UAF.subscriptionsForSubscriber", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__UAFAssetSetManager_subscriptionsForSubscriber___block_invoke;
  block[3] = &unk_1E7FFD8F0;
  v10 = subscriberCopy;
  v11 = &v12;
  block[4] = self;
  v6 = subscriberCopy;
  os_activity_apply(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __49__UAFAssetSetManager_subscriptionsForSubscriber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) subscriptions:0 subscriber:*(a1 + 40) user:0 storeManager:0 error:0];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)subscribedUsagesForAssetSet:(id)set
{
  setCopy = set;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  v4 = _os_activity_create(&dword_1BCF2C000, "UAF.subscribedUsagesForAssetSet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__UAFAssetSetManager_subscribedUsagesForAssetSet___block_invoke;
  v8[3] = &unk_1E7FFD070;
  v9 = setCopy;
  v10 = &v11;
  v5 = setCopy;
  os_activity_apply(v4, v8);

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

void __50__UAFAssetSetManager_subscribedUsagesForAssetSet___block_invoke(uint64_t a1)
{
  v2 = [UAFAssetSetManager getAssetSetUsages:*(a1 + 32) storeManager:0];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (id)knownUsagesForAssetSet:(id)set usageType:(id)type
{
  setCopy = set;
  typeCopy = type;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  v7 = _os_activity_create(&dword_1BCF2C000, "UAF.subscribedUsagesForAssetSet", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__UAFAssetSetManager_knownUsagesForAssetSet_usageType___block_invoke;
  block[3] = &unk_1E7FFD768;
  v14 = typeCopy;
  v15 = &v16;
  v13 = setCopy;
  v8 = typeCopy;
  v9 = setCopy;
  os_activity_apply(v7, block);

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __55__UAFAssetSetManager_knownUsagesForAssetSet_usageType___block_invoke(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = +[UAFConfigurationManager defaultManager];
  v3 = [v2 getAssetSet:a1[4]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 usageValues];
    v6 = [v5 objectForKeyedSubscript:a1[5]];
    v7 = *(a1[6] + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v5 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = a1[4];
      v10 = 136315394;
      v11 = "[UAFAssetSetManager knownUsagesForAssetSet:usageType:]_block_invoke";
      v12 = 2114;
      v13 = v9;
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Unable to get assetset for '%{public}@'", &v10, 0x16u);
    }
  }
}

- (id)assetNamesForAssetSet:(id)set usages:(id)usages
{
  v37 = *MEMORY[0x1E69E9840];
  setCopy = set;
  usagesCopy = usages;
  v7 = +[UAFConfigurationManager defaultManager];
  v8 = [v7 getAssetSet:setCopy];
  v9 = v8;
  if (!v8)
  {
    v13 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v32 = "[UAFAssetSetManager assetNamesForAssetSet:usages:]";
      v33 = 2114;
      v34 = setCopy;
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s No configuration for asset set: %{public}@", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v10 = [v8 getAssets:usagesCopy];
  if (!v10)
  {
    v21 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v32 = "[UAFAssetSetManager assetNamesForAssetSet:usages:]";
      v33 = 2114;
      v34 = setCopy;
      v35 = 2114;
      v36 = usagesCopy;
      _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s Error retrieving assets for %{public}@ with usages: %{public}@", buf, 0x20u);
    }

    v13 = 0;
LABEL_18:
    array = 0;
    goto LABEL_19;
  }

  v11 = v10;
  v23 = v7;
  v24 = usagesCopy;
  v25 = setCopy;
  array = [MEMORY[0x1E695DF70] array];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v27;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v26 + 1) + 8 * i);
        v19 = [v13 objectForKeyedSubscript:v18];
        v20 = [v19 objectForKeyedSubscript:@"AssetSpecifier"];

        if (v20)
        {
          [array addObject:v18];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v15);
  }

  usagesCopy = v24;
  setCopy = v25;
  v7 = v23;
LABEL_19:

  return array;
}

- (void)updateAssetsForSubscriber:(id)subscriber subscriptionName:(id)name policies:(id)policies queue:(id)queue progress:(id)progress completion:(id)completion
{
  subscriberCopy = subscriber;
  nameCopy = name;
  policiesCopy = policies;
  queueCopy = queue;
  progressCopy = progress;
  completionCopy = completion;
  v20 = _os_activity_create(&dword_1BCF2C000, "UAF.updateAssetsForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __100__UAFAssetSetManager_updateAssetsForSubscriber_subscriptionName_policies_queue_progress_completion___block_invoke;
  block[3] = &unk_1E7FFE770;
  block[4] = self;
  v28 = subscriberCopy;
  v29 = nameCopy;
  v30 = policiesCopy;
  v31 = queueCopy;
  v32 = progressCopy;
  v33 = completionCopy;
  v21 = completionCopy;
  v22 = progressCopy;
  v23 = queueCopy;
  v24 = policiesCopy;
  v25 = nameCopy;
  v26 = subscriberCopy;
  os_activity_apply(v20, block);
}

- (void)updateAssetsForSubscriber:(id)subscriber subscriptionName:(id)name policies:(id)policies queue:(id)queue detailedProgress:(id)progress completion:(id)completion
{
  subscriberCopy = subscriber;
  nameCopy = name;
  policiesCopy = policies;
  queueCopy = queue;
  progressCopy = progress;
  completionCopy = completion;
  v20 = _os_activity_create(&dword_1BCF2C000, "UAF.updateAssetsForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __108__UAFAssetSetManager_updateAssetsForSubscriber_subscriptionName_policies_queue_detailedProgress_completion___block_invoke;
  block[3] = &unk_1E7FFE770;
  block[4] = self;
  v28 = subscriberCopy;
  v29 = nameCopy;
  v30 = policiesCopy;
  v31 = queueCopy;
  v32 = progressCopy;
  v33 = completionCopy;
  v21 = completionCopy;
  v22 = progressCopy;
  v23 = queueCopy;
  v24 = policiesCopy;
  v25 = nameCopy;
  v26 = subscriberCopy;
  os_activity_apply(v20, block);
}

- (void)updateAssetsForSubscribers:(id)subscribers policies:(id)policies queue:(id)queue detailedProgress:(id)progress completion:(id)completion
{
  subscribersCopy = subscribers;
  policiesCopy = policies;
  queueCopy = queue;
  progressCopy = progress;
  completionCopy = completion;
  v17 = _os_activity_create(&dword_1BCF2C000, "UAF.updateAssetsForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __92__UAFAssetSetManager_updateAssetsForSubscribers_policies_queue_detailedProgress_completion___block_invoke;
  v23[3] = &unk_1E7FFE798;
  v23[4] = self;
  v24 = subscribersCopy;
  v25 = policiesCopy;
  v26 = queueCopy;
  v27 = progressCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = progressCopy;
  v20 = queueCopy;
  v21 = policiesCopy;
  v22 = subscribersCopy;
  os_activity_apply(v17, v23);
}

- (void)downloadStatusForSubscribers:(id)subscribers queue:(id)queue completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  subscribersCopy = subscribers;
  queueCopy = queue;
  completionCopy = completion;
  v11 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[UAFAssetSetManager downloadStatusForSubscribers:queue:completion:]";
    *&buf[12] = 2114;
    *&buf[14] = subscribersCopy;
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Download status of assets for subscribers: %{public}@", buf, 0x16u);
  }

  if (!queueCopy)
  {
    queueCopy = +[UAFAssetSetManager getConcurrentQueue];
  }

  v31 = 0;
  v12 = +[UAFSubscriptionStoreManager defaultManager];
  v13 = +[UAFConfigurationManager defaultManager];
  v30 = 0;
  v14 = [(UAFAssetSetManager *)self assetSetUsagesForSubscribers:subscribersCopy storeManager:v12 configurationManager:v13 anyUnknown:&v31 error:&v30];
  v15 = v30;

  if (v15)
  {
    v16 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = geteuid();
      *buf = 136315906;
      *&buf[4] = "[UAFAssetSetManager downloadStatusForSubscribers:queue:completion:]";
      *&buf[12] = 1024;
      *&buf[14] = v17;
      *&buf[18] = 2114;
      *&buf[20] = subscribersCopy;
      *&buf[28] = 2114;
      *&buf[30] = v15;
      _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s Unable to get asset set usages for uid: %d Subscribers: '%{public}@': %{public}@", buf, 0x26u);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__UAFAssetSetManager_downloadStatusForSubscribers_queue_completion___block_invoke;
    block[3] = &unk_1E7FFD4E8;
    v29 = completionCopy;
    dispatch_async(queueCopy, block);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v18 = 4;
    if (v31)
    {
      v18 = 0;
    }

    *&buf[24] = v18;
    if (v14)
    {
      v19 = +[UAFConfigurationManager defaultManager];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __68__UAFAssetSetManager_downloadStatusForSubscribers_queue_completion___block_invoke_2;
      v23[3] = &unk_1E7FFE7E8;
      v24 = subscribersCopy;
      v25 = completionCopy;
      [UAFAutoAssetManager getDownloadStatusFromAssetSetUsages:v14 configurationManager:v19 queue:queueCopy completion:v23];

      v20 = &v24;
    }

    else
    {
      v21 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = *(*&buf[8] + 24);
        *v32 = 136315650;
        v33 = "[UAFAssetSetManager downloadStatusForSubscribers:queue:completion:]";
        v34 = 2048;
        v35 = v22;
        v36 = 2114;
        v37 = subscribersCopy;
        _os_log_impl(&dword_1BCF2C000, v21, OS_LOG_TYPE_DEFAULT, "%s Returning status: %lu for subscribers: %{public}@ as the asset set usages are nil", v32, 0x20u);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __68__UAFAssetSetManager_downloadStatusForSubscribers_queue_completion___block_invoke_407;
      v26[3] = &unk_1E7FFE7C0;
      v20 = v27;
      v27[0] = completionCopy;
      v27[1] = buf;
      dispatch_async(queueCopy, v26);
    }

    _Block_object_dispose(buf, 8);
  }
}

uint64_t __68__UAFAssetSetManager_downloadStatusForSubscribers_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 136315650;
    v8 = "[UAFAssetSetManager downloadStatusForSubscribers:queue:completion:]_block_invoke_2";
    v9 = 2048;
    v10 = a2;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Returning asset download status: %lu for subscribers: %{public}@", &v7, 0x20u);
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)downloadStatusForSubscriber:(id)subscriber subscriptionName:(id)name queue:(id)queue completion:(id)completion
{
  subscriberCopy = subscriber;
  nameCopy = name;
  queueCopy = queue;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_1BCF2C000, "UAF.downloadStatusForSubscriberAsync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__UAFAssetSetManager_downloadStatusForSubscriber_subscriptionName_queue_completion___block_invoke;
  block[3] = &unk_1E7FFE658;
  block[4] = self;
  v20 = subscriberCopy;
  v21 = nameCopy;
  v22 = queueCopy;
  v23 = completionCopy;
  v15 = completionCopy;
  v16 = queueCopy;
  v17 = nameCopy;
  v18 = subscriberCopy;
  os_activity_apply(v14, block);
}

void __84__UAFAssetSetManager_downloadStatusForSubscriber_subscriptionName_queue_completion___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v6 = a1[6];
  v7 = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v3 downloadStatusForSubscribers:v5 queue:a1[7] completion:a1[8]];
}

- (unint64_t)downloadStatusForSubscribers:(id)subscribers
{
  subscribersCopy = subscribers;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v5 = _os_activity_create(&dword_1BCF2C000, "UAF.downloadStatusForSubscribers", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__UAFAssetSetManager_downloadStatusForSubscribers___block_invoke;
  block[3] = &unk_1E7FFD850;
  v10 = subscribersCopy;
  selfCopy = self;
  v12 = &v13;
  v6 = subscribersCopy;
  os_activity_apply(v5, block);

  v7 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v7;
}

void __51__UAFAssetSetManager_downloadStatusForSubscribers___block_invoke(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 136315394;
    v24 = "[UAFAssetSetManager downloadStatusForSubscribers:]_block_invoke";
    v25 = 2114;
    *v26 = v3;
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Download status of assets for subscribers: %{public}@", buf, 0x16u);
  }

  v22 = 0;
  v5 = a1[4];
  v4 = a1[5];
  v6 = +[UAFSubscriptionStoreManager defaultManager];
  v7 = +[UAFConfigurationManager defaultManager];
  v21 = 0;
  v8 = [v4 assetSetUsagesForSubscribers:v5 storeManager:v6 configurationManager:v7 anyUnknown:&v22 error:&v21];
  v9 = v21;

  if (!v9)
  {
    v13 = 4;
    if (v22)
    {
      v13 = 0;
    }

    *(*(a1[6] + 8) + 24) = v13;
    if (v8)
    {
      v14 = +[UAFConfigurationManager defaultManager];
      *(*(a1[6] + 8) + 24) = [UAFAutoAssetManager getDownloadStatusFromAssetSetUsages:v8 configurationManager:v14];

      v15 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(*(a1[6] + 8) + 24);
        v17 = a1[4];
        *buf = 136315650;
        v24 = "[UAFAssetSetManager downloadStatusForSubscribers:]_block_invoke";
        v25 = 2048;
        *v26 = v16;
        *&v26[8] = 2114;
        *&v26[10] = v17;
        v18 = "%s Returning asset download status: %lu for subscribers: %{public}@";
LABEL_14:
        _os_log_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_DEFAULT, v18, buf, 0x20u);
      }
    }

    else
    {
      v15 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *(*(a1[6] + 8) + 24);
        v20 = a1[4];
        *buf = 136315650;
        v24 = "[UAFAssetSetManager downloadStatusForSubscribers:]_block_invoke";
        v25 = 2048;
        *v26 = v19;
        *&v26[8] = 2114;
        *&v26[10] = v20;
        v18 = "%s Returning status: %lu for subscribers: %{public}@ as the asset set usages are nil";
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

  v10 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = geteuid();
    v12 = a1[4];
    *buf = 136315906;
    v24 = "[UAFAssetSetManager downloadStatusForSubscribers:]_block_invoke";
    v25 = 1024;
    *v26 = v11;
    *&v26[4] = 2114;
    *&v26[6] = v12;
    *&v26[14] = 2114;
    *&v26[16] = v9;
    _os_log_impl(&dword_1BCF2C000, v10, OS_LOG_TYPE_DEFAULT, "%s Unable to get asset set usages for uid: %d Subscribers: '%{public}@': %{public}@", buf, 0x26u);
  }

  *(*(a1[6] + 8) + 24) = 0;
LABEL_16:
}

- (unint64_t)downloadStatusForSubscriber:(id)subscriber subscriptionName:(id)name
{
  v15[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  subscriberCopy = subscriber;
  v6 = MEMORY[0x1E695DEC8];
  nameCopy2 = name;
  subscriberCopy2 = subscriber;
  v9 = [v6 arrayWithObjects:&nameCopy count:1];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&subscriberCopy count:{1, nameCopy}];

  v11 = [(UAFAssetSetManager *)self downloadStatusForSubscribers:v10];
  return v11;
}

void __30__UAFAssetSetManager_defaults__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.UnifiedAssetFramework"];
  v1 = qword_1ED7D11E0;
  qword_1ED7D11E0 = v0;
}

+ (void)disableCacheDelete:(BOOL)delete forAutoAssetType:(id)type autoAssetSpecifier:(id)specifier
{
  typeCopy = type;
  specifierCopy = specifier;
  v9 = +[UAFAssetSetManager getSerialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__UAFAssetSetManager_disableCacheDelete_forAutoAssetType_autoAssetSpecifier___block_invoke;
  block[3] = &unk_1E7FFD048;
  v13 = typeCopy;
  v14 = specifierCopy;
  deleteCopy = delete;
  v10 = specifierCopy;
  v11 = typeCopy;
  dispatch_sync(v9, block);
}

void __77__UAFAssetSetManager_disableCacheDelete_forAutoAssetType_autoAssetSpecifier___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [UAFAssetSetManager cacheDeleteDefaultsKeyForAutoAssetType:*(a1 + 32) autoAssetSpecifier:*(a1 + 40)];
  v3 = *(a1 + 48);
  v4 = UAFGetLogCategory(&UAFLogContextClient);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v13 = 136315650;
      v14 = "+[UAFAssetSetManager disableCacheDelete:forAutoAssetType:autoAssetSpecifier:]_block_invoke";
      v15 = 2114;
      v16 = v6;
      v17 = 2114;
      v18 = v7;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Cache delete disabled for type %{public}@ specifier %{public}@", &v13, 0x20u);
    }

    v8 = +[UAFAssetSetManager defaults];
    [v8 setBool:*(a1 + 48) forKey:v2];
  }

  else
  {
    if (v5)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v13 = 136315650;
      v14 = "+[UAFAssetSetManager disableCacheDelete:forAutoAssetType:autoAssetSpecifier:]_block_invoke";
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Cache delete enabled for type %{public}@ specifier %{public}@", &v13, 0x20u);
    }

    v8 = +[UAFAssetSetManager defaults];
    [v8 removeObjectForKey:v2];
  }

  v11 = +[UAFSubscriptionStoreManager writeManager];
  v12 = +[UAFConfigurationManager defaultManager];
  [UAFAssetSetManager configureAssetDelivery:v11 configurationManager:v12 lockIfUnchanged:0 oldSubscriptions:0 newSubscriptions:0 userInitiated:0];
}

+ (void)autoAssetDetailsForAssetNamed:(id)named assetSet:(id)set usages:(id)usages autoAssetType:(id *)type autoAssetSpecifier:(id *)specifier
{
  v35 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  setCopy = set;
  usagesCopy = usages;
  v14 = +[UAFConfigurationManager defaultManager];
  v15 = [v14 getAssetSet:setCopy];
  v16 = v15;
  if (!v15)
  {
    v18 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    v30 = "+[UAFAssetSetManager autoAssetDetailsForAssetNamed:assetSet:usages:autoAssetType:autoAssetSpecifier:]";
    v31 = 2114;
    v32 = setCopy;
    v26 = "%s Failed to find configuration for asset set %{public}@'";
LABEL_15:
    _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, v26, buf, 0x16u);
    goto LABEL_13;
  }

  autoAssetType = [v15 autoAssetType];

  if (!autoAssetType)
  {
    v18 = UAFGetLogCategory(&UAFLogContextClient);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 136315394;
    v30 = "+[UAFAssetSetManager autoAssetDetailsForAssetNamed:assetSet:usages:autoAssetType:autoAssetSpecifier:]";
    v31 = 2114;
    v32 = setCopy;
    v26 = "%s Failed to find auto asset type for asset set %{public}@'";
    goto LABEL_15;
  }

  v28 = usagesCopy;
  v18 = [v16 getAutoAssets:usagesCopy];
  v19 = [v18 objectForKeyedSubscript:namedCopy];
  if (v19 && (v20 = v19, -[NSObject objectForKeyedSubscript:](v18, "objectForKeyedSubscript:", namedCopy), v21 = type, v22 = specifier, v23 = objc_claimAutoreleasedReturnValue(), [v23 objectForKeyedSubscript:?], v24 = objc_claimAutoreleasedReturnValue(), v24, v23, v20, v24))
  {
    *v21 = [v16 autoAssetType];
    v25 = [v18 objectForKeyedSubscript:namedCopy];
    *v22 = [v25 objectForKeyedSubscript:@"AssetSpecifier"];
  }

  else
  {
    v27 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v30 = "+[UAFAssetSetManager autoAssetDetailsForAssetNamed:assetSet:usages:autoAssetType:autoAssetSpecifier:]";
      v31 = 2114;
      v32 = namedCopy;
      v33 = 2114;
      v34 = setCopy;
      _os_log_error_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_ERROR, "%s Failed to find auto asset specifier for asset %{public}@ in asset set %{public}@'", buf, 0x20u);
    }
  }

  usagesCopy = v28;
LABEL_13:
}

+ (BOOL)cacheDeleteDisabledForAutoAssetType:(id)type autoAssetSpecifier:(id)specifier
{
  v4 = [UAFAssetSetManager cacheDeleteDefaultsKeyForAutoAssetType:type autoAssetSpecifier:specifier];
  v5 = +[UAFAssetSetManager defaults];
  v6 = [v5 BOOLForKey:v4];

  return v6;
}

- (void)disableCacheDelete:(BOOL)delete forAssetNamed:(id)named assetSet:(id)set usages:(id)usages queue:(id)queue completion:(id)completion
{
  deleteCopy = delete;
  v54 = *MEMORY[0x1E69E9840];
  namedCopy = named;
  setCopy = set;
  usagesCopy = usages;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFAssetSetManager getConcurrentQueue];
  }

  v42 = 0;
  v43 = 0;
  [UAFAssetSetManager autoAssetDetailsForAssetNamed:namedCopy assetSet:setCopy usages:usagesCopy autoAssetType:&v43 autoAssetSpecifier:&v42];
  v18 = v43;
  v19 = v42;
  v20 = v19;
  if (v18 && v19)
  {
    if ([UAFAssetSetManager cacheDeleteDisabledForAutoAssetType:v18 autoAssetSpecifier:v19]== deleteCopy)
    {
      v26 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = @"NO";
        *buf = 136315906;
        v47 = "[UAFAssetSetManager disableCacheDelete:forAssetNamed:assetSet:usages:queue:completion:]";
        v48 = 2114;
        v49 = namedCopy;
        if (deleteCopy)
        {
          v27 = @"YES";
        }

        v50 = 2114;
        v51 = setCopy;
        v52 = 2114;
        v53 = v27;
        _os_log_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_DEFAULT, "%s Not changing cache delete disabled for asset %{public}@ in asset set %{public}@ as it is already %{public}@", buf, 0x2Au);
      }

      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke_425;
      v35[3] = &unk_1E7FFD4E8;
      v36 = completionCopy;
      dispatch_async(queueCopy, v35);
      v22 = v36;
    }

    else
    {
      v45[0] = @"ConfigureCacheDelete";
      v44[0] = @"Operation";
      v44[1] = @"CacheDeleteDisabled";
      v21 = [MEMORY[0x1E696AD98] numberWithBool:deleteCopy];
      v45[1] = v21;
      v45[2] = v18;
      v44[2] = @"AutoAssetType";
      v44[3] = @"AssetSpecifier";
      v45[3] = v20;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:4];

      v23 = +[UAFAssetSetManager createXPCConnection];
      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke_2;
      v31 = &unk_1E7FFE348;
      v32 = v23;
      v34 = completionCopy;
      v33 = queueCopy;
      v24 = v23;
      v25 = MEMORY[0x1BFB33950](&v28);
      [v24 operationWithConfig:v22 completion:{v25, v28, v29, v30, v31}];
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke;
    block[3] = &unk_1E7FFE810;
    v38 = namedCopy;
    v39 = setCopy;
    v40 = usagesCopy;
    v41 = completionCopy;
    dispatch_async(queueCopy, block);

    v22 = v38;
  }
}

void __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get auto asset configuration for asset %@ in asset set %@ with usages %@", a1[4], a1[5], a1[6]];
  v3 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A588];
  v7[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v5 = [v3 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v4];

  (*(a1[7] + 16))();
}

void __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = *(a1 + 40);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __88__UAFAssetSetManager_disableCacheDelete_forAssetNamed_assetSet_usages_queue_completion___block_invoke_3;
    v6[3] = &unk_1E7FFD940;
    v8 = v4;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

- (BOOL)cacheDeleteDisabledForAssetNamed:(id)named assetSet:(id)set usages:(id)usages
{
  v11 = 0;
  v12 = 0;
  [UAFAssetSetManager autoAssetDetailsForAssetNamed:named assetSet:set usages:usages autoAssetType:&v12 autoAssetSpecifier:&v11];
  v5 = v12;
  v6 = v11;
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8 || [UAFAssetSetManager cacheDeleteDisabledForAutoAssetType:v5 autoAssetSpecifier:v6];

  return v9;
}

+ (id)resetAssetSets:(id)sets
{
  setsCopy = sets;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = objc_opt_new();
  v4 = +[UAFAssetSetManager getSerialQueue];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__UAFAssetSetManager_resetAssetSets___block_invoke;
  v11 = &unk_1E7FFD0E8;
  v5 = setsCopy;
  v12 = v5;
  v13 = &v14;
  dispatch_sync(v4, &v8);

  if ([v15[5] count])
  {
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v15[5]];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v14, 8);

  return v6;
}

void __37__UAFAssetSetManager_resetAssetSets___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = objc_opt_new();
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = *(a1 + 32);
    v3 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v27;
      v20 = *MEMORY[0x1E696A588];
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v27 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v26 + 1) + 8 * i);
          v8 = +[UAFConfigurationManager defaultManager];
          v9 = [v8 getAssetSet:v7];

          if (v9)
          {
            [v2 addObject:v9];
          }

          else
          {
            v10 = MEMORY[0x1E696ABC0];
            v31 = v20;
            v32 = @"Could not get config";
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
            v12 = v11 = v2;
            v13 = [v10 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v12];
            [*(*(*(a1 + 40) + 8) + 40) setObject:v13 forKeyedSubscript:v7];

            v2 = v11;
          }
        }

        v4 = [obj countByEnumeratingWithState:&v26 objects:v33 count:16];
      }

      while (v4);
    }
  }

  else
  {
    v14 = +[UAFConfigurationManager defaultManager];
    v2 = [v14 getAllAssetSets];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v2;
  v16 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [UAFCommonUtilities resetAutoAsset:*(*(&v22 + 1) + 8 * j) userInfo:*(*(*(a1 + 40) + 8) + 40)];
      }

      v17 = [v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }
}

- (void)resetAssetSets:(id)sets queue:(id)queue completion:(id)completion
{
  v25[1] = *MEMORY[0x1E69E9840];
  setsCopy = sets;
  queueCopy = queue;
  completionCopy = completion;
  if (!queueCopy)
  {
    queueCopy = +[UAFAssetSetManager getConcurrentQueue];
  }

  v10 = MEMORY[0x1E695DF90];
  v24 = @"Operation";
  v25[0] = @"ResetAssetSets";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v12 = [v10 dictionaryWithDictionary:v11];

  if (setsCopy)
  {
    [v12 setObject:setsCopy forKeyedSubscript:@"AssetSets"];
  }

  v13 = +[UAFAssetSetManager createXPCConnection];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__UAFAssetSetManager_resetAssetSets_queue_completion___block_invoke;
  v19[3] = &unk_1E7FFE2F8;
  v20 = v13;
  v21 = queueCopy;
  v22 = setsCopy;
  v23 = completionCopy;
  v14 = setsCopy;
  v15 = queueCopy;
  v16 = completionCopy;
  v17 = v13;
  v18 = MEMORY[0x1BFB33950](v19);
  [v17 operationWithConfig:v12 completion:v18];
}

void __54__UAFAssetSetManager_resetAssetSets_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(a1 + 56);
  if (v4)
  {
    v5 = *(a1 + 40);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __54__UAFAssetSetManager_resetAssetSets_queue_completion___block_invoke_2;
    v8[3] = &unk_1E7FFD940;
    v10 = v4;
    v9 = v3;
    dispatch_async(v5, v8);
  }

  v6 = UAFGetLogCategory(&UAFLogContextClient);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"all";
    if (*(a1 + 48))
    {
      v7 = *(a1 + 48);
    }

    *buf = 136315394;
    v12 = "[UAFAssetSetManager resetAssetSets:queue:completion:]_block_invoke";
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_1BCF2C000, v6, OS_LOG_TYPE_DEFAULT, "%s reset asset sets '%{public}@'", buf, 0x16u);
  }
}

- (id)assetSetInfo:(id)info
{
  v45 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[UAFConfigurationManager defaultManager];
  v6 = v5;
  if (infoCopy)
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v7 = infoCopy;
    v8 = [v7 countByEnumeratingWithState:&v37 objects:v44 count:{16, infoCopy}];
    if (v8)
    {
      v9 = v8;
      getAllAssetSets = 0;
      v11 = *v38;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [v6 getAssetSet:*(*(&v37 + 1) + 8 * i)];
          if (v12)
          {
            if (!getAllAssetSets)
            {
              getAllAssetSets = objc_opt_new();
            }

            [getAllAssetSets addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v37 objects:v44 count:16];
      }

      while (v9);
    }

    else
    {
      getAllAssetSets = 0;
    }
  }

  else
  {
    getAllAssetSets = [v5 getAllAssetSets];
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = getAllAssetSets;
  v32 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
  v13 = 0;
  if (v32)
  {
    v31 = *v34;
    v29 = v6;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v34 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v33 + 1) + 8 * j);
        name = [v15 name];

        if (name)
        {
          if (!v13)
          {
            v13 = objc_opt_new();
          }

          v41[0] = @"FileURL";
          originatingURL = [v15 originatingURL];
          if (originatingURL)
          {
            originatingURL2 = [v15 originatingURL];
            i = [originatingURL2 path];
            v18 = i;
          }

          else
          {
            v18 = &stru_1F3B6B510;
          }

          v42[0] = v18;
          v41[1] = @"PallasURL";
          name2 = [v15 name];
          v20 = [UAFCommonUtilities getUAFPallasURLForAssetSet:name2];
          v42[1] = v20;
          v41[2] = @"Population";
          name3 = [v15 name];
          v22 = [UAFCommonUtilities getUAFPopulationForAssetSet:name3];
          v42[2] = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

          if (originatingURL)
          {
          }

          name4 = [v15 name];
          [v13 setObject:v23 forKeyedSubscript:name4];

          v6 = v29;
        }
      }

      v32 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    }

    while (v32);
  }

  v25 = v13;
  return v13;
}

@end