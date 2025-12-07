@interface DDSManager
- (DDSManager)initWithProvider:(id)provider tracker:(id)tracker;
- (DDSManager)initWithProvider:(id)provider tracker:(id)tracker dataSource:(id)source;
- (DDSManager)initWithProvider:(id)provider tracker:(id)tracker dataSource:(id)source autoAssetManager:(id)manager;
- (DDSManagingDelegate)delegate;
- (id)autoAssetQueryForAssertion:(id)assertion;
- (id)catalogUpdateDateForAssetType:(id)type;
- (int64_t)assetUpdateStatusForAssertion:(id)assertion;
- (int64_t)modifyAssetUpdateStatusForAssertion:(id)assertion status:(int64_t)status;
- (void)addAssertionForQuery:(id)query policy:(id)policy assertionID:(id)d clientID:(id)iD;
- (void)assertionIDsForClientID:(id)d reply:(id)reply;
- (void)beginUpdateCycleForAssetType:(id)type forced:(BOOL)forced discretionaryDownload:(BOOL)download;
- (void)createAutoAssetAssertionForExistingAssertions;
- (void)createRemoteSyncStateForAssetType:(id)type;
- (void)deleteV1AssetsIfNecessary;
- (void)didChangeDownloadState:(unint64_t)state forAsset:(id)asset;
- (void)didCompleteDownloadForAssertion:(id)assertion error:(id)error;
- (void)didCompleteDownloadForAssertions:(id)assertions error:(id)error;
- (void)didEndUpdateCycleWithAssetType:(id)type error:(id)error;
- (void)didStartUpdateCycleForAssetType:(id)type;
- (void)didUpdateCatalogWithAssetType:(id)type error:(id)error;
- (void)fetchAssetUpdateStatusForQuery:(id)query callback:(id)callback;
- (void)fetchCatalogBasedAssetUpdateStatusForAssertion:(id)assertion callback:(id)callback;
- (void)handleAddedNewDescriptor:(id)descriptor forAssertion:(id)assertion;
- (void)handleNewAssertions:(id)assertions;
- (void)handleRemovedAssertions:(id)assertions;
- (void)remoteSyncStateRequestsResetForAssetType:(id)type;
- (void)remoteSyncStateRequestsRetryForAssetType:(id)type;
- (void)remoteSyncStateRequestsUpdateForAssetType:(id)type;
- (void)removeAssertionWithID:(id)d;
- (void)removeOldAssets;
- (void)serverDidUpdateAssetsWithType:(id)type;
- (void)setCatalogUpdateDate:(id)date forAssetType:(id)type;
- (void)triggerDumpWithReply:(id)reply;
- (void)triggerUpdate;
- (void)updateAssetForQuery:(id)query callback:(id)callback;
- (void)updateAutoAssetForAssetType:(id)type;
- (void)updateCatalogBasedAssetForAssertion:(id)assertion callback:(id)callback;
- (void)updateCatalogForAssetType:(id)type withCompletion:(id)completion;
@end

@implementation DDSManager

- (DDSManager)initWithProvider:(id)provider tracker:(id)tracker dataSource:(id)source autoAssetManager:(id)manager
{
  v40 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  trackerCopy = tracker;
  sourceCopy = source;
  managerCopy = manager;
  v38.receiver = self;
  v38.super_class = DDSManager;
  v15 = [(DDSManager *)&v38 init];
  v16 = v15;
  if (v15)
  {
    v33 = trackerCopy;
    v15->_lock._os_unfair_lock_opaque = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    pendingAssertionsToUpdateByAssetType = v16->_pendingAssertionsToUpdateByAssetType;
    v16->_pendingAssertionsToUpdateByAssetType = v17;

    v19 = dispatch_queue_create("com.apple.DataDeliveryServices.DDSManager", 0);
    workQueue = v16->_workQueue;
    v16->_workQueue = v19;

    objc_storeStrong(&v16->_tracker, tracker);
    [(DDSAssetTracking *)v16->_tracker setDelegate:v16];
    objc_storeStrong(&v16->_provider, provider);
    [(DDSAssetProviding *)v16->_provider setDelegate:v16];
    objc_storeStrong(&v16->_dataSource, source);
    objc_storeStrong(&v16->_autoAssetManager, manager);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    remoteSyncStateByAssetType = v16->_remoteSyncStateByAssetType;
    v16->_remoteSyncStateByAssetType = dictionary;

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    trackedAssetTypes = [(DDSAssetTracking *)v16->_tracker trackedAssetTypes];
    v24 = [trackedAssetTypes countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(trackedAssetTypes);
          }

          v28 = *(*(&v34 + 1) + 8 * i);
          v29 = [[DDSRemoteSyncState alloc] initWithDelegate:v16 assetType:v28];
          [(NSMutableDictionary *)v16->_remoteSyncStateByAssetType setObject:v29 forKey:v28];
          [(DDSRemoteSyncState *)v29 loadStateAndScheduleUpdate];
        }

        v25 = [trackedAssetTypes countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v25);
    }

    v30 = objc_alloc_init(DDSAssetObserver);
    assetObserver = v16->_assetObserver;
    v16->_assetObserver = v30;

    [(DDSAssetObserving *)v16->_assetObserver setDelegate:v16];
    [(DDSAssetObserving *)v16->_assetObserver observeAssetType:@"com.apple.MobileAsset.LinguisticData"];
    [(DDSManager *)v16 removeOldAssets];
    [(DDSManager *)v16 createAutoAssetAssertionForExistingAssertions];
    trackerCopy = v33;
  }

  return v16;
}

- (DDSManager)initWithProvider:(id)provider tracker:(id)tracker
{
  trackerCopy = tracker;
  providerCopy = provider;
  v8 = objc_alloc_init(DDSManagerDataSource);
  v9 = [(DDSManager *)self initWithProvider:providerCopy tracker:trackerCopy dataSource:v8];

  return v9;
}

- (DDSManager)initWithProvider:(id)provider tracker:(id)tracker dataSource:(id)source
{
  sourceCopy = source;
  trackerCopy = tracker;
  providerCopy = provider;
  v11 = objc_alloc_init(DDSMAAutoAssetManager);
  v12 = [(DDSManager *)self initWithProvider:providerCopy tracker:trackerCopy dataSource:sourceCopy autoAssetManager:v11];

  return v12;
}

- (void)beginUpdateCycleForAssetType:(id)type forced:(BOOL)forced discretionaryDownload:(BOOL)download
{
  downloadCopy = download;
  forcedCopy = forced;
  v26 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v9 = UpdateLog(typeCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v21 = typeCopy;
    v22 = 1024;
    v23 = forcedCopy;
    v24 = 1024;
    v25 = downloadCopy;
    _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Beginning update cycle for asset type: %@ (forced %d, discretionary %d)...", buf, 0x18u);
  }

  os_unfair_lock_lock(&self->_lock);
  remoteSyncStateByAssetType = [(DDSManager *)self remoteSyncStateByAssetType];
  v11 = [remoteSyncStateByAssetType objectForKey:typeCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (!v11)
  {
    v13 = UpdateLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [DDSManager beginUpdateCycleForAssetType:forced:discretionaryDownload:];
    }

    goto LABEL_9;
  }

  if ([v11 syncStatus] == 1)
  {
    v13 = UpdateLog(1);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEFAULT, "Update cycle already triggered, holding with pending assertions...", buf, 2u);
    }

LABEL_9:

    goto LABEL_13;
  }

  v14 = UpdateLog([(DDSManager *)self didStartUpdateCycleForAssetType:typeCopy]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = typeCopy;
    _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Updating catalog for asset type: %{public}@", buf, 0xCu);
  }

  provider = [(DDSManager *)self provider];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke;
  v16[3] = &unk_1E86C66A8;
  v16[4] = self;
  v17 = typeCopy;
  v18 = forcedCopy;
  v19 = downloadCopy;
  [provider updateCatalogForAssetType:v17 discretionaryDownload:downloadCopy withCompletion:v16];

LABEL_13:
}

void __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = objc_initWeak(&location, v4);

  if (v4)
  {
    if (v3)
    {
      v7 = objc_loadWeakRetained(&location);
      v8 = [v7 workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_2;
      block[3] = &unk_1E86C5B18;
      objc_copyWeak(&v30, &location);
      v29 = *(a1 + 40);
      dispatch_sync(v8, block);

      objc_destroyWeak(&v30);
    }

    else
    {
      v22 = 0;
      v23 = &v22;
      v24 = 0x3032000000;
      v25 = __Block_byref_object_copy__4;
      v26 = __Block_byref_object_dispose__4;
      v27 = 0;
      v10 = objc_loadWeakRetained(&location);
      v11 = [v10 workQueue];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_293;
      v17[3] = &unk_1E86C6680;
      objc_copyWeak(&v20, &location);
      v12 = *(a1 + 40);
      v21 = *(a1 + 48);
      v18 = v12;
      v19 = &v22;
      dispatch_sync(v11, v17);

      v13 = [v23[5] count];
      v14 = objc_loadWeakRetained(&location);
      v15 = v14;
      if (v13)
      {
        v16 = [v14 provider];
        [v16 beginDownloadForAssertions:v23[5] discretionaryDownload:*(a1 + 49)];
      }

      else
      {
        [v14 didEndUpdateCycleWithAssetType:*(a1 + 40) error:0];
      }

      objc_destroyWeak(&v20);
      _Block_object_dispose(&v22, 8);
    }
  }

  else
  {
    v9 = UpdateLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_cold_1(v9);
    }
  }

  objc_destroyWeak(&location);
}

void __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained pendingAssertionsToUpdateByAssetType];
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v2 setObject:v3 forKey:*(a1 + 32)];
}

void __72__DDSManager_beginUpdateCycleForAssetType_forced_discretionaryDownload___block_invoke_293(uint64_t a1)
{
  v68 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained pendingAssertionsToUpdateByAssetType];
  v4 = [v3 objectForKey:*(a1 + 32)];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v7 = v6;

  if (*(a1 + 56) == 1)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v11 = objc_loadWeakRetained((a1 + 48));
    v12 = [v11 tracker];
    v13 = [v12 allAssertions];

    v14 = [v13 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v59;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v59 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v58 + 1) + 8 * i);
          v19 = [v18 query];
          v20 = [v19 assetType];
          v21 = [v20 isEqualToString:*(a1 + 32)];

          if (v21)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v18];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v58 objects:v67 count:16];
      }

      while (v15);
    }

    v23 = UpdateLog(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v64 = v25;
      v65 = 2114;
      v66 = v24;
      v26 = "Cycle will force update all assertions: %{public}@ for asset type: %{public}@";
LABEL_30:
      _os_log_impl(&dword_1DF7C6000, v23, OS_LOG_TYPE_DEFAULT, v26, buf, 0x16u);
    }
  }

  else if ([v7 count])
  {
    v27 = [v7 mutableCopy];
    v28 = *(*(a1 + 40) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    v30 = objc_loadWeakRetained((a1 + 48));
    v31 = [v30 pendingAssertionsToUpdateByAssetType];
    v32 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    [v31 setObject:v32 forKey:*(a1 + 32)];

    v23 = UpdateLog(v33);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      v35 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v64 = v35;
      v65 = 2114;
      v66 = v34;
      v26 = "Cycle will update pending assertions: %{public}@ for asset type: %{public}@";
      goto LABEL_30;
    }
  }

  else
  {
    v36 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v37 = *(*(a1 + 40) + 8);
    v38 = *(v37 + 40);
    *(v37 + 40) = v36;

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v39 = objc_loadWeakRetained((a1 + 48));
    v40 = [v39 tracker];
    v41 = [MEMORY[0x1E695DF00] date];
    v42 = [v40 assertionDueForUpdateSinceDate:v41];

    v43 = [v42 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v55;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v55 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v54 + 1) + 8 * j);
          v48 = [v47 query];
          v49 = [v48 assetType];
          v50 = [v49 isEqualToString:*(a1 + 32)];

          if (v50)
          {
            [*(*(*(a1 + 40) + 8) + 40) addObject:v47];
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v44);
    }

    v23 = UpdateLog(v51);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v52 = *(a1 + 32);
      v53 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138543618;
      v64 = v53;
      v65 = 2114;
      v66 = v52;
      v26 = "Cycle will update time eligible assertions: %{public}@ for asset type: %{public}@";
      goto LABEL_30;
    }
  }
}

- (void)addAssertionForQuery:(id)query policy:(id)policy assertionID:(id)d clientID:(id)iD
{
  v26 = *MEMORY[0x1E69E9840];
  queryCopy = query;
  policyCopy = policy;
  dCopy = d;
  iDCopy = iD;
  v14 = UpdateLog(iDCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138544130;
    v19 = queryCopy;
    v20 = 2114;
    v21 = policyCopy;
    v22 = 2114;
    v23 = dCopy;
    v24 = 2114;
    v25 = iDCopy;
    _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Add assertion for query: %{public}@ policy: (%{public}@) assertionID: (%{public}@) clientID: (%{public}@)", &v18, 0x2Au);
  }

  assetObserver = [(DDSManager *)self assetObserver];
  assetType = [queryCopy assetType];
  [assetObserver observeAssetType:assetType];

  tracker = [(DDSManager *)self tracker];
  [tracker addAssertionForQuery:queryCopy policy:policyCopy assertionID:dCopy clientID:iDCopy];
}

- (void)removeAssertionWithID:(id)d
{
  v9 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = UpdateLog(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = dCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Remove assertion with ID: (%{public}@)", &v7, 0xCu);
  }

  tracker = [(DDSManager *)self tracker];
  [tracker removeAssertionWithID:dCopy];
}

- (void)assertionIDsForClientID:(id)d reply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  tracker = [(DDSManager *)self tracker];
  v9 = [tracker assertionIDsForClientID:dCopy];

  v11 = DefaultLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [DDSManager assertionIDsForClientID:reply:];
  }

  replyCopy[2](replyCopy, v9);
}

- (void)triggerDumpWithReply:(id)reply
{
  v47 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v4 = DefaultLog(replyCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DDSManager triggerDumpWithReply:v4];
  }

  array = [MEMORY[0x1E695DF70] array];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  tracker = [(DDSManager *)self tracker];
  trackedAssetTypes = [tracker trackedAssetTypes];

  v7 = [trackedAssetTypes countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v42 != v9)
      {
        objc_enumerationMutation(trackedAssetTypes);
      }

      v11 = *(*(&v41 + 1) + 8 * v10);
      v12 = [DDSAssetQuery alloc];
      v13 = +[DDSAttributeFilter attributeFilter];
      v14 = [(DDSAssetQuery *)v12 initWithAssetType:v11 filter:v13];

      [(DDSAssetQuery *)v14 setInstalledOnly:1];
      [(DDSAssetQuery *)v14 setLatestOnly:0];
      [(DDSAssetQuery *)v14 setLocalOnly:1];
      provider = [(DDSManager *)self provider];
      v40 = 0;
      v16 = [provider assetsForQuery:v14 errorPtr:&v40];
      v17 = v40;

      [array addObjectsFromArray:v16];
      if (v17)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [trackedAssetTypes countByEnumeratingWithState:&v41 objects:v46 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v17 = 0;
  }

  v18 = [MEMORY[0x1E695DFA8] set];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  tracker2 = [(DDSManager *)self tracker];
  allAssertions = [tracker2 allAssertions];

  v21 = [allAssertions countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v37;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v37 != v23)
        {
          objc_enumerationMutation(allAssertions);
        }

        replyCopy = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v36 + 1) + 8 * i), replyCopy];
        if (replyCopy)
        {
          autoAssetManager = [(DDSManager *)self autoAssetManager];
          v27 = [autoAssetManager assetsForQuery:replyCopy];

          [v18 addObjectsFromArray:v27];
        }
      }

      v22 = [allAssertions countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v22);
  }

  allObjects = [v18 allObjects];
  [array addObjectsFromArray:allObjects];

  if (v17)
  {
    v30 = DefaultLog(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [DDSManager triggerDumpWithReply:];
    }

    v31 = @"Error occurred!!!";
  }

  else
  {
    v30 = +[DDSAnalytics sharedInstance];
    tracker3 = [(DDSManager *)self tracker];
    allAssertions2 = [tracker3 allAssertions];
    v31 = [v30 dumpAssetLogWithAssertions:allAssertions2 installedAssets:array];
  }

  replyCopy[2](replyCopy, v31);
}

- (void)triggerUpdate
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = DefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Asset update requested via ddsutil", buf, 2u);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  tracker = [(DDSManager *)self tracker];
  trackedAssetTypes = [tracker trackedAssetTypes];

  v6 = [trackedAssetTypes countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(trackedAssetTypes);
        }

        [(DDSManager *)self beginUpdateCycleForAssetType:*(*(&v24 + 1) + 8 * v9++) forced:1 discretionaryDownload:0];
      }

      while (v7 != v9);
      v7 = [trackedAssetTypes countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tracker2 = [(DDSManager *)self tracker];
  allAssertions = [tracker2 allAssertions];

  v12 = [allAssertions countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(allAssertions);
        }

        v16 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v20 + 1) + 8 * v15)];
        if (v16)
        {
          autoAssetManager = [(DDSManager *)self autoAssetManager];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __27__DDSManager_triggerUpdate__block_invoke;
          v18[3] = &unk_1E86C66D0;
          v19 = v16;
          [autoAssetManager updateAssetForQuery:v19 callback:v18];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [allAssertions countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v13);
  }
}

void __27__DDSManager_triggerUpdate__block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = DefaultLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __27__DDSManager_triggerUpdate__block_invoke_cold_1();
    }
  }
}

- (id)autoAssetQueryForAssertion:(id)assertion
{
  assertionCopy = assertion;
  query = [assertionCopy query];
  assetType = [query assetType];
  v7 = [DDSMAAutoAssetManager isAutoAssetType:assetType];

  if (v7)
  {
    query2 = [assertionCopy query];
  }

  else
  {
    autoAssetManager = [(DDSManager *)self autoAssetManager];
    query3 = [assertionCopy query];
    assetType2 = [query3 assetType];
    v12 = [autoAssetManager autoAssetTypeForAsserType:assetType2];

    if (v12)
    {
      v13 = [DDSAssetQuery alloc];
      query4 = [assertionCopy query];
      filter = [query4 filter];
      query2 = [(DDSAssetQuery *)v13 initWithAssetType:v12 filter:filter];
    }

    else
    {
      query2 = 0;
    }
  }

  return query2;
}

- (void)handleNewAssertions:(id)assertions
{
  v27 = *MEMORY[0x1E69E9840];
  assertionsCopy = assertions;
  v5 = UpdateLog(assertionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = assertionsCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Handle new assertions: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__4;
  v25 = __Block_byref_object_dispose__4;
  v26 = [MEMORY[0x1E695DFA8] set];
  workQueue = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__DDSManager_handleNewAssertions___block_invoke;
  block[3] = &unk_1E86C65A8;
  v7 = assertionsCopy;
  v18 = v7;
  selfCopy = self;
  p_buf = &buf;
  dispatch_sync(workQueue, block);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(*(&buf + 1) + 40);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        [(DDSManager *)self createRemoteSyncStateForAssetType:v12, v13];
        [(DDSManager *)self beginUpdateCycleForAssetType:v12 forced:0 discretionaryDownload:0];
      }

      v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v9);
  }

  _Block_object_dispose(&buf, 8);
}

void __34__DDSManager_handleNewAssertions___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v39;
    v6 = 0x1E86C5000uLL;
    *&v3 = 138543618;
    v35 = v3;
    do
    {
      v7 = 0;
      v36 = v4;
      do
      {
        if (*v39 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v38 + 1) + 8 * v7);
        v9 = *(v6 + 2240);
        v10 = [v8 query];
        v11 = [v10 assetType];
        LODWORD(v9) = [v9 isAutoAssetType:v11];

        if (v9)
        {
          v13 = AutoAssetLog(v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v43 = v8;
            _os_log_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEFAULT, "Handle new assertion for auto asset: %{public}@", buf, 0xCu);
          }

          v14 = [*(a1 + 40) autoAssetManager];
          v15 = [v8 query];
          [v14 registerInterestInContentForQuery:v15];
        }

        else
        {
          v16 = [*(a1 + 40) autoAssetManager];
          v17 = [v8 query];
          v18 = [v17 assetType];
          v14 = [v16 autoAssetTypeForAsserType:v18];

          if (v14)
          {
            v20 = AutoAssetLog(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v35;
              v43 = v14;
              v44 = 2114;
              v45 = v8;
              _os_log_impl(&dword_1DF7C6000, v20, OS_LOG_TYPE_DEFAULT, "Handle new assertion for auto asset with override asset type: %{public}@, assertion: %{public}@", buf, 0x16u);
            }

            v21 = [DDSAssetQuery alloc];
            v22 = [v8 query];
            v23 = [v22 filter];
            v24 = [(DDSAssetQuery *)v21 initWithAssetType:v14 filter:v23];

            v25 = [*(a1 + 40) autoAssetManager];
            [v25 registerInterestInContentForQuery:v24];
          }

          v26 = v5;
          v27 = v6;
          v28 = [v8 query];
          v15 = [v28 assetType];

          [*(*(*(a1 + 48) + 8) + 40) addObject:v15];
          v29 = [*(a1 + 40) pendingAssertionsToUpdateByAssetType];
          v30 = [v29 objectForKey:v15];
          v31 = v30;
          if (v30)
          {
            v32 = v30;
          }

          else
          {
            v32 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          }

          v33 = v32;

          [v33 addObject:v8];
          v34 = [*(a1 + 40) pendingAssertionsToUpdateByAssetType];
          [v34 setObject:v33 forKey:v15];

          v6 = v27;
          v5 = v26;
          v4 = v36;
        }

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    }

    while (v4);
  }
}

- (void)handleAddedNewDescriptor:(id)descriptor forAssertion:(id)assertion
{
  v12 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  assertionCopy = assertion;
  v7 = DefaultLog(assertionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = descriptorCopy;
    v10 = 2114;
    v11 = assertionCopy;
    _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "New descriptor : %{public}@ added for assertion: %{public}@", &v8, 0x16u);
  }
}

- (void)handleRemovedAssertions:(id)assertions
{
  v65 = *MEMORY[0x1E69E9840];
  assertionsCopy = assertions;
  v5 = UpdateLog(assertionsCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v64 = assertionsCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Asked to remove assertions: %{public}@, will let garbage collection collect.", buf, 0xCu);
  }

  array = [MEMORY[0x1E695DF70] array];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v7 = assertionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v56;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v56 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v55 + 1) + 8 * i)];
        if (v12)
        {
          [array addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v9);
  }

  v13 = [array count];
  if (v13)
  {
    v37 = v7;
    v14 = AutoAssetLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1DF7C6000, v14, OS_LOG_TYPE_DEFAULT, "Asked to remove assertions for auto asset", buf, 2u);
    }

    v15 = [MEMORY[0x1E695DFA8] set];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    tracker = [(DDSManager *)self tracker];
    allAssertions = [tracker allAssertions];

    v18 = [allAssertions countByEnumeratingWithState:&v51 objects:v61 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v52;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v52 != v20)
          {
            objc_enumerationMutation(allAssertions);
          }

          v22 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v51 + 1) + 8 * j), v37];
          if (v22)
          {
            autoAssetManager = [(DDSManager *)self autoAssetManager];
            v24 = [autoAssetManager autoAssetSelectorsForQuery:v22];

            [v15 addObjectsFromArray:v24];
          }
        }

        v19 = [allAssertions countByEnumeratingWithState:&v51 objects:v61 count:16];
      }

      while (v19);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = array;
    obj = array;
    v41 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v41)
    {
      v40 = *v48;
      do
      {
        v25 = 0;
        do
        {
          if (*v48 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = v25;
          v26 = *(*(&v47 + 1) + 8 * v25);
          autoAssetManager2 = [(DDSManager *)self autoAssetManager];
          v28 = [autoAssetManager2 autoAssetSelectorsForQuery:v26];

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v29 = v28;
          v30 = [v29 countByEnumeratingWithState:&v43 objects:v59 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v44;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v44 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = *(*(&v43 + 1) + 8 * k);
                v35 = [v15 containsObject:v34];
                if (v35)
                {
                  autoAssetManager3 = AutoAssetLog(v35);
                  if (os_log_type_enabled(autoAssetManager3, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138543362;
                    v64 = v34;
                    _os_log_impl(&dword_1DF7C6000, autoAssetManager3, OS_LOG_TYPE_DEFAULT, "Cannot eliminate interest in content for asset selector: %{public}@", buf, 0xCu);
                  }
                }

                else
                {
                  autoAssetManager3 = [(DDSManager *)self autoAssetManager];
                  [autoAssetManager3 unregisterInterestInContentForAssetSelector:v34];
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v43 objects:v59 count:16];
            }

            while (v31);
          }

          v25 = v42 + 1;
        }

        while (v42 + 1 != v41);
        v41 = [obj countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v41);
    }

    v7 = v37;
    array = v38;
  }
}

- (void)didChangeDownloadState:(unint64_t)state forAsset:(id)asset
{
  v15 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v6 = DefaultLog(assetCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    debuggingID = [assetCopy debuggingID];
    v11 = 134349314;
    stateCopy = state;
    v13 = 2114;
    v14 = debuggingID;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Download state: %{public}lu for asset: %{public}@", &v11, 0x16u);
  }

  if (state > 9)
  {
    if (state == 10)
    {
      v9 = +[DDSAnalytics sharedInstance];
      [v9 cancelRecordingForAsset:assetCopy];
      goto LABEL_13;
    }

    if (state == 11)
    {
      v8 = +[DDSAnalytics sharedInstance];
      v9 = v8;
      v10 = 4;
      goto LABEL_11;
    }
  }

  else
  {
    if (state == 1)
    {
      v8 = +[DDSAnalytics sharedInstance];
      v9 = v8;
      v10 = 1;
      goto LABEL_11;
    }

    if (state == 9)
    {
      v8 = +[DDSAnalytics sharedInstance];
      v9 = v8;
      v10 = 3;
LABEL_11:
      [v8 recordAssetAction:v10 forAsset:assetCopy];
LABEL_13:
    }
  }
}

- (void)didCompleteDownloadForAssertion:(id)assertion error:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  errorCopy = error;
  v8 = UpdateLog(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = assertionCopy;
    v13 = 2114;
    v14 = errorCopy;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Completed download for assertion (%{public}@) with error: %{public}@", &v11, 0x16u);
  }

  if (!errorCopy)
  {
    tracker = [(DDSManager *)self tracker];
    v10 = [MEMORY[0x1E695DF00] now];
    [tracker didUpdateAssertion:assertionCopy atDate:v10];
  }
}

- (void)didCompleteDownloadForAssertions:(id)assertions error:(id)error
{
  v38 = *MEMORY[0x1E69E9840];
  assertionsCopy = assertions;
  errorCopy = error;
  v8 = UpdateLog(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v35 = assertionsCopy;
    v36 = 2114;
    v37 = errorCopy;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Completed download for assertions (%{public}@) with error: %{public}@", buf, 0x16u);
  }

  v10 = UpdateLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Calling didEndUpdateCycle", buf, 2u);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = assertionsCopy;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        query = [*(*(&v28 + 1) + 8 * v16) query];
        assetType = [query assetType];
        [v11 addObject:assetType];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v14);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = v11;
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      v23 = 0;
      do
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(DDSManager *)self didEndUpdateCycleWithAssetType:*(*(&v24 + 1) + 8 * v23++) error:errorCopy, v24];
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v21);
  }
}

- (void)didUpdateCatalogWithAssetType:(id)type error:(id)error
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  errorCopy = error;
  v8 = UpdateLog(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543618;
    v12 = typeCopy;
    v13 = 2114;
    v14 = errorCopy;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "didUpdateCatalogWithAssetType for asset type: %{public}@ with error: %{public}@", &v11, 0x16u);
  }

  if (errorCopy)
  {
    [(DDSManager *)self didEndUpdateCycleWithAssetType:typeCopy error:errorCopy];
  }

  else
  {
    dataSource = [(DDSManager *)self dataSource];
    date = [dataSource date];
    [(DDSManager *)self setCatalogUpdateDate:date forAssetType:typeCopy];
  }
}

- (void)createRemoteSyncStateForAssetType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  remoteSyncStateByAssetType = [(DDSManager *)self remoteSyncStateByAssetType];
  v5 = [remoteSyncStateByAssetType objectForKey:typeCopy];

  if (!v5)
  {
    v5 = [[DDSRemoteSyncState alloc] initWithDelegate:self assetType:typeCopy];
    remoteSyncStateByAssetType2 = [(DDSManager *)self remoteSyncStateByAssetType];
    [remoteSyncStateByAssetType2 setObject:v5 forKey:typeCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateAutoAssetForAssetType:(id)type
{
  v24 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = UpdateLog(typeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = typeCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Begin update cycle for auto asset corresponding to asset type %@ ...", buf, 0xCu);
  }

  v14 = typeCopy;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  tracker = [(DDSManager *)self tracker];
  allAssertions = [tracker allAssertions];

  v8 = [allAssertions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allAssertions);
        }

        v12 = [(DDSManager *)self autoAssetQueryForAssertion:*(*(&v17 + 1) + 8 * v11), v14];
        if (v12)
        {
          autoAssetManager = [(DDSManager *)self autoAssetManager];
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __42__DDSManager_updateAutoAssetForAssetType___block_invoke;
          v15[3] = &unk_1E86C66D0;
          v16 = v12;
          [autoAssetManager updateAssetForQuery:v16 callback:v15];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allAssertions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

void __42__DDSManager_updateAutoAssetForAssetType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = AutoAssetLog(v5);
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Auto asset update for query: %{public}@ completed successfully", &v9, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __42__DDSManager_updateAutoAssetForAssetType___block_invoke_cold_1();
  }
}

- (void)remoteSyncStateRequestsUpdateForAssetType:(id)type
{
  v8 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = UpdateLog(typeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = typeCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Begin update cycle requested for %@ ...", &v6, 0xCu);
  }

  [(DDSManager *)self updateAutoAssetForAssetType:typeCopy];
  [(DDSManager *)self beginUpdateCycleForAssetType:typeCopy forced:0 discretionaryDownload:1];
}

- (void)remoteSyncStateRequestsRetryForAssetType:(id)type
{
  v8 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = UpdateLog(typeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = typeCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Retry update cycle requested for %@ ...", &v6, 0xCu);
  }

  [(DDSManager *)self willRetryUpdateCycle];
  [(DDSManager *)self beginUpdateCycleForAssetType:typeCopy forced:0 discretionaryDownload:0];
}

- (void)remoteSyncStateRequestsResetForAssetType:(id)type
{
  v9 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v5 = UpdateLog(typeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = typeCopy;
    _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "DDS assertion reset requested, initiating forced update for %@", &v7, 0xCu);
  }

  [(DDSManager *)self updateAutoAssetForAssetType:typeCopy];
  tracker = [(DDSManager *)self tracker];
  [tracker resetAssertionDueDatesForAssetType:typeCopy];

  [(DDSManager *)self beginUpdateCycleForAssetType:typeCopy forced:1 discretionaryDownload:0];
}

- (void)didStartUpdateCycleForAssetType:(id)type
{
  typeCopy = type;
  os_unfair_lock_lock(&self->_lock);
  remoteSyncStateByAssetType = [(DDSManager *)self remoteSyncStateByAssetType];
  v6 = [remoteSyncStateByAssetType objectForKey:typeCopy];

  os_unfair_lock_unlock(&self->_lock);
  [v6 beganUpdateCycle];
}

- (void)didEndUpdateCycleWithAssetType:(id)type error:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  errorCopy = error;
  v8 = UpdateLog(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = errorCopy;
    _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Update cycled ended with error: %{public}@", &buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  remoteSyncStateByAssetType = [(DDSManager *)self remoteSyncStateByAssetType];
  v10 = [remoteSyncStateByAssetType objectForKey:typeCopy];

  os_unfair_lock_unlock(&self->_lock);
  [v10 completedUpdateCycleWithError:errorCopy];
  if (errorCopy)
  {
    workQueue = [(DDSManager *)self workQueue];
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __51__DDSManager_didEndUpdateCycleWithAssetType_error___block_invoke_304;
    v20 = &unk_1E86C5C70;
    selfCopy = self;
    v22 = typeCopy;
    dispatch_sync(workQueue, &v17);

    [v10 syncStatus];
  }

  else
  {
    assetObserver = [(DDSManager *)self assetObserver];
    [assetObserver notifyObserversAssetsUpdatedForType:typeCopy];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v28 = 0x2020000000;
    v29 = 0;
    workQueue2 = [(DDSManager *)self workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__DDSManager_didEndUpdateCycleWithAssetType_error___block_invoke;
    block[3] = &unk_1E86C65A8;
    block[4] = self;
    v14 = typeCopy;
    v25 = v14;
    p_buf = &buf;
    dispatch_sync(workQueue2, block);

    if (*(*(&buf + 1) + 24) == 1)
    {
      v16 = UpdateLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_1DF7C6000, v16, OS_LOG_TYPE_DEFAULT, "Begin cycle for missed/remaining pending assertions...", v23, 2u);
      }

      [(DDSManager *)self beginUpdateCycleForAssetType:v14 forced:0 discretionaryDownload:1];
    }

    _Block_object_dispose(&buf, 8);
  }
}

void __51__DDSManager_didEndUpdateCycleWithAssetType_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) pendingAssertionsToUpdateByAssetType];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v6 = v5;

  *(*(*(a1 + 48) + 8) + 24) = [v6 count] != 0;
}

void __51__DDSManager_didEndUpdateCycleWithAssetType_error___block_invoke_304(uint64_t a1)
{
  v3 = [*(a1 + 32) pendingAssertionsToUpdateByAssetType];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v3 setObject:v2 forKey:*(a1 + 40)];
}

- (void)serverDidUpdateAssetsWithType:(id)type
{
  typeCopy = type;
  provider = [(DDSManager *)self provider];
  [provider serverDidUpdateAssetsWithType:typeCopy];
}

- (void)deleteV1AssetsIfNecessary
{
  workQueue = [(DDSManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = DefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v4, OS_LOG_TYPE_DEFAULT, "Requesting clean v1 LinguisticData repository", buf, 2u);
  }

  v5 = MEMORY[0x1E12DF220](@"com.apple.MobileAsset.LinguisticData");
  v6 = DefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Finished clean v1 LinguisticData repository", v7, 2u);
  }
}

- (void)removeOldAssets
{
  workQueue = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__DDSManager_removeOldAssets__block_invoke;
  block[3] = &unk_1E86C5AF0;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __29__DDSManager_removeOldAssets__block_invoke(uint64_t a1)
{
  [*(a1 + 32) deleteV1AssetsIfNecessary];
  v6 = [*(a1 + 32) provider];
  v2 = MEMORY[0x1E695DFD8];
  v3 = [*(a1 + 32) tracker];
  v4 = [v3 allAssertions];
  v5 = [v2 setWithArray:v4];
  [v6 removeOldAssetsForAssertions:v5];
}

- (void)createAutoAssetAssertionForExistingAssertions
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = DefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DF7C6000, v3, OS_LOG_TYPE_DEFAULT, "Create auto asset assertions for existing assertions", buf, 2u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  tracker = [(DDSManager *)self tracker];
  allAssertions = [tracker allAssertions];

  v6 = [allAssertions countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allAssertions);
        }

        v10 = *(*(&v20 + 1) + 8 * v9);
        autoAssetManager = [(DDSManager *)self autoAssetManager];
        query = [v10 query];
        assetType = [query assetType];
        v14 = [autoAssetManager autoAssetTypeForAsserType:assetType];

        if (v14)
        {
          v15 = [DDSAssetQuery alloc];
          query2 = [v10 query];
          filter = [query2 filter];
          v18 = [(DDSAssetQuery *)v15 initWithAssetType:v14 filter:filter];

          autoAssetManager2 = [(DDSManager *)self autoAssetManager];
          [autoAssetManager2 registerInterestInContentForQuery:v18];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [allAssertions countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }
}

- (int64_t)assetUpdateStatusForAssertion:(id)assertion
{
  assertionCopy = assertion;
  provider = [(DDSManager *)self provider];
  v6 = [provider updatableAssetsForAssertion:assertionCopy];

  v7 = [v6 count];
  v8 = v7 != 0;
  v9 = DefaultLog(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(DDSManager *)assertionCopy assetUpdateStatusForAssertion:v8, v9];
  }

  return v8;
}

- (void)updateCatalogForAssetType:(id)type withCompletion:(id)completion
{
  completionCopy = completion;
  typeCopy = type;
  workQueue = [(DDSManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = objc_alloc_init(MEMORY[0x1E69B1948]);
  [v9 setAllowsCellularAccess:1];
  [v9 setAllowsExpensiveAccess:1];
  [v9 setDiscretionary:0];
  provider = [(DDSManager *)self provider];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __55__DDSManager_updateCatalogForAssetType_withCompletion___block_invoke;
  v12[3] = &unk_1E86C6410;
  v13 = completionCopy;
  v11 = completionCopy;
  [provider startCatalogDownloadForAssetType:typeCopy withDownloadOptions:v9 withCompletion:v12];
}

- (void)setCatalogUpdateDate:(id)date forAssetType:(id)type
{
  dateCopy = date;
  v8 = [DDSManager updateCatalogMetadataKeyForAssetType:type];
  dataSource = [(DDSManager *)self dataSource];
  [dataSource setDate:dateCopy forPreferenceKey:v8];
}

- (id)catalogUpdateDateForAssetType:(id)type
{
  typeCopy = type;
  workQueue = [(DDSManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [DDSManager updateCatalogMetadataKeyForAssetType:typeCopy];

  dataSource = [(DDSManager *)self dataSource];
  v8 = [dataSource dateForPreferenceKey:v6];

  return v8;
}

- (int64_t)modifyAssetUpdateStatusForAssertion:(id)assertion status:(int64_t)status
{
  assertionCopy = assertion;
  tracker = [(DDSManager *)self tracker];
  v8 = [tracker updateStatusForAssertion:assertionCopy];

  if (v8 == 2)
  {
    status = 2;
  }

  else
  {
    tracker2 = [(DDSManager *)self tracker];
    [tracker2 modifyUpdateStatusForAssertion:assertionCopy toStatus:status];
  }

  return status;
}

- (void)fetchCatalogBasedAssetUpdateStatusForAssertion:(id)assertion callback:(id)callback
{
  v30 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  callbackCopy = callback;
  query = [assertionCopy query];
  assetType = [query assetType];
  v10 = [(DDSManager *)self catalogUpdateDateForAssetType:assetType];

  if (v10 && (v11 = [v10 timeIntervalSinceNow], v12 > -86400.0))
  {
    v13 = DefaultLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      query2 = [assertionCopy query];
      assetType2 = [query2 assetType];
      *buf = 138412546;
      v27 = assetType2;
      v28 = 2112;
      v29 = v10;
      _os_log_impl(&dword_1DF7C6000, v13, OS_LOG_TYPE_DEFAULT, "Catalog is already updated for asset type: %@ at %@, hence skip updating it again", buf, 0x16u);
    }

    v16 = [(DDSManager *)self assetUpdateStatusForAssertion:assertionCopy];
    tracker = [(DDSManager *)self tracker];
    [tracker modifyUpdateStatusForAssertion:assertionCopy toStatus:v16];

    callbackCopy[2](callbackCopy, v16, 0);
  }

  else
  {
    query3 = [assertionCopy query];
    assetType3 = [query3 assetType];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __70__DDSManager_fetchCatalogBasedAssetUpdateStatusForAssertion_callback___block_invoke;
    v21[3] = &unk_1E86C66F8;
    v22 = query3;
    selfCopy = self;
    v24 = assertionCopy;
    v25 = callbackCopy;
    v20 = query3;
    [(DDSManager *)self updateCatalogForAssetType:assetType3 withCompletion:v21];
  }
}

void __70__DDSManager_fetchCatalogBasedAssetUpdateStatusForAssertion_callback___block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = DefaultLog(a1);
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __70__DDSManager_fetchCatalogBasedAssetUpdateStatusForAssertion_callback___block_invoke_cold_1(v5);
    }

    v6 = DDSAssetDownloadUIError(1);
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) assetType];
      v12 = 138543362;
      v13 = v7;
      _os_log_impl(&dword_1DF7C6000, v5, OS_LOG_TYPE_DEFAULT, "Catalog updated successfully for asset type: (%{public}@)", &v12, 0xCu);
    }

    v8 = *(a1 + 40);
    v9 = [v8 dataSource];
    v10 = [v9 date];
    v11 = [*(a1 + 32) assetType];
    [v8 setCatalogUpdateDate:v10 forAssetType:v11];

    [*(a1 + 40) assetUpdateStatusForAssertion:*(a1 + 48)];
    v6 = 0;
  }

  (*(*(a1 + 56) + 16))();
}

- (void)fetchAssetUpdateStatusForQuery:(id)query callback:(id)callback
{
  queryCopy = query;
  callbackCopy = callback;
  workQueue = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  v12 = queryCopy;
  selfCopy = self;
  v14 = callbackCopy;
  v9 = callbackCopy;
  v10 = queryCopy;
  dispatch_async(workQueue, block);
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = DefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_1DF7C6000, v2, OS_LOG_TYPE_DEFAULT, "Fetch asset update status for query: (%{public}@)", &buf, 0xCu);
  }

  v4 = [*(a1 + 40) tracker];
  v5 = [v4 assertionForQuery:*(a1 + 32)];

  if (v5)
  {
    v7 = [*(a1 + 40) tracker];
    v8 = [v7 updateStatusForAssertion:v5];

    if (v8 == 2)
    {
      v10 = DefaultLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v11;
        _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Asset update is in progress for query: (%{public}@)", &buf, 0xCu);
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v35 = 0x2020000000;
      v36 = 0;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x2020000000;
      v33[3] = 0;
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_313;
      v28[3] = &unk_1E86C6748;
      v15 = *(a1 + 48);
      v28[4] = *(a1 + 40);
      v30 = v15;
      p_buf = &buf;
      v32 = v33;
      v16 = v5;
      v29 = v16;
      v17 = MEMORY[0x1E12DF5E0](v28);
      v18 = *(a1 + 40);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_3;
      v25[3] = &unk_1E86C6770;
      v26 = *(a1 + 32);
      v19 = v17;
      v27 = v19;
      [v18 fetchCatalogBasedAssetUpdateStatusForAssertion:v16 callback:v25];
      v20 = [*(a1 + 40) autoAssetQueryForAssertion:v16];
      if (v20)
      {
        v21 = [*(a1 + 40) autoAssetManager];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_315;
        v22[3] = &unk_1E86C6770;
        v23 = v20;
        v24 = v19;
        [v21 fetchAssetUpdateStatusForQuery:v23 callback:v22];
      }

      else
      {
        (*(v19 + 2))(v19, 0, 0);
      }

      _Block_object_dispose(v33, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v12 = DefaultLog(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1();
    }

    v13 = *(a1 + 48);
    v14 = DDSAssetDownloadUIError(0);
    (*(v13 + 16))(v13, 0, v14);
  }
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_313(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = objc_initWeak(&location, v6);

  if (v6)
  {
    v8 = objc_loadWeakRetained(&location);
    v9 = [v8 workQueue];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_2;
    v10[3] = &unk_1E86C6720;
    v11 = v5;
    v13 = *(a1 + 48);
    v15[1] = a2;
    v14 = *(a1 + 56);
    objc_copyWeak(v15, &location);
    v12 = *(a1 + 40);
    dispatch_async(v9, v10);

    objc_destroyWeak(v15);
  }

  objc_destroyWeak(&location);
}

uint64_t __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_2(uint64_t result)
{
  v1 = result;
  if (*(result + 32))
  {
    v2 = *(*(result + 48) + 16);
LABEL_7:

    return v2();
  }

  ++*(*(*(result + 56) + 8) + 24);
  if (*(result + 80) == 1)
  {
    *(*(*(result + 64) + 8) + 24) = 1;
  }

  if (*(*(*(result + 56) + 8) + 24) == 2)
  {
    WeakRetained = objc_loadWeakRetained((result + 72));
    [WeakRetained modifyAssetUpdateStatusForAssertion:v1[5] status:*(*(v1[8] + 8) + 24)];

    v2 = *(v1[6] + 16);
    goto LABEL_7;
  }

  return result;
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = DefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 134218242;
    v9 = a2;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Catalog based asset update status: (%ld) for query: (%{public}@)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_315(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = DefaultLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 134218242;
    v9 = a2;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_1DF7C6000, v6, OS_LOG_TYPE_DEFAULT, "Auto asset update status: (%ld) for query: (%{public}@)", &v8, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)updateCatalogBasedAssetForAssertion:(id)assertion callback:(id)callback
{
  assertionCopy = assertion;
  callbackCopy = callback;
  workQueue = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  v12 = assertionCopy;
  selfCopy = self;
  v14 = callbackCopy;
  v9 = callbackCopy;
  v10 = assertionCopy;
  dispatch_async(workQueue, block);
}

void __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke(id *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a1 + 4;
  v13 = [a1[4] query];
  v3 = [a1[5] provider];
  v11 = [v3 updatableAssetsForAssertion:*v2];

  if ([v11 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__4;
    v29 = __Block_byref_object_dispose__4;
    v30 = [v11 mutableCopy];
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x2020000000;
    v24 = 0;
    v4 = objc_alloc_init(MEMORY[0x1E69B1948]);
    [v4 setAllowsCellularAccess:1];
    [v4 setAllowsExpensiveAccess:1];
    [v4 setDiscretionary:0];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = v11;
    v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v5)
    {
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = [a1[5] provider];
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316;
          v14[3] = &unk_1E86C6798;
          v14[4] = a1[5];
          v14[5] = v8;
          p_buf = &buf;
          v15 = v13;
          v18 = v23;
          v16 = a1[6];
          [v9 startDownloadForAsset:v8 withOptions:v4 progress:0 handler:v14];
        }

        v5 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v5);
    }

    _Block_object_dispose(v23, 8);
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v10 = DefaultLog(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v13;
      _os_log_impl(&dword_1DF7C6000, v10, OS_LOG_TYPE_DEFAULT, "Assets are already updated for query: (%{public}@)", &buf, 0xCu);
    }

    (*(a1[6] + 2))();
  }
}

void __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316(uint64_t a1, unint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = objc_initWeak(&location, v4);

  if (v4)
  {
    if (a2 <= 0x24 && ((1 << a2) & 0x1000000401) != 0)
    {
      v7 = DefaultLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        *buf = 138543618;
        v21 = v8;
        v22 = 2048;
        v23 = a2;
        _os_log_impl(&dword_1DF7C6000, v7, OS_LOG_TYPE_DEFAULT, "Asset download completed for %{public}@, result: %ld", buf, 0x16u);
      }

      [*(*(*(a1 + 64) + 8) + 40) removeObject:*(a1 + 40)];
    }

    else
    {
      v14 = DefaultLog(v6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316_cold_1();
      }

      v16 = DefaultLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __59__DDSManager_updateCatalogBasedAssetForAssertion_callback___block_invoke_316_cold_2();
      }

      if ((*(*(*(a1 + 72) + 8) + 24) & 1) == 0)
      {
        v17 = *(a1 + 56);
        v18 = DDSAssetDownloadUIError(2);
        (*(v17 + 16))(v17, MEMORY[0x1E695E110], v18);

        *(*(*(a1 + 72) + 8) + 24) = 1;
      }
    }

    if (![*(*(*(a1 + 64) + 8) + 40) count])
    {
      v9 = DefaultLog(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 48);
        *buf = 138543362;
        v21 = v10;
        _os_log_impl(&dword_1DF7C6000, v9, OS_LOG_TYPE_DEFAULT, "Asset update completed successfully for query: (%{public}@)", buf, 0xCu);
      }

      v11 = objc_loadWeakRetained(&location);
      v12 = [v11 assetObserver];
      v13 = [*(a1 + 48) assetType];
      [v12 notifyObserversAssetsUpdatedForType:v13];

      (*(*(a1 + 56) + 16))();
    }
  }

  objc_destroyWeak(&location);
}

- (void)updateAssetForQuery:(id)query callback:(id)callback
{
  queryCopy = query;
  callbackCopy = callback;
  workQueue = [(DDSManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke;
  block[3] = &unk_1E86C5C48;
  block[4] = self;
  v12 = queryCopy;
  v13 = callbackCopy;
  v9 = callbackCopy;
  v10 = queryCopy;
  dispatch_async(workQueue, block);
}

void __43__DDSManager_updateAssetForQuery_callback___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) tracker];
  v3 = [v2 assertionForQuery:*(a1 + 40)];

  if (v3)
  {
    v5 = [*(a1 + 32) tracker];
    v6 = [v5 updateStatusForAssertion:v3];

    if (v6 == 2)
    {
      v8 = DefaultLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v9;
        _os_log_impl(&dword_1DF7C6000, v8, OS_LOG_TYPE_DEFAULT, "Asset update is already in progress for query: (%{public}@)", &buf, 0xCu);
      }

      v10 = *(a1 + 48);
      v11 = DDSAssetDownloadUIError(3);
      (*(v10 + 16))(v10, MEMORY[0x1E695E110], v11);
    }

    else
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v34 = 0x2020000000;
      v35 = 0;
      v31[0] = 0;
      v31[1] = v31;
      v31[2] = 0x2020000000;
      v32 = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke_317;
      v26[3] = &unk_1E86C67E8;
      v26[4] = *(a1 + 32);
      p_buf = &buf;
      v15 = v3;
      v27 = v15;
      v28 = *(a1 + 48);
      v30 = v31;
      v16 = MEMORY[0x1E12DF5E0](v26);
      v17 = *(a1 + 32);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke_3;
      v24[3] = &unk_1E86C5D10;
      v18 = v16;
      v25 = v18;
      [v17 updateCatalogBasedAssetForAssertion:v15 callback:v24];
      v19 = [*(a1 + 32) autoAssetQueryForAssertion:v15];
      if (v19)
      {
        v20 = [*(a1 + 32) autoAssetManager];
        v22[0] = MEMORY[0x1E69E9820];
        v22[1] = 3221225472;
        v22[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke_4;
        v22[3] = &unk_1E86C5D10;
        v23 = v18;
        [v20 updateAssetForQuery:v19 callback:v22];
      }

      else
      {
        (*(v18 + 2))(v18, MEMORY[0x1E695E118], 0);
      }

      v21 = [*(a1 + 32) tracker];
      [v21 modifyUpdateStatusForAssertion:v15 toStatus:2];

      _Block_object_dispose(v31, 8);
      _Block_object_dispose(&buf, 8);
    }
  }

  else
  {
    v12 = DefaultLog(v4);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __54__DDSManager_fetchAssetUpdateStatusForQuery_callback___block_invoke_cold_1();
    }

    v13 = *(a1 + 48);
    v14 = DDSAssetDownloadUIError(0);
    (*(v13 + 16))(v13, MEMORY[0x1E695E110], v14);
  }
}

void __43__DDSManager_updateAssetForQuery_callback___block_invoke_317(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = objc_initWeak(&location, v7);

  if (v7)
  {
    v9 = objc_loadWeakRetained(&location);
    v10 = [v9 workQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__DDSManager_updateAssetForQuery_callback___block_invoke_2;
    block[3] = &unk_1E86C67C0;
    v11 = v5;
    v12 = *(a1 + 56);
    v16 = v11;
    v19 = v12;
    objc_copyWeak(&v21, &location);
    v17 = *(a1 + 40);
    v13 = *(a1 + 48);
    v14 = *(a1 + 64);
    v18 = v13;
    v20 = v14;
    dispatch_async(v10, block);

    objc_destroyWeak(&v21);
  }

  objc_destroyWeak(&location);
}

void __43__DDSManager_updateAssetForQuery_callback___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isEqual:MEMORY[0x1E695E118]])
  {
    if (++*(*(*(a1 + 56) + 8) + 24) == 2)
    {
      WeakRetained = objc_loadWeakRetained((a1 + 72));
      v3 = [WeakRetained tracker];
      [v3 modifyUpdateStatusForAssertion:*(a1 + 40) toStatus:0];

      v4 = *(*(a1 + 48) + 16);

      v4();
    }
  }

  else if ((*(*(*(a1 + 64) + 8) + 24) & 1) == 0)
  {
    v5 = objc_loadWeakRetained((a1 + 72));
    v6 = [v5 tracker];
    [v6 modifyUpdateStatusForAssertion:*(a1 + 40) toStatus:1];

    v7 = *(a1 + 48);
    v8 = DDSAssetDownloadUIError(2);
    (*(v7 + 16))(v7, MEMORY[0x1E695E110], v8);

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (DDSManagingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)assertionIDsForClientID:reply:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_debug_impl(&dword_1DF7C6000, v1, OS_LOG_TYPE_DEBUG, "For clientID (%{public}@), found assertion IDs (%{public}@)", v2, 0x16u);
}

- (void)assetUpdateStatusForAssertion:(NSObject *)a3 .cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = [a1 query];
  OUTLINED_FUNCTION_0();
  v7 = 2048;
  v8 = a2;
  _os_log_debug_impl(&dword_1DF7C6000, a3, OS_LOG_TYPE_DEBUG, "Assertion for query: (%{public}@), DDSAssetUpdateStatus: (%ld)", v6, 0x16u);
}

@end