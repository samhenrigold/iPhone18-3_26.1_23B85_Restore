@interface ASDAppQuery
+ (id)_defaultExecutor;
+ (id)queryDefaultPairedWatchForBetaApps;
+ (id)queryForAlmondApps;
+ (id)queryForAppClipWithStoreItemID:(int64_t)d;
+ (id)queryForBeagleApps;
+ (id)queryForBetaApps;
+ (id)queryForBetaAppsOnPairedDevice:(id)device;
+ (id)queryForBetaAppsWithStoreItemIDs:(id)ds;
+ (id)queryForBundleAtPath:(id)path;
+ (id)queryForBundleIDs:(id)ds;
+ (id)queryForRemoteAppLibraryOnDevice:(id)device;
+ (id)queryForStoreApps;
+ (id)queryForStoreItemIDs:(id)ds;
+ (id)queryForSystemAppsOnPairedDevice:(id)device;
+ (id)queryForUpdates;
+ (id)queryWithPredicate:(id)predicate;
+ (id)queryWithPredicate:(id)predicate onPairedDevice:(id)device;
+ (void)anyWithPredicate:(id)predicate withResultHandler:(id)handler;
- (ASDAppQuery)init;
- (ASDAppQuery)initWithPredicate:(id)predicate;
- (ASDAppQuery)initWithPredicate:(id)predicate onPairedDevice:(id)device;
- (ASDAppQuery)initWithPredicate:(id)predicate queryExecutor:(id)executor serviceBroker:(id)broker notificationCenter:(id)center;
- (ASDAppQueryResultsObserver)observer;
- (id)_downloadProgressForApp:(void *)app fromRemoteProgress:;
- (id)_installProgressForApp:(uint64_t)app fromRemoteProgress:(void *)progress;
- (id)_postProcessProgressForApp:(void *)app fromRemoteProgress:;
- (id)_removeCachedResultsForBundleIDs:(uint64_t)ds;
- (id)_replaceCachedResultsWithResults:(id *)results;
- (void)_debugReceivedApps:(uint64_t)apps;
- (void)_executeQueryWithPredicate:(void *)predicate onPairedDevice:(void *)device withCompletion:;
- (void)_handleAppsRemovedWithBundleIDs:(uint64_t)ds;
- (void)_handleAppsUpdatedWithResults:(uint64_t)results;
- (void)_handleBrokerConnectionNotification:(id)notification;
- (void)_handleCancelForApp:(char)app reportRemotely:;
- (void)_handleNotificationErrorWithUserInfo:(uint64_t)info;
- (void)_handleNotificationRefreshWithUserInfo:(uint64_t)info;
- (void)_handlePauseForApp:(uint64_t)app;
- (void)_handleQueryOptionsWithResults:(uint64_t)results;
- (void)_handleResumeForApp:(uint64_t)app;
- (void)_newProgressForApp:(uint64_t)app fromRemoteProgress:(void *)progress usingServiceBroker:(void *)broker;
- (void)_sendResultsChangedWithResults:(uint64_t)results;
- (void)_updateCachedResultsWithResults:(uint64_t)results;
- (void)dealloc;
- (void)executeQueryWithResultHandler:(id)handler;
- (void)notificationCenter:(id)center receivedNotifications:(id)notifications;
- (void)notificationCenter:(id)center receivedProgress:(id)progress;
- (void)setObserver:(id)observer;
@end

@implementation ASDAppQuery

+ (id)queryForAlmondApps
{
  v2 = [self alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"softwarePlatform == %ld", 1];
  v4 = [v2 initWithPredicate:v3];

  return v4;
}

+ (id)queryForAppClipWithStoreItemID:(int64_t)d
{
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAppClip == YES AND isStoreApp == YES AND storeItemID == %lld", d];
  v5 = [[self alloc] initWithPredicate:v4];

  return v5;
}

+ (id)queryForBeagleApps
{
  v2 = [self alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isOcelot == YES"];
  v4 = [v2 initWithPredicate:v3];

  return v4;
}

+ (id)queryForBetaApps
{
  v2 = [self alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isBetaApp == YES"];
  v4 = [v2 initWithPredicate:v3];

  return v4;
}

+ (id)queryForBetaAppsWithStoreItemIDs:(id)ds
{
  dsCopy = ds;
  v5 = [self alloc];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAppClip == NO AND isBetaApp == YES AND storeItemID IN %@", dsCopy];

  v7 = [v5 initWithPredicate:dsCopy];

  return v7;
}

+ (id)queryForBundleIDs:(id)ds
{
  dsCopy = ds;
  v5 = [self alloc];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleID IN %@", dsCopy];

  v7 = [v5 initWithPredicate:dsCopy];

  return v7;
}

+ (id)queryForBundleAtPath:(id)path
{
  pathCopy = path;
  v5 = [self alloc];
  pathCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundlePath == %@", pathCopy];

  v7 = [v5 initWithPredicate:pathCopy];

  return v7;
}

+ (id)queryDefaultPairedWatchForBetaApps
{
  v3 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&dword_1B8220000, v3, OS_LOG_TYPE_ERROR, "Please note that this ASDAppQuery doesn't return real results yet.", v8, 2u);
  }

  v4 = [self alloc];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isBetaApp == YES"];
  v6 = [v4 initWithPredicate:v5];

  return v6;
}

+ (id)queryForBetaAppsOnPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [self alloc];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isBetaApp == YES"];
  v7 = [v5 initWithPredicate:v6 onPairedDevice:deviceCopy];

  return v7;
}

+ (id)queryForRemoteAppLibraryOnDevice:(id)device
{
  deviceCopy = device;
  v6 = [self alloc];
  v7 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v8 = deviceCopy;
  if (v6)
  {
    v9 = v7;
    v10 = +[ASDAppQuery _defaultExecutor];
    v11 = +[ASDServiceBroker defaultBroker];
    v12 = +[ASDNotificationCenter defaultCenter];
    v6 = [v6 initWithPredicate:v9 queryExecutor:v10 serviceBroker:v11 notificationCenter:v12];

    if (v6)
    {
      objc_storeStrong(v6 + 9, device);
    }
  }

  return v6;
}

+ (id)queryForStoreApps
{
  v2 = [self alloc];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAppClip == NO AND isStoreApp == YES"];
  v4 = [v2 initWithPredicate:v3];

  return v4;
}

+ (id)queryForStoreItemIDs:(id)ds
{
  dsCopy = ds;
  v5 = [self alloc];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAppClip == NO AND isStoreApp == YES AND storeItemID IN %@", dsCopy];

  v7 = [v5 initWithPredicate:dsCopy];

  return v7;
}

+ (id)queryForSystemAppsOnPairedDevice:(id)device
{
  deviceCopy = device;
  v5 = [self alloc];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isSystemApp == YES"];
  v7 = [v5 initWithPredicate:v6 onPairedDevice:deviceCopy];

  return v7;
}

+ (id)queryForUpdates
{
  v2 = [self alloc];
  if (v2)
  {
    v2 = [v2 init];
    if (v2)
    {
      v2[17] = 1;
    }
  }

  return v2;
}

- (ASDAppQuery)init
{
  v3 = [MEMORY[0x1E696AE18] predicateWithValue:1];
  v4 = [(ASDAppQuery *)self initWithPredicate:v3];

  return v4;
}

+ (id)queryWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = [[self alloc] initWithPredicate:predicateCopy];

  return v5;
}

- (ASDAppQuery)initWithPredicate:(id)predicate
{
  predicateCopy = predicate;
  v5 = +[ASDAppQuery _defaultExecutor];
  v6 = +[ASDServiceBroker defaultBroker];
  v7 = +[ASDNotificationCenter defaultCenter];
  v8 = [(ASDAppQuery *)self initWithPredicate:predicateCopy queryExecutor:v5 serviceBroker:v6 notificationCenter:v7];

  return v8;
}

+ (id)_defaultExecutor
{
  objc_opt_self();
  if (_MergedGlobals_23 != -1)
  {
    dispatch_once(&_MergedGlobals_23, &__block_literal_global_0);
  }

  v1 = qword_1ED90D438;

  return v1;
}

+ (id)queryWithPredicate:(id)predicate onPairedDevice:(id)device
{
  deviceCopy = device;
  predicateCopy = predicate;
  v8 = [[self alloc] initWithPredicate:predicateCopy onPairedDevice:deviceCopy];

  return v8;
}

- (ASDAppQuery)initWithPredicate:(id)predicate onPairedDevice:(id)device
{
  deviceCopy = device;
  predicateCopy = predicate;
  v9 = +[ASDAppQuery _defaultExecutor];
  v10 = +[ASDServiceBroker defaultBroker];
  v11 = +[ASDNotificationCenter defaultCenter];
  v12 = deviceCopy;
  if (self)
  {
    v13 = [(ASDAppQuery *)self initWithPredicate:predicateCopy queryExecutor:v9 serviceBroker:v10 notificationCenter:v11];
    self = v13;
    if (v13)
    {
      objc_storeStrong(&v13->_device, device);
    }
  }

  return self;
}

- (ASDAppQuery)initWithPredicate:(id)predicate queryExecutor:(id)executor serviceBroker:(id)broker notificationCenter:(id)center
{
  predicateCopy = predicate;
  executorCopy = executor;
  brokerCopy = broker;
  centerCopy = center;
  v27.receiver = self;
  v27.super_class = ASDAppQuery;
  v14 = [(ASDAppQuery *)&v27 init];
  if (v14)
  {
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.AppStoreDaemon.ASDAppQuery", v15);
    dispatchQueue = v14->_dispatchQueue;
    v14->_dispatchQueue = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.AppStoreDaemon.ASDAppQuery.notify", v18);
    notificationQueue = v14->_notificationQueue;
    v14->_notificationQueue = v19;

    v21 = [predicateCopy copy];
    predicate = v14->_predicate;
    v14->_predicate = v21;

    objc_storeStrong(&v14->_serviceBroker, broker);
    objc_storeStrong(&v14->_queryExecutor, executor);
    v23 = objc_opt_new();
    resultCache = v14->_resultCache;
    v14->_resultCache = v23;

    objc_storeStrong(&v14->_notificationCenter, center);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v14 selector:sel__handleBrokerConnectionNotification_ name:ASDServiceBrokerConnectedNotification object:v14->_serviceBroker];
  }

  return v14;
}

- (void)dealloc
{
  [(ASDNotificationCenter *)self->_notificationCenter removeNotificationObserver:self forName:@"LS"];
  [(ASDNotificationCenter *)self->_notificationCenter removeProgressObserver:self];
  v3.receiver = self;
  v3.super_class = ASDAppQuery;
  [(ASDAppQuery *)&v3 dealloc];
}

- (ASDAppQueryResultsObserver)observer
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__ASDAppQuery_observer__block_invoke;
  v5[3] = &unk_1E7CDB840;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(dispatchQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __23__ASDAppQuery_observer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x1EEE66BB8](WeakRetained, v4);
}

- (void)setObserver:(id)observer
{
  observerCopy = observer;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__ASDAppQuery_setObserver___block_invoke;
  v7[3] = &unk_1E7CDB868;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __27__ASDAppQuery_setObserver___block_invoke(uint64_t a1)
{
  objc_storeWeak((*(a1 + 32) + 40), *(a1 + 40));
  v2 = *(*(a1 + 32) + 24);
  if (*(a1 + 40))
  {
    [v2 addNotificationObserver:? forName:?];
    v3 = *(*(a1 + 32) + 24);

    return [v3 addProgressObserver:?];
  }

  else
  {
    [v2 removeNotificationObserver:? forName:?];
    v5 = *(*(a1 + 32) + 24);

    return [v5 removeProgressObserver:?];
  }
}

+ (void)anyWithPredicate:(id)predicate withResultHandler:(id)handler
{
  handlerCopy = handler;
  predicateCopy = predicate;
  v8 = +[(ASDAppQuery *)self];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__ASDAppQuery_anyWithPredicate_withResultHandler___block_invoke;
  v10[3] = &unk_1E7CDB7A8;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [v8 executeQueryWithPredicate:predicateCopy onPairedDevice:0 remoteDeviceID:0 withResultHandler:v10];
}

void __50__ASDAppQuery_anyWithPredicate_withResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 firstObject];
  (*(v4 + 16))(v4, v6, v5);
}

- (void)executeQueryWithResultHandler:(id)handler
{
  handlerCopy = handler;
  predicate = self->_predicate;
  device = self->_device;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke;
  v8[3] = &unk_1E7CDB8E0;
  v8[4] = self;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(ASDAppQuery *)self _executeQueryWithPredicate:device onPairedDevice:v8 withCompletion:?];
}

void __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 8);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke_2;
  v12[3] = &unk_1E7CDB8B8;
  v12[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v6;
  v11 = v5;
  dispatch_sync(v9, v12);
}

void __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke_2(uint64_t a1)
{
  [(ASDAppQuery *)*(a1 + 32) _debugReceivedApps:?];
  *(*(a1 + 32) + 16) = 1;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [(ASDAppQuery *)v2 _replaceCachedResultsWithResults:v3];
    [(ASDAppQuery *)*(a1 + 32) _handleQueryOptionsWithResults:?];
    v5 = *(*(a1 + 32) + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke_3;
    v12[3] = &unk_1E7CDB890;
    v6 = &v14;
    v14 = *(a1 + 56);
    v7 = &v13;
    v13 = *(a1 + 40);
    v8 = v12;
  }

  else
  {
    v5 = *(v2 + 32);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __45__ASDAppQuery_executeQueryWithResultHandler___block_invoke_4;
    v9[3] = &unk_1E7CDB890;
    v6 = &v11;
    v11 = *(a1 + 56);
    v7 = &v10;
    v10 = *(a1 + 48);
    v8 = v9;
  }

  dispatch_async(v5, v8);
}

- (void)_debugReceivedApps:(uint64_t)apps
{
  v3 = a2;
  if (apps)
  {
    v4 = ASDLogHandleForCategory(13);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);

    if (v5)
    {
      v6 = [v3 count];
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __34__ASDAppQuery__debugReceivedApps___block_invoke;
      v7[3] = &unk_1E7CDB958;
      v7[4] = apps;
      v7[5] = v6;
      [v3 enumerateObjectsUsingBlock:v7];
    }
  }
}

- (id)_replaceCachedResultsWithResults:(id *)results
{
  resultsCopy = results;
  if (results)
  {
    v3 = a2;
    [(ASDAppQuery *)resultsCopy _updateCachedResultsWithResults:v3];
    v4 = MEMORY[0x1E695DFA8];
    allKeys = [resultsCopy[7] allKeys];
    v6 = [v4 setWithArray:allKeys];

    v7 = MEMORY[0x1E695DFD8];
    v8 = [v3 valueForKey:@"bundleID"];

    v9 = [v7 setWithArray:v8];
    [v6 minusSet:v9];

    allObjects = [v6 allObjects];
    resultsCopy = [(ASDAppQuery *)resultsCopy _removeCachedResultsForBundleIDs:allObjects];
  }

  return resultsCopy;
}

- (void)_handleQueryOptionsWithResults:(uint64_t)results
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (results)
  {
    if (*(results + 88))
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v10;
        do
        {
          v8 = 0;
          do
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v4);
            }

            [*(*(&v9 + 1) + 8 * v8++) loadUpdateMetadataIfNecessary];
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)_executeQueryWithPredicate:(void *)predicate onPairedDevice:(void *)device withCompletion:
{
  v7 = a2;
  predicateCopy = predicate;
  deviceCopy = device;
  v10 = deviceCopy;
  if (self)
  {
    if (*(self + 17) == 1)
    {
      v11 = (*(self + 88) >> 1) & 1;
      v12 = *(self + 48);
      v13 = *(self + 72);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __72__ASDAppQuery__executeQueryWithPredicate_onPairedDevice_withCompletion___block_invoke;
      v19[3] = &unk_1E7CDB7A8;
      v14 = &v20;
      v20 = deviceCopy;
      [v12 executeUpdatesQueryWithPredicateReloadingFromServer:v11 onPairedDevice:predicateCopy remoteDeviceID:v13 withResultHandler:v19];
    }

    else
    {
      v15 = *(self + 48);
      v16 = *(self + 72);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__ASDAppQuery__executeQueryWithPredicate_onPairedDevice_withCompletion___block_invoke_2;
      v17[3] = &unk_1E7CDB7A8;
      v14 = &v18;
      v18 = deviceCopy;
      [v15 executeQueryWithPredicate:v7 onPairedDevice:predicateCopy remoteDeviceID:v16 withResultHandler:v17];
    }
  }
}

- (void)notificationCenter:(id)center receivedNotifications:(id)notifications
{
  notificationsCopy = notifications;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__ASDAppQuery_notificationCenter_receivedNotifications___block_invoke;
  v8[3] = &unk_1E7CDB868;
  v8[4] = self;
  v9 = notificationsCopy;
  v7 = notificationsCopy;
  dispatch_async(dispatchQueue, v8);
}

void __56__ASDAppQuery_notificationCenter_receivedNotifications___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    v2 = *(a1 + 40);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __56__ASDAppQuery_notificationCenter_receivedNotifications___block_invoke_41;
    v5[3] = &unk_1E7CDB908;
    v5[4] = v1;
    [v2 enumerateObjectsUsingBlock:v5];
  }

  else
  {
    v3 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v7 = objc_opt_class();
      v4 = v7;
      _os_log_impl(&dword_1B8220000, v3, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring notifications until query has been run at least once", buf, 0xCu);
    }
  }
}

void __56__ASDAppQuery_notificationCenter_receivedNotifications___block_invoke_41(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 userInfo];
  v5 = [v3 name];
  v6 = [v5 isEqualToString:@"LS"];

  if (v6)
  {
    v7 = [v4 objectForKeyedSubscript:@"RD"];
    if (!v7)
    {
LABEL_8:
      v11 = [v4 objectForKeyedSubscript:{@"AC", *v33, *&v33[8], v34}];
      if ([v11 isEqualToString:@"RD"])
      {
        v14 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          *v33 = 138543362;
          *&v33[4] = v15;
          v16 = v15;
          _os_log_impl(&dword_1B8220000, v14, OS_LOG_TYPE_INFO, "[%{public}@]: Handling apps registered notification", v33, 0xCu);
        }

        v17 = *(a1 + 32);
        if (!v17)
        {
          goto LABEL_35;
        }

        v18 = [v4 objectForKeyedSubscript:@"AP"];
        if ([v18 count])
        {
          [(ASDAppQuery *)v17 _handleAppsUpdatedWithResults:v18];
        }
      }

      else if ([v11 isEqualToString:@"UR"])
      {
        v19 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          v20 = objc_opt_class();
          *v33 = 138543362;
          *&v33[4] = v20;
          v21 = v20;
          _os_log_impl(&dword_1B8220000, v19, OS_LOG_TYPE_INFO, "[%{public}@]: Handling apps unregistered notification", v33, 0xCu);
        }

        v22 = *(a1 + 32);
        if (!v22)
        {
          goto LABEL_35;
        }

        v18 = [v4 objectForKeyedSubscript:@"BI"];
        if ([v18 count])
        {
          [(ASDAppQuery *)v22 _handleAppsRemovedWithBundleIDs:v18];
        }
      }

      else
      {
        if ([v11 isEqualToString:@"RL"])
        {
          v24 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = objc_opt_class();
            *v33 = 138543362;
            *&v33[4] = v25;
            v26 = v25;
            _os_log_impl(&dword_1B8220000, v24, OS_LOG_TYPE_INFO, "[%{public}@]: Handling apps refreshed notification", v33, 0xCu);
          }

          [(ASDAppQuery *)*(a1 + 32) _handleNotificationRefreshWithUserInfo:v4];
          goto LABEL_35;
        }

        v27 = [v11 isEqualToString:@"ER"];
        v28 = ASDLogHandleForCategory(13);
        v18 = v28;
        if (v27)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = objc_opt_class();
            *v33 = 138543618;
            *&v33[4] = v29;
            *&v33[12] = 2114;
            *&v33[14] = v3;
            v30 = v29;
            _os_log_impl(&dword_1B8220000, v18, OS_LOG_TYPE_INFO, "[%{public}@]: Handling app error notification action: %{public}@", v33, 0x16u);
          }

          [(ASDAppQuery *)*(a1 + 32) _handleNotificationErrorWithUserInfo:v4];
          goto LABEL_35;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          *v33 = 138543618;
          *&v33[4] = v31;
          *&v33[12] = 2114;
          *&v33[14] = v3;
          v32 = v31;
          _os_log_error_impl(&dword_1B8220000, v18, OS_LOG_TYPE_ERROR, "[%{public}@]: Received unhandled action: %{public}@", v33, 0x16u);
        }
      }

LABEL_35:
      goto LABEL_36;
    }

    v8 = *(*(a1 + 32) + 80);
    if (v8)
    {
      v9 = [v8 pairingID];
      v10 = [v9 isEqual:v7];

      v11 = ASDLogHandleForCategory(13);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
      if ((v10 & 1) == 0)
      {
        if (v12)
        {
          *v33 = 138543618;
          *&v33[4] = objc_opt_class();
          *&v33[12] = 2114;
          *&v33[14] = v7;
          v23 = *&v33[4];
          _os_log_impl(&dword_1B8220000, v11, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring notification for unmatched device: %{public}@", v33, 0x16u);
        }

        goto LABEL_35;
      }

      if (v12)
      {
        *v33 = 138543618;
        *&v33[4] = objc_opt_class();
        *&v33[12] = 2114;
        *&v33[14] = v7;
        v13 = *&v33[4];
        _os_log_impl(&dword_1B8220000, v11, OS_LOG_TYPE_INFO, "[%{public}@]: Handling device specific notification: %{public}@", v33, 0x16u);
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v33 = 138543618;
      *&v33[4] = objc_opt_class();
      *&v33[12] = 2114;
      *&v33[14] = v3;
      v11 = *&v33[4];
      _os_log_error_impl(&dword_1B8220000, v7, OS_LOG_TYPE_ERROR, "[%{public}@]: Received unexpected notification: %{public}@", v33, 0x16u);
      goto LABEL_35;
    }
  }

LABEL_36:
}

- (void)_handleNotificationRefreshWithUserInfo:(uint64_t)info
{
  v13[2] = *MEMORY[0x1E69E9840];
  if (info)
  {
    v3 = [a2 objectForKeyedSubscript:@"BI"];
    if ([v3 count])
    {
      v4 = MEMORY[0x1E696AB28];
      v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleID IN %@", v3];
      v6 = *(info + 96);
      v13[0] = v5;
      v13[1] = v6;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
      v8 = [v4 andPredicateWithSubpredicates:v7];
    }

    else
    {
      v8 = *(info + 96);
    }

    v9 = *(info + 80);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__ASDAppQuery__handleNotificationRefreshWithUserInfo___block_invoke;
    v11[3] = &unk_1E7CDBA48;
    v11[4] = info;
    v12 = v3;
    v10 = v3;
    [(ASDAppQuery *)info _executeQueryWithPredicate:v8 onPairedDevice:v9 withCompletion:v11];
  }
}

- (void)_handleNotificationErrorWithUserInfo:(uint64_t)info
{
  if (info)
  {
    v3 = [a2 objectForKeyedSubscript:@"AP"];
    if ([v3 count])
    {
      [(ASDAppQuery *)info _handleAppsUpdatedWithResults:v3];
    }
  }
}

- (void)notificationCenter:(id)center receivedProgress:(id)progress
{
  progressCopy = progress;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__ASDAppQuery_notificationCenter_receivedProgress___block_invoke;
  v8[3] = &unk_1E7CDB868;
  v8[4] = self;
  v9 = progressCopy;
  v7 = progressCopy;
  dispatch_async(dispatchQueue, v8);
}

void __51__ASDAppQuery_notificationCenter_receivedProgress___block_invoke(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16))
  {
    v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*(a1 + 40), "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    obj = *(a1 + 40);
    v3 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
    if (!v3)
    {
      goto LABEL_47;
    }

    v5 = v3;
    v6 = *v87;
    v83 = *MEMORY[0x1E696A898];
    *&v4 = 138543874;
    v79 = v4;
    v7 = 0x1E696A000uLL;
    v84 = v2;
    while (1)
    {
      v8 = 0;
      v81 = v5;
      do
      {
        if (*v87 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v86 + 1) + 8 * v8);
        v10 = *(*(a1 + 32) + 56);
        v11 = [v9 bundleID];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (!v12)
        {
          if (![v9 reportRemotely])
          {
            goto LABEL_15;
          }

          v17 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            v18 = objc_opt_class();
            v19 = v18;
            v20 = [v9 bundleID];
            *buf = 138543618;
            v91 = v18;
            v92 = 2114;
            v93 = v20;
            _os_log_impl(&dword_1B8220000, v17, OS_LOG_TYPE_INFO, "[%{public}@]: Found untracked progress for remote install: %{public}@", buf, 0x16u);
          }

          v21 = [ASDApp alloc];
          v22 = [v9 bundleID];
          v23 = [(ASDApp *)v21 initWithBundleID:v22];

          [(ASDApp *)v23 setStatus:1];
          [(ASDApp *)v23 setRemoteProgress:v9];
          v24 = *(a1 + 32);
          v96 = v23;
          v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1];
          [(ASDAppQuery *)v24 _updateCachedResultsWithResults:v25];

          v26 = *(*(a1 + 32) + 56);
          v27 = [v9 bundleID];
          v12 = [v26 objectForKeyedSubscript:v27];

          v7 = 0x1E696A000;
          if (!v12)
          {
LABEL_15:
            v12 = ASDLogHandleForCategory(13);
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              goto LABEL_45;
            }

            v28 = objc_opt_class();
            v13 = v28;
            v29 = [v9 bundleID];
            *buf = 138543618;
            v91 = v28;
            v92 = 2114;
            v93 = v29;
            _os_log_impl(&dword_1B8220000, v12, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring untracked progress for: %{public}@", buf, 0x16u);

            goto LABEL_17;
          }
        }

        if ([v12 isInstalled])
        {
          v13 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = objc_opt_class();
            v15 = v14;
            v16 = [v9 bundleID];
            *buf = 138543618;
            v91 = v14;
            v92 = 2114;
            v93 = v16;
            _os_log_impl(&dword_1B8220000, v13, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring progress for installed: %{public}@", buf, 0x16u);

            v7 = 0x1E696A000;
          }

LABEL_17:

          goto LABEL_45;
        }

        v30 = [v12 progress];
        if (!v30)
        {
          v47 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
          {
            v48 = objc_opt_class();
            *buf = 138543618;
            v91 = v48;
            v92 = 2114;
            v93 = v12;
            v49 = v48;
            _os_log_impl(&dword_1B8220000, v47, OS_LOG_TYPE_INFO, "[%{public}@]: Progress started for: %{public}@", buf, 0x16u);
          }

          v31 = [ASDAppQuery _newProgressForApp:v12 fromRemoteProgress:v9 usingServiceBroker:?];
          [v12 setProgress:v31];
          v50 = [(ASDAppQuery *)*(a1 + 32) _downloadProgressForApp:v12 fromRemoteProgress:v9];
          [v12 setDownloadProgress:v50];

          v51 = [ASDAppQuery _installProgressForApp:v9 fromRemoteProgress:?];
          [v12 setInstallProgress:v51];

          -[NSObject setProgressPhase:](v12, "setProgressPhase:", [v9 phase]);
          v52 = [(ASDAppQuery *)*(a1 + 32) _postProcessProgressForApp:v12 fromRemoteProgress:v9];
          [v12 setPostProcessProgress:v52];
LABEL_39:

          goto LABEL_40;
        }

        v31 = v30;
        [v30 setCompletedUnitCount:{objc_msgSend(v9, "completedUnitCount")}];
        v32 = ASDLogHandleForCategory(13);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          v75 = objc_opt_class();
          v76 = v75;
          [v31 fractionCompleted];
          *buf = v79;
          v91 = v75;
          v7 = 0x1E696A000;
          v92 = 2048;
          v93 = v77;
          v94 = 2114;
          v95 = v12;
          _os_log_debug_impl(&dword_1B8220000, v32, OS_LOG_TYPE_DEBUG, "[%{public}@]: Setting %.2f for: %{public}@", buf, 0x20u);
        }

        v33 = [v12 downloadProgress];

        if (!v33)
        {
          v34 = [(ASDAppQuery *)*(a1 + 32) _downloadProgressForApp:v12 fromRemoteProgress:v9];
          [v12 setDownloadProgress:v34];
        }

        v35 = [v9 downloadCompletedUnitCount];
        v36 = [v12 downloadProgress];
        [v36 setCompletedUnitCount:v35];

        v37 = [v9 downloadTotalUnitCount];
        v38 = [v12 downloadProgress];
        [v38 setTotalUnitCount:v37];

        if ([v9 phase] == 2)
        {
          v39 = *(v7 + 3480);
          [v9 throughput];
          v40 = [v39 numberWithDouble:?];
          v41 = [v12 downloadProgress];
          [v41 setThroughput:v40];

          v42 = [v12 downloadProgress];
          v43 = *(v7 + 3480);
          [v9 throughput];
          v44 = [v43 numberWithDouble:?];
          [v42 setUserInfoObject:v44 forKey:v83];

          v45 = [v9 secondsRemaining];
          if (v45 < 0)
          {
            v46 = 0;
          }

          else
          {
            v46 = [*(v7 + 3480) numberWithInteger:{objc_msgSend(v9, "secondsRemaining")}];
            v80 = v46;
          }

          v53 = [v12 downloadProgress];
          [v53 setEstimatedTimeRemaining:v46];

          if ((v45 & 0x8000000000000000) == 0)
          {
          }

          v7 = 0x1E696A000uLL;
        }

        v54 = [v9 installCompletedUnitCount];
        v55 = [v12 installProgress];
        [v55 setCompletedUnitCount:v54];

        v56 = [v9 installTotalUnitCount];
        v57 = [v12 installProgress];
        [v57 setTotalUnitCount:v56];

        -[NSObject setProgressPhase:](v12, "setProgressPhase:", [v9 phase]);
        v58 = [v9 postProcessCompletedUnitCount];
        v59 = [v12 postProcessProgress];
        [v59 setCompletedUnitCount:v58];

        v60 = [v9 postProcessTotalUnitCount];
        v61 = [v12 postProcessProgress];
        [v61 setTotalUnitCount:v60];

        if ([v9 phase] == 5)
        {
          v62 = v6;
          v63 = *(v7 + 3480);
          [v9 throughput];
          v64 = [v63 numberWithDouble:?];
          v65 = [v12 postProcessProgress];
          [v65 setThroughput:v64];

          v66 = [v12 postProcessProgress];
          v67 = *(v7 + 3480);
          [v9 throughput];
          v68 = [v67 numberWithDouble:?];
          [v66 setUserInfoObject:v68 forKey:v83];

          v69 = [v9 secondsRemaining];
          if (v69 < 0)
          {
            v70 = 0;
            v52 = v82;
          }

          else
          {
            v52 = [*(v7 + 3480) numberWithInteger:{objc_msgSend(v9, "secondsRemaining")}];
            v70 = v52;
          }

          v71 = [v12 postProcessProgress];
          [v71 setEstimatedTimeRemaining:v70];

          v82 = v52;
          v2 = v84;
          v6 = v62;
          v5 = v81;
          if (v69 < 0)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

        v2 = v84;
LABEL_40:
        -[NSObject setHasPostProcessing:](v12, "setHasPostProcessing:", [v9 hasPostProcessing]);
        -[NSObject setEssentialBackgroundAssetDownloadEstimate:](v12, "setEssentialBackgroundAssetDownloadEstimate:", [v9 essentialBackgroundAssetDownloadEstimate]);
        if ([v31 isFinished])
        {
          v72 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v73 = objc_opt_class();
            *buf = 138543618;
            v91 = v73;
            v92 = 2114;
            v93 = v12;
            v74 = v73;
            _os_log_impl(&dword_1B8220000, v72, OS_LOG_TYPE_INFO, "[%{public}@]: Progress complete for: %{public}@", buf, 0x16u);

            v2 = v84;
          }
        }

        [v2 addObject:v12];

        v7 = 0x1E696A000;
LABEL_45:

        ++v8;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v86 objects:v97 count:16];
      if (!v5)
      {
LABEL_47:

        [(ASDAppQuery *)*(a1 + 32) _sendResultsChangedWithResults:v2];
        goto LABEL_50;
      }
    }
  }

  v2 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v91 = objc_opt_class();
    v78 = v91;
    _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_INFO, "[%{public}@]: Ignoring progress until query has been run at least once", buf, 0xCu);
  }

LABEL_50:
}

- (void)_updateCachedResultsWithResults:(uint64_t)results
{
  v65 = *MEMORY[0x1E69E9840];
  obj = a2;
  if (results)
  {
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v3 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v57;
      v53 = *MEMORY[0x1E696A898];
      *&v4 = 138543618;
      v49 = v4;
      v54 = *v57;
      do
      {
        v7 = 0;
        v51 = v5;
        do
        {
          if (*v57 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v56 + 1) + 8 * v7);
          bundleID = [v8 bundleID];
          if (bundleID)
          {
            v10 = [*(results + 56) objectForKeyedSubscript:bundleID];
            progress = [v10 progress];

            remoteProgress = [v8 remoteProgress];
            v13 = remoteProgress;
            if (remoteProgress)
            {
              if (!progress)
              {
                progress = [ASDAppQuery _newProgressForApp:results fromRemoteProgress:v8 usingServiceBroker:remoteProgress];
                v28 = [(ASDAppQuery *)results _downloadProgressForApp:v8 fromRemoteProgress:v13];
                [v8 setDownloadProgress:v28];

                v29 = [ASDAppQuery _installProgressForApp:results fromRemoteProgress:v13];
                [v8 setInstallProgress:v29];

                [v8 setProgressPhase:{-[NSObject phase](v13, "phase")}];
                v30 = [(ASDAppQuery *)results _postProcessProgressForApp:v8 fromRemoteProgress:v13];
                [v8 setPostProcessProgress:v30];
                goto LABEL_26;
              }

              [progress setCompletedUnitCount:{-[NSObject completedUnitCount](remoteProgress, "completedUnitCount")}];
              downloadCompletedUnitCount = [v13 downloadCompletedUnitCount];
              downloadProgress = [v8 downloadProgress];
              [downloadProgress setCompletedUnitCount:downloadCompletedUnitCount];

              downloadTotalUnitCount = [v13 downloadTotalUnitCount];
              downloadProgress2 = [v8 downloadProgress];
              [downloadProgress2 setTotalUnitCount:downloadTotalUnitCount];

              if ([v13 phase]== 2)
              {
                v18 = MEMORY[0x1E696AD98];
                [v13 throughput];
                v19 = [v18 numberWithDouble:?];
                downloadProgress3 = [v8 downloadProgress];
                [downloadProgress3 setThroughput:v19];

                downloadProgress4 = [v8 downloadProgress];
                v22 = MEMORY[0x1E696AD98];
                [v13 throughput];
                v23 = [v22 numberWithDouble:?];
                [downloadProgress4 setUserInfoObject:v23 forKey:v53];

                secondsRemaining = [v13 secondsRemaining];
                if (secondsRemaining < 0)
                {
                  v25 = 0;
                }

                else
                {
                  v25 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject secondsRemaining](v13, "secondsRemaining")}];
                  v50 = v25;
                }

                downloadProgress5 = [v8 downloadProgress];
                [downloadProgress5 setEstimatedTimeRemaining:v25];

                if ((secondsRemaining & 0x8000000000000000) == 0)
                {
                }
              }

              installCompletedUnitCount = [v13 installCompletedUnitCount];
              installProgress = [v8 installProgress];
              [installProgress setCompletedUnitCount:installCompletedUnitCount];

              installTotalUnitCount = [v13 installTotalUnitCount];
              installProgress2 = [v8 installProgress];
              [installProgress2 setTotalUnitCount:installTotalUnitCount];

              [v8 setProgressPhase:{-[NSObject phase](v13, "phase")}];
              postProcessCompletedUnitCount = [v13 postProcessCompletedUnitCount];
              postProcessProgress = [v8 postProcessProgress];
              [postProcessProgress setCompletedUnitCount:postProcessCompletedUnitCount];

              postProcessTotalUnitCount = [v13 postProcessTotalUnitCount];
              postProcessProgress2 = [v8 postProcessProgress];
              [postProcessProgress2 setTotalUnitCount:postProcessTotalUnitCount];

              if ([v13 phase]== 5)
              {
                v40 = MEMORY[0x1E696AD98];
                [v13 throughput];
                v41 = [v40 numberWithDouble:?];
                postProcessProgress3 = [v8 postProcessProgress];
                [postProcessProgress3 setThroughput:v41];

                postProcessProgress4 = [v8 postProcessProgress];
                v44 = MEMORY[0x1E696AD98];
                [v13 throughput];
                v45 = [v44 numberWithDouble:?];
                [postProcessProgress4 setUserInfoObject:v45 forKey:v53];

                secondsRemaining2 = [v13 secondsRemaining];
                if (secondsRemaining2 < 0)
                {
                  v47 = 0;
                  v30 = v52;
                }

                else
                {
                  v30 = [MEMORY[0x1E696AD98] numberWithInteger:{-[NSObject secondsRemaining](v13, "secondsRemaining")}];
                  v47 = v30;
                }

                postProcessProgress5 = [v8 postProcessProgress];
                [postProcessProgress5 setEstimatedTimeRemaining:v47];

                v52 = v30;
                v5 = v51;
                if ((secondsRemaining2 & 0x8000000000000000) == 0)
                {
LABEL_26:
                }
              }

              [v8 setHasPostProcessing:{-[NSObject hasPostProcessing](v13, "hasPostProcessing")}];
              [v8 setEssentialBackgroundAssetDownloadEstimate:{-[NSObject essentialBackgroundAssetDownloadEstimate](v13, "essentialBackgroundAssetDownloadEstimate")}];
              [v8 setProgress:progress];
              v6 = v54;
LABEL_28:
            }

            else if (progress)
            {
              [progress setCompletedUnitCount:{objc_msgSend(progress, "totalUnitCount")}];
              goto LABEL_28;
            }

            [*(results + 56) setObject:v8 forKeyedSubscript:bundleID];
            goto LABEL_30;
          }

          v13 = ASDLogHandleForCategory(13);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            v26 = objc_opt_class();
            *buf = v49;
            v61 = v26;
            v62 = 2114;
            v63 = v8;
            v27 = v26;
            _os_log_fault_impl(&dword_1B8220000, v13, OS_LOG_TYPE_FAULT, "[%{public}@]: Encountered result with no bundleID: %{public}@", buf, 0x16u);
          }

LABEL_30:

          ++v7;
        }

        while (v5 != v7);
        v5 = [obj countByEnumeratingWithState:&v56 objects:v64 count:16];
      }

      while (v5);
    }
  }
}

- (void)_newProgressForApp:(uint64_t)app fromRemoteProgress:(void *)progress usingServiceBroker:(void *)broker
{
  brokerCopy = broker;
  if (app)
  {
    v6 = [progress copy];
    v7 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(brokerCopy, "totalUnitCount")}];
    [v7 setPausable:1];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __72__ASDAppQuery__newProgressForApp_fromRemoteProgress_usingServiceBroker___block_invoke;
    v18[3] = &unk_1E7CDB868;
    v18[4] = app;
    v8 = v6;
    v19 = v8;
    [v7 setPausingHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__ASDAppQuery__newProgressForApp_fromRemoteProgress_usingServiceBroker___block_invoke_2;
    v16[3] = &unk_1E7CDB868;
    v16[4] = app;
    v9 = v8;
    v17 = v9;
    [v7 setResumingHandler:v16];
    [v7 setCancellable:1];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__ASDAppQuery__newProgressForApp_fromRemoteProgress_usingServiceBroker___block_invoke_3;
    v13[3] = &unk_1E7CDBA20;
    v13[4] = app;
    v14 = v9;
    v10 = brokerCopy;
    v15 = v10;
    v11 = v9;
    [v7 setCancellationHandler:v13];
    [v7 setCompletedUnitCount:{objc_msgSend(v10, "completedUnitCount")}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_downloadProgressForApp:(void *)app fromRemoteProgress:
{
  appCopy = app;
  if (self)
  {
    v6 = [a2 copy];
    v7 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(appCopy, "downloadTotalUnitCount")}];
    [v7 setKind:*MEMORY[0x1E696A888]];
    [v7 setCompletedUnitCount:{objc_msgSend(appCopy, "downloadCompletedUnitCount")}];
    if ([appCopy phase] == 2)
    {
      v8 = MEMORY[0x1E696AD98];
      [appCopy throughput];
      v9 = [v8 numberWithDouble:?];
      [v7 setThroughput:v9];

      v10 = MEMORY[0x1E696AD98];
      [appCopy throughput];
      v11 = [v10 numberWithDouble:?];
      [v7 setUserInfoObject:v11 forKey:*MEMORY[0x1E696A898]];

      if (([appCopy secondsRemaining] & 0x8000000000000000) == 0)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(appCopy, "secondsRemaining")}];
        [v7 setEstimatedTimeRemaining:v12];
      }
    }

    [v7 setPausable:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __58__ASDAppQuery__downloadProgressForApp_fromRemoteProgress___block_invoke;
    v22[3] = &unk_1E7CDB868;
    v22[4] = self;
    v13 = v6;
    v23 = v13;
    [v7 setPausingHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __58__ASDAppQuery__downloadProgressForApp_fromRemoteProgress___block_invoke_2;
    v20[3] = &unk_1E7CDB868;
    v20[4] = self;
    v14 = v13;
    v21 = v14;
    [v7 setResumingHandler:v20];
    [v7 setCancellable:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __58__ASDAppQuery__downloadProgressForApp_fromRemoteProgress___block_invoke_3;
    v17[3] = &unk_1E7CDBA20;
    v17[4] = self;
    v18 = v14;
    v19 = appCopy;
    v15 = v14;
    [v7 setCancellationHandler:v17];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_installProgressForApp:(uint64_t)app fromRemoteProgress:(void *)progress
{
  if (app)
  {
    v2 = MEMORY[0x1E696AE38];
    progressCopy = progress;
    v4 = [v2 discreteProgressWithTotalUnitCount:{objc_msgSend(progressCopy, "installTotalUnitCount")}];
    installCompletedUnitCount = [progressCopy installCompletedUnitCount];

    [v4 setCompletedUnitCount:installCompletedUnitCount];
    [v4 setPausable:0];
    [v4 setCancellable:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_postProcessProgressForApp:(void *)app fromRemoteProgress:
{
  appCopy = app;
  if (self)
  {
    v6 = [a2 copy];
    v7 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(appCopy, "postProcessTotalUnitCount")}];
    [v7 setKind:*MEMORY[0x1E696A888]];
    [v7 setCompletedUnitCount:{objc_msgSend(appCopy, "postProcessCompletedUnitCount")}];
    if ([appCopy phase] == 5)
    {
      v8 = MEMORY[0x1E696AD98];
      [appCopy throughput];
      v9 = [v8 numberWithDouble:?];
      [v7 setThroughput:v9];

      v10 = MEMORY[0x1E696AD98];
      [appCopy throughput];
      v11 = [v10 numberWithDouble:?];
      [v7 setUserInfoObject:v11 forKey:*MEMORY[0x1E696A898]];

      if (([appCopy secondsRemaining] & 0x8000000000000000) == 0)
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(appCopy, "secondsRemaining")}];
        [v7 setEstimatedTimeRemaining:v12];
      }
    }

    [v7 setPausable:1];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __61__ASDAppQuery__postProcessProgressForApp_fromRemoteProgress___block_invoke;
    v22[3] = &unk_1E7CDB868;
    v22[4] = self;
    v13 = v6;
    v23 = v13;
    [v7 setPausingHandler:v22];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __61__ASDAppQuery__postProcessProgressForApp_fromRemoteProgress___block_invoke_2;
    v20[3] = &unk_1E7CDB868;
    v20[4] = self;
    v14 = v13;
    v21 = v14;
    [v7 setResumingHandler:v20];
    [v7 setCancellable:1];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __61__ASDAppQuery__postProcessProgressForApp_fromRemoteProgress___block_invoke_3;
    v17[3] = &unk_1E7CDBA20;
    v17[4] = self;
    v18 = v14;
    v19 = appCopy;
    v15 = v14;
    [v7 setCancellationHandler:v17];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_sendResultsChangedWithResults:(uint64_t)results
{
  v3 = a2;
  v4 = v3;
  if (results && [v3 count])
  {
    [(ASDAppQuery *)results _handleQueryOptionsWithResults:v4];
    v5 = *(results + 32);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__ASDAppQuery__sendResultsChangedWithResults___block_invoke;
    v6[3] = &unk_1E7CDB868;
    v6[4] = results;
    v7 = v4;
    dispatch_async(v5, v6);
  }
}

void __31__ASDAppQuery__defaultExecutor__block_invoke()
{
  v0 = [ASDAppQueryExecutor alloc];
  v1 = +[ASDServiceBroker defaultBroker];
  v2 = [(ASDAppQueryExecutor *)v0 initWithServiceBroker:v1];

  v3 = qword_1ED90D438;
  qword_1ED90D438 = v2;
}

- (void)_handleBrokerConnectionNotification:(id)notification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__ASDAppQuery__handleBrokerConnectionNotification___block_invoke;
  block[3] = &unk_1E7CDB930;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __51__ASDAppQuery__handleBrokerConnectionNotification___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 16) == 1)
  {
    v2 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = objc_opt_class();
      v3 = v5;
      _os_log_impl(&dword_1B8220000, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Forcing query refresh following broker connection", &v4, 0xCu);
    }

    [(ASDAppQuery *)*(a1 + 32) _handleNotificationRefreshWithUserInfo:?];
  }
}

void __34__ASDAppQuery__debugReceivedApps___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 134218754;
    v10 = v7;
    v11 = 2048;
    v12 = a3 + 1;
    v13 = 2048;
    v14 = v8;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEBUG, "%p app %lu of %lu: %@", &v9, 0x2Au);
  }
}

- (void)_handlePauseForApp:(uint64_t)app
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (app)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Requesting pause: %{public}@", buf, 0xCu);
    }

    v5 = *(app + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__ASDAppQuery__handlePauseForApp___block_invoke;
    v6[3] = &unk_1E7CDB9A8;
    v7 = v3;
    [v5 getLibraryServiceWithCompletionHandler:v6];
  }
}

void __34__ASDAppQuery__handlePauseForApp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __34__ASDAppQuery__handlePauseForApp___block_invoke_2;
    v12[3] = &unk_1E7CDB980;
    v13 = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __34__ASDAppQuery__handlePauseForApp___block_invoke_50;
    v10[3] = &unk_1E7CDB980;
    v11 = v7;
    [v6 pauseApp:v11 withReplyHandler:v10];

    v8 = v13;
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to pause: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }
}

void __34__ASDAppQuery__handlePauseForApp___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to pause: %{public}@ error: %{public}@", &v6, 0x16u);
  }
}

void __34__ASDAppQuery__handlePauseForApp___block_invoke_50(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to pause: %{public}@ error: %{public}@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Completed pause: %{public}@", &v8, 0xCu);
  }
}

- (void)_handleResumeForApp:(uint64_t)app
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (app)
  {
    v4 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v9 = v3;
      _os_log_impl(&dword_1B8220000, v4, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Requesting resume: %{public}@", buf, 0xCu);
    }

    v5 = *(app + 64);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__ASDAppQuery__handleResumeForApp___block_invoke;
    v6[3] = &unk_1E7CDB9A8;
    v7 = v3;
    [v5 getLibraryServiceWithCompletionHandler:v6];
  }
}

void __35__ASDAppQuery__handleResumeForApp___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__ASDAppQuery__handleResumeForApp___block_invoke_2;
    v12[3] = &unk_1E7CDB980;
    v13 = *(a1 + 32);
    v6 = [a2 remoteObjectProxyWithErrorHandler:v12];
    v7 = *(a1 + 32);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35__ASDAppQuery__handleResumeForApp___block_invoke_52;
    v10[3] = &unk_1E7CDB980;
    v11 = v7;
    [v6 resumeApp:v11 withReplyHandler:v10];

    v8 = v13;
  }

  else
  {
    v8 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      _os_log_error_impl(&dword_1B8220000, v8, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to resume: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }
}

void __35__ASDAppQuery__handleResumeForApp___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = 138543618;
    v7 = v5;
    v8 = 2114;
    v9 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to resume: %{public}@ error: %{public}@", &v6, 0x16u);
  }
}

void __35__ASDAppQuery__handleResumeForApp___block_invoke_52(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[ASDAppQuery]: Failed to resume: %{public}@ error: %{public}@", &v8, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Completed resume: %{public}@", &v8, 0xCu);
  }
}

- (void)_handleCancelForApp:(char)app reportRemotely:
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (self)
  {
    v6 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v5;
      _os_log_impl(&dword_1B8220000, v6, OS_LOG_TYPE_DEFAULT, "[ASDAppQuery]: Requesting cancelation: %{public}@", buf, 0xCu);
    }

    v7 = *(self + 64);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke;
    v8[3] = &unk_1E7CDB9F8;
    appCopy = app;
    v8[4] = self;
    v9 = v5;
    [v7 getLibraryServiceWithCompletionHandler:v8];
  }
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 48) != 1)
    {
      goto LABEL_7;
    }

    v31 = 0;
    v32 = &v31;
    v33 = 0x2050000000;
    v7 = qword_1ED90D440;
    v34 = qword_1ED90D440;
    if (!qword_1ED90D440)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getNRPairedDeviceRegistryClass_block_invoke;
      v36 = &unk_1E7CDBA78;
      v37 = &v31;
      __getNRPairedDeviceRegistryClass_block_invoke(buf);
      v7 = v32[3];
    }

    v8 = v7;
    _Block_object_dispose(&v31, 8);
    v9 = [v7 sharedInstance];
    v10 = [v9 getActivePairedDevice];
    v11 = [v10 pairingID];

    if (v11)
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_2;
      v29[3] = &unk_1E7CDB9D0;
      v13 = *(a1 + 32);
      v12 = a1 + 32;
      v29[4] = v13;
      v30 = *(v12 + 8);
      v14 = [v5 remoteObjectProxyWithErrorHandler:v29];
      v15 = *(v12 + 8);
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_53;
      v27[3] = &unk_1E7CDB9D0;
      v27[4] = *v12;
      v28 = v15;
      [v14 cancelApp:v28 onPairedDevice:v11 withReplyHandler:v27];
    }

    else
    {
LABEL_7:
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_54;
      v25[3] = &unk_1E7CDB9D0;
      v17 = *(a1 + 32);
      v16 = a1 + 32;
      v25[4] = v17;
      v26 = *(v16 + 8);
      v18 = [v5 remoteObjectProxyWithErrorHandler:v25];
      v19 = *(v16 + 8);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_55;
      v23[3] = &unk_1E7CDB9D0;
      v23[4] = *v16;
      v24 = v19;
      [v18 cancelApp:v24 withReplyHandler:v23];
    }
  }

  else
  {
    v20 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 32);
      v22 = *(a1 + 40);
      *buf = 138543874;
      *&buf[4] = v21;
      *&buf[12] = 2114;
      *&buf[14] = v22;
      *&buf[22] = 2114;
      v36 = v6;
      _os_log_error_impl(&dword_1B8220000, v20, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel: %{public}@ error: %{public}@", buf, 0x20u);
    }
  }
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel remote: %{public}@ error: %{public}@", &v7, 0x20u);
  }
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_53(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v10 = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel remote: %{public}@ error: %{public}@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Completed remote cancelation: %{public}@", &v10, 0x16u);
  }
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_54(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_error_impl(&dword_1B8220000, v4, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel: %{public}@ error: %{public}@", &v7, 0x20u);
  }
}

void __50__ASDAppQuery__handleCancelForApp_reportRemotely___block_invoke_55(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = ASDLogHandleForCategory(13);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v10 = 138543874;
      v11 = v6;
      v12 = 2114;
      v13 = v7;
      v14 = 2114;
      v15 = v3;
      _os_log_error_impl(&dword_1B8220000, v5, OS_LOG_TYPE_ERROR, "[%{public}@]: Failed to cancel: %{public}@ error: %{public}@", &v10, 0x20u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1B8220000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Completed cancelation: %{public}@", &v10, 0x16u);
  }
}

void __58__ASDAppQuery__downloadProgressForApp_fromRemoteProgress___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) reportRemotely];

  [(ASDAppQuery *)v1 _handleCancelForApp:v2 reportRemotely:v3];
}

void __61__ASDAppQuery__postProcessProgressForApp_fromRemoteProgress___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) reportRemotely];

  [(ASDAppQuery *)v1 _handleCancelForApp:v2 reportRemotely:v3];
}

void __72__ASDAppQuery__newProgressForApp_fromRemoteProgress_usingServiceBroker___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) reportRemotely];

  [(ASDAppQuery *)v1 _handleCancelForApp:v2 reportRemotely:v3];
}

- (id)_removeCachedResultsForBundleIDs:(uint64_t)ds
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [*(ds + 56) objectForKeyedSubscript:{v10, v18}];
        v12 = v11;
        if (v11)
        {
          progress = [v11 progress];
          v14 = progress;
          if (progress)
          {
            [progress setCompletedUnitCount:{objc_msgSend(progress, "totalUnitCount")}];
          }

          v15 = [[ASDApp alloc] initWithBundleID:v10];
          if ([v12 isStoreApp])
          {
            [(ASDApp *)v15 setStatus:256];
            -[ASDApp setStoreItemID:](v15, "setStoreItemID:", [v12 storeItemID]);
          }

          [v4 addObject:v15];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  [*(ds + 56) removeObjectsForKeys:v5];
  v16 = [v4 copy];

  return v16;
}

- (void)_handleAppsRemovedWithBundleIDs:(uint64_t)ds
{
  if (ds)
  {
    v3 = [(ASDAppQuery *)ds _removeCachedResultsForBundleIDs:a2];
    [(ASDAppQuery *)ds _sendResultsChangedWithResults:v3];
  }
}

- (void)_handleAppsUpdatedWithResults:(uint64_t)results
{
  v3 = a2;
  if (results)
  {
    v10 = v3;
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
    v5 = [v10 filteredArrayUsingPredicate:*(results + 96)];
    if ([v5 count])
    {
      [(ASDAppQuery *)results _updateCachedResultsWithResults:v5];
      [v4 addObjectsFromArray:v5];
    }

    v6 = [MEMORY[0x1E696AB28] notPredicateWithSubpredicate:*(results + 96)];
    v7 = [v10 filteredArrayUsingPredicate:v6];
    if ([v7 count])
    {
      v8 = [v7 valueForKey:@"bundleID"];
      v9 = [(ASDAppQuery *)results _removeCachedResultsForBundleIDs:v8];

      [v4 addObjectsFromArray:v9];
    }

    [(ASDAppQuery *)results _sendResultsChangedWithResults:v4];

    v3 = v10;
  }
}

void __54__ASDAppQuery__handleNotificationRefreshWithUserInfo___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__ASDAppQuery__handleNotificationRefreshWithUserInfo___block_invoke_2;
    block[3] = &unk_1E7CDBA20;
    block[4] = v7;
    v12 = v5;
    v13 = *(a1 + 40);
    dispatch_async(v8, block);
  }

  else
  {
    v9 = ASDLogHandleForCategory(13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = objc_opt_class();
      v16 = 2114;
      v17 = v6;
      v10 = v15;
      _os_log_error_impl(&dword_1B8220000, v9, OS_LOG_TYPE_ERROR, "[%{public}@]: Received refresh notification but refresh failed: %{public}@", buf, 0x16u);
    }
  }
}

void __54__ASDAppQuery__handleNotificationRefreshWithUserInfo___block_invoke_2(uint64_t a1)
{
  [(ASDAppQuery *)*(a1 + 32) _debugReceivedApps:?];
  v2 = [*(a1 + 48) count];
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v2)
  {
    [(ASDAppQuery *)*(a1 + 32) _handleAppsUpdatedWithResults:v3];
    v13 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 48)];
    v5 = MEMORY[0x1E695DFD8];
    v6 = [*(a1 + 40) valueForKey:@"bundleID"];
    v7 = [v5 setWithArray:v6];
    [v13 minusSet:v7];

    if (![v13 count])
    {
      goto LABEL_10;
    }

    v8 = *(a1 + 32);
    v9 = [v13 allObjects];
    [(ASDAppQuery *)v8 _handleAppsRemovedWithBundleIDs:v9];
  }

  else
  {
    v10 = v3;
    v13 = v10;
    if (!v4)
    {
      goto LABEL_10;
    }

    v11 = [(ASDAppQuery *)v4 _replaceCachedResultsWithResults:v10];
    if (v11)
    {
      v12 = [v13 arrayByAddingObjectsFromArray:v11];
    }

    else
    {
      v12 = [v13 copy];
    }

    v9 = v12;
    [(ASDAppQuery *)v4 _sendResultsChangedWithResults:v12];
  }

LABEL_10:
}

void __46__ASDAppQuery__sendResultsChangedWithResults___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = objc_loadWeakRetained((*(a1 + 32) + 40));
    [v4 appQuery:*(a1 + 32) resultsDidChange:*(a1 + 40)];
  }
}

@end