@interface SUCoreConfigServer
+ (id)_generateStateTable;
+ (id)allowedServerKeys;
+ (id)allowedServerProjects;
+ (id)persistedStateFilePath;
+ (id)sharedServerSettings;
+ (void)persistedStateFilePath;
- (SUCoreConfigServer)init;
- (id)_nextScanTimeFromDate:(id)date;
- (id)_stateSafeDetermineNextScanTime;
- (id)_stateSafeDownloadOptions;
- (id)_stateSafeLoadUUIDString;
- (id)_stateSafeSelectBestAssetFromArray:(id)array error:(id *)error;
- (id)_stateSafeSelectBestAssetFromMultipleAssetArray:(id)array bestAsset:(id *)asset selectionReason:(id *)reason;
- (id)scheduledActivityName;
- (int64_t)actionConfigAdjustSettings:(id)settings error:(id *)error;
- (int64_t)actionConfigDownloadAsset:(id)asset error:(id *)error;
- (int64_t)actionConfigDownloadCatalog:(id)catalog error:(id *)error;
- (int64_t)actionConfigQueryAsset:(id)asset error:(id *)error;
- (int64_t)actionConfigScheduleScan:(id)scan error:(id *)error;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)_stateSafeInformDelegatesOfConfiguration:(id)configuration error:(id)error;
- (void)_stateSafeResetState;
- (void)_stateSafeSendInstalledEventWithSuccess:(BOOL)success error:(id)error;
- (void)_stateSafeSendNewEvent:(id)event success:(BOOL)success error:(id)error;
- (void)_stateSafeSendScheduledEventWithSuccess:(BOOL)success error:(id)error;
- (void)_stateSafeUpdateState;
- (void)dealloc;
- (void)installServerSettings;
- (void)listenForConfigChanges:(id)changes withName:(id)name;
@end

@implementation SUCoreConfigServer

+ (id)sharedServerSettings
{
  if (sharedServerSettings_onceInit != -1)
  {
    +[SUCoreConfigServer sharedServerSettings];
  }

  v3 = sharedServerSettings___sharedConfig;

  return v3;
}

uint64_t __42__SUCoreConfigServer_sharedServerSettings__block_invoke()
{
  sharedServerSettings___sharedConfig = objc_alloc_init(SUCoreConfigServer);

  return MEMORY[0x2821F96F8]();
}

- (SUCoreConfigServer)init
{
  v37.receiver = self;
  v37.super_class = SUCoreConfigServer;
  v2 = [(SUCoreConfigServer *)&v37 init];
  v3 = v2;
  if (v2)
  {
    uuidString = v2->_uuidString;
    v2->_uuidString = 0;

    lastScanTime = v3->_lastScanTime;
    v3->_lastScanTime = 0;

    lastLocatedAsset = v3->_lastLocatedAsset;
    v3->_lastLocatedAsset = 0;

    timer = v3->_timer;
    v3->_timer = 0;

    stateMachine = v3->_stateMachine;
    v3->_stateMachine = 0;

    persistedState = v3->_persistedState;
    v3->_persistedState = 0;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    listenerDelegates = v3->_listenerDelegates;
    v3->_listenerDelegates = v10;

    v12 = objc_alloc(MEMORY[0x277D64408]);
    v13 = [v12 initWithProjectName:*MEMORY[0x277D64540]];
    coreConfig = v3->_coreConfig;
    v3->_coreConfig = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("SUCoreConfigClientDelegateQueue", v15);
    clientDelegateQueue = v3->_clientDelegateQueue;
    v3->_clientDelegateQueue = v16;

    v18 = +[SUCoreConfigServer _generateStateTable];
    v19 = [objc_alloc(MEMORY[0x277D64458]) initMachine:@"SUCoreConfigServer" withTable:v18 startingIn:@"ConfigIdle"];
    v20 = v3->_stateMachine;
    v3->_stateMachine = v19;

    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __26__SUCoreConfigServer_init__block_invoke;
    v35 = &unk_27892E6F8;
    v36 = v3;
    [v18 enumerateKeysAndObjectsUsingBlock:&v32];
    v21 = objc_alloc(MEMORY[0x277D64478]);
    extendedStateQueue = [(SUCoreFSM *)v3->_stateMachine extendedStateQueue];
    v23 = +[SUCoreConfigServer persistedStateFilePath];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = @"/private/var/tmp/SUCoreConfig.state";
    }

    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1, v32, v33, v34, v35];
    v27 = [v21 initWithDispatchQueue:extendedStateQueue withPersistencePath:v25 forPolicyVersion:v26];
    v28 = v3->_persistedState;
    v3->_persistedState = v27;

    [(SUCoreFSM *)v3->_stateMachine activateMachine];
    v29 = v3->_stateMachine;
    v30 = objc_alloc_init(SUCoreConfigParam);
    [(SUCoreFSM *)v29 postEvent:@"ConfigAPIInstall" withInfo:v30];
  }

  return v3;
}

void __26__SUCoreConfigServer_init__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__SUCoreConfigServer_init__block_invoke_2;
  v7[3] = &unk_27892E6D0;
  v8 = *(a1 + 32);
  v9 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __26__SUCoreConfigServer_init__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *MEMORY[0x277D644B8];
  v6 = a2;
  v7 = [a3 safeStringForKey:v5];
  [*(*(a1 + 32) + 72) registerAction:v7 ForEvent:v6 inState:*(a1 + 40) usingDelegate:*(a1 + 32) withInfoClass:objc_opt_class()];
}

- (void)dealloc
{
  timer = [(SUCoreConfigServer *)self timer];
  [timer invalidate];

  v4.receiver = self;
  v4.super_class = SUCoreConfigServer;
  [(SUCoreConfigServer *)&v4 dealloc];
}

- (void)installServerSettings
{
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] API: Install server settings API request issued; posting install event", v7, 2u);
  }

  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  v6 = objc_alloc_init(SUCoreConfigParam);
  [stateMachine postEvent:@"ConfigAPIInstall" withInfo:v6];
}

- (void)listenForConfigChanges:(id)changes withName:(id)name
{
  changesCopy = changes;
  nameCopy = name;
  v8 = changesCopy;
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SUCoreConfigServer_listenForConfigChanges_withName___block_invoke;
  block[3] = &unk_27892D340;
  v14 = v8;
  v15 = nameCopy;
  selfCopy = self;
  v11 = nameCopy;
  v12 = v8;
  dispatch_async(extendedStateQueue, block);
}

void __54__SUCoreConfigServer_listenForConfigChanges_withName___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D64460] sharedLogger];
  v3 = [v2 oslog];

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"YES";
    v5 = *(a1 + 40);
    if (!*(a1 + 32))
    {
      v4 = @"NO";
    }

    v12 = 138543618;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    _os_log_impl(&dword_23193C000, v3, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] API: Adding listener delegate (present=%{public}@) with name: %{public}@", &v12, 0x16u);
  }

  v6 = [*(a1 + 48) listenerDelegates];
  [v6 setSafeObject:*(a1 + 32) forKey:*(a1 + 40)];

  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [*(a1 + 48) listenerDelegates];
    v10 = [v9 allKeys];
    v11 = [v10 componentsJoinedByString:{@", "}];
    v12 = 138543362;
    v13 = v11;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] API: Known listeners still active: %{public}@", &v12, 0xCu);
  }
}

- (id)scheduledActivityName
{
  if (scheduledActivityName_onceToken != -1)
  {
    [SUCoreConfigServer scheduledActivityName];
  }

  v3 = scheduledActivityName___activityName;

  return v3;
}

void __43__SUCoreConfigServer_scheduledActivityName__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v0 bundleIdentifier];

  v1 = @"SUCoreConfigScheduledScan";
  if (v3)
  {
    v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v3, @"SUCoreConfigScheduledScan"];
  }

  v2 = scheduledActivityName___activityName;
  scheduledActivityName___activityName = v1;
}

+ (id)allowedServerProjects
{
  if (allowedServerProjects_onceToken != -1)
  {
    +[SUCoreConfigServer allowedServerProjects];
  }

  v3 = allowedServerProjects___allowedProjects;

  return v3;
}

void __43__SUCoreConfigServer_allowedServerProjects__block_invoke()
{
  v5[6] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D64550];
  v5[0] = *MEMORY[0x277D64540];
  v5[1] = v0;
  v1 = *MEMORY[0x277D64548];
  v5[2] = *MEMORY[0x277D64538];
  v5[3] = v1;
  v2 = *MEMORY[0x277D64530];
  v5[4] = *MEMORY[0x277D64528];
  v5[5] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:6];
  v4 = allowedServerProjects___allowedProjects;
  allowedServerProjects___allowedProjects = v3;
}

+ (id)allowedServerKeys
{
  if (allowedServerKeys_onceToken != -1)
  {
    +[SUCoreConfigServer allowedServerKeys];
  }

  v3 = allowedServerKeys___allowedKeys;

  return v3;
}

void __39__SUCoreConfigServer_allowedServerKeys__block_invoke()
{
  v7[10] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D64510];
  v7[0] = *MEMORY[0x277D64500];
  v7[1] = v0;
  v1 = *MEMORY[0x277D644E8];
  v7[2] = *MEMORY[0x277D644C0];
  v7[3] = v1;
  v2 = *MEMORY[0x277D644D0];
  v7[4] = *MEMORY[0x277D644C8];
  v7[5] = v2;
  v3 = *MEMORY[0x277D644E0];
  v7[6] = *MEMORY[0x277D644D8];
  v7[7] = v3;
  v4 = *MEMORY[0x277D644F8];
  v7[8] = *MEMORY[0x277D64520];
  v7[9] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:10];
  v6 = allowedServerKeys___allowedKeys;
  allowedServerKeys___allowedKeys = v5;
}

+ (id)persistedStateFilePath
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v3 = [defaultManager fileExistsAtPath:@"/var/MobileSoftwareUpdate/Controller/SoftwareUpdateCore"];

  if ((v3 & 1) != 0 || ([MEMORY[0x277CCAA00] defaultManager], v4 = objc_claimAutoreleasedReturnValue(), v10 = 0, objc_msgSend(v4, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", @"/var/MobileSoftwareUpdate/Controller/SoftwareUpdateCore", 1, 0, &v10), v5 = v10, v4, !v5))
  {
    v8 = [@"/var/MobileSoftwareUpdate/Controller/SoftwareUpdateCore" stringByAppendingPathComponent:@"SUCoreConfig.state"];
  }

  else
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      +[(SUCoreConfigServer *)v5];
    }

    v8 = 0;
  }

  return v8;
}

+ (id)_generateStateTable
{
  v80[7] = *MEMORY[0x277D85DE8];
  v79[0] = @"ConfigIdle";
  v77 = @"ConfigAPIInstall";
  v3 = *MEMORY[0x277D644B8];
  v75[0] = *MEMORY[0x277D64800];
  v2 = v75[0];
  v75[1] = v3;
  v76[0] = @"ConfigScheduled";
  v76[1] = @"ConfigScheduleScan";
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v78 = v30;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
  v80[0] = v29;
  v79[1] = @"ConfigDownloadingCatalog";
  v73[0] = @"ConfigAPIInstall";
  v71 = v3;
  v72 = *MEMORY[0x277D647D0];
  v4 = v72;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v74[0] = v28;
  v73[1] = @"ConfigPhaseComplete";
  v69[0] = v2;
  v69[1] = v3;
  v70[0] = @"ConfigQueryingAsset";
  v70[1] = @"ConfigQueryAsset";
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v74[1] = v27;
  v73[2] = @"ConfigPhaseFailed";
  v67[0] = v2;
  v67[1] = v3;
  v68[0] = @"ConfigScheduled";
  v68[1] = @"ConfigScheduleScan";
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:v67 count:2];
  v74[2] = v26;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:3];
  v80[1] = v25;
  v79[2] = @"ConfigQueryingAsset";
  v65[0] = @"ConfigAPIInstall";
  v63 = v3;
  v64 = v4;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v66[0] = v24;
  v65[1] = @"ConfigPhaseComplete";
  v61[0] = v2;
  v61[1] = v3;
  v62[0] = @"ConfigDownloadingAsset";
  v62[1] = @"ConfigDownloadAsset";
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:v61 count:2];
  v66[1] = v23;
  v65[2] = @"ConfigPhaseFailed";
  v59[0] = v2;
  v59[1] = v3;
  v60[0] = @"ConfigScheduled";
  v60[1] = @"ConfigScheduleScan";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v66[2] = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:3];
  v80[2] = v21;
  v79[3] = @"ConfigDownloadingAsset";
  v56 = v4;
  v57[0] = @"ConfigAPIInstall";
  v55 = v3;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v58[0] = v20;
  v57[1] = @"ConfigPhaseComplete";
  v53[0] = v2;
  v53[1] = v3;
  v54[0] = @"ConfigAdjusting";
  v54[1] = @"ConfigAdjustSettings";
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
  v58[1] = v19;
  v57[2] = @"ConfigPhaseFailed";
  v51[0] = v2;
  v51[1] = v3;
  v52[0] = @"ConfigScheduled";
  v52[1] = @"ConfigScheduleScan";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
  v58[2] = v18;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
  v80[3] = v17;
  v79[4] = @"ConfigAdjusting";
  v48 = v4;
  v49[0] = @"ConfigAPIInstall";
  v47 = v3;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
  v50[0] = v16;
  v49[1] = @"ConfigPhaseComplete";
  v45[0] = v2;
  v45[1] = v3;
  v46[0] = @"ConfigScheduled";
  v46[1] = @"ConfigScheduleScan";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v50[1] = v5;
  v49[2] = @"ConfigPhaseFailed";
  v43[0] = v2;
  v43[1] = v3;
  v44[0] = @"ConfigScheduled";
  v44[1] = @"ConfigScheduleScan";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v50[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:3];
  v80[4] = v7;
  v79[5] = @"ConfigScheduled";
  v39[0] = v2;
  v39[1] = v3;
  v40[0] = @"ConfigDownloadingCatalog";
  v40[1] = @"ConfigDownloadCatalog";
  v41[0] = @"ConfigAPIInstall";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v42[0] = v8;
  v41[1] = @"ConfigPhaseComplete";
  v37 = v3;
  v38 = @"ConfigScheduleScan";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  v42[1] = v9;
  v41[2] = @"ConfigPhaseFailed";
  v35 = v3;
  v36 = @"ConfigScheduleScan";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  v42[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:3];
  v80[5] = v11;
  v79[6] = *MEMORY[0x277D647E8];
  v33 = *MEMORY[0x277D647E0];
  v31 = v2;
  v32 = *MEMORY[0x277D647F0];
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
  v34 = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  v80[6] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:7];

  return v14;
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  infoCopy = info;
  if ([actionCopy isEqualToString:*MEMORY[0x277D647D0]])
  {
    v13 = 0;
  }

  else
  {
    if ([actionCopy isEqualToString:@"ConfigDownloadCatalog"])
    {
      v14 = [(SUCoreConfigServer *)self actionConfigDownloadCatalog:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ConfigQueryAsset"])
    {
      v14 = [(SUCoreConfigServer *)self actionConfigQueryAsset:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ConfigDownloadAsset"])
    {
      v14 = [(SUCoreConfigServer *)self actionConfigDownloadAsset:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ConfigAdjustSettings"])
    {
      v14 = [(SUCoreConfigServer *)self actionConfigAdjustSettings:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ConfigScheduleScan"])
    {
      v14 = [(SUCoreConfigServer *)self actionConfigScheduleScan:infoCopy error:error];
    }

    else
    {
      v14 = [(SUCoreConfigServer *)self actionUnknownAction:actionCopy error:error];
    }

    v13 = v14;
  }

  return v13;
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  v6 = MEMORY[0x277D643F8];
  actionCopy = action;
  sharedCore = [v6 sharedCore];
  v9 = MEMORY[0x277CCACA8];
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  copyCurrentStateProtected = [stateMachine copyCurrentStateProtected];
  v12 = [v9 stringWithFormat:@"SUCoreConfig Unknown Action %@ for state %@", actionCopy, copyCurrentStateProtected];

  v13 = [sharedCore buildError:8102 underlying:0 description:v12];

  mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
  localizedDescription = [v13 localizedDescription];
  [mEMORY[0x277D64428] trackAnomaly:@"SUCoreConfig" forReason:localizedDescription withResult:objc_msgSend(v13 withError:{"code"), v13}];

  if (error)
  {
    v16 = v13;
    *error = v13;
  }

  return 8102;
}

- (int64_t)actionConfigDownloadCatalog:(id)catalog error:(id *)error
{
  v12 = *MEMORY[0x277D85DE8];
  [(SUCoreConfigServer *)self _stateSafeResetState:catalog];
  _stateSafeDownloadOptions = [(SUCoreConfigServer *)self _stateSafeDownloadOptions];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = _stateSafeDownloadOptions;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Catalog: Starting download of configuration asset catalog with options: %{public}@", buf, 0xCu);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__SUCoreConfigServer_actionConfigDownloadCatalog_error___block_invoke;
  v9[3] = &unk_27892E5A8;
  v9[4] = self;
  [MEMORY[0x277D289C0] startCatalogDownload:@"com.apple.MobileAsset.SoftwareUpdateConfiguration" options:_stateSafeDownloadOptions completionWithError:v9];

  return 0;
}

void __56__SUCoreConfigServer_actionConfigDownloadCatalog_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x2383741D0](a2);
    v15 = 138543618;
    v16 = v8;
    v17 = 2048;
    v18 = a2;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Catalog: Catalog download completed with MADownloadResult: %{public}@ (%ld)", &v15, 0x16u);
  }

  if (a2)
  {
    v9 = [MEMORY[0x277D643F8] sharedCore];
    v10 = [v9 buildError:8400 underlying:v5 description:@"Software update configuration catalog download failed"];

    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __56__SUCoreConfigServer_actionConfigDownloadCatalog_error___block_invoke_cold_1();
    }

    v13 = [*(a1 + 32) stateMachine];
    v14 = [[SUCoreConfigParam alloc] initWithError:v10 operation:1];
    [(SUCoreConfigParam *)v13 postEvent:@"ConfigPhaseFailed" withInfo:v14];
  }

  else
  {
    v10 = [*(a1 + 32) stateMachine];
    v13 = objc_alloc_init(SUCoreConfigParam);
    [v10 postEvent:@"ConfigPhaseComplete" withInfo:v13];
  }
}

- (int64_t)actionConfigQueryAsset:(id)asset error:(id *)error
{
  v80[2] = *MEMORY[0x277D85DE8];
  v70 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"|"];
  v4 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.SoftwareUpdateConfiguration"];
  null = [MEMORY[0x277CBEB68] null];
  v80[0] = null;
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  buildVersion = [mEMORY[0x277D64418] buildVersion];
  v80[1] = buildVersion;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v80 count:2];
  v9 = [v8 mutableCopy];
  [v4 addKeyValueArray:@"PrerequisiteBuilds" with:v9];

  null2 = [MEMORY[0x277CBEB68] null];
  v79[0] = null2;
  mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
  productVersion = [mEMORY[0x277D64418]2 productVersion];
  v79[1] = productVersion;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:2];
  v14 = [v13 mutableCopy];
  [v4 addKeyValueArray:@"PrerequisiteOSVersions" with:v14];

  null3 = [MEMORY[0x277CBEB68] null];
  v78[0] = null3;
  mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
  hwModelString = [mEMORY[0x277D64418]3 hwModelString];
  v78[1] = hwModelString;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:2];
  v19 = [v18 mutableCopy];
  [v4 addKeyValueArray:@"SupportedDeviceModels" with:v19];

  null4 = [MEMORY[0x277CBEB68] null];
  v77[0] = null4;
  mEMORY[0x277D64418]4 = [MEMORY[0x277D64418] sharedDevice];
  buildVersion2 = [mEMORY[0x277D64418]4 buildVersion];
  v77[1] = buildVersion2;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v77 count:2];
  v24 = [v23 componentsJoinedByString:{@", "}];
  [v70 appendFormat:@"%@:%@|", @"PrerequisiteBuilds", v24];

  null5 = [MEMORY[0x277CBEB68] null];
  v76[0] = null5;
  mEMORY[0x277D64418]5 = [MEMORY[0x277D64418] sharedDevice];
  productVersion2 = [mEMORY[0x277D64418]5 productVersion];
  v76[1] = productVersion2;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  v29 = [v28 componentsJoinedByString:{@", "}];
  [v70 appendFormat:@"%@:%@|", @"PrerequisiteOSVersions", v29];

  null6 = [MEMORY[0x277CBEB68] null];
  v75[0] = null6;
  mEMORY[0x277D64418]6 = [MEMORY[0x277D64418] sharedDevice];
  hwModelString2 = [mEMORY[0x277D64418]6 hwModelString];
  v75[1] = hwModelString2;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  v34 = [v33 componentsJoinedByString:{@", "}];
  [v70 appendFormat:@"%@:%@|", @"SupportedDeviceModels", v34];

  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
  [v4 addKeyValuePair:@"_CompatibilityVersion" with:v35];

  mEMORY[0x277D64418]7 = [MEMORY[0x277D64418] sharedDevice];
  deviceClass = [mEMORY[0x277D64418]7 deviceClass];
  [v4 addKeyValuePair:@"Device" with:deviceClass];

  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
  [v70 appendFormat:@"%@:%@|", @"_CompatibilityVersion", v38];

  mEMORY[0x277D64418]8 = [MEMORY[0x277D64418] sharedDevice];
  deviceClass2 = [mEMORY[0x277D64418]8 deviceClass];
  [v70 appendFormat:@"%@:%@|", @"Device", deviceClass2];

  mEMORY[0x277D64418]9 = [MEMORY[0x277D64418] sharedDevice];
  releaseType = [mEMORY[0x277D64418]9 releaseType];

  if (releaseType)
  {
    mEMORY[0x277D64418]10 = [MEMORY[0x277D64418] sharedDevice];
    releaseType2 = [mEMORY[0x277D64418]10 releaseType];
    [v4 addKeyValuePair:@"ReleaseType" with:releaseType2];

    mEMORY[0x277D64418]11 = [MEMORY[0x277D64418] sharedDevice];
    releaseType3 = [mEMORY[0x277D64418]11 releaseType];
    [v70 appendFormat:@"%@:%@|", @"ReleaseType", releaseType3];
  }

  else
  {
    [v4 addKeyValueNull:@"ReleaseType"];
    [v70 appendFormat:@"%@:Customer(null)|", @"ReleaseType"];
  }

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    mEMORY[0x277D64418]12 = [MEMORY[0x277D64418] sharedDevice];
    *buf = 67109378;
    *v74 = 1;
    *&v74[4] = 2114;
    *&v74[6] = mEMORY[0x277D64418]12;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Query: Current device state (COMPATIBILITY_VERSION:%d): %{public}@", buf, 0x12u);
  }

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v74 = v70;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Query: Starting metadata query: %{public}@", buf, 0xCu);
  }

  queryMetaDataSync = [v4 queryMetaDataSync];
  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    v55 = MEMORY[0x2383741E0](queryMetaDataSync);
    *buf = 138543618;
    *v74 = v55;
    *&v74[8] = 2048;
    *&v74[10] = queryMetaDataSync;
    _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Query: Metadata query completed with result: %{public}@ %ld", buf, 0x16u);
  }

  if (queryMetaDataSync)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v57 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.MobileAssetError.Query" code:queryMetaDataSync userInfo:0];
    v58 = [mEMORY[0x277D643F8] buildError:8401 underlying:v57 description:@"No available configuration assets found (failed to query metadata)"];

    v59 = 0;
  }

  else
  {
    mEMORY[0x277D643F8] = [v4 results];
    v72 = 0;
    v59 = [(SUCoreConfigServer *)self _stateSafeSelectBestAssetFromArray:mEMORY[0x277D643F8] error:&v72];
    v58 = v72;
  }

  if (v58)
  {
    mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
    oslog4 = [mEMORY[0x277D64460]4 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConfigServer actionConfigQueryAsset:error:];
    }

    stateMachine = [(SUCoreConfigServer *)self stateMachine];
    v63 = [[SUCoreConfigParam alloc] initWithError:v58 operation:1];
    [stateMachine postEvent:@"ConfigPhaseFailed" withInfo:v63];

    if (error)
    {
      v64 = v58;
      *error = v58;
    }

    code = [v58 code];
  }

  else
  {
    stateMachine2 = [(SUCoreConfigServer *)self stateMachine];
    v67 = [[SUCoreConfigParam alloc] initWithLocatedAsset:v59];
    [stateMachine2 followupEvent:@"ConfigPhaseComplete" withInfo:v67];

    code = 0;
  }

  return code;
}

- (id)_stateSafeSelectBestAssetFromArray:(id)array error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  if (!arrayCopy)
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v12 = mEMORY[0x277D643F8];
    v13 = @"No available configuration assets found (query not present)";
    v14 = 8402;
    goto LABEL_7;
  }

  if (![arrayCopy count])
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v12 = mEMORY[0x277D643F8];
    v13 = @"No available configuration assets found (query returned no assets)";
    v14 = 8406;
LABEL_7:
    v15 = [mEMORY[0x277D643F8] buildError:v14 underlying:0 description:v13];

    v10 = 0;
    v9 = 0;
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if ([arrayCopy count] == 1)
  {
    v9 = [arrayCopy objectAtIndex:0];
    v10 = @"OnlyAsset";
LABEL_13:
    [(SUCoreConfigServer *)self setLastLocatedAsset:v9];
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      attributes = [v9 attributes];
      *buf = 138543874;
      v27 = v10;
      v28 = 2114;
      v29 = v9;
      v30 = 2114;
      v31 = attributes;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: Located asset (reason: '%{public}@'): %{public}@; attributes: %{public}@", buf, 0x20u);
    }

    v15 = 0;
    goto LABEL_16;
  }

  v24 = 0;
  v25 = 0;
  v15 = [(SUCoreConfigServer *)self _stateSafeSelectBestAssetFromMultipleAssetArray:arrayCopy bestAsset:&v25 selectionReason:&v24];
  v9 = v25;
  v10 = v24;
  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_8:
  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v15;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: Failed to locate asset with error: %{public}@", buf, 0xCu);
  }

  if (error)
  {
    v18 = v15;
    *error = v15;
  }

LABEL_16:
  v22 = v9;

  return v9;
}

- (id)_stateSafeSelectBestAssetFromMultipleAssetArray:(id)array bestAsset:(id *)asset selectionReason:(id *)reason
{
  arrayCopy = array;
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  *asset = 0;
  *reason = 0;
  v11 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_461];
  v12 = [arrayCopy filteredArrayUsingPredicate:v11];

  if ([v12 count])
  {
    [v12 objectAtIndex:0];
    *asset = v13 = 0;
    v14 = @"FullMatch";
LABEL_3:
    *reason = v14;
    goto LABEL_7;
  }

  v15 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_467];
  v16 = [arrayCopy filteredArrayUsingPredicate:v15];

  if ([v16 count])
  {
    [v16 objectAtIndex:0];
    *asset = v13 = 0;
    v17 = @"BuildVersion&HWModelStr";
LABEL_6:
    *reason = v17;
    v12 = v16;
    goto LABEL_7;
  }

  v19 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_473];
  v12 = [arrayCopy filteredArrayUsingPredicate:v19];

  if ([v12 count])
  {
    [v12 objectAtIndex:0];
    *asset = v13 = 0;
    v14 = @"BuildVersion&ProductVersion";
    goto LABEL_3;
  }

  v20 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_479];
  v16 = [arrayCopy filteredArrayUsingPredicate:v20];

  if ([v16 count])
  {
    [v16 objectAtIndex:0];
    *asset = v13 = 0;
    v17 = @"HWModelStr&ProductVersion";
    goto LABEL_6;
  }

  v21 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_485];
  v12 = [arrayCopy filteredArrayUsingPredicate:v21];

  if ([v12 count])
  {
    [v12 objectAtIndex:0];
    *asset = v13 = 0;
    v14 = @"BuildVersionOnly";
    goto LABEL_3;
  }

  v22 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_491];
  v16 = [arrayCopy filteredArrayUsingPredicate:v22];

  if ([v16 count])
  {
    [v16 objectAtIndex:0];
    *asset = v13 = 0;
    v17 = @"HWModelStrOnly";
    goto LABEL_6;
  }

  v23 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_497];
  v12 = [arrayCopy filteredArrayUsingPredicate:v23];

  if ([v12 count])
  {
    [v12 objectAtIndex:0];
    *asset = v13 = 0;
    v14 = @"ProductVersionOnly";
    goto LABEL_3;
  }

  mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
  v13 = [mEMORY[0x277D643F8] buildError:8409 underlying:0 description:@"No available configuration assets found (multiple selection logic found no asset)"];

LABEL_7:

  return v13;
}

uint64_t __96__SUCoreConfigServer__stateSafeSelectBestAssetFromMultipleAssetArray_bestAsset_selectionReason___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 attributes];
  v4 = [v3 safeObjectForKey:@"SupportedDeviceModels" ofClass:objc_opt_class()];

  v5 = [v2 attributes];
  v6 = [v5 safeObjectForKey:@"PrerequisiteBuilds" ofClass:objc_opt_class()];

  v7 = [v2 attributes];

  v8 = [v7 safeObjectForKey:@"PrerequisiteOSVersions" ofClass:objc_opt_class()];

  v9 = [MEMORY[0x277D64418] sharedDevice];
  v10 = [v9 hwModelString];
  if ([v4 containsObject:v10])
  {
    v11 = [MEMORY[0x277D64418] sharedDevice];
    v12 = [v11 buildVersion];
    if ([v6 containsObject:v12])
    {
      v13 = [MEMORY[0x277D64418] sharedDevice];
      v14 = [v13 productVersion];
      v32 = [v8 containsObject:v14];
    }

    else
    {
      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v15 = [MEMORY[0x277D64460] sharedLogger];
  v16 = [v15 oslog];

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    [MEMORY[0x277D64418] sharedDevice];
    v17 = v31 = v8;
    v18 = [v17 hwModelString];
    [v4 componentsJoinedByString:{@", "}];
    v19 = v30 = v4;
    v20 = [MEMORY[0x277D64418] sharedDevice];
    v21 = [v20 buildVersion];
    [v6 componentsJoinedByString:{@", "}];
    v22 = v29 = v6;
    v23 = [MEMORY[0x277D64418] sharedDevice];
    v24 = [v23 productVersion];
    v25 = [v31 componentsJoinedByString:{@", "}];
    v26 = v25;
    *buf = 138544898;
    v27 = @"NO";
    v34 = v18;
    if (v32)
    {
      v27 = @"YES";
    }

    v35 = 2114;
    v36 = v19;
    v37 = 2114;
    v38 = v21;
    v39 = 2114;
    v40 = v22;
    v41 = 2114;
    v42 = v24;
    v43 = 2114;
    v44 = v25;
    v45 = 2114;
    v46 = v27;
    _os_log_impl(&dword_23193C000, v16, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: FullMatch Predicate (Device:Asset) - HWModelString %{public}@:%{public}@; BuildVersion %{public}@:%{public}@; ProductVersion %{public}@:%{public}@ | keep=%{public}@", buf, 0x48u);

    v8 = v31;
    v6 = v29;

    v4 = v30;
  }

  return v32;
}

uint64_t __96__SUCoreConfigServer__stateSafeSelectBestAssetFromMultipleAssetArray_bestAsset_selectionReason___block_invoke_465(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 attributes];
  v4 = [v3 safeObjectForKey:@"SupportedDeviceModels" ofClass:objc_opt_class()];

  v5 = [v2 attributes];

  v6 = [v5 safeObjectForKey:@"PrerequisiteBuilds" ofClass:objc_opt_class()];

  v7 = [MEMORY[0x277D64418] sharedDevice];
  v8 = [v7 hwModelString];
  if ([v4 containsObject:v8])
  {
    v9 = [MEMORY[0x277D64418] sharedDevice];
    v10 = [v9 buildVersion];
    v11 = [v6 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277D64418] sharedDevice];
    v15 = [v14 hwModelString];
    v16 = [v4 componentsJoinedByString:{@", "}];
    v17 = [MEMORY[0x277D64418] sharedDevice];
    v18 = [v17 buildVersion];
    v19 = [v6 componentsJoinedByString:{@", "}];
    v20 = v19;
    v23 = 138544386;
    v21 = @"NO";
    v24 = v15;
    if (v11)
    {
      v21 = @"YES";
    }

    v25 = 2114;
    v26 = v16;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v21;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: BuildVersion&HWModelStr Predicate (Device:Asset) - HWModelString %{public}@:%{public}@; BuildVersion %{public}@:%{public}@ | keep=%{public}@", &v23, 0x34u);
  }

  return v11;
}

uint64_t __96__SUCoreConfigServer__stateSafeSelectBestAssetFromMultipleAssetArray_bestAsset_selectionReason___block_invoke_471(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 attributes];
  v4 = [v3 safeObjectForKey:@"PrerequisiteBuilds" ofClass:objc_opt_class()];

  v5 = [v2 attributes];

  v6 = [v5 safeObjectForKey:@"PrerequisiteOSVersions" ofClass:objc_opt_class()];

  v7 = [MEMORY[0x277D64418] sharedDevice];
  v8 = [v7 buildVersion];
  if ([v4 containsObject:v8])
  {
    v9 = [MEMORY[0x277D64418] sharedDevice];
    v10 = [v9 productVersion];
    v11 = [v6 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277D64418] sharedDevice];
    v15 = [v14 buildVersion];
    v16 = [v4 componentsJoinedByString:{@", "}];
    v17 = [MEMORY[0x277D64418] sharedDevice];
    v18 = [v17 productVersion];
    v19 = [v6 componentsJoinedByString:{@", "}];
    v20 = v19;
    v23 = 138544386;
    v21 = @"NO";
    v24 = v15;
    if (v11)
    {
      v21 = @"YES";
    }

    v25 = 2114;
    v26 = v16;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v21;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: BuildVersion&ProductVersion Predicate (Device:Asset) - BuildVersion %{public}@:%{public}@; ProductVersion %{public}@:%{public}@ | keep=%{public}@", &v23, 0x34u);
  }

  return v11;
}

uint64_t __96__SUCoreConfigServer__stateSafeSelectBestAssetFromMultipleAssetArray_bestAsset_selectionReason___block_invoke_477(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 attributes];
  v4 = [v3 safeObjectForKey:@"SupportedDeviceModels" ofClass:objc_opt_class()];

  v5 = [v2 attributes];

  v6 = [v5 safeObjectForKey:@"PrerequisiteOSVersions" ofClass:objc_opt_class()];

  v7 = [MEMORY[0x277D64418] sharedDevice];
  v8 = [v7 hwModelString];
  if ([v4 containsObject:v8])
  {
    v9 = [MEMORY[0x277D64418] sharedDevice];
    v10 = [v9 productVersion];
    v11 = [v6 containsObject:v10];
  }

  else
  {
    v11 = 0;
  }

  v12 = [MEMORY[0x277D64460] sharedLogger];
  v13 = [v12 oslog];

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [MEMORY[0x277D64418] sharedDevice];
    v15 = [v14 hwModelString];
    v16 = [v4 componentsJoinedByString:{@", "}];
    v17 = [MEMORY[0x277D64418] sharedDevice];
    v18 = [v17 productVersion];
    v19 = [v6 componentsJoinedByString:{@", "}];
    v20 = v19;
    v23 = 138544386;
    v21 = @"NO";
    v24 = v15;
    if (v11)
    {
      v21 = @"YES";
    }

    v25 = 2114;
    v26 = v16;
    v27 = 2114;
    v28 = v18;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v21;
    _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: HWModelStr&ProductVersion Predicate (Device:Asset) - HWModelString %{public}@:%{public}@; ProductVersion %{public}@:%{public}@ | keep=%{public}@", &v23, 0x34u);
  }

  return v11;
}

uint64_t __96__SUCoreConfigServer__stateSafeSelectBestAssetFromMultipleAssetArray_bestAsset_selectionReason___block_invoke_483(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [a2 attributes];
  v3 = [v2 safeObjectForKey:@"PrerequisiteBuilds" ofClass:objc_opt_class()];

  v4 = [MEMORY[0x277D64418] sharedDevice];
  v5 = [v4 buildVersion];
  v6 = [v3 containsObject:v5];

  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277D64418] sharedDevice];
    v10 = [v9 buildVersion];
    v11 = [v3 componentsJoinedByString:{@", "}];
    v12 = v11;
    v13 = @"NO";
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    if (v6)
    {
      v13 = @"YES";
    }

    v18 = v11;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: BuildVersionOnly Predicate (Device:Asset) - BuildVersion %{public}@:%{public}@ | keep=%{public}@", &v15, 0x20u);
  }

  return v6;
}

uint64_t __96__SUCoreConfigServer__stateSafeSelectBestAssetFromMultipleAssetArray_bestAsset_selectionReason___block_invoke_489(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [a2 attributes];
  v3 = [v2 safeObjectForKey:@"SupportedDeviceModels" ofClass:objc_opt_class()];

  v4 = [MEMORY[0x277D64418] sharedDevice];
  v5 = [v4 hwModelString];
  v6 = [v3 containsObject:v5];

  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277D64418] sharedDevice];
    v10 = [v9 hwModelString];
    v11 = [v3 componentsJoinedByString:{@", "}];
    v12 = v11;
    v13 = @"NO";
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    if (v6)
    {
      v13 = @"YES";
    }

    v18 = v11;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: HWModelStrOnly Predicate (Device:Asset) - HWModelString %{public}@:%{public}@ | keep=%{public}@", &v15, 0x20u);
  }

  return v6;
}

uint64_t __96__SUCoreConfigServer__stateSafeSelectBestAssetFromMultipleAssetArray_bestAsset_selectionReason___block_invoke_495(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [a2 attributes];
  v3 = [v2 safeObjectForKey:@"PrerequisiteOSVersions" ofClass:objc_opt_class()];

  v4 = [MEMORY[0x277D64418] sharedDevice];
  v5 = [v4 productVersion];
  v6 = [v3 containsObject:v5];

  v7 = [MEMORY[0x277D64460] sharedLogger];
  v8 = [v7 oslog];

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277D64418] sharedDevice];
    v10 = [v9 productVersion];
    v11 = [v3 componentsJoinedByString:{@", "}];
    v12 = v11;
    v13 = @"NO";
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    if (v6)
    {
      v13 = @"YES";
    }

    v18 = v11;
    v19 = 2114;
    v20 = v13;
    _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] SelectBestAsset: ProductVersionOnly Predicate (Device:Asset) - ProductVersion %{public}@:%{public}@ | keep=%{public}@", &v15, 0x20u);
  }

  return v6;
}

- (int64_t)actionConfigDownloadAsset:(id)asset error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  locatedAsset = [assetCopy locatedAsset];

  if (locatedAsset)
  {
    _stateSafeDownloadOptions = [(SUCoreConfigServer *)self _stateSafeDownloadOptions];
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = _stateSafeDownloadOptions;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Download: Starting download of configuration asset with options: %{public}@", buf, 0xCu);
    }

    locatedAsset2 = [assetCopy locatedAsset];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __54__SUCoreConfigServer_actionConfigDownloadAsset_error___block_invoke;
    v18[3] = &unk_27892D200;
    v18[4] = self;
    v19 = assetCopy;
    [locatedAsset2 startDownload:_stateSafeDownloadOptions completionWithError:v18];

    v11 = 0;
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    _stateSafeDownloadOptions = [mEMORY[0x277D643F8] buildError:8116 underlying:0 description:@"No located configuration asset for download"];

    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConfigServer actionConfigDownloadAsset:error:];
    }

    stateMachine = [(SUCoreConfigServer *)self stateMachine];
    v16 = [[SUCoreConfigParam alloc] initWithError:_stateSafeDownloadOptions operation:2];
    [stateMachine postEvent:@"ConfigPhaseFailed" withInfo:v16];

    v11 = 8116;
  }

  return v11;
}

void __54__SUCoreConfigServer_actionConfigDownloadAsset_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x2383741D0](a2);
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Download: Asset download completed with MADownloadResult: %{public}@", &v15, 0xCu);
  }

  if (a2 != 10 && a2)
  {
    v10 = [MEMORY[0x277D643F8] sharedCore];
    v9 = [v10 buildError:8700 underlying:v5 description:@"Software update configuration asset download failed"];

    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConfigServer actionConfigDownloadAsset:error:];
    }

    v13 = [*(a1 + 32) stateMachine];
    v14 = [[SUCoreConfigParam alloc] initWithError:v9 operation:2];
    [v13 postEvent:@"ConfigPhaseFailed" withInfo:v14];
  }

  else
  {
    v9 = [*(a1 + 32) stateMachine];
    [v9 postEvent:@"ConfigPhaseComplete" withInfo:*(a1 + 40)];
  }
}

- (int64_t)actionConfigAdjustSettings:(id)settings error:(id *)error
{
  v62[1] = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Adjust: Adjusting configuration with server settings", buf, 2u);
  }

  locatedAsset = [settingsCopy locatedAsset];

  if (locatedAsset)
  {
    locatedAsset2 = [settingsCopy locatedAsset];
    refreshState = [locatedAsset2 refreshState];

    if (refreshState)
    {
      locatedAsset3 = [settingsCopy locatedAsset];
      wasLocal = [locatedAsset3 wasLocal];

      if (wasLocal)
      {
        goto LABEL_15;
      }

      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v15 = mEMORY[0x277D643F8];
      v16 = @"Asset is not downloaded (wasLocal returned false)";
      v17 = 8707;
    }

    else
    {
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v15 = mEMORY[0x277D643F8];
      v16 = @"Asset is not available (refreshState returned false)";
      v17 = 8706;
    }
  }

  else
  {
    mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
    v15 = mEMORY[0x277D643F8];
    v16 = @"Asset was not located (asset not present)";
    v17 = 8116;
  }

  v18 = [mEMORY[0x277D643F8] buildError:v17 underlying:0 description:v16];

  if (v18)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConfigServer actionConfigAdjustSettings:error:];
    }

    stateMachine = [(SUCoreConfigServer *)self stateMachine];
    v22 = [[SUCoreConfigParam alloc] initWithError:v18 operation:3];
    [stateMachine followupEvent:@"ConfigPhaseFailed" withInfo:v22];

    if (error)
    {
      v23 = v18;
      *error = v18;
    }

    v24 = 8406;
    goto LABEL_29;
  }

LABEL_15:
  locatedAsset4 = [settingsCopy locatedAsset];
  attributes = [locatedAsset4 attributes];
  v27 = [attributes safeStringForKey:@"ConfigurationPlist"];
  v28 = v27;
  v29 = @"Configuration.plist";
  if (v27)
  {
    v29 = v27;
  }

  v30 = v29;

  locatedAsset5 = [settingsCopy locatedAsset];
  getLocalUrl = [locatedAsset5 getLocalUrl];
  path = [getLocalUrl path];
  v34 = [path stringByAppendingPathComponent:v30];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LOBYTE(getLocalUrl) = [defaultManager fileExistsAtPath:v34];

  if (getLocalUrl)
  {
    v36 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v34];
    v37 = [v36 safeObjectForKey:@"Projects" ofClass:objc_opt_class()];
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog3 = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v57 = v37;
      _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Adjust: Updating configuration for projects: %{public}@", buf, 0xCu);
    }

    [v37 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_532];
    [(SUCoreConfigServer *)self _stateSafeInformDelegatesOfConfiguration:v36 error:0];
    [(SUCoreConfigServer *)self _stateSafeSendInstalledEventWithSuccess:1 error:0];
    v61 = @"com.apple.MobileAsset.SoftwareUpdateConfiguration";
    locatedAsset6 = [settingsCopy locatedAsset];
    assetId = [locatedAsset6 assetId];
    v60 = assetId;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    v62[0] = v42;
    v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];

    mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
    oslog4 = [mEMORY[0x277D64460]4 oslog];

    if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
    {
      v46 = [&unk_2846B9D48 componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v57 = v46;
      v58 = 2114;
      v59 = v43;
      _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Purge: Purging all assets (via MAPurgeAllExceptGivenIds) of type %{public}@ except: %{public}@", buf, 0x16u);
    }

    MAPurgeAllExceptGivenIds();
    stateMachine2 = [(SUCoreConfigServer *)self stateMachine];
    v48 = objc_alloc_init(SUCoreConfigParam);
    [stateMachine2 postEvent:@"ConfigPhaseComplete" withInfo:v48];

    v24 = 0;
  }

  else
  {
    v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"Asset configuration plist does not exist at expected path: %@", v34];
    mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
    v37 = [mEMORY[0x277D643F8]2 buildError:8125 underlying:0 description:v36];

    mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
    oslog5 = [mEMORY[0x277D64460]5 oslog];

    if (os_log_type_enabled(oslog5, OS_LOG_TYPE_ERROR))
    {
      [SUCoreConfigServer actionConfigAdjustSettings:error:];
    }

    stateMachine3 = [(SUCoreConfigServer *)self stateMachine];
    v53 = [[SUCoreConfigParam alloc] initWithError:v37 operation:3];
    [stateMachine3 followupEvent:@"ConfigPhaseFailed" withInfo:v53];

    if (error)
    {
      v54 = v37;
      *error = v37;
    }

    v24 = 8406;
  }

  v18 = 0;
LABEL_29:

  return v24;
}

void __55__SUCoreConfigServer_actionConfigAdjustSettings_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  if (v4 && (+[SUCoreConfigServer allowedServerProjects](SUCoreConfigServer, "allowedServerProjects"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:v4], v6, v7))
  {
    v8 = [objc_alloc(MEMORY[0x277D64408]) initWithProjectName:v4];
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = v4;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Adjust: Updating configuration for project: %{public}@, with configuration: %{public}@", buf, 0x16u);
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__SUCoreConfigServer_actionConfigAdjustSettings_error___block_invoke_533;
    v13[3] = &unk_27892E760;
    v14 = v8;
    v15 = v4;
    v11 = v8;
    [v5 enumerateKeysAndObjectsUsingBlock:v13];
  }

  else
  {
    v12 = [MEMORY[0x277D64460] sharedLogger];
    v11 = [v12 oslog];

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __55__SUCoreConfigServer_actionConfigAdjustSettings_error___block_invoke_cold_1();
    }
  }
}

void __55__SUCoreConfigServer_actionConfigAdjustSettings_error___block_invoke_533(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5 && (+[SUCoreConfigServer allowedServerKeys](SUCoreConfigServer, "allowedServerKeys"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v5], v7, v8))
  {
    [*(a1 + 32) setConfig:v6 forKey:v5];
  }

  else
  {
    v9 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v9 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__SUCoreConfigServer_actionConfigAdjustSettings_error___block_invoke_533_cold_1();
    }
  }
}

void __55__SUCoreConfigServer_actionConfigAdjustSettings_error___block_invoke_535(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v4 oslog];

  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __55__SUCoreConfigServer_actionConfigAdjustSettings_error___block_invoke_535_cold_1();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Purge: Purge (MAPurgeAllExceptGivenIds) completed successfully", v8, 2u);
  }

  v6 = [*(a1 + 32) stateMachine];
  v7 = objc_alloc_init(SUCoreConfigParam);
  [v6 postEvent:@"ConfigPhaseComplete" withInfo:v7];
}

- (void)_stateSafeInformDelegatesOfConfiguration:(id)configuration error:(id)error
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  errorCopy = error;
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    listenerDelegates = [(SUCoreConfigServer *)self listenerDelegates];
    *buf = 134217984;
    v20 = [listenerDelegates count];
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Delegate: Informing %ld listener delegates of updated config", buf, 0xCu);
  }

  listenerDelegates2 = [(SUCoreConfigServer *)self listenerDelegates];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __69__SUCoreConfigServer__stateSafeInformDelegatesOfConfiguration_error___block_invoke;
  v16[3] = &unk_27892E788;
  v16[4] = self;
  v17 = configurationCopy;
  v18 = errorCopy;
  v14 = errorCopy;
  v15 = configurationCopy;
  [listenerDelegates2 enumerateKeysAndObjectsUsingBlock:v16];
}

void __69__SUCoreConfigServer__stateSafeInformDelegatesOfConfiguration_error___block_invoke(id *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [MEMORY[0x277D64460] sharedLogger];
    v8 = [v7 oslog];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Delegate: Sending updated config notification to delegate with name: %{public}@", buf, 0xCu);
    }

    v9 = [a1[4] clientDelegateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__SUCoreConfigServer__stateSafeInformDelegatesOfConfiguration_error___block_invoke_539;
    block[3] = &unk_27892D340;
    v13 = v6;
    v14 = a1[5];
    v15 = a1[6];
    dispatch_async(v9, block);

    v10 = v13;
  }

  else
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v11 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v5;
      _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Delegate: Delegate does not respond to updated config callbacks (%{public}@)", buf, 0xCu);
    }
  }
}

- (int64_t)actionConfigScheduleScan:(id)scan error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  scanCopy = scan;
  error = [scanCopy error];

  if (error)
  {
    error2 = [scanCopy error];
    [(SUCoreConfigServer *)self _stateSafeSendInstalledEventWithSuccess:0 error:error2];

    error3 = [scanCopy error];
    [(SUCoreConfigServer *)self _stateSafeInformDelegatesOfConfiguration:0 error:error3];
  }

  if (actionConfigScheduleScan_error__schedulerDefaultOnce != -1)
  {
    [SUCoreConfigServer actionConfigScheduleScan:error:];
  }

  v9 = objc_alloc_init(SUCoreActivityOptions);
  _stateSafeDetermineNextScanTime = [(SUCoreConfigServer *)self _stateSafeDetermineNextScanTime];
  [(SUCoreActivityOptions *)v9 setRunDate:_stateSafeDetermineNextScanTime];

  [(SUCoreActivityOptions *)v9 setNetworkState:2];
  [(SUCoreActivityOptions *)v9 setWaking:2];
  v11 = MEMORY[0x277CCACA8];
  v12 = MEMORY[0x277D643F8];
  runDate = [(SUCoreActivityOptions *)v9 runDate];
  v14 = [v12 stringFromDate:runDate];
  if ([(SUCoreActivityOptions *)v9 waking])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  if ([(SUCoreActivityOptions *)v9 networkState])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v17 = [v11 stringWithFormat:@"runDate=%@ waking=%@ networkState=%@", v14, v15, v16];

  scheduledActivityName = [(SUCoreConfigServer *)self scheduledActivityName];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = scheduledActivityName;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Schedule: Unregistering all activities with name: %{public}@", buf, 0xCu);
  }

  if (actionConfigScheduleScan_error__useXPCActivityScheduler == 1)
  {
    v21 = +[SUCoreXPCActivityManager sharedInstance];
    [v21 unscheduleActivity:scheduledActivityName];
  }

  else
  {
    v21 = +[SUCoreActivityScheduler sharedInstance];
    [v21 unregisterActivitiesWithName:scheduledActivityName];
  }

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]2 oslog];

  v24 = v17;
  if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
  {
    v25 = MEMORY[0x277D643F8];
    date = [MEMORY[0x277CBEAA8] date];
    v27 = [v25 stringFromDate:date];
    *buf = 138543618;
    v32 = v24;
    v33 = 2114;
    v34 = v27;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Schedule: Scheduling activity with options: %{public}@; current date: %{public}@", buf, 0x16u);
  }

  if (actionConfigScheduleScan_error__useXPCActivityScheduler == 1)
  {
    v28 = [[SUCoreXPCActivity alloc] init:scheduledActivityName options:v9 handler:&__block_literal_global_563];
    v29 = +[SUCoreXPCActivityManager sharedInstance];
    [v29 scheduleActivity:v28];
  }

  else
  {
    v28 = [[SUCoreActivity alloc] initWithActivityName:scheduledActivityName options:v9];
    v29 = +[SUCoreActivityScheduler sharedInstance];
    [v29 scheduleActivity:v28 withHandler:&__block_literal_global_571];
  }

  [(SUCoreConfigServer *)self _stateSafeSendScheduledEventWithSuccess:1 error:0];
  return 0;
}

void __53__SUCoreConfigServer_actionConfigScheduleScan_error___block_invoke()
{
  v0 = CFPreferencesCopyValue(@"SUUseXPCActivityScheduler", @"com.apple.softwareupdateservicesd", @"mobile", *MEMORY[0x277CBF010]);
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      actionConfigScheduleScan_error__useXPCActivityScheduler = CFBooleanGetValue(v1) == 1;
    }
  }

  v3 = actionConfigScheduleScan_error__useXPCActivityScheduler;
  v4 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v10 = 0;
    v7 = "[SUCoreConfig]: Using SUCoreXPCActivityScheduler for scheduling";
    v8 = &v10;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v9 = 0;
    v7 = "[SUCoreConfig]: Using default scheduler for scheduling";
    v8 = &v9;
  }

  _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
LABEL_10:

  if (v1)
  {
    CFRelease(v1);
  }
}

void __53__SUCoreConfigServer_actionConfigScheduleScan_error___block_invoke_560(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = xpc_activity_copy_identifier();
  v3 = [MEMORY[0x277D64460] sharedLogger];
  v4 = [v3 oslog];

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (v2)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v2];
    }

    else
    {
      v5 = @"(Unknown activity)";
    }

    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_23193C000, v4, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Schedule: Scheduled activity %@ fired! Scanning for new confibutration updates", &v7, 0xCu);
    if (v2)
    {
    }
  }

  v6 = +[SUCoreConfigServer sharedServerSettings];
  [v6 installServerSettings];
}

void __53__SUCoreConfigServer_actionConfigScheduleScan_error___block_invoke_568(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [MEMORY[0x277D64460] sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x277D643F8];
    v9 = [MEMORY[0x277CBEAA8] date];
    v10 = [v8 stringFromDate:v9];
    v12 = 138543874;
    v13 = v4;
    v14 = 2114;
    v15 = v5;
    v16 = 2114;
    v17 = v10;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Schedule: Scheduled activity fired! Scanning for new configuration updates (registrationID=%{public}@ info=%{public}@ currentDate=%{public}@)", &v12, 0x20u);
  }

  v11 = +[SUCoreConfigServer sharedServerSettings];
  [v11 installServerSettings];
}

- (id)_stateSafeDownloadOptions
{
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v5 = objc_alloc_init(MEMORY[0x277D28A10]);
  [v5 setDiscretionary:0];
  [v5 setAllowsCellularAccess:1];
  [v5 setAllowsExpensiveAccess:1];
  uuidString = [(SUCoreConfigServer *)self uuidString];
  [v5 setSessionId:uuidString];

  return v5;
}

- (void)_stateSafeResetState
{
  v10 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  [(SUCoreConfigServer *)self setLastScanTime:date];

  [(SUCoreConfigServer *)self setNextScanTime:0];
  [(SUCoreConfigServer *)self _stateSafeUpdateState];
  scheduledActivityName = [(SUCoreConfigServer *)self scheduledActivityName];
  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = scheduledActivityName;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] ResetState: Unregistering all activities with name: %{public}@", &v8, 0xCu);
  }

  if (_stateSafeResetState_schedulerDefaultOnce != -1)
  {
    [SUCoreConfigServer _stateSafeResetState];
  }

  if (_stateSafeResetState_useXPCActivityScheduler == 1)
  {
    v7 = +[SUCoreXPCActivityManager sharedInstance];
    [v7 unscheduleActivity:scheduledActivityName];
  }

  else
  {
    v7 = +[SUCoreActivityScheduler sharedInstance];
    [v7 unregisterActivitiesWithName:scheduledActivityName];
  }
}

void __42__SUCoreConfigServer__stateSafeResetState__block_invoke()
{
  v0 = CFPreferencesCopyValue(@"SUUseXPCActivityScheduler", @"com.apple.softwareupdateservicesd", @"mobile", *MEMORY[0x277CBF010]);
  v1 = v0;
  if (v0)
  {
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID())
    {
      _stateSafeResetState_useXPCActivityScheduler = CFBooleanGetValue(v1) == 1;
    }
  }

  v3 = _stateSafeResetState_useXPCActivityScheduler;
  v4 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v4 oslog];

  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v10 = 0;
    v7 = "[SUCoreConfig]: Using SUCoreXPCActivityScheduler for scheduling";
    v8 = &v10;
  }

  else
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v9 = 0;
    v7 = "[SUCoreConfig]: Using default scheduler for scheduling";
    v8 = &v9;
  }

  _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
LABEL_10:

  if (v1)
  {
    CFRelease(v1);
  }
}

- (void)_stateSafeUpdateState
{
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  persistedState = [(SUCoreConfigServer *)self persistedState];
  LODWORD(extendedStateQueue) = [persistedState loadPersistedState];

  if (extendedStateQueue)
  {
    persistedState2 = [(SUCoreConfigServer *)self persistedState];
    lastScanTime = [(SUCoreConfigServer *)self lastScanTime];
    [persistedState2 persistDate:lastScanTime forKey:@"LastScanTime"];

    persistedState3 = [(SUCoreConfigServer *)self persistedState];
    nextScanTime = [(SUCoreConfigServer *)self nextScanTime];
    [persistedState3 persistDate:nextScanTime forKey:@"NextScanTime"];
  }
}

- (id)_stateSafeDetermineNextScanTime
{
  v43 = *MEMORY[0x277D85DE8];
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  persistedState = [(SUCoreConfigServer *)self persistedState];
  LODWORD(extendedStateQueue) = [persistedState loadPersistedState];

  if (extendedStateQueue)
  {
    persistedState2 = [(SUCoreConfigServer *)self persistedState];
    v7 = [persistedState2 dateForKey:@"LastScanTime"];

    persistedState3 = [(SUCoreConfigServer *)self persistedState];
    v9 = [persistedState3 dateForKey:@"NextScanTime"];
  }

  else
  {
    v9 = 0;
    v7 = 0;
  }

  coreConfig = [(SUCoreConfigServer *)self coreConfig];
  v11 = [coreConfig getNumberConfigForKey:*MEMORY[0x277D644D0]];

  v12 = [(SUCoreConfigServer *)self _nextScanTimeFromDate:v7];
  v13 = v12;
  if (v11)
  {
    v14 = MEMORY[0x277CBEAA8];
    [v11 doubleValue];
    v16 = [v14 dateWithTimeIntervalSinceNow:v15 * 60.0];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x277D643F8] stringFromDate:v16];
      v39 = 138543618;
      v40 = v11;
      v41 = 2114;
      v42 = v19;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] NextScanTime: Using nextScanTime scan interval override (%{public}@) for proposed scan: %{public}@", &v39, 0x16u);
    }
  }

  else
  {
    v16 = v12;
  }

  date = [MEMORY[0x277CBEAA8] date];
  v21 = [v9 compare:date];

  if (v21 == -1)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
    {
      v33 = [MEMORY[0x277D643F8] stringFromDate:v9];
      v39 = 138543362;
      v40 = v33;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] NextScanTime: Previous nextScanTime (%{public}@) has already passed, removing now", &v39, 0xCu);
    }

    v9 = 0;
  }

  else if (v9 && [v9 compare:v16] == -1)
  {
    [(SUCoreConfigServer *)self setNextScanTime:v9];
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog3 = [mEMORY[0x277D64460]3 oslog];

    if (!os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_20;
    }

    v24 = MEMORY[0x277D643F8];
    nextScanTime = [(SUCoreConfigServer *)self nextScanTime];
    v26 = [v24 stringFromDate:nextScanTime];
    v27 = MEMORY[0x277D643F8];
    date2 = [MEMORY[0x277CBEAA8] date];
    v29 = [v27 stringFromDate:date2];
    v39 = 138543618;
    v40 = v26;
    v41 = 2114;
    v42 = v29;
    v30 = "[SUCoreConfig] NextScanTime: Using nextScanTime (via previous): %{public}@, current time: %{public}@";
    goto LABEL_19;
  }

  [(SUCoreConfigServer *)self setNextScanTime:v16];
  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog3 = [mEMORY[0x277D64460]4 oslog];

  if (!os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  v35 = MEMORY[0x277D643F8];
  nextScanTime = [(SUCoreConfigServer *)self nextScanTime];
  v26 = [v35 stringFromDate:nextScanTime];
  v36 = MEMORY[0x277D643F8];
  date2 = [MEMORY[0x277CBEAA8] date];
  v29 = [v36 stringFromDate:date2];
  v39 = 138543618;
  v40 = v26;
  v41 = 2114;
  v42 = v29;
  v30 = "[SUCoreConfig] NextScanTime: Using nextScanTime (via proposed): %{public}@, current time: %{public}@";
LABEL_19:
  _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, v30, &v39, 0x16u);

LABEL_20:
  [(SUCoreConfigServer *)self _stateSafeUpdateState];
  nextScanTime2 = [(SUCoreConfigServer *)self nextScanTime];

  return nextScanTime2;
}

- (id)_nextScanTimeFromDate:(id)date
{
  dateCopy = date;
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  if ([mEMORY[0x277D64418] isBootedOSSecureInternal])
  {
    v5 = 86400.0;
  }

  else
  {
    v5 = 604800.0;
  }

  v6 = MEMORY[0x277CBEAA8];
  if (dateCopy)
  {
    v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:dateCopy sinceDate:v5];
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v7 = [v6 dateWithTimeInterval:date sinceDate:v5];
  }

  return v7;
}

- (void)_stateSafeSendScheduledEventWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreConfigServer *)self _stateSafeSendNewEvent:@"SUCoreConfigScheduled" success:successCopy error:errorCopy];
}

- (void)_stateSafeSendInstalledEventWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  [(SUCoreConfigServer *)self _stateSafeSendNewEvent:@"SUCoreConfigInstalled" success:successCopy error:errorCopy];
}

- (void)_stateSafeSendNewEvent:(id)event success:(BOOL)success error:(id)error
{
  v73 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  errorCopy = error;
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  v12 = *MEMORY[0x277D64760];
  if (!success)
  {
    v13 = MEMORY[0x277CCACA8];
    domain = [errorCopy domain];
    v15 = [v13 stringWithFormat:@"%@ - %ld", domain, objc_msgSend(errorCopy, "code")];

    domain2 = [errorCopy domain];
    LODWORD(domain) = [domain2 isEqualToString:*MEMORY[0x277D646E8]];

    if (domain)
    {
      v17 = [MEMORY[0x277D643F8] errorNameForCode:{objc_msgSend(errorCopy, "code")}];
      v18 = [v15 stringByAppendingFormat:@" (%@)", v17];

      v15 = v18;
    }

    userInfo = [errorCopy userInfo];
    v20 = *MEMORY[0x277CCA7E8];
    v21 = [userInfo safeObjectForKey:*MEMORY[0x277CCA7E8] ofClass:objc_opt_class()];

    if (v21)
    {
      userInfo2 = [errorCopy userInfo];
      v23 = [userInfo2 safeObjectForKey:v20 ofClass:objc_opt_class()];
      checkedNameForCode = [v23 checkedNameForCode];
      v12 = [v15 stringByAppendingFormat:@" [%@]", checkedNameForCode];
    }

    else
    {
      v12 = v15;
    }
  }

  v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v25 setSafeObject:v12 forKey:*MEMORY[0x277D64748]];
  v66 = errorCopy;
  checkedSummary = [errorCopy checkedSummary];
  [v25 setSafeObject:checkedSummary forKey:*MEMORY[0x277D64720]];

  [v25 setSafeObject:eventCopy forKey:*MEMORY[0x277D64740]];
  _stateSafeLoadUUIDString = [(SUCoreConfigServer *)self _stateSafeLoadUUIDString];
  [v25 setSafeObject:_stateSafeLoadUUIDString forKey:*MEMORY[0x277D647B8]];

  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", 1];
  [v25 setSafeObject:v28 forKey:@"compatibilityVersion"];

  v29 = MEMORY[0x277D643F8];
  lastScanTime = [(SUCoreConfigServer *)self lastScanTime];
  v31 = [v29 stringFromDate:lastScanTime];
  [v25 setSafeObject:v31 forKey:@"lastScanTime"];

  v32 = MEMORY[0x277D643F8];
  nextScanTime = [(SUCoreConfigServer *)self nextScanTime];
  v34 = [v32 stringFromDate:nextScanTime];
  [v25 setSafeObject:v34 forKey:@"nextScanTime"];

  [v25 setSafeObject:@"CoreDuet" forKey:@"scannerMethod"];
  v35 = MEMORY[0x277CCACA8];
  lastLocatedAsset = [(SUCoreConfigServer *)self lastLocatedAsset];
  assetId = [lastLocatedAsset assetId];
  v38 = assetId;
  if (assetId)
  {
    v39 = assetId;
  }

  else
  {
    v39 = @"none";
  }

  v40 = [v35 stringWithFormat:@"%@", v39];
  [v25 setSafeObject:v40 forKey:@"lastLocatedAssetId"];

  v41 = MEMORY[0x277CCACA8];
  lastLocatedAsset2 = [(SUCoreConfigServer *)self lastLocatedAsset];
  attributes = [lastLocatedAsset2 attributes];
  v44 = [attributes safeStringForKey:@"GenerationDate"];
  v45 = eventCopy;
  v46 = v44;
  if (v44)
  {
    v47 = v44;
  }

  else
  {
    v47 = @"none";
  }

  v48 = [v41 stringWithFormat:@"%@", v47];
  [v25 setSafeObject:v48 forKey:@"lastLocatedAssetGenerationDate"];

  v49 = MEMORY[0x277CCACA8];
  lastLocatedAsset3 = [(SUCoreConfigServer *)self lastLocatedAsset];
  attributes2 = [lastLocatedAsset3 attributes];
  v52 = [attributes2 safeStringForKey:@"UniqueID"];
  v53 = v52;
  if (v52)
  {
    v54 = v52;
  }

  else
  {
    v54 = @"none";
  }

  v55 = [v49 stringWithFormat:@"%@", v54];
  [v25 setSafeObject:v55 forKey:@"lastLocatedAssetUniqueID"];

  v56 = +[SUCoreConfigServer allowedServerProjects];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __59__SUCoreConfigServer__stateSafeSendNewEvent_success_error___block_invoke;
  v67[3] = &unk_27892E818;
  v57 = v25;
  v68 = v57;
  [v56 enumerateObjectsUsingBlock:v67];

  mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460] oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v70 = v45;
    v71 = 2114;
    v72 = v12;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SUCoreConfig] Sending event '%{public}@' with result: %{public}@", buf, 0x16u);
  }

  v60 = objc_alloc(MEMORY[0x277D64438]);
  v61 = objc_alloc(MEMORY[0x277CBEBC0]);
  v62 = [v61 initWithString:*MEMORY[0x277D64810]];
  v63 = [v60 initWithEventDictionary:v57 extendingWith:0 reportingToServer:v62];

  mEMORY[0x277D64448] = [MEMORY[0x277D64448] sharedReporter];
  getAugmentedEvent = [v63 getAugmentedEvent];
  [mEMORY[0x277D64448] sendEvent:getAugmentedEvent];
}

void __59__SUCoreConfigServer__stateSafeSendNewEvent_success_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_alloc(MEMORY[0x277D64408]) initWithProjectName:v3];
  v5 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"|"];
  v6 = [v4 getConfig];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __59__SUCoreConfigServer__stateSafeSendNewEvent_success_error___block_invoke_2;
  v13 = &unk_27892E7F0;
  v7 = v5;
  v14 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:&v10];

  if ([v7 length] >= 2)
  {
    v8 = *(a1 + 32);
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"currentConfig%@", v3, v10, v11, v12, v13];
    [v8 setSafeObject:v7 forKey:v9];
  }
}

void __59__SUCoreConfigServer__stateSafeSendNewEvent_success_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    [*(a1 + 32) appendFormat:@"%@=%@|", v11, v5];
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
    v7 = *(a1 + 32);
    if (v6)
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      [v7 appendFormat:@"%@=%@|", v11, v9];
    }

    else
    {
      [v7 appendFormat:@"%@=unknown|", v11, v10];
    }
  }
}

- (id)_stateSafeLoadUUIDString
{
  stateMachine = [(SUCoreConfigServer *)self stateMachine];
  extendedStateQueue = [stateMachine extendedStateQueue];
  dispatch_assert_queue_V2(extendedStateQueue);

  persistedState = [(SUCoreConfigServer *)self persistedState];
  LODWORD(extendedStateQueue) = [persistedState loadPersistedState];

  if (extendedStateQueue)
  {
    persistedState2 = [(SUCoreConfigServer *)self persistedState];
    v7 = [persistedState2 stringForKey:@"UUIDString"];
    [(SUCoreConfigServer *)self setUuidString:v7];
  }

  uuidString = [(SUCoreConfigServer *)self uuidString];

  if (!uuidString)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(SUCoreConfigServer *)self setUuidString:uUIDString];

    persistedState3 = [(SUCoreConfigServer *)self persistedState];
    LODWORD(uUIDString) = [persistedState3 loadPersistedState];

    if (uUIDString)
    {
      persistedState4 = [(SUCoreConfigServer *)self persistedState];
      uuidString2 = [(SUCoreConfigServer *)self uuidString];
      [persistedState4 persistString:uuidString2 forKey:@"UUIDString"];
    }
  }

  return [(SUCoreConfigServer *)self uuidString];
}

+ (void)persistedStateFilePath
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138543618;
  v3 = @"/var/MobileSoftwareUpdate/Controller/SoftwareUpdateCore";
  v4 = 2114;
  selfCopy = self;
  _os_log_error_impl(&dword_23193C000, a2, OS_LOG_TYPE_ERROR, "[SUCoreConfig] PersistedStateFilePath: Failed to create cache directory at path: %{public}@, error: %{public}@", &v2, 0x16u);
}

void __55__SUCoreConfigServer_actionConfigAdjustSettings_error___block_invoke_533_cold_1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_4();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_23193C000, v1, OS_LOG_TYPE_ERROR, "[SUCoreConfig] Adjust: Not processing non-allowed key '%{public}@' for project '%{public}@'", v2, 0x16u);
}

@end