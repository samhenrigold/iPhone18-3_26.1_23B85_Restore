@interface SFDeviceOperationHomeKitSetup
- (BOOL)_isOwnerOfHome:(id)home;
- (BOOL)_runHomeKitConfigureStereoPairAndReturnError:(id *)error;
- (SFDeviceOperationHomeKitSetup)init;
- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group;
- (id)_mediaSystemForAccessory:(id)accessory;
- (id)_normalizedString:(id)string;
- (id)_runHomeKitAutoSelectHome:(BOOL)home;
- (id)findStereoCounterpartsWithSupportedVersions:(unint64_t)versions;
- (id)findTVs;
- (uint64_t)_updateHomeStats;
- (void)_cleanup;
- (void)_completeWithError:(id)error;
- (void)_removeAccessoryIfNeeded;
- (void)_removeSimilarRoomNames:(id)names home:(id)home;
- (void)_restoreHomeApp;
- (void)_run;
- (void)_runHomeKitAddAccessory;
- (void)_runHomeKitAddAppData;
- (void)_runHomeKitAddHome;
- (void)_runHomeKitAssignRoom;
- (void)_runHomeKitDeviceSetup;
- (void)_runHomeKitSelectRoom;
- (void)_runHomeKitSetupRoom:(BOOL)room;
- (void)_runHomeKitUpdateAppleTVAudioDestination;
- (void)_runInit;
- (void)_runPersonalRequestsStart;
- (void)_runUpdateUserListeningHistoryStart;
- (void)_startTimeout:(double)timeout;
- (void)_updateAccount;
- (void)_updateHomeStats;
- (void)activate;
- (void)homeAppInstallChoice:(BOOL)choice;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidUpdateDataSyncState:(id)state;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)invalidate;
- (void)reselectHome;
- (void)resume;
- (void)selectHome:(id)home;
- (void)selectRoom:(id)room;
@end

@implementation SFDeviceOperationHomeKitSetup

- (SFDeviceOperationHomeKitSetup)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceOperationHomeKitSetup;
  v2 = [(SFDeviceOperationHomeKitSetup *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_timeoutInSeconds = 300.0;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceOperationHomeKitSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceOperationHomeKitSetup_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __41__SFDeviceOperationHomeKitSetup_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  v4 = *(v3 + 32);

  return [v4 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDeviceOperationHomeKitSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __43__SFDeviceOperationHomeKitSetup_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSErrorWithOSStatusF(4294960573, "Invalidated");
  [v1 _completeWithError:v2];
}

- (void)_cleanup
{
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  pauseHandler = self->_pauseHandler;
  self->_pauseHandler = 0;

  promptForHomeHandler = self->_promptForHomeHandler;
  self->_promptForHomeHandler = 0;

  promptForRoomHandler = self->_promptForRoomHandler;
  self->_promptForRoomHandler = 0;

  promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
  self->_promptToInstallHomeAppHandler = 0;

  trSession = self->_trSession;
  self->_trSession = 0;

  self->_active = 0;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v10 = timeoutTimer;
    dispatch_source_cancel(v10);
    v11 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  homeKitHomeManager = self->_homeKitHomeManager;
  self->_homeKitHomeManager = 0;

  [(HMAccessoryBrowser *)self->_homeKitBrowser stopSearchingForNewAccessories];
  homeKitBrowser = self->_homeKitBrowser;
  self->_homeKitBrowser = 0;

  [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation cancel];
  [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setCompletionBlock:0];
  homeKitAccessory = self->_homeKitAccessory;
  self->_homeKitAccessory = 0;

  homeKitSelectedHome = self->_homeKitSelectedHome;
  self->_homeKitSelectedHome = 0;

  homeKitSelectedRoom = self->_homeKitSelectedRoom;
  self->_homeKitSelectedRoom = 0;
}

- (void)_removeAccessoryIfNeeded
{
  if (self->_homeKitAddedAccessory)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceOperationHomeKitSetup *)self _removeAccessoryIfNeeded];
    }

    homeKitSelectedHome = self->_homeKitSelectedHome;
    homeKitAccessory = self->_homeKitAccessory;

    [(HMHome *)homeKitSelectedHome removeAccessory:homeKitAccessory completionHandler:&__block_literal_global_44];
  }
}

void __57__SFDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = v2;
  if (v2)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 90)
    {
      v6 = v2;
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __57__SFDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke_cold_1(v4);
LABEL_13:
        v4 = v6;
      }
    }
  }

  else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    v6 = 0;
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v2 = _LogCategory_Initialize(), v4 = 0, v2))
    {
      __57__SFDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke_cold_2(v2, v4, v3);
      goto LABEL_13;
    }
  }
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  v17 = errorCopy;
  if (self->_homeKitHomeManager && self->_isCLIMode && self->_hdsutilHKToken)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (errorCopy = _LogCategory_Initialize(), errorCopy))
      {
        [(SFDeviceOperationHomeKitSetup *)errorCopy _completeWithError:v6, v5];
      }
    }

    [(HMHomeManager *)self->_homeKitHomeManager _endActiveAssertion:self->_hdsutilHKToken];
    v6 = v17;
  }

  if (self->_active)
  {
    if (v6)
    {
      self->_state = 3;
      [(SFDeviceOperationHomeKitSetup *)self _removeAccessoryIfNeeded];
      code = [v17 code];
      if (code == -6723)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (code = _LogCategory_Initialize(), code))
          {
            [(SFDeviceOperationHomeKitSetup *)code _completeWithError:v8, v9];
          }
        }
      }

      else
      {
        v14 = v17;
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v15 = _LogCategory_Initialize(), v14 = v17, v15))
          {
            [SFDeviceOperationHomeKitSetup _completeWithError:v14];
          }
        }
      }
    }

    else
    {
      mach_absolute_time();
      UpTicksToSecondsF();
      v11 = v10;
      if (gLogCategory_SFDeviceOperationHomeKitSetup >= 31)
      {
        self->_metricNonUserSeconds = v10 + self->_metricNonUserSeconds;
        self->_state = 4;
        goto LABEL_26;
      }

      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
      {
        [SFDeviceOperationHomeKitSetup _completeWithError:v11];
      }

      v12 = gLogCategory_SFDeviceOperationHomeKitSetup;
      metricNonUserSeconds = v11 + self->_metricNonUserSeconds;
      self->_metricNonUserSeconds = metricNonUserSeconds;
      self->_state = 4;
      if (v12 <= 30)
      {
        if (v12 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_26;
          }

          metricNonUserSeconds = self->_metricNonUserSeconds;
        }

        LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _completeWithError:]", 30, "Succeeded (non-user %f seconds, user %f seconds)\n", metricNonUserSeconds, self->_metricUserSeconds);
      }
    }
  }

LABEL_26:
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, v17);
  }

  [(SFDeviceOperationHomeKitSetup *)self _cleanup];
}

- (void)homeAppInstallChoice:(BOOL)choice
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__SFDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke;
  v4[3] = &unk_1E788B700;
  v4[4] = self;
  choiceCopy = choice;
  dispatch_async(dispatchQueue, v4);
}

void *__54__SFDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __54__SFDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke_cold_1(v2);
    }

    *(v2[4] + 72) = 1;
    if (*(v2 + 40) == 1)
    {
      [v2[4] _restoreHomeApp];
    }

    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)resume
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceOperationHomeKitSetup_resume__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__39__SFDeviceOperationHomeKitSetup_resume__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  v4 = result[4];
  if (*(v4 + 8) == 1)
  {
    v5 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup >= 31)
    {
      *(v4 + 9) = 0;
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __39__SFDeviceOperationHomeKitSetup_resume__block_invoke_cold_1(result, a2, a3);
      }

      v6 = gLogCategory_SFDeviceOperationHomeKitSetup;
      *(v5[4] + 9) = 0;
      if (v6 <= 30)
      {
        if (v6 != -1 || (result = _LogCategory_Initialize(), result))
        {
          __39__SFDeviceOperationHomeKitSetup_resume__block_invoke_cold_2(result, a2, a3);
        }
      }
    }

    *(v5[4] + 16) = mach_absolute_time();
    [v5[4] _startTimeout:*(v5[4] + 384)];
    v7 = v5[4];

    return [v7 _run];
  }

  return result;
}

- (void)selectHome:(id)home
{
  homeCopy = home;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SFDeviceOperationHomeKitSetup_selectHome___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(dispatchQueue, v7);
}

void __44__SFDeviceOperationHomeKitSetup_selectHome___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    v3 = a1;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __44__SFDeviceOperationHomeKitSetup_selectHome___block_invoke_cold_1(a1, a2, a3);
      }
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(v3 + 32) + 248) = v4 + *(*(v3 + 32) + 248);
    if ([*(v3 + 32) _isOwnerOfHome:*(v3 + 40)])
    {
      objc_storeStrong((*(v3 + 32) + 208), *(v3 + 40));
      v5 = mach_absolute_time();
      *(*(v3 + 32) + 16) = v5;
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v5 = _LogCategory_Initialize(), v5))
        {
          __44__SFDeviceOperationHomeKitSetup_selectHome___block_invoke_cold_2(v5, v6, v7);
        }
      }

      [*(v3 + 32) _startTimeout:*(*(v3 + 32) + 384)];
      v8 = *(v3 + 32);

      [v8 _run];
    }

    else
    {
      v20 = NSErrorWithOSStatusF(301018, "HomeKitSetupNonOwnerHome");
      v9 = [v20 userInfo];
      v10 = [v9 mutableCopy];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v13 = v12;

      v14 = [*(v3 + 40) name];
      [v13 setObject:v14 forKeyedSubscript:@"SFErrorKeyHomeName"];

      v15 = [*(v3 + 40) owner];
      v16 = [v15 name];
      [v13 setObject:v16 forKeyedSubscript:@"SFErrorKeyHomeOwnerAccount"];

      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v18 = [v20 domain];
      v19 = [v17 initWithDomain:v18 code:objc_msgSend(v20 userInfo:{"code"), v13}];

      [*(v3 + 32) _completeWithError:v19];
    }
  }
}

- (void)reselectHome
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFDeviceOperationHomeKitSetup_reselectHome__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__45__SFDeviceOperationHomeKitSetup_reselectHome__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if (*(result[4] + 8) == 1)
  {
    v4 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
      {
        __45__SFDeviceOperationHomeKitSetup_reselectHome__block_invoke_cold_1(result, a2, a3);
      }
    }

    *(v4[4] + 96) = 1;
    v5 = v4[4];

    return [v5 _run];
  }

  return result;
}

- (void)selectRoom:(id)room
{
  roomCopy = room;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SFDeviceOperationHomeKitSetup_selectRoom___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = roomCopy;
  v6 = roomCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__44__SFDeviceOperationHomeKitSetup_selectRoom___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __44__SFDeviceOperationHomeKitSetup_selectRoom___block_invoke_cold_1(v2);
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    *(v2[4] + 248) = v3 + *(v2[4] + 248);
    v4 = mach_absolute_time();
    *(v2[4] + 16) = v4;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v4 = _LogCategory_Initialize(), v4))
      {
        __44__SFDeviceOperationHomeKitSetup_selectRoom___block_invoke_cold_2(v4, v5, v6);
      }
    }

    objc_storeStrong((v2[4] + 216), v2[5]);
    [v2[4] _startTimeout:*(v2[4] + 384)];
    v7 = v2[4];

    return [v7 _run];
  }

  return result;
}

- (void)_startTimeout:(double)timeout
{
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v6 = timeoutTimer;
    dispatch_source_cancel(v6);
    v7 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  v9 = self->_timeoutTimer;
  self->_timeoutTimer = v8;

  v10 = self->_timeoutTimer;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__SFDeviceOperationHomeKitSetup__startTimeout___block_invoke;
  v11[3] = &unk_1E788B260;
  v11[4] = self;
  *&v11[5] = timeout;
  dispatch_source_set_event_handler(v10, v11);
  SFDispatchTimerSet(self->_timeoutTimer, timeout, -1.0, -4.0);
  dispatch_resume(self->_timeoutTimer);
}

void __47__SFDeviceOperationHomeKitSetup__startTimeout___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32) - 10;
  if (v2 > 0x24)
  {
    v3 = "HomeKitSetupUnknownState?";
  }

  else
  {
    v3 = off_1E788F478[v2];
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _startTimeout:]_block_invoke", 60, "### Timeout after %f seconds (%s)\n", *(a1 + 40), v3);
  }

  v4 = *(*(a1 + 32) + 40);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  v8 = *(a1 + 32);
  v9 = NSErrorWithOSStatusF(4294896133, "%s", v3);
  [v8 _completeWithError:v9];
}

- (void)_run
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696A768];
  v4 = *MEMORY[0x1E696A578];
  state = self->_state;
  while (2)
  {
    switch(state)
    {
      case 0:
        self->_state = 10;
        [(SFDeviceOperationHomeKitSetup *)self _runInit];
        goto LABEL_121;
      case 10:
        if (self->_homeKitHomeManagerReady)
        {
          v6 = 11;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 11:
        v6 = 12;
        goto LABEL_120;
      case 12:
        if ([(HMHomeManager *)self->_homeKitHomeManager dataSyncState]== 5)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceOperationHomeKitSetup _run];
          }

          SFMetricsLog(@"com.apple.sharing.HomeResetRequired", MEMORY[0x1E695E0F8]);
          v18 = MEMORY[0x1E696ABC0];
          v37 = v4;
          v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
          v20 = v19;
          v21 = @"?";
          if (v19)
          {
            v21 = v19;
          }

          v38[0] = v21;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
          v23 = 301024;
          v24 = v18;
          v25 = v3;
LABEL_112:
          v31 = [v24 errorWithDomain:v25 code:v23 userInfo:v22];
          [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v31];

          goto LABEL_121;
        }

        if ([(HMHomeManager *)self->_homeKitHomeManager dataSyncState]== 2)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceOperationHomeKitSetup _run];
          }

          SFMetricsLog(@"com.apple.sharing.HomeKitKeychainNotEnabled", MEMORY[0x1E695E0F8]);
          v28 = MEMORY[0x1E696ABC0];
          v35 = v4;
          v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
          v20 = v29;
          v30 = @"?";
          if (v29)
          {
            v30 = v29;
          }

          v36 = v30;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
          v24 = v28;
          v25 = v3;
          v23 = 301011;
          goto LABEL_112;
        }

        if ([(HMHomeManager *)self->_homeKitHomeManager isDataSyncInProgress])
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [(SFDeviceOperationHomeKitSetup *)&self->_homeKitHomeManager _run];
          }
        }

        else if ([(HMHomeManager *)self->_homeKitHomeManager status])
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [(SFDeviceOperationHomeKitSetup *)&self->_homeKitHomeManager _run];
          }
        }

        else
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [SFDeviceOperationHomeKitSetup _run];
          }

          v6 = 13;
LABEL_120:
          self->_state = v6;
        }

LABEL_121:
        v32 = self->_state == state;
        state = self->_state;
        if (!v32)
        {
          continue;
        }

        return;
      case 13:
        if (self->_keyExchangeOnly)
        {
          goto LABEL_66;
        }

        v6 = 14;
        goto LABEL_120;
      case 14:
        if (!self->_promptToInstallHomeAppHandler)
        {
          goto LABEL_48;
        }

        v11 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.Home"];
        appState = [v11 appState];
        isInstalled = [appState isInstalled];

        if (isInstalled)
        {
          goto LABEL_48;
        }

        self->_state = 15;
        promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
        goto LABEL_40;
      case 15:
        if (self->_homeAppInstallUserDidChoose)
        {
LABEL_48:
          v6 = 16;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 16:
        v16 = [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAutoSelectHome:0];
        homeKitSelectedHome = self->_homeKitSelectedHome;
        self->_homeKitSelectedHome = v16;

        if (!self->_homeKitSelectedHome)
        {
          goto LABEL_121;
        }

        goto LABEL_74;
      case 17:
        if (self->_homeKitSelectedHome)
        {
          goto LABEL_74;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 18:
        if (self->_homeKitSelectedHome)
        {
LABEL_74:
          v6 = 19;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 19:
        [(SFDeviceOperationHomeKitSetup *)self _updateHomeStats];
        self->_state = 20;
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitSelectRoom];
        goto LABEL_121;
      case 20:
        if (self->_reselectHome)
        {
          self->_reselectHome = 0;
          v14 = self->_homeKitSelectedHome;
          self->_homeKitSelectedHome = 0;

          self->_state = 17;
          v15 = [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAutoSelectHome:1];
          goto LABEL_121;
        }

        if (self->_homeKitSelectedRoom || self->_homeKitSelectedRoomName)
        {
          v6 = 21;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 21:
        if (!self->_pauseAfterUserInput || !self->_pauseHandler)
        {
          goto LABEL_66;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        timeoutTimer = self->_timeoutTimer;
        if (timeoutTimer)
        {
          v8 = timeoutTimer;
          dispatch_source_cancel(v8);
          v9 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        self->_paused = 1;
        self->_state = 22;
        promptToInstallHomeAppHandler = self->_pauseHandler;
LABEL_40:
        promptToInstallHomeAppHandler[2]();
        goto LABEL_121;
      case 22:
        if (!self->_paused)
        {
LABEL_66:
          v6 = 23;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 23:
        self->_state = 24;
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitDeviceSetup];
        goto LABEL_121;
      case 24:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 25:
        if (self->_keyExchangeOnly)
        {
          goto LABEL_91;
        }

        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAddAccessory];
        goto LABEL_121;
      case 26:
        if (self->_homeKitAddedAccessory)
        {
          v6 = 27;
          goto LABEL_120;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 27:
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitSetupRoom:0];
        goto LABEL_121;
      case 28:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 29:
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAssignRoom];
        goto LABEL_121;
      case 30:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_121;
      case 31:
        if (self->_stereoRole)
        {
          v6 = 34;
        }

        else if (self->_tvAudioInput)
        {
LABEL_119:
          v6 = 37;
        }

        else if (self->_appDataSelf)
        {
          v6 = 32;
        }

        else
        {
LABEL_87:
          v6 = 40;
        }

        goto LABEL_120;
      case 32:
        self->_state = 33;
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAddAppData];
        goto LABEL_121;
      case 33:
        if (self->_homeKitAddedAppData)
        {
          goto LABEL_87;
        }

        goto LABEL_121;
      case 34:
        v34 = 0;
        v26 = [(SFDeviceOperationHomeKitSetup *)self _runHomeKitConfigureStereoPairAndReturnError:&v34];
        v27 = v34;
        if (v27)
        {
          [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v27];
        }

        else
        {
          if (v26)
          {
            v33 = 35;
          }

          else
          {
            v33 = 36;
          }

          self->_state = v33;
        }

        goto LABEL_121;
      case 35:
        if (!self->_configuredStereoPair)
        {
          goto LABEL_121;
        }

        v6 = 36;
        goto LABEL_120;
      case 36:
        goto LABEL_119;
      case 37:
        if (!self->_tvAudioInput)
        {
          goto LABEL_57;
        }

        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitUpdateAppleTVAudioDestination];
        v6 = 38;
        goto LABEL_120;
      case 38:
        if (!self->_configuredTVAudio)
        {
          goto LABEL_121;
        }

LABEL_57:
        v6 = 39;
        goto LABEL_120;
      case 39:
        goto LABEL_87;
      case 40:
        self->_state = 41;
        [(SFDeviceOperationHomeKitSetup *)self _runPersonalRequestsStart];
        goto LABEL_121;
      case 41:
        if (!self->_personalRequestsDone)
        {
          goto LABEL_121;
        }

        v6 = 42;
        goto LABEL_120;
      case 42:
        self->_state = 43;
        [(SFDeviceOperationHomeKitSetup *)self _runUpdateUserListeningHistoryStart];
        goto LABEL_121;
      case 43:
        if (!self->_userListeningHistoryDone)
        {
          goto LABEL_121;
        }

        if (self->_psgHomePods && self->_psgStereoPairs)
        {
          v6 = 44;
        }

        else
        {
LABEL_91:
          v6 = 46;
        }

        goto LABEL_120;
      case 44:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_91;
      case 45:
        if (!self->_createUpdatePSGDone)
        {
          goto LABEL_121;
        }

        goto LABEL_91;
      case 46:
        [(SFDeviceOperationHomeKitSetup *)self _completeWithError:0];
        goto LABEL_121;
      default:
        goto LABEL_121;
    }
  }
}

- (void)_runInit
{
  selfCopy = self;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceOperationHomeKitSetup *)self _runInit];
    }
  }

  v4 = mach_absolute_time();
  selfCopy->_startTicks = v4;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      [(SFDeviceOperationHomeKitSetup *)v4 _runInit];
    }
  }

  v7 = [(SFDeviceOperationHomeKitSetup *)selfCopy _startTimeout:selfCopy->_timeoutInSeconds];
  v8 = objc_alloc_init(getTROperationQueueClass_0(v7));
  trOperationQueue = selfCopy->_trOperationQueue;
  selfCopy->_trOperationQueue = v8;

  if (selfCopy->_isCLIMode)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (_runInit = _LogCategory_Initialize(), _runInit))
      {
        [(SFDeviceOperationHomeKitSetup *)_runInit _runInit];
      }
    }

    defaultConfiguration = [(objc_class *)getHMMutableHomeManagerConfigurationClass() defaultConfiguration];
    v14 = [defaultConfiguration mutableCopy];
    v15 = [v14 setAdaptive:1];
    v16 = [objc_alloc(getHMHomeManagerClass_0(v15)) initWithConfiguration:v14];
    homeKitHomeManager = selfCopy->_homeKitHomeManager;
    selfCopy->_homeKitHomeManager = v16;

    v18 = [(HMHomeManager *)selfCopy->_homeKitHomeManager _beginActiveAssertionWithReason:@"tvsetuputil Started"];
    hdsutilHKToken = selfCopy->_hdsutilHKToken;
    selfCopy->_hdsutilHKToken = v18;
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (_runInit = _LogCategory_Initialize(), _runInit))
      {
        _runInit = [(SFDeviceOperationHomeKitSetup *)_runInit _runInit];
      }
    }

    v20 = objc_alloc_init(getHMHomeManagerClass_0(_runInit));
    defaultConfiguration = selfCopy->_homeKitHomeManager;
    selfCopy->_homeKitHomeManager = v20;
  }

  v21 = selfCopy->_homeKitHomeManager;

  [(HMHomeManager *)v21 setDelegate:selfCopy];
}

- (void)_runHomeKitDeviceSetup
{
  selfCopy = self;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (self = _LogCategory_Initialize(), self))
    {
      self = [(SFDeviceOperationHomeKitSetup *)self _runHomeKitDeviceSetup];
    }
  }

  if (!selfCopy->_keyExchangeOnly)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceOperationHomeKitSetup *)self _runHomeKitDeviceSetup];
      }
    }

    v4 = objc_alloc_init(getHMAccessoryBrowserClass());
    homeKitBrowser = selfCopy->_homeKitBrowser;
    selfCopy->_homeKitBrowser = v4;

    [(HMAccessoryBrowser *)selfCopy->_homeKitBrowser setDelegate:selfCopy];
    [(HMAccessoryBrowser *)selfCopy->_homeKitBrowser startSearchingForNewAccessories];
  }

  v6 = selfCopy->_trSession;
  if (v6)
  {
    sessionID = selfCopy->_sessionID;
    v8 = objc_alloc(getHMDeviceSetupOperationClass());
    if (sessionID)
    {
      v9 = [v8 initWithSession:v6 sessionIdentifier:selfCopy->_sessionID];
      homeKitDeviceSetupOperation = selfCopy->_homeKitDeviceSetupOperation;
      selfCopy->_homeKitDeviceSetupOperation = v9;

      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceOperationHomeKitSetup *)&selfCopy->_sessionID _runHomeKitDeviceSetup];
      }
    }

    else
    {
      v12 = [v8 initWithSession:v6];
      v13 = selfCopy->_homeKitDeviceSetupOperation;
      selfCopy->_homeKitDeviceSetupOperation = v12;

      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v14 = _LogCategory_Initialize(), v14))
        {
          [(SFDeviceOperationHomeKitSetup *)v14 _runHomeKitDeviceSetup];
        }
      }
    }

    if (selfCopy->_userInteractive)
    {
      v17 = 33;
    }

    else
    {
      v17 = 9;
    }

    [(HMDeviceSetupOperation *)selfCopy->_homeKitDeviceSetupOperation setQualityOfService:v17];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke;
    v18[3] = &unk_1E788B198;
    v18[4] = selfCopy;
    [(HMDeviceSetupOperation *)selfCopy->_homeKitDeviceSetupOperation setCompletionBlock:v18];
    [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:selfCopy->_homeKitDeviceSetupOperation];
    selfCopy->_startTicksForHomeKitSteps = mach_absolute_time();
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
    }
  }

  else
  {
    v11 = NSErrorWithOSStatusF(4294960556, "HomeKitSetupNoTRSession");
    [(SFDeviceOperationHomeKitSetup *)selfCopy _completeWithError:v11];
  }
}

void __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2;
  block[3] = &unk_1E788B198;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  UpTicksToSecondsF();
  *(*v2 + 256) = v3;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __55__SFDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2_cold_1(v2);
  }

  if (*(*v2 + 8) == 1)
  {
    v4 = [*(*v2 + 80) accessory];
    v5 = *(*v2 + 88);
    *(*v2 + 88) = v4;

    v6 = *v2;
    v7 = *(*v2 + 88);
    if (v7)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup == -1)
        {
          v8 = _LogCategory_Initialize();
          v6 = *v2;
          if (!v8)
          {
            goto LABEL_14;
          }

          v7 = *(v6 + 88);
        }

        LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitDeviceSetup]_block_invoke_2", 30, "HomeKit DeviceSetup done: %@\n", v7);
        v6 = *v2;
      }

LABEL_14:
      *(v6 + 32) = 25;
      v9 = *v2;

      [v9 _run];
      return;
    }

    v10 = NSErrorWithOSStatusF(4294960584, "HomeKitSetupNoAccessory");
    [v6 _completeWithError:v10];
  }
}

- (id)_runHomeKitAutoSelectHome:(BOOL)home
{
  v43 = *MEMORY[0x1E69E9840];
  homes = [(HMHomeManager *)self->_homeKitHomeManager homes];
  v8 = homes;
  if (!home)
  {
    v9 = [homes count];
    if (!v9)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          [(SFDeviceOperationHomeKitSetup *)v9 _runHomeKitAutoSelectHome:v10, v11];
        }
      }

      [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAddHome];
LABEL_49:
      firstObject = 0;
      goto LABEL_50;
    }

    homes = [v8 count];
    if (homes == 1)
    {
      firstObject = [v8 firstObject];
      if (firstObject)
      {
        v13 = [(SFDeviceOperationHomeKitSetup *)self _isOwnerOfHome:firstObject];
        if (v13)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
          {
            if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v13 = _LogCategory_Initialize(), v13))
            {
              [(SFDeviceOperationHomeKitSetup *)v13 _runHomeKitAutoSelectHome:v14, v15];
            }
          }

          goto LABEL_50;
        }
      }
    }
  }

  v16 = &unk_1EB3AF000;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (homes = _LogCategory_Initialize(), homes))
    {
      homes = [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:v8];
    }
  }

  if (self->_promptForHomeHandler)
  {
    currentHome = [(HMHomeManager *)self->_homeKitHomeManager currentHome];
    uniqueIdentifier = [currentHome uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v19 = v8;
      v20 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v20)
      {
        v21 = v20;
        v37 = v8;
        v22 = 0;
        v23 = *v39;
LABEL_22:
        v24 = 0;
        v25 = v22;
        v22 += v21;
        while (1)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v19);
          }

          uniqueIdentifier2 = [*(*(&v38 + 1) + 8 * v24) uniqueIdentifier];
          v27 = [uniqueIdentifier2 isEqual:uniqueIdentifier];

          if (v27)
          {
            break;
          }

          ++v25;
          if (v21 == ++v24)
          {
            v21 = [v19 countByEnumeratingWithState:&v38 objects:v42 count:16];
            if (v21)
            {
              goto LABEL_22;
            }

            v25 = 0;
            break;
          }
        }

        v8 = v37;
        v16 = &unk_1EB3AF000;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    v28 = v16[338];
    if (v28 <= 30 && (v28 != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:v25];
    }

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v30 = timeoutTimer;
      dispatch_source_cancel(v30);
      v31 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    v33 = v32;
    v34 = v16[338];
    if (v34 <= 30 && (v34 != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:v33];
    }

    self->_metricNonUserSeconds = v33 + self->_metricNonUserSeconds;
    self->_startTicks = mach_absolute_time();
    v35 = v16[338];
    if (v35 <= 30 && (v35 != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    self->_state = 17;
    (*(self->_promptForHomeHandler + 2))();

    goto LABEL_49;
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (homes = _LogCategory_Initialize(), homes))
    {
      [(SFDeviceOperationHomeKitSetup *)homes _runHomeKitAutoSelectHome:v6, v7];
    }
  }

  firstObject = [v8 firstObject];
LABEL_50:

  return firstObject;
}

- (void)_runHomeKitAddHome
{
  self->_state = 18;
  homeKitHomeManager = self->_homeKitHomeManager;
  v4 = SFLocalizedStringForKey(@"MY_HOME");
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke;
  v5[3] = &unk_1E788F368;
  v5[4] = self;
  [(HMHomeManager *)homeKitHomeManager addHomeWithName:v4 completionHandler:v5];
}

void __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 192);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2;
  block[3] = &unk_1E788BD88;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2(void *a1, uint64_t a2)
{
  v2 = a1[4];
  if (v2[8] == 1)
  {
    v3 = a1;
    v4 = a1[5];
    if (v4)
    {
      v5 = a1[4];

      [v5 _completeWithError:?];
    }

    else if (a1[6])
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (a1 = _LogCategory_Initialize(), a1))
        {
          __51__SFDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2_cold_1(a1, a2, v4);
        }
      }

      objc_storeStrong((v3[4] + 208), v3[6]);
      v6 = v3[4];

      [v6 _run];
    }

    else
    {
      v7 = NSErrorWithOSStatusF(4294960556, "HomeKitSetupAddHomeNoHome");
      [v2 _completeWithError:v7];
    }
  }
}

- (void)_runHomeKitSelectRoom
{
  v85 = *MEMORY[0x1E69E9840];
  v3 = self->_homeKitSelectedHome;
  v6 = v3;
  v51 = v3;
  selfCopy = self;
  if (self->_promptForRoomHandler || self->_promptForRoomHandlerDetailed)
  {
    v58 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    rooms = [(HMHome *)v6 rooms];
    v8 = [rooms countByEnumeratingWithState:&v78 objects:v84 count:16];
    if (v8)
    {
      v9 = *v79;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v79 != v9)
          {
            objc_enumerationMutation(rooms);
          }

          name = [*(*(&v78 + 1) + 8 * i) name];
          if (name && ([v58 containsObject:name] & 1) == 0)
          {
            [v58 addObject:name];
          }
        }

        v8 = [rooms countByEnumeratingWithState:&v78 objects:v84 count:16];
      }

      while (v8);
    }

    [v58 sortUsingSelector:?];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v12 = [&unk_1F1D7D898 countByEnumeratingWithState:&v74 objects:v83 count:16];
    if (v12)
    {
      v13 = 0;
      v52 = 0;
      v14 = *v75;
      do
      {
        v15 = 0;
        v55 = v13;
        v16 = 10 - v13;
        do
        {
          if (*v75 != v14)
          {
            objc_enumerationMutation(&unk_1F1D7D898);
          }

          v17 = SFLocalizedStringForKey(*(*(&v74 + 1) + 8 * v15));
          if (v17)
          {
            v18 = [(SFDeviceOperationHomeKitSetup *)selfCopy _normalizedString:v17];
            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke;
            v73[3] = &unk_1E788F390;
            v73[4] = v18;
            if ([v58 indexOfObjectPassingTest:v73] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v53 addObject:v17];
              if (v16 == v15)
              {
                v19 = v17;

                v52 = v19;
              }
            }
          }

          ++v15;
        }

        while (v12 != v15);
        v20 = [&unk_1F1D7D898 countByEnumeratingWithState:&v74 objects:v83 count:16];
        v13 = v55 + v12;
        v12 = v20;
      }

      while (v20);
    }

    else
    {
      v52 = 0;
    }

    [(SFDeviceOperationHomeKitSetup *)selfCopy _removeSimilarRoomNames:v53 home:v51];
    [v53 sortUsingSelector:sel_localizedStandardCompare_];
    v50 = [v58 arrayByAddingObjectsFromArray:v53];
    timeoutTimer = selfCopy->_timeoutTimer;
    if (timeoutTimer)
    {
      v22 = timeoutTimer;
      dispatch_source_cancel(v22);
      v23 = selfCopy->_timeoutTimer;
      selfCopy->_timeoutTimer = 0;
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    v25 = v24;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceOperationHomeKitSetup *)v25 _runHomeKitSelectRoom];
    }

    selfCopy->_metricNonUserSeconds = v25 + selfCopy->_metricNonUserSeconds;
    v26 = mach_absolute_time();
    v27 = selfCopy;
    selfCopy->_startTicks = v26;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v28 = _LogCategory_Initialize(), v27 = selfCopy, v28))
      {
        [SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
        v27 = selfCopy;
      }
    }

    if (v27->_promptForRoomHandler && v27->_promptForRoomHandlerDetailed && gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    v49 = [v58 count];
    v29 = selfCopy;
    if (selfCopy->_promptForRoomHandlerDetailed)
    {
      v30 = dispatch_group_create();
      v56 = objc_opt_new();
      v67 = 0;
      v68 = &v67;
      v69 = 0x3032000000;
      v70 = __Block_byref_object_copy__10;
      v71 = __Block_byref_object_dispose__10;
      v72 = 0;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      obj = v53;
      v31 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
      if (v31)
      {
        v32 = *v64;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v64 != v32)
            {
              objc_enumerationMutation(obj);
            }

            v34 = *(*(&v63 + 1) + 8 * j);
            dispatch_group_enter(v30);
            homeKitHomeManager = selfCopy->_homeKitHomeManager;
            homeKitSelectedHome = selfCopy->_homeKitSelectedHome;
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke_264;
            v59[3] = &unk_1E788F3B8;
            v59[4] = v34;
            v62 = &v67;
            v60 = v56;
            v61 = v30;
            [(HMHomeManager *)homeKitHomeManager checkName:v34 inHome:homeKitSelectedHome withValidationOptions:4 completionHandler:v59];
          }

          v31 = [obj countByEnumeratingWithState:&v63 objects:v82 count:16];
        }

        while (v31);
      }

      v37 = dispatch_time(0, 30000000000);
      dispatch_group_wait(v30, v37);
      if ([v58 count] || objc_msgSend(v56, "count") || !v68[5])
      {
        [MEMORY[0x1E696AC88] indexPathForRow:0 inSection:0];
        v39 = v38 = v51;
        if (!v49)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom]", 30, "Prompt for room: use default: %@", v52);
          }

          if (v52)
          {
            [v56 indexOfObject:?];
          }

          v41 = [MEMORY[0x1E696AC88] indexPathForRow:? inSection:?];

          v39 = v41;
          v38 = v51;
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom]", 30, "Prompt for room: existing rooms: %##@, suggested rooms: %##@, default will be %@\n", v58, obj, v39);
        }

        promptForRoomHandlerDetailed = selfCopy->_promptForRoomHandlerDetailed;
        name2 = [(HMHome *)v38 name];
        promptForRoomHandlerDetailed[2](promptForRoomHandlerDetailed, name2, v58, v56, v39);
      }

      else
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom]", 30, "Prompt for room not called, erroring out since there are no rooms to show the User\n");
        }

        [(SFDeviceOperationHomeKitSetup *)selfCopy _completeWithError:v68[5]];
      }

      _Block_object_dispose(&v67, 8);
    }

    else
    {
      if (v49)
      {
        goto LABEL_61;
      }

      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v47 = _LogCategory_Initialize(), v29 = selfCopy, v47))
        {
          [(SFDeviceOperationHomeKitSetup *)v52 _runHomeKitSelectRoom];
          v29 = selfCopy;
        }
      }

      if (!v52)
      {
LABEL_61:
        v40 = 0;
      }

      else
      {
        v40 = [v50 indexOfObject:?];
        v29 = selfCopy;
      }

      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v48 = _LogCategory_Initialize(), v29 = selfCopy, v48))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom]", 30, "Prompt for room (Legacy): rooms: %##@, default will be index: %d\n", v50, v40);
          v29 = selfCopy;
        }
      }

      (*(v29->_promptForRoomHandler + 2))();
    }
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        [(SFDeviceOperationHomeKitSetup *)v3 _runHomeKitSelectRoom];
        v6 = v51;
      }
    }

    roomForEntireHome = [(HMHome *)v6 roomForEntireHome];
    homeKitSelectedRoom = self->_homeKitSelectedRoom;
    self->_homeKitSelectedRoom = roomForEntireHome;

    if (!self->_homeKitSelectedRoom)
    {
      v46 = NSErrorWithOSStatusF(4294960569, "HomeKitSetupAutoSelectNoRoom");
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v46];
    }
  }
}

BOOL __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 caseInsensitiveCompare:*(a1 + 32)];
  if (!v5)
  {
    *a4 = 1;
  }

  return v5 == 0;
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke_264(uint64_t a1, int a2, void *a3, void *a4)
{
  v8 = a3;
  v7 = a4;
  if (v8 | v7)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitSelectRoom]_block_invoke", 30, "Prompt for room: error while checking name %@ | conflictName %@ | %{error}\n", *(a1 + 32), v8, v7);
    }

    if (v7)
    {
      objc_storeStrong((*(*(a1 + 56) + 8) + 40), a4);
    }
  }

  else if (a2)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __54__SFDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke_264_cold_1(a1);
    }

    [*(a1 + 40) addObject:*(a1 + 32)];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)_runHomeKitAddAccessory
{
  v24 = *MEMORY[0x1E69E9840];
  self->_state = 26;
  uniqueIdentifier = [(HMAccessory *)self->_homeKitAccessory uniqueIdentifier];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  accessories = [(HMHome *)self->_homeKitSelectedHome accessories];
  v5 = [accessories countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v20 != v7)
      {
        objc_enumerationMutation(accessories);
      }

      v9 = *(*(&v19 + 1) + 8 * v8);
      uniqueIdentifier2 = [v9 uniqueIdentifier];
      v11 = [uniqueIdentifier2 isEqual:uniqueIdentifier];

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [accessories countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v12 = v9;

    if (!v12)
    {
      goto LABEL_15;
    }

    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
    }

    homeKitAccessory = self->_homeKitAccessory;
    self->_homeKitAccessory = v12;
    identifier = v12;

    self->_homeKitAddedAccessory = 1;
  }

  else
  {
LABEL_9:

LABEL_15:
    self->_startTicksForHomeKitSteps = mach_absolute_time();
    pairedPeer = [(SFDeviceOperationHomeKitSetup *)self pairedPeer];
    identifier = [pairedPeer identifier];

    if (identifier && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceOperationHomeKitSetup *)identifier _runHomeKitAddAccessory];
      }

      [(HMAccessory *)self->_homeKitAccessory setPeerIdentifier:identifier];
    }

    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
    }

    homeKitSelectedHome = self->_homeKitSelectedHome;
    v17 = self->_homeKitAccessory;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke;
    v18[3] = &unk_1E788B238;
    v18[4] = self;
    [(HMHome *)homeKitSelectedHome addAccessory:v17 completionHandler:v18];
  }
}

void __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = (a1 + 32);
  v3 = UpTicksToSecondsF();
  *(*(a1 + 32) + 264) = v6;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      v3 = __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_2(v3, v4, v5);
      }
    }

    [*(*(a1 + 32) + 64) stopSearchingForNewAccessories];
    v7 = *(a1 + 32);
    v8 = *(v7 + 64);
    *(v7 + 64) = 0;

    v11 = *(a1 + 40);
    if (v11)
    {
      v12 = *v2;

      [v12 _completeWithError:?];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          __56__SFDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_3(v9, v10, v11);
        }
      }

      *(*v2 + 156) = 1;
      [*v2 _updateAccount];
      v13 = *v2;

      [v13 _run];
    }
  }
}

- (void)_runHomeKitSetupRoom:(BOOL)room
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = self->_homeKitSelectedRoom;
  if (v5)
  {
    v6 = v5;
LABEL_3:
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup _runHomeKitSetupRoom:];
    }

    homeKitSelectedRoom = self->_homeKitSelectedRoom;
    self->_homeKitSelectedRoom = v6;
    v8 = v6;

    self->_state = 29;
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
    v10 = [rooms countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
LABEL_10:
      v13 = 0;
      while (1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(rooms);
        }

        v14 = *(*(&v21 + 1) + 8 * v13);
        name = [v14 name];
        v16 = [name isEqual:self->_homeKitSelectedRoomName];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [rooms countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            goto LABEL_10;
          }

          goto LABEL_16;
        }
      }

      v6 = v14;

      if (v6)
      {
        goto LABEL_3;
      }
    }

    else
    {
LABEL_16:
    }

    v8 = self->_homeKitSelectedRoomName;
    if (v8)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup _runHomeKitSetupRoom:?];
      }

      self->_state = 28;
      homeKitSelectedHome = self->_homeKitSelectedHome;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke;
      v19[3] = &unk_1E788F408;
      v19[4] = self;
      roomCopy = room;
      [(HMHome *)homeKitSelectedHome addRoomWithName:v8 completionHandler:v19];
    }

    else
    {
      v18 = NSErrorWithOSStatusF(4294960552, "HomeKitSetupNoRoomName");
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v18];
    }
  }
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 192);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2;
  v11[3] = &unk_1E788F3E0;
  v11[4] = v7;
  v12 = v6;
  v13 = v5;
  v14 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, v11);
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    v3 = *(a1 + 40);
    if (v3 || (v6 = *(a1 + 48)) == 0)
    {
      if ([v3 code] == 1 && (*(a1 + 56) & 1) == 0)
      {
        v11 = dispatch_time(0, 2000000000);
        v12 = *(*(a1 + 32) + 192);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3;
        block[3] = &unk_1E788A658;
        v13 = *(a1 + 40);
        v14 = *(a1 + 32);
        v17 = v13;
        v18 = v14;
        dispatch_after(v11, v12, block);
      }

      else
      {
        v4 = *(a1 + 32);
        if (*(a1 + 40))
        {
          v5 = *(a1 + 32);

          [v5 _completeWithError:?];
        }

        else
        {
          v15 = NSErrorWithOSStatusF(4294960556, "HomeKitSetupAddRoomNoRoom");
          [v4 _completeWithError:v15];
        }
      }
    }

    else
    {
      objc_storeStrong((v1 + 104), v6);
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2_cold_1(v7, v8, v9);
        }
      }

      *(*(a1 + 32) + 32) = 29;
      v10 = *(a1 + 32);

      [v10 _run];
    }
  }
}

uint64_t __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __54__SFDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3_cold_1(a1);
  }

  [*(a1 + 40) _runHomeKitSetupRoom:1];
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (void)_runHomeKitAssignRoom
{
  name = [*(self + 104) name];
  LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitAssignRoom]", 30, "Assigning accessory to room: '%@'\n", name);
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void *__54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  UpTicksToSecondsF();
  *(*(a1 + 32) + 272) = v4;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2_cold_1(a1 + 32);
  }

  result = *v2;
  if (*(*v2 + 8) == 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {

      return [result _completeWithError:?];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
        {
          __54__SFDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2_cold_2(result, v3, v6);
        }
      }

      *(*v2 + 32) = 31;
      v7 = *v2;

      return [v7 _run];
    }
  }

  return result;
}

- (void)_runHomeKitAddAppData
{
  selfCopy = self;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceOperationHomeKitSetup *)self _runHomeKitAddAppData];
    }
  }

  homeKitAccessory = selfCopy->_homeKitAccessory;
  if (homeKitAccessory)
  {
    applicationData = [(HMAccessory *)homeKitAccessory applicationData];
    appDataSelf = selfCopy->_appDataSelf;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke;
    v11[3] = &unk_1E788F430;
    v12 = applicationData;
    v7 = applicationData;
    [(NSDictionary *)appDataSelf enumerateKeysAndObjectsUsingBlock:v11];
    v8 = selfCopy->_homeKitAccessory;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_2;
    v10[3] = &unk_1E788B238;
    v10[4] = selfCopy;
    [(HMAccessory *)v8 updateApplicationData:v7 completionHandler:v10];
  }

  else
  {
    v9 = NSErrorWithOSStatusF(4294960596, "No HomeKit accessory to add AppData");
    [(SFDeviceOperationHomeKitSetup *)selfCopy _completeWithError:v9];
  }
}

void __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void *__54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3(void *result, uint64_t a2)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    v3 = result[5];
    if (v3)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v5 = _LogCategory_Initialize(), v3 = v2[5], v5))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitAddAppData]_block_invoke_3", 60, "### Add AppData failed: %{error}\n", v3);
          v3 = v2[5];
        }
      }

      v6 = v2[4];

      return [v6 _completeWithError:v3];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
        {
          __54__SFDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3_cold_1(result, a2, v3);
        }
      }

      *(v2[4] + 112) = 1;
      v4 = v2[4];

      return [v4 _run];
    }
  }

  return result;
}

- (BOOL)_runHomeKitConfigureStereoPairAndReturnError:(id *)error
{
  v39[2] = *MEMORY[0x1E69E9840];
  v5 = self->_stereoCounterpart;
  v8 = v5;
  if (!v5 || (self->_stereoRole & 0xFFFFFFFE) != 2)
  {
    goto LABEL_19;
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      [(SFDeviceOperationHomeKitSetup *)v5 _runHomeKitConfigureStereoPairAndReturnError:v6, v7];
    }
  }

  if (!self->_homeKitAccessory)
  {
    if (error)
    {
      NSErrorWithOSStatusF(4294960591, "StereoPair: No homekit accessory");
LABEL_18:
      *error = v19 = 0;
      goto LABEL_20;
    }

LABEL_19:
    v19 = 0;
    goto LABEL_20;
  }

  HMMediaSystemBuilderClass = getHMMediaSystemBuilderClass();
  homeKitAccessory = self->_homeKitAccessory;
  v39[0] = v8;
  v39[1] = homeKitAccessory;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  LOBYTE(HMMediaSystemBuilderClass) = [(objc_class *)HMMediaSystemBuilderClass isStereoPairingSupportedForAccessories:v11];

  if ((HMMediaSystemBuilderClass & 1) == 0)
  {
    if (error)
    {
      NSErrorWithOSStatusF(4294960591, "StereoPair: isStereoPairingSupportedForAccessories == false");
      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v12 = self->_homeKitSelectedHome;
  if (v12)
  {
    v13 = self->_homeKitSelectedRoomName;
    if (v13)
    {
      v14 = [objc_alloc(getHMMediaSystemBuilderClass()) initWithHome:v12];
      v15 = v14;
      if (v14)
      {
        [v14 setName:v13];
        mediaProfile = [(HMAccessory *)self->_homeKitAccessory mediaProfile];
        if (mediaProfile)
        {
          stereoRole = self->_stereoRole;
          HMMediaSystemRoleClass = getHMMediaSystemRoleClass();
          if (stereoRole == 2)
          {
            [(objc_class *)HMMediaSystemRoleClass leftRole];
          }

          else
          {
            [(objc_class *)HMMediaSystemRoleClass rightRole];
          }
          v21 = ;
          v34 = [objc_alloc(getHMMediaSystemComponentClass()) initWithMediaProfile:mediaProfile role:v21];
          v35 = v21;
          if (v34)
          {
            mediaProfile2 = [(HMAccessory *)v8 mediaProfile];
            if (mediaProfile2)
            {
              v22 = self->_stereoRole;
              v23 = getHMMediaSystemRoleClass();
              if (v22 == 2)
              {
                [(objc_class *)v23 rightRole];
              }

              else
              {
                [(objc_class *)v23 leftRole];
              }
              v32 = ;
              v24 = [objc_alloc(getHMMediaSystemComponentClass()) initWithMediaProfile:mediaProfile2 role:v32];
              v19 = v24 != 0;
              if (v24)
              {
                if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
                {
                  if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v25 = v24, v26 = _LogCategory_Initialize(), v24 = v25, v26))
                  {
                    v31 = v24;
                    [SFDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:];
                    v24 = v31;
                  }
                }

                v27 = v34;
                v38[0] = v34;
                v38[1] = v24;
                v28 = v24;
                v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
                [v15 setComponents:v29];

                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke;
                v36[3] = &unk_1E788F458;
                v36[4] = self;
                v37 = v15;
                [v37 commitWithCompletionHandler:v36];

                v24 = v28;
              }

              else
              {
                v27 = v34;
                if (error)
                {
                  v30 = NSErrorWithOSStatusF(4294960591, "StereoPair: Create peer component failed");
                  v24 = 0;
                  *error = v30;
                }
              }
            }

            else
            {
              if (error)
              {
                NSErrorWithOSStatusF(4294960591, "StereoPair: No peer profile");
                *error = v19 = 0;
              }

              else
              {
                v19 = 0;
              }

              v27 = v34;
            }
          }

          else
          {
            if (error)
            {
              NSErrorWithOSStatusF(4294960591, "StereoPair: Create self component failed");
              *error = v19 = 0;
            }

            else
            {
              v19 = 0;
            }

            v27 = 0;
          }
        }

        else if (error)
        {
          NSErrorWithOSStatusF(4294960591, "StereoPair: No self profile");
          *error = v19 = 0;
        }

        else
        {
          v19 = 0;
        }
      }

      else if (error)
      {
        NSErrorWithOSStatusF(4294960591, "StereoPair: Create builder failed");
        *error = v19 = 0;
      }

      else
      {
        v19 = 0;
      }
    }

    else if (error)
    {
      NSErrorWithOSStatusF(4294960591, "StereoPair: No room name");
      *error = v19 = 0;
    }

    else
    {
      v19 = 0;
    }
  }

  else if (error)
  {
    NSErrorWithOSStatusF(4294960591, "StereoPair: No home");
    *error = v19 = 0;
  }

  else
  {
    v19 = 0;
  }

LABEL_20:
  return v19;
}

void __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(v7 + 8) == 1)
  {
    v8 = *(v7 + 192);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2;
    v11[3] = &unk_1E788B9C0;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    v14 = v6;
    v15 = *(a1 + 40);
    dispatch_async(v8, v11);
  }
}

void __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 90)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v7 = _LogCategory_Initialize(), v2 = *(a1 + 32), v7))
      {
        LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:]_block_invoke_2", 90, "### Configure stereo pair failed: %{error}\n", v2);
        v2 = *(a1 + 32);
      }
    }

    v8 = *(a1 + 40);

    [v8 _completeWithError:v2];
    return;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v3 = *(a1 + 48);
      }

      v4 = [v3 uniqueIdentifier];
      v5 = [*(a1 + 56) name];
      LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:]_block_invoke_2", 30, "Configured stereo pair: %@ '%@'\n", v4, v5);
    }

LABEL_20:
    *(*(a1 + 40) + 113) = 1;
    objc_storeStrong((*(a1 + 40) + 120), *(a1 + 48));
    v9 = *(a1 + 40);

    [v9 _run];
    return;
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 90 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __78__SFDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2_cold_1();
  }

  v6 = *(a1 + 40);
  v10 = NSErrorWithOSStatusF(4294960591, "Media system not available");
  [v6 _completeWithError:v10];
}

- (void)_runHomeKitUpdateAppleTVAudioDestination
{
  self->_odeonStartTicks = mach_absolute_time();
  audioDestinationController = [(HMAccessory *)self->_tvAudioInput audioDestinationController];
  v6 = audioDestinationController;
  if (audioDestinationController)
  {
    v7 = 88;
    if (self->_configuredStereoPair)
    {
      v7 = 120;
    }

    v8 = *(&self->super.isa + v7);
    v11 = v8;
    if (v8)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination]", 30, "Setting destination %@ on audio destination controller %@\n", v11, v6);
      }

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke;
      v13[3] = &unk_1E788B520;
      v13[4] = self;
      v14 = v6;
      [v14 updateDestination:v11 options:2 completionHandler:v13];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 115)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          [(SFDeviceOperationHomeKitSetup *)v8 _runHomeKitUpdateAppleTVAudioDestination];
        }
      }

      v12 = NSErrorWithOSStatusF(4294960587, "Audio destination object not available");
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v12];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 115)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (audioDestinationController = _LogCategory_Initialize(), audioDestinationController))
      {
        [(SFDeviceOperationHomeKitSetup *)audioDestinationController _runHomeKitUpdateAppleTVAudioDestination];
      }
    }

    v11 = NSErrorWithOSStatusF(4294960587, "Audio destination controller not available");
    [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v11];
  }
}

void __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  mach_absolute_time();
  UpTicksToSecondsF();
  *(*(a1 + 32) + 392) = v4;
  v5 = *(a1 + 32);
  if (*(v5 + 8) == 1)
  {
    v6 = *(v5 + 192);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2;
    block[3] = &unk_1E788BD88;
    block[4] = v5;
    v8 = v3;
    v9 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

uint64_t __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  UpTicksToSecondsF();
  *(*(a1 + 32) + 392) = v3;
  v4 = *(a1 + 40);
  if (v4)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v7 = _LogCategory_Initialize(), v4 = *(a1 + 40), v7))
      {
        LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination]_block_invoke_2", 60, "### Setting audio destination failed: %{error}\n", v4);
        v4 = *(a1 + 40);
      }
    }

    v8 = *v2;

    return [v8 _completeWithError:v4];
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2_cold_1(a1, a1 + 32);
    }

    *(*v2 + 56) = 1;
    v5 = *v2;

    return [v5 _run];
  }
}

- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group
{
  v33 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  groupCopy = group;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  settings = [groupCopy settings];
  v9 = [settings countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v28;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v28 != v11)
        {
          objc_enumerationMutation(settings);
        }

        v13 = *(*(&v27 + 1) + 8 * i);
        keyPath = [v13 keyPath];
        v15 = [keyPath isEqual:pathCopy];

        if (v15)
        {
          v20 = v13;
          goto LABEL_19;
        }
      }

      v10 = [settings countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  settings = [groupCopy groups];
  v16 = [settings countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
LABEL_11:
    v19 = 0;
    while (1)
    {
      if (*v24 != v18)
      {
        objc_enumerationMutation(settings);
      }

      v20 = [(SFDeviceOperationHomeKitSetup *)self _homeKitFindSettingsWithKeyPath:pathCopy group:*(*(&v23 + 1) + 8 * v19)];
      if (v20)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [settings countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v17)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }

LABEL_19:
    v21 = v20;
  }

  else
  {
LABEL_17:
    v21 = 0;
  }

  return v21;
}

- (void)_runUpdateUserListeningHistoryStart
{
  v3 = self->_homeKitAccessory;
  if (v3)
  {
    v4 = self->_homeKitSelectedHome;
    owner = [(HMHome *)self->_homeKitSelectedHome owner];
    if (owner)
    {
      owner2 = [(HMHome *)v4 owner];
      v7 = [owner2 userSettingsForHome:v4];
      settings = [v7 settings];

      rootGroup = [settings rootGroup];
      v10 = [(SFDeviceOperationHomeKitSetup *)self _homeKitFindSettingsWithKeyPath:@"root.siri.identifyVoice" group:rootGroup];

      if (v10 && ([v10 value], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, (v12 & 1) != 0))
      {
        v13 = [owner userListeningHistoryUpdateControlForHome:v4];
        v14 = [v13 mutableCopy];
        v17 = v14;
        if (v14)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
          {
            if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v14 = _LogCategory_Initialize(), v14))
            {
              [(SFDeviceOperationHomeKitSetup *)v14 _runUpdateUserListeningHistoryStart];
            }
          }

          [v17 addAccessory:v3];
          self->_startTicksForHomeKitSteps = mach_absolute_time();
          v19[0] = MEMORY[0x1E69E9820];
          v19[1] = 3221225472;
          v19[2] = __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke;
          v19[3] = &unk_1E788B238;
          v19[4] = self;
          [owner updateUserListeningHistoryUpdateControl:v17 forHome:v4 completionHandler:v19];
        }

        else
        {
          v18 = NSErrorWithOSStatusF(4294960596, "ULH create access failed");
          [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v18];
        }
      }

      else
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 50 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [SFDeviceOperationHomeKitSetup _runUpdateUserListeningHistoryStart];
        }

        self->_userListeningHistoryDone = 1;
      }
    }

    else
    {
      settings = NSErrorWithOSStatusF(4294960596, "ULH no owner user");
      [(SFDeviceOperationHomeKitSetup *)self _completeWithError:settings];
    }
  }

  else
  {
    v4 = NSErrorWithOSStatusF(4294960596, "ULH no accessory");
    [(SFDeviceOperationHomeKitSetup *)self _completeWithError:v4];
  }
}

void __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = UpTicksToSecondsF();
  *(*(a1 + 32) + 288) = v5;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      v3 = __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 40), v8))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runUpdateUserListeningHistoryStart]_block_invoke_2", 60, "### ULH update access control failed: %{error}\n", v6);
          v6 = *(a1 + 40);
        }
      }

      v9 = *v2;

      [v9 _completeWithError:v6];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          __68__SFDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2_cold_2(v3, v4, v6);
        }
      }

      *(*v2 + 129) = 1;
      v7 = *v2;

      [v7 _run];
    }
  }
}

- (void)_runPersonalRequestsStart
{
  selfCopy = self;
  v38 = *MEMORY[0x1E69E9840];
  if (self->_personalRequestsEnabled)
  {
    v31 = self->_homeKitAccessory;
    if (v31)
    {
      v4 = selfCopy->_homeKitSelectedHome;
      owner = [(HMHome *)selfCopy->_homeKitSelectedHome owner];
      v6 = owner;
      if (owner)
      {
        v7 = [owner assistantAccessControlForHome:v4];
        v8 = [v7 mutableCopy];
        v11 = v8;
        if (v8)
        {
          if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
          {
            if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v8))
            {
              [(SFDeviceOperationHomeKitSetup *)v8 _runPersonalRequestsStart];
            }
          }

          [v11 setEnabled:1];
          if (_os_feature_enabled_impl())
          {
            v26 = v11;
            v27 = v7;
            v28 = v6;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v29 = v4;
            obj = [(HMHome *)v4 accessories];
            v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v34;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v34 != v14)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v16 = *(*(&v33 + 1) + 8 * i);
                  category = [v16 category];
                  categoryType = [category categoryType];
                  v19 = (getHMAccessoryCategoryTypeHomePod_0)(categoryType);
                  if ([categoryType isEqualToString:v19])
                  {
                    uniqueIdentifier = [v16 uniqueIdentifier];
                    uniqueIdentifier2 = [(HMAccessory *)v31 uniqueIdentifier];
                    v22 = [uniqueIdentifier isEqual:uniqueIdentifier2];

                    if (!v22)
                    {

                      v6 = v28;
                      v4 = v29;
                      v11 = v26;
                      v7 = v27;
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                  }
                }

                v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
              }

              while (v13);
            }

            if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
            {
              [SFDeviceOperationHomeKitSetup _runPersonalRequestsStart];
            }

            v11 = v26;
            [v26 setAllowUnauthenticatedRequests:1];
            v6 = v28;
            v4 = v29;
            v7 = v27;
          }

LABEL_31:
          selfCopy->_startTicksForHomeKitSteps = mach_absolute_time();
          [v11 addAccessory:v31];
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 3221225472;
          v32[2] = __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke;
          v32[3] = &unk_1E788B238;
          v32[4] = selfCopy;
          [v6 updateAssistantAccessControl:v11 forHome:v4 completionHandler:v32];
        }

        else
        {
          v25 = NSErrorWithOSStatusF(4294960596, "PersonalRequests create access failed");
          [(SFDeviceOperationHomeKitSetup *)selfCopy _completeWithError:v25];
        }
      }

      else
      {
        v24 = NSErrorWithOSStatusF(4294960596, "PersonalRequests no owner user");
        [(SFDeviceOperationHomeKitSetup *)selfCopy _completeWithError:v24];
      }
    }

    else
    {
      v23 = NSErrorWithOSStatusF(4294960596, "PersonalRequests no accessory");
      [(SFDeviceOperationHomeKitSetup *)selfCopy _completeWithError:v23];
    }
  }

  else
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceOperationHomeKitSetup *)self _runPersonalRequestsStart];
      }
    }

    selfCopy->_personalRequestsDone = 1;
  }
}

void __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 192);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  v3 = UpTicksToSecondsF();
  *(*(a1 + 32) + 280) = v5;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      v3 = __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2_cold_1(a1 + 32);
    }
  }

  if (*(*v2 + 8) == 1)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v8 = _LogCategory_Initialize(), v6 = *(a1 + 40), v8))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runPersonalRequestsStart]_block_invoke_2", 60, "### PersonalRequests update access control failed: %{error}\n", v6);
          v6 = *(a1 + 40);
        }
      }

      v9 = *v2;

      [v9 _completeWithError:v6];
    }

    else
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
      {
        if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v3))
        {
          __58__SFDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2_cold_2(v3, v4, v6);
        }
      }

      *(*v2 + 128) = 1;
      v7 = *v2;

      [v7 _run];
    }
  }
}

- (void)homeManagerDidUpdateDataSyncState:(id)state
{
  stateCopy = state;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__67__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __67__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke_cold_1(v2);
    }

    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__59__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if (*(result[4] + 8) == 1)
  {
    v4 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (result = _LogCategory_Initialize(), result))
      {
        __59__SFDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke_cold_1(result, a2, a3);
      }
    }

    *(v4[4] + 157) = 1;
    v5 = v4[4];

    return [v5 _run];
  }

  return result;
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__SFDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke;
  v5[3] = &unk_1E788B260;
  v5[4] = self;
  v5[5] = status;
  dispatch_async(dispatchQueue, v5);
}

void *__61__SFDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __61__SFDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke_cold_1(v2);
    }

    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (id)findStereoCounterpartsWithSupportedVersions:(unint64_t)versions
{
  v58 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = self->_homeKitSelectedRoom;
  versionsCopy = versions;
  if (v5)
  {
    v6 = v5;
    goto LABEL_3;
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
  v10 = [rooms countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (!v10)
  {
    goto LABEL_79;
  }

  v11 = *v53;
LABEL_7:
  v12 = 0;
  while (1)
  {
    if (*v53 != v11)
    {
      objc_enumerationMutation(rooms);
    }

    v13 = *(*(&v52 + 1) + 8 * v12);
    name = [v13 name];
    v15 = [name isEqual:self->_homeKitSelectedRoomName];

    if (v15)
    {
      break;
    }

    if (v10 == ++v12)
    {
      v10 = [rooms countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (!v10)
      {
LABEL_79:

        goto LABEL_80;
      }

      goto LABEL_7;
    }
  }

  v6 = v13;

  if (v6)
  {
    versions = versionsCopy;
LABEL_3:
    v7 = self->_iTunesAccountID;
    if (v7)
    {
      v8 = v7;
      v46 = SFNormalizeEmailAddress(v7, 1);
    }

    else
    {
      v46 = 0;
    }

    selfCopy = self;
    v43 = v6;
    v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    accessories = [(HMRoom *)v6 accessories];
    v17 = [accessories countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (!v17)
    {
LABEL_78:

      v10 = [v44 copy];
      rooms = v43;
      goto LABEL_79;
    }

    v18 = v17;
    v19 = *v49;
LABEL_17:
    v20 = 0;
    while (1)
    {
      if (*v49 != v19)
      {
        objc_enumerationMutation(accessories);
      }

      v21 = *(*(&v48 + 1) + 8 * v20);
      category = [v21 category];
      categoryType = [category categoryType];
      v24 = getHMAccessoryCategoryTypeHomePod_0(categoryType);
      v25 = [categoryType isEqual:v24];

      if (!v25)
      {
        goto LABEL_23;
      }

      v26 = [(SFDeviceOperationHomeKitSetup *)selfCopy _mediaSystemForAccessory:v21];
      if (!v26)
      {
        break;
      }

LABEL_22:

LABEL_23:
      if (v18 == ++v20)
      {
        v41 = [accessories countByEnumeratingWithState:&v48 objects:v56 count:16];
        v18 = v41;
        if (!v41)
        {
          goto LABEL_78;
        }

        goto LABEL_17;
      }
    }

    if (([v21 supportedStereoPairVersions] & versions) == 0)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceOperationHomeKitSetup *)v21 findStereoCounterpartsWithSupportedVersions:versions];
      }

      goto LABEL_22;
    }

    if (([(objc_class *)getHMMediaSystemBuilderClass() supportsMediaSystem:v21]& 1) == 0)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
      }

      goto LABEL_22;
    }

    remoteLoginHandler = [v21 remoteLoginHandler];
    loggedInAccount = [remoteLoginHandler loggedInAccount];
    username = [loggedInAccount username];

    remoteLoginHandler2 = [v21 remoteLoginHandler];

    if (remoteLoginHandler2)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
      }
    }

    else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
    }

    remoteLoginHandler3 = [v21 remoteLoginHandler];
    loggedInAccount2 = [remoteLoginHandler3 loggedInAccount];

    if (loggedInAccount2)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
      }
    }

    else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
    }

    remoteLoginHandler4 = [v21 remoteLoginHandler];
    loggedInAccount3 = [remoteLoginHandler4 loggedInAccount];
    username2 = [loggedInAccount3 username];

    if (username2)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
      }
    }

    else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
    }

    if (username)
    {
      v36 = SFNormalizeEmailAddress(username, 1);
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
    v38 = v46;
    v39 = v38;
    if (v37 == v38)
    {
    }

    else
    {
      if ((v46 == 0) == (v37 != 0))
      {

LABEL_69:
        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:]", 30, "Skipping stereo counterpart for account mismatch: '%{mask}' vs '%{mask}'\n", v39, v37);
        }

        goto LABEL_73;
      }

      v40 = [v37 isEqual:v38];

      if ((v40 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    [v44 addObject:v21];
LABEL_73:

    versions = versionsCopy;
    goto LABEL_22;
  }

  v10 = 0;
LABEL_80:

  return v10;
}

- (id)findTVs
{
  v38 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self->_homeKitSelectedRoom;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    v26 = v4;
    v27 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    accessories = [(HMRoom *)v4 accessories];
    v6 = [accessories countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v8)
          {
            objc_enumerationMutation(accessories);
          }

          v10 = *(*(&v28 + 1) + 8 * i);
          category = [v10 category];
          categoryType = [category categoryType];
          v13 = (getHMAccessoryCategoryTypeAppleTV)(categoryType);
          v14 = [categoryType isEqual:v13];

          if (v14)
          {
            audioDestinationController = [v10 audioDestinationController];

            if (audioDestinationController)
            {
              audioDestinationController2 = [v10 audioDestinationController];
              destination = [audioDestinationController2 destination];

              if (destination)
              {
                if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
                {
                  [(SFDeviceOperationHomeKitSetup *)v10 findTVs];
                }
              }

              else
              {
                [v27 addObject:v10];
              }
            }

            else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
            {
              [(SFDeviceOperationHomeKitSetup *)v10 findTVs];
            }
          }
        }

        v7 = [accessories countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v7);
    }

    v18 = [v27 copy];
    rooms = v26;
    goto LABEL_24;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
  v18 = [rooms countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (!v18)
  {
LABEL_24:

    goto LABEL_25;
  }

  v21 = *v33;
LABEL_30:
  v22 = 0;
  while (1)
  {
    if (*v33 != v21)
    {
      objc_enumerationMutation(rooms);
    }

    v23 = *(*(&v32 + 1) + 8 * v22);
    name = [v23 name];
    v25 = [name isEqual:self->_homeKitSelectedRoomName];

    if (v25)
    {
      break;
    }

    if (v18 == ++v22)
    {
      v18 = [rooms countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v18)
      {
        goto LABEL_30;
      }

      goto LABEL_24;
    }
  }

  v4 = v23;

  if (v4)
  {
    goto LABEL_3;
  }

  v18 = 0;
LABEL_25:

  return v18;
}

- (BOOL)_isOwnerOfHome:(id)home
{
  homeCopy = home;
  currentUser = [homeCopy currentUser];
  if (currentUser)
  {
    v5 = [homeCopy homeAccessControlForUser:currentUser];
    isOwner = [v5 isOwner];
  }

  else
  {
    isOwner = 0;
  }

  return isOwner;
}

- (id)_mediaSystemForAccessory:(id)accessory
{
  v35 = *MEMORY[0x1E69E9840];
  accessoryCopy = accessory;
  uniqueIdentifier = [accessoryCopy uniqueIdentifier];
  home = [accessoryCopy home];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  mediaSystems = [home mediaSystems];
  v23 = [mediaSystems countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v23)
  {
    v7 = *v30;
    v21 = home;
    v22 = accessoryCopy;
    v24 = mediaSystems;
    v20 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(mediaSystems);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        components = [v9 components];
        v11 = [components countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v26;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v26 != v13)
              {
                objc_enumerationMutation(components);
              }

              mediaProfile = [*(*(&v25 + 1) + 8 * j) mediaProfile];
              accessory = [mediaProfile accessory];
              uniqueIdentifier2 = [accessory uniqueIdentifier];

              if ([uniqueIdentifier2 isEqual:uniqueIdentifier])
              {
                v18 = v9;

                home = v21;
                accessoryCopy = v22;
                mediaSystems = v24;
                goto LABEL_19;
              }
            }

            v12 = [components countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        mediaSystems = v24;
        v7 = v20;
      }

      v18 = 0;
      home = v21;
      accessoryCopy = v22;
      v23 = [v24 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v23);
  }

  else
  {
    v18 = 0;
  }

LABEL_19:

  return v18;
}

- (id)_normalizedString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy stringByReplacingOccurrencesOfString:@"[ ]+" withString:@" " options:1024 range:{0, objc_msgSend(stringCopy, "length")}];

  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

- (void)_removeSimilarRoomNames:(id)names home:(id)home
{
  v72 = *MEMORY[0x1E69E9840];
  namesCopy = names;
  homeCopy = home;
  name = [homeCopy name];
  v8 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name];

  if (v8)
  {
    v9 = [namesCopy count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v48 = v8;
      v49 = namesCopy;
      do
      {
        v12 = [namesCopy objectAtIndexedSubscript:v11];
        v13 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:v12];

        if ([v13 caseInsensitiveCompare:v8])
        {
          v50 = v10;
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          actionSets = [homeCopy actionSets];
          v15 = [actionSets countByEnumeratingWithState:&v64 objects:v71 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v65;
LABEL_7:
            v18 = 0;
            while (1)
            {
              if (*v65 != v17)
              {
                objc_enumerationMutation(actionSets);
              }

              v19 = *(*(&v64 + 1) + 8 * v18);
              name2 = [v19 name];
              v21 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name2];

              if (v21)
              {
                if (![v13 caseInsensitiveCompare:v21])
                {
                  break;
                }
              }

              if (v16 == ++v18)
              {
                v16 = [actionSets countByEnumeratingWithState:&v64 objects:v71 count:16];
                if (v16)
                {
                  goto LABEL_7;
                }

                goto LABEL_14;
              }
            }

            name3 = [v19 name];

            if (!name3)
            {
              goto LABEL_18;
            }

            v23 = "ActionSet";
          }

          else
          {
LABEL_14:

LABEL_18:
            v62 = 0u;
            v63 = 0u;
            v60 = 0u;
            v61 = 0u;
            serviceGroups = [homeCopy serviceGroups];
            v25 = [serviceGroups countByEnumeratingWithState:&v60 objects:v70 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v61;
LABEL_20:
              v28 = 0;
              while (1)
              {
                if (*v61 != v27)
                {
                  objc_enumerationMutation(serviceGroups);
                }

                v29 = *(*(&v60 + 1) + 8 * v28);
                name4 = [v29 name];
                v31 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name4];

                if (v31)
                {
                  if (![v13 caseInsensitiveCompare:v31])
                  {
                    break;
                  }
                }

                if (v26 == ++v28)
                {
                  v26 = [serviceGroups countByEnumeratingWithState:&v60 objects:v70 count:16];
                  if (v26)
                  {
                    goto LABEL_20;
                  }

                  goto LABEL_27;
                }
              }

              name3 = [v29 name];

              if (!name3)
              {
                goto LABEL_30;
              }

              v23 = "ServiceGroup";
            }

            else
            {
LABEL_27:

LABEL_30:
              v58 = 0u;
              v59 = 0u;
              v56 = 0u;
              v57 = 0u;
              triggers = [homeCopy triggers];
              v33 = [triggers countByEnumeratingWithState:&v56 objects:v69 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v57;
LABEL_32:
                v36 = 0;
                while (1)
                {
                  if (*v57 != v35)
                  {
                    objc_enumerationMutation(triggers);
                  }

                  v37 = *(*(&v56 + 1) + 8 * v36);
                  name5 = [v37 name];
                  v39 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name5];

                  if (v39)
                  {
                    if (![v13 caseInsensitiveCompare:v39])
                    {
                      break;
                    }
                  }

                  if (v34 == ++v36)
                  {
                    v34 = [triggers countByEnumeratingWithState:&v56 objects:v69 count:16];
                    if (v34)
                    {
                      goto LABEL_32;
                    }

                    goto LABEL_39;
                  }
                }

                name3 = [v37 name];

                if (!name3)
                {
                  goto LABEL_42;
                }

                v23 = "Trigger";
              }

              else
              {
LABEL_39:

LABEL_42:
                v54 = 0u;
                v55 = 0u;
                v52 = 0u;
                v53 = 0u;
                zones = [homeCopy zones];
                v41 = [zones countByEnumeratingWithState:&v52 objects:v68 count:16];
                if (!v41)
                {
LABEL_51:

LABEL_62:
                  ++v11;
                  v8 = v48;
                  namesCopy = v49;
                  v10 = v50;
                  goto LABEL_60;
                }

                v42 = v41;
                v43 = *v53;
LABEL_44:
                v44 = 0;
                while (1)
                {
                  if (*v53 != v43)
                  {
                    objc_enumerationMutation(zones);
                  }

                  v45 = *(*(&v52 + 1) + 8 * v44);
                  name6 = [v45 name];
                  v47 = [(SFDeviceOperationHomeKitSetup *)self _normalizedString:name6];

                  if (v47)
                  {
                    if (![v13 caseInsensitiveCompare:v47])
                    {
                      break;
                    }
                  }

                  if (v42 == ++v44)
                  {
                    v42 = [zones countByEnumeratingWithState:&v52 objects:v68 count:16];
                    if (v42)
                    {
                      goto LABEL_44;
                    }

                    goto LABEL_51;
                  }
                }

                name3 = [v45 name];

                if (!name3)
                {
                  goto LABEL_62;
                }

                v23 = "Zone";
              }
            }
          }

          v8 = v48;
          namesCopy = v49;
          v10 = v50;
        }

        else
        {
          name3 = v8;
          v23 = "Home";
        }

        if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _removeSimilarRoomNames:home:]", 30, "Removing room name '%@' for similar name '%@' (%s)\n", v13, name3, v23);
        }

        [namesCopy removeObjectAtIndex:v11];
        --v10;

LABEL_60:
      }

      while (v11 < v10);
    }
  }
}

- (void)_restoreHomeApp
{
  selfCopy = self;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceOperationHomeKitSetup *)self _restoreHomeApp];
    }
  }

  v4 = [objc_alloc(getASDSystemAppRequestClass()) initWithBundleID:@"com.apple.Home"];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke;
  v6[3] = &unk_1E788B520;
  v6[4] = selfCopy;
  v7 = v4;
  v5 = v4;
  [v5 startWithErrorHandler:v6];
}

void __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 192);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2;
  v6[3] = &unk_1E788A658;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2(uint64_t result)
{
  v2 = *(result + 32);
  if (v2)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup <= 90)
    {
      if (gLogCategory_SFDeviceOperationHomeKitSetup != -1)
      {
LABEL_4:
        LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _restoreHomeApp]_block_invoke_2", 90, "### Restore Home app failed: %{error}\n", v2);
        return;
      }

      if (_LogCategory_Initialize())
      {
        v2 = *(result + 32);
        goto LABEL_4;
      }
    }
  }

  else if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2_cold_1(result);
  }
}

- (void)_updateHomeStats
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  accessories = [(HMHome *)self->_homeKitSelectedHome accessories];
  v4 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        category = [*(*(&v16 + 1) + 8 * i) category];
        categoryType = [category categoryType];
        v10 = (getHMAccessoryCategoryTypeHomePod_0)(categoryType);
        v11 = [categoryType isEqual:v10];

        if (v11)
        {
          self->_hasHomePod = 1;
          goto LABEL_11;
        }
      }

      v5 = [accessories countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30 && (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceOperationHomeKitSetup *)self _updateHomeStats];
  }

  users = [(HMHome *)self->_homeKitSelectedHome users];
  v13 = [users count];

  hasMultipleUsers = v13 != 0;
  self->_hasMultipleUsers = v13 != 0;
  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      hasMultipleUsers = self->_hasMultipleUsers;
    }

    if (hasMultipleUsers)
    {
      v15 = "yes";
    }

    else
    {
      v15 = "no";
    }

    LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _updateHomeStats]", 30, "Home has multiple users: %s (%d)\n", v15, v13);
  }
}

- (void)_updateAccount
{
  username = [self username];
  LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _updateAccount]", 30, "Updating accessory account to '%@'\n", username);
}

void __47__SFDeviceOperationHomeKitSetup__updateAccount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_SFDeviceOperationHomeKitSetup > 90)
    {
      goto LABEL_11;
    }

    v8 = v3;
    if (gLogCategory_SFDeviceOperationHomeKitSetup == -1)
    {
      v7 = _LogCategory_Initialize();
      v4 = v8;
      if (!v7)
      {
        goto LABEL_11;
      }
    }

    v5 = [*(a1 + 32) username];
    LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _updateAccount]_block_invoke", 90, "### Update accessory account to '%@' failed: %{error}\n", v5, v8);
LABEL_5:

    v4 = v8;
    goto LABEL_11;
  }

  if (gLogCategory_SFDeviceOperationHomeKitSetup <= 30)
  {
    v8 = 0;
    if (gLogCategory_SFDeviceOperationHomeKitSetup != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      __47__SFDeviceOperationHomeKitSetup__updateAccount__block_invoke_cold_1(a1, &v9);
      v5 = v9;
      goto LABEL_5;
    }
  }

LABEL_11:
}

uint64_t __54__SFDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup homeAppInstallChoice:]_block_invoke", 30, "HomeAppInstallChoice: %s\n", v1);
}

void __73__SFDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = [*(*a2 + 176) name];
  LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination]_block_invoke_2", 30, "Configured audio destination controller: %@ '%@'\n", v2, v3);
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:]", 30, "Existing potential HomePod remoteLoginHandler: %@\n", v1);
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  v2 = [v1 loggedInAccount];
  LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:]", 30, "Existing potential HomePod loggedInAccount: %@\n", v2);
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  v2 = [v1 loggedInAccount];
  v3 = [v2 username];
  LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:]", 30, "Existing potential HomePod username: %@\n", v3);
}

void __48__SFDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) bundleID];
  LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _restoreHomeApp]_block_invoke_2", 30, "Restore Home app started (%@)\n", v1);
}

- (uint64_t)_updateHomeStats
{
  if (*(self + 154))
  {
    v1 = "yes";
  }

  else
  {
    v1 = "no";
  }

  return LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _updateHomeStats]", 30, "Home has existing HomePod? %s\n", v1);
}

void __47__SFDeviceOperationHomeKitSetup__updateAccount__block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  v4 = [*(a1 + 32) username];
  *a2 = v4;
  v6 = [*(a1 + 40) loggedInAccount];
  v5 = [v6 username];
  LogPrintF(&gLogCategory_SFDeviceOperationHomeKitSetup, "[SFDeviceOperationHomeKitSetup _updateAccount]_block_invoke", 30, "Updated accessory account to '%@' (%@)\n", v4, v5);
}

@end