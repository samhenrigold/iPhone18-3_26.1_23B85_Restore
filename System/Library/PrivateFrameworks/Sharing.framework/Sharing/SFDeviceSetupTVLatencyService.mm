@interface SFDeviceSetupTVLatencyService
- (SFDeviceSetupTVLatencyService)init;
- (void)_handleFinishRequest:(id)request responseHandler:(id)handler;
- (void)_handleSessionEnded:(id)ended;
- (void)_handleSessionStarted:(id)started;
- (void)_handleTVLatencyProgressEvent:(unint64_t)event info:(id)info;
- (void)_handleTVLatencyRequest:(id)request responseHandler:(id)handler;
- (void)_invalidate;
- (void)_reportProgress:(unsigned int)progress info:(id)info;
- (void)_sfServiceStart;
- (void)activate;
- (void)invalidate;
- (void)sendSetupAction:(unsigned int)action info:(id)info responseHandler:(id)handler;
@end

@implementation SFDeviceSetupTVLatencyService

- (SFDeviceSetupTVLatencyService)init
{
  v7.receiver = self;
  v7.super_class = SFDeviceSetupTVLatencyService;
  v2 = [(SFDeviceSetupTVLatencyService *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceSetupTVLatencyService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceSetupTVLatencyService_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __41__SFDeviceSetupTVLatencyService_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  v4 = *(v3 + 32);

  return [v4 _sfServiceStart];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFDeviceSetupTVLatencyService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__43__SFDeviceSetupTVLatencyService_invalidate__block_invoke(void *result, uint64_t a2, uint64_t a3)
{
  if ((*(result[4] + 10) & 1) == 0)
  {
    v4 = result;
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
    {
      if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (result = _LogCategory_Initialize(), result))
      {
        __43__SFDeviceSetupTVLatencyService_invalidate__block_invoke_cold_1(result, a2, a3);
      }
    }

    *(v4[4] + 10) = 1;
    v5 = v4[4];

    return [v5 _invalidate];
  }

  return result;
}

- (void)_invalidate
{
  if (!self->_invalidateDone)
  {
    self->_invalidateDone = 1;
    [(SFDeviceSetupTVLatencyService *)self _handleSessionEnded:self->_sfSession];
    [(SFService *)self->_sfService invalidate];
    sfService = self->_sfService;
    self->_sfService = 0;

    [(SFDeviceSetupTVLatencyService *)self _reportProgress:20 info:0];
    progressHandler = self->_progressHandler;
    self->_progressHandler = 0;

    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
    {
      if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        [(SFDeviceSetupTVLatencyService *)v5 _invalidate];
      }
    }
  }
}

- (void)_reportProgress:(unsigned int)progress info:(id)info
{
  v4 = *&progress;
  infoCopy = info;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
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
    LogPrintF(&gLogCategory_SFDeviceSetupTVLatencyService, "[SFDeviceSetupTVLatencyService _reportProgress:info:]", 30, "Progress: %s, %##@\n", v7, v6);
  }

  v8 = _Block_copy(self->_progressHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v4, infoCopy);
  }
}

- (void)sendSetupAction:(unsigned int)action info:(id)info responseHandler:(id)handler
{
  v6 = *&action;
  infoCopy = info;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (self->_sfSession)
  {
    v10 = _Block_copy(handlerCopy);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = &__block_literal_global_55;
    }

    if (infoCopy)
    {
      v12 = [infoCopy mutableCopy];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v13 = v12;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    [v13 setObject:v14 forKeyedSubscript:@"sa"];

    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencyService sendSetupAction:v6 info:v13 responseHandler:?];
    }

    [(SFSession *)self->_sfSession sendRequestID:@"_sa" options:0 request:v13 responseHandler:v11];
  }

  else
  {
    if (!handlerCopy)
    {
      goto LABEL_15;
    }

    v11 = NSErrorWithOSStatusF(4294960551, "No session");
    (v9)[2](v9, v11, 0, 0);
  }

LABEL_15:
}

- (void)_sfServiceStart
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupTVLatencyService *)self _sfServiceStart];
    }
  }

  [(SFService *)selfCopy->_sfService invalidate];
  v4 = objc_alloc_init(SFService);
  sfService = selfCopy->_sfService;
  selfCopy->_sfService = v4;

  [(SFService *)selfCopy->_sfService setAdvertiseRate:50];
  [(SFService *)selfCopy->_sfService setDeviceActionType:25];
  [(SFService *)selfCopy->_sfService setDispatchQueue:selfCopy->_dispatchQueue];
  [(SFService *)selfCopy->_sfService setIdentifier:@"com.apple.sharing.AppleTVSetup"];
  [(SFService *)selfCopy->_sfService setLabel:@"TVLatency"];
  [(SFService *)selfCopy->_sfService setNeedsSetup:1];
  [(SFService *)selfCopy->_sfService setPinType:1];
  [(SFService *)selfCopy->_sfService setSessionFlags:33];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke;
  v9[3] = &unk_1E788CA68;
  v9[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionStartedHandler:v9];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke_2;
  v8[3] = &unk_1E788CA90;
  v8[4] = selfCopy;
  [(SFService *)selfCopy->_sfService setSessionEndedHandler:v8];
  v6 = selfCopy->_sfService;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke_3;
  v7[3] = &unk_1E788B238;
  v7[4] = selfCopy;
  [(SFService *)v6 activateWithCompletion:v7];
}

void __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 90 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      __48__SFDeviceSetupTVLatencyService__sfServiceStart__block_invoke_3_cold_1(v3);
    }

    v4 = *(a1 + 32);
    v6 = @"eo";
    v7[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [v4 _reportProgress:30 info:v5];
  }
}

- (void)_handleSessionStarted:(id)started
{
  startedCopy = started;
  sfSession = self->_sfSession;
  if (sfSession)
  {
    [gLogCategory_SFDeviceSetupTVLatencyService _handleSessionStarted:sfSession, startedCopy];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencyService _handleSessionStarted:startedCopy];
    }

    objc_storeStrong(&self->_sfSession, started);
    [(SFService *)self->_sfService setDeviceActionType:0];
    [(SFService *)self->_sfService setNeedsSetup:0];
    v7 = self->_sfSession;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__SFDeviceSetupTVLatencyService__handleSessionStarted___block_invoke;
    v10[3] = &unk_1E788B4F8;
    v10[4] = self;
    [(SFSession *)v7 registerRequestID:@"_tvlS" options:&unk_1F1D7D5B0 handler:v10];
    v8 = self->_sfSession;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __55__SFDeviceSetupTVLatencyService__handleSessionStarted___block_invoke_2;
    v9[3] = &unk_1E788B4F8;
    v9[4] = self;
    [(SFSession *)v8 registerRequestID:@"_finish" options:&unk_1F1D7D5D8 handler:v9];
    [(SFDeviceSetupTVLatencyService *)self _reportProgress:31 info:0];
  }
}

- (void)_handleSessionEnded:(id)ended
{
  endedCopy = ended;
  sfSession = self->_sfSession;
  if (sfSession != endedCopy)
  {
    goto LABEL_15;
  }

  v11 = endedCopy;
  if (endedCopy && gLogCategory_SFDeviceSetupTVLatencyService <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      sfSession = self->_sfSession;
    }

    peer = [(SFSession *)sfSession peer];
    LogPrintF(&gLogCategory_SFDeviceSetupTVLatencyService, "[SFDeviceSetupTVLatencyService _handleSessionEnded:]", 30, "Ending session with %@\n", peer);
  }

LABEL_7:
  [(SFDeviceSetupTVLatencyService *)self _reportProgress:32 info:0];
  [(TVLAudioLatencyEstimator *)self->_tvLatencyEstimator invalidate];
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  v8 = self->_sfSession;
  self->_sfSession = 0;

  if (!self->_finished)
  {
    [(SFService *)self->_sfService setDeviceActionType:25];
    v9 = [(SFService *)self->_sfService setNeedsSetup:1];
  }

  endedCopy = v11;
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
    {
      if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (v9 = _LogCategory_Initialize(), v9))
      {
        [(SFDeviceSetupTVLatencyService *)v9 _handleSessionEnded:endedCopy, v10];
      }
    }

    [(SFDeviceSetupTVLatencyService *)self _invalidate];
    endedCopy = v11;
  }

LABEL_15:
}

- (void)_handleTVLatencyRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencyService _handleTVLatencyRequest:requestCopy responseHandler:?];
  }

  if (self->_tvLatencyEstimator)
  {
    goto LABEL_10;
  }

  messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
  if (messageSessionTemplate)
  {
    v11 = messageSessionTemplate;
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
    {
      if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (messageSessionTemplate = _LogCategory_Initialize(), messageSessionTemplate))
      {
        [(SFDeviceSetupTVLatencyService *)messageSessionTemplate _handleTVLatencyRequest:v9 responseHandler:v10];
      }
    }

    v12 = [objc_alloc(getTVLAudioLatencyEstimatorClass_1()) initWithMessageSession:v11];
    tvLatencyEstimator = self->_tvLatencyEstimator;
    self->_tvLatencyEstimator = v12;

    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __73__SFDeviceSetupTVLatencyService__handleTVLatencyRequest_responseHandler___block_invoke;
    v19 = &unk_1E788B598;
    selfCopy = self;
    v21 = v12;
    v14 = v12;
    [(TVLAudioLatencyEstimator *)v14 setProgressEventHandler:&v16];
    [(TVLAudioLatencyEstimator *)v14 activate:v16];
    [(SFDeviceSetupTVLatencyService *)self _reportProgress:260 info:requestCopy];

LABEL_10:
    if (gLogCategory_SFDeviceSetupTVLatencyService <= 30 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupTVLatencyService _handleTVLatencyRequest:responseHandler:];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, MEMORY[0x1E695E0F8]);
    goto LABEL_14;
  }

  v15 = NSErrorWithOSStatusF(4294960534, "No message session");
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 90 && (gLogCategory_SFDeviceSetupTVLatencyService != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupTVLatencyService _handleTVLatencyRequest:v15 responseHandler:?];
  }

  (*(handlerCopy + 2))(handlerCopy, v15, 0, 0);

LABEL_14:
}

void __73__SFDeviceSetupTVLatencyService__handleTVLatencyRequest_responseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__SFDeviceSetupTVLatencyService__handleTVLatencyRequest_responseHandler___block_invoke_2;
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

id *__73__SFDeviceSetupTVLatencyService__handleTVLatencyRequest_responseHandler___block_invoke_2(id *result)
{
  if (result[4] == *(result[5] + 4))
  {
    return [result[5] _handleTVLatencyProgressEvent:result[7] info:result[6]];
  }

  return result;
}

- (void)_handleTVLatencyProgressEvent:(unint64_t)event info:(id)info
{
  infoCopy = info;
  v7 = infoCopy;
  v10 = infoCopy;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (infoCopy = _LogCategory_Initialize(), v7 = v10, infoCopy))
    {
      infoCopy = LogPrintF(&gLogCategory_SFDeviceSetupTVLatencyService, "[SFDeviceSetupTVLatencyService _handleTVLatencyProgressEvent:info:]", 30, "TVLatency progress: %d, %##.32@\n", event, v7);
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
    infoCopy = [(SFDeviceSetupTVLatencyService *)selfCopy4 _reportProgress:v9 info:v10];
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

  if (!self->_eventFinalDelivered)
  {
    infoCopy = [(SFDeviceSetupTVLatencyService *)self _reportProgress:272 info:v10];
    self->_eventFinalDelivered = 1;
  }

LABEL_18:

  MEMORY[0x1EEE66C30](infoCopy);
}

- (void)_handleFinishRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      handlerCopy = [SFDeviceSetupTVLatencyService _handleFinishRequest:requestCopy responseHandler:?];
    }
  }

  if (!self->_eventFinalDelivered)
  {
    handlerCopy = [(SFDeviceSetupTVLatencyService *)self _reportProgress:272 info:MEMORY[0x1E695E0F8]];
    self->_eventFinalDelivered = 1;
  }

  if (gLogCategory_SFDeviceSetupTVLatencyService <= 30)
  {
    if (gLogCategory_SFDeviceSetupTVLatencyService != -1 || (handlerCopy = _LogCategory_Initialize(), handlerCopy))
    {
      [(SFDeviceSetupTVLatencyService *)handlerCopy _handleFinishRequest:v7 responseHandler:v8];
    }
  }

  v9[2](v9, 0, 0, MEMORY[0x1E695E0F8]);
  self->_finished = 1;
}

- (uint64_t)sendSetupAction:(unsigned int)a1 info:(uint64_t)a2 responseHandler:.cold.1(unsigned int a1, uint64_t a2)
{
  if (a1 > 0xA)
  {
    v4 = "?";
  }

  else
  {
    v4 = off_1E7890088[a1];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupTVLatencyService, "[SFDeviceSetupTVLatencyService sendSetupAction:info:responseHandler:]", 30, "SetupActionRequest: %s, %##.32@\n", v4, a2, v2, v3);
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
    LogPrintF(&gLogCategory_SFDeviceSetupTVLatencyService, "[SFDeviceSetupTVLatencyService _handleSessionStarted:]", 60, "### Ignoring session when already active: existing peer %@, new peer %@\n", v7, v5);
  }
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF(&gLogCategory_SFDeviceSetupTVLatencyService, "[SFDeviceSetupTVLatencyService _handleSessionStarted:]", 30, "Starting session with %@\n", v1);
}

@end