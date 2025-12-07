@interface HDCloudSyncUpdateCachedRecordsInSharedDatabaseOperation
- (void)main;
@end

@implementation HDCloudSyncUpdateCachedRecordsInSharedDatabaseOperation

- (void)main
{
  v25 = *MEMORY[0x277D85DE8];
  configuration = [(HDCloudSyncOperation *)self configuration];
  repository = [configuration repository];
  syncAvailability = [repository syncAvailability];

  if ([syncAvailability shouldSyncSummarySharingPull] & 1) != 0 || (objc_msgSend(syncAvailability, "shouldSyncSummarySharingPush"))
  {
    taskGroup = [(HDCloudSyncUpdateCachedRecordsOperation *)self taskGroup];
    [taskGroup beginTask];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    configuration2 = [(HDCloudSyncOperation *)self configuration];
    repository2 = [configuration2 repository];
    allCKContainers = [repository2 allCKContainers];

    v10 = [allCKContainers countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(allCKContainers);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          sharedCloudDatabase = [v14 sharedCloudDatabase];
          [(HDCloudSyncUpdateCachedRecordsOperation *)self fetchRecordZoneChangesForContainer:v14 database:sharedCloudDatabase];
        }

        v11 = [allCKContainers countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    taskGroup2 = [(HDCloudSyncUpdateCachedRecordsOperation *)self taskGroup];
    [taskGroup2 finishTask];
  }

  else
  {
    _HKInitializeLogging();
    v17 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_228986000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Skipping fetching records in shared database because platform/profile does not support summary sharing", buf, 0xCu);
    }

    [(HDCloudSyncOperation *)self finishWithSuccess:1 error:0];
  }
}

@end