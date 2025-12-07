@interface BRCGlobalProgress
+ (id)_keyPathsToObserve;
+ (int64_t)_transferSizeWithVersionSize:(int64_t)size;
- (BOOL)_isSyncUpSuspendedForDocument:(id)document;
- (BOOL)_isUploadSuspendedForDocument:(id)document;
- (BRCAccountSession)session;
- (BRCGlobalProgress)initWithSession:(id)session;
- (id)description;
- (void)_cancelUploadForObjectID:(id)d inState:(unsigned int)state willRetryTransfer:(BOOL)transfer;
- (void)_createGlobalProgressWithCompletedUnitCount:(int64_t)count totalUnitCount:(int64_t)unitCount;
- (void)_createUploadMetadataWithCompletedUnitCount:(int64_t)count totalUnitCount:(int64_t)unitCount;
- (void)_deleteDocument:(id)document reason:(char)reason sync:(BOOL)sync;
- (void)_destroyProgressInGroup:(id)group reason:(char)reason;
- (void)_destroyUploadWithReason:(char)reason;
- (void)_resumeProgressForZone:(id)zone startingRowID:(unint64_t)d whenDone:(id)done;
- (void)_startObservingProgress:(id)progress;
- (void)_startTrackingDocumentWithFileObjectID:(id)d versionSize:(int64_t)size syncUpState:(unsigned int)state;
- (void)_stopObservingProgress:(id)progress;
- (void)_updateCompletedUnitCountForFileObjectID:(id)d newCompletedUnitCount:(int64_t)count isFinished:(BOOL)finished;
- (void)_updateDocument:(id)document;
- (void)addProgress:(id)progress forDocument:(id)document inGroup:(char)group;
- (void)dealloc;
- (void)didDeleteDocument:(id)document;
- (void)didUpdateDocument:(id)document;
- (void)dumpToContext:(id)context;
- (void)dumpVersionSizesWithMaxCount:(unint64_t)count toContext:(id)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)replaceProgressForFileObjectID:(id)d inGroup:(char)group withProgress:(id)progress;
- (void)resumeProgressForZones:(id)zones;
- (void)stopPublishingProgress;
- (void)updateUnitCount;
- (void)updateUploadThrottleForDocument:(id)document toState:(int)state;
- (void)verifyFutureProgressIsNotFinished;
@end

@implementation BRCGlobalProgress

- (BRCGlobalProgress)initWithSession:(id)session
{
  sessionCopy = session;
  v17.receiver = self;
  v17.super_class = BRCGlobalProgress;
  v5 = [(BRCGlobalProgress *)&v17 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.bird.global-progress", v7);

    queue = v5->_queue;
    v5->_queue = v8;

    v10 = br_pacer_create();
    updatePacer = v5->_updatePacer;
    v5->_updatePacer = v10;

    objc_initWeak(&location, v5);
    objc_copyWeak(&v15, &location);
    br_pacer_set_event_handler();
    objc_storeWeak(&v5->_session, sessionCopy);
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transfers = v5->_transfers;
    v5->_transfers = v12;

    v5->_activeTransfersCount = 0;
    v5->_completedTransfersCount = 0;
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v5;
}

uint64_t __37__BRCGlobalProgress_initWithSession___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (WeakRetained[5])
    {
      v3 = WeakRetained;
      [WeakRetained updateUnitCount];
      if ([v3[5] isFinished])
      {
        [v3 _destroyUploadWithReason:0];
      }
    }
  }

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  br_pacer_cancel();
  updatePacer = self->_updatePacer;
  self->_updatePacer = 0;

  v4.receiver = self;
  v4.super_class = BRCGlobalProgress;
  [(BRCGlobalProgress *)&v4 dealloc];
}

- (void)_createGlobalProgressWithCompletedUnitCount:(int64_t)count totalUnitCount:(int64_t)unitCount
{
  if (self->_progress)
  {
    [BRCGlobalProgress _createGlobalProgressWithCompletedUnitCount:totalUnitCount:];
  }

  v7 = objc_alloc_init(BRCProgress);
  progress = self->_progress;
  self->_progress = v7;

  v9 = self->_progress;
  mobileDocumentsURL = [MEMORY[0x277CFAE38] mobileDocumentsURL];
  [(BRCProgress *)v9 setUserInfoObject:mobileDocumentsURL forKey:*MEMORY[0x277CCA640]];

  [(BRCProgress *)self->_progress setUserInfoObject:&unk_2837B0250 forKey:*MEMORY[0x277CCA638]];
  [(BRCProgress *)self->_progress setUserInfoObject:*MEMORY[0x277CCA630] forKey:*MEMORY[0x277CCA628]];
  [(BRCProgress *)self->_progress setUserInfoObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CFACF0]];
  [(BRCProgress *)self->_progress setTotalUnitCount:unitCount];
  [(BRCProgress *)self->_progress setCompletedUnitCount:count];
  [(BRCProgress *)self->_progress setCancellable:0];
  [(BRCProgress *)self->_progress setKind:*MEMORY[0x277CCA648]];
  self->_completedTransfersCount = 0;
  [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:0];
  [(BRCGlobalProgress *)self setSumOfTotalUnitCountDelta:0];
}

- (void)updateUnitCount
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: Completed unit count is less than zero - forcing it to be zero%@", v2);
}

- (void)verifyFutureProgressIsNotFinished
{
  v7 = *MEMORY[0x277D85DE8];
  LODWORD(v5) = 134218242;
  *(&v5 + 4) = a2;
  OUTLINED_FUNCTION_4_0();
  *v6 = v2;
  OUTLINED_FUNCTION_6_1(&dword_223E7A000, v3, v4, "[CRIT] UNREACHABLE: future progress state isn't valid (unitCount: %lld)%@", v5, DWORD2(v5), *&v6[2], v7);
}

- (void)_updateCompletedUnitCountForFileObjectID:(id)d newCompletedUnitCount:(int64_t)count isFinished:(BOOL)finished
{
  finishedCopy = finished;
  v30 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  v9 = [(NSMutableDictionary *)self->_transfers objectForKeyedSubscript:dCopy];
  v10 = v9;
  if (!v9 || ([v9 progress], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v14 = brc_bread_crumbs();
    v15 = brc_notifications_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress _updateCompletedUnitCountForFileObjectID:newCompletedUnitCount:isFinished:];
    }

    goto LABEL_17;
  }

  if (finishedCopy)
  {
    versionSize = [v10 versionSize];
    longLongValue = [versionSize longLongValue];
  }

  else
  {
    countCopy = count;
    progress = [v10 progress];
    v18 = countCopy / [progress totalUnitCount];

    versionSize = [v10 versionSize];
    longLongValue = vcvtmd_s64_f64(v18 * [versionSize longLongValue]);
  }

  if ([v10 accumulatedCUCDelta] > longLongValue)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138413058;
      v23 = dCopy;
      v24 = 2048;
      accumulatedCUCDelta = [v10 accumulatedCUCDelta];
      v26 = 2048;
      v27 = longLongValue;
      v28 = 2112;
      v29 = v19;
      _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: negative delta update for doc with objectID %@; [%lld -> %lld]%@", &v22, 0x2Au);
    }
  }

  v21 = longLongValue - [v10 accumulatedCUCDelta];
  if (v21)
  {
    [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:[(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta]+ v21];
    [v10 setAccumulatedCUCDelta:{objc_msgSend(v10, "accumulatedCUCDelta") + v21}];
    br_pacer_signal();
  }

  if (finishedCopy)
  {
    v14 = brc_bread_crumbs();
    v15 = brc_notifications_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress _updateCompletedUnitCountForFileObjectID:newCompletedUnitCount:isFinished:];
    }

LABEL_17:
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v32 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = objectCopy;
    userInfo = [v13 userInfo];
    v15 = [userInfo objectForKeyedSubscript:@"_BRCObjectIDKey"];

    v16 = [MEMORY[0x277CFAE50] fileObjectIDWithString:v15];
    if (v16)
    {
      userInfo2 = [v13 userInfo];
      v18 = [userInfo2 objectForKeyedSubscript:@"_BRCProgressGroupKey"];

      if (v18)
      {
        isFinished = [v13 isFinished];
        queue = self->_queue;
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __68__BRCGlobalProgress_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v24[3] = &unk_2785044B0;
        v18 = v18;
        v25 = v18;
        selfCopy = self;
        v27 = v16;
        v28 = changeCopy;
        v29 = isFinished;
        dispatch_async_with_logs_6(queue, v24);

        v21 = v25;
      }

      else
      {
        v21 = brc_bread_crumbs();
        v22 = brc_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v31 = v21;
          _os_log_impl(&dword_223E7A000, v22, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: observing a progress that doesn't have a progress group%@", buf, 0xCu);
        }
      }
    }

    else
    {
      v18 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v31 = v18;
        _os_log_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: observing a progress that doesn't have an objectID%@", buf, 0xCu);
      }
    }
  }

  else
  {
    v23.receiver = self;
    v23.super_class = BRCGlobalProgress;
    [(BRCGlobalProgress *)&v23 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

void __68__BRCGlobalProgress_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) shortValue] != 1)
  {
    __68__BRCGlobalProgress_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = [*(a1 + 56) objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  [v2 _updateCompletedUnitCountForFileObjectID:v3 newCompletedUnitCount:objc_msgSend(v4 isFinished:{"longLongValue"), *(a1 + 64)}];
}

- (void)_resumeProgressForZone:(id)zone startingRowID:(unint64_t)d whenDone:(id)done
{
  zoneCopy = zone;
  doneCopy = done;
  mangledID = [zoneCopy mangledID];
  v11 = [BRCUserDefaults defaultsForMangledID:mangledID];
  resumeProgressBatchSize = [v11 resumeProgressBatchSize];

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__BRCGlobalProgress__resumeProgressForZone_startingRowID_whenDone___block_invoke;
  block[3] = &unk_2785040C8;
  dCopy = d;
  v24 = resumeProgressBatchSize;
  v20 = zoneCopy;
  selfCopy = self;
  v22 = doneCopy;
  v13 = doneCopy;
  v14 = zoneCopy;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_BACKGROUND, 0, block);
  resumeTracker = self->_resumeTracker;
  WeakRetained = objc_loadWeakRetained(&self->_session);
  clientTruthWorkloop = [WeakRetained clientTruthWorkloop];
  brc_task_tracker_async_with_logs(resumeTracker, clientTruthWorkloop, v15, 0);
}

uint64_t __67__BRCGlobalProgress__resumeProgressForZone_startingRowID_whenDone___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = [*(a1 + 32) documentsNotIdleEnumeratorWithStartingRowID:*(a1 + 56) batchSize:{*(a1 + 64), 0}];
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 dbRowID];
        [*(a1 + 40) didUpdateDocument:v7];
        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);

    if (v9 != -1)
    {
      return [*(a1 + 40) _resumeProgressForZone:*(a1 + 32) startingRowID:v9 whenDone:*(a1 + 48)];
    }
  }

  else
  {
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)resumeProgressForZones:(id)zones
{
  zonesCopy = zones;
  if ([zonesCopy count])
  {
    queue = self->_queue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__BRCGlobalProgress_resumeProgressForZones___block_invoke;
    v6[3] = &unk_2784FF478;
    v6[4] = self;
    v7 = zonesCopy;
    dispatch_async(queue, v6);
  }
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 24))
  {
    __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_cold_1();
  }

  v2 = brc_task_tracker_create("resume-progress-tracker");
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;

  v5 = dispatch_group_create();
  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = v5;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 40);
  v8 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v35;
    do
    {
      v11 = 0;
      do
      {
        if (*v35 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v34 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        if ([v12 isSharedZone])
        {
LABEL_9:
          v14 = brc_bread_crumbs();
          v15 = brc_notifications_log();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v23 = [v12 zoneName];
            *buf = 138412546;
            v39 = v23;
            v40 = 2112;
            v41 = v14;
            _os_log_debug_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: resuming global progress for '%@'%@", buf, 0x16u);
          }

          dispatch_group_enter(*(*(a1 + 32) + 96));
          v16 = *(a1 + 32);
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_46;
          v33[3] = &unk_2784FF450;
          v33[4] = v16;
          [v16 _resumeProgressForZone:v12 startingRowID:0 whenDone:v33];
          goto LABEL_18;
        }

        v17 = [v12 asPrivateClientZone];
        v18 = [v17 defaultAppLibrary];

        v19 = [v18 containerMetadata];
        if ([v19 isDocumentScopePublic] && (objc_msgSend(v19, "isCloudSyncTCCDisabled") & 1) == 0)
        {
          v22 = [v18 isiCloudDesktopAppLibrary];

          if ((v22 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
        }

        v20 = brc_bread_crumbs();
        v21 = brc_notifications_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
        {
          v24 = [v12 zoneName];
          *buf = 138412546;
          v39 = v24;
          v40 = 2112;
          v41 = v20;
          _os_log_debug_impl(&dword_223E7A000, v21, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: nothing to resume for '%@'%@", buf, 0x16u);
        }

LABEL_18:
        objc_autoreleasePoolPop(v13);
        ++v11;
      }

      while (v9 != v11);
      v25 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
      v9 = v25;
    }

    while (v25);
  }

  v26 = brc_bread_crumbs();
  v27 = brc_notifications_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_cold_2();
  }

  v28 = *(a1 + 32);
  v29 = *(v28 + 96);
  v30 = *(v28 + 48);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_48;
  block[3] = &unk_2784FF450;
  block[4] = v28;
  dispatch_group_notify(v29, v30, block);
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_48(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_notifications_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_48_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 96);
  *(v6 + 96) = 0;
}

- (BOOL)_isUploadSuspendedForDocument:(id)document
{
  documentCopy = document;
  if ([documentCopy syncUpState] == 3)
  {
    session = [documentCopy session];
    fsUploader = [session fsUploader];
    v6 = [fsUploader getStateOfDocumentItem:documentCopy] > 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_isSyncUpSuspendedForDocument:(id)document
{
  documentCopy = document;
  if ([documentCopy syncUpState] == 4)
  {
    dbFacade = [documentCopy dbFacade];
    v5 = [dbFacade item:documentCopy hasSyncUpJobState:&unk_2837B0C40];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)didUpdateDocument:(id)document
{
  documentCopy = document;
  v5 = documentCopy;
  if (!documentCopy || ([documentCopy isVisibleIniCloudDrive] & 1) == 0)
  {
    orig = [v5 orig];
    asDocument = [orig asDocument];
    isVisibleIniCloudDrive = [asDocument isVisibleIniCloudDrive];

    if (!isVisibleIniCloudDrive)
    {
      goto LABEL_16;
    }

    v13 = brc_bread_crumbs();
    v14 = brc_notifications_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress didUpdateDocument:];
    }

    selfCopy2 = self;
    v16 = v5;
    v17 = 1;
LABEL_22:
    [(BRCGlobalProgress *)selfCopy2 _deleteDocument:v16 reason:v17];
    goto LABEL_23;
  }

  if ([v5 isDead])
  {
    v6 = [v5 st];
    state = [v6 state];
    orig2 = [v5 orig];
    v9 = [orig2 st];
    if (state == [v9 state])
    {

LABEL_16:
      [(BRCGlobalProgress *)self _deleteDocument:v5 reason:1 sync:0];
      goto LABEL_23;
    }

    orig3 = [v5 orig];
    syncUpState = [orig3 syncUpState];

    if (!syncUpState)
    {
      goto LABEL_16;
    }

    v23 = brc_bread_crumbs();
    v24 = brc_notifications_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress didUpdateDocument:];
    }

    goto LABEL_21;
  }

  transfers = [(BRCGlobalProgress *)self transfers];
  fileObjectID = [v5 fileObjectID];
  v20 = [transfers objectForKeyedSubscript:fileObjectID];

  if ([(BRCGlobalProgress *)self _isUploadSuspendedForDocument:v5])
  {
    if (!v20)
    {
      goto LABEL_25;
    }

LABEL_19:
    v23 = brc_bread_crumbs();
    v24 = brc_notifications_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress didUpdateDocument:];
    }

LABEL_21:

    selfCopy2 = self;
    v16 = v5;
    v17 = 0;
    goto LABEL_22;
  }

  v25 = [(BRCGlobalProgress *)self _isSyncUpSuspendedForDocument:v5];
  if (v20 && v25)
  {
    goto LABEL_19;
  }

  if (v25)
  {
LABEL_25:
    v26 = brc_bread_crumbs();
    v27 = brc_notifications_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress didUpdateDocument:];
    }

    goto LABEL_23;
  }

  if (!v20 || (v28 = [v5 syncUpState], objc_msgSend(v5, "orig"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "syncUpState"), v29, v28 != v30))
  {
    if (([v5 isDocumentBeingCopiedToNewZone] & 1) == 0)
    {
      [(BRCGlobalProgress *)self _updateDocument:v5];
    }
  }

LABEL_23:
}

- (void)didDeleteDocument:(id)document
{
  documentCopy = document;
  if (!documentCopy)
  {
    [BRCGlobalProgress didDeleteDocument:];
  }

  [(BRCGlobalProgress *)self _deleteDocument:documentCopy reason:0];
}

- (void)stopPublishingProgress
{
  queue = self->_queue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __43__BRCGlobalProgress_stopPublishingProgress__block_invoke;
  v3[3] = &unk_2784FF450;
  v3[4] = self;
  dispatch_async_with_logs_6(queue, v3);
}

uint64_t __43__BRCGlobalProgress_stopPublishingProgress__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2[3])
  {
    brc_task_tracker_cancel(v2[3]);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v2 = *(a1 + 32);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v2 transfers];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 progress];

        if (v12)
        {
          v13 = *(a1 + 32);
          v14 = [v11 progress];
          [v13 _stopObservingProgress:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  v15 = [*(a1 + 32) transfers];
  [v15 removeAllObjects];

  v16 = brc_bread_crumbs();
  v17 = brc_notifications_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    __43__BRCGlobalProgress_stopPublishingProgress__block_invoke_cold_1();
  }

  return [*(a1 + 32) _destroyUploadWithReason:2];
}

- (void)replaceProgressForFileObjectID:(id)d inGroup:(char)group withProgress:(id)progress
{
  groupCopy = group;
  dCopy = d;
  progressCopy = progress;
  v10 = progressCopy;
  if (groupCopy != 1)
  {
    [BRCGlobalProgress replaceProgressForFileObjectID:inGroup:withProgress:];
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_5:
    [BRCGlobalProgress replaceProgressForFileObjectID:inGroup:withProgress:];
    goto LABEL_3;
  }

  if (!progressCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __73__BRCGlobalProgress_replaceProgressForFileObjectID_inGroup_withProgress___block_invoke;
  v14[3] = &unk_2785044D8;
  v14[4] = self;
  v15 = dCopy;
  v16 = v10;
  v17 = groupCopy;
  v12 = v10;
  v13 = dCopy;
  dispatch_async_with_logs_6(queue, v14);
}

void __73__BRCGlobalProgress_replaceProgressForFileObjectID_inGroup_withProgress___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transfers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 progress];

    if (v4)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v5 = [objc_opt_class() _keyPathsToObserve];
      v6 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v29;
        do
        {
          v9 = 0;
          do
          {
            if (*v29 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v28 + 1) + 8 * v9);
            v11 = objc_autoreleasePoolPush();
            v12 = [v3 progress];
            [v12 removeObserver:*(a1 + 32) forKeyPath:v10];

            objc_autoreleasePoolPop(v11);
            ++v9;
          }

          while (v7 != v9);
          v7 = [v5 countByEnumeratingWithState:&v28 objects:v38 count:16];
        }

        while (v7);
      }
    }

    v13 = [v3 progress];
    if (!v13)
    {
      goto LABEL_19;
    }

    v14 = v13;
    v15 = [v3 progress];
    v16 = [v15 totalUnitCount];
    if (v16 == [*(a1 + 48) totalUnitCount])
    {
      v17 = [v3 progress];
      v18 = [v17 completedUnitCount];
      v19 = [*(a1 + 48) completedUnitCount];

      if (v18 <= v19)
      {
LABEL_19:
        [v3 setProgress:*(a1 + 48)];
        v22 = *(a1 + 48);
        v23 = [*(a1 + 40) asString];
        [v22 setUserInfoObject:v23 forKey:@"_BRCObjectIDKey"];

        v24 = *(a1 + 48);
        v25 = [MEMORY[0x277CCABB0] numberWithChar:*(a1 + 56)];
        [v24 setUserInfoObject:v25 forKey:@"_BRCProgressGroupKey"];

        [*(a1 + 32) _startObservingProgress:*(a1 + 48)];
        goto LABEL_20;
      }
    }

    else
    {
    }

    v20 = brc_bread_crumbs();
    v21 = brc_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      v26 = [v3 progress];
      v27 = *(a1 + 48);
      *buf = 138412802;
      v33 = v26;
      v34 = 2112;
      v35 = v27;
      v36 = 2112;
      v37 = v20;
      _os_log_fault_impl(&dword_223E7A000, v21, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: !transfer.progress || (transfer.progress.totalUnitCount == progress.totalUnitCount && transfer.progress.completedUnitCount <= progress.completedUnitCount) current: %@ vs new: %@%@", buf, 0x20u);
    }

    goto LABEL_19;
  }

LABEL_20:
}

- (void)addProgress:(id)progress forDocument:(id)document inGroup:(char)group
{
  groupCopy = group;
  progressCopy = progress;
  documentCopy = document;
  if (groupCopy == 1)
  {
    if (progressCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    [BRCGlobalProgress addProgress:forDocument:inGroup:];
    if (documentCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [BRCGlobalProgress addProgress:forDocument:inGroup:];
  if (!progressCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (documentCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  [BRCGlobalProgress addProgress:forDocument:inGroup:];
LABEL_4:
  v10 = [documentCopy db];
  [v10 assertOnQueue];

  if (([progressCopy isIndeterminate] & 1) == 0)
  {
    syncUpState = [documentCopy syncUpState];
    fileObjectID = [documentCopy fileObjectID];
    transfers = [(BRCGlobalProgress *)self transfers];
    v14 = [transfers objectForKeyedSubscript:fileObjectID];

    if (!v14)
    {
      [(BRCGlobalProgress *)self didUpdateDocument:documentCopy];
    }

    queue = self->_queue;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __53__BRCGlobalProgress_addProgress_forDocument_inGroup___block_invoke;
    v17[3] = &unk_278504500;
    v17[4] = self;
    v18 = fileObjectID;
    v20 = syncUpState;
    v19 = progressCopy;
    v21 = groupCopy;
    v16 = fileObjectID;
    dispatch_async_with_logs_6(queue, v17);
  }
}

void __53__BRCGlobalProgress_addProgress_forDocument_inGroup___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transfers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = [v3 progress];

    if (v4)
    {
      v5 = brc_bread_crumbs();
      v6 = brc_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v19 = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = v5;
        _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: attempt to add an upload progress more than once for doc with objectID %@%@", &v19, 0x16u);
      }

      [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 56) willRetryTransfer:1];
    }

    [v3 setProgress:*(a1 + 48)];
    v8 = brc_bread_crumbs();
    v9 = brc_notifications_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 40);
      v18 = [*(a1 + 48) totalUnitCount];
      v19 = 138412802;
      v20 = v17;
      v21 = 2048;
      v22 = v18;
      v23 = 2112;
      v24 = v8;
      _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: start tracking upload progress for doc with objectID %@ (progressSize: %lld)%@", &v19, 0x20u);
    }

    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) asString];
    [v10 setUserInfoObject:v11 forKey:@"_BRCObjectIDKey"];

    v12 = *(a1 + 48);
    v13 = [MEMORY[0x277CCABB0] numberWithChar:*(a1 + 60)];
    [v12 setUserInfoObject:v13 forKey:@"_BRCProgressGroupKey"];

    [*(a1 + 32) _startObservingProgress:*(a1 + 48)];
  }

  else
  {
    v14 = brc_bread_crumbs();
    v15 = brc_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v19 = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_223E7A000, v15, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: attempt to add an upload progress for doc with objectID %@ which is not tracked%@", &v19, 0x16u);
    }
  }
}

- (void)updateUploadThrottleForDocument:(id)document toState:(int)state
{
  documentCopy = document;
  v7 = documentCopy;
  if (documentCopy && [documentCopy isVisibleIniCloudDrive] && (objc_msgSend(v7, "isDead") & 1) == 0)
  {
    fileObjectID = [v7 fileObjectID];
    syncUpState = [v7 syncUpState];
    if (fileObjectID)
    {
      v10 = syncUpState;
      queue = self->_queue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __61__BRCGlobalProgress_updateUploadThrottleForDocument_toState___block_invoke;
      v14[3] = &unk_2785010A0;
      v14[4] = self;
      v15 = fileObjectID;
      stateCopy = state;
      v17 = v10;
      dispatch_async_with_logs_6(queue, v14);
    }

    else
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        [BRCGlobalProgress updateUploadThrottleForDocument:toState:];
      }
    }
  }
}

void __61__BRCGlobalProgress_updateUploadThrottleForDocument_toState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transfers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 40);
      v11 = 138412802;
      v12 = v10;
      v13 = 2080;
      *v14 = BRCPrettyPrintEnum();
      *&v14[8] = 2112;
      *&v14[10] = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: stop tracking upload for doc with objectID %@ because transfer failed (toState: %s)%@", &v11, 0x20u);
    }

    [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 52) willRetryTransfer:*(a1 + 48) > 0];
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 40);
      v9 = *(a1 + 52);
      v11 = 138413058;
      v12 = v8;
      v13 = 1024;
      *v14 = v9;
      *&v14[4] = 2080;
      *&v14[6] = BRCPrettyPrintEnum();
      *&v14[14] = 2112;
      *&v14[16] = v6;
      _os_log_impl(&dword_223E7A000, v7, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: upload failed for doc with objectID %@ without being tracked (syncUpState: %d, toState: %s)%@", &v11, 0x26u);
    }
  }
}

- (void)dumpVersionSizesWithMaxCount:(unint64_t)count toContext:(id)context
{
  contextCopy = context;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  if ([(NSMutableDictionary *)self->_transfers count])
  {
    [contextCopy writeLineWithFormat:@"{"];
    [contextCopy pushIndentation];
    transfers = self->_transfers;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __60__BRCGlobalProgress_dumpVersionSizesWithMaxCount_toContext___block_invoke;
    v9[3] = &unk_278504528;
    v8 = contextCopy;
    v10 = v8;
    v11 = v13;
    countCopy = count;
    [(NSMutableDictionary *)transfers enumerateKeysAndObjectsUsingBlock:v9];
    [v8 popIndentation];
    [v8 writeLineWithFormat:@"}"];
  }

  else
  {
    [contextCopy writeLineWithFormat:@"{}"];
  }

  _Block_object_dispose(v13, 8);
}

void __60__BRCGlobalProgress_dumpVersionSizesWithMaxCount_toContext___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a2;
  v9 = [a3 versionSize];
  [v7 writeLineWithFormat:@"%@ = %@;", v8, v9];

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 24);
  *(v10 + 24) = v11 + 1;
  if (v11 > *(a1 + 48))
  {
    [*(a1 + 32) writeLineWithFormat:@".. truncated .."];
    *a4 = 1;
  }
}

- (id)description
{
  progress = [(BRCGlobalProgress *)self progress];
  if (progress)
  {
    v16 = MEMORY[0x277CCACA8];
    v15 = objc_opt_class();
    progress2 = [(BRCGlobalProgress *)self progress];
    userInfo = [progress2 userInfo];
    v4 = [userInfo objectForKeyedSubscript:*MEMORY[0x277CCA638]];
    progress3 = [(BRCGlobalProgress *)self progress];
    completedUnitCount = [progress3 completedUnitCount];
    sumOfCompletedUnitCountDelta = [(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta];
    progress4 = [(BRCGlobalProgress *)self progress];
    totalUnitCount = [progress4 totalUnitCount];
    sumOfTotalUnitCountDelta = [(BRCGlobalProgress *)self sumOfTotalUnitCountDelta];
    progress5 = [(BRCGlobalProgress *)self progress];
    [progress5 fractionCompleted];
    v13 = [v16 stringWithFormat:@"<%@:%p c:%@ p:%lld(%+lld)/%lld(%+lld) [%.3f%%]>", v15, self, v4, completedUnitCount, sumOfCompletedUnitCountDelta, totalUnitCount, sumOfTotalUnitCountDelta, v12 * 100.0];
  }

  else
  {
    v13 = @"{none}";
  }

  return v13;
}

- (void)dumpToContext:(id)context
{
  contextCopy = context;
  queue = self->_queue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __35__BRCGlobalProgress_dumpToContext___block_invoke;
  v10 = &unk_2784FF478;
  selfCopy = self;
  v12 = contextCopy;
  v6 = contextCopy;
  dispatch_sync(queue, &v7);
  [v6 popIndentation];
}

uint64_t __35__BRCGlobalProgress_dumpToContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progress];

  v3 = *(a1 + 40);
  if (v2)
  {
    v4 = [*(a1 + 32) progress];
    v5 = [v4 brc_dumpDescription];
    [v3 writeLineWithFormat:@"global progress {%@}", v5];
  }

  else
  {
    [*(a1 + 40) writeLineWithFormat:@"global progress {none}"];
  }

  [*(a1 + 40) writeLineWithFormat:@"-----------------------------------------------------"];
  [*(a1 + 40) pushIndentation];
  [*(a1 + 40) writeLineWithFormat:@"upload %@", *(a1 + 32)];
  v6 = *(a1 + 40);
  v7 = [*(a1 + 32) transfers];
  [v6 writeLineWithFormat:@"upload version sizes (%lu):", objc_msgSend(v7, "count")];

  [*(a1 + 32) dumpVersionSizesWithMaxCount:1000 toContext:*(a1 + 40)];
  v8 = [*(a1 + 32) transfers];
  v9 = [v8 count];

  if (v9)
  {
    [*(a1 + 40) writeLineWithFormat:@"upload progresses: {"];
    [*(a1 + 40) pushIndentation];
    v10 = [*(a1 + 32) transfers];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __35__BRCGlobalProgress_dumpToContext___block_invoke_2;
    v12[3] = &unk_278504550;
    v13 = *(a1 + 40);
    [v10 enumerateKeysAndObjectsUsingBlock:v12];

    [*(a1 + 40) popIndentation];
    [*(a1 + 40) writeLineWithFormat:@"}"];
  }

  return [*(a1 + 40) writeLineWithFormat:&stru_2837504F0];
}

void __35__BRCGlobalProgress_dumpToContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 progress];

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = [v5 progress];
    v9 = [v8 brc_dumpDescription];
    [v7 writeLineWithFormat:@"%@ = %@;", v10, v9];
  }
}

+ (id)_keyPathsToObserve
{
  if (_keyPathsToObserve_onceToken != -1)
  {
    +[BRCGlobalProgress _keyPathsToObserve];
  }

  v3 = _keyPathsToObserve_keyPaths;

  return v3;
}

void __39__BRCGlobalProgress__keyPathsToObserve__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = NSStringFromSelector(sel_completedUnitCount);
  v3[0] = v0;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
  v2 = _keyPathsToObserve_keyPaths;
  _keyPathsToObserve_keyPaths = v1;
}

- (void)_startObservingProgress:(id)progress
{
  v17 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  dispatch_assert_queue_V2(self->_queue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  _keyPathsToObserve = [objc_opt_class() _keyPathsToObserve];
  v6 = [_keyPathsToObserve countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(_keyPathsToObserve);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        [progressCopy addObserver:self forKeyPath:v10 options:5 context:0];
        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v7 != v9);
      v7 = [_keyPathsToObserve countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)_stopObservingProgress:(id)progress
{
  v23 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  dispatch_assert_queue_V2(self->_queue);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  _keyPathsToObserve = [objc_opt_class() _keyPathsToObserve];
  v6 = [_keyPathsToObserve countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(_keyPathsToObserve);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = objc_autoreleasePoolPush();
        [progressCopy removeObserver:self forKeyPath:v10];
        objc_autoreleasePoolPop(v11);
      }

      v7 = [_keyPathsToObserve countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  userInfo = [progressCopy userInfo];
  v13 = [userInfo objectForKeyedSubscript:@"_BRCObjectIDKey"];

  v14 = [MEMORY[0x277CFAE50] fileObjectIDWithString:v13];
  if (!v14)
  {
    [BRCGlobalProgress _stopObservingProgress:];
  }

  userInfo2 = [progressCopy userInfo];
  v16 = [userInfo2 objectForKeyedSubscript:@"_BRCProgressGroupKey"];

  if (v16)
  {
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  else
  {
    [BRCGlobalProgress _stopObservingProgress:];
    if (!v14)
    {
      goto LABEL_15;
    }
  }

  if ([v16 shortValue] != 1)
  {
    [BRCGlobalProgress _stopObservingProgress:];
  }

  v17 = [(NSMutableDictionary *)self->_transfers objectForKeyedSubscript:v14];
  [v17 setAccumulatedCUCDelta:0];

LABEL_15:
}

- (void)_createUploadMetadataWithCompletedUnitCount:(int64_t)count totalUnitCount:(int64_t)unitCount
{
  dispatch_assert_queue_V2(self->_queue);
  if (self->_progress)
  {
    [BRCGlobalProgress _createUploadMetadataWithCompletedUnitCount:totalUnitCount:];
    if ((count & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((count & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

  [BRCGlobalProgress _createUploadMetadataWithCompletedUnitCount:totalUnitCount:];
LABEL_3:
  if (unitCount < count)
  {
    [BRCGlobalProgress _createUploadMetadataWithCompletedUnitCount:totalUnitCount:];
  }

  v7 = brc_bread_crumbs();
  v8 = brc_notifications_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [BRCGlobalProgress _createUploadMetadataWithCompletedUnitCount:totalUnitCount:];
  }

  [(BRCGlobalProgress *)self _createGlobalProgressWithCompletedUnitCount:count totalUnitCount:unitCount];
  if (!self->_lazyInitDone)
  {
    self->_lazyInitDone = 1;
    br_pacer_resume();
  }

  progress = [(BRCGlobalProgress *)self progress];
  [progress brc_publish];

  br_pacer_signal();
}

- (void)_cancelUploadForObjectID:(id)d inState:(unsigned int)state willRetryTransfer:(BOOL)transfer
{
  transferCopy = transfer;
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if (dCopy)
  {
    v9 = [(NSMutableDictionary *)self->_transfers objectForKeyedSubscript:dCopy];
    if (!v9)
    {
      [BRCGlobalProgress _cancelUploadForObjectID:inState:willRetryTransfer:];
    }

    v10 = brc_bread_crumbs();
    v11 = brc_notifications_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      progress = [v9 progress];
      *v18 = 138413314;
      *&v18[4] = dCopy;
      v19 = 1024;
      stateCopy = state;
      v21 = 1024;
      v22 = transferCopy;
      v23 = 1024;
      v24 = progress != 0;
      v25 = 2112;
      v26 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: cancelling upload for doc with objectID %@ (syncUpState: %d, willRetry: %d, hasProgress: %d)%@", v18, 0x28u);
    }

    progress2 = [v9 progress];

    if (progress2)
    {
      progress2 = [v9 accumulatedCUCDelta];
      progress3 = [v9 progress];
      [(BRCGlobalProgress *)self _stopObservingProgress:progress3];
    }

    if (!transferCopy)
    {
      [(NSMutableDictionary *)self->_transfers removeObjectForKey:dCopy];
    }

    if ([(NSMutableDictionary *)self->_transfers count])
    {
      progress4 = [v9 progress];

      if (progress4)
      {
        [v9 setProgress:0];
      }

      else if (state == 4)
      {
        versionSize = [v9 versionSize];
        progress2 = [versionSize longLongValue];
      }

      else
      {
        progress2 = 0;
      }

      [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:[(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta]- progress2];
      if (!transferCopy)
      {
        versionSize2 = [v9 versionSize];
        -[BRCGlobalProgress setSumOfTotalUnitCountDelta:](self, "setSumOfTotalUnitCountDelta:", -[BRCGlobalProgress sumOfTotalUnitCountDelta](self, "sumOfTotalUnitCountDelta") - +[BRCGlobalProgress _transferSizeWithVersionSize:](BRCGlobalProgress, "_transferSizeWithVersionSize:", [versionSize2 longLongValue]));

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [(BRCGlobalProgress *)self verifyFutureProgressIsNotFinished];
        }
      }

      br_pacer_signal();
    }

    else
    {
      [(BRCGlobalProgress *)self _destroyUploadWithReason:1];
    }
  }

  else
  {
    [BRCGlobalProgress _cancelUploadForObjectID:v18 inState:? willRetryTransfer:?];
    v9 = *v18;
  }
}

- (void)_destroyProgressInGroup:(id)group reason:(char)reason
{
  reasonCopy = reason;
  v30 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  dispatch_assert_queue_V2(self->_queue);
  if ([groupCopy shortValue] != 1)
  {
    [BRCGlobalProgress _destroyProgressInGroup:reason:];
  }

  v7 = brc_bread_crumbs();
  v8 = brc_notifications_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    if (groupCopy)
    {
      [groupCopy integerValue];
      v18 = BRCPrettyPrintEnum();
    }

    else
    {
      v18 = "none";
    }

    *buf = 136315650;
    v25 = v18;
    v26 = 2080;
    v27 = BRCPrettyPrintEnum();
    v28 = 2112;
    v29 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: did finish global progress (group: %s, reason: %s)%@", buf, 0x20u);
  }

  if (reasonCopy == 1)
  {
    if ([(NSMutableDictionary *)self->_transfers count])
    {
      [BRCGlobalProgress _destroyProgressInGroup:reason:];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    allValues = [(NSMutableDictionary *)self->_transfers allValues];
    v10 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          progress = [v14 progress];

          if (progress)
          {
            progress2 = [v14 progress];
            [(BRCGlobalProgress *)self _stopObservingProgress:progress2];
          }
        }

        v11 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    [(NSMutableDictionary *)self->_transfers removeAllObjects];
  }

  else if (!reasonCopy)
  {
    if ([(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta])
    {
      [BRCGlobalProgress _destroyProgressInGroup:reason:];
    }

    if ([(BRCGlobalProgress *)self sumOfTotalUnitCountDelta])
    {
      [BRCGlobalProgress _destroyProgressInGroup:reason:];
    }
  }

  if ([(BRCProgress *)self->_progress isPublished])
  {
    [(BRCProgress *)self->_progress brc_unpublish];
  }

  progress = self->_progress;
  self->_progress = 0;

  self->_completedTransfersCount = 0;
  [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:0];
  [(BRCGlobalProgress *)self setSumOfTotalUnitCountDelta:0];
}

- (void)_destroyUploadWithReason:(char)reason
{
  reasonCopy = reason;
  dispatch_assert_queue_V2(self->_queue);
  if (self->_progress)
  {

    [(BRCGlobalProgress *)self _destroyProgressInGroup:&unk_2837B0280 reason:reasonCopy];
  }
}

- (void)_startTrackingDocumentWithFileObjectID:(id)d versionSize:(int64_t)size syncUpState:(unsigned int)state
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dispatch_assert_queue_V2(self->_queue);
  if (state > 7 || ((1 << state) & 0x98) == 0)
  {
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      [BRCGlobalProgress _startTrackingDocumentWithFileObjectID:versionSize:syncUpState:];
    }
  }

  if (size <= 0)
  {
    [BRCGlobalProgress _startTrackingDocumentWithFileObjectID:versionSize:syncUpState:];
  }

  v11 = [BRCGlobalProgress _transferSizeWithVersionSize:size];
  if (state == 4)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = 0;
  }

  if (self->_progress)
  {
    [(BRCGlobalProgress *)self setSumOfCompletedUnitCountDelta:[(BRCGlobalProgress *)self sumOfCompletedUnitCountDelta]+ sizeCopy];
    [(BRCGlobalProgress *)self setSumOfTotalUnitCountDelta:[(BRCGlobalProgress *)self sumOfTotalUnitCountDelta]+ v11];
    br_pacer_signal();
  }

  else
  {
    [(BRCGlobalProgress *)self _createUploadMetadataWithCompletedUnitCount:sizeCopy totalUnitCount:v11];
  }

  v13 = [_BRCTransferInfo alloc];
  v14 = [MEMORY[0x277CCABB0] numberWithLongLong:size];
  v15 = [(_BRCTransferInfo *)v13 initWithVersionSize:v14];
  transfers = [(BRCGlobalProgress *)self transfers];
  [transfers setObject:v15 forKeyedSubscript:dCopy];

  if (state == 4)
  {
    v17 = brc_bread_crumbs();
    v18 = brc_notifications_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138413058;
      v21 = dCopy;
      v22 = 2048;
      sizeCopy3 = size;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v17;
      v19 = "[NOTIF] Progress: resume upload for doc with objectID %@ because document is needs-sync-up but not tracked yet (versionSize: %lld, transferSize: %lld)%@";
LABEL_20:
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, v19, &v20, 0x2Au);
    }
  }

  else
  {
    v17 = brc_bread_crumbs();
    v18 = brc_notifications_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v20 = 138413058;
      v21 = dCopy;
      v22 = 2048;
      sizeCopy3 = size;
      v24 = 2048;
      v25 = v11;
      v26 = 2112;
      v27 = v17;
      v19 = "[NOTIF] Progress: start tracking upload for doc with objectID %@ because document is needs-upload (versionSize: %lld, transferSize: %lld)%@";
      goto LABEL_20;
    }
  }
}

- (void)_updateDocument:(id)document
{
  documentCopy = document;
  fileObjectID = [documentCopy fileObjectID];
  orig = [documentCopy orig];
  syncUpState = [orig syncUpState];

  syncUpState2 = [documentCopy syncUpState];
  currentVersion = [documentCopy currentVersion];
  v10 = [currentVersion size];

  if (!v10)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_notifications_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [BRCGlobalProgress _updateDocument:];
    }

    goto LABEL_8;
  }

  if (!fileObjectID)
  {
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRCGlobalProgress _updateDocument:];
    }

LABEL_8:

    goto LABEL_9;
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__BRCGlobalProgress__updateDocument___block_invoke;
  v14[3] = &unk_278504578;
  v17 = syncUpState2;
  v14[4] = self;
  v18 = syncUpState;
  v15 = fileObjectID;
  v16 = v10;
  dispatch_sync(queue, v14);

LABEL_9:
}

void __37__BRCGlobalProgress__updateDocument___block_invoke(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      v18 = [*(a1 + 32) transfers];
      v5 = [v18 objectForKeyedSubscript:*(a1 + 40)];

      if (v5)
      {
        v19 = [v5 progress];
        if (v19)
        {
          v20 = [v5 accumulatedCUCDelta];
          v21 = [v5 versionSize];
          v22 = [v21 longLongValue];

          if (v20 < v22)
          {
            v23 = brc_bread_crumbs();
            v24 = brc_default_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = *(a1 + 40);
              v38 = 138412802;
              v39 = v25;
              v40 = 2112;
              v41 = v19;
              v42 = 2112;
              v43 = v23;
              _os_log_impl(&dword_223E7A000, v24, OS_LOG_TYPE_DEFAULT, "[WARNING] Object %@ moved to needs-sync-up before its progress got marked as finished --> for it to finish. Progress %@%@", &v38, 0x20u);
            }

            v26 = *(a1 + 32);
            v27 = *(a1 + 40);
            v28 = [v5 progress];
            [v26 _updateCompletedUnitCountForFileObjectID:v27 newCompletedUnitCount:objc_msgSend(v28 isFinished:{"totalUnitCount"), 1}];
          }

          [*(a1 + 32) _stopObservingProgress:v19];
          [v5 setProgress:0];
        }
      }

      else
      {
        [*(a1 + 32) _startTrackingDocumentWithFileObjectID:*(a1 + 40) versionSize:*(a1 + 48) syncUpState:*(a1 + 56)];
      }

      goto LABEL_43;
    }

    if (v2 != 7)
    {
LABEL_4:
      v3 = [*(a1 + 32) transfers];
      v4 = [v3 objectForKeyedSubscript:*(a1 + 40)];
      v5 = [v4 versionSize];

      if (v5)
      {
        if (*(a1 + 60) == 4)
        {
          v6 = +[BRCGlobalProgress _syncUpSizeWithVersionSize:](BRCGlobalProgress, "_syncUpSizeWithVersionSize:", [v5 longLongValue]);
          if (v6 <= 0)
          {
            __37__BRCGlobalProgress__updateDocument___block_invoke_cold_4();
          }

          [*(a1 + 32) setSumOfCompletedUnitCountDelta:{objc_msgSend(*(a1 + 32), "sumOfCompletedUnitCountDelta") + v6}];
          v7 = brc_bread_crumbs();
          v8 = brc_notifications_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            v37 = *(a1 + 40);
            v38 = 138412802;
            v39 = v37;
            v40 = 2048;
            v41 = v6;
            v42 = 2112;
            v43 = v7;
            _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: stop tracking upload for doc with objectID %@ because document is idle (syncUpSize: %lld)%@", &v38, 0x20u);
          }

          v9 = [*(a1 + 32) transfers];
          [v9 removeObjectForKey:*(a1 + 40)];

          if (!*(a1 + 56))
          {
            [*(a1 + 32) setCompletedTransfersCount:{objc_msgSend(*(a1 + 32), "completedTransfersCount") + 1}];
          }

          br_pacer_signal();
        }

        else
        {
          v35 = brc_bread_crumbs();
          v36 = brc_notifications_log();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
          {
            __37__BRCGlobalProgress__updateDocument___block_invoke_cold_3((a1 + 40));
          }

          [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 60) willRetryTransfer:0];
        }
      }

LABEL_43:

      return;
    }
  }

  else
  {
    if (v2 == 2)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        __37__BRCGlobalProgress__updateDocument___block_invoke_cold_2();
      }

      goto LABEL_38;
    }

    if (v2 != 3)
    {
      goto LABEL_4;
    }
  }

  v10 = [*(a1 + 32) transfers];
  v11 = (a1 + 40);
  v12 = [v10 objectForKeyedSubscript:*(a1 + 40)];

  if (v12)
  {
    v13 = *(a1 + 60);
    if (v13 == 4 || v13 == 7)
    {
      v14 = brc_bread_crumbs();
      v15 = brc_notifications_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __37__BRCGlobalProgress__updateDocument___block_invoke_cold_1((a1 + 40));
      }

      [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 60) willRetryTransfer:0];
      return;
    }

    v16 = brc_bread_crumbs();
    v33 = brc_default_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = *v11;
      v38 = 138412546;
      v39 = v34;
      v40 = 2112;
      v41 = v16;
      _os_log_impl(&dword_223E7A000, v33, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: doc with objectID %@ shouldn't be uploading before its status is set to needs-upload%@", &v38, 0x16u);
    }

LABEL_38:
    return;
  }

  v29 = *(a1 + 32);
  v30 = *(a1 + 40);
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);

  [v29 _startTrackingDocumentWithFileObjectID:v30 versionSize:v31 syncUpState:v32];
}

- (void)_deleteDocument:(id)document reason:(char)reason sync:(BOOL)sync
{
  syncCopy = sync;
  v25 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  orig = [documentCopy orig];
  fileObjectID = [orig fileObjectID];

  orig2 = [documentCopy orig];

  syncUpState = [orig2 syncUpState];
  if (fileObjectID && [fileObjectID rawID])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__BRCGlobalProgress__deleteDocument_reason_sync___block_invoke;
    v17[3] = &unk_2785045A0;
    v17[4] = self;
    v18 = fileObjectID;
    reasonCopy = reason;
    v19 = syncUpState;
    v13 = MEMORY[0x22AA4A310](v17);
    queue = self->_queue;
    if (syncCopy)
    {
      dispatch_sync(queue, v13);
    }

    else
    {
      dispatch_async(queue, v13);
    }
  }

  else
  {
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v22 = fileObjectID;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: can't delete document from progress without an objectID %@%@", buf, 0x16u);
    }
  }
}

void __49__BRCGlobalProgress__deleteDocument_reason_sync___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) transfers];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_notifications_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = 138412802;
      v8 = v6;
      v9 = 2080;
      v10 = BRCPrettyPrintEnum();
      v11 = 2112;
      v12 = v4;
      _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[NOTIF] Progress: stop tracking upload progress of doc with objectID %@ (reason: %s)%@", &v7, 0x20u);
    }

    [*(a1 + 32) _cancelUploadForObjectID:*(a1 + 40) inState:*(a1 + 48)];
  }
}

+ (int64_t)_transferSizeWithVersionSize:(int64_t)size
{
  v3 = 105 * size / 100;
  if (v3 == size)
  {
    return v3 + 1;
  }

  else
  {
    return 105 * size / 100;
  }
}

- (BRCAccountSession)session
{
  WeakRetained = objc_loadWeakRetained(&self->_session);

  return WeakRetained;
}

- (void)_createGlobalProgressWithCompletedUnitCount:totalUnitCount:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !_progress Progress already allocated%@", v5, v6, v7, v8);
  }
}

void __68__BRCGlobalProgress_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: progressGroup.shortValue == BRCProgressUploadGroup%@", v5, v6, v7, v8);
  }
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: !self->_resumeTracker%@", v5, v6, v7, v8);
  }
}

void __44__BRCGlobalProgress_resumeProgressForZones___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_18();
  [*v0 count];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)didUpdateDocument:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 fileObjectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)didUpdateDocument:.cold.2()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 fileObjectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)didUpdateDocument:.cold.3()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 fileObjectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)didUpdateDocument:.cold.4()
{
  OUTLINED_FUNCTION_18();
  v1 = [v0 fileObjectID];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)didDeleteDocument:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: item%@", v5, v6, v7, v8);
  }
}

- (void)replaceProgressForFileObjectID:inGroup:withProgress:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: group == BRCProgressUploadGroup%@", v5, v6, v7, v8);
  }
}

- (void)replaceProgressForFileObjectID:inGroup:withProgress:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: progress%@", v5, v6, v7, v8);
  }
}

- (void)addProgress:forDocument:inGroup:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: group == BRCProgressUploadGroup%@", v5, v6, v7, v8);
  }
}

- (void)addProgress:forDocument:inGroup:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: progress%@", v5, v6, v7, v8);
  }
}

- (void)addProgress:forDocument:inGroup:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: item%@", v5, v6, v7, v8);
  }
}

- (void)updateUploadThrottleForDocument:toState:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = 0;
  OUTLINED_FUNCTION_4_0();
  v4 = v0;
  _os_log_fault_impl(&dword_223E7A000, v1, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: can't update progress for document without an objectID %@%@", &v2, 0x16u);
}

- (void)_stopObservingProgress:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: objID%@", v5, v6, v7, v8);
  }
}

- (void)_stopObservingProgress:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: progressGroup%@", v5, v6, v7, v8);
  }
}

- (void)_stopObservingProgress:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: progressGroup.shortValue == BRCProgressUploadGroup%@", v5, v6, v7, v8);
  }
}

- (void)_createUploadMetadataWithCompletedUnitCount:totalUnitCount:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _progress == nil%@", v5, v6, v7, v8);
  }
}

- (void)_createUploadMetadataWithCompletedUnitCount:totalUnitCount:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: completedUnitCount >= 0%@", v5, v6, v7, v8);
  }
}

- (void)_createUploadMetadataWithCompletedUnitCount:totalUnitCount:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: totalUnitCount >= completedUnitCount%@", v5, v6, v7, v8);
  }
}

- (void)_cancelUploadForObjectID:inState:willRetryTransfer:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: transfer%@", v5, v6, v7, v8);
  }
}

- (void)_cancelUploadForObjectID:(uint64_t *)a1 inState:willRetryTransfer:.cold.2(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v7 = 138412290;
    v8 = v2;
    OUTLINED_FUNCTION_0_2(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: objectID%@", &v7);
  }

  v5 = brc_bread_crumbs();
  *a1 = v5;
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] Progress: can't proceed to upload cancelation without objectID%@", &v7, 0xCu);
  }
}

- (void)_destroyProgressInGroup:reason:.cold.1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: group.shortValue == BRCProgressUploadGroup%@", v5, v6, v7, v8);
  }
}

- (void)_destroyProgressInGroup:reason:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: _transfers.count == 0%@", v5, v6, v7, v8);
  }
}

- (void)_destroyProgressInGroup:reason:.cold.3()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.sumOfCompletedUnitCountDelta == 0%@", v5, v6, v7, v8);
  }
}

- (void)_destroyProgressInGroup:reason:.cold.4()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: self.sumOfTotalUnitCountDelta == 0%@", v5, v6, v7, v8);
  }
}

- (void)_startTrackingDocumentWithFileObjectID:versionSize:syncUpState:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] Assertion failed: syncUpState == BRC_SUS_NEEDS_FILE_ID || syncUpState == BRC_SUS_NEEDS_UPLOAD || syncUpState == BRC_SUS_NEEDS_SYNC_UP%@", v2);
}

- (void)_startTrackingDocumentWithFileObjectID:versionSize:syncUpState:.cold.2()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: versionSize > 0%@", v5, v6, v7, v8);
  }
}

void __37__BRCGlobalProgress__updateDocument___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v1;
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[NOTIF] Progress: cancelling upload for doc with objectID %@ because its needs to be uploaded again%@", v3, DWORD2(v3), *&v4[2], v5);
}

void __37__BRCGlobalProgress__updateDocument___block_invoke_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_223E7A000, v0, v1, "[CRIT] UNREACHABLE: needs-read no longer applicable on FPFS%@", v2);
}

void __37__BRCGlobalProgress__updateDocument___block_invoke_cold_3(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_4_0();
  *v4 = v1;
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[NOTIF] Progress: cancelling upload for doc with objectID %@ because its wasn't uploaded%@", v3, DWORD2(v3), *&v4[2], v5);
}

void __37__BRCGlobalProgress__updateDocument___block_invoke_cold_4()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: syncUpSize > 0%@", v5, v6, v7, v8);
  }
}

@end