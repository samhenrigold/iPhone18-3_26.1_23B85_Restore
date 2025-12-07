@interface SFDeviceSetupAppleTVSession
- (BOOL)_shouldSkipHomeKitSetup;
- (BOOL)_verifyiCloudMatch:(unint64_t)match error:(id *)error;
- (SFDeviceSetupAppleTVSession)init;
- (_DWORD)_runTRSessionStart;
- (id)_videoSubscriberAccountData;
- (int)_runAppleIDSetup;
- (int)_runBasicConfig;
- (int)_runCDPSetup;
- (int)_runCaptiveJoin;
- (int)_runCaptivePrompt;
- (int)_runFinish:(BOOL)finish;
- (int)_runHomeKitHH2Check;
- (int)_runHomeKitSetup;
- (int)_runHomeKitUserInput;
- (int)_runPairSetupWithFlags:(unsigned int)flags;
- (int)_runPreAuth;
- (int)_runPreflightHomeKit;
- (int)_runPreflightWiFi;
- (int)_runPreflightiTunes;
- (int)_runSFSessionStart;
- (int)_runTRActivation;
- (int)_runTRAuthentication;
- (int)_runTRCompletion;
- (int)_runTRNetwork;
- (int)_runTRSessionStart;
- (int)_runTRSetupConfiguration;
- (int)_runTVLatencySetup;
- (int)_runWiFiSetup;
- (uint64_t)_runHomeKitSetup;
- (uint64_t)_runTRSessionStart;
- (void)_cleanup;
- (void)_homeKitUpdateiCloudSwitchState:(BOOL)state;
- (void)_reportError:(id)error label:(id)label;
- (void)_reportErrorMetrics:(id)metrics errorLabel:(id)label isFatal:(BOOL)fatal;
- (void)_reportMainMetrics:(id)metrics errorLabel:(id)label userWaitSeconds:(double)seconds;
- (void)_reportProgress:(unsigned int)progress info:(id)info;
- (void)_run;
- (void)_runAppleIDSetupRequest;
- (void)_runAppleIDSetupResponse:(id)response error:(id)error;
- (void)_runBasicConfigRequest;
- (void)_runBasicConfigResponse:(id)response error:(id)error;
- (void)_runPreAuthRequest;
- (void)_runPreAuthResponse:(id)response error:(id)error;
- (void)_runTRSessionStart;
- (void)_runTVLatencySetupEnded:(int)ended;
- (void)_runTVLatencySetupEstimate;
- (void)_runTVLatencySetupProgressEvent:(unint64_t)event info:(id)info;
- (void)_runTVLatencySetupRequest;
- (void)_setNumberOfDevicesOnAccount:(id)account;
- (void)activate;
- (void)captiveConfirmed;
- (void)dealloc;
- (void)homeKitSelectHome:(id)home;
- (void)homeKitSelectRoom:(id)room;
- (void)homeiCloudEnable;
- (void)invalidate;
- (void)pairSetupTryPIN:(id)n;
- (void)switchToManualAuth;
@end

@implementation SFDeviceSetupAppleTVSession

- (SFDeviceSetupAppleTVSession)init
{
  v9.receiver = self;
  v9.super_class = SFDeviceSetupAppleTVSession;
  v2 = [(SFDeviceSetupAppleTVSession *)&v9 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_proxSetupActiveToken = -1;
    v5 = objc_opt_new();
    sessionID = v2->_sessionID;
    v2->_sessionID = v5;

    *&v2->_numberOfAppleTVsOnAccount = -1;
    v7 = v2;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    [SFRemoteAutoFillService dealloc];
    [(SFDeviceSetupAppleTVSession *)v3 _cleanup];
  }

  else
  {
    [(SFDeviceSetupAppleTVSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFDeviceSetupAppleTVSession;
    [(SFDeviceSetupAppleTVSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  v31 = *MEMORY[0x1E69E9840];
  proxSetupActiveToken = self->_proxSetupActiveToken;
  if (proxSetupActiveToken != -1)
  {
    notify_set_state(proxSetupActiveToken, 0);
    notify_post("com.apple.sharing.wha-prox-setup");
    notify_cancel(self->_proxSetupActiveToken);
    self->_proxSetupActiveToken = -1;
  }

  [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
  cdpSetupOperation = self->_cdpSetupOperation;
  self->_cdpSetupOperation = 0;

  [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation invalidate];
  homeKitSetupOperation = self->_homeKitSetupOperation;
  self->_homeKitSetupOperation = 0;

  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = self->_trOperations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        [v12 cancel];
        [v12 setCompletionBlock:0];
      }

      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  [(NSMutableArray *)self->_trOperations removeAllObjects];
  trOperations = self->_trOperations;
  self->_trOperations = 0;

  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
  wifiSetupOperation = self->_wifiSetupOperation;
  self->_wifiSetupOperation = 0;

  [(SFDeviceOperationCNJSetup *)self->_captiveJoin invalidate];
  captiveJoin = self->_captiveJoin;
  self->_captiveJoin = 0;

  [(TRSession *)self->_trSession setDisconnectHandler:0];
  [(TRSession *)self->_trSession disconnect];
  trSession = self->_trSession;
  self->_trSession = 0;

  [(TVLAudioLatencyEstimator *)self->_tvLatencyEstimator invalidate];
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    v21 = self->_progressHandler;
  }

  else
  {
    v21 = 0;
  }

  self->_progressHandler = 0;

  promptForHomeHandler = self->_promptForHomeHandler;
  self->_promptForHomeHandler = 0;

  promptForHomeiCloudHandler = self->_promptForHomeiCloudHandler;
  self->_promptForHomeiCloudHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  promptForRoomHandler = self->_promptForRoomHandler;
  self->_promptForRoomHandler = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDeviceSetupAppleTVSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __39__SFDeviceSetupAppleTVSession_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __39__SFDeviceSetupAppleTVSession_activate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 8) = 1;
  v4 = [(objc_class *)getHMHomeManagerConfigurationClass_0() defaultPrivateConfiguration];
  v5 = [objc_alloc(getHMHomeManagerClass_1()) initWithHomeMangerConfiguration:v4];
  v6 = *(v3 + 32);
  v7 = *(v6 + 192);
  *(v6 + 192) = v5;

  notify_register_check("com.apple.sharing.wha-prox-setup", (*(v3 + 32) + 20));
  notify_set_state(*(*(v3 + 32) + 20), 1uLL);
  notify_post("com.apple.sharing.wha-prox-setup");
  *(*(v3 + 32) + 124) = _os_feature_enabled_impl();
  *(*(v3 + 32) + 96) = CFPrefs_GetInt64() != 0;
  *(*(v3 + 32) + 153) = CFPrefs_GetInt64() != 0;
  *(*(v3 + 32) + 154) = CFPrefs_GetInt64() != 0;
  v8 = *(v3 + 32);
  if (*(v8 + 154) == 1)
  {
    *(v8 + 153) = 1;
  }

  *(*(v3 + 32) + 400) = CFPrefs_GetInt64() != 0;
  *(*(v3 + 32) + 24) = CFPrefs_GetInt64() != 0;
  v9 = *(v3 + 32);
  v10 = v9[67];
  if (v10)
  {
    (*(v10 + 16))(v9[67], 10, 0);
    v9 = *(v3 + 32);
  }

  [v9 _run];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDeviceSetupAppleTVSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__SFDeviceSetupAppleTVSession_invalidate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if ((*(*(a1 + 32) + 16) & 1) == 0 && gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __41__SFDeviceSetupAppleTVSession_invalidate__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 16) = 1;
  [*(v3 + 32) _runFinish:1];
  v4 = *(v3 + 32);

  return [v4 _cleanup];
}

- (void)homeiCloudEnable
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFDeviceSetupAppleTVSession_homeiCloudEnable__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __47__SFDeviceSetupAppleTVSession_homeiCloudEnable__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __47__SFDeviceSetupAppleTVSession_homeiCloudEnable__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 152) = 1;
  v4 = *(v3 + 32);

  return [v4 _run];
}

- (void)homeKitSelectHome:(id)home
{
  homeCopy = home;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFDeviceSetupAppleTVSession_homeKitSelectHome___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)captiveConfirmed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFDeviceSetupAppleTVSession_captiveConfirmed__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __47__SFDeviceSetupAppleTVSession_captiveConfirmed__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      __47__SFDeviceSetupAppleTVSession_captiveConfirmed__block_invoke_cold_1(a1, a2, a3);
    }
  }

  *(*(v3 + 32) + 200) = 1;
  v4 = *(v3 + 32);

  return [v4 _run];
}

- (void)switchToManualAuth
{
  if (self->_pairSetupState == 1)
  {
    self->_pairSetupState = 0;
    [(SFDeviceSetupAppleTVSession *)self _runPairSetupWithFlags:0];
  }
}

- (void)homeKitSelectRoom:(id)room
{
  roomCopy = room;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__SFDeviceSetupAppleTVSession_homeKitSelectRoom___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = roomCopy;
  v6 = roomCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SFDeviceSetupAppleTVSession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_reportError:(id)error label:(id)label
{
  v28[1] = *MEMORY[0x1E69E9840];
  errorCopy = error;
  labelCopy = label;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _reportError:label:]", 60, "### Setup Error: %@, %{error}\n", labelCopy, errorCopy);
  }

  if (self->_isCLIMode && IsAppleInternalBuild())
  {
    FPrintF(*MEMORY[0x1E69E9858], "CmdTVSetupNoUI _reportError called: %@, %{error}\n", labelCopy, errorCopy);
  }

  if (self->_userWaitSeconds == 0.0)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    self->_userWaitSeconds = v10;
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    v27 = @"eo";
    v12 = errorCopy;
    if (!errorCopy)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v25 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v4 = v15;
      v16 = @"?";
      if (v15)
      {
        v16 = v15;
      }

      v26 = v16;
      v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v12 = [v13 errorWithDomain:v14 code:-6700 userInfo:v5];
    }

    v28[0] = v12;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    progressHandler[2](progressHandler, 30, v17);

    if (!errorCopy)
    {
    }
  }

  if (!self->_metricsReported)
  {
    self->_metricsReported = 1;
    [(SFDeviceSetupAppleTVSession *)self _reportMainMetrics:errorCopy errorLabel:labelCopy userWaitSeconds:self->_userWaitSeconds];
    [(SFDeviceSetupAppleTVSession *)self _reportErrorMetrics:errorCopy errorLabel:labelCopy isFatal:[(SFDeviceSetupAppleTVSession *)self _isPreflightError:errorCopy]^ 1];
  }

  v24[0] = labelCopy;
  v23[0] = @"label";
  v23[1] = @"errDomain";
  domain = [errorCopy domain];
  v19 = domain;
  if (domain)
  {
    v20 = domain;
  }

  else
  {
    v20 = @"?";
  }

  v24[1] = v20;
  v23[2] = @"errCode";
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
  v24[2] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:3];
  SFMetricsLog(@"com.apple.sharing.AppleTVSetupResult", v22);
}

- (void)_reportProgress:(unsigned int)progress info:(id)info
{
  v4 = *&progress;
  infoCopy = info;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
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
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _reportProgress:info:]", 30, "Progress: %s, %##@\n", v7, v6);
  }

  v8 = _Block_copy(self->_progressHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v4, infoCopy);
  }
}

- (BOOL)_shouldSkipHomeKitSetup
{
  hasOptedToHH2 = [(HMHomeManager *)self->_homeManager hasOptedToHH2];
  if (hasOptedToHH2)
  {
    LOBYTE(hasOptedToHH2) = (self->_peerFeatureFlags & 0x800) == 0;
  }

  return hasOptedToHH2;
}

- (int)_runPreflightWiFi
{
  selfCopy = self;
  preflightWiFiState = self->_preflightWiFiState;
  if (preflightWiFiState == 4 || preflightWiFiState == 2)
  {
    return selfCopy->_preflightWiFiState;
  }

  if (!preflightWiFiState)
  {
    if (self->_isCLIMode)
    {
      self = IsAppleInternalBuild();
      if (self)
      {
        self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runPreflightWiFi=====\n");
      }
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
      {
        [(SFDeviceSetupAppleTVSession *)self _runPreflightWiFi];
      }
    }

    v8 = WiFiCopyCurrentNetworkInfoEx();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (!v9 && !SFDeviceIsVirtualMachine())
    {
      v13 = NSErrorWithOSStatusF(301000, "NoWiFISSID");
      [(SFDeviceSetupAppleTVSession *)selfCopy _reportError:v13 label:@"PreflightWiFi"];

      v6 = 3;
      selfCopy->_preflightWiFiState = 3;
LABEL_58:

      return v6;
    }

    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (CFDictionaryGetInt64())
    {
      v11 = NSErrorWithOSStatusF(301004, "Enterprise WiFi not supported");
      if (v11)
      {
        selfCopy->_preflightWiFiState = 3;
        [(SFDeviceSetupAppleTVSession *)selfCopy _reportError:v11 label:@"PreflightWiFi"];
      }
    }

    else
    {
      v11 = 0;
    }

    wifiIsCaptive = CFDictionaryGetInt64() != 0;
    selfCopy->_wifiIsCaptive = wifiIsCaptive;
    if (gLogCategory_SFDeviceSetupAppleTVSession > 30)
    {
      goto LABEL_31;
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      wifiIsCaptive = selfCopy->_wifiIsCaptive;
    }

    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runPreflightWiFi]", 30, "Network is captive: %d (blocked: %d)", wifiIsCaptive, 0);
LABEL_31:
    if (Int64Ranged > 4)
    {
      if (Int64Ranged > 6)
      {
        switch(Int64Ranged)
        {
          case 7:
            v14 = "UnshareableEAPShareBlockedByProfile";
            goto LABEL_57;
          case 8:
            v14 = "UnshareableThirdPartySource";
            goto LABEL_57;
          case 9:
            v14 = "NetworkRequiresOneTimePassword";
            goto LABEL_57;
        }

LABEL_56:
        v14 = "?";
        goto LABEL_57;
      }

      if (Int64Ranged != 5)
      {
        v14 = "UnsupportedProfileBased";
        goto LABEL_57;
      }
    }

    else
    {
      if (Int64Ranged > 2)
      {
        if (Int64Ranged == 3)
        {
          v14 = "UnshareableCarrier";
        }

        else
        {
          v14 = "UnshareableUnsupportedEAP";
        }

        goto LABEL_57;
      }

      if (Int64Ranged >= 2)
      {
        if (Int64Ranged == 2)
        {
          v14 = "UnshareableMDM";
LABEL_57:
          v19 = NSErrorWithOSStatusF(301004, "WiFi network not shareable (%s)", v14);

          selfCopy->_preflightWiFiState = 3;
          [(SFDeviceSetupAppleTVSession *)selfCopy _reportError:v19 label:@"PreflightWiFi"];
          v6 = selfCopy->_preflightWiFiState;

          goto LABEL_58;
        }

        goto LABEL_56;
      }
    }

    IsVirtualMachine = SFDeviceIsVirtualMachine();
    if ((IsVirtualMachine & 1) == 0)
    {
      v18 = [v8 objectForKeyedSubscript:@"password"];
      if (v18 || ([v8 objectForKeyedSubscript:@"open"], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v20 = [v8 objectForKeyedSubscript:@"enterprise"];

        if (!v20)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession <= 90)
          {
            if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (IsVirtualMachine = _LogCategory_Initialize(), IsVirtualMachine))
            {
              [(SFDeviceSetupAppleTVSession *)IsVirtualMachine _runPreflightWiFi];
            }
          }

          selfCopy->_preflightWiFiState = 3;
          v21 = NSErrorWithOSStatusF(301041, "NoWiFiPassword");
          [(SFDeviceSetupAppleTVSession *)selfCopy _reportError:v21 label:@"PreflightWiFi"];

          v6 = selfCopy->_preflightWiFiState;
          goto LABEL_58;
        }
      }
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (IsVirtualMachine = _LogCategory_Initialize(), IsVirtualMachine))
      {
        [(SFDeviceSetupAppleTVSession *)IsVirtualMachine _runPreflightWiFi];
      }
    }

    selfCopy->_preflightWiFiState = 4;

    return selfCopy->_preflightWiFiState;
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return selfCopy->_preflightWiFiState;
      }

      preflightWiFiState = selfCopy->_preflightWiFiState;
    }

    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runPreflightWiFi]", 30, "Preflight WiFi hasn't succeeded yet (%d)\n", preflightWiFiState);
  }

  return selfCopy->_preflightWiFiState;
}

- (int)_runPreflightiTunes
{
  selfCopy = self;
  preflightiTunesState = self->_preflightiTunesState;
  if (preflightiTunesState != 4 && preflightiTunesState != 2)
  {
    if (preflightiTunesState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_preflightiTunesState;
          }

          preflightiTunesState = selfCopy->_preflightiTunesState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runPreflightiTunes]", 30, "Preflight iTunes hasn't succeeded yet (%d)\n", preflightiTunesState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runPreflightiTunes=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runPreflightiTunes];
        }
      }

      selfCopy->_preflightiTunesState = 1;
      defaultStore = [(objc_class *)getSSAccountStoreClass_1() defaultStore];
      activeAccount = [defaultStore activeAccount];

      if (activeAccount)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v8 = _LogCategory_Initialize(), v8))
          {
            [(SFDeviceSetupAppleTVSession *)v8 _runPreflightiTunes];
          }
        }

        accountName = [activeAccount accountName];
        iTunesUserID = selfCopy->_iTunesUserID;
        selfCopy->_iTunesUserID = accountName;

        v13 = 4;
      }

      else
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v8 = _LogCategory_Initialize(), v8))
          {
            [(SFDeviceSetupAppleTVSession *)v8 _runPreflightiTunes];
          }
        }

        v13 = 2;
      }

      selfCopy->_preflightiTunesState = v13;
    }
  }

  return selfCopy->_preflightiTunesState;
}

- (int)_runHomeKitHH2Check
{
  result = self->_homeKitHH2CheckState;
  if (!result)
  {
    hasOptedToHH2 = [(HMHomeManager *)self->_homeManager hasOptedToHH2];
    IsVirtualMachine = SFDeviceIsVirtualMachine();
    peerFeatureFlags = self->_peerFeatureFlags;
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      v7 = "no";
      if (hasOptedToHH2)
      {
        v8 = "yes";
      }

      else
      {
        v8 = "no";
      }

      if (IsVirtualMachine)
      {
        v9 = "yes";
      }

      else
      {
        v9 = "no";
      }

      if ((peerFeatureFlags & 0x800) != 0)
      {
        v7 = "yes";
      }

      LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runHomeKitHH2Check]", 30, "_runHomeKitHH2Check: hasOptedToHH2: %s isVM: %s hh2Capable: %s\n", v8, v9, v7);
    }

    if (((hasOptedToHH2 | IsVirtualMachine) & 1) != 0 || (peerFeatureFlags & 0x800) == 0)
    {
      result = 4;
      self->_homeKitHH2CheckState = 4;
    }

    else
    {
      self->_homeKitHH2CheckState = 3;
      v10 = NSErrorWithOSStatusF(301042, "notHH2");
      [(SFDeviceSetupAppleTVSession *)self _reportError:v10 label:@"HomeKitHH2Check"];

      return self->_homeKitHH2CheckState;
    }
  }

  return result;
}

- (int)_runPreflightHomeKit
{
  selfCopy = self;
  preflightHomeKitState = self->_preflightHomeKitState;
  HIDWORD(v6) = preflightHomeKitState;
  LODWORD(v6) = preflightHomeKitState;
  v5 = v6 >> 1;
  if ((v5 - 1) < 2)
  {
    return selfCopy->_preflightHomeKitState;
  }

  if (v5 == 5)
  {
    if (self->_homeiCloudEnabled)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runPreflightHomeKit];
        }
      }

      [(SFDeviceSetupAppleTVSession *)selfCopy _homeKitUpdateiCloudSwitchState:1];
      selfCopy->_preflightHomeKitState = 4;
      return selfCopy->_preflightHomeKitState;
    }

    if (preflightHomeKitState == 2 || preflightHomeKitState == 4)
    {
      return selfCopy->_preflightHomeKitState;
    }

    goto LABEL_23;
  }

  if (v5)
  {
LABEL_23:
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return selfCopy->_preflightHomeKitState;
        }

        preflightHomeKitState = selfCopy->_preflightHomeKitState;
      }

      LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runPreflightHomeKit]", 30, "Preflight iCloud not done yet (%d)\n", preflightHomeKitState);
    }

    return selfCopy->_preflightHomeKitState;
  }

  if (self->_isCLIMode)
  {
    self = IsAppleInternalBuild();
    if (self)
    {
      self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runPreflightHomeKit=====\n");
    }
  }

  v7 = objc_alloc_init(getACAccountStoreClass_4(self));
  aa_primaryAppleAccount = [v7 aa_primaryAppleAccount];
  v11 = aa_primaryAppleAccount;
  if (!aa_primaryAppleAccount)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (aa_primaryAppleAccount = _LogCategory_Initialize(), aa_primaryAppleAccount))
      {
        [(SFDeviceSetupAppleTVSession *)aa_primaryAppleAccount _runPreflightHomeKit];
      }
    }

    v15 = 2;
    selfCopy->_preflightHomeKitState = 2;
    goto LABEL_30;
  }

  v12 = [aa_primaryAppleAccount isEnabledForDataclass:*MEMORY[0x1E6959B10]];
  if (v12)
  {
    goto LABEL_37;
  }

  if (!selfCopy->_promptForHomeiCloudHandler)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        [(SFDeviceSetupAppleTVSession *)v12 _runPreflightHomeKit];
      }
    }

    [(SFDeviceSetupAppleTVSession *)selfCopy _homeKitUpdateiCloudSwitchState:1];
LABEL_37:
    selfCopy->_preflightHomeKitState = 4;

    return selfCopy->_preflightHomeKitState;
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v12 = _LogCategory_Initialize(), v12))
    {
      [(SFDeviceSetupAppleTVSession *)v12 _runPreflightHomeKit];
    }
  }

  selfCopy->_preflightHomeKitState = 10;
  (*(selfCopy->_promptForHomeiCloudHandler + 2))();
  v15 = selfCopy->_preflightHomeKitState;
LABEL_30:

  return v15;
}

- (int)_runSFSessionStart
{
  selfCopy = self;
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_sfSessionState;
          }

          sfSessionState = selfCopy->_sfSessionState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runSFSessionStart]", 30, "SFSession hasn't succeeded yet (%d)\n", sfSessionState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runSFSessionStart=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runSFSessionStart];
        }
      }

      selfCopy->_sfSessionState = 1;
      [(SFSession *)selfCopy->_sfSession invalidate];
      v6 = objc_alloc_init(SFSession);
      sfSession = selfCopy->_sfSession;
      selfCopy->_sfSession = v6;

      [(SFSession *)selfCopy->_sfSession setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFSession *)selfCopy->_sfSession setLabel:@"AppleTVSetup"];
      [(SFSession *)selfCopy->_sfSession setPairSetupACL:&unk_1F1D7D3F8];
      [(SFSession *)selfCopy->_sfSession setPeerDevice:selfCopy->_peerDevice];
      [(SFSession *)selfCopy->_sfSession setServiceIdentifier:@"com.apple.sharing.AppleTVSetup"];
      [(SFSession *)selfCopy->_sfSession setSessionFlags:4097];
      [(SFSession *)selfCopy->_sfSession setTouchRemoteEnabled:1];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke;
      v15[3] = &unk_1E788B238;
      v15[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setErrorHandler:v15];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_2;
      v14[3] = &unk_1E788B198;
      v14[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setInterruptionHandler:v14];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_3;
      v13[3] = &unk_1E788B198;
      v13[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setInvalidationHandler:v13];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_4;
      v12[3] = &unk_1E788CFD0;
      v12[4] = selfCopy;
      [(SFSession *)selfCopy->_sfSession setPromptForPINHandler:v12];
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 35, 0);
      }

      v9 = selfCopy->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_5;
      v11[3] = &unk_1E788B238;
      v11[4] = selfCopy;
      [(SFSession *)v9 activateWithCompletion:v11];
    }
  }

  return selfCopy->_sfSessionState;
}

void __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x1E696ABC0];
  v3 = *MEMORY[0x1E696A768];
  v9 = *MEMORY[0x1E696A578];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  v10[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v2 errorWithDomain:v3 code:-6762 userInfo:v7];
  [v1 _reportError:v8 label:@"SFSessionInterruption"];
}

void __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_3(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0 && *(v1 + 56))
  {
    v2 = MEMORY[0x1E696ABC0];
    v3 = *MEMORY[0x1E696A768];
    v9 = *MEMORY[0x1E696A578];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v5 = v4;
    v6 = @"?";
    if (v4)
    {
      v6 = v4;
    }

    v10[0] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [v2 errorWithDomain:v3 code:-6736 userInfo:v7];
    [v1 _reportError:v8 label:@"SFSessionInvalidation"];
  }
}

uint64_t __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runSFSessionStart]_block_invoke_4", 30, "PromptForPIN: %#{flags}, throttle seconds %d\n", a2, &unk_1A998FA8B, a3);
  }

  v6 = *(a1 + 32);
  if (*(v6 + 497) == 1)
  {
    v7 = IsAppleInternalBuild();
    v6 = *(a1 + 32);
    if (v7)
    {
      if (*(v6 + 584))
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v7 = _LogCategory_Initialize(), v7))
          {
            __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_4_cold_1(v7, v8, v9);
          }
        }

        [*(*(a1 + 32) + 56) pairSetupTryPIN:*(*(a1 + 32) + 584)];
        v6 = *(a1 + 32);
      }
    }
  }

  result = *(v6 + 560);
  if (result)
  {
    v11 = *(result + 16);

    return v11();
  }

  return result;
}

uint64_t __49__SFDeviceSetupAppleTVSession__runSFSessionStart__block_invoke_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    *(v2 + 64) = 3;
    return [*(a1 + 32) _reportError:a2 label:@"SFSessionActivate"];
  }

  else
  {
    *(v2 + 64) = 4;
    return [*(a1 + 32) _run];
  }
}

- (int)_runPreAuth
{
  selfCopy = self;
  preAuthState = self->_preAuthState;
  if (preAuthState != 4 && preAuthState != 2)
  {
    if (preAuthState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_preAuthState;
          }

          preAuthState = selfCopy->_preAuthState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runPreAuth]", 30, "PreAuth hasn't succeeded yet (%d)\n", preAuthState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runPreAuth=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runPreAuth];
        }
      }

      selfCopy->_preAuthState = 1;
      [(SFDeviceSetupAppleTVSession *)selfCopy _runPreAuthRequest];
    }
  }

  return selfCopy->_preAuthState;
}

- (void)_runPreAuthRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  if (firstObject)
  {
    [v3 setObject:firstObject forKeyedSubscript:@"lang"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      [(SFDeviceSetupAppleTVSession *)v6 _runPreAuthRequest];
    }
  }

  preferredLanguages2 = [MEMORY[0x1E695DF58] preferredLanguages];
  v12 = preferredLanguages2;
  if (preferredLanguages2)
  {
    [v3 setObject:preferredLanguages2 forKeyedSubscript:@"langs"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (preferredLanguages2 = _LogCategory_Initialize(), preferredLanguages2))
    {
      [(SFDeviceSetupAppleTVSession *)preferredLanguages2 _runPreAuthRequest];
    }
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    _runPreAuthRequest = [v3 setObject:localeIdentifier forKeyedSubscript:@"locale"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (_runPreAuthRequest = _LogCategory_Initialize(), _runPreAuthRequest))
    {
      _runPreAuthRequest = [(SFDeviceSetupAppleTVSession *)_runPreAuthRequest _runPreAuthRequest];
    }
  }

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:softLink_AXSVoiceOverTouchEnabled(_runPreAuthRequest)];
  [v3 setObject:v18 forKeyedSubscript:@"voe"];

  v19 = MEMORY[0x1E696AD98];
  softLink_AXSVoiceOverTouchSpeakingRate();
  v20 = [v19 numberWithFloat:?];
  [v3 setObject:v20 forKeyedSubscript:@"vosr"];

  sharedInstance = [(objc_class *)getAXSettingsClass() sharedInstance];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(sharedInstance, "touchAccommodationsHoldDurationEnabled")}];
  [v3 setObject:v22 forKeyedSubscript:@"taHE"];

  v23 = MEMORY[0x1E696AD98];
  [sharedInstance touchAccommodationsHoldDuration];
  v24 = [v23 numberWithDouble:?];
  [v3 setObject:v24 forKeyedSubscript:@"taHD"];

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(sharedInstance, "touchAccommodationsIgnoreRepeatEnabled")}];
  [v3 setObject:v25 forKeyedSubscript:@"taIRE"];

  v26 = MEMORY[0x1E696AD98];
  [sharedInstance touchAccommodationsIgnoreRepeatDuration];
  v27 = [v26 numberWithDouble:?];
  [v3 setObject:v27 forKeyedSubscript:@"taIRD"];

  v28 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(sharedInstance, "touchAccommodationsTapActivationMethod")}];
  [v3 setObject:v28 forKeyedSubscript:@"taTAM"];

  v29 = MEMORY[0x1E696AD98];
  [sharedInstance touchAccommodationsTapActivationTimeout];
  v30 = [v29 numberWithDouble:?];
  [v3 setObject:v30 forKeyedSubscript:@"taTAT"];

  v31 = MEMORY[0x1E696AD98];
  [sharedInstance voiceOverDoubleTapInterval];
  v32 = [v31 numberWithDouble:?];
  [v3 setObject:v32 forKeyedSubscript:@"vodti"];

  if (self->_isCLIMode)
  {
    v33 = IsAppleInternalBuild();
    if (v33)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [(SFDeviceSetupAppleTVSession *)v3 _runPreAuthRequest];
      }

      [v3 setObject:self->_forcedPasscode forKeyedSubscript:@"forcedPin"];
      v33 = [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isCLIMode"];
    }
  }

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{SFDeviceClassCodeGet(v33, v34)}];
  [v3 setObject:v35 forKeyedSubscript:@"dclass"];

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupAppleTVSession *)v3 _runPreAuthRequest];
  }

  sfSession = self->_sfSession;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __49__SFDeviceSetupAppleTVSession__runPreAuthRequest__block_invoke;
  v37[3] = &unk_1E788B548;
  v37[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_pa" options:&unk_1F1D7D420 request:v3 responseHandler:v37];
}

- (void)_runPreAuthResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  if (!responseCopy || errorCopy)
  {
    self->_preAuthState = 3;
    if (errorCopy)
    {
      [(SFDeviceSetupAppleTVSession *)self _reportError:errorCopy label:@"PreAuth"];
    }

    else
    {
      v10 = NSErrorWithOSStatusF(4294960596, "No response, no error?");
      [(SFDeviceSetupAppleTVSession *)self _reportError:v10 label:@"PreAuth"];
    }
  }

  else
  {
    v13 = 0;
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthResponse:responseCopy error:?];
    }

    self->_peerFeatureFlags = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      objc_storeStrong(&self->_appleTVModelNumber, v9);
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthResponse:? error:?];
    }

    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();

    if (v11)
    {
      objc_storeStrong(&self->_appleTVModel, v11);
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthResponse:? error:?];
    }

    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();

    if (v12)
    {
      objc_storeStrong(&self->_appleTVBuild, v12);
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runPreAuthResponse:? error:?];
    }

    self->_preAuthState = 4;
    [(SFDeviceSetupAppleTVSession *)self _run];
  }
}

- (int)_runPairSetupWithFlags:(unsigned int)flags
{
  pairSetupState = self->_pairSetupState;
  if (pairSetupState != 4 && pairSetupState != 2)
  {
    if (pairSetupState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return self->_pairSetupState;
          }

          pairSetupState = self->_pairSetupState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runPairSetupWithFlags:]", 30, "PairSetup hasn't succeeded yet (%d)\n", pairSetupState);
      }
    }

    else
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runPairSetup=====\n");
      }

      self->_pairSetupState = 1;
      v7 = mach_absolute_time();
      if (self->_isCLIMode && self->_forcedPasscode)
      {
        [(SFSession *)self->_sfSession setIsCLIMode:1];
        [(SFSession *)self->_sfSession setForcedPasscode:self->_forcedPasscode];
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 60, 0);
      }

      sfSession = self->_sfSession;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __54__SFDeviceSetupAppleTVSession__runPairSetupWithFlags___block_invoke;
      v11[3] = &unk_1E788F738;
      v11[4] = self;
      v11[5] = v7;
      [(SFSession *)sfSession pairSetupWithFlags:flags | 0x80008 completion:v11];
    }
  }

  return self->_pairSetupState;
}

void __54__SFDeviceSetupAppleTVSession__runPairSetupWithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 16) & 1) == 0)
  {
    v10 = v3;
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 88) = v6;
    v7 = v10;
    if (v10)
    {
      *(*(a1 + 32) + 80) = 3;
      [*(a1 + 32) _reportError:v10 label:@"PairSetup"];
    }

    else
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v7 = _LogCategory_Initialize(), v7))
        {
          __54__SFDeviceSetupAppleTVSession__runPairSetupWithFlags___block_invoke_cold_1(v7, v4, v5);
        }
      }

      *(*(a1 + 32) + 80) = 4;
      v8 = *(a1 + 32);
      v9 = v8[67];
      if (v9)
      {
        (*(v9 + 16))(v8[67], 70, 0);
        v8 = *(a1 + 32);
      }

      [v8 _run];
    }

    v3 = v10;
  }
}

- (int)_runHomeKitUserInput
{
  selfCopy = self;
  homeKitUserInputState = self->_homeKitUserInputState;
  if (homeKitUserInputState != 4)
  {
    if (homeKitUserInputState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_homeKitUserInputState;
          }

          homeKitUserInputState = selfCopy->_homeKitUserInputState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runHomeKitUserInput]", 30, "HomeKitUserInput hasn't succeeded yet (%d)\n", homeKitUserInputState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runHomeKitUserInput=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runHomeKitUserInput];
        }
      }

      selfCopy->_homeKitUserInputState = 1;
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 230, 0);
      }

      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation invalidate];
      v6 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      homeKitSetupOperation = selfCopy->_homeKitSetupOperation;
      selfCopy->_homeKitSetupOperation = v6;

      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setUserInteractive:1];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setPauseAfterUserInput:1];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setTimeoutInSeconds:120.0];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setIsCLIMode:selfCopy->_isCLIMode];
      if (selfCopy->_promptForHomeHandler)
      {
        [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setPromptForHomeHandler:?];
      }

      if (selfCopy->_promptForRoomHandler)
      {
        [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setPromptForRoomHandler:?];
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke;
      v10[3] = &unk_1E788B198;
      v10[4] = selfCopy;
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setPauseHandler:v10];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke_2;
      v9[3] = &unk_1E788B238;
      v9[4] = selfCopy;
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation setCompletionHandler:v9];
      [(SFDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation activate];
    }
  }

  return selfCopy->_homeKitUserInputState;
}

uint64_t __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 160) homeKitSelectedRoomName];
  v3 = *(a1 + 32);
  v4 = *(v3 + 184);
  *(v3 + 184) = v2;

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke_cold_1(v5, v6, v7);
    }
  }

  *(*(a1 + 32) + 168) = 4;
  v8 = *(a1 + 32);

  return [v8 _run];
}

void __51__SFDeviceSetupAppleTVSession__runHomeKitUserInput__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (*(v4 + 160))
  {
    if (!v3)
    {
      v3 = NSErrorWithOSStatusF(4294960560, "HomeKitUserInput Premature Success");
      v4 = *(a1 + 32);
    }

    v5 = v3;
    *(v4 + 168) = 3;
    [*(a1 + 32) _reportError:v3 label:@"HomeKitUserInput"];
    v3 = v5;
  }
}

- (int)_runBasicConfig
{
  selfCopy = self;
  basicConfigState = self->_basicConfigState;
  if (basicConfigState != 4 && basicConfigState != 2)
  {
    if (basicConfigState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_basicConfigState;
          }

          basicConfigState = selfCopy->_basicConfigState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runBasicConfig]", 30, "BasicConfig hasn't succeeded yet (%d)\n", basicConfigState);
      }
    }

    else
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runBasicConfig];
        }
      }

      selfCopy->_basicConfigState = 1;
      selfCopy->_startUserWaitTicks = mach_absolute_time();
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 80, 0);
      }

      [(SFDeviceSetupAppleTVSession *)selfCopy _runBasicConfigRequest];
    }
  }

  return selfCopy->_basicConfigState;
}

- (void)_runBasicConfigRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = SFDeviceSetupDeviceInfo();
  v65 = v4;
  if (v4)
  {
    [v3 addEntriesFromDictionary:v4];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v4 = _LogCategory_Initialize(), v4))
    {
      [(SFDeviceSetupAppleTVSession *)v4 _runBasicConfigRequest];
    }
  }

  mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
  v8 = [mEMORY[0x1E69ADFB8] effectiveBoolValueForSetting:*MEMORY[0x1E69ADE68]] == 1;

  v9 = [MEMORY[0x1E696AD98] numberWithBool:v8];
  [v3 setObject:v9 forKeyedSubscript:@"eca"];

  mEMORY[0x1E69ADFB8]2 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v11 = [mEMORY[0x1E69ADFB8]2 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE40]];

  if ((v11 - 1) <= 1)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:v11 == 1];
    [v3 setObject:v12 forKeyedSubscript:@"dsub"];
  }

  mEMORY[0x1E69ADFB8]3 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v14 = [mEMORY[0x1E69ADFB8]3 effectiveBoolValueForSetting:*MEMORY[0x1E69ADD88]];

  if ((v14 - 1) <= 1)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:v14 == 1];
    [v3 setObject:v15 forKeyedSubscript:@"aasub"];
  }

  v16 = SFDeviceSetupHomeKitInfo(self->_homeManager);
  _shouldSkipHomeKitSetup = [(SFDeviceSetupAppleTVSession *)self _shouldSkipHomeKitSetup];
  if (_shouldSkipHomeKitSetup)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (_shouldSkipHomeKitSetup = _LogCategory_Initialize(), _shouldSkipHomeKitSetup))
      {
        [(SFDeviceSetupAppleTVSession *)_shouldSkipHomeKitSetup _runBasicConfigRequest];
      }
    }

    v20 = [v16 objectForKeyedSubscript:@"hkcuis"];
    v21 = [v20 count];
    if (v21)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v21 = _LogCategory_Initialize(), v21))
        {
          [(SFDeviceSetupAppleTVSession *)v21 _runBasicConfigRequest];
        }
      }

      v24 = [MEMORY[0x1E695DF20] dictionaryWithObject:v20 forKey:@"hkcuis"];
      [v3 setObject:v24 forKeyedSubscript:@"hkin"];
    }
  }

  else if (v16)
  {
    [v3 setObject:v16 forKeyedSubscript:@"hkin"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (_shouldSkipHomeKitSetup = _LogCategory_Initialize(), _shouldSkipHomeKitSetup))
    {
      [(SFDeviceSetupAppleTVSession *)_shouldSkipHomeKitSetup _runBasicConfigRequest];
    }
  }

  v25 = [MEMORY[0x1E696AD98] numberWithBool:{-[objc_class locationServicesEnabled](getCLLocationManagerClass_0(), "locationServicesEnabled")}];
  [v3 setObject:v25 forKeyedSubscript:@"lsEn"];

  v26 = SFDeviceSetupAppleTVLocationAuthorizationInfo();
  v64 = v26;
  if (v26)
  {
    [v3 setObject:v26 forKeyedSubscript:@"lsAI"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v26 = _LogCategory_Initialize(), v26))
    {
      [(SFDeviceSetupAppleTVSession *)v26 _runBasicConfigRequest];
    }
  }

  preferredLanguages = [MEMORY[0x1E695DF58] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  if (firstObject)
  {
    [v3 setObject:firstObject forKeyedSubscript:@"lang"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v31 = _LogCategory_Initialize(), v31))
    {
      [(SFDeviceSetupAppleTVSession *)v31 _runBasicConfigRequest];
    }
  }

  if (_os_feature_enabled_impl())
  {
    preferredLanguages2 = [MEMORY[0x1E695DF58] preferredLanguages];
    v37 = preferredLanguages2;
    if (preferredLanguages2)
    {
      [v3 setObject:preferredLanguages2 forKeyedSubscript:@"langs"];
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (preferredLanguages2 = _LogCategory_Initialize(), preferredLanguages2))
      {
        [(SFDeviceSetupAppleTVSession *)preferredLanguages2 _runBasicConfigRequest];
      }
    }

    v67 = 0;
    CFArrayGetTypeID();
    v38 = CFPrefs_CopyTypedValue();
    v39 = v38;
    if (v38)
    {
      [v3 setObject:v38 forKeyedSubscript:@"kbs"];
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
    }
  }

  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    [v3 setObject:localeIdentifier forKeyedSubscript:@"locale"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
  v43 = [currentLocale2 objectForKey:*MEMORY[0x1E695D9F0]];

  if (v43)
  {
    _runBasicConfigRequest = [v3 setObject:v43 forKeyedSubscript:@"tempUnit"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (_runBasicConfigRequest = _LogCategory_Initialize(), _runBasicConfigRequest))
    {
      _runBasicConfigRequest = [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
    }
  }

  OBBundleClass = getOBBundleClass(_runBasicConfigRequest);
  v46 = [OBBundleClass bundleWithIdentifier:getOBPrivacyPrivacyPaneIdentifier()];
  privacyFlow = [v46 privacyFlow];
  contentVersion = [privacyFlow contentVersion];

  if (contentVersion)
  {
    v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:contentVersion];
    [v3 setObject:v49 forKeyedSubscript:@"pfcv"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  sharedPreferences = [(objc_class *)getAFPreferencesClass_0() sharedPreferences];
  v51 = sharedPreferences;
  if (sharedPreferences)
  {
    v52 = SFDeviceSetupSiriInfo(sharedPreferences);
    if (v52)
    {
      [v3 addEntriesFromDictionary:v52];
    }

    else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
    }
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
  }

  date = [MEMORY[0x1E695DF00] date];
  [v3 setObject:date forKeyedSubscript:@"time"];

  v54 = *MEMORY[0x1E695E890];
  if (CFPreferencesGetAppBooleanValue(@"AppleICUForce12HourTime", *MEMORY[0x1E695E890], 0))
  {
    v55 = 12;
  }

  else if (CFPreferencesGetAppBooleanValue(@"AppleICUForce24HourTime", v54, 0))
  {
    v55 = 24;
  }

  else
  {
    v55 = 0;
  }

  v56 = [MEMORY[0x1E696AD98] numberWithInteger:v55];
  [v3 setObject:v56 forKeyedSubscript:@"timeCycle"];

  v57 = [MEMORY[0x1E696AD98] numberWithBool:softLinkTMIsAutomaticTimeEnabled() != 0];
  [v3 setObject:v57 forKeyedSubscript:@"timeAuto"];

  systemTimeZone = [MEMORY[0x1E695DFE8] systemTimeZone];
  name = [systemTimeZone name];

  if (name)
  {
    _runBasicConfigRequest2 = [v3 setObject:name forKeyedSubscript:@"tz"];
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (_runBasicConfigRequest2 = _LogCategory_Initialize(), _runBasicConfigRequest2))
    {
      _runBasicConfigRequest2 = [SFDeviceSetupAppleTVSession _runBasicConfigRequest];
    }
  }

  v61 = [MEMORY[0x1E696AD98] numberWithBool:softLinkTMIsAutomaticTimeZoneEnabled(_runBasicConfigRequest2) != 0];
  [v3 setObject:v61 forKeyedSubscript:@"tzAuto"];

  _videoSubscriberAccountData = [(SFDeviceSetupAppleTVSession *)self _videoSubscriberAccountData];
  if (_videoSubscriberAccountData)
  {
    [v3 setObject:_videoSubscriberAccountData forKeyedSubscript:@"vsad"];
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupAppleTVSession *)v3 _runBasicConfigRequest];
  }

  sfSession = self->_sfSession;
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __53__SFDeviceSetupAppleTVSession__runBasicConfigRequest__block_invoke;
  v66[3] = &unk_1E788B548;
  v66[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_bc" options:0 request:v3 responseHandler:v66];
}

- (void)_runBasicConfigResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  v12 = 0;
  if (responseCopy && !errorCopy)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigResponse:responseCopy error:?];
    }

    v11 = 0;
    v9 = [(SFDeviceSetupAppleTVSession *)self _verifyiCloudMatch:CFDictionaryGetInt64() error:&v11];
    v10 = v11;
    self->_iCloudAccountMatches = v9;
    if (v10 && gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runBasicConfigResponse:v10 error:?];
    }

    self->_basicConfigState = 4;
    [(SFDeviceSetupAppleTVSession *)self _run];
    goto LABEL_14;
  }

  self->_basicConfigState = 3;
  if (!errorCopy)
  {
    v10 = NSErrorWithOSStatusF(4294960596, "No response, no error?");
    [(SFDeviceSetupAppleTVSession *)self _reportError:v10 label:@"BasicConfig"];
LABEL_14:

    goto LABEL_15;
  }

  [(SFDeviceSetupAppleTVSession *)self _reportError:errorCopy label:@"BasicConfig"];
LABEL_15:
}

- (int)_runTRSessionStart
{
  selfCopy = self;
  v39[1] = *MEMORY[0x1E69E9840];
  if (self->_isCLIMode)
  {
    self = IsAppleInternalBuild();
    if (self)
    {
      self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runTRSessionStart=====\n");
    }
  }

  trSessionState = selfCopy->_trSessionState;
  if (trSessionState != 4 && trSessionState != 2)
  {
    if (!trSessionState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runTRSessionStart];
        }
      }

      selfCopy->_trSessionState = 1;
      v6 = objc_alloc_init(getTROperationQueueClass_2());
      trOperationQueue = selfCopy->_trOperationQueue;
      selfCopy->_trOperationQueue = v6;

      if (selfCopy->_trOperationQueue)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        trOperations = selfCopy->_trOperations;
        selfCopy->_trOperations = v8;

        if (selfCopy->_useSFSession || selfCopy->_isCLIMode)
        {
          trSession = [(SFSession *)selfCopy->_sfSession trSession];
          trSession = selfCopy->_trSession;
          selfCopy->_trSession = trSession;

          v14 = gLogCategory_SFDeviceSetupAppleTVSession;
          if (selfCopy->_trSession)
          {
            if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
            {
              if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v14 = _LogCategory_Initialize(), v14))
              {
                [(SFDeviceSetupAppleTVSession *)v14 _runTRSessionStart];
              }
            }

            selfCopy->_trSessionState = 4;
            return selfCopy->_trSessionState;
          }

          [gLogCategory_SFDeviceSetupAppleTVSession _runTRSessionStart];
          goto LABEL_35;
        }

        v15 = selfCopy->_peerDevice;
        if (v15)
        {
          v16 = v15;
          v19 = [objc_alloc(getTRNearbyDeviceClass()) initWithRepresentedDevice:v15 supportedService:1];
          if (v19)
          {
            v20 = [objc_alloc(getTRSessionClass()) initWithNearbyDevice:v19];
            v21 = selfCopy->_trSession;
            selfCopy->_trSession = v20;

            if (selfCopy->_trSession)
            {
              v22 = objc_alloc_init(getTRNearbyDeviceScannerClass());
              if (v22)
              {
                v23 = v22;
                v24 = selfCopy->_trSession;
                v36[0] = MEMORY[0x1E69E9820];
                v36[1] = 3221225472;
                v36[2] = __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke;
                v36[3] = &unk_1E788C170;
                v36[4] = selfCopy;
                [v22 openSession:v24 withCompletion:v36];

                return selfCopy->_trSessionState;
              }

              [(SFDeviceSetupAppleTVSession *)v19 _runTRSessionStart];
              goto LABEL_45;
            }

            if (gLogCategory_SFDeviceSetupAppleTVSession > 90 || gLogCategory_SFDeviceSetupAppleTVSession == -1 && !_LogCategory_Initialize())
            {
LABEL_43:

LABEL_45:
              v26 = -6700;
              goto LABEL_46;
            }

            v27 = "### Create TRSession failed\n";
          }

          else
          {
            if (gLogCategory_SFDeviceSetupAppleTVSession > 90 || gLogCategory_SFDeviceSetupAppleTVSession == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_43;
            }

            v27 = "### Create TRNearbyDevice failed\n";
          }

          [(SFDeviceSetupAppleTVSession *)v27 _runTRSessionStart];
          goto LABEL_43;
        }

        [(SFDeviceSetupAppleTVSession *)&v37 _runTRSessionStart];
      }

      else
      {
        [(SFDeviceSetupAppleTVSession *)&v37 _runTRSessionStart];
      }

LABEL_35:
      v26 = v37;
LABEL_46:
      selfCopy->_trSessionState = 3;
      v28 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A768];
      v30 = v26;
      v38 = *MEMORY[0x1E696A578];
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v32 = v31;
      v33 = @"?";
      if (v31)
      {
        v33 = v31;
      }

      v39[0] = v33;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
      v35 = [v28 errorWithDomain:v29 code:v30 userInfo:v34];
      [(SFDeviceSetupAppleTVSession *)selfCopy _reportError:v35 label:@"TRSessionStart"];

      return selfCopy->_trSessionState;
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return selfCopy->_trSessionState;
        }

        trSessionState = selfCopy->_trSessionState;
      }

      LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRSessionStart]", 30, "TRSession hasn't succeeded yet (%d)\n", trSessionState);
    }
  }

  return selfCopy->_trSessionState;
}

void __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 504);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke_2;
  block[3] = &unk_1E788F2F0;
  v11 = a2;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

void *__49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke_2(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[4];
  if (*(v3 + 208))
  {
    v4 = result;
    if (*(result + 48) == 1)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (result = _LogCategory_Initialize(), result))
        {
          __49__SFDeviceSetupAppleTVSession__runTRSessionStart__block_invoke_2_cold_1(result, a2, a3);
        }
      }

      *(v4[4] + 204) = 4;
      v5 = v4[4];

      return [v5 _run];
    }

    else
    {
      *(v3 + 204) = 3;
      v6 = result[4];
      v7 = v4[5];

      return [v6 _reportError:v7 label:@"TRSessionOpen"];
    }
  }

  return result;
}

- (int)_runTRSetupConfiguration
{
  selfCopy = self;
  trSetupConfigurationState = self->_trSetupConfigurationState;
  if (trSetupConfigurationState != 4 && trSetupConfigurationState != 2)
  {
    if (trSetupConfigurationState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_trSetupConfigurationState;
          }

          trSetupConfigurationState = selfCopy->_trSetupConfigurationState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRSetupConfiguration]", 30, "TRSetupConfiguration hasn't succeeded yet (%d)\n", trSetupConfigurationState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runTRSetupConfiguration=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runTRSetupConfiguration];
        }
      }

      selfCopy->_trSetupConfigurationState = 1;
      selfCopy->_trSetupConfigurationStartTicks = mach_absolute_time();
      v6 = [objc_alloc(getTRSetupConfigurationOperationClass()) initWithSession:selfCopy->_trSession];
      [(NSMutableArray *)selfCopy->_trOperations addObject:v6];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke;
      v9[3] = &unk_1E788A658;
      v9[4] = selfCopy;
      v10 = v6;
      v7 = v6;
      [v7 setCompletionBlock:v9];
      [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:v7];
    }
  }

  return selfCopy->_trSetupConfigurationState;
}

void __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 248) = v3;
    v4 = [*(a1 + 40) result];
    v10 = v4;
    if (v4)
    {
      getTRSetupConfigurationOperationNeedsNetworkKey(v4);
      Int64 = CFDictionaryGetInt64();
      *(*v1 + 256) = Int64 != 0;
      getTRSetupConfigurationOperationUnauthenticatedServicesKey(Int64);
      CFSetGetTypeID();
      v6 = CFDictionaryGetTypedValue();
      v7 = *(*v1 + 33);
      *(*v1 + 33) = v6;

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 58) = 4;
      [*v1 _run];
    }

    else
    {
      *(*(a1 + 32) + 232) = 3;
      v8 = *(a1 + 32);
      v9 = [*(a1 + 40) error];
      [v8 _reportError:v9 label:@"TRSetupConfig"];
    }
  }
}

- (int)_runTRNetwork
{
  selfCopy = self;
  trNetworkState = self->_trNetworkState;
  if (trNetworkState != 4 && trNetworkState != 2)
  {
    if (trNetworkState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_trNetworkState;
          }

          trNetworkState = selfCopy->_trNetworkState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRNetwork]", 30, "TRNetwork hasn't succeeded yet (%d)\n", trNetworkState);
      }
    }

    else if (self->_trNeedsNetwork)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runTRNetwork];
        }
      }

      selfCopy->_trNetworkState = 1;
      selfCopy->_trNetworkStartTicks = mach_absolute_time();
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler = (*(progressHandler + 16))(progressHandler, 200, 0);
      }

      v8 = [objc_alloc(getTRNetworkOperationClass(progressHandler)) initWithSession:selfCopy->_trSession];
      [(NSMutableArray *)selfCopy->_trOperations addObject:v8];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke;
      v10[3] = &unk_1E788A658;
      v10[4] = selfCopy;
      v11 = v8;
      v9 = v8;
      [v9 setCompletionBlock:v10];
      [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:v9];
    }

    else
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runTRNetwork];
        }
      }

      selfCopy->_trNetworkState = 2;
    }
  }

  return selfCopy->_trNetworkState;
}

void __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 328) = v3;
    v5 = [*(a1 + 40) result];
    getTRNetworkOperationHasNetworkKey(v5);
    if (CFDictionaryGetInt64())
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __44__SFDeviceSetupAppleTVSession__runTRNetwork__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 74) = 4;
      [*v1 _run];
    }

    else
    {
      *(*(a1 + 32) + 296) = 3;
      v4 = [*(a1 + 40) error];
      if (!v4)
      {
        v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UserErrorDomain" code:301021 userInfo:0];
      }

      [*v1 _reportError:v4 label:@"TRNetwork"];
    }
  }
}

- (int)_runWiFiSetup
{
  IsVirtualMachine = SFDeviceIsVirtualMachine();
  if (IsVirtualMachine)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (IsVirtualMachine = _LogCategory_Initialize(), IsVirtualMachine))
      {
        [(SFDeviceSetupAppleTVSession *)IsVirtualMachine _runWiFiSetup];
      }
    }

    self->_wifiSetupState = 2;
  }

  else
  {
    wifiSetupState = self->_wifiSetupState;
    if (wifiSetupState != 4)
    {
      if (wifiSetupState)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
          {
            if (!_LogCategory_Initialize())
            {
              return self->_wifiSetupState;
            }

            wifiSetupState = self->_wifiSetupState;
          }

          LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runWiFiSetup]", 30, "WiFiSetup hasn't succeeded yet (%d)\n", wifiSetupState);
        }
      }

      else
      {
        if (self->_isCLIMode)
        {
          IsVirtualMachine = IsAppleInternalBuild();
          if (IsVirtualMachine)
          {
            IsVirtualMachine = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runWiFiSetup=====\n");
          }
        }

        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (IsVirtualMachine = _LogCategory_Initialize(), IsVirtualMachine))
          {
            [(SFDeviceSetupAppleTVSession *)IsVirtualMachine _runWiFiSetup];
          }
        }

        self->_wifiSetupState = 1;
        progressHandler = self->_progressHandler;
        if (progressHandler)
        {
          progressHandler[2](progressHandler, 200, 0);
        }

        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
        v8 = objc_alloc_init(SFDeviceOperationWiFiSetup);
        wifiSetupOperation = self->_wifiSetupOperation;
        self->_wifiSetupOperation = v8;

        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setDispatchQueue:self->_dispatchQueue];
        if (self->_prefBonjourTest && (self->_peerFeatureFlags & 0x80) != 0)
        {
          [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSetupFlags:[(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setupFlags]| 1];
        }

        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSfSession:self->_sfSession];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSkipReachability:self->_doCaptiveJoin];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setRetryScansCount:2];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setRetryJoinsCount:2];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __44__SFDeviceSetupAppleTVSession__runWiFiSetup__block_invoke;
        v11[3] = &unk_1E788B238;
        v11[4] = self;
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setCompletionHandler:v11];
        [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation activate];
      }
    }
  }

  return self->_wifiSetupState;
}

void __44__SFDeviceSetupAppleTVSession__runWiFiSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  v7 = *(v6 + 312);
  if (v7)
  {
    v12 = v3;
    if (v3)
    {
      *(v4 + 320) = 3;
      if ([v3 code] == 301009 || objc_msgSend(v12, "code") == 301000)
      {
        [*v5 _reportError:v12 label:@"WiFiSetup"];
      }

      else
      {
        if ([v12 code] != -71157)
        {
          [v12 code];
        }

        v11 = NSErrorNestedF();
        [*v5 _reportError:v11 label:@"WiFiSetup"];
      }
    }

    else
    {
      [v7 metricTotalSeconds];
      *(*v5 + 41) = v8;
      [*(*v5 + 39) metricWiFiSetupSeconds];
      *(*v5 + 42) = v9;
      [*(*v5 + 39) metricBonjourTestSeconds];
      *(*v5 + 43) = v10;
      *(*v5 + 125) = [*(*v5 + 39) bonjourTestState];
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __44__SFDeviceSetupAppleTVSession__runWiFiSetup__block_invoke_cold_1(v5);
      }

      *(*v5 + 80) = 4;
      [*v5 _run];
    }

    v3 = v12;
  }
}

- (int)_runCaptivePrompt
{
  selfCopy = self;
  captivePromptState = self->_captivePromptState;
  if (captivePromptState > 1)
  {
    if (captivePromptState == 2 || captivePromptState == 4)
    {
      return selfCopy->_captivePromptState;
    }
  }

  else
  {
    if (!captivePromptState)
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runCaptivePrompt=====\n");
        }
      }

      if (selfCopy->_wifiIsCaptive)
      {
        if (selfCopy->_promptForCaptiveNetworkHandler)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
          {
            if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
            {
              [(SFDeviceSetupAppleTVSession *)self _runCaptivePrompt];
            }
          }

          selfCopy->_captivePromptState = 1;
          (*(selfCopy->_promptForCaptiveNetworkHandler + 2))();
          return selfCopy->_captivePromptState;
        }

        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
          {
            [(SFDeviceSetupAppleTVSession *)self _runCaptivePrompt];
          }
        }
      }

      else if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runCaptivePrompt];
        }
      }

      v5 = 2;
LABEL_39:
      selfCopy->_captivePromptState = v5;
      return selfCopy->_captivePromptState;
    }

    if (captivePromptState == 1)
    {
      if (self->_doCaptiveJoin)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
        {
          if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
          {
            [(SFDeviceSetupAppleTVSession *)self _runCaptivePrompt];
          }
        }

        v5 = 4;
        goto LABEL_39;
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runCaptivePrompt];
        }
      }

      return selfCopy->_captivePromptState;
    }
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return selfCopy->_captivePromptState;
      }

      captivePromptState = selfCopy->_captivePromptState;
    }

    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runCaptivePrompt]", 30, "Captive Join: not done yet (%d)", captivePromptState);
  }

  return selfCopy->_captivePromptState;
}

- (int)_runCaptiveJoin
{
  selfCopy = self;
  captiveJoinState = self->_captiveJoinState;
  if (captiveJoinState != 4)
  {
    if (captiveJoinState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_captiveJoinState;
          }

          captiveJoinState = selfCopy->_captiveJoinState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runCaptiveJoin]", 30, "Captive Join hasn't succeeded yet (%d)", captiveJoinState);
      }
    }

    else if (self->_doCaptiveJoin)
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runCaptiveJoin=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runCaptiveJoin];
        }
      }

      selfCopy->_captiveJoinState = 1;
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin invalidate];
      v5 = objc_alloc_init(SFDeviceOperationCNJSetup);
      captiveJoin = selfCopy->_captiveJoin;
      selfCopy->_captiveJoin = v5;

      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setSfSession:selfCopy->_sfSession];
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setIsSetup:1];
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setPresentingViewController:selfCopy->_presentingViewController];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke;
      v8[3] = &unk_1E788B238;
      v8[4] = selfCopy;
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin setCompletionHandler:v8];
      [(SFDeviceOperationCNJSetup *)selfCopy->_captiveJoin activate];
    }

    else
    {
      self->_captiveJoinState = 2;
    }
  }

  return selfCopy->_captiveJoinState;
}

void __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 504);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke_2;
  v7[3] = &unk_1E788A658;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (*(a1 + 32))
  {
    v6 = NSErrorWithOSStatusF(301028, "Captive login failed");
    *(*(v3 + 40) + 280) = 3;
    [*(v3 + 40) _reportError:v6 label:@"Captive Join"];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (a1 = _LogCategory_Initialize(), a1))
      {
        __46__SFDeviceSetupAppleTVSession__runCaptiveJoin__block_invoke_2_cold_1(a1, a2, a3);
      }
    }

    [*(*(v3 + 40) + 272) metricTotalSeconds];
    *(*(v3 + 40) + 288) = v4;
    *(*(v3 + 40) + 280) = 4;
    v5 = *(v3 + 40);

    [v5 _run];
  }
}

- (int)_runTRActivation
{
  selfCopy = self;
  trActivationState = self->_trActivationState;
  if (trActivationState != 4 && trActivationState != 2)
  {
    if (trActivationState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_trActivationState;
          }

          trActivationState = selfCopy->_trActivationState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRActivation]", 30, "TRActivation hasn't succeeded yet (%d)\n", trActivationState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runTRActivation=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runTRActivation];
        }
      }

      selfCopy->_trActivationState = 1;
      selfCopy->_trActivationStartTicks = mach_absolute_time();
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler = (*(progressHandler + 16))(progressHandler, 210, 0);
      }

      v7 = [objc_alloc(getTRActivationOperationClass(progressHandler)) initWithSession:selfCopy->_trSession];
      [(NSMutableArray *)selfCopy->_trOperations addObject:v7];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke;
      v10[3] = &unk_1E788A658;
      v10[4] = selfCopy;
      v11 = v7;
      v8 = v7;
      [v8 setCompletionBlock:v10];
      [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:v8];
    }
  }

  return selfCopy->_trActivationState;
}

void __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 368) = v3;
    v5 = [*(a1 + 40) result];
    getTRActivationOperationIsActivatedKey(v5);
    if (CFDictionaryGetInt64())
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupAppleTVSession__runTRActivation__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 89) = 4;
      [*v1 _run];
    }

    else
    {
      *(*(a1 + 32) + 356) = 3;
      v4 = [*(a1 + 40) error];
      if (!v4)
      {
        v4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"UserErrorDomain" code:301003 userInfo:0];
      }

      [*v1 _reportError:v4 label:@"TRActivation"];
    }
  }
}

- (int)_runTRAuthentication
{
  selfCopy = self;
  trAuthenticationState = self->_trAuthenticationState;
  if (trAuthenticationState != 4 && trAuthenticationState != 2)
  {
    if (trAuthenticationState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_trAuthenticationState;
          }

          trAuthenticationState = selfCopy->_trAuthenticationState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRAuthentication]", 30, "TRAuthentication hasn't succeeded yet (%d)\n", trAuthenticationState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runTRAuthentication=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runTRAuthentication];
        }
      }

      selfCopy->_trAuthenticationState = 1;
      selfCopy->_trAuthenticationStartTicks = mach_absolute_time();
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler = (*(progressHandler + 16))(progressHandler, 220, 0);
      }

      v7 = [objc_alloc(getTRAuthenticationOperationClass_1(progressHandler)) initWithSession:selfCopy->_trSession];
      [(NSMutableArray *)selfCopy->_trOperations addObject:v7];
      [v7 setTargetedServices:selfCopy->_trUnauthServices];
      if (selfCopy->_presentingViewController)
      {
        [v7 setPresentingViewController:?];
      }

      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke;
      v10[3] = &unk_1E788A658;
      v10[4] = selfCopy;
      v11 = v7;
      v8 = v7;
      [v8 setCompletionBlock:v10];
      [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:v8];
    }
  }

  return selfCopy->_trAuthenticationState;
}

void __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 392) = v3;
    v5 = [*(a1 + 40) result];
    if (v5)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __51__SFDeviceSetupAppleTVSession__runTRAuthentication__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 94) = 4;
      [*v1 _run];
    }

    else
    {
      v4 = [*(a1 + 40) error];
      *(*(a1 + 32) + 376) = 3;
      [*(a1 + 32) _reportError:v4 label:@"TRAuth"];
    }
  }
}

- (int)_runAppleIDSetup
{
  selfCopy = self;
  appleIDSetupState = self->_appleIDSetupState;
  if (appleIDSetupState != 4)
  {
    if (appleIDSetupState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_appleIDSetupState;
          }

          appleIDSetupState = selfCopy->_appleIDSetupState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runAppleIDSetup]", 30, "AppleIDSetup hasn't succeeded yet (%d)\n", appleIDSetupState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runAppleIDSetup=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runAppleIDSetup];
        }
      }

      selfCopy->_appleIDSetupState = 1;
      selfCopy->_appleIDSetupStartTicks = mach_absolute_time();
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 224, 0);
      }

      [(SFDeviceSetupAppleTVSession *)selfCopy _runAppleIDSetupRequest];
    }
  }

  return selfCopy->_appleIDSetupState;
}

- (void)_runAppleIDSetupRequest
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_isCLIMode && IsAppleInternalBuild())
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [(SFDeviceSetupAppleTVSession *)v3 _runAppleIDSetupRequest];
    }

    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"isCLIMode"];
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [(SFDeviceSetupAppleTVSession *)v3 _runAppleIDSetupRequest];
  }

  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__SFDeviceSetupAppleTVSession__runAppleIDSetupRequest__block_invoke;
  v5[3] = &unk_1E788B548;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_appleIDSetup" options:MEMORY[0x1E695E0F8] request:v3 responseHandler:v5];
}

- (void)_runAppleIDSetupResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  Int64 = CFDictionaryGetInt64();
  if (responseCopy && !errorCopy && Int64)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      [SFDeviceSetupAppleTVSession _runAppleIDSetupResponse:responseCopy error:?];
    }

    messageSessionTemplate = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (messageSessionTemplate)
    {
      v10 = objc_alloc_init(getAISSetupContextClass_0());
      v11 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E698C218]];
      [v10 setRequiredServiceTypes:v11];

      v12 = [MEMORY[0x1E695DFD8] setWithObjects:{*MEMORY[0x1E698C238], *MEMORY[0x1E698C228], 0}];
      [v10 setDesiredServiceTypes:v12];

      [v10 setShouldBackgroundDesiredServices:1];
      [v10 setLocalRole:1];
      [v10 setRemoteRole:3];
      [v10 setMessageSessionTemplate:messageSessionTemplate];
      [v10 setIsPreEstablishedClient:1];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke;
      aBlock[3] = &unk_1E788F7F0;
      aBlock[4] = self;
      v13 = _Block_copy(aBlock);
      if (self->_presentingViewController)
      {
        v14 = [objc_alloc(getAISSetupViewControllerClass()) initWithContext:v10];
        [v14 setReportHandler:v13];
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runAppleIDSetupResponse:error:]", 30, "AppleIDSetup presenting setup vc: %@ with parent vc: %@\n", v14, self->_presentingViewController);
        }

        navigationController = [(UIViewController *)self->_presentingViewController navigationController];
        getUINavigationControllerClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = self->_presentingViewController;

          navigationController = v16;
        }

        if (navigationController)
        {
          [navigationController pushViewController:v14 animated:1];
        }

        else
        {
          [(UIViewController *)self->_presentingViewController presentViewController:v14 animated:1 completion:0];
        }
      }

      else
      {
        v14 = objc_alloc_init(getAISSetupControllerClass_0());
        [v14 setupWithContext:v10 completionHandler:v13];
      }
    }

    else
    {
      v10 = NSErrorWithOSStatusF(4294960534, "No message session");
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceSetupAppleTVSession _runAppleIDSetupResponse:v10 error:?];
      }

      self->_appleIDSetupState = 3;
      [(SFDeviceSetupAppleTVSession *)self _reportError:v10 label:@"AppleIDSetup"];
    }

    goto LABEL_29;
  }

  self->_appleIDSetupState = 3;
  if (!errorCopy)
  {
    messageSessionTemplate = NSErrorWithOSStatusF(4294960596, "No response, no error?");
    [(SFDeviceSetupAppleTVSession *)self _reportError:messageSessionTemplate label:@"AppleIDSetup"];
LABEL_29:

    goto LABEL_30;
  }

  [(SFDeviceSetupAppleTVSession *)self _reportError:errorCopy label:@"AppleIDSetup"];
LABEL_30:
}

void __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 504);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke_2;
  block[3] = &unk_1E788BD88;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke_2(void *a1)
{
  mach_absolute_time();
  v2 = a1 + 4;
  UpTicksToSecondsF();
  *(a1[4] + 144) = v3;
  if (a1[5])
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke_2_cold_1((a1 + 4));
    }

    *(*v2 + 128) = 4;
    v4 = *v2;

    return [v4 _run];
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __62__SFDeviceSetupAppleTVSession__runAppleIDSetupResponse_error___block_invoke_2_cold_2(a1);
    }

    *(a1[4] + 128) = 3;
    v6 = a1[4];
    v7 = a1[6];

    return [v6 _reportError:v7 label:@"AppleIDSetup"];
  }
}

- (int)_runCDPSetup
{
  selfCopy = self;
  cdpState = self->_cdpState;
  if (cdpState != 4)
  {
    if (cdpState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_cdpState;
          }

          cdpState = selfCopy->_cdpState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runCDPSetup]", 30, "CDPSetup hasn't succeeded yet (%d)\n", cdpState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runCDPSetup=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runCDPSetup];
        }
      }

      selfCopy->_cdpState = 1;
      progressHandler = selfCopy->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 236, 0);
      }

      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation invalidate];
      v6 = objc_alloc_init(SFDeviceOperationCDPSetup);
      cdpSetupOperation = selfCopy->_cdpSetupOperation;
      selfCopy->_cdpSetupOperation = v6;

      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setDispatchQueue:selfCopy->_dispatchQueue];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setSfSession:selfCopy->_sfSession];
      if (selfCopy->_presentingViewController)
      {
        [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setPresentingViewController:?];
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __43__SFDeviceSetupAppleTVSession__runCDPSetup__block_invoke;
      v9[3] = &unk_1E788B238;
      v9[4] = selfCopy;
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation setCompletionHandler:v9];
      [(SFDeviceOperationCDPSetup *)selfCopy->_cdpSetupOperation activate];
    }
  }

  return selfCopy->_cdpState;
}

void __43__SFDeviceSetupAppleTVSession__runCDPSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  v7 = *(v6 + 104);
  if (v7)
  {
    v9 = v3;
    if (v3)
    {
      *(v4 + 120) = 3;
      [*v5 _reportError:v3 label:@"CDPSetup"];
    }

    else
    {
      [v7 metricSeconds];
      *(*v5 + 14) = v8;
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __43__SFDeviceSetupAppleTVSession__runCDPSetup__block_invoke_cold_1(v5);
      }

      *(*v5 + 30) = 4;
      [*v5 _run];
    }

    v3 = v9;
  }
}

- (int)_runHomeKitSetup
{
  homeKitSetupState = self->_homeKitSetupState;
  if (homeKitSetupState == 4 || homeKitSetupState == 2)
  {
    return self->_homeKitSetupState;
  }

  if (homeKitSetupState)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return self->_homeKitSetupState;
        }

        homeKitSetupState = self->_homeKitSetupState;
      }

      LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runHomeKitSetup]", 30, "HomeKitSetup hasn't finished yet (%d)\n", homeKitSetupState);
    }
  }

  else
  {
    _shouldSkipHomeKitSetup = [(SFDeviceSetupAppleTVSession *)self _shouldSkipHomeKitSetup];
    if (_shouldSkipHomeKitSetup)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (_shouldSkipHomeKitSetup = _LogCategory_Initialize(), _shouldSkipHomeKitSetup))
        {
          [(SFDeviceSetupAppleTVSession *)_shouldSkipHomeKitSetup _runHomeKitSetup];
        }
      }

LABEL_37:
      result = 2;
      self->_homeKitSetupState = 2;
      return result;
    }

    if (!self->_iCloudAccountMatches)
    {
      _shouldSkipHomeKitSetup = [(NSSet *)self->_trUnauthServices containsObject:&unk_1F1D7CEF8];
      if ((_shouldSkipHomeKitSetup & 1) == 0)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
        {
          [(SFDeviceSetupAppleTVSession *)&self->_iCloudAccountMatches _runHomeKitSetup];
        }

        goto LABEL_37;
      }
    }

    if (self->_isCLIMode)
    {
      _shouldSkipHomeKitSetup = IsAppleInternalBuild();
      if (_shouldSkipHomeKitSetup)
      {
        _shouldSkipHomeKitSetup = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runHomeKitSetup=====\n");
      }
    }

    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (_shouldSkipHomeKitSetup = _LogCategory_Initialize(), _shouldSkipHomeKitSetup))
      {
        [(SFDeviceSetupAppleTVSession *)_shouldSkipHomeKitSetup _runHomeKitSetup];
      }
    }

    self->_homeKitSetupState = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 234, 0);
    }

    homeKitSetupOperation = self->_homeKitSetupOperation;
    v11 = homeKitSetupOperation;
    if (!homeKitSetupOperation)
    {
      v12 = objc_alloc_init(SFDeviceOperationHomeKitSetup);
      v13 = self->_homeKitSetupOperation;
      self->_homeKitSetupOperation = v12;

      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setUserInteractive:0];
      [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setKeyExchangeOnly:1];
      v11 = self->_homeKitSetupOperation;
    }

    [(SFDeviceOperationHomeKitSetup *)v11 setPauseHandler:0];
    [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setTrSession:self->_trSession];
    [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setTimeoutInSeconds:60.0];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __47__SFDeviceSetupAppleTVSession__runHomeKitSetup__block_invoke;
    v15[3] = &unk_1E788B238;
    v15[4] = self;
    [(SFDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setCompletionHandler:v15];
    v14 = self->_homeKitSetupOperation;
    if (homeKitSetupOperation)
    {
      [(SFDeviceOperationHomeKitSetup *)v14 resume];
    }

    else
    {
      [(SFDeviceOperationHomeKitSetup *)v14 activate];
    }
  }

  return self->_homeKitSetupState;
}

void __47__SFDeviceSetupAppleTVSession__runHomeKitSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = *(v5 + 160);
  if (v6)
  {
    v16 = v3;
    [v6 metricNonUserSeconds];
    *(*v4 + 22) = v7;
    v8 = *v4;
    v9 = [*(*v4 + 20) homeKitHomeManager];
    v10 = [v9 homes];
    [v8 _setNumberOfDevicesOnAccount:v10];

    v11 = *v4;
    if (v16)
    {
      if (*(v11 + 154) == 1)
      {
        *(v11 + 43) = 3;
        [*v4 _reportError:v16 label:@"HomeKitSetup"];
LABEL_14:
        v3 = v16;
        goto LABEL_15;
      }

      [v11 _reportErrorMetrics:? errorLabel:? isFatal:?];
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupAppleTVSession__runHomeKitSetup__block_invoke_cold_1(v16);
      }

      v14 = *v4;
      v15 = 2;
    }

    else
    {
      v12 = [*(v11 + 20) homeKitSelectedRoomName];
      v13 = *(*v4 + 23);
      *(*v4 + 23) = v12;

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupAppleTVSession__runHomeKitSetup__block_invoke_cold_2(v4);
      }

      v14 = *v4;
      v15 = 4;
    }

    v14[43] = v15;
    [*v4 _run];
    goto LABEL_14;
  }

LABEL_15:
}

- (int)_runTVLatencySetup
{
  tvLatencySetupState = self->_tvLatencySetupState;
  if (tvLatencySetupState > 3)
  {
    if (tvLatencySetupState == 4)
    {
      return self->_tvLatencySetupState;
    }

    if (tvLatencySetupState == 11)
    {
      [(SFDeviceSetupAppleTVSession *)self _runTVLatencySetupEstimate];
      return self->_tvLatencySetupState;
    }
  }

  else
  {
    if (!tvLatencySetupState)
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runTVLatencySetup=====\n");
      }

      [(SFDeviceSetupAppleTVSession *)self _runTVLatencySetupRequest];
      return self->_tvLatencySetupState;
    }

    if (tvLatencySetupState == 2)
    {
      return self->_tvLatencySetupState;
    }
  }

  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return self->_tvLatencySetupState;
      }

      tvLatencySetupState = self->_tvLatencySetupState;
    }

    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTVLatencySetup]", 30, "TVLatencySetup hasn't succeeded yet (%d)\n", tvLatencySetupState);
  }

  return self->_tvLatencySetupState;
}

- (void)_runTVLatencySetupRequest
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupAppleTVSession *)self _runTVLatencySetupRequest];
    }
  }

  [(SFDeviceSetupAppleTVSession *)selfCopy _reportProgress:260 info:0];
  selfCopy->_tvLatencySetupState = 10;
  sfSession = selfCopy->_sfSession;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__SFDeviceSetupAppleTVSession__runTVLatencySetupRequest__block_invoke;
  v5[3] = &unk_1E788B548;
  v5[4] = selfCopy;
  [(SFSession *)sfSession sendRequestID:@"_tvlS" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v5];
}

void __56__SFDeviceSetupAppleTVSession__runTVLatencySetupRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v10)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __56__SFDeviceSetupAppleTVSession__runTVLatencySetupRequest__block_invoke_cold_1(v10);
    }

    v9 = 2;
  }

  else
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __56__SFDeviceSetupAppleTVSession__runTVLatencySetupRequest__block_invoke_cold_2(v8);
    }

    v9 = 11;
  }

  *(*(a1 + 32) + 416) = v9;
  [*(a1 + 32) _run];
}

- (void)_runTVLatencySetupEstimate
{
  selfCopy = self;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      [(SFDeviceSetupAppleTVSession *)self _runTVLatencySetupEstimate];
    }
  }

  selfCopy->_tvLatencySetupState = 12;
  messageSessionTemplate = [(SFSession *)selfCopy->_sfSession messageSessionTemplate];
  if (messageSessionTemplate)
  {
    v5 = [objc_alloc(getTVLAudioLatencyEstimatorClass_0()) initWithMessageSession:messageSessionTemplate];
    objc_storeStrong(&selfCopy->_tvLatencyEstimator, v5);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __57__SFDeviceSetupAppleTVSession__runTVLatencySetupEstimate__block_invoke;
    v11 = &unk_1E788B598;
    v12 = selfCopy;
    v13 = v5;
    v6 = v5;
    [v6 setProgressEventHandler:&v8];
    [v6 activate];
    [v6 estimate];
  }

  else
  {
    v7 = NSErrorWithOSStatusF(4294960551, "No message session");
    [(SFDeviceSetupAppleTVSession *)selfCopy _reportError:v7 label:@"TVLatencySetup"];
    selfCopy->_tvLatencySetupState = 3;
  }
}

void __57__SFDeviceSetupAppleTVSession__runTVLatencySetupEstimate__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 504);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__SFDeviceSetupAppleTVSession__runTVLatencySetupEstimate__block_invoke_2;
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

id *__57__SFDeviceSetupAppleTVSession__runTVLatencySetupEstimate__block_invoke_2(id *result)
{
  if (result[4] == *(result[5] + 51))
  {
    return [result[5] _runTVLatencySetupProgressEvent:result[7] info:result[6]];
  }

  return result;
}

- (void)_runTVLatencySetupProgressEvent:(unint64_t)event info:(id)info
{
  infoCopy = info;
  v14 = infoCopy;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v7 = _LogCategory_Initialize(), infoCopy = v14, v7))
    {
      LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTVLatencySetupProgressEvent:info:]", 30, "TVLatency progress: %d, %##.32@\n", event, infoCopy);
      infoCopy = v14;
    }
  }

  if (event > 1)
  {
    switch(event)
    {
      case 2uLL:
        selfCopy3 = self;
        v9 = 274;
        break;
      case 3uLL:
        [(SFDeviceSetupAppleTVSession *)self _reportProgress:272 info:v14];
        selfCopy4 = self;
        v13 = 4;
        goto LABEL_16;
      case 4uLL:
        selfCopy3 = self;
        v9 = 276;
        break;
      default:
        goto LABEL_20;
    }

    [(SFDeviceSetupAppleTVSession *)selfCopy3 _reportProgress:v9 info:v14];
    selfCopy4 = self;
    v13 = 2;
LABEL_16:
    [(SFDeviceSetupAppleTVSession *)selfCopy4 _runTVLatencySetupEnded:v13];
    goto LABEL_19;
  }

  if (event)
  {
    if (event != 1)
    {
      goto LABEL_20;
    }

    selfCopy6 = self;
    v11 = 277;
  }

  else
  {
    selfCopy6 = self;
    v11 = 270;
  }

  [(SFDeviceSetupAppleTVSession *)selfCopy6 _reportProgress:v11 info:v14];
LABEL_19:
  infoCopy = v14;
LABEL_20:
}

- (void)_runTVLatencySetupEnded:(int)ended
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _runTVLatencySetupEnded:ended];
  }

  [(TVLAudioLatencyEstimator *)self->_tvLatencyEstimator invalidate];
  tvLatencyEstimator = self->_tvLatencyEstimator;
  self->_tvLatencyEstimator = 0;

  if (self->_tvLatencySetupState == 12)
  {
    self->_tvLatencySetupState = ended;

    [(SFDeviceSetupAppleTVSession *)self _run];
  }
}

- (int)_runTRCompletion
{
  selfCopy = self;
  trCompletionState = self->_trCompletionState;
  if (trCompletionState != 4 && trCompletionState != 2)
  {
    if (trCompletionState)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession == -1)
        {
          if (!_LogCategory_Initialize())
          {
            return selfCopy->_trCompletionState;
          }

          trCompletionState = selfCopy->_trCompletionState;
        }

        LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRCompletion]", 30, "TRCompletion hasn't succeeded yet (%d)\n", trCompletionState);
      }
    }

    else
    {
      if (self->_isCLIMode)
      {
        self = IsAppleInternalBuild();
        if (self)
        {
          self = FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runTRCompletion=====\n");
        }
      }

      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (self = _LogCategory_Initialize(), self))
        {
          [(SFDeviceSetupAppleTVSession *)self _runTRCompletion];
        }
      }

      selfCopy->_trCompletionState = 1;
      selfCopy->_trCompletionStartTicks = mach_absolute_time();
      v6 = [objc_alloc(getTRCompletionOperationClass()) initWithSession:selfCopy->_trSession];
      [(NSMutableArray *)selfCopy->_trOperations addObject:v6];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke;
      v9[3] = &unk_1E788A658;
      v9[4] = selfCopy;
      v10 = v6;
      v7 = v6;
      [v7 setCompletionBlock:v9];
      [(TROperationQueue *)selfCopy->_trOperationQueue addOperation:v7];
    }
  }

  return selfCopy->_trCompletionState;
}

void __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 504);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke_2;
  v4[3] = &unk_1E788A658;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 208))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 432) = v3;
    v5 = [*(a1 + 40) result];
    if (v5)
    {
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
      {
        __47__SFDeviceSetupAppleTVSession__runTRCompletion__block_invoke_2_cold_1(v1);
      }

      *(*v1 + 105) = 4;
      [*v1 _run];
    }

    else
    {
      v4 = [*(a1 + 40) error];
      *(*(a1 + 32) + 420) = 3;
      [*(a1 + 32) _reportError:v4 label:@"TRCompletion"];
    }
  }
}

- (int)_runFinish:(BOOL)finish
{
  result = self->_finishState;
  if (!result)
  {
    if (!finish)
    {
      if (self->_isCLIMode && IsAppleInternalBuild())
      {
        FPrintF(*MEMORY[0x1E69E9858], "=====CmdTVSetupNoUI _runFinish=====\n");
      }

      if (self->_userWaitSeconds == 0.0)
      {
        mach_absolute_time();
        UpTicksToSecondsF();
        self->_userWaitSeconds = v5;
      }

      CFPrefs_SetValue();
      v6 = notify_post("com.apple.Sharing.prefsChanged");
      if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
      {
        if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v6 = _LogCategory_Initialize(), v6))
        {
          [(SFDeviceSetupAppleTVSession *)v6 _runFinish:v7, v8];
        }
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 96, 0);
      }
    }

    self->_finishState = 4;
    if (!self->_metricsReported)
    {
      self->_metricsReported = 1;
      [(SFDeviceSetupAppleTVSession *)self _reportMainMetrics:0 errorLabel:@"NoErr" userWaitSeconds:self->_userWaitSeconds];
    }

    [(SFDeviceSetupAppleTVSession *)self _cleanup];
    return self->_finishState;
  }

  return result;
}

- (void)_homeKitUpdateiCloudSwitchState:(BOOL)state
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  stateCopy = state;
  dispatch_async(dispatchQueue, block);
}

void __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_cold_1(a1);
  }

  v2 = [objc_alloc(getHMHomeManagerClass_1()) initWithOptions:0];
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2;
  v5[3] = &unk_1E788F818;
  v7 = v3;
  v6 = v2;
  v4 = v2;
  [v4 updateiCloudSwitchState:v3 completionHandler:v5];
}

void __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 90)
    {
      v7 = v3;
      if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
      {
        __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2_cold_1(a1, v7);
LABEL_13:
        v4 = v7;
      }
    }
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 30)
  {
    v7 = 0;
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (v6 = _LogCategory_Initialize(), v4 = 0, v6))
    {
      __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2_cold_2(a1);
      goto LABEL_13;
    }
  }
}

- (id)_videoSubscriberAccountData
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12;
  v19 = __Block_byref_object_dispose__12;
  v20 = 0;
  v2 = [getVSAccountSerializationCenterClass(self a2)];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __58__SFDeviceSetupAppleTVSession__videoSubscriberAccountData__block_invoke;
    v12 = &unk_1E788F860;
    v14 = &v15;
    v4 = v3;
    v13 = v4;
    v5 = [v2 exportDataWithCompletionHandler:&v9];
    v6 = dispatch_time(0, 5000000000);
    if (dispatch_semaphore_wait(v4, v6) && gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _videoSubscriberAccountData]", 90, "Timed out waiting for VSA data\n", v9, v10, v11, v12);
    }
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _videoSubscriberAccountData]", 90, "No VSA serialization center found\n");
  }

  v7 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __58__SFDeviceSetupAppleTVSession__videoSubscriberAccountData__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v6 = a3;
  if (v7)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
    {
      __58__SFDeviceSetupAppleTVSession__videoSubscriberAccountData__block_invoke_cold_1(v6);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else if (gLogCategory_SFDeviceSetupAppleTVSession <= 60 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    __58__SFDeviceSetupAppleTVSession__videoSubscriberAccountData__block_invoke_cold_2(v6);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_verifyiCloudMatch:(unint64_t)match error:(id *)error
{
  v7 = SFMyAltDSID();
  uTF8String = [v7 UTF8String];

  if (uTF8String)
  {
    v9 = [(SFSession *)self->_sfSession pairingDeriveKeyForIdentifier:@"AltDSID" keyLength:16];
    v10 = v9;
    if (v9)
    {
      [v9 bytes];
      strlen(uTF8String);
      if (SipHash() == match)
      {
        v11 = 0;
        v12 = 0;
        goto LABEL_5;
      }

      NSErrorWithOSStatusF(301015, "Mismatch 0x%llX vs 0x%llX");
    }

    else
    {
      NSErrorWithOSStatusF(301015, "No derived key");
    }
    v12 = ;
  }

  else
  {
    v12 = NSErrorWithOSStatusF(301015, "No My AltDSID");
    v10 = 0;
  }

  v11 = v12 != 0;
  if (error && v12)
  {
    v14 = v12;
    *error = v12;
    v11 = 1;
  }

LABEL_5:

  return !v11;
}

- (void)_reportMainMetrics:(id)metrics errorLabel:(id)label userWaitSeconds:(double)seconds
{
  v41[12] = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  labelCopy = label;
  code = [metricsCopy code];
  domain = [metricsCopy domain];
  underlyingErrors = [metricsCopy underlyingErrors];
  firstObject = [underlyingErrors firstObject];
  code2 = [firstObject code];

  underlyingErrors2 = [metricsCopy underlyingErrors];
  firstObject2 = [underlyingErrors2 firstObject];
  domain2 = [firstObject2 domain];
  v17 = domain2;
  v18 = @"NoUnderlyingError";
  if (domain2)
  {
    v18 = domain2;
  }

  v39 = v18;

  uUIDString = [(NSUUID *)self->_sessionID UUIDString];
  v40[0] = @"AppleTVModel";
  v40[1] = @"AppleTVSetupDeviceBuild";
  appleTVBuild = self->_appleTVBuild;
  appleTVModel = self->_appleTVModel;
  if (!appleTVModel)
  {
    appleTVModel = @"Unknown";
  }

  if (!appleTVBuild)
  {
    appleTVBuild = @"Unknown";
  }

  v41[0] = appleTVModel;
  v41[1] = appleTVBuild;
  v40[2] = @"errorCode";
  v22 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  v23 = v22;
  if (domain)
  {
    v24 = domain;
  }

  else
  {
    v24 = @"Unknown";
  }

  v41[2] = v22;
  v41[3] = v24;
  v40[3] = @"errorDomain";
  v40[4] = @"errorLabel";
  v38 = labelCopy;
  if (labelCopy)
  {
    v25 = labelCopy;
  }

  else
  {
    v25 = @"Unknown";
  }

  v41[4] = v25;
  v40[5] = @"isPreFlightLabel";
  v26 = MEMORY[0x1E696AD98];
  if (metricsCopy)
  {
    v27 = [(SFDeviceSetupAppleTVSession *)self _isPreflightError:metricsCopy];
  }

  else
  {
    v27 = 0;
  }

  v28 = [v26 numberWithInt:v27];
  v41[5] = v28;
  v40[6] = @"numberOfAppleTVsOnAccount";
  v29 = [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfAppleTVsOnAccount];
  v41[6] = v29;
  v40[7] = @"numberOfHomePodsOnAccount";
  v30 = [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfAppleTVsOnAccount];
  v31 = v30;
  if (uUIDString)
  {
    v32 = uUIDString;
  }

  else
  {
    v32 = @"Unknown";
  }

  v41[7] = v30;
  v41[8] = v32;
  v40[8] = @"sessionIdentifier";
  v40[9] = @"underlyingErrorCode";
  v33 = [MEMORY[0x1E696AD98] numberWithInteger:code2];
  v41[9] = v33;
  v41[10] = v39;
  v40[10] = @"underlyingErrorDomain";
  v40[11] = @"userWaitTimeMs";
  v34 = seconds * 1000.0;
  if (seconds == 0.0)
  {
    v34 = 0.0;
  }

  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v34];
  v41[11] = v35;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:12];

  SFMetricsLog(@"com.apple.tvos.tvsetup.main", v36);
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _reportMainMetrics:v36 errorLabel:? userWaitSeconds:?];
  }
}

- (void)_reportErrorMetrics:(id)metrics errorLabel:(id)label isFatal:(BOOL)fatal
{
  fatalCopy = fatal;
  v55[14] = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  labelCopy = label;
  code = [metricsCopy code];
  domain = [metricsCopy domain];
  underlyingErrors = [metricsCopy underlyingErrors];
  firstObject = [underlyingErrors firstObject];

  code2 = [firstObject code];
  domain2 = [firstObject domain];
  v14 = domain2;
  if (domain2)
  {
    v15 = domain2;
  }

  else
  {
    v15 = @"NoUnderlyingError";
  }

  v53 = v15;

  v48 = firstObject;
  underlyingErrors2 = [firstObject underlyingErrors];
  firstObject2 = [underlyingErrors2 firstObject];

  code3 = [firstObject2 code];
  domain3 = [firstObject2 domain];
  v19 = domain3;
  if (domain3)
  {
    v20 = domain3;
  }

  else
  {
    v20 = @"NoUnderlyingError";
  }

  v52 = v20;

  underlyingErrors3 = [firstObject2 underlyingErrors];
  firstObject3 = [underlyingErrors3 firstObject];

  code4 = [firstObject3 code];
  v47 = firstObject3;
  domain4 = [firstObject3 domain];
  v24 = domain4;
  if (domain4)
  {
    v25 = domain4;
  }

  else
  {
    v25 = @"NoUnderlyingError";
  }

  v51 = v25;

  uUIDString = [(NSUUID *)self->_sessionID UUIDString];
  v54[0] = @"AppleTVModel";
  v54[1] = @"AppleTVSetupDeviceBuild";
  appleTVBuild = self->_appleTVBuild;
  appleTVModel = self->_appleTVModel;
  if (!appleTVModel)
  {
    appleTVModel = @"Unknown";
  }

  if (!appleTVBuild)
  {
    appleTVBuild = @"Unknown";
  }

  v55[0] = appleTVModel;
  v55[1] = appleTVBuild;
  v54[2] = @"errorCode";
  v29 = [MEMORY[0x1E696AD98] numberWithInteger:code];
  v30 = v29;
  v49 = domain;
  v50 = labelCopy;
  if (domain)
  {
    v31 = domain;
  }

  else
  {
    v31 = @"Unknown";
  }

  v55[2] = v29;
  v55[3] = v31;
  v54[3] = @"errorDomain";
  v54[4] = @"errorLabel";
  if (labelCopy)
  {
    v32 = labelCopy;
  }

  else
  {
    v32 = @"Unknown";
  }

  v55[4] = v32;
  v54[5] = @"isFatalError";
  v33 = [MEMORY[0x1E696AD98] numberWithInt:fatalCopy];
  v55[5] = v33;
  v54[6] = @"isPreFlight";
  v34 = MEMORY[0x1E696AD98];
  if (metricsCopy)
  {
    v35 = [(SFDeviceSetupAppleTVSession *)self _isPreflightError:metricsCopy];
  }

  else
  {
    v35 = 0;
  }

  v36 = [v34 numberWithInt:v35];
  v37 = v36;
  if (uUIDString)
  {
    v38 = uUIDString;
  }

  else
  {
    v38 = @"Unknown";
  }

  v55[6] = v36;
  v55[7] = v38;
  v54[7] = @"sessionIdentifier";
  v54[8] = @"underlyingErrorCode1";
  v39 = [MEMORY[0x1E696AD98] numberWithInteger:code2];
  v55[8] = v39;
  v55[9] = v53;
  v54[9] = @"underlyingErrorDomain1";
  v54[10] = @"underlyingErrorCode2";
  v40 = [MEMORY[0x1E696AD98] numberWithInteger:code3];
  v55[10] = v40;
  v55[11] = v52;
  v54[11] = @"underlyingErrorDomain2";
  v54[12] = @"underlyingErrorCode3";
  v41 = [MEMORY[0x1E696AD98] numberWithInteger:code4];
  v54[13] = @"underlyingErrorDomain3";
  v55[12] = v41;
  v55[13] = v51;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:14];

  SFMetricsLog(@"com.apple.tvos.tvsetup.errors", v42);
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceSetupAppleTVSession _reportErrorMetrics:v42 errorLabel:? isFatal:?];
  }
}

- (void)_setNumberOfDevicesOnAccount:(id)account
{
  v37 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  *&self->_numberOfAppleTVsOnAccount = 0;
  obj = accountCopy;
  if (accountCopy)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v25 = [accountCopy countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v25)
    {
      p_numberOfAppleTVsOnAccount = &self->_numberOfAppleTVsOnAccount;
      p_numberOfHomePodsOnAccount = &self->_numberOfHomePodsOnAccount;
      v24 = *v32;
      do
      {
        v7 = 0;
        do
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = v7;
          v8 = *(*(&v31 + 1) + 8 * v7);
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          accessories = [v8 accessories];
          v10 = [accessories countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v28;
            do
            {
              for (i = 0; i != v11; ++i)
              {
                if (*v28 != v12)
                {
                  objc_enumerationMutation(accessories);
                }

                category = [*(*(&v27 + 1) + 8 * i) category];
                categoryType = [category categoryType];

                v17 = (getHMAccessoryCategoryTypeHomePod_1)(v16);
                v18 = [categoryType isEqualToString:v17];

                v20 = p_numberOfHomePodsOnAccount;
                if ((v18 & 1) != 0 || (getHMAccessoryCategoryTypeAppleTV_0(v19), v21 = objc_claimAutoreleasedReturnValue(), v22 = [categoryType isEqualToString:v21], v21, v20 = p_numberOfAppleTVsOnAccount, v22))
                {
                  ++*v20;
                }
              }

              v11 = [accessories countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v11);
          }

          v7 = v26 + 1;
        }

        while (v26 + 1 != v25);
        v25 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v25);
    }
  }
}

- (void)_run
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 30 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    identifier = [(SFSession *)self->_sfSession identifier];
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _run]", 30, "Session identifier %@\n", identifier);
  }

  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _runPreflightWiFi = [(SFDeviceSetupAppleTVSession *)self _runPreflightWiFi];
    if (_runPreflightWiFi == 4 || _runPreflightWiFi == 2)
    {
      _runCaptivePrompt = [(SFDeviceSetupAppleTVSession *)self _runCaptivePrompt];
      if (_runCaptivePrompt == 4 || _runCaptivePrompt == 2)
      {
        if (self->_appleIDSetupEnabled || ((v8 = [(SFDeviceSetupAppleTVSession *)self _runPreflightiTunes], v8 != 4) ? (v9 = v8 == 2) : (v9 = 1), v9))
        {
          _runPreflightHomeKit = [(SFDeviceSetupAppleTVSession *)self _runPreflightHomeKit];
          if (_runPreflightHomeKit == 4 || _runPreflightHomeKit == 2)
          {
            if (!self->_useSFSession && !self->_isCLIMode || ((v12 = [(SFDeviceSetupAppleTVSession *)self _runSFSessionStart], v12 != 4) ? (v13 = v12 == 2) : (v13 = 1), v13 && ((v14 = [(SFDeviceSetupAppleTVSession *)self _runPreAuth], v14 != 4) ? (v15 = v14 == 2) : (v15 = 1), v15 && ((v16 = [(SFDeviceSetupAppleTVSession *)self _runHomeKitHH2Check], v16 != 4) ? (v17 = v16 == 2) : (v17 = 1), v17 && ((v18 = [(SFDeviceSetupAppleTVSession *)self _runPairSetupWithFlags:0], v18 != 4) ? (v19 = v18 == 2) : (v19 = 1), v19 && (!self->_homeKitDoFullSetup && !self->_isCLIMode || ((v20 = [(SFDeviceSetupAppleTVSession *)self _runHomeKitUserInput], v20 != 4) ? (v21 = v20 == 2) : (v21 = 1), v21)))))) && ((v22 = [(SFDeviceSetupAppleTVSession *)self _runBasicConfig], v22 != 4) ? (v23 = v22 == 2) : (v23 = 1), v23))
            {
              _runTRSessionStart = [(SFDeviceSetupAppleTVSession *)self _runTRSessionStart];
              if (_runTRSessionStart == 4 || _runTRSessionStart == 2)
              {
                _runTRSetupConfiguration = [(SFDeviceSetupAppleTVSession *)self _runTRSetupConfiguration];
                if (_runTRSetupConfiguration == 4 || _runTRSetupConfiguration == 2)
                {
                  _runWiFiSetup = _runTRSetupConfiguration;
                  if (!SFDeviceIsVirtualMachine())
                  {
                    _runWiFiSetup = [(SFDeviceSetupAppleTVSession *)self _runWiFiSetup];
                  }

                  if (_runWiFiSetup == 4 || _runWiFiSetup == 2)
                  {
                    if (!self->_doCaptiveJoin || ((v30 = [(SFDeviceSetupAppleTVSession *)self _runCaptiveJoin], v30 != 4) ? (v31 = v30 == 2) : (v31 = 1), v31))
                    {
                      _runTRActivation = [(SFDeviceSetupAppleTVSession *)self _runTRActivation];
                      if (_runTRActivation == 4 || _runTRActivation == 2)
                      {
                        if (self->_appleIDSetupEnabled && (self->_peerFeatureFlags & 0x8000) != 0)
                        {
                          _runAppleIDSetup = [(SFDeviceSetupAppleTVSession *)self _runAppleIDSetup];
                          if (_runAppleIDSetup != 2 && _runAppleIDSetup != 4)
                          {
                            return;
                          }
                        }

                        else
                        {
                          _runTRAuthentication = [(SFDeviceSetupAppleTVSession *)self _runTRAuthentication];
                          if (_runTRAuthentication != 4 && _runTRAuthentication != 2)
                          {
                            return;
                          }

                          if (self->_cdpEnabled && (self->_peerFeatureFlags & 0x10) != 0)
                          {
                            _runCDPSetup = [(SFDeviceSetupAppleTVSession *)self _runCDPSetup];
                            if (_runCDPSetup != 4 && _runCDPSetup != 2)
                            {
                              return;
                            }
                          }
                        }

                        if ((!self->_useSFSession || !self->_homeKitDoKeyExchange && !self->_homeKitDoFullSetup) && !self->_isCLIMode || ((v40 = [(SFDeviceSetupAppleTVSession *)self _runHomeKitSetup], v40 != 4) ? (v41 = v40 == 2) : (v41 = 1), v41))
                        {
                          if (!self->_tvLatencyEnabled || (self->_peerFeatureFlags & 0x40) == 0 || ((v42 = [(SFDeviceSetupAppleTVSession *)self _runTVLatencySetup], v42 != 4) ? (v43 = v42 == 2) : (v43 = 1), v43))
                          {
                            _runTRCompletion = [(SFDeviceSetupAppleTVSession *)self _runTRCompletion];
                            if (_runTRCompletion == 4 || _runTRCompletion == 2)
                            {

                              [(SFDeviceSetupAppleTVSession *)self _runFinish:0];
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)_runTRSessionStart
{
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 90 && (gLogCategory_SFDeviceSetupAppleTVSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRSessionStart]", 90, "### Create TRNearbyDeviceScanner failed\n");
  }
}

- (_DWORD)_runTRSessionStart
{
  v1 = result;
  if (gLogCategory_SFDeviceSetupAppleTVSession <= 90)
  {
    if (gLogCategory_SFDeviceSetupAppleTVSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRSessionStart]", 90, "### Create TROperationQueue failed\n");
    }
  }

  *v1 = -6700;
  return result;
}

- (uint64_t)_runTRSessionStart
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRSessionStart]", 90, "### Get SFTRSession failed\n");
    }
  }

  *a2 = -6700;
  return result;
}

uint64_t __55__SFDeviceSetupAppleTVSession__runTRSetupConfiguration__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = "no";
  if (*(*a1 + 256))
  {
    v1 = "yes";
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTRSetupConfiguration]_block_invoke_2", 30, "TRSetupConfiguration succeeded (%f secs): NeedsNetwork %s, UnauthServices %##@\n", *(*a1 + 248), v1, *(*a1 + 264));
}

uint64_t __44__SFDeviceSetupAppleTVSession__runWiFiSetup__block_invoke_cold_1(uint64_t a1)
{
  v1 = *(*a1 + 500);
  if (v1 > 7)
  {
    if (v1 <= 9)
    {
      v2 = "?";
    }

    else
    {
      v2 = "User";
    }
  }

  else
  {
    v2 = off_1E788F880[v1];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runWiFiSetup]_block_invoke", 30, "WiFiSetup succeeded: %f total seconds, WiFi %f seconds, BonjourTest %f seconds, %s\n", *(*a1 + 328), *(*a1 + 336), *(*a1 + 344), v2);
}

- (uint64_t)_runHomeKitSetup
{
  v2 = "no";
  if (*self)
  {
    v2 = "yes";
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runHomeKitSetup]", 30, "Skipping HomeKit setup with mismatched iCloud (match=%s, services=%##@)\n", v2, *a2);
}

- (uint64_t)_runTVLatencySetupEnded:(unsigned int)a1 .cold.1(unsigned int a1)
{
  if (a1 > 7)
  {
    v1 = "?";
    if (a1 > 9)
    {
      v1 = "User";
    }
  }

  else
  {
    v1 = off_1E788F880[a1];
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _runTVLatencySetupEnded:]", 30, "TVLatency ending: %s\n", v1);
}

uint64_t __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_cold_1(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = "on";
  }

  else
  {
    v1 = "off";
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _homeKitUpdateiCloudSwitchState:]_block_invoke", 30, "HomeKit updateiCloudSwitchState %s\n", v1);
}

uint64_t __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2_cold_1(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v2 = "on";
  }

  else
  {
    v2 = "off";
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "-[SFDeviceSetupAppleTVSession _homeKitUpdateiCloudSwitchState:]_block_invoke_2", 90, "### HomeKit updateiCloudSwitchState %s failed: %{error}, status %d\n", v2, a2, [*(a1 + 32) status]);
}

uint64_t __63__SFDeviceSetupAppleTVSession__homeKitUpdateiCloudSwitchState___block_invoke_2_cold_2(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = "on";
  }

  else
  {
    v1 = "off";
  }

  return LogPrintF(&gLogCategory_SFDeviceSetupAppleTVSession, "[SFDeviceSetupAppleTVSession _homeKitUpdateiCloudSwitchState:]_block_invoke_2", 30, "HomeKit updateiCloudSwitchState %s succeeded\n", v1);
}

@end