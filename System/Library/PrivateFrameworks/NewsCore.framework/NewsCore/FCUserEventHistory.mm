@interface FCUserEventHistory
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
+ (id)recordZoneID;
- (FCUserEventHistory)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory sessionStorage:(id)storage;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)loadLocalCachesFromStore;
- (void)storage:(id)storage didClearAllSessions:(id)sessions;
- (void)storage:(id)storage didStoreData:(id)data forSessionID:(id)d;
@end

@implementation FCUserEventHistory

- (void)loadLocalCachesFromStore
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __46__FCUserEventHistory_loadLocalCachesFromStore__block_invoke;
  v2[3] = &unk_1E7C36EA0;
  v2[4] = self;
  [FCTaskScheduler scheduleLowPriorityBlockForMainThread:v2];
}

- (FCUserEventHistory)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory sessionStorage:(id)storage
{
  storageCopy = storage;
  v15.receiver = self;
  v15.super_class = FCUserEventHistory;
  v12 = [(FCPrivateDataController *)&v15 initWithContext:context pushNotificationCenter:center storeDirectory:directory];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_privateStorage, storage);
    [(FCUserEventHistoryStorage *)v13->_privateStorage addObserver:v13];
  }

  return v13;
}

+ (id)backingRecordZoneIDs
{
  v5[1] = *MEMORY[0x1E69E9840];
  recordZoneID = [self recordZoneID];
  v5[0] = recordZoneID;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

+ (id)recordZoneID
{
  if (qword_1EDB276B8 != -1)
  {
    dispatch_once(&qword_1EDB276B8, &__block_literal_global_118);
  }

  v3 = _MergedGlobals_183;

  return v3;
}

uint64_t __34__FCUserEventHistory_recordZoneID__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695BA90]);
  v1 = [v0 initWithZoneName:@"UserEventHistory" ownerName:*MEMORY[0x1E695B728]];
  v2 = _MergedGlobals_183;
  _MergedGlobals_183 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

void __46__FCUserEventHistory_loadLocalCachesFromStore__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) privateStorage];
  v3 = [*(a1 + 32) context];
  v4 = [v3 appConfigurationManager];
  v5 = [v4 possiblyUnfetchedAppConfiguration];
  v6 = [v5 newsPersonalizationConfiguration];
  v7 = [v6 trackingConfiguration];
  v8 = [v7 pruningPolicies];
  v9 = [v2 pruneWithPolicies:v8];

  v10 = [v9 count];
  v11 = FCUserEventsLog;
  v12 = os_log_type_enabled(FCUserEventsLog, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = v11;
      v17 = 134217984;
      v18 = [v9 count];
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "User event history found %ld pruned IDs, adding command to remove from cloud", &v17, 0xCu);
    }

    v14 = [FCRemoveUserEventHistoryCommand alloc];
    v15 = [objc_opt_class() recordZoneID];
    v16 = [(FCRemoveUserEventHistoryCommand *)v14 initWithSessionIDs:v9 recordZoneID:v15];

    [*(a1 + 32) addCommandToCommandQueue:v16];
  }

  else if (v12)
  {
    LOWORD(v17) = 0;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "User event history found no pruned IDs", &v17, 2u);
  }
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DFF8];
  directoryCopy = directory;
  storageDirectoryName = [objc_opt_class() storageDirectoryName];
  v8 = [directoryCopy stringByAppendingPathComponent:storageDirectoryName];

  v9 = [v5 fileURLWithPath:v8];

  v10 = FCUserEventsLog;
  if (os_log_type_enabled(FCUserEventsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "Asked for command to merge user event history local data with cloud", buf, 2u);
  }

  v11 = [[FCUserEventHistoryStorage alloc] initWithRootDirectory:v9];
  sessions = [(FCUserEventHistoryStorage *)v11 sessions];
  v13 = FCUserEventsLog;
  v14 = os_log_type_enabled(FCUserEventsLog, OS_LOG_TYPE_DEFAULT);
  if (sessions)
  {
    if (v14)
    {
      v15 = v13;
      v16 = [sessions count];
      *buf = 134217984;
      v25 = v16;
      _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_DEFAULT, "Returning command to sync %lu sessions", buf, 0xCu);
    }

    v17 = [FCModifyUserEventHistoryCommand alloc];
    recordZoneID = [self recordZoneID];
    v19 = [(FCModifyUserEventHistoryCommand *)v17 initWithSessions:sessions recordZoneID:recordZoneID];
    v23 = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  }

  else
  {
    if (v14)
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v13, OS_LOG_TYPE_DEFAULT, "Failed to lookup sesssions to build commands to merge local data to cloud", buf, 2u);
    }

    v20 = MEMORY[0x1E695E0F0];
    v21 = MEMORY[0x1E695E0F0];
  }

  return v20;
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v18 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  v8 = FCUserEventsLog;
  if (os_log_type_enabled(FCUserEventsLog, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    *buf = 134218240;
    v15 = [recordsCopy count];
    v16 = 2048;
    v17 = [namesCopy count];
    _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_DEFAULT, "User event history handling sync with %lu changed records, %lu deleted records", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__FCUserEventHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke;
  v13[3] = &unk_1E7C433D8;
  v13[4] = self;
  [recordsCopy enumerateObjectsUsingBlock:v13];
  privateStorage = [(FCUserEventHistory *)self privateStorage];
  v11 = privateStorage;
  if (namesCopy)
  {
    v12 = namesCopy;
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  [privateStorage clearSessionsWithIDs:v12];
}

void __70__FCUserEventHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"sessionData"];
  if (v4)
  {
    v5 = [*(a1 + 32) privateStorage];
    v6 = [v3 recordID];
    v7 = [v6 recordName];
    [v5 storeSessionID:v7 compressedSessionData:v4 notify:0];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70__FCUserEventHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke_2;
    v8[3] = &unk_1E7C36EA0;
    v9 = v3;
    __70__FCUserEventHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke_2(v8);
  }
}

void __70__FCUserEventHistory_handleSyncWithChangedRecords_deletedRecordNames___block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Handing sync for CKRecord with no session data: %@", *(a1 + 32)];
    *buf = 136315906;
    v4 = "[FCUserEventHistory handleSyncWithChangedRecords:deletedRecordNames:]_block_invoke_2";
    v5 = 2080;
    v6 = "FCUserEventHistory.m";
    v7 = 1024;
    v8 = 156;
    v9 = 2114;
    v10 = v2;
    _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: InvalidUserEventHistorySessionCKRecord) : %s %s:%d %{public}@", buf, 0x26u);
  }
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  dCopy = d;
  storage = [(FCUserEventHistory *)self storage];
  sessionIDs = [storage sessionIDs];

  if (sessionIDs)
  {
    v7 = sessionIDs;
  }

  else
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__FCUserEventHistory_allKnownRecordNamesWithinRecordZoneWithID___block_invoke;
    v9[3] = &unk_1E7C3B578;
    v10 = dCopy;
    v7 = __64__FCUserEventHistory_allKnownRecordNamesWithinRecordZoneWithID___block_invoke(v9);
  }

  return v7;
}

uint64_t __64__FCUserEventHistory_allKnownRecordNamesWithinRecordZoneWithID___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = FCUserEventsLog;
  if (os_log_type_enabled(FCUserEventsLog, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = 138543362;
    v6 = v4;
    _os_log_error_impl(&dword_1B63EF000, v2, OS_LOG_TYPE_ERROR, "Failed to get session ids for all known record names within record zone %{public}@", &v5, 0xCu);
  }

  return MEMORY[0x1E695E0F0];
}

- (void)storage:(id)storage didStoreData:(id)data forSessionID:(id)d
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dCopy = d;
  v9 = FCUserEventsLog;
  if (os_log_type_enabled(FCUserEventsLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = MEMORY[0x1E696AAF0];
    v11 = v9;
    v12 = [v10 stringFromByteCount:objc_msgSend(dataCopy countStyle:{"length"), 0}];
    *buf = 138543618;
    v20 = dCopy;
    v21 = 2114;
    v22 = v12;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Observed session stored with ID %{public}@, size %{public}@. Queueing command to sync session.", buf, 0x16u);
  }

  v13 = [FCModifyUserEventHistoryCommand alloc];
  recordZoneID = [objc_opt_class() recordZoneID];
  v15 = [(FCModifyUserEventHistoryCommand *)v13 initWithSessionID:dCopy data:dataCopy recordZoneID:recordZoneID];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __56__FCUserEventHistory_storage_didStoreData_forSessionID___block_invoke;
  v17[3] = &unk_1E7C36C58;
  v17[4] = self;
  v18 = v15;
  v16 = v15;
  FCPerformBlockOnMainThread(v17);
}

- (void)storage:(id)storage didClearAllSessions:(id)sessions
{
  v13 = *MEMORY[0x1E69E9840];
  sessionsCopy = sessions;
  v6 = FCUserEventsLog;
  if (os_log_type_enabled(FCUserEventsLog, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v11 = 134217984;
    v12 = [sessionsCopy count];
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Observed session storage cleared all session IDs. Queueing command to remove %lu session records.", &v11, 0xCu);
  }

  v8 = [FCRemoveUserEventHistoryCommand alloc];
  recordZoneID = [objc_opt_class() recordZoneID];
  v10 = [(FCRemoveUserEventHistoryCommand *)v8 initWithSessionIDs:sessionsCopy recordZoneID:recordZoneID];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v10];
}

@end