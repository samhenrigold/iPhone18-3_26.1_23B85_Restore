@interface IRSystemStateManager
- (BOOL)_updateSystemStateWithAppInFocus:(id)focus andOpenWindowIfApplicable:(BOOL)applicable isScreenUnlockEvent:(BOOL)event;
- (BOOL)_updateSystemStateWithAppInFocusWindowEnd;
- (BOOL)_updateSystemStateWithDeviceWiFi:(id)fi;
- (BOOL)_updateSystemStateWithDisplayOn:(BOOL)on;
- (BOOL)_updateSystemStateWithIsContinuityDisplay:(BOOL)display;
- (BOOL)_updateSystemStateWithLOIType:(int)type WithLOIIdentifier:(id)identifier;
- (BOOL)_updateSystemStateWithMediaRoute:(id)route;
- (BOOL)_updateSystemStateWithOutputDevice:(id)device;
- (BOOL)_updateSystemStateWithPredictedOutputDevice:(id)device;
- (BOOL)startLowLatencyMiLo;
- (IRPolicyManagerContextObserver)contextObserver;
- (IRSystemStateManager)initWithQueue:(id)queue contextObserver:(id)observer biomeProvider:(id)provider miloProvider:(id)miloProvider proximityProvider:(id)proximityProvider serviceStore:(id)store displayMonitor:(id)monitor audioAVOutputContextController:(id)self0 isLowLatencyMiLo:(BOOL)self1;
- (void)_cancelAppInFocusWindowTimer;
- (void)_checkAndStartPDRFenceLogicIfNeededWithEvent:(id)event andCandidate:(id)candidate;
- (void)_checkAndStopPDRFenceLogicIfNeeded;
- (void)_checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:(id)event;
- (void)_didUpdateContextWithReason:(id)reason;
- (void)_initBiomeIfNeededUponAppInFocus;
- (void)_registerToMiLo:(BOOL)lo;
- (void)_startAppInFocusWindowTimer;
- (void)_unregisterForBiomeEvents;
- (void)_unregisterFromMiLo;
- (void)addEvent:(id)event forCandidate:(id)candidate;
- (void)context:(id)context didUpdateOutputDevice:(id)device;
- (void)context:(id)context didUpdatePredicatedOutputDevice:(id)device;
- (void)dealloc;
- (void)deallocSync;
- (void)didSpotOnLocationCompleteWithError:(id)error;
- (void)endAppInFocusWindow;
- (void)logProviderState;
- (void)monitor:(id)monitor didUpdateAppInFocus:(id)focus isScreenUnlockEvent:(BOOL)event;
- (void)monitor:(id)monitor didUpdateDisplayOn:(BOOL)on;
- (void)monitor:(id)monitor didUpdateIsContinuityDisplay:(BOOL)display;
- (void)onPrediction:(id)prediction;
- (void)onUpdateLOIType:(int)type WithLOIIdentifier:(id)identifier;
- (void)provider:(id)provider didUpdateDeviceWiFi:(id)fi;
- (void)provider:(id)provider didUpdateMediaRoute:(id)route;
- (void)provider:(id)provider didUpdateNearbyDevices:(id)devices;
- (void)restartLowLatencyMiLo:(BOOL)lo;
@end

@implementation IRSystemStateManager

- (void)_cancelAppInFocusWindowTimer
{
  appInFocusWindowTimer = [(IRSystemStateManager *)self appInFocusWindowTimer];

  if (appInFocusWindowTimer)
  {
    appInFocusWindowTimer2 = [(IRSystemStateManager *)self appInFocusWindowTimer];
    [appInFocusWindowTimer2 invalidate];

    [(IRSystemStateManager *)self setAppInFocusWindowTimer:0];
  }
}

- (void)_startAppInFocusWindowTimer
{
  objc_initWeak(&location, self);
  v3 = [IRTimer alloc];
  v4 = +[IRPreferences shared];
  appInFocusWindowInSeconds = [v4 appInFocusWindowInSeconds];
  [appInFocusWindowInSeconds doubleValue];
  v7 = v6;
  queue = [(IRSystemStateManager *)self queue];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __51__IRSystemStateManager__startAppInFocusWindowTimer__block_invoke;
  v13 = &unk_2797E0C18;
  objc_copyWeak(&v14, &location);
  v9 = [(IRTimer *)v3 initWithInterval:0 repeats:queue queue:&v10 block:v7];
  [(IRSystemStateManager *)self setAppInFocusWindowTimer:v9, v10, v11, v12, v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)_initBiomeIfNeededUponAppInFocus
{
  if ([(IRSystemStateManager *)self isBiomeRegistered])
  {
    return;
  }

  contextObserver = [(IRSystemStateManager *)self contextObserver];
  getService = [contextObserver getService];
  servicePackage = [getService servicePackage];

  if (servicePackage != 1)
  {
    return;
  }

  systemState = [(IRSystemStateManager *)self systemState];
  appInFocusBundleID = [systemState appInFocusBundleID];
  if ([appInFocusBundleID isEqual:@"com.apple.TVRemoteUIService"])
  {
  }

  else
  {
    systemState2 = [(IRSystemStateManager *)self systemState];
    appInFocusBundleID2 = [systemState2 appInFocusBundleID];
    v10 = [appInFocusBundleID2 isEqual:@"com.apple.facetime"];

    if ((v10 & 1) == 0)
    {
      return;
    }
  }

  for (i = 1; i != 4; ++i)
  {
    if (![IRSystemStateManager isObservedEventType:i])
    {
      continue;
    }

    biomeProvider = [(IRSystemStateManager *)self biomeProvider];
    [biomeProvider addObserver:self forEvent:i];

    biomeProvider2 = [(IRSystemStateManager *)self biomeProvider];
    v14 = [biomeProvider2 fetchLatestEventsOfEventType:i numEvents:1];

    if (v14 && [v14 count] == 1)
    {
      if (i == 2)
      {
        firstObject = [v14 firstObject];
        eventBody = [firstObject eventBody];

        [(IRSystemStateManager *)self _updateSystemStateWithMediaRoute:eventBody];
        goto LABEL_14;
      }

      if (i == 1)
      {
        firstObject2 = [v14 firstObject];
        eventBody = [firstObject2 eventBody];

        [(IRSystemStateManager *)self _updateSystemStateWithDeviceWiFi:eventBody];
LABEL_14:
      }
    }
  }

  [(IRSystemStateManager *)self setIsBiomeRegistered:1];
}

- (IRPolicyManagerContextObserver)contextObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_contextObserver);

  return WeakRetained;
}

- (void)logProviderState
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    nearbyDeviceContainer = [(IRSystemStateManager *)self nearbyDeviceContainer];
    v6 = 138412290;
    v7 = nearbyDeviceContainer;
    _os_log_impl(&dword_25543D000, v4, OS_LOG_TYPE_DEFAULT, "#system-state-manager, Cached Nearby devices: %@", &v6, 0xCu);
  }
}

- (IRSystemStateManager)initWithQueue:(id)queue contextObserver:(id)observer biomeProvider:(id)provider miloProvider:(id)miloProvider proximityProvider:(id)proximityProvider serviceStore:(id)store displayMonitor:(id)monitor audioAVOutputContextController:(id)self0 isLowLatencyMiLo:(BOOL)self1
{
  v79 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  observerCopy = observer;
  providerCopy = provider;
  miloProviderCopy = miloProvider;
  proximityProviderCopy = proximityProvider;
  storeCopy = store;
  monitorCopy = monitor;
  controllerCopy = controller;
  v72.receiver = self;
  v72.super_class = IRSystemStateManager;
  v25 = [(IRSystemStateManager *)&v72 init];
  if (v25)
  {
    v71 = controllerCopy;
    v26 = objc_alloc_init(MEMORY[0x277D02820]);
    v70 = queueCopy;
    [(IRSystemStateManager *)v25 setQueue:queueCopy];
    v69 = observerCopy;
    [(IRSystemStateManager *)v25 setContextObserver:observerCopy];
    v68 = providerCopy;
    [(IRSystemStateManager *)v25 setBiomeProvider:providerCopy];
    v67 = miloProviderCopy;
    [(IRSystemStateManager *)v25 setMiloProvider:miloProviderCopy];
    v65 = storeCopy;
    [(IRSystemStateManager *)v25 setServiceStore:storeCopy];
    v66 = proximityProviderCopy;
    [(IRSystemStateManager *)v25 setProximityProvider:proximityProviderCopy];
    v64 = monitorCopy;
    [(IRSystemStateManager *)v25 setDisplayMonitor:monitorCopy];
    [(IRSystemStateManager *)v25 setAudioAVOutputContextController:controllerCopy];
    v27 = [v26 copyMyAppleIDAndReturnError:0];
    localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
    secondsFromGMT = [localTimeZone secondsFromGMT];
    displayMonitor = [(IRSystemStateManager *)v25 displayMonitor];
    isContinuityDisplay = [displayMonitor isContinuityDisplay];
    displayMonitor2 = [(IRSystemStateManager *)v25 displayMonitor];
    BYTE1(v63) = [displayMonitor2 displayOn];
    LOBYTE(v63) = isContinuityDisplay;
    LOWORD(v62) = 0;
    v33 = [IRSystemStateDO systemStateDOWithAppInFocusBundleID:"systemStateDOWithAppInFocusBundleID:appInFocusWindowValid:deviceWiFiSSID:locationSemanticUserSpecificPlaceType:locationSemanticLoiIdentifier:iCloudId:avInitialRouteSharingPolicy:mediaRouteGroupLeaderOutputDeviceID:timeZoneSeconds:outputDeviceName:outputDeviceType:outputDeviceSubType:predictedOutputDeviceName:predictedOutputDeviceType:predictedOutputDeviceSubType:appInFocusWindowScreenUnlockEvent:pdrFenceActive:latestPickerChoiceDate:isContinuityDisplay:displayOn:" appInFocusWindowValid:0 deviceWiFiSSID:0 locationSemanticUserSpecificPlaceType:0 locationSemanticLoiIdentifier:0 iCloudId:0 avInitialRouteSharingPolicy:v27 mediaRouteGroupLeaderOutputDeviceID:0 timeZoneSeconds:0 outputDeviceName:secondsFromGMT outputDeviceType:0 outputDeviceSubType:0 predictedOutputDeviceName:0 predictedOutputDeviceType:0 predictedOutputDeviceSubType:0 appInFocusWindowScreenUnlockEvent:0 pdrFenceActive:v62 latestPickerChoiceDate:0 isContinuityDisplay:v63 displayOn:?];
    [(IRSystemStateManager *)v25 setSystemState:v33];

    v34 = [IRNearbyDeviceContainerDO alloc];
    v35 = [MEMORY[0x277CBEB98] set];
    v36 = [(IRNearbyDeviceContainerDO *)v34 initWithFreezeDateNIHomeDevice:0 nearbyDevices:v35];
    [(IRSystemStateManager *)v25 setNearbyDeviceContainer:v36];

    [(IRSystemStateManager *)v25 _registerToMiLo:lo];
    proximityProvider = [(IRSystemStateManager *)v25 proximityProvider];
    [proximityProvider addObserver:v25];

    displayMonitor3 = [(IRSystemStateManager *)v25 displayMonitor];
    [displayMonitor3 addObserver:v25];

    audioAVOutputContextController = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    [audioAVOutputContextController addObserver:v25];

    displayMonitor4 = [(IRSystemStateManager *)v25 displayMonitor];
    getAppInFocusWithTimestamp = [displayMonitor4 getAppInFocusWithTimestamp];

    v42 = +[IRPreferences shared];
    appInFocusWindowEnableOnServiceRun = [v42 appInFocusWindowEnableOnServiceRun];
    if ([appInFocusWindowEnableOnServiceRun BOOLValue])
    {
      v44 = 1;
    }

    else
    {
      v45 = [MEMORY[0x277CBEAA8] now];
      second = [getAppInFocusWithTimestamp second];
      [v45 timeIntervalSinceDate:second];
      v48 = v47;
      v49 = +[IRPreferences shared];
      appInFocusWindowInSeconds = [v49 appInFocusWindowInSeconds];
      [appInFocusWindowInSeconds doubleValue];
      v44 = v48 <= v51;
    }

    first = [getAppInFocusWithTimestamp first];
    [(IRSystemStateManager *)v25 _updateSystemStateWithAppInFocus:first andOpenWindowIfApplicable:v44 isScreenUnlockEvent:0];

    audioAVOutputContextController2 = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    getOutputDevice = [audioAVOutputContextController2 getOutputDevice];
    [(IRSystemStateManager *)v25 _updateSystemStateWithOutputDevice:getOutputDevice];

    audioAVOutputContextController3 = [(IRSystemStateManager *)v25 audioAVOutputContextController];
    getPredictedOutputDevice = [audioAVOutputContextController3 getPredictedOutputDevice];
    [(IRSystemStateManager *)v25 _updateSystemStateWithPredictedOutputDevice:getPredictedOutputDevice];

    v57 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v58 = *MEMORY[0x277D21260];
    providerCopy = v68;
    observerCopy = v69;
    monitorCopy = v64;
    controllerCopy = v71;
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEFAULT))
    {
      v59 = v58;
      systemState = [(IRSystemStateManager *)v25 systemState];
      *buf = 136315650;
      v74 = "#system-state-manager, ";
      v75 = 2112;
      v76 = v57;
      v77 = 2112;
      v78 = systemState;
      _os_log_impl(&dword_25543D000, v59, OS_LOG_TYPE_DEFAULT, "%s[%@], Initial state of system state = %@", buf, 0x20u);
    }

    queueCopy = v70;
    proximityProviderCopy = v66;
    miloProviderCopy = v67;
    storeCopy = v65;
  }

  return v25;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IRSystemStateManager;
  [(IRSystemStateManager *)&v2 dealloc];
}

- (void)deallocSync
{
  [(IRSystemStateManager *)self _unregisterFromMiLo];
  [(IRSystemStateManager *)self _unregisterForBiomeEvents];
  proximityProvider = [(IRSystemStateManager *)self proximityProvider];
  [proximityProvider removeObserver:self];

  displayMonitor = [(IRSystemStateManager *)self displayMonitor];
  [displayMonitor removeObserver:self];

  audioAVOutputContextController = [(IRSystemStateManager *)self audioAVOutputContextController];
  [audioAVOutputContextController removeObserver:self];
}

- (void)addEvent:(id)event forCandidate:(id)candidate
{
  candidateCopy = candidate;
  eventCopy = event;
  queue = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(IRSystemStateManager *)self _updateSystemStateWithAppInFocusWindowEnd];
  [(IRSystemStateManager *)self _checkAndStartPDRFenceLogicIfNeededWithEvent:eventCopy andCandidate:candidateCopy];

  [(IRSystemStateManager *)self _didUpdateContextWithReason:@"Add event"];
  [(IRSystemStateManager *)self _checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:eventCopy];
}

- (BOOL)startLowLatencyMiLo
{
  miloProvider = [(IRSystemStateManager *)self miloProvider];
  startLowLatencyMiLo = [miloProvider startLowLatencyMiLo];

  if (startLowLatencyMiLo)
  {
    miloProvider2 = [(IRSystemStateManager *)self miloProvider];
    requestSinglePrediction = [miloProvider2 requestSinglePrediction];

    v7 = [MEMORY[0x277CBEB98] set];
    date = [MEMORY[0x277CBEAA8] date];
    v9 = [IRMiloLslPredictionDO miloLslPredictionDOWithPredictionId:requestSinglePrediction isPredictionValid:1 isMapValid:0 isMotionDetected:0 scores:v7 predictionTime:date];
    [(IRSystemStateManager *)self setMiloProviderLslPredictionResults:v9];
  }

  return startLowLatencyMiLo;
}

- (void)endAppInFocusWindow
{
  if ([(IRSystemStateManager *)self _updateSystemStateWithAppInFocusWindowEnd])
  {

    [(IRSystemStateManager *)self _didUpdateContextWithReason:@"App in focus window end"];
  }
}

- (void)restartLowLatencyMiLo:(BOOL)lo
{
  loCopy = lo;
  v16 = *MEMORY[0x277D85DE8];
  [(IRSystemStateManager *)self setMiloProviderLslPredictionResults:0];
  [(IRSystemStateManager *)self _unregisterFromMiLo];
  [(IRSystemStateManager *)self _registerToMiLo:loCopy];
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithBool:loCopy];
    v10 = 136315650;
    v11 = "#system-state-manager, ";
    v12 = 2112;
    v13 = v5;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_25543D000, v8, OS_LOG_TYPE_INFO, "%s[%@], MiLo session restarting with isLowLatencyMiLo: %@", &v10, 0x20u);
  }
}

- (void)_registerToMiLo:(BOOL)lo
{
  loCopy = lo;
  v18 = *MEMORY[0x277D85DE8];
  v5 = +[IRPreferences shared];
  miloEnable = [v5 miloEnable];
  bOOLValue = [miloEnable BOOLValue];

  if (bOOLValue)
  {
    miloProvider = [(IRSystemStateManager *)self miloProvider];
    contextObserver = [(IRSystemStateManager *)self contextObserver];
    getService = [contextObserver getService];
    serviceIdentifier = [getService serviceIdentifier];
    [miloProvider addObserver:self withToken:serviceIdentifier isLowLatency:loCopy];
  }

  else
  {
    v11 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v12 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v15 = "#system-state-manager, ";
      v16 = 2112;
      v17 = v11;
      _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_INFO, "%s[%@], MiLo is not enabled in user defaults", buf, 0x16u);
    }
  }
}

- (void)_unregisterFromMiLo
{
  miloProvider = [(IRSystemStateManager *)self miloProvider];
  [miloProvider removeObserver];
}

- (void)_unregisterForBiomeEvents
{
  for (i = 1; i != 4; ++i)
  {
    if ([IRSystemStateManager isObservedEventType:i])
    {
      biomeProvider = [(IRSystemStateManager *)self biomeProvider];
      [biomeProvider removeObserver:self forEvent:i];
    }
  }
}

- (void)_checkAndUpdateLatestPickerChoiceDateIfNeededForEvent:(id)event
{
  if ([event isPickerChoiceEvent])
  {
    systemState = [(IRSystemStateManager *)self systemState];
    v4 = [MEMORY[0x277CBEAA8] now];
    v5 = [systemState copyWithReplacementLatestPickerChoiceDate:v4];
    [(IRSystemStateManager *)self setSystemState:v5];
  }
}

void __51__IRSystemStateManager__startAppInFocusWindowTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained endAppInFocusWindow];
    WeakRetained = v2;
  }
}

- (void)_checkAndStartPDRFenceLogicIfNeededWithEvent:(id)event andCandidate:(id)candidate
{
  v42 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  candidateCopy = candidate;
  pdrFenceTimer = [(IRSystemStateManager *)self pdrFenceTimer];

  if (!pdrFenceTimer)
  {
    v9 = [IREventDO eventDOWithMediaType:9];
    v10 = [IREventDO eventDOWithMediaType:10];
    v33 = [IREventDO eventDOWithMediaType:0];
    if (([eventCopy isEqual:v9] & 1) != 0 || (objc_msgSend(eventCopy, "isEqual:", v10) & 1) != 0 || objc_msgSend(candidateCopy, "isBrokeredDevice") && objc_msgSend(eventCopy, "isEqual:", v33))
    {
      v11 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v12 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v39 = "#system-state-manager, ";
        v40 = 2112;
        v41 = v11;
        _os_log_impl(&dword_25543D000, v12, OS_LOG_TYPE_INFO, "%s[%@], Starting PDRFence PDR fence logic", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v13 = +[IRPreferences shared];
      pdrFenceOtherThanRadiusTimeoutInSeconds = [v13 pdrFenceOtherThanRadiusTimeoutInSeconds];
      integerValue = [pdrFenceOtherThanRadiusTimeoutInSeconds integerValue];

      if (+[IRCMPDRFenceBridge isAvailable])
      {
        pdrFenceBridge = [(IRSystemStateManager *)self pdrFenceBridge];
        v17 = pdrFenceBridge == 0;

        if (v17)
        {
          v18 = [[IRCMPDRFenceBridge alloc] initWithFenceIdentifier:@"PDRFence"];
          [(IRSystemStateManager *)self setPdrFenceBridge:v18];
        }

        pdrFenceBridge2 = [(IRSystemStateManager *)self pdrFenceBridge];
        [pdrFenceBridge2 startSession];

        v20 = +[IRPreferences shared];
        pdrFenceRadiusInMeters = [v20 pdrFenceRadiusInMeters];
        [pdrFenceRadiusInMeters floatValue];
        v23 = v22;

        pdrFenceBridge3 = [(IRSystemStateManager *)self pdrFenceBridge];
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke;
        v36[3] = &unk_2797E0C18;
        objc_copyWeak(&v37, buf);
        LODWORD(v25) = v23;
        [pdrFenceBridge3 setFence:v36 withCompletion:v25];

        v26 = +[IRPreferences shared];
        pdrFenceRadiusTimeoutInSeconds = [v26 pdrFenceRadiusTimeoutInSeconds];
        integerValue = [pdrFenceRadiusTimeoutInSeconds integerValue];

        objc_destroyWeak(&v37);
      }

      v28 = [IRTimer alloc];
      queue = [(IRSystemStateManager *)self queue];
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_35;
      v34[3] = &unk_2797E0C18;
      objc_copyWeak(&v35, buf);
      v30 = [(IRTimer *)v28 initWithInterval:0 repeats:queue queue:v34 block:integerValue];
      [(IRSystemStateManager *)self setPdrFenceTimer:v30];

      systemState = [(IRSystemStateManager *)self systemState];
      v32 = [systemState copyWithReplacementPdrFenceActive:1];
      [(IRSystemStateManager *)self setSystemState:v32];

      objc_destroyWeak(&v35);
      objc_destroyWeak(buf);
    }
  }
}

void __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];

    if (v3)
    {
      v4 = [v2 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_2;
      block[3] = &unk_2797E0BA8;
      v6 = v2;
      dispatch_async(v4, block);
    }
  }
}

uint64_t __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v3 = *MEMORY[0x277D21260];
  if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
  {
    v5 = 136315394;
    v6 = "#system-state-manager, ";
    v7 = 2112;
    v8 = v2;
    _os_log_impl(&dword_25543D000, v3, OS_LOG_TYPE_INFO, "%s[%@], PDR fence crossed", &v5, 0x16u);
  }

  return [*(a1 + 32) _checkAndStopPDRFenceLogicIfNeeded];
}

void __82__IRSystemStateManager__checkAndStartPDRFenceLogicIfNeededWithEvent_andCandidate___block_invoke_35(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v3 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v4 = 136315394;
      v5 = "#system-state-manager, ";
      v6 = 2112;
      v7 = v2;
      _os_log_impl(&dword_25543D000, v3, OS_LOG_TYPE_INFO, "%s[%@], PDR fence timeout", &v4, 0x16u);
    }

    [WeakRetained _checkAndStopPDRFenceLogicIfNeeded];
  }
}

- (void)_checkAndStopPDRFenceLogicIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  queue = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  pdrFenceTimer = [(IRSystemStateManager *)self pdrFenceTimer];

  if (pdrFenceTimer)
  {
    v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_INFO))
    {
      v12 = 136315394;
      v13 = "#system-state-manager, ";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_25543D000, v6, OS_LOG_TYPE_INFO, "%s[%@], Stopping PDR fence logic", &v12, 0x16u);
    }

    pdrFenceBridge = [(IRSystemStateManager *)self pdrFenceBridge];
    [pdrFenceBridge clearFence];

    pdrFenceBridge2 = [(IRSystemStateManager *)self pdrFenceBridge];
    [pdrFenceBridge2 endSession];

    pdrFenceTimer2 = [(IRSystemStateManager *)self pdrFenceTimer];
    [pdrFenceTimer2 invalidate];

    [(IRSystemStateManager *)self setPdrFenceTimer:0];
    systemState = [(IRSystemStateManager *)self systemState];
    v11 = [systemState copyWithReplacementPdrFenceActive:0];
    [(IRSystemStateManager *)self setSystemState:v11];

    [(IRSystemStateManager *)self _didUpdateContextWithReason:@"PDR fence crossed"];
  }
}

- (void)provider:(id)provider didUpdateDeviceWiFi:(id)fi
{
  fiCopy = fi;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__IRSystemStateManager_provider_didUpdateDeviceWiFi___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = fiCopy;
  v7 = fiCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __53__IRSystemStateManager_provider_didUpdateDeviceWiFi___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithDeviceWiFi:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Device WiFi"];
  }
}

- (void)provider:(id)provider didUpdateMediaRoute:(id)route
{
  routeCopy = route;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__IRSystemStateManager_provider_didUpdateMediaRoute___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = routeCopy;
  v7 = routeCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __53__IRSystemStateManager_provider_didUpdateMediaRoute___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithMediaRoute:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Media route"];
  }
}

- (void)_didUpdateContextWithReason:(id)reason
{
  v24 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v6 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    systemState = [(IRSystemStateManager *)self systemState];
    v9 = [IRLogQEUtility getSystemStateAsString:systemState];
    miloProvider = [(IRSystemStateManager *)self miloProvider];
    miloProviderLslPredictionResults = [(IRSystemStateManager *)self miloProviderLslPredictionResults];
    v12 = [miloProvider getMiloServiceStatusStringQEWithPrediction:miloProviderLslPredictionResults];
    v14 = 136316162;
    v15 = "#system-state-manager, ";
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = reasonCopy;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v12;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "%s[%@], System state might have changed due to %@:\n%@\n%@", &v14, 0x34u);
  }

  contextObserver = [(IRSystemStateManager *)self contextObserver];
  [contextObserver didUpdateContextWithReason:reasonCopy andOverrides:0];
}

- (void)onPrediction:(id)prediction
{
  v14 = *MEMORY[0x277D85DE8];
  predictionCopy = prediction;
  queue = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v7 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315650;
    v9 = "#system-state-manager, ";
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = predictionCopy;
    _os_log_impl(&dword_25543D000, v7, OS_LOG_TYPE_DEFAULT, "%s[%@], Received MiLo prediction: %@", &v8, 0x20u);
  }

  [(IRSystemStateManager *)self setMiloProviderLslPredictionResults:predictionCopy];
  [(IRSystemStateManager *)self _didUpdateContextWithReason:@"MiLo prediction"];
}

- (void)onUpdateLOIType:(int)type WithLOIIdentifier:(id)identifier
{
  v4 = *&type;
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queue = [(IRSystemStateManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = dispatch_get_specific(*MEMORY[0x277D21308]);
  v9 = *MEMORY[0x277D21270];
  if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = IRLocationSemanticUserSpecificPlaceTypeToString(v4);
    v12 = 136315906;
    v13 = "#system-state-manager, ";
    v14 = 2112;
    v15 = v8;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = identifierCopy;
    _os_log_impl(&dword_25543D000, v10, OS_LOG_TYPE_DEFAULT, "%s[%@], Received MiLo LOI update with LOI type: %@ and identifier: %@", &v12, 0x2Au);
  }

  [(IRSystemStateManager *)self _updateSystemStateWithLOIType:v4 WithLOIIdentifier:identifierCopy];
  [(IRSystemStateManager *)self _didUpdateContextWithReason:@"Location Semantic"];
}

- (void)didSpotOnLocationCompleteWithError:(id)error
{
  errorCopy = error;
  contextObserver = [(IRSystemStateManager *)self contextObserver];
  [contextObserver didSpotOnLocationComplete:errorCopy];
}

- (BOOL)_updateSystemStateWithAppInFocus:(id)focus andOpenWindowIfApplicable:(BOOL)applicable isScreenUnlockEvent:(BOOL)event
{
  eventCopy = event;
  LODWORD(v6) = applicable;
  focusCopy = focus;
  systemState = [(IRSystemStateManager *)self systemState];
  appInFocusBundleID = [systemState appInFocusBundleID];
  v11 = appInFocusBundleID;
  v12 = appInFocusBundleID != focusCopy;
  if (appInFocusBundleID == focusCopy)
  {

LABEL_12:
    goto LABEL_13;
  }

  systemState2 = [(IRSystemStateManager *)self systemState];
  appInFocusBundleID2 = [systemState2 appInFocusBundleID];
  v15 = [focusCopy isEqual:appInFocusBundleID2];

  if ((v15 & 1) == 0)
  {
    systemState = IRAVInitialRouteSharingPolicyForBundleIdentifier(focusCopy);
    [(IRSystemStateManager *)self _cancelAppInFocusWindowTimer];
    if (focusCopy)
    {
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    if (v6 == 1)
    {
      [(IRSystemStateManager *)self _startAppInFocusWindowTimer];
    }

    else
    {
      eventCopy = 0;
    }

    systemState3 = [(IRSystemStateManager *)self systemState];
    v17 = [systemState3 copyWithReplacementAppInFocusBundleID:focusCopy];
    [(IRSystemStateManager *)self setSystemState:v17];

    systemState4 = [(IRSystemStateManager *)self systemState];
    v19 = [systemState4 copyWithReplacementAvInitialRouteSharingPolicy:systemState];
    [(IRSystemStateManager *)self setSystemState:v19];

    systemState5 = [(IRSystemStateManager *)self systemState];
    v21 = [systemState5 copyWithReplacementAppInFocusWindowValid:v6];
    [(IRSystemStateManager *)self setSystemState:v21];

    systemState6 = [(IRSystemStateManager *)self systemState];
    v23 = [systemState6 copyWithReplacementAppInFocusWindowScreenUnlockEvent:eventCopy];
    [(IRSystemStateManager *)self setSystemState:v23];

    [(IRSystemStateManager *)self _initBiomeIfNeededUponAppInFocus];
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (BOOL)_updateSystemStateWithIsContinuityDisplay:(BOOL)display
{
  displayCopy = display;
  selfCopy = self;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)selfCopy systemState];
  v8 = [systemState2 copyWithReplacementIsContinuityDisplay:displayCopy];
  [(IRSystemStateManager *)selfCopy setSystemState:v8];

  systemState3 = [(IRSystemStateManager *)selfCopy systemState];
  LOBYTE(selfCopy) = [systemState3 isEqual:v6];

  return selfCopy ^ 1;
}

- (BOOL)_updateSystemStateWithDisplayOn:(BOOL)on
{
  onCopy = on;
  selfCopy = self;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)selfCopy systemState];
  v8 = [systemState2 copyWithReplacementDisplayOn:onCopy];
  [(IRSystemStateManager *)selfCopy setSystemState:v8];

  systemState3 = [(IRSystemStateManager *)selfCopy systemState];
  LOBYTE(selfCopy) = [systemState3 isEqual:v6];

  return selfCopy ^ 1;
}

- (BOOL)_updateSystemStateWithDeviceWiFi:(id)fi
{
  fiCopy = fi;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)self systemState];
  sSID = [fiCopy SSID];

  v9 = [systemState2 copyWithReplacementDeviceWiFiSSID:sSID];
  [(IRSystemStateManager *)self setSystemState:v9];

  systemState3 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v9) = [systemState3 isEqual:v6];

  return v9 ^ 1;
}

- (BOOL)_updateSystemStateWithLOIType:(int)type WithLOIIdentifier:(id)identifier
{
  v4 = *&type;
  identifierCopy = identifier;
  systemState = [(IRSystemStateManager *)self systemState];
  v8 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)self systemState];
  v10 = [systemState2 copyWithReplacementLocationSemanticUserSpecificPlaceType:v4];
  [(IRSystemStateManager *)self setSystemState:v10];

  systemState3 = [(IRSystemStateManager *)self systemState];
  v12 = [systemState3 copyWithReplacementLocationSemanticLoiIdentifier:identifierCopy];

  [(IRSystemStateManager *)self setSystemState:v12];
  systemState4 = [(IRSystemStateManager *)self systemState];
  LOBYTE(systemState3) = [systemState4 isEqual:v8];

  return systemState3 ^ 1;
}

- (BOOL)_updateSystemStateWithMediaRoute:(id)route
{
  routeCopy = route;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  groupLeaderOutputDeviceID = [routeCopy groupLeaderOutputDeviceID];
  if (groupLeaderOutputDeviceID)
  {
    outputDevices = [routeCopy outputDevices];
    v9 = [outputDevices count];

    if (v9 == 1)
    {
      groupLeaderOutputDeviceID = [routeCopy groupLeaderOutputDeviceID];
    }

    else
    {
      groupLeaderOutputDeviceID = 0;
    }
  }

  systemState2 = [(IRSystemStateManager *)self systemState];
  v11 = [systemState2 copyWithReplacementMediaRouteGroupLeaderOutputDeviceID:groupLeaderOutputDeviceID];
  [(IRSystemStateManager *)self setSystemState:v11];

  systemState3 = [(IRSystemStateManager *)self systemState];
  LOBYTE(systemState2) = [systemState3 isEqual:v6];

  return systemState2 ^ 1;
}

- (BOOL)_updateSystemStateWithAppInFocusWindowEnd
{
  systemState = [(IRSystemStateManager *)self systemState];
  v4 = [systemState copy];

  [(IRSystemStateManager *)self _cancelAppInFocusWindowTimer];
  systemState2 = [(IRSystemStateManager *)self systemState];
  v6 = [systemState2 copyWithReplacementAppInFocusWindowValid:0];
  [(IRSystemStateManager *)self setSystemState:v6];

  systemState3 = [(IRSystemStateManager *)self systemState];
  v8 = [systemState3 copyWithReplacementAppInFocusWindowScreenUnlockEvent:0];
  [(IRSystemStateManager *)self setSystemState:v8];

  systemState4 = [(IRSystemStateManager *)self systemState];
  LOBYTE(systemState3) = [systemState4 isEqual:v4];

  return systemState3 ^ 1;
}

- (BOOL)_updateSystemStateWithOutputDevice:(id)device
{
  deviceCopy = device;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)self systemState];
  deviceName = [deviceCopy deviceName];
  v9 = [systemState2 copyWithReplacementOutputDeviceName:deviceName];
  [(IRSystemStateManager *)self setSystemState:v9];

  systemState3 = [(IRSystemStateManager *)self systemState];
  v11 = [systemState3 copyWithReplacementOutputDeviceType:{objc_msgSend(deviceCopy, "deviceType")}];
  [(IRSystemStateManager *)self setSystemState:v11];

  systemState4 = [(IRSystemStateManager *)self systemState];
  deviceSubType = [deviceCopy deviceSubType];

  v14 = [systemState4 copyWithReplacementOutputDeviceSubType:deviceSubType];
  [(IRSystemStateManager *)self setSystemState:v14];

  systemState5 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v14) = [systemState5 isEqual:v6];

  return v14 ^ 1;
}

- (BOOL)_updateSystemStateWithPredictedOutputDevice:(id)device
{
  deviceCopy = device;
  systemState = [(IRSystemStateManager *)self systemState];
  v6 = [systemState copy];

  systemState2 = [(IRSystemStateManager *)self systemState];
  deviceName = [deviceCopy deviceName];
  v9 = [systemState2 copyWithReplacementPredictedOutputDeviceName:deviceName];
  [(IRSystemStateManager *)self setSystemState:v9];

  systemState3 = [(IRSystemStateManager *)self systemState];
  v11 = [systemState3 copyWithReplacementPredictedOutputDeviceType:{objc_msgSend(deviceCopy, "deviceType")}];
  [(IRSystemStateManager *)self setSystemState:v11];

  systemState4 = [(IRSystemStateManager *)self systemState];
  deviceSubType = [deviceCopy deviceSubType];

  v14 = [systemState4 copyWithReplacementPredictedOutputDeviceSubType:deviceSubType];
  [(IRSystemStateManager *)self setSystemState:v14];

  systemState5 = [(IRSystemStateManager *)self systemState];
  LOBYTE(v14) = [systemState5 isEqual:v6];

  return v14 ^ 1;
}

- (void)provider:(id)provider didUpdateNearbyDevices:(id)devices
{
  devicesCopy = devices;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__IRSystemStateManager_provider_didUpdateNearbyDevices___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = devicesCopy;
  v7 = devicesCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __56__IRSystemStateManager_provider_didUpdateNearbyDevices___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 nearbyDeviceContainer];
  v5 = *(a1 + 32);
  v6 = +[IRPreferences shared];
  v7 = [v6 deviceRangeProximityThreshold];
  [v7 doubleValue];
  v8 = [IRProximityProvider didContainer:v4 changeWithUpdatetContainer:v5 andRangeThreshold:?];

  v9 = [*(a1 + 32) copy];
  [v3 setNearbyDeviceContainer:v9];

  if (v8)
  {
    [v3 _didUpdateContextWithReason:@"nearby device change"];
    v10 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v11 = *MEMORY[0x277D21270];
    if (os_log_type_enabled(*MEMORY[0x277D21270], OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 32);
      v13 = 136315650;
      v14 = "#system-state-manager, ";
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_25543D000, v11, OS_LOG_TYPE_DEFAULT, "%s[%@], Updated cached nearby devices: %@", &v13, 0x20u);
    }
  }
}

- (void)monitor:(id)monitor didUpdateAppInFocus:(id)focus isScreenUnlockEvent:(BOOL)event
{
  focusCopy = focus;
  queue = [(IRSystemStateManager *)self queue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__IRSystemStateManager_monitor_didUpdateAppInFocus_isScreenUnlockEvent___block_invoke;
  v10[3] = &unk_2797E2118;
  v11 = focusCopy;
  eventCopy = event;
  v9 = focusCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v10);
}

void __72__IRSystemStateManager_monitor_didUpdateAppInFocus_isScreenUnlockEvent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithAppInFocus:*(a1 + 32) andOpenWindowIfApplicable:1 isScreenUnlockEvent:*(a1 + 40)])
  {
    [v3 _didUpdateContextWithReason:@"App in focus"];
  }
}

- (void)monitor:(id)monitor didUpdateIsContinuityDisplay:(BOOL)display
{
  queue = [(IRSystemStateManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__IRSystemStateManager_monitor_didUpdateIsContinuityDisplay___block_invoke;
  v7[3] = &__block_descriptor_33_e30_v16__0__IRSystemStateManager_8l;
  displayCopy = display;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __61__IRSystemStateManager_monitor_didUpdateIsContinuityDisplay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithIsContinuityDisplay:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Continuity display"];
  }
}

- (void)monitor:(id)monitor didUpdateDisplayOn:(BOOL)on
{
  queue = [(IRSystemStateManager *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__IRSystemStateManager_monitor_didUpdateDisplayOn___block_invoke;
  v7[3] = &__block_descriptor_33_e30_v16__0__IRSystemStateManager_8l;
  onCopy = on;
  IRDispatchAsyncWithStrongSelf(queue, self, v7);
}

void __51__IRSystemStateManager_monitor_didUpdateDisplayOn___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithDisplayOn:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Display On"];
  }
}

- (void)context:(id)context didUpdateOutputDevice:(id)device
{
  deviceCopy = device;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__IRSystemStateManager_context_didUpdateOutputDevice___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = deviceCopy;
  v7 = deviceCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __54__IRSystemStateManager_context_didUpdateOutputDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithOutputDevice:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Output device"];
  }
}

- (void)context:(id)context didUpdatePredicatedOutputDevice:(id)device
{
  deviceCopy = device;
  queue = [(IRSystemStateManager *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__IRSystemStateManager_context_didUpdatePredicatedOutputDevice___block_invoke;
  v8[3] = &unk_2797E20F0;
  v9 = deviceCopy;
  v7 = deviceCopy;
  IRDispatchAsyncWithStrongSelf(queue, self, v8);
}

void __64__IRSystemStateManager_context_didUpdatePredicatedOutputDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 _updateSystemStateWithPredictedOutputDevice:*(a1 + 32)])
  {
    [v3 _didUpdateContextWithReason:@"Predicted output device"];
  }
}

@end