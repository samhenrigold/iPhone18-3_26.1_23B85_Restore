@interface CLLocationInternalClient
+ (id)sharedServiceClient;
- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)d orBundlePath:(id)path services:(unint64_t)services error:(id *)error;
- (BOOL)deleteInterestZoneWithId:(id)id registeredForBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error;
- (BOOL)getLearnedRoutesAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)getVisitHistoryAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)getVisitHistoryAccessAllowedTime:(double *)time forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (BOOL)registerCircularInterestZoneWithId:(id)id latitude:(double)latitude longitude:(double)longitude radius:(double)radius serviceMaskOperator:(int)operator provenanceType:(int)type forBundleId:(id)bundleId orBundlePath:(id)self0 error:(id *)self1;
- (BOOL)registerPhenolicInterestZoneWithId:(id)id phenolicLocation:(int)location serviceMaskOperator:(int)operator provenanceType:(int)type forBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error;
- (BOOL)setRelevance:(BOOL)relevance forInterestZoneWithId:(id)id registeredForBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error;
- (BOOL)startStopAdvertisingBeacon:(id)beacon power:(id)power;
- (__CFArray)copyActivityAlarms;
- (__CFArray)copyGnssBandsInUse;
- (__CFArray)copyRecentLocationsBufferStatus;
- (__CFArray)copyTechnologiesInUse;
- (__CFDictionary)copyActiveClientsUsingLocation;
- (__CFDictionary)copyAppsUsingLocation;
- (__CFDictionary)copyInternalState;
- (__CFDictionary)copyMonitoredRegionsForBundleIdentifier:(__CFString *)identifier orBundlePath:(__CFString *)path;
- (__CFDictionary)copyNearbyAssetSettings;
- (__CFDictionary)copyNearbyAssetSettingsOfAccessoryFile:(__CFString *)file;
- (__CFDictionary)copyRoutineAssetSettingsWithCompatibilityVersion:(int *)version contentVersion:(int *)contentVersion;
- (__CFDictionary)copyZaxisStats;
- (double)modifyOrSetAuthorizationTime:(double)time forBundleID:(id)d orBundlePath:(id)path;
- (id)applyArchivedAuthorizationDecisions:(id)decisions;
- (id)asynchronousRemoteObject;
- (id)connection;
- (id)fetchRecentLocationAtCfAbsoluteTime:(double)time;
- (id)fetchRecentLocationAtMachContinuousTime:(double)time;
- (id)fetchRecentLocationsInLastSeconds:(int)seconds;
- (id)getAccessoryMotionSensorLogs;
- (id)getArchivedAuthorizationDecisionsWithError:(id *)error;
- (id)getEEDCloakingKey:(id *)key;
- (id)getEEDEmergencyContactNames:(id *)names;
- (id)getMotionSensorLogs;
- (id)getOdometryBatchedLocations;
- (id)getPipelinedCache;
- (id)getTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path error:(id *)error;
- (id)setAuthorizationPromptMapDisplayEnabled:(unsigned __int8)enabled;
- (id)setTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path statusData:(id)data;
- (id)synchronousRemoteObject;
- (id)timeZoneAtLocation:(id)location;
- (id)triggerExpiredAuthorizationPurgeOnClientManager;
- (int)getAccessoryPASCDTransmissionState;
- (int)getAccessoryTypeBitSet;
- (int)getStatusBarIconState;
- (unsigned)clearLocationAuthorizations;
- (unsigned)configure:(id)configure;
- (unsigned)copyLastLog;
- (unsigned)deleteCurrentEmergencyLocationAsset;
- (unsigned)displayStatistics;
- (unsigned)dumpLogs:(__CFString *)logs;
- (unsigned)getAuthorizationPromptMapDisplayEnabled:(char *)enabled;
- (unsigned)getAuthorizationStatus:(int *)status forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)getAuthorizationStatusForApp:(int *)app withAuditToken:(id *)token;
- (unsigned)getControlPlaneStatusReportClear:(int)clear startTime:(double *)time endTime:(double *)endTime latitude:(double *)latitude longitude:(double *)longitude altitude:(double *)altitude accuracy:(double *)accuracy status:(unsigned int *)self0;
- (unsigned)getEmergencyLocationSettingsCompatibilityVersion:(int *)version andContentVersion:(int *)contentVersion;
- (unsigned)getGestureServiceEnabled:(char *)enabled;
- (unsigned)getGroundAltitudeForBundleID:(__CFString *)d orBundlePath:(__CFString *)path location:(id)location groundAltitude:(id *)altitude;
- (unsigned)getGyroCalibrationDatabaseBiasFit:(id *)fit atTemperature:(float)temperature;
- (unsigned)getGyroCalibrationDatabaseNumTemperatures:(int *)temperatures;
- (unsigned)getIncidentalUseMode:(int *)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)getLocationForBundleID:(__CFString *)d orBundlePath:(__CFString *)path dynamicAccuracyReductionEnabled:(unsigned __int8)enabled allowsAlteredAccessoryLocations:(unsigned __int8)locations location:(id *)location;
- (unsigned)getLocationServicesEnabled:(char *)enabled;
- (unsigned)getPinnedLocationAuthorizationState:(CLLocationCoordinate2D *)state;
- (unsigned)getPrecisionPermission:(char *)permission forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)getPrivateMode;
- (unsigned)getStatusBarIconEnabled:(BOOL *)enabled forEntityClass:(unsigned int)class;
- (unsigned)gyroCalibrationDatabaseSupportsMiniCalibration:(int *)calibration;
- (unsigned)gyroCalibrationDatabaseWipe;
- (unsigned)insertGyroCalibrationDatabaseBiasEstimateIfValid:(id)valid temperature:(float)temperature variance:(id)variance timestamp:(double)timestamp;
- (unsigned)performMigration;
- (unsigned)pingDaemon;
- (unsigned)reportLocationUtilityEvent:(int)event atDate:(__CFDate *)date;
- (unsigned)setAuthorizationStatus:(unsigned __int8)status withCorrectiveCompensation:(int)compensation forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)setAuthorizationStatusByType:(int)type withCorrectiveCompensation:(int)compensation andZoneIdentifier:(__CFString *)identifier andSubIdentityIdentifier:(__CFString *)identityIdentifier forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)setBackgroundIndicatorForBundleID:(__CFString *)d orBundlePath:(__CFString *)path enabled:(unsigned __int8)enabled;
- (unsigned)setIncidentalUseMode:(int)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)setLearnedRoutesAccess:(int)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)setLocationButtonUseMode:(int)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)setPinnedLocationAuthorization:(unsigned __int8)authorization;
- (unsigned)setStatusBarIconEnabled:(BOOL)enabled forEntityClass:(unsigned int)class;
- (unsigned)setTemporaryAuthorizationGranted:(unsigned __int8)granted forBundleID:(__CFString *)d orBundlePath:(__CFString *)path orAuditToken:(id *)token byLocationButton:(unsigned __int8)button voiceInteractionEnabled:(unsigned __int8)enabled;
- (unsigned)setTemporaryPreciseAuthorizationGranted:(unsigned __int8)granted forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)setVisitHistoryAccess:(int)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)shouldDisplayEEDUI;
- (unsigned)shutdownDaemon;
- (unsigned)tearDownLocationAuthPromptForBundleID:(__CFString *)d orBundlePath:(__CFString *)path;
- (unsigned)timeSyncMachTimeStamp:(unint64_t *)stamp oscarTimeStamp:(unint64_t *)timeStamp;
- (unsigned)updatePillButtonChoiceForOutstandingPrompt:(int)prompt;
- (unsigned)updatePromptedLatitude:(double)latitude longitude:(double)longitude;
- (void)checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block;
- (void)checkAndExercisePushClientAuthorizationForBundleID:(id)d replyBlock:(id)block;
- (void)clearLocationAuthorizationForBundleId:(__CFString *)id orBundlePath:(__CFString *)path;
- (void)getLocationDefaultForKey:(__CFString *)key;
- (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block;
- (void)notifyPassKitPayment:(id)payment transaction:(id)transaction info:(id)info;
- (void)notifyWeatherForecast:(id)forecast airQualityConditions:(id)conditions hourlyForecasts:(id)forecasts dailyForecasts:(id)dailyForecasts latitude:(double)latitude longitude:(double)longitude;
- (void)requestRouteReconstructionForPedestrian;
- (void)setGestureServiceEnabled:(unsigned __int8)enabled;
- (void)setLocationDefaultForKey:(__CFString *)key value:(void *)value;
- (void)setLocationServicesEnabled:(unsigned __int8)enabled;
- (void)setMapMatchingRouteHint:(id *)hint count:(int)count routingType:(int)type stepType:(int)stepType;
- (void)setPrivateMode:(unsigned __int8)mode;
- (void)setTrackRunHint:(id *)hint;
- (void)triggerRecentLocationsRevisedFromMachContinuousTime:(double)time toMachContinuousTime:(double)continuousTime;
@end

@implementation CLLocationInternalClient

+ (id)sharedServiceClient
{
  if (qword_1ED5192F0 != -1)
  {
    dispatch_once(&qword_1ED5192F0, &unk_1F0E6E358);
  }

  return qword_1ED5192F8;
}

- (id)connection
{
  objc_sync_enter(self);
  connection = self->_connection;
  if (!connection)
  {
    v4 = objc_alloc(MEMORY[0x1E696B0B8]);
    v6 = objc_msgSend_initWithMachServiceName_options_(v4, v5, @"com.apple.locationd.synchronous", 4096);
    self->_connection = v6;
    v9 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v7, &unk_1F0EAD1E0, v8);
    objc_msgSend_setRemoteObjectInterface_(v6, v10, v9, v11);
    objc_msgSend_setInterruptionHandler_(self->_connection, v12, &unk_1F0E6E378, v13);
    v14 = self->_connection;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_19B885738;
    v21[3] = &unk_1E753CC90;
    v21[4] = self;
    objc_msgSend_setInvalidationHandler_(v14, v15, v21, v16);
    objc_msgSend_resume(self->_connection, v17, v18, v19);
    connection = self->_connection;
  }

  objc_sync_exit(self);
  return connection;
}

- (id)synchronousRemoteObject
{
  objc_sync_enter(self);
  v6 = objc_msgSend_sharedInstance(MEMORY[0x1E69AD378], v3, v4, v5);
  objc_msgSend_intendToSyncServiceWithName_(v6, v7, @"CLInternalService", v8);
  v12 = objc_msgSend_connection(self, v9, v10, v11);
  v15 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(v12, v13, &unk_1F0E6E398, v14);
  objc_sync_exit(self);
  return v15;
}

- (__CFArray)copyTechnologiesInUse
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B87F9C0;
  v9[3] = &unk_1E753E388;
  v9[4] = &v10;
  objc_msgSend_getTechnologiesInUseWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFArray)copyGnssBandsInUse
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B8846AC;
  v9[3] = &unk_1E753E388;
  v9[4] = &v10;
  objc_msgSend_getGnssBandsInUseWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (int)getAccessoryTypeBitSet
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B887888;
  v14[3] = &unk_1E753E518;
  v14[4] = &v15;
  objc_msgSend_getAccessoryTypeBitSetWithReplyBlock_(v4, v5, v14, v6);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(v16 + 6);
    *buf = 67109120;
    v21 = v8;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryTypeBitSet,%d", buf, 8u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v10 = *(v16 + 6);
    v19[0] = 67109120;
    v19[1] = v10;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#Spi,getAccessoryTypeBitSet,%d", v19, 8);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getAccessoryTypeBitSet]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v12;
}

- (id)asynchronousRemoteObject
{
  objc_sync_enter(self);
  v6 = objc_msgSend_connection(self, v3, v4, v5);
  v9 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v6, v7, &unk_1F0E6E3B8, v8);
  objc_sync_exit(self);
  return v9;
}

- (unsigned)setAuthorizationStatus:(unsigned __int8)status withCorrectiveCompensation:(int)compensation forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v8 = *&compensation;
  statusCopy = status;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = objc_msgSend_synchronousRemoteObject(self, a2, status, *&compensation);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B1A7C;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  objc_msgSend_setAuthorizationStatus_withCorrectiveCompensation_forBundleID_orBundlePath_replyBlock_(v10, v11, statusCopy != 0, v8, d, path, v13);
  LOBYTE(path) = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return path;
}

- (unsigned)getIncidentalUseMode:(int *)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, mode, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B1B70;
  v11[3] = &unk_1E753E2E8;
  v11[4] = &v12;
  v11[5] = mode;
  objc_msgSend_getIncidentalUseModeForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (unsigned)reportLocationUtilityEvent:(int)event atDate:(__CFDate *)date
{
  dateCopy = date;
  v5 = *&event;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, *&event, date);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B1C6C;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  objc_msgSend_reportLocationUtilityEvent_atDate_withReplyBlock_(v6, v7, v5, dateCopy, v9);
  LOBYTE(dateCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return dateCopy;
}

- (void)clearLocationAuthorizationForBundleId:(__CFString *)id orBundlePath:(__CFString *)path
{
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, id, path);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B1D50;
  v8[3] = &unk_1E753DC90;
  v8[4] = v9;
  objc_msgSend_resetClientForBundleId_orBundlePath_withReplyBlock_(v6, v7, id, path, v8);
  _Block_object_dispose(v9, 8);
}

- (unsigned)clearLocationAuthorizations
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B1E28;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  objc_msgSend_resetAllClientsWithReplyBlock_(v4, v5, v9, v6);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getArchivedAuthorizationDecisionsWithError:(id *)error
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_19B9B1FE0;
  v25 = sub_19B9B1FF0;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = sub_19B9B1FE0;
  v19 = sub_19B9B1FF0;
  v20 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, error, v3);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B9B1FFC;
  v14[3] = &unk_1E753E310;
  v14[4] = &v15;
  v14[5] = &v21;
  objc_msgSend_getArchivedAuthorizationDecisionsWithReplyBlock_(v5, v6, v14, v7);
  v8 = v22[5];
  v9 = v16[5];
  if (!v22[5] && !v16[5])
  {
    v11 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v10, @"com.apple.locationd.internalservice.errorDomain", 1, 0);
    v16[5] = v11;
  }

  if (error)
  {
    *error = v16[5];
  }

  v12 = v22[5];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
  return v12;
}

- (id)applyArchivedAuthorizationDecisions:(id)decisions
{
  v9 = objc_msgSend_UUID(MEMORY[0x1E696AFB0], a2, decisions, v3);
  v23 = 0;
  v24 = &v23;
  v25 = 0x3052000000;
  v26 = sub_19B9B1FE0;
  v27 = sub_19B9B1FF0;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v10 = 3;
  do
  {
    v11 = objc_msgSend_synchronousRemoteObject(self, v6, v7, v8);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_19B9B21FC;
    v18[3] = &unk_1E753E338;
    v18[4] = &v23;
    v18[5] = &v19;
    objc_msgSend_applyArchivedAuthorizationDecisions_withConfirmationToken_replyBlock_(v11, v12, decisions, v9, v18);
    if (v20[3])
    {
      v13 = v24[5];
      goto LABEL_7;
    }

    --v10;
  }

  while (v10);
  v13 = v24[5];
  if (!v13)
  {
    v14 = objc_alloc(MEMORY[0x1E696ABC0]);
    v13 = objc_msgSend_initWithDomain_code_userInfo_(v14, v15, @"com.apple.locationd.internalservice.errorDomain", 1, 0);
    v24[5] = v13;
  }

LABEL_7:
  v16 = v13;
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
  return v16;
}

- (__CFDictionary)copyAppsUsingLocation
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B2320;
  v9[3] = &unk_1E753E360;
  v9[4] = &v10;
  objc_msgSend_getAppsUsingLocationWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFDictionary)copyActiveClientsUsingLocation
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B2428;
  v9[3] = &unk_1E753E360;
  v9[4] = &v10;
  objc_msgSend_getActiveClientsUsingLocationWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFDictionary)copyInternalState
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B2530;
  v9[3] = &unk_1E753E360;
  v9[4] = &v10;
  objc_msgSend_getClientManagerInternalStateWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFDictionary)copyZaxisStats
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B2618;
  v9[3] = &unk_1E753E360;
  v9[4] = &v10;
  objc_msgSend_getZaxisStatsWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)setLocationDefaultForKey:(__CFString *)key value:(void *)value
{
  v13 = *MEMORY[0x1E69E9840];
  if (key)
  {
    if (value)
    {
      v6 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], a2, value, 200, 0, 0);
    }

    else
    {
      v6 = 0;
    }

    v10 = objc_msgSend_synchronousRemoteObject(self, a2, key, value);

    MEMORY[0x1EEE66B58](v10, sel_setLocationDefaultForKey_andValue_replyBlock_, key, v6);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "#Spi, Key is NULL!", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v11[0] = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, Key is NULL!", v11, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setLocationDefaultForKey:value:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

- (void)getLocationDefaultForKey:(__CFString *)key
{
  keyCopy = key;
  if (key)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3052000000;
    v14 = sub_19B9B1FE0;
    v15 = sub_19B9B1FF0;
    v16 = 0;
    v5 = objc_msgSend_synchronousRemoteObject(self, a2, key, v3);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B9B2B30;
    v10[3] = &unk_1E753E3B0;
    v10[4] = &v11;
    objc_msgSend_getLocationDefaultForKey_replyBlock_(v5, v6, keyCopy, v10);
    v8 = v12[5];
    if (v8)
    {
      keyCopy = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v7, v8, 0, 0, 0);
    }

    else
    {
      keyCopy = 0;
    }

    _Block_object_dispose(&v11, 8);
  }

  return keyCopy;
}

- (id)timeZoneAtLocation:(id)location
{
  if (!location)
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v13, "[CLLocationInternalClient timeZoneAtLocation:]", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v12, v16, v15, @"LocationInternal.m", 665, @"Invalid parameter not satisfying: %@", @"nil != location");
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_19B9B1FE0;
  v23 = sub_19B9B1FF0;
  v24 = 0;
  v9 = objc_msgSend_synchronousRemoteObject(self, a2, location, v3);
  if (location)
  {
    objc_msgSend_clientLocation(location, v6, v7, v8);
  }

  else
  {
    memset(v18, 0, 156);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B9B2DD4;
  v17[3] = &unk_1E753E3D8;
  v17[4] = &v19;
  objc_msgSend_timeZoneForLocation_replyBlock_(v9, v6, v18, v17);
  v10 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v10;
}

- (void)setPrivateMode:(unsigned __int8)mode
{
  modeCopy = mode;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, mode, v3);

  MEMORY[0x1EEE66B58](v5, sel_setPrivateMode_replyBlock_, modeCopy != 0, &unk_1F0E6E3F8);
}

- (unsigned)getPrivateMode
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B30C8;
  v9[3] = &unk_1E753E400;
  v9[4] = &v10;
  objc_msgSend_getPrivateMode_(v4, v5, v9, v6);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)pingDaemon
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B31A0;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  objc_msgSend_pingDaemonWithReplyBlock_(v4, v5, v9, v6);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)setLocationServicesEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, enabled, v3);
  objc_msgSend_setLocationServicesEnabled_replyBlock_(v5, v6, enabledCopy != 0, &unk_1F0E6E418);
  v7 = *MEMORY[0x1E695E8B8];
  v8 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.locationd", v7, v8);
}

- (unsigned)getLocationServicesEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = objc_msgSend_synchronousRemoteObject(self, a2, enabled, v3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B9B3488;
    v9[3] = &unk_1E753E2E8;
    v9[4] = &v10;
    v9[5] = enabledCopy;
    objc_msgSend_getLocationServicesEnabledWithReplyBlock_(v5, v6, v9, v7);
    LOBYTE(enabledCopy) = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return enabledCopy;
}

- (id)setAuthorizationPromptMapDisplayEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, enabled, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B35AC;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  objc_msgSend_setAuthorizationPromptMapDisplayEnabled_replyBlock_(v5, v6, enabledCopy != 0, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)getAuthorizationPromptMapDisplayEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = objc_msgSend_synchronousRemoteObject(self, a2, enabled, v3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B9B3834;
    v9[3] = &unk_1E753E428;
    v9[4] = &v10;
    v9[5] = enabledCopy;
    objc_msgSend_getAuthorizationPromptMapDisplayEnabledWithReplyBlock_(v5, v6, v9, v7);
    LOBYTE(enabledCopy) = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return enabledCopy;
}

- (id)setTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path statusData:(id)data
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_19B9B1FE0;
  v23 = sub_19B9B1FF0;
  v24 = 0;
  if (!data)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, id, path);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, "[CLLocationInternalClient setTemporaryAuthorizationStatusForBundleId:orBundlePath:statusData:]", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v13, v17, v16, @"LocationInternal.m", 788, @"Invalid parameter not satisfying: %@", @"data != nil");
  }

  v9 = objc_msgSend_synchronousRemoteObject(self, a2, id, path);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_19B9B39D0;
  v18[3] = &unk_1E753DC90;
  v18[4] = &v19;
  objc_msgSend_setTemporaryAuthorizationStatusForBundleId_orBundlePath_statusData_replyBlock_(v9, v10, id, path, data, v18);
  v11 = v20[5];
  _Block_object_dispose(&v19, 8);
  return v11;
}

- (id)getTemporaryAuthorizationStatusForBundleId:(id)id orBundlePath:(id)path error:(id *)error
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = sub_19B9B1FE0;
  v17 = sub_19B9B1FF0;
  v18 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, id, path);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B9B3C84;
  v12[3] = &unk_1E753E450;
  v12[4] = &v13;
  v12[5] = error;
  objc_msgSend_getTemporaryAuthorizationStatusForBundleId_orBundlePath_replyBlock_(v8, v9, id, path, v12);
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (double)modifyOrSetAuthorizationTime:(double)time forBundleID:(id)d orBundlePath:(id)path
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0xBFF0000000000000;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, d, path);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B9B3F38;
  v12[3] = &unk_1E753E478;
  v12[4] = &v13;
  objc_msgSend_modifyOrSetAuthorizationTime_forBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v12, time);
  v10 = v14[3];
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (id)triggerExpiredAuthorizationPurgeOnClientManager
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B41CC;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  objc_msgSend_triggerExpiredAuthorizationPurgeWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)setGestureServiceEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, enabled, v3);

  MEMORY[0x1EEE66B58](v5, sel_setGestureServiceEnabled_replyBlock_, enabledCopy != 0, &unk_1F0E6E438);
}

- (unsigned)getGestureServiceEnabled:(char *)enabled
{
  enabledCopy = enabled;
  if (enabled)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v5 = objc_msgSend_synchronousRemoteObject(self, a2, enabled, v3);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_19B9B4620;
    v9[3] = &unk_1E753E428;
    v9[4] = &v10;
    v9[5] = enabledCopy;
    objc_msgSend_getGestureServiceEnabledWithReplyBlock_(v5, v6, v9, v7);
    LOBYTE(enabledCopy) = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  return enabledCopy;
}

- (unsigned)getAuthorizationStatusForApp:(int *)app withAuditToken:(id *)token
{
  tokenCopy = token;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, app, token);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B4720;
  v11[3] = &unk_1E753E2E8;
  v11[4] = &v12;
  v11[5] = app;
  v7 = *&tokenCopy->var0[4];
  v10[0] = *tokenCopy->var0;
  v10[1] = v7;
  objc_msgSend_getAuthorizationStatusForAppWithAuditToken_replyBlock_(v6, v8, v10, v11);
  LOBYTE(tokenCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return tokenCopy;
}

- (unsigned)getAuthorizationStatus:(int *)status forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, status, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B4820;
  v11[3] = &unk_1E753E2E8;
  v11[4] = &v12;
  v11[5] = status;
  objc_msgSend_getAuthorizationStatusForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (unsigned)getPrecisionPermission:(char *)permission forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3052000000;
  v22 = sub_19B9B1FE0;
  v23 = sub_19B9B1FF0;
  v24 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, permission, d);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_19B9B4AFC;
  v18[3] = &unk_1E753E4A0;
  v18[5] = &v19;
  v18[6] = permission;
  v18[4] = &v25;
  objc_msgSend_getPrecisionPermissionForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v18);
  v10 = v20;
  if (v20[5])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v11 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      v12 = v20[5];
      buf = 68289282;
      v30 = 2082;
      v31 = "";
      v32 = 2114;
      v33 = v12;
      _os_log_impl(&dword_19B873000, v11, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, CLInternalGetPrecisionPermission failed, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v13 = qword_1ED519090;
    v14 = os_signpost_enabled(qword_1ED519090);
    v10 = v20;
    if (v14)
    {
      v15 = v20[5];
      buf = 68289282;
      v30 = 2082;
      v31 = "";
      v32 = 2114;
      v33 = v15;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, CLInternalGetPrecisionPermission failed", "{msg%{public}.0s:#Spi, CLInternalGetPrecisionPermission failed, error:%{public, location:escape_only}@}", &buf, 0x1Cu);
      v10 = v20;
    }
  }

  v16 = *(v26 + 24);
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  return v16;
}

- (unsigned)performMigration
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B4D94;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  objc_msgSend_performMigrationWithReplyBlock_(v4, v5, v13, v6);
  if (!*(v15 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "#Spi, _CLInternalPerformMigration failed", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v12 = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, _CLInternalPerformMigration failed", &v12, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient performMigration]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (unsigned)shutdownDaemon
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B4FF4;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  objc_msgSend_shutdownDaemonWithReplyBlock_(v4, v5, v13, v6);
  if (!*(v15 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "#Spi, _CLShutdownDaemon failed", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v12 = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, _CLShutdownDaemon failed", &v12, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient shutdownDaemon]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (unsigned)displayStatistics
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B5250;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  objc_msgSend_displayStatisticsWithReplyBlock_(v4, v5, v13, v6);
  if (!*(v15 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "#Spi, _CLDisplayStatistics failed", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v12 = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, _CLDisplayStatistics failed", &v12, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient displayStatistics]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (unsigned)dumpLogs:(__CFString *)logs
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, logs, v3);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B54B8;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  objc_msgSend_dumpLogsWithDescription_replyBlock_(v5, v6, logs, v13);
  if (!*(v15 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "#Spi, _CLDumpLogs failed", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v12 = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, _CLDumpLogs failed", &v12, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient dumpLogs:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (__CFDictionary)copyMonitoredRegionsForBundleIdentifier:(__CFString *)identifier orBundlePath:(__CFString *)path
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, identifier, path);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9B55A8;
  v10[3] = &unk_1E753E360;
  v10[4] = &v11;
  objc_msgSend_getMonitoredRegionsForBundleID_orBundlePath_replyBlock_(v6, v7, identifier, path, v10);
  v8 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v8;
}

- (BOOL)checkAndExerciseAuthorizationForBundleID:(id)d orBundlePath:(id)path services:(unint64_t)services error:(id *)error
{
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_19B9B1FE0;
  v26 = sub_19B9B1FF0;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v10 = objc_msgSend_synchronousRemoteObject(self, a2, d, path);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B9B5794;
  v17[3] = &unk_1E753E4C8;
  v17[4] = &v22;
  v17[5] = &v28;
  v17[6] = &v18;
  objc_msgSend_checkAndExerciseAuthorizationForBundleID_orBundlePath_services_replyBlock_(v10, v11, d, path, services, v17);
  v12 = v23[5];
  if ((v19[3] & 1) == 0)
  {
    v14 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v13, *MEMORY[0x1E696A250], 4097, 0);
    v23[5] = v14;
  }

  if (error)
  {
    *error = v23[5];
  }

  v15 = *(v29 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v15;
}

- (BOOL)registerCircularInterestZoneWithId:(id)id latitude:(double)latitude longitude:(double)longitude radius:(double)radius serviceMaskOperator:(int)operator provenanceType:(int)type forBundleId:(id)bundleId orBundlePath:(id)self0 error:(id *)self1
{
  v14 = *&type;
  v15 = *&operator;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3052000000;
  v29 = sub_19B9B1FE0;
  v30 = sub_19B9B1FF0;
  v31 = 0;
  v20 = objc_msgSend_synchronousRemoteObject(self, a2, id, *&operator);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = sub_19B9B5988;
  v25[3] = &unk_1E753E338;
  v25[4] = &v26;
  v25[5] = &v32;
  objc_msgSend_registerCircularInterestZoneWithId_latitude_longitude_radius_serviceMaskOperator_provenanceType_forBundleId_orBundlePath_replyBlock_(v20, v21, id, v15, v14, bundleId, path, v25, latitude, longitude, radius);
  v22 = v27[5];
  if (error)
  {
    *error = v27[5];
  }

  v23 = *(v33 + 24) != 0;
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
  return v23;
}

- (BOOL)registerPhenolicInterestZoneWithId:(id)id phenolicLocation:(int)location serviceMaskOperator:(int)operator provenanceType:(int)type forBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error
{
  v11 = *&type;
  v12 = *&operator;
  v13 = *&location;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_19B9B1FE0;
  v25 = sub_19B9B1FF0;
  v26 = 0;
  v15 = objc_msgSend_synchronousRemoteObject(self, a2, id, *&location);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_19B9B5B54;
  v20[3] = &unk_1E753E338;
  v20[4] = &v21;
  v20[5] = &v27;
  objc_msgSend_registerPhenolicInterestZoneWithId_phenolicLocation_serviceMaskOperator_provenanceType_forBundleId_orBundlePath_replyBlock_(v15, v16, id, v13, v12, v11, bundleId, path, v20);
  v17 = v22[5];
  if (error)
  {
    *error = v22[5];
  }

  v18 = *(v28 + 24) != 0;
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);
  return v18;
}

- (BOOL)setRelevance:(BOOL)relevance forInterestZoneWithId:(id)id registeredForBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error
{
  relevanceCopy = relevance;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_19B9B1FE0;
  v22 = sub_19B9B1FF0;
  v23 = 0;
  v12 = objc_msgSend_synchronousRemoteObject(self, a2, relevance, id);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B9B5D10;
  v17[3] = &unk_1E753E338;
  v17[4] = &v18;
  v17[5] = &v24;
  objc_msgSend_setRelevance_forInterestZoneWithId_registeredForBundleId_orBundlePath_replyBlock_(v12, v13, relevanceCopy, id, bundleId, path, v17);
  v14 = v19[5];
  if (error)
  {
    *error = v19[5];
  }

  v15 = *(v25 + 24) != 0;
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);
  return v15;
}

- (BOOL)deleteInterestZoneWithId:(id)id registeredForBundleId:(id)bundleId orBundlePath:(id)path error:(id *)error
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_19B9B1FE0;
  v20 = sub_19B9B1FF0;
  v21 = 0;
  v10 = objc_msgSend_synchronousRemoteObject(self, a2, id, bundleId);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B9B5EBC;
  v15[3] = &unk_1E753E338;
  v15[4] = &v16;
  v15[5] = &v22;
  objc_msgSend_deleteInterestZoneWithId_registeredForBundleId_orBundlePath_replyBlock_(v10, v11, id, bundleId, path, v15);
  v12 = v17[5];
  if (error)
  {
    *error = v17[5];
  }

  v13 = *(v23 + 24) != 0;
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  return v13;
}

- (unsigned)getLocationForBundleID:(__CFString *)d orBundlePath:(__CFString *)path dynamicAccuracyReductionEnabled:(unsigned __int8)enabled allowsAlteredAccessoryLocations:(unsigned __int8)locations location:(id *)location
{
  if (!location)
  {
    return 0;
  }

  locationsCopy = locations;
  enabledCopy = enabled;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12 = objc_msgSend_synchronousRemoteObject(self, a2, d, path);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_19B9B600C;
  v16[3] = &unk_1E753E450;
  v16[4] = &v17;
  v16[5] = location;
  objc_msgSend_getLocationForBundleID_orBundlePath_dynamicAccuracyReductionEnabled_allowsAlteredAccessoryLocations_replyBlock_(v12, v13, d, path, enabledCopy != 0, locationsCopy != 0, v16);
  v14 = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return v14;
}

- (unsigned)getGroundAltitudeForBundleID:(__CFString *)d orBundlePath:(__CFString *)path location:(id)location groundAltitude:(id *)altitude
{
  v6 = 0;
  if (location && altitude)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v11 = objc_msgSend_synchronousRemoteObject(self, a2, d, path);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_19B9B6154;
    v14[3] = &unk_1E753E4F0;
    v14[4] = &v15;
    v14[5] = altitude;
    objc_msgSend_getGroundAltitudeForBundleID_orBundlePath_location_replyBlock_(v11, v12, d, path, location, v14);
    v6 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  return v6;
}

- (void)setMapMatchingRouteHint:(id *)hint count:(int)count routingType:(int)type stepType:(int)stepType
{
  v36 = *MEMORY[0x1E69E9840];
  if (count < 501)
  {
    v10 = *&stepType;
    v11 = *&type;
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v14 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67240704;
      countCopy3 = count;
      v32 = 1026;
      v33 = v11;
      v34 = 1026;
      v35 = v10;
      _os_log_impl(&dword_19B873000, v14, OS_LOG_TYPE_DEBUG, "#Spi,RouteHint,LocationInternal,Received route hint road segments,%{public}d,routeType,%{public}d,stepType,%{public}d", buf, 0x14u);
    }

    v15 = sub_19B87DD40();
    if (*(v15 + 160) > 1 || *(v15 + 164) > 1 || *(v15 + 168) > 1 || *(v15 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v24 = 67240704;
      countCopy4 = count;
      v26 = 1026;
      v27 = v11;
      v28 = 1026;
      v29 = v10;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#Spi,RouteHint,LocationInternal,Received route hint road segments,%{public}d,routeType,%{public}d,stepType,%{public}d", &v24, 20);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient setMapMatchingRouteHint:count:routingType:stepType:]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }

    v18 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v16, hint, 40 * count);
    v22 = objc_msgSend_synchronousRemoteObject(self, v19, v20, v21);
    objc_msgSend_setMapMatchingRouteHint_routingType_stepType_replyBlock_(v22, v23, v18, v11, v10, &unk_1F0E6E458);
  }

  else
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_ERROR))
    {
      *buf = 67240448;
      countCopy3 = count;
      v32 = 1026;
      v33 = 500;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_ERROR, "#Spi,RouteHintError, Exceeded max number of route hint road segments (%{public}d > %{public}d)", buf, 0xEu);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v24 = 67240448;
      countCopy4 = count;
      v26 = 1026;
      v27 = 500;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 16, "#Spi,RouteHintError, Exceeded max number of route hint road segments (%{public}d > %{public}d)", &v24, 14);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient setMapMatchingRouteHint:count:routingType:stepType:]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

- (void)setTrackRunHint:(id *)hint
{
  v17 = *MEMORY[0x1E69E9840];
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v5 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_INFO, "#Spi,CLTR,CLTrackRunHint received,framework side", buf, 2u);
  }

  v6 = sub_19B87DD40();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v15[0] = 0;
    v8 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 1, "#Spi,CLTR,CLTrackRunHint received,framework side", v15, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient setTrackRunHint:]", "CoreLocation: %s\n", v8);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v9 = objc_msgSend_dataWithBytes_length_(MEMORY[0x1E695DEF0], v7, hint, 16);
  v13 = objc_msgSend_synchronousRemoteObject(self, v10, v11, v12);
  objc_msgSend_setTrackRunHint_replyBlock_(v13, v14, v9, &unk_1F0E6E478);
}

- (int)getAccessoryPASCDTransmissionState
{
  v22 = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 4;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = sub_19B9B6CD8;
  v14[3] = &unk_1E753E518;
  v14[4] = &v15;
  objc_msgSend_getAccessoryPASCDTransmissionStateWithReplyBlock_(v4, v5, v14, v6);
  if (qword_1ED519088 != -1)
  {
    dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
  }

  v7 = qword_1ED519090;
  if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(v16 + 6);
    *buf = 67109120;
    v21 = v8;
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#Spi,getAccessoryPASCDTransmissionState,%d", buf, 8u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v10 = *(v16 + 6);
    v19[0] = 67109120;
    v19[1] = v10;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#Spi,getAccessoryPASCDTransmissionState,%d", v19, 8);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getAccessoryPASCDTransmissionState]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  v12 = *(v16 + 6);
  _Block_object_dispose(&v15, 8);
  return v12;
}

- (id)getOdometryBatchedLocations
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_19B9B1FE0;
  v26 = sub_19B9B1FF0;
  v27 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_19B9B7150;
  v21[3] = &unk_1E753E360;
  v21[4] = &v22;
  objc_msgSend_getOdometryBatchedLocationsWithReplyBlock_(v4, v5, v21, v6);
  if (v23[5])
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_msgSend_count(v23[5], v8, v9, v10);
      *buf = 134349056;
      v31 = v11;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "#Spi,getOdometryBatchedLocations,returned with count,%{public}lu", buf, 0xCu);
    }

    v12 = sub_19B87DD40();
    if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v16 = qword_1ED519090;
      v17 = objc_msgSend_count(v23[5], v13, v14, v15);
      v28 = 134349056;
      v29 = v17;
      v18 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 2, "#Spi,getOdometryBatchedLocations,returned with count,%{public}lu", &v28, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getOdometryBatchedLocations]", "CoreLocation: %s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }

  v19 = v23[5];
  _Block_object_dispose(&v22, 8);
  return v19;
}

- (unsigned)copyLastLog
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B76D0;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  objc_msgSend_copyLastLogWithReplyBlock_(v4, v5, v13, v6);
  if (!*(v15 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v7 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_FAULT, "#Spi, _CLCopyLastLog failed", buf, 2u);
    }

    v8 = sub_19B87DD40();
    if ((*(v8 + 160) & 0x80000000) == 0 || (*(v8 + 164) & 0x80000000) == 0 || (*(v8 + 168) & 0x80000000) == 0 || *(v8 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v12 = 0;
      v9 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 17, "#Spi, _CLCopyLastLog failed", &v12, 2);
      sub_19B885924("Generic", 1, 0, 0, "[CLLocationInternalClient copyLastLog]", "CoreLocation: %s\n", v9);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }

  v10 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v10;
}

- (unsigned)setStatusBarIconEnabled:(BOOL)enabled forEntityClass:(unsigned int)class
{
  v4 = *&class;
  enabledCopy = enabled;
  v23 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, enabled, *&class);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_19B9B792C;
  v12[3] = &unk_1E753DC90;
  v12[4] = &v13;
  objc_msgSend_setStatusBarIconEnabledForEntityClass_enabled_replyBlock_(v6, v7, v4, enabledCopy, v12);
  if (!*(v14 + 24))
  {
    if (qword_1ED519088 != -1)
    {
      dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
    }

    v8 = qword_1ED519090;
    if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = v4;
      _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:#Spi, Setting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", buf, 0x1Cu);
      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }
    }

    v9 = qword_1ED519090;
    if (os_signpost_enabled(qword_1ED519090))
    {
      *buf = 68289282;
      v18 = 0;
      v19 = 2082;
      v20 = "";
      v21 = 2050;
      v22 = v4;
      _os_signpost_emit_with_name_impl(&dword_19B873000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "#Spi, Setting status bar enabled for entity class failed", "{msg%{public}.0s:#Spi, Setting status bar enabled for entity class failed, entityClass:%{public, location:CLLocationDictionaryUtilitiesEntityClass}lld}", buf, 0x1Cu);
    }
  }

  v10 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  return v10;
}

- (unsigned)getStatusBarIconEnabled:(BOOL *)enabled forEntityClass:(unsigned int)class
{
  v4 = *&class;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, enabled, *&class);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B7A1C;
  v9[3] = &unk_1E753E540;
  v9[4] = &v11;
  v9[5] = enabled;
  v10 = v4;
  objc_msgSend_getStatusBarIconEnabledForEntityClass_replyBlock_(v6, v7, v4, v9);
  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (int)getStatusBarIconState
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B7C8C;
  v9[3] = &unk_1E753E518;
  v9[4] = &v10;
  objc_msgSend_getStatusBarIconState_(v4, v5, v9, v6);
  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getPipelinedCache
{
  v5 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = sub_19B9B1FE0;
  v18 = sub_19B9B1FF0;
  v19 = 0;
  do
  {
    v6 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_19B9B7DC8;
    v13[3] = &unk_1E753E388;
    v13[4] = &v14;
    objc_msgSend_getPipelinedCacheWithReply_(v6, v7, v13, v8);
    v9 = v15[5];
    if (v9)
    {
      v10 = 1;
    }

    else
    {
      v10 = v5 >= 9;
    }

    ++v5;
  }

  while (!v10);
  v11 = v9;
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (unsigned)getGyroCalibrationDatabaseBiasFit:(id *)fit atTemperature:(float)temperature
{
  fitCopy = fit;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = objc_msgSend_synchronousRemoteObject(self, a2, fit, v4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B7EE0;
  v11[3] = &unk_1E753E450;
  v11[4] = &v12;
  v11[5] = fitCopy;
  objc_msgSend_getGyroCalibrationDatabaseBiasFitAtTemperature_withReply_(v7, v8, v11, v9, COERCE_DOUBLE(LODWORD(temperature)));
  LOBYTE(fitCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return fitCopy;
}

- (BOOL)startStopAdvertisingBeacon:(id)beacon power:(id)power
{
  if (power)
  {
    v6 = objc_msgSend_intValue(power, a2, beacon, power);
  }

  else
  {
    v6 = 0xFFFFFFFFLL;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v7 = objc_msgSend_synchronousRemoteObject(self, a2, beacon, power);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B802C;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  objc_msgSend_startStopAdvertisingBeacon_atPower_replyBlock_(v7, v8, beacon, v6, v11);
  v9 = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (unsigned)insertGyroCalibrationDatabaseBiasEstimateIfValid:(id)valid temperature:(float)temperature variance:(id)variance timestamp:(double)timestamp
{
  var2 = variance.var2;
  var1 = variance.var1;
  var0 = variance.var0;
  v13 = valid.var2;
  v14 = valid.var1;
  v15 = valid.var0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v16 = objc_msgSend_synchronousRemoteObject(self, a2, v6, v7);
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = sub_19B9B8164;
  v27[3] = &unk_1E753DC90;
  v27[4] = &v28;
  *&v17 = v14;
  *&v18 = v13;
  *&v19 = temperature;
  *&v20 = var0;
  *&v21 = var1;
  *&v22 = var2;
  objc_msgSend_insertGyroCalibrationDatabaseBiasEstimateIfValid_temperature_variance_timestamp_replyBlock_(v16, v23, v27, v24, COERCE_DOUBLE(LODWORD(v15)), v17, v18, v19, v20, v21, v22, timestamp);
  v25 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  return v25;
}

- (unsigned)gyroCalibrationDatabaseWipe
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B823C;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  objc_msgSend_gyroCalibrationDatabaseWipeWithReplyBlock_(v4, v5, v9, v6);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)getGyroCalibrationDatabaseNumTemperatures:(int *)temperatures
{
  temperaturesCopy = temperatures;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, temperatures, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B8318;
  v9[3] = &unk_1E753E2E8;
  v9[4] = &v10;
  v9[5] = temperaturesCopy;
  objc_msgSend_gyroCalibrationDatabaseGetNumTemperaturesWithReplyBlock_(v5, v6, v9, v7);
  LOBYTE(temperaturesCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return temperaturesCopy;
}

- (unsigned)configure:(id)configure
{
  v3 = *&configure.var7;
  v4 = *&configure.var0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, *&configure.var0, *&configure.var7);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B8414;
  v8[3] = &unk_1E753DC90;
  v8[4] = &v9;
  objc_msgSend_configure_replyBlock_(v5, v6, v4, v3, v8);
  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

- (unsigned)getControlPlaneStatusReportClear:(int)clear startTime:(double *)time endTime:(double *)endTime latitude:(double *)latitude longitude:(double *)longitude altitude:(double *)altitude accuracy:(double *)accuracy status:(unsigned int *)self0
{
  clearCopy = clear;
  v10 = 0;
  v43 = *MEMORY[0x1E69E9840];
  if (longitude && latitude && time && endTime && status)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x3052000000;
    v39 = sub_19B9B1FE0;
    v40 = sub_19B9B1FF0;
    v41 = 0;
    v15 = objc_msgSend_synchronousRemoteObject(self, a2, *&clear, time);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = sub_19B9B87A8;
    v35[3] = &unk_1E753E568;
    v35[6] = endTime;
    v35[7] = latitude;
    v35[8] = longitude;
    v35[9] = altitude;
    v35[10] = accuracy;
    v35[11] = status;
    v35[4] = &v36;
    v35[5] = time;
    objc_msgSend_getControlPlaneStatusReportClear_replyBlock_(v15, v16, clearCopy, v35);
    while (1)
    {
      v20 = v37[5];
      if (!v20)
      {
        v10 = 1;
        goto LABEL_24;
      }

      if (objc_msgSend_code(v20, v17, v18, v19) != 1)
      {
        break;
      }

      if (qword_1ED519088 != -1)
      {
        dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
      }

      v21 = qword_1ED519090;
      if (os_log_type_enabled(qword_1ED519090, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v21, OS_LOG_TYPE_DEBUG, "#Spi, Blocking Mig routine deferred on Daemon side... waiting and retrying", buf, 2u);
      }

      v22 = sub_19B87DD40();
      if (*(v22 + 160) > 1 || *(v22 + 164) > 1 || *(v22 + 168) > 1 || *(v22 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1ED519088 != -1)
        {
          dispatch_once(&qword_1ED519088, &unk_1F0E6E4D8);
        }

        v34[0] = 0;
        v23 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1ED519090, 2, "#Spi, Blocking Mig routine deferred on Daemon side... waiting and retrying", v34, 2);
        sub_19B885924("Generic", 1, 0, 2, "[CLLocationInternalClient getControlPlaneStatusReportClear:startTime:endTime:latitude:longitude:altitude:accuracy:status:]", "CoreLocation: %s\n", v23);
        if (v23 != buf)
        {
          free(v23);
        }
      }

      sleep(1u);
      v27 = objc_msgSend_synchronousRemoteObject(self, v24, v25, v26);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = sub_19B9B87E4;
      v33[3] = &unk_1E753E568;
      v33[6] = endTime;
      v33[7] = latitude;
      v33[8] = longitude;
      v33[9] = altitude;
      v33[10] = accuracy;
      v33[11] = status;
      v33[4] = &v36;
      v33[5] = time;
      objc_msgSend_getControlPlaneStatusReportClear_replyBlock_(v27, v28, clearCopy, v33);
    }

    v10 = v37[5] == 0;
LABEL_24:
    _Block_object_dispose(&v36, 8);
  }

  return v10;
}

- (unsigned)getEmergencyLocationSettingsCompatibilityVersion:(int *)version andContentVersion:(int *)contentVersion
{
  v4 = 0;
  if (version && contentVersion)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v7 = objc_msgSend_synchronousRemoteObject(self, a2, version, contentVersion);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B9B8900;
    v11[3] = &unk_1E753E590;
    v11[5] = version;
    v11[6] = contentVersion;
    v11[4] = &v12;
    objc_msgSend_getEmergencyLocationSettingsVersion_(v7, v8, v11, v9);
    v4 = *(v13 + 24);
    _Block_object_dispose(&v12, 8);
  }

  return v4;
}

- (unsigned)deleteCurrentEmergencyLocationAsset
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B89E4;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  objc_msgSend_deleteCurrentEmergencyLocationAsset_(v4, v5, v9, v6);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFDictionary)copyNearbyAssetSettings
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B8AE0;
  v9[3] = &unk_1E753E5B8;
  v9[4] = &v10;
  objc_msgSend_copyNearbyAssetSettings_(v4, v5, v9, v6);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFDictionary)copyNearbyAssetSettingsOfAccessoryFile:(__CFString *)file
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = sub_19B9B1FE0;
  v14 = sub_19B9B1FF0;
  v15 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, file, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B8C04;
  v9[3] = &unk_1E753E5B8;
  v9[4] = &v10;
  objc_msgSend_copyNearbyAssetSettingsOfAccessoryFile_withReply_(v5, v6, file, v9);
  v7 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (__CFDictionary)copyRoutineAssetSettingsWithCompatibilityVersion:(int *)version contentVersion:(int *)contentVersion
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9B1FE0;
  v16 = sub_19B9B1FF0;
  v17 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, version, contentVersion);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B8D34;
  v11[3] = &unk_1E753E5E0;
  v11[4] = &v12;
  v11[5] = version;
  v11[6] = contentVersion;
  objc_msgSend_copyRoutineAssetSettings_(v6, v7, v11, v8);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (unsigned)shouldDisplayEEDUI
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B8E50;
  v9[3] = &unk_1E753E608;
  v9[4] = &v10;
  objc_msgSend_shouldDisplayEEDUI_(v4, v5, v9, v6);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (id)getEEDCloakingKey:(id *)key
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9B1FE0;
  v16 = sub_19B9B1FF0;
  v17 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, key, v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B8F58;
  v11[3] = &unk_1E753E450;
  v11[4] = &v12;
  v11[5] = key;
  objc_msgSend_getEEDCloakingKeyWithReply_(v5, v6, v11, v7);
  v8 = *key;
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)getEEDEmergencyContactNames:(id *)names
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9B1FE0;
  v16 = sub_19B9B1FF0;
  v17 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, names, v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B9094;
  v11[3] = &unk_1E753E630;
  v11[4] = &v12;
  v11[5] = names;
  objc_msgSend_getEEDEmergencyContactNamesWithReply_(v5, v6, v11, v7);
  v8 = *names;
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)getMotionSensorLogs
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9B1FE0;
  v16 = sub_19B9B1FF0;
  v17 = 0;
  while (1)
  {
    v5 = v13[5];
    if (v5)
    {
      break;
    }

    v6 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B9B91F0;
    v11[3] = &unk_1E753E658;
    v11[4] = &v12;
    objc_msgSend_getMotionSensorLogsWithReply_(v6, v7, v11, v8);
  }

  v9 = v5;
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (id)getAccessoryMotionSensorLogs
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9B1FE0;
  v16 = sub_19B9B1FF0;
  v17 = 0;
  while (1)
  {
    v5 = v13[5];
    if (v5)
    {
      break;
    }

    v6 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_19B9B9338;
    v11[3] = &unk_1E753E658;
    v11[4] = &v12;
    objc_msgSend_getAccessoryMotionSensorLogsWithReply_(v6, v7, v11, v8);
  }

  v9 = v5;
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (unsigned)setTemporaryAuthorizationGranted:(unsigned __int8)granted forBundleID:(__CFString *)d orBundlePath:(__CFString *)path orAuditToken:(id *)token byLocationButton:(unsigned __int8)button voiceInteractionEnabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  buttonCopy = button;
  grantedCopy = granted;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = objc_msgSend_synchronousRemoteObject(self, a2, granted, d);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_19B9B9484;
  v19[3] = &unk_1E753DC90;
  v19[4] = &v20;
  v15 = *&token->var0[4];
  v18[0] = *token->var0;
  v18[1] = v15;
  objc_msgSend_setTemporaryAuthorizationGranted_forBundleID_orBundlePath_orAuditToken_byLocationButton_voiceInteractionEnabled_replyBlock_(v14, v16, grantedCopy != 0, d, path, v18, buttonCopy != 0, enabledCopy != 0, v19);
  LOBYTE(path) = *(v21 + 24);
  _Block_object_dispose(&v20, 8);
  return path;
}

- (unsigned)setTemporaryPreciseAuthorizationGranted:(unsigned __int8)granted forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  grantedCopy = granted;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, granted, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B9580;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  objc_msgSend_setTemporaryPreciseAuthorizationGranted_forBundleID_orBundlePath_replyBlock_(v8, v9, grantedCopy != 0, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (unsigned)tearDownLocationAuthPromptForBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  pathCopy = path;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, d, path);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B9670;
  v9[3] = &unk_1E753DC90;
  v9[4] = &v10;
  objc_msgSend_tearDownLocationAuthPromptForBundleID_orBundlePath_replyBlock_(v6, v7, d, pathCopy, v9);
  LOBYTE(pathCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return pathCopy;
}

- (unsigned)setPinnedLocationAuthorization:(unsigned __int8)authorization
{
  authorizationCopy = authorization;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, authorization, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B9750;
  v8[3] = &unk_1E753DC90;
  v8[4] = &v9;
  objc_msgSend_setPinnedLocationAuthorization_replyBlock_(v5, v6, authorizationCopy, v8);
  LOBYTE(authorizationCopy) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return authorizationCopy;
}

- (unsigned)getPinnedLocationAuthorizationState:(CLLocationCoordinate2D *)state
{
  stateCopy = state;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, state, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B982C;
  v9[3] = &unk_1E753E680;
  v9[4] = &v10;
  v9[5] = stateCopy;
  objc_msgSend_getPinnedLocationAuthorizationStateWithReplyBlock_(v5, v6, v9, v7);
  LOBYTE(stateCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return stateCopy;
}

- (void)checkAndExerciseLearnedRoutesAuthorizationForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block
{
  v7 = objc_msgSend_asynchronousRemoteObject(self, a2, d, path);

  MEMORY[0x1EEE66B58](v7, sel_checkAndExerciseLearnedRoutesAuthorizationForBundleID_orBundlePath_replyBlock_, d, path);
}

- (void)checkAndExercisePushClientAuthorizationForBundleID:(id)d replyBlock:(id)block
{
  v6 = objc_msgSend_asynchronousRemoteObject(self, a2, d, block);

  MEMORY[0x1EEE66B58](v6, sel_checkAndExercisePushClientAuthorizationForBundleID_replyBlock_, d, block);
}

- (void)isEligibleForAlwaysAuthorizationRequestForBundleID:(id)d orBundlePath:(id)path replyBlock:(id)block
{
  v7 = objc_msgSend_asynchronousRemoteObject(self, a2, d, path);

  MEMORY[0x1EEE66B58](v7, sel_isEligibleForAlwaysAuthorizationRequestForBundleID_orBundlePath_replyBlock_, d, path);
}

- (__CFArray)copyActivityAlarms
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9B99E4;
  v9[3] = &unk_1E753E388;
  v9[4] = &v10;
  objc_msgSend_getActivitiesWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (unsigned)setAuthorizationStatusByType:(int)type withCorrectiveCompensation:(int)compensation andZoneIdentifier:(__CFString *)identifier andSubIdentityIdentifier:(__CFString *)identityIdentifier forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = *&compensation;
  v13 = *&type;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = objc_msgSend_synchronousRemoteObject(self, a2, *&type, *&compensation);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_19B9B9B10;
  v17[3] = &unk_1E753DC90;
  v17[4] = &v18;
  objc_msgSend_setAuthorizationStatusByType_withCorrectiveCompensation_andZoneIdentifier_andSubIdentityIdentifier_forBundleID_orBundlePath_replyBlock_(v14, v15, v13, v12, identifier, identityIdentifier, d, path, v17);
  LOBYTE(path) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);
  return path;
}

- (unsigned)updatePillButtonChoiceForOutstandingPrompt:(int)prompt
{
  v4 = *&prompt;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, *&prompt, v3);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B9B9BF0;
  v8[3] = &unk_1E753DC90;
  v8[4] = &v9;
  objc_msgSend_updatePillButtonChoiceForOutstandingPrompt_replyBlock_(v5, v6, v4, v8);
  LOBYTE(v4) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v4;
}

- (unsigned)updatePromptedLatitude:(double)latitude longitude:(double)longitude
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, v4, v5);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_19B9B9CE0;
  v13[3] = &unk_1E753DC90;
  v13[4] = &v14;
  objc_msgSend_updatePromptedLatitude_longitude_replyBlock_(v8, v9, v13, v10, latitude, longitude);
  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

- (unsigned)setIncidentalUseMode:(int)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v7 = *&mode;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, *&mode, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B9DD8;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  objc_msgSend_setIncidentalUseMode_forBundleID_orBundlePath_replyBlock_(v8, v9, v7, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (unsigned)setLocationButtonUseMode:(int)mode forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v7 = *&mode;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, *&mode, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B9ED0;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  objc_msgSend_setLocationButtonUseMode_forBundleID_orBundlePath_replyBlock_(v8, v9, v7, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (unsigned)setBackgroundIndicatorForBundleID:(__CFString *)d orBundlePath:(__CFString *)path enabled:(unsigned __int8)enabled
{
  enabledCopy = enabled;
  pathCopy = path;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, d, path);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9B9FCC;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  objc_msgSend_setBackgroundIndicatorEnabled_forBundleID_orBundlePath_replyBlock_(v8, v9, enabledCopy != 0, d, pathCopy, v11);
  LOBYTE(pathCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return pathCopy;
}

- (unsigned)gyroCalibrationDatabaseSupportsMiniCalibration:(int *)calibration
{
  calibrationCopy = calibration;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_msgSend_synchronousRemoteObject(self, a2, calibration, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9BA0A8;
  v9[3] = &unk_1E753E2E8;
  v9[4] = &v10;
  v9[5] = calibrationCopy;
  objc_msgSend_gyroCalibrationDatabaseSupportsMiniCalibrationWithReplyBlock_(v5, v6, v9, v7);
  LOBYTE(calibrationCopy) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return calibrationCopy;
}

- (unsigned)timeSyncMachTimeStamp:(unint64_t *)stamp oscarTimeStamp:(unint64_t *)timeStamp
{
  stampCopy = stamp;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, stamp, timeStamp);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B9BA1A0;
  v10[3] = &unk_1E753E6A8;
  v10[5] = stampCopy;
  v10[6] = timeStamp;
  v10[4] = &v11;
  objc_msgSend_getOscarTimeSyncWithReplyBlock_(v6, v7, v10, v8);
  LOBYTE(stampCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return stampCopy;
}

- (unsigned)setVisitHistoryAccess:(int)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v7 = *&access;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, *&access, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9BA444;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  objc_msgSend_setVisitHistoryAccess_forBundleID_orBundlePath_replyBlock_(v8, v9, v7, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (unsigned)setLearnedRoutesAccess:(int)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v7 = *&access;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, *&access, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9BA53C;
  v11[3] = &unk_1E753DC90;
  v11[4] = &v12;
  objc_msgSend_setLearnedRoutesAccess_forBundleID_orBundlePath_replyBlock_(v8, v9, v7, d, path, v11);
  LOBYTE(path) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return path;
}

- (BOOL)getVisitHistoryAccessAllowedTime:(double *)time forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, time, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9BA638;
  v11[3] = &unk_1E753E6D0;
  v11[4] = &v12;
  v11[5] = time;
  objc_msgSend_getVisitHistoryAccessAllowedTimeForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return path;
}

- (BOOL)getVisitHistoryAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, access, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9BA740;
  v11[3] = &unk_1E753E2E8;
  v11[4] = &v12;
  v11[5] = access;
  objc_msgSend_getVisitHistoryAccessForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 24) != 0;
  _Block_object_dispose(&v12, 8);
  return path;
}

- (BOOL)getLearnedRoutesAccess:(int *)access forBundleID:(__CFString *)d orBundlePath:(__CFString *)path
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, access, d);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9BA848;
  v11[3] = &unk_1E753E2E8;
  v11[4] = &v12;
  v11[5] = access;
  objc_msgSend_getLearnedRoutesAccessForBundleID_orBundlePath_replyBlock_(v8, v9, d, path, v11);
  LOBYTE(path) = *(v13 + 6) != 0;
  _Block_object_dispose(&v12, 8);
  return path;
}

- (__CFArray)copyRecentLocationsBufferStatus
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_19B9BA92C;
  v9[3] = &unk_1E753E388;
  v9[4] = &v10;
  objc_msgSend_getRecentLocationsBufferStatusWithReplyBlock_(v4, v5, v9, v6);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

- (void)triggerRecentLocationsRevisedFromMachContinuousTime:(double)time toMachContinuousTime:(double)continuousTime
{
  v6 = objc_msgSend_synchronousRemoteObject(self, a2, v4, v5);

  MEMORY[0x1EEE66B58](v6, sel_triggerRecentLocationsRevisedFromMachContinuousTime_toMachContinuousTime_replyBlock_, &unk_1F0E6E498, v7);
}

- (id)fetchRecentLocationAtCfAbsoluteTime:(double)time
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_19B9B1FE0;
  v26 = sub_19B9B1FF0;
  v27 = 0;
  v5 = [CLRecentLocationsFetchOptions alloc];
  v6 = objc_alloc(MEMORY[0x1E695DF00]);
  v10 = objc_msgSend_initWithTimeIntervalSinceReferenceDate_(v6, v7, v8, v9, time);
  v13 = objc_msgSend_initWithDate_(v5, v11, v10, v12);
  v17 = objc_msgSend_synchronousRemoteObject(self, v14, v15, v16);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_19B9BAE88;
  v21[3] = &unk_1E753E6F8;
  v21[4] = &v22;
  objc_msgSend_fetchRecentLocationsWithOptions_replyBlock_(v17, v18, v13, v21);
  v19 = v23[5];
  _Block_object_dispose(&v22, 8);
  return v19;
}

- (id)fetchRecentLocationAtMachContinuousTime:(double)time
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_19B9B1FE0;
  v26 = sub_19B9B1FF0;
  v27 = 0;
  v5 = [CLRecentLocationsFetchOptions alloc];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  v10 = objc_msgSend_initWithDouble_(v6, v7, v8, v9, time);
  v13 = objc_msgSend_initWithMachContinuousTimeSeconds_(v5, v11, v10, v12);
  v17 = objc_msgSend_synchronousRemoteObject(self, v14, v15, v16);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_19B9BB408;
  v21[3] = &unk_1E753E6F8;
  v21[4] = &v22;
  objc_msgSend_fetchRecentLocationsWithOptions_replyBlock_(v17, v18, v13, v21);
  v19 = v23[5];
  _Block_object_dispose(&v22, 8);
  return v19;
}

- (id)fetchRecentLocationsInLastSeconds:(int)seconds
{
  v3 = *&seconds;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3052000000;
  v24 = sub_19B9B1FE0;
  v25 = sub_19B9B1FF0;
  v26 = 0;
  v5 = [CLRecentLocationsFetchOptions alloc];
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  v9 = objc_msgSend_initWithInt_(v6, v7, v3, v8);
  v12 = objc_msgSend_initWithNumberOfSeconds_(v5, v10, v9, v11);
  v16 = objc_msgSend_synchronousRemoteObject(self, v13, v14, v15);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_19B9BB988;
  v20[3] = &unk_1E753E6F8;
  v20[4] = &v21;
  objc_msgSend_fetchRecentLocationsWithOptions_replyBlock_(v16, v17, v12, v20);
  v18 = v22[5];
  _Block_object_dispose(&v21, 8);
  return v18;
}

- (void)requestRouteReconstructionForPedestrian
{
  v4 = objc_msgSend_synchronousRemoteObject(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_requestRouteReconstructionForPedestrianWithReplyBlock_, &unk_1F0E6E4B8, v5);
}

- (void)notifyPassKitPayment:(id)payment transaction:(id)transaction info:(id)info
{
  v8 = objc_msgSend_synchronousRemoteObject(self, a2, payment, transaction);

  objc_msgSend_notifyPassKitPayment_transaction_info_(v8, v9, payment, transaction, info);
}

- (void)notifyWeatherForecast:(id)forecast airQualityConditions:(id)conditions hourlyForecasts:(id)forecasts dailyForecasts:(id)dailyForecasts latitude:(double)latitude longitude:(double)longitude
{
  v14 = objc_msgSend_synchronousRemoteObject(self, a2, forecast, conditions);

  objc_msgSend_notifyWeatherForecast_airQualityConditions_hourlyForecasts_dailyForecasts_latitude_longitude_(v14, v15, forecast, conditions, forecasts, dailyForecasts, latitude, longitude);
}

@end