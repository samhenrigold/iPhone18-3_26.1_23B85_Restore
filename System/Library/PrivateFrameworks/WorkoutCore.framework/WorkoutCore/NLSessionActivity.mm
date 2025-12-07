@interface NLSessionActivity
+ (double)durationBetweenStartDate:(id)date endDate:(id)endDate workoutEvents:(id)events;
+ (id)_localizedTimeOfDayFormatStringWithDate:(id)date;
+ (unint64_t)_eventForPauseTracking:(BOOL)tracking eventSource:(unint64_t)source;
- (BOOL)_beforeBuilderActive;
- (BOOL)handleUserDoubleTap;
- (BOOL)hasGoal;
- (BOOL)insertOrUpdateMetadataToSubActivity:(id)activity;
- (BOOL)isAutoPauseEffectivelyEnabledForActivityType:(unint64_t)type;
- (BOOL)isInSession;
- (BOOL)isMachineWorkout;
- (NLSessionActivity)initWithConfiguration:(id)configuration UUID:(id)d formattingManager:(id)manager elevationUnit:(id)unit healthStore:(id)store builder:(id)builder experienceType:(int64_t)type;
- (NLSessionActivityCadenceAccumulator)cadenceAccumulator;
- (NLSessionActivityDistanceProvider)distanceProvider;
- (NLSessionActivityElapsedTimeAccumulator)elapsedTimeAccumulator;
- (NLSessionActivityHeartRateProvider)heartRateProvider;
- (NLSessionActivityLifecycleDelegate)lifecycleDelegate;
- (NLSessionActivityPaceAccumulator)paceAccumulator;
- (NLSessionActivityPaceProvider)paceProvider;
- (NLSessionActivitySavingDelegate)savingDelegate;
- (NLSessionDataProvider)dataProvider;
- (NLWorkoutSplitsDelegate)splitsDelegate;
- (NSArray)segmentMarkers;
- (NSUUID)fitnessMachineSessionUUID;
- (WOCustomSplitsDelegate)customSplitsDelegate;
- (double)activityDuration;
- (double)displaySplitDistanceValue;
- (double)duration;
- (double)durationWithEndDate:(id)date;
- (double)videoPlaybackCurrentTime;
- (id)_latestCompletedIntervalActivityEndDate;
- (id)_stateDescription;
- (id)currentActivityStartDate;
- (id)currentIntervalWorkoutActivity;
- (id)currentWorkoutActivity;
- (id)effectivePresentationTime;
- (id)powerLogWorkoutDictionary;
- (void)_configureStateActions;
- (void)_configureStateMachine;
- (void)_createActivityDependentAccumulators;
- (void)_createIdempotentAccumulators;
- (void)_didAddWorkoutEvents:(id)events;
- (void)_endCollectionWithEndDate:(id)date;
- (void)_endTracking;
- (void)_handleBeginCollectingWithSuccess:(BOOL)success error:(id)error;
- (void)_handleBuilderPauseResumeRequestWithSuccess:(BOOL)success error:(id)error pauseTracking:(BOOL)tracking eventSource:(unint64_t)source;
- (void)_handleFinishWorkoutWithWorkout:(id)workout error:(id)error;
- (void)_logStatistics;
- (void)_notifyDataObserversUpdatedMetricType:(unint64_t)type;
- (void)_notifyDataObserversUpdatedMetricTypes:(id)types;
- (void)_notifyDataObserversWithBlock:(id)block;
- (void)_onActivating;
- (void)_onActive;
- (void)_onCompleted;
- (void)_onDiscarding;
- (void)_onEnding;
- (void)_onEndingCollection;
- (void)_onErrorActivating;
- (void)_onFirstActivation;
- (void)_onRecovery;
- (void)_onSaving;
- (void)_powerLogWorkoutStart;
- (void)_powerLogWorkoutStop;
- (void)_processQueuedWorkoutEvents;
- (void)_recoverIntoActivity:(id)activity;
- (void)_segmentMarkerEventReceived:(id)received;
- (void)_setPauseTracking:(BOOL)tracking atDate:(id)date eventSource:(unint64_t)source;
- (void)_setState:(unint64_t)state;
- (void)_setupActivityTypeDependentConfigurations;
- (void)_setupGroundElevationManager;
- (void)_startAccumulatingDataWithStartDate:(id)date;
- (void)_startAccumulatingElapsedTimeWithStartDate:(id)date;
- (void)_startActivityDependentAccumulatingDataWithStartDate:(id)date;
- (void)_startBuilderWithStartDate:(id)date;
- (void)_startIdempotentAccumulatingDataWithStartDate:(id)date;
- (void)_startPrecisionStartAccumulators;
- (void)_startTracking;
- (void)_startTrackingWithStartDate:(id)date;
- (void)_stopActivityDependentAccumulatorsWithActivity:(id)activity;
- (void)_stopTrackingActivityWithEndDate:(id)date;
- (void)_teardownGroundElevationManager;
- (void)_updateAveragePace:(double)pace;
- (void)_updateAveragePower:(double)power;
- (void)_updateCurrentSpeedWithStatistics:(id)statistics duration:(double)duration;
- (void)_updateCyclingCadenceWithStatistics:(id)statistics duration:(double)duration quantityType:(id)type;
- (void)_updateCyclingPowerWithStatistics:(id)statistics;
- (void)_updateElapsedTime:(double)time;
- (void)_updateElevation:(id)elevation;
- (void)_updateElevationGain:(id)gain;
- (void)_updateEnergyBurned:(id)burned statistics:(id)statistics;
- (void)_updateFlightsClimbedWithStatistics:(id)statistics;
- (void)_updateGroundContactTimeWithStatistics:(id)statistics;
- (void)_updateHeartRateUpdateAvailability;
- (void)_updateHeartRateWithStatistics:(id)statistics;
- (void)_updateInstantaneousPace:(double)pace;
- (void)_updateInstantaneousPower:(double)power sampleDate:(id)date;
- (void)_updateIntervalCadenceWithQuantityType:(id)type;
- (void)_updateMachineDistance:(double)distance;
- (void)_updateMetadataAtWorkoutFirstActivation;
- (void)_updateRunningPowerWithStatistics:(id)statistics;
- (void)_updateSplitsWithStatistics:(id)statistics duration:(double)duration;
- (void)_updateStepCountWithStatistics:(id)statistics duration:(double)duration quantityType:(id)type;
- (void)_updateStrideLengthWithStatistics:(id)statistics;
- (void)_updateTotalDistanceWithStatistics:(id)statistics duration:(double)duration;
- (void)_updateVerticalOscillationWithStatistics:(id)statistics;
- (void)_updateWaterTemperatureWithStatistics:(id)statistics duration:(double)duration quantityType:(id)type;
- (void)_updateWithCollectedTypes:(id)types;
- (void)_updateWithQuantityType:(id)type statistics:(id)statistics duration:(double)duration;
- (void)_updateWorkoutMetric:(unint64_t)metric withQuantity:(id)quantity;
- (void)_writeConfigurationMetadata;
- (void)addActivityChangeObserver:(id)observer;
- (void)addSessionDataObserver:(id)observer;
- (void)addSessionStateObserver:(id)observer;
- (void)addSplitsUpdateObserver:(id)observer;
- (void)addWorkoutEvents:(id)events;
- (void)cancelAutomaticTransition;
- (void)createSplitsAccumulators;
- (void)cyclingCadenceAccumulatorDidUpdate:(id)update;
- (void)dealloc;
- (void)didUpdateMaximumAltitude:(id)altitude;
- (void)didUpdateMinimumAltitude:(id)altitude;
- (void)distanceProviderDidUpdate:(id)update;
- (void)downhillSnowSportsAccumulatorDidUpdate:(id)update;
- (void)elapsedTimeAccumulatorDidUpdate:(id)update;
- (void)elevationAccumulatorDidUpdate:(id)update;
- (void)endCurrentSegment;
- (void)energyBurnAccumulatorDidUpdate:(id)update;
- (void)enterAutomaticTransition;
- (void)evaluatePauseResumeForConnectedDevices;
- (void)flightsClimbedAccumulatorDidUpdate:(id)update;
- (void)ghostPacerAccumulatorDidUpdate:(id)update;
- (void)groundContactTimeAccumulatorDidUpdate:(id)update;
- (void)groundElevationDidUpdate:(id)update;
- (void)groundElevationManagerDidFinishSetup;
- (void)gymKitMetricsDataSource:(id)source didReceiveMetrics:(id)metrics;
- (void)heartRateAccumulatorDidUpdate:(id)update;
- (void)heartRatePrecisionStartAccumulatorDidUpdate:(id)update;
- (void)heartRateProviderDidBecomeStale:(id)stale;
- (void)heartRateZonesAccumulatorDidUpdate:(id)update;
- (void)insertLocations:(id)locations completion:(id)completion;
- (void)insertOrUpdateMetadata:(id)metadata forceTopLevel:(BOOL)level;
- (void)intervalCadenceAccumulatorDidUpdate:(id)update;
- (void)locationDidUpdate:(id)update;
- (void)locationPositionAccumulator:(id)accumulator didUpdateLocations:(id)locations;
- (void)locationPositionAccumulator:(id)accumulator didUpdateRoutePosition:(id)position;
- (void)paceAccumulator:(id)accumulator didUpdateCurrentPaceInMetersPerSecond:(double)second;
- (void)paceAccumulator:(id)accumulator didUpdateIsGPSAvailable:(BOOL)available;
- (void)paceProviderDidUpdate:(id)update;
- (void)pacerDistanceGoalProgressAccumulatorDidUpdate:(id)update;
- (void)pedometerCadenceAccumulatorDidUpdate:(id)update;
- (void)powerAccumulatorDidUpdate:(id)update;
- (void)powerZonesAccumulatorDidUpdate:(id)update;
- (void)processDownhillRunEvent:(id)event;
- (void)processMotionPauseResumeEvent:(id)event;
- (void)processPauseOrResumeRequestEvent:(id)event;
- (void)processSplitEvent:(id)event;
- (void)queueWorkoutEvents:(BOOL)events;
- (void)racePositionProviderDidUpdate:(id)update;
- (void)registerMarkerEventWithDate:(id)date metadata:(id)metadata;
- (void)removeActivityChangeObserver:(id)observer;
- (void)removeMetadata:(id)metadata forceTopLevel:(BOOL)level;
- (void)removeSessionDataObserver:(id)observer;
- (void)removeSessionStateObserver:(id)observer;
- (void)removeSplitsUpdateObserver:(id)observer;
- (void)rollingPaceAccumulatorDidUpdate:(id)update;
- (void)segmentAveragePowerAccumulatorDidUpdate:(id)update;
- (void)segmentDistanceAccumulatorDidUpdate:(id)update;
- (void)segmentElapsedTimeAccumulatorDidUpdate:(id)update;
- (void)segmentEnergyAccumulatorDidUpdate:(id)update;
- (void)segmentPaceAccumulatorDidUpdate:(id)update;
- (void)setLocationTypeToIndoor:(BOOL)indoor;
- (void)setMachineSessionDevice:(id)device;
- (void)setPacerAlertDelegate:(id)delegate;
- (void)setRaceCoordinatorDelegate:(id)delegate;
- (void)setRaceRouteDelegate:(id)delegate;
- (void)setSeymourElapsedTimeAccumulator:(id)accumulator;
- (void)setWorkoutAlertDelegate:(id)delegate;
- (void)setup;
- (void)splitAveragePowerAccumulatorDidUpdate:(id)update;
- (void)splitDistanceAccumulatorDidUpdate:(id)update;
- (void)splitElapsedTimeAccumulatorDidUpdate:(id)update;
- (void)splitPaceAccumulatorDidUpdate:(id)update;
- (void)storeMotionPauseResumeEvent:(id)event;
- (void)strideLengthAccumulatorDidUpdate:(id)update;
- (void)swimmingAccumulatorDidUpdate:(id)update;
- (void)updateActivityTypeFromConfiguration:(id)configuration;
- (void)updateDistanceUnit:(id)unit;
- (void)verticalOscillationAccumulatorDidUpdate:(id)update;
- (void)waterTemperatureAccumulatorDidUpdate:(id)update;
- (void)weatherDidUpdate:(id)update;
- (void)workoutBuilder:(id)builder didBeginActivity:(id)activity;
- (void)workoutBuilder:(id)builder didCollectDataOfTypes:(id)types;
- (void)workoutBuilder:(id)builder didEndActivity:(id)activity;
- (void)workoutBuilderDidChangeSampleTypesAvailableForCollection:(id)collection;
- (void)workoutBuilderDidCollectEvent:(id)event;
- (void)workoutRouteDataSource:(id)source didUpdateAltitude:(id)altitude;
- (void)workoutRouteDataSourceDidUpdateElevation:(id)elevation;
- (void)workoutRouteDataSourceDidUpdateRoute:(id)route;
@end

@implementation NLSessionActivity

- (NLSessionActivity)initWithConfiguration:(id)configuration UUID:(id)d formattingManager:(id)manager elevationUnit:(id)unit healthStore:(id)store builder:(id)builder experienceType:(int64_t)type
{
  v50[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v46 = 0;
  objc_storeStrong(&v46, d);
  v45 = 0;
  objc_storeStrong(&v45, manager);
  v44 = 0;
  objc_storeStrong(&v44, unit);
  v43 = 0;
  objc_storeStrong(&v43, store);
  v42 = 0;
  objc_storeStrong(&v42, builder);
  typeCopy = type;
  v9 = selfCopy;
  selfCopy = 0;
  v40.receiver = v9;
  v40.super_class = NLSessionActivity;
  v33 = [(NLSessionActivity *)&v40 init];
  selfCopy = v33;
  objc_storeStrong(&selfCopy, v33);
  if (v33)
  {
    objc_storeStrong(&selfCopy->_UUID, v46);
    activityMoveMode = [location[0] activityMoveMode];
    selfCopy->_activityMoveMode = activityMoveMode;
    activityBeginDate = [location[0] activityBeginDate];
    activityBeginDate = selfCopy->_activityBeginDate;
    selfCopy->_activityBeginDate = activityBeginDate;
    MEMORY[0x277D82BD8](activityBeginDate);
    objc_storeStrong(&selfCopy->_healthStore, v43);
    objc_storeStrong(&selfCopy->_builder, v42);
    [(HKLiveWorkoutBuilder *)selfCopy->_builder setDelegate:selfCopy];
    objc_storeStrong(&selfCopy->_configuration, location[0]);
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = selfCopy->_stateObservers;
    selfCopy->_stateObservers = weakObjectsHashTable;
    weakObjectsHashTable2 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    dataObservers = selfCopy->_dataObservers;
    selfCopy->_dataObservers = weakObjectsHashTable2;
    weakObjectsHashTable3 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    changeObservers = selfCopy->_changeObservers;
    selfCopy->_changeObservers = weakObjectsHashTable3;
    MEMORY[0x277D82BD8](changeObservers);
    objc_storeStrong(&selfCopy->_formattingManager, v45);
    objc_storeStrong(&selfCopy->_elevationUnit, v44);
    selfCopy->_experienceType = typeCopy;
    catalogWorkoutBridge = [location[0] catalogWorkoutBridge];
    [catalogWorkoutBridge duration];
    selfCopy->_playbackDuration = v19;
    MEMORY[0x277D82BD8](catalogWorkoutBridge);
    selfCopy->_didCollectFirstSample = 0;
    v20 = objc_alloc_init(WOSessionActivityDeviceObserver);
    deviceObserver = selfCopy->_deviceObserver;
    selfCopy->_deviceObserver = v20;
    *&v22 = MEMORY[0x277D82BD8](deviceObserver).n128_u64[0];
    metadata = [v42 metadata];
    v39 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataKeyAnalyticsIdentifier"];
    MEMORY[0x277D82BD8](metadata);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v39 length])
    {
      objc_storeStrong(&selfCopy->_analyticsIdentifier, v39);
    }

    else
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [uUID UUIDString];
      analyticsIdentifier = selfCopy->_analyticsIdentifier;
      selfCopy->_analyticsIdentifier = uUIDString;
      MEMORY[0x277D82BD8](analyticsIdentifier);
      *&v25 = MEMORY[0x277D82BD8](uUID).n128_u64[0];
      v29 = selfCopy;
      v49 = @"_HKPrivateMetadataKeyAnalyticsIdentifier";
      v50[0] = selfCopy->_analyticsIdentifier;
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:{1, v25}];
      [NLSessionActivity insertOrUpdateMetadata:v29 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
      MEMORY[0x277D82BD8](v30);
    }

    [(NLSessionActivity *)selfCopy setup];
    objc_storeStrong(&v39, 0);
  }

  v27 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v45, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v27;
}

- (void)setup
{
  selfCopy = self;
  v13[1] = a2;
  [(NLSessionActivity *)self _createIdempotentAccumulators];
  [(NLSessionActivity *)selfCopy _setupActivityTypeDependentConfigurations];
  [(NLSessionActivity *)selfCopy _observeSettings];
  [(NLSessionActivity *)selfCopy _writeConfigurationMetadata];
  [(NLSessionActivity *)selfCopy _configureStateMachine];
  [(WOSessionActivityDeviceObserver *)selfCopy->_deviceObserver setDelegate:selfCopy];
  v13[0] = +[NLWorkoutDemoUtilities workoutDemoSession];
  if (v13[0])
  {
    _HKInitializeLogging();
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_20AEA4000, log, type, "[DemoMode] Demo mode is enabled", v10, 2u);
    }

    objc_storeStrong(&location, 0);
    v5 = [NLWorkoutDemoDataProvider alloc];
    v4 = selfCopy;
    topLevelActivityType = [(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration topLevelActivityType];
    workoutActivityType = [(FIUIWorkoutActivityType *)topLevelActivityType workoutActivityType];
    v2 = [NLWorkoutDemoDataProvider initWithDataProvider:v5 activityType:"initWithDataProvider:activityType:demoSession:" demoSession:v4];
    demoDataProvider = selfCopy->_demoDataProvider;
    selfCopy->_demoDataProvider = v2;
    MEMORY[0x277D82BD8](demoDataProvider);
    MEMORY[0x277D82BD8](workoutActivityType);
    MEMORY[0x277D82BD8](topLevelActivityType);
  }

  objc_storeStrong(v13, 0);
}

- (NLSessionDataProvider)dataProvider
{
  demoDataProvider = [(NLSessionActivity *)self demoDataProvider];
  *&v2 = MEMORY[0x277D82BD8](demoDataProvider).n128_u64[0];
  if (demoDataProvider)
  {
    demoDataProvider2 = [(NLSessionActivity *)self demoDataProvider];
  }

  else
  {
    demoDataProvider2 = MEMORY[0x277D82BE0](self);
  }

  return demoDataProvider2;
}

- (BOOL)handleUserDoubleTap
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  demoDataProvider = [(NLSessionActivity *)self demoDataProvider];
  *&v2 = MEMORY[0x277D82BD8](demoDataProvider).n128_u64[0];
  if (demoDataProvider)
  {
    demoDataProvider2 = [(NLSessionActivity *)selfCopy demoDataProvider];
    location[0] = [(NLWorkoutDemoDataProvider *)demoDataProvider2 statisticsToAdvance];
    MEMORY[0x277D82BD8](demoDataProvider2);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location[0]);
    v16 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
    if (v16)
    {
      v11 = *__b[2];
      v12 = 0;
      v13 = v16;
      while (1)
      {
        v10 = v12;
        if (*__b[2] != v11)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(__b[1] + 8 * v12);
        v5 = selfCopy;
        quantityType = [v19 quantityType];
        v6 = v19;
        endDate = [v19 endDate];
        startDate = [v19 startDate];
        [endDate timeIntervalSinceDate:?];
        [(NLSessionActivity *)v5 _updateWithQuantityType:quantityType statistics:v6 duration:?];
        MEMORY[0x277D82BD8](startDate);
        MEMORY[0x277D82BD8](endDate);
        *&v3 = MEMORY[0x277D82BD8](quantityType).n128_u64[0];
        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [obj countByEnumeratingWithState:__b objects:v23 count:{16, v3}];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v22 = 1;
    objc_storeStrong(location, 0);
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (void)_setupActivityTypeDependentConfigurations
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  currentActivityType = [(WOCoreLiveWorkoutConfiguration *)self->_configuration currentActivityType];
  activityType = selfCopy->_activityType;
  selfCopy->_activityType = currentActivityType;
  unitManager = [(FIUIFormattingManager *)selfCopy->_formattingManager unitManager];
  v4 = [unitManager userDistanceHKUnitForActivityType:selfCopy->_activityType];
  distanceUnit = selfCopy->_distanceUnit;
  selfCopy->_distanceUnit = v4;
  MEMORY[0x277D82BD8](distanceUnit);
  MEMORY[0x277D82BD8](unitManager);
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v16, selfCopy->_activityType);
    _os_log_impl(&dword_20AEA4000, location[0], v12, "[multisport] Creating activity type configurations with activity type %@", v16, 0xCu);
  }

  objc_storeStrong(location, 0);
  [(NLSessionActivity *)selfCopy _stopActivityDependentAccumulatorsWithActivity:0];
  [(NLSessionActivity *)selfCopy _createActivityDependentAccumulators];
  if (!selfCopy->_weatherManager)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v9 = oslog;
      __os_log_helper_16_0_1_8_0(v15, selfCopy);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] Create NLSessionActivityWeatherManager from %p", v15, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6 = objc_alloc_init(NLSessionActivityWeatherManager);
    weatherManager = selfCopy->_weatherManager;
    selfCopy->_weatherManager = v6;
    *&v8 = MEMORY[0x277D82BD8](weatherManager).n128_u64[0];
    [(NLSessionActivityWeatherManager *)selfCopy->_weatherManager setDelegate:selfCopy, v8];
  }

  [(NLSessionActivityWeatherManager *)selfCopy->_weatherManager setActive:1, v9];
  [(NLSessionActivity *)selfCopy _setupGroundElevationManager];
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, selfCopy, *MEMORY[0x277D09610], 0);
  v3.receiver = selfCopy;
  v3.super_class = NLSessionActivity;
  [(NLSessionActivity *)&v3 dealloc];
}

- (void)_configureStateMachine
{
  v292[19] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  __b[19] = a2;
  memset(__b, 0, 0x98uLL);
  NLActivityStateIdentifierShortHandStruct(__b);
  v272 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v292[0] = v272;
  v271 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v292[1] = v271;
  v270 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v292[2] = v270;
  v269 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v292[3] = v269;
  v268 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v292[4] = v268;
  v267 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v292[5] = v267;
  v266 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v292[6] = v266;
  v265 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v292[7] = v265;
  v264 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v292[8] = v264;
  v263 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v292[9] = v263;
  v262 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v292[10] = v262;
  v261 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v292[11] = v261;
  v260 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v292[12] = v260;
  v259 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v292[13] = v259;
  v258 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v292[14] = v258;
  v257 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[15]];
  v292[15] = v257;
  v256 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[16]];
  v292[16] = v256;
  v255 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[17]];
  v292[17] = v255;
  v254 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[18]];
  v292[18] = v254;
  v288 = [MEMORY[0x277CBEA60] arrayWithObjects:v292 count:19];
  MEMORY[0x277D82BD8](v254);
  MEMORY[0x277D82BD8](v255);
  MEMORY[0x277D82BD8](v256);
  MEMORY[0x277D82BD8](v257);
  MEMORY[0x277D82BD8](v258);
  MEMORY[0x277D82BD8](v259);
  MEMORY[0x277D82BD8](v260);
  MEMORY[0x277D82BD8](v261);
  MEMORY[0x277D82BD8](v262);
  MEMORY[0x277D82BD8](v263);
  MEMORY[0x277D82BD8](v264);
  MEMORY[0x277D82BD8](v265);
  MEMORY[0x277D82BD8](v266);
  MEMORY[0x277D82BD8](v267);
  MEMORY[0x277D82BD8](v268);
  MEMORY[0x277D82BD8](v269);
  MEMORY[0x277D82BD8](v270);
  MEMORY[0x277D82BD8](v271);
  MEMORY[0x277D82BD8](v272);
  v274 = objc_alloc(MEMORY[0x277D0A800]);
  uUID = [(NLSessionActivity *)selfCopy UUID];
  v276 = FIUIStateMachineLabel();
  v273 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v275 = v273;
  v3 = [v274 initWithLabel:v276 queue:?];
  stateMachine = selfCopy->_stateMachine;
  selfCopy->_stateMachine = v3;
  MEMORY[0x277D82BD8](stateMachine);
  MEMORY[0x277D82BD8](v275);
  MEMORY[0x277D82BD8](v276);
  MEMORY[0x277D82BD8](uUID);
  FIUIStateMachineSetDiagnosticAndErrorHandler();
  v287 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v288, "count")}];
  memset(v285, 0, sizeof(v285));
  obj = MEMORY[0x277D82BE0](v288);
  v279 = [obj countByEnumeratingWithState:v285 objects:v291 count:16];
  if (v279)
  {
    v251 = *v285[2];
    v252 = 0;
    v253 = v279;
    while (1)
    {
      v250 = v252;
      if (*v285[2] != v251)
      {
        objc_enumerationMutation(obj);
      }

      v286 = *(v285[1] + 8 * v252);
      unsignedIntegerValue = [v286 unsignedIntegerValue];
      v248 = objc_alloc(MEMORY[0x277D0A7F8]);
      v249 = NLActivityStateIdentifierDescription(unsignedIntegerValue);
      v283 = [v248 initWithLabel:?];
      *&v5 = MEMORY[0x277D82BD8](v249).n128_u64[0];
      [v287 setObject:v283 forKeyedSubscript:{v286, v5}];
      [(FIUIStateMachine *)selfCopy->_stateMachine addState:v283];
      objc_storeStrong(&v283, 0);
      ++v252;
      if (v250 + 1 >= v253)
      {
        v252 = 0;
        v253 = [obj countByEnumeratingWithState:v285 objects:v291 count:16];
        if (!v253)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v282 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"Preparing"];
  v40 = objc_alloc(MEMORY[0x277CBEB98]);
  v37 = v287;
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v45 = [v37 objectForKeyedSubscript:?];
  v38 = v287;
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v43 = [v38 objectForKeyedSubscript:?];
  v39 = v287;
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v41 = [v39 objectForKeyedSubscript:?];
  v281 = [v40 initWithObjects:{v45, v43, v41, 0}];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  *&v6 = MEMORY[0x277D82BD8](v46).n128_u64[0];
  v50 = selfCopy->_stateMachine;
  v48 = v281;
  v49 = v282;
  v47 = v287;
  v52 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[1], v6}];
  v51 = [v47 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v50 addChildStates:v48 toState:v49 withEntryState:?];
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  v280 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"InSession"];
  v62 = selfCopy->_stateMachine;
  v59 = MEMORY[0x277CBEB98];
  v53 = v287;
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v76 = [v53 objectForKeyedSubscript:?];
  v54 = v287;
  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v74 = [v54 objectForKeyedSubscript:?];
  v55 = v287;
  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v72 = [v55 objectForKeyedSubscript:?];
  v56 = v287;
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v70 = [v56 objectForKeyedSubscript:?];
  v57 = v287;
  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v68 = [v57 objectForKeyedSubscript:?];
  v58 = v287;
  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v66 = [v58 objectForKeyedSubscript:?];
  v65 = [v59 setWithObjects:{v76, v74, v72, v70, v68, v66, 0}];
  v61 = v280;
  v60 = v287;
  v64 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v63 = [v60 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v62 addChildStates:v65 toState:v61 withEntryState:?];
  MEMORY[0x277D82BD8](v63);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  MEMORY[0x277D82BD8](v68);
  MEMORY[0x277D82BD8](v69);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  MEMORY[0x277D82BD8](v74);
  MEMORY[0x277D82BD8](v75);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  objc_storeStrong(&selfCopy->_stateMap, v287);
  stateMap = selfCopy->_stateMap;
  v80 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v79 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  _RegisterTransition_0(stateMap, v79, v282, 1);
  MEMORY[0x277D82BD8](v79);
  *&v7 = MEMORY[0x277D82BD8](v80).n128_u64[0];
  v82 = selfCopy->_stateMap;
  v86 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[0], v7}];
  v85 = [(NSDictionary *)v82 objectForKeyedSubscript:?];
  v81 = selfCopy->_stateMap;
  v84 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v83 = [(NSDictionary *)v81 objectForKeyedSubscript:?];
  _RegisterTransition_0(v82, v85, v83, 2);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  *&v8 = MEMORY[0x277D82BD8](v86).n128_u64[0];
  v88 = selfCopy->_stateMap;
  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v8}];
  v91 = [(NSDictionary *)v88 objectForKeyedSubscript:?];
  v87 = selfCopy->_stateMap;
  v90 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v89 = [(NSDictionary *)v87 objectForKeyedSubscript:?];
  _RegisterTransition_0(v88, v91, v89, 5);
  MEMORY[0x277D82BD8](v89);
  MEMORY[0x277D82BD8](v90);
  MEMORY[0x277D82BD8](v91);
  *&v9 = MEMORY[0x277D82BD8](v92).n128_u64[0];
  v94 = selfCopy->_stateMap;
  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v9}];
  v97 = [(NSDictionary *)v94 objectForKeyedSubscript:?];
  v93 = selfCopy->_stateMap;
  v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v95 = [(NSDictionary *)v93 objectForKeyedSubscript:?];
  _RegisterTransition_0(v94, v97, v95, 6);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  *&v10 = MEMORY[0x277D82BD8](v98).n128_u64[0];
  v100 = selfCopy->_stateMap;
  v104 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v10}];
  v103 = [(NSDictionary *)v100 objectForKeyedSubscript:?];
  v99 = selfCopy->_stateMap;
  v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v101 = [(NSDictionary *)v99 objectForKeyedSubscript:?];
  _RegisterTransition_0(v100, v103, v101, 7);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  *&v11 = MEMORY[0x277D82BD8](v104).n128_u64[0];
  v106 = selfCopy->_stateMap;
  v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[1], v11}];
  v109 = [(NSDictionary *)v106 objectForKeyedSubscript:?];
  v105 = selfCopy->_stateMap;
  v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v107 = [(NSDictionary *)v105 objectForKeyedSubscript:?];
  _RegisterTransition_0(v106, v109, v107, 3);
  MEMORY[0x277D82BD8](v107);
  MEMORY[0x277D82BD8](v108);
  MEMORY[0x277D82BD8](v109);
  *&v12 = MEMORY[0x277D82BD8](v110).n128_u64[0];
  v112 = selfCopy->_stateMap;
  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[3], v12}];
  v115 = [(NSDictionary *)v112 objectForKeyedSubscript:?];
  v111 = selfCopy->_stateMap;
  v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v113 = [(NSDictionary *)v111 objectForKeyedSubscript:?];
  _RegisterTransition_0(v112, v115, v113, 4);
  MEMORY[0x277D82BD8](v113);
  MEMORY[0x277D82BD8](v114);
  MEMORY[0x277D82BD8](v115);
  *&v13 = MEMORY[0x277D82BD8](v116).n128_u64[0];
  v118 = selfCopy->_stateMap;
  v117 = v282;
  v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[11], v13}];
  v119 = [(NSDictionary *)v118 objectForKeyedSubscript:?];
  _RegisterTransition_0(v118, v117, v119, 12);
  MEMORY[0x277D82BD8](v119);
  *&v14 = MEMORY[0x277D82BD8](v120).n128_u64[0];
  v121 = selfCopy->_stateMap;
  v123 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[4], v14}];
  v122 = [(NSDictionary *)v121 objectForKeyedSubscript:?];
  _RegisterTransition_0(v121, v122, v280, 5);
  MEMORY[0x277D82BD8](v122);
  *&v15 = MEMORY[0x277D82BD8](v123).n128_u64[0];
  v125 = selfCopy->_stateMap;
  v129 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[3], v15}];
  v128 = [(NSDictionary *)v125 objectForKeyedSubscript:?];
  v124 = selfCopy->_stateMap;
  v127 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v126 = [(NSDictionary *)v124 objectForKeyedSubscript:?];
  _RegisterTransition_0(v125, v128, v126, 13);
  MEMORY[0x277D82BD8](v126);
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BD8](v128);
  *&v16 = MEMORY[0x277D82BD8](v129).n128_u64[0];
  v131 = selfCopy->_stateMap;
  v135 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[8], v16}];
  v134 = [(NSDictionary *)v131 objectForKeyedSubscript:?];
  v130 = selfCopy->_stateMap;
  v133 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v132 = [(NSDictionary *)v130 objectForKeyedSubscript:?];
  _RegisterTransition_0(v131, v134, v132, 6);
  MEMORY[0x277D82BD8](v132);
  MEMORY[0x277D82BD8](v133);
  MEMORY[0x277D82BD8](v134);
  *&v17 = MEMORY[0x277D82BD8](v135).n128_u64[0];
  v137 = selfCopy->_stateMap;
  v141 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[5], v17}];
  v140 = [(NSDictionary *)v137 objectForKeyedSubscript:?];
  v136 = selfCopy->_stateMap;
  v139 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v138 = [(NSDictionary *)v136 objectForKeyedSubscript:?];
  _RegisterTransition_0(v137, v140, v138, 7);
  MEMORY[0x277D82BD8](v138);
  MEMORY[0x277D82BD8](v139);
  MEMORY[0x277D82BD8](v140);
  *&v18 = MEMORY[0x277D82BD8](v141).n128_u64[0];
  v143 = selfCopy->_stateMap;
  v147 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[8], v18}];
  v146 = [(NSDictionary *)v143 objectForKeyedSubscript:?];
  v142 = selfCopy->_stateMap;
  v145 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v144 = [(NSDictionary *)v142 objectForKeyedSubscript:?];
  _RegisterTransition_0(v143, v146, v144, 11);
  MEMORY[0x277D82BD8](v144);
  MEMORY[0x277D82BD8](v145);
  MEMORY[0x277D82BD8](v146);
  *&v19 = MEMORY[0x277D82BD8](v147).n128_u64[0];
  v149 = selfCopy->_stateMap;
  v153 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[7], v19}];
  v152 = [(NSDictionary *)v149 objectForKeyedSubscript:?];
  v148 = selfCopy->_stateMap;
  v151 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v150 = [(NSDictionary *)v148 objectForKeyedSubscript:?];
  _RegisterTransition_0(v149, v152, v150, 10);
  MEMORY[0x277D82BD8](v150);
  MEMORY[0x277D82BD8](v151);
  MEMORY[0x277D82BD8](v152);
  *&v20 = MEMORY[0x277D82BD8](v153).n128_u64[0];
  v155 = selfCopy->_stateMap;
  v159 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[5], v20}];
  v158 = [(NSDictionary *)v155 objectForKeyedSubscript:?];
  v154 = selfCopy->_stateMap;
  v157 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v156 = [(NSDictionary *)v154 objectForKeyedSubscript:?];
  _RegisterTransition_0(v155, v158, v156, 11);
  MEMORY[0x277D82BD8](v156);
  MEMORY[0x277D82BD8](v157);
  MEMORY[0x277D82BD8](v158);
  *&v21 = MEMORY[0x277D82BD8](v159).n128_u64[0];
  v161 = selfCopy->_stateMap;
  v165 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[6], v21}];
  v164 = [(NSDictionary *)v161 objectForKeyedSubscript:?];
  v160 = selfCopy->_stateMap;
  v163 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v162 = [(NSDictionary *)v160 objectForKeyedSubscript:?];
  _RegisterTransition_0(v161, v164, v162, 10);
  MEMORY[0x277D82BD8](v162);
  MEMORY[0x277D82BD8](v163);
  MEMORY[0x277D82BD8](v164);
  *&v22 = MEMORY[0x277D82BD8](v165).n128_u64[0];
  v167 = selfCopy->_stateMap;
  v171 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[9], v22}];
  v170 = [(NSDictionary *)v167 objectForKeyedSubscript:?];
  v166 = selfCopy->_stateMap;
  v169 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v168 = [(NSDictionary *)v166 objectForKeyedSubscript:?];
  _RegisterTransition_0(v167, v170, v168, 11);
  MEMORY[0x277D82BD8](v168);
  MEMORY[0x277D82BD8](v169);
  MEMORY[0x277D82BD8](v170);
  *&v23 = MEMORY[0x277D82BD8](v171).n128_u64[0];
  v173 = selfCopy->_stateMap;
  v177 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[10], v23}];
  v176 = [(NSDictionary *)v173 objectForKeyedSubscript:?];
  v172 = selfCopy->_stateMap;
  v175 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v174 = [(NSDictionary *)v172 objectForKeyedSubscript:?];
  _RegisterTransition_0(v173, v176, v174, 10);
  MEMORY[0x277D82BD8](v174);
  MEMORY[0x277D82BD8](v175);
  MEMORY[0x277D82BD8](v176);
  *&v24 = MEMORY[0x277D82BD8](v177).n128_u64[0];
  v179 = selfCopy->_stateMap;
  v183 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[8], v24}];
  v182 = [(NSDictionary *)v179 objectForKeyedSubscript:?];
  v178 = selfCopy->_stateMap;
  v181 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v180 = [(NSDictionary *)v178 objectForKeyedSubscript:?];
  _RegisterTransition_0(v179, v182, v180, 8);
  MEMORY[0x277D82BD8](v180);
  MEMORY[0x277D82BD8](v181);
  MEMORY[0x277D82BD8](v182);
  *&v25 = MEMORY[0x277D82BD8](v183).n128_u64[0];
  v185 = selfCopy->_stateMap;
  v189 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[9], v25}];
  v188 = [(NSDictionary *)v185 objectForKeyedSubscript:?];
  v184 = selfCopy->_stateMap;
  v187 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v186 = [(NSDictionary *)v184 objectForKeyedSubscript:?];
  _RegisterTransition_0(v185, v188, v186, 9);
  MEMORY[0x277D82BD8](v186);
  MEMORY[0x277D82BD8](v187);
  MEMORY[0x277D82BD8](v188);
  *&v26 = MEMORY[0x277D82BD8](v189).n128_u64[0];
  v191 = selfCopy->_stateMap;
  v195 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[9], v26}];
  v194 = [(NSDictionary *)v191 objectForKeyedSubscript:?];
  v190 = selfCopy->_stateMap;
  v193 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v192 = [(NSDictionary *)v190 objectForKeyedSubscript:?];
  _RegisterTransition_0(v191, v194, v192, 7);
  MEMORY[0x277D82BD8](v192);
  MEMORY[0x277D82BD8](v193);
  MEMORY[0x277D82BD8](v194);
  *&v27 = MEMORY[0x277D82BD8](v195).n128_u64[0];
  v197 = selfCopy->_stateMap;
  v196 = v280;
  v199 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[11], v27}];
  v198 = [(NSDictionary *)v197 objectForKeyedSubscript:?];
  _RegisterTransition_0(v197, v196, v198, 12);
  MEMORY[0x277D82BD8](v198);
  *&v28 = MEMORY[0x277D82BD8](v199).n128_u64[0];
  v201 = selfCopy->_stateMap;
  v205 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[14], v28}];
  v204 = [(NSDictionary *)v201 objectForKeyedSubscript:?];
  v200 = selfCopy->_stateMap;
  v203 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[15]];
  v202 = [(NSDictionary *)v200 objectForKeyedSubscript:?];
  _RegisterTransition_0(v201, v204, v202, 16);
  MEMORY[0x277D82BD8](v202);
  MEMORY[0x277D82BD8](v203);
  MEMORY[0x277D82BD8](v204);
  *&v29 = MEMORY[0x277D82BD8](v205).n128_u64[0];
  v207 = selfCopy->_stateMap;
  v211 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[15], v29}];
  v210 = [(NSDictionary *)v207 objectForKeyedSubscript:?];
  v206 = selfCopy->_stateMap;
  v209 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[17]];
  v208 = [(NSDictionary *)v206 objectForKeyedSubscript:?];
  _RegisterTransition_0(v207, v210, v208, 20);
  MEMORY[0x277D82BD8](v208);
  MEMORY[0x277D82BD8](v209);
  MEMORY[0x277D82BD8](v210);
  *&v30 = MEMORY[0x277D82BD8](v211).n128_u64[0];
  v213 = selfCopy->_stateMap;
  v217 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[11], v30}];
  v216 = [(NSDictionary *)v213 objectForKeyedSubscript:?];
  v212 = selfCopy->_stateMap;
  v215 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[18]];
  v214 = [(NSDictionary *)v212 objectForKeyedSubscript:?];
  _RegisterTransition_0(v213, v216, v214, 21);
  MEMORY[0x277D82BD8](v214);
  MEMORY[0x277D82BD8](v215);
  MEMORY[0x277D82BD8](v216);
  *&v31 = MEMORY[0x277D82BD8](v217).n128_u64[0];
  v219 = selfCopy->_stateMap;
  v223 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[18], v31}];
  v222 = [(NSDictionary *)v219 objectForKeyedSubscript:?];
  v218 = selfCopy->_stateMap;
  v221 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[16]];
  v220 = [(NSDictionary *)v218 objectForKeyedSubscript:?];
  _RegisterTransition_0(v219, v222, v220, 17);
  MEMORY[0x277D82BD8](v220);
  MEMORY[0x277D82BD8](v221);
  MEMORY[0x277D82BD8](v222);
  *&v32 = MEMORY[0x277D82BD8](v223).n128_u64[0];
  v225 = selfCopy->_stateMap;
  v229 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[18], v32}];
  v228 = [(NSDictionary *)v225 objectForKeyedSubscript:?];
  v224 = selfCopy->_stateMap;
  v227 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v226 = [(NSDictionary *)v224 objectForKeyedSubscript:?];
  _RegisterTransition_0(v225, v228, v226, 19);
  MEMORY[0x277D82BD8](v226);
  MEMORY[0x277D82BD8](v227);
  MEMORY[0x277D82BD8](v228);
  *&v33 = MEMORY[0x277D82BD8](v229).n128_u64[0];
  v231 = selfCopy->_stateMap;
  v235 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[11], v33}];
  v234 = [(NSDictionary *)v231 objectForKeyedSubscript:?];
  v230 = selfCopy->_stateMap;
  v233 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[15]];
  v232 = [(NSDictionary *)v230 objectForKeyedSubscript:?];
  _RegisterTransition_0(v231, v234, v232, 16);
  MEMORY[0x277D82BD8](v232);
  MEMORY[0x277D82BD8](v233);
  MEMORY[0x277D82BD8](v234);
  *&v34 = MEMORY[0x277D82BD8](v235).n128_u64[0];
  v237 = selfCopy->_stateMap;
  v241 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[16], v34}];
  v240 = [(NSDictionary *)v237 objectForKeyedSubscript:?];
  v236 = selfCopy->_stateMap;
  v239 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v238 = [(NSDictionary *)v236 objectForKeyedSubscript:?];
  _RegisterTransition_0(v237, v240, v238, 18);
  MEMORY[0x277D82BD8](v238);
  MEMORY[0x277D82BD8](v239);
  MEMORY[0x277D82BD8](v240);
  *&v35 = MEMORY[0x277D82BD8](v241).n128_u64[0];
  v243 = selfCopy->_stateMap;
  v247 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[16], v35}];
  v246 = [(NSDictionary *)v243 objectForKeyedSubscript:?];
  v242 = selfCopy->_stateMap;
  v245 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[17]];
  v244 = [(NSDictionary *)v242 objectForKeyedSubscript:?];
  _RegisterTransition_0(v243, v246, v244, 20);
  MEMORY[0x277D82BD8](v244);
  MEMORY[0x277D82BD8](v245);
  MEMORY[0x277D82BD8](v246);
  *&v36 = MEMORY[0x277D82BD8](v247).n128_u64[0];
  [(NLSessionActivity *)selfCopy _configureStateActions];
  [(FIUIStateMachine *)selfCopy->_stateMachine export];
  objc_storeStrong(&v280, 0);
  objc_storeStrong(&v281, 0);
  objc_storeStrong(&v282, 0);
  objc_storeStrong(&v287, 0);
  objc_storeStrong(&v288, 0);
}

- (void)_configureStateActions
{
  selfCopy = self;
  __b[19] = a2;
  memset(__b, 0, 0x98uLL);
  NLActivityStateIdentifierShortHandStruct(__b);
  objc_initWeak(&location, selfCopy);
  stateMap = selfCopy->_stateMap;
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v70 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  v175 = MEMORY[0x277D85DD0];
  v176 = -1073741824;
  v177 = 0;
  v178 = __43__NLSessionActivity__configureStateActions__block_invoke;
  v179 = &unk_277D88970;
  objc_copyWeak(v180, &location);
  [v70 setEntry:&v175];
  MEMORY[0x277D82BD8](v70);
  *&v2 = MEMORY[0x277D82BD8](v71).n128_u64[0];
  v69 = selfCopy->_stateMap;
  v68 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[2], v2}];
  v67 = [(NSDictionary *)v69 objectForKeyedSubscript:?];
  v169 = MEMORY[0x277D85DD0];
  v170 = -1073741824;
  v171 = 0;
  v172 = __43__NLSessionActivity__configureStateActions__block_invoke_2;
  v173 = &unk_277D88970;
  objc_copyWeak(&v174, &location);
  [v67 setEntry:&v169];
  MEMORY[0x277D82BD8](v67);
  *&v3 = MEMORY[0x277D82BD8](v68).n128_u64[0];
  v66 = selfCopy->_stateMap;
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[3], v3}];
  v64 = [(NSDictionary *)v66 objectForKeyedSubscript:?];
  v163 = MEMORY[0x277D85DD0];
  v164 = -1073741824;
  v165 = 0;
  v166 = __43__NLSessionActivity__configureStateActions__block_invoke_3;
  v167 = &unk_277D88970;
  objc_copyWeak(&v168, &location);
  [v64 setEntry:&v163];
  MEMORY[0x277D82BD8](v64);
  *&v4 = MEMORY[0x277D82BD8](v65).n128_u64[0];
  v63 = selfCopy->_stateMap;
  v62 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[4], v4}];
  v61 = [(NSDictionary *)v63 objectForKeyedSubscript:?];
  v157 = MEMORY[0x277D85DD0];
  v158 = -1073741824;
  v159 = 0;
  v160 = __43__NLSessionActivity__configureStateActions__block_invoke_4;
  v161 = &unk_277D88970;
  objc_copyWeak(&v162, &location);
  [v61 setEntry:&v157];
  MEMORY[0x277D82BD8](v61);
  *&v5 = MEMORY[0x277D82BD8](v62).n128_u64[0];
  v60 = selfCopy->_stateMap;
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[8], v5}];
  v58 = [(NSDictionary *)v60 objectForKeyedSubscript:?];
  v151 = MEMORY[0x277D85DD0];
  v152 = -1073741824;
  v153 = 0;
  v154 = __43__NLSessionActivity__configureStateActions__block_invoke_5;
  v155 = &unk_277D88970;
  objc_copyWeak(&v156, &location);
  [v58 setEntry:&v151];
  MEMORY[0x277D82BD8](v58);
  *&v6 = MEMORY[0x277D82BD8](v59).n128_u64[0];
  v57 = selfCopy->_stateMap;
  v56 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[5], v6}];
  v55 = [(NSDictionary *)v57 objectForKeyedSubscript:?];
  v145 = MEMORY[0x277D85DD0];
  v146 = -1073741824;
  v147 = 0;
  v148 = __43__NLSessionActivity__configureStateActions__block_invoke_6;
  v149 = &unk_277D88970;
  objc_copyWeak(&v150, &location);
  [v55 setEntry:&v145];
  MEMORY[0x277D82BD8](v55);
  *&v7 = MEMORY[0x277D82BD8](v56).n128_u64[0];
  v54 = selfCopy->_stateMap;
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[6], v7}];
  v52 = [(NSDictionary *)v54 objectForKeyedSubscript:?];
  v139 = MEMORY[0x277D85DD0];
  v140 = -1073741824;
  v141 = 0;
  v142 = __43__NLSessionActivity__configureStateActions__block_invoke_7;
  v143 = &unk_277D88970;
  objc_copyWeak(&v144, &location);
  [v52 setEntry:&v139];
  MEMORY[0x277D82BD8](v52);
  *&v8 = MEMORY[0x277D82BD8](v53).n128_u64[0];
  v51 = selfCopy->_stateMap;
  v50 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[7], v8}];
  v49 = [(NSDictionary *)v51 objectForKeyedSubscript:?];
  v133 = MEMORY[0x277D85DD0];
  v134 = -1073741824;
  v135 = 0;
  v136 = __43__NLSessionActivity__configureStateActions__block_invoke_8;
  v137 = &unk_277D88970;
  objc_copyWeak(&v138, &location);
  [v49 setEntry:&v133];
  MEMORY[0x277D82BD8](v49);
  *&v9 = MEMORY[0x277D82BD8](v50).n128_u64[0];
  v48 = selfCopy->_stateMap;
  v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[9], v9}];
  v46 = [(NSDictionary *)v48 objectForKeyedSubscript:?];
  v127 = MEMORY[0x277D85DD0];
  v128 = -1073741824;
  v129 = 0;
  v130 = __43__NLSessionActivity__configureStateActions__block_invoke_9;
  v131 = &unk_277D88970;
  objc_copyWeak(&v132, &location);
  [v46 setEntry:&v127];
  MEMORY[0x277D82BD8](v46);
  *&v10 = MEMORY[0x277D82BD8](v47).n128_u64[0];
  v45 = selfCopy->_stateMap;
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[10], v10}];
  v43 = [(NSDictionary *)v45 objectForKeyedSubscript:?];
  v121 = MEMORY[0x277D85DD0];
  v122 = -1073741824;
  v123 = 0;
  v124 = __43__NLSessionActivity__configureStateActions__block_invoke_10;
  v125 = &unk_277D88970;
  objc_copyWeak(&v126, &location);
  [v43 setEntry:&v121];
  MEMORY[0x277D82BD8](v43);
  *&v11 = MEMORY[0x277D82BD8](v44).n128_u64[0];
  v42 = selfCopy->_stateMap;
  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[11], v11}];
  v40 = [(NSDictionary *)v42 objectForKeyedSubscript:?];
  v115 = MEMORY[0x277D85DD0];
  v116 = -1073741824;
  v117 = 0;
  v118 = __43__NLSessionActivity__configureStateActions__block_invoke_11;
  v119 = &unk_277D88970;
  objc_copyWeak(&v120, &location);
  [v40 setEntry:&v115];
  MEMORY[0x277D82BD8](v40);
  *&v12 = MEMORY[0x277D82BD8](v41).n128_u64[0];
  v39 = selfCopy->_stateMap;
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[18], v12}];
  v37 = [(NSDictionary *)v39 objectForKeyedSubscript:?];
  v109 = MEMORY[0x277D85DD0];
  v110 = -1073741824;
  v111 = 0;
  v112 = __43__NLSessionActivity__configureStateActions__block_invoke_12;
  v113 = &unk_277D88970;
  objc_copyWeak(&v114, &location);
  [v37 setEntry:&v109];
  MEMORY[0x277D82BD8](v37);
  *&v13 = MEMORY[0x277D82BD8](v38).n128_u64[0];
  v36 = selfCopy->_stateMap;
  v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[15], v13}];
  v34 = [(NSDictionary *)v36 objectForKeyedSubscript:?];
  v103 = MEMORY[0x277D85DD0];
  v104 = -1073741824;
  v105 = 0;
  v106 = __43__NLSessionActivity__configureStateActions__block_invoke_13;
  v107 = &unk_277D88970;
  objc_copyWeak(&v108, &location);
  [v34 setEntry:&v103];
  MEMORY[0x277D82BD8](v34);
  *&v14 = MEMORY[0x277D82BD8](v35).n128_u64[0];
  v33 = selfCopy->_stateMap;
  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[16], v14}];
  v31 = [(NSDictionary *)v33 objectForKeyedSubscript:?];
  v97 = MEMORY[0x277D85DD0];
  v98 = -1073741824;
  v99 = 0;
  v100 = __43__NLSessionActivity__configureStateActions__block_invoke_14;
  v101 = &unk_277D88970;
  objc_copyWeak(&v102, &location);
  [v31 setEntry:&v97];
  MEMORY[0x277D82BD8](v31);
  *&v15 = MEMORY[0x277D82BD8](v32).n128_u64[0];
  v30 = selfCopy->_stateMap;
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[12], v15}];
  v28 = [(NSDictionary *)v30 objectForKeyedSubscript:?];
  v91 = MEMORY[0x277D85DD0];
  v92 = -1073741824;
  v93 = 0;
  v94 = __43__NLSessionActivity__configureStateActions__block_invoke_15;
  v95 = &unk_277D88970;
  objc_copyWeak(&v96, &location);
  [v28 setEntry:&v91];
  MEMORY[0x277D82BD8](v28);
  *&v16 = MEMORY[0x277D82BD8](v29).n128_u64[0];
  v27 = selfCopy->_stateMap;
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[17], v16}];
  v25 = [(NSDictionary *)v27 objectForKeyedSubscript:?];
  v85 = MEMORY[0x277D85DD0];
  v86 = -1073741824;
  v87 = 0;
  v88 = __43__NLSessionActivity__configureStateActions__block_invoke_16;
  v89 = &unk_277D88970;
  objc_copyWeak(&v90, &location);
  [v25 setEntry:&v85];
  MEMORY[0x277D82BD8](v25);
  *&v17 = MEMORY[0x277D82BD8](v26).n128_u64[0];
  v24 = selfCopy->_stateMap;
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[13], v17}];
  v22 = [(NSDictionary *)v24 objectForKeyedSubscript:?];
  v79 = MEMORY[0x277D85DD0];
  v80 = -1073741824;
  v81 = 0;
  v82 = __43__NLSessionActivity__configureStateActions__block_invoke_17;
  v83 = &unk_277D88970;
  objc_copyWeak(&v84, &location);
  [v22 setEntry:&v79];
  MEMORY[0x277D82BD8](v22);
  *&v18 = MEMORY[0x277D82BD8](v23).n128_u64[0];
  v21 = selfCopy->_stateMap;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{__b[14], v18}];
  v19 = [(NSDictionary *)v21 objectForKeyedSubscript:?];
  v73 = MEMORY[0x277D85DD0];
  v74 = -1073741824;
  v75 = 0;
  v76 = __43__NLSessionActivity__configureStateActions__block_invoke_18;
  v77 = &unk_277D88970;
  objc_copyWeak(&v78, &location);
  [v19 setEntry:&v73];
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  objc_destroyWeak(&v78);
  objc_destroyWeak(&v84);
  objc_destroyWeak(&v90);
  objc_destroyWeak(&v96);
  objc_destroyWeak(&v102);
  objc_destroyWeak(&v108);
  objc_destroyWeak(&v114);
  objc_destroyWeak(&v120);
  objc_destroyWeak(&v126);
  objc_destroyWeak(&v132);
  objc_destroyWeak(&v138);
  objc_destroyWeak(&v144);
  objc_destroyWeak(&v150);
  objc_destroyWeak(&v156);
  objc_destroyWeak(&v162);
  objc_destroyWeak(&v168);
  objc_destroyWeak(&v174);
  objc_destroyWeak(v180);
  objc_destroyWeak(&location);
}

void __43__NLSessionActivity__configureStateActions__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onPrepare];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onRecovery];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onActivating];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onFirstActivation];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_5(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onActive];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_6(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onPaused];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_7(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onPausedNeedsHeartRate];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_8(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onHeartRatePaused];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_9(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onAutoPaused];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_10(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onAutoPausedNeedsHeartRate];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_11(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onEnding];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_12(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onEndingCollection];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_13(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onDiscarding];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_14(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onSaving];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_15(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onErrorActivating];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_16(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onCompleted];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_17(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onErrorEnding];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_18(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onFatalError];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_startPrecisionStartAccumulators
{
  selfCopy = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v11[1] = COERCE_ID(-5.0);
  date = [MEMORY[0x277CBEAA8] date];
  v11[0] = [date dateByAddingTimeInterval:-5.0];
  MEMORY[0x277D82BD8](date);
  heartRatePrecisionStartAccumulator = selfCopy->_heartRatePrecisionStartAccumulator;
  v3 = v11[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __53__NLSessionActivity__startPrecisionStartAccumulators__block_invoke;
  v9 = &unk_277D88B00;
  objc_copyWeak(v10, location);
  [(NLSessionActivityDataAccumulator *)heartRatePrecisionStartAccumulator startAccumulatingWithStartDate:v3 updateHandler:&v5];
  objc_destroyWeak(v10);
  objc_storeStrong(v11, 0);
  objc_destroyWeak(location);
}

double __53__NLSessionActivity__startPrecisionStartAccumulators__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 heartRatePrecisionStartAccumulator];
  [WeakRetained heartRatePrecisionStartAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (id)currentWorkoutActivity
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9[1] = a2;
  v9[0] = 0;
  if ([(NLSessionActivity *)self shouldSplitByActivity])
  {
    currentWorkoutActivity = [(HKLiveWorkoutBuilder *)selfCopy->_builder currentWorkoutActivity];
    v3 = v9[0];
    v9[0] = currentWorkoutActivity;
    *&v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
    if (!v9[0])
    {
      workoutActivities = [(HKLiveWorkoutBuilder *)selfCopy->_builder workoutActivities];
      v9[0] = [workoutActivities lastObject];
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](workoutActivities);
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v11, v9[0]);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[multisport] currentWorkoutActivity returned nil, returning last activity %@", v11, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  v6 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v6;
}

- (id)currentIntervalWorkoutActivity
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v9[1] = a2;
  v9[0] = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)self->_configuration isInterval])
  {
    currentWorkoutActivity = [(HKLiveWorkoutBuilder *)selfCopy->_builder currentWorkoutActivity];
    v3 = v9[0];
    v9[0] = currentWorkoutActivity;
    *&v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
    if (!v9[0])
    {
      workoutActivities = [(HKLiveWorkoutBuilder *)selfCopy->_builder workoutActivities];
      v9[0] = [workoutActivities lastObject];
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](workoutActivities);
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v11, v9[0]);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[intervals] currentWorkoutActivity returned nil, returning last activity %@", v11, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  v6 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v6;
}

- (id)currentActivityStartDate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(NLSessionActivity *)self currentWorkoutActivity];
  if (location[0])
  {
    startDate = [location[0] startDate];
  }

  else
  {
    startDate = [(HKLiveWorkoutBuilder *)selfCopy->_builder startDate];
  }

  objc_storeStrong(location, 0);
  v2 = startDate;

  return v2;
}

- (id)_latestCompletedIntervalActivityEndDate
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v21[1] = a2;
  v21[0] = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)self->_configuration isInterval])
  {
    location = [(HKLiveWorkoutBuilder *)selfCopy->_builder workoutActivities];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location);
    v17 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
    if (v17)
    {
      v13 = *__b[2];
      v14 = 0;
      v15 = v17;
      while (1)
      {
        v12 = v14;
        if (*__b[2] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(__b[1] + 8 * v14);
        if (v21[0])
        {
          endDate = [v19 endDate];
          v4 = MEMORY[0x277D82BD8](endDate).n128_u64[0];
          if (endDate)
          {
            v9 = v21[0];
            endDate2 = [v19 endDate];
            v5 = [v9 laterDate:?];
            v6 = v21[0];
            v21[0] = v5;
            MEMORY[0x277D82BD8](v6);
            v4 = MEMORY[0x277D82BD8](endDate2).n128_u64[0];
          }
        }

        else
        {
          endDate3 = [v19 endDate];
          v3 = v21[0];
          v21[0] = endDate3;
          v4 = MEMORY[0x277D82BD8](v3).n128_u64[0];
        }

        ++v14;
        if (v12 + 1 >= v15)
        {
          v14 = 0;
          v15 = [obj countByEnumeratingWithState:__b objects:v23 count:{16, *&v4}];
          if (!v15)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    objc_storeStrong(&location, 0);
  }

  v8 = MEMORY[0x277D82BE0](v21[0]);
  objc_storeStrong(v21, 0);

  return v8;
}

- (void)_onRecovery
{
  v48 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v44[1] = a2;
  startDate = [(HKLiveWorkoutBuilder *)self->_builder startDate];
  activityBeginDate = selfCopy->_activityBeginDate;
  selfCopy->_activityBeginDate = startDate;
  v44[0] = [(NLSessionActivity *)selfCopy currentActivityStartDate];
  currentWorkoutEvents = [(NLSessionActivity *)selfCopy currentWorkoutEvents];
  _HKInitializeLogging();
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v41 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v47, selfCopy->_activityBeginDate, v44[0]);
    _os_log_impl(&dword_20AEA4000, location, v41, "[SessionActivity] Attempting recovery with builder start date %@, current activity start date %@", v47, 0x16u);
  }

  objc_storeStrong(&location, 0);
  [(NLSessionActivity *)selfCopy _startAccumulatingElapsedTimeWithStartDate:selfCopy->_activityBeginDate];
  [(NLSessionActivity *)selfCopy _startIdempotentAccumulatingDataWithStartDate:selfCopy->_activityBeginDate];
  [(NLSessionActivity *)selfCopy _startActivityDependentAccumulatingDataWithStartDate:v44[0]];
  segmentAccumulator = [(NLSessionActivity *)selfCopy segmentAccumulator];
  [(WOSegmentAccumulator *)segmentAccumulator recoverSegmentMarkersFrom:currentWorkoutEvents];
  MEMORY[0x277D82BD8](segmentAccumulator);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_splitsAccumulators);
  v34 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
  if (v34)
  {
    v29 = *__b[2];
    v30 = 0;
    v31 = v34;
    while (1)
    {
      v28 = v30;
      if (*__b[2] != v29)
      {
        objc_enumerationMutation(obj);
      }

      v40 = *(__b[1] + 8 * v30);
      [v40 recoverFrom:currentWorkoutEvents];
      ++v30;
      if (v28 + 1 >= v31)
      {
        v30 = 0;
        v31 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
        if (!v31)
        {
          break;
        }
      }
    }
  }

  splitsDisplayAccumulator = [(NLSessionActivity *)selfCopy splitsDisplayAccumulator];
  [(WOSplitsDisplayAccumulator *)splitsDisplayAccumulator assignStartValues];
  metadata = [(HKLiveWorkoutBuilder *)selfCopy->_builder metadata];
  v38 = [metadata objectForKeyedSubscript:@"_HKPrivateMetadataKeyFastestPace"];
  v4 = MEMORY[0x277D82BD8](metadata).n128_u64[0];
  if (v38)
  {
    paceAccumulator = [(NLSessionActivity *)selfCopy paceAccumulator];
    [v38 doubleValue];
    [(NLSessionActivityPaceAccumulator *)paceAccumulator recoverFastestPace:?];
    v4 = MEMORY[0x277D82BD8](paceAccumulator).n128_u64[0];
  }

  [(WORaceCoordinator *)selfCopy->_raceCoordinator recoverRoutePoints];
  racePositionProvider = [(WORaceCoordinator *)selfCopy->_raceCoordinator racePositionProvider];
  [(WORacePositionProvider *)racePositionProvider recoverFrom:selfCopy->_builder];
  *&v5 = MEMORY[0x277D82BD8](racePositionProvider).n128_u64[0];
  v22 = selfCopy;
  racePositionProvider2 = [(WORaceCoordinator *)selfCopy->_raceCoordinator racePositionProvider];
  [(NLSessionActivity *)v22 addSessionStateObserver:?];
  *&v6 = MEMORY[0x277D82BD8](racePositionProvider2).n128_u64[0];
  [(NLPacerDistanceGoalProgressAccumulator *)selfCopy->_pacerDistanceGoalProgressAccumulator recoverFrom:currentWorkoutEvents, v6];
  _currentSnapshot = [(HKLiveWorkoutBuilder *)selfCopy->_builder _currentSnapshot];
  fiui_finalWorkoutUUID = [_currentSnapshot fiui_finalWorkoutUUID];
  *&v7 = MEMORY[0x277D82BD8](_currentSnapshot).n128_u64[0];
  if (fiui_finalWorkoutUUID)
  {
    [(NLSessionActivityElevationAccumulator *)selfCopy->_elevationAccumulator recoverLocationsFromStartDate:v44[0] workoutUUID:fiui_finalWorkoutUUID, v7];
    [(NLSessionActivityLocationPositionAccumulator *)selfCopy->_locationPositionAccumulator recoverLocationsFromStartDate:v44[0] healthStore:selfCopy->_healthStore workoutUUID:fiui_finalWorkoutUUID];
  }

  builder = [(NLSessionActivity *)selfCopy builder];
  workoutEvents = [(HKLiveWorkoutBuilder *)builder workoutEvents];
  v36 = FIFilterPauseResumeEvents();
  MEMORY[0x277D82BD8](workoutEvents);
  *&v8 = MEMORY[0x277D82BD8](builder).n128_u64[0];
  downhillSnowSportsAccumulator = selfCopy->_downhillSnowSportsAccumulator;
  builder2 = [(NLSessionActivity *)selfCopy builder];
  downhillRunEvents = [(HKLiveWorkoutBuilder *)builder2 downhillRunEvents];
  [NLSessionActivityDownhillSnowSportsAccumulator recoverWithDownhillRunEvents:"recoverWithDownhillRunEvents:pauseResumeEvents:healthStore:completionHandler:" pauseResumeEvents:? healthStore:? completionHandler:?];
  MEMORY[0x277D82BD8](downhillRunEvents);
  [(NLSessionActivity *)selfCopy _setState:2, MEMORY[0x277D82BD8](builder2).n128_f64[0]];
  nl_lastUnbalancedPauseEvent = [(HKLiveWorkoutBuilder *)selfCopy->_builder nl_lastUnbalancedPauseEvent];
  metadata2 = [nl_lastUnbalancedPauseEvent metadata];
  v18 = [metadata2 objectForKeyedSubscript:@"_HKPrivateAutoPause"];
  bOOLValue = [v18 BOOLValue];
  MEMORY[0x277D82BD8](v18);
  *&v9 = MEMORY[0x277D82BD8](metadata2).n128_u64[0];
  if (bOOLValue)
  {
    v11 = selfCopy;
    date = [MEMORY[0x277CBEAA8] date];
    [NLSessionActivity _setPauseTracking:v11 atDate:"_setPauseTracking:atDate:eventSource:" eventSource:0];
    *&v10 = MEMORY[0x277D82BD8](date).n128_u64[0];
  }

  else if (nl_lastUnbalancedPauseEvent)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:6, v9];
  }

  else
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:5, v9];
  }

  [(WOSessionActivityDeviceObserver *)selfCopy->_deviceObserver startObserving];
  objc_storeStrong(&nl_lastUnbalancedPauseEvent, 0);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&fiui_finalWorkoutUUID, 0);
  objc_storeStrong(&v38, 0);
  objc_storeStrong(&currentWorkoutEvents, 0);
  objc_storeStrong(v44, 0);
}

void __32__NLSessionActivity__onRecovery__block_invoke(NSObject *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0] == 0;
    v3 = [location[0] debugDescription];
    __os_log_helper_16_2_2_4_0_8_64(v7, v2, v3);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "[SessionActivity] recoverWithDownhillRunEvents returned with success=%{BOOL}d error=%@", v7, 0x12u);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)_onActivating
{
  weatherManager = [(NLSessionActivity *)self weatherManager];
  [(NLSessionActivityWeatherManager *)weatherManager setWorkoutStartDate:self->_activityBeginDate];
  [(NLSessionActivity *)self _startBuilderWithStartDate:self->_activityBeginDate, MEMORY[0x277D82BD8](weatherManager).n128_f64[0]];
  [(NLSessionActivity *)self _startAccumulatingElapsedTimeWithStartDate:self->_activityBeginDate];
}

- (void)_onFirstActivation
{
  [(NLSessionActivity *)self _stopAccumulatingPrecisionStartAccumulators];
  [(NLSessionActivity *)self _startAccumulatingDataWithStartDate:self->_activityBeginDate];
  racePositionProvider = [(WORaceCoordinator *)self->_raceCoordinator racePositionProvider];
  [(NLSessionActivity *)self addSessionStateObserver:?];
  [(NLSessionActivity *)self _powerLogWorkoutStart];
  [(NLSessionActivity *)self _updateMetadataAtWorkoutFirstActivation];
  [(FIUIStateMachine *)self->_stateMachine event:5];
}

- (void)_updateMetadataAtWorkoutFirstActivation
{
  selfCopy = self;
  v8[1] = a2;
  configuration = [(NLSessionActivity *)self configuration];
  startSource = [(WOCoreLiveWorkoutConfiguration *)configuration startSource];
  *&v2 = MEMORY[0x277D82BD8](configuration).n128_u64[0];
  if (startSource == 9)
  {
    v8[0] = [MEMORY[0x277CBEB38] dictionary];
    configuration2 = [(NLSessionActivity *)selfCopy configuration];
    dateUserRequestedToStartWorkout = [(WOCoreLiveWorkoutConfiguration *)configuration2 dateUserRequestedToStartWorkout];
    [v8[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](dateUserRequestedToStartWorkout);
    *&v3 = MEMORY[0x277D82BD8](configuration2).n128_u64[0];
    [(NLSessionActivity *)selfCopy insertOrUpdateMetadata:v8[0] forceTopLevel:1, v3];
    objc_storeStrong(v8, 0);
  }
}

- (void)_onActive
{
  [(NLSessionActivity *)self _setState:6];
  [(NLSessionActivity *)self _updateHeartRateUpdateAvailability];
  HKSessionTrackerAriadneTrigger();
}

- (void)_onEnding
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19 = a2;
  [(NLSessionActivity *)self _updateHeartRateUpdateAvailability];
  [(NLSessionActivity *)selfCopy _setState:10];
  racePositionProvider = [(WORaceCoordinator *)selfCopy->_raceCoordinator racePositionProvider];
  [(NLSessionActivity *)selfCopy removeSessionStateObserver:?];
  [(NLSessionActivity *)selfCopy _stopTrackingActivityWithEndDate:selfCopy->_activityEndDate, MEMORY[0x277D82BD8](racePositionProvider).n128_f64[0]];
  if (![(NSDate *)selfCopy->_activityEndDate isEqualToDate:selfCopy->_activityBeginDate])
  {
    [(NLSessionActivity *)selfCopy _logStatistics];
  }

  [(HKLiveWorkoutBuilder *)selfCopy->_builder elapsedTimeAtDate:selfCopy->_activityEndDate];
  v18 = v2;
  _HKInitializeLogging();
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_0_8_64(v21, v18, selfCopy->_activityEndDate);
    _os_log_impl(&dword_20AEA4000, location, v16, "[SessionActivity] onEnding called. Builder elapsed time: %f, at end date: %@", v21, 0x16u);
  }

  objc_storeStrong(&location, 0);
  lifecycleDelegate = [(NLSessionActivity *)selfCopy lifecycleDelegate];
  v13 = [(NLSessionActivityLifecycleDelegate *)lifecycleDelegate shouldAutoDiscardBasedOnDuration:*&v18];
  *&v3 = MEMORY[0x277D82BD8](lifecycleDelegate).n128_u64[0];
  if (v13)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:16, v3];
  }

  else
  {
    _currentSnapshot = [(HKLiveWorkoutBuilder *)selfCopy->_builder _currentSnapshot];
    demoDataProvider = [(NLSessionActivity *)selfCopy demoDataProvider];
    v4 = MEMORY[0x277D82BD8](demoDataProvider).n128_u64[0];
    if (demoDataProvider)
    {
      demoDataProvider2 = [(NLSessionActivity *)selfCopy demoDataProvider];
      v5 = [(NLWorkoutDemoDataProvider *)demoDataProvider2 demoWorkoutWithSnapshot:_currentSnapshot];
      v6 = _currentSnapshot;
      _currentSnapshot = v5;
      MEMORY[0x277D82BD8](v6);
      v4 = MEMORY[0x277D82BD8](demoDataProvider2).n128_u64[0];
    }

    lifecycleDelegate2 = [(NLSessionActivity *)selfCopy lifecycleDelegate];
    [(NLSessionActivityLifecycleDelegate *)lifecycleDelegate2 sessionActivity:selfCopy willEndWithHKWorkoutSnapshot:_currentSnapshot];
    *&v7 = MEMORY[0x277D82BD8](lifecycleDelegate2).n128_u64[0];
    savingDelegate = [(NLSessionActivity *)selfCopy savingDelegate];
    [(NLSessionActivitySavingDelegate *)savingDelegate activity:selfCopy willSaveWorkoutForSnapshot:_currentSnapshot];
    MEMORY[0x277D82BD8](savingDelegate);
    objc_storeStrong(&_currentSnapshot, 0);
  }
}

- (void)_onSaving
{
  selfCopy = self;
  v23[1] = a2;
  [(NLSessionActivity *)self _stopActivityDependentAccumulatorsWithActivity:0];
  v23[0] = [(HKLiveWorkoutBuilder *)selfCopy->_builder _currentSnapshot];
  demoDataProvider = [(NLSessionActivity *)selfCopy demoDataProvider];
  v2 = MEMORY[0x277D82BD8](demoDataProvider).n128_u64[0];
  if (demoDataProvider)
  {
    demoDataProvider2 = [(NLSessionActivity *)selfCopy demoDataProvider];
    v3 = [(NLWorkoutDemoDataProvider *)demoDataProvider2 demoWorkoutWithSnapshot:v23[0]];
    v4 = v23[0];
    v23[0] = v3;
    MEMORY[0x277D82BD8](v4);
    v2 = MEMORY[0x277D82BD8](demoDataProvider2).n128_u64[0];
  }

  lifecycleDelegate = [(NLSessionActivity *)selfCopy lifecycleDelegate];
  [(NLSessionActivityLifecycleDelegate *)lifecycleDelegate sessionActivity:selfCopy didUpdateWorkout:v23[0] workoutIsFinal:0];
  MEMORY[0x277D82BD8](lifecycleDelegate);
  v6 = selfCopy;
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __30__NLSessionActivity__onSaving__block_invoke;
  v20 = &unk_277D88B48;
  v21 = MEMORY[0x277D82BE0](selfCopy);
  v22 = MEMORY[0x277D82BE0](v23[0]);
  [(NLSessionActivity *)v6 _notifyDataObserversWithBlock:&v16];
  builder = [(NLSessionActivity *)selfCopy builder];
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __30__NLSessionActivity__onSaving__block_invoke_2;
  v14 = &unk_277D88B98;
  v15 = MEMORY[0x277D82BE0](selfCopy);
  [(HKLiveWorkoutBuilder *)builder finishWorkoutWithCompletion:&v10];
  MEMORY[0x277D82BD8](builder);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v23, 0);
}

void __30__NLSessionActivity__onSaving__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [a1[4] dataProvider];
  [v3 dataProvider:? didUpdateWorkout:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

void __30__NLSessionActivity__onSaving__block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __30__NLSessionActivity__onSaving__block_invoke_3;
  v12 = &unk_277D88B70;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](a1[4]);
  v15[0] = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __30__NLSessionActivity__onSaving__block_invoke_3(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  v8[0] = MEMORY[0x277D82BE0](*(a1 + 32));
  v7 = [*(a1 + 40) demoDataProvider];
  v1 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v7)
  {
    v5 = [*(a1 + 40) demoDataProvider];
    v2 = [v5 demoWorkoutWithSnapshot:*(a1 + 32)];
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x277D82BD8](v3);
    v1 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  }

  [*(a1 + 40) _handleFinishWorkoutWithWorkout:v8[0] error:{*(a1 + 48), *&v1, v8}];
  objc_storeStrong(location, 0);
}

- (void)_onErrorActivating
{
  selfCopy = self;
  location[1] = a2;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] Error activating builder for workout, discarding workout", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(FIUIStateMachine *)selfCopy->_stateMachine event:16];
}

- (void)_onDiscarding
{
  builder = [(NLSessionActivity *)self builder];
  [(HKLiveWorkoutBuilder *)builder discardWorkout];
  lifecycleDelegate = [(NLSessionActivity *)self lifecycleDelegate];
  [(NLSessionActivityLifecycleDelegate *)lifecycleDelegate didDiscardSessionActivity:self];
  savingDelegate = [(NLSessionActivity *)self savingDelegate];
  [(NLSessionActivitySavingDelegate *)savingDelegate activityDidDiscardWorkout:self];
  [(FIUIStateMachine *)self->_stateMachine event:20, MEMORY[0x277D82BD8](savingDelegate).n128_f64[0]];
}

- (void)_onCompleted
{
  [(NLSessionActivity *)self setBuilder:?];
  [(NLSessionActivity *)self _powerLogWorkoutStop];
  [(NLSessionActivity *)self _setState:7];
  objc_storeStrong(&self->_raceCoordinator, 0);
}

- (void)_startTracking
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v11[1] = a2;
  if ([(NLSessionActivity *)self state]== 1)
  {
    activityBeginDate = selfCopy->_activityBeginDate;
    v7 = 0;
    if (activityBeginDate)
    {
      objc_storeStrong(&selfCopy->_activityBeginDate, activityBeginDate);
    }

    else
    {
      date = [MEMORY[0x277CBEAA8] date];
      v7 = 1;
      objc_storeStrong(&selfCopy->_activityBeginDate, date);
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](date);
    }

    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v13, selfCopy->_activityBeginDate);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Start tracking with activity begin date %{public}@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(FIUIStateMachine *)selfCopy->_stateMachine event:3];
  }

  else
  {
    _HKInitializeLogging();
    v11[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v10 = 16;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      log = v11[0];
      type = v10;
      v5 = NLSessionActivityStateDescription([(NLSessionActivity *)selfCopy state]);
      v9 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_1_8_64(v14, v9);
      _os_log_error_impl(&dword_20AEA4000, log, type, "*** Start tracking called in incorrect state %@", v14, 0xCu);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(v11, 0);
  }
}

- (void)_startTrackingWithStartDate:(id)date
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  if (selfCopy->_activityBeginDate && ![(NSDate *)selfCopy->_activityBeginDate isEqual:location[0]])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_66_8_66(v6, selfCopy->_activityBeginDate, location[0]);
      _os_log_error_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_ERROR, "[SessionActivity] *** API Misuse: Trying to modify start date in startTracking call: An activity initialized with a start date cannot modify its start date (%{public}@ != %{public}@)", v6, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    __assert_rtn("[NLSessionActivity _startTrackingWithStartDate:]", "NLSessionActivity.m", 1104, "false");
  }

  objc_storeStrong(&selfCopy->_activityBeginDate, location[0]);
  [(NLSessionActivity *)selfCopy _startTracking];
  objc_storeStrong(location, 0);
}

- (void)_endTracking
{
  v44 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v39[1] = a2;
  _HKInitializeLogging();
  v39[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v39[0];
    type = v38;
    _stateDescription = [(NLSessionActivity *)selfCopy _stateDescription];
    v37 = MEMORY[0x277D82BE0](_stateDescription);
    __os_log_helper_16_2_2_8_66_8_66(v43, v37, selfCopy->_activityEndDate);
    _os_log_impl(&dword_20AEA4000, log, type, "End tracking called with %{public}@; activityEndDate: %{public}@;", v43, 0x16u);
    MEMORY[0x277D82BD8](_stateDescription);
    objc_storeStrong(&v37, 0);
  }

  objc_storeStrong(v39, 0);
  [(NLSessionActivity *)selfCopy removeMetadata:@"_HKPrivateMetadataKeyAnalyticsIdentifier" forceTopLevel:1];
  if (selfCopy->_activityEndDate)
  {
    _HKInitializeLogging();
    v28 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v27 = 16;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v13 = v28;
      v14 = v27;
      __os_log_helper_16_0_0(v26);
      _os_log_error_impl(&dword_20AEA4000, v13, v14, "[SessionActivity] API Misuse: endTracking called multiple times", v26, 2u);
    }

    objc_storeStrong(&v28, 0);
  }

  else
  {
    nl_lastUnbalancedPauseEvent = [(HKLiveWorkoutBuilder *)selfCopy->_builder nl_lastUnbalancedPauseEvent];
    if (nl_lastUnbalancedPauseEvent)
    {
      dateInterval = [nl_lastUnbalancedPauseEvent dateInterval];
      startDate = [dateInterval startDate];
      _latestCompletedIntervalActivityEndDate = [(NLSessionActivity *)selfCopy _latestCompletedIntervalActivityEndDate];
      if (_latestCompletedIntervalActivityEndDate)
      {
        dateInterval2 = [nl_lastUnbalancedPauseEvent dateInterval];
        startDate2 = [dateInterval2 startDate];
        v2 = [startDate2 laterDate:_latestCompletedIntervalActivityEndDate];
        v3 = startDate;
        startDate = v2;
        MEMORY[0x277D82BD8](v3);
        MEMORY[0x277D82BD8](startDate2);
        MEMORY[0x277D82BD8](dateInterval2);
      }

      _HKInitializeLogging();
      v33 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v32 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v42, startDate);
        _os_log_impl(&dword_20AEA4000, v33, v32, "First call to endTracking while workout is paused, ending at %@.", v42, 0xCu);
      }

      objc_storeStrong(&v33, 0);
      objc_storeStrong(&selfCopy->_activityEndDate, startDate);
      objc_storeStrong(&_latestCompletedIntervalActivityEndDate, 0);
      objc_storeStrong(&startDate, 0);
    }

    else
    {
      _HKInitializeLogging();
      v31 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v30 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v15 = v31;
        v16 = v30;
        __os_log_helper_16_0_0(v29);
        _os_log_impl(&dword_20AEA4000, v15, v16, "First call to endTracking, ending now.", v29, 2u);
      }

      objc_storeStrong(&v31, 0);
      date = [MEMORY[0x277CBEAA8] date];
      activityEndDate = selfCopy->_activityEndDate;
      selfCopy->_activityEndDate = date;
      MEMORY[0x277D82BD8](activityEndDate);
    }

    objc_storeStrong(&nl_lastUnbalancedPauseEvent, 0);
  }

  if (!selfCopy->_activityBeginDate)
  {
    objc_storeStrong(&selfCopy->_activityBeginDate, selfCopy->_activityEndDate);
  }

  if ([(NLSessionActivity *)selfCopy showVideoPlaybackCurrentTime])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = MEMORY[0x277CCD7E8];
    secondUnit = [MEMORY[0x277CCDAB0] secondUnit];
    [(SMSeymourElapsedTimeAccumulator *)selfCopy->_seymourElapsedTimeAccumulator videoPlaybackCurrentTime];
    v24 = [v11 quantityWithUnit:secondUnit doubleValue:?];
    [dictionary setObject:v24 forKeyedSubscript:{*MEMORY[0x277D0A7B0], MEMORY[0x277D82BD8](secondUnit).n128_f64[0]}];
    _HKInitializeLogging();
    v23 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      [v24 _value];
      __os_log_helper_16_0_1_8_0(v41, v6);
      _os_log_impl(&dword_20AEA4000, v23, OS_LOG_TYPE_DEFAULT, "[SessionActivity][VideoPlaybackCurrentTime] Updated duration to %f", v41, 0xCu);
    }

    objc_storeStrong(&v23, 0);
    [(NLSessionActivity *)selfCopy insertOrUpdateMetadata:dictionary forceTopLevel:1];
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&dictionary, 0);
  }

  activityType = [(NLSessionActivity *)selfCopy activityType];
  supportsTrackRunning = [(FIUIWorkoutActivityType *)activityType supportsTrackRunning];
  v7 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
  if (supportsTrackRunning)
  {
    v8 = +[WOCoreTrackRunningCoordinator shared];
    [(WOCoreTrackRunningCoordinator *)v8 reset];
    v7 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  }

  [(FIUIStateMachine *)selfCopy->_stateMachine event:12, *&v7];
}

- (void)_endCollectionWithEndDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  if (selfCopy->_endCollectionCalled)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v6 = 2;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        log = v7;
        type = v6;
        __os_log_helper_16_0_0(v5);
        _os_log_debug_impl(&dword_20AEA4000, log, type, "[SessionActivity] endCollection already called, ignoring.", v5, 2u);
      }

      objc_storeStrong(&v7, 0);
    }
  }

  else
  {
    if (location[0])
    {
      objc_storeStrong(&selfCopy->_activityEndDate, location[0]);
    }

    [(FIUIStateMachine *)selfCopy->_stateMachine event:21];
    selfCopy->_endCollectionCalled = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_onEndingCollection
{
  selfCopy = self;
  v9[1] = a2;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __40__NLSessionActivity__onEndingCollection__block_invoke;
  v7 = &unk_277D88BC0;
  v8 = MEMORY[0x277D82BE0](self);
  v9[0] = _Block_copy(&v3);
  builder = [(NLSessionActivity *)selfCopy builder];
  [(HKLiveWorkoutBuilder *)builder endCollectionWithEndDate:selfCopy->_activityEndDate completion:v9[0]];
  MEMORY[0x277D82BD8](builder);
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void __40__NLSessionActivity__onEndingCollection__block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v8, location);
      _os_log_error_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_ERROR, "[SessionActivity] EndCollectionWithEndDate:completion: on session builder failed with error %@:", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    [*(a1[4].isa + 4) eventAsync:19];
  }

  else
  {
    [*(a1[4].isa + 4) eventAsync:17];
  }

  objc_storeStrong(&location, 0);
}

- (void)_setState:(unint64_t)state
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v19 = a2;
  stateCopy = state;
  if (self->_state != state)
  {
    _HKInitializeLogging();
    v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      log = v17;
      type = v16;
      v11 = NLSessionActivityStateDescription(stateCopy);
      v15 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_2_8_0_8_66(v22, stateCopy, v15);
      _os_log_impl(&dword_20AEA4000, log, type, "[W] _setState called. Changing activity state to %lu (%{public}@)", v22, 0x16u);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v17, 0);
    state = selfCopy->_state;
    selfCopy->_state = stateCopy;
    memset(__b, 0, sizeof(__b));
    obj = [(NSHashTable *)selfCopy->_stateObservers allObjects];
    v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v21 count:16];
    if (v8)
    {
      v4 = *__b[2];
      v5 = 0;
      v6 = v8;
      while (1)
      {
        v3 = v5;
        if (*__b[2] != v4)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(__b[1] + 8 * v5);
        [v13 sessionActivity:selfCopy didChangeFromState:state toState:stateCopy];
        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v21 count:16];
          if (!v6)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }
}

- (void)_writeConfigurationMetadata
{
  selfCopy = self;
  v21[1] = a2;
  v21[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NLSessionActivity activityMoveMode](selfCopy, "activityMoveMode")}];
  [v21[0] setObject:? forKey:?];
  localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
  name = [localTimeZone name];
  [v21[0] setObject:? forKey:?];
  MEMORY[0x277D82BD8](name);
  *&v2 = MEMORY[0x277D82BD8](localTimeZone).n128_u64[0];
  v14 = MEMORY[0x277CCABB0];
  configuration = [(NLSessionActivity *)selfCopy configuration];
  v15 = [v14 numberWithBool:{-[WOCoreLiveWorkoutConfiguration isUltraMode](configuration, "isUltraMode")}];
  [v21[0] setObject:? forKey:?];
  MEMORY[0x277D82BD8](v15);
  uUIDString = [(NSUUID *)selfCopy->_UUID UUIDString];
  [v21[0] setObject:? forKey:?];
  activityType = [(NLSessionActivity *)selfCopy activityType];
  supportsTrackRunning = [(FIUIWorkoutActivityType *)activityType supportsTrackRunning];
  *&v3 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
  if (supportsTrackRunning)
  {
    v10 = +[WOCoreTrackRunningCoordinator shared];
    location = [(WOCoreTrackRunningCoordinator *)v10 trackId];
    v4 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    if (location)
    {
      v9 = +[WOTrackRunningMetadataKeys trackIdentifier];
      [v21[0] setObject:location forKey:?];
      v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    }

    v7 = +[WOCoreTrackRunningCoordinator shared];
    didShowTrackPrompt = [(WOCoreTrackRunningCoordinator *)v7 didShowTrackPrompt];
    *&v5 = MEMORY[0x277D82BD8](v7).n128_u64[0];
    if (didShowTrackPrompt)
    {
      v6 = +[WOTrackRunningMetadataKeys promptedForTrackMode];
      [v21[0] setObject:MEMORY[0x277CBEC38] forKey:?];
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(&location, 0);
  }

  [(NLSessionActivity *)selfCopy insertOrUpdateMetadata:v21[0] forceTopLevel:1, v3];
  objc_storeStrong(v21, 0);
}

- (void)_createIdempotentAccumulators
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  v2 = [[NLSessionActivityEnergyBurnAccumulator alloc] initWithBuilder:self->_builder];
  energyBurnAccumulator = selfCopy->_energyBurnAccumulator;
  selfCopy->_energyBurnAccumulator = v2;
  MEMORY[0x277D82BD8](energyBurnAccumulator);
  v4 = [[NLSessionActivityFlightsClimbedAccumulator alloc] initWithBuilder:selfCopy->_builder];
  flightsClimbedAccumulator = selfCopy->_flightsClimbedAccumulator;
  selfCopy->_flightsClimbedAccumulator = v4;
  MEMORY[0x277D82BD8](flightsClimbedAccumulator);
  v6 = [[NLStrideLengthAccumulator alloc] initWithBuilder:selfCopy->_builder];
  strideLengthAccumulator = selfCopy->_strideLengthAccumulator;
  selfCopy->_strideLengthAccumulator = v6;
  MEMORY[0x277D82BD8](strideLengthAccumulator);
  v8 = [[NLVerticalOscillationAccumulator alloc] initWithBuilder:selfCopy->_builder];
  verticalOscillationAccumulator = selfCopy->_verticalOscillationAccumulator;
  selfCopy->_verticalOscillationAccumulator = v8;
  MEMORY[0x277D82BD8](verticalOscillationAccumulator);
  v10 = [[NLGroundContactTimeAccumulator alloc] initWithBuilder:selfCopy->_builder];
  groundContactTimeAccumulator = selfCopy->_groundContactTimeAccumulator;
  selfCopy->_groundContactTimeAccumulator = v10;
  if ([(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration isRace])
  {
    v12 = [WORaceCoordinatorFactory makeWithConfiguration:selfCopy->_configuration builder:selfCopy->_builder healthStore:selfCopy->_healthStore];
    raceCoordinator = selfCopy->_raceCoordinator;
    selfCopy->_raceCoordinator = v12;
    MEMORY[0x277D82BD8](raceCoordinator);
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      routeTitle = [(WORaceCoordinator *)selfCopy->_raceCoordinator routeTitle];
      clusterUUID = [(WORaceCoordinator *)selfCopy->_raceCoordinator clusterUUID];
      __os_log_helper_16_2_2_8_64_8_64(v30, routeTitle, clusterUUID);
      _os_log_impl(&dword_20AEA4000, location[0], OS_LOG_TYPE_DEFAULT, "Race: Starting for route: %@, cluster %@", v30, 0x16u);
      MEMORY[0x277D82BD8](clusterUUID);
      MEMORY[0x277D82BD8](routeTitle);
    }

    objc_storeStrong(location, 0);
    [(WORaceCoordinator *)selfCopy->_raceCoordinator activate];
  }

  v14 = [NLSessionActivityNonMachineElapsedTimeAccumulator alloc];
  v15 = [(NLSessionActivityNonMachineElapsedTimeAccumulator *)v14 initWithBuilder:selfCopy->_builder];
  nonMachineElapsedTimeAccumulator = selfCopy->_nonMachineElapsedTimeAccumulator;
  selfCopy->_nonMachineElapsedTimeAccumulator = v15;
  MEMORY[0x277D82BD8](nonMachineElapsedTimeAccumulator);
  v17 = objc_alloc_init(NLSessionActivityMachineElapsedTimeAccumulator);
  machineElapsedTimeAccumulator = selfCopy->_machineElapsedTimeAccumulator;
  selfCopy->_machineElapsedTimeAccumulator = v17;
  *&v19 = MEMORY[0x277D82BD8](machineElapsedTimeAccumulator).n128_u64[0];
  [(NLSessionActivity *)selfCopy addSessionStateObserver:selfCopy->_machineElapsedTimeAccumulator, v19];
  v23 = MEMORY[0x277CCDBE8];
  identifier = [(FIUIWorkoutActivityType *)selfCopy->_activityType identifier];
  [v23 fiui_isHeartRateSupportedForActivityType:identifier isIndoor:{-[FIUIWorkoutActivityType isIndoor](selfCopy->_activityType, "isIndoor")}];
  v24 = [WOHeartRatePrecisionStartAccumulator alloc];
  healthStore = [(NLSessionActivity *)selfCopy healthStore];
  v20 = [WOHeartRatePrecisionStartAccumulator initWithHealthStore:v24 staleTimeout:"initWithHealthStore:staleTimeout:delegate:heartRateSupported:" delegate:30.0 heartRateSupported:?];
  heartRatePrecisionStartAccumulator = selfCopy->_heartRatePrecisionStartAccumulator;
  selfCopy->_heartRatePrecisionStartAccumulator = v20;
  MEMORY[0x277D82BD8](heartRatePrecisionStartAccumulator);
  MEMORY[0x277D82BD8](healthStore);
}

- (void)_createActivityDependentAccumulators
{
  selfCopy = self;
  v103[1] = a2;
  if ([(FIUIWorkoutActivityType *)self->_activityType identifier]== 46)
  {
    v2 = objc_alloc_init(NLSessionActivitySwimmingAccumulator);
    swimmingAccumulator = selfCopy->_swimmingAccumulator;
    selfCopy->_swimmingAccumulator = v2;
    MEMORY[0x277D82BD8](swimmingAccumulator);
    v82 = [NLSessionActivitySwimStrokeAccumulator alloc];
    healthStore = [(NLSessionActivity *)selfCopy healthStore];
    v4 = [(NLSessionActivitySwimStrokeAccumulator *)v82 initWithHealthStore:?];
    swimmingStrokeAccumulator = selfCopy->_swimmingStrokeAccumulator;
    selfCopy->_swimmingStrokeAccumulator = v4;
    MEMORY[0x277D82BD8](swimmingStrokeAccumulator);
    MEMORY[0x277D82BD8](healthStore);
  }

  else
  {
    if ([(FIUIWorkoutActivityType *)selfCopy->_activityType isDownhillSnowSport])
    {
      v6 = objc_alloc_init(NLSessionActivityDownhillSnowSportsAccumulator);
      downhillSnowSportsAccumulator = selfCopy->_downhillSnowSportsAccumulator;
      selfCopy->_downhillSnowSportsAccumulator = v6;
    }

    else
    {
      v8 = [[NLSessionActivityDistanceAccumulator alloc] initWithBuilder:selfCopy->_builder activityType:selfCopy->_activityType];
      distanceAccumulator = selfCopy->_distanceAccumulator;
      selfCopy->_distanceAccumulator = v8;
      MEMORY[0x277D82BD8](distanceAccumulator);
      v10 = objc_alloc_init(NLSessionActivityMachineDistanceAccumulator);
      downhillSnowSportsAccumulator = selfCopy->_machineDistanceAccumulator;
      selfCopy->_machineDistanceAccumulator = v10;
    }

    MEMORY[0x277D82BD8](downhillSnowSportsAccumulator);
  }

  v103[0] = [objc_alloc(MEMORY[0x277D0A828]) initWithWorkoutActivityType:selfCopy->_activityType activityMoveMode:selfCopy->_activityMoveMode];
  orderedSupportedMetrics = [v103[0] orderedSupportedMetrics];
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCCC38]);
  if ([(FIUIWorkoutActivityType *)selfCopy->_activityType identifier]== 13)
  {
    objc_storeStrong(&location, *MEMORY[0x277CCC9C0]);
  }

  if ([orderedSupportedMetrics containsObject:&unk_282279820] & 1) != 0 || (objc_msgSend(orderedSupportedMetrics, "containsObject:", &unk_282279838) & 1) != 0 || (objc_msgSend(orderedSupportedMetrics, "containsObject:", &unk_282279850))
  {
    workoutAlertDelegate = [(NLSessionActivityPowerAccumulator *)selfCopy->_powerAccumulator workoutAlertDelegate];
    v11 = [NLSessionActivityPowerAccumulator alloc];
    v12 = [(NLSessionActivityPowerAccumulator *)v11 initWithBuilder:selfCopy->_builder activityType:selfCopy->_activityType healthStore:selfCopy->_healthStore liveWorkoutConfiguration:selfCopy->_configuration workoutSettingsManager:v103[0] quantityTypeIdentifier:location];
    powerAccumulator = selfCopy->_powerAccumulator;
    selfCopy->_powerAccumulator = v12;
    *&v14 = MEMORY[0x277D82BD8](powerAccumulator).n128_u64[0];
    [(NLSessionActivityPowerAccumulator *)selfCopy->_powerAccumulator setWorkoutAlertDelegate:workoutAlertDelegate, v14];
    objc_storeStrong(&workoutAlertDelegate, 0);
  }

  if ([orderedSupportedMetrics containsObject:&unk_282279868] & 1) != 0 || (objc_msgSend(orderedSupportedMetrics, "containsObject:", &unk_282279880))
  {
    v15 = [NLSessionActivityElevationAccumulator alloc];
    v16 = [(NLSessionActivityElevationAccumulator *)v15 initWithBuilder:selfCopy->_builder healthStore:selfCopy->_healthStore liveWorkoutConfiguration:selfCopy->_configuration workoutSettingsManager:v103[0] elevationUnit:selfCopy->_elevationUnit delegate:selfCopy];
    elevationAccumulator = selfCopy->_elevationAccumulator;
    selfCopy->_elevationAccumulator = v16;
    MEMORY[0x277D82BD8](elevationAccumulator);
  }

  if ([(FIUIWorkoutActivityType *)selfCopy->_activityType supportsLocationPositionTracking])
  {
    alertDelegate = [(NLSessionActivityLocationPositionAccumulator *)selfCopy->_locationPositionAccumulator alertDelegate];
    v18 = [NLSessionActivityLocationPositionAccumulator alloc];
    v19 = [(NLSessionActivityLocationPositionAccumulator *)v18 initWithBuilder:selfCopy->_builder liveWorkoutConfiguration:selfCopy->_configuration];
    locationPositionAccumulator = selfCopy->_locationPositionAccumulator;
    selfCopy->_locationPositionAccumulator = v19;
    *&v21 = MEMORY[0x277D82BD8](locationPositionAccumulator).n128_u64[0];
    [(NLSessionActivityLocationPositionAccumulator *)selfCopy->_locationPositionAccumulator setDelegate:selfCopy, v21];
    [(NLSessionActivityLocationPositionAccumulator *)selfCopy->_locationPositionAccumulator setAlertDelegate:alertDelegate];
    objc_storeStrong(&alertDelegate, 0);
  }

  selfCopy->_currentFastestPace = 0.0;
  [(NLSessionActivityNonMachinePaceAccumulator *)selfCopy->_nonMachinePaceAccumulator setPaceDelegate:?];
  v22 = [NLSessionActivityNonMachinePaceAccumulator alloc];
  v23 = [(NLSessionActivityNonMachinePaceAccumulator *)v22 initWithBuilder:selfCopy->_builder activityType:selfCopy->_activityType activityMoveMode:selfCopy->_activityMoveMode];
  nonMachinePaceAccumulator = selfCopy->_nonMachinePaceAccumulator;
  selfCopy->_nonMachinePaceAccumulator = v23;
  *&v25 = MEMORY[0x277D82BD8](nonMachinePaceAccumulator).n128_u64[0];
  [(NLSessionActivityMachinePaceAccumulator *)selfCopy->_machinePaceAccumulator setPaceDelegate:0, v25];
  v26 = [NLSessionActivityMachinePaceAccumulator alloc];
  v27 = [(NLSessionActivityMachinePaceAccumulator *)v26 initWithActivityType:selfCopy->_activityType];
  machinePaceAccumulator = selfCopy->_machinePaceAccumulator;
  selfCopy->_machinePaceAccumulator = v27;
  *&v29 = MEMORY[0x277D82BD8](machinePaceAccumulator).n128_u64[0];
  v80 = selfCopy;
  paceAccumulator = [(NLSessionActivity *)selfCopy paceAccumulator];
  [(NLSessionActivityPaceAccumulator *)paceAccumulator setPaceDelegate:v80];
  *&v30 = MEMORY[0x277D82BD8](paceAccumulator).n128_u64[0];
  if ([(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration isPacer])
  {
    v31 = [NLGhostPacerAccumulatorFactory makeWithActivityType:selfCopy->_activityType liveWorkoutConfiguration:selfCopy->_configuration];
    ghostPacerAccumulator = selfCopy->_ghostPacerAccumulator;
    selfCopy->_ghostPacerAccumulator = v31;
    *&v33 = MEMORY[0x277D82BD8](ghostPacerAccumulator).n128_u64[0];
    v34 = [NLPacerDistanceGoalProgressAccumulatorFactory makeWithBuilder:selfCopy->_builder configuration:selfCopy->_configuration, v33];
    pacerDistanceGoalProgressAccumulator = selfCopy->_pacerDistanceGoalProgressAccumulator;
    selfCopy->_pacerDistanceGoalProgressAccumulator = v34;
    MEMORY[0x277D82BD8](pacerDistanceGoalProgressAccumulator);
  }

  if ([orderedSupportedMetrics containsObject:&unk_282279898])
  {
    v36 = [NLSessionActivityRollingPaceAccumulator alloc];
    v37 = [(NLSessionActivityRollingPaceAccumulator *)v36 initWithBuilder:selfCopy->_builder activityType:selfCopy->_activityType distanceUnit:selfCopy->_distanceUnit healthStore:selfCopy->_healthStore];
    rollingPaceAccumulator = selfCopy->_rollingPaceAccumulator;
    selfCopy->_rollingPaceAccumulator = v37;
    MEMORY[0x277D82BD8](rollingPaceAccumulator);
  }

  [(NLSessionActivityHeartRateAccumulator *)selfCopy->_heartRateAccumulator setDelegate:0];
  configuration = [(NLSessionActivity *)selfCopy configuration];
  v97 = 0;
  v95 = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)configuration isUltraMode])
  {
    v39 = [NLHeartRateAverageAccumulator alloc];
    v98 = [(NLHeartRateAverageAccumulator *)v39 initWithBuilder:selfCopy->_builder averageInterval:300.0];
    v97 = 1;
    objc_storeStrong(&selfCopy->_heartRateAccumulator, v98);
  }

  else
  {
    v40 = [NLSessionActivityHeartRateAccumulator alloc];
    v96 = [(NLSessionActivityHeartRateAccumulator *)v40 initWithBuilder:selfCopy->_builder staleTimeout:30.0];
    v95 = 1;
    objc_storeStrong(&selfCopy->_heartRateAccumulator, v96);
  }

  if (v95)
  {
    MEMORY[0x277D82BD8](v96);
  }

  if (v97)
  {
    MEMORY[0x277D82BD8](v98);
  }

  *&v41 = MEMORY[0x277D82BD8](configuration).n128_u64[0];
  [(NLSessionActivityHeartRateAccumulator *)selfCopy->_heartRateAccumulator setDelegate:selfCopy, v41];
  v93 = 0;
  supportsHeartRateZones = 0;
  if ([orderedSupportedMetrics containsObject:&unk_2822798B0])
  {
    v94 = +[WOUserDevicesBehaviors shared];
    v93 = 1;
    supportsHeartRateZones = [(WOUserDevicesBehaviors *)v94 supportsHeartRateZones];
  }

  if (v93)
  {
    MEMORY[0x277D82BD8](v94);
  }

  if (supportsHeartRateZones)
  {
    workoutAlertDelegate2 = [(NLSessionActivityHeartRateZonesAccumulator *)selfCopy->_heartRateZonesAccumulator workoutAlertDelegate];
    [WOWorkoutAlertTimingConstants alertHoldoffTimeWithLiveWorkoutConfiguration:selfCopy->_configuration];
    v91 = v42;
    v75 = [NLSessionActivityHeartRateZonesAccumulator alloc];
    builder = selfCopy->_builder;
    healthStore = selfCopy->_healthStore;
    shouldSplitByActivity = [(NLSessionActivity *)selfCopy shouldSplitByActivity];
    currentHeartRateTargetZone = [(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration currentHeartRateTargetZone];
    v43 = [(NLSessionActivityHeartRateZonesAccumulator *)v75 initWithBuilder:builder healthStore:healthStore staleTimeout:shouldSplitByActivity alertHoldoffTime:30.0 shouldSplitByActivity:v91 targetZone:?];
    heartRateZonesAccumulator = selfCopy->_heartRateZonesAccumulator;
    selfCopy->_heartRateZonesAccumulator = v43;
    MEMORY[0x277D82BD8](heartRateZonesAccumulator);
    *&v45 = MEMORY[0x277D82BD8](currentHeartRateTargetZone).n128_u64[0];
    [(NLSessionActivityHeartRateZonesAccumulator *)selfCopy->_heartRateZonesAccumulator setWorkoutAlertDelegate:workoutAlertDelegate2, v45];
    [(NLSessionActivityHeartRateZonesAccumulator *)selfCopy->_heartRateZonesAccumulator setHeartRateZoneConfigurationDelegate:selfCopy];
    v77 = +[WOUserDevicesBehaviors shared];
    v85 = MEMORY[0x277D85DD0];
    v86 = -1073741824;
    v87 = 0;
    v88 = __57__NLSessionActivity__createActivityDependentAccumulators__block_invoke;
    v89 = &unk_277D88BE8;
    v90 = MEMORY[0x277D82BE0](selfCopy);
    [(WOUserDevicesBehaviors *)v77 workoutHealthDataAllowedWhenLockedWithCompletion:&v85];
    MEMORY[0x277D82BD8](v77);
    objc_storeStrong(&v90, 0);
    objc_storeStrong(&workoutAlertDelegate2, 0);
  }

  if ([orderedSupportedMetrics containsObject:&unk_2822798C8])
  {
    workoutAlertDelegate3 = [(NLSessionActivityPowerZonesAccumulator *)selfCopy->_powerZonesAccumulator workoutAlertDelegate];
    v70 = [NLSessionActivityPowerZonesAccumulator alloc];
    v65 = selfCopy->_builder;
    activityType = selfCopy->_activityType;
    v67 = selfCopy->_healthStore;
    v68 = location;
    configuration = selfCopy->_configuration;
    currentPowerZonesAlertTargetZone = [(WOCoreLiveWorkoutConfiguration *)configuration currentPowerZonesAlertTargetZone];
    v46 = [(NLSessionActivityPowerZonesAccumulator *)v70 initWithBuilder:v65 activityType:activityType healthStore:v67 quantityTypeIdentifier:v68 liveWorkoutConfiguration:configuration targetZone:?];
    powerZonesAccumulator = selfCopy->_powerZonesAccumulator;
    selfCopy->_powerZonesAccumulator = v46;
    MEMORY[0x277D82BD8](powerZonesAccumulator);
    *&v48 = MEMORY[0x277D82BD8](currentPowerZonesAlertTargetZone).n128_u64[0];
    [(NLSessionActivityPowerZonesAccumulator *)selfCopy->_powerZonesAccumulator setWorkoutAlertDelegate:workoutAlertDelegate3, v48];
    [(NLSessionActivityPowerZonesAccumulator *)selfCopy->_powerZonesAccumulator setPowerZonesConfigurationDelegate:selfCopy];
    objc_storeStrong(&workoutAlertDelegate3, 0);
  }

  if ([(FIUIWorkoutActivityType *)selfCopy->_activityType supportsDistanceSplits])
  {
    [(NLSessionActivity *)selfCopy createSplitsAccumulators];
  }

  if ([orderedSupportedMetrics containsObject:&unk_2822798E0] & 1) != 0 || (objc_msgSend(orderedSupportedMetrics, "containsObject:", &unk_2822798F8))
  {
    v49 = [NLSessionActivityCyclingCadenceAccumulator alloc];
    v50 = [(NLSessionActivityCyclingCadenceAccumulator *)v49 initWithBuilder:selfCopy->_builder];
    cyclingCadenceAccumulator = selfCopy->_cyclingCadenceAccumulator;
    selfCopy->_cyclingCadenceAccumulator = v50;
    MEMORY[0x277D82BD8](cyclingCadenceAccumulator);
    v52 = [NLSessionActivityPedometerCadenceAccumulator alloc];
    v53 = [(NLSessionActivityPedometerCadenceAccumulator *)v52 initWithBuilder:selfCopy->_builder];
    pedometerCadenceAccumulator = selfCopy->_pedometerCadenceAccumulator;
    selfCopy->_pedometerCadenceAccumulator = v53;
    MEMORY[0x277D82BD8](pedometerCadenceAccumulator);
    v64 = [NLSessionActivityIntervalCadenceAccumulator alloc];
    v55 = [(NLSessionActivityIntervalCadenceAccumulator *)v64 initWithBuilder:selfCopy->_builder activityType:[(FIUIWorkoutActivityType *)selfCopy->_activityType identifier]];
    intervalCadenceAccumulator = selfCopy->_intervalCadenceAccumulator;
    selfCopy->_intervalCadenceAccumulator = v55;
    MEMORY[0x277D82BD8](intervalCadenceAccumulator);
  }

  if ([orderedSupportedMetrics containsObject:&unk_282279910] & 1) != 0 || (objc_msgSend(orderedSupportedMetrics, "containsObject:", &unk_282279928))
  {
    v57 = [NLSessionActivityWaterTemperatureAccumulator alloc];
    v58 = [(NLSessionActivityWaterTemperatureAccumulator *)v57 initWithBuilder:selfCopy->_builder];
    waterTemperatureAccumulator = selfCopy->_waterTemperatureAccumulator;
    selfCopy->_waterTemperatureAccumulator = v58;
    MEMORY[0x277D82BD8](waterTemperatureAccumulator);
  }

  if (selfCopy->_segmentAccumulator)
  {
    [(NLSessionActivity *)selfCopy removeSessionDataObserver:selfCopy->_segmentAccumulator];
  }

  v60 = [WOSegmentAccumulator alloc];
  v61 = [(WOSegmentAccumulator *)v60 initWithBuilder:selfCopy->_builder activityType:selfCopy->_activityType configuration:selfCopy->_configuration powerAccumulator:selfCopy->_powerAccumulator];
  segmentAccumulator = selfCopy->_segmentAccumulator;
  selfCopy->_segmentAccumulator = v61;
  *&v63 = MEMORY[0x277D82BD8](segmentAccumulator).n128_u64[0];
  [(NLSessionActivity *)selfCopy addSessionDataObserver:selfCopy->_segmentAccumulator, v63];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&orderedSupportedMetrics, 0);
  objc_storeStrong(v103, 0);
}

void __57__NLSessionActivity__createActivityDependentAccumulators__block_invoke(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__NLSessionActivity__createActivityDependentAccumulators__block_invoke_2;
  v10 = &unk_277D88868;
  v12 = v14 & 1;
  v11 = MEMORY[0x277D82BE0](*(a1 + 32));
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
}

void __57__NLSessionActivity__createActivityDependentAccumulators__block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if ((*(a1 + 40) & 1) == 0)
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_20AEA4000, log, type, "User disabled workout health data while locked, not tracking time in heart rate zones.", v4, 2u);
    }

    objc_storeStrong(location, 0);
    objc_storeStrong((*(a1 + 32) + 184), 0);
  }
}

- (void)createSplitsAccumulators
{
  selfCopy = self;
  location[1] = a2;
  if (self->_splitsDisplayAccumulator)
  {
    [(NLSessionActivity *)selfCopy removeSessionDataObserver:selfCopy->_splitsDisplayAccumulator];
  }

  v2 = [WOSplitsAccumulatorFactory makeAccumulatorsWithActivityType:selfCopy->_activityType builder:selfCopy->_builder userDistanceUnit:selfCopy->_distanceUnit powerAccumulator:selfCopy->_powerAccumulator];
  splitsAccumulators = selfCopy->_splitsAccumulators;
  selfCopy->_splitsAccumulators = v2;
  location[0] = [WOSplitsAccumulatorFactory displayedAccumulatorFor:selfCopy->_splitsAccumulators userDistanceUnit:selfCopy->_distanceUnit, MEMORY[0x277D82BD8](splitsAccumulators).n128_f64[0]];
  if (location[0])
  {
    v4 = [[WOSplitsDisplayAccumulator alloc] initWithBuilder:selfCopy->_builder splitsAccumulator:location[0] activityType:selfCopy->_activityType powerAccumulator:selfCopy->_powerAccumulator];
    splitsDisplayAccumulator = selfCopy->_splitsDisplayAccumulator;
    selfCopy->_splitsDisplayAccumulator = v4;
    [(NLSessionActivity *)selfCopy addSessionDataObserver:selfCopy->_splitsDisplayAccumulator, MEMORY[0x277D82BD8](splitsDisplayAccumulator).n128_f64[0]];
  }

  objc_storeStrong(location, 0);
}

- (void)updateActivityTypeFromConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  [(NLSessionActivity *)selfCopy _setupActivityTypeDependentConfigurations];
  activityBeginDate = [(NLSessionActivity *)selfCopy activityBeginDate];
  *&v3 = MEMORY[0x277D82BD8](activityBeginDate).n128_u64[0];
  if (activityBeginDate)
  {
    v5 = selfCopy;
    startDate = [location[0] startDate];
    [(NLSessionActivity *)v5 _startActivityDependentAccumulatingDataWithStartDate:?];
    MEMORY[0x277D82BD8](startDate);
  }

  v4 = selfCopy;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __57__NLSessionActivity_updateActivityTypeFromConfiguration___block_invoke;
  v12 = &unk_277D88C10;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  [(NLSessionActivity *)v4 _notifyDataObserversWithBlock:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __57__NLSessionActivity_updateActivityTypeFromConfiguration___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v5 = [a1[4] dataProvider];
  v4 = [a1[4] activityType];
  [v3 dataProvider:v5 didChangeActivityTypeTo:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)_setupGroundElevationManager
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  self->_groundElevationSupported = [MEMORY[0x277CCDBE8] fiui_activitySupportsMetricType:17 activityType:self->_activityType activityMoveMode:self->_activityMoveMode];
  if (selfCopy->_groundElevationSupported)
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FIUIWorkoutActivityType *)selfCopy->_activityType description];
      __os_log_helper_16_2_1_8_64(v12, v6);
      _os_log_impl(&dword_20AEA4000, location[0], v8, "[GroundElevation] ground elevation supported, creating GroundElevationManager. activity_type=%@", v12, 0xCu);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(location, 0);
    v2 = [NLSessionActivityGroundElevationManager alloc];
    v3 = [(NLSessionActivityGroundElevationManager *)v2 initWithDelegate:selfCopy];
    groundElevationManager = selfCopy->_groundElevationManager;
    selfCopy->_groundElevationManager = v3;
    MEMORY[0x277D82BD8](groundElevationManager);
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(FIUIWorkoutActivityType *)selfCopy->_activityType description];
      __os_log_helper_16_2_1_8_64(v11, v5);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[GroundElevation] ground elevation not supported, not creating GroundElevationManager. activity_type=%@", v11, 0xCu);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&oslog, 0);
  }
}

- (void)_teardownGroundElevationManager
{
  [(NLSessionActivity *)self removeSessionStateObserver:self->_groundElevationManager];
  [(NLSessionActivityGroundElevationManager *)self->_groundElevationManager setActive:0];
  [(NLSessionActivityGroundElevationManager *)self->_groundElevationManager setDelegate:?];
  objc_storeStrong(&self->_groundElevationManager, 0);
}

- (void)insertOrUpdateMetadata:(id)metadata forceTopLevel:(BOOL)level
{
  v25 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  levelCopy = level;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v20 = [standardUserDefaults objectForKey:@"SaveMetadataPerActivity"];
  *&v4 = MEMORY[0x277D82BD8](standardUserDefaults).n128_u64[0];
  if (v20 && ![v20 BOOLValue])
  {
    levelCopy = 1;
  }

  v19 = 0;
  if (!levelCopy && [(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration isMultiSport])
  {
    v19 = [(NLSessionActivity *)selfCopy insertOrUpdateMetadataToSubActivity:location[0]];
  }

  if (!v19)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    _HKInitializeLogging();
    v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v24, uUID);
      _os_log_impl(&dword_20AEA4000, v17, v16, "[SessionActivity] [META] Adding metadata (%{public}@) to top level", v24, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    builder = [(NLSessionActivity *)selfCopy builder];
    v5 = location[0];
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __58__NLSessionActivity_insertOrUpdateMetadata_forceTopLevel___block_invoke;
    v13 = &unk_277D88C38;
    v14 = MEMORY[0x277D82BE0](uUID);
    v15 = MEMORY[0x277D82BE0](location[0]);
    [(HKLiveWorkoutBuilder *)builder addMetadata:v5 completion:&v9];
    MEMORY[0x277D82BD8](builder);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&uUID, 0);
  }

  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

void __58__NLSessionActivity_insertOrUpdateMetadata_forceTopLevel___block_invoke(uint64_t a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_66_8_64(v11, *(a1 + 32), *(a1 + 40));
      _os_log_impl(&dword_20AEA4000, oslog[0], type, "[SessionActivity] [META] Successfully added metadata (%{public}@) to builder %@", v11, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    _HKInitializeLogging();
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_66_8_66_8_64(v10, *(a1 + 32), location, *(a1 + 40));
      _os_log_error_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_ERROR, "[SessionActivity] [META] Failed to add metadata (%{public}@) to builder with error=%{public}@, metadata=%@", v10, 0x20u);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)insertOrUpdateMetadataToSubActivity:(id)activity
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  builder = [(NLSessionActivity *)selfCopy builder];
  currentWorkoutActivity = [(HKLiveWorkoutBuilder *)builder currentWorkoutActivity];
  *&v3 = MEMORY[0x277D82BD8](builder).n128_u64[0];
  if (currentWorkoutActivity)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    _HKInitializeLogging();
    v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v23, uUID);
      _os_log_impl(&dword_20AEA4000, v17, v16, "[SessionActivity] [META] Adding metadata (%{public}@) to current activity", v23, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    builder2 = [(NLSessionActivity *)selfCopy builder];
    uUID2 = [currentWorkoutActivity UUID];
    v5 = location[0];
    v9 = MEMORY[0x277D85DD0];
    v10 = -1073741824;
    v11 = 0;
    v12 = __57__NLSessionActivity_insertOrUpdateMetadataToSubActivity___block_invoke;
    v13 = &unk_277D88C38;
    v14 = MEMORY[0x277D82BE0](uUID);
    v15 = MEMORY[0x277D82BE0](location[0]);
    [(HKLiveWorkoutBuilder *)builder2 updateActivityWithUUID:uUID2 addMedatata:v5 completion:&v9];
    MEMORY[0x277D82BD8](uUID2);
    MEMORY[0x277D82BD8](builder2);
    v22 = 1;
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&uUID, 0);
  }

  else
  {
    v22 = 0;
  }

  objc_storeStrong(&currentWorkoutActivity, 0);
  objc_storeStrong(location, 0);
  return v22 & 1;
}

void __57__NLSessionActivity_insertOrUpdateMetadataToSubActivity___block_invoke(uint64_t a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_66_8_64(v11, *(a1 + 32), *(a1 + 40));
      _os_log_impl(&dword_20AEA4000, oslog[0], type, "[SessionActivity] [META] Successfully added metadata (%{public}@) to current activity %@", v11, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    _HKInitializeLogging();
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_66_8_66_8_64(v10, *(a1 + 32), location, *(a1 + 40));
      _os_log_error_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_ERROR, "[SessionActivity] [META] Failed to add metadata (%{public}@) to current activity with error=%{public}@, metadata=%@", v10, 0x20u);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)removeMetadata:(id)metadata forceTopLevel:(BOOL)level
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, metadata);
  levelCopy = level;
  builder = [(NLSessionActivity *)selfCopy builder];
  v4 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __50__NLSessionActivity_removeMetadata_forceTopLevel___block_invoke;
  v11 = &unk_277D88BC0;
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(HKLiveWorkoutBuilder *)builder _removeMetadata:v4 completion:&v7];
  MEMORY[0x277D82BD8](builder);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __50__NLSessionActivity_removeMetadata_forceTopLevel___block_invoke(uint64_t a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, *(a1 + 32));
      _os_log_impl(&dword_20AEA4000, oslog[0], type, "[SessionActivity] Successfully removed metadata from builder %@", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    _HKInitializeLogging();
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_66_8_64(v10, location, *(a1 + 32));
      _os_log_error_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_ERROR, "[SessionActivity] Failed to remove metadata key from builder with error=%{public}@, metadataKey=%@", v10, 0x16u);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)setMachineSessionDevice:(id)device
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, device);
  [(HKLiveWorkoutBuilder *)selfCopy->_builder _setDevice:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addSessionStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_stateObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeSessionStateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_stateObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addSplitsUpdateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  splitsAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator splitsAccumulator];
  [(NLSessionActivitySplitsAccumulator *)splitsAccumulator addSplitObserver:location[0]];
  MEMORY[0x277D82BD8](splitsAccumulator);
  objc_storeStrong(location, 0);
}

- (void)removeSplitsUpdateObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  splitsAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator splitsAccumulator];
  [(NLSessionActivitySplitsAccumulator *)splitsAccumulator removeSplitObserver:location[0]];
  MEMORY[0x277D82BD8](splitsAccumulator);
  objc_storeStrong(location, 0);
}

- (void)addSessionDataObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_dataObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeSessionDataObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_dataObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addActivityChangeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_changeObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeActivityChangeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_changeObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setRaceCoordinatorDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v4 = location[0];
  racePositionProvider = [(WORaceCoordinator *)selfCopy->_raceCoordinator racePositionProvider];
  [(WORacePositionProvider *)racePositionProvider setRaceDelegate:v4];
  *&v3 = MEMORY[0x277D82BD8](racePositionProvider).n128_u64[0];
  v6 = location[0];
  racePositionProvider2 = [(WORaceCoordinator *)selfCopy->_raceCoordinator racePositionProvider];
  metadataDelegate = [(WORacePositionProvider *)racePositionProvider2 metadataDelegate];
  [(WOMetadataSavingDelegate *)metadataDelegate setMetadataProvider:v6];
  MEMORY[0x277D82BD8](metadataDelegate);
  MEMORY[0x277D82BD8](racePositionProvider2);
  objc_storeStrong(location, 0);
}

- (void)setRaceRouteDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  [(WORaceCoordinator *)selfCopy->_raceCoordinator setRouteDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setPacerAlertDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  [(NLPacerDistanceGoalProgressAccumulator *)selfCopy->_pacerDistanceGoalProgressAccumulator setWorkoutAlertDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setWorkoutAlertDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  v7 = location[0];
  heartRateZonesAccumulator = [(NLSessionActivity *)selfCopy heartRateZonesAccumulator];
  [(NLSessionActivityHeartRateZonesAccumulator *)heartRateZonesAccumulator setWorkoutAlertDelegate:v7];
  *&v3 = MEMORY[0x277D82BD8](heartRateZonesAccumulator).n128_u64[0];
  v9 = location[0];
  powerZonesAccumulator = [(NLSessionActivity *)selfCopy powerZonesAccumulator];
  [(NLSessionActivityPowerZonesAccumulator *)powerZonesAccumulator setWorkoutAlertDelegate:v9];
  *&v4 = MEMORY[0x277D82BD8](powerZonesAccumulator).n128_u64[0];
  v11 = location[0];
  powerAccumulator = [(NLSessionActivity *)selfCopy powerAccumulator];
  [(NLSessionActivityPowerAccumulator *)powerAccumulator setWorkoutAlertDelegate:v11];
  *&v5 = MEMORY[0x277D82BD8](powerAccumulator).n128_u64[0];
  v13 = location[0];
  locationPositionAccumulator = [(NLSessionActivity *)selfCopy locationPositionAccumulator];
  [(NLSessionActivityLocationPositionAccumulator *)locationPositionAccumulator setAlertDelegate:v13];
  *&v6 = MEMORY[0x277D82BD8](locationPositionAccumulator).n128_u64[0];
  v15 = location[0];
  pacerDistanceGoalProgressAccumulator = [(NLSessionActivity *)selfCopy pacerDistanceGoalProgressAccumulator];
  [(NLPacerDistanceGoalProgressAccumulator *)pacerDistanceGoalProgressAccumulator setWorkoutAlertDelegate:v15];
  MEMORY[0x277D82BD8](pacerDistanceGoalProgressAccumulator);
  objc_storeStrong(location, 0);
}

- (BOOL)hasGoal
{
  configuration = [(NLSessionActivity *)self configuration];
  currentGoal = [(WOCoreLiveWorkoutConfiguration *)configuration currentGoal];
  goalTypeIdentifier = [(NLSessionActivityGoal *)currentGoal goalTypeIdentifier];
  MEMORY[0x277D82BD8](currentGoal);
  MEMORY[0x277D82BD8](configuration);
  if (goalTypeIdentifier)
  {
    if ((goalTypeIdentifier - 1) <= 2)
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isMachineWorkout
{
  workoutConfiguration = [(HKLiveWorkoutBuilder *)self->_builder workoutConfiguration];
  fitnessMachineSessionUUID = [workoutConfiguration fitnessMachineSessionUUID];
  v5 = fitnessMachineSessionUUID != 0;
  MEMORY[0x277D82BD8](fitnessMachineSessionUUID);
  MEMORY[0x277D82BD8](workoutConfiguration);
  return v5;
}

- (double)videoPlaybackCurrentTime
{
  seymourElapsedTimeAccumulator = self->_seymourElapsedTimeAccumulator;
  effectivePresentationTime = [(NLSessionActivity *)self effectivePresentationTime];
  [(SMSeymourElapsedTimeAccumulator *)seymourElapsedTimeAccumulator videoPlaybackTimeAt:?];
  v6 = v2;
  MEMORY[0x277D82BD8](effectivePresentationTime);
  return v6;
}

- (id)effectivePresentationTime
{
  inactiveAppearancePresentationTime = [(NLSessionActivity *)self inactiveAppearancePresentationTime];
  v7 = 0;
  v5 = 0;
  if (inactiveAppearancePresentationTime)
  {
    inactiveAppearancePresentationTime2 = [(NLSessionActivity *)self inactiveAppearancePresentationTime];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](inactiveAppearancePresentationTime2);
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](date);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](date);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](inactiveAppearancePresentationTime2);
  }

  MEMORY[0x277D82BD8](inactiveAppearancePresentationTime);

  return v10;
}

- (double)durationWithEndDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  [(HKLiveWorkoutBuilder *)selfCopy->_builder elapsedTimeAtDate:location[0]];
  v5 = v3;
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)isInSession
{
  state = self->_state;
  if (state <= 2)
  {
    goto LABEL_8;
  }

  if (state - 3 <= 3)
  {
    goto LABEL_7;
  }

  if (state == 7)
  {
LABEL_8:
    v4 = 0;
    return v4 & 1;
  }

  if (state - 8 > 1)
  {
    if (state != 10)
    {
      return v4 & 1;
    }

    goto LABEL_8;
  }

LABEL_7:
  v4 = 1;
  return v4 & 1;
}

- (void)updateDistanceUnit:(id)unit
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, unit);
  objc_storeStrong(&selfCopy->_distanceUnit, location[0]);
  [(NLSessionActivityRollingPaceAccumulator *)selfCopy->_rollingPaceAccumulator updateDistanceUnit:location[0]];
  if ([(FIUIWorkoutActivityType *)selfCopy->_activityType supportsDistanceSplits])
  {
    v3 = [WOSplitsAccumulatorFactory displayedAccumulatorFor:selfCopy->_splitsAccumulators userDistanceUnit:selfCopy->_distanceUnit];
    if (v3)
    {
      [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator setSplitsAccumulator:v3];
    }

    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(location, 0);
}

- (NSUUID)fitnessMachineSessionUUID
{
  workoutConfiguration = [(HKLiveWorkoutBuilder *)self->_builder workoutConfiguration];
  fitnessMachineSessionUUID = [workoutConfiguration fitnessMachineSessionUUID];
  MEMORY[0x277D82BD8](workoutConfiguration);

  return fitnessMachineSessionUUID;
}

- (NSArray)segmentMarkers
{
  segmentAccumulator = [(NLSessionActivity *)self segmentAccumulator];
  completedSegments = [(WOSegmentAccumulator *)segmentAccumulator completedSegments];
  MEMORY[0x277D82BD8](segmentAccumulator);

  return completedSegments;
}

+ (unint64_t)_eventForPauseTracking:(BOOL)tracking eventSource:(unint64_t)source
{
  if (source == 14)
  {
    v4 = 11;
    if (!tracking)
    {
      return 10;
    }

    return v4;
  }

  else
  {
    v9 = (_PauseEventSourceIsUserInitiated(source) ^ 1) & 1;
    if (tracking)
    {
      v5 = 8;
      if ((v9 & 1) == 0)
      {
        return 6;
      }

      return v5;
    }

    else
    {
      v6 = 9;
      if ((v9 & 1) == 0)
      {
        return 7;
      }

      return v6;
    }
  }
}

- (void)_setPauseTracking:(BOOL)tracking atDate:(id)date eventSource:(unint64_t)source
{
  v64 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v58 = a2;
  trackingCopy = tracking;
  location = 0;
  objc_storeStrong(&location, date);
  sourceCopy = source;
  _HKInitializeLogging();
  v54 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v53 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"YES";
    if (!trackingCopy)
    {
      v5 = @"NO";
    }

    v26 = v5;
    v25 = _PauseEventSourceDescription(sourceCopy);
    v52 = MEMORY[0x277D82BE0](v25);
    __os_log_helper_16_2_2_8_66_8_66(v63, v26, v52);
    _os_log_impl(&dword_20AEA4000, v54, v53, "[SessionActivity] pauseTracking:%{public}@ eventSource:%{public}@", v63, 0x16u);
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(&v52, 0);
  }

  objc_storeStrong(&v54, 0);
  [(NLSessionActivity *)selfCopy isMachineWorkout];
  if (!_PauseControlAllowedFromEventSource())
  {
    _HKInitializeLogging();
    v51 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Pause";
      if (!trackingCopy)
      {
        v6 = @"Unpause";
      }

      v23 = v6;
      isMachineWorkout = [(NLSessionActivity *)selfCopy isMachineWorkout];
      v7 = @"YES";
      if (!isMachineWorkout)
      {
        v7 = @"NO";
      }

      v22 = v7;
      v21 = _PauseEventSourceDescription(sourceCopy);
      v49 = MEMORY[0x277D82BE0](v21);
      __os_log_helper_16_2_3_8_66_8_66_8_66(v62, v23, v22, v49);
      _os_log_impl(&dword_20AEA4000, v51, v50, "[SessionActivity] %{public}@ not allowed with isMachineWorkout=%{public}@ eventSource=%{public}@", v62, 0x20u);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v49, 0);
    }

    objc_storeStrong(&v51, 0);
    v48 = 1;
    goto LABEL_40;
  }

  if (trackingCopy)
  {
    goto LABEL_24;
  }

  v46 = 1;
  state = [(NLSessionActivity *)selfCopy state];
  switch(state)
  {
    case 4:
      goto LABEL_19;
    case 5:
      v46 = sourceCopy == 14;
      break;
    case 9:
LABEL_19:
      v46 = 0;
      break;
  }

  if (!v46)
  {
    _HKInitializeLogging();
    v45 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v45;
      v19 = v44;
      __os_log_helper_16_0_0(v43);
      _os_log_impl(&dword_20AEA4000, v18, v19, "[SessionActivity] cannot resume workout: Workout requires heart rate monitor and no heart rate monitor connected", v43, 2u);
    }

    objc_storeStrong(&v45, 0);
    v48 = 1;
    goto LABEL_40;
  }

LABEL_24:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0;
  if (trackingCopy)
  {
    v17 = sourceCopy == 4;
  }

  v41 = v17;
  if (v17)
  {
    [dictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"_HKPrivateAutoPause"];
  }

  v16 = 0;
  if (!trackingCopy)
  {
    v16 = sourceCopy == 13;
  }

  v40 = v16;
  if (v16)
  {
    date = [MEMORY[0x277CBEAA8] date];
    _HKInitializeLogging();
    v38 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v61, date);
      _os_log_impl(&dword_20AEA4000, v38, v37, "[SessionActivity] Builder add resume event with resume reminder acceptance_date=%@", v61, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    [dictionary setObject:date forKeyedSubscript:*MEMORY[0x277CCE1A0]];
    objc_storeStrong(&date, 0);
  }

  v13 = MEMORY[0x277CCDC68];
  v8 = 2;
  if (trackingCopy)
  {
    v8 = 1;
  }

  v14 = v8;
  v15 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [v15 initWithStartDate:location duration:0.0];
  if ([dictionary count])
  {
    v11 = dictionary;
  }

  else
  {
    v11 = 0;
  }

  v36 = [v13 workoutEventWithType:v14 dateInterval:v12 metadata:v11];
  MEMORY[0x277D82BD8](v12);
  objc_initWeak(&from, selfCopy);
  builder = selfCopy->_builder;
  v60 = v36;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  v28 = MEMORY[0x277D85DD0];
  v29 = -1073741824;
  v30 = 0;
  v31 = __58__NLSessionActivity__setPauseTracking_atDate_eventSource___block_invoke;
  v32 = &unk_277D88C88;
  objc_copyWeak(v33, &from);
  v34 = trackingCopy;
  v33[1] = sourceCopy;
  [(HKLiveWorkoutBuilder *)builder addWorkoutEvents:v9 completion:&v28];
  MEMORY[0x277D82BD8](v9);
  objc_destroyWeak(v33);
  objc_destroyWeak(&from);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&dictionary, 0);
  v48 = 0;
LABEL_40:
  objc_storeStrong(&location, 0);
}

void __58__NLSessionActivity__setPauseTracking_atDate_eventSource___block_invoke(uint64_t a1, char a2, id obj)
{
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __58__NLSessionActivity__setPauseTracking_atDate_eventSource___block_invoke_2;
  v11 = &unk_277D88C60;
  objc_copyWeak(v13, (a1 + 32));
  v14 = v18 & 1;
  v12 = MEMORY[0x277D82BE0](location);
  v15 = *(a1 + 48) & 1;
  v13[1] = *(a1 + 40);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_storeStrong(&location, 0);
}

double __58__NLSessionActivity__setPauseTracking_atDate_eventSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleBuilderPauseResumeRequestWithSuccess:*(a1 + 56) & 1 error:*(a1 + 32) pauseTracking:*(a1 + 57) & 1 eventSource:*(a1 + 48)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_handleBuilderPauseResumeRequestWithSuccess:(BOOL)success error:(id)error pauseTracking:(BOOL)tracking eventSource:(unint64_t)source
{
  v28 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v24 = a2;
  successCopy = success;
  location = 0;
  objc_storeStrong(&location, error);
  trackingCopy = tracking;
  sourceCopy = source;
  if (successCopy)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v15;
      v8 = _PauseEventSourceDescription(sourceCopy);
      v14 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_4_0_8_66(v26, trackingCopy, v14);
      _os_log_impl(&dword_20AEA4000, v6, v7, "[SessionActivity] Builder add pause event success with pauseTracking:%{BOOL}d eventSource:%{public}@", v26, 0x12u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&oslog, 0);
    selfCopy->_lastPauseEventSource = sourceCopy;
    [(FIUIStateMachine *)selfCopy->_stateMachine event:[NLSessionActivity _eventForPauseTracking:trackingCopy eventSource:sourceCopy]];
    [(NLSessionActivity *)selfCopy evaluatePauseResumeForConnectedDevices];
  }

  else
  {
    _HKInitializeLogging();
    v19 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      v11 = _PauseEventSourceDescription(sourceCopy);
      v17 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_3_4_0_8_66_8_66(v27, trackingCopy, v17, location);
      _os_log_error_impl(&dword_20AEA4000, log, type, "[SessionActivity] Builder add pause event failed with pauseTracking:%{BOOL}d eventSource:%{public}@, failed with error %{public}@", v27, 0x1Cu);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&location, 0);
}

- (void)processPauseOrResumeRequestEvent:(id)event
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  if (FIUIIsWorkoutPauseByChordPressEnabled())
  {
    IsPaused = 1;
    if (!NLSessionActivityIsActive(selfCopy))
    {
      IsPaused = NLSessionActivityIsPaused(selfCopy);
    }

    v18 = IsPaused;
    if (IsPaused)
    {
      v14 = !NLSessionActivityStateIsPaused([(NLSessionActivity *)selfCopy state]);
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v25, location[0]);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Pause request from PauseOrResumeRequestEvent %{public}@", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v4 = selfCopy;
      v3 = v14;
      dateInterval = [location[0] dateInterval];
      startDate = [dateInterval startDate];
      [NLSessionActivity _setPauseTracking:v4 atDate:"_setPauseTracking:atDate:eventSource:" eventSource:v3];
      MEMORY[0x277D82BD8](startDate);
      MEMORY[0x277D82BD8](dateInterval);
      v19 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v17;
        v8 = v16;
        v9 = NLSessionActivityStateDescription([(NLSessionActivity *)selfCopy state]);
        v15 = MEMORY[0x277D82BE0](v9);
        __os_log_helper_16_2_1_8_64(v26, v15);
        _os_log_impl(&dword_20AEA4000, v7, v8, "[SessionActivity] Cannot handle PauseOrResumeRequestEvent in state %@", v26, 0xCu);
        MEMORY[0x277D82BD8](v9);
        objc_storeStrong(&v15, 0);
      }

      objc_storeStrong(&v17, 0);
      v19 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] Pause request from PauseOrResumeRequestEvent ignored because pausing with chord press disabled through user setting", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v19 = 1;
  }

  objc_storeStrong(location, 0);
}

- (BOOL)isAutoPauseEffectivelyEnabledForActivityType:(unint64_t)type
{
  v5 = 0;
  if (type == 13)
  {
    v5 = FIUIIsCyclingAutoPauseEnabled();
  }

  else if (type == 37)
  {
    v5 = FIUIIsRunningAutoPauseEnabled();
  }

  v4 = 0;
  if (FIUIIsAutoPauseEnabled())
  {
    v4 = v5;
  }

  return v4 & 1;
}

- (void)storeMotionPauseResumeEvent:(id)event
{
  v7[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  builder = selfCopy->_builder;
  v7[0] = location[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [HKLiveWorkoutBuilder addWorkoutEvents:"addWorkoutEvents:completion:" completion:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

void __49__NLSessionActivity_storeMotionPauseResumeEvent___block_invoke(uint64_t a1, char a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __49__NLSessionActivity_storeMotionPauseResumeEvent___block_invoke_2;
  v11 = &unk_277D88868;
  v13 = v16 & 1;
  v12 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

void __49__NLSessionActivity_storeMotionPauseResumeEvent___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_4_0_8_66(v3, *(a1 + 40) & 1, *(a1 + 32));
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "[SessionActivity] Builder add motion pause/resume event success=%{BOOL}d error=%{public}@", v3, 0x12u);
  }

  objc_storeStrong(oslog, 0);
}

- (void)processMotionPauseResumeEvent:(id)event
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  if ([(NLSessionActivity *)selfCopy shouldStoreMotionPauseResumeEventsForActivityType:[(FIUIWorkoutActivityType *)selfCopy->_activityType effectiveTypeIdentifier]])
  {
    [(NLSessionActivity *)selfCopy storeMotionPauseResumeEvent:location[0]];
  }

  v27 = [(NLSessionActivity *)selfCopy isAutoPauseEffectivelyEnabledForActivityType:[(FIUIWorkoutActivityType *)selfCopy->_activityType effectiveTypeIdentifier]];
  if ([(NLSessionActivity *)selfCopy isMachineWorkout]|| !v27 || [(NLSessionActivity *)selfCopy experienceType]== 1 || [(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration isInterval])
  {
    _HKInitializeLogging();
    v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] Motion auto pause or resume ignored due to setting, machine workout, intervals, or Fitness+ paired workout", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v23 = 1;
  }

  else
  {
    if ([location[0] type] != 5 || (v13 = 1, selfCopy->_state != 6))
    {
      v12 = 0;
      if ([location[0] type] == 6)
      {
        v12 = selfCopy->_state == 8;
      }

      v13 = v12;
    }

    v22 = v13;
    if (v13)
    {
      v17 = [location[0] type] == 5;
      _HKInitializeLogging();
      v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v30, location[0]);
        _os_log_impl(&dword_20AEA4000, v16, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Pause request from MotionPause/Resume event %{public}@", v30, 0xCu);
      }

      objc_storeStrong(&v16, 0);
      v4 = selfCopy;
      v3 = v17;
      dateInterval = [location[0] dateInterval];
      startDate = [dateInterval startDate];
      [NLSessionActivity _setPauseTracking:v4 atDate:"_setPauseTracking:atDate:eventSource:" eventSource:v3];
      MEMORY[0x277D82BD8](startDate);
      MEMORY[0x277D82BD8](dateInterval);
      v23 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v21 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v21;
        v9 = v20;
        v11 = NLSessionActivityStateDescription(selfCopy->_state);
        v7 = MEMORY[0x277D82BE0](v11);
        v19 = v7;
        [location[0] type];
        v10 = _HKWorkoutEventTypeName();
        v18 = MEMORY[0x277D82BE0](v10);
        __os_log_helper_16_2_2_8_64_8_64(v31, v7, v18);
        _os_log_impl(&dword_20AEA4000, v8, v9, "[SessionActivity] Motion auto pause or resume ignored due to unsupported current_state=%@ for eventType=%@", v31, 0x16u);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        objc_storeStrong(&v18, 0);
        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&v21, 0);
      v23 = 1;
    }
  }

  objc_storeStrong(location, 0);
}

- (void)processDownhillRunEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  builder = [(NLSessionActivity *)selfCopy builder];
  workoutEvents = [(HKLiveWorkoutBuilder *)builder workoutEvents];
  v12 = FIFilterPauseResumeEvents();
  MEMORY[0x277D82BD8](workoutEvents);
  *&v3 = MEMORY[0x277D82BD8](builder).n128_u64[0];
  dateInterval = [location[0] dateInterval];
  [WODownhillRun calculateWorkoutTimeWithDateInterval:"calculateWorkoutTimeWithDateInterval:pauseResumeEvents:" pauseResumeEvents:?];
  v9 = v4;
  MEMORY[0x277D82BD8](dateInterval);
  v11[1] = v9;
  v5 = [WODownhillRun alloc];
  v11[0] = [(WODownhillRun *)v5 initWithDownhillRunEvent:location[0] workoutTime:0 distance:*&v9 averageHeartRate:?];
  downhillSnowSportsAccumulator = [(NLSessionActivity *)selfCopy downhillSnowSportsAccumulator];
  [(NLSessionActivityDownhillSnowSportsAccumulator *)downhillSnowSportsAccumulator downhillRunDidComplete:v11[0]];
  MEMORY[0x277D82BD8](downhillSnowSportsAccumulator);
  objc_storeStrong(v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)addWorkoutEvents:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, events);
  v20 = [location[0] sortedArrayUsingComparator:&__block_literal_global_479];
  v19 = 0;
  array = [MEMORY[0x277CBEB18] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v20);
  v15 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v12);
      type = [v17 type];
      if ((type - 1) <= 1)
      {
        goto LABEL_19;
      }

      if ((type - 3) > 1)
      {
        if ((type - 5) <= 1)
        {
          [(NLSessionActivity *)selfCopy processMotionPauseResumeEvent:v17];
          goto LABEL_19;
        }

        if (type != 7)
        {
          if (type == 8)
          {
            [(NLSessionActivity *)selfCopy processPauseOrResumeRequestEvent:v17];
          }

          goto LABEL_19;
        }

        if ([v17 fiui_isSplitEvent] & 1) != 0 || (objc_msgSend(v17, "fiui_isCustomSplitEvent"))
        {
          objc_storeStrong(&v19, v17);
        }

        else
        {
          activityType = [(NLSessionActivity *)selfCopy activityType];
          isDownhillSnowSport = [(FIUIWorkoutActivityType *)activityType isDownhillSnowSport];
          *&v3 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
          if (isDownhillSnowSport)
          {
            [(NLSessionActivity *)selfCopy processDownhillRunEvent:v17, v3];
          }
        }
      }

      [array addObject:v17];
LABEL_19:
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v23 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  v4 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  if (v19)
  {
    [(NLSessionActivity *)selfCopy processSplitEvent:v19, *&v4];
  }

  if (!selfCopy->_enqueuedWorkoutEvents)
  {
    array2 = [MEMORY[0x277CBEB18] array];
    enqueuedWorkoutEvents = selfCopy->_enqueuedWorkoutEvents;
    selfCopy->_enqueuedWorkoutEvents = array2;
    v4 = MEMORY[0x277D82BD8](enqueuedWorkoutEvents).n128_u64[0];
  }

  [(NSMutableArray *)selfCopy->_enqueuedWorkoutEvents addObjectsFromArray:array, *&v4];
  if (!selfCopy->_queueWorkoutEvents)
  {
    [(NLSessionActivity *)selfCopy _processQueuedWorkoutEvents];
  }

  objc_storeStrong(&array, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);
}

uint64_t __38__NLSessionActivity_addWorkoutEvents___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] dateInterval];
  v5 = [v8 dateInterval];
  v7 = [v6 compare:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (void)queueWorkoutEvents:(BOOL)events
{
  if (events)
  {
    self->_queueWorkoutEvents = 1;
  }

  else
  {
    self->_queueWorkoutEvents = 0;
    [(NLSessionActivity *)self _processQueuedWorkoutEvents];
  }
}

- (void)processSplitEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  if ([location[0] fiui_isSplitEvent] & 1) != 0 || (objc_msgSend(location[0], "fiui_isCustomSplitEvent"))
  {
    if ([(NLSessionActivity *)selfCopy isInSession])
    {
      if ([location[0] fiui_isSplitEvent])
      {
        WeakRetained = objc_loadWeakRetained(&selfCopy->_splitsDelegate);
        [WeakRetained processSplitEvent:location[0]];
        v3 = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
      }

      else if ([location[0] fiui_isCustomSplitEvent])
      {
        v16 = objc_loadWeakRetained(&selfCopy->_customSplitsDelegate);
        [v16 processCustomSplitEvent:location[0]];
        v3 = MEMORY[0x277D82BD8](v16).n128_u64[0];
      }

      fiui_splitDistance = [location[0] fiui_splitDistance];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [fiui_splitDistance doubleValueForUnit:?];
      v13 = v4;
      MEMORY[0x277D82BD8](meterUnit);
      MEMORY[0x277D82BD8](fiui_splitDistance);
      v26 = v13;
      splitsAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator splitsAccumulator];
      [(NLSessionActivitySplitsAccumulator *)splitsAccumulator definedDistance];
      v15 = v5;
      MEMORY[0x277D82BD8](splitsAccumulator);
      if (v15 == v13)
      {
        v8 = objc_alloc(MEMORY[0x277D0A830]);
        [location[0] fiui_splitActiveDuration];
        v7 = v6;
        dateInterval = [location[0] dateInterval];
        v25 = [v8 initWithDistance:v26 duration:v7 dateInterval:?];
        MEMORY[0x277D82BD8](dateInterval);
        v10 = selfCopy;
        v18 = MEMORY[0x277D85DD0];
        v19 = -1073741824;
        v20 = 0;
        v21 = __39__NLSessionActivity_processSplitEvent___block_invoke;
        v22 = &unk_277D88B48;
        v23 = MEMORY[0x277D82BE0](selfCopy);
        v24 = MEMORY[0x277D82BE0](v25);
        [(NLSessionActivity *)v10 _notifyDataObserversWithBlock:&v18];
        objc_storeStrong(&v24, 0);
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v25, 0);
      }

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }
  }

  else
  {
    v27 = 1;
  }

  objc_storeStrong(location, 0);
}

void __39__NLSessionActivity_processSplitEvent___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_respondsToSelector())
  {
    v2 = location[0];
    v3 = [a1[4] dataProvider];
    [v2 dataProvider:? splitComplete:?];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)_processQueuedWorkoutEvents
{
  selfCopy = self;
  v18[1] = a2;
  v18[0] = [(NSMutableArray *)self->_enqueuedWorkoutEvents copy];
  [(NSMutableArray *)selfCopy->_enqueuedWorkoutEvents removeAllObjects];
  if ([v18[0] count])
  {
    objc_initWeak(&v13, selfCopy);
    builder = selfCopy->_builder;
    v3 = v18[0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __48__NLSessionActivity__processQueuedWorkoutEvents__block_invoke;
    v10 = &unk_277D88CF0;
    v11 = MEMORY[0x277D82BE0](v18[0]);
    objc_copyWeak(&v12, &v13);
    [(HKLiveWorkoutBuilder *)builder addWorkoutEvents:v3 completion:&v6];
    objc_destroyWeak(&v12);
    objc_storeStrong(&v11, 0);
    objc_destroyWeak(&v13);
    v14 = 0;
  }

  else
  {
    _HKInitializeLogging();
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_20AEA4000, log, type, "No workout events in the queue to add.", v15, 2u);
    }

    objc_storeStrong(&location, 0);
    v14 = 1;
  }

  objc_storeStrong(v18, 0);
}

void __48__NLSessionActivity__processQueuedWorkoutEvents__block_invoke(uint64_t a1, char a2, id obj)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15[1] = a1;
  _HKInitializeLogging();
  v15[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_66_4_0_8_66(v19, *(a1 + 32), v17 & 1, location);
    _os_log_impl(&dword_20AEA4000, v15[0], v14, "Added workout events %{public}@ with success=%{BOOL}d error=%{public}@", v19, 0x1Cu);
  }

  objc_storeStrong(v15, 0);
  if ((v17 & 1) == 1)
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __48__NLSessionActivity__processQueuedWorkoutEvents__block_invoke_484;
    v11 = &unk_277D88A38;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v12, 0);
    objc_destroyWeak(&v13);
  }

  objc_storeStrong(&location, 0);
}

double __48__NLSessionActivity__processQueuedWorkoutEvents__block_invoke_484(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didAddWorkoutEvents:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_didAddWorkoutEvents:(id)events
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, events);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v17 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
  if (v17)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v17;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(__b[1] + 8 * v14);
      workoutEventType = [v19 workoutEventType];
      if (workoutEventType == 4)
      {
        metadata = [v19 metadata];
        v8 = [metadata objectForKey:*MEMORY[0x277D0A710]];
        intValue = [v8 intValue];
        MEMORY[0x277D82BD8](v8);
        *&v3 = MEMORY[0x277D82BD8](metadata).n128_u64[0];
        if (intValue == 1)
        {
          [(NLSessionActivity *)selfCopy _segmentMarkerEventReceived:v19, v3];
        }
      }

      else if (workoutEventType == 7)
      {
        metadata2 = [v19 metadata];
        v5 = [metadata2 objectForKey:*MEMORY[0x277D0A738]];
        intValue2 = [v5 intValue];
        MEMORY[0x277D82BD8](v5);
        *&v4 = MEMORY[0x277D82BD8](metadata2).n128_u64[0];
        if (intValue2 == 2)
        {
          [(NLSessionActivityDataAccumulator *)selfCopy->_pacerDistanceGoalProgressAccumulator stopAccumulating];
        }
      }

      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
}

- (void)_updateHeartRateUpdateAvailability
{
  v7 = [MEMORY[0x277CCDBE8] fiui_isHeartRateSupportedForActivityType:-[FIUIWorkoutActivityType identifier](self->_activityType isIndoor:{"identifier"), -[FIUIWorkoutActivityType isIndoor](self->_activityType, "isIndoor")}];
  heartRateAccumulator = [(NLSessionActivity *)self heartRateAccumulator];
  [(NLSessionActivityHeartRateAccumulator *)heartRateAccumulator setDisabledForSession:(v7 ^ 1) & 1];
  heartRatePrecisionStartAccumulator = [(NLSessionActivity *)self heartRatePrecisionStartAccumulator];
  [(WOHeartRatePrecisionStartAccumulator *)heartRatePrecisionStartAccumulator setDisabledForSession:(v7 ^ 1) & 1];
  *&v2 = MEMORY[0x277D82BD8](heartRatePrecisionStartAccumulator).n128_u64[0];
  isUltraMode = 1;
  if (v7)
  {
    isUltraMode = [(WOCoreLiveWorkoutConfiguration *)self->_configuration isUltraMode];
  }

  heartRateZonesAccumulator = [(NLSessionActivity *)self heartRateZonesAccumulator];
  [(ZonesAccumulator *)heartRateZonesAccumulator setDisabledForSession:isUltraMode];
  MEMORY[0x277D82BD8](heartRateZonesAccumulator);
}

- (void)_startBuilderWithStartDate:(id)date
{
  v31 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  _HKInitializeLogging();
  v27 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v26 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v30, location[0]);
    _os_log_impl(&dword_20AEA4000, v27, v26, "[SessionActivity] _startTrackingActivityWithStartDate:%@", v30, 0xCu);
  }

  objc_storeStrong(&v27, 0);
  activityType = [(NLSessionActivity *)selfCopy activityType];
  metadata = [(FIUIWorkoutActivityType *)activityType metadata];
  v25 = [metadata mutableCopy];
  MEMORY[0x277D82BD8](metadata);
  *&v3 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
  activityType2 = [(NLSessionActivity *)selfCopy activityType];
  isIndoor = [(FIUIWorkoutActivityType *)activityType2 isIndoor];
  *&v4 = MEMORY[0x277D82BD8](activityType2).n128_u64[0];
  if (isIndoor)
  {
    v13 = MEMORY[0x277CCABB0];
    activityType3 = [(NLSessionActivity *)selfCopy activityType];
    v11 = [v13 numberWithBool:{-[FIUIWorkoutActivityType isIndoor](activityType3, "isIndoor")}];
    [v25 setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](activityType3);
  }

  HKSessionTrackerAriadneTrigger();
  v10 = +[WOCoreWorkoutSignposter shared];
  [(WOCoreWorkoutSignposter *)v10 emitWithSignpost:3];
  MEMORY[0x277D82BD8](v10);
  objc_initWeak(&from, selfCopy);
  builder = [(NLSessionActivity *)selfCopy builder];
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  [(HKLiveWorkoutBuilder *)builder _setStatisticsComputationMethod:2 forType:?];
  MEMORY[0x277D82BD8](v8);
  *&v5 = MEMORY[0x277D82BD8](builder).n128_u64[0];
  builder2 = [(NLSessionActivity *)selfCopy builder];
  v7 = location[0];
  v18 = MEMORY[0x277D85DD0];
  v19 = -1073741824;
  v20 = 0;
  v21 = __48__NLSessionActivity__startBuilderWithStartDate___block_invoke;
  v22 = &unk_277D88D40;
  objc_copyWeak(v23, &from);
  [(HKLiveWorkoutBuilder *)builder2 beginCollectionWithStartDate:v7 completion:&v18];
  MEMORY[0x277D82BD8](builder2);
  objc_destroyWeak(v23);
  objc_destroyWeak(&from);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);
}

void __48__NLSessionActivity__startBuilderWithStartDate___block_invoke(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  HKSessionTrackerAriadneTrigger();
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __48__NLSessionActivity__startBuilderWithStartDate___block_invoke_2;
  v11 = &unk_277D88D18;
  objc_copyWeak(&v13, (a1 + 32));
  v14 = v17 & 1;
  v12 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

double __48__NLSessionActivity__startBuilderWithStartDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleBeginCollectingWithSuccess:*(a1 + 48) & 1 error:*(a1 + 32)];
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_handleBeginCollectingWithSuccess:(BOOL)success error:(id)error
{
  v11 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v8 = a2;
  successCopy = success;
  location = 0;
  objc_storeStrong(&location, error);
  HKSessionTrackerAriadneTrigger();
  HKSessionTrackerAriadneTrigger();
  v4 = +[WOCoreWorkoutSignposter shared];
  [(WOCoreWorkoutSignposter *)v4 emitWithSignpost:4];
  MEMORY[0x277D82BD8](v4);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_4_0_8_64(v10, successCopy, location);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Builder collection started with succcess=%{BOOL}d error=%@", v10, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (successCopy)
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:4];
  }

  else
  {
    [(FIUIStateMachine *)selfCopy->_stateMachine event:13];
  }

  objc_storeStrong(&location, 0);
}

- (void)_startAccumulatingElapsedTimeWithStartDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  objc_initWeak(&from, selfCopy);
  elapsedTimeAccumulator = [(NLSessionActivity *)selfCopy elapsedTimeAccumulator];
  v4 = location[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__NLSessionActivity__startAccumulatingElapsedTimeWithStartDate___block_invoke;
  v9 = &unk_277D88B00;
  objc_copyWeak(v10, &from);
  [(NLSessionActivityElapsedTimeAccumulator *)elapsedTimeAccumulator startAccumulatingWithStartDate:v4 updateHandler:&v5];
  MEMORY[0x277D82BD8](elapsedTimeAccumulator);
  objc_destroyWeak(v10);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

double __64__NLSessionActivity__startAccumulatingElapsedTimeWithStartDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 elapsedTimeProvider];
  [WeakRetained elapsedTimeAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_startAccumulatingDataWithStartDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  [(NLSessionActivity *)selfCopy _startIdempotentAccumulatingDataWithStartDate:location[0]];
  [(NLSessionActivity *)selfCopy _startActivityDependentAccumulatingDataWithStartDate:location[0]];
  [(WOSessionActivityDeviceObserver *)selfCopy->_deviceObserver startObserving];
  objc_storeStrong(location, 0);
}

- (void)_startIdempotentAccumulatingDataWithStartDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  objc_initWeak(&v45, selfCopy);
  energyBurnAccumulator = selfCopy->_energyBurnAccumulator;
  v14 = location[0];
  v39 = MEMORY[0x277D85DD0];
  v40 = -1073741824;
  v41 = 0;
  v42 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke;
  v43 = &unk_277D88B00;
  objc_copyWeak(&v44, &v45);
  [(NLSessionActivityDataAccumulator *)energyBurnAccumulator startAccumulatingWithStartDate:v14 updateHandler:&v39];
  flightsClimbedAccumulator = selfCopy->_flightsClimbedAccumulator;
  v12 = location[0];
  v33 = MEMORY[0x277D85DD0];
  v34 = -1073741824;
  v35 = 0;
  v36 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_2;
  v37 = &unk_277D88B00;
  objc_copyWeak(v38, &v45);
  [(NLSessionActivityDataAccumulator *)flightsClimbedAccumulator startAccumulatingWithStartDate:v12 updateHandler:&v33];
  strideLengthAccumulator = selfCopy->_strideLengthAccumulator;
  activityBeginDate = [(NLSessionActivity *)selfCopy activityBeginDate];
  v27 = MEMORY[0x277D85DD0];
  v28 = -1073741824;
  v29 = 0;
  v30 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_3;
  v31 = &unk_277D88B00;
  objc_copyWeak(&v32, &v45);
  [(NLSessionActivityDataAccumulator *)strideLengthAccumulator startAccumulatingWithStartDate:activityBeginDate updateHandler:&v27];
  *&v3 = MEMORY[0x277D82BD8](activityBeginDate).n128_u64[0];
  verticalOscillationAccumulator = selfCopy->_verticalOscillationAccumulator;
  activityBeginDate2 = [(NLSessionActivity *)selfCopy activityBeginDate];
  v21 = MEMORY[0x277D85DD0];
  v22 = -1073741824;
  v23 = 0;
  v24 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_4;
  v25 = &unk_277D88B00;
  objc_copyWeak(&v26, &v45);
  [(NLSessionActivityDataAccumulator *)verticalOscillationAccumulator startAccumulatingWithStartDate:activityBeginDate2 updateHandler:&v21];
  *&v4 = MEMORY[0x277D82BD8](activityBeginDate2).n128_u64[0];
  groundContactTimeAccumulator = selfCopy->_groundContactTimeAccumulator;
  activityBeginDate3 = [(NLSessionActivity *)selfCopy activityBeginDate];
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_5;
  v19 = &unk_277D88B00;
  objc_copyWeak(&v20, &v45);
  [(NLSessionActivityDataAccumulator *)groundContactTimeAccumulator startAccumulatingWithStartDate:activityBeginDate3 updateHandler:&v15];
  MEMORY[0x277D82BD8](activityBeginDate3);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v32);
  objc_destroyWeak(v38);
  objc_destroyWeak(&v44);
  objc_destroyWeak(&v45);
  objc_storeStrong(location, 0);
}

double __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 energyBurnAccumulator];
  [WeakRetained energyBurnAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 flightsClimbedAccumulator];
  [WeakRetained flightsClimbedAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 strideLengthAccumulator];
  [WeakRetained strideLengthAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 verticalOscillationAccumulator];
  [WeakRetained verticalOscillationAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 groundContactTimeAccumulator];
  [WeakRetained groundContactTimeAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_stopActivityDependentAccumulatorsWithActivity:(id)activity
{
  v38 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  v34 = 0.0;
  if (location[0])
  {
    v28 = objc_opt_class();
    startDate = [location[0] startDate];
    endDate = [location[0] endDate];
    workoutEvents = [(HKLiveWorkoutBuilder *)selfCopy->_builder workoutEvents];
    [v28 durationBetweenStartDate:startDate endDate:endDate workoutEvents:?];
    v34 = v3;
    MEMORY[0x277D82BD8](workoutEvents);
    MEMORY[0x277D82BD8](endDate);
    MEMORY[0x277D82BD8](startDate);
  }

  [(NLSessionActivity *)selfCopy queueWorkoutEvents:1];
  [(NLSessionActivityDataAccumulator *)selfCopy->_swimmingAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_downhillSnowSportsAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_swimmingStrokeAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_machineDistanceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_distanceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_machinePaceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_nonMachinePaceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_ghostPacerAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_pacerDistanceGoalProgressAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_rollingPaceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_heartRateAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_heartRateZonesAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_powerAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_powerZonesAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_elevationAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_pedometerCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_cyclingCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_waterTemperatureAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_intervalCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_locationPositionAccumulator stopAccumulating];
  racePositionProvider = [(WORaceCoordinator *)selfCopy->_raceCoordinator racePositionProvider];
  [(NLSessionActivityDataAccumulator *)racePositionProvider stopAccumulating];
  MEMORY[0x277D82BD8](racePositionProvider);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_splitsAccumulators);
  v27 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
  if (v27)
  {
    v22 = *__b[2];
    v23 = 0;
    v24 = v27;
    while (1)
    {
      v21 = v23;
      if (*__b[2] != v22)
      {
        objc_enumerationMutation(obj);
      }

      v33 = *(__b[1] + 8 * v23);
      [v33 stopAccumulatingWithActivity:location[0] elapsedTime:v34];
      ++v23;
      if (v21 + 1 >= v24)
      {
        v23 = 0;
        v24 = [obj countByEnumeratingWithState:__b objects:v37 count:16];
        if (!v24)
        {
          break;
        }
      }
    }
  }

  *&v4 = MEMORY[0x277D82BD8](obj).n128_u64[0];
  distanceAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator distanceAccumulator];
  [(NLSessionActivityDataAccumulator *)distanceAccumulator stopAccumulating];
  *&v5 = MEMORY[0x277D82BD8](distanceAccumulator).n128_u64[0];
  elapsedTimeAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator elapsedTimeAccumulator];
  [(NLSessionActivityDataAccumulator *)elapsedTimeAccumulator stopAccumulating];
  *&v6 = MEMORY[0x277D82BD8](elapsedTimeAccumulator).n128_u64[0];
  paceAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator paceAccumulator];
  [(NLSessionActivityDataAccumulator *)paceAccumulator stopAccumulating];
  *&v7 = MEMORY[0x277D82BD8](paceAccumulator).n128_u64[0];
  averagePowerAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator averagePowerAccumulator];
  [(NLSessionActivityDataAccumulator *)averagePowerAccumulator stopAccumulating];
  *&v8 = MEMORY[0x277D82BD8](averagePowerAccumulator).n128_u64[0];
  distanceAccumulator2 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator distanceAccumulator];
  [(NLSessionActivityDataAccumulator *)distanceAccumulator2 stopAccumulating];
  *&v9 = MEMORY[0x277D82BD8](distanceAccumulator2).n128_u64[0];
  elapsedTimeAccumulator2 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator elapsedTimeAccumulator];
  [(NLSessionActivityDataAccumulator *)elapsedTimeAccumulator2 stopAccumulating];
  *&v10 = MEMORY[0x277D82BD8](elapsedTimeAccumulator2).n128_u64[0];
  energyAccumulator = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator energyAccumulator];
  [(NLSessionActivityDataAccumulator *)energyAccumulator stopAccumulating];
  *&v11 = MEMORY[0x277D82BD8](energyAccumulator).n128_u64[0];
  paceAccumulator2 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator paceAccumulator];
  [(NLSessionActivityDataAccumulator *)paceAccumulator2 stopAccumulating];
  *&v12 = MEMORY[0x277D82BD8](paceAccumulator2).n128_u64[0];
  [(NLSessionActivity *)selfCopy _teardownGroundElevationManager];
  [(NLSessionActivity *)selfCopy queueWorkoutEvents:0];
  objc_storeStrong(location, 0);
}

- (void)_startActivityDependentAccumulatingDataWithStartDate:(id)date
{
  v255 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  objc_initWeak(&from, selfCopy);
  if ([(FIUIWorkoutActivityType *)selfCopy->_activityType identifier]== 46)
  {
    hkWorkoutConfiguration = [(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration hkWorkoutConfiguration];
    suggestedActivityUUID = [(HKWorkoutConfiguration *)hkWorkoutConfiguration suggestedActivityUUID];
    MEMORY[0x277D82BD8](hkWorkoutConfiguration);
    swimmingAccumulator = selfCopy->_swimmingAccumulator;
    v78 = location[0];
    if (suggestedActivityUUID)
    {
      UUID = suggestedActivityUUID;
    }

    else
    {
      UUID = selfCopy->_UUID;
    }

    v244 = MEMORY[0x277D85DD0];
    v245 = -1073741824;
    v246 = 0;
    v247 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke;
    v248 = &unk_277D88B00;
    objc_copyWeak(&v249, &from);
    [(NLSessionActivitySwimmingAccumulator *)swimmingAccumulator accumulatorDidStartWithStartDate:v78 sessionUUID:UUID handler:&v244];
    swimmingStrokeAccumulator = selfCopy->_swimmingStrokeAccumulator;
    v75 = location[0];
    v238 = MEMORY[0x277D85DD0];
    v239 = -1073741824;
    v240 = 0;
    v241 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_2;
    v242 = &unk_277D88B00;
    objc_copyWeak(&v243, &from);
    [(NLSessionActivitySwimStrokeAccumulator *)swimmingStrokeAccumulator startAccumulatingWithStartDate:v75 updateHandler:&v238];
    objc_destroyWeak(&v243);
    objc_destroyWeak(&v249);
    objc_storeStrong(&suggestedActivityUUID, 0);
  }

  else if ([(FIUIWorkoutActivityType *)selfCopy->_activityType isDownhillSnowSport])
  {
    downhillSnowSportsAccumulator = selfCopy->_downhillSnowSportsAccumulator;
    v232 = MEMORY[0x277D85DD0];
    v233 = -1073741824;
    v234 = 0;
    v235 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_487;
    v236 = &unk_277D88B00;
    objc_copyWeak(&v237, &from);
    [(NLSessionActivityDataAccumulator *)downhillSnowSportsAccumulator startAccumulatingWithUpdateHandler:&v232];
    objc_destroyWeak(&v237);
  }

  else
  {
    isMachineWorkout = [(NLSessionActivity *)selfCopy isMachineWorkout];
    activityType = [(NLSessionActivity *)selfCopy activityType];
    v70 = _UseMachineDistance(isMachineWorkout, [(FIUIWorkoutActivityType *)activityType identifier]);
    MEMORY[0x277D82BD8](activityType);
    if (v70)
    {
      machineDistanceAccumulator = selfCopy->_machineDistanceAccumulator;
      v226 = MEMORY[0x277D85DD0];
      v227 = -1073741824;
      v228 = 0;
      v229 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_2_488;
      v230 = &unk_277D88B00;
      objc_copyWeak(&v231, &from);
      [(NLSessionActivityDataAccumulator *)machineDistanceAccumulator startAccumulatingWithUpdateHandler:&v226];
      objc_destroyWeak(&v231);
    }

    else
    {
      distanceAccumulator = selfCopy->_distanceAccumulator;
      v68 = location[0];
      v220 = MEMORY[0x277D85DD0];
      v221 = -1073741824;
      v222 = 0;
      v223 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_3;
      v224 = &unk_277D88B00;
      objc_copyWeak(&v225, &from);
      [(NLSessionActivityDataAccumulator *)distanceAccumulator startAccumulatingWithStartDate:v68 updateHandler:&v220];
      objc_destroyWeak(&v225);
    }
  }

  paceAccumulator = [(NLSessionActivity *)selfCopy paceAccumulator];
  v66 = location[0];
  v214 = MEMORY[0x277D85DD0];
  v215 = -1073741824;
  v216 = 0;
  v217 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_4;
  v218 = &unk_277D88B00;
  objc_copyWeak(&v219, &from);
  [(NLSessionActivityPaceAccumulator *)paceAccumulator startAccumulatingWithStartDate:v66 updateHandler:&v214];
  MEMORY[0x277D82BD8](paceAccumulator);
  ghostPacerAccumulator = selfCopy->_ghostPacerAccumulator;
  v64 = location[0];
  v208 = MEMORY[0x277D85DD0];
  v209 = -1073741824;
  v210 = 0;
  v211 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_5;
  v212 = &unk_277D88B00;
  objc_copyWeak(&v213, &from);
  [(NLSessionActivityDataAccumulator *)ghostPacerAccumulator startAccumulatingWithStartDate:v64 updateHandler:&v208];
  [(NLPacerDistanceGoalProgressAccumulator *)selfCopy->_pacerDistanceGoalProgressAccumulator setEventPersistenceDelegate:selfCopy];
  pacerDistanceGoalProgressAccumulator = selfCopy->_pacerDistanceGoalProgressAccumulator;
  v62 = location[0];
  v202 = MEMORY[0x277D85DD0];
  v203 = -1073741824;
  v204 = 0;
  v205 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_6;
  v206 = &unk_277D88B00;
  objc_copyWeak(&v207, &from);
  [(NLSessionActivityDataAccumulator *)pacerDistanceGoalProgressAccumulator startAccumulatingWithStartDate:v62 updateHandler:&v202];
  rollingPaceAccumulator = selfCopy->_rollingPaceAccumulator;
  v60 = location[0];
  v196 = MEMORY[0x277D85DD0];
  v197 = -1073741824;
  v198 = 0;
  v199 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_7;
  v200 = &unk_277D88B00;
  objc_copyWeak(&v201, &from);
  [(NLSessionActivityDataAccumulator *)rollingPaceAccumulator startAccumulatingWithStartDate:v60 updateHandler:&v196];
  heartRateAccumulator = selfCopy->_heartRateAccumulator;
  activityBeginDate = [(NLSessionActivity *)selfCopy activityBeginDate];
  v190 = MEMORY[0x277D85DD0];
  v191 = -1073741824;
  v192 = 0;
  v193 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_8;
  v194 = &unk_277D88B00;
  objc_copyWeak(&v195, &from);
  [(NLSessionActivityDataAccumulator *)heartRateAccumulator startAccumulatingWithStartDate:activityBeginDate updateHandler:&v190];
  *&v3 = MEMORY[0x277D82BD8](activityBeginDate).n128_u64[0];
  heartRateZonesAccumulator = selfCopy->_heartRateZonesAccumulator;
  activityBeginDate2 = [(NLSessionActivity *)selfCopy activityBeginDate];
  v184 = MEMORY[0x277D85DD0];
  v185 = -1073741824;
  v186 = 0;
  v187 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_9;
  v188 = &unk_277D88B00;
  objc_copyWeak(&v189, &from);
  [(NLSessionActivityDataAccumulator *)heartRateZonesAccumulator startAccumulatingWithStartDate:activityBeginDate2 updateHandler:&v184];
  *&v4 = MEMORY[0x277D82BD8](activityBeginDate2).n128_u64[0];
  powerAccumulator = selfCopy->_powerAccumulator;
  activityBeginDate3 = [(NLSessionActivity *)selfCopy activityBeginDate];
  v178 = MEMORY[0x277D85DD0];
  v179 = -1073741824;
  v180 = 0;
  v181 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_10;
  v182 = &unk_277D88B00;
  objc_copyWeak(&v183, &from);
  [(NLSessionActivityDataAccumulator *)powerAccumulator startAccumulatingWithStartDate:activityBeginDate3 updateHandler:&v178];
  *&v5 = MEMORY[0x277D82BD8](activityBeginDate3).n128_u64[0];
  powerZonesAccumulator = selfCopy->_powerZonesAccumulator;
  activityBeginDate4 = [(NLSessionActivity *)selfCopy activityBeginDate];
  v172 = MEMORY[0x277D85DD0];
  v173 = -1073741824;
  v174 = 0;
  v175 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_11;
  v176 = &unk_277D88B00;
  objc_copyWeak(&v177, &from);
  [(NLSessionActivityDataAccumulator *)powerZonesAccumulator startAccumulatingWithStartDate:activityBeginDate4 updateHandler:&v172];
  MEMORY[0x277D82BD8](activityBeginDate4);
  elevationAccumulator = selfCopy->_elevationAccumulator;
  v50 = location[0];
  v166 = MEMORY[0x277D85DD0];
  v167 = -1073741824;
  v168 = 0;
  v169 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_12;
  v170 = &unk_277D88B00;
  objc_copyWeak(&v171, &from);
  [(NLSessionActivityDataAccumulator *)elevationAccumulator startAccumulatingWithStartDate:v50 updateHandler:&v166];
  pedometerCadenceAccumulator = selfCopy->_pedometerCadenceAccumulator;
  v48 = location[0];
  v160 = MEMORY[0x277D85DD0];
  v161 = -1073741824;
  v162 = 0;
  v163 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_13;
  v164 = &unk_277D88B00;
  objc_copyWeak(&v165, &from);
  [(NLSessionActivityPedometerCadenceAccumulator *)pedometerCadenceAccumulator startAccumulatingWithStartDate:v48 updateHandler:&v160];
  cyclingCadenceAccumulator = selfCopy->_cyclingCadenceAccumulator;
  v46 = location[0];
  v154 = MEMORY[0x277D85DD0];
  v155 = -1073741824;
  v156 = 0;
  v157 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_14;
  v158 = &unk_277D88B00;
  objc_copyWeak(&v159, &from);
  [(NLSessionActivityDataAccumulator *)cyclingCadenceAccumulator startAccumulatingWithStartDate:v46 updateHandler:&v154];
  waterTemperatureAccumulator = selfCopy->_waterTemperatureAccumulator;
  v44 = location[0];
  v148 = MEMORY[0x277D85DD0];
  v149 = -1073741824;
  v150 = 0;
  v151 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_15;
  v152 = &unk_277D88B00;
  objc_copyWeak(&v153, &from);
  [(NLSessionActivityDataAccumulator *)waterTemperatureAccumulator startAccumulatingWithStartDate:v44 updateHandler:&v148];
  intervalCadenceAccumulator = selfCopy->_intervalCadenceAccumulator;
  v42 = location[0];
  v142 = MEMORY[0x277D85DD0];
  v143 = -1073741824;
  v144 = 0;
  v145 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_16;
  v146 = &unk_277D88B00;
  objc_copyWeak(&v147, &from);
  [(NLSessionActivityDataAccumulator *)intervalCadenceAccumulator startAccumulatingWithStartDate:v42 updateHandler:&v142];
  racePositionProvider = [(WORaceCoordinator *)selfCopy->_raceCoordinator racePositionProvider];
  v40 = location[0];
  v136 = MEMORY[0x277D85DD0];
  v137 = -1073741824;
  v138 = 0;
  v139 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_17;
  v140 = &unk_277D88B00;
  objc_copyWeak(&v141, &from);
  [(NLSessionActivityDataAccumulator *)racePositionProvider startAccumulatingWithStartDate:v40 updateHandler:&v136];
  *&v6 = MEMORY[0x277D82BD8](racePositionProvider).n128_u64[0];
  if ([(FIUIWorkoutActivityType *)selfCopy->_activityType supportsLocationPositionTracking])
  {
    [(NLSessionActivityDataAccumulator *)selfCopy->_locationPositionAccumulator startAccumulatingWithStartDate:location[0] updateHandler:&__block_literal_global_490];
  }

  if ([(FIUIWorkoutActivityType *)selfCopy->_activityType supportsDistanceSplits])
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](selfCopy->_splitsAccumulators);
    v38 = [obj countByEnumeratingWithState:__b objects:v254 count:16];
    if (v38)
    {
      v34 = *__b[2];
      v35 = 0;
      v36 = v38;
      while (1)
      {
        v33 = v35;
        if (*__b[2] != v34)
        {
          objc_enumerationMutation(obj);
        }

        v135 = *(__b[1] + 8 * v35);
        [v135 setEventPersistenceDelegate:selfCopy];
        [v135 startAccumulatingWithStartDate:location[0] updateHandler:&__block_literal_global_492];
        ++v35;
        if (v33 + 1 >= v36)
        {
          v35 = 0;
          v36 = [obj countByEnumeratingWithState:__b objects:v254 count:16];
          if (!v36)
          {
            break;
          }
        }
      }
    }

    *&v7 = MEMORY[0x277D82BD8](obj).n128_u64[0];
    distanceAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator distanceAccumulator];
    v32 = location[0];
    v128 = MEMORY[0x277D85DD0];
    v129 = -1073741824;
    v130 = 0;
    v131 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_20;
    v132 = &unk_277D88B00;
    objc_copyWeak(&v133, &from);
    [(NLSessionActivityDataAccumulator *)distanceAccumulator startAccumulatingWithStartDate:v32 updateHandler:&v128];
    *&v8 = MEMORY[0x277D82BD8](distanceAccumulator).n128_u64[0];
    elapsedTimeAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator elapsedTimeAccumulator];
    v30 = location[0];
    v122 = MEMORY[0x277D85DD0];
    v123 = -1073741824;
    v124 = 0;
    v125 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_21;
    v126 = &unk_277D88B00;
    objc_copyWeak(&v127, &from);
    [(NLSessionActivityDataAccumulator *)elapsedTimeAccumulator startAccumulatingWithStartDate:v30 updateHandler:&v122];
    *&v9 = MEMORY[0x277D82BD8](elapsedTimeAccumulator).n128_u64[0];
    paceAccumulator2 = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator paceAccumulator];
    v28 = location[0];
    v116 = MEMORY[0x277D85DD0];
    v117 = -1073741824;
    v118 = 0;
    v119 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_22;
    v120 = &unk_277D88B00;
    objc_copyWeak(&v121, &from);
    [(NLSessionActivityDataAccumulator *)paceAccumulator2 startAccumulatingWithStartDate:v28 updateHandler:&v116];
    *&v10 = MEMORY[0x277D82BD8](paceAccumulator2).n128_u64[0];
    averagePowerAccumulator = [(WOSplitsDisplayAccumulator *)selfCopy->_splitsDisplayAccumulator averagePowerAccumulator];
    v26 = location[0];
    v110 = MEMORY[0x277D85DD0];
    v111 = -1073741824;
    v112 = 0;
    v113 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_23;
    v114 = &unk_277D88B00;
    objc_copyWeak(&v115, &from);
    [(NLSessionActivityDataAccumulator *)averagePowerAccumulator startAccumulatingWithStartDate:v26 updateHandler:&v110];
    MEMORY[0x277D82BD8](averagePowerAccumulator);
    objc_destroyWeak(&v115);
    objc_destroyWeak(&v121);
    objc_destroyWeak(&v127);
    objc_destroyWeak(&v133);
  }

  if ([(FIUIWorkoutActivityType *)selfCopy->_activityType supportsSegments])
  {
    distanceAccumulator2 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator distanceAccumulator];
    v24 = location[0];
    v104 = MEMORY[0x277D85DD0];
    v105 = -1073741824;
    v106 = 0;
    v107 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_24;
    v108 = &unk_277D88B00;
    objc_copyWeak(&v109, &from);
    [(NLSessionActivityDataAccumulator *)distanceAccumulator2 startAccumulatingWithStartDate:v24 updateHandler:&v104];
    *&v11 = MEMORY[0x277D82BD8](distanceAccumulator2).n128_u64[0];
    elapsedTimeAccumulator2 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator elapsedTimeAccumulator];
    v22 = location[0];
    v98 = MEMORY[0x277D85DD0];
    v99 = -1073741824;
    v100 = 0;
    v101 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_25;
    v102 = &unk_277D88B00;
    objc_copyWeak(&v103, &from);
    [(NLSessionActivityDataAccumulator *)elapsedTimeAccumulator2 startAccumulatingWithStartDate:v22 updateHandler:&v98];
    *&v12 = MEMORY[0x277D82BD8](elapsedTimeAccumulator2).n128_u64[0];
    energyAccumulator = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator energyAccumulator];
    v20 = location[0];
    v92 = MEMORY[0x277D85DD0];
    v93 = -1073741824;
    v94 = 0;
    v95 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_26;
    v96 = &unk_277D88B00;
    objc_copyWeak(&v97, &from);
    [(NLSessionActivityDataAccumulator *)energyAccumulator startAccumulatingWithStartDate:v20 updateHandler:&v92];
    *&v13 = MEMORY[0x277D82BD8](energyAccumulator).n128_u64[0];
    paceAccumulator3 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator paceAccumulator];
    v18 = location[0];
    v86 = MEMORY[0x277D85DD0];
    v87 = -1073741824;
    v88 = 0;
    v89 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_27;
    v90 = &unk_277D88B00;
    objc_copyWeak(&v91, &from);
    [(NLSessionActivityDataAccumulator *)paceAccumulator3 startAccumulatingWithStartDate:v18 updateHandler:&v86];
    *&v14 = MEMORY[0x277D82BD8](paceAccumulator3).n128_u64[0];
    averagePowerAccumulator2 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator averagePowerAccumulator];
    v16 = location[0];
    v80 = MEMORY[0x277D85DD0];
    v81 = -1073741824;
    v82 = 0;
    v83 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_28;
    v84 = &unk_277D88B00;
    objc_copyWeak(&v85, &from);
    [(NLSessionActivityDataAccumulator *)averagePowerAccumulator2 startAccumulatingWithStartDate:v16 updateHandler:&v80];
    MEMORY[0x277D82BD8](averagePowerAccumulator2);
    objc_destroyWeak(&v85);
    objc_destroyWeak(&v91);
    objc_destroyWeak(&v97);
    objc_destroyWeak(&v103);
    objc_destroyWeak(&v109);
  }

  objc_destroyWeak(&v141);
  objc_destroyWeak(&v147);
  objc_destroyWeak(&v153);
  objc_destroyWeak(&v159);
  objc_destroyWeak(&v165);
  objc_destroyWeak(&v171);
  objc_destroyWeak(&v177);
  objc_destroyWeak(&v183);
  objc_destroyWeak(&v189);
  objc_destroyWeak(&v195);
  objc_destroyWeak(&v201);
  objc_destroyWeak(&v207);
  objc_destroyWeak(&v213);
  objc_destroyWeak(&v219);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 swimmingAccumulator];
  [WeakRetained swimmingAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

void __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_2(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained(a1 + 4);
      v2 = [WeakRetained swimmingStrokeAccumulator];
      v1 = [v2 distanceByStrokeStyle];
      __os_log_helper_16_2_1_8_64(v6, v1);
      _os_log_debug_impl(&dword_20AEA4000, location[0], OS_LOG_TYPE_DEBUG, "%@", v6, 0xCu);
      MEMORY[0x277D82BD8](v1);
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](WeakRetained);
    }

    objc_storeStrong(location, 0);
  }
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_487(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 downhillSnowSportsAccumulator];
  [WeakRetained downhillSnowSportsAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_2_488(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 machineDistanceAccumulator];
  [WeakRetained distanceProviderDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 distanceAccumulator];
  [WeakRetained distanceProviderDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 paceProvider];
  [WeakRetained paceProviderDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 ghostPacerAccumulator];
  [WeakRetained ghostPacerAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 pacerDistanceGoalProgressAccumulator];
  [WeakRetained pacerDistanceGoalProgressAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 rollingPaceAccumulator];
  [WeakRetained rollingPaceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 heartRateAccumulator];
  [WeakRetained heartRateAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 heartRateZonesAccumulator];
  [WeakRetained heartRateZonesAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 powerAccumulator];
  [WeakRetained powerAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 powerZonesAccumulator];
  [WeakRetained powerZonesAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 elevationAccumulator];
  [WeakRetained elevationAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 pedometerCadenceAccumulator];
  [WeakRetained pedometerCadenceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 cyclingCadenceAccumulator];
  [WeakRetained cyclingCadenceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 waterTemperatureAccumulator];
  [WeakRetained waterTemperatureAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 intervalCadenceAccumulator];
  [WeakRetained intervalCadenceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 raceCoordinator];
  v3 = [v4 racePositionProvider];
  [WeakRetained racePositionProviderDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 splitsDisplayAccumulator];
  v3 = [v4 distanceAccumulator];
  [WeakRetained splitDistanceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 splitsDisplayAccumulator];
  v3 = [v4 elapsedTimeAccumulator];
  [WeakRetained splitElapsedTimeAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 splitsDisplayAccumulator];
  v3 = [v4 paceAccumulator];
  [WeakRetained splitPaceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 splitsDisplayAccumulator];
  v3 = [v4 averagePowerAccumulator];
  [WeakRetained splitAveragePowerAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 distanceAccumulator];
  [WeakRetained segmentDistanceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 elapsedTimeAccumulator];
  [WeakRetained segmentElapsedTimeAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 energyAccumulator];
  [WeakRetained segmentEnergyAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 paceAccumulator];
  [WeakRetained segmentPaceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

double __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 averagePowerAccumulator];
  [WeakRetained segmentAveragePowerAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  *&result = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  return result;
}

- (void)_stopTrackingActivityWithEndDate:(id)date
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  _HKInitializeLogging();
  v25 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v25;
    v22 = v24;
    __os_log_helper_16_0_0(v23);
    _os_log_impl(&dword_20AEA4000, v21, v22, "_stopTrackingActivityWithEndDate called", v23, 2u);
  }

  objc_storeStrong(&v25, 0);
  [(NLSessionActivityDataAccumulator *)selfCopy->_energyBurnAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_distanceAccumulator stopAccumulating];
  paceAccumulator = [(NLSessionActivity *)selfCopy paceAccumulator];
  [(NLSessionActivityPaceAccumulator *)paceAccumulator stopAccumulating];
  *&v3 = MEMORY[0x277D82BD8](paceAccumulator).n128_u64[0];
  [(NLSessionActivityDataAccumulator *)selfCopy->_ghostPacerAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_pacerDistanceGoalProgressAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_rollingPaceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_pedometerCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_cyclingCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_waterTemperatureAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_intervalCadenceAccumulator stopAccumulating];
  elapsedTimeAccumulator = [(NLSessionActivity *)selfCopy elapsedTimeAccumulator];
  [(NLSessionActivityElapsedTimeAccumulator *)elapsedTimeAccumulator stopAccumulating];
  *&v4 = MEMORY[0x277D82BD8](elapsedTimeAccumulator).n128_u64[0];
  [(NLSessionActivityDataAccumulator *)selfCopy->_heartRateAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_heartRateZonesAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_powerZonesAccumulator stopAccumulating];
  [(NLSessionActivityWeatherManager *)selfCopy->_weatherManager setActive:0];
  [(NLSessionActivityDataAccumulator *)selfCopy->_swimmingAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_elevationAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_flightsClimbedAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_powerAccumulator stopAccumulating];
  racePositionProvider = [(WORaceCoordinator *)selfCopy->_raceCoordinator racePositionProvider];
  [(NLSessionActivityDataAccumulator *)racePositionProvider stopAccumulating];
  *&v5 = MEMORY[0x277D82BD8](racePositionProvider).n128_u64[0];
  distanceAccumulator = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator distanceAccumulator];
  [(NLSessionActivityDataAccumulator *)distanceAccumulator stopAccumulating];
  *&v6 = MEMORY[0x277D82BD8](distanceAccumulator).n128_u64[0];
  elapsedTimeAccumulator2 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator elapsedTimeAccumulator];
  [(NLSessionActivityDataAccumulator *)elapsedTimeAccumulator2 stopAccumulating];
  *&v7 = MEMORY[0x277D82BD8](elapsedTimeAccumulator2).n128_u64[0];
  energyAccumulator = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator energyAccumulator];
  [(NLSessionActivityDataAccumulator *)energyAccumulator stopAccumulating];
  *&v8 = MEMORY[0x277D82BD8](energyAccumulator).n128_u64[0];
  paceAccumulator2 = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator paceAccumulator];
  [(NLSessionActivityDataAccumulator *)paceAccumulator2 stopAccumulating];
  *&v9 = MEMORY[0x277D82BD8](paceAccumulator2).n128_u64[0];
  averagePowerAccumulator = [(WOSegmentAccumulator *)selfCopy->_segmentAccumulator averagePowerAccumulator];
  [(NLSessionActivityDataAccumulator *)averagePowerAccumulator stopAccumulating];
  *&v10 = MEMORY[0x277D82BD8](averagePowerAccumulator).n128_u64[0];
  [(NLSessionActivityDataAccumulator *)selfCopy->_strideLengthAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_verticalOscillationAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)selfCopy->_groundContactTimeAccumulator stopAccumulating];
  deviceObserver = [(NLSessionActivity *)selfCopy deviceObserver];
  [(WOSessionActivityDeviceObserver *)deviceObserver stopObserving];
  *&v11 = MEMORY[0x277D82BD8](deviceObserver).n128_u64[0];
  [(NLSessionActivity *)selfCopy _teardownGroundElevationManager];
  objc_storeStrong(location, 0);
}

- (void)_handleFinishWorkoutWithWorkout:(id)workout error:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  v27 = 0;
  objc_storeStrong(&v27, error);
  _HKInitializeLogging();
  v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v25 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v31, location[0], v27);
    _os_log_impl(&dword_20AEA4000, v26, v25, "[SessionActivity] Builder finished with workout=%@ error=%@", v31, 0x16u);
  }

  objc_storeStrong(&v26, 0);
  if (location[0])
  {
    demoDataProvider = [(NLSessionActivity *)selfCopy demoDataProvider];
    v4 = MEMORY[0x277D82BD8](demoDataProvider).n128_u64[0];
    if (demoDataProvider)
    {
      demoDataProvider2 = [(NLSessionActivity *)selfCopy demoDataProvider];
      v5 = [(NLWorkoutDemoDataProvider *)demoDataProvider2 demoWorkoutWithSnapshot:location[0]];
      v6 = location[0];
      location[0] = v5;
      MEMORY[0x277D82BD8](v6);
      v4 = MEMORY[0x277D82BD8](demoDataProvider2).n128_u64[0];
    }

    [(NLSessionActivity *)selfCopy setSavedWorkout:location[0], *&v4];
    lifecycleDelegate = [(NLSessionActivity *)selfCopy lifecycleDelegate];
    [(NLSessionActivityLifecycleDelegate *)lifecycleDelegate sessionActivity:selfCopy didUpdateWorkout:location[0] workoutIsFinal:1];
    *&v7 = MEMORY[0x277D82BD8](lifecycleDelegate).n128_u64[0];
    savingDelegate = [(NLSessionActivity *)selfCopy savingDelegate];
    [(NLSessionActivitySavingDelegate *)savingDelegate activity:selfCopy didSaveWorkout:location[0]];
    MEMORY[0x277D82BD8](savingDelegate);
    v11 = selfCopy;
    v18 = MEMORY[0x277D85DD0];
    v19 = -1073741824;
    v20 = 0;
    v21 = __59__NLSessionActivity__handleFinishWorkoutWithWorkout_error___block_invoke;
    v22 = &unk_277D88B48;
    v23 = MEMORY[0x277D82BE0](selfCopy);
    v24 = MEMORY[0x277D82BE0](location[0]);
    [(NLSessionActivity *)v11 _notifyDataObserversWithBlock:&v18];
    uUID = [(NLSessionActivity *)selfCopy UUID];
    uUIDString = [(NSUUID *)uUID UUIDString];
    [WOCoreTaskFinalizer finalizeWithIdentifier:?];
    MEMORY[0x277D82BD8](uUIDString);
    *&v8 = MEMORY[0x277D82BD8](uUID).n128_u64[0];
    [(FIUIStateMachine *)selfCopy->_stateMachine event:20, v8];
    objc_storeStrong(&v24, 0);
    objc_storeStrong(&v23, 0);
  }

  else
  {
    _HKInitializeLogging();
    v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v30, v27);
      _os_log_error_impl(&dword_20AEA4000, v17, OS_LOG_TYPE_ERROR, "[SessionActivity] Builder failed to finish with error %@", v30, 0xCu);
    }

    objc_storeStrong(&v17, 0);
    [(FIUIStateMachine *)selfCopy->_stateMachine event:18];
  }

  objc_storeStrong(&v27, 0);
  objc_storeStrong(location, 0);
}

void __59__NLSessionActivity__handleFinishWorkoutWithWorkout_error___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [a1[4] dataProvider];
  [v3 dataProvider:? didUpdateWorkout:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)registerMarkerEventWithDate:(id)date metadata:(id)metadata
{
  v20[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v17 = 0;
  objc_storeStrong(&v17, metadata);
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    v12 = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_20AEA4000, log, v12, "[SessionActivity] Registering marker event", v14, 2u);
  }

  objc_storeStrong(&v16, 0);
  v6 = selfCopy;
  v5 = MEMORY[0x277CCDC68];
  v4 = objc_alloc(MEMORY[0x277CCA970]);
  date = [MEMORY[0x277CBEAA8] date];
  v9 = [v4 initWithStartDate:0.0 duration:?];
  v8 = [v5 workoutEventWithType:4 dateInterval:? metadata:?];
  v20[0] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [(NLSessionActivity *)v6 addWorkoutEvents:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](date);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_notifyDataObserversUpdatedMetricType:(unint64_t)type
{
  selfCopy = self;
  v11 = a2;
  typeCopy = type;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__NLSessionActivity__notifyDataObserversUpdatedMetricType___block_invoke;
  v8 = &unk_277D88D68;
  v9[0] = MEMORY[0x277D82BE0](self);
  v9[1] = typeCopy;
  [(NLSessionActivity *)self _notifyDataObserversWithBlock:?];
  objc_storeStrong(v9, 0);
}

void __59__NLSessionActivity__notifyDataObserversUpdatedMetricType___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [a1[4] dataProvider];
  [v3 dataProvider:? didUpdate:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_notifyDataObserversUpdatedMetricTypes:(id)types
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, types);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v8 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v5);
      -[NLSessionActivity _notifyDataObserversUpdatedMetricType:](selfCopy, "_notifyDataObserversUpdatedMetricType:", [v10 integerValue]);
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
}

- (void)_notifyDataObserversWithBlock:(id)block
{
  v14 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, block);
  memset(__b, 0, sizeof(__b));
  obj = [(NSHashTable *)selfCopy->_dataObservers allObjects];
  v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(__b[1] + 8 * v5);
      (*(location[0] + 2))(location[0], v10);
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(location, 0);
}

- (void)energyBurnAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279D18];
  }

  objc_storeStrong(location, 0);
}

- (void)elevationAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricType:10];
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricType:17];
  }

  objc_storeStrong(location, 0);
}

- (void)flightsClimbedAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricType:13];
  }

  objc_storeStrong(location, 0);
}

- (void)distanceProviderDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricType:1];
    raceLocationProvider = [(WORaceCoordinator *)selfCopy->_raceCoordinator raceLocationProvider];
    [location[0] distance];
    [(WORaceLocationProvider *)raceLocationProvider updateWithDistance:?];
    MEMORY[0x277D82BD8](raceLocationProvider);
  }

  objc_storeStrong(location, 0);
}

- (void)elapsedTimeAccumulatorDidUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  [(NLSessionActivity *)selfCopy activityDuration];
  v7 = v3;
  if (selfCopy->_state == 6 || selfCopy->_state == 1)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v11, v7);
      _os_log_impl(&dword_20AEA4000, oslog, type, "[ElapsedTimeDebugging] Received elapsed time update with duration:%f", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricType:3];
    if ([(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration isUltraMode])
    {
      _HKInitializeLogging();
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v10, v7);
        _os_log_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_DEFAULT, "[UltraModeDebugging] SKIP elapsed time update for average and rolling pace in UltraMode from elapsedTimeAccumulator with activityDuration: %f", v10, 0xCu);
      }

      objc_storeStrong(&v4, 0);
    }

    else
    {
      [(NLSessionActivityNonMachinePaceAccumulator *)selfCopy->_nonMachinePaceAccumulator updateAveragePaceWithElapsedTime:*&v7];
      [(NLSessionActivityRollingPaceAccumulator *)selfCopy->_rollingPaceAccumulator updateRollingPaceWithElapsedTime:*&v7];
    }

    [(NLGhostPacerAccumulator *)selfCopy->_ghostPacerAccumulator updateWithElapsedTime:*&v7];
    [(WORaceCoordinator *)selfCopy->_raceCoordinator updateWithElapsedTime:*&v7];
    [(NLSessionActivityBuilderAccumulator *)selfCopy->_heartRateZonesAccumulator update];
    [(NLSessionActivityBuilderAccumulator *)selfCopy->_powerZonesAccumulator update];
  }

  objc_storeStrong(location, 0);
}

- (void)heartRateAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279D30];
  }

  objc_storeStrong(location, 0);
}

- (void)powerAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279D48];
  }

  objc_storeStrong(location, 0);
}

- (void)heartRateZonesAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279D60];
  }

  objc_storeStrong(location, 0);
}

- (void)powerZonesAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279D78];
  }

  objc_storeStrong(location, 0);
}

- (void)heartRatePrecisionStartAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state == 1)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279D90];
  }

  objc_storeStrong(location, 0);
}

- (void)paceProviderDidUpdate:(id)update
{
  v14[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279DA8];
    [location[0] fastestPaceInMetersPerSecond];
    v10 = v3;
    v9 = v3;
    [(NLSessionActivity *)selfCopy currentFastestPace];
    if (v9 != v4)
    {
      [(NLSessionActivity *)selfCopy setCurrentFastestPace:v10];
      v6 = selfCopy;
      v13 = @"_HKPrivateMetadataKeyFastestPace";
      v5 = MEMORY[0x277CCABB0];
      [(NLSessionActivity *)selfCopy currentFastestPace];
      v8 = [v5 numberWithDouble:?];
      v14[0] = v8;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [NLSessionActivity insertOrUpdateMetadata:v6 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)ghostPacerAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279DC0];
  }

  objc_storeStrong(location, 0);
}

- (void)pacerDistanceGoalProgressAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    v3 = selfCopy;
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __67__NLSessionActivity_pacerDistanceGoalProgressAccumulatorDidUpdate___block_invoke;
    v8 = &unk_277D88C10;
    v9 = MEMORY[0x277D82BE0](location[0]);
    [(NLSessionActivity *)v3 _notifyDataObserversWithBlock:&v4];
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

void __67__NLSessionActivity_pacerDistanceGoalProgressAccumulatorDidUpdate___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_respondsToSelector())
  {
    v2 = location[0];
    v3 = [a1[4] goalCompletionTimeNumber];
    [v3 doubleValue];
    [v2 pacerDistanceGoalCompleteIn:?];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)rollingPaceAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279DD8];
  }

  objc_storeStrong(location, 0);
}

- (void)swimmingAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279DF0];
  }

  objc_storeStrong(location, 0);
}

- (void)downhillSnowSportsAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279E08];
  }

  objc_storeStrong(location, 0);
}

- (void)pedometerCadenceAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279E20];
  }

  objc_storeStrong(location, 0);
}

- (void)cyclingCadenceAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279E38];
  }

  objc_storeStrong(location, 0);
}

- (void)waterTemperatureAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279E50];
  }

  objc_storeStrong(location, 0);
}

- (void)intervalCadenceAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279E68];
  }

  objc_storeStrong(location, 0);
}

- (void)racePositionProviderDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279E80];
  }

  objc_storeStrong(location, 0);
}

- (void)locationPositionAccumulator:(id)accumulator didUpdateLocations:(id)locations
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accumulator);
  v13 = 0;
  objc_storeStrong(&v13, locations);
  if (selfCopy->_state != 7)
  {
    v4 = selfCopy;
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __68__NLSessionActivity_locationPositionAccumulator_didUpdateLocations___block_invoke;
    v10 = &unk_277D88B48;
    v11 = MEMORY[0x277D82BE0](selfCopy);
    v12 = MEMORY[0x277D82BE0](v13);
    [(NLSessionActivity *)v4 _notifyDataObserversWithBlock:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __68__NLSessionActivity_locationPositionAccumulator_didUpdateLocations___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_respondsToSelector())
  {
    v2 = location[0];
    v3 = [a1[4] dataProvider];
    [v2 dataProvider:? didUpdateLocations:?];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)locationPositionAccumulator:(id)accumulator didUpdateRoutePosition:(id)position
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accumulator);
  v13 = 0;
  objc_storeStrong(&v13, position);
  if (selfCopy->_state != 7)
  {
    v4 = selfCopy;
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __72__NLSessionActivity_locationPositionAccumulator_didUpdateRoutePosition___block_invoke;
    v10 = &unk_277D88B48;
    v11 = MEMORY[0x277D82BE0](selfCopy);
    v12 = MEMORY[0x277D82BE0](v13);
    [(NLSessionActivity *)v4 _notifyDataObserversWithBlock:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __72__NLSessionActivity_locationPositionAccumulator_didUpdateRoutePosition___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_respondsToSelector())
  {
    v2 = location[0];
    v3 = [a1[4] dataProvider];
    [v2 dataProvider:? didUpdateRoutePosition:?];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)segmentDistanceAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279E98];
  }

  objc_storeStrong(location, 0);
}

- (void)segmentEnergyAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279EB0];
  }

  objc_storeStrong(location, 0);
}

- (void)segmentElapsedTimeAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279EC8];
  }

  objc_storeStrong(location, 0);
}

- (void)segmentPaceAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279EE0];
  }

  objc_storeStrong(location, 0);
}

- (void)segmentAveragePowerAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279EF8];
  }

  objc_storeStrong(location, 0);
}

- (void)strideLengthAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279F10];
  }

  objc_storeStrong(location, 0);
}

- (void)verticalOscillationAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279F28];
  }

  objc_storeStrong(location, 0);
}

- (void)groundContactTimeAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279F40];
  }

  objc_storeStrong(location, 0);
}

- (void)splitDistanceAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279F58];
  }

  objc_storeStrong(location, 0);
}

- (void)splitElapsedTimeAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279F70];
  }

  objc_storeStrong(location, 0);
}

- (void)splitPaceAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279F88];
  }

  objc_storeStrong(location, 0);
}

- (void)splitAveragePowerAccumulatorDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (selfCopy->_state != 7)
  {
    [(NLSessionActivity *)selfCopy _notifyDataObserversUpdatedMetricTypes:&unk_282279FA0];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateSplitsWithStatistics:(id)statistics duration:(double)duration
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  durationCopy = duration;
  paceProvider = [(NLSessionActivity *)selfCopy paceProvider];
  isPaceAvailable = [(NLSessionActivityPaceProvider *)paceProvider isPaceAvailable];
  MEMORY[0x277D82BD8](paceProvider);
  if (isPaceAvailable)
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](selfCopy->_splitsAccumulators);
    v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(__b[1] + 8 * v7);
        [v15 updateWithStatistics:location[0] elapsedTime:{durationCopy, v8}];
        ++v7;
        v8 = v4;
        if (v5 + 1 >= v4)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }

  objc_storeStrong(location, 0);
}

- (void)paceAccumulator:(id)accumulator didUpdateIsGPSAvailable:(BOOL)available
{
  v19[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accumulator);
  availableCopy = available;
  if (!available)
  {
    selfCopy->_lostGPSAtSomePoint = 1;
    v5 = selfCopy;
    v18 = *MEMORY[0x277D0A878];
    v19[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [NLSessionActivity insertOrUpdateMetadata:v5 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
    MEMORY[0x277D82BD8](v6);
  }

  v4 = selfCopy;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __61__NLSessionActivity_paceAccumulator_didUpdateIsGPSAvailable___block_invoke;
  v12 = &unk_277D88D90;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = availableCopy;
  [(NLSessionActivity *)v4 _notifyDataObserversWithBlock:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __61__NLSessionActivity_paceAccumulator_didUpdateIsGPSAvailable___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [a1[4] dataProvider];
  [v3 dataProvider:? didUpdateIsGPSAvailable:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)paceAccumulator:(id)accumulator didUpdateCurrentPaceInMetersPerSecond:(double)second
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accumulator);
  objc_storeStrong(location, 0);
}

- (void)heartRateProviderDidBecomeStale:(id)stale
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, stale);
  v3 = selfCopy;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __53__NLSessionActivity_heartRateProviderDidBecomeStale___block_invoke;
  v8 = &unk_277D88C10;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  [(NLSessionActivity *)v3 _notifyDataObserversWithBlock:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __53__NLSessionActivity_heartRateProviderDidBecomeStale___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [a1[4] dataProvider];
  [v3 activityHeartRateDidBecomeStale:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_updateElapsedTime:(double)time
{
  selfCopy = self;
  v13 = a2;
  timeCopy = time;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __40__NLSessionActivity__updateElapsedTime___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  v11[1] = *&timeCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

double __40__NLSessionActivity__updateElapsedTime___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) elapsedTimeAccumulator];
  [v3 setElapsedTime:*(a1 + 40)];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_updateElevationGain:(id)gain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gain);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __42__NLSessionActivity__updateElevationGain___block_invoke;
  v10 = &unk_277D88998;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateElevation:(id)elevation
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elevation);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __38__NLSessionActivity__updateElevation___block_invoke;
  v10 = &unk_277D88998;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

double __38__NLSessionActivity__updateElevation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) processSample:*(a1 + 40)];
  v3 = [*(a1 + 40) value];
  [*(*(a1 + 32) + 408) setCurrentAltitude:?];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_updateInstantaneousPower:(double)power sampleDate:(id)date
{
  selfCopy = self;
  v16 = a2;
  powerCopy = power;
  location = 0;
  objc_storeStrong(&location, date);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __58__NLSessionActivity__updateInstantaneousPower_sampleDate___block_invoke;
  v11 = &unk_277D88DE0;
  v12 = MEMORY[0x277D82BE0](selfCopy);
  v13[1] = *&powerCopy;
  v13[0] = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)_updateAveragePower:(double)power
{
  selfCopy = self;
  v13 = a2;
  powerCopy = power;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __41__NLSessionActivity__updateAveragePower___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  v11[1] = *&powerCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

- (void)_updateInstantaneousPace:(double)pace
{
  selfCopy = self;
  v13 = a2;
  paceCopy = pace;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __46__NLSessionActivity__updateInstantaneousPace___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  v11[1] = *&paceCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

double __46__NLSessionActivity__updateInstantaneousPace___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) paceAccumulator];
  [v3 setCurrentPaceInMetersPerSecond:v2];
  *&result = MEMORY[0x277D82BD8](v3).n128_u64[0];
  return result;
}

- (void)_updateAveragePace:(double)pace
{
  selfCopy = self;
  v13 = a2;
  paceCopy = pace;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __40__NLSessionActivity__updateAveragePace___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  v11[1] = *&paceCopy;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

- (void)_updateTotalDistanceWithStatistics:(id)statistics duration:(double)duration
{
  v27 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  durationCopy = duration;
  v17 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v18 = v17;
  dispatch_assert_queue_V2(v18);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      quantityType = [location[0] quantityType];
      sumQuantity = [location[0] sumQuantity];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [sumQuantity doubleValueForUnit:?];
      __os_log_helper_16_2_2_8_64_8_0(v26, quantityType, v5);
      _os_log_impl(&dword_20AEA4000, v22, v21, "Received a sample based distance of %@ to %f", v26, 0x16u);
      MEMORY[0x277D82BD8](meterUnit);
      MEMORY[0x277D82BD8](sumQuantity);
      MEMORY[0x277D82BD8](quantityType);
    }

    objc_storeStrong(&v22, 0);
  }

  v20 = MEMORY[0x277D82BE0](location[0]);
  v19 = durationCopy;
  demoDataProvider = [(NLSessionActivity *)selfCopy demoDataProvider];
  *&v6 = MEMORY[0x277D82BD8](demoDataProvider).n128_u64[0];
  if (demoDataProvider)
  {
    demoDataProvider2 = [(NLSessionActivity *)selfCopy demoDataProvider];
    v7 = [(NLWorkoutDemoDataProvider *)demoDataProvider2 demoAdjustedStatisticsForStatistics:location[0]];
    v8 = v20;
    v20 = v7;
    MEMORY[0x277D82BD8](v8);
    *&v9 = MEMORY[0x277D82BD8](demoDataProvider2).n128_u64[0];
    [(NLSessionActivity *)selfCopy activityDuration];
    v19 = v6;
  }

  [(NLSessionActivityDistanceAccumulator *)selfCopy->_distanceAccumulator updateDistanceWithStatistics:v20, v6, &v20];
  [(NLSessionActivityNonMachinePaceAccumulator *)selfCopy->_nonMachinePaceAccumulator updateAveragePaceWithStatistics:v20 duration:v19];
  [(NLGhostPacerAccumulator *)selfCopy->_ghostPacerAccumulator updatePacerWithStatistics:v20 duration:v19];
  [(NLPacerDistanceGoalProgressAccumulator *)selfCopy->_pacerDistanceGoalProgressAccumulator updateProgressWithStatistics:v20 elapsedTime:v19];
  [(NLSessionActivity *)selfCopy _updateSplitsWithStatistics:v20 duration:v19];
  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateMachineDistance:(double)distance
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  v14 = *&distance;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v17, v14);
      _os_log_impl(&dword_20AEA4000, location, v12, "Updated distance machine to %f", v17, 0xCu);
    }

    objc_storeStrong(&location, 0);
  }

  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __44__NLSessionActivity__updateMachineDistance___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](selfCopy);
  v11[1] = v14;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

void __44__NLSessionActivity__updateMachineDistance___block_invoke(uint64_t a1)
{
  v8[2] = a1;
  v8[1] = a1;
  [*(*(a1 + 32) + 128) identifier];
  v8[0] = _HKWorkoutDistanceTypeForActivityType();
  v3 = [*(a1 + 32) builder];
  v7 = [v3 statisticsForType:v8[0]];
  *&v1 = MEMORY[0x277D82BD8](v3).n128_u64[0];
  v6 = [v7 endDate];
  [*(*(a1 + 32) + 88) elapsedTimeAtDate:v6];
  v5 = v2;
  [*(*(a1 + 32) + 400) updateDistance:v6 distanceEndDate:*(a1 + 40)];
  [*(a1 + 32) _updateSplitsWithStatistics:v7 duration:v5];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(v8, 0);
}

- (void)_updateEnergyBurned:(id)burned statistics:(id)statistics
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, burned);
  v15 = 0;
  objc_storeStrong(&v15, statistics);
  v11 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v12 = v11;
  dispatch_assert_queue_V2(v12);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    sumQuantity = [v15 sumQuantity];
    kilocalorieUnit = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    [sumQuantity doubleValueForUnit:?];
    v9 = v5;
    MEMORY[0x277D82BD8](kilocalorieUnit);
    MEMORY[0x277D82BD8](sumQuantity);
    v14 = v9;
    _HKInitializeLogging();
    v13 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_0(v18, location[0], v14);
      _os_log_impl(&dword_20AEA4000, v13, OS_LOG_TYPE_DEFAULT, "Updated %@ calories to %f", v18, 0x16u);
    }

    objc_storeStrong(&v13, 0);
  }

  energyBurnAccumulator = [(NLSessionActivity *)selfCopy energyBurnAccumulator];
  [(NLSessionActivityEnergyBurnAccumulator *)energyBurnAccumulator updateCaloriesWithStatistics:v15];
  MEMORY[0x277D82BD8](energyBurnAccumulator);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateStepCountWithStatistics:(id)statistics duration:(double)duration quantityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  durationCopy = duration;
  v7 = 0;
  objc_storeStrong(&v7, type);
  [(NLSessionActivityPedometerCadenceAccumulator *)selfCopy->_pedometerCadenceAccumulator updateWithStatistics:location[0] duration:durationCopy];
  [(NLSessionActivity *)selfCopy _updateIntervalCadenceWithQuantityType:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateHeartRateWithStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  if (!selfCopy->_didCollectFirstHeartRateSample)
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] updateHeartRateWithStatistics didCollectFirstHKHeartRateSample", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    v4 = +[WOCoreWorkoutSignposter shared];
    [(WOCoreWorkoutSignposter *)v4 emitWithSignpost:7];
    MEMORY[0x277D82BD8](v4);
    selfCopy->_didCollectFirstHeartRateSample = 1;
  }

  [(NLSessionActivityHeartRateAccumulator *)selfCopy->_heartRateAccumulator updateWithStatistics:location[0], location];
  objc_storeStrong(v3, 0);
}

- (void)_updateFlightsClimbedWithStatistics:(id)statistics
{
  v13 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    sumQuantity = [location[0] sumQuantity];
    countUnit = [MEMORY[0x277CCDAB0] countUnit];
    [sumQuantity doubleValueForUnit:?];
    v7 = v3;
    MEMORY[0x277D82BD8](countUnit);
    MEMORY[0x277D82BD8](sumQuantity);
    v9 = v7;
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v12, v9);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "Updated flights climbed to %f", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  [(NLSessionActivityFlightsClimbedAccumulator *)selfCopy->_flightsClimbedAccumulator updateWithStatistics:location[0], location];
  objc_storeStrong(v4, 0);
}

- (void)_updateRunningPowerWithStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  averageQuantity = [location[0] averageQuantity];
  v3 = MEMORY[0x277D82BD8](averageQuantity).n128_u64[0];
  if (averageQuantity)
  {
    v12 = selfCopy;
    averageQuantity2 = [location[0] averageQuantity];
    wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
    [averageQuantity2 doubleValueForUnit:?];
    [(NLSessionActivity *)v12 _updateAveragePower:?];
    MEMORY[0x277D82BD8](wattUnit);
    v3 = MEMORY[0x277D82BD8](averageQuantity2).n128_u64[0];
  }

  mostRecentQuantity = [location[0] mostRecentQuantity];
  *&v4 = MEMORY[0x277D82BD8](mostRecentQuantity).n128_u64[0];
  if (mostRecentQuantity)
  {
    v7 = selfCopy;
    mostRecentQuantity2 = [location[0] mostRecentQuantity];
    wattUnit2 = [MEMORY[0x277CCDAB0] wattUnit];
    [mostRecentQuantity2 doubleValueForUnit:?];
    v6 = v5;
    endDate = [location[0] endDate];
    [(NLSessionActivity *)v7 _updateInstantaneousPower:v6 sampleDate:?];
    MEMORY[0x277D82BD8](endDate);
    MEMORY[0x277D82BD8](wattUnit2);
    MEMORY[0x277D82BD8](mostRecentQuantity2);
  }

  objc_storeStrong(location, 0);
}

- (void)_updateCyclingPowerWithStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  averageQuantity = [location[0] averageQuantity];
  v3 = MEMORY[0x277D82BD8](averageQuantity).n128_u64[0];
  if (averageQuantity)
  {
    v12 = selfCopy;
    averageQuantity2 = [location[0] averageQuantity];
    wattUnit = [MEMORY[0x277CCDAB0] wattUnit];
    [averageQuantity2 doubleValueForUnit:?];
    [(NLSessionActivity *)v12 _updateAveragePower:?];
    MEMORY[0x277D82BD8](wattUnit);
    v3 = MEMORY[0x277D82BD8](averageQuantity2).n128_u64[0];
  }

  mostRecentQuantity = [location[0] mostRecentQuantity];
  *&v4 = MEMORY[0x277D82BD8](mostRecentQuantity).n128_u64[0];
  if (mostRecentQuantity)
  {
    v7 = selfCopy;
    mostRecentQuantity2 = [location[0] mostRecentQuantity];
    wattUnit2 = [MEMORY[0x277CCDAB0] wattUnit];
    [mostRecentQuantity2 doubleValueForUnit:?];
    v6 = v5;
    endDate = [location[0] endDate];
    [(NLSessionActivity *)v7 _updateInstantaneousPower:v6 sampleDate:?];
    MEMORY[0x277D82BD8](endDate);
    MEMORY[0x277D82BD8](wattUnit2);
    MEMORY[0x277D82BD8](mostRecentQuantity2);
  }

  objc_storeStrong(location, 0);
}

- (void)_updateCyclingCadenceWithStatistics:(id)statistics duration:(double)duration quantityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  durationCopy = duration;
  v7 = 0;
  objc_storeStrong(&v7, type);
  [(NLSessionActivityCyclingCadenceAccumulator *)selfCopy->_cyclingCadenceAccumulator updateWithStatistics:location[0] duration:durationCopy];
  [(NLSessionActivity *)selfCopy _updateIntervalCadenceWithQuantityType:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateWaterTemperatureWithStatistics:(id)statistics duration:(double)duration quantityType:(id)type
{
  v20[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  durationCopy = duration;
  v14 = 0;
  objc_storeStrong(&v14, type);
  [(NLSessionActivityWaterTemperatureAccumulator *)selfCopy->_waterTemperatureAccumulator updateWithStatistics:location[0] duration:durationCopy];
  averageWaterTemperature = [(NLSessionActivityWaterTemperatureAccumulator *)selfCopy->_waterTemperatureAccumulator averageWaterTemperature];
  *&v5 = MEMORY[0x277D82BD8](averageWaterTemperature).n128_u64[0];
  if (averageWaterTemperature)
  {
    v7 = selfCopy;
    v19 = *MEMORY[0x277D0A780];
    averageWaterTemperature2 = [(NLSessionActivityWaterTemperatureAccumulator *)selfCopy->_waterTemperatureAccumulator averageWaterTemperature];
    v20[0] = averageWaterTemperature2;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    [NLSessionActivity insertOrUpdateMetadata:v7 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](averageWaterTemperature2);
    _HKInitializeLogging();
    v13 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      averageWaterTemperature3 = [(NLSessionActivityWaterTemperatureAccumulator *)selfCopy->_waterTemperatureAccumulator averageWaterTemperature];
      __os_log_helper_16_2_1_8_64(v18, averageWaterTemperature3);
      _os_log_impl(&dword_20AEA4000, v13, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Updated AverageWaterTemperature metadata to %@", v18, 0xCu);
      MEMORY[0x277D82BD8](averageWaterTemperature3);
    }

    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateIntervalCadenceWithQuantityType:(id)type
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  currentIntervalWorkoutActivity = [(NLSessionActivity *)selfCopy currentIntervalWorkoutActivity];
  if (currentIntervalWorkoutActivity)
  {
    v16 = [currentIntervalWorkoutActivity statisticsForType:location[0]];
    endDate = [v16 endDate];
    startDate = [v16 startDate];
    v11 = [startDate compare:endDate];
    MEMORY[0x277D82BD8](startDate);
    if (v11 == 1)
    {
      _HKInitializeLogging();
      v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v13 = 16;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        log = v14;
        type = v13;
        __os_log_helper_16_0_0(v12);
        _os_log_error_impl(&dword_20AEA4000, log, type, "Received a statistics sample that moves backwards in time!", v12, 2u);
      }

      objc_storeStrong(&v14, 0);
    }

    else
    {
      v4 = objc_opt_class();
      startDate2 = [currentIntervalWorkoutActivity startDate];
      workoutEvents = [(HKLiveWorkoutBuilder *)selfCopy->_builder workoutEvents];
      [v4 durationBetweenStartDate:startDate2 endDate:endDate workoutEvents:?];
      v7 = v3;
      MEMORY[0x277D82BD8](workoutEvents);
      MEMORY[0x277D82BD8](startDate2);
      [(NLSessionActivityIntervalCadenceAccumulator *)selfCopy->_intervalCadenceAccumulator updateWithStatistics:v16 duration:v7];
    }

    objc_storeStrong(&endDate, 0);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&currentIntervalWorkoutActivity, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateCurrentSpeedWithStatistics:(id)statistics duration:(double)duration
{
  v32 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  durationCopy = duration;
  v20 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v21 = v20;
  dispatch_assert_queue_V2(v21);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v25 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v24 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      quantityType = [location[0] quantityType];
      mostRecentQuantity = [location[0] mostRecentQuantity];
      v16 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [mostRecentQuantity doubleValueForUnit:?];
      __os_log_helper_16_2_2_8_64_8_0(v31, quantityType, v5);
      _os_log_impl(&dword_20AEA4000, v25, v24, "[Speed] Received a sample based speed of %@ to %f meters/second", v31, 0x16u);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](mostRecentQuantity);
      MEMORY[0x277D82BD8](quantityType);
    }

    objc_storeStrong(&v25, 0);
  }

  [(NLSessionActivityNonMachinePaceAccumulator *)selfCopy->_nonMachinePaceAccumulator updateCurrentSpeedWithStatistics:location[0] duration:durationCopy];
  quantityType2 = [location[0] quantityType];
  v13 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
  v15 = [quantityType2 isEqual:?];
  MEMORY[0x277D82BD8](v13);
  *&v6 = MEMORY[0x277D82BD8](quantityType2).n128_u64[0];
  if (v15)
  {
    [(NLSessionActivityNonMachinePaceAccumulator *)selfCopy->_nonMachinePaceAccumulator averagePaceInMetersPerSecond];
    v23 = v7;
    if (v7 > 2.22044605e-16)
    {
      v9 = MEMORY[0x277CCD7E8];
      v10 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      v22 = [v9 quantityWithUnit:v23 doubleValue:?];
      *&v8 = MEMORY[0x277D82BD8](v10).n128_u64[0];
      v11 = selfCopy;
      v29 = *MEMORY[0x277CCE170];
      v30 = v22;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:{1, v8}];
      [NLSessionActivity insertOrUpdateMetadata:v11 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
      MEMORY[0x277D82BD8](v12);
      objc_storeStrong(&v22, 0);
    }
  }

  objc_storeStrong(location, 0);
}

- (void)_updateStrideLengthWithStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  [(NLStrideLengthAccumulator *)selfCopy->_strideLengthAccumulator updateWithStatistics:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateVerticalOscillationWithStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  [(NLVerticalOscillationAccumulator *)selfCopy->_verticalOscillationAccumulator updateWithStatistics:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateGroundContactTimeWithStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  [(NLGroundContactTimeAccumulator *)selfCopy->_groundContactTimeAccumulator updateWithStatistics:location[0]];
  objc_storeStrong(location, 0);
}

- (void)didUpdateMinimumAltitude:(id)altitude
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, altitude);
  objc_storeStrong(location, 0);
}

- (void)didUpdateMaximumAltitude:(id)altitude
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, altitude);
  objc_storeStrong(location, 0);
}

- (void)endCurrentSegment
{
  selfCopy = self;
  v9[1] = a2;
  segmentAccumulator = [(NLSessionActivity *)self segmentAccumulator];
  [(NLSessionActivity *)selfCopy duration];
  [(WOSegmentAccumulator *)segmentAccumulator endCurrentSegmentWithCurrentElapsedTime:?];
  segmentAccumulator2 = [(NLSessionActivity *)selfCopy segmentAccumulator];
  completedSegments = [(WOSegmentAccumulator *)segmentAccumulator2 completedSegments];
  v9[0] = [(NSArray *)completedSegments lastObject];
  MEMORY[0x277D82BD8](completedSegments);
  *&v2 = MEMORY[0x277D82BD8](segmentAccumulator2).n128_u64[0];
  v6 = selfCopy;
  segmentEndDate = [v9[0] segmentEndDate];
  metadataFromSegmentMarker = [v9[0] metadataFromSegmentMarker];
  [(NLSessionActivity *)v6 registerMarkerEventWithDate:segmentEndDate metadata:?];
  MEMORY[0x277D82BD8](metadataFromSegmentMarker);
  MEMORY[0x277D82BD8](segmentEndDate);
  objc_storeStrong(v9, 0);
}

- (void)_segmentMarkerEventReceived:(id)received
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, received);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __49__NLSessionActivity__segmentMarkerEventReceived___block_invoke;
  v10 = &unk_277D88998;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __49__NLSessionActivity__segmentMarkerEventReceived___block_invoke(uint64_t a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v3 = [*(a1 + 32) metadata];
  v2 = [*(a1 + 32) dateInterval];
  v1 = [v2 endDate];
  v12[0] = [NLSessionActivitySegmentMarker markerFromMetadata:v3 segmentEndDate:?];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  v5 = *(a1 + 40);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __49__NLSessionActivity__segmentMarkerEventReceived___block_invoke_2;
  v9 = &unk_277D88B48;
  v10 = MEMORY[0x277D82BE0](*(a1 + 40));
  v11 = MEMORY[0x277D82BE0](v12[0]);
  [v5 _notifyDataObserversWithBlock:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v12, 0);
}

void __49__NLSessionActivity__segmentMarkerEventReceived___block_invoke_2(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [a1[4] dataProvider];
  [v3 dataProvider:? didReceiveSegmentMarker:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)weatherDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  currentTemperature = [location[0] currentTemperature];
  [v18 setObject:? forKey:?];
  *&v3 = MEMORY[0x277D82BD8](currentTemperature).n128_u64[0];
  currentHumidity = [location[0] currentHumidity];
  [v18 setObject:? forKey:?];
  *&v4 = MEMORY[0x277D82BD8](currentHumidity).n128_u64[0];
  currentAirQualityIndex = [location[0] currentAirQualityIndex];
  v5 = MEMORY[0x277D82BD8](currentAirQualityIndex).n128_u64[0];
  if (currentAirQualityIndex)
  {
    currentAirQualityIndex2 = [location[0] currentAirQualityIndex];
    [v18 setObject:? forKey:?];
    v5 = MEMORY[0x277D82BD8](currentAirQualityIndex2).n128_u64[0];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "hkPrivateWeatherCondition", *&v5)}];
  [v18 setObject:? forKey:?];
  *&v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(location[0], "isDaytime", v6)}];
  [v18 setObject:? forKey:?];
  *&v7 = MEMORY[0x277D82BD8](v12).n128_u64[0];
  sourceName = [location[0] sourceName];
  v8 = MEMORY[0x277D82BD8](sourceName).n128_u64[0];
  if (sourceName)
  {
    sourceName2 = [location[0] sourceName];
    [v18 setObject:? forKey:?];
    v8 = MEMORY[0x277D82BD8](sourceName2).n128_u64[0];
  }

  [(NLSessionActivity *)selfCopy insertOrUpdateMetadata:v18 forceTopLevel:0, *&v8, &v18];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

- (void)locationDidUpdate:(id)update
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  location = [location[0] location];
  [location coordinate];
  v11 = v3;
  v12 = v4;
  MEMORY[0x277D82BD8](location);
  v7 = dictionary;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  [v7 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v8);
  v9 = dictionary;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  [v9 setObject:? forKey:?];
  *&v5 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  [(NLSessionActivity *)selfCopy insertOrUpdateMetadata:dictionary forceTopLevel:0, v5];
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(location, 0);
}

- (void)insertLocations:(id)locations completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locations);
  v9 = 0;
  objc_storeStrong(&v9, completion);
  builder = selfCopy->_builder;
  workoutRouteType = [MEMORY[0x277CCD920] workoutRouteType];
  v8 = [(HKLiveWorkoutBuilder *)builder seriesBuilderForType:?];
  *&v4 = MEMORY[0x277D82BD8](workoutRouteType).n128_u64[0];
  [v8 insertRouteData:location[0] completion:{v9, v4}];
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setLocationTypeToIndoor:(BOOL)indoor
{
  selfCopy = self;
  v12 = a2;
  indoorCopy = indoor;
  if (!indoor || ([(FIUIWorkoutActivityType *)selfCopy->_activityType isIndoor]& 1) != 0)
  {
    if (!indoorCopy && ([(FIUIWorkoutActivityType *)selfCopy->_activityType isIndoor]& 1) != 0)
    {
      v4 = objc_alloc(MEMORY[0x277D0A810]);
      identifier = [(FIUIWorkoutActivityType *)selfCopy->_activityType identifier];
      metadata = [(FIUIWorkoutActivityType *)selfCopy->_activityType metadata];
      v9 = [v4 initWithActivityTypeIdentifier:identifier isIndoor:0 metadata:metadata auxiliaryTypeIdentifier:{-[FIUIWorkoutActivityType auxiliaryTypeIdentifier](selfCopy->_activityType, "auxiliaryTypeIdentifier")}];
      MEMORY[0x277D82BD8](metadata);
      objc_storeStrong(&selfCopy->_activityType, v9);
      objc_storeStrong(&v9, 0);
    }
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D0A810]);
    identifier2 = [(FIUIWorkoutActivityType *)selfCopy->_activityType identifier];
    metadata2 = [(FIUIWorkoutActivityType *)selfCopy->_activityType metadata];
    v10 = [v7 initWithActivityTypeIdentifier:identifier2 isIndoor:1 metadata:metadata2 auxiliaryTypeIdentifier:{-[FIUIWorkoutActivityType auxiliaryTypeIdentifier](selfCopy->_activityType, "auxiliaryTypeIdentifier")}];
    MEMORY[0x277D82BD8](metadata2);
    objc_storeStrong(&selfCopy->_activityType, v10);
    objc_storeStrong(&v10, 0);
  }
}

- (void)setSeymourElapsedTimeAccumulator:(id)accumulator
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, accumulator);
  objc_storeStrong(&selfCopy->_seymourElapsedTimeAccumulator, location[0]);
  objc_storeStrong(location, 0);
}

+ (id)_localizedTimeOfDayFormatStringWithDate:(id)date
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v19 = [currentCalendar components:32 fromDate:location[0]];
  hour = [v19 hour];
  v17 = 0;
  if (hour >= 11)
  {
    if (hour >= 13)
    {
      if (hour < 17)
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v14 localizedStringForKey:@"ACTIVITY_TIME_OF_DAY_AFTERNOON_OBJ" value:&stru_28225A4E8 table:@"Localizable"];
        v8 = v17;
        v17 = v7;
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v14);
      }

      else
      {
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v13 localizedStringForKey:@"ACTIVITY_TIME_OF_DAY_EVENING_OBJ" value:&stru_28225A4E8 table:@"Localizable"];
        v10 = v17;
        v17 = v9;
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v13);
      }
    }

    else
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v15 localizedStringForKey:@"ACTIVITY_TIME_OF_DAY_LUNCH_OBJ" value:&stru_28225A4E8 table:@"Localizable"];
      v6 = v17;
      v17 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v15);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v16 localizedStringForKey:@"ACTIVITY_TIME_OF_DAY_MORNING_OBJ" value:&stru_28225A4E8 table:@"Localizable"];
    v4 = v17;
    v17 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v16);
  }

  v12 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&currentCalendar, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)_stateDescription
{
  v6[2] = self;
  v6[1] = a2;
  v3 = MEMORY[0x277CCACA8];
  v4 = NLSessionActivityStateDescription(self->_state);
  v6[0] = [v3 stringWithFormat:@"activityState: %@; workoutState: XX", v4];
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (void)_logStatistics
{
  v20 = *MEMORY[0x277D85DE8];
  v18[2] = self;
  v18[1] = a2;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v18[0] = [MEMORY[0x277CBEB38] dictionary];
    if ([v18[0] count])
    {
      v17 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v17 setDateFormat:@"yyyy-MM-dd-A"];
      v3 = NSHomeDirectory();
      v16 = [(NSString *)v3 stringByAppendingPathComponent:@"Library/Logs/Health"];
      *&v2 = MEMORY[0x277D82BD8](v3).n128_u64[0];
      v4 = MEMORY[0x277CCACA8];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      name = [currentDevice name];
      date = [MEMORY[0x277CBEAA8] date];
      v5 = [v17 stringFromDate:?];
      v15 = [v4 stringWithFormat:@"SessionStats-%@-%@.plist", name, v5];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](date);
      MEMORY[0x277D82BD8](name);
      v14 = [v16 stringByAppendingPathComponent:{v15, MEMORY[0x277D82BD8](currentDevice).n128_f64[0]}];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v12 = 0;
      v11 = 0;
      v9 = [defaultManager createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&v11];
      objc_storeStrong(&v12, v11);
      if ((v9 & 1) == 0)
      {
        _HKInitializeLogging();
        v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_64_8_64(v19, v16, v12);
          _os_log_error_impl(&dword_20AEA4000, v10, OS_LOG_TYPE_ERROR, "Failed to create %@: %@", v19, 0x16u);
        }

        objc_storeStrong(&v10, 0);
      }

      [v18[0] writeToFile:v14 atomically:1];
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&defaultManager, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(v18, 0);
  }
}

- (id)powerLogWorkoutDictionary
{
  selfCopy = self;
  v16[1] = a2;
  v16[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  topLevelActivityType = [(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration topLevelActivityType];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(topLevelActivityType, "effectiveTypeIdentifier")}];
  stringValue = [v8 stringValue];
  MEMORY[0x277D82BD8](v8);
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:_locationTypeForActivity(topLevelActivityType)];
  stringValue2 = [v9 stringValue];
  if ([(NLSessionActivity *)selfCopy experienceType]== 3)
  {
    v2 = @"NO";
  }

  else
  {
    v2 = @"YES";
  }

  v12 = MEMORY[0x277D82BE0](v2);
  localizedName = [topLevelActivityType localizedName];
  MEMORY[0x277D82BD8](localizedName);
  if (localizedName)
  {
    location = MEMORY[0x277D82BE0](@"0");
    if ([(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration isLowPowerMode])
    {
      if ([(WOCoreLiveWorkoutConfiguration *)selfCopy->_configuration isUltraMode])
      {
        objc_storeStrong(&location, @"2");
      }

      else
      {
        objc_storeStrong(&location, @"1");
      }
    }

    [v16[0] setObject:location forKey:@"power"];
    v6 = v16[0];
    uUIDString = [(NSUUID *)selfCopy->_UUID UUIDString];
    [v6 setObject:? forKey:?];
    *&v3 = MEMORY[0x277D82BD8](uUIDString).n128_u64[0];
    [v16[0] setObject:stringValue forKey:{@"activityType", v3}];
    [v16[0] setObject:stringValue2 forKey:@"locationType"];
    [v16[0] setObject:v12 forKey:@"isFitnessPlusWorkout"];
    objc_storeStrong(&location, 0);
  }

  v5 = MEMORY[0x277D82BE0](v16[0]);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&stringValue2, 0);
  objc_storeStrong(&stringValue, 0);
  objc_storeStrong(&topLevelActivityType, 0);
  objc_storeStrong(v16, 0);

  return v5;
}

- (void)_powerLogWorkoutStart
{
  selfCopy = self;
  v2[1] = a2;
  if (shouldPowerLogWorkoutStart())
  {
    v2[0] = [(NLSessionActivity *)selfCopy powerLogWorkoutDictionary];
    powerLogEvent(@"WorkoutDidStart", v2[0]);
    objc_storeStrong(v2, 0);
  }
}

- (void)_powerLogWorkoutStop
{
  selfCopy = self;
  v2[1] = a2;
  if (shouldPowerLogWorkoutStop())
  {
    v2[0] = [(NLSessionActivity *)selfCopy powerLogWorkoutDictionary];
    powerLogEvent(@"WorkoutDidStop", v2[0]);
    objc_storeStrong(v2, 0);
  }
}

- (void)workoutBuilderDidChangeSampleTypesAvailableForCollection:(id)collection
{
  v6 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, collection);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Builder workoutBuilderDidChangeSampleTypesAvailableForCollection %@", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutBuilder:(id)builder didCollectDataOfTypes:(id)types
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v17 = 0;
  objc_storeStrong(&v17, types);
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v20, location[0], v17);
    _os_log_impl(&dword_20AEA4000, v16, v15, "[SessionActivity] Builder %@ did collect data of types %@", v20, 0x16u);
  }

  objc_storeStrong(&v16, 0);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __58__NLSessionActivity_workoutBuilder_didCollectDataOfTypes___block_invoke;
  v12 = &unk_277D88998;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutBuilderDidCollectEvent:(id)event
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v6, location[0]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Builder did collect event. Builder: %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NLSessionActivityRollingPaceAccumulator *)selfCopy->_rollingPaceAccumulator workoutBuilderDidCollectEvent];
  [selfCopy->_heartRateZonesAccumulator workoutBuilderDidCollectEvent];
  [selfCopy->_powerZonesAccumulator workoutBuilderDidCollectEvent];
  objc_storeStrong(location, 0);
}

+ (double)durationBetweenStartDate:(id)date endDate:(id)endDate workoutEvents:(id)events
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v15 = 0;
  objc_storeStrong(&v15, endDate);
  v14 = 0;
  objc_storeStrong(&v14, events);
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v13 = 0;
  _HKEnumerateActiveWorkoutIntervalsStartingPaused();
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v6;
}

void __68__NLSessionActivity_durationBetweenStartDate_endDate_workoutEvents___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  [v6 timeIntervalSinceDate:location[0]];
  *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) + v3;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)enterAutomaticTransition
{
  v6 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v7 = v6;
  dispatch_assert_queue_V2(v7);
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  self->_inAutomaticTransition = 1;
  v4 = [MEMORY[0x277CBEB58] set];
  automaticTransitionEnqueuedTypes = self->_automaticTransitionEnqueuedTypes;
  self->_automaticTransitionEnqueuedTypes = v4;
  MEMORY[0x277D82BD8](automaticTransitionEnqueuedTypes);
}

- (void)cancelAutomaticTransition
{
  selfCopy = self;
  location[1] = a2;
  v5 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v6 = v5;
  dispatch_assert_queue_V2(v6);
  MEMORY[0x277D82BD8](v6);
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_20AEA4000, log, type, "[Multisport] Canceling automatic transition and processing pending type updates", v7, 2u);
  }

  objc_storeStrong(location, 0);
  selfCopy->_inAutomaticTransition = 0;
  [(NLSessionActivity *)selfCopy _updateWithCollectedTypes:selfCopy->_automaticTransitionEnqueuedTypes];
  objc_storeStrong(&selfCopy->_automaticTransitionEnqueuedTypes, 0);
}

- (void)_updateWithCollectedTypes:(id)types
{
  v51 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, types);
  v30 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v31 = v30;
  dispatch_assert_queue_V2(v31);
  *&v4 = MEMORY[0x277D82BD8](v31).n128_u64[0];
  if (selfCopy->_inAutomaticTransition)
  {
    [(NSMutableSet *)selfCopy->_automaticTransitionEnqueuedTypes unionSet:location[0], v4];
    v46 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    if ([location[0] containsObject:v46])
    {
      v5 = [MEMORY[0x277CBEB98] setWithObject:v46];
      v6 = location[0];
      location[0] = v5;
      MEMORY[0x277D82BD8](v6);
    }

    else
    {
      objc_storeStrong(location, 0);
    }

    objc_storeStrong(&v46, 0);
  }

  _HKInitializeLogging();
  v45 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v44 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v50, location[0]);
    _os_log_impl(&dword_20AEA4000, v45, v44, "[SessionActivity] Builder updated sample types: %@", v50, 0xCu);
  }

  objc_storeStrong(&v45, 0);
  if (!selfCopy->_didCollectFirstSample)
  {
    v29 = +[WOCoreWorkoutSignposter shared];
    [(WOCoreWorkoutSignposter *)v29 emitWithSignpost:6];
    MEMORY[0x277D82BD8](v29);
    selfCopy->_didCollectFirstSample = 1;
  }

  currentWorkoutActivity = [(NLSessionActivity *)selfCopy currentWorkoutActivity];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v28 = [obj countByEnumeratingWithState:__b objects:v49 count:16];
  if (v28)
  {
    v24 = *__b[2];
    v25 = 0;
    v26 = v28;
    while (1)
    {
      v23 = v25;
      if (*__b[2] != v24)
      {
        objc_enumerationMutation(obj);
      }

      v42 = *(__b[1] + 8 * v25);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_26:
      ++v25;
      if (v23 + 1 >= v26)
      {
        v25 = 0;
        v26 = [obj countByEnumeratingWithState:__b objects:v49 count:16];
        if (!v26)
        {
          goto LABEL_28;
        }
      }
    }

    v40 = MEMORY[0x277D82BE0](v42);
    v39 = 0;
    v38 = 0.0;
    if (currentWorkoutActivity)
    {
      v7 = [currentWorkoutActivity statisticsForType:v40];
      v8 = v39;
      v39 = v7;
      *&v9 = MEMORY[0x277D82BD8](v8).n128_u64[0];
      endDate = [v39 endDate];
      startDate = [v39 startDate];
      v22 = [startDate compare:endDate];
      MEMORY[0x277D82BD8](startDate);
      if (v22 == 1)
      {
        _HKInitializeLogging();
        oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        v35 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v19 = oslog;
          v20 = v35;
          __os_log_helper_16_0_0(v34);
          _os_log_error_impl(&dword_20AEA4000, v19, v20, "Received a statistics sample that moves backwards in time!", v34, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v33 = 1;
      }

      else
      {
        v16 = objc_opt_class();
        startDate2 = [currentWorkoutActivity startDate];
        v15 = endDate;
        workoutEvents = [(HKLiveWorkoutBuilder *)selfCopy->_builder workoutEvents];
        [v16 durationBetweenStartDate:startDate2 endDate:v15 workoutEvents:?];
        v38 = v10;
        MEMORY[0x277D82BD8](workoutEvents);
        MEMORY[0x277D82BD8](startDate2);
        v33 = 0;
      }

      objc_storeStrong(&endDate, 0);
      if (v33)
      {
LABEL_25:
        objc_storeStrong(&v39, 0);
        objc_storeStrong(&v40, 0);
        if (v33)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v11 = [(HKLiveWorkoutBuilder *)selfCopy->_builder statisticsForType:v40];
      v12 = v39;
      v39 = v11;
      *&v13 = MEMORY[0x277D82BD8](v12).n128_u64[0];
      endDate2 = [v39 endDate];
      [(HKLiveWorkoutBuilder *)selfCopy->_builder elapsedTimeAtDate:endDate2];
      v38 = v14;
      objc_storeStrong(&endDate2, 0);
    }

    [(NLSessionActivity *)selfCopy _updateWithQuantityType:v40 statistics:v39 duration:v38];
    v33 = 0;
    goto LABEL_25;
  }

LABEL_28:
  v33 = 0;
LABEL_29:
  MEMORY[0x277D82BD8](obj);
  if (!v33)
  {
    v33 = 0;
  }

  objc_storeStrong(&currentWorkoutActivity, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateWithQuantityType:(id)type statistics:(id)statistics duration:(double)duration
{
  v53 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, type);
  v49 = 0;
  objc_storeStrong(&v49, statistics);
  durationCopy = duration;
  v45 = _DistanceSampleTypes();
  v46 = [v45 containsObject:location[0]];
  *&v5 = MEMORY[0x277D82BD8](v45).n128_u64[0];
  if (v46)
  {
    [(NLSessionActivity *)selfCopy _updateTotalDistanceWithStatistics:v49 duration:durationCopy];
  }

  else
  {
    identifier = [location[0] identifier];
    v42 = [identifier isEqualToString:*MEMORY[0x277CCC918]];
    v6 = MEMORY[0x277D82BD8](identifier).n128_u64[0];
    if (v42 & 1) != 0 || (v39 = [location[0] identifier], v40 = objc_msgSend(v39, "isEqualToString:", *MEMORY[0x277CCC960]), v6 = MEMORY[0x277D82BD8](v39).n128_u64[0], (v40))
    {
      [(NLSessionActivity *)selfCopy _updateEnergyBurned:location[0] statistics:v49, *&v6];
    }

    else
    {
      identifier2 = [location[0] identifier];
      v38 = [identifier2 isEqualToString:*MEMORY[0x277CCCB90]];
      *&v7 = MEMORY[0x277D82BD8](identifier2).n128_u64[0];
      if (v38)
      {
        [(NLSessionActivity *)selfCopy _updateHeartRateWithStatistics:v49, v7];
      }

      else
      {
        identifier3 = [location[0] identifier];
        v36 = [identifier3 isEqualToString:*MEMORY[0x277CCCC70]];
        *&v8 = MEMORY[0x277D82BD8](identifier3).n128_u64[0];
        if (v36)
        {
          [(NLSessionActivity *)selfCopy _updateStepCountWithStatistics:v49 duration:location[0] quantityType:durationCopy];
        }

        else
        {
          identifier4 = [location[0] identifier];
          v34 = [identifier4 isEqualToString:*MEMORY[0x277CCCB70]];
          *&v9 = MEMORY[0x277D82BD8](identifier4).n128_u64[0];
          if (v34)
          {
            [(NLSessionActivity *)selfCopy _updateFlightsClimbedWithStatistics:v49, v9];
          }

          else
          {
            identifier5 = [location[0] identifier];
            v32 = [identifier5 isEqualToString:*MEMORY[0x277CCCC38]];
            *&v10 = MEMORY[0x277D82BD8](identifier5).n128_u64[0];
            if (v32)
            {
              [(NLSessionActivity *)selfCopy _updateRunningPowerWithStatistics:v49, v10];
            }

            else
            {
              identifier6 = [location[0] identifier];
              v30 = [identifier6 isEqualToString:*MEMORY[0x277CCC9C0]];
              *&v11 = MEMORY[0x277D82BD8](identifier6).n128_u64[0];
              if (v30)
              {
                [(NLSessionActivity *)selfCopy _updateCyclingPowerWithStatistics:v49, v11];
              }

              else
              {
                identifier7 = [location[0] identifier];
                v28 = [identifier7 isEqualToString:*MEMORY[0x277CCC9B0]];
                *&v12 = MEMORY[0x277D82BD8](identifier7).n128_u64[0];
                if (v28)
                {
                  [(NLSessionActivity *)selfCopy _updateCyclingCadenceWithStatistics:v49 duration:location[0] quantityType:durationCopy];
                }

                else
                {
                  identifier8 = [location[0] identifier];
                  v26 = [identifier8 isEqualToString:*MEMORY[0x277CCCCD0]];
                  *&v13 = MEMORY[0x277D82BD8](identifier8).n128_u64[0];
                  if (v26)
                  {
                    [(NLSessionActivity *)selfCopy _updateWaterTemperatureWithStatistics:v49 duration:location[0] quantityType:durationCopy];
                  }

                  else
                  {
                    identifier9 = [location[0] identifier];
                    v24 = [identifier9 isEqualToString:*MEMORY[0x277CCCC48]];
                    *&v14 = MEMORY[0x277D82BD8](identifier9).n128_u64[0];
                    if (v24)
                    {
                      [(NLSessionActivity *)selfCopy _updateStrideLengthWithStatistics:v49, v14];
                    }

                    else
                    {
                      identifier10 = [location[0] identifier];
                      v22 = [identifier10 isEqualToString:*MEMORY[0x277CCCC50]];
                      *&v15 = MEMORY[0x277D82BD8](identifier10).n128_u64[0];
                      if (v22)
                      {
                        [(NLSessionActivity *)selfCopy _updateVerticalOscillationWithStatistics:v49, v15];
                      }

                      else
                      {
                        identifier11 = [location[0] identifier];
                        v20 = [identifier11 isEqualToString:*MEMORY[0x277CCCC30]];
                        *&v16 = MEMORY[0x277D82BD8](identifier11).n128_u64[0];
                        if (v20)
                        {
                          [(NLSessionActivity *)selfCopy _updateGroundContactTimeWithStatistics:v49, v16];
                        }

                        else
                        {
                          v17 = _SpeedSampleTypes();
                          v18 = [v17 containsObject:location[0]];
                          MEMORY[0x277D82BD8](v17);
                          if (v18)
                          {
                            [(NLSessionActivity *)selfCopy _updateCurrentSpeedWithStatistics:v49 duration:durationCopy];
                          }

                          else
                          {
                            _HKInitializeLogging();
                            v47 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
                            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                            {
                              __os_log_helper_16_2_1_8_64(v52, location[0]);
                              _os_log_impl(&dword_20AEA4000, v47, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Unhandled sample type %@", v52, 0xCu);
                            }

                            objc_storeStrong(&v47, 0);
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

  objc_storeStrong(&v49, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutBuilder:(id)builder didBeginActivity:(id)activity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v15 = 0;
  objc_storeStrong(&v15, activity);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __53__NLSessionActivity_workoutBuilder_didBeginActivity___block_invoke;
  v12 = &unk_277D88998;
  v13 = MEMORY[0x277D82BE0](v15);
  v14 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __53__NLSessionActivity_workoutBuilder_didBeginActivity___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v14, *(a1 + 32));
    _os_log_impl(&dword_20AEA4000, oslog[0], type, "[multisport][intervals] Workout builder started new activity %@", v14, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  location = [*(*(a1 + 40) + 24) allObjects];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location);
  v6 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v6)
  {
    v2 = *__b[2];
    v3 = 0;
    v4 = v6;
    while (1)
    {
      v1 = v3;
      if (*__b[2] != v2)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v3);
      [v9 sessionActivity:*(a1 + 40) didBeginActivity:*(a1 + 32)];
      ++v3;
      if (v1 + 1 >= v4)
      {
        v3 = 0;
        v4 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }

  if ([*(*(a1 + 40) + 264) isMultiSport])
  {
    [*(a1 + 40) updateActivityTypeFromConfiguration:*(a1 + 32)];
  }

  objc_storeStrong(&location, 0);
}

- (void)_recoverIntoActivity:(id)activity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, activity);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __42__NLSessionActivity__recoverIntoActivity___block_invoke;
  v10 = &unk_277D88998;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](selfCopy);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __42__NLSessionActivity__recoverIntoActivity___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v30, *(a1 + 32));
    _os_log_impl(&dword_20AEA4000, oslog[0], type, "[multisport][recovery] Workout builder recovered into activity %@", v30, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v25 = [*(*(a1 + 40) + 24) allObjects];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v25);
  v15 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v12);
      [v24 sessionActivity:*(a1 + 40) didBeginActivity:*(a1 + 32)];
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  if ([*(*(a1 + 40) + 264) isMultiSport])
  {
    [*(a1 + 40) updateActivityTypeFromConfiguration:*(a1 + 32)];
    _HKInitializeLogging();
    v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v22;
      v9 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_20AEA4000, v8, v9, "[multisport][recovery] attempt to recover split events", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    location = [*(a1 + 40) currentWorkoutEvents];
    memset(v17, 0, sizeof(v17));
    v6 = MEMORY[0x277D82BE0](*(*(a1 + 40) + 176));
    v7 = [v6 countByEnumeratingWithState:v17 objects:v28 count:16];
    if (v7)
    {
      v3 = *v17[2];
      v4 = 0;
      v5 = v7;
      while (1)
      {
        v2 = v4;
        if (*v17[2] != v3)
        {
          objc_enumerationMutation(v6);
        }

        v18 = *(v17[1] + 8 * v4);
        [v18 recoverFrom:location];
        ++v4;
        if (v2 + 1 >= v5)
        {
          v4 = 0;
          v5 = [v6 countByEnumeratingWithState:v17 objects:v28 count:16];
          if (!v5)
          {
            break;
          }
        }
      }
    }

    v1 = [*(a1 + 40) splitsDisplayAccumulator];
    [v1 assignStartValues];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v25, 0);
}

- (void)workoutBuilder:(id)builder didEndActivity:(id)activity
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v15 = 0;
  objc_storeStrong(&v15, activity);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __51__NLSessionActivity_workoutBuilder_didEndActivity___block_invoke;
  v12 = &unk_277D88998;
  v13 = MEMORY[0x277D82BE0](selfCopy);
  v14 = MEMORY[0x277D82BE0](v15);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __51__NLSessionActivity_workoutBuilder_didEndActivity___block_invoke(uint64_t a1)
{
  v34 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  if ([*(*(a1 + 32) + 264) isMultiSport])
  {
    if (*(*(a1 + 32) + 62))
    {
      _HKInitializeLogging();
      location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
      {
        log = location[0];
        type = v29;
        __os_log_helper_16_0_0(v28);
        _os_log_impl(&dword_20AEA4000, log, type, "[multisport] Clearing out stored sample types from automatic transition.", v28, 2u);
      }

      objc_storeStrong(location, 0);
      *(*(a1 + 32) + 62) = 0;
      objc_storeStrong((*(a1 + 32) + 328), 0);
    }

    _HKInitializeLogging();
    v27 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v26 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v33, *(a1 + 40));
      _os_log_impl(&dword_20AEA4000, v27, v26, "[multisport] Builder just ended %@", v33, 0xCu);
    }

    objc_storeStrong(&v27, 0);
    if (*(*(a1 + 32) + 88))
    {
      v25 = [*(*(a1 + 32) + 88) workoutActivities];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](v25);
      v13 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
      if (v13)
      {
        v9 = *__b[2];
        v10 = 0;
        v11 = v13;
        while (1)
        {
          v8 = v10;
          if (*__b[2] != v9)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(__b[1] + 8 * v10);
          v6 = [v24 UUID];
          v5 = [*(a1 + 40) UUID];
          v7 = [v6 compare:?];
          MEMORY[0x277D82BD8](v5);
          *&v1 = MEMORY[0x277D82BD8](v6).n128_u64[0];
          if (!v7)
          {
            break;
          }

          ++v10;
          if (v8 + 1 >= v11)
          {
            v10 = 0;
            v11 = [obj countByEnumeratingWithState:__b objects:v32 count:{16, v1}];
            if (!v11)
            {
              goto LABEL_19;
            }
          }
        }

        _HKInitializeLogging();
        oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        v21 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v4 = [v24 UUID];
          __os_log_helper_16_2_1_8_64(v31, v4);
          _os_log_impl(&dword_20AEA4000, oslog, v21, "[multisport] Found statistics for our activity %@", v31, 0xCu);
          MEMORY[0x277D82BD8](v4);
        }

        objc_storeStrong(&oslog, 0);
        [*(a1 + 32) _stopActivityDependentAccumulatorsWithActivity:v24];
        v20 = 6;
      }

      else
      {
LABEL_19:
        v20 = 0;
      }

      MEMORY[0x277D82BD8](obj);
      objc_storeStrong(&v25, 0);
    }

    else
    {
      _HKInitializeLogging();
      v19 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v18 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v2 = v19;
        v3 = v18;
        __os_log_helper_16_0_0(v17);
        _os_log_impl(&dword_20AEA4000, v2, v3, "[multisport] Our _builder is already gone, this is a discarded workout.", v17, 2u);
      }

      objc_storeStrong(&v19, 0);
    }
  }
}

- (void)workoutRouteDataSourceDidUpdateElevation:(id)elevation
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, elevation);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v6, location[0]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity][Elevation] Updated elevation to %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NLSessionActivity *)selfCopy _updateElevationGain:location[0]];
  objc_storeStrong(location, 0);
}

- (void)workoutRouteDataSource:(id)source didUpdateAltitude:(id)altitude
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v12 = 0;
  objc_storeStrong(&v12, altitude);
  if (![(NLSessionActivityGroundElevationManager *)selfCopy->_groundElevationManager isGroundElevationAvailable])
  {
    if (selfCopy->_groundElevationSupported)
    {
      _HKInitializeLogging();
      v11 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v10 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v16, v12);
        _os_log_impl(&dword_20AEA4000, v11, v10, "[SessionActivity][Elevation] Updated altitude to %@", v16, 0xCu);
      }

      objc_storeStrong(&v11, 0);
      v5 = [WOElevationSample alloc];
      v6 = objc_opt_new();
      v9 = [WOElevationSample initWithDate:v5 value:"initWithDate:value:"];
      *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      [(NLSessionActivity *)selfCopy _updateElevation:v9, v4];
      objc_storeStrong(&v9, 0);
    }

    else
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v15, selfCopy->_activityType);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity][Elevation] Skipping altitude update. %@ does not support elevation", v15, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutRouteDataSourceDidUpdateRoute:(id)route
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, route);
  _HKInitializeLogging();
  v7 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity][Elevation] Route data source updated", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)groundElevationManagerDidFinishSetup
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v4 = a2;
  isGroundElevationAvailable = [(NLSessionActivityGroundElevationManager *)self->_groundElevationManager isGroundElevationAvailable];
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v6, isGroundElevationAvailable);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[GroundElevation] ground elevation manager did finish setup with groundElevationAvailable: %{BOOL}d", v6, 8u);
  }

  objc_storeStrong(&oslog, 0);
  if (isGroundElevationAvailable)
  {
    [(NLSessionActivity *)selfCopy addSessionStateObserver:selfCopy->_groundElevationManager];
    if (NLSessionActivityIsActive(selfCopy))
    {
      [(NLSessionActivityGroundElevationManager *)selfCopy->_groundElevationManager setActive:1];
    }
  }
}

- (void)groundElevationDidUpdate:(id)update
{
  v10 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, update);
  if (*(selfCopy + 60))
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v9, location[0]);
      _os_log_impl(&dword_20AEA4000, oslog, type, "[SessionActivity][Elevation] Updated ground elevation to %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [selfCopy _updateElevation:location[0]];
  }

  else
  {
    _HKInitializeLogging();
    v3 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, selfCopy[16]);
      _os_log_impl(&dword_20AEA4000, v3, OS_LOG_TYPE_DEFAULT, "[SessionActivity][Elevation] Skipping ground elevation update. %@ does not support elevation", v8, 0xCu);
    }

    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(location, 0);
}

- (void)gymKitMetricsDataSource:(id)source didReceiveMetrics:(id)metrics
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, source);
  v17 = 0;
  objc_storeStrong(&v17, metrics);
  memset(__b, 0, sizeof(__b));
  allKeys = [v17 allKeys];
  v13 = [allKeys countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(allKeys);
      }

      v16 = *(__b[1] + 8 * v9);
      integerValue = [v16 integerValue];
      v5 = selfCopy;
      v6 = [v17 objectForKeyedSubscript:v16];
      [(NLSessionActivity *)v5 _updateWorkoutMetric:integerValue withQuantity:?];
      *&v4 = MEMORY[0x277D82BD8](v6).n128_u64[0];
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [allKeys countByEnumeratingWithState:__b objects:v20 count:{16, v4}];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](allKeys);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateWorkoutMetric:(unint64_t)metric withQuantity:(id)quantity
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v20 = a2;
  metricCopy = metric;
  location = 0;
  objc_storeStrong(&location, quantity);
  _HKInitializeLogging();
  v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    log = v17;
    type = v16;
    v11 = _HKStringForWorkoutMetric();
    v15 = MEMORY[0x277D82BE0](v11);
    __os_log_helper_16_2_2_8_66_8_64(v22, v15, location);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] Updating metric %{public}@ with value %@", v22, 0x16u);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v17, 0);
  if (metricCopy)
  {
    if (metricCopy == 1)
    {
      [(NLSessionActivity *)selfCopy _updateElapsedTime:_CanonicalMetricValue(1, location)];
    }

    else if ((metricCopy - 2) > 1)
    {
      if ((metricCopy - 4) <= 1)
      {
        [(NLSessionActivity *)selfCopy _updateMachineDistance:_CanonicalMetricValue(metricCopy, location)];
      }

      else if ((metricCopy - 6) > 4)
      {
        if (metricCopy == 11)
        {
          [(NLSessionActivity *)selfCopy _updateInstantaneousPace:_CanonicalMetricValue(0xB, location)];
        }

        else if (metricCopy == 12)
        {
          [(NLSessionActivity *)selfCopy _updateAveragePace:_CanonicalMetricValue(0xC, location)];
        }

        else if ((metricCopy - 13) > 2)
        {
          if (metricCopy == 16)
          {
            v5 = selfCopy;
            v4 = _CanonicalMetricValue(0x10, location);
            date = [MEMORY[0x277CBEAA8] date];
            [(NLSessionActivity *)v5 _updateInstantaneousPower:v4 sampleDate:?];
            MEMORY[0x277D82BD8](date);
          }

          else if (metricCopy == 17)
          {
            [(NLSessionActivity *)selfCopy _updateAveragePower:_CanonicalMetricValue(0x11, location)];
          }
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v7 = v14;
      v8 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_20AEA4000, v7, v8, "[SessionActivity] Received metric type 0 which is an error", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&location, 0);
}

- (NLSessionActivityPaceAccumulator)paceAccumulator
{
  if ([(NLSessionActivity *)self isMachineWorkout])
  {
    v4 = MEMORY[0x277D82BE0](self->_machinePaceAccumulator);
  }

  else if ([(NLSessionActivityNonMachinePaceAccumulator *)self->_nonMachinePaceAccumulator isPaceAvailable])
  {
    v4 = MEMORY[0x277D82BE0](self->_nonMachinePaceAccumulator);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NLSessionActivityCadenceAccumulator)cadenceAccumulator
{
  if ([(FIUIWorkoutActivityType *)self->_activityType identifier]== 13)
  {
    v4 = MEMORY[0x277D82BE0](self->_cyclingCadenceAccumulator);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](self->_pedometerCadenceAccumulator);
  }

  return v4;
}

- (NLSessionActivityElapsedTimeAccumulator)elapsedTimeAccumulator
{
  if ([(NLSessionActivity *)self isMachineWorkout])
  {
    v4 = MEMORY[0x277D82BE0](self->_machineElapsedTimeAccumulator);
  }

  else if ([(NLSessionActivity *)self showVideoPlaybackCurrentTime])
  {
    v4 = MEMORY[0x277D82BE0](self->_seymourElapsedTimeAccumulator);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](self->_nonMachineElapsedTimeAccumulator);
  }

  return v4;
}

- (BOOL)_beforeBuilderActive
{
  v3 = 1;
  if ([(NLSessionActivity *)self state])
  {
    return [(NLSessionActivity *)self state]== 1;
  }

  return v3;
}

- (double)duration
{
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForDuration];
    return v2;
  }

  else
  {
    demoDataProvider = [(NLSessionActivity *)self demoDataProvider];
    *&v3 = MEMORY[0x277D82BD8](demoDataProvider).n128_u64[0];
    if (demoDataProvider)
    {
      demoDataProvider2 = [(NLSessionActivity *)self demoDataProvider];
      elapsedTimeProvider = [(NLWorkoutDemoDataProvider *)demoDataProvider2 elapsedTimeProvider];
      [(NLSessionActivityElapsedTimeProvider *)elapsedTimeProvider elapsedTime];
      v24 = v4;
      MEMORY[0x277D82BD8](elapsedTimeProvider);
      MEMORY[0x277D82BD8](demoDataProvider2);
    }

    else
    {
      v20 = 0;
      v18 = 0;
      v16 = 0;
      v12 = 0;
      if ([(NLSessionActivity *)self _beforeBuilderActive])
      {
        activityBeginDate = [(NLSessionActivity *)self activityBeginDate];
        v20 = 1;
        v12 = 0;
        if (activityBeginDate)
        {
          elapsedTimeProvider2 = [(NLSessionActivity *)self elapsedTimeProvider];
          v18 = 1;
          nonMachineElapsedTimeAccumulator = [(NLSessionActivity *)self nonMachineElapsedTimeAccumulator];
          v16 = 1;
          v12 = elapsedTimeProvider2 == nonMachineElapsedTimeAccumulator;
        }
      }

      if (v16)
      {
        MEMORY[0x277D82BD8](nonMachineElapsedTimeAccumulator);
      }

      if (v18)
      {
        MEMORY[0x277D82BD8](elapsedTimeProvider2);
      }

      if (v20)
      {
        MEMORY[0x277D82BD8](activityBeginDate);
      }

      if (v12)
      {
        date = [MEMORY[0x277CBEAA8] date];
        activityBeginDate2 = [(NLSessionActivity *)self activityBeginDate];
        [date timeIntervalSinceDate:?];
        v22 = v5;
        MEMORY[0x277D82BD8](activityBeginDate2);
        MEMORY[0x277D82BD8](date);
      }

      else
      {
        elapsedTimeProvider3 = [(NLSessionActivity *)self elapsedTimeProvider];
        effectivePresentationTime = [(NLSessionActivity *)self effectivePresentationTime];
        [(NLSessionActivityElapsedTimeProvider *)elapsedTimeProvider3 elapsedTimeAtPresentationTime:?];
        v22 = v6;
        MEMORY[0x277D82BD8](effectivePresentationTime);
        MEMORY[0x277D82BD8](elapsedTimeProvider3);
      }

      return v22;
    }
  }

  return v24;
}

- (double)activityDuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(NLSessionActivity *)self currentWorkoutActivity];
  if (location[0])
  {
    v5 = objc_opt_class();
    startDate = [location[0] startDate];
    date = [MEMORY[0x277CBEAA8] date];
    workoutEvents = [(HKLiveWorkoutBuilder *)selfCopy->_builder workoutEvents];
    [v5 durationBetweenStartDate:startDate endDate:date workoutEvents:?];
    v11 = v2;
    MEMORY[0x277D82BD8](workoutEvents);
    MEMORY[0x277D82BD8](date);
    MEMORY[0x277D82BD8](startDate);
  }

  else
  {
    [(NLSessionActivity *)selfCopy duration];
    v11 = v3;
  }

  objc_storeStrong(location, 0);
  return v11;
}

- (NLSessionActivityDistanceProvider)distanceProvider
{
  if ([(FIUIWorkoutActivityType *)self->_activityType identifier]== 46)
  {
    v7 = MEMORY[0x277D82BE0](self->_swimmingAccumulator);
  }

  else if ([(FIUIWorkoutActivityType *)self->_activityType isDownhillSnowSport])
  {
    v7 = MEMORY[0x277D82BE0](self->_downhillSnowSportsAccumulator);
  }

  else
  {
    isMachineWorkout = [(NLSessionActivity *)self isMachineWorkout];
    activityType = [(NLSessionActivity *)self activityType];
    v5 = _UseMachineDistance(isMachineWorkout, [(FIUIWorkoutActivityType *)activityType identifier]);
    MEMORY[0x277D82BD8](activityType);
    if (v5)
    {
      v7 = MEMORY[0x277D82BE0](self->_machineDistanceAccumulator);
    }

    else
    {
      v7 = MEMORY[0x277D82BE0](self->_distanceAccumulator);
    }
  }

  return v7;
}

- (NLSessionActivityHeartRateProvider)heartRateProvider
{
  if ([(NLSessionActivity *)self state]== 1)
  {
    v4 = MEMORY[0x277D82BE0](self->_heartRatePrecisionStartAccumulator);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](self->_heartRateAccumulator);
  }

  return v4;
}

- (NLSessionActivityPaceProvider)paceProvider
{
  if ([(FIUIWorkoutActivityType *)self->_activityType isDownhillSnowSport])
  {
    paceAccumulator = MEMORY[0x277D82BE0](self->_downhillSnowSportsAccumulator);
  }

  else
  {
    paceAccumulator = [(NLSessionActivity *)self paceAccumulator];
  }

  return paceAccumulator;
}

- (double)displaySplitDistanceValue
{
  splitProvider = [(NLSessionActivity *)self splitProvider];
  [(NLSessionActivitySplitProvider *)splitProvider definedSplitDistance];
  v5 = v2;
  MEMORY[0x277D82BD8](splitProvider);
  return v5;
}

- (void)evaluatePauseResumeForConnectedDevices
{
  deviceObserver = [(NLSessionActivity *)self deviceObserver];
  activityType = [(NLSessionActivity *)self activityType];
  v9 = [(WOSessionActivityDeviceObserver *)deviceObserver canResumeWorkoutWithActivityType:?];
  MEMORY[0x277D82BD8](activityType);
  *&v2 = MEMORY[0x277D82BD8](deviceObserver).n128_u64[0];
  if (v9)
  {
    state = [(NLSessionActivity *)self state];
    switch(state)
    {
      case 4uLL:
        goto LABEL_7;
      case 5uLL:
        date = [MEMORY[0x277CBEAA8] date];
        [NLSessionActivity _setPauseTracking:"_setPauseTracking:atDate:eventSource:" atDate:0 eventSource:?];
        MEMORY[0x277D82BD8](date);
        return;
      case 9uLL:
LABEL_7:
        [(FIUIStateMachine *)self->_stateMachine event:10];
        break;
    }
  }

  else
  {
    state2 = [(NLSessionActivity *)self state];
    switch(state2)
    {
      case 3uLL:
        goto LABEL_13;
      case 6uLL:
        date2 = [MEMORY[0x277CBEAA8] date];
        [NLSessionActivity _setPauseTracking:"_setPauseTracking:atDate:eventSource:" atDate:1 eventSource:?];
        MEMORY[0x277D82BD8](date2);
        return;
      case 8uLL:
LABEL_13:
        [(FIUIStateMachine *)self->_stateMachine event:11];
        break;
    }
  }
}

- (NLSessionActivityLifecycleDelegate)lifecycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lifecycleDelegate);

  return WeakRetained;
}

- (NLSessionActivitySavingDelegate)savingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_savingDelegate);

  return WeakRetained;
}

- (NLWorkoutSplitsDelegate)splitsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitsDelegate);

  return WeakRetained;
}

- (WOCustomSplitsDelegate)customSplitsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customSplitsDelegate);

  return WeakRetained;
}

@end