@interface HDCloudSyncUpdateCachedSharedDatabaseOperation
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedSharedDatabaseOperation

- (void)main
{
  v40 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncAvailability = [repository syncAvailability];

  if ([syncAvailability shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(syncAvailability, "shouldSyncSummarySharingPush"))
  {
    v24 = syncAvailability;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration2 repository];
    allCKContainers = [repository2 allCKContainers];

    obj = allCKContainers;
    v8 = [allCKContainers countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v26 = *v30;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v30 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * v11);
          configuration3 = [(HDCloudSyncOperation *)self configuration];
          cachedCloudState = [configuration3 cachedCloudState];
          containerIdentifier = [v13 containerIdentifier];
          sharedCloudDatabase = [v13 sharedCloudDatabase];
          databaseScope = [sharedCloudDatabase databaseScope];
          v28 = v12;
          v19 = [cachedCloudState addDatabaseWithContainerIdentifier:containerIdentifier databaseScope:databaseScope error:&v28];
          v10 = v28;

          if ((v19 & 1) == 0)
          {
            _HKInitializeLogging();
            v20 = *MEMORY[0x277CCC328];
            if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
            {
              v21 = v20;
              containerIdentifier2 = [v13 containerIdentifier];
              *buf = 138543874;
              selfCopy2 = self;
              v35 = 2114;
              v36 = containerIdentifier2;
              v37 = 2114;
              v38 = v10;
              _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update cache with shared database in container %{public}@, error: %{public}@", buf, 0x20u);
            }

            [(HDCloudSyncOperation *)self finishWithSuccess:0 error:v10];
          }

          ++v11;
          v12 = v10;
        }

        while (v9 != v11);
        v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
    syncAvailability = v24;
  }

  else
  {
    _HKInitializeLogging();
    v23 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&dword_228986000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping fetching shared database because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

@end