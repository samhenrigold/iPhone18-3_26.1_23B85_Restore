@interface MSUNRDUpdateBrainController
+ (id)sharedInstance;
+ (id)stateToString:(int)string;
- (MSUNRDUpdateBrainController)init;
- (id)status;
- (id)waitWithTimeout:(int)timeout progressCallback:(void *)callback context:(void *)context releaseLock:(BOOL)lock;
- (void)cancelAndLock;
- (void)prepareResizeForNeRDUpdate;
- (void)saveLastError:(id)error;
- (void)saveLastSuccessForTargetMainOSBuild:(id)build recoveryOSBuild:(id)sBuild;
- (void)saveMSUUpdateAttributes:(id)attributes andState:(int)state;
- (void)saveRecoveryOSInfo:(id)info;
- (void)saveState:(int)state;
- (void)startForMSUUpdate:(id)update withMSUBrainVersion:(id)version withOptions:(id)options;
- (void)updateStatusFromCallback:(id)callback;
@end

@implementation MSUNRDUpdateBrainController

- (MSUNRDUpdateBrainController)init
{
  v20.receiver = self;
  v20.super_class = MSUNRDUpdateBrainController;
  v2 = [(MSUNRDUpdateBrainController *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MobileSoftwareUpdate.UpdateBrainService.MSUNRDUpdateBrainControllerWork", v3);
    workQueue = v2->_workQueue;
    v2->_workQueue = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MobileSoftwareUpdate.UpdateBrainService.MSUNRDUpdateBrainControllerCancel", v6);
    cancelQueue = v2->_cancelQueue;
    v2->_cancelQueue = v7;

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.MobileSoftwareUpdate.UpdateBrainService.MSUNRDUpdateBrainControllerState", v9);
    stateQueue = v2->_stateQueue;
    v2->_stateQueue = v10;

    nrdLock = v2->_nrdLock;
    v2->_nrdLock = 0;

    lastError = v2->_lastError;
    v2->_lastError = 0;

    currentRecoveryOSInfo = v2->_currentRecoveryOSInfo;
    v2->_currentRecoveryOSInfo = 0;

    currentMSUUpdateAttributes = v2->_currentMSUUpdateAttributes;
    v2->_currentMSUUpdateAttributes = 0;

    progressStatus = v2->_progressStatus;
    v2->_progressStatus = 0;

    v2->_state = 0;
    lastSuccessForTargetMainOSBuild = v2->_lastSuccessForTargetMainOSBuild;
    v2->_lastSuccessForTargetMainOSBuild = 0;

    lastSuccessForTargetRecoveryOSBuild = v2->_lastSuccessForTargetRecoveryOSBuild;
    v2->_lastSuccessForTargetRecoveryOSBuild = 0;

    v2->_progressCB = 0;
    v2->_progressContext = 0;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_once != -1)
  {
    +[MSUNRDUpdateBrainController sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

void __45__MSUNRDUpdateBrainController_sharedInstance__block_invoke(id a1)
{
  sharedInstance___instance = objc_alloc_init(MSUNRDUpdateBrainController);

  _objc_release_x1();
}

- (void)startForMSUUpdate:(id)update withMSUBrainVersion:(id)version withOptions:(id)options
{
  updateCopy = update;
  versionCopy = version;
  optionsCopy = options;
  if (versionCopy)
  {
    v16 = versionCopy;
  }

  else
  {
    v16 = @"(unversioned)";
  }

  logfunction(", 1, @"Received request to start RecoveryOS update for MSU update:%@\n"", v10, v11, v12, v13, v14, updateCopy);
  workQueue = [(MSUNRDUpdateBrainController *)self workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__MSUNRDUpdateBrainController_startForMSUUpdate_withMSUBrainVersion_withOptions___block_invoke;
  block[3] = &unk_100048FC0;
  v22 = updateCopy;
  selfCopy = self;
  v24 = v16;
  v25 = optionsCopy;
  v18 = optionsCopy;
  v19 = v16;
  v20 = updateCopy;
  dispatch_async(workQueue, block);
}

void __81__MSUNRDUpdateBrainController_startForMSUUpdate_withMSUBrainVersion_withOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction(", 1, @"starting RecoveryOS update for MSU update:%@\n"", a4, a5, a6, a7, a8, *(a1 + 32));
  [*(a1 + 40) saveMSUUpdateAttributes:*(a1 + 32) andState:1];
  v94 = 0;
  v95 = 0;
  updated = NRDGetUpdateBrainConnection(&v95, &v94, progressCallback, *(a1 + 40));
  v10 = v95;
  v11 = v94;
  v12 = objc_opt_new();
  [v12 setObject:*(a1 + 32) forKeyedSubscript:@"MainOSUpdateAttributes"];
  v96 = @"msuBrainVersion";
  v97 = *(a1 + 48);
  v13 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
  [v12 setObject:v13 forKeyedSubscript:@"AdditionalEventInfo"];

  v14 = [*(a1 + 56) objectForKeyedSubscript:@"ForceInline"];
  v15 = [v14 BOOLValue];

  if (v15)
  {
    logfunction(", 1, @"MSUNRD detected option %@, adding appropriate keys to query\n", v16, v17, v18, v19, v20, @"ForceInline"");
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"Foreground"];
    [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ForceInline"];
  }

  if (updated)
  {
    [*(a1 + 40) saveState:2];
    v21 = [*(a1 + 40) nrdLock];

    if (v21)
    {
      logfunction(", 1, @"Found existing nrd lock, releasing it first\n"", v22, v23, v24, v25, v26);
      v27 = [*(a1 + 40) nrdLock];
      NRDReleaseActivityLock(v27);

      [*(a1 + 40) setNrdLock:0];
    }

    v28 = NRDAcquireActivityLock(v10, progressCallback, *(a1 + 40));
    [*(a1 + 40) setNrdLock:v28];

    v29 = [*(a1 + 32) objectForKeyedSubscript:@"OSVersion"];
    v30 = [*(a1 + 32) objectForKeyedSubscript:@"Build"];
    v92 = 0;
    v93 = 0;
    v91 = v11;
    v31 = NRDQueryRecoveryOS(v10, v29, v30, v12, &v93, &v92, &v91, progressCallback, *(a1 + 40));
    v32 = v93;
    v33 = v92;
    v34 = v91;

    if (v33)
    {
      logfunction(", 1, @"Installed recovery OS:\n%@\n"", v35, v36, v37, v38, v39, v33);
      [*(a1 + 40) saveRecoveryOSInfo:v33];
      if (v31)
      {
        if (v32)
        {
LABEL_9:
          [*(a1 + 40) saveState:3];
          logfunction(", 1, @"RecoveryOS update was found:\n%@\n"", v45, v46, v47, v48, v49, v32);
          v89 = v34;
          v90 = 0;
          v50 = NRDDownloadRecoveryOS(v10, v32, 0, &v90, &v89, progressCallback, *(a1 + 40));
          v51 = v90;
          v11 = v89;

          if (v50)
          {
            [*(a1 + 40) saveState:4];
            logfunction(", 1, @"RecoveryOS update was successfully downloaded.\n"", v57, v58, v59, v60, v61);
            v87 = v11;
            v88 = 0;
            v62 = NRDInstallRecoveryOS(v10, v32, 0, &v88, &v87, progressCallback, *(a1 + 40));
            v63 = v88;
            v34 = v87;

            if (v62)
            {
              v85 = *(a1 + 40);
              v86 = [*(a1 + 32) objectForKeyedSubscript:@"Build"];
              v84 = [v32 objectForKeyedSubscript:@"assetAttributes"];
              v69 = [v84 objectForKeyedSubscript:@"AssetProperties"];
              v70 = [v69 objectForKeyedSubscript:@"Build"];
              [v85 saveLastSuccessForTargetMainOSBuild:v86 recoveryOSBuild:v70];

              [*(a1 + 40) saveState:5];
              logfunction(", 1, @"RecoveryOS update was successfully installed.\n"", v71, v72, v73, v74, v75);
              goto LABEL_22;
            }

            logfunction(", 1, @"Non-fatal error installing RecoveryOS update: %@\n"", v64, v65, v66, v67, v68, v34);
            goto LABEL_19;
          }

          logfunction(", 1, @"Non-fatal error downloading RecoveryOS update: %@\n"", v52, v53, v54, v55, v56, v11);
          v63 = 0;
          goto LABEL_13;
        }

LABEL_16:
        logfunction(", 1, @"No RecoveryOS update is required for this update.\n"", v40, v41, v42, v43, v44);
        v76 = 0;
        v51 = 0;
        v63 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      if (v31)
      {
        logfunction(", 1, @"No recoveryOS is installed\n"", v35, v36, v37, v38, v39);
        [*(a1 + 40) saveRecoveryOSInfo:0];
        if (v32)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }

      logfunction(", 1, @"Installed state of recovery OS is unknown.\n"", v35, v36, v37, v38, v39);
    }

    logfunction(", 1, @"Non-fatal error querying for RecoveryOS update: %@\n"", v40, v41, v42, v43, v44, v34);
    v51 = 0;
    v63 = 0;
    goto LABEL_19;
  }

  logfunction(", 1, @"Non-fatal error connecting to RecoveryOSUpdateBrain: %@\n"", v16, v17, v18, v19, v20, v11);
  v33 = 0;
  v51 = 0;
  v63 = 0;
  v32 = 0;
LABEL_13:
  v34 = v11;
LABEL_19:
  [*(a1 + 40) saveLastError:v34];
  v76 = 6;
LABEL_20:
  [*(a1 + 40) saveState:v76];
  v77 = [*(a1 + 40) nrdLock];

  if (v77)
  {
    logfunction(", 1, @"Releasing nrd lock\n"", v78, v79, v80, v81, v82);
    v83 = [*(a1 + 40) nrdLock];
    NRDReleaseActivityLock(v83);

    [*(a1 + 40) setNrdLock:0];
  }

LABEL_22:
}

- (void)updateStatusFromCallback:(id)callback
{
  callbackCopy = callback;
  stateQueue = [(MSUNRDUpdateBrainController *)self stateQueue];
  dispatch_assert_queue_not_V2(stateQueue);

  stateQueue2 = [(MSUNRDUpdateBrainController *)self stateQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __56__MSUNRDUpdateBrainController_updateStatusFromCallback___block_invoke;
  v8[3] = &unk_100048FE8;
  v9 = callbackCopy;
  selfCopy = self;
  v7 = callbackCopy;
  dispatch_async(stateQueue2, v8);
}

id __56__MSUNRDUpdateBrainController_updateStatusFromCallback___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction(", 1, @"Current NRD Update status:%@\n"", a4, a5, a6, a7, a8, *(a1 + 32));
  [*(a1 + 40) setProgressStatus:*(a1 + 32)];
  result = [*(a1 + 40) progressCB];
  if (result)
  {
    v12 = [*(a1 + 40) progressCB];
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) progressContext];

    return v12(v10, v11);
  }

  return result;
}

- (id)status
{
  stateQueue = [(MSUNRDUpdateBrainController *)self stateQueue];
  dispatch_assert_queue_not_V2(stateQueue);

  v4 = +[NSMutableDictionary dictionary];
  stateQueue2 = [(MSUNRDUpdateBrainController *)self stateQueue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __37__MSUNRDUpdateBrainController_status__block_invoke;
  v9[3] = &unk_100048FE8;
  v6 = v4;
  v10 = v6;
  selfCopy = self;
  dispatch_sync(stateQueue2, v9);

  v7 = v6;
  return v6;
}

void __37__MSUNRDUpdateBrainController_status__block_invoke(uint64_t a1)
{
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 40) state]);
  [*(a1 + 32) setObject:v2 forKeyedSubscript:@"State"];

  v3 = [*(a1 + 40) currentMSUUpdateAttributes];

  if (v3)
  {
    v4 = [*(a1 + 40) currentMSUUpdateAttributes];
    [*(a1 + 32) setObject:v4 forKeyedSubscript:@"MSUUpdateAttributes"];
  }

  v5 = [*(a1 + 40) progressStatus];

  if (v5)
  {
    v6 = [*(a1 + 40) progressStatus];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"ProgressStatus"];
  }

  v7 = [*(a1 + 40) lastError];

  if (v7)
  {
    v8 = [*(a1 + 40) lastError];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:@"LastError"];
  }

  v9 = [*(a1 + 40) currentRecoveryOSInfo];

  if (v9)
  {
    v10 = [*(a1 + 40) currentRecoveryOSInfo];
    [*(a1 + 32) setObject:v10 forKeyedSubscript:@"RecoveryOSInfo"];
  }

  v11 = [*(a1 + 40) lastSuccessForTargetMainOSBuild];

  if (v11)
  {
    v12 = [*(a1 + 40) lastSuccessForTargetMainOSBuild];
    [*(a1 + 32) setObject:v12 forKeyedSubscript:@"SuccessForTargetMainOSBuild"];
  }

  v13 = [*(a1 + 40) lastSuccessForTargetRecoveryOSBuild];

  if (v13)
  {
    v14 = [*(a1 + 40) lastSuccessForTargetRecoveryOSBuild];
    [*(a1 + 32) setObject:v14 forKeyedSubscript:@"SuccessForTargetRecoveryOSBuild"];
  }
}

- (void)cancelAndLock
{
  logfunction(", 1, @"Received request to cancel RecoveryOS update\n"", v2, v3, v4, v5, v6);
  cancelQueue = [(MSUNRDUpdateBrainController *)self cancelQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__MSUNRDUpdateBrainController_cancelAndLock__block_invoke;
  block[3] = &unk_100049038;
  block[4] = self;
  dispatch_async(cancelQueue, block);
}

void __44__MSUNRDUpdateBrainController_cancelAndLock__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  logfunction(", 1, @"starting to cancel RecoveryOS update\n"", a4, a5, a6, a7, a8);
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__0;
  v36 = __Block_byref_object_dispose__0;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  obj = 0;
  v27 = 0;
  updated = NRDGetUpdateBrainConnection(&v27, &obj, progressCallback, *(a1 + 32));
  v10 = v27;
  objc_storeStrong(&v37, obj);
  *(v29 + 24) = updated;
  v17 = (v33 + 5);
  v16 = v33[5];
  if ((updated & 1) == 0)
  {
    v20 = @"Non-fatal error connecting to RecoveryOSUpdateBrain: %@\n";
LABEL_6:
    logfunction("", 1, v20, v11, v12, v13, v14, v15, v16);
    goto LABEL_7;
  }

  v25 = v33[5];
  v18 = NRDCancelRecoveryOSUpdate(v10, &v25, progressCallback, *(a1 + 32));
  objc_storeStrong(v17, v25);
  *(v29 + 24) = v18;
  if ((v18 & 1) == 0)
  {
    v16 = v33[5];
    v20 = @"Non-fatal error canceling recoveryOS update: %@\n";
    goto LABEL_6;
  }

  v19 = [*(a1 + 32) workQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __44__MSUNRDUpdateBrainController_cancelAndLock__block_invoke_402;
  block[3] = &unk_100049010;
  block[4] = *(a1 + 32);
  v22 = v10;
  v23 = &v28;
  v24 = &v32;
  dispatch_async(v19, block);

LABEL_7:
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v32, 8);
}

void __44__MSUNRDUpdateBrainController_cancelAndLock__block_invoke_402(uint64_t a1)
{
  v2 = [*(a1 + 32) nrdLock];

  if (!v2)
  {
    logfunction(", 1, @"Acquiring NRD lock\n"", v3, v4, v5, v6, v7);
    v8 = NRDAcquireActivityLock(*(a1 + 40), progressCallback, *(a1 + 32));
    [*(a1 + 32) setNrdLock:v8];
  }

  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  v25 = 0;
  v10 = NRDQueryRecoveryOS(*(a1 + 40), 0, 0, &off_100053D10, 0, &v25, &obj, progressCallback, *(a1 + 32));
  v11 = v25;
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v10;
  if (v11)
  {
    logfunction(", 1, @"Installed recovery OS:\n%@\n"", v12, v13, v14, v15, v16, v11);
    v17 = *(a1 + 32);
    v18 = v11;
LABEL_7:
    [v17 saveRecoveryOSInfo:v18];
    goto LABEL_8;
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    logfunction(", 1, @"No recoveryOS is installed\n"", v12, v13, v14, v15, v16);
    v17 = *(a1 + 32);
    v18 = 0;
    goto LABEL_7;
  }

  logfunction(", 1, @"Installed state of recovery OS is unknown.\n"", v12, v13, v14, v15, v16);
LABEL_8:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    logfunction(", 1, @"Non-fatal error querying for RecoveryOS update: %@\n"", v19, v20, v21, v22, v23, *(*(*(a1 + 56) + 8) + 40));
  }
}

- (id)waitWithTimeout:(int)timeout progressCallback:(void *)callback context:(void *)context releaseLock:(BOOL)lock
{
  lockCopy = lock;
  v13 = @"NO";
  if (lock)
  {
    v13 = @"YES";
  }

  logfunction(", 1, @"waitWithTimeout:%d releaseLock:%@\n"", callback, context, lock, v6, v7, timeout, v13);
  stateQueue = [(MSUNRDUpdateBrainController *)self stateQueue];
  dispatch_assert_queue_not_V2(stateQueue);

  v15 = dispatch_semaphore_create(0);
  if (callback)
  {
    stateQueue2 = [(MSUNRDUpdateBrainController *)self stateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __84__MSUNRDUpdateBrainController_waitWithTimeout_progressCallback_context_releaseLock___block_invoke;
    block[3] = &unk_100049060;
    block[4] = self;
    block[5] = callback;
    block[6] = context;
    dispatch_sync(stateQueue2, block);
  }

  workQueue = [(MSUNRDUpdateBrainController *)self workQueue];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = __84__MSUNRDUpdateBrainController_waitWithTimeout_progressCallback_context_releaseLock___block_invoke_423;
  v37[3] = &unk_100049038;
  v18 = v15;
  v38 = v18;
  dispatch_async(workQueue, v37);

  v19 = dispatch_time(0, 1000000000 * timeout);
  if (dispatch_semaphore_wait(v18, v19))
  {
    logfunction(", 1, @"Timed out waiting for NRD update to finish\n"", v20, v21, v22, v23, v24);
    v40 = NSDebugDescriptionErrorKey;
    v41 = @"timed out waiting for NRD update to finish";
    v25 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v26 = [NSError errorWithDomain:@"MobileSoftwareUpdateErrorDomain" code:77 userInfo:v25];

    if (!lockCopy)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v26 = 0;
    if (!lockCopy)
    {
      goto LABEL_11;
    }
  }

  nrdLock = [(MSUNRDUpdateBrainController *)self nrdLock];

  if (nrdLock)
  {
    logfunction(", 1, @"Releasing nrd lock\n"", v28, v29, v30, v31, v32);
    nrdLock2 = [(MSUNRDUpdateBrainController *)self nrdLock];
    NRDReleaseActivityLock(nrdLock2);

    [(MSUNRDUpdateBrainController *)self setNrdLock:0];
  }

LABEL_11:
  if (callback)
  {
    stateQueue3 = [(MSUNRDUpdateBrainController *)self stateQueue];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __84__MSUNRDUpdateBrainController_waitWithTimeout_progressCallback_context_releaseLock___block_invoke_2;
    v36[3] = &unk_100049038;
    v36[4] = self;
    dispatch_sync(stateQueue3, v36);
  }

  return v26;
}

void __84__MSUNRDUpdateBrainController_waitWithTimeout_progressCallback_context_releaseLock___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setProgressCB:*(a1 + 40)];
  [*(a1 + 32) setProgressContext:*(a1 + 48)];
  v2 = [NSNumber numberWithDouble:90.0];
  v4[0] = @"ActionText";
  v4[1] = @"ElapsedTime";
  v5[0] = @"Waiting for RecoveryOS update...";
  v5[1] = &off_100053B98;
  v4[2] = @"PercentComplete";
  v4[3] = @"PercentBytesComplete";
  v5[2] = v2;
  v5[3] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:4];
  ([*(a1 + 32) progressCB])(v3, objc_msgSend(*(a1 + 32), "progressContext"));
}

id __84__MSUNRDUpdateBrainController_waitWithTimeout_progressCallback_context_releaseLock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setProgressCB:0];
  v2 = *(a1 + 32);

  return [v2 setProgressContext:0];
}

- (void)saveLastError:(id)error
{
  errorCopy = error;
  stateQueue = [(MSUNRDUpdateBrainController *)self stateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __45__MSUNRDUpdateBrainController_saveLastError___block_invoke;
  v7[3] = &unk_100048FE8;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  dispatch_async(stateQueue, v7);
}

id __45__MSUNRDUpdateBrainController_saveLastError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastError];
  logfunction(", 1, @"Overriding current error:%@ with:%@\n"", v3, v4, v5, v6, v7, v2, *(a1 + 40));

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 setLastError:v9];
}

- (void)saveRecoveryOSInfo:(id)info
{
  infoCopy = info;
  stateQueue = [(MSUNRDUpdateBrainController *)self stateQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __50__MSUNRDUpdateBrainController_saveRecoveryOSInfo___block_invoke;
  v7[3] = &unk_100048FE8;
  v7[4] = self;
  v8 = infoCopy;
  v6 = infoCopy;
  dispatch_async(stateQueue, v7);
}

id __50__MSUNRDUpdateBrainController_saveRecoveryOSInfo___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) currentRecoveryOSInfo];
  logfunction(", 1, @"Overriding current RecoveryOS info:%@ with:%@\n"", v3, v4, v5, v6, v7, v2, *(a1 + 40));

  v8 = *(a1 + 32);
  v9 = *(a1 + 40);

  return [v8 setCurrentRecoveryOSInfo:v9];
}

- (void)saveLastSuccessForTargetMainOSBuild:(id)build recoveryOSBuild:(id)sBuild
{
  buildCopy = build;
  sBuildCopy = sBuild;
  stateQueue = [(MSUNRDUpdateBrainController *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __83__MSUNRDUpdateBrainController_saveLastSuccessForTargetMainOSBuild_recoveryOSBuild___block_invoke;
  block[3] = &unk_100049088;
  block[4] = self;
  v12 = buildCopy;
  v13 = sBuildCopy;
  v9 = sBuildCopy;
  v10 = buildCopy;
  dispatch_async(stateQueue, block);
}

id __83__MSUNRDUpdateBrainController_saveLastSuccessForTargetMainOSBuild_recoveryOSBuild___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) lastSuccessForTargetMainOSBuild];
  logfunction(", 1, @"Overriding current LastSuccessForTargetMainOSBuild:%@ with:%@\n"", v3, v4, v5, v6, v7, v2, *(a1 + 40));

  v8 = [*(a1 + 32) lastSuccessForTargetRecoveryOSBuild];
  logfunction(", 1, @"Overriding current LastSuccessForTargetRecoveryOSBuild:%@ with:%@\n"", v9, v10, v11, v12, v13, v8, *(a1 + 48));

  [*(a1 + 32) setLastSuccessForTargetMainOSBuild:*(a1 + 40)];
  v14 = *(a1 + 48);
  v15 = *(a1 + 32);

  return [v15 setLastSuccessForTargetRecoveryOSBuild:v14];
}

- (void)saveMSUUpdateAttributes:(id)attributes andState:(int)state
{
  attributesCopy = attributes;
  stateQueue = [(MSUNRDUpdateBrainController *)self stateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __64__MSUNRDUpdateBrainController_saveMSUUpdateAttributes_andState___block_invoke;
  block[3] = &unk_1000490B0;
  stateCopy = state;
  block[4] = self;
  v10 = attributesCopy;
  v8 = attributesCopy;
  dispatch_async(stateQueue, block);
}

id __64__MSUNRDUpdateBrainController_saveMSUUpdateAttributes_andState___block_invoke(uint64_t a1)
{
  v2 = +[MSUNRDUpdateBrainController stateToString:](MSUNRDUpdateBrainController, "stateToString:", [*(a1 + 32) state]);
  v3 = [MSUNRDUpdateBrainController stateToString:*(a1 + 48)];
  logfunction(", 1, @"Overriding current state:%@ with:%@\n"", v4, v5, v6, v7, v8, v2, v3);

  [*(a1 + 32) setState:*(a1 + 48)];
  v9 = [*(a1 + 32) currentMSUUpdateAttributes];
  logfunction(", 1, @"Overriding current MSU Update Attributes:%@ with:%@\n"", v10, v11, v12, v13, v14, v9, *(a1 + 40));

  v15 = *(a1 + 32);
  v16 = *(a1 + 40);

  return [v15 setCurrentMSUUpdateAttributes:v16];
}

+ (id)stateToString:(int)string
{
  if (string > 6)
  {
    return @"Unknown";
  }

  else
  {
    return *(&off_1000490F8 + string);
  }
}

- (void)saveState:(int)state
{
  stateQueue = [(MSUNRDUpdateBrainController *)self stateQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __41__MSUNRDUpdateBrainController_saveState___block_invoke;
  v6[3] = &unk_1000490D8;
  v6[4] = self;
  stateCopy = state;
  dispatch_async(stateQueue, v6);
}

id __41__MSUNRDUpdateBrainController_saveState___block_invoke(uint64_t a1)
{
  v2 = +[MSUNRDUpdateBrainController stateToString:](MSUNRDUpdateBrainController, "stateToString:", [*(a1 + 32) state]);
  v3 = [MSUNRDUpdateBrainController stateToString:*(a1 + 40)];
  logfunction(", 1, @"Overriding current state:%@ with:%@\n"", v4, v5, v6, v7, v8, v2, v3);

  v9 = *(a1 + 40);
  v10 = *(a1 + 32);

  return [v10 setState:v9];
}

- (void)prepareResizeForNeRDUpdate
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.NRD.UpdateBrainService"];
  v3 = [v2 integerForKey:@"LastFailingResizeRequest"];
  if (v3)
  {
    v9 = v3;
    logfunction(", 1, @"Last resize request for %ld bytes failed\n"", v4, v5, v6, v7, v8, v3);
    LOBYTE(v28[0]) = 0;
    APFSShouldSealSystemVolume();
    if (&_APFSContainerResizePrepare)
    {
      if (ramrod_probe_media(0))
      {
        memset(v28, 0, sizeof(v28));
        ramrod_get_apfs_container_device_node(v28, 0x20uLL);
        if (LOBYTE(v28[0]))
        {
          SpaceInfo = APFSContainerGetSpaceInfo();
          if (SpaceInfo)
          {
            logfunction(", 1, @"APFSContainerGetSpaceInfo returned with result:%d\n"", v16, v17, v18, v19, v20, SpaceInfo);
            goto LABEL_12;
          }

          logfunction(", 1, @"APFSContainerGetSpaceInfo for %s returned with size:%llu\n"", v16, v17, v18, v19, v20, v28, 0);
          logfunction(", 1, @"Calling APFSContainerResizePrepare for %s and %llu bytes\n"", v22, v23, v24, v25, v26, v28, -v9 - 0x4000000);
          v27 = APFSContainerResizePrepare();
          v21 = @"APFSContainerResizePrepare returned with result:%d\n";
        }

        else
        {
          v21 = @"Could not find APFS main container\n";
        }
      }

      else
      {
        v21 = @"Ramrod_probe_media failed!\n";
      }
    }

    else
    {
      v21 = @"APFSContainerResizePrepare is not present\n";
    }

    logfunction("", 1, v21, v10, v11, v12, v13, v14, v27);
  }

LABEL_12:
}

@end