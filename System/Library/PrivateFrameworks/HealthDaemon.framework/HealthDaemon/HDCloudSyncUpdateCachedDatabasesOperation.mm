@interface HDCloudSyncUpdateCachedDatabasesOperation
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedDatabasesOperation

- (void)main
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  allCKContainers = [repository allCKContainers];

  obj = allCKContainers;
  v5 = [allCKContainers countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v21 = *v25;
    while (2)
    {
      v8 = 0;
      v9 = v7;
      do
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v24 + 1) + 8 * v8);
        configuration2 = [(HDCloudSyncOperation *)self configuration];
        cachedCloudState = [configuration2 cachedCloudState];
        containerIdentifier = [v10 containerIdentifier];
        privateCloudDatabase = [v10 privateCloudDatabase];
        databaseScope = [privateCloudDatabase databaseScope];
        v23 = v9;
        v16 = [cachedCloudState addDatabaseWithContainerIdentifier:containerIdentifier databaseScope:databaseScope error:&v23];
        v7 = v23;

        if ((v16 & 1) == 0)
        {
          _HKInitializeLogging();
          v17 = *MEMORY[0x277CCC328];
          if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
          {
            v18 = v17;
            containerIdentifier2 = [v10 containerIdentifier];
            *buf = 138543874;
            selfCopy = self;
            v30 = 2114;
            v31 = containerIdentifier2;
            v32 = 2114;
            v33 = v7;
            _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update cache with private database in container %{public}@, error: %{public}@", buf, 0x20u);
          }

          [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v7];

          goto LABEL_15;
        }

        ++v8;
        v9 = v7;
      }

      while (v6 != v8);
      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

  [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
LABEL_15:
}

@end