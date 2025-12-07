@interface VCCKShortcutSyncService
- (BOOL)mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:(id)record;
- (CKRecordZoneID)shortcutsZoneID;
- (Class)cloudKitWorkflowClass;
- (NSArray)pendingShortcutsZoneChanges;
- (VCCKShortcutSyncService)initWithContainer:(id)container database:(id)database applicationObserver:(id)observer debuggingOptions:(unint64_t)options logger:(id)logger;
- (id)autoShortcutsPreferencesRecordForRecordID:(id)d;
- (id)autoShortcutsPreferencesWithCloudKitAutoShortcutsPreferences:(id)preferences;
- (id)collectionIdentifierForRecordID:(id)d;
- (id)fetchCloudKitRecordIDsForAllVisibleWorkflows;
- (id)folderRecordForRecordID:(id)d;
- (id)libraryRecordForRecordID:(id)d;
- (id)recordToSaveForRecordID:(id)d;
- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context;
- (id)syncFlagsRecord;
- (id)workflowOrderingRecordForRecordID:(id)d;
- (id)workflowRecordForRecordID:(id)d;
- (id)workflowRecordWithIdentifier:(id)identifier properties:(id)properties;
- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete;
- (void)createShortcutsZone;
- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed;
- (void)dealloc;
- (void)enableCoherenceSync;
- (void)fetchChangesInShortcutsZoneWithCompletion:(id)completion;
- (void)handleDeletedRecordWithID:(id)d;
- (void)handleFetchedAutoShortcutsPreferencesRecord:(id)record;
- (void)handleFetchedCollectionOrderingRecord:(id)record;
- (void)handleFetchedDeletionOfAutoShortcutsPreferencesWithRecordID:(id)d;
- (void)handleFetchedDeletionOfRecordWithID:(id)d;
- (void)handleFetchedFolderRecord:(id)record;
- (void)handleFetchedLegacyOrderingRecord:(id)record;
- (void)handleFetchedSyncFlagsRecord:(id)record;
- (void)handleFetchedWorkflowRecord:(id)record;
- (void)handleSavedAutoShortcutsPreferencesRecord:(id)record;
- (void)handleSavedFolderRecord:(id)record;
- (void)handleSavedLibraryRecord:(id)record;
- (void)handleSavedSyncFlagsRecord:(id)record;
- (void)handleSavedWorkflowOrderingRecord:(id)record;
- (void)handleSavedWorkflowRecord:(id)record;
- (void)handleSendAutoShortcutsPreferencesConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord;
- (void)handleSendFolderConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord;
- (void)handleSendLibraryConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord;
- (void)handleSendSyncFlagsConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord;
- (void)handleSendWorkflowConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord;
- (void)handleSendWorkflowOrderingConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord;
- (void)handleServerRecordChangedError:(id)error;
- (void)handleUnknownItemErrorForRecord:(id)record;
- (void)modifyPendingChangesInShortcutsZoneWithCompletion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)sendChangedFoldersAndCollections;
- (void)sendChangedWorkflows;
- (void)sendLibraryIfNeeded;
- (void)sendSyncFlagsIfNeeded;
- (void)startObservingUserDefaults;
- (void)startWithCompletionHandler:(id)handler;
- (void)stopObservingUserDefaults;
- (void)syncEngine:(id)engine handleEvent:(id)event;
- (void)syncEngineDidDeleteRecordWithID:(id)d;
- (void)syncEngineDidDeleteRecordZoneWithID:(id)d;
- (void)syncEngineDidFetchRecord:(id)record;
- (void)syncEngineDidSaveRecord:(id)record;
- (void)syncEngineDidSaveRecordZone:(id)zone;
- (void)syncEngineDidUpdateMetadata:(id)metadata;
- (void)syncEngineFailedToDeleteRecordWithID:(id)d error:(id)error;
- (void)syncEngineFailedToDeleteRecordZoneWithID:(id)d error:(id)error;
- (void)syncEngineFailedToSaveRecord:(id)record error:(id)error;
- (void)syncEngineFailedToSaveRecordZone:(id)zone error:(id)error;
- (void)syncEngineRecordWithIDWasDeleted:(id)deleted recordType:(id)type;
- (void)syncEngineZoneWithIDChanged:(id)changed;
- (void)syncEngineZoneWithIDWasDeleted:(id)deleted;
- (void)syncEngineZoneWithIDWasPurged:(id)purged;
@end

@implementation VCCKShortcutSyncService

- (void)syncEngineDidUpdateMetadata:(id)metadata
{
  v13 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[VCCKShortcutSyncService syncEngineDidUpdateMetadata:]";
    v11 = 2048;
    v12 = [metadataCopy length];
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Received updated metadata from sync engine, length = %lu", buf, 0x16u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__VCCKShortcutSyncService_syncEngineDidUpdateMetadata___block_invoke;
  v7[3] = &unk_2788FFFC0;
  v7[4] = self;
  v8 = metadataCopy;
  v6 = metadataCopy;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.didUpdateMetadata", v7);
}

void __55__VCCKShortcutSyncService_syncEngineDidUpdateMetadata___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) database];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__VCCKShortcutSyncService_syncEngineDidUpdateMetadata___block_invoke_2;
  v3[3] = &unk_2788FE6E8;
  v4 = *(a1 + 40);
  [v2 updateSyncTokenWithBlock:v3];
}

- (void)syncEngineRecordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  deletedCopy = deleted;
  typeCopy = type;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__VCCKShortcutSyncService_syncEngineRecordWithIDWasDeleted_recordType___block_invoke;
  v10[3] = &unk_2789000F8;
  v11 = deletedCopy;
  v12 = typeCopy;
  selfCopy = self;
  v8 = typeCopy;
  v9 = deletedCopy;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.recordWithIDWasDeleted", v10);
}

void __71__VCCKShortcutSyncService_syncEngineRecordWithIDWasDeleted_recordType___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v25 = 136315650;
    v26 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
    v27 = 2114;
    v28 = v3;
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine fetched deletion of CKRecord with CKRecordID %{public}@ of type %{public}@", &v25, 0x20u);
  }

  [*(*(a1 + 48) + 48) logDeletionFetched:*(a1 + 32)];
  v5 = *(a1 + 40);
  v6 = [MEMORY[0x277D7C1F0] recordType];
  if ([v5 isEqualToString:v6])
  {

LABEL_6:
    v9 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
LABEL_10:

      return;
    }

    v25 = 136315138;
    v26 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
    v10 = "%s Fetched record deletion of collection ordering record, not handling";
    goto LABEL_8;
  }

  v7 = *(a1 + 40);
  v8 = [MEMORY[0x277D7C1A0] recordType];
  LODWORD(v7) = [v7 isEqualToString:v8];

  if (v7)
  {
    goto LABEL_6;
  }

  v13 = *(a1 + 40);
  v14 = [MEMORY[0x277D7C208] recordType];
  LODWORD(v13) = [v13 isEqualToString:v14];

  if (v13)
  {
    v9 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    v25 = 136315138;
    v26 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
    v10 = "%s Fetched record deletion of legacy workflow ordering record";
    v11 = v9;
    v12 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_9;
  }

  v15 = *(a1 + 40);
  v16 = [objc_msgSend(*(a1 + 48) "cloudKitWorkflowClass")];
  if ([v15 isEqualToString:v16])
  {

LABEL_18:
    [*(a1 + 48) handleFetchedDeletionOfRecordWithID:*(a1 + 32)];
    return;
  }

  v17 = *(a1 + 40);
  v18 = [MEMORY[0x277D7C1F8] recordType];
  LODWORD(v17) = [v17 isEqualToString:v18];

  if (v17)
  {
    goto LABEL_18;
  }

  v19 = *(a1 + 40);
  v20 = [MEMORY[0x277D7C228] recordType];
  LODWORD(v19) = [v19 isEqualToString:v20];

  if (v19)
  {
    v9 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v25 = 136315138;
    v26 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
    v10 = "%s Fetched unexpected record deletion of sync flags record, not handling";
LABEL_8:
    v11 = v9;
    v12 = OS_LOG_TYPE_ERROR;
LABEL_9:
    _os_log_impl(&dword_23103C000, v11, v12, v10, &v25, 0xCu);
    goto LABEL_10;
  }

  v21 = *(a1 + 40);
  v22 = [MEMORY[0x277D7C1E8] recordType];
  LODWORD(v21) = [v21 isEqualToString:v22];

  if (v21)
  {
    [*(a1 + 48) handleFetchedDeletionOfAutoShortcutsPreferencesWithRecordID:*(a1 + 32)];
  }

  else
  {
    v23 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 40);
      v25 = 136315394;
      v26 = "[VCCKShortcutSyncService syncEngineRecordWithIDWasDeleted:recordType:]_block_invoke";
      v27 = 2114;
      v28 = v24;
      _os_log_impl(&dword_23103C000, v23, OS_LOG_TYPE_ERROR, "%s Fetched record deletion of unexpected type: %{public}@", &v25, 0x16u);
    }
  }
}

- (void)syncEngineDidFetchRecord:(id)record
{
  recordCopy = record;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__VCCKShortcutSyncService_syncEngineDidFetchRecord___block_invoke;
  v6[3] = &unk_2788FFFC0;
  v7 = recordCopy;
  selfCopy = self;
  v5 = recordCopy;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.didFetchRecord", v6);
}

void __52__VCCKShortcutSyncService_syncEngineDidFetchRecord___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) recordID];
    v4 = *(a1 + 32);
    *buf = 136315650;
    v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
    v49 = 2114;
    v50 = v3;
    v51 = 2112;
    v52 = v4;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine fetched CKRecord with CKRecordID %{public}@, record = %@", buf, 0x20u);
  }

  [*(*(a1 + 40) + 48) logRecordFetched:*(a1 + 32)];
  v5 = [*(a1 + 32) recordType];
  v6 = [MEMORY[0x277D7C1F0] recordType];
  if (![v5 isEqualToString:v6])
  {
    v7 = [*(a1 + 32) recordType];
    v8 = [MEMORY[0x277D7C1A0] recordType];
    v9 = [v7 isEqualToString:v8];

    if (v9)
    {
      goto LABEL_6;
    }

    v12 = [*(a1 + 32) recordType];
    v13 = [MEMORY[0x277D7C208] recordType];
    v14 = [v12 isEqualToString:v13];

    if (v14)
    {
      if ([*(a1 + 40) coherenceSyncEnabled])
      {
        v10 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        *buf = 136315138;
        v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v11 = "%s Skipping fetched legacy workflow ordering record because coherence sync is enabled";
        goto LABEL_9;
      }

      [*(a1 + 40) handleFetchedLegacyOrderingRecord:*(a1 + 32)];
      return;
    }

    v15 = [*(a1 + 32) recordType];
    v16 = [MEMORY[0x277D7C248] recordType];
    v17 = [v15 isEqualToString:v16];

    if (v17)
    {
      if ([*(a1 + 40) coherenceSyncEnabled])
      {
        v10 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        *buf = 136315138;
        v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v11 = "%s Skipping fetched workflow record because coherence sync is enabled";
        goto LABEL_9;
      }

LABEL_26:
      [*(a1 + 40) handleFetchedWorkflowRecord:*(a1 + 32)];
      return;
    }

    v18 = [*(a1 + 32) recordType];
    v19 = [MEMORY[0x277D7C240] recordType];
    v20 = [v18 isEqualToString:v19];

    if (v20)
    {
      if (([*(a1 + 40) coherenceSyncEnabled] & 1) == 0)
      {
        if (([*(a1 + 40) debuggingOptions] & 2) != 0)
        {
          v10 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            goto LABEL_10;
          }

          *buf = 136315138;
          v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
          v11 = "%s Skipping fetched workflow v2 record because the migration was disabled by a debugging option and this device is not using Coherence sync";
          goto LABEL_9;
        }

        [*(a1 + 40) enableCoherenceSync];
      }

      goto LABEL_26;
    }

    v21 = [*(a1 + 32) recordType];
    v22 = [MEMORY[0x277D7C1F8] recordType];
    v23 = [v21 isEqualToString:v22];

    if (v23)
    {
      if ([*(a1 + 40) coherenceSyncEnabled])
      {
        v10 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        *buf = 136315138;
        v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v11 = "%s Skipping fetched folder record because coherence sync is enabled";
        goto LABEL_9;
      }

      [*(a1 + 40) handleFetchedFolderRecord:*(a1 + 32)];
      return;
    }

    v24 = [*(a1 + 32) recordType];
    v25 = [MEMORY[0x277D7C228] recordType];
    v26 = [v24 isEqualToString:v25];

    if (v26)
    {
      [*(a1 + 40) handleFetchedSyncFlagsRecord:*(a1 + 32)];
      return;
    }

    v27 = [*(a1 + 32) recordType];
    v28 = [MEMORY[0x277D7C1E8] recordType];
    v29 = [v27 isEqualToString:v28];

    if (v29)
    {
      [*(a1 + 40) handleFetchedAutoShortcutsPreferencesRecord:*(a1 + 32)];
      return;
    }

    v30 = [*(a1 + 32) recordType];
    v31 = [MEMORY[0x277D7C210] recordType];
    v32 = [v30 isEqualToString:v31];

    if (!v32)
    {
      v37 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v44 = [*(a1 + 32) recordType];
        *buf = 136315394;
        v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v49 = 2114;
        v50 = v44;
        _os_log_impl(&dword_23103C000, v37, OS_LOG_TYPE_ERROR, "%s Fetched record of unexpected type: %{public}@", buf, 0x16u);
      }

      goto LABEL_51;
    }

    if (([*(a1 + 40) coherenceSyncEnabled] & 1) == 0)
    {
      if (([*(a1 + 40) debuggingOptions] & 2) != 0)
      {
        v10 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          goto LABEL_10;
        }

        *buf = 136315138;
        v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v11 = "%s Skipping fetched library record because the migration was disabled by a debugging option and this device is not using Coherence sync";
        goto LABEL_9;
      }

      [*(a1 + 40) enableCoherenceSync];
    }

    v33 = *(a1 + 32);
    v34 = [*(a1 + 40) database];
    v35 = [*(a1 + 40) logger];
    v46 = 0;
    v36 = [_TtC14VoiceShortcuts26VCCKLibrarySyncCoordinator handleFetchedLibraryRecord:v33 database:v34 logger:v35 error:&v46];
    v37 = v46;

    v38 = getWFCloudKitSyncLogObject();
    v39 = v38;
    if (v36)
    {
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
        v40 = "%s Handled fetched library record";
        v41 = v39;
        v42 = OS_LOG_TYPE_INFO;
        v43 = 12;
LABEL_49:
        _os_log_impl(&dword_23103C000, v41, v42, v40, buf, v43);
      }
    }

    else if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 32);
      *buf = 136315650;
      v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
      v49 = 2114;
      v50 = v45;
      v51 = 2114;
      v52 = v37;
      v40 = "%s Failed to handle fetched library record: %{public}@ - %{public}@";
      v41 = v39;
      v42 = OS_LOG_TYPE_ERROR;
      v43 = 32;
      goto LABEL_49;
    }

LABEL_51:
    return;
  }

LABEL_6:
  if ([*(a1 + 40) coherenceSyncEnabled])
  {
    v10 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
LABEL_10:

      return;
    }

    *buf = 136315138;
    v48 = "[VCCKShortcutSyncService syncEngineDidFetchRecord:]_block_invoke";
    v11 = "%s Skipping fetched collection record because coherence sync is enabled";
LABEL_9:
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, v11, buf, 0xCu);
    goto LABEL_10;
  }

  [*(a1 + 40) handleFetchedCollectionOrderingRecord:*(a1 + 32)];
}

- (void)syncEngineFailedToDeleteRecordWithID:(id)d error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    domain = [errorCopy domain];
    v12 = 136316162;
    v13 = "[VCCKShortcutSyncService syncEngineFailedToDeleteRecordWithID:error:]";
    v14 = 2114;
    v15 = domain;
    v16 = 2050;
    code = [errorCopy code];
    v18 = 2114;
    v19 = errorCopy;
    v20 = 2114;
    v21 = dCopy;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Sync engine failed to delete CKRecord: error domain = %{public}@, code = %{public}ld, error = %{public}@, recordID = %{public}@", &v12, 0x34u);
  }

  logger = self->_logger;
  v11 = [errorCopy description];
  [(WFCloudKitSyncEventLogger *)logger logRecordDeleteFailed:dCopy error:v11];
}

- (void)syncEngineDidDeleteRecordWithID:(id)d
{
  dCopy = d;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__VCCKShortcutSyncService_syncEngineDidDeleteRecordWithID___block_invoke;
  v6[3] = &unk_2788FFFC0;
  v7 = dCopy;
  selfCopy = self;
  v5 = dCopy;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.didDeleteRecordWithID", v6);
}

uint64_t __59__VCCKShortcutSyncService_syncEngineDidDeleteRecordWithID___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[VCCKShortcutSyncService syncEngineDidDeleteRecordWithID:]_block_invoke";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine deleted CKRecord with CKRecordID %{public}@", &v5, 0x16u);
  }

  [*(*(a1 + 40) + 48) logRecordDeleted:*(a1 + 32)];
  return [*(a1 + 40) handleDeletedRecordWithID:*(a1 + 32)];
}

- (void)syncEngineFailedToSaveRecord:(id)record error:(id)error
{
  recordCopy = record;
  errorCopy = error;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__VCCKShortcutSyncService_syncEngineFailedToSaveRecord_error___block_invoke;
  v10[3] = &unk_2789000F8;
  v11 = errorCopy;
  v12 = recordCopy;
  selfCopy = self;
  v8 = recordCopy;
  v9 = errorCopy;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.failedToSaveRecord", v10);
}

void __62__VCCKShortcutSyncService_syncEngineFailedToSaveRecord_error___block_invoke(id *a1)
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] userInfo];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x277CBBFB0]];

  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [a1[5] recordID];
    v8 = [a1[5] recordType];
    v9 = [a1[4] domain];
    v10 = [a1[4] code];
    v11 = a1[4];
    v12 = a1[5];
    *buf = 136316930;
    v33 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecord:error:]_block_invoke";
    v34 = 2114;
    v35 = v7;
    v36 = 2114;
    v37 = v8;
    v38 = 2114;
    v39 = v9;
    v40 = 2050;
    v41 = v10;
    v42 = 2114;
    v43 = v11;
    v44 = 2112;
    v45 = v12;
    v46 = 2114;
    v47 = v5;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s Sync engine failed to save CKRecord: %{public}@ (%{public}@), error domain = %{public}@, code = %{public}ld, error = %{public}@, record = %@, partial errors = %{public}@", buf, 0x52u);
  }

  v13 = a1[5];
  v14 = *(a1[6] + 6);
  v15 = [a1[4] description];
  [v14 logRecordPushFailed:v13 error:v15];

  v16 = [a1[5] recordType];
  v17 = [objc_msgSend(a1[6] "cloudKitWorkflowClass")];
  LODWORD(v15) = [v16 isEqualToString:v17];

  if (v15)
  {
    v18 = [a1[5] recordID];
    v19 = [v18 recordName];

    v20 = [a1[6] filesReferencedUntilSaved];
    [v20 setObject:0 forKeyedSubscript:v19];
  }

  if (CKErrorIsCode())
  {
    [a1[6] handleServerRecordChangedError:a1[4]];
    goto LABEL_26;
  }

  if (CKErrorIsCode())
  {
    [a1[6] handleUnknownItemErrorForRecord:a1[5]];
    goto LABEL_26;
  }

  if (CKErrorIsCode())
  {
    v21 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [a1[5] recordID];
      *buf = 136315394;
      v33 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecord:error:]_block_invoke";
      v34 = 2114;
      v35 = v22;
      _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_DEFAULT, "%s Zone not found error encountered, asking sync engine to create the Shortcuts zone, and re-saving record with identifier %{public}@", buf, 0x16u);
    }

    [a1[6] createShortcutsZone];
    v23 = a1[6];
    v24 = [a1[5] recordID];
    v31 = v24;
    v25 = MEMORY[0x277CBEA60];
    v26 = &v31;
LABEL_18:
    v27 = [v25 arrayWithObjects:v26 count:{1, v30, v31}];
    [v23 addRecordIDsToSave:v27 recordIDsToDelete:0];

    goto LABEL_26;
  }

  if (CKErrorIsCode())
  {
    v28 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v33 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecord:error:]_block_invoke";
      _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_DEFAULT, "%s User deleted zone error encountered", buf, 0xCu);
    }

    [MEMORY[0x277D7C230] setZoneWasPurged:1];
    if ([MEMORY[0x277D7C230] ignoresUserDeletedZoneErrors])
    {
      v29 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v33 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecord:error:]_block_invoke";
        _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_DEFAULT, "%s User has consented to resuming sync, recreating the zone and retrying record upload", buf, 0xCu);
      }

      [a1[6] createShortcutsZone];
      v23 = a1[6];
      v24 = [a1[5] recordID];
      v30 = v24;
      v25 = MEMORY[0x277CBEA60];
      v26 = &v30;
      goto LABEL_18;
    }
  }

LABEL_26:
}

- (void)syncEngineDidSaveRecord:(id)record
{
  recordCopy = record;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__VCCKShortcutSyncService_syncEngineDidSaveRecord___block_invoke;
  v6[3] = &unk_2788FFFC0;
  v7 = recordCopy;
  selfCopy = self;
  v5 = recordCopy;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.didSaveRecord", v6);
}

void __51__VCCKShortcutSyncService_syncEngineDidSaveRecord___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) recordID];
    v4 = *(a1 + 32);
    v33 = 136315650;
    v34 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
    v35 = 2114;
    v36 = v3;
    v37 = 2112;
    v38 = v4;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine saved CKRecord with CKRecordID %{public}@, record = %@", &v33, 0x20u);
  }

  [*(*(a1 + 40) + 48) logRecordPushed:*(a1 + 32)];
  v5 = [*(a1 + 32) recordType];
  v6 = [MEMORY[0x277D7C1F0] recordType];
  if ([v5 isEqualToString:v6])
  {

LABEL_6:
    if ([*(a1 + 40) coherenceSyncEnabled])
    {
      v10 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        return;
      }

      v33 = 136315138;
      v34 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
      v11 = "%s Saved collection record but skipping handling it because coherence sync is enabled";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_23103C000, v12, v13, v11, &v33, 0xCu);
      goto LABEL_10;
    }

    [*(a1 + 40) handleSavedWorkflowOrderingRecord:*(a1 + 32)];
    return;
  }

  v7 = [*(a1 + 32) recordType];
  v8 = [MEMORY[0x277D7C1A0] recordType];
  v9 = [v7 isEqualToString:v8];

  if (v9)
  {
    goto LABEL_6;
  }

  v14 = [*(a1 + 32) recordType];
  v15 = [objc_msgSend(*(a1 + 40) "cloudKitWorkflowClass")];
  v16 = [v14 isEqualToString:v15];

  if (v16)
  {
    [*(a1 + 40) handleSavedWorkflowRecord:*(a1 + 32)];
    return;
  }

  v17 = [*(a1 + 32) recordType];
  v18 = [MEMORY[0x277D7C228] recordType];
  v19 = [v17 isEqualToString:v18];

  if (v19)
  {
    [*(a1 + 40) handleSavedSyncFlagsRecord:*(a1 + 32)];
    return;
  }

  v20 = [*(a1 + 32) recordType];
  v21 = [MEMORY[0x277D7C1F8] recordType];
  v22 = [v20 isEqualToString:v21];

  if (!v22)
  {
    v23 = [*(a1 + 32) recordType];
    v24 = [MEMORY[0x277D7C1E8] recordType];
    v25 = [v23 isEqualToString:v24];

    if (v25)
    {
      [*(a1 + 40) handleSavedAutoShortcutsPreferencesRecord:*(a1 + 32)];
      v26 = [*(a1 + 32) recordID];
      v27 = [v26 recordName];

      v28 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v33 = 136315394;
        v34 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
        v35 = 2114;
        v36 = v27;
        _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_INFO, "%s Removing file representations for the auto shortcuts preferences record: %{public}@", &v33, 0x16u);
      }

      v29 = [*(a1 + 40) filesReferencedUntilSaved];
      [v29 removeObjectForKey:v27];
    }

    else
    {
      v30 = [*(a1 + 32) recordType];
      v31 = [MEMORY[0x277D7C210] recordType];
      if ([v30 isEqualToString:v31])
      {
        v32 = [*(a1 + 40) coherenceSyncEnabled];

        if (v32)
        {
          [*(a1 + 40) handleSavedLibraryRecord:*(a1 + 32)];
          return;
        }
      }

      else
      {
      }

      v27 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }

      v29 = [*(a1 + 32) recordType];
      v33 = 136315394;
      v34 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
      v35 = 2114;
      v36 = v29;
      _os_log_impl(&dword_23103C000, v27, OS_LOG_TYPE_ERROR, "%s Saved record of unexpected type: %{public}@", &v33, 0x16u);
    }

LABEL_32:
    return;
  }

  if ([*(a1 + 40) coherenceSyncEnabled])
  {
    v10 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v33 = 136315138;
    v34 = "[VCCKShortcutSyncService syncEngineDidSaveRecord:]_block_invoke";
    v11 = "%s Saved folder record but skipping handling it because coherence sync is enabled";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  [*(a1 + 40) handleSavedFolderRecord:*(a1 + 32)];
}

- (id)recordToSaveForRecordID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1171;
  v16 = __Block_byref_object_dispose__1172;
  v17 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__VCCKShortcutSyncService_recordToSaveForRecordID___block_invoke;
  v8[3] = &unk_278900198;
  v5 = dCopy;
  v9 = v5;
  selfCopy = self;
  v11 = &v12;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.recordToSaveForRecordID", v8);
  v6 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v6;
}

void __51__VCCKShortcutSyncService_recordToSaveForRecordID___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v12 = 136315394;
    v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_INFO, "%s Sync engine is asking for CKRecord with ID %{public}@", &v12, 0x16u);
  }

  if (([MEMORY[0x277D7C1F0] isOrderingRecordID:*(a1 + 32)] & 1) == 0 && !objc_msgSend(MEMORY[0x277D7C1A0], "isOrderingRecordID:", *(a1 + 32)))
  {
    if ([MEMORY[0x277D7C228] isCloudKitSyncFlagsRecordID:*(a1 + 32)])
    {
      v8 = [*(a1 + 40) syncFlagsRecord];
      v9 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 136315394;
        v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
        v14 = 2114;
        v15 = v8;
        v10 = "%s Returning sync flags CKRecord: %{public}@";
        goto LABEL_14;
      }
    }

    else
    {
      if (![MEMORY[0x277D7C1F8] isFolderRecordID:*(a1 + 32)])
      {
        if ([MEMORY[0x277D7C1E8] isAutoShortcutsPreferencesRecordID:*(a1 + 32)])
        {
          v8 = [*(a1 + 40) autoShortcutsPreferencesRecordForRecordID:*(a1 + 32)];
          v9 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          v12 = 136315394;
          v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
          v14 = 2114;
          v15 = v8;
          v10 = "%s Returning auto shortcuts preferences CKRecord: %{public}@";
        }

        else if ([MEMORY[0x277D7C210] isLibraryRecordID:*(a1 + 32)] && objc_msgSend(*(a1 + 40), "coherenceSyncEnabled"))
        {
          v8 = [*(a1 + 40) libraryRecordForRecordID:*(a1 + 32)];
          v9 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          v12 = 136315394;
          v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
          v14 = 2114;
          v15 = v8;
          v10 = "%s Returning library CKRecord: %{public}@";
        }

        else
        {
          v8 = [*(a1 + 40) workflowRecordForRecordID:*(a1 + 32)];
          v9 = getWFCloudKitSyncLogObject();
          if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            goto LABEL_15;
          }

          v12 = 136315394;
          v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
          v14 = 2112;
          v15 = v8;
          v10 = "%s Returning workflow CKRecord: %@";
        }

        goto LABEL_14;
      }

      if ([*(a1 + 40) coherenceSyncEnabled])
      {
        v4 = getWFCloudKitSyncLogObject();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          goto LABEL_16;
        }

        v12 = 136315138;
        v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
        v5 = "%s Asked for a folder record to save but returning nil because coherence sync is enabled";
        v6 = v4;
        v7 = OS_LOG_TYPE_INFO;
        goto LABEL_8;
      }

      v8 = [*(a1 + 40) folderRecordForRecordID:*(a1 + 32)];
      v9 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 136315394;
        v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
        v14 = 2114;
        v15 = v8;
        v10 = "%s Returning folder CKRecord: %{public}@";
        goto LABEL_14;
      }
    }

LABEL_15:

    v11 = *(*(a1 + 48) + 8);
    v4 = *(v11 + 40);
    *(v11 + 40) = v8;
    goto LABEL_16;
  }

  if (![*(a1 + 40) coherenceSyncEnabled])
  {
    v8 = [*(a1 + 40) workflowOrderingRecordForRecordID:*(a1 + 32)];
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
      v14 = 2114;
      v15 = v8;
      v10 = "%s Returning workflow ordering CKRecord: %{public}@";
LABEL_14:
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, v10, &v12, 0x16u);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v12 = 136315138;
    v13 = "[VCCKShortcutSyncService recordToSaveForRecordID:]_block_invoke";
    v5 = "%s Asked for a collection record to save but returning nil because coherence sync is enabled";
    v6 = v4;
    v7 = OS_LOG_TYPE_ERROR;
LABEL_8:
    _os_log_impl(&dword_23103C000, v6, v7, v5, &v12, 0xCu);
  }

LABEL_16:
}

- (void)syncEngineZoneWithIDWasPurged:(id)purged
{
  v13 = *MEMORY[0x277D85DE8];
  purgedCopy = purged;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[VCCKShortcutSyncService syncEngineZoneWithIDWasPurged:]";
    v11 = 2114;
    v12 = purgedCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Sync engine reports that CKRecordZone with identifier %{public}@ was purged", buf, 0x16u);
  }

  logger = self->_logger;
  purgedCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Zone purged: %@", purgedCopy];
  [(WFCloudKitSyncEventLogger *)logger logEvent:purgedCopy];

  shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  LODWORD(logger) = [purgedCopy isEqual:shortcutsZoneID];

  if (logger)
  {
    [MEMORY[0x277D7C230] setZoneWasPurged:1];
  }
}

- (void)syncEngineZoneWithIDWasDeleted:(id)deleted
{
  v12 = *MEMORY[0x277D85DE8];
  deletedCopy = deleted;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[VCCKShortcutSyncService syncEngineZoneWithIDWasDeleted:]";
    v10 = 2114;
    v11 = deletedCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Sync engine reports that CKRecordZone with identifier %{public}@ was deleted", buf, 0x16u);
  }

  logger = self->_logger;
  deletedCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Zone deleted: %@", deletedCopy];
  [(WFCloudKitSyncEventLogger *)logger logEvent:deletedCopy];
}

- (void)syncEngineZoneWithIDChanged:(id)changed
{
  v12 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v9 = "[VCCKShortcutSyncService syncEngineZoneWithIDChanged:]";
    v10 = 2114;
    v11 = changedCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Sync engine reports that CKRecordZone with identifier %{public}@ changed", buf, 0x16u);
  }

  logger = self->_logger;
  changedCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Zone changed: %@", changedCopy];
  [(WFCloudKitSyncEventLogger *)logger logEvent:changedCopy];
}

- (void)syncEngineFailedToDeleteRecordZoneWithID:(id)d error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315650;
    v14 = "[VCCKShortcutSyncService syncEngineFailedToDeleteRecordZoneWithID:error:]";
    v15 = 2114;
    v16 = errorCopy;
    v17 = 2114;
    v18 = dCopy;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_FAULT, "%s Sync engine reports failure to delete CKRecordZone: %{public}@, zoneID = %{public}@. This is unexpected, as we should not be deleting any zones", buf, 0x20u);
  }

  logger = self->_logger;
  v10 = MEMORY[0x277CCACA8];
  v11 = [errorCopy description];
  v12 = [v10 stringWithFormat:@"Failed to delete record zone: %@. %@", dCopy, v11];
  [(WFCloudKitSyncEventLogger *)logger logError:v12];
}

- (void)syncEngineFailedToSaveRecordZone:(id)zone error:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  errorCopy = error;
  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v15 = "[VCCKShortcutSyncService syncEngineFailedToSaveRecordZone:error:]";
    v16 = 2114;
    v17 = errorCopy;
    v18 = 2114;
    v19 = zoneCopy;
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to save CKRecordZone: %{public}@, zone = %{public}@", buf, 0x20u);
  }

  logger = self->_logger;
  v10 = MEMORY[0x277CCACA8];
  zoneID = [zoneCopy zoneID];
  v12 = [errorCopy description];
  v13 = [v10 stringWithFormat:@"Failed to save record zone: %@. %@", zoneID, v12];
  [(WFCloudKitSyncEventLogger *)logger logError:v13];
}

- (void)syncEngineDidDeleteRecordZoneWithID:(id)d
{
  v12 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315394;
    v9 = "[VCCKShortcutSyncService syncEngineDidDeleteRecordZoneWithID:]";
    v10 = 2114;
    v11 = dCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_FAULT, "%s Sync engine reports successful deletion of CKRecordZone with identifier %{public}@, but we should not be deleting any zones", buf, 0x16u);
  }

  logger = self->_logger;
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Deleted record zone: %@", dCopy];
  [(WFCloudKitSyncEventLogger *)logger logEvent:dCopy];
}

- (void)syncEngineDidSaveRecordZone:(id)zone
{
  v16 = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VCCKShortcutSyncService syncEngineDidSaveRecordZone:]";
    v14 = 2114;
    v15 = zoneCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Successfully saved CKRecordZone %{public}@", buf, 0x16u);
  }

  logger = self->_logger;
  v7 = MEMORY[0x277CCACA8];
  zoneID = [zoneCopy zoneID];
  v9 = [v7 stringWithFormat:@"Saved record zone: %@", zoneID];
  [(WFCloudKitSyncEventLogger *)logger logEvent:v9];

  zoneID2 = [zoneCopy zoneID];
  shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  LODWORD(v9) = [zoneID2 isEqual:shortcutsZoneID];

  if (v9)
  {
    [MEMORY[0x277D7C230] setIgnoresUserDeletedZoneErrors:0];
  }
}

- (id)syncEngine:(id)engine nextRecordZoneChangeBatchForContext:(id)context
{
  v37 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  contextCopy = context;
  syncEngine = [(VCCKShortcutSyncService *)self syncEngine];

  if (syncEngine == engineCopy)
  {
    v28 = contextCopy;
    v29 = engineCopy;
    options = [contextCopy options];
    scope = [options scope];

    v12 = objc_opt_new();
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    syncEngine2 = [(VCCKShortcutSyncService *)self syncEngine];
    state = [syncEngine2 state];
    pendingRecordZoneChanges = [state pendingRecordZoneChanges];

    v16 = [pendingRecordZoneChanges countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v33;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v33 != v18)
          {
            objc_enumerationMutation(pendingRecordZoneChanges);
          }

          v20 = *(*(&v32 + 1) + 8 * i);
          recordID = [v20 recordID];
          v22 = [scope containsRecordID:recordID];

          if (v22)
          {
            [v12 addObject:v20];
          }
        }

        v17 = [pendingRecordZoneChanges countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v17);
    }

    v23 = objc_opt_new();
    v24 = objc_alloc(MEMORY[0x277CBC730]);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __74__VCCKShortcutSyncService_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke;
    v30[3] = &unk_2788FE7D8;
    v30[4] = self;
    v31 = v23;
    v25 = v23;
    v9 = [v24 initWithPendingChanges:v12 recordProvider:v30];
    engineCopy = v29;
    state2 = [v29 state];
    [state2 removePendingRecordZoneChanges:v25];

    contextCopy = v28;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __74__VCCKShortcutSyncService_syncEngine_nextRecordZoneChangeBatchForContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) recordToSaveForRecordID:v3];
  if (!v4)
  {
    v5 = *(a1 + 40);
    v6 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:v3 type:0];
    [v5 addObject:v6];
  }

  return v4;
}

- (void)syncEngine:(id)engine handleEvent:(id)event
{
  v159 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  type = [eventCopy type];
  if (type <= 2)
  {
    if (!type)
    {
      v15 = eventCopy;
      if (v15)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = v15;
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }

      v57 = v16;

      v58 = MEMORY[0x277CCAAB0];
      stateSerialization = [v57 stateSerialization];

      v17 = [v58 wf_securelyArchivedDataWithRootObject:stateSerialization];

      [(VCCKShortcutSyncService *)self syncEngineDidUpdateMetadata:v17];
      goto LABEL_126;
    }

    if (type != 2)
    {
      goto LABEL_127;
    }

    v9 = eventCopy;
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
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

    v17 = v10;

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    modifications = [v17 modifications];
    v87 = [modifications countByEnumeratingWithState:&v143 objects:v158 count:16];
    if (v87)
    {
      v88 = v87;
      v89 = *v144;
      do
      {
        for (i = 0; i != v88; ++i)
        {
          if (*v144 != v89)
          {
            objc_enumerationMutation(modifications);
          }

          zoneID = [*(*(&v143 + 1) + 8 * i) zoneID];
          [(VCCKShortcutSyncService *)self syncEngineZoneWithIDChanged:zoneID];
        }

        v88 = [modifications countByEnumeratingWithState:&v143 objects:v158 count:16];
      }

      while (v88);
    }

    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    deletions = [v17 deletions];
    v92 = [deletions countByEnumeratingWithState:&v139 objects:v157 count:16];
    if (!v92)
    {
      goto LABEL_125;
    }

    v93 = v92;
    v94 = *v140;
LABEL_115:
    v95 = 0;
    while (1)
    {
      if (*v140 != v94)
      {
        objc_enumerationMutation(deletions);
      }

      v96 = *(*(&v139 + 1) + 8 * v95);
      reason = [v96 reason];
      if (reason == 1)
      {
        break;
      }

      if (!reason)
      {
        zoneID2 = [v96 zoneID];
        [(VCCKShortcutSyncService *)self syncEngineZoneWithIDWasDeleted:zoneID2];
LABEL_122:
      }

      if (v93 == ++v95)
      {
        v93 = [deletions countByEnumeratingWithState:&v139 objects:v157 count:16];
        if (!v93)
        {
          goto LABEL_125;
        }

        goto LABEL_115;
      }
    }

    zoneID2 = [v96 zoneID];
    [(VCCKShortcutSyncService *)self syncEngineZoneWithIDWasPurged:zoneID2];
    goto LABEL_122;
  }

  switch(type)
  {
    case 3:
      v11 = eventCopy;
      if (v11)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }

      v17 = v12;

      v137 = 0u;
      v138 = 0u;
      v135 = 0u;
      v136 = 0u;
      modifications2 = [v17 modifications];
      v19 = [modifications2 countByEnumeratingWithState:&v135 objects:v156 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v136;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v136 != v21)
            {
              objc_enumerationMutation(modifications2);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidFetchRecord:*(*(&v135 + 1) + 8 * j)];
          }

          v20 = [modifications2 countByEnumeratingWithState:&v135 objects:v156 count:16];
        }

        while (v20);
      }

      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      deletions = [v17 deletions];
      v24 = [deletions countByEnumeratingWithState:&v131 objects:v155 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v132;
        do
        {
          for (k = 0; k != v25; ++k)
          {
            if (*v132 != v26)
            {
              objc_enumerationMutation(deletions);
            }

            v28 = *(*(&v131 + 1) + 8 * k);
            recordID = [v28 recordID];
            recordType = [v28 recordType];
            [(VCCKShortcutSyncService *)self syncEngineRecordWithIDWasDeleted:recordID recordType:recordType];
          }

          v25 = [deletions countByEnumeratingWithState:&v131 objects:v155 count:16];
        }

        while (v25);
      }

      goto LABEL_125;
    case 4:
      v13 = eventCopy;
      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }

      v17 = v14;

      v129 = 0u;
      v130 = 0u;
      v127 = 0u;
      v128 = 0u;
      savedZones = [v17 savedZones];
      v32 = [savedZones countByEnumeratingWithState:&v127 objects:v154 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v128;
        do
        {
          for (m = 0; m != v33; ++m)
          {
            if (*v128 != v34)
            {
              objc_enumerationMutation(savedZones);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidSaveRecordZone:*(*(&v127 + 1) + 8 * m)];
          }

          v33 = [savedZones countByEnumeratingWithState:&v127 objects:v154 count:16];
        }

        while (v33);
      }

      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      failedZoneSaves = [v17 failedZoneSaves];
      v37 = [failedZoneSaves countByEnumeratingWithState:&v123 objects:v153 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v124;
        do
        {
          for (n = 0; n != v38; ++n)
          {
            if (*v124 != v39)
            {
              objc_enumerationMutation(failedZoneSaves);
            }

            v41 = *(*(&v123 + 1) + 8 * n);
            recordZone = [v41 recordZone];
            error = [v41 error];
            [(VCCKShortcutSyncService *)self syncEngineFailedToSaveRecordZone:recordZone error:error];
          }

          v38 = [failedZoneSaves countByEnumeratingWithState:&v123 objects:v153 count:16];
        }

        while (v38);
      }

      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      deletedZoneIDs = [v17 deletedZoneIDs];
      v45 = [deletedZoneIDs countByEnumeratingWithState:&v119 objects:v152 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v120;
        do
        {
          for (ii = 0; ii != v46; ++ii)
          {
            if (*v120 != v47)
            {
              objc_enumerationMutation(deletedZoneIDs);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidDeleteRecordZoneWithID:*(*(&v119 + 1) + 8 * ii)];
          }

          v46 = [deletedZoneIDs countByEnumeratingWithState:&v119 objects:v152 count:16];
        }

        while (v46);
      }

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      failedZoneDeletes = [v17 failedZoneDeletes];
      deletions = [failedZoneDeletes allKeys];

      v50 = [deletions countByEnumeratingWithState:&v115 objects:v151 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v116;
        do
        {
          for (jj = 0; jj != v51; ++jj)
          {
            if (*v116 != v52)
            {
              objc_enumerationMutation(deletions);
            }

            v54 = *(*(&v115 + 1) + 8 * jj);
            failedZoneDeletes2 = [v17 failedZoneDeletes];
            v56 = [failedZoneDeletes2 objectForKey:v54];
            [(VCCKShortcutSyncService *)self syncEngineFailedToDeleteRecordZoneWithID:v54 error:v56];
          }

          v51 = [deletions countByEnumeratingWithState:&v115 objects:v151 count:16];
        }

        while (v51);
      }

      goto LABEL_125;
    case 5:
      v7 = eventCopy;
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v17 = v8;

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      savedRecords = [v17 savedRecords];
      v61 = [savedRecords countByEnumeratingWithState:&v111 objects:v150 count:16];
      if (v61)
      {
        v62 = v61;
        v63 = *v112;
        do
        {
          for (kk = 0; kk != v62; ++kk)
          {
            if (*v112 != v63)
            {
              objc_enumerationMutation(savedRecords);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidSaveRecord:*(*(&v111 + 1) + 8 * kk)];
          }

          v62 = [savedRecords countByEnumeratingWithState:&v111 objects:v150 count:16];
        }

        while (v62);
      }

      v109 = 0u;
      v110 = 0u;
      v107 = 0u;
      v108 = 0u;
      failedRecordSaves = [v17 failedRecordSaves];
      v66 = [failedRecordSaves countByEnumeratingWithState:&v107 objects:v149 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v108;
        do
        {
          for (mm = 0; mm != v67; ++mm)
          {
            if (*v108 != v68)
            {
              objc_enumerationMutation(failedRecordSaves);
            }

            v70 = *(*(&v107 + 1) + 8 * mm);
            record = [v70 record];
            error2 = [v70 error];
            [(VCCKShortcutSyncService *)self syncEngineFailedToSaveRecord:record error:error2];
          }

          v67 = [failedRecordSaves countByEnumeratingWithState:&v107 objects:v149 count:16];
        }

        while (v67);
      }

      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      deletedRecordIDs = [v17 deletedRecordIDs];
      v74 = [deletedRecordIDs countByEnumeratingWithState:&v103 objects:v148 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v104;
        do
        {
          for (nn = 0; nn != v75; ++nn)
          {
            if (*v104 != v76)
            {
              objc_enumerationMutation(deletedRecordIDs);
            }

            [(VCCKShortcutSyncService *)self syncEngineDidDeleteRecordWithID:*(*(&v103 + 1) + 8 * nn)];
          }

          v75 = [deletedRecordIDs countByEnumeratingWithState:&v103 objects:v148 count:16];
        }

        while (v75);
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      failedRecordDeletes = [v17 failedRecordDeletes];
      deletions = [failedRecordDeletes allKeys];

      v79 = [deletions countByEnumeratingWithState:&v99 objects:v147 count:16];
      if (v79)
      {
        v80 = v79;
        v81 = *v100;
        do
        {
          for (i1 = 0; i1 != v80; ++i1)
          {
            if (*v100 != v81)
            {
              objc_enumerationMutation(deletions);
            }

            v83 = *(*(&v99 + 1) + 8 * i1);
            failedRecordDeletes2 = [v17 failedRecordDeletes];
            v85 = [failedRecordDeletes2 objectForKey:v83];
            [(VCCKShortcutSyncService *)self syncEngineFailedToDeleteRecordWithID:v83 error:v85];
          }

          v80 = [deletions countByEnumeratingWithState:&v99 objects:v147 count:16];
        }

        while (v80);
      }

LABEL_125:

LABEL_126:
      break;
  }

LABEL_127:
}

- (id)fetchCloudKitRecordIDsForAllVisibleWorkflows
{
  database = [(VCCKShortcutSyncService *)self database];
  sortedVisibleWorkflowsByName = [database sortedVisibleWorkflowsByName];
  descriptors = [sortedVisibleWorkflowsByName descriptors];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__VCCKShortcutSyncService_fetchCloudKitRecordIDsForAllVisibleWorkflows__block_invoke;
  v8[3] = &unk_2788FE7B0;
  v8[4] = self;
  v6 = [descriptors if_map:v8];

  return v6;
}

id __71__VCCKShortcutSyncService_fetchCloudKitRecordIDsForAllVisibleWorkflows__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 cloudKitWorkflowClass];
  v6 = [*(a1 + 32) shortcutsZoneID];
  v7 = [v4 identifier];

  v8 = [v5 recordIDWithZoneID:v6 workflowID:v7];

  return v8;
}

- (void)databaseDidChange:(id)change modified:(id)modified inserted:(id)inserted removed:(id)removed
{
  v28 = *MEMORY[0x277D85DE8];
  modifiedCopy = modified;
  insertedCopy = inserted;
  removedCopy = removed;
  v12 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v21 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]";
    v22 = 2114;
    v23 = modifiedCopy;
    v24 = 2114;
    v25 = insertedCopy;
    v26 = 2114;
    v27 = removedCopy;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_INFO, "%s Received database change: modified = %{public}@, inserted = %{public}@, removed = %{public}@", buf, 0x2Au);
  }

  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__VCCKShortcutSyncService_databaseDidChange_modified_inserted_removed___block_invoke;
  v16[3] = &unk_2788FE788;
  v16[4] = self;
  v17 = modifiedCopy;
  v18 = insertedCopy;
  v19 = removedCopy;
  v13 = removedCopy;
  v14 = insertedCopy;
  v15 = modifiedCopy;
  VCCKPerformBlockInsideAutoreleasePoolInTransaction(@"VCCKShortcutSyncService.databaseResultChange", v16);
}

void __71__VCCKShortcutSyncService_databaseDidChange_modified_inserted_removed___block_invoke(id *a1)
{
  v139 = *MEMORY[0x277D85DE8];
  v105 = objc_opt_new();
  v104 = objc_opt_new();
  v106 = [a1[4] shortcutsZoneID];
  v102 = objc_opt_new();
  v103 = objc_opt_new();
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v2 = a1[5];
  v3 = [v2 countByEnumeratingWithState:&v124 objects:v138 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v125;
    *&v4 = 136315650;
    v98 = v4;
    v99 = v2;
    obj = *v125;
    do
    {
      v7 = 0;
      do
      {
        if (*v125 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v124 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        [*(a1[4] + 6) logDatabaseModify:v8 value:0];
        if (![v8 objectType])
        {
          v10 = [v8 identifier];
          v11 = v103;
LABEL_18:
          [v11 addObject:{v10, v98}];
          goto LABEL_30;
        }

        if ([v8 objectType] == 2)
        {
          if ([a1[4] coherenceSyncEnabled])
          {
            v10 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s Received database change for collections but skipping sync because coherence sync is enabled", buf, 0xCu);
            }

            goto LABEL_30;
          }

          v10 = [v8 identifier];
          v11 = v102;
          goto LABEL_18;
        }

        if ([v8 objectType] == 9)
        {
          v12 = MEMORY[0x277D7C1E8];
          v13 = [v8 identifier];
          v10 = [v12 recordIDWithZoneID:v106 identifier:v13];

          v14 = [MEMORY[0x277D7C1E8] identifierForRecordID:v10];
          v15 = [a1[4] database];
          v16 = [v15 autoShortcutsPreferencesForIdentifier:v14 error:0];

          v17 = [v16 lastSyncedHash];
          v18 = [v16 computedSyncHash];
          v19 = getWFCloudKitSyncLogObject();
          v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
          if (v17 == v18)
          {
            if (v20)
            {
              *buf = 136315138;
              v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Received database change for auto shortcuts preferences but the sync hashes remain the same, skipping sync up", buf, 0xCu);
            }
          }

          else
          {
            if (v20)
            {
              *buf = 136315138;
              v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Auto shortcuts preferences changed in the database; adding record id to save", buf, 0xCu);
            }

            [v105 addObject:v10];
          }

          v2 = v99;
          v6 = obj;

          goto LABEL_29;
        }

        if ([v8 objectType] == 10 && objc_msgSend(a1[4], "coherenceSyncEnabled"))
        {
          v21 = [a1[4] database];
          v123 = 0;
          v14 = [v21 recordWithDescriptor:v8 error:&v123];
          v10 = v123;

          if (v14)
          {
            v22 = [v14 lastSyncedHash];
            v23 = [v14 syncHash];
            v24 = getWFCloudKitSyncLogObject();
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_INFO);
            if (v22 == v23)
            {
              if (v25)
              {
                *buf = 136315138;
                v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
                _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_INFO, "%s Received database change for library but the sync hashes remain the same, skipping sync up", buf, 0xCu);
              }
            }

            else
            {
              if (v25)
              {
                *buf = 136315138;
                v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
                _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_INFO, "%s Library changed in the database; adding record id to save", buf, 0xCu);
              }

              v26 = MEMORY[0x277D7C210];
              v27 = [v8 identifier];
              v24 = [v26 recordIDWithZoneID:v106 libraryIdentifier:v27];

              [v105 addObject:v24];
            }

            v2 = v99;
          }

          else
          {
            v24 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
            {
              *buf = v98;
              v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              v134 = 2114;
              v135 = v10;
              v136 = 2112;
              v137 = v8;
              _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_FAULT, "%s Failed to load WFLibraryRecord from descriptor: %{public}@, descriptor = %@", buf, 0x20u);
            }
          }

          v6 = obj;

LABEL_29:
LABEL_30:
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v5 != v7);
      v28 = [v2 countByEnumeratingWithState:&v124 objects:v138 count:16];
      v5 = v28;
    }

    while (v28);
  }

  v121 = 0u;
  v122 = 0u;
  v119 = 0u;
  v120 = 0u;
  v29 = a1[6];
  v30 = [v29 countByEnumeratingWithState:&v119 objects:v131 count:16];
  if (!v30)
  {
    goto LABEL_68;
  }

  v31 = v30;
  v32 = *v120;
  do
  {
    v33 = 0;
    do
    {
      if (*v120 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v119 + 1) + 8 * v33);
      v35 = objc_autoreleasePoolPush();
      [*(a1[4] + 6) logDatabaseInsert:v34 value:0];
      if (![v34 objectType])
      {
        v36 = [v34 identifier];
        v37 = v103;
        goto LABEL_55;
      }

      if ([v34 objectType] == 2)
      {
        if ([a1[4] coherenceSyncEnabled])
        {
          v36 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
            _os_log_impl(&dword_23103C000, v36, OS_LOG_TYPE_INFO, "%s Received database change for collections but skipping sync because coherence sync is enabled", buf, 0xCu);
          }

          goto LABEL_56;
        }

        v36 = [v34 identifier];
        v37 = v102;
LABEL_55:
        [v37 addObject:{v36, v98}];
LABEL_56:

        goto LABEL_57;
      }

      if ([v34 objectType] == 9)
      {
        v38 = MEMORY[0x277D7C1E8];
        v39 = [v34 identifier];
        v36 = [v38 recordIDWithZoneID:v106 identifier:v39];

        v37 = v105;
        goto LABEL_55;
      }

      if ([v34 objectType] == 10 && objc_msgSend(a1[4], "coherenceSyncEnabled"))
      {
        v40 = MEMORY[0x277D7C210];
        v41 = [v34 identifier];
        v36 = [v40 recordIDWithZoneID:v106 libraryIdentifier:v41];

        [v105 addObject:v36];
        v42 = [a1[4] database];
        v43 = [v42 recordWithDescriptor:v34 properties:0 error:0];

        if (v43)
        {
          v44 = [v43 cloudKitRecordMetadata];

          if (!v44)
          {
            v45 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
            {
              *buf = 136315138;
              v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
              _os_log_impl(&dword_23103C000, v45, OS_LOG_TYPE_INFO, "%s About to upload the library to CloudKit for the first time. Uploading all shortcut records to migrate to the Shortcut_v2 record", buf, 0xCu);
            }

            v46 = [a1[4] fetchCloudKitRecordIDsForAllVisibleWorkflows];
            [v105 addObjectsFromArray:v46];
          }
        }

        goto LABEL_56;
      }

LABEL_57:
      objc_autoreleasePoolPop(v35);
      ++v33;
    }

    while (v31 != v33);
    v47 = [v29 countByEnumeratingWithState:&v119 objects:v131 count:16];
    v31 = v47;
  }

  while (v47);
LABEL_68:

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v48 = a1[7];
  v49 = [v48 countByEnumeratingWithState:&v115 objects:v130 count:16];
  if (!v49)
  {
    goto LABEL_91;
  }

  v50 = v49;
  v51 = *v116;
  while (2)
  {
    v52 = 0;
    while (2)
    {
      if (*v116 != v51)
      {
        objc_enumerationMutation(v48);
      }

      v53 = *(*(&v115 + 1) + 8 * v52);
      v54 = objc_autoreleasePoolPush();
      [*(a1[4] + 6) logDatabaseRemove:v53];
      if (![v53 objectType])
      {
        v55 = [v53 identifier];
        v56 = v103;
        goto LABEL_83;
      }

      if ([v53 objectType] != 2)
      {
        if ([v53 objectType] == 9)
        {
          v57 = MEMORY[0x277D7C1E8];
          v58 = [v53 identifier];
          v59 = [v57 recordIDWithZoneID:v106 identifier:v58];
        }

        else
        {
          if ([v53 objectType] != 10 || !objc_msgSend(a1[4], "coherenceSyncEnabled"))
          {
            goto LABEL_85;
          }

          v60 = MEMORY[0x277D7C210];
          v58 = [v53 identifier];
          v59 = [v60 recordIDWithZoneID:v106 libraryIdentifier:v58];
        }

        v55 = v59;

        v56 = v104;
LABEL_83:
        [v56 addObject:{v55, v98}];
        goto LABEL_84;
      }

      if (![a1[4] coherenceSyncEnabled])
      {
        v55 = [v53 identifier];
        v56 = v102;
        goto LABEL_83;
      }

      v55 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v133 = "[VCCKShortcutSyncService databaseDidChange:modified:inserted:removed:]_block_invoke";
        _os_log_impl(&dword_23103C000, v55, OS_LOG_TYPE_INFO, "%s Received database change for collections but skipping sync because coherence sync is enabled", buf, 0xCu);
      }

LABEL_84:

LABEL_85:
      objc_autoreleasePoolPop(v54);
      if (v50 != ++v52)
      {
        continue;
      }

      break;
    }

    v61 = [v48 countByEnumeratingWithState:&v115 objects:v130 count:16];
    v50 = v61;
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_91:

  if (([a1[4] coherenceSyncEnabled] & 1) == 0)
  {
    v113 = 0u;
    v114 = 0u;
    v111 = 0u;
    v112 = 0u;
    obja = v102;
    v62 = [obja countByEnumeratingWithState:&v111 objects:v129 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v112;
      do
      {
        for (i = 0; i != v63; ++i)
        {
          if (*v112 != v64)
          {
            objc_enumerationMutation(obja);
          }

          v66 = *(*(&v111 + 1) + 8 * i);
          v67 = [MEMORY[0x277D7C1F8] recordIDWithZoneID:v106 collectionIdentifier:{v66, v98}];
          v68 = [a1[4] database];
          v69 = [v68 desiredFolderSyncOperationForCollection:v66];

          v70 = [v69 operationType];
          v71 = v105;
          if (v70 == 1 || (v72 = [v69 operationType], v71 = v104, v72 == 2))
          {
            [v71 addObject:v67];
          }

          v73 = [a1[4] logger];
          [v73 logDesiredSyncOperationWithName:@"folder sync" operation:v69 identifier:v66];

          v74 = [MEMORY[0x277D7C1F0] recordIDWithZoneID:v106 collectionIdentifier:v66];
          v75 = [a1[4] database];
          v76 = [v75 desiredOrderingSyncOperationForCollection:v66];

          v77 = [v76 operationType];
          v78 = v105;
          if (v77 == 1 || (v79 = [v76 operationType], v78 = v104, v79 == 2))
          {
            [v78 addObject:v74];
          }

          v80 = [a1[4] logger];
          [v80 logDesiredSyncOperationWithName:@"ordering sync" operation:v76 identifier:v66];
        }

        v63 = [obja countByEnumeratingWithState:&v111 objects:v129 count:16];
      }

      while (v63);
    }
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v81 = v103;
  v82 = [v81 countByEnumeratingWithState:&v107 objects:v128 count:16];
  if (v82)
  {
    v83 = v82;
    v84 = *v108;
    do
    {
      for (j = 0; j != v83; ++j)
      {
        if (*v108 != v84)
        {
          objc_enumerationMutation(v81);
        }

        v86 = *(*(&v107 + 1) + 8 * j);
        v87 = [objc_msgSend(a1[4] cloudKitWorkflowClass];
        v88 = [a1[4] database];
        v89 = [v88 desiredSyncOperationForWorkflow:v86];

        v90 = [v89 operationType];
        v91 = v105;
        if (v90 == 1 || (v92 = [v89 operationType], v91 = v104, v92 == 2))
        {
          [v91 addObject:v87];
        }

        v93 = [a1[4] logger];
        [v93 logDesiredSyncOperationWithName:@"shortcut sync" operation:v89 identifier:v86];
      }

      v83 = [v81 countByEnumeratingWithState:&v107 objects:v128 count:16];
    }

    while (v83);
  }

  v94 = [v104 array];
  [v105 removeObjectsInArray:v94];

  v95 = a1[4];
  v96 = [v105 array];
  v97 = [v104 array];
  [v95 addRecordIDsToSave:v96 recordIDsToDelete:v97];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (VCCKShortcutSyncServiceUserDefaultsChangedContext == context)
  {
    if (([pathCopy isEqualToString:*MEMORY[0x277D7D078]] & 1) != 0 || objc_msgSend(pathCopy, "isEqualToString:", *MEMORY[0x277D7CC08]))
    {
      [(VCCKShortcutSyncService *)self sendSyncFlagsIfNeeded];
    }
  }

  else if (VCCKShortcutSyncServiceApplicationVisibilityChangedContext == context)
  {
    applicationObserver = [(VCCKShortcutSyncService *)self applicationObserver];
    isApplicationVisible = [applicationObserver isApplicationVisible];

    v15 = getWFCloudKitSyncLogObject();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    if (isApplicationVisible)
    {
      if (v16)
      {
        *buf = 136315138;
        v20 = "[VCCKShortcutSyncService observeValueForKeyPath:ofObject:change:context:]";
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Application moved to foreground, performing immediate sync", buf, 0xCu);
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __74__VCCKShortcutSyncService_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v18[3] = &unk_2788FEEC0;
      v18[4] = self;
      [(VCCKShortcutSyncService *)self fetchChangesInShortcutsZoneWithCompletion:v18];
    }

    else
    {
      if (v16)
      {
        *buf = 136315138;
        v20 = "[VCCKShortcutSyncService observeValueForKeyPath:ofObject:change:context:]";
        _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Application no longer in foreground.", buf, 0xCu);
      }
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = VCCKShortcutSyncService;
    [(VCCKShortcutSyncService *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)startWithCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  database = [(VCCKShortcutSyncService *)self database];
  syncToken = [database syncToken];
  syncEngineMetadata = [syncToken syncEngineMetadata];

  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "[VCCKShortcutSyncService startWithCompletionHandler:]";
    v31 = 2048;
    v32 = [syncEngineMetadata length];
    _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Loaded sync engine metadata, length = %lu", buf, 0x16u);
  }

  if ([syncEngineMetadata length])
  {
    v28 = 0;
    v9 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:syncEngineMetadata error:&v28];
    v10 = v28;
    if (v10)
    {
      v11 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[VCCKShortcutSyncService startWithCompletionHandler:]";
        v31 = 2112;
        v32 = v10;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_ERROR, "%s Failed to unarchive state serialization: %@", buf, 0x16u);
      }
    }

    else
    {
      if (v9)
      {
        v10 = 0;
        goto LABEL_16;
      }

      v12 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v30 = "[VCCKShortcutSyncService startWithCompletionHandler:]";
        _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_DEBUG, "%s Migrating from old sync engine metadata blob to new sync engine state serialization", buf, 0xCu);
      }

      v9 = [objc_alloc(MEMORY[0x277CBC758]) initWithDeprecatedData:syncEngineMetadata];
      v13 = [MEMORY[0x277CCAAB0] wf_securelyArchivedDataWithRootObject:v9];
      database2 = [(VCCKShortcutSyncService *)self database];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __54__VCCKShortcutSyncService_startWithCompletionHandler___block_invoke;
      v26[3] = &unk_2788FE6E8;
      v27 = v13;
      v11 = v13;
      [database2 updateSyncTokenWithBlock:v26];
    }
  }

  else
  {
    v10 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v30 = "[VCCKShortcutSyncService startWithCompletionHandler:]";
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Sync engine metadata is empty, initializing configuration with nil state serialization", buf, 0xCu);
    }

    v9 = 0;
  }

LABEL_16:

  v15 = objc_alloc(MEMORY[0x277CBC6F0]);
  container = [(VCCKShortcutSyncService *)self container];
  privateCloudDatabase = [container privateCloudDatabase];
  v18 = [v15 initWithDatabase:privateCloudDatabase stateSerialization:v9 delegate:self];

  [v18 setApsMachServiceName:@"com.apple.aps.siriactionsd"];
  if (([(VCCKShortcutSyncService *)self debuggingOptions]& 1) != 0)
  {
    [v18 setAutomaticallySync:0];
  }

  v19 = [objc_alloc(MEMORY[0x277CBC6E8]) initWithConfiguration:v18];
  [(VCCKShortcutSyncService *)self setSyncEngine:v19];

  database3 = [(VCCKShortcutSyncService *)self database];
  [database3 addObjectObserver:self];

  [(VCCKShortcutSyncService *)self startObservingUserDefaults];
  applicationObserver = [(VCCKShortcutSyncService *)self applicationObserver];
  [applicationObserver addObserver:self forKeyPath:@"applicationVisible" options:0 context:VCCKShortcutSyncServiceApplicationVisibilityChangedContext];

  objc_initWeak(buf, self);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __54__VCCKShortcutSyncService_startWithCompletionHandler___block_invoke_252;
  v23[3] = &unk_2788FE760;
  objc_copyWeak(&v25, buf);
  v22 = handlerCopy;
  v24 = v22;
  [(VCCKShortcutSyncService *)self fetchChangesInShortcutsZoneWithCompletion:v23];

  objc_destroyWeak(&v25);
  objc_destroyWeak(buf);
}

void __54__VCCKShortcutSyncService_startWithCompletionHandler___block_invoke_252(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  [WeakRetained sendChangedWorkflows];
  v6 = [WeakRetained database];
  v7 = [v6 coherenceSyncEnabled];

  if (v7)
  {
    [WeakRetained sendLibraryIfNeeded];
  }

  else
  {
    [WeakRetained sendChangedFoldersAndCollections];
  }

  [WeakRetained sendSyncFlagsIfNeeded];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__VCCKShortcutSyncService_startWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_2789001E0;
  v9 = *(a1 + 32);
  [WeakRetained modifyPendingChangesInShortcutsZoneWithCompletion:v8];

  objc_autoreleasePoolPop(v5);
}

- (void)stopObservingUserDefaults
{
  v25 = *MEMORY[0x277D85DE8];
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = WFUserDefaultsKeysToObserve();
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [workflowUserDefaults removeObserver:self forKeyPath:*(*(&v19 + 1) + 8 * v8++) context:VCCKShortcutSyncServiceUserDefaultsChangedContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  systemShortcutsUserDefaults = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = WFSystemUserDefaultsKeysToObserve();
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [systemShortcutsUserDefaults removeObserver:self forKeyPath:*(*(&v15 + 1) + 8 * v14++) context:{VCCKShortcutSyncServiceUserDefaultsChangedContext, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)startObservingUserDefaults
{
  v25 = *MEMORY[0x277D85DE8];
  workflowUserDefaults = [MEMORY[0x277CBEBD0] workflowUserDefaults];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = WFUserDefaultsKeysToObserve();
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [workflowUserDefaults addObserver:self forKeyPath:*(*(&v19 + 1) + 8 * v8++) options:0 context:VCCKShortcutSyncServiceUserDefaultsChangedContext];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  systemShortcutsUserDefaults = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = WFSystemUserDefaultsKeysToObserve();
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [systemShortcutsUserDefaults addObserver:self forKeyPath:*(*(&v15 + 1) + 8 * v14++) options:0 context:{VCCKShortcutSyncServiceUserDefaultsChangedContext, v15}];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)handleUnknownItemErrorForRecord:(id)record
{
  v71 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    recordID = [recordCopy recordID];
    *buf = 136315650;
    v66 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
    v67 = 2114;
    v68 = recordID;
    v69 = 2112;
    v70 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorUnknownItem error for record with identifier %{public}@, record = %@", buf, 0x20u);
  }

  recordType = [recordCopy recordType];
  recordType2 = [MEMORY[0x277D7C1F0] recordType];
  if ([recordType isEqualToString:recordType2])
  {

    goto LABEL_6;
  }

  recordType3 = [recordCopy recordType];
  recordType4 = [MEMORY[0x277D7C1A0] recordType];
  v11 = [recordType3 isEqualToString:recordType4];

  if (!v11)
  {
    recordType5 = [recordCopy recordType];
    recordType6 = [MEMORY[0x277D7C228] recordType];
    v22 = [recordType5 isEqualToString:recordType6];

    if (v22)
    {
      database = [(VCCKShortcutSyncService *)self database];
      [database updateSyncTokenWithBlock:&__block_literal_global_246];

      [(VCCKShortcutSyncService *)self sendSyncFlagsIfNeeded];
      goto LABEL_13;
    }

    recordType7 = [recordCopy recordType];
    recordType8 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] recordType];
    v26 = [recordType7 isEqualToString:recordType8];

    if (v26)
    {
      cloudKitWorkflowClass = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
      recordID2 = [recordCopy recordID];
      recordID9 = [(objc_class *)cloudKitWorkflowClass workflowIdentifierForRecordID:recordID2];

      database2 = [(VCCKShortcutSyncService *)self database];
      [database2 setCloudKitMetadata:0 forWorkflowRecordWithIdentifier:recordID9 error:0];

      recordID3 = [recordCopy recordID];
      v63 = recordID3;
      v17 = MEMORY[0x277CBEA60];
      v18 = &v63;
LABEL_10:
      v19 = [v17 arrayWithObjects:v18 count:1];
      [(VCCKShortcutSyncService *)self addRecordIDsToSave:v19 recordIDsToDelete:0];

LABEL_11:
LABEL_12:

      goto LABEL_13;
    }

    recordType9 = [recordCopy recordType];
    recordType10 = [MEMORY[0x277D7C1F8] recordType];
    v32 = [recordType9 isEqualToString:recordType10];

    if (v32)
    {
      v33 = MEMORY[0x277D7C1F8];
      recordID4 = [recordCopy recordID];
      recordID9 = [v33 collectionIdentifierForRecordID:recordID4];

      if (!recordID9)
      {
        recordID3 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
        {
          recordID5 = [recordCopy recordID];
          *buf = 136315394;
          v66 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
          v67 = 2114;
          v68 = recordID5;
          _os_log_impl(&dword_23103C000, recordID3, OS_LOG_TYPE_ERROR, "%s Failed to get collection identifier from folder CKRecordID %{public}@", buf, 0x16u);
        }

        goto LABEL_11;
      }

      database3 = [(VCCKShortcutSyncService *)self database];
      [database3 setCloudKitMetadata:0 forFolderRecordWithIdentifier:recordID9 error:0];

      recordID3 = [recordCopy recordID];
      v62 = recordID3;
      v17 = MEMORY[0x277CBEA60];
      v18 = &v62;
      goto LABEL_10;
    }

    recordType11 = [recordCopy recordType];
    recordType12 = [MEMORY[0x277D7C1E8] recordType];
    v38 = [recordType11 isEqualToString:recordType12];

    if (v38)
    {
      v39 = MEMORY[0x277D7C1E8];
      recordID6 = [recordCopy recordID];
      recordID9 = [v39 identifierForRecordID:recordID6];

      if (recordID9)
      {
        database4 = [(VCCKShortcutSyncService *)self database];
        v59 = 0;
        v42 = [database4 autoShortcutsPreferencesForIdentifier:recordID9 error:&v59];
        v43 = v59;

        if (v42)
        {
          [v42 setCloudKitMetadata:0];
          database5 = [(VCCKShortcutSyncService *)self database];
          v58 = v43;
          v45 = [database5 updateAutoShortcutsPreferencesWithNewPreferences:v42 error:&v58];
          v46 = v58;

          if (v45)
          {
            recordID7 = [recordCopy recordID];
            v61 = recordID7;
            v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
            [(VCCKShortcutSyncService *)self addRecordIDsToSave:v48 recordIDsToDelete:0];
          }

          else
          {
            recordID7 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(recordID7, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v66 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
              v67 = 2112;
              v68 = v42;
              v69 = 2112;
              v70 = v46;
              _os_log_impl(&dword_23103C000, recordID7, OS_LOG_TYPE_ERROR, "%s Failed to update Auto Shortcuts Preferences (%@): %@", buf, 0x20u);
            }
          }

          v43 = v46;
        }

        else
        {
          recordID7 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(recordID7, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v66 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
            v67 = 2112;
            v68 = recordID9;
            v69 = 2112;
            v70 = v43;
            _os_log_impl(&dword_23103C000, recordID7, OS_LOG_TYPE_ERROR, "%s Failed to get Auto Shortcuts Preferences from identifier (%@): %@", buf, 0x20u);
          }
        }

        goto LABEL_12;
      }

      v55 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        recordID8 = [recordCopy recordID];
        *buf = 136315394;
        v66 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
        v67 = 2114;
        v68 = recordID8;
        v57 = "%s Failed to get preferences identifier from Auto Shortcuts Preferences CKRecordID %{public}@";
        goto LABEL_37;
      }
    }

    else
    {
      recordType13 = [recordCopy recordType];
      recordType14 = [MEMORY[0x277D7C210] recordType];
      if ([recordType13 isEqualToString:recordType14])
      {
        coherenceSyncEnabled = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];

        if (coherenceSyncEnabled)
        {
          database6 = [(VCCKShortcutSyncService *)self database];
          v53 = [_TtC14VoiceShortcuts26VCCKLibrarySyncCoordinator handleUnknownItemErrorForRecord:recordCopy database:database6 error:0];

          if (v53)
          {
            recordID9 = [recordCopy recordID];
            v60 = recordID9;
            recordID3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
            [(VCCKShortcutSyncService *)self addRecordIDsToSave:recordID3 recordIDsToDelete:0];
            goto LABEL_11;
          }

          v55 = getWFCloudKitSyncLogObject();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v66 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
            v67 = 2114;
            v68 = recordCopy;
            _os_log_impl(&dword_23103C000, v55, OS_LOG_TYPE_ERROR, "%s Failed to handle unknown item error for library record: %{public}@", buf, 0x16u);
          }

          goto LABEL_38;
        }
      }

      else
      {
      }

      v55 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        recordID8 = [recordCopy recordType];
        *buf = 136315394;
        v66 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
        v67 = 2114;
        v68 = recordID8;
        v57 = "%s Received unknown item error for CKRecord of unexpected type: %{public}@";
LABEL_37:
        _os_log_impl(&dword_23103C000, v55, OS_LOG_TYPE_ERROR, v57, buf, 0x16u);
      }
    }

LABEL_38:

    goto LABEL_13;
  }

LABEL_6:
  recordID10 = [recordCopy recordID];
  recordID9 = [(VCCKShortcutSyncService *)self collectionIdentifierForRecordID:recordID10];

  if (recordID9)
  {
    v14 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v66 = "[VCCKShortcutSyncService handleUnknownItemErrorForRecord:]";
      v67 = 2114;
      v68 = recordID9;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorUnknownItem for collection with identifier %{public}@", buf, 0x16u);
    }

    database7 = [(VCCKShortcutSyncService *)self database];
    [database7 setCloudKitMetadata:0 forOrderingRecordWithIdentifier:recordID9 error:0];

    recordID3 = [recordCopy recordID];
    v64 = recordID3;
    v17 = MEMORY[0x277CBEA60];
    v18 = &v64;
    goto LABEL_10;
  }

LABEL_13:
}

- (void)handleServerRecordChangedError:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CBBFE0]];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  userInfo2 = [errorCopy userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x277CBBFE8]];

  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  userInfo3 = [errorCopy userInfo];
  v14 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CBBFD8]];

  if (v14)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  recordType = [v8 recordType];
  recordType2 = [MEMORY[0x277D7C1F0] recordType];
  v19 = [recordType isEqualToString:recordType2];

  if (v19)
  {
    [(VCCKShortcutSyncService *)self handleSendWorkflowOrderingConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
  }

  else
  {
    recordType3 = [v8 recordType];
    recordType4 = [MEMORY[0x277D7C228] recordType];
    v22 = [recordType3 isEqualToString:recordType4];

    if (v22)
    {
      [(VCCKShortcutSyncService *)self handleSendSyncFlagsConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
    }

    else
    {
      recordType5 = [v8 recordType];
      recordType6 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] recordType];
      v25 = [recordType5 isEqualToString:recordType6];

      if (v25)
      {
        [(VCCKShortcutSyncService *)self handleSendWorkflowConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
      }

      else
      {
        recordType7 = [v8 recordType];
        recordType8 = [MEMORY[0x277D7C1F8] recordType];
        v28 = [recordType7 isEqualToString:recordType8];

        if (v28)
        {
          [(VCCKShortcutSyncService *)self handleSendFolderConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
        }

        else
        {
          recordType9 = [v8 recordType];
          recordType10 = [MEMORY[0x277D7C1E8] recordType];
          v31 = [recordType9 isEqualToString:recordType10];

          if (v31)
          {
            [(VCCKShortcutSyncService *)self handleSendAutoShortcutsPreferencesConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
          }

          else
          {
            recordType11 = [v8 recordType];
            recordType12 = [MEMORY[0x277D7C210] recordType];
            if ([recordType11 isEqualToString:recordType12])
            {
              coherenceSyncEnabled = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];

              if (coherenceSyncEnabled)
              {
                [(VCCKShortcutSyncService *)self handleSendLibraryConflictWithClientRecord:v8 serverRecord:v12 ancestorRecord:v16];
                goto LABEL_33;
              }
            }

            else
            {
            }

            v35 = getWFCloudKitSyncLogObject();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              recordType13 = [v8 recordType];
              v37 = 136315394;
              v38 = "[VCCKShortcutSyncService handleServerRecordChangedError:]";
              v39 = 2114;
              v40 = recordType13;
              _os_log_impl(&dword_23103C000, v35, OS_LOG_TYPE_ERROR, "%s Received record changed error for CKRecord of unexpected type: %{public}@", &v37, 0x16u);
            }
          }
        }
      }
    }
  }

LABEL_33:
}

- (void)handleSendFolderConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord
{
  v27 = *MEMORY[0x277D85DE8];
  serverRecordCopy = serverRecord;
  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[VCCKShortcutSyncService handleSendFolderConflictWithClientRecord:serverRecord:ancestorRecord:]";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent folder", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v8 withRecord:serverRecordCopy setNilValues:0];
  v9 = MEMORY[0x277D7C1F8];
  recordID = [serverRecordCopy recordID];
  v11 = [v9 collectionIdentifierForRecordID:recordID];

  if (v11)
  {
    database = [(VCCKShortcutSyncService *)self database];
    recordSystemFieldsData = [v8 recordSystemFieldsData];
    v19 = 0;
    v14 = [database setCloudKitMetadata:recordSystemFieldsData forFolderRecordWithIdentifier:v11 error:&v19];
    v15 = v19;

    if (v14)
    {
      recordID2 = [serverRecordCopy recordID];
      v20 = recordID2;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
      [(VCCKShortcutSyncService *)self addRecordIDsToSave:v17 recordIDsToDelete:0];
    }

    else
    {
      recordID2 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(recordID2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "[VCCKShortcutSyncService handleSendFolderConflictWithClientRecord:serverRecord:ancestorRecord:]";
        v23 = 2114;
        v24 = v11;
        v25 = 2114;
        v26 = v15;
        _os_log_impl(&dword_23103C000, recordID2, OS_LOG_TYPE_ERROR, "%s Failed to handle fetched folder record %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  else
  {
    v15 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      recordID3 = [serverRecordCopy recordID];
      *buf = 136315394;
      v22 = "[VCCKShortcutSyncService handleSendFolderConflictWithClientRecord:serverRecord:ancestorRecord:]";
      v23 = 2114;
      v24 = recordID3;
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Invalid folder record ID: %{public}@", buf, 0x16u);
    }
  }
}

- (void)handleSendWorkflowConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord
{
  v38 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  serverRecordCopy = serverRecord;
  ancestorRecordCopy = ancestorRecord;
  v11 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    recordChangeTag = [recordCopy recordChangeTag];
    recordChangeTag2 = [serverRecordCopy recordChangeTag];
    recordChangeTag3 = [ancestorRecordCopy recordChangeTag];
    *buf = 136315906;
    v31 = "[VCCKShortcutSyncService handleSendWorkflowConflictWithClientRecord:serverRecord:ancestorRecord:]";
    v32 = 2114;
    v33 = recordChangeTag;
    v34 = 2114;
    v35 = recordChangeTag2;
    v36 = 2114;
    v37 = recordChangeTag3;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent workflow, clientRecord.recordChangeTag = %{public}@, serverRecord.recordChangeTag = %{public}@, ancestorRecord.recordChangeTag = %{public}@", buf, 0x2Au);
  }

  recordChangeTag4 = [recordCopy recordChangeTag];

  if (recordChangeTag4)
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[VCCKShortcutSyncService handleSendWorkflowConflictWithClientRecord:serverRecord:ancestorRecord:]";
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_DEFAULT, "%s Server workflow record changed since last sync, trying to fetch changes in Shortcuts zone to handle", buf, 0xCu);
    }

    [(VCCKShortcutSyncService *)self fetchChangesInShortcutsZone];
  }

  else
  {
    [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
    v17 = objc_opt_new();
    [MEMORY[0x277D7C200] hydrateItem:v17 withRecord:serverRecordCopy setNilValues:0];
    cloudKitWorkflowClass = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
    recordID = [serverRecordCopy recordID];
    v20 = [(objc_class *)cloudKitWorkflowClass workflowIdentifierForRecordID:recordID];

    v21 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v31 = "[VCCKShortcutSyncService handleSendWorkflowConflictWithClientRecord:serverRecord:ancestorRecord:]";
      _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_DEFAULT, "%s Persisting server CKRecord metadata and retrying upload of this change", buf, 0xCu);
    }

    database = [(VCCKShortcutSyncService *)self database];
    recordSystemFieldsData = [v17 recordSystemFieldsData];
    v28 = 0;
    v24 = [database setCloudKitMetadata:recordSystemFieldsData forWorkflowRecordWithIdentifier:v20 error:&v28];
    v25 = v28;

    if (v24)
    {
      recordID2 = [serverRecordCopy recordID];
      v29 = recordID2;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [(VCCKShortcutSyncService *)self addRecordIDsToSave:v27 recordIDsToDelete:0];
    }

    else
    {
      recordID2 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(recordID2, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v31 = "[VCCKShortcutSyncService handleSendWorkflowConflictWithClientRecord:serverRecord:ancestorRecord:]";
        v32 = 2114;
        v33 = v20;
        v34 = 2114;
        v35 = v25;
        _os_log_impl(&dword_23103C000, recordID2, OS_LOG_TYPE_ERROR, "%s Failed to handle update workflow record cloudkit metadata %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }
}

- (void)handleSendLibraryConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  serverRecordCopy = serverRecord;
  ancestorRecordCopy = ancestorRecord;
  v11 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    recordChangeTag = [recordCopy recordChangeTag];
    recordChangeTag2 = [serverRecordCopy recordChangeTag];
    recordChangeTag3 = [ancestorRecordCopy recordChangeTag];
    *buf = 136315906;
    v20 = "[VCCKShortcutSyncService handleSendLibraryConflictWithClientRecord:serverRecord:ancestorRecord:]";
    v21 = 2114;
    v22 = recordChangeTag;
    v23 = 2114;
    v24 = recordChangeTag2;
    v25 = 2114;
    v26 = recordChangeTag3;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent library, clientRecord.recordChangeTag = %{public}@, serverRecord.recordChangeTag = %{public}@, ancestorRecord.recordChangeTag = %{public}@", buf, 0x2Au);
  }

  syncEngine = [(VCCKShortcutSyncService *)self syncEngine];
  database = [syncEngine database];
  recordID = [serverRecordCopy recordID];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __97__VCCKShortcutSyncService_handleSendLibraryConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke;
  v18[3] = &unk_2788FE738;
  v18[4] = self;
  [database fetchRecordWithID:recordID completionHandler:v18];
}

void __97__VCCKShortcutSyncService_handleSendLibraryConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) database];
    v5 = [*(a1 + 32) logger];
    v14 = 0;
    v6 = [_TtC14VoiceShortcuts26VCCKLibrarySyncCoordinator handleServerRecordChangedErrorForRecord:v3 database:v4 logger:v5 error:&v14];
    v7 = v14;

    v8 = getWFCloudKitSyncLogObject();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v16 = "[VCCKShortcutSyncService handleSendLibraryConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
        v10 = "%s Successfully handled server record change for library";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEBUG;
        v13 = 12;
LABEL_9:
        _os_log_impl(&dword_23103C000, v11, v12, v10, buf, v13);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[VCCKShortcutSyncService handleSendLibraryConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
      v17 = 2114;
      v18 = v7;
      v10 = "%s Failed to handle CKErrorServerRecordChanged error for library: %{public}@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v16 = "[VCCKShortcutSyncService handleSendLibraryConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch server record for library", buf, 0xCu);
  }

LABEL_11:
}

- (void)handleSendAutoShortcutsPreferencesConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord
{
  v29 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  serverRecordCopy = serverRecord;
  ancestorRecordCopy = ancestorRecord;
  v11 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    recordChangeTag = [recordCopy recordChangeTag];
    recordChangeTag2 = [serverRecordCopy recordChangeTag];
    recordChangeTag3 = [ancestorRecordCopy recordChangeTag];
    *buf = 136315906;
    v22 = "[VCCKShortcutSyncService handleSendAutoShortcutsPreferencesConflictWithClientRecord:serverRecord:ancestorRecord:]";
    v23 = 2114;
    v24 = recordChangeTag;
    v25 = 2114;
    v26 = recordChangeTag2;
    v27 = 2114;
    v28 = recordChangeTag3;
    _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent auto shortcuts preferences, clientRecord.recordChangeTag = %{public}@, serverRecord.recordChangeTag = %{public}@, ancestorRecord.recordChangeTag = %{public}@", buf, 0x2Au);
  }

  syncEngine = [(VCCKShortcutSyncService *)self syncEngine];
  database = [syncEngine database];
  recordID = [serverRecordCopy recordID];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __114__VCCKShortcutSyncService_handleSendAutoShortcutsPreferencesConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke;
  v19[3] = &unk_2788FE710;
  v19[4] = self;
  v20 = serverRecordCopy;
  v18 = serverRecordCopy;
  [database fetchRecordWithID:recordID completionHandler:v19];
}

void __114__VCCKShortcutSyncService_handleSendAutoShortcutsPreferencesConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke(uint64_t a1, void *a2)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D7C1E8];
  v4 = a2;
  v5 = objc_alloc_init(v3);
  [MEMORY[0x277D7C200] hydrateItem:v5 withRecord:v4 setNilValues:0];

  v6 = [v5 appDescriptor];

  if (v6)
  {
    v7 = [*(a1 + 32) autoShortcutsPreferencesWithCloudKitAutoShortcutsPreferences:v5];
    v8 = [*(a1 + 32) database];
    v16 = 0;
    [v8 mergeAutoShortcutsPreferencesWithNewPreferences:v7 error:&v16];
    v9 = v16;

    if (v9)
    {
      v10 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v19 = "[VCCKShortcutSyncService handleSendAutoShortcutsPreferencesConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
        v20 = 2114;
        v21 = v9;
        _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to merge auto shortcuts preferences with error: %{public}@", buf, 0x16u);
      }
    }

    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) recordID];
    v17 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
    [v11 addRecordIDsToSave:v13 recordIDsToDelete:0];
  }

  else
  {
    v14 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v19 = "[VCCKShortcutSyncService handleSendAutoShortcutsPreferencesConflictWithClientRecord:serverRecord:ancestorRecord:]_block_invoke";
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_FAULT, "%s Server record for auto shortcuts preferences has a nil app descriptor", buf, 0xCu);
    }

    v15 = *(a1 + 32);
    v7 = [*(a1 + 40) recordID];
    v22[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    [v15 addRecordIDsToSave:0 recordIDsToDelete:v9];
  }
}

- (void)handleSendSyncFlagsConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord
{
  v15 = *MEMORY[0x277D85DE8];
  serverRecordCopy = serverRecord;
  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[VCCKShortcutSyncService handleSendSyncFlagsConflictWithClientRecord:serverRecord:ancestorRecord:]";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent sync flags", buf, 0xCu);
  }

  v8 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v8 withRecord:serverRecordCopy setNilValues:0];

  database = [(VCCKShortcutSyncService *)self database];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __99__VCCKShortcutSyncService_handleSendSyncFlagsConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke;
  v11[3] = &unk_2788FE6E8;
  v12 = v8;
  v10 = v8;
  [database updateSyncTokenWithBlock:v11];

  [(VCCKShortcutSyncService *)self sendSyncFlagsIfNeeded];
}

void __99__VCCKShortcutSyncService_handleSendSyncFlagsConflictWithClientRecord_serverRecord_ancestorRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordSystemFieldsData];
  [v3 setSyncFlagsCloudKitRecordMetadata:v4];
}

- (void)handleSendWorkflowOrderingConflictWithClientRecord:(id)record serverRecord:(id)serverRecord ancestorRecord:(id)ancestorRecord
{
  v13 = *MEMORY[0x277D85DE8];
  serverRecordCopy = serverRecord;
  v7 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[VCCKShortcutSyncService handleSendWorkflowOrderingConflictWithClientRecord:serverRecord:ancestorRecord:]";
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Handling CKErrorServerRecordChanged error for sent workflow ordering", buf, 0xCu);
  }

  if ([(VCCKShortcutSyncService *)self mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:serverRecordCopy])
  {
    recordID = [serverRecordCopy recordID];
    v10 = recordID;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(VCCKShortcutSyncService *)self addRecordIDsToSave:v9 recordIDsToDelete:0];
  }
}

- (void)handleFetchedDeletionOfAutoShortcutsPreferencesWithRecordID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v10 = "[VCCKShortcutSyncService handleFetchedDeletionOfAutoShortcutsPreferencesWithRecordID:]";
    v11 = 2114;
    v12 = dCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched deleted record with CKRecordID: %{public}@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277D7C1E8] identifierForRecordID:dCopy];
  database = [(VCCKShortcutSyncService *)self database];
  v8 = 0;
  [database deleteAutoShortcutsPreferencesForIdentifier:v6 error:&v8];
}

- (void)handleFetchedDeletionOfRecordWithID:(id)d
{
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
    v33 = 2114;
    v34 = dCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched deleted record with CKRecordID: %{public}@", buf, 0x16u);
  }

  v6 = [MEMORY[0x277D7C1F8] isFolderRecordID:dCopy];
  coherenceSyncEnabled = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];
  if (v6)
  {
    if (coherenceSyncEnabled)
    {
      v8 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v32 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
        v9 = "%s Ignoring deleted folder record, since coherence sync is enabled";
LABEL_22:
        v24 = v8;
        v25 = OS_LOG_TYPE_INFO;
        v26 = 12;
LABEL_23:
        _os_log_impl(&dword_23103C000, v24, v25, v9, buf, v26);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    v18 = [MEMORY[0x277D7C1F8] collectionIdentifierForRecordID:dCopy];
    if (!v18)
    {
      v8 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_34;
      }

      *buf = 136315394;
      v32 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
      v33 = 2114;
      v34 = dCopy;
      v9 = "%s Malformed folder identifier: %{public}@";
      v24 = v8;
      v25 = OS_LOG_TYPE_ERROR;
      v26 = 22;
      goto LABEL_23;
    }

    v8 = v18;
    database = [(VCCKShortcutSyncService *)self database];
    v11 = [database collectionWithIdentifier:v8];

    if (v11)
    {
      database2 = [(VCCKShortcutSyncService *)self database];
      v30 = 0;
      v21 = [database2 deleteReference:v11 tombstone:0 error:&v30];
      v17 = v30;

      if ((v21 & 1) == 0)
      {
        v22 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      goto LABEL_33;
    }

    v17 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_33;
    }

    *buf = 136315394;
    v32 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
    v33 = 2114;
    v34 = dCopy;
    v23 = "%s No local descriptor found for fetched folder deletion with CKRecordID %{public}@";
    goto LABEL_32;
  }

  if (!coherenceSyncEnabled || ([MEMORY[0x277D7C240] isShortcutV2RecordID:dCopy] & 1) != 0)
  {
    v8 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] workflowIdentifierForRecordID:dCopy];
    database3 = [(VCCKShortcutSyncService *)self database];
    v11 = [database3 referenceForWorkflowID:v8 includingTombstones:1];

    if (v11)
    {
      coherenceSyncEnabled2 = [(VCCKShortcutSyncService *)self coherenceSyncEnabled];
      database4 = [(VCCKShortcutSyncService *)self database];
      v14 = database4;
      if (coherenceSyncEnabled2)
      {
        identifier = [v11 identifier];
        v29 = 0;
        v16 = [v14 deleteWorkflowRecordWithIdentifier:identifier error:&v29];
        v17 = v29;

        if (v16)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v28 = 0;
        v27 = [database4 deleteReference:v11 tombstone:0 error:&v28];
        v17 = v28;

        if (v27)
        {
          goto LABEL_33;
        }
      }

      v22 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_26:
        *buf = 136315650;
        v32 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
        v33 = 2114;
        v34 = v17;
        v35 = 2112;
        v36 = v11;
        _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_ERROR, "%s Failed to delete descriptor for fetched deletion: %{public}@, localDescriptor = %@", buf, 0x20u);
      }

LABEL_27:

      goto LABEL_33;
    }

    v17 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_33:

      goto LABEL_34;
    }

    *buf = 136315394;
    v32 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
    v33 = 2114;
    v34 = dCopy;
    v23 = "%s No local descriptor found for fetched workflow or folder deletion with CKRecordID %{public}@";
LABEL_32:
    _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
    goto LABEL_33;
  }

  v8 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[VCCKShortcutSyncService handleFetchedDeletionOfRecordWithID:]";
    v9 = "%s Ignoring deleted shortcut v1 record, since coherence sync is enabled";
    goto LABEL_22;
  }

LABEL_34:
}

- (void)handleFetchedAutoShortcutsPreferencesRecord:(id)record
{
  v37 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[VCCKShortcutSyncService handleFetchedAutoShortcutsPreferencesRecord:]";
    v29 = 2112;
    v30 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling fetched auto shortcuts preferences record: %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D7C1E8]);
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:recordCopy setNilValues:0];
  v7 = MEMORY[0x277D7C1E8];
  recordID = [recordCopy recordID];
  v9 = [v7 identifierForRecordID:recordID];

  database = [(VCCKShortcutSyncService *)self database];
  v26 = 0;
  v11 = [database autoShortcutsPreferencesForIdentifier:v9 error:&v26];
  v12 = v26;

  cloudKitMetadata = [v11 cloudKitMetadata];
  v14 = recordCopy;
  if (cloudKitMetadata)
  {
    v15 = [MEMORY[0x277D7C200] recordFromSystemFieldsData:cloudKitMetadata error:0];
  }

  else
  {
    v15 = 0;
  }

  modificationDate = [v15 modificationDate];
  modificationDate2 = [v14 modificationDate];
  v18 = modificationDate2;
  if (modificationDate && modificationDate2 && [modificationDate compare:modificationDate2] != -1)
  {
    v19 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 136316162;
      v28 = "VCCKCheckRemoteModificationDateNewerThanLocal";
      v29 = 2114;
      v30 = v18;
      v31 = 2114;
      v32 = modificationDate;
      v33 = 2112;
      v34 = v14;
      v35 = 2112;
      v36 = v15;
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_FAULT, "%s Remote record modification date %{public}@ is not greater than local record modification date %{public}@, remote record = %@, local record = %@", buf, 0x34u);
    }

    v20 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[VCCKShortcutSyncService handleFetchedAutoShortcutsPreferencesRecord:]";
      _os_log_impl(&dword_23103C000, v20, OS_LOG_TYPE_INFO, "%s Remote modification date is older than the one saved locally, skipping updating local auto shortcuts preferences", buf, 0xCu);
    }

    v21 = v12;
  }

  else
  {

    v22 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v28 = "[VCCKShortcutSyncService handleFetchedAutoShortcutsPreferencesRecord:]";
      _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_INFO, "%s Remote modification date is newer than the one saved locally, updating local auto shortcuts preferences", buf, 0xCu);
    }

    v20 = [(VCCKShortcutSyncService *)self autoShortcutsPreferencesWithCloudKitAutoShortcutsPreferences:v6];
    database2 = [(VCCKShortcutSyncService *)self database];
    v25 = v12;
    [database2 updateAutoShortcutsPreferencesWithNewPreferences:v20 error:&v25];
    v21 = v25;

    if (v21)
    {
      v24 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v28 = "[VCCKShortcutSyncService handleFetchedAutoShortcutsPreferencesRecord:]";
        v29 = 2114;
        v30 = v21;
        _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_ERROR, "%s Failed to save auto shortcuts preferences with error: %{public}@", buf, 0x16u);
      }
    }
  }
}

- (void)handleFetchedSyncFlagsRecord:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v12 = "[VCCKShortcutSyncService handleFetchedSyncFlagsRecord:]";
    v13 = 2114;
    v14 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling fetched sync flags CKRecord: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:recordCopy setNilValues:0];
  database = [(VCCKShortcutSyncService *)self database];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__VCCKShortcutSyncService_handleFetchedSyncFlagsRecord___block_invoke;
  v9[3] = &unk_2788FE6E8;
  v8 = v6;
  v10 = v8;
  [database updateSyncTokenWithBlock:v9];

  if ([v8 migratedVoiceShortcuts])
  {
    [MEMORY[0x277D7C230] setVoiceShortcutMigrationDidSync:1];
  }

  if ([v8 defaultShortcutsVersion])
  {
    [MEMORY[0x277D7C230] setDefaultShortcutsVersion:{objc_msgSend(v8, "defaultShortcutsVersion")}];
  }

  [MEMORY[0x277D7C230] setLastSyncedFlagsHash:{objc_msgSend(MEMORY[0x277D7C230], "syncedFlagsHash")}];
}

void __56__VCCKShortcutSyncService_handleFetchedSyncFlagsRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordSystemFieldsData];
  [v3 setSyncFlagsCloudKitRecordMetadata:v4];
}

- (void)handleFetchedFolderRecord:(id)record
{
  v25 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    recordID = [recordCopy recordID];
    *buf = 136315650;
    v20 = "[VCCKShortcutSyncService handleFetchedFolderRecord:]";
    v21 = 2114;
    v22 = recordID;
    v23 = 2112;
    v24 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched folder CKRecord with CKRecordID %{public}@, CKRecord = %@", buf, 0x20u);
  }

  v7 = MEMORY[0x277D7C1F8];
  recordID2 = [recordCopy recordID];
  v9 = [v7 collectionIdentifierForRecordID:recordID2];

  if (v9)
  {
    v10 = objc_opt_new();
    [MEMORY[0x277D7C200] hydrateItem:v10 withRecord:recordCopy setNilValues:0];
    database = [(VCCKShortcutSyncService *)self database];
    name = [v10 name];
    icon = [v10 icon];
    encryptedSchemaVersion = [v10 encryptedSchemaVersion];
    recordSystemFieldsData = [v10 recordSystemFieldsData];
    v18 = 0;
    LOBYTE(encryptedSchemaVersion) = [database handleFetchedFolderRecordWithIdentifier:v9 name:name icon:icon encryptedSchemaVersion:encryptedSchemaVersion cloudKitMetadata:recordSystemFieldsData error:&v18];
    recordID3 = v18;

    if ((encryptedSchemaVersion & 1) == 0)
    {
      v17 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v20 = "[VCCKShortcutSyncService handleFetchedFolderRecord:]";
        v21 = 2114;
        v22 = v9;
        v23 = 2114;
        v24 = recordID3;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to handle fetched folder record %{public}@: %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_10;
  }

  v10 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    recordID3 = [recordCopy recordID];
    *buf = 136315394;
    v20 = "[VCCKShortcutSyncService handleFetchedFolderRecord:]";
    v21 = 2114;
    v22 = recordID3;
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to retrieve collection identifier from folder CKRecord, CKRecordID = %{public}@", buf, 0x16u);
LABEL_10:
  }
}

- (void)handleFetchedWorkflowRecord:(id)record
{
  v34 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    recordID = [recordCopy recordID];
    *buf = 136315650;
    v29 = "[VCCKShortcutSyncService handleFetchedWorkflowRecord:]";
    v30 = 2114;
    v31 = recordID;
    v32 = 2112;
    v33 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched workflow CKRecord with CKRecordID %{public}@, CKRecord = %@", buf, 0x20u);
  }

  [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
  v7 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v7 withRecord:recordCopy setNilValues:0];
  v27 = 0;
  v8 = [v7 recordRepresentationWithError:&v27];
  v9 = v27;
  if (v8)
  {
    cloudKitWorkflowClass = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
    recordID2 = [recordCopy recordID];
    v12 = [(objc_class *)cloudKitWorkflowClass workflowIdentifierForRecordID:recordID2];

    database = [(VCCKShortcutSyncService *)self database];
    recordChangeTag = [recordCopy recordChangeTag];
    modificationDate = [recordCopy modificationDate];
    v26 = v9;
    v16 = [database handleFetchedWorkflowRecord:v8 identifier:v12 recordChangeTag:recordChangeTag modificationDate:modificationDate error:&v26];
    v25 = v26;

    if (v16)
    {
      if ([v16 resultType] == 3)
      {
        logger = self->_logger;
        v18 = MEMORY[0x277CCACA8];
        reason = [v16 reason];
        v20 = [v18 stringWithFormat:@"conflicted workflow: %@ (reason: %@)", v12, reason];
        [(WFCloudKitSyncEventLogger *)logger logEvent:v20];

LABEL_12:
        v21 = v25;
        goto LABEL_13;
      }

      v21 = v25;
      if ([v16 resultType])
      {
        goto LABEL_14;
      }

      v22 = self->_logger;
      v23 = MEMORY[0x277CCACA8];
      reason = [v16 reason];
      v24 = [v23 stringWithFormat:@"ignored workflow: %@ (reason: %@)", v12, reason];
      [(WFCloudKitSyncEventLogger *)v22 logEvent:v24];
    }

    else
    {
      reason = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(reason, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }

      *buf = 136315394;
      v29 = "[VCCKShortcutSyncService handleFetchedWorkflowRecord:]";
      v30 = 2114;
      v21 = v25;
      v31 = v25;
      _os_log_impl(&dword_23103C000, reason, OS_LOG_TYPE_ERROR, "%s Failed to handle fetched workflow record: %{public}@", buf, 0x16u);
    }

LABEL_13:

LABEL_14:
    goto LABEL_15;
  }

  v12 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v29 = "[VCCKShortcutSyncService handleFetchedWorkflowRecord:]";
    v30 = 2114;
    v31 = v9;
    _os_log_impl(&dword_23103C000, v12, OS_LOG_TYPE_ERROR, "%s Failed to create WFWorkflowRecord from WFCloudKitWorkflow: %{public}@", buf, 0x16u);
  }

  v21 = v9;
LABEL_15:
}

- (void)handleFetchedLegacyOrderingRecord:(id)record
{
  v16 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v13 = "[VCCKShortcutSyncService handleFetchedLegacyOrderingRecord:]";
    v14 = 2114;
    v15 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched legacy ordering CKRecord: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:recordCopy setNilValues:0];
  collectionIdentifier = [v6 collectionIdentifier];

  if (collectionIdentifier)
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[VCCKShortcutSyncService handleFetchedLegacyOrderingRecord:]";
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Received legacy per-collection ordering CKRecord, ignoring", buf, 0xCu);
    }
  }

  else
  {
    database = [(VCCKShortcutSyncService *)self database];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __61__VCCKShortcutSyncService_handleFetchedLegacyOrderingRecord___block_invoke;
    v10[3] = &unk_2788FE6E8;
    v11 = v6;
    [database updateSyncTokenWithBlock:v10];

    v8 = v11;
  }
}

void __61__VCCKShortcutSyncService_handleFetchedLegacyOrderingRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 orderedWorkflowIDs];
  [v3 setLastOrdering:v4];
}

- (void)handleFetchedCollectionOrderingRecord:(id)record
{
  v10 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[VCCKShortcutSyncService handleFetchedCollectionOrderingRecord:]";
    v8 = 2114;
    v9 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling fetched collection ordering CKRecord: %{public}@", &v6, 0x16u);
  }

  [(VCCKShortcutSyncService *)self mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:recordCopy];
}

- (BOOL)mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:(id)record
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  recordID = [recordCopy recordID];
  v6 = [(VCCKShortcutSyncService *)self collectionIdentifierForRecordID:recordID];

  if (v6)
  {
    v19 = v6;
    v7 = objc_opt_new();
    [MEMORY[0x277D7C200] hydrateItem:v7 withRecord:recordCopy setNilValues:0];
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v22 = "[VCCKShortcutSyncService mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:]";
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Merging local ordering changes with remote ordering changes from %{public}@", buf, 0x16u);
    }

    database = [(VCCKShortcutSyncService *)self database];
    orderedWorkflowIDs = [v7 orderedWorkflowIDs];
    array = [orderedWorkflowIDs array];
    orderedFolderIDs = [v7 orderedFolderIDs];
    array2 = [orderedFolderIDs array];
    recordSystemFieldsData = [v7 recordSystemFieldsData];
    v20 = 0;
    v15 = [database handleFetchedOrderingRecordWithIdentifier:v19 shortcuts:array folders:array2 cloudKitMetadata:recordSystemFieldsData error:&v20];
    v16 = v20;

    if ((v15 & 1) == 0)
    {
      v17 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v22 = "[VCCKShortcutSyncService mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:]";
        v23 = 2114;
        v24 = recordCopy;
        v25 = 2114;
        v26 = v16;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to handle fetched ordering record collectionIdentifier %{public}@: %{public}@", buf, 0x20u);
      }
    }

    v6 = v19;
  }

  else
  {
    v7 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[VCCKShortcutSyncService mergeLocalOrderingChangesWithRemoteOrderingChangesFromOrderingRecord:]";
      v23 = 2114;
      v24 = recordCopy;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Malformed ordering record, missing collectionIdentifier: %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)handleDeletedRecordWithID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v20 = "[VCCKShortcutSyncService handleDeletedRecordWithID:]";
    v21 = 2114;
    v22 = dCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling deleted record CKRecord: %{public}@", buf, 0x16u);
  }

  if (![MEMORY[0x277D7C1F8] isFolderRecordID:dCopy])
  {
    v9 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] workflowIdentifierForRecordID:dCopy];
    database = [(VCCKShortcutSyncService *)self database];
    v11 = [database referenceForWorkflowID:v9 includingTombstones:1];

    if (v11)
    {
      if (![v11 isDeleted])
      {
        v16 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          name = [v11 name];
          *buf = 136315650;
          v20 = "[VCCKShortcutSyncService handleDeletedRecordWithID:]";
          v21 = 2112;
          v22 = name;
          v23 = 2112;
          v24 = v11;
          _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Sync engine has finished deleting workflow with name %@, but it is no longer a tombstone, so we're not deleting it, deletedWorkflowReference = %@", buf, 0x20u);
        }

        goto LABEL_22;
      }

      v9 = v11;
LABEL_10:
      database2 = [(VCCKShortcutSyncService *)self database];
      v18 = 0;
      v13 = [database2 deleteReference:v9 tombstone:0 error:&v18];
      recordName = v18;

      if ((v13 & 1) == 0)
      {
        v15 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v20 = "[VCCKShortcutSyncService handleDeletedRecordWithID:]";
          v21 = 2112;
          v22 = v9;
          v23 = 2114;
          v24 = recordName;
          _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_ERROR, "%s Failed to delete tombstone for descriptor = %@, error = %{public}@", buf, 0x20u);
        }
      }

      goto LABEL_18;
    }

LABEL_15:

    goto LABEL_16;
  }

  v6 = [MEMORY[0x277D7C1F8] collectionIdentifierForRecordID:dCopy];
  if (!v6)
  {
    v9 = 0;
    goto LABEL_15;
  }

  v7 = v6;
  database3 = [(VCCKShortcutSyncService *)self database];
  v9 = [database3 collectionWithIdentifier:v7];

  if (v9)
  {
    goto LABEL_10;
  }

LABEL_16:
  v9 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    recordName = [dCopy recordName];
    *buf = 136315394;
    v20 = "[VCCKShortcutSyncService handleDeletedRecordWithID:]";
    v21 = 2114;
    v22 = recordName;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_ERROR, "%s Unable to find descriptor to delete from record ID %{public}@", buf, 0x16u);
LABEL_18:
  }

LABEL_22:
}

- (void)handleSavedLibraryRecord:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    recordID = [recordCopy recordID];
    recordName = [recordID recordName];
    v11 = 136315394;
    v12 = "[VCCKShortcutSyncService handleSavedLibraryRecord:]";
    v13 = 2114;
    v14 = recordName;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling saved library record: %{public}@", &v11, 0x16u);
  }

  database = [(VCCKShortcutSyncService *)self database];
  v9 = [_TtC14VoiceShortcuts26VCCKLibrarySyncCoordinator handleSavedLibraryRecord:recordCopy database:database error:0];

  if (!v9)
  {
    v10 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "[VCCKShortcutSyncService handleSavedLibraryRecord:]";
      v13 = 2114;
      v14 = recordCopy;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_ERROR, "%s Failed to save library record: %{public}@", &v11, 0x16u);
    }
  }
}

- (void)handleSavedAutoShortcutsPreferencesRecord:(id)record
{
  v23 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[VCCKShortcutSyncService handleSavedAutoShortcutsPreferencesRecord:]";
    v21 = 2112;
    v22 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_DEFAULT, "%s Handling saved auto shortcuts preferences record: %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(MEMORY[0x277D7C1E8]);
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:recordCopy setNilValues:0];
  v7 = MEMORY[0x277D7C1E8];
  recordID = [recordCopy recordID];
  v9 = [v7 identifierForRecordID:recordID];

  database = [(VCCKShortcutSyncService *)self database];
  v18 = 0;
  v11 = [database autoShortcutsPreferencesForIdentifier:v9 error:&v18];
  v12 = v18;

  recordSystemFieldsData = [v6 recordSystemFieldsData];
  [v11 setCloudKitMetadata:recordSystemFieldsData];

  [v11 setLastSyncedHash:{objc_msgSend(v11, "computedSyncHash")}];
  database2 = [(VCCKShortcutSyncService *)self database];
  v17 = v12;
  [database2 updateAutoShortcutsPreferencesWithNewPreferences:v11 error:&v17];
  v15 = v17;

  if (v15)
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[VCCKShortcutSyncService handleSavedAutoShortcutsPreferencesRecord:]";
      v21 = 2114;
      v22 = v15;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Failed to save auto shortcuts preferences record with error: %{public}@", buf, 0x16u);
    }
  }
}

- (void)handleSavedSyncFlagsRecord:(id)record
{
  v15 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[VCCKShortcutSyncService handleSavedSyncFlagsRecord:]";
    v13 = 2114;
    v14 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling saved sync flags CKRecord: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:recordCopy setNilValues:0];
  database = [(VCCKShortcutSyncService *)self database];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__VCCKShortcutSyncService_handleSavedSyncFlagsRecord___block_invoke;
  v9[3] = &unk_2788FE6E8;
  v8 = v6;
  v10 = v8;
  [database updateSyncTokenWithBlock:v9];

  if ([v8 migratedVoiceShortcuts])
  {
    [MEMORY[0x277D7C230] setVoiceShortcutMigrationDidSync:1];
  }

  if ([v8 defaultShortcutsVersion])
  {
    [MEMORY[0x277D7C230] setDefaultShortcutsVersion:{objc_msgSend(v8, "defaultShortcutsVersion")}];
  }

  [MEMORY[0x277D7C230] setLastSyncedFlagsHash:{objc_msgSend(MEMORY[0x277D7C230], "syncedFlagsHash")}];
}

void __54__VCCKShortcutSyncService_handleSavedSyncFlagsRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 recordSystemFieldsData];
  [v3 setSyncFlagsCloudKitRecordMetadata:v4];
}

- (void)handleSavedFolderRecord:(id)record
{
  v27 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    recordID = [recordCopy recordID];
    *buf = 136315650;
    v22 = "[VCCKShortcutSyncService handleSavedFolderRecord:]";
    v23 = 2114;
    v24 = recordID;
    v25 = 2112;
    v26 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling saved folder CKRecord with CKRecordID %{public}@, folderRecord = %@", buf, 0x20u);
  }

  v7 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v7 withRecord:recordCopy setNilValues:0];
  v8 = MEMORY[0x277D7C1F8];
  recordID2 = [recordCopy recordID];
  v10 = [v8 collectionIdentifierForRecordID:recordID2];

  if (v10)
  {
    database = [(VCCKShortcutSyncService *)self database];
    name = [v7 name];
    icon = [v7 icon];
    encryptedSchemaVersion = [v7 encryptedSchemaVersion];
    recordSystemFieldsData = [v7 recordSystemFieldsData];
    v20 = 0;
    LOBYTE(encryptedSchemaVersion) = [database handleFetchedFolderRecordWithIdentifier:v10 name:name icon:icon encryptedSchemaVersion:encryptedSchemaVersion cloudKitMetadata:recordSystemFieldsData error:&v20];
    v16 = v20;

    if ((encryptedSchemaVersion & 1) == 0)
    {
      recordID3 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(recordID3, OS_LOG_TYPE_ERROR))
      {
LABEL_10:

        goto LABEL_11;
      }

      *buf = 136315394;
      v22 = "[VCCKShortcutSyncService handleSavedFolderRecord:]";
      v23 = 2114;
      v24 = v16;
      v18 = "%s Failed to handle saved folder record: %{public}@";
      v19 = recordID3;
LABEL_9:
      _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
      goto LABEL_10;
    }
  }

  else
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      recordID3 = [recordCopy recordID];
      *buf = 136315394;
      v22 = "[VCCKShortcutSyncService handleSavedFolderRecord:]";
      v23 = 2114;
      v24 = recordID3;
      v18 = "%s Invalid folder record ID: %{public}@";
      v19 = v16;
      goto LABEL_9;
    }
  }

LABEL_11:
}

- (void)handleSavedWorkflowRecord:(id)record
{
  v26 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    recordID = [recordCopy recordID];
    *buf = 136315650;
    v21 = "[VCCKShortcutSyncService handleSavedWorkflowRecord:]";
    v22 = 2114;
    v23 = recordID;
    v24 = 2112;
    v25 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling saved workflow CKRecord with CKRecordID %{public}@, workflowRecord = %@", buf, 0x20u);
  }

  [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
  v7 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v7 withRecord:recordCopy setNilValues:0];
  recordID2 = [recordCopy recordID];
  recordName = [recordID2 recordName];

  filesReferencedUntilSaved = [(VCCKShortcutSyncService *)self filesReferencedUntilSaved];
  [filesReferencedUntilSaved setObject:0 forKeyedSubscript:recordName];

  cloudKitWorkflowClass = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
  recordID3 = [recordCopy recordID];
  v13 = [(objc_class *)cloudKitWorkflowClass workflowIdentifierForRecordID:recordID3];

  database = [(VCCKShortcutSyncService *)self database];
  recordSystemFieldsData = [v7 recordSystemFieldsData];
  v19 = 0;
  v16 = [database handleUploadedWorkflowRecordWithIdentifier:v13 cloudKitMetadata:recordSystemFieldsData syncHash:objc_msgSend(v7 encryptedSchemaVersion:"cachedSyncHash") error:{objc_msgSend(v7, "encryptedSchemaVersion"), &v19}];
  v17 = v19;

  if ((v16 & 1) == 0)
  {
    v18 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[VCCKShortcutSyncService handleSavedWorkflowRecord:]";
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_ERROR, "%s Failed to handle saved workflow record: %{public}@", buf, 0x16u);
    }
  }
}

- (void)handleSavedWorkflowOrderingRecord:(id)record
{
  v25 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v22 = "[VCCKShortcutSyncService handleSavedWorkflowOrderingRecord:]";
    v23 = 2114;
    v24 = recordCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Handling saved workflow ordering CKRecord: %{public}@", buf, 0x16u);
  }

  v6 = objc_opt_new();
  [MEMORY[0x277D7C200] hydrateItem:v6 withRecord:recordCopy setNilValues:0];
  recordID = [recordCopy recordID];
  v8 = [(VCCKShortcutSyncService *)self collectionIdentifierForRecordID:recordID];

  if (v8)
  {
    v19 = recordCopy;
    database = [(VCCKShortcutSyncService *)self database];
    orderedWorkflowIDs = [v6 orderedWorkflowIDs];
    array = [orderedWorkflowIDs array];
    orderedFolderIDs = [v6 orderedFolderIDs];
    array2 = [orderedFolderIDs array];
    recordSystemFieldsData = [v6 recordSystemFieldsData];
    v20 = 0;
    v15 = [database handleFetchedOrderingRecordWithIdentifier:v8 shortcuts:array folders:array2 cloudKitMetadata:recordSystemFieldsData error:&v20];
    v16 = v20;

    if ((v15 & 1) == 0)
    {
      v17 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v22 = "[VCCKShortcutSyncService handleSavedWorkflowOrderingRecord:]";
        v23 = 2114;
        v24 = v16;
        _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_ERROR, "%s Failed to handle saved folder ordering record: %{public}@", buf, 0x16u);
      }
    }

    recordCopy = v19;
  }

  else
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      recordID2 = [recordCopy recordID];
      *buf = 136315394;
      v22 = "[VCCKShortcutSyncService handleSavedWorkflowOrderingRecord:]";
      v23 = 2112;
      v24 = recordID2;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Unable to retrieve collection identifier from ordering CKRecord with identifier %@", buf, 0x16u);
    }
  }
}

- (id)autoShortcutsPreferencesWithCloudKitAutoShortcutsPreferences:(id)preferences
{
  v3 = MEMORY[0x277D7C180];
  preferencesCopy = preferences;
  v5 = [v3 alloc];
  appDescriptor = [preferencesCopy appDescriptor];
  isSiriEnabled = [preferencesCopy isSiriEnabled];
  isSpotlightEnabled = [preferencesCopy isSpotlightEnabled];
  disabledAutoShortcuts = [preferencesCopy disabledAutoShortcuts];
  recordSystemFieldsData = [preferencesCopy recordSystemFieldsData];

  v11 = [v5 initWithAppDescriptor:appDescriptor isSiriEnabled:isSiriEnabled isSpotlightEnabled:isSpotlightEnabled disabledAutoShortcuts:disabledAutoShortcuts cloudKitMetadata:recordSystemFieldsData];
  [v11 setLastSyncedHash:{objc_msgSend(v11, "computedSyncHash")}];

  return v11;
}

- (id)libraryRecordForRecordID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v27 = "[VCCKShortcutSyncService libraryRecordForRecordID:]";
    v28 = 2114;
    v29 = dCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing library CKRecord for recordID: %{public}@", buf, 0x16u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277D7C210] libraryIdentifierFromRecordID:dCopy error:0];
  if (v7)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = [objc_alloc(MEMORY[0x277D79EF0]) initWithIdentifier:v8 objectType:10];
    database = [(VCCKShortcutSyncService *)self database];
    v25 = 0;
    v12 = [database recordWithDescriptor:v10 properties:0 error:&v25];
    v13 = v25;

    if (v12)
    {
      v14 = objc_alloc(MEMORY[0x277D7C210]);
      shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
      v16 = [v14 initWithLibraryRecord:v12 zoneID:shortcutsZoneID];

      cloudKitRecordMetadata = [v12 cloudKitRecordMetadata];
      [v16 setRecordSystemFieldsData:cloudKitRecordMetadata];
    }

    else
    {
      cloudKitRecordMetadata = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(cloudKitRecordMetadata, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v27 = "[VCCKShortcutSyncService libraryRecordForRecordID:]";
        v28 = 2114;
        v29 = v13;
        _os_log_impl(&dword_23103C000, cloudKitRecordMetadata, OS_LOG_TYPE_ERROR, "%s Failed to fetch library record with error: %{public}@", buf, 0x16u);
      }

      v16 = 0;
    }

    objc_autoreleasePoolPop(v9);
    if (v12 && v16)
    {
      dataFileRepresentation = [v16 dataFileRepresentation];
      v19 = [MEMORY[0x277CBEB98] setWithObject:dataFileRepresentation];
      filesReferencedUntilSaved = [(VCCKShortcutSyncService *)self filesReferencedUntilSaved];
      [filesReferencedUntilSaved setObject:v19 forKeyedSubscript:v8];

      v21 = MEMORY[0x277D7C200];
      shortcutsZoneID2 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
      v23 = [v21 createRecordFromItem:v16 zoneID:shortcutsZoneID2];

      goto LABEL_16;
    }
  }

  else
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[VCCKShortcutSyncService libraryRecordForRecordID:]";
      v28 = 2114;
      v29 = dCopy;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get identifier from library CKRecord with CKRecordID %{public}@", buf, 0x16u);
    }
  }

  v23 = 0;
LABEL_16:

  objc_autoreleasePoolPop(v6);

  return v23;
}

- (id)autoShortcutsPreferencesRecordForRecordID:(id)d
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[VCCKShortcutSyncService autoShortcutsPreferencesRecordForRecordID:]";
    v27 = 2114;
    v28 = dCopy;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing auto shortcuts preferences CKRecord for recordID: %{public}@", buf, 0x16u);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277D7C1E8] identifierForRecordID:dCopy];
  if (!v7)
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[VCCKShortcutSyncService autoShortcutsPreferencesRecordForRecordID:]";
      v27 = 2114;
      v28 = dCopy;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get identifier from auto shortcuts preferences CKRecord with CKRecordID %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  v8 = v7;
  v9 = objc_autoreleasePoolPush();
  database = [(VCCKShortcutSyncService *)self database];
  v24 = 0;
  v11 = [database autoShortcutsPreferencesForIdentifier:v8 error:&v24];
  v12 = v24;

  if (!v11)
  {
    v22 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v26 = "[VCCKShortcutSyncService autoShortcutsPreferencesRecordForRecordID:]";
      v27 = 2114;
      v28 = v8;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&dword_23103C000, v22, OS_LOG_TYPE_DEFAULT, "%s Unable to find auto shortcuts preferences in the database with identifier: %{public}@, error: %{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
LABEL_13:
    v16 = 0;
    goto LABEL_14;
  }

  v13 = [objc_alloc(MEMORY[0x277D7C1E8]) initWithAutoShortcutsPreferences:v11 identifier:dCopy];

  objc_autoreleasePoolPop(v9);
  v14 = MEMORY[0x277D7C200];
  shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  v16 = [v14 createRecordFromItem:v13 zoneID:shortcutsZoneID];

  v17 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    recordName = [dCopy recordName];
    *buf = 136315394;
    v26 = "[VCCKShortcutSyncService autoShortcutsPreferencesRecordForRecordID:]";
    v27 = 2114;
    v28 = recordName;
    _os_log_impl(&dword_23103C000, v17, OS_LOG_TYPE_INFO, "%s Setting file representations for the auto shortcuts preferences record: %{public}@", buf, 0x16u);
  }

  filesReferencedUntilSaved = [(VCCKShortcutSyncService *)self filesReferencedUntilSaved];
  fileRepresentations = [v13 fileRepresentations];
  recordName2 = [dCopy recordName];
  [filesReferencedUntilSaved setObject:fileRepresentations forKey:recordName2];

LABEL_14:
  objc_autoreleasePoolPop(v6);

  return v16;
}

- (id)folderRecordForRecordID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[VCCKShortcutSyncService folderRecordForRecordID:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing folder CKRecord", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277D7C1F8] collectionIdentifierForRecordID:dCopy];
  if (!v7)
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[VCCKShortcutSyncService folderRecordForRecordID:]";
      v27 = 2114;
      v28 = dCopy;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_ERROR, "%s Failed to get collection identifier from folder CKRecord with CKRecordID %{public}@", buf, 0x16u);
    }

    goto LABEL_12;
  }

  v8 = v7;
  database = [(VCCKShortcutSyncService *)self database];
  v10 = [database desiredFolderSyncOperationForCollection:v8];

  if ([v10 operationType] != 1)
  {
    v21 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v26 = "[VCCKShortcutSyncService folderRecordForRecordID:]";
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_23103C000, v21, OS_LOG_TYPE_INFO, "%s Collection's folder doesn't need sync, so not constructing record: %{public}@", buf, 0x16u);
    }

LABEL_12:
    objc_autoreleasePoolPop(v6);
    v20 = 0;
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  database2 = [(VCCKShortcutSyncService *)self database];
  v24 = 0;
  v12 = [database2 folderRecordForCollection:v8 error:&v24];
  v13 = v24;

  if (v12)
  {
    v14 = objc_alloc(MEMORY[0x277D7C1F8]);
    name = [v12 name];
    v16 = [v14 initWithIdentifier:dCopy name:name icon:objc_msgSend(v12 encryptedSchemaVersion:{"icon"), objc_msgSend(v12, "encryptedSchemaVersion")}];

    cloudKitMetadata = [v12 cloudKitMetadata];
    [v16 setRecordSystemFieldsData:cloudKitMetadata];

    v18 = MEMORY[0x277D7C200];
    shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
    v20 = [v18 createRecordFromItem:v16 zoneID:shortcutsZoneID];
  }

  else
  {
    v16 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[VCCKShortcutSyncService folderRecordForRecordID:]";
      v27 = 2114;
      v28 = v8;
      _os_log_impl(&dword_23103C000, v16, OS_LOG_TYPE_ERROR, "%s Unable to get folder record for collection: %{public}@", buf, 0x16u);
    }

    v20 = 0;
  }

  objc_autoreleasePoolPop(v6);
  if (!v12)
  {
    goto LABEL_13;
  }

  v20 = v20;
  v22 = v20;
LABEL_14:

  return v22;
}

- (id)workflowRecordForRecordID:(id)d
{
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v23 = "[VCCKShortcutSyncService workflowRecordForRecordID:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing workflow CKRecord", buf, 0xCu);
  }

  v6 = objc_autoreleasePoolPush();
  v7 = [(objc_class *)[(VCCKShortcutSyncService *)self cloudKitWorkflowClass] workflowIdentifierForRecordID:dCopy];
  database = [(VCCKShortcutSyncService *)self database];
  v9 = [database desiredSyncOperationForWorkflow:v7];

  if ([v9 operationType] == 1)
  {
    v10 = [(VCCKShortcutSyncService *)self workflowRecordWithIdentifier:v7 properties:0];
    if (v10)
    {
      v11 = [objc_alloc(-[VCCKShortcutSyncService cloudKitWorkflowClass](self "cloudKitWorkflowClass"))];
      if (([v11 isValidForSyncing]& 1) != 0)
      {
        serializedDataFile = [v11 serializedDataFile];
        recordName = [dCopy recordName];
        v14 = [MEMORY[0x277CBEB98] setWithObject:serializedDataFile];
        [(VCCKShortcutSyncService *)self filesReferencedUntilSaved];
        v15 = v21 = v6;
        [v15 setObject:v14 forKeyedSubscript:recordName];

        v16 = MEMORY[0x277D7C200];
        shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
        v18 = v16;
        v6 = v21;
        v19 = [v18 createRecordFromItem:v11 zoneID:shortcutsZoneID];
      }

      else
      {
        serializedDataFile = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(serializedDataFile, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v23 = "[VCCKShortcutSyncService workflowRecordForRecordID:]";
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&dword_23103C000, serializedDataFile, OS_LOG_TYPE_ERROR, "%s Not creating a CKRecord from WFCloudKitWorkflow instance because it's not valid: %@", buf, 0x16u);
        }

        v19 = 0;
      }
    }

    else
    {
      v11 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[VCCKShortcutSyncService workflowRecordForRecordID:]";
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Failed to load record for workflow with identifier %{public}@, has the workflow been deleted?", buf, 0x16u);
      }

      v19 = 0;
    }
  }

  else
  {
    v10 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v23 = "[VCCKShortcutSyncService workflowRecordForRecordID:]";
      v24 = 2114;
      v25 = v7;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_INFO, "%s Shortcut doesn't need sync, so not constructing record: %{public}@", buf, 0x16u);
    }

    v19 = 0;
  }

  objc_autoreleasePoolPop(v6);

  return v19;
}

- (id)syncFlagsRecord
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VCCKShortcutSyncService syncFlagsRecord]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s Constructing sync flags CKRecord", &v11, 0xCu);
  }

  shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  v5 = [objc_alloc(MEMORY[0x277D7C228]) initWithZoneID:shortcutsZoneID];
  [v5 setMigratedVoiceShortcuts:{objc_msgSend(MEMORY[0x277D7C230], "voiceShortcutMigrationDidRun")}];
  [v5 setDefaultShortcutsVersion:{objc_msgSend(MEMORY[0x277D7C230], "defaultShortcutsVersion")}];
  database = [(VCCKShortcutSyncService *)self database];
  syncToken = [database syncToken];
  syncFlagsCloudKitRecordMetadata = [syncToken syncFlagsCloudKitRecordMetadata];
  [v5 setRecordSystemFieldsData:syncFlagsCloudKitRecordMetadata];

  v9 = [MEMORY[0x277D7C200] createRecordFromItem:v5 zoneID:shortcutsZoneID];

  return v9;
}

- (id)workflowOrderingRecordForRecordID:(id)d
{
  v34 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v29 = "[VCCKShortcutSyncService workflowOrderingRecordForRecordID:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Constructing workflow ordering CKRecord", buf, 0xCu);
  }

  v6 = [(VCCKShortcutSyncService *)self collectionIdentifierForRecordID:dCopy];
  if (v6)
  {
    database = [(VCCKShortcutSyncService *)self database];
    v8 = [database desiredOrderingSyncOperationForCollection:v6];

    if ([v8 operationType] == 1)
    {
      database2 = [(VCCKShortcutSyncService *)self database];
      v27 = 0;
      v10 = [database2 orderingRecordForCollection:v6 error:&v27];
      v11 = v27;

      if (v10)
      {
        v12 = objc_alloc(MEMORY[0x277D7C1F0]);
        v26 = v8;
        v13 = MEMORY[0x277CBEB70];
        shortcuts = [v10 shortcuts];
        v15 = [v13 orderedSetWithArray:shortcuts];
        v16 = MEMORY[0x277CBEB70];
        folders = [v10 folders];
        v18 = [v16 orderedSetWithArray:folders];
        v19 = [v12 initWithIdentifier:dCopy orderedWorkflowIDs:v15 orderedFolderIDs:v18];

        cloudKitMetadata = [v10 cloudKitMetadata];
        [v19 setRecordSystemFieldsData:cloudKitMetadata];

        v21 = MEMORY[0x277D7C200];
        shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
        v23 = v21;
        v8 = v26;
        v24 = [v23 createRecordFromItem:v19 zoneID:shortcutsZoneID];
      }

      else
      {
        v19 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v29 = "[VCCKShortcutSyncService workflowOrderingRecordForRecordID:]";
          v30 = 2114;
          v31 = v6;
          v32 = 2114;
          v33 = v11;
          _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_INFO, "%s Could not create ordering record for collection %{public}@: %{public}@", buf, 0x20u);
        }

        v24 = 0;
      }
    }

    else
    {
      v11 = getWFCloudKitSyncLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v29 = "[VCCKShortcutSyncService workflowOrderingRecordForRecordID:]";
        v30 = 2114;
        v31 = v6;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_INFO, "%s Collection doesn't need sync, so not constructing ordering record: %{public}@", buf, 0x16u);
      }

      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (id)collectionIdentifierForRecordID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[VCCKShortcutSyncService collectionIdentifierForRecordID:]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Getting collection identifier from CKRecordID", &v9, 0xCu);
  }

  v5 = 0x277D7C1F0;
  if (([MEMORY[0x277D7C1F0] isOrderingRecordID:dCopy] & 1) == 0 && (v5 = 0x277D7C1A0, !objc_msgSend(MEMORY[0x277D7C1A0], "isOrderingRecordID:", dCopy)) || (objc_msgSend(*v5, "collectionIdentifierForRecordID:", dCopy), (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v7 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[VCCKShortcutSyncService collectionIdentifierForRecordID:]";
      v11 = 2114;
      v12 = dCopy;
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Failed to get collection identifier from CKRecordID %{public}@", &v9, 0x16u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)sendSyncFlagsIfNeeded
{
  v13 = *MEMORY[0x277D85DE8];
  syncedFlagsHash = [MEMORY[0x277D7C230] syncedFlagsHash];
  lastSyncedFlagsHash = [MEMORY[0x277D7C230] lastSyncedFlagsHash];
  v5 = getWFCloudKitSyncLogObject();
  v6 = v5;
  if (syncedFlagsHash == lastSyncedFlagsHash)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[VCCKShortcutSyncService sendSyncFlagsIfNeeded]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_INFO, "%s Synced flags hash hasn't changed, bailing out", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[VCCKShortcutSyncService sendSyncFlagsIfNeeded]";
      _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, "%s Sending sync flags", buf, 0xCu);
    }

    v7 = MEMORY[0x277D7C228];
    shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
    v6 = [v7 recordIDWithZoneID:shortcutsZoneID];

    v10 = v6;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v10 count:1];
    [(VCCKShortcutSyncService *)self addRecordIDsToSave:v9 recordIDsToDelete:0];
  }
}

- (void)addRecordIDsToSave:(id)save recordIDsToDelete:(id)delete
{
  v42 = *MEMORY[0x277D85DE8];
  saveCopy = save;
  deleteCopy = delete;
  if ([saveCopy count] || objc_msgSend(deleteCopy, "count"))
  {
    v8 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v37 = "[VCCKShortcutSyncService addRecordIDsToSave:recordIDsToDelete:]";
      v38 = 2114;
      v39 = saveCopy;
      v40 = 2114;
      v41 = deleteCopy;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, "%s Adding identifiers to save: %{public}@, identifiers to delete %{public}@", buf, 0x20u);
    }

    array = [MEMORY[0x277CBEB18] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = saveCopy;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        v14 = 0;
        do
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [objc_alloc(MEMORY[0x277CBC718]) initWithRecordID:*(*(&v30 + 1) + 8 * v14) type:0];
          [array addObject:v15];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v12);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = deleteCopy;
    v17 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v27;
      do
      {
        v20 = 0;
        do
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v26 + 1) + 8 * v20);
          v22 = objc_alloc(MEMORY[0x277CBC718]);
          v23 = [v22 initWithRecordID:v21 type:{1, v26}];
          [array addObject:v23];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }

    syncEngine = [(VCCKShortcutSyncService *)self syncEngine];
    state = [syncEngine state];
    [state addPendingRecordZoneChanges:array];
  }

  else
  {
    array = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(array, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v37 = "[VCCKShortcutSyncService addRecordIDsToSave:recordIDsToDelete:]";
      _os_log_impl(&dword_23103C000, array, OS_LOG_TYPE_INFO, "%s No changes to save or delete, bailing out", buf, 0xCu);
    }
  }
}

- (void)sendLibraryIfNeeded
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[VCCKShortcutSyncService sendLibraryIfNeeded]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Sending library if changed", &v21, 0xCu);
  }

  database = [(VCCKShortcutSyncService *)self database];
  latestLibraryIdentifier = [database latestLibraryIdentifier];

  v6 = [objc_alloc(MEMORY[0x277D79EF0]) initWithIdentifier:latestLibraryIdentifier objectType:10];
  database2 = [(VCCKShortcutSyncService *)self database];
  v8 = [database2 recordWithDescriptor:v6 properties:0 error:0];

  if (v8)
  {
    cloudKitRecordMetadata = [v8 cloudKitRecordMetadata];
    if (!cloudKitRecordMetadata || (v10 = cloudKitRecordMetadata, v11 = [v8 syncHash], v12 = objc_msgSend(v8, "lastSyncedHash"), v10, v11 != v12))
    {
      v13 = objc_opt_new();
      v14 = MEMORY[0x277D7C210];
      shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
      v16 = [v14 recordIDWithZoneID:shortcutsZoneID libraryIdentifier:latestLibraryIdentifier];

      [v13 addObject:v16];
      cloudKitRecordMetadata2 = [v8 cloudKitRecordMetadata];

      if (!cloudKitRecordMetadata2)
      {
        v18 = getWFCloudKitSyncLogObject();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v21 = 136315138;
          v22 = "[VCCKShortcutSyncService sendLibraryIfNeeded]";
          _os_log_impl(&dword_23103C000, v18, OS_LOG_TYPE_INFO, "%s About to upload the library to CloudKit for the first time. Uploading all shortcut records to migrate to the Shortcut_v2 record", &v21, 0xCu);
        }

        fetchCloudKitRecordIDsForAllVisibleWorkflows = [(VCCKShortcutSyncService *)self fetchCloudKitRecordIDsForAllVisibleWorkflows];
        [v13 addObjectsFromArray:fetchCloudKitRecordIDsForAllVisibleWorkflows];
      }

      array = [v13 array];
      [(VCCKShortcutSyncService *)self addRecordIDsToSave:array recordIDsToDelete:MEMORY[0x277CBEBF8]];
    }
  }
}

- (void)sendChangedFoldersAndCollections
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v37 = objc_opt_new();
  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v44 = "[VCCKShortcutSyncService sendChangedFoldersAndCollections]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Sending changed folders and collections", buf, 0xCu);
  }

  v5 = WFGetBuiltInCollectionIdentifiers();
  v35 = WFGetAzulBuiltInCollectionIdentifiers();
  database = [(VCCKShortcutSyncService *)self database];
  allCollectionIdentifiersForSync = [database allCollectionIdentifiersForSync];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = allCollectionIdentifiersForSync;
  v8 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v39;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        if ([v5 containsObject:v12])
        {
          v13 = [v35 containsObject:v12];
          v14 = 0x277D7C1A0;
          if (!v13)
          {
            goto LABEL_18;
          }
        }

        else
        {
          database2 = [(VCCKShortcutSyncService *)self database];
          v16 = [database2 desiredFolderSyncOperationForCollection:v12];

          v17 = MEMORY[0x277D7C1F8];
          shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
          v19 = [v17 recordIDWithZoneID:shortcutsZoneID collectionIdentifier:v12];

          operationType = [v16 operationType];
          v21 = v3;
          if (operationType == 1 || (v22 = [v16 operationType], v21 = v37, v22 == 2))
          {
            [v21 addObject:v19];
          }

          if ([v16 operationType])
          {
            logger = [(VCCKShortcutSyncService *)self logger];
            [logger logDesiredSyncOperationWithName:@"folder sync" operation:v16 identifier:v12];
          }
        }

        v14 = 0x277D7C1F0;
LABEL_18:
        v24 = *v14;
        shortcutsZoneID2 = [(VCCKShortcutSyncService *)self shortcutsZoneID];
        v26 = [v24 recordIDWithZoneID:shortcutsZoneID2 collectionIdentifier:v12];

        database3 = [(VCCKShortcutSyncService *)self database];
        v28 = [database3 desiredOrderingSyncOperationForCollection:v12];

        operationType2 = [v28 operationType];
        v30 = v3;
        if (operationType2 == 1 || (v31 = [v28 operationType], v30 = v37, v31 == 2))
        {
          [v30 addObject:v26];
        }

        if ([v28 operationType])
        {
          logger2 = [(VCCKShortcutSyncService *)self logger];
          [logger2 logDesiredSyncOperationWithName:@"ordering sync" operation:v28 identifier:v12];
        }
      }

      v9 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v9);
  }

  allObjects = [v3 allObjects];
  allObjects2 = [v37 allObjects];
  [(VCCKShortcutSyncService *)self addRecordIDsToSave:allObjects recordIDsToDelete:allObjects2];
}

- (void)sendChangedWorkflows
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v18 = objc_opt_new();
  v4 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v26 = "[VCCKShortcutSyncService sendChangedWorkflows]";
    _os_log_impl(&dword_23103C000, v4, OS_LOG_TYPE_INFO, "%s Sending changed workflows", buf, 0xCu);
  }

  database = [(VCCKShortcutSyncService *)self database];
  allWorkflowIdentifiersForSync = [database allWorkflowIdentifiersForSync];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = allWorkflowIdentifiersForSync;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        database2 = [(VCCKShortcutSyncService *)self database];
        v13 = [database2 desiredSyncOperationForWorkflow:v11];

        v14 = v3;
        if ([v13 operationType] == 1 || (v14 = v18, objc_msgSend(v13, "operationType") == 2))
        {
          cloudKitWorkflowClass = [(VCCKShortcutSyncService *)self cloudKitWorkflowClass];
          shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
          v17 = [(objc_class *)cloudKitWorkflowClass recordIDWithZoneID:shortcutsZoneID workflowID:v11];
          [v14 addObject:v17];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  [(VCCKShortcutSyncService *)self addRecordIDsToSave:v3 recordIDsToDelete:v18];
}

- (id)workflowRecordWithIdentifier:(id)identifier properties:(id)properties
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = MEMORY[0x277D79EF0];
  propertiesCopy = properties;
  v9 = [[v7 alloc] initWithIdentifier:identifierCopy objectType:0];
  database = [(VCCKShortcutSyncService *)self database];
  v15 = 0;
  v11 = [database recordWithDescriptor:v9 properties:propertiesCopy error:&v15];

  v12 = v15;
  if (!v11)
  {
    v13 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315650;
      v17 = "[VCCKShortcutSyncService workflowRecordWithIdentifier:properties:]";
      v18 = 2114;
      v19 = v12;
      v20 = 2112;
      v21 = identifierCopy;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_FAULT, "%s Failed to load WFWorkflowRecord from identifier: %{public}@, descriptor = %@", buf, 0x20u);
    }
  }

  return v11;
}

- (void)createShortcutsZone
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[VCCKShortcutSyncService createShortcutsZone]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Creating Shortcuts zone", buf, 0xCu);
  }

  v4 = objc_alloc(MEMORY[0x277CBC728]);
  v5 = objc_alloc(MEMORY[0x277CBC5E8]);
  shortcutsZoneID = [(VCCKShortcutSyncService *)self shortcutsZoneID];
  v7 = [v5 initWithZoneID:shortcutsZoneID];
  v8 = [v4 initWithZone:v7];

  syncEngine = [(VCCKShortcutSyncService *)self syncEngine];
  state = [syncEngine state];
  v12 = v8;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1];
  [state addPendingDatabaseChanges:v11];
}

- (void)enableCoherenceSync
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[VCCKShortcutSyncService enableCoherenceSync]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_INFO, "%s Enabling coherence sync", &v6, 0xCu);
  }

  logger = [(VCCKShortcutSyncService *)self logger];
  [logger logEvent:@"enable coherence sync (live)"];

  database = [(VCCKShortcutSyncService *)self database];
  [database updateSyncTokenWithBlock:&__block_literal_global_1250];

  [MEMORY[0x277CBEBD0] resetSyncUnavailableMessage];
  [(VCCKShortcutSyncService *)self setCoherenceSyncEnabled:1];
}

- (CKRecordZoneID)shortcutsZoneID
{
  v2 = objc_alloc(MEMORY[0x277CBC5F8]);
  v3 = [v2 initWithZoneName:*MEMORY[0x277D7CBD0] ownerName:*MEMORY[0x277CBBF28]];

  return v3;
}

- (NSArray)pendingShortcutsZoneChanges
{
  syncEngine = [(VCCKShortcutSyncService *)self syncEngine];
  state = [syncEngine state];
  pendingRecordZoneChanges = [state pendingRecordZoneChanges];

  return pendingRecordZoneChanges;
}

- (Class)cloudKitWorkflowClass
{
  [(VCCKShortcutSyncService *)self coherenceSyncEnabled];
  v2 = objc_opt_class();

  return v2;
}

- (void)modifyPendingChangesInShortcutsZoneWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[VCCKShortcutSyncService modifyPendingChangesInShortcutsZoneWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Modifying pending changes in Shortcuts zone", buf, 0xCu);
  }

  v6 = VCOSTransactionWithName(@"VCCKShortcutSyncService.modifyPendingChangesInShortcutsZoneWithCompletion");
  syncEngine = [(VCCKShortcutSyncService *)self syncEngine];
  sendChangesOptions = [(VCCKShortcutSyncService *)self sendChangesOptions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __77__VCCKShortcutSyncService_modifyPendingChangesInShortcutsZoneWithCompletion___block_invoke;
  v11[3] = &unk_2788FF4B8;
  v12 = v6;
  v13 = completionCopy;
  v9 = v6;
  v10 = completionCopy;
  [syncEngine sendChangesWithOptions:sendChangesOptions completionHandler:v11];
}

void __77__VCCKShortcutSyncService_modifyPendingChangesInShortcutsZoneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFCloudKitSyncLogObject();
  v5 = v4;
  if (v3)
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = 136315394;
    v12 = "[VCCKShortcutSyncService modifyPendingChangesInShortcutsZoneWithCompletion:]_block_invoke";
    v13 = 2114;
    v14 = v3;
    v6 = "%s Error modifying changes in the Shortcuts zone: %{public}@";
    v7 = v5;
    v8 = OS_LOG_TYPE_ERROR;
    v9 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = 136315138;
    v12 = "[VCCKShortcutSyncService modifyPendingChangesInShortcutsZoneWithCompletion:]_block_invoke";
    v6 = "%s Finished modifying changes in the Shortcuts zone";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 12;
  }

  _os_log_impl(&dword_23103C000, v7, v8, v6, &v11, v9);
LABEL_7:

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (void)fetchChangesInShortcutsZoneWithCompletion:(id)completion
{
  v16 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v15 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]";
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Fetching changes in Shortcuts zone", buf, 0xCu);
  }

  v6 = VCOSTransactionWithName(@"VCCKShortcutSyncService.fetchChangesInShortcutsZoneWithCompletion");
  syncEngine = [(VCCKShortcutSyncService *)self syncEngine];
  fetchChangesOptions = [(VCCKShortcutSyncService *)self fetchChangesOptions];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__VCCKShortcutSyncService_fetchChangesInShortcutsZoneWithCompletion___block_invoke;
  v11[3] = &unk_2788FE6C0;
  v12 = v6;
  v13 = completionCopy;
  v11[4] = self;
  v9 = v6;
  v10 = completionCopy;
  [syncEngine fetchChangesWithOptions:fetchChangesOptions completionHandler:v11];
}

void __69__VCCKShortcutSyncService_fetchChangesInShortcutsZoneWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = getWFCloudKitSyncLogObject();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_INFO, "%s Finished fetching changes in the Shortcuts zone", &v10, 0xCu);
    }

    v3 = v5;
    goto LABEL_12;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&dword_23103C000, v5, OS_LOG_TYPE_ERROR, "%s Error fetching changes in the Shortcuts zone: %{public}@", &v10, 0x16u);
  }

  if (VCCloudKitErrorContainsErrorWithCode(v3, 26))
  {
    v6 = getWFCloudKitSyncLogObject();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:

      [*(a1 + 32) createShortcutsZone];
LABEL_12:

      v3 = 0;
      goto LABEL_13;
    }

    v10 = 136315138;
    v11 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
    v7 = "%s Zone not found error encountered, asking sync engine to create the Shortcuts zone";
LABEL_7:
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    goto LABEL_8;
  }

  if (VCCloudKitErrorContainsErrorWithCode(v3, 28))
  {
    v9 = getWFCloudKitSyncLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s User deleted zone error encountered", &v10, 0xCu);
    }

    [MEMORY[0x277D7C230] setZoneWasPurged:1];
    if ([MEMORY[0x277D7C230] ignoresUserDeletedZoneErrors])
    {
      v6 = getWFCloudKitSyncLogObject();
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v10 = 136315138;
      v11 = "[VCCKShortcutSyncService fetchChangesInShortcutsZoneWithCompletion:]_block_invoke";
      v7 = "%s User has consented to resuming sync, recreating the zone";
      goto LABEL_7;
    }
  }

LABEL_13:
  v8 = *(a1 + 48);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = getWFCloudKitSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[VCCKShortcutSyncService dealloc]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEFAULT, "%s VCCKShortcutSyncService dealloc", buf, 0xCu);
  }

  [(VCCKShortcutSyncService *)self stopObservingUserDefaults];
  applicationObserver = [(VCCKShortcutSyncService *)self applicationObserver];
  [applicationObserver removeObserver:self forKeyPath:@"applicationVisible" context:VCCKShortcutSyncServiceApplicationVisibilityChangedContext];

  v5.receiver = self;
  v5.super_class = VCCKShortcutSyncService;
  [(VCCKShortcutSyncService *)&v5 dealloc];
}

- (VCCKShortcutSyncService)initWithContainer:(id)container database:(id)database applicationObserver:(id)observer debuggingOptions:(unint64_t)options logger:(id)logger
{
  v44[1] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  databaseCopy = database;
  observerCopy = observer;
  loggerCopy = logger;
  if (containerCopy)
  {
    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCCKShortcutSyncService.m" lineNumber:77 description:{@"Invalid parameter not satisfying: %@", @"container"}];

    if (databaseCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCCKShortcutSyncService.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"database"}];

LABEL_3:
  v42.receiver = self;
  v42.super_class = VCCKShortcutSyncService;
  v17 = [(VCCKShortcutSyncService *)&v42 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_container, container);
    objc_storeStrong(&v18->_database, database);
    objc_storeStrong(&v18->_applicationObserver, observer);
    v18->_debuggingOptions = options;
    objc_storeStrong(&v18->_logger, logger);
    v19 = objc_alloc(MEMORY[0x277CBC740]);
    v20 = MEMORY[0x277CBEB98];
    shortcutsZoneID = [(VCCKShortcutSyncService *)v18 shortcutsZoneID];
    v44[0] = shortcutsZoneID;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:1];
    v23 = [v20 setWithArray:v22];
    v24 = [v19 initWithZoneIDs:v23];

    v25 = [objc_alloc(MEMORY[0x277CBC738]) initWithScope:v24];
    sendChangesOptions = v18->_sendChangesOptions;
    v18->_sendChangesOptions = v25;

    v27 = objc_alloc(MEMORY[0x277CBC700]);
    v28 = MEMORY[0x277CBEB98];
    shortcutsZoneID2 = [(VCCKShortcutSyncService *)v18 shortcutsZoneID];
    v43 = shortcutsZoneID2;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:1];
    v31 = [v28 setWithArray:v30];
    v32 = [v27 initWithZoneIDs:v31];

    v33 = [objc_alloc(MEMORY[0x277CBC6F8]) initWithScope:v32];
    fetchChangesOptions = v18->_fetchChangesOptions;
    v18->_fetchChangesOptions = v33;

    v35 = objc_opt_new();
    filesReferencedUntilSaved = v18->_filesReferencedUntilSaved;
    v18->_filesReferencedUntilSaved = v35;

    v18->_coherenceSyncEnabled = [databaseCopy coherenceSyncEnabled];
    v37 = v18;
  }

  return v18;
}

@end