@interface HDSSetupService
+ (OS_os_log)signpostLog;
- (BOOL)_handleFinishDone2Ready;
- (BOOL)isHomePodSUNoSetup;
- (HDSSetupService)init;
- (id)createScanParameters;
- (id)installProfileData:(id)data;
- (id)scanResultToDict:(id)dict;
- (int)_handleBasicConfigRequest:(id)request;
- (int)hdsSUStateForSUState;
- (unint64_t)signpostID;
- (void)_activate;
- (void)_boostiTunesCloudDaemon;
- (void)_cleanup;
- (void)_handleAuthActionAudioPasscodeInit:(id)init response:(id)response;
- (void)_handleAuthActionAudioPasscodeStartWithResponse:(id)response;
- (void)_handleAuthActionRequest:(id)request responseHandler:(id)handler;
- (void)_handleAuthActionSiriInit:(id)init;
- (void)_handleAuthActionSiriStart:(id)start response:(id)response responseHandler:(id)handler;
- (void)_handleBasicConfigResponse:(id)response;
- (void)_handleCheckHomePodForJS:(id)s responseHandler:(id)handler;
- (void)_handleDeviceActivationRequest:(id)request responseHandler:(id)handler;
- (void)_handleFinishApply:(id)apply responseHandler:(id)handler;
- (void)_handleFinishDone2:(unsigned int)done2 responseHandler:(id)handler;
- (void)_handleFinishDone:(unsigned int)done responseHandler:(id)handler;
- (void)_handleFinishRequest:(id)request responseHandler:(id)handler;
- (void)_handleHomeScanRequest:(id)request responseHandler:(id)handler;
- (void)_handlePreAuthRequest:(id)request responseHandler:(id)handler;
- (void)_handlePurgeSUNoSetup:(id)setup responseHandler:(id)handler;
- (void)_handleRawRequest:(id)request flags:(unsigned int)flags responseHandler:(id)handler;
- (void)_handleSUNoSetupScanRequest:(id)request responseHandler:(id)handler;
- (void)_handleSessionEnded:(id)ended;
- (void)_handleSessionStarted:(id)started;
- (void)_handleSiriDialogIdentifier:(id)identifier;
- (void)_handleStartSysDrop:(id)drop responseHandler:(id)handler;
- (void)_handleStartSysDropEnablementProfileTransfer:(id)transfer responseHandler:(id)handler;
- (void)_handleVoicePreviewRequest:(id)request responseHandler:(id)handler;
- (void)_invalidate;
- (void)_playReadyToSetupSound;
- (void)_printBitMask:(int64_t)mask;
- (void)_runHomeKitSetupMode:(id)mode responseHandler:(id)handler;
- (void)_setSiriInfo;
- (void)_sfServiceStart;
- (void)activate;
- (void)activateWithCompletion:(id)completion;
- (void)configureSUControllerManagerToFinish;
- (void)connectionRegained:(id)regained;
- (void)dealloc;
- (void)fetchScanResult;
- (void)fetchScanResult:(id)result;
- (void)invalidate;
- (void)isHomePodSUNoSetup;
- (void)manager:(id)manager connectionError:(id)error;
- (void)manager:(id)manager didChangeProgressOnApply:(id)apply progress:(id)progress;
- (void)manager:(id)manager didChangeProgressOnDownload:(id)download;
- (void)manager:(id)manager didFailDownload:(id)download withError:(id)error;
- (void)manager:(id)manager didFailInstallation:(id)installation withError:(id)error;
- (void)manager:(id)manager didFinishDownload:(id)download;
- (void)manager:(id)manager didFinishDownload:(id)download willProceedWithInstallation:(BOOL)installation waitingForAdmissionControl:(BOOL)control;
- (void)manager:(id)manager didFinishDownload:(id)download willProceedWithInstallation:(BOOL)installation waitingForAdmissionControl:(BOOL)control denialReasons:(id)reasons;
- (void)manager:(id)manager didFinishInstallation:(id)installation;
- (void)manager:(id)manager scanRequestDidLocateUpdate:(id)update error:(id)error;
- (void)manager:(id)manager scanRequestPostponed:(id)postponed error:(id)error;
- (void)removeSysDropProfile;
- (void)sendSUNoSetupErrorPeerEvent:(int64_t)event;
- (void)sendSUNoSetupSUInstallDonePeerEvent;
- (void)sendSUNoSetupSUStatusPeerEvent;
- (void)setTime;
- (void)wipeWifiConfig;
@end

@implementation HDSSetupService

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HDSSetupService_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_0 != -1)
  {
    dispatch_once(&signpostLog_onceToken_0, block);
  }

  v2 = signpostLog_log_0;

  return v2;
}

void __30__HDSSetupService_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.HomeDeviceSetup.signposts", [v4 UTF8String]);
  v3 = signpostLog_log_0;
  signpostLog_log_0 = v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (HDSSetupService)init
{
  v10.receiver = self;
  v10.super_class = HDSSetupService;
  v2 = [(HDSSetupService *)&v10 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = dispatch_queue_create("WiFiSetup", 0);
    wifiDispatchQueue = v2->_wifiDispatchQueue;
    v2->_wifiDispatchQueue = v5;

    v2->_iTunesCloudCompleteToken = -1;
    v2->_timeAuto = -1;
    v2->_timeZoneAuto = -1;
    v7 = [objc_alloc(MEMORY[0x277D64130]) initWithDelegate:v2];
    suControllerManager = v2->_suControllerManager;
    v2->_suControllerManager = v7;
  }

  return v2;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SysDropSession dealloc];
    [(HDSSetupService *)v3 _cleanup];
  }

  else
  {
    [(HDSSetupService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = HDSSetupService;
    [(HDSSetupService *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;
  MEMORY[0x2821F96F8](self, progressHandler);
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HDSSetupService_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService activateWithCompletion:];
  }

  v5 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_fetchScanResult selector:0 userInfo:1 repeats:300.0];
  scanTimer = self->_scanTimer;
  self->_scanTimer = v5;

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HDSSetupService_activateWithCompletion___block_invoke;
  v8[3] = &unk_279714210;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  [(HDSSetupService *)self fetchScanResult:v8];
}

void __42__HDSSetupService_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 448);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HDSSetupService_activateWithCompletion___block_invoke_2;
  v4[3] = &unk_279714210;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

uint64_t __42__HDSSetupService_activateWithCompletion___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  [*(a1 + 32) _activate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_activate
{
  v25 = 0;
  self->_advertiseFast = CFPrefs_GetInt64() != 0;
  Int64 = CFPrefs_GetInt64();
  if (v25)
  {
    v4 = 0;
  }

  else
  {
    v4 = Int64 == 0;
  }

  v5 = !v4;
  self->_prefCDPEnabled = v5;
  v6 = CFPrefs_GetInt64();
  if (v25)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6 == 0;
  }

  v8 = !v7;
  self->_wifiSetupEnabled = v8;
  v9 = CFPrefs_GetInt64();
  if (v25)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9 == 0;
  }

  v11 = !v10;
  self->_identifyB238AsB520 = v11;
  _activate = CFPrefs_GetInt64();
  if (v25)
  {
    v13 = 1;
  }

  else
  {
    v13 = _activate == 0;
  }

  v14 = !v13;
  self->_shouldSetupAgentPlayBootTone = v14;
  if (!self->_sfClient)
  {
    v15 = objc_alloc_init(MEMORY[0x277D54C30]);
    sfClient = self->_sfClient;
    self->_sfClient = v15;

    [(SFClient *)self->_sfClient activateAssertionWithIdentifier:@"com.apple.sharing.PreventRepair"];
    [(SFClient *)self->_sfClient preventExitForLocaleReason:@"HomePod Setup"];
    objc_initWeak(&location, self->_sfClient);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __28__HDSSetupService__activate__block_invoke;
    v22[3] = &unk_279714798;
    objc_copyWeak(&v23, &location);
    [(SFClient *)self->_sfClient setInterruptionHandler:v22];
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  if (self->_wifiSetupEnabled)
  {
    _activate = WiFiManagerClientCreate();
    self->_wifiManager = _activate;
    if (_activate)
    {
      _activate = WiFiManagerClientDisable();
    }

    else if (gLogCategory_HDSSetupService <= 60)
    {
      if (gLogCategory_HDSSetupService != -1 || (_activate = _LogCategory_Initialize(), _activate))
      {
        _activate = [HDSSetupService _activate];
      }
    }
  }

  if (!self->_siriClient)
  {
    v17 = objc_alloc_init(MEMORY[0x277D54CF0]);
    siriClient = self->_siriClient;
    self->_siriClient = v17;

    [(SFSiriClient *)self->_siriClient setDispatchQueue:self->_dispatchQueue];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __28__HDSSetupService__activate__block_invoke_2;
    v21[3] = &unk_2797147C0;
    v21[4] = self;
    [(SFSiriClient *)self->_siriClient setSiriDialogHandler:v21];
    _activate = [(SFSiriClient *)self->_siriClient activate];
  }

  v19 = [objc_alloc(getHMHomeManagerClass_0(_activate)) initWithOptions:0];
  homeManager = self->_homeManager;
  self->_homeManager = v19;

  [(HDSSetupService *)self _sfServiceStart];
}

void __28__HDSSetupService__activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __28__HDSSetupService__activate__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained preventExitForLocaleReason:@"HomePod Setup"];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HDSSetupService_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _invalidate];
  }

  self->_invalidateCalled = 1;
  finishApplyTimer = self->_finishApplyTimer;
  if (finishApplyTimer)
  {
    v4 = finishApplyTimer;
    dispatch_source_cancel(v4);
    v5 = self->_finishApplyTimer;
    self->_finishApplyTimer = 0;
  }

  if (self->_sfSession)
  {
    [(HDSSetupService *)self _handleSessionEnded:?];
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  [(SFService *)self->_sfService invalidate];
  sfService = self->_sfService;
  self->_sfService = 0;

  [(SFSiriClient *)self->_siriClient invalidateWithFlags:32];
  siriClient = self->_siriClient;
  self->_siriClient = 0;

  if (self->_wifiManager)
  {
    WiFiManagerClientEnable();
    CFRelease(self->_wifiManager);
    self->_wifiManager = 0;
  }

  [(CUAudioPlayer *)self->_audioPlayer invalidateWithFlags:1];
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = 0;

  [(SFClient *)self->_sfClient invalidate];
  sfClient = self->_sfClient;
  self->_sfClient = 0;

  icClient = self->_icClient;
  self->_icClient = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
  }

  [(NSTimer *)self->_scanTimer invalidate];
  scanTimer = self->_scanTimer;
  self->_scanTimer = 0;

  [(HDSSetupService *)self _cleanup];
}

- (void)_sfServiceStart
{
  if (!self->_sfService)
  {
    v20 = v5;
    v21 = v4;
    v22 = v2;
    v23 = v3;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _sfServiceStart];
    }

    signpostLog = [objc_opt_class() signpostLog];
    signpostID = [(HDSSetupService *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = signpostID;
      if (os_signpost_enabled(signpostLog))
      {
        *v19 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SFServiceStart", "", v19, 2u);
      }
    }

    v10 = objc_alloc_init(MEMORY[0x277D54CE0]);
    sfService = self->_sfService;
    self->_sfService = v10;

    if (self->_advertiseFast)
    {
      [(SFService *)self->_sfService setAdvertiseRate:50];
    }

    [(SFService *)self->_sfService setDispatchQueue:self->_dispatchQueue];
    [(SFService *)self->_sfService setIdentifier:*MEMORY[0x277D54D80]];
    [(SFService *)self->_sfService setLabel:@"HomePodSetup"];
    [(SFService *)self->_sfService setNeedsSetup:1];
    if (+[HDSDefaults disableNeedsSetup]&& isInternalBuild())
    {
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _sfServiceStart];
      }

      [(SFService *)self->_sfService setNeedsSetup:0];
    }

    if (SFDeviceModelCodeGet())
    {
      v12 = 33;
    }

    else
    {
      v12 = 11;
    }

    [(SFService *)self->_sfService setDeviceActionType:v12];
    if (self->_identifyB238AsB520)
    {
      [(SFService *)self->_sfService setDeviceActionType:33];
    }

    [(SFService *)self->_sfService setPairSetupACL:&unk_2864E7D48];
    [(SFService *)self->_sfService setSessionFlags:1];
    [(SFService *)self->_sfService setTouchRemoteEnabled:1];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __34__HDSSetupService__sfServiceStart__block_invoke;
    v18[3] = &unk_2797147E8;
    v18[4] = self;
    [(SFService *)self->_sfService setSessionStartedHandler:v18];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __34__HDSSetupService__sfServiceStart__block_invoke_343;
    v17[3] = &unk_279714810;
    v17[4] = self;
    [(SFService *)self->_sfService setSessionEndedHandler:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __34__HDSSetupService__sfServiceStart__block_invoke_345;
    v16[3] = &unk_2797147E8;
    v16[4] = self;
    [(SFService *)self->_sfService setSessionSecuredHandler:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__HDSSetupService__sfServiceStart__block_invoke_2;
    v15[3] = &unk_279714838;
    v15[4] = self;
    [(SFService *)self->_sfService setReceivedRequestHandler:v15];
    v13 = self->_sfService;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __34__HDSSetupService__sfServiceStart__block_invoke_3;
    v14[3] = &unk_279714198;
    v14[4] = self;
    [(SFService *)v13 activateWithCompletion:v14];
  }
}

void __34__HDSSetupService__sfServiceStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() signpostLog];
  v5 = [*(a1 + 32) signpostID];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SetupSession", "", v7, 2u);
    }
  }

  [*(a1 + 32) _handleSessionStarted:v3];
}

void __34__HDSSetupService__sfServiceStart__block_invoke_343(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() signpostLog];
  v5 = [*(a1 + 32) signpostID];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v7 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_END, v6, "SetupSession", "", v7, 2u);
    }
  }

  [*(a1 + 32) _handleSessionEnded:v3];
}

void __34__HDSSetupService__sfServiceStart__block_invoke_345(uint64_t a1, void *a2)
{
  v5 = a2;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __34__HDSSetupService__sfServiceStart__block_invoke_345_cold_1(v5);
  }

  v3 = *(*(a1 + 32) + 456);
  if (v3)
  {
    (*(v3 + 16))(v3, 70, 0);
    v4 = *(*(a1 + 32) + 456);
    if (v4)
    {
      (*(v4 + 16))(v4, 33, 0);
    }
  }
}

void __34__HDSSetupService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [objc_opt_class() signpostLog];
  v5 = [*(a1 + 32) signpostID];
  if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = v5;
    if (os_signpost_enabled(v4))
    {
      *v13 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_END, v6, "SFServiceStart", "", v13, 2u);
    }
  }

  v7 = v3;
  v8 = *(a1 + 32);
  if (v7)
  {
    v9 = *(v8 + 456);
    if (v9)
    {
      v14 = @"eo";
      v15 = v7;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      (*(v9 + 16))(v9, 30, v10);
LABEL_11:
    }
  }

  else
  {
    if (*(v8 + 208) == 1)
    {
      [v8 _playReadyToSetupSound];
      v8 = *(a1 + 32);
    }

    v11 = *(v8 + 456);
    if (v11)
    {
      v16 = @"PlayBootTone";
      v10 = [MEMORY[0x277CCABB0] numberWithInt:*(v8 + 208) ^ 1u];
      v17[0] = v10;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      (*(v11 + 16))(v11, 10, v12);

      goto LABEL_11;
    }
  }
}

- (void)_handleSessionStarted:(id)started
{
  startedCopy = started;
  if (self->_sfSession)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [(HDSSetupService *)startedCopy _handleSessionStarted:?];
    }
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionStarted:startedCopy];
    }

    self->_peerFeatureFlags = 0;
    objc_storeStrong(&self->_sfSession, started);
    v6 = GestaltCopyAnswer();
    if ([v6 length] < 4)
    {
      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleSessionStarted:];
      }
    }

    else
    {
      v7 = [v6 substringFromIndex:{objc_msgSend(v6, "length") - 4}];
      [(SFService *)self->_sfService setFixedPIN:v7];
    }

    v44 = 1;
    if (softLinkAudioServicesSetProperty(1633907828, 0, 0, 4, &v44) && gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionStarted:];
    }

    sfSession = self->_sfSession;
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __41__HDSSetupService__handleSessionStarted___block_invoke;
    v43[3] = &unk_279714668;
    v43[4] = self;
    [(SFSession *)sfSession registerRequestID:@"_hds_hh2" options:&unk_2864E7D70 handler:v43];
    v9 = self->_sfSession;
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_2;
    v42[3] = &unk_279714668;
    v42[4] = self;
    [(SFSession *)v9 registerRequestID:@"unsetup_hp_sunosetup_cancel_su" options:&unk_2864E7D70 handler:v42];
    v10 = self->_sfSession;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_3;
    v41[3] = &unk_279714668;
    v41[4] = self;
    [(SFSession *)v10 registerRequestID:@"_hds_ams_token" options:&unk_2864E7D70 handler:v41];
    v11 = self->_sfSession;
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_4;
    v40[3] = &unk_279714668;
    v40[4] = self;
    [(SFSession *)v11 registerRequestID:@"_pa" options:&unk_2864E7D70 handler:v40];
    v12 = self->_sfSession;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_6;
    v39[3] = &unk_279714668;
    v39[4] = self;
    [(SFSession *)v12 registerRequestID:@"_dA" options:&unk_2864E7D70 handler:v39];
    v13 = self->_sfSession;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_7;
    v38[3] = &unk_279714668;
    v38[4] = self;
    [(SFSession *)v13 registerRequestID:@"_aa" options:&unk_2864E7D70 handler:v38];
    v14 = self->_sfSession;
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_8;
    v37[3] = &unk_279714668;
    v37[4] = self;
    [(SFSession *)v14 registerRequestID:@"_pvoice" options:&unk_2864E7D70 handler:v37];
    v15 = self->_sfSession;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_9;
    v36[3] = &unk_279714668;
    v36[4] = self;
    [(SFSession *)v15 registerRequestID:@"_hds_fu" options:&unk_2864E7D70 handler:v36];
    v16 = self->_sfSession;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_10;
    v35[3] = &unk_279714668;
    v35[4] = self;
    [(SFSession *)v16 registerRequestID:@"_hds_hp_js" options:&unk_2864E7D70 handler:v35];
    v17 = self->_sfSession;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_11;
    v34[3] = &unk_279714668;
    v34[4] = self;
    [(SFSession *)v17 registerRequestID:@"sysdrop_sys_start" options:&unk_2864E7D70 handler:v34];
    v18 = self->_sfSession;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_12;
    v33[3] = &unk_279714668;
    v33[4] = self;
    [(SFSession *)v18 registerRequestID:@"_hds_rpft_sysdrop_enablement" options:&unk_2864E7D70 handler:v33];
    v19 = self->_sfSession;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_13;
    v32[3] = &unk_279714668;
    v32[4] = self;
    [(SFSession *)v19 registerRequestID:@"wp_s_f" options:&unk_2864E7D70 handler:v32];
    if (self->_prefCDPEnabled)
    {
      v20 = objc_alloc_init(MEMORY[0x277D54C80]);
      cdpSetupHandler = self->_cdpSetupHandler;
      self->_cdpSetupHandler = v20;

      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:startedCopy];
      [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    }

    v22 = objc_alloc_init(MEMORY[0x277D54C90]);
    wifiSetupHandler = self->_wifiSetupHandler;
    self->_wifiSetupHandler = v22;

    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setDispatchQueue:self->_wifiDispatchQueue];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler setSfSession:startedCopy];
    [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler activate];
    v24 = objc_alloc_init(MEMORY[0x277D54C88]);
    captiveNetworkHandler = self->_captiveNetworkHandler;
    self->_captiveNetworkHandler = v24;

    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler setSfSession:startedCopy];
    [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler activate];
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    trSession = [(SFSession *)self->_sfSession trSession];
    if (trSession)
    {
      [v26 setObject:trSession forKeyedSubscript:@"trSession"];
    }

    messageSessionTemplate = [startedCopy messageSessionTemplate];
    if (messageSessionTemplate)
    {
      [v26 setObject:messageSessionTemplate forKeyedSubscript:@"mst"];
    }

    else if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionStarted:];
    }

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 31, v26);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
    if (self->_homeManager)
    {
      defaultStore = [MEMORY[0x277CB8F48] defaultStore];
      aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];

      if (!aa_primaryAppleAccount)
      {
        [(HMHomeManager *)self->_homeManager removeAllHomeKitPairingIdentities];
        if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService _handleSessionStarted:];
        }
      }
    }
  }
}

void __41__HDSSetupService__handleSessionStarted___block_invoke_4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = v10[53];
  if (v11 && (v12 = [v11 count], v10 = *(a1 + 32), v12))
  {
    [*(a1 + 32) _handlePreAuthRequest:v8 responseHandler:v9];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __41__HDSSetupService__handleSessionStarted___block_invoke_5;
    v13[3] = &unk_279714860;
    v13[4] = v10;
    v14 = v8;
    v15 = v9;
    [v10 fetchScanResult:v13];
  }
}

void __41__HDSSetupService__handleSessionStarted___block_invoke_11(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __41__HDSSetupService__handleSessionStarted___block_invoke_11_cold_1();
  }

  [*(a1 + 32) _handleStartSysDrop:v7 responseHandler:v8];
}

void __41__HDSSetupService__handleSessionStarted___block_invoke_12(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __41__HDSSetupService__handleSessionStarted___block_invoke_12_cold_1();
  }

  [*(a1 + 32) _handleStartSysDropEnablementProfileTransfer:v7 responseHandler:v8];
}

void __41__HDSSetupService__handleSessionStarted___block_invoke_13(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __41__HDSSetupService__handleSessionStarted___block_invoke_13_cold_1();
  }

  [*(a1 + 32) _handleHomeScanRequest:v7 responseHandler:v8];
}

- (void)_runHomeKitSetupMode:(id)mode responseHandler:(id)handler
{
  modeCopy = mode;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _runHomeKitSetupMode:responseHandler:];
  }

  v6 = NSErrorWithOSStatusF(4294960582, "not implemented");
  (*(handlerCopy + 2))(handlerCopy, v6, 0, 0);
}

- (void)_handlePurgeSUNoSetup:(id)setup responseHandler:(id)handler
{
  setupCopy = setup;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePurgeSUNoSetup:responseHandler:];
  }

  suControllerManager = [(HDSSetupService *)self suControllerManager];

  if (suControllerManager)
  {
    suControllerManager2 = [(HDSSetupService *)self suControllerManager];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke;
    v11[3] = &unk_2797148B0;
    v11[4] = self;
    v12 = handlerCopy;
    [suControllerManager2 managerStatus:v11];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handlePurgeSUNoSetup:responseHandler:];
    }

    v10 = NSErrorWithOSStatusF(4294896157, "SUController was nil");
    (*(handlerCopy + 2))(handlerCopy, v10, 0, 0);
  }
}

void __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_cold_1();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else if ([v7 updateState] == 9 || objc_msgSend(v7, "updateState") == 10)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_cold_3();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  else
  {
    if ([v7 updateState] != 1 && objc_msgSend(v7, "updateState") != 17)
    {
      v11 = [*(a1 + 32) suControllerManager];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_2;
      v12[3] = &unk_279714888;
      v13 = *(a1 + 40);
      [v11 purgeUpdate:v8 completion:v12];

      goto LABEL_13;
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_cold_2();
    }

    v10 = *(*(a1 + 40) + 16);
  }

  v10();
LABEL_13:
}

void __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_2_cold_1();
    }

    v3 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePurgeSUNoSetup_responseHandler___block_invoke_2_cold_2();
    }

    v3 = *(*(a1 + 32) + 16);
  }

  v3();
}

- (void)_handleSessionEnded:(id)ended
{
  endedCopy = ended;
  sfSession = self->_sfSession;
  if (sfSession != endedCopy)
  {
    goto LABEL_36;
  }

  if (endedCopy && gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      sfSession = self->_sfSession;
    }

    peer = [(SFSession *)sfSession peer];
    LogPrintF();
  }

LABEL_7:
  sysDropService = self->_sysDropService;
  if (sysDropService)
  {
    [(SysDropService *)sysDropService invalidate];
    v7 = self->_sysDropService;
  }

  else
  {
    v7 = 0;
  }

  self->_sysDropService = 0;

  apcPlayer = self->_apcPlayer;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __39__HDSSetupService__handleSessionEnded___block_invoke;
  v22[3] = &unk_279713FF0;
  v22[4] = self;
  [(APCPlayer *)apcPlayer stopSend:0 withCompletion:v22];
  v9 = self->_apcPlayer;
  self->_apcPlayer = 0;

  if (self->_siriClient)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionEnded:];
    }

    [(SFSiriClient *)self->_siriClient stopSpeaking];
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  if (self->_siriDidDeviceSetup)
  {
    [(SFSiriClient *)self->_siriClient deviceSetupEnd];
    self->_siriDidDeviceSetup = 0;
  }

  [(SFDeviceOperationHandlerWiFiSetup *)self->_wifiSetupHandler invalidate];
  wifiSetupHandler = self->_wifiSetupHandler;
  self->_wifiSetupHandler = 0;

  [(SFDeviceOperationHandlerCNJSetup *)self->_captiveNetworkHandler invalidate];
  captiveNetworkHandler = self->_captiveNetworkHandler;
  self->_captiveNetworkHandler = 0;

  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = 0;

  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  semaForScanFoundSU = self->_semaForScanFoundSU;
  self->_semaForScanFoundSU = 0;

  errorForScanSUNoSetup = self->_errorForScanSUNoSetup;
  self->_errorForScanSUNoSetup = 0;

  self->_canCompanionShowHomePodSU = 0;
  v17 = self->_sfSession;
  self->_sfSession = 0;

  [(SFService *)self->_sfService setNeedsSetup:!self->_finished];
  if (+[HDSDefaults disableNeedsSetup]&& isInternalBuild())
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSessionEnded:];
    }

    [(SFService *)self->_sfService setNeedsSetup:0];
  }

  [(HDSSetupService *)self removeSysDropProfile];
  if (self->_finished && !self->_finishedEventSent)
  {
    self->_finishedEventSent = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 96, 0);
    }
  }

  v19 = self->_progressHandler;
  if (v19)
  {
    v19[2](v19, 32, 0);
  }

  if (self->_finished)
  {
    self->_finishSessionEnded = 1;
  }

  if (self->_finished2)
  {
    v20 = self->_progressHandler;
    if (v20)
    {
      v20[2](v20, 100, 0);
    }
  }

  if (self->_finishedFinal)
  {
    (*(self->_progressHandler + 2))();
  }

LABEL_36:
}

uint64_t __39__HDSSetupService__handleSessionEnded___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 456);
  if (result)
  {
    return (*(result + 16))(result, 710, 0);
  }

  return result;
}

- (void)_handleAuthActionRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionRequest:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionRequest:responseHandler:];
  }

  if (Int64Ranged > 3)
  {
    if (Int64Ranged != 4)
    {
      if (Int64Ranged == 5)
      {
        [(HDSSetupService *)self _handleAuthActionSiriStart:requestCopy response:v8 responseHandler:handlerCopy];
        goto LABEL_30;
      }

      if (Int64Ranged == 6)
      {
        if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService _handleAuthActionRequest:responseHandler:];
        }

        [(SFSiriClient *)self->_siriClient stopSpeaking];
        goto LABEL_26;
      }

      goto LABEL_21;
    }

    [(HDSSetupService *)self _handleAuthActionSiriInit:requestCopy];
  }

  else
  {
    switch(Int64Ranged)
    {
      case 1:
        [(HDSSetupService *)self _handleAuthActionAudioPasscodeInit:requestCopy response:v8];
        break;
      case 2:
        [(HDSSetupService *)self _handleAuthActionAudioPasscodeStartWithResponse:v8];
        break;
      case 3:
        apcPlayer = self->_apcPlayer;
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __60__HDSSetupService__handleAuthActionRequest_responseHandler___block_invoke;
        v12[3] = &unk_279713FF0;
        v12[4] = self;
        [(APCPlayer *)apcPlayer stopSend:0 withCompletion:v12];
        v11 = self->_apcPlayer;
        self->_apcPlayer = 0;

        break;
      default:
LABEL_21:
        if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService _handleAuthActionRequest:responseHandler:];
        }

        [v8 setObject:&unk_2864E8090 forKeyedSubscript:@"er"];
        break;
    }
  }

LABEL_26:
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionRequest:responseHandler:];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v8);
LABEL_30:
}

uint64_t __60__HDSSetupService__handleAuthActionRequest_responseHandler___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 456);
  if (result)
  {
    return (*(result + 16))(result, 710, 0);
  }

  return result;
}

- (void)_handleAuthActionAudioPasscodeInit:(id)init response:(id)response
{
  v35 = *MEMORY[0x277D85DE8];
  initCopy = init;
  responseCopy = response;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
  }

  CFDataGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v8)
  {
    v9 = v8;
    objc_storeStrong(&self->_apcCapData, v8);
  }

  else
  {
    v9 = self->_apcCapData;
    if (!v9)
    {
      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
      }

      v9 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v25 = 0;
      v28 = 4294960591;
      goto LABEL_49;
    }
  }

  apcPlayer = self->_apcPlayer;
  if (apcPlayer)
  {
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __63__HDSSetupService__handleAuthActionAudioPasscodeInit_response___block_invoke;
    v33[3] = &unk_279713FF0;
    v33[4] = self;
    apcPlayer = [(APCPlayer *)apcPlayer stopSend:1 withCompletion:v33];
  }

  v11 = [objc_alloc(getAPCPlayerClass(apcPlayer)) initWithListenerCapabilityData:v9 payloadLength:3];
  v12 = self->_apcPlayer;
  self->_apcPlayer = v11;

  v13 = self->_apcPlayer;
  if (!v13)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v25 = 0;
    v28 = 4294960564;
    goto LABEL_49;
  }

  [(APCPlayer *)v13 setDispatchQueue:self->_dispatchQueue];
  __str[0] = 0;
  v14 = 298;
  do
  {
    RandomString();
  }

  while (__str[0] == 48 && v14-- != 0);
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:__str];
  [(SFService *)self->_sfService setFixedPIN:v16];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionAudioPasscodeInit:? response:?];
  }

  v17 = strtoul(__str, 0, 10);
  v31 = v17;
  v32 = BYTE2(v17);
  v18 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v31 length:3];
  v19 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeDeviceSetup"];
  v20 = [v19 URLForResource:@"HomePodPasscode-b238.m4a" withExtension:0];
  if (v20)
  {
    v21 = self->_apcPlayer;
    v30 = 0;
    [(APCPlayer *)v21 preparePayload:v18 usingCarrierAtURL:v20 error:&v30];
    v22 = v30;
  }

  else
  {
    v22 = NSErrorWithOSStatusF(4294960596, "No passcode URL");
  }

  v23 = v22;
  if (v22)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
    }

    v24 = self->_apcPlayer;
    v29 = v23;
    [(APCPlayer *)v24 preparePayload:v18 usingCarrierAsset:3 error:&v29];
    v25 = v29;

    if (v25)
    {
      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
      }

      goto LABEL_48;
    }
  }

  configurationData = [(APCPlayer *)self->_apcPlayer configurationData];
  if (!configurationData)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionAudioPasscodeInit:response:];
    }

    v25 = 0;
LABEL_48:
    v28 = 4294960596;
LABEL_49:
    v27 = [MEMORY[0x277CCABB0] numberWithInt:v28];
    [responseCopy setObject:v27 forKeyedSubscript:@"er"];
    goto LABEL_29;
  }

  v27 = configurationData;
  [responseCopy setObject:configurationData forKeyedSubscript:@"apcPC"];
  v25 = 0;
LABEL_29:
}

uint64_t __63__HDSSetupService__handleAuthActionAudioPasscodeInit_response___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 456);
  if (result)
  {
    return (*(result + 16))(result, 710, 0);
  }

  return result;
}

- (void)_handleAuthActionAudioPasscodeStartWithResponse:(id)response
{
  responseCopy = response;
  apcPlayer = self->_apcPlayer;
  if (apcPlayer)
  {
LABEL_19:
    [(APCPlayer *)apcPlayer startSend];
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 60, 0);
    }

    goto LABEL_21;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
  }

  v6 = self->_apcCapData;
  v7 = v6;
  if (v6)
  {
    v8 = [objc_alloc(getAPCPlayerClass(v6)) initWithListenerCapabilityData:v6 payloadLength:3];
    v9 = self->_apcPlayer;
    self->_apcPlayer = v8;

    v10 = self->_apcPlayer;
    if (v10)
    {
      [(APCPlayer *)v10 setDispatchQueue:self->_dispatchQueue];
      fixedPIN = [(SFService *)self->_sfService fixedPIN];
      uTF8String = [fixedPIN UTF8String];

      if (uTF8String)
      {
        v13 = strtoul(uTF8String, 0, 10);
        v27 = v13;
        v28 = BYTE2(v13);
        v14 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v27 length:3];
        v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeDeviceSetup"];
        v16 = [v15 URLForResource:@"HomePodPasscode-b238.m4a" withExtension:0];
        if (v16)
        {
          v17 = self->_apcPlayer;
          v26 = 0;
          [(APCPlayer *)v17 preparePayload:v14 usingCarrierAtURL:v16 error:&v26];
          v18 = v26;
        }

        else
        {
          v18 = NSErrorWithOSStatusF(4294960596, "No passcode URL");
        }

        v19 = v18;
        if (v18)
        {
          v20 = self->_apcPlayer;
          v25 = v19;
          [(APCPlayer *)v20 preparePayload:v14 usingCarrierAsset:3 error:&v25];
          v21 = v25;

          if (v21)
          {
            if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
            }

            v22 = 0;
            v19 = 4294960596;
            goto LABEL_16;
          }

          v19 = 0;
        }

        else
        {
          v21 = 0;
        }

        v22 = 1;
LABEL_16:

        goto LABEL_17;
      }

      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
      }

      v21 = 0;
      v14 = 0;
      v22 = 0;
      v19 = 4294960551;
    }

    else
    {
      if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
      }

      v21 = 0;
      v14 = 0;
      v22 = 0;
      v19 = 4294960564;
    }
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionAudioPasscodeStartWithResponse:];
    }

    v21 = 0;
    v14 = 0;
    v22 = 0;
    v19 = 4294960591;
  }

LABEL_17:

  if (v22)
  {
    apcPlayer = self->_apcPlayer;
    goto LABEL_19;
  }

  if (v19)
  {
    v24 = [MEMORY[0x277CCABB0] numberWithInt:v19];
    [responseCopy setObject:v24 forKeyedSubscript:@"er"];
  }

LABEL_21:
}

- (void)_handleAuthActionSiriInit:(id)init
{
  initCopy = init;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionSiriInit:];
  }

  v8[0] = 0;
  RandomString();
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
  [(SFService *)self->_sfService setFixedPIN:v5];

  if (IsAppleInternalBuild())
  {
    CFStringGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (![v6 length])
    {
      CFStringGetTypeID();
      v7 = CFPrefs_CopyTypedValue();

      v6 = v7;
    }

    if ([v6 length])
    {
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService _handleAuthActionSiriInit:];
      }

      [(SFService *)self->_sfService setFixedPIN:v6];
    }
  }
}

- (void)_handleAuthActionSiriStart:(id)start response:(id)response responseHandler:(id)handler
{
  startCopy = start;
  responseCopy = response;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionSiriStart:response:responseHandler:];
  }

  fixedPIN = [(SFService *)self->_sfService fixedPIN];
  if ([fixedPIN length] <= 3)
  {
    [HDSSetupService _handleAuthActionSiriStart:responseCopy response:handlerCopy responseHandler:fixedPIN];
    goto LABEL_24;
  }

  CFStringGetTypeID();
  v12 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();
  v14 = CFDictionaryGetInt64Ranged() << 32;
  CFStringGetTypeID();
  v15 = CFDictionaryGetTypedValue();
  if (v14 == 0x200000000)
  {
    v16 = 64;
  }

  else
  {
    v16 = 192;
  }

  if (v14 == 0x100000000)
  {
    v17 = 128;
  }

  else
  {
    v17 = v16;
  }

  if (v12 && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionSiriStart:response:responseHandler:];
    if (v13)
    {
      goto LABEL_16;
    }
  }

  else if (v13)
  {
LABEL_16:
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleAuthActionSiriStart:response:responseHandler:];
    }
  }

  if (v15 && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleAuthActionSiriStart:response:responseHandler:];
  }

  siriClient = self->_siriClient;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __71__HDSSetupService__handleAuthActionSiriStart_response_responseHandler___block_invoke;
  v19[3] = &unk_279714640;
  v20 = responseCopy;
  v21 = handlerCopy;
  [(SFSiriClient *)siriClient speakPasscode:fixedPIN instructions:v12 languageCode:v13 voiceName:v15 flags:v17 completion:v19];

LABEL_24:
}

uint64_t __71__HDSSetupService__handleAuthActionSiriStart_response_responseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCABB0] numberWithInt:NSErrorToOSStatus()];
    [*(a1 + 32) setObject:v3 forKeyedSubscript:@"er"];
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (int)_handleBasicConfigRequest:(id)request
{
  requestCopy = request;
  v95 = 0;
  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSSetupService *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "BasicConfig", "", buf, 2u);
    }
  }

  apcPlayer = self->_apcPlayer;
  v93[0] = MEMORY[0x277D85DD0];
  v93[1] = 3221225472;
  v93[2] = __45__HDSSetupService__handleBasicConfigRequest___block_invoke;
  v93[3] = &unk_279713FF0;
  v93[4] = self;
  [(APCPlayer *)apcPlayer stopSend:0 withCompletion:v93];
  v9 = self->_apcPlayer;
  self->_apcPlayer = 0;

  Int64 = CFDictionaryGetInt64();
  if (!v95)
  {
    softLink_AXSVoiceOverTouchSetEnabled(Int64 != 0);
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  Double = CFDictionaryGetDouble();
  v13 = *&v12;
  if (!v95)
  {
    v14 = v12;
    Double = softLink_AXSVoiceOverTouchSetSpeakingRate(v14);
  }

  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1 || (Double = _LogCategory_Initialize(), Double))
    {
      v89 = v95;
      TMSourceProxBuddy = v13;
      v87 = @"vosr";
      Double = LogPrintF();
    }
  }

  sharedInstance = [getAXSettingsClass(Double) sharedInstance];
  v16 = CFDictionaryGetInt64();
  if (!v95)
  {
    [sharedInstance setTouchAccommodationsEnabled:{v16 != 0, v87, TMSourceProxBuddy, v89}];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  v17 = CFDictionaryGetInt64();
  if (!v95)
  {
    [sharedInstance setTouchAccommodationsHoldDurationEnabled:v17 != 0];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  CFDictionaryGetDouble();
  v19 = *&v18;
  if (!v95)
  {
    [sharedInstance setTouchAccommodationsHoldDuration:v18];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v89 = v95;
    TMSourceProxBuddy = v19;
    v87 = @"taHD";
    LogPrintF();
  }

  v20 = CFDictionaryGetInt64();
  if (!v95)
  {
    [sharedInstance setTouchAccommodationsIgnoreRepeatEnabled:{v20 != 0, v87, TMSourceProxBuddy, v89}];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  CFDictionaryGetDouble();
  v22 = *&v21;
  if (!v95)
  {
    [sharedInstance setTouchAccommodationsIgnoreRepeatDuration:v21];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v89 = v95;
    TMSourceProxBuddy = v22;
    v87 = @"taIRD";
    LogPrintF();
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v24 = Int64Ranged;
  if (!v95)
  {
    [sharedInstance setTouchAccommodationsTapActivationMethod:Int64Ranged];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    TMSourceProxBuddy = v24;
    v89 = v95;
    v87 = @"taTAM";
    LogPrintF();
  }

  CFDictionaryGetDouble();
  v26 = *&v25;
  if (!v95)
  {
    [sharedInstance setTouchAccommodationsTapActivationTimeout:v25];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v89 = v95;
    TMSourceProxBuddy = v26;
    v87 = @"taTAT";
    LogPrintF();
  }

  CFDictionaryGetDouble();
  v28 = *&v27;
  if (!v95)
  {
    [sharedInstance setVoiceOverDoubleTapInterval:v27];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v89 = v95;
    TMSourceProxBuddy = v28;
    v87 = @"vodti";
    LogPrintF();
  }

  v29 = CFDictionaryGetInt64();
  v30 = MEMORY[0x277CBF008];
  if (v29)
  {
    CFPrefs_SetValue();
    CFPrefs_SetInt64();
    CFPreferencesSetValue(@"AcceptProfileServicePayloadOnHomePod", *MEMORY[0x277CBED28], *v30, *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  v31 = CFDictionaryGetInt64Ranged();
  if (v31)
  {
    CFPrefs_SetInt64();
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v87 = v31;
    TMSourceProxBuddy = v95;
    LogPrintF();
  }

  v32 = CFDictionaryGetInt64();
  if (!v95)
  {
    [(objc_class *)getCLLocationManagerClass() setLocationServicesEnabled:v32 != 0];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  CFStringGetTypeID();
  v33 = CFDictionaryGetTypedValue();
  p_languageCode = &self->_languageCode;
  languageCode = self->_languageCode;
  self->_languageCode = v33;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  if (v95)
  {
    CFStringGetTypeID();
    v36 = CFDictionaryGetTypedValue();
    v37 = *p_languageCode;
    *p_languageCode = v36;

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
    }
  }

  v38 = *p_languageCode;
  if (v38)
  {
    CFPreferencesSetAppValue(@"AppleLanguageCodeSetup", v38, *v30);
  }

  CFStringGetTypeID();
  v39 = CFDictionaryGetTypedValue();
  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = v39;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  v41 = self->_localeIdentifier;
  if (v41)
  {
    CFPreferencesSetAppValue(@"AppleLocaleSetup", v41, *v30);
  }

  CFStringGetTypeID();
  v42 = CFDictionaryGetTypedValue();
  temperatureUnit = self->_temperatureUnit;
  self->_temperatureUnit = v42;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  CFPreferencesAppSynchronize(*v30);
  if ([(SFSession *)self->_sfSession sharingSourceVersion]- 16300101 > 0x13D5BA)
  {
    self->_siriDataSharingDeviceIsValid = 1;
    v44 = CFDictionaryGetInt64();
    if (!v95)
    {
      if (v44)
      {
        v45 = 6;
      }

      else
      {
        v45 = 5;
      }

      self->_siriDataSharingState = v45;
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
    }
  }

  else
  {
    self->_siriDataSharingDeviceIsValid = 0;
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
    }

    self->_siriDataSharingState = 5;
  }

  siriDisabled = CFDictionaryGetInt64() != 0;
  self->_siriDisabled = siriDisabled;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_113;
      }

      siriDisabled = self->_siriDisabled;
    }

    if (siriDisabled)
    {
      v47 = "yes";
    }

    else
    {
      v47 = "no";
    }

    v87 = v47;
    TMSourceProxBuddy = v95;
    LogPrintF();
  }

LABEL_113:
  CFStringGetTypeID();
  v48 = CFDictionaryGetTypedValue();
  siriListenLanguage = self->_siriListenLanguage;
  self->_siriListenLanguage = v48;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  siriVoiceGender = CFDictionaryGetInt64Ranged();
  self->_siriVoiceGender = siriVoiceGender;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_120;
      }

      siriVoiceGender = self->_siriVoiceGender;
    }

    v87 = siriVoiceGender;
    TMSourceProxBuddy = v95;
    LogPrintF();
  }

LABEL_120:
  CFStringGetTypeID();
  v51 = CFDictionaryGetTypedValue();
  siriVoiceLanguage = self->_siriVoiceLanguage;
  self->_siriVoiceLanguage = v51;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  CFStringGetTypeID();
  v53 = CFDictionaryGetTypedValue();
  siriVoiceName = self->_siriVoiceName;
  self->_siriVoiceName = v53;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  CFDateGetTypeID();
  v55 = CFDictionaryGetTypedValue();
  timeObj = self->_timeObj;
  self->_timeObj = v55;

  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1 || (v57 = _LogCategory_Initialize(), v57))
    {
      v57 = [HDSSetupService _handleBasicConfigRequest:];
    }
  }

  v58 = self->_timeObj;
  if (v58)
  {
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService == -1)
      {
        v57 = _LogCategory_Initialize();
        if (!v57)
        {
          goto LABEL_134;
        }

        v58 = self->_timeObj;
      }

      v87 = v58;
      TMSourceProxBuddy = getTMSourceProxBuddy(v57);
      v57 = LogPrintF();
    }

LABEL_134:
    v59 = getTMSourceProxBuddy(v57);
    [(NSDate *)self->_timeObj timeIntervalSinceReferenceDate];
    softLinkTMSetSourceTime(v59);
  }

  LODWORD(timeAuto) = CFDictionaryGetInt64() != 0;
  v61 = v95;
  if (v95)
  {
    timeAuto = 0xFFFFFFFFLL;
  }

  else
  {
    timeAuto = timeAuto;
  }

  self->_timeAuto = timeAuto;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_140:
      v87 = timeAuto;
      TMSourceProxBuddy = v61;
      LogPrintF();
      goto LABEL_142;
    }

    if (_LogCategory_Initialize())
    {
      timeAuto = self->_timeAuto;
      v61 = v95;
      goto LABEL_140;
    }
  }

LABEL_142:
  timeCycle = CFDictionaryGetInt64Ranged();
  self->_timeCycle = timeCycle;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_146;
      }

      timeCycle = self->_timeCycle;
    }

    v87 = timeCycle;
    TMSourceProxBuddy = v95;
    LogPrintF();
  }

LABEL_146:
  CFStringGetTypeID();
  v63 = CFDictionaryGetTypedValue();
  timeZone = self->_timeZone;
  self->_timeZone = v63;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  v65 = CFDictionaryGetInt64() != 0;
  v66 = v95;
  if (v95)
  {
    timeZoneAuto = 0xFFFFFFFFLL;
  }

  else
  {
    timeZoneAuto = v65;
  }

  self->_timeZoneAuto = timeZoneAuto;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_156;
      }

      timeZoneAuto = self->_timeZoneAuto;
      v66 = v95;
    }

    v87 = timeZoneAuto;
    TMSourceProxBuddy = v66;
    LogPrintF();
  }

LABEL_156:
  v68 = [(HDSSetupService *)self setTime:v87];
  v69 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass(v68));
  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = v69;

  v71 = self->_homeKitSetupHandler;
  trSession = [(SFSession *)self->_sfSession trSession];
  [(HMDeviceSetupOperationHandler *)v71 registerMessageHandlersForSession:trSession];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleBasicConfigRequest:];
  }

  v73 = CFDictionaryGetInt64();
  if (*p_languageCode)
  {
    v74 = v73;
    sharedPreferences = [(objc_class *)getVTPreferencesClass() sharedPreferences];
    v76 = [sharedPreferences isCompactVoiceTriggerAvailableForLanguageCode:*p_languageCode];

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
      if (!v76)
      {
        goto LABEL_172;
      }
    }

    else if (!v76)
    {
      goto LABEL_172;
    }

    v77 = v74 != 0;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
    }

    sharedPreferences2 = [(objc_class *)getVTPreferencesClass() sharedPreferences];
    v79 = [sharedPreferences2 setUserPreferredVoiceTriggerPhraseType:v77 sender:self deviceType:0 endpointId:0];

    if (v79 && gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleBasicConfigRequest:];
    }
  }

LABEL_172:
  v80 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2;
  block[3] = &unk_2797142A8;
  v81 = requestCopy;
  v91 = v81;
  v92 = v65;
  dispatch_async(v80, block);

  signpostLog2 = [objc_opt_class() signpostLog];
  signpostID2 = [(HDSSetupService *)self signpostID];
  if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v84 = signpostID2;
    if (os_signpost_enabled(signpostLog2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v84, "BasicConfig", "", buf, 2u);
    }
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 80, v81);
  }

  return 0;
}

uint64_t __45__HDSSetupService__handleBasicConfigRequest___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 456);
  if (result)
  {
    return (*(result + 16))(result, 710, 0);
  }

  return result;
}

void __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2(uint64_t a1)
{
  v2 = CFDictionaryGetInt64() != 0;
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  [v3 setBoolValue:v2 forSetting:*MEMORY[0x277D25E90]];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2_cold_1();
  }

  v4 = CFDictionaryGetInt64() != 0;
  v5 = [MEMORY[0x277D262A0] sharedConnection];
  [v5 setBoolValue:v4 forSetting:*MEMORY[0x277D25E58]];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2_cold_2();
  }

  CFDictionaryGetInt64();
  v6 = [MEMORY[0x277D262A0] sharedConnection];
  [v6 setBoolValue:*(a1 + 40) forSetting:*MEMORY[0x277D25FB8]];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __45__HDSSetupService__handleBasicConfigRequest___block_invoke_2_cold_3();
  }
}

- (void)setTime
{
  timeZone = self->_timeZone;
  v4 = MEMORY[0x277CBED28];
  if (timeZone)
  {
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || (v5 = _LogCategory_Initialize(), timeZone = self->_timeZone, v5))
      {
        v10 = timeZone;
        LogPrintF();
        timeZone = self->_timeZone;
      }
    }

    [(NSString *)timeZone UTF8String];
    if (tzlink() && gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    CFPreferencesSetAppValue(@"timezone", self->_timeZone, @"com.apple.preferences.datetime");
    CFPreferencesSetAppValue(@"timezoneset", *v4, @"com.apple.preferences.datetime");
    CFPreferencesAppSynchronize(@"com.apple.preferences.datetime");
    [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService setTime];
  }

  softLinkTMSetAutomaticTimeZoneEnabled(1);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService setTime];
  }

  softLinkTMSetAutomaticTimeEnabled(1);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService setTime];
  }

  timeCycle = self->_timeCycle;
  if (timeCycle == 12)
  {
    v7 = *v4;
  }

  else
  {
    v7 = 0;
  }

  if (timeCycle == 24)
  {
    v8 = *v4;
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x277CBF008];
  CFPreferencesSetAppValue(@"AppleICUForce12HourTime", v7, *MEMORY[0x277CBF008]);
  CFPreferencesSetAppValue(@"AppleICUForce24HourTime", v8, v9);
  CFPreferencesAppSynchronize(v9);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService setTime];
  }

  softLinkTMSetupTime(self->_dispatchQueue, &__block_literal_global_5, 30.0);
  notify_post("AppleTimePreferencesChangedNotification");
  notify_post("AppleDatePreferencesChangedNotification");
  self->_timeSet = 1;
}

void __26__HDSSetupService_setTime__block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __26__HDSSetupService_setTime__block_invoke_cold_1();
    }
  }

  else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __26__HDSSetupService_setTime__block_invoke_cold_2();
  }
}

- (void)_handleBasicConfigResponse:(id)response
{
  responseCopy = response;
  v4 = responseCopy;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = responseCopy;
    if (gLogCategory_HDSSetupService != -1 || (responseCopy = _LogCategory_Initialize(), v4 = v5, responseCopy))
    {
      responseCopy = [HDSSetupService _handleBasicConfigResponse:v4];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](responseCopy, v4);
}

- (void)_handleFinishRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishRequest:responseHandler:];
  }

  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSSetupService *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *v11 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Finish", "", v11, 2u);
    }
  }

  self->_finishSessionEnded = 0;
  [(HDSSetupService *)self _handleFinishApply:requestCopy responseHandler:handlerCopy];
}

- (void)_handleFinishApply:(id)apply responseHandler:(id)handler
{
  v46[1] = *MEMORY[0x277D85DE8];
  applyCopy = apply;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishApply:responseHandler:];
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (v7)
  {
    CUSetSystemName();
  }

  [(HDSSetupService *)self _setSiriInfo];
  v9 = MEMORY[0x277CBF008];
  if (!self->_timeSet)
  {
    timeZone = self->_timeZone;
    v11 = MEMORY[0x277CBED28];
    if (timeZone)
    {
      if (gLogCategory_HDSSetupService <= 30)
      {
        if (gLogCategory_HDSSetupService != -1 || (v12 = _LogCategory_Initialize(), timeZone = self->_timeZone, v12))
        {
          v40 = timeZone;
          LogPrintF();
          timeZone = self->_timeZone;
        }
      }

      [(NSString *)timeZone UTF8String];
      v13 = tzlink();
      if (v13)
      {
        if (gLogCategory_HDSSetupService <= 60)
        {
          v14 = v13;
          if (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize())
          {
            v40 = self->_timeZone;
            v41 = v14;
            LogPrintF();
          }
        }
      }

      CFPreferencesSetAppValue(@"timezone", self->_timeZone, @"com.apple.preferences.datetime");
      CFPreferencesSetAppValue(@"timezoneset", *v11, @"com.apple.preferences.datetime");
      CFPreferencesAppSynchronize(@"com.apple.preferences.datetime");
      [MEMORY[0x277CBEBB0] resetSystemTimeZone];
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishApply:responseHandler:];
    }

    softLinkTMSetAutomaticTimeZoneEnabled(1);
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishApply:responseHandler:];
    }

    softLinkTMSetAutomaticTimeEnabled(1);
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishApply:responseHandler:];
    }

    timeCycle = self->_timeCycle;
    if (timeCycle == 12)
    {
      v16 = *v11;
    }

    else
    {
      v16 = 0;
    }

    if (timeCycle == 24)
    {
      v17 = *v11;
    }

    else
    {
      v17 = 0;
    }

    v18 = *v9;
    CFPreferencesSetAppValue(@"AppleICUForce12HourTime", v16, *v9);
    CFPreferencesSetAppValue(@"AppleICUForce24HourTime", v17, v18);
    CFPreferencesAppSynchronize(v18);
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishApply:responseHandler:];
    }

    softLinkTMSetupTime(self->_dispatchQueue, &__block_literal_global_703, 30.0);
  }

  languageCode = self->_languageCode;
  if (languageCode)
  {
    v20 = self->_languageCode;
    if (gLogCategory_HDSSetupService <= 30)
    {
      v20 = self->_languageCode;
      if (gLogCategory_HDSSetupService != -1 || (v21 = _LogCategory_Initialize(), v20 = self->_languageCode, v21))
      {
        v40 = v20;
        LogPrintF();
        v20 = self->_languageCode;
      }
    }

    v22 = MEMORY[0x277CBEAF8];
    v46[0] = v20;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:{1, v40, v41, handlerCopy}];
    [v22 setPreferredLanguages:v23];
  }

  v24 = *v9;
  CFPreferencesSetAppValue(@"AppleLanguageCodeSetup", 0, *v9);
  localeIdentifier = self->_localeIdentifier;
  v26 = localeIdentifier != 0;
  if (localeIdentifier)
  {
    v27 = self->_localeIdentifier;
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || (v28 = _LogCategory_Initialize(), v27 = self->_localeIdentifier, v28))
      {
        v40 = v27;
        LogPrintF();
        v27 = self->_localeIdentifier;
      }
    }

    CFPreferencesSetAppValue(@"AppleLocale", v27, v24);
    CFPreferencesAppSynchronize(v24);
  }

  CFPreferencesSetAppValue(@"AppleLocaleSetup", 0, v24);
  temperatureUnit = self->_temperatureUnit;
  if (temperatureUnit)
  {
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || (v30 = _LogCategory_Initialize(), temperatureUnit = self->_temperatureUnit, v30))
      {
        v40 = temperatureUnit;
        LogPrintF();
        temperatureUnit = self->_temperatureUnit;
      }
    }

    [MEMORY[0x277CBEAF8] _setPreferredTemperatureUnit:{temperatureUnit, v40}];
    v26 = 1;
  }

  else if (!(languageCode | localeIdentifier))
  {
    goto LABEL_72;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishApply:responseHandler:];
  }

  if (lockdown_connect())
  {
    if (languageCode)
    {
      lockdown_set_value();
    }

    if (v26)
    {
      lockdown_set_value();
    }

    lockdown_disconnect();
  }

  else if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishApply:responseHandler:];
  }

  if (!self->_timeSet)
  {
    notify_post("AppleDatePreferencesChangedNotification");
    notify_post("AppleTimePreferencesChangedNotification");
  }

  notify_post("AppleNumberPreferencesChangedNotification");
  notify_post("AppleLanguagePreferencesChangedNotification");
  notify_post("com.apple.language.changed");
LABEL_72:
  CFAbsoluteTimeGetCurrent();
  CFPrefs_SetDouble();
  self->_finished = 1;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 95, 0);
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishApply:responseHandler:];
  }

  v33 = self->_finishApplyTimer;
  v34 = v33;
  if (v33)
  {
    dispatch_source_cancel(v33);
    finishApplyTimer = self->_finishApplyTimer;
    self->_finishApplyTimer = 0;
  }

  v36 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
  v37 = self->_finishApplyTimer;
  self->_finishApplyTimer = v36;

  v38 = self->_finishApplyTimer;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke_2;
  handler[3] = &unk_2797148F8;
  handler[4] = self;
  v45 = Int64Ranged;
  v39 = handlerCopy;
  v44 = v39;
  dispatch_source_set_event_handler(v38, handler);
  HDSDispatchTimerSet(self->_finishApplyTimer, 4.0, -1.0, -4.0);
  dispatch_resume(self->_finishApplyTimer);
}

void __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke_cold_2();
  }
}

uint64_t __54__HDSSetupService__handleFinishApply_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    v3 = v2;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  return [v7 _handleFinishDone:v6 responseHandler:v8];
}

- (void)_handleFinishDone:(unsigned int)done responseHandler:(id)handler
{
  v4 = *&done;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishDone:responseHandler:];
  }

  [(SFService *)self->_sfService setNeedsSetup:0];
  v7 = [(SFService *)self->_sfService setDeviceActionType:0];
  v8 = [objc_alloc(getFLFollowUpControllerClass(v7)) initWithClientIdentifier:0];
  [v8 clearPendingFollowUpItems:0];
  [(HDSSetupService *)self _boostiTunesCloudDaemon];
  if (!self->_finishedEventSent)
  {
    self->_finishedEventSent = 1;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 96, 0);
    }
  }

  v10 = mach_absolute_time();
  iTunesCloudCompleteToken = self->_iTunesCloudCompleteToken;
  if (iTunesCloudCompleteToken != -1)
  {
    notify_cancel(iTunesCloudCompleteToken);
    self->_iTunesCloudCompleteToken = -1;
  }

  dispatchQueue = self->_dispatchQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke;
  handler[3] = &unk_279714920;
  handler[4] = self;
  v39 = v10;
  v40 = v4;
  v13 = handlerCopy;
  v38 = v13;
  notify_register_dispatch("com.apple.itunescloud.setupcompleted", &self->_iTunesCloudCompleteToken, dispatchQueue, handler);
  state64 = 0;
  notify_get_state(self->_iTunesCloudCompleteToken, &state64);
  if (state64)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishDone:responseHandler:];
    }

    self->_iTunesCloudCompleted = 1;
    if (self->_iTunesCloudWaitSeconds == 0.0)
    {
      mach_absolute_time();
      UpTicksToSecondsF();
      self->_iTunesCloudWaitSeconds = v14;
    }

    if ([(HDSSetupService *)self _handleFinishDone2Ready])
    {
      goto LABEL_21;
    }
  }

  if (gLogCategory_HDSSetupService > 30 || gLogCategory_HDSSetupService == -1 && !_LogCategory_Initialize())
  {
    if ((v4 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_24:
    v15 = mach_absolute_time();
    [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
    v16 = objc_alloc_init(MEMORY[0x277D44160]);
    companionLinkClient = self->_companionLinkClient;
    self->_companionLinkClient = v16;

    [(RPCompanionLinkClient *)self->_companionLinkClient setDispatchQueue:self->_dispatchQueue];
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_2;
    v32[3] = &unk_279714948;
    v32[4] = self;
    v34 = v15;
    v35 = v4;
    v18 = v13;
    v33 = v18;
    [(RPCompanionLinkClient *)self->_companionLinkClient setLocalDeviceUpdatedHandler:v32];
    v19 = self->_companionLinkClient;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_3;
    v28[3] = &unk_279714970;
    v28[4] = self;
    v30 = v15;
    v31 = v4;
    v29 = v18;
    [(RPCompanionLinkClient *)v19 activateWithCompletion:v28];
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleFinishDone:responseHandler:];
    }

    goto LABEL_28;
  }

  [HDSSetupService _handleFinishDone:responseHandler:];
  if ((v4 & 2) != 0)
  {
    goto LABEL_24;
  }

LABEL_20:
  self->_mediaSystemReady = 1;
  if (![(HDSSetupService *)self _handleFinishDone2Ready])
  {
LABEL_28:
    v20 = mach_absolute_time();
    v21 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
    finishTimeoutTimer = self->_finishTimeoutTimer;
    self->_finishTimeoutTimer = v21;

    v23 = self->_finishTimeoutTimer;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_4;
    v24[3] = &unk_279714998;
    v24[4] = self;
    v26 = v20;
    v27 = v4;
    v25 = v13;
    dispatch_source_set_event_handler(v23, v24);
    HDSDispatchTimerSet(self->_finishTimeoutTimer, 300.0, -1.0, -4.0);
    dispatch_resume(self->_finishTimeoutTimer);

    goto LABEL_29;
  }

LABEL_21:
  [(HDSSetupService *)self _handleFinishDone2:v4 responseHandler:v13];
LABEL_29:
}

unsigned int *__53__HDSSetupService__handleFinishDone_responseHandler___block_invoke(unsigned int *result)
{
  v1 = result;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_cold_1();
    }
  }

  v2 = *(v1 + 4);
  if (*(v2 + 64) != -1)
  {
    *(v2 + 62) = 1;
    v3 = *(v1 + 4);
    if (v3[9] == 0.0)
    {
      mach_absolute_time();
      UpTicksToSecondsF();
      *(*(v1 + 4) + 72) = v4;
      v3 = *(v1 + 4);
    }

    result = [v3 _handleFinishDone2Ready];
    if (result)
    {
      v5 = v1[14];
      v6 = *(v1 + 4);
      v7 = *(v1 + 5);

      return [v6 _handleFinishDone2:v5 responseHandler:v7];
    }
  }

  return result;
}

uint64_t __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 32))
  {
    v9 = v3;
    v3 = [v3 mediaSystemState];
    v5 = v3;
    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v3))
      {
        v3 = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_2_cold_1();
      }
    }

    v4 = v9;
    if (v5 == 4 || v5 == 1)
    {
      *(*(a1 + 32) + 80) = 1;
      v6 = *(a1 + 32);
      if (v6[11] == 0.0)
      {
        mach_absolute_time();
        UpTicksToSecondsF();
        *(*(a1 + 32) + 88) = v7;
        v6 = *(a1 + 32);
      }

      v3 = [v6 _handleFinishDone2Ready];
      v4 = v9;
      if (v3)
      {
        v3 = [*(a1 + 32) _handleFinishDone2:*(a1 + 56) responseHandler:*(a1 + 40)];
        v4 = v9;
      }
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(*(a1 + 32) + 32))
  {
    v8 = v3;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v8, v3)))
    {
      v3 = __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_3_cold_1();
      v4 = v8;
      if (!v8)
      {
        goto LABEL_10;
      }
    }

    else if (!v4)
    {
      goto LABEL_10;
    }

    *(*(a1 + 32) + 80) = 1;
    v5 = *(a1 + 32);
    if (v5[11] == 0.0)
    {
      mach_absolute_time();
      UpTicksToSecondsF();
      *(*(a1 + 32) + 88) = v6;
      v5 = *(a1 + 32);
    }

    v3 = [v5 _handleFinishDone2Ready];
    v4 = v8;
    if (v3)
    {
      v3 = [*(a1 + 32) _handleFinishDone2:*(a1 + 56) responseHandler:*(a1 + 40)];
      v4 = v8;
    }
  }

LABEL_10:

  return MEMORY[0x2821F96F8](v3, v4);
}

uint64_t __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_4(uint64_t a1)
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __53__HDSSetupService__handleFinishDone_responseHandler___block_invoke_4_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2[11] == 0.0)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 88) = v3;
    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 56) | 4u;

  return [v2 _handleFinishDone2:v5 responseHandler:v4];
}

- (void)_handleFinishDone2:(unsigned int)done2 responseHandler:(id)handler
{
  v4 = *&done2;
  v24[3] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishDone2:responseHandler:];
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  [(HDSSetupService *)self removeSysDropProfile];
  iTunesCloudCompleteToken = self->_iTunesCloudCompleteToken;
  if (iTunesCloudCompleteToken != -1)
  {
    notify_cancel(iTunesCloudCompleteToken);
    self->_iTunesCloudCompleteToken = -1;
  }

  finishTimeoutTimer = self->_finishTimeoutTimer;
  if (finishTimeoutTimer)
  {
    v10 = finishTimeoutTimer;
    dispatch_source_cancel(v10);
    v11 = self->_finishTimeoutTimer;
    self->_finishTimeoutTimer = 0;
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 700, 0);
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishDone2:responseHandler:];
  }

  siriClient = self->_siriClient;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __54__HDSSetupService__handleFinishDone2_responseHandler___block_invoke;
  v22[3] = &unk_279714198;
  v22[4] = self;
  [(SFSiriClient *)siriClient deviceSetupPlayGreetingID:5 completion:v22];
  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSSetupService *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *v21 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_END, v16, "Finish", "", v21, 2u);
    }
  }

  v23[0] = @"finF";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v24[0] = v17;
  v23[1] = @"itWS";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_iTunesCloudWaitSeconds];
  v24[1] = v18;
  v23[2] = @"msWS";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mediaSystemWaitSeconds];
  v24[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  handlerCopy[2](handlerCopy, 1, 0, v20);

  [(SFSession *)self->_sfSession sendWithFlags:1 object:&unk_2864E7DC0];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishDone2:responseHandler:];
  }

  self->_finishedFinal = 1;
}

uint64_t __54__HDSSetupService__handleFinishDone2_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v7 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v7, v3))
    {
      v3 = __54__HDSSetupService__handleFinishDone2_responseHandler___block_invoke_cold_1();
      v4 = v7;
    }
  }

  *(*(a1 + 32) + 57) = 1;
  v5 = *(a1 + 32);
  if (*(v5 + 60) == 1)
  {
    v3 = *(v5 + 456);
    if (v3)
    {
      v8 = v4;
      v3 = v3[2](v3, 100, 0);
      v4 = v8;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (BOOL)_handleFinishDone2Ready
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleFinishDone2Ready];
  }

  return self->_iTunesCloudCompleted && self->_mediaSystemReady;
}

- (void)_handleVoicePreviewRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (!self->_voicePreviewer)
  {
    v8 = objc_alloc_init(getSUICDefaultVoicePreviewerClass());
    voicePreviewer = self->_voicePreviewer;
    self->_voicePreviewer = v8;
  }

  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleVoicePreviewRequest:responseHandler:];
  }

  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleVoicePreviewRequest:responseHandler:];
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleVoicePreviewRequest:responseHandler:];
  }

  v13 = [objc_alloc(getAFVoiceInfoClass()) initWithLanguageCode:v10 gender:Int64Ranged isCustom:1 name:v11 footprint:0 contentVersion:0 masteredVersion:0];
  v14 = self->_voicePreviewer;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__HDSSetupService__handleVoicePreviewRequest_responseHandler___block_invoke;
  v16[3] = &unk_2797149C0;
  v17 = handlerCopy;
  v15 = handlerCopy;
  [(SUICDefaultVoicePreviewer *)v14 previewVoice:v13 completion:v16];
}

void __62__HDSSetupService__handleVoicePreviewRequest_responseHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"siriVPSuccess";
  v5 = MEMORY[0x277CCABB0];
  v6 = a3;
  v7 = [v5 numberWithBool:a2];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  (*(*(a1 + 32) + 16))();
}

- (void)_handleCheckHomePodForJS:(id)s responseHandler:(id)handler
{
  handlerCopy = handler;
  sCopy = s;
  v6 = objc_opt_new();
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();

  if (v7)
  {
    sharedPreferences = [(objc_class *)getVTPreferencesClass() sharedPreferences];
    v9 = [sharedPreferences isCompactVoiceTriggerAvailableForLanguageCode:v7];

    v10 = [MEMORY[0x277CCABB0] numberWithBool:v9];
    [v6 setObject:v10 forKeyedSubscript:@"homepod_js_locale"];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v6);
}

- (void)_handleStartSysDropEnablementProfileTransfer:(id)transfer responseHandler:(id)handler
{
  handlerCopy = handler;
  transferCopy = transfer;
  v8 = objc_alloc_init(HDSFileTransferService);
  [(HDSFileTransferService *)v8 setFileTransferProgressHandler:&__block_literal_global_775];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_2;
  v12[3] = &unk_2797149E8;
  v12[4] = self;
  [(HDSFileTransferService *)v8 setFileTransferCompletionHandler:v12];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_3;
  v10[3] = &unk_279714888;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [(HDSFileTransferService *)v8 handleSysDropStartFileTransferRequest:transferCopy responseHandler:v10];
}

uint64_t __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = v2;
    if (gLogCategory_HDSSetupService != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

void __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v11)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v5 itemURL];
    v8 = [v7 path];
    v9 = [v6 contentsAtPath:v8];

    v10 = [*(a1 + 32) installProfileData:v9];
  }
}

uint64_t __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_3_cold_2();
    }

    v3 = (*(*(a1 + 32) + 16))();
    goto LABEL_10;
  }

  if (gLogCategory_HDSSetupService <= 30)
  {
    v6 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = __80__HDSSetupService__handleStartSysDropEnablementProfileTransfer_responseHandler___block_invoke_3_cold_1();
LABEL_10:
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_handleStartSysDrop:(id)drop responseHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_opt_new();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleStartSysDrop:responseHandler:];
  }

  v7 = objc_alloc_init(SysDropService);
  sysDropService = self->_sysDropService;
  self->_sysDropService = v7;

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __55__HDSSetupService__handleStartSysDrop_responseHandler___block_invoke;
  v9[3] = &unk_279714A10;
  v9[4] = self;
  [(SysDropService *)self->_sysDropService setPeerEventHandler:v9];
  [(SysDropService *)self->_sysDropService setSfService:self->_sfService];
  [(SysDropService *)self->_sysDropService setSfSession:self->_sfSession];
  [(SysDropService *)self->_sysDropService setServiceStartedFromSetup:1];
  [(SysDropService *)self->_sysDropService activate];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleStartSysDrop:responseHandler:];
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0, v6);
}

- (void)_handleSUNoSetupScanRequest:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_opt_new();
  v6 = dispatch_semaphore_create(0);
  semaForScanFoundSU = self->_semaForScanFoundSU;
  self->_semaForScanFoundSU = v6;

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
  }

  v8 = objc_alloc_init(MEMORY[0x277D64138]);
  [v8 setUserInitiated:1];
  [v8 setDownloadWhenFound:1];
  suControllerManager = [(HDSSetupService *)self suControllerManager];
  [suControllerManager scanForUpdates:v8];

  v10 = self->_semaForScanFoundSU;
  v11 = dispatch_time(0, 300000000000);
  dispatch_semaphore_wait(v10, v11);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
  }

  v12 = self->_semaForScanFoundSU;
  self->_semaForScanFoundSU = 0;

  if (self->_scanFoundSUForSUNoSetup)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
    }

    self->_homePodSUNoSetupState = 3;
    v13 = [MEMORY[0x277CCABB0] numberWithInt:3];
    [v5 setObject:v13 forKeyedSubscript:@"unsetup_hp_su_phase"];

    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_scanFoundSUForSUNoSetup];
    [v5 setObject:v14 forKeyedSubscript:@"unsetup_hp_su_scan_success"];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
    }

    [(HDSSetupService *)self wipeWifiConfig];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleSUNoSetupScanRequest:responseHandler:];
  }

  handlerCopy[2]();
}

- (void)_handleDeviceActivationRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 40 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleDeviceActivationRequest:responseHandler:];
  }

  v7 = objc_alloc_init(HDSDeviceActivation);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__HDSSetupService__handleDeviceActivationRequest_responseHandler___block_invoke;
  v9[3] = &unk_279714A38;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(HDSDeviceActivation *)v7 performActivationStep:requestCopy completion:v9];
}

void __66__HDSSetupService__handleDeviceActivationRequest_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (gLogCategory_HDSSetupService <= 40 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v6);
}

- (void)_handlePreAuthRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v75 = 0;
  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSSetupService *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PreAuth", "", buf, 2u);
    }
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  Int64 = CFDictionaryGetInt64();
  self->_peerFeatureFlags = Int64;
  if (!self->_siriDidDeviceSetup)
  {
    [(SFSiriClient *)self->_siriClient deviceSetupBegin:Int64];
    self->_siriDidDeviceSetup = 1;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"cbCapableHP"];
  v12 = GestaltCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v12 forKeyedSubscript:@"mdN"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v13 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v13 forKeyedSubscript:@"model"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v14 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v14 forKeyedSubscript:@"hp_pn"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v15 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v15 forKeyedSubscript:@"hp_bv"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v16 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v16 forKeyedSubscript:@"dguid"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v17 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v17 forKeyedSubscript:@"dsn"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  CFDictionaryGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v56 = v18;
    v59 = v75;
    LogPrintF();
  }

  if ([v18 count])
  {
    softLinkAFPreferencesSetHorsemanSupplementalLanguageDictionary(v18);
  }

  v64 = v18;
  v19 = GestaltCopyAnswer();

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v10 setObject:v19 forKeyedSubscript:@"wifiMA"];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  CFStringGetTypeID();
  v20 = CFDictionaryGetTypedValue();

  v66 = v20;
  if (v20)
  {
    v73 = 0;
    v21 = [(objc_class *)getAFConnectionClass() assistantIsSupportedForLanguageCode:v20 error:&v73];
    v22 = v73;
    v23 = v22;
    if ((v21 & 1) == 0)
    {
      v63 = v22;
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        v57 = v20;
        v60 = v63;
        LogPrintF();
      }

LABEL_70:
      v32 = [v10 setObject:&unk_2864E80C0 forKeyedSubscript:{@"siriFl", v57, v60, v62}];
      v33 = softLinkAFPreferencesSupportedLanguages(v32);
      v25 = [v33 mutableCopy];

      sharedPreferences = [(objc_class *)getAFPreferencesClass() sharedPreferences];
      v31 = [sharedPreferences bestSupportedLanguageCodeForLanguageCode:v20];
      v34 = [v25 indexOfObject:v31];
      if (!v31 || v34 == 0x7FFFFFFFFFFFFFFFLL)
      {

        if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService _handlePreAuthRequest:responseHandler:];
        }

        v31 = @"en-US";
      }

      else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        v58 = v20;
        v61 = v31;
        LogPrintF();
      }

      v35 = [v25 indexOfObject:{v31, v58, v61}];
      if (v35 != 0x7FFFFFFFFFFFFFFFLL)
      {
        [v25 removeObjectAtIndex:v35];
        [v25 insertObject:v31 atIndex:0];
      }

      if (v25)
      {
        [v10 setObject:v25 forKeyedSubscript:@"siriLangs"];
      }

      goto LABEL_83;
    }
  }

  else
  {
    v23 = 0;
  }

  CFStringGetTypeID();
  v24 = CFDictionaryGetTypedValue();
  if (!v24)
  {
    goto LABEL_84;
  }

  v25 = v24;
  v63 = v23;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  CFStringGetTypeID();
  sharedPreferences = CFDictionaryGetTypedValue();
  if (![sharedPreferences length])
  {
    sharedInstance = [(objc_class *)getAFLocalizationClass() sharedInstance];
    v29 = [sharedInstance voiceNamesForOutputLanguageCode:v25 gender:Int64Ranged];
    firstObject = [v29 firstObject];

    sharedPreferences = firstObject;
    v20 = v66;
  }

  v31 = [objc_alloc(getAFVoiceInfoClass()) initWithLanguageCode:v25 gender:Int64Ranged isCustom:0 name:sharedPreferences footprint:2 contentVersion:0 masteredVersion:0];
  if (([(__CFString *)v31 isValidForSiriSessionLanguage:v20]& 1) == 0)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      v60 = v20;
      v62 = v23;
      v57 = v25;
      LogPrintF();
    }

    goto LABEL_70;
  }

LABEL_83:

  v23 = v63;
LABEL_84:
  if (_os_feature_enabled_impl())
  {
    v36 = 4495;
  }

  else
  {
    v36 = 399;
  }

  v37 = SFDeviceSupportsTVAudio();
  v38 = v36 | 0x400;
  if (!v37)
  {
    v38 = v36;
  }

  v39 = 10240;
  if (self->_prefCDPEnabled)
  {
    v39 = 10256;
  }

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v39 | v38];
  [v10 setObject:v40 forKeyedSubscript:@"ff"];

  v41 = MGCopyAnswer();
  [v10 setObject:v41 forKeyedSubscript:@"hpBuildVersion"];
  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMHomeManager needsOSUpdateToRunHH2](self->_homeManager, "needsOSUpdateToRunHH2")}];
  [v10 setObject:v42 forKeyedSubscript:@"hh2SU"];

  v43 = MGCopyAnswer();
  [v10 setObject:v43 forKeyedSubscript:@"hp_bv"];

  v44 = MEMORY[0x277CBEC38];
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"sd_capa"];
  [v10 setObject:v44 forKeyedSubscript:@"sd_capa_v2"];
  [v10 setObject:v44 forKeyedSubscript:@"hds_tc_v2_"];
  [v10 setObject:v44 forKeyedSubscript:@"wr_v2"];
  canCompanionShowHomePodSU = CFDictionaryGetInt64() != 0;
  self->_canCompanionShowHomePodSU = canCompanionShowHomePodSU;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_98;
      }

      canCompanionShowHomePodSU = self->_canCompanionShowHomePodSU;
    }

    if (canCompanionShowHomePodSU)
    {
      v46 = "yes";
    }

    else
    {
      v46 = "no";
    }

    v57 = v46;
    v60 = v75;
    LogPrintF();
  }

LABEL_98:
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:{@"hds_n_h2", v57, v60}];
  v47 = CFDictionaryGetInt64();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  if (!self->_scanResults)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _handlePreAuthRequest:responseHandler:];
    }

    v50 = objc_opt_new();
    if (v47)
    {
      goto LABEL_106;
    }

LABEL_111:
    [v10 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"hds_hp_scn_res"];
    goto LABEL_112;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handlePreAuthRequest:responseHandler:];
  }

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSArray count](self->_scanResults, "count")}];
  scanResults = self->_scanResults;
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke;
  v71[3] = &unk_279714A60;
  v71[4] = self;
  v50 = v48;
  v72 = v50;
  [(NSArray *)scanResults enumerateObjectsUsingBlock:v71];

  if (!v47)
  {
    goto LABEL_111;
  }

LABEL_106:
  v51 = [v50 copy];
  [v10 setObject:v51 forKeyedSubscript:@"hds_hp_scn_res"];

LABEL_112:
  [v10 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"wr_w_p_c"];
  suControllerManager = [(HDSSetupService *)self suControllerManager];
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2;
  v67[3] = &unk_279714A88;
  v67[4] = self;
  v53 = v10;
  v68 = v53;
  v54 = v23;
  v69 = v54;
  v55 = handlerCopy;
  v70 = v55;
  [suControllerManager managerStatus:v67];
}

void __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) scanResultToDict:a2];
  [*(a1 + 40) addObject:v3];
}

void __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *(*(a1 + 32) + 368) = [v7 updateState];
  *(*(a1 + 32) + 364) = [*(a1 + 32) hdsSUStateForSUState];
  v10 = [*(a1 + 32) isHomePodSUNoSetup];
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize())
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_1();
    }

    if (gLogCategory_HDSSetupService <= 30)
    {
      if (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize())
      {
        __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_2();
      }

      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_3();
      }
    }
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:v10];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:@"unsetup_hp_su_start"];

  v12 = [MEMORY[0x277CCABB0] numberWithInt:*(*(a1 + 32) + 364)];
  [*(a1 + 40) setObject:v12 forKeyedSubscript:@"unsetup_hp_su_phase"];

  if (v9)
  {
    if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_4();
    }

    v13 = v9;
LABEL_15:
    v14 = v13;
    goto LABEL_29;
  }

  if (v10)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_6();
    }

    if ((*(*(a1 + 32) + 408) & 1) == 0)
    {
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_7();
      }

      v13 = NSErrorWithOSStatusF(4294896155, "Setup Blocked, HomePod SU");
      goto LABEL_15;
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_8();
    }
  }

  else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_5();
  }

  v14 = 0;
LABEL_29:
  [*(a1 + 40) setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"unsetup_hp_su_capable"];
  v15 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "homePodNeedsSUNoSetup")}];
  [*(a1 + 40) setObject:v15 forKeyedSubscript:@"unsetup_hp_needs_su"];

  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize())
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_9();
    }

    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService__handlePreAuthRequest_responseHandler___block_invoke_2_cold_10();
    }
  }

  v16 = [objc_opt_class() signpostLog];
  v17 = [*(a1 + 32) signpostID];
  if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = v17;
    if (os_signpost_enabled(v16))
    {
      *v19 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v16, OS_SIGNPOST_INTERVAL_END, v18, "PreAuth", "", v19, 2u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)_handleRawRequest:(id)request flags:(unsigned int)flags responseHandler:(id)handler
{
  v6 = *&flags;
  v22[1] = *MEMORY[0x277D85DE8];
  requestCopy = request;
  handlerCopy = handler;
  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleRawRequest:flags:responseHandler:];
  }

  if (Int64Ranged == 9)
  {
    if (v6)
    {
      [(HDSSetupService *)self _handleFinishRequest:requestCopy responseHandler:handlerCopy];
      goto LABEL_20;
    }

    v11 = -6768;
    if (gLogCategory_HDSSetupService > 60)
    {
      goto LABEL_17;
    }

    if (gLogCategory_HDSSetupService == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (Int64Ranged != 8)
  {
    if (gLogCategory_HDSSetupService <= 50)
    {
      [HDSSetupService _handleRawRequest:? flags:? responseHandler:?];
    }

    v11 = -6732;
    goto LABEL_17;
  }

  if ((v6 & 1) == 0)
  {
    v11 = -6768;
    if (gLogCategory_HDSSetupService > 60)
    {
      goto LABEL_17;
    }

    if (gLogCategory_HDSSetupService == -1 && !_LogCategory_Initialize())
    {
LABEL_30:
      v11 = -6768;
      goto LABEL_17;
    }

LABEL_31:
    [HDSSetupService _handleRawRequest:flags:responseHandler:];
    goto LABEL_30;
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleRawRequest:flags:responseHandler:];
  }

  v11 = [(HDSSetupService *)self _handleBasicConfigRequest:requestCopy];
  if (!v11)
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(HDSSetupService *)self _handleBasicConfigResponse:v12];
    handlerCopy[2](handlerCopy, v6, 0, v12);

    goto LABEL_20;
  }

LABEL_17:
  v13 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277CCA590];
  v15 = v11;
  v21 = *MEMORY[0x277CCA450];
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
  v17 = v16;
  v18 = @"?";
  if (v16)
  {
    v18 = v16;
  }

  v22[0] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v20 = [v13 errorWithDomain:v14 code:v15 userInfo:v19];
  (handlerCopy)[2](handlerCopy, v6, v20, 0);

LABEL_20:
}

- (void)_handleHomeScanRequest:(id)request responseHandler:(id)handler
{
  handlerCopy = handler;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _handleHomeScanRequest:responseHandler:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke;
  v9[3] = &unk_279714860;
  v9[4] = self;
  v10 = v6;
  v11 = handlerCopy;
  v7 = handlerCopy;
  v8 = v6;
  [(HDSSetupService *)self fetchScanResult:v9];
}

void __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 448);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_2;
  block[3] = &unk_279714860;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_async(v4, block);
}

void __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(*(*(a1 + 32) + 424), "count")}];
  v3 = *(a1 + 32);
  v4 = *(v3 + 424);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_3;
  v10 = &unk_279714A60;
  v11 = v3;
  v5 = v2;
  v12 = v5;
  [v4 enumerateObjectsUsingBlock:&v7];
  v6 = [v5 copy];
  [*(a1 + 40) setObject:v6 forKeyedSubscript:@"wp_hp_s_r"];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 48) + 16))();
}

void __58__HDSSetupService__handleHomeScanRequest_responseHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) scanResultToDict:a2];
  [*(a1 + 40) addObject:v3];
}

- (void)_handleSiriDialogIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = identifierCopy;
    if (gLogCategory_HDSSetupService != -1 || (identifierCopy = _LogCategory_Initialize(), v4 = v5, identifierCopy))
    {
      identifierCopy = [HDSSetupService _handleSiriDialogIdentifier:];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](identifierCopy, v4);
}

- (void)_playReadyToSetupSound
{
  v3 = objc_alloc_init(MEMORY[0x277D02828]);
  audioPlayer = self->_audioPlayer;
  self->_audioPlayer = v3;

  [(CUAudioPlayer *)self->_audioPlayer setDispatchQueue:self->_dispatchQueue];
  [(CUAudioPlayer *)self->_audioPlayer setLabel:@"HomePod Setup"];
  [(CUAudioPlayer *)self->_audioPlayer activate];
  v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeDeviceSetup"];
  v6 = [v5 URLForResource:@"HomePodReadyToSetUp-b238.m4a" withExtension:0];
  if (v6)
  {
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    v14 = 1056964608;
    if (([mEMORY[0x277D26E58] getVolume:&v14 forCategory:@"MediaPlayback"] & 1) == 0 && gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _playReadyToSetupSound];
    }

    LODWORD(v8) = 1059145646;
    if (([mEMORY[0x277D26E58] setVolumeTo:@"MediaPlayback" forCategory:v8] & 1) == 0 && gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _playReadyToSetupSound];
    }

    v9 = self->_audioPlayer;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__HDSSetupService__playReadyToSetupSound__block_invoke;
    v11[3] = &unk_279714AB0;
    v12 = mEMORY[0x277D26E58];
    v13 = v14;
    v10 = mEMORY[0x277D26E58];
    [(CUAudioPlayer *)v9 playURL:v6 completion:v11];
  }

  else if (gLogCategory_HDSSetupService <= 90 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _playReadyToSetupSound];
  }
}

uint64_t __41__HDSSetupService__playReadyToSetupSound__block_invoke(uint64_t a1, double a2)
{
  LODWORD(a2) = *(a1 + 40);
  result = [*(a1 + 32) setVolumeTo:@"MediaPlayback" forCategory:a2];
  if ((result & 1) == 0 && gLogCategory_HDSSetupService <= 90)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
      return __41__HDSSetupService__playReadyToSetupSound__block_invoke_cold_1();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      return __41__HDSSetupService__playReadyToSetupSound__block_invoke_cold_1();
    }
  }

  return result;
}

- (void)_setSiriInfo
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _setSiriInfo];
  }

  sharedPreferences = [(objc_class *)getAFPreferencesClass() sharedPreferences];
  [sharedPreferences setAssistantIsEnabled:!self->_siriDisabled];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _setSiriInfo];
  }

  if ((self->_siriDataSharingState - 5) <= 1)
  {
    v4 = objc_alloc_init(getAFSettingsConnectionClass());
    v5 = v4;
    if (self->_siriDataSharingState == 6)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [v4 setSiriDataSharingHomePodSetupDeviceIsValid:self->_siriDataSharingDeviceIsValid completion:0];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __31__HDSSetupService__setSiriInfo__block_invoke;
    v21[3] = &unk_279714AD8;
    v22 = v5;
    v23 = v6;
    v7 = v5;
    [v7 setSiriDataSharingOptInStatus:v6 propagateToHomeAccessories:0 source:5 reason:0 completion:v21];
  }

  if ([(NSString *)self->_siriListenLanguage length])
  {
    [sharedPreferences setLanguageCode:self->_siriListenLanguage];
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _setSiriInfo];
    }
  }

  if ([(NSString *)self->_siriVoiceName length])
  {
    v8 = self->_siriVoiceName;
  }

  else
  {
    v8 = 0;
  }

  if (self->_siriVoiceGender && [(NSString *)self->_siriVoiceLanguage length])
  {
    v9 = [objc_alloc(getAFVoiceInfoClass()) initWithLanguageCode:self->_siriVoiceLanguage gender:self->_siriVoiceGender isCustom:0 name:v8 footprint:2 contentVersion:0 masteredVersion:0];
    if (v9)
    {
      v10 = dispatch_semaphore_create(0);
      v11 = objc_alloc_init(getAFSettingsConnectionClass());
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __31__HDSSetupService__setSiriInfo__block_invoke_2;
      v19[3] = &unk_279713FF0;
      v12 = v10;
      v20 = v12;
      [v11 setOutputVoice:v9 withCompletion:v19];
      v13 = dispatch_time(0, 5000000000);
      v14 = dispatch_semaphore_wait(v12, v13);
      [sharedPreferences setOutputVoice:v9];
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        v17 = v8;
        v18 = v14;
        siriVoiceGender = self->_siriVoiceGender;
        siriVoiceLanguage = self->_siriVoiceLanguage;
        LogPrintF();
      }
    }

    else if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService _setSiriInfo];
    }
  }

  [sharedPreferences synchronize];
}

uint64_t __31__HDSSetupService__setSiriInfo__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = v2;
    if (gLogCategory_HDSSetupService != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = LogPrintF();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

intptr_t __31__HDSSetupService__setSiriInfo__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __31__HDSSetupService__setSiriInfo__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);

  return dispatch_semaphore_signal(v2);
}

- (void)_boostiTunesCloudDaemon
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService _boostiTunesCloudDaemon];
  }

  getICCloudClientClass();
  v3 = objc_opt_new();
  icClient = self->_icClient;
  self->_icClient = v3;

  v5 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HDSSetupService__boostiTunesCloudDaemon__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(v5, block);
}

uint64_t __42__HDSSetupService__boostiTunesCloudDaemon__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_HDSSetupService <= 90)
    {
      v5 = v2;
      if (gLogCategory_HDSSetupService != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
      {
        v2 = __42__HDSSetupService__boostiTunesCloudDaemon__block_invoke_2_cold_1();
LABEL_13:
        v3 = v5;
      }
    }
  }

  else if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = 0;
    if (gLogCategory_HDSSetupService != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = __42__HDSSetupService__boostiTunesCloudDaemon__block_invoke_2_cold_2();
      goto LABEL_13;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)_printBitMask:(int64_t)mask
{
  string = [MEMORY[0x277CCAB68] string];
  v5 = 32;
  v8 = string;
  do
  {
    if (mask)
    {
      v6 = @"1";
    }

    else
    {
      v6 = @"0";
    }

    v7 = [string insertString:v6 atIndex:0];
    string = v8;
    mask >>= 1;
    --v5;
  }

  while (v5);
  if (gLogCategory_HDSSetupService < 31)
  {
    if (gLogCategory_HDSSetupService != -1 || (v7 = _LogCategory_Initialize(), string = v8, v7))
    {
      v7 = [HDSSetupService _printBitMask:];
      string = v8;
    }
  }

  MEMORY[0x2821F96F8](v7, string);
}

- (int)hdsSUStateForSUState
{
  v2 = self->_suUpdateState - 1;
  if (v2 > 0x11)
  {
    return 0;
  }

  else
  {
    return dword_252FEDF78[v2];
  }
}

- (BOOL)isHomePodSUNoSetup
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [(HDSSetupService *)self isHomePodSUNoSetup];
  }

  return 0;
}

- (void)configureSUControllerManagerToFinish
{
  v3 = objc_alloc_init(MEMORY[0x277D64128]);
  [v3 setPerformAutoDownloadAndPrepare:1];
  [v3 setPerformAutoInstall:1];
  [v3 setAutoAcceptTermsAndConditions:1];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService configureSUControllerManagerToFinish];
  }

  suControllerManager = [(HDSSetupService *)self suControllerManager];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__HDSSetupService_configureSUControllerManagerToFinish__block_invoke;
  v6[3] = &unk_279714B00;
  v7 = v3;
  v5 = v3;
  [suControllerManager modifyConfig:v5 modifying:14 completion:v6];
}

void __55__HDSSetupService_configureSUControllerManagerToFinish__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)sendSUNoSetupSUInstallDonePeerEvent
{
  v9[5] = *MEMORY[0x277D85DE8];
  sfSession = self->_sfSession;
  v9[0] = &unk_2864E80D8;
  v8[0] = @"spe";
  v8[1] = @"hp_su_est_time";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_estTimeRemainingSUNoSetup];
  v5 = MEMORY[0x277CBEC38];
  v9[1] = v4;
  v9[2] = MEMORY[0x277CBEC38];
  v8[2] = @"unsetup_hp_su_start";
  v8[3] = @"unsetup_hp_su_phase";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_homePodSUNoSetupState];
  v8[4] = @"unsetup_hp_su_install_done";
  v9[3] = v6;
  v9[4] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:5];
  [(SFSession *)sfSession sendWithFlags:0 object:v7];
}

- (void)sendSUNoSetupSUStatusPeerEvent
{
  v8[4] = *MEMORY[0x277D85DE8];
  sfSession = self->_sfSession;
  v8[0] = &unk_2864E80D8;
  v7[0] = @"spe";
  v7[1] = @"hp_su_est_time";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_estTimeRemainingSUNoSetup];
  v8[1] = v4;
  v8[2] = MEMORY[0x277CBEC38];
  v7[2] = @"unsetup_hp_su_start";
  v7[3] = @"unsetup_hp_su_phase";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_homePodSUNoSetupState];
  v8[3] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  [(SFSession *)sfSession sendWithFlags:0 object:v6];
}

- (void)sendSUNoSetupErrorPeerEvent:(int64_t)event
{
  v8[3] = *MEMORY[0x277D85DE8];
  sfSession = self->_sfSession;
  v8[0] = &unk_2864E80D8;
  v7[0] = @"spe";
  v7[1] = @"unsetup_hp_sunosetup_error";
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:event];
  v7[2] = @"unsetup_hp_su_start";
  v8[1] = v5;
  v8[2] = MEMORY[0x277CBEC28];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [(SFSession *)sfSession sendWithFlags:0 object:v6];

  self->_canCompanionShowHomePodSU = 0;
}

- (void)wipeWifiConfig
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService wipeWifiConfig];
  }

  v3 = *(self->_progressHandler + 2);

  v3();
}

- (id)installProfileData:(id)data
{
  v3 = MEMORY[0x277D262A0];
  dataCopy = data;
  sharedConnection = [v3 sharedConnection];
  v9 = 0;
  v6 = [sharedConnection installProfileData:dataCopy options:0 outError:&v9];

  v7 = v9;
  if (v7)
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService installProfileData:];
    }
  }

  else if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService installProfileData:];
  }

  return v6;
}

- (void)removeSysDropProfile
{
  v20 = *MEMORY[0x277D85DE8];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService removeSysDropProfile];
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] installedProfilesWithFilterFlags:3];

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService removeSysDropProfile];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * v8);
        identifier = [v9 identifier];
        v11 = [identifier isEqualToString:@"com.apple.defaults.managed.homedevicesetup.logging"];

        if (v11)
        {
          if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupService removeSysDropProfile];
          }

          mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
          identifier2 = [v9 identifier];
          [mEMORY[0x277D262A0]2 removeProfileWithIdentifier:identifier2];
        }

        ++v8;
      }

      while (v6 != v8);
      v14 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v6 = v14;
    }

    while (v14);
  }
}

- (id)createScanParameters
{
  getCWFScanParametersClass(self, a2);
  v2 = objc_opt_new();
  [v2 setMergeScanResults:1];
  [v2 setAcceptableCacheAge:1000];
  [v2 setExclude6GChannels:1];
  [v2 setSortByAutoJoinPreference:1];

  return v2;
}

- (void)fetchScanResult
{
  if (!self->_scanInProgress)
  {
    [(HDSSetupService *)self fetchScanResult:&__block_literal_global_1016];
  }
}

void __34__HDSSetupService_fetchScanResult__block_invoke(uint64_t result, uint64_t a2)
{
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __34__HDSSetupService_fetchScanResult__block_invoke_cold_1();
  }
}

- (void)fetchScanResult:(id)result
{
  resultCopy = result;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService fetchScanResult:];
  }

  v5 = mach_absolute_time();
  self->_scanInProgress = 1;
  v6 = objc_alloc_init(getCWFInterfaceClass());
  [v6 activate];
  createScanParameters = [(HDSSetupService *)self createScanParameters];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__HDSSetupService_fetchScanResult___block_invoke;
  v10[3] = &unk_279714B50;
  v10[4] = self;
  v11 = v6;
  v12 = resultCopy;
  v13 = v5;
  v8 = resultCopy;
  v9 = v6;
  [v9 performScanWithParameters:createScanParameters reply:v10];
}

void __35__HDSSetupService_fetchScanResult___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  mach_absolute_time();
  UpTicksToSecondsF();
  if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    __35__HDSSetupService_fetchScanResult___block_invoke_cold_1(v6);
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 448);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSSetupService_fetchScanResult___block_invoke_2;
  block[3] = &unk_279714B28;
  block[4] = v8;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = *(a1 + 48);
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

uint64_t __35__HDSSetupService_fetchScanResult___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 440) = 0;
  if (*(a1 + 40))
  {
    if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __35__HDSSetupService_fetchScanResult___block_invoke_2_cold_1();
    }

    objc_storeStrong((*(a1 + 32) + 424), *(a1 + 48));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    [v2 invalidate];
  }

  v3 = *(*(a1 + 64) + 16);

  return v3();
}

- (id)scanResultToDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_opt_new();
  sSID = [dictCopy SSID];
  [v4 setObject:sSID forKeyedSubscript:@"hds_hp_scn_ssid"];

  bSSID = [dictCopy BSSID];
  [v4 setObject:bSSID forKeyedSubscript:@"hds_hp_scn_bssid"];

  v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(dictCopy, "RSSI")}];
  [v4 setObject:v7 forKeyedSubscript:@"hds_hp_scn_rssi"];

  networkName = [dictCopy networkName];
  [v4 setObject:networkName forKeyedSubscript:@"hds_hp_scn_nn"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(dictCopy, "isOpen")}];
  [v4 setObject:v9 forKeyedSubscript:@"hds_hp_scn_io"];

  v10 = MEMORY[0x277CCABB0];
  channel = [dictCopy channel];

  v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(channel, "channel")}];
  [v4 setObject:v12 forKeyedSubscript:@"hds_hp_scn_ch"];

  v13 = [v4 copy];

  return v13;
}

- (void)manager:(id)manager scanRequestDidLocateUpdate:(id)update error:(id)error
{
  managerCopy = manager;
  updateCopy = update;
  errorCopy = error;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v12 = updateCopy;
    v13 = errorCopy;
    LogPrintF();
  }

  if (errorCopy)
  {
    objc_storeStrong(&self->_errorForScanSUNoSetup, error);
    v10 = 1;
  }

  else
  {
    self->_scanFoundSUForSUNoSetup = 1;
    v10 = 3;
  }

  self->_suUpdateState = v10;
  self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState:v12];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  semaForScanFoundSU = self->_semaForScanFoundSU;
  if (semaForScanFoundSU)
  {
    dispatch_semaphore_signal(semaForScanFoundSU);
  }

  if (self->_scanFoundSUForSUNoSetup)
  {
    [(HDSSetupService *)self configureSUControllerManagerToFinish];
  }
}

- (void)manager:(id)manager scanRequestPostponed:(id)postponed error:(id)error
{
  managerCopy = manager;
  postponedCopy = postponed;
  errorCopy = error;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v10 = postponedCopy;
    v11 = errorCopy;
    LogPrintF();
  }

  self->_suUpdateState = 2;
  self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState:v10];
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)manager:(id)manager didChangeProgressOnDownload:(id)download
{
  managerCopy = manager;
  downloadCopy = download;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:didChangeProgressOnDownload:];
    if (downloadCopy)
    {
LABEL_5:
      self->_suUpdateState = 4;
      homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
      self->_homePodSUNoSetupState = homePodSUNoSetupState;
      if (gLogCategory_HDSSetupService <= 30)
      {
        if (gLogCategory_HDSSetupService == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_9;
          }

          homePodSUNoSetupState = self->_homePodSUNoSetupState;
        }

        suUpdateState = self->_suUpdateState;
        v14 = homePodSUNoSetupState;
        LogPrintF();
      }

LABEL_9:
      v8 = objc_alloc(MEMORY[0x277CBEAA8]);
      progress = [downloadCopy progress];
      [progress estimatedTimeRemaining];
      v10 = [v8 initWithTimeIntervalSinceNow:?];

      if (v10 == self->_estFinishTimeSUNoSetup)
      {
        if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupService manager:didChangeProgressOnDownload:];
        }
      }

      else
      {
        objc_storeStrong(&self->_estFinishTimeSUNoSetup, v10);
        progress2 = [downloadCopy progress];
        [progress2 estimatedTimeRemaining];
        self->_estTimeRemainingSUNoSetup = v12;

        if ([(HDSSetupService *)self canSendPeerUpdates])
        {
          if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupService manager:didChangeProgressOnDownload:];
          }

          [(HDSSetupService *)self sendSUNoSetupSUStatusPeerEvent:suUpdateState];
        }

        else
        {
          if (!self->_canCompanionShowHomePodSU && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupService manager:didChangeProgressOnDownload:];
          }

          if ((!self->_sfSession || [(SFService *)self->_sfService needsSetup]) && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupService manager:didChangeProgressOnDownload:];
          }
        }
      }

      goto LABEL_35;
    }
  }

  else if (downloadCopy)
  {
    goto LABEL_5;
  }

  if ([(HDSSetupService *)self canSendPeerUpdates])
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService manager:didChangeProgressOnDownload:];
    }

    [(HDSSetupService *)self sendSUNoSetupErrorPeerEvent:903];
    [(HDSSetupService *)self wipeWifiConfig];
    self->_suUpdateState = 1;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  }

LABEL_35:
}

- (void)manager:(id)manager didFailDownload:(id)download withError:(id)error
{
  managerCopy = manager;
  downloadCopy = download;
  errorCopy = error;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v10 = downloadCopy;
    v11 = errorCopy;
    LogPrintF();
  }

  if (errorCopy)
  {
    self->_suUpdateState = 1;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
    if ([(HDSSetupService *)self canSendPeerUpdates])
    {
      -[HDSSetupService sendSUNoSetupErrorPeerEvent:](self, "sendSUNoSetupErrorPeerEvent:", [errorCopy code]);
    }

    [(HDSSetupService *)self wipeWifiConfig:v10];
  }

  else
  {
    self->_suUpdateState = 4;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)manager:(id)manager didFinishDownload:(id)download
{
  managerCopy = manager;
  downloadCopy = download;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:didFinishDownload:];
  }

  self->_suUpdateState = 8;
  homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  self->_homePodSUNoSetupState = homePodSUNoSetupState;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_6:
      suUpdateState = self->_suUpdateState;
      v13 = homePodSUNoSetupState;
      LogPrintF();
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      homePodSUNoSetupState = self->_homePodSUNoSetupState;
      goto LABEL_6;
    }
  }

LABEL_8:
  [(HDSSetupService *)self configureSUControllerManagerToFinish:suUpdateState];
  progress = [downloadCopy progress];
  isDone = [progress isDone];

  if (isDone)
  {
    suControllerManager = self->_suControllerManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __45__HDSSetupService_manager_didFinishDownload___block_invoke;
    v14[3] = &unk_279714B78;
    v14[4] = self;
    [(SUControllerManager *)suControllerManager managerState:v14];
  }
}

void __45__HDSSetupService_manager_didFinishDownload___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (v6 && [*(a1 + 32) canSendPeerUpdates])
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __45__HDSSetupService_manager_didFinishDownload___block_invoke_cold_1();
    }

    [*(a1 + 32) sendSUNoSetupErrorPeerEvent:{objc_msgSend(v6, "code")}];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __45__HDSSetupService_manager_didFinishDownload___block_invoke_cold_2();
    }

    [*(*(a1 + 32) + 472) installUpdate:v7];
  }
}

- (void)manager:(id)manager didChangeProgressOnApply:(id)apply progress:(id)progress
{
  managerCopy = manager;
  applyCopy = apply;
  progressCopy = progress;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v14 = applyCopy;
    v16 = progressCopy;
    LogPrintF();
  }

  self->_suUpdateState = 9;
  homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState:v14];
  self->_homePodSUNoSetupState = homePodSUNoSetupState;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_7:
      suUpdateState = self->_suUpdateState;
      v17 = homePodSUNoSetupState;
      LogPrintF();
      goto LABEL_9;
    }

    if (_LogCategory_Initialize())
    {
      homePodSUNoSetupState = self->_homePodSUNoSetupState;
      goto LABEL_7;
    }
  }

LABEL_9:
  v11 = objc_alloc(MEMORY[0x277CBEAA8]);
  [progressCopy estimatedTimeRemaining];
  v12 = [v11 initWithTimeIntervalSinceNow:?];
  if (v12 == self->_estFinishTimeSUNoSetup)
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupService manager:didChangeProgressOnApply:progress:];
    }
  }

  else
  {
    objc_storeStrong(&self->_estFinishTimeSUNoSetup, v12);
    [progressCopy estimatedTimeRemaining];
    self->_estTimeRemainingSUNoSetup = v13;
    if ([(HDSSetupService *)self canSendPeerUpdates])
    {
      if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService manager:didChangeProgressOnApply:progress:];
      }

      [(HDSSetupService *)self sendSUNoSetupSUStatusPeerEvent:suUpdateState];
    }

    else
    {
      if (!self->_canCompanionShowHomePodSU && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService manager:didChangeProgressOnApply:progress:];
      }

      if ((!self->_sfSession || [(SFService *)self->_sfService needsSetup]) && gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupService manager:didChangeProgressOnApply:progress:];
      }
    }
  }
}

- (void)manager:(id)manager didFailInstallation:(id)installation withError:(id)error
{
  managerCopy = manager;
  installationCopy = installation;
  errorCopy = error;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v12 = installationCopy;
    v13 = errorCopy;
    LogPrintF();
  }

  if (errorCopy)
  {
    self->_suUpdateState = 1;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
    if ([(HDSSetupService *)self canSendPeerUpdates])
    {
      -[HDSSetupService sendSUNoSetupErrorPeerEvent:](self, "sendSUNoSetupErrorPeerEvent:", [errorCopy code]);
    }

    suControllerManager = self->_suControllerManager;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__HDSSetupService_manager_didFailInstallation_withError___block_invoke;
    v14[3] = &unk_279714198;
    v14[4] = self;
    [(SUControllerManager *)suControllerManager purgeUpdate:installationCopy completion:v14, v12, v13];
  }

  else
  {
    self->_suUpdateState = 9;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

uint64_t __57__HDSSetupService_manager_didFailInstallation_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __57__HDSSetupService_manager_didFailInstallation_withError___block_invoke_cold_2();
    }

    v3 = [*(a1 + 32) wipeWifiConfig];
    goto LABEL_10;
  }

  if (gLogCategory_HDSSetupService <= 90)
  {
    v6 = v3;
    if (gLogCategory_HDSSetupService != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3))
    {
      v3 = __57__HDSSetupService_manager_didFailInstallation_withError___block_invoke_cold_1();
LABEL_10:
      v4 = v6;
    }
  }

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)manager:(id)manager didFinishInstallation:(id)installation
{
  managerCopy = manager;
  installationCopy = installation;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:didFinishInstallation:];
  }

  self->_suUpdateState = 10;
  homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  self->_homePodSUNoSetupState = homePodSUNoSetupState;
  if (gLogCategory_HDSSetupService <= 30)
  {
    if (gLogCategory_HDSSetupService != -1)
    {
LABEL_6:
      suUpdateState = self->_suUpdateState;
      v9 = homePodSUNoSetupState;
      LogPrintF();
      goto LABEL_8;
    }

    if (_LogCategory_Initialize())
    {
      homePodSUNoSetupState = self->_homePodSUNoSetupState;
      goto LABEL_6;
    }
  }

LABEL_8:
  [(HDSSetupService *)self configureSUControllerManagerToFinish:suUpdateState];
  [(HDSSetupService *)self sendSUNoSetupSUInstallDonePeerEvent];
}

- (void)manager:(id)manager didFinishDownload:(id)download willProceedWithInstallation:(BOOL)installation waitingForAdmissionControl:(BOOL)control
{
  controlCopy = control;
  installationCopy = installation;
  managerCopy = manager;
  downloadCopy = download;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v12 = "no";
    if (installationCopy)
    {
      v13 = "yes";
    }

    else
    {
      v13 = "no";
    }

    if (controlCopy)
    {
      v12 = "yes";
    }

    v18 = v13;
    v19 = v12;
    v17 = downloadCopy;
    LogPrintF();
  }

  progress = [downloadCopy progress];
  isDone = [progress isDone];

  if (isDone)
  {
    suControllerManager = self->_suControllerManager;
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __100__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl___block_invoke;
    v20[3] = &unk_279714B78;
    v20[4] = self;
    [(SUControllerManager *)suControllerManager managerState:v20];
  }

  else
  {
    self->_suUpdateState = 4;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:didFinishDownload:willProceedWithInstallation:waitingForAdmissionControl:];
  }

  [(HDSSetupService *)self configureSUControllerManagerToFinish];
}

void __100__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (v6 && [*(a1 + 32) canSendPeerUpdates])
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __100__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl___block_invoke_cold_1();
    }

    [*(a1 + 32) sendSUNoSetupErrorPeerEvent:{objc_msgSend(v6, "code")}];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __100__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl___block_invoke_cold_2();
    }

    [*(*(a1 + 32) + 472) installUpdate:v7];
  }
}

- (void)manager:(id)manager didFinishDownload:(id)download willProceedWithInstallation:(BOOL)installation waitingForAdmissionControl:(BOOL)control denialReasons:(id)reasons
{
  controlCopy = control;
  installationCopy = installation;
  managerCopy = manager;
  downloadCopy = download;
  reasonsCopy = reasons;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v15 = "no";
    if (installationCopy)
    {
      v16 = "yes";
    }

    else
    {
      v16 = "no";
    }

    if (controlCopy)
    {
      v15 = "yes";
    }

    v22 = v15;
    v23 = reasonsCopy;
    v20 = downloadCopy;
    v21 = v16;
    LogPrintF();
  }

  progress = [downloadCopy progress];
  isDone = [progress isDone];

  if (isDone)
  {
    suControllerManager = self->_suControllerManager;
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __114__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl_denialReasons___block_invoke;
    v24[3] = &unk_279714B78;
    v24[4] = self;
    [(SUControllerManager *)suControllerManager managerState:v24];
  }

  else
  {
    self->_suUpdateState = 4;
    self->_homePodSUNoSetupState = [(HDSSetupService *)self hdsSUStateForSUState];
  }

  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:didFinishDownload:willProceedWithInstallation:waitingForAdmissionControl:denialReasons:];
  }

  [(HDSSetupService *)self configureSUControllerManagerToFinish];
}

void __114__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl_denialReasons___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v6 = a4;
  if (v6 && [*(a1 + 32) canSendPeerUpdates])
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __114__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl_denialReasons___block_invoke_cold_1();
    }

    [*(a1 + 32) sendSUNoSetupErrorPeerEvent:{objc_msgSend(v6, "code")}];
  }

  else
  {
    if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
    {
      __114__HDSSetupService_manager_didFinishDownload_willProceedWithInstallation_waitingForAdmissionControl_denialReasons___block_invoke_cold_2();
    }

    [*(*(a1 + 32) + 472) installUpdate:v7];
  }
}

- (void)manager:(id)manager connectionError:(id)error
{
  managerCopy = manager;
  errorCopy = error;
  if (gLogCategory_HDSSetupService <= 30 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupService manager:connectionError:];
  }
}

- (void)connectionRegained:(id)regained
{
  regainedCopy = regained;
  v4 = regainedCopy;
  if (gLogCategory_HDSSetupService <= 30)
  {
    v5 = regainedCopy;
    if (gLogCategory_HDSSetupService != -1 || (regainedCopy = _LogCategory_Initialize(), v4 = v5, regainedCopy))
    {
      regainedCopy = [HDSSetupService connectionRegained:];
      v4 = v5;
    }
  }

  MEMORY[0x2821F96F8](regainedCopy, v4);
}

void __34__HDSSetupService__sfServiceStart__block_invoke_345_cold_1(void *a1)
{
  v1 = [a1 identifier];
  LogPrintF();
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF();
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

- (uint64_t)_handleAuthActionSiriStart:(void *)a1 response:(uint64_t)a2 responseHandler:(uint64_t)a3 .cold.2(void *a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HDSSetupService <= 60 && (gLogCategory_HDSSetupService != -1 || _LogCategory_Initialize()))
  {
    v9 = a3;
    LogPrintF();
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInt:{4294960551, v9}];
  [a1 setObject:v6 forKeyedSubscript:@"er"];

  v7 = *(a2 + 16);

  return v7(a2, 0, 0, a1);
}

- (uint64_t)_handleRawRequest:(int)a1 flags:responseHandler:.cold.4(int a1)
{
  if (a1 != -1)
  {
    return LogPrintF();
  }

  result = _LogCategory_Initialize();
  if (result)
  {
    return LogPrintF();
  }

  return result;
}

- (void)isHomePodSUNoSetup
{
  v1 = SUControllerStringForManagerState();
  LogPrintF();
}

@end