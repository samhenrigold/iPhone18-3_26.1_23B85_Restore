@interface SFDeviceSetupAppleTVService
- (SFDeviceSetupAppleTVService)init;
- (void)_activate;
- (void)_cleanup;
- (void)_handleAppleIDSetupRequest:(id)request responseHandler:(id)handler;
- (void)_handleBasicConfigRequest:(id)request responseHandler:(id)handler;
- (void)_handleFinishRequest:(id)request responseHandler:(id)handler;
- (void)_handlePreAuthRequest:(id)request responseHandler:(id)handler;
- (void)_handleSessionEnded:(id)ended;
- (void)_handleSessionStarted:(id)started;
- (void)_handleTVLatencyProgressEvent:(unint64_t)event info:(id)info;
- (void)_handleTVLatencyRequest:(id)request responseHandler:(id)handler;
- (void)_invalidate;
- (void)_reportProgress:(unsigned int)progress info:(id)info;
- (void)_sfServiceStart;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFDeviceSetupAppleTVService

- (SFDeviceSetupAppleTVService)init
{
  v6.receiver = self;
  v6.super_class = SFDeviceSetupAppleTVService;
  v2 = [(SFDeviceSetupAppleTVService *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFDeviceSetupAppleTVService *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupAppleTVService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupAppleTVService;
    [(SFDeviceSetupAppleTVService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  [(SFClient *)self->_preventExitForLocaleClient invalidate];
  preventExitForLocaleClient = self->_preventExitForLocaleClient;
  self->_preventExitForLocaleClient = 0;

  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceSetupAppleTVService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupAppleTVService *)self _activate];
    }
  }

  selfCopy->_activateCalled = 1;
  selfCopy->_advertiseFast = CFPrefs_GetInt64() != 0;
  selfCopy->_prefCDPEnabled = CFPrefs_GetInt64() != 0;
  if (_os_feature_enabled_impl())
  {
    selfCopy->_prefAppleIDSetupEnabled = 1;
  }

  selfCopy->_prefTVLatency = CFPrefs_GetInt64() != 0;
  selfCopy->_prefHH2Enabled = CFPrefs_GetInt64() != 0;
  if (!selfCopy->_preventExitForLocaleClient)
  {
    v4 = objc_alloc_init(SFClient);
    preventExitForLocaleClient = selfCopy->_preventExitForLocaleClient;
    selfCopy->_preventExitForLocaleClient = v4;

    [(SFClient *)selfCopy->_preventExitForLocaleClient preventExitForLocaleReason:@"AppleTVSetup"];
  }

  [(SFDeviceSetupAppleTVService *)selfCopy _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceSetupAppleTVService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  selfCopy = self;
  if (!self->_invalidateCalled && gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupAppleTVService *)self _invalidate];
    }
  }

  selfCopy->_invalidateCalled = 1;
  if (selfCopy->_sfSession)
  {
    [(SFDeviceSetupAppleTVService *)selfCopy _handleSessionEnded:?];
  }

  [(SFService *)selfCopy->_sfService invalidate];
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = 0;

  progressHandler = selfCopy->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
  }

  [(SFDeviceSetupAppleTVService *)selfCopy _cleanup];
}

- (void)_reportProgress:(unsigned int)progress info:(id)info
{
  v4 = *&progress;
  infoCopy = info;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    if (v4 > 279)
    {
      if (v4 > 709)
      {
        if (v4 <= 899)
        {
          v6 = infoCopy;
          if (v4 <= 802)
          {
            if (v4 == 710)
            {
              v7 = "AudioPasscodeEnded";
              goto LABEL_215;
            }

            if (v4 == 800)
            {
              v7 = "AuthAccountsStart";
              goto LABEL_215;
            }

            goto LABEL_214;
          }

          if (v4 == 803)
          {
            v7 = "AuthAccountsiCloudProgress";
            goto LABEL_215;
          }

          if (v4 == 804)
          {
            v7 = "AuthAccountsStoreProgress";
            goto LABEL_215;
          }

          if (v4 != 805)
          {
            goto LABEL_214;
          }

          v7 = "AuthAccountsGameCenterProgress";
        }

        else
        {
          v6 = infoCopy;
          if (v4 <= 999)
          {
            switch(v4)
            {
              case 900:
                v7 = "SU-No-SetupScanAttempt";
                break;
              case 901:
                v7 = "SU-No-SetupStatusUpdate";
                break;
              case 902:
                v7 = "SU-No-SetupWipeWifi";
                break;
              case 903:
                v7 = "SU-No-SetupCancelled";
                break;
              case 904:
                v7 = "SU-No-SetupObliterate";
                break;
              case 905:
                v7 = "SU-No-SetupCannotCancel";
                break;
              case 906:
                v7 = "SysDrop AirDrop Event";
                break;
              case 907:
                v7 = "SysDrop Sysdiagnose Event";
                break;
              case 908:
                v7 = "SysDrop Cancel Event";
                break;
              case 909:
                v7 = "File Transfer Progress Event";
                break;
              case 910:
                v7 = "File Transfer Completed Event";
                break;
              case 911:
                v7 = "iOSWiFiSetup";
                break;
              case 912:
                v7 = "HKPrimaryResidentSSIDFetchStart";
                break;
              case 913:
                v7 = "LoggingProfileTransfer";
                break;
              default:
                goto LABEL_214;
            }

            goto LABEL_215;
          }

          if (v4 <= 1099)
          {
            if (v4 == 1000)
            {
              v7 = "SecureIntentStart";
              goto LABEL_215;
            }

            if (v4 == 1001)
            {
              v7 = "SecureIntentFinish";
              goto LABEL_215;
            }

            goto LABEL_214;
          }

          if (v4 == 1100)
          {
            v7 = "OneTimeCodeDetected";
            goto LABEL_215;
          }

          if (v4 == 2000)
          {
            v7 = "DependentStart";
            goto LABEL_215;
          }

          if (v4 != 2001)
          {
            goto LABEL_214;
          }

          v7 = "DependentEnd";
        }
      }

      else if (v4 <= 499)
      {
        v6 = infoCopy;
        if (v4 > 400)
        {
          if (v4 > 419)
          {
            switch(v4)
            {
              case 0x1A4:
                v7 = "FileTransferReady";
                goto LABEL_215;
              case 0x1AE:
                v7 = "eSimExternal2FAStart";
                goto LABEL_215;
              case 0x1AF:
                v7 = "eSimExternal2FAStop";
                goto LABEL_215;
            }

            goto LABEL_214;
          }

          if (v4 == 401)
          {
            v7 = "PINPair";
            goto LABEL_215;
          }

          if (v4 == 410)
          {
            v7 = "MigrateStart";
            goto LABEL_215;
          }

          if (v4 != 411)
          {
            goto LABEL_214;
          }

          v7 = "MigrateStop";
        }

        else
        {
          if (v4 > 299)
          {
            switch(v4)
            {
              case 0x12C:
                v7 = "BackupProgress";
                goto LABEL_215;
              case 0x136:
                v7 = "SyncProgress";
                goto LABEL_215;
              case 0x190:
                v7 = "StopSetup";
                goto LABEL_215;
            }

            goto LABEL_214;
          }

          if (v4 == 280)
          {
            v7 = "TVLCalFailed";
            goto LABEL_215;
          }

          if (v4 == 281)
          {
            v7 = "TVLCalTryAgain";
            goto LABEL_215;
          }

          if (v4 != 282)
          {
            goto LABEL_214;
          }

          v7 = "TVLCalFinal";
        }
      }

      else
      {
        v6 = infoCopy;
        if (v4 <= 554)
        {
          if (v4 > 529)
          {
            if (v4 == 530)
            {
              v7 = "SiriDialogBHome";
              goto LABEL_215;
            }

            if (v4 == 540)
            {
              v7 = "SiriDialogBNews";
              goto LABEL_215;
            }

            if (v4 != 550)
            {
              goto LABEL_214;
            }

            v7 = "SiriDialogBWeather";
          }

          else
          {
            if (v4 == 500)
            {
              v7 = "SiriWelcome";
              goto LABEL_215;
            }

            if (v4 == 510)
            {
              v7 = "SiriDialogA";
              goto LABEL_215;
            }

            if (v4 != 520)
            {
              goto LABEL_214;
            }

            v7 = "SiriDialogBStart";
          }
        }

        else
        {
          if (v4 <= 569)
          {
            switch(v4)
            {
              case 0x22B:
                v7 = "SiriDialogBClock";
                goto LABEL_215;
              case 0x22E:
                v7 = "SiriDialogBMusic";
                goto LABEL_215;
              case 0x230:
                v7 = "SiriDialogCMusic";
                goto LABEL_215;
            }

            goto LABEL_214;
          }

          if (v4 > 599)
          {
            if (v4 == 600)
            {
              v7 = "SiriSkipDemo";
              goto LABEL_215;
            }

            if (v4 == 700)
            {
              v7 = "StopSetupLEDs";
              goto LABEL_215;
            }

            goto LABEL_214;
          }

          if (v4 == 570)
          {
            v7 = "SiriDialogCNews";
            goto LABEL_215;
          }

          if (v4 != 580)
          {
            goto LABEL_214;
          }

          v7 = "SiriDialogCWeather";
        }
      }
    }

    else if (v4 <= 121)
    {
      if (v4 > 69)
      {
        v6 = infoCopy;
        if (v4 > 95)
        {
          if (v4 <= 98)
          {
            if (v4 == 96)
            {
              v7 = "SetupFinished";
            }

            else if (v4 == 97)
            {
              v7 = "SetupResumed";
            }

            else
            {
              v7 = "SetupSuspend";
            }

            goto LABEL_215;
          }

          if (v4 == 99)
          {
            v7 = "SetupPeerSWUpdate";
            goto LABEL_215;
          }

          if (v4 == 100)
          {
            v7 = "Finished";
            goto LABEL_215;
          }

          if (v4 != 120)
          {
            goto LABEL_214;
          }

          v7 = "CheckingiCloud";
        }

        else if (v4 > 91)
        {
          if (v4 == 92)
          {
            v7 = "StepStart";
            goto LABEL_215;
          }

          if (v4 == 94)
          {
            v7 = "StepFinish";
            goto LABEL_215;
          }

          if (v4 != 95)
          {
            goto LABEL_214;
          }

          v7 = "PreFinish";
        }

        else
        {
          if (v4 == 70)
          {
            v7 = "SecurityFinish";
            goto LABEL_215;
          }

          if (v4 == 80)
          {
            v7 = "BasicConfigStart";
            goto LABEL_215;
          }

          if (v4 != 90)
          {
            goto LABEL_214;
          }

          v7 = "BasicConfigFinish";
        }
      }

      else
      {
        v6 = infoCopy;
        if (v4 > 32)
        {
          if (v4 > 49)
          {
            if (v4 == 50)
            {
              v7 = "PreAuthFinish";
              goto LABEL_215;
            }

            if (v4 == 60)
            {
              v7 = "SecurityStart";
              goto LABEL_215;
            }

            if (v4 != 65)
            {
              goto LABEL_214;
            }

            v7 = "SecurityAPCLoopStart";
          }

          else
          {
            if (v4 == 33)
            {
              v7 = "SessionSecured";
              goto LABEL_215;
            }

            if (v4 == 35)
            {
              v7 = "ConnectStart";
              goto LABEL_215;
            }

            if (v4 != 40)
            {
              goto LABEL_214;
            }

            v7 = "PreAuthStart";
          }
        }

        else
        {
          if (v4 > 29)
          {
            if (v4 == 30)
            {
              v7 = "Error";
            }

            else if (v4 == 31)
            {
              v7 = "SessionStarted";
            }

            else
            {
              v7 = "SessionEnded";
            }

            goto LABEL_215;
          }

          if (!v4)
          {
            v7 = "Invalid";
            goto LABEL_215;
          }

          if (v4 == 10)
          {
            v7 = "Start";
            goto LABEL_215;
          }

          if (v4 != 20)
          {
            goto LABEL_214;
          }

          v7 = "Final";
        }
      }
    }

    else if (v4 <= 239)
    {
      v6 = infoCopy;
      if (v4 > 209)
      {
        if (v4 > 229)
        {
          switch(v4)
          {
            case 0xE6:
              v7 = "HomeKitStart";
              goto LABEL_215;
            case 0xEA:
              v7 = "HomeKitSetupStart";
              goto LABEL_215;
            case 0xEC:
              v7 = "CDPSetupStart";
              goto LABEL_215;
          }

          goto LABEL_214;
        }

        if (v4 == 210)
        {
          v7 = "ActivationStart";
          goto LABEL_215;
        }

        if (v4 == 220)
        {
          v7 = "iCloudStart";
          goto LABEL_215;
        }

        if (v4 != 224)
        {
          goto LABEL_214;
        }

        v7 = "AppleIDSetupStart";
      }

      else
      {
        if (v4 > 139)
        {
          switch(v4)
          {
            case 0x8C:
              v7 = "RecognizeVoice";
              goto LABEL_215;
            case 0x96:
              v7 = "SiriForEveryone";
              goto LABEL_215;
            case 0xC8:
              v7 = "WiFiStart";
              goto LABEL_215;
          }

          goto LABEL_214;
        }

        if (v4 == 122)
        {
          v7 = "CheckingAppleMusic";
          goto LABEL_215;
        }

        if (v4 == 124)
        {
          v7 = "CheckingAccount";
          goto LABEL_215;
        }

        if (v4 != 130)
        {
          goto LABEL_214;
        }

        v7 = "WiFiPoweredOff";
      }
    }

    else
    {
      v6 = infoCopy;
      if (v4 > 269)
      {
        if (v4 > 275)
        {
          if (v4 > 277)
          {
            if (v4 == 278)
            {
              v7 = "TVLCalStart";
            }

            else
            {
              v7 = "TVLCalStep";
            }
          }

          else if (v4 == 276)
          {
            v7 = "TVLSTryAgain";
          }

          else
          {
            v7 = "TVLSToneBegan";
          }

          goto LABEL_215;
        }

        switch(v4)
        {
          case 0x10E:
            v7 = "TVLSEstimateStart";
            goto LABEL_215;
          case 0x110:
            v7 = "TVLSEstimateFinal";
            goto LABEL_215;
          case 0x112:
            v7 = "TVLSEstimateFailed";
            goto LABEL_215;
        }

LABEL_214:
        v7 = "?";
        goto LABEL_215;
      }

      if (v4 > 249)
      {
        if (v4 == 250)
        {
          v7 = "ReportSuccess";
          goto LABEL_215;
        }

        if (v4 == 260)
        {
          v7 = "TVLSStart";
          goto LABEL_215;
        }

        if (v4 != 264)
        {
          goto LABEL_214;
        }

        v7 = "TVLSFinish";
      }

      else
      {
        if (v4 == 240)
        {
          v7 = "BuddyStarting";
          goto LABEL_215;
        }

        if (v4 == 241)
        {
          v7 = "BuddyProgress";
          goto LABEL_215;
        }

        if (v4 != 242)
        {
          goto LABEL_214;
        }

        v7 = "BuddyFinished";
      }
    }

LABEL_215:
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVService, "[SFDeviceSetupAppleTVService _reportProgress:info:]", 30, "Progress: %s, %##@\n", v7, v6);
  }

  v8 = _Block_copy(self->_progressHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v4, infoCopy);
  }
}

- (void)_sfServiceStart
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupAppleTVService *)self _sfServiceStart];
    }
  }

  [(SFService *)selfCopy->_sfService invalidate];
  v4 = objc_alloc_init(SFService);
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = v4;

  if (selfCopy->_advertiseFast)
  {
    [(SFService *)selfCopy->_sfService setAdvertiseRate:50];
  }

  [(SFService *)selfCopy->_sfService setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFService *)selfCopy->_sfService setIdentifier:@"com.apple.sharing.AppleTVSetup"];
  [(SFService *)selfCopy->_sfService setLabel:@"AppleTVSetup"];
  [(SFService *)selfCopy->_sfService setNeedsSetup:1];
  [(SFService *)selfCopy->_sfService setDeviceActionType:1];
  [(SFService *)selfCopy->_sfService setPairSetupACL:&unk_1F1D7D308];
  [(SFService *)selfCopy->_sfService setPinType:1];
  [(SFService *)selfCopy->_sfService setSessionFlags:1];
  [(SFService *)selfCopy->_sfService setTouchRemoteEnabled:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__SFDeviceSetupAppleTVService__sfServiceStart__block_invoke;
  v9[3] = &unk_1E788CA68;
  v9[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionStartedHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__SFDeviceSetupAppleTVService__sfServiceStart__block_invoke_2;
  v8[3] = &unk_1E788CA90;
  v8[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionEndedHandler:v8];
  v6 = selfCopy->_sfService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFDeviceSetupAppleTVService__sfServiceStart__block_invoke_3;
  v7[3] = &unk_1E788B238;
  v7[4] = selfCopy;
  [(SFService *)v6 activateWithCompletion:v7];
}

void __46__SFDeviceSetupAppleTVService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 104);
  if (v3)
  {
    if (v5)
    {
      v7 = @"eo";
      v8[0] = v3;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
      (*(v5 + 16))(v5, 30, v6);
    }
  }

  else if (v5)
  {
    (*(v5 + 16))(v5, 10, 0);
  }
}

- (void)_handleSessionStarted:(id)started
{
  v37[1] = *MEMORY[0x1E69E9840];
  startedCopy = started;
  sfSession = self->_sfSession;
  if (sfSession)
  {
    [gLogCategory_SFDeviceSetupAppleTVService _handleSessionStarted:sfSession, startedCopy];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleSessionStarted:startedCopy];
    }

    objc_storeStrong(&self->_sfSession, started);
    v7 = self->_sfSession;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke;
    v35[3] = &unk_1E788B4F8;
    v35[4] = self;
    [(SFSession *)v7 registerRequestID:@"_pa" options:&unk_1F1D7D330 handler:v35];
    v8 = self->_sfSession;
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_2;
    v34[3] = &unk_1E788B4F8;
    v34[4] = self;
    activate = [(SFSession *)v8 registerRequestID:@"_bc" options:&unk_1F1D7D358 handler:v34];
    if (self->_prefCDPEnabled)
    {
      v10 = objc_alloc_init(SFDeviceOperationHandlerCDPSetup);
      cdpSetupHandler = self->_cdpSetupHandler;
      self->_cdpSetupHandler = v10;

      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:startedCopy];
      activate = [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    }

    if (self->_prefAppleIDSetupEnabled)
    {
      v12 = self->_sfSession;
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_3;
      v33[3] = &unk_1E788B4F8;
      v33[4] = self;
      activate = [(SFSession *)v12 registerRequestID:@"_appleIDSetup" options:&unk_1F1D7D380 handler:v33];
    }

    v13 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass_1(activate));
    homeKitSetupHandler = self->_homeKitSetupHandler;
    self->_homeKitSetupHandler = v13;

    v15 = self->_homeKitSetupHandler;
    trSession = [(SFSession *)self->_sfSession trSession];
    [(HMDeviceSetupOperationHandler *)v15 registerMessageHandlersForSession:trSession];

    messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (messageSessionTemplate)
    {
      v18 = [objc_alloc(getTVLAudioLatencyEstimatorClass()) initWithMessageSession:messageSessionTemplate];
      objc_storeStrong(&self->_tvLatencyEstimator, v18);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_4;
      v31[3] = &unk_1E788B598;
      v31[4] = self;
      v32 = v18;
      v19 = v18;
      [v19 setProgressEventHandler:v31];
    }

    v20 = self->_sfSession;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_6;
    v30[3] = &unk_1E788B4F8;
    v30[4] = self;
    [(SFSession *)v20 registerRequestID:@"_tvlS" options:&unk_1F1D7D3A8 handler:v30];
    v21 = objc_alloc_init(SFDeviceOperationHandlerWiFiSetup);
    wifiSetupHandler = self->_wifiSetupHandler;
    self->_wifiSetupHandler = v21;

    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setSfSession:startedCopy];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler activate];
    v23 = objc_alloc_init(SFDeviceOperationHandlerCNJSetup);
    captiveNetworkHandler = self->_captiveNetworkHandler;
    self->_captiveNetworkHandler = v23;

    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setSfSession:startedCopy];
    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler activate];
    v25 = self->_sfSession;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_7;
    v29[3] = &unk_1E788B4F8;
    v29[4] = self;
    [(SFSession *)v25 registerRequestID:@"_finish" options:&unk_1F1D7D3D0 handler:v29];
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      v36 = @"trSession";
      trSession2 = [startedCopy trSession];
      v37[0] = trSession2;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
      progressHandler[2](progressHandler, 31, v28);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
  }
}

void __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_5;
  v10[3] = &unk_1E788B570;
  v7 = *(a1 + 40);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = v5;
  v14 = a2;
  v9 = v5;
  dispatch_async(v6, v10);
}

id *__53__SFDeviceSetupAppleTVService__handleSessionStarted___block_invoke_5(id *result)
{
  if (result[4] == *(result[5] + 7))
  {
    return [result[5] _handleTVLatencyProgressEvent:result[7] info:result[6]];
  }

  return result;
}

- (void)_handleSessionEnded:(id)ended
{
  endedCopy = ended;
  sfSession = self->_sfSession;
  if (sfSession != endedCopy)
  {
    goto LABEL_9;
  }

  v14 = endedCopy;
  if (endedCopy && gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1)
    {
LABEL_5:
      peer = [(SFSession *)sfSession peer];
      LogPrintF(&gLogCategory_SFDeviceSetupAppleTVService, "[SFDeviceSetupAppleTVService _handleSessionEnded:]", 30, "Ending setup session with %@\n", peer);

      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      sfSession = self->_sfSession;
      goto LABEL_5;
    }
  }

LABEL_7:
  [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler invalidate];
  wifiSetupHandler = self->_wifiSetupHandler;
  self->_wifiSetupHandler = 0;

  [(TVLAudioLatencyEstimator *)self->_tvLatencyEstimator invalidate];
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  self->_tvLatencyFinalReported = 0;
  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = 0;

  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler invalidate];
  captiveNetworkHandler = self->_captiveNetworkHandler;
  self->_captiveNetworkHandler = 0;

  v12 = self->_sfSession;
  self->_sfSession = 0;

  [(SFService *)self->_sfService setNeedsSetup:1];
  progressHandler = self->_progressHandler;
  endedCopy = v14;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 32, 0);
    endedCopy = v14;
  }

LABEL_9:
}

- (void)_handlePreAuthRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:requestCopy responseHandler:?];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 40, requestCopy);
  }

  v10 = 16;
  if (!self->_prefCDPEnabled)
  {
    v10 = 0;
  }

  if (self->_prefAppleIDSetupEnabled)
  {
    v10 |= 0x8000uLL;
  }

  if (self->_prefTVLatency)
  {
    v10 |= 0x40uLL;
  }

  if (self->_prefHH2Enabled)
  {
    v10 |= 0x800uLL;
  }

  0x2000 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v10 | 0x2000];
  [v8 setObject:0x2000 forKeyedSubscript:@"ff"];

  LOBYTE(0x2000) = CFDictionaryGetInt64Ranged();
  peerDevice = [(SFSession *)self->_sfSession peerDevice];
  [peerDevice setDeviceClassCode:0x2000];

  Int64 = CFDictionaryGetInt64();
  v14 = Int64 != 0;
  v15 = Int64;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:? responseHandler:?];
  }

  self->_isCLIMode = v14;
  [(SFService *)self->_sfService setIsCLIMode:v15 != 0];
  if (v15)
  {
    CFStringGetTypeID();
    v16 = CFDictionaryGetTypedValue();
    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handlePreAuthRequest:v16 responseHandler:?];
    }

    self->_forcedPasscode = v16;
    [(SFService *)self->_sfService setForcedPin:v16];
  }

  v17 = GestaltCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v17 forKeyedSubscript:@"mdN"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
  }

  v18 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v18 forKeyedSubscript:@"model"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
  }

  v19 = MGCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v8 setObject:v19 forKeyedSubscript:@"osBuild"];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVService > 90)
    {
      goto LABEL_40;
    }

    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize())
    {
      [SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:];
    }
  }

  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handlePreAuthRequest:v8 responseHandler:?];
  }

LABEL_40:
  (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
}

- (void)_handleBasicConfigRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleBasicConfigRequest:requestCopy responseHandler:?];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_opt_new();
  [v9 addEntriesFromDictionary:requestCopy];
  if (self->_isCLIMode)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v9 setObject:v10 forKeyedSubscript:@"isCLIMode"];

    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleBasicConfigRequest:v9 responseHandler:?];
    }
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 80, v9);
  }

  v12 = SFMyAltDSID();
  uTF8String = [v12 UTF8String];

  if (uTF8String)
  {
    v14 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"AltDSID" keyLength:16];
    v15 = v14;
    if (v14)
    {
      [v14 bytes];
      strlen(uTF8String);
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:SipHash()];
      [v8 setObject:v16 forKeyedSubscript:@"adh"];
    }
  }

  CFDateGetTypeID();
  v17 = CFDictionaryGetTypedValue();
  v18 = gLogCategory_SFDeviceSetupAppleTVService;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_SFDeviceSetupAppleTVService, "[SFDeviceSetupAppleTVService _handleBasicConfigRequest:responseHandler:]", 30, "Time: %@, %#m\n", v17, 0);
    }

    v18 = gLogCategory_SFDeviceSetupAppleTVService;
  }

  if (v17)
  {
    if (v18 <= 30 && (v18 != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleBasicConfigRequest:v17 responseHandler:?];
    }

    TMSourceProxBuddy = getTMSourceProxBuddy();
    [v17 timeIntervalSinceReferenceDate];
    softLinkTMSetSourceTime(TMSourceProxBuddy);
    v18 = gLogCategory_SFDeviceSetupAppleTVService;
  }

  if (v18 <= 30 && (v18 != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleBasicConfigRequest:v8 responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
}

- (void)_handleAppleIDSetupRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:requestCopy responseHandler:?];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v9 = objc_opt_new();
  [v9 addEntriesFromDictionary:requestCopy];
  if (self->_isCLIMode)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:1];
    [v9 setObject:v10 forKeyedSubscript:@"isCLIMode"];

    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:v9 responseHandler:?];
    }
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 224, v9);
  }

  messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (messageSessionTemplate)
  {
    v13 = objc_alloc_init(getAISSetupContextClass());
    v14 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E698C218]];
    [v13 setRequiredServiceTypes:v14];

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E698C238], *MEMORY[0x1E698C228], 0}];
    [v13 setDesiredServiceTypes:v15];

    [v13 setShouldBackgroundDesiredServices:1];
    [v13 setLocalRole:1];
    [v13 setRemoteRole:4];
    [v13 setMessageSessionTemplate:messageSessionTemplate];
    v16 = _Block_copy(self->_appleIDSetupReportHandler);
    v17 = objc_alloc_init(getAISSetupControllerClass());
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __74__SFDeviceSetupAppleTVService__handleAppleIDSetupRequest_responseHandler___block_invoke;
    v20[3] = &unk_1E788F7C8;
    v21 = v16;
    v18 = v16;
    [v17 setupWithContext:v13 completionHandler:v20];
    [v8 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"dn"];
    if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:v8 responseHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
  }

  else
  {
    v19 = NSErrorWithOSStatusF(4294960534, "No message session");
    if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:v19 responseHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, v19, 0, 0);
  }
}

void __74__SFDeviceSetupAppleTVService__handleAppleIDSetupRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVService, "[SFDeviceSetupAppleTVService _handleAppleIDSetupRequest:responseHandler:]_block_invoke", 30, "AppleIDSetup complete with report: %@, error: %{error}\n", v7, v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7, v5);
  }
}

- (void)_handleTVLatencyRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleTVLatencyRequest:requestCopy responseHandler:?];
  }

  messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (messageSessionTemplate)
  {
    v8 = self->_tvLatencyEstimator;
    v11 = v8;
    if (v8)
    {
      if (gLogCategory_SFDeviceSetupAppleTVService <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVService != -1 || (v8 = _LogCategory_Initialize(), v8))
        {
          [(SFDeviceSetupAppleTVService *)v8 _handleTVLatencyRequest:v9 responseHandler:v10];
        }
      }

      [v11 activate];
      v12 = [(SFDeviceSetupAppleTVService *)self _reportProgress:260 info:requestCopy];
      if (gLogCategory_SFDeviceSetupAppleTVService <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVService != -1 || (v12 = _LogCategory_Initialize(), v12))
        {
          [(SFDeviceSetupAppleTVService *)v12 _handleTVLatencyRequest:v13 responseHandler:v14];
        }
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 0, MEMORY[0x1E695E0F8]);
    }

    else
    {
      v15 = NSErrorWithOSStatusF(4294960534, "No estimator");
      if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVService _handleTVLatencyRequest:v15 responseHandler:?];
      }

      (*(handlerCopy + 2))(handlerCopy, v15, 0, 0);
    }
  }

  else
  {
    v11 = NSErrorWithOSStatusF(4294960534, "No message session");
    if (gLogCategory_SFDeviceSetupAppleTVService <= 90 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVService _handleTVLatencyRequest:v11 responseHandler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, v11, 0, 0);
  }
}

- (void)_handleTVLatencyProgressEvent:(unint64_t)event info:(id)info
{
  infoCopy = info;
  v7 = infoCopy;
  v10 = infoCopy;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVService != -1 || (infoCopy = _LogCategory_Initialize(), v7 = v10, infoCopy))
    {
      infoCopy = LogPrintF(&gLogCategory_SFDeviceSetupAppleTVService, "[SFDeviceSetupAppleTVService _handleTVLatencyProgressEvent:info:]", 30, "TVLatency progress: %d, %##.32@\n", event, v7);
    }
  }

  if (event <= 1)
  {
    if (event)
    {
      if (event != 1)
      {
        goto LABEL_18;
      }

      selfCopy4 = self;
      v9 = 277;
    }

    else
    {
      selfCopy4 = self;
      v9 = 270;
    }

    goto LABEL_17;
  }

  if (event == 2)
  {
    selfCopy4 = self;
    v9 = 274;
LABEL_17:
    infoCopy = [(SFDeviceSetupAppleTVService *)selfCopy4 _reportProgress:v9 info:v10];
    goto LABEL_18;
  }

  if (event != 3)
  {
    if (event != 4)
    {
      goto LABEL_18;
    }

    selfCopy4 = self;
    v9 = 276;
    goto LABEL_17;
  }

  if (!self->_tvLatencyFinalReported)
  {
    infoCopy = [(SFDeviceSetupAppleTVService *)self _reportProgress:272 info:v10];
    self->_tvLatencyFinalReported = 1;
  }

LABEL_18:

  MEMORY[0x1EEE66C30](infoCopy);
}

- (void)_handleFinishRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleFinishRequest:requestCopy responseHandler:?];
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_tvLatencyEstimator && !self->_tvLatencyFinalReported)
  {
    [(SFDeviceSetupAppleTVService *)self _reportProgress:272 info:MEMORY[0x1E695E0F8]];
    self->_tvLatencyFinalReported = 1;
  }

  if (gLogCategory_SFDeviceSetupAppleTVService <= 30 && (gLogCategory_SFDeviceSetupAppleTVService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVService _handleFinishRequest:v8 responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFDeviceSetupAppleTVService__handleFinishRequest_responseHandler___block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __68__SFDeviceSetupAppleTVService__handleFinishRequest_responseHandler___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 10) & 1) == 0)
  {
    result = *(v1 + 104);
    if (result)
    {
      return (*(result + 16))(result, 96, 0);
    }
  }

  return result;
}

- (void)_handleSessionStarted:(void *)a3 .cold.1(int a1, void **a2, void *a3, void *a4)
{
  if (a1 <= 60)
  {
    if (a1 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      a3 = *a2;
    }

    v7 = [a3 peer];
    v5 = [a4 peer];
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVService, "[SFDeviceSetupAppleTVService _handleSessionStarted:]", 60, "### Ignoring session when already active: existing peer %@, new peer %@\n", v7, v5);
  }
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupAppleTVService, "[SFDeviceSetupAppleTVService _handleSessionStarted:]", 30, "Starting setup session with %@\n", v1);
}

- (uint64_t)_handlePreAuthRequest:(char)a1 responseHandler:.cold.3(char a1)
{
  v1 = "no";
  if (a1)
  {
    v1 = "yes";
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupAppleTVService, "[SFDeviceSetupAppleTVService _handlePreAuthRequest:responseHandler:]", 30, "PreAuthResponse SFMessageKeyIsCLIMode = %s\n", v1);
}

@end