@interface HDSSetupSession
+ (OS_os_log)signpostLog;
- (BOOL)_isPreflightError:(id)error;
- (BOOL)_isVoiceRecognitionSupported;
- (BOOL)_recognizeVoiceAlreadyEnabled;
- (BOOL)_roomHasOdeonConfig:(id)config;
- (BOOL)_shouldShowPRCardForHomePodsInRoom;
- (BOOL)homePodNeedsSUBeforeSetup;
- (BOOL)isJSEnabled;
- (BOOL)selectedRoomHasHomePods;
- (BOOL)shouldDoSysDrop:(unsigned int)drop;
- (BOOL)shouldShowHomePodSoftwareUpdateAvailable;
- (BOOL)showWiFiPicker;
- (BOOL)userAtHomeLocation:(id)location;
- (HDSSetupSession)init;
- (NSString)selectedSiriLanguageCode;
- (_BYTE)_recognizeVoiceAlreadyEnabled;
- (id)_homeKitFindSettingsWithKeyPath:(id)path group:(id)group;
- (id)_homePodsInAccount;
- (id)_homePodsInSelectedHome;
- (id)_selectedRoomAllHomePods;
- (id)_selectedRoomAllStereoPairs;
- (id)_selectedRoomHomePod;
- (id)createErrorDictionary:(unsigned int)dictionary ssid:(id)ssid;
- (id)createWiFiConfigurationForSetup:(id)setup password:(id)password;
- (id)dictForNetworkName:(id)name;
- (id)fetchAltDSIDAccount;
- (id)fetchPhonesSSID;
- (id)fetchTermsInfo;
- (id)filterNetworksForHomePod:(id)pod;
- (id)lastSSIDUsed;
- (id)passwordForSSID:(id)d;
- (id)selectedRoom;
- (int)_enableSiriForPersonalRequestIfNecessary;
- (int)_runAppleMusic;
- (int)_runAudioPasscode;
- (int)_runAuthKitTrustFinish;
- (int)_runAutomaticSoftwareUpdate;
- (int)_runBackgroundActivation;
- (int)_runBasicConfig;
- (int)_runBonjourTest;
- (int)_runCDPSetup:(BOOL)setup;
- (int)_runCaptiveJoin;
- (int)_runCheckAccount;
- (int)_runDataAndPrivacy;
- (int)_runFinishStart;
- (int)_runForcedHomePodSoftwareUpdateNonSetup;
- (int)_runHH2Upsell;
- (int)_runHomeKitPrimarySSIDFetch;
- (int)_runHomeKitSetup;
- (int)_runHomeKitSetupMode;
- (int)_runHomeKitUserInput;
- (int)_runHomePodLoggingProfileTransfer;
- (int)_runHomePodLoggingProfileTransferAck;
- (int)_runHomePodScanFetch;
- (int)_runHomePodSoftwareUpdate;
- (int)_runHomePodSoftwareUpdateNonSetupAcknowledgement;
- (int)_runHomePodSoftwareUpdateNonSetupCancelled;
- (int)_runHomePodSoftwareUpdateNonSetupComplete;
- (int)_runLEDPassCodeAlignment;
- (int)_runMultiUserEnable;
- (int)_runPairSetup;
- (int)_runPersonalRequests;
- (int)_runPreAuth;
- (int)_runPreAuthAlignmentAndSiri;
- (int)_runPreflightCDP;
- (int)_runPreflightJSCheck;
- (int)_runPreflightMisc;
- (int)_runPreflightSSIDCheck;
- (int)_runPreflightWiFi;
- (int)_runPreflightiCloud;
- (int)_runPreflightiTunes;
- (int)_runRecognizeVoice;
- (int)_runSFSessionStart;
- (int)_runSetLanguage;
- (int)_runSetSessionID;
- (int)_runSetupPSG;
- (int)_runShareSettings;
- (int)_runSiriEnablementConfigurationFetch;
- (int)_runSiriForEveryone;
- (int)_runSiriLanguage;
- (int)_runSiriPasscode;
- (int)_runSoftwareUpdate;
- (int)_runSoundRecognition;
- (int)_runStereoPairUserInput;
- (int)_runTRActivation;
- (int)_runTRAuthentication:(id)authentication;
- (int)_runTROtherAuthentication;
- (int)_runTRSessionStart;
- (int)_runTRSetupConfiguration;
- (int)_runTRiCloudAuthentication;
- (int)_runTVAudioUserInput;
- (int)_runTerms;
- (int)_runWiFiPassword;
- (int)_runWiFiPicker;
- (int)_runWiFiSetup;
- (int)_runWiFiSummaryCard;
- (int)exportAMSTokenAndAccountSetup:(id)setup ifMissing:(BOOL)missing ifInvalid:(BOOL)invalid;
- (int)expressSetupState;
- (int)isHomePodProductVersionParis:(id)paris;
- (int)wifiTypeForString:(id)string;
- (int64_t)roomHomePodStereoPairCount;
- (unint64_t)_peerDeviceSupportedStereoPairVersions;
- (unint64_t)signpostID;
- (void)_activate;
- (void)_cleanup;
- (void)_cleanupSession;
- (void)_getSiriEnablementConfiguration;
- (void)_handlePeerEvent:(id)event flags:(unsigned int)flags;
- (void)_homeKitUpdateiCloudSwitchState:(BOOL)state;
- (void)_invalidate;
- (void)_logErrorMetrics:(id)metrics inLabel:(id)label;
- (void)_logHomeKitPerformanceMetrics;
- (void)_logMetrics:(id)metrics;
- (void)_logMetricsForSoftError:(id)error label:(id)label;
- (void)_logPerformanceMetrics:(id)metrics;
- (void)_logUsageMetrics:(id)metrics;
- (void)_logWiFiRetryMetrics:(id)metrics;
- (void)_logiTunesAuthRetryMetrics:(id)metrics durationSeconds:(double)seconds authType:(int)type retryAttempt:(int)attempt;
- (void)_preflightAppleMusicCompleted:(int)completed;
- (void)_promptForPINWithFlags:(unsigned int)flags throttleSeconds:(int)seconds;
- (void)_recognizeVoiceAlreadyEnabled;
- (void)_reportError:(id)error label:(id)label;
- (void)_reportErrorWithExtaInfo:(id)info label:(id)label dict:(id)dict;
- (void)_run;
- (void)_runAudioPasscodeCleanup:(BOOL)cleanup;
- (void)_runAudioPasscodeHandleData:(id)data;
- (void)_runAudioPasscodeInitRequest;
- (void)_runAudioPasscodeInitResponse:(id)response error:(id)error;
- (void)_runAudioPasscodeLogMetrics;
- (void)_runAudioPasscodeStartRequest;
- (void)_runAudioPasscodeStartResponse:(id)response error:(id)error;
- (void)_runAudioPasscodeStopRequest;
- (void)_runAudioPasscodeTimeout;
- (void)_runAuthKitTrustStartIfNeeded;
- (void)_runBasicConfigReceiveResponse:(id)response error:(id)error;
- (void)_runBasicConfigSendRequest;
- (void)_runFinishRequest;
- (void)_runFinishResponse:(id)response error:(id)error;
- (void)_runHomeKitPrimarySSIDFetch;
- (void)_runHomePodSoftwareUpdate;
- (void)_runMultiUserEnableEnableSettingStart:(id)start privateSettings:(BOOL)settings;
- (void)_runMultiUserEnableHome;
- (void)_runPersonalRequestsSkipCard;
- (void)_runPreAuthRequest;
- (void)_runPreAuthResponse:(id)response error:(id)error;
- (void)_runPreflightMisc;
- (void)_runRecognizeVoiceCheckLanguageResponse:(id)response error:(id)error;
- (void)_runRecognizeVoiceCheckLanguageStart;
- (void)_runRecognizeVoiceCheckVoiceProfileResponse:(BOOL)response error:(id)error;
- (void)_runRecognizeVoiceCheckVoiceProfileStart;
- (void)_runSetLanguage;
- (void)_runSiriLanguage;
- (void)_runSiriPasscodeInitRequest;
- (void)_runSiriPasscodeInitResponse:(id)response error:(id)error;
- (void)_runSiriPasscodeStartPairSetup;
- (void)_runStereoPairUserInputPickColors:(BOOL)colors;
- (void)_setupAudio;
- (void)_speakPasscodeWithInstructions:(id)instructions languageCode:(id)code completion:(id)completion;
- (void)_startSysDropLoggingProfileRequest;
- (void)_startSysDropMode:(id)mode;
- (void)_startSysDropSysdiagnoseRequest:(id)request;
- (void)_updateSFSessionErrorHandlerForSUBS;
- (void)acceptSelectSameWrongLocation;
- (void)activate;
- (void)appleMusicNext;
- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error;
- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully;
- (void)audioSessionInterrupted:(id)interrupted;
- (void)automaticSoftwareUpdatesAgreed:(BOOL)agreed;
- (void)cancelSoftwareUpdateNoSetup;
- (void)captiveConfirmed;
- (void)createHomeInSameLocation;
- (void)createNewHomeWithName:(id)name;
- (void)dataAndPrivacyAgreed;
- (void)dealloc;
- (void)didDismiss;
- (void)disconnect;
- (void)fetchHomePodLoggingProfile:(id)profile;
- (void)fetchLocationServicesEnabled;
- (void)fetchTermsAndConditionsServerStatus;
- (void)forceCLIPassCode:(id)code;
- (void)forcePassCode:(id)code;
- (void)homeAppInstallChoice:(BOOL)choice;
- (void)homeKitReselectHome;
- (void)homeKitSelectHome:(id)home;
- (void)homeKitSelectRoom:(id)room;
- (void)homeKitStartHomeNameCreation:(BOOL)creation namingIssue:(int)issue;
- (void)homePodLoggingProfileSelected:(int)selected;
- (void)homePodSoftwareUpdateNonSetupAcknowledged;
- (void)homePodSoftwareUpdateNonSetupDidComplete;
- (void)homeiCloudEnable;
- (void)identifyHomePod:(id)pod;
- (void)invalidate;
- (void)isDeviceActiveFetch;
- (void)ledPasscodeMatched;
- (void)loadMultiUserSupportedLanguages;
- (void)locationEnable:(BOOL)enable;
- (void)logMetricsForDismissal:(id)dismissal dismissType:(int)type cardName:(id)name cardDuration:(unint64_t)duration;
- (void)pairSetupTryPIN:(id)n;
- (void)personalRequestsEnabled:(BOOL)enabled;
- (void)playAudioPasscodeAgain;
- (void)preflight;
- (void)preflightAppleMusic;
- (void)preflightCheckPhonesNetwork;
- (void)psgSelected:(BOOL)selected;
- (void)recognizeVoiceAnswered:(BOOL)answered;
- (void)removeSysDropProfile;
- (void)reportMetricsOnWiFiDismissal;
- (void)resetToHomeSelection;
- (void)resetWiFiPicker:(BOOL)picker;
- (void)runHomeKitSUPreAuthResponse:(id)response;
- (void)runPersonalRequestsAgreedCLI:(BOOL)i makeActiveDevice:(BOOL)device;
- (void)runSUNoSetupPreAuthResponse:(id)response;
- (void)shareSettingsAgreed;
- (void)showMeDeviceSwitchWithDevice:(id)device session:(id)session siriEnabled:(BOOL)enabled activeDeviceEnabled:(BOOL)deviceEnabled;
- (void)siriCheck:(BOOL)check;
- (void)siriEnable;
- (void)siriForEveryoneAnswered;
- (void)siriForiCloudRecognizeAnswered:(BOOL)answered;
- (void)siriLanguagePicked:(id)picked;
- (void)siriVoicePicked:(id)picked;
- (void)skipAudioPasscode;
- (void)skipiTunesSignIn;
- (void)softwareUpdateAgreed:(BOOL)agreed;
- (void)soundRecognitionAgreed:(BOOL)agreed;
- (void)speakPasscodeWithCompletion:(id)completion;
- (void)speakPasscodeWithInstructions:(id)instructions completion:(id)completion;
- (void)speakPasscodeWithInstructions:(id)instructions languageCode:(id)code completion:(id)completion;
- (void)speakPasscodeWithLanguageCode:(id)code completion:(id)completion;
- (void)stereoMultiplePicked:(id)picked;
- (void)stereoRolePicked:(int)picked;
- (void)termsAgreed;
- (void)tvAudioEnabled:(BOOL)enabled;
- (void)validateHomeName:(id)name completion:(id)completion;
- (void)wiFiAcknowledged;
- (void)wiFiRetry;
- (void)wiFiSelected:(id)selected;
- (void)wifiPasswordSelected:(id)selected;
@end

@implementation HDSSetupSession

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HDSSetupSession_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_2 != -1)
  {
    dispatch_once(&signpostLog_onceToken_2, block);
  }

  v2 = signpostLog_log_2;

  return v2;
}

void __30__HDSSetupSession_signpostLog__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.HomeDeviceSetup.signposts", [v4 UTF8String]);
  v3 = signpostLog_log_2;
  signpostLog_log_2 = v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (HDSSetupSession)init
{
  v14.receiver = self;
  v14.super_class = HDSSetupSession;
  v2 = [(HDSSetupSession *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_amsOptimizationSecs = 0.0;
    v4 = CUMainQueue();
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_proxSetupActiveToken = -1;
    v3->_homePodSUState = 0;
    v3->_automaticSoftwareUpdateAgreed = 0;
    v3->_softwareUpdateAgreed = 0;
    v3->_odeonState = 0;
    v3->_rmvSelectionState = 0;
    *&v3->_siriSettingState = 0u;
    v6 = objc_alloc_init(SysDropSession);
    sysDropSession = v3->_sysDropSession;
    v3->_sysDropSession = v6;

    v8 = objc_alloc_init(getCWFInterfaceClass_0());
    wifiInterface = v3->_wifiInterface;
    v3->_wifiInterface = v8;

    [(CWFInterface *)v3->_wifiInterface activate];
    currentStageLabel = v3->_currentStageLabel;
    v3->_currentStageLabel = @"Unactivated";

    sessionID = v3->_sessionID;
    v3->_sessionID = @"?";

    v3->_wifiSetupType = 99;
    v12 = v3;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SysDropSession dealloc];
    [(HDSSetupSession *)v3 _cleanup];
  }

  else
  {
    [(HDSSetupSession *)self _cleanup];
    v5.receiver = self;
    v5.super_class = HDSSetupSession;
    [(HDSSetupSession *)&v5 dealloc];
  }
}

- (void)_cleanup
{
  proxSetupActiveToken = self->_proxSetupActiveToken;
  if (proxSetupActiveToken != -1)
  {
    notify_set_state(proxSetupActiveToken, 0);
    notify_post("com.apple.sharing.wha-prox-setup");
    notify_cancel(self->_proxSetupActiveToken);
    self->_proxSetupActiveToken = -1;
  }

  [(HDSSetupSession *)self _cleanupSession];
  wifiInterface = self->_wifiInterface;
  if (wifiInterface)
  {
    [(CWFInterface *)wifiInterface invalidate];
  }

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
    v6 = self->_progressHandler;
  }

  else
  {
    v6 = 0;
  }

  self->_progressHandler = 0;

  cdpEncryptionHelper = self->_cdpEncryptionHelper;
  self->_cdpEncryptionHelper = 0;

  presentingViewController = self->_presentingViewController;
  self->_presentingViewController = 0;

  preAuthHandler = self->_preAuthHandler;
  self->_preAuthHandler = 0;

  promptForAppleMusicHandler = self->_promptForAppleMusicHandler;
  self->_promptForAppleMusicHandler = 0;

  promptForHomeHandler = self->_promptForHomeHandler;
  self->_promptForHomeHandler = 0;

  promptForHomeNameCreationHandler = self->_promptForHomeNameCreationHandler;
  self->_promptForHomeNameCreationHandler = 0;

  promptForHomeInSameLocationHandler = self->_promptForHomeInSameLocationHandler;
  self->_promptForHomeInSameLocationHandler = 0;

  promptForHomeiCloudHandler = self->_promptForHomeiCloudHandler;
  self->_promptForHomeiCloudHandler = 0;

  promptForiTunesSignInHandler = self->_promptForiTunesSignInHandler;
  self->_promptForiTunesSignInHandler = 0;

  promptForLocationEnableHandler = self->_promptForLocationEnableHandler;
  self->_promptForLocationEnableHandler = 0;

  promptForPersonalRequestsHandler = self->_promptForPersonalRequestsHandler;
  self->_promptForPersonalRequestsHandler = 0;

  promptForPINHandler = self->_promptForPINHandler;
  self->_promptForPINHandler = 0;

  promptForRoomHandlerDetailed = self->_promptForRoomHandlerDetailed;
  self->_promptForRoomHandlerDetailed = 0;

  promptForSiriEnableHandler = self->_promptForSiriEnableHandler;
  self->_promptForSiriEnableHandler = 0;

  promptForSoundRecognitionHandler = self->_promptForSoundRecognitionHandler;
  self->_promptForSoundRecognitionHandler = 0;

  promptForTermsHandler = self->_promptForTermsHandler;
  self->_promptForTermsHandler = 0;

  promptToInstallHomeAppHandler = self->_promptToInstallHomeAppHandler;
  self->_promptToInstallHomeAppHandler = 0;

  promptToShareSettingsHandler = self->_promptToShareSettingsHandler;
  self->_promptToShareSettingsHandler = 0;

  promptForSiriLanguageHandler = self->_promptForSiriLanguageHandler;
  self->_promptForSiriLanguageHandler = 0;

  promptForStereoRoleHandler = self->_promptForStereoRoleHandler;
  self->_promptForStereoRoleHandler = 0;

  promptForStereoMultipleHandler = self->_promptForStereoMultipleHandler;
  self->_promptForStereoMultipleHandler = 0;

  promptForTVAudioHandler = self->_promptForTVAudioHandler;
  self->_promptForTVAudioHandler = 0;

  v29 = self->_wifiInterface;
  self->_wifiInterface = 0;
}

- (void)_cleanupSession
{
  v25 = *MEMORY[0x277D85DE8];
  sysDropSession = self->_sysDropSession;
  if (sysDropSession)
  {
    [(SysDropSession *)sysDropSession invalidate];
  }

  [(HDSSetupSession *)self _runAudioPasscodeCleanup:1];
  [(TROperationQueue *)self->_trOperationQueue invalidate];
  trOperationQueue = self->_trOperationQueue;
  self->_trOperationQueue = 0;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_trOperations;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        [v10 cancel];
        [v10 setCompletionBlock:0];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  [(NSMutableArray *)self->_trOperations removeAllObjects];
  trOperations = self->_trOperations;
  self->_trOperations = 0;

  [(TRSession *)self->_trSession setDisconnectHandler:0];
  [(TRSession *)self->_trSession disconnect];
  trSession = self->_trSession;
  self->_trSession = 0;

  self->_trAuthenticationStateReset = 0;
  [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
  cdpSetupOperation = self->_cdpSetupOperation;
  self->_cdpSetupOperation = 0;

  [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation invalidate];
  homeKitSetupOperation = self->_homeKitSetupOperation;
  self->_homeKitSetupOperation = 0;

  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
  wifiSetupOperation = self->_wifiSetupOperation;
  self->_wifiSetupOperation = 0;

  [(HDSBonjourTest *)self->_bonjourTestOperation invalidate];
  bonjourTestOperation = self->_bonjourTestOperation;
  self->_bonjourTestOperation = 0;

  [(SFDeviceOperationCNJSetup *)self->_captiveJoin invalidate];
  captiveJoin = self->_captiveJoin;
  self->_captiveJoin = 0;

  [(SFSession *)self->_sfSession invalidate];
  sfSession = self->_sfSession;
  self->_sfSession = 0;

  preferredWiFiConfig = self->_preferredWiFiConfig;
  self->_preferredWiFiConfig = 0;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__HDSSetupSession_activate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __27__HDSSetupSession_activate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[8] == 1)
  {
    return [v1 _run];
  }

  else
  {
    return [v1 _activate];
  }
}

- (void)_activate
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _activate];
  }

  v78 = 0;
  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"Activated";

  self->_activateCalled = 1;
  self->_startTicks = mach_absolute_time();
  notify_register_check("com.apple.sharing.wha-prox-setup", &self->_proxSetupActiveToken);
  notify_set_state(self->_proxSetupActiveToken, 1uLL);
  notify_post("com.apple.sharing.wha-prox-setup");
  [(HDSSetupSession *)self preflightAppleMusic];
  Int64 = CFPrefs_GetInt64();
  if (v78)
  {
    v5 = 0;
  }

  else
  {
    v5 = Int64 == 0;
  }

  v6 = !v5;
  self->_apcEnabled = v6;
  v7 = CFPrefs_GetInt64();
  if (v78)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7 == 0;
  }

  v9 = !v8;
  self->_appleMusicEnabled = v9;
  self->_appleMusicForce = CFPrefs_GetInt64() != 0;
  self->_forceSoftwareUpdate = CFPrefs_GetInt64() != 0;
  v10 = CFPrefs_GetInt64();
  if (v78)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 == 0;
  }

  v12 = !v11;
  self->_audioProgress = v12;
  v13 = CFPrefs_GetInt64();
  if (v78)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13 == 0;
  }

  v15 = !v14;
  self->_cdpEnabled = v15;
  v16 = CFPrefs_GetInt64();
  if (v78)
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 == 0;
  }

  v18 = !v17;
  self->_prefTVAudioEnabled = v18;
  if (v17 && gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _activate];
  }

  v19 = CFPrefs_GetInt64();
  if (v78)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19 == 0;
  }

  v21 = !v20;
  self->_prefBonjourTest = v21;
  v22 = CFPrefs_GetInt64();
  if (v78)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22 == 0;
  }

  v24 = !v23;
  self->_preflightEnabled = v24;
  self->_prefForceSiriGreeting = CFPrefs_GetInt64() != 0;
  v25 = CFPrefs_GetInt64();
  if (v78)
  {
    v26 = 0;
  }

  else
  {
    v26 = v25 == 0;
  }

  v27 = !v26;
  self->_prefLEDPasscodeEnabled = v27;
  v28 = CFPrefs_GetInt64();
  if (v78)
  {
    v29 = 0;
  }

  else
  {
    v29 = v28 == 0;
  }

  v30 = !v29;
  self->_prefMultiUser = v30;
  v31 = CFPrefs_GetInt64();
  if (v78)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31 == 0;
  }

  v33 = !v32;
  self->_prefStereoPairEnabled = v33;
  v34 = CFPrefs_GetInt64();
  if (v78)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34 == 0;
  }

  v36 = !v35;
  self->_prefStereoWait = v36;
  v37 = CFPrefs_GetInt64();
  if (v78)
  {
    v38 = 0;
  }

  else
  {
    v38 = v37 == 0;
  }

  v39 = !v38;
  self->_preventAppleWiFi = v39;
  v40 = CFPrefs_GetInt64();
  if (v78)
  {
    v41 = 0;
  }

  else
  {
    v41 = v40 == 0;
  }

  v42 = !v41;
  self->_siriPasscodeEnabled = v42;
  v43 = self->_appleStoreMode | CFPrefs_GetInt64();
  if (v78)
  {
    v43 = 0;
  }

  self->_appleStoreMode = v43;
  v44 = CFPrefs_GetInt64();
  if (v78)
  {
    v45 = 1;
  }

  else
  {
    v45 = v44 == 0;
  }

  v46 = !v45;
  self->_prefPrototypeForceUpdate = v46;
  v47 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.HomeDeviceSetup"];
  jsDefaultDisabled = [v47 BOOLForKey:@"hdsDisableJS"];
  self->_jsDefaultDisabled = jsDefaultDisabled;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_101;
      }

      jsDefaultDisabled = self->_jsDefaultDisabled;
    }

    v49 = "no";
    if (jsDefaultDisabled)
    {
      v49 = "yes";
    }

    v70 = v49;
    LogPrintF();
  }

LABEL_101:
  self->_isVM = CFPrefs_GetInt64() != 0;
  if (v78)
  {
    IsVirtualMachine = SFDeviceIsVirtualMachine();
    self->_isVM = IsVirtualMachine;
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_108;
        }

        IsVirtualMachine = self->_isVM;
      }

      v51 = "no";
      if (IsVirtualMachine)
      {
        v51 = "yes";
      }

      v70 = v51;
      LogPrintF();
    }
  }

LABEL_108:
  v52 = CFPrefs_GetInt64();
  v53 = 5;
  if (!v78)
  {
    v53 = v52;
  }

  self->_wifiMaxAttempts = v53;
  if (+[HDSDefaults numberOfWiFiRetries])
  {
    self->_wifiMaxAttempts = +[HDSDefaults numberOfWiFiRetries];
  }

  v54 = CFPrefs_GetInt64();
  if (v78)
  {
    v55 = 1;
  }

  else
  {
    v55 = v54;
  }

  self->_wifiRetryDelay = v55;
  [(HDSSetupSession *)self isDeviceActiveFetch];
  [(HDSSetupSession *)self fetchTermsAndConditionsServerStatus];
  [(HDSSetupSession *)self loadMultiUserSupportedLanguages];
  v56 = +[HDSDefaults sysDropProfileInstalled];
  self->_enablementProfileInstalled = v56;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession == -1)
    {
      v56 = _LogCategory_Initialize();
      if (!v56)
      {
        goto LABEL_121;
      }

      LOBYTE(v56) = self->_enablementProfileInstalled;
    }

    v57 = "no";
    if (v56)
    {
      v57 = "yes";
    }

    v71 = v57;
    v56 = LogPrintF();
  }

LABEL_121:
  v58 = objc_alloc_init(getAFSettingsConnectionClass_0(v56));
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __28__HDSSetupSession__activate__block_invoke;
  v76[3] = &unk_279714DF8;
  v76[4] = self;
  v59 = v58;
  v77 = v59;
  [v59 getSiriDataSharingOptInStatusWithCompletion:v76];
  objc_initWeak(&location, self);
  v60 = objc_alloc_init(MEMORY[0x277D44160]);
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = v60;

  [(RPCompanionLinkClient *)self->_companionLinkClient setDispatchQueue:self->_dispatchQueue];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __28__HDSSetupSession__activate__block_invoke_2;
  v73[3] = &unk_279714E20;
  objc_copyWeak(&v74, &location);
  [(RPCompanionLinkClient *)self->_companionLinkClient setDeviceFoundHandler:v73];
  v62 = self->_companionLinkClient;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __28__HDSSetupSession__activate__block_invoke_3;
  v72[3] = &unk_279714198;
  v72[4] = self;
  v63 = [(RPCompanionLinkClient *)v62 activateWithCompletion:v72];
  defaultStore = [getSSAccountStoreClass(v63) defaultStore];
  activeAccount = [defaultStore activeAccount];
  iTunesAccount = self->_iTunesAccount;
  self->_iTunesAccount = activeAccount;

  accountName = [(SSAccount *)self->_iTunesAccount accountName];
  iTunesUserID = self->_iTunesUserID;
  self->_iTunesUserID = accountName;

  [(HDSSetupSession *)self _setupAudio];
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 10, 0);
  }

  if (self->_isCLIMode)
  {
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_132;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      LogPrintF();
    }
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_132:
  [(HDSSetupSession *)self _run];
  objc_destroyWeak(&v74);
  objc_destroyWeak(&location);
}

uint64_t __28__HDSSetupSession__activate__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5)
  {
    v5 = [*(a1 + 32) _logMetricsForSoftError:v5 label:@"Activate"];
  }

  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v5 = _LogCategory_Initialize(), v5))
    {
      v5 = LogPrintF();
    }

    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || (v5 = _LogCategory_Initialize(), v5))
      {
        v5 = LogPrintF();
      }
    }
  }

  if (a3 == 2)
  {
    v6 = 5;
  }

  else
  {
    v6 = 0;
  }

  if (a3 == 1)
  {
    v6 = 6;
  }

  *(*(a1 + 32) + 552) = v6;

  return MEMORY[0x2821F9730](v5);
}

void __28__HDSSetupSession__activate__block_invoke_2(uint64_t a1, void *a2)
{
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained deviceColorFoundHandler];
    v6 = [v9 deviceColor];
    v7 = [v9 model];
    v8 = [v7 hasPrefix:{@"AudioAccessory5, 1"}];

    if (v8 && v6 && v5)
    {
      (v5)[2](v5, v6);
    }
  }
}

void __28__HDSSetupSession__activate__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _logMetricsForSoftError:? label:?];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __28__HDSSetupSession__activate__block_invoke_3_cold_1();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HDSSetupSession_invalidate__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _invalidate];
  }

  self->_invalidateCalled = 1;
  [(AVAudioPlayer *)self->_audioPlayerStart stop];
  [(AVAudioPlayer *)self->_audioPlayerStart setDelegate:0];
  audioPlayerStart = self->_audioPlayerStart;
  self->_audioPlayerStart = 0;

  [(AVAudioPlayer *)self->_audioPlayerStep stop];
  [(AVAudioPlayer *)self->_audioPlayerStep setDelegate:0];
  audioPlayerStep = self->_audioPlayerStep;
  self->_audioPlayerStep = 0;

  if (self->_audioSession)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = getAVAudioSessionInterruptionNotification(defaultCenter);
    [defaultCenter removeObserver:self name:v6 object:self->_audioSession];

    audioSession = self->_audioSession;
    v12 = 0;
    v8 = [(AVAudioSession *)audioSession setActive:0 error:&v12];
    v9 = v12;
    if (!v8)
    {
      [(HDSSetupSession *)self _logMetricsForSoftError:v9 label:@"Invalidate"];
      if (gLogCategory_HDSSetupSession <= 50 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _invalidate];
      }
    }

    v10 = self->_audioSession;
    self->_audioSession = 0;
  }

  [(RPCompanionLinkClient *)self->_companionLinkClient invalidate];
  companionLinkClient = self->_companionLinkClient;
  self->_companionLinkClient = 0;

  [(HDSSetupSession *)self _cleanup];
}

- (void)appleMusicNext
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__HDSSetupSession_appleMusicNext__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __33__HDSSetupSession_appleMusicNext__block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __33__HDSSetupSession_appleMusicNext__block_invoke_cold_1();
  }

  if (!*(*(a1 + 32) + 208))
  {
    v3 = [objc_opt_class() signpostLog];
    v4 = [*(a1 + 32) signpostID];
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AppleMusic", "", buf, 2u);
      }
    }
  }

  v6 = [objc_opt_class() signpostLog];
  v7 = [*(a1 + 32) signpostID];
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v6, OS_SIGNPOST_INTERVAL_END, v8, "AppleMusic", "", v10, 2u);
    }
  }

  *(*(a1 + 32) + 208) = 4;
  return [*(a1 + 32) _run];
}

- (void)homePodSoftwareUpdateNonSetupAcknowledged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDSSetupSession_homePodSoftwareUpdateNonSetupAcknowledged__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __60__HDSSetupSession_homePodSoftwareUpdateNonSetupAcknowledged__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __60__HDSSetupSession_homePodSoftwareUpdateNonSetupAcknowledged__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1372) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)homePodSoftwareUpdateNonSetupDidComplete
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDSSetupSession_homePodSoftwareUpdateNonSetupDidComplete__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __59__HDSSetupSession_homePodSoftwareUpdateNonSetupDidComplete__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __59__HDSSetupSession_homePodSoftwareUpdateNonSetupDidComplete__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1741) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)disconnect
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HDSSetupSession_disconnect__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __29__HDSSetupSession_disconnect__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 288) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 288);
  *(v2 + 288) = 0;
}

- (void)homeAppInstallChoice:(BOOL)choice
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HDSSetupSession_homeAppInstallChoice___block_invoke;
  v4[3] = &unk_2797142A8;
  v4[4] = self;
  choiceCopy = choice;
  dispatch_async(dispatchQueue, v4);
}

- (void)homeiCloudEnable
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSSetupSession_homeiCloudEnable__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__HDSSetupSession_homeiCloudEnable__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __35__HDSSetupSession_homeiCloudEnable__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 148) = 1;
  v2 = *(a1 + 32);

  return [v2 _homeKitUpdateiCloudSwitchState:1];
}

- (void)homeKitSelectHome:(id)home
{
  homeCopy = home;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HDSSetupSession_homeKitSelectHome___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = homeCopy;
  v6 = homeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)homeKitReselectHome
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDSSetupSession_homeKitReselectHome__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)homeKitStartHomeNameCreation:(BOOL)creation namingIssue:(int)issue
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__HDSSetupSession_homeKitStartHomeNameCreation_namingIssue___block_invoke;
  v5[3] = &unk_279714E48;
  v5[4] = self;
  creationCopy = creation;
  issueCopy = issue;
  dispatch_async(dispatchQueue, v5);
}

uint64_t __60__HDSSetupSession_homeKitStartHomeNameCreation_namingIssue___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __60__HDSSetupSession_homeKitStartHomeNameCreation_namingIssue___block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 1008);
  v3 = *(a1 + 44);
  v4 = *(a1 + 40);

  return [v2 startHomeNameCreation:v3 namingIssue:v4];
}

- (void)createNewHomeWithName:(id)name
{
  nameCopy = name;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __41__HDSSetupSession_createNewHomeWithName___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = nameCopy;
  v6 = nameCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __41__HDSSetupSession_createNewHomeWithName___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __41__HDSSetupSession_createNewHomeWithName___block_invoke_cold_1();
  }

  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 1008);

  return [v3 selectHomeName:v2];
}

- (void)createHomeInSameLocation
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HDSSetupSession_createHomeInSameLocation__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __43__HDSSetupSession_createHomeInSameLocation__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __43__HDSSetupSession_createHomeInSameLocation__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 1008);

  return [v2 createHomeInSameLocation];
}

- (void)resetToHomeSelection
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HDSSetupSession_resetToHomeSelection__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__HDSSetupSession_resetToHomeSelection__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __39__HDSSetupSession_resetToHomeSelection__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 1008);

  return [v2 resetToHomeSelection];
}

- (void)acceptSelectSameWrongLocation
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__HDSSetupSession_acceptSelectSameWrongLocation__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __48__HDSSetupSession_acceptSelectSameWrongLocation__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __48__HDSSetupSession_acceptSelectSameWrongLocation__block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 1008);

  return [v2 acceptSelectSameWrongLocation];
}

- (void)homeKitSelectRoom:(id)room
{
  roomCopy = room;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__HDSSetupSession_homeKitSelectRoom___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = roomCopy;
  v6 = roomCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)homePodLoggingProfileSelected:(int)selected
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSSetupSession_homePodLoggingProfileSelected___block_invoke;
  v4[3] = &unk_279714E70;
  selectedCopy = selected;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __49__HDSSetupSession_homePodLoggingProfileSelected___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __49__HDSSetupSession_homePodLoggingProfileSelected___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1480) = *(a1 + 40);
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)ledPasscodeMatched
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HDSSetupSession_ledPasscodeMatched__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__HDSSetupSession_ledPasscodeMatched__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __37__HDSSetupSession_ledPasscodeMatched__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 461) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)locationEnable:(BOOL)enable
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__HDSSetupSession_locationEnable___block_invoke;
  v4[3] = &unk_2797142A8;
  enableCopy = enable;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __34__HDSSetupSession_locationEnable___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __34__HDSSetupSession_locationEnable___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 220) = *(a1 + 40);
  *(*(a1 + 32) + 221) = 1;
  if (*(a1 + 40))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *(*(a1 + 32) + 1328) = v2;
  v3 = [*(*(a1 + 32) + 1008) homeKitSelectedHome];

  if (v3)
  {
    v4 = [*(*(a1 + 32) + 1008) homeKitSelectedHome];
    [v4 updateLocationServicesEnabled:*(a1 + 40) completion:&__block_literal_global_7];
  }

  v5 = *(a1 + 32);

  return [v5 _run];
}

uint64_t __34__HDSSetupSession_locationEnable___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (v2)
  {
    if (gLogCategory_HDSSetupSession <= 90)
    {
      v5 = v2;
      if (gLogCategory_HDSSetupSession != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
      {
        v2 = __34__HDSSetupSession_locationEnable___block_invoke_2_cold_1();
LABEL_13:
        v3 = v5;
      }
    }
  }

  else if (gLogCategory_HDSSetupSession <= 30)
  {
    v5 = 0;
    if (gLogCategory_HDSSetupSession != -1 || (v2 = _LogCategory_Initialize(), v3 = 0, v2))
    {
      v2 = __34__HDSSetupSession_locationEnable___block_invoke_2_cold_2();
      goto LABEL_13;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (void)pairSetupTryPIN:(id)n
{
  nCopy = n;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HDSSetupSession_pairSetupTryPIN___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = nCopy;
  v6 = nCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)personalRequestsEnabled:(BOOL)enabled
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HDSSetupSession_personalRequestsEnabled___block_invoke;
  v4[3] = &unk_2797142A8;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __43__HDSSetupSession_personalRequestsEnabled___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __43__HDSSetupSession_personalRequestsEnabled___block_invoke_cold_1();
  }

  v2 = *(a1 + 40) == 0;
  if (*(a1 + 40))
  {
    v3 = 6;
  }

  else
  {
    v3 = 5;
  }

  *(*(a1 + 32) + 528) = v3;
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  *(*(a1 + 32) + 1320) = v4;
  v5 = *(a1 + 32);

  return [v5 _run];
}

- (void)playAudioPasscodeAgain
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__HDSSetupSession_playAudioPasscodeAgain__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __41__HDSSetupSession_playAudioPasscodeAgain__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 32) + 1888);
  if (v3)
  {
    (*(v3 + 16))(v3, 60, 0);
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __41__HDSSetupSession_playAudioPasscodeAgain__block_invoke_cold_1();
  }

  v4 = *(a1 + 32);
  v5 = 424;
  if (*(v4 + 1194))
  {
    v5 = 468;
  }

  *(v4 + v5) = 1;
  v6 = *(a1 + 32);
  if (!*(v6 + 428))
  {
    v7 = [objc_opt_class() signpostLog];
    v8 = [*(a1 + 32) signpostID];
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        *v11 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AudioPasscode", "", v11, 2u);
      }
    }

    v6 = *(a1 + 32);
  }

  *(v6 + 428) = 12;
  *(*(a1 + 32) + 469) = 1;
  return [*(a1 + 32) _run];
}

- (void)preflight
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__HDSSetupSession_preflight__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__HDSSetupSession_preflight__block_invoke(uint64_t a1)
{
  v1 = a1;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (a1 = _LogCategory_Initialize(), a1))
    {
      a1 = __28__HDSSetupSession_preflight__block_invoke_cold_1();
    }
  }

  v2 = [getSSAccountStoreClass(a1) defaultStore];
  v3 = [v2 activeAccount];
  v4 = *(v1 + 32);
  v5 = *(v4 + 160);
  *(v4 + 160) = v3;

  v6 = [*(*(v1 + 32) + 160) accountName];
  v7 = *(v1 + 32);
  v8 = *(v7 + 176);
  *(v7 + 176) = v6;

  return MEMORY[0x2821F96F8](v6, v8);
}

- (void)preflightAppleMusic
{
  v11 = 0;
  v3 = CFPrefs_GetInt64() == 0;
  v4 = !v3;
  self->_appleMusicEnabled = v4;
  if (!v3 && self->_iTunesAccount)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession preflightAppleMusic];
    }

    self->_appleMusicState = 1;
    v5 = objc_alloc_init(getSKCloudServiceControllerClass());
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __38__HDSSetupSession_preflightAppleMusic__block_invoke;
    v10[3] = &unk_279714E98;
    v10[4] = self;
    [v5 requestCapabilitiesWithCompletionHandler:v10];
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
    appleMusicTimeoutTimer = self->_appleMusicTimeoutTimer;
    self->_appleMusicTimeoutTimer = v6;

    v8 = self->_appleMusicTimeoutTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __38__HDSSetupSession_preflightAppleMusic__block_invoke_2;
    handler[3] = &unk_279713FF0;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    HDSDispatchTimerSet(self->_appleMusicTimeoutTimer, 15.0, -1.0, -4.0);
    dispatch_resume(self->_appleMusicTimeoutTimer);
  }
}

void __38__HDSSetupSession_preflightAppleMusic__block_invoke(uint64_t a1, char a2, void *a3)
{
  v7 = a3;
  if (v7)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __38__HDSSetupSession_preflightAppleMusic__block_invoke_cold_1();
    }

    [*(a1 + 32) _preflightAppleMusicCompleted:2];
    [*(a1 + 32) setAcceptedMusicTerms:0];
    [*(a1 + 32) _logMetricsForSoftError:v7 label:@"Preflight-AppleMusic"];
    goto LABEL_21;
  }

  if (a2)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __38__HDSSetupSession_preflightAppleMusic__block_invoke_cold_2();
    }

    v5 = *(a1 + 32);
    v6 = 6;
    goto LABEL_16;
  }

  if ((a2 & 2) == 0)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __38__HDSSetupSession_preflightAppleMusic__block_invoke_cold_4();
    }

    v5 = *(a1 + 32);
    v6 = 2;
LABEL_16:
    [v5 _preflightAppleMusicCompleted:v6];
    goto LABEL_21;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __38__HDSSetupSession_preflightAppleMusic__block_invoke_cold_3();
  }

  [*(a1 + 32) _preflightAppleMusicCompleted:5];
  [*(a1 + 32) setAcceptedMusicTerms:1];
LABEL_21:
}

uint64_t __38__HDSSetupSession_preflightAppleMusic__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __38__HDSSetupSession_preflightAppleMusic__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _preflightAppleMusicCompleted:2];
}

- (void)_preflightAppleMusicCompleted:(int)completed
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _preflightAppleMusicCompleted:];
  }

  dispatchQueue = self->_dispatchQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__HDSSetupSession__preflightAppleMusicCompleted___block_invoke;
  v6[3] = &unk_279714E70;
  v6[4] = self;
  completedCopy = completed;
  dispatch_async(dispatchQueue, v6);
}

void __49__HDSSetupSession__preflightAppleMusicCompleted___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 200);
  if (v1)
  {
    v3 = v1;
    dispatch_source_cancel(v3);
    v4 = *(a1 + 32);
    v5 = *(v4 + 200);
    *(v4 + 200) = 0;

    v6 = *(a1 + 32);
    if (*(v6 + 24) == 1)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __49__HDSSetupSession__preflightAppleMusicCompleted___block_invoke_cold_2();
      }
    }

    else
    {
      if (*(v6 + 192))
      {
        v7 = 5;
      }

      else
      {
        v7 = *(a1 + 40);
      }

      *(v6 + 188) = v7;
      if (*(*(a1 + 32) + 8) == 1)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          __49__HDSSetupSession__preflightAppleMusicCompleted___block_invoke_cold_1();
        }

        v8 = *(a1 + 32);

        [v8 _run];
      }
    }
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __49__HDSSetupSession__preflightAppleMusicCompleted___block_invoke_cold_3();
  }
}

- (void)recognizeVoiceAnswered:(BOOL)answered
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HDSSetupSession_recognizeVoiceAnswered___block_invoke;
  v4[3] = &unk_2797142A8;
  answeredCopy = answered;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __42__HDSSetupSession_recognizeVoiceAnswered___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __42__HDSSetupSession_recognizeVoiceAnswered___block_invoke_cold_1();
  }

  v2 = *(a1 + 40) == 0;
  if (*(a1 + 40))
  {
    v3 = 6;
  }

  else
  {
    v3 = 5;
  }

  *(*(a1 + 32) + 512) = v3;
  if (v2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  *(*(a1 + 32) + 1308) = v4;
  v5 = *(a1 + 32);

  return [v5 _run];
}

- (BOOL)homePodNeedsSUBeforeSetup
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.HomeDeviceSetup"];
  v4 = [v3 BOOLForKey:@"forceSUNoSetup"];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession homePodNeedsSUBeforeSetup];
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_7:
    homePodSaysNeedsSUNoSetup = self->_homePodSaysNeedsSUNoSetup;
    goto LABEL_8;
  }

  if ((v4 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_5:
  homePodSaysNeedsSUNoSetup = 1;
LABEL_8:

  return homePodSaysNeedsSUNoSetup;
}

- (id)selectedRoom
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selectedHome = [(HDSSetupSession *)self selectedHome];
  rooms = [selectedHome rooms];

  v5 = [rooms countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(rooms);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        homeKitSelectedRoomName = self->_homeKitSelectedRoomName;
        name = [v10 name];
        LODWORD(homeKitSelectedRoomName) = [(NSString *)homeKitSelectedRoomName isEqualToString:name];

        if (homeKitSelectedRoomName)
        {
          v13 = v10;

          v7 = v13;
        }
      }

      v6 = [rooms countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_homePodsInAccount
{
  v38 = *MEMORY[0x277D85DE8];
  availableHomes = [(HDSSetupSession *)self availableHomes];
  v3 = [availableHomes copy];

  v4 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v33;
    v8 = *MEMORY[0x277CCE8B0];
    v25 = *v33;
    do
    {
      v9 = 0;
      v26 = v6;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        currentUser = [v10 currentUser];
        owner = [v10 owner];
        v13 = [currentUser isEqual:owner];

        if (v13)
        {
          accessories = [v10 accessories];
          v15 = [accessories copy];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v16 = v15;
          v17 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v29;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v29 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = *(*(&v28 + 1) + 8 * i);
                category = [v21 category];
                categoryType = [category categoryType];

                if ([categoryType isEqualToString:v8])
                {
                  [v4 addObject:v21];
                }
              }

              v18 = [v16 countByEnumeratingWithState:&v28 objects:v36 count:16];
            }

            while (v18);
          }

          v7 = v25;
          v6 = v26;
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_homePodsInSelectedHome
{
  v21 = *MEMORY[0x277D85DE8];
  selectedHome = [(HDSSetupSession *)self selectedHome];
  accessories = [selectedHome accessories];
  v4 = [accessories copy];

  v5 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    v10 = *MEMORY[0x277CCE8B0];
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        category = [v12 category];
        categoryType = [category categoryType];

        if ([categoryType isEqualToString:v10])
        {
          [v5 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)selectedRoomHasHomePods
{
  selectedHome = [(HDSSetupSession *)self selectedHome];
  accessories = [selectedHome accessories];
  v5 = [accessories copy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__HDSSetupSession_selectedRoomHasHomePods__block_invoke;
  v8[3] = &unk_279714EC0;
  v8[4] = self;
  v6 = [v5 indexOfObjectPassingTest:v8];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession selectedRoomHasHomePods];
  }

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

uint64_t __42__HDSSetupSession_selectedRoomHasHomePods__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 room];
  v5 = [v4 name];

  v6 = [v3 category];

  v7 = [v6 categoryType];

  if ([v5 isEqualToString:*(*(a1 + 32) + 1032)])
  {
    v8 = [v7 isEqualToString:*MEMORY[0x277CCE8B0]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_selectedRoomHomePod
{
  homeKitSelectedRoomName = self->_homeKitSelectedRoomName;
  if (homeKitSelectedRoomName)
  {
    v4 = homeKitSelectedRoomName;
    selectedHome = [(HDSSetupSession *)self selectedHome];
    accessories = [selectedHome accessories];
    v7 = [accessories copy];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __39__HDSSetupSession__selectedRoomHomePod__block_invoke;
    v12[3] = &unk_279714EC0;
    v8 = v4;
    v13 = v8;
    v9 = [v7 indexOfObjectPassingTest:v12];
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _selectedRoomHomePod];
    }

    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = [v7 objectAtIndex:v9];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __39__HDSSetupSession__selectedRoomHomePod__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 room];
  v5 = [v4 name];

  v6 = [v3 category];

  v7 = [v6 categoryType];

  if ([v5 isEqualToString:*(a1 + 32)])
  {
    v8 = [v7 isEqualToString:*MEMORY[0x277CCE8B0]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_roomHasOdeonConfig:(id)config
{
  v27 = *MEMORY[0x277D85DE8];
  configCopy = config;
  selectedHome = [(HDSSetupSession *)self selectedHome];
  accessories = [selectedHome accessories];
  v7 = [accessories copy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    v12 = *MEMORY[0x277CCE870];
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        room = [v14 room];
        name = [room name];

        category = [v14 category];
        categoryType = [category categoryType];

        if ([name isEqualToString:configCopy])
        {
          if ([categoryType isEqualToString:v12])
          {
            audioDestinationController = [v14 audioDestinationController];

            if (audioDestinationController)
            {
              if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
              {
                [HDSSetupSession _roomHasOdeonConfig:];
              }

              v20 = 1;
              goto LABEL_19;
            }
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _roomHasOdeonConfig:];
  }

  v20 = 0;
LABEL_19:

  return v20;
}

- (id)_selectedRoomAllHomePods
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = objc_opt_new();
  homeKitSelectedRoomName = self->_homeKitSelectedRoomName;
  if (homeKitSelectedRoomName)
  {
    v4 = homeKitSelectedRoomName;
    selectedHome = [(HDSSetupSession *)self selectedHome];
    accessories = [selectedHome accessories];
    v7 = [accessories copy];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      v12 = *MEMORY[0x277CCE8B0];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          room = [v14 room];
          name = [room name];

          category = [v14 category];
          categoryType = [category categoryType];

          if ([name isEqualToString:v4] && objc_msgSend(categoryType, "isEqualToString:", v12))
          {
            [v20 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _selectedRoomAllHomePods];
    }
  }

  return v20;
}

- (id)_selectedRoomAllStereoPairs
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = objc_opt_new();
  homeKitSelectedRoomName = self->_homeKitSelectedRoomName;
  if (homeKitSelectedRoomName)
  {
    v21 = homeKitSelectedRoomName;
    selectedHome = [(HDSSetupSession *)self selectedHome];
    mediaSystems = [selectedHome mediaSystems];
    v6 = [mediaSystems copy];

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v6;
    v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          components = [v11 components];
          firstObject = [components firstObject];
          mediaProfile = [firstObject mediaProfile];
          accessory = [mediaProfile accessory];
          room = [accessory room];
          name = [room name];

          if ([name isEqualToString:v21])
          {
            [v19 addObject:v11];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v8);
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _selectedRoomAllStereoPairs];
    }
  }

  return v19;
}

- (NSString)selectedSiriLanguageCode
{
  siriLanguagePicked = self->_siriLanguagePicked;
  selectedSiriLanguageCode = self->_selectedSiriLanguageCode;
  if (!siriLanguagePicked && !selectedSiriLanguageCode)
  {
    selectedSiriLanguageCode = self->_companionSiriLanguageCode;
  }

  return selectedSiriLanguageCode;
}

- (void)shareSettingsAgreed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDSSetupSession_shareSettingsAgreed__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__HDSSetupSession_shareSettingsAgreed__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __38__HDSSetupSession_shareSettingsAgreed__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 604) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)siriEnable
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__HDSSetupSession_siriEnable__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __29__HDSSetupSession_siriEnable__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __29__HDSSetupSession_siriEnable__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 222) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)siriForEveryoneAnswered
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__HDSSetupSession_siriForEveryoneAnswered__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __42__HDSSetupSession_siriForEveryoneAnswered__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __42__HDSSetupSession_siriForEveryoneAnswered__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 544) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)siriLanguagePicked:(id)picked
{
  pickedCopy = picked;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__HDSSetupSession_siriLanguagePicked___block_invoke;
  v7[3] = &unk_2797142D0;
  v8 = pickedCopy;
  selfCopy = self;
  v6 = pickedCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __38__HDSSetupSession_siriLanguagePicked___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __38__HDSSetupSession_siriLanguagePicked___block_invoke_cold_1();
  }

  objc_storeStrong((*(a1 + 40) + 336), *(a1 + 32));
  *(*(a1 + 40) + 344) = 1;
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (void)siriVoicePicked:(id)picked
{
  pickedCopy = picked;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__HDSSetupSession_siriVoicePicked___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = pickedCopy;
  v6 = pickedCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __35__HDSSetupSession_siriVoicePicked___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 352), *(a1 + 40));
  v2 = [*(*(a1 + 32) + 368) completionLoggingBlock];
  v2[2](v2, 1);

  v3 = *(a1 + 32);
  v4 = *(v3 + 368);
  *(v3 + 368) = 0;

  v5 = *(a1 + 32);

  return [v5 _run];
}

- (void)didDismiss
{
  siriEnablementConfiguration = self->_siriEnablementConfiguration;
  if (siriEnablementConfiguration)
  {
    completionLoggingBlock = [(AFEnablementConfiguration *)siriEnablementConfiguration completionLoggingBlock];
    completionLoggingBlock[2](completionLoggingBlock, 0);
  }
}

- (void)siriForiCloudRecognizeAnswered:(BOOL)answered
{
  answeredCopy = answered;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession siriForiCloudRecognizeAnswered:];
  }

  HFUtilitiesClass = getHFUtilitiesClass();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__HDSSetupSession_siriForiCloudRecognizeAnswered___block_invoke;
  v6[3] = &unk_279714EE8;
  v6[4] = self;
  v7 = answeredCopy;
  [(objc_class *)HFUtilitiesClass updateSiriForiCloudEnabled:answeredCopy completionHandler:v6];
}

void __50__HDSSetupSession_siriForiCloudRecognizeAnswered___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (v3)
  {
    v4 = v3;
    if (gLogCategory_HDSSetupSession <= 90)
    {
      if (gLogCategory_HDSSetupSession != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        __50__HDSSetupSession_siriForiCloudRecognizeAnswered___block_invoke_cold_1();
        v4 = v6;
      }
    }

    [*(a1 + 32) _reportError:v4 label:@"siriForICloud"];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __50__HDSSetupSession_siriForiCloudRecognizeAnswered___block_invoke_cold_2();
    }

    [*(a1 + 32) recognizeVoiceAnswered:*(a1 + 40)];
  }
}

- (void)skipAudioPasscode
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__HDSSetupSession_skipAudioPasscode__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __36__HDSSetupSession_skipAudioPasscode__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __36__HDSSetupSession_skipAudioPasscode__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 468) = 1;
  *(*(a1 + 32) + 469) = 1;
  *(*(a1 + 32) + 427) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)skipiTunesSignIn
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSSetupSession_skipiTunesSignIn__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__HDSSetupSession_skipiTunesSignIn__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __35__HDSSetupSession_skipiTunesSignIn__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 168) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (BOOL)shouldShowHomePodSoftwareUpdateAvailable
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession shouldShowHomePodSoftwareUpdateAvailable];
  }

  if (self->_userOptedToHH2)
  {
    v3 = gLogCategory_HDSSetupSession;
    if ((self->_peerFeatureFlags & 0x800) == 0)
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        return 1;
      }

      if (gLogCategory_HDSSetupSession == -1)
      {
        v4 = 1;
        if (!_LogCategory_Initialize())
        {
          return v4;
        }
      }

      else
      {
        v4 = 1;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v3 = gLogCategory_HDSSetupSession;
  }

  if (v3 > 30)
  {
    return 0;
  }

  if (v3 == -1)
  {
    v4 = 0;
    if (!_LogCategory_Initialize())
    {
      return v4;
    }
  }

  else
  {
    v4 = 0;
  }

LABEL_14:
  LogPrintF();
  return v4;
}

- (int)exportAMSTokenAndAccountSetup:(id)setup ifMissing:(BOOL)missing ifInvalid:(BOOL)invalid
{
  invalidCopy = invalid;
  missingCopy = missing;
  setupCopy = setup;
  amsActivationState = self->_amsActivationState;
  if (!amsActivationState)
  {
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_6;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession exportAMSTokenAndAccountSetup:ifMissing:ifInvalid:];
    }

    if (!self->_amsActivationState)
    {
LABEL_6:
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v12, "AMSMultiUser", "", buf, 2u);
        }
      }
    }

    self->_amsActivationState = 1;
    self->_amsOptimizationStartTicks = mach_absolute_time();
    proxyObjectAsync = [MEMORY[0x277CEE5D8] proxyObjectAsync];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke;
    v15[3] = &unk_279714F10;
    v15[4] = self;
    [proxyObjectAsync exportMultiUserTokenForHomeIdentifier:setupCopy generateIfMissing:missingCopy generateIfInvalid:invalidCopy completion:v15];

    amsActivationState = self->_amsActivationState;
  }

  return amsActivationState;
}

void __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2;
  block[3] = &unk_279714320;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (gLogCategory_HDSSetupSession <= 90)
    {
      if (gLogCategory_HDSSetupSession != -1 || (v6 = _LogCategory_Initialize(), v2 = *(a1 + 32), v6))
      {
        v13 = v2;
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    [*(a1 + 40) _logMetricsForSoftError:v2 label:{@"ExportAMSToken", v13}];
    if (!*(*(a1 + 40) + 488))
    {
      v7 = [objc_opt_class() signpostLog];
      v8 = [*(a1 + 40) signpostID];
      if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        if (os_signpost_enabled(v7))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AMSMultiUser", "", buf, 2u);
        }
      }
    }

    v10 = [objc_opt_class() signpostLog];
    v11 = [*(a1 + 40) signpostID];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v10, OS_SIGNPOST_INTERVAL_END, v12, "AMSMultiUser", "", buf, 2u);
      }
    }

    *(*(a1 + 40) + 488) = 2;
    [*(a1 + 40) _run];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v3 setObject:*(a1 + 48) forKeyedSubscript:@"amsT"];
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2_cold_1();
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2_cold_2();
    }

    v4 = *(a1 + 40);
    v5 = *(v4 + 288);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2_508;
    v14[3] = &unk_2797145F0;
    v14[4] = v4;
    [v5 sendRequestID:@"_hds_ams_token" options:&unk_2864E7E88 request:v3 responseHandler:v14];
  }
}

void __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2_508(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  mach_absolute_time();
  v8 = (a1 + 32);
  UpTicksToSecondsF();
  *(*v8 + 152) = v9;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2_508_cold_1();
  }

  Int64 = CFDictionaryGetInt64();
  v11 = *v8;
  if (v6 || !Int64)
  {
    [v11 _logMetricsForSoftError:v6 label:@"ExportAMSToken"];
    if (!*(*v8 + 122))
    {
      v18 = [objc_opt_class() signpostLog];
      v19 = [*v8 signpostID];
      if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = v19;
        if (os_signpost_enabled(v18))
        {
          *v27 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, "AMSMultiUser", "", v27, 2u);
        }
      }
    }

    v21 = [objc_opt_class() signpostLog];
    v22 = [*v8 signpostID];
    if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = v22;
      if (os_signpost_enabled(v21))
      {
        *v26 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v21, OS_SIGNPOST_INTERVAL_END, v23, "AMSMultiUser", "", v26, 2u);
      }
    }

    *(*v8 + 122) = 2;
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2_508_cold_3();
    }
  }

  else
  {
    if (!v11[122])
    {
      v12 = [objc_opt_class() signpostLog];
      v13 = [*v8 signpostID];
      if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = v13;
        if (os_signpost_enabled(v12))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AMSMultiUser", "", buf, 2u);
        }
      }
    }

    v15 = [objc_opt_class() signpostLog];
    v16 = [*v8 signpostID];
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v15))
      {
        *v24 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v15, OS_SIGNPOST_INTERVAL_END, v17, "AMSMultiUser", "", v24, 2u);
      }
    }

    *(*v8 + 122) = 4;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __69__HDSSetupSession_exportAMSTokenAndAccountSetup_ifMissing_ifInvalid___block_invoke_2_508_cold_2();
    }
  }

  [*v8 _run];
}

- (void)speakPasscodeWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__HDSSetupSession_speakPasscodeWithCompletion___block_invoke;
  v7[3] = &unk_279714210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __47__HDSSetupSession_speakPasscodeWithCompletion___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __47__HDSSetupSession_speakPasscodeWithCompletion___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _speakPasscodeWithInstructions:0 languageCode:0 completion:v3];
}

- (void)speakPasscodeWithLanguageCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDSSetupSession_speakPasscodeWithLanguageCode_completion___block_invoke;
  block[3] = &unk_279714860;
  v12 = codeCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = codeCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __60__HDSSetupSession_speakPasscodeWithLanguageCode_completion___block_invoke(void *a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __60__HDSSetupSession_speakPasscodeWithLanguageCode_completion___block_invoke_cold_1();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];

  return [v2 _speakPasscodeWithInstructions:0 languageCode:v3 completion:v4];
}

- (void)speakPasscodeWithInstructions:(id)instructions completion:(id)completion
{
  instructionsCopy = instructions;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDSSetupSession_speakPasscodeWithInstructions_completion___block_invoke;
  block[3] = &unk_279714860;
  block[4] = self;
  v12 = instructionsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = instructionsCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __60__HDSSetupSession_speakPasscodeWithInstructions_completion___block_invoke(void *a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __60__HDSSetupSession_speakPasscodeWithInstructions_completion___block_invoke_cold_1();
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 _speakPasscodeWithInstructions:v3 languageCode:0 completion:v4];
}

- (void)speakPasscodeWithInstructions:(id)instructions languageCode:(id)code completion:(id)completion
{
  instructionsCopy = instructions;
  codeCopy = code;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__HDSSetupSession_speakPasscodeWithInstructions_languageCode_completion___block_invoke;
  v15[3] = &unk_279714DB0;
  v16 = codeCopy;
  selfCopy = self;
  v18 = instructionsCopy;
  v19 = completionCopy;
  v12 = completionCopy;
  v13 = instructionsCopy;
  v14 = codeCopy;
  dispatch_async(dispatchQueue, v15);
}

uint64_t __73__HDSSetupSession_speakPasscodeWithInstructions_languageCode_completion___block_invoke(void *a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __73__HDSSetupSession_speakPasscodeWithInstructions_languageCode_completion___block_invoke_cold_1();
  }

  v3 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 _speakPasscodeWithInstructions:v4 languageCode:v3 completion:v5];
}

- (void)_speakPasscodeWithInstructions:(id)instructions languageCode:(id)code completion:(id)completion
{
  codeCopy = code;
  completionCopy = completion;
  v10 = MEMORY[0x277CBEB38];
  instructionsCopy = instructions;
  v12 = objc_alloc_init(v10);
  [v12 setObject:&unk_2864E8150 forKeyedSubscript:@"aa"];
  [v12 setObject:instructionsCopy forKeyedSubscript:@"authI"];

  v13 = [v12 setObject:codeCopy forKeyedSubscript:@"lang"];
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v13 = _LogCategory_Initialize(), v13))
    {
      v13 = [HDSSetupSession _speakPasscodeWithInstructions:languageCode:completion:];
    }
  }

  v15 = [getAFPreferencesClass_0(v13 v14)];
  v16 = v15;
  selectedSiriVoice = self->_selectedSiriVoice;
  if (selectedSiriVoice)
  {
    outputVoice = selectedSiriVoice;
  }

  else
  {
    outputVoice = [v15 outputVoice];
  }

  v19 = outputVoice;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _speakPasscodeWithInstructions:v19 languageCode:? completion:?];
  }

  languageCode = [(AFVoiceInfo *)v19 languageCode];

  if (languageCode != codeCopy)
  {
    v36 = v16;
    v21 = [(objc_class *)getAFVoiceInfoClass_0() allVoicesForSiriSessionLanguage:codeCopy];
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _speakPasscodeWithInstructions:languageCode:completion:];
    }

    name = [(AFVoiceInfo *)v19 name];
    v23 = [v21 hmf_firstObjectWithName:name];

    if (!v23)
    {
      firstObject = [v21 firstObject];
      if (!firstObject)
      {
        if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _speakPasscodeWithInstructions:languageCode:completion:];
        }

        v23 = 0;
        name2 = 0;
        goto LABEL_51;
      }

      v23 = firstObject;
    }

    selfCopy = self;
    v25 = completionCopy;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _speakPasscodeWithInstructions:v23 languageCode:? completion:?];
    }

    gender = [v23 gender];
    name2 = [v23 name];
    if (gender)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:gender];
      [v12 setObject:v28 forKeyedSubscript:@"siriVG"];
    }

    if (name2)
    {
      [v12 setObject:name2 forKeyedSubscript:@"siriVN"];
    }

    if (gLogCategory_HDSSetupSession > 30)
    {
      completionCopy = v25;
    }

    else
    {
      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _speakPasscodeWithInstructions:languageCode:completion:];
      }

      completionCopy = v25;
      if (gLogCategory_HDSSetupSession <= 30)
      {
        if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
        {
          [HDSSetupSession _speakPasscodeWithInstructions:languageCode:completion:];
        }

        self = v35;
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _speakPasscodeWithInstructions:v23 languageCode:? completion:?];
        }

        goto LABEL_51;
      }
    }

    self = v35;
LABEL_51:

    v16 = v36;
    goto LABEL_52;
  }

  gender2 = [(AFVoiceInfo *)v19 gender];
  name2 = [(AFVoiceInfo *)v19 name];
  if (gender2)
  {
    [MEMORY[0x277CCABB0] numberWithInteger:gender2];
    v31 = v30 = v16;
    [v12 setObject:v31 forKeyedSubscript:@"siriVG"];

    v16 = v30;
  }

  if (name2)
  {
    [v12 setObject:name2 forKeyedSubscript:@"siriVN"];
  }

  if (v19)
  {
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _speakPasscodeWithInstructions:languageCode:completion:];
      }

      if (gLogCategory_HDSSetupSession <= 30)
      {
        if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
        {
          [HDSSetupSession _speakPasscodeWithInstructions:languageCode:completion:];
        }

        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _speakPasscodeWithInstructions:v19 languageCode:? completion:?];
        }
      }
    }
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _speakPasscodeWithInstructions:languageCode:completion:];
  }

LABEL_52:
  sfSession = self->_sfSession;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __74__HDSSetupSession__speakPasscodeWithInstructions_languageCode_completion___block_invoke;
  v37[3] = &unk_279714C98;
  v37[4] = self;
  v38 = completionCopy;
  v33 = completionCopy;
  [(SFSession *)sfSession sendRequestID:@"_aa" options:&unk_2864E7EB0 request:v12 responseHandler:v37];
}

void __74__HDSSetupSession__speakPasscodeWithInstructions_languageCode_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v11 = a2;
  v7 = a3;
  v9 = a4;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v11)
  {
    [*(a1 + 32) _logMetricsForSoftError:v11 label:@"SecureConnection-SiriPasscode"];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))(v10, v8);
  }
}

- (void)stereoRolePicked:(int)picked
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __36__HDSSetupSession_stereoRolePicked___block_invoke;
  v4[3] = &unk_279714E70;
  pickedCopy = picked;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __36__HDSSetupSession_stereoRolePicked___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __36__HDSSetupSession_stereoRolePicked___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 252) = *(a1 + 40);
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)stereoMultiplePicked:(id)picked
{
  pickedCopy = picked;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HDSSetupSession_stereoMultiplePicked___block_invoke;
  v7[3] = &unk_2797142D0;
  v8 = pickedCopy;
  selfCopy = self;
  v6 = pickedCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __40__HDSSetupSession_stereoMultiplePicked___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __40__HDSSetupSession_stereoMultiplePicked___block_invoke_cold_1();
  }

  objc_storeStrong((*(a1 + 40) + 240), *(a1 + 32));
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (void)soundRecognitionAgreed:(BOOL)agreed
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__HDSSetupSession_soundRecognitionAgreed___block_invoke;
  v4[3] = &unk_2797142A8;
  agreedCopy = agreed;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

void __42__HDSSetupSession_soundRecognitionAgreed___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 576) = *(a1 + 40);
  *(*(a1 + 32) + 577) = 1;
  v2 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v3 = 2;
  }

  else
  {
    v3 = 3;
  }

  *(*(a1 + 32) + 1312) = v3;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    v4 = v2;
    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v4 = *(a1 + 40);
    }

    if (v4)
    {
      v5 = "yes";
    }

    else
    {
      v5 = "no";
    }

    v10 = v5;
    LogPrintF();
  }

LABEL_14:
  if (v2)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v7 = [*(a1 + 32) selectedHome];
  v8 = [v7 owner];
  v9 = [v7 homeAccessControlForUser:v8];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_2;
  v12[3] = &unk_279714198;
  v12[4] = *(a1 + 32);
  [v9 updateAudioAnalysisUserDropinAccessLevel:v6 completionHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_3;
  v11[3] = &unk_279714198;
  v11[4] = *(a1 + 32);
  [v7 updateAudioAnalysisClassifierOptions:v2 completion:v11];
  [*(a1 + 32) _run];
}

uint64_t __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = v3;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3)))
  {
    v3 = __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_2_cold_1();
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  v3 = [*(a1 + 32) _logMetricsForSoftError:v6 label:@"SoundRecognition"];
  if (gLogCategory_HDSSetupSession <= 90)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      v3 = __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_2_cold_2();
    }
  }

LABEL_8:

  return MEMORY[0x2821F9730](v3);
}

uint64_t __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v6 = v3;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || (v3 = _LogCategory_Initialize(), v4 = v6, v3)))
  {
    v3 = __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_3_cold_1();
    v4 = v6;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else if (!v4)
  {
    goto LABEL_9;
  }

  if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __42__HDSSetupSession_soundRecognitionAgreed___block_invoke_3_cold_2();
  }

  v3 = [*(a1 + 32) _logMetricsForSoftError:v6 label:@"SoundRecognition"];
  v4 = v6;
LABEL_9:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)automaticSoftwareUpdatesAgreed:(BOOL)agreed
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HDSSetupSession_automaticSoftwareUpdatesAgreed___block_invoke;
  v4[3] = &unk_2797142A8;
  agreedCopy = agreed;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __50__HDSSetupSession_automaticSoftwareUpdatesAgreed___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __50__HDSSetupSession_automaticSoftwareUpdatesAgreed___block_invoke_cold_1();
  }

  if (*(a1 + 40))
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *(*(a1 + 32) + 560) = v2;
  v3 = *(a1 + 32);
  if (v3[140])
  {
    v4 = [v3 selectedHome];
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __50__HDSSetupSession_automaticSoftwareUpdatesAgreed___block_invoke_2;
    v7[3] = &unk_279714198;
    v7[4] = *(a1 + 32);
    [v4 updateAutomaticSoftwareUpdateEnabled:v5 completionHandler:v7];

    v3 = *(a1 + 32);
  }

  return [v3 _run];
}

void __50__HDSSetupSession_automaticSoftwareUpdatesAgreed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) _logMetricsForSoftError:v3 label:@"AutomaticSoftwareUpdates"];
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __50__HDSSetupSession_automaticSoftwareUpdatesAgreed___block_invoke_2_cold_1();
    }
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __50__HDSSetupSession_automaticSoftwareUpdatesAgreed___block_invoke_2_cold_2();
  }
}

- (void)softwareUpdateAgreed:(BOOL)agreed
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__HDSSetupSession_softwareUpdateAgreed___block_invoke;
  v4[3] = &unk_2797142A8;
  agreedCopy = agreed;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __40__HDSSetupSession_softwareUpdateAgreed___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __40__HDSSetupSession_softwareUpdateAgreed___block_invoke_cold_1();
  }

  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 1742) == 1)
  {
    if (*(a1 + 40) == 1)
    {
      *(v2 + 568) = 1;
      *(*v3 + 1756) = 1;
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_23;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        __40__HDSSetupSession_softwareUpdateAgreed___block_invoke_cold_2();
      }
    }
  }

  else if (*(v2 + 1740) == 1 && *(v2 + 1752) != 4 && *(v2 + 560) == 2)
  {
    v4 = *(a1 + 40);
    if (v4 == 1)
    {
      *(v2 + 568) = 1;
      v5 = *v3;
      v6 = *(*v3 + 1752);
      if ((v6 - 2) >= 2)
      {
        if (v6 != 1)
        {
          goto LABEL_20;
        }

        v4 = 1;
      }
    }

    else
    {
      *(v2 + 568) = 2;
      v5 = *v3;
      if ((*(*v3 + 1752) & 0xFFFFFFFE) != 2)
      {
        goto LABEL_20;
      }

      v4 = 3;
    }

    *(v5 + 1756) = v4;
  }

LABEL_20:
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __40__HDSSetupSession_softwareUpdateAgreed___block_invoke_cold_3();
  }

LABEL_23:
  v7 = *v3;

  return [v7 _run];
}

- (void)termsAgreed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__HDSSetupSession_termsAgreed__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__HDSSetupSession_termsAgreed__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __30__HDSSetupSession_termsAgreed__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 584) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)dataAndPrivacyAgreed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HDSSetupSession_dataAndPrivacyAgreed__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__HDSSetupSession_dataAndPrivacyAgreed__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __39__HDSSetupSession_dataAndPrivacyAgreed__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1728) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)psgSelected:(BOOL)selected
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__HDSSetupSession_psgSelected___block_invoke;
  v4[3] = &unk_2797142A8;
  selectedCopy = selected;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __31__HDSSetupSession_psgSelected___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __31__HDSSetupSession_psgSelected___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1336) = *(a1 + 40);
  *(*(a1 + 32) + 1337) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)wiFiSelected:(id)selected
{
  selectedCopy = selected;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HDSSetupSession_wiFiSelected___block_invoke;
  v7[3] = &unk_2797142D0;
  v8 = selectedCopy;
  selfCopy = self;
  v6 = selectedCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __32__HDSSetupSession_wiFiSelected___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __32__HDSSetupSession_wiFiSelected___block_invoke_cold_1();
  }

  objc_storeStrong((*(a1 + 40) + 1632), *(a1 + 32));
  *(*(a1 + 40) + 1628) = 1;
  v2 = *(a1 + 40);

  return [v2 _run];
}

- (void)wiFiAcknowledged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSSetupSession_wiFiAcknowledged__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__HDSSetupSession_wiFiAcknowledged__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __35__HDSSetupSession_wiFiAcknowledged__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1684) = 1;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)wiFiRetry
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__HDSSetupSession_wiFiRetry__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__HDSSetupSession_wiFiRetry__block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __28__HDSSetupSession_wiFiRetry__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1564) = 0;
  *(*(a1 + 32) + 720) = 0;
  *(*(a1 + 32) + 1528) = 0;
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)resetWiFiPicker:(BOOL)picker
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__HDSSetupSession_resetWiFiPicker___block_invoke;
  v4[3] = &unk_2797142A8;
  v4[4] = self;
  pickerCopy = picker;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __35__HDSSetupSession_resetWiFiPicker___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __35__HDSSetupSession_resetWiFiPicker___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1684) = 1;
  *(*(a1 + 32) + 1624) = 0;
  *(*(a1 + 32) + 1628) = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 1632);
  *(v2 + 1632) = 0;

  *(*(a1 + 32) + 1565) = 1;
  if (*(a1 + 40) == 1)
  {
    *(*(a1 + 32) + 1601) = 1;
    *(*(a1 + 32) + 1648) = 0;
  }

  v4 = *(a1 + 32);

  return [v4 _run];
}

- (void)tvAudioEnabled:(BOOL)enabled
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __34__HDSSetupSession_tvAudioEnabled___block_invoke;
  v4[3] = &unk_2797142A8;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

uint64_t __34__HDSSetupSession_tvAudioEnabled___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __34__HDSSetupSession_tvAudioEnabled___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 257) = 1;
  *(*(a1 + 32) + 256) = *(a1 + 40);
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)identifyHomePod:(id)pod
{
  podCopy = pod;
  activeDevices = [(RPCompanionLinkClient *)self->_companionLinkClient activeDevices];
  v6 = [activeDevices copy];

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession identifyHomePod:podCopy];
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __35__HDSSetupSession_identifyHomePod___block_invoke;
  v11[3] = &unk_279714F38;
  v7 = podCopy;
  v12 = v7;
  v8 = [v6 indexOfObjectPassingTest:v11];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession identifyHomePod:];
    }
  }

  else
  {
    v9 = [v6 objectAtIndex:v8];
    identifier = [v9 identifier];
    if (identifier)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession identifyHomePod:];
      }

      [(RPCompanionLinkClient *)self->_companionLinkClient sendRequestID:*MEMORY[0x277D44310] request:MEMORY[0x277CBEC10] destinationID:identifier options:0 responseHandler:&__block_literal_global_602];
    }

    else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession identifyHomePod:];
    }
  }
}

uint64_t __35__HDSSetupSession_identifyHomePod___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 uniqueIdentifier];
  v5 = [v3 homeKitIdentifier];

  v6 = [v4 hmf_isEqualToUUID:v5];
  return v6;
}

void __35__HDSSetupSession_identifyHomePod___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __35__HDSSetupSession_identifyHomePod___block_invoke_2_cold_1();
    }
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __35__HDSSetupSession_identifyHomePod___block_invoke_2_cold_2();
  }
}

- (int)expressSetupState
{
  if (!self->_hasExistingHomePodInAccount)
  {
    return 1;
  }

  if (!self->_hasExistingHomePod)
  {
    return 2;
  }

  if (self->_existingHomepodInSelectedRoom)
  {
    return 4;
  }

  return 3;
}

- (void)fetchLocationServicesEnabled
{
  v3 = dispatch_get_global_queue(2, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HDSSetupSession_fetchLocationServicesEnabled__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(v3, block);
}

void __47__HDSSetupSession_fetchLocationServicesEnabled__block_invoke(uint64_t a1)
{
  v2 = [(objc_class *)getCLLocationManagerClass_0() locationServicesEnabled];
  v4 = *(a1 + 32);
  v3 = (a1 + 32);
  *(v4 + 223) = v2;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __47__HDSSetupSession_fetchLocationServicesEnabled__block_invoke_cold_1();
  }

  v5 = *v3;
  v6 = *(*v3 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HDSSetupSession_fetchLocationServicesEnabled__block_invoke_2;
  block[3] = &unk_279713FF0;
  block[4] = v5;
  dispatch_async(v6, block);
}

uint64_t __47__HDSSetupSession_fetchLocationServicesEnabled__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (!*(v3 + 216))
  {
    v4 = [objc_opt_class() signpostLog];
    v5 = [*(a1 + 32) signpostID];
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *v8 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PreflightMisc", "", v8, 2u);
      }
    }

    v3 = *(a1 + 32);
  }

  *(v3 + 216) = 10;
  return [*(a1 + 32) _run];
}

- (void)isDeviceActiveFetch
{
  if (HDSIsDevicePhone(self, a2))
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession isDeviceActiveFetch];
    }

    v3 = objc_alloc_init(_TtC15HomeDeviceSetup19FindMyLocateSession);
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __38__HDSSetupSession_isDeviceActiveFetch__block_invoke;
    v4[3] = &unk_279714F80;
    v4[4] = self;
    [(FindMyLocateSession *)v3 getActiveLocationSharingDeviceWithCompletionHandler:v4];
  }

  else
  {
    self->_activeDeviceSelectionState = 0;
  }
}

void __38__HDSSetupSession_isDeviceActiveFetch__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDSSetupSession_isDeviceActiveFetch__block_invoke_2;
  block[3] = &unk_279714320;
  v7 = *(a1 + 32);
  v11 = v6;
  v12 = v7;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

id *__38__HDSSetupSession_isDeviceActiveFetch__block_invoke_2(id *result)
{
  v1 = result;
  if (result[4])
  {
    if (gLogCategory_HDSSetupSession <= 90)
    {
      if (gLogCategory_HDSSetupSession != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = LogPrintF();
      }
    }

LABEL_15:
    v2 = 2;
    goto LABEL_16;
  }

  result = [result[6] isThisDevice];
  if (!result)
  {
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || (result = _LogCategory_Initialize(), result))
      {
        result = __38__HDSSetupSession_isDeviceActiveFetch__block_invoke_2_cold_1();
      }
    }

    goto LABEL_15;
  }

  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __38__HDSSetupSession_isDeviceActiveFetch__block_invoke_2_cold_2();
    }
  }

  v2 = 1;
LABEL_16:
  *(v1[5] + 331) = v2;
  return result;
}

- (void)fetchTermsAndConditionsServerStatus
{
  if (+[HDSDefaults forceFailTCServerResponse])
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession fetchTermsAndConditionsServerStatus];
    }

    self->_termsAndConditionsServersActive = 0;
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession fetchTermsAndConditionsServerStatus];
    }

    sharedServerWithNoUrlCache = [(objc_class *)getAARemoteServerClass() sharedServerWithNoUrlCache];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__HDSSetupSession_fetchTermsAndConditionsServerStatus__block_invoke;
    v4[3] = &unk_279714FA8;
    v4[4] = self;
    [sharedServerWithNoUrlCache configurationWithCompletion:v4];
  }
}

void __54__HDSSetupSession_fetchTermsAndConditionsServerStatus__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__HDSSetupSession_fetchTermsAndConditionsServerStatus__block_invoke_2;
  block[3] = &unk_279714320;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void __54__HDSSetupSession_fetchTermsAndConditionsServerStatus__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) _logMetricsForSoftError:v2 label:@"TermsAndConditions"];
  }

  v3 = [*(a1 + 48) homepodSetupiCloudTerms];
  *(*(a1 + 40) + 1429) = v3 != 0;

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __54__HDSSetupSession_fetchTermsAndConditionsServerStatus__block_invoke_2_cold_1();
  }
}

- (int64_t)roomHomePodStereoPairCount
{
  if (self->_stereoPairUserInputState == 4)
  {
    if (self->_stereoCounterpartAccessory)
    {
      v2 = -1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2 + self->_selectedRoomHomePodAndStereoPairCount;
}

- (void)wifiPasswordSelected:(id)selected
{
  selectedCopy = selected;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__HDSSetupSession_wifiPasswordSelected___block_invoke;
  v7[3] = &unk_2797142D0;
  v7[4] = self;
  v8 = selectedCopy;
  v6 = selectedCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __40__HDSSetupSession_wifiPasswordSelected___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __40__HDSSetupSession_wifiPasswordSelected___block_invoke_cold_1();
  }

  *(*(a1 + 32) + 1668) = 1;
  objc_storeStrong((*(a1 + 32) + 1672), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 _run];
}

- (int)_runSFSessionStart
{
  sfSessionState = self->_sfSessionState;
  if (sfSessionState != 4 && sfSessionState != 2)
  {
    if (sfSessionState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_10;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runSFSessionStart];
      }

      if (!self->_sfSessionState)
      {
LABEL_10:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SFSessionStart", "", buf, 2u);
          }
        }
      }

      self->_sfSessionState = 1;
      [(SFSession *)self->_sfSession invalidate];
      v8 = objc_alloc_init(MEMORY[0x277D54CE8]);
      sfSession = self->_sfSession;
      self->_sfSession = v8;

      [(SFSession *)self->_sfSession setDispatchQueue:self->_dispatchQueue];
      [(SFSession *)self->_sfSession setLabel:@"B238Setup"];
      [(SFSession *)self->_sfSession setPeerDevice:self->_peerDevice];
      [(SFSession *)self->_sfSession setServiceIdentifier:*MEMORY[0x277D54D80]];
      [(SFSession *)self->_sfSession setSessionFlags:1];
      [(SFSession *)self->_sfSession setTouchRemoteEnabled:1];
      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"SFSessionActivation";

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __37__HDSSetupSession__runSFSessionStart__block_invoke;
      v18[3] = &unk_279714198;
      v18[4] = self;
      [(SFSession *)self->_sfSession setErrorHandler:v18];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __37__HDSSetupSession__runSFSessionStart__block_invoke_2;
      v17[3] = &unk_279713FF0;
      v17[4] = self;
      [(SFSession *)self->_sfSession setInterruptionHandler:v17];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __37__HDSSetupSession__runSFSessionStart__block_invoke_3;
      v16[3] = &unk_279714FD0;
      v16[4] = self;
      [(SFSession *)self->_sfSession setPromptForPINHandler:v16];
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 35, 0);
      }

      v12 = self->_sfSession;
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __37__HDSSetupSession__runSFSessionStart__block_invoke_4;
      v15[3] = &unk_279714198;
      v15[4] = self;
      [(SFSession *)v12 activateWithCompletion:v15];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __37__HDSSetupSession__runSFSessionStart__block_invoke_662;
      v14[3] = &unk_279713F50;
      v14[4] = self;
      [(SFSession *)self->_sfSession setReceivedObjectHandler:v14];
    }
  }

  return self->_sfSessionState;
}

uint64_t __37__HDSSetupSession__runSFSessionStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  *(*(a1 + 32) + 1419) = 1;
  v5 = *(a1 + 32);
  v11 = v3;
  if (*(v5 + 1392) != 1)
  {
LABEL_8:
    v7 = *(v5 + 312);
    if (v7)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"SFSessionError-%@", v7];
      v4 = v11;
      v9 = v8;
    }

    else
    {
      v9 = @"SFSessionError";
    }

    [*(a1 + 32) _reportError:v4 label:v9];

    goto LABEL_12;
  }

  v6 = [v3 code];
  if (v6 != -6753)
  {
    v5 = *(a1 + 32);
    v4 = v11;
    goto LABEL_8;
  }

  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v6 = _LogCategory_Initialize(), v6))
    {
      v6 = __37__HDSSetupSession__runSFSessionStart__block_invoke_cold_1();
    }
  }

LABEL_12:

  return MEMORY[0x2821F9730](v6);
}

void __37__HDSSetupSession__runSFSessionStart__block_invoke_2(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  *(*(a1 + 32) + 1419) = 1;
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277CCA590];
  v9 = *MEMORY[0x277CCA450];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
  v5 = v4;
  v6 = @"?";
  if (v4)
  {
    v6 = v4;
  }

  v10[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  v8 = [v2 errorWithDomain:v3 code:-6762 userInfo:v7];
  [v1 _reportError:v8 label:@"SFSessionInterruption"];
}

void *__37__HDSSetupSession__runSFSessionStart__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __37__HDSSetupSession__runSFSessionStart__block_invoke_3_cold_1();
  }

  [*(a1 + 32) _promptForPINWithFlags:a2 throttleSeconds:a3];
  result = *(a1 + 32);
  if (result[158])
  {

    return [result pairSetupTryPIN:?];
  }

  return result;
}

void __37__HDSSetupSession__runSFSessionStart__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = *(v5 + 300);
  if (v3)
  {
    if (!v6)
    {
      v7 = [objc_opt_class() signpostLog];
      v8 = [*v4 signpostID];
      if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        if (os_signpost_enabled(v7))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SFSessionStart", "", buf, 2u);
        }
      }
    }

    v10 = [objc_opt_class() signpostLog];
    v11 = [*v4 signpostID];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v19 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v10, OS_SIGNPOST_INTERVAL_END, v12, "SFSessionStart", "", v19, 2u);
      }
    }

    *(*v4 + 75) = 3;
    [*v4 _reportError:v3 label:@"SFSessionActivate"];
  }

  else
  {
    if (!v6)
    {
      v13 = [objc_opt_class() signpostLog];
      v14 = [*v4 signpostID];
      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = v14;
        if (os_signpost_enabled(v13))
        {
          *v22 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SFSessionStart", "", v22, 2u);
        }
      }
    }

    v16 = [objc_opt_class() signpostLog];
    v17 = [*v4 signpostID];
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v16))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v16, OS_SIGNPOST_INTERVAL_END, v18, "SFSessionStart", "", v21, 2u);
      }
    }

    *(*v4 + 75) = 4;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __37__HDSSetupSession__runSFSessionStart__block_invoke_4_cold_1(v4);
    }

    [*v4 _run];
  }
}

void __37__HDSSetupSession__runSFSessionStart__block_invoke_662(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = v5;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v6 = _LogCategory_Initialize(), v5 = v7, v6))
    {
      __37__HDSSetupSession__runSFSessionStart__block_invoke_662_cold_1();
      v5 = v7;
    }
  }

  [*(a1 + 32) _handlePeerEvent:v5 flags:a2];
}

- (void)_updateSFSessionErrorHandlerForSUBS
{
  sfSession = self->_sfSession;
  if (sfSession)
  {

    [(SFSession *)sfSession setErrorHandler:&__block_literal_global_667];
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _updateSFSessionErrorHandlerForSUBS];
  }
}

uint64_t __54__HDSSetupSession__updateSFSessionErrorHandlerForSUBS__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    v5 = v2;
    if (gLogCategory_HDSSetupSession != -1 || (v2 = _LogCategory_Initialize(), v3 = v5, v2))
    {
      v2 = __54__HDSSetupSession__updateSFSessionErrorHandlerForSUBS__block_invoke_cold_1();
      v3 = v5;
    }
  }

  return MEMORY[0x2821F96F8](v2, v3);
}

- (int)_runHomeKitSetupMode
{
  result = self->_homeKitSetupModeState;
  if (!result)
  {
    if (self->_preAuthState == 4)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomeKitSetupMode];
      }

      if (!self->_homeKitSetupModeState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v6 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HomeKitSetupMode", "", buf, 2u);
          }
        }
      }

      self->_homeKitSetupModeState = 1;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __39__HDSSetupSession__runHomeKitSetupMode__block_invoke;
      v7[3] = &unk_279714E98;
      v7[4] = self;
      [MEMORY[0x277CD1A90] fetchSetupModeWithCompletion:v7];
      return self->_homeKitSetupModeState;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __39__HDSSetupSession__runHomeKitSetupMode__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_2;
  block[3] = &unk_279714FF8;
  v10 = v5;
  v11 = v6;
  v12 = a2;
  v8 = v5;
  dispatch_async(v7, block);
}

void __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!*(*(a1 + 40) + 492))
    {
      v8 = [objc_opt_class() signpostLog];
      v9 = [*(a1 + 40) signpostID];
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v8))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "HomeKitSetupMode", "", buf, 2u);
        }
      }
    }

    v11 = [objc_opt_class() signpostLog];
    v12 = [*(a1 + 40) signpostID];
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v12;
      if (os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_END, v13, "HomeKitSetupMode", "", buf, 2u);
      }
    }

    *(*(a1 + 40) + 492) = 3;
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_2_cold_1();
    }

    v16[0] = @"hksm";
    v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v17[0] = v3;
    v16[1] = @"hh2state";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48) == 1];
    v17[1] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v6 = *(a1 + 40);
    v7 = *(v6 + 288);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_2_684;
    v14[3] = &unk_2797145F0;
    v14[4] = v6;
    [v7 sendRequestID:@"_hds_hh2" options:0 request:v5 responseHandler:v14];
  }
}

void __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_2_684(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1800);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_3;
  v7[3] = &unk_2797142D0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 40) _logMetricsForSoftError:v3 label:@"ExportHH2State "];
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_3_cold_1();
    }

    if (!*(*(a1 + 40) + 492))
    {
      v4 = [objc_opt_class() signpostLog];
      v5 = [*(a1 + 40) signpostID];
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HomeKitSetupMode", "", buf, 2u);
        }
      }
    }

    v7 = [objc_opt_class() signpostLog];
    v8 = [*(a1 + 40) signpostID];
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL && (v9 = v8, os_signpost_enabled(v7)))
    {
      *v19 = 0;
      v10 = 2;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_END, v9, "HomeKitSetupMode", "", v19, 2u);
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runHomeKitSetupMode__block_invoke_3_cold_2();
    }

    if (!*(*(a1 + 40) + 492))
    {
      v11 = [objc_opt_class() signpostLog];
      v12 = [*(a1 + 40) signpostID];
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        if (os_signpost_enabled(v11))
        {
          *v18 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "HomeKitSetupMode", "", v18, 2u);
        }
      }
    }

    v7 = [objc_opt_class() signpostLog];
    v14 = [*(a1 + 40) signpostID];
    if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v7))
      {
        *v17 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_END, v15, "HomeKitSetupMode", "", v17, 2u);
      }
    }

    v10 = 4;
  }

  *(*(a1 + 40) + 492) = v10;
  return [*(a1 + 40) _run];
}

- (int)_runHH2Upsell
{
  result = self->_hh2UpsellState;
  if (!result)
  {
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"HH2Upsell";

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHH2Upsell];
    }

    if (!self->_hh2UpsellState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HH2Upsell", "", buf, 2u);
        }
      }
    }

    self->_hh2UpsellState = 1;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __32__HDSSetupSession__runHH2Upsell__block_invoke;
    v8[3] = &unk_279714E98;
    v8[4] = self;
    [MEMORY[0x277CD1A90] fetchSetupModeWithCompletion:v8];
    return self->_hh2UpsellState;
  }

  return result;
}

void __32__HDSSetupSession__runHH2Upsell__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__HDSSetupSession__runHH2Upsell__block_invoke_2;
  block[3] = &unk_279714FF8;
  v10 = v5;
  v11 = v6;
  v12 = a2;
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __32__HDSSetupSession__runHH2Upsell__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!*(*(a1 + 40) + 1688))
    {
      v15 = [objc_opt_class() signpostLog];
      v16 = [*(a1 + 40) signpostID];
      if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = v16;
        if (os_signpost_enabled(v15))
        {
          *v31 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "HH2Upsell", "", v31, 2u);
        }
      }
    }

    v11 = [objc_opt_class() signpostLog];
    v18 = [*(a1 + 40) signpostID];
    if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v11))
      {
        *v30 = 0;
        v14 = 2;
        v20 = v30;
LABEL_34:
        _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_END, v19, "HH2Upsell", "", v20, 2u);
        goto LABEL_47;
      }
    }

    goto LABEL_46;
  }

  v3 = *(a1 + 48);
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __32__HDSSetupSession__runHH2Upsell__block_invoke_2_cold_1();
  }

  if (v3 == 2)
  {
    v4 = gLogCategory_HDSSetupSession;
  }

  else
  {
    v5 = +[HDSDefaults forceHH2Upsell];
    v4 = gLogCategory_HDSSetupSession;
    if (!v5)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __32__HDSSetupSession__runHH2Upsell__block_invoke_2_cold_2();
      }

      if (!*(*(a1 + 40) + 1688))
      {
        v21 = [objc_opt_class() signpostLog];
        v22 = [*(a1 + 40) signpostID];
        if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v23 = v22;
          if (os_signpost_enabled(v21))
          {
            *v27 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v23, "HH2Upsell", "", v27, 2u);
          }
        }
      }

      v11 = [objc_opt_class() signpostLog];
      v24 = [*(a1 + 40) signpostID];
      if ((v24 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = v24;
        if (os_signpost_enabled(v11))
        {
          v26 = 0;
          v14 = 2;
          v20 = &v26;
          goto LABEL_34;
        }
      }

LABEL_46:
      v14 = 2;
      goto LABEL_47;
    }
  }

  if (v4 <= 30 && (v4 != -1 || _LogCategory_Initialize()))
  {
    __32__HDSSetupSession__runHH2Upsell__block_invoke_2_cold_3();
  }

  v6 = *(a1 + 40);
  v7 = *(v6 + 2120);
  if (v7)
  {
    (*(v7 + 16))(*(v6 + 2120));
    v6 = *(a1 + 40);
  }

  if (!*(v6 + 1688))
  {
    v8 = [objc_opt_class() signpostLog];
    v9 = [*(a1 + 40) signpostID];
    if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = v9;
      if (os_signpost_enabled(v8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "HH2Upsell", "", buf, 2u);
      }
    }
  }

  v11 = [objc_opt_class() signpostLog];
  v12 = [*(a1 + 40) signpostID];
  if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = v12;
    if (os_signpost_enabled(v11))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_END, v13, "HH2Upsell", "", v28, 2u);
    }
  }

  v14 = 3;
LABEL_47:

  *(*(a1 + 40) + 1688) = v14;
  return [*(a1 + 40) _run];
}

- (int)_runSetSessionID
{
  result = self->_sessionIDState;
  if (!result)
  {
    v4 = objc_opt_new();
    uUIDString = [v4 UUIDString];
    sessionID = self->_sessionID;
    self->_sessionID = uUIDString;

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSetSessionID];
    }

    if (!self->_sessionIDState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SessionID", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v12, "SessionID", "", v13, 2u);
      }
    }

    result = 4;
    self->_sessionIDState = 4;
  }

  return result;
}

- (int)_runPreflightWiFi
{
  preflightWiFiState = self->_preflightWiFiState;
  if (preflightWiFiState != 4 && preflightWiFiState != 2)
  {
    if (preflightWiFiState || self->_preAuthState != 4)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return self->_preflightWiFiState;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"PreflightWiFi";

    v6 = WiFiCopyCurrentNetworkInfoEx();
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v8 = [v6 mutableCopy];
    [v8 removeObjectForKey:@"password"];
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    CFStringGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    objc_storeStrong(&self->_phonesWiFiSSID, v9);
    if (!v9)
    {
      v11 = NSErrorWithOSStatusF(301000, "No WiFi SSID");
      if (!self->_preflightWiFiState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v22 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v22, "PreflightWiFi", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_95;
      }

      v17 = signpostID2;
      if (!os_signpost_enabled(signpostLog2))
      {
        goto LABEL_95;
      }

      *buf = 0;
LABEL_93:
      v53 = buf;
LABEL_94:
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v17, "PreflightWiFi", "", v53, 2u);
LABEL_95:

      self->_preflightWiFiState = 3;
      [(HDSSetupSession *)self _reportError:v11 label:@"PreflightWiFi"];
      v18 = self->_preflightWiFiState;

LABEL_96:
      return v18;
    }

    v10 = [v6 objectForKeyedSubscript:@"password"];
    if (v10 || ([v6 objectForKeyedSubscript:@"open"], (v10 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v35 = [v6 objectForKeyedSubscript:@"enterprise"];

      if (!v35)
      {
        if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runPreflightWiFi];
        }

        if (!self->_preflightWiFiState)
        {
          signpostLog3 = [objc_opt_class() signpostLog];
          signpostID3 = [(HDSSetupSession *)self signpostID];
          if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v38 = signpostID3;
            if (os_signpost_enabled(signpostLog3))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v38, "PreflightWiFi", "", buf, 2u);
            }
          }
        }

        signpostLog4 = [objc_opt_class() signpostLog];
        signpostID4 = [(HDSSetupSession *)self signpostID];
        if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v41 = signpostID4;
          if (os_signpost_enabled(signpostLog4))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v41, "PreflightWiFi", "", buf, 2u);
          }
        }

        self->_preflightWiFiState = 3;
        v42 = NSErrorWithOSStatusF(301041, "NoWiFIPassword");
        [(HDSSetupSession *)self _reportError:v42 label:@"PreflightWiFi"];

        v18 = self->_preflightWiFiState;
        goto LABEL_96;
      }
    }

    if (self->_preventAppleWiFi && (([v9 isEqual:@"AppleWiFi"] & 1) != 0 || objc_msgSend(v9, "isEqual:", @"AppleWiFiSecure")))
    {
      v11 = NSErrorWithOSStatusF(301020, "AppleWiFi not allowed");
      if (!self->_preflightWiFiState)
      {
        signpostLog5 = [objc_opt_class() signpostLog];
        signpostID5 = [(HDSSetupSession *)self signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v14 = signpostID5;
          if (os_signpost_enabled(signpostLog5))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PreflightWiFi", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID6 = [(HDSSetupSession *)self signpostID];
      if (signpostID6 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_95;
      }

      v17 = signpostID6;
      if (!os_signpost_enabled(signpostLog2))
      {
        goto LABEL_95;
      }

      *buf = 0;
      goto LABEL_93;
    }

    if (CFDictionaryGetInt64())
    {
      if (Int64Ranged != 1 && (NSPrintF("Not shareable (%d)", Int64Ranged), (v24 = objc_claimAutoreleasedReturnValue()) != 0) || [(SFDevice *)self->_peerDevice osVersion]<= 0xA && (NSPrintF("Peer old OS (%d)", [(SFDevice *)self->_peerDevice osVersion]), (v24 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v25 = v24;
        v26 = NSErrorWithOSStatusF(301034, "Enterprise WiFi not supported: %@", v24);
        if (!self->_preflightWiFiState)
        {
          signpostLog6 = [objc_opt_class() signpostLog];
          signpostID7 = [(HDSSetupSession *)self signpostID];
          if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v29 = signpostID7;
            if (os_signpost_enabled(signpostLog6))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_BEGIN, v29, "PreflightWiFi", "", buf, 2u);
            }
          }
        }

        signpostLog7 = [objc_opt_class() signpostLog];
        signpostID8 = [(HDSSetupSession *)self signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v32 = signpostID8;
          if (os_signpost_enabled(signpostLog7))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog7, OS_SIGNPOST_INTERVAL_END, v32, "PreflightWiFi", "", buf, 2u);
          }
        }

        self->_preflightWiFiState = 3;
        [(HDSSetupSession *)self _reportError:v26 label:@"PreflightWiFi"];
        v18 = self->_preflightWiFiState;

        goto LABEL_96;
      }
    }

    wifiIsCaptive = CFDictionaryGetInt64() != 0;
    self->_wifiIsCaptive = wifiIsCaptive;
    peerSupportsCaptiveNetworks = self->_peerSupportsCaptiveNetworks;
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || (v43 = _LogCategory_Initialize(), wifiIsCaptive = self->_wifiIsCaptive, v43))
      {
        LogPrintF();
        wifiIsCaptive = self->_wifiIsCaptive;
      }
    }

    if (wifiIsCaptive && !peerSupportsCaptiveNetworks)
    {
      v11 = NSErrorWithOSStatusF(301004, "WiFi network is captive");
      if (!self->_preflightWiFiState)
      {
        signpostLog8 = [objc_opt_class() signpostLog];
        signpostID9 = [(HDSSetupSession *)self signpostID];
        if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v46 = signpostID9;
          if (os_signpost_enabled(signpostLog8))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog8, OS_SIGNPOST_INTERVAL_BEGIN, v46, "PreflightWiFi", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID10 = [(HDSSetupSession *)self signpostID];
      if (signpostID10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_95;
      }

      v17 = signpostID10;
      if (!os_signpost_enabled(signpostLog2))
      {
        goto LABEL_95;
      }

      *buf = 0;
      goto LABEL_93;
    }

    if (Int64Ranged >= 2 && (Int64Ranged != 5 || !peerSupportsCaptiveNetworks))
    {
      v48 = CUWiFiShareableStatusToString(Int64Ranged);
      v11 = NSErrorWithOSStatusF(301004, "WiFi network not shareable (%s)", v48);
      if (!self->_preflightWiFiState)
      {
        signpostLog9 = [objc_opt_class() signpostLog];
        signpostID11 = [(HDSSetupSession *)self signpostID];
        if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v51 = signpostID11;
          if (os_signpost_enabled(signpostLog9))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog9, OS_SIGNPOST_INTERVAL_BEGIN, v51, "PreflightWiFi", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID12 = [(HDSSetupSession *)self signpostID];
      if (signpostID12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_95;
      }

      v17 = signpostID12;
      if (!os_signpost_enabled(signpostLog2))
      {
        goto LABEL_95;
      }

      *buf = 0;
      goto LABEL_93;
    }

    *buf = 0;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    if (v6)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreflightWiFi];
      }
    }

    else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    Int64 = CFDictionaryGetInt64();
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    if (!self->_homePod6GCapable && Int64)
    {
      v11 = NSErrorWithOSStatusF(4294896158, "HomePod Not 6G Capable");
      if (!self->_preflightWiFiState)
      {
        signpostLog10 = [objc_opt_class() signpostLog];
        signpostID13 = [(HDSSetupSession *)self signpostID];
        if (signpostID13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v57 = signpostID13;
          if (os_signpost_enabled(signpostLog10))
          {
            *v69 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog10, OS_SIGNPOST_INTERVAL_BEGIN, v57, "PreflightWiFi", "", v69, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID14 = [(HDSSetupSession *)self signpostID];
      if (signpostID14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_95;
      }

      v17 = signpostID14;
      if (!os_signpost_enabled(signpostLog2))
      {
        goto LABEL_95;
      }

      *v69 = 0;
      v53 = v69;
      goto LABEL_94;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    self->_wifiCCA = CFDictionaryGetInt64();
    if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    self->_wifiChannel = CFDictionaryGetInt64();
    if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    CFStringGetTypeID();
    v59 = CFDictionaryGetTypedValue();
    wifiOUI = self->_wifiOUI;
    self->_wifiOUI = v59;

    if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    self->_wifiRSSI = CFDictionaryGetInt64();
    if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    CFStringGetTypeID();
    v61 = CFDictionaryGetTypedValue();
    wifiSecurityString = self->_wifiSecurityString;
    self->_wifiSecurityString = v61;

    if (*buf)
    {
      if (gLogCategory_HDSSetupSession > 60)
      {
LABEL_150:
        if (!self->_preflightWiFiState)
        {
          signpostLog11 = [objc_opt_class() signpostLog];
          signpostID15 = [(HDSSetupSession *)self signpostID];
          if (signpostID15 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v65 = signpostID15;
            if (os_signpost_enabled(signpostLog11))
            {
              *v69 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog11, OS_SIGNPOST_INTERVAL_BEGIN, v65, "PreflightWiFi", "", v69, 2u);
            }
          }
        }

        signpostLog12 = [objc_opt_class() signpostLog];
        signpostID16 = [(HDSSetupSession *)self signpostID];
        if (signpostID16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v68 = signpostID16;
          if (os_signpost_enabled(signpostLog12))
          {
            *v69 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog12, OS_SIGNPOST_INTERVAL_END, v68, "PreflightWiFi", "", v69, 2u);
          }
        }

        self->_preflightWiFiState = 4;
        return self->_preflightWiFiState;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runPreflightWiFi];
      }
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightWiFi];
    }

    goto LABEL_150;
  }

  return self->_preflightWiFiState;
}

- (int)_runPreflightSSIDCheck
{
  preflightSSIDCheckState = self->_preflightSSIDCheckState;
  if (preflightSSIDCheckState == 4 || preflightSSIDCheckState == 2)
  {
    return self->_preflightSSIDCheckState;
  }

  if (preflightSSIDCheckState || self->_preAuthState != 4)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_preflightSSIDCheckState;
  }

  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"PreflightSSIDCheck";

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreflightSSIDCheck];
  }

  v6 = WiFiCopyCurrentNetworkInfoEx();
  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  objc_storeStrong(&self->_phonesWiFiSSID, v7);
  if (v7)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightSSIDCheck];
    }

    if (!self->_preflightSSIDCheckState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v10, "PreflightWiFi", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *v23 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v13, "PreflightWiFi", "", v23, 2u);
      }
    }

    self->_preflightSSIDCheckState = 4;
    return self->_preflightSSIDCheckState;
  }

  v16 = NSErrorWithOSStatusF(301000, "No WiFi SSID");
  if (!self->_preflightSSIDCheckState)
  {
    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *v26 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PreflightWiFi", "", v26, 2u);
      }
    }
  }

  signpostLog4 = [objc_opt_class() signpostLog];
  signpostID4 = [(HDSSetupSession *)self signpostID];
  if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v22 = signpostID4;
    if (os_signpost_enabled(signpostLog4))
    {
      *v25 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v22, "PreflightWiFi", "", v25, 2u);
    }
  }

  self->_preflightSSIDCheckState = 3;
  [(HDSSetupSession *)self _reportError:v16 label:@"PreflightSSID"];
  v14 = self->_preflightSSIDCheckState;

  return v14;
}

- (int)_runPreflightiCloud
{
  v66[1] = *MEMORY[0x277D85DE8];
  preflightiCloudState = self->_preflightiCloudState;
  HIDWORD(v5) = preflightiCloudState;
  LODWORD(v5) = preflightiCloudState;
  v4 = v5 >> 1;
  if ((v4 - 1) < 2)
  {
    goto LABEL_86;
  }

  if (v4 == 5)
  {
    if (self->_homeiCloudEnabled)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreflightiCloud];
      }

      [(HDSSetupSession *)self _homeKitUpdateiCloudSwitchState:1];
      if (!self->_preflightiCloudState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v36 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v36, "PreflightiCloud", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v39 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v39, "PreflightiCloud", "", buf, 2u);
        }
      }

      self->_preflightiCloudState = 4;
      goto LABEL_86;
    }

    if (preflightiCloudState == 2 || preflightiCloudState == 4)
    {
LABEL_86:
      LODWORD(signpostLog11) = self->_preflightiCloudState;
      return signpostLog11;
    }

LABEL_58:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_86;
  }

  if (v4)
  {
    goto LABEL_58;
  }

  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"PreflightiCloud";

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreflightiCloud];
  }

  if (!self->_preflightiCloudState)
  {
    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v9, "PreflightiCloud", "", buf, 2u);
      }
    }
  }

  self->_preflightiCloudState = 1;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 120, 0);
  }

  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  iCloudAccountStore = self->_iCloudAccountStore;
  self->_iCloudAccountStore = defaultStore;

  aa_primaryAppleAccount = [(ACAccountStore *)self->_iCloudAccountStore aa_primaryAppleAccount];
  if (!aa_primaryAppleAccount)
  {
    if (!self->_preflightiCloudState)
    {
      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v43 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v43, "PreflightiCloud", "", buf, 2u);
        }
      }
    }

    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v46 = signpostID5;
      if (os_signpost_enabled(signpostLog5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v46, "PreflightiCloud", "", buf, 2u);
      }
    }

    self->_preflightiCloudState = 3;
    v47 = NSErrorWithOSStatusF(301005, "No iCloud account");
    [(HDSSetupSession *)self _reportError:v47 label:@"PreflightiCloud"];
    LODWORD(signpostLog11) = self->_preflightiCloudState;

    return signpostLog11;
  }

  v14 = aa_primaryAppleAccount;
  objc_storeStrong(&self->_iCloudAccount, aa_primaryAppleAccount);
  username = [v14 username];
  iCloudUserID = self->_iCloudUserID;
  self->_iCloudUserID = username;

  if (!self->_iCloudAccountState)
  {
    signpostLog6 = [objc_opt_class() signpostLog];
    signpostID6 = [(HDSSetupSession *)self signpostID];
    if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = signpostID6;
      if (os_signpost_enabled(signpostLog6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_BEGIN, v19, "iCloudAccountCheck", "", buf, 2u);
      }
    }
  }

  self->_iCloudAccountState = 1;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreflightiCloud];
  }

  v20 = self->_iCloudAccountStore;
  v65 = *MEMORY[0x277CB9098];
  v66[0] = MEMORY[0x277CBEC38];
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __38__HDSSetupSession__runPreflightiCloud__block_invoke;
  v61[3] = &unk_279715048;
  v22 = v14;
  v62 = v22;
  selfCopy = self;
  [(ACAccountStore *)v20 aa_updatePropertiesForAppleAccount:v22 options:v21 completion:v61];

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreflightiCloud];
  }

  sharedInstance = [(objc_class *)getAKAccountManagerClass() sharedInstance];
  v24 = [v22 accountPropertyForKey:@"altDSID"];
  if (!v24)
  {
    v25 = 0;
LABEL_71:
    if (!self->_preflightiCloudState)
    {
      signpostLog7 = [objc_opt_class() signpostLog];
      signpostID7 = [(HDSSetupSession *)self signpostID];
      if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v50 = signpostID7;
        if (os_signpost_enabled(signpostLog7))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog7, OS_SIGNPOST_INTERVAL_BEGIN, v50, "PreflightiCloud", "", buf, 2u);
        }
      }
    }

    signpostLog8 = [objc_opt_class() signpostLog];
    signpostID8 = [(HDSSetupSession *)self signpostID];
    if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v53 = signpostID8;
      if (os_signpost_enabled(signpostLog8))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog8, OS_SIGNPOST_INTERVAL_END, v53, "PreflightiCloud", "", buf, 2u);
      }
    }

    self->_preflightiCloudState = 3;
    if (self->_iTunesAccount)
    {
      NSErrorWithOSStatusF(301006, "Managed & Unknown Account not supported");
    }

    else
    {
      NSErrorWithOSStatusF(301017, "No iCloud HSA2 or iTunes");
    }
    v54 = ;
    [(HDSSetupSession *)self _reportError:v54 label:@"PreflightiCloudHSA2"];
    LODWORD(signpostLog11) = self->_preflightiCloudState;

    v32 = 0;
    goto LABEL_85;
  }

  v25 = [sharedInstance authKitAccountWithAltDSID:v24];
  if (!v25)
  {
    goto LABEL_71;
  }

  v26 = [sharedInstance securityLevelForAccount:v25];
  if (v26 == 5 || !v26)
  {
    goto LABEL_71;
  }

  v27 = getkAccountDataclassHome(v26);
  v28 = [v22 isEnabledForDataclass:v27];

  if ((v28 & 1) == 0)
  {
    if (self->_promptForHomeiCloudHandler)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreflightiCloud];
      }

      if (!self->_preflightiCloudState)
      {
        signpostLog9 = [objc_opt_class() signpostLog];
        signpostID9 = [(HDSSetupSession *)self signpostID];
        if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = signpostID9;
          if (os_signpost_enabled(signpostLog9))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog9, OS_SIGNPOST_INTERVAL_BEGIN, v31, "PreflightiCloud", "", buf, 2u);
          }
        }
      }

      self->_preflightiCloudState = 10;
      (*(self->_promptForHomeiCloudHandler + 2))();
      v32 = 0;
      LODWORD(signpostLog11) = self->_preflightiCloudState;
      goto LABEL_85;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightiCloud];
    }

    [(HDSSetupSession *)self _homeKitUpdateiCloudSwitchState:1];
  }

  if (!self->_preflightiCloudState)
  {
    signpostLog10 = [objc_opt_class() signpostLog];
    signpostID10 = [(HDSSetupSession *)self signpostID];
    if (signpostID10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v58 = signpostID10;
      if (os_signpost_enabled(signpostLog10))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog10, OS_SIGNPOST_INTERVAL_BEGIN, v58, "PreflightiCloud", "", buf, 2u);
      }
    }
  }

  signpostLog11 = [objc_opt_class() signpostLog];
  signpostID11 = [(HDSSetupSession *)self signpostID];
  if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v60 = signpostID11;
    if (os_signpost_enabled(signpostLog11))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog11, OS_SIGNPOST_INTERVAL_END, v60, "PreflightiCloud", "", buf, 2u);
    }
  }

  self->_preflightiCloudState = 4;
  v32 = 1;
LABEL_85:

  if (v32)
  {
    goto LABEL_86;
  }

  return signpostLog11;
}

void __38__HDSSetupSession__runPreflightiCloud__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __38__HDSSetupSession__runPreflightiCloud__block_invoke_cold_1(a1);
  }

  [*(a1 + 40) _logMetricsForSoftError:v4 label:@"Preflight-iCloud"];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(v6 + 120);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__HDSSetupSession__runPreflightiCloud__block_invoke_2;
  v8[3] = &unk_279715020;
  v8[4] = v6;
  [v7 saveVerifiedAccount:v5 withCompletionHandler:v8];
}

void __38__HDSSetupSession__runPreflightiCloud__block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5 || (a2 & 1) == 0)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __38__HDSSetupSession__runPreflightiCloud__block_invoke_2_cold_1();
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else if (!v5)
    {
      goto LABEL_12;
    }

    [*(a1 + 32) _logMetricsForSoftError:v5 label:@"Preflight-iCloud"];
    goto LABEL_12;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __38__HDSSetupSession__runPreflightiCloud__block_invoke_2_cold_2();
  }

LABEL_12:
  v6 = *(a1 + 32);
  v7 = *(v6 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HDSSetupSession__runPreflightiCloud__block_invoke_3;
  block[3] = &unk_279713FF0;
  block[4] = v6;
  dispatch_async(v7, block);
}

uint64_t __38__HDSSetupSession__runPreflightiCloud__block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!*(*(a1 + 32) + 144))
  {
    v3 = [objc_opt_class() signpostLog];
    v4 = [*(a1 + 32) signpostID];
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "iCloudAccountCheck", "", buf, 2u);
      }
    }
  }

  v6 = [objc_opt_class() signpostLog];
  v7 = [*(a1 + 32) signpostID];
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v6, OS_SIGNPOST_INTERVAL_END, v8, "iCloudAccountCheck", "", v10, 2u);
    }
  }

  *(*(a1 + 32) + 144) = 4;
  return [*(a1 + 32) _run];
}

- (int)_runPreflightiTunes
{
  result = self->_preflightiTunesState;
  if (result <= 3)
  {
    if (result)
    {
      if (result == 2)
      {
        return result;
      }

      goto LABEL_33;
    }

    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_40;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runPreflightiTunes];
    }

    if (!self->_preflightiTunesState)
    {
LABEL_40:
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PreflightiTunes", "", buf, 2u);
        }
      }
    }

    self->_preflightiTunesState = 1;
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"PreflightiTunes";

    if (!self->_iTunesAccount)
    {
      if (self->_promptForiTunesSignInHandler)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runPreflightiTunes];
        }

        if (!self->_preflightiTunesState)
        {
          signpostLog2 = [objc_opt_class() signpostLog];
          signpostID2 = [(HDSSetupSession *)self signpostID];
          if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v26 = signpostID2;
            if (os_signpost_enabled(signpostLog2))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v26, "PreflightiTunes", "", buf, 2u);
            }
          }
        }

        self->_preflightiTunesState = 10;
        (*(self->_promptForiTunesSignInHandler + 2))();
        return self->_preflightiTunesState;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreflightiTunes];
      }

      if (!self->_preflightiTunesState)
      {
        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v34 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PreflightiTunes", "", buf, 2u);
          }
        }
      }

      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v37 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v37, "PreflightiTunes", "", buf, 2u);
        }
      }

      result = 2;
      self->_preflightiTunesState = 2;
      self->_iTunesSignInSkip = 1;
      return result;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightiTunes];
    }

    if (!self->_appleMusicEnabled)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreflightiTunes];
      }

      if (!self->_preflightiTunesState)
      {
        signpostLog5 = [objc_opt_class() signpostLog];
        signpostID5 = [(HDSSetupSession *)self signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v30 = signpostID5;
          if (os_signpost_enabled(signpostLog5))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v30, "PreflightiTunes", "", buf, 2u);
          }
        }
      }

      signpostLog6 = [objc_opt_class() signpostLog];
      signpostID6 = [(HDSSetupSession *)self signpostID];
      if (signpostID6 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_79;
      }

      v15 = signpostID6;
      if (!os_signpost_enabled(signpostLog6))
      {
        goto LABEL_79;
      }

      *buf = 0;
      goto LABEL_78;
    }

    appleMusicState = self->_appleMusicState;
    if (appleMusicState == 1)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreflightiTunes];
      }

      if (self->_preflightiTunesState)
      {
        goto LABEL_101;
      }

      signpostLog7 = [objc_opt_class() signpostLog];
      signpostID7 = [(HDSSetupSession *)self signpostID];
      if (signpostID7 - 1 > 0xFFFFFFFFFFFFFFFDLL || (v23 = signpostID7, !os_signpost_enabled(signpostLog7)))
      {
LABEL_100:

LABEL_101:
        result = 11;
        self->_preflightiTunesState = 11;
        progressHandler = self->_progressHandler;
        if (!progressHandler)
        {
          return result;
        }

        progressHandler[2](self->_progressHandler, 122, 0);
        return self->_preflightiTunesState;
      }

      *buf = 0;
    }

    else
    {
      if (appleMusicState)
      {
        if (!self->_preflightiTunesState)
        {
          signpostLog8 = [objc_opt_class() signpostLog];
          signpostID8 = [(HDSSetupSession *)self signpostID];
          if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v42 = signpostID8;
            if (os_signpost_enabled(signpostLog8))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog8, OS_SIGNPOST_INTERVAL_BEGIN, v42, "PreflightiTunes", "", buf, 2u);
            }
          }
        }

        signpostLog9 = [objc_opt_class() signpostLog];
        signpostID9 = [(HDSSetupSession *)self signpostID];
        if (signpostID9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_112;
        }

        v9 = signpostID9;
        if (!os_signpost_enabled(signpostLog9))
        {
          goto LABEL_112;
        }

        *buf = 0;
        goto LABEL_17;
      }

      [(HDSSetupSession *)self preflightAppleMusic];
      if (self->_preflightiTunesState)
      {
        goto LABEL_101;
      }

      signpostLog7 = [objc_opt_class() signpostLog];
      signpostID10 = [(HDSSetupSession *)self signpostID];
      if (signpostID10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_100;
      }

      v23 = signpostID10;
      if (!os_signpost_enabled(signpostLog7))
      {
        goto LABEL_100;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog7, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PreflightiTunes", "", buf, 2u);
    goto LABEL_100;
  }

  if (result == 4)
  {
    return result;
  }

  if (result == 10)
  {
    if (!self->_iTunesSignInSkip)
    {
      goto LABEL_33;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightiTunes];
    }

    if (!self->_preflightiTunesState)
    {
      signpostLog10 = [objc_opt_class() signpostLog];
      signpostID11 = [(HDSSetupSession *)self signpostID];
      if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = signpostID11;
        if (os_signpost_enabled(signpostLog10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PreflightiTunes", "", buf, 2u);
        }
      }
    }

    signpostLog6 = [objc_opt_class() signpostLog];
    signpostID12 = [(HDSSetupSession *)self signpostID];
    if (signpostID12 - 1 > 0xFFFFFFFFFFFFFFFDLL || (v15 = signpostID12, !os_signpost_enabled(signpostLog6)))
    {
LABEL_79:

      result = 2;
LABEL_113:
      self->_preflightiTunesState = result;
      return result;
    }

    *buf = 0;
LABEL_78:
    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_END, v15, "PreflightiTunes", "", buf, 2u);
    goto LABEL_79;
  }

  if (result == 11 && self->_appleMusicState >= 2)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightiTunes];
    }

    if (!self->_preflightiTunesState)
    {
      signpostLog11 = [objc_opt_class() signpostLog];
      signpostID13 = [(HDSSetupSession *)self signpostID];
      if (signpostID13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = signpostID13;
        if (os_signpost_enabled(signpostLog11))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog11, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PreflightiTunes", "", buf, 2u);
        }
      }
    }

    signpostLog9 = [objc_opt_class() signpostLog];
    signpostID14 = [(HDSSetupSession *)self signpostID];
    if (signpostID14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_112;
    }

    v9 = signpostID14;
    if (!os_signpost_enabled(signpostLog9))
    {
      goto LABEL_112;
    }

    *buf = 0;
LABEL_17:
    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog9, OS_SIGNPOST_INTERVAL_END, v9, "PreflightiTunes", "", buf, 2u);
LABEL_112:

    result = 4;
    goto LABEL_113;
  }

LABEL_33:
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v27 = _LogCategory_Initialize(), result = self->_preflightiTunesState, v27))
    {
      LogPrintF();
      return self->_preflightiTunesState;
    }
  }

  return result;
}

- (int)_runPreflightCDP
{
  result = self->_preflightCDPState;
  if (!result)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreflightCDP];
    }

    self->_preflightCDPState = 1;
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"PreflightCDP";

    sharedInstance = [(objc_class *)getCDPAccountClass() sharedInstance];
    v6 = SVSLocalizedString(@"HOME_DEVICE_SETUP_CUSTOMER_NAME");
    v7 = objc_alloc(MEMORY[0x277CFDAE8]);
    primaryAccountAltDSID = [sharedInstance primaryAccountAltDSID];
    v9 = [v7 initWithAltDSID:primaryAccountAltDSID];

    [v9 setFeatureName:v6];
    [v9 setDeviceToDeviceEncryptionUpgradeUIStyle:0];
    [v9 setDeviceToDeviceEncryptionUpgradeType:0];
    if (self->_presentingChildViewController)
    {
      [v9 setPresentingViewController:?];
    }

    [v9 setSecurityUpgradeContext:*MEMORY[0x277CF00A0]];
    v10 = [objc_alloc(MEMORY[0x277CFDAF0]) initWithContext:v9];
    cdpEncryptionHelper = self->_cdpEncryptionHelper;
    self->_cdpEncryptionHelper = v10;

    v12 = self->_cdpEncryptionHelper;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __35__HDSSetupSession__runPreflightCDP__block_invoke;
    v13[3] = &unk_279715020;
    v13[4] = self;
    [(CDPUIDeviceToDeviceEncryptionHelper *)v12 performDeviceToDeviceEncryptionStateRepairWithCompletion:v13];

    return self->_preflightCDPState;
  }

  return result;
}

void __35__HDSSetupSession__runPreflightCDP__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSSetupSession__runPreflightCDP__block_invoke_2;
  block[3] = &unk_279715070;
  v10 = v5;
  v11 = v6;
  v12 = a2;
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __35__HDSSetupSession__runPreflightCDP__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    if (gLogCategory_HDSSetupSession <= 90)
    {
      if (gLogCategory_HDSSetupSession != -1 || (v5 = _LogCategory_Initialize(), v2 = *(a1 + 32), v5))
      {
        LogPrintF();
        v2 = *(a1 + 32);
      }
    }

    v6 = *(a1 + 40);

    return [v6 _reportError:v2 label:@"CDPManateeRepair"];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __35__HDSSetupSession__runPreflightCDP__block_invoke_2_cold_1();
    }

    *(*(a1 + 40) + 100) = 4;
    v3 = *(a1 + 40);

    return [v3 _run];
  }
}

- (int)_runPreflightJSCheck
{
  result = self->_homePodJSCheckState;
  if (!result)
  {
    self->_homePodJSCheckState = 1;
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"PreflightJS";

    v7 = [getAFPreferencesClass_0(v5 v6)];
    if ([v7 assistantIsEnabled])
    {
      languageCode = [v7 languageCode];
      firstObject = languageCode;
      if (languageCode)
      {
        goto LABEL_4;
      }
    }

    else
    {
      preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
      firstObject = [preferredLanguages firstObject];

      if (firstObject)
      {
LABEL_4:
        sharedPreferences = [getVTPreferencesClass_0(languageCode) sharedPreferences];
        v11 = [sharedPreferences isCompactVoiceTriggerAvailableForLanguageCode:firstObject forPhraseDeviceType:8];

        self->_homePodCapableOfJS = v11;
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v13 = 4;
        goto LABEL_11;
      }
    }

    self->_homePodCapableOfJS = 0;
    v13 = 2;
LABEL_11:
    self->_homePodJSCheckState = v13;

    return self->_homePodJSCheckState;
  }

  return result;
}

- (int)_runPreflightMisc
{
  selfCopy = self;
  preflightMiscState = self->_preflightMiscState;
  do
  {
    v4 = preflightMiscState;
    if (preflightMiscState > 11)
    {
      if (preflightMiscState > 13)
      {
        if (preflightMiscState == 14)
        {
          if (gLogCategory_HDSSetupSession <= 30)
          {
            if (gLogCategory_HDSSetupSession != -1 || (self = _LogCategory_Initialize(), self))
            {
              self = [HDSSetupSession _runPreflightMisc];
            }

            if (!selfCopy->_preflightMiscState)
            {
              signpostLog = [objc_opt_class() signpostLog];
              signpostID = [(HDSSetupSession *)selfCopy signpostID];
              if ((signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v25 = signpostID;
                if (os_signpost_enabled(signpostLog))
                {
                  *v36 = 0;
                  _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PreflightMisc", "", v36, 2u);
                }
              }
            }
          }

          selfCopy->_preflightMiscState = 15;
        }

        else if (preflightMiscState == 15)
        {
          if (gLogCategory_HDSSetupSession <= 30)
          {
            if (gLogCategory_HDSSetupSession != -1 || (self = _LogCategory_Initialize(), self))
            {
              self = [HDSSetupSession _runPreflightMisc];
            }
          }

          if (selfCopy->_selectedSiriVoice)
          {
            if (!selfCopy->_preflightMiscState)
            {
              signpostLog2 = [objc_opt_class() signpostLog];
              signpostID2 = [(HDSSetupSession *)selfCopy signpostID];
              if ((signpostID2 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v13 = signpostID2;
                if (os_signpost_enabled(signpostLog2))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v13, "PreflightMisc", "", buf, 2u);
                }
              }
            }

            signpostLog3 = [objc_opt_class() signpostLog];
            signpostID3 = [(HDSSetupSession *)selfCopy signpostID];
            if ((signpostID3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v15 = signpostID3;
              if (os_signpost_enabled(signpostLog3))
              {
                LOWORD(v34) = 0;
                v8 = &v34;
                v9 = signpostLog3;
                v10 = v15;
LABEL_36:
                _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_END, v10, "PreflightMisc", "", v8, 2u);
              }
            }

LABEL_37:

            selfCopy->_preflightMiscState = 4;
          }
        }
      }

      else if (preflightMiscState == 12)
      {
        if (gLogCategory_HDSSetupSession <= 30)
        {
          if (gLogCategory_HDSSetupSession != -1 || (self = _LogCategory_Initialize(), self))
          {
            self = [HDSSetupSession _runPreflightMisc];
          }
        }

        sharedPreferences = [getVTPreferencesClass_0(self) sharedPreferences];
        voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];

        if (gLogCategory_HDSSetupSession <= 30)
        {
          if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
          {
            [HDSSetupSession _runPreflightMisc];
          }

          if (gLogCategory_HDSSetupSession <= 30)
          {
            if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
            {
              [(HDSSetupSession *)voiceTriggerEnabled _runPreflightMisc];
            }

            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runPreflightMisc];
            }
          }
        }

        if (!selfCopy->_preflightMiscState)
        {
          signpostLog4 = [objc_opt_class() signpostLog];
          signpostID4 = [(HDSSetupSession *)selfCopy signpostID];
          if ((signpostID4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v21 = signpostID4;
            if (os_signpost_enabled(signpostLog4))
            {
              *v38 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v21, "PreflightMisc", "", v38, 2u);
            }
          }
        }

        selfCopy->_preflightMiscState = 13;
        self = selfCopy->_promptForSiriEnableHandler;
        if (self)
        {
LABEL_85:
          self = (self->_companionLinkClient)();
        }
      }

      else
      {
        if (gLogCategory_HDSSetupSession <= 30)
        {
          if (gLogCategory_HDSSetupSession != -1 || (self = _LogCategory_Initialize(), self))
          {
            self = [HDSSetupSession _runPreflightMisc];
          }
        }

        if (selfCopy->_siriEnabled)
        {
          selfCopy->_preflightMiscState = 4;
          signpostLog3 = [objc_opt_class() signpostLog];
          signpostID5 = [(HDSSetupSession *)selfCopy signpostID];
          if ((signpostID5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v7 = signpostID5;
            if (os_signpost_enabled(signpostLog3))
            {
              v37 = 0;
              v8 = &v37;
              v9 = signpostLog3;
              v10 = v7;
              goto LABEL_36;
            }
          }

          goto LABEL_37;
        }
      }
    }

    else
    {
      if (preflightMiscState <= 9)
      {
        if (preflightMiscState)
        {
          if (preflightMiscState == 4 && gLogCategory_HDSSetupSession <= 30)
          {
            if (gLogCategory_HDSSetupSession != -1 || (self = _LogCategory_Initialize(), self))
            {
              self = [HDSSetupSession _runPreflightMisc];
            }
          }
        }

        else
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runPreflightMisc];
          }

          currentStageLabel = selfCopy->_currentStageLabel;
          selfCopy->_currentStageLabel = @"PreMisc";

          self = [(HDSSetupSession *)selfCopy fetchLocationServicesEnabled];
        }

        goto LABEL_96;
      }

      if (preflightMiscState != 10)
      {
        if (selfCopy->_locationDecided)
        {
          selfCopy->_preflightMiscState = 12;
        }

        goto LABEL_96;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreflightMisc];
      }

      homeKitSelectedHome = [(HDSDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation homeKitSelectedHome];
      if ([homeKitSelectedHome isLocationServicesEnabled])
      {

LABEL_86:
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runPreflightMisc];
        }

        selfCopy->_locationEnabled = 1;
        if (!selfCopy->_preflightMiscState)
        {
          signpostLog5 = [objc_opt_class() signpostLog];
          signpostID6 = [(HDSSetupSession *)selfCopy signpostID];
          if ((signpostID6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v32 = signpostID6;
            if (os_signpost_enabled(signpostLog5))
            {
              *v40 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v32, "PreflightMisc", "", v40, 2u);
            }
          }
        }

        selfCopy->_preflightMiscState = 12;
        self = selfCopy->_promptForLocationAlreadyEnabledHandler;
        if (self)
        {
          self = (self->_companionLinkClient)(self, selfCopy->_locationServicesEnabled);
        }

        goto LABEL_96;
      }

      promptForLocationEnableHandler = selfCopy->_promptForLocationEnableHandler;

      if (!promptForLocationEnableHandler)
      {
        goto LABEL_86;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreflightMisc];
      }

      if (!selfCopy->_preflightMiscState)
      {
        signpostLog6 = [objc_opt_class() signpostLog];
        signpostID7 = [(HDSSetupSession *)selfCopy signpostID];
        if ((signpostID7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v29 = signpostID7;
          if (os_signpost_enabled(signpostLog6))
          {
            *v39 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_BEGIN, v29, "PreflightMisc", "", v39, 2u);
          }
        }
      }

      selfCopy->_preflightMiscState = 11;
      self = selfCopy->_promptForLocationEnableHandler;
      if (self)
      {
        goto LABEL_85;
      }
    }

LABEL_96:
    preflightMiscState = selfCopy->_preflightMiscState;
  }

  while (preflightMiscState != v4);
  return v4;
}

- (int)_runHomeKitUserInput
{
  homeKitUserInputState = self->_homeKitUserInputState;
  if (homeKitUserInputState != 4)
  {
    if (homeKitUserInputState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_7;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runHomeKitUserInput];
      }

      if (!self->_homeKitUserInputState)
      {
LABEL_7:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v6 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HomeKitUserInput", "", buf, 2u);
          }
        }
      }

      self->_homeKitUserInputState = 1;
      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"HomeKitUserInput";

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 230, 0);
      }

      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation invalidate];
      v9 = objc_alloc_init(HDSDeviceOperationHomeKitSetup);
      homeKitSetupOperation = self->_homeKitSetupOperation;
      self->_homeKitSetupOperation = v9;

      v11 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:self->_sessionID];
      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setSessionID:v11];

      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setIsCLIMode:self->_isCLIMode];
      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setDispatchQueue:self->_dispatchQueue];
      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setUserInteractive:1];
      backingAccount = [(SSAccount *)self->_iTunesAccount backingAccount];
      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setITunesAccount:backingAccount];

      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setITunesAccountID:self->_iTunesUserID];
      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPauseAfterUserInput:1];
      if (self->_promptForHomeHandler)
      {
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPromptForHomeHandler:?];
      }

      if (self->_promptForRoomHandlerDetailed)
      {
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPromptForRoomHandlerDetailed:?];
      }

      if (self->_promptForHomeNameCreationHandler)
      {
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPromptForHomeNameCreationHandler:?];
      }

      if (self->_promptForHomeInSameLocationHandler)
      {
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPromptForHomeInSameLocationHandler:?];
      }

      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPromptToInstallHomeAppHandler:self->_promptToInstallHomeAppHandler];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __39__HDSSetupSession__runHomeKitUserInput__block_invoke;
      v15[3] = &unk_279713FF0;
      v15[4] = self;
      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPauseHandler:v15];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __39__HDSSetupSession__runHomeKitUserInput__block_invoke_2;
      v14[3] = &unk_279715098;
      v14[4] = self;
      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setCompletionHandler:v14];
      [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation activate];
    }
  }

  return self->_homeKitUserInputState;
}

void __39__HDSSetupSession__runHomeKitUserInput__block_invoke(uint64_t a1)
{
  v78 = *MEMORY[0x277D85DE8];
  v1 = (a1 + 32);
  v2 = [*(*(a1 + 32) + 1008) homeKitSelectedRoomName];
  v3 = *(*v1 + 129);
  *(*v1 + 129) = v2;

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __39__HDSSetupSession__runHomeKitUserInput__block_invoke_cold_1();
  }

  if (!*(*v1 + 254))
  {
    v4 = [objc_opt_class() signpostLog];
    v5 = [*v1 signpostID];
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HomeKitUserInput", "", buf, 2u);
      }
    }
  }

  v7 = [objc_opt_class() signpostLog];
  v8 = [*v1 signpostID];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_END, v9, "HomeKitUserInput", "", buf, 2u);
    }
  }

  *(*v1 + 254) = 4;
  v10 = [*v1 _homePodsInSelectedHome];
  *(*v1 + 153) = [v10 count];

  v11 = [*v1 _homePodsInAccount];
  *(*v1 + 154) = [v11 count];

  *(*v1 + 1734) = [*(*v1 + 126) hasHomePod];
  *(*v1 + 1733) = *(*v1 + 154) != 0;
  *(*v1 + 1120) = [*v1 selectedRoomHasHomePods];
  v12 = [*v1 _selectedRoomHomePod];
  v13 = *(*v1 + 141);
  *(*v1 + 141) = v12;

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __39__HDSSetupSession__runHomeKitUserInput__block_invoke_cold_2();
  }

  *(*v1 + 1136) = [*v1 _shouldShowPRCardForHomePodsInRoom];
  v14 = [*(*v1 + 126) homeKitHomeManager];
  v15 = [v14 homes];
  v16 = [v15 copy];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v71 objects:v77 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v72;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v72 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v71 + 1) + 8 * i);
        if ([v22 homeLocationStatus] == 1)
        {
          *(*v1 + 426) |= 1u;
          v23 = [v22 currentUser];
          v24 = [v22 owner];
          v25 = [v23 isEqual:v24];

          if (v25)
          {
            *(*v1 + 426) |= 2u;
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v71 objects:v77 count:16];
    }

    while (v19);
  }

  v26 = [*(*v1 + 126) homeKitSelectedHome];
  v27 = [v26 homeLocationStatus];

  if (v27 == 1)
  {
    *(*v1 + 426) |= 4u;
  }

  if ([*(*v1 + 126) createdNewHomeInSetupFlow])
  {
    *(*v1 + 426) |= 8u;
  }

  v28 = [*(*v1 + 126) homeKitSelectedHome];
  v29 = [v28 accessories];
  v30 = [v29 count];

  if (v30)
  {
    *(*v1 + 214) |= 1uLL;
    v31 = [*(*v1 + 126) homeKitSelectedHome];
    v32 = [v31 accessories];
    v33 = [v32 copy];

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v34 = v33;
    v35 = [v34 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v68;
      v38 = *MEMORY[0x277CCE870];
      v39 = *MEMORY[0x277CCE8B0];
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v68 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v41 = [*(*(&v67 + 1) + 8 * j) category];
          v42 = [v41 categoryType];

          if (([v42 isEqualToString:v38] & 1) != 0 || objc_msgSend(v42, "isEqualToString:", v39))
          {
            *(*v1 + 214) |= 2uLL;
            ++*(*v1 + 155);
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v36);
    }
  }

  *(*v1 + 1735) = [*(*v1 + 126) hasMultipleUsers];
  v43 = [*(*v1 + 126) homeKitHomeManager];
  *(*v1 + 1740) = [v43 hasOptedToHH2];

  v44 = [*(*v1 + 126) homeKitHomeManager];
  *(*v1 + 1306) = [v44 homeSafetySecurityEnabled];

  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      __39__HDSSetupSession__runHomeKitUserInput__block_invoke_cold_3();
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runHomeKitUserInput__block_invoke_cold_4();
    }
  }

  v45 = [*v1 selectedHome];
  *(*v1 + 578) = [v45 didOnboardAudioAnalysis];

  v46 = [*v1 selectedHome];
  if ([v46 didOnboardAudioAnalysis])
  {
    v47 = 1;
  }

  else
  {
    v47 = 3;
  }

  *(*v1 + 328) = v47;

  v48 = [*v1 availableHomes];
  *(*v1 + 156) = [v48 count];

  v49 = [*v1 selectedHome];
  *(*v1 + 1305) = [v49 isAutomaticSoftwareUpdateEnabled];

  [*(*v1 + 126) homekitDataSyncSeconds];
  *(*v1 + 138) = v50;
  [*(*v1 + 126) accessorySyncSeconds];
  *(*v1 + 139) = v51;
  v52 = [*(*v1 + 126) homeKitSelectedHome];
  v53 = [v52 residentDevices];
  *(*v1 + 1496) = [v53 count] != 0;

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __39__HDSSetupSession__runHomeKitUserInput__block_invoke_cold_5();
  }

  v54 = [*(*v1 + 126) homeKitSelectedHome];
  v55 = [v54 residentDevices];
  v56 = [v55 count];

  v57 = *v1;
  if (v56)
  {
    v58 = [v57[126] homeKitSelectedHome];
    v59 = [v58 homeHubState];

    v57 = *v1;
    if (v59 == 1)
    {
      v60 = 3;
    }

    else
    {
      v60 = 2;
    }
  }

  else
  {
    v60 = 1;
  }

  *(v57 + 373) = v60;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      __39__HDSSetupSession__runHomeKitUserInput__block_invoke_cold_6();
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runHomeKitUserInput__block_invoke_cold_7();
    }
  }

  v61 = *(*v1 + 126);
  v62 = [v61 homeKitSelectedHome];
  [v61 createStereoPairBuilder:v62];

  v63 = *v1;
  if (*(*v1 + 1730) == 1 && *(v63 + 1732) == 1)
  {
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || (v64 = _LogCategory_Initialize(), v63 = *v1, v64))
      {
        LogPrintF();
        v63 = *v1;
      }
    }

    FPrintF(*MEMORY[0x277D85E08], "CmdHomeDeviceSetupNoUI --delay set, starting delay of %d seconds now...\n", v63[223]);
    v65 = dispatch_semaphore_create(0);
    v66 = dispatch_time(0, 1000000000 * *(*v1 + 223));
    dispatch_semaphore_wait(v65, v66);

    v63 = *v1;
  }

  [v63 _run];
}

void __39__HDSSetupSession__runHomeKitUserInput__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (*(v7 + 1008))
  {
    if (!v5)
    {
      v5 = NSErrorWithOSStatusF(4294960560, "HomeKitUserInput Premature Success");
      v7 = *(a1 + 32);
    }

    if (!*(v7 + 1016))
    {
      v8 = [objc_opt_class() signpostLog];
      v9 = [*(a1 + 32) signpostID];
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v8))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "HomeKitUserInput", "", buf, 2u);
        }
      }
    }

    v11 = [objc_opt_class() signpostLog];
    v12 = [*(a1 + 32) signpostID];
    if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = v12;
      if (os_signpost_enabled(v11))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_END, v13, "HomeKitUserInput", "", v15, 2u);
      }
    }

    *(*(a1 + 32) + 1016) = 3;
    if (v6)
    {
      v14 = v6;
    }

    else
    {
      v14 = @"NoLabel";
    }

    [*(a1 + 32) _reportError:v5 label:v14];
  }
}

- (int)_runHomeKitPrimarySSIDFetch
{
  selfCopy = self;
  v69 = *MEMORY[0x277D85DE8];
  if (self->_homeKitPrimarySSIDFetchState)
  {
    return selfCopy->_homeKitPrimarySSIDFetchState;
  }

  self->_homeKitSSIDFetchStart = mach_absolute_time();
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runHomeKitPrimarySSIDFetch];
  }

  if (!selfCopy->_homeKitPrimarySSIDFetchState)
  {
    signpostLog = [objc_opt_class() signpostLog];
    signpostID = [(HDSSetupSession *)selfCopy signpostID];
    if ((signpostID - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = signpostID;
      if (os_signpost_enabled(signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HomeKitPRSSIDFetch", "", buf, 2u);
      }
    }
  }

  selfCopy->_homeKitPrimarySSIDFetchState = 1;
  homeKitSelectedHome = [(HDSDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation homeKitSelectedHome];

  if (homeKitSelectedHome)
  {
    if (!_os_feature_enabled_impl() || (*buf = 0, os_eligibility_get_domain_answer(), *buf == 4))
    {
      if (_os_feature_enabled_impl())
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runHomeKitPrimarySSIDFetch];
        }

        homeKitSelectedHome2 = [(HDSDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation homeKitSelectedHome];
        primaryResidentNetworkInfo = [homeKitSelectedHome2 primaryResidentNetworkInfo];

        mach_absolute_time();
        UpTicksToSecondsF();
        selfCopy->_homeKitSSIDFetchDuration = v10;
        if (primaryResidentNetworkInfo)
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [(HDSSetupSession *)primaryResidentNetworkInfo _runHomeKitPrimarySSIDFetch];
          }

          objc_storeStrong(&selfCopy->_primaryResidentNetwork, primaryResidentNetworkInfo);
          selfCopy->_homeKitPrimarySSIDFetchState = 4;
          if (selfCopy->_wifiInterface)
          {
            v11 = objc_opt_new();
            wiFiInfo = [primaryResidentNetworkInfo wiFiInfo];
            sSID = [wiFiInfo SSID];

            if (!sSID)
            {
              if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
              {
                [HDSSetupSession _runHomeKitPrimarySSIDFetch];
              }

LABEL_52:
              binaryIPv4NetworkSignature = [primaryResidentNetworkInfo binaryIPv4NetworkSignature];
              if (binaryIPv4NetworkSignature)
              {
              }

              else
              {
                binaryIPv6NetworkSignature = [primaryResidentNetworkInfo binaryIPv6NetworkSignature];

                if (!binaryIPv6NetworkSignature)
                {
                  goto LABEL_61;
                }
              }

              v27 = objc_alloc(getCWFNetworkSignatureClass());
              binaryIPv4NetworkSignature2 = [primaryResidentNetworkInfo binaryIPv4NetworkSignature];
              binaryIPv6NetworkSignature2 = [primaryResidentNetworkInfo binaryIPv6NetworkSignature];
              v30 = [v27 initWithIPv4NetworkSignatureBytes:binaryIPv4NetworkSignature2 IPv6NetworkSignatureBytes:binaryIPv6NetworkSignature2];

              v31 = [(CWFInterface *)selfCopy->_wifiInterface knownNetworkProfilesWithNetworkSignature:v30];
              if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
              {
                [HDSSetupSession _runHomeKitPrimarySSIDFetch];
                if (!v31)
                {
                  goto LABEL_60;
                }
              }

              else if (!v31)
              {
LABEL_60:

LABEL_61:
                if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
                {
                  [HDSSetupSession _runHomeKitPrimarySSIDFetch];
                }

                v32 = objc_opt_new();
                v65[0] = MEMORY[0x277D85DD0];
                v65[1] = 3221225472;
                v65[2] = __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke;
                v65[3] = &unk_2797150C0;
                v33 = v32;
                v66 = v33;
                [v11 enumerateObjectsUsingBlock:v65];
                v59 = v33;
                v34 = [v33 copy];
                preferredHomeNetworkNames = selfCopy->_preferredHomeNetworkNames;
                selfCopy->_preferredHomeNetworkNames = v34;

                if ([v11 count])
                {
                  selfCopy->_preferredNetworkState = 5;
                  v55 = objc_opt_new();
                  v56 = selfCopy;
                  v57 = objc_opt_new();
                  v61 = 0u;
                  v62 = 0u;
                  v63 = 0u;
                  v64 = 0u;
                  obj = selfCopy->_homePodScanResults;
                  v36 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v68 count:16];
                  if (v36)
                  {
                    v37 = v36;
                    v38 = *v62;
                    do
                    {
                      v39 = 0;
                      do
                      {
                        if (*v62 != v38)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v40 = *(*(&v61 + 1) + 8 * v39);
                        CFStringGetTypeID();
                        v41 = CFDictionaryGetTypedValue();
                        if (v41)
                        {
                          v42 = primaryResidentNetworkInfo;
                          wiFiInfo2 = [primaryResidentNetworkInfo wiFiInfo];
                          sSID2 = [wiFiInfo2 SSID];
                          v45 = [v41 isEqualToString:sSID2];

                          if (v45)
                          {
                            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
                            {
                              [HDSSetupSession _runHomeKitPrimarySSIDFetch];
                            }

                            v56->_homePodScanContainsPrimary = 1;
                          }

                          primaryResidentNetworkInfo = v42;
                          if ([v59 containsObject:v41])
                          {
                            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
                            {
                              [HDSSetupSession _runHomeKitPrimarySSIDFetch];
                            }

                            v46 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v40];
                            [v46 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hds_hp_scn_re"];
                            [v55 addObject:v46];
                            [v57 addObject:v41];
                          }
                        }

                        ++v39;
                      }

                      while (v37 != v39);
                      v47 = [(NSArray *)obj countByEnumeratingWithState:&v61 objects:v68 count:16];
                      v37 = v47;
                    }

                    while (v47);
                  }

                  selfCopy = v56;
                  objc_storeStrong(&v56->_reachableHomePodScanResults, v55);
                  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
                  {
                    [HDSSetupSession _runHomeKitPrimarySSIDFetch];
                  }

                  if ([v55 count])
                  {
                    v48 = primaryResidentNetworkInfo;
                    v56->_preferredNetworkState = 6;
                    firstObject = [v55 firstObject];
                    CFStringGetTypeID();
                    v50 = CFDictionaryGetTypedValue();
                    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
                    {
                      [HDSSetupSession _runHomeKitPrimarySSIDFetch];
                    }

                    Int64 = CFDictionaryGetInt64();
                    v52 = Int64 != 0;
                    v53 = [(HDSSetupSession *)v56 passwordForSSID:v50];
                    v54 = (v53 | Int64) != 0;
                    primaryResidentNetworkInfo = v48;
                    if (v50 && v54)
                    {
                      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
                      {
                        [HDSSetupSession _runHomeKitPrimarySSIDFetch];
                      }

                      v56->_preferredNetworkState = 7;
                      objc_storeStrong(&v56->_primaryResidentSSID, v50);
                      objc_storeStrong(&v56->_primaryResidentPassword, v53);
                      v56->_primaryResidentSSIDProtected = v52;
                    }
                  }
                }

                else
                {
                  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
                  {
                    [HDSSetupSession _runHomeKitPrimarySSIDFetch];
                  }

                  selfCopy->_preferredNetworkState = 4;
                }

                goto LABEL_106;
              }

              [v11 addObjectsFromArray:v31];
              goto LABEL_60;
            }

            wifiInterface = selfCopy->_wifiInterface;
            wiFiInfo3 = [primaryResidentNetworkInfo wiFiInfo];
            sSID3 = [wiFiInfo3 SSID];
            v17 = [(CWFInterface *)wifiInterface knownNetworkProfilesInSameLanAsNetworkName:sSID3];

            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runHomeKitPrimarySSIDFetch];
              if (!v17)
              {
                goto LABEL_29;
              }
            }

            else if (!v17)
            {
LABEL_29:
              phonesWiFiSSID = selfCopy->_phonesWiFiSSID;
              wiFiInfo4 = [primaryResidentNetworkInfo wiFiInfo];
              sSID4 = [wiFiInfo4 SSID];
              LODWORD(phonesWiFiSSID) = [(NSString *)phonesWiFiSSID isEqualToString:sSID4];

              if (phonesWiFiSSID)
              {
                selfCopy->_phoneMatchesPrimary = 1;
              }

              goto LABEL_52;
            }

            [v11 addObjectsFromArray:v17];
            goto LABEL_29;
          }

          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runHomeKitPrimarySSIDFetch];
          }

          v24 = 3;
        }

        else
        {
          if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runHomeKitPrimarySSIDFetch];
          }

          selfCopy->_homeKitPrimarySSIDFetchState = 2;
          v24 = 1;
        }

        selfCopy->_preferredNetworkState = v24;
LABEL_106:

        return selfCopy->_homeKitPrimarySSIDFetchState;
      }
    }

    v21 = +[HDSDefaults timeoutForSSIDFetch];
    if (v21)
    {
      v22 = v21;
    }

    else
    {
      v22 = 15;
    }

    homeKitSelectedHome3 = [(HDSDeviceOperationHomeKitSetup *)selfCopy->_homeKitSetupOperation homeKitSelectedHome];
    v60[0] = MEMORY[0x277D85DD0];
    v60[1] = 3221225472;
    v60[2] = __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke_2;
    v60[3] = &unk_2797150E8;
    v60[4] = selfCopy;
    [homeKitSelectedHome3 fetchWiFiInfosWithTimeout:v60 completion:v22];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomeKitPrimarySSIDFetch];
    }

    selfCopy->_homeKitPrimarySSIDFetchState = 2;
  }

  return selfCopy->_homeKitPrimarySSIDFetchState;
}

void __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 networkName];
  [v2 addObject:v3];
}

void __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  mach_absolute_time();
  v7 = (a1 + 32);
  UpTicksToSecondsF();
  *(*v7 + 1552) = v8;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke_2_cold_1();
  }

  v9 = *v7;
  v10 = *(*v7 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke_3;
  block[3] = &unk_279714320;
  v14 = v6;
  v15 = v9;
  v16 = v5;
  v11 = v5;
  v12 = v6;
  dispatch_async(v10, block);
}

uint64_t __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v9 = 2;
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke_3_cold_1();
    }

    if ([*(a1 + 48) count])
    {
      v2 = [*(a1 + 48) firstObject];
      v3 = [v2 SSID];
      v5 = a1 + 40;
      v4 = *(a1 + 40);
      v6 = *(v4 + 1504);
      *(v4 + 1504) = v3;

      if (*(*(a1 + 40) + 1504))
      {
        v7 = [*(a1 + 40) passwordForSSID:?];
        v8 = *(*v5 + 1512);
        *(*v5 + 1512) = v7;
      }

      *(*v5 + 1520) = [v2 requiresPassword];
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke_3_cold_2();
      }
    }

    else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __46__HDSSetupSession__runHomeKitPrimarySSIDFetch__block_invoke_3_cold_3();
    }

    v9 = 4;
  }

  *(*(a1 + 40) + 1560) = v9;
  v10 = *(a1 + 40);

  return [v10 _run];
}

- (int)_runStereoPairUserInput
{
  v66 = *MEMORY[0x277D85DE8];
  stereoPairUserInputState = self->_stereoPairUserInputState;
  do
  {
    v4 = stereoPairUserInputState;
    if (stereoPairUserInputState > 12)
    {
      if (stereoPairUserInputState > 14)
      {
        if (stereoPairUserInputState != 15)
        {
          if (stereoPairUserInputState != 16)
          {
            goto LABEL_125;
          }

          [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation sendPeerAccessoryHintForStereoPair];
          [(HDSSetupSession *)self _runStereoPairUserInputPickColors:1];
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runStereoPairUserInput];
          }

          if (!self->_stereoPairUserInputState)
          {
            signpostLog = [objc_opt_class() signpostLog];
            signpostID = [(HDSSetupSession *)self signpostID];
            if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v10 = signpostID;
              if (os_signpost_enabled(signpostLog))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v10, "StereoUserInput", "", buf, 2u);
              }
            }
          }

          signpostLog2 = [objc_opt_class() signpostLog];
          signpostID2 = [(HDSSetupSession *)self signpostID];
          if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v13 = signpostID2;
            if (os_signpost_enabled(signpostLog2))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v13, "StereoUserInput", "", buf, 2u);
            }
          }

          v14 = 4;
          goto LABEL_124;
        }

        if (self->_stereoCounterpartAccessory)
        {
          [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setStereoCounterpart:?];
          if (!self->_stereoPairUserInputState)
          {
            signpostLog3 = [objc_opt_class() signpostLog];
            signpostID3 = [(HDSSetupSession *)self signpostID];
            if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v23 = signpostID3;
              if (os_signpost_enabled(signpostLog3))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v23, "StereoUserInput", "", buf, 2u);
              }
            }
          }

          self->_stereoPairUserInputState = 16;
        }
      }

      else
      {
        if (stereoPairUserInputState == 13)
        {
          stereoPairRole = self->_stereoPairRole;
          if (!stereoPairRole)
          {
            goto LABEL_125;
          }

          if (gLogCategory_HDSSetupSession <= 30)
          {
            if (gLogCategory_HDSSetupSession != -1 || (v35 = _LogCategory_Initialize(), stereoPairRole = self->_stereoPairRole, v35))
            {
              v20 = "?";
              if (stereoPairRole <= 3)
              {
                v20 = off_2797155A8[stereoPairRole];
              }

              v58 = v20;
              LogPrintF();
              stereoPairRole = self->_stereoPairRole;
            }
          }

          [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setStereoRole:stereoPairRole, v58];
          v36 = self->_stereoPairUserInputState;
          if (self->_stereoPairRole != 1)
          {
            v14 = v36 + 1;
            goto LABEL_124;
          }

          if (!v36)
          {
            signpostLog4 = [objc_opt_class() signpostLog];
            signpostID4 = [(HDSSetupSession *)self signpostID];
            if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v39 = signpostID4;
              if (os_signpost_enabled(signpostLog4))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v39, "StereoUserInput", "", buf, 2u);
              }
            }
          }

          signpostLog5 = [objc_opt_class() signpostLog];
          signpostID5 = [(HDSSetupSession *)self signpostID];
          if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v34 = signpostID5;
            if (os_signpost_enabled(signpostLog5))
            {
              goto LABEL_122;
            }
          }

          goto LABEL_123;
        }

        if ([(NSArray *)self->_potentialStereoCounterparts count]== 1 || !self->_promptForStereoMultipleHandler)
        {
          firstObject = [(NSArray *)self->_potentialStereoCounterparts firstObject];
          stereoCounterpartAccessory = self->_stereoCounterpartAccessory;
          self->_stereoCounterpartAccessory = firstObject;

          [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setStereoCounterpart:self->_stereoCounterpartAccessory];
          if (!self->_stereoPairUserInputState)
          {
            signpostLog6 = [objc_opt_class() signpostLog];
            signpostID6 = [(HDSSetupSession *)self signpostID];
            if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v28 = signpostID6;
              if (os_signpost_enabled(signpostLog6))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_BEGIN, v28, "StereoUserInput", "", buf, 2u);
              }
            }
          }

          self->_stereoPairUserInputState = 16;
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runStereoPairUserInput];
          }
        }

        else
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runStereoPairUserInput];
          }

          ++self->_stereoPairUserInputState;
          (*(self->_promptForStereoMultipleHandler + 2))();
        }
      }
    }

    else if (stereoPairUserInputState > 10)
    {
      if (stereoPairUserInputState == 11)
      {
        if (self->_stereoPairReady)
        {
          goto LABEL_111;
        }
      }

      else
      {
        if (!self->_promptForStereoRoleHandler)
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runStereoPairUserInput];
          }

          if (!self->_stereoPairUserInputState)
          {
            signpostLog7 = [objc_opt_class() signpostLog];
            signpostID7 = [(HDSSetupSession *)self signpostID];
            if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v31 = signpostID7;
              if (os_signpost_enabled(signpostLog7))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog7, OS_SIGNPOST_INTERVAL_BEGIN, v31, "StereoUserInput", "", buf, 2u);
              }
            }
          }

          signpostLog5 = [objc_opt_class() signpostLog];
          signpostID8 = [(HDSSetupSession *)self signpostID];
          if (signpostID8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_123;
          }

          v34 = signpostID8;
          if (!os_signpost_enabled(signpostLog5))
          {
            goto LABEL_123;
          }

          goto LABEL_122;
        }

        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runStereoPairUserInput];
        }

        [(HDSSetupSession *)self _runStereoPairUserInputPickColors:0, v58];
        ++self->_stereoPairUserInputState;
        (*(self->_promptForStereoRoleHandler + 2))();
      }
    }

    else
    {
      if (stereoPairUserInputState)
      {
        if (stereoPairUserInputState != 10)
        {
          goto LABEL_125;
        }

        v5 = [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation findStereoCounterpartsWithSupportedVersions:[(HDSSetupSession *)self _peerDeviceSupportedStereoPairVersions]];
        potentialStereoCounterparts = self->_potentialStereoCounterparts;
        self->_potentialStereoCounterparts = v5;

        deviceSerialNumber = self->_deviceSerialNumber;
        if (!deviceSerialNumber)
        {
LABEL_104:
          if (_os_feature_enabled_impl() && [(NSArray *)self->_potentialStereoCounterparts count])
          {
            ++self->_stereoPairUserInputState;
            homeKitSetupOperation = self->_homeKitSetupOperation;
            v52 = self->_potentialStereoCounterparts;
            v59[0] = MEMORY[0x277D85DD0];
            v59[1] = 3221225472;
            v59[2] = __42__HDSSetupSession__runStereoPairUserInput__block_invoke;
            v59[3] = &unk_279714018;
            v59[4] = self;
            [(HDSDeviceOperationHomeKitSetup *)homeKitSetupOperation performReadinessCheck:v52 completion:v59];
            goto LABEL_125;
          }

          if ([(NSArray *)self->_potentialStereoCounterparts count])
          {
            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runStereoPairUserInput];
            }

LABEL_111:
            v14 = 12;
LABEL_124:
            self->_stereoPairUserInputState = v14;
            goto LABEL_125;
          }

          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runStereoPairUserInput];
          }

          if (!self->_stereoPairUserInputState)
          {
            signpostLog8 = [objc_opt_class() signpostLog];
            signpostID9 = [(HDSSetupSession *)self signpostID];
            if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v55 = signpostID9;
              if (os_signpost_enabled(signpostLog8))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog8, OS_SIGNPOST_INTERVAL_BEGIN, v55, "StereoUserInput", "", buf, 2u);
              }
            }
          }

          signpostLog5 = [objc_opt_class() signpostLog];
          signpostID10 = [(HDSSetupSession *)self signpostID];
          if (signpostID10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v34 = signpostID10;
            if (os_signpost_enabled(signpostLog5))
            {
LABEL_122:
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v34, "StereoUserInput", "", buf, 2u);
            }
          }

LABEL_123:

          v14 = 2;
          goto LABEL_124;
        }

        if (gLogCategory_HDSSetupSession <= 30)
        {
          if (gLogCategory_HDSSetupSession == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_94;
            }

            deviceSerialNumber = self->_deviceSerialNumber;
          }

          v58 = deviceSerialNumber;
          LogPrintF();
        }

LABEL_94:
        v41 = objc_opt_new();
        v60 = 0u;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v42 = self->_potentialStereoCounterparts;
        v43 = [(NSArray *)v42 countByEnumeratingWithState:&v60 objects:v65 count:16];
        if (v43)
        {
          v44 = v43;
          v45 = *v61;
          do
          {
            for (i = 0; i != v44; ++i)
            {
              if (*v61 != v45)
              {
                objc_enumerationMutation(v42);
              }

              v47 = *(*(&v60 + 1) + 8 * i);
              serialNumber = [v47 serialNumber];
              v49 = [serialNumber isEqualToString:self->_deviceSerialNumber];

              if ((v49 & 1) == 0)
              {
                [(NSArray *)v41 addObject:v47];
              }
            }

            v44 = [(NSArray *)v42 countByEnumeratingWithState:&v60 objects:v65 count:16];
          }

          while (v44);
        }

        v50 = self->_potentialStereoCounterparts;
        self->_potentialStereoCounterparts = v41;

        goto LABEL_104;
      }

      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_42;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runStereoPairUserInput];
      }

      if (!self->_stereoPairUserInputState)
      {
LABEL_42:
        signpostLog9 = [objc_opt_class() signpostLog];
        signpostID11 = [(HDSSetupSession *)self signpostID];
        if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = signpostID11;
          if (os_signpost_enabled(signpostLog9))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog9, OS_SIGNPOST_INTERVAL_BEGIN, v17, "StereoUserInput", "", buf, 2u);
          }
        }
      }

      self->_stereoPairUserInputState = 10;
      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"StereoPair";
    }

LABEL_125:
    stereoPairUserInputState = self->_stereoPairUserInputState;
  }

  while (stereoPairUserInputState != v4);
  return v4;
}

void __42__HDSSetupSession__runStereoPairUserInput__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1800);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDSSetupSession__runStereoPairUserInput__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __42__HDSSetupSession__runStereoPairUserInput__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  objc_storeStrong((*(a1 + 32) + 232), *(a1 + 40));
  if ([*(*v1 + 29) count])
  {
    *(*v1 + 1487) = 1;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __42__HDSSetupSession__runStereoPairUserInput__block_invoke_2_cold_1();
    }

    v2 = *v1;

    return [v2 _run];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __42__HDSSetupSession__runStereoPairUserInput__block_invoke_2_cold_2();
    }

    if (!*(*v1 + 62))
    {
      v4 = [objc_opt_class() signpostLog];
      v5 = [*v1 signpostID];
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "StereoUserInput", "", buf, 2u);
        }
      }
    }

    v7 = [objc_opt_class() signpostLog];
    v8 = [*v1 signpostID];
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        *v10 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_END, v9, "StereoUserInput", "", v10, 2u);
      }
    }

    *(*v1 + 62) = 2;
    return [*v1 _run];
  }
}

- (int)_runSetupPSG
{
  selfCopy = self;
  v73 = *MEMORY[0x277D85DE8];
  psgState = self->_psgState;
  if (psgState > 1)
  {
    if (psgState == 2 || psgState == 4)
    {
      return selfCopy->_psgState;
    }

    goto LABEL_32;
  }

  if (psgState)
  {
    if (psgState == 1)
    {
      if (self->_psgSelected)
      {
        if (self->_psgEnabled)
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runSetupPSG];
          }

          anyObject = [(NSSet *)selfCopy->_psgsInSelectedRoom anyObject];
          _selectedRoomAllHomePods = [(HDSSetupSession *)selfCopy _selectedRoomAllHomePods];
          v53 = [_selectedRoomAllHomePods copy];

          v56 = selfCopy;
          _selectedRoomAllStereoPairs = [(HDSSetupSession *)selfCopy _selectedRoomAllStereoPairs];
          v6 = [_selectedRoomAllStereoPairs copy];

          v7 = objc_opt_new();
          v66 = 0u;
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          obj = v6;
          v8 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v67;
            do
            {
              for (i = 0; i != v9; ++i)
              {
                if (*v67 != v10)
                {
                  objc_enumerationMutation(obj);
                }

                v12 = *(*(&v66 + 1) + 8 * i);
                v62 = 0u;
                v63 = 0u;
                v64 = 0u;
                v65 = 0u;
                components = [v12 components];
                v14 = [components countByEnumeratingWithState:&v62 objects:v71 count:16];
                if (v14)
                {
                  v15 = v14;
                  v16 = *v63;
                  do
                  {
                    for (j = 0; j != v15; ++j)
                    {
                      if (*v63 != v16)
                      {
                        objc_enumerationMutation(components);
                      }

                      mediaProfile = [*(*(&v62 + 1) + 8 * j) mediaProfile];
                      accessory = [mediaProfile accessory];
                      [v7 addObject:accessory];
                    }

                    v15 = [components countByEnumeratingWithState:&v62 objects:v71 count:16];
                  }

                  while (v15);
                }
              }

              v9 = [obj countByEnumeratingWithState:&v66 objects:v72 count:16];
            }

            while (v9);
          }

          if (v56->_stereoPairUserInputState == 4)
          {
            stereoCounterpartAccessory = v56->_stereoCounterpartAccessory;
            if (stereoCounterpartAccessory)
            {
              if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || (v22 = _LogCategory_Initialize(), stereoCounterpartAccessory = v56->_stereoCounterpartAccessory, v22)))
              {
                v51 = stereoCounterpartAccessory;
                LogPrintF();
                [v7 addObject:{v56->_stereoCounterpartAccessory, v51}];
              }

              else
              {
                [v7 addObject:{stereoCounterpartAccessory, v50}];
              }
            }
          }

          v23 = objc_opt_new();
          v58 = 0u;
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v24 = v53;
          v25 = [v24 countByEnumeratingWithState:&v58 objects:v70 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v59;
            do
            {
              for (k = 0; k != v26; ++k)
              {
                if (*v59 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v58 + 1) + 8 * k);
                if (([v7 containsObject:v29] & 1) == 0)
                {
                  [v23 addObject:v29];
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v58 objects:v70 count:16];
            }

            while (v26);
          }

          selfCopy = v56;
          if (gLogCategory_HDSSetupSession <= 30)
          {
            if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
            {
              [HDSSetupSession _runSetupPSG];
            }

            if (gLogCategory_HDSSetupSession <= 30)
            {
              if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
              {
                [HDSSetupSession _runSetupPSG];
              }

              if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
              {
                [HDSSetupSession _runSetupPSG];
              }
            }
          }

          v30 = MEMORY[0x277CCACA8];
          v31 = [@"psgStereoPairs" substringToIndex:1];
          uppercaseString = [v31 uppercaseString];
          v33 = [@"psgStereoPairs" substringFromIndex:1];
          v34 = [v30 stringWithFormat:@"%@%@", uppercaseString, v33];

          v35 = MEMORY[0x277CCACA8];
          v36 = [@"psgHomePods" substringToIndex:1];
          uppercaseString2 = [v36 uppercaseString];
          v38 = [@"psgHomePods" substringFromIndex:1];
          v39 = [v35 stringWithFormat:@"%@%@", uppercaseString2, v38];

          v40 = MEMORY[0x277CCACA8];
          v41 = [@"existingMediaGroup" substringToIndex:1];
          uppercaseString3 = [v41 uppercaseString];
          v43 = [@"existingMediaGroup" substringFromIndex:1];
          v44 = [v40 stringWithFormat:@"%@%@", uppercaseString3, v43];

          v54 = v34;
          v52 = v34;
          v45 = v44;
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"set%@:", v52];
          NSSelectorFromString(v46);

          v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"set%@:", v39];
          NSSelectorFromString(v47);

          v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"set%@:", v45];
          NSSelectorFromString(v48);

          if (objc_opt_respondsToSelector())
          {
            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runSetupPSG];
            }

            [(HDSDeviceOperationHomeKitSetup *)v56->_homeKitSetupOperation setValue:obj forKey:@"psgStereoPairs"];
          }

          if (objc_opt_respondsToSelector())
          {
            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runSetupPSG];
            }

            [(HDSDeviceOperationHomeKitSetup *)v56->_homeKitSetupOperation setValue:v23 forKey:@"psgHomePods"];
          }

          if (objc_opt_respondsToSelector())
          {
            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runSetupPSG];
            }

            [(HDSDeviceOperationHomeKitSetup *)v56->_homeKitSetupOperation setValue:anyObject forKey:@"existingMediaGroup"];
          }
        }

        else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runSetupPSG];
        }

LABEL_91:
        selfCopy->_psgState = 4;
        return selfCopy->_psgState;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runSetupPSG];
      }

      return selfCopy->_psgState;
    }

LABEL_32:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return selfCopy->_psgState;
  }

  if (!self->_promptForSetupPSGHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSetupPSG];
    }

    goto LABEL_91;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runSetupPSG];
  }

  selfCopy->_psgState = 1;
  (*(selfCopy->_promptForSetupPSGHandler + 2))();
  return selfCopy->_psgState;
}

- (void)_runStereoPairUserInputPickColors:(BOOL)colors
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D54D48];
  self->_stereoCounterpartColor = v4;
  firstObject = self->_stereoCounterpartAccessory;
  if (!firstObject)
  {
    firstObject = [(NSArray *)self->_potentialStereoCounterparts firstObject];
  }

  uniqueIdentifier = [(HMAccessory *)firstObject uniqueIdentifier];
  if (!uniqueIdentifier)
  {
    goto LABEL_17;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  activeDevices = [(RPCompanionLinkClient *)self->_companionLinkClient activeDevices];
  v8 = [activeDevices countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (!v8)
  {
LABEL_16:

LABEL_17:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runStereoPairUserInputPickColors:];
    }

    goto LABEL_20;
  }

  v9 = v8;
  v18 = v4;
  v10 = *v20;
LABEL_6:
  v11 = 0;
  while (1)
  {
    if (*v20 != v10)
    {
      objc_enumerationMutation(activeDevices);
    }

    v12 = *(*(&v19 + 1) + 8 * v11);
    homeKitIdentifier = [v12 homeKitIdentifier];
    v14 = [homeKitIdentifier isEqual:uniqueIdentifier];

    if (v14)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [activeDevices countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        goto LABEL_6;
      }

      goto LABEL_16;
    }
  }

  deviceColor = [v12 deviceColor];
  v16 = deviceColor;
  if (!deviceColor || (v17 = [deviceColor intValue], v18 == v17))
  {

    goto LABEL_16;
  }

  self->_stereoCounterpartColor = v17;

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runStereoPairUserInputPickColors:];
  }

LABEL_20:
}

- (int)_runTVAudioUserInput
{
  tvAudioUserInputState = self->_tvAudioUserInputState;
  do
  {
    v4 = tvAudioUserInputState;
    if (tvAudioUserInputState <= 11)
    {
      if (!tvAudioUserInputState)
      {
        if (gLogCategory_HDSSetupSession > 30)
        {
          goto LABEL_41;
        }

        if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
        {
          [HDSSetupSession _runTVAudioUserInput];
        }

        if (!self->_tvAudioUserInputState)
        {
LABEL_41:
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v20 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v20, "TVAudioUserInput", "", buf, 2u);
            }
          }
        }

        self->_tvAudioUserInputState = 10;
        currentStageLabel = self->_currentStageLabel;
        self->_currentStageLabel = @"Odeon";

        goto LABEL_141;
      }

      if (tvAudioUserInputState == 10)
      {
        stereoCounterpartAccessory = self->_stereoCounterpartAccessory;
        if (stereoCounterpartAccessory)
        {
          if (([(HMAccessory *)stereoCounterpartAccessory supportsAudioDestination]& 1) == 0)
          {
            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runTVAudioUserInput];
            }

            if (!self->_tvAudioUserInputState)
            {
              signpostLog2 = [objc_opt_class() signpostLog];
              signpostID2 = [(HDSSetupSession *)self signpostID];
              if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v38 = signpostID2;
                if (os_signpost_enabled(signpostLog2))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v38, "TVAudioUserInput", "", buf, 2u);
                }
              }
            }

            signpostLog3 = [objc_opt_class() signpostLog];
            signpostID3 = [(HDSSetupSession *)self signpostID];
            if (signpostID3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
            {
              goto LABEL_105;
            }

            v31 = signpostID3;
            if (!os_signpost_enabled(signpostLog3))
            {
              goto LABEL_105;
            }

            goto LABEL_104;
          }

          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runTVAudioUserInput];
          }

LABEL_139:
          v17 = self->_tvAudioUserInputState + 1;
        }

        else
        {
          v17 = 11;
        }

LABEL_140:
        self->_tvAudioUserInputState = v17;
        goto LABEL_141;
      }

      if (tvAudioUserInputState != 11)
      {
        goto LABEL_141;
      }

      if (_os_feature_enabled_impl())
      {
        self->_tvAudioUserInputState = 12;
      }

      findTVs = [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation findTVs];
      potentialTVs = self->_potentialTVs;
      self->_potentialTVs = findTVs;

      if (![(NSArray *)self->_potentialTVs count])
      {
        if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runTVAudioUserInput];
        }

        if (!self->_tvAudioUserInputState)
        {
          signpostLog4 = [objc_opt_class() signpostLog];
          signpostID4 = [(HDSSetupSession *)self signpostID];
          if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v34 = signpostID4;
            if (os_signpost_enabled(signpostLog4))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v34, "TVAudioUserInput", "", buf, 2u);
            }
          }
        }

        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID5 = [(HDSSetupSession *)self signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = signpostID5;
          if (os_signpost_enabled(signpostLog3))
          {
            goto LABEL_104;
          }
        }

LABEL_105:

        self->_tvAudioUserInputState = 2;
        goto LABEL_141;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runTVAudioUserInput];
      }

      v8 = self->_potentialTVs;
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __39__HDSSetupSession__runTVAudioUserInput__block_invoke;
      v56[3] = &unk_279715110;
      v56[4] = self;
      v9 = [(NSArray *)v8 cuFilteredArrayUsingBlock:v56];
      if (_os_feature_enabled_impl() && [v9 count])
      {
        self->_tvAudioUserInputState = 12;
        homeKitSetupOperation = self->_homeKitSetupOperation;
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __39__HDSSetupSession__runTVAudioUserInput__block_invoke_2;
        v55[3] = &unk_279714018;
        v55[4] = self;
        [(HDSDeviceOperationHomeKitSetup *)homeKitSetupOperation performReadinessCheck:v9 completion:v55];
      }

      else
      {
        firstObject = [v9 count];
        if (firstObject)
        {
          firstObject = [v9 firstObject];
        }

        tvAudioInput = self->_tvAudioInput;
        self->_tvAudioInput = firstObject;

        if (self->_tvAudioInput)
        {
          self->_tvAudioUserInputState = 13;
        }

        else
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runTVAudioUserInput];
          }

          if (!self->_tvAudioUserInputState)
          {
            signpostLog5 = [objc_opt_class() signpostLog];
            signpostID6 = [(HDSSetupSession *)self signpostID];
            if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v48 = signpostID6;
              if (os_signpost_enabled(signpostLog5))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v48, "TVAudioUserInput", "", buf, 2u);
              }
            }
          }

          signpostLog6 = [objc_opt_class() signpostLog];
          signpostID7 = [(HDSSetupSession *)self signpostID];
          if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v51 = signpostID7;
            if (os_signpost_enabled(signpostLog6))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_END, v51, "TVAudioUserInput", "", buf, 2u);
            }
          }

          self->_tvAudioUserInputState = 2;
        }
      }
    }

    else if (tvAudioUserInputState > 13)
    {
      if (tvAudioUserInputState != 14)
      {
        if (tvAudioUserInputState != 15)
        {
          goto LABEL_141;
        }

        if (gLogCategory_HDSSetupSession <= 30)
        {
          if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
          {
            [HDSSetupSession _runTVAudioUserInput];
          }

          if (!self->_tvAudioUserInputState)
          {
            signpostLog7 = [objc_opt_class() signpostLog];
            signpostID8 = [(HDSSetupSession *)self signpostID];
            if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v13 = signpostID8;
              if (os_signpost_enabled(signpostLog7))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog7, OS_SIGNPOST_INTERVAL_BEGIN, v13, "TVAudioUserInput", "", buf, 2u);
              }
            }
          }
        }

        signpostLog8 = [objc_opt_class() signpostLog];
        signpostID9 = [(HDSSetupSession *)self signpostID];
        if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = signpostID9;
          if (os_signpost_enabled(signpostLog8))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog8, OS_SIGNPOST_INTERVAL_END, v16, "TVAudioUserInput", "", buf, 2u);
          }
        }

        v17 = 4;
        goto LABEL_140;
      }

      if (!self->_tvAudioInputAvailable)
      {
        goto LABEL_141;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runTVAudioUserInput];
      }

      if (self->_tvAudioEnabled)
      {
        v22 = self->_tvAudioInput;
        if (v22)
        {
          if (gLogCategory_HDSSetupSession <= 30)
          {
            if (gLogCategory_HDSSetupSession != -1 || (v52 = _LogCategory_Initialize(), v22 = self->_tvAudioInput, v52))
            {
              uniqueIdentifier = [(HMAccessory *)v22 uniqueIdentifier];
              LogPrintF();

              v22 = self->_tvAudioInput;
            }
          }

          self->_odeonState = 1;
          [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setTvAudioInput:v22, uniqueIdentifier];
        }

        else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runTVAudioUserInput];
        }

        goto LABEL_139;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runTVAudioUserInput];
      }

      if (!self->_tvAudioUserInputState)
      {
        signpostLog9 = [objc_opt_class() signpostLog];
        signpostID10 = [(HDSSetupSession *)self signpostID];
        if (signpostID10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v42 = signpostID10;
          if (os_signpost_enabled(signpostLog9))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog9, OS_SIGNPOST_INTERVAL_BEGIN, v42, "TVAudioUserInput", "", buf, 2u);
          }
        }
      }

      signpostLog10 = [objc_opt_class() signpostLog];
      signpostID11 = [(HDSSetupSession *)self signpostID];
      if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v45 = signpostID11;
        if (os_signpost_enabled(signpostLog10))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog10, OS_SIGNPOST_INTERVAL_END, v45, "TVAudioUserInput", "", buf, 2u);
        }
      }

      self->_tvAudioUserInputState = 2;
      self->_odeonState = 2;
    }

    else
    {
      if (tvAudioUserInputState == 12)
      {
        if (self->_appleTVReady)
        {
          self->_tvAudioUserInputState = 13;
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runTVAudioUserInput];
          }
        }

        goto LABEL_141;
      }

      if (!self->_promptForTVAudioHandler)
      {
        v5 = gLogCategory_HDSSetupSession;
LABEL_71:
        if (v5 <= 30 && (v5 != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runTVAudioUserInput];
        }

        if (!self->_tvAudioUserInputState)
        {
          signpostLog11 = [objc_opt_class() signpostLog];
          signpostID12 = [(HDSSetupSession *)self signpostID];
          if (signpostID12 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v28 = signpostID12;
            if (os_signpost_enabled(signpostLog11))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog11, OS_SIGNPOST_INTERVAL_BEGIN, v28, "TVAudioUserInput", "", buf, 2u);
            }
          }
        }

        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID13 = [(HDSSetupSession *)self signpostID];
        if (signpostID13 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_105;
        }

        v31 = signpostID13;
        if (!os_signpost_enabled(signpostLog3))
        {
          goto LABEL_105;
        }

LABEL_104:
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v31, "TVAudioUserInput", "", buf, 2u);
        goto LABEL_105;
      }

      v5 = gLogCategory_HDSSetupSession;
      if (!self->_tvAudioInput)
      {
        goto LABEL_71;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runTVAudioUserInput];
      }

      ++self->_tvAudioUserInputState;
      (*(self->_promptForTVAudioHandler + 2))();
    }

LABEL_141:
    tvAudioUserInputState = self->_tvAudioUserInputState;
  }

  while (tvAudioUserInputState != v4);
  return v4;
}

id __39__HDSSetupSession__runTVAudioUserInput__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isControllable])
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runTVAudioUserInput__block_invoke_cold_2(v3);
    }

    v4 = v3;
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runTVAudioUserInput__block_invoke_cold_1(v3);
    }

    v4 = 0;
    *(*(a1 + 32) + 1300) = 3;
  }

  return v4;
}

void __39__HDSSetupSession__runTVAudioUserInput__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1800);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__HDSSetupSession__runTVAudioUserInput__block_invoke_3;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __39__HDSSetupSession__runTVAudioUserInput__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 40) count];
  if (v2)
  {
    v3 = [*(a1 + 40) firstObject];
  }

  else
  {
    v3 = 0;
  }

  objc_storeStrong((*(a1 + 32) + 280), v3);
  if (v2)
  {
  }

  v4 = *(a1 + 32);
  if (*(v4 + 280))
  {
    *(v4 + 1488) = 1;
    v5 = *(a1 + 32);

    return [v5 _run];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runTVAudioUserInput__block_invoke_3_cold_1();
    }

    if (!*(*(a1 + 32) + 260))
    {
      v7 = [objc_opt_class() signpostLog];
      v8 = [*(a1 + 32) signpostID];
      if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = v8;
        if (os_signpost_enabled(v7))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "TVAudioUserInput", "", buf, 2u);
        }
      }
    }

    v10 = [objc_opt_class() signpostLog];
    v11 = [*(a1 + 32) signpostID];
    if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        *v13 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v10, OS_SIGNPOST_INTERVAL_END, v12, "TVAudioUserInput", "", v13, 2u);
      }
    }

    *(*(a1 + 32) + 260) = 2;
    return [*(a1 + 32) _run];
  }
}

- (int)_runPreAuth
{
  preAuthState = self->_preAuthState;
  if (preAuthState > 1)
  {
    if (preAuthState == 2 || preAuthState == 4)
    {
      return self->_preAuthState;
    }

LABEL_14:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_preAuthState;
  }

  if (preAuthState)
  {
    if (preAuthState == 1 && !self->_preAuthStartedProgress)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreAuth];
      }

      self->_preAuthStartedProgress = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 40, 0);
      }

      return self->_preAuthState;
    }

    goto LABEL_14;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreAuth];
  }

  [(HDSSetupSession *)self _runPreAuthRequest];
  return self->_preAuthState;
}

- (void)_runPreAuthRequest
{
  if (self->_isCLIMode)
  {
    self->_pauseAfterPreAuth = 1;
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!self->_preAuthState)
  {
    signpostLog = [objc_opt_class() signpostLog];
    signpostID = [(HDSSetupSession *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = signpostID;
      if (os_signpost_enabled(signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "PreAuth", "", buf, 2u);
      }
    }
  }

  self->_preAuthState = 1;
  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"PreAuth";

  apcEnabled = self->_apcEnabled;
  if (self->_siriPasscodeEnabled)
  {
    apcEnabled |= 2uLL;
  }

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:apcEnabled | 8];
  [v3 setObject:v9 forKeyedSubscript:@"ff"];

  v12 = [getAFPreferencesClass_0(v10 v11)];
  if ([v12 assistantIsEnabled])
  {
    languageCode = [v12 languageCode];
  }

  else
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    languageCode = [preferredLanguages firstObject];
  }

  if ([(__CFString *)languageCode isEqual:@"en"])
  {

    languageCode = @"en-US";
LABEL_16:
    [v3 setObject:languageCode forKeyedSubscript:@"siriLL"];
    goto LABEL_17;
  }

  if (languageCode)
  {
    goto LABEL_16;
  }

  if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreAuthRequest];
  }

  languageCode = 0;
LABEL_17:
  companionSiriLanguageCode = self->_companionSiriLanguageCode;
  self->_companionSiriLanguageCode = &languageCode->isa;

  outputVoice = [v12 outputVoice];
  languageCode2 = [outputVoice languageCode];
  if (languageCode2)
  {
    [v3 setObject:languageCode2 forKeyedSubscript:@"siriVL"];
  }

  else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreAuthRequest];
  }

  if (!self->_companionSiriLanguageCode)
  {
    objc_storeStrong(&self->_companionSiriLanguageCode, languageCode2);
  }

  objc_storeStrong(&self->_selectedSiriVoice, outputVoice);
  gender = [outputVoice gender];
  if (gender)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:gender];
    [v3 setObject:v19 forKeyedSubscript:@"siriVG"];
  }

  else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreAuthRequest];
  }

  name = [outputVoice name];

  if (name)
  {
    [v3 setObject:name forKeyedSubscript:@"siriVN"];
  }

  else
  {
    if (gLogCategory_HDSSetupSession > 60)
    {
      goto LABEL_40;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runPreAuthRequest];
    }
  }

  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runPreAuthRequest];
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthRequest];
    }
  }

LABEL_40:
  v21 = [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"companionSU"];
  v22 = softLinkAFPreferencesHorsemanSupplementalLanguageDictionary(v21);
  if ([v22 count])
  {
    [v3 setObject:v22 forKeyedSubscript:@"siriSupLangs"];
  }

  [v3 setObject:&unk_2864E8168 forKeyedSubscript:@"sndID"];
  v23 = MEMORY[0x277CCABB0];
  if (_os_feature_enabled_impl())
  {
    *buf = 0;
    os_eligibility_get_domain_answer();
    v24 = *buf == 4;
  }

  else
  {
    v24 = 1;
  }

  v25 = [v23 numberWithBool:v24];
  [v3 setObject:v25 forKeyedSubscript:@"hds_i_l_e"];

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPreAuthRequest];
  }

  sfSession = self->_sfSession;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __37__HDSSetupSession__runPreAuthRequest__block_invoke;
  v27[3] = &unk_2797145F0;
  v27[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_pa" options:&unk_2864E7ED8 request:v3 responseHandler:v27];
}

- (void)_runPreAuthResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v9 = errorCopy;
  v57 = 0;
  if (responseCopy && !errorCopy)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthResponse:error:];
    }

    self->_peerFeatureFlags = CFDictionaryGetInt64();
    objc_storeStrong(&self->_preAuthResponse, response);
    self->_siriFlags = CFDictionaryGetInt64Ranged();
    CFArrayGetTypeID();
    v10 = CFDictionaryGetTypedValue();
    siriLanguageCodes = self->_siriLanguageCodes;
    self->_siriLanguageCodes = v10;

    [(SFSession *)self->_sfSession setPairSetupACL:&unk_2864E7F00];
    CFStringGetTypeID();
    v12 = CFDictionaryGetTypedValue();
    if (v12)
    {
      objc_storeStrong(&self->_deviceGUID, v12);
    }

    else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthResponse:error:];
    }

    CFStringGetTypeID();
    v19 = CFDictionaryGetTypedValue();

    if (v19)
    {
      objc_storeStrong(&self->_deviceSerialNumber, v19);
    }

    else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthResponse:error:];
    }

    CFStringGetTypeID();
    v20 = CFDictionaryGetTypedValue();

    if (v20)
    {
      objc_storeStrong(&self->_deviceModel, v20);
    }

    else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthResponse:error:];
    }

    CFStringGetTypeID();
    v21 = CFDictionaryGetTypedValue();

    if (v21)
    {
      objc_storeStrong(&self->_deviceProductName, v21);
    }

    else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthResponse:error:];
    }

    CFStringGetTypeID();
    v22 = CFDictionaryGetTypedValue();

    if (v22)
    {
      objc_storeStrong(&self->_deviceProductVersion, v22);
    }

    else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthResponse:error:];
    }

    peerFeatureFlags = self->_peerFeatureFlags;
    if ((peerFeatureFlags & 4) == 0)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreAuthResponse:? error:?];
      }

      self->_prefStereoPairEnabled = 0;
      peerFeatureFlags = self->_peerFeatureFlags;
    }

    if ((peerFeatureFlags & 0x400) == 0)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreAuthResponse:? error:?];
      }

      self->_prefTVAudioEnabled = 0;
      peerFeatureFlags = self->_peerFeatureFlags;
    }

    self->_peerSupportsCaptiveNetworks = (peerFeatureFlags & 0x2000) != 0;
    preAuthHandler = self->_preAuthHandler;
    if (preAuthHandler)
    {
      preAuthHandler[2]();
      v25 = self->_preAuthHandler;
      self->_preAuthHandler = 0;
    }

    homePodIsCallbellCapable = CFDictionaryGetInt64() != 0;
    self->_homePodIsCallbellCapable = homePodIsCallbellCapable;
    if (v57)
    {
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreAuthResponse:error:];
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_69;
      }

      if (gLogCategory_HDSSetupSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_69;
        }

        homePodIsCallbellCapable = self->_homePodIsCallbellCapable;
      }

      if (homePodIsCallbellCapable)
      {
        v27 = "yes";
      }

      else
      {
        v27 = "no";
      }

      v51 = v27;
      LogPrintF();
    }

LABEL_69:
    homePod6GCapable = CFDictionaryGetInt64() != 0;
    self->_homePod6GCapable = homePod6GCapable;
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_76;
    }

    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_76;
      }

      homePod6GCapable = self->_homePod6GCapable;
    }

    if (homePod6GCapable)
    {
      v29 = "yes";
    }

    else
    {
      v29 = "no";
    }

    v51 = v29;
    v53 = v57;
    LogPrintF();
LABEL_76:
    [(HDSSetupSession *)self runSUNoSetupPreAuthResponse:responseCopy, v51, v53];
    [(HDSSetupSession *)self runHomeKitSUPreAuthResponse:responseCopy];
    homePodSysDropCapable = CFDictionaryGetInt64() != 0;
    self->_homePodSysDropCapable = homePodSysDropCapable;
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_83;
    }

    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_83;
      }

      homePodSysDropCapable = self->_homePodSysDropCapable;
    }

    if (homePodSysDropCapable)
    {
      v31 = "yes";
    }

    else
    {
      v31 = "no";
    }

    v52 = v31;
    v54 = v57;
    LogPrintF();
LABEL_83:
    self->_homePodSysDropCapableV2 = CFDictionaryGetInt64() != 0;
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runPreAuthResponse:error:];
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPreAuthResponse:error:];
      }
    }

    canDoV2TermsAndConditions = CFDictionaryGetInt64() != 0;
    self->_canDoV2TermsAndConditions = canDoV2TermsAndConditions;
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_96;
        }

        canDoV2TermsAndConditions = self->_canDoV2TermsAndConditions;
      }

      if (canDoV2TermsAndConditions)
      {
        v33 = "yes";
      }

      else
      {
        v33 = "no";
      }

      v52 = v33;
      v54 = v57;
      LogPrintF();
    }

LABEL_96:
    homePodIsWiFiRetryV2 = CFDictionaryGetInt64() != 0;
    self->_homePodIsWiFiRetryV2 = homePodIsWiFiRetryV2;
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1)
      {
LABEL_98:
        if (homePodIsWiFiRetryV2)
        {
          v35 = "yes";
        }

        else
        {
          v35 = "no";
        }

        v52 = v35;
        v54 = v57;
        LogPrintF();
        goto LABEL_103;
      }

      if (_LogCategory_Initialize())
      {
        homePodIsWiFiRetryV2 = self->_homePodIsWiFiRetryV2;
        goto LABEL_98;
      }
    }

LABEL_103:
    if (self->_canDoV2TermsAndConditions && self->_termsAndConditionsServersActive)
    {
      v36 = _os_feature_enabled_impl();
    }

    else
    {
      v36 = 0;
    }

    self->_termsAndConditionsV2Shown = v36;
    v37 = CFDictionaryGetInt64() != 0;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthResponse:error:];
    }

    if (!v57)
    {
      self->_upsellHH2 = v37;
    }

    CFArrayGetTypeID();
    v38 = CFDictionaryGetTypedValue();
    v39 = [(HDSSetupSession *)self filterNetworksForHomePod:v38];
    homePodScanResults = self->_homePodScanResults;
    self->_homePodScanResults = v39;

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthResponse:error:];
    }

    homePodSupportsWiFiPicker = CFDictionaryGetInt64() != 0;
    self->_homePodSupportsWiFiPicker = homePodSupportsWiFiPicker;
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_122;
    }

    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_122:
        v43 = [(HDSSetupSession *)self fetchAltDSIDAccount:v52];
        if (v43 && self->_deviceProductVersion && self->_promptForDataAndPrivacyHandler)
        {
          self->_didDoV3Terms = 1;
        }

        if (!self->_preAuthState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v46 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v46, "PreAuth", "", buf, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v49 = signpostID2;
          if (os_signpost_enabled(signpostLog2))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v49, "PreAuth", "", buf, 2u);
          }
        }

        self->_preAuthState = 4;
        v50 = objc_alloc_init(getCDPWalrusStateControllerClass());
        v55[0] = MEMORY[0x277D85DD0];
        v55[1] = 3221225472;
        v55[2] = __45__HDSSetupSession__runPreAuthResponse_error___block_invoke;
        v55[3] = &unk_279714E98;
        v55[4] = self;
        [v50 walrusStatusWithCompletion:v55];

        goto LABEL_135;
      }

      homePodSupportsWiFiPicker = self->_homePodSupportsWiFiPicker;
    }

    if (homePodSupportsWiFiPicker)
    {
      v42 = "yes";
    }

    else
    {
      v42 = "no";
    }

    v52 = v42;
    v54 = v57;
    LogPrintF();
    goto LABEL_122;
  }

  if (!self->_preAuthState)
  {
    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v15, "PreAuth", "", buf, 2u);
      }
    }
  }

  signpostLog4 = [objc_opt_class() signpostLog];
  signpostID4 = [(HDSSetupSession *)self signpostID];
  if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v18 = signpostID4;
    if (os_signpost_enabled(signpostLog4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v18, "PreAuth", "", buf, 2u);
    }
  }

  self->_preAuthState = 3;
  if ([v9 code] == -6732)
  {
    NSErrorWithOSStatusF(1, "active session detected");
    v22 = LABEL_67:;
    [(HDSSetupSession *)self _reportError:v22 label:@"PreAuth"];
LABEL_135:

    goto LABEL_136;
  }

  if (!v9)
  {
    NSErrorWithOSStatusF(4294960596, "No response, no error?");
    goto LABEL_67;
  }

  [(HDSSetupSession *)self _reportError:v9 label:@"PreAuth"];
LABEL_136:
}

void __45__HDSSetupSession__runPreAuthResponse_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HDSSetupSession__runPreAuthResponse_error___block_invoke_2;
  block[3] = &unk_279714FF8;
  v11 = v6;
  v12 = a2;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __45__HDSSetupSession__runPreAuthResponse_error___block_invoke_2(id *a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __45__HDSSetupSession__runPreAuthResponse_error___block_invoke_2_cold_1();
  }

  if (a1[4])
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __45__HDSSetupSession__runPreAuthResponse_error___block_invoke_2_cold_2();
    }

    if (a1[6] == 1 && [a1[5] homePodBuildRequiresADPForcedSU])
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __45__HDSSetupSession__runPreAuthResponse_error___block_invoke_2_cold_3();
      }

      *(a1[5] + 1742) = 1;
    }
  }

  v2 = a1[5];
  if (v2[1730] == 1)
  {
    v2[1737] = 0;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __45__HDSSetupSession__runPreAuthResponse_error___block_invoke_2_cold_4();
  }

  v3 = a1[5];
  v4 = v3[236];
  if (v4)
  {
    (*(v4 + 16))(v3[236], 50, 0);
    v3 = a1[5];
  }

  return [v3 _run];
}

- (void)runSUNoSetupPreAuthResponse:(id)response
{
  responseCopy = response;
  self->_homePodCanSUNoSetup = CFDictionaryGetInt64() != 0;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_homePodIsSUNoSetup = CFDictionaryGetInt64() != 0;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  self->_homePodSaysNeedsSUNoSetup = CFDictionaryGetInt64() != 0;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession runSUNoSetupPreAuthResponse:];
  }

  self->_homePodSUNoSetupState = Int64Ranged;
}

- (void)runHomeKitSUPreAuthResponse:(id)response
{
  responseCopy = response;
  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  if (v5)
  {
    objc_storeStrong(&self->_deviceBuildVersion, v5);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession runHomeKitSUPreAuthResponse:];
    }
  }

  else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession runHomeKitSUPreAuthResponse:];
  }

  self->_homePodNeedsSU = CFDictionaryGetInt64() != 0;
  self->_homePodReceivedSUResponse = 1;
  CFStringGetTypeID();
  v6 = CFDictionaryGetTypedValue();
  homePodProductVersionString = self->_homePodProductVersionString;
  self->_homePodProductVersionString = v6;

  self->_homePodRecievedProductVersionResponse = 1;
  if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession runHomeKitSUPreAuthResponse:];
  }

  self->_homePodProductVersion = [(HDSSetupSession *)self isHomePodProductVersionParis:self->_homePodProductVersionString, v8];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (int)isHomePodProductVersionParis:(id)paris
{
  v3 = MEMORY[0x277D0F940];
  parisCopy = paris;
  v5 = [[v3 alloc] initWithVersionString:parisCopy];

  v6 = [objc_alloc(MEMORY[0x277D0F940]) initWithVersionString:@"16.0.0"];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  if (v5)
  {
    if ([v6 isGreaterThanVersion:v5])
    {
      v7 = 1;
    }

    else if ([v5 isEqualToVersion:v6])
    {
      v7 = 2;
    }

    else if ([v5 isGreaterThanVersion:v6])
    {
      v8 = [objc_alloc(MEMORY[0x277D0F940]) initWithVersionString:@"16.1.0"];
      if ([v5 isGreaterThanVersion:v8])
      {
        v7 = 4;
      }

      else if ([v5 isEqualToVersion:v8])
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession isHomePodProductVersionParis:];
    }
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession isHomePodProductVersionParis:];
    }

    v7 = 1;
  }

  return v7;
}

- (int)_runCheckAccount
{
  result = self->_iCloudAccountState;
  if (result > 1)
  {
    if (result == 2 || result == 4)
    {
      return result;
    }
  }

  else
  {
    if (!result)
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_26;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runCheckAccount];
      }

      if (!self->_iCloudAccountState)
      {
LABEL_26:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *v18 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v11, "iCloudAccountCheck", "", v18, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *v17 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v14, "iCloudAccountCheck", "", v17, 2u);
        }
      }

      result = 2;
      goto LABEL_34;
    }

    if (result == 1)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runCheckAccount];
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 124, 0);
      }

      if (!self->_iCloudAccountState)
      {
        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v7, "iCloudAccountCheck", "", buf, 2u);
          }
        }
      }

      result = 11;
LABEL_34:
      self->_iCloudAccountState = result;
      return result;
    }
  }

  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v15 = _LogCategory_Initialize(), result = self->_iCloudAccountState, v15))
    {
      LogPrintF();
      return self->_iCloudAccountState;
    }
  }

  return result;
}

- (int)_enableSiriForPersonalRequestIfNecessary
{
  v3 = [getAFPreferencesClass_0(self a2)];
  personalRequestsChoice = self->_personalRequestsChoice;
  assistantIsEnabled = [v3 assistantIsEnabled];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _enableSiriForPersonalRequestIfNecessary];
  }

  if ((personalRequestsChoice != 6) | assistantIsEnabled & 1)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _enableSiriForPersonalRequestIfNecessary];
    }
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _enableSiriForPersonalRequestIfNecessary];
    }

    [v3 setAssistantIsEnabled:1];
    if (self->_selectedSiriVoice)
    {
      selectedSiriLanguageCode = [(HDSSetupSession *)self selectedSiriLanguageCode];
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _enableSiriForPersonalRequestIfNecessary];
      }

      [v3 setLanguageCode:selectedSiriLanguageCode outputVoice:self->_selectedSiriVoice];
    }
  }

  return 4;
}

- (int)_runSiriLanguage
{
  siriLanguageState = self->_siriLanguageState;
  if (siriLanguageState > 1)
  {
    if (siriLanguageState == 2 || siriLanguageState == 4)
    {
      return self->_siriLanguageState;
    }

LABEL_22:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_siriLanguageState;
  }

  if (siriLanguageState)
  {
    if (siriLanguageState == 1)
    {
      if (self->_siriLanguagePicked)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runSiriLanguage];
        }

        if (!self->_siriLanguageState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v6 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SiriLanguage", "", buf, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v9 = signpostID2;
          if (os_signpost_enabled(signpostLog2))
          {
            *v28 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v9, "SiriLanguage", "", v28, 2u);
          }
        }

        self->_siriLanguageState = 4;
        promptForVoiceRecognitionHandler = self->_promptForVoiceRecognitionHandler;
        if (promptForVoiceRecognitionHandler)
        {
          promptForVoiceRecognitionHandler[2](promptForVoiceRecognitionHandler, [(HDSSetupSession *)self _isVoiceRecognitionSupported]);
        }
      }

      else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runSiriLanguage];
      }

      return self->_siriLanguageState;
    }

    goto LABEL_22;
  }

  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"SiriLanguage";

  if (self->_promptForSiriLanguageHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSiriLanguage];
    }

    if (!self->_siriLanguageState)
    {
      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *v32 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SiriLanguage", "", v32, 2u);
        }
      }
    }

    self->_siriLanguageState = 1;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [(HDSSetupSession *)self _runSiriLanguage];
    }

    promptForSiriLanguageHandler = self->_promptForSiriLanguageHandler;
    siriLanguageCodes = self->_siriLanguageCodes;
    firstObject = [(NSArray *)siriLanguageCodes firstObject];
    v19 = firstObject;
    if (firstObject)
    {
      v20 = firstObject;
    }

    else
    {
      v20 = @"?";
    }

    promptForSiriLanguageHandler[2](promptForSiriLanguageHandler, siriLanguageCodes, v20);
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSiriLanguage];
    }

    if (!self->_siriLanguageState)
    {
      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *v31 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v23, "SiriLanguage", "", v31, 2u);
        }
      }
    }

    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = signpostID5;
      if (os_signpost_enabled(signpostLog5))
      {
        *v30 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v26, "SiriLanguage", "", v30, 2u);
      }
    }

    self->_siriLanguageState = 4;
  }

  return self->_siriLanguageState;
}

- (int)_runSetLanguage
{
  result = self->_setLanguageState;
  if (!result)
  {
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"SetLanguage";

    if (self->_promptForSiriLanguageHandler)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [(HDSSetupSession *)self _runSetLanguage];
      }

      if (!self->_setLanguageState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SiriLanguage", "", buf, 2u);
          }
        }
      }

      self->_setLanguageState = 1;
      promptForSetLanguageHandler = self->_promptForSetLanguageHandler;
      if (promptForSetLanguageHandler)
      {
        selectedSiriLanguageCode = [(HDSSetupSession *)self selectedSiriLanguageCode];
        promptForSetLanguageHandler[2](promptForSetLanguageHandler, selectedSiriLanguageCode);

        if (!self->_setLanguageState)
        {
          signpostLog2 = [objc_opt_class() signpostLog];
          signpostID2 = [(HDSSetupSession *)self signpostID];
          if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v12 = signpostID2;
            if (os_signpost_enabled(signpostLog2))
            {
              *v24 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SiriLanguage", "", v24, 2u);
            }
          }
        }
      }

      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_32;
      }

      v15 = signpostID3;
      if (!os_signpost_enabled(signpostLog3))
      {
        goto LABEL_32;
      }

      v23 = 0;
      v16 = &v23;
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runSetLanguage];
      }

      if (!self->_setLanguageState)
      {
        signpostLog4 = [objc_opt_class() signpostLog];
        signpostID4 = [(HDSSetupSession *)self signpostID];
        if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v19 = signpostID4;
          if (os_signpost_enabled(signpostLog4))
          {
            *v22 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v19, "SiriLanguage", "", v22, 2u);
          }
        }
      }

      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID5 = [(HDSSetupSession *)self signpostID];
      if (signpostID5 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_32;
      }

      v15 = signpostID5;
      if (!os_signpost_enabled(signpostLog3))
      {
        goto LABEL_32;
      }

      v21 = 0;
      v16 = &v21;
    }

    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v15, "SiriLanguage", "", v16, 2u);
LABEL_32:

    result = 4;
    self->_setLanguageState = 4;
  }

  return result;
}

- (int)_runRecognizeVoice
{
  p_recognizeVoiceEnabled = &self->_recognizeVoiceEnabled;
  v37 = v39;
  recognizeVoiceState = self->_recognizeVoiceState;
  do
  {
    v5 = recognizeVoiceState;
    if (recognizeVoiceState > 12)
    {
      if (recognizeVoiceState > 14)
      {
        if (recognizeVoiceState == 15)
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runRecognizeVoice];
          }

          ++self->_recognizeVoiceState;
          self->_recognizeVoiceEnabled = 0;
          v17 = _Block_copy(self->_progressHandler);
          v18 = v17;
          if (v17)
          {
            (*(v17 + 2))(v17, 140, 0);
          }

          goto LABEL_94;
        }

        if (recognizeVoiceState == 16)
        {
          v7 = *p_recognizeVoiceEnabled;
          if (*p_recognizeVoiceEnabled)
          {
            if (gLogCategory_HDSSetupSession <= 30)
            {
              v8 = "yes";
              if (gLogCategory_HDSSetupSession != -1)
              {
                goto LABEL_27;
              }

              if (_LogCategory_Initialize())
              {
                v8 = "yes";
                if (!*p_recognizeVoiceEnabled)
                {
                  v8 = "no";
                }

LABEL_27:
                v36 = v8;
                LogPrintF();
              }
            }

            if (!self->_recognizeVoiceState)
            {
              signpostLog = [objc_opt_class() signpostLog];
              signpostID = [(HDSSetupSession *)self signpostID];
              if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v27 = signpostID;
                if (os_signpost_enabled(signpostLog))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v27, "RecognizeMyVoice", "", buf, 2u);
                }
              }
            }

            signpostLog2 = [objc_opt_class() signpostLog];
            signpostID2 = [(HDSSetupSession *)self signpostID];
            if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v30 = signpostID2;
              if (os_signpost_enabled(signpostLog2))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v30, "RecognizeMyVoice", "", buf, 2u);
              }
            }

            if (v7 == 6)
            {
              v31 = 4;
            }

            else
            {
              v31 = 2;
            }

            self->_recognizeVoiceState = v31;
            if (v7 == 6)
            {
              v32 = 2;
            }

            else
            {
              v32 = 3;
            }

            self->_rmvSelectionState = v32;
            _runRecognizeVoice = [(HDSSetupSession *)self _runMultiUserEnableEnableSettingStart:@"root.home.dismissedIdentifyVoiceOnboarding" privateSettings:1, v36, v37];
            if (v7 == 6)
            {
              if (gLogCategory_HDSSetupSession <= 30)
              {
                if (gLogCategory_HDSSetupSession != -1 || (_runRecognizeVoice = _LogCategory_Initialize(), _runRecognizeVoice))
                {
                  _runRecognizeVoice = [HDSSetupSession _runRecognizeVoice];
                }
              }

              v34 = objc_alloc_init(getAFSettingsConnectionClass_0(_runRecognizeVoice));
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v39[0] = __37__HDSSetupSession__runRecognizeVoice__block_invoke;
              v39[1] = &unk_2797141C0;
              v39[2] = self;
              v40 = v34;
              v18 = v34;
              [v18 homeOnboardingFlowInvoked:1 completion:v38];

LABEL_94:
            }
          }
        }
      }

      else
      {
        if (recognizeVoiceState != 13)
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runRecognizeVoice];
          }

          if ([(HDSSetupSession *)self _recognizeVoiceAlreadyEnabled])
          {
            hasExistingHomePodInSelectedRoom = self->_hasExistingHomePodInSelectedRoom;
          }

          else
          {
            hasExistingHomePodInSelectedRoom = 0;
          }

          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runRecognizeVoice];
            if (!hasExistingHomePodInSelectedRoom)
            {
              goto LABEL_103;
            }
          }

          else if (!hasExistingHomePodInSelectedRoom)
          {
            goto LABEL_103;
          }

          self->_recognizeVoiceEnabled = 6;
          self->_rmvSelectionState = 2;
          if (!self->_recognizeVoiceState)
          {
            signpostLog3 = [objc_opt_class() signpostLog];
            signpostID3 = [(HDSSetupSession *)self signpostID];
            if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v21 = signpostID3;
              if (os_signpost_enabled(signpostLog3))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v21, "RecognizeMyVoice", "", buf, 2u);
              }
            }
          }

          signpostLog4 = [objc_opt_class() signpostLog];
          signpostID4 = [(HDSSetupSession *)self signpostID];
          if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v24 = signpostID4;
            if (os_signpost_enabled(signpostLog4))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v24, "RecognizeMyVoice", "", buf, 2u);
            }
          }

          v16 = 4;
          goto LABEL_104;
        }

        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runRecognizeVoice];
        }

        recognizeVoiceStepState = self->_recognizeVoiceStepState;
        if (recognizeVoiceStepState != 1)
        {
          if (recognizeVoiceStepState == 4)
          {
            v14 = self->_recognizeVoiceState + 1;
            self->_recognizeVoiceState = v14;
            if (v14 != 2)
            {
              goto LABEL_105;
            }
          }

          else
          {
            self->_recognizeVoiceState = 2;
          }

          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runRecognizeVoice];
          }
        }
      }
    }

    else if (recognizeVoiceState > 10)
    {
      if (recognizeVoiceState == 11)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runRecognizeVoice];
        }

        v15 = self->_recognizeVoiceStepState;
        if (v15 != 1)
        {
          if (v15 != 4)
          {
            v16 = 2;
LABEL_104:
            self->_recognizeVoiceState = v16;
            goto LABEL_105;
          }

LABEL_103:
          v16 = self->_recognizeVoiceState + 1;
          goto LABEL_104;
        }
      }

      else
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runRecognizeVoice];
        }

        ++self->_recognizeVoiceState;
        [(HDSSetupSession *)self _runRecognizeVoiceCheckVoiceProfileStart];
      }
    }

    else if (recognizeVoiceState)
    {
      if (recognizeVoiceState == 10)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runRecognizeVoice];
        }

        ++self->_recognizeVoiceState;
        [(HDSSetupSession *)self _runRecognizeVoiceCheckLanguageStart];
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_32;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runRecognizeVoice];
      }

      if (!self->_recognizeVoiceState)
      {
LABEL_32:
        signpostLog5 = [objc_opt_class() signpostLog];
        signpostID5 = [(HDSSetupSession *)self signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = signpostID5;
          if (os_signpost_enabled(signpostLog5))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v11, "RecognizeMyVoice", "", buf, 2u);
          }
        }
      }

      self->_recognizeVoiceState = 10;
      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"RMV";
    }

LABEL_105:
    recognizeVoiceState = self->_recognizeVoiceState;
  }

  while (recognizeVoiceState != v5);
  return v5;
}

void __37__HDSSetupSession__runRecognizeVoice__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _logMetricsForSoftError:? label:?];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __37__HDSSetupSession__runRecognizeVoice__block_invoke_cold_1();
  }
}

- (int)_runSiriEnablementConfigurationFetch
{
  siriEnablementConfigurationState = self->_siriEnablementConfigurationState;
  do
  {
    v4 = siriEnablementConfigurationState;
    if (siriEnablementConfigurationState)
    {
      break;
    }

    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_7;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runSiriEnablementConfigurationFetch];
    }

    if (!self->_siriEnablementConfigurationState)
    {
LABEL_7:
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *v10 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SiriEnablementState", "", v10, 2u);
        }
      }
    }

    self->_siriEnablementConfigurationState = 1;
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"SiriEnablement";

    [(HDSSetupSession *)self _getSiriEnablementConfiguration];
    siriEnablementConfigurationState = self->_siriEnablementConfigurationState;
  }

  while (siriEnablementConfigurationState != v4);
  return v4;
}

- (void)_runRecognizeVoiceCheckLanguageStart
{
  _runRecognizeVoiceCheckLanguageStart = [(NSString *)self->_companionSiriLanguageCode length];
  if (_runRecognizeVoiceCheckLanguageStart)
  {
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || (_runRecognizeVoiceCheckLanguageStart = _LogCategory_Initialize(), _runRecognizeVoiceCheckLanguageStart))
      {
        _runRecognizeVoiceCheckLanguageStart = [HDSSetupSession _runRecognizeVoiceCheckLanguageStart];
      }
    }

    if (!self->_recognizeVoiceStepState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "RecognizeVoiceCheckLanguage", "", buf, 2u);
        }
      }
    }

    self->_recognizeVoiceStepState = 1;
    v7 = objc_alloc_init(getAFSettingsConnectionClass_0(_runRecognizeVoiceCheckLanguageStart));
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__HDSSetupSession__runRecognizeVoiceCheckLanguageStart__block_invoke;
    v14[3] = &unk_2797150E8;
    v14[4] = self;
    [v7 fetchSupportedMultiUserLanguageCodes:v14];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runRecognizeVoiceCheckLanguageStart];
    }

    if (!self->_recognizeVoiceStepState)
    {
      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RecognizeVoiceCheckLanguage", "", buf, 2u);
        }
      }
    }

    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v13, "RecognizeVoiceCheckLanguage", "", buf, 2u);
      }
    }

    self->_recognizeVoiceStepState = 2;
  }
}

void __55__HDSSetupSession__runRecognizeVoiceCheckLanguageStart__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__HDSSetupSession__runRecognizeVoiceCheckLanguageStart__block_invoke_2;
  block[3] = &unk_279714320;
  block[4] = v7;
  v12 = v5;
  v13 = v6;
  v9 = v6;
  v10 = v5;
  dispatch_async(v8, block);
}

uint64_t __55__HDSSetupSession__runRecognizeVoiceCheckLanguageStart__block_invoke_2(void *a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __55__HDSSetupSession__runRecognizeVoiceCheckLanguageStart__block_invoke_2_cold_1();
  }

  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];

  return [v2 _runRecognizeVoiceCheckLanguageResponse:v3 error:v4];
}

- (void)_runRecognizeVoiceCheckLanguageResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (!errorCopy)
  {
    v14 = self->_companionSiriLanguageCode;
    recognizeVoiceStepState = 2;
    if (v14)
    {
      if ([responseCopy containsObject:v14])
      {
        recognizeVoiceStepState = 4;
      }

      else
      {
        recognizeVoiceStepState = 2;
      }
    }

    if (!self->_recognizeVoiceStepState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *v27 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v18, "RecognizeVoiceCheckLanguage", "", v27, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *v26 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v21, "RecognizeVoiceCheckLanguage", "", v26, 2u);
      }
    }

    self->_recognizeVoiceStepState = recognizeVoiceStepState;
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_35;
    }

    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_35:
        [(HDSSetupSession *)self _run:v23];

        goto LABEL_36;
      }

      recognizeVoiceStepState = self->_recognizeVoiceStepState;
    }

    if (recognizeVoiceStepState >= 8)
    {
      v22 = "?";
      if (recognizeVoiceStepState > 9)
      {
        v22 = "User";
      }
    }

    else
    {
      v22 = off_279715568[recognizeVoiceStepState];
    }

    v24 = v14;
    v25 = v22;
    v23 = responseCopy;
    LogPrintF();
    goto LABEL_35;
  }

  [(HDSSetupSession *)self _logMetricsForSoftError:errorCopy label:@"RMV"];
  if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runRecognizeVoiceCheckLanguageResponse:error:];
  }

  if (!self->_recognizeVoiceStepState)
  {
    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RecognizeVoiceCheckLanguage", "", buf, 2u);
      }
    }
  }

  signpostLog4 = [objc_opt_class() signpostLog];
  signpostID4 = [(HDSSetupSession *)self signpostID];
  if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = signpostID4;
    if (os_signpost_enabled(signpostLog4))
    {
      *v28 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v13, "RecognizeVoiceCheckLanguage", "", v28, 2u);
    }
  }

  self->_recognizeVoiceStepState = 3;
  [(HDSSetupSession *)self _run];
LABEL_36:
}

- (void)_runRecognizeVoiceCheckVoiceProfileStart
{
  v3 = self->_companionSiriLanguageCode;
  if ([(NSString *)v3 length])
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runRecognizeVoiceCheckVoiceProfileStart];
    }

    if (!self->_recognizeVoiceStepState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "RecognizeVoiceCheckLanguage", "", buf, 2u);
        }
      }
    }

    self->_recognizeVoiceStepState = 1;
    sharedInstance = [(objc_class *)getSSRVoiceProfileManagerClass() sharedInstance];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __59__HDSSetupSession__runRecognizeVoiceCheckVoiceProfileStart__block_invoke;
    v14[3] = &unk_279714C70;
    v14[4] = self;
    [sharedInstance isVoiceProfileUploadedToiCloudForLanguageCode:v3 withCompletionBlock:v14];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runRecognizeVoiceCheckVoiceProfileStart];
    }

    if (!self->_recognizeVoiceStepState)
    {
      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v10, "RecognizeVoiceCheckLanguage", "", buf, 2u);
        }
      }
    }

    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v13, "RecognizeVoiceCheckLanguage", "", buf, 2u);
      }
    }

    self->_recognizeVoiceStepState = 2;
  }
}

void __59__HDSSetupSession__runRecognizeVoiceCheckVoiceProfileStart__block_invoke(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = *(v6 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HDSSetupSession__runRecognizeVoiceCheckVoiceProfileStart__block_invoke_2;
  block[3] = &unk_279715070;
  v11 = a3;
  block[4] = v6;
  v10 = v5;
  v8 = v5;
  dispatch_async(v7, block);
}

uint64_t __59__HDSSetupSession__runRecognizeVoiceCheckVoiceProfileStart__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __59__HDSSetupSession__runRecognizeVoiceCheckVoiceProfileStart__block_invoke_2_cold_1();
  }

  if (*(a1 + 48) == 1)
  {
    if ([*(a1 + 32) _recognizeVoiceAlreadyEnabled])
    {
      v2 = 2;
    }

    else
    {
      v2 = 3;
    }

    v3 = *(a1 + 48);
  }

  else
  {
    v3 = 0;
    v2 = 1;
  }

  *(*(a1 + 32) + 1308) = v2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _runRecognizeVoiceCheckVoiceProfileResponse:v3 & 1 error:v5];
}

- (void)_getSiriEnablementConfiguration
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (!self->_siriEnablementConfigurationProvider)
  {
    v3 = objc_alloc_init(getAFEnablementFlowConfigurationProviderClass());
    siriEnablementConfigurationProvider = self->_siriEnablementConfigurationProvider;
    self->_siriEnablementConfigurationProvider = v3;
  }

  siriLanguageCodes = self->_siriLanguageCodes;
  if (siriLanguageCodes)
  {
    v6 = siriLanguageCodes;
  }

  else
  {
    v10[0] = self->_companionSiriLanguageCode;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  }

  v7 = v6;
  v8 = self->_siriEnablementConfigurationProvider;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__HDSSetupSession__getSiriEnablementConfiguration__block_invoke;
  v9[3] = &unk_279715138;
  v9[4] = self;
  [(AFEnablementFlowConfigurationProvider *)v8 configurationForEnablementFlow:3 recognitionLanguageCodes:v7 completion:v9];
}

void __50__HDSSetupSession__getSiriEnablementConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1800);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__HDSSetupSession__getSiriEnablementConfiguration__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v7[4] = v4;
  v8 = v3;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __50__HDSSetupSession__getSiriEnablementConfiguration__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (!*(*(a1 + 32) + 360))
  {
    v3 = [objc_opt_class() signpostLog];
    v4 = [*(a1 + 32) signpostID];
    if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SiriEnablementState", "", buf, 2u);
      }
    }
  }

  v6 = [objc_opt_class() signpostLog];
  v7 = [*(a1 + 32) signpostID];
  if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v6, OS_SIGNPOST_INTERVAL_END, v8, "SiriEnablementState", "", v10, 2u);
    }
  }

  *(*(a1 + 32) + 360) = 4;
  objc_storeStrong((*(a1 + 32) + 368), *(a1 + 40));
  return [*(a1 + 32) _run];
}

- (void)_runRecognizeVoiceCheckVoiceProfileResponse:(BOOL)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runRecognizeVoiceCheckVoiceProfileResponse:error:];
    if (errorCopy)
    {
LABEL_5:
      [(HDSSetupSession *)self _logMetricsForSoftError:errorCopy label:@"RMV"];
      if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runRecognizeVoiceCheckVoiceProfileResponse:error:];
      }

      if (!self->_recognizeVoiceStepState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v9 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v9, "RecognizeVoiceCheckLanguage", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *v22 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v12, "RecognizeVoiceCheckLanguage", "", v22, 2u);
        }
      }

      v13 = 3;
      goto LABEL_32;
    }
  }

  else if (errorCopy)
  {
    goto LABEL_5;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runRecognizeVoiceCheckVoiceProfileResponse:error:];
  }

  if (!self->_recognizeVoiceStepState)
  {
    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v16, "RecognizeVoiceCheckLanguage", "", v21, 2u);
      }
    }
  }

  signpostLog4 = [objc_opt_class() signpostLog];
  signpostID4 = [(HDSSetupSession *)self signpostID];
  if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = signpostID4;
    if (os_signpost_enabled(signpostLog4))
    {
      *v20 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v19, "RecognizeVoiceCheckLanguage", "", v20, 2u);
    }
  }

  if (responseCopy)
  {
    v13 = 4;
  }

  else
  {
    v13 = 2;
  }

LABEL_32:
  self->_recognizeVoiceStepState = v13;
  [(HDSSetupSession *)self _run];
}

- (int)_runPersonalRequests
{
  personalRequestsState = self->_personalRequestsState;
  if (personalRequestsState > 1)
  {
    if (personalRequestsState == 2 || personalRequestsState == 4)
    {
      return self->_personalRequestsState;
    }

    goto LABEL_12;
  }

  if (personalRequestsState)
  {
    if (personalRequestsState == 1)
    {
      if (self->_personalRequestsChoice)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        if (!self->_personalRequestsState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v19 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *v23 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v19, "PersonalRequests", "", v23, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_53;
        }

        v15 = signpostID2;
        if (!os_signpost_enabled(signpostLog2))
        {
          goto LABEL_53;
        }

        *v22 = 0;
        v16 = v22;
LABEL_52:
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v15, "PersonalRequests", "", v16, 2u);
LABEL_53:

        self->_personalRequestsState = 4;
        return self->_personalRequestsState;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runPersonalRequests];
      }

      return self->_personalRequestsState;
    }

LABEL_12:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_personalRequestsState;
  }

  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"PersonalContent";

  if (!self->_promptForPersonalRequestsHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPersonalRequests];
    }

    if (!self->_personalRequestsState)
    {
      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *v25 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PersonalRequests", "", v25, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID4 = [(HDSSetupSession *)self signpostID];
    if (signpostID4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_53;
    }

    v15 = signpostID4;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_53;
    }

    v24 = 0;
    v16 = &v24;
    goto LABEL_52;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPersonalRequests];
  }

  if (!self->_personalRequestsState)
  {
    signpostLog4 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = signpostID5;
      if (os_signpost_enabled(signpostLog4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PersonalRequests", "", buf, 2u);
      }
    }
  }

  self->_personalRequestsState = 1;
  promptForPersonalRequestsHandler = self->_promptForPersonalRequestsHandler;
  if (promptForPersonalRequestsHandler)
  {
    promptForPersonalRequestsHandler[2]();
  }

  return self->_personalRequestsState;
}

- (void)runPersonalRequestsAgreedCLI:(BOOL)i makeActiveDevice:(BOOL)device
{
  if (HDSIsDevicePhone(self, a2))
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession runPersonalRequestsAgreedCLI:makeActiveDevice:];
    }

    v7 = objc_alloc_init(_TtC15HomeDeviceSetup19FindMyLocateSession);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __65__HDSSetupSession_runPersonalRequestsAgreedCLI_makeActiveDevice___block_invoke;
    v9[3] = &unk_279715188;
    iCopy = i;
    v9[4] = self;
    v10 = v7;
    deviceCopy = device;
    v8 = v7;
    [(FindMyLocateSession *)v8 getActiveLocationSharingDeviceWithCompletionHandler:v9];
  }

  else
  {

    [(HDSSetupSession *)self personalRequestsEnabled:0];
  }
}

void __65__HDSSetupSession_runPersonalRequestsAgreedCLI_makeActiveDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__HDSSetupSession_runPersonalRequestsAgreedCLI_makeActiveDevice___block_invoke_2;
  block[3] = &unk_279715160;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v16 = *(a1 + 48);
  v15 = v8;
  v17 = *(a1 + 49);
  v9 = v5;
  v10 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __65__HDSSetupSession_runPersonalRequestsAgreedCLI_makeActiveDevice___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = *(a1 + 40);

    return [v10 personalRequestsEnabled:0];
  }

  else if ([*(a1 + 48) isThisDevice])
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __65__HDSSetupSession_runPersonalRequestsAgreedCLI_makeActiveDevice___block_invoke_2_cold_2();
    }

    v2 = *(a1 + 40);
    v3 = *(a1 + 64);

    return [v2 siriCheck:v3];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __65__HDSSetupSession_runPersonalRequestsAgreedCLI_makeActiveDevice___block_invoke_2_cold_1();
    }

    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    v9 = *(a1 + 65);

    return [v5 showMeDeviceSwitchWithDevice:v6 session:v7 siriEnabled:v8 activeDeviceEnabled:v9];
  }
}

- (void)siriCheck:(BOOL)check
{
  v9 = [getAFPreferencesClass_0(self a2)];
  assistantIsEnabled = [v9 assistantIsEnabled];
  if ((assistantIsEnabled & 1) != 0 || ([getVTPreferencesClass_0(assistantIsEnabled) sharedPreferences], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "voiceTriggerEnabled"), v6, v7))
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession siriCheck:];
    }

    v8 = 1;
  }

  else if (check)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession siriCheck:];
    }

    v8 = 1;
    [v9 setAssistantIsEnabled:1];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession siriCheck:];
    }

    v8 = 0;
  }

  [(HDSSetupSession *)self personalRequestsEnabled:v8];
}

- (void)showMeDeviceSwitchWithDevice:(id)device session:(id)session siriEnabled:(BOOL)enabled activeDeviceEnabled:(BOOL)deviceEnabled
{
  deviceEnabledCopy = deviceEnabled;
  deviceCopy = device;
  sessionCopy = session;
  if (!deviceEnabledCopy)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession showMeDeviceSwitchWithDevice:session:siriEnabled:activeDeviceEnabled:];
    }

    [(HDSSetupSession *)self personalRequestsEnabled:0];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __88__HDSSetupSession_showMeDeviceSwitchWithDevice_session_siriEnabled_activeDeviceEnabled___block_invoke;
  aBlock[3] = &unk_279714EE8;
  aBlock[4] = self;
  enabledCopy = enabled;
  v12 = _Block_copy(aBlock);
  if (deviceEnabledCopy)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession showMeDeviceSwitchWithDevice:session:siriEnabled:activeDeviceEnabled:];
    }

    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __88__HDSSetupSession_showMeDeviceSwitchWithDevice_session_siriEnabled_activeDeviceEnabled___block_invoke_3;
    v13[3] = &unk_279714888;
    v14 = v12;
    [sessionCopy setActiveLocationSharingDeviceToThisDeviceWithCompletionHandler:v13];
  }
}

void __88__HDSSetupSession_showMeDeviceSwitchWithDevice_session_siriEnabled_activeDeviceEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __88__HDSSetupSession_showMeDeviceSwitchWithDevice_session_siriEnabled_activeDeviceEnabled___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __88__HDSSetupSession_showMeDeviceSwitchWithDevice_session_siriEnabled_activeDeviceEnabled___block_invoke_cold_2();
  }

  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __88__HDSSetupSession_showMeDeviceSwitchWithDevice_session_siriEnabled_activeDeviceEnabled___block_invoke_2;
  v4[3] = &unk_2797142A8;
  v4[4] = *(a1 + 32);
  v5 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

- (BOOL)_shouldShowPRCardForHomePodsInRoom
{
  selfCopy = self;
  v38 = *MEMORY[0x277D85DE8];
  selectedHome = [(HDSSetupSession *)self selectedHome];
  if (!selectedHome && gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _shouldShowPRCardForHomePodsInRoom];
  }

  owner = [selectedHome owner];
  v5 = owner;
  if (!owner)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _shouldShowPRCardForHomePodsInRoom];
    }

    goto LABEL_12;
  }

  if (!selectedHome || ([owner assistantAccessControlForHome:selectedHome], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_12:
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _shouldShowPRCardForHomePodsInRoom];
    }

    v7 = 0;
    v8 = 1;
    goto LABEL_16;
  }

  v7 = v6;
  v8 = 0;
LABEL_16:
  _selectedRoomAllHomePods = [(HDSSetupSession *)selfCopy _selectedRoomAllHomePods];
  v10 = [_selectedRoomAllHomePods count];

  v11 = selfCopy->_homeKitSelectedRoomName;
  if (!v10)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _shouldShowPRCardForHomePodsInRoom];
    }

    goto LABEL_35;
  }

  if (v8)
  {
    goto LABEL_42;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  accessories = [v7 accessories];
  v13 = [accessories countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (!v13)
  {

    goto LABEL_42;
  }

  v14 = v13;
  v28 = v10;
  v29 = v7;
  v30 = selfCopy;
  v31 = v5;
  v32 = selectedHome;
  v15 = 0;
  v16 = *v34;
  v17 = *MEMORY[0x277CCE8B0];
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v34 != v16)
      {
        objc_enumerationMutation(accessories);
      }

      v19 = *(*(&v33 + 1) + 8 * i);
      room = [v19 room];
      name = [room name];

      category = [v19 category];
      categoryType = [category categoryType];

      if ([name isEqualToString:v11])
      {
        v15 += [categoryType isEqualToString:v17];
      }
    }

    v14 = [accessories countByEnumeratingWithState:&v33 objects:v37 count:16];
  }

  while (v14);

  if (v28 == v15)
  {
    v5 = v31;
    selectedHome = v32;
    v7 = v29;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _shouldShowPRCardForHomePodsInRoom];
    }

    v24 = v30;
    v25 = 1;
LABEL_46:
    [(HDSSetupSession *)v24 personalRequestsEnabled:v25];
    v26 = 0;
    goto LABEL_47;
  }

  v5 = v31;
  selectedHome = v32;
  v7 = v29;
  selfCopy = v30;
  if (!v15)
  {
LABEL_42:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _shouldShowPRCardForHomePodsInRoom];
    }

    v24 = selfCopy;
    v25 = 0;
    goto LABEL_46;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _shouldShowPRCardForHomePodsInRoom];
  }

LABEL_35:
  v26 = 1;
LABEL_47:

  return v26;
}

- (void)_runPersonalRequestsSkipCard
{
  v36 = *MEMORY[0x277D85DE8];
  if (self->_personalRequestsSkipCardState)
  {
    return;
  }

  signpostLog = [objc_opt_class() signpostLog];
  signpostID = [(HDSSetupSession *)self signpostID];
  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = signpostID;
    if (os_signpost_enabled(signpostLog))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PersonalRequestsSkipCard", "", buf, 2u);
    }
  }

  self->_personalRequestsSkipCardState = 1;
  selectedHome = [(HDSSetupSession *)self selectedHome];
  v7 = &OBJC_IVAR___SysDropService__invalidateCalled;
  if (!selectedHome && gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPersonalRequestsSkipCard];
  }

  owner = [selectedHome owner];
  v9 = owner;
  if (!owner)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPersonalRequestsSkipCard];
    }

    goto LABEL_25;
  }

  if (!selectedHome || ([owner assistantAccessControlForHome:selectedHome], (v10 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_25:
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPersonalRequestsSkipCard];
    }

    v11 = 0;
    goto LABEL_29;
  }

  v11 = v10;
  v12 = self->_existingHomepodInSelectedRoom;
  if (v12)
  {
    v13 = v12;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    accessories = [v11 accessories];
    v15 = [accessories countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v28 = v11;
      v29 = v9;
      v16 = *v31;
LABEL_15:
      v17 = 0;
      while (1)
      {
        if (*v31 != v16)
        {
          objc_enumerationMutation(accessories);
        }

        uniqueIdentifier = [*(*(&v30 + 1) + 8 * v17) uniqueIdentifier];
        uniqueIdentifier2 = [(HMAccessory *)v13 uniqueIdentifier];
        v20 = [uniqueIdentifier isEqual:uniqueIdentifier2];

        if (v20)
        {
          break;
        }

        if (v15 == ++v17)
        {
          v15 = [accessories countByEnumeratingWithState:&v30 objects:v35 count:16];
          if (v15)
          {
            goto LABEL_15;
          }

          v7 = &OBJC_IVAR___SysDropService__invalidateCalled;
          goto LABEL_48;
        }
      }

      v7 = &OBJC_IVAR___SysDropService__invalidateCalled;
      if (gLogCategory_HDSSetupSession > 30)
      {
        v15 = 1;
LABEL_48:
        v11 = v28;
        v9 = v29;
        goto LABEL_49;
      }

      v11 = v28;
      v9 = v29;
      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runPersonalRequestsSkipCard];
      }

      v15 = 1;
    }

LABEL_49:

    goto LABEL_30;
  }

LABEL_29:
  v15 = 0;
LABEL_30:
  [(HDSSetupSession *)self personalRequestsEnabled:v15];
  if (!self->_personalRequestsSkipCardState)
  {
    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v23 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v23, "PersonalRequestsSkipCard", "", buf, 2u);
      }
    }
  }

  signpostLog3 = [objc_opt_class() signpostLog];
  signpostID3 = [(HDSSetupSession *)self signpostID];
  if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v26 = signpostID3;
    if (os_signpost_enabled(signpostLog3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v26, "PersonalRequestsSkipCard", "", buf, 2u);
    }
  }

  self->_personalRequestsSkipCardState = 4;
  v27 = v7[584];
  if (v27 <= 30 && (v27 != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runPersonalRequestsSkipCard];
  }
}

- (int)_runSiriForEveryone
{
  siriForEveryoneState = self->_siriForEveryoneState;
  if (siriForEveryoneState != 4 && siriForEveryoneState != 2)
  {
    if (siriForEveryoneState)
    {
      if (self->_siriForEveryoneAnswered)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runSiriForEveryone];
        }

        if (!self->_siriForEveryoneState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v12 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *v18 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v12, "SiriForEveryone", "", v18, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v15 = signpostID2;
          if (os_signpost_enabled(signpostLog2))
          {
            *v17 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v15, "SiriForEveryone", "", v17, 2u);
          }
        }

        self->_siriForEveryoneState = 4;
      }

      else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runSiriForEveryone];
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_10;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runSiriForEveryone];
      }

      if (!self->_siriForEveryoneState)
      {
LABEL_10:
        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SiriForEveryone", "", buf, 2u);
          }
        }
      }

      self->_siriForEveryoneState = 1;
      v8 = _Block_copy(self->_progressHandler);
      v9 = v8;
      if (v8)
      {
        (*(v8 + 2))(v8, 150, 0);
      }
    }
  }

  return self->_siriForEveryoneState;
}

- (int)_runAutomaticSoftwareUpdate
{
  automaticSoftwareUpdateState = self->_automaticSoftwareUpdateState;
  if (automaticSoftwareUpdateState != 1)
  {
    if (automaticSoftwareUpdateState)
    {
      return self->_automaticSoftwareUpdateState;
    }

    if (self->_promptForAutomaticSoftwareUpdateHandler)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAutomaticSoftwareUpdate];
      }

      if (!self->_automaticSoftwareUpdateState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v6 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AutomaticSoftwareUpdatePrompt", "", buf, 2u);
          }
        }
      }

      self->_automaticSoftwareUpdateState = 1;
      (*(self->_promptForAutomaticSoftwareUpdateHandler + 2))();
      return self->_automaticSoftwareUpdateState;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runAutomaticSoftwareUpdate];
    }

    if (!self->_automaticSoftwareUpdateState)
    {
      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *v24 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v16, "AutomaticSoftwareUpdatePrompt", "", v24, 2u);
        }
      }
    }

    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *v23 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v19, "AutomaticSoftwareUpdatePrompt", "", v23, 2u);
      }
    }

    v13 = 2;
LABEL_38:
    self->_automaticSoftwareUpdateState = v13;
    return self->_automaticSoftwareUpdateState;
  }

  if (self->_automaticSoftwareUpdateAgreed)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runAutomaticSoftwareUpdate];
    }

    if (!self->_automaticSoftwareUpdateState)
    {
      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *v22 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AutomaticSoftwareUpdatePrompt", "", v22, 2u);
        }
      }
    }

    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostID5;
      if (os_signpost_enabled(signpostLog5))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v12, "AutomaticSoftwareUpdatePrompt", "", v21, 2u);
      }
    }

    v13 = 4;
    goto LABEL_38;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runAutomaticSoftwareUpdate];
  }

  return self->_automaticSoftwareUpdateState;
}

- (int)_runSoftwareUpdate
{
  softwareUpdateState = self->_softwareUpdateState;
  if (softwareUpdateState != 1)
  {
    if (softwareUpdateState)
    {
      return self->_softwareUpdateState;
    }

    if (self->_promptForSoftwareUpdateHandler)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runSoftwareUpdate];
      }

      if (!self->_softwareUpdateState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v6 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SoftwareUpdatePrompt", "", buf, 2u);
          }
        }
      }

      self->_softwareUpdateState = 1;
      (*(self->_promptForSoftwareUpdateHandler + 2))();
      return self->_softwareUpdateState;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSoftwareUpdate];
    }

    if (!self->_softwareUpdateState)
    {
      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *v24 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v16, "SoftwareUpdatePrompt", "", v24, 2u);
        }
      }
    }

    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *v23 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v19, "SoftwareUpdatePrompt", "", v23, 2u);
      }
    }

    v13 = 2;
LABEL_38:
    self->_softwareUpdateState = v13;
    return self->_softwareUpdateState;
  }

  if (self->_softwareUpdateAgreed)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSoftwareUpdate];
    }

    if (!self->_softwareUpdateState)
    {
      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *v22 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SoftwareUpdatePrompt", "", v22, 2u);
        }
      }
    }

    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostID5;
      if (os_signpost_enabled(signpostLog5))
      {
        *v21 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v12, "SoftwareUpdatePrompt", "", v21, 2u);
      }
    }

    v13 = 4;
    goto LABEL_38;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runSoftwareUpdate];
  }

  return self->_softwareUpdateState;
}

- (int)_runSoundRecognition
{
  soundRecognitionAndDropInState = self->_soundRecognitionAndDropInState;
  if (soundRecognitionAndDropInState > 1)
  {
    if (soundRecognitionAndDropInState == 2 || soundRecognitionAndDropInState == 4)
    {
      return self->_soundRecognitionAndDropInState;
    }

LABEL_21:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_soundRecognitionAndDropInState;
  }

  if (soundRecognitionAndDropInState)
  {
    if (soundRecognitionAndDropInState == 1)
    {
      if (self->_soundRecognitionAndDropInSelected)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runSoundRecognition];
        }

        if (!self->_soundRecognitionAndDropInState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v6 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "SoundRecognition", "", buf, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v9 = signpostID2;
          if (os_signpost_enabled(signpostLog2))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v9, "SoundRecognition", "", buf, 2u);
          }
        }

        self->_soundRecognitionAndDropInState = 4;
        selectedHome = [(HDSSetupSession *)self selectedHome];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __39__HDSSetupSession__runSoundRecognition__block_invoke;
        v23[3] = &unk_279714198;
        v23[4] = self;
        [selectedHome updateDidOnboardAudioAnalysis:1 completion:v23];
      }

      else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runSoundRecognition];
      }

      return self->_soundRecognitionAndDropInState;
    }

    goto LABEL_21;
  }

  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"SoundRecognition";

  if (self->_promptForSoundRecognitionHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSoundRecognition];
    }

    if (!self->_soundRecognitionAndDropInState)
    {
      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v15, "SoundRecognition", "", buf, 2u);
        }
      }
    }

    self->_soundRecognitionAndDropInState = 1;
    (*(self->_promptForSoundRecognitionHandler + 2))();
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSoundRecognition];
    }

    if (!self->_soundRecognitionAndDropInState)
    {
      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v18, "SoundRecognition", "", buf, 2u);
        }
      }
    }

    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = signpostID5;
      if (os_signpost_enabled(signpostLog5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v21, "SoundRecognition", "", buf, 2u);
      }
    }

    self->_soundRecognitionAndDropInState = 4;
  }

  return self->_soundRecognitionAndDropInState;
}

void __39__HDSSetupSession__runSoundRecognition__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [*(a1 + 32) _logMetricsForSoftError:v3 label:@"SoundRecognition"];
    if (gLogCategory_HDSSetupSession > 90)
    {
      goto LABEL_12;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      __39__HDSSetupSession__runSoundRecognition__block_invoke_cold_1();
    }
  }

  else
  {
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_12;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      __39__HDSSetupSession__runSoundRecognition__block_invoke_cold_2();
    }
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __39__HDSSetupSession__runSoundRecognition__block_invoke_cold_3(a1);
  }

LABEL_12:
}

- (int)_runHomePodSoftwareUpdateNonSetupAcknowledgement
{
  homePodSoftwareUpdateAckNonSetupState = self->_homePodSoftwareUpdateAckNonSetupState;
  if (homePodSoftwareUpdateAckNonSetupState > 1)
  {
    if (homePodSoftwareUpdateAckNonSetupState == 2 || homePodSoftwareUpdateAckNonSetupState == 4)
    {
      return self->_homePodSoftwareUpdateAckNonSetupState;
    }

    goto LABEL_13;
  }

  if (homePodSoftwareUpdateAckNonSetupState)
  {
    if (homePodSoftwareUpdateAckNonSetupState == 1)
    {
      if (self->_homePodSoftwareUpdateAckNonSetupEnabled)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runHomePodSoftwareUpdateNonSetupAcknowledgement];
        }

LABEL_28:
        self->_homePodSoftwareUpdateAckNonSetupState = 4;
        return self->_homePodSoftwareUpdateAckNonSetupState;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomePodSoftwareUpdateNonSetupAcknowledgement];
      }

      return self->_homePodSoftwareUpdateAckNonSetupState;
    }

LABEL_13:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_homePodSoftwareUpdateAckNonSetupState;
  }

  if (!self->_promptForHomePodSoftwareUpdateNonSetupAck)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodSoftwareUpdateNonSetupAcknowledgement];
    }

    goto LABEL_28;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runHomePodSoftwareUpdateNonSetupAcknowledgement];
  }

  self->_homePodSoftwareUpdateAckNonSetupState = 1;
  (*(self->_promptForHomePodSoftwareUpdateNonSetupAck + 2))();
  return self->_homePodSoftwareUpdateAckNonSetupState;
}

- (int)_runHomePodSoftwareUpdateNonSetupComplete
{
  homePodSoftwareUpdateNonSetupCompletedState = self->_homePodSoftwareUpdateNonSetupCompletedState;
  if (homePodSoftwareUpdateNonSetupCompletedState > 1)
  {
    if (homePodSoftwareUpdateNonSetupCompletedState == 2 || homePodSoftwareUpdateNonSetupCompletedState == 4)
    {
      return self->_homePodSoftwareUpdateNonSetupCompletedState;
    }

    goto LABEL_13;
  }

  if (homePodSoftwareUpdateNonSetupCompletedState)
  {
    if (homePodSoftwareUpdateNonSetupCompletedState == 1)
    {
      if (self->_homePodSoftwareUpdateNonSetupWasCompleted)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runHomePodSoftwareUpdateNonSetupComplete];
        }

LABEL_28:
        self->_homePodSoftwareUpdateNonSetupCompletedState = 4;
        return self->_homePodSoftwareUpdateNonSetupCompletedState;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomePodSoftwareUpdateNonSetupComplete];
      }

      return self->_homePodSoftwareUpdateNonSetupCompletedState;
    }

LABEL_13:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_homePodSoftwareUpdateNonSetupCompletedState;
  }

  if (!self->_promptForHomePodSoftwareUpdateNonSetupCompleted)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodSoftwareUpdateNonSetupComplete];
    }

    goto LABEL_28;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runHomePodSoftwareUpdateNonSetupComplete];
  }

  self->_homePodSoftwareUpdateNonSetupCompletedState = 1;
  (*(self->_promptForHomePodSoftwareUpdateNonSetupCompleted + 2))();
  return self->_homePodSoftwareUpdateNonSetupCompletedState;
}

- (int)_runHomePodSoftwareUpdateNonSetupCancelled
{
  homePodSoftwareUpdateNonSetupCancelled = self->_homePodSoftwareUpdateNonSetupCancelled;
  if (homePodSoftwareUpdateNonSetupCancelled > 1)
  {
    if (homePodSoftwareUpdateNonSetupCancelled == 2 || homePodSoftwareUpdateNonSetupCancelled == 4)
    {
      return self->_homePodSoftwareUpdateNonSetupCancelled;
    }

    goto LABEL_12;
  }

  if (homePodSoftwareUpdateNonSetupCancelled)
  {
    if (homePodSoftwareUpdateNonSetupCancelled == 1)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomePodSoftwareUpdateNonSetupCancelled];
      }

      return self->_homePodSoftwareUpdateNonSetupCancelled;
    }

LABEL_12:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_homePodSoftwareUpdateNonSetupCancelled;
  }

  if (self->_promptForHomePodSoftwareUpdateNonSetupCancelled)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodSoftwareUpdateNonSetupCancelled];
    }

    self->_homePodSoftwareUpdateNonSetupCancelled = 1;
    (*(self->_promptForHomePodSoftwareUpdateNonSetupCancelled + 2))();
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodSoftwareUpdateNonSetupCancelled];
    }

    self->_homePodSoftwareUpdateNonSetupCancelled = 4;
  }

  return self->_homePodSoftwareUpdateNonSetupCancelled;
}

- (int)_runForcedHomePodSoftwareUpdateNonSetup
{
  homePodSoftwareUpdateStateNonSetup = self->_homePodSoftwareUpdateStateNonSetup;
  switch(homePodSoftwareUpdateStateNonSetup)
  {
    case 4:
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runForcedHomePodSoftwareUpdateNonSetup];
      }

      break;
    case 1:
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runForcedHomePodSoftwareUpdateNonSetup];
      }

      break;
    case 0:
      self->_homePodSoftwareUpdateStateNonSetup = 1;
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runForcedHomePodSoftwareUpdateNonSetup];
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 900, 0);
      }

      sfSession = self->_sfSession;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke;
      v7[3] = &unk_2797145F0;
      v7[4] = self;
      [(SFSession *)sfSession sendRequestID:@"_hds_fu" options:0 request:MEMORY[0x277CBEC10] responseHandler:v7];
      break;
  }

  return self->_homePodSoftwareUpdateStateNonSetup;
}

void __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 1800);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke_2;
  v15[3] = &unk_2797151B0;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

void __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke_2_cold_1();
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke_2_cold_2();
    }
  }

  if (*(a1 + 32))
  {
    *(*(a1 + 56) + 1368) = 3;
    v2 = *(a1 + 56);
    v3 = *(a1 + 32);

    [v2 _reportError:v3 label:@"SU-No-Setup Scan failed"];
  }

  else
  {
    Int64 = CFDictionaryGetInt64();
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke_2_cold_3();
    }

    if (Int64)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke_2_cold_4();
      }

      *(*(a1 + 56) + 1368) = 4;
      *(*(a1 + 56) + 1743) = 1;
      Int64Ranged = CFDictionaryGetInt64Ranged();
      *(*(a1 + 56) + 1760) = Int64Ranged;
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke_2_cold_6();
      }

      [*(a1 + 56) _run];
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __58__HDSSetupSession__runForcedHomePodSoftwareUpdateNonSetup__block_invoke_2_cold_7();
      }

      *(*(a1 + 56) + 1368) = 3;
      v7 = *(a1 + 56);
      v4 = NSErrorWithOSStatusF(4294896156, "Scan Did not succeed");
      [v7 _reportError:v4 label:@"SU-No-Setup Scan failed"];
    }
  }
}

- (int)_runDataAndPrivacy
{
  dataPrivacyState = self->_dataPrivacyState;
  if (dataPrivacyState != 1)
  {
    if (dataPrivacyState)
    {
      return self->_dataPrivacyState;
    }

    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"DataAndPrivacy";

    if (self->_promptForDataAndPrivacyHandler)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runDataAndPrivacy];
      }

      if (!self->_dataPrivacyState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "DataAndPrivacyPrompt", "", buf, 2u);
          }
        }
      }

      self->_dataPrivacyState = 1;
      fetchAltDSIDAccount = [(HDSSetupSession *)self fetchAltDSIDAccount];
      fetchTermsInfo = [(HDSSetupSession *)self fetchTermsInfo];
      if (fetchAltDSIDAccount && self->_deviceProductVersion && (promptForDataAndPrivacyHandler = self->_promptForDataAndPrivacyHandler) != 0)
      {
        self->_didDoV3Terms = 1;
        promptForDataAndPrivacyHandler[2](promptForDataAndPrivacyHandler, self->_iCloudUserID, self->_iTunesUserID, fetchAltDSIDAccount, fetchTermsInfo);
      }

      else
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runDataAndPrivacy];
        }

        if (!self->_dataPrivacyState)
        {
          signpostLog2 = [objc_opt_class() signpostLog];
          signpostID2 = [(HDSSetupSession *)self signpostID];
          if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v20 = signpostID2;
            if (os_signpost_enabled(signpostLog2))
            {
              *v34 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v20, "DataAndPrivacyPrompt", "", v34, 2u);
            }
          }
        }

        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v23 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *v33 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v23, "DataAndPrivacyPrompt", "", v33, 2u);
          }
        }

        self->_dataPrivacyState = 4;
      }

      return self->_dataPrivacyState;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runDataAndPrivacy];
    }

    if (!self->_dataPrivacyState)
    {
      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v26 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *v32 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v26, "DataAndPrivacyPrompt", "", v32, 2u);
        }
      }
    }

    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 > 0xFFFFFFFFFFFFFFFDLL || (v16 = signpostID5, !os_signpost_enabled(signpostLog5)))
    {
LABEL_57:

      self->_dataPrivacyState = 4;
      return self->_dataPrivacyState;
    }

    *v31 = 0;
    v17 = v31;
LABEL_56:
    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v16, "DataAndPrivacyPrompt", "", v17, 2u);
    goto LABEL_57;
  }

  if (self->_dataPrivacyAgreed)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runDataAndPrivacy];
    }

    if (!self->_dataPrivacyState)
    {
      signpostLog6 = [objc_opt_class() signpostLog];
      signpostID6 = [(HDSSetupSession *)self signpostID];
      if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = signpostID6;
        if (os_signpost_enabled(signpostLog6))
        {
          *v30 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_BEGIN, v13, "DataAndPrivacyPrompt", "", v30, 2u);
        }
      }
    }

    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID7 = [(HDSSetupSession *)self signpostID];
    if (signpostID7 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_57;
    }

    v16 = signpostID7;
    if (!os_signpost_enabled(signpostLog5))
    {
      goto LABEL_57;
    }

    v29 = 0;
    v17 = &v29;
    goto LABEL_56;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runDataAndPrivacy];
  }

  return self->_dataPrivacyState;
}

- (int)_runTerms
{
  termsState = self->_termsState;
  if (termsState > 1)
  {
    if (termsState == 2 || termsState == 4)
    {
      return self->_termsState;
    }

    goto LABEL_20;
  }

  if (termsState)
  {
    if (termsState == 1)
    {
      if (self->_termsAgreed)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runTerms];
        }

        if (!self->_termsState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v6 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "TermsPrompt", "", buf, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v9 = signpostID2;
        if (!os_signpost_enabled(signpostLog2))
        {
          goto LABEL_49;
        }

        v21 = 0;
        v10 = &v21;
LABEL_48:
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v9, "TermsPrompt", "", v10, 2u);
LABEL_49:

        self->_termsState = 4;
        return self->_termsState;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runTerms];
      }

      return self->_termsState;
    }

LABEL_20:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_termsState;
  }

  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"TermsV1";

  if (!self->_promptForTermsHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runTerms];
    }

    if (!self->_termsState)
    {
      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *v24 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v18, "TermsPrompt", "", v24, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID4 = [(HDSSetupSession *)self signpostID];
    if (signpostID4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_49;
    }

    v9 = signpostID4;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_49;
    }

    *v23 = 0;
    v10 = v23;
    goto LABEL_48;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runTerms];
  }

  if (!self->_termsState)
  {
    signpostLog4 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = signpostID5;
      if (os_signpost_enabled(signpostLog4))
      {
        *v25 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v15, "TermsPrompt", "", v25, 2u);
      }
    }
  }

  self->_termsState = 1;
  (*(self->_promptForTermsHandler + 2))();
  return self->_termsState;
}

- (int)_runHomePodLoggingProfileTransferAck
{
  homePodProfileTransferAckState = self->_homePodProfileTransferAckState;
  if (homePodProfileTransferAckState == 1)
  {
    if (self->_homePodProfileTransferSelection == 1)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomePodLoggingProfileTransferAck];
      }

      self->_homePodProfileTransferAckState = 4;
    }

    else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodLoggingProfileTransferAck];
    }
  }

  else if (!homePodProfileTransferAckState)
  {
    self->_homePodProfileTransferAckState = 1;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodLoggingProfileTransferAck];
    }

    promptForLoggingProfileTransferAck = self->_promptForLoggingProfileTransferAck;
    if (promptForLoggingProfileTransferAck)
    {
      promptForLoggingProfileTransferAck[2]();
    }
  }

  return self->_homePodProfileTransferAckState;
}

- (int)_runHomePodLoggingProfileTransfer
{
  homePodProfileTransferState = self->_homePodProfileTransferState;
  if (homePodProfileTransferState == 1)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodLoggingProfileTransfer];
    }
  }

  else if (!homePodProfileTransferState)
  {
    self->_homePodProfileTransferState = 1;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodLoggingProfileTransfer];
    }

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 913, 0);
    }

    [(HDSSetupSession *)self _startSysDropLoggingProfileRequest];
  }

  return self->_homePodProfileTransferState;
}

- (int)_runWiFiPassword
{
  wifiPasswordState = self->_wifiPasswordState;
  if (wifiPasswordState > 1)
  {
    if (wifiPasswordState == 2 || wifiPasswordState == 4)
    {
      return self->_wifiPasswordState;
    }

    goto LABEL_20;
  }

  if (wifiPasswordState)
  {
    if (wifiPasswordState == 1)
    {
      if (self->_wifiPasswordSet)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runWiFiPassword];
        }

        if (!self->_wifiPasswordState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v6 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "WiFiPassword", "", buf, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_45;
        }

        v9 = signpostID2;
        if (!os_signpost_enabled(signpostLog2))
        {
          goto LABEL_45;
        }

        v20 = 0;
        v10 = &v20;
LABEL_44:
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v9, "WiFiPassword", "", v10, 2u);
LABEL_45:

        self->_wifiPasswordState = 4;
        return self->_wifiPasswordState;
      }

      return self->_wifiPasswordState;
    }

LABEL_20:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_wifiPasswordState;
  }

  if (!self->_promptForWiFiPasswordHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runWiFiPassword];
    }

    if (!self->_wifiPasswordState)
    {
      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *v23 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v17, "WiFiPassword", "", v23, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID4 = [(HDSSetupSession *)self signpostID];
    if (signpostID4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_45;
    }

    v9 = signpostID4;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_45;
    }

    *v22 = 0;
    v10 = v22;
    goto LABEL_44;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runWiFiPassword];
  }

  if (!self->_wifiPasswordState)
  {
    signpostLog4 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = signpostID5;
      if (os_signpost_enabled(signpostLog4))
      {
        *v24 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v14, "WiFiPassword", "", v24, 2u);
      }
    }
  }

  self->_wifiPasswordState = 1;
  (*(self->_promptForWiFiPasswordHandler + 2))();
  return self->_wifiPasswordState;
}

- (int)_runPreAuthAlignmentAndSiri
{
  result = self->_preShareSettingsState;
  if (!result)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runPreAuthAlignmentAndSiri];
    }

    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      if (self->_prefLEDPasscodeEnabled & ~(self->_isCLIMode || self->_lpcSkip))
      {
        v5 = 55;
      }

      else
      {
        v5 = 60;
      }

      progressHandler[2](progressHandler, v5, 0);
    }

    result = 4;
    self->_preShareSettingsState = 4;
  }

  return result;
}

- (int)_runShareSettings
{
  shareSettingsState = self->_shareSettingsState;
  if (shareSettingsState > 1)
  {
    if (shareSettingsState == 2 || shareSettingsState == 4)
    {
      return self->_shareSettingsState;
    }

    goto LABEL_20;
  }

  if (shareSettingsState)
  {
    if (shareSettingsState == 1)
    {
      if (self->_shareSettingsAgreed)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runShareSettings];
        }

        if (!self->_shareSettingsState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v6 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ShareSettingsPrompt", "", buf, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_49;
        }

        v9 = signpostID2;
        if (!os_signpost_enabled(signpostLog2))
        {
          goto LABEL_49;
        }

        v21 = 0;
        v10 = &v21;
LABEL_48:
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v9, "ShareSettingsPrompt", "", v10, 2u);
LABEL_49:

        self->_shareSettingsState = 4;
        return self->_shareSettingsState;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runShareSettings];
      }

      return self->_shareSettingsState;
    }

LABEL_20:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_shareSettingsState;
  }

  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"ShareSettings";

  if (!self->_promptToShareSettingsHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runShareSettings];
    }

    if (!self->_shareSettingsState)
    {
      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *v24 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v18, "ShareSettingsPrompt", "", v24, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID4 = [(HDSSetupSession *)self signpostID];
    if (signpostID4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_49;
    }

    v9 = signpostID4;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_49;
    }

    *v23 = 0;
    v10 = v23;
    goto LABEL_48;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runShareSettings];
  }

  if (!self->_shareSettingsState)
  {
    signpostLog4 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = signpostID5;
      if (os_signpost_enabled(signpostLog4))
      {
        *v25 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v15, "ShareSettingsPrompt", "", v25, 2u);
      }
    }
  }

  self->_shareSettingsState = 1;
  (*(self->_promptToShareSettingsHandler + 2))();
  return self->_shareSettingsState;
}

- (void)_runAuthKitTrustStartIfNeeded
{
  if (!self->_authKitTrustState)
  {
    v14 = v2;
    v15 = v3;
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_6;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runAuthKitTrustStartIfNeeded];
    }

    if (!self->_authKitTrustState)
    {
LABEL_6:
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "AuthKitTrust", "", buf, 2u);
        }
      }
    }

    self->_authKitTrustState = 1;
    v8 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());
    v9 = [(ACAccount *)self->_iCloudAccount accountPropertyForKey:@"altDSID"];
    [v8 setAltDSID:v9];

    [v8 setAuthenticationType:0];
    [v8 setIsUsernameEditable:0];
    [v8 setPresentingViewController:self->_presentingViewController];
    [v8 setServiceType:1];
    username = [(ACAccount *)self->_iCloudAccount username];
    [v8 setUsername:username];

    v11 = objc_alloc_init(MEMORY[0x277CF0178]);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __48__HDSSetupSession__runAuthKitTrustStartIfNeeded__block_invoke;
    v12[3] = &unk_279714F10;
    v12[4] = self;
    [v11 authenticateWithContext:v8 completion:v12];
  }
}

void __48__HDSSetupSession__runAuthKitTrustStartIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 1800);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__HDSSetupSession__runAuthKitTrustStartIfNeeded__block_invoke_2;
  v8[3] = &unk_2797142D0;
  v9 = v4;
  v10 = v5;
  v7 = v4;
  dispatch_async(v6, v8);
}

uint64_t __48__HDSSetupSession__runAuthKitTrustStartIfNeeded__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __48__HDSSetupSession__runAuthKitTrustStartIfNeeded__block_invoke_2_cold_1();
  }

  v3 = *(*(a1 + 40) + 608);
  if (*(a1 + 32))
  {
    if (!v3)
    {
      v4 = [objc_opt_class() signpostLog];
      v5 = [*(a1 + 40) signpostID];
      if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = v5;
        if (os_signpost_enabled(v4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "AuthKitTrust", "", buf, 2u);
        }
      }
    }

    v7 = [objc_opt_class() signpostLog];
    v8 = [*(a1 + 40) signpostID];
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        *v19 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v7, OS_SIGNPOST_INTERVAL_END, v9, "AuthKitTrust", "", v19, 2u);
      }
    }

    *(*(a1 + 40) + 608) = 3;
    return [*(a1 + 40) _reportError:*(a1 + 32) label:@"AuthKitTrustFailed"];
  }

  else
  {
    if (!v3)
    {
      v11 = [objc_opt_class() signpostLog];
      v12 = [*(a1 + 40) signpostID];
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        if (os_signpost_enabled(v11))
        {
          *v18 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "AuthKitTrust", "", v18, 2u);
        }
      }
    }

    v14 = [objc_opt_class() signpostLog];
    v15 = [*(a1 + 40) signpostID];
    if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = v15;
      if (os_signpost_enabled(v14))
      {
        *v17 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v14, OS_SIGNPOST_INTERVAL_END, v16, "AuthKitTrust", "", v17, 2u);
      }
    }

    *(*(a1 + 40) + 608) = 4;
    return [*(a1 + 40) _run];
  }
}

- (int)_runAuthKitTrustFinish
{
  p_authKitTrustState = &self->_authKitTrustState;
  authKitTrustState = self->_authKitTrustState;
  if (authKitTrustState != 2 && authKitTrustState != 4)
  {
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"AuthKitTrust";

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runAuthKitTrustFinish];
    }
  }

  return *p_authKitTrustState;
}

- (int)_runLEDPassCodeAlignment
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runLEDPassCodeAlignment];
  }

  if (self->_lpcPlayAgain)
  {
    self->_lpcAlignmentState = 0;
    self->_lpcAligned = 0;
    self->_lpcPlayAgain = 0;
  }

  if (self->_lpcSkip)
  {
    self->_lpcAlignmentState = 2;
    self->_lpcSkip = 0;
    if (self->_apcSkip)
    {
      if (!self->_apcState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v5 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v5, "AudioPasscode", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v8 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *v11 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v8, "AudioPasscode", "", v11, 2u);
        }
      }

      self->_apcState = 2;
    }
  }

  result = self->_lpcAlignmentState;
  if (!result)
  {
    result = 1;
    self->_lpcAlignmentState = 1;
  }

  if (self->_lpcAligned && result != 2 && result != 4)
  {
    self->_apcPlayAgain = 1;
    result = 4;
    self->_lpcAlignmentState = 4;
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](self->_progressHandler, 60, 0);
      return self->_lpcAlignmentState;
    }
  }

  return result;
}

- (int)_runAudioPasscode
{
  apcState = self->_apcState;
  do
  {
    v4 = apcState;
    if (apcState <= 10)
    {
      if (apcState > 3)
      {
        if (apcState == 4)
        {
          [(HDSSetupSession *)self _runAudioPasscodeCleanup:1];
          self->_sfSessionSecured = 1;
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runAudioPasscode];
          }
        }

        else if (apcState == 10)
        {
          self->_apcState = 11;
          [(HDSSetupSession *)self _runAudioPasscodeInitRequest];
        }
      }

      else if (apcState)
      {
        if (apcState == 2)
        {
          [(HDSSetupSession *)self _runAudioPasscodeLogMetrics];
          [(HDSSetupSession *)self _runAudioPasscodeCleanup:1];
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runAudioPasscode];
          }
        }
      }

      else
      {
        if (gLogCategory_HDSSetupSession > 30)
        {
          goto LABEL_29;
        }

        if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
        {
          [HDSSetupSession _runAudioPasscode];
        }

        if (!self->_apcState)
        {
LABEL_29:
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v11 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *v19 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v11, "AudioPasscode", "", v19, 2u);
            }
          }
        }

        self->_apcState = 10;
        currentStageLabel = self->_currentStageLabel;
        self->_currentStageLabel = @"APC";
      }

      goto LABEL_43;
    }

    if (apcState > 12)
    {
      if (apcState == 13)
      {
        if (self->_apcStartDone)
        {
          v8 = 14;
          goto LABEL_42;
        }

        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runAudioPasscode];
        }
      }

      else
      {
        if (apcState != 14)
        {
          goto LABEL_43;
        }

        if (self->_apcSecured)
        {
          signpostLog2 = [objc_opt_class() signpostLog];
          signpostID2 = [(HDSSetupSession *)self signpostID];
          if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v7 = signpostID2;
            if (os_signpost_enabled(signpostLog2))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v7, "AudioPasscode", "", buf, 2u);
            }
          }

          v8 = 4;
          goto LABEL_42;
        }

        if (self->_apcPlayAgain)
        {
          self->_apcState = 12;
          self->_apcPlayAgain = 0;
        }

        else if (self->_apcSkip)
        {
          signpostLog3 = [objc_opt_class() signpostLog];
          signpostID3 = [(HDSSetupSession *)self signpostID];
          if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v15 = signpostID3;
            if (os_signpost_enabled(signpostLog3))
            {
              *v17 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v15, "AudioPasscode", "", v17, 2u);
            }
          }

          v8 = 2;
          goto LABEL_42;
        }
      }
    }

    else
    {
      if (apcState != 11)
      {
        self->_apcState = 13;
        if (!self->_apcListening)
        {
          [(APCListener *)self->_apcListener startListeningWithError:0];
          self->_apcListening = 1;
        }

        [(HDSSetupSession *)self _runAudioPasscodeStartRequest];
        goto LABEL_43;
      }

      if (self->_apcInitDone)
      {
        v8 = 12;
LABEL_42:
        self->_apcState = v8;
        goto LABEL_43;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAudioPasscode];
      }
    }

LABEL_43:
    apcState = self->_apcState;
  }

  while (apcState != v4);
  return v4;
}

- (void)_runAudioPasscodeInitRequest
{
  self->_apcInitDone = 0;
  self->_apcStartDone = 0;
  self->_apcStartTicks = mach_absolute_time();
  self->_pairSetupFlags = 2048;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v3 setObject:&unk_2864E8180 forKeyedSubscript:@"aa"];
  capabilityData = [getAPCListenerClass(v4) capabilityData];
  if (capabilityData)
  {
    [v3 setObject:capabilityData forKeyedSubscript:@"apcLC"];
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runAudioPasscodeInitRequest];
    }

    sfSession = self->_sfSession;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__HDSSetupSession__runAudioPasscodeInitRequest__block_invoke;
    v14[3] = &unk_2797145F0;
    v14[4] = self;
    [(SFSession *)sfSession sendRequestID:@"_aa" options:&unk_2864E7F28 request:v3 responseHandler:v14];
  }

  else
  {
    if (!self->_apcState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AudioPasscode", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v12, "AudioPasscode", "", buf, 2u);
      }
    }

    self->_apcState = 3;
    v13 = NSErrorWithOSStatusF(4294960596, "No APCListener capability data");
    [(HDSSetupSession *)self _reportError:v13 label:@"APCInitRequest"];
  }
}

_BYTE *__47__HDSSetupSession__runAudioPasscodeInitRequest__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    return [result _runAudioPasscodeInitResponse:a4 error:a2];
  }

  return result;
}

- (void)_runAudioPasscodeInitResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  if (responseCopy && !errorCopy)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runAudioPasscodeInitResponse:error:];
    }

    CFDataGetTypeID();
    v9 = CFDictionaryGetTypedValue();
    if (v9)
    {
      stopListening = [(APCListener *)self->_apcListener stopListening];
      self->_apcListening = 0;
      v11 = [objc_alloc(getAPCListenerClass(stopListening)) initWithConfigurationData:v9];
      apcListener = self->_apcListener;
      self->_apcListener = v11;

      v13 = self->_apcListener;
      if (v13)
      {
        [(APCListener *)v13 setDispatchQueue:self->_dispatchQueue];
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __55__HDSSetupSession__runAudioPasscodeInitResponse_error___block_invoke;
        v34[3] = &unk_279713FF0;
        v34[4] = self;
        [(APCListener *)self->_apcListener setInvalidationHandler:v34];
        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __55__HDSSetupSession__runAudioPasscodeInitResponse_error___block_invoke_2;
        v33[3] = &unk_2797151D8;
        v33[4] = self;
        [(APCListener *)self->_apcListener setRetrievedDataHandler:v33];
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runAudioPasscodeInitResponse:error:];
        }

        self->_apcInitDone = 1;
        [(HDSSetupSession *)self _run];
        goto LABEL_40;
      }

      if (!self->_apcState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v28 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v28, "AudioPasscode", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v31 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v31, "AudioPasscode", "", buf, 2u);
        }
      }

      self->_apcState = 3;
      NSErrorWithOSStatusF(4294960596, "APCListener init failed");
    }

    else
    {
      if (!self->_apcState)
      {
        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v22 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v22, "AudioPasscode", "", buf, 2u);
          }
        }
      }

      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v25 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v25, "AudioPasscode", "", buf, 2u);
        }
      }

      self->_apcState = 3;
      NSErrorWithOSStatusF(4294960596, "No APCPlayer config data");
    }
    v32 = ;
    [(HDSSetupSession *)self _reportError:v32 label:@"APCInitResponse"];

LABEL_40:
    goto LABEL_41;
  }

  if (!self->_apcState)
  {
    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v16 = signpostID5;
      if (os_signpost_enabled(signpostLog5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v16, "AudioPasscode", "", buf, 2u);
      }
    }
  }

  signpostLog6 = [objc_opt_class() signpostLog];
  signpostID6 = [(HDSSetupSession *)self signpostID];
  if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v19 = signpostID6;
    if (os_signpost_enabled(signpostLog6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_END, v19, "AudioPasscode", "", buf, 2u);
    }
  }

  self->_apcState = 3;
  [(HDSSetupSession *)self _reportError:v8 label:@"APCInitResponse"];
LABEL_41:
}

void __55__HDSSetupSession__runAudioPasscodeInitResponse_error___block_invoke(uint64_t a1)
{
  dispatch_assert_queue_V2(*(*(a1 + 32) + 1800));
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __55__HDSSetupSession__runAudioPasscodeInitResponse_error___block_invoke_cold_1();
  }
}

void __55__HDSSetupSession__runAudioPasscodeInitResponse_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  dispatch_assert_queue_V2(*(*(a1 + 32) + 1800));
  if ((*(*(a1 + 32) + 24) & 1) == 0)
  {
    v6 = v5;
    v7 = *(a1 + 32);
    if (v8 || !v6)
    {
      [v7 _logMetricsForSoftError:? label:?];
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __55__HDSSetupSession__runAudioPasscodeInitResponse_error___block_invoke_2_cold_1();
      }
    }

    else
    {
      [v7 _runAudioPasscodeHandleData:v6];
    }
  }
}

- (void)_runAudioPasscodeStartRequest
{
  self->_apcPlaying = 1;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:&unk_2864E8198 forKeyedSubscript:@"aa"];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runAudioPasscodeStartRequest];
  }

  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__HDSSetupSession__runAudioPasscodeStartRequest__block_invoke;
  v5[3] = &unk_2797145F0;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_aa" options:&unk_2864E7F50 request:v3 responseHandler:v5];
}

_BYTE *__48__HDSSetupSession__runAudioPasscodeStartRequest__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    return [result _runAudioPasscodeStartResponse:a4 error:a2];
  }

  return result;
}

- (void)_runAudioPasscodeStartResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  if (!responseCopy || errorCopy)
  {
    if (!self->_apcState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v17, "AudioPasscode", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v20, "AudioPasscode", "", buf, 2u);
      }
    }

    self->_apcState = 3;
    [(HDSSetupSession *)self _reportError:v8 label:@"APCStartResponse"];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runAudioPasscodeStartResponse:error:];
    }

    apcTimer = self->_apcTimer;
    if (apcTimer)
    {
      v10 = apcTimer;
      dispatch_source_cancel(v10);
      v11 = self->_apcTimer;
      self->_apcTimer = 0;
    }

    v12 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_dispatchQueue);
    v13 = self->_apcTimer;
    self->_apcTimer = v12;

    v14 = self->_apcTimer;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __56__HDSSetupSession__runAudioPasscodeStartResponse_error___block_invoke;
    handler[3] = &unk_279713FF0;
    handler[4] = self;
    dispatch_source_set_event_handler(v14, handler);
    HDSDispatchTimerSet(self->_apcTimer, 10.0, -1.0, -4.0);
    dispatch_resume(self->_apcTimer);
    self->_apcStartDone = 1;
    [(HDSSetupSession *)self _run];
  }
}

- (void)_runAudioPasscodeStopRequest
{
  self->_apcPlaying = 0;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:&unk_2864E81B0 forKeyedSubscript:@"aa"];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runAudioPasscodeStopRequest];
  }

  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__HDSSetupSession__runAudioPasscodeStopRequest__block_invoke;
  v5[3] = &unk_2797145F0;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_aa" options:&unk_2864E7F78 request:v3 responseHandler:v5];
}

void __47__HDSSetupSession__runAudioPasscodeStopRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if ((*(*(a1 + 32) + 24) & 1) == 0 && gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __47__HDSSetupSession__runAudioPasscodeStopRequest__block_invoke_cold_1();
  }
}

- (void)_runAudioPasscodeHandleData:(id)data
{
  v17[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  apcListener = self->_apcListener;
  v16 = 0;
  v6 = [(APCListener *)apcListener getResultData:&v16];
  v7 = v16;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "completionTime")}];
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runAudioPasscodeHandleData:];
    }

    [(HDSSetupSession *)self _run];
  }

  if (self->_apcPlaying)
  {
    if (self->_apcSecured)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAudioPasscodeHandleData:];
      }
    }

    else
    {
      v10 = [dataCopy length];
      if ((v10 - 9) > 0xFFFFFFFFFFFFFFF9)
      {
        v11 = v10;
        [dataCopy getBytes:v17 length:v10];
        bzero(v17 + v11, 8 - v11);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%llu", v17[0]];
        if (self->_apcTryingPasscode)
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runAudioPasscodeHandleData:v12];
          }
        }

        else
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runAudioPasscodeHandleData:];
          }

          self->_apcTryingPasscode = 1;
          if (self->_apcStartedPairSetup)
          {
            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runAudioPasscodeHandleData:v12];
            }

            [(SFSession *)self->_sfSession pairSetupTryPIN:v12];
          }

          else
          {
            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runAudioPasscodeHandleData:];
            }

            objc_storeStrong(&self->_apcPasscode, v12);
            self->_apcStartedPairSetup = 1;
            sfSession = self->_sfSession;
            pairSetupFlags = self->_pairSetupFlags;
            v15[0] = MEMORY[0x277D85DD0];
            v15[1] = 3221225472;
            v15[2] = __47__HDSSetupSession__runAudioPasscodeHandleData___block_invoke;
            v15[3] = &unk_279714198;
            v15[4] = self;
            [(SFSession *)sfSession pairSetupWithFlags:pairSetupFlags | 0x80008 completion:v15];
          }
        }
      }

      else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAudioPasscodeHandleData:];
      }
    }
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runAudioPasscodeHandleData:];
  }
}

void __47__HDSSetupSession__runAudioPasscodeHandleData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ((*(v4 + 24) & 1) == 0)
  {
    if (v3)
    {
      if (!*(v4 + 428))
      {
        v5 = [objc_opt_class() signpostLog];
        v6 = [*(a1 + 32) signpostID];
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = v6;
          if (os_signpost_enabled(v5))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "AudioPasscode", "", buf, 2u);
          }
        }
      }

      v8 = [objc_opt_class() signpostLog];
      v9 = [*(a1 + 32) signpostID];
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v8))
        {
          *v13 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_END, v10, "AudioPasscode", "", v13, 2u);
        }
      }

      *(*(a1 + 32) + 428) = 3;
      [*(a1 + 32) _reportError:v3 label:@"ACPPairSetup"];
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __47__HDSSetupSession__runAudioPasscodeHandleData___block_invoke_cold_1();
      }

      v11 = *(a1 + 32);
      v12 = *(v11 + 416);
      *(v11 + 416) = 0;

      *(*(a1 + 32) + 460) = 0;
      *(*(a1 + 32) + 426) = 1;
      [*(a1 + 32) _runAudioPasscodeLogMetrics];
      [*(a1 + 32) _run];
    }
  }
}

- (void)_runAudioPasscodeTimeout
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runAudioPasscodeTimeout];
  }

  ++self->_apcTimeoutCount;
  apcTimer = self->_apcTimer;
  if (apcTimer)
  {
    v4 = apcTimer;
    dispatch_source_cancel(v4);
    v5 = self->_apcTimer;
    self->_apcTimer = 0;
  }

  if (!self->_invalidateCalled)
  {
    [(HDSSetupSession *)self _runAudioPasscodeStopRequest];
    promptForPINHandler = self->_promptForPINHandler;
    if (promptForPINHandler)
    {
      v7 = *(promptForPINHandler + 2);

      v7();
    }
  }
}

- (void)_runAudioPasscodeCleanup:(BOOL)cleanup
{
  cleanupCopy = cleanup;
  [(HDSSetupSession *)self _runAudioPasscodeLogMetrics];
  if (cleanupCopy && self->_apcPlaying)
  {
    [(HDSSetupSession *)self _runAudioPasscodeStopRequest];
  }

  self->_apcInitDone = 0;
  apcListener = self->_apcListener;
  [(APCListener *)apcListener stopListening];
  self->_apcListening = 0;
  v6 = self->_apcListener;
  self->_apcListener = 0;

  apcPasscode = self->_apcPasscode;
  self->_apcPasscode = 0;

  *&self->_apcStartDone = 0;
  apcTimer = self->_apcTimer;
  if (apcTimer)
  {
    v10 = apcTimer;
    dispatch_source_cancel(v10);
    v11 = self->_apcTimer;
    self->_apcTimer = 0;
  }

  self->_apcTryingPasscode = 0;
  if (apcListener)
  {
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || (v8 = _LogCategory_Initialize(), v8))
      {
        v8 = [HDSSetupSession _runAudioPasscodeCleanup:];
      }
    }

    audioSession = self->_audioSession;
    v13 = getAVAudioSessionCategoryAmbient(v8);
    v22 = 0;
    v14 = [(AVAudioSession *)audioSession setCategory:v13 error:&v22];
    v15 = v22;

    if (!v14)
    {
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAudioPasscodeCleanup:];
      }

      v16 = [(HDSSetupSession *)self _logMetricsForSoftError:v15 label:@"SecureConnection-AudioPasscode"];
    }

    v17 = self->_audioSession;
    v18 = getAVAudioSessionModeDefault(v16);
    v21 = v15;
    v19 = [(AVAudioSession *)v17 setMode:v18 error:&v21];
    v20 = v21;

    if (!v19)
    {
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAudioPasscodeCleanup:];
      }

      [(HDSSetupSession *)self _logMetricsForSoftError:v20 label:@"SecureConnection-AudioPasscode"];
    }
  }
}

- (void)_runAudioPasscodeLogMetrics
{
  v10[4] = *MEMORY[0x277D85DE8];
  if (!self->_apcMetricsLogged)
  {
    if (self->_apcStartTicks)
    {
      mach_absolute_time();
      v3 = UpTicksToMilliseconds();
      v9[0] = @"secured";
      v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_apcSecured];
      v10[0] = v4;
      v9[1] = @"skipped";
      v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_apcSkip];
      v10[1] = v5;
      v9[2] = @"timeouts";
      v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_apcTimeoutCount];
      v10[2] = v6;
      v9[3] = @"totalMs";
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v3];
      v10[3] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
      HDSMetricsLog(@"com.apple.sharing.HomePodAudioPasscode", v8);

      self->_apcMetricsLogged = 1;
    }
  }
}

- (int)_runSiriPasscode
{
  siriPasscodeState = self->_siriPasscodeState;
  do
  {
    v4 = siriPasscodeState;
    if (siriPasscodeState > 10)
    {
      if (siriPasscodeState == 11)
      {
        if (self->_siriPasscodeInitDone)
        {
          v8 = 12;
LABEL_26:
          self->_siriPasscodeState = v8;
          goto LABEL_35;
        }

        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runSiriPasscode];
        }
      }

      else if (siriPasscodeState == 12)
      {
        self->_siriPasscodeState = 13;
        [(HDSSetupSession *)self _runSiriPasscodeStartPairSetup];
      }

      else if (siriPasscodeState == 13 && self->_siriPasscodeSecured)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *v14 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_END, v7, "SiriPasscode", "", v14, 2u);
          }
        }

        v8 = 4;
        goto LABEL_26;
      }
    }

    else if (siriPasscodeState)
    {
      if (siriPasscodeState == 4)
      {
        self->_sfSessionSecured = 1;
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runSiriPasscode];
        }
      }

      else if (siriPasscodeState == 10)
      {
        self->_siriPasscodeState = 11;
        [(HDSSetupSession *)self _runSiriPasscodeInitRequest];
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_19;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runSiriPasscode];
      }

      if (!self->_siriPasscodeState)
      {
LABEL_19:
        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = signpostID2;
          if (os_signpost_enabled(signpostLog2))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SiriPasscode", "", buf, 2u);
          }
        }
      }

      self->_siriPasscodeState = 10;
      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"SPC";
    }

LABEL_35:
    siriPasscodeState = self->_siriPasscodeState;
  }

  while (siriPasscodeState != v4);
  return v4;
}

- (void)_runSiriPasscodeInitRequest
{
  self->_siriPasscodeInitDone = 0;
  self->_pairSetupFlags = 1024;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:&unk_2864E81C8 forKeyedSubscript:@"aa"];
  if (self->_forcedCLIPasscode)
  {
    [(HDSSetupSession *)self forcePassCode:?];
  }

  if (IsAppleInternalBuild() && [(NSString *)self->_forcedPasscode length])
  {
    [v3 setObject:self->_forcedPasscode forKeyedSubscript:@"saFixedPIN"];
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runSiriPasscodeInitRequest];
  }

  sfSession = self->_sfSession;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__HDSSetupSession__runSiriPasscodeInitRequest__block_invoke;
  v5[3] = &unk_2797145F0;
  v5[4] = self;
  [(SFSession *)sfSession sendRequestID:@"_aa" options:&unk_2864E7FA0 request:v3 responseHandler:v5];
}

_BYTE *__46__HDSSetupSession__runSiriPasscodeInitRequest__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {
    return [result _runSiriPasscodeInitResponse:a4 error:a2];
  }

  return result;
}

- (void)_runSiriPasscodeInitResponse:(id)response error:(id)error
{
  responseCopy = response;
  errorCopy = error;
  v8 = errorCopy;
  if (!responseCopy || errorCopy)
  {
    if (!self->_siriPasscodeState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v11, "SiriPasscode", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *v15 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v14, "SiriPasscode", "", v15, 2u);
      }
    }

    self->_siriPasscodeState = 3;
    [(HDSSetupSession *)self _reportError:v8 label:@"SiriPasscodeInitResponse"];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runSiriPasscodeInitResponse:error:];
    }

    self->_siriPasscodeInitDone = 1;
    [(HDSSetupSession *)self _run];
  }
}

- (void)_runSiriPasscodeStartPairSetup
{
  sfSession = self->_sfSession;
  pairSetupFlags = self->_pairSetupFlags;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__HDSSetupSession__runSiriPasscodeStartPairSetup__block_invoke;
  v4[3] = &unk_279714198;
  v4[4] = self;
  [(SFSession *)sfSession pairSetupWithFlags:pairSetupFlags | 0x80008 completion:v4];
}

void __49__HDSSetupSession__runSiriPasscodeStartPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if ((*(v4 + 24) & 1) == 0)
  {
    if (v3)
    {
      if (!*(v4 + 476))
      {
        v5 = [objc_opt_class() signpostLog];
        v6 = [*(a1 + 32) signpostID];
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = v6;
          if (os_signpost_enabled(v5))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SiriPasscode", "", buf, 2u);
          }
        }
      }

      v8 = [objc_opt_class() signpostLog];
      v9 = [*(a1 + 32) signpostID];
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v8))
        {
          *v13 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_END, v10, "SiriPasscode", "", v13, 2u);
        }
      }

      *(*(a1 + 32) + 476) = 3;
      [*(a1 + 32) _reportError:v3 label:@"SiriPasscodePairSetup"];
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __49__HDSSetupSession__runSiriPasscodeStartPairSetup__block_invoke_cold_1();
      }

      *(*(a1 + 32) + 472) = 1;
      v11 = *(a1 + 32);
      v12 = v11[236];
      if (v12)
      {
        (*(v12 + 16))(v11[236], 70, 0);
        v11 = *(a1 + 32);
      }

      [v11 _run];
    }
  }
}

- (int)_runPairSetup
{
  pairSetupState = self->_pairSetupState;
  if (pairSetupState != 4 && pairSetupState != 2)
  {
    if (pairSetupState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PairSetup", "", buf, 2u);
        }
      }

      *&self->_pairSetupFlags = 0x100000000;
      v8 = mach_absolute_time();
      sfSession = self->_sfSession;
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __32__HDSSetupSession__runPairSetup__block_invoke;
      v11[3] = &unk_279714AD8;
      v11[4] = self;
      v11[5] = v8;
      [(SFSession *)sfSession pairSetupWithFlags:524296 completion:v11];
    }
  }

  return self->_pairSetupState;
}

void __32__HDSSetupSession__runPairSetup__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(a1 + 32) + 24) & 1) == 0)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 504) = v4;
    v5 = *(a1 + 32);
    if (v3)
    {
      if (!*(v5 + 500))
      {
        v6 = [objc_opt_class() signpostLog];
        v7 = [*(a1 + 32) signpostID];
        if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v8 = v7;
          if (os_signpost_enabled(v6))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PairSetup", "", buf, 2u);
          }
        }
      }

      v9 = [objc_opt_class() signpostLog];
      v10 = [*(a1 + 32) signpostID];
      if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
        if (os_signpost_enabled(v9))
        {
          *v20 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_END, v11, "PairSetup", "", v20, 2u);
        }
      }

      *(*(a1 + 32) + 500) = 3;
      [*(a1 + 32) _reportError:v3 label:@"PairSetup"];
    }

    else
    {
      *(v5 + 296) = 1;
      if (!*(*(a1 + 32) + 500))
      {
        v12 = [objc_opt_class() signpostLog];
        v13 = [*(a1 + 32) signpostID];
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v14 = v13;
          if (os_signpost_enabled(v12))
          {
            *v23 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "PairSetup", "", v23, 2u);
          }
        }
      }

      v15 = [objc_opt_class() signpostLog];
      v16 = [*(a1 + 32) signpostID];
      if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = v16;
        if (os_signpost_enabled(v15))
        {
          *v22 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v15, OS_SIGNPOST_INTERVAL_END, v17, "PairSetup", "", v22, 2u);
        }
      }

      *(*(a1 + 32) + 500) = 4;
      v18 = *(a1 + 32);
      v19 = v18[236];
      if (v19)
      {
        (*(v19 + 16))(v18[236], 70, 0);
        v18 = *(a1 + 32);
      }

      [v18 _run];
    }
  }
}

- (int)_runBasicConfig
{
  basicConfigState = self->_basicConfigState;
  if (basicConfigState != 4 && basicConfigState != 2)
  {
    if (basicConfigState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runBasicConfig];
      }

      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 80, 0);
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runBasicConfig];
      }

      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v8 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v8, "UserWaitTime", "", buf, 2u);
        }
      }

      if (!self->_basicConfigState)
      {
        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v11 = signpostID2;
          if (os_signpost_enabled(signpostLog2))
          {
            *v15 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v11, "BasicConfig", "", v15, 2u);
          }
        }
      }

      self->_basicConfigState = 1;
      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"BasicConfig";

      v13 = mach_absolute_time();
      self->_userWaitStartTicks = v13;
      self->_configureStartTicks = v13;
      self->_basicConfigStartTicks = v13;
      [(HDSSetupSession *)self _runBasicConfigSendRequest];
    }
  }

  return self->_basicConfigState;
}

- (void)_runBasicConfigSendRequest
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runBasicConfigSendRequest];
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [v3 setObject:&unk_2864E81E0 forKeyedSubscript:@"op"];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:softLink_AXSVoiceOverTouchEnabled(v4)];
  [v3 setObject:v5 forKeyedSubscript:@"voe"];

  v6 = MEMORY[0x277CCABB0];
  softLink_AXSVoiceOverTouchSpeakingRate();
  v7 = [v6 numberWithFloat:?];
  [v3 setObject:v7 forKeyedSubscript:@"vosr"];

  sharedInstance = [(objc_class *)getAXSettingsClass_0() sharedInstance];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(sharedInstance, "touchAccommodationsEnabled")}];
  [v3 setObject:v9 forKeyedSubscript:@"taE"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(sharedInstance, "touchAccommodationsHoldDurationEnabled")}];
  [v3 setObject:v10 forKeyedSubscript:@"taHE"];

  v11 = MEMORY[0x277CCABB0];
  [sharedInstance touchAccommodationsHoldDuration];
  v12 = [v11 numberWithDouble:?];
  [v3 setObject:v12 forKeyedSubscript:@"taHD"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(sharedInstance, "touchAccommodationsIgnoreRepeatEnabled")}];
  [v3 setObject:v13 forKeyedSubscript:@"taIRE"];

  v14 = MEMORY[0x277CCABB0];
  [sharedInstance touchAccommodationsIgnoreRepeatDuration];
  v15 = [v14 numberWithDouble:?];
  [v3 setObject:v15 forKeyedSubscript:@"taIRD"];

  v16 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(sharedInstance, "touchAccommodationsTapActivationMethod")}];
  [v3 setObject:v16 forKeyedSubscript:@"taTAM"];

  v17 = MEMORY[0x277CCABB0];
  [sharedInstance touchAccommodationsTapActivationTimeout];
  v18 = [v17 numberWithDouble:?];
  [v3 setObject:v18 forKeyedSubscript:@"taTAT"];

  v19 = MEMORY[0x277CCABB0];
  [sharedInstance voiceOverDoubleTapInterval];
  v20 = [v19 numberWithDouble:?];
  [v3 setObject:v20 forKeyedSubscript:@"vodti"];

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v22 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25E90]] == 1;

  v23 = [MEMORY[0x277CCABB0] numberWithBool:v22];
  [v3 setObject:v23 forKeyedSubscript:@"eca"];

  mEMORY[0x277D262A0]2 = [MEMORY[0x277D262A0] sharedConnection];
  v25 = [mEMORY[0x277D262A0]2 effectiveBoolValueForSetting:*MEMORY[0x277D25E58]] == 1;

  v26 = [MEMORY[0x277CCABB0] numberWithBool:v25];
  [v3 setObject:v26 forKeyedSubscript:@"dsub"];

  v27 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.da"];
  v28 = [v27 stringForKey:@"ExperimentGroup"];

  v82 = v28;
  if (v28)
  {
    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"liveOn"];
  }

  if (self->_appleStoreMode)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v3 setObject:v29 forKeyedSubscript:@"appleStore"];
  }

  v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_locationEnabled];
  [v3 setObject:v30 forKeyedSubscript:@"lsEn"];

  preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
  firstObject = [preferredLanguages firstObject];

  if (firstObject)
  {
    [v3 setObject:firstObject forKeyedSubscript:@"lang"];
  }

  else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runBasicConfigSendRequest];
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if (localeIdentifier)
  {
    [v3 setObject:localeIdentifier forKeyedSubscript:@"locale"];
  }

  else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runBasicConfigSendRequest];
  }

  currentLocale2 = [MEMORY[0x277CBEAF8] currentLocale];
  v36 = [currentLocale2 objectForKey:*MEMORY[0x277CBE700]];

  if (v36)
  {
    [v3 setObject:v36 forKeyedSubscript:@"tempUnit"];
    v37 = &OBJC_IVAR___SysDropService__invalidateCalled;
  }

  else
  {
    v37 = &OBJC_IVAR___SysDropService__invalidateCalled;
    if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runBasicConfigSendRequest];
    }
  }

  if (self->_stereoPairRole)
  {
    v38 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v3 setObject:v38 forKeyedSubscript:@"msRo"];
  }

  mEMORY[0x277D262A0]3 = [MEMORY[0x277D262A0] sharedConnection];
  v40 = [mEMORY[0x277D262A0]3 effectiveBoolValueForSetting:@"newsAllowed"] == 1;

  v41 = [MEMORY[0x277CCABB0] numberWithBool:v40];
  [v3 setObject:v41 forKeyedSubscript:@"newsAllowed"];

  if (!self->_siriLanguagePicked)
  {
    v45 = 0;
LABEL_32:
    v47 = 1;
    goto LABEL_33;
  }

  selectedSiriLanguageCode = self->_selectedSiriLanguageCode;
  if (selectedSiriLanguageCode)
  {
    _runBasicConfigSendRequest = selectedSiriLanguageCode;
    v45 = _runBasicConfigSendRequest;
    v46 = v37[584];
    if (v46 <= 30)
    {
      if (v46 != -1 || (_runBasicConfigSendRequest = _LogCategory_Initialize(), _runBasicConfigSendRequest))
      {
        _runBasicConfigSendRequest = [HDSSetupSession _runBasicConfigSendRequest];
      }
    }

    goto LABEL_32;
  }

  v78 = v37[584];
  if (v78 <= 30 && (v78 != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runBasicConfigSendRequest];
  }

  _runBasicConfigSendRequest = [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"siriD"];
  v45 = 0;
  v47 = 2;
LABEL_33:
  self->_siriSettingState = v47;
  siriDataSharing = self->_siriDataSharing;
  if (siriDataSharing == 6)
  {
    v49 = MEMORY[0x277CBEC38];
  }

  else
  {
    if (siriDataSharing != 5)
    {
      goto LABEL_38;
    }

    v49 = MEMORY[0x277CBEC28];
  }

  _runBasicConfigSendRequest = [v3 setObject:v49 forKeyedSubscript:@"siriDS"];
LABEL_38:
  v50 = [getAFPreferencesClass_0(_runBasicConfigSendRequest v43)];
  v51 = v50;
  if (v45)
  {
    languageCode = v45;

LABEL_41:
    [v3 setObject:languageCode forKeyedSubscript:@"siriLL"];
    goto LABEL_42;
  }

  languageCode = [v50 languageCode];

  if (languageCode)
  {
    goto LABEL_41;
  }

  v79 = v37[584];
  if (v79 <= 60 && (v79 != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runBasicConfigSendRequest];
  }

  languageCode = 0;
LABEL_42:
  selectedSiriVoice = self->_selectedSiriVoice;
  if (selectedSiriVoice)
  {
    outputVoice = selectedSiriVoice;
    if (v45)
    {
LABEL_44:
      languageCode2 = v45;

LABEL_47:
      [v3 setObject:languageCode2 forKeyedSubscript:@"siriVL"];
      goto LABEL_48;
    }
  }

  else
  {
    outputVoice = [v51 outputVoice];

    if (v45)
    {
      goto LABEL_44;
    }
  }

  languageCode2 = [(AFVoiceInfo *)outputVoice languageCode];

  if (languageCode2)
  {
    goto LABEL_47;
  }

  v80 = v37[584];
  if (v80 <= 60 && (v80 != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runBasicConfigSendRequest];
  }

  languageCode2 = 0;
LABEL_48:
  gender = [(AFVoiceInfo *)outputVoice gender];
  if (gender)
  {
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:gender];
    [v3 setObject:v57 forKeyedSubscript:@"siriVG"];
  }

  else
  {
    v58 = v37[584];
    if (v58 <= 60 && (v58 != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runBasicConfigSendRequest];
    }
  }

  name = [(AFVoiceInfo *)outputVoice name];

  v81 = v51;
  if (name)
  {
    [v3 setObject:name forKeyedSubscript:@"siriVN"];
  }

  else
  {
    v60 = v37[584];
    if (v60 <= 60 && (v60 != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runBasicConfigSendRequest];
    }
  }

  date = [MEMORY[0x277CBEAA8] date];
  [v3 setObject:date forKeyedSubscript:@"time"];

  v62 = *MEMORY[0x277CBF008];
  selfCopy = self;
  if (CFPreferencesGetAppBooleanValue(@"AppleICUForce12HourTime", *MEMORY[0x277CBF008], 0))
  {
    v64 = 12;
  }

  else if (CFPreferencesGetAppBooleanValue(@"AppleICUForce24HourTime", v62, 0))
  {
    v64 = 24;
  }

  else
  {
    v64 = 0;
  }

  v65 = [MEMORY[0x277CCABB0] numberWithInteger:v64];
  [v3 setObject:v65 forKeyedSubscript:@"timeCycle"];

  v66 = [MEMORY[0x277CCABB0] numberWithBool:softLinkTMIsAutomaticTimeEnabled() != 0];
  [v3 setObject:v66 forKeyedSubscript:@"timeAuto"];

  systemTimeZone = [MEMORY[0x277CBEBB0] systemTimeZone];
  name2 = [systemTimeZone name];

  if (name2)
  {
    _runBasicConfigSendRequest2 = [v3 setObject:name2 forKeyedSubscript:@"tz"];
    v70 = selfCopy;
  }

  else
  {
    v71 = v37[584];
    v70 = selfCopy;
    if (v71 <= 60)
    {
      if (v71 != -1 || (_runBasicConfigSendRequest2 = _LogCategory_Initialize(), _runBasicConfigSendRequest2))
      {
        _runBasicConfigSendRequest2 = [HDSSetupSession _runBasicConfigSendRequest];
      }
    }
  }

  v72 = [MEMORY[0x277CCABB0] numberWithBool:softLinkTMIsAutomaticTimeZoneEnabled(_runBasicConfigSendRequest2) != 0];
  [v3 setObject:v72 forKeyedSubscript:@"tzAuto"];

  v73 = WiFiCopyCurrentNetworkInfoEx();
  if (v73 && CFDictionaryGetInt64Ranged() >= 1)
  {
    v74 = [MEMORY[0x277CCABB0] numberWithInt:?];
    [v3 setObject:v74 forKeyedSubscript:@"wifiCh"];

    v70 = selfCopy;
  }

  isJSEnabled = [(HDSSetupSession *)v70 isJSEnabled];
  v76 = [MEMORY[0x277CCABB0] numberWithBool:isJSEnabled];
  [v3 setObject:v76 forKeyedSubscript:@"user_js_enabled"];

  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runBasicConfigSendRequest];
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runBasicConfigSendRequest];
    }
  }

  sfSession = selfCopy->_sfSession;
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __45__HDSSetupSession__runBasicConfigSendRequest__block_invoke;
  v83[3] = &unk_279715200;
  v83[4] = selfCopy;
  [(SFSession *)sfSession sendRequestWithFlags:1 object:v3 responseHandler:v83];
}

- (void)_runBasicConfigReceiveResponse:(id)response error:(id)error
{
  v34[1] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  if (errorCopy)
  {
    v8 = errorCopy;
LABEL_3:
    if (!self->_basicConfigState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v11, "BasicConfig", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v14, "BasicConfig", "", buf, 2u);
      }
    }

    self->_basicConfigState = 3;
    [(HDSSetupSession *)self _reportError:v8 label:@"BasicConfig"];

    goto LABEL_34;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  if (Int64Ranged)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA590];
    v18 = Int64Ranged;
    v33 = *MEMORY[0x277CCA450];
    v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v20 = v19;
    v21 = @"?";
    if (v19)
    {
      v21 = v19;
    }

    v34[0] = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v8 = [v16 errorWithDomain:v17 code:v18 userInfo:v22];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runBasicConfigReceiveResponse:error:];
  }

  if (!self->_basicConfigState)
  {
    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v25 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v25, "BasicConfig", "", buf, 2u);
      }
    }
  }

  signpostLog4 = [objc_opt_class() signpostLog];
  signpostID4 = [(HDSSetupSession *)self signpostID];
  if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v28 = signpostID4;
    if (os_signpost_enabled(signpostLog4))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v28, "BasicConfig", "", buf, 2u);
    }
  }

  self->_basicConfigState = 4;
  mach_absolute_time();
  UpTicksToSecondsF();
  self->_basicConfigSecs = basicConfigSecs;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_31;
      }

      basicConfigSecs = self->_basicConfigSecs;
    }

    v31 = basicConfigSecs;
    LogPrintF();
  }

LABEL_31:
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 90, 0);
  }

  [(HDSSetupSession *)self _run];
LABEL_34:
}

- (int)_runAppleMusic
{
  preflightAppleMusicState = self->_preflightAppleMusicState;
  if (preflightAppleMusicState != 4 && preflightAppleMusicState != 2)
  {
    if (preflightAppleMusicState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      return self->_preflightAppleMusicState;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runAppleMusic];
    }

    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"AppleMusic";

    appleMusicState = self->_appleMusicState;
    if (appleMusicState == 2)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAppleMusic];
      }

      if (!self->_preflightAppleMusicState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v16, "AppleMusic", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v13 = signpostID2;
      if (!os_signpost_enabled(signpostLog2))
      {
        goto LABEL_63;
      }

      *buf = 0;
      goto LABEL_62;
    }

    if (appleMusicState == 6)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAppleMusic];
      }

      if (!self->_preflightAppleMusicState)
      {
        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v10 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v10, "AppleMusic", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v13 = signpostID4;
      if (!os_signpost_enabled(signpostLog2))
      {
        goto LABEL_63;
      }

      *buf = 0;
LABEL_62:
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v13, "AppleMusic", "", buf, 2u);
LABEL_63:

      v5 = 2;
      self->_preflightAppleMusicState = 2;
      return v5;
    }

    if (!self->_deviceGUID || !self->_deviceSerialNumber)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAppleMusic];
      }

      if (!self->_preflightAppleMusicState)
      {
        signpostLog4 = [objc_opt_class() signpostLog];
        signpostID5 = [(HDSSetupSession *)self signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = signpostID5;
          if (os_signpost_enabled(signpostLog4))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v26, "AppleMusic", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID6 = [(HDSSetupSession *)self signpostID];
      if (signpostID6 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_63;
      }

      v13 = signpostID6;
      if (!os_signpost_enabled(signpostLog2))
      {
        goto LABEL_63;
      }

      *buf = 0;
      goto LABEL_62;
    }

    v18 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.Music" allowPlaceholder:0 error:0];
    applicationState = [v18 applicationState];
    isInstalled = [applicationState isInstalled];

    if (isInstalled)
    {
      if (self->_promptForAppleMusicHandler)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runAppleMusic];
        }

        if (!self->_preflightAppleMusicState)
        {
          signpostLog5 = [objc_opt_class() signpostLog];
          signpostID7 = [(HDSSetupSession *)self signpostID];
          if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v23 = signpostID7;
            if (os_signpost_enabled(signpostLog5))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v23, "AppleMusic", "", buf, 2u);
            }
          }
        }

        self->_preflightAppleMusicState = 1;
        (*(self->_promptForAppleMusicHandler + 2))();

        return self->_preflightAppleMusicState;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAppleMusic];
      }

      if (!self->_preflightAppleMusicState)
      {
        signpostLog6 = [objc_opt_class() signpostLog];
        signpostID8 = [(HDSSetupSession *)self signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v37 = signpostID8;
          if (os_signpost_enabled(signpostLog6))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_BEGIN, v37, "AppleMusic", "", buf, 2u);
          }
        }
      }

      signpostLog7 = [objc_opt_class() signpostLog];
      signpostID9 = [(HDSSetupSession *)self signpostID];
      if (signpostID9 - 1 > 0xFFFFFFFFFFFFFFFDLL || (v34 = signpostID9, !os_signpost_enabled(signpostLog7)))
      {
LABEL_91:

        v5 = 2;
        self->_preflightAppleMusicState = 2;

        return v5;
      }

      *buf = 0;
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runAppleMusic];
      }

      if (!self->_preflightAppleMusicState)
      {
        signpostLog8 = [objc_opt_class() signpostLog];
        signpostID10 = [(HDSSetupSession *)self signpostID];
        if (signpostID10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = signpostID10;
          if (os_signpost_enabled(signpostLog8))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog8, OS_SIGNPOST_INTERVAL_BEGIN, v31, "AppleMusic", "", buf, 2u);
          }
        }
      }

      signpostLog7 = [objc_opt_class() signpostLog];
      signpostID11 = [(HDSSetupSession *)self signpostID];
      if (signpostID11 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_91;
      }

      v34 = signpostID11;
      if (!os_signpost_enabled(signpostLog7))
      {
        goto LABEL_91;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog7, OS_SIGNPOST_INTERVAL_END, v34, "AppleMusic", "", buf, 2u);
    goto LABEL_91;
  }

  return self->_preflightAppleMusicState;
}

- (int)_runHomePodScanFetch
{
  result = self->_wifiScanFetchState;
  if (!result)
  {
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 40, 0);
    }

    v5 = objc_opt_new();
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodScanFetch];
    }

    sfSession = self->_sfSession;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__HDSSetupSession__runHomePodScanFetch__block_invoke;
    v7[3] = &unk_2797145F0;
    v7[4] = self;
    [(SFSession *)sfSession sendRequestID:@"wp_s_f" options:&unk_2864E7FC8 request:v5 responseHandler:v7];

    return self->_wifiScanFetchState;
  }

  return result;
}

void __39__HDSSetupSession__runHomePodScanFetch__block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__HDSSetupSession__runHomePodScanFetch__block_invoke_2;
  block[3] = &unk_279714320;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v10 = v7;
  v11 = v6;
  dispatch_async(v9, block);
}

void __39__HDSSetupSession__runHomePodScanFetch__block_invoke_2(void *a1)
{
  if (a1[4])
  {
    v2 = a1[5];

    [v2 _reportError:? label:?];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runHomePodScanFetch__block_invoke_2_cold_1();
    }

    CFArrayGetTypeID();
    v3 = CFDictionaryGetTypedValue();
    v5 = a1[5];
    v4 = (a1 + 5);
    obj = [v5 filterNetworksForHomePod:v3];

    if (obj)
    {
      objc_storeStrong(*v4 + 196, obj);
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __39__HDSSetupSession__runHomePodScanFetch__block_invoke_2_cold_2();
    }

    *(*v4 + 412) = 4;
    [*v4 _run];
  }
}

- (int)_runWiFiPicker
{
  wifiPickerState = self->_wifiPickerState;
  if (wifiPickerState > 1)
  {
    if (wifiPickerState == 2 || wifiPickerState == 4)
    {
      return self->_wifiPickerState;
    }

    goto LABEL_20;
  }

  if (wifiPickerState)
  {
    if (wifiPickerState == 1)
    {
      if (self->_wifiPicked)
      {
        self->_showWiFiPicker = 0;
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runWiFiPicker];
        }

        if (!self->_wifiPickerState)
        {
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v6 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "WiFiPicker", "", buf, 2u);
            }
          }
        }

        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
        {
          goto LABEL_43;
        }

        v9 = signpostID2;
        if (!os_signpost_enabled(signpostLog2))
        {
          goto LABEL_43;
        }

        *buf = 0;
LABEL_42:
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v9, "WiFiPicker", "", buf, 2u);
LABEL_43:

        self->_wifiPickerState = 4;
        return self->_wifiPickerState;
      }

      return self->_wifiPickerState;
    }

LABEL_20:
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_wifiPickerState;
  }

  if (!self->_promptForWiFiPickerHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runWiFiPicker];
    }

    if (!self->_wifiPickerState)
    {
      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v16, "WiFiPicker", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID4 = [(HDSSetupSession *)self signpostID];
    if (signpostID4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_43;
    }

    v9 = signpostID4;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_43;
    }

    *buf = 0;
    goto LABEL_42;
  }

  v11 = self->_primaryResidentSSID;
  if (!v11)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runWiFiPicker];
    }

    v12 = WiFiCopyCurrentNetworkInfoEx();
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
  }

  homePodScanResults = self->_homePodScanResults;
  if (homePodScanResults)
  {
    [(NSArray *)homePodScanResults count];
  }

  (*(self->_promptForWiFiSummaryHandler + 2))();
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runWiFiPicker];
  }

  if (!self->_wifiPickerState)
  {
    signpostLog4 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v20 = signpostID5;
      if (os_signpost_enabled(signpostLog4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v20, "WiFiPicker", "", buf, 2u);
      }
    }
  }

  self->_wifiPickerState = 1;
  v21 = objc_opt_new();
  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v24 = v23;
  reachableHomePodScanResults = self->_reachableHomePodScanResults;
  if (reachableHomePodScanResults)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __33__HDSSetupSession__runWiFiPicker__block_invoke;
    v36[3] = &unk_279715228;
    v37 = v23;
    [(NSMutableArray *)reachableHomePodScanResults enumerateObjectsUsingBlock:v36];
  }

  v26 = self->_homePodScanResults;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __33__HDSSetupSession__runWiFiPicker__block_invoke_2;
  v32[3] = &unk_279715250;
  v33 = v24;
  v34 = v21;
  v35 = v22;
  v27 = v22;
  v28 = v21;
  v29 = v24;
  [(NSArray *)v26 enumerateObjectsUsingBlock:v32];
  v30 = objc_opt_new();
  [v30 addObjectsFromArray:v28];
  [v30 addObjectsFromArray:v27];
  (*(self->_promptForWiFiPickerHandler + 2))();

  return self->_wifiPickerState;
}

void __33__HDSSetupSession__runWiFiPicker__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  CFStringGetTypeID();
  v4 = CFDictionaryGetTypedValue();

  [*(a1 + 32) addObject:v4];
}

void __33__HDSSetupSession__runWiFiPicker__block_invoke_2(id *a1, void *a2)
{
  v5 = a2;
  CFStringGetTypeID();
  v3 = CFDictionaryGetTypedValue();
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __33__HDSSetupSession__runWiFiPicker__block_invoke_2_cold_1();
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else if (!v3)
  {
    goto LABEL_14;
  }

  if ([a1[4] containsObject:v3])
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __33__HDSSetupSession__runWiFiPicker__block_invoke_2_cold_2();
    }

    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v5];
    [v4 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hds_hp_scn_re"];
    if (([v3 hasPrefix:@"AppleWiFi"] & 1) == 0)
    {
      [a1[5] addObject:v4];
    }
  }

  else if (([v3 hasPrefix:@"AppleWiFi"] & 1) == 0)
  {
    [a1[6] addObject:v5];
  }

LABEL_14:
}

- (int)_runWiFiSummaryCard
{
  result = self->_wifiSummaryState;
  if (result == 1)
  {
    if (!self->_wifiSSIDAcknowledged)
    {
      return 1;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runWiFiSummaryCard];
    }

    if (!self->_wifiSummaryState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v9, "WiFiSummary", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_36;
    }

    v12 = signpostID2;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_36;
    }

    v22 = 0;
    v13 = "WiFiSummary";
    v14 = &v22;
    goto LABEL_35;
  }

  if (result)
  {
    return result;
  }

  if (!self->_promptForWiFiSummaryHandler)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runWiFiSummaryCard];
    }

    if (!self->_wifiSummaryState)
    {
      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *v25 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v17, "WiFiPicker", "", v25, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID4 = [(HDSSetupSession *)self signpostID];
    if (signpostID4 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_36;
    }

    v12 = signpostID4;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_36;
    }

    *v24 = 0;
    v13 = "WiFiPicker";
    v14 = v24;
LABEL_35:
    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v12, v13, "", v14, 2u);
LABEL_36:

    result = 4;
    self->_wifiSummaryState = 4;
    return result;
  }

  v4 = self->_primaryResidentSSID;
  if (!v4)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runWiFiSummaryCard];
    }

    v5 = WiFiCopyCurrentNetworkInfoEx();
    CFStringGetTypeID();
    v4 = CFDictionaryGetTypedValue();
  }

  homePodScanResults = self->_homePodScanResults;
  if (homePodScanResults)
  {
    [(NSArray *)homePodScanResults count];
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runWiFiSummaryCard];
  }

  if (!self->_wifiSummaryState)
  {
    signpostLog4 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = signpostID5;
      if (os_signpost_enabled(signpostLog4))
      {
        *v26 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v21, "WiFiSummary", "", v26, 2u);
      }
    }
  }

  self->_wifiSummaryState = 1;
  (*(self->_promptForWiFiSummaryHandler + 2))();

  return self->_wifiSummaryState;
}

- (int)_runTRSessionStart
{
  v37[1] = *MEMORY[0x277D85DE8];
  trSessionState = self->_trSessionState;
  if (trSessionState == 4 || trSessionState == 2)
  {
    return self->_trSessionState;
  }

  if (!trSessionState)
  {
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_10;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runTRSessionStart];
    }

    if (!self->_trSessionState)
    {
LABEL_10:
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TRSessionStart", "", buf, 2u);
        }
      }
    }

    self->_trSessionState = 1;
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"TRSessionStart";

    v9 = objc_alloc_init(getTROperationQueueClass_0());
    trOperationQueue = self->_trOperationQueue;
    self->_trOperationQueue = v9;

    if (self->_trOperationQueue)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      trOperations = self->_trOperations;
      self->_trOperations = v11;

      trSession = [(SFSession *)self->_sfSession trSession];
      trSession = self->_trSession;
      self->_trSession = trSession;

      if (self->_trSession)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runTRSessionStart];
        }

        if (!self->_trSessionState)
        {
          signpostLog2 = [objc_opt_class() signpostLog];
          signpostID2 = [(HDSSetupSession *)self signpostID];
          if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v17 = signpostID2;
            if (os_signpost_enabled(signpostLog2))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v17, "TRSessionStart", "", buf, 2u);
            }
          }
        }

        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v20 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v20, "TRSessionStart", "", buf, 2u);
          }
        }

        self->_trSessionState = 4;
        return self->_trSessionState;
      }

      if (gLogCategory_HDSSetupSession > 90 || gLogCategory_HDSSetupSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_42;
      }
    }

    else if (gLogCategory_HDSSetupSession > 90 || gLogCategory_HDSSetupSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_42;
    }

    [HDSSetupSession _runTRSessionStart];
LABEL_42:
    if (!self->_trSessionState)
    {
      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v24 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v24, "TRSessionStart", "", buf, 2u);
        }
      }
    }

    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v27 = signpostID5;
      if (os_signpost_enabled(signpostLog5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v27, "TRSessionStart", "", buf, 2u);
      }
    }

    self->_trSessionState = 3;
    v28 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA590];
    v36 = *MEMORY[0x277CCA450];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
    v31 = v30;
    v32 = @"?";
    if (v30)
    {
      v32 = v30;
    }

    v37[0] = v32;
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    v34 = [v28 errorWithDomain:v29 code:-6700 userInfo:v33];
    [(HDSSetupSession *)self _reportError:v34 label:@"TRSessionStart"];

    return self->_trSessionState;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return self->_trSessionState;
}

- (int)_runWiFiSetup
{
  v42[1] = *MEMORY[0x277D85DE8];
  wifiSetupState = self->_wifiSetupState;
  if (wifiSetupState == 4)
  {
    if (self->_prefPrototypeForceUpdate)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runWiFiSetup];
      }

      [(SFSession *)self->_sfSession sendRequestID:@"_hds_fu" options:0 request:MEMORY[0x277CBEC10] responseHandler:&__block_literal_global_1668];
      if (!self->_wifiSetupState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v14 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v14, "WiFiSetup", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v17, "WiFiSetup", "", buf, 2u);
        }
      }

      self->_wifiSetupState = 3;
    }

    return self->_wifiSetupState;
  }

  if (wifiSetupState)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return self->_wifiSetupState;
  }

  self->_hasAlreadySkipped = 1;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runWiFiSetup];
  }

  if (!self->_wifiSetupState)
  {
    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v6, "WiFiSetup", "", buf, 2u);
      }
    }
  }

  self->_wifiSetupState = 1;
  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"WiFiSetup";

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 200, 0);
  }

  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation invalidate];
  v9 = objc_alloc_init(MEMORY[0x277D54C98]);
  wifiSetupOperation = self->_wifiSetupOperation;
  self->_wifiSetupOperation = v9;

  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSfSession:self->_sfSession];
  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setOperationType:1];
  wifiSelectedSSID = self->_wifiSelectedSSID;
  if (wifiSelectedSSID)
  {
    if (gLogCategory_HDSSetupSession <= 30)
    {
      if (gLogCategory_HDSSetupSession != -1 || (v21 = _LogCategory_Initialize(), wifiSelectedSSID = self->_wifiSelectedSSID, v21))
      {
        v38 = wifiSelectedSSID;
        LogPrintF();
        wifiSelectedSSID = self->_wifiSelectedSSID;
      }
    }

    v22 = [(HDSSetupSession *)self passwordForSSID:wifiSelectedSSID, v38];
    v23 = [(HDSSetupSession *)self createWiFiConfigurationForSetup:wifiSelectedSSID password:v22];
    preferredWiFiConfig = self->_preferredWiFiConfig;
    self->_preferredWiFiConfig = v23;

    [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setPreferredWiFiConfiguration:self->_preferredWiFiConfig];
    v20 = 3;
  }

  else if (!self->_prSSIDRetried && self->_primaryResidentSSID && (!self->_primaryResidentSSIDProtected || self->_primaryResidentPassword) && _os_feature_enabled_impl())
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runWiFiSetup];
    }

    self->_didSetupWithPRSSID = 1;
    v18 = [(HDSSetupSession *)self createWiFiConfigurationForSetup:self->_primaryResidentSSID password:self->_primaryResidentPassword];
    v19 = self->_preferredWiFiConfig;
    self->_preferredWiFiConfig = v18;

    [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setPreferredWiFiConfiguration:self->_preferredWiFiConfig];
    v20 = 2;
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runWiFiSetup];
    }

    [(HDSSetupSession *)self preflightCheckPhonesNetwork];
    v20 = 0;
  }

  self->_wifiSetupType = v20;
  lastSSIDUsed = [(HDSSetupSession *)self lastSSIDUsed];
  if ([(NSArray *)self->_preferredHomeNetworkNames containsObject:lastSSIDUsed])
  {
    self->_preferredNetworkState = 8;
  }

  [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setSkipReachability:self->_peerSupportsCaptiveNetworks];
  if (!+[HDSDefaults forceFailWiFi])
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __32__HDSSetupSession__runWiFiSetup__block_invoke;
    v39[3] = &unk_279714198;
    v39[4] = self;
    [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation setCompletionHandler:v39];
    [(SFDeviceOperationWiFiSetup *)self->_wifiSetupOperation activate];

    return self->_wifiSetupState;
  }

  ++self->_wifiNumRetries;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runWiFiSetup];
  }

  v26 = MEMORY[0x277CCA9B8];
  v27 = *MEMORY[0x277CCA590];
  v41 = *MEMORY[0x277CCA450];
  v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
  v29 = v28;
  v30 = @"?";
  if (v28)
  {
    v30 = v28;
  }

  v42[0] = v30;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v32 = [v26 errorWithDomain:v27 code:301021 userInfo:v31];

  if (!_os_feature_enabled_impl() || self->_isCLIMode || (retryPickerCount = self->_retryPickerCount, retryPickerCount > 3))
  {
    self->_wifiSetupState = 3;
    [(HDSSetupSession *)self _reportError:v32 label:@"FakeWiFiError"];
  }

  else
  {
    self->_wifiSetupState = 0;
    self->_retryPickerCount = retryPickerCount + 1;
    self->_wifiNumRetries = 0;
    lastSSIDUsed2 = [(HDSSetupSession *)self lastSSIDUsed];
    promptForWiFiFailedHandler = self->_promptForWiFiFailedHandler;
    if (promptForWiFiFailedHandler)
    {
      promptForWiFiFailedHandler[2](promptForWiFiFailedHandler, lastSSIDUsed2, self->_homePodScanResults != 0);
    }
  }

  v36 = self->_wifiSetupState;

  return v36;
}

void __32__HDSSetupSession__runWiFiSetup__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  *(v6 + 760) = 1;
  v7 = *(*v5 + 85);
  if (v7)
  {
    if (!v4)
    {
      [v7 metricTotalSeconds];
      *(*v5 + 91) = v22;
      [*(*v5 + 85) metricWiFiSetupSeconds];
      *(*v5 + 92) = v23;
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __32__HDSSetupSession__runWiFiSetup__block_invoke_cold_4();
      }

      if (!*(*v5 + 180))
      {
        v24 = [objc_opt_class() signpostLog];
        v25 = [*v5 signpostID];
        if ((v25 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = v25;
          if (os_signpost_enabled(v24))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v26, "WiFiSetup", "", buf, 2u);
          }
        }
      }

      v27 = [objc_opt_class() signpostLog];
      v28 = [*v5 signpostID];
      if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v29 = v28;
        if (os_signpost_enabled(v27))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v27, OS_SIGNPOST_INTERVAL_END, v29, "WiFiSetup", "", buf, 2u);
        }
      }

      *(*v5 + 180) = 4;
      v30 = *v5;
      v31 = [*(*v5 + 85) wiFiRetryMetrics];
      [v30 _logWiFiRetryMetrics:v31];

      v32 = [*v5 fetchPhonesSSID];
      v20 = v32;
      if (v32 && *(*v5 + 188))
      {
        v33 = [v32 isEqualToString:?];
      }

      else
      {
        v33 = 0;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __32__HDSSetupSession__runWiFiSetup__block_invoke_cold_5();
      }

      v39 = *(*v5 + 189);
      if (v39)
      {
        v40 = (v39 == 2) & v33;
      }

      else
      {
        v40 = 1;
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __32__HDSSetupSession__runWiFiSetup__block_invoke_cold_6();
      }

      v41 = *v5;
      v42 = *(*v5 + 273);
      if (v42)
      {
        v43 = [v41 lastSSIDUsed];
        (*(v42 + 16))(v42, v40, v43);

        v41 = *v5;
      }

      [v41 _run];
      goto LABEL_76;
    }

    objc_storeStrong(*v5 + 96, a2);
    ++*(*v5 + 87);
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __32__HDSSetupSession__runWiFiSetup__block_invoke_cold_1();
    }

    v8 = [v4 code];
    v9 = *v5;
    if (v8 == -71159)
    {
      if (!v9[180])
      {
        v10 = [objc_opt_class() signpostLog];
        v11 = [*v5 signpostID];
        if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v12 = v11;
          if (os_signpost_enabled(v10))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "WiFiSetup", "", buf, 2u);
          }
        }
      }

      v13 = [objc_opt_class() signpostLog];
      v14 = [*v5 signpostID];
      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = v14;
        if (os_signpost_enabled(v13))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v13, OS_SIGNPOST_INTERVAL_END, v15, "WiFiSetup", "", buf, 2u);
        }
      }

      *(*v5 + 180) = 3;
      v16 = *v5;
      v17 = [*(*v5 + 85) wiFiRetryMetrics];
      [v16 _logWiFiRetryMetrics:v17];

      v18 = _os_feature_enabled_impl();
      v19 = *v5;
      if (v18 && (*(v19 + 1730) & 1) == 0 && v19[396] <= 3)
      {
        v19[180] = 0;
        ++*(*v5 + 396);
        *(*v5 + 87) = 0;
        v20 = [*v5 lastSSIDUsed];
        v21 = *(*v5 + 275);
        if (v21)
        {
          (*(v21 + 16))(v21, v20, *(*v5 + 196) != 0);
        }

LABEL_76:

        goto LABEL_77;
      }

      [v19 _reportError:v4 label:@"WiFiSetupMaxRetries-TimeOut"];
    }

    else
    {
      if (*(v9 + 87) >= *(v9 + 86))
      {
        v44 = _os_feature_enabled_impl();
        v45 = *v5;
        if ((v44 & 1) == 0 && *(v45 + 1528) == 1 && *(v45 + 87) == *(v45 + 86) && (*(v45 + 1564) & 1) == 0)
        {
          v61 = *(v45 + 225);
          v62[0] = MEMORY[0x277D85DD0];
          v62[1] = 3221225472;
          v62[2] = __32__HDSSetupSession__runWiFiSetup__block_invoke_3;
          v62[3] = &unk_279713FF0;
          v62[4] = v45;
          dispatch_async(v61, v62);
          goto LABEL_77;
        }

        if (!*(v45 + 180))
        {
          v46 = [objc_opt_class() signpostLog];
          v47 = [*v5 signpostID];
          if ((v47 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v48 = v47;
            if (os_signpost_enabled(v46))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, v46, OS_SIGNPOST_INTERVAL_BEGIN, v48, "WiFiSetup", "", buf, 2u);
            }
          }
        }

        v49 = [objc_opt_class() signpostLog];
        v50 = [*v5 signpostID];
        if ((v50 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v51 = v50;
          if (os_signpost_enabled(v49))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v49, OS_SIGNPOST_INTERVAL_END, v51, "WiFiSetup", "", buf, 2u);
          }
        }

        *(*v5 + 180) = 3;
        if ([v4 code] != -71157)
        {
          [v4 code];
        }

        v20 = NSErrorNestedF();
        v52 = *v5;
        v53 = [*(*v5 + 85) wiFiRetryMetrics];
        [v52 _logWiFiRetryMetrics:v53];

        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          __32__HDSSetupSession__runWiFiSetup__block_invoke_cold_2();
        }

        v54 = [*v5 lastSSIDUsed];
        v55 = _os_feature_enabled_impl();
        v56 = *v5;
        if (v55 && (*(v56 + 1730) & 1) == 0 && v56[396] <= 3 && v54)
        {
          v56[180] = 0;
          ++*(*v5 + 396);
          *(*v5 + 87) = 0;
          v57 = *v5;
          v58 = *(*v5 + 275);
          if (v58)
          {
            v59 = v57[196];
            if (v59)
            {
              v60 = [v59 count] != 0;
            }

            else
            {
              v60 = 0;
            }

            (*(v58 + 16))(v58, v54, v60);
          }
        }

        else
        {
          [v56 _reportError:v20 label:@"WiFiSetupMaxRetries"];
        }

        goto LABEL_76;
      }

      v9[180] = 0;
      v34 = *v5;
      if (*(*v5 + 1420) == 1)
      {
        v35 = [v34[85] wiFiRetryMetrics];
        [v34 _logWiFiRetryMetrics:v35];
      }

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __32__HDSSetupSession__runWiFiSetup__block_invoke_cold_3();
      }

      v36 = dispatch_time(0, 1000000000 * *(*v5 + 88));
      v37 = *v5;
      v38 = *(*v5 + 225);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__HDSSetupSession__runWiFiSetup__block_invoke_2;
      block[3] = &unk_279713FF0;
      block[4] = v37;
      dispatch_after(v36, v38, block);
    }
  }

LABEL_77:
}

uint64_t __32__HDSSetupSession__runWiFiSetup__block_invoke_3(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __32__HDSSetupSession__runWiFiSetup__block_invoke_3_cold_1();
  }

  *(*(a1 + 32) + 1564) = 1;
  *(*(a1 + 32) + 696) = 0;
  *(*(a1 + 32) + 720) = 0;
  v2 = *(a1 + 32);

  return [v2 _run];
}

void __32__HDSSetupSession__runWiFiSetup__block_invoke_2_1666(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v6 = a3;
  v7 = a4;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __32__HDSSetupSession__runWiFiSetup__block_invoke_2_1666_cold_1();
  }
}

- (int)_runBonjourTest
{
  bonjourTestState = self->_bonjourTestState;
  if (bonjourTestState != 4)
  {
    if (bonjourTestState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_7;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runBonjourTest];
      }

      if (!self->_bonjourTestState)
      {
LABEL_7:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v6 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            LOWORD(buf[0]) = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "BonjourTest", "", buf, 2u);
          }
        }
      }

      self->_bonjourTestState = 1;
      objc_initWeak(buf, self);
      [(HDSBonjourTest *)self->_bonjourTestOperation invalidate];
      v7 = objc_alloc_init(HDSBonjourTest);
      bonjourTestOperation = self->_bonjourTestOperation;
      self->_bonjourTestOperation = v7;

      [(HDSBonjourTest *)self->_bonjourTestOperation setDispatchQueue:self->_dispatchQueue];
      [(HDSBonjourTest *)self->_bonjourTestOperation setSfSession:self->_sfSession];
      [(HDSBonjourTest *)self->_bonjourTestOperation setTimeout:16.0];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __34__HDSSetupSession__runBonjourTest__block_invoke;
      v10[3] = &unk_279715298;
      objc_copyWeak(&v11, buf);
      v10[4] = self;
      [(HDSBonjourTest *)self->_bonjourTestOperation setCompletionHandler:v10];
      [(HDSBonjourTest *)self->_bonjourTestOperation activate];
      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
    }
  }

  return self->_bonjourTestState;
}

void __34__HDSSetupSession__runBonjourTest__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4 = *(v3 + 712);
    if (v4)
    {
      if ((*(v3 + 24) & 1) == 0)
      {
        [v4 metricTotalSeconds];
        *(*(a1 + 32) + 744) = v5;
        v6 = *(a1 + 32);
        if (!*(v6 + 1748))
        {
          v7 = [*(v6 + 712) bonjourTestState];
          v6 = *(a1 + 32);
          if (v7)
          {
            v8 = [objc_opt_class() signpostLog];
            v9 = [*(a1 + 32) signpostID];
            if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v10 = v9;
              if (os_signpost_enabled(v8))
              {
                *buf = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "BonjourTest", "", buf, 2u);
              }
            }

            v6 = *(a1 + 32);
          }
        }

        if ([*(v6 + 712) bonjourTestState] == 2 || objc_msgSend(*(*(a1 + 32) + 712), "bonjourTestState") == 3 || objc_msgSend(*(*(a1 + 32) + 712), "bonjourTestState") == 4 || objc_msgSend(*(*(a1 + 32) + 712), "bonjourTestState") == 5 || objc_msgSend(*(*(a1 + 32) + 712), "bonjourTestState") == 6 || objc_msgSend(*(*(a1 + 32) + 712), "bonjourTestState") == 7)
        {
          v11 = [objc_opt_class() signpostLog];
          v12 = [*(a1 + 32) signpostID];
          if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v13 = v12;
            if (os_signpost_enabled(v11))
            {
              *v22 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_END, v13, "BonjourTest", "", v22, 2u);
            }
          }
        }

        *(*(a1 + 32) + 1748) = [*(*(a1 + 32) + 712) bonjourTestState];
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          __34__HDSSetupSession__runBonjourTest__block_invoke_cold_1();
        }

        if (+[HDSDefaults forceFailBonjour])
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            __34__HDSSetupSession__runBonjourTest__block_invoke_cold_2();
          }

          if (!*(*(a1 + 32) + 1748))
          {
            v14 = [objc_opt_class() signpostLog];
            v15 = [*(a1 + 32) signpostID];
            if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v16 = v15;
              if (os_signpost_enabled(v14))
              {
                *v21 = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v16, "BonjourTest", "", v21, 2u);
              }
            }
          }

          v17 = [objc_opt_class() signpostLog];
          v18 = [*(a1 + 32) signpostID];
          if ((v18 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v19 = v18;
            if (os_signpost_enabled(v17))
            {
              *v20 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, v17, OS_SIGNPOST_INTERVAL_END, v19, "BonjourTest", "", v20, 2u);
            }
          }

          *(*(a1 + 32) + 1748) = 3;
        }
      }
    }
  }
}

- (void)captiveConfirmed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSSetupSession_captiveConfirmed__block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__HDSSetupSession_captiveConfirmed__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1888);
  if (v2)
  {
    (*(v2 + 16))(v2, 200, 0);
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __35__HDSSetupSession_captiveConfirmed__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 800) = 1;
  v3 = *(*(a1 + 32) + 776);

  return [v3 showWebSheet];
}

- (int)_runCaptiveJoin
{
  captiveJoinState = self->_captiveJoinState;
  if (captiveJoinState != 4 && captiveJoinState != 2)
  {
    if (captiveJoinState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else if (self->_peerSupportsCaptiveNetworks)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runCaptiveJoin];
      }

      if (!self->_captiveJoinState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v8 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Reachability", "", buf, 2u);
          }
        }
      }

      self->_captiveJoinState = 1;
      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"CaptiveJoin";

      [(SFDeviceOperationCNJSetup *)self->_captiveJoin invalidate];
      v10 = objc_alloc_init(MEMORY[0x277D54C78]);
      captiveJoin = self->_captiveJoin;
      self->_captiveJoin = v10;

      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setSfSession:self->_sfSession];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setIsSetup:1];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setPresentingViewController:self->_presentingViewController];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setPromptForConfirmationHandler:self->_promptForCaptiveNetworkHandler];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __34__HDSSetupSession__runCaptiveJoin__block_invoke;
      v18[3] = &unk_279714198;
      v18[4] = self;
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin setCompletionHandler:v18];
      [(SFDeviceOperationCNJSetup *)self->_captiveJoin activate];
    }

    else
    {
      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v14 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v14, "Reachability", "", buf, 2u);
        }
      }

      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v17, "Reachability", "", buf, 2u);
        }
      }

      self->_captiveJoinState = 2;
    }
  }

  return self->_captiveJoinState;
}

void __34__HDSSetupSession__runCaptiveJoin__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1800);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__HDSSetupSession__runCaptiveJoin__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

void __34__HDSSetupSession__runCaptiveJoin__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = (a1 + 40);
  v3 = *(a1 + 40);
  if (v2)
  {
    *(*v4 + 752) = [*(v3 + 776) homePodHasCaptiveNetwork];
    v5 = *v4;
    if (*(*v4 + 752) == 1)
    {
      if (!*(v5 + 196))
      {
        v6 = [objc_opt_class() signpostLog];
        v7 = [*v4 signpostID];
        if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v8 = v7;
          if (os_signpost_enabled(v6))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Reachability", "", buf, 2u);
          }
        }
      }

      v9 = [objc_opt_class() signpostLog];
      v10 = [*v4 signpostID];
      if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v11 = v10;
        if (os_signpost_enabled(v9))
        {
          *v33 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_END, v11, "Reachability", "", v33, 2u);
        }
      }

      *(*v4 + 196) = 3;
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __34__HDSSetupSession__runCaptiveJoin__block_invoke_2_cold_2();
      }

      v12 = NSErrorNestedF();
      [*v4 _reportError:v12 label:@"CaptiveNetwork"];
    }

    else
    {
      v12 = [*(v5 + 97) reachabilityError];
      if (!*(*v4 + 196))
      {
        v22 = [objc_opt_class() signpostLog];
        v23 = [*v4 signpostID];
        if ((v23 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v24 = v23;
          if (os_signpost_enabled(v22))
          {
            *v32 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v24, "Reachability", "", v32, 2u);
          }
        }
      }

      v25 = [objc_opt_class() signpostLog];
      v26 = [*v4 signpostID];
      if ((v26 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v27 = v26;
        if (os_signpost_enabled(v25))
        {
          *v31 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v25, OS_SIGNPOST_INTERVAL_END, v27, "Reachability", "", v31, 2u);
        }
      }

      *(*v4 + 196) = 3;
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __34__HDSSetupSession__runCaptiveJoin__block_invoke_2_cold_1();
      }

      v28 = NSErrorNestedF();
      [*v4 _reportError:v28 label:@"Reachability"];
    }
  }

  else
  {
    if (!*(v3 + 784))
    {
      v13 = [objc_opt_class() signpostLog];
      v14 = [*v4 signpostID];
      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = v14;
        if (os_signpost_enabled(v13))
        {
          *v30 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v15, "Reachability", "", v30, 2u);
        }
      }
    }

    v16 = [objc_opt_class() signpostLog];
    v17 = [*v4 signpostID];
    if ((v17 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v18 = v17;
      if (os_signpost_enabled(v16))
      {
        *v29 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v16, OS_SIGNPOST_INTERVAL_END, v18, "Reachability", "", v29, 2u);
      }
    }

    *(*v4 + 196) = 4;
    [*(*v4 + 97) metricTotalSeconds];
    *(*v4 + 99) = v19;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __34__HDSSetupSession__runCaptiveJoin__block_invoke_2_cold_3();
    }

    v20 = *v4;
    v21 = *(*v4 + 236);
    if (v21)
    {
      (*(v21 + 16))(*(*v4 + 236), 200, 0);
      v20 = *v4;
    }

    [v20 _run];
  }
}

- (int)_runTRSetupConfiguration
{
  trSetupConfigurationState = self->_trSetupConfigurationState;
  if (trSetupConfigurationState != 4 && trSetupConfigurationState != 2)
  {
    if (trSetupConfigurationState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_10;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runTRSetupConfiguration];
      }

      if (!self->_trSetupConfigurationState)
      {
LABEL_10:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TRSetupConfiguration", "", buf, 2u);
          }
        }
      }

      self->_trSetupConfigurationState = 1;
      self->_trSetupConfigurationStartTicks = mach_absolute_time();
      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"TRSetupConfiguration";

      v9 = [objc_alloc(getTRSetupConfigurationOperationClass()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v9];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__HDSSetupSession__runTRSetupConfiguration__block_invoke;
      v12[3] = &unk_2797142D0;
      v12[4] = self;
      v13 = v9;
      v10 = v9;
      [v10 setCompletionBlock:v12];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v10];
    }
  }

  return self->_trSetupConfigurationState;
}

void __43__HDSSetupSession__runTRSetupConfiguration__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 1800);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__HDSSetupSession__runTRSetupConfiguration__block_invoke_2;
  v4[3] = &unk_2797142D0;
  v4[4] = v2;
  v5 = v1;
  dispatch_async(v3, v4);
}

void __43__HDSSetupSession__runTRSetupConfiguration__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 808))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 848) = v3;
    v4 = [*(a1 + 40) result];
    v5 = v4;
    if (v4)
    {
      getTRSetupConfigurationOperationNeedsNetworkKey(v4);
      Int64 = CFDictionaryGetInt64();
      *(*v1 + 856) = Int64 != 0;
      getTRSetupConfigurationOperationUnauthenticatedServicesKey(Int64);
      CFSetGetTypeID();
      v7 = CFDictionaryGetTypedValue();
      v8 = *(*v1 + 108);
      *(*v1 + 108) = v7;

      if (gLogCategory_HDSSetupSession <= 30)
      {
        if (gLogCategory_HDSSetupSession != -1 || (v9 = _LogCategory_Initialize(), v9))
        {
          __43__HDSSetupSession__runTRSetupConfiguration__block_invoke_2_cold_1(v1);
        }
      }

      if (*(*v1 + 122) == 4)
      {
        v10 = [*(*v1 + 108) mutableCopy];
        [v10 removeObject:&unk_2864E81F8];
        v11 = *(*v1 + 108);
        *(*v1 + 108) = v10;
      }

      getTRSetupConfigurationOperationUseAIDAKey(v9);
      *(*v1 + 872) = CFDictionaryGetInt64() != 0;
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __43__HDSSetupSession__runTRSetupConfiguration__block_invoke_2_cold_2();
      }

      if (!*(*v1 + 208))
      {
        v12 = [objc_opt_class() signpostLog];
        v13 = [*v1 signpostID];
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v14 = v13;
          if (os_signpost_enabled(v12))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "TRSetupConfiguration", "", buf, 2u);
          }
        }
      }

      v15 = [objc_opt_class() signpostLog];
      v16 = [*v1 signpostID];
      if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = v16;
        if (os_signpost_enabled(v15))
        {
          *v28 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v15, OS_SIGNPOST_INTERVAL_END, v17, "TRSetupConfiguration", "", v28, 2u);
        }
      }

      *(*v1 + 208) = 4;
      [*v1 _run];
    }

    else
    {
      if (!*(*v1 + 208))
      {
        v18 = [objc_opt_class() signpostLog];
        v19 = [*v1 signpostID];
        if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v20 = v19;
          if (os_signpost_enabled(v18))
          {
            *v27 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v20, "TRSetupConfiguration", "", v27, 2u);
          }
        }
      }

      v21 = [objc_opt_class() signpostLog];
      v22 = [*v1 signpostID];
      if ((v22 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v23 = v22;
        if (os_signpost_enabled(v21))
        {
          *v26 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v21, OS_SIGNPOST_INTERVAL_END, v23, "TRSetupConfiguration", "", v26, 2u);
        }
      }

      *(*(a1 + 32) + 832) = 3;
      v24 = *(a1 + 32);
      v25 = [*(a1 + 40) error];
      [v24 _reportError:v25 label:@"TRSetupConfig"];
    }
  }
}

- (int)_runBackgroundActivation
{
  bgActivationState = self->_bgActivationState;
  if (bgActivationState != 4 && bgActivationState != 2)
  {
    if (bgActivationState)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 40)
      {
        goto LABEL_10;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runBackgroundActivation];
      }

      if (!self->_bgActivationState)
      {
LABEL_10:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v8 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v8, "DeviceActivation", "", buf, 2u);
          }
        }
      }

      self->_bgActivationState = 1;
      v9 = objc_alloc_init(HDSDeviceActivationOperation);
      [(HDSDeviceActivationOperation *)v9 setDispatchQueue:self->_dispatchQueue];
      [(HDSDeviceActivationOperation *)v9 setSfSession:self->_sfSession];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __43__HDSSetupSession__runBackgroundActivation__block_invoke;
      v12[3] = &unk_2797152E8;
      v12[4] = self;
      v13 = v9;
      v14 = a2;
      v10 = v9;
      [(HDSDeviceActivationOperation *)v10 setCompletionHandler:v12];
      [(HDSDeviceActivationOperation *)v10 activate];
    }
  }

  return self->_bgActivationState;
}

void __43__HDSSetupSession__runBackgroundActivation__block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = *(v7 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HDSSetupSession__runBackgroundActivation__block_invoke_2;
  block[3] = &unk_2797152C0;
  v13 = v5;
  v14 = v7;
  v16 = a3;
  v9 = v6;
  v10 = a1[6];
  v15 = v9;
  v17 = v10;
  v11 = v5;
  dispatch_async(v8, block);
}

uint64_t __43__HDSSetupSession__runBackgroundActivation__block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (gLogCategory_HDSSetupSession <= 40 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __43__HDSSetupSession__runBackgroundActivation__block_invoke_2_cold_1(a1);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 40) _logMetricsForSoftError:v3 label:@"BackgroundActivation"];
  }

  v4 = *(a1 + 56);
  if (v4 > 1)
  {
    if (v4 == 3)
    {
LABEL_21:
      if (!*(*(a1 + 40) + 932))
      {
        v12 = [objc_opt_class() signpostLog];
        v13 = [*(a1 + 40) signpostID];
        if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v14 = v13;
          if (os_signpost_enabled(v12))
          {
            *v23 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "DeviceActivation", "", v23, 2u);
          }
        }
      }

      v15 = [objc_opt_class() signpostLog];
      v16 = [*(a1 + 40) signpostID];
      if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v17 = v16;
        if (os_signpost_enabled(v15))
        {
          *v22 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v15, OS_SIGNPOST_INTERVAL_END, v17, "DeviceActivation", "", v22, 2u);
        }
      }

      v18 = *(a1 + 40);
      if (*(v18 + 1730))
      {
        v19 = 2;
      }

      else
      {
        v19 = 3;
      }

      *(v18 + 932) = v19;
      *(*(a1 + 40) + 928) = 0;
      return [*(a1 + 40) _run];
    }

    if (v4 != 2)
    {
LABEL_33:
      v20 = [MEMORY[0x277CCA890] currentHandler];
      [v20 handleFailureInMethod:*(a1 + 64) object:*(a1 + 40) file:@"HDSSetupSession.m" lineNumber:7961 description:@"Invalid result"];

      return [*(a1 + 40) _run];
    }
  }

  else if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  if (!*(*(a1 + 40) + 932))
  {
    v5 = [objc_opt_class() signpostLog];
    v6 = [*(a1 + 40) signpostID];
    if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "DeviceActivation", "", buf, 2u);
      }
    }
  }

  v8 = [objc_opt_class() signpostLog];
  v9 = [*(a1 + 40) signpostID];
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = v9;
    if (os_signpost_enabled(v8))
    {
      *v24 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_END, v10, "DeviceActivation", "", v24, 2u);
    }
  }

  *(*(a1 + 40) + 932) = 4;
  *(*(a1 + 40) + 928) = 4;
  [*(a1 + 48) metricTotalSeconds];
  *(*(a1 + 40) + 936) = v11;
  return [*(a1 + 40) _run];
}

- (int)_runTRActivation
{
  trActivationState = self->_trActivationState;
  if (trActivationState != 4 && trActivationState != 2)
  {
    if (trActivationState || self->_bgActivationState == 1)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runTRActivation];
      }

      if (!self->_trActivationState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TRDeviceActivation", "", buf, 2u);
          }
        }
      }

      self->_trActivationState = 1;
      v8 = mach_absolute_time();
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 210, 0);
      }

      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"TRActivation";

      v11 = [objc_alloc(getTRActivationOperationClass()) initWithSession:self->_trSession];
      [(NSMutableArray *)self->_trOperations addObject:v11];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __35__HDSSetupSession__runTRActivation__block_invoke;
      v14[3] = &unk_279714FF8;
      v15 = v11;
      v16 = v8;
      v14[4] = self;
      v12 = v11;
      [v12 setCompletionBlock:v14];
      [(TROperationQueue *)self->_trOperationQueue addOperation:v12];
    }
  }

  return self->_trActivationState;
}

void __35__HDSSetupSession__runTRActivation__block_invoke(void *a1)
{
  v1 = a1[4];
  v2 = *(v1 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HDSSetupSession__runTRActivation__block_invoke_2;
  block[3] = &unk_279714FF8;
  v4 = a1[5];
  v3 = a1[6];
  block[4] = v1;
  v7 = v3;
  v6 = v4;
  dispatch_async(v2, block);
}

void __35__HDSSetupSession__runTRActivation__block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 808))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*(a1 + 32) + 936) = v3;
    v4 = [*(a1 + 40) result];
    getTRActivationOperationIsActivatedKey(v4);
    if (CFDictionaryGetInt64())
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __35__HDSSetupSession__runTRActivation__block_invoke_2_cold_1();
      }

      if (!*(*v1 + 232))
      {
        v5 = [objc_opt_class() signpostLog];
        v6 = [*v1 signpostID];
        if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v7 = v6;
          if (os_signpost_enabled(v5))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "TRDeviceActivation", "", buf, 2u);
          }
        }
      }

      v8 = [objc_opt_class() signpostLog];
      v9 = [*v1 signpostID];
      if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v10 = v9;
        if (os_signpost_enabled(v8))
        {
          *v21 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_END, v10, "TRDeviceActivation", "", v21, 2u);
        }
      }

      *(*v1 + 232) = 4;
      [*v1 _run];
    }

    else
    {
      if (!*(*v1 + 232))
      {
        v11 = [objc_opt_class() signpostLog];
        v12 = [*v1 signpostID];
        if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v13 = v12;
          if (os_signpost_enabled(v11))
          {
            *v20 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v13, "TRDeviceActivation", "", v20, 2u);
          }
        }
      }

      v14 = [objc_opt_class() signpostLog];
      v15 = [*v1 signpostID];
      if ((v15 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v16 = v15;
        if (os_signpost_enabled(v14))
        {
          *v19 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v14, OS_SIGNPOST_INTERVAL_END, v16, "TRDeviceActivation", "", v19, 2u);
        }
      }

      *(*(a1 + 32) + 928) = 3;
      v17 = [*(a1 + 40) error];
      if (!v17)
      {
        getTRActivationOperationErrorKey(0);
        CFErrorGetTypeID();
        v17 = CFDictionaryGetTypedValue();
        if (!v17)
        {
          v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UserErrorDomain" code:301003 userInfo:0];
        }
      }

      v18 = v17;
      [*v1 _reportError:v17 label:@"TRActivation"];
    }
  }
}

- (int)_runTRiCloudAuthentication
{
  if (![(NSSet *)self->_trUnauthServices containsObject:&unk_2864E8210])
  {
    return 4;
  }

  v3 = [MEMORY[0x277CBEB98] setWithObject:&unk_2864E8210];
  v4 = [(HDSSetupSession *)self _runTRAuthentication:v3];

  return v4;
}

- (int)_runTROtherAuthentication
{
  if (!self->_trAuthenticationStateReset)
  {
    self->_trAuthenticationState = 0;
    self->_trAuthenticationStateReset = 1;
  }

  return [(HDSSetupSession *)self _runTRAuthentication:self->_trUnauthServices];
}

- (int)_runTRAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  v5 = [authenticationCopy containsObject:&unk_2864E81F8];
  trAuthenticationState = self->_trAuthenticationState;
  if (trAuthenticationState == 4 || trAuthenticationState == 2)
  {
LABEL_43:
    v10 = self->_trAuthenticationState;
    goto LABEL_44;
  }

  if (trAuthenticationState)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    goto LABEL_43;
  }

  v8 = v5;
  FPrintF(*MEMORY[0x277D85E08], "CmdHomeDeviceSetupNoUI _runTRAuthentication for services %##@\n", authenticationCopy);
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runTRAuthentication:];
  }

  if (v8)
  {
    v9 = @"TRAuthiTunes";
  }

  else
  {
    v9 = @"TRAuthiCloud";
  }

  objc_storeStrong(&self->_currentStageLabel, v9);
  if (!v8 || !self->_iTunesSignInSkip)
  {
    signpostLog = [objc_opt_class() signpostLog];
    signpostID = [(HDSSetupSession *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v13 = signpostID;
      if (os_signpost_enabled(signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v13, "Auth", "", buf, 2u);
      }
    }

    self->_trAuthenticationState = 1;
    v14 = mach_absolute_time();
    self->_trAuthenticationStartTicks = v14;
    if (self->_progressHandler)
    {
      v14 = [(NSSet *)self->_trUnauthServices containsObject:&unk_2864E8210];
      if (v14)
      {
        v14 = (*(self->_progressHandler + 2))();
      }
    }

    v15 = [objc_alloc(getTRAuthenticationOperationClass(v14)) initWithSession:self->_trSession];
    [(NSMutableArray *)self->_trOperations addObject:v15];
    [v15 setShouldIgnoreAuthFailures:0];
    [v15 setShouldUseAIDA:self->_trUseAIDA];
    [v15 setTargetedServices:authenticationCopy];
    [v15 setShouldSetupHomePod:1];
    if (!self->_didDoV3Terms && self->_canDoV2TermsAndConditions && self->_termsAndConditionsServersActive)
    {
      v16 = _os_feature_enabled_impl();
    }

    else
    {
      v16 = 0;
    }

    [v15 setCanDoTermsAndConditions:v16];
    [v15 setSessionID:self->_sessionID];
    [v15 setPresentingChildViewController:self->_presentingChildViewController];
    if (IsAppleInternalBuild())
    {
      if (self->_isCLIMode)
      {
        appleIDPassword = self->_appleIDPassword;
        if (appleIDPassword)
        {
          if ([(NSString *)appleIDPassword length])
          {
            if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
            {
              [HDSSetupSession _runTRAuthentication:];
            }

            [v15 setIsCLIMode:self->_isCLIMode];
            [v15 setRawPassword:self->_appleIDPassword];
          }
        }
      }
    }

    if (self->_presentingViewController)
    {
      [v15 setPresentingViewController:?];
    }

    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __40__HDSSetupSession__runTRAuthentication___block_invoke;
    v20[3] = &unk_279715310;
    v20[4] = self;
    v21 = v15;
    v22 = authenticationCopy;
    v23 = v8;
    v18 = v15;
    [v18 setCompletionBlock:v20];
    [(TROperationQueue *)self->_trOperationQueue addOperation:v18];

    goto LABEL_43;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runTRAuthentication:];
  }

  v10 = 2;
  self->_trAuthenticationState = 2;
LABEL_44:

  return v10;
}

void __40__HDSSetupSession__runTRAuthentication___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 1800);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __40__HDSSetupSession__runTRAuthentication___block_invoke_2;
  v5[3] = &unk_279715310;
  v5[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  dispatch_async(v4, v5);
}

void __40__HDSSetupSession__runTRAuthentication___block_invoke_2(uint64_t a1)
{
  v1 = (a1 + 32);
  if (*(*(a1 + 32) + 808))
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    *(*v1 + 120) = v3;
    *(*v1 + 121) = *(*v1 + 120) + *(*v1 + 121);
    v4 = [objc_opt_class() signpostLog];
    v5 = [*v1 signpostID];
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v4, OS_SIGNPOST_INTERVAL_END, v6, "Auth", "", buf, 2u);
      }
    }

    v7 = [*(a1 + 40) result];
    getTRAuthenticationOperationUnauthenticatedServicesKey(v7);
    CFSetGetTypeID();
    v8 = CFDictionaryGetTypedValue();
    v9 = [*(*(a1 + 32) + 864) mutableCopy];
    v10 = (a1 + 48);
    [v9 minusSet:*(a1 + 48)];
    [v9 unionSet:v8];
    objc_storeStrong((*(a1 + 32) + 864), v9);
    v11 = [*(a1 + 40) error];
    if (!v11)
    {
      getTRAuthenticationOperationErrorKey(0);
      CFErrorGetTypeID();
      v11 = CFDictionaryGetTypedValue();
      if (!v11)
      {
        v11 = NSErrorWithOSStatusF(301014, "TRAuth Failed");
      }
    }

    v12 = v11;
    v13 = [v11 domain];
    v14 = getTROperationErrorDomain(v13);
    if ([v13 isEqualToString:v14])
    {
      v15 = [v12 code];

      if (v15 == -12002)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          __40__HDSSetupSession__runTRAuthentication___block_invoke_2_cold_6();
        }

        v16 = *(*v1 + 262);
        if (v16)
        {
          (*(v16 + 16))();
        }

        else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          __40__HDSSetupSession__runTRAuthentication___block_invoke_2_cold_7();
        }

        goto LABEL_62;
      }
    }

    else
    {
    }

    if (_os_feature_enabled_impl() && *(a1 + 56) == 1)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __40__HDSSetupSession__runTRAuthentication___block_invoke_2_cold_1();
      }

      [*(a1 + 32) _logiTunesAuthRetryMetrics:v12 durationSeconds:objc_msgSend(*(a1 + 40) authType:"authType") retryAttempt:{*(*(a1 + 32) + 1424), *(*(a1 + 32) + 960)}];
    }

    if (!v7 || [v8 count])
    {
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        v23 = v8;
        v24 = v7;
        LogPrintF();
      }

      if (_os_feature_enabled_impl())
      {
        v19 = *v1;
        if ((*(a1 + 56) & 1) == 0)
        {
          goto LABEL_49;
        }

        v20 = v19[356];
        if (v20 <= 0)
        {
          v19[356] = v20 + 1;
          if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            __40__HDSSetupSession__runTRAuthentication___block_invoke_2_cold_5();
          }

          *(*v1 + 236) = 0;
          v21 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_2864E7CB8];
          v22 = *(*v1 + 108);
          *(*v1 + 108) = v21;

          goto LABEL_61;
        }
      }

      else
      {
        v19 = *v1;
        if ((*(a1 + 56) & 1) == 0)
        {
          goto LABEL_49;
        }
      }

      if (!*(v19 + 82) && v8)
      {
        if (![v8 containsObject:&unk_2864E8210])
        {
          if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            __40__HDSSetupSession__runTRAuthentication___block_invoke_2_cold_4();
          }

          *(*v1 + 236) = 2;
          goto LABEL_61;
        }

        v19 = *v1;
      }

LABEL_49:
      v19[236] = 3;
      [*v1 _reportError:v12 label:{@"TRAuth", v23, v24}];
LABEL_62:

      return;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __40__HDSSetupSession__runTRAuthentication___block_invoke_2_cold_2();
    }

    *(*v1 + 236) = 4;
    v17 = [*v10 anyObject];

    if (!v17)
    {
      goto LABEL_61;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __40__HDSSetupSession__runTRAuthentication___block_invoke_2_cold_3();
    }

    if ([*v10 containsObject:&unk_2864E81F8])
    {
      v18 = 888;
    }

    else
    {
      if (![*v10 containsObject:&unk_2864E8210])
      {
LABEL_61:
        [*v1 _run];
        goto LABEL_62;
      }

      v18 = 880;
    }

    *(*v1 + v18) = *(*v1 + 120);
    goto LABEL_61;
  }
}

- (int)_runCDPSetup:(BOOL)setup
{
  result = self->_cdpState;
  if (result != 4)
  {
    if (result)
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_24;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_7;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runCDPSetup:];
      }

      if (!self->_cdpState)
      {
LABEL_7:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v8 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v8, "CDPSetup", "", buf, 2u);
          }
        }
      }

      self->_cdpState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 236, 0);
      }

      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"CDPSetup";

      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation invalidate];
      v11 = objc_alloc_init(MEMORY[0x277D54C70]);
      cdpSetupOperation = self->_cdpSetupOperation;
      self->_cdpSetupOperation = v11;

      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setDispatchQueue:self->_dispatchQueue];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setSfSession:self->_sfSession];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setSkipSetupRequest:self->_trUseAIDA];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setSkipEscrowFetches:1];
      if (self->_presentingViewController)
      {
        [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setPresentingViewController:?];
      }

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __32__HDSSetupSession__runCDPSetup___block_invoke;
      v13[3] = &unk_279714198;
      v13[4] = self;
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation setCompletionHandler:v13];
      [(SFDeviceOperationCDPSetup *)self->_cdpSetupOperation activate];
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runCDPSetup:];
      }
    }

    result = self->_cdpState;
  }

LABEL_24:
  if (!setup)
  {
    if (result != 4 && gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    return 4;
  }

  return result;
}

void __32__HDSSetupSession__runCDPSetup___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(a1 + 32);
  v5 = (a1 + 32);
  v4 = v6;
  v7 = *(v6 + 984);
  if (v7)
  {
    if (v3)
    {
      if (!*(v4 + 1000))
      {
        v8 = [objc_opt_class() signpostLog];
        v9 = [*v5 signpostID];
        if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v10 = v9;
          if (os_signpost_enabled(v8))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "CDPSetup", "", buf, 2u);
          }
        }
      }

      v11 = [objc_opt_class() signpostLog];
      v12 = [*v5 signpostID];
      if ((v12 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v12;
        if (os_signpost_enabled(v11))
        {
          *v23 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v11, OS_SIGNPOST_INTERVAL_END, v13, "CDPSetup", "", v23, 2u);
        }
      }

      *(*v5 + 250) = 3;
      [*v5 _reportError:v3 label:@"CDPSetup"];
    }

    else
    {
      [v7 metricSeconds];
      *(*v5 + 124) = v14;
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __32__HDSSetupSession__runCDPSetup___block_invoke_cold_1();
      }

      if (!*(*v5 + 250))
      {
        v15 = [objc_opt_class() signpostLog];
        v16 = [*v5 signpostID];
        if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v17 = v16;
          if (os_signpost_enabled(v15))
          {
            *v22 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CDPSetup", "", v22, 2u);
          }
        }
      }

      v18 = [objc_opt_class() signpostLog];
      v19 = [*v5 signpostID];
      if ((v19 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v20 = v19;
        if (os_signpost_enabled(v18))
        {
          *v21 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v18, OS_SIGNPOST_INTERVAL_END, v20, "CDPSetup", "", v21, 2u);
        }
      }

      *(*v5 + 250) = 4;
      [*v5 _run];
    }
  }
}

- (int)_runHomeKitSetup
{
  v40 = *MEMORY[0x277D85DE8];
  homeKitSetupState = self->_homeKitSetupState;
  if (homeKitSetupState != 4)
  {
    if (!homeKitSetupState)
    {
      if (gLogCategory_HDSSetupSession > 30)
      {
        goto LABEL_7;
      }

      if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
      {
        [HDSSetupSession _runHomeKitSetup];
      }

      if (!self->_homeKitSetupState)
      {
LABEL_7:
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v6 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HomeKitSetup", "", buf, 2u);
          }
        }
      }

      self->_homeKitSetupState = 1;
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        progressHandler[2](progressHandler, 234, 0);
      }

      currentStageLabel = self->_currentStageLabel;
      self->_currentStageLabel = @"HomeKitSetup";

      if (!self->_homeKitSetupOperation)
      {
        if (!self->_homeKitSetupState)
        {
          signpostLog2 = [objc_opt_class() signpostLog];
          signpostID2 = [(HDSSetupSession *)self signpostID];
          if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v20 = signpostID2;
            if (os_signpost_enabled(signpostLog2))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v20, "HomeKitSetup", "", buf, 2u);
            }
          }
        }

        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v23 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v23, "HomeKitSetup", "", buf, 2u);
          }
        }

        self->_homeKitSetupState = 3;
        v9 = NSErrorWithOSStatusF(4294960534, "NoHomeKitOperation");
        [(HDSSetupSession *)self _reportError:v9 label:@"HomeKitSetup"];
        goto LABEL_67;
      }

      v9 = softLinkIDSCopyLocalDeviceUniqueID();
      if (!v9)
      {
        v13 = 0;
        goto LABEL_60;
      }

      personalRequestsChoice = self->_personalRequestsChoice;
      uniqueIdentifier = [(HMAccessory *)self->_stereoCounterpartAccessory uniqueIdentifier];
      v12 = uniqueIdentifier;
      v13 = personalRequestsChoice == 6;
      if (personalRequestsChoice == 6 || !uniqueIdentifier)
      {
LABEL_59:

LABEL_60:
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runHomeKitSetup];
        }

        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPersonalRequestsEnabled:v13];
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPauseHandler:0];
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setTrSession:self->_trSession];
        pairedPeer = [(SFSession *)self->_sfSession pairedPeer];
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setPairedPeer:pairedPeer];

        v33[0] = MEMORY[0x277D85DD0];
        v33[1] = 3221225472;
        v33[2] = __35__HDSSetupSession__runHomeKitSetup__block_invoke;
        v33[3] = &unk_279715098;
        v33[4] = self;
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation setCompletionHandler:v33];
        [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation resume];
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runHomeKitSetup];
        }

        self->_homeKitStartTicks = mach_absolute_time();
LABEL_67:

        return self->_homeKitSetupState;
      }

      selectedHome = [(HDSSetupSession *)self selectedHome];
      if (!selectedHome && gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomeKitSetup];
      }

      owner = [selectedHome owner];
      v16 = owner;
      if (owner)
      {
        if (selectedHome)
        {
          v17 = [owner assistantAccessControlForHome:selectedHome];
          if (v17)
          {
LABEL_47:
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            accessories = [v17 accessories];
            v13 = [accessories countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v13)
            {
              v31 = v16;
              v32 = selectedHome;
              v25 = *v35;
              while (2)
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v35 != v25)
                  {
                    objc_enumerationMutation(accessories);
                  }

                  uniqueIdentifier2 = [*(*(&v34 + 1) + 8 * i) uniqueIdentifier];
                  v28 = [uniqueIdentifier2 isEqual:v12];

                  if (v28)
                  {
                    self->_personalRequestsChoice = 6;
                    v13 = 1;
                    goto LABEL_57;
                  }
                }

                v13 = [accessories countByEnumeratingWithState:&v34 objects:v39 count:16];
                if (v13)
                {
                  continue;
                }

                break;
              }

LABEL_57:
              v16 = v31;
              selectedHome = v32;
            }

            goto LABEL_59;
          }
        }
      }

      else if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomeKitSetup];
      }

      if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomeKitSetup];
      }

      v17 = 0;
      goto LABEL_47;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  return self->_homeKitSetupState;
}

void __35__HDSSetupSession__runHomeKitSetup__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  v9 = *(v8 + 1008);
  if (v9)
  {
    if (v5)
    {
      if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __35__HDSSetupSession__runHomeKitSetup__block_invoke_cold_1();
      }

      if (!*(*v7 + 255))
      {
        v10 = [objc_opt_class() signpostLog];
        v11 = [*v7 signpostID];
        if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v12 = v11;
          if (os_signpost_enabled(v10))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v12, "HomeKitSetup", "", buf, 2u);
          }
        }
      }

      v13 = [objc_opt_class() signpostLog];
      v14 = [*v7 signpostID];
      if ((v14 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = v14;
        if (os_signpost_enabled(v13))
        {
          *v37 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v13, OS_SIGNPOST_INTERVAL_END, v15, "HomeKitSetup", "", v37, 2u);
        }
      }

      *(*v7 + 255) = 3;
      if (v6)
      {
        v16 = v6;
      }

      else
      {
        v16 = @"NoLabel";
      }

      [*v7 _reportError:v5 label:v16];
    }

    else
    {
      v17 = [v9 homeKitSelectedRoomName];
      v18 = *(*v7 + 129);
      *(*v7 + 129) = v17;

      [*(*v7 + 126) metricNonUserSeconds];
      *(*v7 + 128) = v19;
      [*(*v7 + 126) setupDeviceNonUserSeconds];
      *(*v7 + 130) = v20;
      [*(*v7 + 126) addDeviceNonUserSeconds];
      *(*v7 + 131) = v21;
      [*(*v7 + 126) assignRoomNonUserSeconds];
      *(*v7 + 132) = v22;
      [*(*v7 + 126) personalRequestsNonUserSeconds];
      *(*v7 + 133) = v23;
      [*(*v7 + 126) ulhNonUserSeconds];
      *(*v7 + 134) = v24;
      [*(*v7 + 126) odeonSeconds];
      *(*v7 + 135) = v25;
      [*(*v7 + 126) metricUserSeconds];
      *(*v7 + 136) = v26;
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __35__HDSSetupSession__runHomeKitSetup__block_invoke_cold_2();
      }

      if (!*(*v7 + 255))
      {
        v27 = [objc_opt_class() signpostLog];
        v28 = [*v7 signpostID];
        if ((v28 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v29 = v28;
          if (os_signpost_enabled(v27))
          {
            *v36 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v29, "HomeKitSetup", "", v36, 2u);
          }
        }
      }

      v30 = [objc_opt_class() signpostLog];
      v31 = [*v7 signpostID];
      if ((v31 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v32 = v31;
        if (os_signpost_enabled(v30))
        {
          *v35 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v30, OS_SIGNPOST_INTERVAL_END, v32, "HomeKitSetup", "", v35, 2u);
        }
      }

      *(*v7 + 255) = 4;
      mach_absolute_time();
      UpTicksToSecondsF();
      *(*v7 + 160) = v33;
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __35__HDSSetupSession__runHomeKitSetup__block_invoke_cold_3();
      }

      [*(*v7 + 126) stereoPairSeconds];
      *(*v7 + 137) = v34;
      [*v7 _run];
    }
  }
}

- (int)_runHomePodSoftwareUpdate
{
  result = self->_homepodSoftwareUpdateState;
  if (!result)
  {
    signpostLog = [objc_opt_class() signpostLog];
    signpostID = [(HDSSetupSession *)self signpostID];
    if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = signpostID;
      if (os_signpost_enabled(signpostLog))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HomePodSoftwareUpdate", "", buf, 2u);
      }
    }

    self->_homepodSoftwareUpdateState = 1;
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runHomePodSoftwareUpdate];
    }

    if (self->_forceSoftwareUpdateForADP || self->_homePodSUState && (self->_homePodProductVersion & 0xFFFFFFFE) == 2)
    {
      if (!self->_homepodSoftwareUpdateState)
      {
        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v9 = signpostID2;
          if (os_signpost_enabled(signpostLog2))
          {
            *v31 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HomePodSoftwareUpdate", "", v31, 2u);
          }
        }
      }

      signpostLog3 = [objc_opt_class() signpostLog];
      signpostID3 = [(HDSSetupSession *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = signpostID3;
        if (os_signpost_enabled(signpostLog3))
        {
          *v30 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v12, "HomePodSoftwareUpdate", "", v30, 2u);
        }
      }

      self->_homepodSoftwareUpdateState = 4;
      v13 = self->_forceSoftwareUpdateForADP || self->_homePodSUState != 3;
      homeKitAccessory = [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation homeKitAccessory];
      uniqueIdentifier = [homeKitAccessory uniqueIdentifier];

      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [(HDSSetupSession *)uniqueIdentifier _runHomePodSoftwareUpdate];
      }

      selectedHome = [(HDSSetupSession *)self selectedHome];
      softwareUpdateController = [selectedHome softwareUpdateController];
      softwareUpdateController = self->_softwareUpdateController;
      self->_softwareUpdateController = softwareUpdateController;

      v25 = self->_softwareUpdateController;
      homeKitAccessory2 = [(HDSDeviceOperationHomeKitSetup *)self->_homeKitSetupOperation homeKitAccessory];
      uniqueIdentifier2 = [homeKitAccessory2 uniqueIdentifier];
      [(HMAccessorySoftwareUpdateControllerV2 *)v25 scanForSoftwareUpdateRepeatedlyOnAccessory:uniqueIdentifier2 andInstallUpdate:v13];

      return self->_homepodSoftwareUpdateState;
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runHomePodSoftwareUpdate];
      }

      if (!self->_homepodSoftwareUpdateState)
      {
        signpostLog4 = [objc_opt_class() signpostLog];
        signpostID4 = [(HDSSetupSession *)self signpostID];
        if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = signpostID4;
          if (os_signpost_enabled(signpostLog4))
          {
            *v29 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_BEGIN, v16, "HomePodSoftwareUpdate", "", v29, 2u);
          }
        }
      }

      signpostLog5 = [objc_opt_class() signpostLog];
      signpostID5 = [(HDSSetupSession *)self signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v19 = signpostID5;
        if (os_signpost_enabled(signpostLog5))
        {
          *v28 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v19, "HomePodSoftwareUpdate", "", v28, 2u);
        }
      }

      result = 2;
      self->_homepodSoftwareUpdateState = 2;
    }
  }

  return result;
}

- (int)_runMultiUserEnable
{
  multiUserEnableState = self->_multiUserEnableState;
  do
  {
    v4 = multiUserEnableState;
    if (multiUserEnableState <= 11)
    {
      if (!multiUserEnableState)
      {
        if (gLogCategory_HDSSetupSession > 30)
        {
          goto LABEL_38;
        }

        if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
        {
          [HDSSetupSession _runMultiUserEnable];
        }

        if (!self->_multiUserEnableState)
        {
LABEL_38:
          signpostLog = [objc_opt_class() signpostLog];
          signpostID = [(HDSSetupSession *)self signpostID];
          if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v23 = signpostID;
            if (os_signpost_enabled(signpostLog))
            {
              *v40 = 0;
              _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v23, "MultiUserEnablement", "", v40, 2u);
            }
          }
        }

        v13 = 10;
        goto LABEL_62;
      }

      if (multiUserEnableState == 10)
      {
        self->_multiUserEnableState = 11;
        [(HDSSetupSession *)self _runMultiUserEnableHome];
        goto LABEL_63;
      }

      if (multiUserEnableState == 11 && self->_multiUserEnableStepState != 1)
      {
        signpostLog2 = [objc_opt_class() signpostLog];
        signpostID2 = [(HDSSetupSession *)self signpostID];
        if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v12 = signpostID2;
          if (os_signpost_enabled(signpostLog2))
          {
            *buf = 0;
            v8 = buf;
            v9 = signpostLog2;
            v10 = v12;
LABEL_16:
            _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_END, v10, "MultiUserEnablement", "", v8, 2u);
          }
        }

LABEL_17:

        if (self->_multiUserEnableStepState == 4)
        {
          v13 = self->_multiUserEnableState + 1;
        }

        else
        {
          v13 = 2;
        }

LABEL_62:
        self->_multiUserEnableState = v13;
      }
    }

    else
    {
      if (multiUserEnableState <= 13)
      {
        if (multiUserEnableState != 12)
        {
          if (self->_multiUserEnableStepState == 1)
          {
            goto LABEL_63;
          }

          signpostLog2 = [objc_opt_class() signpostLog];
          signpostID3 = [(HDSSetupSession *)self signpostID];
          if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
          {
            v7 = signpostID3;
            if (os_signpost_enabled(signpostLog2))
            {
              v36 = 0;
              v8 = &v36;
              v9 = signpostLog2;
              v10 = v7;
              goto LABEL_16;
            }
          }

          goto LABEL_17;
        }

        if (gLogCategory_HDSSetupSession > 30)
        {
          v24 = 12;
        }

        else
        {
          if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
          {
            [HDSSetupSession _runMultiUserEnable];
          }

          v24 = self->_multiUserEnableState;
          if (!v24)
          {
            signpostLog3 = [objc_opt_class() signpostLog];
            signpostID4 = [(HDSSetupSession *)self signpostID];
            if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v27 = signpostID4;
              if (os_signpost_enabled(signpostLog3))
              {
                *v38 = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v27, "MultiUserEnablement", "", v38, 2u);
              }
            }

            v24 = self->_multiUserEnableState;
          }

          if ((v24 - 1) <= 5)
          {
            signpostLog4 = [objc_opt_class() signpostLog];
            signpostID5 = [(HDSSetupSession *)self signpostID];
            if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v30 = signpostID5;
              if (os_signpost_enabled(signpostLog4))
              {
                *v37 = 0;
                _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v30, "MultiUserEnablement", "", v37, 2u);
              }
            }

            v24 = self->_multiUserEnableState;
          }
        }

        self->_multiUserEnableState = v24 + 1;
        selfCopy2 = self;
        v32 = @"root.siri.identifyVoice";
        v33 = 0;
LABEL_60:
        [(HDSSetupSession *)selfCopy2 _runMultiUserEnableEnableSettingStart:v32 privateSettings:v33];
        goto LABEL_63;
      }

      if (multiUserEnableState == 14)
      {
        self->_multiUserEnableState = 15;
        selfCopy2 = self;
        v32 = @"root.home.dismissedIdentifyVoiceOnboarding";
        v33 = 1;
        goto LABEL_60;
      }

      if (multiUserEnableState == 15 && self->_multiUserEnableStepState != 1)
      {
        signpostLog5 = [objc_opt_class() signpostLog];
        signpostID6 = [(HDSSetupSession *)self signpostID];
        if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v16 = signpostID6;
          if (os_signpost_enabled(signpostLog5))
          {
            *v35 = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_END, v16, "MultiUserEnablement", "", v35, 2u);
          }
        }

        multiUserEnableStepState = self->_multiUserEnableStepState;
        v18 = gLogCategory_HDSSetupSession;
        v19 = multiUserEnableStepState == 4;
        if (multiUserEnableStepState == 4)
        {
          v20 = 4;
        }

        else
        {
          v20 = 2;
        }

        self->_multiUserEnableState = v20;
        if (v19)
        {
          if (v18 <= 30 && (v18 != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runMultiUserEnable];
          }
        }

        else if (v18 <= 30 && (v18 != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runMultiUserEnable];
        }
      }
    }

LABEL_63:
    multiUserEnableState = self->_multiUserEnableState;
  }

  while (multiUserEnableState != v4);
  return v4;
}

- (void)_runMultiUserEnableHome
{
  selectedHome = [(HDSSetupSession *)self selectedHome];
  if (selectedHome)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runMultiUserEnableHome];
    }

    if (!self->_multiUserEnableStepState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "HomeKitEnableMultiUser", "", buf, 2u);
        }
      }
    }

    self->_multiUserEnableStepState = 1;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __42__HDSSetupSession__runMultiUserEnableHome__block_invoke;
    v13[3] = &unk_279714198;
    v13[4] = self;
    [selectedHome enableMultiUserWithCompletionHandler:v13];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runMultiUserEnableHome];
    }

    if (!self->_multiUserEnableStepState)
    {
      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v9 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_BEGIN, v9, "HomeKitEnableMultiUser", "", buf, 2u);
        }
      }
    }

    signpostLog3 = [objc_opt_class() signpostLog];
    signpostID3 = [(HDSSetupSession *)self signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostID3;
      if (os_signpost_enabled(signpostLog3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v12, "HomeKitEnableMultiUser", "", buf, 2u);
      }
    }

    self->_multiUserEnableStepState = 2;
  }
}

void __42__HDSSetupSession__runMultiUserEnableHome__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1800);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDSSetupSession__runMultiUserEnableHome__block_invoke_2;
  v7[3] = &unk_2797142D0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __42__HDSSetupSession__runMultiUserEnableHome__block_invoke_2(void *a1, uint64_t a2)
{
  if (a1[4])
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!*(a1[5] + 1144))
    {
      v3 = [objc_opt_class() signpostLog];
      v4 = [a1[5] signpostID];
      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        if (os_signpost_enabled(v3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "HomeKitEnableMultiUser", "", buf, 2u);
        }
      }
    }

    v6 = [objc_opt_class() signpostLog];
    v7 = [a1[5] signpostID];
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v6, OS_SIGNPOST_INTERVAL_END, v8, "HomeKitEnableMultiUser", "", v18, 2u);
      }
    }

    *(a1[5] + 1144) = 2;
    [a1[5] _logMetricsForSoftError:a1[4] label:@"MultiUser"];
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __42__HDSSetupSession__runMultiUserEnableHome__block_invoke_2_cold_1();
  }

  if (!*(a1[5] + 1144))
  {
    v9 = [objc_opt_class() signpostLog];
    v10 = [a1[5] signpostID];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *v17 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HomeKitEnableMultiUser", "", v17, 2u);
      }
    }
  }

  v12 = [objc_opt_class() signpostLog];
  v13 = [a1[5] signpostID];
  if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v12, OS_SIGNPOST_INTERVAL_END, v14, "HomeKitEnableMultiUser", "", v16, 2u);
    }
  }

  *(a1[5] + 1144) = 4;
  return [a1[5] _run];
}

- (void)_runMultiUserEnableEnableSettingStart:(id)start privateSettings:(BOOL)settings
{
  startCopy = start;
  selectedHome = [(HDSSetupSession *)self selectedHome];
  v8 = selectedHome;
  if (selectedHome)
  {
    owner = [selectedHome owner];
    v10 = [owner userSettingsForHome:v8];

    if (settings)
    {
      [v10 privateSettings];
    }

    else
    {
      [v10 settings];
    }
    v11 = ;
    v18 = v11;
    if (!v11)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runMultiUserEnableEnableSettingStart:privateSettings:];
      }

      if (!self->_multiUserEnableStepState)
      {
        signpostLog = [objc_opt_class() signpostLog];
        signpostID = [(HDSSetupSession *)self signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v28 = signpostID;
          if (os_signpost_enabled(signpostLog))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v28, "HomeKitEnableMultiUser", "", buf, 2u);
          }
        }
      }

      signpostLog2 = [objc_opt_class() signpostLog];
      signpostID2 = [(HDSSetupSession *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v31 = signpostID2;
        if (os_signpost_enabled(signpostLog2))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v31, "HomeKitEnableMultiUser", "", buf, 2u);
        }
      }

      self->_multiUserEnableStepState = 2;
      goto LABEL_90;
    }

    rootGroup = [v11 rootGroup];
    if (!rootGroup)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runMultiUserEnableEnableSettingStart:privateSettings:];
      }

      if (!self->_multiUserEnableStepState)
      {
        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v34 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v34, "HomeKitEnableMultiUser", "", buf, 2u);
          }
        }
      }

      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v37 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v37, "HomeKitEnableMultiUser", "", buf, 2u);
        }
      }

      self->_multiUserEnableStepState = 2;
      goto LABEL_89;
    }

    v20 = [(HDSSetupSession *)self _homeKitFindSettingsWithKeyPath:startCopy group:rootGroup];
    if (v20)
    {
      if (!self->_multiUserEnableStepState)
      {
        signpostLog5 = [objc_opt_class() signpostLog];
        signpostID5 = [(HDSSetupSession *)self signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v23 = signpostID5;
          if (os_signpost_enabled(signpostLog5))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v23, "HomeKitEnableMultiUser", "", buf, 2u);
          }
        }
      }

      self->_multiUserEnableStepState = 1;
      if ([startCopy isEqualToString:@"root.siri.identifyVoice"])
      {
        recognizeVoiceEnabled = self->_recognizeVoiceEnabled;
        if (recognizeVoiceEnabled)
        {
          if (gLogCategory_HDSSetupSession <= 30)
          {
            if (gLogCategory_HDSSetupSession != -1 || (v49 = _LogCategory_Initialize(), recognizeVoiceEnabled = self->_recognizeVoiceEnabled, v49))
            {
              if (recognizeVoiceEnabled == 6)
              {
                v25 = "yes";
              }

              else
              {
                v25 = "no";
              }

              v51 = startCopy;
              v52 = v25;
              LogPrintF();
              recognizeVoiceEnabled = self->_recognizeVoiceEnabled;
            }
          }

          v50 = [MEMORY[0x277CCABB0] numberWithInt:{recognizeVoiceEnabled == 6, v51, v52}];
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke;
          v55[3] = &unk_2797141C0;
          v55[4] = self;
          v56 = startCopy;
          [v20 updateValue:v50 completionHandler:v55];

          v48 = v56;
LABEL_87:

          goto LABEL_88;
        }
      }

      if ([startCopy isEqualToString:@"root.home.dismissedIdentifyVoiceOnboarding"] && !self->_hasExistingHomePod)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _runMultiUserEnableEnableSettingStart:privateSettings:];
        }

        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke_1813;
        v53[3] = &unk_2797141C0;
        v53[4] = self;
        v54 = startCopy;
        [v20 updateValue:MEMORY[0x277CBEC38] completionHandler:v53];
        v48 = v54;
        goto LABEL_87;
      }

      if (!self->_multiUserEnableStepState)
      {
        signpostLog6 = [objc_opt_class() signpostLog];
        signpostID6 = [(HDSSetupSession *)self signpostID];
        if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v40 = signpostID6;
          if (os_signpost_enabled(signpostLog6))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_BEGIN, v40, "HomeKitEnableMultiUser", "", buf, 2u);
          }
        }
      }

      signpostLog7 = [objc_opt_class() signpostLog];
      signpostID7 = [(HDSSetupSession *)self signpostID];
      if (signpostID7 - 1 > 0xFFFFFFFFFFFFFFFDLL || (v43 = signpostID7, !os_signpost_enabled(signpostLog7)))
      {
LABEL_79:

        self->_multiUserEnableStepState = 2;
LABEL_88:

LABEL_89:
LABEL_90:

        goto LABEL_91;
      }

      *buf = 0;
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runMultiUserEnableEnableSettingStart:privateSettings:];
      }

      if (!self->_multiUserEnableStepState)
      {
        signpostLog8 = [objc_opt_class() signpostLog];
        signpostID8 = [(HDSSetupSession *)self signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v46 = signpostID8;
          if (os_signpost_enabled(signpostLog8))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog8, OS_SIGNPOST_INTERVAL_BEGIN, v46, "HomeKitEnableMultiUser", "", buf, 2u);
          }
        }
      }

      signpostLog7 = [objc_opt_class() signpostLog];
      signpostID9 = [(HDSSetupSession *)self signpostID];
      if (signpostID9 - 1 > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_79;
      }

      v43 = signpostID9;
      if (!os_signpost_enabled(signpostLog7))
      {
        goto LABEL_79;
      }

      *buf = 0;
    }

    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog7, OS_SIGNPOST_INTERVAL_END, v43, "HomeKitEnableMultiUser", "", buf, 2u);
    goto LABEL_79;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runMultiUserEnableEnableSettingStart:privateSettings:];
  }

  if (!self->_multiUserEnableStepState)
  {
    signpostLog9 = [objc_opt_class() signpostLog];
    signpostID10 = [(HDSSetupSession *)self signpostID];
    if (signpostID10 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = signpostID10;
      if (os_signpost_enabled(signpostLog9))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog9, OS_SIGNPOST_INTERVAL_BEGIN, v14, "HomeKitEnableMultiUser", "", buf, 2u);
      }
    }
  }

  signpostLog10 = [objc_opt_class() signpostLog];
  signpostID11 = [(HDSSetupSession *)self signpostID];
  if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v17 = signpostID11;
    if (os_signpost_enabled(signpostLog10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog10, OS_SIGNPOST_INTERVAL_END, v17, "HomeKitEnableMultiUser", "", buf, 2u);
    }
  }

  self->_multiUserEnableStepState = 2;
LABEL_91:
}

void __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke_2;
  block[3] = &unk_279714320;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!*(*(a1 + 48) + 1144))
    {
      v3 = [objc_opt_class() signpostLog];
      v4 = [*(a1 + 48) signpostID];
      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        if (os_signpost_enabled(v3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "HomeKitEnableMultiUser", "", buf, 2u);
        }
      }
    }

    v6 = [objc_opt_class() signpostLog];
    v7 = [*(a1 + 48) signpostID];
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v6, OS_SIGNPOST_INTERVAL_END, v8, "HomeKitEnableMultiUser", "", v18, 2u);
      }
    }

    *(*(a1 + 48) + 1144) = 2;
    [*(a1 + 48) _logMetricsForSoftError:*(a1 + 32) label:@"MultiUser"];
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke_2_cold_1();
  }

  if (!*(*(a1 + 48) + 1144))
  {
    v9 = [objc_opt_class() signpostLog];
    v10 = [*(a1 + 48) signpostID];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *v17 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HomeKitEnableMultiUser", "", v17, 2u);
      }
    }
  }

  v12 = [objc_opt_class() signpostLog];
  v13 = [*(a1 + 48) signpostID];
  if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v12, OS_SIGNPOST_INTERVAL_END, v14, "HomeKitEnableMultiUser", "", v16, 2u);
    }
  }

  *(*(a1 + 48) + 1144) = 4;
  return [*(a1 + 48) _run];
}

void __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke_1813(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke_2_1814;
  block[3] = &unk_279714320;
  v9 = v3;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

uint64_t __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke_2_1814(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (!*(*(a1 + 48) + 1144))
    {
      v3 = [objc_opt_class() signpostLog];
      v4 = [*(a1 + 48) signpostID];
      if ((v4 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v5 = v4;
        if (os_signpost_enabled(v3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "HomeKitEnableMultiUser", "", buf, 2u);
        }
      }
    }

    v6 = [objc_opt_class() signpostLog];
    v7 = [*(a1 + 48) signpostID];
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        *v18 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v6, OS_SIGNPOST_INTERVAL_END, v8, "HomeKitEnableMultiUser", "", v18, 2u);
      }
    }

    *(*(a1 + 48) + 1144) = 2;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __73__HDSSetupSession__runMultiUserEnableEnableSettingStart_privateSettings___block_invoke_2_cold_1();
  }

  if (!*(*(a1 + 48) + 1144))
  {
    v9 = [objc_opt_class() signpostLog];
    v10 = [*(a1 + 48) signpostID];
    if ((v10 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = v10;
      if (os_signpost_enabled(v9))
      {
        *v17 = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "HomeKitEnableMultiUser", "", v17, 2u);
      }
    }
  }

  v12 = [objc_opt_class() signpostLog];
  v13 = [*(a1 + 48) signpostID];
  if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v14 = v13;
    if (os_signpost_enabled(v12))
    {
      *v16 = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, v12, OS_SIGNPOST_INTERVAL_END, v14, "HomeKitEnableMultiUser", "", v16, 2u);
    }
  }

  *(*(a1 + 48) + 1144) = 4;
  return [*(a1 + 48) _run];
}

- (int)_runFinishStart
{
  result = self->_finishState;
  if (!result)
  {
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_6;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runFinishStart];
    }

    if (!self->_finishState)
    {
LABEL_6:
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v6 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v6, "Finish", "", buf, 2u);
        }
      }
    }

    self->_finishState = 1;
    currentStageLabel = self->_currentStageLabel;
    self->_currentStageLabel = @"Finish";

    self->_finishStartTicks = mach_absolute_time();
    mach_absolute_time();
    UpTicksToSecondsF();
    self->_configureTimeSecs = configureTimeSecs;
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_14;
    }

    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      configureTimeSecs = self->_configureTimeSecs;
    }

    v9 = configureTimeSecs;
    LogPrintF();
LABEL_14:
    [(HDSSetupSession *)self _runFinishRequest];
    return self->_finishState;
  }

  return result;
}

- (void)_runFinishRequest
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:&unk_2864E8228 forKeyedSubscript:@"op"];
  selectedSiriLanguageCode = [(HDSSetupSession *)self selectedSiriLanguageCode];

  if (!selectedSiriLanguageCode && gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runFinishRequest];
  }

  if (self->_hasExistingHomePod && !self->_prefForceSiriGreeting && gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runFinishRequest];
  }

  if (IsAppleInternalBuild() && [(NSString *)self->_forcedPasscode length])
  {
    if (gLogCategory_HDSSetupSession > 30)
    {
      goto LABEL_18;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _runFinishRequest];
    }
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runFinishRequest];
  }

LABEL_18:
  if ((self->_stereoPairRole & 0xFFFFFFFE) != 2)
  {
LABEL_24:
    v5 = 1;
    goto LABEL_25;
  }

  if (!self->_prefStereoWait)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runFinishRequest];
    }

    goto LABEL_24;
  }

  v5 = 3;
LABEL_25:
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  [v3 setObject:v6 forKeyedSubscript:@"finF"];

  v7 = self->_homeKitSelectedRoomName;
  if (v7)
  {
    if ((self->_testFlags & 0x800000) == 0)
    {
      [v3 setObject:v7 forKeyedSubscript:@"fnm"];
      v8 = _CSCopyLocalHostnameForComputerName();
      if (v8)
      {
        v9 = v8;
        [v3 setObject:v8 forKeyedSubscript:@"hnm"];
        CFRelease(v9);
      }
    }
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _runFinishRequest];
  }

  sfSession = self->_sfSession;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__HDSSetupSession__runFinishRequest__block_invoke;
  v11[3] = &unk_279715200;
  v11[4] = self;
  [(SFSession *)sfSession sendRequestWithFlags:1 object:v3 responseHandler:v11];
}

void __36__HDSSetupSession__runFinishRequest__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    Int64Ranged = CFDictionaryGetInt64Ranged();
    if (Int64Ranged)
    {
      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA590];
      v11 = Int64Ranged;
      v16 = *MEMORY[0x277CCA450];
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v13 = v12;
      v14 = @"?";
      if (v12)
      {
        v14 = v12;
      }

      v17[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v6 = [v9 errorWithDomain:v10 code:v11 userInfo:v15];
    }

    else
    {
      v6 = 0;
    }
  }

  [*(a1 + 32) _runFinishResponse:v7 error:v6];
}

- (void)_runFinishResponse:(id)response error:(id)error
{
  v46 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"Done";

  if (+[HDSDefaults forceFailSetupLater])
  {
    v9 = NSErrorF();
    [(HDSSetupSession *)self _reportError:v9 label:@"ForcedError"];
LABEL_58:

    goto LABEL_59;
  }

  if (!errorCopy)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _runFinishResponse:error:];
    }

    if (!self->_finishState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v18, "Finish", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = signpostID2;
      if (os_signpost_enabled(signpostLog2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v21, "Finish", "", buf, 2u);
      }
    }

    self->_finishState = 4;
    if (self->_personalRequestsChoice == 6)
    {
      CFPrefs_SetValue();
      CFPreferencesAppSynchronize(@"com.apple.Sharing");
      notify_post("com.apple.Sharing.prefsChanged");
    }

    v22 = self->_deviceSerialNumber;
    if (v22)
    {
      if (gLogCategory_HDSSetupSession < 31 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _runFinishResponse:error:];
      }

      [(objc_class *)getAMSDeviceClass() registerCompanionWithSerialNumber:v22];
    }

    mach_absolute_time();
    UpTicksToSecondsF();
    self->_userWaitTimeSecs = userWaitTimeSecs;
    if (gLogCategory_HDSSetupSession >= 31)
    {
      goto LABEL_35;
    }

    if (gLogCategory_HDSSetupSession == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_35:
        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v26 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_END, v26, "UserWaitTime", "", buf, 2u);
          }
        }

        signpostLog4 = [objc_opt_class() signpostLog];
        signpostID4 = [(HDSSetupSession *)self signpostID];
        if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v29 = signpostID4;
          if (os_signpost_enabled(signpostLog4))
          {
            if (self->_userOptedToHH2)
            {
              v30 = "yes";
            }

            else
            {
              v30 = "no";
            }

            stereoPairRole = self->_stereoPairRole;
            if (stereoPairRole > 3)
            {
              v32 = "?";
            }

            else
            {
              v32 = off_2797155A8[stereoPairRole];
            }

            *buf = 136315394;
            v43 = v30;
            v44 = 2080;
            v45 = v32;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_EVENT, v29, "SetupComplete", "hh2=%s stereoRole=%s", buf, 0x16u);
          }
        }

        mach_absolute_time();
        UpTicksToSecondsF();
        self->_finishSecs = v33;
        CFDictionaryGetDouble();
        self->_iTunesWaitSecs = v34;
        CFDictionaryGetDouble();
        self->_mediaSystemWaitSecs = v35;
        mach_absolute_time();
        UpTicksToSecondsF();
        self->_totalSecs = v36;
        if (!self->_logMetricsCalled)
        {
          [(HDSSetupSession *)self _logErrorMetrics:0 inLabel:@"Finish"];
          [(HDSSetupSession *)self _logMetrics:0];
          [(HDSSetupSession *)self _logUsageMetrics:0];
          [(HDSSetupSession *)self _logPerformanceMetrics:0];
          [(HDSSetupSession *)self _logHomeKitPerformanceMetrics];
        }

        v37 = objc_alloc_init(MEMORY[0x277D54C30]);
        v40[0] = MEMORY[0x277D85DD0];
        v40[1] = 3221225472;
        v40[2] = __44__HDSSetupSession__runFinishResponse_error___block_invoke;
        v40[3] = &unk_2797141C0;
        v40[4] = self;
        v9 = v37;
        v41 = v9;
        [v9 reenableProxCardType:33 completion:v40];
        if (gLogCategory_HDSSetupSession <= 30)
        {
          if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
          {
            [HDSSetupSession _runFinishResponse:error:];
          }

          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _runFinishResponse:? error:?];
          }
        }

        progressHandler = self->_progressHandler;
        if (progressHandler)
        {
          progressHandler[2](progressHandler, 96, 0);
        }

        [(HDSSetupSession *)self _cleanupSession];

        goto LABEL_58;
      }

      userWaitTimeSecs = self->_userWaitTimeSecs;
    }

    v39 = userWaitTimeSecs;
    LogPrintF();
    goto LABEL_35;
  }

  if (!self->_finishState)
  {
    signpostLog5 = [objc_opt_class() signpostLog];
    signpostID5 = [(HDSSetupSession *)self signpostID];
    if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = signpostID5;
      if (os_signpost_enabled(signpostLog5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v12, "Finish", "", buf, 2u);
      }
    }
  }

  signpostLog6 = [objc_opt_class() signpostLog];
  signpostID6 = [(HDSSetupSession *)self signpostID];
  if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v15 = signpostID6;
    if (os_signpost_enabled(signpostLog6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_END, v15, "Finish", "", buf, 2u);
    }
  }

  self->_finishState = 3;
  [(HDSSetupSession *)self _reportError:errorCopy label:@"Finish"];
  [(HDSSetupSession *)self _cleanup];
LABEL_59:
}

void __44__HDSSetupSession__runFinishResponse_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _logMetricsForSoftError:? label:?];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __44__HDSSetupSession__runFinishResponse_error___block_invoke_cold_1();
  }

  [*(a1 + 40) invalidate];
}

- (void)_handlePeerEvent:(id)event flags:(unsigned int)flags
{
  v4 = *&flags;
  eventCopy = event;
  if (v4)
  {
    goto LABEL_44;
  }

  if (+[HDSDefaults sysDropBuildMode]&& [(SysDropSession *)self->_sysDropSession sysDropActivated])
  {
    [(SysDropSession *)self->_sysDropSession handlePeerEvent:eventCopy flags:v4];
    goto LABEL_53;
  }

  Int64Ranged = CFDictionaryGetInt64Ranged();
  v7 = CFDictionaryGetInt64Ranged();
  if (CFDictionaryGetInt64())
  {
    self->_homePodSoftwareUpdateUpdateInstalled = 1;
  }

  else if (!self->_homePodSoftwareUpdateUpdateInstalled)
  {
    goto LABEL_12;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _handlePeerEvent:flags:];
  }

  [(HDSSetupSession *)self _updateSFSessionErrorHandlerForSUBS];
LABEL_12:
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _handlePeerEvent:? flags:?];
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  if (Int64Ranged == 901)
  {
    if (self->_isCLIMode)
    {
      goto LABEL_44;
    }

    if (self->_homePodSoftwareUpdateUpdateInstalled)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _handlePeerEvent:flags:];
      }
    }

    else
    {
      if (self->_homePodSoftwareUpdateCancelled)
      {
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession _handlePeerEvent:flags:];
        }

        goto LABEL_44;
      }

      if (v7)
      {
        v11 = NSErrorWithOSStatusF(v7, "HomePod encountered Error during SU-No-Setup", 0);
        [(HDSSetupSession *)self _reportError:v11 label:@"SU-No-Setup error encountered, SU terminated"];

        goto LABEL_44;
      }
    }

    progressHandler = self->_progressHandler;
    if (!progressHandler)
    {
LABEL_44:
      v12 = CFDictionaryGetInt64Ranged();
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _handlePeerEvent:v12 flags:?];
      }

      if (v12 == 600)
      {
        v13 = self->_progressHandler;
        if (v13)
        {
          v13[2](v13, 96, 0);
        }
      }

      else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _handlePeerEvent:flags:];
      }

      goto LABEL_53;
    }

    v9 = progressHandler[2];
    v10 = 901;
LABEL_43:
    v9(progressHandler, v10);
    goto LABEL_44;
  }

  if (Int64Ranged == 905)
  {
    if (self->_isCLIMode)
    {
      goto LABEL_44;
    }

    progressHandler = self->_progressHandler;
    if (!progressHandler)
    {
      goto LABEL_44;
    }

    v9 = progressHandler[2];
    v10 = 905;
    goto LABEL_43;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _handlePeerEvent:flags:];
  }

LABEL_53:
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

      v20 = [(HDSSetupSession *)self _homeKitFindSettingsWithKeyPath:pathCopy group:*(*(&v23 + 1) + 8 * v19)];
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

- (void)_homeKitUpdateiCloudSwitchState:(BOOL)state
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke;
  v4[3] = &unk_2797142A8;
  stateCopy = state;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

void __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(getHMHomeManagerClass_1()) initWithOptions:0];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke_cold_1();
  }

  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke_2;
  v6[3] = &unk_279715338;
  v9 = v3;
  v4 = *(a1 + 32);
  v7 = v2;
  v8 = v4;
  v5 = v2;
  [v5 updateiCloudSwitchState:v3 completionHandler:v6];
}

void __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke_2_cold_1(a1);
    }

    [*(a1 + 40) _reportError:v3 label:@"Preflight-iCloud"];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = *(v4 + 1800);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke_3;
    v6[3] = &unk_2797142A8;
    v7 = *(a1 + 48);
    v6[4] = v4;
    dispatch_async(v5, v6);
  }
}

uint64_t __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke_3(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __51__HDSSetupSession__homeKitUpdateiCloudSwitchState___block_invoke_3_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 _run];
}

- (void)_logiTunesAuthRetryMetrics:(id)metrics durationSeconds:(double)seconds authType:(int)type retryAttempt:(int)attempt
{
  v38[12] = *MEMORY[0x277D85DE8];
  if (!self->_testFlags)
  {
    metricsCopy = metrics;
    code = [metricsCopy code];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code];
    domain = [metricsCopy domain];
    underlyingErrors = [metricsCopy underlyingErrors];

    firstObject = [underlyingErrors firstObject];

    code2 = [firstObject code];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code2];
    domain2 = [firstObject domain];
    sessionID = self->_sessionID;
    v37[0] = @"duration";
    v18 = MEMORY[0x277CCABB0];
    v31 = sessionID;
    v32 = [v18 numberWithUnsignedInt:(seconds * 1000.0)];
    v38[0] = v32;
    v37[1] = @"errorCode";
    v19 = [MEMORY[0x277CCABB0] numberWithInteger:code];
    v30 = v19;
    v35 = domain;
    v36 = v10;
    if (v10)
    {
      v20 = v10;
    }

    else
    {
      v20 = @"0";
    }

    v38[1] = v19;
    v38[2] = v20;
    v37[2] = @"errorCodeString";
    v37[3] = @"errorDomain";
    if (domain)
    {
      v21 = domain;
    }

    else
    {
      v21 = @"NoDomain";
    }

    v38[3] = v21;
    v37[4] = @"underlyingErrorCode";
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:code2];
    v23 = v22;
    if (v15)
    {
      v24 = v15;
    }

    else
    {
      v24 = @"0";
    }

    v38[4] = v22;
    v38[5] = v24;
    v37[5] = @"underlyingErrorCodeString";
    v37[6] = @"underlyingErrorDomain";
    if (domain2)
    {
      v25 = domain2;
    }

    else
    {
      v25 = @"NoDomain";
    }

    v38[6] = v25;
    v37[7] = @"failureType";
    v26 = [MEMORY[0x277CCABB0] numberWithInt:type];
    v38[7] = v26;
    v37[8] = @"retryAttempt";
    v27 = [MEMORY[0x277CCABB0] numberWithInt:attempt];
    v38[8] = v27;
    v38[9] = &unk_2864E8180;
    v37[9] = @"retryCount";
    v37[10] = @"success";
    v28 = [MEMORY[0x277CCABB0] numberWithInt:metricsCopy == 0];
    v37[11] = @"sessionID";
    v38[10] = v28;
    v38[11] = v31;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:12];

    HDSMetricsLog(@"com.apple.homedevicesetup.iTunesRetry", v29);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _logiTunesAuthRetryMetrics:durationSeconds:authType:retryAttempt:];
    }
  }
}

- (void)_logWiFiRetryMetrics:(id)metrics
{
  v67 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  if (metricsCopy && !self->_testFlags)
  {
    v39 = metricsCopy;
    selfCopy = self;
    if (self->_wifiSetupType)
    {
      lastSSIDUsed = [(HDSSetupSession *)self lastSSIDUsed];
      v6 = [(HDSSetupSession *)self dictForNetworkName:lastSSIDUsed];
      if (v6)
      {
        self->_wifiRSSI = CFDictionaryGetInt64Ranged();
        self->_wifiChannel = CFDictionaryGetInt64Ranged();
        CFStringGetTypeID();
        v7 = CFDictionaryGetTypedValue();
        v8 = v7;
        if (v7 && [v7 length] >= 4)
        {
          v9 = [v8 substringToIndex:3];
        }

        else
        {
          v9 = @"?";
        }

        wifiOUI = self->_wifiOUI;
        self->_wifiOUI = &v9->isa;
      }
    }

    lastSSIDUsed2 = [(HDSSetupSession *)self lastSSIDUsed];
    primaryResidentNetwork = self->_primaryResidentNetwork;
    if (primaryResidentNetwork && (-[HMHomeNetworkInfo wiFiInfo](primaryResidentNetwork, "wiFiInfo"), v13 = objc_claimAutoreleasedReturnValue(), [v13 SSID], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, v14))
    {
      wiFiInfo = [(HMHomeNetworkInfo *)self->_primaryResidentNetwork wiFiInfo];
      sSID = [wiFiInfo SSID];
      v17 = [sSID isEqualToString:lastSSIDUsed2];

      if (v17)
      {
        v18 = 3;
      }

      else if ([(NSArray *)self->_preferredHomeNetworkNames containsObject:lastSSIDUsed2])
      {
        v18 = 4;
      }

      else
      {
        v18 = 2;
      }

      self->_joinPrimaryNetworkCrossReference = v18;
    }

    else
    {
      self->_joinPrimaryNetworkCrossReference = 1;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _logWiFiRetryMetrics:];
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = v39;
    v44 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v44)
    {
      v41 = *v61;
      v42 = lastSSIDUsed2;
      do
      {
        v19 = 0;
        do
        {
          if (*v61 != v41)
          {
            objc_enumerationMutation(obj);
          }

          v58 = v19;
          CFDictionaryGetDouble();
          v21 = v20;
          Int64 = CFDictionaryGetInt64();
          CFStringGetTypeID();
          v23 = CFDictionaryGetTypedValue();
          CFStringGetTypeID();
          v56 = CFDictionaryGetTypedValue();
          v24 = CFDictionaryGetInt64();
          v25 = CFDictionaryGetInt64();
          v26 = v24 != 0;
          v59 = selfCopy->_sessionID;
          int64 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", Int64];
          v50 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v64[0] = @"cca";
          v54 = [MEMORY[0x277CCABB0] numberWithInteger:selfCopy->_wifiCCA];
          v65[0] = v54;
          v64[1] = @"channel";
          v28 = [MEMORY[0x277CCABB0] numberWithInteger:selfCopy->_wifiChannel];
          v53 = v28;
          v29 = selfCopy->_wifiOUI;
          if (!v29)
          {
            v29 = @"None";
          }

          v65[1] = v28;
          v65[2] = v29;
          v64[2] = @"oui";
          v64[3] = @"rssi";
          v52 = [MEMORY[0x277CCABB0] numberWithInteger:selfCopy->_wifiRSSI];
          v65[3] = v52;
          v64[4] = @"securityStr";
          v51 = [MEMORY[0x277CCABB0] numberWithInt:{-[HDSSetupSession wifiTypeForString:](selfCopy, "wifiTypeForString:", selfCopy->_wifiSecurityString)}];
          v65[4] = v51;
          v64[5] = @"retryRetryAttempt";
          v49 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_retryPickerCount];
          v65[5] = v49;
          v64[6] = @"duration";
          v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v21 * 1000.0)];
          v65[6] = v48;
          v64[7] = @"errorCode";
          v47 = [MEMORY[0x277CCABB0] numberWithInteger:Int64];
          v65[7] = v47;
          v65[8] = int64;
          v55 = int64;
          v64[8] = @"errorCodeString";
          v64[9] = @"errorDomain";
          v57 = v23;
          v65[9] = v23;
          v64[10] = @"failureType";
          v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v25];
          v65[10] = v46;
          v64[11] = @"retryAttempt";
          v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:selfCopy->_wifiNumRetries];
          v65[11] = v45;
          v64[12] = @"retryCount";
          v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:selfCopy->_wifiMaxAttempts];
          v65[12] = v30;
          v64[13] = @"success";
          v31 = [MEMORY[0x277CCABB0] numberWithBool:v26];
          v65[13] = v31;
          v64[14] = @"wifiSetupType";
          v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:selfCopy->_wifiSetupType];
          v65[14] = v32;
          v64[15] = @"preferredNetworkState";
          v33 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_preferredNetworkState];
          v65[15] = v33;
          v64[16] = @"joinPrimaryNetworkCrossReference";
          v34 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_joinPrimaryNetworkCrossReference];
          v65[16] = v34;
          v64[17] = @"homeHubStatusSelectedHome";
          v35 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_homeHubStatusSelectedHome];
          v65[17] = v35;
          v64[18] = @"homeLocationState";
          v36 = [MEMORY[0x277CCABB0] numberWithInt:selfCopy->_homeLocationState];
          v64[19] = @"sessionID";
          v65[18] = v36;
          v65[19] = v59;
          v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:v64 count:20];
          [v50 addEntriesFromDictionary:v37];

          HDSMetricsLog(@"com.apple.sharing.wifiretry", v50);
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession _logWiFiRetryMetrics:];
          }

          ++v19;
          lastSSIDUsed2 = v42;
        }

        while (v44 != v58 + 1);
        v38 = [obj countByEnumeratingWithState:&v60 objects:v66 count:16];
        v44 = v38;
      }

      while (v38);
    }

    metricsCopy = v39;
  }
}

- (void)_logMetricsForSoftError:(id)error label:(id)label
{
  if (!self->_testFlags)
  {
    labelCopy = label;
    errorCopy = error;
    code = [errorCopy code];
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code];
    v10 = self->_sessionID;
    additionalMetrics = self->_additionalMetrics;
    if (additionalMetrics)
    {
      v12 = [(NSDictionary *)additionalMetrics mutableCopy];
    }

    else
    {
      v12 = objc_opt_new();
    }

    v13 = v12;
    [v12 setObject:v10 forKeyedSubscript:@"sessionID"];
    [v13 setObject:labelCopy forKeyedSubscript:@"state"];

    if (self->_deviceBuildVersion)
    {
      deviceBuildVersion = self->_deviceBuildVersion;
    }

    else
    {
      deviceBuildVersion = @"?";
    }

    [v13 setObject:deviceBuildVersion forKeyedSubscript:@"setupDeviceBuild"];
    [v13 setObject:self->_deviceModel forKeyedSubscript:@"setupDeviceModel"];
    v15 = [errorCopy debugDescription];
    [v13 setObject:v15 forKeyedSubscript:@"setupDescription"];

    [v13 setObject:v18 forKeyedSubscript:@"setupErrorCode"];
    domain = [errorCopy domain];

    [v13 setObject:domain forKeyedSubscript:@"setupErrorDomain"];
    v17 = [MEMORY[0x277CCABB0] numberWithInt:code == 0];
    [v13 setObject:v17 forKeyedSubscript:@"success"];

    HDSMetricsLog(@"com.apple.hdsErrors", v13);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _logMetricsForSoftError:label:];
    }
  }
}

- (void)reportMetricsOnWiFiDismissal
{
  if (self->_wifiJoinAttemptCompleted)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession reportMetricsOnWiFiDismissal];
    }

    lastWiFiError = self->_lastWiFiError;

    [(HDSSetupSession *)self _reportError:lastWiFiError label:@"WiFiSetup-Dismiss"];
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession reportMetricsOnWiFiDismissal];
  }
}

- (void)_logErrorMetrics:(id)metrics inLabel:(id)label
{
  v71[22] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  if (!self->_testFlags)
  {
    metricsCopy = metrics;
    code = [metricsCopy code];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code];
    underlyingErrors = [metricsCopy underlyingErrors];
    firstObject = [underlyingErrors firstObject];

    code2 = [firstObject code];
    domain = [firstObject domain];
    v13 = domain;
    if (domain)
    {
      v14 = domain;
    }

    else
    {
      v14 = @"NoUnderlyingError";
    }

    v69 = v14;

    v64 = firstObject;
    underlyingErrors2 = [firstObject underlyingErrors];
    firstObject2 = [underlyingErrors2 firstObject];

    code3 = [firstObject2 code];
    domain2 = [firstObject2 domain];
    v18 = domain2;
    if (domain2)
    {
      v19 = domain2;
    }

    else
    {
      v19 = @"NoUnderlyingError";
    }

    v20 = v19;

    v63 = firstObject2;
    underlyingErrors3 = [firstObject2 underlyingErrors];
    firstObject3 = [underlyingErrors3 firstObject];

    code4 = [firstObject3 code];
    domain3 = [firstObject3 domain];
    v24 = domain3;
    if (domain3)
    {
      v25 = domain3;
    }

    else
    {
      v25 = @"NoUnderlyingError";
    }

    v68 = v25;

    v60 = firstObject3;
    underlyingErrors4 = [firstObject3 underlyingErrors];
    firstObject4 = [underlyingErrors4 firstObject];

    code5 = [firstObject4 code];
    v59 = firstObject4;
    domain4 = [firstObject4 domain];
    v29 = domain4;
    if (domain4)
    {
      v30 = domain4;
    }

    else
    {
      v30 = @"NoUnderlyingError";
    }

    v67 = v30;

    v31 = MEMORY[0x277CBEB38];
    v58 = self->_sessionID;
    v52 = objc_alloc_init(v31);
    v71[0] = v58;
    v70[0] = @"sessionID";
    v70[1] = @"apcState";
    v57 = [MEMORY[0x277CCABB0] numberWithInt:self->_apcState];
    v71[1] = v57;
    v70[2] = @"isHH2";
    v56 = [MEMORY[0x277CCABB0] numberWithBool:self->_userOptedToHH2];
    v71[2] = v56;
    v70[3] = @"role";
    v54 = [MEMORY[0x277CCABB0] numberWithInt:self->_stereoPairRole];
    v71[3] = v54;
    v70[4] = @"spcState";
    v51 = [MEMORY[0x277CCABB0] numberWithInt:self->_siriPasscodeState];
    v71[4] = v51;
    v70[5] = @"websheet";
    v32 = [MEMORY[0x277CCABB0] numberWithBool:self->_didShowCaptiveSheet];
    v49 = v32;
    deviceBuildVersion = self->_deviceBuildVersion;
    v34 = @"?";
    if (!deviceBuildVersion)
    {
      deviceBuildVersion = @"?";
    }

    v71[5] = v32;
    v71[6] = deviceBuildVersion;
    v70[6] = @"setupDeviceBuild";
    v70[7] = @"setupDeviceModel";
    deviceModel = self->_deviceModel;
    if (!deviceModel)
    {
      deviceModel = @"?";
    }

    v65 = v9;
    if (v9)
    {
      v34 = v9;
    }

    v71[7] = deviceModel;
    v71[8] = v34;
    v70[8] = @"setupErrorCodeString";
    v70[9] = @"setupErrorCode";
    v36 = [MEMORY[0x277CCABB0] numberWithInteger:code];
    v71[9] = v36;
    v70[10] = @"errorDomain";
    domain5 = [metricsCopy domain];

    v38 = @"No domain";
    if (domain5)
    {
      v38 = domain5;
    }

    v39 = @"Unknown";
    v66 = labelCopy;
    if (labelCopy)
    {
      v39 = labelCopy;
    }

    if (code)
    {
      v40 = 0;
    }

    else
    {
      v39 = @"NoError";
      v40 = 1;
    }

    v71[10] = v38;
    v71[11] = v39;
    v70[11] = @"errorLabel";
    v70[12] = @"setupUnderlyingErrorCode";
    v41 = [MEMORY[0x277CCABB0] numberWithInteger:code2];
    v71[12] = v41;
    v71[13] = v69;
    v70[13] = @"setupUnderlyingErrorDomain";
    v70[14] = @"setupUnderlyingErrorCode3";
    v42 = [MEMORY[0x277CCABB0] numberWithInteger:code3];
    v71[14] = v42;
    v71[15] = v20;
    v62 = v20;
    v70[15] = @"setupUnderlyingErrorDomain3";
    v70[16] = @"setupUnderlyingErrorCode4";
    v43 = [MEMORY[0x277CCABB0] numberWithInteger:code4];
    v71[16] = v43;
    v71[17] = v68;
    v70[17] = @"setupUnderlyingErrorDomain4";
    v70[18] = @"setupUnderlyingErrorCode5";
    v44 = [MEMORY[0x277CCABB0] numberWithInteger:code5];
    v71[18] = v44;
    v71[19] = v67;
    v70[19] = @"setupUnderlyingErrorDomain5";
    v70[20] = @"success";
    v45 = [MEMORY[0x277CCABB0] numberWithInt:v40];
    v71[20] = v45;
    v70[21] = @"isCLIMode";
    v46 = self->_isCLIMode && self->_isCLIMode;
    v47 = [MEMORY[0x277CCABB0] numberWithInt:v46];
    v71[21] = v47;
    v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:v70 count:22];
    [v52 addEntriesFromDictionary:v48];

    HDSMetricsLog(@"com.apple.HomeDeviceSetup.Error", v52);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _logErrorMetrics:inLabel:];
    }

    labelCopy = v66;
  }
}

- (void)_logMetrics:(id)metrics
{
  v72[42] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v5 = metricsCopy;
  if (!self->_testFlags)
  {
    code = [metricsCopy code];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code];
    underlyingErrors = [v5 underlyingErrors];
    firstObject = [underlyingErrors firstObject];
    code2 = [firstObject code];

    v69 = v5;
    underlyingErrors2 = [v5 underlyingErrors];
    firstObject2 = [underlyingErrors2 firstObject];
    domain = [firstObject2 domain];
    v13 = domain;
    v14 = @"NoUnderlyingError";
    if (domain)
    {
      v14 = domain;
    }

    v15 = v14;

    v16 = self->_sessionID;
    additionalMetrics = self->_additionalMetrics;
    if (additionalMetrics)
    {
      v18 = [(NSDictionary *)additionalMetrics mutableCopy];
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v65 = v16;
    v72[0] = v16;
    v70 = v18;
    v71[0] = @"sessionID";
    v71[1] = @"residentWiFiSetup";
    v64 = [MEMORY[0x277CCABB0] numberWithBool:self->_didSetupWithPRSSID];
    v72[1] = v64;
    v71[2] = @"activateMs";
    v63 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_activationSecs * 1000.0)];
    v72[2] = v63;
    v71[3] = @"amsOptimizationSec";
    v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_amsOptimizationSecs];
    v72[3] = v62;
    v71[4] = @"amsSucceeded";
    v61 = [MEMORY[0x277CCABB0] numberWithInt:self->_amsActivationState == 4];
    v72[4] = v61;
    v71[5] = @"apcState";
    v60 = [MEMORY[0x277CCABB0] numberWithInt:self->_apcState];
    v72[5] = v60;
    v71[6] = @"authMs";
    v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:((self->_trAuthenticationTotalSecs + self->_amsOptimizationSecs) * 1000.0)];
    v72[6] = v59;
    v71[7] = @"iTunesAuthMs";
    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_iTunesAuthMs * 1000.0)];
    v72[7] = v58;
    v71[8] = @"iCloudAuthMs";
    v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_iCloudAuthMs * 1000.0)];
    v72[8] = v57;
    v71[9] = @"basicConfigMs";
    v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_basicConfigSecs * 1000.0)];
    v72[9] = v56;
    v71[10] = @"bonjourTestMs";
    v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_wifiBonjourTestSecs * 1000.0)];
    v72[10] = v55;
    v71[11] = @"finishMs";
    v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_finishSecs * 1000.0)];
    v72[11] = v54;
    v71[12] = @"homeKitMs";
    v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_homeKitSetupSecs * 1000.0)];
    v72[12] = v53;
    v71[13] = @"homeKitHDSMs";
    v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_homeKitHDSMs * 1000.0)];
    v72[13] = v52;
    v71[14] = @"isHH2";
    v51 = [MEMORY[0x277CCABB0] numberWithBool:self->_userOptedToHH2];
    v72[14] = v51;
    v71[15] = @"iTunesWaitMs";
    v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_iTunesWaitSecs * 1000.0)];
    v72[15] = v50;
    v71[16] = @"mediaSystemWaitMs";
    v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_mediaSystemWaitSecs * 1000.0)];
    v72[16] = v49;
    v71[17] = @"netMs";
    v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:((self->_wifiSetupSecs + self->_reachabilitySecs) * 1000.0)];
    v72[17] = v48;
    v71[18] = @"numberOfHomePodsInHome";
    v47 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfHomePodsInHome];
    v72[18] = v47;
    v71[19] = @"numberOfHomePodsInAccount";
    v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfHomePodsInAccount];
    v72[19] = v46;
    v71[20] = @"numberOfHomes";
    v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfHomes];
    v72[20] = v45;
    v71[21] = @"pairMs";
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_pairSetupSecs * 1000.0)];
    v72[21] = v44;
    v71[22] = @"role";
    v43 = [MEMORY[0x277CCABB0] numberWithInt:self->_stereoPairRole];
    v72[22] = v43;
    v71[23] = @"setupConfigMs";
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_trSetupConfigurationSecs * 1000.0)];
    v72[23] = v42;
    v71[24] = @"spcState";
    v41 = [MEMORY[0x277CCABB0] numberWithInt:self->_siriPasscodeState];
    v72[24] = v41;
    v71[25] = @"totalMs";
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_totalSecs * 1000.0)];
    v72[25] = v40;
    v71[26] = @"wifiMs";
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_wifiSetupStepSecs * 1000.0)];
    v72[26] = v39;
    v71[27] = @"reachabilityMs";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_reachabilitySecs * 1000.0)];
    v72[27] = v38;
    v71[28] = @"websheet";
    v19 = [MEMORY[0x277CCABB0] numberWithBool:self->_didShowCaptiveSheet];
    v37 = v19;
    deviceBuildVersion = self->_deviceBuildVersion;
    if (!deviceBuildVersion)
    {
      deviceBuildVersion = @"?";
    }

    v72[28] = v19;
    v72[29] = deviceBuildVersion;
    v71[29] = @"setupDeviceBuild";
    v71[30] = @"isV2Terms";
    v36 = [MEMORY[0x277CCABB0] numberWithBool:self->_termsAndConditionsV2Shown];
    v72[30] = v36;
    v71[31] = @"automaticSoftwareUpdateAgreed";
    v35 = [MEMORY[0x277CCABB0] numberWithInt:self->_automaticSoftwareUpdateAgreed];
    v72[31] = v35;
    v71[32] = @"softwareUpdateAgreed";
    v21 = [MEMORY[0x277CCABB0] numberWithInt:self->_softwareUpdateAgreed];
    v72[32] = v21;
    v71[33] = @"homePodSUState";
    v22 = [MEMORY[0x277CCABB0] numberWithInt:self->_homePodSUState];
    v72[33] = v22;
    v71[34] = @"homePodProductVersion";
    v23 = [MEMORY[0x277CCABB0] numberWithInt:self->_homePodProductVersion];
    v24 = v23;
    deviceModel = self->_deviceModel;
    if (!deviceModel)
    {
      deviceModel = @"?";
    }

    v72[34] = v23;
    v72[35] = deviceModel;
    v71[35] = @"setupDeviceModel";
    v71[36] = @"setupErrorCodeString";
    v68 = v7;
    if (v7)
    {
      v26 = v7;
    }

    else
    {
      v26 = @"?";
    }

    v72[36] = v26;
    v71[37] = @"setupErrorCode";
    [MEMORY[0x277CCABB0] numberWithInteger:code];
    v28 = v27 = code;
    v72[37] = v28;
    v71[38] = @"setupUnderlyingErrorCode";
    v29 = [MEMORY[0x277CCABB0] numberWithInteger:code2];
    v72[38] = v29;
    v67 = v15;
    v72[39] = v15;
    v71[39] = @"setupUnderlyingErrorDomain";
    v71[40] = @"isCLIMode";
    v30 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCLIMode];
    v72[40] = v30;
    v71[41] = @"success";
    v31 = [MEMORY[0x277CCABB0] numberWithInt:v27 == 0];
    v72[41] = v31;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:42];
    [v70 addEntriesFromDictionary:v32];

    if (self->_cdpEnabled)
    {
      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_cdpSetupSecs * 1000.0)];
      [v70 setObject:v33 forKeyedSubscript:@"cdpSetupMs"];
    }

    v5 = v69;
    if (v69)
    {
      domain2 = [v69 domain];
      [v70 setObject:domain2 forKeyedSubscript:@"errorDomain"];
    }

    HDSMetricsLog(@"com.apple.sharing.ASSetupSuccess", v70);
    HDSMetricsLog(@"com.apple.HomeDeviceSetup.SetupCompleted", v70);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_logUsageMetrics:(id)metrics
{
  v56[36] = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v5 = metricsCopy;
  if (!self->_testFlags)
  {
    v54 = metricsCopy;
    code = [metricsCopy code];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", code];
    expressSetupState = [(HDSSetupSession *)self expressSetupState];
    v9 = self->_sessionID;
    v51 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v52 = v9;
    v56[0] = v9;
    v55[0] = @"sessionID";
    v55[1] = @"apcState";
    v50 = [MEMORY[0x277CCABB0] numberWithInt:self->_apcState];
    v56[1] = v50;
    v55[2] = @"spcState";
    v49 = [MEMORY[0x277CCABB0] numberWithInt:self->_siriPasscodeState];
    v56[2] = v49;
    v55[3] = @"isHH2";
    v48 = [MEMORY[0x277CCABB0] numberWithBool:self->_userOptedToHH2];
    v56[3] = v48;
    v55[4] = @"isCLIMode";
    v47 = [MEMORY[0x277CCABB0] numberWithBool:self->_isCLIMode];
    v56[4] = v47;
    v55[5] = @"amsSucceeded";
    v46 = [MEMORY[0x277CCABB0] numberWithInt:self->_amsActivationState == 4];
    v56[5] = v46;
    v55[6] = @"role";
    v45 = [MEMORY[0x277CCABB0] numberWithInt:self->_stereoPairRole];
    v56[6] = v45;
    v55[7] = @"numberOfHomePodsInHome";
    v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfHomePodsInHome];
    v56[7] = v44;
    v55[8] = @"numberOfHomePodsInAccount";
    v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfHomePodsInAccount];
    v56[8] = v43;
    v55[9] = @"numberOfAppleMediaAccessoriesInHome";
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfAppleMediaAccessoriesInHome];
    v56[9] = v42;
    v55[10] = @"numberOfHomes";
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_numberOfHomes];
    v56[10] = v41;
    v55[11] = @"homeCategory";
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_homeAccessoryCategories];
    v56[11] = v40;
    v55[12] = @"websheet";
    v39 = [MEMORY[0x277CCABB0] numberWithBool:self->_didShowCaptiveSheet];
    v56[12] = v39;
    v55[13] = @"automaticSoftwareUpdateAgreed";
    v38 = [MEMORY[0x277CCABB0] numberWithInt:self->_automaticSoftwareUpdateAgreed];
    v56[13] = v38;
    v55[14] = @"softwareUpdateAgreed";
    v37 = [MEMORY[0x277CCABB0] numberWithInt:self->_softwareUpdateAgreed];
    v56[14] = v37;
    v55[15] = @"homePodSUState";
    v36 = [MEMORY[0x277CCABB0] numberWithInt:self->_homePodSUState];
    v56[15] = v36;
    v55[16] = @"odeonState";
    v35 = [MEMORY[0x277CCABB0] numberWithInt:self->_odeonState];
    v56[16] = v35;
    v55[17] = @"homePodProductVersion";
    v10 = [MEMORY[0x277CCABB0] numberWithInt:self->_homePodProductVersion];
    deviceModel = self->_deviceModel;
    if (!deviceModel)
    {
      deviceModel = @"?";
    }

    v34 = v10;
    v56[17] = v10;
    v56[18] = deviceModel;
    v55[18] = @"setupDeviceModel";
    v55[19] = @"setupDeviceBuild";
    deviceBuildVersion = self->_deviceBuildVersion;
    if (!deviceBuildVersion)
    {
      deviceBuildVersion = @"?";
    }

    v56[19] = deviceBuildVersion;
    v55[20] = @"rmvState";
    v33 = [MEMORY[0x277CCABB0] numberWithInt:self->_rmvSelectionState];
    v56[20] = v33;
    v55[21] = @"soundRecognitionState";
    v32 = [MEMORY[0x277CCABB0] numberWithInt:self->_soundRecognitionSelectionState];
    v56[21] = v32;
    v55[22] = @"siriSettingState";
    v31 = [MEMORY[0x277CCABB0] numberWithInt:self->_siriSettingState];
    v56[22] = v31;
    v55[23] = @"personalRequestsState";
    v30 = [MEMORY[0x277CCABB0] numberWithInt:self->_personalRequestsSelectionState];
    v56[23] = v30;
    v55[24] = @"activeDeviceState";
    v29 = [MEMORY[0x277CCABB0] numberWithInt:self->_activeDeviceSelectionState];
    v56[24] = v29;
    v55[25] = @"locationSelectionState";
    v28 = [MEMORY[0x277CCABB0] numberWithInt:self->_locationSelectionState];
    v56[25] = v28;
    v55[26] = @"expressSetupState";
    v27 = [MEMORY[0x277CCABB0] numberWithInt:expressSetupState];
    v56[26] = v27;
    v55[27] = @"wifiSetupType";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_wifiSetupType];
    v56[27] = v13;
    v55[28] = @"preferredNetworkState";
    v14 = [MEMORY[0x277CCABB0] numberWithInt:self->_preferredNetworkState];
    v56[28] = v14;
    v55[29] = @"joinPrimaryNetworkCrossReference";
    v15 = [MEMORY[0x277CCABB0] numberWithInt:self->_joinPrimaryNetworkCrossReference];
    v56[29] = v15;
    v55[30] = @"homeHubStatusSelectedHome";
    v16 = [MEMORY[0x277CCABB0] numberWithInt:self->_homeHubStatusSelectedHome];
    v56[30] = v16;
    v55[31] = @"homeLocationState";
    v17 = [MEMORY[0x277CCABB0] numberWithInt:self->_homeLocationState];
    v18 = v17;
    v53 = v7;
    if (v7)
    {
      v19 = v7;
    }

    else
    {
      v19 = @"?";
    }

    v56[31] = v17;
    v56[32] = v19;
    v55[32] = @"setupErrorCodeString";
    v55[33] = @"setupErrorCode";
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:code];
    v56[33] = v20;
    v55[34] = @"success";
    v21 = [MEMORY[0x277CCABB0] numberWithInt:code == 0];
    v56[34] = v21;
    v55[35] = @"isNetworkSelectionEligibleInLocale";
    v22 = MEMORY[0x277CCABB0];
    if (_os_feature_enabled_impl())
    {
      os_eligibility_get_domain_answer();
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    v24 = [v22 numberWithBool:v23];
    v56[35] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:36];
    [v51 addEntriesFromDictionary:v25];

    v5 = v54;
    if (v54)
    {
      domain = [v54 domain];
      [v51 setObject:domain forKeyedSubscript:@"errorDomain"];
    }

    HDSMetricsLog(@"com.apple.HDSUsage", v51);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _logUsageMetrics:];
    }
  }
}

- (void)_logPerformanceMetrics:(id)metrics
{
  v45[33] = *MEMORY[0x277D85DE8];
  if (!self->_testFlags)
  {
    code = [metrics code];
    v5 = self->_sessionID;
    v6 = self->_basicConfigSecs + self->_wifiSetupSecs + self->_reachabilitySecs + self->_wifiBonjourTestSecs + self->_trSetupConfigurationSecs + self->_cdpSetupSecs + self->_activationSecs + self->_iCloudAuthMs + self->_iTunesAuthMs + self->_setupDeviceSecs + self->_addDeviceSecs;
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v43 = v5;
    v44[0] = @"sessionID";
    v45[0] = v5;
    v44[1] = @"primarySSIDFetchMs";
    v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_homeKitSSIDFetchDuration * 1000.0)];
    v45[1] = v42;
    v44[2] = @"userWaitMs";
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_userWaitTimeSecs * 1000.0)];
    v45[2] = v41;
    v44[3] = @"configureTimeMs";
    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_configureTimeSecs * 1000.0)];
    v45[3] = v40;
    v44[4] = @"role";
    v39 = [MEMORY[0x277CCABB0] numberWithInt:self->_stereoPairRole];
    v45[4] = v39;
    v44[5] = @"activateMs";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_activationSecs * 1000.0)];
    v45[5] = v38;
    v44[6] = @"amsOptimizationSec";
    v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_amsOptimizationSecs];
    v45[6] = v37;
    v44[7] = @"authMs";
    v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:((self->_trAuthenticationTotalSecs + self->_amsOptimizationSecs) * 1000.0)];
    v45[7] = v36;
    v44[8] = @"iTunesAuthMs";
    v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_iTunesAuthMs * 1000.0)];
    v45[8] = v34;
    v44[9] = @"iCloudAuthMs";
    v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_iCloudAuthMs * 1000.0)];
    v45[9] = v33;
    v44[10] = @"basicConfigMs";
    v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_basicConfigSecs * 1000.0)];
    v45[10] = v32;
    v44[11] = @"bonjourTestMs";
    v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_wifiBonjourTestSecs * 1000.0)];
    v45[11] = v31;
    v44[12] = @"finishMs";
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_finishSecs * 1000.0)];
    v45[12] = v30;
    v44[13] = @"homeKitMs";
    v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_homeKitSetupSecs * 1000.0)];
    v45[13] = v29;
    v44[14] = @"homeKitHDSMs";
    v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_homeKitHDSMs * 1000.0)];
    v45[14] = v28;
    v44[15] = @"iTunesWaitMs";
    v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_iTunesWaitSecs * 1000.0)];
    v45[15] = v27;
    v44[16] = @"mediaSystemWaitMs";
    v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_mediaSystemWaitSecs * 1000.0)];
    v45[16] = v26;
    v44[17] = @"netMs";
    v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:((self->_wifiSetupSecs + self->_reachabilitySecs) * 1000.0)];
    v45[17] = v25;
    v44[18] = @"pairMs";
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_pairSetupSecs * 1000.0)];
    v45[18] = v24;
    v44[19] = @"setupConfigMs";
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_trSetupConfigurationSecs * 1000.0)];
    v45[19] = v23;
    v44[20] = @"totalMs";
    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_totalSecs * 1000.0)];
    v45[20] = v22;
    v44[21] = @"wifiMs";
    v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_wifiSetupStepSecs * 1000.0)];
    v45[21] = v21;
    v44[22] = @"setupDeviceNonUserMs";
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_setupDeviceSecs * 1000.0)];
    v45[22] = v20;
    v44[23] = @"addDeviceMs";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_addDeviceSecs * 1000.0)];
    v45[23] = v19;
    v44[24] = @"assignRoomMs";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_assignRoomSecs * 1000.0)];
    v45[24] = v18;
    v44[25] = @"personalRequestsMs";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_personalRequestSecs * 1000.0)];
    v45[25] = v17;
    v44[26] = @"ulhNonUserMs";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_ulhNonUserWaitSecs * 1000.0)];
    v45[26] = v7;
    v44[27] = @"odeonStepMs";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_odeonSecs * 1000.0)];
    v45[27] = v8;
    v44[28] = @"reachabilityMs";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_reachabilitySecs * 1000.0)];
    v45[28] = v9;
    v44[29] = @"setupUntilConfiguringMs";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(v6 * 1000.0)];
    v45[29] = v10;
    v44[30] = @"odeonState";
    v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_odeonState];
    v12 = v11;
    deviceModel = @"?";
    if (self->_deviceModel)
    {
      deviceModel = self->_deviceModel;
    }

    v45[30] = v11;
    v45[31] = deviceModel;
    v44[31] = @"setupDeviceModel";
    v44[32] = @"success";
    v14 = [MEMORY[0x277CCABB0] numberWithInt:code == 0];
    v45[32] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:33];
    [v35 addEntriesFromDictionary:v15];

    if (self->_cdpEnabled)
    {
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_cdpSetupSecs * 1000.0)];
      [v35 setObject:v16 forKeyedSubscript:@"cdpSetupMs"];
    }

    HDSMetricsLog(@"com.apple.HomeDeviceSetupPerformance", v35);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_logHomeKitPerformanceMetrics
{
  v20[13] = *MEMORY[0x277D85DE8];
  if (!self->_testFlags)
  {
    v20[0] = self->_sessionID;
    v19[0] = @"sessionID";
    v19[1] = @"homeKitMs";
    v3 = MEMORY[0x277CCABB0];
    v4 = (self->_homeKitSetupSecs * 1000.0);
    v18 = v20[0];
    v17 = [v3 numberWithUnsignedInt:v4];
    v20[1] = v17;
    v19[2] = @"homeKitHDSMs";
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_homeKitHDSMs * 1000.0)];
    v20[2] = v16;
    v19[3] = @"setupDeviceNonUserMs";
    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_setupDeviceSecs * 1000.0)];
    v20[3] = v15;
    v19[4] = @"addDeviceMs";
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_addDeviceSecs * 1000.0)];
    v20[4] = v5;
    v19[5] = @"assignRoomMs";
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_assignRoomSecs * 1000.0)];
    v20[5] = v6;
    v19[6] = @"personalRequestsMs";
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_personalRequestSecs * 1000.0)];
    v20[6] = v7;
    v19[7] = @"ulhNonUserMs";
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_ulhNonUserWaitSecs * 1000.0)];
    v20[7] = v8;
    v19[8] = @"odeonStepMs";
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_odeonSecs * 1000.0)];
    v20[8] = v9;
    v19[9] = @"nonUserWaitMs";
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_nonUserWaitSecs * 1000.0)];
    v20[9] = v10;
    v19[10] = @"hkDataSyncMs";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_homeKitDataSyncSecs * 1000.0)];
    v20[10] = v11;
    v19[11] = @"stereoPairMs";
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_stereoPairSecs * 1000.0)];
    v20[11] = v12;
    v19[12] = @"hkAccessoryDataSyncMs";
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_homeKitAccessoryDataSyncSecs * 1000.0)];
    v20[12] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:13];

    HDSMetricsLog(@"com.apple.HDSHomeKitPerformance", v14);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _logHomeKitPerformanceMetrics];
    }
  }
}

- (void)logMetricsForDismissal:(id)dismissal dismissType:(int)type cardName:(id)name cardDuration:(unint64_t)duration
{
  v7 = *&type;
  v32[7] = *MEMORY[0x277D85DE8];
  dismissalCopy = dismissal;
  nameCopy = name;
  if (!self->_testFlags)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession logMetricsForDismissal:dismissType:cardName:cardDuration:];
    }

    code = [dismissalCopy code];
    v11 = self->_sessionID;
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31[0] = @"sessionID";
    v31[1] = @"setupDeviceModel";
    deviceModel = self->_deviceModel;
    if (!deviceModel)
    {
      deviceModel = @"?";
    }

    v32[0] = v11;
    v32[1] = deviceModel;
    deviceBuildVersion = self->_deviceBuildVersion;
    if (!deviceBuildVersion)
    {
      deviceBuildVersion = @"?";
    }

    v32[2] = deviceBuildVersion;
    v31[2] = @"setupDeviceBuild";
    v31[3] = @"cardDuration";
    v15 = MEMORY[0x277CCABB0];
    mach_absolute_time();
    UpTicksToSecondsF();
    v17 = [v15 numberWithUnsignedInt:(v16 * 1000.0)];
    v32[3] = v17;
    v31[4] = @"dismissType";
    v18 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    v32[4] = v18;
    v31[5] = @"userWiFiRetryCount";
    v19 = [MEMORY[0x277CCABB0] numberWithInt:self->_retryPickerCount];
    v32[5] = v19;
    v31[6] = @"totalDuration";
    v20 = MEMORY[0x277CCABB0];
    mach_absolute_time();
    UpTicksToSecondsF();
    v22 = [v20 numberWithUnsignedInt:(v21 * 1000.0)];
    v32[6] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:7];
    [v12 addEntriesFromDictionary:v23];

    if (nameCopy)
    {
      currentStageLabel = self->_currentStageLabel;
      if (currentStageLabel)
      {
        currentStageLabel = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", nameCopy, currentStageLabel];
      }

      else
      {
        currentStageLabel = nameCopy;
      }

      v26 = currentStageLabel;
      [v12 setObject:currentStageLabel forKeyedSubscript:@"cardName"];
    }

    v27 = self->_deviceModel;
    if (v27)
    {
      [v12 setObject:v27 forKeyedSubscript:@"homePodModel"];
    }

    if (dismissalCopy)
    {
      v28 = [MEMORY[0x277CCABB0] numberWithInteger:code];
      [v12 setObject:v28 forKeyedSubscript:@"errorCode"];

      domain = [dismissalCopy domain];
      [v12 setObject:domain forKeyedSubscript:@"errorDomain"];
    }

    HDSMetricsLog(@"com.apple.HomeDeviceSetup.cardDismiss", v12);
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession logMetricsForDismissal:dismissType:cardName:cardDuration:];
    }
  }
}

- (void)_promptForPINWithFlags:(unsigned int)flags throttleSeconds:(int)seconds
{
  v4 = *&seconds;
  v6 = self->_pairSetupFlags | flags;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    v17 = &unk_252FEDFE0;
    v18 = v4;
    v16 = v6;
    LogPrintF();
  }

  if ((self->_pairSetupFlags & 0x800) != 0)
  {
    if (v4 > 0 || (v6 & 0x10000) != 0)
    {
      apcPasscode = self->_apcPasscode;
      self->_apcPasscode = 0;
    }

    v10 = self->_apcPasscode;
    v11 = v10;
    v19 = v10;
    if (v10)
    {
      if (gLogCategory_HDSSetupSession <= 30)
      {
        if (gLogCategory_HDSSetupSession != -1 || (v12 = _LogCategory_Initialize(), v11 = v19, v12))
        {
          [HDSSetupSession _promptForPINWithFlags:v11 throttleSeconds:?];
        }
      }

      v10 = [(SFSession *)self->_sfSession pairSetupTryPIN:v19, v16, v17, v18];
      v11 = v19;
    }

    else
    {
      apcTimer = self->_apcTimer;
      if (apcTimer)
      {
        v14 = apcTimer;
        dispatch_source_cancel(v14);
        v15 = self->_apcTimer;
        self->_apcTimer = 0;

        v11 = 0;
      }

      self->_apcTryingPasscode = 0;
    }

    MEMORY[0x2821F96F8](v10, v11);
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _promptForPINWithFlags:throttleSeconds:];
    }

    promptForPINHandler = self->_promptForPINHandler;
    if (promptForPINHandler)
    {
      v8 = *(promptForPINHandler + 2);

      v8();
    }
  }
}

- (BOOL)_recognizeVoiceAlreadyEnabled
{
  selectedHome = [(HDSSetupSession *)self selectedHome];
  v4 = selectedHome;
  if (selectedHome)
  {
    owner = [selectedHome owner];
    v6 = [owner userSettingsForHome:v4];
    settings = [v6 settings];

    if (settings)
    {
      rootGroup = [settings rootGroup];
      if (rootGroup)
      {
        v9 = [(HDSSetupSession *)self _homeKitFindSettingsWithKeyPath:@"root.siri.identifyVoice" group:rootGroup];
        v10 = v9;
        if (v9)
        {
          value = [v9 value];
          v12 = CFGetInt64();

          if (v12)
          {
            v13 = 1;
          }

          else
          {
            [(HDSSetupSession *)v10 _recognizeVoiceAlreadyEnabled];
            v13 = v15;
          }
        }

        else
        {
          [(HDSSetupSession *)&v16 _recognizeVoiceAlreadyEnabled];
          v13 = v16;
        }
      }

      else
      {
        [(HDSSetupSession *)&v17 _recognizeVoiceAlreadyEnabled];
        v13 = v17;
      }
    }

    else
    {
      [(HDSSetupSession *)&v18 _recognizeVoiceAlreadyEnabled];
      v13 = v18;
    }
  }

  else
  {
    [(HDSSetupSession *)&v19 _recognizeVoiceAlreadyEnabled];
    v13 = v19;
  }

  return v13;
}

- (void)_startSysDropLoggingProfileRequest
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession _startSysDropLoggingProfileRequest];
  }

  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy_;
  v11[4] = __Block_byref_object_dispose_;
  v12 = 0;
  [v3 setObject:uUIDString forKeyedSubscript:@"_hds_kfti"];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  sfSession = self->_sfSession;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke;
  v8[3] = &unk_2797153B0;
  v8[4] = self;
  v10 = v11;
  v7 = uUIDString;
  v9 = v7;
  [(SFSession *)sfSession sendRequestID:@"_hds_rpft_sysdrop_enablement" options:&unk_2864E7FF0 request:v3 responseHandler:v8];

  _Block_object_dispose(v11, 8);
}

void __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_cold_1();
    }

    *(*(a1 + 32) + 1472) = 3;
    v10 = *(a1 + 32);
    v11 = NSErrorF();
    [v10 _reportError:v11 label:@"ProfileFileTransfer"];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_cold_2();
    }

    v12 = objc_alloc_init(HDSFileTransfer);
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_2;
    v18[3] = &unk_279715388;
    v18[4] = v15;
    v17 = *(a1 + 40);
    v16 = v17;
    v19 = v17;
    [v15 fetchHomePodLoggingProfile:v18];
  }
}

void __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_3;
  block[3] = &unk_279715360;
  v10 = v3;
  v11 = v4;
  v8 = *(a1 + 40);
  v6 = v8;
  v12 = v8;
  v7 = v3;
  dispatch_async(v5, block);
}

void __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_3(void *a1)
{
  if (a1[4])
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_3_cold_1();
    }

    v2 = a1[6];
    v3 = *(*(a1[7] + 8) + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_4;
    v7[3] = &unk_279714198;
    v4 = a1[4];
    v7[4] = a1[5];
    [v3 beginSysDropFileTransfer:v2 pathToFile:v4 withCompletion:v7];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_3_cold_2();
    }

    *(a1[5] + 1472) = 3;
    v5 = a1[5];
    v6 = NSErrorF();
    [v5 _reportError:v6 label:@"ProfileFileTransfer"];
  }
}

void __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 1800);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_5;
  v7[3] = &unk_2797142D0;
  v8 = v3;
  v9 = v4;
  v6 = v3;
  dispatch_async(v5, v7);
}

uint64_t __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_5(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    *(*(a1 + 40) + 1472) = 3;
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v4 _reportError:v5 label:@"ProfileFileTransfer"];
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __53__HDSSetupSession__startSysDropLoggingProfileRequest__block_invoke_5_cold_1();
    }

    *(*(a1 + 40) + 1472) = 4;
    v2 = *(a1 + 40);

    return [v2 _run];
  }
}

- (void)_startSysDropSysdiagnoseRequest:(id)request
{
  requestCopy = request;
  v5 = objc_opt_new();
  sfSession = self->_sfSession;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__HDSSetupSession__startSysDropSysdiagnoseRequest___block_invoke;
  v8[3] = &unk_2797153D8;
  v8[4] = self;
  v9 = requestCopy;
  v7 = requestCopy;
  [(SFSession *)sfSession sendRequestID:@"sysdrop_sys_start" options:&unk_2864E8018 request:v5 responseHandler:v8];
}

void __51__HDSSetupSession__startSysDropSysdiagnoseRequest___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = a4;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __51__HDSSetupSession__startSysDropSysdiagnoseRequest___block_invoke_cold_1();
  }

  [*(a1 + 32) _startSysDropMode:*(a1 + 40)];
}

- (void)_startSysDropMode:(id)mode
{
  sysDropSession = self->_sysDropSession;
  modeCopy = mode;
  [(SysDropSession *)sysDropSession setStartedFromSetup:1];
  [(SysDropSession *)self->_sysDropSession setSetupError:modeCopy];

  [(SysDropSession *)self->_sysDropSession setSfSession:self->_sfSession];
  v6 = self->_sysDropSession;

  [(SysDropSession *)v6 activate];
}

- (BOOL)_isPreflightError:(id)error
{
  v3 = NSErrorToOSStatus();
  result = 1;
  if ((v3 - 301000) > 0x1B || ((1 << (v3 + 56)) & 0x8160C61) == 0)
  {
    return v3 == -71138;
  }

  return result;
}

- (void)_reportError:(id)error label:(id)label
{
  v34[4] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  labelCopy = label;
  v11 = gLogCategory_HDSSetupSession;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _reportError:? label:?];
    }

    v11 = gLogCategory_HDSSetupSession;
  }

  if (v11 <= 60 && (v11 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  FPrintF(*MEMORY[0x277D85E08], "CmdHomeDeviceSetupNoUI _reportError called: %@, %{error}\n", labelCopy, errorCopy);
  if (!self->_mainError)
  {
    objc_storeStrong(&self->_mainError, error);
  }

  if (self->_totalSecs == 0.0)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    self->_totalSecs = v12;
  }

  if ([errorCopy code] != -6723)
  {
    if (!self->_logMetricsCalled)
    {
      self->_logMetricsCalled = 1;
      [(HDSSetupSession *)self _logMetrics:errorCopy];
      [(HDSSetupSession *)self _logErrorMetrics:errorCopy inLabel:labelCopy];
      [(HDSSetupSession *)self _logUsageMetrics:errorCopy];
      [(HDSSetupSession *)self _logPerformanceMetrics:errorCopy];
      [(HDSSetupSession *)self _logHomeKitPerformanceMetrics];
      additionalMetrics = self->_additionalMetrics;
      if (additionalMetrics)
      {
        v14 = [(NSDictionary *)additionalMetrics mutableCopy];
      }

      else
      {
        v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v15 = v14;
      v34[0] = labelCopy;
      v33[0] = @"label";
      v33[1] = @"errDomain";
      domain = [errorCopy domain];
      v4 = domain;
      v17 = @"?";
      if (domain)
      {
        v17 = domain;
      }

      v34[1] = v17;
      v33[2] = @"errCode";
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      v34[2] = v5;
      v33[3] = @"totalMs";
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_totalSecs * 1000.0)];
      v34[3] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:4];
      [v15 addEntriesFromDictionary:v19];

      HDSMetricsLog(@"com.apple.sharing.ASSetupError", v15);
    }

    v20 = +[HDSDefaults sysDropBuildMode];
    if (v20 && -[HDSSetupSession shouldDoSysDrop:](self, "shouldDoSysDrop:", v20) && self->_homePodSysDropCapable && !-[SysDropSession sysDropActivated](self->_sysDropSession, "sysDropActivated") && !self->_isCLIMode && !self->_isConnectionError && (!-[HDSSetupSession _isPreflightError:](self, "_isPreflightError:", errorCopy) || +[HDSDefaults sysDropForceErrorEarlyEnabled](HDSDefaults, "sysDropForceErrorEarlyEnabled") && [errorCopy code] == 301006))
    {
      [(HDSSetupSession *)self _startSysDropSysdiagnoseRequest:errorCopy];
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _reportError:label:];
      }

      [(SysDropSession *)self->_sysDropSession setSysDropFailed:1];
      [(HDSSetupSession *)self _cleanupSession];
      lastSSIDUsed = [(HDSSetupSession *)self lastSSIDUsed];
      progressHandler = self->_progressHandler;
      if (progressHandler)
      {
        v31[0] = @"eo";
        v23 = errorCopy;
        if (!errorCopy)
        {
          v24 = MEMORY[0x277CCA9B8];
          v25 = *MEMORY[0x277CCA590];
          v29 = *MEMORY[0x277CCA450];
          v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
          v4 = v26;
          v27 = @"?";
          if (v26)
          {
            v27 = v26;
          }

          v30 = v27;
          v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
          v23 = [v24 errorWithDomain:v25 code:-6700 userInfo:v5];
        }

        v31[1] = @"hds_hp_scn_se_n";
        v32[0] = v23;
        v32[1] = lastSSIDUsed;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
        progressHandler[2](progressHandler, 30, v28);

        if (!errorCopy)
        {
        }
      }
    }
  }
}

- (void)_reportErrorWithExtaInfo:(id)info label:(id)label dict:(id)dict
{
  v37[4] = *MEMORY[0x277D85DE8];
  infoCopy = info;
  labelCopy = label;
  dictCopy = dict;
  v12 = gLogCategory_HDSSetupSession;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      [HDSSetupSession _reportErrorWithExtaInfo:? label:? dict:?];
    }

    v12 = gLogCategory_HDSSetupSession;
  }

  if (v12 <= 60 && (v12 != -1 || _LogCategory_Initialize()))
  {
    v33 = dictCopy;
    LogPrintF();
  }

  FPrintF(*MEMORY[0x277D85E08], "CmdHomeDeviceSetupNoUI _reportError called: %@, %{error}\n", labelCopy, infoCopy, v33);
  if (!self->_mainError)
  {
    objc_storeStrong(&self->_mainError, info);
  }

  if (self->_totalSecs == 0.0)
  {
    mach_absolute_time();
    UpTicksToSecondsF();
    self->_totalSecs = v13;
  }

  if ([infoCopy code] != -6723)
  {
    if (!self->_logMetricsCalled)
    {
      self->_logMetricsCalled = 1;
      [(HDSSetupSession *)self _logMetrics:infoCopy];
      [(HDSSetupSession *)self _logErrorMetrics:infoCopy inLabel:labelCopy];
      [(HDSSetupSession *)self _logUsageMetrics:infoCopy];
      [(HDSSetupSession *)self _logPerformanceMetrics:infoCopy];
      [(HDSSetupSession *)self _logHomeKitPerformanceMetrics];
      additionalMetrics = self->_additionalMetrics;
      if (additionalMetrics)
      {
        v15 = [(NSDictionary *)additionalMetrics mutableCopy];
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v16 = v15;
      v37[0] = labelCopy;
      v36[0] = @"label";
      v36[1] = @"errDomain";
      domain = [infoCopy domain];
      v18 = domain;
      v19 = @"?";
      if (domain)
      {
        v19 = domain;
      }

      v37[1] = v19;
      v36[2] = @"errCode";
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(infoCopy, "code")}];
      v37[2] = v20;
      v36[3] = @"totalMs";
      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:(self->_totalSecs * 1000.0)];
      v37[3] = v21;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
      [v16 addEntriesFromDictionary:v22];

      HDSMetricsLog(@"com.apple.sharing.ASSetupError", v16);
    }

    if (isInternalBuild() && self->_homePodSysDropCapable && _os_feature_enabled_impl() && +[HDSDefaults sysDropEnabled](HDSDefaults, "sysDropEnabled") && !-[SysDropSession sysDropActivated](self->_sysDropSession, "sysDropActivated") && !self->_isCLIMode && !self->_isConnectionError && (!-[HDSSetupSession _isPreflightError:](self, "_isPreflightError:", infoCopy) || +[HDSDefaults sysDropForceErrorEarlyEnabled](HDSDefaults, "sysDropForceErrorEarlyEnabled") && [infoCopy code] == 301006))
    {
      [(HDSSetupSession *)self _startSysDropSysdiagnoseRequest:infoCopy];
      goto LABEL_37;
    }

    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _reportErrorWithExtaInfo:label:dict:];
    }

    [(SysDropSession *)self->_sysDropSession setSysDropFailed:1];
    [(HDSSetupSession *)self _cleanupSession];
    v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v24 = v23;
    if (infoCopy)
    {
      [v23 setObject:infoCopy forKeyedSubscript:@"eo"];
      if (!dictCopy)
      {
LABEL_34:
        progressHandler = self->_progressHandler;
        if (progressHandler)
        {
          progressHandler[2](progressHandler, 30, v24);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = *MEMORY[0x277CCA590];
      v34 = *MEMORY[0x277CCA450];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:DebugGetErrorString()];
      v29 = v28;
      v30 = @"?";
      if (v28)
      {
        v30 = v28;
      }

      v35 = v30;
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v32 = [v26 errorWithDomain:v27 code:-6700 userInfo:v31];
      [v24 setObject:v32 forKeyedSubscript:@"eo"];

      if (!dictCopy)
      {
        goto LABEL_34;
      }
    }

    [v24 addEntriesFromDictionary:dictCopy];
    goto LABEL_34;
  }

LABEL_37:
}

- (id)createErrorDictionary:(unsigned int)dictionary ssid:(id)ssid
{
  v4 = *&dictionary;
  ssidCopy = ssid;
  v6 = objc_opt_new();
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  [v6 setObject:v7 forKeyedSubscript:@"hds_e_t"];

  if (ssidCopy)
  {
    [v6 setObject:ssidCopy forKeyedSubscript:@"hds_w_s"];
  }

  return v6;
}

- (void)_setupAudio
{
  v3 = [getAVAudioSessionClass(self a2)];
  audioSession = self->_audioSession;
  self->_audioSession = v3;

  v5 = self->_audioSession;
  v40 = 0;
  v6 = [(AVAudioSession *)v5 setEligibleForBTSmartRoutingConsideration:0 error:&v40];
  v7 = v40;
  v8 = v7;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v7 = _LogCategory_Initialize(), v7))
    {
      v9 = "no";
      if (v6)
      {
        v9 = "yes";
      }

      v33 = v9;
      v34 = v8;
      v7 = LogPrintF();
    }
  }

  v10 = self->_audioSession;
  v11 = getAVAudioSessionCategoryAmbient(v7);
  v39 = 0;
  v12 = [(AVAudioSession *)v10 setCategory:v11 error:&v39];
  v13 = v39;

  if (!v12)
  {
    _setupAudio = [(HDSSetupSession *)self _logMetricsForSoftError:v13 label:@"PreSetup-SetupAudio"];
    if (gLogCategory_HDSSetupSession <= 60)
    {
      if (gLogCategory_HDSSetupSession != -1 || (_setupAudio = _LogCategory_Initialize(), _setupAudio))
      {
        _setupAudio = [HDSSetupSession _setupAudio];
      }
    }
  }

  v15 = self->_audioSession;
  v16 = getAVAudioSessionModeDefault(_setupAudio);
  v38 = v13;
  v17 = [(AVAudioSession *)v15 setMode:v16 error:&v38];
  v18 = v38;

  if (!v17)
  {
    [(HDSSetupSession *)self _logMetricsForSoftError:v18 label:@"PreSetup-SetupAudio"];
    if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _setupAudio];
    }
  }

  v19 = self->_audioSession;
  v37 = v18;
  v20 = [(AVAudioSession *)v19 setActive:1 error:&v37, v33, v34];
  v21 = v37;

  if (!v20)
  {
    [(HDSSetupSession *)self _logMetricsForSoftError:v21 label:@"PreSetup-SetupAudio"];
    if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _setupAudio];
    }
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v23 = getAVAudioSessionInterruptionNotification(defaultCenter);
  [defaultCenter addObserver:self selector:sel_audioSessionInterrupted_ name:v23 object:self->_audioSession];

  v24 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HomeDeviceSetup"];
  v25 = [v24 URLForResource:@"HomePodSetupSource1-b238.m4a" withExtension:0];
  if (v25)
  {
    v36 = v21;
    v26 = [objc_alloc(getAVAudioPlayerClass()) initWithContentsOfURL:v25 error:&v36];
    v27 = v36;

    audioPlayerStart = self->_audioPlayerStart;
    self->_audioPlayerStart = v26;

    [(AVAudioPlayer *)self->_audioPlayerStart setDelegate:self];
    [(AVAudioPlayer *)self->_audioPlayerStart prepareToPlay];
    if (!self->_audioPlayerStart)
    {
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _setupAudio];
      }

      [(HDSSetupSession *)self _logMetricsForSoftError:v27 label:@"PreSetup-SetupAudio"];
    }
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _setupAudio];
    }

    v27 = v21;
  }

  v29 = [v24 URLForResource:@"HomePodSetupSource2-b238.m4a" withExtension:0];

  if (v29)
  {
    v35 = v27;
    v30 = [objc_alloc(getAVAudioPlayerClass()) initWithContentsOfURL:v29 error:&v35];
    v31 = v35;

    audioPlayerStep = self->_audioPlayerStep;
    self->_audioPlayerStep = v30;

    [(AVAudioPlayer *)self->_audioPlayerStep setDelegate:self];
    [(AVAudioPlayer *)self->_audioPlayerStep prepareToPlay];
    if (!self->_audioPlayerStep)
    {
      if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession _setupAudio];
      }

      [(HDSSetupSession *)self _logMetricsForSoftError:v31 label:@"PreSetup-SetupAudio"];
    }
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession _setupAudio];
    }

    v31 = v27;
  }
}

- (unint64_t)_peerDeviceSupportedStereoPairVersions
{
  if ([(SFDevice *)self->_peerDevice deviceModelCode]== 5)
  {
    v3 = 2;
  }

  else if ([(SFDevice *)self->_peerDevice deviceModelCode]== 6)
  {
    if ([(SFDevice *)self->_peerDevice deviceType]== 2)
    {
      v3 = 8;
    }

    else
    {
      v3 = 4;
    }
  }

  else
  {
    v3 = 1;
  }

  if ([(SFDevice *)self->_peerDevice deviceModelCode]== 8)
  {
    return 16;
  }

  else
  {
    return v3;
  }
}

- (void)audioPlayerDecodeErrorDidOccur:(id)occur error:(id)error
{
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__HDSSetupSession_audioPlayerDecodeErrorDidOccur_error___block_invoke;
  v8[3] = &unk_2797142D0;
  v9 = errorCopy;
  selfCopy = self;
  v7 = errorCopy;
  dispatch_async(dispatchQueue, v8);
}

void __56__HDSSetupSession_audioPlayerDecodeErrorDidOccur_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    [*(a1 + 40) _logMetricsForSoftError:v2 label:@"SecureConnection-AudioPasscode"];
    if (gLogCategory_HDSSetupSession > 60)
    {
      goto LABEL_8;
    }

    if (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize())
    {
      __56__HDSSetupSession_audioPlayerDecodeErrorDidOccur_error___block_invoke_cold_1();
    }
  }

  if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __56__HDSSetupSession_audioPlayerDecodeErrorDidOccur_error___block_invoke_cold_1();
  }

LABEL_8:
  v3 = *(*(a1 + 40) + 72);
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *(a1 + 40);
    v5 = *(v4 + 72);
    *(v4 + 72) = 0;
  }
}

- (void)audioPlayerDidFinishPlaying:(id)playing successfully:(BOOL)successfully
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__HDSSetupSession_audioPlayerDidFinishPlaying_successfully___block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __60__HDSSetupSession_audioPlayerDidFinishPlaying_successfully___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __60__HDSSetupSession_audioPlayerDidFinishPlaying_successfully___block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = 0;
  }
}

- (void)audioSessionInterrupted:(id)interrupted
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HDSSetupSession_audioSessionInterrupted___block_invoke;
  block[3] = &unk_279713FF0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __43__HDSSetupSession_audioSessionInterrupted___block_invoke(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __43__HDSSetupSession_audioSessionInterrupted___block_invoke_cold_1();
  }

  v2 = *(*(a1 + 32) + 72);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(a1 + 32);
    v4 = *(v3 + 72);
    *(v3 + 72) = 0;
  }
}

- (void)forcePassCode:(id)code
{
  codeCopy = code;
  if (IsAppleInternalBuild())
  {
    v4 = [codeCopy copy];
    forcedPasscode = self->_forcedPasscode;
    self->_forcedPasscode = v4;
  }
}

- (void)forceCLIPassCode:(id)code
{
  codeCopy = code;
  if (IsAppleInternalBuild())
  {
    v4 = [codeCopy copy];
    forcedCLIPasscode = self->_forcedCLIPasscode;
    self->_forcedCLIPasscode = v4;
  }
}

- (void)cancelSoftwareUpdateNoSetup
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession cancelSoftwareUpdateNoSetup];
  }

  if (self->_homePodSoftwareUpdateCancelled && self->_homePodSoftwareUpdateUpdateInstalled)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession cancelSoftwareUpdateNoSetup];
    }
  }

  else
  {
    self->_homePodSoftwareUpdateCancelled = 1;
    sfSession = self->_sfSession;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __46__HDSSetupSession_cancelSoftwareUpdateNoSetup__block_invoke;
    v5[3] = &unk_2797145F0;
    v5[4] = self;
    [(SFSession *)sfSession sendRequestID:@"unsetup_hp_sunosetup_cancel_su" options:&unk_2864E8040 request:v3 responseHandler:v5];
  }
}

void __46__HDSSetupSession_cancelSoftwareUpdateNoSetup__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *(v10 + 1800);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__HDSSetupSession_cancelSoftwareUpdateNoSetup__block_invoke_2;
  v15[3] = &unk_2797151B0;
  v16 = v8;
  v17 = v7;
  v18 = v10;
  v19 = v9;
  v12 = v9;
  v13 = v7;
  v14 = v8;
  dispatch_async(v11, v15);
}

void __46__HDSSetupSession_cancelSoftwareUpdateNoSetup__block_invoke_2(uint64_t a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    *(*(a1 + 48) + 1381) = 0;
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __46__HDSSetupSession_cancelSoftwareUpdateNoSetup__block_invoke_2_cold_1();
    }

    v3 = *(a1 + 40);
    v2 = *(a1 + 48);

    [v2 _reportError:v3 label:@"SUBS purge error"];
    return;
  }

  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __46__HDSSetupSession_cancelSoftwareUpdateNoSetup__block_invoke_2_cold_2();
    if (Int64)
    {
LABEL_12:
      *(*(a1 + 48) + 1381) = 0;
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        __46__HDSSetupSession_cancelSoftwareUpdateNoSetup__block_invoke_2_cold_3();
      }

      v8[1] = @"unsetup_hp_su_applying";
      v9[0] = &unk_2864E8240;
      v8[0] = @"spe";
      v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
      v9[1] = v5;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

      [*(a1 + 48) _handlePeerEvent:v6 flags:0];
      return;
    }
  }

  else if (Int64)
  {
    goto LABEL_12;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __46__HDSSetupSession_cancelSoftwareUpdateNoSetup__block_invoke_2_cold_4();
  }

  v7 = *(a1 + 48);

  [v7 homePodSoftwareUpdateNonSetupDidComplete];
}

- (BOOL)isJSEnabled
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession isJSEnabled];
  }

  if (self->_homePodCapableOfJS)
  {
    selectedHome = [(HDSSetupSession *)self selectedHome];
    if (selectedHome)
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [(HDSSetupSession *)selectedHome isJSEnabled];
      }

      _homePodsInSelectedHome = [(HDSSetupSession *)self _homePodsInSelectedHome];
      v5 = [_homePodsInSelectedHome count];

      if (v5)
      {
        v7 = [selectedHome siriPhraseOptions] != 1;
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          [HDSSetupSession isJSEnabled];
        }
      }

      else
      {
        sharedPreferences = [getVTPreferencesClass_0(v6) sharedPreferences];
        v12 = 0;
        v9 = [sharedPreferences getUserPreferredVoiceTriggerPhraseTypeForDeviceType:0 endpointId:0 error:&v12];
        v10 = v12;

        v7 = v9 != 0;
        if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }
      }
    }

    else
    {
      if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession isJSEnabled];
      }

      v7 = 0;
    }
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession isJSEnabled];
    }

    return 0;
  }

  return v7;
}

- (BOOL)_isVoiceRecognitionSupported
{
  selectedSiriLanguageCode = [(HDSSetupSession *)self selectedSiriLanguageCode];
  multiUserSupportedLanguages = self->_multiUserSupportedLanguages;
  if (multiUserSupportedLanguages)
  {
    array = multiUserSupportedLanguages;
  }

  else
  {
    array = [MEMORY[0x277CBEA60] array];
  }

  v6 = array;
  if (selectedSiriLanguageCode)
  {
    v7 = [(NSArray *)array containsObject:selectedSiriLanguageCode];
  }

  else
  {
    v7 = 0;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v7;
}

- (void)loadMultiUserSupportedLanguages
{
  selfCopy = self;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (self = _LogCategory_Initialize(), self))
    {
      self = [HDSSetupSession loadMultiUserSupportedLanguages];
    }
  }

  v3 = objc_alloc_init(getAFSettingsConnectionClass_0(self));
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__HDSSetupSession_loadMultiUserSupportedLanguages__block_invoke;
  v4[3] = &unk_2797150E8;
  v4[4] = selfCopy;
  [v3 fetchSupportedMultiUserLanguageCodes:v4];
}

void __50__HDSSetupSession_loadMultiUserSupportedLanguages__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __50__HDSSetupSession_loadMultiUserSupportedLanguages__block_invoke_cold_1();
    }
  }

  else
  {
    v7 = *(*(a1 + 32) + 1800);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __50__HDSSetupSession_loadMultiUserSupportedLanguages__block_invoke_2;
    v10[3] = &unk_2797142D0;
    v8 = v5;
    v9 = *(a1 + 32);
    v11 = v8;
    v12 = v9;
    dispatch_async(v7, v10);
  }
}

void __50__HDSSetupSession_loadMultiUserSupportedLanguages__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __50__HDSSetupSession_loadMultiUserSupportedLanguages__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);
  v3 = (*(a1 + 40) + 536);

  objc_storeStrong(v3, v2);
}

- (id)passwordForSSID:(id)d
{
  dCopy = d;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v5 = *MEMORY[0x277CBED28];
  CFDictionarySetValue(Mutable, @"HIDDEN_NETWORK", *MEMORY[0x277CBED28]);
  CFDictionarySetValue(Mutable, @"SCAN_DIRECTED", v5);
  CFDictionarySetValue(Mutable, @"SSID_STR", dCopy);
  v6 = WiFiNetworkCreate();
  v7 = WiFiNetworkCopyPassword();
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession passwordForSSID:];
  }

  CFRelease(Mutable);
  CFRelease(v6);

  return v7;
}

- (id)createWiFiConfigurationForSetup:(id)setup password:(id)password
{
  v35 = *MEMORY[0x277D85DE8];
  setupCopy = setup;
  passwordCopy = password;
  v8 = objc_opt_new();
  v32 = 0;
  v9 = &OBJC_IVAR___SysDropService__invalidateCalled;
  if (!self->_homePodScanResults)
  {
    goto LABEL_15;
  }

  if (_os_feature_enabled_impl())
  {
    v33 = 0;
    os_eligibility_get_domain_answer();
LABEL_15:
    if (_os_feature_enabled_impl())
    {
      v33 = 0;
      os_eligibility_get_domain_answer();
      v18 = !self->_primaryResidentSSIDProtected;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_27;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_homePodScanResults;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v27 = passwordCopy;
    v13 = *v29;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        CFStringGetTypeID();
        v15 = CFDictionaryGetTypedValue();
        v16 = v15;
        if (!v32)
        {
          if ([v15 isEqualToString:setupCopy])
          {
            Int64 = CFDictionaryGetInt64();
            if (!v32)
            {
              v19 = Int64;
              v18 = Int64 != 0;
              v9 = &OBJC_IVAR___SysDropService__invalidateCalled;
              if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
              {
                v20 = "no";
                if (v19)
                {
                  v20 = "yes";
                }

                v25 = v16;
                v26 = v20;
                LogPrintF();
              }

              passwordCopy = v27;
              goto LABEL_26;
            }
          }
        }
      }

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v18 = 0;
    passwordCopy = v27;
    v9 = &OBJC_IVAR___SysDropService__invalidateCalled;
  }

  else
  {
    v18 = 0;
  }

LABEL_26:

LABEL_27:
  [v8 setObject:setupCopy forKeyedSubscript:{@"ssid", v25, v26}];
  if (passwordCopy || v18)
  {
    if (passwordCopy)
    {
      v21 = passwordCopy;
    }

    else
    {
      v21 = &stru_2864DB950;
    }

    [v8 setObject:v21 forKeyedSubscript:@"password"];
  }

  v22 = v9[584];
  if (v22 <= 30 && (v22 != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession createWiFiConfigurationForSetup:password:];
  }

  v23 = [v8 copy];

  return v23;
}

- (id)fetchPhonesSSID
{
  v2 = WiFiCopyCurrentNetworkInfoEx();
  CFStringGetTypeID();
  v3 = CFDictionaryGetTypedValue();

  return v3;
}

- (void)fetchHomePodLoggingProfile:(id)profile
{
  profileCopy = profile;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession fetchHomePodLoggingProfile:];
  }

  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"https://secure-appldnld.apple.com/HomeProfiles/HPSetup.mobileconfig"];
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__HDSSetupSession_fetchHomePodLoggingProfile___block_invoke;
  block[3] = &unk_279714860;
  v10 = v5;
  selfCopy = self;
  v12 = profileCopy;
  v7 = profileCopy;
  v8 = v5;
  dispatch_async(v6, block);
}

void __46__HDSSetupSession_fetchHomePodLoggingProfile___block_invoke(void *a1)
{
  v2 = [MEMORY[0x277CCAD30] sharedSession];
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __46__HDSSetupSession_fetchHomePodLoggingProfile___block_invoke_2;
  v9 = &unk_279715400;
  v3 = a1[4];
  v4 = a1[6];
  v10 = a1[5];
  v11 = v4;
  v5 = [v2 dataTaskWithURL:v3 completionHandler:&v6];
  [v5 resume];
}

void __46__HDSSetupSession_fetchHomePodLoggingProfile___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15 = a2;
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __46__HDSSetupSession_fetchHomePodLoggingProfile___block_invoke_2_cold_1();
    }

    [*(a1 + 32) _reportError:v8 label:@"HPProfileFetch"];
  }

  else if (v15)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __46__HDSSetupSession_fetchHomePodLoggingProfile___block_invoke_2_cold_2();
    }

    v9 = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [v9 containerURLForSecurityApplicationGroupIdentifier:@"group.homedevicesetup.diagnostics"];
    v11 = [v10 path];

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v11, @"/Library/Caches/HPSetup.mobileconfig"];
    [v15 writeToFile:v12 atomically:1];
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __46__HDSSetupSession_fetchHomePodLoggingProfile___block_invoke_2_cold_3();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      __46__HDSSetupSession_fetchHomePodLoggingProfile___block_invoke_2_cold_4();
    }

    v13 = *(a1 + 32);
    v14 = NSErrorF();
    [v13 _reportError:v14 label:@"ProfileFileTransfer"];
  }
}

- (void)removeSysDropProfile
{
  v20 = *MEMORY[0x277D85DE8];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession removeSysDropProfile];
  }

  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] installedProfilesWithFilterFlags:3];

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession removeSysDropProfile];
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
        v11 = [identifier isEqualToString:@"com.apple.homedevicesetup.sysdrop"];

        if (v11)
        {
          if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
          {
            [HDSSetupSession removeSysDropProfile];
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

- (BOOL)shouldDoSysDrop:(unsigned int)drop
{
  if (drop == 3 || drop == 2)
  {
    return self->_homePodSysDropCapableV2 && self->_enablementProfileInstalled;
  }

  else
  {
    return drop == 1;
  }
}

- (int)wifiTypeForString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    if ([stringCopy isEqualToString:@"WEP"])
    {
      v5 = 1;
    }

    else if ([v4 isEqualToString:@"WPA"])
    {
      v5 = 2;
    }

    else if ([v4 isEqualToString:@"WPA2"])
    {
      v5 = 3;
    }

    else if ([v4 isEqualToString:@"WPA3"])
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)filterNetworksForHomePod:(id)pod
{
  v28 = *MEMORY[0x277D85DE8];
  podCopy = pod;
  v22 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v4 = podCopy;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v8 = @"AppleWiFi";
    v9 = @"hds_hp_scn_io";
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        CFStringGetTypeID();
        v12 = CFDictionaryGetTypedValue();
        v13 = v12;
        if (v12 && ([v12 hasPrefix:v8] & 1) == 0)
        {
          if (CFDictionaryGetInt64())
          {
            [v22 addObject:v11];
          }

          else
          {
            v14 = [(HDSSetupSession *)self passwordForSSID:v13];
            if (v14)
            {
              v15 = [v11 mutableCopy];
              [v15 setObject:v14 forKeyedSubscript:@"hds_hp_scn_pw"];
              v16 = v4;
              v17 = v8;
              v18 = v9;
              v19 = [v15 copy];
              [v22 addObject:v19];

              v9 = v18;
              v8 = v17;
              v4 = v16;
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  return v22;
}

- (void)preflightCheckPhonesNetwork
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  currentStageLabel = self->_currentStageLabel;
  self->_currentStageLabel = @"PreflightiOSWiFi";

  v4 = WiFiCopyCurrentNetworkInfoEx();
  Int64Ranged = CFDictionaryGetInt64Ranged();
  v6 = [v4 mutableCopy];
  [v6 removeObjectForKey:@"password"];
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  CFStringGetTypeID();
  v7 = CFDictionaryGetTypedValue();
  if (!v7)
  {
    v9 = NSErrorWithOSStatusF(301000, "No iOS WiFi SSID");
    if (!self->_wifiSetupState)
    {
      signpostLog = [objc_opt_class() signpostLog];
      signpostID = [(HDSSetupSession *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v18 = signpostID;
        if (os_signpost_enabled(signpostLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v18, "PreflightiOSWiFi", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID2 = [(HDSSetupSession *)self signpostID];
    if (signpostID2 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_83;
    }

    v15 = signpostID2;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_83;
    }

    *buf = 0;
LABEL_81:
    v48 = buf;
LABEL_82:
    _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog2, OS_SIGNPOST_INTERVAL_END, v15, "PreflightiOSWiFi", "", v48, 2u);
LABEL_83:

    self->_wifiSetupState = 3;
LABEL_84:
    [(HDSSetupSession *)self _reportError:v9 label:@"PreflightiOSWiFi", v58, v59, *v60];

    goto LABEL_85;
  }

  v8 = [v4 objectForKeyedSubscript:@"password"];
  if (v8 || ([v4 objectForKeyedSubscript:@"open"], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v31 = [v4 objectForKeyedSubscript:@"enterprise"];

    if (!v31)
    {
      if (gLogCategory_HDSSetupSession <= 90 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
      {
        [HDSSetupSession preflightCheckPhonesNetwork];
      }

      if (!self->_wifiSetupState)
      {
        signpostLog3 = [objc_opt_class() signpostLog];
        signpostID3 = [(HDSSetupSession *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v34 = signpostID3;
          if (os_signpost_enabled(signpostLog3))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog3, OS_SIGNPOST_INTERVAL_BEGIN, v34, "PreflightiOSWiFi", "", buf, 2u);
          }
        }
      }

      signpostLog4 = [objc_opt_class() signpostLog];
      signpostID4 = [(HDSSetupSession *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v37 = signpostID4;
        if (os_signpost_enabled(signpostLog4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog4, OS_SIGNPOST_INTERVAL_END, v37, "PreflightiOSWiFi", "", buf, 2u);
        }
      }

      self->_wifiSetupState = 3;
      v9 = NSErrorWithOSStatusF(301041, "NoWiFiPassword");
      goto LABEL_84;
    }
  }

  if (self->_preventAppleWiFi && (([v7 isEqual:@"AppleWiFi"] & 1) != 0 || objc_msgSend(v7, "isEqual:", @"AppleWiFiSecure")))
  {
    v9 = NSErrorWithOSStatusF(301020, "AppleWiFi not allowed");
    if (!self->_wifiSetupState)
    {
      signpostLog5 = [objc_opt_class() signpostLog];
      signpostID5 = [(HDSSetupSession *)self signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v12 = signpostID5;
        if (os_signpost_enabled(signpostLog5))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog5, OS_SIGNPOST_INTERVAL_BEGIN, v12, "PreflightiOSWiFi", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID6 = [(HDSSetupSession *)self signpostID];
    if (signpostID6 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_83;
    }

    v15 = signpostID6;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_83;
    }

    *buf = 0;
    goto LABEL_81;
  }

  if (CFDictionaryGetInt64())
  {
    if (Int64Ranged != 1 && (NSPrintF("Not shareable (%d)", Int64Ranged), (v20 = objc_claimAutoreleasedReturnValue()) != 0) || [(SFDevice *)self->_peerDevice osVersion]<= 0xA && (NSPrintF("Peer old OS (%d)", [(SFDevice *)self->_peerDevice osVersion]), (v20 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v21 = v20;
      v22 = NSErrorWithOSStatusF(301034, "Enterprise WiFi not supported: %@", v20);
      if (!self->_wifiSetupState)
      {
        signpostLog6 = [objc_opt_class() signpostLog];
        signpostID7 = [(HDSSetupSession *)self signpostID];
        if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v25 = signpostID7;
          if (os_signpost_enabled(signpostLog6))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog6, OS_SIGNPOST_INTERVAL_BEGIN, v25, "PreflightiOSWiFi", "", buf, 2u);
          }
        }
      }

      signpostLog7 = [objc_opt_class() signpostLog];
      signpostID8 = [(HDSSetupSession *)self signpostID];
      if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v28 = signpostID8;
        if (os_signpost_enabled(signpostLog7))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog7, OS_SIGNPOST_INTERVAL_END, v28, "PreflightiOSWiFi", "", buf, 2u);
        }
      }

      self->_wifiSetupState = 3;
      [(HDSSetupSession *)self _reportError:v22 label:@"PreflightiOSWiFi"];

      goto LABEL_85;
    }
  }

  wifiIsCaptive = CFDictionaryGetInt64() != 0;
  self->_wifiIsCaptive = wifiIsCaptive;
  peerSupportsCaptiveNetworks = self->_peerSupportsCaptiveNetworks;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (v38 = _LogCategory_Initialize(), wifiIsCaptive = self->_wifiIsCaptive, v38))
    {
      v58 = wifiIsCaptive;
      v59 = !peerSupportsCaptiveNetworks;
      LogPrintF();
      LOBYTE(wifiIsCaptive) = self->_wifiIsCaptive;
    }
  }

  if (wifiIsCaptive && !peerSupportsCaptiveNetworks)
  {
    v9 = NSErrorWithOSStatusF(301004, "WiFi network is captive");
    if (!self->_wifiSetupState)
    {
      signpostLog8 = [objc_opt_class() signpostLog];
      signpostID9 = [(HDSSetupSession *)self signpostID];
      if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v41 = signpostID9;
        if (os_signpost_enabled(signpostLog8))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog8, OS_SIGNPOST_INTERVAL_BEGIN, v41, "PreflightiOSWiFi", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID10 = [(HDSSetupSession *)self signpostID];
    if (signpostID10 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_83;
    }

    v15 = signpostID10;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_83;
    }

    *buf = 0;
    goto LABEL_81;
  }

  if (Int64Ranged >= 2 && (Int64Ranged != 5 || !peerSupportsCaptiveNetworks))
  {
    v43 = CUWiFiShareableStatusToString(Int64Ranged);
    v9 = NSErrorWithOSStatusF(301004, "WiFi network not shareable (%s)", v43);
    if (!self->_wifiSetupState)
    {
      signpostLog9 = [objc_opt_class() signpostLog];
      signpostID11 = [(HDSSetupSession *)self signpostID];
      if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v46 = signpostID11;
        if (os_signpost_enabled(signpostLog9))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog9, OS_SIGNPOST_INTERVAL_BEGIN, v46, "PreflightiOSWiFi", "", buf, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID12 = [(HDSSetupSession *)self signpostID];
    if (signpostID12 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_83;
    }

    v15 = signpostID12;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_83;
    }

    *buf = 0;
    goto LABEL_81;
  }

  *buf = 0;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  if (v4)
  {
    if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
    {
      [HDSSetupSession preflightCheckPhonesNetwork];
    }
  }

  else if (gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  Int64 = CFDictionaryGetInt64();
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  if (!self->_homePod6GCapable && Int64)
  {
    v9 = NSErrorWithOSStatusF(4294896158, "HomePod Not 6G Capable");
    if (!self->_wifiSetupState)
    {
      signpostLog10 = [objc_opt_class() signpostLog];
      signpostID13 = [(HDSSetupSession *)self signpostID];
      if (signpostID13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v52 = signpostID13;
        if (os_signpost_enabled(signpostLog10))
        {
          *v60 = 0;
          _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog10, OS_SIGNPOST_INTERVAL_BEGIN, v52, "PreflightiOSWiFi", "", v60, 2u);
        }
      }
    }

    signpostLog2 = [objc_opt_class() signpostLog];
    signpostID14 = [(HDSSetupSession *)self signpostID];
    if (signpostID14 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_83;
    }

    v15 = signpostID14;
    if (!os_signpost_enabled(signpostLog2))
    {
      goto LABEL_83;
    }

    *v60 = 0;
    v48 = v60;
    goto LABEL_82;
  }

  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  self->_wifiCCA = CFDictionaryGetInt64();
  if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  self->_wifiChannel = CFDictionaryGetInt64();
  if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  CFStringGetTypeID();
  v54 = CFDictionaryGetTypedValue();
  wifiOUI = self->_wifiOUI;
  self->_wifiOUI = v54;

  if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  self->_wifiRSSI = CFDictionaryGetInt64();
  if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

  CFStringGetTypeID();
  v56 = CFDictionaryGetTypedValue();
  wifiSecurityString = self->_wifiSecurityString;
  self->_wifiSecurityString = v56;

  if (*buf && gLogCategory_HDSSetupSession <= 60 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession preflightCheckPhonesNetwork];
  }

LABEL_85:
}

- (id)fetchAltDSIDAccount
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  aa_primaryAppleAccount = [defaultStore aa_primaryAppleAccount];
  aa_altDSID = [aa_primaryAppleAccount aa_altDSID];
  v6 = [v2 aa_appleAccountWithAltDSID:aa_altDSID];

  return v6;
}

- (id)fetchTermsInfo
{
  if (self->_deviceModel)
  {
    deviceModel = self->_deviceModel;
  }

  else
  {
    deviceModel = @"?";
  }

  if (self->_deviceProductName)
  {
    deviceProductName = self->_deviceProductName;
  }

  else
  {
    deviceProductName = @"HomePod";
  }

  if (self->_deviceProductVersion)
  {
    deviceProductVersion = self->_deviceProductVersion;
  }

  else
  {
    deviceProductVersion = @"?";
  }

  deviceBuildVersion = self->_deviceBuildVersion;
  if (!deviceBuildVersion)
  {
    deviceBuildVersion = @"?";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = deviceBuildVersion;
  v8 = deviceProductVersion;
  v9 = deviceProductName;
  v10 = deviceModel;
  v11 = [[v6 alloc] initWithFormat:@"<%@> <%@;%@;%@>", v10, v9, v8, v7];

  return v11;
}

- (BOOL)userAtHomeLocation:(id)location
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  locationCopy = location;
  v4 = [locationCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(locationCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) homeLocationStatus] == 1)
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [locationCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (id)lastSSIDUsed
{
  wifiSetupType = self->_wifiSetupType;
  if (wifiSetupType)
  {
    if (wifiSetupType == 3)
    {
      v3 = 1632;
    }

    else
    {
      if (wifiSetupType != 2)
      {
        return @"?";
      }

      v3 = 1504;
    }
  }

  else
  {
    v3 = 1576;
  }

  return *(&self->super.isa + v3);
}

- (void)validateHomeName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    [HDSSetupSession validateHomeName:completion:];
  }

  v8 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HDSSetupSession_validateHomeName_completion___block_invoke;
  block[3] = &unk_279714860;
  block[4] = self;
  v12 = nameCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = nameCopy;
  dispatch_async(v8, block);
}

void __47__HDSSetupSession_validateHomeName_completion___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 1008) homeKitHomeManager];
  if (v2 && ([*(*(a1 + 32) + 1008) homeKitHomeManager], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "homes"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v2, v4))
  {
    v30[0] = 0;
    v30[1] = v30;
    v30[2] = 0x2020000000;
    v31 = 1;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v5 = dispatch_group_create();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v6 = [*(*(a1 + 32) + 1008) homeKitHomeManager];
    obj = [v6 homes];

    v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v7)
    {
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          dispatch_group_enter(v5);
          v11 = [*(*(a1 + 32) + 1008) homeKitHomeManager];
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = __47__HDSSetupSession_validateHomeName_completion___block_invoke_2;
          v20[3] = &unk_279715450;
          v12 = *(a1 + 40);
          v20[4] = *(a1 + 32);
          v22 = v30;
          v23 = v28;
          v21 = v5;
          [v11 checkName:v12 inHome:v10 withValidationOptions:5 completionHandler:v20];
        }

        v7 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v7);
    }

    v13 = *(*(a1 + 32) + 1800);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__HDSSetupSession_validateHomeName_completion___block_invoke_4;
    block[3] = &unk_279715478;
    v18 = v30;
    v19 = v28;
    v17 = *(a1 + 48);
    dispatch_group_notify(v5, v13, block);

    _Block_object_dispose(v28, 8);
    _Block_object_dispose(v30, 8);
  }

  else
  {
    v14 = *(*(a1 + 48) + 16);

    v14();
  }
}

void __47__HDSSetupSession_validateHomeName_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(*(a1 + 32) + 1800);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__HDSSetupSession_validateHomeName_completion___block_invoke_3;
  block[3] = &unk_279715428;
  v7 = *(a1 + 56);
  v12 = v5;
  v14 = v7;
  v10 = *(a1 + 40);
  v8 = v10;
  v13 = v10;
  v9 = v5;
  dispatch_async(v6, block);
}

void __47__HDSSetupSession_validateHomeName_completion___block_invoke_3(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 48) + 8);
    if (*(v2 + 24) == 1)
    {
      *(v2 + 24) = 0;
    }

    if (!*(*(*(a1 + 56) + 8) + 24))
    {
      v3 = [*(a1 + 32) code];
      if (v3 > 35)
      {
        if (v3 == 36)
        {
          v4 = *(*(a1 + 56) + 8);
          v5 = 2;
        }

        else
        {
          if (v3 != 60)
          {
            goto LABEL_19;
          }

          v4 = *(*(a1 + 56) + 8);
          v5 = 3;
        }
      }

      else if (v3 == 31)
      {
        v4 = *(*(a1 + 56) + 8);
        v5 = 1;
      }

      else
      {
        if (v3 != 35)
        {
          goto LABEL_19;
        }

        v4 = *(*(a1 + 56) + 8);
        v5 = 4;
      }

      *(v4 + 24) = v5;
    }
  }

  else if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __47__HDSSetupSession_validateHomeName_completion___block_invoke_3_cold_1();
  }

LABEL_19:
  v6 = *(a1 + 40);

  dispatch_group_leave(v6);
}

uint64_t __47__HDSSetupSession_validateHomeName_completion___block_invoke_4(uint64_t a1)
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    __47__HDSSetupSession_validateHomeName_completion___block_invoke_4_cold_1();
  }

  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (id)dictForNetworkName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  homePodScanResults = self->_homePodScanResults;
  if (homePodScanResults)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = homePodScanResults;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          CFStringGetTypeID();
          v12 = CFDictionaryGetTypedValue();
          v13 = v12;
          if (v12 && ([v12 isEqualToString:{nameCopy, v16}] & 1) != 0)
          {
            v14 = v11;

            goto LABEL_14;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_14:
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)showWiFiPicker
{
  retryPickerCount = self->_retryPickerCount;
  if (retryPickerCount)
  {
    return retryPickerCount > 0;
  }

  wiFiInfo = [(HMHomeNetworkInfo *)self->_primaryResidentNetwork wiFiInfo];
  sSID = [wiFiInfo SSID];
  v3 = sSID && self->_homePodScanContainsPrimary && self->_phoneMatchesPrimary && self->_hasAlreadySkipped && !self->_wifiSetupState || !self->_primaryResidentNetwork || !self->_phoneMatchesPrimary || !self->_homePodScanContainsPrimary || self->_retryPickerCount > 0;

  return v3;
}

- (void)_run
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    _runSFSessionStart = [(HDSSetupSession *)self _runSFSessionStart];
    v4 = _runSFSessionStart == 4 || _runSFSessionStart == 2;
    if (v4)
    {
      OUTLINED_FUNCTION_10();
      if (v6 ^ v7 | v4 && (v5 != -1 || _LogCategory_Initialize()))
      {
        identifier = [(SFSession *)self->_sfSession identifier];
        LogPrintF();
      }

      identifier2 = [(SFSession *)self->_sfSession identifier];

      if (identifier2)
      {
        if (!self->_preAuthState)
        {
          [(HDSSetupSession *)self _runPreAuthRequest];
        }

        if (self->_pauseAfterPreAuth && !self->_homePodSoftwareUpdateCancelled)
        {
          OUTLINED_FUNCTION_10();
          if (v6 ^ v7 | v4 && (v56 != -1 || _LogCategory_Initialize()))
          {

            LogPrintF();
          }

          return;
        }

        if ([(HDSSetupSession *)self homePodNeedsSUBeforeSetup]&& !self->_homePodIsSUNoSetup && self->_homePodCanSUNoSetup)
        {
          _runHomePodSoftwareUpdateNonSetupAcknowledgement = [(HDSSetupSession *)self _runHomePodSoftwareUpdateNonSetupAcknowledgement];
          if (_runHomePodSoftwareUpdateNonSetupAcknowledgement != 4 && _runHomePodSoftwareUpdateNonSetupAcknowledgement != 2)
          {
            return;
          }

          if (!self->_isVM && self->_preflightEnabled && (self->_testFlags & 0x400000) == 0)
          {
            _runPreflightWiFi = [(HDSSetupSession *)self _runPreflightWiFi];
            if (_runPreflightWiFi != 4 && _runPreflightWiFi != 2)
            {
              return;
            }
          }

          _runPreAuthAlignmentAndSiri = [(HDSSetupSession *)self _runPreAuthAlignmentAndSiri];
          if (_runPreAuthAlignmentAndSiri != 4 && _runPreAuthAlignmentAndSiri != 2)
          {
            return;
          }

          if (!self->_sfSessionSecured && self->_apcEnabled && (self->_peerFeatureFlags & 1) != 0 && !self->_forcedCLIPasscode)
          {
            if (self->_prefLEDPasscodeEnabled)
            {
              _runLEDPassCodeAlignment = [(HDSSetupSession *)self _runLEDPassCodeAlignment];
              if (_runLEDPassCodeAlignment != 4 && _runLEDPassCodeAlignment != 2)
              {
                return;
              }
            }

            _runAudioPasscode = [(HDSSetupSession *)self _runAudioPasscode];
            if (_runAudioPasscode != 4 && _runAudioPasscode != 2)
            {
              return;
            }
          }

          if (!self->_sfSessionSecured && (self->_siriFlags & 1) != 0 && ![(HDSSetupSession *)self isCompanionSiriLanguageSupportedByHomePod])
          {
            _runSiriLanguage = [(HDSSetupSession *)self _runSiriLanguage];
            if (_runSiriLanguage != 4 && _runSiriLanguage != 2)
            {
              return;
            }
          }

          if (!self->_sfSessionSecured && self->_siriPasscodeEnabled && (self->_peerFeatureFlags & 2) != 0)
          {
            _runSiriPasscode = [(HDSSetupSession *)self _runSiriPasscode];
            if (_runSiriPasscode != 4 && _runSiriPasscode != 2)
            {
              return;
            }
          }

          if ((self->_testFlags & 0x800000) == 0)
          {
            if (!self->_isVM)
            {
              _runWiFiSetup = [(HDSSetupSession *)self _runWiFiSetup];
              if (_runWiFiSetup != 4 && _runWiFiSetup != 2)
              {
                return;
              }
            }

            _runCaptiveJoin = [(HDSSetupSession *)self _runCaptiveJoin];
            if (_runCaptiveJoin != 4 && _runCaptiveJoin != 2)
            {
              return;
            }

            if (self->_prefBonjourTest && (self->_peerFeatureFlags & 0x80) != 0)
            {
              [(HDSSetupSession *)self _runBonjourTest];
            }
          }

          _runForcedHomePodSoftwareUpdateNonSetup = [(HDSSetupSession *)self _runForcedHomePodSoftwareUpdateNonSetup];
          if (_runForcedHomePodSoftwareUpdateNonSetup != 4 && _runForcedHomePodSoftwareUpdateNonSetup != 2)
          {
            return;
          }
        }

        if (self->_homePodSoftwareUpdateStateNonSetup != 4 && !self->_homePodIsSUNoSetup || self->_homePodSoftwareUpdateCancelled || ((v29 = [(HDSSetupSession *)self _runHomePodSoftwareUpdateNonSetupComplete], v29 != 4) ? (v30 = v29 == 2) : (v30 = 1), v30))
        {
          if (!self->_homePodSoftwareUpdateCancelled || ((v31 = [(HDSSetupSession *)self _runHomePodSoftwareUpdateNonSetupCancelled], v31 != 4) ? (v32 = v31 == 2) : (v32 = 1), v32))
          {
            _runSetSessionID = [(HDSSetupSession *)self _runSetSessionID];
            if (_runSetSessionID == 4 || _runSetSessionID == 2)
            {
              _runPreAuth = [(HDSSetupSession *)self _runPreAuth];
              if (_runPreAuth == 4 || _runPreAuth == 2)
              {
                if (!self->_apcState)
                {
                  signpostLog = [objc_opt_class() signpostLog];
                  signpostID = [(HDSSetupSession *)self signpostID];
                  if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
                  {
                    v39 = signpostID;
                    if (os_signpost_enabled(signpostLog))
                    {
                      *buf = 0;
                      _os_signpost_emit_with_name_impl(&dword_252F78000, signpostLog, OS_SIGNPOST_INTERVAL_BEGIN, v39, "AudioPasscode", "", buf, 2u);
                    }
                  }

                  self->_apcState = 11;
                  [(HDSSetupSession *)self _runAudioPasscodeInitRequest];
                }

                if (!_os_feature_enabled_impl() || ((v40 = [(HDSSetupSession *)self _runHH2Upsell], v40 != 4) ? (v41 = v40 == 2) : (v41 = 1), v41))
                {
                  if (!self->_preflightEnabled || (self->_testFlags & 0x400000) != 0 || (self->_isVM || ((v42 = [(HDSSetupSession *)self _runPreflightSSIDCheck], v42 != 4) ? (v43 = v42 == 2) : (v43 = 1), v43)) && ((v44 = [(HDSSetupSession *)self _runPreflightiCloud], v44 != 4) ? (v45 = v44 == 2) : (v45 = 1), v45 && ((v46 = [(HDSSetupSession *)self _runPreflightiTunes], v46 != 4) ? (v47 = v46 == 2) : (v47 = 1), v47)))
                  {
                    _runPreflightCDP = [(HDSSetupSession *)self _runPreflightCDP];
                    if (_runPreflightCDP == 4 || _runPreflightCDP == 2)
                    {
                      if (self->_siriEnablementConfigurationState || ((v50 = [(HDSSetupSession *)self _runSiriEnablementConfigurationFetch], v50 != 4) ? (v51 = v50 == 2) : (v51 = 1), v51))
                      {
                        [(HDSSetupSession *)self _runAuthKitTrustStartIfNeeded];
                        if (self->_enablementProfileInstalled && self->_homePodSysDropCapable && self->_homePodSysDropCapableV2 && +[HDSDefaults sysDropBuildMode]&& !self->_isCLIMode)
                        {
                          _runHomePodLoggingProfileTransferAck = [(HDSSetupSession *)self _runHomePodLoggingProfileTransferAck];
                          if (_runHomePodLoggingProfileTransferAck != 4 && _runHomePodLoggingProfileTransferAck != 2)
                          {
                            return;
                          }

                          if (self->_homePodProfileTransferSelection == 1)
                          {
                            [(HDSSetupSession *)self _runHomePodLoggingProfileTransfer];
                            OUTLINED_FUNCTION_8();
                            if (!v4)
                            {
                              return;
                            }
                          }
                        }

                        else
                        {
                          OUTLINED_FUNCTION_10();
                          if (v6 ^ v7 | v4 && (v52 != -1 || _LogCategory_Initialize()))
                          {
                            if (self->_enablementProfileInstalled)
                            {
                              v53 = "yes";
                            }

                            else
                            {
                              v53 = "no";
                            }

                            if (self->_homePodSysDropCapable)
                            {
                              v54 = "yes";
                            }

                            else
                            {
                              v54 = "no";
                            }

                            if (self->_homePodSysDropCapableV2)
                            {
                              v55 = "yes";
                            }

                            else
                            {
                              v55 = "no";
                            }

                            v160 = v55;
                            v161 = +[HDSDefaults sysDropBuildMode];
                            v157 = v53;
                            v159 = v54;
                            LogPrintF();
                          }
                        }

                        if ([HDSDefaults sysDropForceErrorEarlyEnabled:v157]&& !self->_isCLIMode)
                        {
                          if (!self->_forceFailEarlyState)
                          {
                            v77 = NSErrorF();
                            [(HDSSetupSession *)self _reportError:v77 label:@"TestingDefault"];
                          }

                          self->_forceFailEarlyState = 1;
                          return;
                        }

                        _runPreAuthAlignmentAndSiri2 = [(HDSSetupSession *)self _runPreAuthAlignmentAndSiri];
                        if (_runPreAuthAlignmentAndSiri2 == 4 || _runPreAuthAlignmentAndSiri2 == 2)
                        {
                          if (self->_sfSessionSecured || !self->_apcEnabled || (self->_peerFeatureFlags & 1) == 0 || self->_forcedCLIPasscode || (!self->_prefLEDPasscodeEnabled || ((v59 = [(HDSSetupSession *)self _runLEDPassCodeAlignment], v59 != 4) ? (v60 = v59 == 2) : (v60 = 1), v60)) && ((v61 = [(HDSSetupSession *)self _runAudioPasscode], v61 != 4) ? (v62 = v61 == 2) : (v62 = 1), v62))
                          {
                            if (self->_sfSessionSecured || (self->_siriFlags & 1) == 0 || [(HDSSetupSession *)self isCompanionSiriLanguageSupportedByHomePod]|| ((v63 = [(HDSSetupSession *)self _runSiriLanguage], v63 != 4) ? (v64 = v63 == 2) : (v64 = 1), v64))
                            {
                              if (self->_sfSessionSecured || !self->_siriPasscodeEnabled || (self->_peerFeatureFlags & 2) == 0 || ((v65 = [(HDSSetupSession *)self _runSiriPasscode], v65 != 4) ? (v66 = v65 == 2) : (v66 = 1), v66))
                              {
                                if (self->_isCLIMode && self->_delayForOdeonStereoPair)
                                {
                                  [(HDSSetupSession *)self _runBackgroundActivation];
                                  OUTLINED_FUNCTION_8();
                                  if (!v4)
                                  {
                                    return;
                                  }
                                }

                                else
                                {
                                  [(HDSSetupSession *)self _runBackgroundActivation];
                                }

                                if ((self->_siriFlags & 1) == 0 || [(HDSSetupSession *)self isCompanionSiriLanguageSupportedByHomePod]|| ((v67 = [(HDSSetupSession *)self _runSiriLanguage], v67 != 4) ? (v68 = v67 == 2) : (v68 = 1), v68))
                                {
                                  if (self->_jsDefaultDisabled || ((v69 = [(HDSSetupSession *)self _runPreflightJSCheck], v69 != 4) ? (v70 = v69 == 2) : (v70 = 1), v70))
                                  {
                                    _runSetLanguage = [(HDSSetupSession *)self _runSetLanguage];
                                    if (_runSetLanguage == 4 || _runSetLanguage == 2)
                                    {
                                      _runHomeKitUserInput = [(HDSSetupSession *)self _runHomeKitUserInput];
                                      if (_runHomeKitUserInput == 4 || _runHomeKitUserInput == 2)
                                      {
                                        if (self->_selectedHomeHasResidentDevice && _os_feature_enabled_impl())
                                        {
                                          _runHomeKitPrimarySSIDFetch = [(HDSSetupSession *)self _runHomeKitPrimarySSIDFetch];
                                          if (_runHomeKitPrimarySSIDFetch != 4 && _runHomeKitPrimarySSIDFetch != 2)
                                          {
                                            return;
                                          }

                                          if (!self->_primaryResidentSSID && !self->_isVM)
                                          {
                                            [(HDSSetupSession *)self _runPreflightWiFi];
                                            OUTLINED_FUNCTION_8();
                                            if (!v4)
                                            {
                                              return;
                                            }
                                          }
                                        }

                                        else if (!self->_isVM)
                                        {
                                          _runPreflightWiFi2 = [(HDSSetupSession *)self _runPreflightWiFi];
                                          if (_runPreflightWiFi2 != 4 && _runPreflightWiFi2 != 2)
                                          {
                                            return;
                                          }
                                        }

                                        if (+[HDSDefaults sysDropForceErrorHalfwayEnabled]&& !self->_isCLIMode)
                                        {
                                          if (!self->_forceFailHalfwayState)
                                          {
                                            v97 = NSErrorF();
                                            [(HDSSetupSession *)self _reportError:v97 label:@"TestingDefault"];
                                          }

                                          self->_forceFailHalfwayState = 1;
                                          return;
                                        }

                                        _runDataAndPrivacy = [(HDSSetupSession *)self _runDataAndPrivacy];
                                        if (_runDataAndPrivacy == 4 || _runDataAndPrivacy == 2)
                                        {
                                          if (!self->_didDoV3Terms)
                                          {
                                            if (_os_feature_enabled_impl())
                                            {
                                              if (!self->_hasExistingHomePodInAccount && (!self->_canDoV2TermsAndConditions || !self->_termsAndConditionsServersActive))
                                              {
                                                [(HDSSetupSession *)self _runTerms];
                                                OUTLINED_FUNCTION_8();
                                                if (!v4)
                                                {
                                                  return;
                                                }
                                              }
                                            }

                                            else if ((!self->_hasExistingHomePod || [(ACAccount *)self->_iCloudAccount aa_needsToVerifyTerms]) && !self->_hasExistingHomePodInAccount)
                                            {
                                              _runTerms = [(HDSSetupSession *)self _runTerms];
                                              if (_runTerms != 4 && _runTerms != 2)
                                              {
                                                return;
                                              }
                                            }
                                          }

                                          if (!self->_prefStereoPairEnabled || ((v82 = [(HDSSetupSession *)self _runStereoPairUserInput], v82 != 4) ? (v83 = v82 == 2) : (v83 = 1), v83))
                                          {
                                            if (!self->_prefTVAudioEnabled || ((v84 = [(HDSSetupSession *)self _runTVAudioUserInput], v84 != 4) ? (v85 = v84 == 2) : (v85 = 1), v85))
                                            {
                                              if (!self->_appleMusicEnabled || self->_iTunesSignInSkip || self->_hasExistingHomePod && !self->_appleMusicForce || ((v86 = [(HDSSetupSession *)self _runAppleMusic], v86 != 4) ? (v87 = v86 == 2) : (v87 = 1), v87))
                                              {
                                                if (self->_hasExistingHomePodInAccount || ((v88 = [(HDSSetupSession *)self _runPreflightMisc], v88 != 4) ? (v89 = v88 == 2) : (v89 = 1), v89))
                                                {
                                                  if (!self->_prefMultiUser || (self->_peerFeatureFlags & 0x100) == 0 || self->_hasExistingHomePod || ((v90 = [(HDSSetupSession *)self _runRecognizeVoice], v90 != 4) ? (v91 = v90 == 2) : (v91 = 1), v91))
                                                  {
                                                    if (![(HDSSetupSession *)self _recognizeVoiceAlreadyEnabled]&& self->_recognizeVoiceEnabled != 6)
                                                    {
                                                      goto LABEL_352;
                                                    }

                                                    selectedSiriLanguageCode = [(HDSSetupSession *)self selectedSiriLanguageCode];

                                                    if (!selectedSiriLanguageCode)
                                                    {
                                                      goto LABEL_352;
                                                    }

                                                    if (!self->_hasExistingHomePodInSelectedRoom)
                                                    {
                                                      [(HDSSetupSession *)self _runPersonalRequests];
                                                      OUTLINED_FUNCTION_8();
                                                      if (!v4)
                                                      {
                                                        return;
                                                      }

                                                      goto LABEL_352;
                                                    }

                                                    if (!self->_shouldShowCardForPRCounts)
                                                    {
                                                      goto LABEL_352;
                                                    }

                                                    OUTLINED_FUNCTION_10();
                                                    if (!(v6 ^ v7 | v4))
                                                    {
LABEL_347:
                                                      _runPersonalRequests = [(HDSSetupSession *)self _runPersonalRequests];
                                                      if (_runPersonalRequests != 4 && _runPersonalRequests != 2)
                                                      {
                                                        return;
                                                      }

LABEL_352:
                                                      if (self->_userOptedToHH2 && !self->_automaticUpdatesEnabled && self->_homePodProductVersion != 4)
                                                      {
                                                        _runAutomaticSoftwareUpdate = [(HDSSetupSession *)self _runAutomaticSoftwareUpdate];
                                                        if (_runAutomaticSoftwareUpdate != 4 && _runAutomaticSoftwareUpdate != 2)
                                                        {
                                                          return;
                                                        }
                                                      }

                                                      if (self->_forceSoftwareUpdateForADP || self->_userOptedToHH2 && !self->_automaticUpdatesEnabled && self->_automaticSoftwareUpdateAgreed == 2 && self->_homePodProductVersion != 4)
                                                      {
                                                        _runSoftwareUpdate = [(HDSSetupSession *)self _runSoftwareUpdate];
                                                        if (_runSoftwareUpdate != 4 && _runSoftwareUpdate != 2)
                                                        {
                                                          return;
                                                        }
                                                      }

                                                      if (!self->_soundRecognitionOptedIn && self->_homePodIsCallbellCapable && self->_userOptedToHH2 && self->_homeSafetySecurityEnabled)
                                                      {
                                                        _runSoundRecognition = [(HDSSetupSession *)self _runSoundRecognition];
                                                        if (_runSoundRecognition != 4 && _runSoundRecognition != 2)
                                                        {
                                                          return;
                                                        }
                                                      }

                                                      if (!_os_feature_enabled_impl() || (v163 = 0, os_eligibility_get_domain_answer(), v163 == 4))
                                                      {
                                                        if ([(HDSSetupSession *)self showWiFiPicker]&& self->_homePodSupportsWiFiPicker && _os_feature_enabled_impl() && !self->_isCLIMode)
                                                        {
                                                          if (self->_doHomePodScan)
                                                          {
                                                            _runHomePodScanFetch = [(HDSSetupSession *)self _runHomePodScanFetch];
                                                            if (_runHomePodScanFetch != 4 && _runHomePodScanFetch != 2)
                                                            {
                                                              return;
                                                            }
                                                          }

                                                          homePodScanResults = self->_homePodScanResults;
                                                          if (homePodScanResults && [(NSArray *)homePodScanResults count]>= 2)
                                                          {
                                                            _runWiFiPicker = [(HDSSetupSession *)self _runWiFiPicker];
                                                            if (_runWiFiPicker != 4 && _runWiFiPicker != 2)
                                                            {
                                                              return;
                                                            }
                                                          }
                                                        }
                                                      }

                                                      _runShareSettings = [(HDSSetupSession *)self _runShareSettings];
                                                      if (_runShareSettings != 4 && _runShareSettings != 2)
                                                      {
                                                        return;
                                                      }

                                                      _enableSiriForPersonalRequestIfNecessary = [(HDSSetupSession *)self _enableSiriForPersonalRequestIfNecessary];
                                                      if (_enableSiriForPersonalRequestIfNecessary != 4 && _enableSiriForPersonalRequestIfNecessary != 2)
                                                      {
                                                        return;
                                                      }

                                                      _runCheckAccount = [(HDSSetupSession *)self _runCheckAccount];
                                                      if (_runCheckAccount != 4 && _runCheckAccount != 2)
                                                      {
                                                        return;
                                                      }

                                                      if (!self->_sfSessionSecured)
                                                      {
                                                        _runPairSetup = [(HDSSetupSession *)self _runPairSetup];
                                                        if (_runPairSetup != 4 && _runPairSetup != 2)
                                                        {
                                                          return;
                                                        }
                                                      }

                                                      if ((self->_testFlags & 0x800000) == 0)
                                                      {
                                                        if ((self->_peerFeatureFlags & 0x800) != 0)
                                                        {
                                                          _runHomeKitSetupMode = [(HDSSetupSession *)self _runHomeKitSetupMode];
                                                          if (_runHomeKitSetupMode != 4 && _runHomeKitSetupMode != 2)
                                                          {
                                                            return;
                                                          }
                                                        }

                                                        _runBasicConfig = [(HDSSetupSession *)self _runBasicConfig];
                                                        if (_runBasicConfig != 4 && _runBasicConfig != 2)
                                                        {
                                                          return;
                                                        }

                                                        if (!self->_isVM)
                                                        {
                                                          _runWiFiSetup2 = [(HDSSetupSession *)self _runWiFiSetup];
                                                          if (_runWiFiSetup2 != 4 && _runWiFiSetup2 != 2)
                                                          {
                                                            return;
                                                          }
                                                        }

                                                        _runCaptiveJoin2 = [(HDSSetupSession *)self _runCaptiveJoin];
                                                        if (_runCaptiveJoin2 != 4 && _runCaptiveJoin2 != 2)
                                                        {
                                                          return;
                                                        }

                                                        if (self->_prefBonjourTest && (self->_peerFeatureFlags & 0x80) != 0)
                                                        {
                                                          [(HDSSetupSession *)self _runBonjourTest];
                                                        }

                                                        _runAuthKitTrustFinish = [(HDSSetupSession *)self _runAuthKitTrustFinish];
                                                        if (_runAuthKitTrustFinish != 4 && _runAuthKitTrustFinish != 2)
                                                        {
                                                          return;
                                                        }

                                                        _runTRSessionStart = [(HDSSetupSession *)self _runTRSessionStart];
                                                        if (_runTRSessionStart != 4 && _runTRSessionStart != 2)
                                                        {
                                                          return;
                                                        }

                                                        _runTRSetupConfiguration = [(HDSSetupSession *)self _runTRSetupConfiguration];
                                                        if (_runTRSetupConfiguration != 4 && _runTRSetupConfiguration != 2)
                                                        {
                                                          return;
                                                        }

                                                        trUseAIDA = self->_trUseAIDA;
                                                        if (trUseAIDA)
                                                        {
                                                          if (self->_cdpEnabled && (self->_peerFeatureFlags & 0x10) != 0)
                                                          {
                                                            v136 = [(HDSSetupSession *)self _runCDPSetup:1];
                                                            if (v136 != 4 && v136 != 2)
                                                            {
                                                              return;
                                                            }
                                                          }

                                                          _runTRActivation = [(HDSSetupSession *)self _runTRActivation];
                                                          if (_runTRActivation != 4 && _runTRActivation != 2)
                                                          {
                                                            return;
                                                          }

                                                          _runTRiCloudAuthentication = [(HDSSetupSession *)self _runTRiCloudAuthentication];
                                                          if (_runTRiCloudAuthentication != 4 && _runTRiCloudAuthentication != 2)
                                                          {
                                                            return;
                                                          }

                                                          [(HDSSetupSession *)self _runTROtherAuthentication];
                                                          OUTLINED_FUNCTION_8();
                                                          if (!v4)
                                                          {
                                                            return;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          _runTRActivation2 = [(HDSSetupSession *)self _runTRActivation];
                                                          if (_runTRActivation2 != 4 && _runTRActivation2 != 2)
                                                          {
                                                            return;
                                                          }

                                                          v144 = [(HDSSetupSession *)self _runTRAuthentication:self->_trUnauthServices];
                                                          if (v144 != 4 && v144 != 2)
                                                          {
                                                            return;
                                                          }

                                                          if (self->_cdpEnabled && (self->_peerFeatureFlags & 0x10) != 0)
                                                          {
                                                            v146 = [(HDSSetupSession *)self _runCDPSetup:0];
                                                            if (v146 != 4 && v146 != 2)
                                                            {
                                                              return;
                                                            }
                                                          }
                                                        }

                                                        if (self->_prefMultiUser)
                                                        {
                                                          _runMultiUserEnable = [(HDSSetupSession *)self _runMultiUserEnable];
                                                          if (_runMultiUserEnable != 4 && _runMultiUserEnable != 2)
                                                          {
                                                            return;
                                                          }
                                                        }

                                                        _runHomeKitSetup = [(HDSSetupSession *)self _runHomeKitSetup];
                                                        if (_runHomeKitSetup != 4 && _runHomeKitSetup != 2)
                                                        {
                                                          return;
                                                        }

                                                        _runHomePodSoftwareUpdate = [(HDSSetupSession *)self _runHomePodSoftwareUpdate];
                                                        if (_runHomePodSoftwareUpdate != 4 && _runHomePodSoftwareUpdate != 2)
                                                        {
                                                          return;
                                                        }

                                                        if (!trUseAIDA && self->_cdpEnabled && (self->_peerFeatureFlags & 0x10) != 0)
                                                        {
                                                          v154 = [(HDSSetupSession *)self _runCDPSetup:1];
                                                          if (v154 != 4 && v154 != 2)
                                                          {
                                                            return;
                                                          }
                                                        }
                                                      }

                                                      [(HDSSetupSession *)self _runFinishStart];
                                                      return;
                                                    }

                                                    v94 = "yes";
                                                    if (v93 == -1)
                                                    {
                                                      if (!_LogCategory_Initialize())
                                                      {
                                                        goto LABEL_347;
                                                      }

                                                      if (!self->_shouldShowCardForPRCounts)
                                                      {
                                                        v94 = "no";
                                                      }
                                                    }

                                                    v158 = v94;
                                                    LogPrintF();
                                                    goto LABEL_347;
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

- (void)_speakPasscodeWithInstructions:(void *)a1 languageCode:completion:.cold.2(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

- (void)_speakPasscodeWithInstructions:(void *)a1 languageCode:completion:.cold.4(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

- (void)_speakPasscodeWithInstructions:(void *)a1 languageCode:completion:.cold.7(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

- (void)_speakPasscodeWithInstructions:(void *)a1 languageCode:completion:.cold.11(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

- (void)identifyHomePod:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void __37__HDSSetupSession__runSFSessionStart__block_invoke_4_cold_1(uint64_t a1)
{
  v1 = [*(*a1 + 288) identifier];
  LogPrintF();
}

- (void)_runPreflightMisc
{
  v4 = _Block_copy(*a2);
  selectedSiriLanguageCode = [a3 selectedSiriLanguageCode];
  LogPrintF();
}

- (void)_runHomeKitPrimarySSIDFetch
{
  wiFiInfo = [self wiFiInfo];
  sSID = [wiFiInfo SSID];
  LogPrintF();
}

void __39__HDSSetupSession__runTVAudioUserInput__block_invoke_cold_1(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

void __39__HDSSetupSession__runTVAudioUserInput__block_invoke_cold_2(void *a1)
{
  v1 = [a1 name];
  LogPrintF();
}

- (void)_runSiriLanguage
{
  firstObject = [*(self + 328) firstObject];
  LogPrintF();
}

- (void)_runSetLanguage
{
  selectedSiriLanguageCode = [self selectedSiriLanguageCode];
  LogPrintF();
}

void __39__HDSSetupSession__runSoundRecognition__block_invoke_cold_3(uint64_t a1)
{
  v4 = [*(a1 + 32) selectedHome];
  [v4 didOnboardAudioAnalysis];
  v2 = [*(a1 + 32) selectedHome];
  v3 = [v2 uniqueIdentifier];
  LogPrintF();
}

- (uint64_t)_runAudioPasscodeHandleData:(uint64_t)a1 .cold.6(uint64_t a1)
{
  IsAppleInternalBuild();
  IsAppleInternalBuild();
  return LogPrintF();
}

void __43__HDSSetupSession__runTRSetupConfiguration__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(*a1 + 864) debugDescription];
  LogPrintF();
}

void __43__HDSSetupSession__runBackgroundActivation__block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@" (%@)", v1];
    LogPrintF();
  }

  else
  {
    LogPrintF();
  }
}

- (void)_runHomePodSoftwareUpdate
{
  uUIDString = [self UUIDString];
  LogPrintF();
}

- (void)_runFinishResponse:(uint64_t)a1 error:.cold.4(uint64_t a1)
{
  v1 = [*(a1 + 288) identifier];
  LogPrintF();
}

- (void)_recognizeVoiceAlreadyEnabled
{
  if (gLogCategory_HDSSetupSession <= 30 && (gLogCategory_HDSSetupSession != -1 || _LogCategory_Initialize()))
  {
    value = [self value];
    LogPrintF();
  }

  *a2 = 0;
}

- (_BYTE)_recognizeVoiceAlreadyEnabled
{
  v1 = result;
  if (gLogCategory_HDSSetupSession <= 30)
  {
    if (gLogCategory_HDSSetupSession != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = LogPrintF();
    }
  }

  *v1 = 0;
  return result;
}

- (void)_reportError:(uint64_t)a1 label:.cold.1(uint64_t a1)
{
  v1 = [*(a1 + 288) identifier];
  LogPrintF();
}

- (void)_reportErrorWithExtaInfo:(uint64_t)a1 label:dict:.cold.1(uint64_t a1)
{
  v1 = [*(a1 + 288) identifier];
  LogPrintF();
}

@end