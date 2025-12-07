@interface TATrackingAvoidanceServiceManager
+ (id)managerStateToString:(unint64_t)string;
- (BOOL)_shouldTerminateService;
- (TATrackingAvoidanceServiceManager)initWithQueue:(id)queue settings:(id)settings;
- (void)_changeSession;
- (void)_fetchAndIngestLastVisit;
- (void)_fetchAndIngestNextPredictedLocationOfInterestFromLocation:(id)location startDate:(id)date interval:(double)interval;
- (void)_fetchAndIngestNextPredictedLocationOfInterestWithCurrentVisitState;
- (void)_fetchStoreAndSave;
- (void)_handleStateUpdateIfNecessary;
- (void)_loadAndBootstrap;
- (void)_onAirplaneMode:(BOOL)mode;
- (void)_onAllowSimulatedEvents:(BOOL)events;
- (void)_onBatterySaverMode:(BOOL)mode;
- (void)_onDeviceUnlockedSinceBoot:(BOOL)boot;
- (void)_onHasKoreaCountryCode:(BOOL)code;
- (void)_onHighThermalState:(BOOL)state;
- (void)_onLocationAndPrivacyReset:(BOOL)reset;
- (void)_onLocationServicesEnabled:(BOOL)enabled;
- (void)_onLocationSimulationInProgress:(BOOL)progress;
- (void)_onServiceEnabled:(BOOL)enabled;
- (void)_onUserLocationInsideKorea:(BOOL)korea;
- (void)_registerForAvengerScanner;
- (void)_registerForTATrackingAvoidanceServiceWithSettings:(id)settings;
- (void)_schedulePeriodicSaveAfterTimeInterval:(double)interval;
- (void)_setState:(unint64_t)state;
- (void)_unregisterForAvengerScanner;
- (void)_unregisterForTATrackingAvoidanceService;
- (void)addDataSource:(id)source;
- (void)addObserver:(id)observer;
- (void)debugForceSurfaceStagedDetections:(id)detections deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask;
- (void)debugStageTADetection:(id)detection deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask;
- (void)debugStageTADetection:(id)detection deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask shouldRemoveDevice:(BOOL)device;
- (void)fetchTAUnknownBeacon:(id)beacon withCompletion:(id)completion;
- (void)ingestTAEvent:(id)event;
- (void)notifyObserversOfStateChangeFrom:(unint64_t)from to:(unint64_t)to;
- (void)onUpdatedSettings:(id)settings;
- (void)removeDataSource:(id)source;
- (void)removeObserver:(id)observer;
- (void)trackingAvoidanceService:(id)service didFindSuspiciousDevices:(id)devices;
- (void)trackingAvoidanceService:(id)service didStageSuspiciousDevices:(id)devices;
- (void)trackingAvoidanceService:(id)service didUnstageSuspiciousDevices:(id)devices;
- (void)visitStateChangedForTrackingAvoidanceService:(id)service;
@end

@implementation TATrackingAvoidanceServiceManager

- (TATrackingAvoidanceServiceManager)initWithQueue:(id)queue settings:(id)settings
{
  queueCopy = queue;
  settingsCopy = settings;
  v32.receiver = self;
  v32.super_class = TATrackingAvoidanceServiceManager;
  v9 = [(TATrackingAvoidanceServiceManager *)&v32 init];
  v11 = v9;
  if (v9)
  {
    TARegisterLogs(v9, v10);
    objc_storeStrong(&v11->_queue, queue);
    v12 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v11->_observers;
    v11->_observers = v12;

    v14 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    dataSources = v11->_dataSources;
    v11->_dataSources = v14;

    service = v11->_service;
    v11->_service = 0;

    v11->_state = 0;
    v17 = objc_alloc_init(TATrackingAvoidanceServiceStateContext);
    stateContext = v11->_stateContext;
    v11->_stateContext = v17;

    v19 = [TAPersistenceManager alloc];
    persistenceManagerSettings = [settingsCopy persistenceManagerSettings];
    v21 = [(TAPersistenceManager *)v19 initWithSettings:persistenceManagerSettings];
    persistenceManager = v11->_persistenceManager;
    v11->_persistenceManager = v21;

    uUID = [MEMORY[0x277CCAD78] UUID];
    sessionID = v11->_sessionID;
    v11->_sessionID = uUID;

    v25 = [TAAnalyticsManager alloc];
    analyticsManagerSettings = [settingsCopy analyticsManagerSettings];
    v27 = [(TAAnalyticsManager *)v25 initWithSettings:analyticsManagerSettings];
    analyticsManager = v11->_analyticsManager;
    v11->_analyticsManager = v27;

    v29 = objc_alloc_init(MEMORY[0x277D01280]);
    routineManager = v11->_routineManager;
    v11->_routineManager = v29;

    [(TATrackingAvoidanceServiceManager *)v11 addObserver:v11];
    [(TATrackingAvoidanceServiceManager *)v11 addObserver:v11->_analyticsManager];
    [(TAPersistenceManager *)v11->_persistenceManager addObserver:v11->_analyticsManager];
    [(TATrackingAvoidanceServiceManager *)v11 onUpdatedSettings:settingsCopy];
  }

  return v11;
}

- (void)_onServiceEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = enabledCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received service enable notification, serviceEnabled:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setServiceEnabled:enabledCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onHighThermalState:(BOOL)state
{
  stateCopy = state;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = stateCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received thermal state notification, isHighThermalState:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setHighThermalState:stateCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onAirplaneMode:(BOOL)mode
{
  modeCopy = mode;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = modeCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received airplane mode notification, airplaneMode:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setAirplaneMode:modeCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onBatterySaverMode:(BOOL)mode
{
  modeCopy = mode;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = modeCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received battery saver mode notification, batterySaverMode:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setBatterySaverMode:modeCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onLocationServicesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = enabledCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received location services notification, locationServicesEnabled:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setLocationServicesEnabled:enabledCopy];
  if (!enabledCopy)
  {
    [(TAPersistenceManager *)self->_persistenceManager reset];
    [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setRestartRequired:1];
  }

  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onLocationSimulationInProgress:(BOOL)progress
{
  progressCopy = progress;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = progressCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received location simulation notification, locationSimulationInProgress:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setLocationSimulationInProgress:progressCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onAllowSimulatedEvents:(BOOL)events
{
  eventsCopy = events;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = eventsCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received allow simulated events notification, allowSimulatedEvents:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setAllowSimulatedEvents:eventsCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onDeviceUnlockedSinceBoot:(BOOL)boot
{
  bootCopy = boot;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = bootCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received device unlocked since boot notification, deviceUnlockedSinceBoot:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setDeviceUnlockedSinceBoot:bootCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onLocationAndPrivacyReset:(BOOL)reset
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_26F2E2000, v4, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received location and privacy reset notification. Resetting persistence store and restarting service.}", v5, 0x12u);
  }

  [(TAPersistenceManager *)self->_persistenceManager reset];
  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setRestartRequired:1];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onHasKoreaCountryCode:(BOOL)code
{
  codeCopy = code;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = codeCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received country code notification, hasKoreaCountryCode:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setHasKoreaCountryCode:codeCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)_onUserLocationInsideKorea:(BOOL)korea
{
  koreaCopy = korea;
  v11 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    v6[0] = 68289282;
    v6[1] = 0;
    v7 = 2082;
    v8 = "";
    v9 = 1026;
    v10 = koreaCopy;
    _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ut received user location inside Korea notification, userLocationInsideKorea:%{public}hhd}", v6, 0x18u);
  }

  [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setUserLocationInsideKorea:koreaCopy];
  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (void)onUpdatedSettings:(id)settings
{
  settingsCopy = settings;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceServiceManager onUpdatedSettings:];
  }

  if (!self->_serviceSettings || ([settingsCopy isEqual:?] & 1) == 0)
  {
    objc_storeStrong(&self->_serviceSettings, settings);
    [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setServiceEnabled:[(TASettings *)self->_serviceSettings trackingAvoidanceEnabled]];
    serviceEnabled = [(TATrackingAvoidanceServiceStateContext *)self->_stateContext serviceEnabled];
    v7 = os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG);
    if (serviceEnabled)
    {
      if (v7)
      {
        [TATrackingAvoidanceServiceManager onUpdatedSettings:];
      }
    }

    else if (v7)
    {
      [TATrackingAvoidanceServiceManager onUpdatedSettings:];
    }

    [(TATrackingAvoidanceServiceStateContext *)self->_stateContext setRestartRequired:serviceEnabled];
  }

  [(TATrackingAvoidanceServiceManager *)self _handleStateUpdateIfNecessary];
}

- (BOOL)_shouldTerminateService
{
  if (![(TATrackingAvoidanceServiceStateContext *)self->_stateContext serviceEnabled]|| [(TATrackingAvoidanceServiceStateContext *)self->_stateContext airplaneMode]|| ![(TATrackingAvoidanceServiceStateContext *)self->_stateContext locationServicesEnabled]|| !self->_serviceSettings || ![(TATrackingAvoidanceServiceStateContext *)self->_stateContext allowSimulatedEvents]&& [(TATrackingAvoidanceServiceStateContext *)self->_stateContext locationSimulationInProgress]|| ![(TATrackingAvoidanceServiceStateContext *)self->_stateContext deviceUnlockedSinceBoot]|| [(TATrackingAvoidanceServiceStateContext *)self->_stateContext hasKoreaCountryCode])
  {
    return 1;
  }

  stateContext = self->_stateContext;

  return [(TATrackingAvoidanceServiceStateContext *)stateContext userLocationInsideKorea];
}

- (void)_handleStateUpdateIfNecessary
{
  selfCopy = self;
  v2 = [TATrackingAvoidanceServiceManager managerStateToString:0];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_1(&dword_26F2E2000, v3, v4, "#ut no state update necessary at %@ state", v5, v6, v7, v8);
}

- (void)_setState:(unint64_t)state
{
  if (self->_state != state)
  {
    self->_state = state;
  }
}

- (void)_changeSession
{
  v18 = *MEMORY[0x277D85DE8];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = self->_sessionID;
    v6 = v4;
    uUIDString = [(NSUUID *)sessionID UUIDString];
    uTF8String = [uUIDString UTF8String];
    uUIDString2 = [(NSUUID *)uUID UUIDString];
    v11[0] = 68289538;
    v11[1] = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = uTF8String;
    v16 = 2082;
    uTF8String2 = [uUIDString2 UTF8String];
    _os_log_impl(&dword_26F2E2000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ut session change, oldSessionID:%{public}s, newSessionID:%{public}s}", v11, 0x26u);
  }

  v10 = self->_sessionID;
  self->_sessionID = uUID;
}

- (void)_registerForTATrackingAvoidanceServiceWithSettings:(id)settings
{
  v17 = *MEMORY[0x277D85DE8];
  settingsCopy = settings;
  if (!self->_service)
  {
    v5 = [[TATrackingAvoidanceService alloc] initWithTASettings:settingsCopy];
    service = self->_service;
    self->_service = v5;

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = self->_observers;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [(TATrackingAvoidanceService *)self->_service addObserver:*(*(&v12 + 1) + 8 * v11++), v12];
        }

        while (v9 != v11);
        v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(TATrackingAvoidanceServiceManager *)self _changeSession];
    [(TATrackingAvoidanceServiceManager *)self _loadAndBootstrap];
    [(TATrackingAvoidanceServiceManager *)self _fetchAndIngestLastVisit];
    [(TASettings *)self->_serviceSettings persistenceInterval];
    [(TATrackingAvoidanceServiceManager *)self _schedulePeriodicSaveAfterTimeInterval:?];
  }
}

- (void)_unregisterForTATrackingAvoidanceService
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_service)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v3 = self->_observers;
    v4 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(TATrackingAvoidanceService *)self->_service removeObserver:*(*(&v9 + 1) + 8 * v7++), v9];
        }

        while (v5 != v7);
        v5 = [(NSHashTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(TATrackingAvoidanceServiceManager *)self _changeSession];
    service = self->_service;
    self->_service = 0;
  }
}

- (void)_fetchAndIngestLastVisit
{
  v3 = objc_alloc(MEMORY[0x277D01340]);
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:*MEMORY[0x277D01470]];
  v5 = [v3 initWithAscending:0 confidence:v4 dateInterval:0 labelVisit:1 limit:&unk_287F6FF98];

  routineManager = [(TATrackingAvoidanceServiceManager *)self routineManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TATrackingAvoidanceServiceManager__fetchAndIngestLastVisit__block_invoke;
  v7[3] = &unk_279DD1DB8;
  v7[4] = self;
  [routineManager fetchStoredVisitsWithOptions:v5 handler:v7];
}

void __61__TATrackingAvoidanceServiceManager__fetchAndIngestLastVisit__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__TATrackingAvoidanceServiceManager__fetchAndIngestLastVisit__block_invoke_2;
  v7[3] = &unk_279DD1D90;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __61__TATrackingAvoidanceServiceManager__fetchAndIngestLastVisit__block_invoke_2(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2 && [v2 count])
  {
    v3 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v24 = 68289283;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      v28 = 2117;
      v29 = v4;
      _os_log_impl(&dword_26F2E2000, v3, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:visit got last visit, visits:%{sensitive}@}", &v24, 0x1Cu);
    }

    v5 = [*(a1 + 32) firstObject];
    v6 = [v5 location];
    [v6 latitude];
    v8 = v7;
    v9 = [v5 location];
    [v9 longitude];
    v11 = CLLocationCoordinate2DMake(v8, v10);

    v12 = [TACLVisit alloc];
    v13 = [v5 location];
    [v13 horizontalUncertainty];
    v15 = v14;
    v16 = [v5 entry];
    v17 = [v5 exit];
    v18 = [v5 date];
    v19 = [(TACLVisit *)v12 initWithCoordinate:v16 horizontalAccuracy:v17 arrivalDate:v18 departureDate:2 detectionDate:v11.latitude confidence:v11.longitude, v15];

    v20 = [*(a1 + 40) service];

    if (v20)
    {
      v21 = [*(a1 + 40) service];
      [v21 ingestTAEvent:v19];
    }

    else
    {
      v23 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
      {
        v24 = 68289026;
        v25 = 0;
        v26 = 2082;
        v27 = "";
        _os_log_impl(&dword_26F2E2000, v23, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#manager:visit not ingesting TAEvent as TA service is down}", &v24, 0x12u);
      }
    }
  }

  else
  {
    v22 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v24 = 68289026;
      v25 = 0;
      v26 = 2082;
      v27 = "";
      _os_log_impl(&dword_26F2E2000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:visit no last visit to bootstrap onto}", &v24, 0x12u);
    }
  }
}

- (void)_fetchAndIngestNextPredictedLocationOfInterestWithCurrentVisitState
{
  v27 = *MEMORY[0x277D85DE8];
  service = [(TATrackingAvoidanceServiceManager *)self service];
  store = [service store];
  visitState = [store visitState];
  getLatestValidVisit = [visitState getLatestValidVisit];

  service2 = [(TATrackingAvoidanceServiceManager *)self service];
  store2 = [service2 store];
  clock = [store2 clock];

  if (getLatestValidVisit && clock)
  {
    v10 = objc_alloc(MEMORY[0x277CE41F8]);
    [getLatestValidVisit coordinate];
    v12 = v11;
    v14 = v13;
    [getLatestValidVisit horizontalAccuracy];
    v16 = v15;
    detectionDate = [getLatestValidVisit detectionDate];
    v18 = [v10 initWithCoordinate:detectionDate altitude:v12 horizontalAccuracy:v14 verticalAccuracy:0.0 timestamp:{v16, -1.0}];

    [(TATrackingAvoidanceServiceManager *)self _fetchAndIngestNextPredictedLocationOfInterestFromLocation:v18 startDate:clock interval:7200.0];
  }

  else
  {
    v19 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      v20[0] = 68289539;
      v20[1] = 0;
      v21 = 2082;
      v22 = "";
      v23 = 2117;
      v24 = getLatestValidVisit;
      v25 = 2113;
      v26 = clock;
      _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#manager:nextPLOI missing required info to query, latestVisit:%{sensitive}@, startDate:%{private}@}", v20, 0x26u);
    }
  }
}

- (void)_fetchAndIngestNextPredictedLocationOfInterestFromLocation:(id)location startDate:(id)date interval:(double)interval
{
  dateCopy = date;
  locationCopy = location;
  routineManager = [(TATrackingAvoidanceServiceManager *)self routineManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __115__TATrackingAvoidanceServiceManager__fetchAndIngestNextPredictedLocationOfInterestFromLocation_startDate_interval___block_invoke;
  v11[3] = &unk_279DD1DB8;
  v11[4] = self;
  [routineManager fetchNextPredictedLocationsOfInterestFromLocation:locationCopy startDate:dateCopy timeInterval:v11 withHandler:interval];
}

void __115__TATrackingAvoidanceServiceManager__fetchAndIngestNextPredictedLocationOfInterestFromLocation_startDate_interval___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __115__TATrackingAvoidanceServiceManager__fetchAndIngestNextPredictedLocationOfInterestFromLocation_startDate_interval___block_invoke_2;
  v7[3] = &unk_279DD1D90;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __115__TATrackingAvoidanceServiceManager__fetchAndIngestNextPredictedLocationOfInterestFromLocation_startDate_interval___block_invoke_2(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (v1 && [v1 count])
  {
    v2 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      buf = 68289283;
      v47 = 2082;
      v48 = "";
      v49 = 2117;
      v50 = v3;
      _os_log_impl(&dword_26F2E2000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:nextPLOI got nextPLOI, nextPLOI:%{sensitive}@}", &buf, 0x1Cu);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = *(a1 + 32);
    v4 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v4)
    {
      v6 = v4;
      v7 = *v42;
      *&v5 = 68289283;
      v32 = v5;
      do
      {
        v8 = 0;
        v34 = v6;
        do
        {
          if (*v42 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v41 + 1) + 8 * v8);
          [v9 confidence];
          if (v10 >= 1.0)
          {
            v12 = [v9 locationOfInterest];
            v37 = +[TALocationOfInterest convertRTToTALocationOfInterestType:](TALocationOfInterest, "convertRTToTALocationOfInterestType:", [v12 type]);

            v36 = [TAPredictedLocationOfInterest alloc];
            v40 = [v9 locationOfInterest];
            v39 = [v40 location];
            [v39 latitude];
            v14 = v13;
            v38 = [v9 locationOfInterest];
            v15 = [v38 location];
            [v15 longitude];
            v17 = v16;
            v18 = [v9 locationOfInterest];
            v19 = [v18 location];
            [v19 horizontalUncertainty];
            v21 = v20;
            v22 = [v9 locationOfInterest];
            v23 = [v22 location];
            v24 = [v23 referenceFrame];
            [v9 confidence];
            v26 = v25;
            v27 = [v9 nextEntryTime];
            v28 = [MEMORY[0x277CBEAA8] date];
            v29 = [(TAPredictedLocationOfInterest *)v36 initWithType:v37 latitude:v24 longitude:v27 horizontalAccuracy:v28 referenceFrame:v14 confidence:v17 nextEntryTime:v21 date:v26];

            v30 = [*(a1 + 40) service];
            [v30 ingestTAEvent:v29];

            v6 = v34;
          }

          else
          {
            v11 = TAStatusLog;
            if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
            {
              buf = v32;
              v47 = 2082;
              v48 = "";
              v49 = 2117;
              v50 = v9;
              _os_log_impl(&dword_26F2E2000, v11, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#manager:nextPLOI ignoring low confidence PLOI, nextPLOI:%{sensitive}@}", &buf, 0x1Cu);
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v31 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289026;
      v47 = 2082;
      v48 = "";
      _os_log_impl(&dword_26F2E2000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:nextPLOI no next PLOI}", &buf, 0x12u);
    }
  }
}

- (void)_registerForAvengerScanner
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_dataSources;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 registerForAvengerScanner];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_unregisterForAvengerScanner
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_dataSources;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 unregisterForAvengerScanner];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)notifyObserversOfStateChangeFrom:(unint64_t)from to:(unint64_t)to
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_dataSources;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          [v11 onManagerStateChangeFrom:from to:{to, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)_loadAndBootstrap
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = os_transaction_create();
  if (![(TAPersistenceManager *)self->_persistenceManager load])
  {
    v13 = TAStatusLog;
    if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v17 = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v14 = "{msg%{public}.0s:#manager:persistence failed to load persistence store, aborting bootstrap}";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
LABEL_10:
    _os_log_impl(&dword_26F2E2000, v15, v16, v14, &v17, 0x12u);
    goto LABEL_11;
  }

  store = [(TAPersistenceManager *)self->_persistenceManager store];
  deviceRecord = [store deviceRecord];

  v6 = TAStatusLog;
  if (!deviceRecord)
  {
    if (!os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_11;
    }

    v17 = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v14 = "{msg%{public}.0s:#manager:persistence no device record to bootstrap onto}";
    v15 = v6;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_10;
  }

  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 68289026;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    _os_log_impl(&dword_26F2E2000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence bootstrapping onto loaded store}", &v17, 0x12u);
  }

  service = self->_service;
  store2 = [(TAPersistenceManager *)self->_persistenceManager store];
  deviceRecord2 = [store2 deviceRecord];
  [(TATrackingAvoidanceService *)service bootstrapDeviceRecord:deviceRecord2];

  v10 = self->_service;
  store3 = [(TAPersistenceManager *)self->_persistenceManager store];
  visitState = [store3 visitState];
  [(TATrackingAvoidanceService *)v10 bootstrapVisitState:visitState];

LABEL_11:
}

- (void)_fetchStoreAndSave
{
  v5 = os_transaction_create();
  persistenceManager = self->_persistenceManager;
  store = [(TATrackingAvoidanceService *)self->_service store];
  [(TAPersistenceManager *)persistenceManager onUpdatedTAStore:store];

  [(TAPersistenceManager *)self->_persistenceManager save];
  [(TATrackingAvoidanceServiceManager *)self _setLastSaveTime];
}

- (void)_schedulePeriodicSaveAfterTimeInterval:(double)interval
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    sessionID = self->_sessionID;
    v7 = v5;
    uUIDString = [(NSUUID *)sessionID UUIDString];
    *buf = 68289538;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2050;
    intervalCopy = interval;
    v22 = 2082;
    uTF8String = [uUIDString UTF8String];
    _os_log_impl(&dword_26F2E2000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence scheduling save, interval:%{public}f, currentSession:%{public}s}", buf, 0x26u);
  }

  v9 = self->_sessionID;
  v10 = dispatch_time(0, (interval * 1000000000.0));
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __76__TATrackingAvoidanceServiceManager__schedulePeriodicSaveAfterTimeInterval___block_invoke;
  block[3] = &unk_279DD1DE0;
  intervalCopy2 = interval;
  block[4] = self;
  v14 = v9;
  v12 = v9;
  dispatch_after(v10, queue, block);
}

void __76__TATrackingAvoidanceServiceManager__schedulePeriodicSaveAfterTimeInterval___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    v25 = 68289282;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2050;
    v30 = v3;
    _os_log_impl(&dword_26F2E2000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence begin scheduled save, interval:%{public}f}", &v25, 0x1Cu);
  }

  if ([*(*(a1 + 32) + 80) isEqual:*(a1 + 40)])
  {
    if (*(*(a1 + 32) + 8) == 1)
    {
      mach_continuous_time();
      TMConvertTicksToSeconds();
      v5 = v4;
      [*(*(a1 + 32) + 48) persistenceInterval];
      if (v5 >= v6)
      {
        v20 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(*(a1 + 32) + 48);
          v22 = v20;
          [v21 persistenceInterval];
          v25 = 68289282;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2050;
          v30 = v23;
          _os_log_impl(&dword_26F2E2000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence save and schedule next save, secondsToNextSave:%{public}f}", &v25, 0x1Cu);
        }

        [*(a1 + 32) _fetchStoreAndSave];
        v24 = *(a1 + 32);
        [v24[6] persistenceInterval];
        v10 = v24;
      }

      else
      {
        [*(*(a1 + 32) + 48) persistenceInterval];
        v8 = v7 - v5;
        v9 = TAStatusLog;
        if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 68289282;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2050;
          v30 = v8;
          _os_log_impl(&dword_26F2E2000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence push out save schedule, secondsToNextSave:%{public}f}", &v25, 0x1Cu);
        }

        v10 = *(a1 + 32);
        v11 = v8;
      }

      [v10 _schedulePeriodicSaveAfterTimeInterval:v11];
    }

    else
    {
      v19 = TAStatusLog;
      if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
      {
        v25 = 68289026;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        _os_log_impl(&dword_26F2E2000, v19, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#manager:persistence scheduled save running but not in running state, discontinuing scheduled saves}", &v25, 0x12u);
      }
    }
  }

  else
  {
    v12 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(*(a1 + 32) + 80);
      v14 = v12;
      v15 = [v13 UUIDString];
      *&v16 = COERCE_DOUBLE([v15 UTF8String]);
      v17 = [*(a1 + 40) UUIDString];
      v18 = [v17 UTF8String];
      v25 = 68289538;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = *&v16;
      v31 = 2082;
      v32 = v18;
      _os_log_impl(&dword_26F2E2000, v14, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#manager:persistence canceling scheduled save due to session change, currentSession:%{public}s, sessionAtTimeOfSchedule:%{public}s}", &v25, 0x26u);
    }
  }
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  [(NSHashTable *)self->_observers addObject:?];
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service addObserver:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  [(NSHashTable *)self->_observers removeObject:?];
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service addObserver:observerCopy];
  }
}

- (void)ingestTAEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = eventCopy;
    systemStateType = [v5 systemStateType];
    if (systemStateType > 9)
    {
      if (systemStateType <= 11)
      {
        if (systemStateType == 10)
        {
          -[TATrackingAvoidanceServiceManager _onAllowSimulatedEvents:](self, "_onAllowSimulatedEvents:", [v5 isOn]);
        }

        else
        {
          -[TATrackingAvoidanceServiceManager _onDeviceUnlockedSinceBoot:](self, "_onDeviceUnlockedSinceBoot:", [v5 isOn]);
        }
      }

      else
      {
        switch(systemStateType)
        {
          case 12:
            -[TATrackingAvoidanceServiceManager _onLocationAndPrivacyReset:](self, "_onLocationAndPrivacyReset:", [v5 isOn]);
            break;
          case 13:
            -[TATrackingAvoidanceServiceManager _onHasKoreaCountryCode:](self, "_onHasKoreaCountryCode:", [v5 isOn]);
            break;
          case 14:
            -[TATrackingAvoidanceServiceManager _onUserLocationInsideKorea:](self, "_onUserLocationInsideKorea:", [v5 isOn]);
            break;
        }
      }
    }

    else if (systemStateType <= 6)
    {
      if (systemStateType == 3)
      {
        -[TATrackingAvoidanceServiceManager _onAirplaneMode:](self, "_onAirplaneMode:", [v5 isOn]);
      }

      else if (systemStateType == 4)
      {
        -[TATrackingAvoidanceServiceManager _onBatterySaverMode:](self, "_onBatterySaverMode:", [v5 isOn]);
      }
    }

    else if (systemStateType == 7)
    {
      -[TATrackingAvoidanceServiceManager _onHighThermalState:](self, "_onHighThermalState:", [v5 isOn]);
    }

    else if (systemStateType == 8)
    {
      -[TATrackingAvoidanceServiceManager _onLocationServicesEnabled:](self, "_onLocationServicesEnabled:", [v5 isOn]);
    }

    else
    {
      -[TATrackingAvoidanceServiceManager _onLocationSimulationInProgress:](self, "_onLocationSimulationInProgress:", [v5 isOn]);
    }
  }

  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service ingestTAEvent:eventCopy];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceServiceManager ingestTAEvent:];
  }
}

- (void)fetchTAUnknownBeacon:(id)beacon withCompletion:(id)completion
{
  beaconCopy = beacon;
  completionCopy = completion;
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service fetchTAUnknownBeacon:beaconCopy withCompletion:completionCopy];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceServiceManager fetchTAUnknownBeacon:withCompletion:];
  }
}

- (void)debugForceSurfaceStagedDetections:(id)detections deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask
{
  v5 = *&bitmask;
  detectionsCopy = detections;
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service debugForceSurfaceStagedDetections:detectionsCopy deviceType:type detailsBitmask:v5];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceServiceManager debugForceSurfaceStagedDetections:deviceType:detailsBitmask:];
  }
}

- (void)debugStageTADetection:(id)detection deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask
{
  v5 = *&bitmask;
  detectionCopy = detection;
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service debugStageTADetection:detectionCopy deviceType:type detailsBitmask:v5];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceServiceManager debugStageTADetection:deviceType:detailsBitmask:];
  }
}

- (void)debugStageTADetection:(id)detection deviceType:(unint64_t)type detailsBitmask:(unsigned int)bitmask shouldRemoveDevice:(BOOL)device
{
  deviceCopy = device;
  v7 = *&bitmask;
  detectionCopy = detection;
  service = self->_service;
  if (service)
  {
    [(TATrackingAvoidanceService *)service debugStageTADetection:detectionCopy deviceType:type detailsBitmask:v7 shouldRemoveDevice:deviceCopy];
  }

  else if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEBUG))
  {
    [TATrackingAvoidanceServiceManager debugStageTADetection:deviceType:detailsBitmask:];
  }
}

- (void)addDataSource:(id)source
{
  sourceCopy = source;
  [(NSHashTable *)self->_dataSources addObject:sourceCopy];
  if (objc_opt_respondsToSelector())
  {
    [sourceCopy registerForLeechedEvents];
  }

  if (self->_state == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [sourceCopy registerForAvengerScanner];
  }

  MEMORY[0x2821F9730]();
}

- (void)removeDataSource:(id)source
{
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    [sourceCopy unregisterForLeechedEvents];
  }

  v4 = sourceCopy;
  if (self->_state == 1)
  {
    v5 = objc_opt_respondsToSelector();
    v4 = sourceCopy;
    if (v5)
    {
      [sourceCopy unregisterForAvengerScanner];
      v4 = sourceCopy;
    }
  }

  [(NSHashTable *)self->_dataSources removeObject:v4];
}

- (void)trackingAvoidanceService:(id)service didFindSuspiciousDevices:(id)devices
{
  v9 = *MEMORY[0x277D85DE8];
  if ([devices count])
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence didFindSuspiciousDevices called, saving state}", v6, 0x12u);
    }

    [(TATrackingAvoidanceServiceManager *)self _fetchStoreAndSave];
  }
}

- (void)trackingAvoidanceService:(id)service didStageSuspiciousDevices:(id)devices
{
  v9 = *MEMORY[0x277D85DE8];
  if ([devices count])
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence didStageSuspiciousDevices called, saving state}", v6, 0x12u);
    }

    [(TATrackingAvoidanceServiceManager *)self _fetchStoreAndSave];
  }
}

- (void)trackingAvoidanceService:(id)service didUnstageSuspiciousDevices:(id)devices
{
  v9 = *MEMORY[0x277D85DE8];
  if ([devices count])
  {
    v5 = TAStatusLog;
    if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 68289026;
      v6[1] = 0;
      v7 = 2082;
      v8 = "";
      _os_log_impl(&dword_26F2E2000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence didUnstageSuspiciousDevices called, saving state}", v6, 0x12u);
    }

    [(TATrackingAvoidanceServiceManager *)self _fetchStoreAndSave];
  }
}

- (void)visitStateChangedForTrackingAvoidanceService:(id)service
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = TAStatusLog;
  if (os_log_type_enabled(TAStatusLog, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 68289026;
    v5[1] = 0;
    v6 = 2082;
    v7 = "";
    _os_log_impl(&dword_26F2E2000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#manager:persistence visitStateChangedForTrackingAvoidanceService called, saving state}", v5, 0x12u);
  }

  [(TATrackingAvoidanceServiceManager *)self _fetchStoreAndSave];
  [(TATrackingAvoidanceServiceManager *)self _fetchAndIngestNextPredictedLocationOfInterestWithCurrentVisitState];
}

+ (id)managerStateToString:(unint64_t)string
{
  if (string > 2)
  {
    return @"UnknownState";
  }

  else
  {
    return off_279DD1E00[string];
  }
}

- (void)onUpdatedSettings:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  v3 = 2113;
  v4 = v0;
  _os_log_debug_impl(&dword_26F2E2000, v1, OS_LOG_TYPE_DEBUG, "#ut new settings %{private}@, old settings %{private}@", v2, 0x16u);
}

@end