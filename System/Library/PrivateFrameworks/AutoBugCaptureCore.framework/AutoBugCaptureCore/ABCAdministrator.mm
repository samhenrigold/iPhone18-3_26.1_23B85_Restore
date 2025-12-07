@interface ABCAdministrator
+ (id)sharedInstance;
- (ABCAdministrator)init;
- (id)getDiagnosticLiaison;
- (id)internalStateDictionary;
- (void)administrativelyDisableAutoBugCapture;
- (void)administrativelyEnableAutoBugCapture;
- (void)continueStartingAutoBugCapture;
- (void)deregisterIDS;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)persistentStoreControllerReadyForUse:(id)use;
- (void)prepareLogArchiveDirectory:(id)directory uid:(id)uid gid:(id)gid;
- (void)registerIDS;
- (void)scheduleDiagnosticsMaintenanceActivity;
- (void)shutdown;
- (void)startAutoBugCaptureAdministrative:(BOOL)administrative;
- (void)startAutoBugCaptureAdministrative:(BOOL)administrative parameters:(id)parameters;
- (void)startEssentialServices;
- (void)startUploadTaskScheduler;
- (void)startup;
- (void)stopAutoBugCapture:(BOOL)capture;
- (void)stopEssentialServices;
- (void)stopUploadTaskScheduler;
@end

@implementation ABCAdministrator

+ (id)sharedInstance
{
  if (sharedInstance_sharedInstancePred != -1)
  {
    +[ABCAdministrator sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_2;

  return v3;
}

uint64_t __34__ABCAdministrator_sharedInstance__block_invoke()
{
  if (IDSBAASignerErrorDomain_block_invoke_oncePred != -1)
  {
    __34__ABCAdministrator_sharedInstance__block_invoke_cold_1();
  }

  v0 = objc_alloc_init(ABCAdministrator);
  v1 = sharedInstance_sharedInstance_2;
  sharedInstance_sharedInstance_2 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __34__ABCAdministrator_sharedInstance__block_invoke_2()
{
  v0 = dispatch_semaphore_create(0);
  v1 = waitFirstUnlock;
  waitFirstUnlock = v0;

  v2 = MEMORY[0x277D85CD0];

  return notify_register_dispatch("com.apple.mobile.keybagd.first_unlock", &firstUnlockToken, v2, &__block_literal_global_10);
}

uint64_t __34__ABCAdministrator_sharedInstance__block_invoke_3()
{
  dispatch_semaphore_signal(waitFirstUnlock);
  v0 = firstUnlockToken;

  return notify_cancel(v0);
}

- (ABCAdministrator)init
{
  v7.receiver = self;
  v7.super_class = ABCAdministrator;
  v2 = [(ABCAdministrator *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("com.apple.autobugcapture.administration", v3);
    adminQueue = v2->adminQueue;
    v2->adminQueue = v4;

    v2->_autoBugCaptureState = 1;
  }

  return v2;
}

- (void)persistentStoreControllerReadyForUse:(id)use
{
  adminQueue = self->adminQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__ABCAdministrator_persistentStoreControllerReadyForUse___block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(adminQueue, block);
}

- (void)startEssentialServices
{
  v3 = objc_alloc_init(ABCConfigurationManager);
  [(ABCAdministrator *)self setConfigurationManager:v3];

  v4 = adminLogHandle([(ABCAdministrator *)self registerIDS]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Initializing AutoBugCapture XPC service", buf, 2u);
  }

  v5 = objc_alloc_init(DiagnosticsTransport);
  diagTransport = self->diagTransport;
  self->diagTransport = v5;

  configurationManager = [(ABCAdministrator *)self configurationManager];
  [configurationManager addObserver:self forKeyPath:@"autoBugCaptureEnabled" options:1 context:0];

  v9 = adminLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Initializing CacheDelete handlers", v11, 2u);
  }

  v10 = [[AutoBugCaptureCacheDelete alloc] initWithStorageManager:0];
  [(ABCAdministrator *)self setCacheDeleteHandler:v10];
}

- (void)stopEssentialServices
{
  deregisterIDS = [(ABCAdministrator *)self deregisterIDS];
  if (self->diagTransport)
  {
    v4 = adminLogHandle(deregisterIDS);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Stopping AutoBugCapture XPC services", buf, 2u);
    }

    [(DiagnosticsTransport *)self->diagTransport shutdown];
    diagTransport = self->diagTransport;
    self->diagTransport = 0;
  }

  configurationManager = [(ABCAdministrator *)self configurationManager];
  [configurationManager removeObserver:self forKeyPath:@"autoBugCaptureEnabled" context:0];

  [(ABCAdministrator *)self setConfigurationManager:0];
  cacheDeleteHandler = [(ABCAdministrator *)self cacheDeleteHandler];

  if (cacheDeleteHandler)
  {
    v9 = adminLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_INFO, "Stopping CacheDelete handlers", v10, 2u);
    }

    [(ABCAdministrator *)self setCacheDeleteHandler:0];
  }
}

- (id)getDiagnosticLiaison
{
  diagnosticLiaison = [(ABCAdministrator *)self diagnosticLiaison];

  if (!diagnosticLiaison)
  {
    v4 = objc_alloc_init(DiagnosticLiaison);
    [(ABCAdministrator *)self setDiagnosticLiaison:v4];
  }

  return [(ABCAdministrator *)self diagnosticLiaison];
}

- (void)registerIDS
{
  configurationManager = [(ABCAdministrator *)self configurationManager];
  autoBugCaptureAvailable = [configurationManager autoBugCaptureAvailable];

  if (autoBugCaptureAvailable)
  {
    getDiagnosticLiaison = [(ABCAdministrator *)self getDiagnosticLiaison];
    [getDiagnosticLiaison registerAdministrativeTransports];
  }
}

- (void)deregisterIDS
{
  diagnosticLiaison = [(ABCAdministrator *)self diagnosticLiaison];

  if (diagnosticLiaison)
  {
    diagnosticLiaison2 = [(ABCAdministrator *)self diagnosticLiaison];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __33__ABCAdministrator_deregisterIDS__block_invoke;
    v5[3] = &unk_278CEFE88;
    v5[4] = self;
    [diagnosticLiaison2 unregisterAllTransports:v5];
  }
}

- (void)scheduleDiagnosticsMaintenanceActivity
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v4[3] = 0;
  adminQueue = self->adminQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__ABCAdministrator_scheduleDiagnosticsMaintenanceActivity__block_invoke;
  v3[3] = &unk_278CF08D0;
  v3[4] = self;
  v3[5] = v4;
  [(ABCPeriodicMaintenanceActivity *)ABCDailyMaintenanceActivity registerPeriodicActivityWithIdentifier:@"Administrator.DailyCleanup" queue:adminQueue activity:v3];
  _Block_object_dispose(v4, 8);
}

uint64_t __58__ABCAdministrator_scheduleDiagnosticsMaintenanceActivity__block_invoke(uint64_t a1)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  [*(*(a1 + 32) + 96) cleanupDiagnosticCaseStorage];
  [*(*(a1 + 32) + 96) cleanupDiagnosticCaseSummary];
  [*(*(a1 + 32) + 96) cleanupUploadRecord];
  v2 = [*(*(a1 + 32) + 80) statsManager];
  [v2 cleanupDiagnosticCaseUsage];

  v3 = *(*(a1 + 32) + 80);

  return [v3 updateAverageCasesPerDay];
}

- (void)startUploadTaskScheduler
{
  cloudKitEnabled = [(ABCConfigurationManager *)self->_configurationManager cloudKitEnabled];
  v4 = cloudKitEnabled;
  v5 = adminLogHandle(cloudKitEnabled);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_INFO, "Scheduling periodic upload tasks", buf, 2u);
    }

    uploadController = self->_uploadController;
    if (uploadController)
    {
      [(CloudKitUploadController *)uploadController registerCloudKitUploadActivities];
      return;
    }

    v6 = adminLogHandle(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      v8 = "No log upload controller allocated. Cannot schedule periodic upload tasks!";
      v9 = v11;
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 0;
    v8 = "CloudKit uploading is not enabled";
    v9 = &v10;
LABEL_10:
    _os_log_impl(&dword_241804000, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  }
}

- (void)stopUploadTaskScheduler
{
  v2 = adminLogHandle(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_INFO, "Unscheduling periodic upload tasks", v3, 2u);
  }

  +[CloudKitUploadController unregisterCloudKitUploadActivities];
}

- (void)administrativelyEnableAutoBugCapture
{
  if (!self->_autoBugCaptureAdministrativelyEnabled)
  {
    self->_autoBugCaptureAdministrativelyEnabled = 1;
    v3 = adminLogHandle(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_241804000, v3, OS_LOG_TYPE_DEFAULT, "Administratively enabling AutoBugCapture", v4, 2u);
    }

    [(ABCAdministrator *)self startAutoBugCaptureAdministrative:1];
  }
}

- (void)administrativelyDisableAutoBugCapture
{
  if (self->_autoBugCaptureAdministrativelyEnabled)
  {
    v9 = v2;
    v10 = v3;
    self->_autoBugCaptureAdministrativelyEnabled = 0;
    v5 = adminLogHandle(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Administratively disabling AutoBugCapture", v8, 2u);
    }

    storageManager = [(ABCAdministrator *)self storageManager];
    [storageManager purgeAttachmentsForAllCases];

    caseManager = [(ABCAdministrator *)self caseManager];
    [caseManager resetDiagnosticCaseStorage];

    [(ABCAdministrator *)self stopAutoBugCapture:1];
  }
}

- (void)startAutoBugCaptureAdministrative:(BOOL)administrative
{
  administrativeCopy = administrative;
  v18 = *MEMORY[0x277D85DE8];
  v5 = adminLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v17[0]) = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Preparing to start AutoBugCapture...", v17, 2u);
  }

  v6 = MKBDeviceUnlockedSinceBoot();
  v7 = v6;
  v8 = adminLogHandle(v6);
  v9 = v8;
  if (v7 == 1)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17[0]) = 0;
      v10 = "Device is ready for AutoBugCapture";
      v11 = v9;
      v12 = OS_LOG_TYPE_INFO;
LABEL_14:
      _os_log_impl(&dword_241804000, v11, v12, v10, v17, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17[0]) = 0;
      _os_log_impl(&dword_241804000, v9, OS_LOG_TYPE_DEFAULT, "Device not yet ready. Waiting for first unlock...", v17, 2u);
    }

    dispatch_semaphore_wait(waitFirstUnlock, 0xFFFFFFFFFFFFFFFFLL);
    v13 = MKBDeviceUnlockedSinceBoot();
    if (v13 != 1)
    {
      v14 = v13;
      v15 = adminLogHandle(v13);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17[0] = 67109120;
        v17[1] = v14;
        _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_ERROR, "Unexpected first-unlock event, %d", v17, 8u);
      }
    }

    v9 = adminLogHandle(v13);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17[0]) = 0;
      v10 = "Device is now ready for AutoBugCapture";
      v11 = v9;
      v12 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }
  }

  autoBugCaptureConfig = [(ABCAdministrator *)self autoBugCaptureConfig];
  [(ABCAdministrator *)self startAutoBugCaptureAdministrative:administrativeCopy parameters:autoBugCaptureConfig];
}

- (void)startAutoBugCaptureAdministrative:(BOOL)administrative parameters:(id)parameters
{
  v23 = *MEMORY[0x277D85DE8];
  parametersCopy = parameters;
  v7 = adminLogHandle(parametersCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = parametersCopy;
    _os_log_impl(&dword_241804000, v7, OS_LOG_TYPE_INFO, "Starting AutoBugCapture with parameters: %@", buf, 0xCu);
  }

  if ([(ABCAdministrator *)self autoBugCaptureState]<= 1)
  {
    [(ABCAdministrator *)self setAutoBugCaptureState:2];
    logArchivePath = [(ABCConfigurationManager *)self->_configurationManager logArchivePath];
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[ABCConfigurationManager logArchiveUID](self->_configurationManager, "logArchiveUID")}];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[ABCConfigurationManager logArchiveGID](self->_configurationManager, "logArchiveGID")}];
    [(ABCAdministrator *)self prepareLogArchiveDirectory:logArchivePath uid:v9 gid:v10];

    v12 = adminLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "Initializing persistent storage", buf, 2u);
    }

    v13 = [ABCPersistentStoreController alloc];
    configurationManager = [(ABCAdministrator *)self configurationManager];
    databaseContainerPath = [configurationManager databaseContainerPath];
    v16 = [(ABCPersistentStoreController *)v13 initWithDirectory:databaseContainerPath];
    [(ABCAdministrator *)self setStoreController:v16];

    storeController = [(ABCAdministrator *)self storeController];
    [storeController setDelegate:self];

    getDiagnosticLiaison = [(ABCAdministrator *)self getDiagnosticLiaison];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __65__ABCAdministrator_startAutoBugCaptureAdministrative_parameters___block_invoke;
    v19[3] = &unk_278CF08F8;
    administrativeCopy = administrative;
    v19[4] = self;
    [getDiagnosticLiaison registerAutoBugCaptureTransports:v19];
  }
}

void __65__ABCAdministrator_startAutoBugCaptureAdministrative_parameters___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v7 = v1;
    v8 = v2;
    v4 = adminLogHandle(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEBUG, "ABC administratively enabled. Enabling ABC on remote devices.", v6, 2u);
    }

    v5 = [*(a1 + 32) diagnosticLiaison];
    [v5 remotelyEnableAutoBugCapture:&__block_literal_global_28];
  }
}

void __65__ABCAdministrator_startAutoBugCaptureAdministrative_parameters___block_invoke_26(uint64_t a1)
{
  v1 = adminLogHandle(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    *v2 = 0;
    _os_log_impl(&dword_241804000, v1, OS_LOG_TYPE_DEBUG, "Finished remotely enabling ABC.", v2, 2u);
  }
}

- (void)continueStartingAutoBugCapture
{
  autoBugCaptureState = [(ABCAdministrator *)self autoBugCaptureState];
  if (autoBugCaptureState == 2)
  {
    v4 = adminLogHandle(autoBugCaptureState);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&dword_241804000, v4, OS_LOG_TYPE_DEFAULT, "Initializing case management", v44, 2u);
    }

    v5 = [DiagnosticCaseManager alloc];
    storeController = [(ABCAdministrator *)self storeController];
    workspace = [storeController workspace];
    diagnosticLiaison = [(ABCAdministrator *)self diagnosticLiaison];
    v9 = [(DiagnosticCaseManager *)v5 initWithWorkspace:workspace liaison:diagnosticLiaison];
    [(ABCAdministrator *)self setCaseManager:v9];

    caseManager = [(ABCAdministrator *)self caseManager];
    [caseManager forceCloseDiagnosticCaseStorage];

    v12 = adminLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&dword_241804000, v12, OS_LOG_TYPE_DEFAULT, "Initializing diagnostic extension controller", v44, 2u);
    }

    v13 = objc_alloc_init(DiagnosticExtensionController);
    [(ABCAdministrator *)self setDiagExtensionController:v13];

    v15 = adminLogHandle(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "Initializing storage management", v44, 2u);
    }

    v16 = [DiagnosticStorageManager alloc];
    storeController2 = [(ABCAdministrator *)self storeController];
    logArchivePath = [(ABCConfigurationManager *)self->_configurationManager logArchivePath];
    v19 = [(DiagnosticStorageManager *)v16 initWithPersistentStoreController:storeController2 logArchiveDirectory:logArchivePath];
    [(ABCAdministrator *)self setStorageManager:v19];

    storageManager = [(ABCAdministrator *)self storageManager];
    caseManager2 = [(ABCAdministrator *)self caseManager];
    [caseManager2 setStorageDelegate:storageManager];

    cacheDeleteHandler = [(ABCAdministrator *)self cacheDeleteHandler];

    v24 = adminLogHandle(v23);
    cacheDeleteHandler3 = v24;
    if (cacheDeleteHandler)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&dword_241804000, cacheDeleteHandler3, OS_LOG_TYPE_DEFAULT, "Configuring CacheDelete handler with storage management", v44, 2u);
      }

      storageManager2 = [(ABCAdministrator *)self storageManager];
      cacheDeleteHandler2 = [(ABCAdministrator *)self cacheDeleteHandler];
      [cacheDeleteHandler2 setStorageManager:storageManager2];

      cacheDeleteHandler3 = [(ABCAdministrator *)self cacheDeleteHandler];
      [cacheDeleteHandler3 initCacheDeletePurgeMonitor];
    }

    else if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v44 = 0;
      _os_log_impl(&dword_241804000, cacheDeleteHandler3, OS_LOG_TYPE_ERROR, "CacheDelete handler is unexpectedly nil", v44, 2u);
    }

    configurationManager = [(ABCAdministrator *)self configurationManager];
    cloudKitEnabled = [configurationManager cloudKitEnabled];

    v31 = adminLogHandle(v30);
    v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    if (cloudKitEnabled)
    {
      if (v32)
      {
        *v44 = 0;
        _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEFAULT, "Initializing CloudKit upload controller", v44, 2u);
      }

      v33 = [CloudKitUploadController alloc];
      storeController3 = [(ABCAdministrator *)self storeController];
      workspace2 = [storeController3 workspace];
      v36 = [(CloudKitUploadController *)v33 initWithWorkspace:workspace2];
      uploadController = self->_uploadController;
      self->_uploadController = v36;

      startUploadTaskScheduler = [(ABCAdministrator *)self startUploadTaskScheduler];
    }

    else
    {
      if (v32)
      {
        *v44 = 0;
        _os_log_impl(&dword_241804000, v31, OS_LOG_TYPE_DEFAULT, "CloudKit upload is disabled - not initializing", v44, 2u);
      }

      startUploadTaskScheduler = [(ABCAdministrator *)self stopUploadTaskScheduler];
    }

    v39 = adminLogHandle(startUploadTaskScheduler);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&dword_241804000, v39, OS_LOG_TYPE_DEFAULT, "Completed startup of all AutoBugCapture services", v44, 2u);
    }

    [(ABCAdministrator *)self setAutoBugCaptureState:3];
    v40 = [[KernelMsgSignalHandlerSDXC alloc] init:self];
    kernelHandler = self->kernelHandler;
    self->kernelHandler = v40;

    v42 = self->kernelHandler;
    if (v42)
    {
      v42 = [(KernelMsgSignalHandlerSDXC *)v42 setupListener:self->adminQueue];
    }

    v43 = adminLogHandle(v42);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *v44 = 0;
      _os_log_impl(&dword_241804000, v43, OS_LOG_TYPE_DEFAULT, "Completed startup of KernelMsgSignalHandler", v44, 2u);
    }
  }
}

- (void)stopAutoBugCapture:(BOOL)capture
{
  captureCopy = capture;
  v5 = adminLogHandle(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Stopping AutoBugCapture services", buf, 2u);
  }

  kernelHandler = self->kernelHandler;
  if (kernelHandler)
  {
    [(KernelMsgSignalHandlerSDXC *)kernelHandler releaseHandler];
    v7 = self->kernelHandler;
    self->kernelHandler = 0;
  }

  v8 = adminLogHandle([(ABCAdministrator *)self setAutoBugCaptureState:4]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v24 = 0;
    _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_INFO, "Stopping XPC services", v24, 2u);
  }

  [(DiagnosticsTransport *)self->diagTransport shutdown];
  diagTransport = self->diagTransport;
  self->diagTransport = 0;

  v11 = adminLogHandle(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *v23 = 0;
    _os_log_impl(&dword_241804000, v11, OS_LOG_TYPE_INFO, "Stopping persistent storage", v23, 2u);
  }

  storeController = [(ABCAdministrator *)self storeController];
  [storeController shutdown];

  stopUploadTaskScheduler = [(ABCAdministrator *)self setStoreController:0];
  if (captureCopy)
  {
    diagnosticLiaison = [(ABCAdministrator *)self diagnosticLiaison];
    [diagnosticLiaison remotelyDisableAutoBugCapture:&__block_literal_global_34];

    stopUploadTaskScheduler = [(ABCAdministrator *)self stopUploadTaskScheduler];
  }

  v15 = adminLogHandle(stopUploadTaskScheduler);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_INFO, "Stopping case management", v22, 2u);
  }

  v16 = adminLogHandle([(ABCAdministrator *)self setCaseManager:0]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *v21 = 0;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_INFO, "Stopping storage management", v21, 2u);
  }

  v17 = adminLogHandle([(ABCAdministrator *)self setStorageManager:0]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *v20 = 0;
    _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_INFO, "Stopping diagnostic extension controller", v20, 2u);
  }

  v18 = adminLogHandle([(ABCAdministrator *)self setDiagExtensionController:0]);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *v19 = 0;
    _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_INFO, "Stopping CacheDelete handlers", v19, 2u);
  }

  [(ABCAdministrator *)self setCacheDeleteHandler:0];
  [(ABCAdministrator *)self setAutoBugCaptureState:1];
}

- (void)prepareLogArchiveDirectory:(id)directory uid:(id)uid gid:(id)gid
{
  v76 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  uidCopy = uid;
  gidCopy = gid;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v65 = 0;
  v11 = [defaultManager fileExistsAtPath:directoryCopy isDirectory:&v65];
  if (v65)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (!v11)
  {
    goto LABEL_19;
  }

  if ((v65 & 1) == 0)
  {
    v64 = 0;
    v14 = [defaultManager removeItemAtPath:directoryCopy error:&v64];
    v15 = v64;
    v16 = v15;
    if (v14)
    {
      v17 = adminLogHandle(v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = directoryCopy;
        v18 = "Successfully removed file at %@";
        v19 = v17;
        v20 = OS_LOG_TYPE_DEFAULT;
LABEL_17:
        _os_log_impl(&dword_241804000, v19, v20, v18, buf, 0xCu);
      }
    }

    else
    {
      v17 = adminLogHandle(v15);
      v21 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      if (v16)
      {
        if (v21)
        {
          localizedFailureReason = [v16 localizedFailureReason];
          *buf = 138412546;
          v73 = directoryCopy;
          v74 = 2112;
          v75 = localizedFailureReason;
          _os_log_impl(&dword_241804000, v17, OS_LOG_TYPE_ERROR, "Failed to remove file at %@. (%@)", buf, 0x16u);
        }

        goto LABEL_18;
      }

      if (v21)
      {
        *buf = 138412290;
        v73 = directoryCopy;
        v18 = "Failed to remove file at %@";
        v19 = v17;
        v20 = OS_LOG_TYPE_ERROR;
        goto LABEL_17;
      }
    }

LABEL_18:

LABEL_19:
    if (v12)
    {
      v13 = 0;
      goto LABEL_60;
    }

    v23 = 0;
    goto LABEL_22;
  }

  if (v65)
  {
    v13 = 0;
LABEL_32:
    v31 = [defaultManager attributesOfItemAtPath:directoryCopy error:0];
    v32 = v31;
    if (v31)
    {
      filePosixPermissions = [v31 filePosixPermissions];
      v33 = [v32 objectForKeyedSubscript:*MEMORY[0x277CCA158]];
      v34 = *MEMORY[0x277CCA118];
      v35 = [v32 objectForKeyedSubscript:*MEMORY[0x277CCA118]];
      v36 = [v33 isEqual:uidCopy];
      v60 = v35;
      v37 = [v35 isEqual:gidCopy];
      shortValue = [&unk_28537A050 shortValue];
      if (!v36 || !v37 || filePosixPermissions != shortValue)
      {
        v57 = shortValue;
        v58 = v33;
        v39 = storageLogHandle(shortValue);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_241804000, v39, OS_LOG_TYPE_DEFAULT, "Log archive directory path requires repairing...", buf, 2u);
        }

        if (v36)
        {
          if (v37)
          {
            v41 = 0;
          }

          else
          {
            v68 = v34;
            v69 = gidCopy;
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
            v62 = 0;
            v44 = [defaultManager setAttributes:v43 ofItemAtPath:directoryCopy error:&v62];
            v41 = v62;

            v46 = adminLogHandle(v45);
            v47 = v46;
            if (v44)
            {
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
              {
                shortValue2 = [gidCopy shortValue];
                *buf = 67109120;
                LODWORD(v73) = shortValue2;
                _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_DEFAULT, "Repaired group ownership to %d", buf, 8u);
              }
            }

            else if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              localizedFailureReason2 = [v41 localizedFailureReason];
              *buf = 138412546;
              v73 = directoryCopy;
              v74 = 2112;
              v75 = localizedFailureReason2;
              _os_log_impl(&dword_241804000, v47, OS_LOG_TYPE_ERROR, "Unable to fix group for %@: %@", buf, 0x16u);
            }
          }

          if (filePosixPermissions == v57)
          {
            v42 = v41;
          }

          else
          {
            v66 = *MEMORY[0x277CCA180];
            v67 = &unk_28537A050;
            v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
            v61 = v41;
            v51 = [defaultManager setAttributes:v50 ofItemAtPath:directoryCopy error:&v61];
            v42 = v61;

            v53 = adminLogHandle(v52);
            v54 = v53;
            if (v51)
            {
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
              {
                shortValue3 = [&unk_28537A050 shortValue];
                *buf = 67109120;
                LODWORD(v73) = shortValue3;
                _os_log_impl(&dword_241804000, v54, OS_LOG_TYPE_DEFAULT, "Repaired permission to %od", buf, 8u);
              }
            }

            else if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              localizedFailureReason3 = [v42 localizedFailureReason];
              *buf = 138412546;
              v73 = directoryCopy;
              v74 = 2112;
              v75 = localizedFailureReason3;
              _os_log_impl(&dword_241804000, v54, OS_LOG_TYPE_ERROR, "Unable to fix permission for %@: %@", buf, 0x16u);
            }
          }
        }

        else
        {
          v42 = adminLogHandle(v40);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v73 = directoryCopy;
            _os_log_impl(&dword_241804000, v42, OS_LOG_TYPE_ERROR, "Incorrect ownership for %@. (Log collection may not work correctly)", buf, 0xCu);
          }
        }

        v33 = v58;
      }
    }

    goto LABEL_60;
  }

  v23 = 1;
LABEL_22:
  v24 = *MEMORY[0x277CCA158];
  v70[0] = *MEMORY[0x277CCA180];
  v70[1] = v24;
  v71[0] = &unk_28537A050;
  v71[1] = uidCopy;
  v70[2] = *MEMORY[0x277CCA118];
  v71[2] = gidCopy;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:3];
  v63 = 0;
  v26 = [defaultManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:v25 error:&v63];
  v27 = v63;
  v13 = v27;
  if (v26)
  {

    goto LABEL_32;
  }

  v28 = adminLogHandle(v27);
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
  if (v13)
  {
    if (v29)
    {
      localizedFailureReason4 = [v13 localizedFailureReason];
      *buf = 138412546;
      v73 = directoryCopy;
      v74 = 2112;
      v75 = localizedFailureReason4;
      _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "Failed to create log archive directory at %@. (%@)", buf, 0x16u);
    }

    if (v23)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v29)
    {
      *buf = 138412290;
      v73 = directoryCopy;
      _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "Failed to create log archive directory at %@", buf, 0xCu);
    }

    v13 = 0;
    if (v23)
    {
      goto LABEL_32;
    }
  }

LABEL_60:
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  changeCopy = change;
  v10 = *MEMORY[0x277CCA2F0];
  v11 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
  v12 = [pathCopy isEqualToString:@"autoBugCaptureEnabled"];
  if (v12)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v13 = v11;
    v15 = adminLogHandle(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v23) = [v13 BOOLValue];
      _os_log_impl(&dword_241804000, v15, OS_LOG_TYPE_DEFAULT, "KVO: autoBugCaptureEnabled is %d", buf, 8u);
    }

    bOOLValue = [v13 BOOLValue];
    adminQueue = self->adminQueue;
    if (bOOLValue)
    {
      v18 = v21;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v19 = __67__ABCAdministrator_observeValueForKeyPath_ofObject_change_context___block_invoke;
    }

    else
    {
      v18 = v20;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v19 = __67__ABCAdministrator_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    }

    v18[2] = v19;
    v18[3] = &unk_278CEFE88;
    v18[4] = self;
    dispatch_async(adminQueue, v18);
  }

  else
  {
    v13 = adminLogHandle(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [changeCopy objectForKeyedSubscript:v10];
      *buf = 138412546;
      v23 = pathCopy;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_241804000, v13, OS_LOG_TYPE_DEBUG, "KVO: unknown keypath (%@) observed with value %@", buf, 0x16u);
    }
  }

LABEL_5:
}

- (void)startup
{
  adminQueue = self->adminQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__ABCAdministrator_startup__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(adminQueue, block);
}

uint64_t __27__ABCAdministrator_startup__block_invoke(uint64_t a1)
{
  v2 = adminLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEFAULT, "Starting up daemon", v7, 2u);
  }

  [*(a1 + 32) startEssentialServices];
  [*(a1 + 32) startMaintenanceServices];
  v3 = [*(a1 + 32) configurationManager];
  v4 = [v3 autoBugCaptureEnabled];

  v5 = *(a1 + 32);
  if (v4)
  {
    return [v5 startAutoBugCaptureAdministrative:0];
  }

  else
  {
    return [v5 stopUploadTaskScheduler];
  }
}

- (void)shutdown
{
  adminQueue = self->adminQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__ABCAdministrator_shutdown__block_invoke;
  block[3] = &unk_278CEFE88;
  block[4] = self;
  dispatch_async(adminQueue, block);
}

uint64_t __28__ABCAdministrator_shutdown__block_invoke(uint64_t a1)
{
  v2 = adminLogHandle(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_241804000, v2, OS_LOG_TYPE_DEFAULT, "Shutting down daemon", v4, 2u);
  }

  [*(a1 + 32) stopAutoBugCapture:0];
  [*(a1 + 32) stopMaintenanceServices];
  return [*(a1 + 32) stopEssentialServices];
}

- (id)internalStateDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:{-[ABCAdministrator autoBugCaptureState](self, "autoBugCaptureState") > 1}];
  [v3 setObject:v4 forKeyedSubscript:@"serviceEnabled"];

  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[ABCAdministrator autoBugCaptureState](self, "autoBugCaptureState")}];
  [v3 setObject:v5 forKeyedSubscript:@"serviceState"];

  v6 = MEMORY[0x277CCABB0];
  configurationManager = [(ABCAdministrator *)self configurationManager];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(configurationManager, "arbitratorDailyCountLimit")}];
  [v3 setObject:v8 forKeyedSubscript:@"dailyCaseLimit"];

  configurationManager2 = [(ABCAdministrator *)self configurationManager];
  LODWORD(configurationManager) = [configurationManager2 disableAPIRateLimit];

  if (configurationManager)
  {
    [v3 setObject:&unk_28537A068 forKeyedSubscript:@"apiRateLimit"];
    [v3 setObject:&unk_28537A068 forKeyedSubscript:@"apiLimitWindow"];
  }

  else
  {
    v10 = MEMORY[0x277CCABB0];
    configurationManager3 = [(ABCAdministrator *)self configurationManager];
    [configurationManager3 apiRateLimit];
    v12 = [v10 numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"apiRateLimit"];

    v13 = MEMORY[0x277CCABB0];
    configurationManager4 = [(ABCAdministrator *)self configurationManager];
    [configurationManager4 apiLimitWindow];
    v15 = [v13 numberWithDouble:?];
    [v3 setObject:v15 forKeyedSubscript:@"apiLimitWindow"];
  }

  v16 = MEMORY[0x277CCABB0];
  configurationManager5 = [(ABCAdministrator *)self configurationManager];
  v18 = [v16 numberWithBool:{objc_msgSend(configurationManager5, "cloudKitEnabled")}];
  [v3 setObject:v18 forKeyedSubscript:@"ckEnabled"];

  configurationManager6 = [(ABCAdministrator *)self configurationManager];
  LODWORD(configurationManager5) = [configurationManager6 cloudKitEnabled];

  if (configurationManager5)
  {
    configurationManager7 = [(ABCAdministrator *)self configurationManager];
    if ([configurationManager7 cloudKitSandboxEnvironment])
    {
      v21 = @"Sandbox";
    }

    else
    {
      v21 = @"Production";
    }

    [v3 setObject:v21 forKeyedSubscript:@"ckEnvironment"];

    configurationManager8 = [(ABCAdministrator *)self configurationManager];
    cloudKitContainerIdentifier = [configurationManager8 cloudKitContainerIdentifier];
    [v3 setObject:cloudKitContainerIdentifier forKeyedSubscript:@"ckContainerID"];

    configurationManager9 = [(ABCAdministrator *)self configurationManager];
    cloudKitInvernessService = [configurationManager9 cloudKitInvernessService];
    [v3 setObject:cloudKitInvernessService forKeyedSubscript:@"ckInvernessID"];

    v26 = MEMORY[0x277CCABB0];
    configurationManager10 = [(ABCAdministrator *)self configurationManager];
    [configurationManager10 cloudKitTimeoutIntervalForResource];
    v28 = [v26 numberWithDouble:?];
    [v3 setObject:v28 forKeyedSubscript:@"ckTimeoutForResource"];

    v29 = MEMORY[0x277CCABB0];
    configurationManager11 = [(ABCAdministrator *)self configurationManager];
    [configurationManager11 cloudKitTimeoutIntervalForRequest];
    v31 = [v29 numberWithDouble:?];
    [v3 setObject:v31 forKeyedSubscript:@"ckTimeoutForRequest"];

    v32 = MEMORY[0x277CCABB0];
    configurationManager12 = [(ABCAdministrator *)self configurationManager];
    v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(configurationManager12, "cloudKitFallbackMaximumLogCount")}];
    [v3 setObject:v34 forKeyedSubscript:@"ckUploadFallbackCount"];

    v35 = MEMORY[0x277CCABB0];
    configurationManager13 = [(ABCAdministrator *)self configurationManager];
    v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(configurationManager13, "maxCaseSummaryPerSubmission")}];
    [v3 setObject:v37 forKeyedSubscript:@"ckSummaryMaxPerSubmission"];

    v38 = MEMORY[0x277CCABB0];
    configurationManager14 = [(ABCAdministrator *)self configurationManager];
    v40 = [v38 numberWithUnsignedInteger:{objc_msgSend(configurationManager14, "submittedCaseSummaryRetentionDays")}];
    [v3 setObject:v40 forKeyedSubscript:@"ckSummarySubRetDays"];

    v41 = MEMORY[0x277CCABB0];
    configurationManager15 = [(ABCAdministrator *)self configurationManager];
    v43 = [v41 numberWithUnsignedInteger:{objc_msgSend(configurationManager15, "unsubmittedCaseSummaryRetentionDays")}];
    [v3 setObject:v43 forKeyedSubscript:@"ckSummaryUnsubRetDays"];
  }

  v44 = MEMORY[0x277CCABB0];
  configurationManager16 = [(ABCAdministrator *)self configurationManager];
  v46 = [v44 numberWithBool:{objc_msgSend(configurationManager16, "submitToDiagnosticPipeline")}];
  [v3 setObject:v46 forKeyedSubscript:@"dpSubmission"];

  v47 = MEMORY[0x277CCABB0];
  configurationManager17 = [(ABCAdministrator *)self configurationManager];
  [configurationManager17 diagnosticPipelineSubmissionRate];
  v49 = [v47 numberWithDouble:?];
  [v3 setObject:v49 forKeyedSubscript:@"dpSubmissionRate"];

  configurationManager18 = [(ABCAdministrator *)self configurationManager];
  LODWORD(configurationManager17) = [configurationManager18 arbitratorDisableDampening];

  if (configurationManager17)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"overrideDisableDampening"];
  }

  configurationManager19 = [(ABCAdministrator *)self configurationManager];
  disable_internal_build = [configurationManager19 disable_internal_build];
  [v3 setObject:disable_internal_build forKeyedSubscript:@"overrideDisableInternalBuild"];

  configurationManager20 = [(ABCAdministrator *)self configurationManager];
  carrier_seed_flag = [configurationManager20 carrier_seed_flag];
  [v3 setObject:carrier_seed_flag forKeyedSubscript:@"overrideCarrierSeed"];

  configurationManager21 = [(ABCAdministrator *)self configurationManager];
  seed_flag = [configurationManager21 seed_flag];
  [v3 setObject:seed_flag forKeyedSubscript:@"overrideSeedBuild"];

  configurationManager22 = [(ABCAdministrator *)self configurationManager];
  vendor_flag = [configurationManager22 vendor_flag];
  [v3 setObject:vendor_flag forKeyedSubscript:@"overrideVendorBuild"];

  configurationManager23 = [(ABCAdministrator *)self configurationManager];
  npi_flag = [configurationManager23 npi_flag];
  [v3 setObject:npi_flag forKeyedSubscript:@"overrideNPI"];

  v61 = +[SystemProperties sharedInstance];
  v62 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v61, "internalBuild")}];
  [v3 setObject:v62 forKeyedSubscript:@"internalBuild"];

  v63 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v61, "carrierBuild")}];
  [v3 setObject:v63 forKeyedSubscript:@"carrierBuild"];

  v64 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v61, "vendorBuild")}];
  [v3 setObject:v64 forKeyedSubscript:@"vendorBuild"];

  v65 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v61, "customerBuild")}];
  [v3 setObject:v65 forKeyedSubscript:@"customerBuild"];

  v66 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v61, "seedBuild")}];
  [v3 setObject:v66 forKeyedSubscript:@"seedBuild"];

  v67 = MEMORY[0x277CCABB0];
  configurationManager24 = [(ABCAdministrator *)self configurationManager];
  v69 = [v67 numberWithBool:{objc_msgSend(configurationManager24, "isAutomatedDeviceGroup")}];
  [v3 setObject:v69 forKeyedSubscript:@"automatedDeviceGroup"];

  v70 = MEMORY[0x277CCABB0];
  configurationManager25 = [(ABCAdministrator *)self configurationManager];
  v72 = [v70 numberWithBool:{objc_msgSend(configurationManager25, "hasAppleEmail")}];
  [v3 setObject:v72 forKeyedSubscript:@"hasAppleEmail"];

  v73 = MEMORY[0x277CCABB0];
  configurationManager26 = [(ABCAdministrator *)self configurationManager];
  v75 = [v73 numberWithBool:{objc_msgSend(configurationManager26, "isCarryDevice")}];
  [v3 setObject:v75 forKeyedSubscript:@"carryDevice"];

  caseManager = [(ABCAdministrator *)self caseManager];
  [caseManager addToInternalStateDictionary:v3];

  return v3;
}

@end