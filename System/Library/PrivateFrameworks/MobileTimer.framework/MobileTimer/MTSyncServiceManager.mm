@interface MTSyncServiceManager
- (MTSyncDataModel)syncDataModel;
- (MTSyncServiceManager)initWithSyncService:(id)service syncStatusProvider:(id)provider syncDataModel:(id)model syncMetrics:(id)metrics;
- (MTSyncServiceManager)initWithSyncService:(id)service syncStatusProvider:(id)provider syncDataModel:(id)model syncMetrics:(id)metrics syncChangeStore:(id)store;
- (id)gatherDiagnostics;
- (id)requestSync:(unint64_t)sync;
- (void)applyChange:(id)change;
- (void)checkForPendingChanges;
- (void)pendingChangesSent:(id)sent;
- (void)printDiagnostics;
- (void)resetDataStore;
- (void)startSyncService;
- (void)stopSyncService;
- (void)syncChange:(id)change;
- (void)syncStatusProvider:(id)provider didChangeSyncStatus:(unint64_t)status;
@end

@implementation MTSyncServiceManager

- (MTSyncServiceManager)initWithSyncService:(id)service syncStatusProvider:(id)provider syncDataModel:(id)model syncMetrics:(id)metrics
{
  metricsCopy = metrics;
  modelCopy = model;
  providerCopy = provider;
  serviceCopy = service;
  v14 = [MTSyncChangeStore persistentStoreForDataModel:modelCopy];
  v15 = [(MTSyncServiceManager *)self initWithSyncService:serviceCopy syncStatusProvider:providerCopy syncDataModel:modelCopy syncMetrics:metricsCopy syncChangeStore:v14];

  return v15;
}

- (MTSyncServiceManager)initWithSyncService:(id)service syncStatusProvider:(id)provider syncDataModel:(id)model syncMetrics:(id)metrics syncChangeStore:(id)store
{
  serviceCopy = service;
  providerCopy = provider;
  modelCopy = model;
  metricsCopy = metrics;
  storeCopy = store;
  v24.receiver = self;
  v24.super_class = MTSyncServiceManager;
  v18 = [(MTSyncServiceManager *)&v24 init];
  if (v18)
  {
    v19 = +[MTScheduler serialSchedulerWithName:priority:](MTScheduler, "serialSchedulerWithName:priority:", @"com.apple.MTSyncServiceManager.serialqueue", +[MTScheduler defaultPriority]);
    serializer = v18->_serializer;
    v18->_serializer = v19;

    objc_storeStrong(&v18->_syncService, service);
    [serviceCopy setDelegate:v18];
    objc_storeStrong(&v18->_syncStatusProvider, provider);
    [(MTSyncStatusProvider *)v18->_syncStatusProvider setSyncStatusProviderDelegate:v18];
    objc_storeWeak(&v18->_syncDataModel, modelCopy);
    v21 = [[MTSyncChangeQueue alloc] initWithChangeStore:storeCopy];
    syncChangeQueue = v18->_syncChangeQueue;
    v18->_syncChangeQueue = v21;

    [(MTSyncChangeQueue *)v18->_syncChangeQueue loadChanges];
    objc_storeStrong(&v18->_syncMetrics, metrics);
  }

  return v18;
}

- (void)startSyncService
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__MTSyncServiceManager_startSyncService__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

void *__40__MTSyncServiceManager_startSyncService__block_invoke(void *result)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = result;
    if ([*(v1 + 24) syncStatus] == 3)
    {
      v3 = MTLogForCategory(6);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v4 = v2[4];
        v7 = 138543362;
        v8 = v4;
        _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ sync currently disabled, not starting, and removing any pending changes.", &v7, 0xCu);
      }

      return [*(v2[4] + 40) removePendingChanges];
    }

    else
    {
      *(v2[4] + 8) = 1;
      v5 = MTLogForCategory(6);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = v2[4];
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ resuming sync service", &v7, 0xCu);
      }

      [*(v2[4] + 16) resume:0];
      return [v2[4] checkForPendingChanges];
    }
  }

  return result;
}

- (void)stopSyncService
{
  serializer = self->_serializer;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __39__MTSyncServiceManager_stopSyncService__block_invoke;
  v3[3] = &unk_1E7B0C9D8;
  v3[4] = self;
  [(NAScheduler *)serializer performBlock:v3];
}

void *__39__MTSyncServiceManager_stopSyncService__block_invoke(void *result)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(result[4] + 8) == 1)
  {
    v1 = result;
    v2 = MTLogForCategory(6);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[4];
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_1B1F9F000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ stopping sync service", &v6, 0xCu);
    }

    [*(v1[4] + 16) suspend];
    v4 = MTLogForCategory(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v1[4];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ removing pending changes", &v6, 0xCu);
    }

    result = [*(v1[4] + 40) removePendingChanges];
    *(v1[4] + 8) = 0;
  }

  return result;
}

- (void)checkForPendingChanges
{
  v9 = *MEMORY[0x1E69E9840];
  hasPendingChanges = [(MTSyncChangeQueue *)self->_syncChangeQueue hasPendingChanges];
  v4 = MTLogForCategory(6);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (hasPendingChanges)
  {
    if (v5)
    {
      v7 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ still has changes", &v7, 0xCu);
    }

    v6 = [(MTSyncServiceManager *)self requestSync:0];
  }

  else
  {
    if (v5)
    {
      v7 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ no pending changes", &v7, 0xCu);
    }
  }
}

- (void)syncChange:(id)change
{
  changeCopy = change;
  serializer = self->_serializer;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__MTSyncServiceManager_syncChange___block_invoke;
  v7[3] = &unk_1E7B0C928;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  [(NAScheduler *)serializer performBlock:v7];
}

void __35__MTSyncServiceManager_syncChange___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = MTLogForCategory(6);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v9 = 138543618;
      v10 = v5;
      v11 = 2114;
      v12 = v6;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ syncing %{public}@", &v9, 0x16u);
    }

    [*(*(a1 + 32) + 40) enqueueChange:*(a1 + 40)];
    v7 = [*(a1 + 32) requestSync:0];
  }

  else
  {
    if (v4)
    {
      v8 = *(a1 + 32);
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring sync because we're not started", &v9, 0xCu);
    }
  }
}

- (void)applyChange:(id)change
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = [(MTSyncChangeQueue *)self->_syncChangeQueue resolveChange:change];
  syncDataModel = MTLogForCategory(6);
  v6 = os_log_type_enabled(syncDataModel, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = 138543618;
      selfCopy2 = self;
      v9 = 2114;
      v10 = v4;
      _os_log_impl(&dword_1B1F9F000, syncDataModel, OS_LOG_TYPE_DEFAULT, "%{public}@ applying change %{public}@", &v7, 0x16u);
    }

    syncDataModel = [(MTSyncServiceManager *)self syncDataModel];
    [syncDataModel applyChange:v4];
  }

  else if (v6)
  {
    v7 = 138543362;
    selfCopy2 = self;
    _os_log_impl(&dword_1B1F9F000, syncDataModel, OS_LOG_TYPE_DEFAULT, "%{public}@ nothing to apply", &v7, 0xCu);
  }
}

- (void)resetDataStore
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resetting data store", &v5, 0xCu);
  }

  [(MTSyncChangeQueue *)self->_syncChangeQueue removePendingChanges];
  syncDataModel = [(MTSyncServiceManager *)self syncDataModel];
  [syncDataModel resetDataStore];
}

- (void)pendingChangesSent:(id)sent
{
  v10 = *MEMORY[0x1E69E9840];
  sentCopy = sent;
  v5 = MTLogForCategory(6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2048;
    v9 = [sentCopy count];
    _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ successfully sent %lu changes", &v6, 0x16u);
  }

  [(MTSyncChangeQueue *)self->_syncChangeQueue dequeueChanges:sentCopy];
  [(MTSyncServiceManager *)self checkForPendingChanges];
}

- (id)requestSync:(unint64_t)sync
{
  v11 = *MEMORY[0x1E69E9840];
  if (!sync)
  {
    v5 = MTLogForCategory(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_1B1F9F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ incremental sync requested", buf, 0xCu);
    }
  }

  v6 = [(MTSyncService *)self->_syncService requestSync:sync];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__MTSyncServiceManager_requestSync___block_invoke;
  v8[3] = &unk_1E7B0D658;
  v8[4] = self;
  [v6 addCompletionBlock:v8];

  return v6;
}

uint64_t __36__MTSyncServiceManager_requestSync___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 48);
  if (a2)
  {
    return [v2 logSyncFailedWithError:a2];
  }

  else
  {
    return [v2 logSyncCompleted];
  }
}

- (void)syncStatusProvider:(id)provider didChangeSyncStatus:(unint64_t)status
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = MTLogForCategory(6);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (status == 3)
  {
    if (v7)
    {
      v8 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sync is disabled.", &v8, 0xCu);
    }

    [(MTSyncServiceManager *)self stopSyncService];
  }

  else
  {
    if (v7)
    {
      v8 = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_1B1F9F000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ sync isn't disabled.", &v8, 0xCu);
    }

    [(MTSyncServiceManager *)self startSyncService];
  }
}

- (void)printDiagnostics
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = MTLogForCategory(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    syncService = [(MTSyncServiceManager *)self syncService];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v14 = 138412290;
    v15 = v6;
    _os_log_impl(&dword_1B1F9F000, v3, OS_LOG_TYPE_DEFAULT, "Sync Service: %@", &v14, 0xCu);
  }

  v7 = MTLogForCategory(1);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    syncStatusProvider = [(MTSyncServiceManager *)self syncStatusProvider];
    syncStatus = [syncStatusProvider syncStatus];
    v14 = 134217984;
    v15 = syncStatus;
    _os_log_impl(&dword_1B1F9F000, v7, OS_LOG_TYPE_DEFAULT, "Sync Status: %lu", &v14, 0xCu);
  }

  v10 = MTLogForCategory(1);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    syncChangeQueue = [(MTSyncServiceManager *)self syncChangeQueue];
    pendingChanges = [syncChangeQueue pendingChanges];
    v13 = [pendingChanges count];
    v14 = 134217984;
    v15 = v13;
    _os_log_impl(&dword_1B1F9F000, v10, OS_LOG_TYPE_DEFAULT, "Pending Changes: %lu", &v14, 0xCu);
  }
}

- (id)gatherDiagnostics
{
  v16[3] = *MEMORY[0x1E69E9840];
  v15[0] = @"Sync Service";
  syncService = [(MTSyncServiceManager *)self syncService];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v16[0] = v5;
  v15[1] = @"Sync Status";
  v6 = MEMORY[0x1E696AD98];
  syncStatusProvider = [(MTSyncServiceManager *)self syncStatusProvider];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(syncStatusProvider, "syncStatus")}];
  v16[1] = v8;
  v15[2] = @"Pending Changes";
  v9 = MEMORY[0x1E696AD98];
  syncChangeQueue = [(MTSyncServiceManager *)self syncChangeQueue];
  pendingChanges = [syncChangeQueue pendingChanges];
  v12 = [v9 numberWithUnsignedInteger:{objc_msgSend(pendingChanges, "count")}];
  v16[2] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  return v13;
}

- (MTSyncDataModel)syncDataModel
{
  WeakRetained = objc_loadWeakRetained(&self->_syncDataModel);

  return WeakRetained;
}

@end