@interface SDAppUninstallMonitor
+ (BOOL)_writePendingPurgesToDisk:(id)disk;
+ (id)_installedAppsBundleIDsListFilePath;
+ (id)_installedAppsListFromDisk;
+ (id)_pendingPurgesFilePath;
+ (id)_pendingPurgesFromDisk;
+ (id)_trackingInfoDir;
+ (id)applicationsExcludedFromUninstall;
+ (id)sharedInstance;
+ (void)_installedAppsListFromDisk;
+ (void)_pendingPurgesFromDisk;
+ (void)_writeAppsListToDisk:(id)disk;
- (SDAppUninstallMonitor)init;
- (id)_allInstalledApplicationsIdentifiers;
- (id)_deleteAllItemsForBundleID:(id)d reason:(int64_t)reason;
- (void)_deleteAllInteractionsForBundleID:(id)d;
- (void)_deleteAllItemsForBundleIDs:(id)ds reason:(int64_t)reason completionBlock:(id)block;
- (void)_deleteItemsForUninstalledAppsFromIndex;
- (void)_purgeWithProtectionClasses:(id)classes completion:(id)completion;
- (void)registerHandlerWithEventMonitor:(id)monitor;
- (void)unlock;
@end

@implementation SDAppUninstallMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SDAppUninstallMonitor sharedInstance];
  }

  v3 = sSDAppUninstallMonitor;

  return v3;
}

uint64_t __39__SDAppUninstallMonitor_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sSDAppUninstallMonitor;
  sSDAppUninstallMonitor = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)applicationsExcludedFromUninstall
{
  if (applicationsExcludedFromUninstall_onceToken != -1)
  {
    +[SDAppUninstallMonitor applicationsExcludedFromUninstall];
  }

  v3 = applicationsExcludedFromUninstall_sSet;

  return v3;
}

uint64_t __58__SDAppUninstallMonitor_applicationsExcludedFromUninstall__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F47DBDF8];
  v1 = applicationsExcludedFromUninstall_sSet;
  applicationsExcludedFromUninstall_sSet = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SDAppUninstallMonitor)init
{
  v12.receiver = self;
  v12.super_class = SDAppUninstallMonitor;
  v2 = [(SDAppUninstallMonitor *)&v12 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    startupSemaphore = v2->_startupSemaphore;
    v2->_startupSemaphore = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_UTILITY, 0);

    v7 = dispatch_queue_create("com.apple.searchd.appUninstallMonitor", v6);
    queue = v2->_queue;
    v2->_queue = v7;

    v9 = objc_opt_new();
    pcsForPendingPurges = v2->_pcsForPendingPurges;
    v2->_pcsForPendingPurges = v9;
  }

  return v2;
}

- (void)unlock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SDAppUninstallMonitor_unlock__block_invoke;
  block[3] = &unk_1E82F8F28;
  block[4] = self;
  dispatch_async(queue, block);
}

void __31__SDAppUninstallMonitor_unlock__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v2, v3);
  v4 = *(a1 + 32);
  if (*(v4 + 16))
  {
    if (*(v4 + 17) == 1)
    {
      *(v4 + 17) = 0;
LABEL_9:
      [*(a1 + 32) _deleteItemsForUninstalledAppsFromIndex];
      return;
    }

    if (!*(v4 + 32) && [*(v4 + 40) count])
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v4 + 16) = 1;
    v5 = [MEMORY[0x1E69D3DB0] sharedLockHandler];
    v6 = [v5 migrationComplete];

    *(*(a1 + 32) + 16) = 1;
    v8 = SPLogForSPLogCategoryDefault(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = "";
      if (v6)
      {
        v9 = " (purge)";
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_impl(&dword_1C81BF000, v8, OS_LOG_TYPE_DEFAULT, "### Uninstall monitor unlock%s", &v10, 0xCu);
    }

    if (v6)
    {
      goto LABEL_9;
    }
  }
}

- (void)registerHandlerWithEventMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (!monitorCopy)
  {
    [SDAppUninstallMonitor registerHandlerWithEventMonitor:];
  }

  v5 = monitorCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke;
  v7[3] = &unk_1E82F9040;
  v7[4] = self;
  v6 = MEMORY[0x1CCA71310](v7);
  [v5 registerHandler:v6 forEventName:@"com.apple.LaunchServices.applicationUnregistered"];
}

void __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    v12 = SPLogForSPLogCategoryDefault(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v11;
      _os_log_error_impl(&dword_1C81BF000, v12, OS_LOG_TYPE_ERROR, "Error in event monitor for name:%@, userInfo:%@, error:%@", buf, 0x20u);
    }
  }

  else
  {
    v13 = [v9 objectForKeyedSubscript:@"bundleIDs"];
    v14 = [v9 objectForKeyedSubscript:@"isPlaceholder"];
    [v14 BOOLValue];

    v16 = SPLogForSPLogCategoryDefault(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_1C81BF000, v16, OS_LOG_TYPE_DEFAULT, "Received a notification for name:%@, userInfo:%@, bundleIDs:%@", buf, 0x20u);
    }

    SPBuildApplications(0);
    v17 = SPTransactionCreate(&unk_1F47DBE10);
    v18 = *(a1 + 32);
    v19 = *(v18 + 24);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke_123;
    block[3] = &unk_1E82F9018;
    block[4] = v18;
    v22 = v13;
    v23 = v17;
    v20 = v17;
    v12 = v13;
    dispatch_async(v19, block);
  }
}

void __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke_123(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke_2;
  v6[3] = &unk_1E82F8FF0;
  v4 = v2;
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v3 _deleteAllItemsForBundleIDs:v4 reason:1 completionBlock:v6];
}

void __57__SDAppUninstallMonitor_registerHandlerWithEventMonitor___block_invoke_2(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SPLogForSPLogCategoryDefault(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_1C81BF000, v4, OS_LOG_TYPE_DEFAULT, "_deleteAllItemsForBundleIDs:%@", &v8, 0xCu);
  }

  v6 = [*(a1 + 40) _allInstalledApplicationsIdentifiers];
  if ([v3 count])
  {
    v7 = [v6 mutableCopy];
    [v7 addObjectsFromArray:v3];

    v6 = v7;
  }

  [objc_opt_class() _writeAppsListToDisk:v6];
  SPTransactionDone(*(a1 + 48));
}

- (void)_deleteItemsForUninstalledAppsFromIndex
{
  v36 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_queue);
  v4 = SPLogForSPLogCategoryDefault(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81BF000, v4, OS_LOG_TYPE_DEFAULT, "_deleteItemsForUninstalledAppsFromIndex", buf, 2u);
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _allInstalledApplicationsIdentifiers = [(SDAppUninstallMonitor *)self _allInstalledApplicationsIdentifiers];
  v7 = [_allInstalledApplicationsIdentifiers mutableCopy];

  v9 = SPLogForSPLogCategoryDefault(v8);
  v10 = v9;
  if (gSPLogDebugAsDefault)
  {
    v11 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v11 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v9, v11))
  {
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&dword_1C81BF000, v10, v11, "installedApps: %@", buf, 0xCu);
  }

  if ([v7 count])
  {
    _installedAppsBundleIDsListFilePath = [objc_opt_class() _installedAppsBundleIDsListFilePath];
    v13 = [defaultManager fileExistsAtPath:_installedAppsBundleIDsListFilePath];
    if (v13)
    {
      _installedAppsListFromDisk = [objc_opt_class() _installedAppsListFromDisk];
      v15 = SPLogForSPLogCategoryDefault(_installedAppsListFromDisk);
      v16 = v15;
      if (gSPLogDebugAsDefault)
      {
        v17 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v17 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v15, v17))
      {
        *buf = 138412290;
        v35 = _installedAppsListFromDisk;
        _os_log_impl(&dword_1C81BF000, v16, v17, "previouslyInstalledApps: %@", buf, 0xCu);
      }

      if (_installedAppsListFromDisk)
      {
        v18 = [MEMORY[0x1E695DFA8] setWithArray:_installedAppsListFromDisk];
        v19 = [MEMORY[0x1E695DFD8] setWithArray:v7];
        [v18 minusSet:v19];

        v21 = SPLogForSPLogCategoryDefault(v20);
        v22 = v21;
        if (gSPLogDebugAsDefault)
        {
          v23 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v23 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v21, v23))
        {
          *buf = 138412290;
          v35 = v18;
          _os_log_impl(&dword_1C81BF000, v22, v23, "uninstalledApps: %@", buf, 0xCu);
        }

        v24 = [v18 count];
        if (v24)
        {
          v25 = SPLogForSPLogCategoryDefault(v24);
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            allObjects = [v18 allObjects];
            *buf = 138412290;
            v35 = allObjects;
            _os_log_impl(&dword_1C81BF000, v25, OS_LOG_TYPE_DEFAULT, "_deleteItemsForUninstalledAppsFromIndex: %@", buf, 0xCu);
          }

          allObjects2 = [v18 allObjects];
          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = __64__SDAppUninstallMonitor__deleteItemsForUninstalledAppsFromIndex__block_invoke;
          v31[3] = &unk_1E82F8CE0;
          v32 = v7;
          selfCopy = self;
          [(SDAppUninstallMonitor *)self _deleteAllItemsForBundleIDs:allObjects2 reason:2 completionBlock:v31];
        }
      }
    }

    else
    {
      v28 = SPLogForSPLogCategoryDefault(v13);
      v29 = v28;
      if (gSPLogDebugAsDefault)
      {
        v30 = OS_LOG_TYPE_DEFAULT;
      }

      else
      {
        v30 = OS_LOG_TYPE_DEBUG;
      }

      if (os_log_type_enabled(v28, v30))
      {
        *buf = 138412290;
        v35 = v7;
        _os_log_impl(&dword_1C81BF000, v29, v30, "Writing %@ to disk for the first time", buf, 0xCu);
      }

      [objc_opt_class() _writeAppsListToDisk:v7];
    }
  }

  else
  {
    _installedAppsBundleIDsListFilePath = SPLogForSPLogCategoryDefault(0);
    if (os_log_type_enabled(_installedAppsBundleIDsListFilePath, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C81BF000, _installedAppsBundleIDsListFilePath, OS_LOG_TYPE_DEFAULT, "Skipping _deleteItemsForUninstalledAppsFromIndex; no installed apps", buf, 2u);
    }
  }
}

void __64__SDAppUninstallMonitor__deleteItemsForUninstalledAppsFromIndex__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }

  [objc_opt_class() _writeAppsListToDisk:*(a1 + 32)];
}

- (id)_deleteAllItemsForBundleID:(id)d reason:(int64_t)reason
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v7 = SPLogForSPLogCategoryDefault(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = dCopy;
    _os_log_impl(&dword_1C81BF000, v7, OS_LOG_TYPE_DEFAULT, "Deleting all items for bundleID:%@", buf, 0xCu);
  }

  allProtectionClasses = [MEMORY[0x1E69D3DC0] allProtectionClasses];
  v25 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(allProtectionClasses, "count")}];
  v9 = objc_alloc_init(MEMORY[0x1E69D3DA8]);
  mEMORY[0x1E69D3DC0] = [MEMORY[0x1E69D3DC0] sharedInstance];
  [v9 setIndexer:mEMORY[0x1E69D3DC0]];

  [v9 setClientBundleID:dCopy];
  [v9 setIsInternal:1];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = allProtectionClasses;
  v11 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v33;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v32 + 1) + 8 * i);
        v16 = dispatch_group_create();
        dispatch_group_enter(v16);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke;
        v26[3] = &unk_1E82F9090;
        v17 = dCopy;
        v18 = dCopy;
        v27 = v18;
        v28 = v15;
        v29 = v25;
        v19 = v9;
        v30 = v19;
        v31 = v16;
        v20 = v16;
        v21 = v18;
        dCopy = v17;
        [v19 deleteAllSearchableItemsWithBundleID:v21 protectionClass:v15 shouldGC:0 deleteAllReason:reason completionHandler:v26];
        dispatch_group_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
      }

      v12 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v12);
  }

  return v25;
}

void __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = SPLogForSPLogCategoryDefault(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    *buf = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&dword_1C81BF000, v5, OS_LOG_TYPE_DEFAULT, "Deleted all items for bundleID:%@, protectionClass:%@", buf, 0x16u);
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:v3 == 0];
  [*(a1 + 48) setObject:v8 forKeyedSubscript:*(a1 + 40)];

  v9 = *(a1 + 56);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131;
  v14[3] = &unk_1E82F9068;
  v12 = v10;
  v13 = *(a1 + 40);
  v15 = v12;
  v16 = v13;
  v17 = *(a1 + 64);
  [v9 deleteAllInteractionsWithBundleID:v12 protectionClass:v11 options:0 completionHandler:v14];
}

void __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = SPLogForSPLogCategoryDefault(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)_deleteAllInteractionsForBundleID:(id)d
{
  v30 = *MEMORY[0x1E69E9840];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v6 = SPLogForSPLogCategoryDefault(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = dCopy;
    _os_log_impl(&dword_1C81BF000, v6, OS_LOG_TYPE_DEFAULT, "Deleting all interactions for bundleID:%@", buf, 0xCu);
  }

  allProtectionClasses = [MEMORY[0x1E69D3DC0] allProtectionClasses];
  v8 = objc_alloc_init(MEMORY[0x1E69D3DA8]);
  mEMORY[0x1E69D3DC0] = [MEMORY[0x1E69D3DC0] sharedInstance];
  [v8 setIndexer:mEMORY[0x1E69D3DC0]];

  [v8 setClientBundleID:dCopy];
  [v8 setIsInternal:1];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = allProtectionClasses;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = dispatch_group_create();
        dispatch_group_enter(v15);
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __59__SDAppUninstallMonitor__deleteAllInteractionsForBundleID___block_invoke;
        v19[3] = &unk_1E82F9068;
        v16 = dCopy;
        v20 = v16;
        v21 = v14;
        v22 = v15;
        v17 = v15;
        [v8 deleteAllInteractionsWithBundleID:v16 protectionClass:v14 options:0 completionHandler:v19];
        dispatch_group_wait(v17, 0xFFFFFFFFFFFFFFFFLL);

        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }
}

void __59__SDAppUninstallMonitor__deleteAllInteractionsForBundleID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = SPLogForSPLogCategoryDefault(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131_cold_1();
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)_purgeWithProtectionClasses:(id)classes completion:(id)completion
{
  v37 = *MEMORY[0x1E69E9840];
  classesCopy = classes;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_queue);
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(classesCopy, "count")}];
  v8 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = classesCopy;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        dispatch_group_enter(v8);
        v15 = SPLogForSPLogCategoryIndex(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v35 = v13;
          _os_log_impl(&dword_1C81BF000, v15, OS_LOG_TYPE_DEFAULT, "Merging the index for dataclass:%@", buf, 0xCu);
        }

        mEMORY[0x1E69D3DC0] = [MEMORY[0x1E69D3DC0] sharedInstance];
        v33 = v13;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke;
        v26[3] = &unk_1E82F90B8;
        v26[4] = v13;
        v27 = v7;
        v28 = v8;
        [mEMORY[0x1E69D3DC0] mergeWithProtectionClasses:v17 completionHandler:v26];
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v10);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke_138;
  block[3] = &unk_1E82F8F50;
  v24 = v7;
  v25 = completionCopy;
  v19 = v7;
  v20 = completionCopy;
  dispatch_group_notify(v8, queue, block);
}

void __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 BOOLValue];

  v6 = SPLogForSPLogCategoryIndex(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    v8 = *(a1 + 32);
    if (v4)
    {
      v7 = "YES";
    }

    *buf = 138412546;
    v20 = v8;
    v21 = 2080;
    v22 = v7;
    _os_log_impl(&dword_1C81BF000, v6, OS_LOG_TYPE_DEFAULT, "Finished merging the index for dataclass:%@, merged:%s", buf, 0x16u);
  }

  v9 = [*(a1 + 40) setObject:MEMORY[0x1E695E110] forKeyedSubscript:*(a1 + 32)];
  if (v4)
  {
    v10 = SPLogForSPLogCategoryIndex(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_1C81BF000, v10, OS_LOG_TYPE_DEFAULT, "Cleaning up the index for dataclass:%@", buf, 0xCu);
    }

    v12 = [MEMORY[0x1E69D3DC0] sharedInstance];
    v18 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke_136;
    v15[3] = &unk_1E82F90B8;
    v14 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v14;
    v17 = *(a1 + 48);
    [v12 cleanupStringsWithProtectionClasses:v13 completionHandler:v15];
  }

  else
  {
    dispatch_group_leave(*(a1 + 48));
  }
}

void __64__SDAppUninstallMonitor__purgeWithProtectionClasses_completion___block_invoke_136(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [a2 objectForKeyedSubscript:*(a1 + 32)];
  v4 = [v3 BOOLValue];

  v6 = SPLogForSPLogCategoryIndex(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    v8 = *(a1 + 32);
    if (v4)
    {
      v7 = "YES";
    }

    v10 = 138412546;
    v11 = v8;
    v12 = 2080;
    v13 = v7;
    _os_log_impl(&dword_1C81BF000, v6, OS_LOG_TYPE_DEFAULT, "Finished cleaning up strings for dataclass:%@, done:%s", &v10, 0x16u);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  [*(a1 + 40) setObject:v9 forKeyedSubscript:*(a1 + 32)];

  dispatch_group_leave(*(a1 + 48));
}

+ (id)_pendingPurgesFilePath
{
  v2 = [@"PendingPurges" stringByAppendingString:@".plist"];
  _trackingInfoDir = [objc_opt_class() _trackingInfoDir];
  v4 = [_trackingInfoDir stringByAppendingPathComponent:v2];

  return v4;
}

+ (id)_pendingPurgesFromDisk
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  _pendingPurgesFilePath = [self _pendingPurgesFilePath];
  if (!_pendingPurgesFilePath)
  {
    goto LABEL_24;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:_pendingPurgesFilePath] & 1) == 0)
  {

    goto LABEL_24;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:_pendingPurgesFilePath];

  if (!v6)
  {
    goto LABEL_24;
  }

  v24 = 0;
  v7 = [MEMORY[0x1E696AE40] propertyListWithData:v6 options:0 format:0 error:&v24];
  v8 = v24;
  v19 = v8;
  if (!v7)
  {
    v7 = SPLogForSPLogCategoryDefault(v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _pendingPurgesFromDisk];
    }

    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v10 = SPLogForSPLogCategoryDefault(isKindOfClass);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[(SDAppUninstallMonitor *)v7];
    }

LABEL_12:
    v7 = 0;
  }

  allProtectionClasses = [MEMORY[0x1E69D3DC0] allProtectionClasses];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [allProtectionClasses containsObject:v17])
        {
          [v3 addObject:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v14);
  }

LABEL_24:

  return v3;
}

+ (BOOL)_writePendingPurgesToDisk:(id)disk
{
  v33 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  _trackingInfoDir = [self _trackingInfoDir];
  _pendingPurgesFilePath = [self _pendingPurgesFilePath];
  if ([diskCopy count])
  {
    if ([defaultManager fileExistsAtPath:_trackingInfoDir])
    {
      v8 = 0;
      goto LABEL_6;
    }

    v26 = 0;
    v10 = [defaultManager createDirectoryAtPath:_trackingInfoDir withIntermediateDirectories:1 attributes:0 error:&v26];
    v11 = v26;
    v8 = v11;
    if (v10)
    {
LABEL_6:
      v12 = MEMORY[0x1E696AE40];
      allObjects = [diskCopy allObjects];
      v25 = 0;
      v14 = [v12 dataWithPropertyList:allObjects format:200 options:0 error:&v25];
      v15 = v25;

      if (v14)
      {
        v24 = v15;
        v17 = [v14 writeToFile:_pendingPurgesFilePath options:1073741825 error:&v24];
        v8 = v24;

        if (v17)
        {
          v9 = 1;
LABEL_22:

          goto LABEL_23;
        }

        v19 = SPLogForSPLogCategoryDefault(v18);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v28 = v14;
          v29 = 2112;
          v30 = _pendingPurgesFilePath;
          v31 = 2112;
          v32 = v8;
          _os_log_error_impl(&dword_1C81BF000, v19, OS_LOG_TYPE_ERROR, "Failed writing data %@ to path %@: %@", buf, 0x20u);
        }

        v15 = v8;
      }

      else
      {
        v19 = SPLogForSPLogCategoryDefault(v16);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [(SDAppUninstallMonitor *)v15 _writePendingPurgesToDisk:v19];
        }
      }

      v9 = 0;
      v8 = v15;
      goto LABEL_22;
    }

    domain = [v11 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v8 code];

      if (code == 516)
      {
        goto LABEL_6;
      }
    }

    else
    {
    }

    v14 = SPLogForSPLogCategoryDefault(v22);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _writePendingPurgesToDisk:];
    }

    v9 = 0;
    goto LABEL_22;
  }

  [defaultManager removeItemAtPath:_pendingPurgesFilePath error:0];
  v9 = 1;
LABEL_23:

  return v9;
}

- (void)_deleteAllItemsForBundleIDs:(id)ds reason:(int64_t)reason completionBlock:(id)block
{
  v68 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  blockCopy = block;
  dispatch_assert_queue_V2(self->_queue);
  v42 = blockCopy;
  if (!blockCopy)
  {
    [SDAppUninstallMonitor _deleteAllItemsForBundleIDs:reason:completionBlock:];
  }

  selfCopy = self;
  v9 = SPLogForSPLogCategoryDefault(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    pcsForPendingPurges = self->_pcsForPendingPurges;
    *buf = 138412546;
    *&buf[4] = dsCopy;
    *&buf[12] = 2112;
    *&buf[14] = pcsForPendingPurges;
    _os_log_impl(&dword_1C81BF000, v9, OS_LOG_TYPE_DEFAULT, "Deleting all the items for bundleIDs:%@, pcs:%@", buf, 0x16u);
  }

  v41 = SPTransactionCreate(&unk_1F47DBE28);
  v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  applicationsExcludedFromUninstall = [objc_opt_class() applicationsExcludedFromUninstall];
  v48 = objc_opt_new();
  if (dsCopy)
  {
    v12 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:dsCopy];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v13 = v12;
  [v12 minusSet:applicationsExcludedFromUninstall];
  SPRemoveAppsFromDisabledLists(v13);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = applicationsExcludedFromUninstall;
  v14 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v14)
  {
    v15 = *v59;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v59 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v58 + 1) + 8 * i);
        v18 = [dsCopy containsObject:v17];
        if (v18)
        {
          v19 = SPLogForSPLogCategoryDefault(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v17;
            _os_log_impl(&dword_1C81BF000, v19, OS_LOG_TYPE_DEFAULT, "Special case bundleID:%@ since it's excluded from uninstall", buf, 0xCu);
          }

          [(SDAppUninstallMonitor *)self _deleteAllInteractionsForBundleID:v17];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v14);
  }

  v57 = 0u;
  v55 = 0u;
  v56 = 0u;
  v54 = 0u;
  v44 = v13;
  v20 = [v44 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v20)
  {
    v21 = *v55;
    v22 = MEMORY[0x1E69E9820];
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(v44);
        }

        v24 = *(*(&v54 + 1) + 8 * j);
        v25 = [(SDAppUninstallMonitor *)selfCopy _deleteAllItemsForBundleID:v24 reason:reason];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        LOBYTE(v63) = 0;
        v51[0] = v22;
        v51[1] = 3221225472;
        v51[2] = __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke;
        v51[3] = &unk_1E82F90E0;
        v52 = v48;
        v53 = buf;
        [v25 enumerateKeysAndObjectsUsingBlock:v51];
        if (*(*&buf[8] + 24) == 1)
        {
          [v43 addObject:v24];
        }

        _Block_object_dispose(buf, 8);
      }

      v20 = [v44 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v20);
  }

  v26 = [v43 count] != 0;
  v27 = selfCopy->_pcsForPendingPurges;
  selfCopy->_hasFailedDeletes = v26;
  [v48 unionSet:v27];
  _pendingPurgesFromDisk = [objc_opt_class() _pendingPurgesFromDisk];
  [v48 unionSet:_pendingPurgesFromDisk];
  objc_storeStrong(&selfCopy->_pcsForPendingPurges, v48);
  if (([v48 isEqualToSet:_pendingPurgesFromDisk] & 1) != 0 || (v29 = objc_msgSend(objc_opt_class(), "_writePendingPurgesToDisk:", v48), v29))
  {
    v29 = [v48 count];
    v30 = v29 != 0;
  }

  else
  {
    v30 = 0;
  }

  v31 = SPLogForSPLogCategoryDefault(v29);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = "NO";
    v33 = selfCopy->_pcsForPendingPurges;
    if (selfCopy->_hasFailedDeletes)
    {
      v34 = "YES";
    }

    else
    {
      v34 = "NO";
    }

    *buf = 138413058;
    if (v30)
    {
      v32 = "YES";
    }

    *&buf[4] = dsCopy;
    *&buf[12] = 2080;
    *&buf[14] = v34;
    *&buf[22] = 2080;
    v63 = v32;
    v64 = 2112;
    v65 = v33;
    _os_log_impl(&dword_1C81BF000, v31, OS_LOG_TYPE_DEFAULT, "Finished deleting all items for bundleIDs:%@, hasFailedDeletes:%s, purge:%s, pcs:%@", buf, 0x2Au);
  }

  if (v30)
  {
    v35 = dispatch_time(0, 10000000000);
    timer = selfCopy->_timer;
    if (timer)
    {
      dispatch_source_set_timer(timer, v35, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      v37 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_queue);
      v38 = selfCopy->_timer;
      selfCopy->_timer = v37;

      v39 = selfCopy->_timer;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_153;
      handler[3] = &unk_1E82F8F28;
      handler[4] = selfCopy;
      dispatch_source_set_event_handler(v39, handler);
      dispatch_source_set_timer(selfCopy->_timer, v35, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(selfCopy->_timer);
    }
  }

  allObjects = [v43 allObjects];
  (v42)[2](v42, allObjects);

  SPTransactionDone(v41);
}

void __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) addObject:v5];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_153(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  v3 = SPLogForSPLogCategoryDefault(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v2;
    _os_log_impl(&dword_1C81BF000, v3, OS_LOG_TYPE_DEFAULT, "Purging, pcs:%@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v2 allObjects];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_154;
  v8[3] = &unk_1E82F9130;
  v6 = *(a1 + 32);
  v9 = v2;
  v10 = v6;
  v7 = v2;
  [v4 _purgeWithProtectionClasses:v5 completion:v8];
}

void __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_154(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_2;
  v9[3] = &unk_1E82F9108;
  v10 = *(a1 + 32);
  [a2 enumerateKeysAndObjectsUsingBlock:v9];
  [objc_opt_class() _writePendingPurgesToDisk:*(a1 + 32)];
  objc_storeStrong((*(a1 + 40) + 40), *(a1 + 32));
  v4 = *(*(a1 + 40) + 32);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 40);
    v6 = *(v5 + 32);
    *(v5 + 32) = 0;
  }

  v7 = SPLogForSPLogCategoryDefault(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    *buf = 138412290;
    v12 = v8;
    _os_log_impl(&dword_1C81BF000, v7, OS_LOG_TYPE_DEFAULT, "Finished purging, pcs:%@", buf, 0xCu);
  }
}

void __76__SDAppUninstallMonitor__deleteAllItemsForBundleIDs_reason_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 BOOLValue])
  {
    [*(a1 + 32) removeObject:v5];
  }
}

+ (id)_trackingInfoDir
{
  if (_trackingInfoDir_onceToken != -1)
  {
    +[SDAppUninstallMonitor _trackingInfoDir];
  }

  v3 = _trackingInfoDir_bundleInfoPath;

  return v3;
}

void __41__SDAppUninstallMonitor__trackingInfoDir__block_invoke()
{
  v2 = SPSpotlightSupportDirectoryPath();
  v0 = [v2 stringByAppendingPathComponent:@"BundleInfo"];
  v1 = _trackingInfoDir_bundleInfoPath;
  _trackingInfoDir_bundleInfoPath = v0;
}

+ (id)_installedAppsBundleIDsListFilePath
{
  _trackingInfoDir = [objc_opt_class() _trackingInfoDir];
  _filename = [self _filename];
  v5 = [_trackingInfoDir stringByAppendingPathComponent:_filename];

  return v5;
}

+ (id)_installedAppsListFromDisk
{
  _installedAppsBundleIDsListFilePath = [self _installedAppsBundleIDsListFilePath];
  if (!_installedAppsBundleIDsListFilePath)
  {
    goto LABEL_10;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:_installedAppsBundleIDsListFilePath] & 1) == 0)
  {

    goto LABEL_10;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:_installedAppsBundleIDsListFilePath];

  if (!v4)
  {
LABEL_10:
    allObjects = 0;
    goto LABEL_11;
  }

  v13 = 0;
  v5 = [MEMORY[0x1E696AE40] propertyListWithData:v4 options:0 format:0 error:&v13];
  v6 = v13;
  v7 = v6;
  if (!v5)
  {
    v5 = SPLogForSPLogCategoryDefault(v6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _installedAppsListFromDisk];
    }

    goto LABEL_16;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v9 = SPLogForSPLogCategoryDefault(isKindOfClass);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      +[(SDAppUninstallMonitor *)v5];
    }

LABEL_16:
    v5 = 0;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  _sanitizePlistData(v5, v12);
  allObjects = [v12 allObjects];

LABEL_11:

  return allObjects;
}

+ (void)_writeAppsListToDisk:(id)disk
{
  v36 = *MEMORY[0x1E69E9840];
  diskCopy = disk;
  v5 = SPLogForSPLogCategoryDefault(diskCopy);
  v6 = v5;
  if (gSPLogDebugAsDefault)
  {
    v7 = OS_LOG_TYPE_DEFAULT;
  }

  else
  {
    v7 = OS_LOG_TYPE_DEBUG;
  }

  if (os_log_type_enabled(v5, v7))
  {
    *buf = 138412290;
    v31 = diskCopy;
    _os_log_impl(&dword_1C81BF000, v6, v7, "Will write %@ to disk", buf, 0xCu);
  }

  _trackingInfoDir = [self _trackingInfoDir];
  _installedAppsBundleIDsListFilePath = [self _installedAppsBundleIDsListFilePath];
  v29 = 0;
  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:diskCopy format:200 options:0 error:&v29];
  v11 = v29;
  v12 = v11;
  if (v10)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v14 = [defaultManager fileExistsAtPath:_trackingInfoDir];

    if (v14)
    {
      goto LABEL_10;
    }

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = v12;
    v16 = [defaultManager2 createDirectoryAtPath:_trackingInfoDir withIntermediateDirectories:1 attributes:0 error:&v28];
    v17 = v28;

    if (v16)
    {
LABEL_9:
      v12 = v17;
LABEL_10:
      v18 = v12;
      v27 = v12;
      v19 = [v10 writeToFile:_installedAppsBundleIDsListFilePath options:1 error:&v27];
      v12 = v27;

      v21 = SPLogForSPLogCategoryDefault(v20);
      v22 = v21;
      if (v19)
      {
        if (gSPLogDebugAsDefault)
        {
          v23 = OS_LOG_TYPE_DEFAULT;
        }

        else
        {
          v23 = OS_LOG_TYPE_DEBUG;
        }

        if (os_log_type_enabled(v21, v23))
        {
          *buf = 138412290;
          v31 = diskCopy;
          _os_log_impl(&dword_1C81BF000, v22, v23, "Succesfully wrote %@ to disk", buf, 0xCu);
        }
      }

      else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v31 = v10;
        v32 = 2112;
        v33 = _installedAppsBundleIDsListFilePath;
        v34 = 2112;
        v35 = v12;
        _os_log_error_impl(&dword_1C81BF000, v22, OS_LOG_TYPE_ERROR, "Error writing data %@ to path %@: %@", buf, 0x20u);
      }

      goto LABEL_27;
    }

    domain = [v17 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      code = [v17 code];

      if (code == 516)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v22 = SPLogForSPLogCategoryDefault(v26);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      +[SDAppUninstallMonitor _writeAppsListToDisk:];
    }

    v12 = v17;
  }

  else
  {
    v22 = SPLogForSPLogCategoryDefault(v11);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(SDAppUninstallMonitor *)v12 _writeAppsListToDisk:v22];
    }
  }

LABEL_27:
}

- (id)_allInstalledApplicationsIdentifiers
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = SPLogForSPLogCategoryDefault(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&dword_1C81BF000, v3, OS_LOG_TYPE_DEFAULT, "_allInstalledApplicationsIdentifiers", &v14, 2u);
  }

  v4 = SPFastApplicationsGet();
  v5 = MEMORY[0x1E695DFD8];
  allKeys = [v4 allKeys];
  v7 = [v5 setWithArray:allKeys];
  allAppSet = self->_allAppSet;
  self->_allAppSet = v7;

  v10 = SPLogForSPLogCategoryDefault(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = self->_allAppSet;
    v14 = 138412290;
    v15 = v11;
    _os_log_impl(&dword_1C81BF000, v10, OS_LOG_TYPE_DEFAULT, "_allInstalledApplicationsIdentifiers: %@", &v14, 0xCu);
  }

  allObjects = [(NSSet *)self->_allAppSet allObjects];

  return allObjects;
}

void __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __59__SDAppUninstallMonitor__deleteAllItemsForBundleID_reason___block_invoke_131_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

+ (void)_pendingPurgesFromDisk
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_writePendingPurgesToDisk:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_writePendingPurgesToDisk:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138412546;
  v3 = @"PendingPurges";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1C81BF000, a2, OS_LOG_TYPE_ERROR, "Failed serializing %@ property list, error:%@", &v2, 0x16u);
}

+ (void)_installedAppsListFromDisk
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_writeAppsListToDisk:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_writeAppsListToDisk:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C81BF000, a2, OS_LOG_TYPE_ERROR, "Error serializing installedAppsBundleIDs property list: %@", &v2, 0xCu);
}

@end