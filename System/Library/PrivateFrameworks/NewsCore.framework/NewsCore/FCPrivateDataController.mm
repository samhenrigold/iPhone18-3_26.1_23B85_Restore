@interface FCPrivateDataController
+ (BOOL)isLocalStoreKeyInternal:(id)internal;
+ (BOOL)requiresBatchedFirstSync;
+ (BOOL)requiresHighPriorityFirstSync;
+ (BOOL)requiresPushNotificationSupport;
+ (id)backingRecordIDs;
+ (id)backingRecordZoneIDs;
+ (id)commandStoreFileName;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
+ (id)desiredKeys;
+ (id)internalLocalStoreKeys;
+ (id)localStoreFilename;
+ (int64_t)commandQueueUrgency;
+ (unint64_t)localStoreVersion;
- (BOOL)isBackedByAnyRecordZoneIDsInSet:(id)set;
- (BOOL)isDirty;
- (FCPrivateDataController)init;
- (FCPrivateDataController)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSArray)recordNamesPendingSaveToCloud;
- (NSDate)modificationDate;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)jsonEncodableObject;
- (int64_t)qualityOfServiceForNextCommandInCommandQueue:(id)queue;
- (void)_markAsDirtyAndNotifyObservers:(uint64_t)observers;
- (void)_markAsDirtyIfZonesChangedExternally;
- (void)_notifyObservers;
- (void)_possiblySimulateCrashWithMessage:(id)message;
- (void)_serialSyncUpToDate:(void *)date completion:;
- (void)_syncWithCondition:(void *)condition completion:;
- (void)activityObservingApplicationWindowDidBecomeForeground;
- (void)addCommandToCommandQueue:(id)queue;
- (void)addObserver:(id)observer;
- (void)addStateObserver:(id)observer;
- (void)assertReadyForUse;
- (void)createLocalStore;
- (void)dealloc;
- (void)disableSyncing;
- (void)enableSyncing;
- (void)forceSyncWithCompletion:(id)completion;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)mergeLocalStoreWithCloudWithPrivateDataDirectory:(id)directory;
- (void)performFirstSyncWithCallbackQueue:(id)queue completion:(id)completion;
- (void)performFirstSyncWithCompletion:(id)completion;
- (void)prepareForUse;
- (void)recordSyncManager:(id)manager stateDidChange:(id)change;
- (void)removeObserver:(id)observer;
- (void)removeStateObserver:(id)observer;
- (void)saveWithCompletion:(id)completion;
- (void)syncWithCallbackQueue:(id)queue completion:(id)completion;
- (void)syncWithCompletion:(id)completion;
- (void)zoneSyncManager:(id)manager stateDidChange:(id)change;
@end

@implementation FCPrivateDataController

- (void)disableSyncing
{
  v18 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    if (self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migration actions should be called before -prepareForUse"];
      v10 = 136315906;
      v11 = "[FCPrivateDataController(Setup) disableSyncing]";
      v12 = 2080;
      v13 = "FCPrivateDataController.m";
      v14 = 1024;
      v15 = 891;
      v16 = 2114;
      v17 = v7;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
    }

    [(FCPrivateDataController *)self setSyncingEnabled:0];
    localStore = [(FCPrivateDataController *)self localStore];
    [localStore removeObjectForKey:@"sync-state"];

    localStore2 = [(FCPrivateDataController *)self localStore];
    [localStore2 setCloudBackupEnabled:1];

    commandQueue = self->_commandQueue;
  }

  else
  {
    [0 setSyncingEnabled:0];
    localStore3 = [0 localStore];
    [localStore3 removeObjectForKey:@"sync-state"];

    localStore4 = [0 localStore];
    [localStore4 setCloudBackupEnabled:1];

    commandQueue = 0;
  }

  [(FCCommandQueue *)commandQueue clear];
  if ([(FCPrivateDataController *)self isSyncingEnabled])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"syncing should be disabled"];
      v10 = 136315906;
      v11 = "[FCPrivateDataController(Setup) disableSyncing]";
      v12 = 2080;
      v13 = "FCPrivateDataController.m";
      v14 = 1024;
      v15 = 898;
      v16 = 2114;
      v17 = v6;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v10, 0x26u);
    }
  }
}

- (void)prepareForUse
{
  selfCopy = self;
  v65 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    isSyncingEnabled = [0 isSyncingEnabled];
    commandQueue = 0;
    if ((isSyncingEnabled & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_7;
  }

  if (self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-prepareForUse should only be called once"];
    *buf = 136315906;
    v57 = "[FCPrivateDataController(Setup) prepareForUse]";
    v58 = 2080;
    v59 = "FCPrivateDataController.m";
    v60 = 1024;
    *v61 = 930;
    *&v61[4] = 2114;
    *&v61[6] = v40;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  if ([(FCPrivateDataController *)selfCopy isSyncingEnabled])
  {
    commandQueue = selfCopy->_commandQueue;
LABEL_7:
    [(FCCommandQueue *)commandQueue resume];
    localStore = [(FCPrivateDataController *)selfCopy localStore];
    v5 = [localStore objectForKeyedSubscript:@"sync-state"];

    if ([v5 version] != 2)
    {
      if (selfCopy)
      {
        v6 = objc_alloc_init(MEMORY[0x1E69B6F20]);
        [v6 setVersion:2];
      }

      else
      {
        v6 = 0;
      }

      localStore2 = [(FCPrivateDataController *)selfCopy localStore];
      [localStore2 setObject:v6 forKeyedSubscript:@"sync-state"];

      v5 = v6;
    }

    zoneStates = [v5 zoneStates];
    v9 = [zoneStates fc_dictionaryWithKeyBlock:&__block_literal_global_288];

    recordStates = [v5 recordStates];
    v11 = [recordStates fc_dictionaryWithKeyBlock:&__block_literal_global_291];

    backingRecordZoneIDs = [objc_opt_class() backingRecordZoneIDs];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_3;
    v54[3] = &unk_1E7C3BCD0;
    v54[4] = selfCopy;
    v13 = v9;
    v55 = v13;
    v14 = [backingRecordZoneIDs fc_arrayByTransformingWithBlock:v54];

    backingRecordIDs = [objc_opt_class() backingRecordIDs];
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_4;
    v52[3] = &unk_1E7C3BCF8;
    v52[4] = selfCopy;
    v16 = v11;
    v53 = v16;
    v17 = [backingRecordIDs fc_arrayByTransformingWithBlock:v52];

    v18 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:v17 toArray:v14];
    if (selfCopy)
    {
      objc_storeStrong(&selfCopy->_syncManagers, v18);
    }

    selfCopy->_waitingForFirstSync = [(NSArray *)selfCopy->_syncManagers fc_containsObjectPassingTest:&__block_literal_global_296];
    if ([objc_opt_class() requiresPushNotificationSupport])
    {
      v42 = v17;
      v44 = v5;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v43 = v14;
      obj = v14;
      v19 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v49;
        do
        {
          v22 = 0;
          do
          {
            if (*v49 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v48 + 1) + 8 * v22);
            if (selfCopy)
            {
              v24 = selfCopy;
              pushNotificationCenter = selfCopy->_pushNotificationCenter;
            }

            else
            {
              v24 = 0;
              pushNotificationCenter = 0;
            }

            v26 = pushNotificationCenter;
            if (v23)
            {
              v27 = v23[2];
            }

            else
            {
              v27 = 0;
            }

            v28 = v27;
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v47[2] = __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_6;
            v47[3] = &unk_1E7C36EA0;
            v47[4] = v23;
            [(FCPushNotificationCenter *)v26 addObserver:v23 forChangesToRecordZoneID:v28 usingBlock:v47];

            ++v22;
            selfCopy = v24;
          }

          while (v20 != v22);
          v29 = [obj countByEnumeratingWithState:&v48 objects:v64 count:16];
          v20 = v29;
        }

        while (v29);
      }

      v5 = v44;
      v14 = v43;
      v17 = v42;
    }

    [(FCPrivateDataController *)selfCopy _markAsDirtyIfZonesChangedExternally];
  }

LABEL_30:
  [(FCPrivateDataController *)selfCopy loadLocalCachesFromStore];
  v30 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    obja = v30;
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    localStore3 = [(FCPrivateDataController *)selfCopy localStore];
    allKeys = [localStore3 allKeys];
    v35 = [allKeys count];
    if ([(FCPrivateDataController *)selfCopy isSyncingEnabled])
    {
      v36 = @"YES";
    }

    else
    {
      v36 = @"NO";
    }

    if ([(FCPrivateDataController *)selfCopy isWaitingForFirstSync])
    {
      v37 = @"YES";
    }

    else
    {
      v37 = @"NO";
    }

    isDirty = [(FCPrivateDataController *)selfCopy isDirty];
    *buf = 138544386;
    if (isDirty)
    {
      v39 = @"YES";
    }

    else
    {
      v39 = @"NO";
    }

    v57 = v32;
    v58 = 2048;
    v59 = v35;
    v60 = 2114;
    *v61 = v36;
    *&v61[8] = 2114;
    *&v61[10] = v37;
    v62 = 2114;
    v63 = v39;
    _os_log_impl(&dword_1B63EF000, obja, OS_LOG_TYPE_DEFAULT, "%{public}@ prepared for use with %lu store entries, isSyncingEnabled=%{public}@, waitingForFirstSync=%{public}@, dirty=%{public}@", buf, 0x34u);
  }

  if (selfCopy)
  {
    selfCopy->_preparedForUse = 1;
  }
}

+ (id)internalLocalStoreKeys
{
  if (qword_1EDB27078 != -1)
  {
    dispatch_once(&qword_1EDB27078, &__block_literal_global_70);
  }

  v3 = _MergedGlobals_146;

  return v3;
}

uint64_t __49__FCPrivateDataController_internalLocalStoreKeys__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"sync-state", @"sync-enabled", @"ubiquity-identity-token", @"change-token", @"last-sync-date", @"last-push-date", 0}];
  v1 = _MergedGlobals_146;
  _MergedGlobals_146 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)isDirty
{
  [MEMORY[0x1E696AF00] isMainThread];
  if (self)
  {
    syncManagers = self->_syncManagers;
  }

  else
  {
    syncManagers = 0;
  }

  return [(NSArray *)syncManagers fc_containsObjectPassingTest:&__block_literal_global_61_2];
}

- (void)assertReadyForUse
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self || !self->_preparedForUse)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-prepareForUse should be called before reading any data"];
      v4 = 136315906;
      v5 = "[FCPrivateDataController(Setup) assertReadyForUse]";
      v6 = 2080;
      v7 = "FCPrivateDataController.m";
      v8 = 1024;
      v9 = 1005;
      v10 = 2114;
      v11 = v3;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);

      if (self)
      {
LABEL_5:
        if (self->_preparedForUse)
        {
          return;
        }
      }
    }

    else if (self)
    {
      goto LABEL_5;
    }

    [(FCPrivateDataController *)self _possiblySimulateCrashWithMessage:@"should never access userInfo data before calling prepareForUse"];
  }
}

- (void)activityObservingApplicationWindowDidBecomeForeground
{
  if ([(FCPrivateDataController *)self isSyncingEnabled])
  {

    [(FCPrivateDataController *)self _markAsDirtyIfZonesChangedExternally];
  }
}

- (NSDate)modificationDate
{
  localStore = [(FCPrivateDataController *)self localStore];
  modificationDate = [localStore modificationDate];

  return modificationDate;
}

- (FCPrivateDataController)init
{
  v3.receiver = self;
  v3.super_class = FCPrivateDataController;
  return [(FCPrivateDataController *)&v3 init];
}

- (FCPrivateDataController)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  contextCopy = context;
  centerCopy = center;
  directoryCopy = directory;
  v40.receiver = self;
  v40.super_class = FCPrivateDataController;
  v12 = [(FCPrivateDataController *)&v40 init];
  v13 = v12;
  if (v12)
  {
    if (contextCopy && directoryCopy)
    {
      objc_storeStrong(&v12->_context, context);
      objc_storeStrong(&v13->_pushNotificationCenter, center);
      v14 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      stateObservers = v13->_stateObservers;
      v13->_stateObservers = v14;

      v16 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      observers = v13->_observers;
      v13->_observers = v16;

      v18 = objc_opt_new();
      syncQueue = v13->_syncQueue;
      v13->_syncQueue = v18;

      v20 = [directoryCopy copy];
      storeDirectory = v13->_storeDirectory;
      v13->_storeDirectory = v20;

      v22 = objc_alloc_init(FCKeyValueStoreClassRegistry);
      [(FCKeyValueStoreClassRegistry *)v22 registerClass:objc_opt_class()];
      [objc_opt_class() populateLocalStoreClassRegistry:v22];
      localStoreMigrator = [(FCPrivateDataController *)v13 localStoreMigrator];
      appActivityMonitor = [contextCopy appActivityMonitor];
      backgroundTaskable = [contextCopy backgroundTaskable];
      v26 = [FCKeyValueStoreSavePolicy appBackgroundPolicyWithActivityMonitor:appActivityMonitor backgroundTaskable:backgroundTaskable];

      v27 = [FCKeyValueStore alloc];
      localStoreFilename = [objc_opt_class() localStoreFilename];
      v29 = v13->_storeDirectory;
      v30 = -[FCKeyValueStore initWithName:directory:version:options:classRegistry:migrator:savePolicy:](v27, "initWithName:directory:version:options:classRegistry:migrator:savePolicy:", localStoreFilename, v29, [objc_opt_class() localStoreVersion], 2, v22, localStoreMigrator, v26);
      localStore = v13->_localStore;
      v13->_localStore = v30;

      [objc_opt_class() configureKeyValueStoreForJSONHandling:v13->_localStore];
      appActivityMonitor2 = [contextCopy appActivityMonitor];
      [appActivityMonitor2 addObserver:v13];

      commandStoreFileName = [objc_opt_class() commandStoreFileName];
      v34 = [FCCommandQueue alloc];
      if (commandStoreFileName)
      {
        v35 = v13->_storeDirectory;
        v36 = -[FCCommandQueue initWithContext:storeDirectory:storeFilename:urgency:suspended:delegate:](v34, "initWithContext:storeDirectory:storeFilename:urgency:suspended:delegate:", contextCopy, v35, commandStoreFileName, [objc_opt_class() commandQueueUrgency], 1, v13);
        commandQueue = v13->_commandQueue;
        v13->_commandQueue = v36;
      }

      else
      {
        v38 = -[FCCommandQueue initWithContext:urgency:suspended:delegate:](v34, "initWithContext:urgency:suspended:delegate:", contextCopy, [objc_opt_class() commandQueueUrgency], 1, v13);
        v35 = v13->_commandQueue;
        v13->_commandQueue = v38;
      }
    }

    else
    {
      v22 = v12;
      v13 = 0;
    }
  }

  return v13;
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_pushNotificationCenter;
  }

  [(FCPushNotificationCenter *)self removeRecordZoneObserver:selfCopy];
  v3.receiver = selfCopy;
  v3.super_class = FCPrivateDataController;
  [(FCPrivateDataController *)&v3 dealloc];
}

- (void)_syncWithCondition:(void *)condition completion:
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  conditionCopy = condition;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    if ([self isSyncingEnabled] && v5[2](v5))
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = self[5];
      v9 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v28;
        do
        {
          v12 = 0;
          do
          {
            if (*v28 != v11)
            {
              objc_enumerationMutation(v8);
            }

            lastDirtyDate = [*(*(&v27 + 1) + 8 * v12) lastDirtyDate];
            if ([lastDirtyDate fc_isLaterThan:distantPast])
            {
              v14 = lastDirtyDate;

              distantPast = v14;
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v27 objects:v33 count:16];
        }

        while (v10);
      }

      v15 = FCPrivateDataLog;
      if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
      {
        v16 = v15;
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        *buf = 138543362;
        v32 = v18;
        _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ will enter sync queue", buf, 0xCu);
      }

      v19 = self[6];
      isWaitingForFirstSync = [self isWaitingForFirstSync];
      if ((isWaitingForFirstSync & [objc_opt_class() requiresHighPriorityFirstSync]) != 0)
      {
        v21 = 25;
      }

      else
      {
        v21 = 17;
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __57__FCPrivateDataController__syncWithCondition_completion___block_invoke;
      v23[3] = &unk_1E7C3BB68;
      v23[4] = self;
      v24 = distantPast;
      v25 = v5;
      v26 = conditionCopy;
      v22 = distantPast;
      [v19 withQualityOfService:v21 enqueueBlockForMainThread:v23];
    }

    else if (conditionCopy)
    {
      (*(conditionCopy + 2))(conditionCopy, 1, 0);
    }
  }
}

void __57__FCPrivateDataController__syncWithCondition_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ did enter sync queue", buf, 0xCu);
  }

  if ((*(*(a1 + 48) + 16))())
  {
    v8 = [*(a1 + 32) isWaitingForFirstSync];
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__FCPrivateDataController__syncWithCondition_completion___block_invoke_26;
    v12[3] = &unk_1E7C3BB40;
    v12[4] = v9;
    v15 = v8;
    v13 = *(a1 + 56);
    v14 = v3;
    [(FCPrivateDataController *)v9 _serialSyncUpToDate:v10 completion:v12];
  }

  else
  {
    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))(v11, 1, 0);
    }

    v3[2](v3);
  }
}

void __57__FCPrivateDataController__syncWithCondition_completion___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  [*(a1 + 32) handleSyncCompletion];
  if (([*(a1 + 32) isDirty] & 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = *(a1 + 32);
    if (v6)
    {
      v6 = v6[7];
    }

    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        v11 = 0;
        do
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v25 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 privateDataControllerDidBecomeClean:*(a1 + 32)];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    if (*(a1 + 56) == 1 && ([*(a1 + 32) isWaitingForFirstSync] & 1) == 0)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v13 = *(a1 + 32);
      if (v13)
      {
        v13 = v13[7];
      }

      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v22;
        do
        {
          v18 = 0;
          do
          {
            if (*v22 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v21 + 1) + 8 * v18);
            if (objc_opt_respondsToSelector())
            {
              [v19 privateDataControllerDidPerformFirstSync:{*(a1 + 32), v21}];
            }

            ++v18;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
        }

        while (v16);
      }
    }
  }

  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, a2, v5);
  }

  (*(*(a1 + 48) + 16))();
}

- (void)_serialSyncUpToDate:(void *)date completion:
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  dateCopy = date;
  if (self)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v7 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543362;
      v40 = v10;
      _os_log_impl(&dword_1B63EF000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ fetching changes", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke;
    aBlock[3] = &unk_1E7C3BC40;
    aBlock[4] = self;
    v11 = dateCopy;
    v37 = v11;
    v28 = v5;
    v12 = v5;
    v36 = v12;
    v13 = _Block_copy(aBlock);
    *(self + 8) = [*(self + 40) fc_containsObjectPassingTest:&__block_literal_global_87];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = *(self + 40);
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v31 + 1) + 8 * i);
          if (([v19 isCleanUpToDate:v12] & 1) == 0)
          {
            context = [self context];
            internalPrivateDataContext = [context internalPrivateDataContext];
            isAwaitingFirstSync = [v19 isAwaitingFirstSync];
            if ((isAwaitingFirstSync & [objc_opt_class() requiresHighPriorityFirstSync]) != 0)
            {
              v27 = 25;
            }

            else
            {
              v27 = 17;
            }

            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke_2_88;
            v29[3] = &unk_1E7C3BC68;
            v29[4] = v19;
            v30 = v13;
            [v19 fetchChangesWithContext:internalPrivateDataContext qualityOfService:v27 completionHandler:v29];

            goto LABEL_19;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v38 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v20 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v20;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543362;
      v40 = v23;
      _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ finished fetching changes", buf, 0xCu);
    }

    (*(v11 + 2))(v11, 0, 0);
LABEL_19:
    v5 = v28;
  }
}

- (void)syncWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__FCPrivateDataController_syncWithCompletion___block_invoke;
  v6[3] = &unk_1E7C37BC0;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  FCPerformBlockOnMainThread(v6);
}

void __46__FCPrivateDataController_syncWithCompletion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __46__FCPrivateDataController_syncWithCompletion___block_invoke_2;
  aBlock[3] = &unk_1E7C36F40;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  [(FCPrivateDataController *)*(a1 + 32) _syncWithCondition:v2 completion:*(a1 + 40)];
}

- (void)syncWithCallbackQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke;
  v10[3] = &unk_1E7C39F98;
  v11 = queueCopy;
  v12 = completionCopy;
  v10[4] = self;
  v8 = queueCopy;
  v9 = completionCopy;
  FCPerformBlockOnMainThread(v10);
}

void __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C36F40;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke_3;
  v4[3] = &unk_1E7C39C20;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [(FCPrivateDataController *)v3 _syncWithCondition:v2 completion:v4];
}

void __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__FCPrivateDataController_syncWithCallbackQueue_completion___block_invoke_4;
    block[3] = &unk_1E7C3A700;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)forceSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  if (![(FCPrivateDataController *)self isWaitingForFirstSync])
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __51__FCPrivateDataController_forceSyncWithCompletion___block_invoke_2;
    v5[3] = &unk_1E7C37BC0;
    v5[4] = self;
    v6 = completionCopy;
    FCPerformBlockOnMainThread(v5);
  }
}

uint64_t __51__FCPrivateDataController_forceSyncWithCompletion___block_invoke_2(uint64_t a1)
{
  [(FCPrivateDataController *)*(a1 + 32) _markAsDirtyAndNotifyObservers:?];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 syncWithCompletion:v3];
}

- (void)_markAsDirtyAndNotifyObservers:(uint64_t)observers
{
  v14 = *MEMORY[0x1E69E9840];
  if (observers)
  {
    [MEMORY[0x1E696AF00] isMainThread];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = *(observers + 40);
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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

          [*(*(&v9 + 1) + 8 * v8++) markAsDirty];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    if (a2)
    {
      [(FCPrivateDataController *)observers _notifyObservers];
    }
  }
}

- (void)performFirstSyncWithCallbackQueue:(id)queue completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  completionCopy = completion;
  v8 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[FCPrivateDataController isWaitingForFirstSync](self, "isWaitingForFirstSync")}];
    *buf = 138543618;
    v17 = v11;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ was asked to perform first sync; isWaitingForFirstSync=%{public}@", buf, 0x16u);
  }

  if ([(FCPrivateDataController *)self isWaitingForFirstSync])
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke;
    v13[3] = &unk_1E7C39F98;
    v13[4] = self;
    v15 = completionCopy;
    v14 = queueCopy;
    FCPerformBlockOnMainThread(v13);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

void __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_2;
  aBlock[3] = &unk_1E7C36F40;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_3;
  v4[3] = &unk_1E7C39C20;
  v6 = *(a1 + 48);
  v5 = *(a1 + 40);
  [(FCPrivateDataController *)v3 _syncWithCondition:v2 completion:v4];
}

void *__72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) isDirty];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 isWaitingForFirstSync];
  }

  return result;
}

void __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__FCPrivateDataController_performFirstSyncWithCallbackQueue_completion___block_invoke_4;
    block[3] = &unk_1E7C3A700;
    v10 = v6;
    v11 = a2;
    v9 = v5;
    dispatch_async(v7, block);
  }
}

- (void)performFirstSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__FCPrivateDataController_performFirstSyncWithCompletion___block_invoke;
  v6[3] = &unk_1E7C3BB90;
  v7 = completionCopy;
  v5 = completionCopy;
  [(FCPrivateDataController *)self performFirstSyncWithCallbackQueue:MEMORY[0x1E69E96A0] completion:v6];
}

uint64_t __58__FCPrivateDataController_performFirstSyncWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)saveWithCompletion:(id)completion
{
  completionCopy = completion;
  localStore = [(FCPrivateDataController *)self localStore];
  [localStore saveWithCompletionHandler:completionCopy];
}

- (void)addStateObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    if (self)
    {
      stateObservers = self->_stateObservers;
    }

    else
    {
      stateObservers = 0;
    }

    if ([(NSHashTable *)stateObservers containsObject:observerCopy]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      observerCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", observerCopy];
      *buf = 136315906;
      v10 = "[FCPrivateDataController addStateObserver:]";
      v11 = 2080;
      v12 = "FCPrivateDataController.m";
      v13 = 1024;
      v14 = 314;
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
      v6 = self->_stateObservers;
LABEL_8:
      [(NSHashTable *)v6 addObject:observerCopy];
      goto LABEL_11;
    }

    v6 = 0;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stateObserver != nil"];
    *buf = 136315906;
    v10 = "[FCPrivateDataController addStateObserver:]";
    v11 = 2080;
    v12 = "FCPrivateDataController.m";
    v13 = 1024;
    v14 = 310;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_11:
}

- (void)removeStateObserver:(id)observer
{
  v15 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    if (self)
    {
      stateObservers = self->_stateObservers;
    }

    else
    {
      stateObservers = 0;
    }

    [(NSHashTable *)stateObservers removeObject:observerCopy];
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "stateObserver != nil"];
    *buf = 136315906;
    v8 = "[FCPrivateDataController removeStateObserver:]";
    v9 = 2080;
    v10 = "FCPrivateDataController.m";
    v11 = 1024;
    v12 = 323;
    v13 = 2114;
    v14 = v6;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (BOOL)isBackedByAnyRecordZoneIDsInSet:(id)set
{
  v3 = MEMORY[0x1E695DFD8];
  setCopy = set;
  backingRecordZoneIDs = [objc_opt_class() backingRecordZoneIDs];
  v6 = [v3 setWithArray:backingRecordZoneIDs];

  LOBYTE(backingRecordZoneIDs) = [v6 intersectsSet:setCopy];
  return backingRecordZoneIDs;
}

- (void)addObserver:(id)observer
{
  v17 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCPrivateDataController *)self observers];
    v6 = [observers containsObject:observerCopy];

    if (v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      observerCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p is already an observer", observerCopy];
      *buf = 136315906;
      v10 = "[FCPrivateDataController addObserver:]";
      v11 = 2080;
      v12 = "FCPrivateDataController.m";
      v13 = 1024;
      v14 = 344;
      v15 = 2114;
      v16 = observerCopy;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    observers2 = [(FCPrivateDataController *)self observers];
    [observers2 addObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_8;
    }

    observers2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v10 = "[FCPrivateDataController addObserver:]";
    v11 = 2080;
    v12 = "FCPrivateDataController.m";
    v13 = 1024;
    v14 = 340;
    v15 = 2114;
    v16 = observers2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_8:
}

- (void)removeObserver:(id)observer
{
  v14 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  [MEMORY[0x1E696AF00] isMainThread];
  if (observerCopy)
  {
    observers = [(FCPrivateDataController *)self observers];
    [observers removeObject:observerCopy];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    observers = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "observer != nil"];
    *buf = 136315906;
    v7 = "[FCPrivateDataController removeObserver:]";
    v8 = 2080;
    v9 = "FCPrivateDataController.m";
    v10 = 1024;
    v11 = 353;
    v12 = 2114;
    v13 = observers;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

LABEL_5:
}

- (void)addCommandToCommandQueue:(id)queue
{
  v19 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  [MEMORY[0x1E696AF00] isMainThread];
  if ((!self || !self->_commandQueue) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"can't enqueue a command without a command queue"];
    v11 = 136315906;
    v12 = "[FCPrivateDataController addCommandToCommandQueue:]";
    v13 = 2080;
    v14 = "FCPrivateDataController.m";
    v15 = 1024;
    v16 = 364;
    v17 = 2114;
    v18 = v10;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v11, 0x26u);
  }

  if ([(FCPrivateDataController *)self isSyncingEnabled])
  {
    v5 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ adding command to command queue", &v11, 0xCu);
    }

    if (self)
    {
      commandQueue = self->_commandQueue;
    }

    else
    {
      commandQueue = 0;
    }

    [(FCCommandQueue *)commandQueue addCommand:queueCopy];
  }
}

- (NSArray)recordNamesPendingSaveToCloud
{
  v31 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = [MEMORY[0x1E695DFA8] set];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (self)
  {
    commandQueue = self->_commandQueue;
  }

  else
  {
    commandQueue = 0;
  }

  obj = [(FCCommandQueue *)commandQueue enqueuedCommands];
  v5 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v26;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        if (v9)
        {
          if ([*(*(&v25 + 1) + 8 * i) conformsToProtocol:&unk_1F2E780C0])
          {
            v10 = v9;
          }

          else
          {
            v10 = 0;
          }
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        createdOrModifiedRecordIDs = [v11 createdOrModifiedRecordIDs];
        v13 = [createdOrModifiedRecordIDs countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(createdOrModifiedRecordIDs);
              }

              recordName = [*(*(&v21 + 1) + 8 * j) recordName];
              [v3 addObject:recordName];
            }

            v14 = [createdOrModifiedRecordIDs countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v14);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v6);
  }

  allObjects = [v3 allObjects];

  return allObjects;
}

+ (BOOL)requiresPushNotificationSupport
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController requiresPushNotificationSupport]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 415;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController requiresPushNotificationSupport]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (BOOL)requiresBatchedFirstSync
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController requiresBatchedFirstSync]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 420;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController requiresBatchedFirstSync]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (BOOL)requiresHighPriorityFirstSync
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController requiresHighPriorityFirstSync]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 425;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController requiresHighPriorityFirstSync]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)backingRecordZoneIDs
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController backingRecordZoneIDs]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 430;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController backingRecordZoneIDs]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)backingRecordIDs
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController backingRecordIDs]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 435;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController backingRecordIDs]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)localStoreFilename
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController localStoreFilename]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 440;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController localStoreFilename]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (unint64_t)localStoreVersion
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController localStoreVersion]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 445;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController localStoreVersion]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)commandStoreFileName
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController commandStoreFileName]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 471;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController commandStoreFileName]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (int64_t)commandQueueUrgency
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController commandQueueUrgency]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 476;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController commandQueueUrgency]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v21 = *MEMORY[0x1E69E9840];
  cloudCopy = cloud;
  directoryCopy = directory;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "+[FCPrivateDataController commandsToMergeLocalDataToCloud:privateDataDirectory:]";
    v15 = 2080;
    v16 = "FCPrivateDataController.m";
    v17 = 1024;
    v18 = 481;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController commandsToMergeLocalDataToCloud:privateDataDirectory:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v21 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v14 = "[FCPrivateDataController handleSyncWithChangedRecords:deletedRecordNames:]";
    v15 = 2080;
    v16 = "FCPrivateDataController.m";
    v17 = 1024;
    v18 = 491;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8 = MEMORY[0x1E695DF30];
  v9 = *MEMORY[0x1E695D930];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPrivateDataController handleSyncWithChangedRecords:deletedRecordNames:]"];
  v11 = [v8 exceptionWithName:v9 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v11 = "[FCPrivateDataController allKnownRecordNamesWithinRecordZoneWithID:]";
    v12 = 2080;
    v13 = "FCPrivateDataController.m";
    v14 = 1024;
    v15 = 496;
    v16 = 2114;
    v17 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPrivateDataController allKnownRecordNamesWithinRecordZoneWithID:]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)loadLocalCachesFromStore
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "[FCPrivateDataController loadLocalCachesFromStore]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 501;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "-[FCPrivateDataController loadLocalCachesFromStore]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (id)desiredKeys
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Abstract method"];
    *buf = 136315906;
    v9 = "+[FCPrivateDataController desiredKeys]";
    v10 = 2080;
    v11 = "FCPrivateDataController.m";
    v12 = 1024;
    v13 = 506;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Abstract method", "+[FCPrivateDataController desiredKeys]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

+ (BOOL)isLocalStoreKeyInternal:(id)internal
{
  internalCopy = internal;
  internalLocalStoreKeys = [self internalLocalStoreKeys];
  v6 = [internalLocalStoreKeys containsObject:internalCopy];

  return v6;
}

- (void)zoneSyncManager:(id)manager stateDidChange:(id)change
{
  v34 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  changeCopy = change;
  [MEMORY[0x1E696AF00] isMainThread];
  selfCopy = self;
  localStore = [(FCPrivateDataController *)self localStore];
  v9 = [localStore objectForKeyedSubscript:@"sync-state"];

  [MEMORY[0x1E695DF70] array];
  v28 = v27 = changeCopy;
  [v28 addObject:changeCopy];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v9;
  zoneStates = [v9 zoneStates];
  v11 = [zoneStates countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(zoneStates);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        zoneName = [v15 zoneName];
        if (managerCopy)
        {
          v17 = managerCopy[2];
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;
        zoneName2 = [v18 zoneName];
        v20 = [zoneName isEqualToString:zoneName2];

        if ((v20 & 1) == 0)
        {
          [v28 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v21 = [zoneStates countByEnumeratingWithState:&v29 objects:v33 count:16];
      v12 = v21;
    }

    while (v21);
  }

  if (v25)
  {
    v22 = [v25 copy];
    v23 = selfCopy;
  }

  else
  {
    v23 = selfCopy;
    if (selfCopy)
    {
      v22 = objc_alloc_init(MEMORY[0x1E69B6F20]);
      [v22 setVersion:2];
    }

    else
    {
      v22 = 0;
    }
  }

  [v22 setZoneStates:v28];
  localStore2 = [(FCPrivateDataController *)v23 localStore];
  [localStore2 setObject:v22 forKeyedSubscript:@"sync-state"];
}

- (void)_notifyObservers
{
  v13 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = *(self + 56);
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (objc_opt_respondsToSelector())
          {
            [v7 privateDataControllerDidBecomeDirty:{self, v8}];
          }

          ++v6;
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (void)recordSyncManager:(id)manager stateDidChange:(id)change
{
  v42 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  changeCopy = change;
  [MEMORY[0x1E696AF00] isMainThread];
  selfCopy = self;
  localStore = [(FCPrivateDataController *)self localStore];
  v9 = [localStore objectForKeyedSubscript:@"sync-state"];

  array = [MEMORY[0x1E695DF70] array];
  v31 = changeCopy;
  [array addObject:changeCopy];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v29 = v9;
  obj = [v9 recordStates];
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v10)
  {
    goto LABEL_20;
  }

  v11 = v10;
  v12 = *v38;
  v32 = *v38;
  v33 = managerCopy;
  do
  {
    v13 = 0;
    v34 = v11;
    do
    {
      if (*v38 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v37 + 1) + 8 * v13);
      recordName = [v14 recordName];
      if (managerCopy)
      {
        v16 = managerCopy[1];
      }

      else
      {
        v16 = 0;
      }

      v17 = v16;
      recordName2 = [v17 recordName];
      if (([recordName isEqualToString:recordName2] & 1) == 0)
      {

LABEL_14:
        [array addObject:v14];
        goto LABEL_15;
      }

      recordZoneName = [v14 recordZoneName];
      if (managerCopy)
      {
        v20 = managerCopy[1];
      }

      else
      {
        v20 = 0;
      }

      v21 = v20;
      zoneID = [v21 zoneID];
      zoneName = [zoneID zoneName];
      v24 = [recordZoneName isEqualToString:zoneName];

      v12 = v32;
      managerCopy = v33;
      v11 = v34;
      if ((v24 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_15:
      ++v13;
    }

    while (v11 != v13);
    v25 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
    v11 = v25;
  }

  while (v25);
LABEL_20:

  if (v29)
  {
    v26 = [v29 copy];
    v27 = selfCopy;
  }

  else
  {
    v27 = selfCopy;
    if (selfCopy)
    {
      v26 = objc_alloc_init(MEMORY[0x1E69B6F20]);
      [v26 setVersion:2];
    }

    else
    {
      v26 = 0;
    }
  }

  [v26 setRecordStates:array];
  localStore2 = [(FCPrivateDataController *)v27 localStore];
  [localStore2 setObject:v26 forKeyedSubscript:@"sync-state"];
}

- (int64_t)qualityOfServiceForNextCommandInCommandQueue:(id)queue
{
  if (self)
  {
    isWaitingForFirstSync = [self isWaitingForFirstSync];
    if ((isWaitingForFirstSync & [objc_opt_class() requiresHighPriorityFirstSync]) != 0)
    {
      return 25;
    }

    else
    {
      return 17;
    }
  }

  return self;
}

- (void)_markAsDirtyIfZonesChangedExternally
{
  v51 = *MEMORY[0x1E69E9840];
  if (self)
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v3 = [bundleIdentifier isEqualToString:@"com.apple.news"];

    if (v3)
    {
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      backingRecordZoneIDs = [objc_opt_class() backingRecordZoneIDs];
      v6 = [backingRecordZoneIDs countByEnumeratingWithState:&v37 objects:v50 count:16];
      if (v6)
      {
        v8 = v6;
        v9 = *v38;
        *&v7 = 138544130;
        v31 = v7;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v38 != v9)
            {
              objc_enumerationMutation(backingRecordZoneIDs);
            }

            v11 = *(*(&v37 + 1) + 8 * i);
            zoneName = [v11 zoneName];
            v13 = FCZoneLastModifiedExternallySharedPreferenceKey(zoneName);

            v14 = NewsCoreUserDefaults();
            v15 = [v14 objectForKey:v13];

            if (v15)
            {
              v16 = FCPrivateDataLog;
              if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
              {
                v17 = v16;
                v18 = objc_opt_class();
                v19 = NSStringFromClass(v18);
                zoneName2 = [v11 zoneName];
                *buf = v31;
                v43 = v19;
                v44 = 2114;
                v45 = zoneName2;
                v46 = 2114;
                v47 = distantPast;
                v48 = 2114;
                v49 = v15;
                _os_log_impl(&dword_1B63EF000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ %{public}@ externally modified at %{public}@ vs local %{public}@", buf, 0x2Au);
              }

              v21 = [distantPast laterDate:v15];

              distantPast = v21;
            }
          }

          v8 = [backingRecordZoneIDs countByEnumeratingWithState:&v37 objects:v50 count:16];
        }

        while (v8);
      }

      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v22 = *(self + 40);
      v23 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v34;
        do
        {
          for (j = 0; j != v24; ++j)
          {
            if (*v34 != v26)
            {
              objc_enumerationMutation(v22);
            }

            v28 = *(*(&v33 + 1) + 8 * j);
            lastCleanDate = [v28 lastCleanDate];
            v30 = [lastCleanDate fc_isEarlierThan:distantPast];

            if (v30)
            {
              [v28 markAsDirty];
              v25 = 1;
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
        }

        while (v24);

        if (v25)
        {
          [(FCPrivateDataController *)self _notifyObservers];
        }
      }

      else
      {
      }
    }
  }
}

void __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, char a5, void *a6, void *a7)
{
  v45 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = FCPrivateDataLog;
  if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    *buf = 138543874;
    v40 = v21;
    v41 = 2048;
    v42 = [v14 count];
    v43 = 2048;
    v44 = [v15 count];
    _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@ fetched changes with %lu changed records and %lu deleted records", buf, 0x20u);
  }

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke_77;
  v29[3] = &unk_1E7C3BC18;
  v30 = v17;
  v22 = *(a1 + 48);
  v31 = v14;
  v32 = v15;
  v38 = a5;
  v23 = *(a1 + 40);
  v33 = *(a1 + 32);
  v34 = v13;
  v36 = v22;
  v37 = v16;
  v35 = v23;
  v24 = v16;
  v25 = v13;
  v26 = v15;
  v27 = v14;
  v28 = v17;
  FCPerformBlockOnMainThread(v29);
}

void __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke_77(uint64_t a1)
{
  v77 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v61 = MEMORY[0x1E69E9820];
    v62 = 3221225472;
    v63 = __58__FCPrivateDataController__serialSyncUpToDate_completion___block_invoke_2;
    v64 = &unk_1E7C37778;
    v66 = *(a1 + 80);
    v65 = *(a1 + 32);
    v66[2](v66, 2, v65);

    v2 = v66;
  }

  else
  {
    v3 = [*(a1 + 40) fc_dictionaryWithKeyBlock:&__block_literal_global_80];
    v2 = [v3 mutableCopy];

    v4 = [MEMORY[0x1E695DFA8] setWithArray:*(a1 + 48)];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v5 = *(a1 + 56);
    if (v5)
    {
      v6 = *(v5 + 32);
    }

    else
    {
      v6 = 0;
    }

    v7 = [v6 enqueuedCommands];
    v8 = [v7 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v58;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v58 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v57 + 1) + 8 * i);
          if (v12)
          {
            if ([*(*(&v57 + 1) + 8 * i) conformsToProtocol:&unk_1F2E780C0])
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;
          [v14 applyToRemoteRecords:v2 remoteDeletions:v4];
        }

        v9 = [v7 countByEnumeratingWithState:&v57 objects:v69 count:16];
      }

      while (v9);
    }

    v15 = MEMORY[0x1E695DFA8];
    v16 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_83];
    v17 = [v15 setWithArray:v16];

    if (*(a1 + 96) == 1)
    {
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      if (v18)
      {
        objc_opt_class();
        if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v20 = v19;
          v21 = v20[2];
          v18 = [v18 allKnownRecordNamesWithinRecordZoneWithID:v21];
        }

        else
        {
          objc_opt_class();
          if (v19 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v21 = v19;
            v22 = v21[1];
            v23 = [v22 recordName];
            *buf = v23;
            v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:1];

            v20 = 0;
          }

          else
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
              *buf = 136315906;
              *&buf[4] = "[FCPrivateDataController _allKnownRecordIDsForSyncManager:]";
              v71 = 2080;
              v72 = "FCPrivateDataController.m";
              v73 = 1024;
              v74 = 844;
              v75 = 2114;
              v76 = v47;
              _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
            }

            v21 = 0;
            v20 = 0;
            v18 = MEMORY[0x1E695E0F0];
          }
        }
      }

      v24 = [v18 countByEnumeratingWithState:&v53 objects:v68 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v54;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v54 != v26)
            {
              objc_enumerationMutation(v18);
            }

            [v17 addObject:*(*(&v53 + 1) + 8 * j)];
          }

          v25 = [v18 countByEnumeratingWithState:&v53 objects:v68 count:16];
        }

        while (v25);
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v28 = v2;
      v29 = [v28 countByEnumeratingWithState:&v49 objects:v67 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v50;
        do
        {
          for (k = 0; k != v30; ++k)
          {
            if (*v50 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [*(*(&v49 + 1) + 8 * k) recordID];
            [v4 removeObject:v33];
          }

          v30 = [v28 countByEnumeratingWithState:&v49 objects:v67 count:16];
        }

        while (v30);
      }

      v34 = FCPrivateDataLog;
      if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        v38 = [v4 count];
        *buf = 138543618;
        *&buf[4] = v37;
        v71 = 2048;
        v72 = v38;
        _os_log_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ needs to reset local data, so deleting %lu records", buf, 0x16u);
      }
    }

    v39 = *(a1 + 56);
    v40 = [v2 allValues];
    v41 = [v17 allObjects];
    [v39 handleSyncWithChangedRecords:v40 deletedRecordNames:v41];

    if (*(a1 + 96) == 1 && ([*(a1 + 56) isWaitingForFirstSync] & 1) == 0)
    {
      v42 = *(a1 + 56);
      if (v42)
      {
        v43 = *(a1 + 64);
        objc_opt_class();
        if (v43)
        {
          if (objc_opt_isKindOfClass())
          {
            v44 = v43;
          }

          else
          {
            v44 = 0;
          }
        }

        else
        {
          v44 = 0;
        }

        v45 = v44;

        if (v45)
        {
          v46 = v45[2];
          [v42 handleSyncDidResetLocalDataForRecordZoneWithID:v46];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Case unsupported"];
          *buf = 136315906;
          *&buf[4] = "[FCPrivateDataController _handleSyncDidResetLocalDataForSyncManager:]";
          v71 = 2080;
          v72 = "FCPrivateDataController.m";
          v73 = 1024;
          v74 = 858;
          v75 = 2114;
          v76 = v48;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }
      }
    }

    (*(*(a1 + 88) + 16))();
    [(FCPrivateDataController *)*(a1 + 56) _serialSyncUpToDate:*(a1 + 80) completion:?];
  }
}

- (void)enableSyncing
{
  v14 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  if (self && self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migration actions should be called before -prepareForUse"];
    v6 = 136315906;
    v7 = "[FCPrivateDataController(Setup) enableSyncing]";
    v8 = 2080;
    v9 = "FCPrivateDataController.m";
    v10 = 1024;
    v11 = 876;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  [(FCPrivateDataController *)self setSyncingEnabled:1];
  localStore = [(FCPrivateDataController *)self localStore];
  [localStore setCloudBackupEnabled:0];

  if (![(FCPrivateDataController *)self isSyncingEnabled]&& os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"syncing should be enabled"];
    v6 = 136315906;
    v7 = "[FCPrivateDataController(Setup) enableSyncing]";
    v8 = 2080;
    v9 = "FCPrivateDataController.m";
    v10 = 1024;
    v11 = 885;
    v12 = 2114;
    v13 = v4;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }
}

- (void)createLocalStore
{
  v14 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  if (self && self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migration actions should be called before -prepareForUse"];
    v6 = 136315906;
    v7 = "[FCPrivateDataController(Setup) createLocalStore]";
    v8 = 2080;
    v9 = "FCPrivateDataController.m";
    v10 = 1024;
    v11 = 904;
    v12 = 2114;
    v13 = v5;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
  }

  [(FCPrivateDataController *)self setSyncingEnabled:0];
  localStore = [(FCPrivateDataController *)self localStore];
  [localStore setCloudBackupEnabled:1];

  if ([(FCPrivateDataController *)self isSyncingEnabled])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"syncing should be disabled"];
      v6 = 136315906;
      v7 = "[FCPrivateDataController(Setup) createLocalStore]";
      v8 = 2080;
      v9 = "FCPrivateDataController.m";
      v10 = 1024;
      v11 = 909;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v6, 0x26u);
    }
  }
}

- (void)mergeLocalStoreWithCloudWithPrivateDataDirectory:(id)directory
{
  v33 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  if (self && self->_preparedForUse && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"migration actions should be called before -prepareForUse"];
    *buf = 136315906;
    v26 = "[FCPrivateDataController(Setup) mergeLocalStoreWithCloudWithPrivateDataDirectory:]";
    v27 = 2080;
    v28 = "FCPrivateDataController.m";
    v29 = 1024;
    v30 = 914;
    v31 = 2114;
    v32 = v19;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_opt_class();
  localStore = [(FCPrivateDataController *)self localStore];
  v7 = [v5 commandsToMergeLocalDataToCloud:localStore privateDataDirectory:directoryCopy];

  if (v7)
  {
    v8 = FCPrivateDataLog;
    if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      *buf = 138543362;
      v26 = v11;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ adding merge commands to command queue", buf, 0xCu);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if (self)
          {
            commandQueue = self->_commandQueue;
          }

          else
          {
            commandQueue = 0;
          }

          [(FCCommandQueue *)commandQueue addCommand:*(*(&v20 + 1) + 8 * v16++), v20];
        }

        while (v14 != v16);
        v18 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v14 = v18;
      }

      while (v18);
    }
  }
}

id __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695BA70];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 recordName];
  v6 = objc_alloc(MEMORY[0x1E695BA90]);
  v7 = [v3 recordZoneName];

  v8 = [v6 initWithZoneName:v7 ownerName:*MEMORY[0x1E695B728]];
  v9 = [v4 initWithRecordName:v5 zoneID:v8];

  return v9;
}

id *__47__FCPrivateDataController_Setup__prepareForUse__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCPrivateZoneSyncManager alloc];
  v5 = [objc_opt_class() desiredKeys];
  v6 = [objc_opt_class() requiresBatchedFirstSync];
  v7 = *(a1 + 40);
  v8 = [v3 zoneName];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [(FCPrivateZoneSyncManager *)&v4->super.isa initWithRecordZoneID:v3 desiredKeys:v5 requiresBatchedFirstSync:v6 currentState:v9];

  if (v10)
  {
    objc_storeWeak(v10 + 3, *(a1 + 32));
  }

  return v10;
}

id *__47__FCPrivateDataController_Setup__prepareForUse__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [FCPrivateRecordSyncManager alloc];
  v5 = [objc_opt_class() desiredKeys];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v3];
  v7 = [(FCPrivateRecordSyncManager *)&v4->super.isa initWithRecordID:v3 desiredKeys:v5 currentState:v6];

  if (v7)
  {
    objc_storeWeak(v7 + 2, *(a1 + 32));
  }

  return v7;
}

uint64_t __47__FCPrivateDataController_Setup__prepareForUse__block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) markAsDirty];
  v2 = *(a1 + 32);

  return [v2 notifyObservers];
}

- (void)_possiblySimulateCrashWithMessage:(id)message
{
  v9 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    if ([v4 BOOLForKey:@"disable_simulated_crashes_for_encryption"])
    {
    }

    else
    {
      v5 = NSClassFromString(&cfstr_Xctest.isa);

      if (!v5)
      {
        v6 = FCPrivateDataLog;
        if (os_log_type_enabled(FCPrivateDataLog, OS_LOG_TYPE_FAULT))
        {
          v7 = 138543362;
          v8 = messageCopy;
          _os_log_fault_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_FAULT, "triggering simulated crash with message %{public}@", &v7, 0xCu);
        }
      }
    }
  }
}

- (id)jsonEncodableObject
{
  localStore = [(FCPrivateDataController *)self localStore];
  jsonEncodableObject = [localStore jsonEncodableObject];

  return jsonEncodableObject;
}

@end