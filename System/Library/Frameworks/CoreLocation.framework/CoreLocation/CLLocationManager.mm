@interface CLLocationManager
+ (BOOL)_checkAndExerciseAuthorizationForBundle:(id)bundle error:(id *)error;
+ (BOOL)_checkAndExerciseAuthorizationForBundleID:(id)d error:(id *)error;
+ (BOOL)bundleSupported:(id)supported;
+ (BOOL)deferredLocationUpdatesAvailable;
+ (BOOL)headingAvailable;
+ (BOOL)isMonitoringAvailableForClass:(Class)regionClass;
+ (BOOL)isRangingAvailable;
+ (BOOL)isStatusBarIconEnabledForLocationEntityClass:(unint64_t)class;
+ (BOOL)mapCorrectionAvailable;
+ (BOOL)regionMonitoringAvailable;
+ (CLAuthorizationStatus)authorizationStatus;
+ (id)activeLocationClientsWithInfo;
+ (id)interestZoneDictionaryIdentifiedById:(id)id forLocationDictionary:(id)dictionary;
+ (id)interestZonesIdentifierListForLocationDictionary:(id)dictionary;
+ (id)metadataForHomekitAccessoryControlEventWithUUID:(id)d stateString:(id)string serviceUUID:(id)iD serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUUID:(id)uID source:(id)source roomUUID:(id)self0;
+ (id)metadataForHomekitActionSetEventWithUUID:(id)d name:(id)name type:(id)type clientName:(id)clientName source:(id)source homeName:(id)homeName;
+ (id)metadataForMicroLocationTruthTagEventWithTagUUID:(id)d;
+ (id)sharedManager;
+ (id)sharedQueue;
+ (id)userLocationClientsWithInfo;
+ (id)weakSharedInstance;
+ (int)_authorizationStatusForBundleIdentifier:(id)identifier bundlePath:(id)path;
+ (int)authorizationStatusForBundle:(id)bundle;
+ (uint64_t)updatePromptedLatitude:(uint64_t)latitude longitude:(uint64_t)longitude;
+ (unint64_t)activeLocationServiceTypesForLocationDictionary:(id)dictionary;
+ (unint64_t)entityClassesForLocationDictionary:(id)dictionary;
+ (void)_checkAndExerciseForPushClientWithBundleID:(id)d completionHandler:(id)handler;
+ (void)_checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)d orBundlePath:(id)path completionHandler:(id)handler;
+ (void)deleteInterestZoneWithId:(id)id registeredForBundle:(id)bundle error:(id *)error;
+ (void)dumpDiagnosticFilesWithHandler:(id)handler;
+ (void)getIncidentalUseMode:(int *)mode forBundle:(id)bundle;
+ (void)grantTemporaryAuthorizationUsingLocationButtonToClientWithAuditToken:(id *)token voiceInteractionEnabled:(BOOL)enabled;
+ (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)d orBundlePath:(id)path completionHandler:(id)handler;
+ (void)registerCircularInterestZoneWithId:(id)id latitue:(double)latitue longitude:(double)longitude radius:(double)radius serviceMaskOperator:(int)operator provenanceType:(int)type forBundle:(id)bundle error:(id *)self0;
+ (void)registerPhenolicInterestZoneWithId:(id)id phenolicLocation:(int)location serviceMaskOperator:(int)operator provenanceType:(int)type forBundle:(id)bundle error:(id *)error;
+ (void)setAuthorizationStatus:(BOOL)status forBundle:(id)bundle;
+ (void)setAuthorizationStatus:(int)status withCorrectiveCompensation:(int)compensation forInterestZoneWithId:(id)id registeredForBundle:(id)bundle;
+ (void)setAuthorizationStatusByType:(int)type forBundle:(id)bundle;
+ (void)setAuthorizationStatusByType:(int)type withCorrectiveCompensation:(int)compensation forBundle:(id)bundle;
+ (void)setBackgroundIndicatorEnabled:(BOOL)enabled forBundle:(id)bundle;
+ (void)setBackgroundIndicatorEnabled:(BOOL)enabled forLocationDictionary:(id)dictionary;
+ (void)setDefaultEffectiveBundle:(id)bundle;
+ (void)setEntityAuthorization:(unint64_t)authorization withCorrectiveCompensation:(BOOL)compensation forLocationDictionary:(id)dictionary;
+ (void)setEntityAuthorization:(unint64_t)authorization withCorrectiveCompensationType:(int)type forLocationDictionary:(id)dictionary;
+ (void)setEntityAuthorized:(BOOL)authorized forLocationDictionary:(id)dictionary;
+ (void)setIncidentalUseMode:(int)mode forBundle:(id)bundle;
+ (void)setLocationButtonUseMode:(int)mode forBundle:(id)bundle;
+ (void)setRelevance:(BOOL)relevance forInterestZoneWithId:(id)id registeredForBundle:(id)bundle error:(id *)error;
+ (void)setStatusBarIconEnabled:(BOOL)enabled forLocationEntityClass:(unint64_t)class;
+ (void)setTemporaryAuthorizationGranted:(BOOL)granted forBundle:(id)bundle;
- (BOOL)_isFusionInfoEnabled;
- (BOOL)_isGroundAltitudeEnabled;
- (BOOL)_limitsPrecision;
- (BOOL)allowsAlteredAccessoryLocations;
- (BOOL)allowsBackgroundLocationUpdates;
- (BOOL)headingAvailable;
- (BOOL)isAuthorizedForPreciseLocation;
- (BOOL)isAuthorizedForWidgetUpdates;
- (BOOL)isDynamicAccuracyReductionEnabled;
- (BOOL)isLocationServicesPreferencesDialogEnabled;
- (BOOL)isMatchInfoEnabled;
- (BOOL)isTrackRunInfoEnabled;
- (BOOL)locationServicesApproved;
- (BOOL)locationServicesAvailable;
- (BOOL)locationServicesEnabled;
- (BOOL)pausesLocationUpdatesAutomatically;
- (BOOL)privateMode;
- (BOOL)showsBackgroundLocationIndicator;
- (BOOL)supportInfo;
- (CLAccuracyAuthorization)accuracyAuthorization;
- (CLActivityType)activityType;
- (CLAuthorizationStatus)authorizationStatus;
- (CLDeviceOrientation)headingOrientation;
- (CLHeading)heading;
- (CLLocation)location;
- (CLLocationAccuracy)desiredAccuracy;
- (CLLocationDegrees)headingFilter;
- (CLLocationDistance)distanceFilter;
- (CLLocationDistance)maximumRegionMonitoringDistance;
- (CLLocationManager)initWithEffectiveBundle:(id)bundle;
- (CLLocationManager)initWithEffectiveBundle:(id)bundle delegate:(id)delegate onQueue:(id)queue;
- (CLLocationManager)initWithEffectiveBundle:(id)bundle limitingBundleIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue;
- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)identifier;
- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)identifier bundlePath:(id)path websiteIdentifier:(id)websiteIdentifier delegate:(id)delegate silo:(id)silo;
- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue;
- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)identifier websiteIdentifier:(id)websiteIdentifier;
- (CLLocationManager)initWithEffectiveBundlePath:(id)path;
- (CLLocationManager)initWithEffectiveBundlePath:(id)path delegate:(id)delegate onQueue:(id)queue;
- (CLLocationManager)initWithEffectiveBundlePath:(id)path limitingBundleIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue;
- (CLLocationManager)initWithWebsiteIdentifier:(id)identifier;
- (CLLocationManager)initWithWebsiteIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue;
- (NSSet)monitoredRegions;
- (NSSet)rangedBeaconConstraints;
- (NSSet)rangedRegions;
- (NSString)processName;
- (NSString)purpose;
- (__CLClient)internalClient;
- (double)expectedGpsUpdateInterval;
- (id)_groundAltitudeAtLocation:(id)location;
- (id)_initWithDelegate:(id)delegate onQueue:(id)queue;
- (id)_startPlaceInferencesCommonLogic:(unint64_t)logic handler:(id)handler;
- (id)_zAxisStatistics;
- (id)appsUsingLocationWithDetails;
- (id)backgroundActivitySession;
- (id)delegate;
- (id)getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation:(id)information shouldForceRecording:(BOOL)recording handler:(id)handler;
- (id)initOnQueue:(id)queue;
- (id)privilegedServiceSession;
- (id)serviceSession;
- (id)technologiesInUse;
- (void)_fetchContinuousPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler;
- (void)_fetchEstimatedLocationAtDate:(id)date handler:(id)handler;
- (void)_fetchPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler;
- (void)_requestTemporaryFullAccuracyWithUsageDescription:(id)description completion:(id)completion;
- (void)_requestVisitState;
- (void)_setFusionInfoEnabled:(BOOL)enabled;
- (void)_setGroundAltitudeEnabled:(BOOL)enabled;
- (void)_startLeechingVisits;
- (void)_startMonitoringSignificantLocationChangesOfDistance:(double)distance withPowerBudget:(int)budget;
- (void)_stopFetchingContinuousPlaceInferences;
- (void)_updateARSessionState:(unint64_t)state;
- (void)_updateVIOEstimation:(id)estimation;
- (void)_updateVLLocalizationResult:(id)result;
- (void)addIdentifiableClient:(id)client;
- (void)allowDeferredLocationUpdatesUntilTraveled:(CLLocationDistance)distance timeout:(NSTimeInterval)timeout;
- (void)callPlaceInferenceHandlerWithResult:(id)result error:(id)error;
- (void)changeFencesStateMatchingHandoffTags:(id)tags forDeviceID:(id)d completion:(id)completion;
- (void)dealloc;
- (void)disallowDeferredLocationUpdates;
- (void)dismissHeadingCalibrationDisplay;
- (void)donateMicroLocationTruthTagWithTagUUID:(id)d correspondingToTriggerUUID:(id)iD handler:(id)handler;
- (void)donateMicroLocationTruthTagWithTagUUID:(id)d forRecordingEventsBetweenDate:(id)date andDate:(id)andDate handler:(id)handler;
- (void)endTranscriptSessionWithCompletion:(id)completion;
- (void)exportMicroLocationDataForMigrationWithCompletion:(id)completion;
- (void)exportMicroLocationDatabaseTablesWithCompletion:(id)completion;
- (void)fetchTranscriptLocationsWithRadius:(double)radius sampleCount:(int)count center:(CLLocationCoordinate2D)center completionHandler:(id)handler;
- (void)isConsideredInRemoteAreaWithCompletion:(id)completion;
- (void)markAsHavingReceivedLocation;
- (void)onClientEvent:(int)event supportInfo:(id)info;
- (void)onClientEventAuthStatus:(id)status;
- (void)onClientEventAutopauseStatus:(id)status;
- (void)onClientEventBatch:(id)batch;
- (void)onClientEventError:(id)error;
- (void)onClientEventHeading:(id)heading;
- (void)onClientEventHeadingCalibration:(id)calibration;
- (void)onClientEventInterrupted:(id)interrupted;
- (void)onClientEventLocation:(id)location forceMapMatching:(BOOL)matching type:(id)type;
- (void)onClientEventLocationUnavailable:(id)unavailable;
- (void)onClientEventNoLocationWatchdog:(id)watchdog;
- (void)onClientEventPlaceInferenceError:(id)error;
- (void)onClientEventPlaceInferenceResult:(id)result;
- (void)onClientEventRanging:(id)ranging;
- (void)onClientEventRangingError:(id)error;
- (void)onClientEventRegion:(id)region;
- (void)onClientEventRegionError:(id)error;
- (void)onClientEventRegionResponseDelayed:(id)delayed;
- (void)onClientEventRegionSetupCompleted:(id)completed;
- (void)onClientEventRegionState:(id)state;
- (void)onClientEventRegistration:(id)registration;
- (void)onClientEventSignificantLocationVisit:(id)visit;
- (void)onClientEventSignificantLocationVisitStateRequest:(id)request;
- (void)onClientEventVehicleHeading:(id)heading;
- (void)onClientEventVehicleSpeed:(id)speed;
- (void)onDidBecomeActive:(id)active;
- (void)onDidEnterBackground:(id)background;
- (void)onLocationRequestTimeout;
- (void)onWillEnterForeground:(id)foreground;
- (void)pauseLocationUpdates:(BOOL)updates;
- (void)purgeMicroLocationData;
- (void)purgeMicroLocationSemiSupervisedData;
- (void)registerAsLocationClient;
- (void)removeIdentifiableClient:(id)client;
- (void)requestAlwaysAuthorization;
- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)information withCompletion:(id)completion;
- (void)requestHistoricalLocationsWithPurposeKey:(NSString *)purposeKey sampleCount:(NSInteger)sampleCount completionHandler:(void *)handler;
- (void)requestLocation;
- (void)requestMicroLocationLearningWithCompletion:(id)completion;
- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)information shouldForceRecording:(BOOL)recording;
- (void)requestMicroLocationStaticSourcesStatisticsWithCompletion:(id)completion;
- (void)requestStateForRegion:(CLRegion *)region;
- (void)requestTemporaryFullAccuracyAuthorizationWithPurposeKey:(NSString *)purposeKey;
- (void)requestTemporaryFullAccuracyAuthorizationWithPurposeKey:(NSString *)purposeKey completion:(void *)completion;
- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)key;
- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)key completion:(id)completion;
- (void)requestWhenInUseAuthorization;
- (void)requestWhenInUseAuthorizationWithPrompt;
- (void)requestWhenInUseAuthorizationWithPurposeKey:(id)key;
- (void)resetApps;
- (void)resumeLocationUpdates;
- (void)setActivityType:(CLActivityType)activityType;
- (void)setAllowsAlteredAccessoryLocations:(BOOL)locations;
- (void)setAllowsBackgroundLocationUpdates:(BOOL)allowsBackgroundLocationUpdates;
- (void)setDelegate:(id)delegate;
- (void)setDesiredAccuracy:(CLLocationAccuracy)desiredAccuracy;
- (void)setDistanceFilter:(CLLocationDistance)distanceFilter;
- (void)setDynamicAccuracyReductionEnabled:(BOOL)enabled;
- (void)setHeadingFilter:(CLLocationDegrees)headingFilter;
- (void)setHeadingOrientation:(CLDeviceOrientation)headingOrientation;
- (void)setIsActuallyAWatchKitExtension:(BOOL)extension;
- (void)setLocationServicesPreferencesDialogEnabled:(BOOL)enabled;
- (void)setMatchInfoEnabled:(BOOL)enabled;
- (void)setPausesLocationUpdatesAutomatically:(BOOL)pausesLocationUpdatesAutomatically;
- (void)setPrivateMode:(BOOL)mode;
- (void)setPurpose:(NSString *)purpose;
- (void)setShowsBackgroundLocationIndicator:(BOOL)showsBackgroundLocationIndicator;
- (void)setSupportInfo:(BOOL)info;
- (void)setTrackRunInfoEnabled:(BOOL)enabled;
- (void)startMonitoringForRegion:(CLRegion *)region;
- (void)startMonitoringLocationPushesWithCompletion:(void *)completion;
- (void)startMonitoringSignificantLocationChanges;
- (void)startMonitoringVisits;
- (void)startRangingBeaconsInRegion:(CLBeaconRegion *)region;
- (void)startRangingBeaconsSatisfyingConstraint:(CLBeaconIdentityConstraint *)constraint;
- (void)startTranscriptSessionInstantlyWithCompletion:(id)completion;
- (void)startTranscriptSessionWithCompletion:(id)completion;
- (void)startUpdatingHeading;
- (void)startUpdatingLocation;
- (void)startUpdatingLocationWithPrompt;
- (void)startUpdatingVehicleHeading;
- (void)startUpdatingVehicleSpeed;
- (void)stopMonitoringForRegion:(CLRegion *)region;
- (void)stopMonitoringLocationPushes;
- (void)stopMonitoringSignificantLocationChanges;
- (void)stopMonitoringVisits;
- (void)stopRangingBeaconsInRegion:(CLBeaconRegion *)region;
- (void)stopRangingBeaconsSatisfyingConstraint:(CLBeaconIdentityConstraint *)constraint;
- (void)stopUpdatingHeading;
- (void)stopUpdatingLocation;
- (void)stopUpdatingVehicleHeading;
- (void)stopUpdatingVehicleSpeed;
- (void)willPromptForTranscriptSessionWithCompletion:(id)completion;
@end

@implementation CLLocationManager

- (CLAuthorizationStatus)authorizationStatus
{
  objc_sync_enter(self);
  internal = self->_internal;
  if (objc_msgSend_previousAuthorizationStatusValid(internal[4], v4, v5, v6))
  {
    v10 = objc_msgSend_previousAuthorizationStatus(internal[4], v7, v8, v9);
  }

  else
  {
    objc_msgSend_collectMetricForFunction_(self, v7, 0x80000, v9);
    v14 = kCLAuthorizationStatusNotDetermined;
    v11 = sub_19B87DBA8(*(internal[1] + 45), *(internal[1] + 46), &v14);
    v12 = v14;
    if ((v14 - 1) >= 4)
    {
      v12 = kCLAuthorizationStatusNotDetermined;
    }

    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = kCLAuthorizationStatusNotDetermined;
    }
  }

  objc_sync_exit(self);
  return v10;
}

- (CLLocationAccuracy)desiredAccuracy
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v9;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_desiredAccuracy(*(self->_internal + 4), v6, v7, v8);
  v11 = v10;
  os_activity_scope_leave(&v13);
  return v11;
}

- (CLActivityType)activityType
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v9;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_activityType(*(self->_internal + 4), v6, v7, v8);
  if (v10 <= 1)
  {
    v11 = CLActivityTypeOther;
  }

  else
  {
    v11 = v10;
  }

  os_activity_scope_leave(&v13);
  return v11;
}

- (void)startUpdatingLocation
{
  v59 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *v57 = 2082;
    *&v57[2] = "";
    *&v57[10] = 2082;
    *&v57[12] = "activity";
    *&v57[20] = 2114;
    *&v57[22] = v8;
    *&v57[30] = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 4, v7);
  internal = self->_internal;
  v13 = objc_msgSend_delegate(internal, v10, v11, v12);
  objc_sync_enter(self);
  objc_msgSend_performCourtesyPromptIfNeeded(internal, v14, v15, v16);
  if (objc_msgSend_requestingLocation(*(internal + 4), v17, v18, v19))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v23 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_DEFAULT, "Canceling requestLocation", buf, 2u);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v54[0] = 0;
      v28 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Canceling requestLocation", v54, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager startUpdatingLocation]", "CoreLocation: %s\n", v28);
      if (v28 != buf)
      {
        free(v28);
      }
    }

    objc_msgSend_cancelLocationRequest(internal, v25, v26, v27);
  }

  if ((objc_msgSend_updatingLocation(*(internal + 4), v20, v21, v22) & 1) == 0)
  {
    objc_msgSend_setUpdatingLocation_(*(internal + 4), v29, 1, v31);
    *(internal + 60) = 0xBFF0000000000000;
  }

  if (objc_msgSend_paused(*(internal + 4), v29, v30, v31))
  {
    objc_msgSend_setPaused_(*(internal + 4), v32, 0, v34);
    v35 = *(internal + 1);
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = sub_19B89E544;
    v53[3] = &unk_1E753D098;
    v53[4] = self;
    v53[5] = v13;
    v53[6] = internal;
    if (v35)
    {
      v36 = *(v35 + 232);
      *buf = MEMORY[0x1E69E9820];
      *v57 = 3221225472;
      *&v57[8] = sub_19B88071C;
      *&v57[16] = &unk_1E753CCE0;
      *&v57[24] = v53;
      objc_msgSend_async_(v36, v32, buf, v34);
    }
  }

  v37 = *(internal + 1);
  objc_msgSend_distanceFilter(*(internal + 4), v32, v33, v34);
  v39 = v38;
  objc_msgSend_desiredAccuracy(*(internal + 4), v40, v41, v42);
  v44 = v43;
  v48 = objc_msgSend_dynamicAccuracyReductionEnabled(*(internal + 4), v45, v46, v47);
  v52 = objc_msgSend_allowsAlteredAccessoryLocations(*(internal + 4), v49, v50, v51);
  CLClientStartLocationUpdatesWithDynamicAccuracyReductionAndAlteredAccessoryLocations_0(v37, v44, v48, v52, v39);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)requestLocation
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *v54 = 2082;
    *&v54[2] = "";
    *&v54[10] = 2082;
    *&v54[12] = "activity";
    *&v54[20] = 2114;
    *&v54[22] = v8;
    *&v54[30] = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 16, v7);
  internal = self->_internal;
  objc_msgSend_delegate(internal, v10, v11, v12);
  objc_sync_enter(self);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v46 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v13, v14, v15);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, self, @"CLLocationManager.m", 1350, @"Delegate must respond to locationManager:didUpdateLocations:");
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v48 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v16, v17, v18);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v48, v49, a2, self, @"CLLocationManager.m", 1352, @"Delegate must respond to locationManager:didFailWithError:");
  }

  if ((objc_msgSend_requestingLocation(*(internal + 4), v16, v17, v18) & 1) != 0 || (objc_msgSend_updatingLocation(*(internal + 4), v19, v20, v21) & 1) != 0 || objc_msgSend_batchingLocation(*(internal + 4), v22, v23, v24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v27 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "Ignoring requestLocation due to ongoing location.", buf, 2u);
    }

    v28 = sub_19B87DD40();
    if (*(v28 + 160) > 1 || *(v28 + 164) > 1 || *(v28 + 168) > 1 || *(v28 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v51[0] = 0;
      v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Ignoring requestLocation due to ongoing location.", v51, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager requestLocation]", "CoreLocation: %s\n", v29);
      if (v29 != buf)
      {
        free(v29);
      }
    }
  }

  else
  {
    objc_msgSend_setRequestingLocation_(*(internal + 4), v25, 1, v26);
    *(internal + 60) = 0xBFF0000000000000;
    v30 = *(internal + 1);
    v31 = *(internal + 27);
    v50[0] = MEMORY[0x1E69E9820];
    v50[1] = 3221225472;
    v50[2] = sub_19B884D98;
    v50[3] = &unk_1E753CC90;
    v50[4] = self;
    v35 = objc_msgSend_newTimer(*(v30 + 232), v32, v33, v34);
    *buf = MEMORY[0x1E69E9820];
    *v54 = 3221225472;
    *&v54[8] = sub_19B884DA0;
    *&v54[16] = &unk_1E753CCE0;
    *&v54[24] = v50;
    objc_msgSend_setHandler_(v35, v36, buf, v37);
    objc_msgSend_setNextFireDelay_(v35, v38, v39, v40, v31);
    *(internal + 26) = v35;
    v41 = *(internal + 1);
    objc_msgSend_desiredAccuracy(*(internal + 4), v42, v43, v44);
    CLClientStartLocationUpdatesWithDynamicAccuracyReductionAndAlteredAccessoryLocations_0(v41, v45, 0, 0, *MEMORY[0x1E6985C70]);
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)requestWhenInUseAuthorization
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 0x400000, v7);
  internal = self->_internal;
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v10 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Requesting when in use authorization}", buf, 0x12u);
  }

  CLClientRequestAuthorization(internal[1], 4);
  os_activity_scope_leave(&v11);
}

- (CLAccuracyAuthorization)accuracyAuthorization
{
  objc_sync_enter(self);
  internal = self->_internal;
  if (objc_msgSend_previousAuthorizationStatusValid(internal[4], v4, v5, v6))
  {
    v10 = objc_msgSend_limitsPrecision(internal[4], v7, v8, v9);
  }

  else
  {
    objc_msgSend_collectMetricForFunction_(self, v7, 0x100000, v9);
    v13 = 0;
    sub_19B9BE048(*(internal[1] + 45), *(internal[1] + 46), &v13);
    v10 = v13 == 0;
  }

  v11 = v10;
  objc_sync_exit(self);
  return v11;
}

- (void)stopUpdatingLocation
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v21.opaque[0] = 0;
  v21.opaque[1] = 0;
  os_activity_scope_enter(v4, &v21);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 2114;
    v29 = v8;
    v30 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 8, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  if (objc_msgSend_requestingLocation(*(internal + 4), v10, v11, v12))
  {
    objc_msgSend_cancelLocationRequest(internal, v13, v14, v15);
  }

  objc_msgSend_setUpdatingLocation_(*(internal + 4), v13, 0, v15);
  if (objc_msgSend_paused(*(internal + 4), v16, v17, v18))
  {
    objc_msgSend_setPaused_(*(internal + 4), v19, 0, v20);
  }

  CLClientStopLocationUpdates_0(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&v21);
}

- (void)resumeLocationUpdates
{
  internal = self->_internal;
  objc_sync_enter(self);
  if (objc_msgSend_paused(internal[4], v4, v5, v6))
  {
    objc_msgSend_startUpdatingLocation(self, v7, v8, v9);
  }

  objc_sync_exit(self);
}

- (BOOL)_limitsPrecision
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_limitsPrecision(*(self->_internal + 4), v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)startMonitoringSignificantLocationChanges
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 256, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_performCourtesyPromptIfNeeded(internal, v10, v11, v12);
  sub_19B880EA0(internal[1], 0, 0);
  objc_sync_exit(self);
  os_activity_scope_leave(&v13);
}

+ (BOOL)headingAvailable
{
  objc_msgSend_collectMetricForFunction_(self, a2, 2, v2);
  v3 = sub_19B87AB28();
  if (v3)
  {
    sub_19B87BBB4();
  }

  return v3 & 1;
}

- (void)startUpdatingHeading
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    *v36 = 0;
    *&v36[4] = 2082;
    *&v36[6] = "";
    v37 = 2082;
    v38 = "activity";
    v39 = 2114;
    v40 = v8;
    v41 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 64, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_performCourtesyPromptIfNeeded(internal, v10, v11, v12);
  objc_msgSend_setUpdatingHeading_(*(internal + 4), v13, 1, v14);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v15 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    objc_msgSend_headingFilter(*(internal + 4), v16, v17, v18);
    *buf = 134349056;
    *v36 = v19;
    _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "Start updating heading. HeadingFilter, %{public}.2f", buf, 0xCu);
  }

  v20 = sub_19B87DD40();
  if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v27 = qword_1ED519090;
    objc_msgSend_headingFilter(*(internal + 4), v24, v25, v26);
    v33 = 134349056;
    v34 = v28;
    v29 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v27, 0, "Start updating heading. HeadingFilter, %{public}.2f", &v33, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager startUpdatingHeading]", "CoreLocation: %s\n", v29);
    if (v29 != buf)
    {
      free(v29);
    }
  }

  v30 = *(internal + 1);
  objc_msgSend_headingFilter(*(internal + 4), v21, v22, v23);
  CLClientStartHeadingUpdates(v30, *(internal + 56), v31);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (CLLocation)location
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v34.opaque[0] = 0;
  v34.opaque[1] = 0;
  os_activity_scope_enter(v4, &v34);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v6;
    *&buf[38] = 2050;
    *&buf[40] = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v11 = *(internal + 44);
  v12 = *(internal + 52);
  v13 = v12 != 0.0 && v11 != 0.0;
  if (*(internal + 60) >= 0.0 && !v13)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68289538;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1026;
      *&buf[20] = v11 != 0.0;
      *&buf[24] = 1026;
      *&buf[26] = v12 != 0.0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#NullIsland Either the latitude or longitude was exactly 0! That's highly unlikely: refreshing property, latIsNonzero:%{public}hhd, lonIsNonzero:%{public}hhd}", buf, 0x1Eu);
    }
  }

  if (!objc_msgSend_updatingLocation(*(internal + 4), v8, v9, v10) || *(internal + 60) < 0.0 || v11 == 0.0 || v12 == 0.0)
  {
    v19 = objc_msgSend_dynamicAccuracyReductionEnabled(*(internal + 4), v15, v16, v17);
    v23 = objc_msgSend_allowsAlteredAccessoryLocations(*(internal + 4), v20, v21, v22);
    if (!CLClientRetrieveLocationWithDynamicAccuracyReductionAndAlteredAccessoryLocations(*(internal + 1), v19, v23, (internal + 40)))
    {
      v32 = 0;
      goto LABEL_30;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v24 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = 156;
      *&buf[24] = 2101;
      *&buf[26] = internal + 40;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:No valid, cached location. Fetched from daemon, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x22u);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289539;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      *&buf[18] = 1040;
      *&buf[20] = 156;
      *&buf[24] = 2101;
      *&buf[26] = internal + 40;
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:We have a valid, cached location. Fetching from internal state, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x22u);
    }
  }

  v25 = objc_alloc(MEMORY[0x1E6985C40]);
  v26 = *(internal + 152);
  v39 = *(internal + 136);
  v40 = v26;
  v41[0] = *(internal + 168);
  *(v41 + 12) = *(internal + 180);
  v27 = *(internal + 88);
  *&buf[32] = *(internal + 72);
  v36 = v27;
  v28 = *(internal + 120);
  v37 = *(internal + 104);
  v38 = v28;
  v29 = *(internal + 56);
  *buf = *(internal + 40);
  *&buf[16] = v29;
  v32 = objc_msgSend_initWithClientLocation_(v25, v30, buf, v31);
LABEL_30:
  objc_sync_exit(self);
  os_activity_scope_leave(&v34);
  return v32;
}

- (void)dealloc
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 2114;
    v29 = v9;
    v30 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  v11 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7, v8);
  objc_msgSend_removeObserver_(v11, v12, self, v13);
  objc_msgSend_cancelLocationRequest(internal, v14, v15, v16);
  objc_msgSend_invalidate(internal, v17, v18, v19);

  v20.receiver = self;
  v20.super_class = CLLocationManager;
  [(CLLocationManager *)&v20 dealloc];
  os_activity_scope_leave(&state);
}

- (void)startMonitoringVisits
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_performCourtesyPromptIfNeeded(internal, v8, v9, v10);
  sub_19B884C9C(internal[1], 0);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
}

- (void)onLocationRequestTimeout
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v38.opaque[0] = 0;
  v38.opaque[1] = 0;
  os_activity_scope_enter(v4, &v38);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v9;
    *&buf[38] = 2050;
    *&buf[40] = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  v11 = objc_msgSend_delegate(internal, v6, v7, v8);
  objc_sync_enter(self);
  if (objc_msgSend_requestingLocation(*(internal + 4), v12, v13, v14))
  {
    objc_msgSend_cancelLocationRequest(internal, v15, v16, v17);
    CLClientStopLocationUpdates_0(*(internal + 1));
    if (*(internal + 60) >= 0.0)
    {
      v23 = objc_alloc(MEMORY[0x1E6985C40]);
      v24 = internal + 40;
      v25 = *(internal + 152);
      v43 = *(internal + 136);
      v44 = v25;
      v45[0] = *(internal + 168);
      *(v45 + 12) = *(internal + 180);
      v26 = *(internal + 88);
      *&buf[32] = *(internal + 72);
      v40 = v26;
      v27 = *(internal + 120);
      v41 = *(internal + 104);
      v42 = v27;
      v28 = *(internal + 56);
      *buf = *(internal + 40);
      *&buf[16] = v28;
      v31 = objc_msgSend_initWithClientLocation_(v23, v29, buf, v30);
      v34 = objc_msgSend_arrayWithObject_(MEMORY[0x1E695DEC8], v32, v31, v33);
      entr_act_modify();
      v35 = NSStringFromSelector(sel_locationManager_didUpdateLocations_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v36 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290307;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = self;
        *&buf[28] = 2050;
        *&buf[30] = v11;
        *&buf[38] = 2114;
        *&buf[40] = v35;
        LOWORD(v40) = 1040;
        *(&v40 + 2) = 156;
        WORD3(v40) = 2101;
        *(&v40 + 1) = v24;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate - request timeout, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x40u);
      }

      objc_msgSend_locationManager_didUpdateLocations_(v11, v37, self, v34);
    }

    else
    {
      v18 = NSStringFromSelector(sel_locationManager_didFailWithError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v19 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = self;
        *&buf[28] = 2050;
        *&buf[30] = v11;
        *&buf[38] = 2114;
        *&buf[40] = v18;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate - request timeout, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", buf, 0x30u);
      }

      v21 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v20, @"kCLErrorDomain", 0, 0);
      objc_msgSend_locationManager_didFailWithError_(v11, v22, self, v21);
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v38);
}

- (NSSet)monitoredRegions
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v21.opaque[0] = 0;
  v21.opaque[1] = 0;
  os_activity_scope_enter(v4, &v21);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 2114;
    v29 = v8;
    v30 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 0x10000, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  v10 = internal[1];
  objc_sync_exit(self);
  v11 = sub_19B88540C(v10);
  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x1E695DFA8]);
    v15 = objc_msgSend_initWithArray_(v12, v13, v11, v14);

    if (!v15)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v16 = objc_alloc(MEMORY[0x1E695DFA8]);
  v15 = objc_msgSend_initWithCapacity_(v16, v17, 0, v18);
  if (v15)
  {
LABEL_9:
    v19 = v15;
  }

LABEL_10:
  os_activity_scope_leave(&v21);
  return v15;
}

- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)identifier bundlePath:(id)path websiteIdentifier:(id)websiteIdentifier delegate:(id)delegate silo:(id)silo
{
  v91 = *MEMORY[0x1E69E9840];
  v75.receiver = self;
  v75.super_class = CLLocationManager;
  v13 = [(CLLocationManager *)&v75 init];
  if (v13)
  {
    v14 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v14, &state);

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v16 = NSStringFromSelector(a2);
      v20 = objc_msgSend_UTF8String(path, v17, v18, v19);
      *buf = 68290306;
      v78 = 0;
      v79 = 2082;
      v80 = "";
      v81 = 2082;
      v82 = "activity";
      v83 = 2114;
      v84 = v16;
      v85 = 2050;
      v86 = v13;
      v87 = 2114;
      identifierCopy = identifier;
      v89 = 2082;
      v90 = v20;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, identifier:%{public, location:escape_only}@, bundlePath:%{public, location:escape_only}s}", buf, 0x44u);
    }

    if (!silo)
    {
      v21 = objc_alloc(MEMORY[0x1E69AD370]);
      silo = objc_msgSend_initWithCurrentRunLoopAndIdentifier_bePermissive_(v21, v22, @"CLLocationManager-runloop", 1);
    }

    v23 = [CLLocationManagerInternal alloc];
    v25 = objc_msgSend_initWithInfo_bundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(v23, v24, v13, identifier, path, websiteIdentifier, delegate, silo);
    v13->_internal = v25;
    v29 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v26, v27, v28);
    v32 = objc_msgSend_objectForInfoDictionaryKey_(v29, v30, @"NSExtension", v31);
    v35 = objc_msgSend_objectForKey_(v32, v33, @"NSExtensionPointIdentifier", v34);
    if (objc_msgSend_isEqualToString_(v35, v36, @"com.apple.widgetkit-extension", v37))
    {
      v41 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v38, v39, v40);
      if (sub_19B8B87AC(v41, v42, v43, v44))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v45 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_DEBUG, "Widget has NSWidgetWantsLocation key in its Info.plist", buf, 2u);
        }

        v46 = sub_19B87DD40();
        if (*(v46 + 160) > 1 || *(v46 + 164) > 1 || *(v46 + 168) > 1 || *(v46 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v76[0] = 0;
          v47 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "Widget has NSWidgetWantsLocation key in its Info.plist", v76, 2);
          sub_19B885924("Generic", 1, 0, 2, "void verifyWidgetKitExtension()", "CoreLocation: %s\n", v47);
          if (v47 != buf)
          {
            free(v47);
          }
        }
      }

      else
      {
        NSLog(&cfstr_ThisWidgetHasA.isa, @"NSWidgetWantsLocation");
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v48 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v78 = 0;
          v79 = 2082;
          v80 = "";
          _os_log_impl(&dword_19B873000, v48, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning widget is missing NSWidgetWantsLocation key in its Info.plist}", buf, 0x12u);
        }
      }
    }

    sub_19B87BBB4();
    v49 = sub_19B87BBFC();
    v50 = _CFExecutableLinkedOnOrAfter();
    if (v49)
    {
      v51 = 5;
    }

    else
    {
      v51 = 1;
    }

    if (v50)
    {
      v52 = v51;
    }

    else
    {
      v52 = 2;
    }

    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      v55 = v25[1];
      if (v55)
      {
        if (*(v55 + 16))
        {
          objc_msgSend_setAllowsBackgroundLocationUpdates_(v13, v53, 1, v54);
        }
      }
    }

    sub_19B87BDD0(v25[1]);
    if (sub_19B87BF68())
    {
      objc_msgSend_setPausesLocationUpdatesAutomatically_(v25, v56, v52, v57);
    }

    else
    {
      objc_msgSend_setPausesLocationUpdatesAutomatically_(v25, v56, 3, v57);
    }

    v61 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v58, v59, v60);
    objc_msgSend_addObserver_selector_name_object_(v61, v62, v13, sel_onDidBecomeActive_, @"UIApplicationDidBecomeActiveNotification", 0);
    v66 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v63, v64, v65);
    objc_msgSend_addObserver_selector_name_object_(v66, v67, v13, sel_onWillEnterForeground_, @"UIApplicationWillEnterForegroundNotification", 0);
    v71 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v68, v69, v70);
    objc_msgSend_addObserver_selector_name_object_(v71, v72, v13, sel_onDidEnterBackground_, @"UIApplicationDidEnterBackgroundNotification", 0);
    os_activity_scope_leave(&state);
  }

  return v13;
}

- (CLLocationManager)initWithWebsiteIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil websiteIdentifier", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v9[0] = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil websiteIdentifier", v9, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithWebsiteIdentifier:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, a2, 0, 0, identifier, 0, 0);
}

- (CLLocationManager)initWithWebsiteIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue
{
  identifierCopy = identifier;
  v29 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    goto LABEL_12;
  }

  p_info = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil websiteIdentifier", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (p_info[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v20[0] = 0;
      p_info = buf;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil websiteIdentifier", v20, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithWebsiteIdentifier:delegate:onQueue:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

LABEL_12:
    if (delegate && queue)
    {
      break;
    }

    identifierCopy = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    self = CLLocationManagerInternal.info;
    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v19 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    delegate = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_log_impl(&dword_19B873000, delegate, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 626, "[CLLocationManager initWithWebsiteIdentifier:delegate:onQueue:]");
LABEL_28:
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v13 = objc_alloc(MEMORY[0x1E69AD360]);
  v15 = objc_msgSend_initWithUnderlyingQueue_bePermissive_(v13, v14, queue, 1);
  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, v16, 0, 0, identifierCopy, delegate, v15);
}

- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)identifier websiteIdentifier:(id)websiteIdentifier
{
  v13 = *MEMORY[0x1E69E9840];
  if (!identifier || !websiteIdentifier)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil identifier", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v11[0] = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil identifier", v11, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundleIdentifier:websiteIdentifier:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, a2, identifier, 0, websiteIdentifier, 0, 0);
}

- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  if (!identifier)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil identifier", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v9[0] = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil identifier", v9, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundleIdentifier:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, a2, identifier, 0, 0, 0, 0);
}

- (CLLocationManager)initWithEffectiveBundleIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue
{
  identifierCopy = identifier;
  v29 = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    goto LABEL_12;
  }

  p_info = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil identifier", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (p_info[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v20[0] = 0;
      p_info = buf;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil identifier", v20, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundleIdentifier:delegate:onQueue:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

LABEL_12:
    if (delegate && queue)
    {
      break;
    }

    identifierCopy = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    self = CLLocationManagerInternal.info;
    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v19 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    delegate = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_log_impl(&dword_19B873000, delegate, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 653, "[CLLocationManager initWithEffectiveBundleIdentifier:delegate:onQueue:]");
LABEL_28:
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v13 = objc_alloc(MEMORY[0x1E69AD360]);
  v15 = objc_msgSend_initWithUnderlyingQueue_bePermissive_(v13, v14, queue, 1);
  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, v16, identifierCopy, 0, 0, delegate, v15);
}

- (CLLocationManager)initWithEffectiveBundlePath:(id)path
{
  v11 = *MEMORY[0x1E69E9840];
  if (!path)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v5 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil bundle path", buf, 2u);
    }

    v6 = sub_19B87DD40();
    if ((*(v6 + 160) & 0x80000000) == 0 || (*(v6 + 164) & 0x80000000) == 0 || (*(v6 + 168) & 0x80000000) == 0 || *(v6 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v9[0] = 0;
      v7 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil bundle path", v9, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundlePath:]", "CoreLocation: %s\n", v7);
      if (v7 != buf)
      {
        free(v7);
      }
    }
  }

  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, a2, 0, path, 0, 0, 0);
}

- (CLLocationManager)initWithEffectiveBundle:(id)bundle
{
  v5 = objc_msgSend_bundlePath(bundle, a2, bundle, v3);

  return MEMORY[0x1EEE66B58](self, sel_initWithEffectiveBundlePath_, v5, v6);
}

- (CLLocationManager)initWithEffectiveBundlePath:(id)path delegate:(id)delegate onQueue:(id)queue
{
  pathCopy = path;
  v29 = *MEMORY[0x1E69E9840];
  if (path)
  {
    goto LABEL_12;
  }

  p_info = CLLocationManagerInternal.info;
  if (qword_1ED519088 != -1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil bundle path", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (p_info[17] != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v20[0] = 0;
      p_info = buf;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil bundle path", v20, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundlePath:delegate:onQueue:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }

LABEL_12:
    if (delegate && queue)
    {
      break;
    }

    pathCopy = CLLocationManagerInternal.info;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    self = CLLocationManagerInternal.info;
    v18 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v18, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v19 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    delegate = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v22 = 0;
      v23 = 2082;
      v24 = "";
      v25 = 2082;
      v26 = "assert";
      v27 = 2081;
      v28 = "delegate && queue";
      _os_log_impl(&dword_19B873000, delegate, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 677, "[CLLocationManager initWithEffectiveBundlePath:delegate:onQueue:]");
LABEL_28:
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v13 = objc_alloc(MEMORY[0x1E69AD360]);
  v15 = objc_msgSend_initWithUnderlyingQueue_bePermissive_(v13, v14, queue, 1);
  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, v16, 0, pathCopy, 0, delegate, v15);
}

- (CLLocationManager)initWithEffectiveBundle:(id)bundle delegate:(id)delegate onQueue:(id)queue
{
  v7 = objc_msgSend_bundlePath(bundle, a2, bundle, delegate);

  return MEMORY[0x1EEE66B58](self, sel_initWithEffectiveBundlePath_delegate_onQueue_, v7, delegate);
}

- (CLLocationManager)initWithEffectiveBundlePath:(id)path limitingBundleIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue
{
  identifierCopy = identifier;
  pathCopy = path;
  v43 = *MEMORY[0x1E69E9840];
  if (!path)
  {
    p_info = CLLocationManagerInternal.info;
    if (qword_1ED519088 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

  if (objc_msgSend_containsObject_(&unk_1F0E8CC88, a2, path, identifier))
  {
    while (1)
    {
      if (identifierCopy)
      {
        if ((objc_msgSend_containsObject_(&unk_1F0E8CC88, v12, identifierCopy, v13) & 1) == 0)
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v22 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
          {
            *buf = 68289282;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v39 = 2114;
            v40 = identifierCopy;
            _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:initializing CLLocationManager with unsupported limiting identifier, identifier:%{public, location:escape_only}@}", buf, 0x1Cu);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }
          }

          v23 = qword_1ED519090;
          if (os_signpost_enabled(qword_1ED519090))
          {
            *buf = 68289282;
            v36 = 0;
            v37 = 2082;
            v38 = "";
            v39 = 2114;
            v40 = identifierCopy;
            v16 = "initializing CLLocationManager with unsupported limiting identifier";
            v17 = "{msg%{public}.0s:initializing CLLocationManager with unsupported limiting identifier, identifier:%{public, location:escape_only}@}";
            v18 = v23;
            goto LABEL_29;
          }

          return 0;
        }
      }

      else
      {
        p_info = CLLocationManagerInternal.info;
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v25 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v25, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil limiting identifier", buf, 2u);
        }

        v26 = sub_19B87DD40();
        if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v34[0] = 0;
          p_info = buf;
          v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil limiting identifier", v34, 2);
          sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundlePath:limitingBundleIdentifier:delegate:onQueue:]", "CoreLocation: %s\n", v27);
          if (v27 != buf)
          {
            free(v27);
          }
        }
      }

      if (delegate && queue)
      {
        v28 = objc_alloc(MEMORY[0x1E69AD360]);
        v30 = objc_msgSend_initWithUnderlyingQueue_bePermissive_(v28, v29, queue, 1);
        return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, v31, identifierCopy, pathCopy, 0, delegate, v30);
      }

      queue = CLLocationManagerInternal.info;
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v32 = qword_1ED519090;
      self = &off_19BA89000;
      delegate = "assert";
      pathCopy = "delegate && queue";
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289539;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2082;
        v40 = "assert";
        v41 = 2081;
        v42 = "delegate && queue";
        _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v33 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289539;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2082;
        v40 = "assert";
        v41 = 2081;
        v42 = "delegate && queue";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      identifierCopy = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
      {
        *buf = 68289539;
        v36 = 0;
        v37 = 2082;
        v38 = "";
        v39 = 2082;
        v40 = "assert";
        v41 = 2081;
        v42 = "delegate && queue";
        _os_log_impl(&dword_19B873000, identifierCopy, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      }

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 706, "[CLLocationManager initWithEffectiveBundlePath:limitingBundleIdentifier:delegate:onQueue:]");
LABEL_60:
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
LABEL_11:
      v19 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_FAULT, "initializing CLLocationManager with a nil bundle path", buf, 2u);
      }

      v20 = sub_19B87DD40();
      if ((*(v20 + 160) & 0x80000000) == 0 || (*(v20 + 164) & 0x80000000) == 0 || (*(v20 + 168) & 0x80000000) == 0 || *(v20 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (p_info[17] != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v34[0] = 0;
        p_info = buf;
        v21 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "initializing CLLocationManager with a nil bundle path", v34, 2);
        sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager initWithEffectiveBundlePath:limitingBundleIdentifier:delegate:onQueue:]", "CoreLocation: %s\n", v21);
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v14 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 68289282;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2114;
    v40 = pathCopy;
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:initializing CLLocationManager with unsupported bundle path, bundlePath:%{public, location:escape_only}@}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }
  }

  v15 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    *buf = 68289282;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2114;
    v40 = pathCopy;
    v16 = "initializing CLLocationManager with unsupported bundle path";
    v17 = "{msg%{public}.0s:initializing CLLocationManager with unsupported bundle path, bundlePath:%{public, location:escape_only}@}";
    v18 = v15;
LABEL_29:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v18, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v16, v17, buf, 0x1Cu);
  }

  return 0;
}

- (CLLocationManager)initWithEffectiveBundle:(id)bundle limitingBundleIdentifier:(id)identifier delegate:(id)delegate onQueue:(id)queue
{
  v8 = objc_msgSend_bundlePath(bundle, a2, bundle, identifier);

  return MEMORY[0x1EEE66B58](self, sel_initWithEffectiveBundlePath_limitingBundleIdentifier_delegate_onQueue_, v8, identifier);
}

- (id)_initWithDelegate:(id)delegate onQueue:(id)queue
{
  v23 = *MEMORY[0x1E69E9840];
  if (!delegate || !queue)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v13 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "delegate && queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "delegate and queue must not be nil", "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v16 = 0;
      v17 = 2082;
      v18 = "";
      v19 = 2082;
      v20 = "assert";
      v21 = 2081;
      v22 = "delegate && queue";
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_INFO, "{msg%{public}.0s:delegate and queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 722, "[CLLocationManager _initWithDelegate:onQueue:]");
  }

  v7 = objc_alloc(MEMORY[0x1E69AD360]);
  v10 = objc_msgSend_initWithUnderlyingQueue_bePermissive_(v7, v8, queue, 1);

  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, v9, 0, 0, 0, delegate, v10);
}

- (id)initOnQueue:(id)queue
{
  v21 = *MEMORY[0x1E69E9840];
  if (!queue)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "queue";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v11 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "queue";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "queue must not be nil", "{msg%{public}.0s:queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      v17 = 2082;
      v18 = "assert";
      v19 = 2081;
      v20 = "queue";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:queue must not be nil, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 730, "[CLLocationManager initOnQueue:]");
  }

  v5 = objc_alloc(MEMORY[0x1E69AD360]);
  v8 = objc_msgSend_initWithUnderlyingQueue_bePermissive_(v5, v6, queue, 1);

  return objc_msgSend_initWithEffectiveBundleIdentifier_bundlePath_websiteIdentifier_delegate_silo_(self, v7, 0, 0, 0, 0, v8);
}

+ (id)sharedManager
{
  result = qword_1EAFE5080;
  if (!qword_1EAFE5080)
  {
    result = objc_alloc_init(CLLocationManager);
    qword_1EAFE5080 = result;
  }

  return result;
}

+ (id)sharedQueue
{
  if (qword_1EAFE50F8 != -1)
  {
    dispatch_once(&qword_1EAFE50F8, &unk_1F0E6B6A0);
  }

  return qword_1EAFE50F0;
}

+ (id)weakSharedInstance
{
  objc_sync_enter(self);
  Weak = objc_loadWeak(&qword_1EAFE50E0);
  if (!Weak)
  {
    v4 = [CLLocationManager alloc];
    v8 = objc_msgSend_sharedQueue(CLLocationManager, v5, v6, v7);
    Weak = objc_msgSend_initOnQueue_(v4, v9, v8, v10);
    objc_storeWeak(&qword_1EAFE50E0, Weak);
  }

  objc_sync_exit(self);
  return Weak;
}

+ (BOOL)isMonitoringAvailableForClass:(Class)regionClass
{
  objc_msgSend_collectMetricForFunction_(self, a2, 2, v3);
  if (objc_opt_class() == regionClass)
  {
    v6 = 3;
  }

  else if (objc_opt_class() == regionClass)
  {
    v6 = 0;
  }

  else if (objc_opt_class() == regionClass)
  {
    v6 = 2;
  }

  else
  {
    if (objc_opt_class() != regionClass && objc_opt_class() != regionClass)
    {
      return 0;
    }

    v6 = 1;
  }

  return sub_19B889DD4(0, v6) != 0;
}

+ (BOOL)regionMonitoringAvailable
{
  objc_msgSend_collectMetricForFunction_(self, a2, 2, v2);
  sub_19B87BBB4();
  return (sub_19B93BE2C() >> 8) & 1;
}

+ (BOOL)isRangingAvailable
{
  objc_msgSend_collectMetricForFunction_(self, a2, 2, v2);
  sub_19B87BBB4();
  return (sub_19B93BE2C() >> 22) & 1;
}

- (void)setDelegate:(id)delegate
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68290050;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v10;
    v20 = 2050;
    selfCopy = self;
    v22 = 2050;
    v23 = delegate;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, delegate:%{public}p}", buf, 0x3Au);
  }

  objc_msgSend_setDelegate_(self->_internal, v8, delegate, v9);
  os_activity_scope_leave(&v11);
}

- (id)delegate
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_delegate(self->_internal, v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)setDistanceFilter:(CLLocationDistance)distanceFilter
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v6, &v19);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2114;
    v27 = v8;
    v28 = 2050;
    selfCopy = self;
    v30 = 2050;
    v31 = distanceFilter;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, distance:%{public}f}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_setDistanceFilter_(internal[4], v10, v11, v12, distanceFilter);
  if (objc_msgSend_updatingLocation(internal[4], v13, v14, v15))
  {
    objc_msgSend_startUpdatingLocation(self, v16, v17, v18);
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v19);
}

- (CLLocationDistance)distanceFilter
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v9;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_distanceFilter(*(self->_internal + 4), v6, v7, v8);
  v11 = v10;
  os_activity_scope_leave(&v13);
  return v11;
}

- (void)setDesiredAccuracy:(CLLocationAccuracy)desiredAccuracy
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v6, &v19);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2114;
    v27 = v8;
    v28 = 2050;
    selfCopy = self;
    v30 = 2050;
    v31 = desiredAccuracy;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, accuracy:%{public}f}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_setDesiredAccuracy_(internal[4], v10, v11, v12, desiredAccuracy);
  if (objc_msgSend_updatingLocation(internal[4], v13, v14, v15))
  {
    objc_msgSend_startUpdatingLocation(self, v16, v17, v18);
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v19);
}

- (void)setPausesLocationUpdatesAutomatically:(BOOL)pausesLocationUpdatesAutomatically
{
  v3 = pausesLocationUpdatesAutomatically;
  v39 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v26.opaque[0] = 0;
  v26.opaque[1] = 0;
  os_activity_scope_enter(v6, &v26);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    v31 = 2082;
    v32 = "activity";
    v33 = 2114;
    v34 = v8;
    v35 = 2050;
    selfCopy = self;
    v37 = 1026;
    v38 = v3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, pausesLocationUpdatesAutomatically:%{public}hhd}", buf, 0x36u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (!sub_19B87BF68())
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CLLocationManager.m", 975, @"Non-UI clients cannot be autopaused");
  }

  sub_19B87BBB4();
  if (sub_19B87BBFC())
  {
    if (v3)
    {
      objc_msgSend_setPausesLocationUpdatesAutomatically_(internal, v13, 6, v14);
    }

    else
    {
      objc_msgSend_setPausesLocationUpdatesAutomatically_(internal, v13, 4, v14);
    }

    if (objc_msgSend_paused(internal[4], v15, v16, v17) && objc_msgSend_pausesLocationUpdatesAutomatically(internal[4], v18, v19, v20) <= 4)
    {
      objc_msgSend_startUpdatingLocation(self, v21, v22, v23);
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v26);
}

- (BOOL)pausesLocationUpdatesAutomatically
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_PausesLocationUpdatesAutomatically(self->_internal, v6, v7, v8) > 4;
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)setAllowsBackgroundLocationUpdates:(BOOL)allowsBackgroundLocationUpdates
{
  v3 = allowsBackgroundLocationUpdates;
  v29 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2114;
    v24 = v8;
    v25 = 2050;
    selfCopy = self;
    v27 = 1026;
    v28 = v3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, allows:%{public}hhd}", buf, 0x36u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (v3)
  {
    v12 = internal[1];
    if ((!v12 || !*(v12 + 16)) && !_CFMZEnabled())
    {
      v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v13, v11);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLLocationManager.m", 1020, @"Invalid parameter not satisfying: %@", @"!stayUp || CLClientIsBackgroundable(internal->fClient) || _CFMZEnabled()");
    }
  }

  objc_msgSend_setAllowsBackgroundLocationUpdates_(internal, v10, v3, v11);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (BOOL)allowsBackgroundLocationUpdates
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_allowsBackgroundLocationUpdates(self->_internal, v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)setShowsBackgroundLocationIndicator:(BOOL)showsBackgroundLocationIndicator
{
  v3 = showsBackgroundLocationIndicator;
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    selfCopy = self;
    v23 = 1026;
    v24 = v3;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, shows:%{public}hhd}", buf, 0x36u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_setShowsBackgroundLocationIndicator_(internal, v10, v3, v11);
  objc_sync_exit(self);
  os_activity_scope_leave(&v12);
}

- (BOOL)showsBackgroundLocationIndicator
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_showsBackgroundLocationIndicator(self->_internal, v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

+ (BOOL)mapCorrectionAvailable
{
  sub_19B87BBB4();

  return sub_19B93C23C();
}

- (BOOL)locationServicesAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  os_activity_scope_leave(&v8);
  return 1;
}

- (BOOL)locationServicesEnabled
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLClientIsLocationServicesEnabled() != 0;
  os_activity_scope_leave(&v9);
  return v7;
}

- (BOOL)locationServicesApproved
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend__authorizationStatus(CLLocationManager, v6, v7, v8) == 3;
  os_activity_scope_leave(&v12);
  return v10;
}

- (double)expectedGpsUpdateInterval
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  os_activity_scope_leave(&v8);
  return 1.0;
}

- (void)setSupportInfo:(BOOL)info
{
  infoCopy = info;
  v26 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    selfCopy = self;
    v24 = 1026;
    v25 = infoCopy;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, supportInfo:%{public}hhd}", buf, 0x36u);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_FAULT, "Obsolete", buf, 2u);
  }

  v10 = sub_19B87DD40();
  if ((*(v10 + 160) & 0x80000000) == 0 || (*(v10 + 164) & 0x80000000) == 0 || (*(v10 + 168) & 0x80000000) == 0 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12[0] = 0;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Obsolete", v12, 2);
    sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager setSupportInfo:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  os_activity_scope_leave(&state);
}

- (BOOL)supportInfo
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  os_activity_scope_leave(&v8);
  return 0;
}

- (__CLClient)internalClient
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = *(self->_internal + 1);
  os_activity_scope_leave(&v9);
  return v7;
}

- (void)setPrivateMode:(BOOL)mode
{
  modeCopy = mode;
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68290050;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v11;
    v21 = 2050;
    selfCopy = self;
    v23 = 1026;
    v24 = modeCopy;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, privateMode:%{public}hhd}", buf, 0x36u);
  }

  sub_19B9BD5D8(modeCopy, v8, v9, v10);
  os_activity_scope_leave(&v12);
}

- (BOOL)privateMode
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  v6 = os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v10;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v11 = sub_19B9BD618(v6, v7, v8, v9) != 0;
  os_activity_scope_leave(&v13);
  return v11;
}

- (void)setPurpose:(NSString *)purpose
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    v21 = 2113;
    v22 = purpose;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, purpose:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B889078(internal[1], purpose);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

- (NSString)purpose
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v8 = sub_19B88915C(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
  return v8;
}

- (void)setActivityType:(CLActivityType)activityType
{
  v103 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    *v96 = 0;
    *&v96[4] = 2082;
    *&v96[6] = "";
    *&v96[14] = 2082;
    *&v96[16] = "activity";
    v97 = 2114;
    v98 = v8;
    v99 = 2050;
    selfCopy = self;
    v101 = 2050;
    v102 = activityType;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, activityType:%{public, location:CLActivityType}lld}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v11, v12, v13);
    v18 = objc_msgSend_bundleIdentifier(v14, v15, v16, v17);
    v22 = objc_msgSend_UTF8String(v18, v19, v20, v21);
    *buf = 136315394;
    *v96 = v22;
    *&v96[8] = 2048;
    *&v96[10] = activityType;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEBUG, "Client,%s,setActivityType,%ld", buf, 0x16u);
  }

  v23 = sub_19B87DD40();
  if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v29 = qword_1ED519090;
    v30 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v26, v27, v28);
    v34 = objc_msgSend_bundleIdentifier(v30, v31, v32, v33);
    v38 = objc_msgSend_UTF8String(v34, v35, v36, v37);
    v91 = 136315394;
    v92 = v38;
    v93 = 2048;
    v94 = activityType;
    v39 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v29, 2, "Client,%s,setActivityType,%ld", &v91, 22);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager setActivityType:]", "CoreLocation: %s\n", v39);
    if (v39 != buf)
    {
      free(v39);
    }
  }

  objc_msgSend_setActivityType_(*(internal + 4), v24, activityType, v25);
  switch(activityType)
  {
    case CLActivityTypeFitness:
      objc_msgSend_setAllowsMapCorrection_(*(internal + 4), v40, 1, v42);
      CLClientSetAllowsMapCorrection(*(internal + 1), 1);
      LODWORD(activityType) = 3;
      break;
    case CLActivityTypeAirborne:
      objc_msgSend_setAllowsMapCorrection_(*(internal + 4), v40, 0, v42);
      LODWORD(activityType) = 5;
      break;
    case CLActivityTypeOtherNavigation:
      v43 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v40, v41, v42);
      v47 = objc_msgSend_bundleIdentifier(v43, v44, v45, v46);
      if (objc_msgSend_containsString_(v47, v48, @"com.apple.Maps", v49) & 1) != 0 || (v53 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v50, v51, v52), v57 = objc_msgSend_bundleIdentifier(v53, v54, v55, v56), (objc_msgSend_isEqualToString_(v57, v58, @"com.apple.NanoMaps", v59)))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v62 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
        {
          v66 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v63, v64, v65);
          v70 = objc_msgSend_bundleIdentifier(v66, v67, v68, v69);
          v74 = objc_msgSend_UTF8String(v70, v71, v72, v73);
          *buf = 136315138;
          *v96 = v74;
          _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_DEBUG, "Client,%s,setActivityType,allowing map correction", buf, 0xCu);
        }

        v75 = sub_19B87DD40();
        if (*(v75 + 160) > 1 || *(v75 + 164) > 1 || *(v75 + 168) > 1 || *(v75 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v79 = qword_1ED519090;
          v80 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v76, v77, v78);
          v84 = objc_msgSend_bundleIdentifier(v80, v81, v82, v83);
          v88 = objc_msgSend_UTF8String(v84, v85, v86, v87);
          v91 = 136315138;
          v92 = v88;
          v89 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v79, 2, "Client,%s,setActivityType,allowing map correction", &v91, 12);
          sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager setActivityType:]", "CoreLocation: %s\n", v89);
          if (v89 != buf)
          {
            free(v89);
          }
        }
      }

      else
      {
        objc_msgSend_setAllowsMapCorrection_(*(internal + 4), v60, 0, v61);
      }

      LODWORD(activityType) = 2;
      break;
  }

  sub_19B880390(*(internal + 1), activityType);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)markAsHavingReceivedLocation
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v4, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    v14 = 2114;
    v15 = v6;
    v16 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  CLClientMarkAsHavingReceivedLocation(*(self->_internal + 1));
  os_activity_scope_leave(&v7);
}

+ (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)d orBundlePath:(id)path completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v10, &v22);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v11 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v17 = objc_msgSend_UTF8String(d, v14, v15, v16);
    v21 = objc_msgSend_UTF8String(path, v18, v19, v20);
    *buf = 68290306;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "activity";
    v29 = 2114;
    v30 = v13;
    v31 = 2050;
    selfCopy = self;
    v33 = 2082;
    v34 = v17;
    v35 = 2082;
    v36 = v21;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundleID:%{public, location:escape_only}s, bundlePath:%{public, location:escape_only}s}", buf, 0x44u);
  }

  sub_19B9C09F4(d, path, handler, v12);
  os_activity_scope_leave(&v22);
}

+ (void)_checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)d orBundlePath:(id)path completionHandler:(id)handler
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v10, &v22);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v11 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v17 = objc_msgSend_UTF8String(d, v14, v15, v16);
    v21 = objc_msgSend_UTF8String(path, v18, v19, v20);
    *buf = 68290306;
    v24 = 0;
    v25 = 2082;
    v26 = "";
    v27 = 2082;
    v28 = "activity";
    v29 = 2114;
    v30 = v13;
    v31 = 2050;
    selfCopy = self;
    v33 = 2082;
    v34 = v17;
    v35 = 2082;
    v36 = v21;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundleID:%{public, location:escape_only}s, bundlePath:%{public, location:escape_only}s}", buf, 0x44u);
  }

  sub_19B9C0954(d, path, handler, v12);
  os_activity_scope_leave(&v22);
}

+ (void)_checkAndExerciseForPushClientWithBundleID:(id)d completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v8, &v17);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    v16 = objc_msgSend_UTF8String(d, v13, v14, v15);
    *buf = 68290050;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "activity";
    v24 = 2114;
    v25 = v12;
    v26 = 2050;
    selfCopy = self;
    v28 = 2082;
    v29 = v16;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundleID:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  sub_19B9C09AC(d, handler, v10, v11);
  os_activity_scope_leave(&v17);
}

+ (BOOL)_checkAndExerciseAuthorizationForBundleID:(id)d error:(id *)error
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v8, &v17);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v14 = objc_msgSend_UTF8String(d, v11, v12, v13);
    *buf = 68290050;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "activity";
    v24 = 2114;
    v25 = v10;
    v26 = 2050;
    selfCopy = self;
    v28 = 2082;
    v29 = v14;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundleID:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  v15 = sub_19B9BF3F0(d, 0, 5120, error);
  os_activity_scope_leave(&v17);
  return v15;
}

+ (BOOL)_checkAndExerciseAuthorizationForBundle:(id)bundle error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v25.opaque[0] = 0;
  v25.opaque[1] = 0;
  os_activity_scope_enter(v8, &v25);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    v17 = objc_msgSend_bundlePath(bundle, v14, v15, v16);
    v21 = objc_msgSend_UTF8String(v17, v18, v19, v20);
    *buf = 68290050;
    v27 = 0;
    v28 = 2082;
    v29 = "";
    v30 = 2082;
    v31 = "activity";
    v32 = 2114;
    v33 = v13;
    v34 = 2050;
    selfCopy = self;
    v36 = 2082;
    v37 = v21;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, bundlePath:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  v22 = objc_msgSend_bundlePath(bundle, v10, v11, v12);
  v23 = sub_19B9BF3F0(0, v22, 5120, error);
  os_activity_scope_leave(&v25);
  return v23;
}

- (void)startUpdatingLocationWithPrompt
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  CLClientSetShowLocationPrompt(*(self->_internal + 1), 1);
  objc_msgSend_startUpdatingLocation(self, v7, v8, v9);
  os_activity_scope_leave(&v10);
}

- (void)allowDeferredLocationUpdatesUntilTraveled:(CLLocationDistance)distance timeout:(NSTimeInterval)timeout
{
  v52 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 68290306;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v42 = 2082;
    v43 = "activity";
    v44 = 2114;
    v45 = v12;
    v46 = 2050;
    selfCopy = self;
    v48 = 2050;
    v49 = distance;
    v50 = 2050;
    v51 = timeout;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, distance:%{public}f, timeout_s:%{public}.09f}", buf, 0x44u);
  }

  objc_msgSend_collectMetricForFunction_(self, v10, 32, v11);
  internal = self->_internal;
  objc_msgSend_delegate(internal, v14, v15, v16);
  objc_sync_enter(self);
  if (objc_msgSend_requestingLocation(*(internal + 4), v17, v18, v19))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v22 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "Canceling requestLocation.", buf, 2u);
    }

    v23 = sub_19B87DD40();
    if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v36[0] = 0;
      v27 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Canceling requestLocation.", v36, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager allowDeferredLocationUpdatesUntilTraveled:timeout:]", "CoreLocation: %s\n", v27);
      if (v27 != buf)
      {
        free(v27);
      }
    }

    objc_msgSend_cancelLocationRequest(internal, v24, v25, v26);
  }

  objc_msgSend_setBatchingLocation_(*(internal + 4), v20, 1, v21);
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v34 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v28, v29, v30);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v34, v35, a2, self, @"CLLocationManager.m", 1382, @"Delegate must respond to locationManager:didUpdateLocations:");
  }

  v31 = *(internal + 1);
  if (!v31 || !*(v31 + 16))
  {
    v32 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v28, v29, v30);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v32, v33, a2, self, @"CLLocationManager.m", 1384, @"Application must support the location background mode (in app's Info.plist, {UIBackgroundModes=(location);}");
    v31 = *(internal + 1);
  }

  sub_19B88ECC0(v31, distance, timeout);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)disallowDeferredLocationUpdates
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 32, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88EE08(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

+ (BOOL)deferredLocationUpdatesAvailable
{
  objc_msgSend_collectMetricForFunction_(self, a2, 32, v2);
  sub_19B87BBB4();
  return 0;
}

- (BOOL)headingAvailable
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = sub_19B87AB28();
  if (v7)
  {
    sub_19B87BBB4();
  }

  os_activity_scope_leave(&v9);
  return v7 & 1;
}

- (void)setHeadingFilter:(CLLocationDegrees)headingFilter
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v21.opaque[0] = 0;
  v21.opaque[1] = 0;
  os_activity_scope_enter(v6, &v21);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 2114;
    v29 = v8;
    v30 = 2050;
    selfCopy = self;
    v32 = 2050;
    v33 = headingFilter;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, filter:%{public}f}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v13 = *MEMORY[0x1E6985C68];
  v14 = 360.0;
  if (headingFilter <= 360.0)
  {
    v14 = headingFilter;
  }

  if (headingFilter > 0.0)
  {
    v13 = v14;
  }

  objc_msgSend_setHeadingFilter_(internal[4], v10, v11, v12, v13);
  if (objc_msgSend_updatingHeading(internal[4], v15, v16, v17))
  {
    objc_msgSend_startUpdatingHeading(self, v18, v19, v20);
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v21);
}

- (CLLocationDegrees)headingFilter
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v9;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_headingFilter(*(self->_internal + 4), v6, v7, v8);
  v11 = v10;
  os_activity_scope_leave(&v13);
  return v11;
}

- (void)setHeadingOrientation:(CLDeviceOrientation)headingOrientation
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v6, &v16);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2114;
    v24 = v8;
    v25 = 2050;
    selfCopy = self;
    v27 = 2050;
    v28 = headingOrientation;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, orientation:%{public, location:CLDeviceOrientation}lld}", buf, 0x3Au);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if ((headingOrientation - 1) <= 3)
  {
    *(internal + 56) = headingOrientation;
    if (objc_msgSend_updatingHeading(*(internal + 4), v10, v11, v12))
    {
      objc_msgSend_startUpdatingHeading(self, v13, v14, v15);
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v16);
}

- (CLDeviceOrientation)headingOrientation
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = *(self->_internal + 56);
  os_activity_scope_leave(&v9);
  return v7;
}

- (CLHeading)heading
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v6;
    *&buf[38] = 2050;
    *&buf[40] = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v36 = 0u;
  objc_sync_enter(self);
  objc_msgSend_performCourtesyPromptIfNeeded(internal, v8, v9, v10);
  LODWORD(internal) = CLClientGetHeading(internal[1], &v36);
  objc_sync_exit(self);
  v11 = 0;
  if (internal && *&v39 > 0.0)
  {
    v12 = [CLHeading alloc];
    *&buf[32] = v38;
    v46 = v39;
    v47 = v40;
    v48 = v41;
    *buf = v36;
    *&buf[16] = v37;
    v11 = objc_msgSend_initWithClientHeading_(v12, v13, buf, v14);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v19 = objc_msgSend_description(v11, v16, v17, v18);
      v23 = objc_msgSend_UTF8String(v19, v20, v21, v22);
      *buf = 136380675;
      *&buf[4] = v23;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEBUG, "heading, %{private}s", buf, 0xCu);
    }

    v24 = sub_19B87DD40();
    if (*(v24 + 160) > 1 || *(v24 + 164) > 1 || *(v24 + 168) > 1 || *(v24 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v28 = qword_1ED519090;
      v29 = objc_msgSend_description(v11, v25, v26, v27);
      v33 = objc_msgSend_UTF8String(v29, v30, v31, v32);
      v43 = 136380675;
      v44 = v33;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v28, 2, "heading, %{private}s", &v43, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager heading]", "CoreLocation: %s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }
  }

  os_activity_scope_leave(&state);
  return v11;
}

- (void)stopUpdatingHeading
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2114;
    v24 = v8;
    v25 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 128, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_setUpdatingHeading_(*(internal + 4), v10, 0, v11);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v12 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "Stop updating heading", buf, 2u);
  }

  v13 = sub_19B87DD40();
  if (*(v13 + 160) > 1 || *(v13 + 164) > 1 || *(v13 + 168) > 1 || *(v13 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15[0] = 0;
    v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Stop updating heading", v15, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager stopUpdatingHeading]", "CoreLocation: %s\n", v14);
    if (v14 != buf)
    {
      free(v14);
    }
  }

  CLClientStopHeadingUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)dismissHeadingCalibrationDisplay
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Dismissing Compass Calibration HUD", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v11[0] = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Dismissing Compass Calibration HUD", v11, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager dismissHeadingCalibrationDisplay]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  CLClientShowHeadingCalibration(internal[1], 0);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)_startMonitoringSignificantLocationChangesOfDistance:(double)distance withPowerBudget:(int)budget
{
  v23 = *MEMORY[0x1E69E9840];
  distanceCopy = distance;
  budgetCopy = budget;
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  *(internal + 60) = 0xBFF0000000000000;
  sub_19B880EA0(internal[1], &distanceCopy, &budgetCopy);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

- (void)stopMonitoringSignificantLocationChanges
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 512, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88A6C0(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

- (void)startMonitoringLocationPushesWithCompletion:(void *)completion
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v6, &v14);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v10;
    v23 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v8, 1024, v9);
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B889788(internal[1], completion, v12, v13);
  objc_sync_exit(self);
  os_activity_scope_leave(&v14);
}

- (void)stopMonitoringLocationPushes
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 2048, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B889A1C(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

- (void)startMonitoringForRegion:(CLRegion *)region
{
  v83 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v14 = objc_msgSend_identifier(region, v11, v12, v13);
    objc_msgSend_center(region, v15, v16, v17);
    v19 = v18;
    objc_msgSend_center(region, v20, v21, v22);
    v24 = v23;
    objc_msgSend_radius(region, v25, v26, v27);
    *buf = 68290819;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v10;
    *&buf[38] = 2050;
    selfCopy = self;
    v75 = 2113;
    v76 = v14;
    v77 = 2053;
    v78 = v19;
    v79 = 2053;
    v80 = v24;
    v81 = 2050;
    v82 = v28;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
  }

  objc_msgSend_collectMetricForFunction_(self, v8, 4096, v9);
  v29 = region == 0;
  if (!region)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v30 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v31 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v31, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is nil", "{msg%{public}.0s:Region is nil}", buf, 0x12u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v32 = region;
  }

  else
  {
    v32 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = region;
  }

  else
  {
    v36 = 0;
  }

  if (v32)
  {
    v37 = objc_msgSend_UUID(v32, v33, v34, v35);
    if (region)
    {
      v38 = v37 == 0;
    }

    else
    {
      v38 = 1;
    }

    v29 = v38;
  }

  else if (v36)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v49 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v53 = objc_msgSend_vertices(v36, v50, v51, v52);
      v57 = objc_msgSend_count(v53, v54, v55, v56);
      *buf = 134349056;
      *&buf[4] = v57;
      _os_log_impl(&dword_19B873000, v49, OS_LOG_TYPE_DEBUG, "Number of vertices %{public}lu", buf, 0xCu);
    }

    v58 = sub_19B87DD40();
    if (*(v58 + 160) > 1 || *(v58 + 164) > 1 || *(v58 + 168) > 1 || *(v58 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v62 = qword_1ED519090;
      v63 = objc_msgSend_vertices(v36, v59, v60, v61);
      v67 = objc_msgSend_count(v63, v64, v65, v66);
      v71 = 134349056;
      v72 = v67;
      v68 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v62, 2, "Number of vertices %{public}lu", &v71, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager startMonitoringForRegion:]", "CoreLocation: %s\n", v68);
      if (v68 != buf)
      {
        free(v68);
      }
    }
  }

  internal = self->_internal;
  v40 = objc_msgSend_delegate(internal, v33, v34, v35);
  objc_sync_enter(self);
  objc_msgSend_performCourtesyPromptIfNeeded(internal, v41, v42, v43);
  if (v29 || !sub_19B88A994(internal[1], region, v45, v46))
  {
    v47 = internal[1];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = sub_19B8A0AE8;
    v69[3] = &unk_1E753D098;
    v69[4] = self;
    v69[5] = v40;
    v69[6] = region;
    if (v47)
    {
      v48 = *(v47 + 232);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_19B88071C;
      *&buf[24] = &unk_1E753CCE0;
      *&buf[32] = v69;
      objc_msgSend_async_(v48, v44, buf, v46);
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)stopMonitoringForRegion:(CLRegion *)region
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v34.opaque[0] = 0;
  v34.opaque[1] = 0;
  os_activity_scope_enter(v6, &v34);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v14 = objc_msgSend_identifier(region, v11, v12, v13);
    objc_msgSend_center(region, v15, v16, v17);
    v19 = v18;
    objc_msgSend_center(region, v20, v21, v22);
    v24 = v23;
    objc_msgSend_radius(region, v25, v26, v27);
    *buf = 68290819;
    v36 = 0;
    v37 = 2082;
    v38 = "";
    v39 = 2082;
    v40 = "activity";
    v41 = 2114;
    v42 = v10;
    v43 = 2050;
    selfCopy = self;
    v45 = 2113;
    v46 = v14;
    v47 = 2053;
    v48 = v19;
    v49 = 2053;
    v50 = v24;
    v51 = 2050;
    v52 = v28;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
  }

  objc_msgSend_collectMetricForFunction_(self, v8, 0x2000, v9);
  if (region)
  {
    internal = self->_internal;
    objc_sync_enter(self);
    sub_19B88B04C(internal[1], region, v30, v31);
    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v32 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v33 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v36 = 0;
      v37 = 2082;
      v38 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is nil", "{msg%{public}.0s:Region is nil}", buf, 0x12u);
    }
  }

  os_activity_scope_leave(&v34);
}

- (void)requestStateForRegion:(CLRegion *)region
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v37.opaque[0] = 0;
  v37.opaque[1] = 0;
  os_activity_scope_enter(v6, &v37);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    v14 = objc_msgSend_identifier(region, v11, v12, v13);
    objc_msgSend_center(region, v15, v16, v17);
    v19 = v18;
    objc_msgSend_center(region, v20, v21, v22);
    v24 = v23;
    objc_msgSend_radius(region, v25, v26, v27);
    *buf = 68290819;
    v39 = 0;
    v40 = 2082;
    v41 = "";
    v42 = 2082;
    v43 = "activity";
    v44 = 2114;
    v45 = v10;
    v46 = 2050;
    selfCopy = self;
    v48 = 2113;
    v49 = v14;
    v50 = 2053;
    v51 = v19;
    v52 = 2053;
    v53 = v24;
    v54 = 2050;
    v55 = v28;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
  }

  objc_msgSend_collectMetricForFunction_(self, v8, 0x4000, v9);
  if (region)
  {
    internal = self->_internal;
    objc_sync_enter(self);
    objc_msgSend_performCourtesyPromptIfNeeded(internal, v30, v31, v32);
    sub_19B88C368(internal[1], region, v33, v34);
    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v35 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      _os_log_impl(&dword_19B873000, v35, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v36 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v39 = 0;
      v40 = 2082;
      v41 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v36, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is nil", "{msg%{public}.0s:Region is nil}", buf, 0x12u);
    }
  }

  os_activity_scope_leave(&v37);
}

- (CLLocationDistance)maximumRegionMonitoringDistance
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 0x8000, v7);
  objc_sync_enter(self);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
  return 2128000.0;
}

- (void)startRangingBeaconsInRegion:(CLBeaconRegion *)region
{
  v77 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68290051;
    *&buf[4] = 0;
    *v73 = 2082;
    *&v73[2] = "";
    *&v73[10] = 2082;
    *&v73[12] = "activity";
    *&v73[20] = 2114;
    *&v73[22] = v10;
    *&v73[30] = 2050;
    selfCopy = self;
    v75 = 2113;
    v76 = region;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  objc_msgSend_collectMetricForFunction_(self, v8, 0x20000, v9);
  v14 = region == 0;
  if (!region)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v73 = 2082;
      *&v73[2] = "";
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v16 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v73 = 2082;
      *&v73[2] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is nil", "{msg%{public}.0s:Region is nil}", buf, 0x12u);
    }
  }

  v17 = objc_msgSend_onBehalfOfBundleId(region, v11, v12, v13);
  if (objc_msgSend_length(v17, v18, v19, v20))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v24 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_msgSend_onBehalfOfBundleId(region, v25, v26, v27);
      v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
      *buf = 68289282;
      *&buf[4] = 0;
      *v73 = 2082;
      *&v73[2] = "";
      *&v73[10] = 2082;
      *&v73[12] = v32;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Cannot start ranging beacons on behalf of another app, onBehalfOf:%{public, location:escape_only}s}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v33 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      v34 = objc_msgSend_onBehalfOfBundleId(region, v21, v22, v23);
      v38 = objc_msgSend_UTF8String(v34, v35, v36, v37);
      *buf = 68289282;
      *&buf[4] = 0;
      *v73 = 2082;
      *&v73[2] = "";
      *&v73[10] = 2082;
      *&v73[12] = v38;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v33, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Cannot start ranging beacons on behalf of another app", "{msg%{public}.0s:Cannot start ranging beacons on behalf of another app, onBehalfOf:%{public, location:escape_only}s}", buf, 0x1Cu);
    }

    v14 = 1;
  }

  if (objc_msgSend_type(region, v21, v22, v23))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v42 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v73 = 2082;
      *&v73[2] = "";
      _os_log_impl(&dword_19B873000, v42, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is not an instance of CLBeaconRegion}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v43 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *v73 = 2082;
      *&v73[2] = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v43, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Region is not an instance of CLBeaconRegion", "{msg%{public}.0s:Region is not an instance of CLBeaconRegion}", buf, 0x12u);
    }

    v14 = 1;
  }

  internal = self->_internal;
  v45 = objc_msgSend_delegate(internal, v39, v40, v41);
  objc_sync_enter(self);
  if (v14 || (objc_msgSend_performCourtesyPromptIfNeeded(internal, v46, v47, v48), v52 = objc_msgSend_rangedRegions(internal, v49, v50, v51), objc_msgSend_removeObject_(v52, v53, region, v54), v58 = objc_msgSend_rangedRegions(internal, v55, v56, v57), objc_msgSend_addObject_(v58, v59, region, v60), v61 = objc_alloc(MEMORY[0x1E695DFA8]), v65 = objc_msgSend_rangedRegions(internal, v62, v63, v64), v67 = objc_msgSend_initWithSet_copyItems_(v61, v66, v65, 1), !sub_19B88D920(internal[1], v67, 1)))
  {
    v68 = internal[1];
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = sub_19B8A1B60;
    v70[3] = &unk_1E753D098;
    v70[4] = self;
    v70[5] = v45;
    v70[6] = region;
    if (v68)
    {
      v69 = *(v68 + 232);
      *buf = MEMORY[0x1E69E9820];
      *v73 = 3221225472;
      *&v73[8] = sub_19B88071C;
      *&v73[16] = &unk_1E753CCE0;
      *&v73[24] = v70;
      objc_msgSend_async_(v69, v46, buf, v48);
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)stopRangingBeaconsInRegion:(CLBeaconRegion *)region
{
  v73 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v60.opaque[0] = 0;
  v60.opaque[1] = 0;
  os_activity_scope_enter(v6, &v60);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68290051;
    v62 = 0;
    v63 = 2082;
    v64 = "";
    v65 = 2082;
    v66 = "activity";
    v67 = 2114;
    v68 = v10;
    v69 = 2050;
    selfCopy = self;
    v71 = 2113;
    v72 = region;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, region:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  objc_msgSend_collectMetricForFunction_(self, v8, 0x20000, v9);
  if (!region)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v43 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v62 = 0;
      v63 = 2082;
      v64 = "";
      _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is nil}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v44 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_31;
    }

    *buf = 68289026;
    v62 = 0;
    v63 = 2082;
    v64 = "";
    v39 = "Region is nil";
    v40 = "{msg%{public}.0s:Region is nil}";
    goto LABEL_29;
  }

  v14 = objc_msgSend_onBehalfOfBundleId(region, v11, v12, v13);
  if (!objc_msgSend_length(v14, v15, v16, v17))
  {
    if (!objc_msgSend_type(region, v18, v19, v20))
    {
      internal = self->_internal;
      objc_sync_enter(self);
      v50 = objc_msgSend_rangedRegions(internal, v47, v48, v49);
      objc_msgSend_removeObject_(v50, v51, region, v52);
      v53 = objc_alloc(MEMORY[0x1E695DFA8]);
      v57 = objc_msgSend_rangedRegions(internal, v54, v55, v56);
      v59 = objc_msgSend_initWithSet_copyItems_(v53, v58, v57, 1);
      sub_19B88D920(internal[1], v59, 0);
      objc_sync_exit(self);
      goto LABEL_31;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v45 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v62 = 0;
      v63 = 2082;
      v64 = "";
      _os_log_impl(&dword_19B873000, v45, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Region is not an instance of CLBeaconRegion}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v44 = qword_1ED519090;
    if (!os_signpost_enabled(qword_1ED519090))
    {
      goto LABEL_31;
    }

    *buf = 68289026;
    v62 = 0;
    v63 = 2082;
    v64 = "";
    v39 = "Region is not an instance of CLBeaconRegion";
    v40 = "{msg%{public}.0s:Region is not an instance of CLBeaconRegion}";
LABEL_29:
    v41 = v44;
    v42 = 18;
    goto LABEL_30;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v21 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
  {
    v25 = objc_msgSend_onBehalfOfBundleId(region, v22, v23, v24);
    v29 = objc_msgSend_UTF8String(v25, v26, v27, v28);
    *buf = 68289282;
    v62 = 0;
    v63 = 2082;
    v64 = "";
    v65 = 2082;
    v66 = v29;
    _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Cannot stop ranging beacons on behalf of another app, onBehalfOf:%{public, location:escape_only}s}", buf, 0x1Cu);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }
  }

  v30 = qword_1ED519090;
  if (os_signpost_enabled(qword_1ED519090))
  {
    v34 = objc_msgSend_onBehalfOfBundleId(region, v31, v32, v33);
    v38 = objc_msgSend_UTF8String(v34, v35, v36, v37);
    *buf = 68289282;
    v62 = 0;
    v63 = 2082;
    v64 = "";
    v65 = 2082;
    v66 = v38;
    v39 = "Cannot stop ranging beacons on behalf of another app";
    v40 = "{msg%{public}.0s:Cannot stop ranging beacons on behalf of another app, onBehalfOf:%{public, location:escape_only}s}";
    v41 = v30;
    v42 = 28;
LABEL_30:
    _os_signpost_emit_with_name_impl(&dword_19B873000, v41, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v39, v40, buf, v42);
  }

LABEL_31:
  os_activity_scope_leave(&v60);
}

- (void)startRangingBeaconsSatisfyingConstraint:(CLBeaconIdentityConstraint *)constraint
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68290051;
    *v53 = 2082;
    *&v53[2] = "";
    *&v53[10] = 2082;
    *&v53[12] = "activity";
    *&v53[20] = 2114;
    *&v53[22] = v10;
    *&v53[30] = 2050;
    selfCopy = self;
    v55 = 2113;
    v56 = constraint;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, constraint:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  objc_msgSend_collectMetricForFunction_(self, v8, 0x20000, v9);
  if (!constraint)
  {
    v41 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, a2, self, @"CLLocationManager.m", 1875, @"Invalid parameter not satisfying: %@", @"constraint");
  }

  internal = self->_internal;
  v43 = objc_msgSend_delegate(internal, v11, v12, v13);
  objc_sync_enter(self);
  v18 = objc_msgSend_rangedConstraints(internal, v15, v16, v17);
  objc_msgSend_addObject_(v18, v19, constraint, v20);
  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v44 = constraint;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = objc_msgSend_rangedConstraints(internal, v22, v23, v24);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v46, v51, 16);
  if (v27)
  {
    v28 = *v47;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v46 + 1) + 8 * i);
        v31 = [CLBeaconRegion alloc];
        v33 = objc_msgSend_initWithBeaconIdentityConstraint_identifier_(v31, v32, v30, &stru_1F0E6F140);
        objc_msgSend_addObject_(v21, v34, v33, v35);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v36, &v46, v51, 16);
    }

    while (v27);
  }

  if (!sub_19B88D920(internal[1], v21, 1))
  {
    v39 = internal[1];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = sub_19B8A2644;
    v45[3] = &unk_1E753D098;
    v45[4] = self;
    v45[5] = v43;
    v45[6] = v44;
    if (v39)
    {
      v40 = *(v39 + 232);
      *buf = MEMORY[0x1E69E9820];
      *v53 = 3221225472;
      *&v53[8] = sub_19B88071C;
      *&v53[16] = &unk_1E753CCE0;
      *&v53[24] = v45;
      objc_msgSend_async_(v40, v37, buf, v38);
    }
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)stopRangingBeaconsSatisfyingConstraint:(CLBeaconIdentityConstraint *)constraint
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    buf = 68290051;
    v46 = 2082;
    v47 = "";
    v48 = 2082;
    v49 = "activity";
    v50 = 2114;
    v51 = v10;
    v52 = 2050;
    selfCopy = self;
    v54 = 2113;
    v55 = constraint;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, constraint:%{private, location:escape_only}@}", &buf, 0x3Au);
  }

  objc_msgSend_collectMetricForFunction_(self, v8, 0x20000, v9);
  if (!constraint)
  {
    v37 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v11, v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CLLocationManager.m", 1910, @"Invalid parameter not satisfying: %@", @"constraint != nil");
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v18 = objc_msgSend_rangedConstraints(internal, v15, v16, v17);
  objc_msgSend_removeObject_(v18, v19, constraint, v20);
  v21 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = objc_msgSend_rangedConstraints(internal, v22, v23, v24);
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v39, v44, 16);
  if (v27)
  {
    v28 = *v40;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v40 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v39 + 1) + 8 * i);
        v31 = [CLBeaconRegion alloc];
        v33 = objc_msgSend_initWithBeaconIdentityConstraint_identifier_(v31, v32, v30, &stru_1F0E6F140);
        objc_msgSend_addObject_(v21, v34, v33, v35);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v36, &v39, v44, 16);
    }

    while (v27);
  }

  sub_19B88D920(internal[1], v21, 0);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (NSSet)rangedBeaconConstraints
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v4, &v19);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2114;
    v27 = v8;
    v28 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 0x20000, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  v13 = objc_msgSend_rangedConstraints(internal, v10, v11, v12);
  v17 = objc_msgSend_copy(v13, v14, v15, v16);
  objc_sync_exit(self);
  os_activity_scope_leave(&v19);
  return v17;
}

- (NSSet)rangedRegions
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v19.opaque[0] = 0;
  v19.opaque[1] = 0;
  os_activity_scope_enter(v4, &v19);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v21 = 0;
    v22 = 2082;
    v23 = "";
    v24 = 2082;
    v25 = "activity";
    v26 = 2114;
    v27 = v8;
    v28 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 0x20000, v7);
  internal = self->_internal;
  objc_sync_enter(self);
  v13 = objc_msgSend_rangedRegions(internal, v10, v11, v12);
  v17 = objc_msgSend_copy(v13, v14, v15, v16);
  objc_sync_exit(self);
  os_activity_scope_leave(&v19);
  return v17;
}

+ (id)metadataForHomekitAccessoryControlEventWithUUID:(id)d stateString:(id)string serviceUUID:(id)iD serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUUID:(id)uID source:(id)source roomUUID:(id)self0
{
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setValue_forKey_(v16, v17, d, 0x1F0E71780);
  objc_msgSend_setValue_forKey_(v16, v18, string, 0x1F0E71800);
  objc_msgSend_setValue_forKey_(v16, v19, iD, 0x1F0E71820);
  objc_msgSend_setValue_forKey_(v16, v20, type, 0x1F0E717A0);
  objc_msgSend_setValue_forKey_(v16, v21, characteristicType, 0x1F0E717C0);
  objc_msgSend_setValue_forKey_(v16, v22, uID, 0x1F0E71840);
  objc_msgSend_setValue_forKey_(v16, v23, source, 0x1F0E717E0);
  objc_msgSend_setValue_forKey_(v16, v24, uUID, 0x1F0E71860);
  return v16;
}

- (void)exportMicroLocationDatabaseTablesWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to export copy of MiLo DB tables}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v11 = internal[1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B8A31E0;
  v12[3] = &unk_1E753D0C0;
  v12[4] = completion;
  sub_19B88FA04(v11, v12);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)exportMicroLocationDataForMigrationWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to export copy of MiLo DB tables for migration}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v11 = internal[1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B8A360C;
  v12[3] = &unk_1E753D0C0;
  v12[4] = completion;
  sub_19B88FC24(v11, v12);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)requestMicroLocationStaticSourcesStatisticsWithCompletion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v8;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to get per anchor per cluster measured value statistics}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v11 = internal[1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B8A3A38;
  v12[3] = &unk_1E753D0C0;
  v12[4] = completion;
  sub_19B88FE44(v11, v12);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)requestMicroLocationLearningWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v6, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v8;
    v20 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v9 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received learning request}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B890064(internal[1], completion);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
}

- (void)requestCurrentMicroLocationWithAdditionalInformation:(id)information withCompletion:(id)completion
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    buf = 68289794;
    v47 = 2082;
    v48 = "";
    v49 = 2082;
    v50 = "activity";
    v51 = 2114;
    v52 = v10;
    v53 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", &buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v11 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    buf = 68289026;
    v47 = 2082;
    v48 = "";
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received localization scan request}", &buf, 0x12u);
  }

  v45[0] = objc_opt_class();
  v45[1] = objc_opt_class();
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, v45, 2);
  completionCopy = completion;
  selfCopy2 = self;
  v14 = objc_alloc(MEMORY[0x1E695DF90]);
  v16 = objc_msgSend_initWithDictionary_copyItems_(v14, v15, information, 1);
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = information;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(information, v17, &v38, v44, 16);
  if (v19)
  {
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, &v34, v43, 16);
        if (v24)
        {
          v25 = *v35;
LABEL_16:
          v26 = 0;
          while (1)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v13);
            }

            objc_msgSend_objectForKeyedSubscript_(v16, v18, v22, v23);
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v24 == ++v26)
            {
              v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v18, &v34, v43, 16);
              if (v24)
              {
                goto LABEL_16;
              }

              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          objc_msgSend_removeObjectForKey_(v16, v18, v22, v23);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v18, &v38, v44, 16);
    }

    while (v19);
  }

  v27 = objc_sync_enter(selfCopy2);
  sub_19B88F3B8(v27, v28, v29, completionCopy);
  objc_sync_exit(selfCopy2);
  v30 = v16;
  os_activity_scope_leave(&state);
}

- (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)information shouldForceRecording:(BOOL)recording
{
  recordingCopy = recording;
  v61 = *MEMORY[0x1E69E9840];
  v7 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    buf = 68289794;
    v53 = 2082;
    v54 = "";
    v55 = 2082;
    v56 = "activity";
    v57 = 2114;
    v58 = v9;
    v59 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", &buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v10 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    buf = 68289282;
    v53 = 2082;
    v54 = "";
    v55 = 1026;
    LODWORD(v56) = recordingCopy;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received recording scan request, forced::%{public}hhd}", &buf, 0x18u);
  }

  if (!information)
  {
    information = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v11 = objc_alloc(MEMORY[0x1E695DF90]);
  v13 = objc_msgSend_initWithDictionary_copyItems_(v11, v12, information, 1);
  v15 = v13;
  if (recordingCopy)
  {
    objc_msgSend_setValue_forKey_(v13, v14, MEMORY[0x1E695E118], 0x1F0E71960);
  }

  else
  {
    objc_msgSend_setValue_forKey_(v13, v14, MEMORY[0x1E695E110], 0x1F0E71960);
  }

  if (!objc_msgSend_objectForKey_(v15, v16, 0x1F0E71980, v17))
  {
    v21 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v18, v19, v20);
    objc_msgSend_setValue_forKey_(v15, v22, v21, 0x1F0E71980);
  }

  v51[0] = objc_opt_class();
  v51[1] = objc_opt_class();
  v51[2] = objc_opt_class();
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v23, v51, 3);
  selfCopy2 = self;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(information, v25, &v44, v50, 16);
  if (v27)
  {
    v28 = *v45;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v45 != v28)
        {
          objc_enumerationMutation(information);
        }

        v30 = *(*(&v44 + 1) + 8 * i);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v40, v49, 16);
        if (v32)
        {
          v33 = *v41;
LABEL_23:
          v34 = 0;
          while (1)
          {
            if (*v41 != v33)
            {
              objc_enumerationMutation(v24);
            }

            objc_msgSend_objectForKeyedSubscript_(v15, v26, v30, v31);
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v32 == ++v34)
            {
              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v40, v49, 16);
              if (v32)
              {
                goto LABEL_23;
              }

              goto LABEL_29;
            }
          }
        }

        else
        {
LABEL_29:
          objc_msgSend_removeObjectForKey_(v15, v26, v30, v31);
        }
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(information, v26, &v44, v50, 16);
    }

    while (v27);
  }

  v35 = objc_sync_enter(selfCopy2);
  sub_19B88F3B8(v35, v36, v37, 0);
  objc_sync_exit(selfCopy2);
  os_activity_scope_leave(&state);
}

- (id)getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation:(id)information shouldForceRecording:(BOOL)recording handler:(id)handler
{
  recordingCopy = recording;
  v62 = *MEMORY[0x1E69E9840];
  v9 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    buf = 68289794;
    v54 = 2082;
    v55 = "";
    v56 = 2082;
    v57 = "activity";
    v58 = 2114;
    v59 = v11;
    v60 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", &buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v12 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    buf = 68289282;
    v54 = 2082;
    v55 = "";
    v56 = 1026;
    LODWORD(v57) = recordingCopy;
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received recording scan request, forced::%{public}hhd}", &buf, 0x18u);
  }

  v39 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], v13, v14, v15);
  if (!information)
  {
    information = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v16 = objc_alloc(MEMORY[0x1E695DF90]);
  v18 = objc_msgSend_initWithDictionary_copyItems_(v16, v17, information, 1);
  objc_msgSend_setValue_forKey_(v18, v19, v39, 0x1F0E71980);
  if (recordingCopy)
  {
    objc_msgSend_setValue_forKey_(v18, v20, MEMORY[0x1E695E118], 0x1F0E71960);
  }

  else
  {
    objc_msgSend_setValue_forKey_(v18, v20, MEMORY[0x1E695E110], 0x1F0E71960);
  }

  handlerCopy = handler;
  selfCopy2 = self;
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v52[2] = objc_opt_class();
  v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v21, v52, 3);
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(information, v23, &v45, v51, 16);
  if (v25)
  {
    v26 = *v46;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v46 != v26)
        {
          objc_enumerationMutation(information);
        }

        v28 = *(*(&v45 + 1) + 8 * i);
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v41, v50, 16, handlerCopy);
        if (v30)
        {
          v31 = *v42;
LABEL_21:
          v32 = 0;
          while (1)
          {
            if (*v42 != v31)
            {
              objc_enumerationMutation(v22);
            }

            objc_msgSend_objectForKeyedSubscript_(v18, v24, v28, v29);
            if (objc_opt_isKindOfClass())
            {
              break;
            }

            if (v30 == ++v32)
            {
              v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v24, &v41, v50, 16);
              if (v30)
              {
                goto LABEL_21;
              }

              goto LABEL_27;
            }
          }
        }

        else
        {
LABEL_27:
          objc_msgSend_removeObjectForKey_(v18, v24, v28, v29);
        }
      }

      v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(information, v24, &v45, v51, 16);
    }

    while (v25);
  }

  v33 = objc_sync_enter(selfCopy2);
  sub_19B88F3B8(v33, v34, v35, handlerCopy);
  objc_sync_exit(selfCopy2);
  os_activity_scope_leave(&state);
  return v39;
}

- (void)donateMicroLocationTruthTagWithTagUUID:(id)d correspondingToTriggerUUID:(id)iD handler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v24.opaque[0] = 0;
  v24.opaque[1] = 0;
  os_activity_scope_enter(v10, &v24);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v11 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 68289794;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    v29 = 2082;
    v30 = "activity";
    v31 = 2114;
    v32 = v12;
    v33 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v13 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v26 = 0;
    v27 = 2082;
    v28 = "";
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received truth label donation request for a recording trigger}", buf, 0x12u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  v15 = internal[1];
  v19 = objc_msgSend_UUIDString(d, v16, v17, v18);
  v23 = objc_msgSend_UUIDString(iD, v20, v21, v22);
  sub_19B88F5D4(v15, v19, v23, handler);
  objc_sync_exit(self);
  os_activity_scope_leave(&v24);
}

- (void)donateMicroLocationTruthTagWithTagUUID:(id)d forRecordingEventsBetweenDate:(id)date andDate:(id)andDate handler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  v12 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v29.opaque[0] = 0;
  v29.opaque[1] = 0;
  os_activity_scope_enter(v12, &v29);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v16 = NSStringFromSelector(a2);
    *buf = 68289794;
    v33 = 0;
    v34 = 2082;
    v35 = "";
    v36 = 2082;
    v37 = "activity";
    v38 = 2114;
    v39 = v16;
    v40 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (objc_msgSend_compare_(date, v14, andDate, v15) == 1)
  {
    if (handler)
    {
      v17 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E696A578];
      v31 = @"donateTruthTagLabelForClient failed because startDate is later than endDate";
      v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v18, &v31, &v30, 1);
      v21 = objc_msgSend_initWithDomain_code_userInfo_(v17, v20, @"kCLErrorDomainPrivate", 5, v19);
      (*(handler + 2))(handler, v21);
    }
  }

  else
  {
    if (qword_1EAFE4728 != -1)
    {
      dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
    }

    v22 = qword_1EAFE4730;
    if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
    {
      *buf = 68289026;
      v33 = 0;
      v34 = 2082;
      v35 = "";
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received truth label donation request between Dates}", buf, 0x12u);
    }

    internal = self->_internal;
    objc_sync_enter(self);
    v24 = internal[1];
    v28 = objc_msgSend_UUIDString(d, v25, v26, v27);
    sub_19B88F7EC(v24, v28, date, andDate, handler);
    objc_sync_exit(self);
  }

  os_activity_scope_leave(&v29);
}

- (void)startTranscriptSessionInstantlyWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B1CC(internal[1], 1, 0, completion);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

- (void)startTranscriptSessionWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B1CC(internal[1], 1, 1, completion);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

- (void)endTranscriptSessionWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B1CC(internal[1], 0, 0, completion);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

- (void)fetchTranscriptLocationsWithRadius:(double)radius sampleCount:(int)count center:(CLLocationCoordinate2D)center completionHandler:(id)handler
{
  longitude = center.longitude;
  latitude = center.latitude;
  v9 = *&count;
  v29 = *MEMORY[0x1E69E9840];
  v13 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v13, &v18);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v14 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 68289794;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    v24 = "activity";
    v25 = 2114;
    v26 = v15;
    v27 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B374(internal[1], v9, handler, radius, latitude, longitude, v17);
  objc_sync_exit(self);
  os_activity_scope_leave(&v18);
}

- (void)requestHistoricalLocationsWithPurposeKey:(NSString *)purposeKey sampleCount:(NSInteger)sampleCount completionHandler:(void *)handler
{
  v27 = *MEMORY[0x1E69E9840];
  v10 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v16.opaque[0] = 0;
  v16.opaque[1] = 0;
  os_activity_scope_enter(v10, &v16);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v11 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v14 = NSStringFromSelector(a2);
    *buf = 68289794;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2082;
    v22 = "activity";
    v23 = 2114;
    v24 = v14;
    v25 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v12, 0x40000, v13);
  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88B83C(internal[1], purposeKey, sampleCount, handler);
  objc_sync_exit(self);
  os_activity_scope_leave(&v16);
}

- (void)willPromptForTranscriptSessionWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88BCA4(internal[1], completion);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

- (void)isConsideredInRemoteAreaWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v6, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v8;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88C01C(internal[1], completion);
  objc_sync_exit(self);
  os_activity_scope_leave(&v10);
}

+ (id)metadataForHomekitActionSetEventWithUUID:(id)d name:(id)name type:(id)type clientName:(id)clientName source:(id)source homeName:(id)homeName
{
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setValue_forKey_(v14, v15, d, 0x1F0E71880);
  objc_msgSend_setValue_forKey_(v14, v16, name, 0x1F0E718A0);
  objc_msgSend_setValue_forKey_(v14, v17, type, 0x1F0E718C0);
  objc_msgSend_setValue_forKey_(v14, v18, clientName, 0x1F0E718E0);
  objc_msgSend_setValue_forKey_(v14, v19, source, 0x1F0E71900);
  objc_msgSend_setValue_forKey_(v14, v20, homeName, 0x1F0E71920);
  return v14;
}

+ (id)metadataForMicroLocationTruthTagEventWithTagUUID:(id)d
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_msgSend_setValue_forKey_(v4, v5, d, 0x1F0E71940);
  return v4;
}

- (void)purgeMicroLocationSemiSupervisedData
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to purge semi-supervised models}", buf, 0x12u);
  }

  objc_sync_enter(self);
  sub_19B890280();
  objc_sync_exit(self);
  os_activity_scope_leave(&v8);
}

- (void)purgeMicroLocationData
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (qword_1EAFE4728 != -1)
  {
    dispatch_once(&qword_1EAFE4728, &unk_1F0E6B720);
  }

  v7 = qword_1EAFE4730;
  if (os_log_type_enabled(qword_1EAFE4730, OS_LOG_TYPE_INFO))
  {
    *buf = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_INFO, "{msg%{public}.0s:received request to purge MicroLocation data}", buf, 0x12u);
  }

  objc_sync_enter(self);
  sub_19B89041C();
  objc_sync_exit(self);
  os_activity_scope_leave(&v8);
}

- (void)resetApps
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v11.opaque[0] = 0;
  v11.opaque[1] = 0;
  os_activity_scope_enter(v4, &v11);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    v16 = 2082;
    v17 = "activity";
    v18 = 2114;
    v19 = v6;
    v20 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = objc_sync_enter(self);
  sub_19B9BC420(v7, v8, v9, v10);
  objc_sync_exit(self);
  os_activity_scope_leave(&v11);
}

+ (id)activeLocationClientsWithInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLCopyActiveClientsUsingLocation();
  os_activity_scope_leave(&v9);
  return v7;
}

- (id)appsUsingLocationWithDetails
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLCopyAppsUsingLocation();
  os_activity_scope_leave(&v9);
  return v7;
}

+ (id)userLocationClientsWithInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLCopyAppsUsingLocation();
  os_activity_scope_leave(&v9);
  return v7;
}

- (id)technologiesInUse
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v4, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v6;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = MEMORY[0x1E695DFD8];
  v8 = CLCopyTechnologiesInUse();
  v11 = objc_msgSend_setWithArray_(v7, v9, v8, v10);
  os_activity_scope_leave(&v13);
  return v11;
}

- (id)_zAxisStatistics
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v4, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v6;
    v18 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v7 = CLCopyZaxisStats();
  os_activity_scope_leave(&v9);
  return v7;
}

- (void)addIdentifiableClient:(id)client
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    *&buf[4] = 0;
    *v27 = 2082;
    *&v27[2] = "";
    *&v27[10] = 2082;
    *&v27[12] = "activity";
    *&v27[20] = 2114;
    *&v27[22] = v8;
    v28 = 2050;
    selfCopy = self;
    v30 = 2050;
    clientCopy = client;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, client:%{public}p}", buf, 0x3Au);
  }

  if (client)
  {
    internal = self->_internal;
    objc_initWeak(&location, client);
    *buf = MEMORY[0x1E69E9820];
    *v27 = 3221225472;
    *&v27[8] = sub_19B898110;
    *&v27[16] = &unk_1E753D050;
    objc_copyWeak(&v27[24], &location);
    v10 = _Block_copy(buf);
    objc_destroyWeak(&v27[24]);
    objc_destroyWeak(&location);
    objc_sync_enter(self);
    objc_msgSend_addObject_(internal[35], v11, v10, v12);
    objc_sync_exit(self);
    objc_msgSend_setWeakClient_(client, v13, v10, v14);
    v18 = objc_msgSend_clientKeyForIdentityValidation(internal, v15, v16, v17);
    v22 = objc_msgSend_monitorLedgerAccessKey(internal, v19, v20, v21);
    objc_msgSend_updateIdentityToken_withStorageToken_(client, v23, v18, v22);
  }

  os_activity_scope_leave(&state);
}

- (void)removeIdentifiableClient:(id)client
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v26.opaque[0] = 0;
  v26.opaque[1] = 0;
  os_activity_scope_enter(v6, &v26);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    v15 = objc_msgSend_weakClient(client, v12, v13, v14);
    *buf = 68290306;
    v28 = 0;
    v29 = 2082;
    v30 = "";
    v31 = 2082;
    v32 = "activity";
    v33 = 2114;
    v34 = v11;
    v35 = 2050;
    selfCopy = self;
    v37 = 2050;
    clientCopy = client;
    v39 = 2050;
    v40 = v15;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, client:%{public}p, weakClient:%{public}p}", buf, 0x44u);
  }

  if (client && objc_msgSend_weakClient(client, v8, v9, v10))
  {
    internal = self->_internal;
    objc_sync_enter(self);
    v17 = internal[35];
    v21 = objc_msgSend_weakClient(client, v18, v19, v20);
    objc_msgSend_removeObject_(v17, v22, v21, v23);
    objc_msgSend_setWeakClient_(client, v24, 0, v25);
    objc_sync_exit(self);
  }

  os_activity_scope_leave(&v26);
}

- (NSString)processName
{
  v4 = objc_msgSend_processInfo(MEMORY[0x1E696AE30], a2, v2, v3);

  return objc_msgSend_processName(v4, v5, v6, v7);
}

- (void)onClientEvent:(int)event supportInfo:(id)info
{
  if (self->_internal)
  {
    switch(event)
    {
      case 0:
        v17 = copyLocationsFromLocationMessagePayload();
        v8 = objc_msgSend_objectForKeyedSubscript_(info, v6, @"ForceMapMatching", v7);
        v12 = objc_msgSend_BOOLValue(v8, v9, v10, v11);
        v15 = objc_msgSend_objectForKeyedSubscript_(info, v13, @"kCLClientEventKey", v14);
        objc_msgSend_onClientEventLocation_forceMapMatching_type_(self, v16, v17, v12, v15);

        break;
      case 1:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegistration_, info, info);
        break;
      case 3:

        MEMORY[0x1EEE66B58](self, sel_onClientEventLocationUnavailable_, info, info);
        break;
      case 12:

        MEMORY[0x1EEE66B58](self, sel_onClientEventHeading_, info, info);
        break;
      case 13:

        MEMORY[0x1EEE66B58](self, sel_onClientEventHeadingCalibration_, info, info);
        break;
      case 20:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegion_, info, info);
        break;
      case 21:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegionState_, info, info);
        break;
      case 22:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegionError_, info, info);
        break;
      case 23:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRanging_, info, info);
        break;
      case 24:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRangingError_, info, info);
        break;
      case 25:

        MEMORY[0x1EEE66B58](self, sel_onClientEventError_, info, info);
        break;
      case 27:

        MEMORY[0x1EEE66B58](self, sel_onClientEventAuthStatus_, info, info);
        break;
      case 28:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegionResponseDelayed_, info, info);
        break;
      case 29:

        MEMORY[0x1EEE66B58](self, sel_onClientEventRegionSetupCompleted_, info, info);
        break;
      case 30:

        MEMORY[0x1EEE66B58](self, sel_onClientEventAutopauseStatus_, info, info);
        break;
      case 31:

        MEMORY[0x1EEE66B58](self, sel_onClientEventBatch_, info, info);
        break;
      case 32:

        MEMORY[0x1EEE66B58](self, sel_onClientEventInterrupted_, info, info);
        break;
      case 33:

        MEMORY[0x1EEE66B58](self, sel_onClientEventVehicleSpeed_, info, info);
        break;
      case 34:

        MEMORY[0x1EEE66B58](self, sel_onClientEventVehicleHeading_, info, info);
        break;
      case 35:

        MEMORY[0x1EEE66B58](self, sel_onClientEventSignificantLocationVisit_, info, info);
        break;
      case 36:

        MEMORY[0x1EEE66B58](self, sel_onClientEventSignificantLocationVisitStateRequest_, info, info);
        break;
      case 40:

        MEMORY[0x1EEE66B58](self, sel_onClientEventPlaceInferenceResult_, info, info);
        break;
      case 41:

        MEMORY[0x1EEE66B58](self, sel_onClientEventPlaceInferenceError_, info, info);
        break;
      case 42:

        MEMORY[0x1EEE66B58](self, sel_onClientEventNoLocationWatchdog_, info, info);
        break;
      default:
        return;
    }
  }
}

- (void)onClientEventRegistration:(id)registration
{
  v54 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  internal = self->_internal;
  v9 = objc_msgSend_objectForKey_(registration, v7, @"kCLConnectionMessageClientKeyForIdentityValidation", v8);
  v12 = objc_msgSend_objectForKey_(registration, v10, @"kCLConnectionMessageMonitorLedgerAccessKey", v11);
  v13 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v13, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v14 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v17 = NSStringFromSelector(a2);
    buf = 68290050;
    v44 = 2082;
    v45 = "";
    v46 = 2082;
    v47 = "activity";
    v48 = 2114;
    v49 = v17;
    v50 = 2050;
    selfCopy = self;
    v52 = 2114;
    v53 = v9;
    _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, clientKey:%{public, location:escape_only}@}", &buf, 0x3Au);
  }

  if ((objc_msgSend_isEqualToString_(v9, v15, @"icom.apple.Home.HomeControlService:", v16) & 1) != 0 || objc_msgSend_isEqualToString_(v9, v18, @"icom.apple.Spotlight:", v19))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v22 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      buf = 68289026;
      v44 = 2082;
      v45 = "";
      _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:This CLLocationManager resolved to an invalid location client.}", &buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v23 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      buf = 68289026;
      v44 = 2082;
      v45 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "This CLLocationManager resolved to an invalid location client.", "{msg%{public}.0s:This CLLocationManager resolved to an invalid location client.}", &buf, 0x12u);
    }
  }

  objc_msgSend_setClientKeyForIdentityValidation_(internal, v20, v9, v21);
  objc_msgSend_setMonitorLedgerAccessKey_(internal, v24, v12, v25);
  v29 = objc_msgSend_copy(internal[35], v26, v27, v28);
  os_activity_scope_leave(&state);
  objc_sync_exit(self);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v37, v42, 16);
  if (v31)
  {
    v32 = *v38;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = (*(*(*(&v37 + 1) + 8 * i) + 16))();
        objc_msgSend_updateIdentityToken_withStorageToken_(v34, v35, v9, v12);
      }

      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v36, &v37, v42, 16);
    }

    while (v31);
  }
}

- (void)onClientEventAuthStatus:(id)status
{
  v60 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v7 = objc_msgSend_delegate(internal, a2, status, v3);
  v43 = 0;
  v42 = 0;
  if (CLClientGetAuthorizationStatusAndCorrectiveCompensation(status, &v43, &v42, &v42 + 1))
  {
    v8 = v43;
    if (v43 != 3)
    {
      *(internal + 60) = 0xBFF0000000000000;
    }

    objc_sync_enter(self);
    if (objc_msgSend_previousAuthorizationStatusValid(*(internal + 4), v9, v10, v11) && objc_msgSend_previousAuthorizationStatus(*(internal + 4), v12, v13, v14) == v8 && (v16 = objc_msgSend_limitsPrecision(*(internal + 4), v12, v15, v14), v42 == v16) && (isAuthorizedForWidgetUpdates = objc_msgSend_isAuthorizedForWidgetUpdates(*(internal + 4), v12, v17, v14), HIBYTE(v42) == isAuthorizedForWidgetUpdates))
    {

      objc_sync_exit(self);
    }

    else
    {
      v19 = v42;
      objc_msgSend_setLimitsPrecision_(*(internal + 4), v12, v42 != 0, v14);
      objc_msgSend_setPreviousAuthorizationStatus_(*(internal + 4), v20, v8, v21);
      objc_msgSend_setPreviousAuthorizationStatusValid_(*(internal + 4), v22, 1, v23);
      v24 = HIBYTE(v42);
      objc_msgSend_setIsAuthorizedForWidgetUpdates_(*(internal + 4), v25, HIBYTE(v42) != 0, v26);
      objc_sync_exit(self);
      selfCopy = self;
      if (objc_opt_respondsToSelector())
      {
        v28 = NSStringFromSelector(sel_locationManagerDidChangeAuthorization_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v29 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68290562;
          v45 = 0;
          v46 = 2082;
          v47 = "";
          v48 = 2050;
          selfCopy4 = self;
          v50 = 2050;
          v51 = v7;
          v52 = 2114;
          v53 = v28;
          v54 = 2050;
          v55 = v8;
          v56 = 1026;
          v57 = v19 != 0;
          v58 = 1026;
          v59 = v24 != 0;
          _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, authorizationStatus:%{public, location:CLClientAuthorizationStatus}lld, limitsPrecision:%{public}hhd, isAuthorizedForWidgetUpdates:%{public}hhd}", buf, 0x46u);
        }

        objc_msgSend_locationManagerDidChangeAuthorization_(v7, v30, self, v31);
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v35 = NSStringFromSelector(sel_locationManager_didReceiveApproval_);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v36 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68290050;
            v45 = 0;
            v46 = 2082;
            v47 = "";
            v48 = 2050;
            selfCopy4 = self;
            v50 = 2050;
            v51 = v7;
            v52 = 2114;
            v53 = v35;
            v54 = 1026;
            LODWORD(v55) = v8 == 3;
            _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, approved:%{public}hhd}", buf, 0x36u);
          }

          objc_msgSend_locationManager_didReceiveApproval_(v7, v37, self, v8 == 3);
        }

        if (objc_opt_respondsToSelector())
        {
          v38 = NSStringFromSelector(sel_locationManager_didChangeAuthorizationStatus_);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v39 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68290562;
            v45 = 0;
            v46 = 2082;
            v47 = "";
            v48 = 2050;
            selfCopy4 = self;
            v50 = 2050;
            v51 = v7;
            v52 = 2114;
            v53 = v38;
            v54 = 2050;
            v55 = v8;
            v56 = 1026;
            v57 = v19 != 0;
            v58 = 1026;
            v59 = v24 != 0;
            _os_log_impl(&dword_19B873000, v39, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, authorizationStatus:%{public, location:CLClientAuthorizationStatus}lld, limitsPrecision:%{public}hhd, isAuthorizedForWidgetUpdates:%{public}hhd}", buf, 0x46u);
          }

          objc_msgSend_locationManager_didChangeAuthorizationStatus_(v7, v40, self, v8);
        }
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v32 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_FAULT, "could not get updated authorization status", buf, 2u);
    }

    v33 = sub_19B87DD40();
    if ((*(v33 + 160) & 0x80000000) == 0 || (*(v33 + 164) & 0x80000000) == 0 || (*(v33 + 168) & 0x80000000) == 0 || *(v33 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v41[0] = 0;
      v34 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get updated authorization status", v41, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventAuthStatus:]", "CoreLocation: %s\n", v34);
      if (v34 != buf)
      {
        free(v34);
      }
    }
  }
}

- (void)onClientEventLocation:(id)location forceMapMatching:(BOOL)matching type:(id)type
{
  v104 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v10 = objc_msgSend_delegate(internal, a2, location, matching);
  if (!objc_msgSend_count(location, v11, v12, v13))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v24 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_FAULT, "Location event received with empty payload", buf, 2u);
    }

    v25 = sub_19B87DD40();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      LOWORD(v90[0]) = 0;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "Location event received with empty payload", v90, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventLocation:forceMapMatching:type:]", "CoreLocation: %s\n", v26);
      goto LABEL_17;
    }

    return;
  }

  if ((objc_msgSend_allowsMapCorrection(*(internal + 4), v14, v15, v16) & 1) == 0 && !matching)
  {
    objc_msgSend_makeObjectsPerformSelector_(location, v17, sel_unmatch, v19);
  }

  v95 = 0u;
  memset(v96, 0, 28);
  v94 = 0u;
  v92 = 0u;
  memset(v93, 0, sizeof(v93));
  v91 = 0u;
  memset(v90, 0, sizeof(v90));
  Object = objc_msgSend_lastObject(location, v17, v18, v19);
  if (Object)
  {
    objc_msgSend_clientLocation(Object, v21, v22, v23);
  }

  else
  {
    v95 = 0u;
    memset(v96, 0, 28);
    v94 = 0u;
    v92 = 0u;
    memset(v93, 0, sizeof(v93));
    v91 = 0u;
    memset(v90, 0, sizeof(v90));
  }

  if (objc_msgSend_count(location, v21, v22, v23) != 1)
  {
    goto LABEL_52;
  }

  if (*(internal + 60) >= 0.0 && sub_19B87F61C((internal + 40), v90, 0))
  {
    if (!*(internal + 43))
    {
      *(internal + 43) = DWORD1(v96[0]);
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v29 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v29, OS_LOG_TYPE_DEBUG, "New location is identical to old location; discarding", buf, 2u);
    }

    v30 = sub_19B87DD40();
    if (*(v30 + 160) > 1 || *(v30 + 164) > 1 || *(v30 + 168) > 1 || *(v30 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      LOWORD(v80) = 0;
      v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "New location is identical to old location; discarding", &v80, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventLocation:forceMapMatching:type:]", "CoreLocation: %s\n", v26);
LABEL_17:
      if (v26 != buf)
      {
        free(v26);
      }

      return;
    }

    return;
  }

  if (*(internal + 116) > *(v93 + 12))
  {
    if (type)
    {
      v31 = *(internal + 25);
      if (v31)
      {
        if ((objc_msgSend_isEqualToString_(v31, v27, type, v28) & 1) == 0)
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v78 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19B873000, v78, OS_LOG_TYPE_DEFAULT, "New location predates old location, and the event types differ; discarding", buf, 2u);
          }

          v79 = sub_19B87DD40();
          if (*(v79 + 160) > 1 || *(v79 + 164) > 1 || *(v79 + 168) > 1 || *(v79 + 152))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            LOWORD(v80) = 0;
            v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "New location predates old location, and the event types differ; discarding", &v80, 2);
            sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventLocation:forceMapMatching:type:]", "CoreLocation: %s\n", v26);
            goto LABEL_17;
          }

          return;
        }
      }
    }
  }

  if (*(&v90[1] + 4) >= 0.0)
  {
LABEL_52:
    v34 = *(internal + 25);
    if (v34)
    {
    }

    typeCopy = type;
    v36 = *(internal + 40);
    v37 = *(internal + 14);
    v38 = *(internal + 60);
    v39 = *(internal + 148);
    v84 = *(internal + 132);
    v85 = v39;
    v40 = *(internal + 180);
    v86 = *(internal + 164);
    v87 = v40;
    v88 = v36;
    v41 = *(internal + 84);
    v80 = *(internal + 68);
    v81 = v41;
    v42 = *(internal + 116);
    v82 = *(internal + 100);
    v83 = v42;
    v43 = v90[1];
    *(internal + 40) = v90[0];
    v44 = v93[0];
    *(internal + 120) = v93[1];
    *(internal + 104) = v44;
    v45 = v91;
    *(internal + 88) = v92;
    *(internal + 72) = v45;
    *(internal + 180) = *(v96 + 12);
    v46 = v95;
    *(internal + 168) = v96[0];
    v47 = v94;
    *(internal + 152) = v46;
    *(internal + 136) = v47;
    v48 = *(v90 + 4);
    v49 = *(v90 + 4) != 0.0;
    v50 = *(v90 + 12);
    v51 = *(&v90[1] + 4);
    if (*(v90 + 12) == 0.0)
    {
      v49 = 0;
    }

    *(internal + 25) = typeCopy;
    v89 = v37;
    *(internal + 56) = v43;
    if (v51 >= 0.0 && !v49)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v52 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290051;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 1026;
        *v98 = v48 != 0.0;
        *&v98[4] = 1026;
        *&v98[6] = v50 != 0.0;
        *&v98[10] = 1040;
        *&v98[12] = 156;
        *&v98[16] = 2101;
        *&v98[18] = v90;
        _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#NullIsland onClientEventLocation:forceMapMatching: got a latitude or longitude that was exactly zero, latIsNonzero:%{public}hhd, lonIsNonzero:%{public}hhd, location:%{sensitive, location:CLClientLocation}.*P}", buf, 0x2Eu);
      }
    }

    selfCopy = self;
    objc_sync_enter(self);
    if (objc_msgSend_requestingLocation(*(internal + 4), v54, v55, v56))
    {
      objc_msgSend_desiredAccuracy(*(internal + 4), v57, v58, v59);
      if ((*(&v90[1] + 4) > fmax(v63, 10.0) || CFAbsoluteTimeGetCurrent() - *(v93 + 12) >= 60.0) && (objc_msgSend_limitsPrecision(*(internal + 4), v60, v61, v62) & 1) == 0)
      {
LABEL_83:
        objc_sync_exit(self);
        return;
      }

      objc_msgSend_cancelLocationRequest(internal, v60, v61, v62);
      CLClientStopLocationUpdates_0(*(internal + 1));
    }

    if (objc_opt_respondsToSelector())
    {
      entr_act_modify();
      v64 = NSStringFromSelector(sel_locationManager_didUpdateLocations_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v65 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290563;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *v98 = self;
        *&v98[8] = 2050;
        *&v98[10] = v10;
        *&v98[18] = 2114;
        *&v98[20] = v64;
        *&v98[28] = 1040;
        *&v98[30] = 156;
        *&v98[34] = 2101;
        *&v98[36] = v90;
        *&v98[44] = 2114;
        *&v98[46] = type;
        _os_log_impl(&dword_19B873000, v65, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, location:%{sensitive, location:CLClientLocation}.*P, eventType:%{public, location:escape_only}@}", buf, 0x4Au);
      }

      objc_msgSend_locationManager_didUpdateLocations_(v10, v66, self, location);
    }

    else if (objc_opt_respondsToSelector())
    {
      if (v38 >= 0.0)
      {
        v68 = objc_alloc(MEMORY[0x1E6985C40]);
        *buf = v88;
        *&buf[16] = v89;
        *v98 = v38;
        v100 = v84;
        v101 = v85;
        v102 = v86;
        v103 = v87;
        *&v98[8] = v80;
        *&v98[24] = v81;
        *&v98[40] = v82;
        v99 = v83;
        v67 = objc_msgSend_initWithClientLocation_(v68, v69, buf, v70);
      }

      else
      {
        v67 = 0;
      }

      entr_act_modify();
      v71 = NSStringFromSelector(sel_locationManager_didUpdateToLocation_fromLocation_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v72 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *&buf[4] = 0;
        *&buf[8] = 2082;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *v98 = self;
        *&v98[8] = 2050;
        *&v98[10] = v10;
        *&v98[18] = 2114;
        *&v98[20] = v71;
        _os_log_impl(&dword_19B873000, v72, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", buf, 0x30u);
      }

      v76 = objc_msgSend_lastObject(location, v73, v74, v75);
      objc_msgSend_locationManager_didUpdateToLocation_fromLocation_(v10, v77, self, v76, v67);
    }

    else
    {
      entr_act_modify();
    }

    goto LABEL_83;
  }

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v32 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v32, OS_LOG_TYPE_DEFAULT, "Invalid location passed to client", buf, 2u);
  }

  v33 = sub_19B87DD40();
  if (*(v33 + 160) > 1 || *(v33 + 164) > 1 || *(v33 + 168) > 1 || *(v33 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    LOWORD(v80) = 0;
    v26 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Invalid location passed to client", &v80, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventLocation:forceMapMatching:type:]", "CoreLocation: %s\n", v26);
    goto LABEL_17;
  }
}

- (void)onClientEventLocationUnavailable:(id)unavailable
{
  v24 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = objc_msgSend_delegate(internal, a2, unavailable, v3);
  if (objc_msgSend_requestingLocation(internal[4], v7, v8, v9) & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v10 = NSStringFromSelector(sel_locationManager_didFailWithError_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v15[0] = 68289794;
      v15[1] = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2050;
      selfCopy = self;
      v20 = 2050;
      v21 = v6;
      v22 = 2114;
      v23 = v10;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate - location unavailable, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", v15, 0x30u);
    }

    v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v12, @"kCLErrorDomain", 0, 0);
    objc_msgSend_locationManager_didFailWithError_(v6, v14, self, v13);
  }
}

- (void)onClientEventHeading:(id)heading
{
  v28 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = objc_msgSend_delegate(internal, a2, heading, v3);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  if (CLClientGetHeading(internal[1], &v18))
  {
    objc_sync_enter(self);
    if (objc_opt_respondsToSelector())
    {
      v7 = [CLHeading alloc];
      *&buf[32] = v20;
      v25 = v21;
      v26 = v22;
      v27 = v23;
      *buf = v18;
      *&buf[16] = v19;
      v10 = objc_msgSend_initWithClientHeading_(v7, v8, buf, v9);
      entr_act_modify();
      v11 = NSStringFromSelector(sel_locationManager_didUpdateHeading_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v12 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290050;
        *&buf[8] = 2082;
        *&buf[4] = 0;
        *&buf[10] = "";
        *&buf[18] = 2050;
        *&buf[20] = self;
        *&buf[28] = 2050;
        *&buf[30] = v6;
        *&buf[38] = 2114;
        *&buf[40] = v11;
        LOWORD(v25) = 2114;
        *(&v25 + 2) = v10;
        _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, heading:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      objc_msgSend_locationManager_didUpdateHeading_(v6, v13, self, v10);
    }

    else
    {
      entr_act_modify();
    }

    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_FAULT, "could not get updated heading", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v17[0] = 0;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get updated heading", v17, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventHeading:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }
}

- (void)onClientEventHeadingCalibration:(id)calibration
{
  v28 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = objc_msgSend_delegate(internal, a2, calibration, v3);
  objc_sync_enter(self);
  if (objc_opt_respondsToSelector())
  {
    v7 = NSStringFromSelector(sel_locationManagerShouldDisplayHeadingCalibration_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289794;
      v19 = 0;
      v20 = 2082;
      v21 = "";
      v22 = 2050;
      selfCopy = self;
      v24 = 2050;
      v25 = v6;
      v26 = 2114;
      v27 = v7;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", buf, 0x30u);
    }

    if (objc_msgSend_locationManagerShouldDisplayHeadingCalibration_(v6, v9, self, v10))
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v11 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "CL: Invoking Compass Calibration HUD", buf, 2u);
      }

      v12 = sub_19B87DD40();
      if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v17[0] = 0;
        v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "CL: Invoking Compass Calibration HUD", v17, 2);
        sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventHeadingCalibration:]", "CoreLocation: %s\n", v13);
        if (v13 != buf)
        {
          free(v13);
        }
      }

      if (!CLClientShowHeadingCalibration(internal[1], 1))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v14 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "Could not show heading calibration", buf, 2u);
        }

        v15 = sub_19B87DD40();
        if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v17[0] = 0;
          v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "Could not show heading calibration", v17, 2);
          sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventHeadingCalibration:]", "CoreLocation: %s\n", v16);
          if (v16 != buf)
          {
            free(v16);
          }
        }
      }
    }
  }

  objc_sync_exit(self);
}

- (void)onClientEventPlaceInferenceResult:(id)result
{
  v31 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "in onClientEventPlaceInferenceResult for CLPlaceInferenceSubscription", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v26[0] = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "in onClientEventPlaceInferenceResult for CLPlaceInferenceSubscription", v26, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventPlaceInferenceResult:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  internal = self->_internal;
  v11 = objc_msgSend_objectForKey_(result, v7, @"kCLConnectionMessagePlaceInferencePlaceInferenceKey", v8);
  if (v11)
  {
    objc_msgSend_callPlaceInferenceHandlerWithResult_error_(self, v12, v11, 0);
  }

  else
  {
    v14 = objc_msgSend_objectForKey_(result, v12, @"kCLConnectionMessagePlaceInferencePlaceInferenceFallbackLocationKey", v13);
    if (v14)
    {
      v15 = v14;
      v16 = objc_alloc_init(CLGeocoder);
      objc_msgSend__setResponseSilo_(v16, v17, internal[36], v18);
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = sub_19B8A978C;
      v25[3] = &unk_1E753D0E8;
      v25[4] = v16;
      v25[5] = self;
      v25[6] = v15;
      objc_msgSend_reverseGeocodeLocation_completionHandler_(v16, v19, v15, v25);
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v20 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289026;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got a place inference result without a result!?}", buf, 0x12u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v21 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289026;
        v28 = 0;
        v29 = 2082;
        v30 = "";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got a place inference result without a result!?", "{msg%{public}.0s:Got a place inference result without a result!?}", buf, 0x12u);
      }

      v23 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v22, @"kCLErrorDomainPrivate", 5, 0);
      objc_msgSend_callPlaceInferenceHandlerWithResult_error_(self, v24, 0, v23);
    }
  }
}

- (void)onClientEventPlaceInferenceError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "in onClientEventPlaceInferenceError for CLPlaceInferenceSubscription", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15[0] = 0;
    v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "in onClientEventPlaceInferenceError for CLPlaceInferenceSubscription", v15, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventPlaceInferenceError:]", "CoreLocation: %s\n", v9);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v11 = objc_msgSend_objectForKey_(error, v7, @"kCLConnectionMessageError", v8);
  if (!v11)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Got a place inference error without an error!?}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v13 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Got a place inference error without an error!?", "{msg%{public}.0s:Got a place inference error without an error!?}", buf, 0x12u);
    }

    v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v14, @"kCLErrorDomainPrivate", 5, 0);
  }

  objc_msgSend_callPlaceInferenceHandlerWithResult_error_(self, v10, 0, v11);
}

- (void)callPlaceInferenceHandlerWithResult:(id)result error:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  objc_sync_enter(self);
  v8 = internal[31];
  internal[31] = 0;
  objc_sync_exit(self);
  if (v8)
  {
    v9 = v8[2];

    v9(v8, result, error);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 68289026;
      v11[1] = 0;
      v12 = 2082;
      v13 = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Got place inference result without a handler block}", v11, 0x12u);
    }
  }
}

- (void)onClientEventError:(id)error
{
  v41 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v7 = objc_msgSend_delegate(internal, a2, error, v3);
  v28 = 0;
  v27 = 0;
  if (CLClientGetError(error, &v27, v8, v9))
  {
    if (v27 == 1)
    {
      if (dyld_program_sdk_at_least() && objc_msgSend_requestingLocation(*(internal + 4), v10, v11, v12))
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v13 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68289026;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Location access was denied; bailing early cancelling requestLocation}", buf, 0x12u);
        }

        objc_msgSend_cancelLocationRequest(internal, v14, v15, v16);
        CLClientStopLocationUpdates_0(*(internal + 1));
      }

      else
      {
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v20 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
        {
          *buf = 68289026;
          v30 = 0;
          v31 = 2082;
          v32 = "";
          _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Location access was denied; but not bailing early}", buf, 0x12u);
        }
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v22 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v21, @"kCLErrorDomain", v27, 0);
      v23 = NSStringFromSelector(sel_locationManager_didFailWithError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v24 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290050;
        v31 = 2082;
        v30 = 0;
        v32 = "";
        v33 = 2050;
        selfCopy = self;
        v35 = 2050;
        v36 = v7;
        v37 = 2114;
        v38 = v23;
        v39 = 2114;
        v40 = v22;
        _os_log_impl(&dword_19B873000, v24, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      objc_msgSend_locationManager_didFailWithError_(v7, v25, self, v22);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v17 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v17, OS_LOG_TYPE_FAULT, "could not get error", buf, 2u);
    }

    v18 = sub_19B87DD40();
    if ((*(v18 + 160) & 0x80000000) == 0 || (*(v18 + 164) & 0x80000000) == 0 || (*(v18 + 168) & 0x80000000) == 0 || *(v18 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v26[0] = 0;
      v19 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get error", v26, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventError:]", "CoreLocation: %s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }
  }
}

- (void)onClientEventRegion:(id)region
{
  v229 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v7 = objc_msgSend_delegate(internal, a2, region, v3);
  v208 = 0;
  v207 = 0;
  if (sub_19B88D5D0(region, &v208, &v207))
  {
    v8 = v208;
    if (v208)
    {
      v9 = v208;
      if (v207 == 1)
      {
        if (objc_opt_respondsToSelector())
        {
          v55 = internal[1];
          v56 = objc_msgSend_identifier(v8, v52, v53, v54);
          v60 = objc_msgSend_UTF8String(v56, v57, v58, v59);
          v64 = objc_msgSend_onBehalfOfBundleId(v8, v61, v62, v63);
          v68 = objc_msgSend_UTF8String(v64, v65, v66, v67);
          sub_19B890864(v55, 4, 720896, 1, v60, v68);
          v69 = NSStringFromSelector(sel_locationManager_didExit_completion_);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v70 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v74 = objc_msgSend_identifier(v8, v71, v72, v73);
            objc_msgSend_center(v8, v75, v76, v77);
            v79 = v78;
            objc_msgSend_center(v8, v80, v81, v82);
            v84 = v83;
            objc_msgSend_radius(v8, v85, v86, v87);
            *buf = 68290819;
            v210 = 0;
            v211 = 2082;
            v212 = "";
            v213 = 2050;
            selfCopy7 = self;
            v215 = 2050;
            v216 = v7;
            v217 = 2114;
            v218 = v69;
            v219 = 2113;
            v220 = v74;
            v221 = 2053;
            v222 = v79;
            v223 = 2053;
            v224 = v84;
            v225 = 2050;
            v226 = v88;
            _os_log_impl(&dword_19B873000, v70, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
          }

          objc_msgSend_locationManager_didExit_completion_(v7, v71, self, v8, &unk_1F0E6B6C0);
        }

        else
        {
          v128 = objc_opt_respondsToSelector();
          v129 = internal[1];
          v133 = objc_msgSend_identifier(v8, v130, v131, v132);
          v137 = objc_msgSend_UTF8String(v133, v134, v135, v136);
          v141 = objc_msgSend_onBehalfOfBundleId(v8, v138, v139, v140);
          v145 = objc_msgSend_UTF8String(v141, v142, v143, v144);
          if (v128)
          {
            sub_19B890864(v129, 4, 720896, 1, v137, v145);
            v146 = NSStringFromSelector(sel_locationManager_didExitRegion_);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v147 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              v151 = objc_msgSend_identifier(v8, v148, v149, v150);
              objc_msgSend_center(v8, v152, v153, v154);
              v156 = v155;
              objc_msgSend_center(v8, v157, v158, v159);
              v161 = v160;
              objc_msgSend_radius(v8, v162, v163, v164);
              *buf = 68290819;
              v210 = 0;
              v211 = 2082;
              v212 = "";
              v213 = 2050;
              selfCopy7 = self;
              v215 = 2050;
              v216 = v7;
              v217 = 2114;
              v218 = v146;
              v219 = 2113;
              v220 = v151;
              v221 = 2053;
              v222 = v156;
              v223 = 2053;
              v224 = v161;
              v225 = 2050;
              v226 = v165;
              _os_log_impl(&dword_19B873000, v147, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
            }

            objc_msgSend_locationManager_didExitRegion_(v7, v148, self, v8);
          }

          else
          {
            sub_19B890864(v129, 4, 720896, 0, v137, v145);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v167 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289282;
              v210 = 0;
              v211 = 2082;
              v212 = "";
              v213 = 2050;
              selfCopy7 = self;
              _os_log_impl(&dword_19B873000, v167, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring event, no delegate, self:%{public}p}", buf, 0x1Cu);
            }
          }
        }

        v89 = 2;
      }

      else if (v207)
      {
        v89 = 0;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v13 = internal[1];
          v14 = objc_msgSend_identifier(v8, v10, v11, v12);
          v18 = objc_msgSend_UTF8String(v14, v15, v16, v17);
          v22 = objc_msgSend_onBehalfOfBundleId(v8, v19, v20, v21);
          v26 = objc_msgSend_UTF8String(v22, v23, v24, v25);
          sub_19B890864(v13, 4, 655360, 1, v18, v26);
          v27 = NSStringFromSelector(sel_locationManager_didEnter_completion_);
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v28 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            v32 = objc_msgSend_identifier(v8, v29, v30, v31);
            objc_msgSend_center(v8, v33, v34, v35);
            v37 = v36;
            objc_msgSend_center(v8, v38, v39, v40);
            v42 = v41;
            objc_msgSend_radius(v8, v43, v44, v45);
            *buf = 68290819;
            v210 = 0;
            v211 = 2082;
            v212 = "";
            v213 = 2050;
            selfCopy7 = self;
            v215 = 2050;
            v216 = v7;
            v217 = 2114;
            v218 = v27;
            v219 = 2113;
            v220 = v32;
            v221 = 2053;
            v222 = v37;
            v223 = 2053;
            v224 = v42;
            v225 = 2050;
            v226 = v46;
            _os_log_impl(&dword_19B873000, v28, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
          }

          objc_msgSend_locationManager_didEnter_completion_(v7, v29, self, v8, &unk_1F0E6B6C0);
        }

        else
        {
          v90 = objc_opt_respondsToSelector();
          v91 = internal[1];
          v95 = objc_msgSend_identifier(v8, v92, v93, v94);
          v99 = objc_msgSend_UTF8String(v95, v96, v97, v98);
          v103 = objc_msgSend_onBehalfOfBundleId(v8, v100, v101, v102);
          v107 = objc_msgSend_UTF8String(v103, v104, v105, v106);
          if (v90)
          {
            sub_19B890864(v91, 4, 655360, 1, v99, v107);
            v108 = NSStringFromSelector(sel_locationManager_didEnterRegion_);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v109 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              v113 = objc_msgSend_identifier(v8, v110, v111, v112);
              objc_msgSend_center(v8, v114, v115, v116);
              v118 = v117;
              objc_msgSend_center(v8, v119, v120, v121);
              v123 = v122;
              objc_msgSend_radius(v8, v124, v125, v126);
              *buf = 68290819;
              v210 = 0;
              v211 = 2082;
              v212 = "";
              v213 = 2050;
              selfCopy7 = self;
              v215 = 2050;
              v216 = v7;
              v217 = 2114;
              v218 = v108;
              v219 = 2113;
              v220 = v113;
              v221 = 2053;
              v222 = v118;
              v223 = 2053;
              v224 = v123;
              v225 = 2050;
              v226 = v127;
              _os_log_impl(&dword_19B873000, v109, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
            }

            objc_msgSend_locationManager_didEnterRegion_(v7, v110, self, v8);
          }

          else
          {
            sub_19B890864(v91, 4, 655360, 0, v99, v107);
            if (qword_1ED519088 != -1)
            {
              dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
            }

            v166 = qword_1ED519090;
            if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 68289282;
              v210 = 0;
              v211 = 2082;
              v212 = "";
              v213 = 2050;
              selfCopy7 = self;
              _os_log_impl(&dword_19B873000, v166, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring event, no delegate, self:%{public}p}", buf, 0x1Cu);
            }
          }
        }

        v89 = 1;
      }

      v168 = objc_opt_respondsToSelector();
      v169 = internal[1];
      v173 = objc_msgSend_identifier(v8, v170, v171, v172);
      v177 = objc_msgSend_UTF8String(v173, v174, v175, v176);
      v181 = objc_msgSend_onBehalfOfBundleId(v8, v178, v179, v180);
      v185 = objc_msgSend_UTF8String(v181, v182, v183, v184);
      if (v168)
      {
        sub_19B890864(v169, 4, 720896, 1, v177, v185);
        v186 = NSStringFromSelector(sel_locationManager_didDetermineState_forRegion_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v187 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v191 = objc_msgSend_identifier(v8, v188, v189, v190);
          objc_msgSend_center(v8, v192, v193, v194);
          v196 = v195;
          objc_msgSend_center(v8, v197, v198, v199);
          v201 = v200;
          objc_msgSend_radius(v8, v202, v203, v204);
          *buf = 68291075;
          v210 = 0;
          v211 = 2082;
          v212 = "";
          v213 = 2050;
          selfCopy7 = self;
          v215 = 2050;
          v216 = v7;
          v217 = 2114;
          v218 = v186;
          v219 = 2050;
          v220 = v89;
          v221 = 2113;
          v222 = v191;
          v223 = 2053;
          v224 = v196;
          v225 = 2053;
          v226 = v201;
          v227 = 2050;
          v228 = v205;
          _os_log_impl(&dword_19B873000, v187, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, state:%{public, location:CLRegionState}lld, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x62u);
        }

        objc_msgSend_locationManager_didDetermineState_forRegion_(v7, v188, self, v89, v8);
      }

      else
      {
        sub_19B890864(v169, 4, 720896, 0, v177, v185);
      }
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v50 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289026;
        v210 = 0;
        v211 = 2082;
        v212 = "";
        _os_log_impl(&dword_19B873000, v50, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Fence: onClientEventRegion, unable to fetch region}", buf, 0x12u);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v51 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289026;
        v210 = 0;
        v211 = 2082;
        v212 = "";
        _os_signpost_emit_with_name_impl(&dword_19B873000, v51, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Fence: onClientEventRegion, unable to fetch region", "{msg%{public}.0s:Fence: onClientEventRegion, unable to fetch region}", buf, 0x12u);
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v47 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_FAULT, "could not get region monitoring event", buf, 2u);
    }

    v48 = sub_19B87DD40();
    if ((*(v48 + 160) & 0x80000000) == 0 || (*(v48 + 164) & 0x80000000) == 0 || (*(v48 + 168) & 0x80000000) == 0 || *(v48 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v206[0] = 0;
      v49 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get region monitoring event", v206, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegion:]", "CoreLocation: %s\n", v49);
      if (v49 != buf)
      {
        free(v49);
      }
    }
  }
}

- (void)onClientEventRegionState:(id)state
{
  v94 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v7 = objc_msgSend_delegate(internal, a2, state, v3);
  v73 = 0;
  v72 = 0;
  if (sub_19B88D668(state, &v73, &v72))
  {
    v8 = v73;
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v19 = internal[1];
      v20 = objc_msgSend_identifier(v73, v9, v10, v11);
      v24 = objc_msgSend_UTF8String(v20, v21, v22, v23);
      v28 = objc_msgSend_onBehalfOfBundleId(v73, v25, v26, v27);
      v32 = objc_msgSend_UTF8String(v28, v29, v30, v31);
      sub_19B890864(v19, 4, 720896, 0, v24, v32);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v33 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v75 = 0;
        v76 = 2082;
        v77 = "";
        v78 = 2050;
        selfCopy2 = self;
        _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring state request, no delegate, self:%{public}p}", buf, 0x1Cu);
      }

      goto LABEL_39;
    }

    if (sub_19B8AB46C(v73) < 4)
    {
      v15 = v72;
      if (v72 != 1)
      {
        if (v72 == 2)
        {
          v15 = 2;
        }

        else
        {
          if (qword_1ED519088 != -1)
          {
            dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
          }

          v36 = qword_1ED519090;
          if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68289282;
            v75 = 0;
            v76 = 2082;
            v77 = "";
            v78 = 2050;
            selfCopy2 = v72;
            _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Fence: onClientEventRegionState, unknown state, regionState:%{public, location:CLClientRegionState}lld}", buf, 0x1Cu);
          }

          v15 = 0;
        }
      }

      v37 = internal[1];
      v38 = objc_msgSend_identifier(v73, v12, v13, v14);
      v42 = objc_msgSend_UTF8String(v38, v39, v40, v41);
      v46 = objc_msgSend_onBehalfOfBundleId(v73, v43, v44, v45);
      v50 = objc_msgSend_UTF8String(v46, v47, v48, v49);
      sub_19B890864(v37, 4, 720896, 1, v42, v50);
      v51 = NSStringFromSelector(sel_locationManager_didDetermineState_forRegion_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v52 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v56 = objc_msgSend_identifier(v73, v53, v54, v55);
        objc_msgSend_center(v73, v57, v58, v59);
        v61 = v60;
        objc_msgSend_center(v73, v62, v63, v64);
        v66 = v65;
        objc_msgSend_radius(v73, v67, v68, v69);
        *buf = 68291075;
        v75 = 0;
        v76 = 2082;
        v77 = "";
        v78 = 2050;
        selfCopy2 = self;
        v80 = 2050;
        v81 = v7;
        v82 = 2114;
        v83 = v51;
        v84 = 2050;
        v85 = v15;
        v86 = 2113;
        v87 = v56;
        v88 = 2053;
        v89 = v61;
        v90 = 2053;
        v91 = v66;
        v92 = 2050;
        v93 = v70;
        _os_log_impl(&dword_19B873000, v52, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, state:%{public, location:CLRegionState}lld, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x62u);
      }

      objc_msgSend_locationManager_didDetermineState_forRegion_(v7, v53, self, v15, v73);
LABEL_39:

      return;
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v34 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v75 = 0;
      v76 = 2082;
      v77 = "";
      v78 = 2050;
      selfCopy2 = 4;
      _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Fence: onClientEventRegionState, unknown region type, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v35 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v75 = 0;
      v76 = 2082;
      v77 = "";
      v78 = 2050;
      selfCopy2 = 4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Fence: onClientEventRegionState, unknown region type", "{msg%{public}.0s:Fence: onClientEventRegionState, unknown region type, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_FAULT, "could not get the region state", buf, 2u);
    }

    v17 = sub_19B87DD40();
    if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v71[0] = 0;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get the region state", v71, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegionState:]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }
}

- (void)onClientEventRegionError:(id)error
{
  v61 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_delegate(self->_internal, a2, error, v3);
  v40 = 0;
  v39 = 0;
  v38 = 0;
  if (sub_19B88D70C(error, &v40, &v38))
  {
    v7 = v40;
    if (sub_19B8AB46C(v40) >= 4)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v8 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        v42 = 0;
        v43 = 2082;
        v44 = "";
        v45 = 2050;
        selfCopy3 = 4;
        _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Fence: onClientEventRegionError, unknown region type, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v9 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289282;
        v42 = 0;
        v43 = 2082;
        v44 = "";
        v45 = 2050;
        selfCopy3 = 4;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Fence: onClientEventRegionError, unknown region type", "{msg%{public}.0s:Fence: onClientEventRegionError, unknown region type, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
      }
    }

    selfCopy = self;
    if (objc_opt_respondsToSelector())
    {
      v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v11, @"kCLErrorDomain", v38, 0);
      v13 = NSStringFromSelector(sel_locationManager_monitoringDidFailForRegion_withError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_msgSend_identifier(v40, v15, v16, v17);
        objc_msgSend_center(v40, v19, v20, v21);
        v23 = v22;
        objc_msgSend_center(v40, v24, v25, v26);
        v28 = v27;
        objc_msgSend_radius(v40, v29, v30, v31);
        *buf = 68291075;
        v42 = 0;
        v43 = 2082;
        v44 = "";
        v45 = 2050;
        selfCopy3 = self;
        v47 = 2050;
        v48 = v6;
        v49 = 2114;
        v50 = v13;
        v51 = 2114;
        v52 = v12;
        v53 = 2113;
        v54 = v18;
        v55 = 2053;
        v56 = v23;
        v57 = 2053;
        v58 = v28;
        v59 = 2050;
        v60 = v32;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x62u);
      }

      objc_msgSend_locationManager_monitoringDidFailForRegion_withError_(v6, v15, self, v40, v12);
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v36 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v42 = 0;
        v43 = 2082;
        v44 = "";
        v45 = 2050;
        selfCopy3 = self;
        _os_log_impl(&dword_19B873000, v36, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring failure, no delegate, self:%{public}p}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v33 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v33, OS_LOG_TYPE_FAULT, "could not get region monitoring event", buf, 2u);
    }

    v34 = sub_19B87DD40();
    if ((*(v34 + 160) & 0x80000000) == 0 || (*(v34 + 164) & 0x80000000) == 0 || (*(v34 + 168) & 0x80000000) == 0 || *(v34 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v37 = 0;
      v35 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get region monitoring event", &v37, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegionError:]", "CoreLocation: %s\n", v35);
      if (v35 != buf)
      {
        free(v35);
      }
    }
  }
}

- (void)onClientEventRanging:(id)ranging
{
  v70 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v7 = objc_msgSend_delegate(internal, a2, ranging, v3);
  v8 = objc_opt_respondsToSelector();
  v9 = objc_opt_respondsToSelector();
  v10 = v9;
  if (v8 & 1) != 0 || (v9)
  {
    v56 = 0;
    v57 = 0;
    if (sub_19B88DD54(ranging, &v57, &v56))
    {
      v51 = v57;
      v11 = objc_alloc(MEMORY[0x1E695DF70]);
      cf = v56;
      v15 = objc_msgSend_count(v56, v12, v13, v14);
      v53 = objc_msgSend_initWithCapacity_(v11, v16, v15, v17);
      v54[0] = MEMORY[0x1E69E9820];
      v54[1] = 3221225472;
      v54[2] = sub_19B8ABFD0;
      v54[3] = &unk_1E753D110;
      v54[4] = v53;
      objc_msgSend_enumerateObjectsUsingBlock_(cf, v18, v54, v19);
      v20 = MEMORY[0x1E695DEC8];
      v22 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v21, @"proximity", 1);
      v24 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x1E696AEB0], v23, @"accuracy", 1);
      v27 = objc_msgSend_arrayWithObjects_(v20, v25, v22, v26, v24, 0);
      objc_msgSend_sortUsingDescriptors_(v53, v28, v27, v29);
      entr_act_modify();
      v33 = objc_msgSend_beaconIdentityConstraint(v51, v30, v31, v32);
      objc_sync_enter(self);
      v37 = objc_msgSend_rangedConstraints(internal, v34, v35, v36);
      LODWORD(v22) = objc_msgSend_containsObject_(v37, v38, v33, v39);
      objc_sync_exit(self);
      if (v10 & v22)
      {
        v40 = NSStringFromSelector(sel_locationManager_didRangeBeacons_satisfyingConstraint_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v41 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
        {
          *buf = 68290051;
          v59 = 0;
          v60 = 2082;
          v61 = "";
          v62 = 2050;
          selfCopy2 = self;
          v64 = 2050;
          v65 = v7;
          v66 = 2114;
          v67 = v40;
          v68 = 2113;
          v69 = v33;
          _os_log_impl(&dword_19B873000, v41, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, constraint:%{private, location:escape_only}@}", buf, 0x3Au);
        }

        objc_msgSend_locationManager_didRangeBeacons_satisfyingConstraint_(v7, v42, self, v53, v33);
      }

      else if (v8)
      {
        v46 = NSStringFromSelector(sel_locationManager_didRangeBeacons_inRegion_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v47 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
        {
          *buf = 68290051;
          v59 = 0;
          v60 = 2082;
          v61 = "";
          v62 = 2050;
          selfCopy2 = self;
          v64 = 2050;
          v65 = v7;
          v66 = 2114;
          v67 = v46;
          v68 = 2113;
          v69 = v51;
          _os_log_impl(&dword_19B873000, v47, OS_LOG_TYPE_INFO, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region:%{private, location:escape_only}@}", buf, 0x3Au);
        }

        objc_msgSend_locationManager_didRangeBeacons_inRegion_(v7, v48, self, v53, v51);
      }

      v49 = v57;
      v50 = v53;
      CFRelease(cf);
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v43 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v43, OS_LOG_TYPE_FAULT, "could not get ranged beacons", buf, 2u);
      }

      v44 = sub_19B87DD40();
      if ((*(v44 + 160) & 0x80000000) == 0 || (*(v44 + 164) & 0x80000000) == 0 || (*(v44 + 168) & 0x80000000) == 0 || *(v44 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v55[0] = 0;
        v45 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get ranged beacons", v55, 2);
        sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRanging:]", "CoreLocation: %s\n", v45);
        if (v45 != buf)
        {
          free(v45);
        }
      }
    }
  }

  else
  {

    entr_act_modify();
  }
}

- (void)onClientEventRangingError:(id)error
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_delegate(self->_internal, a2, error, v3);
  v7 = objc_opt_respondsToSelector();
  v8 = objc_opt_respondsToSelector();
  v9 = v8;
  if (v7 & 1) != 0 || (v8)
  {
    v33 = 0;
    v32 = 0;
    v31 = 0;
    if (sub_19B88DE40(error, &v33, &v31))
    {
      v10 = v33;
      v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v11, @"kCLErrorDomain", v31, 0);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v13 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289538;
        v35 = 0;
        v36 = 2082;
        v37 = "";
        v38 = 2050;
        selfCopy3 = self;
        v40 = 2050;
        v41 = v6;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering range error to client's delegate, self:%{public}p, delegate:%{public}p}", buf, 0x26u);
      }

      v14 = v33;
      v15 = v33;
      if (v9)
      {
        v19 = objc_msgSend_beaconIdentityConstraint(v14, v16, v17, v18);
        v20 = NSStringFromSelector(sel_locationManager_didFailRangingBeaconsForConstraint_error_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v21 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68290307;
          v35 = 0;
          v36 = 2082;
          v37 = "";
          v38 = 2050;
          selfCopy3 = self;
          v40 = 2050;
          v41 = v6;
          v42 = 2114;
          v43 = v20;
          v44 = 2113;
          v45 = v19;
          v46 = 2114;
          v47 = v12;
          _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, constraint:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x44u);
        }

        objc_msgSend_locationManager_didFailRangingBeaconsForConstraint_error_(v6, v22, self, v19, v12);
      }

      else
      {
        v26 = NSStringFromSelector(sel_locationManager_rangingBeaconsDidFailForRegion_withError_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v27 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68290307;
          v35 = 0;
          v36 = 2082;
          v37 = "";
          v38 = 2050;
          selfCopy3 = self;
          v40 = 2050;
          v41 = v6;
          v42 = 2114;
          v43 = v26;
          v44 = 2113;
          v45 = v14;
          v46 = 2114;
          v47 = v12;
          _os_log_impl(&dword_19B873000, v27, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region:%{private, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x44u);
        }

        objc_msgSend_locationManager_rangingBeaconsDidFailForRegion_withError_(v6, v28, self, v14, v12);
      }

      v29 = v33;
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v23 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v23, OS_LOG_TYPE_FAULT, "could not get ranging error", buf, 2u);
      }

      v24 = sub_19B87DD40();
      if ((*(v24 + 160) & 0x80000000) == 0 || (*(v24 + 164) & 0x80000000) == 0 || (*(v24 + 168) & 0x80000000) == 0 || *(v24 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v30 = 0;
        v25 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get ranging error", &v30, 2);
        sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRangingError:]", "CoreLocation: %s\n", v25);
        if (v25 != buf)
        {
          free(v25);
        }
      }
    }
  }
}

- (void)onClientEventRegionResponseDelayed:(id)delayed
{
  v62 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_delegate(self->_internal, a2, delayed, v3);
  v40 = 0;
  v41 = 0;
  v39 = 0;
  if (sub_19B88D7B4(delayed, &v41, &v39, &v40))
  {
    v7 = v41;
    v8 = v40;
    selfCopy = self;
    if (objc_opt_respondsToSelector())
    {
      if (v39)
      {
        v11 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v10, v40, @"kCLErrorUserInfoAlternateRegionKey");
        v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v12, @"kCLErrorDomain", 7, v11);
      }

      else
      {
        v13 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v10, @"kCLErrorDomain", 7, 0);
      }

      v17 = v13;
      v18 = NSStringFromSelector(sel_locationManager_monitoringDidFailForRegion_withError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v19 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_msgSend_identifier(v41, v20, v21, v22);
        objc_msgSend_center(v41, v24, v25, v26);
        v28 = v27;
        objc_msgSend_center(v41, v29, v30, v31);
        v33 = v32;
        objc_msgSend_radius(v41, v34, v35, v36);
        *buf = 68291075;
        v43 = 0;
        v44 = 2082;
        v45 = "";
        v46 = 2050;
        selfCopy2 = self;
        v48 = 2050;
        v49 = v6;
        v50 = 2114;
        v51 = v18;
        v52 = 2114;
        v53 = v17;
        v54 = 2113;
        v55 = v23;
        v56 = 2053;
        v57 = v28;
        v58 = 2053;
        v59 = v33;
        v60 = 2050;
        v61 = v37;
        _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x62u);
      }

      objc_msgSend_locationManager_monitoringDidFailForRegion_withError_(v6, v20, self, v41, v17);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_FAULT, "could not get region monitoring event", buf, 2u);
    }

    v15 = sub_19B87DD40();
    if ((*(v15 + 160) & 0x80000000) == 0 || (*(v15 + 164) & 0x80000000) == 0 || (*(v15 + 168) & 0x80000000) == 0 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v38[0] = 0;
      v16 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get region monitoring event", v38, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegionResponseDelayed:]", "CoreLocation: %s\n", v16);
      if (v16 != buf)
      {
        free(v16);
      }
    }
  }
}

- (void)onClientEventNoLocationWatchdog:(id)watchdog
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_delegate(self->_internal, a2, watchdog, v3);
  v17 = 0.0;
  if (sub_19B88D8AC(watchdog, &v17))
  {
    v7 = v17;
    if (objc_opt_respondsToSelector())
    {
      v8 = NSStringFromSelector(sel_locationManager_didNotReceiveLocationUpdatesForRegionMonitoringInInterval_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v9 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290050;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2050;
        selfCopy2 = self;
        v24 = 2050;
        v25 = v6;
        v26 = 2114;
        v27 = v8;
        v28 = 2050;
        v29 = v7;
        _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, duration_s:%{public}.09f}", buf, 0x3Au);
      }

      objc_msgSend_locationManager_didNotReceiveLocationUpdatesForRegionMonitoringInInterval_(v6, v10, self, v11, v7);
    }

    else
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v15 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289282;
        v19 = 0;
        v20 = 2082;
        v21 = "";
        v22 = 2050;
        selfCopy2 = self;
        _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Delivering region monitoring watchdog, no delegate, self:%{public}p}", buf, 0x1Cu);
      }
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v12 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_FAULT, "could not get updated paused state", buf, 2u);
    }

    v13 = sub_19B87DD40();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v16 = 0;
      v14 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get updated paused state", &v16, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventNoLocationWatchdog:]", "CoreLocation: %s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }
  }
}

- (void)onClientEventRegionSetupCompleted:(id)completed
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_delegate(self->_internal, a2, completed, v3);
  v37 = 0;
  if (CLClientPopulateRegionFromInfo(&v37, completed))
  {
    v7 = v37;
    v8 = v37;
    v9 = sub_19B8AB46C(v7);
    if (v9 >= 4)
    {
      v33 = v9;
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v34 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
      {
        *buf = 68289282;
        v39 = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2050;
        selfCopy = v33;
        _os_log_impl(&dword_19B873000, v34, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Client region type is not supported.\n, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v35 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289282;
        v39 = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2050;
        selfCopy = v33;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v35, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Client region type is not supported.\n", "{msg%{public}.0s:Client region type is not supported.\n, regionType:%{public, location:CLClientRegionType}lld}", buf, 0x1Cu);
      }
    }

    else if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = NSStringFromSelector(sel_locationManager_didStartMonitoringForRegion_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v11 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        v15 = objc_msgSend_identifier(v7, v12, v13, v14);
        objc_msgSend_center(v7, v16, v17, v18);
        v20 = v19;
        objc_msgSend_center(v7, v21, v22, v23);
        v25 = v24;
        objc_msgSend_radius(v7, v26, v27, v28);
        *buf = 68290819;
        v39 = 0;
        v40 = 2082;
        v41 = "";
        v42 = 2050;
        selfCopy = self;
        v44 = 2050;
        v45 = v6;
        v46 = 2114;
        v47 = v10;
        v48 = 2113;
        v49 = v15;
        v50 = 2053;
        v51 = v20;
        v52 = 2053;
        v53 = v25;
        v54 = 2050;
        v55 = v29;
        _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, region.identifier:%{private, location:escape_only}@, region.center.latitude:%{sensitive}.08f, region.center.longitude:%{sensitive}.08f, region.radius:%{public}f}", buf, 0x58u);
      }

      objc_msgSend_locationManager_didStartMonitoringForRegion_(v6, v12, self, v7);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v30 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v30, OS_LOG_TYPE_FAULT, "could not get region monitoring event", buf, 2u);
    }

    v31 = sub_19B87DD40();
    if ((*(v31 + 160) & 0x80000000) == 0 || (*(v31 + 164) & 0x80000000) == 0 || (*(v31 + 168) & 0x80000000) == 0 || *(v31 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v36 = 0;
      v32 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get region monitoring event", &v36, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventRegionSetupCompleted:]", "CoreLocation: %s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }
  }
}

- (void)pauseLocationUpdates:(BOOL)updates
{
  updatesCopy = updates;
  v31 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v7 = objc_msgSend_delegate(internal, a2, updates, v3);
  objc_sync_enter(self);
  if (objc_msgSend_updatingLocation(internal[4], v8, v9, v10))
  {
    if (objc_msgSend_pausesLocationUpdatesAutomatically(internal[4], v11, v12, v13) > 4 || updatesCopy)
    {
      objc_msgSend_stopUpdatingLocationAutoPaused(internal, v14, v15, v16);
      if (objc_opt_respondsToSelector())
      {
        entr_act_modify();
        v18 = NSStringFromSelector(sel_locationManagerDidPauseLocationUpdates_);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }

        v19 = qword_1ED519090;
        if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
        {
          v22[0] = 68289794;
          v22[1] = 0;
          v23 = 2082;
          v24 = "";
          v25 = 2050;
          selfCopy = self;
          v27 = 2050;
          v28 = v7;
          v29 = 2114;
          v30 = v18;
          _os_log_impl(&dword_19B873000, v19, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@}", v22, 0x30u);
        }

        objc_msgSend_locationManagerDidPauseLocationUpdates_(v7, v20, self, v21);
      }

      else
      {
        entr_act_modify();
      }
    }
  }

  objc_sync_exit(self);
}

- (void)onDidBecomeActive:(id)active
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68290051;
    *&buf[4] = 0;
    *v22 = 2082;
    *&v22[2] = "";
    *&v22[10] = 2082;
    *&v22[12] = "activity";
    *&v22[20] = 2114;
    *&v22[22] = v11;
    *&v22[30] = 2050;
    selfCopy = self;
    v24 = 2113;
    activeCopy = active;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, notification:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  v12 = objc_msgSend_name(active, v8, v9, v10);
  if (objc_msgSend_isEqualToString_(v12, v13, @"UIApplicationDidBecomeActiveNotification", v14))
  {
    v17 = *(self->_internal + 1);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = sub_19B8AD740;
    v19[3] = &unk_1E753CC90;
    v19[4] = self;
    if (v17)
    {
      v18 = *(v17 + 232);
      *buf = MEMORY[0x1E69E9820];
      *v22 = 3221225472;
      *&v22[8] = sub_19B88071C;
      *&v22[16] = &unk_1E753CCE0;
      *&v22[24] = v19;
      objc_msgSend_async_(v18, v15, buf, v16);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)onWillEnterForeground:(id)foreground
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v6, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    selfCopy = self;
    v20 = 2113;
    foregroundCopy = foreground;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, notification:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  os_activity_scope_leave(&v9);
}

- (void)onDidEnterBackground:(id)background
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v6, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290051;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    selfCopy = self;
    v20 = 2113;
    backgroundCopy = background;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, notification:%{private, location:escape_only}@}", buf, 0x3Au);
  }

  os_activity_scope_leave(&v9);
}

- (void)onClientEventAutopauseStatus:(id)status
{
  v13 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  v11 = 0;
  if (sub_19B88E7D8(status, &v11 + 1, &v11))
  {
    if (HIBYTE(v11))
    {
      objc_msgSend_pauseLocationUpdates_(self, v5, v11 != 0, v6);
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "could not get updated paused state", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v10[0] = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get updated paused state", v10, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventAutopauseStatus:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  objc_sync_exit(self);
}

- (void)onClientEventBatch:(id)batch
{
  v53 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v7 = objc_msgSend_delegate(internal, a2, batch, v3);
  v40 = 0;
  v39 = 0;
  v38 = 0;
  if (sub_19B88EEEC(*(internal + 1), batch, &v38, &v39))
  {
    if (v38)
    {
      v9 = 0;
    }

    else
    {
      v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v8, @"kCLErrorDomain", v39, 0);
    }

    if (objc_opt_respondsToSelector())
    {
      entr_act_modify();
      v13 = NSStringFromSelector(sel_locationManager_didFinishDeferredUpdatesWithError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290050;
        *&v44[4] = 2082;
        *v44 = 0;
        *&v44[6] = "";
        v45 = 2050;
        selfCopy = self;
        v47 = 2050;
        v48 = v7;
        v49 = 2114;
        v50 = v13;
        v51 = 2114;
        v52 = v9;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      objc_msgSend_locationManager_didFinishDeferredUpdatesWithError_(v7, v15, self, v9);
    }

    else
    {
      entr_act_modify();
    }

    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      if (v9)
      {
        v20 = objc_msgSend_description(v9, v17, v18, v19);
        v24 = objc_msgSend_UTF8String(v20, v21, v22, v23);
      }

      else
      {
        v24 = "success";
      }

      *buf = 136315138;
      *v44 = v24;
      _os_log_impl(&dword_19B873000, v16, OS_LOG_TYPE_DEFAULT, "Finished deferred updates: %s", buf, 0xCu);
    }

    v25 = sub_19B87DD40();
    if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v31 = qword_1ED519090;
      if (v9)
      {
        v32 = objc_msgSend_description(v9, v28, v29, v30);
        v36 = objc_msgSend_UTF8String(v32, v33, v34, v35);
      }

      else
      {
        v36 = "success";
      }

      v41 = 136315138;
      v42 = v36;
      v37 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v31, 0, "Finished deferred updates: %s", &v41, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager onClientEventBatch:]", "CoreLocation: %s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    objc_msgSend_setBatchingLocation_(*(internal + 4), v26, 0, v27);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "could not get batch result", buf, 2u);
    }

    v11 = sub_19B87DD40();
    if ((*(v11 + 160) & 0x80000000) == 0 || (*(v11 + 164) & 0x80000000) == 0 || (*(v11 + 168) & 0x80000000) == 0 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      LOWORD(v41) = 0;
      v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get batch result", &v41, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventBatch:]", "CoreLocation: %s\n", v12);
      if (v12 != buf)
      {
        free(v12);
      }
    }
  }
}

- (void)onClientEventInterrupted:(id)interrupted
{
  v46 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v6 = objc_msgSend_delegate(internal, a2, interrupted, v3);
  objc_sync_enter(self);
  if (objc_msgSend_batchingLocation(*(internal + 4), v7, v8, v9))
  {
    v12 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v10, @"kCLErrorDomain", 11, 0);
    if (objc_opt_respondsToSelector())
    {
      entr_act_modify();
      v13 = NSStringFromSelector(sel_locationManager_didFinishDeferredUpdatesWithError_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68290050;
        v36 = 2082;
        v35 = 0;
        v37 = "";
        v38 = 2050;
        selfCopy = self;
        v40 = 2050;
        v41 = v6;
        v42 = 2114;
        v43 = v13;
        v44 = 2114;
        v45 = v12;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, error:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      objc_msgSend_locationManager_didFinishDeferredUpdatesWithError_(v6, v15, self, v12);
    }

    else
    {
      entr_act_modify();
    }

    objc_msgSend_setBatchingLocation_(*(internal + 4), v16, 0, v17);
  }

  if (*(internal + 31))
  {
    sub_19B884630(*(internal + 1), *(internal + 64));
  }

  objc_msgSend_setClientKeyForIdentityValidation_(internal, v10, 0, v11);
  v21 = objc_msgSend_copy(*(internal + 35), v18, v19, v20);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v29, v33, 16);
  if (v23)
  {
    v24 = *v30;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v30 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = (*(*(*(&v29 + 1) + 8 * i) + 16))();
        objc_msgSend_updateIdentityToken_withStorageToken_(v26, v27, 0, 0);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v28, &v29, v33, 16);
    }

    while (v23);
  }

  objc_sync_exit(self);
}

- (void)onClientEventVehicleSpeed:(id)speed
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_delegate(self->_internal, a2, speed, v3);
  v19 = 0u;
  v20 = 0u;
  if (sub_19B88F058(speed, &v19))
  {
    objc_sync_enter(self);
    if (objc_opt_respondsToSelector())
    {
      v7 = [CLVehicleSpeed alloc];
      v11 = objc_msgSend_initWithClientVehicleSpeed_(v7, v8, v9, v10, v19, v20);
      v12 = NSStringFromSelector(sel_locationManager_didUpdateVehicleSpeed_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v13 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290050;
        v23 = 2082;
        v22 = 0;
        v24 = "";
        v25 = 2050;
        selfCopy = self;
        v27 = 2050;
        v28 = v6;
        v29 = 2114;
        v30 = v12;
        v31 = 2114;
        v32 = v11;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, vehicleSpeed:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      objc_msgSend_locationManager_didUpdateVehicleSpeed_(v6, v14, self, v11);
    }

    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "could not get updated vehicle speed", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v18[0] = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get updated vehicle speed", v18, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventVehicleSpeed:]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }
}

- (void)onClientEventVehicleHeading:(id)heading
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_delegate(self->_internal, a2, heading, v3);
  v19 = 0.0;
  v20 = 0.0;
  if (sub_19B88F104(heading, &v19))
  {
    objc_sync_enter(self);
    if (objc_opt_respondsToSelector())
    {
      v7 = [CLVehicleHeading alloc];
      v11 = objc_msgSend_initWithClientVehicleHeading_(v7, v8, v9, v10, v19, v20);
      v12 = NSStringFromSelector(sel_locationManager_didUpdateVehicleHeading_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v13 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68290050;
        v23 = 2082;
        v22 = 0;
        v24 = "";
        v25 = 2050;
        selfCopy = self;
        v27 = 2050;
        v28 = v6;
        v29 = 2114;
        v30 = v12;
        v31 = 2114;
        v32 = v11;
        _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, vehicleHeading:%{public, location:escape_only}@}", buf, 0x3Au);
      }

      objc_msgSend_locationManager_didUpdateVehicleHeading_(v6, v14, self, v11);
    }

    objc_sync_exit(self);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_FAULT, "could not get updated vehicle heading", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v18[0] = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "could not get updated vehicle heading", v18, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationManager onClientEventVehicleHeading:]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }
}

- (void)onClientEventSignificantLocationVisit:(id)visit
{
  v76 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  v7 = objc_msgSend_delegate(internal, a2, visit, v3);
  objc_sync_enter(self);
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_objectForKey_(visit, v8, @"kCLConnectionMessageSignificantLocationVisitKey", v9);
    v53 = 0;
    v11 = objc_alloc(MEMORY[0x1E696ACD0]);
    v13 = objc_msgSend_initForReadingFromData_error_(v11, v12, v10, &v53);
    if (v53)
    {
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v14 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
      {
        *buf = 68289282;
        v55 = 0;
        v56 = 2082;
        v57 = "";
        v58 = 2114;
        selfCopy = v53;
        _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Unarchiver error in [CLLocationManager onClientEventSignificantLocationVisit:], error:%{public, location:escape_only}@}", buf, 0x1Cu);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
        }
      }

      v15 = qword_1ED519090;
      if (os_signpost_enabled(qword_1ED519090))
      {
        *buf = 68289282;
        v55 = 0;
        v56 = 2082;
        v57 = "";
        v58 = 2114;
        selfCopy = v53;
        _os_signpost_emit_with_name_impl(&dword_19B873000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Unarchiver error in [CLLocationManager onClientEventSignificantLocationVisit:]", "{msg%{public}.0s:Unarchiver error in [CLLocationManager onClientEventSignificantLocationVisit:], error:%{public, location:escape_only}@}", buf, 0x1Cu);
      }
    }

    else
    {
      v16 = v13;
      v17 = [CLVisit alloc];
      v20 = objc_msgSend_initWithCoder_(v17, v18, v16, v19);
      sub_19B890864(internal[1], 6, 917504, 1, 0, 0);
      v21 = NSStringFromSelector(sel_locationManager_didVisit_);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v22 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
      {
        objc_msgSend_coordinate(v20, v23, v24, v25);
        v27 = v26;
        objc_msgSend_coordinate(v20, v28, v29, v30);
        v32 = v31;
        objc_msgSend_horizontalAccuracy(v20, v33, v34, v35);
        v37 = v36;
        v41 = objc_msgSend_arrivalDate(v20, v38, v39, v40);
        v45 = objc_msgSend_departureDate(v20, v42, v43, v44);
        v49 = objc_msgSend__placeInference(v20, v46, v47, v48);
        *buf = 68291331;
        v55 = 0;
        v56 = 2082;
        v57 = "";
        v58 = 2050;
        selfCopy = self;
        v60 = 2050;
        v61 = v7;
        v62 = 2114;
        v63 = v21;
        v64 = 2053;
        v65 = v27;
        v66 = 2053;
        v67 = v32;
        v68 = 2050;
        v69 = v37;
        v70 = 2113;
        v71 = v41;
        v72 = 2113;
        v73 = v45;
        v74 = 2117;
        v75 = v49;
        _os_log_impl(&dword_19B873000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, visit.coordinate.latitude:%{sensitive}.08f, visit.coordinate.longitude:%{sensitive}.08f, visit.hAcc:%{public}f, visit.arrival:%{private, location:escape_only}@, visit.departure:%{private, location:escape_only}@, visit.placeInference:%{sensitive, location:escape_only}@}", buf, 0x6Cu);
      }

      objc_msgSend_locationManager_didVisit_(v7, v23, self, v20);
      objc_msgSend_finishDecoding(v16, v50, v51, v52);
    }
  }

  else
  {
    sub_19B890864(internal[1], 6, 917504, 0, 0, 0);
  }

  objc_sync_exit(self);
}

- (void)onClientEventSignificantLocationVisitStateRequest:(id)request
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = objc_msgSend_delegate(self->_internal, a2, request, v3);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v49 = 68289538;
    v50 = 0;
    v51 = 2082;
    v52 = "";
    v53 = 2050;
    selfCopy2 = self;
    v55 = 2050;
    v56 = v6;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Processing Significant Location Visit State Request Event, self:%{public}p, delegate:%{public}p}", &v49, 0x26u);
  }

  objc_sync_enter(self);
  if (objc_opt_respondsToSelector())
  {
    v10 = objc_msgSend_objectForKey_(request, v8, @"kCLConnectionMessageSignificantLocationVisitStateKey", v9);
    if (v10)
    {
      v11 = objc_alloc(MEMORY[0x1E696ACD0]);
      v13 = objc_msgSend_initForReadingFromData_error_(v11, v12, v10, 0);
      v14 = [CLVisit alloc];
      v10 = objc_msgSend_initWithCoder_(v14, v15, v13, v16);
      objc_msgSend_finishDecoding(v13, v17, v18, v19);
    }

    v20 = NSStringFromSelector(sel_locationManager_didReportVisit_);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v21 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      objc_msgSend_coordinate(v10, v22, v23, v24);
      v26 = v25;
      objc_msgSend_coordinate(v10, v27, v28, v29);
      v31 = v30;
      objc_msgSend_horizontalAccuracy(v10, v32, v33, v34);
      v36 = v35;
      v40 = objc_msgSend_arrivalDate(v10, v37, v38, v39);
      v44 = objc_msgSend_departureDate(v10, v41, v42, v43);
      v48 = objc_msgSend__placeInference(v10, v45, v46, v47);
      v49 = 68291331;
      v50 = 0;
      v51 = 2082;
      v52 = "";
      v53 = 2050;
      selfCopy2 = self;
      v55 = 2050;
      v56 = v6;
      v57 = 2114;
      v58 = v20;
      v59 = 2053;
      v60 = v26;
      v61 = 2053;
      v62 = v31;
      v63 = 2050;
      v64 = v36;
      v65 = 2113;
      v66 = v40;
      v67 = 2113;
      v68 = v44;
      v69 = 2117;
      v70 = v48;
      _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#CLLocationManager invoking #delegate, self:%{public}p, delegate:%{public}p, selector:%{public, location:escape_only}@, visit.coordinate.latitude:%{sensitive}.08f, visit.coordinate.longitude:%{sensitive}.08f, visit.hAcc:%{public}f, visit.arrival:%{private, location:escape_only}@, visit.departure:%{private, location:escape_only}@, visit.placeInference:%{sensitive, location:escape_only}@}", &v49, 0x6Cu);
    }

    objc_msgSend_locationManager_didReportVisit_(v6, v22, self, v10);
  }

  objc_sync_exit(self);
}

+ (int)_authorizationStatusForBundleIdentifier:(id)identifier bundlePath:(id)path
{
  v9 = 0;
  if (identifier | path)
  {
    identifierCopy = identifier;
  }

  else
  {
    identifierCopy = qword_1EAFE5B30;
  }

  if (identifier | path)
  {
    pathCopy = path;
  }

  else
  {
    pathCopy = qword_1EAFE5B40;
  }

  v6 = sub_19B87DBA8(identifierCopy, pathCopy, &v9);
  v7 = v9;
  if ((v9 - 1) >= 4)
  {
    v7 = 0;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

+ (int)authorizationStatusForBundle:(id)bundle
{
  v6 = objc_msgSend_bundlePath(bundle, a2, bundle, v3);

  return objc_msgSend_authorizationStatusForBundlePath_(self, v5, v6, v7);
}

+ (CLAuthorizationStatus)authorizationStatus
{
  objc_msgSend_collectMetricForFunction_(self, a2, 0x80000, v2);

  return objc_msgSend__authorizationStatus(self, v4, v5, v6);
}

- (BOOL)isAuthorizedForPreciseLocation
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v3 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:isAuthorizedForPreciseLocation is deprecated and will be removed in the next seed. use accuracyAuthorization}", &v9, 0x12u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }
  }

  v4 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v4, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "isAuthorizedForPreciseLocation is deprecated and will be removed in the next seed. use accuracyAuthorization", "{msg%{public}.0s:isAuthorizedForPreciseLocation is deprecated and will be removed in the next seed. use accuracyAuthorization}", &v9, 0x12u);
  }

  return objc_msgSend_accuracyAuthorization(self, v5, v6, v7) == 0;
}

- (BOOL)isAuthorizedForWidgetUpdates
{
  objc_sync_enter(self);
  internal = self->_internal;
  if (objc_msgSend_previousAuthorizationStatusValid(internal[4], v4, v5, v6))
  {
    isAuthorizedForWidgetUpdates = objc_msgSend_isAuthorizedForWidgetUpdates(internal[4], v7, v8, v9);
  }

  else
  {
    objc_msgSend_collectMetricForFunction_(self, v7, 0x200000, v9);
    v16 = 0;
    sub_19B9BE1B8(*(internal[1] + 45), *(internal[1] + 46), &v16);
    v14 = objc_msgSend_authorizationStatus(self, v11, v12, v13);
    isAuthorizedForWidgetUpdates = v14 == 3 || v14 == 4 && v16 == 3;
  }

  objc_sync_exit(self);
  return isAuthorizedForWidgetUpdates;
}

+ (void)setAuthorizationStatus:(BOOL)status forBundle:(id)bundle
{
  statusCopy = status;
  v6 = objc_msgSend_bundlePath(bundle, a2, status, bundle);

  MEMORY[0x1EEE66B58](self, sel_setAuthorizationStatus_forBundlePath_, statusCopy, v6);
}

+ (void)setAuthorizationStatusByType:(int)type forBundle:(id)bundle
{
  v4 = *&type;
  v6 = objc_msgSend_bundlePath(bundle, a2, *&type, bundle);

  MEMORY[0x1EEE66B58](self, sel_setAuthorizationStatusByType_forBundlePath_, v4, v6);
}

+ (void)setAuthorizationStatusByType:(int)type withCorrectiveCompensation:(int)compensation forBundle:(id)bundle
{
  v5 = *&compensation;
  v6 = *&type;
  v7 = objc_msgSend_bundlePath(bundle, a2, *&type, *&compensation);

  sub_19B9C073C(0, v7, 0, 0, v6, v5);
}

+ (void)setIncidentalUseMode:(int)mode forBundle:(id)bundle
{
  v4 = *&mode;
  v5 = objc_msgSend_bundlePath(bundle, a2, *&mode, bundle);

  sub_19B9C0A94(0, v5, v4);
}

+ (void)getIncidentalUseMode:(int *)mode forBundle:(id)bundle
{
  v5 = objc_msgSend_bundlePath(bundle, a2, mode, bundle);

  sub_19B9BE1B8(0, v5, mode);
}

+ (void)setLocationButtonUseMode:(int)mode forBundle:(id)bundle
{
  v4 = *&mode;
  v5 = objc_msgSend_bundlePath(bundle, a2, *&mode, bundle);

  sub_19B9C031C(0, v5, v4);
}

+ (void)registerCircularInterestZoneWithId:(id)id latitue:(double)latitue longitude:(double)longitude radius:(double)radius serviceMaskOperator:(int)operator provenanceType:(int)type forBundle:(id)bundle error:(id *)self0
{
  v11 = *&type;
  v12 = *&operator;
  v17 = objc_msgSend_bundlePath(bundle, a2, id, *&operator);

  sub_19B9BE328(0, v17, id, v12, v11, error, latitue, longitude, radius);
}

+ (void)registerPhenolicInterestZoneWithId:(id)id phenolicLocation:(int)location serviceMaskOperator:(int)operator provenanceType:(int)type forBundle:(id)bundle error:(id *)error
{
  v9 = *&type;
  v10 = *&operator;
  v11 = *&location;
  v13 = objc_msgSend_bundlePath(bundle, a2, id, *&location);

  sub_19B9BE3BC(0, v13, id, v11, v10, v9, error);
}

+ (void)setAuthorizationStatus:(int)status withCorrectiveCompensation:(int)compensation forInterestZoneWithId:(id)id registeredForBundle:(id)bundle
{
  v7 = *&compensation;
  v8 = *&status;
  v9 = objc_msgSend_bundlePath(bundle, a2, *&status, *&compensation);

  sub_19B9C073C(0, v9, id, 0, v8, v7);
}

+ (void)setRelevance:(BOOL)relevance forInterestZoneWithId:(id)id registeredForBundle:(id)bundle error:(id *)error
{
  relevanceCopy = relevance;
  v9 = objc_msgSend_bundlePath(bundle, a2, relevance, id);

  sub_19B9BE440(0, v9, id, relevanceCopy, error);
}

+ (void)deleteInterestZoneWithId:(id)id registeredForBundle:(id)bundle error:(id *)error
{
  v7 = objc_msgSend_bundlePath(bundle, a2, id, bundle);

  sub_19B9BE4A8(0, v7, id, error);
}

+ (void)setTemporaryAuthorizationGranted:(BOOL)granted forBundle:(id)bundle
{
  grantedCopy = granted;
  v5 = objc_msgSend_bundlePath(bundle, a2, granted, bundle, 0, 0, 0, 0);
  sub_19B9BFEA4(0, v5, &v6, grantedCopy, 0, 0);
}

+ (void)grantTemporaryAuthorizationUsingLocationButtonToClientWithAuditToken:(id *)token voiceInteractionEnabled:(BOOL)enabled
{
  v4 = *&token->var0[4];
  v5[0] = *token->var0;
  v5[1] = v4;
  sub_19B9BFEA4(0, 0, v5, 1, 1, enabled);
}

+ (void)setBackgroundIndicatorEnabled:(BOOL)enabled forBundle:(id)bundle
{
  enabledCopy = enabled;
  v5 = objc_msgSend_bundlePath(bundle, a2, enabled, bundle);

  sub_19B9C1334(0, v5, enabledCopy, v6);
}

+ (void)setDefaultEffectiveBundle:(id)bundle
{
  v4 = objc_msgSend_bundlePath(bundle, a2, bundle, v3);

  sub_19B888CDC(v4);
}

- (void)requestWhenInUseAuthorizationWithPrompt
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v10.opaque[0] = 0;
  v10.opaque[1] = 0;
  os_activity_scope_enter(v4, &v10);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v12 = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2082;
    v16 = "activity";
    v17 = 2114;
    v18 = v6;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  CLClientSetShowLocationPrompt(*(self->_internal + 1), 1);
  objc_msgSend_requestWhenInUseAuthorization(self, v7, v8, v9);
  os_activity_scope_leave(&v10);
}

- (void)requestWhenInUseAuthorizationWithPurposeKey:(id)key
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v6, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v11;
    v23 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (!key)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CLLocationManager.m", 4044, @"Invalid parameter not satisfying: %@", @"purposeKey");
  }

  sub_19B88948C(*(self->_internal + 1), key, 4);
  os_activity_scope_leave(&state);
}

- (void)requestAlwaysAuthorization
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    Name = sel_getName(a2);
    *buf = 68290050;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    selfCopy = self;
    v23 = 2082;
    v24 = Name;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, SEL:%{public, location:escape_only}s}", buf, 0x3Au);
  }

  objc_msgSend_collectMetricForFunction_(self, v6, 0x800000, v7);
  internal = self->_internal;
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v11 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Requesting always authorization}", buf, 0x12u);
  }

  CLClientRequestAuthorization(internal[1], 3);
  os_activity_scope_leave(&v12);
}

- (void)changeFencesStateMatchingHandoffTags:(id)tags forDeviceID:(id)d completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  v10 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v10, &v18);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v11 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v15 = NSStringFromSelector(a2);
    *buf = 68289794;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    v24 = "activity";
    v25 = 2114;
    v26 = v15;
    v27 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v16 = *(self->_internal + 1);
  v17 = objc_msgSend_UUIDString(d, v12, v13, v14);
  sub_19B889210(v16, tags, v17, completion);
  os_activity_scope_leave(&v18);
}

- (void)_requestTemporaryFullAccuracyWithUsageDescription:(id)description completion:(id)completion
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v8, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v10 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v10;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v12 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289026;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:Requesting temporary accuracy increase}", buf, 0x12u);
  }

  CLClientRequestTemporaryPrecise(internal[1], description, 0, completion);
  os_activity_scope_leave(&v13);
}

- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)key
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v5 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey}", &v9, 0x12u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }
  }

  v6 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v9 = 68289026;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey", "{msg%{public}.0s:requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey}", &v9, 0x12u);
  }

  objc_msgSend_requestTemporaryFullAccuracyAuthorizationWithPurposeKey_(self, v7, key, v8);
}

- (void)requestTemporaryPreciseLocationAuthorizationWithPurposeKey:(id)key completion:(id)completion
{
  v14 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
  }

  v7 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
  {
    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey}", &v10, 0x12u);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6B700);
    }
  }

  v8 = qword_1ED519080;
  if (os_signpost_enabled(qword_1ED519080))
  {
    v10 = 68289026;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    _os_signpost_emit_with_name_impl(&dword_19B873000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey", "{msg%{public}.0s:requestTemporaryPreciseLocationAuthorizationWithPurposeKey is deprecated and will be removed in the next seed. use requestTemporaryFullAccuracyAuthorizationWithPurposeKey}", &v10, 0x12u);
  }

  objc_msgSend_requestTemporaryFullAccuracyAuthorizationWithPurposeKey_completion_(self, v9, key, completion);
}

- (void)requestTemporaryFullAccuracyAuthorizationWithPurposeKey:(NSString *)purposeKey
{
  objc_msgSend_collectMetricForFunction_(self, a2, 0x1000000, v3);

  objc_msgSend_requestTemporaryFullAccuracyAuthorizationWithPurposeKey_completion_(self, v6, purposeKey, 0);
}

- (void)requestTemporaryFullAccuracyAuthorizationWithPurposeKey:(NSString *)purposeKey completion:(void *)completion
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0;
  v13.opaque[1] = 0;
  os_activity_scope_enter(v8, &v13);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v12 = NSStringFromSelector(a2);
    *buf = 68289794;
    v15 = 0;
    v16 = 2082;
    v17 = "";
    v18 = 2082;
    v19 = "activity";
    v20 = 2114;
    v21 = v12;
    v22 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  objc_msgSend_collectMetricForFunction_(self, v10, 0x1000000, v11);
  CLClientRequestTemporaryPrecise(*(self->_internal + 1), 0, purposeKey, completion);
  os_activity_scope_leave(&v13);
}

- (BOOL)isLocationServicesPreferencesDialogEnabled
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_allowsLocationPrompts(*(self->_internal + 4), v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)setLocationServicesPreferencesDialogEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v25 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    selfCopy = self;
    v23 = 1026;
    v24 = enabledCopy;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, enabled:%{public}hhd}", buf, 0x36u);
  }

  internal = self->_internal;
  sub_19B88E210(*(internal + 1), enabledCopy);
  objc_msgSend_setAllowsLocationPrompts_(*(internal + 4), v10, enabledCopy, v11);
  os_activity_scope_leave(&v12);
}

- (BOOL)isDynamicAccuracyReductionEnabled
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_dynamicAccuracyReductionEnabled(*(self->_internal + 4), v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)setDynamicAccuracyReductionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v31 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v6, &v18);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    v24 = "activity";
    v25 = 2114;
    v26 = v8;
    v27 = 2050;
    selfCopy = self;
    v29 = 1026;
    v30 = enabledCopy;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, enabled:%{public}hhd}", buf, 0x36u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_setDynamicAccuracyReductionEnabled_(internal[4], v10, enabledCopy, v11);
  if (objc_msgSend_updatingLocation(internal[4], v12, v13, v14))
  {
    objc_msgSend_startUpdatingLocation(self, v15, v16, v17);
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v18);
}

- (BOOL)allowsAlteredAccessoryLocations
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_allowsAlteredAccessoryLocations(*(self->_internal + 4), v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)setAllowsAlteredAccessoryLocations:(BOOL)locations
{
  locationsCopy = locations;
  v31 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v6, &v18);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v20 = 0;
    v21 = 2082;
    v22 = "";
    v23 = 2082;
    v24 = "activity";
    v25 = 2114;
    v26 = v8;
    v27 = 2050;
    selfCopy = self;
    v29 = 1026;
    v30 = locationsCopy;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, enabled:%{public}hhd}", buf, 0x36u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_setAllowsAlteredAccessoryLocations_(internal[4], v10, locationsCopy, v11);
  if (objc_msgSend_updatingLocation(internal[4], v12, v13, v14))
  {
    objc_msgSend_startUpdatingLocation(self, v15, v16, v17);
  }

  objc_sync_exit(self);
  os_activity_scope_leave(&v18);
}

- (void)registerAsLocationClient
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v4, &v7);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 2082;
    v13 = "activity";
    v14 = 2114;
    v15 = v6;
    v16 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  sub_19B88EFC0(*(self->_internal + 1));
  os_activity_scope_leave(&v7);
}

+ (void)dumpDiagnosticFilesWithHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  if (handler)
  {
    handlerCopy = handler;
    if (qword_1ED519088 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v20 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "handler";
      _os_log_impl(&dword_19B873000, v20, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:must pass handler to dumpDiagnosticFilesWithHandler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    v21 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "handler";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "must pass handler to dumpDiagnosticFilesWithHandler", "{msg%{public}.0s:must pass handler to dumpDiagnosticFilesWithHandler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }
    }

    handlerCopy = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v26 = 0;
      v27 = 2082;
      v28 = "";
      v29 = 2082;
      v30 = "assert";
      v31 = 2081;
      v32 = "handler";
      _os_log_impl(&dword_19B873000, handlerCopy, OS_LOG_TYPE_INFO, "{msg%{public}.0s:must pass handler to dumpDiagnosticFilesWithHandler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreLocation/CLLocationManager.m", 4178, "+[CLLocationManager dumpDiagnosticFilesWithHandler:]");
  }

  dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
LABEL_3:
  v4 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEFAULT, "dumpDiagnosticFiles called, trying to make an xpc call", buf, 2u);
  }

  v5 = sub_19B87DD40();
  if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v24[0] = 0;
    v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "dumpDiagnosticFiles called, trying to make an xpc call", v24, 2);
    sub_19B885924("Generic", 1, 0, 2, "+[CLLocationManager dumpDiagnosticFilesWithHandler:]", "CoreLocation: %s\n", v6);
    if (v6 != buf)
    {
      free(v6);
    }
  }

  v7 = objc_alloc(MEMORY[0x1E696B0B8]);
  v9 = objc_msgSend_initWithMachServiceName_options_(v7, v8, @"com.apple.locationd.diagnostic", 4096);
  v12 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v10, &unk_1F0EAC7A8, v11);
  objc_msgSend_setRemoteObjectInterface_(v9, v13, v12, v14);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = sub_19B8B19DC;
  v23[3] = &unk_1E753D138;
  v23[4] = v9;
  v17 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v9, v15, v23, v16);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = sub_19B8B1BAC;
  v22[3] = &unk_1E753D160;
  v22[4] = v9;
  v22[5] = handlerCopy;
  objc_msgSend_copyRegisteredFilesWithHandler_(v17, v18, v22, v19);
}

+ (BOOL)bundleSupported:(id)supported
{
  if (supported)
  {
    objc_msgSend_bundlePath(supported, a2, supported, v3);
  }

  return supported != 0;
}

- (void)setIsActuallyAWatchKitExtension:(BOOL)extension
{
  extensionCopy = extension;
  v22 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0;
  v9.opaque[1] = 0;
  os_activity_scope_enter(v6, &v9);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68290050;
    v11 = 0;
    v12 = 2082;
    v13 = "";
    v14 = 2082;
    v15 = "activity";
    v16 = 2114;
    v17 = v8;
    v18 = 2050;
    selfCopy = self;
    v20 = 1026;
    v21 = extensionCopy;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p, isActuallyAWatchKitExtension:%{public}hhd}", buf, 0x36u);
  }

  sub_19B88A4D4(*(self->_internal + 1), extensionCopy);
  os_activity_scope_leave(&v9);
}

- (id)backgroundActivitySession
{
  v5 = objc_msgSend_queue(*(self->_internal + 36), a2, v2, v3);

  return MEMORY[0x1EEE66B58](CLBackgroundActivitySession, sel_sessionWithLocationManager_queue_handler_, self, v5);
}

- (id)serviceSession
{
  objc_msgSend_queue(*(self->_internal + 36), a2, v2, v3);

  return MEMORY[0x1EEE66B58](CLServiceSession, sel_sessionWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_, self, 1);
}

- (id)privilegedServiceSession
{
  objc_msgSend_queue(*(self->_internal + 36), a2, v2, v3);

  return MEMORY[0x1EEE66B58](CLServiceSession, sel_sessionWithLocationManager_authorizationRequirement_fullAccuracyPurposeKey_queue_handler_, self, 2);
}

- (void)startUpdatingVehicleSpeed
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "activity";
    v24 = 2114;
    v25 = v6;
    v26 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_performCourtesyPromptIfNeeded(internal, v8, v9, v10);
  objc_msgSend_setUpdatingVehicleSpeed_(*(internal + 4), v11, 1, v12);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "Start updating vehicle speed", buf, 2u);
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16[0] = 0;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Start updating vehicle speed", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(VehicleData) startUpdatingVehicleSpeed]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  CLClientStartVehicleSpeedUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)stopUpdatingVehicleSpeed
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v6;
    v23 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_setUpdatingVehicleSpeed_(*(internal + 4), v8, 0, v9);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "Stop updating vehicle speed", buf, 2u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v13[0] = 0;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Stop updating vehicle speed", v13, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(VehicleData) stopUpdatingVehicleSpeed]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  CLClientStopVehicleSpeedUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)startUpdatingVehicleHeading
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "activity";
    v24 = 2114;
    v25 = v6;
    v26 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_performCourtesyPromptIfNeeded(internal, v8, v9, v10);
  objc_msgSend_setUpdatingVehicleHeading_(*(internal + 4), v11, 1, v12);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v13 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v13, OS_LOG_TYPE_DEFAULT, "Start updating vehicle heading", buf, 2u);
  }

  v14 = sub_19B87DD40();
  if (*(v14 + 160) > 1 || *(v14 + 164) > 1 || *(v14 + 168) > 1 || *(v14 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v16[0] = 0;
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Start updating vehicle heading", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(VehicleData) startUpdatingVehicleHeading]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  CLClientStartVehicleHeadingUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)stopUpdatingVehicleHeading
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v16 = 0;
    v17 = 2082;
    v18 = "";
    v19 = 2082;
    v20 = "activity";
    v21 = 2114;
    v22 = v6;
    v23 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  objc_msgSend_setUpdatingVehicleHeading_(*(internal + 4), v8, 0, v9);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v10 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_DEFAULT, "Stop updating vehicle heading", buf, 2u);
  }

  v11 = sub_19B87DD40();
  if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v13[0] = 0;
    v12 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Stop updating vehicle heading", v13, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(VehicleData) stopUpdatingVehicleHeading]", "CoreLocation: %s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }

  CLClientStopVehicleHeadingUpdates(*(internal + 1));
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (BOOL)isMatchInfoEnabled
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  matched = objc_msgSend_matchInfoEnabled(*(self->_internal + 4), v6, v7, v8);
  os_activity_scope_leave(&v12);
  return matched;
}

- (void)setMatchInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  CLClientSetMatchInfoEnabled(*(internal + 1), enabledCopy);
  objc_msgSend_setMatchInfoEnabled_(*(internal + 4), v10, enabledCopy, v11);
  os_activity_scope_leave(&v12);
}

- (BOOL)_isGroundAltitudeEnabled
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_groundAltitudeEnabled(*(self->_internal + 4), v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)_setGroundAltitudeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  sub_19B88E0A0(*(internal + 1), enabledCopy);
  objc_msgSend_setGroundAltitudeEnabled_(*(internal + 4), v10, enabledCopy, v11);
  os_activity_scope_leave(&v12);
}

- (id)_groundAltitudeAtLocation:(id)location
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v17.opaque[0] = 0;
  v17.opaque[1] = 0;
  os_activity_scope_enter(v6, &v17);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v11 = NSStringFromSelector(a2);
    *buf = 68289794;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    *&buf[18] = 2082;
    *&buf[20] = "activity";
    *&buf[28] = 2114;
    *&buf[30] = v11;
    v19 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (location)
  {
    if (objc_msgSend__isGroundAltitudeEnabled(self, v8, v9, v10) && (internal = self->_internal, memset(buf, 0, 32), CLClientGetGroundAltitudeAtLocation(internal[1], location, buf)) && *&buf[8] > 0.0)
    {
      v14 = objc_alloc(MEMORY[0x1E6985C58]);
      location = objc_msgSend_initWithEstimate_uncertainty_undulation_undulationModel_(v14, v15, *&buf[24], v16, *buf, *&buf[8], *&buf[16]);
    }

    else
    {
      location = 0;
    }
  }

  os_activity_scope_leave(&v17);
  return location;
}

- (BOOL)_isFusionInfoEnabled
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_fusionInfoEnabled(*(self->_internal + 4), v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)_setFusionInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  sub_19B88E158(*(internal + 1), enabledCopy);
  objc_msgSend_setFusionInfoEnabled_(*(internal + 4), v10, enabledCopy, v11);
  os_activity_scope_leave(&v12);
}

- (BOOL)isTrackRunInfoEnabled
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v4, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v9;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  v10 = objc_msgSend_trackRunInfoEnabled(*(self->_internal + 4), v6, v7, v8);
  os_activity_scope_leave(&v12);
  return v10;
}

- (void)setTrackRunInfoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v23 = *MEMORY[0x1E69E9840];
  v6 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v12.opaque[0] = 0;
  v12.opaque[1] = 0;
  os_activity_scope_enter(v6, &v12);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v8 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v8;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  sub_19B87FE94(*(internal + 1), enabledCopy);
  objc_msgSend_setTrackRunInfoEnabled_(*(internal + 4), v10, enabledCopy, v11);
  os_activity_scope_leave(&v12);
}

- (void)stopMonitoringVisits
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B88A810(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&v8);
}

- (void)_startLeechingVisits
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v4, &v8);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v10 = 0;
    v11 = 2082;
    v12 = "";
    v13 = 2082;
    v14 = "activity";
    v15 = 2114;
    v16 = v6;
    v17 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  *buf = 1;
  sub_19B884C9C(internal[1], buf);
  objc_sync_exit(self);
  os_activity_scope_leave(&v8);
}

- (void)_requestVisitState
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v14 = 0;
    v15 = 2082;
    v16 = "";
    v17 = 2082;
    v18 = "activity";
    v19 = 2114;
    v20 = v6;
    v21 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  internal = self->_internal;
  objc_sync_enter(self);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "#slv: Request visit state", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v11[0] = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "#slv: Request visit state", v11, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(CLVisitExtensions) _requestVisitState]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  sub_19B88A8E0(internal[1]);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (id)_startPlaceInferencesCommonLogic:(unint64_t)logic handler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Setup PlaceInferences common logic", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v23[0] = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Setup PlaceInferences common logic", v23, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(_CLPlaceInferenceExtensions) _startPlaceInferencesCommonLogic:handler:]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  objc_sync_enter(self);
  v14 = internal[33];
  if (v14 && (objc_msgSend_fireInterval(v14, v11, v12, v13), v15 != 1.79769313e308) || internal[31])
  {
    v16 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v11, @"kCLErrorDomain", 10, 0);
    objc_sync_exit(self);
    if (v16)
    {
      v19 = internal[1];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_19B8B44C0;
      v22[3] = &unk_1E753CD08;
      v22[4] = v16;
      v22[5] = handler;
      if (v19)
      {
        v20 = *(v19 + 232);
        *buf = MEMORY[0x1E69E9820];
        v25 = 3221225472;
        v26 = sub_19B88071C;
        v27 = &unk_1E753CCE0;
        v28 = v22;
        objc_msgSend_async_(v20, v17, buf, v18);
      }
    }
  }

  else
  {
    internal[31] = objc_msgSend_copy(handler, v11, v12, v13);
    internal[32] = logic;
    objc_sync_exit(self);
    return 0;
  }

  return v16;
}

- (void)_fetchPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 68289794;
    v23 = 0;
    v24 = 2082;
    v25 = "";
    v26 = 2082;
    v27 = "activity";
    v28 = 2114;
    v29 = v13;
    v30 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (!handler)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CLLocationManager.m", 4603, @"Invalid parameter not satisfying: %@", @"placeInferenceHandler");
  }

  internal = self->_internal;
  if (!objc_msgSend__startPlaceInferencesCommonLogic_handler_(self, v10, policy, handler))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v15 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v15, OS_LOG_TYPE_DEFAULT, "Start oneshot PlaceInferences", buf, 2u);
    }

    v16 = sub_19B87DD40();
    if (*(v16 + 160) > 1 || *(v16 + 164) > 1 || *(v16 + 168) > 1 || *(v16 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
      }

      v20[0] = 0;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Start oneshot PlaceInferences", v20, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(_CLPlaceInferenceExtensions) _fetchPlaceInferencesWithFidelityPolicy:handler:]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    sub_19B884630(internal[1], policy);
  }

  os_activity_scope_leave(&state);
}

- (void)_fetchContinuousPlaceInferencesWithFidelityPolicy:(unint64_t)policy handler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    buf = 68289794;
    v30 = 2082;
    v31 = "";
    v32 = 2082;
    v33 = "activity";
    v34 = 2114;
    v35 = v13;
    v36 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", &buf, 0x30u);
  }

  if (!handler)
  {
    v24 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v24, v25, a2, self, @"CLLocationManager.m", 4616, @"Invalid parameter not satisfying: %@", @"placeInferenceHandler");
  }

  internal = self->_internal;
  if (!objc_msgSend__startPlaceInferencesCommonLogic_handler_(self, v10, policy, handler))
  {
    objc_sync_enter(self);
    if (!*(internal + 33))
    {
      *(internal + 33) = objc_msgSend_newTimer(*(internal + 36), v15, v16, v17);
    }

    objc_initWeak(&buf, self);
    v18 = *(internal + 33);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_19B8B4AD0;
    v26[3] = &unk_1E753D188;
    objc_copyWeak(v27, &buf);
    v26[4] = internal;
    v26[5] = handler;
    v27[1] = policy;
    objc_msgSend_setHandler_(v18, v19, v26, v20);
    objc_msgSend_setNextFireDelay_interval_(*(internal + 33), v21, v22, v23, 0.0, 20.0);
    objc_destroyWeak(v27);
    objc_destroyWeak(&buf);
    objc_sync_exit(self);
  }

  os_activity_scope_leave(&state);
}

- (void)_stopFetchingContinuousPlaceInferences
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v4, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromSelector(a2);
    *buf = 68289794;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2082;
    v21 = "activity";
    v22 = 2114;
    v23 = v6;
    v24 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
    internal = self->_internal;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }
  }

  else
  {
    internal = self->_internal;
  }

  v8 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "Stop continuous PlaceInferences", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
    }

    v14[0] = 0;
    v10 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 0, "Stop continuous PlaceInferences", v14, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManager(_CLPlaceInferenceExtensions) _stopFetchingContinuousPlaceInferences]", "CoreLocation: %s\n", v10);
    if (v10 != buf)
    {
      free(v10);
    }
  }

  objc_sync_enter(self);
  sub_19B88A790(*(internal + 1));
  objc_msgSend_setNextFireDelay_interval_(*(internal + 33), v11, v12, v13, 1.79769313e308, 1.79769313e308);

  *(internal + 31) = 0;
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)_fetchEstimatedLocationAtDate:(id)date handler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = _os_activity_create(&dword_19B873000, "CL: CLLocationManager", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);

  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6B6E0);
  }

  v9 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEFAULT))
  {
    v13 = NSStringFromSelector(a2);
    *buf = 68289794;
    v19 = 0;
    v20 = 2082;
    v21 = "";
    v22 = 2082;
    v23 = "activity";
    v24 = 2114;
    v25 = v13;
    v26 = 2050;
    selfCopy = self;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:CLLocationManager, event:%{public, location:escape_only}s, _cmd:%{public, location:escape_only}@, self:%{public}p}", buf, 0x30u);
  }

  if (!handler)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CLLocationManager.m", 4667, @"Invalid parameter not satisfying: %@", @"handler");
  }

  internal = self->_internal;
  objc_sync_enter(self);
  sub_19B8905B8(internal[1], date, handler);
  objc_sync_exit(self);
  os_activity_scope_leave(&state);
}

- (void)_updateVLLocalizationResult:(id)result
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, result, 1, &v13);
  if (v13)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (v8)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6D730);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Could not serialize _CLVLLocalizationResult, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6D730);
      }
    }

    v10 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize _CLVLLocalizationResult", "{msg%{public}.0s:Could not serialize _CLVLLocalizationResult, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    v11 = v4;
    v12 = objc_msgSend_internalClient(self, v5, v6, v7);
    CLClientUpdateVLLocalizationResult(v12, v11);
  }
}

+ (uint64_t)updatePromptedLatitude:(uint64_t)latitude longitude:(uint64_t)longitude
{
  v4 = objc_msgSend_sharedServiceClient(CLLocationInternalClient, a2, latitude, longitude);

  return MEMORY[0x1EEE66B58](v4, sel_updatePromptedLatitude_longitude_, v5, v6);
}

- (void)_updateARSessionState:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v4 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], a2, &stateCopy, 8);
  if (v4)
  {
    v8 = v4;
    v9 = objc_msgSend_internalClient(self, v5, v6, v7);
    CLClientUpdateARSessionState(v9, v8);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E518);
    }

    v10 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Could not serialize _CLARSessionState}", buf, 0x12u);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E518);
      }
    }

    v11 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289026;
      v14 = 0;
      v15 = 2082;
      v16 = "";
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize _CLARSessionState", "{msg%{public}.0s:Could not serialize _CLARSessionState}", buf, 0x12u);
    }
  }
}

- (void)_updateVIOEstimation:(id)estimation
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, estimation, 1, &v13);
  if (v13)
  {
    v8 = 1;
  }

  else
  {
    v8 = v4 == 0;
  }

  if (v8)
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E7C8);
    }

    v9 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_ERROR, "{msg%{public}.0s:Could not serialize _CLVIOEstimation, error:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E7C8);
      }
    }

    v10 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v15 = 0;
      v16 = 2082;
      v17 = "";
      v18 = 2114;
      v19 = v13;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Could not serialize _CLVIOEstimation", "{msg%{public}.0s:Could not serialize _CLVIOEstimation, error:%{public, location:escape_only}@}", buf, 0x1Cu);
    }
  }

  else
  {
    v11 = v4;
    v12 = objc_msgSend_internalClient(self, v5, v6, v7);
    CLClientUpdateVIOEstimation(v12, v11);
  }
}

+ (void)setStatusBarIconEnabled:(BOOL)enabled forLocationEntityClass:(unint64_t)class
{
  if (class == 16)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  if (class == 8)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (class == 4)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (class == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (class == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (class <= 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  sub_19B9BE6EC(v9, enabled, enabled, class);
}

+ (BOOL)isStatusBarIconEnabledForLocationEntityClass:(unint64_t)class
{
  v11 = 0;
  if (class == 16)
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  if (class == 8)
  {
    v5 = 4;
  }

  else
  {
    v5 = v4;
  }

  if (class == 4)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  if (class == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if (class == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (class <= 3)
  {
    v9 = v8;
  }

  else
  {
    v9 = v6;
  }

  sub_19B9BE734(v9, &v11, class, v3);
  return v11;
}

+ (unint64_t)entityClassesForLocationDictionary:(id)dictionary
{
  result = objc_msgSend_primaryEntityClassForLocationDictionary_(self, a2, dictionary, v3);
  if ((result & 0x3C) != 0)
  {
    result |= 6uLL;
  }

  return result;
}

+ (unint64_t)activeLocationServiceTypesForLocationDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isEntityAuthorizedForLocationDictionary_(self, a2, dictionary, v3))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_19B9F756C(dictionary, v7, v5, v6);
  if (v8 == 3)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6EA30);
    }

    v10 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_FAULT))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      dictionaryCopy2 = dictionary;
      _os_log_impl(&dword_19B873000, v10, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Dictionary utilites reported the arrow is in max state?!, clientRecord:%{public, location:escape_only}@}", &v12, 0x1Cu);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6EA30);
      }
    }

    v11 = qword_1ED519080;
    if (os_signpost_enabled(qword_1ED519080))
    {
      v12 = 68289282;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2114;
      dictionaryCopy2 = dictionary;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Dictionary utilites reported the arrow is in max state?!", "{msg%{public}.0s:Dictionary utilites reported the arrow is in max state?!, clientRecord:%{public, location:escape_only}@}", &v12, 0x1Cu);
    }

    return 0;
  }

  else if (v8 == 2)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

+ (id)interestZonesIdentifierListForLocationDictionary:(id)dictionary
{
  result = sub_19B9F7804(dictionary, a2, dictionary, v3);
  if (result)
  {

    return objc_msgSend_allKeys(result, v5, v6, v7);
  }

  return result;
}

+ (id)interestZoneDictionaryIdentifiedById:(id)id forLocationDictionary:(id)dictionary
{
  v6 = sub_19B9F7804(dictionary, a2, id, dictionary);
  v9 = v6;
  if (v6)
  {
    if (objc_msgSend_objectForKey_(v6, v7, id, v8))
    {
      v12 = MEMORY[0x1E695DF90];
      v13 = objc_msgSend_objectForKey_(v9, v10, id, v11);
      v9 = objc_msgSend_dictionaryWithDictionary_(v12, v14, v13, v15);
      objc_msgSend_setObject_forKey_(v9, v16, id, @"ZoneId");
      v19 = objc_msgSend_objectForKey_(dictionary, v17, @"BundleId", v18);
      objc_msgSend_setObject_forKey_(v9, v20, v19, @"BundleId");
      v23 = objc_msgSend_objectForKey_(dictionary, v21, @"BundlePath", v22);
      objc_msgSend_setObject_forKey_(v9, v24, v23, @"BundlePath");
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

+ (void)setEntityAuthorized:(BOOL)authorized forLocationDictionary:(id)dictionary
{
  authorizedCopy = authorized;
  v7 = objc_msgSend_objectForKey_(dictionary, a2, @"BundleId", dictionary);
  v10 = objc_msgSend_objectForKey_(dictionary, v8, @"BundlePath", v9);
  if (v7)
  {

    MEMORY[0x1EEE66B58](self, sel_setAuthorizationStatus_forBundleIdentifier_, authorizedCopy, v7);
  }

  else if (v10)
  {
    v13 = objc_msgSend_bundleWithPath_(MEMORY[0x1E696AAE8], v11, v10, v12);

    MEMORY[0x1EEE66B58](self, sel_setAuthorizationStatus_forBundle_, authorizedCopy, v13);
  }
}

+ (void)setEntityAuthorization:(unint64_t)authorization withCorrectiveCompensation:(BOOL)compensation forLocationDictionary:(id)dictionary
{
  if (compensation)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  MEMORY[0x1EEE66B58](self, sel_setEntityAuthorization_withCorrectiveCompensationType_forLocationDictionary_, authorization, v5);
}

+ (void)setEntityAuthorization:(unint64_t)authorization withCorrectiveCompensationType:(int)type forLocationDictionary:(id)dictionary
{
  v6 = *&type;
  v9 = objc_msgSend_objectForKey_(dictionary, a2, @"BundleId", *&type);
  v12 = objc_msgSend_objectForKey_(dictionary, v10, @"BundlePath", v11);
  v15 = objc_msgSend_objectForKey_(dictionary, v13, @"ZoneId", v14);
  if (authorization > 4)
  {
    v18 = 2;
    if (v15)
    {
LABEL_3:
      if (v9)
      {

        MEMORY[0x1EEE66B58](self, sel_setAuthorizationStatus_withCorrectiveCompensation_forInterestZoneWithId_registeredForBundleIdentifier_, v18, v6);
      }

      else if (v12)
      {
        objc_msgSend_bundleWithPath_(MEMORY[0x1E696AAE8], v16, v12, v17);

        MEMORY[0x1EEE66B58](self, sel_setAuthorizationStatus_withCorrectiveCompensation_forInterestZoneWithId_registeredForBundle_, v18, v6);
      }

      return;
    }
  }

  else
  {
    v18 = dword_19BA8D260[authorization];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  if (v9)
  {

    MEMORY[0x1EEE66B58](self, sel_setAuthorizationStatusByType_withCorrectiveCompensation_forBundleIdentifier_, v18, v6);
  }

  else if (v12)
  {
    objc_msgSend_bundleWithPath_(MEMORY[0x1E696AAE8], v16, v12, v17);

    MEMORY[0x1EEE66B58](self, sel_setAuthorizationStatusByType_withCorrectiveCompensation_forBundle_, v18, v6);
  }
}

+ (void)setBackgroundIndicatorEnabled:(BOOL)enabled forLocationDictionary:(id)dictionary
{
  enabledCopy = enabled;
  v7 = objc_msgSend_objectForKey_(dictionary, a2, @"BundleId", dictionary);
  v10 = objc_msgSend_objectForKey_(dictionary, v8, @"BundlePath", v9);
  if (v7)
  {

    MEMORY[0x1EEE66B58](self, sel_setBackgroundIndicatorEnabled_forBundleIdentifier_, enabledCopy, v7);
  }

  else if (v10)
  {
    v13 = objc_msgSend_bundleWithPath_(MEMORY[0x1E696AAE8], v11, v10, v12);

    MEMORY[0x1EEE66B58](self, sel_setBackgroundIndicatorEnabled_forBundle_, enabledCopy, v13);
  }
}

@end