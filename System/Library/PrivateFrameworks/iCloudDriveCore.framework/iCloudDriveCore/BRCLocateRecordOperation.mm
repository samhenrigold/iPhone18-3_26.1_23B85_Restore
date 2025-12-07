@interface BRCLocateRecordOperation
- (BRCLocateRecordOperation)initWithRecordID:(id)d serverZone:(id)zone isUserWaiting:(BOOL)waiting maxBackoff:(double)backoff sessionContext:(id)context;
- (id)createActivity;
- (void)_performAfterLocatingRecord:(id)record;
- (void)addLocateRecordCompletionBlock:(id)block;
- (void)cancelToBeReplacedByOperation:(id)operation;
- (void)finishWithResult:(id)result error:(id)error;
- (void)itemMarkedForOOBSync:(id)sync;
- (void)main;
@end

@implementation BRCLocateRecordOperation

- (BRCLocateRecordOperation)initWithRecordID:(id)d serverZone:(id)zone isUserWaiting:(BOOL)waiting maxBackoff:(double)backoff sessionContext:(id)context
{
  waitingCopy = waiting;
  v35 = *MEMORY[0x277D85DE8];
  dCopy = d;
  zoneCopy = zone;
  contextCopy = context;
  zoneAppRetriever = [contextCopy zoneAppRetriever];
  v17 = [dCopy brc_itemIDWithZoneAppRetriever:zoneAppRetriever];

  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    *buf = 138412802;
    v30 = dCopy;
    v31 = 2112;
    v32 = v17;
    v33 = 2112;
    v34 = v18;
    _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_INFO, "[INFO] Request to locate record: [%@] of item [%@]%@", buf, 0x20u);
  }

  debugItemIDString = [v17 debugItemIDString];
  v21 = [@"locate-record/" stringByAppendingString:debugItemIDString];

  metadataSyncContext = [zoneCopy metadataSyncContext];
  v28.receiver = self;
  v28.super_class = BRCLocateRecordOperation;
  v23 = [(_BRCOperation *)&v28 initWithName:v21 syncContext:metadataSyncContext sessionContext:contextCopy];

  if (v23)
  {
    br_locateRecord = [MEMORY[0x277CBC4F8] br_locateRecord];
    [(_BRCOperation *)v23 setGroup:br_locateRecord];

    [(_BRCOperation *)v23 setNonDiscretionary:waitingCopy];
    [(_BRCOperation *)v23 setMaxBackoff:backoff];
    objc_storeStrong(&v23->_recordID, d);
    objc_storeStrong(&v23->_itemID, v17);
    objc_storeStrong(&v23->_structureRecordID, d);
    objc_storeStrong(&v23->_serverZone, zone);
    v25 = objc_opt_new();
    locateRecordCompletionBlocks = v23->_locateRecordCompletionBlocks;
    v23->_locateRecordCompletionBlocks = v25;
  }

  return v23;
}

- (void)itemMarkedForOOBSync:(id)sync
{
  if ([sync isEqualToItemID:self->_itemID])
  {
    self->_itemMarkedForOOBSyncWhileRunning = 1;
  }
}

- (id)createActivity
{
  v2 = _os_activity_create(&dword_223E7A000, "sync/locate-record", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);

  return v2;
}

- (void)_performAfterLocatingRecord:(id)record
{
  recordCopy = record;
  clientZone = [(BRCServerZone *)self->_serverZone clientZone];
  v6 = [clientZone fetchRecordSubResourcesWithParentOperation:self pendingChangesStream:0 contentRecordsFetchedInline:1 sessionContext:self->super._sessionContext];

  v7 = [MEMORY[0x277CBEB18] arrayWithObject:self->_recordID];
  recordName = [(CKRecordID *)self->_recordID recordName];
  v9 = [recordName hasPrefix:@"documentStructure/"];

  if (v9)
  {
    itemIDString = [(BRCItemID *)self->_itemID itemIDString];
    v11 = [@"documentContent/" stringByAppendingString:itemIDString];

    v12 = objc_alloc(MEMORY[0x277CBC5D0]);
    zoneID = [(CKRecordID *)self->_recordID zoneID];
    v14 = [v12 initWithRecordName:v11 zoneID:zoneID];
    [v7 addObject:v14];

LABEL_5:
    goto LABEL_6;
  }

  recordName2 = [(CKRecordID *)self->_recordID recordName];
  v16 = [recordName2 hasPrefix:@"documentContent/"];

  if (v16)
  {
    itemIDString2 = [(BRCItemID *)self->_itemID itemIDString];
    v11 = [@"documentStructure/" stringByAppendingString:itemIDString2];

    v18 = objc_alloc(MEMORY[0x277CBC5D0]);
    zoneID2 = [(CKRecordID *)self->_recordID zoneID];
    v20 = [v18 initWithRecordName:v11 zoneID:zoneID2];
    structureRecordID = self->_structureRecordID;
    self->_structureRecordID = v20;

    [v7 addObject:self->_structureRecordID];
    goto LABEL_5;
  }

LABEL_6:
  if (![(BRCItemID *)self->_itemID isDocumentsFolder]&& [(BRCItemID *)self->_itemID isNonDesktopRoot])
  {
    v22 = objc_alloc(MEMORY[0x277CBC5D0]);
    itemIDString3 = [(BRCItemID *)self->_itemID itemIDString];
    zoneID3 = [(CKRecordID *)self->_recordID zoneID];
    v25 = [v22 initWithRecordName:itemIDString3 zoneID:zoneID3];
    [v7 addObject:v25];
  }

  v26 = [objc_alloc(MEMORY[0x277CBC3E0]) initWithRecordIDs:v7];
  [v26 setShouldFetchAssetContent:0];
  v27 = [MEMORY[0x277CBC5A0] desiredKeysWithMask:185];
  [v26 setDesiredKeys:v27];

  callbackQueue = [v6 callbackQueue];
  [v26 setCallbackQueue:callbackQueue];

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke;
  v39[3] = &unk_278504F10;
  v29 = v6;
  v40 = v29;
  [v26 setPerRecordCompletionBlock:v39];
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_6;
  v35 = &unk_278503E90;
  selfCopy = self;
  v37 = v29;
  v38 = recordCopy;
  v30 = recordCopy;
  v31 = v29;
  [v26 setFetchRecordsCompletionBlock:&v32];
  [(_BRCOperation *)self addSubOperation:v26, v32, v33, v34, v35, selfCopy];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    [*(a1 + 32) addRecord:a2];
  }

  else
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] record with id %@ encountered an error while locating - %@%@", &v11, 0x20u);
    }
  }
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:*(*(a1 + 32) + 536)];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2;
  v13[3] = &unk_278501638;
  v14 = v5;
  v7 = *(a1 + 40);
  v8 = v7;
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 48);
  v17 = v6;
  v18 = v10;
  v11 = v6;
  v12 = v5;
  [v7 notifyWhenRecordsAreFetchedAndFinish:v13];
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) records];
    v3 = [v2 count];

    if (!v3)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v29 = *(*(a1 + 48) + 576);
        v30 = *(a1 + 32);
        *buf = 138412802;
        v33 = v29;
        v34 = 2112;
        v35 = v30;
        v36 = 2112;
        v37 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Failed to look up record %@ - %@%@", buf, 0x20u);
      }

      v12 = *(*(a1 + 64) + 16);
      goto LABEL_15;
    }
  }

  if (([*(a1 + 40) saveRecordsWithQueryCursor:0] & 1) == 0)
  {
    v6 = *(a1 + 64);
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_1();
    }

    v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:@"unreachable: Can't alloc ranks after fetching records"];
    (*(v6 + 16))(v6, 0, v9);
    goto LABEL_11;
  }

  v4 = [*(a1 + 40) error];

  if (!v4)
  {
    v14 = (a1 + 56);
    v13 = *(a1 + 56);
    if (v13)
    {
      goto LABEL_17;
    }

    if (![*(*(a1 + 48) + 552) isSharedZone])
    {
      v13 = *v14;
      if (!*v14)
      {
        v26 = brc_bread_crumbs();
        v27 = brc_default_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_3((a1 + 48));
        }

        v28 = *(a1 + 64);
        v9 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:7 description:@"Could not locate record"];
        (*(v28 + 16))(v28, 0, v9);
        goto LABEL_11;
      }

LABEL_17:
      v9 = [v13 objectForKeyedSubscript:@"parent"];
      if (!v9)
      {
        if ([*(*(a1 + 48) + 552) isSharedZone])
        {
          v15 = [*v14 share];

          if (v15)
          {
            (*(*(a1 + 64) + 16))();
LABEL_23:

            *(*(a1 + 48) + 504) = [*(a1 + 40) recordsFetched];
            *(*(a1 + 48) + 512) = [*(a1 + 40) recordsFetchedTotalMetadataSize];
            *(*(a1 + 48) + 520) = [*(a1 + 40) xattrsFetchedTotalSize];
            return;
          }
        }
      }

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v17 = *(a1 + 64);
      if (isKindOfClass)
      {
        v18 = [v9 recordID];
        v19 = [*(*(a1 + 48) + 256) zoneAppRetriever];
        v20 = [v18 brc_itemIDWithZoneAppRetriever:v19];
        (*(v17 + 16))(v17, v20, 0);

        goto LABEL_23;
      }

      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_2(v14, v23, v24);
      }

      v25 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFACB0] code:15 description:{@"unreachable: parent isn't a reference %@", *v14}];
      (*(v17 + 16))(v17, 0, v25);

LABEL_11:
      return;
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_4();
    }

    v12 = *(*(a1 + 64) + 16);
LABEL_15:
    v12();
    return;
  }

  v5 = *(a1 + 64);
  v31 = [*(a1 + 40) error];
  (*(v5 + 16))(v5, 0);
}

- (void)main
{
  mangledID = [*(self + 552) mangledID];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __32__BRCLocateRecordOperation_main__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = *(v9 + 576);
      v11 = [*(v9 + 552) mangledID];
      *buf = 138413058;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_INFO, "[INFO] Locating recordID %@ in zone %@ --> Record not found. Error %@%@", buf, 0x2Au);
    }

    v12 = *(a1 + 32);
    v13 = MEMORY[0x277CBEC28];
    v14 = v6;
  }

  else
  {
    if (v5)
    {
      v15 = *(*(a1 + 32) + 256);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __32__BRCLocateRecordOperation_main__block_invoke_20;
      v20[3] = &unk_2784FFE90;
      v16 = v5;
      v17 = *(a1 + 32);
      v21 = v16;
      v22 = v17;
      [v15 performAsyncOnClientReadWriteDatabaseWorkloop:v20];

      goto LABEL_8;
    }

    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      __32__BRCLocateRecordOperation_main__block_invoke_cold_1();
    }

    v12 = *(a1 + 32);
    v13 = MEMORY[0x277CBEC38];
    v14 = 0;
  }

  [v12 completedWithResult:v13 error:v14];
LABEL_8:
}

void __32__BRCLocateRecordOperation_main__block_invoke_20(uint64_t a1)
{
  v2 = -[BRCFetchParentChainOperation initWithParentID:sessionContext:zone:isUserWaiting:]([BRCFetchParentChainOperation alloc], "initWithParentID:sessionContext:zone:isUserWaiting:", *(a1 + 32), *(*(a1 + 40) + 256), *(*(a1 + 40) + 552), [*(a1 + 40) nonDiscretionary]);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__BRCLocateRecordOperation_main__block_invoke_2;
  v3[3] = &unk_2784FF540;
  v3[4] = *(a1 + 40);
  [(BRCFetchParentChainOperation *)v2 addFetchParentChainCompletionBlock:v3];
  if (!v2)
  {
    __32__BRCLocateRecordOperation_main__block_invoke_20_cold_1();
  }

  [*(a1 + 40) addSubOperation:v2];
}

void __32__BRCLocateRecordOperation_main__block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(v6 + 576);
      v8 = [*(v6 + 552) mangledID];
      v12 = 138413058;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      v16 = 2112;
      v17 = v3;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_INFO, "[INFO] Locating recordID %@ in zone %@ --> Fetch parent chain failed with error %@%@", &v12, 0x2Au);
    }

    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CBEC28];
    v11 = v3;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CBEC38];
    v11 = 0;
  }

  [v9 completedWithResult:v10 error:v11];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v48.receiver = self;
  v48.super_class = BRCLocateRecordOperation;
  [(_BRCOperation *)&v48 finishWithResult:resultCopy error:errorCopy];
  if (!errorCopy && [(_BRCOperation *)self nonDiscretionary])
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [BRCLocateRecordOperation finishWithResult:? error:?];
    }

    [(_BRCOperation *)self executionTimeInSec];
    v10 = [AppTelemetryTimeSeriesEvent newQBSOperationPrformanceEventWithTime:@"BRCLocateRecordOperation" type:self->_recordsFetched recordsFetched:self->_recordsFetchedTotalMetadataSize recordsFetchedTotalMetadataSize:self->_xattrsFetchedTotalSize xattrsFetchedTotalSize:?];
    analyticsReporter = [(BRCSessionContext *)self->super._sessionContext analyticsReporter];
    [analyticsReporter postReportForDefaultSubCategoryWithCategory:11 telemetryTimeEvent:v10];
  }

  v12 = [resultCopy isEqual:MEMORY[0x277CBEC38]];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_exists = v12;
  v14 = selfCopy->_locateRecordCompletionBlocks;
  locateRecordCompletionBlocks = selfCopy->_locateRecordCompletionBlocks;
  selfCopy->_locateRecordCompletionBlocks = 0;

  objc_sync_exit(selfCopy);
  if ([(NSMutableArray *)v14 count])
  {
    if (!errorCopy && (v12 & 1) == 0)
    {
      v16 = MEMORY[0x277CCA9B8];
      recordName = [(CKRecordID *)selfCopy->_recordID recordName];
      errorCopy = [v16 brc_errorItemNotFound:recordName];
    }

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke;
    v46[3] = &unk_278502540;
    v47 = v14;
    v18 = MEMORY[0x22AA4A310](v46);
    v19 = selfCopy->super._sessionContext;
    v20 = v19;
    if (errorCopy)
    {
      clientReadWriteDatabaseFacade = [(BRCSessionContext *)v19 clientReadWriteDatabaseFacade];
      workloop = [clientReadWriteDatabaseFacade workloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_2;
      block[3] = &unk_278504F60;
      v44 = v18;
      v45 = v12;
      v43 = errorCopy;
      v23 = v18;
      dispatch_async(workloop, block);

      v24 = v44;
    }

    else
    {
      clientZone = [(BRCServerZone *)selfCopy->_serverZone clientZone];
      v35 = resultCopy;
      v26 = selfCopy->_itemID;
      v27 = [BRCItemGlobalID alloc];
      dbRowID = [clientZone dbRowID];
      v29 = [(BRCItemGlobalID *)v27 initWithZoneRowID:dbRowID itemID:v26];

      clientReadWriteDatabaseFacade2 = [(BRCSessionContext *)v20 clientReadWriteDatabaseFacade];
      workloop2 = [clientReadWriteDatabaseFacade2 workloop];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_3;
      v36[3] = &unk_2785011B8;
      v36[4] = selfCopy;
      v37 = v20;
      v38 = v29;
      v40 = clientZone;
      v41 = v18;
      v39 = v26;
      v32 = v18;
      v24 = clientZone;
      v33 = v26;
      v34 = v29;
      dispatch_async(workloop2, v36);

      resultCopy = v35;
    }
  }
}

void __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v10 + 1) + 8 * v9) + 16))(*(*(&v10 + 1) + 8 * v9));
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

void __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 528);
  v3 = [*(a1 + 40) itemFetcher];
  v4 = *(a1 + 48);
  v5 = [*(a1 + 40) clientReadWriteDatabaseFacade];
  v6 = [v3 itemByItemGlobalID:v4 dbFacade:v5];

  if (v6)
  {
    if ([v6 isDocument] & 1) != 0 || (objc_msgSend(*(a1 + 64), "mangledID"), v7 = objc_claimAutoreleasedReturnValue(), +[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", v7), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "applyNonDocumentsOnLocateRecord"), v8, v7, (v9))
    {
      v10 = [*(a1 + 64) serverItemByItemID:*(a1 + 56)];
      if (v10 && ([v6 isMarkedForOOBSync] & 1) == 0)
      {
        v11 = [v6 asDocument];
        v12 = [v11 currentVersion];
        v13 = [v10 latestVersion];
        if ([v12 isEtagEqual:v13])
        {
          v14 = [v6 sharingOptions];
          v15 = [v10 sharingOptions];

          if (v14 == v15)
          {
            v16 = [*(a1 + 40) clientReadWriteDatabaseFacade];
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_4;
            v27[3] = &unk_278501520;
            v28 = *(a1 + 72);
            [v16 scheduleFlushWithCheckpoint:0 whenFlushed:v27];

            v17 = v28;
            goto LABEL_20;
          }
        }

        else
        {
        }
      }

      if (([v6 isIdleOrRejected] & 1) == 0 || objc_msgSend(v6, "isMarkedForOOBSync") && v2)
      {
        v22 = *(a1 + 72);
        v23 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
        (*(v22 + 16))(v22, 1, v23);

LABEL_21:
        goto LABEL_22;
      }

      if (v10 && [v10 isLive])
      {
        [v6 updateFromServerItem:v10];
        [v6 saveToDBForServerEdit:1 keepAliases:0];
      }

      v24 = [*(a1 + 40) clientReadWriteDatabaseFacade];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __51__BRCLocateRecordOperation_finishWithResult_error___block_invoke_5;
      v25[3] = &unk_278501520;
      v26 = *(a1 + 72);
      [v24 scheduleFlushWithCheckpoint:0 whenFlushed:v25];

      v17 = v26;
LABEL_20:

      goto LABEL_21;
    }

    (*(*(a1 + 72) + 16))();
  }

  else
  {
    v18 = *(a1 + 72);
    v19 = MEMORY[0x277CCA9B8];
    v20 = [*(a1 + 56) itemIDString];
    v21 = [v19 brc_errorItemNotFound:v20];
    (*(v18 + 16))(v18, 0, v21);
  }

LABEL_22:
}

- (void)addLocateRecordCompletionBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  locateRecordCompletionBlocks = selfCopy->_locateRecordCompletionBlocks;
  if (locateRecordCompletionBlocks)
  {
    v7 = MEMORY[0x22AA4A310](blockCopy);
    [(NSMutableArray *)locateRecordCompletionBlocks addObject:v7];
  }

  else
  {
    error = [(_BRCOperation *)selfCopy error];
    v9 = error;
    if (error)
    {
      v10 = error;
    }

    else
    {
      v10 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFABD0] code:161 description:@"Operation already finished"];
    }

    v11 = v10;

    callbackQueue = [(_BRCOperation *)selfCopy callbackQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__BRCLocateRecordOperation_addLocateRecordCompletionBlock___block_invoke;
    block[3] = &unk_2784FFBF0;
    v14 = v11;
    v15 = blockCopy;
    block[4] = selfCopy;
    v7 = v11;
    dispatch_async(callbackQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)cancelToBeReplacedByOperation:(id)operation
{
  v26 = *MEMORY[0x277D85DE8];
  operationCopy = operation;
  if (operationCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    dependencies = [(BRCLocateRecordOperation *)selfCopy dependencies];
    v7 = [dependencies countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v7)
    {
      v8 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(dependencies);
          }

          [operationCopy addDependency:*(*(&v20 + 1) + 8 * i)];
        }

        v7 = [dependencies countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v7);
    }

    v10 = selfCopy->_locateRecordCompletionBlocks;
    locateRecordCompletionBlocks = selfCopy->_locateRecordCompletionBlocks;
    selfCopy->_locateRecordCompletionBlocks = 0;

    objc_sync_exit(selfCopy);
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v12 = v10;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v13)
    {
      v14 = *v17;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v12);
          }

          [operationCopy addLocateRecordCompletionBlock:{*(*(&v16 + 1) + 8 * j), v16}];
        }

        v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v13);
    }

    [(_BRCOperation *)selfCopy cancel];
    if ([(_BRCOperation *)selfCopy isExecuting])
    {
      [operationCopy addDependency:selfCopy];
    }
  }

  else
  {
    [(_BRCOperation *)self cancel];
  }
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Can't alloc ranks after fetching records%@", v1, 0xCu);
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_2(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_223E7A000, log, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: parent isn't a reference %@%@", &v4, 0x16u);
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_3(id *a1)
{
  v1 = [*a1 recordID];
  v2 = [v1 debugDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __56__BRCLocateRecordOperation__performAfterLocatingRecord___block_invoke_2_cold_4()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Located record in shared zone. No need to fetch the parent chain.%@", v1, 0xCu);
}

void __32__BRCLocateRecordOperation_main__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_223E7A000, v0, OS_LOG_TYPE_DEBUG, "[DEBUG] Record located. No need to fetch the parent chain.%@", v1, 0xCu);
}

void __32__BRCLocateRecordOperation_main__block_invoke_20_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: fetchParentChainOp%@", &v2, 0xCu);
  }
}

- (void)finishWithResult:(void *)a1 error:.cold.1(void *a1)
{
  [a1 executionTimeInSec];
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x3Eu);
}

@end