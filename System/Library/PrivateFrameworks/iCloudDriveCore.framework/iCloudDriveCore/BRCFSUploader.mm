@interface BRCFSUploader
- (BOOL)_finishPackageUploadWithRecord:(id)record item:(id)item stageID:(id)d packageChecksummer:(id)checksummer error:(id *)error;
- (BOOL)_handleCollaborationUploadError:(id)error recordID:(id)d clientZone:(id)zone reply:(id)reply;
- (BOOL)_retryUploadForError:(id)error jobID:(id)d recomputeRecord:(BOOL)record syncContext:(id)context;
- (BOOL)_shouldReingestAfterUploadErrorWithItem:(id)item record:(id)record;
- (BOOL)_updatePackageRecord:(id)record item:(id)item stageID:(id)d error:(id *)error;
- (BOOL)hasItemsOverQuotaForOwner:(id)owner;
- (BOOL)hasItemsOverQuotaInZone:(id)zone;
- (BOOL)isUploadingItem:(id)item;
- (BRCFSUploader)initWithAccountSession:(id)session;
- (id)_buildItemTooLargeErrorIfNeeded:(id)needed syncContext:(id)context;
- (id)_documentItemForJobID:(id)d operationID:(id)iD;
- (id)_documentItemForJobID:(id)d stageID:(id)iD;
- (id)_duplicatePackage:(id)package stageID:(id)d stageName:(id)name error:(id *)error;
- (id)descriptionForItem:(id)item context:(id)context;
- (id)quotaAvailableForOwner:(id)owner;
- (id)uploadDocument:(id)document withContents:(id)contents baseVersion:(id)version basedOnOriginalVersion:(BOOL)originalVersion options:(unint64_t)options reply:(id)reply;
- (int)getStateOfDocumentItem:(id)item;
- (int64_t)_rescheduleUploadJobsPendingState:(int)state;
- (unint64_t)_minBatchSize;
- (unint64_t)_thumbnailOperationsMax;
- (void)_cancelJobs:(id)jobs state:(int)state uploadError:(id)error;
- (void)_cancelJobsMatching:(id)matching;
- (void)_clearUploadErrorForDocument:(id)document;
- (void)_close;
- (void)_computeRecordForJobID:(id)d item:(id)item syncContext:(id)context;
- (void)_finishedUploadingItem:(id)item record:(id)record jobID:(id)d stageID:(id)iD syncContext:(id)context hasPerformedServerSideAssetCopy:(BOOL)copy error:(id)error;
- (void)_globalQuotaStateUpdateForDefaultOwner;
- (void)_handleFileModifiedError:(id)error forItem:(id)item;
- (void)_performServerSideAssetCopyForItem:(id)item transferSize:(unint64_t)size;
- (void)_reportUploadErrorForDocument:(id)document error:(id)error underlyingError:(id)underlyingError;
- (void)_rescheduleJobsOutOfQuotaForDefaultOwnerWithAvailableSize:(int64_t)size;
- (void)_scheduleQuotaFetchForDefaultOwner;
- (void)_scheduleRetries;
- (void)_sendItemNotFoundStatsTelemetryForFileID:(id)d;
- (void)_serializeServerSideAssetCopyPluginFieldsForRecord:(id)record newZone:(id)zone origZone:(id)origZone;
- (void)_transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority;
- (void)_updateJobID:(id)d setStageID:(id)iD operationID:(id)operationID;
- (void)_updateRecord:(id)record item:(id)item syncContext:(id)context targetThumbnailURL:(id)l stageID:(id)d;
- (void)_updateRecord:(id)record jobID:(id)d syncContext:(id)context targetThumbnailURL:(id)l stageID:(id)iD;
- (void)_updateRecordInDB:(id)b item:(id)item syncContext:(id)context transferSize:(unint64_t)size stageID:(id)d;
- (void)_willAttemptJobID:(id)d throttle:(id)throttle operationID:(id)iD;
- (void)cancel;
- (void)cancelAndCleanupItemUpload:(id)upload;
- (void)close;
- (void)deleteJobsForZone:(id)zone;
- (void)deleteJobsMatching:(id)matching;
- (void)finishedSyncingUpItem:(id)item withOutOfQuotaError:(id)error;
- (void)forceScheduleQuotaFetchForOwner:(id)owner;
- (void)networkCellularChanged:(BOOL)changed;
- (void)networkReachabilityChanged:(BOOL)changed;
- (void)ownerDidReceiveOutOfQuotaError:(id)error;
- (void)performFirstSchedulingAfterStartupInDB:(id)b;
- (void)recoverAndReportMissingJobsWithCompletion:(id)completion recoveryTask:(id)task;
- (void)rescheduleJobsPendingCellular;
- (void)resetAndRescheduleUploaderConstraintCheckerIfNeeded;
- (void)resume;
- (void)schedule;
- (void)scheduleQuotaFetchIfNeededForOwner:(id)owner;
- (void)scheduleQuotaStateUpdateForOwner:(id)owner;
- (void)screenLockChanged:(BOOL)changed;
- (void)setIsDefaultOwnerOutOfQuota:(BOOL)quota forceSignalContainers:(BOOL)containers;
- (void)setQuotaAvailableForDefaultOwner:(unint64_t)owner;
- (void)setState:(int)state forItem:(id)item;
- (void)setState:(int)state forItem:(id)item uploadError:(id)error;
- (void)setState:(int)state forJobID:(id)d zone:(id)zone;
- (void)setState:(int)state forUploadJobID:(id)d zone:(id)zone uploadError:(id)error;
- (void)suspend;
- (void)transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority completionBlock:(id)block;
- (void)uploadItem:(id)item;
- (void)userVerifiedTerms;
@end

@implementation BRCFSUploader

- (unint64_t)_thumbnailOperationsMax
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  thumbnailTransferQueueWidth = [v2 thumbnailTransferQueueWidth];

  return thumbnailTransferQueueWidth;
}

- (unint64_t)_minBatchSize
{
  v2 = [BRCUserDefaults defaultsForMangledID:0];
  transferQueueMinBatchSize = [v2 transferQueueMinBatchSize];

  return transferQueueMinBatchSize;
}

- (BRCFSUploader)initWithAccountSession:(id)session
{
  sessionCopy = session;
  v5 = [BRCUserDefaults defaultsForMangledID:0];
  v47.receiver = self;
  v47.super_class = BRCFSUploader;
  v6 = [(BRCFSSchedulerBase *)&v47 initWithSession:sessionCopy name:@"Uploader" tableName:@"client_uploads"];
  if (v6)
  {
    v7 = objc_alloc_init(BRCThumbnailGenerationManager);
    thumbnailGenerationManager = v6->_thumbnailGenerationManager;
    v6->_thumbnailGenerationManager = v7;

    [v5 quotaFetchPacerDelay];
    v9 = br_pacer_create();
    quotaPacer = v6->_quotaPacer;
    v6->_quotaPacer = v9;

    v11 = brc_task_tracker_create("upload-thumbnail-tracker");
    thumbnailTracker = v6->_thumbnailTracker;
    v6->_thumbnailTracker = v11;

    objc_initWeak(&location, v6);
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke;
    v44[3] = &unk_2784FF400;
    objc_copyWeak(&v45, &location);
    [(BRCThumbnailGenerationManager *)v6->_thumbnailGenerationManager setHasThumbnailAvailableSlot:v44];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_3;
    v42[3] = &unk_2784FF400;
    objc_copyWeak(&v43, &location);
    [(BRCThumbnailGenerationManager *)v6->_thumbnailGenerationManager setReachedThumbnailMaximumCapacity:v42];
    v40[1] = MEMORY[0x277D85DD0];
    v40[2] = 3221225472;
    v40[3] = __40__BRCFSUploader_initWithAccountSession___block_invoke_4;
    v40[4] = &unk_2784FF400;
    objc_copyWeak(&v41, &location);
    br_pacer_set_event_handler();
    clientDB = [sessionCopy clientDB];
    serialQueue = [clientDB serialQueue];
    v15 = br_pacer_create();
    globalQuotaStateUpdatePacer = v6->_globalQuotaStateUpdatePacer;
    v6->_globalQuotaStateUpdatePacer = v15;

    v39[1] = MEMORY[0x277D85DD0];
    v39[2] = 3221225472;
    v39[3] = __40__BRCFSUploader_initWithAccountSession___block_invoke_5;
    v39[4] = &unk_2784FF400;
    objc_copyWeak(v40, &location);
    br_pacer_set_event_handler();
    personaIdentifier = [sessionCopy personaIdentifier];
    v18 = BRPersonaSpecificName();

    v19 = dispatch_workloop_create([v18 UTF8String]);
    v20 = [[BRCFairScheduler alloc] initWithWorkloop:v19 name:v18];
    fairScheduler = v6->_fairScheduler;
    v6->_fairScheduler = v20;

    v22 = [[BRCDeadlineScheduler alloc] initWithName:@"com.apple.bird.uploader" fairScheduler:v6->_fairScheduler];
    uploadsDeadlineScheduler = v6->_uploadsDeadlineScheduler;
    v6->_uploadsDeadlineScheduler = v22;

    [(BRCDeadlineScheduler *)v6->_uploadsDeadlineScheduler setCoalescingLeeway:10000000];
    v24 = [BRCDeadlineSource alloc];
    defaultScheduler = [(BRCAccountSession *)v6->super.super._session defaultScheduler];
    v26 = [(BRCDeadlineSource *)v24 initWithScheduler:defaultScheduler name:@"uploader-retry"];
    retryQueueSource = v6->_retryQueueSource;
    v6->_retryQueueSource = v26;

    [(BRCDeadlineSource *)v6->_retryQueueSource setWorkloop:v6->super.super._schedulerWorkloop];
    v28 = v6->_retryQueueSource;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_6;
    v38[3] = &unk_2784FF400;
    objc_copyWeak(v39, &location);
    [(BRCDeadlineSource *)v28 setEventHandler:v38];
    v29 = +[BRCUploadConstraintChecker defaultChecker];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_22;
    v36[3] = &unk_2784FF400;
    objc_copyWeak(&v37, &location);
    personaIdentifier2 = [(BRCAccountSession *)v6->super.super._session personaIdentifier];
    [v29 addRescheduleSuspendedJobsBlock:v36 forPersonaID:personaIdentifier2];

    v31 = +[BRCUploadConstraintChecker defaultChecker];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_2_23;
    v34[3] = &unk_2785055F0;
    objc_copyWeak(&v35, &location);
    personaIdentifier3 = [(BRCAccountSession *)v6->super.super._session personaIdentifier];
    [v31 addNoSpaceExecutionBlock:v34 forPersonaID:personaIdentifier3];

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(v39);

    objc_destroyWeak(v40);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v43);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained[1] clientDB];
  v3 = [v2 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__BRCFSUploader_initWithAccountSession___block_invoke_2;
  block[3] = &unk_2784FF450;
  v6 = WeakRetained;
  v4 = WeakRetained;
  dispatch_async(v3, block);
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained[2] suspend];
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleQuotaFetchForDefaultOwner];
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _globalQuotaStateUpdateForDefaultOwner];
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_6(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  memset(v6, 0, sizeof(v6));
  __brc_create_section(0, "[BRCFSUploader initWithAccountSession:]_block_invoke_6", 174, 0, v6);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCFSUploader_initWithAccountSession___block_invoke_6_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleRetries];

  __brc_leave_section(v6);
  objc_autoreleasePoolPop(v2);
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained rescheduleJobsPendingCellular];
    WeakRetained = v2;
  }
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_2_23(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v4 = [WeakRetained[1] personaIdentifier];
    v5 = [MEMORY[0x277CCABB0] numberWithLongLong:a2];
    v6 = +[AppTelemetryTimeSeriesEvent newLongEvent:UUID:value:](AppTelemetryTimeSeriesEvent, "newLongEvent:UUID:value:", 44, v4, [v5 br_roundedLongLongValue]);

    v7 = [v8[1] analyticsReporter];
    [v7 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v6];

    WeakRetained = v8;
  }
}

- (void)resume
{
  br_pacer_resume();
  clientState = [(BRCAccountSession *)self->super.super._session clientState];
  v4 = [clientState objectForKeyedSubscript:@"availableQuota"];

  if (!v4)
  {
    br_pacer_signal();
  }

  br_pacer_resume();
  [(BRCDeadlineSource *)self->_retryQueueSource signal];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  session = self->super.super._session;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __23__BRCFSUploader_resume__block_invoke;
  v20[3] = &unk_278505618;
  v7 = v5;
  v21 = v7;
  [(BRCAccountSession *)session enumerateServerZones:v20];
  globalProgress = [(BRCAccountSession *)self->super.super._session globalProgress];
  [globalProgress resumeProgressForZones:v7];

  [(BRCDeadlineScheduler *)self->_uploadsDeadlineScheduler resume];
  [(BRCDeadlineSource *)self->_retryQueueSource resume];
  [(BRCFairScheduler *)self->_fairScheduler resume];
  v9 = [BRCUploadCKRecordProvider alloc];
  stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
  v11 = MEMORY[0x277CCABB0];
  volume = [(BRCAccountSession *)self->super.super._session volume];
  v13 = [v11 numberWithInt:{objc_msgSend(volume, "deviceID")}];
  v14 = [(BRCUploadCKRecordProvider *)v9 initWithStageRegistry:stageRegistry deviceID:v13];
  uploadCKRecordProvider = self->_uploadCKRecordProvider;
  self->_uploadCKRecordProvider = v14;

  v19.receiver = self;
  v19.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v19 resume];
  v16 = +[BRCSystemResourcesManager manager];
  [v16 addScreenLockObserver:self];

  v17 = +[BRCSystemResourcesManager manager];
  [v17 addReachabilityObserver:self];

  v18 = +[BRCAccountHandler currentiCloudAccount];
  LOBYTE(stageRegistry) = [v18 br_needsToVerifyTerms];

  if ((stageRegistry & 1) == 0)
  {
    [(BRCFSUploader *)self userVerifiedTerms];
  }
}

uint64_t __23__BRCFSUploader_resume__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 clientZone];
  [v2 addObject:v3];

  return 1;
}

- (void)suspend
{
  [(BRCDeadlineScheduler *)self->_uploadsDeadlineScheduler suspend];
  [(BRCDeadlineSource *)self->_retryQueueSource suspend];
  [(BRCFairScheduler *)self->_fairScheduler suspend];
  v3.receiver = self;
  v3.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v3 suspend];
}

- (void)close
{
  [(BRCDeadlineScheduler *)self->_uploadsDeadlineScheduler close];
  [(BRCFairScheduler *)self->_fairScheduler close];
  br_pacer_cancel();
  uploadCKRecordProvider = self->_uploadCKRecordProvider;
  self->_uploadCKRecordProvider = 0;

  v4.receiver = self;
  v4.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v4 close];
}

- (void)_close
{
  v3.receiver = self;
  v3.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v3 _close];
  brc_task_tracker_wait(self->_thumbnailTracker);
}

- (void)cancel
{
  v3 = +[BRCSystemResourcesManager manager];
  [v3 removeScreenLockObserver:self];

  v4 = +[BRCSystemResourcesManager manager];
  [v4 removeReachabilityObserver:self];

  [(BRCDeadlineSource *)self->_retryQueueSource cancel];
  v5.receiver = self;
  v5.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v5 cancel];
  brc_task_tracker_cancel(self->_thumbnailTracker);
}

- (id)descriptionForItem:(id)item context:(id)context
{
  v6 = MEMORY[0x277D82C18];
  contextCopy = context;
  itemCopy = item;
  v9 = [v6 rawInjection:"upload_error" length:12];
  v10 = [(BRCFSSchedulerBase *)self descriptionForJobsMatching:itemCopy ordering:0 additionalColumns:v9 additionalValuesHandler:&__block_literal_global_53 context:contextCopy];

  return v10;
}

void __44__BRCFSUploader_descriptionForItem_context___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v11 = a2;
  v8 = a3;
  if (a5 >= 2)
  {
    if (_allowedClassesForErrors_once != -1)
    {
      __44__BRCFSUploader_descriptionForItem_context___block_invoke_cold_1();
    }

    v9 = [v8 unarchivedObjectOfClasses:_allowedClassesForErrors_allowedClasses atIndex:a4];
    v10 = v9;
    if (v9)
    {
      [v11 appendFormat:@" upload_error:%@", v9];
    }
  }
}

- (void)setState:(int)state forItem:(id)item
{
  v4 = *&state;
  itemCopy = item;
  v6 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [itemCopy dbRowID]);
  serverZone = [itemCopy serverZone];
  [(BRCFSUploader *)self setState:v4 forUploadJobID:v6 zone:serverZone];
}

- (void)setState:(int)state forItem:(id)item uploadError:(id)error
{
  v6 = *&state;
  itemCopy = item;
  errorCopy = error;
  v9 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [itemCopy dbRowID]);
  serverZone = [itemCopy serverZone];
  [(BRCFSUploader *)self setState:v6 forUploadJobID:v9 zone:serverZone uploadError:errorCopy];
}

- (int)getStateOfDocumentItem:(id)item
{
  v4 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [item dbRowID]);
  LODWORD(self) = [(BRCFSSchedulerBase *)self jobStateFor:v4];

  return self;
}

- (id)_buildItemTooLargeErrorIfNeeded:(id)needed syncContext:(id)context
{
  neededCopy = needed;
  contextCopy = context;
  currentVersion = [neededCopy currentVersion];
  defaults = [contextCopy defaults];

  if ([currentVersion isPackage])
  {
    uploadMaxPkgFileSize = [defaults uploadMaxPkgFileSize];
  }

  else
  {
    uploadMaxPkgFileSize = [defaults uploadMaxFileSize];
  }

  v10 = uploadMaxPkgFileSize;
  v11 = [currentVersion size];
  if (v11 >= v10)
  {
    v14 = v11;
LABEL_9:
    uploadMaxFileSize = [defaults uploadMaxFileSize];
    uploadMaxInPkgFileSize = [defaults uploadMaxInPkgFileSize];
    if (uploadMaxFileSize >= uploadMaxInPkgFileSize)
    {
      v19 = uploadMaxInPkgFileSize;
    }

    else
    {
      v19 = uploadMaxFileSize;
    }

    v26 = MEMORY[0x277CCA9B8];
    v20 = [neededCopy st];
    filename = [v20 filename];
    v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v23 = [MEMORY[0x277CCACA8] br_newReadableFileSizeStringFromBytesCount:v19];
    v24 = _BRLocalizedStringWithFormat();
    v16 = [v26 brc_errorDocumentWithFilename:filename size:v14 isTooLargeToUpload:v10 localizedDescription:{v24, v23}];

    goto LABEL_13;
  }

  if ([currentVersion isPackage])
  {
    dbRowID = [neededCopy dbRowID];
    session = [neededCopy session];
    v14 = [BRCPackageItem largestPackageItemSizeInItemRowID:dbRowID session:session];

    uploadMaxInPkgFileSize2 = [defaults uploadMaxInPkgFileSize];
    if (v14 >= uploadMaxInPkgFileSize2)
    {
      v10 = uploadMaxInPkgFileSize2;
      goto LABEL_9;
    }
  }

  v16 = 0;
LABEL_13:

  return v16;
}

- (void)_updateJobID:(id)d setStageID:(id)iD operationID:(id)operationID
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  operationIDCopy = operationID;
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v16 = dCopy;
    v17 = 2112;
    v18 = iDCopy;
    v19 = 2112;
    v20 = v11;
    _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: upload stage set to: %@%@", buf, 0x20u);
  }

  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  [clientDB execute:{@"UPDATE client_uploads SET transfer_stage = %@, transfer_operation = %@ WHERE %@", iDCopy, operationIDCopy, matchingJobsWhereSQLClause}];
}

- (id)_documentItemForJobID:(id)d stageID:(id)iD
{
  session = self->super.super._session;
  iDCopy = iD;
  dCopy = d;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  v11 = [clientDB numberWithSQL:{@"SELECT zone_rowid FROM client_uploads WHERE %@ AND transfer_stage = %@", matchingJobsWhereSQLClause, iDCopy}];

  v12 = [(BRCAccountSession *)self->super.super._session serverZoneByRowID:v11];
  clientZone = [v12 clientZone];
  itemDBRowID = [dCopy itemDBRowID];

  v15 = [clientZone itemByRowID:itemDBRowID];
  asDocument = [v15 asDocument];

  return asDocument;
}

- (id)_documentItemForJobID:(id)d operationID:(id)iD
{
  session = self->super.super._session;
  iDCopy = iD;
  dCopy = d;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
  v11 = [clientDB numberWithSQL:{@"SELECT zone_rowid FROM client_uploads WHERE %@ AND transfer_operation = %@", matchingJobsWhereSQLClause, iDCopy}];

  v12 = [(BRCAccountSession *)self->super.super._session serverZoneByRowID:v11];
  clientZone = [v12 clientZone];
  itemDBRowID = [dCopy itemDBRowID];

  v15 = [clientZone itemByRowID:itemDBRowID];
  asDocument = [v15 asDocument];

  return asDocument;
}

- (BOOL)isUploadingItem:(id)item
{
  itemCopy = item;
  if ([itemCopy needsUpload])
  {
    v4 = [itemCopy db];
    v5 = [v4 numberWithSQL:{@"SELECT transfer_operation IS NOT NULL FROM client_uploads WHERE throttle_id = %llu", objc_msgSend(itemCopy, "dbRowID")}];
  }

  else
  {
    v5 = 0;
  }

  bOOLValue = [v5 BOOLValue];

  return bOOLValue;
}

- (void)_willAttemptJobID:(id)d throttle:(id)throttle operationID:(id)iD
{
  session = self->super.super._session;
  iDCopy = iD;
  dCopy = d;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];

  [clientDB execute:{@"UPDATE client_uploads SET   throttle_state = 1, transfer_operation = %@ WHERE %@", iDCopy, matchingJobsWhereSQLClause}];
}

- (void)_cancelJobs:(id)jobs state:(int)state uploadError:(id)error
{
  v34 = *&state;
  v51 = *MEMORY[0x277D85DE8];
  jobsCopy = jobs;
  errorCopy = error;
  if ([jobsCopy next])
  {
    do
    {
      context = objc_autoreleasePoolPush();
      v7 = [jobsCopy numberAtIndex:0];
      v38 = [jobsCopy stringAtIndex:1];
      v37 = [jobsCopy uuidAtIndex:2];
      v8 = [jobsCopy stringAtIndex:3];
      v9 = [jobsCopy numberAtIndex:4];
      v10 = [jobsCopy intAtIndex:5];
      v11 = [jobsCopy numberAtIndex:6];
      v36 = [(BRCAccountSession *)self->super.super._session appLibraryByRowID:v9];
      v12 = [(BRCAccountSession *)self->super.super._session serverZoneByRowID:v11];
      memset(v40, 0, sizeof(v40));
      __brc_create_section(0, "[BRCFSUploader _cancelJobs:state:uploadError:]", 422, 0, v40);
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v32 = v40[0];
        v31 = BRCPrettyPrintEnum();
        v30 = BRCPrettyPrintEnum();
        *buf = 134219010;
        v42 = v32;
        v43 = 2112;
        v44 = v7;
        v45 = 2080;
        v46 = v31;
        v47 = 2080;
        v48 = v30;
        v49 = 2112;
        v50 = v13;
        _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: %s -> %s [cancel-job]%@", buf, 0x34u);
      }

      if (v10 == 32)
      {
        if (v34 == 32)
        {
          goto LABEL_12;
        }

        ownerName = [v12 ownerName];
        [(BRCFSUploader *)self scheduleQuotaStateUpdateForOwner:ownerName];
      }

      else
      {
        if (v10 != 1)
        {
          goto LABEL_12;
        }

        v15 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v42 = v7;
          v43 = 2112;
          v44 = v15;
          _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: Cancelling upload%@", buf, 0x16u);
        }

        itemFetcher = [(BRCAccountSession *)self->super.super._session itemFetcher];
        v18 = [itemFetcher itemByRowID:{objc_msgSend(v7, "unsignedIntegerValue")}];
        ownerName = [v18 asDocument];

        globalProgress = [(BRCAccountSession *)self->super.super._session globalProgress];
        [globalProgress updateUploadThrottleForDocument:ownerName toState:v34];
      }

LABEL_12:
      if ([v38 isEqualToString:@"_prepare"])
      {
        thumbnailGenerationManager = [(BRCFSUploader *)self thumbnailGenerationManager];
        v22 = [thumbnailGenerationManager operationForThumbnailID:v7];

        if (v22)
        {
          [v22 cancel];
          uploadStream = brc_bread_crumbs();
          v24 = brc_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v42 = v7;
            v43 = 2112;
            v44 = v22;
            v45 = 2112;
            v46 = uploadStream;
            _os_log_debug_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: cancelled thumbnail upload: %@%@", buf, 0x20u);
          }

LABEL_19:
        }

        goto LABEL_21;
      }

      if (v37)
      {
        v22 = [BRCSyncContext transferContextForServerZone:v12 appLibrary:v36];
        uploadStream = [v22 uploadStream];
        [uploadStream cancelTransferID:v7 operationID:v37];
        goto LABEL_19;
      }

LABEL_21:
      if (v8)
      {
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412802;
          v42 = v7;
          v43 = 2112;
          v44 = v8;
          v45 = 2112;
          v46 = v25;
          _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: Cleaning up upload stage: %@%@", buf, 0x20u);
        }

        stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
        [stageRegistry cleanupStagedUploadWithID:v8];
      }

      if (errorCopy)
      {
        [MEMORY[0x277D82C08] formatInjection:{@", upload_error = %@ ", errorCopy}];
      }

      else
      {
        [MEMORY[0x277D82C18] rawInjection:"" length:0];
      }
      v28 = ;
      v29 = [jobsCopy db];
      [v29 execute:{@"UPDATE client_uploads SET  throttle_state = %d, transfer_queue = '_prepare', transfer_record = NULL, transfer_stage = NULL, transfer_operation = NULL%@ WHERE throttle_id = %@", v34, v28, v7}];

      __brc_leave_section(v40);
      objc_autoreleasePoolPop(context);
    }

    while (([jobsCopy next] & 1) != 0);
  }

  [jobsCopy close];
}

- (void)_cancelJobsMatching:(id)matching
{
  session = self->super.super._session;
  matchingCopy = matching;
  clientDB = [(BRCAccountSession *)session clientDB];
  matchingJobsWhereSQLClause = [matchingCopy matchingJobsWhereSQLClause];

  v7 = [clientDB fetch:{@"SELECT throttle_id, transfer_queue, transfer_operation, transfer_stage, app_library_rowid, throttle_state, zone_rowid   FROM client_uploads  WHERE %@ AND throttle_state != 0", matchingJobsWhereSQLClause}];
  [(BRCFSUploader *)self _cancelJobs:v7 state:0 uploadError:0];
}

- (void)deleteJobsMatching:(id)matching
{
  matchingCopy = matching;
  [(BRCFSUploader *)self _cancelJobsMatching:matchingCopy];
  v5.receiver = self;
  v5.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v5 deleteJobsMatching:matchingCopy];
}

- (void)deleteJobsForZone:(id)zone
{
  session = self->super.super._session;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)session clientDB];
  dbRowID = [zoneCopy dbRowID];
  v8 = [clientDB fetch:{@"SELECT throttle_id, transfer_queue, transfer_operation, transfer_stage, app_library_rowid, throttle_state, zone_rowid   FROM client_uploads  WHERE zone_rowid = %@ AND throttle_state != 0", dbRowID}];
  [(BRCFSUploader *)self _cancelJobs:v8 state:0 uploadError:0];

  v9.receiver = self;
  v9.super_class = BRCFSUploader;
  [(BRCFSSchedulerBase *)&v9 deleteJobsMatching:zoneCopy];
}

- (void)cancelAndCleanupItemUpload:(id)upload
{
  v16 = *MEMORY[0x277D85DE8];
  uploadCopy = upload;
  memset(v9, 0, sizeof(v9));
  __brc_create_section(0, "[BRCFSUploader cancelAndCleanupItemUpload:]", 491, 0, v9);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = v9[0];
    jobsDescription = [uploadCopy jobsDescription];
    *buf = 134218498;
    v11 = v7;
    v12 = 2112;
    v13 = jobsDescription;
    v14 = 2112;
    v15 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: cancel and cleanup item upload%@", buf, 0x20u);
  }

  [(BRCFSUploader *)self _cancelJobsMatching:uploadCopy];
  __brc_leave_section(v9);
}

- (int64_t)_rescheduleUploadJobsPendingState:(int)state
{
  v22 = *MEMORY[0x277D85DE8];
  if ((state - 35) >= 4)
  {
    v5 = brc_bread_crumbs();
    clientDB = brc_default_log();
    if (os_log_type_enabled(clientDB, OS_LOG_TYPE_FAULT))
    {
      [BRCFSUploader _rescheduleUploadJobsPendingState:];
    }

    goto LABEL_12;
  }

  v5 = [MEMORY[0x277D82C18] rawInjection:-[__CFString UTF8String](off_278505930[state - 35] length:{"UTF8String"), -[__CFString length](off_278505930[v3], "length")}];
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB execute:@"UPDATE client_items SET version_upload_error = NULL, item_notifs_rank = bump_notifs_rank_and_trigger_notifs(rowid) WHERE rowid IN (SELECT throttle_id FROM client_uploads WHERE throttle_state = %@)", v5];
  if (![clientDB changes])
  {
LABEL_12:
    changes = 0;
    goto LABEL_13;
  }

  memset(v15, 0, sizeof(v15));
  __brc_create_section(0, "[BRCFSUploader _rescheduleUploadJobsPendingState:]", 524, 0, v15);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = v15[0];
    v14 = BRCPrettyPrintEnum();
    *buf = 134218498;
    v17 = v13;
    v18 = 2080;
    v19 = v14;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx re-uploading failed items for %s%@", buf, 0x20u);
  }

  [clientDB execute:@"UPDATE client_uploads SET throttle_state = 1, upload_error = NULL WHERE throttle_state = %@", v5];
  if ([clientDB changes])
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader _rescheduleUploadJobsPendingState:];
    }

    [(BRCFSSchedulerBase *)self signal];
  }

  changes = [clientDB changes];
  __brc_leave_section(v15);
LABEL_13:

  return changes;
}

- (void)rescheduleJobsPendingCellular
{
  personaIdentifier = [(BRCAccountSession *)self->super.super._session personaIdentifier];
  BRPerformWithPersonaAndError();
}

void __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_cold_1();
    }
  }

  else
  {
    v6 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_115;
    block[3] = &unk_2784FF450;
    block[4] = *(a1 + 32);
    dispatch_async(v6, block);
  }
}

- (void)setState:(int)state forJobID:(id)d zone:(id)zone
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_fault_impl(&dword_223E7A000, v6, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: should call setState:forUploadJobID:zone:%@", &v7, 0xCu);
  }
}

- (void)setState:(int)state forUploadJobID:(id)d zone:(id)zone uploadError:(id)error
{
  v8 = *&state;
  v37 = *MEMORY[0x277D85DE8];
  dCopy = d;
  zoneCopy = zone;
  errorCopy = error;
  memset(v28, 0, sizeof(v28));
  __brc_create_section(0, "[BRCFSUploader setState:forUploadJobID:zone:uploadError:]", 593, 0, v28);
  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v25 = v28[0];
    v26 = BRCPrettyPrintEnum();
    *buf = 134218754;
    v30 = v25;
    v31 = 2112;
    v32 = dCopy;
    v33 = 2080;
    v34 = v26;
    v35 = 2112;
    v36 = v13;
    _os_log_debug_impl(&dword_223E7A000, v14, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: setting state to %s%@", buf, 0x2Au);
  }

  if (v8 == 1)
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __58__BRCFSUploader_setState_forUploadJobID_zone_uploadError___block_invoke;
    v27[3] = &unk_2784FF870;
    v27[4] = self;
    v16 = MEMORY[0x22AA4A310](v27);
    matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];
    [clientDB execute:{@"UPDATE client_uploads SET  throttle_state = call_block(%@, next_retry_stamp, app_library_rowid, zone_rowid), transfer_queue = %@ WHERE %@", v16, @"_prepare", matchingJobsWhereSQLClause}];
  }

  else if (v8 == 31)
  {
    if (errorCopy)
    {
      [MEMORY[0x277D82C08] formatInjection:{@"upload_error = %@, ", errorCopy}];
    }

    else
    {
      [MEMORY[0x277D82C18] rawInjection:"" length:0];
    }
    v22 = ;
    clientDB2 = [(BRCAccountSession *)self->super.super._session clientDB];
    matchingJobsWhereSQLClause2 = [dCopy matchingJobsWhereSQLClause];
    [clientDB2 execute:{@"UPDATE client_uploads    SET throttle_state = %d, %@ transfer_operation = NULL  WHERE %@", 31, v22, matchingJobsWhereSQLClause2}];
  }

  else
  {
    clientDB3 = [(BRCAccountSession *)self->super.super._session clientDB];
    matchingJobsWhereSQLClause3 = [dCopy matchingJobsWhereSQLClause];
    v20 = [clientDB3 fetch:{@"SELECT throttle_id, transfer_queue, transfer_operation, transfer_stage, app_library_rowid, throttle_state, zone_rowid   FROM client_uploads  WHERE %@", matchingJobsWhereSQLClause3}];
    [(BRCFSUploader *)self _cancelJobs:v20 state:v8 uploadError:errorCopy];

    if (v8 == 32)
    {
      ownerName = [zoneCopy ownerName];
      [(BRCFSUploader *)self ownerDidReceiveOutOfQuotaError:ownerName];
    }
  }

  __brc_leave_section(v28);
}

void __58__BRCFSUploader_setState_forUploadJobID_zone_uploadError___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v7 = sqlite3_value_int64(*a4);
  if (sqlite3_value_int(a4[1]))
  {
    [*(a1 + 32) signalWithDeadline:v7];
  }

  else
  {
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:sqlite3_value_int64(a4[1])];
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:sqlite3_value_int64(a4[2])];
    v10 = [*(*(a1 + 32) + 8) appLibraryByRowID:v8];
    v11 = [*(*(a1 + 32) + 8) serverZoneByRowID:v9];
    v12 = [BRCSyncContext transferContextForServerZone:v11 appLibrary:v10];
    v13 = [v12 uploadStream];
    [v13 signalWithDeadline:v7];
  }

  sqlite3_result_int(a2, 1);
}

- (void)uploadItem:(id)item
{
  v53 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  memset(v46, 0, sizeof(v46));
  __brc_create_section(0, "[BRCFSUploader uploadItem:]", 636, 0, v46);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v29 = v46[0];
    jobsDescription = [itemCopy jobsDescription];
    *buf = 134218498;
    v48 = v29;
    v49 = 2112;
    v50 = jobsDescription;
    v51 = 2112;
    v52 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: uploading%@", buf, 0x20u);
  }

  appLibrary = [itemCopy appLibrary];
  currentVersion = [itemCopy currentVersion];
  uploadError = [currentVersion uploadError];

  syncContextUsedForTransfers = [itemCopy syncContextUsedForTransfers];
  if ([uploadError brc_isCloudKitErrorDataProtectionClass] && !self->_isScreenLocked)
  {

    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      itemID = [itemCopy itemID];
      debugItemIDString = [itemID debugItemIDString];
      *buf = 138412546;
      v48 = debugItemIDString;
      v49 = 2112;
      v50 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Screen no longer locked. Try upload item: %@%@", buf, 0x16u);
    }
  }

  else if (uploadError)
  {
    if ([uploadError brc_isCloudKitOutOfQuota])
    {
      v37 = 0;
      v7 = 32;
    }

    else if ([uploadError brc_isCloudKitErrorDataProtectionClass])
    {
      v37 = 0;
      v7 = 35;
    }

    else if ([uploadError brc_isCloudKitErrorNoNetwork] & 1) != 0 || (objc_msgSend(uploadError, "brc_isNetworkUnreachableError"))
    {
      v37 = 0;
      v7 = 36;
    }

    else if ([uploadError brc_isCloudKitErrorRequiresVerifyTerms] && (+[BRCAccountHandler currentiCloudAccount](BRCAccountHandler, "currentiCloudAccount"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "br_needsToVerifyTerms"), v31, (v32 & 1) != 0))
    {
      v37 = 0;
      v7 = 37;
    }

    else
    {
      v37 = 0;
      if ([uploadError brc_isNetworkUnreachableDueToCellularError])
      {
        v7 = 38;
      }

      else
      {
        v7 = 33;
      }
    }

    goto LABEL_21;
  }

  syncUpScheduler = [(BRCAccountSession *)self->super.super._session syncUpScheduler];
  v11 = [syncUpScheduler isItemPendingSyncUp:itemCopy];

  if (v11)
  {
    uploadError = 0;
    v37 = 0;
    v7 = 31;
  }

  else
  {
    uploadError = [(BRCFSUploader *)self _buildItemTooLargeErrorIfNeeded:itemCopy syncContext:syncContextUsedForTransfers];
    v37 = uploadError == 0;
    if (uploadError)
    {
      v7 = 34;
    }

    else
    {
      v7 = 1;
    }
  }

LABEL_21:
  v38 = v7;
  currentVersion2 = [itemCopy currentVersion];
  [currentVersion2 setUploadError:uploadError];

  v13 = itemCopy;
  v41 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v13 dbRowID]);

  uploadThrottle = [syncContextUsedForTransfers uploadThrottle];
  v39 = [MEMORY[0x277D82C18] rawInjection:"app_library_rowid length:{transfer_queue, transfer_size, transfer_record, transfer_stage, transfer_operation, upload_priority, zone_rowid", 131}];
  v14 = MEMORY[0x277D82C08];
  dbRowID = [appLibrary dbRowID];
  currentVersion3 = [v13 currentVersion];
  v17 = [currentVersion3 size];
  currentVersion4 = [v13 currentVersion];
  thumbnailSize = [currentVersion4 thumbnailSize];
  serverZone = [v13 serverZone];
  dbRowID2 = [serverZone dbRowID];
  v22 = [v14 formatInjection:{@"%@, %@, %lld, %@, %@, %@, %lld, %@", dbRowID, @"_prepare", thumbnailSize + v17, 0, 0, 0, -1, dbRowID2}];
  v23 = MEMORY[0x277D82C08];
  serverZone2 = [v13 serverZone];
  dbRowID3 = [serverZone2 dbRowID];
  v26 = [v23 formatInjection:{@"zone_rowid = %@", dbRowID3}];
  v35 = [(BRCFSSchedulerBase *)self insertOrUpdateJobID:v41 throttle:uploadThrottle withState:v38 insertedSQLColumn:v39 insertedSQLValues:v22 updatedSQLValues:v26 error:0];
  v36 = v27;

  if (v37)
  {
    [(BRCFSSchedulerBase *)self signalWithDeadline:v36];
  }

  else if (v35 == 1)
  {
    globalProgress = [(BRCAccountSession *)self->super.super._session globalProgress];
    [globalProgress updateUploadThrottleForDocument:v13 toState:v38];
  }

  __brc_leave_section(v46);
}

- (void)_scheduleRetries
{
  *buf = 134218242;
  *(buf + 4) = a4;
  *(buf + 6) = 2112;
  *(buf + 14) = self;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader: next job to retry in %.3fs%@", buf, 0x16u);
}

void __33__BRCFSUploader__scheduleRetries__block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, uint64_t a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = *(*(a1 + 32) + 8);
  v8 = [MEMORY[0x277CCABB0] newFromSqliteValue:*(a4 + 8)];
  v9 = [v7 appLibraryByRowID:v8];

  v10 = *(*(a1 + 32) + 8);
  v11 = [MEMORY[0x277CCABB0] newFromSqliteValue:*(a4 + 24)];
  v12 = [v10 serverZoneByRowID:v11];

  v13 = [BRCSyncContext transferContextForServerZone:v12 appLibrary:v9];
  v14 = [v13 contextIdentifier];
  v15 = brc_bread_crumbs();
  v16 = brc_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v18 = sqlite3_value_int64(*a4);
    v19 = 134218498;
    v20 = v18;
    v21 = 2112;
    v22 = v14;
    v23 = 2112;
    v24 = v15;
    _os_log_debug_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%lld]: job has been put back in queue %@%@", &v19, 0x20u);
  }

  sqlite3_result_text(a2, [v14 UTF8String], -1, 0xFFFFFFFFFFFFFFFFLL);
  v17 = [v13 uploadStream];
  [v17 signalWithDeadline:sqlite3_value_int64(*(a4 + 16))];
}

- (void)performFirstSchedulingAfterStartupInDB:(id)b
{
  v25 = *MEMORY[0x277D85DE8];
  bCopy = b;
  [bCopy execute:@"UPDATE client_uploads SET transfer_operation = NULL WHERE (transfer_operation >= '')"];
  if ([bCopy changes])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader performFirstSchedulingAfterStartupInDB:];
    }
  }

  v7 = [bCopy fetch:{@"SELECT app_library_rowid, zone_rowid, transfer_queue   FROM client_uploads  WHERE throttle_state = 1 GROUP BY app_library_rowid, zone_rowid, transfer_queue"}];
  if ([v7 next])
  {
    do
    {
      v8 = objc_autoreleasePoolPush();
      session = self->super.super._session;
      v10 = [v7 numberAtIndex:0];
      v11 = [(BRCAccountSession *)session appLibraryByRowID:v10];

      v12 = self->super.super._session;
      v13 = [v7 numberAtIndex:1];
      v14 = [(BRCAccountSession *)v12 serverZoneByRowID:v13];

      v15 = [v7 stringAtIndex:2];
      if (([v15 isEqualToString:@"_prepare"] & 1) == 0 && (objc_msgSend(v15, "isEqualToString:", @"_retry") & 1) == 0)
      {
        v16 = brc_bread_crumbs();
        v17 = brc_default_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          v20 = [v7 stringAtIndex:2];
          *buf = 138412546;
          v22 = v20;
          v23 = 2112;
          v24 = v16;
          _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Kicking uploads for %@%@", buf, 0x16u);
        }

        v18 = [BRCSyncContext transferContextForServerZone:v14 appLibrary:v11];
        uploadStream = [v18 uploadStream];
        [uploadStream signal];
      }

      objc_autoreleasePoolPop(v8);
    }

    while (([v7 next] & 1) != 0);
  }

  [(BRCFSUploader *)self setIsDefaultOwnerOutOfQuota:[(BRCFSUploader *)self hasItemsOverQuotaForOwner:*MEMORY[0x277CBBF28]] forceSignalContainers:1];
}

- (void)schedule
{
  v3 = [BRCUserDefaults defaultsForMangledID:0];
  readerScanBatchSize = [v3 readerScanBatchSize];

  v5 = [MEMORY[0x277D82C08] formatInjection:@"transfer_queue = '_prepare' AND transfer_operation IS NULL"];
  v6 = [MEMORY[0x277D82C18] rawInjection:"throttle_id length:{app_library_rowid, zone_rowid", 42}];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__BRCFSUploader_schedule__block_invoke;
  v7[3] = &unk_278502028;
  v7[4] = self;
  [(BRCFSSchedulerBase *)self scheduleWithBatchSize:readerScanBatchSize whereSQLClause:v5 columns:v6 actionHandler:v7];
}

void __25__BRCFSUploader_schedule__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v5 longLongAtIndex:a3]);
  v7 = [v5 numberAtIndex:(a3 + 1)];
  v8 = [v5 numberAtIndex:(a3 + 2)];
  v9 = [*(*(a1 + 32) + 8) appLibraryByRowID:v7];
  v10 = [*(*(a1 + 32) + 8) serverZoneByRowID:v8];
  v11 = v10;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    v15 = [*(*(a1 + 32) + 8) itemFetcher];
    v16 = [v15 itemByRowID:{-[BRCItemDBRowIDJobIdentifier itemDBRowID](v6, "itemDBRowID")}];
    v17 = [v16 asDocument];

    v18 = [BRCSyncContext transferContextForServerZone:v11 appLibrary:v9];
    if (v17)
    {
      if (([v17 isDead] & 1) == 0)
      {
        v19 = [v5 db];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __25__BRCFSUploader_schedule__block_invoke_156;
        v22[3] = &unk_278505640;
        v22[4] = *(a1 + 32);
        v23 = v6;
        v24 = v17;
        v25 = v18;
        [v19 groupInBatch:v22];

LABEL_16:
        goto LABEL_17;
      }
    }

    else
    {
      v21 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        __25__BRCFSUploader_schedule__block_invoke_cold_2();
      }
    }

    [*(a1 + 32) deleteJobsMatching:v6];
    goto LABEL_16;
  }

  v13 = brc_bread_crumbs();
  v14 = brc_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    __25__BRCFSUploader_schedule__block_invoke_cold_1();
  }

  [*(a1 + 32) deleteJobsMatching:v6];
LABEL_17:
}

- (BOOL)_updatePackageRecord:(id)record item:(id)item stageID:(id)d error:(id *)error
{
  v137 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  itemCopy = item;
  dCopy = d;
  stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
  v13 = [stageRegistry createURLForUploadWithStageID:dCopy name:@"brpackage"];
  v115 = [stageRegistry createURLForUploadWithStageID:dCopy name:@"ckpackage"];
  v117 = [recordCopy getAndUpdateBoundaryKeyForItem:itemCopy];
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSUploader _updatePackageRecord:item:stageID:error:];
  }

  v16 = [BRCPackageManifestWriter alloc];
  clientZone = [itemCopy clientZone];
  v18 = [(BRCPackageManifestWriter *)v16 initWithZone:clientZone stageID:dCopy url:v13];

  v118 = v18;
  error = [(BRCPackageManifestWriter *)v18 error];

  if (!error)
  {
    v113 = objc_alloc_init(BRFieldPkgItem);
    v127 = 0;
    v25 = [MEMORY[0x277CBC538] br_packageWithBoundaryKey:v117 error:&v127];
    v26 = v127;
    v27 = v26;
    v108 = v25;
    if (v25)
    {
      v126 = v26;
      v28 = [v25 anchorAtURL:v115 error:&v126];
      v116 = v126;

      if (v28)
      {
        v103 = v13;
        v29 = MEMORY[0x277CCABB0];
        volume = [(BRCAccountSession *)self->super.super._session volume];
        v106 = [v29 numberWithInt:{objc_msgSend(volume, "deviceID")}];

        v31 = [[BRCLazyPackage alloc] initWithRegistry:stageRegistry stageID:dCopy name:@"ckpackage-xattrs" boundaryKey:v117];
        v104 = itemCopy;
        [BRCPackageItem packageItemsForItem:itemCopy order:1];
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        obj = v125 = 0u;
        v102 = recordCopy;
        v114 = v31;
        v110 = [obj countByEnumeratingWithState:&v122 objects:v128 count:16];
        if (v110)
        {
          v32 = 0;
          v109 = *v123;
          v24 = v113;
          v101 = dCopy;
          v105 = stageRegistry;
          while (2)
          {
            for (i = 0; i != v110; ++i)
            {
              if (*v123 != v109)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v122 + 1) + 8 * i);
              v35 = objc_autoreleasePoolPush();
              if ([v34 isFile])
              {
                v36 = brc_bread_crumbs();
                v37 = brc_default_log();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  dbRowID = [v104 dbRowID];
                  longValue = [v106 longValue];
                  fileID = [v34 fileID];
                  *buf = 134218754;
                  v130 = dbRowID;
                  v131 = 2048;
                  v132 = longValue;
                  v133 = 2048;
                  v134 = fileID;
                  v135 = 2112;
                  v136 = v36;
                  _os_log_debug_impl(&dword_223E7A000, v37, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%lld]: adding package item with deviceID 0x%lx fileID %lu%@", buf, 0x2Au);
                }

                v38 = objc_alloc(MEMORY[0x277CBC540]);
                v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v34, "fileID")}];
                generationID = [v34 generationID];
                fsGenerationID = [generationID fsGenerationID];
                v42 = [v38 initWithDeviceID:v106 fileID:v39 generationID:fsGenerationID];

                [v42 setPackageIndex:v32];
                pathInPackage = [v34 pathInPackage];
                lastPathComponent = [pathInPackage lastPathComponent];
                br_pathExtension = [lastPathComponent br_pathExtension];
                [v42 setItemTypeHint:br_pathExtension];

                error3 = [v108 addItem:v42];

                if (error3)
                {
                  v73 = v35;
                  v78 = brc_bread_crumbs();
                  v79 = brc_default_log();
                  v24 = v113;
                  if (os_log_type_enabled(v79, 0x90u))
                  {
                    [BRCFSUploader _updatePackageRecord:item:stageID:error:];
                  }

                  v116 = v78;

                  goto LABEL_58;
                }

                v116 = 0;
                ++v32;
                v24 = v113;
              }

              else
              {
                v42 = 0;
              }

              [v24 updateWithPkgItem:v34];
              [v24 setSignature:0];
              xattrSignature = [v34 xattrSignature];

              if (xattrSignature)
              {
                v111 = v35;
                xattrSignature2 = [v34 xattrSignature];
                v49 = [stageRegistry urlForXattrSignature:xattrSignature2];

                v121 = 0;
                LOBYTE(xattrSignature2) = [v49 checkResourceIsReachableAndReturnError:&v121];
                v50 = v121;
                if (xattrSignature2)
                {
                  v51 = [objc_alloc(MEMORY[0x277CBC540]) initWithFileURL:v49];
                  itemCount = [(BRCLazyPackage *)v114 itemCount];
                  [v42 setPackageIndex:itemCount];
                  v53 = brc_bread_crumbs();
                  v54 = brc_default_log();
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                  {
                    dbRowID2 = [v104 dbRowID];
                    pathInPackage2 = [v34 pathInPackage];
                    *buf = 134218754;
                    v130 = dbRowID2;
                    v131 = 2112;
                    v132 = v49;
                    v133 = 2112;
                    v134 = pathInPackage2;
                    v135 = 2112;
                    v136 = v53;
                    _os_log_debug_impl(&dword_223E7A000, v54, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%lld]: adding xattr package item with URL %@ for %@%@", buf, 0x2Au);
                  }

                  v120 = v50;
                  v55 = [(BRCLazyPackage *)v114 addItem:v51 error:&v120];
                  v56 = v120;

                  if (v55)
                  {
                    v57 = itemCount;
                    v24 = v113;
                    [(BRFieldPkgItem *)v113 setXattrIndex:v57];
                    v50 = v56;
                    stageRegistry = v105;
                  }

                  else
                  {
                    v59 = brc_bread_crumbs();
                    v60 = brc_default_log();
                    stageRegistry = v105;
                    if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v130 = v56;
                      v131 = 2112;
                      v132 = v59;
                      _os_log_impl(&dword_223E7A000, v60, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to add xattrs to xattrs package: %@%@", buf, 0x16u);
                    }

                    v50 = v56;
                    v24 = v113;
                  }
                }

                else
                {
                  v51 = brc_bread_crumbs();
                  v58 = brc_default_log();
                  if (os_log_type_enabled(v58, OS_LOG_TYPE_FAULT))
                  {
                    xattrSignature3 = [v34 xattrSignature];
                    *buf = 138412802;
                    v130 = xattrSignature3;
                    v131 = 2112;
                    v132 = v50;
                    v133 = 2112;
                    v134 = v51;
                    _os_log_fault_impl(&dword_223E7A000, v58, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: We're missing a package xattr for signature %@ - %@%@", buf, 0x20u);

                    v24 = v113;
                  }
                }

                v35 = v111;
              }

              if (![(BRCPackageManifestWriter *)v118 addItem:v24])
              {
                v73 = v35;
                v74 = brc_bread_crumbs();
                v75 = brc_default_log();
                if (os_log_type_enabled(v75, 0x90u))
                {
                  path = [v103 path];
                  error2 = [(BRCPackageManifestWriter *)v118 error];
                  *buf = 138412802;
                  v130 = path;
                  v131 = 2112;
                  v132 = error2;
                  v133 = 2112;
                  v134 = v74;
                  _os_log_error_impl(&dword_223E7A000, v75, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", buf, 0x20u);

                  v24 = v113;
                }

                error3 = [(BRCPackageManifestWriter *)v118 error];
LABEL_58:
                recordCopy = v102;
                dCopy = v101;

                objc_autoreleasePoolPop(v73);
                v116 = error3;
                v31 = v114;
                goto LABEL_59;
              }

              [v24 clear];

              objc_autoreleasePoolPop(v35);
              v31 = v114;
            }

            recordCopy = v102;
            dCopy = v101;
            v110 = [obj countByEnumeratingWithState:&v122 objects:v128 count:16];
            if (v110)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v24 = v113;
        }

LABEL_59:

        if (v116)
        {
          v80 = brc_bread_crumbs();
          v81 = brc_default_log();
          itemCopy = v104;
          if (os_log_type_enabled(v81, 0x90u))
          {
            *buf = 138412802;
            v130 = v108;
            v131 = 2112;
            v132 = v116;
            v133 = 2112;
            v134 = v80;
            _os_log_error_impl(&dword_223E7A000, v81, 0x90u, "[ERROR] Fail to performTransactionBlock for package [%@] with error [%@]%@", buf, 0x20u);
          }

          errorCopy2 = error;
          if (error)
          {
            error5 = v116;
LABEL_75:
            v23 = 0;
            v94 = errorCopy2;
            package = *errorCopy2;
            *v94 = error5;
LABEL_76:

LABEL_78:
            v68 = v116;
            v69 = v106;
            v13 = v103;
            goto LABEL_79;
          }
        }

        else
        {
          itemCopy = v104;
          if ([(BRCPackageManifestWriter *)v118 done])
          {
            v84 = v31;
            v85 = stageRegistry;
            v86 = dCopy;
            package = [(BRCLazyPackage *)v84 package];
            if (package)
            {
              [recordCopy setObject:package forKeyedSubscript:@"pkgXattrs"];
            }

            v88 = [MEMORY[0x277CBC190] br_assetWithFileURL:v103 boundaryKey:v117];
            [recordCopy setObject:v108 forKeyedSubscript:@"pkgContent"];
            [recordCopy setObject:v88 forKeyedSubscript:@"pkgManifest"];
            session = [v104 session];
            v119 = 0;
            v23 = [recordCopy validateEnhancedDrivePrivacyFieldsWithSession:session error:&v119];
            v90 = v119;
            v91 = v119;

            if (error && (v23 & 1) == 0)
            {
              objc_storeStrong(error, v90);
            }

            recordCopy = v102;
            dCopy = v86;
            stageRegistry = v85;
            v24 = v113;
            v31 = v114;
            goto LABEL_76;
          }

          v92 = brc_bread_crumbs();
          v93 = brc_default_log();
          if (os_log_type_enabled(v93, 0x90u))
          {
            path2 = [v103 path];
            error4 = [(BRCPackageManifestWriter *)v118 error];
            *buf = 138412802;
            v130 = path2;
            v131 = 2112;
            v132 = error4;
            v133 = 2112;
            v134 = v92;
            _os_log_error_impl(&dword_223E7A000, v93, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", buf, 0x20u);

            v24 = v113;
          }

          errorCopy2 = error;
          if (error)
          {
            error5 = [(BRCPackageManifestWriter *)v118 error];
            goto LABEL_75;
          }
        }

        v23 = 0;
        goto LABEL_78;
      }

      v70 = brc_bread_crumbs();
      v71 = brc_default_log();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        path3 = [v115 path];
        *buf = 138413058;
        v130 = v108;
        v131 = 2112;
        v132 = path3;
        v133 = 2112;
        v134 = v116;
        v135 = 2112;
        v136 = v70;
        _os_log_impl(&dword_223E7A000, v71, OS_LOG_TYPE_DEFAULT, "[WARNING] Failed to anchor package %@ at %@: %@%@", buf, 0x2Au);
      }

      if (error)
      {
        v68 = v116;
        v23 = 0;
        v69 = *error;
        *error = v68;
        goto LABEL_47;
      }

      v23 = 0;
      v27 = v116;
    }

    else
    {
      v66 = brc_bread_crumbs();
      v67 = brc_default_log();
      if (os_log_type_enabled(v67, 0x90u))
      {
        [BRCLazyPackage addItem:error:];
      }

      if (error)
      {
        v68 = v27;
        v23 = 0;
        v69 = *error;
        *error = v68;
LABEL_47:
        v24 = v113;
LABEL_79:

        v27 = v68;
        goto LABEL_80;
      }

      v23 = 0;
    }

    v24 = v113;
LABEL_80:

    goto LABEL_81;
  }

  v20 = brc_bread_crumbs();
  v21 = brc_default_log();
  if (os_log_type_enabled(v21, 0x90u))
  {
    path4 = [v13 path];
    error6 = [(BRCPackageManifestWriter *)v118 error];
    *buf = 138412802;
    v130 = path4;
    v131 = 2112;
    v132 = error6;
    v133 = 2112;
    v134 = v20;
    _os_log_error_impl(&dword_223E7A000, v21, 0x90u, "[ERROR] failed to create manifest at %@: %@%@", buf, 0x20u);
  }

  if (error)
  {
    error7 = [(BRCPackageManifestWriter *)v118 error];
    v23 = 0;
    v24 = *error;
    *error = error7;
LABEL_81:

    goto LABEL_82;
  }

  v23 = 0;
LABEL_82:

  return v23;
}

- (void)_updateRecordInDB:(id)b item:(id)item syncContext:(id)context transferSize:(unint64_t)size stageID:(id)d
{
  v30 = *MEMORY[0x277D85DE8];
  bCopy = b;
  itemCopy = item;
  contextCopy = context;
  dCopy = d;
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    dbRowID = [itemCopy dbRowID];
    v26 = 2112;
    v27 = bCopy;
    v28 = 2112;
    v29 = v16;
    _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%lld]: assets only record generated: %@%@", buf, 0x20u);
  }

  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__BRCFSUploader__updateRecordInDB_item_syncContext_transferSize_stageID___block_invoke;
  v22[3] = &unk_2784FF870;
  v23 = contextCopy;
  v19 = contextCopy;
  v20 = MEMORY[0x22AA4A310](v22);
  contextIdentifier = [v19 contextIdentifier];
  [clientDB execute:{@"UPDATE client_uploads SET  transfer_queue = call_block(%@, next_retry_stamp, %@), transfer_record = %@, transfer_operation = NULL, transfer_stage = %@, transfer_size = %lld WHERE throttle_id = %lld", v20, contextIdentifier, bCopy, dCopy, size, objc_msgSend(itemCopy, "dbRowID")}];
}

void __73__BRCFSUploader__updateRecordInDB_item_syncContext_transferSize_stageID___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = [*(a1 + 32) uploadStream];
  [v6 signalWithDeadline:sqlite3_value_int64(*a4)];

  v7 = a4[1];

  sqlite3_result_value(a2, v7);
}

- (void)_updateRecord:(id)record item:(id)item syncContext:(id)context targetThumbnailURL:(id)l stageID:(id)d
{
  v88 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  itemCopy = item;
  contextCopy = context;
  lCopy = l;
  dCopy = d;
  currentVersion = [itemCopy currentVersion];
  v72 = [currentVersion size];
  location = 0;
  v74 = [recordCopy getAndUpdateBoundaryKeyForItem:itemCopy];
  if ([itemCopy isFinderBookmark])
  {
    v17 = [itemCopy shouldUseEnhancedDrivePrivacyWhenNeedsPreserving:0];
  }

  else
  {
    v17 = 0;
  }

  if ([itemCopy isDocumentBeingCopiedToNewZone] && (objc_msgSend(itemCopy, "currentVersion"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "contentSignature"), v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "brc_signatureIsValid"), v19, v18, v20))
  {
    [(BRCFSUploader *)self _updateRecordInDB:recordCopy item:itemCopy syncContext:contextCopy transferSize:v72 stageID:dCopy];
  }

  else
  {
    fileIDForUpload = [itemCopy fileIDForUpload];

    if (fileIDForUpload)
    {
      v70 = contextCopy;
      v71 = lCopy;
      if ([currentVersion isPackage])
      {
        if ([itemCopy isFinderBookmark])
        {
          [BRCFSUploader _updateRecord:item:syncContext:targetThumbnailURL:stageID:];
        }

        v22 = [(BRCFSUploader *)self _updatePackageRecord:recordCopy item:itemCopy stageID:dCopy error:&location];
      }

      else
      {
        v25 = brc_bread_crumbs();
        v26 = brc_default_log();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          volume = [(BRCAccountSession *)self->super.super._session volume];
          deviceID = [volume deviceID];
          fileIDForUpload2 = [itemCopy fileIDForUpload];
          itemID = [itemCopy itemID];
          *buf = 134218754;
          v81 = deviceID;
          v82 = 2112;
          v83 = fileIDForUpload2;
          v84 = 2112;
          v85 = itemID;
          v86 = 2112;
          v87 = v25;
          _os_log_debug_impl(&dword_223E7A000, v26, OS_LOG_TYPE_DEBUG, "[DEBUG] Adding CKAsset with deviceID 0x%lx fileID %@ to the record for item %@%@", buf, 0x2Au);
        }

        fileIDForUpload3 = [itemCopy fileIDForUpload];
        v69 = currentVersion;
        if (v17)
        {
          brc_generateSaltingKey = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
        }

        else
        {
          brc_generateSaltingKey = v74;
        }

        v29 = MEMORY[0x277CBC190];
        v30 = MEMORY[0x277CCABB0];
        volume2 = [(BRCAccountSession *)self->super.super._session volume];
        v32 = [v30 numberWithInt:{objc_msgSend(volume2, "deviceID")}];
        generationIDForUpload = [itemCopy generationIDForUpload];
        fsGenerationID = [generationIDForUpload fsGenerationID];
        v74 = brc_generateSaltingKey;
        v35 = [v29 br_assetWithDeviceID:v32 fileID:fileIDForUpload3 generationID:fsGenerationID boundaryKey:brc_generateSaltingKey];

        isFinderBookmark = [itemCopy isFinderBookmark];
        v37 = kBRRecordKeyFinderBookmarkContent;
        if (!isFinderBookmark)
        {
          v37 = kBRRecordKeyFileContent;
        }

        [recordCopy setObject:v35 forKeyedSubscript:*v37];
        v38 = [itemCopy st];
        logicalName = [v38 logicalName];
        br_pathExtension = [logicalName br_pathExtension];
        [v35 setItemTypeHint:br_pathExtension];

        v22 = 1;
        currentVersion = v69;
      }

      if (v71 && [itemCopy shouldTransferThumbnail])
      {
        v78 = 0;
        v41 = *MEMORY[0x277CBE838];
        obj = 0;
        v42 = [v71 getResourceValue:&v78 forKey:v41 error:&obj];
        v43 = v78;
        objc_storeStrong(&location, obj);
        if (v42)
        {
          v44 = [MEMORY[0x277CBC190] br_assetWithFileURL:v71 boundaryKey:v74];
          [recordCopy setObject:v44 forKeyedSubscript:@"thumb1024"];
          v45 = brc_bread_crumbs();
          v46 = brc_default_log();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader _updateRecord:item:syncContext:targetThumbnailURL:stageID:];
          }

          v72 += [v43 unsignedLongLongValue];
        }

        else
        {
          v44 = brc_bread_crumbs();
          v47 = brc_default_log();
          if (os_log_type_enabled(v47, 0x90u))
          {
            path = [v71 path];
            *buf = 138412802;
            v81 = path;
            v82 = 2112;
            v83 = location;
            v84 = 2112;
            v85 = v44;
            _os_log_error_impl(&dword_223E7A000, v47, 0x90u, "[ERROR] Unable to get thumbnail size at '%@' to upload stage: %@%@", buf, 0x20u);
          }
        }
      }

      xattrSignature = [currentVersion xattrSignature];
      if (xattrSignature != 0 && v22)
      {
        session = [itemCopy session];
        xattrStager = [session xattrStager];
        v51 = [xattrStager urlForXattrSignature:xattrSignature];

        v76 = location;
        LODWORD(session) = [v51 checkResourceIsReachableAndReturnError:&v76];
        objc_storeStrong(&location, v76);
        if (session)
        {
          v52 = [MEMORY[0x277CBC190] br_assetWithFileURL:v51 boundaryKey:v74];
          [recordCopy setObject:v52 forKeyedSubscript:@"xattr"];
          if (v74)
          {
            v53 = xattrSignature;
          }

          else
          {
            v53 = 0;
          }

          encryptedValues = [recordCopy encryptedValues];
          [encryptedValues setObject:v53 forKeyedSubscript:@"xattrSignature"];

          v72 += [v52 size];
        }

        else
        {
          v52 = brc_bread_crumbs();
          v55 = brc_default_log();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
          {
            [BRCFSUploader _updateRecord:item:syncContext:targetThumbnailURL:stageID:];
          }
        }
      }

      if (v22 && ([itemCopy session], v56 = objc_claimAutoreleasedReturnValue(), v75 = location, v57 = objc_msgSend(recordCopy, "validateEnhancedDrivePrivacyFieldsWithSession:error:", v56, &v75), objc_storeStrong(&location, v75), v56, (v57 & 1) != 0))
      {
        contextCopy = v70;
        [(BRCFSUploader *)self _updateRecordInDB:recordCopy item:itemCopy syncContext:v70 transferSize:v72 stageID:dCopy];
      }

      else
      {
        v58 = brc_bread_crumbs();
        v59 = brc_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          itemID2 = [itemCopy itemID];
          *buf = 138412802;
          v81 = itemID2;
          v82 = 2112;
          v83 = location;
          v84 = 2112;
          v85 = v58;
          _os_log_debug_impl(&dword_223E7A000, v59, OS_LOG_TYPE_DEBUG, "[DEBUG] Creation of record for %@ failed: %@%@", buf, 0x20u);
        }

        stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
        [stageRegistry cleanupStagedUploadWithID:dCopy];

        [(BRCFSUploader *)self setState:33 forItem:itemCopy];
        [(BRCFSUploader *)self _reportUploadErrorForDocument:itemCopy error:location];
        [(BRCFSUploader *)self _handleFileModifiedError:location forItem:itemCopy];
        v61 = location;
        currentVersion2 = [itemCopy currentVersion];
        [currentVersion2 setUploadError:v61];

        [itemCopy saveToDB];
        contextCopy = v70;
      }

      lCopy = v71;
    }

    else
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [BRCFSUploader _updateRecord:item:syncContext:targetThumbnailURL:stageID:];
      }

      [itemCopy markNeedsReading];
      [itemCopy saveToDB];
    }
  }
}

- (void)_updateRecord:(id)record jobID:(id)d syncContext:(id)context targetThumbnailURL:(id)l stageID:(id)iD
{
  v31 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  dCopy = d;
  contextCopy = context;
  lCopy = l;
  iDCopy = iD;
  v17 = [(BRCFSUploader *)self _documentItemForJobID:dCopy stageID:iDCopy];
  if (v17)
  {
    memset(v22, 0, sizeof(v22));
    __brc_create_section(0, "[BRCFSUploader _updateRecord:jobID:syncContext:targetThumbnailURL:stageID:]", 1092, 0, v22);
    v18 = brc_bread_crumbs();
    v19 = brc_default_log();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v21 = v22[0];
      itemID = [v17 itemID];
      *buf = 134218754;
      v24 = v21;
      v25 = 2112;
      v26 = dCopy;
      v27 = 2112;
      v28 = itemID;
      v29 = 2112;
      v30 = v18;
      _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: Done generating thumbnail, building record for %@%@", buf, 0x2Au);
    }

    [(BRCFSUploader *)self _updateRecord:recordCopy item:v17 syncContext:contextCopy targetThumbnailURL:lCopy stageID:iDCopy];
    __brc_leave_section(v22);
  }
}

- (void)_computeRecordForJobID:(id)d item:(id)item syncContext:(id)context
{
  v58 = *MEMORY[0x277D85DE8];
  dCopy = d;
  itemCopy = item;
  contextCopy = context;
  memset(v48, 0, sizeof(v48));
  __brc_create_section(0, "[BRCFSUploader _computeRecordForJobID:item:syncContext:]", 1105, 0, v48);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v33 = v48[0];
    itemID = [itemCopy itemID];
    *buf = 134218754;
    v51 = v33;
    v52 = 2112;
    v53 = dCopy;
    v54 = 2112;
    v55 = itemID;
    v56 = 2112;
    v57 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: Preparing record for upload of %@%@", buf, 0x2Au);
  }

  v11 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v14 = [v11 stringWithFormat:@"upload-%@-%@", dCopy, uUIDString];

  currentVersion = [itemCopy currentVersion];
  ckInfo = [currentVersion ckInfo];
  v17 = [itemCopy baseRecordClearAllFields:ckInfo != 0];

  if ([itemCopy shouldTransferThumbnail])
  {
    v18 = objc_alloc(MEMORY[0x277CCAD78]);
    v49[0] = 0;
    v49[1] = 0;
    v40 = [v18 initWithUUIDBytes:v49];
    v19 = MEMORY[0x277CCACA8];
    volume = [(BRCAccountSession *)self->super.super._session volume];
    deviceID = [volume deviceID];
    fileIDForUpload = [itemCopy fileIDForUpload];
    v39 = [v19 br_pathWithDeviceID:deviceID fileID:{objc_msgSend(fileIDForUpload, "unsignedLongLongValue")}];

    v23 = [MEMORY[0x277CBEBC0] fileURLWithPath:v39];
    [(BRCFSUploader *)self _updateJobID:dCopy setStageID:v14 operationID:v40];
    stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
    v25 = [stageRegistry createURLForThumbnailUploadWithStageID:v14];

    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __57__BRCFSUploader__computeRecordForJobID_item_syncContext___block_invoke;
    v43[3] = &unk_278505690;
    v43[4] = self;
    v44 = v17;
    v26 = dCopy;
    v45 = v26;
    v27 = contextCopy;
    v46 = v27;
    v47 = v14;
    v28 = MEMORY[0x22AA4A310](v43);
    thumbnailGenerationManager = [(BRCFSUploader *)self thumbnailGenerationManager];
    v30 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v26, "itemDBRowID")}];
    [thumbnailGenerationManager addThumbnailGenerationJobAtURL:v23 targetURL:v25 thumbnailID:v30 syncContext:v27 completionHandler:v28];
  }

  else
  {
    v31 = brc_bread_crumbs();
    v32 = brc_default_log();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      isInDocumentScope = [itemCopy isInDocumentScope];
      shouldHaveThumbnail = [itemCopy shouldHaveThumbnail];
      v37 = "no";
      *buf = 138413058;
      v51 = dCopy;
      if (isInDocumentScope)
      {
        v38 = "yes";
      }

      else
      {
        v38 = "no";
      }

      v52 = 2080;
      v53 = v38;
      if (shouldHaveThumbnail)
      {
        v37 = "yes";
      }

      v54 = 2080;
      v55 = v37;
      v56 = 2112;
      v57 = v31;
      _os_log_debug_impl(&dword_223E7A000, v32, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: skipping thumbnail (inDocumentScope:%s shouldHaveThumbnail:%s shouldTransferThumbnail:no)%@", buf, 0x2Au);
    }

    [(BRCFSUploader *)self _updateRecord:v17 item:itemCopy syncContext:contextCopy targetThumbnailURL:0 stageID:v14];
  }

  __brc_leave_section(v48);
}

void __57__BRCFSUploader__computeRecordForJobID_item_syncContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = *(a1 + 32);
  v4 = *(v11 + 112);
  v5 = *(v11 + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__BRCFSUploader__computeRecordForJobID_item_syncContext___block_invoke_2;
  v12[3] = &unk_278505668;
  v6 = *(&v11 + 1);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *&v9 = v7;
  *(&v9 + 1) = v8;
  v13 = v11;
  v14 = v9;
  v15 = v3;
  v16 = *(a1 + 64);
  v10 = v3;
  brc_task_tracker_async_with_logs(v4, v5, v12, &__block_literal_global_185);
}

void __57__BRCFSUploader__computeRecordForJobID_item_syncContext___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) _updateRecord:*(a1 + 40) jobID:*(a1 + 48) syncContext:*(a1 + 56) targetThumbnailURL:*(a1 + 64) stageID:*(a1 + 72)];

  objc_autoreleasePoolPop(v2);
}

- (id)_duplicatePackage:(id)package stageID:(id)d stageName:(id)name error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  v12 = [MEMORY[0x277CBC538] br_packageWithPackage:package error:error];
  if (v12)
  {
    stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
    v14 = [stageRegistry createURLForUploadWithStageID:dCopy name:nameCopy];

    if ([v12 anchorAtURL:v14 error:error])
    {
      v15 = v12;
      goto LABEL_16;
    }

    v16 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      path = [(__CFString *)v14 path];
      v20 = path;
      if (error)
      {
        v21 = *error;
      }

      else
      {
        v21 = @"unknown";
      }

      v23 = 138413058;
      v24 = v12;
      v25 = 2112;
      v26 = path;
      v27 = 2112;
      v28 = v21;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] can't anchor the package %@ at %@: %@%@", &v23, 0x2Au);
    }
  }

  else
  {
    v14 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        v17 = *error;
      }

      else
      {
        v17 = @"unknown";
      }

      v23 = 138412802;
      v24 = 0;
      v25 = 2112;
      v26 = v17;
      v27 = 2112;
      v28 = v14;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] can't duplicate the package %@: %@%@", &v23, 0x20u);
    }
  }

  v15 = 0;
LABEL_16:

  return v15;
}

- (BOOL)_finishPackageUploadWithRecord:(id)record item:(id)item stageID:(id)d packageChecksummer:(id)checksummer error:(id *)error
{
  v74 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  itemCopy = item;
  dCopy = d;
  checksummerCopy = checksummer;
  v13 = objc_alloc_init(BRFieldPkgItem);
  v50 = recordCopy;
  v53 = [recordCopy objectForKeyedSubscript:?];
  dbFacade = [itemCopy dbFacade];
  v52 = [dbFacade getAssetRanksForFileItemsInPackage:itemCopy];
  v49 = itemCopy;
  [BRCPackageItem packageItemsForItem:itemCopy order:2];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v60 = 0u;
  v14 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v58;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v58 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v57 + 1) + 8 * i);
        v20 = objc_autoreleasePoolPush();
        if ([v19 isFile])
        {
          v21 = [v52 countOfIndexesInRange:{0, objc_msgSend(v19, "assetRank")}];
          v56 = v16;
          v22 = [v53 itemAtIndex:v21 error:&v56];
          v23 = v56;

          if (!v22)
          {
            v38 = brc_bread_crumbs();
            v28 = brc_default_log();
            if (os_log_type_enabled(v28, 0x90u))
            {
              assetRank = [v19 assetRank];
              *buf = 134218498;
              v62 = assetRank;
              v63 = 2112;
              v64 = v23;
              v65 = 2112;
              v27 = v38;
              v66 = v38;
              _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] Couldn't get CKPackageItem for index %lld with error %@%@", buf, 0x20u);
              goto LABEL_22;
            }

            v30 = v49;
            v29 = v50;
            v31 = dCopy;
            v27 = v38;
LABEL_30:

            objc_autoreleasePoolPop(v20);
            [checksummerCopy done];
            v36 = v23;
            if (v36)
            {
              v39 = brc_bread_crumbs();
              v40 = brc_default_log();
              if (os_log_type_enabled(v40, 0x90u))
              {
                v44 = "(passed to caller)";
                *buf = 136315906;
                v62 = "[BRCFSUploader _finishPackageUploadWithRecord:item:stageID:packageChecksummer:error:]";
                v63 = 2080;
                if (!error)
                {
                  v44 = "(ignored by caller)";
                }

                v64 = v44;
                v65 = 2112;
                v66 = v36;
                v67 = 2112;
                v68 = v39;
                _os_log_error_impl(&dword_223E7A000, v40, 0x90u, "[ERROR] %s: %s error: %@%@", buf, 0x2Au);
              }
            }

            if (error)
            {
              v41 = v36;
              v37 = 0;
              *error = v36;
            }

            else
            {
              v37 = 0;
            }

            v16 = v36;
            goto LABEL_37;
          }

          signature = [v22 signature];

          if (!signature)
          {
            [BRCFSUploader _finishPackageUploadWithRecord:v71 item:&v72 stageID:? packageChecksummer:? error:?];
          }

          signature2 = [v22 signature];
          [v19 setContentSignature:signature2];
        }

        else
        {
          v23 = v16;
        }

        [(BRFieldPkgItem *)v13 updateWithPkgItem:v19];
        if ([(BRFieldPkgItem *)v13 type]== 2 && ![(BRFieldPkgItem *)v13 hasSignature])
        {
          [BRCFSUploader _finishPackageUploadWithRecord:v69 item:&v70 stageID:? packageChecksummer:? error:?];
        }

        v55 = v23;
        v26 = [checksummerCopy addItem:v13 error:&v55];
        v16 = v55;

        if ((v26 & 1) == 0)
        {
          v27 = brc_bread_crumbs();
          v28 = brc_default_log();
          if (os_log_type_enabled(v28, 0x90u))
          {
            *buf = 138412802;
            v62 = v13;
            v63 = 2112;
            v64 = v16;
            v65 = 2112;
            v66 = v27;
            _os_log_error_impl(&dword_223E7A000, v28, 0x90u, "[ERROR] Couldn't add %@ to checksummer - error %@%@", buf, 0x20u);
          }

          v23 = v16;
LABEL_22:
          v30 = v49;
          v29 = v50;
          v31 = dCopy;
          goto LABEL_30;
        }

        [(BRFieldPkgItem *)v13 clear];
        objc_autoreleasePoolPop(v20);
      }

      v15 = [obj countByEnumeratingWithState:&v57 objects:v73 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 0;
  }

  [checksummerCopy done];
  signature3 = [checksummerCopy signature];
  v29 = v50;
  [v50 setObject:signature3 forKeyedSubscript:@"pkgSignature"];

  v31 = dCopy;
  v33 = [(BRCFSUploader *)self _duplicatePackage:v53 stageID:dCopy stageName:@"ckpackage" error:error];

  if (!v33)
  {
    v37 = 0;
    v30 = v49;
    v42 = dbFacade;
    goto LABEL_39;
  }

  [v50 setObject:v33 forKeyedSubscript:@"pkgContent"];
  v34 = [v50 objectForKeyedSubscript:@"pkgXattrs"];
  if (v34)
  {
    v35 = v34;
    v36 = [(BRCFSUploader *)self _duplicatePackage:v34 stageID:dCopy stageName:@"ckpackage-xattrs" error:error];

    v30 = v49;
    if (v36)
    {
      [v50 setObject:v36 forKeyedSubscript:@"pkgXattrs"];
      v37 = 1;
      v53 = v33;
LABEL_37:
      v42 = dbFacade;

      v33 = v53;
      goto LABEL_38;
    }

    v37 = 0;
  }

  else
  {
    v37 = 1;
    v30 = v49;
  }

  v42 = dbFacade;
LABEL_38:

LABEL_39:
  return v37;
}

- (void)_handleFileModifiedError:(id)error forItem:(id)item
{
  errorCopy = error;
  itemCopy = item;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCFSUploader _handleFileModifiedError:forItem:];
  }

  asDocument = [itemCopy asDocument];

  [asDocument reIngestFromFileProvider];
}

- (BOOL)_shouldReingestAfterUploadErrorWithItem:(id)item record:(id)record
{
  v71 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  recordCopy = record;
  v8 = MEMORY[0x277CCABB0];
  volume = [(BRCAccountSession *)self->super.super._session volume];
  v54 = [v8 numberWithInt:{objc_msgSend(volume, "deviceID")}];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  allKeys = [recordCopy allKeys];
  v52 = [allKeys countByEnumeratingWithState:&v59 objects:v70 count:16];
  if (v52)
  {
    v11 = *v60;
    v47 = itemCopy;
    selfCopy = self;
    while (2)
    {
      v12 = 0;
      v13 = v52;
      do
      {
        if (*v60 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v59 + 1) + 8 * v12);
        v15 = [recordCopy objectForKeyedSubscript:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          deviceID = [v15 deviceID];
          if (deviceID)
          {
            v17 = deviceID;
            v18 = [deviceID br_isEqualToNumber:v54];

            if ((v18 & 1) == 0)
            {
LABEL_33:
              v40 = brc_bread_crumbs();
              v41 = brc_default_log();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412802;
                v64 = v14;
                v65 = 2112;
                itemCopy = v47;
                v66 = v47;
                v67 = 2112;
                v68 = v40;
                _os_log_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEFAULT, "[WARNING] CKAsset of key %@ for %@ is pointing to the wrong device ID%@", buf, 0x20u);
              }

              else
              {
                itemCopy = v47;
              }

LABEL_38:

              goto LABEL_42;
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = v14;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            obj = [v15 itemEnumerator];
            v19 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v56;
              v49 = recordCopy;
              v50 = v15;
              v51 = allKeys;
              v46 = v11;
              while (2)
              {
                for (i = 0; i != v20; ++i)
                {
                  if (*v56 != v21)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v23 = *(*(&v55 + 1) + 8 * i);
                  deviceID2 = [v23 deviceID];
                  v25 = deviceID2;
                  if (deviceID2 && ([deviceID2 br_isEqualToNumber:v54] & 1) == 0)
                  {

                    recordCopy = v49;
                    v15 = v50;
                    allKeys = v51;
                    v14 = v48;
                    goto LABEL_33;
                  }

                  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
                  fileURL = [v23 fileURL];
                  path = [fileURL path];
                  v29 = [defaultManager fileExistsAtPath:path];

                  if ((v29 & 1) == 0)
                  {
                    v38 = brc_bread_crumbs();
                    v39 = brc_default_log();
                    allKeys = v51;
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
                    {
                      [BRCFSUploader _shouldReingestAfterUploadErrorWithItem:record:];
                    }

                    v40 = brc_bread_crumbs();
                    v41 = brc_default_log();
                    itemCopy = v47;
                    v15 = v50;
                    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412802;
                      v64 = v48;
                      v65 = 2112;
                      v66 = v47;
                      v67 = 2112;
                      v68 = v40;
                      _os_log_impl(&dword_223E7A000, v41, OS_LOG_TYPE_DEFAULT, "[WARNING] found a missing file in the package. key %@ item %@%@", buf, 0x20u);
                    }

                    recordCopy = v49;
                    goto LABEL_38;
                  }
                }

                v20 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
                recordCopy = v49;
                v15 = v50;
                allKeys = v51;
                v11 = v46;
                if (v20)
                {
                  continue;
                }

                break;
              }
            }

            v13 = v52;
          }
        }

        ++v12;
      }

      while (v12 != v13);
      itemCopy = v47;
      self = selfCopy;
      v52 = [allKeys countByEnumeratingWithState:&v59 objects:v70 count:16];
      if (v52)
      {
        continue;
      }

      break;
    }
  }

  *buf = 0;
  stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
  fileIDForUpload = [itemCopy fileIDForUpload];
  v32 = [stageRegistry existsInUploadOrLiveItemsStage:objc_msgSend(fileIDForUpload generationID:{"longLongValue"), buf}];

  if (v32)
  {
    v33 = *buf;
    generationIDForUpload = [itemCopy generationIDForUpload];
    fsGenerationID = [generationIDForUpload fsGenerationID];
    unsignedIntValue = [fsGenerationID unsignedIntValue];

    if (v33 == unsignedIntValue)
    {
      v37 = 0;
      goto LABEL_43;
    }

    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader _shouldReingestAfterUploadErrorWithItem:record:];
    }
  }

  else
  {
    v42 = brc_bread_crumbs();
    v43 = brc_default_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader _shouldReingestAfterUploadErrorWithItem:record:];
    }
  }

LABEL_42:
  v37 = 1;
LABEL_43:

  return v37;
}

- (BOOL)_retryUploadForError:(id)error jobID:(id)d recomputeRecord:(BOOL)record syncContext:(id)context
{
  contextCopy = context;
  session = self->super.super._session;
  dCopy = d;
  errorCopy = error;
  clientDB = [(BRCAccountSession *)session clientDB];
  if (record)
  {
    contextIdentifier = @"_prepare";
  }

  else
  {
    contextIdentifier = [contextCopy contextIdentifier];
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __72__BRCFSUploader__retryUploadForError_jobID_recomputeRecord_syncContext___block_invoke;
  v21[3] = &unk_2784FF870;
  v22 = contextCopy;
  v16 = contextCopy;
  v17 = MEMORY[0x22AA4A310](v21);
  matchingJobsWhereSQLClause = [dCopy matchingJobsWhereSQLClause];

  v19 = [clientDB execute:{@"UPDATE client_uploads SET transfer_queue = %@, transfer_operation = call_block(%@, next_retry_stamp), upload_error = %@ WHERE %@", contextIdentifier, v17, errorCopy, matchingJobsWhereSQLClause}];
  if (!record)
  {
  }

  return v19;
}

void __72__BRCFSUploader__retryUploadForError_jobID_recomputeRecord_syncContext___block_invoke(uint64_t a1, sqlite3_context *a2, uint64_t a3, sqlite3_value **a4)
{
  v6 = sqlite3_value_int64(*a4);
  v7 = [*(a1 + 32) uploadStream];
  [v7 signalWithDeadline:v6];

  sqlite3_result_null(a2);
}

- (void)_sendItemNotFoundStatsTelemetryForFileID:(id)d
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CC6490];
  dCopy = d;
  v6 = [v4 alloc];
  unsignedLongLongValue = [dCopy unsignedLongLongValue];

  v8 = [v6 initWithFileID:unsignedLongLongValue];
  session = self->super.super._session;
  v12[0] = v8;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__BRCFSUploader__sendItemNotFoundStatsTelemetryForFileID___block_invoke;
  v11[3] = &unk_2785056B8;
  v11[4] = self;
  [(BRCAccountSession *)session sendFileStatsTelemetryWithDescriptors:v10 perItemSendTelemetryBlock:v11];
}

void __58__BRCFSUploader__sendItemNotFoundStatsTelemetryForFileID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 diagnosticAttributes];
  v5 = [AppTelemetryTimeSeriesEvent newUploadErrorForEventName:@"CA_UPLOAD_ERROR" foundInfo:v3];

  v4 = [*(*(a1 + 32) + 8) analyticsReporter];
  [v4 postReportForDefaultSubCategoryWithCategory:9 telemetryTimeEvent:v5];
}

- (void)_finishedUploadingItem:(id)item record:(id)record jobID:(id)d stageID:(id)iD syncContext:(id)context hasPerformedServerSideAssetCopy:(BOOL)copy error:(id)error
{
  v103 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  recordCopy = record;
  dCopy = d;
  iDCopy = iD;
  contextCopy = context;
  errorCopy = error;
  v86 = itemCopy;
  clientZone = [itemCopy clientZone];
  memset(v92, 0, sizeof(v92));
  __brc_create_section(0, "[BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:]", 1364, 0, v92);
  v16 = brc_bread_crumbs();
  v17 = brc_default_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v37 = v92[0];
    digestDescription = [itemCopy digestDescription];
    v39 = digestDescription;
    v40 = @"success";
    *buf = 134219010;
    if (errorCopy)
    {
      v40 = errorCopy;
    }

    v94 = v37;
    v95 = 2112;
    v96 = dCopy;
    v97 = 2112;
    v98 = digestDescription;
    v99 = 2112;
    v100 = v40;
    v101 = 2112;
    v102 = v16;
    _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%@]: done with %@ (%@)%@", buf, 0x34u);
  }

  [(__CFString *)errorCopy brc_logUnderlineErrorsChain];
  if ([clientZone handleZoneLevelErrorIfNeeded:errorCopy forItemCreation:1])
  {
    goto LABEL_80;
  }

  if (errorCopy)
  {
    goto LABEL_5;
  }

  v18 = [recordCopy objectForKeyedSubscript:@"pkgContent"];
  v19 = !v18 || copy;

  if (!v19)
  {
    v20 = objc_opt_new();
    v91 = 0;
    v21 = [(BRCFSUploader *)self _finishPackageUploadWithRecord:recordCopy item:itemCopy stageID:iDCopy packageChecksummer:v20 error:&v91];
    errorCopy = v91;

    if (!v21)
    {
      if (!errorCopy)
      {
        v76 = brc_bread_crumbs();
        v77 = brc_default_log();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_FAULT))
        {
          [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
        }
      }

      v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:512 userInfo:0];

      errorCopy = v22;
    }

    if (errorCopy)
    {
LABEL_5:
      if (([(__CFString *)errorCopy brc_isCloudKitMMCSErrorChunksCouldNotBeRegisteredError]& 1) != 0 && ![(BRCFSUploader *)self _shouldReingestAfterUploadErrorWithItem:itemCopy record:recordCopy])
      {
        v25 = MEMORY[0x277CCACA8];
        volume = [(BRCAccountSession *)self->super.super._session volume];
        deviceID = [volume deviceID];
        fileIDForUpload = [itemCopy fileIDForUpload];
        v29 = [v25 br_pathWithDeviceID:deviceID fileID:{objc_msgSend(fileIDForUpload, "unsignedLongLongValue")}];

        v30 = [MEMORY[0x277CBEBC0] fileURLWithPath:v29];
        v31 = [objc_alloc(MEMORY[0x277CCAC90]) initWithURL:v30 readonly:1];
        v90 = 0;
        v32 = [BRCDocumentSignatureCalculator calculateSignatureForScopedURLWrapper:v31 boundaryKey:0 error:&v90];
        v79 = v90;
        if (([v79 br_isPOSIXErrorCode:2] & 1) != 0 || objc_msgSend(v79, "br_isPOSIXErrorCode:", 34))
        {
          v33 = brc_bread_crumbs();
          v34 = brc_default_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
          }

          v35 = [MEMORY[0x277CCA9B8] brc_errorDamagedDocumentOnDiskWithUnderlyingError:v79];

          analyticsReporter = [(BRCAccountSession *)self->super.super._session analyticsReporter];
          [analyticsReporter aggregateReportForAppTelemetryIdentifier:215 error:v35];
        }

        else
        {
          v35 = errorCopy;
        }

        errorCopy = v35;
      }

      else
      {
        v79 = 0;
      }

      brc_isCloudKitUnknownItemError = [(__CFString *)errorCopy brc_isCloudKitUnknownItemError];
      if (brc_isCloudKitUnknownItemError)
      {
        v42 = brc_bread_crumbs();
        v43 = brc_default_log();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
        }

        [v86 handleUnknownItemError];
        uploadFileModifiedThrottle = 0;
        goto LABEL_41;
      }

      if (([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetRecheck]& 1) != 0 || ([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetRescan]& 1) != 0 || [(__CFString *)errorCopy br_isCKErrorCode:12])
      {
        if ([(BRCFSUploader *)self _shouldReingestAfterUploadErrorWithItem:v86 record:recordCopy])
        {
          [(BRCFSUploader *)self _handleFileModifiedError:errorCopy forItem:v86];
          uploadFileModifiedThrottle = [contextCopy uploadFileModifiedThrottle];
LABEL_41:
          v78 = 0;
LABEL_42:
          v45 = brc_isCloudKitUnknownItemError ^ 1;
          goto LABEL_43;
        }

        v62 = brc_bread_crumbs();
        v63 = brc_default_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
        }

        if ([(__CFString *)errorCopy brc_isCloudKitErrorDataProtectionClass]&& self->_isScreenLocked)
        {
          v64 = brc_bread_crumbs();
          v65 = brc_default_log();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
          }

LABEL_85:
          v78 = 0;
LABEL_86:

          uploadFileModifiedThrottle = 0;
          goto LABEL_42;
        }

        v66 = 1;
      }

      else
      {
        if (([(__CFString *)errorCopy brc_isCloudKitErrorNoNetwork]& 1) != 0 || [(__CFString *)errorCopy brc_isNetworkUnreachableError])
        {
          v64 = brc_bread_crumbs();
          v65 = brc_default_log();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
          }

          goto LABEL_85;
        }

        if ([(__CFString *)errorCopy brc_isCloudKitErrorRequiresVerifyTerms])
        {
          v70 = +[BRCAccountHandler currentiCloudAccount];
          br_needsToVerifyTerms = [v70 br_needsToVerifyTerms];

          if (br_needsToVerifyTerms)
          {
            v64 = brc_bread_crumbs();
            v65 = brc_default_log();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
            {
              [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
            }

            v78 = 1;
            goto LABEL_86;
          }
        }

        if (([(__CFString *)errorCopy brc_isCloudKitErrorServerRejectedRequest]& 1) == 0 && ([(__CFString *)errorCopy brc_isCloudKitCancellationError]& 1) == 0 && ([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetReupload]& 1) == 0 && ![(__CFString *)errorCopy brc_isRetriable])
        {
          v64 = brc_bread_crumbs();
          v65 = brc_default_log();
          if (os_log_type_enabled(v65, 0x90u))
          {
            v74 = [v86 st];
            displayName = [v74 displayName];
            *buf = 138412802;
            v94 = displayName;
            v95 = 2112;
            v96 = errorCopy;
            v97 = 2112;
            v98 = v64;
            _os_log_error_impl(&dword_223E7A000, v65, 0x90u, "[ERROR] non recoverable error while uploading %@: %@%@", buf, 0x20u);
          }

          goto LABEL_85;
        }

        v72 = brc_bread_crumbs();
        v73 = brc_default_log();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
        }

        v66 = 0;
      }

      [(BRCFSUploader *)self _retryUploadForError:errorCopy jobID:dCopy recomputeRecord:v66 syncContext:contextCopy];
      v45 = 0;
      v78 = 0;
      uploadFileModifiedThrottle = 0;
LABEL_43:
      v46 = brc_bread_crumbs();
      v47 = brc_default_log();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
      }

      uploadThrottle = uploadFileModifiedThrottle;
      if (!uploadFileModifiedThrottle)
      {
        uploadThrottle = [contextCopy uploadThrottle];
      }

      v49 = [(BRCFSSchedulerBase *)self postponeJobID:dCopy withThrottle:uploadThrottle];
      if (!uploadFileModifiedThrottle)
      {
      }

      appLibrary = [v86 appLibrary];
      mangledID = [appLibrary mangledID];
      v52 = [BRCUserDefaults defaultsForMangledID:mangledID];
      uploadRetryCountForFailure = [v52 uploadRetryCountForFailure];

      if (errorCopy)
      {
        if (([(__CFString *)errorCopy brc_isCloudKitMMCSItemNotAvailable]& 1) != 0)
        {
          brc_isCloudKitMMCSItemNotFound = 1;
        }

        else
        {
          brc_isCloudKitMMCSItemNotFound = [(__CFString *)errorCopy brc_isCloudKitMMCSItemNotFound];
        }
      }

      else
      {
        brc_isCloudKitMMCSItemNotFound = 0;
      }

      appLibrary2 = [v86 appLibrary];
      mangledID2 = [appLibrary2 mangledID];
      v57 = [BRCUserDefaults defaultsForMangledID:mangledID2];
      uploadRetryCountForAssetNotFoundFailure = [v57 uploadRetryCountForAssetNotFoundFailure];

      if ((v45 & 1) == 0)
      {
        if (v49 > uploadRetryCountForFailure || ((v49 > uploadRetryCountForAssetNotFoundFailure) & brc_isCloudKitMMCSItemNotFound) != 0)
        {
          [(BRCFSUploader *)self _reportUploadErrorForDocument:v86 error:errorCopy underlyingError:v79];
          if (brc_isCloudKitMMCSItemNotFound)
          {
            fileIDForUpload2 = [v86 fileIDForUpload];
            [(BRCFSUploader *)self _sendItemNotFoundStatsTelemetryForFileID:fileIDForUpload2];
          }
        }

        v61 = v79;
        goto LABEL_79;
      }

      if (([(__CFString *)errorCopy brc_isCloudKitOutOfQuota]& 1) != 0)
      {
        v59 = 32;
      }

      else if (([(__CFString *)errorCopy brc_isCloudKitErrorDataProtectionClass]& 1) != 0)
      {
        v59 = 35;
      }

      else if (([(__CFString *)errorCopy brc_isCloudKitErrorNoNetwork]& 1) != 0 || ([(__CFString *)errorCopy brc_isNetworkUnreachableError]& 1) != 0)
      {
        v59 = 36;
      }

      else if ((v78 & [(__CFString *)errorCopy brc_isCloudKitErrorRequiresVerifyTerms]& 1) != 0)
      {
        v59 = 37;
      }

      else
      {
        if (![(__CFString *)errorCopy brc_isNetworkUnreachableDueToCellularError])
        {
          [(BRCFSUploader *)self setState:33 forItem:v86 uploadError:errorCopy];
          if (([(__CFString *)errorCopy brc_isCloudKitErrorRequiringAssetRescan]& 1) == 0)
          {
            [(BRCFSUploader *)self _reportUploadErrorForDocument:v86 error:errorCopy];
          }

          goto LABEL_76;
        }

        v59 = 38;
      }

      [(BRCFSUploader *)self setState:v59 forItem:v86 uploadError:errorCopy];
LABEL_76:

      goto LABEL_77;
    }
  }

  if ([itemCopy isReadAndUploaded] && (!objc_msgSend(itemCopy, "isDead") || objc_msgSend(itemCopy, "syncUpState") != 4))
  {
    v23 = brc_bread_crumbs();
    v24 = brc_default_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [BRCFSUploader _finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:];
    }
  }

  [itemCopy markUploadedWithRecord:recordCopy];
  [(BRCFSUploader *)self _clearUploadErrorForDocument:itemCopy];
  errorCopy = 0;
LABEL_77:
  currentVersion = [v86 currentVersion];
  [currentVersion setUploadError:errorCopy];

  [v86 saveToDB];
  if (errorCopy)
  {
    clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
    serialQueue = [clientDB serialQueue];
    v87[0] = MEMORY[0x277D85DD0];
    v87[1] = 3221225472;
    v87[2] = __111__BRCFSUploader__finishedUploadingItem_record_jobID_stageID_syncContext_hasPerformedServerSideAssetCopy_error___block_invoke;
    v87[3] = &unk_2784FF478;
    v88 = clientZone;
    v89 = dCopy;
    dispatch_async_with_logs_8(serialQueue, v87);

    [v86 recoverDamagedDocumentIfNecessaryWithError:errorCopy];
    v61 = v88;
LABEL_79:
  }

LABEL_80:
  __brc_leave_section(v92);
}

void __111__BRCFSUploader__finishedUploadingItem_record_jobID_stageID_syncContext_hasPerformedServerSideAssetCopy_error___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) itemByRowID:{objc_msgSend(*(a1 + 40), "itemDBRowID")}];
  [v1 triggerNotificationIfNeeded];
}

- (void)_serializeServerSideAssetCopyPluginFieldsForRecord:(id)record newZone:(id)zone origZone:(id)origZone
{
  v18[1] = *MEMORY[0x277D85DE8];
  zoneCopy = zone;
  origZoneCopy = origZone;
  recordCopy = record;
  if ([zoneCopy isPrivateZone] && (objc_msgSend(origZoneCopy, "isPrivateZone") & 1) != 0)
  {
    v10 = 1;
  }

  else if ([zoneCopy isSharedZone] && objc_msgSend(origZoneCopy, "isSharedZone"))
  {
    asSharedClientZone = [zoneCopy asSharedClientZone];
    ownerName = [asSharedClientZone ownerName];

    asSharedClientZone2 = [origZoneCopy asSharedClientZone];
    ownerName2 = [asSharedClientZone2 ownerName];

    if (ownerName2)
    {
      if ([ownerName isEqualToString:ownerName2])
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 2;
  }

  v17 = @"br_assetRereference";
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v10];
  v18[0] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [recordCopy setPluginFields:v16];
}

- (void)_performServerSideAssetCopyForItem:(id)item transferSize:(unint64_t)size
{
  v71[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  currentVersion = [itemCopy currentVersion];
  previousItemGlobalID = [currentVersion previousItemGlobalID];

  dbRowID = [itemCopy dbRowID];
  session = self->super.super._session;
  zoneRowID = [previousItemGlobalID zoneRowID];
  v8 = [(BRCAccountSession *)session serverZoneByRowID:zoneRowID];

  itemID = [previousItemGlobalID itemID];
  zoneID = [v8 zoneID];
  v10 = [itemID contentsRecordIDInZoneID:zoneID];

  baseRecord = [itemCopy baseRecord];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3032000000;
  v67 = __Block_byref_object_copy__39;
  v68 = __Block_byref_object_dispose__39;
  v69 = 0;
  v12 = [BRCUserDefaults defaultsForMangledID:0];
  LODWORD(session) = [v12 supportsEnhancedDrivePrivacy];

  if (session)
  {
    clientZone = [v8 clientZone];
    v14 = [itemCopy db];
    v15 = [clientZone contentBoundaryKeyForItemID:itemID withDB:v14];
    v16 = v65[5];
    v65[5] = v15;
  }

  v17 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [itemCopy dbRowID]);
  clientZone2 = [v8 clientZone];
  v19 = [clientZone2 serverItemByItemID:itemID];

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke;
  v56[3] = &unk_278505708;
  v45 = v17;
  v57 = v45;
  v44 = v8;
  v58 = v44;
  v20 = itemCopy;
  v59 = v20;
  selfCopy = self;
  v21 = v10;
  v61 = v21;
  v63 = &v64;
  v43 = baseRecord;
  v62 = v43;
  v22 = MEMORY[0x22AA4A310](v56);
  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v20;
  }

  if ([v23 isPackage])
  {
    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader _performServerSideAssetCopyForItem:transferSize:];
    }

    v26 = objc_alloc(MEMORY[0x277CBC3E0]);
    v71[0] = v21;
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:1];
    v28 = [v26 initWithRecordIDs:v27];

    [v28 setShouldFetchAssetContent:0];
    v70[0] = @"pkgManifest";
    v70[1] = @"pkgXattrs";
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:2];
    [v28 setDesiredKeys:v29];

    v30 = [BRCUserDefaults defaultsForMangledID:0];
    requestCKCacheAssetClone = [v30 requestCKCacheAssetClone];

    if (requestCKCacheAssetClone)
    {
      [v28 setShouldCloneFileInAssetCache:1];
    }

    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_212;
    v49[3] = &unk_278505758;
    v49[4] = self;
    v55 = dbRowID;
    v32 = v45;
    v50 = v32;
    v51 = v21;
    v33 = v44;
    v52 = v33;
    v34 = itemID;
    v53 = v34;
    v54 = v22;
    [v28 setFetchRecordsCompletionBlock:v49];
    v35 = [BRCFetchRecordsWrapperOperation alloc];
    itemIDString = [v34 itemIDString];
    v37 = [MEMORY[0x277CBC4F8] br_operationGroupWithName:@"FetchRecordsWrapper"];
    v38 = [(BRCFetchRecordsWrapperOperation *)v35 initWithCKFetchRecordsOperation:v28 opName:itemIDString group:v37 serverZone:v33 isUserWaiting:0 sessionContext:self->super.super._session];

    syncContextUsedForTransfers = [v20 syncContextUsedForTransfers];
    uploadThrottle = [syncContextUsedForTransfers uploadThrottle];
    operationID = [(_BRCOperation *)v38 operationID];
    [(BRCFSUploader *)self _willAttemptJobID:v32 throttle:uploadThrottle operationID:operationID];

    [(_BRCOperation *)v38 schedule];
  }

  else
  {
    (v22)[2](v22, v20, v19, 0, 0);
  }

  _Block_object_dispose(&v64, 8);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, char a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = [v9 db];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2;
  v22[3] = &unk_2785056E0;
  v23 = *(a1 + 32);
  v24 = *(a1 + 40);
  v25 = v10;
  v26 = v9;
  *&v13 = *(a1 + 48);
  *(&v13 + 1) = *(a1 + 56);
  v21 = v13;
  v14 = *(a1 + 64);
  v15 = *(a1 + 72);
  v30 = *(a1 + 80);
  v16 = v15;
  *&v17 = v14;
  *(&v17 + 1) = v16;
  v27 = v21;
  v28 = v17;
  v29 = v11;
  v31 = a5;
  v18 = v11;
  v19 = v9;
  v20 = v10;
  [v12 groupInBatch:v22];
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_1();
  }

  if ([*(a1 + 40) isSharedZone])
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v5 = [*(a1 + 48) latestVersion];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [*(a1 + 56) currentVersion];
  }

  v8 = v7;

  v9 = [v8 isPackage];
  v10 = [v8 contentSignature];
  v11 = [*(a1 + 64) isFinderBookmark];
  if ([v10 brc_signatureIsValid])
  {
    if (v9)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_6();
      }

      if (*(a1 + 112) == 1)
      {
        v14 = *(a1 + 80);
        v15 = *(*(*(a1 + 104) + 8) + 40);
        v85 = 0;
        v16 = [MEMORY[0x277CBC538] br_clonedPackageWithRecordID:v14 databaseScope:v4 fieldName:@"pkgXattrs" boundaryKey:v15 error:&v85];
        v17 = v85;
        [*(a1 + 88) setObject:v16 forKeyedSubscript:@"pkgXattrs"];

        v18 = [*(a1 + 88) objectForKeyedSubscript:@"pkgXattrs"];

        if (!v18 || v17)
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_7();
          }
        }
      }

      else
      {
        v17 = 0;
      }

      v43 = *(a1 + 80);
      v44 = *(*(*(a1 + 104) + 8) + 40);
      v84 = v17;
      v45 = [MEMORY[0x277CBC538] br_clonedPackageWithRecordID:v43 databaseScope:v4 fieldName:@"pkgContent" boundaryKey:v44 error:&v84];
      v26 = v84;

      [*(a1 + 88) setObject:v45 forKeyedSubscript:@"pkgContent"];
      v46 = [*(a1 + 88) objectForKeyedSubscript:@"pkgContent"];

      if (!v46 || v26)
      {
        v47 = brc_bread_crumbs();
        v48 = brc_default_log();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_8();
        }
      }

      v31 = [objc_alloc(MEMORY[0x277CBC1B0]) initWithExistingRecordID:*(a1 + 80) databaseScope:v4 fieldName:@"pkgManifest" fileSignature:*(a1 + 96)];
      if (v31)
      {
        v49 = [MEMORY[0x277CBC190] br_assetWithAssetReferece:v31 boundaryKey:*(*(*(a1 + 104) + 8) + 40)];
        [*(a1 + 88) setObject:v49 forKeyedSubscript:@"pkgManifest"];

        v50 = [*(a1 + 88) objectForKeyedSubscript:@"pkgManifest"];

        if (v50)
        {
          v51 = [*(a1 + 56) currentVersion];
          v52 = [v51 contentSignature];
          [*(a1 + 88) setObject:v52 forKeyedSubscript:@"pkgSignature"];

          goto LABEL_45;
        }

        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_11();
        }
      }

      else
      {
        v41 = brc_bread_crumbs();
        v42 = brc_default_log();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_12();
        }
      }
    }

    else
    {
      v28 = brc_bread_crumbs();
      v29 = brc_default_log();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_3();
      }

      v30 = kBRRecordKeyFinderBookmarkContent;
      if (!v11)
      {
        v30 = kBRRecordKeyFileContent;
      }

      v26 = *v30;
      v31 = [objc_alloc(MEMORY[0x277CBC1B0]) initWithExistingRecordID:*(a1 + 80) databaseScope:v4 fieldName:v26 fileSignature:v10];
      if (!v31)
      {
        v32 = brc_bread_crumbs();
        v33 = brc_default_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_4();
        }
      }

      if (v11)
      {
        v34 = [*(a1 + 64) clientZone];
        v35 = [v34 enhancedDrivePrivacyEnabled];

        if (v35)
        {
          v36 = [MEMORY[0x277CBEA90] brc_generateSaltingKey];
          v37 = *(*(a1 + 104) + 8);
          v38 = *(v37 + 40);
          *(v37 + 40) = v36;
        }
      }

      v39 = [MEMORY[0x277CBC190] br_assetWithAssetReferece:v31 boundaryKey:*(*(*(a1 + 104) + 8) + 40)];
      [*(a1 + 88) setObject:v39 forKeyedSubscript:v26];

      v40 = [*(a1 + 88) objectForKeyedSubscript:v26];

      if (v40)
      {
LABEL_45:

        if ([v8 hasThumbnail])
        {
          v53 = [v8 thumbnailSignature];
          v54 = [v53 brc_signatureIsValid];

          if (v54)
          {
            v55 = objc_alloc(MEMORY[0x277CBC1B0]);
            v56 = *(a1 + 80);
            v57 = [v8 thumbnailSignature];
            v58 = [v55 initWithExistingRecordID:v56 databaseScope:v4 fieldName:@"thumb1024" fileSignature:v57];

            v59 = [MEMORY[0x277CBC190] br_assetWithAssetReferece:v58 boundaryKey:*(*(*(a1 + 104) + 8) + 40)];
            [*(a1 + 88) setObject:v59 forKeyedSubscript:@"thumb1024"];
          }

          else
          {
            v58 = brc_bread_crumbs();
            v59 = brc_default_log();
            if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
            {
              __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_9();
            }
          }
        }

        v60 = [v8 xattrSignature];

        if (!v60)
        {
          goto LABEL_66;
        }

        v61 = [v8 xattrSignature];
        v62 = [v61 brc_signatureIsValid];

        if (v62)
        {
          v63 = objc_alloc(MEMORY[0x277CBC1B0]);
          v64 = *(a1 + 80);
          v65 = [v8 xattrSignature];
          v66 = [v63 initWithExistingRecordID:v64 databaseScope:v4 fieldName:@"xattr" fileSignature:v65];

          v67 = [MEMORY[0x277CBC190] br_assetWithAssetReferece:v66 boundaryKey:*(*(*(a1 + 104) + 8) + 40)];
          [*(a1 + 88) setObject:v67 forKeyedSubscript:@"xattr"];

          v68 = *(*(*(a1 + 104) + 8) + 40);
          if (v68)
          {
            v69 = [v8 xattrSignature];
          }

          else
          {
            v69 = 0;
          }

          v75 = [*(a1 + 88) encryptedValues];
          [v75 setObject:v69 forKeyedSubscript:@"xattrSignature"];

          if (!v68)
          {
            goto LABEL_65;
          }
        }

        else
        {
          v66 = brc_bread_crumbs();
          v69 = brc_default_log();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
          {
            __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_10();
          }
        }

LABEL_65:
LABEL_66:
        [*(a1 + 88) serializeContentBoundaryKey:*(*(*(a1 + 104) + 8) + 40)];
        v76 = *(a1 + 72);
        v77 = *(a1 + 88);
        v78 = [*(a1 + 56) clientZone];
        v79 = [*(a1 + 48) clientZone];
        [v76 _serializeServerSideAssetCopyPluginFieldsForRecord:v77 newZone:v78 origZone:v79];

        v80 = *(a1 + 72);
        v81 = *(a1 + 56);
        v82 = *(a1 + 88);
        v83 = *(a1 + 32);
        v26 = [v81 syncContextUsedForTransfers];
        [v80 _finishedUploadingItem:v81 record:v82 jobID:v83 stageID:0 syncContext:v26 hasPerformedServerSideAssetCopy:1 error:0];
        goto LABEL_67;
      }

      v41 = brc_bread_crumbs();
      v42 = brc_default_log();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_5();
      }
    }

    v70 = *(a1 + 72);
    v71 = *(a1 + 56);
    v72 = *(a1 + 32);
    v73 = [v71 syncContextUsedForTransfers];
    v74 = [MEMORY[0x277CCA9B8] brc_errorCantCreateAsset];
    [v70 _finishedUploadingItem:v71 record:0 jobID:v72 stageID:0 syncContext:v73 hasPerformedServerSideAssetCopy:1 error:v74];
  }

  else
  {
    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_2();
    }

    v23 = *(a1 + 72);
    v24 = *(a1 + 56);
    v25 = *(a1 + 32);
    v26 = [v24 syncContextUsedForTransfers];
    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CBBF50] code:17 userInfo:0];
    [v23 _finishedUploadingItem:v24 record:0 jobID:v25 stageID:0 syncContext:v26 hasPerformedServerSideAssetCopy:1 error:v27];
  }

LABEL_67:
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_212(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_213;
  block[3] = &unk_278505730;
  v23 = *(a1 + 80);
  v8 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v18 = v6;
  v19 = v8;
  v20 = v5;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v21 = v14;
  v22 = v13;
  v15 = v5;
  v16 = v6;
  dispatch_async(v7, block);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_213(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) itemFetcher];
  v3 = [v2 itemByRowID:*(a1 + 96)];
  v4 = [v3 asDocument];

  if (*(a1 + 40))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v7 = [v4 syncContextUsedForTransfers];
    [v5 _finishedUploadingItem:v4 record:0 jobID:v6 stageID:0 syncContext:v7 hasPerformedServerSideAssetCopy:1 error:*(a1 + 40)];
  }

  else
  {
    v8 = [*(a1 + 56) objectForKeyedSubscript:*(a1 + 64)];
    v9 = [v8 objectForKeyedSubscript:@"pkgManifest"];
    if (v9)
    {
      v10 = v4 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412802;
        v28 = v8;
        v29 = 2112;
        v30 = v4;
        v31 = 2112;
        v32 = v11;
        _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: No error but also no asset or item with record %@ item %@%@", buf, 0x20u);
      }

      v13 = *(a1 + 32);
      v14 = *(a1 + 48);
      v17 = [v4 syncContextUsedForTransfers];
      v15 = [MEMORY[0x277CCA9B8] brc_errorItemChanged];
      [v13 _finishedUploadingItem:v4 record:0 jobID:v14 stageID:0 syncContext:v17 hasPerformedServerSideAssetCopy:1 error:v15];
    }

    else
    {
      v16 = [*(a1 + 72) clientZone];
      v17 = [v16 serverItemByItemID:*(a1 + 80)];

      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v25 = [*(a1 + 64) recordName];
        v24 = [v9 signature];
        v22 = MEMORY[0x277CCABB0];
        v26 = [v8 objectForKeyedSubscript:@"pkgXattrs"];
        [v22 numberWithInt:v26 != 0];
        *buf = 138413058;
        v28 = v25;
        v29 = 2112;
        v30 = v24;
        v32 = v31 = 2112;
        v23 = v32;
        v33 = 2112;
        v34 = v18;
        _os_log_debug_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEBUG, "[DEBUG] Record [%@] pkgManifest signature [%@] hasXattrs [%@]%@", buf, 0x2Au);
      }

      v20 = *(a1 + 88);
      v15 = [v9 signature];
      v21 = [v8 objectForKeyedSubscript:@"pkgXattrs"];
      (*(v20 + 16))(v20, v4, v17, v15, v21 != 0);
    }
  }
}

- (void)resetAndRescheduleUploaderConstraintCheckerIfNeeded
{
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB assertOnQueue];
  v2 = +[BRCUploadConstraintChecker defaultChecker];
  [v2 rescheduleAndResetAvailableSizeAndDateIfNeeded];
}

- (void)_transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority
{
  v85 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  selfCopy = self;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v7 = clientDB;
  [clientDB assertOnQueue];
  v60 = brc_current_date_nsec();
  if ([(BRCFSSchedulerBase *)selfCopy isCancelled])
  {
    goto LABEL_44;
  }

  contextIdentifier = [contextCopy contextIdentifier];
  v9 = [clientDB fetch:{@"  SELECT throttle_id, zone_rowid, transfer_size, transfer_record, next_retry_stamp, transfer_stage     FROM client_uploads    WHERE throttle_state = 1      AND transfer_queue = %@      AND transfer_operation IS NULL ORDER BY upload_priority DESC, transfer_size ASC", contextIdentifier}];

  v62 = 0;
  v56 = 0;
  val = 0;
  v58 = 0;
  v59 = 0x7FFFFFFFFFFFFFFFLL;
  while ([v9 next] && v58 + v62 + -[BRCTransferBatchOperation itemsCount](val, "itemsCount") < count)
  {
    context = objc_autoreleasePoolPush();
    v10 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v9 longLongAtIndex:0]);
    v11 = [v9 numberAtIndex:1];
    v12 = [v9 unsignedIntegerAtIndex:2];
    v68 = [v9 unarchivedObjectOfClass:objc_opt_class() atIndex:3];
    v13 = [v9 longLongAtIndex:4];
    v14 = [v9 stringAtIndex:5];
    if (v13 > v60)
    {
      v15 = v59;
      if (v59 >= v13)
      {
        v15 = v13;
      }

      v59 = v15;
      matchingJobsWhereSQLClause = [(BRCItemDBRowIDJobIdentifier *)v10 matchingJobsWhereSQLClause];
      [clientDB execute:{@"UPDATE client_uploads    SET transfer_queue = '_retry'  WHERE %@", matchingJobsWhereSQLClause}];
      v17 = 0;
      goto LABEL_33;
    }

    matchingJobsWhereSQLClause = [(BRCAccountSession *)selfCopy->super.super._session serverZoneByRowID:v11];
    itemFetcher = [(BRCAccountSession *)selfCopy->super.super._session itemFetcher];
    v69 = [itemFetcher itemByRowID:{-[BRCItemDBRowIDJobIdentifier itemDBRowID](v10, "itemDBRowID")}];

    if (([v69 isDocument] & 1) == 0)
    {
      v24 = brc_bread_crumbs();
      v25 = brc_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *location = 138412546;
        *&location[4] = v69;
        v81 = 2112;
        v82 = v24;
        _os_log_fault_impl(&dword_223E7A000, v25, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ should be a document%@", location, 0x16u);
      }

      goto LABEL_31;
    }

    if ([v69 syncUpState] != 3)
    {
      v26 = brc_bread_crumbs();
      v27 = brc_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        *location = 138412546;
        *&location[4] = v69;
        v81 = 2112;
        v82 = v26;
        _os_log_fault_impl(&dword_223E7A000, v27, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: %@ should be needs-upload%@", location, 0x16u);
      }

      [(BRCFSUploader *)selfCopy cancelAndCleanupItemUpload:v69];
      goto LABEL_31;
    }

    if ([v69 isDocumentBeingCopiedToNewZone])
    {
      currentVersion = [v69 currentVersion];
      contentSignature = [currentVersion contentSignature];
      if ([contentSignature brc_signatureIsValid])
      {
        session = selfCopy->super.super._session;
        currentVersion2 = [v69 currentVersion];
        previousItemGlobalID = [currentVersion2 previousItemGlobalID];
        zoneRowID = [previousItemGlobalID zoneRowID];
        v51 = [(BRCAccountSession *)session serverZoneByRowID:zoneRowID];
        clientZone = [v51 clientZone];
        enhancedDrivePrivacyEnabled = [clientZone enhancedDrivePrivacyEnabled];
        clientZone2 = [v69 clientZone];
        enhancedDrivePrivacyEnabled2 = [clientZone2 enhancedDrivePrivacyEnabled];

        if (((enhancedDrivePrivacyEnabled ^ enhancedDrivePrivacyEnabled2) & 1) == 0)
        {
          [(BRCFSUploader *)selfCopy _performServerSideAssetCopyForItem:v69 transferSize:v12];
          v17 = 0;
          ++v58;
          goto LABEL_32;
        }
      }

      else
      {
      }
    }

    if (!val)
    {
      v29 = [BRCUploadBatchOperation alloc];
      vala = selfCopy->super.super._session;
      clientZone3 = [matchingJobsWhereSQLClause clientZone];
      hasWorkGroup = [(BRCFSSchedulerBase *)selfCopy hasWorkGroup];
      workloop = [(BRCDeadlineScheduler *)selfCopy->_uploadsDeadlineScheduler workloop];
      val = [(BRCUploadBatchOperation *)v29 initWithSyncContext:contextCopy sessionContext:vala clientZone:clientZone3 group:hasWorkGroup callBackQueueTarget:workloop];

      operationID = [(_BRCOperation *)val operationID];

      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke;
      v75[3] = &unk_2785057A8;
      v76 = clientDB;
      v77 = selfCopy;
      v56 = operationID;
      v78 = v56;
      v79 = contextCopy;
      [(BRCUploadBatchOperation *)val setPerUploadCompletionBlock:v75];
      objc_initWeak(location, val);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke_229;
      v71[3] = &unk_2785057D0;
      objc_copyWeak(&v74, location);
      v72 = v69;
      v73 = selfCopy;
      [(BRCUploadBatchOperation *)val setUploadBatchCompletionBlock:v71];

      objc_destroyWeak(&v74);
      objc_destroyWeak(location);

LABEL_27:
      v34 = +[BRCUploadConstraintChecker defaultChecker];
      itemScope = [v69 itemScope];
      itemID = [v69 itemID];
      v70 = 0;
      LODWORD(itemScope) = [v34 canUploadItemWithSize:v12 itemScope:itemScope itemID:itemID withError:&v70];
      v37 = v70;

      if (itemScope)
      {
        [(BRCUploadBatchOperation *)val addItem:v69 stageID:v14 record:v68 transferSize:v12];
        uploadThrottle = [contextCopy uploadThrottle];
        [(BRCFSUploader *)selfCopy _willAttemptJobID:v10 throttle:uploadThrottle operationID:v56];

        [v69 triggerNotificationIfNeeded];
      }

      else
      {
        v39 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v69 dbRowID]);
        [(BRCFSUploader *)selfCopy _finishedUploadingItem:v69 record:v68 jobID:v39 stageID:v14 syncContext:contextCopy hasPerformedServerSideAssetCopy:0 error:v37];

        ++v62;
        v37 = v39;
      }

LABEL_31:
      v17 = 0;
      goto LABEL_32;
    }

    itemsCount = [(BRCTransferBatchOperation *)val itemsCount];
    if (itemsCount < [(BRCFSUploader *)selfCopy _minBatchSize]|| [(BRCTransferBatchOperation *)val totalSize]+ v12 <= hint)
    {
      goto LABEL_27;
    }

    v17 = 1;
LABEL_32:

LABEL_33:
    objc_autoreleasePoolPop(context);
    if (v17)
    {
      break;
    }
  }

  if (v59 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(BRCDeadlineSource *)selfCopy->_retryQueueSource signalWithDeadline:?];
  }

  if (val && [(BRCTransferBatchOperation *)val itemsCount])
  {
    br_upload = [MEMORY[0x277CBC4F8] br_upload];
    [(_BRCOperation *)val setGroup:br_upload];

    v41 = brc_bread_crumbs();
    v42 = brc_default_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      itemsCount2 = [(BRCTransferBatchOperation *)val itemsCount];
      contextIdentifier2 = [contextCopy contextIdentifier];
      *location = 134218498;
      *&location[4] = itemsCount2;
      v81 = 2112;
      v82 = contextIdentifier2;
      v83 = 2112;
      v84 = v41;
      _os_log_impl(&dword_223E7A000, v42, OS_LOG_TYPE_DEFAULT, "[NOTICE] uploading %ld documents in %@%@", location, 0x20u);
    }

    uploadStream = [contextCopy uploadStream];
    [uploadStream addBatchOperation:val];
  }

  contextIdentifier3 = [contextCopy contextIdentifier];
  v47 = [clientDB numberWithSQL:{@"SELECT MIN(next_retry_stamp) FROM client_uploads   WHERE throttle_state = 1     AND transfer_queue = %@      AND transfer_operation IS NULL ", contextIdentifier3}];

  if (v47)
  {
    uploadStream2 = [contextCopy uploadStream];
    [uploadStream2 signalWithDeadline:{objc_msgSend(v47, "longLongValue")}];
  }

  v7 = clientDB;
LABEL_44:
}

void __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke_2;
  v12[3] = &unk_278505780;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(a1 + 48);
  v13 = v5;
  v14 = v7;
  v15 = v9;
  v16 = *(a1 + 56);
  v17 = v6;
  v10 = v6;
  v11 = v5;
  [v8 groupInBatch:v12];
}

void __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transferID];
  v3 = -[BRCItemDBRowIDJobIdentifier initWithItemDBRowID:]([BRCItemDBRowIDJobIdentifier alloc], "initWithItemDBRowID:", [v2 unsignedLongLongValue]);

  v4 = [*(a1 + 40) _documentItemForJobID:v3 operationID:*(a1 + 48)];
  if (v4)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) record];
    v7 = [*(a1 + 32) stageID];
    [v5 _finishedUploadingItem:v4 record:v6 jobID:v3 stageID:v7 syncContext:*(a1 + 56) hasPerformedServerSideAssetCopy:0 error:*(a1 + 64)];
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [*(a1 + 48) UUIDString];
      *buf = 138412802;
      v12 = v3;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] Uploader[%@]: throttle for %@ doesn't exist anymore%@", buf, 0x20u);
    }
  }
}

void __98__BRCFSUploader__transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority___block_invoke_229(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 && !a3)
  {
    v16 = v5;
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v7 = +[BRCUploadConstraintChecker defaultChecker];
    v8 = [v16 MMCSMetrics];
    v9 = [v8 bytesUploaded];
    v10 = [*(a1 + 32) itemID];
    [v7 updateWithUploadedBytesSize:v9 forItemID:v10];

    if ([WeakRetained totalSize])
    {
      v11 = [WeakRetained operationID];
      v12 = [v11 debugDescription];
      v13 = [v16 MMCSMetrics];
      v14 = +[AppTelemetryTimeSeriesEvent newDoubleEvent:eventGroupUUID:value:](AppTelemetryTimeSeriesEvent, "newDoubleEvent:eventGroupUUID:value:", 45, v12, ([v13 bytesUploaded] / objc_msgSend(WeakRetained, "totalSize")));

      v15 = [*(*(a1 + 40) + 8) analyticsReporter];
      [v15 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v14];
    }

    v5 = v16;
  }
}

- (void)transferStreamOfSyncContext:(id)context didBecomeReadyWithMaxRecordsCount:(unint64_t)count sizeHint:(unint64_t)hint priority:(int64_t)priority completionBlock:(id)block
{
  contextCopy = context;
  blockCopy = block;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  serialQueue = [clientDB serialQueue];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __113__BRCFSUploader_transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority_completionBlock___block_invoke;
  v18[3] = &unk_2785057F8;
  v18[4] = self;
  v19 = contextCopy;
  hintCopy = hint;
  priorityCopy = priority;
  v20 = blockCopy;
  countCopy = count;
  v16 = blockCopy;
  v17 = contextCopy;
  dispatch_async_with_logs_8(serialQueue, v18);
}

uint64_t __113__BRCFSUploader_transferStreamOfSyncContext_didBecomeReadyWithMaxRecordsCount_sizeHint_priority_completionBlock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _transferStreamOfSyncContext:*(a1 + 40) didBecomeReadyWithMaxRecordsCount:*(a1 + 56) sizeHint:*(a1 + 64) priority:*(a1 + 72)];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)finishedSyncingUpItem:(id)item withOutOfQuotaError:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  errorCopy = error;
  dbRowID = [itemCopy dbRowID];
  memset(v17, 0, sizeof(v17));
  __brc_create_section(0, "[BRCFSUploader finishedSyncingUpItem:withOutOfQuotaError:]", 1932, 0, v17);
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = v17[0];
    digestDescription = [itemCopy digestDescription];
    *buf = 134219010;
    v19 = v13;
    v20 = 2048;
    v21 = dbRowID;
    v22 = 2112;
    v23 = digestDescription;
    v24 = 2112;
    v25 = errorCopy;
    v26 = 2112;
    v27 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Uploader[%lld]: %@ failed to sync up because it's out of quota: %@%@", buf, 0x34u);
  }

  [itemCopy markOverQuotaWithError:errorCopy];
  [itemCopy saveToDB];
  [(BRCFSUploader *)self setState:32 forItem:itemCopy];
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v12 = [clientDB changes] == 1;

  if (!v12)
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [BRCFSUploader finishedSyncingUpItem:withOutOfQuotaError:];
    }
  }

  __brc_leave_section(v17);
}

- (BOOL)hasItemsOverQuotaForOwner:(id)owner
{
  ownerCopy = owner;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__39;
  v18 = __Block_byref_object_dispose__39;
  v19 = 0;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __43__BRCFSUploader_hasItemsOverQuotaForOwner___block_invoke;
  v10[3] = &unk_278500D08;
  v13 = &v14;
  v6 = clientDB;
  v11 = v6;
  v7 = ownerCopy;
  v12 = v7;
  [v6 disableProfilingForQueriesInBlock:v10];
  bOOLValue = [v15[5] BOOLValue];

  _Block_object_dispose(&v14, 8);
  return bOOLValue;
}

uint64_t __43__BRCFSUploader_hasItemsOverQuotaForOwner___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) numberWithSQL:{@"SELECT 1 FROM client_uploads  WHERE throttle_state = 32    AND zone_rowid IN (SELECT rowid FROM client_zones WHERE zone_owner = %@ AND zone_plist IS NOT NULL)  LIMIT 1", *(a1 + 40)}];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)hasItemsOverQuotaInZone:(id)zone
{
  session = self->super.super._session;
  zoneCopy = zone;
  clientDB = [(BRCAccountSession *)session clientDB];
  dbRowID = [zoneCopy dbRowID];

  v7 = [clientDB numberWithSQL:{@"SELECT 1 FROM client_uploads WHERE throttle_state = 32 AND zone_rowid = %@ LIMIT 1", dbRowID}];
  LOBYTE(clientDB) = [v7 BOOLValue];

  return clientDB;
}

- (id)quotaAvailableForOwner:(id)owner
{
  if ([owner isEqualToString:*MEMORY[0x277CBBF28]])
  {
    clientState = [(BRCAccountSession *)self->super.super._session clientState];
    v5 = [clientState objectForKeyedSubscript:@"availableQuota"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_rescheduleJobsOutOfQuotaForDefaultOwnerWithAvailableSize:(int64_t)size
{
  v25 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  __brc_create_section(0, "[BRCFSUploader _rescheduleJobsOutOfQuotaForDefaultOwnerWithAvailableSize:]", 1981, 0, v18);
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v16 = v18[0];
    v17 = [BRCDumpContext stringFromByteCount:size context:0];
    *buf = 134218498;
    v20 = v16;
    v21 = 2112;
    v22 = v17;
    v23 = 2112;
    v24 = v5;
    _os_log_debug_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx re-uploading failed items with size less than %@%@", buf, 0x20u);
  }

  v7 = self->super.super._session;
  [(BRCAccountSession *)v7 enumerateClientZones:&__block_literal_global_243];
  clientDB = [(BRCAccountSession *)v7 clientDB];
  v9 = [clientDB fetch:{@"SELECT throttle_id, transfer_size   FROM client_uploads  WHERE throttle_state = 32    AND transfer_size < %lld", size}];
  for (i = 0; ; i = 1)
  {
    next = [v9 next];
    v12 = size > 0 ? next : 0;
    if (v12 != 1)
    {
      break;
    }

    v13 = objc_autoreleasePoolPush();
    v14 = [v9 longLongAtIndex:0];
    v15 = [v9 longLongAtIndex:1];
    [clientDB execute:{@"UPDATE client_items SET version_upload_error = NULL WHERE rowid = %lld", v14}];
    [clientDB execute:{@"UPDATE client_uploads SET throttle_state = 1, upload_error = NULL WHERE throttle_id = %lld", v14}];
    size -= v15;
    objc_autoreleasePoolPop(v13);
  }

  [v9 close];
  if (i)
  {
    [(BRCFSSchedulerBase *)self signal];
  }

  [(BRCFSUploader *)self setIsDefaultOwnerOutOfQuota:[(BRCFSUploader *)self hasItemsOverQuotaForOwner:*MEMORY[0x277CBBF28]]];

  __brc_leave_section(v18);
}

- (void)setQuotaAvailableForDefaultOwner:(unint64_t)owner
{
  v26 = *MEMORY[0x277D85DE8];
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB assertOnQueue];

  v6 = [(BRCFSUploader *)self quotaAvailableForOwner:*MEMORY[0x277CBBF28]];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  date = [MEMORY[0x277CBEAA8] date];
  clientState = [(BRCAccountSession *)self->super.super._session clientState];
  [clientState setObject:date forKeyedSubscript:@"lastQuotaFetchDate"];

  if (unsignedLongLongValue != owner)
  {
    memset(v17, 0, sizeof(v17));
    __brc_create_section(0, "[BRCFSUploader setQuotaAvailableForDefaultOwner:]", 2034, 0, v17);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = v17[0];
      v15 = [BRCDumpContext stringFromByteCount:unsignedLongLongValue context:0];
      v16 = [BRCDumpContext stringFromByteCount:owner context:0];
      *buf = 134218754;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      v24 = 2112;
      v25 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx quota changed from %@ to %@%@", buf, 0x2Au);
    }

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:owner];
    clientState2 = [(BRCAccountSession *)self->super.super._session clientState];
    [clientState2 setObject:v12 forKeyedSubscript:@"availableQuota"];

    if (unsignedLongLongValue < owner)
    {
      [(BRCFSUploader *)self _rescheduleJobsOutOfQuotaForDefaultOwnerWithAvailableSize:owner];
    }

    __brc_leave_section(v17);
  }
}

- (void)_globalQuotaStateUpdateForDefaultOwner
{
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB assertOnQueue];

  if ([(BRCFSUploader *)self isDefaultOwnerOutOfQuota])
  {
    v4 = [(BRCFSUploader *)self hasItemsOverQuotaForOwner:*MEMORY[0x277CBBF28]];

    [(BRCFSUploader *)self setIsDefaultOwnerOutOfQuota:v4];
  }
}

- (void)_scheduleQuotaFetchForDefaultOwner
{
  v3 = objc_alloc_init(MEMORY[0x277CBC420]);
  br_quotaUpdateUploader = [MEMORY[0x277CBC4F8] br_quotaUpdateUploader];
  [v3 setGroup:br_quotaUpdateUploader];

  br_pacer_suspend();
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  serialQueue = [clientDB serialQueue];
  [v3 setCallbackQueue:serialQueue];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke;
  v12[3] = &unk_278505820;
  v12[4] = self;
  [v3 setFetchUserQuotaCompletionBlock:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_259;
  v11[3] = &unk_2784FF450;
  v11[4] = self;
  [v3 setCompletionBlock:v11];
  v7 = dispatch_get_global_queue(17, 0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_2;
  v9[3] = &unk_2784FF478;
  v9[4] = self;
  v10 = v3;
  v8 = v3;
  dispatch_async_with_logs_8(v7, v9);
}

void __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_cold_1();
  }

  if (v5)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEFAULT, "[WARNING] can't update quota: %@%@", &v10, 0x16u);
    }

    br_pacer_signal();
  }

  else
  {
    [*(a1 + 32) setQuotaAvailableForDefaultOwner:a2];
  }
}

void __51__BRCFSUploader__scheduleQuotaFetchForDefaultOwner__block_invoke_2(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) syncContextProvider];
  v2 = [v3 defaultSyncContext];
  [v2 addOperation:*(a1 + 40)];
}

- (void)setIsDefaultOwnerOutOfQuota:(BOOL)quota forceSignalContainers:(BOOL)containers
{
  if (self->_isDefaultOwnerOutOfQuota != quota)
  {
    self->_isDefaultOwnerOutOfQuota = quota;
    if (quota)
    {
      br_pacer_signal();
    }
  }
}

- (void)ownerDidReceiveOutOfQuotaError:(id)error
{
  if ([error isEqualToString:*MEMORY[0x277CBBF28]])
  {

    [(BRCFSUploader *)self setIsDefaultOwnerOutOfQuota:1];
  }
}

- (void)scheduleQuotaStateUpdateForOwner:(id)owner
{
  if ([owner isEqualToString:*MEMORY[0x277CBBF28]] && -[BRCFSUploader isDefaultOwnerOutOfQuota](self, "isDefaultOwnerOutOfQuota"))
  {

    br_pacer_signal();
  }
}

- (void)scheduleQuotaFetchIfNeededForOwner:(id)owner
{
  if ([owner isEqualToString:*MEMORY[0x277CBBF28]] && -[BRCFSUploader isDefaultOwnerOutOfQuota](self, "isDefaultOwnerOutOfQuota"))
  {

    br_pacer_signal();
  }
}

- (void)forceScheduleQuotaFetchForOwner:(id)owner
{
  if ([owner isEqualToString:*MEMORY[0x277CBBF28]])
  {

    br_pacer_signal();
  }
}

- (void)_reportUploadErrorForDocument:(id)document error:(id)error underlyingError:(id)underlyingError
{
  session = self->super.super._session;
  underlyingErrorCopy = underlyingError;
  errorCopy = error;
  documentCopy = document;
  localItemSyncErrorReporter = [(BRCAccountSession *)session localItemSyncErrorReporter];
  dbRowID = [documentCopy dbRowID];

  [localItemSyncErrorReporter reportUploadErrorForItemWithRowID:dbRowID error:errorCopy underlyingError:underlyingErrorCopy];
}

- (void)_clearUploadErrorForDocument:(id)document
{
  session = self->super.super._session;
  documentCopy = document;
  localItemSyncErrorReporter = [(BRCAccountSession *)session localItemSyncErrorReporter];
  dbRowID = [documentCopy dbRowID];

  [localItemSyncErrorReporter clearUploadErrorForItemWithRowID:dbRowID];
}

- (void)recoverAndReportMissingJobsWithCompletion:(id)completion recoveryTask:(id)task
{
  v53 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  taskCopy = task;
  clientDB = [(BRCAccountSession *)self->super.super._session clientDB];
  v9 = [clientDB fetch:{@"SELECT ci.rowid, ci.zone_rowid, ci.item_id, ci.item_creator_id, ci.item_sharing_options, ci.item_side_car_ckinfo, ci.item_parent_zone_rowid, ci.item_localsyncupstate, ci.item_local_diffs, ci.item_notifs_rank, ci.app_library_rowid, ci.item_min_supported_os_rowid, ci.item_user_visible, ci.item_stat_ckinfo, ci.item_state, ci.item_type, ci.item_mode, ci.item_birthtime, ci.item_lastusedtime, ci.item_favoriterank, ci.item_parent_id, ci.item_filename, ci.item_hidden_ext, ci.item_finder_tags, ci.item_xattr_signature, ci.item_trash_put_back_path, ci.item_trash_put_back_parent_id, ci.item_alias_target, ci.item_creator, ci.item_processing_stamp, ci.item_bouncedname, ci.item_scope, ci.item_local_change_count, ci.item_old_version_identifier, ci.fp_creation_item_identifier, ci.version_name, ci.version_ckinfo, ci.version_mtime, ci.version_size, ci.version_thumb_size, ci.version_thumb_signature, ci.version_content_signature, ci.version_xattr_signature, ci.version_edited_since_shared, ci.version_device, ci.version_conflict_loser_etags, ci.version_quarantine_info, ci.version_uploaded_assets, ci.version_upload_error, ci.version_old_zone_item_id, ci.version_old_zone_rowid, ci.version_local_change_count, ci.version_old_version_identifier, ci.item_live_conflict_loser_etags, ci.item_file_id, ci.item_generation FROM client_items AS ci WHERE ci.item_localsyncupstate = 3 AND ci.item_localsyncupstate != 0 AND NOT EXISTS (SELECT 1 FROM client_uploads AS up WHERE ci.rowid = up.throttle_id AND up.throttle_state != 0)"}];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __72__BRCFSUploader_recoverAndReportMissingJobsWithCompletion_recoveryTask___block_invoke;
  v43[3] = &unk_2784FF910;
  v43[4] = self;
  v10 = [v9 enumerateObjects:v43];
  v11 = [v10 countByEnumeratingWithState:&v44 objects:v52 count:16];
  v12 = v11;
  if (v11)
  {
    v39 = taskCopy;
    v40 = completionCopy;
    v41 = 0;
    v13 = *v45;
    v38 = v11;
    v14 = v11;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v44 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        if ([v16 isDocument])
        {
          asDocument = [v16 asDocument];
          [(BRCFSUploader *)self uploadItem:asDocument];
        }

        else
        {
          v19 = brc_bread_crumbs();
          v20 = brc_default_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412546;
            v49 = v16;
            v50 = 2112;
            v51 = v19;
            _os_log_fault_impl(&dword_223E7A000, v20, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: Item scheduled to upload isn't a document %@%@", buf, 0x16u);
          }

          [v16 markNeedsUploadOrSyncingUp];
          [v16 saveToDB];
        }

        objc_autoreleasePoolPop(v17);
      }

      v41 += v14;
      v14 = [v10 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v14);

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    v23 = v41;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader recoverAndReportMissingJobsWithCompletion:recoveryTask:];
    }

    taskCopy = v39;
    completionCopy = v40;
    v12 = v38;
  }

  else
  {

    v23 = 0;
  }

  clientDB2 = [(BRCAccountSession *)self->super.super._session clientDB];
  [clientDB2 execute:@"UPDATE client_uploads SET throttle_state = 1 WHERE throttle_state = 31 AND transfer_operation IS NULL  AND throttle_id NOT IN (SELECT throttle_id FROM client_sync_up WHERE throttle_state != 0)"];

  clientDB3 = [(BRCAccountSession *)self->super.super._session clientDB];
  changes = [clientDB3 changes];

  if (changes)
  {
    v27 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [BRCFSUploader recoverAndReportMissingJobsWithCompletion:recoveryTask:];
    }
  }

  v29 = +[BRCAccountHandler currentiCloudAccount];
  br_needsToVerifyTerms = [v29 br_needsToVerifyTerms];

  if (br_needsToVerifyTerms)
  {
    _rescheduleJobsPendingVerifyTerms = 0;
  }

  else
  {
    _rescheduleJobsPendingVerifyTerms = [(BRCFSUploader *)self _rescheduleJobsPendingVerifyTerms];
    if (_rescheduleJobsPendingVerifyTerms >= 1)
    {
      v42 = v23;
      v32 = v12;
      v33 = brc_bread_crumbs();
      v34 = brc_default_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
      {
        [BRCFSUploader recoverAndReportMissingJobsWithCompletion:recoveryTask:];
      }

      v12 = v32;
      v23 = v42;
    }
  }

  v35 = changes + v23 + _rescheduleJobsPendingVerifyTerms;
  if (v35)
  {
    [(BRCFSUploader *)self schedule];
  }

  if (v12)
  {
    v36 = [AppTelemetryTimeSeriesEvent newMissingUploaderJobEventWithNumberMissing:v23];
    analyticsReporter = [(BRCAccountSession *)self->super.super._session analyticsReporter];
    [analyticsReporter postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v36];
  }

  completionCopy[2](completionCopy, v35);
}

id __72__BRCFSUploader_recoverAndReportMissingJobsWithCompletion_recoveryTask___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a2;
  v6 = [v4 clientDB];
  v7 = [v4 newLocalItemFromPQLResultSet:v5 db:v6 error:a3];

  return v7;
}

- (BOOL)_handleCollaborationUploadError:(id)error recordID:(id)d clientZone:(id)zone reply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  dCopy = d;
  zoneCopy = zone;
  replyCopy = reply;
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v15 = *MEMORY[0x277CFADE8];
    v16 = [domain isEqualToString:*MEMORY[0x277CFADE8]];

    if (v16)
    {
      v17 = errorCopy;
LABEL_22:
      replyCopy[2](replyCopy, 0, v17);
      goto LABEL_23;
    }

    v42 = 0;
    v18 = [errorCopy brc_isCloudKitShouldBeUsingEnhancedDrivePrivacyWithFieldName:&v42];
    v19 = v42;
    if (v18)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *&buf[4] = zoneCopy;
        *&buf[12] = 2112;
        *&buf[14] = v19;
        *&buf[22] = 2112;
        v46 = v20;
        _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[DEBUG] Enabling server zone %@ to use enhanced drive privacy (field name %@)%@", buf, 0x20u);
      }

      clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke;
      block[3] = &unk_2784FF450;
      v41 = zoneCopy;
      dispatch_async_and_wait(clientTruthWorkloop, block);

      v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v15 code:1 description:{@"Upload failed, please try again"}];
    }

    else if ([errorCopy brc_isCloudKitValidationKeyMismatchError])
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v46 = __Block_byref_object_copy__39;
      v47 = __Block_byref_object_dispose__39;
      v48 = 0;
      clientTruthWorkloop2 = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke_2;
      v36[3] = &unk_278500D08;
      v39 = buf;
      v37 = zoneCopy;
      v38 = dCopy;
      dispatch_async_and_wait(clientTruthWorkloop2, v36);

      v24 = *(*&buf[8] + 40);
      if (v24)
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke_3;
        v34[3] = &unk_278500CB8;
        v35 = replyCopy;
        [v24 addLocateRecordCompletionBlock:v34];

        v17 = 0;
      }

      else
      {
        v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v15 code:4 description:&stru_2837504F0];
      }

      _Block_object_dispose(buf, 8);
      if (v24)
      {

LABEL_23:
        goto LABEL_24;
      }
    }

    else if ([errorCopy brc_containsCloudKitErrorCode:14])
    {
      v17 = [MEMORY[0x277CCA9B8] br_errorWithDomain:v15 code:5 description:@"Item conflicted with server"];
    }

    else
    {
      domain2 = [errorCopy domain];
      v26 = [domain2 isEqualToString:*MEMORY[0x277CBBF50]];

      if (!v26)
      {
        goto LABEL_20;
      }

      CKRetryAfterSecondsForError();
      if (v27 == 0.0)
      {
        goto LABEL_20;
      }

      v28 = MEMORY[0x277CCA9B8];
      v43 = *MEMORY[0x277CFADF0];
      v29 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v44 = v29;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v17 = [v28 br_errorWithDomain:v15 code:1 userInfo:v30 description:{@"Upload failed, please try again"}];
    }

    if (v17)
    {
LABEL_21:

      goto LABEL_22;
    }

LABEL_20:
    v31 = MEMORY[0x277CCA9B8];
    br_errorDescription = [errorCopy br_errorDescription];
    v17 = [v31 br_errorWithDomain:v15 code:4 userInfo:0 description:{@"%@", br_errorDescription}];

    goto LABEL_21;
  }

LABEL_24:

  return errorCopy != 0;
}

uint64_t __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke_2(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) locateRecordIfNecessaryForRecordID:*(a1 + 40) isUserWaiting:1];

  return MEMORY[0x2821F96F8]();
}

void __75__BRCFSUploader__handleCollaborationUploadError_recordID_clientZone_reply___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFADE8] code:3 description:@"Item not found"];
    goto LABEL_5;
  }

  if (v5)
  {
    v7 = [v5 brc_wrappedError];
LABEL_5:
    v8 = v7;

    goto LABEL_6;
  }

  v8 = [MEMORY[0x277CCA9B8] br_errorWithDomain:*MEMORY[0x277CFADE8] code:1 description:{@"Upload failed, please try again"}];
LABEL_6:
  (*(*(a1 + 32) + 16))();
}

- (id)uploadDocument:(id)document withContents:(id)contents baseVersion:(id)version basedOnOriginalVersion:(BOOL)originalVersion options:(unint64_t)options reply:(id)reply
{
  documentCopy = document;
  contentsCopy = contents;
  versionCopy = version;
  replyCopy = reply;
  v17 = MEMORY[0x277CCACA8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v20 = [v17 stringWithFormat:@"cu-%@", uUIDString];

  v123 = 0;
  v124 = &v123;
  v125 = 0x3032000000;
  v126 = __Block_byref_object_copy__39;
  v127 = __Block_byref_object_dispose__39;
  v78 = documentCopy;
  clientZone = [documentCopy clientZone];
  v117 = 0;
  v118 = &v117;
  v119 = 0x3032000000;
  v120 = __Block_byref_object_copy__39;
  v121 = __Block_byref_object_dispose__39;
  v122 = 0;
  analyticsReporter = [(BRCAccountSession *)self->super.super._session analyticsReporter];
  optionsCopy = options;
  originalVersionCopy = originalVersion;
  mangledID = [v124[5] mangledID];
  v23 = [BRCUserDefaults defaultsForMangledID:mangledID];
  LOBYTE(uUIDString) = [v23 shouldSendTelemetryOnCollaborationAPIs];

  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke;
  v111[3] = &unk_278505848;
  v116 = uUIDString;
  v75 = analyticsReporter;
  v112 = v75;
  v114 = &v117;
  v115 = &v123;
  v76 = replyCopy;
  v113 = v76;
  v24 = MEMORY[0x22AA4A310](v111);
  v107 = 0;
  v108 = &v107;
  v109 = 0x2020000000;
  v110 = -1;
  v101[0] = MEMORY[0x277D85DD0];
  v101[1] = 3221225472;
  v101[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2;
  v101[3] = &unk_278505870;
  v104 = &v107;
  v101[4] = self;
  v25 = v20;
  v102 = v25;
  v105 = &v117;
  v106 = &v123;
  v74 = v24;
  v103 = v74;
  v26 = MEMORY[0x22AA4A310](v101);
  v27 = [contentsCopy url];
  v28 = MEMORY[0x277CFAE88];
  _scope = [contentsCopy _scope];
  v100 = 0;
  v30 = [v28 consumeSandboxExtension:_scope error:&v100];
  v31 = v100;
  v108[3] = v30;

  if (v108[3] < 0)
  {
    (v26)[2](v26, 0, v31);
    v64 = 0;
  }

  else
  {
    v99 = 0;
    v32 = *MEMORY[0x277CBE7B0];
    v98 = 0;
    v33 = [v27 getResourceValue:&v99 forKey:v32 error:&v98];
    v34 = v99;
    v35 = v98;

    v73 = v34;
    if (v33)
    {
      [v34 timeIntervalSince1970];
      v37 = v36;
      clientZone2 = [v78 clientZone];
      mangledID2 = [clientZone2 mangledID];
      v40 = [BRCUserDefaults defaultsForMangledID:mangledID2];
      maxXattrBlobSize = [v40 maxXattrBlobSize];

      stageRegistry = [(BRCAccountSession *)self->super.super._session stageRegistry];
      v96 = v35;
      v97 = 0;
      LOBYTE(maxXattrBlobSize) = [stageRegistry saveXattrsForURL:v27 withMaximumSize:maxXattrBlobSize xattrSignature:&v97 error:&v96];
      v70 = v97;
      v43 = v96;

      if (maxXattrBlobSize)
      {
        stageRegistry2 = [(BRCAccountSession *)self->super.super._session stageRegistry];
        liveStageFilename = [v78 liveStageFilename];
        v95 = v43;
        v46 = [stageRegistry2 cloneFileURL:v27 toUploadStageID:v25 liveStageFilename:liveStageFilename error:&v95];
        v47 = v95;

        if (v46)
        {
          v48 = brc_bread_crumbs();
          v49 = brc_default_log();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [BRCFSUploader uploadDocument:withContents:baseVersion:basedOnOriginalVersion:options:reply:];
          }

          v94 = 0;
          uploadCKRecordProvider = self->_uploadCKRecordProvider;
          br_contentEtag = [versionCopy br_contentEtag];
          v92 = v47;
          v93 = 0;
          v52 = [(BRCUploadCKRecordProvider *)uploadCKRecordProvider createCKRecordFor:v46 document:v78 stageID:v25 mtime:v37 etag:br_contentEtag xattrSignature:v70 transferSize:&v94 boundaryKey:&v93 error:&v92];
          v69 = v93;
          v53 = v92;

          v54 = v118[5];
          v118[5] = v52;

          if (v118[5])
          {
            v67 = v53;
            syncContextUsedForTransfers = [v78 syncContextUsedForTransfers];
            v56 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:v94];
            [v56 setKind:*MEMORY[0x277CCA648]];
            [v56 setFileOperationKind:*MEMORY[0x277CCA630]];
            objc_initWeak(&location, self);
            v79[0] = MEMORY[0x277D85DD0];
            v79[1] = 3221225472;
            v79[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_289;
            v79[3] = &unk_278505910;
            objc_copyWeak(v89, &location);
            v86 = v26;
            v80 = v69;
            v87 = &v117;
            v66 = v56;
            v81 = v66;
            v89[1] = v94;
            v68 = syncContextUsedForTransfers;
            v82 = v68;
            selfCopy = self;
            v89[2] = optionsCopy;
            v88 = &v123;
            v90 = originalVersionCopy;
            v84 = versionCopy;
            v57 = v78;
            v85 = v57;
            v58 = MEMORY[0x22AA4A310](v79);
            if ([v57 shouldTransferThumbnail])
            {
              v59 = v46;
              stageRegistry3 = [(BRCAccountSession *)self->super.super._session stageRegistry];
              v61 = [stageRegistry3 createURLForThumbnailUploadWithStageID:v25];

              v62 = +[BRCThumbnailGenerationManager defaultManager];
              v63 = [BRCUserDefaults defaultsForMangledID:0];
              [v63 thumbnailGenerationForCollaborationUploadTimeout];
              [v62 addOutOfBandThumbnailGenerationJobAtURL:v59 targetURL:v61 timeout:v68 syncContext:v58 completionHandler:?];

              v46 = v59;
            }

            else
            {
              v58[2](v58, 0, 0);
            }

            v64 = v66;

            objc_destroyWeak(v89);
            objc_destroyWeak(&location);

            v47 = v67;
          }

          else
          {
            (v26)[2](v26, 0, v53);
            v64 = 0;
            v47 = v53;
          }
        }

        else
        {
          (v26)[2](v26, 0, v47);
          v64 = 0;
        }

        v43 = v47;
      }

      else
      {
        (v26)[2](v26, 0, v43);
        v64 = 0;
      }

      v35 = v43;
    }

    else
    {
      (v26)[2](v26, 0, v35);
      v64 = 0;
    }

    v31 = v35;
  }

  _Block_object_dispose(&v107, 8);
  _Block_object_dispose(&v117, 8);

  _Block_object_dispose(&v123, 8);

  return v64;
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (*(a1 + 64) == 1)
  {
    v6 = *(a1 + 32);
    v7 = [*(*(*(a1 + 48) + 8) + 40) recordID];
    v8 = [v7 recordName];
    v9 = [*(*(*(a1 + 56) + 8) + 40) mangledID];
    v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "enhancedDrivePrivacyEnabled")}];
    [v6 aggregateReportForAppTelemetryIdentifier:39 itemID:v8 zoneMangledID:v9 enhancedDrivePrivacyEnabled:v10 error:v5];
  }

  (*(*(a1 + 40) + 16))();
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2(void *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ((*(*(a1[7] + 8) + 24) & 0x8000000000000000) == 0)
  {
    [MEMORY[0x277CFAE88] releaseSandboxExtensionHandle:?];
  }

  v6 = [*(a1[4] + 8) stageRegistry];
  [v6 cleanupStagedUploadWithID:a1[5]];

  v7 = a1[4];
  v8 = [*(*(a1[8] + 8) + 40) recordID];
  LOBYTE(v7) = [v7 _handleCollaborationUploadError:v5 recordID:v8 clientZone:*(*(a1[9] + 8) + 40) reply:a1[6]];

  if ((v7 & 1) == 0)
  {
    (*(a1[6] + 16))();
  }
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_289(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 104));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained[1] clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_293;
    block[3] = &unk_2785058E8;
    v20 = v3;
    v7 = *(a1 + 32);
    v8 = *(a1 + 88);
    v21 = v7;
    v27 = v8;
    v9 = *(a1 + 40);
    v29 = *(a1 + 112);
    v22 = v9;
    v23 = v5;
    v26 = *(a1 + 80);
    v10 = *(a1 + 48);
    v11 = *(a1 + 96);
    v30 = *(a1 + 120);
    v28 = v11;
    v31 = *(a1 + 128);
    *&v12 = v10;
    *(&v12 + 1) = *(a1 + 56);
    v18 = v12;
    v13 = *(a1 + 64);
    v14 = *(a1 + 72);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v24 = v18;
    v25 = v15;
    dispatch_async(v6, block);
  }

  else
  {
    v16 = *(a1 + 80);
    v17 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:@"Deallocated"];
    (*(v16 + 16))(v16, 0, v17);
  }
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_293(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [MEMORY[0x277CBC190] br_assetWithFileURL:v2 boundaryKey:*(a1 + 40)];
    [*(*(*(a1 + 104) + 8) + 40) setObject:v3 forKeyedSubscript:@"thumb1024"];
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_293_cold_1();
    }

    [*(a1 + 48) setTotalUnitCount:{objc_msgSend(v3, "size") + *(a1 + 120)}];
  }

  v6 = *(*(*(a1 + 104) + 8) + 40);
  v7 = *(*(a1 + 56) + 8);
  v25 = 0;
  v8 = [v6 validateEnhancedDrivePrivacyFieldsWithSession:v7 error:&v25];
  v9 = v25;
  if (v8)
  {
    v10 = [[BRCCollaborationUploadOperation alloc] initWithRecord:*(*(*(a1 + 104) + 8) + 40) progress:*(a1 + 48) syncContext:*(a1 + 64) sessionContext:*(*(a1 + 72) + 8) options:*(a1 + 128)];
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_295;
    v19 = &unk_2785058C0;
    v11 = *(a1 + 96);
    v12 = *(a1 + 112);
    v22 = v11;
    v23 = v12;
    v20 = *(a1 + 56);
    v24 = *(a1 + 136);
    v21 = *(a1 + 80);
    [(BRCCollaborationUploadOperation *)v10 setUploadCompletionBlock:&v16];
    if (v10)
    {
      v13 = [*(a1 + 88) session];
      [v13 addMiscOperation:v10];

      [(_BRCOperation *)v10 schedule];
    }

    else
    {
      v14 = *(a1 + 96);
      v15 = [MEMORY[0x277CCA9B8] brc_unkownErrorWithDescription:{@"Upload operation failed to allocate", v16, v17, v18, v19, v20}];
      (*(v14 + 16))(v14, 0, v15);
    }
  }

  else
  {
    (*(*(a1 + 96) + 16))();
  }
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_295(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v24 = 0;
    v25 = 0;
    v7 = [v5 deserializeVersion:&v25 fakeStatInfo:0 contentBoundaryKey:0 clientZone:*(*(*(a1 + 56) + 8) + 40) outOfBandUpload:1 error:&v24];
    v8 = v25;
    v9 = v24;
    if (v7)
    {
      v10 = [*(*(a1 + 32) + 8) clientTruthWorkloop];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_296;
      block[3] = &unk_2785048F0;
      v22 = *(a1 + 56);
      v21 = v6;
      v23 = *(a1 + 64);
      dispatch_async(v10, block);

      v11 = [BRFieldContentSignature alloc];
      v12 = [[BRCLocalVersion alloc] initWithVersion:v8];
      v13 = [(BRFieldContentSignature *)v11 initWithLocalVersion:v12];

      v14 = objc_alloc(MEMORY[0x277CC64A0]);
      v15 = [(BRFieldContentSignature *)v13 data];
      v16 = [*(a1 + 40) metadataVersion];
      v17 = [v14 initWithContentVersion:v15 metadataVersion:v16];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_295_cold_1();
      }

      (*(*(a1 + 48) + 16))();
    }
  }
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_296(uint64_t a1)
{
  v2 = [*(*(*(a1 + 40) + 8) + 40) db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_297;
  v5[3] = &unk_278505898;
  v4 = *(a1 + 32);
  v3 = v4;
  v6 = v4;
  v7 = *(a1 + 48);
  [v2 groupInBatch:v5];
}

- (void)screenLockChanged:(BOOL)changed
{
  self->_isScreenLocked = changed;
  if (!changed)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __35__BRCFSUploader_screenLockChanged___block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_async(clientTruthWorkloop, block);
  }
}

void __35__BRCFSUploader_screenLockChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 105) & 1) == 0)
  {
    v2 = [*(v1 + 8) personaIdentifier];
    BRPerformWithPersonaAndError();
  }
}

void __35__BRCFSUploader_screenLockChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _rescheduleJobsPendingScreenUnlock];
  }
}

- (void)networkReachabilityChanged:(BOOL)changed
{
  self->_isNetworkReachable = changed;
  if (changed)
  {
    clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__BRCFSUploader_networkReachabilityChanged___block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_async(clientTruthWorkloop, block);
  }
}

void __44__BRCFSUploader_networkReachabilityChanged___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 106) == 1)
  {
    v2 = [*(v1 + 8) personaIdentifier];
    BRPerformWithPersonaAndError();
  }
}

void __44__BRCFSUploader_networkReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _rescheduleJobsPendingNetwork];
  }
}

- (void)networkCellularChanged:(BOOL)changed
{
  if (!changed)
  {
    [(BRCFSUploader *)self rescheduleJobsPendingCellular];
  }
}

- (void)userVerifiedTerms
{
  clientTruthWorkloop = [(BRCAccountSession *)self->super.super._session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__BRCFSUploader_userVerifiedTerms__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(clientTruthWorkloop, block);
}

void __40__BRCFSUploader_initWithAccountSession___block_invoke_6_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_rescheduleUploadJobsPendingState:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)_rescheduleUploadJobsPendingState:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __46__BRCFSUploader_rescheduleJobsPendingCellular__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)performFirstSchedulingAfterStartupInDB:.cold.1()
{
  OUTLINED_FUNCTION_18();
  [v0 changes];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __25__BRCFSUploader_schedule__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_updatePackageRecord:item:stageID:error:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  [v0 dbRowID];
  v2 = [v1 itemID];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)_updatePackageRecord:item:stageID:error:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed to add item to package%@", v1, 0xCu);
}

- (void)_updateRecord:item:syncContext:targetThumbnailURL:stageID:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 138412290;
    v3 = v0;
    _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !item.isFinderBookmark%@", &v2, 0xCu);
  }
}

- (void)_updateRecord:item:syncContext:targetThumbnailURL:stageID:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_updateRecord:item:syncContext:targetThumbnailURL:stageID:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_finishPackageUploadWithRecord:(_DWORD *)a1 item:(void *)a2 stageID:packageChecksummer:error:.cold.1(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: cpi.signature%@");
  }
}

- (void)_finishPackageUploadWithRecord:(_DWORD *)a1 item:(void *)a2 stageID:packageChecksummer:error:.cold.2(_DWORD *a1, void *a2)
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    *a1 = 138412290;
    *a2 = v2;
    OUTLINED_FUNCTION_22(&dword_223E7A000, v6, v7, "[CRIT] Assertion failed: pbitem.type != BRFieldPkgItemType_FILE || pbitem.hasSignature%@");
  }
}

- (void)_handleFileModifiedError:forItem:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_shouldReingestAfterUploadErrorWithItem:record:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 fileURL];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)_shouldReingestAfterUploadErrorWithItem:record:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_shouldReingestAfterUploadErrorWithItem:record:.cold.3()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.2()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_finishedUploadingItem:record:jobID:stageID:syncContext:hasPerformedServerSideAssetCopy:error:.cold.9()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_performServerSideAssetCopyForItem:transferSize:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_5()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_6()
{
  OUTLINED_FUNCTION_18();
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(v0 + 112)];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x20u);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_7()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_8()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_9()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __65__BRCFSUploader__performServerSideAssetCopyForItem_transferSize___block_invoke_2_cold_10()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_6_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)recoverAndReportMissingJobsWithCompletion:recoveryTask:.cold.1()
{
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)recoverAndReportMissingJobsWithCompletion:recoveryTask:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)recoverAndReportMissingJobsWithCompletion:recoveryTask:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)uploadDocument:withContents:baseVersion:basedOnOriginalVersion:options:reply:.cold.1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __94__BRCFSUploader_uploadDocument_withContents_baseVersion_basedOnOriginalVersion_options_reply___block_invoke_2_293_cold_1()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end