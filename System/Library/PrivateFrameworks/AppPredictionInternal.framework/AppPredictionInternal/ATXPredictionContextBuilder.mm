@interface ATXPredictionContextBuilder
+ (id)loadContextOverrideFromJSONFile:(id)file;
+ (id)sharedInstance;
- (ATXPredictionContextBuilder)initWithAppInfoManager:(id)manager locationManager:(id)locationManager motionManagerWrapper:(id)wrapper ambientLightMonitor:(id)monitor deviceStateMonitorClass:(Class)class contextSourcesInitialized:(BOOL)initialized;
- (ATXPredictionContextBuilder)initWithAppInfoManager:(id)manager locationManager:(id)locationManager motionManagerWrapper:(id)wrapper ambientLightMonitor:(id)monitor deviceStateMonitorClass:(Class)class contextSourcesInitialized:(BOOL)initialized contextStream:(id)stream biomeStreamsInitialized:(BOOL)self0;
- (BOOL)tryInitBiomeStreamsAndReturnSuccess:(id)success;
- (BOOL)tryInitContextSourcesAndReturnSuccess:(id)success;
- (NSDate)now;
- (id)_getContextForOverrideKey:(id)key fromContextOverride:(id)override withDefaultContext:(id)context allowNilValues:(BOOL)values;
- (id)ambientLightContextForContextOverride:(id)override guardedData:(id)data;
- (id)ambientLightContextForCurrentContext:(id)context;
- (id)deviceStateContextForContextOverride:(id)override guardedData:(id)data;
- (id)deviceStateContextForCurrentContext:(id)context;
- (id)locationMotionContextForContextOverride:(id)override guardedData:(id)data;
- (id)locationMotionContextForCurrentContext:(id)context;
- (id)predictionContextForContextOverride:(id)override;
- (id)predictionContextForCurrentContext;
- (id)predictionContextForCurrentContextAndCandidatePublisher:(id)publisher contextOverride:(id)override;
- (id)timeContextForContextOverride:(id)override guardedData:(id)data;
- (id)timeContextForCurrentContext:(id)context;
- (id)updateContextStreamAndReturnPredictionContextForCurrentContext;
- (id)userContextForContextOverride:(id)override guardedData:(id)data;
- (id)userContextForCurrentContext:(id)context;
@end

@implementation ATXPredictionContextBuilder

- (id)updateContextStreamAndReturnPredictionContextForCurrentContext
{
  predictionContextForCurrentContext = [(ATXPredictionContextBuilder *)self predictionContextForCurrentContext];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy__23;
  v13[4] = __Block_byref_object_dispose__23;
  v14 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __93__ATXPredictionContextBuilder_updateContextStreamAndReturnPredictionContextForCurrentContext__block_invoke;
  v12[3] = &unk_278599268;
  v12[4] = v13;
  [(_PASLock *)lock runWithLockAcquired:v12];
  v5 = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __93__ATXPredictionContextBuilder_updateContextStreamAndReturnPredictionContextForCurrentContext__block_invoke_2;
  v10[3] = &unk_278599290;
  v10[4] = self;
  v6 = predictionContextForCurrentContext;
  v11 = v6;
  [(_PASLock *)v5 runWithLockAcquired:v10];
  v7 = v11;
  v8 = v6;

  _Block_object_dispose(v13, 8);

  return v8;
}

- (id)predictionContextForCurrentContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__23;
  v10 = __Block_byref_object_dispose__23;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ATXPredictionContextBuilder_predictionContextForCurrentContext__block_invoke;
  v5[3] = &unk_278599240;
  v5[4] = self;
  v5[5] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (ATXPredictionContextBuilder)initWithAppInfoManager:(id)manager locationManager:(id)locationManager motionManagerWrapper:(id)wrapper ambientLightMonitor:(id)monitor deviceStateMonitorClass:(Class)class contextSourcesInitialized:(BOOL)initialized
{
  initializedCopy = initialized;
  monitorCopy = monitor;
  wrapperCopy = wrapper;
  locationManagerCopy = locationManager;
  managerCopy = manager;
  v18 = objc_opt_new();
  LOBYTE(v21) = 1;
  v19 = [(ATXPredictionContextBuilder *)self initWithAppInfoManager:managerCopy locationManager:locationManagerCopy motionManagerWrapper:wrapperCopy ambientLightMonitor:monitorCopy deviceStateMonitorClass:class contextSourcesInitialized:initializedCopy contextStream:v18 biomeStreamsInitialized:v21];

  return v19;
}

- (ATXPredictionContextBuilder)initWithAppInfoManager:(id)manager locationManager:(id)locationManager motionManagerWrapper:(id)wrapper ambientLightMonitor:(id)monitor deviceStateMonitorClass:(Class)class contextSourcesInitialized:(BOOL)initialized contextStream:(id)stream biomeStreamsInitialized:(BOOL)self0
{
  initializedCopy = initialized;
  managerCopy = manager;
  locationManagerCopy = locationManager;
  wrapperCopy = wrapper;
  monitorCopy = monitor;
  streamCopy = stream;
  v26.receiver = self;
  v26.super_class = ATXPredictionContextBuilder;
  v21 = [(ATXPredictionContextBuilder *)&v26 init];
  if (v21)
  {
    v22 = objc_opt_new();
    [v22 updateAppInfoManager:managerCopy locationManager:locationManagerCopy motionManagerWrapper:wrapperCopy ambientLightMonitor:monitorCopy deviceStateMonitorClass:class contextSourcesInitialized:initializedCopy];
    [v22 updatePredictionContextStream:streamCopy biomeStreamsInitialized:streamsInitialized];
    v23 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v22];
    lock = v21->_lock;
    v21->_lock = v23;
  }

  return v21;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__ATXPredictionContextBuilder_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7_6 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_6, block);
  }

  v2 = sharedInstance__pasExprOnceResult_7;

  return v2;
}

void __45__ATXPredictionContextBuilder_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  objc_opt_class();
  v2 = objc_opt_new();
  v3 = sharedInstance__pasExprOnceResult_7;
  sharedInstance__pasExprOnceResult_7 = v2;

  objc_autoreleasePoolPop(v1);
}

- (BOOL)tryInitContextSourcesAndReturnSuccess:(id)success
{
  successCopy = success;
  if (([successCopy contextSourcesInitialized] & 1) == 0 && (objc_msgSend(MEMORY[0x277D42598], "isClassCLocked") & 1) == 0)
  {
    v4 = +[_ATXAppInfoManager sharedInstance];
    mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
    mEMORY[0x277D41C38] = [MEMORY[0x277D41C38] sharedInstance];
    v7 = +[ATXAmbientLightMonitor sharedInstance];
    [successCopy updateAppInfoManager:v4 locationManager:mEMORY[0x277D41BF8] motionManagerWrapper:mEMORY[0x277D41C38] ambientLightMonitor:v7 deviceStateMonitorClass:objc_opt_class() contextSourcesInitialized:1];
  }

  contextSourcesInitialized = [successCopy contextSourcesInitialized];

  return contextSourcesInitialized;
}

- (BOOL)tryInitBiomeStreamsAndReturnSuccess:(id)success
{
  successCopy = success;
  if (([successCopy biomeStreamsInitialized] & 1) == 0)
  {
    v4 = objc_opt_new();
    [successCopy updatePredictionContextStream:v4 biomeStreamsInitialized:1];
  }

  biomeStreamsInitialized = [successCopy biomeStreamsInitialized];

  return biomeStreamsInitialized;
}

- (id)deviceStateContextForCurrentContext:(id)context
{
  contextCopy = context;
  v4 = [ATXPredictionDeviceStateContext alloc];
  v5 = [objc_msgSend(contextCopy "deviceStateMonitorClass")];
  v6 = [objc_msgSend(contextCopy "deviceStateMonitorClass")];
  deviceStateMonitorClass = [contextCopy deviceStateMonitorClass];

  v8 = -[ATXPredictionDeviceStateContext initWithWifiSSID:onWifi:inAirplaneMode:](v4, "initWithWifiSSID:onWifi:inAirplaneMode:", v5, v6, [deviceStateMonitorClass airplaneMode]);

  return v8;
}

- (id)timeContextForCurrentContext:(id)context
{
  v4 = [ATXPredictionTimeContext alloc];
  v5 = [(ATXPredictionContextBuilder *)self now];
  v6 = [(ATXPredictionTimeContext *)v4 initWithDate:v5];

  return v6;
}

- (id)locationMotionContextForCurrentContext:(id)context
{
  contextCopy = context;
  locationManager = [contextCopy locationManager];
  previousLOIAndCurrentLOI = [locationManager previousLOIAndCurrentLOI];

  motionManagerWrapper = [contextCopy motionManagerWrapper];
  getCurrentActivity = [motionManagerWrapper getCurrentActivity];

  v8 = [ATXPredictionLocationMotionContext alloc];
  v29 = previousLOIAndCurrentLOI;
  second = [previousLOIAndCurrentLOI second];
  first = [previousLOIAndCurrentLOI first];
  motiontype = [getCurrentActivity motiontype];
  locationManager2 = [contextCopy locationManager];
  getCurrentLocation = [locationManager2 getCurrentLocation];
  locationManager3 = [contextCopy locationManager];
  locationEnabled = [locationManager3 locationEnabled];
  locationManager4 = [contextCopy locationManager];
  [locationManager4 distanceFromHomeOfCurrentLocationInMeters];
  v14 = v13;
  locationManager5 = [contextCopy locationManager];
  [locationManager5 distanceFromWorkOfCurrentLocationInMeters];
  v17 = v16;
  locationManager6 = [contextCopy locationManager];
  [locationManager6 distanceFromSchoolOfCurrentLocationInMeters];
  v20 = v19;
  locationManager7 = [contextCopy locationManager];

  [locationManager7 distanceFromGymOfCurrentLocationInMeters];
  v23 = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](v8, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", second, first, motiontype, getCurrentLocation, locationEnabled, [getCurrentActivity canPredictClipsGivenRecentMotion], v14, v17, v20, v22);

  return v23;
}

- (id)ambientLightContextForCurrentContext:(id)context
{
  contextCopy = context;
  v4 = [ATXPredictionAmbientLightContext alloc];
  ambientLightMonitor = [contextCopy ambientLightMonitor];

  v6 = -[ATXPredictionAmbientLightContext initWithAmbientLightType:](v4, "initWithAmbientLightType:", [ambientLightMonitor getCurrentAmbientLightType]);

  return v6;
}

- (id)userContextForCurrentContext:(id)context
{
  contextCopy = context;
  v4 = [ATXPredictionUserContext alloc];
  appInfoManager = [contextCopy appInfoManager];
  lastUnlockDate = [appInfoManager lastUnlockDate];
  appInfoManager2 = [contextCopy appInfoManager];
  lastAppLaunch = [appInfoManager2 lastAppLaunch];
  appInfoManager3 = [contextCopy appInfoManager];
  lastAppLaunchDate = [appInfoManager3 lastAppLaunchDate];
  appInfoManager4 = [contextCopy appInfoManager];
  secondMostRecentAppLaunch = [appInfoManager4 secondMostRecentAppLaunch];
  appInfoManager5 = [contextCopy appInfoManager];

  lastAppActionLaunch = [appInfoManager5 lastAppActionLaunch];
  v14 = [(ATXPredictionUserContext *)v4 initWithLastUnlockDate:lastUnlockDate lastAppLaunch:lastAppLaunch lastAppLaunchDate:lastAppLaunchDate secondMostRecentAppLaunch:secondMostRecentAppLaunch lastAppActionLaunch:lastAppActionLaunch];

  return v14;
}

void __65__ATXPredictionContextBuilder_predictionContextForCurrentContext__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if ([*(a1 + 32) tryInitContextSourcesAndReturnSuccess:?])
  {
    v3 = [ATXPredictionContext alloc];
    v4 = [*(a1 + 32) deviceStateContextForCurrentContext:v12];
    v5 = [*(a1 + 32) timeContextForCurrentContext:v12];
    v6 = [*(a1 + 32) locationMotionContextForCurrentContext:v12];
    v7 = [*(a1 + 32) ambientLightContextForCurrentContext:v12];
    v8 = [*(a1 + 32) userContextForCurrentContext:v12];
    v9 = [(ATXPredictionContext *)v3 initWithDeviceStateContext:v4 timeContext:v5 locationMotionContext:v6 ambientLightContext:v7 userContext:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }
}

void __93__ATXPredictionContextBuilder_updateContextStreamAndReturnPredictionContextForCurrentContext__block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 locationManager];
  v3 = [v6 getCurrentLocation];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __93__ATXPredictionContextBuilder_updateContextStreamAndReturnPredictionContextForCurrentContext__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) tryInitBiomeStreamsAndReturnSuccess:v3] && *(a1 + 40))
  {
    v4 = CLLocationCoordinate2DMake(0.0, 0.0);
    v5 = [*(a1 + 40) locationMotionContext];
    v6 = [v5 currentLOI];
    [v6 setCoordinate:{v4.latitude, v4.longitude}];

    v7 = CLLocationCoordinate2DMake(0.0, 0.0);
    v8 = [*(a1 + 40) locationMotionContext];
    v9 = [v8 previousLOI];
    [v9 setCoordinate:{v7.latitude, v7.longitude}];

    v11 = __atxlog_handle_default(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_2263AA000, v11, OS_LOG_TYPE_DEFAULT, "%@ - updating prediction context Biome stream.", &v15, 0xCu);
    }

    v14 = [v3 predictionContextStream];
    [v14 sendEvent:*(a1 + 40)];
  }
}

- (NSDate)now
{
  now = self->_now;
  if (now)
  {
    v3 = now;
  }

  else
  {
    v3 = objc_opt_new();
  }

  return v3;
}

- (id)_getContextForOverrideKey:(id)key fromContextOverride:(id)override withDefaultContext:(id)context allowNilValues:(BOOL)values
{
  valuesCopy = values;
  keyCopy = key;
  overrideCopy = override;
  contextCopy = context;
  if (!contextCopy && !valuesCopy)
  {
    v12 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      [ATXPredictionContextBuilder _getContextForOverrideKey:v12 fromContextOverride:? withDefaultContext:? allowNilValues:?];
    }
  }

  v13 = [overrideCopy objectForKey:keyCopy];
  null = [MEMORY[0x277CBEB68] null];
  v15 = [v13 isEqual:null];

  if (valuesCopy)
  {
    v16 = 0;
  }

  else
  {
    v16 = contextCopy;
  }

  if (v13)
  {
    v17 = v13;
  }

  else
  {
    v17 = contextCopy;
  }

  if (!v15)
  {
    v16 = v17;
  }

  v18 = v16;

  return v18;
}

- (id)deviceStateContextForContextOverride:(id)override guardedData:(id)data
{
  overrideCopy = override;
  v7 = [(ATXPredictionContextBuilder *)self deviceStateContextForCurrentContext:data];
  wifiSSID = [v7 wifiSSID];
  v9 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideWifiSSID" fromContextOverride:overrideCopy withDefaultContext:wifiSSID allowNilValues:0];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "onWifi")}];
  v11 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideOnWifi" fromContextOverride:overrideCopy withDefaultContext:v10 allowNilValues:0];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "inAirplaneMode")}];
  v13 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideInAirplaneMode" fromContextOverride:overrideCopy withDefaultContext:v12 allowNilValues:0];

  v14 = -[ATXPredictionDeviceStateContext initWithWifiSSID:onWifi:inAirplaneMode:]([ATXPredictionDeviceStateContext alloc], "initWithWifiSSID:onWifi:inAirplaneMode:", v9, [v11 BOOLValue], objc_msgSend(v13, "BOOLValue"));

  return v14;
}

- (id)timeContextForContextOverride:(id)override guardedData:(id)data
{
  overrideCopy = override;
  v7 = [(ATXPredictionContextBuilder *)self timeContextForCurrentContext:data];
  date = [v7 date];
  v9 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideDate" fromContextOverride:overrideCopy withDefaultContext:date allowNilValues:0];

  v10 = [[ATXPredictionTimeContext alloc] initWithDate:v9];

  return v10;
}

- (id)locationMotionContextForContextOverride:(id)override guardedData:(id)data
{
  v94 = *MEMORY[0x277D85DE8];
  overrideCopy = override;
  dataCopy = data;
  v75 = [(ATXPredictionContextBuilder *)self locationMotionContextForCurrentContext:?];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v75, "locationEnabled")}];
  v70 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLocationEnabled" fromContextOverride:overrideCopy withDefaultContext:v6 allowNilValues:0];

  v7 = [MEMORY[0x277D41C40] stringForMotionType:{objc_msgSend(v75, "motionType")}];
  v72 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideMotionType" fromContextOverride:overrideCopy withDefaultContext:v7 allowNilValues:0];

  v92 = 0;
  v8 = [MEMORY[0x277D41C40] motionTypeForString:v72 found:&v92];
  v68 = v8;
  if ((v92 & 1) == 0)
  {
    v9 = __atxlog_handle_default(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [ATXPredictionContextBuilder locationMotionContextForContextOverride:v9 guardedData:?];
    }

    v68 = 4;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v75, "canPredictClipsGivenRecentMotion")}];
  v69 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverridecanPredictClipsGivenRecentMotion" fromContextOverride:overrideCopy withDefaultContext:v10 allowNilValues:0];

  locationManager = [dataCopy locationManager];
  getCurrentLocation = [locationManager getCurrentLocation];
  v13 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideCurrentLocation" fromContextOverride:overrideCopy withDefaultContext:getCurrentLocation allowNilValues:1];

  locationManager2 = [dataCopy locationManager];
  previousLOIAndCurrentLOI = [locationManager2 previousLOIAndCurrentLOI];
  first = [previousLOIAndCurrentLOI first];

  if (first)
  {
    v16 = objc_alloc(MEMORY[0x277CE41F8]);
    [first coordinate];
    v18 = v17;
    [first coordinate];
    v20 = [v16 initWithLatitude:v18 longitude:v19];
    v21 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverridePreviousLocation" fromContextOverride:overrideCopy withDefaultContext:v20 allowNilValues:1];
  }

  else
  {
    v21 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverridePreviousLocation" fromContextOverride:overrideCopy withDefaultContext:0 allowNilValues:1];
  }

  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__23;
  v90 = __Block_byref_object_dispose__23;
  v91 = 0;
  v22 = dispatch_semaphore_create(0);
  locationManager3 = [dataCopy locationManager];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __83__ATXPredictionContextBuilder_locationMotionContextForContextOverride_guardedData___block_invoke;
  v83[3] = &unk_278597EC0;
  v85 = &v86;
  v71 = v22;
  v84 = v71;
  [locationManager3 fetchAllLocationsOfInterest:v83];

  v24 = [MEMORY[0x277D425A0] waitForSemaphore:v71 timeoutSeconds:5.0];
  if (v24 == 1)
  {
    v25 = __atxlog_handle_default(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [ATXPredictionContextBuilder locationMotionContextForContextOverride:v25 guardedData:?];
    }
  }

  [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLocationsOfInterest" fromContextOverride:overrideCopy withDefaultContext:v87[5] allowNilValues:1];
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  obj = v80 = 0u;
  v26 = [obj countByEnumeratingWithState:&v79 objects:v93 count:16];
  v27 = *MEMORY[0x277D41CB8];
  v28 = 0;
  if (v26)
  {
    v78 = 0;
    v29 = *MEMORY[0x277CE41E0];
    v30 = *v80;
    v31 = *MEMORY[0x277D41CB8];
    v32 = *MEMORY[0x277D41CB8];
    v33 = *MEMORY[0x277D41CB8];
    v34 = *MEMORY[0x277CE41E0];
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v80 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v36 = *(*(&v79 + 1) + 8 * i);
        v37 = objc_alloc(MEMORY[0x277CE41F8]);
        [v36 coordinate];
        v39 = v38;
        [v36 coordinate];
        v40 = [v37 initWithLatitude:v39 longitude:?];
        [v13 distanceFromLocation:v40];
        if (v13)
        {
          v42 = v41;
          if (v41 < 400.0 && v41 < v34)
          {
            v44 = v36;

            v34 = v42;
            v78 = v44;
          }
        }

        [v21 distanceFromLocation:v40];
        if (v21)
        {
          v46 = v45;
          if (v45 < 400.0 && v45 < v29)
          {
            v48 = v36;

            v29 = v46;
            v28 = v48;
          }
        }

        if (v13)
        {
          if (![v36 type])
          {
            [v13 distanceFromLocation:v40];
            v27 = v49;
          }

          if ([v36 type] == 1)
          {
            [v13 distanceFromLocation:v40];
            v31 = v50;
          }

          if ([v36 type] == 2)
          {
            [v13 distanceFromLocation:v40];
            v32 = v51;
          }

          if ([v36 type] == 3)
          {
            [v13 distanceFromLocation:v40];
            v33 = v52;
          }
        }
      }

      v26 = [obj countByEnumeratingWithState:&v79 objects:v93 count:16];
    }

    while (v26);
  }

  else
  {
    v78 = 0;
    v31 = *MEMORY[0x277D41CB8];
    v32 = *MEMORY[0x277D41CB8];
    v33 = *MEMORY[0x277D41CB8];
  }

  v53 = [ATXPredictionLocationMotionContext alloc];
  bOOLValue = [v70 BOOLValue];
  v55 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
  [v55 doubleValue];
  v57 = v56;
  v58 = [MEMORY[0x277CCABB0] numberWithDouble:v31];
  [v58 doubleValue];
  v60 = v59;
  v61 = [MEMORY[0x277CCABB0] numberWithDouble:v32];
  [v61 doubleValue];
  v63 = v62;
  v64 = [MEMORY[0x277CCABB0] numberWithDouble:v33];
  [v64 doubleValue];
  v66 = -[ATXPredictionLocationMotionContext initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:](v53, "initWithCurrentLOI:previousLOI:motionType:currentLocation:locationEnabled:distanceFromHome:distanceFromWork:distanceFromSchool:distanceFromGym:canPredictClipsGivenRecentMotion:", v78, v28, v68, v13, bOOLValue, [v69 BOOLValue], v57, v60, v63, v65);

  _Block_object_dispose(&v86, 8);

  return v66;
}

void __83__ATXPredictionContextBuilder_locationMotionContextForContextOverride_guardedData___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)ambientLightContextForContextOverride:(id)override guardedData:(id)data
{
  overrideCopy = override;
  v7 = [(ATXPredictionContextBuilder *)self ambientLightContextForCurrentContext:data];
  ambientLightType = [v7 ambientLightType];
  if (ambientLightType >= 8)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", ambientLightType];
  }

  else
  {
    v9 = off_2785992D8[ambientLightType];
  }

  v10 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideAmbientLightType" fromContextOverride:overrideCopy withDefaultContext:v9 allowNilValues:0];

  v11 = v10;
  v12 = 0;
  if (([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeDark"] & 1) == 0)
  {
    if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorDark"])
    {
      v12 = 1;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoorDark"])
    {
      v12 = 2;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorArtificialLight"])
    {
      v12 = 3;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeIndoorBrightArtificialLight"])
    {
      v12 = 4;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoor"])
    {
      v12 = 5;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeOutdoorDirectSun"])
    {
      v12 = 6;
    }

    else if ([v11 isEqualToString:@"ProactiveAppPredictionAmbientLightTypeUnknown"])
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }
  }

  v13 = [[ATXPredictionAmbientLightContext alloc] initWithAmbientLightType:v12];

  return v13;
}

- (id)userContextForContextOverride:(id)override guardedData:(id)data
{
  overrideCopy = override;
  v7 = [(ATXPredictionContextBuilder *)self userContextForCurrentContext:data];
  lastUnlockDate = [v7 lastUnlockDate];
  v9 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLastUnlockDate" fromContextOverride:overrideCopy withDefaultContext:lastUnlockDate allowNilValues:1];

  lastAppLaunch = [v7 lastAppLaunch];
  v11 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLastAppLaunch" fromContextOverride:overrideCopy withDefaultContext:lastAppLaunch allowNilValues:1];

  lastAppLaunchDate = [v7 lastAppLaunchDate];
  v13 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLastAppLaunchDate" fromContextOverride:overrideCopy withDefaultContext:lastAppLaunchDate allowNilValues:1];

  secondMostRecentAppLaunch = [v7 secondMostRecentAppLaunch];
  v15 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideSecondMostRecentAppLaunch" fromContextOverride:overrideCopy withDefaultContext:secondMostRecentAppLaunch allowNilValues:1];

  lastAppActionLaunch = [v7 lastAppActionLaunch];
  v17 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideLastAppActionLaunch" fromContextOverride:overrideCopy withDefaultContext:lastAppActionLaunch allowNilValues:1];

  v18 = [[ATXPredictionUserContext alloc] initWithLastUnlockDate:v9 lastAppLaunch:v11 lastAppLaunchDate:v13 secondMostRecentAppLaunch:v15 lastAppActionLaunch:v17];

  return v18;
}

- (id)predictionContextForContextOverride:(id)override
{
  overrideCopy = override;
  if ([overrideCopy count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__23;
    v15 = __Block_byref_object_dispose__23;
    v16 = 0;
    lock = self->_lock;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __67__ATXPredictionContextBuilder_predictionContextForContextOverride___block_invoke;
    v8[3] = &unk_2785992B8;
    v8[4] = self;
    v9 = overrideCopy;
    v10 = &v11;
    [(_PASLock *)lock runWithLockAcquired:v8];
    predictionContextForCurrentContext = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    predictionContextForCurrentContext = [(ATXPredictionContextBuilder *)self predictionContextForCurrentContext];
  }

  return predictionContextForCurrentContext;
}

void __67__ATXPredictionContextBuilder_predictionContextForContextOverride___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  if ([*(a1 + 32) tryInitContextSourcesAndReturnSuccess:?])
  {
    v3 = [*(a1 + 32) deviceStateContextForContextOverride:*(a1 + 40) guardedData:v11];
    v4 = [*(a1 + 32) timeContextForContextOverride:*(a1 + 40) guardedData:v11];
    v5 = [*(a1 + 32) locationMotionContextForContextOverride:*(a1 + 40) guardedData:v11];
    v6 = [*(a1 + 32) ambientLightContextForContextOverride:*(a1 + 40) guardedData:v11];
    v7 = [*(a1 + 32) userContextForContextOverride:*(a1 + 40) guardedData:v11];
    v8 = [[ATXPredictionContext alloc] initWithDeviceStateContext:v3 timeContext:v4 locationMotionContext:v5 ambientLightContext:v6 userContext:v7 isOverridden:1];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

+ (id)loadContextOverrideFromJSONFile:(id)file
{
  v86 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  appPredictionDirectory = [MEMORY[0x277CEBCB0] appPredictionDirectory];
  v80 = fileCopy;
  v5 = [appPredictionDirectory stringByAppendingPathComponent:fileCopy];
  v6 = [v5 stringByAppendingPathExtension:@"json"];

  v79 = v6;
  v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:0];
    v9 = [v8 mutableCopy];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 valueForKey:@"ATXContextOverrideDate"];

  if (v10)
  {
    v11 = [v9 objectForKeyedSubscript:@"ATXContextOverrideDate"];
    v12 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(v11, "integerValue")}];
    [v9 setObject:v12 forKeyedSubscript:@"ATXContextOverrideDate"];
  }

  v13 = [v9 valueForKey:@"ATXContextOverrideCurrentLocation"];

  if (v13)
  {
    v14 = [v9 objectForKeyedSubscript:@"ATXContextOverrideCurrentLocation"];
    v15 = objc_alloc(MEMORY[0x277CE41F8]);
    v16 = [v14 objectAtIndexedSubscript:0];
    [v16 floatValue];
    v18 = v17;
    v19 = [v14 objectAtIndexedSubscript:1];
    [v19 floatValue];
    v21 = [v15 initWithLatitude:v18 longitude:v20];
    [v9 setObject:v21 forKeyedSubscript:@"ATXContextOverrideCurrentLocation"];
  }

  v22 = [v9 valueForKey:@"ATXContextOverridePreviousLocation"];

  if (v22)
  {
    v23 = [v9 objectForKeyedSubscript:@"ATXContextOverridePreviousLocation"];
    v24 = objc_alloc(MEMORY[0x277CE41F8]);
    v25 = [v23 objectAtIndexedSubscript:0];
    [v25 floatValue];
    v27 = v26;
    v28 = [v23 objectAtIndexedSubscript:1];
    [v28 floatValue];
    v30 = [v24 initWithLatitude:v27 longitude:v29];
    [v9 setObject:v30 forKeyedSubscript:@"ATXContextOverridePreviousLocation"];
  }

  v31 = [v9 valueForKey:@"ATXContextOverrideInferredModeEvent"];

  if (v31)
  {
    v32 = [v9 objectForKeyedSubscript:@"ATXContextOverrideInferredModeEvent"];
    v33 = objc_alloc(MEMORY[0x277CF16E8]);
    v34 = objc_opt_new();
    v35 = objc_opt_new();
    uUIDString = [v35 UUIDString];
    LODWORD(v77) = BMUserFocusInferredModeTypeFromString();
    v37 = [v33 initWithAbsoluteTimestamp:v34 modeIdentifier:0 origin:1 originBundleID:0 isAutomationEnabled:uUIDString isStart:0 uuid:&unk_283A55730 originAnchorType:&unk_283A55748 uiLocation:MEMORY[0x277CBEBF8] confidenceScore:v77 serializedTriggers:MEMORY[0x277CBEC28] modeType:0 shouldSuggestTriggers:? userModeName:?];
    [v9 setObject:v37 forKeyedSubscript:@"ATXContextOverrideInferredModeEvent"];
  }

  v38 = [v9 valueForKey:@"ATXContextOverrideUserFocusComputedModeEvent"];

  if (v38)
  {
    v39 = [v9 objectForKeyedSubscript:@"ATXContextOverrideUserFocusComputedModeEvent"];
    v40 = objc_alloc(MEMORY[0x277CF16F0]);
    v41 = [v40 initWithMode:v39 starting:MEMORY[0x277CBEC38] updateReason:0 semanticType:0 updateSource:0 semanticModeIdentifier:0];
    [v9 setObject:v41 forKeyedSubscript:@"ATXContextOverrideUserFocusComputedModeEvent"];
  }

  v42 = [v9 valueForKey:@"ATXContextOverridePoiCategory"];

  if (v42)
  {
    v43 = [v9 objectForKeyedSubscript:@"ATXContextOverridePoiCategory"];
    v44 = objc_alloc(MEMORY[0x277CF12C0]);
    v45 = objc_opt_new();
    v46 = [v44 initWithPoiCategory:v43 rank:&unk_283A55760 timestamp:v45];
    [v9 setObject:v46 forKeyedSubscript:@"ATXContextOverridePoiCategory"];
  }

  v47 = [v9 valueForKey:@"ATXContextOverrideCandidateIdentifiersLaunchAge"];

  if (v47)
  {
    v78 = v7;
    v48 = [v9 objectForKeyedSubscript:@"ATXContextOverrideCandidateIdentifiersLaunchAge"];
    v49 = objc_opt_new();
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v50 = v48;
    v51 = [v50 countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v82;
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v82 != v53)
          {
            objc_enumerationMutation(v50);
          }

          v55 = *(*(&v81 + 1) + 8 * i);
          v56 = MEMORY[0x277CBEAA8];
          v57 = [v50 objectForKeyedSubscript:v55];
          v58 = [v56 dateWithTimeIntervalSince1970:{objc_msgSend(v57, "integerValue")}];
          [v49 setObject:v58 forKeyedSubscript:v55];
        }

        v52 = [v50 countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v52);
    }

    [v9 setObject:v49 forKeyedSubscript:@"ATXContextOverrideCandidateIdentifiersLaunchAge"];
    v7 = v78;
  }

  v59 = [v9 valueForKey:@"ATXContextOverrideBluetoothEvent"];

  if (v59)
  {
    v60 = [v9 objectForKeyedSubscript:@"ATXContextOverrideBluetoothEvent"];
    v61 = MEMORY[0x277CBEAA8];
    v62 = [v60 objectAtIndexedSubscript:0];
    v63 = [v61 dateWithTimeIntervalSince1970:{objc_msgSend(v62, "integerValue")}];

    v64 = MEMORY[0x277CBEAA8];
    v65 = [v60 objectAtIndexedSubscript:1];
    v66 = [v64 dateWithTimeIntervalSince1970:{objc_msgSend(v65, "integerValue")}];

    v67 = [[ATXBluetoothDuetEvent alloc] initWithBluetoothState:1 deviceType:3 deviceName:&stru_2839A6058 hardwareAddress:&stru_2839A6058 startDate:v63 endDate:v66];
    [v9 setObject:v67 forKeyedSubscript:@"ATXContextOverrideBluetoothEvent"];
  }

  v68 = [v9 valueForKey:@"ATXContextOverrideMicrolocationVisitEvent"];

  if (v68)
  {
    v69 = [v9 objectForKeyedSubscript:@"ATXContextOverrideMicrolocationVisitEvent"];
    v70 = [ATXMicrolocationVisitDuetEvent alloc];
    v71 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v69];
    v72 = objc_opt_new();
    v73 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-20.0];
    v74 = objc_opt_new();
    v75 = [(ATXMicrolocationVisitDuetEvent *)v70 initWithDominantMicrolocationUUID:v71 microlocationProbabilities:v72 startDate:v73 endDate:v74];
    [v9 setObject:v75 forKeyedSubscript:@"ATXContextOverrideMicrolocationVisitEvent"];
  }

  return v9;
}

- (id)predictionContextForCurrentContextAndCandidatePublisher:(id)publisher contextOverride:(id)override
{
  publisherCopy = publisher;
  overrideCopy = override;
  v8 = [(ATXPredictionContextBuilder *)self predictionContextForContextOverride:overrideCopy];
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__78;
  v29 = __Block_byref_object_dispose__78;
  v30 = objc_opt_new();
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke;
  v24[3] = &unk_27859EF10;
  v24[4] = self;
  v24[5] = &v25;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke_11;
  v23[3] = &unk_27859F628;
  v23[4] = &v25;
  v9 = [publisherCopy sinkWithCompletion:v24 receiveInput:v23];
  v10 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideCandidateIdentifiersLaunchAge" fromContextOverride:overrideCopy withDefaultContext:v26[5] allowNilValues:1];
  [v8 setCandidateIdentifiersLaunchAge:v10];

  currentMode = [MEMORY[0x277D41C68] currentMode];
  v12 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideInferredModeEvent" fromContextOverride:overrideCopy withDefaultContext:currentMode allowNilValues:1];
  [v8 setInferredModeEvent:v12];

  currentMode2 = [MEMORY[0x277D41C60] currentMode];
  v14 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideUserFocusComputedModeEvent" fromContextOverride:overrideCopy withDefaultContext:currentMode2 allowNilValues:1];
  [v8 setUserFocusComputedModeEvent:v14];

  v15 = objc_opt_new();
  currentPoiCategory = [v15 currentPoiCategory];
  v17 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverridePoiCategory" fromContextOverride:overrideCopy withDefaultContext:currentPoiCategory allowNilValues:1];
  [v8 setPoiCategory:v17];

  v18 = +[ATXBluetoothDuetEvent mostRecentOrActiveBluetoothConnectedEventFromCurrentContextStoreValues];
  v19 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideBluetoothEvent" fromContextOverride:overrideCopy withDefaultContext:v18 allowNilValues:1];
  [v8 setBluetoothEvent:v19];

  v20 = [objc_alloc(+[ATXMicrolocationVisitDuetDataProvider supportedDuetEventClass](ATXMicrolocationVisitDuetDataProvider "supportedDuetEventClass"))];
  v21 = [(ATXPredictionContextBuilder *)self _getContextForOverrideKey:@"ATXContextOverrideMicrolocationVisitEvent" fromContextOverride:overrideCopy withDefaultContext:v20 allowNilValues:1];
  [v8 setMicrolocationVisitEvent:v21];

  if ([overrideCopy count])
  {
    [v8 setIsOverridden:1];
  }

  _Block_object_dispose(&v25, 8);

  return v8;
}

void __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 state];
  if (v3)
  {
    v4 = __atxlog_handle_relevance_model(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke_cold_1(a1, v4);
    }

    v5 = objc_opt_new();
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }
}

void __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEAA8];
  v4 = a2;
  [v4 timestamp];
  v8 = [v3 dateWithTimeIntervalSinceReferenceDate:?];
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = [v4 eventBody];

  v7 = [v6 identifier];
  [v5 setObject:v8 forKeyedSubscript:v7];
}

void __121__ATXPredictionContextBuilder_CandidateContext__predictionContextForCurrentContextAndCandidatePublisher_contextOverride___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_2263AA000, a2, OS_LOG_TYPE_ERROR, "%@ - Error when querying for recently launched candidate. Returning empty set.", &v5, 0xCu);
}

@end