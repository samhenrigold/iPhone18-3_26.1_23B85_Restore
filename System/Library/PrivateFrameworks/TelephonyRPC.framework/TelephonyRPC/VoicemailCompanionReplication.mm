@interface VoicemailCompanionReplication
- (BOOL)_isSyncing;
- (BOOL)service:(id)service startSession:(id)session error:(id *)error;
- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error;
- (NSMutableArray)remoteVoicemails;
- (VoicemailCompanionReplication)init;
- (id)changesBetween:(id)between and:(id)and;
- (id)voicemails;
- (int64_t)currentMigrationVersion;
- (int64_t)indexOfVoicemail:(id)voicemail inArray:(id)array;
- (void)_handleVoicemailsChangedNotification:(id)notification;
- (void)_retrySyncSession:(id)session;
- (void)_syncRestrictionUpdated;
- (void)dealloc;
- (void)handleSIGTERM;
- (void)initialSyncStateObserver:(id)observer syncDidCompleteForPairingIdentifier:(id)identifier;
- (void)remoteVoicemails;
- (void)removeFromRemoteVoicemails:(id)voicemails;
- (void)service:(id)service encounteredError:(id)error context:(id)context;
- (void)service:(id)service sessionEnded:(id)ended error:(id)error;
- (void)serviceDidPairDevice:(id)device;
- (void)setCurrentMigrationVersion:(int64_t)version;
- (void)setRemoteVoicemails:(id)voicemails;
- (void)setSyncing:(BOOL)syncing;
- (void)sync:(BOOL)sync force:(BOOL)force;
- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session;
- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session;
- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
- (void)syncSession:(id)session didEndWithError:(id)error;
- (void)syncSessionManager:(id)manager reportProgress:(double)progress;
- (void)syncSessionManagerDidCompleteSending:(id)sending;
@end

@implementation VoicemailCompanionReplication

- (VoicemailCompanionReplication)init
{
  v47[1] = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v43 = "[VoicemailCompanionReplication init]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v41.receiver = self;
  v41.super_class = VoicemailCompanionReplication;
  v4 = [(VoicemailCompanionReplication *)&v41 init];
  if (v4)
  {
    v5 = +[_TtC12TelephonyRPC21VoicemailManager_ObjC shared];
    voicemailManager = v4->_voicemailManager;
    v4->_voicemailManager = v5;

    v7 = objc_alloc_init(MEMORY[0x277CCA928]);
    voicemailsLoadedCondition = v4->_voicemailsLoadedCondition;
    v4->_voicemailsLoadedCondition = v7;

    v9 = objc_alloc_init(MEMORY[0x277CCA928]);
    notSyncingCondition = v4->_notSyncingCondition;
    v4->_notSyncingCondition = v9;

    v11 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:@"com.apple.mobilephone"];
    domainAccessor = v4->_domainAccessor;
    v4->_domainAccessor = v11;

    v13 = objc_alloc_init(NPHVMSyncSessionManager);
    syncSessionManager = v4->_syncSessionManager;
    v4->_syncSessionManager = v13;

    [(NPHVMSyncSessionManager *)v4->_syncSessionManager setDelegate:v4];
    v15 = dispatch_semaphore_create(0);
    initialSyncComplete = v4->_initialSyncComplete;
    v4->_initialSyncComplete = v15;

    v17 = [MEMORY[0x277D37C40] syncCoordinatorWithServiceName:@"com.apple.pairedsync.nanophone"];
    initialSyncCoordinator = v4->_initialSyncCoordinator;
    v4->_initialSyncCoordinator = v17;

    v19 = [objc_alloc(MEMORY[0x277D37C30]) initWithDelegate:v4];
    initialSyncStateObserver = v4->_initialSyncStateObserver;
    v4->_initialSyncStateObserver = v19;

    [(PSYSyncCoordinator *)v4->_initialSyncCoordinator setDelegate:v4];
    [(VoicemailCompanionReplication *)v4 _syncRestrictionUpdated];
    v21 = objc_alloc(MEMORY[0x277CFBAA0]);
    v46 = *MEMORY[0x277D18678];
    v47[0] = MEMORY[0x277CBEC38];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:&v46 count:1];
    v23 = [v21 initWithService:@"com.apple.private.alloy.voicemailsync" priority:0 asMasterStore:1 options:v22];
    syncService = v4->_syncService;
    v4->_syncService = v23;

    v25 = dispatch_queue_create("com.apple.mobilephone.VoicemailCompanionReplication.syncServiceQueue", 0);
    syncServiceQueue = v4->_syncServiceQueue;
    v4->_syncServiceQueue = v25;

    [(SYService *)v4->_syncService setDelegate:v4 queue:v4->_syncServiceQueue];
    v27 = v4->_syncService;
    v40 = 0;
    LOBYTE(v22) = [(SYService *)v27 resume:&v40];
    v28 = v40;
    v29 = v28;
    if ((v22 & 1) == 0)
    {
      v30 = nph_general_log(v28);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v43 = "[VoicemailCompanionReplication init]";
        v44 = 2112;
        v45 = v29;
        _os_log_impl(&dword_26D269000, v30, OS_LOG_TYPE_DEFAULT, "%s: error resuming _syncService: %@", buf, 0x16u);
      }
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    voicemailManager_ObjC_VoicemailsChangedNotification = [MEMORY[0x277CCAB88] VoicemailManager_ObjC_VoicemailsChangedNotification];
    [defaultCenter addObserver:v4 selector:sel__handleVoicemailsChangedNotification_ name:voicemailManager_ObjC_VoicemailsChangedNotification object:0];

    v33 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__VoicemailCompanionReplication_init__block_invoke;
    block[3] = &unk_279D961C0;
    v34 = v4;
    v39 = v34;
    dispatch_async(v33, block);

    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37__VoicemailCompanionReplication_init__block_invoke_2;
    handler[3] = &unk_279D961E8;
    v37 = v34;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", MEMORY[0x277D85CD0], handler);
  }

  return v4;
}

void __37__VoicemailCompanionReplication_init__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (deviceUnlockedSinceBoot_onceToken != -1)
  {
    __37__VoicemailCompanionReplication_init__block_invoke_cold_1();
  }

  v2 = dispatch_semaphore_wait(deviceUnlockedSinceBoot_semaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = nph_general_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VoicemailCompanionReplication init]_block_invoke";
  }

  v4 = [*(a1 + 32) initialSyncComplete];
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);

  v6 = nph_general_log(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v10 = "[VoicemailCompanionReplication init]_block_invoke";
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__VoicemailCompanionReplication_init__block_invoke_49;
  block[3] = &unk_279D961C0;
  v8 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __37__VoicemailCompanionReplication_init__block_invoke_49(uint64_t a1)
{
  [*(a1 + 32) setSyncPermitted:1];
  v2 = *(a1 + 32);

  return [v2 sync:0];
}

void __37__VoicemailCompanionReplication_init__block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:{xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430])}];
  v4 = nph_general_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "received com.apple.notifyd.matching event named %@", &v5, 0xCu);
  }

  if ([v3 isEqualToString:@"com.apple.nanophone.vm.fullsync"])
  {
    [*(a1 + 32) sync:1];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  initialSyncCoordinator = self->_initialSyncCoordinator;
  self->_initialSyncCoordinator = 0;

  v5.receiver = self;
  v5.super_class = VoicemailCompanionReplication;
  [(VoicemailCompanionReplication *)&v5 dealloc];
}

- (void)syncCoordinator:(id)coordinator beginSyncSession:(id)session
{
  v10 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = nph_general_log(sessionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VoicemailCompanionReplication syncCoordinator:beginSyncSession:]";
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  syncSessionType = [sessionCopy syncSessionType];
  [(VoicemailCompanionReplication *)self sync:syncSessionType == 0 force:1];
}

- (void)syncCoordinator:(id)coordinator didInvalidateSyncSession:(id)session
{
  v10 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = nph_general_log(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "[VoicemailCompanionReplication syncCoordinator:didInvalidateSyncSession:]";
    v8 = 2112;
    v9 = sessionCopy;
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s: initialSyncSession: %@", &v6, 0x16u);
  }
}

- (void)syncCoordinatorDidChangeSyncRestriction:(id)restriction
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VoicemailCompanionReplication syncCoordinatorDidChangeSyncRestriction:]";
    _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(VoicemailCompanionReplication *)self _syncRestrictionUpdated];
}

- (void)initialSyncStateObserver:(id)observer syncDidCompleteForPairingIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v6 = nph_general_log(identifierCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[VoicemailCompanionReplication initialSyncStateObserver:syncDidCompleteForPairingIdentifier:]";
    v9 = 2112;
    v10 = identifierCopy;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  [(VoicemailCompanionReplication *)self _syncRestrictionUpdated];
}

- (void)_syncRestrictionUpdated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v8 = "[VoicemailCompanionReplication _syncRestrictionUpdated]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  initialSyncStateObserver = [(VoicemailCompanionReplication *)self initialSyncStateObserver];
  pairingID = [(NPSDomainAccessor *)self->_domainAccessor pairingID];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__VoicemailCompanionReplication__syncRestrictionUpdated__block_invoke;
  v6[3] = &unk_279D96210;
  v6[4] = self;
  [initialSyncStateObserver requestSyncStateForPairingIdentifier:pairingID completion:v6];
}

void __56__VoicemailCompanionReplication__syncRestrictionUpdated__block_invoke(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [*(a1 + 32) initialSyncCoordinator];
    v8 = [v7 syncRestriction] == 1;
  }

  else
  {
    v8 = 1;
  }

  v9 = nph_general_log(v5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) initialSyncCoordinator];
    v12[0] = 67109632;
    v12[1] = v8;
    v13 = 1024;
    v14 = a2;
    v15 = 2048;
    v16 = [v10 syncRestriction];
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "syncRestricted: %d (hasCompletedSync: %d syncRestriction: %lu)", v12, 0x18u);
  }

  if (!v8)
  {
    v11 = [*(a1 + 32) initialSyncComplete];
    dispatch_semaphore_signal(v11);
  }
}

- (void)handleSIGTERM
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[VoicemailCompanionReplication handleSIGTERM]";
    _os_log_impl(&dword_26D269000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  syncSessionManager = [(VoicemailCompanionReplication *)self syncSessionManager];
  [syncSessionManager setCancelled:1];

  notSyncingCondition = [(VoicemailCompanionReplication *)self notSyncingCondition];
  [notSyncingCondition lock];

  _isSyncing = [(VoicemailCompanionReplication *)self _isSyncing];
  if (_isSyncing)
  {
    do
    {
      v7 = nph_general_log(_isSyncing);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v13 = "[VoicemailCompanionReplication handleSIGTERM]";
        _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s - sync in progress; waiting for it to cancel out", buf, 0xCu);
      }

      notSyncingCondition2 = [(VoicemailCompanionReplication *)self notSyncingCondition];
      [notSyncingCondition2 wait];

      _isSyncing = [(VoicemailCompanionReplication *)self _isSyncing];
    }

    while ((_isSyncing & 1) != 0);
  }

  v9 = nph_general_log(_isSyncing);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[VoicemailCompanionReplication handleSIGTERM]";
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s - sync no longer in progress; exiting", buf, 0xCu);
  }

  v11 = nph_general_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[VoicemailCompanionReplication handleSIGTERM]";
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "%s - done waiting", buf, 0xCu);
  }
}

- (void)setSyncing:(BOOL)syncing
{
  syncingCopy = syncing;
  notSyncingCondition = [(VoicemailCompanionReplication *)self notSyncingCondition];
  [notSyncingCondition lock];

  if ([(VoicemailCompanionReplication *)self _isSyncing]!= syncingCopy)
  {
    if (syncingCopy)
    {
      v6 = os_transaction_create();
      [(VoicemailCompanionReplication *)self setTransaction:v6];
    }

    else
    {
      [(VoicemailCompanionReplication *)self setTransaction:0];
    }

    if (![(VoicemailCompanionReplication *)self _isSyncing])
    {
      notSyncingCondition2 = [(VoicemailCompanionReplication *)self notSyncingCondition];
      [notSyncingCondition2 broadcast];
    }
  }

  notSyncingCondition3 = [(VoicemailCompanionReplication *)self notSyncingCondition];
  [notSyncingCondition3 unlock];
}

- (BOOL)_isSyncing
{
  transaction = [(VoicemailCompanionReplication *)self transaction];
  v3 = transaction != 0;

  return v3;
}

- (void)sync:(BOOL)sync force:(BOOL)force
{
  forceCopy = force;
  syncCopy = sync;
  v18 = *MEMORY[0x277D85DE8];
  v7 = nph_general_log(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[VoicemailCompanionReplication sync:force:]";
    v15 = 1024;
    *v16 = syncCopy;
    *&v16[4] = 1024;
    *&v16[6] = forceCopy;
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s: reset: %d force: %d", &v13, 0x18u);
  }

  if (syncCopy || (v12 = [(VoicemailCompanionReplication *)self isSyncPermitted], (v12 & 1) != 0) || forceCopy)
  {
    [(VoicemailCompanionReplication *)self setSyncing:1];
    currentMigrationVersion = [(VoicemailCompanionReplication *)self currentMigrationVersion];
    v9 = nph_general_log(currentMigrationVersion);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315650;
      v14 = "[VoicemailCompanionReplication sync:force:]";
      v15 = 2048;
      *v16 = currentMigrationVersion;
      *&v16[8] = 2048;
      v17 = 1;
      _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s: currentMigrationVersion: %ld requiredMigrationVersion: %ld", &v13, 0x20u);
    }

    syncService = [(VoicemailCompanionReplication *)self syncService];
    v11 = syncService;
    if (syncCopy || currentMigrationVersion <= 0)
    {
      [syncService setNeedsResetSync];
    }

    else
    {
      [syncService setHasChangesAvailable];
    }
  }

  else
  {
    v11 = nph_general_log(v12);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = "[VoicemailCompanionReplication sync:force:]";
      _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "%s: bailing, isSyncPermitted: 0 force: 0", &v13, 0xCu);
    }
  }
}

- (void)_retrySyncSession:(id)session
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v5 = nph_general_log(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[VoicemailCompanionReplication _retrySyncSession:]";
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  isResetSync = [sessionCopy isResetSync];
  wasCancelled = [sessionCopy wasCancelled];
  if (isResetSync)
  {
    if (wasCancelled)
    {
      v8 = 0;
    }

    else
    {
      v8 = 3600000000000;
    }

    v9 = nph_general_log(wasCancelled);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "[VoicemailCompanionReplication _retrySyncSession:]";
      v16 = 2048;
      v17 = v8;
      _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s: scheduling setNeedsResetSync in %lld ns", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v10 = dispatch_time(0, v8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__VoicemailCompanionReplication__retrySyncSession___block_invoke;
    block[3] = &unk_279D96238;
    objc_copyWeak(&v13, buf);
    block[4] = self;
    dispatch_after(v10, MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v13);
    objc_destroyWeak(buf);
  }

  else if (wasCancelled)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __51__VoicemailCompanionReplication__retrySyncSession___block_invoke_60;
    v11[3] = &unk_279D961C0;
    v11[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }
}

void __51__VoicemailCompanionReplication__retrySyncSession___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained remoteVoicemails];
  v4 = [v3 count];

  v6 = nph_general_log(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v7)
    {
      v8 = 136315394;
      v9 = "[VoicemailCompanionReplication _retrySyncSession:]_block_invoke";
      v10 = 2048;
      v11 = v4;
      _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s setNeedsResetSync trigger canceled. Remote Voicemail count: %lu", &v8, 0x16u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = 136315138;
      v9 = "[VoicemailCompanionReplication _retrySyncSession:]_block_invoke";
      _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s setNeedsResetSync triggered", &v8, 0xCu);
    }

    [*(a1 + 32) sync:1];
  }
}

- (void)syncSessionManager:(id)manager reportProgress:(double)progress
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = nph_general_log(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    initialSyncCoordinator = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
    activeSyncSession = [initialSyncCoordinator activeSyncSession];
    v11 = 136315650;
    v12 = "[VoicemailCompanionReplication syncSessionManager:reportProgress:]";
    v13 = 2048;
    progressCopy = progress;
    v15 = 2112;
    v16 = activeSyncSession;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s: progress: %f activeSyncSession: %@", &v11, 0x20u);
  }

  initialSyncCoordinator2 = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
  activeSyncSession2 = [initialSyncCoordinator2 activeSyncSession];
  [activeSyncSession2 reportProgress:progress];
}

- (void)syncSessionManagerDidCompleteSending:(id)sending
{
  initialSyncCoordinator = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
  activeSyncSession = [initialSyncCoordinator activeSyncSession];
  [activeSyncSession syncDidCompleteSending];
}

- (void)syncSession:(id)session didEndWithError:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v8 = nph_general_log(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 136315394;
    v19 = "[VoicemailCompanionReplication syncSession:didEndWithError:]";
    v20 = 2112;
    *v21 = errorCopy;
    _os_log_impl(&dword_26D269000, v8, OS_LOG_TYPE_DEFAULT, "%s: error: %@", &v18, 0x16u);
  }

  v10 = nph_general_log(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    isSending = [sessionCopy isSending];
    wasCancelled = [sessionCopy wasCancelled];
    isResetSync = [sessionCopy isResetSync];
    v18 = 136315906;
    v19 = "[VoicemailCompanionReplication syncSession:didEndWithError:]";
    v20 = 1024;
    *v21 = isSending;
    *&v21[4] = 1024;
    *&v21[6] = wasCancelled;
    v22 = 1024;
    v23 = isResetSync;
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s: session isSending: %d wasCanceled: %d isResetSync: %d", &v18, 0x1Eu);
  }

  if ([sessionCopy isSending])
  {
    if (errorCopy)
    {
      initialSyncCoordinator = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
      activeSyncSession = [initialSyncCoordinator activeSyncSession];
      [activeSyncSession syncDidFailWithError:errorCopy];
    }

    else
    {
      syncingVoicemails = [(VoicemailCompanionReplication *)self syncingVoicemails];
      [(VoicemailCompanionReplication *)self setRemoteVoicemails:syncingVoicemails];

      if ([sessionCopy isResetSync])
      {
        [(VoicemailCompanionReplication *)self setCurrentMigrationVersion:1];
      }

      initialSyncCoordinator = [(VoicemailCompanionReplication *)self initialSyncCoordinator];
      activeSyncSession = [initialSyncCoordinator activeSyncSession];
      [activeSyncSession syncDidComplete];
    }

    [(VoicemailCompanionReplication *)self setSyncingVoicemails:0];
    wasCancelled2 = [sessionCopy wasCancelled];
    if (errorCopy || wasCancelled2)
    {
      [(VoicemailCompanionReplication *)self _retrySyncSession:sessionCopy];
    }
  }

  [(VoicemailCompanionReplication *)self setSyncing:0];
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v35 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  changesCopy = changes;
  completionCopy = completion;
  v9 = nph_general_log(completionCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v34 = "[VoicemailCompanionReplication syncSession:applyChanges:completion:]";
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = changesCopy;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        v15 = nph_general_log(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v14;
          _os_log_impl(&dword_26D269000, v15, OS_LOG_TYPE_DEFAULT, "change: %@", buf, 0xCu);
        }

        v17 = nph_general_log(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          changeType = [v14 changeType];
          *buf = 134217984;
          v34 = changeType;
          _os_log_impl(&dword_26D269000, v17, OS_LOG_TYPE_DEFAULT, "changeType: %ld", buf, 0xCu);
        }

        serializer = [sessionCopy serializer];
        v20 = [serializer dataFromChange:v14];

        v21 = [[NanoPhoneVoicemailMeta alloc] initWithData:v20];
        v22 = nph_general_log(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v21;
          _os_log_impl(&dword_26D269000, v22, OS_LOG_TYPE_DEFAULT, "vmMeta: %@", buf, 0xCu);
        }

        changeType2 = [v14 changeType];
        switch(changeType2)
        {
          case 3:
            [(VoicemailCompanionReplication *)self removeFromRemoteVoicemails:v21];
            [(VoicemailManager_ObjC *)self->_voicemailManager moveToTrash:v21];
            break;
          case 2:
            if (([(NanoPhoneVoicemailMeta *)v21 flags]& 1) != 0)
            {
              [(VoicemailManager_ObjC *)self->_voicemailManager markAsRead:v21];
            }

            break;
          case 1:
            v24 = nph_general_log(1);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v34 = "[VoicemailCompanionReplication syncSession:applyChanges:completion:]";
              _os_log_impl(&dword_26D269000, v24, OS_LOG_TYPE_DEFAULT, "%s - did not expect gizmo to be adding a voicemail!", buf, 0xCu);
            }

            break;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v11 = v10;
    }

    while (v10);
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (BOOL)syncSession:(id)session resetDataStoreWithError:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    syncService = [(VoicemailCompanionReplication *)self syncService];
    v8 = 136315394;
    v9 = "[VoicemailCompanionReplication syncSession:resetDataStoreWithError:]";
    v10 = 1024;
    isMasterStore = [syncService isMasterStore];
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s: isMasterStore: %d", &v8, 0x12u);
  }

  return 0;
}

- (id)changesBetween:(id)between and:(id)and
{
  v32 = *MEMORY[0x277D85DE8];
  betweenCopy = between;
  andCopy = and;
  v7 = nph_general_log(andCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v24 = 136315394;
    v25 = "[VoicemailCompanionReplication changesBetween:and:]";
    v26 = 2112;
    v27 = betweenCopy;
    _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_INFO, "%s: from: %@", &v24, 0x16u);
  }

  v9 = nph_general_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v24 = 136315394;
    v25 = "[VoicemailCompanionReplication changesBetween:and:]";
    v26 = 2112;
    v27 = andCopy;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_INFO, "%s: and: %@", &v24, 0x16u);
  }

  if (!betweenCopy)
  {
    betweenCopy = objc_opt_new();
  }

  v10 = [objc_alloc(MEMORY[0x277CFBA90]) initWithChangesBetween:betweenCopy and:andCopy];
  v11 = nph_general_log(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    added = [v10 added];
    v13 = [added count];
    updated = [v10 updated];
    v15 = [updated count];
    deleted = [v10 deleted];
    v17 = [deleted count];
    v24 = 136315906;
    v25 = "[VoicemailCompanionReplication changesBetween:and:]";
    v26 = 2048;
    v27 = v13;
    v28 = 2048;
    v29 = v15;
    v30 = 2048;
    v31 = v17;
    _os_log_impl(&dword_26D269000, v11, OS_LOG_TYPE_DEFAULT, "%s: counts: added: %lu updated: %lu deleted: %lu", &v24, 0x2Au);
  }

  v19 = nph_general_log(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    added2 = [v10 added];
    updated2 = [v10 updated];
    deleted2 = [v10 deleted];
    v24 = 136315906;
    v25 = "[VoicemailCompanionReplication changesBetween:and:]";
    v26 = 2112;
    v27 = added2;
    v28 = 2112;
    v29 = updated2;
    v30 = 2112;
    v31 = deleted2;
    _os_log_impl(&dword_26D269000, v19, OS_LOG_TYPE_INFO, "%s: added: %@ updated: %@ deleted: %@", &v24, 0x2Au);
  }

  return v10;
}

- (void)_handleVoicemailsChangedNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[VoicemailCompanionReplication _handleVoicemailsChangedNotification:]";
    _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v5 = ListOfVoicemailsToSyncWithManager(self->_voicemailManager);

  if (v5)
  {
    voicemailsLoadedCondition = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [voicemailsLoadedCondition lock];

    voicemailsLoadedCondition2 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [voicemailsLoadedCondition2 broadcast];

    voicemailsLoadedCondition3 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [voicemailsLoadedCondition3 unlock];

    v10 = nph_general_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[VoicemailCompanionReplication _handleVoicemailsChangedNotification:]";
      _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s: broadcasted voicemailsLoadedCondition", &v11, 0xCu);
    }
  }

  [(VoicemailCompanionReplication *)self sync:0];
}

- (void)serviceDidPairDevice:(id)device
{
  v13 = *MEMORY[0x277D85DE8];
  syncService = self->_syncService;
  v8 = 0;
  v4 = [(SYService *)syncService resume:&v8];
  v5 = v8;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    v7 = nph_general_log(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[VoicemailCompanionReplication serviceDidPairDevice:]";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_26D269000, v7, OS_LOG_TYPE_DEFAULT, "%s: error resuming _syncService:%@", buf, 0x16u);
    }
  }
}

- (BOOL)service:(id)service startSession:(id)session error:(id *)error
{
  v50[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sessionCopy = session;
  v10 = nph_general_log(sessionCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 136315138;
    v46 = "[VoicemailCompanionReplication service:startSession:error:]";
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v45, 0xCu);
  }

  v12 = nph_general_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 138412290;
    v46 = serviceCopy;
    _os_log_impl(&dword_26D269000, v12, OS_LOG_TYPE_DEFAULT, "service: %@", &v45, 0xCu);
  }

  v14 = nph_general_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v45 = 138412290;
    v46 = sessionCopy;
    _os_log_impl(&dword_26D269000, v14, OS_LOG_TYPE_DEFAULT, "session: %@", &v45, 0xCu);
  }

  v16 = nph_general_log(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    state = [sessionCopy state];
    v45 = 134217984;
    v46 = state;
    _os_log_impl(&dword_26D269000, v16, OS_LOG_TYPE_DEFAULT, "session.state: %ld", &v45, 0xCu);
  }

  v18 = 1;
  [(VoicemailCompanionReplication *)self setSyncing:1];
  [sessionCopy setDelegate:self->_syncSessionManager];
  [sessionCopy setSerializer:self->_syncSessionManager];
  [sessionCopy setTargetQueue:self->_syncServiceQueue];
  v49 = *MEMORY[0x277D18568];
  v50[0] = MEMORY[0x277CBEC38];
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
  [sessionCopy setOptions:v19];

  if ([sessionCopy isSending])
  {
    voicemails = [(VoicemailCompanionReplication *)self voicemails];
    v21 = [voicemails mutableCopy];
    [(VoicemailCompanionReplication *)self setSyncingVoicemails:v21];

    isResetSync = [sessionCopy isResetSync];
    if (isResetSync)
    {
      v23 = nph_general_log(isResetSync);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        syncingVoicemails = [(VoicemailCompanionReplication *)self syncingVoicemails];
        if (syncingVoicemails)
        {
          v25 = MEMORY[0x277CCABB0];
          syncingVoicemails2 = [(VoicemailCompanionReplication *)self syncingVoicemails];
          v26 = [v25 numberWithUnsignedInteger:{objc_msgSend(syncingVoicemails2, "count")}];
        }

        else
        {
          v26 = 0;
        }

        v45 = 136315394;
        v46 = "[VoicemailCompanionReplication service:startSession:error:]";
        v47 = 2112;
        v48 = v26;
        _os_log_impl(&dword_26D269000, v23, OS_LOG_TYPE_DEFAULT, "%s: there are %@ voicemails to be reset synced", &v45, 0x16u);
        if (syncingVoicemails)
        {
        }
      }

      syncSessionManager = self->_syncSessionManager;
      syncingVoicemails3 = [(VoicemailCompanionReplication *)self syncingVoicemails];
      v36 = 1;
      [(NPHVMSyncSessionManager *)syncSessionManager enqueueVoicemailChanges:syncingVoicemails3 changeType:1];
    }

    else
    {
      remoteVoicemails = [(VoicemailCompanionReplication *)self remoteVoicemails];
      syncingVoicemails4 = [(VoicemailCompanionReplication *)self syncingVoicemails];
      syncingVoicemails3 = [(VoicemailCompanionReplication *)self changesBetween:remoteVoicemails and:syncingVoicemails4];

      added = [syncingVoicemails3 added];
      updated = [syncingVoicemails3 updated];
      deleted = [syncingVoicemails3 deleted];
      v33 = [added count];
      v34 = [updated count] + v33;
      v35 = [deleted count];
      v36 = v34 + v35 != 0;
      if (v34 + v35)
      {
        if ([added count])
        {
          v37 = self->_syncSessionManager;
          allObjects = [added allObjects];
          [(NPHVMSyncSessionManager *)v37 enqueueVoicemailChanges:allObjects changeType:1];
        }

        if ([updated count])
        {
          v39 = self->_syncSessionManager;
          allObjects2 = [updated allObjects];
          [(NPHVMSyncSessionManager *)v39 enqueueVoicemailChanges:allObjects2 changeType:2];
        }

        if ([deleted count])
        {
          v41 = self->_syncSessionManager;
          allObjects3 = [deleted allObjects];
          [(NPHVMSyncSessionManager *)v41 enqueueVoicemailChanges:allObjects3 changeType:3];
        }
      }
    }

    v18 = v36;
  }

  return v18;
}

- (void)service:(id)service sessionEnded:(id)ended error:(id)error
{
  v19 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  endedCopy = ended;
  errorCopy = error;
  v10 = nph_general_log(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[VoicemailCompanionReplication service:sessionEnded:error:]";
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v17, 0xCu);
  }

  v12 = nph_general_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = serviceCopy;
    _os_log_impl(&dword_26D269000, v12, OS_LOG_TYPE_DEFAULT, "service: %@", &v17, 0xCu);
  }

  v14 = nph_general_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = endedCopy;
    _os_log_impl(&dword_26D269000, v14, OS_LOG_TYPE_DEFAULT, "session: %@", &v17, 0xCu);
  }

  v16 = nph_general_log(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = errorCopy;
    _os_log_impl(&dword_26D269000, v16, OS_LOG_TYPE_DEFAULT, "error: %@", &v17, 0xCu);
  }
}

- (void)service:(id)service encounteredError:(id)error context:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  errorCopy = error;
  contextCopy = context;
  v10 = nph_general_log(contextCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = "[VoicemailCompanionReplication service:encounteredError:context:]";
    _os_log_impl(&dword_26D269000, v10, OS_LOG_TYPE_DEFAULT, "%s", &v17, 0xCu);
  }

  v12 = nph_general_log(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = serviceCopy;
    _os_log_impl(&dword_26D269000, v12, OS_LOG_TYPE_DEFAULT, "service: %@", &v17, 0xCu);
  }

  v14 = nph_general_log(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = contextCopy;
    _os_log_impl(&dword_26D269000, v14, OS_LOG_TYPE_DEFAULT, "context: %@", &v17, 0xCu);
  }

  v16 = nph_general_log(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = errorCopy;
    _os_log_impl(&dword_26D269000, v16, OS_LOG_TYPE_DEFAULT, "error: %@", &v17, 0xCu);
  }
}

- (NSMutableArray)remoteVoicemails
{
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
  v4 = [(NPSDomainAccessor *)self->_domainAccessor objectForKey:@"kVoicemailForReplicationKey"];
  v5 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v15 = 0;
  v8 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v7 fromData:v4 error:&v15];
  v9 = v15;
  v10 = v9;
  if (v9)
  {
    v11 = nph_general_log(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [VoicemailCompanionReplication remoteVoicemails];
    }
  }

  if (v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = [v12 mutableCopy];

  return v13;
}

- (void)setRemoteVoicemails:(id)voicemails
{
  v21 = *MEMORY[0x277D85DE8];
  voicemailsCopy = voicemails;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [voicemailsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(voicemailsCopy);
        }

        voicemailBody = [*(*(&v16 + 1) + 8 * v8) voicemailBody];
        [voicemailBody setVoicemailRecording:0];

        ++v8;
      }

      while (v6 != v8);
      v6 = [voicemailsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = 0;
  v10 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:voicemailsCopy requiringSecureCoding:1 error:&v15];
  v11 = v15;
  v12 = v11;
  if (v11)
  {
    v13 = nph_general_log(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [VoicemailCompanionReplication setRemoteVoicemails:];
    }
  }

  [(NPSDomainAccessor *)self->_domainAccessor setObject:v10 forKey:@"kVoicemailForReplicationKey"];
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (void)setCurrentMigrationVersion:(int64_t)version
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "[VoicemailCompanionReplication setCurrentMigrationVersion:]";
    v9 = 2048;
    versionCopy = version;
    v11 = 2048;
    currentMigrationVersion = [(VoicemailCompanionReplication *)self currentMigrationVersion];
    _os_log_impl(&dword_26D269000, v5, OS_LOG_TYPE_DEFAULT, "%s: %ld (oldValue: %ld)", &v7, 0x20u);
  }

  [(NPSDomainAccessor *)self->_domainAccessor setInteger:version forKey:@"NPHVoicemailCompanionReplicationCurrentMigrationVersionKey"];
  synchronize = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
}

- (int64_t)currentMigrationVersion
{
  domainAccessor = [(VoicemailCompanionReplication *)self domainAccessor];
  v3 = [domainAccessor integerForKey:@"NPHVoicemailCompanionReplicationCurrentMigrationVersionKey"];

  return v3;
}

- (void)removeFromRemoteVoicemails:(id)voicemails
{
  v14 = *MEMORY[0x277D85DE8];
  voicemailsCopy = voicemails;
  remoteVoicemails = [(VoicemailCompanionReplication *)self remoteVoicemails];
  v6 = nph_general_log(remoteVoicemails);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "[VoicemailCompanionReplication removeFromRemoteVoicemails:]";
    v10 = 2112;
    v11 = voicemailsCopy;
    v12 = 2112;
    v13 = remoteVoicemails;
    _os_log_impl(&dword_26D269000, v6, OS_LOG_TYPE_DEFAULT, "%s - %@ removed from %@", &v8, 0x20u);
  }

  v7 = [(VoicemailCompanionReplication *)self indexOfVoicemail:voicemailsCopy inArray:remoteVoicemails];
  if (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [remoteVoicemails removeObjectAtIndex:v7];
  }

  [(VoicemailCompanionReplication *)self setRemoteVoicemails:remoteVoicemails];
}

- (int64_t)indexOfVoicemail:(id)voicemail inArray:(id)array
{
  voicemailCopy = voicemail;
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [arrayCopy objectAtIndex:v7];
      identifier = [v8 identifier];
      identifier2 = [voicemailCopy identifier];

      if (identifier == identifier2)
      {
        break;
      }

      if (++v7 >= [arrayCopy count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)voicemails
{
  v16 = *MEMORY[0x277D85DE8];
  for (i = ListOfVoicemailsToSyncWithManager(self->_voicemailManager);
  {
    v4 = nph_general_log(i);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v13 = "[VoicemailCompanionReplication voicemails]";
      _os_log_impl(&dword_26D269000, v4, OS_LOG_TYPE_DEFAULT, "%s: waiting for voicemailsLoadedCondition", buf, 0xCu);
    }

    voicemailsLoadedCondition = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [voicemailsLoadedCondition lock];

    voicemailsLoadedCondition2 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [voicemailsLoadedCondition2 wait];

    voicemailsLoadedCondition3 = [(VoicemailCompanionReplication *)self voicemailsLoadedCondition];
    [voicemailsLoadedCondition3 unlock];

    ListOfVoicemailsToSyncWithManager(self->_voicemailManager);
  }

  v8 = i;
  v9 = nph_general_log(i);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 count];
    *buf = 136315394;
    v13 = "[VoicemailCompanionReplication voicemails]";
    v14 = 2048;
    v15 = v10;
    _os_log_impl(&dword_26D269000, v9, OS_LOG_TYPE_DEFAULT, "%s: %lu", buf, 0x16u);
  }

  return v8;
}

- (void)remoteVoicemails
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26D269000, v0, OS_LOG_TYPE_ERROR, "%s: error: %@", v1, 0x16u);
}

- (void)setRemoteVoicemails:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_26D269000, v0, OS_LOG_TYPE_ERROR, "%s: error: %@", v1, 0x16u);
}

@end