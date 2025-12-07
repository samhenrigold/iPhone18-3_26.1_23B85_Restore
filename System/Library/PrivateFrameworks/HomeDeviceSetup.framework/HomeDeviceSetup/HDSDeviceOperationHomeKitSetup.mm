@interface HDSDeviceOperationHomeKitSetup
- (BOOL)_isOwnerOfHome:(id)home;
- (BOOL)_runHomeKitConfigureStereoPairAndReturnError:(id *)error;
- (HDSDeviceOperationHomeKitSetup)init;
- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group;
- (id)_mediaSystemForAccessory:(id)accessory;
- (id)_normalizedString:(id)string;
- (id)_runHomeKitAutoSelectHome:(BOOL)home;
- (id)checkIfExistingHome:(id)home;
- (id)findStereoCounterpartsWithSupportedVersions:(unint64_t)versions;
- (id)findTVs;
- (id)homePodsInHomeRoom:(id)room roomName:(id)name;
- (void)_cleanup;
- (void)_completeWithError:(id)error errorLabel:(id)label;
- (void)_removeAccessoryIfNeeded;
- (void)_removeSimilarRoomNames:(id)names home:(id)home;
- (void)_restoreHomeApp;
- (void)_run;
- (void)_runHomeKitAddAccessory;
- (void)_runHomeKitAddAppData;
- (void)_runHomeKitAddHome;
- (void)_runHomeKitAddHomeWithName:(id)name;
- (void)_runHomeKitAssignRoom;
- (void)_runHomeKitDeviceSetup;
- (void)_runHomeKitSelectRoom;
- (void)_runHomeKitSetupRoom:(BOOL)room;
- (void)_runHomeKitUpdateAppleTVAudioDestination;
- (void)_runInit;
- (void)_runPersonalRequestsStart;
- (void)_runUpdateUserListeningHistoryStart;
- (void)_startTimeout:(double)timeout;
- (void)_syncAccessoriesInSelectedRoom;
- (void)_timeoutForAccessorySync;
- (void)_updateAccount;
- (void)_updateHomeStats;
- (void)acceptSelectSameWrongLocation;
- (void)accessory:(id)accessory didUpdateLoggedInAccount:(id)account;
- (void)accessoryBrowser:(id)browser didRemoveNewAccessory:(id)accessory;
- (void)activate;
- (void)addHomePodsToAccessorySync:(id)sync;
- (void)createHomeInSameLocation;
- (void)createStereoPairBuilder:(id)builder;
- (void)homeAppInstallChoice:(BOOL)choice;
- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status;
- (void)homeManagerDidUpdateDataSyncState:(id)state;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)invalidate;
- (void)performReadinessCheck:(id)check completion:(id)completion;
- (void)reselectHome;
- (void)resetHomeSelection;
- (void)resetToHomeSelection;
- (void)resume;
- (void)selectHome:(id)home;
- (void)selectHomeName:(id)name;
- (void)selectRoom:(id)room;
- (void)sendPeerAccessoryHintForStereoPair;
- (void)startHomeNameCreation:(BOOL)creation namingIssue:(int)issue;
@end

@implementation HDSDeviceOperationHomeKitSetup

- (HDSDeviceOperationHomeKitSetup)init
{
  v6.receiver = self;
  v6.super_class = HDSDeviceOperationHomeKitSetup;
  v2 = [(HDSDeviceOperationHomeKitSetup *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_timeoutInSeconds = 300.0;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HDSDeviceOperationHomeKitSetup_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __42__HDSDeviceOperationHomeKitSetup_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __42__HDSDeviceOperationHomeKitSetup_activate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__HDSDeviceOperationHomeKitSetup_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __44__HDSDeviceOperationHomeKitSetup_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 264);
  if (v2)
  {
    if (*(v1 + 227) != 1 || !*(v1 + 176))
    {
      goto LABEL_8;
    }

    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __44__HDSDeviceOperationHomeKitSetup_invalidate__block_invoke_cold_1();
    }

    [*(*(a1 + 32) + 264) _endActiveAssertion:*(*(a1 + 32) + 176)];
    v1 = *(a1 + 32);
    v2 = *(v1 + 264);
    if (v2)
    {
LABEL_8:
      *(v1 + 264) = 0;

      v1 = *(a1 + 32);
    }
  }

  v4 = NSErrorWithOSStatusF(4294960573, "Invalidated");
  [v1 _completeWithError:v4 errorLabel:0];
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

  promptForHomeNameCreationHandler = self->_promptForHomeNameCreationHandler;
  self->_promptForHomeNameCreationHandler = 0;

  promptForHomeInSameLocationHandler = self->_promptForHomeInSameLocationHandler;
  self->_promptForHomeInSameLocationHandler = 0;

  promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
  self->_promptToInstallHomeAppHandler = 0;

  trSession = self->_trSession;
  self->_trSession = 0;

  self->_active = 0;
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v12 = timeoutTimer;
    dispatch_source_cancel(v12);
    v13 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

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

  builder = self->_builder;
  self->_builder = 0;
}

- (void)resetHomeSelection
{
  userCreatedHomeName = self->_userCreatedHomeName;
  self->_userCreatedHomeName = 0;

  homeKitSelectedHome = self->_homeKitSelectedHome;
  self->_homeKitSelectedHome = 0;

  self->_state = 16;
}

- (void)_removeAccessoryIfNeeded
{
  if (self->_homeKitAddedAccessory)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _removeAccessoryIfNeeded];
    }

    homeKitSelectedHome = self->_homeKitSelectedHome;
    homeKitAccessory = self->_homeKitAccessory;

    [(HMHome *)homeKitSelectedHome removeAccessory:homeKitAccessory completionHandler:&__block_literal_global_1];
  }
}

uint64_t __58__HDSDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90)
    {
      v5 = v2;
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
      {
        v2 = __58__HDSDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke_cold_1();
LABEL_13:
        v3 = v5;
      }
    }
  }

  else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
  {
    v5 = 0;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = __58__HDSDeviceOperationHomeKitSetup__removeAccessoryIfNeeded__block_invoke_cold_2();
      goto LABEL_13;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_completeWithError:(id)error errorLabel:(id)label
{
  errorCopy = error;
  labelCopy = label;
  if (self->_active)
  {
    if (errorCopy)
    {
      self->_state = 3;
      [(HDSDeviceOperationHomeKitSetup *)self _removeAccessoryIfNeeded];
      if ([errorCopy code] == -6723)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _completeWithError:errorLabel:];
        }
      }

      else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _completeWithError:errorLabel:];
      }
    }

    else
    {
      mach_absolute_time();
      UpTicksToSecondsF();
      v8 = v7;
      if (gLogCategory_HDSDeviceOperationHomeKitSetup >= 31)
      {
        self->_metricNonUserSeconds = v7 + self->_metricNonUserSeconds;
        self->_state = 4;
        goto LABEL_19;
      }

      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
      {
        [HDSDeviceOperationHomeKitSetup _completeWithError:errorLabel:];
      }

      v9 = gLogCategory_HDSDeviceOperationHomeKitSetup;
      metricNonUserSeconds = v8 + self->_metricNonUserSeconds;
      self->_metricNonUserSeconds = metricNonUserSeconds;
      self->_state = 4;
      if (v9 <= 30)
      {
        if (v9 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_19;
          }

          metricNonUserSeconds = self->_metricNonUserSeconds;
        }

        v12 = metricNonUserSeconds;
        metricUserSeconds = self->_metricUserSeconds;
        LogPrintF();
      }
    }
  }

LABEL_19:
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    completionHandler[2](completionHandler, errorCopy, labelCopy);
  }

  [(HDSDeviceOperationHomeKitSetup *)self _cleanup:*&v12];
}

- (void)homeAppInstallChoice:(BOOL)choice
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__HDSDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke;
  v4[3] = &unk_2797142A8;
  v4[4] = self;
  choiceCopy = choice;
  dispatch_async(dispatchQueue, v4);
}

void *__55__HDSDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __55__HDSDeviceOperationHomeKitSetup_homeAppInstallChoice___block_invoke_cold_1();
    }

    *(v2[4] + 88) = 1;
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
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HDSDeviceOperationHomeKitSetup_resume__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__40__HDSDeviceOperationHomeKitSetup_resume__block_invoke(void *result)
{
  v2 = result[4];
  if (*(v2 + 8) == 1)
  {
    v3 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup >= 31)
    {
      *(v2 + 9) = 0;
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
      {
        __40__HDSDeviceOperationHomeKitSetup_resume__block_invoke_cold_1();
      }

      v4 = gLogCategory_HDSDeviceOperationHomeKitSetup;
      *(v3[4] + 9) = 0;
      if (v4 <= 30 && (v4 != -1 || _LogCategory_Initialize()))
      {
        __40__HDSDeviceOperationHomeKitSetup_resume__block_invoke_cold_2();
      }
    }

    *(v3[4] + 16) = mach_absolute_time();
    [v3[4] _startTimeout:*(v3[4] + 488)];
    v5 = v3[4];

    return [v5 _run];
  }

  return result;
}

- (void)selectHome:(id)home
{
  homeCopy = home;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HDSDeviceOperationHomeKitSetup_selectHome___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(dispatchQueue, v7);
}

void __45__HDSDeviceOperationHomeKitSetup_selectHome___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 8) == 1)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __45__HDSDeviceOperationHomeKitSetup_selectHome___block_invoke_cold_1();
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 312) = v2 + *(*(a1 + 32) + 312);
    if ([*(a1 + 32) _isOwnerOfHome:*(a1 + 40)])
    {
      objc_storeStrong((*(a1 + 32) + 272), *(a1 + 40));
      *(*(a1 + 32) + 16) = mach_absolute_time();
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __45__HDSDeviceOperationHomeKitSetup_selectHome___block_invoke_cold_2();
      }

      [*(a1 + 32) _startTimeout:*(*(a1 + 32) + 488)];
      v3 = *(a1 + 32);

      [v3 _run];
    }

    else
    {
      v15 = NSErrorWithOSStatusF(301018, "HomeKitSetupNonOwnerHome");
      v4 = [v15 userInfo];
      v5 = [v4 mutableCopy];
      v6 = v5;
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v8 = v7;

      v9 = [*(a1 + 40) name];
      [v8 setObject:v9 forKeyedSubscript:@"SFErrorKeyHomeName"];

      v10 = [*(a1 + 40) owner];
      v11 = [v10 name];
      [v8 setObject:v11 forKeyedSubscript:@"SFErrorKeyHomeOwnerAccount"];

      v12 = objc_alloc(MEMORY[0x277CCA9B8]);
      v13 = [v15 domain];
      v14 = [v12 initWithDomain:v13 code:objc_msgSend(v15 userInfo:{"code"), v8}];

      [*(a1 + 32) _completeWithError:v14 errorLabel:@"HDS-HK-NotHomeOwner"];
    }
  }
}

- (void)selectHomeName:(id)name
{
  nameCopy = name;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HDSDeviceOperationHomeKitSetup_selectHomeName___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__49__HDSDeviceOperationHomeKitSetup_selectHomeName___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __49__HDSDeviceOperationHomeKitSetup_selectHomeName___block_invoke_cold_1();
    }

    objc_storeStrong((v2[4] + 208), v2[5]);
    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)createHomeInSameLocation
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDSDeviceOperationHomeKitSetup_createHomeInSameLocation__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__58__HDSDeviceOperationHomeKitSetup_createHomeInSameLocation__block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __58__HDSDeviceOperationHomeKitSetup_createHomeInSameLocation__block_invoke_cold_1();
    }

    *(v2[4] + 216) = 1;
    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)acceptSelectSameWrongLocation
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__HDSDeviceOperationHomeKitSetup_acceptSelectSameWrongLocation__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__63__HDSDeviceOperationHomeKitSetup_acceptSelectSameWrongLocation__block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __63__HDSDeviceOperationHomeKitSetup_acceptSelectSameWrongLocation__block_invoke_cold_1();
    }

    *(v2[4] + 217) = 1;
    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)resetToHomeSelection
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HDSDeviceOperationHomeKitSetup_resetToHomeSelection__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__54__HDSDeviceOperationHomeKitSetup_resetToHomeSelection__block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v7 = v1;
    v5 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __54__HDSDeviceOperationHomeKitSetup_resetToHomeSelection__block_invoke_cold_1();
    }

    [v5[4] resetHomeSelection];
    v6 = v5[4];

    return [v6 _run];
  }

  return result;
}

- (void)reselectHome
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDSDeviceOperationHomeKitSetup_reselectHome__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__46__HDSDeviceOperationHomeKitSetup_reselectHome__block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __46__HDSDeviceOperationHomeKitSetup_reselectHome__block_invoke_cold_1();
    }

    *(v2[4] + 112) = 1;
    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)selectRoom:(id)room
{
  roomCopy = room;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__HDSDeviceOperationHomeKitSetup_selectRoom___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = roomCopy;
  v6 = roomCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__45__HDSDeviceOperationHomeKitSetup_selectRoom___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __45__HDSDeviceOperationHomeKitSetup_selectRoom___block_invoke_cold_1();
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    *(v2[4] + 312) = v3 + *(v2[4] + 312);
    *(v2[4] + 16) = mach_absolute_time();
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __45__HDSDeviceOperationHomeKitSetup_selectRoom___block_invoke_cold_2();
    }

    objc_storeStrong((v2[4] + 280), v2[5]);
    [v2[4] _startTimeout:*(v2[4] + 488)];
    v4 = v2[4];

    return [v4 _run];
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

  v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v9 = self->_timeoutTimer;
  self->_timeoutTimer = v8;

  v10 = self->_timeoutTimer;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HDSDeviceOperationHomeKitSetup__startTimeout___block_invoke;
  v11[3] = &unk_2797142F8;
  v11[4] = self;
  *&v11[5] = timeout;
  dispatch_source_set_event_handler(v10, v11);
  HDSDispatchTimerSet(self->_timeoutTimer, timeout, -1.0, -4.0);
  dispatch_resume(self->_timeoutTimer);
}

void __48__HDSDeviceOperationHomeKitSetup__startTimeout___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48) - 10;
  if (v2 > 0x28)
  {
    v3 = "HomeKitSetupUnknownState?";
  }

  else
  {
    v3 = off_279714480[v2];
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v4 = *(*(a1 + 32) + 56);
  if (v4)
  {
    v5 = v4;
    dispatch_source_cancel(v5);
    v6 = *(a1 + 32);
    v7 = *(v6 + 56);
    *(v6 + 56) = 0;
  }

  v8 = *(a1 + 32);
  v9 = NSErrorWithOSStatusF(4294896133, "%s", v3);
  [v8 _completeWithError:v9 errorLabel:@"HDS-HK-TimeOut"];
}

- (void)_run
{
  v48[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CCA590];
  v4 = *MEMORY[0x277CCA450];
  state = self->_state;
  while (2)
  {
    switch(state)
    {
      case 0:
        self->_state = 10;
        [(HDSDeviceOperationHomeKitSetup *)self _runInit];
        goto LABEL_188;
      case 10:
        if (self->_homeKitHomeManagerReady)
        {
          v6 = 11;
          goto LABEL_187;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 11:
        v6 = 12;
        goto LABEL_187;
      case 12:
        if ([(HMHomeManager *)self->_homeKitHomeManager dataSyncState]== 5)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }

          v22 = MEMORY[0x277CCA9B8];
          v47 = v4;
          v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
          v24 = v23;
          v25 = @"?";
          if (v23)
          {
            v25 = v23;
          }

          v48[0] = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:{1, *&v43}];
          v27 = [v22 errorWithDomain:v3 code:301024 userInfo:v26];
          v28 = @"HDS-HK-RequiresConfigurationReset";
LABEL_136:
          [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v27 errorLabel:v28];

          goto LABEL_188;
        }

        if ([(HMHomeManager *)self->_homeKitHomeManager dataSyncState]== 2)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }

          v32 = MEMORY[0x277CCA9B8];
          v45 = v4;
          v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
          v24 = v33;
          v34 = @"?";
          if (v33)
          {
            v34 = v33;
          }

          v46 = v34;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:{1, *&v43}];
          v27 = [v32 errorWithDomain:v3 code:301011 userInfo:v26];
          v28 = @"HDS-HK-KeychainNotEnabled";
          goto LABEL_136;
        }

        if ([(HMHomeManager *)self->_homeKitHomeManager isDataSyncInProgress])
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [(HDSDeviceOperationHomeKitSetup *)&self->_homeKitHomeManager _run];
          }
        }

        else if ([(HMHomeManager *)self->_homeKitHomeManager status])
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [(HDSDeviceOperationHomeKitSetup *)&self->_homeKitHomeManager _run];
          }
        }

        else
        {
          self->_state = 13;
          mach_absolute_time();
          UpTicksToSecondsF();
          self->_homekitDataSyncSeconds = homekitDataSyncSeconds;
          if (gLogCategory_HDSDeviceOperationHomeKitSetup > 30)
          {
            goto LABEL_188;
          }

          if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1)
          {
            goto LABEL_197;
          }

          if (_LogCategory_Initialize())
          {
            homekitDataSyncSeconds = self->_homekitDataSyncSeconds;
LABEL_197:
            v43 = homekitDataSyncSeconds;
            LogPrintF();
            goto LABEL_188;
          }
        }

        goto LABEL_188;
      case 13:
        if (self->_keyExchangeOnly)
        {
          goto LABEL_97;
        }

        v6 = 14;
        goto LABEL_187;
      case 14:
        if (!self->_promptToInstallHomeAppHandler)
        {
          goto LABEL_83;
        }

        v19 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:@"com.apple.Home"];
        appState = [v19 appState];
        isInstalled = [appState isInstalled];

        if (isInstalled)
        {
          goto LABEL_83;
        }

        self->_state = 15;
        promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
        goto LABEL_172;
      case 15:
        if (self->_homeAppInstallUserDidChoose)
        {
LABEL_83:
          v6 = 16;
          goto LABEL_187;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 16:
        v9 = [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAutoSelectHome:0];
        homeKitSelectedHome = self->_homeKitSelectedHome;
        self->_homeKitSelectedHome = v9;

        if (!self->_homeKitSelectedHome)
        {
          goto LABEL_188;
        }

        goto LABEL_170;
      case 17:
        timeoutTimer = self->_timeoutTimer;
        if (timeoutTimer)
        {
          v13 = timeoutTimer;
          dispatch_source_cancel(v13);
          v14 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        if (!self->_homeKitSelectedHome)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }

LABEL_188:
          v37 = self->_state == state;
          state = self->_state;
          if (v37)
          {
            return;
          }

          continue;
        }

        if (self->_isCLIMode)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }

          goto LABEL_170;
        }

        if (!_os_feature_enabled_impl())
        {
          goto LABEL_170;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize())
          {
            [(HDSDeviceOperationHomeKitSetup *)&self->_homeKitSelectedHome _run];
          }

          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _run];
          }
        }

        if ([(HMHome *)self->_homeKitSelectedHome homeLocationStatus]!= 2 && [(HMHome *)self->_homeKitSelectedHome homeLocationStatus]!= 3 && !+[HDSDefaults forceHomeLocationCreationFlow])
        {
LABEL_170:
          v6 = 21;
LABEL_187:
          self->_state = v6;
          goto LABEL_188;
        }

        self->_state = 20;
        promptForHomeInSameLocationHandler = self->_promptForHomeInSameLocationHandler;
        if (promptForHomeInSameLocationHandler)
        {
          name = [(HMHome *)self->_homeKitSelectedHome name];
          v41 = name;
          if (name)
          {
            v42 = name;
          }

          else
          {
            v42 = @"My Home";
          }

          promptForHomeInSameLocationHandler[2](promptForHomeInSameLocationHandler, v42);
        }

        return;
      case 18:
        if (self->_isCLIMode)
        {
          userCreatedHomeName = self->_userCreatedHomeName;
          self->_userCreatedHomeName = @"My Home";
        }

        if (self->_userCreatedHomeName)
        {
          [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAddHomeWithName:?];
        }

        else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 19:
        if (self->_homeKitSelectedHome)
        {
          goto LABEL_170;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 20:
        if (self->_isCLIMode)
        {
          self->_userSelectHomeWrongLocation = 1;
          goto LABEL_170;
        }

        if (self->_userSelectHomeWrongLocation)
        {
          goto LABEL_170;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 21:
        [(HDSDeviceOperationHomeKitSetup *)self _updateHomeStats];
        self->_state = 22;
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitSelectRoom];
        goto LABEL_188;
      case 22:
        if (self->_reselectHome)
        {
          self->_reselectHome = 0;
          v30 = self->_homeKitSelectedHome;
          self->_homeKitSelectedHome = 0;

          self->_state = 17;
          v31 = [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAutoSelectHome:1];
        }

        else if (self->_homeKitSelectedRoom || self->_homeKitSelectedRoomName)
        {
          v35 = 23;
          if (self->_isCLIMode)
          {
            if (+[HDSDefaults waitForAccessorySync])
            {
              v35 = 24;
            }

            else
            {
              v35 = 23;
            }
          }

          self->_state = v35;
        }

        else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 23:
        if (!self->_pauseAfterUserInput || !self->_pauseHandler)
        {
          goto LABEL_97;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        v15 = self->_timeoutTimer;
        if (v15)
        {
          v16 = v15;
          dispatch_source_cancel(v16);
          v17 = self->_timeoutTimer;
          self->_timeoutTimer = 0;
        }

        self->_paused = 1;
        self->_state = 26;
        promptToInstallHomeAppHandler = self->_pauseHandler;
LABEL_172:
        promptToInstallHomeAppHandler[2]();
        goto LABEL_188;
      case 24:
        if (!self->_isCLIMode || !+[HDSDefaults waitForAccessorySync])
        {
          goto LABEL_186;
        }

        self->_accessorySyncStartTicks = mach_absolute_time();
        self->_state = 25;
        [(HDSDeviceOperationHomeKitSetup *)self _syncAccessoriesInSelectedRoom];
        goto LABEL_188;
      case 25:
        if (!self->_accessorySyncDone)
        {
          goto LABEL_188;
        }

        mach_absolute_time();
        UpTicksToSecondsF();
        self->_accessorySyncSeconds = accessorySyncSeconds;
        if (gLogCategory_HDSDeviceOperationHomeKitSetup > 30)
        {
          goto LABEL_186;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1)
        {
          goto LABEL_108;
        }

        if (_LogCategory_Initialize())
        {
          accessorySyncSeconds = self->_accessorySyncSeconds;
LABEL_108:
          v43 = accessorySyncSeconds;
          LogPrintF();
        }

LABEL_186:
        v6 = 23;
        goto LABEL_187;
      case 26:
        if (!self->_paused)
        {
LABEL_97:
          v6 = 27;
          goto LABEL_187;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 27:
        self->_state = 28;
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitDeviceSetup];
        goto LABEL_188;
      case 28:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 29:
        if (self->_keyExchangeOnly)
        {
          goto LABEL_112;
        }

        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAddAccessory];
        goto LABEL_188;
      case 30:
        if (self->_homeKitAddedAccessory)
        {
          v6 = 31;
          goto LABEL_187;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 31:
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitSetupRoom:0];
        goto LABEL_188;
      case 32:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 33:
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAssignRoom];
        goto LABEL_188;
      case 34:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_188;
      case 35:
        if (self->_stereoRole)
        {
          v6 = 38;
        }

        else if (self->_tvAudioInput)
        {
LABEL_146:
          v6 = 41;
        }

        else if (self->_appDataSelf)
        {
          v6 = 36;
        }

        else
        {
LABEL_80:
          v6 = 44;
        }

        goto LABEL_187;
      case 36:
        self->_state = 37;
        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAddAppData];
        goto LABEL_188;
      case 37:
        if (self->_homeKitAddedAppData)
        {
          goto LABEL_80;
        }

        goto LABEL_188;
      case 38:
        v44 = 0;
        v7 = [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitConfigureStereoPairAndReturnError:&v44];
        v8 = v44;
        if (v8)
        {
          [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v8 errorLabel:@"HDS-HK-StereoPair-Preflights"];
        }

        else
        {
          if (v7)
          {
            v36 = 39;
          }

          else
          {
            v36 = 40;
          }

          self->_state = v36;
        }

        goto LABEL_188;
      case 39:
        if (!self->_configuredStereoPair)
        {
          goto LABEL_188;
        }

        v6 = 40;
        goto LABEL_187;
      case 40:
        goto LABEL_146;
      case 41:
        if (!self->_tvAudioInput)
        {
          goto LABEL_99;
        }

        [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitUpdateAppleTVAudioDestination];
        v6 = 42;
        goto LABEL_187;
      case 42:
        if (!self->_configuredTVAudio)
        {
          goto LABEL_188;
        }

LABEL_99:
        v6 = 43;
        goto LABEL_187;
      case 43:
        goto LABEL_80;
      case 44:
        self->_state = 45;
        [(HDSDeviceOperationHomeKitSetup *)self _runPersonalRequestsStart];
        goto LABEL_188;
      case 45:
        if (!self->_personalRequestsDone)
        {
          goto LABEL_188;
        }

        v6 = 46;
        goto LABEL_187;
      case 46:
        self->_state = 47;
        [(HDSDeviceOperationHomeKitSetup *)self _runUpdateUserListeningHistoryStart];
        goto LABEL_188;
      case 47:
        if (!self->_userListeningHistoryDone)
        {
          goto LABEL_188;
        }

        if (self->_psgHomePods && self->_psgStereoPairs)
        {
          v6 = 48;
        }

        else
        {
LABEL_112:
          v6 = 50;
        }

        goto LABEL_187;
      case 48:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _run];
        }

        goto LABEL_112;
      case 49:
        if (!self->_createUpdatePSGDone)
        {
          goto LABEL_188;
        }

        goto LABEL_112;
      case 50:
        [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:0 errorLabel:0];
        goto LABEL_188;
      default:
        goto LABEL_188;
    }
  }
}

- (void)_runInit
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runInit];
  }

  self->_startTicks = mach_absolute_time();
  self->_homeKitDataSyncStartTicks = mach_absolute_time();
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runInit];
  }

  v3 = [(HDSDeviceOperationHomeKitSetup *)self _startTimeout:self->_timeoutInSeconds];
  v4 = objc_alloc_init(getTROperationQueueClass(v3));
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = v4;

  if (self->_isCLIMode)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runInit];
    }

    defaultConfiguration = [(objc_class *)getHMMutableHomeManagerConfigurationClass() defaultConfiguration];
    v8 = [defaultConfiguration mutableCopy];
    v9 = [v8 setAdaptive:1];
    v10 = [objc_alloc(getHMHomeManagerClass(v9)) initWithHomeMangerConfiguration:v8];
    homeKitHomeManager = self->_homeKitHomeManager;
    self->_homeKitHomeManager = v10;

    v12 = [(HMHomeManager *)self->_homeKitHomeManager _beginActiveAssertionWithReason:@"hdsutil Started"];
    hdsutilHKToken = self->_hdsutilHKToken;
    self->_hdsutilHKToken = v12;
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (_runInit = _LogCategory_Initialize(), _runInit))
      {
        _runInit = [HDSDeviceOperationHomeKitSetup _runInit];
      }
    }

    v14 = objc_alloc_init(getHMHomeManagerClass(_runInit));
    defaultConfiguration = self->_homeKitHomeManager;
    self->_homeKitHomeManager = v14;
  }

  v15 = self->_homeKitHomeManager;

  [(HMHomeManager *)v15 setDelegate:self];
}

- (void)_runHomeKitDeviceSetup
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
  }

  if (!self->_keyExchangeOnly)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
    }

    v3 = objc_alloc_init(getHMAccessoryBrowserClass());
    homeKitBrowser = self->_homeKitBrowser;
    self->_homeKitBrowser = v3;

    [(HMAccessoryBrowser *)self->_homeKitBrowser setDelegate:self];
    [(HMAccessoryBrowser *)self->_homeKitBrowser startSearchingForNewAccessories];
  }

  v5 = self->_trSession;
  if (v5)
  {
    sessionID = self->_sessionID;
    v7 = objc_alloc(getHMDeviceSetupOperationClass());
    if (sessionID)
    {
      v8 = [v7 initWithSession:v5 sessionIdentifier:self->_sessionID];
      homeKitDeviceSetupOperation = self->_homeKitDeviceSetupOperation;
      self->_homeKitDeviceSetupOperation = v8;

      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
      }
    }

    else
    {
      v11 = [v7 initWithSession:v5];
      v12 = self->_homeKitDeviceSetupOperation;
      self->_homeKitDeviceSetupOperation = v11;

      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
      }
    }

    if (self->_userInteractive)
    {
      v13 = 33;
    }

    else
    {
      v13 = 9;
    }

    [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setQualityOfService:v13];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke;
    v14[3] = &unk_279713FF0;
    v14[4] = self;
    [(HMDeviceSetupOperation *)self->_homeKitDeviceSetupOperation setCompletionBlock:v14];
    [(TROperationQueue *)self->_trOperationQueue addOperation:self->_homeKitDeviceSetupOperation];
    self->_startTicksForHomeKitSteps = mach_absolute_time();
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitDeviceSetup];
    }
  }

  else
  {
    v10 = NSErrorWithOSStatusF(4294960556, "HomeKitSetupNoTRSession");
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v10 errorLabel:@"HDS-HK-NoTR"];
  }
}

void __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2;
  block[3] = &unk_279713FF0;
  block[4] = v1;
  dispatch_async(v2, block);
}

void __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  UpTicksToSecondsF();
  *(*v2 + 320) = v3;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2_cold_1();
  }

  if (*(*v2 + 8) == 1)
  {
    v4 = [*(*v2 + 96) error];

    if (v4)
    {
      v5 = [*(*v2 + 96) error];
      v12 = NSErrorNestedF();

      v6 = *v2;
      v7 = @"HDS-HK-DeviceSetup-DeviceSetupOperationFailed";
      v8 = v12;
LABEL_7:
      [v6 _completeWithError:v8 errorLabel:v7];

      return;
    }

    v9 = [*(*v2 + 96) accessory];
    v10 = *(*v2 + 104);
    *(*v2 + 104) = v9;

    if (!*(*v2 + 104))
    {
      v8 = NSErrorF();
      v12 = v8;
      v6 = *v2;
      v7 = @"HDS-HK-DeviceSetup-DeviceSetupOperationFailed";
      goto LABEL_7;
    }

    if (+[HDSDefaults sysDropForceErrorLateEnabled])
    {
      v8 = NSErrorWithOSStatusF(4294960596, "SysDrop Force Fail Late Default Enabled Error");
      v12 = v8;
      v6 = *v2;
      v7 = @"Force-Failure";
      goto LABEL_7;
    }

    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __56__HDSDeviceOperationHomeKitSetup__runHomeKitDeviceSetup__block_invoke_2_cold_2();
    }

    *(*v2 + 48) = 29;
    v11 = *v2;

    [v11 _run];
  }
}

- (id)_runHomeKitAutoSelectHome:(BOOL)home
{
  v47 = *MEMORY[0x277D85DE8];
  homes = [(HMHomeManager *)self->_homeKitHomeManager homes];
  v6 = homes;
  if (!home && ![homes count])
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    [(HDSDeviceOperationHomeKitSetup *)self _runHomeKitAddHome];
    goto LABEL_70;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        if ([*(*(&v41 + 1) + 8 * i) homeLocationStatus] == 1)
        {
          v12 = 0;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_13:

  if (!_os_feature_enabled_impl())
  {
    if (home || [v7 count] != 1)
    {
      goto LABEL_38;
    }

    firstObject = [v7 firstObject];
    if (firstObject && [(HDSDeviceOperationHomeKitSetup *)self _isOwnerOfHome:firstObject])
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_24;
      }

      goto LABEL_71;
    }

LABEL_37:

LABEL_38:
    v15 = &OBJC_IVAR___SysDropService__invalidateCalled;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:v7];
    }

    if (!self->_promptForHomeHandler)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
      }

      firstObject = [v7 firstObject];
      goto LABEL_71;
    }

    currentHome = [(HMHomeManager *)self->_homeKitHomeManager currentHome];
    uniqueIdentifier = [currentHome uniqueIdentifier];

    if (uniqueIdentifier)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v19)
      {
        v20 = v19;
        v35 = v6;
        v21 = 0;
        v22 = *v38;
LABEL_45:
        v23 = 0;
        v36 = v21 + v20;
        while (1)
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v18);
          }

          uniqueIdentifier2 = [*(*(&v37 + 1) + 8 * v23) uniqueIdentifier];
          v25 = [uniqueIdentifier2 isEqual:uniqueIdentifier];

          if (v25)
          {
            break;
          }

          ++v21;
          if (v20 == ++v23)
          {
            v20 = [v18 countByEnumeratingWithState:&v37 objects:v45 count:16];
            v21 = v36;
            if (v20)
            {
              goto LABEL_45;
            }

            break;
          }
        }

        v6 = v35;
        v15 = &OBJC_IVAR___SysDropService__invalidateCalled;
      }
    }

    v26 = v15[120];
    if (v26 <= 30 && (v26 != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v28 = timeoutTimer;
      dispatch_source_cancel(v28);
      v29 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    v31 = v30;
    v32 = v15[120];
    if (v32 <= 30 && (v32 != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    self->_metricNonUserSeconds = v31 + self->_metricNonUserSeconds;
    self->_startTicks = mach_absolute_time();
    v33 = v15[120];
    if (v33 <= 30 && (v33 != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
    }

    self->_state = 17;
    (*(self->_promptForHomeHandler + 2))();

LABEL_70:
    firstObject = 0;
    goto LABEL_71;
  }

  if (home)
  {
    goto LABEL_38;
  }

  v13 = [v7 count] == 1 ? v12 : 1;
  if (v13)
  {
    goto LABEL_38;
  }

  firstObject = [v7 firstObject];
  if (!firstObject || ![(HDSDeviceOperationHomeKitSetup *)self _isOwnerOfHome:firstObject])
  {
    goto LABEL_37;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
LABEL_24:
    [HDSDeviceOperationHomeKitSetup _runHomeKitAutoSelectHome:];
  }

LABEL_71:

  return firstObject;
}

- (void)startHomeNameCreation:(BOOL)creation namingIssue:(int)issue
{
  self->_state = 18;
  promptForHomeNameCreationHandler = self->_promptForHomeNameCreationHandler;
  if (promptForHomeNameCreationHandler)
  {
    promptForHomeNameCreationHandler[2](promptForHomeNameCreationHandler, creation, *&issue);
  }
}

- (void)_runHomeKitAddHome
{
  self->_state = 19;
  homeKitHomeManager = self->_homeKitHomeManager;
  v4 = initSFLocalizedStringForKey(@"MY_HOME");
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke;
  v5[3] = &unk_279714348;
  v5[4] = self;
  [(HMHomeManager *)homeKitHomeManager addHomeWithName:v4 completionHandler:v5];
}

void __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2;
  block[3] = &unk_279714320;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8] == 1)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      [v3 _completeWithError:? errorLabel:?];
    }

    else if (*(a1 + 48))
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __52__HDSDeviceOperationHomeKitSetup__runHomeKitAddHome__block_invoke_2_cold_1();
      }

      objc_storeStrong((*(a1 + 32) + 272), *(a1 + 48));
      *(*(a1 + 32) + 224) = 1;
      v4 = *(a1 + 32);

      [v4 _run];
    }

    else
    {
      v5 = NSErrorWithOSStatusF(4294960556, "HomeKitSetupAddHomeNoHome");
      [v1 _completeWithError:v5 errorLabel:@"HDS-HK-AddHome"];
    }
  }
}

- (void)_runHomeKitAddHomeWithName:(id)name
{
  self->_state = 19;
  homeKitHomeManager = self->_homeKitHomeManager;
  v5 = initSFLocalizedStringForKey(name);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke;
  v6[3] = &unk_279714348;
  v6[4] = self;
  [(HMHomeManager *)homeKitHomeManager addHomeWithName:v5 completionHandler:v6];
}

void __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke_2;
  block[3] = &unk_279714320;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8] == 1)
  {
    if (*(a1 + 40))
    {
      v3 = *(a1 + 32);

      [v3 _completeWithError:? errorLabel:?];
    }

    else if (*(a1 + 48))
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __61__HDSDeviceOperationHomeKitSetup__runHomeKitAddHomeWithName___block_invoke_2_cold_1();
      }

      objc_storeStrong((*(a1 + 32) + 272), *(a1 + 48));
      *(*(a1 + 32) + 224) = 1;
      v4 = *(a1 + 32);

      [v4 _run];
    }

    else
    {
      v5 = NSErrorWithOSStatusF(4294960556, "HomeKitSetupAddHomeNoHome");
      [v1 _completeWithError:v5 errorLabel:@"HDS-HK-AddHome"];
    }
  }
}

- (void)_runHomeKitSelectRoom
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = self->_homeKitSelectedHome;
  if (*&self->_promptForRoomHandler != 0)
  {
    selfCopy = self;
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v42 = v3;
    rooms = [(HMHome *)v3 rooms];
    v6 = [rooms countByEnumeratingWithState:&v52 objects:v57 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v53;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v53 != v8)
          {
            objc_enumerationMutation(rooms);
          }

          name = [*(*(&v52 + 1) + 8 * i) name];
          if (name && ([v4 containsObject:name] & 1) == 0)
          {
            [v4 addObject:name];
          }
        }

        v7 = [rooms countByEnumeratingWithState:&v52 objects:v57 count:16];
      }

      while (v7);
    }

    [v4 sortUsingSelector:?];
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v11 = [&unk_2864E7CA0 countByEnumeratingWithState:&v48 objects:v56 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v45 = 0;
      v14 = *v49;
      selfCopy3 = self;
      do
      {
        v16 = 0;
        v43 = v13;
        v17 = 10 - v13;
        do
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(&unk_2864E7CA0);
          }

          v18 = initSFLocalizedStringForKey(*(*(&v48 + 1) + 8 * v16));
          if (v18)
          {
            v19 = [(HDSDeviceOperationHomeKitSetup *)selfCopy3 _normalizedString:v18];
            v47[0] = MEMORY[0x277D85DD0];
            v47[1] = 3221225472;
            v47[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke;
            v47[3] = &unk_279714370;
            v47[4] = v19;
            if ([v4 indexOfObjectPassingTest:v47] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v46 addObject:v18];
              if (v17 == v16)
              {
                v20 = v18;

                v45 = v20;
                selfCopy3 = selfCopy;
              }
            }
          }

          ++v16;
        }

        while (v12 != v16);
        v13 = v43 + v12;
        v12 = [&unk_2864E7CA0 countByEnumeratingWithState:&v48 objects:v56 count:16];
      }

      while (v12);
    }

    else
    {
      v45 = 0;
      selfCopy3 = self;
    }

    v3 = v42;
    [(HDSDeviceOperationHomeKitSetup *)selfCopy3 _removeSimilarRoomNames:v46 home:v42];
    [v46 sortUsingSelector:sel_localizedStandardCompare_];
    v21 = [v4 arrayByAddingObjectsFromArray:v46];
    timeoutTimer = selfCopy3->_timeoutTimer;
    if (timeoutTimer)
    {
      v23 = timeoutTimer;
      dispatch_source_cancel(v23);
      v24 = selfCopy->_timeoutTimer;
      selfCopy->_timeoutTimer = 0;

      selfCopy3 = selfCopy;
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    v26 = v25;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    selfCopy3->_metricNonUserSeconds = v26 + selfCopy3->_metricNonUserSeconds;
    selfCopy3->_startTicks = mach_absolute_time();
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    if (selfCopy3->_promptForRoomHandler && selfCopy3->_promptForRoomHandlerDetailed && gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
    }

    v27 = [v4 count];
    v28 = v27;
    if (selfCopy3->_promptForRoomHandlerDetailed)
    {
      v29 = [MEMORY[0x277CCAA70] indexPathForRow:0 inSection:0];
      if (v28)
      {
        v30 = v45;
        goto LABEL_65;
      }

      v30 = v45;
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
        if (v45)
        {
          goto LABEL_48;
        }
      }

      else if (v45)
      {
LABEL_48:
        v32 = [v46 indexOfObject:v45];
LABEL_64:
        v35 = [MEMORY[0x277CCAA70] indexPathForRow:v32 inSection:1];

        v29 = v35;
        selfCopy3 = selfCopy;
LABEL_65:
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          v40 = v46;
          v41 = v29;
          v39 = v4;
          LogPrintF();
        }

        promptForRoomHandlerDetailed = selfCopy3->_promptForRoomHandlerDetailed;
        v37 = [(HMHome *)v42 name:v39];
        promptForRoomHandlerDetailed[2](promptForRoomHandlerDetailed, v37, v4, v46, v29);

LABEL_79:
        goto LABEL_80;
      }

      v32 = 0;
      goto LABEL_64;
    }

    if (v27)
    {
      v31 = 0;
      v30 = v45;
      goto LABEL_73;
    }

    v30 = v45;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
      if (v45)
      {
        goto LABEL_58;
      }
    }

    else if (v45)
    {
LABEL_58:
      v31 = [v21 indexOfObject:v45];
      goto LABEL_73;
    }

    v31 = 0;
LABEL_73:
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    promptForRoomHandler = selfCopy3->_promptForRoomHandler;
    if (promptForRoomHandler)
    {
      promptForRoomHandler[2](promptForRoomHandler, v21, v31);
    }

    goto LABEL_79;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runHomeKitSelectRoom];
  }

  roomForEntireHome = [(HMHome *)v3 roomForEntireHome];
  homeKitSelectedRoom = self->_homeKitSelectedRoom;
  self->_homeKitSelectedRoom = roomForEntireHome;

  if (!self->_homeKitSelectedRoom)
  {
    v4 = NSErrorWithOSStatusF(4294960569, "HomeKitSetupAutoSelectNoRoom");
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v4 errorLabel:@"HDS-HK-RoomSelection"];
LABEL_80:
  }
}

BOOL __55__HDSDeviceOperationHomeKitSetup__runHomeKitSelectRoom__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 caseInsensitiveCompare:*(a1 + 32)];
  if (!v5)
  {
    *a4 = 1;
  }

  return v5 == 0;
}

- (void)_runHomeKitAddAccessory
{
  v24 = *MEMORY[0x277D85DE8];
  self->_state = 30;
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

    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
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
    pairedPeer = [(HDSDeviceOperationHomeKitSetup *)self pairedPeer];
    identifier = [pairedPeer identifier];

    if (identifier && (objc_opt_respondsToSelector() & 1) != 0)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
      }

      [(HMAccessory *)self->_homeKitAccessory setPeerIdentifier:identifier];
    }

    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitAddAccessory];
    }

    homeKitSelectedHome = self->_homeKitSelectedHome;
    v17 = self->_homeKitAccessory;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke;
    v18[3] = &unk_279714198;
    v18[4] = self;
    [(HMHome *)homeKitSelectedHome addAccessory:v17 completionHandler:v18];
  }
}

void __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = (a1 + 32);
  UpTicksToSecondsF();
  *(*(a1 + 32) + 328) = v3;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_1();
  }

  if (*(*v2 + 8) == 1)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_2();
    }

    [*(*(a1 + 32) + 80) stopSearchingForNewAccessories];
    if (*(a1 + 40))
    {
      v4 = *v2;

      [v4 _completeWithError:? errorLabel:?];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __57__HDSDeviceOperationHomeKitSetup__runHomeKitAddAccessory__block_invoke_2_cold_3();
      }

      *(*v2 + 221) = 1;
      [*v2 _updateAccount];
      v5 = *v2;

      [v5 _run];
    }
  }
}

- (void)_runHomeKitSetupRoom:(BOOL)room
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = self->_homeKitSelectedRoom;
  if (v5)
  {
    v6 = v5;
LABEL_3:
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitSetupRoom:];
    }

    homeKitSelectedRoom = self->_homeKitSelectedRoom;
    self->_homeKitSelectedRoom = v6;
    v8 = v6;

    self->_state = 33;
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
    v10 = [rooms countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
LABEL_10:
      v13 = 0;
      while (1)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(rooms);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        name = [v14 name];
        v16 = [name isEqual:self->_homeKitSelectedRoomName];

        if (v16)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [rooms countByEnumeratingWithState:&v22 objects:v26 count:16];
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
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitSetupRoom:];
      }

      self->_state = 32;
      homeKitSelectedHome = self->_homeKitSelectedHome;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke;
      v19[3] = &unk_2797143C0;
      v19[4] = self;
      roomCopy = room;
      v8 = v8;
      v20 = v8;
      [(HMHome *)homeKitSelectedHome addRoomWithName:v8 completionHandler:v19];
    }

    else
    {
      v18 = NSErrorWithOSStatusF(4294960552, "HomeKitSetupNoRoomName");
      [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v18 errorLabel:@"HDS-HK-NoRoomName"];
    }
  }
}

void __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 256);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2;
  block[3] = &unk_279714398;
  block[4] = v7;
  v12 = v6;
  v13 = v5;
  v15 = *(a1 + 48);
  v14 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 8) == 1)
  {
    v3 = *(a1 + 40);
    if (v3 || (v13 = *(a1 + 48)) == 0)
    {
      if ([v3 code] == 1 && (*(a1 + 64) & 1) == 0)
      {
        v17 = dispatch_time(0, 2000000000);
        v18 = *(*(a1 + 32) + 256);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3;
        block[3] = &unk_2797142D0;
        v19 = *(a1 + 40);
        v20 = *(a1 + 32);
        v30 = v19;
        v31 = v20;
        dispatch_after(v17, v18, block);
      }

      else if ([*(a1 + 40) code] == 1)
      {
        objc_storeStrong((*(a1 + 32) + 120), *(a1 + 48));
        v4 = *(a1 + 32);
        if (!*(v4 + 120))
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v5 = [*(v4 + 272) rooms];
          v6 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
          if (v6)
          {
            v7 = v6;
            v8 = *v26;
            while (2)
            {
              for (i = 0; i != v7; ++i)
              {
                if (*v26 != v8)
                {
                  objc_enumerationMutation(v5);
                }

                v10 = *(*(&v25 + 1) + 8 * i);
                v11 = [v10 name];
                v12 = [v11 isEqualToString:*(a1 + 56)];

                if (v12)
                {
                  objc_storeStrong((*(a1 + 32) + 120), v10);
                  goto LABEL_32;
                }
              }

              v7 = [v5 countByEnumeratingWithState:&v25 objects:v32 count:16];
              if (v7)
              {
                continue;
              }

              break;
            }
          }

LABEL_32:
        }

        v21 = *(a1 + 32);
        if (v21[15])
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2_cold_2();
          }

          *(*(a1 + 32) + 48) = 33;
          [*(a1 + 32) _run];
        }

        else
        {
          v22 = *(a1 + 40);
          if (v22)
          {
            [*(a1 + 32) _completeWithError:v22 errorLabel:@"HDS-HK-AddRoomWithName"];
          }

          else
          {
            v23 = NSErrorWithOSStatusF(4294960556, "HomeKitSetupAddRoomNoRoom");
            [v21 _completeWithError:v23 errorLabel:@"HDS-HK-AddRoomWithName"];
          }
        }
      }

      else
      {
        v15 = *(a1 + 32);
        if (*(a1 + 40))
        {
          v16 = *(a1 + 32);

          [v16 _completeWithError:? errorLabel:?];
        }

        else
        {
          v24 = NSErrorWithOSStatusF(4294960556, "HomeKitSetupAddRoomNoRoom");
          [v15 _completeWithError:? errorLabel:?];
        }
      }
    }

    else
    {
      objc_storeStrong((v1 + 120), v13);
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_2_cold_1();
      }

      *(*(a1 + 32) + 48) = 33;
      v14 = *(a1 + 32);

      [v14 _run];
    }
  }
}

uint64_t __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __55__HDSDeviceOperationHomeKitSetup__runHomeKitSetupRoom___block_invoke_3_cold_1();
  }

  [*(a1 + 40) _runHomeKitSetupRoom:1];
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (void)_runHomeKitAssignRoom
{
  name = [*(self + 120) name];
  LogPrintF();
}

void __55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void *__55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  UpTicksToSecondsF();
  *(*(a1 + 32) + 336) = v3;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2_cold_1();
  }

  result = *v2;
  if (*(*v2 + 8) == 1)
  {
    if (*(a1 + 40))
    {

      return [result _completeWithError:? errorLabel:?];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __55__HDSDeviceOperationHomeKitSetup__runHomeKitAssignRoom__block_invoke_2_cold_2();
      }

      *(*v2 + 48) = 35;
      v5 = *v2;

      return [v5 _run];
    }
  }

  return result;
}

- (void)_runHomeKitAddAppData
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runHomeKitAddAppData];
  }

  homeKitAccessory = self->_homeKitAccessory;
  if (homeKitAccessory)
  {
    applicationData = [(HMAccessory *)homeKitAccessory applicationData];
    appDataSelf = self->_appDataSelf;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke;
    v10[3] = &unk_2797143E8;
    v11 = applicationData;
    v6 = applicationData;
    [(NSDictionary *)appDataSelf enumerateKeysAndObjectsUsingBlock:v10];
    v7 = self->_homeKitAccessory;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_2;
    v9[3] = &unk_279714198;
    v9[4] = self;
    [(HMAccessory *)v7 updateApplicationData:v6 completionHandler:v9];
  }

  else
  {
    v8 = NSErrorWithOSStatusF(4294960596, "No HomeKit accessory to add AppData");
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v8 errorLabel:@"HDS-HK-AppData-NoHKAccessory"];
  }
}

void __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void *__55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v4 = _LogCategory_Initialize(), v2 = v1[5], v4))
        {
          LogPrintF();
          v2 = v1[5];
        }
      }

      v5 = v1[4];

      return [v5 _completeWithError:v2 errorLabel:@"HDS-HK-AddAppData"];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __55__HDSDeviceOperationHomeKitSetup__runHomeKitAddAppData__block_invoke_3_cold_1();
      }

      *(v1[4] + 128) = 1;
      v3 = v1[4];

      return [v3 _run];
    }
  }

  return result;
}

- (BOOL)_runHomeKitConfigureStereoPairAndReturnError:(id *)error
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = self->_stereoCounterpart;
  if (!v5 || (self->_stereoRole & 0xFFFFFFFE) != 2)
  {
    goto LABEL_19;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:];
  }

  if (self->_homeKitAccessory)
  {
    HMMediaSystemBuilderClass = getHMMediaSystemBuilderClass();
    homeKitAccessory = self->_homeKitAccessory;
    v32[0] = v5;
    v32[1] = homeKitAccessory;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    LOBYTE(HMMediaSystemBuilderClass) = [(objc_class *)HMMediaSystemBuilderClass isStereoPairingSupportedForAccessories:v8];

    if (HMMediaSystemBuilderClass)
    {
      v9 = self->_homeKitSelectedHome;
      if (!v9)
      {
        if (error)
        {
          NSErrorWithOSStatusF(4294960591, "StereoPair: No home");
          *error = v13 = 0;
        }

        else
        {
          v13 = 0;
        }

        goto LABEL_65;
      }

      v10 = self->_homeKitSelectedRoomName;
      if (v10)
      {
        builder = self->_builder;
        if (builder || (!_os_feature_enabled_impl() || !self->_sessionID ? (v12 = [objc_alloc(getHMMediaSystemBuilderClass()) initWithHome:v9]) : (v12 = objc_msgSend(objc_alloc(getHMMediaSystemBuilderClass()), "initWithHome:setupSessionIdentifier:", v9, self->_sessionID)), v15 = self->_builder, self->_builder = v12, v15, (builder = self->_builder) != 0))
        {
          [(HMMediaSystemBuilder *)builder setName:v10];
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
            v19 = ;
            v29 = [objc_alloc(getHMMediaSystemComponentClass()) initWithMediaProfile:mediaProfile role:v19];
            if (v29)
            {
              mediaProfile2 = [(HMAccessory *)v5 mediaProfile];
              if (mediaProfile2)
              {
                v27 = v19;
                v20 = self->_stereoRole;
                v21 = getHMMediaSystemRoleClass();
                if (v20 == 2)
                {
                  [(objc_class *)v21 rightRole];
                }

                else
                {
                  [(objc_class *)v21 leftRole];
                }
                v26 = ;
                v22 = [objc_alloc(getHMMediaSystemComponentClass()) initWithMediaProfile:mediaProfile2 role:v26];
                v13 = v22 != 0;
                if (v22)
                {
                  self->_stereoPairStartTicks = mach_absolute_time();
                  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
                  {
                    [HDSDeviceOperationHomeKitSetup _runHomeKitConfigureStereoPairAndReturnError:];
                  }

                  v23 = v29;
                  v31[0] = v29;
                  v31[1] = v22;
                  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
                  [(HMMediaSystemBuilder *)self->_builder setComponents:v24];

                  v25 = self->_builder;
                  v30[0] = MEMORY[0x277D85DD0];
                  v30[1] = 3221225472;
                  v30[2] = __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke;
                  v30[3] = &unk_279714410;
                  v30[4] = self;
                  [(HMMediaSystemBuilder *)v25 commitWithCompletionHandler:v30];
                }

                else
                {
                  v23 = v29;
                  if (error)
                  {
                    *error = NSErrorWithOSStatusF(4294960591, "StereoPair: Create peer component failed");
                  }
                }

                v19 = v27;
              }

              else
              {
                if (error)
                {
                  NSErrorWithOSStatusF(4294960591, "StereoPair: No peer profile");
                  *error = v13 = 0;
                }

                else
                {
                  v13 = 0;
                }

                v23 = v29;
              }
            }

            else
            {
              if (error)
              {
                NSErrorWithOSStatusF(4294960591, "StereoPair: Create self component failed");
                *error = v13 = 0;
              }

              else
              {
                v13 = 0;
              }

              v23 = 0;
            }
          }

          else if (error)
          {
            NSErrorWithOSStatusF(4294960591, "StereoPair: No self profile");
            *error = v13 = 0;
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_64;
        }

        if (error)
        {
          NSErrorWithOSStatusF(4294960591, "StereoPair: Create builder failed");
          goto LABEL_25;
        }
      }

      else if (error)
      {
        NSErrorWithOSStatusF(4294960591, "StereoPair: No room name");
LABEL_25:
        *error = v13 = 0;
LABEL_64:

LABEL_65:
        goto LABEL_20;
      }

      v13 = 0;
      goto LABEL_64;
    }

    if (error)
    {
      NSErrorWithOSStatusF(4294960591, "StereoPair: isStereoPairingSupportedForAccessories == false");
      goto LABEL_18;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if (!error)
  {
    goto LABEL_19;
  }

  NSErrorWithOSStatusF(4294960591, "StereoPair: No homekit accessory");
LABEL_18:
  *error = v13 = 0;
LABEL_20:

  return v13;
}

void __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(*(a1 + 32) + 8) == 1)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 368) = v7;
    v8 = *(*(a1 + 32) + 256);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2;
    block[3] = &unk_279714320;
    v9 = v5;
    v10 = *(a1 + 32);
    v12 = v9;
    v13 = v10;
    v14 = v6;
    dispatch_async(v8, block);
  }
}

void __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v6 = _LogCategory_Initialize(), v2 = *(a1 + 32), v6))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    v7 = *(a1 + 40);

    [v7 _completeWithError:v2 errorLabel:@"HDS-HK-StereoPair"];
    return;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_20;
        }

        v3 = *(a1 + 48);
      }

      v4 = [v3 uniqueIdentifier];
      v9 = [*(*(a1 + 40) + 144) name];
      LogPrintF();
    }

LABEL_20:
    *(*(a1 + 40) + 129) = 1;
    objc_storeStrong((*(a1 + 40) + 136), *(a1 + 48));
    v8 = *(a1 + 40);

    [v8 _run];
    return;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __79__HDSDeviceOperationHomeKitSetup__runHomeKitConfigureStereoPairAndReturnError___block_invoke_2_cold_1();
  }

  v5 = *(a1 + 40);
  v10 = NSErrorWithOSStatusF(4294960591, "Media system not available");
  [v5 _completeWithError:v10 errorLabel:@"HDS-HK-StereoPair-NoMediaSystem"];
}

- (void)_runHomeKitUpdateAppleTVAudioDestination
{
  self->_odeonStartTicks = mach_absolute_time();
  audioDestinationController = [(HMAccessory *)self->_tvAudioInput audioDestinationController];
  if (audioDestinationController)
  {
    v4 = 104;
    if (self->_configuredStereoPair)
    {
      v4 = 136;
    }

    v5 = *(&self->super.isa + v4);
    if (v5)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke;
      v7[3] = &unk_2797141C0;
      v7[4] = self;
      v8 = audioDestinationController;
      [v8 updateDestination:v5 options:2 completionHandler:v7];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 115 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination];
      }

      v6 = NSErrorWithOSStatusF(4294960587, "Audio destination object not available");
      [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v6 errorLabel:@"HDS-HK-NoAudioDestination"];
    }
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 115 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runHomeKitUpdateAppleTVAudioDestination];
    }

    v5 = NSErrorWithOSStatusF(4294960587, "Audio destination controller not available");
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v5 errorLabel:@"HDS-HK-Odeon-NoAudioDestinationController"];
  }
}

void __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  mach_absolute_time();
  UpTicksToSecondsF();
  *(*(a1 + 32) + 496) = v4;
  v5 = *(a1 + 32);
  if (*(v5 + 8) == 1)
  {
    v6 = *(v5 + 256);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2;
    block[3] = &unk_279714320;
    block[4] = v5;
    v8 = v3;
    v9 = *(a1 + 40);
    dispatch_async(v6, block);
  }
}

uint64_t __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  UpTicksToSecondsF();
  *(*(a1 + 32) + 496) = v3;
  v4 = *(a1 + 40);
  if (v4)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v7 = _LogCategory_Initialize(), v4 = *(a1 + 40), v7))
      {
        LogPrintF();
        v4 = *(a1 + 40);
      }
    }

    v8 = *v2;

    return [v8 _completeWithError:v4 errorLabel:@"HDS-HK-Odeon"];
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2_cold_1(a1, a1 + 32);
    }

    *(*v2 + 72) = 1;
    v5 = *v2;

    return [v5 _run];
  }
}

- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group
{
  v33 = *MEMORY[0x277D85DE8];
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

      v20 = [(HDSDeviceOperationHomeKitSetup *)self _homeKitFindSettingsWithKeyPath:pathCopy group:*(*(&v23 + 1) + 8 * v19)];
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
      v10 = [(HDSDeviceOperationHomeKitSetup *)self _homeKitFindSettingsWithKeyPath:@"root.siri.identifyVoice" group:rootGroup];

      if (v10 && ([v10 value], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "BOOLValue"), v11, (v12 & 1) != 0))
      {
        v13 = [owner userListeningHistoryUpdateControlForHome:v4];
        v14 = [v13 mutableCopy];
        if (v14)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _runUpdateUserListeningHistoryStart];
          }

          [v14 addAccessory:v3];
          self->_startTicksForHomeKitSteps = mach_absolute_time();
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke;
          v16[3] = &unk_279714198;
          v16[4] = self;
          [owner updateUserListeningHistoryUpdateControl:v14 forHome:v4 completionHandler:v16];
        }

        else
        {
          v15 = NSErrorWithOSStatusF(4294960596, "ULH create access failed");
          [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v15 errorLabel:@"HDS-HK-ULH-CreateAccessFail"];
        }
      }

      else
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 50 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup _runUpdateUserListeningHistoryStart];
        }

        self->_userListeningHistoryDone = 1;
      }
    }

    else
    {
      settings = NSErrorWithOSStatusF(4294960596, "ULH no owner user");
      [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:settings errorLabel:@"HDS-HK-NotOwner"];
    }
  }

  else
  {
    v4 = NSErrorWithOSStatusF(4294960596, "ULH no accessory");
    [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v4 errorLabel:@"NoAccessory"];
  }
}

void __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  UpTicksToSecondsF();
  *(*(a1 + 32) + 352) = v3;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2_cold_1();
  }

  if (*(*v2 + 8) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v6 = _LogCategory_Initialize(), v4 = *(a1 + 40), v6))
        {
          LogPrintF();
          v4 = *(a1 + 40);
        }
      }

      v7 = *v2;

      [v7 _completeWithError:v4 errorLabel:@"HDS-HK-ULH-UpdateAccessControlFailed"];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __69__HDSDeviceOperationHomeKitSetup__runUpdateUserListeningHistoryStart__block_invoke_2_cold_2();
      }

      *(*v2 + 153) = 1;
      v5 = *v2;

      [v5 _run];
    }
  }
}

- (void)_runPersonalRequestsStart
{
  v34 = *MEMORY[0x277D85DE8];
  if (self->_personalRequestsEnabled)
  {
    v27 = self->_homeKitAccessory;
    if (v27)
    {
      v3 = self->_homeKitSelectedHome;
      owner = [(HMHome *)self->_homeKitSelectedHome owner];
      v5 = owner;
      if (owner)
      {
        v6 = [owner assistantAccessControlForHome:v3];
        v7 = [v6 mutableCopy];
        if (v7)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup _runPersonalRequestsStart];
          }

          [v7 setEnabled:1];
          if (_os_feature_enabled_impl())
          {
            v22 = v7;
            v23 = v6;
            v24 = v5;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v25 = v3;
            obj = [(HMHome *)v3 accessories];
            v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v8)
            {
              v9 = v8;
              v10 = *v30;
              do
              {
                for (i = 0; i != v9; ++i)
                {
                  if (*v30 != v10)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v12 = *(*(&v29 + 1) + 8 * i);
                  category = [v12 category];
                  categoryType = [category categoryType];
                  v15 = getHMAccessoryCategoryTypeHomePod(categoryType);
                  if ([categoryType isEqualToString:v15])
                  {
                    uniqueIdentifier = [v12 uniqueIdentifier];
                    uniqueIdentifier2 = [(HMAccessory *)v27 uniqueIdentifier];
                    v18 = [uniqueIdentifier isEqual:uniqueIdentifier2];

                    if (!v18)
                    {

                      v5 = v24;
                      v3 = v25;
                      v7 = v22;
                      v6 = v23;
                      goto LABEL_31;
                    }
                  }

                  else
                  {
                  }
                }

                v9 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
              }

              while (v9);
            }

            if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
            {
              [HDSDeviceOperationHomeKitSetup _runPersonalRequestsStart];
            }

            v7 = v22;
            [v22 setAllowUnauthenticatedRequests:1];
            v5 = v24;
            v3 = v25;
            v6 = v23;
          }

LABEL_31:
          self->_startTicksForHomeKitSteps = mach_absolute_time();
          [v7 addAccessory:v27];
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke;
          v28[3] = &unk_279714198;
          v28[4] = self;
          [v5 updateAssistantAccessControl:v7 forHome:v3 completionHandler:v28];
        }

        else
        {
          v21 = NSErrorWithOSStatusF(4294960596, "PersonalRequests create access failed");
          [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v21 errorLabel:@"HDS-HK-PR-CreateAccessFail"];
        }
      }

      else
      {
        v20 = NSErrorWithOSStatusF(4294960596, "PersonalRequests no owner user");
        [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v20 errorLabel:@"HDS-HK-NotOwner"];
      }
    }

    else
    {
      v19 = NSErrorWithOSStatusF(4294960596, "PersonalRequests no accessory");
      [(HDSDeviceOperationHomeKitSetup *)self _completeWithError:v19 errorLabel:@"HDS-HK-NoAccessory"];
    }
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup _runPersonalRequestsStart];
    }

    self->_personalRequestsDone = 1;
  }
}

void __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 256);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2(uint64_t a1)
{
  mach_absolute_time();
  v2 = a1 + 32;
  UpTicksToSecondsF();
  *(*(a1 + 32) + 344) = v3;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2_cold_1();
  }

  if (*(*v2 + 8) == 1)
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v6 = _LogCategory_Initialize(), v4 = *(a1 + 40), v6))
        {
          LogPrintF();
          v4 = *(a1 + 40);
        }
      }

      v7 = *v2;

      [v7 _completeWithError:v4 errorLabel:@"HDS-HK-PR-UpdateAccessControlFailed"];
    }

    else
    {
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        __59__HDSDeviceOperationHomeKitSetup__runPersonalRequestsStart__block_invoke_2_cold_2();
      }

      *(*v2 + 152) = 1;
      v5 = *v2;

      [v5 _run];
    }
  }
}

- (void)accessoryBrowser:(id)browser didRemoveNewAccessory:(id)accessory
{
  homeKitBrowser = self->_homeKitBrowser;
  self->_homeKitBrowser = 0;
  MEMORY[0x2821F96F8](self, homeKitBrowser);
}

- (void)homeManagerDidUpdateDataSyncState:(id)state
{
  stateCopy = state;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = stateCopy;
  v6 = stateCopy;
  dispatch_async(dispatchQueue, v7);
}

void *__68__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __68__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateDataSyncState___block_invoke_cold_1(v2);
    }

    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__60__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __60__HDSDeviceOperationHomeKitSetup_homeManagerDidUpdateHomes___block_invoke_cold_1();
    }

    *(v2[4] + 222) = 1;
    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)homeManager:(id)manager didUpdateStatus:(unint64_t)status
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__HDSDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke;
  v5[3] = &unk_2797142F8;
  v5[4] = self;
  v5[5] = status;
  dispatch_async(dispatchQueue, v5);
}

void *__62__HDSDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke(void *result)
{
  if (*(result[4] + 8) == 1)
  {
    v2 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __62__HDSDeviceOperationHomeKitSetup_homeManager_didUpdateStatus___block_invoke_cold_1();
    }

    v3 = v2[4];

    return [v3 _run];
  }

  return result;
}

- (void)addHomePodsToAccessorySync:(id)sync
{
  v26 = *MEMORY[0x277D85DE8];
  syncCopy = sync;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  homePodsAccessorySyncing = self->_homePodsAccessorySyncing;
  self->_homePodsAccessorySyncing = v5;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = syncCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        remoteLoginHandler = [v12 remoteLoginHandler];
        loggedInAccount = [remoteLoginHandler loggedInAccount];

        if (!loggedInAccount)
        {
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            [HDSDeviceOperationHomeKitSetup addHomePodsToAccessorySync:];
          }

          [v12 setDelegate:self];
          v17 = self->_homePodsAccessorySyncing;
          uniqueIdentifier = [v12 uniqueIdentifier];
          uUIDString = [uniqueIdentifier UUIDString];
          [(NSMutableDictionary *)v17 setValue:v12 forKey:uUIDString];
          goto LABEL_14;
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          uniqueIdentifier = [v12 remoteLoginHandler];
          uUIDString = [uniqueIdentifier loggedInAccount];
          v20 = uUIDString;
          LogPrintF();
LABEL_14:
        }

        ++v11;
      }

      while (v9 != v11);
      v18 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      v9 = v18;
    }

    while (v18);
  }

  if ([(NSMutableDictionary *)self->_homePodsAccessorySyncing count])
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup addHomePodsToAccessorySync:];
    }

    [(HDSDeviceOperationHomeKitSetup *)self _timeoutForAccessorySync];
  }

  else
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup addHomePodsToAccessorySync:];
    }

    v19 = self->_homePodsAccessorySyncing;
    self->_homePodsAccessorySyncing = 0;

    self->_accessorySyncDone = 1;
    self->_state = 25;
    [(HDSDeviceOperationHomeKitSetup *)self _run];
  }
}

- (void)performReadinessCheck:(id)check completion:(id)completion
{
  checkCopy = check;
  completionCopy = completion;
  v8 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke;
  block[3] = &unk_279714460;
  v12 = checkCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = checkCopy;
  v10 = completionCopy;
  dispatch_async(v8, block);
}

void __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_cold_1();
  }

  v2 = objc_opt_new();
  if (!*(*(a1 + 32) + 264))
  {
    (*(*(a1 + 48) + 16))();
  }

  v3 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = *(a1 + 40);
  v4 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        dispatch_group_enter(v3);
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_cold_2(v8);
        }

        v9 = *(a1 + 32);
        v10 = *(v9 + 272);
        v11 = *(v9 + 504);
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2;
        v19[3] = &unk_279714438;
        v19[4] = v8;
        v20 = v2;
        v21 = v3;
        [v10 performMediaGroupReadinessCheckForAccessory:v8 timeout:v11 setupSessionIdentifier:v19 completion:10.0];

        ++v7;
      }

      while (v5 != v7);
      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      v5 = v12;
    }

    while (v12);
  }

  v13 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_3;
  block[3] = &unk_279714210;
  v17 = v2;
  v18 = *(a1 + 48);
  v14 = v2;
  dispatch_group_notify(v3, v13, block);
}

void __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a2;
  v5 = a3;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2_cold_1(a1);
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else if (!v3)
  {
    goto LABEL_9;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2_cold_2();
  }

  [*(a1 + 40) addObject:*(a1 + 32)];
LABEL_9:
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_3_cold_1();
  }

  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (id)findStereoCounterpartsWithSupportedVersions:(unint64_t)versions
{
  v60 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = self->_homeKitSelectedRoom;
  if (v4)
  {
    v5 = v4;
LABEL_3:
    v6 = self->_iTunesAccountID;
    selfCopy = self;
    if (v6)
    {
      v7 = v6;
      v47 = SFNormalizeEmailAddress(v6, 1);
    }

    else
    {
      v47 = 0;
    }

    v45 = v5;
    v46 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    accessories = [(HMRoom *)v5 accessories];
    v16 = [accessories countByEnumeratingWithState:&v50 objects:v58 count:16];
    versionsCopy2 = versions;
    if (!v16)
    {
LABEL_82:

      v9 = [v46 copy];
      rooms = v45;
      goto LABEL_83;
    }

    v18 = v16;
    v19 = *v51;
LABEL_17:
    v20 = 0;
    while (1)
    {
      if (*v51 != v19)
      {
        objc_enumerationMutation(accessories);
      }

      v21 = *(*(&v50 + 1) + 8 * v20);
      category = [v21 category];
      categoryType = [category categoryType];
      v24 = getHMAccessoryCategoryTypeHomePod(categoryType);
      v25 = [categoryType isEqual:v24];

      if (!v25)
      {
        goto LABEL_76;
      }

      v26 = [(HDSDeviceOperationHomeKitSetup *)selfCopy _mediaSystemForAccessory:v21];
      if (v26)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
        }

        goto LABEL_75;
      }

      if (([v21 supportedStereoPairVersions] & versionsCopy2) == 0)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
        }

        goto LABEL_75;
      }

      if (([(objc_class *)getHMMediaSystemBuilderClass() supportsMediaSystem:v21]& 1) == 0)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
        }

        goto LABEL_75;
      }

      remoteLoginHandler = [v21 remoteLoginHandler];
      loggedInAccount = [remoteLoginHandler loggedInAccount];
      username = [loggedInAccount username];

      remoteLoginHandler2 = [v21 remoteLoginHandler];

      if (remoteLoginHandler2)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
        }
      }

      else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
      }

      remoteLoginHandler3 = [v21 remoteLoginHandler];
      loggedInAccount2 = [remoteLoginHandler3 loggedInAccount];

      if (loggedInAccount2)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
        }
      }

      else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
      }

      remoteLoginHandler4 = [v21 remoteLoginHandler];
      loggedInAccount3 = [remoteLoginHandler4 loggedInAccount];
      username2 = [loggedInAccount3 username];

      if (username2)
      {
        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:v21];
        }
      }

      else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup findStereoCounterpartsWithSupportedVersions:];
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
      v38 = v47;
      v39 = v38;
      if (v37 == v38)
      {
      }

      else
      {
        if ((v47 == 0) == (v37 != 0))
        {

LABEL_70:
          if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
          {
            v43 = v39;
            v44 = v37;
            LogPrintF();
          }

          goto LABEL_74;
        }

        v40 = [v37 isEqual:v38];

        if ((v40 & 1) == 0)
        {
          goto LABEL_70;
        }
      }

      [v46 addObject:v21];
LABEL_74:

      versionsCopy2 = versions;
LABEL_75:

LABEL_76:
      if (v18 == ++v20)
      {
        v41 = [accessories countByEnumeratingWithState:&v50 objects:v58 count:16];
        v18 = v41;
        if (!v41)
        {
          goto LABEL_82;
        }

        goto LABEL_17;
      }
    }
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  rooms = [(HMHome *)self->_homeKitSelectedHome rooms];
  v9 = [rooms countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (!v9)
  {
    goto LABEL_83;
  }

  v10 = *v55;
LABEL_7:
  v11 = 0;
  while (1)
  {
    if (*v55 != v10)
    {
      objc_enumerationMutation(rooms);
    }

    v12 = *(*(&v54 + 1) + 8 * v11);
    name = [v12 name];
    v14 = [name isEqual:self->_homeKitSelectedRoomName];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [rooms countByEnumeratingWithState:&v54 objects:v59 count:16];
      if (!v9)
      {
LABEL_83:

        goto LABEL_84;
      }

      goto LABEL_7;
    }
  }

  v5 = v12;

  if (v5)
  {
    goto LABEL_3;
  }

  v9 = 0;
LABEL_84:

  return v9;
}

- (id)findTVs
{
  v38 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = self->_homeKitSelectedRoom;
  if (v3)
  {
    v4 = v3;
LABEL_3:
    v26 = v4;
    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
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
                if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
                {
                  [HDSDeviceOperationHomeKitSetup findTVs];
                }
              }

              else
              {
                [v27 addObject:v10];
              }
            }

            else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
            {
              [HDSDeviceOperationHomeKitSetup findTVs];
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

- (id)homePodsInHomeRoom:(id)room roomName:(id)name
{
  v28 = *MEMORY[0x277D85DE8];
  roomCopy = room;
  nameCopy = name;
  v22 = objc_opt_new();
  if (roomCopy && nameCopy)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = roomCopy;
    accessories = [roomCopy accessories];
    v8 = [accessories countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(accessories);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          room = [v12 room];
          name = [room name];

          category = [v12 category];
          categoryType = [category categoryType];

          v17 = [name isEqualToString:nameCopy];
          if (v17)
          {
            v18 = getHMAccessoryCategoryTypeHomePod(v17);
            v19 = [categoryType isEqualToString:v18];

            if (v19)
            {
              [v22 addObject:v12];
            }
          }
        }

        v9 = [accessories countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v9);
    }

    roomCopy = v21;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      [HDSDeviceOperationHomeKitSetup homePodsInHomeRoom:roomName:];
    }
  }

  return v22;
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
  v35 = *MEMORY[0x277D85DE8];
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

  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [v4 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v6;
}

- (void)_removeSimilarRoomNames:(id)names home:(id)home
{
  v75 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  homeCopy = home;
  name = [homeCopy name];
  v8 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name];

  if (v8)
  {
    v9 = [namesCopy count];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v51 = v8;
      v52 = namesCopy;
      do
      {
        v12 = [namesCopy objectAtIndexedSubscript:v11];
        v13 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:v12];

        if ([v13 caseInsensitiveCompare:v8])
        {
          v53 = v10;
          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          actionSets = [homeCopy actionSets];
          v15 = [actionSets countByEnumeratingWithState:&v67 objects:v74 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v68;
LABEL_7:
            v18 = 0;
            while (1)
            {
              if (*v68 != v17)
              {
                objc_enumerationMutation(actionSets);
              }

              v19 = *(*(&v67 + 1) + 8 * v18);
              name2 = [v19 name];
              v21 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name2];

              if (v21)
              {
                if (![v13 caseInsensitiveCompare:v21])
                {
                  break;
                }
              }

              if (v16 == ++v18)
              {
                v16 = [actionSets countByEnumeratingWithState:&v67 objects:v74 count:16];
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
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            serviceGroups = [homeCopy serviceGroups];
            v25 = [serviceGroups countByEnumeratingWithState:&v63 objects:v73 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v64;
LABEL_20:
              v28 = 0;
              while (1)
              {
                if (*v64 != v27)
                {
                  objc_enumerationMutation(serviceGroups);
                }

                v29 = *(*(&v63 + 1) + 8 * v28);
                name4 = [v29 name];
                v31 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name4];

                if (v31)
                {
                  if (![v13 caseInsensitiveCompare:v31])
                  {
                    break;
                  }
                }

                if (v26 == ++v28)
                {
                  v26 = [serviceGroups countByEnumeratingWithState:&v63 objects:v73 count:16];
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
              v61 = 0u;
              v62 = 0u;
              v59 = 0u;
              v60 = 0u;
              triggers = [homeCopy triggers];
              v33 = [triggers countByEnumeratingWithState:&v59 objects:v72 count:16];
              if (v33)
              {
                v34 = v33;
                v35 = *v60;
LABEL_32:
                v36 = 0;
                while (1)
                {
                  if (*v60 != v35)
                  {
                    objc_enumerationMutation(triggers);
                  }

                  v37 = *(*(&v59 + 1) + 8 * v36);
                  name5 = [v37 name];
                  v39 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name5];

                  if (v39)
                  {
                    if (![v13 caseInsensitiveCompare:v39])
                    {
                      break;
                    }
                  }

                  if (v34 == ++v36)
                  {
                    v34 = [triggers countByEnumeratingWithState:&v59 objects:v72 count:16];
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
                v57 = 0u;
                v58 = 0u;
                v55 = 0u;
                v56 = 0u;
                zones = [homeCopy zones];
                v41 = [zones countByEnumeratingWithState:&v55 objects:v71 count:16];
                if (!v41)
                {
LABEL_51:

LABEL_62:
                  ++v11;
                  v8 = v51;
                  namesCopy = v52;
                  v10 = v53;
                  goto LABEL_60;
                }

                v42 = v41;
                v43 = *v56;
LABEL_44:
                v44 = 0;
                while (1)
                {
                  if (*v56 != v43)
                  {
                    objc_enumerationMutation(zones);
                  }

                  v45 = *(*(&v55 + 1) + 8 * v44);
                  name6 = [v45 name];
                  v47 = [(HDSDeviceOperationHomeKitSetup *)self _normalizedString:name6];

                  if (v47)
                  {
                    if (![v13 caseInsensitiveCompare:v47])
                    {
                      break;
                    }
                  }

                  if (v42 == ++v44)
                  {
                    v42 = [zones countByEnumeratingWithState:&v55 objects:v71 count:16];
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

          v8 = v51;
          namesCopy = v52;
          v10 = v53;
        }

        else
        {
          name3 = v8;
          v23 = "Home";
        }

        if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
        {
          v49 = name3;
          v50 = v23;
          v48 = v13;
          LogPrintF();
        }

        [namesCopy removeObjectAtIndex:{v11, v48, v49, v50}];
        --v10;

LABEL_60:
      }

      while (v11 < v10);
    }
  }
}

- (void)_syncAccessoriesInSelectedRoom
{
  homeKitSelectedHome = [self homeKitSelectedHome];
  name = [homeKitSelectedHome name];
  homeKitSelectedRoomName = [self homeKitSelectedRoomName];
  LogPrintF();
}

- (void)_restoreHomeApp
{
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _restoreHomeApp];
  }

  v3 = [objc_alloc(getASDSystemAppRequestClass()) initWithBundleID:@"com.apple.Home"];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke;
  v5[3] = &unk_2797141C0;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [v4 startWithErrorHandler:v5];
}

void __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 256);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2;
  v6[3] = &unk_2797142D0;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2(uint64_t result)
{
  if (*(result + 32))
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2_cold_1(result);
  }
}

- (void)_timeoutForAccessorySync
{
  v3 = dispatch_time(0, 30000000000);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDSDeviceOperationHomeKitSetup__timeoutForAccessorySync__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_after(v3, dispatchQueue, block);
}

void *__58__HDSDeviceOperationHomeKitSetup__timeoutForAccessorySync__block_invoke(void *result)
{
  if (*(result[4] + 192))
  {
    v1 = result;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __58__HDSDeviceOperationHomeKitSetup__timeoutForAccessorySync__block_invoke_cold_1();
    }

    *(v1[4] + 200) = 1;
    v2 = v1[4];
    v3 = *(v2 + 192);
    *(v2 + 192) = 0;

    *(v1[4] + 48) = 25;
    v4 = v1[4];

    return [v4 _run];
  }

  return result;
}

- (void)_updateHomeStats
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  accessories = [(HMHome *)self->_homeKitSelectedHome accessories];
  v4 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(accessories);
        }

        category = [*(*(&v14 + 1) + 8 * i) category];
        categoryType = [category categoryType];
        v10 = getHMAccessoryCategoryTypeHomePod(categoryType);
        v11 = [categoryType isEqual:v10];

        if (v11)
        {
          self->_hasHomePod = 1;
          goto LABEL_11;
        }
      }

      v5 = [accessories countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup _updateHomeStats];
  }

  users = [(HMHome *)self->_homeKitSelectedHome users];
  v13 = [users count];

  self->_hasMultipleUsers = v13 != 0;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_updateAccount
{
  username = [self username];
  LogPrintF();
}

uint64_t __48__HDSDeviceOperationHomeKitSetup__updateAccount__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup > 90)
    {
      goto LABEL_11;
    }

    v7 = v3;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup == -1)
    {
      v3 = _LogCategory_Initialize();
      v4 = v7;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v5 = [*(a1 + 32) username];
    LogPrintF();
LABEL_5:

    v4 = v7;
    goto LABEL_11;
  }

  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30)
  {
    v7 = 0;
    if (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || (v3 = _LogCategory_Initialize(), v4 = 0, v3))
    {
      __48__HDSDeviceOperationHomeKitSetup__updateAccount__block_invoke_cold_1(a1, &v8);
      v5 = v8;
      goto LABEL_5;
    }
  }

LABEL_11:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (id)checkIfExistingHome:(id)home
{
  v18 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  [(HMHomeManager *)self->_homeKitHomeManager homes];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  name2 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (name2)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != name2; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        name = [v9 name];
        if ([name isEqualToString:homeCopy])
        {
        }

        else
        {
          homeLocationStatus = [v9 homeLocationStatus];

          if (homeLocationStatus == 1)
          {
            name2 = [v9 name];
            goto LABEL_13;
          }
        }
      }

      name2 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (name2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return name2;
}

- (void)createStereoPairBuilder:(id)builder
{
  builderCopy = builder;
  if (_os_feature_enabled_impl() && self->_sessionID)
  {
    v4 = [objc_alloc(getHMMediaSystemBuilderClass()) initWithHome:builderCopy setupSessionIdentifier:self->_sessionID];
  }

  else
  {
    v4 = [objc_alloc(getHMMediaSystemBuilderClass()) initWithHome:builderCopy];
  }

  builder = self->_builder;
  self->_builder = v4;
}

- (void)sendPeerAccessoryHintForStereoPair
{
  if (_os_feature_enabled_impl())
  {
    if (self->_builder && self->_stereoCounterpart && (stereoRole = self->_stereoRole, (stereoRole & 0xFFFFFFFE) == 2))
    {
      HMMediaSystemRoleClass = getHMMediaSystemRoleClass();
      if (stereoRole == 2)
      {
        [(objc_class *)HMMediaSystemRoleClass rightRole];
      }

      else
      {
        [(objc_class *)HMMediaSystemRoleClass leftRole];
      }
      v5 = ;
      if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
      {
        [HDSDeviceOperationHomeKitSetup sendPeerAccessoryHintForStereoPair];
      }

      [(HMMediaSystemBuilder *)self->_builder addPeerAccessoryBeforeSetupSession:self->_stereoCounterpart role:v5];
    }

    else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 90 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 60 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    [HDSDeviceOperationHomeKitSetup sendPeerAccessoryHintForStereoPair];
  }
}

- (void)accessory:(id)accessory didUpdateLoggedInAccount:(id)account
{
  accessoryCopy = accessory;
  accountCopy = account;
  if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (self->_homePodsAccessorySyncing)
  {
    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HDSDeviceOperationHomeKitSetup_accessory_didUpdateLoggedInAccount___block_invoke;
    block[3] = &unk_2797142D0;
    block[4] = self;
    v10 = accessoryCopy;
    dispatch_async(dispatchQueue, block);
  }
}

void __69__HDSDeviceOperationHomeKitSetup_accessory_didUpdateLoggedInAccount___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 192);
  v3 = [*(a1 + 40) uniqueIdentifier];
  v4 = [v3 UUIDString];
  v10 = [v2 objectForKeyedSubscript:v4];

  if (v10)
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __69__HDSDeviceOperationHomeKitSetup_accessory_didUpdateLoggedInAccount___block_invoke_cold_1();
    }

    v5 = *(*(a1 + 32) + 192);
    v6 = [v10 uniqueIdentifier];
    v7 = [v6 UUIDString];
    [v5 removeObjectForKey:v7];
  }

  if (![*(*(a1 + 32) + 192) count])
  {
    if (gLogCategory_HDSDeviceOperationHomeKitSetup <= 30 && (gLogCategory_HDSDeviceOperationHomeKitSetup != -1 || _LogCategory_Initialize()))
    {
      __69__HDSDeviceOperationHomeKitSetup_accessory_didUpdateLoggedInAccount___block_invoke_cold_2();
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 192);
    *(v8 + 192) = 0;

    *(*(a1 + 32) + 200) = 1;
    *(*(a1 + 32) + 48) = 25;
    [*(a1 + 32) _run];
  }
}

void __74__HDSDeviceOperationHomeKitSetup__runHomeKitUpdateAppleTVAudioDestination__block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  v2 = [*(*a2 + 240) name];
  LogPrintF();
}

void __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_cold_2(void *a1)
{
  v1 = [a1 uniqueIdentifier];
  LogPrintF();
}

void __67__HDSDeviceOperationHomeKitSetup_performReadinessCheck_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) uniqueIdentifier];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.5(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  v2 = [v1 loggedInAccount];
  LogPrintF();
}

- (void)findStereoCounterpartsWithSupportedVersions:(void *)a1 .cold.7(void *a1)
{
  v1 = [a1 remoteLoginHandler];
  v2 = [v1 loggedInAccount];
  v3 = [v2 username];
  LogPrintF();
}

void __49__HDSDeviceOperationHomeKitSetup__restoreHomeApp__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) bundleID];
  LogPrintF();
}

void __48__HDSDeviceOperationHomeKitSetup__updateAccount__block_invoke_cold_1(uint64_t a1, uint64_t *a2)
{
  *a2 = [*(a1 + 32) username];
  v5 = [*(a1 + 40) loggedInAccount];
  v4 = [v5 username];
  LogPrintF();
}

@end