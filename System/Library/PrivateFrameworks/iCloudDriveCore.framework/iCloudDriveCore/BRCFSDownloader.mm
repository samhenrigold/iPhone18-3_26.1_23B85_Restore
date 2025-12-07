@interface BRCFSDownloader
- (BOOL)_createDownloadingJobForItem:(id)item state:(int)state kind:(int)kind etag:(id)etag stageFileName:(id)name error:(id *)error;
- (BOOL)makeContentLive:(id)live;
- (BOOL)scheduleContentDownloadForItem:(id)item serverItem:(id)serverItem options:(unint64_t)options etagIfLoser:(id)loser stageFileName:(id)name error:(id *)error;
- (BRCFSDownloader)initWithAccountSession:(id)session;
- (id)_buildDownloadActiveJobsResultSetForThrottleID:(unint64_t)d etag:(id)etag kind:(int)kind;
- (id)_getCancelErrorFromCancelReason:(int)reason;
- (id)_sanitizeRecord:(id)record;
- (id)descriptionForItem:(id)item context:(id)context;
- (id)generateContentStageFileNameForItem:(id)item etag:(id)etag;
- (id)getDownloadEtagForItem:(id)item etagIfLoser:(id)loser;
- (int64_t)nextAllowedScheduleForItem:(id)item withDownloadKind:(int)kind;
- (unint64_t)_bumpThrottleForDownload:(id)download throttle:(id)throttle;
- (unint64_t)sizeOfActiveDownloads;
- (void)_cancelJobs:(id)jobs state:(int)state;
- (void)_cancelJobs:(id)jobs state:(int)state cancelError:(id)error;
- (void)_clearDownloadErrorForDocument:(id)document;
- (void)_close;
- (void)_finishDownloadCleanup:(id)cleanup;
- (void)_finishedDownload:(id)download syncContext:(id)context operationID:(id)d error:(id)error;
- (void)_postponeLoserForWinner:(int64_t)winner etag:(id)etag;
- (void)_reportDownloadErrorForDocument:(id)document error:(id)error;
- (void)_sendContentsBatch:(id)batch sizeHint:(int64_t)hint maxRecordsCount:(unint64_t)count kind:(int)kind;
- (void)_transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority supportedKinds:(id)kinds;
- (void)_willDownload:(id)download operationID:(id)d;
- (void)cancel;
- (void)cancelAndCleanupItemDownload:(id)download kind:(int)kind;
- (void)cancelAndCleanupItemDownload:(id)download kind:(int)kind etag:(id)etag andNotifyDownloadTrackers:(BOOL)trackers cancelReason:(int)reason;
- (void)cancelAndCleanupItemDownloads:(id)downloads;
- (void)cancelOngoingDownloadsDueToMoreRecentServerVersionForItem:(id)item;
- (void)close;
- (void)deleteJobsMatching:(id)matching;
- (void)rescheduleJobsPendingRecentsAndFavoritesFetchInZone:(id)zone;
- (void)rescheduleJobsPendingWinnerForItem:(id)item;
- (void)resume;
- (void)schedule;
- (void)suspend;
- (void)transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority supportedKinds:(id)kinds completionBlock:(id)block;
- (void)updateContentDownloadForMetaOnlyChange:(id)change fromEtag:(id)etag toEtag:(id)toEtag;
- (void)updateLoserNotificationOfItem:(id)item etag:(id)etag downloadKind:(int)kind notification:(id)notification;
@end

@implementation BRCFSDownloader

- (id)getDownloadEtagForItem:(id)item etagIfLoser:(id)loser
{
  loserCopy = loser;
  v6 = loserCopy;
  if (loserCopy)
  {
    etag = loserCopy;
  }

  else
  {
    currentVersion = [item currentVersion];
    ckInfo = [currentVersion ckInfo];
    etag = [ckInfo etag];
  }

  return etag;
}

- (BRCFSDownloader)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v22.receiver = self;
  v22.super_class = BRCFSDownloader;
  v5 = [(BRCFSSchedulerBase *)&v22 initWithSession:sessionCopy name:@"Downloader" tableName:@"client_downloads"];
  if (v5)
  {
    personaIdentifier = [sessionCopy personaIdentifier];
    v7 = BRPersonaSpecificName();

    v8 = dispatch_workloop_create([v7 UTF8String]);
    v9 = [[BRCFairScheduler alloc] initWithWorkloop:v8 name:v7];
    fairScheduler = v5->_fairScheduler;
    v5->_fairScheduler = v9;

    v11 = [[BRCDeadlineScheduler alloc] initWithName:@"com.apple.bird.downloader" fairScheduler:v5->_fairScheduler];
    downloadsDeadlineScheduler = v5->_downloadsDeadlineScheduler;
    v5->_downloadsDeadlineScheduler = v11;

    [(BRCDeadlineScheduler *)v5->_downloadsDeadlineScheduler setCoalescingLeeway:10000000];
    v13 = brc_task_tracker_create("com.apple.bird.download-tracker");
    tracker = v5->_tracker;
    v5->_tracker = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingOperationProgress = v5->_pendingOperationProgress;
    v5->_pendingOperationProgress = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    willRetryOperationProgress = v5->_willRetryOperationProgress;
    v5->_willRetryOperationProgress = v17;

    v19 = [BRCUserDefaults defaultsForMangledID:0];
    [v19 downloadSizeRefreshInterval];
    v5->_activeDownloadSizeRefreshInterval = v20;
  }

  return v5;
}

- (void)resume
{
  clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__BRCFSDownloader_resume__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(clientTruthWorkloop, block);

  [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler resume];
  [(BRCFairScheduler *)self->_fairScheduler resume];
  v4.receiver = self;
  v4.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v4 resume];
}

void __25__BRCFSDownloader_resume__block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __25__BRCFSDownloader_resume__block_invoke_cold_1();
  }

  v4 = [*(*(a1 + 32) + 8) clientDB];
  [v4 execute:@"DELETE FROM client_downloads"];
}

- (void)suspend
{
  [(BRCFairScheduler *)self->_fairScheduler suspend];
  [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler suspend];
  v3.receiver = self;
  v3.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v3 suspend];
}

- (void)close
{
  [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler close];
  [(BRCFairScheduler *)self->_fairScheduler close];
  v3.receiver = self;
  v3.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v3 close];
}

- (void)_close
{
  v3.receiver = self;
  v3.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v3 _close];
  brc_task_tracker_wait(self->_tracker);
}

- (void)cancel
{
  [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler cancel];
  v3.receiver = self;
  v3.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v3 cancel];
  brc_task_tracker_cancel(self->_tracker);
}

- (void)_willDownload:(id)download operationID:(id)d
{
  session = self->super.super._session;
  dCopy = d;
  downloadCopy = download;
  clientDB = [(BRCAccountSession *)session clientDB];
  stageID = [downloadCopy stageID];
  transferID = [downloadCopy transferID];
  kind = [downloadCopy kind];
  etag = [downloadCopy etag];

  [clientDB execute:{@"UPDATE client_downloads SET  transfer_stage = %@, transfer_operation = %@ WHERE throttle_id = %@ AND download_kind = %u AND download_etag = %@", stageID, dCopy, transferID, kind, etag}];
}

- (unint64_t)_bumpThrottleForDownload:(id)download throttle:(id)throttle
{
  throttleCopy = throttle;
  downloadCopy = download;
  v8 = [BRCDownloadJobIdentifier alloc];
  transferID = [downloadCopy transferID];
  unsignedLongLongValue = [transferID unsignedLongLongValue];
  etag = [downloadCopy etag];
  kind = [downloadCopy kind];

  v13 = [(BRCDownloadJobIdentifier *)v8 initWithDBRowID:unsignedLongLongValue etag:etag kind:kind];
  v16.receiver = self;
  v16.super_class = BRCFSDownloader;
  v14 = [(BRCFSSchedulerBase *)&v16 postponeJobID:v13 withThrottle:throttleCopy];

  return v14;
}

- (id)descriptionForItem:(id)item context:(id)context
{
  itemCopy = item;
  contextCopy = context;
  v8 = [MEMORY[0x277D82C18] rawInjection:"ORDER BY download_kind length:{download_etag", 37}];
  v9 = [MEMORY[0x277D82C18] rawInjection:"download_kind length:{download_etag, transfer_operation, transfer_queue, download_error, app_library_rowid", 99}];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__BRCFSDownloader_descriptionForItem_context___block_invoke;
  v14[3] = &unk_278501F88;
  v15 = contextCopy;
  selfCopy = self;
  v17 = itemCopy;
  v10 = itemCopy;
  v11 = contextCopy;
  v12 = [(BRCFSSchedulerBase *)self descriptionForJobsMatching:v10 ordering:v8 additionalColumns:v9 additionalValuesHandler:v14 context:v11];

  return v12;
}

void __46__BRCFSDownloader_descriptionForItem_context___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5)
{
  v27 = a2;
  v9 = a3;
  v10 = [v9 intAtIndex:a4];
  v11 = [v9 stringAtIndex:(a4 + 1)];
  v12 = [v9 uuidAtIndex:(a4 + 2)];
  v13 = [v9 stringAtIndex:(a4 + 3)];
  v14 = [v9 stringAtIndex:(a4 + 4)];
  v15 = [v9 numberAtIndex:(a4 + 5)];

  v16 = BRCPrettyPrintEnum();
  v17 = [BRCDumpContext highlightedString:v11 type:2 context:*(a1 + 32)];
  [v27 appendFormat:@"%s:%@", v16, v17];

  if (!a5)
  {
    goto LABEL_13;
  }

  if (([v13 isEqualToString:@"_retry"] & 1) == 0)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    v18 = [*(*(a1 + 40) + 8) appLibraryByRowID:v15];
    v19 = [*(a1 + 48) serverZone];
    v20 = [BRCSyncContext transferContextForServerZone:v19 appLibrary:v18];

    v21 = [v20 downloadStreamForKind:v10];
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(*(a1 + 48), "dbRowID")}];
    [v21 progressForTransferID:v22 operationID:v12];
    v24 = v23;

    if (v24 >= 0.0)
    {
      [v27 appendFormat:@" downloading:%.1f%%", v24 * 100.0];
    }

    else
    {
      [v27 appendString:@" download:done/cancelled"];
    }

    goto LABEL_10;
  }

  [v27 appendString:@" pending-retry"];
  if (v12)
  {
LABEL_10:
    v25 = [v12 UUIDString];
    [v27 appendFormat:@" op:%@", v25];
  }

LABEL_11:
  if (v14)
  {
    v26 = [BRCDumpContext highlightedString:v14 type:3 context:*(a1 + 32)];
    [v27 appendFormat:@" last-error:%@", v26];
  }

LABEL_13:
}

- (BOOL)_createDownloadingJobForItem:(id)item state:(int)state kind:(int)kind etag:(id)etag stageFileName:(id)name error:(id *)error
{
  v10 = *&kind;
  v85 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  etagCopy = etag;
  nameCopy = name;
  serverZone = [itemCopy serverZone];
  appLibrary = [itemCopy appLibrary];
  syncContextUsedForTransfers = [itemCopy syncContextUsedForTransfers];
  v72 = etagCopy;
  v73 = -[BRCDownloadJobIdentifier initWithDBRowID:etag:kind:]([BRCDownloadJobIdentifier alloc], "initWithDBRowID:etag:kind:", [itemCopy dbRowID], etagCopy, v10);
  v16 = brc_current_date_nsec();
  v17 = 17;
  if (!v10)
  {
    v17 = 25;
  }

  v60 = v17;
  v61 = v16;
  if (v10 == 3 && ![serverZone hasFetchedRecentsAndFavorites])
  {
    state = 40;
  }

  stateCopy = state;
  v68 = itemCopy;
  currentVersion = [itemCopy currentVersion];
  v66 = [currentVersion size];

  downloadThrottle = [syncContextUsedForTransfers downloadThrottle];
  v55 = [MEMORY[0x277D82C18] rawInjection:"app_library_rowid length:{transfer_queue, transfer_size, transfer_record, transfer_stage, transfer_operation, download_kind, download_etag, download_priority, download_request_stamp, download_error, zone_rowid", 202}];
  v19 = MEMORY[0x277D82C08];
  dbRowID = [appLibrary dbRowID];
  contextIdentifier = [syncContextUsedForTransfers contextIdentifier];
  dbRowID2 = [serverZone dbRowID];
  v53 = v10;
  v54 = [v19 formatInjection:{@"%@, %@, %lld, %@, %@, %@, %u, %@, %ld, %lld, %@, %@", dbRowID, contextIdentifier, v66, 0, nameCopy, 0, v10, etagCopy, v60, v61, 0, dbRowID2}];
  v20 = MEMORY[0x277D82C08];
  dbRowID3 = [appLibrary dbRowID];
  v65 = syncContextUsedForTransfers;
  contextIdentifier2 = [syncContextUsedForTransfers contextIdentifier];
  v67 = serverZone;
  dbRowID4 = [serverZone dbRowID];
  v24 = [v20 formatInjection:{@"app_library_rowid = %@, transfer_queue = %@, download_priority = %ld, download_request_stamp = %lld, transfer_stage = %@, zone_rowid = %@", dbRowID3, contextIdentifier2, v60, v61, nameCopy, dbRowID4}];

  v74 = 0;
  v25 = [(BRCFSSchedulerBase *)self insertOrUpdateJobID:v73 throttle:downloadThrottle withState:stateCopy insertedSQLColumn:v55 insertedSQLValues:v54 updatedSQLValues:v24 error:&v74];
  v63 = v26;
  v27 = v74;

  v28 = v27;
  if (error)
  {
    v29 = v27 == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = v29;
  if (!v29)
  {
    v39 = v27;
    v40 = brc_bread_crumbs();
    v41 = brc_default_log();
    if (os_log_type_enabled(v41, 0x90u))
    {
      [BRCFSDownloader _createDownloadingJobForItem:v39 state:v40 kind:v41 etag:? stageFileName:? error:?];
    }

    v43 = v39;
    *error = v39;
    v31 = itemCopy;
    v32 = v72;
    v44 = v65;
LABEL_30:

    goto LABEL_31;
  }

  v31 = itemCopy;
  v32 = v72;
  if (stateCopy != v25)
  {
    v33 = v25;
    selfCopy2 = self;
    activeDownloadsSize = self->_activeDownloadsSize;
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v37 = [clientDB numberWithSQL:{@"SELECT transfer_size FROM client_downloads WHERE throttle_id = %lld AND download_kind = %u AND download_etag = %@", objc_msgSend(v68, "dbRowID"), v53, v72}];

    if (stateCopy == 1)
    {
      v38 = self->_activeDownloadsSize + [v37 longLongValue];
    }

    else
    {
      if (v33 != 1)
      {
LABEL_23:
        v45 = brc_bread_crumbs();
        v46 = brc_default_log();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
        {
          itemID = [v68 itemID];
          v51 = self->_activeDownloadsSize;
          *buf = 138413314;
          v76 = v73;
          v77 = 2112;
          v78 = itemID;
          v79 = 2048;
          v80 = activeDownloadsSize;
          v81 = 2048;
          v82 = v51;
          v83 = 2112;
          v84 = v45;
          _os_log_debug_impl(&dword_223E7A000, v46, OS_LOG_TYPE_DEBUG, "[DEBUG] Downloader[%@]: %@ (%llu -> %llu)%@", buf, 0x34u);
        }

        v28 = v27;
        goto LABEL_26;
      }

      selfCopy2 = self;
      v38 = self->_activeDownloadsSize - [v37 longLongValue];
    }

    selfCopy2->_activeDownloadsSize = v38;
    goto LABEL_23;
  }

LABEL_26:
  v44 = v65;
  serverZone = v67;
  if (stateCopy == 1)
  {
    v39 = [v65 downloadStreamForKind:v53];
    v47 = brc_bread_crumbs();
    v48 = brc_default_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      contextIdentifier3 = [v65 contextIdentifier];
      *buf = 138413058;
      v76 = v39;
      v77 = 2112;
      v78 = contextIdentifier3;
      v79 = 2048;
      v80 = v63;
      v81 = 2112;
      v82 = v47;
      _os_log_debug_impl(&dword_223E7A000, v48, OS_LOG_TYPE_DEBUG, "[DEBUG] Signaling downloadStream %@ , context identifier = %@, with nextTry = %lld%@", buf, 0x2Au);
    }

    [(BRCDownloadJobIdentifier *)v39 signalWithDeadline:v63];
    goto LABEL_30;
  }

LABEL_31:

  return v30;
}

- (id)_sanitizeRecord:(id)record
{
  v18 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v4 = [recordCopy copy];
  [v4 setTrackChanges:0];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [recordCopy allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [recordCopy objectForKeyedSubscript:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          [v4 setObject:0 forKeyedSubscript:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [v4 setTrackChanges:1];

  return v4;
}

- (void)_finishedDownload:(id)download syncContext:(id)context operationID:(id)d error:(id)error
{
  v86 = *MEMORY[0x277D85DE8];
  downloadCopy = download;
  contextCopy = context;
  dCopy = d;
  errorCopy = error;
  v11 = +[BRCAccountsManager sharedManager];
  LODWORD(d) = [v11 isInSyncBubble];

  if (d)
  {
    [BRCFSDownloader _finishedDownload:syncContext:operationID:error:];
  }

  clientZone = [downloadCopy clientZone];
  stageID = [downloadCopy stageID];
  kind = [downloadCopy kind];
  memset(v73, 0, sizeof(v73));
  __brc_create_section(0, "[BRCFSDownloader _finishedDownload:syncContext:operationID:error:]", 547, 0, v73);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v40 = v73[0];
    transferID = [downloadCopy transferID];
    [downloadCopy kind];
    v42 = BRCPrettyPrintEnum();
    etag = [downloadCopy etag];
    v44 = etag;
    v45 = @"failed";
    *buf = 134219266;
    v75 = v40;
    v76 = 2112;
    if (!errorCopy)
    {
      v45 = @"done";
    }

    v77 = transferID;
    v78 = 2080;
    v79 = v42;
    v80 = 2112;
    v81 = etag;
    v82 = 2112;
    v83 = v45;
    v84 = 2112;
    v85 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Downloader[%@-%s-%@]: download %@%@", buf, 0x3Eu);
  }

  if (stageID)
  {
    if (!errorCopy && clientZone)
    {
      goto LABEL_9;
    }

    stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
    itemID = [downloadCopy itemID];
    [stageRegistry cleanupStagedDownloadWithID:stageID forItemID:itemID];
  }

  if (!clientZone)
  {
    asDocument = 0;
    goto LABEL_32;
  }

LABEL_9:
  if (kind > 3)
  {
    asDocument = 0;
  }

  else
  {
    itemFetcher = [(BRCAccountSession *)self->super.super._session itemFetcher];
    transferID2 = [downloadCopy transferID];
    v19 = [itemFetcher itemByRowID:{objc_msgSend(transferID2, "longLongValue")}];
    asDocument = [v19 asDocument];

    if (!errorCopy && ([downloadCopy requiresTwoPhase] & 1) != 0)
    {
      v21 = 1;
LABEL_22:
      [(BRCFSDownloader *)self _clearDownloadErrorForDocument:asDocument];
      applyScheduler = [(BRCAccountSession *)self->super.super._session applyScheduler];
      itemID2 = [downloadCopy itemID];
      v32 = [clientZone serverRankByItemID:itemID2];

      if (kind >= 4)
      {
        v33 = 1;
      }

      else
      {
        v33 = dword_2241ABEA0[kind];
      }

      v34 = [(BRCAccountSession *)self->super.super._session clientReadWriteDatabaseFacade:0];
      v54[0] = MEMORY[0x277D85DD0];
      v54[1] = 3221225472;
      v54[2] = __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_212;
      v54[3] = &unk_278501FD8;
      v54[4] = self;
      v55 = downloadCopy;
      v65 = v21;
      v56 = contextCopy;
      v35 = v34;
      v57 = v35;
      v58 = stageID;
      v63 = kind;
      asDocument = asDocument;
      v59 = asDocument;
      v62 = v32;
      v64 = v33;
      v36 = applyScheduler;
      v60 = v36;
      v61 = clientZone;
      [v35 groupInBatch:v54];

      errorCopy = v48;
      goto LABEL_32;
    }

    downloadTrackers = [(BRCAccountSession *)self->super.super._session downloadTrackers];
    etagIfLoser = [downloadCopy etagIfLoser];
    [downloadTrackers document:asDocument didCompleteDownloadEtagIfLoser:etagIfLoser kind:kind withError:errorCopy];
  }

  if (!errorCopy)
  {
    v21 = 0;
    goto LABEL_22;
  }

  if (([clientZone handleZoneLevelErrorIfNeeded:errorCopy forItemCreation:0] & 1) == 0)
  {
    if (([errorCopy brc_isCloudKitCancellationError] & 1) != 0 || (objc_msgSend(contextCopy, "downloadThrottle"), v24 = objc_claimAutoreleasedReturnValue(), v25 = -[BRCFSDownloader _bumpThrottleForDownload:throttle:](self, "_bumpThrottleForDownload:throttle:", downloadCopy, v24), v24, objc_msgSend(asDocument, "appLibrary"), v26 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v26, "mangledID"), v27 = objc_claimAutoreleasedReturnValue(), +[BRCUserDefaults defaultsForMangledID:](BRCUserDefaults, "defaultsForMangledID:", v27), v28 = objc_claimAutoreleasedReturnValue(), LODWORD(v25) = v25 > objc_msgSend(v28, "downloadRetryCountForFailure"), v28, v27, v26, !v25))
    {
      v29 = 0;
    }

    else
    {
      [(BRCFSDownloader *)self _reportDownloadErrorForDocument:asDocument error:errorCopy];
      v29 = 1;
    }

    v37 = brc_bread_crumbs();
    v38 = brc_default_log();
    if (os_log_type_enabled(v38, 0x90u))
    {
      v46 = [asDocument st];
      displayName = [v46 displayName];
      *buf = 138412802;
      v75 = displayName;
      v76 = 2112;
      v77 = errorCopy;
      v78 = 2112;
      v79 = v37;
      _os_log_error_impl(&dword_223E7A000, v38, 0x90u, "[ERROR] Got error when downloading %@: %@%@", buf, 0x20u);
    }

    if ((v29 & 1) == 0)
    {
      [(BRCFSDownloader *)self _reportDownloadErrorForDocument:asDocument error:errorCopy];
    }

    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke;
    v66[3] = &unk_278501E10;
    v71 = 41;
    v66[4] = self;
    v67 = downloadCopy;
    v68 = errorCopy;
    v72 = kind;
    asDocument = asDocument;
    v69 = asDocument;
    v70 = clientZone;
    [clientDB groupInBatch:v66];
  }

LABEL_32:
  __brc_leave_section(v73);
}

void __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke(uint64_t a1, void *a2)
{
  v24 = MEMORY[0x277D85DD0];
  v25 = 3221225472;
  v26 = __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_2;
  v27 = &unk_278501FB0;
  v4 = *(a1 + 40);
  v28 = *(a1 + 32);
  v5 = *(a1 + 72);
  v29 = v4;
  v6 = a2;
  v7 = MEMORY[0x22AA4A310](&v24);
  v8 = [*(a1 + 48) description];
  v9 = [*(a1 + 40) transferID];
  v10 = *(a1 + 76);
  v11 = [*(a1 + 40) etag];
  [v6 execute:{@"UPDATE client_downloads SET  throttle_state = %d, transfer_record = NULL, transfer_stage = call_block(%@, transfer_stage), transfer_operation = NULL, download_error = %@ WHERE throttle_id = %@ AND download_kind = %u AND download_etag = %@", v5, v7, v8, v9, v10, v11, v24, v25, v26, v27, v28}];

  if ([*(a1 + 48) brc_isCloudKitUnknownItemError] && (!objc_msgSend(*(a1 + 40), "kind") || objc_msgSend(*(a1 + 40), "kind") == 3))
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_cold_1();
    }

    [*(a1 + 56) handleUnknownItemError];
  }

  if (*(a1 + 72) == 41 && [*(a1 + 40) kind] == 2)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_cold_2();
    }

    v16 = *(a1 + 64);
    v17 = [*(a1 + 40) itemID];
    v18 = [v16 serverRankByItemID:v17];

    v19 = [*(*(a1 + 32) + 8) applyScheduler];
    v20 = [*(a1 + 64) dbRowID];
    [v19 setState:1 andApplyKind:2 forRank:v18 zoneRowID:v20];
  }

  [*(a1 + 56) saveToDB];
  v21 = [*(*(a1 + 32) + 8) downloadTrackers];
  v22 = *(a1 + 56);
  v23 = [*(a1 + 40) etagIfLoser];
  [v21 document:v22 didCompleteDownloadEtagIfLoser:v23 kind:objc_msgSend(*(a1 + 40) withError:{"kind"), *(a1 + 48)}];
}

void __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_2(uint64_t a1, sqlite3_context *a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277CCACA8] newFromSqliteValue:*a4];
  if (v8)
  {
    v6 = [*(*(a1 + 32) + 8) stageRegistry];
    v7 = [*(a1 + 40) itemID];
    [v6 cleanupStagedDownloadWithID:v8 forItemID:v7];
  }

  sqlite3_result_null(a2);
}

void __67__BRCFSDownloader__finishedDownload_syncContext_operationID_error___block_invoke_212(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) record];
  v4 = [v2 _sanitizeRecord:v3];

  v5 = *(a1 + 112);
  if (v5 == 1)
  {
    v6 = [*(a1 + 48) contextIdentifier];
  }

  else
  {
    v6 = @"_done";
  }

  v7 = *(a1 + 56);
  v8 = [*(a1 + 40) transferID];
  v9 = *(a1 + 64);
  v10 = *(a1 + 104);
  v11 = [*(a1 + 40) etag];
  LODWORD(v23) = v5;
  [v7 finishDownloadJobForThrottleID:v8 stageID:v9 record:v4 downloadError:0 downloadKind:v10 etag:v11 newState:v23 newTransferQueue:v6];

  [*(a1 + 72) saveToDB];
  if (*(a1 + 112) & 1) != 0 || ([*(*(a1 + 32) + 8) downloadTrackers], v12 = objc_claimAutoreleasedReturnValue(), v13 = *(a1 + 72), objc_msgSend(*(a1 + 40), "etagIfLoser"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "document:didCompleteDownloadEtagIfLoser:kind:withError:", v13, v14, objc_msgSend(*(a1 + 40), "kind"), 0), v14, v12, (*(a1 + 112)))
  {
    v15 = [*(a1 + 48) downloadStreamForKind:{objc_msgSend(*(a1 + 40), "kind")}];
    [v15 signal];
  }

  else
  {
    if (!*(a1 + 96))
    {
      goto LABEL_8;
    }

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v21 = *(a1 + 96);
      v22 = [*(a1 + 40) itemID];
      *buf = 134218754;
      v25 = v21;
      v26 = 2112;
      v27 = v22;
      v28 = 2080;
      v29 = BRCPrettyPrintEnum();
      v30 = 2112;
      v31 = v16;
      _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Apply Changes[%lld]: %@ state is %s%@", buf, 0x2Au);
    }

    v18 = *(a1 + 108);
    v19 = *(a1 + 96);
    v20 = *(a1 + 80);
    v15 = [*(a1 + 88) dbRowID];
    [v20 setState:v18 andApplyKind:2 forRank:v19 zoneRowID:v15];
  }

LABEL_8:
}

- (void)rescheduleJobsPendingWinnerForItem:(id)item
{
  itemCopy = item;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB execute:{@"UPDATE client_downloads SET throttle_state = 1 WHERE throttle_state = %u AND throttle_id = %lld", 42, objc_msgSend(itemCopy, "dbRowID")}];
  if ([clientDB changes])
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSDownloader rescheduleJobsPendingWinnerForItem:];
    }

    syncContextUsedForTransfers = [itemCopy syncContextUsedForTransfers];
    [syncContextUsedForTransfers signalAllDownloadStreams];
  }
}

- (void)rescheduleJobsPendingRecentsAndFavoritesFetchInZone:(id)zone
{
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  dbRowID = [zoneCopy dbRowID];
  [clientDB execute:{@"UPDATE client_downloads SET throttle_state = 1 WHERE throttle_state = 40   AND throttle_state != 0   AND zone_rowid = %@", dbRowID}];

  if ([clientDB changes])
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSDownloader rescheduleJobsPendingWinnerForItem:];
    }

    if ([zoneCopy isSharedZone])
    {
      asSharedZone = [zoneCopy asSharedZone];
      transferSyncContext = [asSharedZone transferSyncContext];
      [transferSyncContext signalAllDownloadStreams];
    }

    else
    {
      dbRowID2 = [zoneCopy dbRowID];
      asSharedZone = [clientDB fetch:{@"SELECT distinct app_library_rowid FROM client_downloads WHERE throttle_state = 1   AND throttle_state != 0   AND zone_rowid = %@", dbRowID2}];

      if ([asSharedZone next])
      {
        do
        {
          v12 = [asSharedZone numberAtIndex:0];
          v13 = [(BRCAccountSession *)self->super.super._session appLibraryByRowID:v12];
          transferSyncContext2 = [v13 transferSyncContext];
          [transferSyncContext2 signalAllDownloadStreams];
        }

        while (([asSharedZone next] & 1) != 0);
      }
    }
  }
}

- (void)_cancelJobs:(id)jobs state:(int)state
{
  v4 = *&state;
  v6 = MEMORY[0x277CCA9B8];
  jobsCopy = jobs;
  brc_errorOperationCancelled = [v6 brc_errorOperationCancelled];
  [(BRCFSDownloader *)self _cancelJobs:jobsCopy state:v4 cancelError:brc_errorOperationCancelled];
}

- (void)_cancelJobs:(id)jobs state:(int)state cancelError:(id)error
{
  v36 = *&state;
  v54 = *MEMORY[0x277D85DE8];
  jobsCopy = jobs;
  errorCopy = error;
  if ([jobsCopy next])
  {
    do
    {
      context = objc_autoreleasePoolPush();
      v41 = [jobsCopy numberAtIndex:0];
      v8 = [jobsCopy intAtIndex:1];
      v42 = [jobsCopy stringAtIndex:2];
      v9 = [jobsCopy uuidAtIndex:3];
      v10 = [jobsCopy stringAtIndex:4];
      v11 = [jobsCopy numberAtIndex:5];
      v12 = [jobsCopy numberAtIndex:6];
      v13 = [jobsCopy intAtIndex:7];
      v14 = [jobsCopy longLongAtIndex:8];
      v39 = v11;
      v15 = [(BRCAccountSession *)self->super.super._session appLibraryByRowID:v11];
      v37 = [(BRCAccountSession *)self->super.super._session serverZoneByRowID:v12];
      v38 = v15;
      v16 = [BRCSyncContext transferContextForServerZone:"transferContextForServerZone:appLibrary:" appLibrary:?];
      v43 = v9;
      if (v13 == 1)
      {
        v17 = brc_bread_crumbs();
        v18 = brc_default_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          v34 = BRCPrettyPrintEnum();
          *buf = 138413058;
          v45 = v41;
          v46 = 2080;
          v47 = v34;
          v48 = 2112;
          v49 = v42;
          v50 = 2112;
          v51 = v17;
          _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] Downloader[%@-%s-%@]: Cancelling download%@", buf, 0x2Au);
        }

        self->_activeDownloadsSize -= v14;
        v9 = v43;
        if (v8 == 3 || !v8)
        {
          itemFetcher = [(BRCAccountSession *)self->super.super._session itemFetcher];
          v20 = [itemFetcher itemByRowID:{objc_msgSend(v41, "unsignedIntegerValue")}];
          asDocument = [v20 asDocument];

          session = self->super.super._session;
          v23 = 0;
          downloadTrackers = [(BRCAccountSession *)session downloadTrackers];
          [downloadTrackers document:asDocument didCompleteDownloadEtagIfLoser:v23 kind:v8 withError:errorCopy];

          v9 = v43;
        }
      }

      if (v9)
      {
        v25 = [v16 downloadStreamForKind:v8];
        [v25 cancelTransferID:v41 operationID:v9];
      }

      if (v10)
      {
        clientReadWriteDatabaseFacade = [(BRCAccountSession *)self->super.super._session clientReadWriteDatabaseFacade];
        v27 = [clientReadWriteDatabaseFacade itemIDByRowID:{objc_msgSend(v41, "unsignedIntegerValue")}];

        v28 = brc_bread_crumbs();
        v29 = brc_default_log();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v33 = BRCPrettyPrintEnum();
          *buf = 138413314;
          v45 = v41;
          v46 = 2080;
          v47 = v33;
          v48 = 2112;
          v49 = v42;
          v50 = 2112;
          v51 = v10;
          v52 = 2112;
          v53 = v28;
          _os_log_debug_impl(&dword_223E7A000, v29, OS_LOG_TYPE_DEBUG, "[DEBUG] Downloader[%@-%s-%@]: Cleaning up download stage: %@%@", buf, 0x34u);
        }

        stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
        [stageRegistry cleanupStagedDownloadWithID:v10 forItemID:v27];

        v9 = v43;
      }

      if (v16)
      {
        v31 = [jobsCopy db];
        contextIdentifier = [v16 contextIdentifier];
        [v31 execute:{@"UPDATE client_downloads SET  throttle_state = %d, transfer_queue = %@, transfer_record = NULL, transfer_stage = NULL, transfer_operation = NULL, unit_count_completed = 0 WHERE throttle_id = %@ AND download_kind = %u AND download_etag = %@", v36, contextIdentifier, v41, v8, v42}];
      }

      objc_autoreleasePoolPop(context);
    }

    while (([jobsCopy next] & 1) != 0);
  }

  [jobsCopy close];
}

- (void)_finishDownloadCleanup:(id)cleanup
{
  cleanupCopy = cleanup;
  clientZone = [cleanupCopy clientZone];
  itemID = [cleanupCopy itemID];
  v5 = [clientZone popDownloadedBlockForItemID:itemID];

  if (v5)
  {
    (v5)[2](v5, cleanupCopy);
  }
}

- (void)cancelOngoingDownloadsDueToMoreRecentServerVersionForItem:(id)item
{
  v15 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = +[BRCFSDownloaderUtil cancellableDownloadKinds];
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

        -[BRCFSDownloader cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:](self, "cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:", itemCopy, [*(*(&v10 + 1) + 8 * v9++) intValue], 0, 1, 1);
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)_getCancelErrorFromCancelReason:(int)reason
{
  if (reason == 1)
  {
    brc_errorRescheduleDownloadForMoreRecentServerVersion = [MEMORY[0x277CCA9B8] brc_errorRescheduleDownloadForMoreRecentServerVersion];
  }

  else
  {
    if (reason)
    {
      v3 = brc_bread_crumbs();
      v4 = brc_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [BRCFSDownloader _getCancelErrorFromCancelReason:];
      }
    }

    brc_errorRescheduleDownloadForMoreRecentServerVersion = [MEMORY[0x277CCA9B8] brc_errorDownloadCancelled];
  }

  return brc_errorRescheduleDownloadForMoreRecentServerVersion;
}

- (id)_buildDownloadActiveJobsResultSetForThrottleID:(unint64_t)d etag:(id)etag kind:(int)kind
{
  v5 = *&kind;
  etagCopy = etag;
  v9 = etagCopy;
  if (etagCopy && v5 != -1)
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v11 = [clientDB fetch:{@"SELECT throttle_id, download_kind, download_etag, transfer_operation, transfer_stage, app_library_rowid, zone_rowid, throttle_state, transfer_size FROM client_downloads WHERE throttle_id = %lld AND download_kind = %u AND download_etag = %@   AND throttle_state != 0", d, v5, v9}];
LABEL_13:
    v12 = v11;

    goto LABEL_14;
  }

  if (etagCopy && v5 == -1)
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v11 = [clientDB fetch:{@"SELECT throttle_id, download_kind, download_etag, transfer_operation, transfer_stage, app_library_rowid, zone_rowid, throttle_state, transfer_size FROM client_downloads WHERE throttle_id = %lld AND download_etag = %@   AND throttle_state != 0", d, v9, v15}];
    goto LABEL_13;
  }

  if (!etagCopy && v5 != -1)
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v11 = [clientDB fetch:{@"SELECT throttle_id, download_kind, download_etag, transfer_operation, transfer_stage, app_library_rowid, zone_rowid, throttle_state, transfer_size FROM client_downloads WHERE throttle_id = %lld AND download_kind = %u   AND throttle_state != 0", d, v5, v15}];
    goto LABEL_13;
  }

  v12 = 0;
  if (!etagCopy && v5 == -1)
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v11 = [clientDB fetch:{@"SELECT throttle_id, download_kind, download_etag, transfer_operation, transfer_stage, app_library_rowid, zone_rowid, throttle_state, transfer_size FROM client_downloads WHERE throttle_id = %lld    AND throttle_state != 0", d, v14, v15}];
    goto LABEL_13;
  }

LABEL_14:

  return v12;
}

- (void)cancelAndCleanupItemDownload:(id)download kind:(int)kind etag:(id)etag andNotifyDownloadTrackers:(BOOL)trackers cancelReason:(int)reason
{
  v7 = *&reason;
  trackersCopy = trackers;
  v9 = *&kind;
  downloadCopy = download;
  etagCopy = etag;
  v13 = etagCopy;
  if (v7 == 1)
  {
    if (etagCopy)
    {
      [BRCFSDownloader cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:];
    }

    v14 = +[BRCFSDownloaderUtil cancellableDownloadKinds];
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v9];
    v16 = [v14 containsObject:v15];

    if ((v16 & 1) == 0)
    {
      [BRCFSDownloader cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:];
    }
  }

  v17 = -[BRCFSDownloader _buildDownloadActiveJobsResultSetForThrottleID:etag:kind:](self, "_buildDownloadActiveJobsResultSetForThrottleID:etag:kind:", [downloadCopy dbRowID], v13, v9);
  v18 = [(BRCFSDownloader *)self _getCancelErrorFromCancelReason:v7];
  [(BRCFSDownloader *)self _cancelJobs:v17 state:0 cancelError:v18];
  v19 = +[BRCFSDownloaderUtil cancellableDownloadKinds];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v9];
  v21 = [v19 containsObject:v20];

  if (v21)
  {
    [(BRCFSDownloader *)self _finishDownloadCleanup:downloadCopy];
    if (trackersCopy)
    {
      downloadTrackers = [(BRCAccountSession *)self->super.super._session downloadTrackers];
      v23 = downloadTrackers;
      v24 = downloadCopy;
      v25 = 0;
      v26 = v9;
LABEL_12:
      [downloadTrackers document:v24 didCompleteDownloadEtagIfLoser:v25 kind:v26 withError:v18];
    }
  }

  else if (v9 == 2 && trackersCopy)
  {
    downloadTrackers = [(BRCAccountSession *)self->super.super._session downloadTrackers];
    v23 = downloadTrackers;
    v24 = downloadCopy;
    v25 = v13;
    v26 = 2;
    goto LABEL_12;
  }
}

- (void)cancelAndCleanupItemDownload:(id)download kind:(int)kind
{
  v4 = *&kind;
  downloadCopy = download;
  v6 = -[BRCFSDownloader _buildDownloadActiveJobsResultSetForThrottleID:etag:kind:](self, "_buildDownloadActiveJobsResultSetForThrottleID:etag:kind:", [downloadCopy dbRowID], 0, v4);
  [(BRCFSDownloader *)self _cancelJobs:v6 state:0];
  v7 = +[BRCFSDownloaderUtil cancellableDownloadKinds];
  v8 = [MEMORY[0x277CCABB0] numberWithInt:v4];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    [(BRCFSDownloader *)self _finishDownloadCleanup:downloadCopy];
  }
}

- (void)cancelAndCleanupItemDownloads:(id)downloads
{
  downloadsCopy = downloads;
  v5 = -[BRCFSDownloader _buildDownloadActiveJobsResultSetForThrottleID:etag:kind:](self, "_buildDownloadActiveJobsResultSetForThrottleID:etag:kind:", [downloadsCopy dbRowID], 0, 0xFFFFFFFFLL);
  [(BRCFSDownloader *)self _cancelJobs:v5 state:0];
  [(BRCFSDownloader *)self _finishDownloadCleanup:downloadsCopy];
}

- (void)deleteJobsMatching:(id)matching
{
  session = self->super.super._session;
  matchingCopy = matching;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];
  v8 = [clientDB fetch:{@"SELECT throttle_id, download_kind, download_etag, transfer_operation, transfer_stage, app_library_rowid, zone_rowid, throttle_state, transfer_size FROM client_downloads WHERE %@ AND throttle_state > %d", matchingJobsWhereSQLClause, 0}];

  [(BRCFSDownloader *)self _cancelJobs:v8 state:0];
  v9.receiver = self;
  v9.super_class = BRCFSDownloader;
  [(BRCFSSchedulerBase *)&v9 deleteJobsMatching:matchingCopy];
}

- (void)updateContentDownloadForMetaOnlyChange:(id)change fromEtag:(id)etag toEtag:(id)toEtag
{
  session = self->super.super._session;
  toEtagCopy = toEtag;
  etagCopy = etag;
  changeCopy = change;
  clientDB = [(BRCAccountSession *)session clientDB];
  dbRowID = [changeCopy dbRowID];

  [clientDB execute:{@"UPDATE client_downloads SET download_etag = %@ WHERE throttle_id = %lld AND download_etag = %@ AND download_kind = %d", toEtagCopy, dbRowID, etagCopy, 0}];
}

- (unint64_t)sizeOfActiveDownloads
{
  v32 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  v4 = date;
  if (!self->_lastDownloadRefresh || ([date timeIntervalSinceDate:?], v5 > self->_activeDownloadSizeRefreshInterval))
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__13;
    v24 = __Block_byref_object_dispose__13;
    v25 = 0;
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __40__BRCFSDownloader_sizeOfActiveDownloads__block_invoke;
    v17 = &unk_278502000;
    v19 = &v20;
    v7 = clientDB;
    v18 = v7;
    [v7 disableProfilingForQueriesInBlock:&v14];
    objc_storeStrong(&self->_lastDownloadRefresh, v4);
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      activeDownloadsSize = self->_activeDownloadsSize;
      longLongValue = [v21[5] longLongValue];
      *buf = 134218498;
      v27 = activeDownloadsSize;
      v28 = 2048;
      v29 = longLongValue;
      v30 = 2112;
      v31 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Refreshed active download size %llu -> %llu%@", buf, 0x20u);
    }

    self->_activeDownloadsSize = [v21[5] longLongValue];
    _Block_object_dispose(&v20, 8);
  }

  v10 = self->_activeDownloadsSize;

  return v10;
}

uint64_t __40__BRCFSDownloader_sizeOfActiveDownloads__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) numberWithSQL:@"SELECT SUM(transfer_size) FROM client_downloads WHERE throttle_state = 1"];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)makeContentLive:(id)live
{
  liveCopy = live;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__BRCFSDownloader_makeContentLive___block_invoke;
  v8[3] = &unk_278500FA8;
  v9 = liveCopy;
  selfCopy = self;
  v6 = liveCopy;
  LOBYTE(liveCopy) = [clientDB groupInTransaction:v8];

  return liveCopy;
}

uint64_t __35__BRCFSDownloader_makeContentLive___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 execute:{@"DELETE FROM client_pkg_upload_items WHERE item_rowid = %llu", objc_msgSend(*(a1 + 32), "dbRowID")}];
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v3 changes];
      v15 = [*(a1 + 32) fileObjectID];
      *buf = 134218498;
      v17 = v14;
      v18 = 2112;
      v19 = v15;
      v20 = 2112;
      v21 = v5;
      _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] removed %lld items in pkg:%@%@", buf, 0x20u);
    }

    v9 = a1 + 32;
    v7 = *(a1 + 32);
    v8 = *(v9 + 8);
    v10 = [v7 currentVersion];
    v11 = [v10 ckInfo];
    v12 = [v11 etag];
    [v8 cancelAndCleanupItemDownload:v7 kind:0 etag:v12];
  }

  return v4;
}

- (BOOL)scheduleContentDownloadForItem:(id)item serverItem:(id)serverItem options:(unint64_t)options etagIfLoser:(id)loser stageFileName:(id)name error:(id *)error
{
  v41 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  serverItemCopy = serverItem;
  loserCopy = loser;
  nameCopy = name;
  memset(v30, 0, sizeof(v30));
  __brc_create_section(0, "[BRCFSDownloader scheduleContentDownloadForItem:serverItem:options:etagIfLoser:stageFileName:error:]", 999, 0, v30);
  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v27 = v30[0];
    itemID = [itemCopy itemID];
    *buf = 134219010;
    v32 = v27;
    v33 = 2112;
    v34 = itemID;
    v35 = 2112;
    v36 = itemCopy;
    v37 = 2112;
    v38 = serverItemCopy;
    v39 = 2112;
    v40 = v18;
    v29 = itemID;
    _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx scheduling content download for %@\nlocal: %@\nserver: %@%@", buf, 0x34u);
  }

  v20 = [(BRCFSDownloader *)self getDownloadEtagForItem:itemCopy etagIfLoser:loserCopy];
  v21 = [BRCFSDownloaderUtil downloadKindWithEtagIfLoser:loserCopy options:options];
  v22 = -[BRCDownloadJobIdentifier initWithDBRowID:etag:kind:]([BRCDownloadJobIdentifier alloc], "initWithDBRowID:etag:kind:", [itemCopy dbRowID], v20, v21);
  if ([(BRCFSSchedulerBase *)self jobStateFor:v22]== 1)
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSDownloader scheduleContentDownloadForItem:serverItem:options:etagIfLoser:stageFileName:error:];
    }

    v25 = 1;
  }

  else
  {
    v25 = [(BRCFSDownloader *)self _createDownloadingJobForItem:itemCopy state:1 kind:v21 etag:v20 stageFileName:nameCopy error:error];
  }

  __brc_leave_section(v30);
  return v25;
}

- (void)schedule
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  readerScanBatchSize = [v3 readerScanBatchSize];

  v5 = [MEMORY[0x277D82C08] formatInjection:@"transfer_queue = '_retry' AND transfer_operation IS NULL"];
  v6 = [MEMORY[0x277D82C18] rawInjection:"rowid length:{throttle_id, app_library_rowid, zone_rowid, download_kind", 64}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __27__BRCFSDownloader_schedule__block_invoke;
  v7[3] = &unk_278502028;
  v7[4] = self;
  [(BRCFSSchedulerBase *)self scheduleWithBatchSize:readerScanBatchSize whereSQLClause:v5 columns:v6 actionHandler:v7];
}

void __27__BRCFSDownloader_schedule__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 numberAtIndex:a3];
  v7 = [v5 numberAtIndex:(a3 + 1)];
  v8 = [v5 numberAtIndex:(a3 + 2)];
  v9 = [v5 numberAtIndex:(a3 + 3)];
  v10 = [v5 intAtIndex:(a3 + 4)];
  v11 = [*(*(a1 + 32) + 8) appLibraryByRowID:v8];
  v12 = [*(*(a1 + 32) + 8) serverZoneByRowID:v9];
  v13 = [BRCSyncContext transferContextForServerZone:v12 appLibrary:v11];
  v22 = [v13 contextIdentifier];
  if (v11)
  {
    v21 = v7;
    v14 = [v5 db];
    v15 = [v13 contextIdentifier];
    [v14 execute:{@"UPDATE client_downloads SET transfer_queue = %@ WHERE rowid = %@", v15, v6}];

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      v27 = 2112;
      v28 = v16;
      _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Downloader[%@]: job has been put back in queue %@%@", buf, 0x20u);
    }

    v18 = [v13 downloadStreamForKind:v10];
    [v18 signal];
    v7 = v21;
  }

  else
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 138413058;
      v24 = v7;
      v25 = 2112;
      v26 = v8;
      v27 = 2112;
      v28 = v6;
      v29 = 2112;
      v30 = v19;
      _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Downloader[%@]: failed to find app library with id %@, dropping the download %@%@", buf, 0x2Au);
    }

    v18 = [v5 db];
    [v18 execute:{@"DELETE FROM client_downloads WHERE rowid = %@", v6}];
  }
}

- (id)generateContentStageFileNameForItem:(id)item etag:(id)etag
{
  etagCopy = etag;
  itemCopy = item;
  v7 = [itemCopy st];
  logicalName = [v7 logicalName];
  br_pathExtension = [logicalName br_pathExtension];

  v10 = [br_pathExtension length];
  v11 = MEMORY[0x277CCACA8];
  dbRowID = [itemCopy dbRowID];

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v15 = uUIDString;
  if (v10)
  {
    [v11 stringWithFormat:@"content-%lld-%@-%@.%@", dbRowID, etagCopy, uUIDString, br_pathExtension];
  }

  else
  {
    [v11 stringWithFormat:@"content-%lld-%@-%@", dbRowID, etagCopy, uUIDString, v18];
  }
  v16 = ;

  return v16;
}

- (void)_sendContentsBatch:(id)batch sizeHint:(int64_t)hint maxRecordsCount:(unint64_t)count kind:(int)kind
{
  v90 = *MEMORY[0x277D85DE8];
  batchCopy = batch;
  v8 = +[BRCAccountsManager sharedManager];
  isInSyncBubble = [v8 isInSyncBubble];

  if (isInSyncBubble)
  {
    [BRCFSDownloader _sendContentsBatch:sizeHint:maxRecordsCount:kind:];
  }

  syncContext = [batchCopy syncContext];
  if ([0 itemsCount] >= count)
  {
    nextDocumentItem = 0;
    v11 = 0;
    v57 = 0;
    v13 = 0;
    v34 = 0;
    goto LABEL_60;
  }

  v11 = 0;
  nextDocumentItem = 0;
  v75 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  *&v10 = 138412546;
  v68 = v10;
  countCopy = count;
  v69 = batchCopy;
  while (1)
  {
    v16 = nextDocumentItem;
    context = objc_autoreleasePoolPush();
    nextDocumentItem = [batchCopy nextDocumentItem];

    if (!nextDocumentItem)
    {
      break;
    }

    stageID = [batchCopy stageID];

    etag = [batchCopy etag];

    completedUnitCount = [batchCopy completedUnitCount];
    v77 = [batchCopy transferQOS] > 24;
    v19 = stageID;
    selfCopy2 = self;
    if (!stageID)
    {
      v21 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v85 = v21;
        _os_log_debug_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEBUG, "[DEBUG] No stage ID, createing a new one%@", buf, 0xCu);
      }

      v19 = [(BRCFSDownloader *)self generateContentStageFileNameForItem:nextDocumentItem etag:etag];
    }

    v79 = v19;
    if (v11)
    {
      v76 = v11;
    }

    else
    {
      v23 = [BRCDownloadContentsBatchOperation alloc];
      session = self->super.super._session;
      hasWorkGroup = [(BRCFSSchedulerBase *)self hasWorkGroup];
      workloop = [(BRCDeadlineScheduler *)self->_downloadsDeadlineScheduler workloop];
      v27 = [(BRCDownloadContentsBatchOperation *)v23 initWithSyncContext:syncContext sessionContext:session group:hasWorkGroup callBackQueueTarget:workloop];

      operationID = [(_BRCOperation *)v27 operationID];

      v81[0] = MEMORY[0x277D85DD0];
      v81[1] = 3221225472;
      v81[2] = __68__BRCFSDownloader__sendContentsBatch_sizeHint_maxRecordsCount_kind___block_invoke;
      v81[3] = &unk_278502050;
      v81[4] = self;
      selfCopy2 = self;
      v82 = syncContext;
      v75 = operationID;
      v76 = v27;
      v83 = v75;
      [(BRCDownloadContentsBatchOperation *)v27 setPerDownloadCompletionBlock:v81];
    }

    v29 = [BRCDownloadContent alloc];
    if (kind == 2)
    {
      v30 = etag;
    }

    else
    {
      v30 = 0;
    }

    kind = [batchCopy kind];
    stageRegistry = [(BRCAccountSession *)selfCopy2->super.super._session stageRegistry];
    v33 = v30;
    v34 = etag;
    v35 = [(BRCDownloadContent *)v29 initWithDocument:nextDocumentItem stageID:v79 etagIfLoser:v33 downloadKind:kind downloadStager:stageRegistry];

    if (kind != 2)
    {
      etag2 = [(BRCDownload *)v35 etag];
      if ([etag2 isEqualToString:etag])
      {
      }

      else
      {
        currentVersion = [(BRCDownloadContent *)nextDocumentItem currentVersion];
        oldVersionIdentifier = [currentVersion oldVersionIdentifier];
        v39 = [oldVersionIdentifier isEqualToString:etag];

        v34 = etag;
        if ((v39 & 1) == 0)
        {
          if (([(BRCDownloadContent *)nextDocumentItem isDocumentBeingCopiedToNewZone]& 1) != 0)
          {
            v55 = brc_bread_crumbs();
            v56 = brc_default_log();
            v11 = v76;
            v54 = countCopy;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
            {
              *buf = v68;
              v85 = nextDocumentItem;
              v86 = 2112;
              v87 = v55;
              _os_log_debug_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEBUG, "[DEBUG] Seems that item %@ has started a czm after requesting a download%@", buf, 0x16u);
            }
          }

          else
          {
            v55 = brc_bread_crumbs();
            v56 = brc_default_log();
            v11 = v76;
            v54 = countCopy;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v85 = v35;
              v86 = 2112;
              v87 = v34;
              v88 = 2112;
              v89 = v55;
              _os_log_impl(&dword_223E7A000, v56, OS_LOG_TYPE_DEFAULT, "[WARNING] item download %@ etag changed from %@%@", buf, 0x20u);
            }
          }

          -[BRCFSDownloader cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:](self, "cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:", nextDocumentItem, [batchCopy kind], v34, 1);
          goto LABEL_38;
        }
      }
    }

    selfCopy5 = self;
    if (![(BRCDownloadContent *)v35 requiresTwoPhase])
    {
      willRetryOperationProgress = self->_willRetryOperationProgress;
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BRCDownloadContent dbRowID](nextDocumentItem, "dbRowID")}];
      v43 = [(NSMutableDictionary *)willRetryOperationProgress objectForKeyedSubscript:v42];

      if (v43)
      {
        v44 = self->_willRetryOperationProgress;
        v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[BRCDownloadContent dbRowID](nextDocumentItem, "dbRowID")}];
        [(NSMutableDictionary *)v44 removeObjectForKey:v45];

        v46 = brc_bread_crumbs();
        v47 = brc_default_log();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          *buf = v68;
          v85 = v43;
          v86 = 2112;
          v87 = v46;
          _os_log_debug_impl(&dword_223E7A000, v47, OS_LOG_TYPE_DEBUG, "[DEBUG] Re-use progress %@%@", buf, 0x16u);
        }

        v34 = etag;
        selfCopy5 = self;
        batchCopy = v69;
      }

      else
      {
        currentVersion2 = [(BRCDownloadContent *)nextDocumentItem currentVersion];
        v49 = [currentVersion2 size];

        v50 = completedUnitCount;
        v34 = etag;
        batchCopy = v69;
        if (completedUnitCount > v49)
        {
          v51 = brc_bread_crumbs();
          v52 = brc_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v85 = v51;
            _os_log_impl(&dword_223E7A000, v52, OS_LOG_TYPE_DEFAULT, "[WARNING] Completed unit count is greater than version size; ignoring value%@", buf, 0xCu);
          }

          v50 = 0;
        }

        selfCopy5 = self;
        v43 = [(NSMutableDictionary *)self->_pendingOperationProgress objectForKeyedSubscript:v79];
        if (!v43 && (![(BRCDownloadContent *)v35 kind]|| [(BRCDownloadContent *)v35 kind]== 3))
        {
          v73 = brc_bread_crumbs();
          v53 = brc_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
          {
            *buf = v68;
            v85 = v79;
            v86 = 2112;
            v87 = v73;
            _os_log_fault_impl(&dword_223E7A000, v53, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Failed finding a progress for stageID: %@%@", buf, 0x16u);
          }

          v34 = etag;
        }

        [(BRCDownloadContent *)v43 updateToBeDownloadProgressForDocument:nextDocumentItem totalUnitCount:v49 completedUnitCount:v50];
      }

      [(BRCDownloadContent *)v35 setProgress:v43];
    }

    v11 = v76;
    [(BRCDownloadContentsBatchOperation *)v76 addDownload:v35];
    [(BRCFSDownloader *)selfCopy5 _willDownload:v35 operationID:v75];
    [(BRCDownloadContent *)nextDocumentItem triggerNotificationIfNeeded];
    v54 = countCopy;
LABEL_38:
    v15 |= v77;

    objc_autoreleasePoolPop(context);
    v14 = v34;
    v13 = v79;
    if ([(BRCTransferBatchOperation *)v11 itemsCount]>= v54)
    {
      goto LABEL_48;
    }
  }

  objc_autoreleasePoolPop(context);
  v34 = v14;
LABEL_48:
  if (v11)
  {
    if ([batchCopy kind] == 3)
    {
      br_downloadSpeculative = [MEMORY[0x277CBC4F8] br_downloadSpeculative];
      if ((v15 & 1) == 0)
      {
        [(BRCDownloadContentsBatchOperation *)v11 setQueuePriority:-8];
        [(BRCDownloadContentsBatchOperation *)v11 setQualityOfService:9];
        goto LABEL_56;
      }

LABEL_54:
      v59 = v11;
      v60 = 4;
    }

    else
    {
      if (v15)
      {
        br_downloadSpeculative = [MEMORY[0x277CBC4F8] br_downloadUserInitiated];
        goto LABEL_54;
      }

      br_downloadSpeculative = [MEMORY[0x277CBC4F8] br_downloadUpdatedDocuments];
      v59 = v11;
      if (kind == 2)
      {
        v60 = -4;
      }

      else
      {
        v60 = 0;
      }
    }

    [(BRCDownloadContentsBatchOperation *)v59 setQueuePriority:v60, v68];
LABEL_56:
    [(_BRCOperation *)v11 setNonDiscretionary:1, v68];
    [(_BRCOperation *)v11 setGroup:br_downloadSpeculative];
    v61 = brc_bread_crumbs();
    v62 = brc_default_log();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = v11;
      itemsCount = [(BRCTransferBatchOperation *)v11 itemsCount];
      [syncContext contextIdentifier];
      v66 = v65 = v34;
      *buf = 134218498;
      v85 = itemsCount;
      v11 = v63;
      v86 = 2112;
      v87 = v66;
      v88 = 2112;
      v89 = v61;
      _os_log_impl(&dword_223E7A000, v62, OS_LOG_TYPE_DEFAULT, "[NOTICE] downloading %ld documents in %@%@", buf, 0x20u);

      v34 = v65;
    }

    v67 = [syncContext downloadStreamForKind:kind];
    [v67 addBatchOperation:v11];
  }

  v57 = v75;
LABEL_60:
}

- (void)_postponeLoserForWinner:(int64_t)winner etag:(id)etag
{
  v18 = *MEMORY[0x277D85DE8];
  etagCopy = etag;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB execute:{@"UPDATE client_downloads    SET throttle_state = %u  WHERE throttle_id = %lld AND download_kind = %u AND download_etag = %@", 42, winner, 2, etagCopy}];

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    winnerCopy = winner;
    v12 = 2080;
    v13 = BRCPrettyPrintEnum();
    v14 = 2112;
    v15 = etagCopy;
    v16 = 2112;
    v17 = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Downloader[%lld-%s-%@]: postpone because loser is more recent than live item%@", buf, 0x2Au);
  }
}

- (void)_transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority supportedKinds:(id)kinds
{
  contextCopy = context;
  kindsCopy = kinds;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB assertOnQueue];
  v32 = 0x7FFFFFFFFFFFFFFFLL;
  v13 = brc_current_date_nsec();
  if (![(BRCFSSchedulerBase *)self isCancelled])
  {
    contextIdentifier = [contextCopy contextIdentifier];
    v15 = [clientDB fetch:{@"  SELECT throttle_id, next_retry_stamp, download_kind, download_etag     FROM client_downloads    WHERE throttle_state = 1      AND transfer_queue = %@      AND transfer_operation IS NULL      AND download_priority >= %ld      AND indexset_contains(%p, download_kind)  ORDER BY download_priority DESC, download_request_stamp DESC", contextIdentifier, priority, kindsCopy}];

    firstIndex = [kindsCopy firstIndex];
    if ([v15 next])
    {
      v28 = kindsCopy;
      v29 = contextCopy;
      v17 = 0;
      do
      {
        v18 = objc_autoreleasePoolPush();
        v19 = [v15 unsignedIntegerAtIndex:0];
        v20 = [v15 longLongAtIndex:1];
        firstIndex = [v15 intAtIndex:2];
        v21 = [v15 stringAtIndex:3];
        v22 = v21;
        if (v20 <= v13)
        {
          [v15 close];
          v24 = [[BRCFSDownloaderBatchEnumerator alloc] initWithSyncContext:v29 kind:firstIndex now:v13 retryQueueKick:&v32];

          [(BRCFSDownloader *)self _sendContentsBatch:v24 sizeHint:hint maxRecordsCount:count kind:firstIndex];
          v17 = v24;
        }

        else
        {
          v23 = v32;
          if (v32 >= v20)
          {
            v23 = v20;
          }

          v32 = v23;
          [clientDB execute:{@"UPDATE client_downloads    SET transfer_queue = '_retry'  WHERE throttle_id = %ld AND download_kind = %u AND download_etag = %@", v19, firstIndex, v21}];
        }

        objc_autoreleasePoolPop(v18);
      }

      while (([v15 next] & 1) != 0);
      if (v32 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [(BRCFSSchedulerBase *)self signalWithDeadline:?];
      }

      kindsCopy = v28;
      contextCopy = v29;
    }

    else
    {
      v17 = 0;
    }

    contextIdentifier2 = [contextCopy contextIdentifier];
    v26 = [clientDB numberWithSQL:{@"SELECT MIN(next_retry_stamp) FROM client_downloads   WHERE throttle_state = 1     AND transfer_queue = %@      AND transfer_operation IS NULL      AND indexset_contains(%p, download_kind) ", contextIdentifier2, kindsCopy}];

    if (v26)
    {
      v27 = [contextCopy downloadStreamForKind:firstIndex];
      [v27 signalWithDeadline:{objc_msgSend(v26, "longLongValue")}];
    }
  }
}

- (void)transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority supportedKinds:(id)kinds completionBlock:(id)block
{
  v46 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  kindsCopy = kinds;
  blockCopy = block;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  serialQueue = [clientDB serialQueue];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __130__BRCFSDownloader_transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority_supportedKinds_completionBlock___block_invoke;
  v31[3] = &unk_278502078;
  v31[4] = self;
  v18 = contextCopy;
  v32 = v18;
  countCopy = count;
  hintCopy = hint;
  priorityCopy = priority;
  v19 = kindsCopy;
  v33 = v19;
  v20 = blockCopy;
  v34 = v20;
  v21 = serialQueue;
  v22 = v31;
  v23 = objc_autoreleasePoolPush();
  v38 = 0uLL;
  v39 = 0;
  __brc_create_section(0, "dispatch_async_with_logs", 283, 0, &v38);
  v24 = brc_bread_crumbs();
  v25 = brc_default_log();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    v28 = v38;
    label = dispatch_queue_get_label(v21);
    *block = 134218498;
    *&block[4] = v28;
    *&block[12] = 2080;
    *&block[14] = label;
    *&block[22] = 2112;
    v41 = v24;
    _os_log_debug_impl(&dword_223E7A000, v25, OS_LOG_TYPE_DEBUG, "[DEBUG] ┣%llx dispatching to %s%@", block, 0x20u);
  }

  v44 = v38;
  v45 = v39;
  *block = MEMORY[0x277D85DD0];
  *&block[8] = 3221225472;
  *&block[16] = __dispatch_async_with_logs_block_invoke_7;
  v41 = &unk_2784FF568;
  v26 = v21;
  v42 = v26;
  v27 = v22;
  v43 = v27;
  dispatch_async(v26, block);

  objc_autoreleasePoolPop(v23);
}

uint64_t __130__BRCFSDownloader_transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority_supportedKinds_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _transferStreamOfSyncContext:*(a1 + 40) didBecomeReadyWithMaxRecordsCount:*(a1 + 64) sizeHint:*(a1 + 72) priority:*(a1 + 80) supportedKinds:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 16);

  return v2();
}

- (void)_reportDownloadErrorForDocument:(id)document error:(id)error
{
  session = self->super.super._session;
  errorCopy = error;
  documentCopy = document;
  localItemSyncErrorReporter = [(BRCAccountSession *)session localItemSyncErrorReporter];
  dbRowID = [documentCopy dbRowID];

  [localItemSyncErrorReporter reportDownloadErrorForItemWithRowID:dbRowID error:errorCopy underlyingError:0];
}

- (void)_clearDownloadErrorForDocument:(id)document
{
  session = self->super.super._session;
  documentCopy = document;
  localItemSyncErrorReporter = [(BRCAccountSession *)session localItemSyncErrorReporter];
  dbRowID = [documentCopy dbRowID];

  [localItemSyncErrorReporter clearDownloadErrorForItemWithRowID:dbRowID];
}

- (void)updateLoserNotificationOfItem:(id)item etag:(id)etag downloadKind:(int)kind notification:(id)notification
{
  v7 = *&kind;
  etagCopy = etag;
  notificationCopy = notification;
  session = self->super.super._session;
  itemCopy = item;
  clientDB = [(BRCAccountSession *)session clientDB];
  dbRowID = [itemCopy dbRowID];

  v16 = [clientDB fetch:{@"SELECT transfer_record  FROM client_downloads  WHERE throttle_id = %lld AND download_kind = %u AND download_etag = %@", dbRowID, v7, etagCopy}];
  if ([v16 next])
  {
    v17 = [v16 unarchivedObjectOfClass:objc_opt_class() atIndex:0];
    if ([v17 brc_currentUserOwnsLastEditorDeviceWithSessionContext:self->super.super._session])
    {
      brc_lastEditorDeviceName = [v17 brc_lastEditorDeviceName];
      v19 = 0;
    }

    else
    {
      cachedCurrentUserRecordName = [(BRCAccountSession *)self->super.super._session cachedCurrentUserRecordName];
      v26 = 0;
      v21 = [v17 brc_lastModifiedUserRecordNameWithCurrentUserRecordName:cachedCurrentUserRecordName personNameComponents:&v26];
      v19 = v26;

      brc_lastEditorDeviceName = 0;
    }

    v24 = 0;
    v25 = 0;
    [v17 deserializeModifiedTime:&v25 size:&v24 error:0];
    v22 = v25;
    v23 = v24;
    [notificationCopy markAsLoserVersionWithEtag:etagCopy modificationDate:v22 editorNameComponents:v19 lastEditorDeviceName:brc_lastEditorDeviceName size:v23];
  }
}

- (int64_t)nextAllowedScheduleForItem:(id)item withDownloadKind:(int)kind
{
  v4 = *&kind;
  itemCopy = item;
  serverZone = [itemCopy serverZone];
  appLibrary = [itemCopy appLibrary];

  v8 = [BRCSyncContext transferContextForServerZone:serverZone appLibrary:appLibrary];

  v9 = [v8 downloadStreamForKind:v4];
  minSignalTime = [v9 minSignalTime];

  return minSignalTime;
}

- (void)_createDownloadingJobForItem:(os_log_t)log state:kind:etag:stageFileName:error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = 136315906;
  v4 = "[BRCFSDownloader _createDownloadingJobForItem:state:kind:etag:stageFileName:error:]";
  v5 = 2080;
  v6 = "(passed to caller)";
  v7 = 2112;
  v8 = a1;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] %s: %s error: %@%@", &v3, 0x2Au);
}

- (void)_finishedDownload:syncContext:operationID:error:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: ![[BRCAccountsManager sharedManager] isInSyncBubble]%@", v5, v6, v7, v8);
  }
}

- (void)_getCancelErrorFromCancelReason:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_223E7A000, v0, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: New cancel reasons should be mapped to errors%@", v1, 0xCu);
}

- (void)cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: etag == nil%@", v5, v6, v7, v8);
  }
}

- (void)cancelAndCleanupItemDownload:kind:etag:andNotifyDownloadTrackers:cancelReason:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: [[BRCFSDownloaderUtil cancellableDownloadKinds] containsObject:@(kind)]%@", v5, v6, v7, v8);
  }
}

- (void)_sendContentsBatch:sizeHint:maxRecordsCount:kind:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: ![[BRCAccountsManager sharedManager] isInSyncBubble]%@", v5, v6, v7, v8);
  }
}

@end