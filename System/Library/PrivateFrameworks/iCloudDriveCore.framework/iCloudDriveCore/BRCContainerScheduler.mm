@interface BRCContainerScheduler
- (BOOL)_hasMetadataToSyncUpToContainerMetadata;
- (BRCContainerScheduler)initWithAccountSession:(id)session pushWorkloop:(id)workloop;
- (id)_newSyncDeadlineSourceWithName:(id)name;
- (id)internalZoneSyncDownAnalyticsErrors;
- (id)internalZoneSyncUpAnalyticsErrors;
- (unint64_t)recoverAndReportMissingJobs;
- (void)_connection:(id)_connection didReceiveIncomingMessage:(id)message;
- (void)_markContainerMetadataNeedsSyncUp;
- (void)_printSyncErrorIfNecessaryWithThrottle:(id)throttle context:(id)context error:(id)error now:(int64_t)now;
- (void)_scheduleAfterFlush:(id)flush;
- (void)_scheduleCrossZoneMovePCSPrep;
- (void)_scheduleUpdatePushTopicsRegistration;
- (void)_syncScheduleForContainersMetadata;
- (void)_syncScheduleForSharedDatabase;
- (void)_syncScheduleForSideCar;
- (void)_syncScheduleForZoneHealth;
- (void)_unscheduleClientZone:(id)zone;
- (void)_updatePushTopicsRegistration;
- (void)close;
- (void)closeContainers;
- (void)connection:(id)connection didReceiveIncomingMessage:(id)message;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier;
- (void)didChangeSyncStatusForContainerMetadataForContainer:(id)container;
- (void)didChangeSyncStatusForZoneHealthForContainer:(id)container;
- (void)didInitialSyncDownForClientZone:(id)zone;
- (void)dumpToContext:(id)context includeAllItems:(BOOL)items db:(id)db;
- (void)enablePushNotifications;
- (void)finishedHealthSyncDownCallback:(unint64_t)callback error:(id)error;
- (void)notifyAfterNextZoneHealthSyncDown:(id)down;
- (void)receivedUpdatedSideCarServerChangeToken:(id)token requestID:(unint64_t)d;
- (void)receivedUpdatedZoneHealthCallback:(id)callback requestID:(unint64_t)d;
- (void)redoZonePCSPreperation;
- (void)resume;
- (void)schedulePeriodicSyncInGroup:(id)group completion:(id)completion;
- (void)scheduleSyncDownForContainerMetadataWithGroup:(id)group;
- (void)scheduleSyncDownForSharedDatabaseImmediately:(BOOL)immediately;
- (void)scheduleSyncDownForSideCarWithGroup:(id)group;
- (void)scheduleSyncDownForZoneHealthWithGroup:(id)group;
- (void)scheduleSyncUpForSideCar;
- (void)setup;
- (void)syncContextDidBecomeBackground:(id)background;
- (void)syncContextDidBecomeForeground:(id)foreground;
@end

@implementation BRCContainerScheduler

- (BRCContainerScheduler)initWithAccountSession:(id)session pushWorkloop:(id)workloop
{
  sessionCopy = session;
  workloopCopy = workloop;
  v107.receiver = self;
  v107.super_class = BRCContainerScheduler;
  v9 = [(BRCContainerScheduler *)&v107 init];
  if (v9)
  {
    v10 = [BRCUserDefaults defaultsForMangledID:0];
    objc_initWeak(&location, v9);
    objc_storeStrong(&v9->_session, session);
    clientState = [(BRCAccountSession *)v9->_session clientState];
    v12 = [clientState objectForKeyedSubscript:@"syncUpBudget"];
    syncUpBudget = v9->_syncUpBudget;
    v9->_syncUpBudget = v12;

    v14 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = objc_alloc_init(BRCSyncBudgetThrottle);

      objc_storeStrong(&v9->_syncUpBudget, v15);
      v16 = v9->_syncUpBudget;
      clientState2 = [(BRCAccountSession *)v9->_session clientState];
      [clientState2 setObject:v16 forKeyedSubscript:@"syncUpBudget"];
    }

    v18 = [BRCDeadlineScheduler alloc];
    fairClientDBScheduler = [(BRCAccountSession *)v9->_session fairClientDBScheduler];
    v20 = [(BRCDeadlineScheduler *)v18 initWithName:@"com.apple.brc.sync" fairScheduler:fairClientDBScheduler];
    syncScheduler = v9->_syncScheduler;
    v9->_syncScheduler = v20;

    syncUpThrottle = [v10 syncUpThrottle];
    [syncUpThrottle minWait];
    [(BRCDeadlineScheduler *)v9->_syncScheduler setCoalescingLeeway:brc_interval_to_nsec() / 10];

    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke;
    v103[3] = &unk_278502478;
    v90 = v15;
    v104 = v90;
    v23 = v10;
    v105 = v23;
    [(BRCDeadlineScheduler *)v9->_syncScheduler setComputeNextAdmissibleDateForScheduling:v103];
    v24 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"metadata-sync"];
    containerMetadataSyncSource = v9->_containerMetadataSyncSource;
    v9->_containerMetadataSyncSource = v24;

    v26 = v9->_containerMetadataSyncSource;
    v101[0] = MEMORY[0x277D85DD0];
    v101[1] = 3221225472;
    v101[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_10;
    v101[3] = &unk_2784FF400;
    objc_copyWeak(&v102, &location);
    [(BRCDeadlineSource *)v26 setEventHandler:v101];
    v27 = [BRCSyncOperationThrottle alloc];
    containerMetadataMangledID = [MEMORY[0x277CFAE60] containerMetadataMangledID];
    v29 = [(BRCSyncOperationThrottle *)v27 initWithMangledID:containerMetadataMangledID isSyncDown:1];
    containerMetadataSyncDownThrottle = v9->_containerMetadataSyncDownThrottle;
    v9->_containerMetadataSyncDownThrottle = v29;

    v31 = [BRCSyncOperationThrottle alloc];
    containerMetadataMangledID2 = [MEMORY[0x277CFAE60] containerMetadataMangledID];
    v33 = [(BRCSyncOperationThrottle *)v31 initWithMangledID:containerMetadataMangledID2 isSyncDown:0];
    containerMetadataSyncUpThrottle = v9->_containerMetadataSyncUpThrottle;
    v9->_containerMetadataSyncUpThrottle = v33;

    v35 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"shared-db-sync"];
    sharedDatabaseSyncSource = v9->_sharedDatabaseSyncSource;
    v9->_sharedDatabaseSyncSource = v35;

    v37 = v9->_sharedDatabaseSyncSource;
    v99[0] = MEMORY[0x277D85DD0];
    v99[1] = 3221225472;
    v99[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_2;
    v99[3] = &unk_2784FF400;
    objc_copyWeak(&v100, &location);
    [(BRCDeadlineSource *)v37 setEventHandler:v99];
    v38 = [BRCSyncOperationThrottle alloc];
    mEMORY[0x277CFAE60] = [MEMORY[0x277CFAE60] sharedDatabaseMangledID];
    v40 = [(BRCSyncOperationThrottle *)v38 initWithMangledID:mEMORY[0x277CFAE60] isSyncDown:1];
    sharedDatabaseSyncDownThrottle = v9->_sharedDatabaseSyncDownThrottle;
    v9->_sharedDatabaseSyncDownThrottle = v40;

    v42 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"zone-health-sync"];
    zoneHealthSyncSource = v9->_zoneHealthSyncSource;
    v9->_zoneHealthSyncSource = v42;

    v44 = v9->_zoneHealthSyncSource;
    v97[0] = MEMORY[0x277D85DD0];
    v97[1] = 3221225472;
    v97[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_3;
    v97[3] = &unk_2784FF400;
    objc_copyWeak(&v98, &location);
    [(BRCDeadlineSource *)v44 setEventHandler:v97];
    v45 = [BRCSyncOperationThrottle alloc];
    zoneHealthMangledID = [MEMORY[0x277CFAE60] zoneHealthMangledID];
    v47 = [(BRCSyncOperationThrottle *)v45 initWithMangledID:zoneHealthMangledID isSyncDown:0];
    zoneHealthSyncUpThrottle = v9->_zoneHealthSyncUpThrottle;
    v9->_zoneHealthSyncUpThrottle = v47;

    v49 = [BRCSyncOperationThrottle alloc];
    zoneHealthMangledID2 = [MEMORY[0x277CFAE60] zoneHealthMangledID];
    v51 = [(BRCSyncOperationThrottle *)v49 initWithMangledID:zoneHealthMangledID2 isSyncDown:1];
    zoneHealthSyncDownThrottle = v9->_zoneHealthSyncDownThrottle;
    v9->_zoneHealthSyncDownThrottle = v51;

    v53 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"migrate-pcs-sync"];
    migrateZonePCSSource = v9->_migrateZonePCSSource;
    v9->_migrateZonePCSSource = v53;

    v55 = v9->_migrateZonePCSSource;
    v95[0] = MEMORY[0x277D85DD0];
    v95[1] = 3221225472;
    v95[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_4;
    v95[3] = &unk_2784FF400;
    objc_copyWeak(&v96, &location);
    [(BRCDeadlineSource *)v55 setEventHandler:v95];
    v56 = [(BRCContainerScheduler *)v9 _newSyncDeadlineSourceWithName:@"side-car-sync"];
    sideCarSyncSource = v9->_sideCarSyncSource;
    v9->_sideCarSyncSource = v56;

    v58 = v9->_sideCarSyncSource;
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_5;
    v93[3] = &unk_2784FF400;
    objc_copyWeak(&v94, &location);
    [(BRCDeadlineSource *)v58 setEventHandler:v93];
    v59 = [BRCSyncOperationThrottle alloc];
    sideCarMangledID = [MEMORY[0x277CFAE60] sideCarMangledID];
    v61 = [(BRCSyncOperationThrottle *)v59 initWithMangledID:sideCarMangledID isSyncDown:0];
    sideCarSyncUpThrottle = v9->_sideCarSyncUpThrottle;
    v9->_sideCarSyncUpThrottle = v61;

    v63 = [BRCSyncOperationThrottle alloc];
    sideCarMangledID2 = [MEMORY[0x277CFAE60] sideCarMangledID];
    v65 = [(BRCSyncOperationThrottle *)v63 initWithMangledID:sideCarMangledID2 isSyncDown:1];
    sideCarSyncDownThrottle = v9->_sideCarSyncDownThrottle;
    v9->_sideCarSyncDownThrottle = v65;

    v67 = +[BRCAccountsManager sharedManager];
    v9->_isInSyncBubble = [v67 isInSyncBubble];

    isInSyncBubble = v9->_isInSyncBubble;
    objc_storeStrong(&v9->_pushWorkloop, workloop);
    if (!isInSyncBubble)
    {
      v69 = [BRCFairSource alloc];
      fairClientDBScheduler2 = [(BRCAccountSession *)v9->_session fairClientDBScheduler];
      v71 = [(BRCFairSource *)v69 initWithName:@"push" scheduler:fairClientDBScheduler2];
      pushSource = v9->_pushSource;
      v9->_pushSource = v71;

      [(BRCFairSource *)v9->_pushSource setWorkloop:v9->_pushWorkloop];
      v91[0] = MEMORY[0x277D85DD0];
      v91[1] = 3221225472;
      v91[2] = __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_6;
      v91[3] = &unk_2784FF400;
      objc_copyWeak(&v92, &location);
      [(BRCFairSource *)v9->_pushSource setEventHandler:v91];
      v73 = brc_bread_crumbs();
      v74 = brc_default_log();
      if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
      {
        [BRCContainerScheduler initWithAccountSession:pushWorkloop:];
      }

      objc_destroyWeak(&v92);
    }

    v75 = [(BRCPersistedState *)BRCContainerMetadataSyncPersistedState loadFromClientStateInSession:v9->_session];
    containerMetadataPersistedState = v9->_containerMetadataPersistedState;
    v9->_containerMetadataPersistedState = v75;

    v77 = [(BRCPersistedState *)BRCZoneHealthSyncPersistedState loadFromClientStateInSession:v9->_session];
    zoneHealthPersistedState = v9->_zoneHealthPersistedState;
    v9->_zoneHealthPersistedState = v77;

    v79 = [(BRCPersistedState *)BRCSideCarSyncPersistedState loadFromClientStateInSession:v9->_session];
    sideCarSyncPersistedState = v9->_sideCarSyncPersistedState;
    v9->_sideCarSyncPersistedState = v79;

    v81 = [BRCSideCarSyncDownHandler alloc];
    v82 = v9->_sideCarSyncPersistedState;
    serverState = [sessionCopy serverState];
    applyScheduler = [sessionCopy applyScheduler];
    v85 = [(BRCSideCarSyncDownHandler *)v81 initWithSessionContext:sessionCopy sideCarPersistedState:v82 serverPersistedState:serverState applyScheduler:applyScheduler];
    sideCarSyncDownHandler = v9->_sideCarSyncDownHandler;
    v9->_sideCarSyncDownHandler = v85;

    v87 = [[BRCPeriodicSyncScheduler alloc] initWithContainerScheduler:v9 session:v9->_session];
    periodicSyncScheduler = v9->_periodicSyncScheduler;
    v9->_periodicSyncScheduler = v87;

    objc_destroyWeak(&v94);
    objc_destroyWeak(&v96);
    objc_destroyWeak(&v98);
    objc_destroyWeak(&v100);
    objc_destroyWeak(&v102);

    objc_destroyWeak(&location);
  }

  return v9;
}

uint64_t __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  v4 = *(a1 + 32);
  brc_interval_from_nsec();
  [v4 updateForTime:?];
  [*v3 availableBudgetWithDefaults:v3[1]];
  v6 = v5;
  [v3[1] syncUpMinimalBudget];
  if (v6 >= v7)
  {
    return 0;
  }

  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_cold_1();
  }

  [*(a1 + 32) nextDateWithBudgetWithDefaults:*(a1 + 40)];
  return brc_interval_to_nsec();
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncScheduleForContainersMetadata];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncScheduleForSharedDatabase];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncScheduleForZoneHealth];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _scheduleCrossZoneMovePCSPrep];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _syncScheduleForSideCar];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePushTopicsRegistration];
}

- (void)enablePushNotifications
{
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [BRCContainerScheduler enablePushNotifications];
  }

  [(BRCFairSource *)self->_pushSource resume];
}

- (id)_newSyncDeadlineSourceWithName:(id)name
{
  nameCopy = name;
  v5 = [BRCDeadlineSource alloc];
  defaultScheduler = [(BRCAccountSession *)self->_session defaultScheduler];
  v7 = [(BRCDeadlineSource *)v5 initWithScheduler:defaultScheduler name:nameCopy];

  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  [(BRCDeadlineSource *)v7 setWorkloop:workloop];

  return v7;
}

- (void)_unscheduleClientZone:(id)zone
{
  zoneCopy = zone;
  [zoneCopy setDelegate:0];
  syncDeadlineSource = [zoneCopy syncDeadlineSource];

  [syncDeadlineSource cancel];
}

- (void)closeContainers
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx shutting down periodic metadata sync%@");
}

void __40__BRCContainerScheduler_closeContainers__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) cancel];
  v2 = *(*(a1 + 32) + 120);
  if (v2)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 325, 0, &v17);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_1();
    }

    [v2 cancel];
    [*(a1 + 40) addObject:v2];
    __brc_leave_section(&v17);
  }

  [*(*(a1 + 32) + 24) cancel];
  v5 = *(*(a1 + 32) + 168);

  if (v5)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 332, 0, &v17);
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_2();
    }

    [v5 cancel];
    [*(a1 + 40) addObject:v5];
    __brc_leave_section(&v17);
  }

  [*(*(a1 + 32) + 32) cancel];
  v8 = *(*(a1 + 32) + 208);

  if (v8)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 339, 0, &v17);
    v9 = brc_bread_crumbs();
    v10 = brc_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_3();
    }

    [v8 cancel];
    [*(a1 + 40) addObject:v8];
    __brc_leave_section(&v17);
  }

  [*(*(a1 + 32) + 328) cancel];
  v11 = *(*(a1 + 32) + 320);

  if (v11)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 346, 0, &v17);
    v12 = brc_bread_crumbs();
    v13 = brc_default_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_4();
    }

    [v11 cancel];
    [*(a1 + 40) addObject:v11];
    __brc_leave_section(&v17);
  }

  [*(*(a1 + 32) + 40) cancel];
  v14 = *(*(a1 + 32) + 264);

  if (v14)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 353, 0, &v17);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_cold_5();
    }

    [v14 cancel];
    [*(a1 + 40) addObject:v14];
    __brc_leave_section(&v17);
  }
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_38(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 312);
  if (v2)
  {
    memset(v7, 0, sizeof(v7));
    __brc_create_section(0, "[BRCContainerScheduler closeContainers]_block_invoke", 363, 0, v7);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __40__BRCContainerScheduler_closeContainers__block_invoke_38_cold_1();
    }

    [v2 cancel];
    [*(a1 + 40) addObject:v2];
    __brc_leave_section(v7);
  }

  v5 = [*(a1 + 32) session];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__BRCContainerScheduler_closeContainers__block_invoke_39;
  v6[3] = &unk_278500298;
  v6[4] = *(a1 + 32);
  [v5 enumerateClientZones:v6];
}

uint64_t __40__BRCContainerScheduler_closeContainers__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCContainerScheduler_closeContainers__block_invoke_39_cold_1();
  }

  [*(a1 + 32) _unscheduleClientZone:v3];
  return 1;
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_41(uint64_t a1)
{
  [*(*(a1 + 32) + 48) cancel];
  [*(*(a1 + 32) + 80) setEnabledTopics:MEMORY[0x277CBEBF8] ignoredTopics:MEMORY[0x277CBEBF8] opportunisticTopics:MEMORY[0x277CBEBF8]];
  [*(*(a1 + 32) + 80) shutdown];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;
}

- (void)close
{
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BRCContainerScheduler_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(workloop, block);

  syncScheduler = self->_syncScheduler;
  self->_syncScheduler = 0;
}

void __30__BRCContainerScheduler_close__block_invoke(uint64_t a1)
{
  v22 = [MEMORY[0x277CCAB98] defaultCenter];
  v2 = *(a1 + 32);
  v3 = [*(v2 + 8) personaIdentifier];
  v4 = BRPersonaSpecificName();
  [v22 removeObserver:v2 name:v4 object:0];

  v5 = *(a1 + 32);
  v6 = [*(v5 + 8) personaIdentifier];
  v7 = BRPersonaSpecificName();
  [v22 removeObserver:v5 name:v7 object:0];

  [*(*(a1 + 32) + 304) close];
  [*(*(a1 + 32) + 368) _close];
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  v10 = *(a1 + 32);
  v11 = *(v10 + 24);
  *(v10 + 24) = 0;

  v12 = *(a1 + 32);
  v13 = *(v12 + 32);
  *(v12 + 32) = 0;

  v14 = *(a1 + 32);
  v15 = *(v14 + 328);
  *(v14 + 328) = 0;

  v16 = *(a1 + 32);
  v17 = *(v16 + 40);
  *(v16 + 40) = 0;

  v18 = *(a1 + 32);
  v19 = *(v18 + 304);
  *(v18 + 304) = 0;

  v20 = *(a1 + 32);
  v21 = *(v20 + 8);
  *(v20 + 8) = 0;
}

- (void)setup
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx loading containers%@");
}

- (void)schedulePeriodicSyncInGroup:(id)group completion:(id)completion
{
  groupCopy = group;
  completionCopy = completion;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB assertOnQueue];

  if (self->_periodicSyncOperation)
  {
    v9 = [MEMORY[0x277CCA9B8] brc_errorOperationAlreadyRunning:@"Periodic Sync"];
    completionCopy[2](completionCopy, v9);
  }

  else
  {
    memset(v21, 0, sizeof(v21));
    __brc_create_section(0, "[BRCContainerScheduler schedulePeriodicSyncInGroup:completion:]", 469, 0, v21);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [BRCContainerScheduler schedulePeriodicSyncInGroup:completion:];
    }

    v12 = [BRCPeriodicSyncOperation alloc];
    serverChangeToken = [(BRCContainerMetadataSyncPersistedState *)self->_containerMetadataPersistedState serverChangeToken];
    serverChangeToken2 = [(BRCZoneHealthSyncPersistedState *)self->_zoneHealthPersistedState serverChangeToken];
    serverChangeToken3 = [(BRCSideCarSyncPersistedState *)self->_sideCarSyncPersistedState serverChangeToken];
    v16 = [(BRCPeriodicSyncOperation *)v12 initWithContainerScheduler:self metadataChangeToken:serverChangeToken zoneHealthChangeToken:serverChangeToken2 sideCarChangeToken:serverChangeToken3 sessionContext:self->_session];

    callbackQueue = [(_BRCOperation *)v16 callbackQueue];
    clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
    dispatch_set_target_queue(callbackQueue, clientTruthWorkloop);

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__BRCContainerScheduler_schedulePeriodicSyncInGroup_completion___block_invoke;
    v19[3] = &unk_2785024A0;
    v19[4] = self;
    v20 = completionCopy;
    [(_BRCOperation *)v16 setFinishBlock:v19];
    [(_BRCOperation *)v16 setGroup:groupCopy];
    objc_storeStrong(&self->_periodicSyncOperation, v16);
    [(_BRCOperation *)v16 schedule];
    [(BRCContainerScheduler *)self scheduleSyncDownForSharedDatabaseImmediately:0];

    __brc_leave_section(v21);
  }
}

void __64__BRCContainerScheduler_schedulePeriodicSyncInGroup_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, 0x90u))
    {
      __64__BRCContainerScheduler_schedulePeriodicSyncInGroup_completion___block_invoke_cold_1();
    }
  }

  v7 = *(a1 + 32);
  v8 = *(v7 + 312);
  *(v7 + 312) = 0;

  (*(*(a1 + 40) + 16))();
}

- (BOOL)_hasMetadataToSyncUpToContainerMetadata
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  session = [(BRCContainerScheduler *)self session];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __64__BRCContainerScheduler__hasMetadataToSyncUpToContainerMetadata__block_invoke;
  v4[3] = &unk_2785024C8;
  v4[4] = &v5;
  [session enumerateAppLibraries:v4];

  LOBYTE(session) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return session;
}

- (unint64_t)recoverAndReportMissingJobs
{
  v9 = *MEMORY[0x277D85DE8];
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  dispatch_assert_queue_V2(workloop);

  if (![(BRCContainerScheduler *)self _hasMetadataToSyncUpToContainerMetadata]|| (self->_containerMetadataSyncState & 0xF) != 0)
  {
    return 0;
  }

  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] container-metadata has things to sync-up but it is not marked as needs-sync-up%@", &v7, 0xCu);
  }

  [(BRCContainerScheduler *)self _markContainerMetadataNeedsSyncUp];
  return 1;
}

- (void)resume
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  session = [(BRCContainerScheduler *)self session];
  personaIdentifier = [session personaIdentifier];
  v6 = BRPersonaSpecificName();
  [defaultCenter addObserver:self selector:sel_syncContextDidBecomeForeground_ name:v6 object:0];

  session2 = [(BRCContainerScheduler *)self session];
  personaIdentifier2 = [session2 personaIdentifier];
  v9 = BRPersonaSpecificName();
  [defaultCenter addObserver:self selector:sel_syncContextDidBecomeBackground_ name:v9 object:0];

  if ([(BRCContainerScheduler *)self _hasMetadataToSyncUpToContainerMetadata])
  {
    self->_containerMetadataSyncState |= 1u;
  }

  if ([(BRCContainerMetadataSyncPersistedState *)self->_containerMetadataPersistedState needsContainerMetadataSyncDown])
  {
    self->_containerMetadataSyncState |= 2u;
  }

  if ([(BRCContainerMetadataSyncPersistedState *)self->_containerMetadataPersistedState needsSharedDBSyncDown])
  {
    self->_sharedDBSyncState |= 2u;
  }

  session3 = [(BRCContainerScheduler *)self session];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__BRCContainerScheduler_resume__block_invoke;
  v13[3] = &unk_2785002E8;
  v13[4] = self;
  [session3 enumeratePrivateClientZones:v13];

  if ([(BRCZoneHealthSyncPersistedState *)self->_zoneHealthPersistedState needsSyncDown])
  {
    self->_zoneHealthSyncState |= 2u;
  }

  if ([(BRCSideCarSyncPersistedState *)self->_sideCarSyncPersistedState needsSync])
  {
    self->_sideCarSyncState |= 3u;
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [BRCContainerScheduler resume];
  }

  [(BRCDeadlineScheduler *)self->_syncScheduler resume];
  [(BRCDeadlineSource *)self->_containerMetadataSyncSource resume];
  [(BRCDeadlineSource *)self->_sharedDatabaseSyncSource resume];
  [(BRCDeadlineSource *)self->_zoneHealthSyncSource resume];
  [(BRCDeadlineSource *)self->_migrateZonePCSSource resume];
  [(BRCDeadlineSource *)self->_sideCarSyncSource resume];
  [(BRCPeriodicSyncScheduler *)self->_periodicSyncScheduler resume];
}

uint64_t __31__BRCContainerScheduler_resume__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 zoneHealthNeedsSyncUp];
  if (v3)
  {
    *(*(a1 + 32) + 200) |= 1u;
  }

  return v3 ^ 1u;
}

- (void)didInitialSyncDownForClientZone:(id)zone
{
  zoneCopy = zone;
  if ([zoneCopy isCloudDocsZone])
  {
    memset(v8, 0, sizeof(v8));
    __brc_create_section(0, "[BRCContainerScheduler didInitialSyncDownForClientZone:]", 653, 0, v8);
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [BRCContainerScheduler didInitialSyncDownForClientZone:];
    }

    session = [(BRCContainerScheduler *)self session];
    [session markAccountMigrationComplete];

    __brc_leave_section(v8);
  }
}

- (void)scheduleSyncDownForContainerMetadataWithGroup:(id)group
{
  groupCopy = group;
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__BRCContainerScheduler_scheduleSyncDownForContainerMetadataWithGroup___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  dispatch_async_with_logs_4(workloop, v7);
}

uint64_t __71__BRCContainerScheduler_scheduleSyncDownForContainerMetadataWithGroup___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __71__BRCContainerScheduler_scheduleSyncDownForContainerMetadataWithGroup___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 104) |= 2u;
  [*(*(a1 + 32) + 96) setNeedsContainerMetadataSyncDown:1];
  [*(*(a1 + 32) + 96) setCkGroup:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) clientDB];
  [v4 forceBatchStart];

  return [*(*(a1 + 32) + 16) signal];
}

- (void)scheduleSyncDownForSharedDatabaseImmediately:(BOOL)immediately
{
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__BRCContainerScheduler_scheduleSyncDownForSharedDatabaseImmediately___block_invoke;
  v6[3] = &unk_278500EE0;
  immediatelyCopy = immediately;
  v6[4] = self;
  dispatch_async_with_logs_4(workloop, v6);
}

uint64_t __70__BRCContainerScheduler_scheduleSyncDownForSharedDatabaseImmediately___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 0;
  }

  else
  {
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    v2 = [v3 sharedDbSyncDownCoalesceNanoseconds];
  }

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __70__BRCContainerScheduler_scheduleSyncDownForSharedDatabaseImmediately___block_invoke_cold_1();
  }

  v6 = brc_current_date_nsec();
  *(*(a1 + 32) + 160) |= 2u;
  [*(*(a1 + 32) + 96) setNeedsSharedDBSyncDown:1];
  v7 = [*(*(a1 + 32) + 8) clientDB];
  [v7 forceBatchStart];

  return [*(*(a1 + 32) + 24) signalWithDeadline:v6 + v2];
}

- (void)scheduleSyncDownForZoneHealthWithGroup:(id)group
{
  groupCopy = group;
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__BRCContainerScheduler_scheduleSyncDownForZoneHealthWithGroup___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  dispatch_async_with_logs_4(workloop, v7);
}

uint64_t __64__BRCContainerScheduler_scheduleSyncDownForZoneHealthWithGroup___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __64__BRCContainerScheduler_scheduleSyncDownForZoneHealthWithGroup___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 200) |= 2u;
  [*(*(a1 + 32) + 192) setNeedsSyncDown:1];
  [*(*(a1 + 32) + 192) setCkGroup:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) clientDB];
  [v4 forceBatchStart];

  return [*(*(a1 + 32) + 32) signal];
}

- (void)scheduleSyncDownForSideCarWithGroup:(id)group
{
  groupCopy = group;
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__BRCContainerScheduler_scheduleSyncDownForSideCarWithGroup___block_invoke;
  v7[3] = &unk_2784FF478;
  v7[4] = self;
  v8 = groupCopy;
  v6 = groupCopy;
  dispatch_async_with_logs_4(workloop, v7);
}

uint64_t __61__BRCContainerScheduler_scheduleSyncDownForSideCarWithGroup___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __61__BRCContainerScheduler_scheduleSyncDownForSideCarWithGroup___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 256) |= 2u;
  [*(*(a1 + 32) + 248) setNeedsSync:1];
  [*(*(a1 + 32) + 248) setCkGroup:*(a1 + 40)];
  v4 = [*(*(a1 + 32) + 8) clientDB];
  [v4 forceBatchStart];

  return [*(*(a1 + 32) + 40) signal];
}

- (void)redoZonePCSPreperation
{
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__BRCContainerScheduler_redoZonePCSPreperation__block_invoke;
  v4[3] = &unk_2784FF450;
  v4[4] = self;
  dispatch_async_with_logs_4(workloop, v4);
}

uint64_t __47__BRCContainerScheduler_redoZonePCSPreperation__block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __47__BRCContainerScheduler_redoZonePCSPreperation__block_invoke_cold_1();
  }

  v4 = [*(*(a1 + 32) + 8) clientState];
  [v4 setNeedsPCSMigration:1];

  return [*(*(a1 + 32) + 328) signal];
}

- (void)scheduleSyncUpForSideCar
{
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB assertOnQueue];

  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [BRCContainerScheduler scheduleSyncUpForSideCar];
  }

  self->_sideCarSyncState |= 1u;
  [(BRCSideCarSyncPersistedState *)self->_sideCarSyncPersistedState setNeedsSync:1];
  clientDB2 = [(BRCAccountSession *)self->_session clientDB];
  [clientDB2 forceBatchStart];

  [(BRCDeadlineSource *)self->_sideCarSyncSource signal];
}

- (void)didChangeSyncStatusForZoneHealthForContainer:(id)container
{
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__BRCContainerScheduler_didChangeSyncStatusForZoneHealthForContainer___block_invoke;
  v5[3] = &unk_2784FF450;
  v5[4] = self;
  dispatch_async_with_logs_4(workloop, v5);
}

uint64_t __70__BRCContainerScheduler_didChangeSyncStatusForZoneHealthForContainer___block_invoke(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __70__BRCContainerScheduler_didChangeSyncStatusForZoneHealthForContainer___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 200) |= 1u;
  return [*(*(a1 + 32) + 32) signal];
}

- (void)_markContainerMetadataNeedsSyncUp
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2112;
  *&v3[14] = self;
  OUTLINED_FUNCTION_4(&dword_223E7A000, a2, a3, "[DEBUG] marking container-metadata needs-sync-up with deadline: %lld%@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)didChangeSyncStatusForContainerMetadataForContainer:(id)container
{
  containerCopy = container;
  objc_initWeak(&location, self);
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__BRCContainerScheduler_didChangeSyncStatusForContainerMetadataForContainer___block_invoke;
  v6[3] = &unk_2784FF400;
  objc_copyWeak(&v7, &location);
  dispatch_async_with_logs_4(workloop, v6);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __77__BRCContainerScheduler_didChangeSyncStatusForContainerMetadataForContainer___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _markContainerMetadataNeedsSyncUp];
}

- (void)_scheduleAfterFlush:(id)flush
{
  flushCopy = flush;
  objc_initWeak(&location, self);
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__BRCContainerScheduler__scheduleAfterFlush___block_invoke;
  v7[3] = &unk_2784FF518;
  objc_copyWeak(&v9, &location);
  v6 = flushCopy;
  v8 = v6;
  [clientDB scheduleFlushWithCheckpoint:0 whenFlushed:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __45__BRCContainerScheduler__scheduleAfterFlush___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[46] workloop];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__BRCContainerScheduler__scheduleAfterFlush___block_invoke_2;
    v6[3] = &unk_2784FFBC8;
    v5 = *(a1 + 32);
    v6[4] = v3;
    v7 = v5;
    dispatch_async(v4, v6);
  }
}

- (void)_syncScheduleForContainersMetadata
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_223E7A000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] already syncing container-metadata: %@%@", buf, 0x16u);
}

void __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v42 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = 0;

  v44 = 0;
  v8 = [v5 brc_containerResetErrorForSharedZone:0 resetReason:&v44];
  v9 = *(*(a1 + 32) + 104);
  if (v8)
  {
    v10 = objc_alloc(MEMORY[0x277CFAE60]);
    v11 = [v10 initWithZoneName:*MEMORY[0x277CFAD58] ownerName:*MEMORY[0x277CBBF28]];
    v12 = [*(*(a1 + 32) + 8) clientZoneByMangledID:v11];
    v13 = [v12 enhancedDrivePrivacyEnabled];
    v14 = [*(*(a1 + 32) + 96) lastSyncDownDate];
    v15 = [AppTelemetryTimeSeriesEvent newZoneResetEventWithZoneMangledID:v11 enhancedDrivePrivacyEnabled:v13 lastSyncDate:v14 error:v5 errorDescription:v44];

    v16 = [*(*(a1 + 32) + 8) analyticsReporter];
    [v16 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v15];

    memset(v43, 0, sizeof(v43));
    __brc_create_section(0, "[BRCContainerScheduler _syncScheduleForContainersMetadata]_block_invoke", 890, 0, v43);
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v38 = v43[0];
      v39 = BRCPrettyPrintEnum();
      *buf = 134218498;
      v46 = v38;
      v47 = 2080;
      v48 = v39;
      v49 = 2112;
      v50 = v17;
      _os_log_debug_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx resetting container-metadata: %s%@", buf, 0x20u);
    }

    v19 = v9;
    if (v8 != 1)
    {
      [*(*(a1 + 32) + 8) enumerateAppLibraries:&__block_literal_global_25];
      v19 = v9 | 1;
    }

    [*(*(a1 + 32) + 96) containerMetadataWasReset];
    __brc_leave_section(v43);

    v20 = v19 | 2;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v30 = *(a1 + 32);
    if (isKindOfClass)
    {
      [*(v30 + 136) updateForError:v5];
      objc_storeStrong((*(a1 + 32) + 152), a3);
      v31 = objc_loadWeakRetained((a1 + 40));
      v11 = v31;
      v20 = v9 | 0x12;
      if (!v5 && ![v31 shouldPerformAnotherBatch])
      {
        v20 = v9 & 0xFFFFFFEC | 0x12;
      }
    }

    else
    {
      [*(v30 + 128) updateForError:v5];
      objc_storeStrong((*(a1 + 32) + 144), a3);
      v32 = objc_loadWeakRetained((a1 + 40));
      v11 = v32;
      v20 = v9;
      if (!v5)
      {
        v33 = [v32 shouldFetchAnotherBatch];
        v34 = v9 & 0xFFFFFFCD;
        if (v33)
        {
          v34 = v9;
        }

        v20 = v34 & 0xFFFFFFCF | 0x20;
      }

      if ([*(a1 + 32) _hasMetadataToSyncUpToContainerMetadata])
      {
        v35 = brc_bread_crumbs();
        v36 = brc_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke_cold_1();
        }

        v20 |= 1u;
      }
    }
  }

  if ((v20 & 2) == 0)
  {
    [*(*(a1 + 32) + 96) setNeedsContainerMetadataSyncDown:0];
    [*(*(a1 + 32) + 96) setHasCaughtUpAtLeastOnce:1];
    v21 = [*(*(a1 + 32) + 8) clientDB];
    [v21 forceBatchStart];
  }

  v22 = brc_bread_crumbs();
  v23 = brc_default_log();
  v24 = v20 & 0xFFFFFFF3;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    if (*(*(a1 + 32) + 104))
    {
      v37 = BRCPrettyPrintBitmap();
    }

    else
    {
      v37 = @"idle";
    }

    v40 = v37;
    if (v24)
    {
      v41 = BRCPrettyPrintBitmap();
    }

    else
    {
      v41 = @"idle";
    }

    *buf = 138412802;
    v46 = v40;
    v47 = 2112;
    v48 = v41;
    v49 = 2112;
    v50 = v22;
    _os_log_debug_impl(&dword_223E7A000, v23, OS_LOG_TYPE_DEBUG, "[DEBUG] Container metadata sync state (%@) -> (%@)%@", buf, 0x20u);
  }

  v26 = *(a1 + 32);
  v25 = a1 + 32;
  *(v26 + 104) = v24;
  [*(*v25 + 16) signal];
  v27 = [*(*v25 + 8) periodicSyncInvestigation];
  [v27 completeInvestigationIfNecessaryWithOldSyncState:v9 newSyncState:*(*v25 + 104)];
}

uint64_t __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke_63(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 containerMetadataEtag];

  if (v3)
  {
    [v2 setContainerMetadataEtag:0];
    [v2 setContainerMetadataNeedsSyncUp:1];
  }

  return 1;
}

uint64_t __59__BRCContainerScheduler__syncScheduleForContainersMetadata__block_invoke_65(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 120), *(a1 + 32));
  v3 = *(a1 + 32);

  return [v3 schedule];
}

- (void)_syncScheduleForSharedDatabase
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx scheduling shared-db sync%@");
}

void __55__BRCContainerScheduler__syncScheduleForSharedDatabase__block_invoke(uint64_t a1, int a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 168);
  *(v7 + 168) = 0;

  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v15 = "NO";
    *v16 = 136315650;
    if (a2)
    {
      v15 = "YES";
    }

    *&v16[4] = v15;
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] Finished sharedb sync down with more coming: %s, error %@%@", v16, 0x20u);
  }

  [*(*(a1 + 32) + 176) updateForError:v6];
  objc_storeStrong((*(a1 + 32) + 184), a3);
  if (v6)
  {
    v11 = 2;
  }

  else
  {
    v11 = 32;
  }

  if (!v6 && a2)
  {
    *(*(a1 + 32) + 160) |= 2u;
    v11 = 32;
  }

  *(*(a1 + 32) + 160) |= v11;
  v12 = *(a1 + 32);
  v13 = *(v12 + 160);
  if ((v13 & 2) == 0)
  {
    [*(v12 + 96) setNeedsSharedDBSyncDown:0];
    v14 = [*(*(a1 + 32) + 8) clientDB];
    [v14 forceBatchStart];

    v12 = *(a1 + 32);
    v13 = *(v12 + 160);
  }

  *(v12 + 160) = v13 & 0xFFFFFFF3;
  [*(*(a1 + 32) + 24) signal];
}

- (void)_syncScheduleForZoneHealth
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx scheduling zone-health sync%@");
}

void __51__BRCContainerScheduler__syncScheduleForZoneHealth__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(*(a1 + 32) + 368) workloop];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 32);
  v8 = *(v7 + 200);
  v9 = *(v7 + 208);
  *(v7 + 208) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = *(*(a1 + 32) + 352);
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v36;
      do
      {
        v15 = 0;
        do
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          (*(*(*(&v35 + 1) + 8 * v15++) + 16))();
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v13);
    }

    v16 = *(a1 + 32);
    v17 = *(v16 + 352);
    *(v16 + 352) = 0;
  }

  v34 = 0;
  if (![v5 brc_containerResetErrorForSharedZone:0 resetReason:&v34])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(*(a1 + 32) + 216) updateForError:v5];
      objc_storeStrong((*(a1 + 32) + 232), a3);
      v27 = *(a1 + 32);
      v28 = *(v27 + 200);
      if (v5)
      {
        v29 = v28 | 2;
      }

      else
      {
        *(v27 + 200) = v28 | 0x20;
        v27 = *(a1 + 32);
        v29 = *(v27 + 200) & 0xFFFFFFEF;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_22;
      }

      [*(*(a1 + 32) + 224) updateForError:v5];
      objc_storeStrong((*(a1 + 32) + 240), a3);
      v27 = *(a1 + 32);
      v30 = *(v27 + 200);
      if (v5)
      {
        v29 = v30 | 0x13;
      }

      else
      {
        *(v27 + 200) = v30 | 0x10;
        if (![WeakRetained shouldPerformAnotherBatch])
        {
          goto LABEL_22;
        }

        v27 = *(a1 + 32);
        v29 = *(v27 + 200) | 1;
      }
    }

    *(v27 + 200) = v29;
    goto LABEL_22;
  }

  v18 = brc_bread_crumbs();
  v19 = brc_default_log();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v40 = v18;
    _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[WARNING] Resetting zone health%@", buf, 0xCu);
  }

  v20 = objc_alloc(MEMORY[0x277CFAE60]);
  v21 = [v20 initWithZoneName:*MEMORY[0x277CFADD0] ownerName:*MEMORY[0x277CBBF28]];
  v22 = [*(*(a1 + 32) + 8) clientZoneByMangledID:v21];
  v23 = [v22 enhancedDrivePrivacyEnabled];
  v24 = [*(*(a1 + 32) + 192) lastSyncDownDate];
  v25 = [AppTelemetryTimeSeriesEvent newZoneResetEventWithZoneMangledID:v21 enhancedDrivePrivacyEnabled:v23 lastSyncDate:v24 error:v5 errorDescription:v34];

  v26 = [*(*(a1 + 32) + 8) analyticsReporter];
  [v26 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v25];

  [*(*(a1 + 32) + 8) enumeratePrivateClientZones:&__block_literal_global_81];
  [*(*(a1 + 32) + 192) zoneHealthWasReset];

LABEL_22:
  *(*(a1 + 32) + 200) &= 0xFFFFFFF3;
  v31 = *(a1 + 32);
  if ((*(v31 + 200) & 2) == 0)
  {
    [*(v31 + 192) setNeedsSyncDown:0];
    v32 = [*(*(a1 + 32) + 8) clientDB];
    [v32 forceBatchStart];

    v31 = *(a1 + 32);
  }

  [*(v31 + 32) signal];
  v33 = [*(*(a1 + 32) + 8) periodicSyncInvestigation];
  [v33 completeInvestigationIfNecessaryWithOldSyncState:v8 newSyncState:*(*(a1 + 32) + 200)];
}

- (void)_syncScheduleForSideCar
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx scheduling side-car sync%@");
}

void __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(*(a1 + 32) + 368) workloop];
  dispatch_assert_queue_V2(v6);

  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  v9 = *(v7 + 264);
  *(v7 + 264) = 0;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v27 = 0;
  if ([v5 brc_containerResetErrorForSharedZone:0 resetReason:&v27])
  {
    v11 = objc_alloc(MEMORY[0x277CFAE60]);
    v12 = [v11 initWithZoneName:*MEMORY[0x277CFB070] ownerName:*MEMORY[0x277CBBF28]];
    v13 = [*(*(a1 + 32) + 8) clientZoneByMangledID:v12];
    v14 = [v13 enhancedDrivePrivacyEnabled];
    v15 = [*(*(a1 + 32) + 248) lastSyncDownDate];
    v16 = [AppTelemetryTimeSeriesEvent newZoneResetEventWithZoneMangledID:v12 enhancedDrivePrivacyEnabled:v14 lastSyncDate:v15 error:v5 errorDescription:v27];

    v17 = [*(*(a1 + 32) + 8) analyticsReporter];
    [v17 postReportForDefaultSubCategoryWithCategory:8 telemetryTimeEvent:v16];

    v18 = [*(*(a1 + 32) + 8) serverTruthWorkloop];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke_2;
    v26[3] = &unk_2784FF450;
    v26[4] = *(a1 + 32);
    dispatch_async_with_logs_4(v18, v26);

    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(*(a1 + 32) + 272) updateForError:v5];
    objc_storeStrong((*(a1 + 32) + 288), a3);
    v19 = *(a1 + 32);
    v20 = *(v19 + 256);
    if (v5)
    {
      v21 = v20 | 2;
    }

    else
    {
      *(v19 + 256) = v20 | 0x20;
      v19 = *(a1 + 32);
      v21 = *(v19 + 256) & 0xFFFFFFEF;
    }

    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  [*(*(a1 + 32) + 280) updateForError:v5];
  objc_storeStrong((*(a1 + 32) + 296), a3);
  v19 = *(a1 + 32);
  v22 = *(v19 + 256);
  if (v5)
  {
    v21 = v22 | 0x13;
LABEL_10:
    *(v19 + 256) = v21;
    goto LABEL_11;
  }

  *(v19 + 256) = v22 | 0x10;
  if ([WeakRetained shouldPerformAnotherBatch])
  {
    v19 = *(a1 + 32);
    v21 = *(v19 + 256) | 1;
    goto LABEL_10;
  }

LABEL_11:
  *(*(a1 + 32) + 256) &= 0xFFFFFFF3;
  v23 = *(a1 + 32);
  if ((*(v23 + 256) & 3) == 0)
  {
    [*(v23 + 248) setNeedsSync:0];
    v24 = [*(*(a1 + 32) + 8) clientDB];
    [v24 forceBatchStart];

    v23 = *(a1 + 32);
  }

  [*(v23 + 40) signal];
  v25 = [*(*(a1 + 32) + 8) periodicSyncInvestigation];
  [v25 completeInvestigationIfNecessaryWithOldSyncState:v8 newSyncState:*(*(a1 + 32) + 256)];
}

uint64_t __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke_2(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[WARNING] Resetting side car zone%@", &v6, 0xCu);
  }

  [*(*(a1 + 32) + 8) enumerateSharedClientZones:&__block_literal_global_90_0];
  v4 = [*(*(a1 + 32) + 8) serverDB];
  [v4 execute:@"DELETE FROM side_car_lookahead"];

  return [*(*(a1 + 32) + 248) sideCarZoneWasReset];
}

uint64_t __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke_87(uint64_t a1, void *a2)
{
  v2 = [a2 serverZone];
  v3 = [v2 asSharedZone];
  [v3 sideCarZoneWasReset];

  return 1;
}

uint64_t __48__BRCContainerScheduler__syncScheduleForSideCar__block_invoke_2_94(uint64_t a1, uint64_t a2)
{
  objc_storeStrong((a2 + 264), *(a1 + 32));
  v3 = *(a1 + 32);

  return [v3 schedule];
}

- (void)_printSyncErrorIfNecessaryWithThrottle:(id)throttle context:(id)context error:(id)error now:(int64_t)now
{
  throttleCopy = throttle;
  contextCopy = context;
  errorCopy = error;
  [throttleCopy nextTry];
  v11 = v10;
  brc_interval_from_nsec();
  if (v11 > v12)
  {
    [contextCopy pushIndentation];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    if ([throttleCopy isSyncDown])
    {
      v14 = @"down";
    }

    else
    {
      v14 = @"up";
    }

    [throttleCopy nextTry];
    v16 = v15;
    brc_interval_from_nsec();
    errorCopy = [v13 initWithFormat:@" [sync-%@ throttled (next-try:in %.01fs)] error: %@", v14, v16 - v17, errorCopy];
    v19 = [BRCDumpContext highlightedString:errorCopy type:3 context:contextCopy];

    [contextCopy writeLineWithFormat:@"%@", v19];
    [contextCopy popIndentation];
  }
}

- (void)dumpToContext:(id)context includeAllItems:(BOOL)items db:(id)db
{
  contextCopy = context;
  dbCopy = db;
  v78 = [BRCUserDefaults defaultsForMangledID:0];
  v9 = +[BRCSystemResourcesManager manager];
  if ([v9 isNetworkReachable])
  {
    v77 = @"online";
  }

  else
  {
    v77 = [BRCDumpContext stringFromErrorString:@"offline" context:contextCopy];
  }

  if ([v9 isPowerOK])
  {
    v76 = @"healthy";
  }

  else
  {
    v76 = [BRCDumpContext stringFromErrorString:@"low" context:contextCopy];
  }

  volume = [(BRCAccountSession *)self->_session volume];
  v11 = [v9 hasEnoughSpaceForDevice:{objc_msgSend(volume, "deviceID")}];

  if (v11)
  {
    v12 = @"healthy";
  }

  else
  {
    v12 = [BRCDumpContext stringFromErrorString:@"low disk" context:contextCopy];
  }

  v13 = +[BRCContainerCellularSettings containerCellularSettings];
  isCellularEnabled = [v13 isCellularEnabled];

  if (isCellularEnabled)
  {
    v75 = @"enabled";
  }

  else
  {
    v75 = [BRCDumpContext stringFromErrorString:@"disabled" context:contextCopy];
  }

  v79 = [dbCopy fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) from server_items"];
  v74 = [dbCopy fetchObjectOfClass:objc_opt_class() sql:@"SELECT COUNT(*) from client_items"];
  v70 = [v74 unsignedLongLongValue] > 0x3E8 || objc_msgSend(v79, "unsignedLongLongValue") >= 0x3E9;
  volume2 = [(BRCAccountSession *)self->_session volume];
  fsTypeName = [volume2 fsTypeName];
  uppercaseString = [fsTypeName uppercaseString];
  v18 = [contextCopy highlightedString:uppercaseString type:7];

  v71 = v18;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@)", v12, v18];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  environmentName = selfCopy->_environmentName;
  if (environmentName)
  {
    v73 = environmentName;
  }

  else
  {
    v73 = [BRCDumpContext stringFromErrorString:@"no environment" context:contextCopy];
  }

  v22 = [(NSData *)selfCopy->_pushToken description];
  v23 = v22;
  v68 = v9;
  v69 = dbCopy;
  if (v22)
  {
    v72 = v22;
  }

  else
  {
    v72 = [BRCDumpContext stringFromErrorString:@"no token" context:contextCopy];
  }

  objc_sync_exit(selfCopy);
  fsUploader = [(BRCAccountSession *)self->_session fsUploader];
  v25 = [fsUploader quotaAvailableForOwner:*MEMORY[0x277CBBF28]];

  currentDevice = [(objc_class *)getUIDeviceClass() currentDevice];
  name = [currentDevice name];

  [contextCopy writeLineWithFormat:@"system"];
  [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  [contextCopy pushIndentation];
  [contextCopy writeLineWithFormat:@"+ network: %@", v77];
  [contextCopy writeLineWithFormat:@"+ disk:    %@", v19];
  [contextCopy writeLineWithFormat:@"+ power:   %@", v76];
  hasOptimizeStorageEnabled = [(BRCAccountSession *)self->_session hasOptimizeStorageEnabled];
  v29 = "disabled";
  if (hasOptimizeStorageEnabled)
  {
    v29 = "enabled";
  }

  [contextCopy writeLineWithFormat:@"+ optimize storage: %s", v29];
  v67 = name;
  fp_obfuscatedFilename = [name fp_obfuscatedFilename];
  [contextCopy writeLineWithFormat:@"+ device name:   %@", fp_obfuscatedFilename];

  [contextCopy writeLineWithFormat:@"+ cellular: %@", v75];
  [contextCopy popIndentation];
  [contextCopy writeLineWithFormat:&stru_2837504F0];
  [contextCopy writeLineWithFormat:@"scheduler"];
  [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
  [contextCopy pushIndentation];
  v31 = +[BRCDumpContext stringFromCount:context:](BRCDumpContext, "stringFromCount:context:", [v74 unsignedLongLongValue], contextCopy);
  v32 = +[BRCDumpContext stringFromCount:context:](BRCDumpContext, "stringFromCount:context:", [v79 unsignedLongLongValue], contextCopy);
  [contextCopy writeLineWithFormat:@"+ items:                 client:%@, server: %@", v31, v32];

  if (v70)
  {
    v33 = [BRCDumpContext highlightedString:@"output may be truncated" type:3 context:contextCopy];
    [contextCopy writeLineWithFormat:@"                         warning: %@", v33];
  }

  [contextCopy writeLineWithFormat:@"+ push environment:      %@", v73];
  [contextCopy writeLineWithFormat:@"+ push token:            %@", v72];
  v34 = [(BRCSyncBudgetThrottle *)selfCopy->_syncUpBudget debugDescriptionWithDefaults:v78];
  [contextCopy writeLineWithFormat:@"+ global sync up budget: %@", v34];

  v35 = [(BRCOperationSubclass *)selfCopy->_periodicSyncOperation descriptionWithContext:contextCopy];
  v36 = v35;
  v37 = @"idle";
  if (v35)
  {
    v37 = v35;
  }

  [contextCopy writeLineWithFormat:@"+ periodic sync:         %@", v37];

  if (v25)
  {
    v38 = +[BRCDumpContext stringFromByteCount:context:](BRCDumpContext, "stringFromByteCount:context:", [v25 longLongValue], contextCopy);
    fsUploader2 = [(BRCAccountSession *)self->_session fsUploader];
    isDefaultOwnerOutOfQuota = [fsUploader2 isDefaultOwnerOutOfQuota];
    v41 = @" [pending-quota]";
    if (!isDefaultOwnerOutOfQuota)
    {
      v41 = &stru_2837504F0;
    }

    [contextCopy writeLineWithFormat:@"+ available quota:       %@%@", v38, v41];
  }

  v42 = brc_current_date_nsec();
  if (selfCopy->_containerMetadataSyncState)
  {
    v43 = BRCPrettyPrintBitmap();
  }

  else
  {
    v43 = @"idle";
  }

  v44 = [(BRCOperationSubclass *)selfCopy->_containerMetadataSyncOperation descriptionWithContext:contextCopy];
  v45 = v44;
  if (v44)
  {
    v46 = v44;
  }

  else
  {
    v46 = &stru_2837504F0;
  }

  [contextCopy writeLineWithFormat:@"+ container-metadata:    %@ %@", v43, v46];

  [(BRCContainerScheduler *)selfCopy _printSyncErrorIfNecessaryWithThrottle:selfCopy->_containerMetadataSyncDownThrottle context:contextCopy error:selfCopy->_lastContainerMetadataSyncDownError now:v42];
  [(BRCContainerScheduler *)selfCopy _printSyncErrorIfNecessaryWithThrottle:selfCopy->_containerMetadataSyncUpThrottle context:contextCopy error:selfCopy->_lastContainerMetadataSyncUpError now:v42];
  if (selfCopy->_sharedDBSyncState)
  {
    v47 = BRCPrettyPrintBitmap();
  }

  else
  {
    v47 = @"idle";
  }

  v48 = [(BRCOperationSubclass *)selfCopy->_sharedDatabaseSyncOperation descriptionWithContext:contextCopy];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = &stru_2837504F0;
  }

  [contextCopy writeLineWithFormat:@"+ sharedb:               %@ %@", v47, v50];

  [(BRCContainerScheduler *)selfCopy _printSyncErrorIfNecessaryWithThrottle:selfCopy->_sharedDatabaseSyncDownThrottle context:contextCopy error:selfCopy->_lastSharedDatabaseSyncDownError now:v42];
  if (selfCopy->_zoneHealthSyncState)
  {
    v51 = BRCPrettyPrintBitmap();
  }

  else
  {
    v51 = @"idle";
  }

  v52 = [(BRCOperationSubclass *)selfCopy->_zoneHealthSyncOperation descriptionWithContext:contextCopy];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = &stru_2837504F0;
  }

  [contextCopy writeLineWithFormat:@"+ zone-health:           %@ %@", v51, v54];

  [(BRCContainerScheduler *)selfCopy _printSyncErrorIfNecessaryWithThrottle:selfCopy->_zoneHealthSyncDownThrottle context:contextCopy error:selfCopy->_lastZoneHealthSyncDownError now:v42];
  [(BRCContainerScheduler *)selfCopy _printSyncErrorIfNecessaryWithThrottle:selfCopy->_zoneHealthSyncUpThrottle context:contextCopy error:selfCopy->_lastZoneHealthSyncUpError now:v42];
  if (selfCopy->_sideCarSyncState)
  {
    v55 = BRCPrettyPrintBitmap();
  }

  else
  {
    v55 = @"idle";
  }

  v56 = [(BRCOperationSubclass *)selfCopy->_sideCarSyncOperation descriptionWithContext:contextCopy];
  v57 = v56;
  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = &stru_2837504F0;
  }

  [contextCopy writeLineWithFormat:@"+ side-car:              %@ %@", v55, v58];

  [(BRCContainerScheduler *)selfCopy _printSyncErrorIfNecessaryWithThrottle:selfCopy->_sideCarSyncDownThrottle context:contextCopy error:selfCopy->_lastSideCarSyncDownError now:v42];
  [(BRCContainerScheduler *)selfCopy _printSyncErrorIfNecessaryWithThrottle:selfCopy->_sideCarSyncUpThrottle context:contextCopy error:selfCopy->_lastSideCarSyncUpError now:v42];
  migrateZonePCSOperation = selfCopy->_migrateZonePCSOperation;
  if (migrateZonePCSOperation)
  {
    clientState = [(_BRCOperation *)migrateZonePCSOperation descriptionWithContext:contextCopy];
    [contextCopy writeLineWithFormat:@"+ pcs-migration:         %@", clientState];
  }

  else
  {
    clientState = [(BRCAccountSession *)self->_session clientState];
    pCSMigrationComplete = [clientState PCSMigrationComplete];
    v62 = @"unfinished";
    if (pCSMigrationComplete)
    {
      v62 = @"complete";
    }

    [contextCopy writeLineWithFormat:@"+ pcs-migration:         %@", v62];
  }

  v80 = 0;
  v63 = [(BRCAccountSession *)self->_session fetchAccountWaitOperationWithAccountReady:&v80];
  v64 = v63;
  if (v63)
  {
    if (([v63 isFinished] & 1) == 0)
    {
      v65 = [v64 descriptionWithContext:contextCopy];
LABEL_67:
      v66 = v65;
      [contextCopy writeLineWithFormat:@"+ account: %@", v65];
    }
  }

  else if ((v80 & 1) == 0)
  {
    v65 = [contextCopy highlightedString:@"not ready" type:3];
    goto LABEL_67;
  }

  [contextCopy popIndentation];
  [contextCopy writeLineWithFormat:&stru_2837504F0];
}

- (id)internalZoneSyncDownAnalyticsErrors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(BRCSyncOperationThrottle *)self->_sideCarSyncDownThrottle delay];
  v5 = v4;
  v6 = +[BRCUserDefaults defaultsForSideCar];
  [v6 syncDownDelayForFailure];
  v8 = v7;

  if (v5 <= v8)
  {
    sideCarMangledID = 0;
  }

  else
  {
    v9 = [(NSError *)self->_lastSideCarSyncDownError brc_telemetryReportableErrorWithRecordName:0];
    sideCarMangledID = [MEMORY[0x277CFAE60] sideCarMangledID];
    session = [(BRCContainerScheduler *)self session];
    v12 = [session clientZoneByMangledID:sideCarMangledID];
    enhancedDrivePrivacyEnabled = [v12 enhancedDrivePrivacyEnabled];

    v14 = [[BRCErrorGrouping alloc] initWithError:v9 pcsChained:0 enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled];
    [v3 setObject:v14 forKeyedSubscript:sideCarMangledID];
  }

  [(BRCSyncOperationThrottle *)self->_zoneHealthSyncDownThrottle delay];
  v16 = v15;
  zoneHealthMangledID = [MEMORY[0x277CFAE60] zoneHealthMangledID];
  v18 = [BRCUserDefaults defaultsForMangledID:zoneHealthMangledID];
  [v18 syncDownDelayForFailure];
  v20 = v19;

  if (v16 > v20)
  {
    v21 = [(NSError *)self->_lastZoneHealthSyncDownError brc_telemetryReportableErrorWithRecordName:0];
    zoneHealthMangledID2 = [MEMORY[0x277CFAE60] zoneHealthMangledID];

    session2 = [(BRCContainerScheduler *)self session];
    v24 = [session2 clientZoneByMangledID:zoneHealthMangledID2];
    enhancedDrivePrivacyEnabled2 = [v24 enhancedDrivePrivacyEnabled];

    v26 = [[BRCErrorGrouping alloc] initWithError:v21 pcsChained:0 enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled2];
    zoneHealthMangledID3 = [MEMORY[0x277CFAE60] zoneHealthMangledID];
    [v3 setObject:v26 forKeyedSubscript:zoneHealthMangledID3];

    sideCarMangledID = zoneHealthMangledID2;
  }

  [(BRCSyncOperationThrottle *)self->_containerMetadataSyncDownThrottle delay];
  v29 = v28;
  v30 = +[BRCUserDefaults defaultsForMetadataContainer];
  [v30 syncDownDelayForFailure];
  v32 = v31;

  if (v29 > v32)
  {
    v33 = [(NSError *)self->_lastContainerMetadataSyncDownError brc_telemetryReportableErrorWithRecordName:0];
    containerMetadataMangledID = [MEMORY[0x277CFAE60] containerMetadataMangledID];

    session3 = [(BRCContainerScheduler *)self session];
    v36 = [session3 clientZoneByMangledID:containerMetadataMangledID];
    enhancedDrivePrivacyEnabled3 = [v36 enhancedDrivePrivacyEnabled];

    v38 = [[BRCErrorGrouping alloc] initWithError:v33 pcsChained:0 enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled3];
    [v3 setObject:v38 forKeyedSubscript:containerMetadataMangledID];

    sideCarMangledID = containerMetadataMangledID;
  }

  [(BRCSyncOperationThrottle *)self->_sharedDatabaseSyncDownThrottle delay];
  v40 = v39;
  v41 = +[BRCUserDefaults defaultsForSharedZone];
  [v41 syncDownDelayForFailure];
  v43 = v42;

  if (v40 > v43)
  {
    v44 = [(NSError *)self->_lastSharedDatabaseSyncDownError brc_telemetryReportableErrorWithRecordName:0];
    mEMORY[0x277CFAE60] = [MEMORY[0x277CFAE60] sharedDatabaseMangledID];

    session4 = [(BRCContainerScheduler *)self session];
    v47 = [session4 clientZoneByMangledID:mEMORY[0x277CFAE60]];
    enhancedDrivePrivacyEnabled4 = [v47 enhancedDrivePrivacyEnabled];

    v49 = [[BRCErrorGrouping alloc] initWithError:v44 pcsChained:0 enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled4];
    [v3 setObject:v49 forKeyedSubscript:mEMORY[0x277CFAE60]];

    sideCarMangledID = mEMORY[0x277CFAE60];
  }

  return v3;
}

- (id)internalZoneSyncUpAnalyticsErrors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(BRCSyncOperationThrottle *)self->_sideCarSyncUpThrottle delay];
  v5 = v4;
  v6 = +[BRCUserDefaults defaultsForSideCar];
  [v6 syncUpDelayForFailure];
  v8 = v7;

  if (v5 <= v8)
  {
    sideCarMangledID = 0;
  }

  else
  {
    v9 = [(NSError *)self->_lastSideCarSyncUpError brc_telemetryReportableErrorWithRecordName:0];
    sideCarMangledID = [MEMORY[0x277CFAE60] sideCarMangledID];
    session = [(BRCContainerScheduler *)self session];
    v12 = [session clientZoneByMangledID:sideCarMangledID];
    enhancedDrivePrivacyEnabled = [v12 enhancedDrivePrivacyEnabled];

    v14 = [[BRCErrorGrouping alloc] initWithError:v9 pcsChained:0 enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled];
    [v3 setObject:v14 forKeyedSubscript:sideCarMangledID];
  }

  [(BRCSyncOperationThrottle *)self->_zoneHealthSyncUpThrottle delay];
  v16 = v15;
  zoneHealthMangledID = [MEMORY[0x277CFAE60] zoneHealthMangledID];
  v18 = [BRCUserDefaults defaultsForMangledID:zoneHealthMangledID];
  [v18 syncUpDelayForFailure];
  v20 = v19;

  if (v16 > v20)
  {
    v21 = [(NSError *)self->_lastZoneHealthSyncUpError brc_telemetryReportableErrorWithRecordName:0];
    zoneHealthMangledID2 = [MEMORY[0x277CFAE60] zoneHealthMangledID];

    session2 = [(BRCContainerScheduler *)self session];
    v24 = [session2 clientZoneByMangledID:zoneHealthMangledID2];
    enhancedDrivePrivacyEnabled2 = [v24 enhancedDrivePrivacyEnabled];

    v26 = [[BRCErrorGrouping alloc] initWithError:v21 pcsChained:0 enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled2];
    [v3 setObject:v26 forKeyedSubscript:zoneHealthMangledID2];

    sideCarMangledID = zoneHealthMangledID2;
  }

  [(BRCSyncOperationThrottle *)self->_containerMetadataSyncUpThrottle delay];
  v28 = v27;
  v29 = +[BRCUserDefaults defaultsForMetadataContainer];
  [v29 syncUpDelayForFailure];
  v31 = v30;

  if (v28 > v31)
  {
    v32 = [(NSError *)self->_lastContainerMetadataSyncUpError brc_telemetryReportableErrorWithRecordName:0];
    containerMetadataMangledID = [MEMORY[0x277CFAE60] containerMetadataMangledID];

    session3 = [(BRCContainerScheduler *)self session];
    v35 = [session3 clientZoneByMangledID:containerMetadataMangledID];
    enhancedDrivePrivacyEnabled3 = [v35 enhancedDrivePrivacyEnabled];

    v37 = [[BRCErrorGrouping alloc] initWithError:v32 pcsChained:0 enhancedDrivePrivacyEnabled:enhancedDrivePrivacyEnabled3];
    [v3 setObject:v37 forKeyedSubscript:containerMetadataMangledID];

    sideCarMangledID = containerMetadataMangledID;
  }

  return v3;
}

- (void)receivedUpdatedSideCarServerChangeToken:(id)token requestID:(unint64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [tokenCopy descriptionWithContext:0];
    v10 = 138412802;
    v11 = v9;
    v12 = 2048;
    dCopy = d;
    v14 = 2112;
    v15 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated side car sync token:%@ requestID:%lld%@", &v10, 0x20u);
  }

  [(BRCSideCarSyncPersistedState *)self->_sideCarSyncPersistedState updateWithServerChangeToken:tokenCopy requestID:d];
}

- (void)_scheduleCrossZoneMovePCSPrep
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx starting cross zone move migration PCS prep%@");
}

void __54__BRCContainerScheduler__scheduleCrossZoneMovePCSPrep__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 368) workloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BRCContainerScheduler__scheduleCrossZoneMovePCSPrep__block_invoke_2;
  block[3] = &unk_2784FF450;
  block[4] = *(a1 + 32);
  dispatch_async_and_wait(v2, block);
}

void __54__BRCContainerScheduler__scheduleCrossZoneMovePCSPrep__block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 328) resume];
  v2 = *(a1 + 32);
  v3 = *(v2 + 320);
  *(v2 + 320) = 0;
}

- (void)syncContextDidBecomeForeground:(id)foreground
{
  v39 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  personaIdentifier = [(BRCAccountSession *)self->_session personaIdentifier];
  if ([personaIdentifier isEqualToString:@"__defaultPersonaID__"])
  {
  }

  else
  {
    personaIdentifier2 = [(BRCAccountSession *)self->_session personaIdentifier];

    if (personaIdentifier2)
    {
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (syncContextDidBecomeForeground____personaOnceToken != -1)
  {
    [BRCContainerScheduler syncContextDidBecomeForeground:];
  }

  personaIdentifier2 = syncContextDidBecomeForeground____personalPersona;
  v6 = 1;
LABEL_8:
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];

  v32 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v10 = userPersonaUniqueString;
  if (userPersonaUniqueString == personaIdentifier2 || ([userPersonaUniqueString isEqualToString:personaIdentifier2] & 1) != 0)
  {
    v11 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v31 = 0;
    v20 = [currentPersona copyCurrentPersonaContextWithError:&v31];
    v21 = v31;
    v22 = v32;
    v32 = v20;

    if (v21)
    {
      v23 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, 0x90u))
      {
        [BRCContainerScheduler syncContextDidBecomeForeground:];
      }
    }

    v11 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier2];

    if (v11)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, 0x90u))
      {
        personaIdentifier3 = [(BRCAccountSession *)self->_session personaIdentifier];
        *buf = 138412802;
        v34 = personaIdentifier3;
        v35 = 2112;
        v36 = v11;
        v37 = 2112;
        v38 = v25;
        _os_log_error_impl(&dword_223E7A000, v26, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_34:
    }
  }

  else
  {
    if (v6 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v25 = brc_bread_crumbs();
      v26 = brc_default_log();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v11 = 0;
      goto LABEL_34;
    }

    v28 = brc_bread_crumbs();
    v29 = brc_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  object = [foregroundCopy object];
  if (([object isShared] & 1) == 0)
  {
    contextIdentifier = [object contextIdentifier];
    v14 = [(BRCAccountSession *)self->_session appLibraryByID:contextIdentifier];
    defaultClientZone = [v14 defaultClientZone];
    isSyncBlockedBecauseAppNotInstalled = [defaultClientZone isSyncBlockedBecauseAppNotInstalled];

    if (isSyncBlockedBecauseAppNotInstalled)
    {
      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v17;
        _os_log_impl(&dword_223E7A000, v18, OS_LOG_TYPE_DEFAULT, "[WARNING] Container became foreground that we didn't think was installed, forcing an apps list refresh%@", buf, 0xCu);
      }

      v19 = +[BRCCloudDocsAppsMonitor cloudDocsAppsMonitor];
      [v19 forceRefetchAppList];
    }
  }

  [(BRCContainerScheduler *)self _scheduleUpdatePushTopicsRegistration];

  _BRRestorePersona();
}

void __56__BRCContainerScheduler_syncContextDidBecomeForeground___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = syncContextDidBecomeForeground____personalPersona;
  syncContextDidBecomeForeground____personalPersona = v0;
}

- (void)syncContextDidBecomeBackground:(id)background
{
  v31 = *MEMORY[0x277D85DE8];
  backgroundCopy = background;
  personaIdentifier = [(BRCAccountSession *)self->_session personaIdentifier];
  if ([personaIdentifier isEqualToString:@"__defaultPersonaID__"])
  {
  }

  else
  {
    personaIdentifier2 = [(BRCAccountSession *)self->_session personaIdentifier];

    if (personaIdentifier2)
    {
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (syncContextDidBecomeBackground____personaOnceToken != -1)
  {
    [BRCContainerScheduler syncContextDidBecomeBackground:];
  }

  personaIdentifier2 = syncContextDidBecomeBackground____personalPersona;
  v7 = 1;
LABEL_8:
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  currentPersona = [mEMORY[0x277D77BF8] currentPersona];

  v24 = 0;
  userPersonaUniqueString = [currentPersona userPersonaUniqueString];
  v11 = userPersonaUniqueString;
  if (userPersonaUniqueString == personaIdentifier2 || ([userPersonaUniqueString isEqualToString:personaIdentifier2] & 1) != 0)
  {
    v12 = 0;
    goto LABEL_11;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v23 = 0;
    v13 = [currentPersona copyCurrentPersonaContextWithError:&v23];
    v14 = v23;
    v15 = v24;
    v24 = v13;

    if (v14)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, 0x90u))
      {
        [BRCContainerScheduler syncContextDidBecomeForeground:];
      }
    }

    v12 = [currentPersona br_generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier2];

    if (v12)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, 0x90u))
      {
        personaIdentifier3 = [(BRCAccountSession *)self->_session personaIdentifier];
        *buf = 138412802;
        v26 = personaIdentifier3;
        v27 = 2112;
        v28 = v12;
        v29 = 2112;
        v30 = v18;
        _os_log_error_impl(&dword_223E7A000, v19, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_28:
    }
  }

  else
  {
    if (v7 && ([currentPersona isDataSeparatedPersona] & 1) == 0)
    {
      v18 = brc_bread_crumbs();
      v19 = brc_default_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v12 = 0;
      goto LABEL_28;
    }

    v21 = brc_bread_crumbs();
    v22 = brc_default_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_11:
  [(BRCContainerScheduler *)self _scheduleUpdatePushTopicsRegistration];

  _BRRestorePersona();
}

void __56__BRCContainerScheduler_syncContextDidBecomeBackground___block_invoke()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = syncContextDidBecomeBackground____personalPersona;
  syncContextDidBecomeBackground____personalPersona = v0;
}

- (void)_scheduleUpdatePushTopicsRegistration
{
  if (!self->_isInSyncBubble)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [BRCContainerScheduler _scheduleUpdatePushTopicsRegistration];
    }

    [(BRCFairSource *)self->_pushSource signal];
  }
}

- (void)_updatePushTopicsRegistration
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] foreground topics: %@%@");
}

uint64_t __54__BRCContainerScheduler__updatePushTopicsRegistration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 defaultClientZone];
  if (([v4 isSyncBlockedBecauseAppNotInstalled] & 1) == 0 && ((objc_msgSend(v3, "isCloudDocsAppLibrary") & 1) != 0 || !objc_msgSend(v3, "wasMovedToCloudDocs") || objc_msgSend(v3, "isAppInstalled")))
  {
    v5 = *(a1 + 32);
    v6 = [v3 appLibraryID];
    v7 = [v5 _pushTopicForIdentifier:v6];

    v8 = *(a1 + 32);
    v9 = [v4 zoneName];
    v10 = [v8 _pushTopicForIdentifier:v9];

    if ([v3 isForeground])
    {
      v11 = 40;
    }

    else
    {
      v11 = 48;
    }

    [*(a1 + v11) addObject:v7];
    if ([v4 isForeground])
    {
      v12 = 40;
    }

    else
    {
      v12 = 48;
    }

    [*(a1 + v12) addObject:v10];
  }

  return 1;
}

uint64_t __54__BRCContainerScheduler__updatePushTopicsRegistration__block_invoke_262(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 40) allObjects];
  v4 = [*(a1 + 48) allObjects];
  [v2 setEnabledTopics:v3 ignoredTopics:MEMORY[0x277CBEBF8] opportunisticTopics:v4];

  v5 = *(*(a1 + 32) + 80);

  return [v5 setDelegate:?];
}

- (void)connection:(id)connection didReceiveToken:(id)token forTopic:(id)topic identifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  topicCopy = topic;
  identifierCopy = identifier;
  v12 = brc_bread_crumbs();
  v13 = brc_default_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    environmentName = self->_environmentName;
    v15 = 138413314;
    v16 = environmentName;
    v17 = 2112;
    v18 = tokenCopy;
    v19 = 2112;
    v20 = topicCopy;
    v21 = 2112;
    v22 = identifierCopy;
    v23 = 2112;
    v24 = v12;
    _os_log_debug_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEBUG, "[DEBUG] received %@ push token %@ for %@:%@%@", &v15, 0x34u);
  }
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [BRCContainerScheduler connection:didReceivePublicToken:];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  pushToken = selfCopy->_pushToken;
  selfCopy->_pushToken = tokenCopy;

  objc_sync_exit(selfCopy);
}

- (void)_connection:(id)_connection didReceiveIncomingMessage:(id)message
{
  v108 = *MEMORY[0x277D85DE8];
  _connectionCopy = _connection;
  messageCopy = message;
  selfCopy = self;
  if (self->_isInSyncBubble)
  {
    [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
  }

  v82 = os_transaction_create();
  session = self->_session;
  v85 = messageCopy;
  v83 = session;
  v8 = [@"com.apple.icloud-container." stringByAppendingString:*MEMORY[0x277CFACF8]];
  topic = [v85 topic];
  LOBYTE(session) = [topic hasPrefix:v8];

  if (session)
  {
    userInfo = [v85 userInfo];
    v11 = [userInfo objectForKeyedSubscript:@"ck"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = brc_bread_crumbs();
      v30 = brc_default_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_35;
    }

    v12 = v11;
    v13 = [v12 objectForKeyedSubscript:@"met"];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = [v12 objectForKeyedSubscript:@"fet"];
    }

    v11 = v15;

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v30 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        v79 = [v12 objectForKeyedSubscript:@"met"];
        v80 = @"fet";
        *buf = 138412802;
        if (v79)
        {
          v80 = @"met";
        }

        *&buf[4] = v80;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        *&buf[22] = 2112;
        v100 = v30;
        _os_log_fault_impl(&dword_223E7A000, v23, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid push payload[%@] %@%@", buf, 0x20u);
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_34;
    }

    v19 = [v11 objectForKeyedSubscript:@"zid"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = brc_bread_crumbs();
      v22 = brc_default_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      goto LABEL_33;
    }

    v20 = [v11 objectForKeyedSubscript:@"dbs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      intValue = [v20 intValue];
      switch(intValue)
      {
        case 1:
          v22 = 0;
          v17 = @"private";
          break;
        case 3:
          v25 = [v11 objectForKeyedSubscript:@"zoid"];

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v22 = brc_bread_crumbs();
            v69 = brc_default_log();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
            {
              [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
            }

            v16 = 0;
            v18 = 0;
            v23 = v19;
            v19 = v25;
            v17 = @"shared";
            goto LABEL_33;
          }

          v22 = v25;
          v17 = @"shared";
          v20 = v22;
          break;
        case 2:
          v22 = 0;
          v17 = @"public";
          break;
        default:
          v17 = [v20 description];
          v26 = v17;
          v22 = 0;
          break;
      }

      cachedCurrentUserRecordName = [(BRCAccountSession *)v83 cachedCurrentUserRecordName];
      if (cachedCurrentUserRecordName && [v22 isEqualToString:cachedCurrentUserRecordName])
      {
        v28 = *MEMORY[0x277CBBF28];

        v22 = v28;
      }

      v16 = [objc_alloc(MEMORY[0x277CFAE60]) initWithZoneName:v19 ownerName:v22];
      v29 = v16;
      v18 = v11;
    }

    else
    {
      v22 = brc_bread_crumbs();
      v24 = brc_default_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [BRCContainerScheduler _connection:didReceiveIncomingMessage:];
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
    }

    v23 = v19;
    v19 = v20;
LABEL_33:

    v30 = v11;
    v11 = v19;
LABEL_34:

LABEL_35:
    goto LABEL_36;
  }

  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    topic2 = [v85 topic];
    v62 = topic2;
    uTF8String = [topic2 UTF8String];
    v64 = v8;
    *buf = 136315650;
    *&buf[4] = uTF8String;
    *&buf[12] = 2080;
    *&buf[14] = [v8 UTF8String];
    *&buf[22] = 2112;
    v100 = v11;
    _os_log_fault_impl(&dword_223E7A000, v12, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: invalid push topic '%s' (expected prefix '%s')%@", buf, 0x20u);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
LABEL_36:

  v31 = v16;
  v32 = v17;
  if (v18)
  {
    memset(v92, 0, sizeof(v92));
    __brc_create_section(0, "[BRCContainerScheduler _connection:didReceiveIncomingMessage:]", 1911, 0, v92);
    v33 = brc_bread_crumbs();
    v34 = brc_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v54 = v92[0];
      topic3 = [v85 topic];
      publicToken = [_connectionCopy publicToken];
      priority = [v85 priority];
      v58 = +[BRCSystemResourcesManager manager];
      isSystemInDarkWake = [v58 isSystemInDarkWake];
      v60 = "NO";
      *buf = 134219778;
      *&buf[4] = v54;
      *&buf[12] = 2112;
      if (isSystemInDarkWake)
      {
        v60 = "YES";
      }

      *&buf[14] = v32;
      *&buf[22] = 2112;
      v100 = topic3;
      *v101 = 2112;
      *&v101[2] = v18;
      *&v101[10] = 2112;
      *&v101[12] = publicToken;
      v102 = 2048;
      v103 = priority;
      v104 = 2080;
      v105 = v60;
      v106 = 2112;
      v107 = v33;
      _os_log_debug_impl(&dword_223E7A000, v34, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx received a push in the %@ database for topic:'%@' payload:%@ token:%@ priority:%ld DarkWake:%s%@", buf, 0x52u);
    }

    kdebug_trace();
    br_syncDownPushTriggered = [MEMORY[0x277CBC4F8] br_syncDownPushTriggered];
    appLibraryOrZoneName = [v31 appLibraryOrZoneName];
    v37 = [appLibraryOrZoneName isEqualToString:*MEMORY[0x277CFAD58]];

    if (v37)
    {
      v38 = brc_bread_crumbs();
      v39 = brc_default_log();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v38;
        _os_log_impl(&dword_223E7A000, v39, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for the container-metadata zone%@", buf, 0xCu);
      }

      [(BRCContainerScheduler *)selfCopy scheduleSyncDownForContainerMetadataWithGroup:br_syncDownPushTriggered];
      goto LABEL_75;
    }

    appLibraryOrZoneName2 = [v31 appLibraryOrZoneName];
    v43 = [appLibraryOrZoneName2 isEqualToString:*MEMORY[0x277CFADD0]];

    if (v43)
    {
      v44 = brc_bread_crumbs();
      v45 = brc_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v44;
        _os_log_impl(&dword_223E7A000, v45, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for the zone-health zone%@", buf, 0xCu);
      }

      [(BRCContainerScheduler *)selfCopy scheduleSyncDownForZoneHealthWithGroup:br_syncDownPushTriggered];
      goto LABEL_75;
    }

    appLibraryOrZoneName3 = [v31 appLibraryOrZoneName];
    v47 = [appLibraryOrZoneName3 isEqualToString:*MEMORY[0x277CFB070]];

    if (v47)
    {
      v48 = brc_bread_crumbs();
      v49 = brc_default_log();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v48;
        _os_log_impl(&dword_223E7A000, v49, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for the side-car zone%@", buf, 0xCu);
      }

      [(BRCContainerScheduler *)selfCopy scheduleSyncDownForSideCarWithGroup:br_syncDownPushTriggered];
      goto LABEL_75;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v100 = __Block_byref_object_copy__18;
    *v101 = __Block_byref_object_dispose__18;
    *&v101[8] = [(BRCAccountSession *)selfCopy->_session clientZoneByMangledID:v31];
    v50 = [(BRCAccountSession *)selfCopy->_session appLibraryByMangledID:v31];
    v51 = v50;
    if (*(*&buf[8] + 40))
    {
      v52 = brc_bread_crumbs();
      v53 = brc_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 138412546;
        v94 = v31;
        v95 = 2112;
        v96 = v52;
        _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for client zone %@%@", v93, 0x16u);
      }
    }

    else if (v50)
    {
      defaultClientZone = [v50 defaultClientZone];
      v66 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = defaultClientZone;

      v52 = brc_bread_crumbs();
      v53 = brc_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        defaultClientZone2 = [v51 defaultClientZone];
        mangledID = [defaultClientZone2 mangledID];
        *v93 = 138412802;
        v94 = v31;
        v95 = 2112;
        v96 = mangledID;
        v97 = 2112;
        v98 = v52;
        _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[NOTICE] received a push for app library %@ -> zone %@%@", v93, 0x20u);
      }
    }

    else
    {
      if ([v31 isShared])
      {
        v70 = brc_bread_crumbs();
        v71 = brc_default_log();
        if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
        {
          *v93 = 138412546;
          v94 = v31;
          v95 = 2112;
          v96 = v70;
          _os_log_impl(&dword_223E7A000, v71, OS_LOG_TYPE_DEFAULT, "[NOTICE] receiving a push for an unknown ID shared zone %@, creating the zone%@", v93, 0x16u);
        }

        v72 = [(BRCAccountSession *)selfCopy->_session getOrCreateSharedZones:v31];
        v52 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v72;
        goto LABEL_74;
      }

      v73 = selfCopy->_session;
      v74 = objc_alloc(MEMORY[0x277CFAE60]);
      v75 = [v74 initWithZoneName:*MEMORY[0x277CFAD68] ownerName:0];
      v76 = [(BRCAccountSession *)v73 clientZoneByMangledID:v75];
      v77 = *(*&buf[8] + 40);
      *(*&buf[8] + 40) = v76;

      v52 = brc_bread_crumbs();
      v53 = brc_default_log();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 138412546;
        v94 = v31;
        v95 = 2112;
        v96 = v52;
        _os_log_impl(&dword_223E7A000, v53, OS_LOG_TYPE_DEFAULT, "[NOTICE] receiving a push for an unknown ID %@ -> com.apple.CloudDocs%@", v93, 0x16u);
      }
    }

LABEL_74:
    workloop = [(BRCDeadlineScheduler *)selfCopy->_syncScheduler workloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __63__BRCContainerScheduler__connection_didReceiveIncomingMessage___block_invoke;
    block[3] = &unk_2785025F8;
    v91 = buf;
    v87 = br_syncDownPushTriggered;
    v88 = v31;
    v89 = selfCopy;
    v90 = v82;
    dispatch_async(workloop, block);

    _Block_object_dispose(buf, 8);
LABEL_75:

    __brc_leave_section(v92);
    goto LABEL_76;
  }

  v40 = brc_bread_crumbs();
  v41 = brc_default_log();
  if (os_log_type_enabled(v41, 0x90u))
  {
    [(BRCContainerScheduler *)v85 _connection:v40 didReceiveIncomingMessage:v41];
  }

LABEL_76:
}

void __63__BRCContainerScheduler__connection_didReceiveIncomingMessage___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = a1 + 64;
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    memset(v15, 0, sizeof(v15));
    __brc_create_section(0, "[BRCContainerScheduler _connection:didReceiveIncomingMessage:]_block_invoke", 1957, 0, v15);
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(*(*v2 + 8) + 40);
      *buf = 134218498;
      v17 = v15[0];
      v18 = 2112;
      v19 = v14;
      v20 = 2112;
      v21 = v3;
      _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx scheduling sync down for client zone %@ because of a push%@", buf, 0x20u);
    }

    [*(*(*v2 + 8) + 40) clearStateBits:0x200000];
    [*(*(*(a1 + 64) + 8) + 40) scheduleSyncDownWithGroup:*(a1 + 32)];
    __brc_leave_section(v15);
  }

  else
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[WARNING] no zone found, dropping the push%@", buf, 0xCu);
    }
  }

  if ([*(a1 + 40) isShared])
  {
    [*(a1 + 48) scheduleSyncDownForSharedDatabaseImmediately:*(*(*(a1 + 64) + 8) + 40) == 0];
  }

  if ([*(*(*v2 + 8) + 40) isSharedZone])
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = [*(a1 + 40) appLibraryOrZoneName];
    v9 = [v7 privateClientZoneByID:v8];
    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    if (*(*(*(a1 + 64) + 8) + 40))
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        __63__BRCContainerScheduler__connection_didReceiveIncomingMessage___block_invoke_cold_1();
      }

      [*(*(*(a1 + 64) + 8) + 40) scheduleSyncDownWithGroup:*(a1 + 32)];
    }
  }
}

- (void)connection:(id)connection didReceiveIncomingMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  personaIdentifier = [(BRCAccountSession *)self->_session personaIdentifier];
  v11 = messageCopy;
  v9 = messageCopy;
  v10 = connectionCopy;
  BRPerformWithPersonaAndError();
}

void __62__BRCContainerScheduler_connection_didReceiveIncomingMessage___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __62__BRCContainerScheduler_connection_didReceiveIncomingMessage___block_invoke_cold_1();
    }
  }

  else
  {
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[4];

    [v7 _connection:v5 didReceiveIncomingMessage:v6];
  }
}

- (void)notifyAfterNextZoneHealthSyncDown:(id)down
{
  downCopy = down;
  workloop = [(BRCDeadlineScheduler *)self->_syncScheduler workloop];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__BRCContainerScheduler_notifyAfterNextZoneHealthSyncDown___block_invoke;
  v7[3] = &unk_278500048;
  v7[4] = self;
  v8 = downCopy;
  v6 = downCopy;
  dispatch_async_and_wait(workloop, v7);
}

void __59__BRCContainerScheduler_notifyAfterNextZoneHealthSyncDown___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 352);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 352);
    *(v4 + 352) = v3;

    v2 = *(*(a1 + 32) + 352);
  }

  v6 = MEMORY[0x22AA4A310](*(a1 + 40));
  [v2 addObject:v6];
}

- (void)finishedHealthSyncDownCallback:(unint64_t)callback error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    callbackCopy = callback;
    v13 = 2112;
    v14 = errorCopy;
    v15 = 2112;
    v16 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Completed zone health sync requestID:%lld error:%@%@", buf, 0x20u);
  }

  if (!errorCopy)
  {
    session = self->_session;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __62__BRCContainerScheduler_finishedHealthSyncDownCallback_error___block_invoke;
    v10[3] = &__block_descriptor_40_e30_B16__0__BRCPrivateClientZone_8l;
    v10[4] = callback;
    [(BRCAccountSession *)session enumeratePrivateClientZones:v10];
    self->_zoneHealthSyncState &= ~2u;
  }
}

- (void)receivedUpdatedZoneHealthCallback:(id)callback requestID:(unint64_t)d
{
  v16 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [callbackCopy descriptionWithContext:0];
    v10 = 138412802;
    v11 = v9;
    v12 = 2048;
    dCopy = d;
    v14 = 2112;
    v15 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] Updated zone health sync token:%@ requestID:%lld%@", &v10, 0x20u);
  }

  [(BRCZoneHealthSyncPersistedState *)self->_zoneHealthPersistedState updateWithServerChangeToken:callbackCopy requestID:d];
}

void __61__BRCContainerScheduler_initWithAccountSession_pushWorkloop___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Sync: no global budget anymore: %@%@");
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx cancelling containerMetadataSyncSource...%@");
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx cancelling sharedDatabaseSyncSource%@");
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx cancelling zoneHealthSyncSource%@");
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx cancelling migrateZonePCSSource%@");
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx cancelling sideCarSyncSource%@");
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_38_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx cancelling periodicSyncOperation%@");
}

void __40__BRCContainerScheduler_closeContainers__block_invoke_39_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] unscheduling client zone %@%@");
}

- (void)schedulePeriodicSyncInGroup:completion:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx Considering containers needing forced sync down%@");
}

void __64__BRCContainerScheduler_schedulePeriodicSyncInGroup_completion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
}

- (void)didInitialSyncDownForClientZone:.cold.1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] ┏%llx just synced down the default container%@");
}

- (void)syncContextDidBecomeForeground:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, 0x90u, v2, v3, 0x16u);
}

- (void)connection:didReceivePublicToken:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] received public push token %@%@");
}

- (void)_connection:didReceiveIncomingMessage:.cold.1()
{
  v0 = brc_bread_crumbs();
  v1 = brc_default_log();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_0(&dword_223E7A000, v2, v3, "[CRIT] Assertion failed: !_isInSyncBubble%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

- (void)_connection:didReceiveIncomingMessage:.cold.2()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1(v0, v1, v2, v3, v4);
}

- (void)_connection:didReceiveIncomingMessage:.cold.3()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1(v0, v1, v2, v3, v4);
}

- (void)_connection:didReceiveIncomingMessage:.cold.4()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1(v0, v1, v2, v3, v4);
}

- (void)_connection:didReceiveIncomingMessage:.cold.5()
{
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1(v0, v1, v2, v3, v4);
}

- (void)_connection:(NSObject *)a3 didReceiveIncomingMessage:.cold.6(void *a1, uint64_t a2, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = [a1 topic];
  v7 = [a1 userInfo];
  v8 = 138412802;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  v12 = 2112;
  v13 = a2;
  _os_log_error_impl(&dword_223E7A000, a3, 0x90u, "[ERROR] unable to parse push for topic:'%@' payload:%@%@", &v8, 0x20u);
}

void __63__BRCContainerScheduler__connection_didReceiveIncomingMessage___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_21(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Also scheduling a sync down on the private zone %@%@");
}

@end