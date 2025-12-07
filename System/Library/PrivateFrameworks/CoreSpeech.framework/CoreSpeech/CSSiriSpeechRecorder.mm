@interface CSSiriSpeechRecorder
- (BOOL)_checkAudioLoggingLimits:(id)limits;
- (BOOL)_prepareDirectoryAtPath:(id)path;
- (BOOL)_prepareSpeechControllerWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)_setAudioContextWithInfo:(id)info forReason:(id)reason;
- (BOOL)_shouldEmitInstrumentation;
- (BOOL)_shouldPlaySummonedToneOnTopCapInvocationOnHorseman;
- (BOOL)_shouldPlayTwoShotToneFeedbackOnHorseman;
- (BOOL)_startAudioPlaybackRequest:(id)request options:(unint64_t)options completion:(id)completion;
- (BOOL)_updateAudioContextToPostVoiceForReason:(id)reason;
- (BOOL)_updateAudioContextWithPendingInfoForReason:(id)reason;
- (BOOL)prepareSpeechCaptureWithOptions:(unint64_t)options error:(id *)error;
- (BOOL)startSpeechCaptureWithContext:(id)context willStartHandler:(id)handler error:(id *)error;
- (CSSiriSpeechRecorder)initWithQueue:(id)queue speechController:(id)controller audioSessionController:(id)sessionController audioPlaybackService:(id)service experimentContext:(id)context;
- (id)_convertToAFSpeechPackage:(id)package;
- (id)_currentMHUUID:(BOOL)d;
- (id)_currentPlaybackRoute;
- (id)_currentRecordDeviceInfo;
- (id)_currentRecordRoute;
- (id)_currentRecordingInfo;
- (id)_fingerprinter;
- (id)_getFanInfoArray;
- (id)_mhUUIDFromSpeechRequestOptions:(id)options;
- (id)_recordingInfoForEvent:(int64_t)event audioAlertStyle:(int64_t)style includeBTInfo:(BOOL)info includeRecordDeviceInfo:(BOOL)deviceInfo;
- (id)_speechControllerWithError:(id *)error;
- (id)currentVTSatScore;
- (id)fetchAudioDeviceInfo;
- (id)fetchRecordingInfo;
- (id)getAudioRouteInstrumentationWithRecordingInfo:(id)info;
- (id)recordingInfoForPreheatWithEvent:(int64_t)event;
- (int)convertSISchemaAudioInputRouteToMHRoute:(int)route withRecordingInfo:(id)info;
- (unsigned)_audioSessionID;
- (unsigned)fetchAudioSessionID;
- (void)_checkIfLastEndpointHintShouldBeAccepted:(BOOL)accepted;
- (void)_clearEndpointHint;
- (void)_enforceEndpointHintWithMitigation:(BOOL)mitigation;
- (void)_handleFakeTwoShotPromptCallbackWithUUID:(id)d timestamp:(double)timestamp duration:(double)duration error:(id)error;
- (void)_handleFakeTwoShotPromptTimeoutWithUUID:(id)d;
- (void)_hardEndpointWasDetectedWithMetrics:(id)metrics atTime:(double)time;
- (void)_logAudioMetrics:(id)metrics mhUUID:(id)d;
- (void)_logBluetoothStateWithMHUUID:(id)d;
- (void)_logVoiceTriggerInfo:(id)info withMHUUID:(id)d;
- (void)_performTwoShotPromptForType:(int64_t)type withOverride:(int64_t)override atTime:(double)time;
- (void)_playAudioAlert:(int64_t)alert;
- (void)_playPhaticWithCompletion:(id)completion;
- (void)_playStopAlertIfNecessaryForReason:(int64_t)reason error:(id)error;
- (void)_reportServerEndpointMetricsIfNeeded;
- (void)_resetSpeechController;
- (void)_setAlertsIfNeeded;
- (void)_setEndpointerOperationMode:(int64_t)mode forceUpdate:(BOOL)update;
- (void)_setLanguageDetectorDelegateIfRequired;
- (void)_setSpeechCapturingMode:(int64_t)mode;
- (void)_setupAudioFileWritingForSpeechController:(id)controller info:(id)info context:(id)context;
- (void)_speechControllerDidReceiveFirstAudioRecordBufferWithHostTime:(unint64_t)time atHostTime:(unint64_t)hostTime mhUUID:(id)d;
- (void)_speechControllerDidReceiveLastAudioRecordBuffer:(id)buffer forReason:(int64_t)reason estimatedSpeechEndHostTime:(unint64_t)time isRecordingStopped:(BOOL)stopped;
- (void)_speechControllerDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error;
- (void)_speechControllerDidStopRecording:(id)recording audioDeviceInfo:(id)info forReason:(int64_t)reason estimatedSpeechEndHostTime:(unint64_t)time errorCodeOverride:(int64_t)override underlyingError:(id)error;
- (void)_speechControllerRequestsOperation:(unint64_t)operation forReason:(unint64_t)reason completion:(id)completion;
- (void)_stopRecordingForEndpointReason:(id)reason withEndpointMetrics:(id)metrics;
- (void)_stopRecordingWithReason:(id)reason hostTime:(unint64_t)time;
- (void)_updateAudioContextWithInfo:(id)info reason:(id)reason;
- (void)_updateAudioDeviceInfo:(id)info forReason:(id)reason forcesUpdate:(BOOL)update;
- (void)_updateRecordBufferDuration;
- (void)acousticFingerprinter:(id)fingerprinter hasFingerprint:(id)fingerprint duration:(double)duration;
- (void)audioSessionController:(id)controller didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info;
- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerLostNotification:(id)notification;
- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerResetNotification:(id)notification;
- (void)audioSessionController:(id)controller didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info;
- (void)cancelSpeechCaptureSuppressingAlert:(BOOL)alert;
- (void)dealloc;
- (void)eagerlyInitializeAudioRecording;
- (void)endpointer:(id)endpointer detectedTwoShotAtTime:(double)time;
- (void)endpointer:(id)endpointer didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics eventType:(int64_t)type;
- (void)enforcePreviousEndpointHint;
- (void)forceSuccessAudioAlertOnStop;
- (void)languageDetectorDidDetectLanguageWithConfidence:(id)confidence confidence:(id)a4 isConfident:(BOOL)confident;
- (void)performBlockAfterAlerts:(id)alerts timeout:(double)timeout;
- (void)playRecordingStartAlert;
- (void)preheatRecognizerWithOption:(id)option;
- (void)preheatWithOption:(id)option;
- (void)prepareForMode:(int64_t)mode;
- (void)prepareForMode:(int64_t)mode withOptions:(id)options;
- (void)releaseAudioSession;
- (void)setClientConfiguration:(id)configuration;
- (void)setFingerprintWasRecognized;
- (void)setFingerprintingEnabled:(BOOL)enabled;
- (void)setSpeechRecognizedContext:(id)context;
- (void)setSpeechRecordingEventListeningEndpoint:(id)endpoint;
- (void)setSpeechRequestOptions:(id)options;
- (void)setSpeechWasRecognizedForElapsedTime:(double)time isFinal:(BOOL)final;
- (void)speakerIdentificationDidDetectSpeakerWithScores:(id)scores;
- (void)speechController:(id)controller didSetAudioSessionActive:(BOOL)active;
- (void)speechController:(id)controller willSetAudioSessionActive:(BOOL)active;
- (void)speechControllerBeginRecordInterruption:(id)interruption withContext:(id)context;
- (void)speechControllerDidDeliverLastBuffer:(id)buffer forReason:(int64_t)reason estimatedSpeechEndHostTime:(unint64_t)time;
- (void)speechControllerDidDetectVoiceTriggerTwoShot:(id)shot atTime:(double)time wantsAudibleFeedback:(BOOL)feedback;
- (void)speechControllerDidFinishAlertPlayback:(id)playback ofType:(int64_t)type error:(id)error;
- (void)speechControllerDidStartRecording:(id)recording audioDeviceInfo:(id)info successfully:(BOOL)successfully error:(id)error;
- (void)speechControllerDidStopRecording:(id)recording audioDeviceInfo:(id)info forReason:(int64_t)reason estimatedSpeechEndHostTime:(unint64_t)time;
- (void)speechControllerDidUpdateSmartSiriVolume:(id)volume forReason:(unint64_t)reason;
- (void)speechControllerEndRecordInterruption:(id)interruption;
- (void)speechControllerLPCMRecordBufferAvailable:(id)available buffer:(id)buffer recordedAt:(unint64_t)at;
- (void)speechControllerRecordBufferAvailable:(id)available buffers:(id)buffers durationInSec:(float)sec recordedAt:(unint64_t)at audioDeviceInfo:(id)info;
- (void)speechControllerRecordHardwareConfigurationDidChange:(id)change toConfiguration:(int64_t)configuration;
- (void)speechControllerRequestsOperation:(unint64_t)operation forReason:(unint64_t)reason;
- (void)speechControllerRequestsOperation:(unint64_t)operation forReason:(unint64_t)reason completion:(id)completion;
- (void)stopSpeechCaptureForEvent:(int64_t)event suppressAlert:(BOOL)alert hostTime:(unint64_t)time;
- (void)suppressUtteranceGradingIfRequired;
- (void)updateASRFeatures:(id)features;
- (void)updateEndpointHintForRC:(id)c forceAccept:(BOOL)accept completion:(id)completion;
- (void)updateSpeechSynthesisRecord:(id)record;
@end

@implementation CSSiriSpeechRecorder

- (id)_currentRecordRoute
{
  _currentRecordDeviceInfo = [(CSSiriSpeechRecorder *)self _currentRecordDeviceInfo];
  route = [_currentRecordDeviceInfo route];

  return route;
}

- (unsigned)fetchAudioSessionID
{
  dispatch_assert_queue_V2(self->_queue);

  return [(CSSiriSpeechRecorder *)self _audioSessionID];
}

- (id)_currentRecordingInfo
{
  speechEvent = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo speechEvent];
  audioAlertStyle = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo audioAlertStyle];

  return [(CSSiriSpeechRecorder *)self _recordingInfoForEvent:speechEvent audioAlertStyle:audioAlertStyle includeBTInfo:1 includeRecordDeviceInfo:1];
}

- (id)fetchRecordingInfo
{
  dispatch_assert_queue_V2(self->_queue);

  return [(CSSiriSpeechRecorder *)self _currentRecordingInfo];
}

- (unsigned)_audioSessionID
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CEF0E8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[CSSiriSpeechRecorder _audioSessionID]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Fetching audio session ID...", &v8, 0xCu);
  }

  getAudioSessionID = [(CSAudioSessionController *)self->_audioSessionController getAudioSessionID];
  v6 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[CSSiriSpeechRecorder _audioSessionID]";
    v10 = 2048;
    v11 = getAudioSessionID;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Done fetching audio session ID %lu.", &v8, 0x16u);
  }

  return getAudioSessionID;
}

- (id)_currentPlaybackRoute
{
  v3 = NSStringFromSelector(a2);
  [(CSSiriSpeechRecorder *)self _updateAudioDeviceInfo:0 forReason:v3 forcesUpdate:0];

  currentAudioDeviceInfo = self->_currentAudioDeviceInfo;

  return [(CSFAudioDeviceInfo *)currentAudioDeviceInfo playbackRoute];
}

- (id)_currentRecordDeviceInfo
{
  v3 = NSStringFromSelector(a2);
  [(CSSiriSpeechRecorder *)self _updateAudioDeviceInfo:0 forReason:v3 forcesUpdate:0];

  currentAudioDeviceInfo = self->_currentAudioDeviceInfo;

  return [(CSFAudioDeviceInfo *)currentAudioDeviceInfo recordDeviceInfo];
}

- (void)_setLanguageDetectorDelegateIfRequired
{
  v13 = *MEMORY[0x277D85DE8];
  languageDetectionUserContext = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo languageDetectionUserContext];
  v4 = _AFPreferencesDictationLanguageDetectorEnabled();
  v5 = *MEMORY[0x277CEF0E8];
  v6 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
  if (v4 && languageDetectionUserContext)
  {
    if (v6)
    {
      v7 = 136315138;
      v8 = "[CSSiriSpeechRecorder _setLanguageDetectorDelegateIfRequired]";
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Language detection delegate is active", &v7, 0xCu);
    }

    [(CSSpeechController *)self->_speechController setLanguageDetectorDelegate:self];
  }

  else if (v6)
  {
    v7 = 136315650;
    v8 = "[CSSiriSpeechRecorder _setLanguageDetectorDelegateIfRequired]";
    v9 = 1024;
    v10 = v4;
    v11 = 2112;
    v12 = languageDetectionUserContext;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Language detection delegate is NOT active. %d, %@", &v7, 0x1Cu);
  }
}

- (void)_setAlertsIfNeeded
{
  v39 = *MEMORY[0x277D85DE8];
  recordingAlertsConfiguration = self->_recordingAlertsConfiguration;
  v4 = self->_speechCapturingMode & 0xFFFFFFFFFFFFFFFELL;
  v5 = MEMORY[0x277CEF0E8];
  if (v4 == 2)
  {
    self->_recordingAlertsConfiguration = 2;
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s Setting up recording alerts for Dictation.", buf, 0xCu);
    }

    v11 = recordingAlertsConfiguration != 2;
    mEMORY[0x277CEF1C0] = [MEMORY[0x277CEF1C0] sharedManager];
    v12 = [mEMORY[0x277CEF1C0] URLForSoundID:1];
    v13 = [mEMORY[0x277CEF1C0] URLForSoundID:2];
    v14 = [mEMORY[0x277CEF1C0] URLForSoundID:3];
    _speechController = [(CSSiriSpeechRecorder *)self _speechController];
    [_speechController setAlertSoundFromURL:v12 forType:1 force:v11];
    [_speechController setAlertSoundFromURL:v13 forType:2 force:v11];
    [_speechController setAlertSoundFromURL:v14 forType:3 force:v11];
    v16 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
      _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s Done setting recording alerts for Dictation.", buf, 0xCu);
    }
  }

  else
  {
    self->_recordingAlertsConfiguration = 1;
    v6 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
      _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Setting up recording alerts for Siri and other non-Dictation modes.", buf, 0xCu);
    }

    v7 = recordingAlertsConfiguration != 1;
    mEMORY[0x277CEF1C0] = [(CSSiriSpeechRecorder *)self _speechController];
    [mEMORY[0x277CEF1C0] setAlertSoundFromURL:0 forType:1 force:v7];
    [mEMORY[0x277CEF1C0] setAlertSoundFromURL:0 forType:2 force:v7];
    [mEMORY[0x277CEF1C0] setAlertSoundFromURL:0 forType:3 force:v7];
    v9 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Done setting recording alerts for Siri and other non-Dictation modes.", buf, 0xCu);
    }
  }

  invocationFeedbackExperiment = [(AFExperimentContext *)self->_experimentContext invocationFeedbackExperiment];
  isFeatureGroupOneEnabled = [invocationFeedbackExperiment isFeatureGroupOneEnabled];

  if (v4 != 2 && isFeatureGroupOneEnabled)
  {
    v19 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
      _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_INFO, "%s Overriding record starting alert for IFD feature group one.", buf, 0xCu);
    }

    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 URLForResource:@"siri-begin-improved" withExtension:@"caf"];
    if (v21)
    {
      _speechController2 = [(CSSiriSpeechRecorder *)self _speechController];
      [_speechController2 setAlertSoundFromURL:v21 forType:1 force:1];
      v23 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
        v37 = 2112;
        v38 = v21;
        _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_INFO, "%s Done overriding record starting alert for IFD feature group one (soundURL = %@).", buf, 0x16u);
      }

      self->_recordingAlertsConfiguration = 3;
    }

    else
    {
      v24 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
        _os_log_error_impl(&dword_222E4D000, v24, OS_LOG_TYPE_ERROR, "%s Failed overriding record starting alert for IFD feature group one.", buf, 0xCu);
      }
    }
  }

  pendingActivationInfo = self->_pendingActivationInfo;
  if (!pendingActivationInfo)
  {
    pendingActivationInfo = self->_currentActivationInfo;
  }

  v26 = pendingActivationInfo;
  startingAlertBeepURL = [(CSSiriAudioActivationInfo *)v26 startingAlertBeepURL];
  if (startingAlertBeepURL)
  {
    _speechController3 = [(CSSiriSpeechRecorder *)self _speechController];
    [_speechController3 setAlertSoundFromURL:startingAlertBeepURL forType:1 force:1];
    v29 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
      v37 = 2112;
      v38 = startingAlertBeepURL;
      _os_log_impl(&dword_222E4D000, v29, OS_LOG_TYPE_INFO, "%s Done overriding record starting alert from override policy (soundURL = %@).", buf, 0x16u);
    }

    self->_recordingAlertsConfiguration = 3;
  }

  else
  {
    v30 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v36 = "[CSSiriSpeechRecorder _setAlertsIfNeeded]";
      _os_log_error_impl(&dword_222E4D000, v30, OS_LOG_TYPE_ERROR, "%s Failed overriding record starting alert from override policy.", buf, 0xCu);
    }
  }

  if (self->_alertPlaybackGroup)
  {
    numberOfAVVCAlertPlaybacksByType = self->_numberOfAVVCAlertPlaybacksByType;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __42__CSSiriSpeechRecorder__setAlertsIfNeeded__block_invoke;
    v34[3] = &unk_2784C6008;
    v34[4] = self;
    [(NSMutableDictionary *)numberOfAVVCAlertPlaybacksByType enumerateKeysAndObjectsUsingBlock:v34];
    alertPlaybackGroup = self->_alertPlaybackGroup;
    self->_alertPlaybackGroup = 0;
  }

  v33 = self->_numberOfAVVCAlertPlaybacksByType;
  self->_numberOfAVVCAlertPlaybacksByType = 0;
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerResetNotification:(id)notification
{
  v10 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[CSSiriSpeechRecorder audioSessionController:didReceiveAudioSessionOwnerResetNotification:]";
    v8 = 2112;
    v9 = notificationCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s userInfo = %@", &v6, 0x16u);
  }
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionOwnerLostNotification:(id)notification
{
  v15 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[CSSiriSpeechRecorder audioSessionController:didReceiveAudioSessionOwnerLostNotification:]";
    v13 = 2112;
    v14 = notificationCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __91__CSSiriSpeechRecorder_audioSessionController_didReceiveAudioSessionOwnerLostNotification___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = notificationCopy;
  v8 = notificationCopy;
  dispatch_async(queue, v9);
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[CSSiriSpeechRecorder audioSessionController:didReceiveAudioSessionMediaServicesWereResetNotificationWithUserInfo:]";
    v8 = 2112;
    v9 = infoCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s userInfo = %@", &v6, 0x16u);
  }
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[CSSiriSpeechRecorder audioSessionController:didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo:]";
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __115__CSSiriSpeechRecorder_audioSessionController_didReceiveAudioSessionMediaServicesWereLostNotificationWithUserInfo___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(queue, v9);
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionRouteChangeNotificationWithUserInfo:(id)info
{
  v10 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[CSSiriSpeechRecorder audioSessionController:didReceiveAudioSessionRouteChangeNotificationWithUserInfo:]";
    v8 = 2112;
    v9 = infoCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s userInfo = %@", &v6, 0x16u);
  }
}

- (void)audioSessionController:(id)controller didReceiveAudioSessionInterruptionNotificationWithUserInfo:(id)info
{
  v15 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[CSSiriSpeechRecorder audioSessionController:didReceiveAudioSessionInterruptionNotificationWithUserInfo:]";
    v13 = 2112;
    v14 = infoCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s userInfo = %@", buf, 0x16u);
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __106__CSSiriSpeechRecorder_audioSessionController_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke;
  v9[3] = &unk_2784C6FA8;
  v9[4] = self;
  v10 = infoCopy;
  v8 = infoCopy;
  dispatch_async(queue, v9);
}

void __106__CSSiriSpeechRecorder_audioSessionController_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) speechCapturing:*(a1 + 32) didInterruptAudioSession:*(a1 + 40)];
  v2 = [*(a1 + 32) _currentMHUUID:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __106__CSSiriSpeechRecorder_audioSessionController_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke_2;
  v6[3] = &unk_2784C6278;
  v6[4] = v3;
  v7 = v2;
  v5 = v2;
  [v4 fetchAudioMetricsWithCompletion:v6];
}

void __106__CSSiriSpeechRecorder_audioSessionController_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __106__CSSiriSpeechRecorder_audioSessionController_didReceiveAudioSessionInterruptionNotificationWithUserInfo___block_invoke_3;
  block[3] = &unk_2784C6EE8;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

- (void)speakerIdentificationDidDetectSpeakerWithScores:(id)scores
{
  v36 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315395;
    v33 = "[CSSiriSpeechRecorder speakerIdentificationDidDetectSpeakerWithScores:]";
    v34 = 2113;
    v35 = scoresCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s scores = %{private}@", buf, 0x16u);
  }

  v6 = [scoresCopy objectForKey:@"spIdAudioProcessedDuration"];
  integerValue = [v6 integerValue];

  v7 = [scoresCopy objectForKey:@"spIdUnknownUserScore"];
  integerValue2 = [v7 integerValue];

  v9 = [scoresCopy objectForKey:@"spIdKnownUserScores"];
  v10 = [scoresCopy objectForKey:@"spIdUserScoresVersion"];
  integerValue3 = [v10 integerValue];

  v12 = [scoresCopy objectForKey:@"spIdScoreThresholdingType"];
  v13 = [scoresCopy objectForKey:@"spIdAssetVersion"];
  v14 = [scoresCopy objectForKey:@"userIdentityClassification"];
  unsignedIntValue = [v14 unsignedIntValue];

  v16 = [scoresCopy objectForKey:@"userClassified"];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__CSSiriSpeechRecorder_speakerIdentificationDidDetectSpeakerWithScores___block_invoke;
  block[3] = &unk_2784C6678;
  block[4] = self;
  v24 = v9;
  v29 = integerValue2;
  v30 = integerValue;
  v31 = integerValue3;
  v25 = v16;
  v26 = v12;
  v27 = v13;
  v28 = unsignedIntValue;
  v18 = v13;
  v19 = v12;
  v20 = v16;
  v21 = v9;
  dispatch_async(queue, block);
}

- (BOOL)_startAudioPlaybackRequest:(id)request options:(unint64_t)options completion:(id)completion
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  completionCopy = completion;
  if (requestCopy)
  {
    v10 = self->_alertPlaybackGroup;
    if (!v10)
    {
      v10 = dispatch_group_create();
      alertPlaybackGroup = self->_alertPlaybackGroup;
      self->_alertPlaybackGroup = v10;
    }

    dispatch_group_enter(v10);
    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v25 = "[CSSiriSpeechRecorder _startAudioPlaybackRequest:options:completion:]";
      v26 = 2112;
      v27 = requestCopy;
      _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s Starting audio playback request %@...", buf, 0x16u);
    }

    v13 = self->_context;
    audioPlaybackService = self->_audioPlaybackService;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __70__CSSiriSpeechRecorder__startAudioPlaybackRequest_options_completion___block_invoke;
    v18[3] = &unk_2784C6610;
    v19 = requestCopy;
    v20 = v13;
    v21 = v10;
    selfCopy = self;
    v23 = completionCopy;
    v15 = v10;
    v16 = v13;
    [(CSSiriAudioPlaybackService *)audioPlaybackService startRequest:v19 options:options completion:v18];
  }

  return requestCopy != 0;
}

void __70__CSSiriSpeechRecorder__startAudioPlaybackRequest_options_completion___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0E8];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      *buf = 136315650;
      v13 = "[CSSiriSpeechRecorder _startAudioPlaybackRequest:options:completion:]_block_invoke";
      v14 = 2112;
      v15 = v5;
      v16 = 2112;
      v17 = v3;
      _os_log_error_impl(&dword_222E4D000, v4, OS_LOG_TYPE_ERROR, "%s Failed audio playback request %@ due to error %@.", buf, 0x20u);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      *buf = 136315394;
      v13 = "[CSSiriSpeechRecorder _startAudioPlaybackRequest:options:completion:]_block_invoke";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s Stopped audio playback request %@.", buf, 0x16u);
    }

    [*(a1 + 40) instrumentSiriCue:1];
  }

  dispatch_group_leave(*(a1 + 48));
  v7 = *(a1 + 64);
  if (v7)
  {
    v8 = *(*(a1 + 56) + 16);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __70__CSSiriSpeechRecorder__startAudioPlaybackRequest_options_completion___block_invoke_262;
    v9[3] = &unk_2784C6E98;
    v11 = v7;
    v10 = v3;
    dispatch_async(v8, v9);
  }
}

- (void)acousticFingerprinter:(id)fingerprinter hasFingerprint:(id)fingerprint duration:(double)duration
{
  v18 = *MEMORY[0x277D85DE8];
  fingerprintCopy = fingerprint;
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v15 = "[CSSiriSpeechRecorder acousticFingerprinter:hasFingerprint:duration:]";
    v16 = 2048;
    durationCopy = duration;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s duration %lf", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__CSSiriSpeechRecorder_acousticFingerprinter_hasFingerprint_duration___block_invoke;
  block[3] = &unk_2784C6998;
  block[4] = self;
  v12 = fingerprintCopy;
  durationCopy2 = duration;
  v10 = fingerprintCopy;
  dispatch_async(queue, block);
}

- (void)performBlockAfterAlerts:(id)alerts timeout:(double)timeout
{
  v31 = *MEMORY[0x277D85DE8];
  alertsCopy = alerts;
  if (alertsCopy)
  {
    v7 = MEMORY[0x277CEF0E8];
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[CSSiriSpeechRecorder performBlockAfterAlerts:timeout:]";
      *&buf[12] = 2048;
      *&buf[14] = timeout;
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s timeout = %f", buf, 0x16u);
    }

    if (self->_alertPlaybackGroup)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v28 = __Block_byref_object_copy__24773;
      v29 = __Block_byref_object_dispose__24774;
      v30 = 0;
      v9 = objc_alloc(MEMORY[0x277CEF380]);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __56__CSSiriSpeechRecorder_performBlockAfterAlerts_timeout___block_invoke;
      v24[3] = &unk_2784C65E8;
      v26 = buf;
      v25 = alertsCopy;
      v10 = [v9 initWithBlock:v24];
      if (timeout > 0.0)
      {
        v11 = objc_alloc(MEMORY[0x277CEF530]);
        queue = self->_queue;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __56__CSSiriSpeechRecorder_performBlockAfterAlerts_timeout___block_invoke_261;
        v22[3] = &unk_2784C6FD0;
        v23 = v10;
        v13 = [v11 initWithTimeoutInterval:queue onQueue:v22 timeoutHandler:timeout];
        v14 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v13;

        [*(*&buf[8] + 40) start];
      }

      alertPlaybackGroup = self->_alertPlaybackGroup;
      v16 = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__CSSiriSpeechRecorder_performBlockAfterAlerts_timeout___block_invoke_2;
      block[3] = &unk_2784C6F30;
      v20 = v10;
      v21 = buf;
      v17 = v10;
      dispatch_group_notify(alertPlaybackGroup, v16, block);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v18 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[CSSiriSpeechRecorder performBlockAfterAlerts:timeout:]";
        _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_INFO, "%s Done", buf, 0xCu);
      }

      (*(alertsCopy + 2))(alertsCopy, 0);
    }
  }
}

void __56__CSSiriSpeechRecorder_performBlockAfterAlerts_timeout___block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    [v4 cancel];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }

  v7 = *MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (a2 == -2)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = "[CSSiriSpeechRecorder performBlockAfterAlerts:timeout:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s Watchdog timer timed out.", &v11, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = [MEMORY[0x277CEF2A0] errorWithCode:224];
    (*(v9 + 16))(v9, v10);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CSSiriSpeechRecorder performBlockAfterAlerts:timeout:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s Done", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }
}

uint64_t __56__CSSiriSpeechRecorder_performBlockAfterAlerts_timeout___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 40) + 8) + 40);
  if (v2)
  {
    [v2 cancel];
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }

  v5 = *(a1 + 32);

  return [v5 invokeWithSignal:0];
}

- (void)setSpeechRecognizedContext:(id)context
{
  contextCopy = context;
  v6 = contextCopy;
  if (self->_didDetectEndpoint && self->_lastEndpointerMetrics)
  {
    [(CSEndpointDelayReporter *)self->_endpointDelayReporter setSpeechRecognizedContext:contextCopy withEndpointerMetrics:?];
    [(CSEndpointDelayReporter *)self->_endpointDelayReporter reportEndpointDelayIfNeed];
  }

  else
  {
    objc_storeStrong(&self->_speechRecognizedContextForServerEndpointInstrumentation, context);
    [(CSSiriSpeechRecorder *)self _reportServerEndpointMetricsIfNeeded];
  }
}

- (void)enforcePreviousEndpointHint
{
  v13 = *MEMORY[0x277D85DE8];
  self->_serverDidEndpoint = 1;
  lastEndpointHintRC = self->_lastEndpointHintRC;
  if (lastEndpointHintRC)
  {
    if (self->_lastEndpointHintRCProcessedForMitigation)
    {
      resultId = [(SASResultCandidate *)lastEndpointHintRC resultId];
      integerValue = [resultId integerValue];

      refId = [(SASResultCandidate *)self->_lastEndpointHintRC refId];
      speechController = self->_speechController;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__CSSiriSpeechRecorder_enforcePreviousEndpointHint__block_invoke;
      v10[3] = &unk_2784C6408;
      v10[4] = self;
      [(CSSpeechController *)speechController getMitigationDecisionForRCId:integerValue requestId:refId completion:v10];
    }

    else
    {
      v9 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v12 = "[CSSiriSpeechRecorder enforcePreviousEndpointHint]";
        _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Processing RC for mitigation, force accept", buf, 0xCu);
      }

      [(CSSiriSpeechRecorder *)self _checkIfLastEndpointHintShouldBeAccepted:1];
    }
  }

  else
  {
    v8 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[CSSiriSpeechRecorder enforcePreviousEndpointHint]";
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s Got an enforce message without a current RC. Stop Recording", buf, 0xCu);
    }

    [(CSSiriSpeechRecorder *)self _enforceEndpointHintWithMitigation:0];
  }
}

void __51__CSSiriSpeechRecorder_enforcePreviousEndpointHint__block_invoke(uint64_t a1, char a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__CSSiriSpeechRecorder_enforcePreviousEndpointHint__block_invoke_2;
  v4[3] = &unk_2784C6390;
  v4[4] = v2;
  v5 = a2;
  dispatch_async(v3, v4);
}

- (void)_enforceEndpointHintWithMitigation:(BOOL)mitigation
{
  mitigationCopy = mitigation;
  v13 = *MEMORY[0x277D85DE8];
  [(CSSiriSpeechRecorder *)self _stopRecordingForEndpointReason:4 withEndpointMetrics:0];
  lastEndpointHintCompletion = self->_lastEndpointHintCompletion;
  if (lastEndpointHintCompletion)
  {
    lastEndpointHintCompletion[2](lastEndpointHintCompletion, 1, mitigationCopy, self->_lastEndpointHintFeatures);
    v6 = self->_lastEndpointHintCompletion;
    self->_lastEndpointHintCompletion = 0;

    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CSSiriSpeechRecorder _enforceEndpointHintWithMitigation:]";
      v8 = "%s Enforce previous endpointHint";
LABEL_6:
      _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, v8, &v11, 0xCu);
    }
  }

  else
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CSSiriSpeechRecorder _enforceEndpointHintWithMitigation:]";
      v8 = "%s Got an enforce message without a current completion. Ignoring";
      goto LABEL_6;
    }
  }

  lastEndpointHintRC = self->_lastEndpointHintRC;
  self->_lastEndpointHintRC = 0;

  self->_lastEndpointHintRCProcessedForMitigation = 0;
  lastEndpointHintFeatures = self->_lastEndpointHintFeatures;
  self->_lastEndpointHintFeatures = 0;
}

- (void)_clearEndpointHint
{
  lastEndpointHintCompletion = self->_lastEndpointHintCompletion;
  if (lastEndpointHintCompletion)
  {
    (*(lastEndpointHintCompletion + 2))(lastEndpointHintCompletion, 0, 0, 0);
    v4 = self->_lastEndpointHintCompletion;
    self->_lastEndpointHintCompletion = 0;
  }

  lastEndpointHintRC = self->_lastEndpointHintRC;
  self->_lastEndpointHintRC = 0;

  self->_lastEndpointHintRCProcessedForMitigation = 0;
  lastEndpointHintFeatures = self->_lastEndpointHintFeatures;
  self->_lastEndpointHintFeatures = 0;
}

- (void)_checkIfLastEndpointHintShouldBeAccepted:(BOOL)accepted
{
  v51 = *MEMORY[0x277D85DE8];
  lastEndpointHintRC = self->_lastEndpointHintRC;
  if (lastEndpointHintRC)
  {
    acceptedCopy = accepted;
    processedAudioDuration = [(SASResultCandidate *)lastEndpointHintRC processedAudioDuration];
    [processedAudioDuration doubleValue];
    v8 = v7;

    if (v8 > 0.0)
    {
      v9 = [(CSSiriSpeechRecorder *)self _convertToAFSpeechPackage:self->_lastEndpointHintRC];
      resultId = [(SASResultCandidate *)self->_lastEndpointHintRC resultId];
      integerValue = [resultId integerValue];

      speechRecognitionTask = [(SASResultCandidate *)self->_lastEndpointHintRC speechRecognitionTask];
      refId = [(SASResultCandidate *)self->_lastEndpointHintRC refId];
      latticeRnnMitigatorIsProcessed = [(SASResultCandidate *)self->_lastEndpointHintRC latticeRnnMitigatorIsProcessed];
      bOOLValue = [latticeRnnMitigatorIsProcessed BOOLValue];

      latticeMitigatorResult = [v9 latticeMitigatorResult];
      [latticeMitigatorResult score];
      v18 = v17;

      latticeMitigatorResult2 = [v9 latticeMitigatorResult];
      [latticeMitigatorResult2 threshold];
      v21 = v20;

      latticeMitigatorResult3 = [v9 latticeMitigatorResult];
      [latticeMitigatorResult3 calibrationScale];
      v24 = v23;

      latticeMitigatorResult4 = [v9 latticeMitigatorResult];
      [latticeMitigatorResult4 calibrationOffset];
      v27 = v26;

      v28 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        *buf = 136317442;
        v32 = "[CSSiriSpeechRecorder _checkIfLastEndpointHintShouldBeAccepted:]";
        v33 = 2048;
        v34 = integerValue;
        v35 = 2112;
        v36 = refId;
        v37 = 2048;
        v38 = v8;
        v39 = 1024;
        v40 = bOOLValue;
        v41 = 2048;
        v42 = v18;
        v43 = 2048;
        v44 = v21;
        v45 = 2048;
        v46 = v24;
        v47 = 2048;
        v48 = v27;
        v49 = 2112;
        v50 = speechRecognitionTask;
        _os_log_impl(&dword_222E4D000, v28, OS_LOG_TYPE_INFO, "%s rcID: %lu, requestId: %@, duration: %lf, lrnnProcessed:%d lrnnScore: %f, lrnnThreshold: %f, calibrationScale: %f, calibrationOffset: %f, taskId: %@", buf, 0x62u);
      }

      speechController = self->_speechController;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __65__CSSiriSpeechRecorder__checkIfLastEndpointHintShouldBeAccepted___block_invoke;
      v30[3] = &unk_2784C65C0;
      v30[4] = self;
      *&v30[5] = v8;
      [(CSSpeechController *)speechController processRCWithId:integerValue requestId:refId speechPackage:v9 taskId:speechRecognitionTask forceAccept:acceptedCopy completionHandler:v30];
    }
  }
}

void __65__CSSiriSpeechRecorder__checkIfLastEndpointHintShouldBeAccepted___block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 16);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__CSSiriSpeechRecorder__checkIfLastEndpointHintShouldBeAccepted___block_invoke_2;
  v11[3] = &unk_2784C6598;
  v14 = a2;
  v15 = a3;
  v13 = *(a1 + 40);
  v11[4] = v8;
  v12 = v7;
  v10 = v7;
  dispatch_async(v9, v11);
}

void __65__CSSiriSpeechRecorder__checkIfLastEndpointHintShouldBeAccepted___block_invoke_2(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 57);
    v5 = *(a1 + 48);
    v6 = *(*(a1 + 32) + 424);
    v7 = v2;
    v8 = [v6 processedAudioDuration];
    [v8 doubleValue];
    v14 = 136316162;
    v15 = "[CSSiriSpeechRecorder _checkIfLastEndpointHintShouldBeAccepted:]_block_invoke_2";
    v16 = 1024;
    v17 = v3;
    v18 = 1024;
    v19 = v4;
    v20 = 2048;
    v21 = v5;
    v22 = 2048;
    v23 = v9;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s Eager results - shouldAccept: %d, isMitigated: %d Duration: %lf last duration: %lf", &v14, 0x2Cu);
  }

  v10 = *(a1 + 48);
  v11 = [*(*(a1 + 32) + 424) processedAudioDuration];
  [v11 doubleValue];
  v13 = v12;

  if (v10 == v13)
  {
    objc_storeStrong((*(a1 + 32) + 408), *(a1 + 40));
    *(*(a1 + 32) + 432) = 1;
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) _enforceEndpointHintWithMitigation:*(a1 + 57)];
    }
  }
}

- (void)updateEndpointHintForRC:(id)c forceAccept:(BOOL)accept completion:(id)completion
{
  acceptCopy = accept;
  v24 = *MEMORY[0x277D85DE8];
  cCopy = c;
  completionCopy = completion;
  [(CSSiriSpeechRecorder *)self _clearEndpointHint];
  v11 = MEMORY[0x277CEF0E8];
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    processedAudioDuration = [cCopy processedAudioDuration];
    [processedAudioDuration doubleValue];
    v20 = 136315394;
    v21 = "[CSSiriSpeechRecorder updateEndpointHintForRC:forceAccept:completion:]";
    v22 = 2048;
    v23 = v15;
    _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s duration = %lf", &v20, 0x16u);
  }

  objc_storeStrong(&self->_lastEndpointHintRC, c);
  v16 = MEMORY[0x223DD26C0](completionCopy);

  lastEndpointHintCompletion = self->_lastEndpointHintCompletion;
  self->_lastEndpointHintCompletion = v16;

  if (self->_didDetectEndpoint && (endpointerOperationMode = self->_endpointerOperationMode, endpointerOperationMode <= 4) && ((0x19u >> endpointerOperationMode) & 1) != 0 || self->_serverDidEndpoint)
  {
    [(CSSiriSpeechRecorder *)self _checkIfLastEndpointHintShouldBeAccepted:acceptCopy];
  }

  else
  {
    v19 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[CSSiriSpeechRecorder updateEndpointHintForRC:forceAccept:completion:]";
      _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_INFO, "%s No endpoint yet, waiting", &v20, 0xCu);
    }
  }
}

- (id)_convertToAFSpeechPackage:(id)package
{
  packageCopy = package;
  recognition = [packageCopy recognition];
  af_speechPhrases = [recognition af_speechPhrases];
  af_speechUtterances = [recognition af_speechUtterances];
  v7 = objc_alloc(MEMORY[0x277CEF480]);
  processedAudioDuration = [packageCopy processedAudioDuration];
  [processedAudioDuration doubleValue];
  v9 = [v7 initWithPhrases:af_speechPhrases utterances:af_speechUtterances processedAudioDuration:?];

  v10 = [objc_alloc(MEMORY[0x277CEF440]) initWithSpeechRecognitionFeatures:0 acousticFeatures:0 snr:1.0];
  latticeRnnMitigatorIsProcessed = [packageCopy latticeRnnMitigatorIsProcessed];

  if (latticeRnnMitigatorIsProcessed)
  {
    v12 = objc_alloc(MEMORY[0x277CEF460]);
    latticeRnnMitigatorModelId = [packageCopy latticeRnnMitigatorModelId];
    [packageCopy latticeRnnMitigatorScore];
    v15 = v14;
    [packageCopy latticeRnnMitigatorThreshold];
    *&v17 = v16;
    *&v16 = v15;
    latticeRnnMitigatorIsProcessed = [v12 initWithResults:latticeRnnMitigatorModelId score:v16 threshold:v17];
  }

  v18 = [objc_alloc(MEMORY[0x277CEF470]) initWithRecognition:v9 rawRecognition:v9 audioAnalytics:v10 isFinal:1 utteranceStart:latticeRnnMitigatorIsProcessed latticeMitigatorResult:0.0];

  return v18;
}

- (void)_handleFakeTwoShotPromptCallbackWithUUID:(id)d timestamp:(double)timestamp duration:(double)duration error:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  v12 = [(NSUUID *)self->_fakeTwoShotTTSPromptUUID isEqual:dCopy];
  v13 = *MEMORY[0x277CEF0E8];
  if (v12)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v17 = 136315906;
      v18 = "[CSSiriSpeechRecorder _handleFakeTwoShotPromptCallbackWithUUID:timestamp:duration:error:]";
      v19 = 2048;
      timestampCopy = timestamp;
      v21 = 2048;
      durationCopy = duration;
      v23 = 2112;
      v24 = errorCopy;
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s Fake two shot TTS prompt called back (timestamp = %f, duration = %f, error = %@)", &v17, 0x2Au);
    }

    [(AFWatchdogTimer *)self->_fakeTwoShotTTSPromptWatchdogTimer cancel];
    fakeTwoShotTTSPromptWatchdogTimer = self->_fakeTwoShotTTSPromptWatchdogTimer;
    self->_fakeTwoShotTTSPromptWatchdogTimer = 0;

    fakeTwoShotTTSPromptUUID = self->_fakeTwoShotTTSPromptUUID;
    self->_fakeTwoShotTTSPromptUUID = 0;
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v16 = self->_fakeTwoShotTTSPromptUUID;
    v17 = 136315650;
    v18 = "[CSSiriSpeechRecorder _handleFakeTwoShotPromptCallbackWithUUID:timestamp:duration:error:]";
    v19 = 2112;
    timestampCopy = *&dCopy;
    v21 = 2112;
    durationCopy = *&v16;
    _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, "%s Fake two shot TTS prompt callback is not handled due to context mismatch (fakeTwoShotPromptUUID = %@, _fakeTwoShotPromptUUID = %@).", &v17, 0x20u);
  }
}

- (void)_handleFakeTwoShotPromptTimeoutWithUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = [(NSUUID *)self->_fakeTwoShotTTSPromptUUID isEqual:dCopy];
  v6 = *MEMORY[0x277CEF0E8];
  v7 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (v7)
    {
      fakeTwoShotTTSPromptUUID = self->_fakeTwoShotTTSPromptUUID;
      v12 = 136315394;
      v13 = "[CSSiriSpeechRecorder _handleFakeTwoShotPromptTimeoutWithUUID:]";
      v14 = 2112;
      v15 = fakeTwoShotTTSPromptUUID;
      _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, "%s Fake two shot TTS prompt timed out (%@).", &v12, 0x16u);
    }

    [(AFWatchdogTimer *)self->_fakeTwoShotTTSPromptWatchdogTimer cancel];
    fakeTwoShotTTSPromptWatchdogTimer = self->_fakeTwoShotTTSPromptWatchdogTimer;
    self->_fakeTwoShotTTSPromptWatchdogTimer = 0;

    v9 = self->_fakeTwoShotTTSPromptUUID;
    self->_fakeTwoShotTTSPromptUUID = 0;
  }

  else if (v7)
  {
    v11 = self->_fakeTwoShotTTSPromptUUID;
    v12 = 136315650;
    v13 = "[CSSiriSpeechRecorder _handleFakeTwoShotPromptTimeoutWithUUID:]";
    v14 = 2112;
    v15 = dCopy;
    v16 = 2112;
    v17 = v11;
    _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, "%s Fake two shot TTS prompt timeout is not handled due to context mismatch (fakeTwoShotPromptUUID = %@, _fakeTwoShotPromptUUID = %@).", &v12, 0x20u);
  }
}

- (void)_playPhaticWithCompletion:(id)completion
{
  v15 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v14 = "[CSSiriSpeechRecorder _playPhaticWithCompletion:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  v6 = self->_delegate;
  if (v6)
  {
    v7 = self->_context;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __50__CSSiriSpeechRecorder__playPhaticWithCompletion___block_invoke;
    v9[3] = &unk_2784C6570;
    v10 = v7;
    selfCopy = self;
    v12 = completionCopy;
    v8 = v7;
    [(CSSiriSpeechCapturingDelegate *)v6 speechCapturing:self performTwoShotPromptWithType:2 completion:v9];

LABEL_7:
    goto LABEL_8;
  }

  if (completionCopy)
  {
    v8 = [MEMORY[0x277CEF2A0] errorWithCode:15 description:@"delegate is nil" underlyingError:0];
    (*(completionCopy + 2))(completionCopy, v8, 0.0, 0.0);
    goto LABEL_7;
  }

LABEL_8:
}

void __50__CSSiriSpeechRecorder__playPhaticWithCompletion___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = *MEMORY[0x277CEF0E8];
  if (v7)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v17 = "[CSSiriSpeechRecorder _playPhaticWithCompletion:]_block_invoke";
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s error = %@", buf, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v17 = "[CSSiriSpeechRecorder _playPhaticWithCompletion:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s done", buf, 0xCu);
    }

    [*(a1 + 32) instrumentSiriCue:2];
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    v10 = *(*(a1 + 40) + 16);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__CSSiriSpeechRecorder__playPhaticWithCompletion___block_invoke_251;
    v11[3] = &unk_2784C6548;
    v13 = v9;
    v14 = a3;
    v15 = a4;
    v12 = v7;
    dispatch_async(v10, v11);
  }
}

- (void)_performTwoShotPromptForType:(int64_t)type withOverride:(int64_t)override atTime:(double)time
{
  v65 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CEF0E8];
  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v60 = "[CSSiriSpeechRecorder _performTwoShotPromptForType:withOverride:atTime:]";
    v61 = 2048;
    typeCopy = type;
    v63 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s promptType = %ld, time = %f", buf, 0x20u);
  }

  self->_didFakeTwoShotWithAlert = 1;
  self->_twoShotStartTime = time;
  v11 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
  if (type)
  {
    if (type == 2)
    {
      mEMORY[0x277D017A0] = [MEMORY[0x277D017A0] sharedLogger];
      [mEMORY[0x277D017A0] logTwoShotStartEventWithPromptType:2 withMHUUID:v11];

      mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
      v55 = @"type";
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:2];
      v56 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      [mEMORY[0x277CEF158] logEventWithType:239 context:v20];

      v21 = objc_alloc_init(MEMORY[0x277CCAD78]);
      fakeTwoShotTTSPromptUUID = self->_fakeTwoShotTTSPromptUUID;
      self->_fakeTwoShotTTSPromptUUID = v21;

      fakeTwoShotTTSPromptWatchdogTimer = self->_fakeTwoShotTTSPromptWatchdogTimer;
      if (fakeTwoShotTTSPromptWatchdogTimer)
      {
        [(AFWatchdogTimer *)fakeTwoShotTTSPromptWatchdogTimer cancel];
      }

      objc_initWeak(buf, self);
      v24 = self->_fakeTwoShotTTSPromptUUID;
      v25 = objc_alloc(MEMORY[0x277CEF530]);
      queue = self->_queue;
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __73__CSSiriSpeechRecorder__performTwoShotPromptForType_withOverride_atTime___block_invoke_2;
      v51[3] = &unk_2784C64F8;
      v27 = v11;
      v52 = v27;
      objc_copyWeak(&v54, buf);
      v28 = v24;
      v53 = v28;
      v29 = [v25 initWithTimeoutInterval:queue onQueue:v51 timeoutHandler:4.0];
      v30 = self->_fakeTwoShotTTSPromptWatchdogTimer;
      self->_fakeTwoShotTTSPromptWatchdogTimer = v29;

      v42 = MEMORY[0x277D85DD0];
      v43 = 3221225472;
      v44 = __73__CSSiriSpeechRecorder__performTwoShotPromptForType_withOverride_atTime___block_invoke_250;
      v45 = &unk_2784C6520;
      v46 = v27;
      selfCopy = self;
      v31 = v28;
      v48 = v31;
      overrideCopy = override;
      timeCopy2 = time;
      [(CSSiriSpeechRecorder *)self _playPhaticWithCompletion:&v42];

      objc_destroyWeak(&v54);
      objc_destroyWeak(buf);
    }

    else if (type == 1)
    {
      mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
      v57 = @"type";
      v13 = [MEMORY[0x277CCABB0] numberWithInteger:1];
      v58 = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      [mEMORY[0x277CEF158]2 logEventWithType:239 context:v14];

      mEMORY[0x277D017A0]2 = [MEMORY[0x277D017A0] sharedLogger];
      [mEMORY[0x277D017A0]2 logTwoShotStartEventWithPromptType:1 withMHUUID:v11];

      if (AFIsHorseman())
      {
        v16 = ![(CSSiriSpeechRecorder *)self _shouldPlayTwoShotToneFeedbackOnHorseman];
      }

      else
      {
        v16 = 0;
      }

      v34 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v60 = "[CSSiriSpeechRecorder _performTwoShotPromptForType:withOverride:atTime:]";
        v61 = 1024;
        LODWORD(typeCopy) = v16;
        _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_INFO, "%s suppressesTwoShotAlert = %d", buf, 0x12u);
      }

      if (v16)
      {
        mEMORY[0x277CEF158]3 = [MEMORY[0x277CEF158] sharedAnalytics];
        [mEMORY[0x277CEF158]3 logEventWithType:240 context:&unk_283667C88];

        mEMORY[0x277D017A0]3 = [MEMORY[0x277D017A0] sharedLogger];
        [mEMORY[0x277D017A0]3 logTwoShotEndEventWithSuppresedAlert:1 withTimedOut:0 withMHUUID:v11];
      }

      else
      {
        twoShotAudioPlaybackRequest = [(AFClientConfiguration *)self->_currentClientConfiguration twoShotAudioPlaybackRequest];
        v38 = [(CSSiriSpeechRecorder *)self _startAudioPlaybackRequest:twoShotAudioPlaybackRequest options:3 completion:&__block_literal_global_240];

        if ((v38 & 1) == 0)
        {
          [(CSSpeechController *)self->_speechController playRecordStartingAlertAndResetEndpointerWithAlertOverride:override];
          mEMORY[0x277CEF158]4 = [MEMORY[0x277CEF158] sharedAnalytics];
          [mEMORY[0x277CEF158]4 logEventWithType:240 context:0];

          mEMORY[0x277D017A0]4 = [MEMORY[0x277D017A0] sharedLogger];
          [mEMORY[0x277D017A0]4 logTwoShotEndEventWithSuppresedAlert:0 withTimedOut:1 withMHUUID:v11];
        }

        self->_didPerformTwoShotPrompt = 1;
      }
    }
  }

  else
  {
    mEMORY[0x277D017A0]5 = [MEMORY[0x277D017A0] sharedLogger];
    [mEMORY[0x277D017A0]5 logTwoShotStartEventWithPromptType:0 withMHUUID:v11];

    mEMORY[0x277D017A0]6 = [MEMORY[0x277D017A0] sharedLogger];
    [mEMORY[0x277D017A0]6 logTwoShotEndEventWithSuppresedAlert:0 withTimedOut:0 withMHUUID:v11];
  }

  v41 = [(CSSiriSpeechRecorder *)self _currentRecordingInfo:v42];
  [v41 setTriggeredTwoShotBorealis:1];
  [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidUpdateRecordingInfo:v41];
}

void __73__CSSiriSpeechRecorder__performTwoShotPromptForType_withOverride_atTime___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v2 logEventWithType:240 context:&unk_283667CB0];

  v3 = [MEMORY[0x277D017A0] sharedLogger];
  [v3 logTwoShotEndEventWithSuppresedAlert:0 withTimedOut:1 withMHUUID:*(a1 + 32)];

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _handleFakeTwoShotPromptTimeoutWithUUID:*(a1 + 40)];
}

uint64_t __73__CSSiriSpeechRecorder__performTwoShotPromptForType_withOverride_atTime___block_invoke_250(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = MEMORY[0x277CEF158];
  v8 = a2;
  v9 = [v7 sharedAnalytics];
  [v9 logEventWithType:240 context:0];

  v10 = [MEMORY[0x277D017A0] sharedLogger];
  [v10 logTwoShotEndEventWithSuppresedAlert:0 withTimedOut:0 withMHUUID:*(a1 + 32)];

  [*(a1 + 40) _handleFakeTwoShotPromptCallbackWithUUID:*(a1 + 48) timestamp:v8 duration:a3 error:a4];
  result = *(a1 + 40);
  if (v8 && (*(result + 176) - 1) <= 1)
  {
    [result _performTwoShotPromptForType:1 withOverride:*(a1 + 56) atTime:*(a1 + 64)];
    result = *(a1 + 40);
  }

  *(result + 224) = 1;
  return result;
}

void __73__CSSiriSpeechRecorder__performTwoShotPromptForType_withOverride_atTime___block_invoke()
{
  v0 = [MEMORY[0x277CEF158] sharedAnalytics];
  [v0 logEventWithType:240 context:0];
}

- (void)endpointer:(id)endpointer detectedTwoShotAtTime:(double)time
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CSSiriSpeechRecorder endpointer:detectedTwoShotAtTime:]";
    v9 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Detected two shot at time: %f", &v7, 0x16u);
  }

  [(CSSpeechController *)self->_speechController detectedTwoShotAtTime:time];
}

- (void)_hardEndpointWasDetectedWithMetrics:(id)metrics atTime:(double)time
{
  v23 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v8 = MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v19 = 136315394;
    v20 = "[CSSiriSpeechRecorder _hardEndpointWasDetectedWithMetrics:atTime:]";
    v21 = 2112;
    v22 = metricsCopy;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Detected hard end-point with metrics - %@", &v19, 0x16u);
  }

  if (AFIsInternalInstall())
  {
    v10 = *v8;
    v11 = os_signpost_id_generate(*v8);
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v12 = v11;
      if (os_signpost_enabled(v10))
      {
        LOWORD(v19) = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v10, OS_SIGNPOST_EVENT, v12, "SpeechRecorder", "EndpointHandled", &v19, 2u);
      }
    }
  }

  kdebug_trace();
  self->_didDetectEndpoint = 1;
  objc_storeStrong(&self->_lastEndpointerMetrics, metrics);
  if (self->_didDetectStartpoint || self->_serverDidRecognizeSpeech)
  {
    self->_didTimeout = 0;
  }

  else
  {
    didFakeTwoShotWithAlert = self->_didFakeTwoShotWithAlert;
    self->_didTimeout = !didFakeTwoShotWithAlert;
    if (!didFakeTwoShotWithAlert && [(CSSiriAudioActivationInfo *)self->_currentActivationInfo shouldTreatTimeoutAsHardEndpoint])
    {
      v18 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        v19 = 136315138;
        v20 = "[CSSiriSpeechRecorder _hardEndpointWasDetectedWithMetrics:atTime:]";
        _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_INFO, "%s Overriding timeout and start point on timeout", &v19, 0xCu);
      }

      self->_didTimeout = 0;
      self->_didDetectStartpoint = 1;
    }
  }

  endpointerOperationMode = self->_endpointerOperationMode;
  if (endpointerOperationMode <= 4 && ((0x19u >> endpointerOperationMode) & 1) != 0)
  {
    [(CSSiriSpeechRecorder *)self _checkIfLastEndpointHintShouldBeAccepted:0];
    [(CSSiriSpeechRecorder *)self _stopRecordingForEndpointReason:2 withEndpointMetrics:metricsCopy];
    [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturing:self didDetectEndpointAtTime:time];
  }

  else
  {
    v14 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v15 = v14;
      v16 = AFSpeechEndpointerOperationModeGetName();
      v19 = 136315394;
      v20 = "[CSSiriSpeechRecorder _hardEndpointWasDetectedWithMetrics:atTime:]";
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s Ignoring hard endpoint since _endpointerOperationMode = %@", &v19, 0x16u);
    }
  }
}

- (void)endpointer:(id)endpointer didDetectHardEndpointAtTime:(double)time withMetrics:(id)metrics eventType:(int64_t)type
{
  v35 = *MEMORY[0x277D85DE8];
  endpointerCopy = endpointer;
  metricsCopy = metrics;
  v11 = MEMORY[0x277CEF0E8];
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v32 = "[CSSiriSpeechRecorder endpointer:didDetectHardEndpointAtTime:withMetrics:eventType:]";
    v33 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s time = %lf", buf, 0x16u);
  }

  if (AFIsInternalInstall())
  {
    v13 = *v11;
    v14 = os_signpost_id_generate(*v11);
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v15 = v14;
      if (os_signpost_enabled(v13))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v13, OS_SIGNPOST_EVENT, v15, "SpeechRecorder", "Endpoint", buf, 2u);
      }
    }
  }

  kdebug_trace();
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __85__CSSiriSpeechRecorder_endpointer_didDetectHardEndpointAtTime_withMetrics_eventType___block_invoke;
  v28[3] = &unk_2784C64A8;
  timeCopy2 = time;
  v17 = metricsCopy;
  v29 = v17;
  [mEMORY[0x277CEF158] logEventWithType:220 contextProvider:v28];

  recordingWillStartGroup = self->_recordingWillStartGroup;
  v19 = dispatch_time(0, 15000000000);
  dispatch_group_wait(recordingWillStartGroup, v19);
  v20 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v32 = "[CSSiriSpeechRecorder endpointer:didDetectHardEndpointAtTime:withMetrics:eventType:]";
    _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_INFO, "%s exited _recordingWillStartGroup", buf, 0xCu);
  }

  queue = self->_queue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __85__CSSiriSpeechRecorder_endpointer_didDetectHardEndpointAtTime_withMetrics_eventType___block_invoke_231;
  v24[3] = &unk_2784C64D0;
  v24[4] = self;
  v25 = endpointerCopy;
  timeCopy3 = time;
  v26 = v17;
  v22 = v17;
  v23 = endpointerCopy;
  dispatch_sync(queue, v24);
}

id __85__CSSiriSpeechRecorder_endpointer_didDetectHardEndpointAtTime_withMetrics_eventType___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 40)];
  [v2 setObject:v3 forKey:@"time"];

  v4 = [*(a1 + 32) additionalMetrics];
  if (v4)
  {
    [v2 setObject:v4 forKey:@"additionalMetrics"];
  }

  return v2;
}

void __85__CSSiriSpeechRecorder_endpointer_didDetectHardEndpointAtTime_withMetrics_eventType___block_invoke_231(double *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 4);
  if (*(v1 + 80) != *(a1 + 5))
  {
    v2 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      return;
    }

    v15 = 136315138;
    v16 = "[CSSiriSpeechRecorder endpointer:didDetectHardEndpointAtTime:withMetrics:eventType:]_block_invoke";
    v3 = "%s Ignoring hard endpoint from stale CSEndpointAnalyzer";
    v4 = v2;
    v5 = 12;
    goto LABEL_4;
  }

  [*(v1 + 440) endTimestamp];
  AFMachAbsoluteTimeGetTimeInterval();
  v8 = *(a1 + 4);
  if ((*(v8 + 64) & 0xFFFFFFFFFFFFFFFBLL) == 1 && (v9 = v7, v10 = *(v8 + 240), v10 < v7) && (v11 = a1[7], v11 < v7 - v10 + 0.5))
  {
    v12 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v15 = 136316162;
      v16 = "[CSSiriSpeechRecorder endpointer:didDetectHardEndpointAtTime:withMetrics:eventType:]_block_invoke";
      v17 = 2048;
      v18 = v11;
      v19 = 2048;
      v20 = v10;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = 0x3FE0000000000000;
      v3 = "%s Ignoring hard endpoint because (endpointTime = %f, firstBufferTimestamp = %f, mostRecentTTSEndTimestamp = %f, extendedSuppressDuration = %f).";
      v4 = v12;
      v5 = 52;
LABEL_4:
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, v3, &v15, v5);
    }
  }

  else
  {
    v13 = *(a1 + 6);
    v14 = a1[7];

    [v8 _hardEndpointWasDetectedWithMetrics:v13 atTime:v14];
  }
}

- (void)speechControllerDidUpdateSmartSiriVolume:(id)volume forReason:(unint64_t)reason
{
  v15 = *MEMORY[0x277D85DE8];
  volumeCopy = volume;
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v12 = "[CSSiriSpeechRecorder speechControllerDidUpdateSmartSiriVolume:forReason:]";
    v13 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s reason = %tu", buf, 0x16u);
  }

  v8 = AFIsHorseman();
  if (reason <= 5 && v8)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__CSSiriSpeechRecorder_speechControllerDidUpdateSmartSiriVolume_forReason___block_invoke;
    block[3] = &unk_2784C6FD0;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_speechControllerRequestsOperation:(unint64_t)operation forReason:(unint64_t)reason completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = MEMORY[0x277CEF0E8];
  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[CSSiriSpeechRecorder _speechControllerRequestsOperation:forReason:completion:]";
    v19 = 2048;
    operationCopy2 = operation;
    v21 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s opType = %tu, reason = %tu", buf, 0x20u);
  }

  if (operation > 1)
  {
    if (operation == 2)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __80__CSSiriSpeechRecorder__speechControllerRequestsOperation_forReason_completion___block_invoke;
      v15[3] = &unk_2784C6458;
      v16 = completionCopy;
      [(CSSiriSpeechRecorder *)self _playPhaticWithCompletion:v15];
      v11 = v16;
    }

    else
    {
      if (operation != 3)
      {
        goto LABEL_10;
      }

      [(CSSpeechController *)self->_speechController playRecordStartingAlertAndResetEndpointerWithAlertOverride:2];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __80__CSSiriSpeechRecorder__speechControllerRequestsOperation_forReason_completion___block_invoke_2;
      v13[3] = &unk_2784C6480;
      v14 = completionCopy;
      [(CSSiriSpeechRecorder *)self performBlockAfterAlerts:v13 timeout:0.5];
      v11 = v14;
    }

    goto LABEL_15;
  }

  if (!operation)
  {
    [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidRequestQuickStop:self];
    goto LABEL_15;
  }

  if (operation == 1)
  {
    [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidRequestShutdownUI:self];
    goto LABEL_15;
  }

LABEL_10:
  v12 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[CSSiriSpeechRecorder _speechControllerRequestsOperation:forReason:completion:]";
    v19 = 2048;
    operationCopy2 = operation;
    _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, "%s Unknown CSRequestOperationType (opType = %tu).", buf, 0x16u);
  }

LABEL_15:
}

uint64_t __80__CSSiriSpeechRecorder__speechControllerRequestsOperation_forReason_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __80__CSSiriSpeechRecorder__speechControllerRequestsOperation_forReason_completion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)speechControllerRequestsOperation:(unint64_t)operation forReason:(unint64_t)reason completion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[CSSiriSpeechRecorder speechControllerRequestsOperation:forReason:completion:]";
    v19 = 2048;
    operationCopy = operation;
    v21 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s opType = %tu, reason = %tu", buf, 0x20u);
  }

  recordingWillStartGroup = self->_recordingWillStartGroup;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __79__CSSiriSpeechRecorder_speechControllerRequestsOperation_forReason_completion___block_invoke;
  v13[3] = &unk_2784C6548;
  operationCopy2 = operation;
  reasonCopy2 = reason;
  v13[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  dispatch_group_notify(recordingWillStartGroup, queue, v13);
}

- (void)speechControllerRequestsOperation:(unint64_t)operation forReason:(unint64_t)reason
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v12 = "[CSSiriSpeechRecorder speechControllerRequestsOperation:forReason:]";
    v13 = 2048;
    operationCopy = operation;
    v15 = 2048;
    reasonCopy = reason;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s opType = %tu, reason = %tu", buf, 0x20u);
  }

  recordingWillStartGroup = self->_recordingWillStartGroup;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __68__CSSiriSpeechRecorder_speechControllerRequestsOperation_forReason___block_invoke;
  block[3] = &unk_2784C6430;
  block[4] = self;
  block[5] = operation;
  block[6] = reason;
  dispatch_group_notify(recordingWillStartGroup, queue, block);
}

- (void)suppressUtteranceGradingIfRequired
{
  v11 = *MEMORY[0x277D85DE8];
  if (AFIsHorseman())
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[CSSiriSpeechRecorder suppressUtteranceGradingIfRequired]";
      _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s BTLE speech controller began waiting for Myriad decision", buf, 0xCu);
    }

    _speechController = [(CSSiriSpeechRecorder *)self _speechController];
    [_speechController beginWaitingForMyriad];
    mEMORY[0x277D55B08] = [MEMORY[0x277D55B08] sharedMonitor];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __58__CSSiriSpeechRecorder_suppressUtteranceGradingIfRequired__block_invoke;
    v7[3] = &unk_2784C6408;
    v8 = _speechController;
    v6 = _speechController;
    [mEMORY[0x277D55B08] waitForMyriadDecisionForReason:@"Utterance Grading" withCompletion:v7];
  }
}

uint64_t __58__CSSiriSpeechRecorder_suppressUtteranceGradingIfRequired__block_invoke(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[CSSiriSpeechRecorder suppressUtteranceGradingIfRequired]_block_invoke";
    v8 = 2048;
    v9 = v3;
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s BTLE speech controller end waiting for Myriad decision %lu", &v6, 0x16u);
  }

  return [*(a1 + 32) endWaitingForMyriadWithDecision:v3];
}

- (void)speechControllerDidDetectVoiceTriggerTwoShot:(id)shot atTime:(double)time wantsAudibleFeedback:(BOOL)feedback
{
  feedbackCopy = feedback;
  v25 = *MEMORY[0x277D85DE8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[CSSiriSpeechRecorder speechControllerDidDetectVoiceTriggerTwoShot:atTime:wantsAudibleFeedback:]";
    v21 = 2048;
    timeCopy = time;
    v23 = 1024;
    v24 = feedbackCopy;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s time = %lf, wantsAudibleFeedback = %d", buf, 0x1Cu);
  }

  mEMORY[0x277D017A0] = [MEMORY[0x277D017A0] sharedLogger];
  v10 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
  [mEMORY[0x277D017A0] logTwoShotDetectedWithMHUUID:v10];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__CSSiriSpeechRecorder_speechControllerDidDetectVoiceTriggerTwoShot_atTime_wantsAudibleFeedback___block_invoke;
  v17[3] = &unk_2784C63B8;
  v17[4] = self;
  *&v17[5] = time;
  v18 = feedbackCopy;
  v11 = MEMORY[0x223DD26C0](v17);
  recordingWillStartGroup = self->_recordingWillStartGroup;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__CSSiriSpeechRecorder_speechControllerDidDetectVoiceTriggerTwoShot_atTime_wantsAudibleFeedback___block_invoke_2;
  block[3] = &unk_2784C6E98;
  block[4] = self;
  v16 = v11;
  v14 = v11;
  dispatch_group_notify(recordingWillStartGroup, queue, block);
}

void __97__CSSiriSpeechRecorder_speechControllerDidDetectVoiceTriggerTwoShot_atTime_wantsAudibleFeedback___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 195) & 1) == 0 && *(v1 + 176) == 2)
  {
    v3 = *(v1 + 104);
    if (!v3)
    {
      v3 = *(v1 + 96);
    }

    [*(v1 + 88) didDetectTwoShotWithAudioActivationInfo:v3 atTime:*(a1 + 40)];
    if (*(a1 + 48) == 1)
    {
      v11 = [*(a1 + 32) _currentRecordRoute];
      v4 = [*(a1 + 32) _currentPlaybackRoute];
      v5 = [*(*(a1 + 32) + 96) twoShotPromptTypeForRecordRoute:v11 playbackRoute:v4];
      v6 = *(*(a1 + 32) + 96);
      v7 = CSSupportsVibrator();
      v8 = [v6 twoShotFeedbackAlertOverrideForRecordRoute:v11 playbackRoute:v4 deviceSupportsVibrator:v7 deviceSupportsEC:MEMORY[0x223DD13E0]()];
      if (v5)
      {
        v9 = v8;
        v10 = *(a1 + 32);
        if (v10[21] != 17)
        {
          [v10 _performTwoShotPromptForType:v5 withOverride:v9 atTime:*(a1 + 40)];
        }
      }
    }
  }
}

void __97__CSSiriSpeechRecorder_speechControllerDidDetectVoiceTriggerTwoShot_atTime_wantsAudibleFeedback___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((AFIsHorseman() & 1) != 0 || *(*(a1 + 32) + 168) == 15)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[CSSiriSpeechRecorder speechControllerDidDetectVoiceTriggerTwoShot:atTime:wantsAudibleFeedback:]_block_invoke_2";
      _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s Trigger two-shot feedback NOW", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v10 = "[CSSiriSpeechRecorder speechControllerDidDetectVoiceTriggerTwoShot:atTime:wantsAudibleFeedback:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s BTLE waiting for Myriad to finish", buf, 0xCu);
    }

    v5 = [MEMORY[0x277D55B08] sharedMonitor];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __97__CSSiriSpeechRecorder_speechControllerDidDetectVoiceTriggerTwoShot_atTime_wantsAudibleFeedback___block_invoke_217;
    v7[3] = &unk_2784C63E0;
    v6 = *(a1 + 40);
    v7[4] = *(a1 + 32);
    v8 = v6;
    [v5 waitForMyriadDecisionForReason:@"Two shot feedback" withCompletion:v7];
  }
}

void __97__CSSiriSpeechRecorder_speechControllerDidDetectVoiceTriggerTwoShot_atTime_wantsAudibleFeedback___block_invoke_217(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v2 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__CSSiriSpeechRecorder_speechControllerDidDetectVoiceTriggerTwoShot_atTime_wantsAudibleFeedback___block_invoke_2_218;
    block[3] = &unk_2784C6C90;
    v5 = *(a1 + 40);
    dispatch_async(v2, block);
  }

  else
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v7 = "[CSSiriSpeechRecorder speechControllerDidDetectVoiceTriggerTwoShot:atTime:wantsAudibleFeedback:]_block_invoke";
      _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s BTLE Myriad loss cancelled two shot feedback", buf, 0xCu);
    }
  }
}

- (void)languageDetectorDidDetectLanguageWithConfidence:(id)confidence confidence:(id)a4 isConfident:(BOOL)confident
{
  confidentCopy = confident;
  v26 = *MEMORY[0x277D85DE8];
  confidenceCopy = confidence;
  v9 = a4;
  v10 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    *buf = 136315907;
    v19 = "[CSSiriSpeechRecorder languageDetectorDidDetectLanguageWithConfidence:confidence:isConfident:]";
    v20 = 1025;
    v21 = confidentCopy;
    v22 = 2113;
    v23 = confidenceCopy;
    v24 = 2113;
    v25 = v9;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s Language detector is confident:%{private}d of the detected language:'%{private}@' with language code likelihood: %{private}@", buf, 0x26u);
  }

  queue = self->_queue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __95__CSSiriSpeechRecorder_languageDetectorDidDetectLanguageWithConfidence_confidence_isConfident___block_invoke;
  v14[3] = &unk_2784C6F80;
  v14[4] = self;
  v15 = confidenceCopy;
  v16 = v9;
  v17 = confidentCopy;
  v12 = v9;
  v13 = confidenceCopy;
  dispatch_async(queue, v14);
}

- (void)_playStopAlertIfNecessaryForReason:(int64_t)reason error:(id)error
{
  v40 = *MEMORY[0x277D85DE8];
  _currentRecordRoute = [(CSSiriSpeechRecorder *)self _currentRecordRoute];
  v8 = self->_speechCapturingMode == 4 && !self->_fingerprintWasRecognized;
  v9 = (reason + 11785) <= 0xFFFFFFFFFFFFFFFDLL && !self->_suppressRecordingStoppedAlert && (AFIsHorseman() & 1) == 0 && (AFIsNano() & 1) == 0 && ![(CSSiriAudioActivationInfo *)self->_currentActivationInfo shouldSuppressRecordingStopAlert]&& ([(CSSiriAudioActivationInfo *)self->_currentActivationInfo isVoiceOverTouchEnabled]|| (self->_speechCapturingMode & 0xFFFFFFFFFFFFFFFELL) == 2) || v8;
  if (AFIsATV())
  {
    if (![(CSSiriAudioActivationInfo *)self->_currentActivationInfo isVoiceOverTouchEnabled])
    {
      goto LABEL_12;
    }
  }

  else if ((v9 & 1) == 0)
  {
LABEL_12:
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v26 = 136315138;
      v27 = "[CSSiriSpeechRecorder _playStopAlertIfNecessaryForReason:error:]";
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s Not explicitly playing alert", &v26, 0xCu);
    }

    goto LABEL_36;
  }

  v11 = self->_speechCapturingMode & 0xFFFFFFFFFFFFFFFBLL;
  speechEvent = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo speechEvent];
  mEMORY[0x277D55B08] = [MEMORY[0x277D55B08] sharedMonitor];
  didWin = [mEMORY[0x277D55B08] didWin];
  isMonitoring = [mEMORY[0x277D55B08] isMonitoring];
  v16 = *MEMORY[0x277CEF0A0];
  if (os_log_type_enabled(*MEMORY[0x277CEF0A0], OS_LOG_TYPE_INFO))
  {
    wasCanceled = self->_wasCanceled;
    suppressRecordingStoppedAlert = self->_suppressRecordingStoppedAlert;
    v26 = 136316930;
    v27 = "[CSSiriSpeechRecorder _playStopAlertIfNecessaryForReason:error:]";
    v28 = 1024;
    *v29 = v11 == 1;
    *&v29[4] = 2048;
    *&v29[6] = speechEvent;
    v30 = 1024;
    v31 = wasCanceled;
    v32 = 1024;
    v33 = suppressRecordingStoppedAlert;
    v34 = 1024;
    v35 = isMonitoring;
    v36 = 1024;
    v37 = didWin;
    v38 = 2112;
    v39 = _currentRecordRoute;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s isSiriMode=%d, speechEvent=%ld, wasRequestCancelled=%d, shouldSuppressAlert=%d, isMonitoringMyriadEvents=%d, didMyriadWin=%d, recordRoute=%@", &v26, 0x3Eu);
  }

  if (v11 == 1 && AFSpeechEventIsVoiceTrigger() && (v19 = self->_wasCanceled, v19 || (isMonitoring & 1) == 0 || (didWin & 1) == 0) && ((!v19 | isMonitoring) & 1) != 0)
  {
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v26 = 136315138;
      v27 = "[CSSiriSpeechRecorder _playStopAlertIfNecessaryForReason:error:]";
      _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_INFO, "%s BTLE Myriad Not explicitly playing speech stop alert", &v26, 0xCu);
    }
  }

  else
  {
    v21 = (error || self->_wasCanceled || v8) && !self->_forceSuccessAlertOnStop;
    v22 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v23 = @"AVVoice_RecordStopped";
      if (v21)
      {
        v23 = @"AVVoice_RecordStoppedWithError";
      }

      v26 = 136315394;
      v27 = "[CSSiriSpeechRecorder _playStopAlertIfNecessaryForReason:error:]";
      v28 = 2112;
      *v29 = v23;
      _os_log_impl(&dword_222E4D000, v22, OS_LOG_TYPE_INFO, "%s Explicitly playing %@ alert", &v26, 0x16u);
    }

    if (v21 && ![(CSSiriAudioActivationInfo *)self->_currentActivationInfo shouldSuppressRecordingErrorAlert])
    {
      selfCopy2 = self;
      v25 = 3;
    }

    else
    {
      selfCopy2 = self;
      v25 = 2;
    }

    [(CSSiriSpeechRecorder *)selfCopy2 _playAudioAlert:v25];
  }

LABEL_36:
}

- (BOOL)_shouldPlaySummonedToneOnTopCapInvocationOnHorseman
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  startAlertEnabled = [mEMORY[0x277CEF368] startAlertEnabled];

  return startAlertEnabled;
}

- (BOOL)_shouldPlayTwoShotToneFeedbackOnHorseman
{
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  if ([mEMORY[0x277CEF368] startAlertEnabled])
  {
    supportStateFeedback = 1;
  }

  else
  {
    supportStateFeedback = [MEMORY[0x277D018F8] supportStateFeedback];
  }

  return supportStateFeedback;
}

- (void)speechControllerDidFinishAlertPlayback:(id)playback ofType:(int64_t)type error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  playbackCopy = playback;
  errorCopy = error;
  v10 = *MEMORY[0x277CEF0E8];
  if (errorCopy)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v18 = "[CSSiriSpeechRecorder speechControllerDidFinishAlertPlayback:ofType:error:]";
      v19 = 2048;
      typeCopy2 = type;
      v21 = 2112;
      v22 = errorCopy;
      _os_log_error_impl(&dword_222E4D000, v10, OS_LOG_TYPE_ERROR, "%s type = %ld, error = %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v18 = "[CSSiriSpeechRecorder speechControllerDidFinishAlertPlayback:ofType:error:]";
    v19 = 2048;
    typeCopy2 = type;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s type = %ld", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__CSSiriSpeechRecorder_speechControllerDidFinishAlertPlayback_ofType_error___block_invoke;
  block[3] = &unk_2784C6998;
  v14 = errorCopy;
  selfCopy = self;
  typeCopy3 = type;
  v12 = errorCopy;
  dispatch_async(queue, block);
}

void __76__CSSiriSpeechRecorder_speechControllerDidFinishAlertPlayback_ofType_error___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 32) && [*(a1 + 40) _shouldEmitInstrumentation])
  {
    [*(*(a1 + 40) + 88) instrumentSiriCueForAlertType:*(a1 + 48)];
  }

  v2 = *(*(a1 + 40) + 464);
  if (!v2)
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[CSSiriSpeechRecorder speechControllerDidFinishAlertPlayback:ofType:error:]_block_invoke";
    v11 = "%s numberOfAVVCAlertPlaybacksByType is nil.";
LABEL_13:
    v12 = v10;
    v13 = 12;
    goto LABEL_16;
  }

  v3 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  v4 = [v2 objectForKey:v3];
  v5 = [v4 unsignedIntegerValue];

  if (!v5)
  {
    v14 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v15 = *(a1 + 48);
    *buf = 136315394;
    v20 = "[CSSiriSpeechRecorder speechControllerDidFinishAlertPlayback:ofType:error:]_block_invoke";
    v21 = 2048;
    v22 = v15;
    v11 = "%s numberOfAVVCAlertPlaybacksByType does not have AVVC alert playbacks of type %ld.";
    v12 = v14;
    v13 = 22;
LABEL_16:
    _os_log_error_impl(&dword_222E4D000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
    return;
  }

  v6 = v5 - 1;
  if (v5 == 1)
  {
    v7 = *(*(a1 + 40) + 464);
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
    [v7 removeObjectForKey:v8];

    v9 = *(*(a1 + 40) + 456);
    if (v9)
    {

      dispatch_group_leave(v9);
      return;
    }

    v10 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 136315138;
    v20 = "[CSSiriSpeechRecorder speechControllerDidFinishAlertPlayback:ofType:error:]_block_invoke";
    v11 = "%s alertPlaybackGroup is nil.";
    goto LABEL_13;
  }

  v16 = *(*(a1 + 40) + 464);
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
  v17 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 48)];
  [v16 setObject:v18 forKey:v17];
}

- (void)speechController:(id)controller didSetAudioSessionActive:(BOOL)active
{
  activeCopy = active;
  v14 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[CSSiriSpeechRecorder speechController:didSetAudioSessionActive:]";
    v12 = 1024;
    v13 = activeCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__CSSiriSpeechRecorder_speechController_didSetAudioSessionActive___block_invoke;
  v8[3] = &unk_2784C6390;
  v8[4] = self;
  v9 = activeCopy;
  dispatch_async(queue, v8);
}

- (void)speechController:(id)controller willSetAudioSessionActive:(BOOL)active
{
  activeCopy = active;
  v14 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v11 = "[CSSiriSpeechRecorder speechController:willSetAudioSessionActive:]";
    v12 = 1024;
    v13 = activeCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s %d", buf, 0x12u);
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __67__CSSiriSpeechRecorder_speechController_willSetAudioSessionActive___block_invoke;
  v8[3] = &unk_2784C6390;
  v8[4] = self;
  v9 = activeCopy;
  dispatch_async(queue, v8);
}

- (void)speechControllerRecordHardwareConfigurationDidChange:(id)change toConfiguration:(int64_t)configuration
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[CSSiriSpeechRecorder speechControllerRecordHardwareConfigurationDidChange:toConfiguration:]";
    v8 = 2048;
    configurationCopy = configuration;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s %ld", &v6, 0x16u);
  }
}

- (void)speechControllerEndRecordInterruption:(id)interruption
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[CSSiriSpeechRecorder speechControllerEndRecordInterruption:]";
    _os_log_impl(&dword_222E4D000, v4, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:227 context:0];

  mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
  v7 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
  [mEMORY[0x277D01738] logMHAssistantDaemonAudioRecordingInterruptionContextWithMHUUID:v7 withStartEvent:0 withLinkID:0 withAvAudioSessionInterruptorName:0 withAVAudioSessionInterrupterType:0];
}

- (void)speechControllerBeginRecordInterruption:(id)interruption withContext:(id)context
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = AFAddInterruptingAudioSessionInfoToAnalyticsContext();
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v18 = 136315394;
    v19 = "[CSSiriSpeechRecorder speechControllerBeginRecordInterruption:withContext:]";
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s context = %@", &v18, 0x16u);
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  v8 = [v5 objectForKey:@"kAudioSessionProperty_ActiveSessionDisplayIDs"];
  v9 = [v5 objectForKey:*MEMORY[0x277CB8088]];
  v10 = [v5 objectForKey:*MEMORY[0x277CB8080]];
  stringValue = [v10 stringValue];

  v12 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
  mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
  [mEMORY[0x277D01738] logMHAssistantDaemonAudioRecordingInterruptionContextWithMHUUID:v12 withStartEvent:1 withLinkID:uUID withAvAudioSessionInterruptorName:v9 withAVAudioSessionInterrupterType:stringValue];

  v14 = +[CSMXSessionMonitor GetCurrentlyActiveSessionCategory];
  v15 = +[CSMXSessionMonitor GetCurrentlyActiveSessionMode];
  mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
  [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioRecordingInterruptionStartedTier1WithMHUUID:v12 withLinkID:uUID withActiveSessionDisplayIDs:v8 audioSessionCategory:v14 audioSessionMode:v15];

  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:226 context:v5];
}

- (void)_speechControllerDidReceiveLastAudioRecordBuffer:(id)buffer forReason:(int64_t)reason estimatedSpeechEndHostTime:(unint64_t)time isRecordingStopped:(BOOL)stopped
{
  stoppedCopy = stopped;
  v34 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v11 = MEMORY[0x277CEF0E8];
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v26 = 136315906;
    v27 = "[CSSiriSpeechRecorder _speechControllerDidReceiveLastAudioRecordBuffer:forReason:estimatedSpeechEndHostTime:isRecordingStopped:]";
    v28 = 2048;
    reasonCopy = reason;
    v30 = 2048;
    timeCopy = time;
    v32 = 1024;
    v33 = stoppedCopy;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s reason = %zd, estimatedSpeechEndHostTime = %llu, isRecordingStopped = %d", &v26, 0x26u);
  }

  recordingState = self->_recordingState;
  if ((recordingState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v21 = *v11;
    if (!os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v26 = 136315394;
    v27 = "[CSSiriSpeechRecorder _speechControllerDidReceiveLastAudioRecordBuffer:forReason:estimatedSpeechEndHostTime:isRecordingStopped:]";
    v28 = 2048;
    reasonCopy = recordingState;
    v22 = "%s Ignoring unexpected last buffer callback while in state %ld";
    v23 = v21;
    v24 = 22;
LABEL_16:
    _os_log_error_impl(&dword_222E4D000, v23, OS_LOG_TYPE_ERROR, v22, &v26, v24);
    goto LABEL_22;
  }

  if (!self->_didReceiveFirstBuffer)
  {
    v25 = *v11;
    if (!os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    v26 = 136315138;
    v27 = "[CSSiriSpeechRecorder _speechControllerDidReceiveLastAudioRecordBuffer:forReason:estimatedSpeechEndHostTime:isRecordingStopped:]";
    v22 = "%s Ignoring unexpected last buffer callback without first buffer.";
    v23 = v25;
    v24 = 12;
    goto LABEL_16;
  }

  self->_didReceiveLastBuffer = 1;
  v14 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
  if (self->_lastAudioRecordBufferStartTime)
  {
    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:231 machAbsoluteTime:self->_lastAudioRecordBufferStartTime context:0];

    mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738] logMHAssistantDaemonAudioRecordingLastBufferWithMHUUID:v14 withStartEvent:1 withLastBufferStartTimeOffsetNs:objc_msgSend(MEMORY[0x277D01798] withLastBufferReceiptTimeOffsetNs:{"hostTimeToNs:", self->_lastAudioRecordBufferStartTime), 0}];
  }

  if (self->_lastAudioRecordBufferReceiptTime)
  {
    mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158]2 logEventWithType:232 machAbsoluteTime:self->_lastAudioRecordBufferReceiptTime context:0];

    mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioRecordingLastBufferWithMHUUID:v14 withStartEvent:0 withLastBufferStartTimeOffsetNs:0 withLastBufferReceiptTimeOffsetNs:{objc_msgSend(MEMORY[0x277D01798], "hostTimeToNs:", self->_lastAudioRecordBufferReceiptTime)}];
  }

  if (!stoppedCopy)
  {
    if (self->_didDetectEndpoint)
    {
      lastEndpointerMetrics = self->_lastEndpointerMetrics;
      v20 = 1;
    }

    else
    {
      lastEndpointerMetrics = 0;
      if (reason == -11789 || self->_serverDidEndpoint)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2 * (reason == 0);
      }
    }

    [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidReceiveLastAudioBufferWithEndpointMode:v20 totalPacketCount:self->_packetCount endpointerMetrics:lastEndpointerMetrics];
  }

LABEL_22:
}

- (void)speechControllerLPCMRecordBufferAvailable:(id)available buffer:(id)buffer recordedAt:(unint64_t)at
{
  v32 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  bufferCopy = buffer;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __84__CSSiriSpeechRecorder_speechControllerLPCMRecordBufferAvailable_buffer_recordedAt___block_invoke;
  block[3] = &unk_2784C6998;
  block[4] = self;
  v11 = bufferCopy;
  v22 = v11;
  atCopy = at;
  dispatch_async(queue, block);
  if (self->_needsAVVCLPCMCallbacks)
  {
    if ([v11 length])
    {
      recordingWillStartGroup = self->_recordingWillStartGroup;
      v13 = self->_queue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __84__CSSiriSpeechRecorder_speechControllerLPCMRecordBufferAvailable_buffer_recordedAt___block_invoke_205;
      v19[3] = &unk_2784C6FA8;
      v19[4] = self;
      v20 = v11;
      dispatch_group_notify(recordingWillStartGroup, v13, v19);
    }

    else
    {
      v14 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = "[CSSiriSpeechRecorder speechControllerLPCMRecordBufferAvailable:buffer:recordedAt:]";
        _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s LPCM record buffer is empty.", &buf, 0xCu);
      }

      if (!self->_hasReceivedEmptyLPCMRecordBuffer)
      {
        self->_hasReceivedEmptyLPCMRecordBuffer = 1;
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v15 = getSiriCoreSymptomsReporterClass_softClass;
        v27 = getSiriCoreSymptomsReporterClass_softClass;
        if (!getSiriCoreSymptomsReporterClass_softClass)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v29 = __getSiriCoreSymptomsReporterClass_block_invoke;
          v30 = &unk_2784C66A0;
          v31 = &v24;
          __getSiriCoreSymptomsReporterClass_block_invoke(&buf);
          v15 = v25[3];
        }

        v16 = v15;
        _Block_object_dispose(&v24, 8);
        sharedInstance = [v15 sharedInstance];
        processInfo = [MEMORY[0x277CCAC38] processInfo];
        [sharedInstance reportIssueForType:@"audio_recording" subType:@"empty_lpcm_record_buffer" context:0 processIdentifier:objc_msgSend(processInfo walkboutStatus:{"processIdentifier"), CSIsCarryDevice()}];
      }
    }
  }
}

uint64_t __84__CSSiriSpeechRecorder_speechControllerLPCMRecordBufferAvailable_buffer_recordedAt___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 64) == 4)
  {
    v3 = [v2 _fingerprinter];
    [v3 appendPCMData:*(a1 + 40)];

    v2 = *(a1 + 32);
  }

  if (*(v2 + 227) == 1)
  {
    v4 = mach_absolute_time();
    v5 = *(a1 + 32);
    if ((*(v5 + 192) & 1) == 0)
    {
      v6 = *(a1 + 48);
      v7 = [*(a1 + 32) _currentMHUUID:0];
      [v5 _speechControllerDidReceiveFirstAudioRecordBufferWithHostTime:v6 atHostTime:v4 mhUUID:v7];

      v5 = *(a1 + 32);
    }

    *(v5 + 376) = *(a1 + 48);
    *(*(a1 + 32) + 384) = v4;
    v2 = *(a1 + 32);
  }

  v8 = *(a1 + 40);
  v9 = *(v2 + 8);

  return [v9 speechCapturingDidRecordPCMAudioData:v8];
}

uint64_t __84__CSSiriSpeechRecorder_speechControllerLPCMRecordBufferAvailable_buffer_recordedAt___block_invoke_205(uint64_t a1)
{
  [*(*(a1 + 32) + 160) appendAudioData:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 88);

  return [v3 appendRecordedAudioBuffer:v2];
}

- (id)getAudioRouteInstrumentationWithRecordingInfo:(id)info
{
  v44 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v41 = "[CSSiriSpeechRecorder getAudioRouteInstrumentationWithRecordingInfo:]";
    v42 = 2112;
    v43 = infoCopy;
    _os_log_debug_impl(&dword_222E4D000, v6, OS_LOG_TYPE_DEBUG, "%s Getting audio route instrumentation with recording info %@...", buf, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277D5A7A8]);
  v8 = objc_alloc_init(MEMORY[0x277D5A8D8]);
  route = [infoCopy route];
  if ([route containsString:@"injectionDevice"])
  {
    v10 = 14;
  }

  else
  {
    v10 = 0;
  }

  if ([infoCopy isBluetooth])
  {
    v36 = infoCopy;
    bluetoothDevice = [infoCopy bluetoothDevice];
    deviceInfo = [bluetoothDevice deviceInfo];
    vendorID = [deviceInfo vendorID];
    productID = [deviceInfo productID];
    if (vendorID == 76)
    {
      if ([route isEqualToString:*MEMORY[0x277CB8168]])
      {
        LODWORD(v10) = 10;
      }

      else
      {
        LODWORD(v10) = 3;
      }

      if ([route isEqualToString:*MEMORY[0x277CB8320]])
      {
        v10 = 8;
      }

      else
      {
        v10 = v10;
      }
    }

    else
    {
      v10 = 4;
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:vendorID];
    stringValue = [v15 stringValue];
    [v8 setInterfaceVendorID:stringValue];

    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:productID];
    stringValue2 = [v17 stringValue];
    [v8 setInterfaceProductID:stringValue2];

    infoCopy = v36;
    goto LABEL_18;
  }

  if ([route isEqualToString:*MEMORY[0x277CB8200]])
  {
    v10 = 12;
    goto LABEL_19;
  }

  if ([route isEqualToString:*MEMORY[0x277CB8190]])
  {
    v10 = 1;
    goto LABEL_19;
  }

  if (([route isEqualToString:*MEMORY[0x277CB81B0]] & 1) != 0 || objc_msgSend(route, "isEqualToString:", *MEMORY[0x277CB8348]))
  {
    bluetoothDevice = [infoCopy modelName];
    [v8 setInterfaceProductID:bluetoothDevice];
    v10 = 7;
LABEL_18:

    goto LABEL_19;
  }

  if (([route isEqualToString:*MEMORY[0x277CB81D0]] & 1) != 0 || objc_msgSend(route, "isEqualToString:", *MEMORY[0x277CB81E0]))
  {
    bluetoothDevice = [MEMORY[0x277D26E58] sharedAVSystemController];
    v21 = [bluetoothDevice attributeForKey:*MEMORY[0x277D26C70]];
    v22 = [v21 objectForKey:*MEMORY[0x277D26D10]];
    v23 = [(CSSiriSpeechRecorder *)self convertVirtualAudioSubTypeToString:1751410292];
    if ([v22 isEqualToString:v23])
    {

      v10 = 6;
LABEL_42:
      v30 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v41 = "[CSSiriSpeechRecorder getAudioRouteInstrumentationWithRecordingInfo:]";
        v42 = 2112;
        v43 = v22;
        _os_log_debug_impl(&dword_222E4D000, v30, OS_LOG_TYPE_DEBUG, "%s routeSubtype = %@", buf, 0x16u);
        v30 = *v5;
      }

      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v39 = v21;
        v31 = infoCopy;
        v32 = MEMORY[0x277CCABB0];
        v33 = v30;
        v34 = [v32 numberWithInt:v10];
        *buf = 136315394;
        v41 = "[CSSiriSpeechRecorder getAudioRouteInstrumentationWithRecordingInfo:]";
        v42 = 2112;
        v43 = v34;
        _os_log_debug_impl(&dword_222E4D000, v33, OS_LOG_TYPE_DEBUG, "%s route = %@", buf, 0x16u);

        infoCopy = v31;
        v21 = v39;
      }

      goto LABEL_18;
    }

    v38 = v21;
    v24 = v8;
    v25 = [(CSSiriSpeechRecorder *)self convertVirtualAudioSubTypeToString:1214539380];
    if ([v22 isEqualToString:v25])
    {

      v10 = 6;
      v8 = v24;
LABEL_41:
      v21 = v38;
      goto LABEL_42;
    }

    v37 = bluetoothDevice;
    v26 = infoCopy;
    v27 = [(CSSiriSpeechRecorder *)self convertVirtualAudioSubTypeToString:1752709424];
    if ([v22 isEqualToString:v27])
    {
    }

    else
    {
      v28 = [(CSSiriSpeechRecorder *)self convertVirtualAudioSubTypeToString:2004367664];
      v35 = [v22 isEqualToString:v28];

      if ((v35 & 1) == 0)
      {
        stringValue3 = [&unk_2836677A8 stringValue];
        v8 = v24;
        [v24 setInterfaceVendorID:stringValue3];

        [v24 setInterfaceProductID:v22];
        v10 = 5;
        goto LABEL_40;
      }
    }

    v10 = 6;
    v8 = v24;
LABEL_40:
    infoCopy = v26;
    bluetoothDevice = v37;
    goto LABEL_41;
  }

LABEL_19:
  [v7 setHardwareInterfaceVendorID:v8];
  [v7 setAudioInputRoute:v10];
  v19 = *v5;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v41 = "[CSSiriSpeechRecorder getAudioRouteInstrumentationWithRecordingInfo:]";
    v42 = 2112;
    v43 = v7;
    _os_log_debug_impl(&dword_222E4D000, v19, OS_LOG_TYPE_DEBUG, "%s Done getting audio route instrumentation %@.", buf, 0x16u);
  }

  return v7;
}

- (int)convertSISchemaAudioInputRouteToMHRoute:(int)route withRecordingInfo:(id)info
{
  routeCopy = route;
  if ((route - 1) >= 0xE)
  {
    route = [info route];
    if ([route isEqualToString:*MEMORY[0x277CB81B8]])
    {
      routeCopy = 15;
    }

    else
    {
      routeCopy = 0;
    }
  }

  return routeCopy;
}

- (void)_speechControllerDidReceiveFirstAudioRecordBufferWithHostTime:(unint64_t)time atHostTime:(unint64_t)hostTime mhUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = MEMORY[0x277CEF0E8];
  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v21 = 136315650;
    v22 = "[CSSiriSpeechRecorder _speechControllerDidReceiveFirstAudioRecordBufferWithHostTime:atHostTime:mhUUID:]";
    v23 = 2048;
    timeCopy = time;
    v25 = 2048;
    hostTimeCopy = hostTime;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s firstBufferStartHostTime = %llu, firstBufferReceiptHostTime = %llu", &v21, 0x20u);
  }

  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:229 machAbsoluteTime:time context:0 contextNoCopy:1];

  mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158]2 logEventWithType:230 machAbsoluteTime:hostTime context:0 contextNoCopy:1];

  mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
  [mEMORY[0x277D01738] logMHAssistantDaemonAudioRecordingFirstBufferWithMHUUID:dCopy withStartEvent:1 withFirstBufferStartTimeOffsetNs:objc_msgSend(MEMORY[0x277D01798] withFirstBufferReceiptTimeOffsetNs:{"hostTimeToNs:", time), 0}];

  mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
  [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioRecordingFirstBufferWithMHUUID:dCopy withStartEvent:0 withFirstBufferStartTimeOffsetNs:0 withFirstBufferReceiptTimeOffsetNs:{objc_msgSend(MEMORY[0x277D01798], "hostTimeToNs:", hostTime)}];

  self->_didReceiveFirstBuffer = 1;
  self->_firstBufferHostTime = time;
  [MEMORY[0x277CB8428] secondsForHostTime:time];
  self->_firstBufferTimestamp = v15;
  _currentRecordingInfo = [(CSSiriSpeechRecorder *)self _currentRecordingInfo];
  [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidUpdateRecordingInfo:_currentRecordingInfo];
  if ([(CSSiriSpeechRecorder *)self _shouldEmitInstrumentation])
  {
    v17 = [(CSSiriSpeechRecorder *)self getAudioRouteInstrumentationWithRecordingInfo:_currentRecordingInfo];
    mEMORY[0x277CEF158]3 = [MEMORY[0x277CEF158] sharedAnalytics];
    turnIdentifier = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo turnIdentifier];
    [mEMORY[0x277CEF158]3 logInstrumentation:v17 machAbsoluteTime:time turnIdentifier:turnIdentifier];
  }

  v20 = *v9;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
  {
    v21 = 136315138;
    v22 = "[CSSiriSpeechRecorder _speechControllerDidReceiveFirstAudioRecordBufferWithHostTime:atHostTime:mhUUID:]";
    _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_INFO, "%s Done", &v21, 0xCu);
  }
}

- (void)speechControllerRecordBufferAvailable:(id)available buffers:(id)buffers durationInSec:(float)sec recordedAt:(unint64_t)at audioDeviceInfo:(id)info
{
  v39 = *MEMORY[0x277D85DE8];
  availableCopy = available;
  buffersCopy = buffers;
  v13 = AFIsInternalInstall();
  v14 = MEMORY[0x277CEF0E8];
  if (v13)
  {
    v15 = *MEMORY[0x277CEF0E8];
    v16 = os_signpost_id_generate(*v14);
    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = v16;
      if (os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v15, OS_SIGNPOST_EVENT, v17, "SpeechRecorder", "RecordBufferAvailable", buf, 2u);
      }
    }
  }

  kdebug_trace();
  v18 = mach_absolute_time();
  if ([(CSSiriSpeechRecordingContext *)self->_context wantsRecordedAudioBufferLogs])
  {
    v19 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
    {
      v20 = v19;
      v21 = [buffersCopy count];
      *buf = 136315906;
      v32 = "[CSSiriSpeechRecorder speechControllerRecordBufferAvailable:buffers:durationInSec:recordedAt:audioDeviceInfo:]";
      v33 = 2048;
      v34 = v21;
      v35 = 2048;
      secCopy = sec;
      v37 = 2048;
      atCopy = at;
      _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_INFO, "%s buffers.count = %llu, durationInSec = %f, bufferStartHostTime = %llu", buf, 0x2Au);
    }
  }

  queue = self->_queue;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __111__CSSiriSpeechRecorder_speechControllerRecordBufferAvailable_buffers_durationInSec_recordedAt_audioDeviceInfo___block_invoke;
  v25[3] = &unk_2784C6368;
  v25[4] = self;
  v26 = availableCopy;
  atCopy2 = at;
  v29 = v18;
  secCopy2 = sec;
  v27 = buffersCopy;
  v23 = buffersCopy;
  v24 = availableCopy;
  dispatch_async(queue, v25);
}

void __111__CSSiriSpeechRecorder_speechControllerRecordBufferAvailable_buffers_durationInSec_recordedAt_audioDeviceInfo___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v2 = AFIsInternalInstall();
  v3 = MEMORY[0x277CEF0E8];
  if (v2)
  {
    v4 = *MEMORY[0x277CEF0E8];
    v5 = os_signpost_id_generate(*v3);
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        LOWORD(v31) = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v4, OS_SIGNPOST_EVENT, v6, "SpeechRecorder", "RecordBufferHandleBegin", &v31, 2u);
      }
    }
  }

  kdebug_trace();
  v7 = [*(a1 + 32) _currentMHUUID:0];
  v8 = *(a1 + 32);
  v9 = v8[22];
  if (v9)
  {
    if (v9 == 1)
    {
      [v8 _speechControllerDidStartRecording:*(a1 + 40) successfully:1 error:0];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CEF158] sharedAnalytics];
    [v10 logEventWithType:237 context:0];

    v11 = [MEMORY[0x277D01738] sharedLogger];
    [v11 logMHAssistantDaemonAudioRecordingMissedBufferDetectedWithMHUUID:v7];
  }

  v12 = *(a1 + 32);
  if ((*(v12 + 192) & 1) == 0)
  {
    [v12 _speechControllerDidReceiveFirstAudioRecordBufferWithHostTime:*(a1 + 56) atHostTime:*(a1 + 64) mhUUID:v7];
    v12 = *(a1 + 32);
  }

  *(v12 + 376) = *(a1 + 56);
  *(*(a1 + 32) + 384) = *(a1 + 64);
  v13 = *(a1 + 32);
  v14 = *(a1 + 72);
  v15 = *(v13 + 272) + v14;
  if (v15 <= 60.0)
  {
    *(v13 + 272) = v15;
    v17 = *(*(a1 + 32) + 56);
    v18 = [*(a1 + 48) count] + v17;
    v19 = *(*(a1 + 32) + 8);
    v20 = *(a1 + 48);
    [MEMORY[0x277CB8428] secondsForHostTime:*(a1 + 56)];
    [v19 speechCapturingDidRecordSpeechPackets:v20 atTimestamp:v18 totalPacketCount:?];
    *(*(a1 + 32) + 56) = v18;
  }

  else
  {
    v16 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 56);
      v28 = v16;
      AFMachAbsoluteTimeGetTimeInterval();
      v29 = *(*(a1 + 32) + 272);
      v31 = 136316162;
      v32 = "[CSSiriSpeechRecorder speechControllerRecordBufferAvailable:buffers:durationInSec:recordedAt:audioDeviceInfo:]_block_invoke";
      v33 = 2048;
      v34 = v14;
      v35 = 2048;
      v36 = v27;
      v37 = 2048;
      v38 = v30;
      v39 = 2048;
      v40 = v29;
      _os_log_debug_impl(&dword_222E4D000, v28, OS_LOG_TYPE_DEBUG, "%s Dropped %f seconds of audio buffers recorded at %llu (%f seconds) due to audio recording restriction (accumulatedBufferDuration = %f seconds).", &v31, 0x34u);

      v13 = *(a1 + 32);
      v15 = *(v13 + 272) + *(a1 + 72);
    }

    *(v13 + 272) = v15;
  }

  if (AFIsATV())
  {
    AFMachAbsoluteTimeGetTimeInterval();
    if (v21 < *(*(a1 + 32) + 328))
    {
      v22 = [MEMORY[0x277CEF158] sharedAnalytics];
      [v22 logEventWithType:218 machAbsoluteTime:*(a1 + 64) context:0 contextNoCopy:0];

      v23 = [MEMORY[0x277D01738] sharedLogger];
      [v23 logMHAssistantDaemonAudioLateBufferDetectedWithMHUUID:v7 withBufferReceiptTimeInNs:{objc_msgSend(MEMORY[0x277D01798], "hostTimeToNs:", *(a1 + 64))}];
    }
  }

  if (AFIsInternalInstall())
  {
    v24 = *v3;
    v25 = os_signpost_id_generate(*v3);
    if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v26 = v25;
      if (os_signpost_enabled(v24))
      {
        LOWORD(v31) = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v24, OS_SIGNPOST_EVENT, v26, "SpeechRecorder", "RecordBufferHandleEnd", &v31, 2u);
      }
    }
  }

  kdebug_trace();
}

- (void)_speechControllerDidStopRecording:(id)recording audioDeviceInfo:(id)info forReason:(int64_t)reason estimatedSpeechEndHostTime:(unint64_t)time errorCodeOverride:(int64_t)override underlyingError:(id)error
{
  v53 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  infoCopy = info;
  errorCopy = error;
  v18 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136316162;
    *&buf[4] = "[CSSiriSpeechRecorder _speechControllerDidStopRecording:audioDeviceInfo:forReason:estimatedSpeechEndHostTime:errorCodeOverride:underlyingError:]";
    *&buf[12] = 2048;
    *&buf[14] = reason;
    *&buf[22] = 2048;
    timeCopy = time;
    *v52 = 2048;
    *&v52[2] = override;
    *&v52[10] = 2112;
    *&v52[12] = errorCopy;
    _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_INFO, "%s reason = %ld, estimatedSpeechEndHostTime = %llu, errorCodeOverride = %ld, underlyingError = %@", buf, 0x34u);
  }

  recordingState = self->_recordingState;
  if ((recordingState & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (!self->_didReceiveLastBuffer)
    {
      [(CSSiriSpeechRecorder *)self _speechControllerDidReceiveLastAudioRecordBuffer:recordingCopy forReason:reason estimatedSpeechEndHostTime:time isRecordingStopped:1];
    }

    v44 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:215 context:0];

    mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738] logMHAssistantDaemonAudioRecordingContextWithMHUUID:v44 withAudioRecordingStarted:0 withAudioInputRoute:0 withAudioSource:0 withAudioInterfaceVendorId:&stru_28363DA48 withAudioInterfaceProductId:&stru_28363DA48];

    self->_estimatedSpeechEndHostTime = time;
    self->_recordingState = 0;
    v22 = NSStringFromSelector(a2);
    [(CSSiriSpeechRecorder *)self _updateAudioContextToPostVoiceForReason:v22];

    v23 = NSStringFromSelector(a2);
    [(CSSiriSpeechRecorder *)self _updateAudioDeviceInfo:infoCopy forReason:v23 forcesUpdate:1];

    if (override)
    {
      goto LABEL_7;
    }

    if (reason > -11785)
    {
      v26 = 0;
      if (reason <= 1)
      {
        if (reason == -11784)
        {
          mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
          [mEMORY[0x277D01708] submitAudioIssueReport:*MEMORY[0x277D01A30]];

          override = 229;
          goto LABEL_7;
        }

        if (reason)
        {
          if (reason == 1)
          {
            mEMORY[0x277D01708]2 = [MEMORY[0x277D01708] sharedInstance];
            [mEMORY[0x277D01708]2 submitAudioIssueReport:*MEMORY[0x277D019D0]];

            override = 232;
            goto LABEL_7;
          }

          goto LABEL_52;
        }
      }

      else if (reason > 5)
      {
        if (reason == 6)
        {
          override = 234;
          goto LABEL_7;
        }

        if (reason != 1919115630)
        {
          goto LABEL_52;
        }
      }

      else if (reason != 2)
      {
        if (reason == 5)
        {
          override = 233;
          goto LABEL_7;
        }

        goto LABEL_52;
      }

LABEL_19:
      [(CSSiriSpeechRecorder *)self _playStopAlertIfNecessaryForReason:reason error:v26];
      _currentRecordingInfo = [(CSSiriSpeechRecorder *)self _currentRecordingInfo];
      [_currentRecordingInfo setIsEndAlertInfo:1];
      if (AFIsHorseman())
      {
        speechController = self->_speechController;
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __145__CSSiriSpeechRecorder__speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime_errorCodeOverride_underlyingError___block_invoke;
        v46[3] = &unk_2784C6278;
        v46[4] = self;
        v47 = _currentRecordingInfo;
        [(CSSpeechController *)speechController fetchAudioMetricsWithCompletion:v46];
      }

      if (self->_didDetectEndpoint || self->_serverDidEndpoint)
      {
        v29 = 1;
      }

      else if (reason == -11789)
      {
        v29 = 1;
      }

      else
      {
        v29 = 2 * (reason == 0);
      }

      [(CSSiriSpeechRecordingContext *)self->_context didStopRecordingWithError:v26];
      [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidUpdateRecordingInfo:_currentRecordingInfo];
      if (self->_didDetectEndpoint)
      {
        lastEndpointerMetrics = self->_lastEndpointerMetrics;
      }

      else
      {
        lastEndpointerMetrics = 0;
      }

      [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidStopRecordingWithError:v26 endpointMode:v29 totalPacketCount:self->_packetCount endpointerMetrics:lastEndpointerMetrics];
      [(CSSpeechController *)self->_speechController setSpeakerIdDelegate:0];
      if (!v26)
      {
        [(CSSiriAcousticFingerprinter *)self->_fingerprinter flush];
      }

      audioFileWriter = self->_audioFileWriter;
      if (audioFileWriter)
      {
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        timeCopy = __Block_byref_object_copy__24773;
        *v52 = __Block_byref_object_dispose__24774;
        *&v52[8] = audioFileWriter;
        v45[0] = MEMORY[0x277D85DD0];
        v45[1] = 3221225472;
        v45[2] = __145__CSSiriSpeechRecorder__speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime_errorCodeOverride_underlyingError___block_invoke_189;
        v45[3] = &unk_2784C6340;
        v45[4] = self;
        v45[5] = buf;
        [*&v52[8] flushWithCompletion:v45];
        v32 = self->_audioFileWriter;
        self->_audioFileWriter = 0;

        _Block_object_dispose(buf, 8);
      }

      [(CSSiriSpeechRecordingContext *)self->_context endRecordingAudio];
      *&self->_needsAVVCLPCMCallbacks = 0;
      context = self->_context;
      self->_context = 0;

      v34 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        v35 = self->_context;
        *buf = 136315394;
        *&buf[4] = "[CSSiriSpeechRecorder _speechControllerDidStopRecording:audioDeviceInfo:forReason:estimatedSpeechEndHostTime:errorCodeOverride:underlyingError:]";
        *&buf[12] = 2112;
        *&buf[14] = v35;
        _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
      }

      goto LABEL_37;
    }

    if (reason > -11788)
    {
      if (reason == -11787)
      {
        mEMORY[0x277D01708]3 = [MEMORY[0x277D01708] sharedInstance];
        [mEMORY[0x277D01708]3 submitAudioIssueReport:*MEMORY[0x277D01A00]];

        override = 220;
      }

      else if (reason == -11786)
      {
        override = 208;
      }

      else
      {
        mEMORY[0x277D01708]4 = [MEMORY[0x277D01708] sharedInstance];
        [mEMORY[0x277D01708]4 submitAudioIssueReport:*MEMORY[0x277D01A18]];

        override = 228;
      }

LABEL_7:
      if (errorCopy)
      {
        v48 = *MEMORY[0x277CCA7E8];
        v49 = errorCopy;
        v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
      }

      else
      {
        v24 = 0;
      }

      v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CEF588] code:override userInfo:v24];

      goto LABEL_19;
    }

    switch(reason)
    {
      case -11791:
        mEMORY[0x277D01708]5 = [MEMORY[0x277D01708] sharedInstance];
        [mEMORY[0x277D01708]5 submitAudioIssueReport:*MEMORY[0x277D01A08]];

        override = 235;
        goto LABEL_7;
      case -11790:
        mEMORY[0x277D01708]6 = [MEMORY[0x277D01708] sharedInstance];
        [mEMORY[0x277D01708]6 submitAudioIssueReport:*MEMORY[0x277D01A28]];

        override = 230;
        goto LABEL_7;
      case -11788:
        mEMORY[0x277D01708]7 = [MEMORY[0x277D01708] sharedInstance];
        [mEMORY[0x277D01708]7 submitAudioIssueReport:*MEMORY[0x277D019B8]];

        override = 202;
        goto LABEL_7;
    }

LABEL_52:
    mEMORY[0x277D01708]8 = [MEMORY[0x277D01708] sharedInstance];
    [mEMORY[0x277D01708]8 submitAudioIssueReport:*MEMORY[0x277D01A48]];

    override = 201;
    goto LABEL_7;
  }

  v25 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[CSSiriSpeechRecorder _speechControllerDidStopRecording:audioDeviceInfo:forReason:estimatedSpeechEndHostTime:errorCodeOverride:underlyingError:]";
    *&buf[12] = 2048;
    *&buf[14] = recordingState;
    _os_log_error_impl(&dword_222E4D000, v25, OS_LOG_TYPE_ERROR, "%s Ignoring unexpected didStop callback while in state %ld", buf, 0x16u);
  }

LABEL_37:
}

void __145__CSSiriSpeechRecorder__speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime_errorCodeOverride_underlyingError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __145__CSSiriSpeechRecorder__speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime_errorCodeOverride_underlyingError___block_invoke_2;
  v6[3] = &unk_2784C6FA8;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

void __145__CSSiriSpeechRecorder__speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime_errorCodeOverride_underlyingError___block_invoke_189(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *(v9 + 16);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __145__CSSiriSpeechRecorder__speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime_errorCodeOverride_underlyingError___block_invoke_2_190;
  v13[3] = &unk_2784C6318;
  v13[4] = v9;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v11 = v7;
  v12 = v6;
  dispatch_async(v10, v13);
}

void __145__CSSiriSpeechRecorder__speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime_errorCodeOverride_underlyingError___block_invoke_2_190(void *a1)
{
  [*(a1[4] + 8) speechCapturing:a1[4] didFinishWritingAudioFile:a1[5] error:a1[6]];
  v2 = *(a1[7] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void __145__CSSiriSpeechRecorder__speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime_errorCodeOverride_underlyingError___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[CSSiriSpeechRecorder _speechControllerDidStopRecording:audioDeviceInfo:forReason:estimatedSpeechEndHostTime:errorCodeOverride:underlyingError:]_block_invoke_2";
    v8 = 2112;
    v9 = v2;
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s audioMetrics = %@", &v6, 0x16u);
  }

  v4 = [v2 objectForKey:*MEMORY[0x277CB8328]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 objectForKey:*MEMORY[0x277CB8340]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) setAudioSessionSetActiveEndHostTime:{objc_msgSend(v5, "unsignedLongLongValue")}];
    }
  }
}

- (void)speechControllerDidStopRecording:(id)recording audioDeviceInfo:(id)info forReason:(int64_t)reason estimatedSpeechEndHostTime:(unint64_t)time
{
  v32 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  infoCopy = info;
  kdebug_trace();
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v27 = "[CSSiriSpeechRecorder speechControllerDidStopRecording:audioDeviceInfo:forReason:estimatedSpeechEndHostTime:]";
    v28 = 2048;
    reasonCopy = reason;
    v30 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s reason = %ld, estimatedSpeechEndHostTime = %llu", buf, 0x20u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __110__CSSiriSpeechRecorder_speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime___block_invoke;
  block[3] = &unk_2784C6FA8;
  block[4] = self;
  v14 = recordingCopy;
  v25 = v14;
  dispatch_async(queue, block);
  recordingWillStartGroup = self->_recordingWillStartGroup;
  v16 = self->_queue;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110__CSSiriSpeechRecorder_speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime___block_invoke_185;
  v19[3] = &unk_2784C62F0;
  v19[4] = self;
  v20 = v14;
  v21 = infoCopy;
  reasonCopy2 = reason;
  timeCopy2 = time;
  v17 = infoCopy;
  v18 = v14;
  dispatch_group_notify(recordingWillStartGroup, v16, v19);
}

void __110__CSSiriSpeechRecorder_speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 32) == *(a1 + 40) && *(v1 + 176) == 1)
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v5 = 136315138;
      v6 = "[CSSiriSpeechRecorder speechControllerDidStopRecording:audioDeviceInfo:forReason:estimatedSpeechEndHostTime:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s Synthesizing a didStart callback, on missing didStart", &v5, 0xCu);
    }

    v4 = [MEMORY[0x277CEF2A0] errorWithCode:217];
    [*(a1 + 32) _speechControllerDidStartRecording:*(a1 + 40) successfully:0 error:v4];
  }
}

uint64_t __110__CSSiriSpeechRecorder_speechControllerDidStopRecording_audioDeviceInfo_forReason_estimatedSpeechEndHostTime___block_invoke_185(void *a1)
{
  if (AFIsInternalInstall())
  {
    v2 = MEMORY[0x277CEF0E8];
    v3 = *MEMORY[0x277CEF0E8];
    v4 = os_signpost_id_generate(*v2);
    if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v5 = v4;
      if (os_signpost_enabled(v3))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v3, OS_SIGNPOST_EVENT, v5, "SpeechRecorder", "AudioStop", v12, 2u);
      }
    }
  }

  kdebug_trace();
  v6 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[8];

  return [v6 _speechControllerDidStopRecording:v7 audioDeviceInfo:v8 forReason:v9 estimatedSpeechEndHostTime:v10 errorCodeOverride:0 underlyingError:0];
}

- (void)speechControllerDidDeliverLastBuffer:(id)buffer forReason:(int64_t)reason estimatedSpeechEndHostTime:(unint64_t)time
{
  v23 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[CSSiriSpeechRecorder speechControllerDidDeliverLastBuffer:forReason:estimatedSpeechEndHostTime:]";
    v19 = 2048;
    reasonCopy = reason;
    v21 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s reason = %ld, estimatedSpeechEndHostTime = %llu", buf, 0x20u);
  }

  recordingWillStartGroup = self->_recordingWillStartGroup;
  queue = self->_queue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__CSSiriSpeechRecorder_speechControllerDidDeliverLastBuffer_forReason_estimatedSpeechEndHostTime___block_invoke;
  v13[3] = &unk_2784C62C8;
  v13[4] = self;
  v14 = bufferCopy;
  reasonCopy2 = reason;
  timeCopy2 = time;
  v12 = bufferCopy;
  dispatch_group_notify(recordingWillStartGroup, queue, v13);
}

void *__98__CSSiriSpeechRecorder_speechControllerDidDeliverLastBuffer_forReason_estimatedSpeechEndHostTime___block_invoke(void *a1)
{
  result = a1[4];
  if ((*(result + 193) & 1) == 0)
  {
    return [result _speechControllerDidReceiveLastAudioRecordBuffer:a1[5] forReason:a1[6] estimatedSpeechEndHostTime:a1[7] isRecordingStopped:*(result + 22) == 0];
  }

  return result;
}

- (void)_speechControllerDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  *&v85[13] = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  errorCopy = error;
  v10 = AFIsInternalInstall();
  v11 = MEMORY[0x277CEF0E8];
  if (v10)
  {
    v12 = *MEMORY[0x277CEF0E8];
    v13 = os_signpost_id_generate(*v11);
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v12, OS_SIGNPOST_EVENT, v14, "SpeechRecorder", "AudioStart", buf, 2u);
      }
    }
  }

  kdebug_trace();
  v15 = mach_absolute_time();
  v16 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v83 = "[CSSiriSpeechRecorder _speechControllerDidStartRecording:successfully:error:]";
    v84 = 1024;
    *v85 = successfullyCopy;
    v85[2] = 2112;
    *&v85[3] = errorCopy;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s success = %d, error = %@", buf, 0x1Cu);
  }

  v80 = recordingCopy;
  dispatch_group_leave(self->_recordingWillStartGroup);
  _currentRecordingInfo = [(CSSiriSpeechRecorder *)self _currentRecordingInfo];
  context = self->_context;
  deviceInfo = [_currentRecordingInfo deviceInfo];
  [(CSSiriSpeechRecordingContext *)context updateAudioRecordDeviceInfo:deviceInfo];

  v20 = self->_context;
  voiceTriggerEventInfo = [_currentRecordingInfo voiceTriggerEventInfo];
  [(CSSiriSpeechRecordingContext *)v20 updateVoiceTriggerInfo:voiceTriggerEventInfo];

  [(CSSiriSpeechRecordingContext *)self->_context updateRecordingInfo:_currentRecordingInfo];
  if (!successfullyCopy)
  {
    [(CSSiriSpeechRecordingContext *)self->_context didStopRecordingWithError:errorCopy];
  }

  v81 = errorCopy;
  v22 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  v24 = CSAnalyticsContextCreateWithRecordingInfo(_currentRecordingInfo);
  [mEMORY[0x277CEF158] logEventWithType:213 machAbsoluteTime:v15 context:v24];

  v25 = [(CSSiriSpeechRecorder *)self getAudioRouteInstrumentationWithRecordingInfo:_currentRecordingInfo];
  v26 = -[CSSiriSpeechRecorder convertSISchemaAudioInputRouteToMHRoute:withRecordingInfo:](self, "convertSISchemaAudioInputRouteToMHRoute:withRecordingInfo:", [v25 audioInputRoute], _currentRecordingInfo);
  v79 = v25;
  hardwareInterfaceVendorID = [v25 hardwareInterfaceVendorID];
  mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
  mhSource = [_currentRecordingInfo mhSource];
  interfaceVendorID = [hardwareInterfaceVendorID interfaceVendorID];
  v78 = hardwareInterfaceVendorID;
  interfaceProductID = [hardwareInterfaceVendorID interfaceProductID];
  [mEMORY[0x277D01738] logMHAssistantDaemonAudioRecordingContextWithMHUUID:v22 withAudioRecordingStarted:1 withAudioInputRoute:v26 withAudioSource:mhSource withAudioInterfaceVendorId:interfaceVendorID withAudioInterfaceProductId:interfaceProductID];

  codec = [_currentRecordingInfo codec];
  voiceTriggerEventInfo2 = [_currentRecordingInfo voiceTriggerEventInfo];
  v34 = 0.0;
  if (voiceTriggerEventInfo2 && (v35 = voiceTriggerEventInfo2, [_currentRecordingInfo voiceTriggerEventInfo], v36 = objc_claimAutoreleasedReturnValue(), v37 = *MEMORY[0x277D01D68], objc_msgSend(v36, "objectForKeyedSubscript:", *MEMORY[0x277D01D68]), v38 = objc_claimAutoreleasedReturnValue(), v38, v36, v35, v38))
  {
    voiceTriggerEventInfo3 = [_currentRecordingInfo voiceTriggerEventInfo];
    v40 = [voiceTriggerEventInfo3 objectForKeyedSubscript:v37];
    longLongValue = [v40 longLongValue];

    [MEMORY[0x277D016E0] inputRecordingSampleRate];
    v34 = longLongValue / v42;
  }

  else
  {
    longLongValue = 0;
  }

  self->_skippedSamplesTimeInSec = v34;
  mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
  [mEMORY[0x277D01738]2 logMHASRAudioConfigureStartedWithMHUUID:v22 withAudioCodecString:codec withAudioSkippedNumSamples:longLongValue];

  mEMORY[0x277D01738]3 = [MEMORY[0x277D01738] sharedLogger];
  *&v45 = v34;
  [mEMORY[0x277D01738]3 logMHASRAudioConfigureStartedWithMHUUID:v22 withAudioCodecString:codec withAudioSkippedTimeInNs:{objc_msgSend(MEMORY[0x277D01798], "secondsToNs:", v45)}];

  voiceTriggerEventInfo4 = [_currentRecordingInfo voiceTriggerEventInfo];
  [(CSSiriSpeechRecorder *)self _logVoiceTriggerInfo:voiceTriggerEventInfo4 withMHUUID:v22];

  v47 = 2;
  if (!successfullyCopy)
  {
    v47 = 0;
  }

  self->_recordingState = v47;
  self->_accumulatedBufferDuration = 0.0;
  self->_packetCount = 0;
  *&self->_didReceiveFirstBuffer = 0;
  self->_didFakeTwoShotWithAlert = 0;
  *&self->_serverDidRecognizeSpeech = 0;
  *&self->_wasCanceled = 0;
  self->_firstBufferHostTime = 0;
  self->_estimatedSpeechEndHostTime = 0;
  self->_firstBufferTimestamp = 0.0;
  self->_isRecordingUsingBTRoute = [_currentRecordingInfo isBluetooth];
  self->_twoShotStartTime = 0.0;
  *&self->_didPerformTwoShotPrompt = 0;
  fakeTwoShotTTSPromptUUID = self->_fakeTwoShotTTSPromptUUID;
  self->_fakeTwoShotTTSPromptUUID = 0;

  [(AFWatchdogTimer *)self->_fakeTwoShotTTSPromptWatchdogTimer cancel];
  fakeTwoShotTTSPromptWatchdogTimer = self->_fakeTwoShotTTSPromptWatchdogTimer;
  self->_fakeTwoShotTTSPromptWatchdogTimer = 0;

  self->_lastAudioRecordBufferStartTime = 0;
  self->_lastAudioRecordBufferReceiptTime = 0;
  lastEndpointerMetrics = self->_lastEndpointerMetrics;
  self->_lastEndpointerMetrics = 0;

  self->_stopRecordingReason = 0;
  self->_stopRecordingMachContinuousTime = 0;
  speechRecognizedContextForServerEndpointInstrumentation = self->_speechRecognizedContextForServerEndpointInstrumentation;
  self->_speechRecognizedContextForServerEndpointInstrumentation = 0;

  if (![MEMORY[0x277D018F8] isMedocFeatureEnabled] || !self->_shouldDisableSpeechPacketGeneration)
  {
    v52 = [CSEndpointDelayReporter alloc];
    uUIDString = [v22 UUIDString];
    turnIdentifier = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo turnIdentifier];
    v55 = [(CSEndpointDelayReporter *)v52 initWithRequestMHUUID:uUIDString turnIdentifier:turnIdentifier];
    endpointDelayReporter = self->_endpointDelayReporter;
    self->_endpointDelayReporter = v55;
  }

  v57 = v80;
  if (AFIsATV())
  {
    recordSettings = [v80 recordSettings];
    v59 = recordSettings;
    if (recordSettings)
    {
      v60 = [recordSettings objectForKey:*MEMORY[0x277CB8280]];
      intValue = [v60 intValue];

      self->_isOpus = intValue == 1869641075;
      v62 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        v76 = @"Speex";
        if (intValue == 1869641075)
        {
          v76 = @"Opus";
        }

        *buf = 136315394;
        v83 = "[CSSiriSpeechRecorder _speechControllerDidStartRecording:successfully:error:]";
        v84 = 2112;
        *v85 = v76;
        _os_log_debug_impl(&dword_222E4D000, v62, OS_LOG_TYPE_DEBUG, "%s SPELLING recordSettings codec=%@", buf, 0x16u);
      }
    }

    v57 = v80;
  }

  if ([v81 code] == 216)
  {
    domain = [v81 domain];
    v64 = [domain isEqualToString:*MEMORY[0x277CEF588]];

    if (!successfullyCopy)
    {
LABEL_25:
      v65 = [MEMORY[0x277CEF2A0] errorWithCode:200 description:0 underlyingError:v81];
      goto LABEL_28;
    }
  }

  else
  {
    v64 = 0;
    if (!successfullyCopy)
    {
      goto LABEL_25;
    }
  }

  v65 = 0;
LABEL_28:
  v66 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    delegate = self->_delegate;
    *buf = 136315394;
    v83 = "[CSSiriSpeechRecorder _speechControllerDidStartRecording:successfully:error:]";
    v84 = 2112;
    *v85 = delegate;
    _os_log_impl(&dword_222E4D000, v66, OS_LOG_TYPE_INFO, "%s Sending speech did start to delegate %@", buf, 0x16u);
  }

  [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidStartRecordingSuccessfully:successfullyCopy error:v65 withInfo:_currentRecordingInfo];
  if (!(successfullyCopy | v64))
  {
    v68 = NSStringFromSelector(a2);
    [(CSSiriSpeechRecorder *)self _updateAudioContextToPostVoiceForReason:v68];

    if (![(CSSiriAudioActivationInfo *)self->_currentActivationInfo shouldSuppressRecordingErrorAlert])
    {
      [(CSSiriSpeechRecorder *)self _playAudioAlert:3];
    }

    v69 = NSStringFromSelector(a2);
    [(CSSiriSpeechRecorder *)self _updateAudioContextWithPendingInfoForReason:v69];

    if ([v81 code] != -11786 || (objc_msgSend(v81, "domain"), v70 = objc_claimAutoreleasedReturnValue(), v71 = objc_msgSend(v70, "isEqualToString:", *MEMORY[0x277CCA590]), v70, (v71 & 1) == 0))
    {
      v72 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v83 = "[CSSiriSpeechRecorder _speechControllerDidStartRecording:successfully:error:]";
        _os_log_impl(&dword_222E4D000, v72, OS_LOG_TYPE_INFO, "%s Resetting VoiceController on startRecording failure", buf, 0xCu);
      }

      [(CSSiriSpeechRecorder *)self _resetSpeechController];
    }
  }

  [(CSSiriSpeechRecorder *)self _setupAudioFileWritingForSpeechController:v57 info:self->_currentActivationInfo context:self->_context];
  if (CSIsWatch() && ([MEMORY[0x277D018F8] isM9Device] & 1) != 0)
  {
    v73 = MEMORY[0x277CEF0E8];
    v74 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v83 = "[CSSiriSpeechRecorder _speechControllerDidStartRecording:successfully:error:]";
      _os_log_impl(&dword_222E4D000, v74, OS_LOG_TYPE_INFO, "%s Skip bluetooth state logging for M9 watch", buf, 0xCu);
    }
  }

  else
  {
    [(CSSiriSpeechRecorder *)self _logBluetoothStateWithMHUUID:v22];
    v73 = MEMORY[0x277CEF0E8];
  }

  v75 = *v73;
  if (os_log_type_enabled(*v73, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v83 = "[CSSiriSpeechRecorder _speechControllerDidStartRecording:successfully:error:]";
    _os_log_impl(&dword_222E4D000, v75, OS_LOG_TYPE_INFO, "%s Done", buf, 0xCu);
  }
}

- (void)speechControllerDidStartRecording:(id)recording audioDeviceInfo:(id)info successfully:(BOOL)successfully error:(id)error
{
  successfullyCopy = successfully;
  v28 = *MEMORY[0x277D85DE8];
  recordingCopy = recording;
  infoCopy = info;
  errorCopy = error;
  v13 = *MEMORY[0x277CEF0E8];
  v14 = *MEMORY[0x277CEF0E8];
  if (successfullyCopy)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v25 = "[CSSiriSpeechRecorder speechControllerDidStartRecording:audioDeviceInfo:successfully:error:]";
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v25 = "[CSSiriSpeechRecorder speechControllerDidStartRecording:audioDeviceInfo:successfully:error:]";
    v26 = 2114;
    v27 = errorCopy;
    _os_log_error_impl(&dword_222E4D000, v13, OS_LOG_TYPE_ERROR, "%s %{public}@", buf, 0x16u);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__CSSiriSpeechRecorder_speechControllerDidStartRecording_audioDeviceInfo_successfully_error___block_invoke;
  block[3] = &unk_2784C62A0;
  block[4] = self;
  v20 = recordingCopy;
  v23 = successfullyCopy;
  v21 = errorCopy;
  v22 = infoCopy;
  v16 = infoCopy;
  v17 = errorCopy;
  v18 = recordingCopy;
  dispatch_async(queue, block);
}

void *__93__CSSiriSpeechRecorder_speechControllerDidStartRecording_audioDeviceInfo_successfully_error___block_invoke(void *result)
{
  v1 = result;
  v10 = *MEMORY[0x277D85DE8];
  v2 = result[4];
  if (v2[22] == 1)
  {
    v3 = *(result + 64);
    v4 = result[5];
    v5 = result[6];
    v6 = result[4];

    return [v6 _speechControllerDidStartRecording:v4 successfully:v3 error:v5];
  }

  else if ((result[8] & 1) == 0)
  {
    v7 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      v8 = 136315138;
      v9 = "[CSSiriSpeechRecorder speechControllerDidStartRecording:audioDeviceInfo:successfully:error:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s Got a speech start failure after we already got audio buffers?!", &v8, 0xCu);
      v2 = v1[4];
    }

    return [v2 _speechControllerDidStopRecording:v1[5] audioDeviceInfo:v1[7] forReason:0 estimatedSpeechEndHostTime:0 errorCodeOverride:200 underlyingError:v1[6]];
  }

  return result;
}

- (id)_recordingInfoForEvent:(int64_t)event audioAlertStyle:(int64_t)style includeBTInfo:(BOOL)info includeRecordDeviceInfo:(BOOL)deviceInfo
{
  deviceInfoCopy = deviceInfo;
  infoCopy = info;
  v53 = *MEMORY[0x277D85DE8];
  v11 = MEMORY[0x277CEF0E8];
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v13 = v12;
    v14 = AFSpeechEventGetDescription();
    *buf = 136316418;
    v42 = "[CSSiriSpeechRecorder _recordingInfoForEvent:audioAlertStyle:includeBTInfo:includeRecordDeviceInfo:]";
    v43 = 2048;
    eventCopy = event;
    v45 = 2112;
    v46 = v14;
    v47 = 2048;
    styleCopy = style;
    v49 = 1024;
    v50 = infoCopy;
    v51 = 1024;
    v52 = deviceInfoCopy;
    _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s Creating recording info (speechEvent = %ld (%@), audioAlertStyle = %ld, includeBTInfo = %d, includeRecordDeviceInfo = %d)", buf, 0x36u);
  }

  if (deviceInfoCopy)
  {
    _currentRecordDeviceInfo = [(CSSiriSpeechRecorder *)self _currentRecordDeviceInfo];
  }

  else
  {
    _currentRecordDeviceInfo = 0;
  }

  route = [_currentRecordDeviceInfo route];
  v17 = route;
  v39 = infoCopy;
  if (route)
  {
    _currentRecordRoute = route;
  }

  else
  {
    _currentRecordRoute = [(CSSiriSpeechRecorder *)self _currentRecordRoute];
  }

  v37 = _currentRecordRoute;
  styleCopy2 = style;

  _currentPlaybackRoute = [(CSSiriSpeechRecorder *)self _currentPlaybackRoute];
  eventCopy2 = event;
  IsVoiceTrigger = AFSpeechEventIsVoiceTrigger();
  alertStartTime = [(CSSpeechController *)self->_speechController alertStartTime];
  v21 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[CSSiriSpeechRecorder _recordingInfoForEvent:audioAlertStyle:includeBTInfo:includeRecordDeviceInfo:]";
    v43 = 2048;
    eventCopy = alertStartTime;
    _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_INFO, "%s alertStartTime = %llu", buf, 0x16u);
  }

  [MEMORY[0x277CB8428] secondsForHostTime:alertStartTime];
  v23 = v22;
  v24 = [CSSiriRecordingInfo alloc];
  speechCapturingMode = self->_speechCapturingMode;
  v27 = speechCapturingMode == 3 || speechCapturingMode == 5;
  recordSettings = [(CSSpeechController *)self->_speechController recordSettings];
  _audioDeviceID = [(CSSiriSpeechRecorder *)self _audioDeviceID];
  _audioSessionID = [(CSSiriSpeechRecorder *)self _audioSessionID];
  if (IsVoiceTrigger)
  {
    voiceTriggerInfo = [(CSSpeechController *)self->_speechController voiceTriggerInfo];
  }

  else
  {
    voiceTriggerInfo = 0;
  }

  LOBYTE(v35) = v39;
  v32 = [(CSSiriRecordingInfo *)v24 initWithDictation:(speechCapturingMode & 0xFFFFFFFFFFFFFFFELL) == 2 fingerprintOnly:speechCapturingMode == 4 secureOfflineOnly:v27 audioAlertStyle:styleCopy2 recordSettings:recordSettings recordRoute:v37 recordDeviceInfo:v23 playbackRoute:self->_startRecordingTimestamp audioDeviceID:self->_firstBufferTimestamp audioSessionID:_currentRecordDeviceInfo voiceTriggerEventInfo:_currentPlaybackRoute activationAlertStartTimestamp:__PAIR64__(_audioSessionID startRecordingTimestamp:_audioDeviceID) firstBufferTimestamp:voiceTriggerInfo firstBufferHostTime:self->_firstBufferHostTime estimatedSpeechEndHostTime:self->_estimatedSpeechEndHostTime deviceIdentifier:self->_recordDevice includeBTInfo:v35 speechEvent:eventCopy2];
  if (IsVoiceTrigger)
  {
  }

  v33 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v42 = "[CSSiriSpeechRecorder _recordingInfoForEvent:audioAlertStyle:includeBTInfo:includeRecordDeviceInfo:]";
    v43 = 2112;
    eventCopy = v32;
    _os_log_impl(&dword_222E4D000, v33, OS_LOG_TYPE_INFO, "%s Done creating recording info %@.", buf, 0x16u);
  }

  return v32;
}

- (void)_updateAudioDeviceInfo:(id)info forReason:(id)reason forcesUpdate:(BOOL)update
{
  updateCopy = update;
  v50 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  reasonCopy = reason;
  if (infoCopy || (self->_currentAudioDeviceInfo ? (v10 = !updateCopy) : (v10 = 0), !v10))
  {
    v11 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:209 context:0];

    mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738] logMHAssistantDaemonAudioFetchRouteContextWithMHUUID:v11 withFetchRouteContextStarted:1];

    kdebug_trace();
    mach_absolute_time();
    v14 = MEMORY[0x277CEF0E8];
    v15 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v43 = "[CSSiriSpeechRecorder _updateAudioDeviceInfo:forReason:forcesUpdate:]";
      v44 = 2112;
      v45 = infoCopy;
      v46 = 2112;
      v47 = reasonCopy;
      v48 = 1024;
      v49 = updateCopy;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s Begin updating audio device info %@. (reason = %@, forcesUpdate = %d)", buf, 0x26u);
    }

    if (infoCopy)
    {
      v16 = [(CSFAudioDeviceInfo *)infoCopy copy];
      currentAudioDeviceInfo = self->_currentAudioDeviceInfo;
      self->_currentAudioDeviceInfo = v16;
    }

    else
    {
      v18 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v43 = "[CSSiriSpeechRecorder _updateAudioDeviceInfo:forReason:forcesUpdate:]";
        _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_INFO, "%s Fetching audio device info from CSSpeechController...", buf, 0xCu);
      }

      audioDeviceInfo = [(CSSpeechController *)self->_speechController audioDeviceInfo];
      v20 = [audioDeviceInfo copy];
      v21 = self->_currentAudioDeviceInfo;
      self->_currentAudioDeviceInfo = v20;

      v22 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v43 = "[CSSiriSpeechRecorder _updateAudioDeviceInfo:forReason:forcesUpdate:]";
        _os_log_impl(&dword_222E4D000, v22, OS_LOG_TYPE_INFO, "%s Done fetching audio device info from CSSpeechController.", buf, 0xCu);
      }
    }

    v23 = *v14;
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_INFO))
    {
      v24 = self->_currentAudioDeviceInfo;
      v25 = v23;
      mach_absolute_time();
      AFMachAbsoluteTimeGetTimeInterval();
      *buf = 136315650;
      v43 = "[CSSiriSpeechRecorder _updateAudioDeviceInfo:forReason:forcesUpdate:]";
      v44 = 2112;
      v45 = v24;
      v46 = 2048;
      v47 = v26;
      _os_log_impl(&dword_222E4D000, v25, OS_LOG_TYPE_INFO, "%s End updating audio device info %@. (duration = %f)", buf, 0x20u);
    }

    kdebug_trace();
    mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
    recordDeviceInfo = [(CSFAudioDeviceInfo *)self->_currentAudioDeviceInfo recordDeviceInfo];
    route = [recordDeviceInfo route];
    v30 = route;
    if (route)
    {
      v31 = route;
    }

    else
    {
      v31 = @"Unavailable";
    }

    v41[0] = v31;
    v40[1] = @"playbackRoute";
    playbackRoute = [(CSFAudioDeviceInfo *)self->_currentAudioDeviceInfo playbackRoute];
    v33 = playbackRoute;
    if (playbackRoute)
    {
      v34 = playbackRoute;
    }

    else
    {
      v34 = @"Unavailable";
    }

    v41[1] = v34;
    v40[2] = @"playbackDeviceTypes";
    playbackDeviceTypeList = [(CSFAudioDeviceInfo *)self->_currentAudioDeviceInfo playbackDeviceTypeList];
    v36 = playbackDeviceTypeList;
    if (playbackDeviceTypeList)
    {
      v37 = playbackDeviceTypeList;
    }

    else
    {
      v37 = @"Unavailable";
    }

    v41[2] = v37;
    v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
    [mEMORY[0x277CEF158]2 logEventWithType:210 context:v38];

    mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioFetchRouteContextWithMHUUID:v11 withFetchRouteContextStarted:0];

    if (objc_opt_respondsToSelector())
    {
      [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidUpdateAudioDeviceInfo:self->_currentAudioDeviceInfo];
    }
  }
}

- (void)updateASRFeatures:(id)features
{
  featuresCopy = features;
  _speechController = [(CSSiriSpeechRecorder *)self _speechController];
  [_speechController processASRFeatures:featuresCopy];
}

- (void)playRecordingStartAlert
{
  recordingWillStartGroup = self->_recordingWillStartGroup;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CSSiriSpeechRecorder_playRecordingStartAlert__block_invoke;
  block[3] = &unk_2784C6FD0;
  block[4] = self;
  dispatch_group_notify(recordingWillStartGroup, queue, block);
}

void __47__CSSiriSpeechRecorder_playRecordingStartAlert__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 176) == 2 && [*(v1 + 96) shouldPlayAlertIfNotPrelistening])
  {
    v3 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v12 = "[CSSiriSpeechRecorder playRecordingStartAlert]_block_invoke";
      _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v4 = *(*(a1 + 32) + 456);
    if (!v4)
    {
      v4 = dispatch_group_create();
      objc_storeStrong((*(a1 + 32) + 456), v4);
    }

    dispatch_group_enter(v4);
    v5 = *(*(a1 + 32) + 88);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __47__CSSiriSpeechRecorder_playRecordingStartAlert__block_invoke_159;
    v8[3] = &unk_2784C6FA8;
    v9 = v5;
    v10 = v4;
    v6 = v4;
    v7 = v5;
    AudioServicesPlaySystemSoundWithCompletion(0x57Cu, v8);
  }
}

void __47__CSSiriSpeechRecorder_playRecordingStartAlert__block_invoke_159(uint64_t a1)
{
  [*(a1 + 32) instrumentSiriCue:3];
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

- (void)setClientConfiguration:(id)configuration
{
  v12 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[CSSiriSpeechRecorder setClientConfiguration:]";
    v10 = 2112;
    v11 = configurationCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s clientConfiguration = %@", &v8, 0x16u);
  }

  v6 = [configurationCopy copy];
  currentClientConfiguration = self->_currentClientConfiguration;
  self->_currentClientConfiguration = v6;

  [(CSSiriAudioActivationInfo *)self->_currentActivationInfo setClientConfiguration:self->_currentClientConfiguration];
  [(CSSiriAudioActivationInfo *)self->_pendingActivationInfo setClientConfiguration:self->_currentClientConfiguration];
}

void __53__CSSiriSpeechRecorder__speechRecordingEventListener__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[CSSiriSpeechRecorder _speechRecordingEventListener]_block_invoke";
    v6 = 2114;
    v7 = v2;
    _os_log_error_impl(&dword_222E4D000, v3, OS_LOG_TYPE_ERROR, "%s %{public}@", &v4, 0x16u);
  }
}

- (void)setSpeechRecordingEventListeningEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  speechRecordingEventListenerConnection = self->_speechRecordingEventListenerConnection;
  v11 = endpointCopy;
  if (speechRecordingEventListenerConnection)
  {
    [(NSXPCConnection *)speechRecordingEventListenerConnection invalidate];
    v6 = self->_speechRecordingEventListenerConnection;
    self->_speechRecordingEventListenerConnection = 0;

    endpointCopy = v11;
  }

  if (endpointCopy)
  {
    v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithListenerEndpoint:v11];
    v8 = self->_speechRecordingEventListenerConnection;
    self->_speechRecordingEventListenerConnection = v7;

    v9 = self->_speechRecordingEventListenerConnection;
    v10 = AFSpeechRecordingEventListenerGetXPCInterface();
    [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_speechRecordingEventListenerConnection resume];
    endpointCopy = v11;
  }
}

- (void)forceSuccessAudioAlertOnStop
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CSSiriSpeechRecorder forceSuccessAudioAlertOnStop]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  self->_forceSuccessAlertOnStop = 1;
}

- (void)setFingerprintingEnabled:(BOOL)enabled
{
  if (self->_fingerprintingEnabled != enabled)
  {
    self->_fingerprintingEnabled = enabled;
    if (!enabled)
    {
      [(CSSiriAcousticFingerprinter *)self->_fingerprinter setDelegate:0];
      fingerprinter = self->_fingerprinter;
      self->_fingerprinter = 0;

      if (self->_speechCapturingMode == 4)
      {

        [(CSSiriSpeechRecorder *)self _stopRecordingWithReason:8 hostTime:0];
      }
    }
  }
}

- (void)cancelSpeechCaptureSuppressingAlert:(BOOL)alert
{
  alertCopy = alert;
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[CSSiriSpeechRecorder cancelSpeechCaptureSuppressingAlert:]";
    v8 = 1024;
    v9 = alertCopy;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s (suppressAlert = %d)", &v6, 0x12u);
  }

  self->_wasCanceled = 1;
  self->_suppressRecordingStoppedAlert = alertCopy;
  [(CSSiriSpeechRecorder *)self _stopRecordingWithReason:7 hostTime:0];
}

- (void)stopSpeechCaptureForEvent:(int64_t)event suppressAlert:(BOOL)alert hostTime:(unint64_t)time
{
  alertCopy = alert;
  v20 = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315906;
    v13 = "[CSSiriSpeechRecorder stopSpeechCaptureForEvent:suppressAlert:hostTime:]";
    v14 = 2048;
    eventCopy = event;
    v16 = 1024;
    v17 = alertCopy;
    v18 = 2048;
    timeCopy = time;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s (event = %ld, suppressAlert = %d, hostTime = %llu)", &v12, 0x26u);
  }

  if (event == 5)
  {
    self->_serverDidEndpoint = 1;
  }

  v11 = (AFIsNano() & 1) == 0 && (self->_speechCapturingMode & 0xFFFFFFFFFFFFFFFBLL) == 1 && self->_startEvent == event && ((endpointerOperationMode = self->_endpointerOperationMode, endpointerOperationMode > 4) || ((0x19u >> endpointerOperationMode) & 1) == 0) && [(CSSiriAudioActivationInfo *)self->_currentActivationInfo audioAlertStyle]== 3;
  self->_suppressRecordingStoppedAlert = alertCopy || v11;
  [(CSSiriSpeechRecorder *)self _stopRecordingWithReason:(event << 16) | 5 hostTime:time];
}

- (void)setFingerprintWasRecognized
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[CSSiriSpeechRecorder setFingerprintWasRecognized]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", &v4, 0xCu);
  }

  self->_fingerprintWasRecognized = 1;
}

- (void)setSpeechWasRecognizedForElapsedTime:(double)time isFinal:(BOOL)final
{
  finalCopy = final;
  v15 = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    twoShotStartTime = self->_twoShotStartTime;
    v9 = 136315650;
    v10 = "[CSSiriSpeechRecorder setSpeechWasRecognizedForElapsedTime:isFinal:]";
    v11 = 2048;
    timeCopy = time;
    v13 = 2048;
    v14 = twoShotStartTime;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s %lf %lf", &v9, 0x20u);
  }

  self->_serverDidRecognizeSpeech = 1;
  if (finalCopy)
  {
    self->_serverDidEndpoint = 1;
  }
}

- (void)releaseAudioSession
{
  v25 = *MEMORY[0x277D85DE8];
  isRecording = [(CSSpeechController *)self->_speechController isRecording];
  v4 = MEMORY[0x277CEF0E8];
  if (isRecording)
  {
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[CSSiriSpeechRecorder releaseAudioSession]";
      _os_log_error_impl(&dword_222E4D000, v5, OS_LOG_TYPE_ERROR, "%s Attempting to release audio session while CSSpeechController is still recording.", buf, 0xCu);
    }

    self->_suppressRecordingStoppedAlert = 1;
    [(CSSiriSpeechRecorder *)self _stopRecordingForEndpointReason:6 withEndpointMetrics:0];
  }

  suppressInterruptionEndedNotifications = [(CSSiriSpeechRecorder *)self suppressInterruptionEndedNotifications];
  v7 = *v4;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = "notify";
    if (suppressInterruptionEndedNotifications)
    {
      v8 = "suppress (keep others interrupted forever)";
    }

    *buf = 136315394;
    v22 = "[CSSiriSpeechRecorder releaseAudioSession]";
    v23 = 2080;
    v24 = v8;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s releaseAudioSessionBehavior = %s", buf, 0x16u);
  }

  [(CSSpeechController *)self->_speechController releaseAudioSession:!suppressInterruptionEndedNotifications];
  [(CSSiriSpeechRecorder *)self setSuppressInterruptionEndedNotifications:0];
  v9 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
  speechController = self->_speechController;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __43__CSSiriSpeechRecorder_releaseAudioSession__block_invoke;
  v18 = &unk_2784C6278;
  selfCopy = self;
  v11 = v9;
  v20 = v11;
  [(CSSpeechController *)speechController fetchAudioMetricsWithCompletion:&v15];
  currentAudioDeviceInfo = self->_currentAudioDeviceInfo;
  self->_currentAudioDeviceInfo = 0;

  if (objc_opt_respondsToSelector())
  {
    [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidUpdateAudioDeviceInfo:0, v15, v16, v17, v18, selfCopy];
  }

  currentActivationInfo = self->_currentActivationInfo;
  self->_currentActivationInfo = 0;

  pendingActivationInfo = self->_pendingActivationInfo;
  self->_pendingActivationInfo = 0;

  [(CSAudioSessionController *)self->_audioSessionController unregisterObserver:self];
}

void __43__CSSiriSpeechRecorder_releaseAudioSession__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__CSSiriSpeechRecorder_releaseAudioSession__block_invoke_2;
  block[3] = &unk_2784C6EE8;
  block[4] = v5;
  v9 = v3;
  v10 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

- (BOOL)_updateAudioContextWithPendingInfoForReason:(id)reason
{
  v19 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!self->_pendingActivationInfo)
  {
    goto LABEL_7;
  }

  [(CSSiriSpeechRecorder *)self _updateAudioContextToPostVoiceForReason:reasonCopy];
  v5 = MEMORY[0x277CEF0E8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    pendingActivationInfo = self->_pendingActivationInfo;
    v13 = 136315650;
    v14 = "[CSSiriSpeechRecorder _updateAudioContextWithPendingInfoForReason:]";
    v15 = 2112;
    v16 = pendingActivationInfo;
    v17 = 2112;
    v18 = reasonCopy;
    _os_log_impl(&dword_222E4D000, v6, OS_LOG_TYPE_INFO, "%s Updating using pending info %@ for reason %@.", &v13, 0x20u);
  }

  if ([(CSSiriSpeechRecorder *)self _setAudioContextWithInfo:self->_pendingActivationInfo forReason:reasonCopy])
  {
    objc_storeStrong(&self->_currentActivationInfo, self->_pendingActivationInfo);
    v8 = self->_pendingActivationInfo;
    self->_pendingActivationInfo = 0;

    v9 = *v5;
    v10 = 1;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      currentActivationInfo = self->_currentActivationInfo;
      v13 = 136315394;
      v14 = "[CSSiriSpeechRecorder _updateAudioContextWithPendingInfoForReason:]";
      v15 = 2112;
      v16 = currentActivationInfo;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Set pending info as current %@.", &v13, 0x16u);
    }
  }

  else
  {
LABEL_7:
    v10 = 0;
  }

  return v10;
}

- (BOOL)_updateAudioContextToPostVoiceForReason:(id)reason
{
  v13 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if ([(CSSiriAudioActivationInfo *)self->_currentActivationInfo needsUpdateToPostVoiceMode])
  {
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[CSSiriSpeechRecorder _updateAudioContextToPostVoiceForReason:]";
      v11 = 2112;
      v12 = reasonCopy;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Updating to post voice for reason %@.", &v9, 0x16u);
    }

    beginUpdateToPostVoice = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo beginUpdateToPostVoice];
    v7 = [(CSSiriSpeechRecorder *)self _setAudioContextWithInfo:self->_currentActivationInfo forReason:reasonCopy];
    [(CSSiriAudioActivationInfo *)self->_currentActivationInfo endUpdateToPostVoiceWithContext:beginUpdateToPostVoice success:v7];
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)_setAudioContextWithInfo:(id)info forReason:(id)reason
{
  v31 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  reasonCopy = reason;
  if (self->_speechController)
  {
    recordContext = [infoCopy recordContext];
    v9 = MEMORY[0x277CEF0E8];
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v22 = "[CSSiriSpeechRecorder _setAudioContextWithInfo:forReason:]";
      v23 = 2112;
      v24 = recordContext;
      v25 = 2112;
      v26 = reasonCopy;
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s Setting audio context %@ for reason %@.", buf, 0x20u);
    }

    mach_absolute_time();
    kdebug_trace();
    speechController = self->_speechController;
    v20 = 0;
    v12 = [(CSSpeechController *)speechController setCurrentRecordContext:recordContext error:&v20];
    v13 = v20;
    kdebug_trace();
    v14 = *v9;
    if (v13 || !v12)
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_13;
      }

      v15 = v14;
      mach_absolute_time();
      AFMachAbsoluteTimeGetTimeInterval();
      *buf = 136316162;
      v22 = "[CSSiriSpeechRecorder _setAudioContextWithInfo:forReason:]";
      v23 = 2112;
      v24 = recordContext;
      v25 = 2112;
      v26 = reasonCopy;
      v27 = 2114;
      v28 = v13;
      v29 = 2048;
      v30 = v19;
      _os_log_error_impl(&dword_222E4D000, v15, OS_LOG_TYPE_ERROR, "%s Error setting audio context %@ for reason %@ error %{public}@. (%f seconds)", buf, 0x34u);
    }

    else
    {
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
LABEL_13:

        goto LABEL_14;
      }

      v15 = v14;
      mach_absolute_time();
      AFMachAbsoluteTimeGetTimeInterval();
      *buf = 136315906;
      v22 = "[CSSiriSpeechRecorder _setAudioContextWithInfo:forReason:]";
      v23 = 2112;
      v24 = recordContext;
      v25 = 2112;
      v26 = reasonCopy;
      v27 = 2048;
      v28 = v16;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s Done setting audio context %@ for reason %@. (%f seconds)", buf, 0x2Au);
    }

    goto LABEL_13;
  }

  v17 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v22 = "[CSSiriSpeechRecorder _setAudioContextWithInfo:forReason:]";
    _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_INFO, "%s Ignored setting audio context because there's no speech controller.", buf, 0xCu);
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (void)_updateAudioContextWithInfo:(id)info reason:(id)reason
{
  v18 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  reasonCopy = reason;
  v8 = MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v12 = 136315650;
    v13 = "[CSSiriSpeechRecorder _updateAudioContextWithInfo:reason:]";
    v14 = 2112;
    v15 = infoCopy;
    v16 = 2112;
    v17 = reasonCopy;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s info = %@, reason = %@", &v12, 0x20u);
  }

  pendingActivationInfo = self->_pendingActivationInfo;
  if (pendingActivationInfo)
  {
    v11 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 136315650;
      v13 = "[CSSiriSpeechRecorder _updateAudioContextWithInfo:reason:]";
      v14 = 2112;
      v15 = pendingActivationInfo;
      v16 = 2112;
      v17 = reasonCopy;
      _os_log_debug_impl(&dword_222E4D000, v11, OS_LOG_TYPE_DEBUG, "%s Dropping previous pending activation info %@ for reason %@.", &v12, 0x20u);
      pendingActivationInfo = self->_pendingActivationInfo;
    }
  }

  self->_pendingActivationInfo = infoCopy;

  if (!self->_recordingState)
  {
    [(CSSiriSpeechRecorder *)self _updateAudioContextWithPendingInfoForReason:reasonCopy];
  }
}

- (void)setSpeechRequestOptions:(id)options
{
  v25 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v6 = MEMORY[0x277CEF0E8];
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *v24 = 136315394;
    *&v24[4] = "[CSSiriSpeechRecorder setSpeechRequestOptions:]";
    *&v24[12] = 2112;
    *&v24[14] = optionsCopy;
    _os_log_impl(&dword_222E4D000, v7, OS_LOG_TYPE_INFO, "%s %@", v24, 0x16u);
  }

  endpointerOperationMode = [optionsCopy endpointerOperationMode];
  v9 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = AFSpeechEndpointerOperationModeGetName();
    *v24 = 136315394;
    *&v24[4] = "[CSSiriSpeechRecorder setSpeechRequestOptions:]";
    *&v24[12] = 2112;
    *&v24[14] = v11;
    _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s endpointerOperationMode = %@", v24, 0x16u);
  }

  if (self->_speechCapturingMode == 4)
  {
    v12 = *v6;
    endpointerOperationMode = 1;
    if (!os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    v13 = v12;
    endpointerOperationMode = 1;
    v14 = AFSpeechEndpointerOperationModeGetName();
    *v24 = 136315394;
    *&v24[4] = "[CSSiriSpeechRecorder setSpeechRequestOptions:]";
    *&v24[12] = 2112;
    *&v24[14] = v14;
    v15 = "%s Fingerprinting mode, force (endpointerOperationMode = %@).";
    v16 = v13;
    v17 = 22;
    goto LABEL_8;
  }

  if (AFSpeechEndpointerOperationModeGetIsValid() && endpointerOperationMode || ![optionsCopy useAutomaticEndpointing])
  {
    goto LABEL_15;
  }

  v18 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
  {
    v13 = v18;
    endpointerOperationMode = 3;
    v14 = AFSpeechEndpointerOperationModeGetName();
    *v24 = 136315650;
    *&v24[4] = "[CSSiriSpeechRecorder setSpeechRequestOptions:]";
    *&v24[12] = 1024;
    *&v24[14] = 1;
    *&v24[18] = 2112;
    *&v24[20] = v14;
    v15 = "%s Legacy property set (useAutomaticEndpointing = %d), override (endpointerOperationMode = %@)";
    v16 = v13;
    v17 = 28;
LABEL_8:
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, v15, v24, v17);

    goto LABEL_15;
  }

  endpointerOperationMode = 3;
LABEL_15:
  [(CSSiriSpeechRecorder *)self _setEndpointerOperationMode:endpointerOperationMode forceUpdate:0, *v24, *&v24[8], *&v24[24]];
  if ([optionsCopy activationEvent] == 21)
  {
    [(CSSiriSpeechRecorder *)self _setSpeechCapturingMode:1];
  }

  v19 = [[CSSiriAudioActivationInfo alloc] initWithSpeechRecordingMode:self->_speechCapturingMode clientConfiguration:self->_currentClientConfiguration experimentContext:self->_experimentContext];
  [(CSSiriAudioActivationInfo *)v19 setSpeechRequestOptions:optionsCopy currentActivationInfo:self->_currentActivationInfo];
  v20 = NSStringFromSelector(a2);
  [(CSSiriSpeechRecorder *)self _updateAudioContextWithInfo:v19 reason:v20];

  recordDeviceIdentifier = [optionsCopy recordDeviceIdentifier];
  v22 = [recordDeviceIdentifier copy];
  recordDevice = self->_recordDevice;
  self->_recordDevice = v22;
}

- (void)_logAudioMetrics:(id)metrics mhUUID:(id)d
{
  metricsCopy = metrics;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = metricsCopy;
  if (isKindOfClass)
  {
    v6 = [metricsCopy objectForKey:*MEMORY[0x277CB8328]];
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();
    v8 = MEMORY[0x277CB8338];
    v9 = MEMORY[0x277CB8340];
    if (v7)
    {
      v10 = [v6 objectForKey:*MEMORY[0x277CB8338]];
      v11 = [v6 objectForKey:*v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedLongLongValue = [v10 unsignedLongLongValue];
          unsignedLongLongValue2 = [v11 unsignedLongLongValue];
          if (unsignedLongLongValue)
          {
            v14 = unsignedLongLongValue2;
            if (unsignedLongLongValue2)
            {
              mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
              [mEMORY[0x277CEF158] logEventWithType:233 machAbsoluteTime:unsignedLongLongValue context:0];

              mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
              [mEMORY[0x277CEF158]2 logEventWithType:234 machAbsoluteTime:v14 context:0];
            }
          }
        }
      }
    }

    v17 = [metricsCopy objectForKey:*MEMORY[0x277CB8330]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v17 objectForKey:*v8];
      v19 = [v17 objectForKey:*v9];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          unsignedLongLongValue3 = [v18 unsignedLongLongValue];
          unsignedLongLongValue4 = [v19 unsignedLongLongValue];
          if (unsignedLongLongValue3)
          {
            v22 = unsignedLongLongValue4;
            if (unsignedLongLongValue4)
            {
              mEMORY[0x277CEF158]3 = [MEMORY[0x277CEF158] sharedAnalytics];
              [mEMORY[0x277CEF158]3 logEventWithType:235 machAbsoluteTime:unsignedLongLongValue3 context:0];

              mEMORY[0x277CEF158]4 = [MEMORY[0x277CEF158] sharedAnalytics];
              [mEMORY[0x277CEF158]4 logEventWithType:236 machAbsoluteTime:v22 context:0];
            }
          }
        }
      }
    }

    v5 = metricsCopy;
  }
}

- (void)_logVoiceTriggerInfo:(id)info withMHUUID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  dCopy = d;
  v8 = [infoCopy objectForKey:@"earlyDetectFiredMachTime"];
  if (v8)
  {
    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:2304 machAbsoluteTime:objc_msgSend(v8 context:{"unsignedLongLongValue"), 0}];
  }

  v10 = [infoCopy objectForKey:@"triggerStartMachTime"];
  if (v10)
  {
    mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158]2 logEventWithType:2301 machAbsoluteTime:objc_msgSend(v10 context:{"unsignedLongLongValue"), 0}];
  }

  v12 = [infoCopy objectForKey:@"triggerFireMachTime"];
  if (v12)
  {
    mEMORY[0x277CEF158]3 = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158]3 logEventWithType:2302 machAbsoluteTime:objc_msgSend(v12 context:{"unsignedLongLongValue"), 0}];
  }

  v14 = [infoCopy objectForKey:@"triggerEndMachTime"];
  if (v14)
  {
    mEMORY[0x277CEF158]4 = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158]4 logEventWithType:2303 machAbsoluteTime:objc_msgSend(v14 context:{"unsignedLongLongValue"), 0}];

    if ([(CSSiriSpeechRecorder *)self _shouldEmitInstrumentation])
    {
      v24 = dCopy;
      v16 = objc_alloc_init(MEMORY[0x277D5AB68]);
      v17 = objc_alloc_init(MEMORY[0x277D5AB78]);
      [v17 setExists:1];
      [v16 setStartedOrChanged:v17];
      mEMORY[0x277CEF158]5 = [MEMORY[0x277CEF158] sharedAnalytics];
      unsignedLongLongValue = [v14 unsignedLongLongValue];
      turnIdentifier = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo turnIdentifier];
      [mEMORY[0x277CEF158]5 logInstrumentation:v16 machAbsoluteTime:unsignedLongLongValue turnIdentifier:turnIdentifier];

      v21 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "[CSSiriSpeechRecorder _logVoiceTriggerInfo:withMHUUID:]";
        _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_INFO, "%s logInstrumentation for VT launch started", buf, 0xCu);
      }

      dCopy = v24;
    }
  }

  if (infoCopy && [infoCopy count])
  {
    mEMORY[0x277D017A0] = [MEMORY[0x277D017A0] sharedLogger];
    [mEMORY[0x277D017A0] logStartEventWithFirstPassStartedInfo:infoCopy withMHUUID:dCopy];

    mEMORY[0x277D017A0]2 = [MEMORY[0x277D017A0] sharedLogger];
    [mEMORY[0x277D017A0]2 logTriggerEventWithVTEI:infoCopy withMHUUID:dCopy];
  }
}

- (void)_logBluetoothStateWithMHUUID:(id)d
{
  v29 = *MEMORY[0x277D85DE8];
  dCopy = d;
  date = [MEMORY[0x277CBEAA8] date];
  v6 = [MEMORY[0x277CB83F8] retrieveSessionWithID:{-[CSSiriSpeechRecorder _audioSessionID](self, "_audioSessionID")}];
  pickedRoute = [v6 pickedRoute];

  v8 = [pickedRoute objectForKey:*MEMORY[0x277D26CB0]];
  v9 = [pickedRoute objectForKey:*MEMORY[0x277D26CD8]];
  bOOLValue = [v9 BOOLValue];

  v11 = [pickedRoute objectForKey:*MEMORY[0x277D26CC0]];
  bOOLValue2 = [v11 BOOLValue];

  if (bOOLValue2)
  {
    v13 = *MEMORY[0x277D26CB8];

    v8 = v13;
  }

  date2 = [MEMORY[0x277CBEAA8] date];
  v15 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    [date2 timeIntervalSinceDate:date];
    *buf = 136315394;
    v26 = "[CSSiriSpeechRecorder _logBluetoothStateWithMHUUID:]";
    v27 = 2050;
    v28 = v17;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_DEFAULT, "%s query picked route elapsed time = %{public}lf", buf, 0x16u);
  }

  if (bOOLValue)
  {
    if (AFSupportsWirelessSplitter())
    {
      if (!self->_bluetoothWirelessSplitterSessionStateObserver)
      {
        v18 = [objc_alloc(MEMORY[0x277CEF1B0]) initWithQueue:self->_queue delegate:0];
        bluetoothWirelessSplitterSessionStateObserver = self->_bluetoothWirelessSplitterSessionStateObserver;
        self->_bluetoothWirelessSplitterSessionStateObserver = v18;
      }

      mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __53__CSSiriSpeechRecorder__logBluetoothStateWithMHUUID___block_invoke;
      v22[3] = &unk_2784C6250;
      v22[4] = self;
      v23 = dCopy;
      v24 = v8;
      [mEMORY[0x277CEF158] logEventWithType:242 contextResolver:v22];
    }

    else
    {
      mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
      [mEMORY[0x277D01738] logMHAssistantDaemonAudioBluetoothInfoWithMHUUID:dCopy withWirelessSplitterSessionState:0 withAudioDeviceCategory:v8];
    }
  }
}

void __53__CSSiriSpeechRecorder__logBluetoothStateWithMHUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 472);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__CSSiriSpeechRecorder__logBluetoothStateWithMHUUID___block_invoke_2;
  v6[3] = &unk_2784C6228;
  v9 = v3;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v5 = v3;
  [v4 getStateWithCompletion:v6];
}

void __53__CSSiriSpeechRecorder__logBluetoothStateWithMHUUID___block_invoke_2(void *a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = a1[6];
  v8 = @"state";
  v5 = AFBluetoothWirelessSplitterSessionStateGetName();
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  (*(v4 + 16))(v4, v6);

  v7 = [MEMORY[0x277D01738] sharedLogger];
  [v7 logMHAssistantDaemonAudioBluetoothInfoWithMHUUID:a1[4] withWirelessSplitterSessionState:a2 withAudioDeviceCategory:a1[5]];
}

- (id)_getFanInfoArray
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);

  return v2;
}

- (id)fetchAudioDeviceInfo
{
  dispatch_assert_queue_V2(self->_queue);
  v4 = NSStringFromSelector(a2);
  [(CSSiriSpeechRecorder *)self _updateAudioDeviceInfo:0 forReason:v4 forcesUpdate:0];

  v5 = [(CSFAudioDeviceInfo *)self->_currentAudioDeviceInfo copy];

  return v5;
}

- (void)updateSpeechSynthesisRecord:(id)record
{
  v16 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  beginTimestamp = [recordCopy beginTimestamp];
  if (beginTimestamp >= [(AFSpeechSynthesisRecord *)self->_mostRecentSpeechSynthesisRecord beginTimestamp])
  {
    endTimestamp = [recordCopy endTimestamp];
    if (endTimestamp >= [(AFSpeechSynthesisRecord *)self->_mostRecentSpeechSynthesisRecord endTimestamp])
    {
      v8 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
      {
        mostRecentSpeechSynthesisRecord = self->_mostRecentSpeechSynthesisRecord;
        v10 = 136315650;
        v11 = "[CSSiriSpeechRecorder updateSpeechSynthesisRecord:]";
        v12 = 2112;
        v13 = mostRecentSpeechSynthesisRecord;
        v14 = 2112;
        v15 = recordCopy;
        _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s Updated speech synthesis record from %@ to %@.", &v10, 0x20u);
      }

      objc_storeStrong(&self->_mostRecentSpeechSynthesisRecord, record);
    }
  }
}

- (BOOL)startSpeechCaptureWithContext:(id)context willStartHandler:(id)handler error:(id *)error
{
  v134 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    currentActivationInfo = self->_currentActivationInfo;
    *buf = 136315650;
    v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
    v128 = 2112;
    *v129 = contextCopy;
    *&v129[8] = 2112;
    *v130 = currentActivationInfo;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s context:%@, _currentActivationInfo :%@", buf, 0x20u);
  }

  pendingActivationInfo = self->_pendingActivationInfo;
  if (!pendingActivationInfo)
  {
    pendingActivationInfo = self->_currentActivationInfo;
  }

  [contextCopy willPrepareAndStartRecordingWithAudioActivationInfo:pendingActivationInfo];
  v125 = 0;
  v15 = [(CSSiriSpeechRecorder *)self _prepareSpeechControllerWithOptions:9 error:&v125];
  v16 = v125;
  if (!v15)
  {
    [(CSSiriSpeechRecorder *)self _logFanState];
    goto LABEL_111;
  }

  [(CSSiriSpeechRecorder *)self _setAlertsIfNeeded];
  v17 = NSStringFromSelector(a2);
  [(CSSiriSpeechRecorder *)self _updateAudioDeviceInfo:0 forReason:v17 forcesUpdate:1];

  _currentRecordRoute = [(CSSiriSpeechRecorder *)self _currentRecordRoute];
  _currentPlaybackRoute = [(CSSiriSpeechRecorder *)self _currentPlaybackRoute];
  if (self->_fingerprintingEnabled)
  {
    [(CSSiriAcousticFingerprinter *)self->_fingerprinter reset];
  }

  [(CSSiriSpeechRecorder *)self _clearEndpointHint];
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

  if (CSIsHorseman())
  {
    [(CSSiriAudioActivationInfo *)self->_currentActivationInfo speechEvent];
    if (AFSpeechEventIsHardwareTrigger() && ([(CSSiriAudioActivationInfo *)self->_currentActivationInfo speechRecordingMode]& 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      _shouldPlaySummonedToneOnTopCapInvocationOnHorseman = [(CSSiriSpeechRecorder *)self _shouldPlaySummonedToneOnTopCapInvocationOnHorseman];
      tapToSiriAudioPlaybackRequest2 = *MEMORY[0x277CEF0E8];
      v20 = os_log_type_enabled(tapToSiriAudioPlaybackRequest2, OS_LOG_TYPE_INFO);
      if (_shouldPlaySummonedToneOnTopCapInvocationOnHorseman)
      {
        if (v20)
        {
          tapToSiriAudioPlaybackRequest = [(AFClientConfiguration *)self->_currentClientConfiguration tapToSiriAudioPlaybackRequest];
          itemURL = [tapToSiriAudioPlaybackRequest itemURL];
          *buf = 136315394;
          v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
          v128 = 2112;
          *v129 = itemURL;
          _os_log_impl(&dword_222E4D000, tapToSiriAudioPlaybackRequest2, OS_LOG_TYPE_INFO, "%s Playing start alert %@", buf, 0x16u);
        }

        tapToSiriAudioPlaybackRequest2 = [(AFClientConfiguration *)self->_currentClientConfiguration tapToSiriAudioPlaybackRequest];
        [(CSSiriSpeechRecorder *)self _startAudioPlaybackRequest:tapToSiriAudioPlaybackRequest2 options:3 completion:&__block_literal_global_112];
        goto LABEL_31;
      }

      if (v20)
      {
        *buf = 136315138;
        v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
        v34 = "%s Suppressing start alert";
        goto LABEL_30;
      }
    }

    else
    {
      speechRecordingAlertPolicy = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo speechRecordingAlertPolicy];
      startingAlertBehavior = [speechRecordingAlertPolicy startingAlertBehavior];
      beepSoundID = [startingAlertBehavior beepSoundID];

      if (beepSoundID)
      {
        speechRecordingAlertPolicy2 = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo speechRecordingAlertPolicy];
        startingAlertBehavior2 = [speechRecordingAlertPolicy2 startingAlertBehavior];
        beepSoundID2 = [startingAlertBehavior2 beepSoundID];

        mEMORY[0x277CEF1C0] = [MEMORY[0x277CEF1C0] sharedManager];
        tapToSiriAudioPlaybackRequest2 = [mEMORY[0x277CEF1C0] URLForSoundID:beepSoundID2];

        v30 = *MEMORY[0x277CEF0E8];
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
        if (tapToSiriAudioPlaybackRequest2)
        {
          if (v31)
          {
            *buf = 136315394;
            v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
            v128 = 2112;
            *v129 = tapToSiriAudioPlaybackRequest2;
            _os_log_error_impl(&dword_222E4D000, v30, OS_LOG_TYPE_ERROR, "%s Playing start alert %@", buf, 0x16u);
          }

          v32 = objc_alloc(MEMORY[0x277CEF188]);
          v123[0] = MEMORY[0x277D85DD0];
          v123[1] = 3221225472;
          v123[2] = __77__CSSiriSpeechRecorder_startSpeechCaptureWithContext_willStartHandler_error___block_invoke_114;
          v123[3] = &unk_2784C6200;
          v124 = tapToSiriAudioPlaybackRequest2;
          v33 = [v32 initWithBuilder:v123];
          [(CSSiriSpeechRecorder *)self _startAudioPlaybackRequest:v33 options:3 completion:&__block_literal_global_117];

          v30 = v124;
        }

        else if (v31)
        {
          *buf = 136315138;
          v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
          _os_log_error_impl(&dword_222E4D000, v30, OS_LOG_TYPE_ERROR, "%s No SoundID URL", buf, 0xCu);
        }

        goto LABEL_31;
      }

      tapToSiriAudioPlaybackRequest2 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(tapToSiriAudioPlaybackRequest2, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
        v34 = "%s No start recording alert";
LABEL_30:
        _os_log_impl(&dword_222E4D000, tapToSiriAudioPlaybackRequest2, OS_LOG_TYPE_INFO, v34, buf, 0xCu);
      }
    }

LABEL_31:
  }

  obj = context;
  v114 = v15;
  errorCopy = error;
  v116 = handlerCopy;
  v121 = contextCopy;
  if (-[CSSiriAudioActivationInfo requiresBorealisConsumerCheck](self->_currentActivationInfo, "requiresBorealisConsumerCheck") && ([MEMORY[0x277D7A8D8] isLastTriggerForced] & 1) == 0)
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    [processInfo systemUptime];
    v37 = v36;
    while (1)
    {
      v38 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
        _os_log_impl(&dword_222E4D000, v38, OS_LOG_TYPE_INFO, "%s Checking if VT has triggered", buf, 0xCu);
      }

      isLastTriggerForced = [MEMORY[0x277D7A8D8] isLastTriggerForced];
      v40 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
        v128 = 1024;
        *v129 = isLastTriggerForced;
        _os_log_impl(&dword_222E4D000, v40, OS_LOG_TYPE_INFO, "%s VT has triggered %d", buf, 0x12u);
      }

      if (isLastTriggerForced)
      {
        break;
      }

      [processInfo systemUptime];
      if (v41 - v37 > 5.0)
      {
        v42 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          [processInfo systemUptime];
          *buf = 136315394;
          v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
          v128 = 2050;
          *v129 = v112 - v37;
          _os_log_error_impl(&dword_222E4D000, v42, OS_LOG_TYPE_ERROR, "%s Timed out after %{public}lfs waiting for Borealis buffer to become available.", buf, 0x16u);
        }

        break;
      }

      usleep(0x3A98u);
    }
  }

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  if ([mEMORY[0x277D7A8D0] isVoiceTriggerAvailable])
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    cloudSyncEnabled = [mEMORY[0x277CEF368] cloudSyncEnabled];
  }

  else
  {
    cloudSyncEnabled = 0;
  }

  v46 = AFSupportsSpeechExtraction();
  if (self->_audioFileType)
  {
    self->_needsAVVCLPCMCallbacks = 1;
  }

  else
  {
    v47 = v46;
    mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
    self->_needsAVVCLPCMCallbacks = ([mEMORY[0x277CEF368]2 fileLoggingIsEnabled] | cloudSyncEnabled | v47) & 1;
  }

  self->_hasReceivedEmptyLPCMRecordBuffer = 0;
  v49 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
    _os_log_impl(&dword_222E4D000, v49, OS_LOG_TYPE_INFO, "%s entering _recordingWillStartGroup", buf, 0xCu);
  }

  dispatch_group_enter(self->_recordingWillStartGroup);
  if ([(CSSiriAudioActivationInfo *)self->_currentActivationInfo hasPlayedStartAlert])
  {
    [contextCopy instrumentSiriCue:1];
  }

  self->_startEvent = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo speechEvent];
  v50 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
  v51 = self->_currentActivationInfo;
  _currentRecordingInfo = [(CSSiriSpeechRecorder *)self _currentRecordingInfo];
  v53 = [(CSSiriAudioActivationInfo *)v51 startRecordingSettingsWithRecordRoute:_currentRecordRoute recordingInfo:_currentRecordingInfo playbackRoute:_currentPlaybackRoute];

  v118 = v53;
  v54 = [v53 mutableCopy];
  recordDeviceInfo = [(CSFAudioDeviceInfo *)self->_currentAudioDeviceInfo recordDeviceInfo];
  if (![recordDeviceInfo isRemoteDevice])
  {
    goto LABEL_66;
  }

  v56 = MEMORY[0x277D018F8];
  recordDeviceInfo2 = [(CSFAudioDeviceInfo *)self->_currentAudioDeviceInfo recordDeviceInfo];
  route = [recordDeviceInfo2 route];
  LODWORD(v56) = [v56 isDisplayPortRouteWithRecordRoute:route];

  if (!v56)
  {
    goto LABEL_67;
  }

  recordDeviceInfo3 = [(CSFAudioDeviceInfo *)self->_currentAudioDeviceInfo recordDeviceInfo];
  recordDeviceInfo = [recordDeviceInfo3 remoteDeviceUID];

  memset(uu, 0, sizeof(uu));
  uUIDString = [recordDeviceInfo UUIDString];
  uTF8String = [uUIDString UTF8String];

  if (uTF8String && !uuid_parse(uTF8String, uu))
  {
    v103 = remote_device_copy_device_with_uuid();
    if (!v103)
    {
      v62 = contextCopy;
      v63 = *MEMORY[0x277CEF0E8];
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_61;
      }

      uUIDString2 = [recordDeviceInfo UUIDString];
      *buf = 136315394;
      v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
      v128 = 2112;
      *v129 = uUIDString2;
      v110 = "%s Failed to retrieve remote device with UUID %@";
LABEL_137:
      _os_log_error_impl(&dword_222E4D000, v63, OS_LOG_TYPE_ERROR, v110, buf, 0x16u);

      goto LABEL_61;
    }

    v104 = v103;
    v105 = remote_device_copy_product_type();
    if (v105)
    {
      v106 = v105;
      v62 = contextCopy;
      v107 = [MEMORY[0x277CCACA8] stringWithUTF8String:v105];

      free(v106);
      if (v107)
      {
        v108 = [@"AppleDisplay2 1"];
        goto LABEL_132;
      }
    }

    else
    {
      v62 = contextCopy;
      v107 = 0;
    }

    v108 = 1;
LABEL_132:
    v111 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
      v128 = 2112;
      *v129 = v107;
      *&v129[8] = 1024;
      *v130 = v108;
      _os_log_impl(&dword_222E4D000, v111, OS_LOG_TYPE_INFO, "%s Display productType = %@, isLegacyDisplay = %d", buf, 0x1Cu);
    }

    if ((v108 & 1) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_62;
  }

  v62 = contextCopy;
  v63 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
  {
    uUIDString2 = [recordDeviceInfo UUIDString];
    *buf = 136315394;
    v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
    v128 = 2112;
    *v129 = uUIDString2;
    v110 = "%s Failed to parse display UUID %@";
    goto LABEL_137;
  }

LABEL_61:

LABEL_62:
  v64 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
    _os_log_impl(&dword_222E4D000, v64, OS_LOG_TYPE_INFO, "%s Skip start alert for legacy studio display", buf, 0xCu);
  }

  [v54 setObject:MEMORY[0x277CBEC38] forKey:@"CSSpeechRecordSettingsKey_shouldSkipStartRecordingAlert"];
LABEL_65:
  contextCopy = v62;
LABEL_66:

LABEL_67:
  sessionUUID = [contextCopy sessionUUID];

  if (sessionUUID)
  {
    sessionUUID2 = [contextCopy sessionUUID];
    [v54 setObject:sessionUUID2 forKey:@"CSSpeechRecordSettingsKey_siriSessionUUID"];
  }

  uUIDString3 = [v50 UUIDString];

  if (uUIDString3)
  {
    uUIDString4 = [v50 UUIDString];
    [v54 setObject:uUIDString4 forKey:@"CSSpeechRecordSettingsKey_requestMHUUID"];

    if (([MEMORY[0x277D018F8] isMedocFeatureEnabled] & 1) == 0)
    {
      [contextCopy emitRequestLinkEventForMHUUID:v50];
    }
  }

  v69 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldDisableSpeechPacketGeneration];
  [v54 setObject:v69 forKey:@"CSSpeechRecordSettingsKey_asrOnDevice"];

  v70 = [MEMORY[0x277CCABB0] numberWithBool:self->_hybridUODEnabled];
  [v54 setObject:v70 forKey:@"CSSpeechRecordSettingsKey_hybridUODEnabled"];

  speechCapturingMode = self->_speechCapturingMode;
  if ((speechCapturingMode & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    goto LABEL_84;
  }

  if ((speechCapturingMode & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    if (CSIsWatch())
    {
      v72 = 0;
      startEvent = self->_startEvent;
      if (startEvent > 0xD || ((1 << startEvent) & 0x2102) == 0)
      {
LABEL_80:
        if (AFDeviceSupportsSiriUOD() && !v72)
        {
          goto LABEL_85;
        }

        goto LABEL_84;
      }
    }

    else if (CSIsIOS())
    {
      v72 = self->_startEvent == 1;
      goto LABEL_80;
    }

    AFDeviceSupportsSiriUOD();
LABEL_84:
    [v54 setObject:MEMORY[0x277CBEC38] forKey:@"CSSpeechRecordSettingsKey_disablePrewarmLocalAsrAtStartRecording"];
  }

LABEL_85:
  v117 = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo recordContextForSpeechEvent:self->_startEvent];
  [contextCopy updateAudioRecordContext:?];
  v74 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
    v128 = 2112;
    *v129 = v54;
    _os_log_impl(&dword_222E4D000, v74, OS_LOG_TYPE_INFO, "%s Asking CSSpeechController to startRecording with settings %@", buf, 0x16u);
  }

  mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158] logEventWithType:211 context:0];

  mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
  [mEMORY[0x277D01738] logMHAssistantDaemonAudioStartRecordingContextWithMHUUID:v50 withStartRecordingContext:1 withFanInfoArray:0 withActiveSessionDisplayIDs:0];

  processInfo2 = [MEMORY[0x277CCAC38] processInfo];
  [processInfo2 systemUptime];
  self->_startRecordingTimestamp = v78;

  if (AFIsInternalInstall())
  {
    v79 = MEMORY[0x277CEF0E8];
    v80 = *MEMORY[0x277CEF0E8];
    v81 = os_signpost_id_generate(*v79);
    if (v81 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v82 = v81;
      if (os_signpost_enabled(v80))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v80, OS_SIGNPOST_EVENT, v82, "SpeechRecorder", "StartRecording", buf, 2u);
      }
    }
  }

  v83 = v50;
  kdebug_trace();
  speechController = self->_speechController;
  v122 = 0;
  v85 = [(CSSpeechController *)speechController startRecordingWithSettings:v54 error:&v122];
  v86 = v122;
  [v121 updateRecordingSettings:v54];
  kdebug_trace();
  v87 = 0;
  if (!v85)
  {
    v87 = AFAddInterruptingAudioSessionInfoToAnalyticsContext();
  }

  mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
  [mEMORY[0x277CEF158]2 logEventWithType:212 context:v87];

  v89 = [v87 objectForKey:@"kAudioSessionProperty_ActiveSessionDisplayIDs"];
  mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
  [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioStartRecordingContextWithMHUUID:v83 withStartRecordingContext:0 withFanInfoArray:0 withActiveSessionDisplayIDs:v89];

  v91 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
    _os_log_impl(&dword_222E4D000, v91, OS_LOG_TYPE_INFO, "%s Done asking CSSpeechController to startRecording", buf, 0xCu);
  }

  if (v85)
  {
    objc_storeStrong(&self->_context, obj);
    v92 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
    {
      context = self->_context;
      *buf = 136315394;
      v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
      v128 = 2112;
      *v129 = context;
      _os_log_impl(&dword_222E4D000, v92, OS_LOG_TYPE_INFO, "%s context = %@", buf, 0x16u);
    }

    self->_recordingState = 1;
    if ([(CSSiriAudioActivationInfo *)self->_currentActivationInfo shouldExplicitlyPlayAlertOnStart])
    {
      [(CSSiriSpeechRecorder *)self _playAudioAlert:1];
    }

    if (AFIsATV())
    {
      self->_expectedFirstBufferTimestamp = self->_startRecordingTimestamp + 0.2;
    }

    decoder = self->_decoder;
    if (decoder)
    {
      AudioConverterDispose(decoder);
      self->_decoder = 0;
    }
  }

  else
  {
    mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
    [mEMORY[0x277D01708] submitAudioIssueReport:*MEMORY[0x277D01A40]];

    v96 = [MEMORY[0x277CEF2A0] errorWithCode:200 description:0 underlyingError:v86];

    self->_recordingState = 0;
    v97 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
      _os_log_impl(&dword_222E4D000, v97, OS_LOG_TYPE_INFO, "%s leaving _recordingWillStartGroup", buf, 0xCu);
    }

    dispatch_group_leave(self->_recordingWillStartGroup);
    v16 = v96;
  }

  [(CSSiriSpeechRecorder *)self _logFanState];
  if (v85)
  {
    v98 = 1;
    contextCopy = v121;
    handlerCopy = v116;
    goto LABEL_120;
  }

  contextCopy = v121;
  handlerCopy = v116;
  error = errorCopy;
  v15 = v114;
LABEL_111:
  [contextCopy didStopRecordingWithError:v16];
  if (error)
  {
    v99 = v16;
    *error = v16;
  }

  if (v15 && ![(CSSiriAudioActivationInfo *)self->_currentActivationInfo shouldSuppressRecordingErrorAlert])
  {
    [(CSSiriSpeechRecorder *)self _playAudioAlert:3];
  }

  v100 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
  {
    v102 = &stru_28363DA48;
    *buf = 136316162;
    v127 = "[CSSiriSpeechRecorder startSpeechCaptureWithContext:willStartHandler:error:]";
    if (v15)
    {
      v102 = @", playing error alert";
    }

    v128 = 1024;
    *v129 = v15;
    *&v129[4] = 1024;
    *&v129[6] = 0;
    *v130 = 2114;
    *&v130[2] = v16;
    v131 = 2114;
    v132 = v102;
    _os_log_error_impl(&dword_222E4D000, v100, OS_LOG_TYPE_ERROR, "%s Could not set up recording (prepared = %d, started = %d), returning error %{public}@%{public}@ and resetting voice controller.", buf, 0x2Cu);
  }

  if (v15)
  {
    [(CSSiriSpeechRecorder *)self _resetSpeechController];
  }

  v98 = 0;
LABEL_120:

  return v98;
}

void __77__CSSiriSpeechRecorder_startSpeechCaptureWithContext_willStartHandler_error___block_invoke_114(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  [v4 setItemURL:v2];
  [v4 setNumberOfLoops:0];
  LODWORD(v3) = 1.0;
  [v4 setVolume:v3];
  [v4 setFadeInDuration:0.0];
  [v4 setFadeOutDuration:0.0];
}

- (void)prepareForMode:(int64_t)mode withOptions:(id)options
{
  v16 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v7 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    if ((mode - 1) > 4)
    {
      v8 = @"Off";
    }

    else
    {
      v8 = off_2784C66F8[mode - 1];
    }

    *v14 = 136315650;
    *&v14[4] = "[CSSiriSpeechRecorder prepareForMode:withOptions:]";
    *&v14[12] = 2112;
    *&v14[14] = v8;
    *&v14[22] = 2112;
    v15 = optionsCopy;
    v9 = v7;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Preparing speech capture for %@ options:%@", v14, 0x20u);
  }

  [(CSSiriSpeechRecorder *)self _setSpeechCapturingMode:mode, *v14, *&v14[8], v15];
  -[CSSiriSpeechRecorder _setEndpointerOperationMode:forceUpdate:](self, "_setEndpointerOperationMode:forceUpdate:", [optionsCopy endpointerOperationMode], 1);
  v10 = [(CSSiriSpeechRecorder *)self _mhUUIDFromSpeechRequestOptions:optionsCopy];
  mhUUID = self->_mhUUID;
  self->_mhUUID = v10;

  if (!self->_mhUUID)
  {
    v12 = [(CSSiriSpeechRecorder *)self _currentMHUUID:1];
    v13 = self->_mhUUID;
    self->_mhUUID = v12;
  }
}

- (void)prepareForMode:(int64_t)mode
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[CSSiriSpeechRecorder prepareForMode:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s ", &v6, 0xCu);
  }

  [(CSSiriSpeechRecorder *)self prepareForMode:mode withOptions:0];
}

- (id)currentVTSatScore
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[CSSiriSpeechRecorder currentVTSatScore]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  [(CSSiriAudioActivationInfo *)self->_currentActivationInfo speechEvent];
  if (AFSpeechEventIsVoiceTrigger())
  {
    voiceTriggerInfo = [(CSSpeechController *)self->_speechController voiceTriggerInfo];
  }

  else
  {
    voiceTriggerInfo = 0;
  }

  v5 = [voiceTriggerInfo objectForKey:@"satScore"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)recordingInfoForPreheatWithEvent:(int64_t)event
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[CSSiriSpeechRecorder recordingInfoForPreheatWithEvent:]";
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s ", &v9, 0xCu);
  }

  _speechController = [(CSSiriSpeechRecorder *)self _speechController];
  v7 = [(CSSiriSpeechRecorder *)self _recordingInfoForEvent:event audioAlertStyle:0 includeBTInfo:0 includeRecordDeviceInfo:0];

  return v7;
}

- (BOOL)prepareSpeechCaptureWithOptions:(unint64_t)options error:(id *)error
{
  v6 = [(CSSiriSpeechRecorder *)self _prepareSpeechControllerWithOptions:options error:error];
  if (v6)
  {
    v7 = NSStringFromSelector(a2);
    [(CSSiriSpeechRecorder *)self _updateAudioDeviceInfo:0 forReason:v7 forcesUpdate:0];
  }

  return v6;
}

- (void)preheatRecognizerWithOption:(id)option
{
  optionCopy = option;
  isTest = [optionCopy isTest];
  if ((AFDeviceSupportsSiriUOD() & 1) != 0 || AFOfflineDictationCapable() && (([optionCopy skipPersonalizedASR] | isTest ^ 1) & 1) == 0)
  {
    v4 = [objc_alloc(MEMORY[0x277D24250]) initWithDelegate:0];
    if (optionCopy)
    {
      preheatLanguage = [optionCopy preheatLanguage];
    }

    else
    {
      preheatLanguage = 0;
    }

    [v4 preheatLocalSpeechRecognitionWithLanguage:preheatLanguage source:1];
    [v4 invalidate];
  }
}

- (void)preheatWithOption:(id)option
{
  v31 = *MEMORY[0x277D85DE8];
  pendingActivationInfo = self->_pendingActivationInfo;
  if (!pendingActivationInfo)
  {
    pendingActivationInfo = self->_currentActivationInfo;
  }

  v6 = pendingActivationInfo;
  if ([(CSSiriAudioActivationInfo *)v6 canPrewarm])
  {
    v7 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
    _speechController = [(CSSiriSpeechRecorder *)self _speechController];
    v9 = MEMORY[0x277CEF0E8];
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v27 = 136315138;
      v28 = "[CSSiriSpeechRecorder preheatWithOption:]";
      _os_log_impl(&dword_222E4D000, v10, OS_LOG_TYPE_INFO, "%s Prewarming audio session in speech controller", &v27, 0xCu);
    }

    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:205 context:0];

    mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738] logMHAssistantDaemonAudioPrewarmContextWithMHUUID:v7 withPrewarmStarted:1];

    kdebug_trace();
    [_speechController prewarmAudioSession];
    kdebug_trace();
    mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158]2 logEventWithType:206 context:0];

    mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioPrewarmContextWithMHUUID:v7 withPrewarmStarted:0];

    v15 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v27 = 136315138;
      v28 = "[CSSiriSpeechRecorder preheatWithOption:]";
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s Done prewarm audio session in speech controller", &v27, 0xCu);
    }

    if (AFIsHorseman())
    {
      if ([(CSSiriSpeechRecorder *)self _shouldPlaySummonedToneOnTopCapInvocationOnHorseman])
      {
        currentClientConfiguration = self->_currentClientConfiguration;
        if (currentClientConfiguration)
        {
          tapToSiriAudioPlaybackRequest = [(AFClientConfiguration *)currentClientConfiguration tapToSiriAudioPlaybackRequest];
          if (tapToSiriAudioPlaybackRequest)
          {
            v18 = *v9;
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v27 = 136315138;
              v28 = "[CSSiriSpeechRecorder preheatWithOption:]";
              _os_log_impl(&dword_222E4D000, v18, OS_LOG_TYPE_INFO, "%s Prewarming start alert", &v27, 0xCu);
            }

            [(CSSiriAudioPlaybackService *)self->_audioPlaybackService prewarmRequest:tapToSiriAudioPlaybackRequest completion:&__block_literal_global_24906];
          }
        }
      }
    }
  }

  else if ([(CSSiriAudioActivationInfo *)v6 canPrepareWithoutInterruption])
  {
    v19 = MEMORY[0x277CEF0E8];
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v27 = 136315138;
      v28 = "[CSSiriSpeechRecorder preheatWithOption:]";
      _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_INFO, "%s Preparing instead of preheating since we're not in the default mode", &v27, 0xCu);
    }

    v21 = NSStringFromSelector(a2);
    v22 = [(CSSiriSpeechRecorder *)self _setAudioContextWithInfo:v6 forReason:v21];

    if (v22)
    {
      v23 = self->_pendingActivationInfo;
      self->_pendingActivationInfo = 0;

      objc_storeStrong(&self->_currentActivationInfo, pendingActivationInfo);
      v24 = *v19;
      if (os_log_type_enabled(*v19, OS_LOG_TYPE_INFO))
      {
        currentActivationInfo = self->_currentActivationInfo;
        v27 = 136315394;
        v28 = "[CSSiriSpeechRecorder preheatWithOption:]";
        v29 = 2112;
        v30 = currentActivationInfo;
        _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_INFO, "%s Set pending info as current %@.", &v27, 0x16u);
      }
    }

    [(CSSiriSpeechRecorder *)self _prepareSpeechControllerWithOptions:4 error:0];
  }

  else
  {
    _speechController2 = [(CSSiriSpeechRecorder *)self _speechController];
  }
}

void __42__CSSiriSpeechRecorder_preheatWithOption___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CEF0E8];
  v4 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v4)
    {
      v8 = 136315394;
      v9 = "[CSSiriSpeechRecorder preheatWithOption:]_block_invoke";
      v10 = 2112;
      v11 = v2;
      v5 = "%s Failed to prewarm start alert due to %@";
      v6 = v3;
      v7 = 22;
LABEL_7:
      _os_log_error_impl(&dword_222E4D000, v6, OS_LOG_TYPE_ERROR, v5, &v8, v7);
    }
  }

  else if (v4)
  {
    v8 = 136315138;
    v9 = "[CSSiriSpeechRecorder preheatWithOption:]_block_invoke";
    v5 = "%s Done prewarming start alert";
    v6 = v3;
    v7 = 12;
    goto LABEL_7;
  }
}

- (void)eagerlyInitializeAudioRecording
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[CSSiriSpeechRecorder eagerlyInitializeAudioRecording]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", &v5, 0xCu);
  }

  _speechController = [(CSSiriSpeechRecorder *)self _speechController];
}

- (void)_stopRecordingForEndpointReason:(id)reason withEndpointMetrics:(id)metrics
{
  v14 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  recordingState = self->_recordingState;
  v8 = *MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  if (recordingState == 2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[CSSiriSpeechRecorder _stopRecordingForEndpointReason:withEndpointMetrics:]";
      _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
    }

    -[CSSiriSpeechRecorder _stopRecordingWithReason:hostTime:](self, "_stopRecordingWithReason:hostTime:", reason.var1, [metricsCopy endpointBufferHostTime]);
    [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingWillStopRecording];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = 136315394;
    v11 = "[CSSiriSpeechRecorder _stopRecordingForEndpointReason:withEndpointMetrics:]";
    v12 = 2048;
    v13 = recordingState;
    _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s Ignoring unexpected stop recording while in state %ld", &v10, 0x16u);
  }
}

- (void)_setupAudioFileWritingForSpeechController:(id)controller info:(id)info context:(id)context
{
  v53 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  infoCopy = info;
  contextCopy = context;
  v11 = MEMORY[0x277CEF0E8];
  v12 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    *&buf[4] = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
    *&buf[12] = 2112;
    *&buf[14] = infoCopy;
    *&buf[22] = 2112;
    *&buf[24] = contextCopy;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s info = %@, context = %@", buf, 0x20u);
  }

  if (self->_audioFileType)
  {
    audioFileHandle = self->_audioFileHandle;
    v14 = [CSSiriAudioFileWriter alloc];
    audioFileType = self->_audioFileType;
    if (audioFileHandle)
    {
      v16 = [(CSSiriAudioFileWriter *)v14 initWithType:audioFileType fileHandle:self->_audioFileHandle priority:25];
    }

    else
    {
      v16 = [(CSSiriAudioFileWriter *)v14 initWithType:audioFileType pathGenerator:0 priority:25];
    }

    audioFileWriter = self->_audioFileWriter;
    self->_audioFileWriter = v16;

    v20 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      v21 = self->_audioFileWriter;
      *buf = 136315394;
      *&buf[4] = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
      *&buf[12] = 2112;
      *&buf[14] = v21;
      _os_log_impl(&dword_222E4D000, v20, OS_LOG_TYPE_INFO, "%s Created _audioFileWriter %@.", buf, 0x16u);
    }
  }

  else
  {
    v17 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
      *&buf[12] = 2048;
      *&buf[14] = 0;
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_INFO, "%s Did not create _audioFileWriter because audioFileType = %ld.", buf, 0x16u);
    }

    v18 = self->_audioFileWriter;
    self->_audioFileWriter = 0;
  }

  mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
  if ([mEMORY[0x277D7A8D0] isVoiceTriggerAvailable])
  {
    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    cloudSyncEnabled = [mEMORY[0x277CEF368] cloudSyncEnabled];
  }

  else
  {
    cloudSyncEnabled = 0;
  }

  v25 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
    *&buf[12] = 1024;
    *&buf[14] = cloudSyncEnabled;
    _os_log_impl(&dword_222E4D000, v25, OS_LOG_TYPE_INFO, "%s supportsVoiceIdentificationTraining = %d", buf, 0x12u);
  }

  v26 = AFSupportsSpeechExtraction();
  v27 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
    *&buf[12] = 1024;
    *&buf[14] = v26;
    _os_log_impl(&dword_222E4D000, v27, OS_LOG_TYPE_INFO, "%s supportsSpeechExtraction = %d", buf, 0x12u);
  }

  if ([infoCopy canGetPCMStream])
  {
    mEMORY[0x277CEF368]2 = [MEMORY[0x277CEF368] sharedPreferences];
    fileLoggingIsEnabled = [mEMORY[0x277CEF368]2 fileLoggingIsEnabled];
  }

  else
  {
    fileLoggingIsEnabled = 0;
  }

  v30 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
    *&buf[12] = 1024;
    *&buf[14] = fileLoggingIsEnabled;
    _os_log_impl(&dword_222E4D000, v30, OS_LOG_TYPE_INFO, "%s supportsSpeechLogging = %d", buf, 0x12u);
  }

  if (self->_audioFileWriter)
  {
    recordSettings = [controllerCopy recordSettings];
    v52 = 0;
    memset(buf, 0, sizeof(buf));
    _LPCMStreamASBDForSpeechControllerSettings(buf, recordSettings);
    v32 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      *v45 = 136315394;
      v46 = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
      v47 = 2112;
      v48 = recordSettings;
      _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_INFO, "%s Configure _audioFileWriter with recordSettings = %@.", v45, 0x16u);
    }

    [(CSSiriAudioFileWriter *)self->_audioFileWriter configureWithAudioStreamBasicDescription:buf];
  }

  if ((cloudSyncEnabled | fileLoggingIsEnabled | v26))
  {
    recordSettings2 = [controllerCopy recordSettings];
    v52 = 0;
    memset(buf, 0, sizeof(buf));
    _LPCMStreamASBDForSpeechControllerSettings(buf, recordSettings2);
    v34 = *v11;
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
    {
      *v45 = 136315650;
      v46 = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
      v47 = 2112;
      v48 = contextCopy;
      v49 = 2112;
      v50 = recordSettings2;
      _os_log_impl(&dword_222E4D000, v34, OS_LOG_TYPE_INFO, "%s Ask context %@ to configure and record with recordSettings = %@.", v45, 0x20u);
    }

    [contextCopy beginRecordingAudioWithAudioStreamBasicDescription:buf];
    if (fileLoggingIsEnabled)
    {
      v35 = objc_alloc_init(MEMORY[0x277CBEAA8]);
      [infoCopy speechEvent];
      IsVoiceTrigger = AFSpeechEventIsVoiceTrigger();
      v37 = @"DT";
      if (IsVoiceTrigger)
      {
        v37 = @"VT";
      }

      v38 = v37;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __79__CSSiriSpeechRecorder__setupAudioFileWritingForSpeechController_info_context___block_invoke;
      v42[3] = &unk_2784C61B8;
      v42[4] = self;
      v43 = v35;
      v44 = v38;
      v39 = v38;
      v40 = v35;
      [contextCopy acquireRecordedAudioWithHandler:v42];
    }
  }

  v41 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]";
    _os_log_impl(&dword_222E4D000, v41, OS_LOG_TYPE_INFO, "%s Done", buf, 0xCu);
  }
}

void __79__CSSiriSpeechRecorder__setupAudioFileWritingForSpeechController_info_context___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  if (!v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s Unable to acquire recorded audio for speech logging.", buf, 0xCu);
      if (!v6)
      {
        goto LABEL_20;
      }
    }

    else if (!v6)
    {
      goto LABEL_20;
    }

LABEL_19:
    v6[2](v6);
    goto LABEL_20;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v26 = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]_block_invoke";
    v27 = 2112;
    v28 = v5;
    _os_log_impl(&dword_222E4D000, v8, OS_LOG_TYPE_INFO, "%s Acquired recorded audio for speech logging: %@", buf, 0x16u);
  }

  v10 = AFSpeechLogsDirectory();
  if (v10 && [*(a1 + 32) _prepareDirectoryAtPath:v10])
  {
    if ([*(a1 + 32) _checkAudioLoggingLimits:v10])
    {
      v11 = objc_alloc(MEMORY[0x277CCACA8]);
      if (_CSSiriSpeechAudioRecordingDateFormatter_onceToken != -1)
      {
        dispatch_once(&_CSSiriSpeechAudioRecordingDateFormatter_onceToken, &__block_literal_global_674);
      }

      v12 = *(a1 + 40);
      v13 = _CSSiriSpeechAudioRecordingDateFormatter_dateFormatter;
      v14 = [v13 stringFromDate:v12];
      v15 = [v11 initWithFormat:@"PCM-%@-%@.wav", v14, *(a1 + 48)];

      v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:1];
      v17 = [v16 URLByAppendingPathComponent:v15];

      v18 = [MEMORY[0x277CCAA00] defaultManager];
      v24 = 0;
      v19 = [v18 linkItemAtURL:v5 toURL:v17 error:&v24];
      v20 = v24;

      v21 = *v7;
      if (!v19 || v20)
      {
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v26 = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]_block_invoke";
          v27 = 2112;
          v28 = v20;
          _os_log_error_impl(&dword_222E4D000, v21, OS_LOG_TYPE_ERROR, "%s Unable to save recorded audio for speech logging due to error %@.", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v26 = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]_block_invoke";
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_INFO, "%s Speech Log: %@", buf, 0x16u);
      }
    }

    else
    {
      v23 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v26 = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]_block_invoke";
        _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_INFO, "%s Skipped saving recorded audio for speech logging due to audio logging limit.", buf, 0xCu);
      }
    }
  }

  else
  {
    v22 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "[CSSiriSpeechRecorder _setupAudioFileWritingForSpeechController:info:context:]_block_invoke";
      _os_log_error_impl(&dword_222E4D000, v22, OS_LOG_TYPE_ERROR, "%s Unable to prepare directory for speech logging.", buf, 0xCu);
    }
  }

  if (v6)
  {
    goto LABEL_19;
  }

LABEL_20:
}

- (BOOL)_prepareDirectoryAtPath:(id)path
{
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v11 = 0;
  if ([defaultManager fileExistsAtPath:pathCopy isDirectory:&v11])
  {
    if (v11)
    {
      v5 = 1;
    }

    else
    {
      v8 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v13 = "[CSSiriSpeechRecorder _prepareDirectoryAtPath:]";
        v14 = 2112;
        v15 = pathCopy;
        _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s An item already exists at path %@, but it is not a directory.", buf, 0x16u);
      }

      v5 = 0;
    }
  }

  else
  {
    v10 = 0;
    v5 = [defaultManager createDirectoryAtPath:pathCopy withIntermediateDirectories:1 attributes:0 error:&v10];
    v6 = v10;
    if (v6)
    {
      v5 = 0;
    }

    if ((v5 & 1) == 0)
    {
      v7 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v13 = "[CSSiriSpeechRecorder _prepareDirectoryAtPath:]";
        v14 = 2112;
        v15 = pathCopy;
        v16 = 2112;
        v17 = v6;
        _os_log_error_impl(&dword_222E4D000, v7, OS_LOG_TYPE_ERROR, "%s Failed to create directory at path %@ due to error %@.", buf, 0x20u);
      }
    }
  }

  return v5;
}

- (BOOL)_checkAudioLoggingLimits:(id)limits
{
  v21 = *MEMORY[0x277D85DE8];
  limitsCopy = limits;
  mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
  limitedAudioLoggingEnabled = [mEMORY[0x277CEF368] limitedAudioLoggingEnabled];

  if (limitedAudioLoggingEnabled)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCAA00]);
    v7 = [v6 enumeratorAtPath:limitsCopy];
    nextObject = [v7 nextObject];
    if (nextObject)
    {
      v9 = nextObject;
      v10 = 0;
      do
      {
        v10 += [v9 hasSuffix:@"wav"];
        nextObject2 = [v7 nextObject];

        v9 = nextObject2;
      }

      while (nextObject2);
    }

    else
    {
      v10 = 0;
    }

    v12 = v10 < 0xA;
    v13 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v15 = 136315650;
      v16 = "[CSSiriSpeechRecorder _checkAudioLoggingLimits:]";
      v17 = 1024;
      v18 = v10;
      v19 = 1024;
      v20 = v10 < 0xA;
      _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s Checked audio logging limits, count = %d -> %d", &v15, 0x18u);
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (void)_playAudioAlert:(int64_t)alert
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a2);
  [(CSSiriSpeechRecorder *)self _updateAudioContextToPostVoiceForReason:v5];

  numberOfAVVCAlertPlaybacksByType = self->_numberOfAVVCAlertPlaybacksByType;
  if (numberOfAVVCAlertPlaybacksByType)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:alert];
    v8 = [(NSMutableDictionary *)numberOfAVVCAlertPlaybacksByType objectForKey:v7];
    numberOfAVVCAlertPlaybacksByType = [v8 unsignedIntegerValue];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
    v7 = self->_numberOfAVVCAlertPlaybacksByType;
    self->_numberOfAVVCAlertPlaybacksByType = v9;
  }

  v10 = self->_numberOfAVVCAlertPlaybacksByType;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:&numberOfAVVCAlertPlaybacksByType->super.super.isa + 1];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:alert];
  [(NSMutableDictionary *)v10 setObject:v11 forKey:v12];

  if (!numberOfAVVCAlertPlaybacksByType)
  {
    alertPlaybackGroup = self->_alertPlaybackGroup;
    if (!alertPlaybackGroup)
    {
      v14 = dispatch_group_create();
      v15 = self->_alertPlaybackGroup;
      self->_alertPlaybackGroup = v14;

      alertPlaybackGroup = self->_alertPlaybackGroup;
    }

    dispatch_group_enter(alertPlaybackGroup);
  }

  v16 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v17 = 136315394;
    v18 = "[CSSiriSpeechRecorder _playAudioAlert:]";
    v19 = 2048;
    alertCopy = alert;
    _os_log_impl(&dword_222E4D000, v16, OS_LOG_TYPE_INFO, "%s Playing alert %ld", &v17, 0x16u);
  }

  [(CSSpeechController *)self->_speechController playAlertSoundForType:alert];
}

- (BOOL)_shouldEmitInstrumentation
{
  turnIdentifier = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo turnIdentifier];
  v3 = turnIdentifier != 0;

  return v3;
}

- (void)_reportServerEndpointMetricsIfNeeded
{
  v3 = [(NSDictionary *)self->_speechRecognizedContextForServerEndpointInstrumentation objectForKey:@"endTime"];
  v4 = [(NSDictionary *)self->_speechRecognizedContextForServerEndpointInstrumentation objectForKey:@"leadingSilence"];
  v5 = [(NSDictionary *)self->_speechRecognizedContextForServerEndpointInstrumentation objectForKey:@"trailingSilence"];
  v6 = v5;
  if (self->_stopRecordingReason == 2 && v3 != 0 && v5 != 0)
  {
    firstBufferHostTime = self->_firstBufferHostTime;
    skippedSamplesTimeInSec = self->_skippedSamplesTimeInSec;
    stopRecordingMachContinuousTime = self->_stopRecordingMachContinuousTime;
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CSSiriSpeechRecorder__reportServerEndpointMetricsIfNeeded__block_invoke;
    block[3] = &unk_2784C6190;
    block[4] = self;
    v14 = v3;
    v15 = v4;
    v16 = v6;
    v17 = stopRecordingMachContinuousTime;
    v18 = skippedSamplesTimeInSec;
    v19 = firstBufferHostTime;
    dispatch_async(queue, block);
  }
}

uint64_t __60__CSSiriSpeechRecorder__reportServerEndpointMetricsIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 400);
  [*(a1 + 40) doubleValue];
  v4 = v3;
  [*(a1 + 48) doubleValue];
  v6 = v5;
  [*(a1 + 56) doubleValue];
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);

  return [v2 instrumentEndpointSignpostsForServerEndpointWithEndTime:v8 leadingSilence:v10 trailingSilence:v4 stopRecordingMachContinuousTime:v6 skippedSamplesTimeInSec:v7 firstAudioSampleSensorHostTime:v9];
}

- (void)_stopRecordingWithReason:(id)reason hostTime:(unint64_t)time
{
  v72 = *MEMORY[0x277D85DE8];
  var0 = reason.var0.var0;
  v8 = MEMORY[0x277CEF0E8];
  v9 = *MEMORY[0x277CEF0E8];
  v10 = os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO);
  if (var0 == 5)
  {
    if (v10)
    {
      v11 = v9;
      v12 = AFSpeechEventGetDescription();
      *buf = 136316162;
      v63 = "[CSSiriSpeechRecorder _stopRecordingWithReason:hostTime:]";
      v64 = 1024;
      v65 = 5;
      v66 = 2048;
      var1 = reason.var0.var1;
      v68 = 2112;
      v69 = v12;
      v70 = 2048;
      timeCopy = time;
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s reason = %d, speechEvent = %zd (%@), hostTime = %llu", buf, 0x30u);
    }
  }

  else if (v10)
  {
    *buf = 136315650;
    v63 = "[CSSiriSpeechRecorder _stopRecordingWithReason:hostTime:]";
    v64 = 1024;
    v65 = var0;
    v66 = 2048;
    var1 = time;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s reason = %d, hostTime = %llu", buf, 0x1Cu);
  }

  [(CSSiriSpeechRecordingContext *)self->_context willStopRecordingAtHostTime:time];
  recordingState = self->_recordingState;
  if ((recordingState - 1) >= 2)
  {
    if (recordingState != 3)
    {
LABEL_58:
      v56 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v63 = "[CSSiriSpeechRecorder _stopRecordingWithReason:hostTime:]";
        _os_log_error_impl(&dword_222E4D000, v56, OS_LOG_TYPE_ERROR, "%s Sending stop recording immediately because CSSpeechController isn't recording", buf, 0xCu);
      }

      [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingDidStopRecordingWithError:0 endpointMode:0 totalPacketCount:self->_packetCount endpointerMetrics:0];
      return;
    }

    v23 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v63 = "[CSSiriSpeechRecorder _stopRecordingWithReason:hostTime:]";
      _os_log_impl(&dword_222E4D000, v23, OS_LOG_TYPE_INFO, "%s Someone else has already asked to stop recording.", buf, 0xCu);
    }

    self->_didPerformTwoShotPrompt = 0;
  }

  else
  {
    speechController = self->_speechController;
    if (speechController)
    {
      v15 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
      [(CSEndpointDelayReporter *)self->_endpointDelayReporter setStopRecordingHostTime:mach_absolute_time()];
      endpointDelayReporter = self->_endpointDelayReporter;
      [(CSEndpointerMetrics *)self->_lastEndpointerMetrics totalAudioRecorded];
      [(CSEndpointDelayReporter *)endpointDelayReporter setEndpointTimeInMs:?];
      [(CSEndpointDelayReporter *)self->_endpointDelayReporter reportEndpointDelayIfNeed];
      mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __58__CSSiriSpeechRecorder__stopRecordingWithReason_hostTime___block_invoke;
      v60[3] = &__block_descriptor_36_e19___NSDictionary_8__0l;
      v61 = reason.var1;
      [mEMORY[0x277CEF158] logEventWithType:216 contextProvider:v60];

      mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
      [mEMORY[0x277D01738] logMHAssistantDaemonAudioStopRecordingContextWithMHUUID:v15 withStopRecordingStarted:1 withADStopRecordingEvent:reason.var0.var0];

      if ([(CSSiriSpeechRecorder *)self _shouldEmitInstrumentation])
      {
        v57 = v15;
        v19 = objc_alloc_init(MEMORY[0x277D5A7B8]);
        v20 = v19;
        v21 = speechController;
        if (reason.var0.var0 > 8u)
        {
          v22 = 0;
        }

        else
        {
          v22 = dword_222FB8598[reason.var0.var0 & 0xF];
        }

        [v19 setStopReasonMajor:{v22, v57}];
        v24 = (reason.var0.var1 - 1);
        if (v24 < 0xB)
        {
          v25 = v24 + 1;
        }

        else
        {
          v25 = 0;
        }

        [v20 setStopReasonMinor:v25];
        mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
        v27 = mach_absolute_time();
        turnIdentifier = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo turnIdentifier];
        [mEMORY[0x277CEF158]2 logInstrumentation:v20 machAbsoluteTime:v27 turnIdentifier:turnIdentifier];

        speechController = v21;
        v15 = v58;
      }

      if (AFIsInternalInstall())
      {
        v29 = *v8;
        v30 = os_signpost_id_generate(*v8);
        if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v31 = v30;
          if (os_signpost_enabled(v29))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_222E4D000, v29, OS_SIGNPOST_EVENT, v31, "SpeechRecorder", "StopRecording", buf, 2u);
          }
        }
      }

      kdebug_trace();
      v32 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v63 = "[CSSiriSpeechRecorder _stopRecordingWithReason:hostTime:]";
        _os_log_impl(&dword_222E4D000, v32, OS_LOG_TYPE_INFO, "%s Really stopping recording", buf, 0xCu);
      }

      v33 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v63 = "_ADSpeechRecorderGetCSStopRecordingReason";
        v64 = 1024;
        v65 = var0;
        _os_log_impl(&dword_222E4D000, v33, OS_LOG_TYPE_DEFAULT, "%s inReason.parts.event:%u", buf, 0x12u);
      }

      v34 = 0;
      if (reason.var0.var0 > 4u)
      {
        switch(reason.var0.var0)
        {
          case 5u:
            v34 = 2 * ((reason.var1 & 0xFFFF0000) == 327680);
            break;
          case 6u:
            v34 = 4;
            break;
          case 7u:
            v34 = 3;
            break;
        }
      }

      else if (reason.var0.var0 - 2 >= 2)
      {
        if (reason.var0.var0 == 4)
        {
          v34 = 2;
        }
      }

      else
      {
        v34 = 1;
      }

      self->_stopRecordingReason = v34;
      self->_stopRecordingMachContinuousTime = mach_continuous_time();
      if ([MEMORY[0x277D018F8] isContinuousConversationSupported] && self->_shouldDisableSpeechPacketGeneration)
      {
        v59 = speechController;
        _currentRecordRoute = [(CSSiriSpeechRecorder *)self _currentRecordRoute];
        _currentPlaybackRoute = [(CSSiriSpeechRecorder *)self _currentPlaybackRoute];
        _audioSessionID = [(CSSiriSpeechRecorder *)self _audioSessionID];
        v38 = +[CSAttSiriMagusSupportedPolicy sharedInstance];
        recordContext = [(CSSiriAudioActivationInfo *)self->_currentActivationInfo recordContext];
        _currentRecordDeviceInfo = [(CSSiriSpeechRecorder *)self _currentRecordDeviceInfo];
        v41 = [v38 isMagusSupportedWithAudioRecordContext:recordContext recordRoute:_currentRecordRoute playbackRoute:_currentPlaybackRoute audioSessionId:_audioSessionID recordDeviceInfo:_currentRecordDeviceInfo];

        if (v41)
        {
          v42 = *MEMORY[0x277D015D8];
          if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v63 = "[CSSiriSpeechRecorder _stopRecordingWithReason:hostTime:]";
            _os_log_impl(&dword_222E4D000, v42, OS_LOG_TYPE_DEFAULT, "%s Requesting audio stream hold until flexible followup pick up", buf, 0xCu);
          }

          v43 = [objc_alloc(MEMORY[0x277D01698]) initWithTimeout:5 clientIdentity:0 requireRecordModeLock:1 requireListeningMicIndicatorLock:1.0];
        }

        else
        {
          v43 = 0;
        }

        v8 = MEMORY[0x277CEF0E8];
        speechController = v59;
      }

      else
      {
        v41 = 0;
        v43 = 0;
      }

      v44 = objc_alloc(MEMORY[0x277D01680]);
      stopRecordingReason = self->_stopRecordingReason;
      [(CSEndpointerMetrics *)self->_lastEndpointerMetrics trailingSilenceDurationAtEndpoint];
      v46 = [v44 initWithStopRecordingReason:stopRecordingReason expectedStopHostTime:time trailingSilenceDurationAtEndpoint:v43 holdRequest:v41 supportsMagus:?];
      [(CSSpeechController *)self->_speechController stopRecordingWithOptions:v46];
      mEMORY[0x277CEF158]3 = [MEMORY[0x277CEF158] sharedAnalytics];
      [mEMORY[0x277CEF158]3 logEventWithType:217 context:0];

      mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
      [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioStopRecordingContextWithMHUUID:v15 withStopRecordingStarted:0 withADStopRecordingEvent:0];

      if (self->_stopRecordingReason == 2)
      {
        uUIDString = [v15 UUIDString];
        [CSEndpointLoggingHelper reportServerEndpointWithMhId:uUIDString];

        [(CSSiriSpeechRecorder *)self _reportServerEndpointMetricsIfNeeded];
      }

      v50 = MEMORY[0x277CEF098];
      v51 = os_signpost_id_generate(*MEMORY[0x277CEF098]);
      v52 = *v50;
      v53 = v52;
      if (v51 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_222E4D000, v53, OS_SIGNPOST_INTERVAL_BEGIN, v51, "UsefulUserFacingResults", "", buf, 2u);
      }

      [(CSSiriSpeechCapturingDelegate *)self->_delegate speechCapturingWillStopRecordingWithSignpostID:v51];
      [(CSSiriSpeechRecorder *)self _logFanState];

      recordingState = self->_recordingState;
    }

    if (recordingState == 1)
    {
      v54 = self->_speechController;
      v55 = [MEMORY[0x277CEF2A0] errorWithCode:216];
      [(CSSiriSpeechRecorder *)self _speechControllerDidStartRecording:v54 successfully:0 error:v55];
    }

    self->_recordingState = 3;
    if (!speechController)
    {
      goto LABEL_58;
    }
  }
}

id __58__CSSiriSpeechRecorder__stopRecordingWithReason_hostTime___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"reason";
  v1 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%d.%d", *(a1 + 32), *(a1 + 34)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

- (BOOL)_prepareSpeechControllerWithOptions:(unint64_t)options error:(id *)error
{
  errorCopy = error;
  v71[1] = *MEMORY[0x277D85DE8];
  if (error)
  {
    *error = 0;
  }

  pendingActivationInfo = self->_pendingActivationInfo;
  if (!pendingActivationInfo)
  {
    pendingActivationInfo = self->_currentActivationInfo;
  }

  v8 = pendingActivationInfo;
  v9 = MEMORY[0x277CEF0E8];
  if ((options & 4) == 0 || !CSIsMacMini() || ([(CSSiriAudioActivationInfo *)v8 deviceIdentifier], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    if (AFIsInternalInstall())
    {
      v11 = objc_alloc(MEMORY[0x277CEF530]);
      queue = self->_queue;
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __66__CSSiriSpeechRecorder__prepareSpeechControllerWithOptions_error___block_invoke;
      v60[3] = &unk_2784C6FD0;
      v61 = 0;
      v13 = [v11 initWithTimeoutInterval:queue onQueue:v60 timeoutHandler:6.0];
      [v13 start];
    }

    else
    {
      v13 = 0;
    }

    v70 = @"CSSpeechRecordSettingsKey_asrOnDevice";
    v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldDisableSpeechPacketGeneration];
    v71[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v16 = [(CSSiriAudioActivationInfo *)v8 recordSettingsWithOptions:options appendingSettings:v15];

    v17 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v63 = "[CSSiriSpeechRecorder _prepareSpeechControllerWithOptions:error:]";
      v64 = 2112;
      v65 = v16;
      _os_log_impl(&dword_222E4D000, v17, OS_LOG_TYPE_INFO, "%s Preparing CSSpeechController with settings %@", buf, 0x16u);
    }

    v59 = 0;
    v18 = [(CSSiriSpeechRecorder *)self _speechControllerWithError:&v59];
    v19 = v59;
    v55 = v16;
    if (!v18)
    {
      v25 = 0;
      v26 = @"since we have no Voice Controller!";
      if (!v13)
      {
LABEL_42:
        v45 = *v9;
        v46 = *v9;
        if (v25)
        {
          v47 = v55;
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v63 = "[CSSiriSpeechRecorder _prepareSpeechControllerWithOptions:error:]";
            _os_log_impl(&dword_222E4D000, v45, OS_LOG_TYPE_INFO, "%s Done preparing CSSpeechController", buf, 0xCu);
          }

          [v18 setSpeakerIdDelegate:self];
          [(CSSiriSpeechRecorder *)self _setLanguageDetectorDelegateIfRequired];
          [(CSAudioSessionController *)self->_audioSessionController registerObserver:self];
          if (!errorCopy)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v63 = "[CSSiriSpeechRecorder _prepareSpeechControllerWithOptions:error:]";
            v64 = 2114;
            v65 = v26;
            _os_log_error_impl(&dword_222E4D000, v45, OS_LOG_TYPE_ERROR, "%s Error setting up CSSpeechController %{public}@", buf, 0x16u);
          }

          [(CSSiriSpeechRecorder *)self _resetSpeechController];
          v47 = v55;
          if (!errorCopy)
          {
            goto LABEL_52;
          }
        }

        if (v19)
        {
          v48 = v19;
          *errorCopy = v19;
        }

LABEL_52:

        goto LABEL_53;
      }

LABEL_41:
      [v13 cancelIfNotAlreadyCanceled];

      goto LABEL_42;
    }

    v54 = errorCopy;
    v20 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:207 context:0];

    mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738] logMHAssistantDaemonAudioPrepareContextWithMHUUID:v20 withPrepareStarted:1];

    kdebug_trace();
    if (v8)
    {
      recordContext = [(CSSiriAudioActivationInfo *)v8 recordContext];
      isRequestDuringActiveCall = [recordContext isRequestDuringActiveCall];

      if (isRequestDuringActiveCall)
      {
        [(CSSiriSpeechRecorder *)self _setAudioContextWithInfo:v8 forReason:@"requestDuringActiveCall"];
      }
    }

    v58 = v19;
    v25 = [v18 prepareRecordWithSettings:v16 error:&v58];
    v26 = v58;

    if (v25)
    {
      [(CSSiriAudioActivationInfo *)self->_currentActivationInfo audioSessionActivated];
      v27 = 0;
      goto LABEL_40;
    }

    domain = [(__CFString *)v26 domain];
    v29 = *MEMORY[0x277CCA590];
    if ([domain isEqualToString:*MEMORY[0x277CCA590]])
    {
      if ([(__CFString *)v26 code]== -11795 || [(__CFString *)v26 code]== -11784 || [(__CFString *)v26 code]== 2)
      {
      }

      else
      {
        code = [(__CFString *)v26 code];

        if (code != 2003329396)
        {
LABEL_28:
          domain2 = [(__CFString *)v26 domain];
          if ([domain2 isEqualToString:v29])
          {
            code2 = [(__CFString *)v26 code];

            if (code2 != 561017449)
            {
LABEL_34:
              if (v8)
              {
                recordContext2 = [(CSSiriAudioActivationInfo *)v8 recordContext];
                isRequestDuringActiveCall2 = [recordContext2 isRequestDuringActiveCall];

                if (isRequestDuringActiveCall2)
                {
                  v38 = 236;
                }

                else
                {
                  v38 = 221;
                }
              }

              else
              {
                v38 = 221;
              }

              v27 = AFAddInterruptingAudioSessionInfoToAnalyticsContext();
              mEMORY[0x277D01708] = [MEMORY[0x277D01708] sharedInstance];
              [mEMORY[0x277D01708] submitAudioIssueReport:*MEMORY[0x277D01A38] withError:v26];

              v40 = [MEMORY[0x277CEF2A0] errorWithCode:v38 description:0 underlyingError:v26];

              v26 = v40;
LABEL_40:
              processInfo = [MEMORY[0x277CCAC38] processInfo];
              [processInfo systemUptime];
              self->_lastPrepareTimestamp = v42;

              kdebug_trace();
              mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
              [mEMORY[0x277CEF158]2 logEventWithType:208 context:v27];

              mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
              [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioPrepareContextWithMHUUID:v20 withPrepareStarted:0];

              v19 = v26;
              errorCopy = v54;
              v9 = MEMORY[0x277CEF0E8];
              if (!v13)
              {
                goto LABEL_42;
              }

              goto LABEL_41;
            }

            domain2 = +[CSMXSessionMonitor GetCurrentlyActiveSessionCategory];
            v33 = +[CSMXSessionMonitor GetCurrentlyActiveSessionMode];
            v34 = *MEMORY[0x277D015B0];
            if (os_log_type_enabled(*MEMORY[0x277D015B0], OS_LOG_TYPE_ERROR))
            {
              v52 = v34;
              code3 = [(__CFString *)v26 code];
              *buf = 136315906;
              v63 = "[CSSiriSpeechRecorder _prepareSpeechControllerWithOptions:error:]";
              v64 = 2048;
              v65 = code3;
              v66 = 2112;
              v67 = domain2;
              v68 = 2112;
              v69 = v33;
              _os_log_error_impl(&dword_222E4D000, v52, OS_LOG_TYPE_ERROR, "%s Failed to prepare with Insufficient Priority(%ld), because %@ with %@ is currently active.", buf, 0x2Au);
            }

            mEMORY[0x277D01738]3 = [MEMORY[0x277D01738] sharedLogger];
            [mEMORY[0x277D01738]3 logMHAssistantDaemonAudioSessionActivationFailedWithInsufficientPriority:v20 activeSessionDisplayIDs:0 audioSessionCategory:domain2 audioSessionMode:v33];
          }

          goto LABEL_34;
        }
      }

      mEMORY[0x277D016C8] = [MEMORY[0x277D016C8] sharedInstance];
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __66__CSSiriSpeechRecorder__prepareSpeechControllerWithOptions_error___block_invoke_63;
      v56[3] = &unk_2784C6130;
      v57 = v20;
      [mEMORY[0x277D016C8] getConnectedBluetoothDeviceAddressesWithCompletion:v56];

      domain = v57;
    }

    goto LABEL_28;
  }

  v50 = *v9;
  v25 = 0;
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v63 = "[CSSiriSpeechRecorder _prepareSpeechControllerWithOptions:error:]";
    _os_log_impl(&dword_222E4D000, v50, OS_LOG_TYPE_DEFAULT, "%s Skip prewarming on MacMini's mic, since it doesn't have built-in mic", buf, 0xCu);
    v25 = 0;
  }

LABEL_53:

  return v25;
}

uint64_t __66__CSSiriSpeechRecorder__prepareSpeechControllerWithOptions_error___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[CSSiriSpeechRecorder _prepareSpeechControllerWithOptions:error:]_block_invoke";
    _os_log_error_impl(&dword_222E4D000, v2, OS_LOG_TYPE_ERROR, "%s CSSpeechController prepare watchdog firing", &v4, 0xCu);
  }

  WriteStackshotReport_async();
  return [*(a1 + 32) cancel];
}

void __66__CSSiriSpeechRecorder__prepareSpeechControllerWithOptions_error___block_invoke_63(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      v6 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * v6);
        v8 = +[CSSiriBluetoothManager sharedInstance];
        v9 = [v8 deviceWithAddress:v7];

        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __66__CSSiriSpeechRecorder__prepareSpeechControllerWithOptions_error___block_invoke_2;
        v11[3] = &unk_2784C6108;
        v12 = *(a1 + 32);
        [v9 getDeviceInfo:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }
}

void __66__CSSiriSpeechRecorder__prepareSpeechControllerWithOptions_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 vendorID];
  v5 = [v3 productID];

  v11 = [MEMORY[0x277D01738] sharedLogger];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v4];
  v8 = [v7 stringValue];
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v5];
  v10 = [v9 stringValue];
  [v11 logMHAssistantDaemonAudioRecordingFailedWithMHUUID:v6 withReason:1 vendorId:v8 productId:v10];
}

- (id)_fingerprinter
{
  fingerprinter = self->_fingerprinter;
  if (!fingerprinter)
  {
    v4 = objc_alloc_init(CSSiriAcousticFingerprinter);
    v5 = self->_fingerprinter;
    self->_fingerprinter = v4;

    [(CSSiriAcousticFingerprinter *)self->_fingerprinter setDelegate:self];
    v6 = [(CSSiriSpeechRecorder *)self _speechController:0];
    v7 = v6;
    if (v6)
    {
      objc_msgSend_getLPCMAudioStreamBasicDescription(v6);
    }

    else
    {
      v10 = 0;
      memset(v9, 0, sizeof(v9));
    }

    [(CSSiriAcousticFingerprinter *)self->_fingerprinter setASBD:v9];
    fingerprinter = self->_fingerprinter;
  }

  return fingerprinter;
}

- (void)_resetSpeechController
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[CSSiriSpeechRecorder _resetSpeechController]";
    _os_log_impl(&dword_222E4D000, v3, OS_LOG_TYPE_INFO, "%s ", &v10, 0xCu);
  }

  self->_isSpeechControllerInitialized = 0;
  [(CSSpeechController *)self->_speechController setEndpointAnalyzerDelegate:0];
  [(CSSpeechController *)self->_speechController setDelegate:0];
  [(CSSpeechController *)self->_speechController setLanguageDetectorDelegate:0];
  [(CSSpeechController *)self->_speechController setSpeakerIdDelegate:0];
  [(CSSpeechController *)self->_speechController resetAudioSession];
  endpointAnalyzer = self->_endpointAnalyzer;
  self->_endpointAnalyzer = 0;

  self->_recordingAlertsConfiguration = 0;
  context = self->_context;
  v6 = [MEMORY[0x277CEF2A0] errorWithCode:227];
  [(CSSiriSpeechRecordingContext *)context didStopRecordingWithError:v6];

  v7 = self->_context;
  self->_context = 0;

  mhUUID = self->_mhUUID;
  self->_mhUUID = 0;

  _speechController = [(CSSiriSpeechRecorder *)self _speechController];
}

- (id)_speechControllerWithError:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  if (!self->_speechController)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CSSiriSpeechRecorder.m" lineNumber:567 description:@"Speech controller should not be nil."];
  }

  if (!self->_isSpeechControllerInitialized)
  {
    v4 = [(CSSiriSpeechRecorder *)self _currentMHUUID:0];
    pendingActivationInfo = self->_pendingActivationInfo;
    if (!pendingActivationInfo)
    {
      pendingActivationInfo = self->_currentActivationInfo;
    }

    v6 = pendingActivationInfo;
    recordContext = [(CSSiriAudioActivationInfo *)v6 recordContext];
    v8 = MEMORY[0x277CEF0E8];
    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v29 = 136315394;
      v30 = "[CSSiriSpeechRecorder _speechControllerWithError:]";
      v31 = 2112;
      v32 = recordContext;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Initalizing speech controller with context %@", &v29, 0x16u);
    }

    mEMORY[0x277CEF158] = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158] logEventWithType:201 context:0];

    mEMORY[0x277D01738] = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738] logMHAssistantDaemonAudioInitContextWithMHUUID:v4 withInitStarted:1];

    kdebug_trace();
    if ([(CSSpeechController *)self->_speechController initializeRecordSessionWithRecordContext:recordContext])
    {
      v12 = self->_pendingActivationInfo;
      self->_pendingActivationInfo = 0;

      objc_storeStrong(&self->_currentActivationInfo, pendingActivationInfo);
      v13 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
      {
        currentActivationInfo = self->_currentActivationInfo;
        v29 = 136315394;
        v30 = "[CSSiriSpeechRecorder _speechControllerWithError:]";
        v31 = 2112;
        v32 = currentActivationInfo;
        _os_log_impl(&dword_222E4D000, v13, OS_LOG_TYPE_INFO, "%s Set pending info as current %@.", &v29, 0x16u);
      }
    }

    endpointAnalyzer = [(CSSpeechController *)self->_speechController endpointAnalyzer];
    endpointAnalyzer = self->_endpointAnalyzer;
    self->_endpointAnalyzer = endpointAnalyzer;

    kdebug_trace();
    mEMORY[0x277CEF158]2 = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158]2 logEventWithType:202 context:0];

    mEMORY[0x277D01738]2 = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738]2 logMHAssistantDaemonAudioInitContextWithMHUUID:v4 withInitStarted:0];

    self->_isSpeechControllerInitialized = 1;
    mEMORY[0x277CEF158]3 = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158]3 logEventWithType:203 context:0];

    mEMORY[0x277D01738]3 = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738]3 logMHAssistantDaemonAudioConfigureContextWithMHUUID:v4 withConfigureStarted:1];

    kdebug_trace();
    [(CSSpeechController *)self->_speechController setMeteringEnabled:1];
    [(CSSpeechController *)self->_speechController setEndpointAnalyzerDelegate:self];
    [(CSSpeechController *)self->_speechController setDelegate:self];
    [(CSSpeechController *)self->_speechController setSpeakerIdDelegate:self];
    if (AFIsHorseman())
    {
      [(CSSpeechController *)self->_speechController setDuckOthersOption:1];
    }

    [(CSSiriSpeechRecorder *)self _updateRecordBufferDuration];
    kdebug_trace();
    mEMORY[0x277CEF158]4 = [MEMORY[0x277CEF158] sharedAnalytics];
    [mEMORY[0x277CEF158]4 logEventWithType:204 context:0];

    mEMORY[0x277D01738]4 = [MEMORY[0x277D01738] sharedLogger];
    [mEMORY[0x277D01738]4 logMHAssistantDaemonAudioConfigureContextWithMHUUID:v4 withConfigureStarted:0];

    v23 = +[CSAttSiriMagusSupportedPolicy sharedInstance];
    v24 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
    {
      v29 = 136315138;
      v30 = "[CSSiriSpeechRecorder _speechControllerWithError:]";
      _os_log_impl(&dword_222E4D000, v24, OS_LOG_TYPE_INFO, "%s Done initializing voice controller", &v29, 0xCu);
    }
  }

  speechController = self->_speechController;

  return speechController;
}

- (void)_updateRecordBufferDuration
{
  v14 = *MEMORY[0x277D85DE8];
  speechController = self->_speechController;
  if (speechController)
  {
    v4 = MEMORY[0x277CEF0E8];
    v5 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v10 = 136315394;
      v11 = "[CSSiriSpeechRecorder _updateRecordBufferDuration]";
      v12 = 2048;
      v13 = 0x3FA47AE147AE147BLL;
      _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s Trying to set record buffer duration to %lf", &v10, 0x16u);
      speechController = self->_speechController;
    }

    if (![(CSSpeechController *)speechController setRecordBufferDuration:0.04])
    {
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        v7 = self->_speechController;
        v8 = v6;
        [(CSSpeechController *)v7 getRecordBufferDuration];
        v10 = 136315394;
        v11 = "[CSSiriSpeechRecorder _updateRecordBufferDuration]";
        v12 = 2050;
        v13 = v9;
        _os_log_error_impl(&dword_222E4D000, v8, OS_LOG_TYPE_ERROR, "%s Failed setting record buffer duration. Duration is %{public}lf", &v10, 0x16u);
      }
    }
  }
}

void __42__CSSiriSpeechRecorder__setAlertsIfNeeded__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if ([a3 unsignedIntegerValue])
  {
    v4 = *(*(a1 + 32) + 456);

    dispatch_group_leave(v4);
  }
}

- (void)_setEndpointerOperationMode:(int64_t)mode forceUpdate:(BOOL)update
{
  updateCopy = update;
  v26 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CEF0E8];
  v8 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = AFSpeechEndpointerOperationModeGetName();
    v20 = 136315650;
    v21 = "[CSSiriSpeechRecorder _setEndpointerOperationMode:forceUpdate:]";
    v22 = 2112;
    v23 = v10;
    v24 = 1024;
    LODWORD(v25) = updateCopy;
    _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s endpointerOperationMode = %@, forceUpdate = %d", &v20, 0x1Cu);
  }

  if (mode || updateCopy)
  {
    endpointerOperationMode = self->_endpointerOperationMode;
    if (mode < 2 || endpointerOperationMode != 1 || updateCopy)
    {
      if (endpointerOperationMode != mode || updateCopy)
      {
        self->_endpointerOperationMode = mode;
        _speechController = [(CSSiriSpeechRecorder *)self _speechController];
        [_speechController setEndpointerOperationMode:self->_endpointerOperationMode];
        v18 = (mode < 5) & (0x19u >> mode);
        v19 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
        {
          v20 = 136315394;
          v21 = "[CSSiriSpeechRecorder _setEndpointerOperationMode:forceUpdate:]";
          v22 = 1024;
          LODWORD(v23) = v18;
          _os_log_impl(&dword_222E4D000, v19, OS_LOG_TYPE_INFO, "%s Set Use Automatic Endpointing %d", &v20, 0x12u);
        }

        if (v18 && self->_didDetectEndpoint && self->_recordingState == 2)
        {
          [(CSSiriSpeechRecorder *)self _stopRecordingForEndpointReason:3 withEndpointMetrics:0];
        }
      }
    }

    else
    {
      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
      {
        v14 = v13;
        v15 = AFSpeechEndpointerOperationModeGetName();
        v16 = AFSpeechEndpointerOperationModeGetName();
        v20 = 136315650;
        v21 = "[CSSiriSpeechRecorder _setEndpointerOperationMode:forceUpdate:]";
        v22 = 2112;
        v23 = v15;
        v24 = 2112;
        v25 = v16;
        _os_log_error_impl(&dword_222E4D000, v14, OS_LOG_TYPE_ERROR, "%s Ignored because endpointer operation mode can not be changed from %@ to %@.", &v20, 0x20u);
      }
    }
  }

  else
  {
    v11 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
    {
      v20 = 136315138;
      v21 = "[CSSiriSpeechRecorder _setEndpointerOperationMode:forceUpdate:]";
      _os_log_impl(&dword_222E4D000, v11, OS_LOG_TYPE_INFO, "%s Ignored because endpointer operation mode is unspecified.", &v20, 0xCu);
    }
  }
}

- (void)_setSpeechCapturingMode:(int64_t)mode
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[CSSiriSpeechRecorder _setSpeechCapturingMode:]";
    v9 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_222E4D000, v5, OS_LOG_TYPE_INFO, "%s mode = %ld", &v7, 0x16u);
  }

  if (self->_speechCapturingMode != mode)
  {
    self->_speechCapturingMode = mode;
    v6 = 104;
    if (!self->_recordingState)
    {
      v6 = 96;
    }

    [*(&self->super.isa + v6) setSpeechRecordingMode:mode];
  }
}

- (id)_mhUUIDFromSpeechRequestOptions:(id)options
{
  v21 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v4 = optionsCopy;
  if (optionsCopy)
  {
    voiceTriggerEventInfo = [optionsCopy voiceTriggerEventInfo];
    v6 = voiceTriggerEventInfo;
    if (voiceTriggerEventInfo)
    {
      v7 = [voiceTriggerEventInfo objectForKey:*MEMORY[0x277D01CC8]];
      if (v7)
      {
        v8 = v7;
        continuousConversationInfo2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v7];
LABEL_12:

        goto LABEL_14;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = MEMORY[0x277CEF0E8];
  v11 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    continuousConversationInfo = [v4 continuousConversationInfo];
    v17 = 136315394;
    v18 = "[CSSiriSpeechRecorder _mhUUIDFromSpeechRequestOptions:]";
    v19 = 2112;
    v20 = continuousConversationInfo;
    _os_log_impl(&dword_222E4D000, v12, OS_LOG_TYPE_INFO, "%s continuousConversationInfo :%@", &v17, 0x16u);
  }

  if ([v4 activationEvent] == 30)
  {
    continuousConversationInfo2 = [v4 continuousConversationInfo];

    if (!continuousConversationInfo2)
    {
      goto LABEL_14;
    }

    continuousConversationInfo3 = [v4 continuousConversationInfo];
    v8 = [continuousConversationInfo3 objectForKeyedSubscript:@"requestMHUUID"];

    continuousConversationInfo2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v8];
    v15 = *v10;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v17 = 136315394;
      v18 = "[CSSiriSpeechRecorder _mhUUIDFromSpeechRequestOptions:]";
      v19 = 2112;
      v20 = continuousConversationInfo2;
      _os_log_impl(&dword_222E4D000, v15, OS_LOG_TYPE_INFO, "%s requestMHUUID:%@", &v17, 0x16u);
    }

    goto LABEL_12;
  }

  continuousConversationInfo2 = 0;
LABEL_14:

  return continuousConversationInfo2;
}

- (id)_currentMHUUID:(BOOL)d
{
  v19 = *MEMORY[0x277D85DE8];
  mhUUID = self->_mhUUID;
  if (mhUUID)
  {
    v5 = !d;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    dCopy = d;
    uUID = [MEMORY[0x277CCAD78] UUID];
    v8 = self->_mhUUID;
    self->_mhUUID = uUID;

    v9 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      v11 = self->_mhUUID;
      v14 = "[CSSiriSpeechRecorder _currentMHUUID:]";
      v13 = 136315650;
      v15 = 2112;
      if (dCopy)
      {
        v10 = @"YES";
      }

      v16 = v11;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_222E4D000, v9, OS_LOG_TYPE_INFO, "%s Assign new MHUUID here to %@ (force = %@)", &v13, 0x20u);
    }

    mhUUID = self->_mhUUID;
  }

  return mhUUID;
}

- (void)dealloc
{
  decoder = self->_decoder;
  if (decoder)
  {
    AudioConverterDispose(decoder);
    self->_decoder = 0;
  }

  [(NSXPCConnection *)self->_speechRecordingEventListenerConnection invalidate];
  [(AFWatchdogTimer *)self->_fakeTwoShotTTSPromptWatchdogTimer cancel];
  v4.receiver = self;
  v4.super_class = CSSiriSpeechRecorder;
  [(CSSiriSpeechRecorder *)&v4 dealloc];
}

- (CSSiriSpeechRecorder)initWithQueue:(id)queue speechController:(id)controller audioSessionController:(id)sessionController audioPlaybackService:(id)service experimentContext:(id)context
{
  v36 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  controllerCopy = controller;
  sessionControllerCopy = sessionController;
  serviceCopy = service;
  contextCopy = context;
  if (controllerCopy)
  {
    if (sessionControllerCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CSSiriSpeechRecorder.m" lineNumber:347 description:{@"Invalid parameter not satisfying: %@", @"audioSessionController != nil"}];

    if (serviceCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"CSSiriSpeechRecorder.m" lineNumber:346 description:{@"Invalid parameter not satisfying: %@", @"speechController != nil"}];

  if (!sessionControllerCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (serviceCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"CSSiriSpeechRecorder.m" lineNumber:348 description:{@"Invalid parameter not satisfying: %@", @"audioPlaybackService != nil"}];

LABEL_4:
  v31.receiver = self;
  v31.super_class = CSSiriSpeechRecorder;
  v17 = [(CSSiriSpeechRecorder *)&v31 init];
  v18 = v17;
  if (v17)
  {
    v17->_isSpeechControllerInitialized = 0;
    objc_storeStrong(&v17->_speechController, controller);
    objc_storeStrong(&v18->_audioSessionController, sessionController);
    objc_storeStrong(&v18->_audioPlaybackService, service);
    objc_storeStrong(&v18->_experimentContext, context);
    v19 = [[CSSiriAudioActivationInfo alloc] initWithSpeechRecordingMode:v18->_speechCapturingMode clientConfiguration:0 experimentContext:v18->_experimentContext];
    currentActivationInfo = v18->_currentActivationInfo;
    v18->_currentActivationInfo = v19;

    v21 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v22 = v18->_currentActivationInfo;
      *buf = 136315394;
      v33 = "[CSSiriSpeechRecorder initWithQueue:speechController:audioSessionController:audioPlaybackService:experimentContext:]";
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_222E4D000, v21, OS_LOG_TYPE_INFO, "%s Set initial info as current %@.", buf, 0x16u);
    }

    objc_storeStrong(&v18->_queue, queue);
    v23 = dispatch_group_create();
    recordingWillStartGroup = v18->_recordingWillStartGroup;
    v18->_recordingWillStartGroup = v23;
  }

  return v18;
}

@end