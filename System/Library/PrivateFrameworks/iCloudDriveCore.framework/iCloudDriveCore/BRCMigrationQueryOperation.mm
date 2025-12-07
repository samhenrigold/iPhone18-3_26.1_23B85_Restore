@interface BRCMigrationQueryOperation
+ (id)allMigrationKeysOrdered;
- (BOOL)_saveFetchedRecords:(id)records cursor:(id)cursor error:(id *)error;
- (BRCMigrationQueryOperation)initWithServerZone:(id)zone migrationKey:(id)key continuationCursor:(id)cursor sessionContext:(id)context;
- (int64_t)__computeNextShareBatchWithMaxRank:(int64_t)rank batchSize:(int64_t)size;
- (void)__performQuery:(id)query recordFetchedBlock:(id)block cursorUpdatedBlock:(id)updatedBlock desiredKeys:(id)keys asContinuationOf:(id)of completion:(id)completion;
- (void)_performAfterFetchingNextShareBatch:(id)batch;
- (void)_performAfterQueryingForShareAliasesWithCompletion:(id)completion;
- (void)_performAfterQueryingForShareIDsOfFolders:(BOOL)folders completion:(id)completion;
- (void)_updatedContinuationCursor:(id)cursor parentOperation:(id)operation fetchedRecords:(id)records alreadyOnServerTruth:(BOOL)truth reply:(id)reply;
- (void)finishWithResult:(id)result error:(id)error;
- (void)main;
@end

@implementation BRCMigrationQueryOperation

+ (id)allMigrationKeysOrdered
{
  v9[4] = *MEMORY[0x277D85DE8];
  documentSharesMigrationKey = [self documentSharesMigrationKey];
  v9[0] = documentSharesMigrationKey;
  folderSharesMigrationKey = [self folderSharesMigrationKey];
  v9[1] = folderSharesMigrationKey;
  folderShareAliasesMigrationKey = [self folderShareAliasesMigrationKey];
  v9[2] = folderShareAliasesMigrationKey;
  refetchExistingSharesMigrationKey = [self refetchExistingSharesMigrationKey];
  v9[3] = refetchExistingSharesMigrationKey;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:4];

  return v7;
}

- (BRCMigrationQueryOperation)initWithServerZone:(id)zone migrationKey:(id)key continuationCursor:(id)cursor sessionContext:(id)context
{
  zoneCopy = zone;
  keyCopy = key;
  cursorCopy = cursor;
  contextCopy = context;
  metadataSyncContext = [zoneCopy metadataSyncContext];
  v22.receiver = self;
  v22.super_class = BRCMigrationQueryOperation;
  v16 = [(_BRCOperation *)&v22 initWithName:@"migration-query" syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v16)
  {
    objc_storeStrong(&v16->super._serverZone, zone);
    objc_storeStrong(&v16->_migrationKey, key);
    objc_storeStrong(&v16->_continuationCursor, cursor);
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    shareIDsToFetch = v16->_shareIDsToFetch;
    v16->_shareIDsToFetch = v17;

    br_osUpgradeMigration = [MEMORY[0x277CBC4F8] br_osUpgradeMigration];
    [(_BRCOperation *)v16 setGroup:br_osUpgradeMigration];

    v21.receiver = v16;
    v21.super_class = BRCMigrationQueryOperation;
    [(BRCSyncDownOperation *)&v21 _setupOperationDiscrationaryStatus];
  }

  return v16;
}

- (BOOL)_saveFetchedRecords:(id)records cursor:(id)cursor error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  cursorCopy = cursor;
  session = [(BRCServerZone *)self->super._serverZone session];
  serverState = [session serverState];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v12 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{self->super._serverZone, 0}];
  serverDB = [session serverDB];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __63__BRCMigrationQueryOperation__saveFetchedRecords_cursor_error___block_invoke;
  v30[3] = &unk_278504918;
  v30[4] = self;
  v14 = recordsCopy;
  v31 = v14;
  v15 = v12;
  v32 = v15;
  errorCopy = error;
  v16 = serverState;
  v33 = v16;
  v17 = cursorCopy;
  v34 = v17;
  v36 = &v38;
  v18 = session;
  v35 = v18;
  [serverDB performWithFlags:9 action:v30];

  v19 = v39[3];
  if (v19)
  {
    clientDB = [v18 clientDB];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __63__BRCMigrationQueryOperation__saveFetchedRecords_cursor_error___block_invoke_53;
    v26[3] = &unk_278503AD8;
    v27 = v15;
    v28 = v18;
    v29 = &v38;
    [clientDB performWithFlags:37 action:v26];

    brc_errorSyncBlocked = v27;
  }

  else
  {
    brc_errorSyncBlocked = [MEMORY[0x277CCA9B8] brc_errorSyncBlocked];
    if (brc_errorSyncBlocked)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        v25 = "(passed to caller)";
        *buf = 136315906;
        v43 = "[BRCMigrationQueryOperation _saveFetchedRecords:cursor:error:]";
        v44 = 2080;
        if (!error)
        {
          v25 = "(ignored by caller)";
        }

        v45 = v25;
        v46 = 2112;
        v47 = brc_errorSyncBlocked;
        v48 = 2112;
        v49 = v22;
        _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    if (error)
    {
      objc_storeStrong(error, brc_errorSyncBlocked);
    }
  }

  _Block_object_dispose(&v38, 8);
  return v19 != 0;
}

uint64_t __63__BRCMigrationQueryOperation__saveFetchedRecords_cursor_error___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 504);
  v4 = *(a1 + 48);
  v27 = 0;
  v5 = [v3 saveQueryRecords:v2 zonesNeedingAllocRanks:v4 error:&v27];
  v6 = v27;
  v7 = v27;
  v8 = v7;
  if ((v5 & 1) == 0)
  {
    v11 = v7;
    if (v11)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, 0x90u))
      {
        v21 = "(passed to caller)";
        v22 = *(a1 + 88);
        *buf = 136315906;
        v30 = "[BRCMigrationQueryOperation _saveFetchedRecords:cursor:error:]_block_invoke";
        if (!v22)
        {
          v21 = "(ignored by caller)";
        }

        v31 = 2080;
        v32 = v21;
        v33 = 2112;
        v34 = v11;
        v35 = 2112;
        v36 = v17;
        _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
      }
    }

    v19 = *(a1 + 88);
    if (v19)
    {
      objc_storeStrong(v19, v6);
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  v9 = *(a1 + 56);
  v10 = [*(*(a1 + 32) + 504) mangledID];
  [v9 migrationQueryForMangledID:v10 key:*(*(a1 + 32) + 520) didUpdateWithCursor:*(a1 + 64)];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = *(a1 + 48);
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
LABEL_4:
    v15 = 0;
    while (1)
    {
      if (*v24 != v14)
      {
        objc_enumerationMutation(v11);
      }

      if (![*(*(&v23 + 1) + 8 * v15) allocateRanksWhenCaughtUp:{0, v23}])
      {
        goto LABEL_16;
      }

      if (v13 == ++v15)
      {
        v13 = [v11 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v13)
        {
          goto LABEL_4;
        }

        break;
      }
    }
  }

  *(*(*(a1 + 80) + 8) + 24) = [*(a1 + 56) nextRank];
  v11 = [*(a1 + 72) serverReadWriteDatabaseFacade];
  v16 = [v11 saveServerZone:*(*(a1 + 32) + 504)];
LABEL_17:

  return v16;
}

uint64_t __63__BRCMigrationQueryOperation__saveFetchedRecords_cursor_error___block_invoke_53(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [*(a1 + 40) applyScheduler];
        [v8 generatedRanksForZone:v7 upToRank:*(*(*(a1 + 48) + 8) + 24)];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return 1;
}

- (void)_updatedContinuationCursor:(id)cursor parentOperation:(id)operation fetchedRecords:(id)records alreadyOnServerTruth:(BOOL)truth reply:(id)reply
{
  truthCopy = truth;
  v50 = *MEMORY[0x277D85DE8];
  cursorCopy = cursor;
  objc_initWeak(&location, operation);
  recordsCopy = records;
  replyCopy = reply;
  session = [(BRCSyncContext *)self->super.super._syncContext session];
  v15 = self->super._serverZone;
  serverState = [session serverState];
  v17 = brc_bread_crumbs();
  v18 = brc_default_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    zoneName = [(BRCServerZone *)self->super._serverZone zoneName];
    v24 = prettyPrintMigrationCursor(self->_continuationCursor);
    v25 = prettyPrintMigrationCursor(cursorCopy);
    *buf = 138413058;
    v43 = zoneName;
    v44 = 2112;
    v45 = v24;
    v46 = 2112;
    v26 = v25;
    v47 = v25;
    v48 = 2112;
    v49 = v17;
    _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] share-query for zone %@ progressed from cursor:%@ to cursor:%@%@", buf, 0x2Au);
  }

  if ([(NSMutableArray *)self->_shareIDsToFetch count])
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke_2;
    v34[3] = &unk_2785014D0;
    v34[4] = self;
    v35 = replyCopy;
    v19 = MEMORY[0x22AA4A310](v34);
    v20 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:self->_shareIDsToFetch];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke_3;
    v29[3] = &unk_278504968;
    v21 = v19;
    v33 = v21;
    v30 = recordsCopy;
    selfCopy = self;
    v32 = cursorCopy;
    [v20 setFetchRecordsCompletionBlock:v29];
    v22 = objc_loadWeakRetained(&location);
    [(_BRCOperation *)self addSubOperation:v20 asCompletionOf:v22];
  }

  else
  {
    serverDB = [session serverDB];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke;
    v36[3] = &unk_278504940;
    v37 = serverState;
    v38 = v15;
    selfCopy2 = self;
    v40 = cursorCopy;
    [serverDB performWithFlags:!truthCopy action:v36];

    (*(replyCopy + 2))(replyCopy, 0);
  }

  objc_destroyWeak(&location);
}

uint64_t __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) mangledID];
  [v2 migrationQueryForMangledID:v3 key:*(*(a1 + 48) + 520) didUpdateWithCursor:*(a1 + 56)];

  return 1;
}

void __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 536);
  v4 = a2;
  [v3 removeAllObjects];
  (*(*(a1 + 40) + 16))();
}

void __115__BRCMigrationQueryOperation__updatedContinuationCursor_parentOperation_fetchedRecords_alreadyOnServerTruth_reply___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 56) + 16);

    v4();
  }

  else
  {
    v8 = 0;
    if (*(a1 + 32))
    {
      v5 = *(a1 + 32);
    }

    else
    {
      v5 = MEMORY[0x277CBEBF8];
    }

    v6 = [a2 allValues];
    v7 = [v5 arrayByAddingObjectsFromArray:v6];

    if (([*(a1 + 40) _saveFetchedRecords:v7 cursor:*(a1 + 48) error:&v8] & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)__performQuery:(id)query recordFetchedBlock:(id)block cursorUpdatedBlock:(id)updatedBlock desiredKeys:(id)keys asContinuationOf:(id)of completion:(id)completion
{
  v59[2] = *MEMORY[0x277D85DE8];
  queryCopy = query;
  blockCopy = block;
  updatedBlockCopy = updatedBlock;
  keysCopy = keys;
  ofCopy = of;
  completionCopy = completion;
  mangledID = [(BRCServerZone *)self->super._serverZone mangledID];
  v17 = [BRCUserDefaults defaultsForMangledID:mangledID];

  maxRecordCountInQuerySharedRecordsOperation = [v17 maxRecordCountInQuerySharedRecordsOperation];
  memset(v53, 0, sizeof(v53));
  __brc_create_section(0, "[BRCMigrationQueryOperation __performQuery:recordFetchedBlock:cursorUpdatedBlock:desiredKeys:asContinuationOf:completion:]", 255, 0, v53);
  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v34 = v53[0];
    zoneName = [(BRCServerZone *)self->super._serverZone zoneName];
    *buf = 134218754;
    v55 = v34;
    v56 = 2112;
    v57 = zoneName;
    v58 = 1024;
    LODWORD(v59[0]) = maxRecordCountInQuerySharedRecordsOperation;
    WORD2(v59[0]) = 2112;
    *(v59 + 6) = v19;
    _os_log_debug_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx query for %@ starting with batchSize:%u%@", buf, 0x26u);
  }

  if (self->_continuationCursor)
  {
    v21 = objc_alloc(MEMORY[0x277CBC590]);
    ckQueryCursor = [(BRCMigrationCursor *)self->_continuationCursor ckQueryCursor];
    v23 = [v21 initWithCursor:ckQueryCursor];

    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      operationID = [v23 operationID];
      v26 = prettyPrintMigrationCursor(self->_continuationCursor);
      *buf = 138412802;
      v55 = operationID;
      v56 = 2112;
      v37 = v26;
      v57 = v26;
      v58 = 2112;
      v59[0] = v24;
      _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] created query %@ from cursor:%@%@", buf, 0x20u);
    }
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CBC590]) initWithQuery:queryCopy];
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      operationID2 = [v23 operationID];
      *buf = 138412802;
      v55 = operationID2;
      v56 = 2112;
      v57 = queryCopy;
      v58 = 2112;
      v59[0] = v24;
      _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] created query %@ from query:%@%@", buf, 0x20u);
    }
  }

  [v23 setDesiredKeys:keysCopy];
  [v23 setResultsLimit:maxRecordCountInQuerySharedRecordsOperation];
  zoneID = [(BRCServerZone *)self->super._serverZone zoneID];
  [v23 setZoneID:zoneID];

  [v23 setShouldFetchAssetContent:0];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke;
  v50[3] = &unk_278504990;
  v28 = blockCopy;
  v51 = v28;
  v52 = v23;
  [v23 setRecordMatchedBlock:v50];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke_2;
  v43[3] = &unk_2785049E0;
  v49 = v23;
  v43[4] = self;
  v29 = completionCopy;
  v46 = v29;
  v30 = updatedBlockCopy;
  v47 = v30;
  v31 = queryCopy;
  v44 = v31;
  v32 = v28;
  v48 = v32;
  v33 = keysCopy;
  v45 = v33;
  [v23 setQueryCompletionBlock:v43];
  [(_BRCOperation *)self addSubOperation:v23 asCompletionOf:ofCopy];

  __brc_leave_section(v53);
}

uint64_t __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(result + 32) + 16))(*(result + 32), *(result + 40));
  }

  return result;
}

void __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  memset(v25, 0, sizeof(v25));
  __brc_create_section(0, "[BRCMigrationQueryOperation __performQuery:recordFetchedBlock:cursorUpdatedBlock:desiredKeys:asContinuationOf:completion:]_block_invoke_2", 279, 0, v25);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = *(a1 + 80);
    *buf = 134219010;
    v27 = v25[0];
    v28 = 2112;
    v29 = v17;
    v30 = 2112;
    v31 = v6;
    v32 = 2112;
    v33 = v5;
    v34 = 2112;
    v35 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx handling result of %@: error: %@, cursor: %@%@", buf, 0x34u);
  }

  v9 = [[BRCMigrationCursor alloc] initWithCKQueryCursor:v5];
  v10 = *(a1 + 32);
  v11 = *(v10 + 528);
  *(v10 + 528) = v9;

  if (!v5 || v6)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v12 = *(a1 + 64);
    v13 = *(a1 + 80);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke_63;
    v18[3] = &unk_2785049B8;
    v14 = *(a1 + 40);
    v18[4] = *(a1 + 32);
    v19 = v14;
    v21 = *(a1 + 72);
    v22 = *(a1 + 64);
    v15 = *(a1 + 48);
    v16 = *(a1 + 80);
    v20 = v15;
    v24 = v16;
    v23 = *(a1 + 56);
    (*(v12 + 16))(v12, v13, v5, v18);
  }

  __brc_leave_section(v25);
}

uint64_t __123__BRCMigrationQueryOperation___performQuery_recordFetchedBlock_cursorUpdatedBlock_desiredKeys_asContinuationOf_completion___block_invoke_63(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 72) + 16))(*(a1 + 72), *(a1 + 32), a2, *(a1 + 80));
  }

  else
  {
    return [*(a1 + 32) __performQuery:*(a1 + 40) recordFetchedBlock:*(a1 + 56) cursorUpdatedBlock:*(a1 + 64) desiredKeys:*(a1 + 48) asContinuationOf:*(a1 + 80) completion:*(a1 + 72)];
  }
}

- (int64_t)__computeNextShareBatchWithMaxRank:(int64_t)rank batchSize:(int64_t)size
{
  session = [(BRCServerZone *)self->super._serverZone session];
  serverDB = [session serverDB];
  dbRowID = [(BRCServerZone *)self->super._serverZone dbRowID];
  v10 = [serverDB fetch:{@"SELECT item_id, item_rank FROM server_items WHERE zone_rowid = %@ AND item_rank < %lld AND (item_sharing_options & 4) != 0 ORDER BY item_rank DESC LIMIT %lld", dbRowID, rank, size}];

  if ([v10 next])
  {
    do
    {
      v11 = [v10 objectOfClass:objc_opt_class() atIndex:0];
      v12 = [v10 longLongAtIndex:1];
      v13 = objc_alloc(MEMORY[0x277CBC5D0]);
      zoneID = [(BRCServerZone *)self->super._serverZone zoneID];
      v15 = [v13 initShareIDWithItemID:v11 zoneID:zoneID];

      [(NSMutableArray *)self->_shareIDsToFetch addObject:v15];
    }

    while (([v10 next] & 1) != 0);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)_performAfterFetchingNextShareBatch:(id)batch
{
  batchCopy = batch;
  session = [(BRCServerZone *)self->super._serverZone session];
  mangledID = [(BRCServerZone *)self->super._serverZone mangledID];
  v7 = [BRCUserDefaults defaultsForMangledID:mangledID];
  maxRecordCountInQuerySharedRecordsOperation = [v7 maxRecordCountInQuerySharedRecordsOperation];

  dbEnumerationCursor = [(BRCMigrationCursor *)self->_continuationCursor dbEnumerationCursor];

  if (dbEnumerationCursor)
  {
    dbEnumerationCursor2 = [(BRCMigrationCursor *)self->_continuationCursor dbEnumerationCursor];
    longLongValue = [dbEnumerationCursor2 longLongValue];
  }

  else
  {
    longLongValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  serverTruthWorkloop = [session serverTruthWorkloop];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__BRCMigrationQueryOperation__performAfterFetchingNextShareBatch___block_invoke;
  v14[3] = &unk_278504A30;
  v15 = batchCopy;
  v16 = longLongValue;
  v17 = maxRecordCountInQuerySharedRecordsOperation;
  v14[4] = self;
  v13 = batchCopy;
  dispatch_async(serverTruthWorkloop, v14);
}

void __66__BRCMigrationQueryOperation__performAfterFetchingNextShareBatch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) __computeNextShareBatchWithMaxRank:*(a1 + 48) batchSize:*(a1 + 56)];
  if (v2 < 1)
  {
    v6 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [BRCMigrationCursor alloc];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:v3];
    v6 = [(BRCMigrationCursor *)v4 initWithDbEnumerationCursor:v5];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__BRCMigrationQueryOperation__performAfterFetchingNextShareBatch___block_invoke_2;
  v9[3] = &unk_278504A08;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v7 _updatedContinuationCursor:v6 parentOperation:0 fetchedRecords:MEMORY[0x277CBEBF8] alreadyOnServerTruth:1 reply:v9];
}

- (void)_performAfterQueryingForShareAliasesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"brPrefix", @"shareAlias/"];
  v6 = [objc_alloc(MEMORY[0x277CBC578]) initWithRecordType:@"RecordPrefixList" predicate:v5];
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__33;
  v24[4] = __Block_byref_object_dispose__33;
  v25 = 0;
  v7 = objc_opt_new();
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke;
  v22[3] = &unk_278504A58;
  v8 = v7;
  v23 = v8;
  v9 = MEMORY[0x22AA4A310](v22);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke_88;
  v19[3] = &unk_278504A80;
  v19[4] = self;
  v10 = v8;
  v20 = v10;
  v21 = v24;
  v11 = MEMORY[0x22AA4A310](v19);
  v12 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke_2;
  v15[3] = &unk_278504AA8;
  v15[4] = self;
  v13 = v10;
  v16 = v13;
  v18 = v24;
  v14 = completionCopy;
  v17 = v14;
  [(BRCMigrationQueryOperation *)self _performQuery:v6 recordFetchedBlock:v9 cursorUpdatedBlock:v11 desiredKeys:v12 completion:v15];

  _Block_object_dispose(v24, 8);
}

void __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v6 recordID];
    v10 = [v6 etag];
    v11 = [v5 operationID];
    v12 = 138413058;
    v13 = v9;
    v14 = 2112;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] fetched share alias record %@ with etag:%@ in query %@%@", &v12, 0x2Au);
  }

  [*(a1 + 32) addObject:v6];
}

void __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke_88(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [[BRCMigrationCursor alloc] initWithCKQueryCursor:v7];

  [*(a1 + 32) _saveFetchedRecords:*(a1 + 40) cursor:v8 error:*(*(a1 + 48) + 8) + 40];
  [*(a1 + 40) removeAllObjects];
  v6[2](v6, *(*(*(a1 + 48) + 8) + 40));
}

void __81__BRCMigrationQueryOperation__performAfterQueryingForShareAliasesWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (!v5)
  {
    [*(a1 + 32) _saveFetchedRecords:*(a1 + 40) cursor:*(*(a1 + 32) + 528) error:*(*(a1 + 56) + 8) + 40];
    [*(a1 + 40) removeAllObjects];
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
  }

  else
  {
    v6 = v5;
  }

  (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), v6);
}

- (void)_performAfterQueryingForShareIDsOfFolders:(BOOL)folders completion:(id)completion
{
  foldersCopy = folders;
  completionCopy = completion;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K != NULL", *MEMORY[0x277CBC038]];
  v8 = objc_alloc(MEMORY[0x277CBC578]);
  v9 = kBRRecordTypeStructure;
  if (!foldersCopy)
  {
    v9 = kBRRecordTypeContent;
  }

  v10 = [v8 initWithRecordType:*v9 predicate:v7];
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy__33;
  v27[4] = __Block_byref_object_dispose__33;
  v28 = 0;
  v11 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke;
  v25[3] = &unk_278504AD0;
  v25[4] = self;
  v12 = v11;
  v26 = v12;
  v13 = MEMORY[0x22AA4A310](v25);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_95;
  v22[3] = &unk_278504A80;
  v22[4] = self;
  v14 = v12;
  v23 = v14;
  v24 = v27;
  v15 = MEMORY[0x22AA4A310](v22);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_3;
  v18[3] = &unk_278504B48;
  v21 = v27;
  v18[4] = self;
  v16 = v14;
  v19 = v16;
  v17 = completionCopy;
  v20 = v17;
  [(BRCMigrationQueryOperation *)self _performQuery:v10 recordFetchedBlock:v13 cursorUpdatedBlock:v15 desiredKeys:MEMORY[0x277CBEBF8] completion:v18];

  _Block_object_dispose(v27, 8);
}

void __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 recordID];
  v8 = [*(*(a1 + 32) + 248) session];
  v9 = [v8 zoneAppRetriever];
  v10 = [v7 brc_itemIDWithZoneAppRetriever:v9];

  [*(a1 + 40) addObject:v6];
  if (v10)
  {
    v11 = brc_bread_crumbs();
    v12 = brc_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v6 recordID];
      v18 = [v6 etag];
      v19 = [v5 operationID];
      v21 = 138413058;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v11;
      _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] fetched shared record %@ with etag:%@ in query %@%@", &v21, 0x2Au);
    }

    v13 = objc_alloc(MEMORY[0x277CBC5D0]);
    v14 = [*(*(a1 + 32) + 504) zoneID];
    v15 = [v13 initShareIDWithItemID:v10 zoneID:v14];

    [*(*(a1 + 32) + 536) addObject:v15];
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      v20 = [v5 operationID];
      v21 = 138412802;
      v22 = v7;
      v23 = 2112;
      v24 = v20;
      v25 = 2112;
      v26 = v15;
      _os_log_fault_impl(&dword_223E7A000, v16, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unable to parse itemID from %@ in query %@%@", &v21, 0x20u);
    }
  }
}

void __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_95(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = [[BRCMigrationCursor alloc] initWithCKQueryCursor:v8];

  v11 = *(a1 + 32);
  v12 = [*(a1 + 40) copy];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_2;
  v16[3] = &unk_278504AF8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 32);
  v19 = *(a1 + 48);
  v16[4] = v14;
  v17 = v13;
  v18 = v7;
  v15 = v7;
  [v11 _updatedContinuationCursor:v10 parentOperation:v9 fetchedRecords:v12 alreadyOnServerTruth:0 reply:v16];
}

void __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
    [*(a1 + 32) cancel];
  }

  [*(a1 + 40) removeAllObjects];
  (*(*(a1 + 48) + 16))();
}

void __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  objc_initWeak(&location, a4);
  v9 = *(*(*(a1 + 56) + 8) + 40);
  if (v8 | v9)
  {
    if (v9)
    {
      v16 = *(*(*(a1 + 56) + 8) + 40);
    }

    else
    {
      v16 = v8;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), *(a1 + 32), v16);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = objc_loadWeakRetained(&location);
    v12 = [*(a1 + 40) copy];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_4;
    v17[3] = &unk_278504B20;
    v13 = *(a1 + 48);
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    v19 = v13;
    v20 = v15;
    v17[4] = v14;
    v18 = 0;
    [v10 _updatedContinuationCursor:0 parentOperation:v11 fetchedRecords:v12 alreadyOnServerTruth:0 reply:v17];
  }

  objc_destroyWeak(&location);
}

uint64_t __83__BRCMigrationQueryOperation__performAfterQueryingForShareIDsOfFolders_completion___block_invoke_4(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v4 = *(*(a1[7] + 8) + 40);
  if (!v4)
  {
    v4 = a1[5];
  }

  return (*(v3 + 16))(v3, v2, v4);
}

- (void)main
{
  *buf = 136315394;
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: unknown migration %s%@", buf, 0x16u);
}

- (void)finishWithResult:(id)result error:(id)error
{
  v27 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  errorCopy = error;
  memset(v18, 0, sizeof(v18));
  __brc_create_section(0, "[BRCMigrationQueryOperation finishWithResult:error:]", 462, 0, v18);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = v18[0];
    migrationKey = self->_migrationKey;
    operationID = [(_BRCOperation *)self operationID];
    *buf = 134218754;
    v20 = v13;
    v21 = 2112;
    v22 = migrationKey;
    v23 = 2112;
    v24 = operationID;
    v25 = 2112;
    v26 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx migration-query '%@' %@ completed%@", buf, 0x2Au);
  }

  if (errorCopy)
  {

    resultCopy = 0;
  }

  else
  {
    session = [(BRCSyncContext *)self->super.super._syncContext session];
    clientDB = [session clientDB];
    serialQueue = [clientDB serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__BRCMigrationQueryOperation_finishWithResult_error___block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }

  v16.receiver = self;
  v16.super_class = BRCMigrationQueryOperation;
  [(BRCSyncDownOperation *)&v16 finishWithResult:0 error:errorCopy];
  __brc_leave_section(v18);
}

void __53__BRCMigrationQueryOperation_finishWithResult_error___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 504) clientZone];
  [v1 scheduleSyncDown];
}

@end