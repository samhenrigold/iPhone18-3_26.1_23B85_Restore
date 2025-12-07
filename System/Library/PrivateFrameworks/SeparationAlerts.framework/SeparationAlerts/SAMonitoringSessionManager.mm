@interface SAMonitoringSessionManager
+ (id)convertSAMonitoringSessionStateToString:(unint64_t)string;
- (BOOL)_isOnlyMonitoringCompanionDevice;
- (BOOL)_isOnlyMonitoringDisconnectedCompanionDevice;
- (BOOL)addTravelFenceForDevice:(id)device;
- (BOOL)allDevicesInSafeLocation;
- (BOOL)anyDeviceInUnsafeLocation;
- (BOOL)checkIfAlertWasTriggeredAtHome:(id)home isEarlyVehicularTrigger:(BOOL)trigger;
- (BOOL)checkIfCloseToAnySafeLocations:(id)locations leftBehindLocation:(id)location;
- (BOOL)enoughTimeHasPassedBeforeSurfacingAlert:(id)alert forAlertForDevice:(id)device alertType:(unint64_t)type;
- (BOOL)isAnyInTrackedInUnsafeLocation;
- (BOOL)isAnyTrackedWhileTraveling;
- (BOOL)isWithinCurrentVisitOrLOI:(id)i;
- (BOOL)monitoringSessionState:(unint64_t)state matchesWithScenarioClass:(unint64_t)class;
- (BOOL)needPeriodicScan;
- (BOOL)shouldIssueBookendedNotificationBasedOnLocationForDevice:(id)device;
- (BOOL)shouldIssueBookendedNotificationBasedOnTimeForDevice:(id)device;
- (BOOL)shouldIssueBookendedNotificationForDevice:(id)device;
- (BOOL)shouldSuppressBudsAlertDueToCaseLeashedNotAdv:(id)adv;
- (BOOL)shouldSuppressDueToHELEAdvertisingLimit:(id)limit;
- (BOOL)shouldSuppressDueToRepeatedAlertsInOneTravelingSession:(id)session context:(id)context;
- (SAMonitoringSessionManager)initWithWithYouDetector:(id)detector fenceRequestServicer:(id)servicer fenceManager:(id)manager travelTypeClassifier:(id)classifier clock:(id)clock deviceRecord:(id)record analytics:(id)analytics persistenceManager:(id)self0 audioAccessoryManager:(id)self1;
- (double)minimumTimeSinceScenarioTransitionForAlertForDeviceUUID:(id)d alertType:(unint64_t)type;
- (double)timeDelayForRetryScanForAlertForDeviceUUID:(id)d alertType:(unint64_t)type;
- (id)computeRemovedSafeLocations:(id)locations;
- (id)createLocationFromCircularRegion:(id)region forDevice:(id)device withContext:(unint64_t)context;
- (id)getLastScenarioChangeDateAmongAllDevices;
- (int64_t)checkInEarStatus:(id)status;
- (int64_t)determineTrackedTravelingCount;
- (int64_t)earlyVehicularTriggerForDeviceUUID:(id)d;
- (int64_t)isBudPartID:(int64_t)d inCasePartID:(int64_t)iD relationStatus:(int64_t)status;
- (unint64_t)getMoreSpecificSADeviceType:(id)type;
- (unint64_t)scenarioClassForDeviceUUID:(id)d;
- (unint64_t)stateForDeviceUUID:(id)d;
- (void)addClient:(id)client;
- (void)addDevice:(id)device isLastDeviceEvent:(BOOL)event;
- (void)addDevicesIfNeededPerEvent:(id)event;
- (void)addDisableReason:(unint64_t)reason;
- (void)alarmFiredForUUID:(id)d;
- (void)attemptToPopulateTrackedTravelingStartLocationForDevice:(id)device;
- (void)bootstrapMonitoringSessionRecord:(id)record;
- (void)cancelMonitoringDevice:(id)device;
- (void)changeMonitoringSessionState:(id)state toState:(unint64_t)toState;
- (void)checkForDevicesNeedingTransition;
- (void)checkReunion:(unint64_t)reunion to:(unint64_t)to forDeviceWithUUID:(id)d;
- (void)configureBackgroundScanning;
- (void)createMonitoringDevice:(id)device;
- (void)didChangeScenarioClassFrom:(unint64_t)from to:(unint64_t)to forDevice:(id)device;
- (void)didChangeTravelTypeFrom:(unint64_t)from to:(unint64_t)to hints:(unint64_t)hints;
- (void)didForceUpdateWithYouStatus;
- (void)forceStandbyMode:(id)mode;
- (void)handleGeofenceEvent:(id)event;
- (void)handleGeofenceExitedForDeviceUUID:(id)d;
- (void)handleMultiPartStatusEvent:(id)event;
- (void)handleSeparationForDeviceUUID:(id)d withSafeLocationRecommendation:(id)recommendation context:(id)context;
- (void)handleSystemStateChanged:(id)changed;
- (void)ingestTAEvent:(id)event;
- (void)notifyEarlyLeftBehind:(id)behind;
- (void)notifyLeftBehind:(id)behind withRegion:(id)region isEarlyVehicularTrigger:(BOOL)trigger;
- (void)notifyWhenLeftBehind:(id)behind;
- (void)notifyWhileTraveling:(id)traveling isBookendingTravel:(BOOL)travel;
- (void)removeAndStopSafeLocationsForDeviceUUID:(id)d;
- (void)removeClient:(id)client;
- (void)removeDeviceWithUUID:(id)d isLastDeviceEvent:(BOOL)event;
- (void)removeDevicesIfNeededPerEvent:(id)event;
- (void)removeDisableReason:(unint64_t)reason;
- (void)removeSafeLocation:(id)location forDeviceUUID:(id)d;
- (void)removeTravelFenceForDevice:(id)device;
- (void)requestToFetchLastVisit;
- (void)requestToStartBackgroundScanning;
- (void)requestToStopBackgroundScanning;
- (void)scheduleNextForceUpdateWithYouStatusFromReferenceDate:(id)date forAlertForDevice:(id)device alertType:(unint64_t)type;
- (void)scheduleNextPersistenceWrite;
- (void)setEnabled:(BOOL)enabled;
- (void)setSafeLocations:(id)locations forDeviceUUID:(id)d;
- (void)setUpTravelingGeofencesOnAirplaneModeToggleOffIfNeeded;
- (void)startPeriodicScans;
- (void)startPeriodicScansIfNeeded;
- (void)startSafeLocation:(id)location forDevice:(id)device;
- (void)stopPeriodicScans;
- (void)stopPeriodicScansIfNotNeeded;
- (void)stopSafeLocation:(id)location forDevice:(id)device;
- (void)storeSeparationLocation:(id)location;
- (void)updateDevicesWithSafeLocations:(id)locations;
- (void)updateLocation:(id)location;
- (void)updateSafeLocations:(id)locations;
- (void)updatedWithYouStatusFrom:(unint64_t)from to:(unint64_t)to forDeviceWithUUID:(id)d;
@end

@implementation SAMonitoringSessionManager

- (SAMonitoringSessionManager)initWithWithYouDetector:(id)detector fenceRequestServicer:(id)servicer fenceManager:(id)manager travelTypeClassifier:(id)classifier clock:(id)clock deviceRecord:(id)record analytics:(id)analytics persistenceManager:(id)self0 audioAccessoryManager:(id)self1
{
  detectorCopy = detector;
  servicerCopy = servicer;
  managerCopy = manager;
  classifierCopy = classifier;
  clockCopy = clock;
  recordCopy = record;
  analyticsCopy = analytics;
  persistenceManagerCopy = persistenceManager;
  accessoryManagerCopy = accessoryManager;
  v54.receiver = self;
  v54.super_class = SAMonitoringSessionManager;
  v18 = [(SAMonitoringSessionManager *)&v54 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_8;
  }

  v20 = 0;
  if (detectorCopy && servicerCopy && managerCopy && clockCopy && recordCopy)
  {
    *&v18->_enabled = 0;
    objc_storeStrong(&v18->_clock, clock);
    objc_storeStrong(&v19->_analytics, analytics);
    objc_storeStrong(&v19->_withYouDetector, detector);
    withYouDetector = [(SAMonitoringSessionManager *)v19 withYouDetector];
    [withYouDetector addClient:v19];

    objc_storeStrong(&v19->_deviceRecord, record);
    objc_storeStrong(&v19->_fenceManager, manager);
    objc_storeStrong(&v19->_fenceRequestServicer, servicer);
    objc_storeStrong(&v19->_travelTypeClassifier, classifier);
    travelTypeClassifier = [(SAMonitoringSessionManager *)v19 travelTypeClassifier];
    [travelTypeClassifier addClient:v19];

    v23 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    clients = v19->_clients;
    v19->_clients = v23;

    objc_storeStrong(&v19->_persistenceManager, persistenceManager);
    objc_storeStrong(&v19->_audioAccessoryManager, accessoryManager);
    v25 = objc_alloc_init(MEMORY[0x277CBEB38]);
    devices = v19->_devices;
    v19->_devices = v25;

    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    safeLocations = v19->_safeLocations;
    v19->_safeLocations = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDtoSafeLocationUUIDs = v19->_deviceUUIDtoSafeLocationUUIDs;
    v19->_deviceUUIDtoSafeLocationUUIDs = v29;

    v19->_requestedPeriodicScan = 0;
    timeOfAttemptToLoadFromPersistence = v19->_timeOfAttemptToLoadFromPersistence;
    v19->_timeOfAttemptToLoadFromPersistence = 0;

    [(SAMonitoringSessionManager *)v19 addDisableReason:64];
    [(SAMonitoringSessionManager *)v19 addDisableReason:128];
    [(SAMonitoringSessionManager *)v19 addDisableReason:1];
    [(SAMonitoringSessionManager *)v19 addDisableReason:2];
    v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
    caLastAlertDate = v19->_caLastAlertDate;
    v19->_caLastAlertDate = v32;

    v19->_caBroughtOutOnTravel = -1;
    v19->_caCurrentVehicularState = 0;
    v19->_caIsVehicularBTHintOn = 0;
    v34 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDtoAlertContext = v19->_deviceUUIDtoAlertContext;
    v19->_deviceUUIDtoAlertContext = v34;

    v36 = objc_alloc_init(MEMORY[0x277CBEB38]);
    deviceUUIDtoMonitoringSession = v19->_deviceUUIDtoMonitoringSession;
    v19->_deviceUUIDtoMonitoringSession = v36;

    nextScheduledAlarmForPersistenceWrite = v19->_nextScheduledAlarmForPersistenceWrite;
    v19->_nextScheduledAlarmForPersistenceWrite = 0;

    currentVisitOrLOIEvent = v19->_currentVisitOrLOIEvent;
    v19->_currentVisitOrLOIEvent = 0;

    v19->_isCompanionConnected = 0;
    v40 = objc_alloc_init(MEMORY[0x277CBEB58]);
    devicesWithToBePopulatedTrackedTravelingStartLocation = v19->_devicesWithToBePopulatedTrackedTravelingStartLocation;
    v19->_devicesWithToBePopulatedTrackedTravelingStartLocation = v40;

    v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
    devicesWithPendingTransition = v19->_devicesWithPendingTransition;
    v19->_devicesWithPendingTransition = v42;

LABEL_8:
    v20 = v19;
  }

  return v20;
}

- (void)requestToStartBackgroundScanning
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_clients;
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
          [v7 startBackgroundScanning];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)requestToStopBackgroundScanning
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_clients;
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
          [v7 stopBackgroundScanning];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)requestToFetchLastVisit
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_clients;
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
          [v7 fetchLastVisit];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)configureBackgroundScanning
{
  v10 = *MEMORY[0x277D85DE8];
  enabled = [(SAMonitoringSessionManager *)self enabled];
  v4 = TASALog;
  v5 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
  if (enabled)
  {
    if (v5)
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager request to start scanning}", &v6, 0x12u);
    }

    [(SAMonitoringSessionManager *)self requestToStartBackgroundScanning];
  }

  else
  {
    if (v5)
    {
      v6 = 68289026;
      v7 = 0;
      v8 = 2082;
      v9 = "";
      _os_log_impl(&dword_2656EA000, v4, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager request to stop scanning}", &v6, 0x12u);
    }

    [(SAMonitoringSessionManager *)self requestToStopBackgroundScanning];
  }
}

- (void)bootstrapMonitoringSessionRecord:(id)record
{
  v46 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v5 = [recordCopy countByEnumeratingWithState:&v31 objects:v45 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v32;
    v9 = &TASALog;
    *&v6 = 68289795;
    v29 = v6;
    v30 = recordCopy;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(recordCopy);
        }

        v11 = *(*(&v31 + 1) + 8 * i);
        v12 = [recordCopy objectForKeyedSubscript:{v11, v29}];
        fenceManager = [(SAMonitoringSessionManager *)self fenceManager];
        scenarioClassifier = [v12 scenarioClassifier];
        [fenceManager addClient:scenarioClassifier];

        travelTypeClassifier = [(SAMonitoringSessionManager *)self travelTypeClassifier];
        scenarioClassifier2 = [v12 scenarioClassifier];
        [travelTypeClassifier addClient:scenarioClassifier2];

        scenarioClassifier3 = [v12 scenarioClassifier];
        [scenarioClassifier3 addClient:self];

        fenceManager2 = [(SAMonitoringSessionManager *)self fenceManager];
        scenarioClassifier4 = [v12 scenarioClassifier];
        [scenarioClassifier4 setDelegate:fenceManager2];

        clock = [(SAMonitoringSessionManager *)self clock];
        scenarioClassifier5 = [v12 scenarioClassifier];
        [scenarioClassifier5 setTimeDelegate:clock];

        [(SAMonitoringSessionManager *)self attemptToPopulateTrackedTravelingStartLocationForDevice:v11];
        v22 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          v24 = +[SAMonitoringSessionManager convertSAMonitoringSessionStateToString:](SAMonitoringSessionManager, "convertSAMonitoringSessionStateToString:", [v12 state]);
          v25 = v7;
          v26 = v8;
          v27 = v9;
          v28 = +[SAScenarioClassifier convertSAScenarioClassToString:](SAScenarioClassifier, "convertSAScenarioClassToString:", [v12 scenario]);
          *buf = v29;
          v36 = 0;
          v37 = 2082;
          v38 = "";
          v39 = 2113;
          v40 = v11;
          v41 = 2113;
          v42 = v24;
          v43 = 2113;
          v44 = v28;
          _os_log_impl(&dword_2656EA000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager bootstraped from persisted data, uuid:%{private}@, state:%{private}@, scenario:%{private}@}", buf, 0x30u);

          v9 = v27;
          v8 = v26;
          v7 = v25;
          recordCopy = v30;
        }
      }

      v7 = [recordCopy countByEnumeratingWithState:&v31 objects:v45 count:16];
    }

    while (v7);
  }

  [(SAMonitoringSessionManager *)self startPeriodicScansIfNeeded];
}

- (BOOL)monitoringSessionState:(unint64_t)state matchesWithScenarioClass:(unint64_t)class
{
  if (state - 3 < 2)
  {
    return class == 3;
  }

  if (state != 5)
  {
    if (state != 1)
    {
      return 1;
    }

    return class == 3;
  }

  return class == 2;
}

- (void)checkForDevicesNeedingTransition
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  allKeys = [deviceUUIDtoMonitoringSession allKeys];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = allKeys;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v12 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v10];
        scenario = [v12 scenario];

        deviceUUIDtoMonitoringSession3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v15 = [deviceUUIDtoMonitoringSession3 objectForKeyedSubscript:v10];
        state = [v15 state];

        if (![(SAMonitoringSessionManager *)self monitoringSessionState:state matchesWithScenarioClass:scenario])
        {
          [v3 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v7);
  }

  v17 = [v3 count];
  if (v17)
  {
    v18 = v17;
    v19 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2049;
      v31 = v18;
      _os_log_impl(&dword_2656EA000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting terminable long scan on enable with devices needing transition, count of devices needing transition:%{private}ld}", buf, 0x1Cu);
    }

    withYouDetector = [(SAMonitoringSessionManager *)self withYouDetector];
    [withYouDetector forceUpdateWithYouStatusToFindDevices:v3 withContext:10];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  v46 = *MEMORY[0x277D85DE8];
  if (self->_enabled != enabled)
  {
    enabledCopy = enabled;
    self->_enabled = enabled;
    v5 = TASALog;
    v6 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
    if (enabledCopy)
    {
      if (v6)
      {
        buf = 68289026;
        v44 = 2082;
        v45 = "";
        _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager enabling sa}", &buf, 0x12u);
      }

      withYouDetector = [(SAMonitoringSessionManager *)self withYouDetector];
      [withYouDetector resetAllWithYouStatusAndScanStates];

      [(SAMonitoringSessionManager *)self configureBackgroundScanning];
      [(SAMonitoringSessionManager *)self requestToFetchLastVisit];
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      devices = [(SAMonitoringSessionManager *)self devices];
      v9 = [devices countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v37;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v37 != v11)
            {
              objc_enumerationMutation(devices);
            }

            v13 = *(*(&v36 + 1) + 8 * i);
            [(SAMonitoringSessionManager *)self createMonitoringDevice:v13];
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            deviceUUIDtoSafeLocationUUIDs = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
            v15 = [deviceUUIDtoSafeLocationUUIDs objectForKeyedSubscript:v13];

            v16 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v33;
              do
              {
                for (j = 0; j != v17; ++j)
                {
                  if (*v33 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  [(SAMonitoringSessionManager *)self startSafeLocation:*(*(&v32 + 1) + 8 * j) forDevice:v13];
                }

                v17 = [v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
              }

              while (v17);
            }
          }

          v10 = [devices countByEnumeratingWithState:&v36 objects:v42 count:16];
        }

        while (v10);
      }

      [(SAMonitoringSessionManager *)self startPeriodicScansIfNeeded];
      [(SAMonitoringSessionManager *)self checkForDevicesNeedingTransition];
    }

    else
    {
      if (v6)
      {
        buf = 68289026;
        v44 = 2082;
        v45 = "";
        _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager disabling sa}", &buf, 0x12u);
      }

      [(SAMonitoringSessionManager *)self stopPeriodicScans];
      deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      allKeys = [deviceUUIDtoMonitoringSession allKeys];

      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v22 = allKeys;
      v23 = [v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v29;
        do
        {
          for (k = 0; k != v24; ++k)
          {
            if (*v29 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [(SAMonitoringSessionManager *)self cancelMonitoringDevice:*(*(&v28 + 1) + 8 * k), v28];
          }

          v24 = [v22 countByEnumeratingWithState:&v28 objects:v40 count:16];
        }

        while (v24);
      }

      [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:0];
      [(SAMonitoringSessionManager *)self configureBackgroundScanning];
      withYouDetector2 = [(SAMonitoringSessionManager *)self withYouDetector];
      [withYouDetector2 resetAllWithYouStatusAndScanStates];
    }
  }
}

- (void)forceStandbyMode:(id)mode
{
  modeCopy = mode;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v5 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:modeCopy];

  if (v5)
  {
    [v5 setEarlyVehicularTrigger:0];
    [v5 setEarlyAirplaneTrigger:0];
    geofence = [v5 geofence];

    if (geofence)
    {
      fenceRequestServicer = [(SAMonitoringSessionManager *)self fenceRequestServicer];
      geofence2 = [v5 geofence];
      [fenceRequestServicer removeGeofence:geofence2];

      deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v10 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:modeCopy];
      [v10 setGeofence:0];

      [(SAMonitoringSessionManager *)self changeMonitoringSessionState:modeCopy toState:2];
    }
  }
}

- (BOOL)allDevicesInSafeLocation
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(deviceUUIDtoMonitoringSession);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v10 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v8];
        scenario = [v10 scenario];

        if (scenario != 1)
        {
          v12 = 0;
          goto LABEL_11;
        }
      }

      v5 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 1;
LABEL_11:

  return v12;
}

- (BOOL)anyDeviceInUnsafeLocation
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(deviceUUIDtoMonitoringSession);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v10 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v8];
        scenario = [v10 scenario];

        if (scenario == 2)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v5 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (void)createMonitoringDevice:(id)device
{
  v36 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v8 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 68289026;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v9 = "{msg%{public}.0s:#SAMonitoringSessionManager createMonitoringDevice nil UUID}";
LABEL_10:
    _os_log_impl(&dword_2656EA000, v8, OS_LOG_TYPE_ERROR, v9, buf, 0x12u);
    goto LABEL_22;
  }

  if (![(SAMonitoringSessionManager *)self enabled])
  {
    v8 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 68289026;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    v9 = "{msg%{public}.0s:#SAMonitoringSessionManager createMonitoringDevice while not enabled}";
    goto LABEL_10;
  }

  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  v7 = TASALog;
  if (v6)
  {
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289283;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2113;
      v35 = deviceCopy;
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager createMonitoringDevice monitoring session already exists, uuid:%{private}@}", buf, 0x1Cu);
    }
  }

  else
  {
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v31 = 0;
      v32 = 2082;
      v33 = "";
      v34 = 2113;
      v35 = deviceCopy;
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager createMonitoringDevice, uuid:%{private}@}", buf, 0x1Cu);
    }

    currentVisitOrLOIEvent = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
    if (currentVisitOrLOIEvent)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    v12 = [[SAMonitoringSession alloc] initWithDeviceUUID:deviceCopy state:0 geofence:0 scenario:v11 trackedTravelingStartDate:0];
    fenceManager = [(SAMonitoringSessionManager *)self fenceManager];
    scenarioClassifier = [(SAMonitoringSession *)v12 scenarioClassifier];
    [fenceManager addClient:scenarioClassifier];

    travelTypeClassifier = [(SAMonitoringSessionManager *)self travelTypeClassifier];
    scenarioClassifier2 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [travelTypeClassifier addClient:scenarioClassifier2];

    scenarioClassifier3 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [scenarioClassifier3 addClient:self];

    fenceManager2 = [(SAMonitoringSessionManager *)self fenceManager];
    scenarioClassifier4 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [scenarioClassifier4 setDelegate:fenceManager2];

    clock = [(SAMonitoringSessionManager *)self clock];
    scenarioClassifier5 = [(SAMonitoringSession *)v12 scenarioClassifier];
    [scenarioClassifier5 setTimeDelegate:clock];

    deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    [deviceUUIDtoMonitoringSession2 setObject:v12 forKeyedSubscript:deviceCopy];

    [(SAMonitoringSessionManager *)self changeMonitoringSessionState:deviceCopy toState:2];
    [(SAMonitoringSessionManager *)self didChangeScenarioClassFrom:0 to:v11 forDevice:deviceCopy];
    scenarioClassifier6 = [(SAMonitoringSession *)v12 scenarioClassifier];
    currentVisitOrLOIEvent2 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
    [scenarioClassifier6 ingestTAEvent:currentVisitOrLOIEvent2];

    LOBYTE(currentVisitOrLOIEvent2) = [(SAMonitoringSessionManager *)self standby];
    withYouDetector = [(SAMonitoringSessionManager *)self withYouDetector];
    v26 = withYouDetector;
    if (currentVisitOrLOIEvent2)
    {
      [withYouDetector forceUpdateWithYouStatusWithShortScan:0];
    }

    else
    {
      v29 = deviceCopy;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
      [v26 forceUpdateWithYouStatusToFindDevices:v27 withContext:5];
    }
  }

  if (![(SAMonitoringSessionManager *)self standby])
  {
    analytics = [(SAMonitoringSessionManager *)self analytics];
    [analytics setActiveState:1];
  }

LABEL_22:
}

- (void)cancelMonitoringDevice:(id)device
{
  v42 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v27 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    buf = 68289026;
    v38 = 2082;
    v39 = "";
    v28 = "{msg%{public}.0s:#SAMonitoringSessionManager cancelMonitoringDevice nil UUID}";
    v29 = v27;
    v30 = 18;
LABEL_20:
    _os_log_impl(&dword_2656EA000, v29, OS_LOG_TYPE_ERROR, v28, &buf, v30);
    goto LABEL_21;
  }

  [(SAMonitoringSessionManager *)self changeMonitoringSessionState:deviceCopy toState:6];
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  if (!v6)
  {
    v31 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    buf = 68289283;
    v38 = 2082;
    v39 = "";
    v40 = 2113;
    v41 = deviceCopy;
    v28 = "{msg%{public}.0s:#SAMonitoringSessionManager cancelMonitoringDevice monitoring session does not exist, uuid:%{private}@}";
    v29 = v31;
    v30 = 28;
    goto LABEL_20;
  }

  geofence = [v6 geofence];

  if (geofence)
  {
    fenceRequestServicer = [(SAMonitoringSessionManager *)self fenceRequestServicer];
    geofence2 = [v6 geofence];
    [fenceRequestServicer removeGeofence:geofence2];
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  deviceUUIDtoSafeLocationUUIDs = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  v11 = [deviceUUIDtoSafeLocationUUIDs objectForKeyedSubscript:deviceCopy];

  v12 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SAMonitoringSessionManager *)self stopSafeLocation:*(*(&v32 + 1) + 8 * i) forDevice:deviceCopy];
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v13);
  }

  fenceManager = [(SAMonitoringSessionManager *)self fenceManager];
  scenarioClassifier = [v6 scenarioClassifier];
  [fenceManager removeClient:scenarioClassifier];

  travelTypeClassifier = [(SAMonitoringSessionManager *)self travelTypeClassifier];
  scenarioClassifier2 = [v6 scenarioClassifier];
  [travelTypeClassifier removeClient:scenarioClassifier2];

  scenarioClassifier3 = [v6 scenarioClassifier];
  [scenarioClassifier3 removeClient:self];

  [v6 setScenarioClassifier:0];
  [v6 setDeviceUUID:0];

  deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  [deviceUUIDtoMonitoringSession2 setObject:0 forKeyedSubscript:deviceCopy];

  deviceUUIDtoMonitoringSession3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  [deviceUUIDtoMonitoringSession3 removeObjectForKey:deviceCopy];

  v23 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289283;
    v38 = 2082;
    v39 = "";
    v40 = 2113;
    v41 = deviceCopy;
    _os_log_impl(&dword_2656EA000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager canceled monitoring session, uuid:%{private}@}", &buf, 0x1Cu);
  }

  deviceUUIDtoMonitoringSession4 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v25 = [deviceUUIDtoMonitoringSession4 count];

  if (!v25)
  {
    analytics = [(SAMonitoringSessionManager *)self analytics];
    [analytics setActiveState:0];
  }

LABEL_21:
}

- (void)attemptToPopulateTrackedTravelingStartLocationForDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  state = [v6 state];
  if (state > 4 || ((1 << state) & 0x1A) == 0)
  {
    v10 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
    {
      v20 = 68289283;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v24 = 2113;
      v25 = deviceCopy;
      v11 = "{msg%{public}.0s:#SAMonitoringSessionManager attemptToPopulateTrackedTravelingStartLocationForDevice not in one of the traveling states, uuid:%{private}@}";
      goto LABEL_16;
    }
  }

  else
  {
    trackedTravelingStartLocation = [v6 trackedTravelingStartLocation];

    if (trackedTravelingStartLocation)
    {
      v10 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v20 = 68289283;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2113;
        v25 = deviceCopy;
        v11 = "{msg%{public}.0s:#SAMonitoringSessionManager attemptToPopulateTrackedTravelingStartLocationForDevice already set, uuid:%{private}@}";
LABEL_16:
        _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEBUG, v11, &v20, 0x1Cu);
      }
    }

    else
    {
      lastLocation = [(SAMonitoringSessionManager *)self lastLocation];
      getDate = [lastLocation getDate];
      getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [getDate timeIntervalSinceDate:getCurrentTime];
      v16 = v15;

      v17 = -v16;
      if (v16 >= 0.0)
      {
        v17 = v16;
      }

      if (v17 <= 10.0)
      {
        lastLocation2 = [(SAMonitoringSessionManager *)self lastLocation];
        [v6 setTrackedTravelingStartLocation:lastLocation2];
      }

      else
      {
        v18 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
        {
          v20 = 68289283;
          v21 = 0;
          v22 = 2082;
          v23 = "";
          v24 = 2113;
          v25 = deviceCopy;
          _os_log_impl(&dword_2656EA000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager attemptToPopulateTrackedTravelingStartLocationForDevice lastLocation is not recent enough, adding to set to be populated, uuid:%{private}@}", &v20, 0x1Cu);
        }

        lastLocation2 = [(SAMonitoringSessionManager *)self devicesWithToBePopulatedTrackedTravelingStartLocation];
        [lastLocation2 addObject:deviceCopy];
      }
    }
  }
}

- (void)changeMonitoringSessionState:(id)state toState:(unint64_t)toState
{
  v43 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v8 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:stateCopy];

  if (v8)
  {
    state = [v8 state];
    v10 = TASALog;
    if (state == toState)
    {
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        v11 = v10;
        v12 = +[SAMonitoringSessionManager convertSAMonitoringSessionStateToString:](SAMonitoringSessionManager, "convertSAMonitoringSessionStateToString:", [v8 state]);
        v13 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:toState];
        buf = 68289795;
        v35 = 2082;
        v36 = "";
        v37 = 2113;
        v38 = stateCopy;
        v39 = 2113;
        v40 = v12;
        v41 = 2113;
        v42 = v13;
        _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager changeMonitoringSessionState no state change necessary, uuid:%{private}@, fromState:%{private}@, toState:%{private}@}", &buf, 0x30u);
      }
    }

    else
    {
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v10;
        v16 = +[SAMonitoringSessionManager convertSAMonitoringSessionStateToString:](SAMonitoringSessionManager, "convertSAMonitoringSessionStateToString:", [v8 state]);
        v17 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:toState];
        buf = 68289795;
        v35 = 2082;
        v36 = "";
        v37 = 2113;
        v38 = stateCopy;
        v39 = 2113;
        v40 = v16;
        v41 = 2113;
        v42 = v17;
        _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager changeMonitoringSessionState, uuid:%{private}@, fromState:%{private}@, toState:%{private}@}", &buf, 0x30u);
      }

      deviceRecord = [(SAMonitoringSessionManager *)self deviceRecord];
      [deviceRecord updateMonitoringSessionState:toState forDeviceWithUUID:stateCopy];

      devicesWithPendingTransition = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
      [devicesWithPendingTransition removeObject:stateCopy];

      if (toState - 5 < 2 || toState == 2)
      {
        [v8 setTrackedTravelingStartDate:0];
        [v8 setTrackedTravelingStartLocation:0];
      }

      else if (toState == 1 && [v8 state] != 3 && objc_msgSend(v8, "state") != 4)
      {
        getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [v8 setTrackedTravelingStartDate:getCurrentTime];
      }

      [v8 setState:toState];
      [(SAMonitoringSessionManager *)self attemptToPopulateTrackedTravelingStartLocationForDevice:stateCopy];
      [v8 setEarlyVehicularTrigger:0];
      [v8 setEarlyAirplaneTrigger:0];
      getCurrentTime2 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [v8 setCaLastStateTransition:getCurrentTime2];

      toStateCopy = toState;
      if (toState == 3)
      {
        [(SAMonitoringSessionManager *)self storeSeparationLocation:stateCopy];
      }

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v22 = self->_clients;
      v23 = [(NSHashTable *)v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v30;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v30 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v29 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              [v27 updatedMonitoringState:objc_msgSend(v8 forDeviceUUID:{"state"), stateCopy}];
            }
          }

          v24 = [(NSHashTable *)v22 countByEnumeratingWithState:&v29 objects:v33 count:16];
        }

        while (v24);
      }

      if (toStateCopy <= 4 && ((1 << toStateCopy) & 0x1A) != 0)
      {
        [(SAMonitoringSessionManager *)self startPeriodicScans];
      }

      else
      {
        [(SAMonitoringSessionManager *)self stopPeriodicScansIfNotNeeded];
      }

      [(SAMonitoringSessionManager *)self scheduleNextPersistenceWrite];
    }
  }

  else
  {
    v14 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      buf = 68289283;
      v35 = 2082;
      v36 = "";
      v37 = 2113;
      v38 = stateCopy;
      _os_log_impl(&dword_2656EA000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager changeMonitoringSessionState UUID doesn't map to monitoring session, uuid:%{private}@}", &buf, 0x1Cu);
    }
  }
}

- (int64_t)determineTrackedTravelingCount
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(deviceUUIDtoMonitoringSession);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v11 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v9];
        state = [v11 state];

        if (state == 1)
        {
          ++v6;
        }
      }

      v5 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)needPeriodicScan
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(SAMonitoringSessionManager *)self enabled]|| [(SAMonitoringSessionManager *)self standby])
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v5 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(deviceUUIDtoMonitoringSession);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v11 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v9];
        state = [v11 state];

        if (state <= 4 && ((1 << state) & 0x1A) != 0)
        {
          v3 = 1;
          goto LABEL_18;
        }
      }

      v6 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v15 objects:v19 count:16];
      v3 = 0;
    }

    while (v6);
  }

  else
  {
    v3 = 0;
  }

LABEL_18:

  return v3;
}

- (void)stopPeriodicScans
{
  if ([(SAMonitoringSessionManager *)self requestedPeriodicScan])
  {
    [(SAMonitoringSessionManager *)self setRequestedPeriodicScan:0];
    withYouDetector = self->_withYouDetector;

    [(SAWithYouDetectorServiceProtocol *)withYouDetector pausePeriodicScan];
  }
}

- (void)stopPeriodicScansIfNotNeeded
{
  if ([(SAMonitoringSessionManager *)self requestedPeriodicScan]&& ![(SAMonitoringSessionManager *)self needPeriodicScan])
  {

    [(SAMonitoringSessionManager *)self stopPeriodicScans];
  }
}

- (void)startPeriodicScans
{
  if (![(SAMonitoringSessionManager *)self requestedPeriodicScan]&& [(SAMonitoringSessionManager *)self enabled]&& ![(SAMonitoringSessionManager *)self standby])
  {
    [(SAMonitoringSessionManager *)self setRequestedPeriodicScan:1];
    withYouDetector = self->_withYouDetector;

    [(SAWithYouDetectorServiceProtocol *)withYouDetector resumePeriodicScan];
  }
}

- (void)startPeriodicScansIfNeeded
{
  if (![(SAMonitoringSessionManager *)self requestedPeriodicScan]&& [(SAMonitoringSessionManager *)self needPeriodicScan])
  {

    [(SAMonitoringSessionManager *)self startPeriodicScans];
  }
}

- (unint64_t)getMoreSpecificSADeviceType:(id)type
{
  typeCopy = type;
  deviceType = [typeCopy deviceType];
  if ([typeCopy deviceType] == 1)
  {
    model = [typeCopy model];
    v6 = [model hasPrefix:@"iPhone"];

    if (v6)
    {
      deviceType = 64;
    }

    else
    {
      model2 = [typeCopy model];
      v8 = [model2 hasPrefix:@"iPad"];

      if (v8)
      {
        deviceType = 32;
      }

      else
      {
        model3 = [typeCopy model];
        v10 = [model3 hasPrefix:@"MacBook"];

        if (v10)
        {
          deviceType = 128;
        }
      }
    }
  }

  else if ([typeCopy deviceType] == 4)
  {
    if ([typeCopy isAppleAudioAccessory])
    {
      deviceType = 256;
    }

    else
    {
      deviceType = 4;
    }
  }

  return deviceType;
}

- (int64_t)checkInEarStatus:(id)status
{
  v30 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  audioAccessoryManager = [(SAMonitoringSessionManager *)self audioAccessoryManager];

  if (audioAccessoryManager)
  {
    if (statusCopy)
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
      [v6 setString:statusCopy];
      if ([v6 length])
      {
        v7 = 0;
        do
        {
          if (3 * (v7 / 3) + 2 == v7)
          {
            [v6 insertString:@":" atIndex:v7];
          }

          ++v7;
        }

        while ([v6 length] > v7);
      }

      audioAccessoryManager2 = [(SAMonitoringSessionManager *)self audioAccessoryManager];
      [audioAccessoryManager2 setBTAddress:v6];

      v18 = 0;
      v19 = 0;
      audioAccessoryManager3 = [(SAMonitoringSessionManager *)self audioAccessoryManager];
      [audioAccessoryManager3 getInEarStatus:&v19 secondary:&v18];

      v10 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289795;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2113;
        v25 = v6;
        v26 = 2049;
        v27 = v19;
        v28 = 2049;
        v29 = v18;
        _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa received in ear status, macAddress:%{private}@, primary:%{private}ld, secondary:%{private}ld}", buf, 0x30u);
      }

      audioAccessoryManager4 = [(SAMonitoringSessionManager *)self audioAccessoryManager];
      getPrimaryBudSide = [audioAccessoryManager4 getPrimaryBudSide];

      v13 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v21 = 0;
        v22 = 2082;
        v23 = "";
        v24 = 2049;
        v25 = getPrimaryBudSide;
        _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa received primary bud side, bud side:%{private}ld}", buf, 0x1Cu);
      }

      if (v19 != 3 && v18 != 3)
      {
        v14 = 3;
LABEL_34:

        goto LABEL_35;
      }

      if (getPrimaryBudSide == 1)
      {
        if (v19 == 3)
        {
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }

        if (v19 != 3)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (getPrimaryBudSide)
        {
          goto LABEL_33;
        }

        if (v19 == 3)
        {
          v14 = 2;
        }

        else
        {
          v14 = 1;
        }

        if (v19 != 3)
        {
          goto LABEL_34;
        }
      }

      if (v18 != 3)
      {
        goto LABEL_34;
      }

LABEL_33:
      v14 = 0;
      goto LABEL_34;
    }

    v15 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v16 = "{msg%{public}.0s:#sa check in ear status received unknown macAddress}";
      goto LABEL_19;
    }
  }

  else
  {
    v15 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      v16 = "{msg%{public}.0s:#sa check in ear status received unknown audioAccessoryManager}";
LABEL_19:
      _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_ERROR, v16, buf, 0x12u);
    }
  }

  v14 = 0;
LABEL_35:

  return v14;
}

- (BOOL)checkIfCloseToAnySafeLocations:(id)locations leftBehindLocation:(id)location
{
  v47 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  locationCopy = location;
  deviceUUIDtoSafeLocationUUIDs = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  v8 = [deviceUUIDtoSafeLocationUUIDs objectForKeyedSubscript:locationsCopy];

  v9 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    buf = 68289283;
    v43 = 2082;
    v44 = "";
    v45 = 2113;
    v46 = locationsCopy;
    _os_log_impl(&dword_2656EA000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager checking if close to any safe locations before surfacing the alert, uuid:%{private}@}", &buf, 0x1Cu);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v10)
  {
    v11 = v10;
    v34 = locationsCopy;
    v12 = *v38;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        safeLocations = [(SAMonitoringSessionManager *)self safeLocations];
        v16 = [safeLocations objectForKeyedSubscript:v14];

        if (v16)
        {
          v17 = objc_alloc(MEMORY[0x277CE41F8]);
          safeLocations2 = [(SAMonitoringSessionManager *)self safeLocations];
          v19 = [safeLocations2 objectForKeyedSubscript:v14];
          [v19 latitude];
          v21 = v20;
          safeLocations3 = [(SAMonitoringSessionManager *)self safeLocations];
          v23 = [safeLocations3 objectForKeyedSubscript:v14];
          [v23 longitude];
          v25 = [v17 initWithLatitude:v21 longitude:v24];

          [v25 distanceFromLocation:locationCopy];
          v27 = v26;
          safeLocations4 = [(SAMonitoringSessionManager *)self safeLocations];
          v29 = [safeLocations4 objectForKeyedSubscript:v14];
          [v29 radius];
          v31 = v30;

          if (v31 < 100.0)
          {
            v31 = 100.0;
          }

          if (v27 <= v31)
          {
            v32 = 1;
            goto LABEL_16;
          }
        }
      }

      v11 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }

    v32 = 0;
LABEL_16:
    locationsCopy = v34;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (BOOL)checkIfAlertWasTriggeredAtHome:(id)home isEarlyVehicularTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  v31 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v24[0] = 68289539;
    v24[1] = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2117;
    v28 = homeCopy;
    v29 = 1025;
    v30 = triggerCopy;
    _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager checking if alert was triggered at home, location:%{sensitive}@, isEarlyVehicularTrigger:%{private}d}", v24, 0x22u);
  }

  if (!triggerCopy)
  {
    previousVisitOrLOIEvent = [(SAMonitoringSessionManager *)self previousVisitOrLOIEvent];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      previousVisitOrLOIEvent2 = [(SAMonitoringSessionManager *)self previousVisitOrLOIEvent];
      goto LABEL_8;
    }

LABEL_13:
    v13 = 0;
LABEL_14:
    v22 = 0;
    goto LABEL_15;
  }

  currentVisitOrLOIEvent = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

  previousVisitOrLOIEvent2 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
LABEL_8:
  v13 = previousVisitOrLOIEvent2;
  if (!previousVisitOrLOIEvent2 || [previousVisitOrLOIEvent2 type] != 1)
  {
    goto LABEL_14;
  }

  v14 = objc_alloc(MEMORY[0x277CE41F8]);
  [v13 latitude];
  v16 = v15;
  [v13 longitude];
  v18 = [v14 initWithLatitude:v16 longitude:v17];
  [homeCopy distanceFromLocation:v18];
  v20 = v19;
  [v18 horizontalAccuracy];
  if (v21 < 100.0)
  {
    v21 = 100.0;
  }

  v22 = v20 <= v21;

LABEL_15:
  return v22;
}

- (BOOL)shouldSuppressDueToRepeatedAlertsInOneTravelingSession:(id)session context:(id)context
{
  v40 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  contextCopy = context;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v9 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:sessionCopy];

  v10 = [contextCopy objectForKeyedSubscript:&unk_2877100A8];
  if (v10)
  {
    v11 = [contextCopy objectForKeyedSubscript:&unk_2877100A8];
    v12 = [v11 BOOLValue] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = [contextCopy objectForKeyedSubscript:&unk_2877100C0];
  integerValue = [v13 integerValue];

  if (integerValue != 2)
  {
LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  lastAlertDateInCurrentTravelingSession = [v9 lastAlertDateInCurrentTravelingSession];

  if (lastAlertDateInCurrentTravelingSession)
  {
    v16 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      v36 = 2113;
      v37 = sessionCopy;
      _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager suppressing alerts due to repeated alerts in one traveling session, uuid:%{private}@}", buf, 0x1Cu);
    }

    v17 = 1;
    goto LABEL_21;
  }

  v31 = v9;
  v18 = [(SADeviceRecord *)self->_deviceRecord getRelatedDevices:sessionCopy];
  v19 = v18;
  if (!v18 || ![v18 count])
  {
LABEL_15:
    v9 = v31;
    if (v12)
    {
      v27 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v33 = 0;
        v34 = 2082;
        v35 = "";
        v36 = 2113;
        v37 = sessionCopy;
        _os_log_impl(&dword_2656EA000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager gating number of alerts in one traveling session , uuid:%{private}@}", buf, 0x1Cu);
      }

      getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [v31 setLastAlertDateInCurrentTravelingSession:getCurrentTime];
    }

    goto LABEL_20;
  }

  v20 = 0;
  while (1)
  {
    v21 = [v19 objectAtIndexedSubscript:v20];
    v22 = [(NSMutableDictionary *)self->_deviceUUIDtoMonitoringSession objectForKeyedSubscript:v21];
    if (v22)
    {
      getCurrentTime2 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      lastAlertDateInCurrentTravelingSession2 = [v22 lastAlertDateInCurrentTravelingSession];
      [getCurrentTime2 timeIntervalSinceDate:lastAlertDateInCurrentTravelingSession2];
      v26 = v25;

      if (v26 > 60.0)
      {
        break;
      }
    }

    if (++v20 >= [v19 count])
    {
      goto LABEL_15;
    }
  }

  v30 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289539;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2113;
    v37 = sessionCopy;
    v38 = 2113;
    v39 = v21;
    _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager suppressing alerts due to related device alert in current traveling session, uuid:%{private}@, relatedDeviceUUID:%{private}@}", buf, 0x26u);
  }

  v17 = 1;
  v9 = v31;
LABEL_21:

  return v17;
}

- (BOOL)shouldSuppressDueToHELEAdvertisingLimit:(id)limit
{
  v33 = *MEMORY[0x277D85DE8];
  limitCopy = limit;
  if ([limitCopy isAppleAudioAccessory] && (objc_msgSend(limitCopy, "productId") == 8206 || objc_msgSend(limitCopy, "productId") == 8211))
  {
    deviceRecord = [(SAMonitoringSessionManager *)self deviceRecord];
    identifier = [limitCopy identifier];
    v7 = [deviceRecord getAdvertisingStartDateForHELE:identifier];

    if (v7)
    {
      getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      [getCurrentTime timeIntervalSinceDate:v7];
      v10 = v9;

      v11 = TASALog;
      v12 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
      if (v10 > 86400.0)
      {
        if (v12)
        {
          v13 = v11;
          identifier2 = [limitCopy identifier];
          uUIDString = [identifier2 UUIDString];
          v25 = 68289283;
          v26 = 0;
          v27 = 2082;
          v28 = "";
          v29 = 2113;
          v30 = uUIDString;
          _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa separation for device exceeding 24hr advertising limit - suppressing alert, device:%{private}@}", &v25, 0x1Cu);
        }

        v16 = 1;
        goto LABEL_16;
      }

      if (v12)
      {
        v18 = v11;
        identifier3 = [limitCopy identifier];
        uUIDString2 = [identifier3 UUIDString];
        v25 = 68289539;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2113;
        v30 = uUIDString2;
        v31 = 2049;
        v32 = v10;
        v21 = "{msg%{public}.0s:#sa separation for device within 24hr advertising limit, device:%{private}@, advertisingAge:%{private}f}";
        v22 = v18;
        v23 = 38;
        goto LABEL_14;
      }
    }

    else
    {
      v17 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v17;
        identifier3 = [limitCopy identifier];
        uUIDString2 = [identifier3 UUIDString];
        v25 = 68289283;
        v26 = 0;
        v27 = 2082;
        v28 = "";
        v29 = 2113;
        v30 = uUIDString2;
        v21 = "{msg%{public}.0s:#sa separation for device with no advertising start state being set, device:%{private}@}";
        v22 = v18;
        v23 = 28;
LABEL_14:
        _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_DEFAULT, v21, &v25, v23);
      }
    }

    v16 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v16 = 0;
LABEL_17:

  return v16;
}

- (BOOL)shouldSuppressBudsAlertDueToCaseLeashedNotAdv:(id)adv
{
  v62 = *MEMORY[0x277D85DE8];
  advCopy = adv;
  v5 = [(SADeviceRecord *)self->_deviceRecord getSADevice:advCopy];
  v6 = v5;
  if (v5 && [v5 isBudForAirPodsBLECase])
  {
    v7 = [(SADeviceRecord *)self->_deviceRecord getRelatedDevices:advCopy];
    v8 = v7;
    if (!v7)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289283;
        v46 = 0;
        v47 = 2082;
        v48 = "";
        v49 = 2113;
        v50 = advCopy;
        v17 = "{msg%{public}.0s:#sa #suppress no related devices for buds, uuid:%{private}@}";
LABEL_18:
        _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_ERROR, v17, buf, 0x1Cu);
      }

LABEL_34:
      v18 = 0;
      goto LABEL_35;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v61 count:16];
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = v10;
    v12 = *v42;
LABEL_6:
    v13 = 0;
    while (1)
    {
      if (*v42 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [(SADeviceRecord *)self->_deviceRecord getSADevice:*(*(&v41 + 1) + 8 * v13), v41];
      v15 = v14;
      if (v14)
      {
        if ([v14 isAirPodsCase])
        {
          break;
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v41 objects:v61 count:16];
        if (v11)
        {
          goto LABEL_6;
        }

LABEL_13:

        v16 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
        {
          *buf = 68289283;
          v46 = 0;
          v47 = 2082;
          v48 = "";
          v49 = 2113;
          v50 = advCopy;
          v17 = "{msg%{public}.0s:#sa #suppress no case found for buds, uuid:%{private}@}";
          goto LABEL_18;
        }

        goto LABEL_34;
      }
    }

    deviceRecord = self->_deviceRecord;
    identifier = [v15 identifier];
    if ([(SADeviceRecord *)deviceRecord getConnectionState:identifier]== 3)
    {
    }

    else
    {
      v21 = self->_deviceRecord;
      identifier2 = [v15 identifier];
      v23 = [(SADeviceRecord *)v21 getConnectionState:identifier2];

      if (v23 != 2)
      {
        v39 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_INFO))
        {
          v34 = v39;
          identifier3 = [v15 identifier];
          *buf = 68289539;
          v46 = 0;
          v47 = 2082;
          v48 = "";
          v49 = 2113;
          v50 = advCopy;
          v51 = 2113;
          v52 = identifier3;
          v36 = "{msg%{public}.0s:#sa #suppress case not leashed, bud:%{private}@, case:%{private}@}";
          v37 = v34;
          v38 = OS_LOG_TYPE_INFO;
          goto LABEL_32;
        }

LABEL_33:

        goto LABEL_34;
      }
    }

    v24 = self->_deviceRecord;
    identifier4 = [v15 identifier];
    v26 = [(SADeviceRecord *)v24 getRelationStatus:identifier4];

    partIdentifier = [v15 partIdentifier];
    partIdentifier2 = [v6 partIdentifier];
    if ([v15 isValidPartID] && objc_msgSend(v6, "isValidPartID") && (v26 & 0x8000000000000000) == 0)
    {
      v29 = [(SAMonitoringSessionManager *)self isBudPartID:partIdentifier2 inCasePartID:partIdentifier relationStatus:v26];
      v30 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        v31 = v30;
        identifier5 = [v15 identifier];
        *buf = 68290563;
        v46 = 0;
        v47 = 2082;
        v48 = "";
        v49 = 2113;
        v50 = advCopy;
        v51 = 2049;
        v52 = partIdentifier2;
        v53 = 2113;
        v54 = identifier5;
        v55 = 2049;
        v56 = partIdentifier;
        v57 = 2049;
        v58 = v26;
        v59 = 2049;
        v60 = v29;
        _os_log_impl(&dword_2656EA000, v31, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #suppress, bud:%{private}@, budPartID:%{private}ld, case:%{private}@, casePartID:%{private}ld, relation:%{private}ld, budInCase:%{private}ld}", buf, 0x4Eu);
      }

      v18 = v29 == 1;

LABEL_35:
      goto LABEL_36;
    }

    v33 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v34 = v33;
      identifier3 = [v15 identifier];
      *buf = 68289539;
      v46 = 0;
      v47 = 2082;
      v48 = "";
      v49 = 2113;
      v50 = advCopy;
      v51 = 2113;
      v52 = identifier3;
      v36 = "{msg%{public}.0s:#sa #suppress invalid case, partID or relationStatus partID, uuid:%{private}@, relatedCaseUUID:%{private}@}";
      v37 = v34;
      v38 = OS_LOG_TYPE_ERROR;
LABEL_32:
      _os_log_impl(&dword_2656EA000, v37, v38, v36, buf, 0x26u);

      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v18 = 0;
LABEL_36:

  return v18;
}

- (int64_t)isBudPartID:(int64_t)d inCasePartID:(int64_t)iD relationStatus:(int64_t)status
{
  v5 = 2;
  if (d == 1)
  {
    v5 = 8;
  }

  v6 = (v5 & status) != 0;
  if (iD <= d)
  {
    return -1;
  }

  else
  {
    return v6;
  }
}

- (void)handleSeparationForDeviceUUID:(id)d withSafeLocationRecommendation:(id)recommendation context:(id)context
{
  v226[19] = *MEMORY[0x277D85DE8];
  dCopy = d;
  recommendationCopy = recommendation;
  contextCopy = context;
  devices = [(SAMonitoringSessionManager *)self devices];
  v12 = [devices objectForKeyedSubscript:dCopy];

  deviceRecord = [(SAMonitoringSessionManager *)self deviceRecord];
  v14 = [deviceRecord getLatestAdvertisement:dCopy];

  v202 = [(SAMonitoringSessionManager *)self checkIfCloseToAnySafeLocations:dCopy leftBehindLocation:recommendationCopy];
  v15 = [(SAMonitoringSessionManager *)self shouldSuppressDueToRepeatedAlertsInOneTravelingSession:dCopy context:contextCopy];
  v201 = [(SAMonitoringSessionManager *)self shouldSuppressDueToHELEAdvertisingLimit:v12];
  v16 = [(SAMonitoringSessionManager *)self shouldSuppressBudsAlertDueToCaseLeashedNotAdv:dCopy];
  if (v12)
  {
    v199 = v16;
    v200 = v15;
    if (![v12 isAppleAudioAccessory])
    {
      v197 = 0;
      v198 = 0;
LABEL_40:
      v192 = [(SAMonitoringSessionManager *)self getMoreSpecificSADeviceType:v12];
      deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v52 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];

      v196 = [contextCopy objectForKeyedSubscript:&unk_2877100C0];
      caLastStateTransition = [v52 caLastStateTransition];

      v54 = -1.0;
      v55 = -1.0;
      if (caLastStateTransition)
      {
        getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        caLastStateTransition2 = [v52 caLastStateTransition];
        [getCurrentTime timeIntervalSinceDate:caLastStateTransition2];
        v55 = v58;
      }

      caLastAlertDate = [(SAMonitoringSessionManager *)self caLastAlertDate];
      v60 = [caLastAlertDate objectForKeyedSubscript:dCopy];

      v187 = v52;
      if (v60)
      {
        getCurrentTime2 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        caLastAlertDate2 = [(SAMonitoringSessionManager *)self caLastAlertDate];
        v63 = [caLastAlertDate2 objectForKeyedSubscript:dCopy];
        [getCurrentTime2 timeIntervalSinceDate:v63];
        v54 = v64;

        v52 = v187;
      }

      if (recommendationCopy)
      {
        [recommendationCopy horizontalAccuracy];
        v66 = v65;
        caSeparationLocation = [v52 caSeparationLocation];

        if (caSeparationLocation)
        {
          caSeparationLocation2 = [v52 caSeparationLocation];
          [recommendationCopy distanceFromLocation:caSeparationLocation2];
          v70 = v69;

          v176 = v70;
          v178 = v70 - v66;
        }

        else
        {
          v178 = -1;
          v176 = -1;
        }

        lastLocation = [(SAMonitoringSessionManager *)self lastLocation];

        if (lastLocation)
        {
          v72 = objc_alloc(MEMORY[0x277CE41F8]);
          lastLocation2 = [(SAMonitoringSessionManager *)self lastLocation];
          [lastLocation2 latitude];
          v75 = v74;
          lastLocation3 = [(SAMonitoringSessionManager *)self lastLocation];
          [lastLocation3 longitude];
          v78 = [v72 initWithLatitude:v75 longitude:v77];

          [recommendationCopy distanceFromLocation:v78];
          v172 = v79;
          v174 = v79 - v66;
        }

        else
        {
          v172 = -1;
          v174 = -1;
        }
      }

      else
      {
        v178 = -1;
        v172 = -1;
        v174 = -1;
        v176 = -1;
        v66 = -1;
      }

      scanDate = [v14 scanDate];
      if (scanDate)
      {
        getCurrentTime3 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [getCurrentTime3 timeIntervalSinceDate:scanDate];
        v83 = v82;
      }

      else
      {
        v83 = -1.0;
      }

      rssi = [v14 rssi];
      v185 = scanDate;
      if (v14)
      {
        getBatteryState = [v14 getBatteryState];
      }

      else
      {
        getBatteryState = -1;
      }

      v180 = v66;
      deviceRecord2 = [(SAMonitoringSessionManager *)self deviceRecord];
      v85 = [deviceRecord2 getLatestNOAdvertisement:dCopy];
      scanDate2 = [v85 scanDate];

      v87 = -1.0;
      v88 = -1.0;
      if (scanDate2)
      {
        getCurrentTime4 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [getCurrentTime4 timeIntervalSinceDate:scanDate2];
        v88 = v90;
      }

      deviceRecord3 = [(SAMonitoringSessionManager *)self deviceRecord];
      v92 = [deviceRecord3 getLatestWildAdvertisement:dCopy];
      scanDate3 = [v92 scanDate];

      v94 = scanDate3;
      if (scanDate3)
      {
        getCurrentTime5 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [getCurrentTime5 timeIntervalSinceDate:scanDate3];
        v87 = v96;
      }

      deviceRecord4 = [(SAMonitoringSessionManager *)self deviceRecord];
      v98 = [deviceRecord4 getLastWithYouDate:dCopy];

      if (v98)
      {
        getCurrentTime6 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [getCurrentTime6 timeIntervalSinceDate:v98];
        v101 = v100;
      }

      else
      {
        v101 = -1.0;
      }

      v102 = [contextCopy objectForKeyedSubscript:&unk_2877100A8];
      if (v102)
      {
        v195 = [contextCopy objectForKeyedSubscript:&unk_2877100A8];
      }

      else
      {
        v195 = &unk_2877100D8;
      }

      v183 = v94;

      v103 = [contextCopy objectForKeyedSubscript:&unk_2877100F0];
      v193 = dCopy;
      v194 = v12;
      v186 = v14;
      v184 = scanDate2;
      v182 = v98;
      if (v103)
      {
        v104 = [contextCopy objectForKeyedSubscript:&unk_2877100F0];
        bOOLValue = [v104 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v106 = [(SAMonitoringSessionManager *)self checkIfAlertWasTriggeredAtHome:recommendationCopy isEarlyVehicularTrigger:bOOLValue];
      v226[0] = v196;
      v225[0] = @"lastAlertType";
      v225[1] = @"lastAlert";
      getCurrentTime7 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      v226[1] = getCurrentTime7;
      v225[2] = @"tLastWithYou";
      v167 = [MEMORY[0x277CCABB0] numberWithDouble:v101];
      v226[2] = v167;
      v226[3] = recommendationCopy;
      v225[3] = @"lLastWithYou";
      v225[4] = @"lastAlertIsBookendingTravel";
      v226[4] = v195;
      v225[5] = @"lastAlertIsEarlyVehicularTrigger";
      v164 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      v226[5] = v164;
      v225[6] = @"lastAlertVehicularState";
      v162 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAMonitoringSessionManager caCurrentVehicularState](self, "caCurrentVehicularState")}];
      v226[6] = v162;
      v225[7] = @"lastAlertIsVehicularBTHintOn";
      v160 = [MEMORY[0x277CCABB0] numberWithBool:{-[SAMonitoringSessionManager caIsVehicularBTHintOn](self, "caIsVehicularBTHintOn")}];
      v226[7] = v160;
      v225[8] = @"lastAlertIsClassicallyConnected";
      v158 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(v198)];
      v226[8] = v158;
      v225[9] = @"noCaseAdvSuppressed";
      v156 = [MEMORY[0x277CCABB0] numberWithBool:v198];
      v226[9] = v156;
      v225[10] = @"lastAlertBatteryState";
      v154 = [MEMORY[0x277CCABB0] numberWithInteger:getBatteryState];
      v226[10] = v154;
      v225[11] = @"closeToAnySafeLocations";
      v152 = [MEMORY[0x277CCABB0] numberWithBool:v202];
      v226[11] = v152;
      v225[12] = @"timeSinceLastAlert";
      v150 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
      v226[12] = v150;
      v225[13] = @"triggeredAtHome";
      v107 = [MEMORY[0x277CCABB0] numberWithBool:v106];
      v226[13] = v107;
      v225[14] = @"lastAlertRssiValue";
      v108 = [MEMORY[0x277CCABB0] numberWithInteger:rssi];
      v226[14] = v108;
      v225[15] = @"travelingSuppressed";
      [MEMORY[0x277CCABB0] numberWithBool:v200];
      v109 = v203 = self;
      v226[15] = v109;
      v225[16] = @"criticalLowBatterySuppressed";
      v110 = [MEMORY[0x277CCABB0] numberWithBool:v197];
      v226[16] = v110;
      v225[17] = @"HELEAdvertisingLimitSuppressed";
      v111 = [MEMORY[0x277CCABB0] numberWithBool:v201];
      v226[17] = v111;
      v225[18] = @"caseLeashedNotAdvSuppressed";
      v112 = [MEMORY[0x277CCABB0] numberWithBool:v199];
      v226[18] = v112;
      v171 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v226 forKeys:v225 count:19];

      deviceUUIDtoAlertContext = [(SAMonitoringSessionManager *)v203 deviceUUIDtoAlertContext];
      [deviceUUIDtoAlertContext setObject:v171 forKeyedSubscript:v193];

      v224[0] = v196;
      v223[0] = @"alertType";
      v223[1] = @"itemType";
      v170 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v192];
      v224[1] = v170;
      v223[2] = @"productID";
      v168 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v194, "productId")}];
      v224[2] = v168;
      v223[3] = @"vendorId";
      v165 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v194, "vendorId")}];
      v224[3] = v165;
      v223[4] = @"tSinceLastTransition";
      v163 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
      v224[4] = v163;
      v223[5] = @"tSincePriorAlert";
      v161 = [MEMORY[0x277CCABB0] numberWithDouble:v54];
      v224[5] = v161;
      v223[6] = @"radius";
      v181 = [MEMORY[0x277CCABB0] numberWithInt:v180];
      v224[6] = v181;
      v223[7] = @"t1centerDistance";
      v177 = [MEMORY[0x277CCABB0] numberWithInt:v176];
      v224[7] = v177;
      v223[8] = @"t1boundaryDistance";
      v179 = [MEMORY[0x277CCABB0] numberWithInt:v178];
      v224[8] = v179;
      v223[9] = @"t2centerDistance";
      v173 = [MEMORY[0x277CCABB0] numberWithInt:v172];
      v224[9] = v173;
      v223[10] = @"t2boundaryDistance";
      v175 = [MEMORY[0x277CCABB0] numberWithInt:v174];
      v224[10] = v175;
      v223[11] = @"lastUpdateAge";
      v159 = [MEMORY[0x277CCABB0] numberWithDouble:v83];
      v224[11] = v159;
      v223[12] = @"lastAdvRSSI";
      v189 = [MEMORY[0x277CCABB0] numberWithInteger:rssi];
      v224[12] = v189;
      v223[13] = @"airplaneEnabled";
      v157 = [MEMORY[0x277CCABB0] numberWithBool:{-[SAMonitoringSessionManager isInAirplaneMode](v203, "isInAirplaneMode")}];
      v224[13] = v157;
      v224[14] = v195;
      v223[14] = @"isBookendingTravel";
      v223[15] = @"isEarlyVehicularTrigger";
      v166 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
      v224[15] = v166;
      v223[16] = @"vehicularState";
      v155 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SAMonitoringSessionManager caCurrentVehicularState](v203, "caCurrentVehicularState")}];
      v224[16] = v155;
      v223[17] = @"isVehicularBTHintOn";
      v153 = [MEMORY[0x277CCABB0] numberWithBool:{-[SAMonitoringSessionManager caIsVehicularBTHintOn](v203, "caIsVehicularBTHintOn")}];
      v224[17] = v153;
      v223[18] = @"lastNOAdvertisementAge";
      v151 = [MEMORY[0x277CCABB0] numberWithDouble:v88];
      v224[18] = v151;
      v223[19] = @"lastWildAdvertisementAge";
      v149 = [MEMORY[0x277CCABB0] numberWithDouble:v87];
      v224[19] = v149;
      v223[20] = @"classicallyConnected";
      v148 = [MEMORY[0x277CCABB0] numberWithBool:HIDWORD(v198)];
      v224[20] = v148;
      v223[21] = @"noCaseAdvSuppressed";
      v147 = [MEMORY[0x277CCABB0] numberWithBool:v198];
      v224[21] = v147;
      v223[22] = @"lastBatteryStateBeforeAlert";
      v146 = [MEMORY[0x277CCABB0] numberWithInteger:getBatteryState];
      v224[22] = v146;
      v223[23] = @"closeToAnySafeLocations";
      v114 = [MEMORY[0x277CCABB0] numberWithBool:v202];
      v224[23] = v114;
      v223[24] = @"systemVersion";
      systemVersion = [v194 systemVersion];
      v116 = systemVersion;
      v117 = @"unknown";
      if (systemVersion)
      {
        v117 = systemVersion;
      }

      v224[24] = v117;
      v223[25] = @"isHome";
      v118 = [MEMORY[0x277CCABB0] numberWithBool:v106];
      v224[25] = v118;
      v223[26] = @"hasSurfacedInCurrentTravelingSession";
      v119 = [MEMORY[0x277CCABB0] numberWithBool:v200];
      v224[26] = v119;
      v223[27] = @"criticalLowBatterySuppressed";
      v120 = [MEMORY[0x277CCABB0] numberWithBool:v197];
      v224[27] = v120;
      v223[28] = @"HELEAdvertisingLimit";
      v121 = [MEMORY[0x277CCABB0] numberWithBool:v201];
      v224[28] = v121;
      v223[29] = @"caseLeashedNotAdvSuppressed";
      v122 = [MEMORY[0x277CCABB0] numberWithBool:v199];
      v224[29] = v122;
      v191 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v224 forKeys:v223 count:30];

      v12 = v194;
      dCopy = v193;

      p_isa = &v203->super.isa;
      analytics = [(SAMonitoringSessionManager *)v203 analytics];
      [analytics submitEvent:@"com.apple.clx.alert.alertEvent" content:v191];

      analytics2 = [(SAMonitoringSessionManager *)v203 analytics];
      v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v192];
      [analytics2 submitAlertRateEvent:v126 alertType:v196];

      v14 = v186;
      if (((v197 | v200 | v198 | HIDWORD(v198) | v202 | (v201 || v199)) & 1) == 0)
      {
        v127 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v128 = v127;
          identifier = [v194 identifier];
          name = [v194 name];
          v131 = [contextCopy objectForKeyedSubscript:&unk_2877100C0];
          integerValue = [v131 integerValue];
          v133 = [(SAMonitoringSessionManager *)v203 getMoreSpecificSADeviceType:v194];
          systemVersion2 = [v194 systemVersion];
          *buf = 68290307;
          v210 = 0;
          v211 = 2082;
          v212 = "";
          v213 = 2113;
          v214 = identifier;
          v215 = 2113;
          v216 = name;
          v217 = 2049;
          v218 = integerValue;
          v219 = 2049;
          v220 = v133;
          v221 = 2113;
          v222 = systemVersion2;
          _os_log_impl(&dword_2656EA000, v128, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa notify separation, uuid:%{private}@, name:%{private}@, type:%{private}ld, deviceType:%{private}ld, systemVersion:%{private}@}", buf, 0x44u);

          v12 = v194;
          p_isa = &v203->super.isa;
        }

        getCurrentTime8 = [p_isa[2] getCurrentTime];
        caLastAlertDate3 = [p_isa caLastAlertDate];
        [caLastAlertDate3 setObject:getCurrentTime8 forKeyedSubscript:v193];

        v137 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v12, 0}];
        v204 = 0u;
        v205 = 0u;
        v206 = 0u;
        v207 = 0u;
        v138 = p_isa[6];
        v139 = [v138 countByEnumeratingWithState:&v204 objects:v208 count:16];
        if (v139)
        {
          v140 = v139;
          v141 = *v205;
          do
          {
            for (i = 0; i != v140; ++i)
            {
              if (*v205 != v141)
              {
                objc_enumerationMutation(v138);
              }

              v143 = *(*(&v204 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v143 notifySeparationsForDevices:v137 withLocation:recommendationCopy withContext:contextCopy];
              }
            }

            v140 = [v138 countByEnumeratingWithState:&v204 objects:v208 count:16];
          }

          while (v140);
        }

        dCopy = v193;
        v12 = v194;
        v14 = v186;
      }

      goto LABEL_86;
    }

    macAddress = [v12 macAddress];
    v18 = [(SAMonitoringSessionManager *)self checkInEarStatus:macAddress];

    v19 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289283;
      v210 = 0;
      v211 = 2082;
      v212 = "";
      v213 = 2049;
      v214 = v18;
      _os_log_impl(&dword_2656EA000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAMonitoringSessionManager in ear status before notifying, state:%{private}ld}", buf, 0x1Cu);
    }

    switch(v18)
    {
      case 1:
        name2 = [v12 name];
        v29 = [name2 isEqualToString:@"left"];

        if (v29)
        {
          goto LABEL_14;
        }

        break;
      case 2:
        name3 = [v12 name];
        v23 = [name3 isEqualToString:@"right"];

        if (v23)
        {
          goto LABEL_14;
        }

        break;
      case 3:
        name4 = [v12 name];
        if ([name4 isEqualToString:@"left"])
        {

LABEL_14:
          v24 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v25 = v24;
            identifier2 = [v12 identifier];
            uUIDString = [identifier2 UUIDString];
            *buf = 68289283;
            v210 = 0;
            v211 = 2082;
            v212 = "";
            v213 = 2113;
            v214 = uUIDString;
            _os_log_impl(&dword_2656EA000, v25, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa separation for classically connected device, device:%{private}@}", buf, 0x1Cu);
          }

          HIDWORD(v198) = 1;
LABEL_19:
          if (([v12 isAirPodsCase] & 1) == 0 && !objc_msgSend(v12, "isBudForAirPodsBLECase"))
          {
            LODWORD(v198) = 0;
            if (v14)
            {
              goto LABEL_35;
            }

            goto LABEL_39;
          }

          deviceRecord5 = [(SAMonitoringSessionManager *)self deviceRecord];
          v31 = [deviceRecord5 getLatestCaseAdvertisementDate:dCopy];

          if (v31)
          {
            getCurrentTime9 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            [getCurrentTime9 timeIntervalSinceDate:v31];
            v34 = v33;

            v35 = TASALog;
            v36 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
            if (v34 <= 129600.0)
            {
              if (v36)
              {
                v43 = v35;
                identifier3 = [v12 identifier];
                [identifier3 UUIDString];
                v46 = v45 = self;
                *buf = 68289283;
                v210 = 0;
                v211 = 2082;
                v212 = "";
                v213 = 2113;
                v214 = v46;
                _os_log_impl(&dword_2656EA000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa separation for device with recent case advertisement, device:%{private}@}", buf, 0x1Cu);

                self = v45;
              }

              LODWORD(v198) = 0;
LABEL_34:

              if (v14)
              {
LABEL_35:
                if ([v14 getBatteryState] == 3)
                {
                  v47 = TASALog;
                  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
                  {
                    v48 = v47;
                    identifier4 = [v12 identifier];
                    uUIDString2 = [identifier4 UUIDString];
                    *buf = 68289283;
                    v210 = 0;
                    v211 = 2082;
                    v212 = "";
                    v213 = 2113;
                    v214 = uUIDString2;
                    _os_log_impl(&dword_2656EA000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa separation for device with critical low battery level - suppressing alert, device:%{private}@}", buf, 0x1Cu);
                  }

                  v197 = 1;
                  goto LABEL_40;
                }
              }

LABEL_39:
              v197 = 0;
              goto LABEL_40;
            }

            if (v36)
            {
              v37 = v35;
              identifier5 = [v12 identifier];
              [identifier5 UUIDString];
              v40 = v39 = self;
              *buf = 68289283;
              v210 = 0;
              v211 = 2082;
              v212 = "";
              v213 = 2113;
              v214 = v40;
              v41 = "{msg%{public}.0s:#sa separation for device with too old case advertisement - suppressing alert, device:%{private}@}";
LABEL_27:
              _os_log_impl(&dword_2656EA000, v37, OS_LOG_TYPE_DEFAULT, v41, buf, 0x1Cu);

              self = v39;
            }
          }

          else
          {
            v42 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
            {
              v37 = v42;
              identifier5 = [v12 identifier];
              [identifier5 UUIDString];
              v40 = v39 = self;
              *buf = 68289283;
              v210 = 0;
              v211 = 2082;
              v212 = "";
              v213 = 2113;
              v214 = v40;
              v41 = "{msg%{public}.0s:#sa separation for device with no recent case advertisement - suppressing alert, device:%{private}@}";
              goto LABEL_27;
            }
          }

          LODWORD(v198) = 1;
          goto LABEL_34;
        }

        name5 = [v12 name];
        v145 = [name5 isEqualToString:@"right"];

        if (v145)
        {
          goto LABEL_14;
        }

        break;
    }

    HIDWORD(v198) = 0;
    goto LABEL_19;
  }

  v21 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289283;
    v210 = 0;
    v211 = 2082;
    v212 = "";
    v213 = 2113;
    v214 = dCopy;
    _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#sa Service tried to notify with no corresponding device, uuid:%{private}@}", buf, 0x1Cu);
  }

LABEL_86:
}

- (void)handleGeofenceExitedForDeviceUUID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([(SAMonitoringSessionManager *)self standby])
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289026;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager travel exit while in standby}", buf, 0x12u);
    }

    [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:2];
  }

  else
  {
    clock = [(SAMonitoringSessionManager *)self clock];
    getCurrentTime = [clock getCurrentTime];
    deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v9 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];
    [v9 setTravelingGeofenceExitDate:getCurrentTime];

    [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:4];
    if ([(SAMonitoringSessionManager *)self _isOnlyMonitoringDisconnectedCompanionDevice])
    {
      v10 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289026;
        v15 = 0;
        v16 = 2082;
        v17 = "";
        _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager is only monitoring disconnected companion device, skipping force update all WithYouStatus}", buf, 0x12u);
      }

      [(SAMonitoringSessionManager *)self didForceUpdateWithYouStatus];
    }

    else
    {
      withYouDetector = [(SAMonitoringSessionManager *)self withYouDetector];
      v13 = dCopy;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
      [withYouDetector forceUpdateWithYouStatusToFindDevices:v12 withContext:3];
    }
  }
}

- (BOOL)_isOnlyMonitoringDisconnectedCompanionDevice
{
  v25 = *MEMORY[0x277D85DE8];
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  allKeys = [deviceUUIDtoMonitoringSession allKeys];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10, v20];

        if (v11)
        {
          deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
          v13 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v10];

          state = [v13 state];
          if (state <= 5 && ((1 << state) & 0x3A) != 0)
          {
            v16 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];
            deviceType = [v16 deviceType];

            if (deviceType != 8)
            {

              v18 = 0;
              goto LABEL_17;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (BOOL)addTravelFenceForDevice:(id)device
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  if (!v6)
  {
    v22 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      v28 = 68289283;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2113;
      v33 = deviceCopy;
      v23 = "{msg%{public}.0s:#SAMonitoringSessionManager unable to set while traveling fence due to no session, uuid:%{private}@}";
      v24 = v22;
      v25 = OS_LOG_TYPE_FAULT;
LABEL_8:
      _os_log_impl(&dword_2656EA000, v24, v25, v23, &v28, 0x1Cu);
    }

LABEL_9:
    v21 = 0;
    goto LABEL_10;
  }

  deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v8 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:deviceCopy];
  firstNotWithYouLocation = [v8 firstNotWithYouLocation];

  if (!firstNotWithYouLocation)
  {
    lastLocation = self->_lastLocation;
    if (lastLocation)
    {
      firstNotWithYouLocation = lastLocation;
      goto LABEL_5;
    }

    v27 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v28 = 68289283;
      v29 = 0;
      v30 = 2082;
      v31 = "";
      v32 = 2113;
      v33 = deviceCopy;
      v23 = "{msg%{public}.0s:#SAMonitoringSessionManager unable to set while traveling fence due to no last location, uuid:%{private}@}";
      v24 = v27;
      v25 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

LABEL_5:
  [(TALocationLite *)firstNotWithYouLocation latitude];
  v12 = v11;
  [(TALocationLite *)firstNotWithYouLocation longitude];
  v14 = v13;
  v15 = objc_alloc(MEMORY[0x277CBFBC8]);
  uUIDString = [deviceCopy UUIDString];
  v17 = [v15 initWithCenter:uUIDString radius:v12 identifier:{v14, 100.0}];

  deviceUUIDtoMonitoringSession3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v19 = [deviceUUIDtoMonitoringSession3 objectForKeyedSubscript:deviceCopy];
  [v19 setGeofence:v17];

  fenceRequestServicer = [(SAMonitoringSessionManager *)self fenceRequestServicer];
  [fenceRequestServicer addGeofence:v17];

  v21 = 1;
LABEL_10:

  return v21;
}

- (void)removeTravelFenceForDevice:(id)device
{
  v22 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  if (v6)
  {
    deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v8 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:deviceCopy];
    geofence = [v8 geofence];

    if (geofence)
    {
      fenceRequestServicer = [(SAMonitoringSessionManager *)self fenceRequestServicer];
      deviceUUIDtoMonitoringSession3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v12 = [deviceUUIDtoMonitoringSession3 objectForKeyedSubscript:deviceCopy];
      geofence2 = [v12 geofence];
      [fenceRequestServicer removeGeofence:geofence2];
    }

    deviceUUIDtoMonitoringSession4 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v15 = [deviceUUIDtoMonitoringSession4 objectForKeyedSubscript:deviceCopy];
    [v15 setGeofence:0];
  }

  else
  {
    v16 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      v17[0] = 68289283;
      v17[1] = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2113;
      v21 = deviceCopy;
      _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SAMonitoringSessionManager unable to remove while traveling fence due to no session, uuid:%{private}@}", v17, 0x1Cu);
    }
  }
}

- (void)storeSeparationLocation:(id)location
{
  locationCopy = location;
  lastLocation = [(SAMonitoringSessionManager *)self lastLocation];

  if (lastLocation)
  {
    v5 = objc_alloc(MEMORY[0x277CE41F8]);
    lastLocation2 = [(SAMonitoringSessionManager *)self lastLocation];
    [lastLocation2 latitude];
    v8 = v7;
    lastLocation3 = [(SAMonitoringSessionManager *)self lastLocation];
    [lastLocation3 longitude];
    v11 = [v5 initWithLatitude:v8 longitude:v10];
    deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v13 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:locationCopy];
    [v13 setCaSeparationLocation:v11];
  }
}

- (void)notifyWhileTraveling:(id)traveling isBookendingTravel:(BOOL)travel
{
  travelCopy = travel;
  v32 = *MEMORY[0x277D85DE8];
  travelingCopy = traveling;
  if ([(SAMonitoringSessionManager *)self standby])
  {
    v7 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v26 = 68289026;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager standby notify}", &v26, 0x12u);
    }

    [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:travelingCopy];
    goto LABEL_16;
  }

  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v9 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:travelingCopy];

  if (v9)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v10 setObject:&unk_2877100F0 forKeyedSubscript:&unk_2877100C0];
    v11 = [MEMORY[0x277CCABB0] numberWithBool:travelCopy];
    [v10 setObject:v11 forKeyedSubscript:&unk_2877100A8];

    v12 = [(SADeviceRecord *)self->_deviceRecord getLastWithYouLocation:travelingCopy];
    if (!v12)
    {
      deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v14 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:travelingCopy];
      geofence = [v14 geofence];

      if (geofence)
      {
        v12 = geofence;
      }

      else
      {
        lastLocation = self->_lastLocation;
        if (!lastLocation)
        {
          v25 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
          {
            v26 = 68289026;
            v27 = 0;
            v28 = 2082;
            v29 = "";
            _os_log_impl(&dword_2656EA000, v25, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SAMonitoringSessionManager notifyWhileTraveling with nil location}", &v26, 0x12u);
          }

          goto LABEL_15;
        }

        [(TALocationLite *)lastLocation latitude];
        v19 = v18;
        [(TALocationLite *)self->_lastLocation longitude];
        v21 = v20;
        v22 = objc_alloc(MEMORY[0x277CBFBC8]);
        uUIDString = [travelingCopy UUIDString];
        v12 = [v22 initWithCenter:uUIDString radius:v19 identifier:{v21, 100.0}];
      }
    }

    v24 = [(SAMonitoringSessionManager *)self createLocationFromCircularRegion:v12 forDevice:travelingCopy withContext:2];
    [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:travelingCopy];
    [(SAMonitoringSessionManager *)self handleSeparationForDeviceUUID:travelingCopy withSafeLocationRecommendation:v24 context:v10];

LABEL_15:
    goto LABEL_16;
  }

  v16 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
  {
    v26 = 68289283;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2113;
    v31 = travelingCopy;
    _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SAMonitoringSessionManager unable to notify while traveling due to no session, uuid:%{private}@}", &v26, 0x1Cu);
  }

LABEL_16:
}

- (void)notifyWhenLeftBehind:(id)behind
{
  v25 = *MEMORY[0x277D85DE8];
  behindCopy = behind;
  if ([(SAMonitoringSessionManager *)self standby])
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 68289026;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v6 = "{msg%{public}.0s:#SAMonitoringSessionManager standby notify}";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 18;
LABEL_13:
      _os_log_impl(&dword_2656EA000, v7, v8, v6, &v19, v9);
    }
  }

  else
  {
    deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v11 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:behindCopy];

    if (v11)
    {
      v12 = [(SADeviceRecord *)self->_deviceRecord getLastWithYouLocation:behindCopy];
      if (!v12)
      {
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v14 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:behindCopy];
        scenarioClassifier = [v14 scenarioClassifier];
        lastUnsafeLocation = [scenarioClassifier lastUnsafeLocation];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = lastUnsafeLocation;
        }

        else
        {
          v17 = 0;
        }

        v12 = v17;
      }

      [(SAMonitoringSessionManager *)self notifyLeftBehind:behindCopy withRegion:v12 isEarlyVehicularTrigger:0];
    }

    else
    {
      v18 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        v19 = 68289283;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2113;
        v24 = behindCopy;
        v6 = "{msg%{public}.0s:#SAMonitoringSessionManager unable to notify when left behind due to no session, uuid:%{private}@}";
        v7 = v18;
        v8 = OS_LOG_TYPE_FAULT;
        v9 = 28;
        goto LABEL_13;
      }
    }
  }
}

- (void)notifyLeftBehind:(id)behind withRegion:(id)region isEarlyVehicularTrigger:(BOOL)trigger
{
  triggerCopy = trigger;
  v34 = *MEMORY[0x277D85DE8];
  behindCopy = behind;
  regionCopy = region;
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 setObject:&unk_2877100A8 forKeyedSubscript:&unk_2877100C0];
  v11 = [MEMORY[0x277CCABB0] numberWithBool:triggerCopy];
  [v10 setObject:v11 forKeyedSubscript:&unk_2877100F0];

  if (regionCopy)
  {
    goto LABEL_10;
  }

  previousVisitOrLOIEvent = [(SAMonitoringSessionManager *)self previousVisitOrLOIEvent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  previousVisitOrLOIEvent2 = [(SAMonitoringSessionManager *)self previousVisitOrLOIEvent];
  if (isKindOfClass)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    uUIDString = [behindCopy UUIDString];
    v17 = [v15 initWithFormat:@"unsafe_%@", uUIDString];

    [previousVisitOrLOIEvent2 horizontalAccuracy];
    v18 = objc_alloc(MEMORY[0x277CBFBC8]);
    [previousVisitOrLOIEvent2 coordinate];
    regionCopy = [v18 initWithCenter:v17 radius:? identifier:?];
  }

  else
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
      goto LABEL_12;
    }

    previousVisitOrLOIEvent2 = [(SAMonitoringSessionManager *)self previousVisitOrLOIEvent];
    [previousVisitOrLOIEvent2 latitude];
    v21 = v20;
    [previousVisitOrLOIEvent2 longitude];
    v23 = CLLocationCoordinate2DMake(v21, v22);
    [previousVisitOrLOIEvent2 horizontalAccuracy];
    if (v24 >= 100.0)
    {
      v25 = v24;
    }

    else
    {
      v25 = 100.0;
    }

    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    uUIDString2 = [behindCopy UUIDString];
    v17 = [v26 initWithFormat:@"unsafe_%@", uUIDString2];

    regionCopy = [objc_alloc(MEMORY[0x277CBFBC8]) initWithCenter:v17 radius:v23.latitude identifier:{v23.longitude, v25}];
    [regionCopy setGeoReferenceFrame:{objc_msgSend(previousVisitOrLOIEvent2, "referenceFrame")}];
  }

  if (regionCopy)
  {
LABEL_10:
    v28 = [(SAMonitoringSessionManager *)self createLocationFromCircularRegion:regionCopy forDevice:behindCopy withContext:1];
    [(SAMonitoringSessionManager *)self handleSeparationForDeviceUUID:behindCopy withSafeLocationRecommendation:v28 context:v10];

    goto LABEL_11;
  }

LABEL_12:
  v29 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289026;
    v31 = 0;
    v32 = 2082;
    v33 = "";
    _os_log_impl(&dword_2656EA000, v29, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SAMonitoringSessionManager notifyWhenLeftBehind without suggesting location}", buf, 0x12u);
  }

LABEL_11:
}

- (void)notifyEarlyLeftBehind:(id)behind
{
  v25 = *MEMORY[0x277D85DE8];
  behindCopy = behind;
  if ([(SAMonitoringSessionManager *)self standby])
  {
    v5 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 68289026;
      v20 = 0;
      v21 = 2082;
      v22 = "";
      v6 = "{msg%{public}.0s:#SAMonitoringSessionManager standby notify early}";
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      v9 = 18;
LABEL_13:
      _os_log_impl(&dword_2656EA000, v7, v8, v6, &v19, v9);
    }
  }

  else
  {
    deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v11 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:behindCopy];

    if (v11)
    {
      v12 = [(SADeviceRecord *)self->_deviceRecord getLastWithYouLocation:behindCopy];
      if (!v12)
      {
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v14 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:behindCopy];
        scenarioClassifier = [v14 scenarioClassifier];
        currentUnsafeLocation = [scenarioClassifier currentUnsafeLocation];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = currentUnsafeLocation;
        }

        else
        {
          v17 = 0;
        }

        v12 = v17;
      }

      [(SAMonitoringSessionManager *)self notifyLeftBehind:behindCopy withRegion:v12 isEarlyVehicularTrigger:1];
    }

    else
    {
      v18 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
      {
        v19 = 68289283;
        v20 = 0;
        v21 = 2082;
        v22 = "";
        v23 = 2113;
        v24 = behindCopy;
        v6 = "{msg%{public}.0s:#SAMonitoringSessionManager unable to notify early left behind due to no session, uuid:%{private}@}";
        v7 = v18;
        v8 = OS_LOG_TYPE_FAULT;
        v9 = 28;
        goto LABEL_13;
      }
    }
  }
}

- (id)createLocationFromCircularRegion:(id)region forDevice:(id)device withContext:(unint64_t)context
{
  v31 = *MEMORY[0x277D85DE8];
  regionCopy = region;
  deviceCopy = device;
  if (!regionCopy || ([regionCopy radius], v11 = 75.0, v10 >= 75.0) && (v11 = v10, v10 <= 0.0) || (v12 = objc_alloc(MEMORY[0x277CE41F8]), objc_msgSend(regionCopy, "center"), v14 = v13, v16 = v15, -[SATimeServiceProtocol getCurrentTime](self->_clock, "getCurrentTime"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v12, "initWithCoordinate:altitude:horizontalAccuracy:verticalAccuracy:timestamp:referenceFrame:", v17, objc_msgSend(regionCopy, "geoReferenceFrame"), v14, v16, 0.0, v11, -1.0), v17, !v18))
  {
    v19 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v20 = MEMORY[0x277CCABB0];
      v21 = v19;
      v22 = [v20 numberWithUnsignedInteger:context];
      v24[0] = 68289539;
      v24[1] = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = deviceCopy;
      v29 = 2113;
      v30 = v22;
      _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager unable to create/recommend location, uuid:%{private}@, context:%{private}@}", v24, 0x26u);
    }

    v18 = 0;
  }

  return v18;
}

- (void)addDevice:(id)device isLastDeviceEvent:(BOOL)event
{
  eventCopy = event;
  v23 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  devices = [(SAMonitoringSessionManager *)self devices];
  [devices setObject:deviceCopy forKeyedSubscript:identifier];

  v9 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    name = [deviceCopy name];
    v16[0] = 68289539;
    v16[1] = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2113;
    v20 = identifier;
    v21 = 2113;
    v22 = name;
    _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager new device, uuid:%{private}@, name:%{private}@}", v16, 0x26u);
  }

  v12 = [SADeviceUpdateEvent alloc];
  getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  v14 = [(SADeviceUpdateEvent *)v12 initWithDevice:deviceCopy eventType:0 lastEvent:eventCopy date:getCurrentTime];

  deviceRecord = [(SAMonitoringSessionManager *)self deviceRecord];
  [deviceRecord ingestTAEvent:v14];

  if ([(SAMonitoringSessionManager *)self enabled])
  {
    [(SAMonitoringSessionManager *)self createMonitoringDevice:identifier];
  }
}

- (void)removeDeviceWithUUID:(id)d isLastDeviceEvent:(BOOL)event
{
  eventCopy = event;
  v26 = *MEMORY[0x277D85DE8];
  dCopy = d;
  devices = [(SAMonitoringSessionManager *)self devices];
  v8 = [devices objectForKeyedSubscript:dCopy];

  v9 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    name = [v8 name];
    v19[0] = 68289539;
    v19[1] = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2113;
    v23 = dCopy;
    v24 = 2113;
    v25 = name;
    _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager remove device, uuid:%{private}@, name:%{private}@}", v19, 0x26u);
  }

  [(SAMonitoringSessionManager *)self removeAndStopSafeLocationsForDeviceUUID:dCopy];
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v13 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];

  if (v13)
  {
    [(SAMonitoringSessionManager *)self cancelMonitoringDevice:dCopy];
  }

  devices2 = [(SAMonitoringSessionManager *)self devices];
  [devices2 setObject:0 forKeyedSubscript:dCopy];

  v15 = [SADeviceUpdateEvent alloc];
  getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  v17 = [(SADeviceUpdateEvent *)v15 initWithDevice:v8 eventType:1 lastEvent:eventCopy date:getCurrentTime];

  deviceRecord = [(SAMonitoringSessionManager *)self deviceRecord];
  [deviceRecord ingestTAEvent:v17];
}

- (void)setSafeLocations:(id)locations forDeviceUUID:(id)d
{
  v89 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  dCopy = d;
  v51 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  deviceUUIDtoSafeLocationUUIDs = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  v8 = [deviceUUIDtoSafeLocationUUIDs objectForKeyedSubscript:dCopy];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v72 objects:v88 count:16];
  if (v9)
  {
    v11 = v9;
    v12 = *v73;
    *&v10 = 138477827;
    v50 = v10;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v73 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v72 + 1) + 8 * i);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v15 = locationsCopy;
        v16 = [v15 countByEnumeratingWithState:&v68 objects:v87 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v69;
          while (2)
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v69 != v18)
              {
                objc_enumerationMutation(v15);
              }

              if ([*(*(&v68 + 1) + 8 * j) isEqual:{v14, v50}])
              {

                goto LABEL_18;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v68 objects:v87 count:16];
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        v20 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v20;
          uUIDString = [v14 UUIDString];
          *buf = v50;
          *v77 = uUIDString;
          _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_DEFAULT, "#SAMonitoringSessionManager found removed location, for deviceId, %{private}@", buf, 0xCu);
        }

        [v51 addObject:{v14, v50}];
LABEL_18:
        ;
      }

      v11 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
    }

    while (v11);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v23 = v51;
  v24 = [v23 countByEnumeratingWithState:&v64 objects:v86 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v65;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v65 != v26)
        {
          objc_enumerationMutation(v23);
        }

        [(SAMonitoringSessionManager *)self stopSafeLocation:*(*(&v64 + 1) + 8 * k) forDevice:dCopy];
      }

      v25 = [v23 countByEnumeratingWithState:&v64 objects:v86 count:16];
    }

    while (v25);
  }

  obja = v23;

  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v55 = locationsCopy;
  v29 = [v55 countByEnumeratingWithState:&v60 objects:v85 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v61;
    do
    {
      v32 = 0;
      do
      {
        if (*v61 != v31)
        {
          objc_enumerationMutation(v55);
        }

        v33 = *(*(&v60 + 1) + 8 * v32);
        deviceUUIDtoSafeLocationUUIDs2 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
        v35 = [deviceUUIDtoSafeLocationUUIDs2 objectForKeyedSubscript:dCopy];
        v36 = [v35 containsObject:v33];

        if ((v36 & 1) == 0)
        {
          safeLocations = [(SAMonitoringSessionManager *)self safeLocations];
          v38 = [safeLocations objectForKeyedSubscript:v33];

          if (v38)
          {
            [v28 addObject:v33];
          }

          else
          {
            v39 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
            {
              [(SAMonitoringSessionManager *)v83 setSafeLocations:v39 forDeviceUUID:dCopy, &v84];
            }
          }
        }

        ++v32;
      }

      while (v30 != v32);
      v30 = [v55 countByEnumeratingWithState:&v60 objects:v85 count:16];
    }

    while (v30);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v40 = v28;
  v41 = [v40 countByEnumeratingWithState:&v56 objects:v82 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v57;
    do
    {
      for (m = 0; m != v42; ++m)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v40);
        }

        [(SAMonitoringSessionManager *)self startSafeLocation:*(*(&v56 + 1) + 8 * m) forDevice:dCopy];
      }

      v42 = [v40 countByEnumeratingWithState:&v56 objects:v82 count:16];
    }

    while (v42);
  }

  v45 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v46 = v45;
    v47 = [v40 count];
    *buf = 68289539;
    *v77 = 0;
    *&v77[4] = 2082;
    *&v77[6] = "";
    v78 = 2113;
    v79 = dCopy;
    v80 = 2049;
    v81 = v47;
    _os_log_impl(&dword_2656EA000, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager update safe locations, device:%{private}@, count:%{private}ld}", buf, 0x26u);
  }

  v48 = [v55 copy];
  deviceUUIDtoSafeLocationUUIDs3 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  [deviceUUIDtoSafeLocationUUIDs3 setObject:v48 forKeyedSubscript:dCopy];
}

- (void)removeSafeLocation:(id)location forDeviceUUID:(id)d
{
  locationCopy = location;
  dCopy = d;
  if (locationCopy)
  {
    if (dCopy)
    {
      deviceUUIDtoSafeLocationUUIDs = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
      v8 = [deviceUUIDtoSafeLocationUUIDs objectForKeyedSubscript:dCopy];
      v9 = [v8 containsObject:locationCopy];

      if (v9)
      {
        v10 = MEMORY[0x277CBEB58];
        deviceUUIDtoSafeLocationUUIDs2 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
        v12 = [deviceUUIDtoSafeLocationUUIDs2 objectForKeyedSubscript:dCopy];
        v13 = [v10 setWithSet:v12];

        deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v15 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];

        v16 = locationCopy;
        if (v15)
        {
          [(SAMonitoringSessionManager *)self stopSafeLocation:locationCopy forDevice:dCopy];
          v16 = locationCopy;
        }

        [v13 removeObject:v16];
        deviceUUIDtoSafeLocationUUIDs3 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
        [deviceUUIDtoSafeLocationUUIDs3 setObject:v13 forKeyedSubscript:dCopy];
      }
    }
  }
}

- (void)removeAndStopSafeLocationsForDeviceUUID:(id)d
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  deviceUUIDtoSafeLocationUUIDs = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  v6 = [deviceUUIDtoSafeLocationUUIDs objectForKeyedSubscript:dCopy];
  allObjects = [v6 allObjects];

  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v9 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];

  if (v9)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = allObjects;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v10);
          }

          [(SAMonitoringSessionManager *)self stopSafeLocation:*(*(&v16 + 1) + 8 * v14++) forDevice:dCopy, v16];
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  deviceUUIDtoSafeLocationUUIDs2 = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  [deviceUUIDtoSafeLocationUUIDs2 setObject:0 forKeyedSubscript:dCopy];
}

- (void)startSafeLocation:(id)location forDevice:(id)device
{
  v35 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  deviceCopy = device;
  safeLocations = [(SAMonitoringSessionManager *)self safeLocations];
  v9 = [safeLocations objectForKeyedSubscript:locationCopy];

  if (!v9)
  {
    v20 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v25 = 68289539;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2113;
    v30 = locationCopy;
    v31 = 2113;
    v32 = deviceCopy;
    v21 = "{msg%{public}.0s:#SAMonitoringSessionManager start location error, location:%{private}@, device:%{private}@}";
    v22 = v20;
    v23 = 38;
LABEL_10:
    _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_ERROR, v21, &v25, v23);
    goto LABEL_11;
  }

  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v11 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  if (!v11)
  {
    v24 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v25 = 68289283;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2113;
    v30 = deviceCopy;
    v21 = "{msg%{public}.0s:#SAMonitoringSessionManager start location device error, device:%{private}@}";
    v22 = v24;
    v23 = 28;
    goto LABEL_10;
  }

  v12 = [SASafeLocationUpdateEvent alloc];
  getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  v14 = [(SASafeLocationUpdateEvent *)v12 initWithSafeLocation:v9 eventType:0 lastEvent:1 date:getCurrentTime];

  v15 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v15;
    v25 = 68289795;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2113;
    v30 = locationCopy;
    v31 = 2113;
    v32 = deviceCopy;
    v33 = 2049;
    referenceFrame = [v9 referenceFrame];
    _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager start location, location:%{private}@, device:%{private}@, refFrame:%{private}lu}", &v25, 0x30u);
  }

  deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v18 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:deviceCopy];
  scenarioClassifier = [v18 scenarioClassifier];
  [scenarioClassifier ingestTAEvent:v14];

LABEL_11:
}

- (void)stopSafeLocation:(id)location forDevice:(id)device
{
  v28 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  deviceCopy = device;
  safeLocations = [(SAMonitoringSessionManager *)self safeLocations];
  v9 = [safeLocations objectForKeyedSubscript:locationCopy];

  if (!v9)
  {
    v19 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v24 = 68289539;
    *v25 = 0;
    *&v25[4] = 2082;
    *&v25[6] = "";
    *&v25[14] = 2113;
    *&v25[16] = locationCopy;
    v26 = 2113;
    v27 = deviceCopy;
    v20 = "{msg%{public}.0s:#SAMonitoringSessionManager stop location error, location:%{private}@, device:%{private}@}";
    v21 = v19;
    v22 = 38;
LABEL_10:
    _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_ERROR, v20, &v24, v22);
    goto LABEL_11;
  }

  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v11 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  if (!v11)
  {
    v23 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v24 = 68289283;
    *v25 = 0;
    *&v25[4] = 2082;
    *&v25[6] = "";
    *&v25[14] = 2113;
    *&v25[16] = deviceCopy;
    v20 = "{msg%{public}.0s:#SAMonitoringSessionManager stop location device error, device:%{private}@}";
    v21 = v23;
    v22 = 28;
    goto LABEL_10;
  }

  v12 = [SASafeLocationUpdateEvent alloc];
  getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  v14 = [(SASafeLocationUpdateEvent *)v12 initWithSafeLocation:v9 eventType:1 lastEvent:1 date:getCurrentTime];

  v15 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v24 = 138478083;
    *v25 = locationCopy;
    *&v25[8] = 2113;
    *&v25[10] = deviceCopy;
    _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "#SAMonitoringSessionManager stop location %{private}@ for device %{private}@", &v24, 0x16u);
  }

  deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v17 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:deviceCopy];
  scenarioClassifier = [v17 scenarioClassifier];
  [scenarioClassifier ingestTAEvent:v14];

LABEL_11:
}

- (void)removeDevicesIfNeededPerEvent:(id)event
{
  v83 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  devices = [(SAMonitoringSessionManager *)self devices];
  v5 = [devices countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v72;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v72 != v7)
        {
          objc_enumerationMutation(devices);
        }

        v9 = *(*(&v71 + 1) + 8 * i);
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        devices2 = [eventCopy devices];
        v11 = [devices2 countByEnumeratingWithState:&v67 objects:v81 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v68;
          while (2)
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v68 != v13)
              {
                objc_enumerationMutation(devices2);
              }

              if ([*(*(&v67 + 1) + 8 * j) isEqual:v9])
              {

                goto LABEL_18;
              }
            }

            v12 = [devices2 countByEnumeratingWithState:&v67 objects:v81 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v15 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          uUIDString = [v9 UUIDString];
          *buf = 138477827;
          v80 = uUIDString;
          _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEFAULT, "#SAMonitoringSessionManager found unpaired device, clearing deviceId, %{private}@", buf, 0xCu);
        }

        [obj addObject:v9];
LABEL_18:
        ;
      }

      v6 = [devices countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v6);
  }

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v18 = obj;
  v19 = [v18 countByEnumeratingWithState:&v63 objects:v78 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v64;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v64 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v63 + 1) + 8 * k);
        lastObject = [v18 lastObject];
        [(SAMonitoringSessionManager *)self removeDeviceWithUUID:v23 isLastDeviceEvent:v23 == lastObject];
      }

      v20 = [v18 countByEnumeratingWithState:&v63 objects:v78 count:16];
    }

    while (v20);
  }

  devices3 = [(SAMonitoringSessionManager *)self devices];
  [devices3 removeObjectsForKeys:v18];

  deviceUUIDtoSafeLocationUUIDs = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
  [deviceUUIDtoSafeLocationUUIDs removeObjectsForKeys:v18];

  v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obja = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v27 = [obja countByEnumeratingWithState:&v59 objects:v77 count:16];
  if (v27)
  {
    v29 = v27;
    v30 = *v60;
    *&v28 = 138477827;
    v46 = v28;
    do
    {
      for (m = 0; m != v29; ++m)
      {
        if (*v60 != v30)
        {
          objc_enumerationMutation(obja);
        }

        v32 = *(*(&v59 + 1) + 8 * m);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        devices4 = [eventCopy devices];
        v34 = [devices4 countByEnumeratingWithState:&v55 objects:v76 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v56;
          while (2)
          {
            for (n = 0; n != v35; ++n)
            {
              if (*v56 != v36)
              {
                objc_enumerationMutation(devices4);
              }

              if ([*(*(&v55 + 1) + 8 * n) isEqual:v32])
              {

                goto LABEL_44;
              }
            }

            v35 = [devices4 countByEnumeratingWithState:&v55 objects:v76 count:16];
            if (v35)
            {
              continue;
            }

            break;
          }
        }

        v38 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          v39 = v38;
          uUIDString2 = [v32 UUIDString];
          *buf = v46;
          v80 = uUIDString2;
          _os_log_impl(&dword_2656EA000, v39, OS_LOG_TYPE_DEFAULT, "#SAMonitoringSessionManager found unpaired device in monitoring session record, clearing deviceId, %{private}@", buf, 0xCu);
        }

        [v47 addObject:v32];
LABEL_44:
        ;
      }

      v29 = [obja countByEnumeratingWithState:&v59 objects:v77 count:16];
    }

    while (v29);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v41 = v47;
  v42 = [v41 countByEnumeratingWithState:&v51 objects:v75 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v52;
    do
    {
      for (ii = 0; ii != v43; ++ii)
      {
        if (*v52 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(SAMonitoringSessionManager *)self cancelMonitoringDevice:*(*(&v51 + 1) + 8 * ii)];
      }

      v43 = [v41 countByEnumeratingWithState:&v51 objects:v75 count:16];
    }

    while (v43);
  }
}

- (void)addDevicesIfNeededPerEvent:(id)event
{
  v50 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v37 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [eventCopy devices];
  v39 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v39)
  {
    v38 = *v45;
    v35 = eventCopy;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v45 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v44 + 1) + 8 * i);
        devices = [eventCopy devices];
        v8 = [devices objectForKeyedSubscript:v6];

        devices2 = [(SAMonitoringSessionManager *)self devices];
        v10 = [devices2 objectForKeyedSubscript:v6];

        if (v10)
        {
          if ([v10 isReallyEqual:v8])
          {
            safeLocations = [eventCopy safeLocations];
            v12 = [safeLocations objectForKeyedSubscript:v6];
            deviceUUIDtoSafeLocationUUIDs = [(SAMonitoringSessionManager *)self deviceUUIDtoSafeLocationUUIDs];
            v14 = [deviceUUIDtoSafeLocationUUIDs objectForKeyedSubscript:v6];
            v15 = [v12 isEqualToSet:v14];

            eventCopy = v35;
            if (v15)
            {
              goto LABEL_13;
            }

            safeLocations2 = [v35 safeLocations];
            v17 = [safeLocations2 objectForKeyedSubscript:v6];
            [(SAMonitoringSessionManager *)self removeSafeLocationsIfNeededPerNewSet:v17 forDevice:v6];

            safeLocations3 = [v35 safeLocations];
            v19 = [safeLocations3 objectForKeyedSubscript:v6];
            [(SAMonitoringSessionManager *)self addSafeLocationsIfNeededPerNewSet:v19 forDevice:v6];
          }

          else
          {
            [(SAMonitoringSessionManager *)self removeAndStopSafeLocationsForDeviceUUID:v6];
            devices3 = [(SAMonitoringSessionManager *)self devices];
            identifier = [v10 identifier];
            [devices3 setObject:0 forKeyedSubscript:identifier];

            safeLocations3 = [eventCopy devices];
            v19 = [safeLocations3 objectForKeyedSubscript:v6];
            [v37 addObject:v19];
          }
        }

        else
        {
          [v37 addObject:v8];
        }

LABEL_13:
      }

      v39 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v39);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v22 = v37;
  v23 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v41;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v40 + 1) + 8 * j);
        lastObject = [v22 lastObject];
        [(SAMonitoringSessionManager *)self addDevice:v27 isLastDeviceEvent:v27 == lastObject];

        safeLocations4 = [eventCopy safeLocations];
        identifier2 = [v27 identifier];
        v31 = [safeLocations4 objectForKeyedSubscript:identifier2];
        identifier3 = [v27 identifier];
        [(SAMonitoringSessionManager *)self setSafeLocations:v31 forDeviceUUID:identifier3];
      }

      v24 = [v22 countByEnumeratingWithState:&v40 objects:v48 count:16];
    }

    while (v24);
  }

  devices4 = [(SAMonitoringSessionManager *)self devices];
  v34 = [devices4 count];

  if (v34)
  {
    [(SAMonitoringSessionManager *)self removeDisableReason:64];
  }

  else
  {
    [(SAMonitoringSessionManager *)self addDisableReason:64];
  }
}

- (BOOL)isWithinCurrentVisitOrLOI:(id)i
{
  v4 = MEMORY[0x277CE41F8];
  iCopy = i;
  v6 = [v4 alloc];
  [iCopy latitude];
  v8 = v7;
  [iCopy longitude];
  v10 = v9;

  v11 = [v6 initWithLatitude:v8 longitude:v10];
  currentVisitOrLOIEvent = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  currentVisitOrLOIEvent2 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
  if (isKindOfClass)
  {
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    [currentVisitOrLOIEvent2 coordinate];
    v17 = v16;
    [currentVisitOrLOIEvent2 coordinate];
  }

  else
  {
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    if ((v19 & 1) == 0)
    {
      v26 = 0;
      goto LABEL_9;
    }

    currentVisitOrLOIEvent2 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    [currentVisitOrLOIEvent2 latitude];
    v17 = v20;
    [currentVisitOrLOIEvent2 longitude];
    v18 = v21;
  }

  v22 = [v15 initWithLatitude:v17 longitude:v18];
  [v22 distanceFromLocation:v11];
  v24 = v23;
  [currentVisitOrLOIEvent2 horizontalAccuracy];
  if (v25 < 100.0)
  {
    v25 = 100.0;
  }

  v26 = v24 <= v25;

LABEL_9:
  return v26;
}

- (BOOL)shouldIssueBookendedNotificationBasedOnLocationForDevice:(id)device
{
  deviceCopy = device;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v8 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  trackedTravelingStartLocation = [v8 trackedTravelingStartLocation];

  currentVisitOrLOIEvent = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
  LOBYTE(v8) = 0;
  if (currentVisitOrLOIEvent && trackedTravelingStartLocation)
  {
    LODWORD(v8) = ![(SAMonitoringSessionManager *)self isWithinCurrentVisitOrLOI:trackedTravelingStartLocation];
  }

  return v8;
}

- (BOOL)shouldIssueBookendedNotificationBasedOnTimeForDevice:(id)device
{
  v28 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];

  trackedTravelingStartDate = [v6 trackedTravelingStartDate];
  scenarioClassifier = [v6 scenarioClassifier];
  scenarioChangeDate = [scenarioClassifier scenarioChangeDate];

  if (trackedTravelingStartDate)
  {
    [scenarioChangeDate timeIntervalSinceDate:trackedTravelingStartDate];
    v11 = v10 >= 360.0;
  }

  else
  {
    v11 = 1;
  }

  timeOfAttemptToLoadFromPersistence = [(SAMonitoringSessionManager *)self timeOfAttemptToLoadFromPersistence];
  getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
  [timeOfAttemptToLoadFromPersistence timeIntervalSinceDate:getCurrentTime];
  v15 = v14;

  if (v15 < 0.0)
  {
    v15 = -v15;
  }

  if (!trackedTravelingStartDate)
  {
    v16 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v20 = 68289026;
      v21 = 0;
      v22 = 2082;
      v23 = "";
      _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager no tracked traveling start date}", &v20, 0x12u);
    }
  }

  v17 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v20 = 68289539;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 1025;
    v25 = v11;
    v26 = 1025;
    v27 = v15 >= 150.0;
    _os_log_impl(&dword_2656EA000, v17, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager shouldIssueBookendedNotificationBasedOnTimeForDevice, min travel satisified:%{private}hhd, min duration after persistence:%{private}hhd}", &v20, 0x1Eu);
  }

  v18 = v15 >= 150.0 && v11;

  return v18;
}

- (BOOL)shouldIssueBookendedNotificationForDevice:(id)device
{
  v16 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [(SAMonitoringSessionManager *)self shouldIssueBookendedNotificationBasedOnLocationForDevice:deviceCopy];
  v6 = [(SAMonitoringSessionManager *)self shouldIssueBookendedNotificationBasedOnTimeForDevice:deviceCopy];

  v7 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 68289539;
    v9[1] = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1025;
    v13 = v5;
    v14 = 1025;
    v15 = v6;
    _os_log_impl(&dword_2656EA000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager shouldIssueBookendedNotificationForDevice, based on location:%{private}hhd, based on time:%{private}hhd}", v9, 0x1Eu);
  }

  return v5 && v6;
}

- (void)ingestTAEvent:(id)event
{
  v33 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self updateDevicesWithSafeLocations:eventCopy];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self updateSafeLocations:eventCopy];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self updateLocation:eventCopy];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self handleGeofenceEvent:eventCopy];
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    analytics = [(SAMonitoringSessionManager *)self analytics];
    [v5 horizontalAccuracy];
    [analytics addVisit:1 withRadius:v7];

    [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:v5];
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    allValues = [deviceUUIDtoMonitoringSession allValues];

    v10 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(allValues);
          }

          scenarioClassifier = [*(*(&v27 + 1) + 8 * i) scenarioClassifier];
          [scenarioClassifier ingestTAEvent:v5];
        }

        v11 = [allValues countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v11);
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = eventCopy;
    if (![v5 hasArrivalDate])
    {
      goto LABEL_18;
    }

    if ([v5 hasDepartureDate])
    {
      [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:0];
      [(SAMonitoringSessionManager *)self setPreviousVisitOrLOIEvent:v5];
      goto LABEL_18;
    }

    analytics2 = [(SAMonitoringSessionManager *)self analytics];
    [v5 horizontalAccuracy];
    [analytics2 addVisit:0 withRadius:v16];

    [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:v5];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    allValues = [deviceUUIDtoMonitoringSession2 allValues];

    v18 = [allValues countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v24;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v24 != v20)
          {
            objc_enumerationMutation(allValues);
          }

          scenarioClassifier2 = [*(*(&v23 + 1) + 8 * j) scenarioClassifier];
          [scenarioClassifier2 ingestTAEvent:v5];
        }

        v19 = [allValues countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v19);
    }

LABEL_17:

LABEL_18:
    goto LABEL_19;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(SAMonitoringSessionManager *)self handleSystemStateChanged:eventCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SAMonitoringSessionManager *)self handleMultiPartStatusEvent:eventCopy];
    }
  }

LABEL_19:
}

- (void)handleMultiPartStatusEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  uuid = [eventCopy uuid];

  if (uuid)
  {
    deviceRecord = self->_deviceRecord;
    uuid2 = [eventCopy uuid];
    v8 = [(SADeviceRecord *)deviceRecord getSADevice:uuid2];

    v9 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      uuid3 = [eventCopy uuid];
      name = [v8 name];
      if ([v8 isAirPodsCase])
      {
        v13 = "YES";
      }

      else
      {
        v13 = "NO";
      }

      v23 = 68290307;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = uuid3;
      v29 = 2113;
      v30 = name;
      v31 = 2081;
      v32 = v13;
      v33 = 2049;
      relationStatus = [eventCopy relationStatus];
      v35 = 2049;
      maintenanceStatus = [eventCopy maintenanceStatus];
      _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#sa #handleMultiPartStatusEvent multi-part status, uuid:%{private}@, name:%{private}@, isAirPodsCase:%{private}s, relation:%{private}ld, maintenance:%{private}ld}", &v23, 0x44u);
    }

    if (v8 && [v8 isAirPodsCase])
    {
      deviceRecord = [(SAMonitoringSessionManager *)self deviceRecord];
      relationStatus2 = [eventCopy relationStatus];
      uuid4 = [eventCopy uuid];
      [deviceRecord updateRelationStatus:relationStatus2 forDeviceWithUUID:uuid4];

      deviceRecord2 = [(SAMonitoringSessionManager *)self deviceRecord];
      maintenanceStatus2 = [eventCopy maintenanceStatus];
      uuid5 = [eventCopy uuid];
      [deviceRecord2 updateMaintenanceStatus:maintenanceStatus2 forDeviceWithUUID:uuid5];
    }
  }

  else
  {
    v20 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      uuid6 = [eventCopy uuid];
      v23 = 68289283;
      v24 = 0;
      v25 = 2082;
      v26 = "";
      v27 = 2113;
      v28 = uuid6;
      _os_log_impl(&dword_2656EA000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#sa #handleMultiPartStatusEvent event uuid nil, uuid:%{private}@}", &v23, 0x1Cu);
    }
  }
}

- (void)updateDevicesWithSafeLocations:(id)locations
{
  v13 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    devices = [locationsCopy devices];
    v8[0] = 68289283;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    v12 = [devices count];
    _os_log_impl(&dword_2656EA000, v6, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager update devices, count:%{private}ld}", v8, 0x1Cu);
  }

  [(SAMonitoringSessionManager *)self removeDevicesIfNeededPerEvent:locationsCopy];
  [(SAMonitoringSessionManager *)self addDevicesIfNeededPerEvent:locationsCopy];
}

- (id)computeRemovedSafeLocations:(id)locations
{
  locationsCopy = locations;
  safeLocations = [(SAMonitoringSessionManager *)self safeLocations];
  if (safeLocations && (v6 = safeLocations, -[SAMonitoringSessionManager safeLocations](self, "safeLocations"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, v8))
  {
    v9 = MEMORY[0x277CBEB58];
    safeLocations2 = [(SAMonitoringSessionManager *)self safeLocations];
    allKeys = [safeLocations2 allKeys];
    v12 = [v9 setWithArray:allKeys];

    if (locationsCopy && [locationsCopy count])
    {
      [v12 minusSet:locationsCopy];
    }
  }

  else
  {
    v12 = [MEMORY[0x277CBEB58] set];
  }

  return v12;
}

- (void)updateSafeLocations:(id)locations
{
  v46 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  v5 = MEMORY[0x277CBEB98];
  safeLocations = [locationsCopy safeLocations];
  allKeys = [safeLocations allKeys];
  v8 = [v5 setWithArray:allKeys];
  v9 = [(SAMonitoringSessionManager *)self computeRemovedSafeLocations:v8];

  if ([v9 count])
  {
    v28 = v9;
    v29 = locationsCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v35;
      do
      {
        v14 = 0;
        do
        {
          if (*v35 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v34 + 1) + 8 * v14);
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v16 = [(SAMonitoringSessionManager *)self devices:v28];
          allKeys2 = [v16 allKeys];

          v18 = [allKeys2 countByEnumeratingWithState:&v30 objects:v44 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v31;
            do
            {
              v21 = 0;
              do
              {
                if (*v31 != v20)
                {
                  objc_enumerationMutation(allKeys2);
                }

                [(SAMonitoringSessionManager *)self removeSafeLocation:v15 forDeviceUUID:*(*(&v30 + 1) + 8 * v21++)];
              }

              while (v19 != v21);
              v19 = [allKeys2 countByEnumeratingWithState:&v30 objects:v44 count:16];
            }

            while (v19);
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [v10 countByEnumeratingWithState:&v34 objects:v45 count:16];
      }

      while (v12);
    }

    v9 = v28;
    locationsCopy = v29;
  }

  v22 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    safeLocations2 = [locationsCopy safeLocations];
    v25 = [safeLocations2 count];
    *buf = 68289283;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v42 = 2049;
    v43 = v25;
    _os_log_impl(&dword_2656EA000, v23, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager update safe locations, count:%{private}ld}", buf, 0x1Cu);
  }

  safeLocations3 = [locationsCopy safeLocations];
  v27 = [safeLocations3 copy];
  [(SAMonitoringSessionManager *)self setSafeLocations:v27];
}

- (void)updateLocation:(id)location
{
  v51 = *MEMORY[0x277D85DE8];
  locationCopy = location;
  p_lastLocation = &self->_lastLocation;
  lastLocation = self->_lastLocation;
  if (lastLocation)
  {
    getDate = [(TALocationLite *)lastLocation getDate];
    getDate2 = [locationCopy getDate];
    v10 = [getDate compare:getDate2] == 0;

    if (!locationCopy)
    {
LABEL_9:
      v13 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v14 = *p_lastLocation;
        v15 = v13;
        v16 = [(TALocationLite *)v14 description];
        v17 = [locationCopy description];
        buf = 68289539;
        v45 = 2082;
        v46 = "";
        v47 = 2117;
        v48 = v16;
        v49 = 2117;
        v50 = v17;
        _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager updateLocation update criteria not satisfied, lastLocation:%{sensitive}@, newLocation:%{sensitive}@}", &buf, 0x26u);
      }

      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0;
    if (!locationCopy)
    {
      goto LABEL_9;
    }
  }

  [locationCopy horizontalAccuracy];
  v12 = v11 >= 70.0 || v10;
  if (v12 == 1)
  {
    goto LABEL_9;
  }

  objc_storeStrong(&self->_lastLocation, location);
  v18 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v19 = *p_lastLocation;
    v20 = v18;
    v21 = [(TALocationLite *)v19 description];
    buf = 68289283;
    v45 = 2082;
    v46 = "";
    v47 = 2117;
    v48 = v21;
    _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager updateLocation updated, lastLocation:%{sensitive}@}", &buf, 0x1Cu);
  }

  devicesWithToBePopulatedTrackedTravelingStartLocation = [(SAMonitoringSessionManager *)self devicesWithToBePopulatedTrackedTravelingStartLocation];
  v23 = [devicesWithToBePopulatedTrackedTravelingStartLocation count];

  if (v23)
  {
    v24 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      buf = 68289283;
      v45 = 2082;
      v46 = "";
      v47 = 2049;
      v48 = v23;
      _os_log_impl(&dword_2656EA000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager updateLocation populating tracked traveling start location, device count:%{private}lu}", &buf, 0x1Cu);
    }

    devicesWithToBePopulatedTrackedTravelingStartLocation2 = [(SAMonitoringSessionManager *)self devicesWithToBePopulatedTrackedTravelingStartLocation];
    allObjects = [devicesWithToBePopulatedTrackedTravelingStartLocation2 allObjects];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = allObjects;
    v28 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v28)
    {
      v30 = v28;
      v31 = *v40;
      *&v29 = 68289283;
      v38 = v29;
      do
      {
        v32 = 0;
        do
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(v27);
          }

          v33 = *(*(&v39 + 1) + 8 * v32);
          v34 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            buf = v38;
            v45 = 2082;
            v46 = "";
            v47 = 2113;
            v48 = v33;
            _os_log_impl(&dword_2656EA000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager updateLocation populating tracked traveling start location, device:%{private}@}", &buf, 0x1Cu);
          }

          v35 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession:v38];
          v36 = [v35 objectForKeyedSubscript:v33];
          [v36 setTrackedTravelingStartLocation:locationCopy];

          devicesWithToBePopulatedTrackedTravelingStartLocation3 = [(SAMonitoringSessionManager *)self devicesWithToBePopulatedTrackedTravelingStartLocation];
          [devicesWithToBePopulatedTrackedTravelingStartLocation3 removeObject:v33];

          ++v32;
        }

        while (v30 != v32);
        v30 = [v27 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v30);
    }
  }

LABEL_26:
}

- (void)handleGeofenceEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v5 = eventCopy;
  if (eventCopy && ([eventCopy region], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "region"), v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v7, v9))
  {
    v10 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = [v5 description];
      v31 = 68289283;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2117;
      v36 = v12;
      _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager handleGeofenceEvent received geofenceEvent, geofence:%{sensitive}@}", &v31, 0x1Cu);
    }

    v13 = objc_alloc(MEMORY[0x277CCAD78]);
    region = [v5 region];
    identifier = [region identifier];
    v16 = [v13 initWithUUIDString:identifier];

    deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v18 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:v16];

    if (v18)
    {
      eventType = [v5 eventType];
      if (eventType == 2 || eventType == 4)
      {
        geofence = [v18 geofence];

        if (geofence)
        {
          fenceRequestServicer = [(SAMonitoringSessionManager *)self fenceRequestServicer];
          geofence2 = [v18 geofence];
          [fenceRequestServicer removeGeofence:geofence2];
        }

        if ([v18 state] == 3)
        {
          [(SAMonitoringSessionManager *)self handleGeofenceExitedForDeviceUUID:v16];
        }

        else if ([v5 eventType] == 4)
        {
          v30 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
          {
            v31 = 68289283;
            v32 = 0;
            v33 = 2082;
            v34 = "";
            v35 = 2117;
            v36 = v16;
            _os_log_impl(&dword_2656EA000, v30, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager handleGeofenceEvent ignored (recent crash?), geofence:%{sensitive}@}", &v31, 0x1Cu);
          }
        }
      }

      else if (eventType == 6)
      {
        geofence3 = [v18 geofence];

        if (geofence3)
        {
          [v18 setGeofence:0];
        }

        if ([v18 state] == 3)
        {
          [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v16 toState:1];
        }
      }
    }

    else
    {
      v24 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        v25 = v24;
        v26 = [v5 description];
        v31 = 68289283;
        v32 = 0;
        v33 = 2082;
        v34 = "";
        v35 = 2117;
        v36 = v26;
        _os_log_impl(&dword_2656EA000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager handleGeofenceEvent geofenceEvent cannot be mapped to monitoring session, geofence:%{sensitive}@}", &v31, 0x1Cu);
      }
    }
  }

  else
  {
    v21 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      v22 = v21;
      v23 = [v5 description];
      v31 = 68289283;
      v32 = 0;
      v33 = 2082;
      v34 = "";
      v35 = 2117;
      v36 = v23;
      _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#SAMonitoringSessionManager handleGeofenceEvent invalid geofenceEvent, geofence:%{sensitive}@}", &v31, 0x1Cu);
    }
  }
}

- (void)setUpTravelingGeofencesOnAirplaneModeToggleOffIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v4 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(deviceUUIDtoMonitoringSession);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v10 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v8];

        if ([v10 state] == 1)
        {
          firstNotWithYouLocation = [v10 firstNotWithYouLocation];

          if (firstNotWithYouLocation)
          {
            if ([(SAMonitoringSessionManager *)self addTravelFenceForDevice:v8])
            {
              [(SAMonitoringSessionManager *)self changeMonitoringSessionState:v8 toState:3];
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [deviceUUIDtoMonitoringSession countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)removeDisableReason:(unint64_t)reason
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 68289283;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2049;
    reasonCopy = reason;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager removeDisableReason, reason:%{private}lu}", v8, 0x1Cu);
  }

  disabledReasons = self->_disabledReasons;
  if ((disabledReasons & reason) != 0)
  {
    v7 = disabledReasons & ~reason;
    self->_disabledReasons = v7;
    if (!v7)
    {
      [(SAMonitoringSessionManager *)self setEnabled:1];
    }
  }
}

- (void)addDisableReason:(unint64_t)reason
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 68289283;
    v7[1] = 0;
    v8 = 2082;
    v9 = "";
    v10 = 2049;
    reasonCopy = reason;
    _os_log_impl(&dword_2656EA000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager addDisableReason, reason:%{private}lu}", v7, 0x1Cu);
  }

  disabledReasons = self->_disabledReasons;
  if ((disabledReasons & reason) == 0)
  {
    if (reason)
    {
      if (!disabledReasons)
      {
        [(SAMonitoringSessionManager *)self setEnabled:0];
        disabledReasons = self->_disabledReasons;
      }
    }

    self->_disabledReasons = disabledReasons | reason;
  }
}

- (void)handleSystemStateChanged:(id)changed
{
  v47 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  isInAirplaneMode = self->_isInAirplaneMode;
  systemStateType = [changedCopy systemStateType];
  if (systemStateType > 7)
  {
    switch(systemStateType)
    {
      case 16:
        -[SAMonitoringSessionManager setIsCompanionConnected:](self, "setIsCompanionConnected:", [changedCopy isOn]);
        break;
      case 11:
        if ([changedCopy isOn])
        {
          timeOfAttemptToLoadFromPersistence = [(SAMonitoringSessionManager *)self timeOfAttemptToLoadFromPersistence];

          if (!timeOfAttemptToLoadFromPersistence)
          {
            getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
            [(SAMonitoringSessionManager *)self setTimeOfAttemptToLoadFromPersistence:getCurrentTime];

            persistenceManager = [(SAMonitoringSessionManager *)self persistenceManager];
            load = [persistenceManager load];

            if (load)
            {
              persistenceManager2 = [(SAMonitoringSessionManager *)self persistenceManager];
              store = [persistenceManager2 store];
              monitoringSessionRecord = [store monitoringSessionRecord];
              [(SAMonitoringSessionManager *)self setDeviceUUIDtoMonitoringSession:monitoringSessionRecord];

              persistenceManager3 = [(SAMonitoringSessionManager *)self persistenceManager];
              store2 = [persistenceManager3 store];
              monitoringSessionRecord2 = [store2 monitoringSessionRecord];
              [(SAMonitoringSessionManager *)self bootstrapMonitoringSessionRecord:monitoringSessionRecord2];
            }
          }

          selfCopy7 = self;
          v8 = 128;
          goto LABEL_38;
        }

        selfCopy8 = self;
        v35 = 128;
        goto LABEL_43;
      case 8:
        if ([changedCopy isOn])
        {
          selfCopy7 = self;
          v8 = 1;
          goto LABEL_38;
        }

        selfCopy8 = self;
        v35 = 1;
LABEL_43:
        [(SAMonitoringSessionManager *)selfCopy8 addDisableReason:v35];
        break;
    }
  }

  else
  {
    switch(systemStateType)
    {
      case 3:
        -[SAMonitoringSessionManager setIsInAirplaneMode:](self, "setIsInAirplaneMode:", [changedCopy isOn]);
        if (![(SAMonitoringSessionManager *)self standby])
        {
          if (isInAirplaneMode && ([changedCopy isOn] & 1) == 0)
          {
            [(SAMonitoringSessionManager *)self setUpTravelingGeofencesOnAirplaneModeToggleOffIfNeeded];
          }

          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
          allKeys = [deviceUUIDtoMonitoringSession allKeys];

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v12 = allKeys;
          v13 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v37;
            do
            {
              v16 = 0;
              do
              {
                if (*v37 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v36 + 1) + 8 * v16);
                deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
                v19 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v17];

                if ([v19 state] == 1)
                {
                  [v19 setEarlyAirplaneTrigger:1];
                  [v9 addObject:v17];
                }

                ++v16;
              }

              while (v14 != v16);
              v14 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
            }

            while (v14);
          }

          v20 = [v9 count];
          if (v20)
          {
            v21 = v20;
            v22 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              v41 = 0;
              v42 = 2082;
              v43 = "";
              v44 = 2049;
              v45 = v21;
              _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting terminable long aggressive scan on Airplane Mode toggle, count of devices to find:%{private}ld}", buf, 0x1Cu);
            }

            withYouDetector = [(SAMonitoringSessionManager *)self withYouDetector];
            [withYouDetector forceUpdateWithYouStatusToFindDevices:v9 withContext:6];
          }
        }

        break;
      case 5:
        if ([changedCopy isOn])
        {
          selfCopy7 = self;
          v8 = 2;
          goto LABEL_38;
        }

        selfCopy8 = self;
        v35 = 2;
        goto LABEL_43;
      case 6:
        if ([changedCopy isOn])
        {
          selfCopy7 = self;
          v8 = 4;
LABEL_38:
          [(SAMonitoringSessionManager *)selfCopy7 removeDisableReason:v8];
          break;
        }

        selfCopy8 = self;
        v35 = 4;
        goto LABEL_43;
    }
  }
}

- (void)didChangeScenarioClassFrom:(unint64_t)from to:(unint64_t)to forDevice:(id)device
{
  v74 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v10 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:deviceCopy];
  state = [v10 state];

  if (state != 6)
  {
    deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v14 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:deviceCopy];
    scenario = [v14 scenario];

    if (scenario == to)
    {
      goto LABEL_63;
    }

    if (from == 3)
    {
      v16 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        v64 = 2082;
        v65 = "";
        v66 = 2113;
        v67 = deviceCopy;
        _os_log_impl(&dword_2656EA000, v16, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager end current traveling session, uuid:%{private}@}", buf, 0x1Cu);
      }

      deviceUUIDtoMonitoringSession3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v18 = [deviceUUIDtoMonitoringSession3 objectForKeyedSubscript:deviceCopy];
      [v18 setLastAlertDateInCurrentTravelingSession:0];
    }

    v19 = TASALog;
    if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:[(SAMonitoringSessionManager *)self stateForDeviceUUID:deviceCopy]];
      v22 = [SAScenarioClassifier convertSAScenarioClassToString:from];
      v23 = [SAScenarioClassifier convertSAScenarioClassToString:to];
      *buf = 68290051;
      v64 = 2082;
      v65 = "";
      v66 = 2113;
      v67 = v21;
      v68 = 2113;
      v69 = v22;
      v70 = 2113;
      v71 = v23;
      v72 = 2113;
      v73 = deviceCopy;
      _os_log_impl(&dword_2656EA000, v20, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager didChangeScenarioClass, sessionState:%{private}@, fromScenario:%{private}@, toScenario:%{private}@, uuid:%{private}@}", buf, 0x3Au);
    }

    deviceRecord = [(SAMonitoringSessionManager *)self deviceRecord];
    [deviceRecord updateScenario:to forDeviceWithUUID:deviceCopy];

    deviceUUIDtoMonitoringSession4 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v26 = [deviceUUIDtoMonitoringSession4 objectForKeyedSubscript:deviceCopy];
    [v26 setScenario:to];

    deviceUUIDtoMonitoringSession5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v28 = [deviceUUIDtoMonitoringSession5 objectForKeyedSubscript:deviceCopy];
    state2 = [v28 state];

    withYouDetector = [(SAMonitoringSessionManager *)self withYouDetector];
    v31 = [withYouDetector statusForDeviceWithUUID:deviceCopy];

    if (to - 2 >= 3 && to)
    {
      if (to != 1)
      {
        goto LABEL_62;
      }

      v32 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        v64 = 2082;
        v65 = "";
        v66 = 2113;
        v67 = deviceCopy;
        _os_log_impl(&dword_2656EA000, v32, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#SAMonitoringSessionManager not requesting aggressive scan, entering safe location for device, uuid:%{private}@}", buf, 0x1Cu);
      }

      if (v31 == 1)
      {
        v33 = 1;
      }

      else
      {
        v33 = 2;
      }

      [(SAMonitoringSessionManager *)self updatedWithYouStatusFrom:v33 to:v33 forDeviceWithUUID:deviceCopy];
      goto LABEL_57;
    }

    switch(from)
    {
      case 3uLL:
        standby = [(SAMonitoringSessionManager *)self standby];
        v46 = TASALog;
        v47 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
        if (!standby && (state2 & 0xFFFFFFFFFFFFFFFDLL) == 1)
        {
          if (v47)
          {
            *buf = 68289283;
            *&buf[4] = 0;
            v64 = 2082;
            v65 = "";
            v66 = 2113;
            v67 = deviceCopy;
            _os_log_impl(&dword_2656EA000, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting a terminable long aggressive scan to find tracked device when ending traveling scenario, uuid:%{private}@}", buf, 0x1Cu);
          }

          withYouDetector2 = [(SAMonitoringSessionManager *)self withYouDetector];
          v61 = deviceCopy;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v61 count:1];
          v42 = withYouDetector2;
          v43 = v41;
          v44 = 2;
          goto LABEL_36;
        }

        if (v47)
        {
          *buf = 68289283;
          *&buf[4] = 0;
          v64 = 2082;
          v65 = "";
          v66 = 2113;
          v67 = deviceCopy;
          _os_log_impl(&dword_2656EA000, v46, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting short aggressive scan, ending traveling scenario and device is not tracked, uuid:%{private}@}", buf, 0x1Cu);
        }

        withYouDetector2 = [(SAMonitoringSessionManager *)self withYouDetector];
        isAnyTrackedWhileTraveling = [(SAMonitoringSessionManager *)self isAnyTrackedWhileTraveling];
        break;
      case 2uLL:
        standby2 = [(SAMonitoringSessionManager *)self standby];
        v39 = TASALog;
        v40 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
        if (!standby2 && state2 == 5)
        {
          if (v40)
          {
            *buf = 68289283;
            *&buf[4] = 0;
            v64 = 2082;
            v65 = "";
            v66 = 2113;
            v67 = deviceCopy;
            _os_log_impl(&dword_2656EA000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting a terminable long aggressive scan to find tracked device when exiting unsafe location, uuid:%{private}@}", buf, 0x1Cu);
          }

          withYouDetector2 = [(SAMonitoringSessionManager *)self withYouDetector];
          v62 = deviceCopy;
          v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
          v42 = withYouDetector2;
          v43 = v41;
          v44 = 1;
LABEL_36:
          [v42 forceUpdateWithYouStatusToFindDevices:v43 withContext:v44];

LABEL_45:
LABEL_46:
          if (to <= 1)
          {
            if (to)
            {
LABEL_57:
              if ([(SAMonitoringSessionManager *)self allDevicesInSafeLocation])
              {
                v56 = 0;
                v57 = 1;
LABEL_60:
                analytics = [(SAMonitoringSessionManager *)self analytics];
                [analytics setInTravelState:0];

                analytics2 = [(SAMonitoringSessionManager *)self analytics];
                [analytics2 setInSafeLocationState:v57];

                goto LABEL_61;
              }

LABEL_62:
              [(SAMonitoringSessionManager *)self scheduleNextPersistenceWrite];
              goto LABEL_63;
            }
          }

          else
          {
            if (to == 2)
            {
              v57 = 0;
              v56 = 1;
              goto LABEL_60;
            }

            if (to != 4)
            {
              currentVisitOrLOIEvent = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];

              if (currentVisitOrLOIEvent)
              {
                v50 = TASALog;
                if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
                {
                  v51 = v50;
                  currentVisitOrLOIEvent2 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
                  *buf = 68289283;
                  *&buf[4] = 0;
                  v64 = 2082;
                  v65 = "";
                  v66 = 2117;
                  v67 = currentVisitOrLOIEvent2;
                  _os_log_impl(&dword_2656EA000, v51, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager removing currentVisitOrLOIEvent due to scenario change, currentVisitOrLOIEvent:%{sensitive}@}", buf, 0x1Cu);
                }

                currentVisitOrLOIEvent3 = [(SAMonitoringSessionManager *)self currentVisitOrLOIEvent];
                [(SAMonitoringSessionManager *)self setPreviousVisitOrLOIEvent:currentVisitOrLOIEvent3];

                [(SAMonitoringSessionManager *)self setCurrentVisitOrLOIEvent:0];
              }

              analytics3 = [(SAMonitoringSessionManager *)self analytics];
              [analytics3 setInTravelState:1];
            }
          }

          analytics4 = [(SAMonitoringSessionManager *)self analytics];
          [analytics4 setInSafeLocationState:0];

          if (![(SAMonitoringSessionManager *)self anyDeviceInUnsafeLocation])
          {
            v56 = 0;
LABEL_61:
            analytics5 = [(SAMonitoringSessionManager *)self analytics];
            [analytics5 setInUnsafeLocationState:v56];

            goto LABEL_62;
          }

          goto LABEL_62;
        }

        if (v40)
        {
          *buf = 68289283;
          *&buf[4] = 0;
          v64 = 2082;
          v65 = "";
          v66 = 2113;
          v67 = deviceCopy;
          _os_log_impl(&dword_2656EA000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting short aggressive scan, exiting unsafe location and device is not tracked, uuid:%{private}@}", buf, 0x1Cu);
        }

        withYouDetector2 = [(SAMonitoringSessionManager *)self withYouDetector];
        isAnyTrackedWhileTraveling = [(SAMonitoringSessionManager *)self isAnyInTrackedInUnsafeLocation];
        break;
      case 1uLL:
        v34 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          *&buf[4] = 0;
          v64 = 2082;
          v65 = "";
          v66 = 2113;
          v67 = deviceCopy;
          _os_log_impl(&dword_2656EA000, v34, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting short aggressive scan, exiting safe location for device, uuid:%{private}@}", buf, 0x1Cu);
        }

        withYouDetector3 = [(SAMonitoringSessionManager *)self withYouDetector];
        withYouDetector2 = withYouDetector3;
        v37 = 0;
        goto LABEL_44;
      default:
        goto LABEL_46;
    }

    v37 = isAnyTrackedWhileTraveling;
    withYouDetector3 = withYouDetector2;
LABEL_44:
    [withYouDetector3 forceUpdateWithYouStatusWithShortScan:v37];
    goto LABEL_45;
  }

  v12 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    *&buf[4] = 0;
    v64 = 2082;
    v65 = "";
    _os_log_impl(&dword_2656EA000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager didChangeScenarioClass end monitoring skip}", buf, 0x12u);
  }

LABEL_63:
}

- (BOOL)isAnyInTrackedInUnsafeLocation
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSMutableDictionary *)self->_deviceUUIDtoMonitoringSession allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) state] == 5)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)isAnyTrackedWhileTraveling
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [(NSMutableDictionary *)self->_deviceUUIDtoMonitoringSession allValues];
  v3 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allValues);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([v7 state] == 1 || objc_msgSend(v7, "state") == 3)
        {
          v8 = 1;
          goto LABEL_13;
        }
      }

      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
      v8 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (void)addClient:(id)client
{
  clientCopy = client;
  clients = [(SAMonitoringSessionManager *)self clients];
  [clients addObject:clientCopy];

  [(SAMonitoringSessionManager *)self configureBackgroundScanning];
}

- (void)removeClient:(id)client
{
  clientCopy = client;
  clients = [(SAMonitoringSessionManager *)self clients];
  [clients removeObject:clientCopy];
}

- (unint64_t)stateForDeviceUUID:(id)d
{
  dCopy = d;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];

  if (v6)
  {
    state = [v6 state];
  }

  else
  {
    state = 0;
  }

  return state;
}

- (unint64_t)scenarioClassForDeviceUUID:(id)d
{
  dCopy = d;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];

  if (v6)
  {
    scenario = [v6 scenario];
  }

  else
  {
    scenario = 0;
  }

  return scenario;
}

- (int64_t)earlyVehicularTriggerForDeviceUUID:(id)d
{
  dCopy = d;
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v6 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];

  if (v6)
  {
    earlyVehicularTrigger = [v6 earlyVehicularTrigger];
  }

  else
  {
    earlyVehicularTrigger = -1;
  }

  return earlyVehicularTrigger;
}

+ (id)convertSAMonitoringSessionStateToString:(unint64_t)string
{
  if (string - 1 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_279B9C6E0[string - 1];
  }
}

- (void)didForceUpdateWithYouStatus
{
  v31 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_deviceUUIDtoMonitoringSession allKeys];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [allKeys countByEnumeratingWithState:&v18 objects:v30 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v19;
    *&v5 = 68289283;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [(SAWithYouDetectorServiceProtocol *)self->_withYouDetector statusForDeviceWithUUID:v9, v17];
        v11 = v10;
        if ((v10 - 1) < 2)
        {
          [(SAMonitoringSessionManager *)self updatedWithYouStatusFrom:v10 to:v10 forDeviceWithUUID:v9];
          continue;
        }

        if ((v10 - 3) >= 2)
        {
          if (v10)
          {
            continue;
          }

          v15 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v17;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2113;
            v27 = v9;
            _os_log_impl(&dword_2656EA000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager got unknown with-you status, uuid:%{private}@}", buf, 0x1Cu);
          }
        }

        else
        {
          v12 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            v13 = v12;
            v14 = [SAWithYouDetector convertSAWithYouStatusToString:v11];
            *buf = 68289539;
            v23 = 0;
            v24 = 2082;
            v25 = "";
            v26 = 2113;
            v27 = v9;
            v28 = 2113;
            v29 = v14;
            _os_log_impl(&dword_2656EA000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager got to be verified with-you status at the end of a force update, uuid:%{private}@, status:%{private}@}", buf, 0x26u);
          }
        }

        getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
        [(SAMonitoringSessionManager *)self scheduleNextForceUpdateWithYouStatusFromReferenceDate:getCurrentTime forAlertForDevice:v9 alertType:0];
      }

      v6 = [allKeys countByEnumeratingWithState:&v18 objects:v30 count:16];
    }

    while (v6);
  }
}

- (void)checkReunion:(unint64_t)reunion to:(unint64_t)to forDeviceWithUUID:(id)d
{
  v88 = *MEMORY[0x277D85DE8];
  dCopy = d;
  deviceUUIDtoAlertContext = [(SAMonitoringSessionManager *)self deviceUUIDtoAlertContext];
  v10 = [deviceUUIDtoAlertContext objectForKeyedSubscript:dCopy];

  if (v10)
  {
    deviceUUIDtoAlertContext2 = [(SAMonitoringSessionManager *)self deviceUUIDtoAlertContext];
    v12 = [deviceUUIDtoAlertContext2 objectForKeyedSubscript:dCopy];

    getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    v14 = [v12 objectForKeyedSubscript:@"lastAlert"];
    [getCurrentTime timeIntervalSinceDate:v14];
    v16 = v15;

    if (v16 <= 86400.0)
    {
      if (reunion != 2 || to != 1)
      {
LABEL_24:

        goto LABEL_25;
      }

      v37 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        buf = 68289283;
        v84 = 2082;
        v85 = "";
        v86 = 2113;
        v87 = dCopy;
        _os_log_impl(&dword_2656EA000, v37, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager reunion update, uuid:%{private}@}", &buf, 0x1Cu);
      }
    }

    v17 = [(SADeviceRecord *)self->_deviceRecord getSADevice:dCopy];
    v18 = [(SAMonitoringSessionManager *)self getMoreSpecificSADeviceType:v17];
    v19 = [v12 objectForKeyedSubscript:@"tLastWithYou"];
    [v19 doubleValue];
    v21 = v20;

    v22 = v16 < 0.0 || v21 < 0.0;
    v23 = -1.0;
    if (v22)
    {
      v24 = -1.0;
    }

    else
    {
      v24 = v16 + v21;
    }

    v25 = [v12 objectForKeyedSubscript:@"lLastWithYou"];
    if (self->_lastLocation)
    {
      getCurrentTime2 = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
      timestamp = [(TALocationLite *)self->_lastLocation timestamp];
      [getCurrentTime2 timeIntervalSinceDate:timestamp];
      v29 = v28;

      v30 = objc_alloc(MEMORY[0x277CE41F8]);
      [(TALocationLite *)self->_lastLocation latitude];
      v32 = v31;
      [(TALocationLite *)self->_lastLocation longitude];
      v34 = [v30 initWithLatitude:v32 longitude:v33];
      [v34 horizontalAccuracy];
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = -1.0;
      v29 = -1.0;
    }

    v38 = -1.0;
    if (v25)
    {
      [v25 horizontalAccuracy];
      v38 = v39;
      [v34 distanceFromLocation:v25];
      v23 = v40;
    }

    v41 = [(SADeviceRecord *)self->_deviceRecord getLatestAdvertisement:dCopy];
    v79 = v25;
    v80 = dCopy;
    v77 = v41;
    v78 = v34;
    if (v41)
    {
      getBatteryState = [v41 getBatteryState];
    }

    else
    {
      getBatteryState = -1;
    }

    v81[0] = @"deviceType";
    v76 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v82[0] = v76;
    v81[1] = @"productId";
    v75 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "productId")}];
    v82[1] = v75;
    v81[2] = @"vendorId";
    v74 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "vendorId")}];
    v82[2] = v74;
    v81[3] = @"tReunion";
    v73 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    v82[3] = v73;
    v81[4] = @"tLastObserved";
    v72 = [MEMORY[0x277CCABB0] numberWithDouble:v21];
    v82[4] = v72;
    v81[5] = @"tMissingAdv";
    v71 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
    v82[5] = v71;
    v81[6] = @"leftBehindReunionDistance";
    v70 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
    v82[6] = v70;
    v81[7] = @"reunionAge";
    v69 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
    v82[7] = v69;
    v81[8] = @"lastLeftBehindRadius";
    v68 = [MEMORY[0x277CCABB0] numberWithDouble:v38];
    v82[8] = v68;
    v81[9] = @"reunionRadius";
    v67 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    v82[9] = v67;
    v81[10] = @"lastAlertType";
    v66 = [v12 objectForKeyedSubscript:?];
    v82[10] = v66;
    v81[11] = @"lastAlertIsBookendingTravel";
    v65 = [v12 objectForKeyedSubscript:?];
    v82[11] = v65;
    v81[12] = @"lastAlertIsEarlyVehicularTrigger";
    v64 = [v12 objectForKeyedSubscript:?];
    v82[12] = v64;
    v81[13] = @"lastAlertVehicularState";
    v62 = [v12 objectForKeyedSubscript:?];
    v82[13] = v62;
    v81[14] = @"lastAlertIsVehicularBTHintOn";
    v61 = [v12 objectForKeyedSubscript:?];
    v82[14] = v61;
    v81[15] = @"classicallyConnected";
    v60 = [v12 objectForKeyedSubscript:@"lastAlertIsClassicallyConnected"];
    v82[15] = v60;
    v81[16] = @"noCaseAdvSuppressed";
    v59 = [v12 objectForKeyedSubscript:?];
    v82[16] = v59;
    v81[17] = @"lastBatteryStateBeforeAlert";
    v58 = [v12 objectForKeyedSubscript:@"lastAlertBatteryState"];
    v82[17] = v58;
    v81[18] = @"reunionBatteryState";
    v57 = [MEMORY[0x277CCABB0] numberWithInteger:getBatteryState];
    v82[18] = v57;
    v81[19] = @"closeToAnySafeLocations";
    v56 = [v12 objectForKeyedSubscript:?];
    v82[19] = v56;
    v81[20] = @"systemVersion";
    systemVersion = [v17 systemVersion];
    v44 = systemVersion;
    v45 = @"unknown";
    if (systemVersion)
    {
      v45 = systemVersion;
    }

    v82[20] = v45;
    v81[21] = @"timeSinceLastAlert";
    v46 = [v12 objectForKeyedSubscript:?];
    v82[21] = v46;
    v81[22] = @"triggeredAtHome";
    v47 = [v12 objectForKeyedSubscript:?];
    v82[22] = v47;
    v81[23] = @"rssi";
    [v12 objectForKeyedSubscript:@"lastAlertRssiValue"];
    v48 = v63 = v17;
    v82[23] = v48;
    v81[24] = @"hasSurfacedInCurrentTravelingSession";
    v49 = [v12 objectForKeyedSubscript:@"travelingSuppressed"];
    v82[24] = v49;
    v81[25] = @"criticalLowBatterySuppressed";
    v50 = [v12 objectForKeyedSubscript:?];
    v82[25] = v50;
    v81[26] = @"HELEAdvertisingLimitSuppressed";
    v51 = [v12 objectForKeyedSubscript:?];
    v82[26] = v51;
    v81[27] = @"caseLeashedNotAdvSuppressed";
    v52 = [v12 objectForKeyedSubscript:?];
    v82[27] = v52;
    v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:28];

    analytics = [(SAMonitoringSessionManager *)self analytics];
    [analytics submitEvent:@"com.apple.clx.alert.reunionEvent" content:v55];

    deviceUUIDtoAlertContext3 = [(SAMonitoringSessionManager *)self deviceUUIDtoAlertContext];
    dCopy = v80;
    [deviceUUIDtoAlertContext3 setObject:0 forKeyedSubscript:v80];

    goto LABEL_24;
  }

LABEL_25:
}

- (void)updatedWithYouStatusFrom:(unint64_t)from to:(unint64_t)to forDeviceWithUUID:(id)d
{
  v113 = *MEMORY[0x277D85DE8];
  dCopy = d;
  [(SAMonitoringSessionManager *)self checkReunion:from to:to forDeviceWithUUID:dCopy];
  fromCopy = from;
  if (from != to)
  {
    devicesWithPendingTransition = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
    [devicesWithPendingTransition removeObject:dCopy];
  }

  v98 = [(SAMonitoringSessionManager *)self stateForDeviceUUID:dCopy];
  v97 = [(SAMonitoringSessionManager *)self scenarioClassForDeviceUUID:dCopy];
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v11 = [deviceUUIDtoMonitoringSession objectForKeyedSubscript:dCopy];
  scenarioClassifier = [v11 scenarioClassifier];
  scenarioChangeDate = [scenarioClassifier scenarioChangeDate];

  deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v15 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:dCopy];
  travelingGeofenceExitDate = [v15 travelingGeofenceExitDate];

  deviceUUIDtoMonitoringSession3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  v18 = [deviceUUIDtoMonitoringSession3 objectForKeyedSubscript:dCopy];
  earlyVehicularStateChangeDate = [v18 earlyVehicularStateChangeDate];

  v20 = [(SADeviceRecord *)self->_deviceRecord getLastWithYouDate:dCopy];
  v21 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
  {
    v22 = v21;
    v23 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:v98];
    selfCopy = self;
    v24 = [SAWithYouDetector convertSAWithYouStatusToString:fromCopy];
    v25 = [SAWithYouDetector convertSAWithYouStatusToString:to];
    [SAScenarioClassifier convertSAScenarioClassToString:v97];
    toCopy = to;
    v26 = v20;
    v27 = earlyVehicularStateChangeDate;
    v28 = travelingGeofenceExitDate;
    v30 = v29 = scenarioChangeDate;
    *buf = 68290307;
    *&buf[4] = 0;
    v101 = 2082;
    v102 = "";
    v103 = 2113;
    v104 = v23;
    v105 = 2113;
    v106 = v24;
    v107 = 2113;
    v108 = v25;
    v109 = 2113;
    v110 = v30;
    v111 = 2113;
    v112 = dCopy;
    _os_log_impl(&dword_2656EA000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager updatedWithYouStatus, sessionState:%{private}@, fromStatus:%{private}@, toStatus:%{private}@, scenario:%{private}@, uuid:%{private}@}", buf, 0x44u);

    scenarioChangeDate = v29;
    travelingGeofenceExitDate = v28;
    earlyVehicularStateChangeDate = v27;
    v20 = v26;
    to = toCopy;

    self = selfCopy;
  }

  switch(to)
  {
    case 0uLL:
      v37 = TASALog;
      if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_121;
      }

      deviceUUIDtoMonitoringSession7 = v37;
      v39 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:v98];
      v40 = [SAWithYouDetector convertSAWithYouStatusToString:fromCopy];
      v41 = [SAWithYouDetector convertSAWithYouStatusToString:0];
      *buf = 68290051;
      v101 = 2082;
      v102 = "";
      v103 = 2113;
      v104 = v39;
      v105 = 2113;
      v106 = v40;
      v107 = 2113;
      v108 = v41;
      v109 = 2113;
      v110 = dCopy;
      _os_log_impl(&dword_2656EA000, deviceUUIDtoMonitoringSession7, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager Unknown signal state, sessionState:%{private}@, fromStatus:%{private}@, toStatus:%{private}@, uuid:%{private}@}", buf, 0x3Au);

      goto LABEL_80;
    case 2uLL:
      deviceUUIDtoMonitoringSession4 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v32 = [deviceUUIDtoMonitoringSession4 objectForKeyedSubscript:dCopy];
      firstNotWithYouLocation = [v32 firstNotWithYouLocation];

      if (firstNotWithYouLocation)
      {
        goto LABEL_14;
      }

      lastLocation = [(SAMonitoringSessionManager *)self lastLocation];
      deviceUUIDtoMonitoringSession5 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      v36 = [deviceUUIDtoMonitoringSession5 objectForKeyedSubscript:dCopy];
      [v36 setFirstNotWithYouLocation:lastLocation];

      break;
    case 1uLL:
      lastLocation = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      deviceUUIDtoMonitoringSession5 = [lastLocation objectForKeyedSubscript:dCopy];
      [deviceUUIDtoMonitoringSession5 setFirstNotWithYouLocation:0];
      break;
    default:
      goto LABEL_14;
  }

LABEL_14:
  if (v98 <= 3)
  {
    v42 = v97;
    if (v98 != 1)
    {
      if (v98 != 2)
      {
        if (v98 != 3)
        {
          goto LABEL_121;
        }

        if (to != 1)
        {
          if (to != 2)
          {
            goto LABEL_121;
          }

          if (v97 != 2)
          {
            if (v97 == 1)
            {
              v43 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289283;
                *&buf[4] = 0;
                v101 = 2082;
                v102 = "";
                v103 = 2113;
                v104 = dCopy;
                _os_log_impl(&dword_2656EA000, v43, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager travel bookending into a safe location, uuid:%{private}@}", buf, 0x1Cu);
              }

              [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:2];
              [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:dCopy];
            }

            goto LABEL_121;
          }

          if (fromCopy != 2)
          {
            goto LABEL_121;
          }

          if ([(SAMonitoringSessionManager *)self shouldIssueBookendedNotificationForDevice:dCopy])
          {
            if ([(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:scenarioChangeDate forAlertForDevice:dCopy alertType:2])
            {
              v81 = TASALog;
              if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 68289283;
                *&buf[4] = 0;
                v101 = 2082;
                v102 = "";
                v103 = 2113;
                v104 = dCopy;
                _os_log_impl(&dword_2656EA000, v81, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager issuing travel bookending notification into an unsafe location, uuid:%{private}@}", buf, 0x1Cu);
              }

              [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:2];
              selfCopy10 = self;
              v78 = dCopy;
              v79 = 1;
              goto LABEL_111;
            }

            selfCopy13 = self;
            v89 = scenarioChangeDate;
LABEL_134:
            v90 = dCopy;
            v91 = 2;
            goto LABEL_120;
          }

          v93 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            *&buf[4] = 0;
            v101 = 2082;
            v102 = "";
            v103 = 2113;
            v104 = dCopy;
            _os_log_impl(&dword_2656EA000, v93, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager not issuing travel bookending notification into an unsafe location, uuid:%{private}@}", buf, 0x1Cu);
          }

          selfCopy14 = self;
          v86 = dCopy;
          v87 = 5;
LABEL_118:
          [(SAMonitoringSessionManager *)selfCopy14 changeMonitoringSessionState:v86 toState:v87];
          goto LABEL_121;
        }

        goto LABEL_59;
      }

      if (v97 == 2)
      {
        if (to != 1)
        {
          goto LABEL_121;
        }

        if ([(SAMonitoringSessionManager *)self deviceShouldTransitionWithLastScenarioChangeDate:scenarioChangeDate lastWithYouDate:v20])
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v97 != 3)
        {
          goto LABEL_121;
        }

        if (to != 1)
        {
          goto LABEL_47;
        }

        if ([(SAMonitoringSessionManager *)self deviceShouldTransitionWithLastScenarioChangeDate:scenarioChangeDate lastWithYouDate:v20])
        {
          [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:1];
LABEL_47:
          determineTrackedTravelingCount = [(SAMonitoringSessionManager *)self determineTrackedTravelingCount];
          selfCopy8 = self;
LABEL_99:
          [(SAMonitoringSessionManager *)selfCopy8 setCaBroughtOutOnTravel:determineTrackedTravelingCount];
          goto LABEL_121;
        }
      }

      goto LABEL_119;
    }

    if (v97 != 3)
    {
      if (v97 != 2)
      {
        if (v97 != 1)
        {
          goto LABEL_121;
        }

        if (to == 2)
        {
          v48 = TASALog;
          if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289283;
            *&buf[4] = 0;
            v101 = 2082;
            v102 = "";
            v103 = 2113;
            v104 = dCopy;
            _os_log_impl(&dword_2656EA000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager travel bookending into a safe location, uuid:%{private}@}", buf, 0x1Cu);
          }

          [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:2];
          [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:dCopy];
          goto LABEL_96;
        }

        [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:dCopy];
        selfCopy7 = self;
        v74 = dCopy;
        v75 = 2;
        goto LABEL_95;
      }

      if (to != 1)
      {
        if (fromCopy != 2 || to != 2)
        {
          goto LABEL_121;
        }

        if ([(SAMonitoringSessionManager *)self shouldIssueBookendedNotificationForDevice:dCopy])
        {
          if ([(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:scenarioChangeDate forAlertForDevice:dCopy alertType:2])
          {
            v72 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289283;
              *&buf[4] = 0;
              v101 = 2082;
              v102 = "";
              v103 = 2113;
              v104 = dCopy;
              _os_log_impl(&dword_2656EA000, v72, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager issuing travel bookending notification into an unsafe location, uuid:%{private}@}", buf, 0x1Cu);
            }

            [(SAMonitoringSessionManager *)self storeSeparationLocation:dCopy];
            [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:2];
            [(SAMonitoringSessionManager *)self notifyWhileTraveling:dCopy isBookendingTravel:1];
          }

          else
          {
            [(SAMonitoringSessionManager *)self scheduleNextForceUpdateWithYouStatusFromReferenceDate:scenarioChangeDate forAlertForDevice:dCopy alertType:2];
          }

          goto LABEL_96;
        }

        v92 = TASALog;
        if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289283;
          *&buf[4] = 0;
          v101 = 2082;
          v102 = "";
          v103 = 2113;
          v104 = dCopy;
          _os_log_impl(&dword_2656EA000, v92, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager not issuing travel bookending notification into an unsafe location, uuid:%{private}@}", buf, 0x1Cu);
        }

        selfCopy7 = self;
        v74 = dCopy;
        v75 = 5;
LABEL_95:
        [(SAMonitoringSessionManager *)selfCopy7 changeMonitoringSessionState:v74 toState:v75];
        goto LABEL_96;
      }

      if ([(SAMonitoringSessionManager *)self deviceShouldTransitionWithLastScenarioChangeDate:scenarioChangeDate lastWithYouDate:v20])
      {
        [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:5];
        deviceUUIDtoMonitoringSession6 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v64 = [deviceUUIDtoMonitoringSession6 objectForKeyedSubscript:dCopy];
        scenarioClassifier2 = [v64 scenarioClassifier];
        [scenarioClassifier2 currentUnsafeLocation];
        v67 = v66 = self;

        deviceRecord = [(SAMonitoringSessionManager *)v66 deviceRecord];
        [deviceRecord updateLastWithYouLocation:v67 forDeviceWithUUID:dCopy];

        self = v66;
LABEL_96:
        if (([(SAMonitoringSessionManager *)self caBroughtOutOnTravel]& 0x8000000000000000) == 0)
        {
          analytics = [(SAMonitoringSessionManager *)self analytics];
          [analytics addNumDevicesWithYou:{-[SAMonitoringSessionManager caBroughtOutOnTravel](self, "caBroughtOutOnTravel")}];
        }

        selfCopy8 = self;
        determineTrackedTravelingCount = -1;
        goto LABEL_99;
      }

LABEL_119:
      selfCopy13 = self;
      v89 = 0;
      v90 = dCopy;
      v91 = 0;
LABEL_120:
      [(SAMonitoringSessionManager *)selfCopy13 scheduleNextForceUpdateWithYouStatusFromReferenceDate:v89 forAlertForDevice:v90 alertType:v91];
      goto LABEL_121;
    }

    if ((to == 4 || to == 2) && ![(SAMonitoringSessionManager *)self standby]&& ![(SAMonitoringSessionManager *)self isInAirplaneMode]&& [(SAMonitoringSessionManager *)self addTravelFenceForDevice:dCopy])
    {
      [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:3];
    }

    deviceUUIDtoMonitoringSession7 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v39 = [deviceUUIDtoMonitoringSession7 objectForKeyedSubscript:dCopy];
    [v39 setEarlyAirplaneTrigger:0];
LABEL_80:

    goto LABEL_121;
  }

  v42 = v97;
  if (v98 == 4)
  {
    if (to - 3 >= 2)
    {
      if (to != 1)
      {
        if (to != 2)
        {
          goto LABEL_121;
        }

        if (v97 != 1)
        {
          if (fromCopy != 2)
          {
            goto LABEL_121;
          }

          if ([(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:travelingGeofenceExitDate forAlertForDevice:dCopy alertType:2])
          {
            [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:2];
            selfCopy10 = self;
            v78 = dCopy;
            v79 = 0;
LABEL_111:
            [(SAMonitoringSessionManager *)selfCopy10 notifyWhileTraveling:v78 isBookendingTravel:v79];
            goto LABEL_121;
          }

          selfCopy13 = self;
          v89 = travelingGeofenceExitDate;
          goto LABEL_134;
        }

        [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:dCopy];
        goto LABEL_115;
      }

LABEL_59:
      [(SAMonitoringSessionManager *)self removeTravelFenceForDevice:dCopy];
      if (v42 != 3)
      {
        if (v42 != 2)
        {
          if (v42 != 1)
          {
            goto LABEL_121;
          }

          goto LABEL_115;
        }

LABEL_69:
        [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:5];
        deviceUUIDtoMonitoringSession8 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v58 = [deviceUUIDtoMonitoringSession8 objectForKeyedSubscript:dCopy];
        scenarioClassifier3 = [v58 scenarioClassifier];
        [scenarioClassifier3 currentUnsafeLocation];
        v61 = v60 = self;

        deviceRecord2 = [(SAMonitoringSessionManager *)v60 deviceRecord];
        [deviceRecord2 updateLastWithYouLocation:v61 forDeviceWithUUID:dCopy];

        goto LABEL_121;
      }

LABEL_117:
      selfCopy14 = self;
      v86 = dCopy;
      v87 = 1;
      goto LABEL_118;
    }

    v56 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_121;
    }

    deviceUUIDtoMonitoringSession7 = v56;
    v39 = [SAWithYouDetector convertSAWithYouStatusToString:to];
    *buf = 68289539;
    *&buf[4] = 0;
    v101 = 2082;
    v102 = "";
    v103 = 2113;
    v104 = dCopy;
    v105 = 2113;
    v106 = v39;
    v45 = "{msg%{public}.0s:#SAMonitoringSessionManager received unexpected status in verification stage, uuid:%{private}@, status:%{private}@}";
    goto LABEL_65;
  }

  if (v98 != 5)
  {
    if (v98 != 6)
    {
      goto LABEL_121;
    }

    v44 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_121;
    }

    deviceUUIDtoMonitoringSession7 = v44;
    v39 = [SAMonitoringSessionManager convertSAMonitoringSessionStateToString:6];
    *buf = 68289539;
    *&buf[4] = 0;
    v101 = 2082;
    v102 = "";
    v103 = 2113;
    v104 = v39;
    v105 = 2113;
    v106 = dCopy;
    v45 = "{msg%{public}.0s:#SAMonitoringSessionManager session already finished, sessionState:%{private}@, uuid:%{private}@}";
    v46 = deviceUUIDtoMonitoringSession7;
    v47 = OS_LOG_TYPE_FAULT;
    goto LABEL_66;
  }

  if (v97 == 1)
  {
    if (to == 2)
    {
      v71 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289283;
        *&buf[4] = 0;
        v101 = 2082;
        v102 = "";
        v103 = 2113;
        v104 = dCopy;
        _os_log_impl(&dword_2656EA000, v71, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:#SAMonitoringSessionManager lost from unsafe to safe, uuid:%{private}@}", buf, 0x1Cu);
      }
    }

    goto LABEL_115;
  }

  if (v97 == 2)
  {
    if (to != 2)
    {
      goto LABEL_121;
    }

    deviceUUIDtoMonitoringSession9 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v70 = [deviceUUIDtoMonitoringSession9 objectForKeyedSubscript:dCopy];
    if ([v70 earlyVehicularTrigger])
    {
    }

    else
    {
      deviceUUIDtoMonitoringSession10 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
      [deviceUUIDtoMonitoringSession10 objectForKeyedSubscript:dCopy];
      v84 = v83 = self;
      earlyAirplaneTrigger = [v84 earlyAirplaneTrigger];

      self = v83;
      if (!earlyAirplaneTrigger)
      {
        goto LABEL_121;
      }
    }

    if (![(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:earlyVehicularStateChangeDate forAlertForDevice:dCopy alertType:1])
    {
      selfCopy13 = self;
      v89 = earlyVehicularStateChangeDate;
      v90 = dCopy;
      v91 = 1;
      goto LABEL_120;
    }

    [(SAMonitoringSessionManager *)self storeSeparationLocation:dCopy];
    [(SAMonitoringSessionManager *)self notifyEarlyLeftBehind:dCopy];
LABEL_115:
    selfCopy14 = self;
    v86 = dCopy;
    v87 = 2;
    goto LABEL_118;
  }

  if (v97 != 3)
  {
    goto LABEL_121;
  }

  if (to - 3 < 2)
  {
    v80 = TASALog;
    if (!os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_121;
    }

    deviceUUIDtoMonitoringSession7 = v80;
    v39 = [SAWithYouDetector convertSAWithYouStatusToString:to];
    *buf = 68289539;
    *&buf[4] = 0;
    v101 = 2082;
    v102 = "";
    v103 = 2113;
    v104 = dCopy;
    v105 = 2113;
    v106 = v39;
    v45 = "{msg%{public}.0s:#SAMonitoringSessionManager received unexpected status in left location stage, uuid:%{private}@, status:%{private}@}";
LABEL_65:
    v46 = deviceUUIDtoMonitoringSession7;
    v47 = OS_LOG_TYPE_ERROR;
LABEL_66:
    _os_log_impl(&dword_2656EA000, v46, v47, v45, buf, 0x26u);
    goto LABEL_80;
  }

  if (to == 1)
  {
    if ([(SAMonitoringSessionManager *)self deviceShouldTransitionWithLastScenarioChangeDate:scenarioChangeDate lastWithYouDate:v20])
    {
      goto LABEL_117;
    }

    goto LABEL_119;
  }

  if (to == 2 && fromCopy == 2)
  {
    v51 = scenarioChangeDate;
    deviceUUIDtoMonitoringSession11 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    v53 = [deviceUUIDtoMonitoringSession11 objectForKeyedSubscript:dCopy];
    earlyVehicularTrigger = [v53 earlyVehicularTrigger];

    if (earlyVehicularTrigger)
    {
      v55 = [earlyVehicularStateChangeDate earlierDate:v51];

      v51 = v55;
    }

    if ([(SAMonitoringSessionManager *)self enoughTimeHasPassedBeforeSurfacingAlert:v51 forAlertForDevice:dCopy alertType:1])
    {
      [(SAMonitoringSessionManager *)self storeSeparationLocation:dCopy];
      [(SAMonitoringSessionManager *)self notifyWhenLeftBehind:dCopy];
      [(SAMonitoringSessionManager *)self changeMonitoringSessionState:dCopy toState:2];
    }

    else
    {
      [(SAMonitoringSessionManager *)self scheduleNextForceUpdateWithYouStatusFromReferenceDate:v51 forAlertForDevice:dCopy alertType:1];
    }
  }

LABEL_121:
}

- (id)getLastScenarioChangeDateAmongAllDevices
{
  v23 = *MEMORY[0x277D85DE8];
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  allKeys = [deviceUUIDtoMonitoringSession allKeys];

  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = allKeys;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
        v13 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v11];

        scenarioClassifier = [v13 scenarioClassifier];
        scenarioChangeDate = [scenarioClassifier scenarioChangeDate];

        if ([distantPast compare:scenarioChangeDate] == -1)
        {
          v16 = scenarioChangeDate;

          distantPast = v16;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return distantPast;
}

- (void)scheduleNextForceUpdateWithYouStatusFromReferenceDate:(id)date forAlertForDevice:(id)device alertType:(unint64_t)type
{
  dateCopy = date;
  deviceCopy = device;
  devicesWithPendingTransition = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
  [devicesWithPendingTransition addObject:deviceCopy];

  if (!self->_scheduledAlarmForForceUpdateWithYouStatus)
  {
    getLastScenarioChangeDateAmongAllDevices = dateCopy;
    if (!dateCopy)
    {
      getLastScenarioChangeDateAmongAllDevices = [(SAMonitoringSessionManager *)self getLastScenarioChangeDateAmongAllDevices];
    }

    dateCopy = getLastScenarioChangeDateAmongAllDevices;
    if ([(SAMonitoringSessionManager *)self _isOnlyMonitoringCompanionDevice])
    {
      v11 = MEMORY[0x277CBEAA8];
      v12 = 30.0;
    }

    else
    {
      if ([(SAMonitoringSessionManager *)self standby])
      {
        v13 = 6.0;
      }

      else
      {
        v13 = 39.0;
      }

      v14 = MEMORY[0x277CBEAA8];
      [(SAMonitoringSessionManager *)self timeDelayForRetryScanForAlertForDeviceUUID:deviceCopy alertType:type];
      v12 = v15 - v13;
      v11 = v14;
    }

    v16 = [v11 dateWithTimeInterval:dateCopy sinceDate:v12];
    getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    v18 = [v16 compare:getCurrentTime];

    if (v18 == -1)
    {
      standby = [(SAMonitoringSessionManager *)self standby];
      withYouDetector = [(SAMonitoringSessionManager *)self withYouDetector];
      v19 = withYouDetector;
      if (standby)
      {
        [withYouDetector forceUpdateWithYouStatusWithShortScan:0];
      }

      else
      {
        [withYouDetector forceUpdateWithYouStatus];
      }
    }

    else
    {
      v19 = [(SATimeServiceProtocol *)self->_clock setupAlarmFireAt:v16 forClient:self];
      [(SAMonitoringSessionManager *)self setScheduledAlarmForForceUpdateWithYouStatus:v19];
    }
  }
}

- (BOOL)_isOnlyMonitoringCompanionDevice
{
  v21 = *MEMORY[0x277D85DE8];
  deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
  allKeys = [deviceUUIDtoMonitoringSession allKeys];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = allKeys;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10, v16];

        if (v11)
        {
          v12 = [(SADeviceRecord *)self->_deviceRecord getSADevice:v10];
          deviceType = [v12 deviceType];

          if (deviceType != 8)
          {
            v14 = 0;
            goto LABEL_12;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_12:

  return v14;
}

- (void)scheduleNextPersistenceWrite
{
  nextScheduledAlarmForPersistenceWrite = [(SAMonitoringSessionManager *)self nextScheduledAlarmForPersistenceWrite];

  if (!nextScheduledAlarmForPersistenceWrite)
  {
    clock = [(SAMonitoringSessionManager *)self clock];
    v4 = MEMORY[0x277CBEAA8];
    getCurrentTime = [(SATimeServiceProtocol *)self->_clock getCurrentTime];
    v6 = [v4 dateWithTimeInterval:getCurrentTime sinceDate:1.0];
    v7 = [clock setupAlarmFireAt:v6 forClient:self];
    [(SAMonitoringSessionManager *)self setNextScheduledAlarmForPersistenceWrite:v7];
  }
}

- (double)timeDelayForRetryScanForAlertForDeviceUUID:(id)d alertType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  devices = [(SAMonitoringSessionManager *)self devices];
  v8 = [devices objectForKeyedSubscript:dCopy];

  v9 = [(SAWithYouDetectorServiceProtocol *)self->_withYouDetector statusForDeviceWithUUID:dCopy];
  v10 = TASALog;
  if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEBUG))
  {
    v13[0] = 68289795;
    v13[1] = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2113;
    v17 = dCopy;
    v18 = 2049;
    typeCopy = type;
    v20 = 2049;
    v21 = v9;
    _os_log_impl(&dword_2656EA000, v10, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:SAMonitoringSessionManager schedule retry scan, uuid:%{private}@, alertType:%{private}ld, withYouStatus:%{private}ld}", v13, 0x30u);
  }

  if (![v8 isAppleAudioAccessory] || (v11 = 360.0, type != 2) && (type || (v9 & 0xFFFFFFFFFFFFFFFBLL) != 0))
  {
    v11 = 120.0;
  }

  return v11;
}

- (BOOL)enoughTimeHasPassedBeforeSurfacingAlert:(id)alert forAlertForDevice:(id)device alertType:(unint64_t)type
{
  if (!alert)
  {
    return 1;
  }

  deviceCopy = device;
  alertCopy = alert;
  clock = [(SAMonitoringSessionManager *)self clock];
  getCurrentTime = [clock getCurrentTime];
  [getCurrentTime timeIntervalSinceDate:alertCopy];
  v13 = v12;

  [(SAMonitoringSessionManager *)self minimumTimeSinceScenarioTransitionForAlertForDeviceUUID:deviceCopy alertType:type];
  v15 = v14;

  v16 = v13 >= v15;
  return v16;
}

- (double)minimumTimeSinceScenarioTransitionForAlertForDeviceUUID:(id)d alertType:(unint64_t)type
{
  v5 = [(SADeviceRecord *)self->_deviceRecord getSADevice:d];
  deviceType = [v5 deviceType];
  isAppleAudioAccessory = [v5 isAppleAudioAccessory];
  v8 = 108.0;
  if (deviceType != 16)
  {
    v8 = 30.0;
  }

  if (((type == 2) & isAppleAudioAccessory) != 0)
  {
    v9 = 324.0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)alarmFiredForUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if ([dCopy isEqual:self->_nextScheduledAlarmForPersistenceWrite])
  {
    persistenceManager = self->_persistenceManager;
    deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    [(SAPersistenceManager *)persistenceManager onUpdatedMonitoringSessionRecord:deviceUUIDtoMonitoringSession];

    nextScheduledAlarmForPersistenceWrite = self->_nextScheduledAlarmForPersistenceWrite;
    self->_nextScheduledAlarmForPersistenceWrite = 0;
  }

  if ([dCopy isEqual:self->_scheduledAlarmForForceUpdateWithYouStatus])
  {
    devicesWithPendingTransition = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
    v9 = [devicesWithPendingTransition count];

    if (v9)
    {
      standby = [(SAMonitoringSessionManager *)self standby];
      v11 = TASALog;
      v12 = os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT);
      if (standby)
      {
        if (v12)
        {
          v17 = 68289026;
          v18 = 0;
          v19 = 2082;
          v20 = "";
          _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAMonitoringSessionManager alarm fired while standby, requesting short aggressive scan}", &v17, 0x12u);
        }

        [(SAWithYouDetectorServiceProtocol *)self->_withYouDetector forceUpdateWithYouStatusWithShortScan:0];
      }

      else
      {
        if (v12)
        {
          v17 = 68289283;
          v18 = 0;
          v19 = 2082;
          v20 = "";
          v21 = 2049;
          v22 = v9;
          _os_log_impl(&dword_2656EA000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:SAMonitoringSessionManager alarm fired while not standby, requesting a terminable long aggressive scan, devices pending transition count:%{private}ld}", &v17, 0x1Cu);
        }

        withYouDetector = self->_withYouDetector;
        devicesWithPendingTransition2 = [(SAMonitoringSessionManager *)self devicesWithPendingTransition];
        allObjects = [devicesWithPendingTransition2 allObjects];
        [(SAWithYouDetectorServiceProtocol *)withYouDetector forceUpdateWithYouStatusToFindDevices:allObjects withContext:8];
      }
    }

    scheduledAlarmForForceUpdateWithYouStatus = self->_scheduledAlarmForForceUpdateWithYouStatus;
    self->_scheduledAlarmForForceUpdateWithYouStatus = 0;
  }
}

- (void)didChangeTravelTypeFrom:(unint64_t)from to:(unint64_t)to hints:(unint64_t)hints
{
  v52 = *MEMORY[0x277D85DE8];
  [(SAMonitoringSessionManager *)self setCaCurrentVehicularState:to];
  [(SAMonitoringSessionManager *)self setCaIsVehicularBTHintOn:(hints >> 4) & 1];
  standby = [(SAMonitoringSessionManager *)self standby];
  if (to == 1 && !standby && [(SAMonitoringSessionManager *)self enabled])
  {
    allValues = objc_alloc_init(MEMORY[0x277CBEB18]);
    deviceUUIDtoMonitoringSession = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    allKeys = [deviceUUIDtoMonitoringSession allKeys];

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = allKeys;
    v12 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
    if (v12)
    {
      v14 = v12;
      v15 = *v37;
      *&v13 = 68289026;
      v34 = v13;
      do
      {
        v16 = 0;
        do
        {
          if (*v37 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v36 + 1) + 8 * v16);
          deviceUUIDtoMonitoringSession2 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
          v19 = [deviceUUIDtoMonitoringSession2 objectForKeyedSubscript:v17];

          devices = [(SAMonitoringSessionManager *)self devices];
          v21 = [devices objectForKeyedSubscript:v17];

          if (v21)
          {
            if ([v19 state] == 5)
            {
              [v19 setEarlyVehicularTrigger:1];
              clock = [(SAMonitoringSessionManager *)self clock];
              getCurrentTime = [clock getCurrentTime];
              [v19 setEarlyVehicularStateChangeDate:getCurrentTime];

              [allValues addObject:v17];
            }
          }

          else
          {
            v24 = TASALog;
            if (os_log_type_enabled(TASALog, OS_LOG_TYPE_ERROR))
            {
              *buf = v34;
              v45 = 0;
              v46 = 2082;
              v47 = "";
              _os_log_impl(&dword_2656EA000, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:SAMonitoringSessionManager device found in monitoringSession list, but not in devices list}", buf, 0x12u);
            }
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v36 objects:v50 count:16];
      }

      while (v14);
    }

    v25 = [allValues count];
    if (v25)
    {
      v26 = v25;
      v27 = TASALog;
      if (os_log_type_enabled(TASALog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289283;
        v45 = 0;
        v46 = 2082;
        v47 = "";
        v48 = 2049;
        v49 = v26;
        _os_log_impl(&dword_2656EA000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#SAMonitoringSessionManager requesting terminable long aggressive scan on travel type change, count of devices to find:%{private}ld}", buf, 0x1Cu);
      }

      withYouDetector = [(SAMonitoringSessionManager *)self withYouDetector];
      [withYouDetector forceUpdateWithYouStatusToFindDevices:allValues withContext:7];
    }
  }

  else
  {
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    deviceUUIDtoMonitoringSession3 = [(SAMonitoringSessionManager *)self deviceUUIDtoMonitoringSession];
    allValues = [deviceUUIDtoMonitoringSession3 allValues];

    v30 = [allValues countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v41;
      do
      {
        v33 = 0;
        do
        {
          if (*v41 != v32)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v40 + 1) + 8 * v33++) setEarlyVehicularTrigger:0];
        }

        while (v31 != v33);
        v31 = [allValues countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v31);
    }
  }
}

- (void)setSafeLocations:(void *)a3 forDeviceUUID:(void *)a4 .cold.1(uint8_t *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 UUIDString];
  *a1 = 138477827;
  *a4 = v8;
  _os_log_error_impl(&dword_2656EA000, v7, OS_LOG_TYPE_ERROR, "#SAMonitoringSessionManager attempted adding non-existing location, for deviceId, %{private}@", a1, 0xCu);
}

@end