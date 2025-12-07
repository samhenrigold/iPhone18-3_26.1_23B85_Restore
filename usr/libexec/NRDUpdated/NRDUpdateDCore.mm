@interface NRDUpdateDCore
- (BOOL)isPasscodeLocked;
- (Class)_infoClassForAction:(id)action;
- (NRDUpdateDCore)initWithDelegate:(id)delegate;
- (double)_minimumInterval:(double)interval;
- (id)findLocalBrainAsset;
- (int64_t)actionBeginBrainScan:(id *)scan;
- (int64_t)actionCheckDeviceUnlockConstraint:(id *)constraint;
- (int64_t)actionDownloadBrainUpdate:(id *)update;
- (int64_t)actionLoadBrain:(id *)brain;
- (int64_t)actionLoadPersisted:(id *)persisted;
- (int64_t)actionPeriodicScan:(id *)scan;
- (int64_t)actionRunBrain:(id *)brain;
- (int64_t)actionScheduleRetry:(id)retry error:(id *)error;
- (int64_t)actionUnknownAction:(id)action error:(id *)error;
- (int64_t)actionWaitForUnlock:(id *)unlock;
- (int64_t)getSchedulerQOS;
- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error;
- (void)cleanBeforeScan;
- (void)cleanReScanScheduler;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)maDownloadFailed:(id)failed;
- (void)maDownloadProgress:(id)progress;
- (void)maDownloadStalled:(id)stalled;
- (void)maDownloaded:(id)downloaded;
- (void)newBrain:(id)brain;
- (void)newSchedulerWithIdentifier:(id)identifier reply:(id)reply;
- (void)performUpdate:(id)update;
- (void)registerUpdatedFSMhandlers;
- (void)scheduleNRDUpdateBrainPeriodicScan;
- (void)scheduleNRDUpdateBrainReScan:(BOOL)scan;
@end

@implementation NRDUpdateDCore

- (NRDUpdateDCore)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v57.receiver = self;
  v57.super_class = NRDUpdateDCore;
  v5 = [(NRDUpdateDCore *)&v57 init];
  if (v5)
  {
    v55 = delegateCopy;
    v54 = kSU_S_Startup;
    v116[0] = kSU_S_Startup;
    v114[0] = @"ProceedToNextUpdateStep";
    v6 = kSUCoreNextStateKey;
    v7 = kSU_S_LoadingPersisted;
    v8 = kSUCoreActionKey;
    v112[0] = kSUCoreNextStateKey;
    v112[1] = kSUCoreActionKey;
    v9 = kSU_A_LoadPersisted;
    v113[0] = kSU_S_LoadingPersisted;
    v113[1] = kSU_A_LoadPersisted;
    v53 = [NSDictionary dictionaryWithObjects:v113 forKeys:v112 count:2];
    v115[0] = v53;
    v114[1] = @"PeriodicScanRequested";
    v110[0] = v6;
    v110[1] = v8;
    v111[0] = v7;
    v111[1] = v9;
    v52 = [NSDictionary dictionaryWithObjects:v111 forKeys:v110 count:2];
    v115[1] = v52;
    v51 = [NSDictionary dictionaryWithObjects:v115 forKeys:v114 count:2];
    v117[0] = v51;
    v116[1] = v7;
    v108[0] = @"NoLocalBrainFound";
    v106[0] = v6;
    v106[1] = v8;
    v107[0] = @"ScanningBrain";
    v107[1] = @"ActionBeginBrainScan";
    v50 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:2];
    v109[0] = v50;
    v108[1] = @"LocalBrainFound";
    v104[0] = v6;
    v104[1] = v8;
    v105[0] = @"CheckingDeviceUnlockConstraint";
    v105[1] = @"ActionCheckDeviceUnlockConstraint";
    v49 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:2];
    v109[1] = v49;
    v48 = [NSDictionary dictionaryWithObjects:v109 forKeys:v108 count:2];
    v117[1] = v48;
    v116[2] = @"ScanningBrain";
    v102[0] = @"NoRemoteBrainFound";
    v100[0] = v6;
    v100[1] = v8;
    v101[0] = @"SchedulingRetry";
    v101[1] = @"ActionScheduleRetry";
    v47 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:2];
    v103[0] = v47;
    v102[1] = @"ErrorGeneric";
    v98[0] = v6;
    v98[1] = v8;
    v99[0] = @"SchedulingRetry";
    v99[1] = @"ActionScheduleRetry";
    v46 = [NSDictionary dictionaryWithObjects:v99 forKeys:v98 count:2];
    v103[1] = v46;
    v102[2] = @"ProceedToNextUpdateStep";
    v96[0] = v6;
    v96[1] = v8;
    v97[0] = @"DownloadingBrain";
    v97[1] = @"ActionDownloadBrain";
    v45 = [NSDictionary dictionaryWithObjects:v97 forKeys:v96 count:2];
    v103[2] = v45;
    v44 = [NSDictionary dictionaryWithObjects:v103 forKeys:v102 count:3];
    v117[2] = v44;
    v116[3] = @"DownloadingBrain";
    v94[0] = @"ProceedToNextUpdateStep";
    v92[0] = v6;
    v92[1] = v8;
    v93[0] = @"CheckingDeviceUnlockConstraint";
    v93[1] = @"ActionCheckDeviceUnlockConstraint";
    v43 = [NSDictionary dictionaryWithObjects:v93 forKeys:v92 count:2];
    v95[0] = v43;
    v94[1] = kSU_E_DownloadFailed;
    v90[0] = v6;
    v90[1] = v8;
    v91[0] = @"SchedulingRetry";
    v91[1] = @"ActionScheduleRetry";
    v42 = [NSDictionary dictionaryWithObjects:v91 forKeys:v90 count:2];
    v95[1] = v42;
    v41 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:2];
    v117[3] = v41;
    v116[4] = @"CheckingDeviceUnlockConstraint";
    v88[0] = @"DeviceLocked";
    v86[0] = v6;
    v86[1] = v8;
    v87[0] = @"WaitingForUnlock";
    v87[1] = @"ActionWaitForUnlock";
    v40 = [NSDictionary dictionaryWithObjects:v87 forKeys:v86 count:2];
    v89[0] = v40;
    v88[1] = @"DeviceUnlocked";
    v84[0] = v6;
    v84[1] = v8;
    v85[0] = @"LoadingBrain";
    v85[1] = @"ActionLoadBrain";
    v39 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:2];
    v89[1] = v39;
    v38 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:2];
    v117[4] = v38;
    v116[5] = @"WaitingForUnlock";
    v82[0] = @"DeviceUnlocked";
    v80[0] = v6;
    v80[1] = v8;
    v81[0] = @"LoadingBrain";
    v81[1] = @"ActionLoadBrain";
    v37 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:2];
    v83[0] = v37;
    v82[1] = @"PeriodicScanRequested";
    v78 = v8;
    v79 = @"ActionWaitForUnlock";
    v36 = [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
    v83[1] = v36;
    v82[2] = @"ProceedToNextUpdateStep";
    v76 = v8;
    v77 = @"ActionWaitForUnlock";
    v35 = [NSDictionary dictionaryWithObjects:&v77 forKeys:&v76 count:1];
    v83[2] = v35;
    v34 = [NSDictionary dictionaryWithObjects:v83 forKeys:v82 count:3];
    v117[5] = v34;
    v116[6] = @"LoadingBrain";
    v74[0] = @"ProceedToNextUpdateStep";
    v72[0] = v6;
    v72[1] = v8;
    v73[0] = @"RunningBrain";
    v73[1] = @"ActionRunBrain";
    v33 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
    v74[1] = @"ErrorGeneric";
    v75[0] = v33;
    v70[0] = v6;
    v70[1] = v8;
    v71[0] = @"SchedulingRetry";
    v71[1] = @"ActionScheduleRetry";
    v32 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:2];
    v75[1] = v32;
    v31 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:2];
    v117[6] = v31;
    v116[7] = @"RunningBrain";
    v67 = @"ActionRunBrain";
    v68[0] = @"ProceedToNextUpdateStep";
    v66 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v67 forKeys:&v66 count:1];
    v68[1] = @"PeriodicScanRequested";
    v69[0] = v10;
    v64 = v8;
    v65 = @"ActionPeriodicScan";
    v11 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    v69[1] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v69 forKeys:v68 count:2];
    v117[7] = v12;
    v116[8] = @"SchedulingRetry";
    v62[0] = @"ProceedToNextUpdateStep";
    v60[0] = v6;
    v60[1] = v8;
    v61[0] = @"ScanningBrain";
    v61[1] = @"ActionBeginBrainScan";
    v13 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
    v62[1] = @"PeriodicScanRequested";
    v63[0] = v13;
    v58[0] = v6;
    v58[1] = v8;
    v59[0] = @"ScanningBrain";
    v59[1] = @"ActionBeginBrainScan";
    v14 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
    v63[1] = v14;
    v15 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
    v117[8] = v15;
    v16 = [NSDictionary dictionaryWithObjects:v117 forKeys:v116 count:9];

    v17 = [[NSDictionary alloc] initWithDictionary:v16 copyItems:1];
    [(NRDUpdateDCore *)v5 setStateTable:v17];

    v19 = nrdSharedLogger(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Creating FSM", buf, 2u);
    }

    v20 = [[SUCoreFSM alloc] initMachine:@"NRDUpdated" withTable:v5->_stateTable startingIn:v54];
    [(NRDUpdateDCore *)v5 setUpdatedFSM:v20];

    v21 = +[SUCore sharedCore];
    kSUCoreFilesystemBaseDirDefault = [NSString stringWithFormat:@"%@_NRD", kSUCoreFilesystemBaseDirDefault];
    [v21 useFilesystemBaseDir:kSUCoreFilesystemBaseDirDefault];

    [(NRDUpdateDCore *)v5 setScanPolicy:0];
    [(NRDUpdateDCore *)v5 setDownloadPolicy:0];
    [(NRDUpdateDCore *)v5 registerUpdatedFSMhandlers];
    updatedFSM = [(NRDUpdateDCore *)v5 updatedFSM];
    [updatedFSM activateMachine];

    delegateCopy = v55;
    [(NRDUpdateDCore *)v5 setDelegate:v55];
    v24 = dispatch_queue_create("com.apple.NRDUpdated.keybag", 0);
    [(NRDUpdateDCore *)v5 setKeyBagQueue:v24];

    v25 = dispatch_queue_create("com.apple.NRDUpdated.update", 0);
    [(NRDUpdateDCore *)v5 setUpdateQueue:v25];

    v26 = dispatch_semaphore_create(0);
    fsmSemaphore = v5->_fsmSemaphore;
    v5->_fsmSemaphore = v26;

    v29 = nrdSharedLogger(v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Initialization of NRDUpdateDCore complete", buf, 2u);
    }
  }

  return v5;
}

- (Class)_infoClassForAction:(id)action
{
  if ([action compare:@"ActionScheduleRetry"])
  {
    v3 = 0;
  }

  else
  {
    v3 = objc_opt_class();
  }

  return v3;
}

- (void)registerUpdatedFSMhandlers
{
  stateTable = [(NRDUpdateDCore *)self stateTable];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __44__NRDUpdateDCore_registerUpdatedFSMhandlers__block_invoke;
  v4[3] = &unk_100018A10;
  v4[4] = self;
  [stateTable enumerateKeysAndObjectsUsingBlock:v4];
}

void __44__NRDUpdateDCore_registerUpdatedFSMhandlers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __44__NRDUpdateDCore_registerUpdatedFSMhandlers__block_invoke_2;
  v7[3] = &unk_1000189E8;
  v7[4] = *(a1 + 32);
  v8 = v5;
  v6 = v5;
  [a3 enumerateKeysAndObjectsUsingBlock:v7];
}

void __44__NRDUpdateDCore_registerUpdatedFSMhandlers__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 objectForKey:kSUCoreActionKey];
  if (v5)
  {
    v6 = [*(a1 + 32) updatedFSM];
    [v6 registerAction:v5 ForEvent:v7 inState:*(a1 + 40) usingDelegate:*(a1 + 32) withInfoClass:{objc_msgSend(*(a1 + 32), "_infoClassForAction:", v5)}];
  }
}

- (id)findLocalBrainAsset
{
  v2 = [[SUCorePolicyUpdateBrain alloc] initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" documentationAssetType:0 usingExtensions:0];
  [v2 setAllowSameVersion:1];
  [v2 setRestrictToFull:1];
  [v2 setReleaseType:0];
  v3 = [NSNumber numberWithInt:1];
  [v2 setCompatibilityVersion:v3];

  constructSoftwareUpdateMAAssetQuery = [v2 constructSoftwareUpdateMAAssetQuery];
  [constructSoftwareUpdateMAAssetQuery returnTypes:1];
  [constructSoftwareUpdateMAAssetQuery setDoNotBlockOnNetworkStatus:1];
  queryMetaDataSync = [constructSoftwareUpdateMAAssetQuery queryMetaDataSync];
  if (queryMetaDataSync)
  {
    v6 = nrdSharedLogger(queryMetaDataSync);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDCore findLocalBrainAsset];
    }

    firstObject = 0;
    results = 0;
    goto LABEL_10;
  }

  results = [constructSoftwareUpdateMAAssetQuery results];
  v9 = [results count];
  if (v9 >= 2)
  {
    v10 = nrdSharedLogger(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = [results count];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Found %lu brain assets.  Removing all...", buf, 0xCu);
    }

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __37__NRDUpdateDCore_findLocalBrainAsset__block_invoke;
    v13[3] = &unk_100018A38;
    v14 = dispatch_semaphore_create(0);
    v6 = v14;
    [SUCorePurge removeAllAssetsOfType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" completion:v13];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);

LABEL_9:
    firstObject = 0;
    goto LABEL_10;
  }

  if (![results count])
  {
    v6 = nrdSharedLogger(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No local brain asset found", buf, 2u);
    }

    goto LABEL_9;
  }

  firstObject = [results firstObject];
  v6 = nrdSharedLogger(firstObject);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [firstObject description];
    *buf = 138543362;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found local brain asset:%{public}@", buf, 0xCu);
  }

LABEL_10:

  return firstObject;
}

void __37__NRDUpdateDCore_findLocalBrainAsset__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__NRDUpdateDCore_findLocalBrainAsset__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing all update brain assets succeeded", v6, 2u);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)cleanReScanScheduler
{
  rescanScheduler = [(NRDUpdateDCore *)self rescanScheduler];

  if (rescanScheduler)
  {
    v5 = nrdSharedLogger(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      rescanScheduler2 = [(NRDUpdateDCore *)self rescanScheduler];
      rescanScheduler3 = [(NRDUpdateDCore *)self rescanScheduler];
      identifier = [rescanScheduler3 identifier];
      v10 = 138543618;
      v11 = rescanScheduler2;
      v12 = 2114;
      v13 = identifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Invalidating Activity %{public}@ %{public}@", &v10, 0x16u);
    }

    rescanScheduler4 = [(NRDUpdateDCore *)self rescanScheduler];
    [rescanScheduler4 invalidate];

    [(NRDUpdateDCore *)self setRescanScheduler:0];
  }
}

- (int64_t)actionLoadPersisted:(id *)persisted
{
  v4 = nrdSharedLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionLoadPersisted", &v23, 2u);
  }

  forceBrainUpdate = [(NRDUpdateDCore *)self forceBrainUpdate];
  [(NRDUpdateDCore *)self setForceBrainUpdate:0];
  [(NRDUpdateDCore *)self cleanBeforeScan];
  [(NRDUpdateDCore *)self cleanReScanScheduler];
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 objectForKey:@"NRDBrainPath"];

  if (!v7)
  {
    updateOptions = [(NRDUpdateDCore *)self updateOptions];
    v11 = [updateOptions objectForKeyedSubscript:@"__nrd_brain-location_key"];

    if (v11)
    {
      v9 = nrdSharedLogger(v12);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        updateOptions2 = [(NRDUpdateDCore *)self updateOptions];
        v14 = [updateOptions2 objectForKeyedSubscript:@"__nrd_brain-location_key"];
        v23 = 138543362;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Brain path specified by options:%{public}@, skipping scan", &v23, 0xCu);
      }

      goto LABEL_9;
    }

    findLocalBrainAsset = [(NRDUpdateDCore *)self findLocalBrainAsset];
    if (findLocalBrainAsset)
    {
      v17 = nrdSharedLogger([(NRDUpdateDCore *)self setLocalBrainAsset:findLocalBrainAsset]);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (!forceBrainUpdate)
      {
        if (v18)
        {
          assetId = [findLocalBrainAsset assetId];
          v23 = 138543362;
          v24 = assetId;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found brain asset:%{public}@ on disk, skipping scan", &v23, 0xCu);
        }

        v20 = @"LocalBrainFound";
        goto LABEL_21;
      }

      if (v18)
      {
        assetId2 = [findLocalBrainAsset assetId];
        v23 = 138543362;
        v24 = assetId2;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found brain asset:%{public}@ on disk but forced to scan again", &v23, 0xCu);
      }
    }

    else
    {
      v17 = nrdSharedLogger(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Could not find brain asset on disk, going to scan", &v23, 2u);
      }
    }

    v20 = @"NoLocalBrainFound";
LABEL_21:

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM postEvent:v20];

    goto LABEL_10;
  }

  v9 = nrdSharedLogger(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138543362;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Brain path specified by a default:%{public}@, skipping scan", &v23, 0xCu);
  }

LABEL_9:

  findLocalBrainAsset = [(NRDUpdateDCore *)self updatedFSM];
  [findLocalBrainAsset postEvent:@"LocalBrainFound"];
LABEL_10:

  return 0;
}

- (void)cleanBeforeScan
{
  [(NRDUpdateDCore *)self setUuid:0];

  [(NRDUpdateDCore *)self setUpdateBrainAsset:0];
}

- (int64_t)actionBeginBrainScan:(id *)scan
{
  v4 = nrdSharedLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionBeginBrainScan", buf, 2u);
  }

  [(NRDUpdateDCore *)self cleanBeforeScan];
  v5 = +[NSUUID UUID];
  uUIDString = [v5 UUIDString];

  v7 = [[SUCoreScan alloc] initWithUUID:uUIDString];
  [(NRDUpdateDCore *)self setScanner:v7];
  scanPolicy = [(NRDUpdateDCore *)self scanPolicy];

  if (!scanPolicy)
  {
    v10 = [[SUCorePolicyUpdateBrain alloc] initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" documentationAssetType:0 usingPolicies:127 usingExtensions:0];
    softwareUpdateScanPolicy = [v10 softwareUpdateScanPolicy];
    [softwareUpdateScanPolicy setAllowSameVersion:1];

    softwareUpdateScanPolicy2 = [v10 softwareUpdateScanPolicy];
    [softwareUpdateScanPolicy2 setRestrictToFull:1];

    softwareUpdateScanPolicy3 = [v10 softwareUpdateScanPolicy];
    [softwareUpdateScanPolicy3 setDisableUI:1];

    [v10 setReleaseType:0];
    v14 = [NSNumber numberWithInt:1];
    [v10 setCompatibilityVersion:v14];

    [(NRDUpdateDCore *)self setScanPolicy:v10];
  }

  v15 = nrdSharedLogger(v9);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    scanPolicy2 = [(NRDUpdateDCore *)self scanPolicy];
    v17 = [scanPolicy2 description];
    *buf = 138543362;
    v29 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "ScanPolicy: %{public}@", buf, 0xCu);
  }

  updateAttempt = [(NRDUpdateDCore *)self updateAttempt];
  v19 = [updateAttempt unsignedLongLongValue] + 1;

  if (v19 < 4)
  {
    scanner = self->_scanner;
    scanPolicy3 = [(NRDUpdateDCore *)self scanPolicy];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __39__NRDUpdateDCore_actionBeginBrainScan___block_invoke;
    v26[3] = &unk_100018A60;
    v26[4] = self;
    v27 = uUIDString;
    [(SUCoreScan *)scanner locateAvailableUpdateWithPolicy:scanPolicy3 completion:v26];
  }

  else
  {
    v21 = nrdSharedLogger(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [NRDUpdateDCore actionBeginBrainScan:];
    }

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM postEvent:@"ErrorGeneric"];
  }

  return 0;
}

void __39__NRDUpdateDCore_actionBeginBrainScan___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nrdSharedLogger(v10);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __39__NRDUpdateDCore_actionBeginBrainScan___block_invoke_cold_1();
    }

    v24[0] = NSDebugDescriptionErrorKey;
    v24[1] = NSUnderlyingErrorKey;
    v25[0] = @"brain scan failed";
    v25[1] = v10;
    v13 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
    v14 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:607 userInfo:v13];

    v15 = [*(a1 + 32) updatedFSM];
    [v15 postEvent:@"ErrorGeneric" withInfo:v14];
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543618;
      v21 = v8;
      v22 = 2114;
      v23 = v9;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Scan returned with success\n primaryUpdateAsset: %{public}@\n secondaryUpdateAsset: %{public}@\n", &v20, 0x16u);
    }

    if (v8)
    {
      [*(a1 + 32) setUpdateBrainAsset:v8];
      [*(a1 + 32) setUuid:*(a1 + 40)];
      v17 = [*(a1 + 32) updatedFSM];
      v14 = v17;
      v18 = @"ProceedToNextUpdateStep";
    }

    else
    {
      v19 = nrdSharedLogger(v16);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "No brain update found", &v20, 2u);
      }

      v17 = [*(a1 + 32) updatedFSM];
      v14 = v17;
      v18 = @"NoRemoteBrainFound";
    }

    [v17 postEvent:v18];
  }
}

- (int64_t)actionDownloadBrainUpdate:(id *)update
{
  v4 = nrdSharedLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionDownloadBrainUpdate", v35, 2u);
  }

  updateBrainAsset = [(NRDUpdateDCore *)self updateBrainAsset];

  if (updateBrainAsset)
  {
    v7 = [SUCoreMobileAsset alloc];
    updateBrainAsset2 = [(NRDUpdateDCore *)self updateBrainAsset];
    uuid = [(NRDUpdateDCore *)self uuid];
    updatedFSM = [v7 initWithDelegate:self forAsset:updateBrainAsset2 updateUUID:uuid];

    [(NRDUpdateDCore *)self setMaControl:updatedFSM];
    v11 = [[SUCorePolicyUpdateBrain alloc] initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" documentationAssetType:0 usingPolicies:127 usingExtensions:0];
    loadBrainPolicy = [v11 loadBrainPolicy];
    [loadBrainPolicy setDiscretionary:0];

    loadBrainPolicy2 = [v11 loadBrainPolicy];
    [loadBrainPolicy2 setDisableUI:1];

    loadBrainPolicy3 = [v11 loadBrainPolicy];
    [loadBrainPolicy3 setAllowsCellular:0];

    downloadPreflightPolicy = [v11 downloadPreflightPolicy];
    [downloadPreflightPolicy setDiscretionary:0];

    downloadPreflightPolicy2 = [v11 downloadPreflightPolicy];
    [downloadPreflightPolicy2 setDisableUI:1];

    downloadPreflightPolicy3 = [v11 downloadPreflightPolicy];
    [downloadPreflightPolicy3 setAllowsCellular:0];

    softwareUpdateDownloadPolicy = [v11 softwareUpdateDownloadPolicy];
    [softwareUpdateDownloadPolicy setDiscretionary:0];

    softwareUpdateDownloadPolicy2 = [v11 softwareUpdateDownloadPolicy];
    [softwareUpdateDownloadPolicy2 setDisableUI:1];

    softwareUpdateDownloadPolicy3 = [v11 softwareUpdateDownloadPolicy];
    [softwareUpdateDownloadPolicy3 setAllowsCellular:0];

    [v11 setReleaseType:0];
    v21 = [NSNumber numberWithInt:1];
    [v11 setCompatibilityVersion:v21];

    [(NRDUpdateDCore *)self setDownloadPolicy:v11];
    maControl = [(NRDUpdateDCore *)self maControl];
    downloadPolicy = [(NRDUpdateDCore *)self downloadPolicy];
    uuid2 = [(NRDUpdateDCore *)self uuid];
    [maControl downloadSoftwareUpdateAssetWithPolicy:downloadPolicy withUUID:uuid2];

    v25 = 0;
  }

  else
  {
    v26 = nrdSharedLogger(v6);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [(NRDUpdateDCore *)v26 actionDownloadBrainUpdate:v27, v28, v29, v30, v31, v32, v33];
    }

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM postEvent:@"ErrorGeneric"];
    v25 = 8700;
  }

  return v25;
}

- (void)maDownloadProgress:(id)progress
{
  progressCopy = progress;
  v4 = nrdSharedLogger(progressCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = progressCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Download progress is : %{public}@", &v5, 0xCu);
  }
}

- (void)maDownloadStalled:(id)stalled
{
  stalledCopy = stalled;
  v4 = nrdSharedLogger(stalledCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = stalledCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Download is currently stalled : %{public}@", &v5, 0xCu);
  }
}

- (void)maDownloaded:(id)downloaded
{
  downloadedCopy = downloaded;
  v5 = nrdSharedLogger(downloadedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = downloadedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update brain asset has downloaded successfully : %@", &v7, 0xCu);
  }

  updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
  [updatedFSM postEvent:@"ProceedToNextUpdateStep"];
}

- (void)maDownloadFailed:(id)failed
{
  failedCopy = failed;
  v5 = nrdSharedLogger(failedCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NRDUpdateDCore maDownloadFailed:];
  }

  v9[0] = NSDebugDescriptionErrorKey;
  v9[1] = NSUnderlyingErrorKey;
  v10[0] = @"Update brain asset download failed";
  v10[1] = failedCopy;
  v6 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:608 userInfo:v6];

  updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
  [updatedFSM postEvent:kSU_E_DownloadFailed withInfo:v7];
}

- (int64_t)actionCheckDeviceUnlockConstraint:(id *)constraint
{
  v4 = nrdSharedLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionCheckDeviceUnlockConstraint", buf, 2u);
  }

  brainLoadRequiresUnlock = [(NRDUpdateDCore *)self brainLoadRequiresUnlock];
  v6 = brainLoadRequiresUnlock;
  v7 = nrdSharedLogger(brainLoadRequiresUnlock);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v8)
    {
      *buf = 0;
      v16 = "brain load does not require unlock";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v16, buf, 2u);
    }

LABEL_15:

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    v14 = updatedFSM;
    v15 = @"DeviceUnlocked";
    goto LABEL_16;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "brain load requires unlock", buf, 2u);
  }

  isPasscodeLocked = [(NRDUpdateDCore *)self isPasscodeLocked];
  v10 = isPasscodeLocked;
  v7 = nrdSharedLogger(isPasscodeLocked);
  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((v10 & 1) == 0)
  {
    if (v11)
    {
      *buf = 0;
      v16 = "device is unlocked";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v11)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Need to wait for device unlock before loading brain", buf, 2u);
  }

  [(NRDUpdateDCore *)self setKeyBagStateChangedNotifyToken:0xFFFFFFFFLL];
  keyBagQueue = [(NRDUpdateDCore *)self keyBagQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = __52__NRDUpdateDCore_actionCheckDeviceUnlockConstraint___block_invoke;
  handler[3] = &unk_100018A88;
  handler[4] = self;
  notify_register_dispatch("com.apple.mobile.keybagd.lock_status", &self->_keyBagStateChangedNotifyToken, keyBagQueue, handler);

  updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
  v14 = updatedFSM;
  v15 = @"DeviceLocked";
LABEL_16:
  [updatedFSM postEvent:v15];

  return 0;
}

void __52__NRDUpdateDCore_actionCheckDeviceUnlockConstraint___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) isPasscodeLocked];
  v3 = v2;
  v4 = nrdSharedLogger(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (v3)
    {
      v5 = @"YES";
    }

    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Device lock status changed: passcodeLocked = %{public}@", &v9, 0xCu);
  }

  if ((v3 & 1) == 0)
  {
    v7 = nrdSharedLogger(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Device unlocked, sending device unlocked event", &v9, 2u);
    }

    notify_cancel([*(a1 + 32) keyBagStateChangedNotifyToken]);
    v8 = [*(a1 + 32) updatedFSM];
    [v8 postEvent:@"DeviceUnlocked"];
  }
}

- (int64_t)actionWaitForUnlock:(id *)unlock
{
  v4 = nrdSharedLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionWaitForUnlock", v9, 2u);
  }

  delegate = [(NRDUpdateDCore *)self delegate];
  v10 = NSDebugDescriptionErrorKey;
  v11 = @"Device is locked, unable to load brain";
  v6 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:601 userInfo:v6];
  [delegate updateCompleted:v7];

  dispatch_semaphore_signal(self->_fsmSemaphore);
  return 0;
}

- (int64_t)actionLoadBrain:(id *)brain
{
  v4 = nrdSharedLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionLoadBrain", buf, 2u);
  }

  v5 = +[NSUserDefaults standardUserDefaults];
  path = [v5 objectForKey:@"NRDBrainPath"];

  if (path)
  {
    v8 = nrdSharedLogger(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v63 = path;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Defaults specified brain path is %{public}@", buf, 0xCu);
    }

    v9 = [(NRDUpdateDCore *)self setUpdateOptions:0];
    goto LABEL_11;
  }

  updateOptions = [(NRDUpdateDCore *)self updateOptions];
  v11 = [updateOptions objectForKeyedSubscript:@"__nrd_brain-location_key"];

  if (v11)
  {
    updateOptions2 = [(NRDUpdateDCore *)self updateOptions];
    path = [updateOptions2 objectForKeyedSubscript:@"__nrd_brain-location_key"];

    v14 = nrdSharedLogger(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v63 = path;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Option specified brain path is %{public}@", buf, 0xCu);
    }

    v9 = [(NRDUpdateDCore *)self setUpdateOptions:0];
    if (path)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

  updateBrainAsset = [(NRDUpdateDCore *)self updateBrainAsset];

  if (updateBrainAsset)
  {
    updateBrainAsset2 = [(NRDUpdateDCore *)self updateBrainAsset];
    getLocalUrl = [updateBrainAsset2 getLocalUrl];
    path = [getLocalUrl path];

    v28 = nrdSharedLogger(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v63 = path;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Downloaded brain path is %{public}@", buf, 0xCu);
    }

    updateBrainAsset3 = [(NRDUpdateDCore *)self updateBrainAsset];
  }

  else
  {
    localBrainAsset = [(NRDUpdateDCore *)self localBrainAsset];

    if (!localBrainAsset)
    {
      v47 = nrdSharedLogger(v31);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        [(NRDUpdateDCore *)v47 actionLoadBrain:v48, v49, v50, v51, v52, v53, v54];
      }

      v60 = NSDebugDescriptionErrorKey;
      v61 = @"LoadingBrain state was reached without either a downloaded brain or an existing local brain";
      v45 = [NSDictionary dictionaryWithObjects:&v61 forKeys:&v60 count:1];
      v46 = 600;
      goto LABEL_32;
    }

    localBrainAsset2 = [(NRDUpdateDCore *)self localBrainAsset];
    getLocalUrl2 = [localBrainAsset2 getLocalUrl];
    path = [getLocalUrl2 path];

    v35 = nrdSharedLogger(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v63 = path;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Existing local brain path is %{public}@", buf, 0xCu);
    }

    updateBrainAsset3 = [(NRDUpdateDCore *)self localBrainAsset];
  }

  v36 = updateBrainAsset3;
  [(NRDUpdateDCore *)self setLoadBrainAsset:updateBrainAsset3];

  if (!path)
  {
LABEL_29:
    v37 = nrdSharedLogger(v9);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      [(NRDUpdateDCore *)v37 actionLoadBrain:v38, v39, v40, v41, v42, v43, v44];
    }

    v58 = NSDebugDescriptionErrorKey;
    v59 = @"brain path is nil";
    v45 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v46 = 603;
LABEL_32:
    v16 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:v46 userInfo:v45];

    path = [(NRDUpdateDCore *)self updatedFSM];
    [path postEvent:@"ErrorGeneric" withInfo:v16];
    goto LABEL_19;
  }

LABEL_11:
  v15 = nrdSharedLogger(v9);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Trying to load update brain", buf, 2u);
  }

  v55 = 0;
  v16 = [NRDUpdateBrainLoader brainAtPath:path delegate:self error:&v55];
  v17 = v55;
  v18 = v17;
  if (v17)
  {
    v56[0] = NSDebugDescriptionErrorKey;
    v56[1] = NSUnderlyingErrorKey;
    v57[0] = @"load brain failed";
    v57[1] = v17;
    v19 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
    updatedFSM2 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:602 userInfo:v19];

    updatedFSM = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM postEvent:@"ErrorGeneric" withInfo:updatedFSM2];
  }

  else
  {
    v22 = nrdSharedLogger([(NRDUpdateDCore *)self setBrain:v16]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "update brain load succeeded", buf, 2u);
    }

    updatedFSM2 = [(NRDUpdateDCore *)self updatedFSM];
    [updatedFSM2 postEvent:@"ProceedToNextUpdateStep"];
  }

LABEL_19:
  return 0;
}

- (int64_t)actionRunBrain:(id *)brain
{
  v4 = nrdSharedLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionRunBrain", buf, 2u);
  }

  *buf = 0;
  v18 = buf;
  v19 = 0x2020000000;
  v20 = 3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __33__NRDUpdateDCore_actionRunBrain___block_invoke;
  block[3] = &unk_100018AB0;
  block[4] = buf;
  if (actionRunBrain__onceToken != -1)
  {
    dispatch_once(&actionRunBrain__onceToken, block);
  }

  updateOptions = [(NRDUpdateDCore *)self updateOptions];
  v6 = [updateOptions objectForKeyedSubscript:@"__nrd_brain-location_key"];

  if (v6 && +[NRDUpdateBrainLoader isBrainLoaded])
  {
    delegate = [(NRDUpdateDCore *)self delegate];
    [delegate requestExit:0 reason:@"A new NRD brain will be loaded from an option-specified local path."];

    v21[0] = NSDebugDescriptionErrorKey;
    v21[1] = @"com.apple.NRD-Resend";
    v22[0] = @"new local brain load needed";
    v22[1] = &__kCFBooleanTrue;
    v8 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v9 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:610 userInfo:v8];

    delegate2 = [(NRDUpdateDCore *)self delegate];
    [delegate2 updateCompleted:v9];

    dispatch_semaphore_signal(self->_fsmSemaphore);
  }

  else
  {
    brain = [(NRDUpdateDCore *)self brain];
    v12 = *(v18 + 3);
    updateOptions2 = [(NRDUpdateDCore *)self updateOptions];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = __33__NRDUpdateDCore_actionRunBrain___block_invoke_2;
    v15[3] = &unk_100018A38;
    v15[4] = self;
    [brain run:v12 options:updateOptions2 callback:v15];
  }

  _Block_object_dispose(buf, 8);
  return 0;
}

void __33__NRDUpdateDCore_actionRunBrain___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_4;
  }

  v5 = [v3 domain];
  if ([v5 isEqualToString:@"NRDUpdateErrorDomain"])
  {
    v6 = [v4 code];

    if (v6 == 111)
    {
LABEL_4:
      v7 = nrdSharedLogger(v3);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "brain run completed successfully", v14, 2u);
      }

      v8 = [*(a1 + 32) brain];
      [*(a1 + 32) setRunningBrain:v8];

      v9 = [*(a1 + 32) delegate];
      [v9 updateCompleted:0];

      dispatch_semaphore_signal(*(*(a1 + 32) + 8));
      goto LABEL_11;
    }
  }

  else
  {
  }

  v10 = nrdSharedLogger(v3);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __33__NRDUpdateDCore_actionRunBrain___block_invoke_2_cold_1();
  }

  v15[0] = NSDebugDescriptionErrorKey;
  v15[1] = NSUnderlyingErrorKey;
  v16[0] = @"run brain failed";
  v16[1] = v4;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
  v12 = [NSError errorWithDomain:@"NRDUpdatedDomain" code:609 userInfo:v11];

  v13 = [*(a1 + 32) delegate];
  [v13 updateCompleted:v12];

  dispatch_semaphore_signal(*(*(a1 + 32) + 8));
LABEL_11:
}

- (int64_t)actionScheduleRetry:(id)retry error:(id *)error
{
  retryCopy = retry;
  v6 = nrdSharedLogger(retryCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "In actionScheduleRetry", buf, 2u);
  }

  v8 = nrdSharedLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Removing all update brain assets", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __44__NRDUpdateDCore_actionScheduleRetry_error___block_invoke;
  v11[3] = &unk_100018AD8;
  v11[4] = self;
  v12 = retryCopy;
  v9 = retryCopy;
  [SUCorePurge removeAllAssetsOfType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" completion:v11];

  return 0;
}

void __44__NRDUpdateDCore_actionScheduleRetry_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__NRDUpdateDCore_findLocalBrainAsset__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing all update brain assets succeeded", v7, 2u);
  }

  [*(a1 + 32) scheduleNRDUpdateBrainReScan:0];
  v6 = [*(a1 + 32) delegate];
  [v6 updateCompleted:*(a1 + 40)];

  dispatch_semaphore_signal(*(*(a1 + 32) + 8));
}

- (int64_t)actionPeriodicScan:(id *)scan
{
  v4 = nrdSharedLogger(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "In actionPeriodicScan", buf, 2u);
  }

  runningBrain = [(NRDUpdateDCore *)self runningBrain];

  if (runningBrain)
  {
    runningBrain2 = [(NRDUpdateDCore *)self runningBrain];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __37__NRDUpdateDCore_actionPeriodicScan___block_invoke;
    v10[3] = &unk_100018A38;
    v10[4] = self;
    [runningBrain2 run:4 callback:v10];
  }

  else
  {
    v8 = nrdSharedLogger(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "actionPeriodicScan no running brain", buf, 2u);
    }

    dispatch_semaphore_signal(self->_fsmSemaphore);
  }

  return 0;
}

void __37__NRDUpdateDCore_actionPeriodicScan___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __37__NRDUpdateDCore_actionPeriodicScan___block_invoke_cold_1();
    }

    dispatch_semaphore_signal(*(*(a1 + 32) + 8));
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "brain run idle completed successfully", buf, 2u);
    }

    v6 = [SUCoreScan alloc];
    v7 = +[NSUUID UUID];
    v8 = [v7 UUIDString];
    v9 = [v6 initWithUUID:v8];

    v10 = [[SUCorePolicyUpdateBrain alloc] initWithSoftwareUpdateAssetType:@"com.apple.MobileAsset.RecoveryOSUpdateBrain" documentationAssetType:0 usingPolicies:127 usingExtensions:0];
    v11 = [v10 softwareUpdateScanPolicy];
    [v11 setAllowSameVersion:1];

    v12 = [v10 softwareUpdateScanPolicy];
    [v12 setRestrictToFull:1];

    v13 = [v10 softwareUpdateScanPolicy];
    [v13 setDisableUI:1];

    [v10 setReleaseType:0];
    v14 = [NSNumber numberWithInt:1];
    [v10 setCompatibilityVersion:v14];

    v16 = nrdSharedLogger(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v10 description];
      *buf = 138543362;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Periodic ScanPolicy: %{public}@", buf, 0xCu);
    }

    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __37__NRDUpdateDCore_actionPeriodicScan___block_invoke_435;
    v20[3] = &unk_100018A60;
    v18 = *(a1 + 32);
    v21 = v9;
    v22 = v18;
    v19 = v9;
    [v19 locateAvailableUpdateWithPolicy:v10 completion:v20];
  }
}

void __37__NRDUpdateDCore_actionPeriodicScan___block_invoke_435(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nrdSharedLogger(v10);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __37__NRDUpdateDCore_actionPeriodicScan___block_invoke_435_cold_1();
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v30 = 138543618;
    v31 = v8;
    v32 = 2114;
    v33 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Periodic Scan returned with success\n primaryUpdateAsset: %{public}@\n secondaryUpdateAsset: %{public}@\n", &v30, 0x16u);
  }

  if (v8)
  {
    v12 = [v8 assetProperty:@"Build"];
    if (!v12)
    {
      v12 = [v8 assetProperty:@"_MasteredVersion"];
    }

    v14 = [*(a1 + 40) loadBrainAsset];
    v15 = [v14 assetProperty:@"Build"];

    if (!v15)
    {
      v17 = [*(a1 + 40) loadBrainAsset];
      v15 = [v17 assetProperty:@"_MasteredVersion"];
    }

    v18 = nrdSharedLogger(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138543618;
      v31 = v12;
      v32 = 2114;
      v33 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Periodic Scan found brain version:%{public}@, existing version:%{public}@", &v30, 0x16u);
    }

    v19 = [v15 isEqual:v12];
    v20 = v19;
    v21 = nrdSharedLogger(v19);
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v22)
      {
        LOWORD(v30) = 0;
        v23 = "Periodic Scan returned with the existing brain asset";
        v24 = v21;
        v25 = 2;
LABEL_23:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, &v30, v25);
      }
    }

    else
    {
      if (v22)
      {
        LOWORD(v30) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Periodic Scan returned with new brain asset, purging old asset", &v30, 2u);
      }

      v26 = [*(a1 + 40) loadBrainAsset];
      v27 = [v26 purgeSync];

      v21 = nrdSharedLogger(v28);
      v29 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (!v27)
      {
        if (v29)
        {
          LOWORD(v30) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Purged old brain asset, send new brain notification", &v30, 2u);
        }

        [*(a1 + 40) newBrain:v12];
        goto LABEL_25;
      }

      if (v29)
      {
        v30 = 134217984;
        v31 = v27;
        v23 = "Purging old brain asset failed with result:%ld";
        v24 = v21;
        v25 = 12;
        goto LABEL_23;
      }
    }

LABEL_25:
    goto LABEL_26;
  }

  v12 = nrdSharedLogger(v13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v30) = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "No brain update found", &v30, 2u);
  }

LABEL_26:

  dispatch_semaphore_signal(*(*(a1 + 40) + 8));
}

- (int64_t)actionUnknownAction:(id)action error:(id *)error
{
  actionCopy = action;
  v5 = nrdSharedLogger(actionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NRDUpdateDCore actionUnknownAction:error:];
  }

  return 8113;
}

- (int64_t)getSchedulerQOS
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 stringForKey:@"SchedulerQOS"];

  if (!v3)
  {
    goto LABEL_13;
  }

  v5 = nrdSharedLogger(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = @"SchedulerQOS";
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found %{public}@=%{public}@ in preferences", &v10, 0x16u);
  }

  if ([v3 caseInsensitiveCompare:@"Background"])
  {
    if ([v3 caseInsensitiveCompare:@"Utility"])
    {
      if ([v3 caseInsensitiveCompare:@"UserInitiated"])
      {
        if ([v3 caseInsensitiveCompare:@"UserInteractive"])
        {
          v6 = [v3 caseInsensitiveCompare:@"Default"];
          if (v6)
          {
            v7 = nrdSharedLogger(v6);
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              [NRDUpdateDCore getSchedulerQOS];
            }
          }

          v8 = -1;
        }

        else
        {
          v8 = 33;
        }
      }

      else
      {
        v8 = 25;
      }
    }

    else
    {
      v8 = 17;
    }
  }

  else
  {
LABEL_13:
    v8 = 9;
  }

  return v8;
}

- (double)_minimumInterval:(double)interval
{
  intervalCopy = interval;
  if (interval < 60.0)
  {
    v4 = nrdSharedLogger(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 134218240;
      v7 = intervalCopy;
      v8 = 2048;
      v9 = 0x404E000000000000;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "interval of %.1f seconds is too low. clamping to %.1f seconds.", &v6, 0x16u);
    }

    return 60.0;
  }

  return intervalCopy;
}

- (void)scheduleNRDUpdateBrainReScan:(BOOL)scan
{
  scanCopy = scan;
  [(NRDUpdateDCore *)self cleanReScanScheduler];
  v5 = +[NSUserDefaults standardUserDefaults];
  v6 = [v5 objectForKey:@"NRDBrainReScanInterval"];

  if (v6)
  {
    v8 = nrdSharedLogger(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = @"NRDBrainReScanInterval";
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Found %{public}@ in defaults", buf, 0xCu);
    }

    [v6 doubleValue];
    [(NRDUpdateDCore *)self _minimumInterval:?];
    v10 = v9;
  }

  else
  {
    v10 = XPC_ACTIVITY_INTERVAL_1_HOUR;
  }

  v11 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_download"];
  v12 = v11;
  if (v11)
  {
    [v11 setInterval:v10];
    [v12 setQualityOfService:{-[NRDUpdateDCore getSchedulerQOS](self, "getSchedulerQOS")}];
    delegate2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(delegate2, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(delegate2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    [v12 _setAdditionalXPCActivityProperties:delegate2];
    v14 = nrdSharedLogger([(NRDUpdateDCore *)self setRescanScheduler:v12]);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (scanCopy)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Checking in retry activity for brain scan", buf, 2u);
      }

      v16 = [v12 description];
      [v12 identifier];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = __47__NRDUpdateDCore_scheduleNRDUpdateBrainReScan___block_invoke;
      v24[3] = &unk_1000188B8;
      v26 = v25 = v16;
      v17 = v26;
      v14 = v16;
      [v12 setCheckInHandler:v24];
      [v12 setPreregistered:1];
    }

    else if (v15)
    {
      *buf = 134217984;
      v28 = *&v10;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Scheduling a retry for brain update in %lf seconds", buf, 0xCu);
    }

    v18 = +[NRDUpdateBrainLoader isBrainLoaded];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = __47__NRDUpdateDCore_scheduleNRDUpdateBrainReScan___block_invoke_467;
    v20[3] = &unk_100018B00;
    v23 = v18;
    v21 = v12;
    selfCopy = self;
    [v21 scheduleWithBlock:v20];
    if (v18)
    {
      delegate = [(NRDUpdateDCore *)self delegate];
      [delegate requestExit:0 reason:@"NRD brain service has already been bootstrapped into the xpc namespace of this process."];
    }
  }

  else
  {
    delegate2 = [(NRDUpdateDCore *)self delegate];
    [delegate2 requestExit:1 reason:@"Failed to schedule a retry for NRD brain update"];
  }
}

void __47__NRDUpdateDCore_scheduleNRDUpdateBrainReScan___block_invoke(uint64_t a1)
{
  v2 = nrdSharedLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v9 = 138543618;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in.", &v9, 0x16u);
  }

  v6 = nrdSharedLogger(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in complete.", &v9, 0x16u);
  }
}

void __47__NRDUpdateDCore_scheduleNRDUpdateBrainReScan___block_invoke_467(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v11 = 138543362;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ fired", &v11, 0xCu);
  }

  v6 = [*(a1 + 32) shouldDefer];
  if (v6)
  {
    v7 = nrdSharedLogger(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      v11 = 138543362;
      v12 = v8;
      v9 = "Activity %{public}@ is deferred";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v11, 0xCu);
    }
  }

  else
  {
    if (*(a1 + 48) != 1)
    {
      [*(a1 + 40) performUpdate:&off_100019B28];
      v10 = 1;
      goto LABEL_12;
    }

    v7 = nrdSharedLogger(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      v11 = 138543362;
      v12 = v8;
      v9 = "Activity %{public}@ will be deferred because daemon needs to exit.";
      goto LABEL_9;
    }
  }

  v10 = 2;
LABEL_12:
  v3[2](v3, v10);
}

- (void)scheduleNRDUpdateBrainPeriodicScan
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"NRDBrainPeriodicScanInterval"];

  if (v4)
  {
    v6 = nrdSharedLogger(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v25 = @"NRDBrainPeriodicScanInterval";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Found %{public}@ in defaults", buf, 0xCu);
    }

    [v4 doubleValue];
    [(NRDUpdateDCore *)self _minimumInterval:?];
    v8 = v7;
  }

  else
  {
    v8 = XPC_ACTIVITY_INTERVAL_7_DAYS;
  }

  v9 = [[NSBackgroundActivityScheduler alloc] initWithIdentifier:@"com.apple.mobile.NRDUpdated-RecoveryOSUpdateBrain_autoscan"];
  v10 = v9;
  if (v9)
  {
    [v9 setInterval:v8];
    [v10 setDelay:v8 * 0.5];
    [v10 setQualityOfService:{-[NRDUpdateDCore getSchedulerQOS](self, "getSchedulerQOS")}];
    delegate = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_BOOL(delegate, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_BOOL(delegate, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
    [v10 _setAdditionalXPCActivityProperties:delegate];
    v12 = nrdSharedLogger([(NRDUpdateDCore *)self setPeriodicScheduler:v10]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Checking in periodic activity for brain scan", buf, 2u);
    }

    v13 = [v10 description];
    [v10 identifier];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __52__NRDUpdateDCore_scheduleNRDUpdateBrainPeriodicScan__block_invoke;
    v19[3] = &unk_100018B28;
    v21 = v20 = v13;
    selfCopy = self;
    v23 = v8;
    v14 = v21;
    v15 = v13;
    [v10 setCheckInHandler:v19];
    [v10 setPreregistered:1];
    [v10 setRepeats:1];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = __52__NRDUpdateDCore_scheduleNRDUpdateBrainPeriodicScan__block_invoke_485;
    v16[3] = &unk_1000187B8;
    v17 = v10;
    selfCopy2 = self;
    [v17 scheduleWithBlock:v16];
  }

  else
  {
    delegate = [(NRDUpdateDCore *)self delegate];
    [delegate requestExit:1 reason:@"Failed to schedule periodic scan for NRD brain update"];
  }
}

void __52__NRDUpdateDCore_scheduleNRDUpdateBrainPeriodicScan__block_invoke(uint64_t a1)
{
  v2 = nrdSharedLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v27 = 138543618;
    v28 = v3;
    v29 = 2114;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in.", &v27, 0x16u);
  }

  v5 = [*(a1 + 48) periodicScheduler];
  [v5 interval];
  v7 = v6;

  v9 = nrdSharedLogger(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 48) periodicScheduler];
    v11 = [*(a1 + 48) periodicScheduler];
    v12 = [v11 identifier];
    v27 = 138543874;
    v28 = v10;
    v29 = 2114;
    v30 = v12;
    v31 = 2048;
    v32 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ was preregistered with interval: %lf", &v27, 0x20u);
  }

  v14 = *(a1 + 56);
  if (v14 != v7)
  {
    v15 = [*(a1 + 48) periodicScheduler];
    [v15 setInterval:v14];

    v16 = *(a1 + 56) * 0.5;
    v17 = [*(a1 + 48) periodicScheduler];
    [v17 setDelay:v16];

    v19 = nrdSharedLogger(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 48) periodicScheduler];
      v21 = [*(a1 + 48) periodicScheduler];
      v22 = [v21 identifier];
      v23 = *(a1 + 56);
      v27 = 138543874;
      v28 = v20;
      v29 = 2114;
      v30 = v22;
      v31 = 2048;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ new interval: %lf", &v27, 0x20u);
    }
  }

  v24 = nrdSharedLogger(v13);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = *(a1 + 32);
    v26 = *(a1 + 40);
    v27 = 138543618;
    v28 = v25;
    v29 = 2114;
    v30 = v26;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ check-in complete.", &v27, 0x16u);
  }
}

void __52__NRDUpdateDCore_scheduleNRDUpdateBrainPeriodicScan__block_invoke_485(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = nrdSharedLogger(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) identifier];
    v10 = 138543362;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ fired", &v10, 0xCu);
  }

  v6 = [*(a1 + 32) shouldDefer];
  if (v6)
  {
    v7 = nrdSharedLogger(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) identifier];
      v10 = 138543362;
      v11 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ is deferred", &v10, 0xCu);
    }

    v9 = 2;
  }

  else
  {
    [*(a1 + 40) performUpdate:&off_100019B50];
    v9 = 1;
  }

  v3[2](v3, v9);
}

- (BOOL)isPasscodeLocked
{
  v5[0] = kMKBUserSessionIDKey;
  v5[1] = @"ExtendedDeviceLockState";
  v6[0] = &off_100019AB8;
  v6[1] = &__kCFBooleanTrue;
  [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];
  v2 = MKBGetDeviceLockState();
  return (v2 < 7) & (0x46u >> v2);
}

- (int64_t)performAction:(id)action onEvent:(id)event inState:(id)state withInfo:(id)info nextState:(id)nextState error:(id *)error
{
  actionCopy = action;
  eventCopy = event;
  stateCopy = state;
  infoCopy = info;
  nextStateCopy = nextState;
  v19 = nrdSharedLogger(nextStateCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138544130;
    v24 = actionCopy;
    v25 = 2114;
    v26 = eventCopy;
    v27 = 2114;
    v28 = stateCopy;
    v29 = 2114;
    v30 = nextStateCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PerformAction: Action:%{public}@ Event:%{public}@ inState:%{public}@ nextState:%{public}@", &v23, 0x2Au);
  }

  if ([actionCopy isEqualToString:kSUCoreFSMActionNoOp])
  {
    v20 = 0;
  }

  else
  {
    if ([actionCopy isEqualToString:kSU_A_LoadPersisted])
    {
      v21 = [(NRDUpdateDCore *)self actionLoadPersisted:error];
    }

    else if ([actionCopy isEqualToString:@"ActionBeginBrainScan"])
    {
      v21 = [(NRDUpdateDCore *)self actionBeginBrainScan:error];
    }

    else if ([actionCopy isEqualToString:@"ActionDownloadBrain"])
    {
      v21 = [(NRDUpdateDCore *)self actionDownloadBrainUpdate:error];
    }

    else if ([actionCopy isEqualToString:@"ActionCheckDeviceUnlockConstraint"])
    {
      v21 = [(NRDUpdateDCore *)self actionCheckDeviceUnlockConstraint:error];
    }

    else if ([actionCopy isEqualToString:@"ActionWaitForUnlock"])
    {
      v21 = [(NRDUpdateDCore *)self actionWaitForUnlock:error];
    }

    else if ([actionCopy isEqualToString:@"ActionLoadBrain"])
    {
      v21 = [(NRDUpdateDCore *)self actionLoadBrain:error];
    }

    else if ([actionCopy isEqualToString:@"ActionRunBrain"])
    {
      v21 = [(NRDUpdateDCore *)self actionRunBrain:error];
    }

    else if ([actionCopy isEqualToString:@"ActionScheduleRetry"])
    {
      v21 = [(NRDUpdateDCore *)self actionScheduleRetry:infoCopy error:error];
    }

    else if ([actionCopy isEqualToString:@"ActionPeriodicScan"])
    {
      v21 = [(NRDUpdateDCore *)self actionPeriodicScan:error];
    }

    else
    {
      v21 = [(NRDUpdateDCore *)self actionUnknownAction:actionCopy error:error];
    }

    v20 = v21;
  }

  return v20;
}

- (void)performUpdate:(id)update
{
  updateCopy = update;
  updateQueue = [(NRDUpdateDCore *)self updateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __32__NRDUpdateDCore_performUpdate___block_invoke;
  v7[3] = &unk_1000188B8;
  v8 = updateCopy;
  selfCopy = self;
  v6 = updateCopy;
  dispatch_async(updateQueue, v7);
}

intptr_t __32__NRDUpdateDCore_performUpdate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:@"TriggeredByDeviceUnlock"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v5 = nrdSharedLogger(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Continuing update on device unlock event", buf, 2u);
    }

    v6 = [*(a1 + 40) updatedFSM];
    v7 = v6;
    v8 = @"DeviceUnlocked";
  }

  else
  {
    v9 = [*(a1 + 32) objectForKey:@"TriggeredByPeriodicActivity"];
    v10 = [v9 BOOLValue];

    if (v10)
    {
      v12 = nrdSharedLogger(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "perform periodic scan", v14, 2u);
      }

      [*(a1 + 40) setForceBrainUpdate:1];
      v6 = [*(a1 + 40) updatedFSM];
      v7 = v6;
      v8 = @"PeriodicScanRequested";
    }

    else
    {
      v6 = [*(a1 + 40) updatedFSM];
      v7 = v6;
      v8 = @"ProceedToNextUpdateStep";
    }
  }

  [v6 postEvent:v8];

  return dispatch_semaphore_wait(*(*(a1 + 40) + 8), 0xFFFFFFFFFFFFFFFFLL);
}

- (void)newSchedulerWithIdentifier:(id)identifier reply:(id)reply
{
  identifierCopy = identifier;
  replyCopy = reply;
  v7 = [[NRDBackgroundActivitySchedulerServerImpl alloc] initWithIdentifier:identifierCopy];
  v8 = nrdSharedLogger(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543618;
    v10 = v7;
    v11 = 2114;
    v12 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Activity %{public}@ %{public}@ created.", &v9, 0x16u);
  }

  replyCopy[2](replyCopy, v7);
}

- (void)newBrain:(id)brain
{
  brainCopy = brain;
  v5 = [NSError errorWithDomain:@"NRDUpdateErrorDomain" code:112 userInfo:0];
  v6 = nrdSharedLogger(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"(unversioned)";
    if (brainCopy)
    {
      v7 = brainCopy;
    }

    v9 = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got newBrain notification, brainVersion:%{public}@", &v9, 0xCu);
  }

  delegate = [(NRDUpdateDCore *)self delegate];
  [delegate requestExit:0 reason:@"NRD brain has downloaded a new brain (via delegate)" relaunchError:v5];
}

- (void)connectionInterrupted
{
  v3 = nrdSharedLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got connectionInterrupted notification", v5, 2u);
  }

  delegate = [(NRDUpdateDCore *)self delegate];
  [delegate requestExit:1 reason:@"NRD brain connection has been unexpectedly interrupted"];
}

- (void)connectionInvalidated
{
  v3 = nrdSharedLogger(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Got connectionInvalidated notification", v5, 2u);
  }

  delegate = [(NRDUpdateDCore *)self delegate];
  [delegate requestExit:1 reason:@"NRD brain connection has been unexpectedly invalidated"];
}

- (void)actionUnknownAction:error:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "In unknown state!..action: %{public}@ error:%{public}@", v2, 0x16u);
}

@end