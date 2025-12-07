@interface CPLEngineScopeCleanupTasks
+ (id)scopeTypeDescriptionForScopeType:(unint64_t)type;
- (BOOL)addCleanupTaskForScopeWithIndex:(int64_t)index scopeIdentifier:(id)identifier scopeType:(unint64_t)type error:(id *)error;
- (BOOL)cleanupStepHasMore:(BOOL *)more deletedCount:(unint64_t *)count error:(id *)error;
- (BOOL)hasCleanupTasks;
- (void)writeTransactionDidFail;
- (void)writeTransactionDidSucceed;
@end

@implementation CPLEngineScopeCleanupTasks

- (void)writeTransactionDidSucceed
{
  v6.receiver = self;
  v6.super_class = CPLEngineScopeCleanupTasks;
  [(CPLEngineStorage *)&v6 writeTransactionDidSucceed];
  if (self->_shouldRequestACleanupToScheduler)
  {
    engineStore = [(CPLEngineStorage *)self engineStore];
    engineLibrary = [engineStore engineLibrary];
    scheduler = [engineLibrary scheduler];
    [scheduler noteStoreNeedsCleanup];

    self->_shouldRequestACleanupToScheduler = 0;
  }
}

- (void)writeTransactionDidFail
{
  v4.receiver = self;
  v4.super_class = CPLEngineScopeCleanupTasks;
  [(CPLEngineStorage *)&v4 writeTransactionDidFail];
  remainingStoragesToCleanup = self->_remainingStoragesToCleanup;
  self->_remainingStoragesToCleanup = 0;

  self->_currentCleanupScopeIndex = 0;
  self->_shouldRequestACleanupToScheduler = 0;
}

- (BOOL)hasCleanupTasks
{
  platformObject = [(CPLEngineStorage *)self platformObject];
  hasCleanupTasks = [platformObject hasCleanupTasks];

  return hasCleanupTasks;
}

- (BOOL)cleanupStepHasMore:(BOOL *)more deletedCount:(unint64_t *)count error:(id *)error
{
  v46 = *MEMORY[0x1E69E9840];
  v40 = 0;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v10 = [platformObject nextCleanupTaskScopeIndexOfType:&v40];

  *count = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *more = 1;
    if (self->_currentCleanupScopeIndex != v10)
    {
      engineStore = [(CPLEngineStorage *)self engineStore];
      storages = [engineStore storages];

      self->_currentCleanupScopeIndex = v10;
      v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(storages, "count")}];
      remainingStoragesToCleanup = self->_remainingStoragesToCleanup;
      self->_remainingStoragesToCleanup = v15;

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = storages;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v37;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v37 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v36 + 1) + 8 * i);
            if ([v22 isAlive])
            {
              scopeType = [v22 scopeType];
              if (scopeType == v40)
              {
                [(NSMutableArray *)self->_remainingStoragesToCleanup addObject:v22];
              }
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
        }

        while (v19);
      }

      if ((_CPLSilentLogging & 1) == 0)
      {
        v24 = __CPLStorageOSLogDomain_9089();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          currentCleanupScopeIndex = self->_currentCleanupScopeIndex;
          v26 = [(NSMutableArray *)self->_remainingStoragesToCleanup valueForKey:@"name"];
          *buf = 134218242;
          v42 = currentCleanupScopeIndex;
          v43 = 2114;
          v44 = v26;
          _os_log_impl(&dword_1DC05A000, v24, OS_LOG_TYPE_DEFAULT, "Will cleanup scope index %ld in %{public}@", buf, 0x16u);
        }
      }
    }

    firstObject = [(NSMutableArray *)self->_remainingStoragesToCleanup firstObject];
    v28 = firstObject;
    if (firstObject)
    {
      v35 = 0;
      if (![firstObject deleteRecordsForScopeIndex:self->_currentCleanupScopeIndex maxCount:1000 deletedCount:&v35 error:error])
      {
        v12 = 0;
LABEL_31:

        return v12;
      }

      v29 = v35;
      *count = v35;
      if (v29)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v30 = __CPLStorageOSLogDomain_9089();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = v35;
            name = [v28 name];
            *buf = 134218242;
            v42 = v31;
            v43 = 2114;
            v44 = name;
            _os_log_impl(&dword_1DC05A000, v30, OS_LOG_TYPE_DEFAULT, "Deleted %ld records in %{public}@", buf, 0x16u);
          }
        }
      }

      else
      {
        [(NSMutableArray *)self->_remainingStoragesToCleanup removeObjectAtIndex:0];
      }
    }

    if ([(NSMutableArray *)self->_remainingStoragesToCleanup count])
    {
      v12 = 1;
    }

    else
    {
      platformObject2 = [(CPLEngineStorage *)self platformObject];
      v12 = [platformObject2 deleteCleanupTaskForScopeWithIndex:self->_currentCleanupScopeIndex error:error];
    }

    goto LABEL_31;
  }

  self->_currentCleanupScopeIndex = 0;
  v11 = self->_remainingStoragesToCleanup;
  self->_remainingStoragesToCleanup = 0;

  *more = 0;
  return 1;
}

- (BOOL)addCleanupTaskForScopeWithIndex:(int64_t)index scopeIdentifier:(id)identifier scopeType:(unint64_t)type error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  platformObject = [(CPLEngineStorage *)self platformObject];
  v12 = [platformObject addCleanupTaskForScopeWithIndex:index scopeIdentifier:identifierCopy scopeType:type error:error];

  if (v12)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v13 = __CPLStorageOSLogDomain_9089();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_opt_class() scopeTypeDescriptionForScopeType:type];
        v16 = 138412802;
        v17 = v14;
        v18 = 2112;
        v19 = identifierCopy;
        v20 = 2048;
        indexCopy = index;
        _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_DEFAULT, "Scheduling cleanup of %@ for %@ as index %ld", &v16, 0x20u);
      }
    }

    self->_shouldRequestACleanupToScheduler = 1;
  }

  return v12;
}

+ (id)scopeTypeDescriptionForScopeType:(unint64_t)type
{
  if (type - 1 >= 3)
  {
    type = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown %lu", type];
  }

  else
  {
    type = off_1E861CB78[type - 1];
  }

  return type;
}

@end