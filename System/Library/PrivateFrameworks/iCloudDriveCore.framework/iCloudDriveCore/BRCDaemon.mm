@interface BRCDaemon
+ (BOOL)isDaemonRunning;
+ (id)daemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)selfCheck:(__sFILE *)check;
- (BOOL)shouldRejectXPCCalls;
- (BRCDaemon)init;
- (id)currentAccountHandler;
- (id)getCurrentSessionMustFinishedLoading:(BOOL)loading;
- (id)registerShareAcceptOperation:(id)operation forURL:(id)l;
- (void)_dbgSleepIfRequested;
- (void)_finishStartup;
- (void)_initSignals;
- (void)_resumeSignals;
- (void)_setupCacheDelete;
- (void)_setupVNodeRapidAging;
- (void)_startXPCListeners;
- (void)_startupAndLoadAccount;
- (void)dumpToContext:(id)context;
- (void)exitWithCode:(int)code;
- (void)handleExitSignal:(int)signal;
- (void)localeDidChange;
- (void)networkReachabilityChanged:(BOOL)changed;
- (void)performWithSessionForVolume:(id)volume action:(id)action;
- (void)registerWaiterBlock:(id)block forShareURL:(id)l skipAcceptDialogs:(BOOL)dialogs;
- (void)setUpAnonymousListener;
- (void)setUpSandbox;
- (void)start;
- (void)waitForConfiguration;
@end

@implementation BRCDaemon

- (id)currentAccountHandler
{
  v2 = +[BRCAccountsManager sharedManager];
  accountHandlerForCurrentPersona = [v2 accountHandlerForCurrentPersona];

  return accountHandlerForCurrentPersona;
}

+ (id)daemon
{
  if (daemon_once != -1)
  {
    +[BRCDaemon daemon];
  }

  v3 = gDaemon;

  return v3;
}

void __19__BRCDaemon_daemon__block_invoke()
{
  v0 = objc_opt_new();
  v1 = gDaemon;
  gDaemon = v0;

  obj = objc_opt_class();
  objc_sync_enter(obj);
  isDaemonRunning = 1;
  objc_sync_exit(obj);
}

+ (BOOL)isDaemonRunning
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = isDaemonRunning;
  objc_sync_exit(v2);

  return v3;
}

- (void)_initSignals
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:*MEMORY[0x277CFAC00]])
  {
    signal(13, 1);
    signal(1, 1);
    signal(30, 1);
    signal(31, 1);
    signal(3, 1);
    signal(15, 1);
    signal(2, 1);
    v5 = MEMORY[0x277D85D30];
    v6 = dispatch_source_create(MEMORY[0x277D85D30], 2uLL, 0, 0);
    sigIntSrc = self->_sigIntSrc;
    self->_sigIntSrc = v6;

    v8 = dispatch_source_create(v5, 3uLL, 0, 0);
    sigQuitSrc = self->_sigQuitSrc;
    self->_sigQuitSrc = v8;

    v10 = dispatch_source_create(v5, 0xFuLL, 0, 0);
    sigTermSrc = self->_sigTermSrc;
    self->_sigTermSrc = v10;

    v12 = self->_sigIntSrc;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __25__BRCDaemon__initSignals__block_invoke;
    v33[3] = &unk_2784FF450;
    v33[4] = self;
    v13 = v12;
    v14 = v33;
    v15 = v14;
    v16 = MEMORY[0x277CFB010];
    v17 = v14;
    if (*MEMORY[0x277CFB010])
    {
      v17 = (*MEMORY[0x277CFB010])(v14);
    }

    v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v17);
    dispatch_source_set_event_handler(v13, v18);

    v19 = self->_sigQuitSrc;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __25__BRCDaemon__initSignals__block_invoke_2;
    v32[3] = &unk_2784FF450;
    v32[4] = self;
    v20 = v19;
    v21 = v32;
    v22 = v21;
    v23 = v21;
    if (*v16)
    {
      v23 = (*v16)(v21);
    }

    v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v23);
    dispatch_source_set_event_handler(v20, v24);

    v25 = self->_sigTermSrc;
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __25__BRCDaemon__initSignals__block_invoke_3;
    v31[3] = &unk_2784FF450;
    v31[4] = self;
    v26 = v25;
    v27 = v31;
    v28 = v27;
    v29 = v27;
    if (*v16)
    {
      v29 = (*v16)(v27);
    }

    v30 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v29);
    dispatch_source_set_event_handler(v26, v30);
  }

  else
  {
    v26 = brc_bread_crumbs();
    v28 = brc_default_log();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [BRCDaemon _initSignals];
    }
  }
}

- (void)_setupVNodeRapidAging
{
  if ((BRCSetupVNodeRapidAging(1) & 0x80000000) != 0)
  {
    v2 = *__error();
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, 0x90u))
    {
      [BRCDaemon _setupVNodeRapidAging];
    }

    *__error() = v2;
  }
}

- (BOOL)shouldRejectXPCCalls
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = geteuid();
  if (!v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] We are running as Root user. We should reject all XPC connections%@", &v6, 0xCu);
    }
  }

  return v2 == 0;
}

- (BRCDaemon)init
{
  v25.receiver = self;
  v25.super_class = BRCDaemon;
  v2 = [(BRCDaemon *)&v25 init];
  v3 = v2;
  if (v2)
  {
    [(BRCDaemon *)v2 _initSignals];
    [(BRCDaemon *)v3 _setupVNodeRapidAging];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bird.xpc-listener-ready", v5);

    xpcListenersReadyQueue = v3->_xpcListenersReadyQueue;
    v3->_xpcListenersReadyQueue = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.bird.account-startup-queue", v9);

    accountReadyQueue = v3->_accountReadyQueue;
    v3->_accountReadyQueue = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.bird.account-resume-queue", v13);

    accountResumedQueue = v3->_accountResumedQueue;
    v3->_accountResumedQueue = v14;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(v16, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.bird.startup-queue", v17);

    startupQueue = v3->_startupQueue;
    v3->_startupQueue = v18;

    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(v20, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("account-loader", v21);

    accountLoaderQueue = v3->_accountLoaderQueue;
    v3->_accountLoaderQueue = v22;

    v3->_shouldRejectXPCCalls = [(BRCDaemon *)v3 shouldRejectXPCCalls];
  }

  return v3;
}

- (void)waitForConfiguration
{
  dispatch_resume(self->_sigIntSrc);
  dispatch_resume(self->_sigQuitSrc);
  dispatch_resume(self->_sigTermSrc);
  self->_unitTestMode = 1;
  serviceListener = [MEMORY[0x277CCAE98] serviceListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = serviceListener;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  __break(1u);
}

- (void)setUpAnonymousListener
{
  anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = anonymousListener;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  v5 = self->_xpcListener;

  [(NSXPCListener *)v5 resume];
}

- (void)setUpSandbox
{
  if (!self->_shouldRejectXPCCalls)
  {
    v2 = +[BRCAccountsManager sharedManager];
    isInSyncBubble = [v2 isInSyncBubble];

    if (isInSyncBubble)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.bird.%u", getuid()];
      v4 = v5;
      [v5 UTF8String];
      _set_user_dir_suffix();
    }

    else
    {

      _set_user_dir_suffix();
    }
  }
}

- (id)getCurrentSessionMustFinishedLoading:(BOOL)loading
{
  loadingCopy = loading;
  currentAccountHandler = [(BRCDaemon *)self currentAccountHandler];
  v5 = currentAccountHandler;
  if (loadingCopy && ![currentAccountHandler finishedLoading])
  {
    session = 0;
  }

  else
  {
    session = [v5 session];
  }

  return session;
}

- (void)performWithSessionForVolume:(id)volume action:(id)action
{
  volumeCopy = volume;
  actionCopy = action;
  memset(&v13, 0, sizeof(v13));
  if (lstat([volumeCopy fileSystemRepresentation], &v13) < 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      [BRCDaemon performWithSessionForVolume:action:];
    }
  }

  else
  {
    v7 = +[BRCAccountsManager sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v12 = v13;
    v10[2] = __48__BRCDaemon_performWithSessionForVolume_action___block_invoke;
    v10[3] = &unk_278501A28;
    v11 = actionCopy;
    [v7 enumerateAccountHandlers:v10];

    v8 = v11;
  }
}

void __48__BRCDaemon_performWithSessionForVolume_action___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 session];
  v4 = [v3 volume];
  v5 = [v4 deviceID];
  v6 = *(a1 + 40);

  if (v5 == v6)
  {
    v7 = *(a1 + 32);
    v8 = [v9 session];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)_setupCacheDelete
{
  if (!self->_shouldRejectXPCCalls)
  {
    v7 = MEMORY[0x277D85DD0];
    v5 = MEMORY[0x277D85DD0];
    CacheDeleteRegisterInfoCallbacks();
    v2 = [BRCBGSystemTaskManager sharedManager:v5];
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    cacheDeletePushBGSystemTaskConfig = [v3 cacheDeletePushBGSystemTaskConfig];
    [v2 submitBGSystemTaskWithIdentifier:@"com.apple.bird.cache-delete.push" configuration:cacheDeletePushBGSystemTaskConfig block:&__block_literal_global_66];
  }
}

id __30__BRCDaemon__setupCacheDelete__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  memset(v22, 0, sizeof(v22));
  __brc_create_section(0, "[BRCDaemon _setupCacheDelete]_block_invoke", 435, 0, v22);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v24 = v22[0];
    v25 = 1024;
    v26 = a2;
    v27 = 2112;
    v28 = v5;
    v29 = 2112;
    v30 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cache delete requested us to compute purgeable space: (urgency: %d) %@%@", buf, 0x26u);
  }

  v9 = [BRCDiskSpaceReclaimer simpleUrgencyForCacheDeleteUrgency:a2];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 setObject:v6 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  [v10 setObject:&unk_2837B0118 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  [v10 setObject:&unk_2837B0118 forKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];
  v11 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_43;
  v18[3] = &unk_278501A50;
  v21 = v9;
  v12 = v10;
  v19 = v12;
  v13 = v6;
  v20 = v13;
  [v11 performWithSessionForVolume:v13 action:v18];
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __30__BRCDaemon__setupCacheDelete__block_invoke_cold_1();
  }

  v16 = v12;
  __brc_leave_section(v22);

  return v16;
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 diskReclaimer];
  v5 = [v4 cachedPurgeableSpaceForUrgency:*(a1 + 48)];

  v6 = v5 & ~(v5 >> 63);
  v7 = [v3 diskReclaimer];

  v8 = [v7 cachedNonPurgeableSpace];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];
}

id __30__BRCDaemon__setupCacheDelete__block_invoke_48(uint64_t a1, int a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  memset(v23, 0, sizeof(v23));
  __brc_create_section(0, "[BRCDaemon _setupCacheDelete]_block_invoke", 462, 0, v23);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v25 = v23[0];
    v26 = 1024;
    v27 = a2;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cache delete requested us to purge: (urgency: %d) %@%@", buf, 0x26u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = *(a1 + 32);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_49;
  v18[3] = &unk_278501AC8;
  v22 = a2;
  v11 = v6;
  v19 = v11;
  v12 = v5;
  v20 = v12;
  v13 = v9;
  v21 = v13;
  [v10 performWithSessionForVolume:v11 action:v18];
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __30__BRCDaemon__setupCacheDelete__block_invoke_48_cold_1();
  }

  v16 = v13;
  __brc_leave_section(v23);

  return v16;
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = [v3 clientDB];
  v5 = [v4 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_2;
  block[3] = &unk_278501AA0;
  v16 = &v18;
  v6 = v3;
  v15 = v6;
  v17 = *(a1 + 56);
  dispatch_sync(v5, block);

  if (*(a1 + 56) >= 2)
  {
    v7 = *(a1 + 32);
    v8 = [v6 resetQueue];
    [BRCAnalyticsReporter cancelSyncConsistencyReportWithMountPath:v7 queue:v8];
  }

  v9 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v10 = [v9 longLongValue];

  v11 = [v6 diskReclaimer];
  v12 = [v11 purgeSpace:v10 withUrgency:*(v19 + 6)];

  [*(a1 + 48) setObject:*(a1 + 32) forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
  [*(a1 + 48) setObject:v13 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  _Block_object_dispose(&v18, 8);
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) diskReclaimer];
  *(*(*(a1 + 40) + 8) + 24) = [v2 urgencyForCacheDeleteUrgency:*(a1 + 48)];
}

id __30__BRCDaemon__setupCacheDelete__block_invoke_2_54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v13, 0, sizeof(v13));
  __brc_create_section(0, "[BRCDaemon _setupCacheDelete]_block_invoke_2", 489, 0, v13);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v15 = v13[0];
    v16 = 2112;
    v17 = a3;
    v18 = 2112;
    v19 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cache delete requested us to periodically purge: %@%@", buf, 0x20u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = +[BRCAccountsManager sharedManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_57;
  v11[3] = &unk_278501B10;
  v8 = v6;
  v12 = v8;
  [v7 enumerateAccountHandlers:v11];

  v9 = v8;
  __brc_leave_section(v13);
  return v9;
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_57(uint64_t a1, void *a2)
{
  v3 = [a2 session];
  if (v3)
  {
    v10 = v3;
    v4 = [v3 diskReclaimer];
    v5 = [v4 periodicReclaimSpace];

    v6 = [v10 volume];

    v3 = v10;
    if (v6)
    {
      v7 = [v10 volume];
      v8 = [v7 mountPath];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
      [*(a1 + 32) setObject:v9 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

      v3 = v10;
    }
  }
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_63(uint64_t a1, void *a2)
{
  v2 = a2;
  memset(v14, 0, sizeof(v14));
  __brc_create_section(0, "[BRCDaemon _setupCacheDelete]_block_invoke_2", 518, 0, v14);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_1(v14);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = +[BRCAccountsManager sharedManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_67;
  v9[3] = &unk_278501B80;
  v9[4] = &v10;
  [v5 enumerateAccountHandlers:v9];

  if (*(v11 + 24) == 1)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_3();
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_2();
    }
  }

  v8 = +[BRCBGSystemTaskManager sharedManager];
  [v8 completeTask:v2];

  _Block_object_dispose(&v10, 8);
  __brc_leave_section(v14);
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_67(uint64_t a1, void *a2)
{
  v3 = [a2 session];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 diskReclaimer];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_2_68;
    v6[3] = &unk_278501B58;
    v8 = *(a1 + 32);
    v7 = v4;
    [v5 computePurgeableSpaceForAllUrgenciesWithReply:v6];
  }
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v12 = [*(a1 + 32) volume];
    v13 = [v12 mountPath];

    if (v13)
    {
      v14 = [v8 unsignedLongLongValue];
      v21[0] = @"CACHE_DELETE_ID";
      v21[1] = @"CACHE_DELETE_VOLUME";
      v22[0] = @"com.apple.bird.cache-delete";
      v22[1] = v13;
      v22[2] = v7;
      v21[2] = @"CACHE_DELETE_AMOUNT";
      v21[3] = @"CACHE_DELETE_NONPURGEABLE_AMOUNT";
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
      v22[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];

      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_2();
      }
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_3();
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }
}

- (void)_dbgSleepIfRequested
{
  OUTLINED_FUNCTION_18();
  [v0 timeIntervalSinceNow];
  OUTLINED_FUNCTION_10_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x20u);
}

- (void)_startXPCListeners
{
  v46 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_xpcListenersReadyQueue);
  [(BRCDaemon *)self setUpSandbox];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "";
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] starting bird in FPFS mode%s%@", buf, 0x16u);
  }

  date = [MEMORY[0x277CBEAA8] date];
  startupDate = self->_startupDate;
  self->_startupDate = date;

  memset(v27, 0, sizeof(v27));
  __brc_create_section(0, "[BRCDaemon _startXPCListeners]", 613, 0, v27);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v24 = v27[0];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v15 = getpid();
    v16 = getuid();
    v17 = OSVersion();
    v18 = BRVersion();
    v19 = NSHomeDirectory();
    br_realpath = [v19 br_realpath];
    v21 = +[BRCAccountsManager sharedManager];
    isInSyncBubble = [v21 isInSyncBubble];
    v23 = @"NO";
    *buf = 134220034;
    v29 = v24;
    v30 = 2112;
    if (isInSyncBubble)
    {
      v23 = @"YES";
    }

    v31 = bundleIdentifier;
    v32 = 1024;
    v33 = v15;
    v34 = 1024;
    v35 = v16;
    v36 = 2112;
    v37 = v17;
    v38 = 2112;
    v39 = v18;
    v40 = 2112;
    v41 = br_realpath;
    v42 = 2112;
    v43 = v23;
    v44 = 2112;
    v45 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Starting up, welcome, bundle:%@, pid:%d, uid:%d, os:%@, version:%@, home:%@, in sync bubble:%@%@", buf, 0x54u);
  }

  [(BRCDaemon *)self _dbgSleepIfRequested];
  if (!self->_unitTestMode)
  {
    v9 = objc_alloc(MEMORY[0x277CCAE98]);
    v10 = [v9 initWithMachServiceName:*MEMORY[0x277CFB018]];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v10;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    v12 = objc_alloc(MEMORY[0x277CCAE98]);
    v13 = [v12 initWithMachServiceName:*MEMORY[0x277CFB020]];
    tokenListener = self->_tokenListener;
    self->_tokenListener = v13;

    [(NSXPCListener *)self->_tokenListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener resume];
    [(NSXPCListener *)self->_tokenListener resume];
  }

  __brc_leave_section(v27);
}

- (void)_startupAndLoadAccount
{
  LODWORD(v3) = 138412546;
  *(&v3 + 4) = *self;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] using Cloud Database class: %@%@", v3, DWORD2(v3));
}

- (void)_resumeSignals
{
  if (!self->_unitTestMode)
  {
    dispatch_resume(self->_sigIntSrc);
    dispatch_resume(self->_sigQuitSrc);
    sigTermSrc = self->_sigTermSrc;

    dispatch_resume(sigTermSrc);
  }
}

- (void)_finishStartup
{
  LODWORD(v3) = 134218242;
  *(&v3 + 4) = *self;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx sending token change notification%@", v3, DWORD2(v3));
}

- (void)start
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: getiopolicy_np(IOPOL_TYPE_VFS_IGNORE_PERMISSIONS, IOPOL_SCOPE_THREAD) == IOPOL_VFS_IGNORE_PERMISSIONS_OFF%@", v5, v6, v7, v8);
  }
}

void __18__BRCDaemon_start__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (qos_class_self() != QOS_CLASS_DEFAULT)
  {
    __18__BRCDaemon_start__block_invoke_cold_1();
  }

  [*(a1 + 32) _startXPCListeners];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __18__BRCDaemon_start__block_invoke_95;
  v7[3] = &unk_2784FF450;
  v7[4] = *(a1 + 32);
  v2 = MEMORY[0x22AA4A310](v7);
  v3 = +[BRCBuddyFlowObserver sharedBuddyFlowObserver];
  v4 = [v3 observeBuddyIfNecessaryWithKey:@"DaemonStart" block:v2 description:@"Daemon start"];

  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] BYSetupAssistantNeedsToRun --> pausing daemon startup until done.%@", buf, 0xCu);
    }
  }

  else
  {
    v2[2](v2);
  }
}

void __18__BRCDaemon_start__block_invoke_95(uint64_t a1)
{
  v2 = +[BRCBGSystemTaskManager sharedManager];
  [v2 garbageCollectAllDanglingSyncTasks];

  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__BRCDaemon_start__block_invoke_2;
  block[3] = &unk_2784FF450;
  block[4] = v3;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v4, v5);
}

void __18__BRCDaemon_start__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _resumeSignals];
  [*(a1 + 32) _startupAndLoadAccount];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__BRCDaemon_start__block_invoke_3;
  block[3] = &unk_2784FF450;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __18__BRCDaemon_start__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setupCacheDelete];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__BRCDaemon_start__block_invoke_4;
  block[3] = &unk_2784FF450;
  block[4] = v2;
  dispatch_async(v3, block);
}

- (id)registerShareAcceptOperation:(id)operation forURL:(id)l
{
  operationCopy = operation;
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_shareAcceptOperationsByToken)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    shareAcceptOperationsByToken = selfCopy->_shareAcceptOperationsByToken;
    selfCopy->_shareAcceptOperationsByToken = v9;
  }

  shareAcceptQueue = selfCopy->_shareAcceptQueue;
  if (!shareAcceptQueue)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v13 = selfCopy->_shareAcceptQueue;
    selfCopy->_shareAcceptQueue = v12;

    [(NSOperationQueue *)selfCopy->_shareAcceptQueue setName:@"share-accept"];
    shareAcceptQueue = selfCopy->_shareAcceptQueue;
  }

  v14 = shareAcceptQueue;
  v15 = selfCopy->_shareAcceptOperationsByToken;
  path = [lCopy path];
  lastPathComponent = [path lastPathComponent];
  v18 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:lastPathComponent];

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    shareAcceptWaitersByToken = selfCopy->_shareAcceptWaitersByToken;
    path2 = [lCopy path];
    lastPathComponent2 = [path2 lastPathComponent];
    v23 = [(NSMutableDictionary *)shareAcceptWaitersByToken objectForKeyedSubscript:lastPathComponent2];

    if (v23)
    {
      [operationCopy setSkipOpenInApp:1];
      [operationCopy setSkipAcceptDialogs:{objc_msgSend(v23, "skipShareAcceptationDialogs")}];
    }

    v24 = selfCopy->_shareAcceptOperationsByToken;
    path3 = [lCopy path];
    lastPathComponent3 = [path3 lastPathComponent];
    [(NSMutableDictionary *)v24 setObject:operationCopy forKeyedSubscript:lastPathComponent3];
  }

  objc_sync_exit(selfCopy);
  if (!v18)
  {
    finishBlock = [operationCopy finishBlock];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __49__BRCDaemon_registerShareAcceptOperation_forURL___block_invoke;
    v30[3] = &unk_278501BA8;
    v32 = finishBlock;
    v30[4] = selfCopy;
    v31 = lCopy;
    v28 = finishBlock;
    [operationCopy setFinishBlock:v30];
    [(NSOperationQueue *)v14 addOperation:operationCopy];
    v18 = operationCopy;
  }

  return v18;
}

void __49__BRCDaemon_registerShareAcceptOperation_forURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 48) + 16))();
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v7 = *(*(a1 + 32) + 104);
  v8 = [*(a1 + 40) path];
  v9 = [v8 lastPathComponent];
  [v7 removeObjectForKey:v9];

  v10 = *(*(a1 + 32) + 112);
  v11 = [*(a1 + 40) path];
  v12 = [v11 lastPathComponent];
  v25 = [v10 objectForKeyedSubscript:v12];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [v25 waiterBlocks];
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  v23 = a1;
  if (v14)
  {
    v15 = *v28;
    do
    {
      v16 = 0;
      do
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v27 + 1) + 8 * v16);
        if (v5)
        {
          v26 = v6;
          v18 = [MEMORY[0x277CC6438] wrapperWithURL:v5 readonly:0 error:&v26];
          v19 = v26;

          v6 = v19;
        }

        else
        {
          v18 = 0;
        }

        (*(v17 + 16))(v17, v18, v6);

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  v20 = *(*(v23 + 32) + 112);
  v21 = [*(v23 + 40) path];
  v22 = [v21 lastPathComponent];
  [v20 removeObjectForKey:v22];

  objc_sync_exit(obj);
}

- (void)registerWaiterBlock:(id)block forShareURL:(id)l skipAcceptDialogs:(BOOL)dialogs
{
  dialogsCopy = dialogs;
  blockCopy = block;
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  shareAcceptWaitersByToken = selfCopy->_shareAcceptWaitersByToken;
  if (!shareAcceptWaitersByToken)
  {
    v12 = objc_opt_new();
    v13 = selfCopy->_shareAcceptWaitersByToken;
    selfCopy->_shareAcceptWaitersByToken = v12;

    shareAcceptWaitersByToken = selfCopy->_shareAcceptWaitersByToken;
  }

  path = [lCopy path];
  lastPathComponent = [path lastPathComponent];
  v16 = [(NSMutableDictionary *)shareAcceptWaitersByToken objectForKeyedSubscript:lastPathComponent];

  if (!v16)
  {
    v16 = objc_alloc_init(BRCShareAcceptWaiterInfo);
    v17 = selfCopy->_shareAcceptWaitersByToken;
    path2 = [lCopy path];
    lastPathComponent2 = [path2 lastPathComponent];
    [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:lastPathComponent2];
  }

  waiterBlocks = [(BRCShareAcceptWaiterInfo *)v16 waiterBlocks];
  v21 = MEMORY[0x22AA4A310](blockCopy);
  [waiterBlocks addObject:v21];

  [(BRCShareAcceptWaiterInfo *)v16 setSkipShareAcceptationDialogs:dialogsCopy];
  acceptWaiterTimer = selfCopy->_acceptWaiterTimer;
  if (acceptWaiterTimer)
  {
    dispatch_source_cancel(acceptWaiterTimer);
  }

  v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, selfCopy->_accountResumedQueue);
  v24 = selfCopy->_acceptWaiterTimer;
  selfCopy->_acceptWaiterTimer = v23;

  v25 = selfCopy->_acceptWaiterTimer;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __63__BRCDaemon_registerWaiterBlock_forShareURL_skipAcceptDialogs___block_invoke;
  v34[3] = &unk_2784FF450;
  v34[4] = selfCopy;
  v26 = v25;
  v27 = v34;
  v28 = v26;
  v29 = v27;
  v30 = v29;
  v31 = v29;
  if (*MEMORY[0x277CFB010])
  {
    v31 = (*MEMORY[0x277CFB010])(v29);
  }

  v32 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v31);
  dispatch_source_set_event_handler(v28, v32);

  v33 = dispatch_time(0, 15000000000);
  dispatch_source_set_timer(selfCopy->_acceptWaiterTimer, v33, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(selfCopy->_acceptWaiterTimer);

  objc_sync_exit(selfCopy);
}

void __63__BRCDaemon_registerWaiterBlock_forShareURL_skipAcceptDialogs___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v20 = *(a1 + 32);
  objc_sync_enter(v20);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = a1;
  v2 = [*(*(a1 + 32) + 112) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v3)
  {
    v23 = *v31;
    v4 = *MEMORY[0x277CBBF50];
    obj = v2;
    do
    {
      v24 = v3;
      for (i = 0; i != v24; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v30 + 1) + 8 * i);
        v7 = [*(*(v25 + 32) + 104) objectForKeyedSubscript:v6];
        v8 = v7 == 0;

        if (v8)
        {
          v9 = brc_bread_crumbs();
          v10 = brc_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v36 = v6;
            v37 = 2112;
            v38 = v9;
            _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] No accept operation found for key %@%@", buf, 0x16u);
          }

          v11 = [*(*(v25 + 32) + 112) objectForKeyedSubscript:v6];
          v28 = 0u;
          v29 = 0u;
          v26 = 0u;
          v27 = 0u;
          v22 = v11;
          v12 = [v11 waiterBlocks];
          v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v13)
          {
            v14 = *v27;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v26 + 1) + 8 * j);
                v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v4 code:11 userInfo:0];
                (*(v16 + 16))(v16, 0, v17);
              }

              v13 = [v12 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }

          [*(*(v25 + 32) + 112) removeObjectForKey:v6];
        }
      }

      v2 = obj;
      v3 = [obj countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v3);
  }

  v18 = *(v25 + 32);
  v19 = *(v18 + 120);
  *(v18 + 120) = 0;

  objc_sync_exit(v20);
}

- (void)dumpToContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSMutableDictionary *)selfCopy->_shareAcceptOperationsByToken count])
  {
    [contextCopy writeLineWithFormat:@"share accept operations"];
    [contextCopy writeLineWithFormat:@"-----------------------------------------------------"];
    [contextCopy pushIndentation];
    shareAcceptOperationsByToken = selfCopy->_shareAcceptOperationsByToken;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__BRCDaemon_dumpToContext___block_invoke;
    v8[3] = &unk_278501BD0;
    v7 = contextCopy;
    v9 = v7;
    [(NSMutableDictionary *)shareAcceptOperationsByToken enumerateKeysAndObjectsUsingBlock:v8];
    [v7 popIndentation];
    [v7 writeLineWithFormat:&stru_2837504F0];
  }

  objc_sync_exit(selfCopy);
}

void __27__BRCDaemon_dumpToContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 descriptionWithContext:v4];
  [v4 writeLineWithFormat:@" %@: %@", v5, v6];
}

- (void)localeDidChange
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Language changed, exiting%@", &v4, 0xCu);
  }

  exit(0);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v38 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  memset(v36, 0, sizeof(v36));
  __brc_create_section(0, "[BRCDaemon listener:shouldAcceptNewConnection:]", 905, 0, v36);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v28 = v36[0];
    v29 = geteuid();
    *buf = 134218754;
    *&buf[4] = v28;
    *&buf[12] = 2112;
    *&buf[14] = connectionCopy;
    *&buf[22] = 1024;
    *&buf[24] = v29;
    *&buf[28] = 2112;
    *&buf[30] = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx received new XPC connection: %@, for uid: %u%@", buf, 0x26u);
  }

  if (!self->_shouldRejectXPCCalls)
  {
    dispatch_sync(self->_xpcListenersReadyQueue, &__block_literal_global_128_0);
    v14 = +[BRCFileProviderDaemonUtils sharedInstance];
    [v14 boostFileProvider];

    dispatch_sync(self->_accountReadyQueue, &__block_literal_global_131);
    if (!self->_disableAccountChangesHandling)
    {
      v15 = +[BRCAccountsManager sharedManager];
      _isDeviceUnlocked = [v15 _isDeviceUnlocked];

      if ((_isDeviceUnlocked & 1) == 0)
      {
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        *buf = 138412290;
        *&buf[4] = v10;
        v12 = "[WARNING] Denying xpc connection because the device is locked%@";
        goto LABEL_6;
      }
    }

    v17 = [BRCClientPrivilegesDescriptor alloc];
    if (connectionCopy)
    {
      objc_msgSend_auditToken(connectionCopy);
    }

    else
    {
      memset(buf, 0, 32);
    }

    v10 = [(BRCClientPrivilegesDescriptor *)v17 initWithAuditToken:buf];
    v18 = +[BRCAccountsManager sharedManager];
    if ([v18 isInSyncBubble])
    {
      isSyncBubbleClientEntitled = [(BRCClientPrivilegesDescriptor *)v10 isSyncBubbleClientEntitled];

      if (!isSyncBubbleClientEntitled)
      {
        v11 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Denying xpc connection because the daemon is in the sync bubble%@", buf, 0xCu);
        }

        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
    }

    if (self->_tokenListener == listenerCopy)
    {
      v21 = [(BRCXPCClient *)[BRCXPCTokenClient alloc] initWithConnection:connectionCopy];
      BRCXPCTokenInterface();
    }

    else
    {
      [(BRCDaemon *)self waitOnAccountResumedQueue];
      v21 = [(BRCXPCClient *)[BRCXPCRegularIPCsClient alloc] initWithConnection:connectionCopy];
      BRCXPCInterface();
    }
    v22 = ;
    [connectionCopy setExportedInterface:v22];

    [(BRCXPCClient *)v21 setPrivilegesDescriptor:v10];
    v23 = [(BRCDaemon *)self getCurrentSessionMustFinishedLoading:1];
    [(BRCXPCClient *)v21 setSession:v23];

    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [BRCDaemon listener:shouldAcceptNewConnection:];
    }

    [connectionCopy setExportedObject:v21];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_135;
    v33[3] = &unk_278501BF8;
    v35 = connectionCopy;
    v26 = v21;
    p_super = &v26->super.super;
    [connectionCopy setInterruptionHandler:v33];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_2_141;
    v30[3] = &unk_278501C20;
    v11 = v26;
    v31 = v11;
    v32 = connectionCopy;
    [connectionCopy setInvalidationHandler:v30];
    [connectionCopy resume];

    v13 = 1;
    v20 = p_super;
    goto LABEL_27;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    v12 = "[NOTICE] Rejecting all XPC connections%@";
LABEL_6:
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
  }

LABEL_7:
  v13 = 0;
LABEL_28:

  __brc_leave_section(v36);
  return v13;
}

void *__48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_135(uint64_t a1)
{
  [*(a1 + 40) invalidate];
  result = [*(a1 + 32) dieOnInvalidate];
  if (result)
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"our connection was invalidated"];
    objc_claimAutoreleasedReturnValue();
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_135_cold_1();
    }

    brc_append_system_info_to_message();
    v5 = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCDaemon listener:shouldAcceptNewConnection:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/daemon/BRCDaemon.m", 953, v5);
  }

  return result;
}

void __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_2_141(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  __brc_create_section(0, "[BRCDaemon listener:shouldAcceptNewConnection:]_block_invoke_2", 957, 0, v5);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    *buf = 134218498;
    v7 = v5[0];
    v8 = 2112;
    v9 = v4;
    v10 = 2112;
    v11 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Client %@ connection was invalidated%@", buf, 0x20u);
  }

  [*(a1 + 40) setExportedObject:0];
  [*(a1 + 32) invalidate];
  __brc_leave_section(v5);
}

- (BOOL)selfCheck:(__sFILE *)check
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  currentSession = [(BRCDaemon *)self currentSession];
  clientDB = [currentSession clientDB];
  [clientDB performWithFlags:17 action:&__block_literal_global_145];
  v19 = 0;
  v6 = [currentSession newConnectionWithLabel:@"checker" readonly:0 error:&v19];
  v7 = v19;

  if (v6)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __23__BRCDaemon_selfCheck___block_invoke_149;
    v15 = &unk_278501C70;
    v17 = &v20;
    v16 = currentSession;
    checkCopy = check;
    [v6 groupInTransaction:&v12];
    [v6 brc_close];
    v8 = v16;
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      [BRCDaemon selfCheck:];
    }
  }

  v10 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v10;
}

uint64_t __23__BRCDaemon_selfCheck___block_invoke_149(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__BRCDaemon_selfCheck___block_invoke_2;
  v7[3] = &unk_278501C48;
  v9 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 enumerateServerZones:v7];

  return 0;
}

uint64_t __23__BRCDaemon_selfCheck___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 validateItemsLoggingToFile:a1[6] db:a1[4]];
  v5 = *(a1[5] + 8);
  if (v4)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 24) = v6 & 1;
  v7 = [v3 validateStructureLoggingToFile:a1[6] db:a1[4]];
  v8 = *(a1[5] + 8);
  if (v7)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  *(v8 + 24) = v9 & 1;
  v10 = [v3 validateItemsLoggingToFile:a1[6] db:a1[4]];
  v11 = *(a1[5] + 8);
  if (v10)
  {
    v12 = *(v11 + 24);
  }

  else
  {
    v12 = 0;
  }

  *(v11 + 24) = v12 & 1;
  v13 = [v3 validateStructureLoggingToFile:a1[6] db:a1[4]];
  v14 = *(a1[5] + 8);
  if (v13)
  {
    v15 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 24) = v15 & 1;

  return 1;
}

- (void)networkReachabilityChanged:(BOOL)changed
{
  changedCopy = changed;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCDaemon networkReachabilityChanged:];
  }

  v7 = BRNotificationNameForServerAvailabilityChanges();
  [v7 UTF8String];
  brc_notify_set_state_and_post();

  if (changedCopy)
  {
    dispatch_async(self->_startupQueue, &__block_literal_global_153);
  }
}

void __40__BRCDaemon_networkReachabilityChanged___block_invoke()
{
  v0 = +[BRCAccountsManager sharedManager];
  [v0 enumerateAccountHandlerIfFinishedLoading:&__block_literal_global_155_0];
}

void __40__BRCDaemon_networkReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277CC6300];
  v4 = a2;
  v5 = [v2 errorWithDomain:v3 code:-1004 userInfo:0];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCDaemon_networkReachabilityChanged___block_invoke_2_cold_1();
  }

  v8 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  [v8 signalErrorResolved:v5 completionHandler:&__block_literal_global_160];

  v9 = [v4 session];

  v10 = [v9 clientTruthWorkloop];

  if (v10)
  {
    v11 = [v9 clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__BRCDaemon_networkReachabilityChanged___block_invoke_161;
    block[3] = &unk_2784FF450;
    v13 = v9;
    dispatch_async(v11, block);
  }
}

void __40__BRCDaemon_networkReachabilityChanged___block_invoke_157(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCDaemon_networkReachabilityChanged___block_invoke_157_cold_1();
  }
}

- (void)handleExitSignal:(int)signal
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = strsignal(signal);
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] starting exit sequence because of received signal (%s)%@", &v11, 0x16u);
  }

  self->_shuttingDown = 1;
  v7 = +[BRCFileProviderDaemonUtils sharedInstance];
  [v7 interrupt];

  [(NSXPCListener *)self->_xpcListener invalidate];
  v8 = [(BRCDaemon *)self exitWithCode:0];
  [(BRCDaemon *)v8 exitWithCode:v9, v10];
}

- (void)exitWithCode:(int)code
{
  v9 = *MEMORY[0x277D85DE8];
  +[BRCAccountsManager sharedManager];
  [objc_claimAutoreleasedReturnValue() enumerateAccountHandlers:&__block_literal_global_167_0];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = code;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] exiting with code %d...%@", v6, 0x12u);
  }

  exit(code);
}

void __26__BRCDaemon_exitWithCode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 session];
  v3 = [v2 clientDB];

  if (v3)
  {
    v4 = [v3 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__BRCDaemon_exitWithCode___block_invoke_2;
    block[3] = &unk_2784FF450;
    v6 = v3;
    dispatch_sync(v4, block);
  }
}

- (void)performWithSessionForVolume:action:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v1, v2, 0x90u, v3, v4, 0x20u);
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_1(void *a1)
{
  LODWORD(v3) = 134218242;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx pushing purgeable update to cache delete%@", v3, DWORD2(v3));
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_1()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_3()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed to get volume path%@", v1, 0xCu);
}

void __18__BRCDaemon_start__block_invoke_cold_1()
{
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v3, v4, "[CRIT] Assertion failed: qos_class_self() == QOS_CLASS_DEFAULT%@", v5, v6, v7, v8);
  }
}

void __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_135_cold_1()
{
  OUTLINED_FUNCTION_18();
  v0 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);
}

- (void)selfCheck:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)networkReachabilityChanged:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v0 = BRNotificationNameForServerAvailabilityChanges();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x20u);
}

@end