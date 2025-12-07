@interface AFMyriadCoordinator
+ (void)clearCurrentCoordinator;
+ (void)didChangeDefaults;
- (AFMyriadCoordinator)initWithDelegate:(id)delegate;
- (BOOL)_deviceShouldContinue:(id)continue;
- (BOOL)_inTaskTriggerWasTooSoon;
- (BOOL)_shouldContinueFor:(id)for;
- (BOOL)_shouldHandleEmergency;
- (BOOL)_testAndUpdateWedgeFilter:(id)filter;
- (BOOL)inTask;
- (id)_endAdvertisingAnalyticsContext:(BOOL)context;
- (id)_phsSetupRecord;
- (id)_sortedReplies:(id)replies;
- (id)_stateAsString:(unint64_t)string;
- (id)_testAndFilterAdvertisementsFromContextCollector:(id)collector voiceTriggerEndTime:(double)time advertisementDispatchTime:(double)dispatchTime advertisement:(id)advertisement;
- (id)_triggerTypeForArbitrationParticipationFrom:(int64_t)from;
- (id)continuationRecord;
- (id)directTriggerRecord;
- (id)emergencyHandledRecord;
- (id)emergencyRecord;
- (id)emptyRecord;
- (id)lateSuppressionRecord;
- (id)responseObject:(unsigned __int16)object;
- (id)slowdownRecord:(unsigned __int16)record;
- (id)voiceTriggerRecord;
- (int)_myriadStateForSelf:(unint64_t)self;
- (unint64_t)_nextElectionPublisherState;
- (void)_addElectionAdvertisementDataToMyriadSession:(id)session;
- (void)_adjustActionWindowsFromSlowdown:(int)slowdown;
- (void)_advertise:(id)_advertise afterDelay:(float)delay maxInterval:(float)interval andMoveTo:(unint64_t)to;
- (void)_advertiseIndefinite:(id)indefinite;
- (void)_advertiseSlowdown;
- (void)_advertiseSuppressTriggerInOutput;
- (void)_advertiseTrigger;
- (void)_advertiseWith:(id)with afterDelay:(float)delay maxInterval:(float)interval thenExecute:(id)execute;
- (void)_ageWedgeFilter;
- (void)_cancelOverallTimeout;
- (void)_cancelTimer;
- (void)_clearMyriadSession;
- (void)_clearWiProxReadinessTimer;
- (void)_createDispatchTimerFor:(double)for toExecute:(id)execute;
- (void)_createDispatchTimerForEvent:(id)event toExecute:(id)execute;
- (void)_createDispatchTimerWithTime:(unint64_t)time toExecute:(id)execute;
- (void)_createMyriadSessionIfRequired;
- (void)_createWaitWiProxTimer:(int64_t)timer waitBlock:(id)block;
- (void)_duringNextWindowEnterState:(unint64_t)state;
- (void)_duringNextWindowExecute:(id)execute;
- (void)_endAdvertising:(id)advertising;
- (void)_endAdvertisingWithDeviceProhibitions:(id)prohibitions;
- (void)_enterBLEDiagnosticMode;
- (void)_enterState:(unint64_t)state;
- (void)_enteringIntoState:(unint64_t)state fromState:(unint64_t)fromState;
- (void)_forceLocalWinner:(id)winner;
- (void)_handleStateMachineErrorIfNeeded;
- (void)_initDeviceClassAndAdjustments;
- (void)_initializeTimer;
- (void)_initializeWiProxReadinessTimer;
- (void)_leaveBLEDiagnosticMode;
- (void)_loseElection;
- (void)_pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:(double)interval advertisementDelay:(double)delay;
- (void)_readDefaults;
- (void)_resetActionWindows;
- (void)_resetAdvertisementTimings;
- (void)_setMyriadContext:(id)context;
- (void)_setOverallTimeout;
- (void)_setupActionWindows;
- (void)_signalEmergencyCallHandled;
- (void)_startAdvertising:(id)advertising afterDelay:(float)delay maxInterval:(float)interval;
- (void)_startAdvertisingFromInTaskVoiceTrigger;
- (void)_startAdvertisingFromVoiceTrigger;
- (void)_startListening:(id)listening;
- (void)_startListeningAfterWiProxIsReady:(BOOL)ready inState:(unint64_t)state completion:(id)completion;
- (void)_startTimer:(id)timer for:(float)for thenEnterState:(unint64_t)state;
- (void)_startTimer:(id)timer for:(float)for thenExecute:(id)execute;
- (void)_stopAdvertising:(id)advertising;
- (void)_stopAdvertisingAndListening;
- (void)_stopListening:(id)listening;
- (void)_suppressDeviceIfNeededWithVoiceTriggerEndTime:(double)time adverisementDispatchTime:(double)dispatchTime;
- (void)_suspendWiProxReadinessTimer;
- (void)_trackHeySiriStartedAdvertisingAt:(unint64_t)at;
- (void)_triggerABCForType:(id)type context:(id)context;
- (void)_unduck;
- (void)_updateArbitrationParticipationContextWithCompletion:(id)completion;
- (void)_updateRepliesWith:(id)with id:(id)id data:(id)data;
- (void)_updateVoiceTriggerTimeFromFile;
- (void)_waitWiProx:(int64_t)prox andExecute:(id)execute;
- (void)_winElection;
- (void)advertiseWith:(id)with;
- (void)advertiseWith:(id)with afterDelay:(float)delay maxInterval:(float)interval;
- (void)dealloc;
- (void)endAdvertising:(id)advertising;
- (void)endAdvertisingAfterDelay:(float)delay;
- (void)endAdvertisingWithDeviceProhibitions:(id)prohibitions;
- (void)endTask;
- (void)enterState:(unint64_t)state;
- (void)faceDetectedBoostWithMyriadContext:(id)context;
- (void)heySiri:(id)siri failedToStartAdvertisingWithError:(id)error;
- (void)heySiri:(id)siri failedToStartScanningWithError:(id)error;
- (void)heySiri:(id)siri foundDevice:(id)device withInfo:(id)info;
- (void)heySiriAdvertisingPending:(id)pending;
- (void)heySiriDidUpdateState:(id)state;
- (void)heySiriStartedAdvertising:(id)advertising;
- (void)heySiriStartedAdvertisingAt:(id)at timeStamp:(unint64_t)stamp;
- (void)heySiriStartedScanning:(id)scanning;
- (void)heySiriStoppedAdvertising:(id)advertising;
- (void)heySiriStoppedScanning:(id)scanning;
- (void)injectAdvertisementForTesting:(id)testing forDevice:(id)device;
- (void)instrumentationUpdateBoost:(unsigned __int8)boost value:(unsigned int)value;
- (void)myriadSession:(id)session;
- (void)notifyCurrentDecisionResult;
- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token;
- (void)preheatWiProx;
- (void)readDefaults;
- (void)requestWillPresentUsefulUserResult;
- (void)resetMyriadCoordinator:(id)coordinator;
- (void)resetReplies;
- (void)setCurrentRequestId:(id)id;
- (void)setInTask:(BOOL)task;
- (void)setupAdvIntervalsInDelay:(float *)delay interval:(float *)interval withSlowdown:(int)slowdown;
- (void)setupEnabled:(BOOL)enabled;
- (void)startAdvertising:(id)advertising afterDelay:(float)delay maxInterval:(float)interval;
- (void)startAdvertisingEmergency;
- (void)startAdvertisingEmergencyHandled;
- (void)startAdvertisingEmergencySignal;
- (void)startAdvertisingForPHSSetupAfterDelay:(float)delay maxInterval:(float)interval;
- (void)startAdvertisingFromAlertFiringVoiceTriggerWithContext:(id)context;
- (void)startAdvertisingFromCarPlayTrigger;
- (void)startAdvertisingFromDirectTriggerWithContext:(id)context;
- (void)startAdvertisingFromInEarTrigger;
- (void)startAdvertisingFromInTaskVoiceTriggerWithContext:(id)context;
- (void)startAdvertisingFromOutgoingTriggerWithContext:(id)context;
- (void)startAdvertisingFromVoiceTriggerAdjusted:(char)adjusted withContext:(id)context;
- (void)startAdvertisingFromVoiceTriggerWithContext:(id)context;
- (void)startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:(id)context withContext:(id)withContext;
- (void)startAdvertisingSlowdown:(unsigned __int16)slowdown;
- (void)startListening;
- (void)startListening:(id)listening;
- (void)startListeningToEmergencySignal;
- (void)startResponseAdvertising:(unsigned __int16)advertising;
- (void)startWatchAdvertisingFromDirectTriggerWithContext:(id)context;
- (void)startWatchAdvertisingFromVoiceTriggerWithContext:(id)context;
- (void)stopListening;
- (void)stopListening:(id)listening;
- (void)updateRequestId:(id)id;
- (void)waitWiProx:(int64_t)prox andExecute:(id)execute;
@end

@implementation AFMyriadCoordinator

- (void)resetMyriadCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__AFMyriadCoordinator_resetMyriadCoordinator___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = coordinatorCopy;
  v6 = coordinatorCopy;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __46__AFMyriadCoordinator_resetMyriadCoordinator___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _enterState:0];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)myriadSession:(id)session
{
  if (session)
  {
    (*(session + 2))(session, self->_myriadSession);
  }
}

- (void)startAdvertisingEmergencySignal
{
  [(AFMyriadCoordinator *)self _setupActionWindows];

  [(AFMyriadCoordinator *)self _enterState:8];
}

- (void)startListeningToEmergencySignal
{
  [(AFMyriadCoordinator *)self _setupActionWindows];

  [(AFMyriadCoordinator *)self _enterState:7];
}

- (void)injectAdvertisementForTesting:(id)testing forDevice:(id)device
{
  v13[1] = *MEMORY[0x1E69E9840];
  testingCopy = testing;
  deviceCopy = device;
  v8 = deviceCopy;
  if (testingCopy && deviceCopy)
  {
    v9 = getWPHeySiriKeyManufacturerData();
    v10 = v9;
    if (v9)
    {
      v12 = v9;
      v13[0] = testingCopy;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [(AFMyriadCoordinator *)self heySiri:self->_heySiriBTLE foundDevice:v8 withInfo:v11];
    }
  }
}

- (void)notifyObserver:(id)observer didReceiveNotificationWithToken:(int)token
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  v7 = AFSiriLogContextMyriad;
  if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    name = [(AFNotifyObserver *)observerCopy name];
    v10 = 136315650;
    v11 = "[AFMyriadCoordinator notifyObserver:didReceiveNotificationWithToken:]";
    v12 = 2112;
    v13 = name;
    v14 = 1024;
    tokenCopy = token;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEFAULT, "%s Notification received: %@ (%d)", &v10, 0x1Cu);
  }

  if (self->_preferencesChangedNotification == observerCopy)
  {
    [(AFMyriadCoordinator *)self _readDefaults];
  }

  else if (self->_myriadStateMachineForceNoActivityObserver == observerCopy)
  {
    if (AFIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    }

    if (AFIsInternalInstall_isInternal == 1)
    {
      [(AFMyriadCoordinator *)self _enterState:0];
    }
  }
}

- (void)_signalEmergencyCallHandled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[AFMyriadCoordinator _signalEmergencyCallHandled]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v7, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 myriadCoordinatorDidHandleEmergency:self];
  }
}

- (void)heySiri:(id)siri failedToStartScanningWithError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  kdebug_trace();
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "[AFMyriadCoordinator heySiri:failedToStartScanningWithError:]";
    v9 = 2112;
    v10 = errorCopy;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s BTLE daemon failed to start scanning with error %@", &v7, 0x16u);
  }

  [(AFMyriadCoordinator *)self _leaveBLEDiagnosticMode];
}

- (void)heySiriStoppedScanning:(id)scanning
{
  v11 = *MEMORY[0x1E69E9840];
  scanningCopy = scanning;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[AFMyriadCoordinator heySiriStoppedScanning:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s BTLE daemon scanning ends", &v9, 0xCu);
  }

  [(AFMyriadCoordinator *)self _leaveBLEDiagnosticMode];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 myriadCoordinatorBTLEDidEndScanning:self];
  }
}

- (void)heySiriStartedScanning:(id)scanning
{
  v11 = *MEMORY[0x1E69E9840];
  scanningCopy = scanning;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[AFMyriadCoordinator heySiriStartedScanning:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s BTLE daemon scanning begins", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained(&self->_delegate);
    [v8 myriadCoordinatorBTLEDidStartScanning:self];
  }
}

- (void)heySiri:(id)siri failedToStartAdvertisingWithError:(id)error
{
  v10 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315394;
    v7 = "[AFMyriadCoordinator heySiri:failedToStartAdvertisingWithError:]";
    v8 = 2112;
    v9 = errorCopy;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s BTLE daemon failed to start advertising with error %@", &v6, 0x16u);
  }
}

- (void)heySiriStoppedAdvertising:(id)advertising
{
  v21[1] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (self->_myriadState != 5)
  {
    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v4 = +[AFAnalytics sharedAnalytics];
      v20 = @"state";
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_myriadState];
      v21[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [v4 logEventWithType:2005 context:v6];
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      myriadInstrumentation = self->_myriadInstrumentation;
      v8 = [(AFMyriadCoordinator *)self _myriadStateForSelf:self->_myriadState];
      sessionId = [(AFMyriadSession *)self->_myriadSession sessionId];
      [(AFMyriadInstrumentation *)myriadInstrumentation logCDAElectionAdvertisingEnded:v8 withCdaId:sessionId withTimestamp:mach_absolute_time()];
    }
  }

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = v10;
    v12 = mach_absolute_time();
    *buf = 136315394;
    v17 = "[AFMyriadCoordinator heySiriStoppedAdvertising:]";
    v18 = 2048;
    Milliseconds = AFMachAbsoluteTimeGetMilliseconds(v12);
    _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s BTLE daemon advertising ends at: %lld", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = objc_loadWeakRetained(&self->_delegate);
    [v15 myriadCoordinatorBTLEDidEndAdvertising:self];
  }
}

- (void)heySiriAdvertisingPending:(id)pending
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFMyriadCoordinator heySiriAdvertisingPending:]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE daemon advertising overridden and now pending", &v4, 0xCu);
  }
}

- (void)_trackHeySiriStartedAdvertisingAt:(unint64_t)at
{
  v15[1] = *MEMORY[0x1E69E9840];
  kdebug_trace();
  if (self->_myriadState != 5)
  {
    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v5 = +[AFAnalytics sharedAnalytics];
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_myriadState, @"state"];
      v15[0] = v6;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      [v5 logEventWithType:2003 context:v7];
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      myriadInstrumentation = self->_myriadInstrumentation;
      v9 = [(AFMyriadCoordinator *)self _myriadStateForSelf:self->_myriadState];
      sessionId = [(AFMyriadSession *)self->_myriadSession sessionId];
      [(AFMyriadInstrumentation *)myriadInstrumentation logCDAElectionAdvertisingStarted:v9 withCdaId:sessionId withTimestamp:at];
    }
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = objc_loadWeakRetained(&self->_delegate);
    [v13 myriadCoordinatorBTLEDidStartAdvertising:self];
  }
}

- (void)heySiriStartedAdvertising:(id)advertising
{
  v12 = *MEMORY[0x1E69E9840];
  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if (AFIsHorseman_isHorseman == 1)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[AFMyriadCoordinator heySiriStartedAdvertising:]";
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s No longer used by this device.", &v8, 0xCu);
    }
  }

  else
  {
    v5 = mach_absolute_time();
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = 136315394;
      v9 = "[AFMyriadCoordinator heySiriStartedAdvertising:]";
      v10 = 2048;
      Milliseconds = AFMachAbsoluteTimeGetMilliseconds(v5);
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s BTLE daemon advertising begins at: %lld", &v8, 0x16u);
    }

    [(AFMyriadCoordinator *)self _trackHeySiriStartedAdvertisingAt:v5];
  }
}

- (void)heySiriStartedAdvertisingAt:(id)at timeStamp:(unint64_t)stamp
{
  v14 = *MEMORY[0x1E69E9840];
  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  v6 = AFIsHorseman_isHorseman;
  v7 = AFSiriLogContextConnection;
  v8 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      v10 = 136315394;
      v11 = "[AFMyriadCoordinator heySiriStartedAdvertisingAt:timeStamp:]";
      v12 = 2048;
      Milliseconds = AFMachAbsoluteTimeGetMilliseconds(stamp);
      _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s BTLE daemon advertising begins at: %lld", &v10, 0x16u);
    }

    [(AFMyriadCoordinator *)self _trackHeySiriStartedAdvertisingAt:stamp];
  }

  else if (v8)
  {
    v10 = 136315138;
    v11 = "[AFMyriadCoordinator heySiriStartedAdvertisingAt:timeStamp:]";
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s Not yet supported on this device.", &v10, 0xCu);
  }
}

- (void)heySiri:(id)siri foundDevice:(id)device withInfo:(id)info
{
  v34 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  infoCopy = info;
  v9 = getWPHeySiriKeyManufacturerData();
  if (v9)
  {
    v10 = [infoCopy objectForKey:v9];
  }

  else
  {
    v10 = 0;
  }

  v11 = [[AFMyriadRecord alloc] initWithDeviceID:deviceCopy data:v10];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 myriadCoordinator:self didReceiveAdvertisement:v11];
  }

  if ([(AFMyriadRecord *)v11 deviceGroup]== self->_deviceGroup)
  {
    deviceID = [(AFMyriadRecord *)v11 deviceID];
    uUIDString = [deviceID UUIDString];

    myriadWorkQueue = self->_myriadWorkQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__AFMyriadCoordinator_heySiri_foundDevice_withInfo___block_invoke;
    block[3] = &unk_1E7346F10;
    v21 = v11;
    selfCopy = self;
    v23 = deviceCopy;
    v24 = v10;
    v25 = uUIDString;
    v18 = uUIDString;
    dispatch_async(myriadWorkQueue, block);

LABEL_10:
    goto LABEL_11;
  }

  v19 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v18 = v19;
    *buf = 136315906;
    v27 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]";
    v28 = 1024;
    deviceGroup = [(AFMyriadRecord *)v11 deviceGroup];
    v30 = 2112;
    v31 = deviceCopy;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_1912FE000, v18, OS_LOG_TYPE_INFO, "%s BTLE ignoring advert from other deviceGroup %d: %@ data= %@", buf, 0x26u);
    goto LABEL_10;
  }

LABEL_11:
}

void __52__AFMyriadCoordinator_heySiri_foundDevice_withInfo___block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) pHash];
  v3 = *(a1 + 40);
  v4 = *(v3 + 40);
  v5 = [*(v3 + 360) UUIDString];
  v6 = [v4 valueForKey:v5];
  v7 = [v6 pHash];
  if (v7 == v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    v9 = v7 ^ v2;
    do
    {
      ++v8;
      v9 &= v9 - 1;
    }

    while (v9);
  }

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 48);
    v12 = *(*(a1 + 40) + 8);
    v13 = *(a1 + 56);
    *buf = 136315906;
    v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
    v67 = 2048;
    v68 = v12;
    v69 = 2112;
    v70 = v11;
    v71 = 2112;
    v72 = v13;
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s BTLE processing advert in state: %lu from: %@ data= %@", buf, 0x2Au);
  }

  v14 = *(a1 + 40);
  switch(v14[1])
  {
    case 0:
    case 3:
    case 4:
    case 6:
    case 9:
    case 0xBLL:
    case 0xDLL:
    case 0x10:
      v15 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v16 = v15;
        v17 = [v14 _stateAsString];
        v18 = *(a1 + 48);
        v19 = *(a1 + 56);
        *buf = 136315906;
        v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v67 = 2112;
        v68 = v17;
        v69 = 2112;
        v70 = v18;
        v71 = 2112;
        v72 = v19;
        _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s BTLE ignoring advert while in state %@: %@ data= %@", buf, 0x2Au);
      }

      return;
    case 1:
    case 0xELL:
    case 0xFLL:
      if (![*(a1 + 40) _testAndUpdateWedgeFilter:*(a1 + 32)])
      {
        return;
      }

      v20 = [*(*(a1 + 40) + 40) objectForKey:*(a1 + 64)];

      if (v20)
      {
        v21 = *(*(a1 + 40) + 48);
        v22 = MEMORY[0x1E696AD98];
        v23 = [v21 objectForKey:*(a1 + 64)];
        v24 = [v22 numberWithInteger:{objc_msgSend(v23, "integerValue") + 1}];
        [v21 setObject:v24 forKey:*(a1 + 64)];
      }

      else
      {
        v42 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v43 = *(a1 + 48);
          v44 = *(a1 + 56);
          *buf = 136315650;
          v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
          v67 = 2112;
          v68 = v43;
          v69 = 2112;
          v70 = v44;
          _os_log_impl(&dword_1912FE000, v42, OS_LOG_TYPE_INFO, "%s BTLE heard advert from: %@ data= %@", buf, 0x20u);
        }

        v45 = *(*(a1 + 40) + 48);
        v23 = [MEMORY[0x1E696AD98] numberWithInteger:1];
        [v45 setObject:v23 forKey:*(a1 + 64)];
      }

      if (![*(a1 + 32) isSlowdown])
      {
        goto LABEL_47;
      }

      v46 = *(a1 + 40);
      v47 = *(v46 + 304);
      if (!v47)
      {
        goto LABEL_43;
      }

      v48 = [v47 slowdownDelay];
      if (v48 < [*(a1 + 32) slowdownDelay])
      {
        v46 = *(a1 + 40);
LABEL_43:
        objc_storeStrong((v46 + 304), *(a1 + 32));
        *(*(a1 + 40) + 327) = 1;
        v49 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v51 = *(a1 + 48);
          v50 = *(a1 + 56);
          v52 = *(*(a1 + 40) + 304);
          v53 = v49;
          v54 = [v52 slowdownDelay];
          *buf = 136315906;
          v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
          v67 = 2112;
          v68 = v51;
          v69 = 2112;
          v70 = v50;
          v71 = 1024;
          LODWORD(v72) = v54;
          _os_log_impl(&dword_1912FE000, v53, OS_LOG_TYPE_INFO, "%s BTLE heard slowdown advert from: %@ data= %@, max delay is now %d msecs", buf, 0x26u);
        }

        kdebug_trace();
        if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
        {
          v55 = +[AFAnalytics sharedAnalytics];
          v63[0] = @"delay";
          v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(*(a1 + 32), "slowdownDelay")];
          v63[1] = @"max";
          v64[0] = v56;
          v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(*(*(a1 + 40) + 304), "slowdownDelay")];
          v64[1] = v57;
          v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:2];
          [v55 logEventWithType:2008 context:v58];
        }
      }

LABEL_47:
      if (v8 <= 16)
      {
        *(*(a1 + 40) + 592) = mach_absolute_time();
        goto LABEL_54;
      }

      v59 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v67 = 1024;
        LODWORD(v68) = v8;
        _os_log_impl(&dword_1912FE000, v59, OS_LOG_TYPE_INFO, "%s BTLE editDist: %d > allowed, ignoring this advert ", buf, 0x12u);
      }

      return;
    case 2:
      v32 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v33 = *(a1 + 48);
        v34 = *(a1 + 56);
        *buf = 136315650;
        v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v67 = 2112;
        v68 = v33;
        v69 = 2112;
        v70 = v34;
        _os_log_impl(&dword_1912FE000, v32, OS_LOG_TYPE_INFO, "%s BTLE suppressing straggler response to: %@ data= %@", buf, 0x20u);
        v14 = *(a1 + 40);
      }

      v30 = v14;
      v31 = 3;
      goto LABEL_30;
    case 5:
      if ([*(a1 + 32) isAContinuation])
      {
        v35 = [*(*(a1 + 40) + 80) objectForKey:*(a1 + 64)];

        if (!v35)
        {
          v36 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            v37 = *(a1 + 48);
            v38 = *(a1 + 56);
            *buf = 136315650;
            v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
            v67 = 2112;
            v68 = v37;
            v69 = 2112;
            v70 = v38;
            _os_log_impl(&dword_1912FE000, v36, OS_LOG_TYPE_INFO, "%s BTLE heard another device sending continuation: %@ data= %@", buf, 0x20u);
          }
        }

        [*(*(a1 + 40) + 80) setObject:*(a1 + 32) forKey:*(a1 + 64)];
      }

      return;
    case 7:
      if ([*(a1 + 32) isAnEmergency])
      {
        goto LABEL_28;
      }

      return;
    case 8:
    case 0xCLL:
      v25 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v26 = *(a1 + 32);
        *buf = 136315394;
        v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v67 = 2112;
        v68 = v26;
        _os_log_impl(&dword_1912FE000, v25, OS_LOG_TYPE_INFO, "%s BTLE heard a record waiting for a emergency handled notice: %@ ", buf, 0x16u);
      }

      if (![*(a1 + 32) isAnEmergencyHandled])
      {
        return;
      }

      v27 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v28 = *(a1 + 48);
        v29 = *(a1 + 56);
        *buf = 136315650;
        v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
        v67 = 2112;
        v68 = v28;
        v69 = 2112;
        v70 = v29;
        _os_log_impl(&dword_1912FE000, v27, OS_LOG_TYPE_INFO, "%s BTLE heard an emergency declaration was handled: %@ data= %@", buf, 0x20u);
      }

      [*(a1 + 40) _signalEmergencyCallHandled];
      v30 = *(a1 + 40);
      v31 = 4;
      goto LABEL_30;
    case 0xALL:
      if ([*(a1 + 32) isAContinuation])
      {
        v39 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v40 = *(a1 + 48);
          v41 = *(a1 + 56);
          *buf = 136315650;
          v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
          v67 = 2112;
          v68 = v40;
          v69 = 2112;
          v70 = v41;
          _os_log_impl(&dword_1912FE000, v39, OS_LOG_TYPE_INFO, "%s BTLE heard a continuation: %@ data= %@", buf, 0x20u);
        }

        [*(a1 + 40) _stopListening:0];
        [*(a1 + 40) _enterState:7];
      }

      else if ([*(a1 + 32) isAnEmergency])
      {
        v60 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v61 = *(a1 + 48);
          v62 = *(a1 + 56);
          *buf = 136315650;
          v66 = "[AFMyriadCoordinator heySiri:foundDevice:withInfo:]_block_invoke";
          v67 = 2112;
          v68 = v61;
          v69 = 2112;
          v70 = v62;
          _os_log_impl(&dword_1912FE000, v60, OS_LOG_TYPE_INFO, "%s BTLE heard an emergency declaration: %@ data= %@", buf, 0x20u);
        }

LABEL_28:
        if ([*(a1 + 40) _shouldHandleEmergency])
        {
          v30 = *(a1 + 40);
          v31 = 9;
LABEL_30:
          [v30 enterState:v31];
        }
      }

      else
      {
LABEL_54:
        [*(a1 + 40) _updateRepliesWith:*(a1 + 32) id:*(a1 + 64) data:*(a1 + 56)];
      }

      return;
    case 0x11:
      [*(a1 + 40) _testAndUpdateWedgeFilter:*(a1 + 32)];
      return;
    default:
      return;
  }
}

- (void)heySiriDidUpdateState:(id)state
{
  v15 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    *buf = 136315394;
    v12 = "[AFMyriadCoordinator heySiriDidUpdateState:]";
    v13 = 2048;
    state = [stateCopy state];
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s BTLE daemon state changed to: %ld", buf, 0x16u);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __45__AFMyriadCoordinator_heySiriDidUpdateState___block_invoke;
  v9[3] = &unk_1E7349860;
  v9[4] = self;
  v10 = stateCopy;
  v8 = stateCopy;
  dispatch_async(myriadWorkQueue, v9);
}

void __45__AFMyriadCoordinator_heySiriDidUpdateState___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 312) = [*(a1 + 40) state] == 3;
  v2 = *(a1 + 32);
  if (*(v2 + 312) == 1)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = "[AFMyriadCoordinator heySiriDidUpdateState:]_block_invoke";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE daemon wiprox state signalling", &v8, 0xCu);
      v2 = *(a1 + 32);
    }

    v4 = MEMORY[0x193AFB7B0](*(v2 + 456));
    [*(a1 + 32) _clearWiProxReadinessTimer];
    if (v4)
    {
      v4[2](v4);
    }

    if (*(*(a1 + 32) + 584))
    {
      v5 = MEMORY[0x193AFB7B0]();
      v6 = *(a1 + 32);
      v7 = *(v6 + 584);
      *(v6 + 584) = 0;

      if (v5)
      {
        v5[2](v5);
      }
    }
  }
}

- (void)_triggerABCForType:(id)type context:(id)context
{
  advContextManager = self->_advContextManager;
  if (advContextManager)
  {
    [(AFMyriadAdvertisementContextManager *)advContextManager triggerABCForType:@"Myriad" subType:type context:context];
  }
}

- (void)_leaveBLEDiagnosticMode
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_myriadWorkQueue)
  {
    __assert_rtn("[AFMyriadCoordinator _leaveBLEDiagnosticMode]", "AFMyriadCoordinator.m", 3943, "_myriadWorkQueue");
  }

  if (self->_sfdiagnostics)
  {
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if ((AFIsHorseman_isHorseman & 1) == 0)
    {
      v3 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v8 = 136315138;
        v9 = "[AFMyriadCoordinator _leaveBLEDiagnosticMode]";
        _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE leaving diagnostic mode", &v8, 0xCu);
      }

      [(SFDiagnostics *)self->_sfdiagnostics invalidate];
      sfdiagnostics = self->_sfdiagnostics;
      self->_sfdiagnostics = 0;

      v5 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        sfDiagnosticsTimer = self->_sfDiagnosticsTimer;
        v8 = 136315650;
        v9 = "[AFMyriadCoordinator _leaveBLEDiagnosticMode]";
        v10 = 2048;
        v11 = 0x3FF7333340000000;
        v12 = 2112;
        v13 = sfDiagnosticsTimer;
        _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s BTLE cancelling diagnostic mode timer for %f seconds %@", &v8, 0x20u);
      }

      [(AFWatchdogTimer *)self->_sfDiagnosticsTimer cancel];
      v7 = self->_sfDiagnosticsTimer;
      self->_sfDiagnosticsTimer = 0;
    }
  }
}

- (void)_enterBLEDiagnosticMode
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_myriadWorkQueue)
  {
    __assert_rtn("[AFMyriadCoordinator _enterBLEDiagnosticMode]", "AFMyriadCoordinator.m", 3913, "_myriadWorkQueue");
  }

  if (AFIsHorseman_onceToken != -1)
  {
    dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
  }

  if ((AFIsHorseman_isHorseman & 1) == 0)
  {
    [(AFMyriadCoordinator *)self _leaveBLEDiagnosticMode];
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v15 = "[AFMyriadCoordinator _enterBLEDiagnosticMode]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE entering diagnostic mode", buf, 0xCu);
    }

    v4 = objc_alloc_init(getSFDiagnosticsClass());
    sfdiagnostics = self->_sfdiagnostics;
    self->_sfdiagnostics = v4;

    [(SFDiagnostics *)self->_sfdiagnostics setDispatchQueue:self->_myriadWorkQueue];
    v6 = self->_sfdiagnostics;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __46__AFMyriadCoordinator__enterBLEDiagnosticMode__block_invoke;
    v13[3] = &unk_1E73493C0;
    v13[4] = self;
    [(SFDiagnostics *)v6 diagnosticBLEModeWithCompletion:v13];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__AFMyriadCoordinator__enterBLEDiagnosticMode__block_invoke_556;
    v12[3] = &unk_1E73497C8;
    v12[4] = self;
    v7 = MEMORY[0x193AFB7B0](v12);
    v8 = [[AFWatchdogTimer alloc] initWithTimeoutInterval:self->_myriadWorkQueue onQueue:v7 timeoutHandler:1.45000005];
    sfDiagnosticsTimer = self->_sfDiagnosticsTimer;
    self->_sfDiagnosticsTimer = v8;

    [(AFWatchdogTimer *)self->_sfDiagnosticsTimer start];
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v11 = self->_sfDiagnosticsTimer;
      *buf = 136315650;
      v15 = "[AFMyriadCoordinator _enterBLEDiagnosticMode]";
      v16 = 2048;
      v17 = 0x3FF7333340000000;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s BTLE added diagnostic mode timer for %f seconds %@", buf, 0x20u);
    }
  }
}

void __46__AFMyriadCoordinator__enterBLEDiagnosticMode__block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v5 = 136315394;
      v6 = "[AFMyriadCoordinator _enterBLEDiagnosticMode]_block_invoke";
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s BTLE failed to enter diagnostic mode %@", &v5, 0x16u);
    }

    [*(a1 + 32) _leaveBLEDiagnosticMode];
  }
}

uint64_t __46__AFMyriadCoordinator__enterBLEDiagnosticMode__block_invoke_556(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFMyriadCoordinator _enterBLEDiagnosticMode]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE diagnostic mode timer fired", &v4, 0xCu);
  }

  return [*(a1 + 32) _leaveBLEDiagnosticMode];
}

- (void)waitWiProx:(int64_t)prox andExecute:(id)execute
{
  executeCopy = execute;
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__AFMyriadCoordinator_waitWiProx_andExecute___block_invoke;
  block[3] = &unk_1E73484E8;
  v10 = executeCopy;
  proxCopy = prox;
  block[4] = self;
  v8 = executeCopy;
  dispatch_async(myriadWorkQueue, block);
}

- (void)_waitWiProx:(int64_t)prox andExecute:(id)execute
{
  v25 = *MEMORY[0x1E69E9840];
  executeCopy = execute;
  BTLEReady = self->_BTLEReady;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __46__AFMyriadCoordinator__waitWiProx_andExecute___block_invoke;
  v16 = &unk_1E7349838;
  selfCopy = self;
  v8 = executeCopy;
  v18 = v8;
  v9 = MEMORY[0x193AFB7B0](&v13);
  v10 = v9;
  if (BTLEReady || !self->_BLEActivityEnabled)
  {
    (*(v9 + 16))(v9);
  }

  else
  {
    v11 = [(WPHeySiri *)self->_heySiriBTLE state:v13];
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v20 = "[AFMyriadCoordinator _waitWiProx:andExecute:]";
      v21 = 2048;
      proxCopy = prox;
      v23 = 2048;
      v24 = v11;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s #myriad BTLE not ready, waiting to execute for up to %ld msecs (current HeySiri WPState %ld)", buf, 0x20u);
    }

    [(AFMyriadCoordinator *)self _createWaitWiProxTimer:prox waitBlock:v10];
  }
}

void __46__AFMyriadCoordinator__waitWiProx_andExecute___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 440);
  v4 = *(v2 + 441);
  label = dispatch_queue_get_label(0);
  v6 = label;
  if (label && !strcmp(label, myriad_work_queue_label))
  {
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))();
    }

    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v12 = "NO";
      if (v4)
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      v14 = *(a1 + 32);
      v24 = "[AFMyriadCoordinator _waitWiProx:andExecute:]_block_invoke";
      v15 = *(v14 + 441);
      v16 = *(v14 + 440);
      if (v15)
      {
        v17 = "YES";
      }

      else
      {
        v17 = "NO";
      }

      *buf = 136316162;
      if (v3)
      {
        v18 = "YES";
      }

      else
      {
        v18 = "NO";
      }

      v25 = 2080;
      v26 = v13;
      if (v16)
      {
        v12 = "YES";
      }

      v27 = 2080;
      v28 = v17;
      v29 = 2080;
      v30 = v18;
      v31 = 2080;
      v32 = v12;
      _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s #myriad didRequestForBTLEAdvertisement: %s -> %s, didRequestForBTLEScan: %s -> %s", buf, 0x34u);
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315651;
      v24 = "[AFMyriadCoordinator _waitWiProx:andExecute:]_block_invoke";
      v25 = 2081;
      v26 = v6;
      v27 = 2081;
      v28 = myriad_work_queue_label;
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s #myriad Method called on unexpected thread (curr:%{private}s expected:%{private}s)", buf, 0x20u);
      v2 = *(a1 + 32);
    }

    v8 = *(v2 + 176);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__AFMyriadCoordinator__waitWiProx_andExecute___block_invoke_550;
    block[3] = &unk_1E7346EE8;
    v9 = *(a1 + 40);
    v21 = v4;
    block[4] = *(a1 + 32);
    v20 = v9;
    v22 = v3;
    dispatch_async(v8, block);
  }
}

void __46__AFMyriadCoordinator__waitWiProx_andExecute___block_invoke_550(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = "NO";
    if (*(a1 + 48))
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v6 = *(a1 + 32);
    if (*(v6 + 441))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    if (*(a1 + 49))
    {
      v8 = "YES";
    }

    else
    {
      v8 = "NO";
    }

    if (*(v6 + 440))
    {
      v4 = "YES";
    }

    v9 = 136316162;
    v10 = "[AFMyriadCoordinator _waitWiProx:andExecute:]_block_invoke";
    v11 = 2080;
    v12 = v5;
    v13 = 2080;
    v14 = v7;
    v15 = 2080;
    v16 = v8;
    v17 = 2080;
    v18 = v4;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s #myriad didRequestForBTLEAdvertisement: %s -> %s, didRequestForBTLEScan: %s -> %s", &v9, 0x34u);
  }
}

- (void)_createWaitWiProxTimer:(int64_t)timer waitBlock:(id)block
{
  blockCopy = block;
  [(AFMyriadCoordinator *)self _suspendWiProxReadinessTimer];
  waitTimer = self->_wiproxReadinessTimer.waitTimer;
  v8 = dispatch_time(0, 1000000 * timer);
  dispatch_source_set_timer(waitTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __56__AFMyriadCoordinator__createWaitWiProxTimer_waitBlock___block_invoke;
  v18[3] = &unk_1E73497C8;
  v18[4] = self;
  v9 = MEMORY[0x193AFB7B0](v18);
  dispatch_source_set_event_handler(self->_wiproxReadinessTimer.waitTimer, v9);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __56__AFMyriadCoordinator__createWaitWiProxTimer_waitBlock___block_invoke_549;
  v16 = &unk_1E73494D8;
  v17 = blockCopy;
  v10 = blockCopy;
  v11 = MEMORY[0x193AFB7B0](&v13);
  waitBlock = self->_wiproxReadinessTimer.waitBlock;
  self->_wiproxReadinessTimer.waitBlock = v11;

  [(AFMyriadCoordinator *)self _resumeWiProxReadinessTimer:v13];
}

uint64_t __56__AFMyriadCoordinator__createWaitWiProxTimer_waitBlock___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[AFMyriadCoordinator _createWaitWiProxTimer:waitBlock:]_block_invoke";
    _os_log_error_impl(&dword_1912FE000, v2, OS_LOG_TYPE_ERROR, "%s #myriad BTLE WiProx readiness timer timed out, WiProx not called", &v4, 0xCu);
  }

  return [*(a1 + 32) _clearWiProxReadinessTimer];
}

uint64_t __56__AFMyriadCoordinator__createWaitWiProxTimer_waitBlock___block_invoke_549(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFMyriadCoordinator _createWaitWiProxTimer:waitBlock:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #myriad BTLE done waiting on WiProx to execute", &v4, 0xCu);
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_clearWiProxReadinessTimer
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_wiproxReadinessTimer.waitTimer)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v5 = 136315138;
      v6 = "[AFMyriadCoordinator _clearWiProxReadinessTimer]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s #myriad WiProx readiness timer wait block cleared", &v5, 0xCu);
    }

    waitBlock = self->_wiproxReadinessTimer.waitBlock;
    self->_wiproxReadinessTimer.waitBlock = 0;
  }
}

- (void)_suspendWiProxReadinessTimer
{
  v6 = *MEMORY[0x1E69E9840];
  if (!self->_wiproxReadinessTimer.isWaitTimerSuspended)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[AFMyriadCoordinator _suspendWiProxReadinessTimer]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s #myriad WiProx readiness timer suspended", &v4, 0xCu);
    }

    self->_wiproxReadinessTimer.isWaitTimerSuspended = 1;
    dispatch_suspend(self->_wiproxReadinessTimer.waitTimer);
  }
}

- (void)_initializeWiProxReadinessTimer
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[AFMyriadCoordinator _initializeWiProxReadinessTimer]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s #myriad WiProx readiness timer initialized", &v6, 0xCu);
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_myriadWorkQueue);
  waitTimer = self->_wiproxReadinessTimer.waitTimer;
  self->_wiproxReadinessTimer.waitTimer = v4;

  dispatch_source_set_event_handler(self->_wiproxReadinessTimer.waitTimer, &__block_literal_global_548);
  [(AFMyriadCoordinator *)self _resumeWiProxReadinessTimer];
}

- (void)_ageWedgeFilter
{
  p_previousTrumps = &self->_previousTrumps;
  previousTrumps = self->_previousTrumps;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__AFMyriadCoordinator__ageWedgeFilter__block_invoke;
  v7[3] = &unk_1E7347DC8;
  v7[4] = self;
  [(NSMutableDictionary *)previousTrumps enumerateKeysAndObjectsUsingBlock:v7];
  objc_storeStrong(p_previousTrumps, self->_incomingTrumps);
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  incomingTrumps = self->_incomingTrumps;
  self->_incomingTrumps = v5;
}

void __38__AFMyriadCoordinator__ageWedgeFilter__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = [a3 intValue];
  if (v5 >= 2)
  {
    v6 = v5;
    v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v10];

    if (!v7)
    {
      v8 = *(*(a1 + 32) + 72);
      v9 = [MEMORY[0x1E696AD98] numberWithInt:(v6 - 1)];
      [v8 setObject:v9 forKey:v10];
    }
  }
}

- (BOOL)_testAndUpdateWedgeFilter:(id)filter
{
  v22 = *MEMORY[0x1E69E9840];
  filterCopy = filter;
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(filterCopy, "userConfidence") | (objc_msgSend(filterCopy, "tieBreaker") << 8)}];
  if ([filterCopy isATrump])
  {
    incomingTrumps = self->_incomingTrumps;
    v7 = [MEMORY[0x1E696AD98] numberWithInt:20];
    [(NSMutableDictionary *)incomingTrumps setObject:v7 forKey:v5];

    deviceClass = [filterCopy deviceClass];
    if (AFIsHorseman_onceToken != -1)
    {
      dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
    }

    if (AFIsHorseman_isHorseman == 1 && deviceClass == 6)
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "[AFMyriadCoordinator _testAndUpdateWedgeFilter:]";
        v18 = 2112;
        v19 = filterCopy;
        v10 = "%s BTLE ignoring incoming event bad device class for Horseman %@";
LABEL_11:
        _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, v10, &v16, 0x16u);
        goto LABEL_12;
      }

      goto LABEL_12;
    }

    v11 = [(NSMutableDictionary *)self->_previousTrumps objectForKeyedSubscript:v5];

    if (v11)
    {
      v9 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v16 = 136315394;
        v17 = "[AFMyriadCoordinator _testAndUpdateWedgeFilter:]";
        v18 = 2112;
        v19 = filterCopy;
        v10 = "%s BTLE ignoring as wedged suppress %@";
        goto LABEL_11;
      }

LABEL_12:
      isSane2 = 0;
      goto LABEL_16;
    }
  }

  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v14 = v13;
    v16 = 136315650;
    v17 = "[AFMyriadCoordinator _testAndUpdateWedgeFilter:]";
    v18 = 2112;
    v19 = filterCopy;
    v20 = 1024;
    isSane = [filterCopy isSane];
    _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s BTLE record %@  isSane: %d", &v16, 0x1Cu);
  }

  isSane2 = [filterCopy isSane];
LABEL_16:

  return isSane2;
}

- (int)_myriadStateForSelf:(unint64_t)self
{
  if (self < 0x12)
  {
    return self + 1;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_nextElectionPublisherState
{
  electionPublisherState = self->_electionPublisherState;
  if (electionPublisherState)
  {
    v3 = (electionPublisherState + 1) % 0x3D;
  }

  else
  {
    v3 = 1;
  }

  self->_electionPublisherState = v3;
  return v3;
}

- (void)notifyCurrentDecisionResult
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__AFMyriadCoordinator_notifyCurrentDecisionResult__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

void __50__AFMyriadCoordinator_notifyCurrentDecisionResult__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  if (v2 == 14 || v2 == 1)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v6 = [v1 _stateAsString:v2];
      v11 = 136315394;
      v12 = "[AFMyriadCoordinator notifyCurrentDecisionResult]_block_invoke";
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s BTLE ignoring decision result callback (state = %@)", &v11, 0x16u);
    }
  }

  else if (*(v1 + 400) == 1)
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = v8;
      v10 = [v1 _stateAsString:v2];
      v11 = 136315394;
      v12 = "[AFMyriadCoordinator notifyCurrentDecisionResult]_block_invoke";
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s BTLE reposting result win (state = %@)", &v11, 0x16u);

      v1 = *(a1 + 32);
    }

    [*(v1 + 544) publishState:{objc_msgSend(v1, "_nextElectionPublisherState")}];
  }
}

- (void)_updateRepliesWith:(id)with id:(id)id data:(id)data
{
  v22 = *MEMORY[0x1E69E9840];
  withCopy = with;
  idCopy = id;
  dataCopy = data;
  v11 = [(NSMutableDictionary *)self->_replies objectForKey:idCopy];
  v12 = v11;
  if (!v11)
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if ([v11 isAContinuation] && (objc_msgSend(withCopy, "isAContinuation") & 1) == 0)
  {
    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
LABEL_12:
      *v18 = 136315650;
      *&v18[4] = "[AFMyriadCoordinator _updateRepliesWith:id:data:]";
      *&v18[12] = 2112;
      *&v18[14] = dataCopy;
      *&v18[22] = 2112;
      *v19 = idCopy;
      _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s BTLE Updating record table, data= %@, for %@", v18, 0x20u);
    }

LABEL_13:
    [(NSMutableDictionary *)self->_replies setObject:withCopy forKey:idCopy, *v18, *&v18[8], *v19];
    goto LABEL_14;
  }

  v13 = [withCopy isALateSupressionTrumpFor:v12];
  v14 = AFSiriLogContextConnection;
  v15 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
  if (v13)
  {
    if (v15)
    {
      v16 = v14;
      *v18 = 136316162;
      *&v18[4] = "[AFMyriadCoordinator _updateRepliesWith:id:data:]";
      *&v18[12] = 1024;
      *&v18[14] = [v12 goodness];
      *&v18[18] = 1024;
      *&v18[20] = [withCopy goodness];
      *v19 = 2112;
      *&v19[2] = dataCopy;
      v20 = 2112;
      v21 = idCopy;
      _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s BTLE Updating record table with a late supression(%hhu -> %hhu), data= %@, for %@", v18, 0x2Cu);
    }

    goto LABEL_13;
  }

  if (v15)
  {
    *v18 = 136315650;
    *&v18[4] = "[AFMyriadCoordinator _updateRepliesWith:id:data:]";
    *&v18[12] = 2112;
    *&v18[14] = dataCopy;
    *&v18[22] = 2112;
    *v19 = idCopy;
    _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s BTLE ignoring this advert because one already exists, data= %@, for %@", v18, 0x20u);
  }

LABEL_14:
}

- (BOOL)_inTaskTriggerWasTooSoon
{
  v45 = *MEMORY[0x1E69E9840];
  if (self->_ignoreInTaskTimer && AFCDAFaceDetection())
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v27 = 136315138;
      v28 = "[AFMyriadCoordinator _inTaskTriggerWasTooSoon]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s #myriad got attention, ignoring too-soon time limit.", &v27, 0xCu);
    }

    return 0;
  }

  if (self->_triggerTime)
  {
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:self->_triggerTime];
    v6 = v5;
    v7 = self->_advTiming.advertTriggerAdvStartTime;
    v8 = v7;
    v9 = 3.40282347e38;
    if (v7)
    {
      [(NSDate *)v7 timeIntervalSinceDate:date, 3.40282347e38];
    }

    if (v9 >= 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 3.40282347e38;
    }

    if (self->_clientIsDirectActivating)
    {
      v11 = 0;
      v12 = v6 < self->_deviceTrumpDelay;
    }

    else
    {
      v12 = 0;
      v11 = !self->_clientIsInEarActivation;
    }

    if (self->_myriadState == 1)
    {
      v15 = v10 > 0.5 || v8 == 0;
      v16 = !v11 && v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      [date timeIntervalSinceReferenceDate];
      v20 = v19;
      [(NSDate *)self->_triggerTime timeIntervalSinceReferenceDate];
      v22 = v21;
      [(NSDate *)v8 timeIntervalSinceReferenceDate];
      v27 = 136317186;
      v28 = "[AFMyriadCoordinator _inTaskTriggerWasTooSoon]";
      v29 = 2048;
      v30 = v20;
      v31 = 2048;
      v32 = v22;
      v33 = 2048;
      v34 = v23;
      v35 = 2048;
      v36 = v6;
      v37 = 2048;
      v38 = v10;
      v39 = 1024;
      v40 = v6 < 0.5;
      v41 = 1024;
      v42 = v12;
      v43 = 1024;
      v44 = v16;
      _os_log_impl(&dword_1912FE000, v18, OS_LOG_TYPE_INFO, "%s #myriad CurrentTime: %f TrigerTime: %f, ElectionAdvertisementTime: %f, triggerDelta: %f, electionAdvertisementRemainingTime: %f [isIntaskTooSoonForVoiceTriggerActivation = %d, isIntaskTooSoonForDirectActivation = %d, currentElectionAdvertisementIsSane = %d]", &v27, 0x50u);

      v17 = AFSiriLogContextConnection;
    }

    v13 = v6 < 0.5 || v12 || v16;
    v24 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
    if (v6 < 0.5 || v12 || v16)
    {
      if (v24)
      {
        v27 = 136315138;
        v28 = "[AFMyriadCoordinator _inTaskTriggerWasTooSoon]";
        v25 = "%s #myriad BTLE in-task continuous voice trigger heard too soon. Ignoring.";
LABEL_33:
        _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, v25, &v27, 0xCu);
      }
    }

    else if (v24)
    {
      v27 = 136315138;
      v28 = "[AFMyriadCoordinator _inTaskTriggerWasTooSoon]";
      v25 = "%s #myriad BTLE in-task continious voice trigger heard. NOT ignoring.";
      goto LABEL_33;
    }

    return v13;
  }

  return 0;
}

- (id)_sortedReplies:(id)replies
{
  allValues = [replies allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_544];

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v4 count] < 2)
  {
    [v5 addObjectsFromArray:v4];
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__AFMyriadCoordinator__sortedReplies___block_invoke_2;
    v9[3] = &unk_1E7346EC0;
    v10 = v6;
    v11 = v5;
    v7 = v6;
    [v4 enumerateObjectsUsingBlock:v9];
  }

  return v5;
}

void __38__AFMyriadCoordinator__sortedReplies___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 asAdvertisementData];
  if ([v4 isCollectedFromContextCollector])
  {
    if ([*(a1 + 32) containsObject:v3])
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v3)
  {
LABEL_3:
    [*(a1 + 32) addObject:v3];
    [*(a1 + 40) addObject:v4];
  }

LABEL_4:
}

uint64_t __38__AFMyriadCoordinator__sortedReplies___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  v8 = [v6 deviceClass];
  if (v8 == 10 || v8 == 6) && [v6 isATrump] && objc_msgSend(v7, "deviceClass") == 7 && (objc_msgSend(v7, "isATrump"))
  {
    goto LABEL_23;
  }

  if ([v6 deviceClass] == 7)
  {
    if ([v6 isATrump])
    {
      v9 = [v7 deviceClass];
      if (v9 == 10 || v9 == 6) && ([v7 isATrump])
      {
        v10 = -1;
        goto LABEL_22;
      }
    }
  }

  v11 = [v6 goodness];
  if (v11 == [v7 goodness])
  {
    v12 = [v6 userConfidence];
    v13 = [v7 userConfidence];
  }

  else
  {
    v12 = [v6 goodness];
    v13 = [v7 goodness];
  }

  v14 = v13;
  if (v12 == v13)
  {
    v12 = [v6 tieBreaker];
    v14 = [v7 tieBreaker];
    if ([v6 hasEqualAdvertisementData:v7])
    {
      if ([v6 isCollectedFromContextCollector] && !objc_msgSend(v7, "isCollectedFromContextCollector"))
      {
LABEL_23:
        v10 = 1;
        goto LABEL_22;
      }
    }
  }

  if (v12 < v14)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_22:

  return v10;
}

- (BOOL)_shouldHandleEmergency
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(AFMyriadCoordinator *)self _sortedReplies:self->_repliesBeforeDecision];
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    replies = self->_replies;
    *buf = 136315394;
    v24 = "[AFMyriadCoordinator _shouldHandleEmergency]";
    v25 = 2112;
    v26 = replies;
    _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s BTLE emergencyCallSummary: %@", buf, 0x16u);
  }

  [v3 enumerateObjectsUsingBlock:&__block_literal_global_541];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if (-[AFMyriadCoordinator _isAPhone:](self, "_isAPhone:", [v11 deviceClass]))
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }

    isMe = [v11 isMe];
    v14 = AFSiriLogContextConnection;
    v15 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
    if (isMe)
    {
      if (v15)
      {
        *buf = 136315138;
        v24 = "[AFMyriadCoordinator _shouldHandleEmergency]";
        v16 = "%s BTLE Emergency call: this device should handle";
LABEL_19:
        _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, v16, buf, 0xCu);
      }
    }

    else if (v15)
    {
      *buf = 136315138;
      v24 = "[AFMyriadCoordinator _shouldHandleEmergency]";
      v16 = "%s BTLE Emergency call: This device should NOT handle, another is better";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

LABEL_11:

  v12 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v24 = "[AFMyriadCoordinator _shouldHandleEmergency]";
    _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s BTLE Emergency Call: No device available to handle this call", buf, 0xCu);
  }

  LOBYTE(isMe) = 0;
LABEL_21:

  return isMe;
}

void __45__AFMyriadCoordinator__shouldHandleEmergency__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[AFMyriadCoordinator _shouldHandleEmergency]_block_invoke";
    v8 = 2048;
    v9 = a3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s BTLE EmergencyCallSummary %lu: %@", &v6, 0x20u);
  }
}

- (BOOL)_shouldContinueFor:(id)for
{
  v39 = *MEMORY[0x1E69E9840];
  forCopy = for;
  _sortedReplies = [(AFMyriadCoordinator *)self _sortedReplies];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    replies = self->_replies;
    *buf = 136315394;
    v36 = "[AFMyriadCoordinator _shouldContinueFor:]";
    v37 = 2112;
    v38 = replies;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s BTLE end advertising summary: %@", buf, 0x16u);
  }

  [_sortedReplies enumerateObjectsUsingBlock:&__block_literal_global_539];
  lastWonBySmallAmountDate = self->_lastWonBySmallAmountDate;
  self->_lastWonBySmallAmountDate = 0;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = _sortedReplies;
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v31;
LABEL_5:
    v14 = 0;
    v29 = v12 + v11;
    while (1)
    {
      if (*v31 != v13)
      {
        objc_enumerationMutation(v9);
      }

      if (forCopy)
      {
        v15 = *(*(&v30 + 1) + 8 * v14);
        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:{objc_msgSend(v15, "deviceClass")}];
        v17 = [forCopy containsObject:v16];

        if (!v17)
        {
          break;
        }
      }

      ++v12;
      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v30 objects:v34 count:16];
        v12 = v29;
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    isATrump = [v15 isATrump];
    isMe = [v15 isMe];
    isMe2 = isATrump & isMe;
    if ((isATrump & 1) == 0)
    {
      firstObject = v9;
      if ((isMe & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v12 + 1 < [v9 count])
      {
        v22 = [v9 objectAtIndex:v12 + 1];
        goodness = [v15 goodness];
        if ((goodness - [v22 goodness]) <= 2)
        {
          v24 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            *buf = 136315138;
            v36 = "[AFMyriadCoordinator _shouldContinueFor:]";
            _os_log_impl(&dword_1912FE000, v24, OS_LOG_TYPE_INFO, "%s #myriad Won by a small margin, storing state to mitigate recency boost", buf, 0xCu);
          }

          date = [MEMORY[0x1E695DF00] date];
          v26 = *(v28 + 624);
          *(v28 + 624) = date;
        }
      }

      isMe2 = 1;
    }

    firstObject = v9;
  }

  else
  {
LABEL_12:

    firstObject = [v9 firstObject];
    if ([firstObject isATrump])
    {
      self->_clientLostDueToTrumping = 1;
    }

    if (([firstObject isMe] & 1) == 0 && objc_msgSend(firstObject, "isInEarTrump") && -[AFMyriadRecord isInEarTrump](self->_triggerRecord, "isInEarTrump"))
    {
      isMe2 = 1;
    }

    else
    {
      isMe2 = [firstObject isMe];
    }
  }

LABEL_29:

  return isMe2;
}

void __42__AFMyriadCoordinator__shouldContinueFor___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315650;
    v7 = "[AFMyriadCoordinator _shouldContinueFor:]_block_invoke";
    v8 = 2048;
    v9 = a3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s BTLE summary %lu: %@", &v6, 0x20u);
  }
}

- (id)emptyRecord
{
  v3 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v3 setPHash:0];
  [(AFMyriadRecord *)v3 setIsMe:1];
  [(AFMyriadRecord *)v3 setTieBreaker:0];
  [(AFMyriadRecord *)v3 setRawAudioGoodnessScore:0 withBump:0];
  [(AFMyriadRecord *)v3 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v3 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v3 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v3 setProductType:self->_productType];

  return v3;
}

- (id)slowdownRecord:(unsigned __int16)record
{
  v12 = *MEMORY[0x1E69E9840];
  if ((record >> 3) >= 0xFF)
  {
    v4 = 255;
  }

  else
  {
    v4 = record >> 3;
  }

  v5 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v5 setPHash:0];
  [(AFMyriadRecord *)v5 setIsMe:1];
  [(AFMyriadRecord *)v5 setUserConfidence:v4];
  [(AFMyriadRecord *)v5 generateTiebreaker];
  [(AFMyriadRecord *)v5 setRawAudioGoodnessScore:0 withBump:208];
  [(AFMyriadRecord *)v5 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v5 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v5 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v5 setProductType:self->_productType];
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315394;
    v9 = "[AFMyriadCoordinator slowdownRecord:]";
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s BTLE created slowdown record %@", &v8, 0x16u);
  }

  return v5;
}

- (id)responseObject:(unsigned __int16)object
{
  objectCopy = object;
  v5 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v5 setPHash:objectCopy];
  [(AFMyriadRecord *)v5 setIsMe:1];
  [(AFMyriadRecord *)v5 generateTiebreaker];
  [(AFMyriadRecord *)v5 setRawAudioGoodnessScore:0 withBump:255];
  [(AFMyriadRecord *)v5 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v5 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v5 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v5 setProductType:self->_productType];

  return v5;
}

- (id)emergencyHandledRecord
{
  v3 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v3 setPHash:0];
  [(AFMyriadRecord *)v3 setIsMe:1];
  [(AFMyriadRecord *)v3 generateTiebreaker];
  [(AFMyriadRecord *)v3 setRawAudioGoodnessScore:0 withBump:224];
  [(AFMyriadRecord *)v3 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v3 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v3 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v3 setProductType:self->_productType];

  return v3;
}

- (id)emergencyRecord
{
  v3 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v3 setPHash:0];
  [(AFMyriadRecord *)v3 setIsMe:1];
  [(AFMyriadRecord *)v3 generateTiebreaker];
  [(AFMyriadRecord *)v3 setRawAudioGoodnessScore:0 withBump:239];
  [(AFMyriadRecord *)v3 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v3 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v3 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v3 setProductType:self->_productType];

  return v3;
}

- (id)continuationRecord
{
  v3 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v3 setPHash:0xFFFFLL];
  [(AFMyriadRecord *)v3 setIsMe:1];
  [(AFMyriadRecord *)v3 generateTiebreaker];
  [(AFMyriadRecord *)v3 setRawAudioGoodnessScore:0 withBump:0];
  [(AFMyriadRecord *)v3 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v3 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v3 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v3 setProductType:self->_productType];

  return v3;
}

- (id)lateSuppressionRecord
{
  v3 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v3 setPHash:self->_lastPHash];
  [(AFMyriadRecord *)v3 setIsMe:1];
  [(AFMyriadRecord *)v3 generateTiebreaker];
  [(AFMyriadRecord *)v3 generateRandomConfidence];
  [(AFMyriadRecord *)v3 setRawAudioGoodnessScore:0 withBump:255];
  [(AFMyriadRecord *)v3 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v3 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v3 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v3 setProductType:self->_productType];

  return v3;
}

- (id)directTriggerRecord
{
  perceptualAudioHash = [(AFMyriadContext *)self->_currentMyriadContext perceptualAudioHash];
  data = [perceptualAudioHash data];

  if ([data length] == 12 || objc_msgSend(data, "length") == 13)
  {
    [data getBytes:&self->_voiceTriggerTime range:{4, 8}];
  }

  else if (self->_voiceTriggerTime)
  {
    v7 = mach_absolute_time();
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      v8 = v7;
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
      v7 = v8;
    }

    if (*&_AFMachAbsoluteTimeRate_rate * v7 / 1000000000.0 - *&_AFMachAbsoluteTimeRate_rate * self->_voiceTriggerTime / 1000000000.0 > 1.45000005)
    {
      self->_voiceTriggerTime = 0;
    }
  }

  v5 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v5 setPHash:0xFFFFLL];
  [(AFMyriadRecord *)v5 setIsMe:1];
  [(AFMyriadRecord *)v5 generateTiebreaker];
  [(AFMyriadRecord *)v5 generateRandomConfidence];
  [(AFMyriadRecord *)v5 setRawAudioGoodnessScore:0 withBump:255];
  [(AFMyriadRecord *)v5 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v5 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v5 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v5 setProductType:self->_productType];

  return v5;
}

- (id)_phsSetupRecord
{
  v3 = objc_alloc_init(AFMyriadRecord);
  [(AFMyriadRecord *)v3 setPHash:63993];
  [(AFMyriadRecord *)v3 setIsMe:1];
  [(AFMyriadRecord *)v3 generateTiebreaker];
  [(AFMyriadRecord *)v3 generateRandomConfidence];
  [(AFMyriadRecord *)v3 setRawAudioGoodnessScore:0 withBump:249];
  [(AFMyriadRecord *)v3 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v3 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v3 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v3 setProductType:self->_productType];

  return v3;
}

- (id)voiceTriggerRecord
{
  perceptualAudioHash = [(AFMyriadContext *)self->_currentMyriadContext perceptualAudioHash];
  data = [perceptualAudioHash data];

  v5 = [[AFMyriadRecord alloc] initWithAudioData:data];
  if ([data length] == 12)
  {
    [data getBytes:&self->_voiceTriggerTime range:{4, 8}];
  }

  else
  {
    if ([data length] == 13)
    {
      [data getBytes:&self->_voiceTriggerTime range:{4, 8}];
      goto LABEL_7;
    }

    self->_voiceTriggerTime = 0;
  }

  [(AFMyriadRecord *)v5 generateTiebreaker];
LABEL_7:
  [(AFMyriadRecord *)v5 setIsMe:1];
  [(AFMyriadRecord *)v5 setDeviceID:self->_designatedSelfID];
  [(AFMyriadRecord *)v5 setDeviceGroup:self->_deviceGroup];
  [(AFMyriadRecord *)v5 setDeviceClass:self->_deviceClass];
  [(AFMyriadRecord *)v5 setProductType:self->_productType];

  return v5;
}

- (void)_advertiseWith:(id)with afterDelay:(float)delay maxInterval:(float)interval thenExecute:(id)execute
{
  v42 = *MEMORY[0x1E69E9840];
  withCopy = with;
  executeCopy = execute;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __73__AFMyriadCoordinator__advertiseWith_afterDelay_maxInterval_thenExecute___block_invoke;
  v34[3] = &unk_1E7346E30;
  v34[4] = self;
  v12 = withCopy;
  v35 = v12;
  intervalCopy = interval;
  delayCopy = delay;
  v13 = MEMORY[0x193AFB7B0](v34);
  previousAdvertisedData = self->_previousAdvertisedData;
  if (previousAdvertisedData && [(NSData *)previousAdvertisedData isEqualToData:v12])
  {
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v25 = self->_previousAdvertisedData;
      v26 = v15;
      [(NSData *)v25 description];
      v27 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 136315394;
      v39 = "[AFMyriadCoordinator _advertiseWith:afterDelay:maxInterval:thenExecute:]";
      v40 = 2112;
      delayCopy2 = v27;
      _os_log_error_impl(&dword_1912FE000, v26, OS_LOG_TYPE_ERROR, "%s BTLE error: attempting to readvertise %@", buf, 0x16u);
    }

    self->_stateMachineEncounteredError = 1;
    [(AFMyriadCoordinator *)self _enterState:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v17 = WeakRetained;
      v18 = objc_loadWeakRetained(&self->_delegate);
      v19 = objc_opt_respondsToSelector();

      if (v19)
      {
        v20 = objc_loadWeakRetained(&self->_delegate);
        *&v21 = delay;
        *&v22 = interval;
        [v20 advertisingWillBeginWithDelay:v21 advertisingInterval:v22];
      }
    }

    v23 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v39 = "[AFMyriadCoordinator _advertiseWith:afterDelay:maxInterval:thenExecute:]";
      v40 = 2048;
      delayCopy2 = delay;
      _os_log_impl(&dword_1912FE000, v23, OS_LOG_TYPE_INFO, "%s BTLE starting advert delay timer for %f secs", buf, 0x16u);
    }

    if (delay == 0.0)
    {
      (v13)[2](v13, v12, executeCopy);
    }

    else
    {
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __73__AFMyriadCoordinator__advertiseWith_afterDelay_maxInterval_thenExecute___block_invoke_536;
      v28[3] = &unk_1E7346E58;
      v28[4] = self;
      delayCopy3 = delay;
      intervalCopy2 = interval;
      v30 = v13;
      v29 = v12;
      v31 = executeCopy;
      *&v24 = delay;
      [(AFMyriadCoordinator *)self _startTimer:@"advert delay" for:v28 thenExecute:v24];
    }
  }
}

void __73__AFMyriadCoordinator__advertiseWith_afterDelay_maxInterval_thenExecute___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 323) = 0;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 40);
    *buf = 136315394;
    v50 = "[AFMyriadCoordinator _advertiseWith:afterDelay:maxInterval:thenExecute:]_block_invoke";
    v51 = 2112;
    v52 = v8;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s BTLE delay finished, advertising: %@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = objc_loadWeakRetained((*(a1 + 32) + 88));
    [v11 myriadCoordinator:*(a1 + 32) willStartAdvertisingUsingData:v5];
  }

  if ([*(a1 + 32) _shouldUseContextCollector])
  {
    [*(a1 + 32) _pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:*(a1 + 48) advertisementDelay:*(a1 + 52)];
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 48);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __73__AFMyriadCoordinator__advertiseWith_afterDelay_maxInterval_thenExecute___block_invoke_518;
  v45[3] = &unk_1E7349838;
  v45[4] = v12;
  v14 = v6;
  v46 = v14;
  LODWORD(v15) = v13;
  [v12 _startTimer:@"advertise" for:v45 thenExecute:v15];
  kdebug_trace();
  v16 = *(*(a1 + 32) + 8);
  if (v16 != 5)
  {
    v47[0] = @"state";
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v16];
    v48[0] = v17;
    v47[1] = @"adv-delay";
    LODWORD(v18) = *(a1 + 52);
    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
    v48[1] = v19;
    v47[2] = @"adv-interval";
    LODWORD(v20) = *(a1 + 48);
    v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
    v48[2] = v21;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];

    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v23 = +[AFAnalytics sharedAnalytics];
      [v23 logEventWithType:2002 context:v22];
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v24 = *(a1 + 32);
      v25 = v24[76];
      v26 = [v24 _myriadStateForSelf:v24[1]];
      v28 = *(a1 + 48);
      v27 = *(a1 + 52);
      v29 = [*(*(a1 + 32) + 512) sessionId];
      v30 = mach_absolute_time();
      LODWORD(v31) = v27;
      LODWORD(v32) = v28;
      [v25 logCDAElectionAdvertisingStarting:v26 withDelay:v29 withInterval:v30 withCdaId:v31 withTimestamp:v32];
    }
  }

  v33 = getWPHeySiriAdvertisingData();
  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v35 = v34;
  if (v33)
  {
    [v34 setObject:v5 forKey:v33];
  }

  [*(a1 + 32) _enterBLEDiagnosticMode];
  v36 = *(a1 + 32);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __73__AFMyriadCoordinator__advertiseWith_afterDelay_maxInterval_thenExecute___block_invoke_2;
  v43[3] = &unk_1E7349860;
  v43[4] = v36;
  v37 = v35;
  v44 = v37;
  [v36 _waitWiProxAndExecute:v43];
  v38 = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (v38)
  {
    v39 = v38;
    v40 = objc_loadWeakRetained((*(a1 + 32) + 88));
    v41 = objc_opt_respondsToSelector();

    if (v41)
    {
      v42 = objc_loadWeakRetained((*(a1 + 32) + 88));
      [v42 advertisingDidBegin:*(a1 + 32)];
    }
  }

  objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
}

uint64_t __73__AFMyriadCoordinator__advertiseWith_afterDelay_maxInterval_thenExecute___block_invoke_536(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 320))
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v2 + 321) ^ 1;
  }

  if (*(v2 + 8) == 1 && (v3 & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [v4 dateByAddingTimeInterval:*(a1 + 64)];
    v6 = *(a1 + 32);
    v7 = *(v6 + 472);
    *(v6 + 472) = v5;

    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [v8 dateByAddingTimeInterval:(*(a1 + 64) + *(a1 + 68))];
    v10 = *(a1 + 32);
    v11 = *(v10 + 480);
    *(v10 + 480) = v9;
  }

  v12 = *(*(a1 + 48) + 16);

  return v12();
}

uint64_t __73__AFMyriadCoordinator__advertiseWith_afterDelay_maxInterval_thenExecute___block_invoke_518(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v2 = +[AFAnalytics sharedAnalytics];
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8), @"state"];
    v13[1] = @"unixTime";
    v14[0] = v3;
    v4 = MEMORY[0x1E696AD98];
    v5 = [MEMORY[0x1E695DF00] date];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
    v14[1] = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v2 logEventWithType:2010 context:v7];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v8 = *(a1 + 32);
    if (v8[1] == 1)
    {
      v9 = v8[76];
      v10 = [v8 _myriadStateForSelf:1];
      v11 = [*(*(a1 + 32) + 512) sessionId];
      [v9 logCDAElectionTimerEnded:v10 withCdaId:v11 withTimestamp:mach_absolute_time()];
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void *__73__AFMyriadCoordinator__advertiseWith_afterDelay_maxInterval_thenExecute___block_invoke_2(void *result)
{
  v1 = result;
  v10 = *MEMORY[0x1E69E9840];
  v2 = result[4];
  if ((*(v2 + 319) & 1) != 0 || *(v2 + 314) == 1)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = v3;
      v5 = mach_absolute_time();
      v6 = 136315394;
      v7 = "[AFMyriadCoordinator _advertiseWith:afterDelay:maxInterval:thenExecute:]_block_invoke_2";
      v8 = 2048;
      Milliseconds = AFMachAbsoluteTimeGetMilliseconds(v5);
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s BTLE daemon asked to start advertise at: %lld", &v6, 0x16u);

      v2 = v1[4];
    }

    result = [*(v2 + 352) startScanningAndAdvertisingWithData:v1[5]];
    *(v1[4] + 440) = 1;
    *(v1[4] + 441) = 1;
  }

  return result;
}

- (void)advertiseWith:(id)with afterDelay:(float)delay maxInterval:(float)interval
{
  withCopy = with;
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AFMyriadCoordinator_advertiseWith_afterDelay_maxInterval___block_invoke;
  block[3] = &unk_1E73484C0;
  block[4] = self;
  v12 = withCopy;
  delayCopy = delay;
  intervalCopy = interval;
  v10 = withCopy;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __60__AFMyriadCoordinator_advertiseWith_afterDelay_maxInterval___block_invoke(uint64_t a1, double a2, double a3)
{
  *(*(a1 + 32) + 248) = 7;
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __60__AFMyriadCoordinator_advertiseWith_afterDelay_maxInterval___block_invoke_2;
  v6[3] = &unk_1E73497C8;
  v6[4] = v4;
  return [v4 _advertiseWith:v3 afterDelay:v6 maxInterval:a2 thenExecute:a3];
}

void __60__AFMyriadCoordinator_advertiseWith_afterDelay_maxInterval___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 176);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__AFMyriadCoordinator_advertiseWith_afterDelay_maxInterval___block_invoke_3;
  block[3] = &unk_1E73497C8;
  block[4] = v1;
  dispatch_async(v2, block);
}

- (void)advertiseWith:(id)with
{
  withCopy = with;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AFMyriadCoordinator_advertiseWith___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = withCopy;
  v6 = withCopy;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __37__AFMyriadCoordinator_advertiseWith___block_invoke(uint64_t a1, double a2, double a3)
{
  *(*(a1 + 32) + 248) = 7;
  LODWORD(a3) = 0.5;
  return [*(a1 + 32) _advertiseWith:*(a1 + 40) afterDelay:0 maxInterval:0.0 thenExecute:a3];
}

- (void)_startAdvertising:(id)advertising afterDelay:(float)delay maxInterval:(float)interval
{
  self->_recordType = 7;
  asAdvertisementData = [advertising asAdvertisementData];
  *&v8 = delay;
  *&v9 = interval;
  [(AFMyriadCoordinator *)self _advertiseWith:asAdvertisementData afterDelay:0 maxInterval:v8 thenExecute:v9];
}

- (void)startAdvertising:(id)advertising afterDelay:(float)delay maxInterval:(float)interval
{
  advertisingCopy = advertising;
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AFMyriadCoordinator_startAdvertising_afterDelay_maxInterval___block_invoke;
  block[3] = &unk_1E73484C0;
  block[4] = self;
  v12 = advertisingCopy;
  delayCopy = delay;
  intervalCopy = interval;
  v10 = advertisingCopy;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __63__AFMyriadCoordinator_startAdvertising_afterDelay_maxInterval___block_invoke(uint64_t a1, double a2, double a3)
{
  LODWORD(a2) = *(a1 + 48);
  LODWORD(a3) = *(a1 + 52);
  return [*(a1 + 32) _startAdvertising:*(a1 + 40) afterDelay:a2 maxInterval:a3];
}

- (void)_advertiseIndefinite:(id)indefinite
{
  indefiniteCopy = indefinite;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__AFMyriadCoordinator__advertiseIndefinite___block_invoke;
  v6[3] = &unk_1E7349860;
  v7 = indefiniteCopy;
  selfCopy = self;
  v5 = indefiniteCopy;
  [(AFMyriadCoordinator *)self _waitWiProxAndExecute:v6];
}

void __44__AFMyriadCoordinator__advertiseIndefinite___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = getWPHeySiriAdvertisingData();
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v2)
  {
    v4 = [*(a1 + 32) asAdvertisementData];
    [v3 setObject:v4 forKey:v2];
  }

  [*(a1 + 40) _enterBLEDiagnosticMode];
  v5 = *(a1 + 40);
  if (*(v5 + 319) == 1)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = mach_absolute_time();
      v9 = 136315394;
      v10 = "[AFMyriadCoordinator _advertiseIndefinite:]_block_invoke";
      v11 = 2048;
      Milliseconds = AFMachAbsoluteTimeGetMilliseconds(v8);
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s BTLE daemon asked to start advertise at: %lld", &v9, 0x16u);

      v5 = *(a1 + 40);
    }

    [*(v5 + 352) startScanningAndAdvertisingWithData:v3];
    *(*(a1 + 40) + 440) = 1;
    *(*(a1 + 40) + 441) = 1;
  }
}

- (void)_advertise:(id)_advertise afterDelay:(float)delay maxInterval:(float)interval andMoveTo:(unint64_t)to
{
  self->_nextState = to;
  asAdvertisementData = [_advertise asAdvertisementData];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__AFMyriadCoordinator__advertise_afterDelay_maxInterval_andMoveTo___block_invoke;
  v11[3] = &unk_1E73497C8;
  v11[4] = self;
  *&v10 = interval;
  [(AFMyriadCoordinator *)self _advertiseWith:asAdvertisementData afterDelay:v11 maxInterval:COERCE_DOUBLE(LODWORD(delay)) thenExecute:v10];
}

- (void)_advertiseSuppressTriggerInOutput
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = mach_absolute_time();
  if (_AFMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
  }

  v4 = *&_AFMachAbsoluteTimeRate_rate;
  voiceTriggerTime = self->_voiceTriggerTime;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v10 = v4 * v3 / 1000000000.0 - *&_AFMachAbsoluteTimeRate_rate * voiceTriggerTime / 1000000000.0;
    previousState = self->_previousState;
    v12 = v6;
    v13 = [(AFMyriadCoordinator *)self _stateAsString:previousState];
    v14 = [(AFMyriadCoordinator *)self _stateAsString:self->_myriadState];
    clientIsDeciding = self->_clientIsDeciding;
    v16 = self->_voiceTriggerTime;
    *buf = 136316418;
    v20 = "[AFMyriadCoordinator _advertiseSuppressTriggerInOutput]";
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = v14;
    v25 = 1024;
    v26 = clientIsDeciding;
    v27 = 2048;
    v28 = v16;
    v29 = 2048;
    v30 = v10;
    _os_log_debug_impl(&dword_1912FE000, v12, OS_LOG_TYPE_DEBUG, "%s fromState: %@, myriadState: %@, is _clientIsDeciding: %d, _voiceTriggerTime: %llu, secondsSinceVoiceTrigger: %f", buf, 0x3Au);
  }

  if ([(AFMyriadCoordinator *)self _okayToSuppressOnOutput])
  {
    v18 = 1056964608;
    *buf = 0;
    if (self->_voiceTriggerTime)
    {
      [(AFMyriadCoordinator *)self setupAdvIntervalsInDelay:buf interval:&v18 withSlowdown:0];
    }

    asAdvertisementData = [(AFMyriadRecord *)self->_triggerRecord asAdvertisementData];
    [(AFMyriadCoordinator *)self _createMyriadSessionIfRequired];
    [(AFMyriadCoordinator *)self _addElectionAdvertisementDataToMyriadSession:asAdvertisementData];
    LODWORD(v9) = v18;
    LODWORD(v8) = *buf;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __56__AFMyriadCoordinator__advertiseSuppressTriggerInOutput__block_invoke;
    v17[3] = &unk_1E73497C8;
    v17[4] = self;
    [(AFMyriadCoordinator *)self _advertiseWith:asAdvertisementData afterDelay:v17 maxInterval:v8 thenExecute:v9];
  }
}

uint64_t __56__AFMyriadCoordinator__advertiseSuppressTriggerInOutput__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _endAdvertising:0];
  [*(a1 + 32) _resetAudioData];
  v2 = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4 <= 5)
  {
    if (v4 > 2)
    {
      [*(a1 + 32) _winElection];
      v2 = 4;
      return [*(a1 + 32) enterState:v2];
    }

    if (!v4)
    {
LABEL_17:
      v2 = 2;
      return [*(a1 + 32) enterState:v2];
    }

    if (v4 != 1)
    {
      if (v4 != 2)
      {
        return [*(a1 + 32) enterState:v2];
      }

      goto LABEL_4;
    }

LABEL_13:
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v7 = v5;
      v8 = [v3 _stateAsString:v4];
      v9 = [*(a1 + 32) _stateAsString:*(*(a1 + 32) + 8)];
      v10 = *(*(a1 + 32) + 330);
      v11 = 136315906;
      v12 = "[AFMyriadCoordinator _advertiseSuppressTriggerInOutput]_block_invoke";
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      v17 = 1024;
      v18 = v10;
      _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s fromState: %@, myriadState: %@, is _clientIsDeciding: %d", &v11, 0x26u);

      v3 = *(a1 + 32);
    }

    if (*(v3 + 330) == 1)
    {
      [v3 _winElection];
    }

    goto LABEL_17;
  }

  if (v4 <= 0x11)
  {
    if (((1 << v4) & 0x33F40) != 0)
    {
LABEL_4:
      v2 = *(v3 + 24);
      return [*(a1 + 32) enterState:v2];
    }

    if (v4 == 7)
    {
      v2 = 10;
      return [*(a1 + 32) enterState:v2];
    }

    if (v4 == 14)
    {
      goto LABEL_13;
    }
  }

  return [*(a1 + 32) enterState:v2];
}

- (void)_advertiseSlowdown
{
  v21 = *MEMORY[0x1E69E9840];
  *&self->_delayTarget = 0x3F8000003EE66668;
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v16 = "[AFMyriadCoordinator _advertiseSlowdown]";
    v17 = 2048;
    v18 = 0x3FDCCCCD00000000;
    v19 = 2048;
    v20 = 0x3FF0000000000000;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE slowdown advertising delay: %f finished, interval: %f", buf, 0x20u);
  }

  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v4 = +[AFAnalytics sharedAnalytics];
    v13 = @"delay";
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_slowdownMsecs];
    v14 = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v4 logEventWithType:2007 context:v6];
  }

  self->_clientDoneRespondingToSlowdown = 0;
  maxSlowdownRecord = self->_maxSlowdownRecord;
  self->_maxSlowdownRecord = 0;

  kdebug_trace();
  v8 = [(AFMyriadCoordinator *)self slowdownRecord:LOWORD(self->_slowdownMsecs)];
  asAdvertisementData = [v8 asAdvertisementData];
  *&v10 = self->_delayTarget;
  *&v11 = self->_advertInterval;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__AFMyriadCoordinator__advertiseSlowdown__block_invoke;
  v12[3] = &unk_1E73497C8;
  v12[4] = self;
  [(AFMyriadCoordinator *)self _advertiseWith:asAdvertisementData afterDelay:v12 maxInterval:v10 thenExecute:v11];
}

uint64_t __41__AFMyriadCoordinator__advertiseSlowdown__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = 136315138;
    v7 = "[AFMyriadCoordinator _advertiseSlowdown]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE ending slowdown advertising, 2nd pass not seen", &v6, 0xCu);
  }

  [*(a1 + 32) _endAdvertising:0];
  *(*(a1 + 32) + 296) = 0;
  *(*(a1 + 32) + 327) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 304);
  *(v3 + 304) = 0;

  return [*(a1 + 32) enterState:0];
}

- (void)_advertiseTrigger
{
  v47[2] = *MEMORY[0x1E69E9840];
  v41 = 0.5;
  v42 = 0.0;
  if (self->_clientIsWatchTrumpPromote)
  {
    goto LABEL_32;
  }

  if (self->_clientIsDirectActivating)
  {
    deviceTrumpDelay = self->_deviceTrumpDelay;
    v42 = deviceTrumpDelay;
    goto LABEL_9;
  }

  if (self->_clientIsInEarActivation || self->_clientRespondingToCarPlay)
  {
    deviceInEarDelay = self->_deviceInEarDelay;
    deviceInEarInterval = self->_deviceInEarInterval;
    v41 = deviceInEarInterval;
    v42 = deviceInEarDelay;
  }

  else
  {
LABEL_32:
    if (self->_voiceTriggerTime)
    {
      [(AFMyriadCoordinator *)self setupAdvIntervalsInDelay:&v42 interval:&v41 withSlowdown:0];
    }
  }

LABEL_9:
  if (!self->_clientIsDirectActivating)
  {
    [(AFNotifyStatePublisher *)self->_electionBeginPublisher publishState:[(AFMyriadCoordinator *)self _nextElectionPublisherState]];
  }

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    testInducedSlowdownMsecs = self->_testInducedSlowdownMsecs;
    slowdownMsecs = self->_slowdownMsecs;
    v9 = v6;
    _stateAsString = [(AFMyriadCoordinator *)self _stateAsString];
    *buf = 136315906;
    v44 = "[AFMyriadCoordinator _advertiseTrigger]";
    v45 = 1024;
    *v46 = testInducedSlowdownMsecs;
    *&v46[4] = 1024;
    *&v46[6] = slowdownMsecs;
    LOWORD(v47[0]) = 2112;
    *(v47 + 2) = _stateAsString;
    _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s BTLE checking if slowdown needed testmsecs=%d msecs=%d state=%@", buf, 0x22u);
  }

  v11 = self->_testInducedSlowdownMsecs;
  if (v11 < 1 || self->_clientDoneRespondingToSlowdown)
  {
    v12 = self->_slowdownMsecs;
    if (v12 <= 0)
    {
      v13 = AFSiriLogContextConnection;
    }

    else
    {
      v13 = AFSiriLogContextConnection;
      if (self->_clientIsRespondingToSlowdown)
      {
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v44 = "[AFMyriadCoordinator _advertiseTrigger]";
          _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s BTLE advertising slowdown delay, 2nd pass seen", buf, 0xCu);
          v12 = self->_slowdownMsecs;
        }

        *buf = 0;
        v37 = 1056964608;
        [(AFMyriadCoordinator *)self setupAdvIntervalsInDelay:buf interval:&v37 withSlowdown:v12];
        [(AFMyriadCoordinator *)self _adjustActionWindowsFromSlowdown:self->_slowdownMsecs];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v15 = objc_opt_respondsToSelector();

        if (v15)
        {
          v16 = objc_loadWeakRetained(&self->_delegate);
          *&v17 = self->_slowdownMsecs;
          [v16 myriadCoordinator:self willStartAdvertisingWithSlowDownInterval:v17];
        }

        self->_slowdownMsecs = 0;
        self->_clientIsRespondingToSlowdown = 0;
        maxSlowdownRecord = self->_maxSlowdownRecord;
        self->_maxSlowdownRecord = 0;

        [(AFMyriadRecord *)self->_triggerRecord generateTiebreaker];
        asAdvertisementData = [(AFMyriadRecord *)self->_triggerRecord asAdvertisementData];
        LODWORD(v20) = *buf;
        LODWORD(v21) = v37;
        v32 = MEMORY[0x1E69E9820];
        v33 = 3221225472;
        v34 = __40__AFMyriadCoordinator__advertiseTrigger__block_invoke_508;
        v35 = &unk_1E73497C8;
        selfCopy = self;
        v22 = &v32;
        goto LABEL_29;
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v44 = "[AFMyriadCoordinator _advertiseTrigger]";
      v45 = 2048;
      *v46 = v42;
      *&v46[8] = 2048;
      v47[0] = v41;
      _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s BTLE computed advertising delay: %f finished, interval: %f", buf, 0x20u);
    }

    asAdvertisementData = [(AFMyriadRecord *)self->_triggerRecord asAdvertisementData];
    *&v21 = v41;
    *&v20 = v42;
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __40__AFMyriadCoordinator__advertiseTrigger__block_invoke_509;
    v30 = &unk_1E73497C8;
    selfCopy2 = self;
    v22 = &v27;
  }

  else
  {
    v23 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v44 = "[AFMyriadCoordinator _advertiseTrigger]";
      _os_log_impl(&dword_1912FE000, v23, OS_LOG_TYPE_INFO, "%s BTLE advertising TEST INDUCED slowdown delay, 2nd pass seen", buf, 0xCu);
      v11 = self->_testInducedSlowdownMsecs;
    }

    v24 = v41;
    self->_delayTarget = v42;
    self->_advertInterval = v24;
    v25 = [(AFMyriadCoordinator *)self slowdownRecord:v11];
    asAdvertisementData = [v25 asAdvertisementData];

    self->_slowdownMsecs = 0;
    self->_clientIsRespondingToSlowdown = 0;
    v26 = self->_maxSlowdownRecord;
    self->_maxSlowdownRecord = 0;

    *&v20 = self->_delayTarget;
    *&v21 = self->_advertInterval;
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __40__AFMyriadCoordinator__advertiseTrigger__block_invoke;
    v38[3] = &unk_1E7348498;
    v39 = v42;
    v40 = v41;
    v38[4] = self;
    v22 = v38;
  }

LABEL_29:
  [(AFMyriadCoordinator *)self _advertiseWith:asAdvertisementData afterDelay:v22 maxInterval:v20 thenExecute:v21, v27, v28, v29, v30, selfCopy2, v32, v33, v34, v35, selfCopy];
}

void __40__AFMyriadCoordinator__advertiseTrigger__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v9 = *(a1 + 44);
  v10 = v2;
  [*(a1 + 32) setupAdvIntervalsInDelay:&v10 interval:&v9 withSlowdown:*(*(a1 + 32) + 300)];
  [*(a1 + 32) _adjustActionWindowsFromSlowdown:*(*(a1 + 32) + 300)];
  [*(*(a1 + 32) + 240) generateTiebreaker];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v12 = "[AFMyriadCoordinator _advertiseTrigger]_block_invoke";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE advertising slowdown finished, advertising delayed trigger", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = [v4[30] asAdvertisementData];
  LODWORD(v7) = v9;
  LODWORD(v6) = v10;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__AFMyriadCoordinator__advertiseTrigger__block_invoke_504;
  v8[3] = &unk_1E73497C8;
  v8[4] = *(a1 + 32);
  [v4 _advertiseWith:v5 afterDelay:v8 maxInterval:v6 thenExecute:v7];
}

void __40__AFMyriadCoordinator__advertiseTrigger__block_invoke_508(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v1 _endAdvertisingWithDeviceProhibitions:v2];
}

void __40__AFMyriadCoordinator__advertiseTrigger__block_invoke_509(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v1 _endAdvertisingWithDeviceProhibitions:v2];
}

void __40__AFMyriadCoordinator__advertiseTrigger__block_invoke_504(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  [v1 _endAdvertisingWithDeviceProhibitions:v2];
}

- (void)_resetAdvertisementTimings
{
  advertTriggerAdvStartTime = self->_advTiming.advertTriggerAdvStartTime;
  self->_advTiming.advertTriggerAdvStartTime = 0;

  advertTriggerEndTime = self->_advTiming.advertTriggerEndTime;
  self->_advTiming.advertTriggerEndTime = 0;
}

- (void)setupAdvIntervalsInDelay:(float *)delay interval:(float *)interval withSlowdown:(int)slowdown
{
  v31 = *MEMORY[0x1E69E9840];
  v9 = slowdown / 1000.0;
  voiceTriggerTime = self->_voiceTriggerTime;
  if (_AFMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
  }

  v11 = *&_AFMachAbsoluteTimeRate_rate * voiceTriggerTime / 1000000000.0;
  v12 = v9;
  v13 = mach_absolute_time();
  if (_AFMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
  }

  v14 = v11 + 1.45000005 + v12 + *&_AFMachAbsoluteTimeRate_rate * v13 / -1000000000.0;
  v15 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v21 = 136316162;
    v22 = "[AFMyriadCoordinator setupAdvIntervalsInDelay:interval:withSlowdown:]";
    v23 = 2048;
    v24 = v11;
    v25 = 2048;
    v26 = v11 + 1.45000005 + v12;
    v27 = 2048;
    v28 = v14;
    v29 = 1024;
    slowdownCopy = slowdown;
    _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s endTime: %f targetTime: %f, advInterval: %f, slowDown: %d (ms)", &v21, 0x30u);
  }

  v16 = 1.0;
  if (v14 <= 1.0)
  {
    v17 = 0.0;
    v16 = 0.5;
    if (v14 >= 0.5)
    {
      v16 = v14;
    }
  }

  else if ((v14 + -1.0) <= 0.45)
  {
    v17 = v14 + -1.0;
  }

  else
  {
    v17 = 0.0;
  }

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    [(AFMyriadPreferences *)self->_preferences testDeviceDelay];
    if (v18 != 0.0)
    {
      v17 = v18;
    }

    v19 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v21 = 136315906;
      v22 = "[AFMyriadCoordinator setupAdvIntervalsInDelay:interval:withSlowdown:]";
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v12;
      v20 = "%s adjusted advInterval: %f (secs) device delay: %f (secs), slowDown: %f (secs)";
LABEL_22:
      _os_log_impl(&dword_1912FE000, v19, OS_LOG_TYPE_INFO, v20, &v21, 0x2Au);
    }
  }

  else
  {
    v19 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v21 = 136315906;
      v22 = "[AFMyriadCoordinator setupAdvIntervalsInDelay:interval:withSlowdown:]";
      v23 = 2048;
      v24 = v16;
      v25 = 2048;
      v26 = v17;
      v27 = 2048;
      v28 = v12;
      v20 = "%s adjusted advInterval: %f (secs) adjusted delay: %f (secs), slowDown: %f (secs)";
      goto LABEL_22;
    }
  }

  *delay = v17;
  *interval = v16;
}

- (void)_duringNextWindowEnterState:(unint64_t)state
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__AFMyriadCoordinator__duringNextWindowEnterState___block_invoke;
  v5[3] = &unk_1E7346CF0;
  objc_copyWeak(v6, &location);
  v6[1] = state;
  [(AFMyriadCoordinator *)self _duringNextWindowExecute:v5];
  objc_destroyWeak(v6);
  objc_destroyWeak(&location);
}

void __51__AFMyriadCoordinator__duringNextWindowEnterState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained enterState:*(a1 + 40)];
}

- (void)_duringNextWindowExecute:(id)execute
{
  v16 = *MEMORY[0x1E69E9840];
  executeCopy = execute;
  if (self->_triggerTime)
  {
    date = [MEMORY[0x1E695DF00] date];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeInterval:self->_triggerTime sinceDate:(self->_nDeltaTs * 1.5)];
    if ([v6 compare:date] == -1)
    {
      do
      {
        v8 = self->_nDeltaTs + 1;
        self->_nDeltaTs = v8;
        v7 = [MEMORY[0x1E695DF00] dateWithTimeInterval:self->_triggerTime sinceDate:(v8 * 1.5)];

        v6 = v7;
      }

      while ([v7 compare:date] == -1);
    }

    else
    {
      v7 = v6;
    }

    v9 = [(NSDateFormatter *)self->_dateFormat stringFromDate:v7];
    v10 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "[AFMyriadCoordinator _duringNextWindowExecute:]";
      v14 = 2112;
      v15 = v9;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s BTLE next action window: %@", &v12, 0x16u);
    }

    [(AFMyriadCoordinator *)self _createDispatchTimerForEvent:v7 toExecute:executeCopy];
  }

  else
  {
    v11 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[AFMyriadCoordinator _duringNextWindowExecute:]";
      _os_log_error_impl(&dword_1912FE000, v11, OS_LOG_TYPE_ERROR, "%s BTLE Attempt to execute time windowed action when trigger time not initialized", &v12, 0xCu);
    }
  }
}

- (void)_adjustActionWindowsFromSlowdown:(int)slowdown
{
  v18 = *MEMORY[0x1E69E9840];
  if (slowdown)
  {
    v5 = [(NSDate *)self->_triggerTime dateByAddingTimeInterval:slowdown / 1000.0];
    triggerTime = self->_triggerTime;
    self->_triggerTime = v5;

    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      dateFormat = self->_dateFormat;
      v9 = self->_triggerTime;
      v10 = v7;
      v11 = [(NSDateFormatter *)dateFormat stringFromDate:v9];
      v12 = 136315650;
      v13 = "[AFMyriadCoordinator _adjustActionWindowsFromSlowdown:]";
      v14 = 1024;
      slowdownCopy = slowdown;
      v16 = 2112;
      v17 = v11;
      _os_log_debug_impl(&dword_1912FE000, v10, OS_LOG_TYPE_DEBUG, "%s BTLE action window adjusted by slowdown signal %d msecs new time: %@", &v12, 0x1Cu);
    }
  }
}

- (void)_resetActionWindows
{
  triggerTime = self->_triggerTime;
  self->_triggerTime = 0;

  self->_slowdownMsecs = 0;
}

- (void)_setupActionWindows
{
  v14 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  triggerTime = self->_triggerTime;
  self->_triggerTime = date;

  self->_nDeltaTs = 0;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    dateFormat = self->_dateFormat;
    v7 = self->_triggerTime;
    v8 = v5;
    v9 = [(NSDateFormatter *)dateFormat stringFromDate:v7];
    v10 = 136315394;
    v11 = "[AFMyriadCoordinator _setupActionWindows]";
    v12 = 2112;
    v13 = v9;
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s BTLE action window trigger time: %@", &v10, 0x16u);
  }
}

- (id)_triggerTypeForArbitrationParticipationFrom:(int64_t)from
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = self->_recordType - 1;
  if (v4 > 9)
  {
    v5 = &unk_1F056E580;
  }

  else
  {
    v5 = qword_1E7346FC0[v4];
  }

  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = v6;
    v10 = [v8 numberWithInteger:from];
    v11 = 136315650;
    v12 = "[AFMyriadCoordinator _triggerTypeForArbitrationParticipationFrom:]";
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v5;
    _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback recordType: %@, type: %@", &v11, 0x20u);
  }

  return v5;
}

- (void)_updateArbitrationParticipationContextWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v23 = "[AFMyriadCoordinator _updateArbitrationParticipationContextWithCompletion:]";
      _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback", buf, 0xCu);
    }

    v6 = objc_alloc_init(AFArbitrationParticipationContext);
    [(AFArbitrationParticipationContext *)v6 setOwnAdvertisement:self->_triggerRecord];
    if ([(NSMutableDictionary *)self->_repliesBeforeDecision count])
    {
      [(AFMyriadCoordinator *)self _sortedReplies:self->_repliesBeforeDecision];
    }

    else
    {
      [(AFMyriadCoordinator *)self _sortedReplies];
    }
    v7 = ;
    if (v7)
    {
      [(AFArbitrationParticipationContext *)v6 setAdvertisements:v7];
    }

    [(AFArbitrationParticipationContext *)v6 setRequestStartDate:self->_triggerTime];
    [(AFArbitrationParticipationContext *)v6 setDecisionIsWon:self->_lastDecision];
    [(AFMyriadGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator lastActivationTime];
    [(AFArbitrationParticipationContext *)v6 setLastActivationTime:?];
    v8 = [(AFMyriadCoordinator *)self _triggerTypeForArbitrationParticipationFrom:self->_recordType];
    [(AFArbitrationParticipationContext *)v6 setTriggerType:v8];
    v9 = mach_absolute_time();
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    v10 = *&_AFMachAbsoluteTimeRate_rate;
    if (self->_recordType == 10)
    {
      v11 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-(*&_AFMachAbsoluteTimeRate_rate * v9 / 1000000000.0 - *&_AFMachAbsoluteTimeRate_rate * self->_voiceTriggerTime / 1000000000.0)];
      if (v11)
      {
        [(AFArbitrationParticipationContext *)v6 setVoiceTriggerDate:v11];
      }
    }

    myriadSession = self->_myriadSession;
    if (myriadSession)
    {
      v13 = [(AFMyriadSession *)myriadSession copy];
      myriadInstrumentation = self->_myriadInstrumentation;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __76__AFMyriadCoordinator__updateArbitrationParticipationContextWithCompletion___block_invoke;
      v17[3] = &unk_1E7346E08;
      v18 = v6;
      selfCopy = self;
      v20 = v13;
      v21 = completionCopy;
      v15 = v13;
      [(AFMyriadInstrumentation *)myriadInstrumentation getPreviousBoostsWithCompletion:v17];
    }

    else
    {
      v16 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v23 = "[AFMyriadCoordinator _updateArbitrationParticipationContextWithCompletion:]";
        _os_log_error_impl(&dword_1912FE000, v16, OS_LOG_TYPE_ERROR, "%s #myriad #feedback session is nil.", buf, 0xCu);
      }

      completionCopy[2](completionCopy);
    }
  }
}

void __76__AFMyriadCoordinator__updateArbitrationParticipationContextWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v16 = "[AFMyriadCoordinator _updateArbitrationParticipationContextWithCompletion:]_block_invoke";
    _os_log_debug_impl(&dword_1912FE000, v4, OS_LOG_TYPE_DEBUG, "%s #myriad #feedback getPreviousBoostsWithCompletion", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = objc_alloc(MEMORY[0x1E69CE948]);
  v7 = [v3 data];
  v8 = [v6 initWithData:v7];
  [v5 setScoreBoosters:v8];

  if (*(*(a1 + 40) + 632) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v9 = *(a1 + 32);
    v10 = *(*(a1 + 40) + 632);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __76__AFMyriadCoordinator__updateArbitrationParticipationContextWithCompletion___block_invoke_490;
    v13[3] = &unk_1E73494D8;
    v11 = *(a1 + 48);
    v14 = *(a1 + 56);
    [v10 arbitrationDidUpdateWithContext:v9 session:v11 completion:v13];
  }

  else
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[AFMyriadCoordinator _updateArbitrationParticipationContextWithCompletion:]_block_invoke_2";
      _os_log_error_impl(&dword_1912FE000, v12, OS_LOG_TYPE_ERROR, "%s #myriad #feedback arbitration event delgate failed.", buf, 0xCu);
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)_pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:(double)interval advertisementDelay:(double)delay
{
  v50 = *MEMORY[0x1E69E9840];
  clientIsDirectActivating = self->_clientIsDirectActivating;
  if (clientIsDirectActivating || self->_clientIsInEarActivation)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v41 = "[AFMyriadCoordinator _pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:advertisementDelay:]";
      v42 = 1024;
      *v43 = 1;
      *&v43[4] = 1024;
      *&v43[6] = clientIsDirectActivating;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s #myriad Not pushing myriad advertisement context - HAL context donation enabled: %d, direct activation: %d", buf, 0x18u);
    }
  }

  else
  {
    v9 = mach_absolute_time();
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    v10 = *&_AFMachAbsoluteTimeRate_rate * v9 / 1000000000.0 - *&_AFMachAbsoluteTimeRate_rate * self->_voiceTriggerTime / 1000000000.0;
    if (v10 >= 0.0)
    {
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceReferenceDate];
      v13 = v12;
      v14 = v12 - v10;
      currentElectionAdvertisementData = [(AFMyriadSession *)self->_myriadSession currentElectionAdvertisementData];
      v16 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        voiceTriggerTime = self->_voiceTriggerTime;
        *buf = 136316674;
        v41 = "[AFMyriadCoordinator _pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:advertisementDelay:]";
        v42 = 2048;
        *v43 = v13;
        *&v43[8] = 2048;
        *&v43[10] = v14;
        *&v43[18] = 2048;
        *&v43[20] = v10;
        v44 = 2048;
        v45 = voiceTriggerTime;
        v46 = 2048;
        v47 = v9;
        v48 = 2112;
        v49 = currentElectionAdvertisementData;
        _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s #myriad adv dispatch time: %f, voice trigger end time: %f, time since voice trigger: %f (curr time: %llu, time since device boot: %llu), advertisement: %@", buf, 0x48u);
      }

      if (currentElectionAdvertisementData)
      {
        v18 = [[AFMyriadAdvertisementContextRecord alloc] initWithAdvertisementRecordType:self->_recordType voiceTriggerEndTime:currentElectionAdvertisementData advertisementPayload:self->_designatedSelfID deviceID:v14];
        contextRecord = self->_contextRecord;
        self->_contextRecord = v18;

        [(AFMyriadAdvertisementContextRecord *)self->_contextRecord setAdvertisementDispatchTime:v13];
        myriadAdvertisementContextAsData = [(AFMyriadAdvertisementContextRecord *)self->_contextRecord myriadAdvertisementContextAsData];
        if (AFIsInternalInstall_onceToken != -1)
        {
          dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
        }

        if (AFIsInternalInstall_isInternal == 1)
        {
          v21 = [(AFMyriadAdvertisementContextRecord *)self->_contextRecord description];
        }

        else
        {
          v21 = 0;
        }

        currentElectionAdvertisementId = [(AFMyriadSession *)self->_myriadSession currentElectionAdvertisementId];
        if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
        {
          v25 = +[AFAnalytics sharedAnalytics];
          v35[0] = MEMORY[0x1E69E9820];
          v35[1] = 3221225472;
          v35[2] = __117__AFMyriadCoordinator__pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval_advertisementDelay___block_invoke;
          v35[3] = &unk_1E7346D90;
          v38 = v14;
          v39 = v13;
          v36 = currentElectionAdvertisementId;
          v37 = v21;
          [v25 logEventWithType:2013 contextProvider:v35];
        }

        v26 = [AFMyriadAdvertisementContext alloc];
        [(AFMyriadCoordinator *)self _contextFetchDelayForAdvertimentInterval:interval advertisementDelay:delay];
        v27 = [(AFMyriadAdvertisementContext *)v26 initWithGeneration:0 contextData:myriadAdvertisementContextAsData contextFetchDelay:?];
        advContextManager = self->_advContextManager;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __117__AFMyriadCoordinator__pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval_advertisementDelay___block_invoke_2;
        v30[3] = &unk_1E7346DE0;
        v30[4] = self;
        v31 = currentElectionAdvertisementId;
        v33 = v14;
        v34 = v13;
        v32 = currentElectionAdvertisementData;
        v29 = currentElectionAdvertisementId;
        [(AFMyriadAdvertisementContextManager *)advContextManager pushMyriadAdvertisementContext:v27 completionHandler:v30];
      }

      else
      {
        v22 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v23 = self->_voiceTriggerTime;
          *buf = 136315906;
          v41 = "[AFMyriadCoordinator _pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:advertisementDelay:]";
          v42 = 1024;
          *v43 = 1;
          *&v43[4] = 2048;
          *&v43[6] = v23;
          *&v43[14] = 2048;
          *&v43[16] = v9;
          _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s #myriad Not pushing myriad advertisement context - Valid voicetrigger endtime: %d (curr time: %llu, time since device boot: %llu)", buf, 0x26u);
        }
      }
    }
  }
}

id __117__AFMyriadCoordinator__pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval_advertisementDelay___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 48)];
  [v2 setObject:v3 forKey:@"voiceTriggerEndTime"];

  v4 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 56)];
  [v2 setObject:v4 forKey:@"advertisementDispatchTime"];

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = [v5 UUIDString];
    [v2 setObject:v6 forKey:@"contextAdvertisementId"];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    [v2 setObject:v7 forKey:@"advertisementContext"];
  }

  v8 = [v2 copy];

  return v8;
}

void __117__AFMyriadCoordinator__pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval_advertisementDelay___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 176);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __117__AFMyriadCoordinator__pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval_advertisementDelay___block_invoke_3;
  block[3] = &unk_1E7346DB8;
  v13 = v6;
  v14 = v8;
  v15 = v7;
  v16 = v5;
  v18 = *(a1 + 56);
  v17 = *(a1 + 48);
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, block);
}

void __117__AFMyriadCoordinator__pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval_advertisementDelay___block_invoke_3(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v37 = "[AFMyriadCoordinator _pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:advertisementDelay:]_block_invoke_3";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #myriad Pushing Myriad advertisement context is complete", buf, 0xCu);
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    v6 = [*(*(a1 + 40) + 512) currentElectionAdvertisementId];
    v5 = v6;
    v7 = *(a1 + 48);
    if (v7 && v6)
    {
      if ([*(a1 + 48) isEqual:v6])
      {
        if ([*(a1 + 40) _shouldUseContextCollector])
        {
          v26 = v5;
          v8 = [*(a1 + 56) count];
          if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
          {
            v9 = +[AFAnalytics sharedAnalytics];
            v32 = @"count";
            v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v8];
            v33 = v10;
            v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            [v9 logEventWithType:2015 context:v11];
          }

          v12 = [*(a1 + 40) _testAndFilterAdvertisementsFromContextCollector:*(a1 + 56) voiceTriggerEndTime:*(a1 + 64) advertisementDispatchTime:*(a1 + 72) advertisement:*(a1 + 80)];
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v27 + 1) + 8 * i);
                if ([*(a1 + 40) _testAndUpdateWedgeFilter:v17])
                {
                  v18 = *(a1 + 40);
                  v19 = [v17 deviceID];
                  v20 = [v19 UUIDString];
                  v21 = [v17 asAdvertisementData];
                  [v18 _updateRepliesWith:v17 id:v20 data:v21];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
            }

            while (v14);
          }

          [*(a1 + 40) _suppressDeviceIfNeededWithVoiceTriggerEndTime:*(a1 + 72) adverisementDispatchTime:*(a1 + 80)];
          v5 = v26;
        }

        else
        {
          if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
          {
            goto LABEL_40;
          }

          v12 = +[AFAnalytics sharedAnalytics];
          [v12 logEventWithType:2017 context:0];
        }

        goto LABEL_39;
      }

      v7 = *(a1 + 48);
    }

    v22 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v37 = "[AFMyriadCoordinator _pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:advertisementDelay:]_block_invoke";
      v38 = 2112;
      v39 = v7;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s #myriad current advId: %@ is different from the advId for which the myriad context was dispatched: %@", buf, 0x20u);
      v7 = *(a1 + 48);
    }

    v34[0] = @"contextAdvertisementId";
    if (v7)
    {
      v23 = [v7 UUIDString];
    }

    else
    {
      v23 = &stru_1F0512680;
    }

    v34[1] = @"currentAdvertisementId";
    v35[0] = v23;
    if (v5)
    {
      v24 = [v5 UUIDString];
    }

    else
    {
      v24 = &stru_1F0512680;
    }

    v35[1] = v24;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    if (v5)
    {
    }

    if (v7)
    {
    }

    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v25 = +[AFAnalytics sharedAnalytics];
      [v25 logEventWithType:2016 context:v12 contextNoCopy:0];
    }

LABEL_39:

    goto LABEL_40;
  }

  v4 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v37 = "[AFMyriadCoordinator _pushMyriadAdvertisementContextToContextCollectorWithAdvertisementInterval:advertisementDelay:]_block_invoke";
    v38 = 2112;
    v39 = v3;
    _os_log_error_impl(&dword_1912FE000, v4, OS_LOG_TYPE_ERROR, "%s #myriad Error: %@", buf, 0x16u);
  }

  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v5 = +[AFAnalytics sharedAnalytics];
    [v5 logEventWithType:2014 context:0];
LABEL_40:
  }
}

- (void)_suppressDeviceIfNeededWithVoiceTriggerEndTime:(double)time adverisementDispatchTime:(double)dispatchTime
{
  v25[3] = *MEMORY[0x1E69E9840];
  v7 = dispatchTime - time;
  if (v7 >= 0.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  v9 = [(NSMutableDictionary *)self->_replies count];
  v10 = v9;
  if (v8 > 1.45000005 && v9 != 0)
  {
    replies = self->_replies;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__AFMyriadCoordinator__suppressDeviceIfNeededWithVoiceTriggerEndTime_adverisementDispatchTime___block_invoke;
    v23[3] = &unk_1E7346D68;
    *&v23[5] = time;
    *&v23[6] = dispatchTime;
    *&v23[7] = v8;
    v23[8] = v10;
    v23[4] = self;
    [(NSMutableDictionary *)replies enumerateKeysAndObjectsUsingBlock:v23];
  }

  if (self->_suppressLateTrigger)
  {
    v24[0] = @"voiceTriggerEndTime";
    v13 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    v25[0] = v13;
    v24[1] = @"advertisementDispatchTime";
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:dispatchTime];
    v25[1] = v14;
    v24[2] = @"count";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10];
    v25[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v17 = +[AFAnalytics sharedAnalytics];
      [v17 logEventWithType:2018 context:v16];
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      myriadInstrumentation = self->_myriadInstrumentation;
      v19 = [(AFMyriadCoordinator *)self _myriadStateForSelf:self->_myriadState];
      sessionId = [(AFMyriadSession *)self->_myriadSession sessionId];
      v21 = mach_absolute_time();
      LODWORD(v22) = 0.75;
      [(AFMyriadInstrumentation *)myriadInstrumentation logCDAElectionAdvertisingStarting:v19 withDelay:sessionId withInterval:v21 withCdaId:0.0 withTimestamp:v22];
    }
  }
}

void __95__AFMyriadCoordinator__suppressDeviceIfNeededWithVoiceTriggerEndTime_adverisementDispatchTime___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  if (([a3 isMe] & 1) == 0)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v7 = a1[5];
      v8 = a1[6];
      v9 = a1[7];
      v10 = a1[8];
      v11 = 136316162;
      v12 = "[AFMyriadCoordinator _suppressDeviceIfNeededWithVoiceTriggerEndTime:adverisementDispatchTime:]_block_invoke";
      v13 = 2048;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2048;
      v18 = v9;
      v19 = 2048;
      v20 = v10;
      _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s #myriad Suppressing the current device due to late trigger (voicetrigger endtime: %f, advertisement dispatch time: %f, advertisement delay: %f, myriad record count: %ld)", &v11, 0x34u);
    }

    *(a1[4] + 417) = 1;
    *a4 = 1;
  }
}

- (id)_testAndFilterAdvertisementsFromContextCollector:(id)collector voiceTriggerEndTime:(double)time advertisementDispatchTime:(double)dispatchTime advertisement:(id)advertisement
{
  v38 = *MEMORY[0x1E69E9840];
  collectorCopy = collector;
  advertisementCopy = advertisement;
  if (collectorCopy && [collectorCopy count])
  {
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __132__AFMyriadCoordinator__testAndFilterAdvertisementsFromContextCollector_voiceTriggerEndTime_advertisementDispatchTime_advertisement___block_invoke;
    v29[3] = &unk_1E7346D40;
    timeCopy = time;
    v29[4] = self;
    v30 = advertisementCopy;
    v12 = v11;
    v31 = v12;
    v24 = collectorCopy;
    [collectorCopy enumerateKeysAndObjectsUsingBlock:v29];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = v12;
    v14 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v26;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v26 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = AFSiriLogContextConnection;
          if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
          {
            v19 = *(*(&v25 + 1) + 8 * i);
            *buf = 136315394;
            v34 = "[AFMyriadCoordinator _testAndFilterAdvertisementsFromContextCollector:voiceTriggerEndTime:advertisementDispatchTime:advertisement:]";
            v35 = 2112;
            v36 = v19;
            _os_log_impl(&dword_1912FE000, v18, OS_LOG_TYPE_INFO, "%s #myriad %@", buf, 0x16u);
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v25 objects:v37 count:16];
      }

      while (v15);
    }

    v20 = v31;
    v21 = v13;

    collectorCopy = v24;
  }

  else
  {
    v22 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v34 = "[AFMyriadCoordinator _testAndFilterAdvertisementsFromContextCollector:voiceTriggerEndTime:advertisementDispatchTime:advertisement:]";
      _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s #myriad Context collector returned 0 AFMyriadAdvertisementContextRecords instances", buf, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

void __132__AFMyriadCoordinator__testAndFilterAdvertisementsFromContextCollector_voiceTriggerEndTime_advertisementDispatchTime_advertisement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 isSaneForVoiceTriggerEndTime:*(a1 + 56) endtimeDistanceThreshold:*(*(a1 + 32) + 144)])
  {
    v7 = [v6 recordForDeviceId:v5];
    v8 = v7;
    if (v7)
    {
      if ([v7 deviceGroup] == *(*(a1 + 32) + 168))
      {
        v9 = [v8 deviceID];
        if ([v9 isEqual:*(*(a1 + 32) + 360)])
        {
        }

        else
        {
          v15 = [v6 compareAdvertisementPayload:*(a1 + 40)];

          if ((v15 & 1) == 0)
          {
            [*(a1 + 48) addObject:v8];
          }
        }
      }

      else
      {
        v10 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v11 = v10;
          v12 = [v8 deviceGroup];
          v13 = [v8 deviceID];
          v14 = [v6 advertisementPayload];
          v16 = 136315906;
          v17 = "[AFMyriadCoordinator _testAndFilterAdvertisementsFromContextCollector:voiceTriggerEndTime:advertisementDispatchTime:advertisement:]_block_invoke";
          v18 = 1024;
          v19 = v12;
          v20 = 2112;
          v21 = v13;
          v22 = 2112;
          v23 = v14;
          _os_log_impl(&dword_1912FE000, v11, OS_LOG_TYPE_INFO, "%s #myriad ignoring advert from other deviceGroup %d: %@ data=%@", &v16, 0x26u);
        }
      }
    }
  }
}

- (void)_handleStateMachineErrorIfNeeded
{
  v12 = *MEMORY[0x1E69E9840];
  if (self->_stateMachineEncounteredError)
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "[AFMyriadCoordinator _handleStateMachineErrorIfNeeded]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE notify Myriad win due to state machine error", &v10, 0xCu);
    }

    v4 = mach_absolute_time();
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    self->_lastDecisionTime = (*&_AFMachAbsoluteTimeRate_rate * v4);
    if (AFIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    }

    if (AFIsInternalInstall_isInternal == 1)
    {
      [(AFMyriadCoordinator *)self _triggerABCForType:@"state_machine_error" context:0];
    }

    self->_lastDecision = 1;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      v7 = objc_loadWeakRetained(&self->_delegate);
      v8 = objc_opt_respondsToSelector();

      if (v8)
      {
        v9 = objc_loadWeakRetained(&self->_delegate);
        [v9 shouldContinue:self];
      }
    }

    kdebug_trace();
    [(AFNotifyStatePublisher *)self->_electionWinPublisher publishState:[(AFMyriadCoordinator *)self _nextElectionPublisherState]];
    self->_stateMachineEncounteredError = 0;
  }
}

- (void)_unduck
{
  if (self->_coordinationEnabled)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained)
    {
      v4 = WeakRetained;
      v5 = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = objc_loadWeakRetained(&self->_delegate);
        [v7 shouldUnduck:self];
      }
    }
  }
}

- (void)_stopAdvertisingAndListening
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__AFMyriadCoordinator__stopAdvertisingAndListening__block_invoke;
  v13[3] = &unk_1E73497C8;
  v13[4] = self;
  [(AFMyriadCoordinator *)self _waitWiProx:2000 andExecute:v13];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_delegate);
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      [v7 advertisingDidEnd:self];
    }
  }

  v8 = objc_loadWeakRetained(&self->_delegate);
  if (v8)
  {
    v9 = v8;
    v10 = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 listeningDidEnd:self];
    }
  }
}

void __51__AFMyriadCoordinator__stopAdvertisingAndListening__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFMyriadCoordinator _stopAdvertisingAndListening]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE stopping advertising and scanning of HeySiri advertisements", &v4, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 319) == 1)
  {
    [*(v3 + 352) stopScanningAndAdvertising];
    *(*(a1 + 32) + 440) = 0;
    *(*(a1 + 32) + 441) = 0;
  }
}

- (void)stopListening:(id)listening
{
  listeningCopy = listening;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__AFMyriadCoordinator_stopListening___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = listeningCopy;
  v6 = listeningCopy;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)stopListening
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AFMyriadCoordinator_stopListening__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

- (void)_stopListening:(id)listening
{
  v20 = *MEMORY[0x1E69E9840];
  listeningCopy = listening;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[AFMyriadCoordinator _stopListening:]";
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __38__AFMyriadCoordinator__stopListening___block_invoke;
  v15 = &unk_1E7349838;
  selfCopy = self;
  v6 = listeningCopy;
  v17 = v6;
  [(AFMyriadCoordinator *)self _waitWiProxAndExecute:&v12];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 listeningDidEnd:{self, v12, v13, v14, v15, selfCopy}];
    }
  }
}

uint64_t __38__AFMyriadCoordinator__stopListening___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFMyriadCoordinator _stopListening:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE stopping to scan HeySiri advertisements", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 319) == 1)
  {
    [*(v3 + 352) stopScanning];
    *(*(a1 + 32) + 440) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_stopAdvertising:(id)advertising
{
  v20 = *MEMORY[0x1E69E9840];
  advertisingCopy = advertising;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[AFMyriadCoordinator _stopAdvertising:]";
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __40__AFMyriadCoordinator__stopAdvertising___block_invoke;
  v15 = &unk_1E7349838;
  selfCopy = self;
  v6 = advertisingCopy;
  v17 = v6;
  [(AFMyriadCoordinator *)self _waitWiProxAndExecute:&v12];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 advertisingDidEnd:{self, v12, v13, v14, v15, selfCopy}];
    }
  }
}

uint64_t __40__AFMyriadCoordinator__stopAdvertising___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFMyriadCoordinator _stopAdvertising:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE stopping advertising HeySiri advertisements", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (*(v3 + 319) == 1)
  {
    [*(v3 + 352) stopAdvertising];
    *(*(a1 + 32) + 441) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)startListening:(id)listening
{
  listeningCopy = listening;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__AFMyriadCoordinator_startListening___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = listeningCopy;
  v6 = listeningCopy;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)startListening
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__AFMyriadCoordinator_startListening__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

- (void)_startListeningAfterWiProxIsReady:(BOOL)ready inState:(unint64_t)state completion:(id)completion
{
  readyCopy = ready;
  v19 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (readyCopy && !self->_BTLEReady)
  {
    v9 = AFSiriLogContextMyriad;
    if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[AFMyriadCoordinator _startListeningAfterWiProxIsReady:inState:completion:]";
      v17 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_1912FE000, v9, OS_LOG_TYPE_INFO, "%s Waiting for wiprox to be ready in state: %lu", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __76__AFMyriadCoordinator__startListeningAfterWiProxIsReady_inState_completion___block_invoke;
    v12[3] = &unk_1E7346D18;
    objc_copyWeak(v14, buf);
    v14[1] = state;
    v13 = completionCopy;
    v10 = MEMORY[0x193AFB7B0](v12);
    waitForWiproxReadinessToScan = self->_waitForWiproxReadinessToScan;
    self->_waitForWiproxReadinessToScan = v10;

    objc_destroyWeak(v14);
    objc_destroyWeak(buf);
  }

  else
  {
    [(AFMyriadCoordinator *)self _startListening:completionCopy];
  }
}

void __76__AFMyriadCoordinator__startListeningAfterWiProxIsReady_inState_completion___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 1);
    if (v4 == *(a1 + 48))
    {
      v5 = AFSiriLogContextMyriad;
      if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_INFO))
      {
        v6 = 136315394;
        v7 = "[AFMyriadCoordinator _startListeningAfterWiProxIsReady:inState:completion:]_block_invoke";
        v8 = 2048;
        v9 = v4;
        _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s starting to scan in state: %lu", &v6, 0x16u);
      }

      [v3 _startListening:*(a1 + 32)];
    }
  }
}

- (void)_startListening:(id)listening
{
  v20 = *MEMORY[0x1E69E9840];
  listeningCopy = listening;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = "[AFMyriadCoordinator _startListening:]";
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  [(AFMyriadCoordinator *)self _enterBLEDiagnosticMode];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __39__AFMyriadCoordinator__startListening___block_invoke;
  v15 = &unk_1E7349838;
  selfCopy = self;
  v6 = listeningCopy;
  v17 = v6;
  [(AFMyriadCoordinator *)self _waitWiProxAndExecute:&v12];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v8 = WeakRetained;
    v9 = objc_loadWeakRetained(&self->_delegate);
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      v11 = objc_loadWeakRetained(&self->_delegate);
      [v11 listeningDidBegin:{self, v12, v13, v14, v15, selfCopy}];
    }
  }
}

uint64_t __39__AFMyriadCoordinator__startListening___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 319) == 1)
  {
    [*(v2 + 352) startScanning];
    *(*(a1 + 32) + 440) = 1;
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)resetReplies
{
  objc_storeStrong(&self->_repliesBeforeDecision, self->_replies);
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  replies = self->_replies;
  self->_replies = v3;

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  replyCounts = self->_replyCounts;
  self->_replyCounts = v5;
}

- (void)_enteringIntoState:(unint64_t)state fromState:(unint64_t)fromState
{
  if (fromState == 1)
  {
    self->_clientIsDeciding = 0;
    [(AFMyriadCoordinator *)self _resetAdvertisementTimings];
  }
}

- (id)_stateAsString:(unint64_t)string
{
  if (string > 0x11)
  {
    return @"<AFMYR_State_ERROR>";
  }

  else
  {
    return off_1E7346F30[string];
  }
}

- (void)enterState:(unint64_t)state
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AFMyriadCoordinator_enterState___block_invoke;
  v4[3] = &unk_1E7348498;
  v4[4] = self;
  v4[5] = state;
  dispatch_async(myriadWorkQueue, v4);
}

- (void)_enterState:(unint64_t)state
{
  v90[1] = *MEMORY[0x1E69E9840];
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    _stateAsString = [(AFMyriadCoordinator *)self _stateAsString];
    v8 = [(AFMyriadCoordinator *)self _stateAsString:state];
    *buf = 136315650;
    v77 = "[AFMyriadCoordinator _enterState:]";
    v78 = 2112;
    *v79 = _stateAsString;
    *&v79[8] = 2112;
    v80 = *&v8;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s BTLE Coordinator altered state: %@ -> %@", buf, 0x20u);
  }

  self->_previousState = self->_myriadState;
  self->_myriadState = state;
  [(AFMyriadCoordinator *)self _enteringIntoState:state fromState:?];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 myriadCoordinator:self didEnterState:self->_myriadState fromState:self->_previousState];
  }

  switch(state)
  {
    case 0uLL:
      [(AFMyriadCoordinator *)self _leaveBLEDiagnosticMode];
      [(AFPowerAssertionManager *)self->_powerAssertionManager releaseAllPowerAssertions];
      self->_inTask = 0;
      self->_ignoreInTaskTimer = 0;
      overrideMyriadRecord = self->_overrideMyriadRecord;
      self->_overrideMyriadRecord = 0;

      *&self->_clientIsWatchActivation = 0;
      self->_clientIsInEarActivation = 0;
      *&self->_clientRespondingToCarPlay = 0;
      [(AFMyriadCoordinator *)self _stopAdvertisingAndListening];
      [(AFMyriadCoordinator *)self _resetActionWindows];
      if (self->_ducking)
      {
        [(AFMyriadCoordinator *)self _unduck];
      }

      if ([(NSMutableDictionary *)self->_multipleContinuations count])
      {
        if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
        {
          v14 = +[AFAnalytics sharedAnalytics];
          v89 = @"count";
          v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[NSMutableDictionary count](self->_multipleContinuations, "count")];
          v90[0] = v15;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v90 forKeys:&v89 count:1];
          [v14 logEventWithType:2009 context:v16];
        }

        v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
        multipleContinuations = self->_multipleContinuations;
        self->_multipleContinuations = v17;
      }

      [(AFMyriadCoordinator *)self _cancelTimer];
      [(AFMyriadCoordinator *)self _cancelOverallTimeout];
      [(AFMyriadCoordinator *)self _clearWiProxReadinessTimer];
      [(AFMyriadCoordinator *)self resetReplies];
      v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
      repliesBeforeDecision = self->_repliesBeforeDecision;
      self->_repliesBeforeDecision = v19;

      [(AFMyriadCoordinator *)self _handleStateMachineErrorIfNeeded];
      eventToken = self->_eventToken;
      self->_eventToken = 0;

      self->_recordType = 0;
      self->_previousState = 0;
      self->_suppressLateTrigger = 0;
      [(AFMyriadCoordinator *)self _resetAdvertisementTimings];
      [(AFMyriadCoordinator *)self _resetAudioData];
      if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        myriadInstrumentation = self->_myriadInstrumentation;
        v23 = [(AFMyriadCoordinator *)self _myriadStateForSelf:self->_myriadState];
        sessionId = [(AFMyriadSession *)self->_myriadSession sessionId];
        [(AFMyriadInstrumentation *)myriadInstrumentation logCDADeviceStateActivityEnded:v23 withCdaId:sessionId withTimestamp:mach_absolute_time()];
      }

      [(AFMyriadCoordinator *)self _clearMyriadSession];
      [(AFMyriadAdvertisementContextManager *)self->_advContextManager reset];
      currentMyriadContext = self->_currentMyriadContext;
      self->_currentMyriadContext = 0;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        v26 = +[AFAnalytics sharedAnalytics];
        v87 = @"state";
        v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_myriadState];
        v88 = v27;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
        [v26 logEventWithType:2012 context:v28];
      }

      waitForWiproxReadinessToScan = self->_waitForWiproxReadinessToScan;
      self->_waitForWiproxReadinessToScan = 0;

      return;
    case 1uLL:
      v50 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        coordinationEnabled = self->_coordinationEnabled;
        BLEActivityEnabled = self->_BLEActivityEnabled;
        *buf = 136315650;
        v77 = "[AFMyriadCoordinator _enterState:]";
        v78 = 1024;
        *v79 = coordinationEnabled;
        *&v79[4] = 1024;
        *&v79[6] = BLEActivityEnabled;
        _os_log_impl(&dword_1912FE000, v50, OS_LOG_TYPE_INFO, "%s #myriad coordinationEnabled=%d, BLEActivityEnabled=%d ", buf, 0x18u);
      }

      if ([(AFMyriadCoordinator *)self _shouldStopListeningBeforeAdvertising])
      {
        v53 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v77 = "[AFMyriadCoordinator _enterState:]";
          _os_log_impl(&dword_1912FE000, v53, OS_LOG_TYPE_INFO, "%s #myriad Force stopping BTLE scan", buf, 0xCu);
        }

        [(AFMyriadCoordinator *)self _stopListening:0];
      }

      if ([(AFMyriadContext *)self->_currentMyriadContext activationSource]!= 13 || self->_clientIsDirectActivating)
      {
        goto LABEL_60;
      }

      v54 = mach_absolute_time();
      TimeInterval = AFMachAbsoluteTimeGetTimeInterval(v54 - self->_voiceTriggerTime);
      v56 = AFSiriLogContextMyriad;
      if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_INFO))
      {
        latestRecordReceivedTime = self->_latestRecordReceivedTime;
        v58 = self->_currentMyriadContext;
        v59 = v56;
        activationExpirationTime = [(AFMyriadContext *)v58 activationExpirationTime];
        *buf = 136316418;
        v77 = "[AFMyriadCoordinator _enterState:]";
        v78 = 2048;
        *v79 = 13;
        *&v79[8] = 2048;
        v80 = TimeInterval;
        v81 = 2048;
        v82 = latestRecordReceivedTime;
        v83 = 2048;
        v84 = v54;
        v85 = 2048;
        v86 = activationExpirationTime;
        _os_log_impl(&dword_1912FE000, v59, OS_LOG_TYPE_INFO, "%s Activation source: %ld, Time since activation: %f, last election record received time: %llu, current time: %llu, activation expiration time: %llu", buf, 0x3Eu);
      }

      if (TimeInterval > 0.949999988 && v54 < [(AFMyriadContext *)self->_currentMyriadContext activationExpirationTime]&& self->_latestRecordReceivedTime >= self->_voiceTriggerTime)
      {
        myriadWorkQueue = self->_myriadWorkQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __35__AFMyriadCoordinator__enterState___block_invoke;
        block[3] = &unk_1E73497C8;
        block[4] = self;
        dispatch_async(myriadWorkQueue, block);
      }

      else
      {
LABEL_60:
        self->_inTask = 1;
        self->_ducking = 1;
        self->_nTimesContinued = 0;
        replies = self->_replies;
        triggerRecord = self->_triggerRecord;
        deviceID = [(AFMyriadRecord *)triggerRecord deviceID];
        uUIDString = [deviceID UUIDString];
        [(NSMutableDictionary *)replies setObject:triggerRecord forKey:uUIDString];

        self->_lastPHash = [(AFMyriadRecord *)self->_triggerRecord pHash];
        [(AFMyriadCoordinator *)self _createMyriadSessionIfRequired];
        asAdvertisementData = [(AFMyriadRecord *)self->_triggerRecord asAdvertisementData];
        [(AFMyriadCoordinator *)self _addElectionAdvertisementDataToMyriadSession:asAdvertisementData];

        [(AFMyriadCoordinator *)self _setupActionWindows];
        [(AFMyriadCoordinator *)self _setOverallTimeout];
        [(AFMyriadCoordinator *)self _advertiseTrigger];
      }

      return;
    case 2uLL:
      self->_slowdownMsecs = 0;
      v40 = @"listen late";
      LODWORD(v11) = 1.0;
      selfCopy8 = self;
      v42 = 4;
      goto LABEL_75;
    case 3uLL:
      self->_recordType = 9;
      lateSuppressionRecord = [(AFMyriadCoordinator *)self lateSuppressionRecord];
      goto LABEL_70;
    case 4uLL:
      if (self->_nTimesContinued >= 5)
      {
        [(AFPowerAssertionManager *)self->_powerAssertionManager releaseAllPowerAssertions];
      }

      if (!self->_inSetupMode && !self->_inTask)
      {
        goto LABEL_34;
      }

      nTimesContinued = self->_nTimesContinued;
      if (self->_clientRespondingToCarPlay && !nTimesContinued)
      {
        v38 = self->_currentMyriadContext;
        if (v38)
        {
          self->_currentMyriadContext = 0;
        }

        [(AFMyriadCoordinator *)self _resetAudioData];
        nTimesContinued = self->_nTimesContinued;
      }

      self->_nTimesContinued = nTimesContinued + 1;
      if (nTimesContinued < 20)
      {
        [(AFMyriadCoordinator *)self _stopAdvertisingAndListening];
        selfCopy5 = self;
        v36 = 5;
LABEL_82:
        [(AFMyriadCoordinator *)selfCopy5 _duringNextWindowEnterState:v36];
      }

      else
      {
LABEL_34:
        [(AFMyriadCoordinator *)self _enterState:0];
      }

      return;
    case 5uLL:
      v66 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v67 = self->_nTimesContinued;
        *buf = 136315394;
        v77 = "[AFMyriadCoordinator _enterState:]";
        v78 = 1024;
        *v79 = v67;
        _os_log_impl(&dword_1912FE000, v66, OS_LOG_TYPE_INFO, "%s BTLE task continuation: %d", buf, 0x12u);
      }

      if (AFIsHorseman_onceToken != -1)
      {
        dispatch_once(&AFIsHorseman_onceToken, &__block_literal_global_226);
      }

      if (AFIsHorseman_isHorseman != 1)
      {
        selfCopy6 = self;
        v70 = 4;
        goto LABEL_80;
      }

      self->_recordType = 2;
      lateSuppressionRecord = [(AFMyriadCoordinator *)self continuationRecord];
LABEL_70:
      directTriggerRecord = lateSuppressionRecord;
      [(AFMyriadCoordinator *)self _advertise:lateSuppressionRecord andMoveTo:4];
LABEL_71:

      break;
    case 6uLL:
      lateSuppressionRecord = [(AFMyriadCoordinator *)self directTriggerRecord];
      goto LABEL_70;
    case 7uLL:
      v49 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v77 = "[AFMyriadCoordinator _enterState:]";
        _os_log_impl(&dword_1912FE000, v49, OS_LOG_TYPE_INFO, "%s BTLE task MYR_WAIT_EMERGENCY_OR_TASK only stopping advertising, not listening", buf, 0xCu);
      }

      [(AFMyriadCoordinator *)self _stopAdvertising:0];
      [(AFMyriadCoordinator *)self _startListening:0];
      [(AFPowerAssertionManager *)self->_powerAssertionManager releaseAllPowerAssertions];
      self->_slowdownMsecs = 0;
      self->_inTask = 0;
      self->_ignoreInTaskTimer = 0;
      selfCopy5 = self;
      v36 = 10;
      goto LABEL_82;
    case 8uLL:
      self->_recordType = 4;
      emergencyRecord = [(AFMyriadCoordinator *)self emergencyRecord];
      [(AFMyriadCoordinator *)self _advertise:emergencyRecord andMoveTo:11];

      v72 = objc_loadWeakRetained(&self->_delegate);
      v73 = objc_opt_respondsToSelector();

      if ((v73 & 1) == 0)
      {
        return;
      }

      directTriggerRecord = objc_loadWeakRetained(&self->_delegate);
      [directTriggerRecord myriadCoordinatorIsAdvertisingEmergency:self];
      goto LABEL_71;
    case 9uLL:
      v43 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v77 = "[AFMyriadCoordinator _enterState:]";
        _os_log_impl(&dword_1912FE000, v43, OS_LOG_TYPE_INFO, "%s BTLE emergency is being handled", buf, 0xCu);
      }

      self->_recordType = 5;
      emergencyHandledRecord = [(AFMyriadCoordinator *)self emergencyHandledRecord];
      [(AFMyriadCoordinator *)self _advertise:emergencyHandledRecord andMoveTo:4];

      [(AFMyriadEmergencyCallPunchout *)self->_callPunchout initiateEmergencyCallMyriad];
      v45 = objc_loadWeakRetained(&self->_delegate);
      v46 = objc_opt_respondsToSelector();

      if ((v46 & 1) == 0)
      {
        return;
      }

      directTriggerRecord = objc_loadWeakRetained(&self->_delegate);
      [directTriggerRecord myriadCoordinatorWillHandleEmergency:self];
      goto LABEL_71;
    case 0xAuLL:
      nTimesExtended = self->_nTimesExtended;
      self->_nTimesExtended = nTimesExtended + 1;
      if (nTimesExtended > 18)
      {
        goto LABEL_76;
      }

      [(AFMyriadCoordinator *)self _startListening:0];
      v40 = @"listen wait/emergency";
      LODWORD(v11) = 0.75;
      goto LABEL_74;
    case 0xBuLL:
      v34 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v77 = "[AFMyriadCoordinator _enterState:]";
        _os_log_impl(&dword_1912FE000, v34, OS_LOG_TYPE_INFO, "%s BTLE task MYR_WAIT_EMERGENCY_HANDLED only stopping advertising, not listening", buf, 0xCu);
      }

      [(AFMyriadCoordinator *)self _stopAdvertising:0];
      selfCopy5 = self;
      v36 = 12;
      goto LABEL_82;
    case 0xCuLL:
      v39 = self->_nTimesExtended;
      self->_nTimesExtended = v39 + 1;
      if (v39 > 18)
      {
LABEL_76:
        selfCopy6 = self;
        v70 = 0;
LABEL_80:
        [(AFMyriadCoordinator *)selfCopy6 enterState:v70];
      }

      else
      {
        [(AFMyriadCoordinator *)self _startListening:0];
        v40 = @"listen emergency handled";
        LODWORD(v11) = 0.75;
        selfCopy8 = self;
        v42 = 11;
LABEL_75:
        [(AFMyriadCoordinator *)selfCopy8 _startTimer:v40 for:v42 thenEnterState:v11];
      }

      break;
    case 0xDuLL:
      directTriggerRecord = [(AFMyriadCoordinator *)self directTriggerRecord];
      [(AFMyriadCoordinator *)self _advertiseIndefinite:directTriggerRecord];
      goto LABEL_71;
    case 0xEuLL:
      v30 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v31 = self->_coordinationEnabled;
        v32 = self->_BLEActivityEnabled;
        *buf = 136315650;
        v77 = "[AFMyriadCoordinator _enterState:]";
        v78 = 1024;
        *v79 = v31;
        *&v79[4] = 1024;
        *&v79[6] = v32;
        _os_log_impl(&dword_1912FE000, v30, OS_LOG_TYPE_INFO, "%s #myriad coordinationEnabled=%d, BLEActivityEnabled=%d ", buf, 0x18u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.decision.won", 0, 0, 1u);
      [(AFMyriadCoordinator *)self _cancelOverallTimeout];
      [(AFMyriadCoordinator *)self _advertiseSuppressTriggerInOutput];
      return;
    case 0xFuLL:
      [(AFMyriadCoordinator *)self resetReplies];
      [(AFMyriadCoordinator *)self _createMyriadSessionIfRequired];
      [(AFMyriadCoordinator *)self _startListeningAfterWiProxIsReady:0 inState:15 completion:0];
      v40 = @"preheat timer";
      LODWORD(v11) = 2.0;
      goto LABEL_74;
    case 0x10uLL:
      self->_recordType = 8;
      [(AFMyriadCoordinator *)self _advertiseSlowdown];
      return;
    case 0x11uLL:
      [(AFMyriadCoordinator *)self _createMyriadSessionIfRequired];
      [(AFMyriadCoordinator *)self _startListening:0];
      v40 = @"filter initialization timer";
      LODWORD(v11) = 1.0;
LABEL_74:
      selfCopy8 = self;
      v42 = 0;
      goto LABEL_75;
    default:
      return;
  }
}

uint64_t __35__AFMyriadCoordinator__enterState___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _loseElection];
  v2 = *(a1 + 32);

  return [v2 _enterState:0];
}

- (void)_cancelOverallTimeout
{
  v11 = *MEMORY[0x1E69E9840];
  overallTimeout = self->_overallTimeout;
  if (overallTimeout)
  {
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = "[AFMyriadCoordinator _cancelOverallTimeout]";
      _os_log_impl(&dword_1912FE000, v4, OS_LOG_TYPE_INFO, "%s BTLE Coordinator cancelling overall timeout", &v9, 0xCu);
      overallTimeout = self->_overallTimeout;
    }

    [(AFWatchdogTimer *)overallTimeout cancelIfNotAlreadyCanceled];
    v5 = self->_overallTimeout;
    self->_overallTimeout = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 myriadCoordinatorOverallTimerCancelled:self];
    }
  }
}

- (void)_setOverallTimeout
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_overallTimeout)
  {
    [(AFMyriadCoordinator *)self _cancelOverallTimeout];
  }

  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v10 = "[AFMyriadCoordinator _setOverallTimeout]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE Coordinator setting overall timeout", buf, 0xCu);
  }

  v4 = [AFWatchdogTimer alloc];
  myriadWorkQueue = self->_myriadWorkQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__AFMyriadCoordinator__setOverallTimeout__block_invoke;
  v8[3] = &unk_1E73497C8;
  v8[4] = self;
  v6 = [(AFWatchdogTimer *)v4 initWithTimeoutInterval:myriadWorkQueue onQueue:v8 timeoutHandler:31.0];
  overallTimeout = self->_overallTimeout;
  self->_overallTimeout = v6;
}

uint64_t __41__AFMyriadCoordinator__setOverallTimeout__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFMyriadCoordinator _setOverallTimeout]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE Coordinator hitting overall timeout, resetting to NoActivity and declaring loss", &v5, 0xCu);
  }

  v3 = *(a1 + 32);
  if (v3[1])
  {
    [v3 _loseElection];
    v3 = *(a1 + 32);
  }

  return [v3 _enterState:0];
}

- (void)_cancelTimer
{
  v15 = *MEMORY[0x1E69E9840];
  timer = self->_timer;
  if (timer && !dispatch_source_testcancel(self->_timer))
  {
    dispatch_source_cancel(timer);
    v4 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      timerLabel = self->_timerLabel;
      myriadState = self->_myriadState;
      v7 = v4;
      v8 = [(AFMyriadCoordinator *)self _stateAsString:myriadState];
      v9 = 136315650;
      v10 = "[AFMyriadCoordinator _cancelTimer]";
      v11 = 2112;
      v12 = timerLabel;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s BTLE timer %@ cancelled (%@)", &v9, 0x20u);
    }
  }
}

- (void)_startTimer:(id)timer for:(float)for thenEnterState:(unint64_t)state
{
  timerCopy = timer;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AFMyriadCoordinator__startTimer_for_thenEnterState___block_invoke;
  v10[3] = &unk_1E7346CF0;
  objc_copyWeak(v11, &location);
  v11[1] = state;
  *&v9 = for;
  [(AFMyriadCoordinator *)self _startTimer:timerCopy for:v10 thenExecute:v9];
  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __54__AFMyriadCoordinator__startTimer_for_thenEnterState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _enterState:*(a1 + 40)];
}

- (void)_startTimer:(id)timer for:(float)for thenExecute:(id)execute
{
  v23 = *MEMORY[0x1E69E9840];
  timerCopy = timer;
  executeCopy = execute;
  v10 = AFSiriLogContextConnection;
  forCopy = for;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v18 = "[AFMyriadCoordinator _startTimer:for:thenExecute:]";
    v19 = 2112;
    v20 = timerCopy;
    v21 = 2048;
    v22 = forCopy;
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s BTLE starting %@ timer for %f secs", buf, 0x20u);
  }

  timerLabel = self->_timerLabel;
  self->_timerLabel = timerCopy;
  v13 = timerCopy;

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__AFMyriadCoordinator__startTimer_for_thenExecute___block_invoke;
  v15[3] = &unk_1E7349838;
  v15[4] = self;
  v16 = executeCopy;
  v14 = executeCopy;
  [(AFMyriadCoordinator *)self _createDispatchTimerFor:v15 toExecute:forCopy];
}

uint64_t __51__AFMyriadCoordinator__startTimer_for_thenExecute___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1 + 32) + 192);
    v5 = 136315394;
    v6 = "[AFMyriadCoordinator _startTimer:for:thenExecute:]_block_invoke";
    v7 = 2112;
    v8 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE %@ timer fires", &v5, 0x16u);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_createDispatchTimerForEvent:(id)event toExecute:(id)execute
{
  executeCopy = execute;
  [event timeIntervalSince1970];
  v8.tv_sec = v7;
  v8.tv_nsec = ((v7 - v7) * 1000000000.0);
  [(AFMyriadCoordinator *)self _createDispatchTimerWithTime:dispatch_walltime(&v8 toExecute:0), executeCopy];
}

- (void)_createDispatchTimerFor:(double)for toExecute:(id)execute
{
  v5 = (for * 1000000000.0);
  executeCopy = execute;
  [(AFMyriadCoordinator *)self _createDispatchTimerWithTime:dispatch_time(0 toExecute:v5), executeCopy];
}

- (void)_createDispatchTimerWithTime:(unint64_t)time toExecute:(id)execute
{
  executeCopy = execute;
  dispatch_suspend(self->_timer);
  dispatch_source_set_timer(self->_timer, time, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  objc_storeStrong(&self->_eventToken, uUID);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__AFMyriadCoordinator__createDispatchTimerWithTime_toExecute___block_invoke;
  v11[3] = &unk_1E73496E8;
  v12 = uUID;
  selfCopy = self;
  v14 = executeCopy;
  v8 = executeCopy;
  v9 = uUID;
  v10 = MEMORY[0x193AFB7B0](v11);
  dispatch_source_set_event_handler(self->_timer, v10);
  dispatch_resume(self->_timer);
}

void __62__AFMyriadCoordinator__createDispatchTimerWithTime_toExecute___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 208);
    v6 = 136315650;
    v7 = "[AFMyriadCoordinator _createDispatchTimerWithTime:toExecute:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #myriad Event token: %@, current event token: %@", &v6, 0x20u);
  }

  if (*(*(a1 + 40) + 208) && [*(a1 + 32) isEqual:?])
  {
    v5 = *(a1 + 48);
    if (v5)
    {
      (*(v5 + 16))();
    }
  }
}

- (void)_initializeTimer
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[AFMyriadCoordinator _initializeTimer]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", &v8, 0xCu);
  }

  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_myriadWorkQueue);
  v6 = self->_timer;
  self->_timer = v5;

  dispatch_source_set_event_handler(self->_timer, &__block_literal_global_364);
  dispatch_resume(self->_timer);
  eventToken = self->_eventToken;
  self->_eventToken = 0;
}

- (void)_clearMyriadSession
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_myriadSession)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 willEndSession:self->_myriadSession];
    }

    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      myriadSession = self->_myriadSession;
      v8 = v6;
      sessionId = [(AFMyriadSession *)myriadSession sessionId];
      v12 = 136315394;
      v13 = "[AFMyriadCoordinator _clearMyriadSession]";
      v14 = 2112;
      v15 = sessionId;
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s #myriad Clearing myriad session %@", &v12, 0x16u);
    }

    electionAdvertisementDataByIds = [(AFMyriadSession *)self->_myriadSession electionAdvertisementDataByIds];
    [electionAdvertisementDataByIds enumerateKeysAndObjectsUsingBlock:&__block_literal_global_362];

    v11 = self->_myriadSession;
    self->_myriadSession = 0;
  }
}

void __42__AFMyriadCoordinator__clearMyriadSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v7 = 136315650;
    v8 = "[AFMyriadCoordinator _clearMyriadSession]_block_invoke";
    v9 = 2112;
    v10 = v4;
    v11 = 2112;
    v12 = v5;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s #myriad Election advertisement %@ -> %@", &v7, 0x20u);
  }
}

- (void)_createMyriadSessionIfRequired
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_myriadSession || ((v7 = self->_myriadState, v8 = v7 > 0x11, v9 = (1 << v7) & 0x2C003, !v8) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      myriadState = self->_myriadState;
      v5 = v3;
      v6 = [(AFMyriadCoordinator *)self _stateAsString:myriadState];
      v21 = 136315394;
      v22 = "[AFMyriadCoordinator _createMyriadSessionIfRequired]";
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad not initializing myriad session, myriad is in state %@", &v21, 0x16u);
    }
  }

  else
  {
    v11 = [AFMyriadSession newWithBuilder:&__block_literal_global_355];
    myriadSession = self->_myriadSession;
    self->_myriadSession = v11;

    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v14 = self->_myriadSession;
      v15 = v13;
      sessionId = [(AFMyriadSession *)v14 sessionId];
      v17 = [(AFMyriadCoordinator *)self _stateAsString:self->_myriadState];
      v21 = 136315650;
      v22 = "[AFMyriadCoordinator _createMyriadSessionIfRequired]";
      v23 = 2112;
      v24 = sessionId;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s #myriad Initialized myriad session %@ when myriad is in state %@", &v21, 0x20u);
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v19 = objc_opt_respondsToSelector();

    if (v19)
    {
      v20 = objc_loadWeakRetained(&self->_delegate);
      [v20 willStartWithSession:self->_myriadSession];
    }

    if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
    {
      [(AFArbitrationEventUpdatesDelegate *)self->_arbitrationEventsDelegate arbitrationSessionWillStart:self->_myriadSession];
    }
  }
}

void __53__AFMyriadCoordinator__createMyriadSessionIfRequired__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [v2 UUID];
  [v3 setSessionId:v4];
}

- (void)_addElectionAdvertisementDataToMyriadSession:(id)session
{
  v27 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if (sessionCopy)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    _myriadSession = [(AFMyriadCoordinator *)self _myriadSession];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __68__AFMyriadCoordinator__addElectionAdvertisementDataToMyriadSession___block_invoke;
    v18[3] = &unk_1E7346C88;
    v18[4] = self;
    v7 = sessionCopy;
    v19 = v7;
    v8 = uUID;
    v20 = v8;
    v9 = [_myriadSession mutatedCopyWithMutator:v18];

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      v12 = objc_loadWeakRetained(&self->_delegate);
      [v12 myriadCoordinator:self didAddAdvertisement:v7 toSession:self->_myriadSession];
    }

    p_myriadSession = &self->_myriadSession;
    objc_storeStrong(p_myriadSession, v9);
    v14 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v15 = *p_myriadSession;
      v16 = v14;
      sessionId = [(AFMyriadSession *)v15 sessionId];
      *buf = 136315650;
      v22 = "[AFMyriadCoordinator _addElectionAdvertisementDataToMyriadSession:]";
      v23 = 2112;
      v24 = v7;
      v25 = 2112;
      v26 = sessionId;
      _os_log_impl(&dword_1912FE000, v16, OS_LOG_TYPE_INFO, "%s #myriad Election advertisement %@ added to myriad session %@", buf, 0x20u);
    }
  }
}

void __68__AFMyriadCoordinator__addElectionAdvertisementDataToMyriadSession___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 _myriadSession];
  v7 = [v5 electionAdvertisementDataByIds];

  v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];
  [v6 setObject:a1[5] forKey:a1[6]];
  [v4 setCurrentElectionAdvertisementId:a1[6]];
  [v4 setCurrentElectionAdvertisementData:a1[5]];
  [v4 setElectionAdvertisementDataByIds:v6];
}

- (void)_loseElection
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[AFMyriadCoordinator _loseElection]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE notify myriad loss", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (v5 = WeakRetained, v6 = objc_loadWeakRetained(&self->_delegate), v7 = objc_opt_respondsToSelector(), v6, v5, (v7 & 1) != 0))
  {
    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        v8 = [(AFMyriadCoordinator *)self _endAdvertisingAnalyticsContext:0];
      }
    }

    else
    {
      v12 = +[AFAnalytics sharedAnalytics];
      v13 = [(AFMyriadCoordinator *)self _endAdvertisingAnalyticsContext:0];
      [v12 logEventWithType:2006 context:v13];
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    [v14 shouldAbortAnotherDeviceBetter:self];

    self->_nTimesExtended = 0;
  }

  else
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = objc_loadWeakRetained(&self->_delegate);
      v15 = 136315394;
      v16 = "[AFMyriadCoordinator _loseElection]";
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s BTLE unable to cancel against: %@", &v15, 0x16u);
    }
  }

  kdebug_trace();
  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    [(AFMyriadCoordinator *)self _updateArbitrationParticipationContextWithCompletion:&__block_literal_global_33326];
  }

  [(AFNotifyStatePublisher *)self->_electionLossPublisher publishState:[(AFMyriadCoordinator *)self _nextElectionPublisherState]];
  [(AFMyriadGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator setLastActivationTime:0.0];
  self->_lastDecision = 0;
  self->_inTask = 0;
  self->_ignoreInTaskTimer = 0;
}

- (void)_winElection
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v15 = 136315138;
    v16 = "[AFMyriadCoordinator _winElection]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE notify myriad won", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v6 = objc_loadWeakRetained(&self->_delegate);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_delegate);
      [v8 shouldContinue:self];
    }
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v9 = [(AFMyriadCoordinator *)self _endAdvertisingAnalyticsContext:1];
    }
  }

  else
  {
    v10 = +[AFAnalytics sharedAnalytics];
    v11 = [(AFMyriadCoordinator *)self _endAdvertisingAnalyticsContext:1];
    [v10 logEventWithType:2006 context:v11];
  }

  self->_clientIsListeningAfterRecentWin = 1;
  kdebug_trace();
  processInfo = [MEMORY[0x1E696AE30] processInfo];
  [processInfo systemUptime];
  v14 = v13;

  [(AFMyriadGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator setLastActivationTime:v14];
  self->_lastDecision = 1;
}

- (BOOL)_deviceShouldContinue:(id)continue
{
  v30 = *MEMORY[0x1E69E9840];
  continueCopy = continue;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[AFMyriadCoordinator _deviceShouldContinue:]";
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s ", &v18, 0xCu);
  }

  if (self->_coordinationEnabled)
  {
    if (self->_clientIsInEarActivation && [(AFMyriadRecord *)self->_triggerRecord isATrump])
    {
      v6 = ![(AFMyriadRecord *)self->_triggerRecord isInEarTrump];
    }

    else
    {
      LOBYTE(v6) = 0;
    }

    suppressLateTrigger = self->_suppressLateTrigger;
    v13 = [(AFMyriadCoordinator *)self _shouldContinueFor:continueCopy];
    clientIsDirectActivating = self->_clientIsDirectActivating;
    v8 = clientIsDirectActivating | v6 | v13 && !suppressLateTrigger;
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      clientIsInEarActivation = self->_clientIsInEarActivation;
      v18 = 136316418;
      v19 = "[AFMyriadCoordinator _deviceShouldContinue:]";
      v20 = 2048;
      v21 = v8 & 1;
      v22 = 2048;
      v23 = 0;
      v24 = 2048;
      v25 = clientIsDirectActivating;
      v26 = 2048;
      v27 = clientIsInEarActivation;
      v28 = 2048;
      v29 = suppressLateTrigger;
      v9 = "%s BTLE deviceShouldContinue:%ld (coordinationDisabled:%ld, isDirectlyActivating:%ld, isInEarTrigger:%ld, suppressLateTrigger:%ld.";
      v10 = v15;
      v11 = 62;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    v8 = 1;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[AFMyriadCoordinator _deviceShouldContinue:]";
      v9 = "%s Coordination disabled, continuing with the request)";
      v8 = 1;
      v10 = v7;
      v11 = 12;
LABEL_12:
      _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, v9, &v18, v11);
    }
  }

  return v8 & 1;
}

- (void)_forceLocalWinner:(id)winner
{
  winnerCopy = winner;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__AFMyriadCoordinator__forceLocalWinner___block_invoke;
  v7[3] = &unk_1E7349860;
  v8 = winnerCopy;
  selfCopy = self;
  v6 = winnerCopy;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __41__AFMyriadCoordinator__forceLocalWinner___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(*(a1 + 40) + 240);
    v15 = 136315650;
    v16 = "[AFMyriadCoordinator _forceLocalWinner:]_block_invoke";
    v17 = 2112;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #myriad force win on this device with context: %@, triggerRecord: %@", &v15, 0x20u);
  }

  [*(a1 + 40) _winElection];
  *(*(a1 + 40) + 330) = 0;
  [*(a1 + 40) _setMyriadContext:*(a1 + 32)];
  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v5 = *(a1 + 40);
    v6 = v5[76];
    v7 = [v5 _myriadStateForSelf:v5[1]];
    v8 = [*(*(a1 + 40) + 512) sessionId];
    [v6 logCDADeviceStateActivityStartedOrChanged:v7 withTrigger:5 withCdaId:v8 withTimestamp:mach_absolute_time()];

    [*(*(a1 + 40) + 608) updateIsTrump:1 withReason:5];
  }

  v9 = *(a1 + 40);
  v10 = v9[30];
  if (v10)
  {
    [v10 setRawAudioGoodnessScore:objc_msgSend(v9[30] withBump:{"rawAudioGoodnessScore"), 255}];
  }

  else
  {
    v11 = [v9 directTriggerRecord];
    v12 = *(a1 + 40);
    v13 = *(v12 + 240);
    *(v12 + 240) = v11;
  }

  *(*(a1 + 40) + 320) = 0;
  *(*(a1 + 40) + 248) = 3;
  return [*(a1 + 40) _enterState:14];
}

- (void)faceDetectedBoostWithMyriadContext:(id)context
{
  contextCopy = context;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__AFMyriadCoordinator_faceDetectedBoostWithMyriadContext___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __58__AFMyriadCoordinator_faceDetectedBoostWithMyriadContext___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  *(*(a1 + 32) + 418) = 1;
  [*(*(a1 + 32) + 240) setRawAudioGoodnessScore:objc_msgSend(*(*(a1 + 32) + 240) withBump:{"rawAudioGoodnessScore"), 255}];
  [*(*(a1 + 32) + 240) generateTiebreaker];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(*(a1 + 32) + 240);
    v5 = v2;
    LODWORD(v4) = [v4 rawAudioGoodnessScore];
    v6 = [*(*(a1 + 32) + 240) goodness];
    v7 = [*(*(a1 + 32) + 240) bump];
    v8 = [*(*(a1 + 32) + 240) tieBreaker];
    v9 = [*(a1 + 32) _stateAsString:*(*(a1 + 32) + 8)];
    v10 = 136316418;
    v11 = "[AFMyriadCoordinator faceDetectedBoostWithMyriadContext:]_block_invoke";
    v12 = 1024;
    v13 = v4;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v7;
    v18 = 1024;
    v19 = v8;
    v20 = 2112;
    v21 = v9;
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s #myriad attention is boosting goodness score, rawAudioGoodnessScore %u, goodness:%u bump: %u, tieBreaker:%u, _myriadState: %@", &v10, 0x2Eu);
  }

  [*(a1 + 32) _forceLocalWinner:*(a1 + 40)];
  return [*(*(a1 + 32) + 608) updateIsTrump:1 withReason:8];
}

- (void)setCurrentRequestId:(id)id
{
  idCopy = id;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__AFMyriadCoordinator_setCurrentRequestId___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = idCopy;
  v6 = idCopy;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)instrumentationUpdateBoost:(unsigned __int8)boost value:(unsigned int)value
{
  v4 = *&value;
  boostCopy = boost;
  myriadInstrumentation = self->_myriadInstrumentation;
  if (!myriadInstrumentation)
  {
    v8 = objc_alloc_init(AFMyriadInstrumentation);
    v9 = self->_myriadInstrumentation;
    self->_myriadInstrumentation = v8;

    myriadInstrumentation = self->_myriadInstrumentation;
  }

  [(AFMyriadInstrumentation *)myriadInstrumentation updateBoost:boostCopy value:v4];
}

- (void)requestWillPresentUsefulUserResult
{
  v7 = *MEMORY[0x1E69E9840];
  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v6 = "[AFMyriadCoordinator requestWillPresentUsefulUserResult]";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
    }

    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __57__AFMyriadCoordinator_requestWillPresentUsefulUserResult__block_invoke;
    v4[3] = &unk_1E73497C8;
    v4[4] = self;
    [(AFMyriadCoordinator *)self _updateArbitrationParticipationContextWithCompletion:v4];
  }
}

- (void)setupEnabled:(BOOL)enabled
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__AFMyriadCoordinator_setupEnabled___block_invoke;
  v4[3] = &unk_1E7347F98;
  enabledCopy = enabled;
  v4[4] = self;
  dispatch_async(myriadWorkQueue, v4);
}

void __36__AFMyriadCoordinator_setupEnabled___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    v5 = v2;
    v6 = [v4 _stateAsString];
    v8 = 136315650;
    v9 = "[AFMyriadCoordinator setupEnabled:]_block_invoke";
    v10 = 1024;
    v11 = v3;
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad setupEnabled: %d, current state: %@", &v8, 0x1Cu);
  }

  v7 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    *(v7 + 318) = 0;
    *(*(a1 + 32) + 314) = 1;
  }

  else
  {
    *(*(a1 + 32) + 318) = [*(v7 + 576) coordinationEnabled];
    *(*(a1 + 32) + 314) = 0;
    [*(a1 + 32) _enterState:0];
  }
}

- (void)setInTask:(BOOL)task
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__AFMyriadCoordinator_setInTask___block_invoke;
  v4[3] = &unk_1E7347F98;
  taskCopy = task;
  v4[4] = self;
  dispatch_async(myriadWorkQueue, v4);
}

void __33__AFMyriadCoordinator_setInTask___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v4 = 136315394;
    v5 = "[AFMyriadCoordinator setInTask:]_block_invoke";
    v6 = 1024;
    v7 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s inTask=%d", &v4, 0x12u);
  }

  *(*(a1 + 32) + 313) = *(a1 + 40);
}

- (BOOL)inTask
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  myriadWorkQueue = self->_myriadWorkQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AFMyriadCoordinator_inTask__block_invoke;
  v5[3] = &unk_1E7349810;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(myriadWorkQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)endTask
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__AFMyriadCoordinator_endTask__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __30__AFMyriadCoordinator_endTask__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v7 = "[AFMyriadCoordinator endTask]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  *(*(a1 + 32) + 313) = 0;
  *(*(a1 + 32) + 418) = 0;
  [*(*(a1 + 32) + 224) releaseAllPowerAssertions];
  result = +[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled];
  if (result)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__AFMyriadCoordinator_endTask__block_invoke_345;
    v5[3] = &unk_1E73497C8;
    v5[4] = v4;
    return [v4 _updateArbitrationParticipationContextWithCompletion:v5];
  }

  return result;
}

- (void)endAdvertisingWithDeviceProhibitions:(id)prohibitions
{
  prohibitionsCopy = prohibitions;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__AFMyriadCoordinator_endAdvertisingWithDeviceProhibitions___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = prohibitionsCopy;
  v6 = prohibitionsCopy;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)_endAdvertisingWithDeviceProhibitions:(id)prohibitions
{
  v19 = *MEMORY[0x1E69E9840];
  prohibitionsCopy = prohibitions;
  if (!self->_coordinationEnabled)
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[AFMyriadCoordinator _endAdvertisingWithDeviceProhibitions:]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s BTLE advertising is being ignored", buf, 0xCu);
    }
  }

  maxSlowdownRecord = self->_maxSlowdownRecord;
  if (maxSlowdownRecord && (v7 = [(AFMyriadRecord *)maxSlowdownRecord slowdownDelay]) != 0 && self->_clientIsRespondingToSlowdown && !self->_clientDoneRespondingToSlowdown)
  {
    self->_slowdownMsecs = v7;
    v13 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v16 = "[AFMyriadCoordinator _endAdvertisingWithDeviceProhibitions:]";
      v17 = 1024;
      v18 = v7;
      _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s BTLE detected a slowdown signal for %d msecs, resetting election for later time", buf, 0x12u);
    }

    [(AFMyriadCoordinator *)self _advertiseTrigger];
  }

  else
  {
    self->_clientIsDeciding = 1;
    if ([(AFMyriadCoordinator *)self _deviceShouldContinue:prohibitionsCopy])
    {
      if ([(NSMutableDictionary *)self->_replies count]>= 2)
      {
        [(AFPowerAssertionManager *)self->_powerAssertionManager takePowerAssertionWithName:0];
      }

      [(AFMyriadCoordinator *)self _winElection];
      [(AFNotifyStatePublisher *)self->_electionWinPublisher publishState:[(AFMyriadCoordinator *)self _nextElectionPublisherState]];
      v8 = @"listening late";
      v9 = 0.0;
      v10 = 2;
    }

    else
    {
      [(AFMyriadCoordinator *)self _loseElection];
      v8 = @"wait until after suppress";
      v9 = 1.0;
      v10 = 7;
    }

    v11 = mach_absolute_time();
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    self->_lastDecisionTime = (*&_AFMachAbsoluteTimeRate_rate * v11);
    self->_clientDoneRespondingToSlowdown = 0;
    [(AFMyriadCoordinator *)self _cancelOverallTimeout];
    [(AFMyriadCoordinator *)self _endAdvertising:0];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __61__AFMyriadCoordinator__endAdvertisingWithDeviceProhibitions___block_invoke;
    v14[3] = &unk_1E7348498;
    v14[4] = self;
    v14[5] = v10;
    [(AFMyriadCoordinator *)self _startTimer:v8 for:v14 thenExecute:COERCE_DOUBLE(LODWORD(v9))];
    [(AFMyriadCoordinator *)self _ageWedgeFilter];
    [(AFMyriadCoordinator *)self resetReplies];
    [(AFMyriadCoordinator *)self _resetAudioData];
    *&self->_clientIsDirectActivating = 0;
    v12 = self->_maxSlowdownRecord;
    self->_maxSlowdownRecord = 0;

    self->_clientIsRespondingToSlowdown = 0;
    self->_suppressLateTrigger = 0;
    [(AFMyriadCoordinator *)self _resetAdvertisementTimings];
    if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
    {
      [(AFArbitrationEventUpdatesDelegate *)self->_arbitrationEventsDelegate arbitrationEndedAdvertising:self->_myriadSession];
    }
  }
}

uint64_t __61__AFMyriadCoordinator__endAdvertisingWithDeviceProhibitions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 330) = 0;
  return [*(a1 + 32) _enterState:v1];
}

- (id)_endAdvertisingAnalyticsContext:(BOOL)context
{
  contextCopy = context;
  v85[2] = *MEMORY[0x1E69E9840];
  _sortedReplies = [(AFMyriadCoordinator *)self _sortedReplies];
  v58 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(_sortedReplies, "count")}];
  if (_sortedReplies && [_sortedReplies count])
  {
    firstObject = [_sortedReplies firstObject];
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke;
    v77[3] = &unk_1E7346C10;
    v78 = v58;
    [_sortedReplies enumerateObjectsUsingBlock:v77];
  }

  else
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 136315138;
      *(&buf + 4) = "[AFMyriadCoordinator _endAdvertisingAnalyticsContext:]";
      _os_log_error_impl(&dword_1912FE000, v3, OS_LOG_TYPE_ERROR, "%s Myriad decision is based on 0 replies", &buf, 0xCu);
    }

    firstObject = [(AFMyriadCoordinator *)self emptyRecord];
  }

  v4 = objc_alloc(MEMORY[0x1E695DF90]);
  if (self->_lastDecision)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v84[1] = @"previous_decision_time";
  v85[0] = v5;
  v84[0] = @"previous_decision";
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", self->_lastDecisionTime];
  v85[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v85 forKeys:v84 count:2];
  v62 = [v4 initWithDictionary:v7];

  [v62 setObject:v58 forKey:@"goodness_scores"];
  if (contextCopy)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v62 setObject:v8 forKey:@"decision"];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", objc_msgSend(_sortedReplies, "count")];
  [v62 setObject:v9 forKey:@"device_count"];

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(firstObject, "goodness")];
  [v62 setObject:v10 forKey:@"winner_goodness"];

  maxSlowdownRecord = self->_maxSlowdownRecord;
  if (maxSlowdownRecord && self->_clientIsRespondingToSlowdown && !self->_clientDoneRespondingToSlowdown)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", -[AFMyriadRecord slowdownDelay](maxSlowdownRecord, "slowdownDelay")];
    [v62 setObject:v12 forKey:@"max_slowdown"];
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v82 = 0x2020000000;
  v83 = 0;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke_307;
  v76[3] = &unk_1E7346C38;
  v76[4] = &buf;
  [_sortedReplies enumerateObjectsUsingBlock:v76];
  if (*(*(&buf + 1) + 24))
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v62 setObject:v13 forKey:@"homepod_involved"];
  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(firstObject, "deviceClass")];
  [v62 setObject:v14 forKey:@"winner_device_class"];

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(firstObject, "productType")];
  [v62 setObject:v15 forKey:@"winner_product_type"];

  if (!contextCopy)
  {
    if ([firstObject isATrump])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    [v62 setObject:v16 forKey:@"winner_sent_suppresssion"];
  }

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if ((AFIsInternalInstall_isInternal & 1) != 0 || (+[AFPreferences sharedPreferences](AFPreferences, "sharedPreferences"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 shouldLogForQA], v17, v18))
  {
    if (self->_coordinationEnabled)
    {
      v19 = @"YES";
    }

    else
    {
      v19 = @"NO";
    }

    [v62 setObject:v19 forKey:@"coordination_allowed"];
    v20 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:self->_deviceGroup];
    [v62 setObject:v20 forKey:@"device-group"];

    v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke_2;
    v74[3] = &unk_1E7346C60;
    v22 = v21;
    v75 = v22;
    [_sortedReplies enumerateObjectsUsingBlock:v74];
    [v62 setObject:v22 forKey:@"election"];
    v56 = v22;
    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = self->_replyCounts;
    v24 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v70 objects:v80 count:16];
    if (v24)
    {
      v25 = *v71;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v71 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = *(*(&v70 + 1) + 8 * i);
          v28 = [(NSMutableDictionary *)self->_replyCounts objectForKeyedSubscript:v27];
          v79[0] = v28;
          v29 = [(NSMutableDictionary *)self->_replies objectForKeyedSubscript:v27];
          v30 = [v29 description];
          v79[1] = v30;
          v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
          [v23 setObject:v31 forKey:v27];
        }

        v24 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v70 objects:v80 count:16];
      }

      while (v24);
    }

    [v62 setObject:v23 forKey:@"counts"];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v32 = objc_alloc_init(MEMORY[0x1E69CE940]);
    [v32 setDeviceClass:{objc_msgSend(firstObject, "deviceClass")}];
    [v32 setProductType:{objc_msgSend(firstObject, "productType")}];
    [v32 setGoodnessScore:{objc_msgSend(firstObject, "goodness")}];
    v33 = objc_alloc_init(MEMORY[0x1E69CE940]);
    v34 = v33;
    if (contextCopy)
    {
      rawAudioGoodnessScore = [firstObject rawAudioGoodnessScore];
      v36 = v32;

      v34 = v36;
    }

    else
    {
      [v33 setDeviceClass:self->_deviceClass];
      [v34 setProductType:self->_productType];
      [v34 setGoodnessScore:{-[AFMyriadRecord goodness](self->_triggerRecord, "goodness")}];
      rawAudioGoodnessScore = 0;
    }

    v37 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke_3;
    v68[3] = &unk_1E7346C10;
    v57 = v37;
    v69 = v57;
    [_sortedReplies enumerateObjectsUsingBlock:v68];
    v38 = mach_absolute_time();
    if (_AFMachAbsoluteTimeRate_onceToken != -1)
    {
      dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
    }

    v39 = *&_AFMachAbsoluteTimeRate_rate;
    lastDecisionTime = self->_lastDecisionTime;
    obja = [(NSUUID *)self->_currentRequestId copy];
    myriadInstrumentation = self->_myriadInstrumentation;
    v42 = [(AFMyriadCoordinator *)self _myriadStateForSelf:self->_myriadState];
    if (contextCopy)
    {
      v43 = 1;
    }

    else
    {
      v43 = 2;
    }

    if (self->_lastDecision)
    {
      v44 = 1;
    }

    else
    {
      v44 = 2;
    }

    sessionId = [(AFMyriadSession *)self->_myriadSession sessionId];
    LODWORD(v55) = rawAudioGoodnessScore;
    [(AFMyriadInstrumentation *)myriadInstrumentation logCDAElectionDecisionMade:v42 withDecision:v43 withPreviousDecision:v44 timeSincePreviousDecision:((v39 * v38) - lastDecisionTime) / 0xF4240 withWinningDevice:v32 withThisDevice:v34 withParticipants:v57 withRawScore:v55 withBoost:0 withCdaId:sessionId currentRequestId:obja withTimestamp:mach_absolute_time()];

    currentRequestId = self->_currentRequestId;
    self->_currentRequestId = 0;

    if (AFIsInternalInstall_onceToken != -1)
    {
      dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
    }

    if (AFIsInternalInstall_isInternal == 1)
    {
      v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:10];
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke_4;
      v66[3] = &unk_1E7346C10;
      v48 = v47;
      v67 = v48;
      [_sortedReplies enumerateObjectsUsingBlock:v66];
      v49 = self->_myriadInstrumentation;
      v50 = [(AFMyriadCoordinator *)self _myriadStateForSelf:self->_myriadState];
      coordinationEnabled = self->_coordinationEnabled;
      deviceGroup = self->_deviceGroup;
      sessionId2 = [(AFMyriadSession *)self->_myriadSession sessionId];
      [(AFMyriadInstrumentation *)v49 logCDAElectionDecisionMadeDebug:v50 withCrossDeviceArbitrationAllowed:coordinationEnabled advertisementData:v48 withDeviceGroup:deviceGroup withCdaId:sessionId2 withTimestamp:mach_absolute_time()];
    }
  }

  _Block_object_dispose(&buf, 8);

  return v62;
}

void __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke(uint64_t a1, void *a2)
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF90];
  v4 = a2;
  v5 = [v3 alloc];
  v13[0] = @"dc";
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "deviceClass")}];
  v14[0] = v6;
  v13[1] = @"pt";
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "productType")}];
  v14[1] = v7;
  v13[2] = @"goodness";
  v8 = MEMORY[0x1E696AD98];
  v9 = [v4 goodness];

  v10 = [v8 numberWithInteger:v9];
  v14[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v12 = [v5 initWithDictionary:v11];

  [*(a1 + 32) addObject:v12];
}

void *__55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke_307(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 deviceClass];
  if (result == 7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 description];
  [v2 addObject:v3];
}

void __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke_3(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = MEMORY[0x1E69CE940];
  v8 = a2;
  v10 = objc_alloc_init(v7);
  [v10 setDeviceClass:{objc_msgSend(v8, "deviceClass")}];
  [v10 setProductType:{objc_msgSend(v8, "productType")}];
  v9 = [v8 goodness];

  [v10 setGoodnessScore:v9];
  [*(a1 + 32) addObject:v10];
  if (a3 >= 9)
  {
    *a4 = 1;
  }
}

void __55__AFMyriadCoordinator__endAdvertisingAnalyticsContext___block_invoke_4(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v7 = MEMORY[0x1E69CE8C8];
  v8 = a2;
  v10 = objc_alloc_init(v7);
  [v10 setAudioHash:{objc_msgSend(v8, "pHash")}];
  [v10 setGoodnessScore:{objc_msgSend(v8, "goodness")}];
  [v10 setConfidenceScore:{objc_msgSend(v8, "userConfidence")}];
  [v10 setDeviceClass:{objc_msgSend(v8, "deviceClass")}];
  [v10 setDeviceGroup:{objc_msgSend(v8, "deviceGroup")}];
  [v10 setProductType:{objc_msgSend(v8, "productType")}];
  [v10 setTieBreaker:{objc_msgSend(v8, "tieBreaker")}];
  [v10 setIsFromContextCollector:{objc_msgSend(v8, "isCollectedFromContextCollector") != 0}];
  v9 = [v8 isMe];

  [v10 setIsSelf:v9];
  [*(a1 + 32) addObject:v10];
  if (a3 >= 9)
  {
    *a4 = 1;
  }
}

- (void)endAdvertising:(id)advertising
{
  advertisingCopy = advertising;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__AFMyriadCoordinator_endAdvertising___block_invoke;
  v7[3] = &unk_1E7349838;
  v7[4] = self;
  v8 = advertisingCopy;
  v6 = advertisingCopy;
  dispatch_async(myriadWorkQueue, v7);
}

- (void)_endAdvertising:(id)advertising
{
  v21[1] = *MEMORY[0x1E69E9840];
  advertisingCopy = advertising;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v17 = "[AFMyriadCoordinator _endAdvertising:]";
    _os_log_debug_impl(&dword_1912FE000, v5, OS_LOG_TYPE_DEBUG, "%s ", buf, 0xCu);
  }

  kdebug_trace();
  if (self->_myriadState != 5)
  {
    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v6 = +[AFAnalytics sharedAnalytics];
      v20 = @"state";
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_myriadState];
      v21[0] = v7;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      [v6 logEventWithType:2004 context:v8];
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      myriadInstrumentation = self->_myriadInstrumentation;
      v10 = [(AFMyriadCoordinator *)self _myriadStateForSelf:self->_myriadState];
      sessionId = [(AFMyriadSession *)self->_myriadSession sessionId];
      [(AFMyriadInstrumentation *)myriadInstrumentation logCDAElectionAdvertisingEnding:v10 withCdaId:sessionId withTimestamp:mach_absolute_time()];
    }
  }

  [(AFMyriadCoordinator *)self _stopAdvertising:advertisingCopy];
  if (self->_clientIsDirectActivating || self->_clientIsWatchActivation)
  {
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    [processInfo systemUptime];
    v14 = v13;

    [(AFMyriadGoodnessScoreEvaluator *)self->_goodnessScoreEvaluator setLastActivationTime:v14];
    v15 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v17 = "[AFMyriadCoordinator _endAdvertising:]";
      v18 = 2048;
      v19 = v14;
      _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s BTLE activation time %f", buf, 0x16u);
    }
  }
}

- (void)endAdvertisingAfterDelay:(float)delay
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AFMyriadCoordinator_endAdvertisingAfterDelay___block_invoke;
  v4[3] = &unk_1E7346BE8;
  v4[4] = self;
  delayCopy = delay;
  dispatch_async(myriadWorkQueue, v4);
}

uint64_t __48__AFMyriadCoordinator_endAdvertisingAfterDelay___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AFMyriadCoordinator_endAdvertisingAfterDelay___block_invoke_2;
  v4[3] = &unk_1E7346BE8;
  v5 = v2;
  v4[4] = v1;
  return [v1 _startTimer:@"end advert delay" for:v4 thenExecute:?];
}

uint64_t __48__AFMyriadCoordinator_endAdvertisingAfterDelay___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[AFMyriadCoordinator endAdvertisingAfterDelay:]_block_invoke_2";
    v7 = 2048;
    v8 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE ending advertising after %f secs delay", &v5, 0x16u);
  }

  return [*(a1 + 32) enterState:0];
}

- (void)startAdvertisingSlowdown:(unsigned __int16)slowdown
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AFMyriadCoordinator_startAdvertisingSlowdown___block_invoke;
  v4[3] = &unk_1E7346BC0;
  slowdownCopy = slowdown;
  v4[4] = self;
  dispatch_async(myriadWorkQueue, v4);
}

uint64_t __48__AFMyriadCoordinator_startAdvertisingSlowdown___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 40);
    v5 = 136315394;
    v6 = "[AFMyriadCoordinator startAdvertisingSlowdown:]_block_invoke";
    v7 = 1024;
    v8 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE advertising slowdown: %d msecs", &v5, 0x12u);
  }

  [*(a1 + 32) _initializeTimer];
  *(*(a1 + 32) + 296) = *(a1 + 40);
  *(*(a1 + 32) + 327) = 1;
  return [*(a1 + 32) _enterState:16];
}

- (void)startResponseAdvertising:(unsigned __int16)advertising
{
  myriadWorkQueue = self->_myriadWorkQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__AFMyriadCoordinator_startResponseAdvertising___block_invoke;
  v4[3] = &unk_1E7346BC0;
  v4[4] = self;
  advertisingCopy = advertising;
  dispatch_async(myriadWorkQueue, v4);
}

void __48__AFMyriadCoordinator_startResponseAdvertising___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[AFMyriadCoordinator startResponseAdvertising:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE suppressing stragglers", &v5, 0xCu);
  }

  [*(a1 + 32) _initializeTimer];
  v3 = [*(a1 + 32) responseObject:*(a1 + 40)];
  *(*(a1 + 32) + 324) = 0;
  LODWORD(v4) = 1.0;
  [*(a1 + 32) _startAdvertising:v3 afterDelay:0.0 maxInterval:v4];
}

- (void)startAdvertisingFromAlertFiringVoiceTriggerWithContext:(id)context
{
  contextCopy = context;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __78__AFMyriadCoordinator_startAdvertisingFromAlertFiringVoiceTriggerWithContext___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __78__AFMyriadCoordinator_startAdvertisingFromAlertFiringVoiceTriggerWithContext___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[AFMyriadCoordinator startAdvertisingFromAlertFiringVoiceTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE voice trigger during alert heard", buf, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v14[0] = @"state";
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
    v14[1] = @"trigger";
    v15[0] = v4;
    v15[1] = @"AlertFiringVoiceTrigger";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v3 logEventWithType:2011 context:v5];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [*(a1 + 32) _createMyriadSessionIfRequired];
    v6 = *(a1 + 32);
    v7 = v6[76];
    v8 = [v6 _myriadStateForSelf:v6[1]];
    v9 = [*(*(a1 + 32) + 512) sessionId];
    [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:8 withCdaId:v9 withTimestamp:mach_absolute_time()];

    [*(*(a1 + 32) + 608) updateIsTrump:1 withReason:2];
  }

  [*(a1 + 32) _initializeTimer];
  v10 = [*(a1 + 32) directTriggerRecord];
  v11 = *(a1 + 32);
  v12 = *(v11 + 240);
  *(v11 + 240) = v10;

  *(*(a1 + 32) + 320) = 0;
  *(*(a1 + 32) + 248) = 3;
  return [*(a1 + 32) _enterState:1];
}

- (void)startAdvertisingFromInTaskVoiceTriggerWithContext:(id)context
{
  v16 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = [contextCopy debugDescription];
    *buf = 136315394;
    v13 = "[AFMyriadCoordinator startAdvertisingFromInTaskVoiceTriggerWithContext:]";
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1912FE000, v6, OS_LOG_TYPE_INFO, "%s BTLE voice trigger while inTask with context: %@", buf, 0x16u);
  }

  myriadWorkQueue = self->_myriadWorkQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__AFMyriadCoordinator_startAdvertisingFromInTaskVoiceTriggerWithContext___block_invoke;
  v10[3] = &unk_1E7349860;
  v10[4] = self;
  v11 = contextCopy;
  v9 = contextCopy;
  dispatch_async(myriadWorkQueue, v10);
}

uint64_t __73__AFMyriadCoordinator_startAdvertisingFromInTaskVoiceTriggerWithContext___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  [*(a1 + 32) _updateVoiceTriggerTimeFromFile];
  v2 = *(a1 + 32);

  return [v2 _startAdvertisingFromInTaskVoiceTrigger];
}

- (void)_startAdvertisingFromInTaskVoiceTrigger
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v19 = "[AFMyriadCoordinator _startAdvertisingFromInTaskVoiceTrigger]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE in-task voice trigger heard", buf, 0xCu);
  }

  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v4 = +[AFAnalytics sharedAnalytics];
    v22[0] = @"state";
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", self->_myriadState];
    v22[1] = @"trigger";
    v23[0] = v5;
    v23[1] = @"InTaskVoiceTrigger";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
    [v4 logEventWithType:2011 context:v6];
  }

  v7 = mach_absolute_time();
  if (_AFMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
  }

  if (*&_AFMachAbsoluteTimeRate_rate * v7 / 1000000000.0 - *&_AFMachAbsoluteTimeRate_rate * self->_voiceTriggerTime / 1000000000.0 > 1.45000005 && [(AFMyriadCoordinator *)self _inTaskTriggerWasTooSoon])
  {
    v8 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v19 = "[AFMyriadCoordinator _startAdvertisingFromInTaskVoiceTrigger]";
      _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s BTLE ignoring in-task voice trigger and continuing with ongoing advertisement.", buf, 0xCu);
    }
  }

  else
  {
    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      [(AFMyriadCoordinator *)self _createMyriadSessionIfRequired];
      myriadInstrumentation = self->_myriadInstrumentation;
      v10 = [(AFMyriadCoordinator *)self _myriadStateForSelf:self->_myriadState];
      sessionId = [(AFMyriadSession *)self->_myriadSession sessionId];
      [(AFMyriadInstrumentation *)myriadInstrumentation logCDADeviceStateActivityStartedOrChanged:v10 withTrigger:6 withCdaId:sessionId withTimestamp:mach_absolute_time()];

      [(AFMyriadInstrumentation *)self->_myriadInstrumentation updateIsTrump:1 withReason:7];
    }

    if (self->_myriadState == 1 && self->_inTask && !self->_clientIsDirectActivating && !self->_clientIsDeciding)
    {
      [(AFMyriadRecord *)self->_triggerRecord generateTiebreaker];
      selfCopy2 = self;
      v16 = 1;
    }

    else
    {
      [(AFMyriadCoordinator *)self _initializeTimer];
      directTriggerRecord = [(AFMyriadCoordinator *)self directTriggerRecord];
      triggerRecord = self->_triggerRecord;
      self->_triggerRecord = directTriggerRecord;

      self->_clientIsDirectActivating = 0;
      self->_recordType = 3;
      v14 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
      {
        voiceTriggerTime = self->_voiceTriggerTime;
        *buf = 136315394;
        v19 = "[AFMyriadCoordinator _startAdvertisingFromInTaskVoiceTrigger]";
        v20 = 2048;
        v21 = voiceTriggerTime;
        _os_log_debug_impl(&dword_1912FE000, v14, OS_LOG_TYPE_DEBUG, "%s #myriad _voiceTriggerTime: %llu", buf, 0x16u);
      }

      selfCopy2 = self;
      v16 = 14;
    }

    [(AFMyriadCoordinator *)selfCopy2 _enterState:v16];
  }
}

- (void)startAdvertisingEmergency
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__AFMyriadCoordinator_startAdvertisingEmergency__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __48__AFMyriadCoordinator_startAdvertisingEmergency__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v16 = "[AFMyriadCoordinator startAdvertisingEmergency]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE sending emergency beacon", buf, 0xCu);
  }

  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v13[0] = @"state";
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
    v13[1] = @"trigger";
    v14[0] = v4;
    v14[1] = @"Emergency";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    [v3 logEventWithType:2011 context:v5];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [*(a1 + 32) _createMyriadSessionIfRequired];
    v6 = *(a1 + 32);
    v7 = v6[76];
    v8 = [v6 _myriadStateForSelf:v6[1]];
    v9 = [*(*(a1 + 32) + 512) sessionId];
    [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:7 withCdaId:v9 withTimestamp:mach_absolute_time()];
  }

  [*(a1 + 32) _initializeTimer];
  *(*(a1 + 32) + 320) = 0;
  *(*(a1 + 32) + 313) = 1;
  *(*(a1 + 32) + 416) = 1;
  v10 = [MEMORY[0x1E696AE30] processInfo];
  [v10 systemUptime];
  *(*(a1 + 32) + 408) = v11;

  return [*(a1 + 32) _duringNextWindowEnterState:8];
}

- (void)startAdvertisingEmergencyHandled
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AFMyriadCoordinator_startAdvertisingEmergencyHandled__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __55__AFMyriadCoordinator_startAdvertisingEmergencyHandled__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v4 = 136315138;
    v5 = "[AFMyriadCoordinator startAdvertisingEmergencyHandled]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE handling emergency beacon", &v4, 0xCu);
  }

  [*(a1 + 32) _initializeTimer];
  *(*(a1 + 32) + 320) = 0;
  *(*(a1 + 32) + 313) = 1;
  return [*(a1 + 32) _enterState:9];
}

- (void)startAdvertisingFromCarPlayTrigger
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__AFMyriadCoordinator_startAdvertisingFromCarPlayTrigger__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __57__AFMyriadCoordinator_startAdvertisingFromCarPlayTrigger__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[AFMyriadCoordinator startAdvertisingFromCarPlayTrigger]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE trumping from in CarPlay trigger", buf, 0xCu);
  }

  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v15[0] = @"state";
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
    v15[1] = @"trigger";
    v16[0] = v4;
    v16[1] = @"CarPlayTrigger";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v3 logEventWithType:2011 context:v5];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [*(a1 + 32) _createMyriadSessionIfRequired];
    v6 = *(a1 + 32);
    v7 = v6[76];
    v8 = [v6 _myriadStateForSelf:v6[1]];
    v9 = [*(*(a1 + 32) + 512) sessionId];
    [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:4 withCdaId:v9 withTimestamp:mach_absolute_time()];
  }

  [*(a1 + 32) _initializeTimer];
  v10 = [*(a1 + 32) directTriggerRecord];
  v11 = *(a1 + 32);
  v12 = *(v11 + 240);
  *(v11 + 240) = v10;

  [*(*(a1 + 32) + 240) setRawAudioGoodnessScore:0 withBump:244];
  *(*(a1 + 32) + 320) = 0;
  *(*(a1 + 32) + 329) = 1;
  *(*(a1 + 32) + 248) = 1;
  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[AFMyriadCoordinator startAdvertisingFromCarPlayTrigger]_block_invoke";
    _os_log_impl(&dword_1912FE000, v13, OS_LOG_TYPE_INFO, "%s #myriad CarPlay override", buf, 0xCu);
  }

  return [*(a1 + 32) _forceLocalWinner:0];
}

- (void)startAdvertisingFromInEarTrigger
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__AFMyriadCoordinator_startAdvertisingFromInEarTrigger__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

uint64_t __55__AFMyriadCoordinator_startAdvertisingFromInEarTrigger__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v18 = "[AFMyriadCoordinator startAdvertisingFromInEarTrigger]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE trumping from in ear voice trigger", buf, 0xCu);
  }

  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v15[0] = @"state";
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
    v15[1] = @"trigger";
    v16[0] = v4;
    v16[1] = @"InEarTrigger";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [v3 logEventWithType:2011 context:v5];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [*(a1 + 32) _createMyriadSessionIfRequired];
    v6 = *(a1 + 32);
    v7 = v6[76];
    v8 = [v6 _myriadStateForSelf:v6[1]];
    v9 = [*(*(a1 + 32) + 512) sessionId];
    [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:3 withCdaId:v9 withTimestamp:mach_absolute_time()];
  }

  [*(a1 + 32) _initializeTimer];
  v10 = [*(a1 + 32) directTriggerRecord];
  v11 = *(a1 + 32);
  v12 = *(v11 + 240);
  *(v11 + 240) = v10;

  v13 = *(a1 + 32);
  if ((*(v13 + 313) & 1) == 0)
  {
    [*(v13 + 240) setRawAudioGoodnessScore:0 withBump:248];
    v13 = *(a1 + 32);
  }

  *(v13 + 320) = 0;
  *(*(a1 + 32) + 321) = 1;
  *(*(a1 + 32) + 248) = 6;
  return [*(a1 + 32) _enterState:1];
}

- (void)startAdvertisingFromOutgoingTriggerWithContext:(id)context
{
  contextCopy = context;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __70__AFMyriadCoordinator_startAdvertisingFromOutgoingTriggerWithContext___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __70__AFMyriadCoordinator_startAdvertisingFromOutgoingTriggerWithContext___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[AFMyriadCoordinator startAdvertisingFromOutgoingTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE suppressing trigger in audio output", buf, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v14[0] = @"state";
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
    v14[1] = @"trigger";
    v15[0] = v4;
    v15[1] = @"OutgoingTrigger";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v3 logEventWithType:2011 context:v5];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [*(a1 + 32) _createMyriadSessionIfRequired];
    v6 = *(a1 + 32);
    v7 = v6[76];
    v8 = [v6 _myriadStateForSelf:v6[1]];
    v9 = [*(*(a1 + 32) + 512) sessionId];
    [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:5 withCdaId:v9 withTimestamp:mach_absolute_time()];

    [*(*(a1 + 32) + 608) updateIsTrump:1 withReason:5];
  }

  [*(a1 + 32) _initializeTimer];
  v10 = [*(a1 + 32) directTriggerRecord];
  v11 = *(a1 + 32);
  v12 = *(v11 + 240);
  *(v11 + 240) = v10;

  *(*(a1 + 32) + 320) = 0;
  *(*(a1 + 32) + 248) = 3;
  return [*(a1 + 32) _enterState:14];
}

- (void)startAdvertisingFromDirectTriggerWithContext:(id)context
{
  contextCopy = context;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__AFMyriadCoordinator_startAdvertisingFromDirectTriggerWithContext___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __68__AFMyriadCoordinator_startAdvertisingFromDirectTriggerWithContext___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[AFMyriadCoordinator startAdvertisingFromDirectTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE trumping", buf, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v14[0] = @"state";
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
    v14[1] = @"trigger";
    v15[0] = v4;
    v15[1] = @"DirectTrigger";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v3 logEventWithType:2011 context:v5];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [*(a1 + 32) _createMyriadSessionIfRequired];
    v6 = *(a1 + 32);
    v7 = v6[76];
    v8 = [v6 _myriadStateForSelf:v6[1]];
    v9 = [*(*(a1 + 32) + 512) sessionId];
    [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:1 withCdaId:v9 withTimestamp:mach_absolute_time()];

    [*(*(a1 + 32) + 608) updateIsTrump:1 withReason:6];
  }

  [*(a1 + 32) _initializeTimer];
  v10 = [*(a1 + 32) directTriggerRecord];
  v11 = *(a1 + 32);
  v12 = *(v11 + 240);
  *(v11 + 240) = v10;

  *(*(a1 + 32) + 320) = 1;
  *(*(a1 + 32) + 248) = 3;
  return [*(a1 + 32) _enterState:1];
}

- (void)startWatchAdvertisingFromDirectTriggerWithContext:(id)context
{
  contextCopy = context;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__AFMyriadCoordinator_startWatchAdvertisingFromDirectTriggerWithContext___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(myriadWorkQueue, v7);
}

uint64_t __73__AFMyriadCoordinator_startWatchAdvertisingFromDirectTriggerWithContext___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v17 = "[AFMyriadCoordinator startWatchAdvertisingFromDirectTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s BTLE trumping", buf, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v3 = +[AFAnalytics sharedAnalytics];
    v14[0] = @"state";
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
    v14[1] = @"trigger";
    v15[0] = v4;
    v15[1] = @"DirectTrigger";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    [v3 logEventWithType:2011 context:v5];
  }

  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [*(a1 + 32) _createMyriadSessionIfRequired];
    v6 = *(a1 + 32);
    v7 = v6[76];
    v8 = [v6 _myriadStateForSelf:v6[1]];
    v9 = [*(*(a1 + 32) + 512) sessionId];
    [v7 logCDADeviceStateActivityStartedOrChanged:v8 withTrigger:1 withCdaId:v9 withTimestamp:mach_absolute_time()];

    [*(*(a1 + 32) + 608) updateIsTrump:1 withReason:6];
  }

  [*(a1 + 32) _initializeTimer];
  v10 = [*(a1 + 32) directTriggerRecord];
  v11 = *(a1 + 32);
  v12 = *(v11 + 240);
  *(v11 + 240) = v10;

  *(*(a1 + 32) + 320) = 1;
  *(*(a1 + 32) + 325) = 1;
  *(*(a1 + 32) + 248) = 3;
  return [*(a1 + 32) _enterState:1];
}

- (void)startWatchAdvertisingFromVoiceTriggerWithContext:(id)context
{
  contextCopy = context;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__AFMyriadCoordinator_startWatchAdvertisingFromVoiceTriggerWithContext___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(myriadWorkQueue, v7);
}

void __72__AFMyriadCoordinator_startWatchAdvertisingFromVoiceTriggerWithContext___block_invoke(uint64_t a1)
{
  v36[2] = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v30 = "[AFMyriadCoordinator startWatchAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s ", buf, 0xCu);
  }

  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  if ([*(a1 + 32) _inTaskTriggerWasTooSoon])
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v30 = "[AFMyriadCoordinator startWatchAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE ignoring watch voice trigger and continuing with ongoing advertisement.", buf, 0xCu);
    }

    return;
  }

  v4 = *(a1 + 32);
  if (v4[313] != 1)
  {
    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v9 = +[AFAnalytics sharedAnalytics];
      v35[0] = @"state";
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
      v35[1] = @"trigger";
      v36[0] = v10;
      v36[1] = @"VoiceTrigger";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      [v9 logEventWithType:2011 context:v11];
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      [*(a1 + 32) _createMyriadSessionIfRequired];
      v12 = *(a1 + 32);
      v13 = v12[76];
      v14 = [v12 _myriadStateForSelf:v12[1]];
      v15 = [*(*(a1 + 32) + 512) sessionId];
      [v13 logCDADeviceStateActivityStartedOrChanged:v14 withTrigger:2 withCdaId:v15 withTimestamp:mach_absolute_time()];
    }

    [*(a1 + 32) _initializeTimer];
    v16 = [*(a1 + 32) voiceTriggerRecord];
    v17 = *(a1 + 32);
    v18 = *(v17 + 240);
    *(v17 + 240) = v16;

    v19 = objc_alloc_init(AFMyriadGoodnessScoreContext);
    v20 = *(*(a1 + 32) + 624);
    if (v20)
    {
      [v20 timeIntervalSinceNow];
      if (v21 > -180.0)
      {
        [(AFMyriadGoodnessScoreContext *)v19 setRecentlyWonBySmallAmount:1];
      }
    }

    v22 = [*(*(a1 + 32) + 504) getMyriadAdjustedBoostForGoodnessScoreContext:v19];
    v23 = [*(*(a1 + 32) + 240) rawAudioGoodnessScore];
    [*(*(a1 + 32) + 240) setRawAudioGoodnessScore:v23 withBump:v22];
    *(*(a1 + 32) + 320) = 0;
    if ((v23 - 25) > 0xE7u)
    {
      goto LABEL_26;
    }

    v24 = AFSiriLogContextConnection;
    v25 = os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (v25)
      {
        *buf = 136315650;
        v30 = "[AFMyriadCoordinator startWatchAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
        v31 = 1024;
        v32 = v23;
        v33 = 1024;
        v34 = 25;
        v26 = "%s #myriad watch trumping due to threshold for rawAudioGoodnessScore: %u >= %u";
        v27 = v24;
        v28 = 24;
LABEL_22:
        _os_log_impl(&dword_1912FE000, v27, OS_LOG_TYPE_INFO, v26, buf, v28);
      }
    }

    else if (v25)
    {
      *buf = 136315138;
      v30 = "[AFMyriadCoordinator startWatchAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
      v26 = "%s #myriad watch trumping due to score being 0";
      v27 = v24;
      v28 = 12;
      goto LABEL_22;
    }

    [*(*(a1 + 32) + 240) setPHash:0xFFFFLL];
    [*(*(a1 + 32) + 240) setRawAudioGoodnessScore:0 withBump:244];
    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      [*(*(a1 + 32) + 608) updateIsTrump:1 withReason:3];
    }

    *(*(a1 + 32) + 326) = 1;
LABEL_26:
    *(*(a1 + 32) + 325) = 1;
    *(*(a1 + 32) + 248) = 10;
    [*(a1 + 32) _enterState:1];

    return;
  }

  [v4 _startAdvertisingFromInTaskVoiceTrigger];
  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [*(a1 + 32) _createMyriadSessionIfRequired];
    v5 = *(a1 + 32);
    v6 = v5[76];
    v7 = [v5 _myriadStateForSelf:v5[1]];
    v8 = [*(*(a1 + 32) + 512) sessionId];
    [v6 logCDADeviceStateActivityStartedOrChanged:v7 withTrigger:6 withCdaId:v8 withTimestamp:mach_absolute_time()];
  }
}

- (void)startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:(id)context withContext:(id)withContext
{
  contextCopy = context;
  withContextCopy = withContext;
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__AFMyriadCoordinator_startAdvertisingFromVoiceTriggerWithGoodnessScoreContext_withContext___block_invoke;
  block[3] = &unk_1E73494B0;
  block[4] = self;
  v12 = withContextCopy;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = withContextCopy;
  dispatch_async(myriadWorkQueue, block);
}

void __92__AFMyriadCoordinator_startAdvertisingFromVoiceTriggerWithGoodnessScoreContext_withContext___block_invoke(id *a1)
{
  v49 = *MEMORY[0x1E69E9840];
  [a1[4] _setMyriadContext:a1[5]];
  v2 = [a1[6] getOverridingContext];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 overriddenAdjustedScore];
  }

  else
  {
    v5 = *(a1[4] + 78);
    if (v5)
    {
      [v5 timeIntervalSinceNow];
      if (v6 > -180.0)
      {
        [a1[6] setRecentlyWonBySmallAmount:1];
      }
    }

    v4 = [*(a1[4] + 63) getMyriadAdjustedBoostForGoodnessScoreContext:a1[6]];
  }

  *(a1[4] + 280) = v4;
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1[4] + 280);
    *buf = 136315650;
    v41 = "[AFMyriadCoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
    v42 = 2112;
    *v43 = v3;
    *&v43[8] = 1024;
    *v44 = v8;
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s #myriad overrideContext: %@, _incomingAdjustment %d", buf, 0x1Cu);
  }

  v9 = a1[4];
  v10 = v9[36];
  v9[36] = 0;

  v11 = [a1[5] overrideState];
  if (v11)
  {
    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v41 = "[AFMyriadCoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
      v42 = 2112;
      *v43 = v11;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s #myriad Goodness score override state %@", buf, 0x16u);
    }

    v13 = [v11 overrideOption];
    if (v13 == 2)
    {
      [a1[4] startAdvertisingFromInEarTrigger];
    }

    else if (v13 == 1)
    {
      v14 = [a1[4] directTriggerRecord];
      v15 = a1[4];
      v16 = v15[36];
      v15[36] = v14;

      if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [*(a1[4] + 76) updateIsTrump:1 withReason:6];
      }
    }
  }

  v17 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v18 = a1[4];
    v19 = a1[5];
    v20 = v18[313];
    v21 = v18[314];
    LODWORD(v18) = v18[280];
    v22 = a1[6];
    *buf = 136316418;
    v41 = "[AFMyriadCoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
    v42 = 1024;
    *v43 = v20;
    *&v43[4] = 1024;
    *&v43[6] = v21;
    *v44 = 1024;
    *&v44[2] = v18;
    v45 = 2112;
    v46 = v19;
    v47 = 2112;
    v48 = v22;
    _os_log_impl(&dword_1912FE000, v17, OS_LOG_TYPE_INFO, "%s BTLE startFromVoiceTrigger inTask=%d, inSetupMode=%d, incomingAdjustment=%d,  context=%@, goodnessScoreContext=%@", buf, 0x32u);
  }

  if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    v23 = +[AFAnalytics sharedAnalytics];
    v38[0] = @"state";
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(a1[4] + 1)];
    v38[1] = @"trigger";
    v39[0] = v24;
    v39[1] = @"VoiceTrigger";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
    [v23 logEventWithType:2011 context:v25];
  }

  v26 = a1[4];
  if ((v26[313] & 1) != 0 || v26[314] == 1)
  {
    [v26 _startAdvertisingFromInTaskVoiceTrigger];
    goto LABEL_24;
  }

  if (!v11 || !a1[5])
  {
    goto LABEL_40;
  }

  v32 = [v11 reason];
  isEqualToString = objc_msgSend_isEqualToString_(v32);

  if ((isEqualToString & 1) == 0)
  {
    v26 = a1[4];
LABEL_40:
    [v26 _startAdvertisingFromVoiceTrigger];
    goto LABEL_24;
  }

  v34 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v41 = "[AFMyriadCoordinator startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:withContext:]_block_invoke";
    v42 = 2112;
    *v43 = v11;
    _os_log_impl(&dword_1912FE000, v34, OS_LOG_TYPE_INFO, "%s #myriad CarPlay override %@", buf, 0x16u);
  }

  [a1[4] _initializeTimer];
  v35 = [a1[4] voiceTriggerRecord];
  v36 = a1[4];
  v37 = v36[30];
  v36[30] = v35;

  if (![*(a1[4] + 30) pHash])
  {
    [*(a1[4] + 30) setPHash:0xFFFFLL];
  }

  [a1[4] _forceLocalWinner:a1[5]];
LABEL_24:
  if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
  {
    [a1[4] _createMyriadSessionIfRequired];
    v27 = a1[4];
    v28 = 6;
    if ((v27[313] & 1) == 0)
    {
      if (v27[314])
      {
        v28 = 6;
      }

      else
      {
        v28 = 2;
      }
    }

    v29 = *(v27 + 76);
    v30 = [v27 _myriadStateForSelf:*(v27 + 1)];
    v31 = [*(a1[4] + 64) sessionId];
    [v29 logCDADeviceStateActivityStartedOrChanged:v30 withTrigger:v28 withCdaId:v31 withTimestamp:mach_absolute_time()];
  }
}

- (void)startAdvertisingFromVoiceTriggerAdjusted:(char)adjusted withContext:(id)context
{
  adjustedCopy = adjusted;
  v19 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = objc_alloc_init(AFMyriadGoodnessScoreOverrideContext);
  [(AFMyriadGoodnessScoreOverrideContext *)v7 setOverrideContext:1];
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    deviceAdjust = self->_deviceAdjust;
    v13 = 136315650;
    v14 = "[AFMyriadCoordinator startAdvertisingFromVoiceTriggerAdjusted:withContext:]";
    v15 = 1024;
    v16 = deviceAdjust;
    v17 = 1024;
    v18 = adjustedCopy;
    _os_log_debug_impl(&dword_1912FE000, v8, OS_LOG_TYPE_DEBUG, "%s #myriad _deviceAdjust=%d, adjustment= %d", &v13, 0x18u);
  }

  if ([contextCopy activationSource] == 13 && self->_deviceClass == 3)
  {
    v9 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
    {
      v12 = self->_deviceAdjust;
      v13 = 136315394;
      v14 = "[AFMyriadCoordinator startAdvertisingFromVoiceTriggerAdjusted:withContext:]";
      v15 = 1024;
      v16 = v12;
      _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s #myriad removing negative iPad device boost (adding %d back) due to activationSource", &v13, 0x12u);
    }

    LOBYTE(adjustedCopy) = adjustedCopy - LOBYTE(self->_deviceAdjust);
  }

  [(AFMyriadGoodnessScoreOverrideContext *)v7 setOverriddenAdjustedScore:adjustedCopy];
  v10 = objc_alloc_init(AFMyriadGoodnessScoreContext);
  [(AFMyriadGoodnessScoreContext *)v10 setOverridingContext:v7];
  [(AFMyriadCoordinator *)self startAdvertisingFromVoiceTriggerWithGoodnessScoreContext:v10 withContext:contextCopy];
}

- (void)_startAdvertisingFromVoiceTrigger
{
  v41 = *MEMORY[0x1E69E9840];
  if (self->_inTask || self->_inSetupMode)
  {

    [(AFMyriadCoordinator *)self _startAdvertisingFromInTaskVoiceTrigger];
  }

  else
  {
    [(AFMyriadCoordinator *)self _initializeTimer];
    voiceTriggerRecord = [(AFMyriadCoordinator *)self voiceTriggerRecord];
    triggerRecord = self->_triggerRecord;
    self->_triggerRecord = voiceTriggerRecord;

    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      deviceClassName = self->_deviceClassName;
      productTypeName = self->_productTypeName;
      deviceAdjust = self->_deviceAdjust;
      incomingAdjustment = self->_incomingAdjustment;
      v11 = self->_triggerRecord;
      v12 = v5;
      v29 = 136316418;
      v30 = "[AFMyriadCoordinator _startAdvertisingFromVoiceTrigger]";
      v31 = 2112;
      v32 = *&deviceClassName;
      v33 = 2112;
      v34 = productTypeName;
      v35 = 1024;
      v36 = deviceAdjust;
      v37 = 1024;
      v38 = incomingAdjustment;
      v39 = 1024;
      rawAudioGoodnessScore = [(AFMyriadRecord *)v11 rawAudioGoodnessScore];
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s #myriad BTLE device class: %@ (%@) detected, adjusting goodness by %d incomingAdjustment %d, rawAudioGoodnessScore: %d", &v29, 0x32u);
    }

    LODWORD(v6) = 1.0;
    [(AFMyriadRecord *)self->_triggerRecord adjustByMultiplier:self->_deviceAdjust + self->_incomingAdjustment adding:v6];
    constantGoodness = self->_constantGoodness;
    if ((constantGoodness & 0x80000000) == 0)
    {
      v14 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v29 = 136315394;
        v30 = "[AFMyriadCoordinator _startAdvertisingFromVoiceTrigger]";
        v31 = 1024;
        LODWORD(v32) = constantGoodness;
        _os_log_impl(&dword_1912FE000, v14, OS_LOG_TYPE_INFO, "%s #myriad BTLE overriding to constant goodness %d", &v29, 0x12u);
        constantGoodness = self->_constantGoodness;
      }

      [(AFMyriadRecord *)self->_triggerRecord setRawAudioGoodnessScore:0 withBump:constantGoodness];
    }

    if (self->_wasEmergency)
    {
      processInfo = [MEMORY[0x1E696AE30] processInfo];
      [processInfo systemUptime];
      v17 = v16 - self->_lastEmergencyAttempt;

      if (v17 < 70.0)
      {
        goodness = [(AFMyriadRecord *)self->_triggerRecord goodness];
        v19 = goodness >= 0xC ? 12 : goodness;
        [(AFMyriadRecord *)self->_triggerRecord setRawAudioGoodnessScore:0 withBump:v19];
        v20 = AFSiriLogContextConnection;
        if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
        {
          v21 = self->_triggerRecord;
          v22 = v20;
          goodness2 = [(AFMyriadRecord *)v21 goodness];
          v29 = 136315650;
          v30 = "[AFMyriadCoordinator _startAdvertisingFromVoiceTrigger]";
          v31 = 2048;
          v32 = v17;
          v33 = 1024;
          LODWORD(v34) = goodness2;
          _os_log_impl(&dword_1912FE000, v22, OS_LOG_TYPE_INFO, "%s #myriad Downgrading goodness as HS invocation too soon %f for score %d", &v29, 0x1Cu);
        }
      }

      self->_lastEmergencyAttempt = 0.0;
      self->_wasEmergency = 0;
    }

    overrideMyriadRecord = self->_overrideMyriadRecord;
    if (overrideMyriadRecord)
    {
      v25 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v29 = 136315394;
        v30 = "[AFMyriadCoordinator _startAdvertisingFromVoiceTrigger]";
        v31 = 2112;
        v32 = *&overrideMyriadRecord;
        _os_log_impl(&dword_1912FE000, v25, OS_LOG_TYPE_INFO, "%s #myriad BTLE overriding to goodness %@", &v29, 0x16u);
        overrideMyriadRecord = self->_overrideMyriadRecord;
      }

      v26 = overrideMyriadRecord;
      v27 = self->_overrideMyriadRecord;
      self->_overrideMyriadRecord = 0;

      v28 = self->_triggerRecord;
      self->_triggerRecord = v26;
    }

    self->_clientIsDirectActivating = 0;
    self->_recordType = 10;
    [(AFMyriadCoordinator *)self _enterState:1];
  }
}

- (void)startAdvertisingFromVoiceTriggerWithContext:(id)context
{
  contextCopy = context;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__AFMyriadCoordinator_startAdvertisingFromVoiceTriggerWithContext___block_invoke;
  v7[3] = &unk_1E7349860;
  v7[4] = self;
  v8 = contextCopy;
  v6 = contextCopy;
  dispatch_async(myriadWorkQueue, v7);
}

void __67__AFMyriadCoordinator_startAdvertisingFromVoiceTriggerWithContext___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _setMyriadContext:*(a1 + 40)];
  [*(a1 + 32) _updateVoiceTriggerTimeFromFile];
  v2 = *(a1 + 32);
  if (v2[329] == 1)
  {
    v2[329] = 0;
  }

  else
  {
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = v2[313];
      v5 = v2[314];
      v6 = *(a1 + 40);
      *buf = 136315906;
      v24 = "[AFMyriadCoordinator startAdvertisingFromVoiceTriggerWithContext:]_block_invoke";
      v25 = 1024;
      v26 = v4;
      v27 = 1024;
      v28 = v5;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s BTLE startFromVoiceTrigger inTask=%d, inSetupMode=%d, context=%@", buf, 0x22u);
    }

    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      v7 = +[AFAnalytics sharedAnalytics];
      v21[0] = @"state";
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", *(*(a1 + 32) + 8)];
      v21[1] = @"trigger";
      v22[0] = v8;
      v22[1] = @"VoiceTrigger";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];
      [v7 logEventWithType:2011 context:v9];
    }

    v10 = *(a1 + 32);
    if ((v10[313] & 1) != 0 || v10[314] == 1)
    {
      [v10 _startAdvertisingFromInTaskVoiceTrigger];
    }

    else
    {
      [v10 _startAdvertisingFromVoiceTrigger];
    }

    if (+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      [*(a1 + 32) _createMyriadSessionIfRequired];
      v11 = *(a1 + 32);
      if ((*(v11 + 313) & 1) != 0 || *(v11 + 314) == 1)
      {
        v12 = *(v11 + 608);
        v13 = [v11 _myriadStateForSelf:*(v11 + 8)];
        v14 = [*(*(a1 + 32) + 512) sessionId];
        v15 = mach_absolute_time();
        v16 = v12;
        v17 = v13;
        v18 = 6;
      }

      else
      {
        v19 = *(v11 + 608);
        v20 = [v11 _myriadStateForSelf:*(v11 + 8)];
        v14 = [*(*(a1 + 32) + 512) sessionId];
        v15 = mach_absolute_time();
        v16 = v19;
        v17 = v20;
        v18 = 2;
      }

      [v16 logCDADeviceStateActivityStartedOrChanged:v17 withTrigger:v18 withCdaId:v14 withTimestamp:v15];
    }
  }
}

- (void)startAdvertisingForPHSSetupAfterDelay:(float)delay maxInterval:(float)interval
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v12 = 136315138;
    v13 = "[AFMyriadCoordinator startAdvertisingForPHSSetupAfterDelay:maxInterval:]";
    _os_log_impl(&dword_1912FE000, v7, OS_LOG_TYPE_INFO, "%s ", &v12, 0xCu);
  }

  _phsSetupRecord = [(AFMyriadCoordinator *)self _phsSetupRecord];
  asAdvertisementData = [_phsSetupRecord asAdvertisementData];
  *&v10 = delay;
  *&v11 = interval;
  [(AFMyriadCoordinator *)self advertiseWith:asAdvertisementData afterDelay:v10 maxInterval:v11];
}

- (void)preheatWiProx
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__AFMyriadCoordinator_preheatWiProx__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

void *__36__AFMyriadCoordinator_preheatWiProx__block_invoke(void *result)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = result[4];
  if (!*(v1 + 8))
  {
    v2 = result;
    v3 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v4 = *(v1 + 300);
      v5 = 136315394;
      v6 = "[AFMyriadCoordinator preheatWiProx]_block_invoke";
      v7 = 1024;
      v8 = v4;
      _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s Preheat shows slowdown for this device as %d msecs", &v5, 0x12u);
      v1 = v2[4];
    }

    if (*(v1 + 300))
    {
      return [v1 startAdvertisingSlowdown:*(v1 + 300)];
    }

    else
    {
      [v1 _initializeTimer];
      return [v2[4] enterState:15];
    }
  }

  return result;
}

- (void)_updateVoiceTriggerTimeFromFile
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = safelyGetAudioData();
  v11 = 0;
  if ([v3 length] >= 0xC)
  {
    [v3 getBytes:&v11 range:{4, 8}];
  }

  v4 = mach_absolute_time();
  if (_AFMachAbsoluteTimeRate_onceToken != -1)
  {
    dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
  }

  v5 = *&_AFMachAbsoluteTimeRate_rate * v4 / 1000000000.0;
  v6 = AFSiriLogContextConnection;
  v7 = v5 - *&_AFMachAbsoluteTimeRate_rate * v11 / 1000000000.0;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v9 = v6;
    v10 = [v3 debugDescription];
    *buf = 136315906;
    v13 = "[AFMyriadCoordinator _updateVoiceTriggerTimeFromFile]";
    v14 = 2112;
    v15 = *&v10;
    v16 = 2048;
    v17 = v11;
    v18 = 2048;
    v19 = v7;
    _os_log_debug_impl(&dword_1912FE000, v9, OS_LOG_TYPE_DEBUG, "%s data=%@, voiceTriggerTimeRaw=%llu, secondsSinceTrigger=%f", buf, 0x2Au);

    v6 = AFSiriLogContextConnection;
  }

  v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v7 <= 2.0)
  {
    if (v8)
    {
      *buf = 136315394;
      v13 = "[AFMyriadCoordinator _updateVoiceTriggerTimeFromFile]";
      v14 = 2048;
      v15 = v7;
      _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s #myriad endTime from a file is good, secondsSinceTrigger=%f", buf, 0x16u);
    }

    self->_voiceTriggerTime = v11;
  }

  else if (v8)
  {
    *buf = 136315394;
    v13 = "[AFMyriadCoordinator _updateVoiceTriggerTimeFromFile]";
    v14 = 2048;
    v15 = v7;
    _os_log_debug_impl(&dword_1912FE000, v6, OS_LOG_TYPE_DEBUG, "%s #myriad endTime from a file is too old, secondsSinceTrigger=%f", buf, 0x16u);
  }
}

- (void)_setMyriadContext:(id)context
{
  v4 = [context copy];
  currentMyriadContext = self->_currentMyriadContext;
  self->_currentMyriadContext = v4;
}

- (void)_initDeviceClassAndAdjustments
{
  v45 = *MEMORY[0x1E69E9840];
  self->_productType = 0;
  v3 = MGCopyAnswer();
  productTypeName = self->_productTypeName;
  self->_productTypeName = v3;

  v5 = MGCopyAnswer();
  deviceClassName = self->_deviceClassName;
  self->_deviceClassName = v5;

  *&self->_deviceDelay = xmmword_1914CFD00;
  *&self->_deviceInEarDelay = xmmword_1914CFD10;
  if (objc_msgSend_isEqualToString_(self->_deviceClassName))
  {
    self->_deviceAdjust = 0;
    v7 = 2;
LABEL_8:
    self->_deviceClass = v7;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(self->_deviceClassName))
  {
    self->_deviceAdjust = 0;
LABEL_7:
    v7 = 3;
    goto LABEL_8;
  }

  if (objc_msgSend_isEqualToString_(self->_deviceClassName))
  {
    self->_deviceAdjust = -4;
    goto LABEL_7;
  }

  if (objc_msgSend_isEqualToString_(self->_deviceClassName))
  {
    self->_deviceAdjust = 0;
    v18 = 4;
LABEL_18:
    self->_deviceClass = v18;
    self->_deviceTrumpDelay = 0.75;
    goto LABEL_9;
  }

  if (objc_msgSend_isEqualToString_(self->_deviceClassName))
  {
    self->_deviceAdjust = 10;
    v19 = MGCopyAnswer();
    if ((objc_msgSend_isEqualToString_(v19) & 1) == 0)
    {
      v20 = AFProductType();
      objc_msgSend_isEqualToString_(v20);
    }

    v18 = 6;
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(self->_deviceClassName))
  {
    self->_deviceAdjust = 0;
    self->_deviceClass = 7;
    v21 = MGGetProductType();
    if (v21 > 3348380075)
    {
      if (v21 != 3348380076)
      {
        if (v21 == 4240173202)
        {
          v22 = 1;
          goto LABEL_29;
        }

LABEL_31:
        self->_productType = 0;
        goto LABEL_32;
      }

      v24 = 3;
    }

    else
    {
      if (v21 != 1540760353)
      {
        if (v21 == 2702125347)
        {
          v22 = 2;
LABEL_29:
          self->_productType = v22;
LABEL_32:
          self->_deviceAdjust = 0;
          goto LABEL_9;
        }

        goto LABEL_31;
      }

      v24 = 5;
    }

    self->_productType = v24;
    self->_deviceAdjust = -2;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(self->_deviceClassName);
    self->_deviceAdjust = 0;
    if (isEqualToString)
    {
      v7 = 8;
      goto LABEL_8;
    }

    self->_deviceClass = 0;
  }

LABEL_9:
  self->_deviceVTEndtimeDistanceThreshold = 0.5;
  [(AFMyriadCoordinator *)self _readDefaults];
  v8 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v9 = self->_deviceClassName;
    v10 = self->_productTypeName;
    deviceClass = self->_deviceClass;
    deviceAdjust = self->_deviceAdjust;
    deviceDelay = self->_deviceDelay;
    deviceTrumpDelay = self->_deviceTrumpDelay;
    deviceInEarDelay = self->_deviceInEarDelay;
    deviceInEarInterval = self->_deviceInEarInterval;
    deviceVTEndtimeDistanceThreshold = self->_deviceVTEndtimeDistanceThreshold;
    v25 = 136317442;
    v26 = "[AFMyriadCoordinator _initDeviceClassAndAdjustments]";
    v27 = 2112;
    v28 = v9;
    v29 = 2112;
    v30 = v10;
    v31 = 2048;
    v32 = deviceClass;
    v33 = 2048;
    v34 = deviceAdjust;
    v35 = 2048;
    v36 = deviceDelay;
    v37 = 2048;
    v38 = deviceTrumpDelay;
    v39 = 2048;
    v40 = deviceInEarDelay;
    v41 = 2048;
    v42 = deviceInEarInterval;
    v43 = 2048;
    v44 = deviceVTEndtimeDistanceThreshold;
    _os_log_impl(&dword_1912FE000, v8, OS_LOG_TYPE_INFO, "%s BTLE device class: %@ (%@) detected, category %ld, adjusting goodness by %ld, std delay %f, trump delay %f, in_ear delay %f interval %f vt_endtime threshold %f", &v25, 0x66u);
  }
}

- (void)_readDefaults
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[AFMyriadCoordinator _readDefaults]";
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s #myriad reading defaults", &v18, 0xCu);
  }

  self->_coordinationEnabled = [(AFMyriadPreferences *)self->_preferences coordinationEnabled];
  self->_BLEActivityEnabled = [(AFMyriadPreferences *)self->_preferences BLEActivityEnabled];
  self->_constantGoodness = [(AFMyriadPreferences *)self->_preferences constantGoodnessScore];
  self->_deviceGroup = [(AFMyriadPreferences *)self->_preferences deviceGroup];
  [(AFMyriadPreferences *)self->_preferences deviceSlowDown];
  self->_testInducedSlowdownMsecs = (v4 * 1000.0);
  if ([(AFMyriadPreferences *)self->_preferences myriadServerHasProvisioned])
  {
    v5 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v18 = 136315138;
      v19 = "[AFMyriadCoordinator _readDefaults]";
      _os_log_impl(&dword_1912FE000, v5, OS_LOG_TYPE_INFO, "%s #myriad reading server provisioned defaults", &v18, 0xCu);
    }

    if ([(AFMyriadPreferences *)self->_preferences deviceClass])
    {
      self->_deviceClass = [(AFMyriadPreferences *)self->_preferences deviceClass];
    }

    [(AFMyriadPreferences *)self->_preferences deviceAdjust];
    self->_deviceAdjust = v6;
    [(AFMyriadPreferences *)self->_preferences deviceDelay];
    self->_deviceDelay = v7;
    [(AFMyriadPreferences *)self->_preferences deviceTrumpDelay];
    self->_deviceTrumpDelay = v8;
    [(AFMyriadPreferences *)self->_preferences voiceTriggerEndtimeDelayThreshold];
    self->_deviceVTEndtimeDistanceThreshold = v9;
  }

  v10 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    deviceClassName = self->_deviceClassName;
    productTypeName = self->_productTypeName;
    deviceClass = self->_deviceClass;
    deviceAdjust = self->_deviceAdjust;
    deviceDelay = self->_deviceDelay;
    deviceTrumpDelay = self->_deviceTrumpDelay;
    deviceVTEndtimeDistanceThreshold = self->_deviceVTEndtimeDistanceThreshold;
    v18 = 136316930;
    v19 = "[AFMyriadCoordinator _readDefaults]";
    v20 = 2112;
    v21 = deviceClassName;
    v22 = 2112;
    v23 = productTypeName;
    v24 = 2048;
    v25 = deviceClass;
    v26 = 2048;
    v27 = deviceAdjust;
    v28 = 2048;
    v29 = deviceDelay;
    v30 = 2048;
    v31 = deviceTrumpDelay;
    v32 = 2048;
    v33 = deviceVTEndtimeDistanceThreshold;
    _os_log_impl(&dword_1912FE000, v10, OS_LOG_TYPE_INFO, "%s #myriad reading defaults: BTLE device class: %@ (%@) detected, category %ld, adjusting goodness by %ld, std delay %f, trump delay %f, vt_endtime threshold %f", &v18, 0x52u);
  }
}

- (void)readDefaults
{
  myriadWorkQueue = self->_myriadWorkQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__AFMyriadCoordinator_readDefaults__block_invoke;
  block[3] = &unk_1E73497C8;
  block[4] = self;
  dispatch_async(myriadWorkQueue, block);
}

- (void)updateRequestId:(id)id
{
  idCopy = id;
  myriadWorkQueue = self->_myriadWorkQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AFMyriadCoordinator_updateRequestId___block_invoke;
  v7[3] = &unk_1E7349860;
  v8 = idCopy;
  selfCopy = self;
  v6 = idCopy;
  dispatch_async(myriadWorkQueue, v7);
}

void __39__AFMyriadCoordinator_updateRequestId___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v9 = 136315394;
    v10 = "[AFMyriadCoordinator updateRequestId:]_block_invoke";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_1912FE000, v2, OS_LOG_TYPE_INFO, "%s #myriad requestIdNotification: %@", &v9, 0x16u);
  }

  v4 = *(a1 + 40);
  v5 = objc_alloc(MEMORY[0x1E696AFB0]);
  v6 = [*(a1 + 32) userInfo];
  v7 = [v6 objectForKeyedSubscript:@"requestId"];
  v8 = [v5 initWithUUIDString:v7];
  [v4 setCurrentRequestId:v8];
}

- (void)dealloc
{
  [(AFMyriadCoordinator *)self _clearWiProxReadinessTimer];
  [(AFPowerAssertionManager *)self->_powerAssertionManager releaseAllPowerAssertions];
  arbitrationEventsDelegate = self->_arbitrationEventsDelegate;
  self->_arbitrationEventsDelegate = 0;

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  if (self->_BLEActivityEnabled)
  {
    [(WPHeySiri *)self->_heySiriBTLE stopScanningAndAdvertising];
    [(WPHeySiri *)self->_heySiriBTLE invalidate];
    self->_heySiriBTLEState = 0;
  }

  v5.receiver = self;
  v5.super_class = AFMyriadCoordinator;
  [(AFMyriadCoordinator *)&v5 dealloc];
}

- (AFMyriadCoordinator)initWithDelegate:(id)delegate
{
  v98 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  v91.receiver = self;
  v91.super_class = AFMyriadCoordinator;
  v5 = [(AFMyriadCoordinator *)&v91 init];
  if (!v5)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_21;
  }

  if (_currentCoordinator)
  {
    v6 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v93 = "[AFMyriadCoordinator initWithDelegate:]";
      _os_log_error_impl(&dword_1912FE000, v6, OS_LOG_TYPE_ERROR, "%s Attempt to initialize MyriadCoordinator when one already exists.", buf, 0xCu);
    }

    goto LABEL_5;
  }

  kdebug_trace();
  *(v5 + 2) = 0;
  *(v5 + 3) = 0;
  *(v5 + 1) = 0;
  objc_storeWeak(v5 + 11, delegateCopy);
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v9 = *(v5 + 5);
  *(v5 + 5) = v8;

  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v11 = *(v5 + 6);
  *(v5 + 6) = v10;

  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v13 = *(v5 + 7);
  *(v5 + 7) = v12;

  v14 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v15 = *(v5 + 9);
  *(v5 + 9) = v14;

  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v17 = *(v5 + 8);
  *(v5 + 8) = v16;

  v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:10];
  v19 = *(v5 + 10);
  *(v5 + 10) = v18;

  v20 = *(v5 + 4);
  *(v5 + 4) = 0;

  v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v22 = dispatch_queue_attr_make_with_qos_class(v21, QOS_CLASS_USER_INTERACTIVE, 0);

  v23 = dispatch_queue_create(myriad_work_queue_label, v22);
  v24 = *(v5 + 22);
  *(v5 + 22) = v23;

  v25 = dispatch_queue_create(myriad_context_queue_label, v22);
  v26 = *(v5 + 23);
  *(v5 + 23) = v25;

  if (*(v5 + 23))
  {
    v27 = [[AFMyriadAdvertisementContextManager alloc] initWithQueue:*(v5 + 23)];
    v28 = *(v5 + 61);
    *(v5 + 61) = v27;
  }

  v29 = +[AFInstanceContext defaultContext];
  v30 = objc_alloc_init(AFMyriadInstrumentation);
  v31 = *(v5 + 76);
  *(v5 + 76) = v30;

  v32 = [AFMyriadGoodnessScoreEvaluator alloc];
  v33 = +[AFPreferences sharedPreferences];
  v34 = [(AFMyriadGoodnessScoreEvaluator *)v32 initWithDeviceInstanceContext:v29 preferences:v33 queue:*(v5 + 22) instrumentation:*(v5 + 76)];
  v35 = *(v5 + 63);
  *(v5 + 63) = v34;

  [*(v5 + 63) setLastActivationTime:0.0];
  v36 = [AFMyriadPreferences alloc];
  v37 = +[AFPreferences sharedPreferences];
  v38 = [(AFMyriadPreferences *)v36 initWithDeviceInstanceContext:v29 preferences:v37];
  v39 = *(v5 + 72);
  *(v5 + 72) = v38;

  v5[318] = [*(v5 + 72) coordinationEnabled];
  v5[319] = [*(v5 + 72) BLEActivityEnabled];
  v5[168] = [*(v5 + 72) deviceGroup];
  [*(v5 + 72) deviceSlowDown];
  *(v5 + 75) = (v40 * 1000.0);
  *(v5 + 156) = 0;
  v5[418] = 0;
  v5[314] = 0;
  *(v5 + 325) = 0;
  *(v5 + 164) = 0;
  *(v5 + 321) = 0;
  v5[330] = 0;
  v41 = *(v5 + 78);
  *(v5 + 78) = 0;

  v5[280] = 0;
  *(v5 + 74) = 0;
  v42 = [[AFPowerAssertionManager alloc] initWithIdentifier:@"com.apple.assistant.myriad"];
  v43 = *(v5 + 28);
  *(v5 + 28) = v42;

  v44 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v45 = v5[318];
    v46 = v5[319];
    *buf = 136315650;
    v93 = "[AFMyriadCoordinator initWithDelegate:]";
    v94 = 1024;
    v95 = v45;
    v96 = 1024;
    v97 = v46;
    _os_log_impl(&dword_1912FE000, v44, OS_LOG_TYPE_INFO, "%s #myriad coordinationEnabled=%d, BLEActivityEnabled=%d ", buf, 0x18u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, notificationCallback, @"com.apple.siri.myriad.apayload", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, outputTriggerSeenCallback, @"com.apple.siri.corespeech.selftrigger", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, emergencyCallback, @"com.apple.siri.myriad.falseemergency", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, myriadDecisionRequestCallback, @"com.apple.siri.myriad.get.decision", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, inEarTriggerSeenCallback, @"com.apple.siri.myriad.in.ear", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, carplayTriggerSeenCallback, @"com.apple.siri.myriad.jarvis", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v49 = *(v5 + 45);
  *(v5 + 45) = uUID;

  v50 = *(v5 + 30);
  *(v5 + 30) = 0;

  *(v5 + 31) = 0;
  *(v5 + 32) = 0;
  *(v5 + 33) = 0;
  objc_storeStrong(&_currentCoordinator, v5);
  v5[320] = 0;
  v5[327] = 0;
  v51 = *(v5 + 24);
  *(v5 + 24) = &stru_1F0512680;

  *(v5 + 34) = 0;
  v52 = *(v5 + 38);
  *(v5 + 38) = 0;

  *(v5 + 201) = 0;
  v53 = *(v5 + 46);
  *(v5 + 46) = 0;

  *(v5 + 94) = 0;
  v5[417] = 0;
  *(v5 + 49) = 0;
  v5[400] = 0;
  v54 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v55 = *(v5 + 43);
  *(v5 + 43) = v54;

  [*(v5 + 43) setDateFormat:@"hh:mm:ss.SSS"];
  v56 = objc_alloc_init(AFMyriadEmergencyCallPunchout);
  v57 = *(v5 + 48);
  *(v5 + 48) = v56;

  [v5 _initDeviceClassAndAdjustments];
  *(v5 + 29) = CFNotificationCenterGetDarwinNotifyCenter();
  v58 = *(v5 + 26);
  *(v5 + 26) = 0;

  v59 = *(v5 + 64);
  *(v5 + 64) = 0;

  [v5 _initializeTimer];
  *(v5 + 220) = 0;
  [v5 _initializeWiProxReadinessTimer];
  [v5 _resetAdvertisementTimings];
  v60 = 0;
  if (v5[319] == 1)
  {
    v60 = [objc_alloc(getWPHeySiriClass(0)) initWithDelegate:v5 queue:*(v5 + 22)];
  }

  v61 = *(v5 + 44);
  *(v5 + 44) = v60;

  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __40__AFMyriadCoordinator_initWithDelegate___block_invoke;
  v89[3] = &unk_1E73497C8;
  v62 = v5;
  v90 = v62;
  [v62 waitWiProx:2000 andExecute:v89];
  v63 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v93 = "[AFMyriadCoordinator initWithDelegate:]";
    _os_log_impl(&dword_1912FE000, v63, OS_LOG_TYPE_INFO, "%s Initialized MyriadCoordinator", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter addObserver:v62 selector:sel_updateRequestId_ name:@"RequestIdForMyriad" object:0];

  objc_storeStrong(&_currentCoordinator, v5);
  *(v62 + 51) = 0;
  v65 = [AFNotifyStatePublisher alloc];
  v66 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.siri.myriad.decision.begin" encoding:4];
  v67 = [(AFNotifyStatePublisher *)v65 initWithName:v66 queue:*(v5 + 22)];
  v68 = *(v62 + 65);
  *(v62 + 65) = v67;

  v69 = [AFNotifyStatePublisher alloc];
  v70 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.siri.myriad.decision.won" encoding:4];
  v71 = [(AFNotifyStatePublisher *)v69 initWithName:v70 queue:*(v5 + 22)];
  v72 = *(v62 + 66);
  *(v62 + 66) = v71;

  v73 = [AFNotifyStatePublisher alloc];
  v74 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.siri.myriad.decision.lost" encoding:4];
  v75 = [(AFNotifyStatePublisher *)v73 initWithName:v74 queue:*(v5 + 22)];
  v76 = *(v62 + 67);
  *(v62 + 67) = v75;

  v77 = [AFNotifyStatePublisher alloc];
  v78 = [MEMORY[0x1E696AEC0] stringWithCString:"com.apple.siri.myriad.repost.decision.won" encoding:4];
  v79 = [(AFNotifyStatePublisher *)v77 initWithName:v78 queue:*(v5 + 22)];
  v80 = *(v62 + 68);
  *(v62 + 68) = v79;

  *(v62 + 71) = 0;
  v81 = observerWithNotificationName("com.apple.siri.myriad.readdefaults", v29, 1, v62, *(v5 + 22));
  v82 = *(v62 + 69);
  *(v62 + 69) = v81;

  if (AFIsInternalInstall_onceToken != -1)
  {
    dispatch_once(&AFIsInternalInstall_onceToken, &__block_literal_global_164_46064);
  }

  if (AFIsInternalInstall_isInternal == 1)
  {
    v83 = AFMyriadForceNoActivityNotifyStateObserver(v29, 1, v62, *(v5 + 22));
    v84 = *(v62 + 70);
    *(v62 + 70) = v83;
  }

  if (+[AFFeatureFlags isCrossDeviceArbitrationFeedbackEnabled])
  {
    v85 = objc_alloc_init(AFArbitrationParticipationController);
    v86 = *(v62 + 79);
    *(v62 + 79) = v85;
  }

  v87 = *(v62 + 77);
  *(v62 + 77) = 0;

  kdebug_trace();
  v7 = v62;

LABEL_21:
  return v7;
}

uint64_t __40__AFMyriadCoordinator_initWithDelegate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 319) == 1)
  {
    [*(v2 + 352) stopScanningAndAdvertising];
    v2 = *(a1 + 32);
  }

  *(v2 + 440) = 0;
  *(*(a1 + 32) + 441) = 0;
  v3 = *(a1 + 32);

  return [v3 enterState:17];
}

+ (void)clearCurrentCoordinator
{
  v2 = _currentCoordinator;
  _currentCoordinator = 0;
}

+ (void)didChangeDefaults
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.siri.myriad.readdefaults", 0, 0, 1u);
}

@end