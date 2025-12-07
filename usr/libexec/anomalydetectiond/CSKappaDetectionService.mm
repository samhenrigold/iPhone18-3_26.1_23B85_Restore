@interface CSKappaDetectionService
- (BOOL)coinflip:(double)coinflip;
- (BOOL)curationSampling;
- (BOOL)isArmedForKappa;
- (BOOL)performanceSampling;
- (BOOL)shouldKeepEarlyCrashTTR;
- (BOOL)shouldUploadRecording;
- (CSKappaDetectionService)initWithSilo:(id)silo vendor:(id)vendor aopService:(void *)service sosStateMachine:(id)machine;
- (float)querySamplingBin:(id)bin atIndex:(int)index withDefault:(float)default;
- (float)querySamplingRate:(id)rate withDefault:(float)default;
- (id).cxx_construct;
- (id)userInfoUploader;
- (int64_t)daysSinceTimestamp:(double)timestamp;
- (int64_t)getMaxTriggerSessionInSecondsDefault;
- (shared_ptr<CLKappaEstimatesAlgCrash>)getCrashBlock;
- (shared_ptr<CLKappaFeaturesAlgDataIntegrity>)getDataIntegrityBlock;
- (void)companionConnectedAck:(int)ack;
- (void)companionConnectedAckHandler:(int)handler data:(id)data receivedTimestamp:(double)timestamp;
- (void)companionConnectedAckHandler_Deprecated:(int)deprecated data:(id)data receivedTimestamp:(double)timestamp;
- (void)companionDecidedToUploadHandler:(int)handler data:(id)data receivedTimestamp:(double)timestamp;
- (void)companionTriggerHandler:(int)handler data:(id)data receivedTimestamp:(double)timestamp;
- (void)consumeSampleArray:(id)array;
- (void)decideToShowTTR;
- (void)didReceiveSOSAck:(int64_t)ack forMode:(unsigned __int8)mode;
- (void)didReceiveSOSStatusUpdate:(id)update forMode:(unsigned __int8)mode;
- (void)dumpSample:(id)sample;
- (void)escalateCrashDecision;
- (void)evaluateCrashWithPOI;
- (void)evaluatePossibleCrashDetectorDecision;
- (void)evaluateSamplingAlgFeatures;
- (void)feedAccel800:(id)accel800;
- (void)feedAccel:(id)accel;
- (void)feedCompanionStatus:(id)status;
- (void)feedDeviceMotion:(id)motion;
- (void)feedGPS:(id)s;
- (void)feedHertzSample:(id)sample;
- (void)feedHgAccel:(id)accel;
- (void)feedKappaTrigger:(id)trigger;
- (void)feedLocationManagerResults:(id)results;
- (void)feedMag:(id)mag;
- (void)feedPressure:(id)pressure;
- (void)feedRemoteSample:(id)sample;
- (void)feedRoads:(id)roads;
- (void)feedSoundPressureLevel:(id)level;
- (void)feedSteps:(id)steps;
- (void)feedTrustedAudioResult:(id)result;
- (void)finishAnomalyEvent;
- (void)forceBehavior:(int)behavior withValue:(int)value;
- (void)forceCompanionTrigger:(id)trigger;
- (void)forceCrashDetector:(int)detector withValue:(int)value;
- (void)forceHighSpeedCrashDetector:(int)detector withValue:(int)value;
- (void)forceParticipatingInEscalation:(int)escalation withValue:(int)value;
- (void)forceRolloverCrashDetector:(int)detector withValue:(int)value;
- (void)forceSevereCrashDetector:(int)detector withValue:(int)value;
- (void)initFlowController;
- (void)initSession;
- (void)kappaSessionCompanionHandler:(int)handler data:(id)data receivedTimestamp:(double)timestamp;
- (void)logAudioStats;
- (void)messageReceived:(id)received fromConnection:(id)connection;
- (void)notifyCompanionOfUploadedCompanionUUID;
- (void)onCloseEpoch:(unint64_t)epoch epochNumber:(int)number;
- (void)onCompanionMessage:(int)message data:(id)data receivedTimestamp:(double)timestamp;
- (void)onCompanionStatusUpdate:(BOOL)update pairedDevice:(id)device updatedTimestamp:(double)timestamp;
- (void)onCompanionTestTrigger:(double)trigger;
- (void)populateSessionDetails;
- (void)printSamplingDefaults;
- (void)queryIfNearAmusementPark;
- (void)receiveForceTriggerProtobuf:(id)protobuf;
- (void)resetSession;
- (void)saveForceState:(int)state withValue:(int)value;
- (void)sendCompanionUUID:(id)d;
- (void)sendDeviceInfoProtobuf;
- (void)sendForceTriggerProtobuf:(id)protobuf;
- (void)sendLocalAudioToWatch;
- (void)sendRemoteSampleToCompanion:(unint64_t)companion epochTs:(unint64_t)ts epochNumber:(int)number;
- (void)setRecording:(id)recording withUUID:(id)d;
- (void)sosActivated;
- (void)start;
- (void)stop:(unint64_t)stop;
- (void)stopSession;
- (void)triggered:(id)triggered;
- (void)updateCompanion;
- (void)updateKappaSessionClients:(int)clients data:(id)data;
- (void)updateTrustedAudioMetadata;
@end

@implementation CSKappaDetectionService

- (void)start
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "start", &v22, 2u);
  }

  [(CSPower *)self->_powerAssertion createPowerAssertion:@"Kappa Detection"];
  v4 = [(CSPower *)self->_powerAssertion powerlogActivity:6 event:1 isActive:CFAbsoluteTimeGetCurrent()];
  if (!self->_uuid)
  {
    sub_100306234(v4);
  }

  [(CSKappaDetectionService *)self updateCompanion];
  [(CSKappaDetectionService *)self sendCompanionUUID:self->_uuid];
  self->_triggerTime = 0.0;
  v5 = +[CSPermissions sharedInstance];
  self->_canCollectData = [v5 isAuthorizedToCollectData];

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v6 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    canCollectData = self->_canCollectData;
    v22 = 67109120;
    LODWORD(v23) = canCollectData;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "can collect data %d", &v22, 8u);
  }

  if (!self->_canCollectData)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "device cannot collect data", &v22, 2u);
    }

    mslRecording = self->_mslRecording;
    self->_mslRecording = 0;
  }

  detectionEvent = self->_detectionEvent;
  self->_detectionEvent = detectionEvent + 1;
  if (detectionEvent >= 1)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v11 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "multiple detection events cannot be recorded", &v22, 2u);
    }

    v12 = self->_mslRecording;
    self->_mslRecording = 0;
  }

  v13 = +[CSPlatformInfo sharedInstance];
  getSystemHardware = [v13 getSystemHardware];
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v15 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 134349056;
    v23 = getSystemHardware;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "start hw = %{public}lu", &v22, 0xCu);
  }

  [(CSMSLDataRecording *)self->_mslRecording updateMetadata:&off_10043F2F0];
  [(CSKappaDetectionService *)self initSession];
  v16 = +[CSPersistentConfiguration sharedConfiguration];
  v17 = [v16 getBooleanDefault:@"KappaShouldFeedAccessoryGPS"];
  if ((v17 & 0x100) != 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  self->_shouldFeedAccessoryGPS = v18;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v19 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    shouldFeedAccessoryGPS = self->_shouldFeedAccessoryGPS;
    v22 = 67109120;
    LODWORD(v23) = shouldFeedAccessoryGPS;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "should feed accessory gps %d", &v22, 8u);
  }

  companionUUIDPreSession = self->_companionUUIDPreSession;
  if (companionUUIDPreSession)
  {
    objc_storeStrong(&self->_companionUUID, companionUUIDPreSession);
  }

  self->_inSession = 1;
  [(CSKappaDetectionService *)self updateKappaSessionClients:0 data:0];
}

- (void)updateKappaSessionClients:(int)clients data:(id)data
{
  v4 = *&clients;
  dataCopy = data;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v7 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "updateKappaSessionClients type: %d", v8, 8u);
  }

  [(CSKappaCoreAnalytics *)self->_coreAnalytics onKappaSessionUpdate:v4 data:dataCopy];
}

- (CSKappaDetectionService)initWithSilo:(id)silo vendor:(id)vendor aopService:(void *)service sosStateMachine:(id)machine
{
  siloCopy = silo;
  vendorCopy = vendor;
  machineCopy = machine;
  v12 = objc_initWeak(&location, self);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v13 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "beginService", buf, 2u);
  }

  objc_storeStrong(&self->_silo, silo);
  objc_storeStrong(&self->_vendor, vendor);
  objc_storeStrong(&self->_silo, silo);
  mslRecording = self->_mslRecording;
  self->_mslRecording = 0;

  self->_detectionEvent = 0;
  objc_storeStrong(&self->_sosSM, machine);
  v15 = [vendorCopy proxyForService:@"CSInjectionService"];
  v16 = [objc_alloc(objc_msgSend(v15 syncgetClassForName:{@"CSKappaConnectionServer", "initWithDispatchSilo:andDelegate:", self->_silo, self}];
  kappaConnectionServer = self->_kappaConnectionServer;
  self->_kappaConnectionServer = v16;

  v18 = [vendorCopy proxyForService:@"CSCompanionService"];
  companionProxy = self->_companionProxy;
  self->_companionProxy = v18;

  [(CSCompanionServiceProtocol *)self->_companionProxy registerDelegate:self inSilo:self->_silo];
  [(CSCompanionServiceProtocol *)self->_companionProxy registerClient:self];
  v20 = +[CSPower sharedInstance];
  powerAssertion = self->_powerAssertion;
  self->_powerAssertion = v20;

  v22 = [[CSKappaCoreAnalytics alloc] initWithSilo:self->_silo vendor:vendorCopy aopService:service];
  coreAnalytics = self->_coreAnalytics;
  self->_coreAnalytics = v22;

  v24 = +[CSPlatformInfo sharedInstance];
  isInternalInstall = [v24 isInternalInstall];

  if (isInternalInstall)
  {
    v26 = NSTemporaryDirectory();
    v27 = [v26 stringByAppendingPathComponent:@"kappaTTRSpooler"];

    v28 = +[NSFileManager defaultManager];
    [v28 createDirectoryAtPath:v27 withIntermediateDirectories:1 attributes:0 error:0];

    v29 = [CSKappaTap2Radar alloc];
    v30 = +[CSKappaTap2RadarConfiguration tap2RadarUserConfiguration];
    v31 = [(CSKappaTap2Radar *)v29 initWithSpoolerFolder:v27 andConfiguration:v30];
    ttr = self->_ttr;
    self->_ttr = v31;

    v33 = self->_ttr;
    v76 = 0;
    [(CSKappaTap2Radar *)v33 startMonitoringWithError:&v76];
    v34 = v76;
    if (v34)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v35 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v34;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "[TTR] Error starting TTR monitoring: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v27 = self->_ttr;
    self->_ttr = 0;
  }

  v36 = +[CSPlatformInfo sharedInstance];
  self->_isLoggingDevice = [v36 isKappaLoggingDevice];
  isKappaDetectionDevice = [v36 isKappaDetectionDevice];
  self->_isDetectionDevice = isKappaDetectionDevice;
  if (self->_isLoggingDevice & isKappaDetectionDevice)
  {
    sub_10030635C();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 411, "[CSKappaDetectionService initWithSilo:vendor:aopService:sosStateMachine:]");
    __break(1u);
  }

  v74[0] = _NSConcreteStackBlock;
  v74[1] = 3221225472;
  v74[2] = sub_1002F7B88;
  v74[3] = &unk_1004316E0;
  selfCopy = self;
  v75 = selfCopy;
  v39 = objc_retainBlock(v74);
  idleState = selfCopy->_idleState;
  selfCopy->_idleState = v39;

  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_1002F7C00;
  v72[3] = &unk_1004316E0;
  v41 = selfCopy;
  v73 = v41;
  v42 = objc_retainBlock(v72);
  readingState = v41->_readingState;
  v41->_readingState = v42;

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1002F7D7C;
  v70[3] = &unk_1004316E0;
  v44 = v41;
  v71 = v44;
  v45 = objc_retainBlock(v70);
  waitForPOIState = v44->_waitForPOIState;
  v44->_waitForPOIState = v45;

  v68[0] = _NSConcreteStackBlock;
  v68[1] = 3221225472;
  v68[2] = sub_1002F7FA4;
  v68[3] = &unk_1004316E0;
  v47 = v44;
  v69 = v47;
  v48 = objc_retainBlock(v68);
  waitForSOSState = v47->_waitForSOSState;
  v47->_waitForSOSState = v48;

  v50 = [CSHSMObjc alloc];
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v51 = qword_100456820;
  v52 = [(CSHSMObjc *)v50 initWithCategory:v51 state:selfCopy->_idleState];
  hsm = v47->_hsm;
  v47->_hsm = v52;

  newTimer = [(CLSilo *)self->_silo newTimer];
  triggerTimer = v47->_triggerTimer;
  v47->_triggerTimer = newTimer;

  v66[0] = _NSConcreteStackBlock;
  v66[1] = 3221225472;
  v66[2] = sub_1002F81EC;
  v66[3] = &unk_100431708;
  v56 = v47;
  v67 = v56;
  [(CLTimer *)v47->_triggerTimer setHandler:v66];
  companionUUIDPreSession = v56->_companionUUIDPreSession;
  v56->_companionUUIDPreSession = 0;

  v56->_inSession = 0;
  v56->_forceFeatureBitmap = 0;
  v56->_savedForceState[5] = -1;
  v56->_savedForceState[9] = -1;
  v58 = +[GEOMapService sharedService];
  geoMapSvc = v56->_geoMapSvc;
  v56->_geoMapSvc = v58;

  if (!v56->_geoMapSvc)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v60 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_FAULT, "unable to get geo map service", buf, 2u);
    }
  }

  v56->_aop = service;
  v61 = v67;
  v62 = v56;

  objc_destroyWeak(&location);
  return v62;
}

- (void)queryIfNearAmusementPark
{
  if (self->_poiGpsSample)
  {
    v3 = +[CSPersistentConfiguration sharedConfiguration];
    [v3 doubleForKey:@"CSRollerCoasterProxyPOIRadius"];
    v5 = v4;

    if (v5 == 0.0)
    {
      v5 = 100.0;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 134349056;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "querying for radius %{public}f", buf, 0xCu);
    }

    v7 = *([(CSSPUGps *)self->_poiGpsSample c_struct]+ 4);
    v8 = *([(CSSPUGps *)self->_poiGpsSample c_struct]+ 5);
    v9 = [NSMutableArray arrayWithCapacity:1];
    v22 = GEOSpatialPlaceLookupCategoryAmusementParkRide;
    v10 = [NSArray arrayWithObjects:&v22 count:1];
    v11 = v7;
    v12 = v8;
    v13 = [[GEOSpatialPlaceLookupParameters alloc] initWithCoordinate:v10 radius:10 categories:v11 maxResultCount:{v12, v5}];
    [v9 addObject:v13];
    v14 = [(GEOMapService *)self->_geoMapSvc ticketForSpatialPlaceLookupParameters:v9 traits:0];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1002F85B4;
    v18[3] = &unk_1004341A8;
    v18[4] = self;
    v15 = v9;
    v19 = v15;
    v20 = v11;
    v21 = v12;
    queue = [(CLSilo *)self->_silo queue];
    [v14 submitWithHandler:v18 queue:queue];
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v17 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "no gps sample to resolve LOI", buf, 2u);
    }

    self->_POIResolutionComplete = 0;
    [(CSHSMObjc *)self->_hsm signal:6 data:0];
  }
}

- (void)escalateCrashDecision
{
  ptr = self->fFlowControl.__ptr_;
  v5 = *(ptr + 54);
  v4 = *(ptr + 55);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = v5;
  v54 = v4;
  sub_1002F8F1C(&v53, &v55);
  if (v54)
  {
    sub_100009A48(v54);
  }

  (*(*v55 + 160))(&v49);
  sub_10003B98C(&v49, &v51);
  if (v50)
  {
    sub_100009A48(v50);
  }

  v6 = *(v51 + 48);
  mslRecording = self->_mslRecording;
  v121 = @"highSensitivityBitmap";
  v8 = [NSNumber numberWithUnsignedInt:*(v51 + 152)];
  v122 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v122 forKeys:&v121 count:1];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v9];

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    v48 = v6;
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    canCollectData = self->_canCollectData;
    companionConnected = self->_companionConnected;
    fractionalAudio = self->_trustedAudioStats.fractionalAudio;
    triggerPathBitmap = self->_triggerPathBitmap;
    isCrashDetected = self->_isCrashDetected;
    isRolloverCrashDetected = self->_isRolloverCrashDetected;
    isHighSpeedCrashDetected = self->_isHighSpeedCrashDetected;
    v19 = *(v51 + 160);
    v20 = *(v51 + 164);
    v22 = *(v51 + 168);
    v21 = *(v51 + 172);
    v24 = *(v51 + 176);
    v23 = *(v51 + 180);
    v25 = *(v51 + 224);
    v26 = *(v51 + 228);
    v27 = *(v51 + 232);
    v28 = *(v51 + 241);
    v29 = *(v51 + 244);
    v30 = *(v51 + 248);
    v31 = *(v51 + 252);
    v32 = *(v51 + 256);
    v33 = *(v51 + 264);
    v34 = *(v51 + 268);
    v35 = *(v51 + 272);
    v36 = *(v51 + 276);
    v37 = *(v51 + 280);
    v38 = *(v51 + 284);
    v39 = *(v51 + 288);
    isAirbagDetectedOverWindow = self->_isAirbagDetectedOverWindow;
    possibleRollerCoaster = self->_possibleRollerCoaster;
    v42 = *(v51 + 236);
    *buf = 138551298;
    v58 = uUIDString;
    v59 = 1026;
    v60 = canCollectData;
    v61 = 1026;
    v62 = companionConnected;
    v63 = 2050;
    v64 = fractionalAudio;
    v65 = 1026;
    v66 = triggerPathBitmap;
    v67 = 1026;
    v68 = isCrashDetected;
    v69 = 1026;
    v70 = isRolloverCrashDetected;
    v71 = 1026;
    v72 = isHighSpeedCrashDetected;
    v73 = 1026;
    v74 = v19;
    v75 = 1026;
    v76 = v20;
    v77 = 1026;
    v78 = v22;
    v79 = 1026;
    v80 = v21;
    v81 = 1026;
    v82 = v24;
    v83 = 1026;
    v84 = v23;
    v85 = 1026;
    v86 = v25;
    v87 = 2050;
    v88 = v26;
    v89 = 2050;
    v90 = v27;
    v91 = 1026;
    v92 = v28;
    v93 = 1026;
    v94 = v29;
    v95 = 2050;
    v96 = v30;
    v97 = 1026;
    v98 = v31;
    v99 = 2050;
    v100 = v32;
    v101 = 1026;
    v102 = v33;
    v103 = 1026;
    v104 = v34;
    v105 = 2050;
    v106 = v35;
    v107 = 2050;
    v108 = v36;
    v109 = 2050;
    v110 = v37;
    v111 = 2050;
    v112 = v38;
    v113 = 1026;
    v114 = v39;
    v115 = 1026;
    v116 = isAirbagDetectedOverWindow;
    v117 = 1026;
    v118 = possibleRollerCoaster;
    v119 = 1026;
    v120 = v42;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Crash context: %{public}@ %{public}d %{public}d %{public}0.3f %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}0.3f %{public}0.3f %{public}d %{public}d %{public}0.3f %{public}d %{public}llu %{public}d %{public}d %{public}0.3f %{public}0.3f %{public}0.3f %{public}0.3f %{public}d %{public}d %{public}d %{public}d ", buf, 0xEAu);

    v6 = v48;
  }

  self->_SOSInProgress = 1;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v43 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "[TTR] Setting severe crash", buf, 2u);
  }

  self->_sessionDetails.ttrType = 4;
  v44 = +[CSPersistentConfiguration sharedConfiguration];
  v45 = [v44 getBooleanDefault:@"KappaShouldEscalateUI"];
  if ((v45 & 0x100) != 0 && (v45 & 1) == 0)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v47 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "refusing to escalate UI", buf, 2u);
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v46 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "escalating UI", buf, 2u);
    }

    [(CSKappaDetectionService *)self collectSensorControlTelemetry];
    [(CSSafetySOSStateMachine *)self->_sosSM feedDetectionDecision:v6 & 1 uuid:self->_uuid forMode:1];
  }

  [(CSKappaDetectionService *)self updateKappaSessionClients:1 data:0];

  if (v52)
  {
    sub_100009A48(v52);
  }

  if (v56)
  {
    sub_100009A48(v56);
  }
}

- (void)evaluateCrashWithPOI
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    POIResolutionComplete = self->_POIResolutionComplete;
    isNearAmusementParkPOI = self->_isNearAmusementParkPOI;
    *buf = 67109376;
    *v52 = POIResolutionComplete;
    *&v52[4] = 1024;
    *&v52[6] = isNearAmusementParkPOI;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "evaluate crash with POI resolved %d poi %d", buf, 0xEu);
  }

  if (self->_POIResolutionComplete && self->_isNearAmusementParkPOI)
  {
    ptr = self->fFlowControl.__ptr_;
    v8 = *(ptr + 54);
    v7 = *(ptr + 55);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v47 = v8;
    v48 = v7;
    sub_1002F8F1C(&v47, &v49);
    if (v48)
    {
      sub_100009A48(v48);
    }

    (*(*v49 + 160))(&v43);
    sub_10003B98C(&v43, &v45);
    if (v44)
    {
      sub_100009A48(v44);
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v9 = qword_100456820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      uUIDString = [(NSUUID *)self->_uuid UUIDString];
      canCollectData = self->_canCollectData;
      companionConnected = self->_companionConnected;
      fractionalAudio = self->_trustedAudioStats.fractionalAudio;
      triggerPathBitmap = self->_triggerPathBitmap;
      isCrashDetected = self->_isCrashDetected;
      isRolloverCrashDetected = self->_isRolloverCrashDetected;
      isHighSpeedCrashDetected = self->_isHighSpeedCrashDetected;
      v18 = *(v45 + 160);
      v19 = *(v45 + 164);
      v20 = *(v45 + 168);
      v21 = *(v45 + 172);
      v23 = *(v45 + 176);
      v22 = *(v45 + 180);
      v24 = *(v45 + 224);
      v25 = *(v45 + 228);
      v26 = *(v45 + 232);
      v27 = *(v45 + 241);
      v28 = *(v45 + 244);
      v29 = *(v45 + 248);
      v30 = *(v45 + 252);
      v31 = *(v45 + 256);
      v32 = *(v45 + 264);
      v33 = *(v45 + 268);
      v34 = *(v45 + 272);
      v35 = *(v45 + 276);
      v36 = *(v45 + 280);
      v37 = *(v45 + 284);
      v38 = *(v45 + 288);
      isAirbagDetectedOverWindow = self->_isAirbagDetectedOverWindow;
      possibleRollerCoaster = self->_possibleRollerCoaster;
      v41 = *(v45 + 236);
      *buf = 138551298;
      *v52 = uUIDString;
      *&v52[8] = 1026;
      v53 = canCollectData;
      v54 = 1026;
      v55 = companionConnected;
      v56 = 2050;
      v57 = fractionalAudio;
      v58 = 1026;
      v59 = triggerPathBitmap;
      v60 = 1026;
      v61 = isCrashDetected;
      v62 = 1026;
      v63 = isRolloverCrashDetected;
      v64 = 1026;
      v65 = isHighSpeedCrashDetected;
      v66 = 1026;
      v67 = v18;
      v68 = 1026;
      v69 = v19;
      v70 = 1026;
      v71 = v20;
      v72 = 1026;
      v73 = v21;
      v74 = 1026;
      v75 = v23;
      v76 = 1026;
      v77 = v22;
      v78 = 1026;
      v79 = v24;
      v80 = 2050;
      v81 = v25;
      v82 = 2050;
      v83 = v26;
      v84 = 1026;
      v85 = v27;
      v86 = 1026;
      v87 = v28;
      v88 = 2050;
      v89 = v29;
      v90 = 1026;
      v91 = v30;
      v92 = 2050;
      v93 = v31;
      v94 = 1026;
      v95 = v32;
      v96 = 1026;
      v97 = v33;
      v98 = 2050;
      v99 = v34;
      v100 = 2050;
      v101 = v35;
      v102 = 2050;
      v103 = v36;
      v104 = 2050;
      v105 = v37;
      v106 = 1026;
      v107 = v38;
      v108 = 1026;
      v109 = isAirbagDetectedOverWindow;
      v110 = 1026;
      v111 = possibleRollerCoaster;
      v112 = 1026;
      v113 = v41;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Non escalated crash context: %{public}@ %{public}d %{public}d %{public}0.3f %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}d %{public}0.3f %{public}0.3f %{public}d %{public}d %{public}0.3f %{public}d %{public}llu %{public}d %{public}d %{public}0.3f %{public}0.3f %{public}0.3f %{public}0.3f %{public}d %{public}d %{public}d %{public}d ", buf, 0xEAu);
    }

    [(CSHSMObjc *)self->_hsm signal:3 data:0];
    if (v46)
    {
      sub_100009A48(v46);
    }

    if (v50)
    {
      sub_100009A48(v50);
    }
  }

  else
  {
    [(CSKappaDetectionService *)self escalateCrashDecision];
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v42 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "sos active", buf, 2u);
    }

    [(CSHSMObjc *)self->_hsm signal:4 data:0];
  }
}

- (void)updateCompanion
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    uuid = self->_uuid;
    LODWORD(v7) = 138543362;
    *(&v7 + 4) = uuid;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Forward trigger UUID %{public}@ to companion", &v7, 0xCu);
  }

  v7 = 0uLL;
  [(NSUUID *)self->_uuid getUUIDBytes:&v7];
  companionProxy = self->_companionProxy;
  v6 = [NSData dataWithBytes:&v7 length:16];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v6 type:1];
}

- (void)sendCompanionUUID:(id)d
{
  uUIDString = [d UUIDString];
  sub_10029F5A0(&__p, [uUIDString UTF8String]);

  v6 = KappaCompanion::serializeCompanionUUID(&__p, v5);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v6 type:203];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)forceCompanionTrigger:(id)trigger
{
  triggerCopy = trigger;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v5 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    LOWORD(triggerTime) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "forcing companion to trigger", &triggerTime, 2u);
  }

  triggerTime = self->_triggerTime;
  c_struct = [triggerCopy c_struct];
  v7 = *c_struct;
  v12 = c_struct[1];
  v11 = v7;
  companionProxy = self->_companionProxy;
  v9 = [NSData dataWithBytes:&triggerTime length:40];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v9 type:3];
}

- (void)companionConnectedAck:(int)ack
{
  v3 = *&ack;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v5 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    getSystemHardware = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "request response from companion %d", buf, 8u);
  }

  if ((v3 - 4) < 2 || (v3 - 101) < 2)
  {
    *buf = 1;
    v6 = +[CSPlatformInfo sharedInstance];
    getSystemHardware = [v6 getSystemHardware];
    getSystemModel = [v6 getSystemModel];
    v8 = getSystemModel;
    strncpy(v26, [getSystemModel UTF8String], 0x14uLL);

    if ([v6 isKappaLoggingDevice])
    {
      v27 = 0;
    }

    else if ([v6 isKappaDetectionDevice])
    {
      v27 = 1;
    }

    else
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v10 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_FAULT))
      {
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "invalid kappa device detected", v17, 2u);
      }
    }

    KappaToken = getKappaToken(0);
    v11 = objc_alloc_init(CSArmedSeconds);
    if (self->_isLoggingDevice)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v12 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }

      *v17 = 0;
      v13 = "query armed state not supported";
    }

    else
    {
      if (CSAOPSvc::getArmedState(self->_aop, v11))
      {
        isArmed = [(CSArmedSeconds *)v11 isArmed];
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v14 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
        {
          *v17 = 67109120;
          *&v17[4] = isArmed;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "queried isArmed:%d", v17, 8u);
        }

        goto LABEL_35;
      }

      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v12 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
      {
LABEL_34:
        isArmed = -1;
LABEL_35:
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v15 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
        {
          *v17 = 134218754;
          *&v17[4] = getSystemHardware;
          v18 = 2080;
          v19 = v26;
          v20 = 1024;
          v21 = v27;
          v22 = 1024;
          v23 = KappaToken;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "sending device info %lu %s %d %d", v17, 0x22u);
        }

        v16 = [NSData dataWithBytes:buf length:40, *v17];
        [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v16 type:v3];

        return;
      }

      *v17 = 0;
      v13 = "query get armed state failed";
    }

    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, v13, v17, 2u);
    goto LABEL_34;
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v9 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "invalid opcode", buf, 2u);
  }
}

- (void)companionConnectedAckHandler:(int)handler data:(id)data receivedTimestamp:(double)timestamp
{
  dataCopy = data;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "companionConnectedAckHandler", buf, 2u);
  }

  *buf = 1;
  [dataCopy getBytes:buf length:40];
  if (self->_inSession)
  {
    if (*buf < 1)
    {
      v11 = 0;
    }

    else
    {
      v38 = v44;
      v11 = v43;
      v6 = v46;
      v37 = v43;
      v39 = v45;
      v40 = v46;
      v5 = HIDWORD(v46);
      v7 = v47;
      v41 = v47;
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v13 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 134350082;
      v28 = v11;
      v29 = 2082;
      v30 = &v38;
      v31 = 1026;
      v32 = v6;
      v33 = 1026;
      v34 = v5;
      v35 = 1026;
      v36 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "received companion device info %{public}lu %{public}s %{public}d %{public}d %{public}d", v27, 0x28u);
    }

    mslRecording = self->_mslRecording;
    v26[0] = &__kCFBooleanTrue;
    v15 = [NSString stringWithUTF8String:&v38, @"companionConnected", @"companionDeviceModel"];
    v26[1] = v15;
    v25[2] = @"companionDeviceType";
    v16 = [NSNumber numberWithInt:v40];
    v26[2] = v16;
    v25[3] = @"companionTokenCount";
    v17 = [NSNumber numberWithInt:HIDWORD(v40)];
    v26[3] = v17;
    v25[4] = @"companionArmedStatus";
    v18 = [NSNumber numberWithInt:v41];
    v26[4] = v18;
    v19 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:5];
    [(CSMSLDataRecording *)mslRecording updateMetadata:v19];

    self->_companionDeviceType = v40;
    [(CSKappaDetectionService *)self updateKappaSessionClients:10 data:0];
    ptr = self->fFlowControl.__ptr_;
    v21 = *(ptr + 40);
    v22 = *(ptr + 41);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      ptr = self->fFlowControl.__ptr_;
    }

    *(v21 + 82) = 1;
    v24 = *(ptr + 42);
    v23 = *(ptr + 43);
    if (!v23)
    {
      *(v24 + 81) = 1;
      self->_companionConnected = 1;
      if (!v22)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    *(v24 + 81) = 1;
    self->_companionConnected = 1;
    sub_100009A48(v23);
    if (v22)
    {
LABEL_21:
      sub_100009A48(v22);
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "companion out of sync, session not in progress", v27, 2u);
    }
  }

LABEL_22:
}

- (void)companionDecidedToUploadHandler:(int)handler data:(id)data receivedTimestamp:(double)timestamp
{
  dataCopy = data;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v7 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Companion decided to upload", buf, 2u);
  }

  if ([dataCopy length] == 16)
  {
    mslRecording = self->_mslRecording;
    if (mslRecording)
    {
      [(CSMSLDataRecording *)mslRecording updateMetadata:&off_10043F318];
    }

    else
    {
      *buf = 0;
      v19 = 0;
      v10 = dataCopy;
      memcpy(buf, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
      v11 = [[NSUUID alloc] initWithUUIDBytes:buf];
      uUIDString = [v11 UUIDString];

      v13 = [CSStudiesServerUploadOutOfBandMetadata alloc];
      v16 = uUIDString;
      v17 = @"companionUploaded";
      v14 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v15 = [(CSStudiesServerUploadOutOfBandMetadata *)v13 initWithLookingBack:v14 keyValuePairs:300.0];

      [(CSStudiesServerUploader *)self->_uploader addOutOfBandMetadata:v15 error:0];
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v9 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "incorrect number of bytes for uuid", buf, 2u);
    }
  }
}

- (void)triggered:(id)triggered
{
  triggeredCopy = triggered;
  [(CSHSMObjc *)self->_hsm signal:1 data:0];
  c_struct = [triggeredCopy c_struct];
  self->_triggerPathBitmap |= *([triggeredCopy c_struct] + 1);
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v6 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    triggerPathBitmap = self->_triggerPathBitmap;
    *buf = 67109120;
    LODWORD(v24) = triggerPathBitmap;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "_triggerPathBitmap %x", buf, 8u);
  }

  if (self->_triggerTime == 0.0)
  {
    self->_triggerTime = CFAbsoluteTimeGetCurrent();
    self->_triggerAOPTime = *([triggeredCopy c_struct] + 1);
    self->_triggerAOPArmedSec = *([triggeredCopy c_struct] + 1);
    self->_triggerAOPHasBTCarplay = *([triggeredCopy c_struct] + 28) == 1;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      triggerAOPTime = self->_triggerAOPTime;
      triggerAOPArmedSec = self->_triggerAOPArmedSec;
      triggerAOPHasBTCarplay = self->_triggerAOPHasBTCarplay;
      *buf = 134218496;
      v24 = *&triggerAOPTime;
      v25 = 1024;
      v26 = triggerAOPArmedSec;
      v27 = 1024;
      v28 = triggerAOPHasBTCarplay;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "logging trigger %llu %d %d", buf, 0x18u);
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      companionTriggerTime = self->_companionTriggerTime;
      *buf = 134217984;
      v24 = companionTriggerTime;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "_companionTriggerTime %f", buf, 0xCu);
    }

    v14 = self->_companionTriggerTime;
    if (v14 != 0.0)
    {
      v15 = [NSNumber numberWithDouble:self->_triggerTime - v14];
      stringValue = [v15 stringValue];

      mslRecording = self->_mslRecording;
      v21 = @"deltaTrigger";
      v22 = stringValue;
      v18 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      [(CSMSLDataRecording *)mslRecording updateMetadata:v18];
    }

    [(CSKappaDetectionService *)self companionConnectedAck:101];
    [(CSKappaDetectionService *)self sendDeviceInfoProtobuf];
  }

  if ((*([triggeredCopy c_struct] + 1) & 0xB) != 0)
  {
    [(CSKappaDetectionService *)self forceCompanionTrigger:triggeredCopy];
    [(CSKappaDetectionService *)self sendForceTriggerProtobuf:triggeredCopy];
  }

  [(CSSafetySOSStateMachine *)self->_sosSM feedPotentialEventWithTimestamp:c_struct[1] forMode:1];
  v19 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [triggeredCopy c_struct], 112);
  [(CSKappaDetectionService *)self updateKappaSessionClients:2 data:v19];

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v20 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "(re)start the flow controller", buf, 2u);
  }

  CLKappaAlgFlowController::start(self->fFlowControl.__ptr_, *([triggeredCopy c_struct] + 1));
}

- (void)sendDeviceInfoProtobuf
{
  v3 = +[CSPlatformInfo sharedInstance];
  getSystemHardware = [v3 getSystemHardware];
  getSystemModel = [v3 getSystemModel];
  uTF8String = [getSystemModel UTF8String];

  if ([v3 isKappaLoggingDevice])
  {
    v7 = 0;
  }

  else if ([v3 isKappaDetectionDevice])
  {
    v7 = 1;
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_100306470();
    }

    v8 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "invalid kappa device type detected", &v13, 2u);
    }

    v7 = -1;
  }

  v9 = objc_alloc_init(CSArmedClients);
  if ((CSAOPSvc::getArmedClients(self->_aop, v9) & 1) == 0)
  {
    if (qword_1004567D8 != -1)
    {
      sub_100306484();
    }

    v10 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to get armed clients state", &v13, 2u);
    }
  }

  v13 = getSystemHardware;
  sub_10029F5A0(&__p, uTF8String);
  v16 = v7;
  v17 = 0;
  KappaToken = getKappaToken(0);
  MartyToken = getMartyToken(0);
  kappaArmedSeconds = [(CSArmedClients *)v9 kappaArmedSeconds];
  martyArmedSecondsLocal = [(CSArmedClients *)v9 martyArmedSecondsLocal];
  enableMode = [(CSArmedClients *)v9 enableMode];
  v12 = KappaCompanion::serializeDeviceInfo(&v13, v11);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v12 type:201];

  if (v15 < 0)
  {
    operator delete(__p);
  }
}

- (void)sendForceTriggerProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  if (!protobufCopy)
  {
    sub_1003064AC();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 1044, "[CSKappaDetectionService sendForceTriggerProtobuf:]");
    __break(1u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  c_struct = [protobufCopy c_struct];
  v6 = *c_struct;
  v7 = c_struct[1];
  v16 = c_struct[2];
  v15 = v7;
  v14 = v6;
  v8 = c_struct[3];
  v9 = c_struct[4];
  v10 = c_struct[5];
  v20 = c_struct[6];
  v19 = v10;
  v18 = v9;
  v17 = v8;
  v12 = KappaCompanion::serializeTrigger(&Current, v11);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v12 type:202];
}

- (void)receiveForceTriggerProtobuf:(id)protobuf
{
  KappaCompanion::deserializeTrigger(protobuf, a2, &v8);
  if ((*(v8 + 9) & 4) != 0)
  {
    v8 = 0;
LABEL_5:
    operator delete();
  }

  *v5 = 1027;
  v6 = 0;
  v7 = *(v8 + 16);
  CSAOPSvc::sendCommand(self->_aop, v5, 0x10u);
  v4 = v8;
  v8 = 0;
  if (v4)
  {
    goto LABEL_5;
  }
}

- (int64_t)getMaxTriggerSessionInSecondsDefault
{
  v2 = +[CSPersistentConfiguration sharedConfiguration];
  v3 = [v2 objectForKey:@"MaxSessionTimeInSeconds"];
  if (v3)
  {
    v4 = [v2 integerForKey:@"MaxSessionTimeInSeconds"];
    if (v4 >= 600)
    {
      v5 = 600;
    }

    else
    {
      v5 = v4;
    }
  }

  else
  {
    v5 = 120;
  }

  return v5;
}

- (void)initFlowController
{
  getMaxTriggerSessionInSecondsDefault = [(CSKappaDetectionService *)self getMaxTriggerSessionInSecondsDefault];
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    v4 = 134217984;
    v5 = getMaxTriggerSessionInSecondsDefault;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "configuring flow controller to have a max session of %llu seconds", &v4, 0xCu);
  }

  operator new();
}

- (void)initSession
{
  [(CSKappaDetectionService *)self initFlowController];
  self->_SOSInProgress = 0;
  self->_gpsCount = 0;
  self->_epochTimestamp = 0;
  self->_epochNumber = 0;
  self->_companionDeviceType = -1;
  companionUUID = self->_companionUUID;
  self->_companionUUID = 0;

  *&self->_samplingBitmap = 0;
  self->_lastEpochTime = 0.0;
  *&self->_trustedAudioStats.fractionalAudio = 3212836864;
  *&self->_trustedAudioStats.numEpochsMissingAudioAfterStart = 0xFF7FFFFF00000000;
  self->_tellCompanionToUpload = 0;
  self->_companionConnected = 0;
  [(CLTimer *)self->_triggerTimer setNextFireDelay:600.0 interval:1.79769313e308];
  self->_sessionDetails.serverConfigVersion = -1.0;
  *&self->_sessionDetails.trigger_bitmap = 0;
  *&self->_sessionDetails.numDeescalations = 0;
  *&self->_sessionDetails.numRolloverCrashes = 0;
  self->_sessionDetails.maxDeltaVXYOverEpoch = 0;
  *&self->_sessionDetails.coarseLat = vdup_n_s32(0x447A0000u);
  *&self->_sessionDetails.sunElevation = 0x3E8447A0000;
  *&self->_sessionDetails.gpsCount = 0u;
  *&self->_sessionDetails.numDeescalationQuiescence = 0u;
  *&self->_sessionDetails.numDeescalationSkiLift = 0u;
  *&self->_sessionDetails.numDeescalationDistToRoad = 0u;
  *&self->_sessionDetails.numInertDeescalationCrashClassifier = 0u;
  *&self->_sessionDetails.severeCrashAOPTimestamp = 0u;
  *&self->_sessionDetails.crashTimestamp = 0u;
  *(&self->_sessionDetails.highSenseCrashDetected + 1) = 0u;
  *&self->_POIResolutionComplete = 0;
  *&self->_isCrashDetected = 0;
  self->_possibleRollerCoaster = 1;
  self->_isNearAmusementParkPOI = 0;
  poiGpsSample = self->_poiGpsSample;
  self->_poiGpsSample = 0;

  self->_triggerAOPHasBTCarplay = 0;
}

- (void)evaluatePossibleCrashDetectorDecision
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100306724(0, a2);
  }

  if ((CLKappaAlgFlowController::isKappaInferencesAlgSevereCrashEnabled(ptr) & 1) == 0)
  {
    sub_1003065FC();
  }

  v4 = self->fFlowControl.__ptr_;
  v6 = *(v4 + 54);
  v5 = *(v4 + 55);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v28 = v6;
  v29 = v5;
  sub_1002F8F1C(&v28, &v30);
  if (v29)
  {
    sub_100009A48(v29);
  }

  (*(*v30 + 160))(&v24);
  sub_10003B98C(&v24, &v26);
  if (v25)
  {
    sub_100009A48(v25);
  }

  v7 = *(v26 + 32);
  v8 = *(v26 + 48);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v9 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    v33 = v8 & 1;
    v34 = 2050;
    *v35 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[SC] de %{public}d, timestamp %{public}llu", buf, 0x12u);
  }

  v10 = v26;
  self->_isCrashDetected |= *(v26 + 56);
  self->_isRolloverCrashDetected |= v10[57];
  self->_isHighSpeedCrashDetected |= v10[58];
  self->_isAirbagDetectedOverWindow |= v10[292];
  v11 = +[CSPersistentConfiguration sharedConfiguration];
  if ([v11 BOOLForKey:@"CSRollerCoasterProxyForceBT"])
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "forcing bt/carplay", buf, 2u);
    }

    self->_triggerAOPHasBTCarplay = 1;
  }

  v13 = [v11 BOOLForKey:@"CSRollerCoasterProxyForceAirbag"];
  v14 = v13;
  if (v13)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v15 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "forcing airbag", buf, 2u);
    }

    self->_isAirbagDetectedOverWindow = v14;
  }

  if (*(v26 + 48) != 1 || ([v11 BOOLForKey:@"CSRollerCoasterProxyDeescalationDisabled"] & 1) != 0 || self->_checkForPOI)
  {
    goto LABEL_41;
  }

  v16 = [v11 integerForKey:@"CSRollerCoasterProxyArmedSecThreshold"];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = 60;
  }

  v18 = self->_possibleRollerCoaster & ~self->_triggerAOPHasBTCarplay & (v17 > self->_triggerAOPArmedSec);
  if (self->_isAirbagDetectedOverWindow)
  {
    v18 = 0;
  }

  self->_possibleRollerCoaster = v18;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v19 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    triggerAOPHasBTCarplay = self->_triggerAOPHasBTCarplay;
    triggerAOPArmedSec = self->_triggerAOPArmedSec;
    isAirbagDetectedOverWindow = self->_isAirbagDetectedOverWindow;
    possibleRollerCoaster = self->_possibleRollerCoaster;
    *buf = 67241216;
    v33 = triggerAOPHasBTCarplay;
    v34 = 1026;
    *v35 = triggerAOPArmedSec;
    *&v35[4] = 1026;
    *&v35[6] = v17;
    v36 = 1026;
    v37 = isAirbagDetectedOverWindow;
    v38 = 1026;
    v39 = possibleRollerCoaster;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "bt/carplay %{public}d armed %{public}d %{public}d airbag %{public}d proxy %{public}d", buf, 0x20u);
  }

  if (!self->_possibleRollerCoaster)
  {
LABEL_41:
    if (*(v26 + 48) == 1 && !self->_SOSInProgress && !self->_checkForPOI)
    {
      [(CSKappaDetectionService *)self escalateCrashDecision];
    }
  }

  else
  {
    self->_checkForPOI = 1;
    [(CSKappaDetectionService *)self queryIfNearAmusementPark];
    [(CSHSMObjc *)self->_hsm signal:5 data:0];
  }

  if (v27)
  {
    sub_100009A48(v27);
  }

  if (v31)
  {
    sub_100009A48(v31);
  }
}

- (shared_ptr<CLKappaEstimatesAlgCrash>)getCrashBlock
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_10030696C(0, a2);
  }

  v5 = v2;
  isKappaEstimatesAlgCrashEnabled = CLKappaAlgFlowController::isKappaEstimatesAlgCrashEnabled(ptr);
  if ((isKappaEstimatesAlgCrashEnabled & 1) == 0)
  {
    sub_10030684C();
  }

  v8 = self->fFlowControl.__ptr_;
  v10 = *(v8 + 40);
  v9 = *(v8 + 41);
  *v5 = v10;
  v5[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  result.var1 = v7;
  result.var0 = isKappaEstimatesAlgCrashEnabled;
  return result;
}

- (shared_ptr<CLKappaFeaturesAlgDataIntegrity>)getDataIntegrityBlock
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100306BAC(0, a2);
  }

  v5 = v2;
  isKappaFeaturesAlgDataIntegrityEnabled = CLKappaAlgFlowController::isKappaFeaturesAlgDataIntegrityEnabled(ptr);
  if ((isKappaFeaturesAlgDataIntegrityEnabled & 1) == 0)
  {
    sub_100306A8C();
  }

  v8 = self->fFlowControl.__ptr_;
  v10 = *(v8 + 58);
  v9 = *(v8 + 59);
  *v5 = v10;
  v5[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  result.var1 = v7;
  result.var0 = isKappaFeaturesAlgDataIntegrityEnabled;
  return result;
}

- (void)updateTrustedAudioMetadata
{
  objc_msgSend_getDataIntegrityBlock(self, a2);
  Stats = TrustedAudioHelper::getStats((v15 + 128), self->_triggerAOPTime);
  *&self->_trustedAudioStats.fractionalAudio = Stats;
  *&self->_trustedAudioStats.numEpochsMissingAudioAfterStart = v4;
  mslRecording = self->_mslRecording;
  v17[0] = @"fractionalAudioAvailability";
  v6 = [NSNumber numberWithDouble:*&Stats];
  stringValue = [v6 stringValue];
  v18[0] = stringValue;
  v17[1] = @"numEpochsMissingAudioAtStart";
  v8 = [NSNumber numberWithInt:self->_trustedAudioStats.numEpochsMissingAudioAtStart];
  stringValue2 = [v8 stringValue];
  v18[1] = stringValue2;
  v17[2] = @"numEpochsMissingAudioAfterStart";
  v10 = [NSNumber numberWithInt:self->_trustedAudioStats.numEpochsMissingAudioAfterStart];
  stringValue3 = [v10 stringValue];
  v18[2] = stringValue3;
  v17[3] = @"preTriggerAudioSec";
  v12 = [NSNumber numberWithDouble:self->_trustedAudioStats.preTriggerAudioSec];
  stringValue4 = [v12 stringValue];
  v18[3] = stringValue4;
  v14 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:4];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v14];

  if (v16)
  {
    sub_100009A48(v16);
  }
}

- (void)logAudioStats
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    fractionalAudio = self->_trustedAudioStats.fractionalAudio;
    numEpochsMissingAudioAtStart = self->_trustedAudioStats.numEpochsMissingAudioAtStart;
    numEpochsMissingAudioAfterStart = self->_trustedAudioStats.numEpochsMissingAudioAfterStart;
    preTriggerAudioSec = self->_trustedAudioStats.preTriggerAudioSec;
    v8 = 134218752;
    v9 = fractionalAudio;
    v10 = 1024;
    v11 = numEpochsMissingAudioAtStart;
    v12 = 1024;
    v13 = numEpochsMissingAudioAfterStart;
    v14 = 2048;
    v15 = preTriggerAudioSec;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "fractionalAudio %f %d %d %f", &v8, 0x22u);
  }
}

- (void)sendLocalAudioToWatch
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100306DF4(0, a2);
  }

  if ((CLKappaAlgFlowController::isKappaFeaturesAlgLocalAudioEnabled(ptr) & 1) == 0)
  {
    sub_100306CCC();
  }

  v4 = self->fFlowControl.__ptr_;
  v5 = *(v4 + 16);
  v6 = *(v4 + 17);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v5 + 160))(&v23);
  sub_1002A9480(&v23, &v25);
  if (v24)
  {
    sub_100009A48(v24);
  }

  v7 = *(v25 + 120);
  v18 = *(v25 + 104);
  v19 = v7;
  v20 = *(v25 + 136);
  v21 = *(v25 + 152);
  v8 = *(v25 + 88);
  v16 = *(v25 + 72);
  v17 = v8;
  Current = CFAbsoluteTimeGetCurrent();
  *&v16 = self->_epochTimestamp;
  *(&v19 + 1) = Current;
  v20 = *&self->_lastEpochTime;
  v10 = *&self->_triggerAOPTime;
  v22 = v10;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v11 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134349312;
    v28 = v21;
    v29 = 2050;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "sending local audio results to companion %{public}llu %{public}llu", buf, 0x16u);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v12 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134351104;
    v28 = *(&v16 + 2);
    v29 = 2050;
    v30 = *(&v16 + 3);
    v31 = 2050;
    v32 = *&v17;
    v33 = 2050;
    v34 = *(&v17 + 1);
    v35 = 1026;
    v36 = BYTE8(v17);
    v37 = 1026;
    v38 = BYTE9(v17);
    v39 = 1026;
    v40 = BYTE10(v17);
    v41 = 1026;
    v42 = BYTE11(v17);
    v43 = 1026;
    v44 = BYTE13(v17);
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "sent local audio results (all): %{public}f %{public}f %{public}f %{public}f %{public}d %{public}d %{public}d %{public}d %{public}d", buf, 0x48u);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v13 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134351104;
    v28 = *(&v16 + 2);
    v29 = 2050;
    v30 = *&v18;
    v31 = 2050;
    v32 = *(&v18 + 1);
    v33 = 2050;
    v34 = *(&v18 + 2);
    v35 = 1026;
    v36 = BYTE12(v18);
    v37 = 1026;
    v38 = BYTE13(v18);
    v39 = 1026;
    v40 = BYTE14(v18);
    v41 = 1026;
    v42 = HIBYTE(v18);
    v43 = 1026;
    v44 = BYTE1(v19);
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "sent [LA] results (roll): %{public}f %{public}f %{public}f %{public}f %{public}d %{public}d %{public}d %{public}d %{public}d", buf, 0x48u);
  }

  companionProxy = self->_companionProxy;
  v15 = [NSData dataWithBytes:&v16 length:96];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v15 type:2, v16];

  if (v26)
  {
    sub_100009A48(v26);
  }

  if (v6)
  {
    sub_100009A48(v6);
  }
}

- (void)evaluateSamplingAlgFeatures
{
  ptr = self->fFlowControl.__ptr_;
  v4 = *(ptr + 18);
  v5 = *(ptr + 19);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 160))(&v24);
  sub_10001F720(&v24, &v26);
  if (v25)
  {
    sub_100009A48(v25);
  }

  if (*(v26 + 80) & 1) != 0 || (self->_forceFeatureBitmap)
  {
    self->_algFeatureBitmap |= 1u;
  }

  v6 = self->fFlowControl.__ptr_;
  v7 = *(v6 + 10);
  v8 = *(v6 + 11);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v7 + 160))(&lpsrc);
  if (lpsrc)
  {
    if (v9)
    {
      v10 = v23;
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (v23)
  {
    sub_100009A48(v23);
  }

  if ((v9[40] & 1) != 0 || (self->_forceFeatureBitmap & 2) != 0)
  {
    self->_algFeatureBitmap |= 2u;
  }

  v11 = self->fFlowControl.__ptr_;
  v12 = *(v11 + 6);
  v13 = *(v11 + 7);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v12 + 320))(&v20);
  v14 = v20[8];
  if (v21)
  {
    sub_100009A48(v21);
  }

  if ((v14 & 1) != 0 || (self->_forceFeatureBitmap & 4) != 0)
  {
    self->_algFeatureBitmap |= 4u;
  }

  v15 = self->fFlowControl.__ptr_;
  v16 = *(v15 + 42);
  v17 = *(v15 + 43);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v16 + 160))(&v18);
  sub_1002C33E0(&v18, &v20);
  if (v19)
  {
    sub_100009A48(v19);
  }

  if (v20[340] == 1 && (v20[320] & 1) != 0 || (self->_forceFeatureBitmap & 8) != 0)
  {
    self->_algFeatureBitmap |= 8u;
  }

  if (v21)
  {
    sub_100009A48(v21);
  }

  if (v17)
  {
    sub_100009A48(v17);
  }

  if (v13)
  {
    sub_100009A48(v13);
  }

  if (v10)
  {
    sub_100009A48(v10);
  }

  if (v8)
  {
    sub_100009A48(v8);
  }

  if (v27)
  {
    sub_100009A48(v27);
  }

  if (v5)
  {
    sub_100009A48(v5);
  }
}

- (void)populateSessionDetails
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100306F1C();
  }

  v4 = *(ptr + 42);
  v5 = *(ptr + 43);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v4 + 160))(&v62);
  sub_1002C33E0(&v62, &v64);
  if (v63)
  {
    sub_100009A48(v63);
  }

  if (*(v64 + 296) == 1)
  {
    ++self->_sessionDetails.numRolloverCrashes;
  }

  v6 = self->fFlowControl.__ptr_;
  v7 = *(v6 + 16);
  v8 = *(v6 + 17);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v47 = v8;
  (*(*v7 + 160))(&v58);
  sub_1002A9480(&v58, &v60);
  if (v59)
  {
    sub_100009A48(v59);
  }

  if ((*(v60 + 101) & 1) != 0 || (self->_forceFeatureBitmap & 0x10) != 0)
  {
    self->_algFeatureBitmap |= 0x10u;
  }

  v9 = self->fFlowControl.__ptr_;
  v10 = *(v9 + 40);
  v11 = *(v9 + 41);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v10 + 160))(&lpsrc);
  if (lpsrc)
  {
    if (v12 && v57)
    {
      v46 = v57;
      atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v12 = 0;
  }

  if (v57)
  {
    sub_100009A48(v57);
  }

  if (v12[184] == 1)
  {
    ++self->_sessionDetails.numPlanarCrashes;
  }

  v13 = self->fFlowControl.__ptr_;
  v14 = *(v13 + 44);
  v15 = *(v13 + 45);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 160))(&v54);
  if (v54)
  {
    if (v16)
    {
      v17 = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  if (v55)
  {
    sub_100009A48(v55);
  }

  if (v16[32] == 1)
  {
    if (self->_sessionDetails.latchedHighSpeedCrash)
    {
      goto LABEL_42;
    }

    ++self->_sessionDetails.numHighSpeedCrashes;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  self->_sessionDetails.latchedHighSpeedCrash = v18;
LABEL_42:
  v19 = self->fFlowControl.__ptr_;
  v20 = *(v19 + 54);
  v21 = *(v19 + 55);
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v20 + 160))(&v50);
  sub_10003B98C(&v50, &v52);
  if (v51)
  {
    sub_100009A48(v51);
  }

  v22 = v52;
  v23 = v52[2].u64[1];
  if (v23)
  {
    self->_sessionDetails.crashTimestamp = v23;
  }

  if (v22[3].i8[0] == 1)
  {
    ++self->_sessionDetails.numSevereCrashes;
    self->_sessionDetails.severeCrashAOPTimestamp = v22[2].u64[0];
  }

  v24 = v22[3].u8[2];
  v25 = v22[3].u8[1];
  if (((v24 & 1) != 0 || v22[3].i8[1]) && !self->_sessionDetails.lendCompanionPunchThru)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v26 = qword_100456820;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "lending companion punch thru", buf, 2u);
    }

    self->_sessionDetails.lendCompanionPunchThru = 1;
    v27 = sub_1000197C8();
    [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v27 type:402];
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v28 = qword_100456820;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    lendCompanionPunchThru = self->_sessionDetails.lendCompanionPunchThru;
    v30 = v52[3].u8[3];
    v31 = v52[3].u8[0];
    v32 = v52[3].u8[5];
    *buf = 67110400;
    *&buf[4] = v24;
    LOWORD(v67) = 1024;
    *(&v67 + 2) = v25;
    HIWORD(v67) = 1024;
    v68 = lendCompanionPunchThru;
    v69 = 1024;
    v70 = v30;
    v71 = 1024;
    v72 = v31;
    v73 = 1024;
    v74 = v32;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "punch thru lowsense %d highsense %d lend %d decided %d severe %d cand %d", buf, 0x26u);
  }

  KappaLowSenseCrashToken = getKappaLowSenseCrashToken(0);
  KappaHighSenseCrashToken = getKappaHighSenseCrashToken(0);
  if (v24 && KappaLowSenseCrashToken > 0)
  {
    v35 = 0;
  }

  else if (KappaHighSenseCrashToken < 1)
  {
    v35 = 1;
  }

  else
  {
    v35 = v25 ^ 1;
  }

  v36 = v52;
  if (v52[3].i8[0])
  {
    v37 = 0;
  }

  else
  {
    v37 = v52[3].i8[5] ^ 1;
  }

  if (self->_sessionDetails.lendCompanionPunchThru && !self->_sessionDetails.retractCompanionPunchThru && (v52[3].i8[3] & (v35 & v37) & 1) != 0)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v38 = qword_100456820;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEBUG, "retracting companion punch thru", buf, 2u);
    }

    self->_sessionDetails.retractCompanionPunchThru = 1;
    v39 = sub_100019A7C();
    [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v39 type:403];

    v36 = v52;
  }

  self->_sessionDetails.numDeescalationStatic = v36[6].i32[2];
  self->_sessionDetails.numDeescalationMoving = v36[5].i32[2];
  self->_sessionDetails.numDeescalationSteps = v36[6].i32[3];
  self->_sessionDetails.numDeescalationQuiescence = v36[5].i32[3];
  self->_sessionDetails.numDeescalationAutocorrelation = v36[5].i32[1];
  self->_sessionDetails.numDeescalationTriggerCluster = v36[7].i32[0];
  *&self->_sessionDetails.numDeescalationSkiingBaroAndAudio = v36[6].i64[0];
  self->_sessionDetails.numDeescalationUsha = v36[7].i32[2];
  self->_sessionDetails.numDeescalationAOI = v36[5].i32[0];
  self->_sessionDetails.numDeescalationTwoLevel = v36[7].i32[1];
  *&self->_sessionDetails.numDeescalationDistToRoad = vuzp2q_s32(vextq_s8(v36[8], v36[8], 4uLL), v36[8]);
  self->_sessionDetails.numInertDeescalationCrashClassifier = v36[9].i32[0];
  v40 = self->fFlowControl.__ptr_;
  v41 = *(v40 + 18);
  v42 = *(v40 + 19);
  if (v42)
  {
    atomic_fetch_add_explicit(&v42->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v41 + 160))(&v48);
  sub_10001F720(&v48, buf);
  if (v49)
  {
    sub_100009A48(v49);
  }

  v43 = *buf;
  v44 = *(*buf + 176);
  if (v44 > self->_sessionDetails.maxDeltaVXYBiggestImpact)
  {
    self->_sessionDetails.maxDeltaVXYBiggestImpact = v44;
  }

  v45 = *(v43 + 168);
  if (v45 > self->_sessionDetails.maxDeltaVXYOverEpoch)
  {
    self->_sessionDetails.maxDeltaVXYOverEpoch = v45;
  }

  if (v67)
  {
    sub_100009A48(v67);
  }

  if (v42)
  {
    sub_100009A48(v42);
  }

  if (v53)
  {
    sub_100009A48(v53);
  }

  if (v21)
  {
    sub_100009A48(v21);
  }

  if (v17)
  {
    sub_100009A48(v17);
  }

  if (v15)
  {
    sub_100009A48(v15);
  }

  if (v46)
  {
    sub_100009A48(v46);
  }

  if (v11)
  {
    sub_100009A48(v11);
  }

  if (v61)
  {
    sub_100009A48(v61);
  }

  if (v47)
  {
    sub_100009A48(v47);
  }

  if (v65)
  {
    sub_100009A48(v65);
  }

  if (v5)
  {
    sub_100009A48(v5);
  }
}

- (void)onCloseEpoch:(unint64_t)epoch epochNumber:(int)number
{
  v4 = *&number;
  v7 = +[CSTimeManager SPU_estimate_current_timestamp];
  self->_epochTimestamp = epoch;
  self->_epochNumber = v4;
  self->_lastEpochTime = CFAbsoluteTimeGetCurrent();
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v8 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    epochNumber = self->_epochNumber;
    epochTimestamp = self->_epochTimestamp;
    v11[0] = 67240704;
    v11[1] = epochNumber;
    v12 = 2050;
    v13 = epochTimestamp;
    v14 = 2050;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "close epoch %{public}d aop timestamp %{public}llu, %{public}llu", v11, 0x1Cu);
  }

  if (self->_isDetectionDevice)
  {
    [(CSKappaDetectionService *)self evaluatePossibleCrashDetectorDecision];
    [(CSKappaDetectionService *)self evaluateSamplingAlgFeatures];
    [(CSKappaDetectionService *)self populateSessionDetails];
    [(CSKappaDetectionService *)self updateTrustedAudioMetadata];
  }

  [(CSKappaDetectionService *)self sendLocalAudioToWatch];
  [(CSKappaDetectionService *)self sendRemoteSampleToCompanion:v7 epochTs:epoch epochNumber:v4];
}

- (void)sendRemoteSampleToCompanion:(unint64_t)companion epochTs:(unint64_t)ts epochNumber:(int)number
{
  ptr = self->fFlowControl.__ptr_;
  if (ptr)
  {
    CLKappaAlgFlowController::createRemoteSample(ptr, &v11);
    if (v14 == 1)
    {
      v11.i32[2] = number;
      companionCopy = companion;
      tsCopy = ts;
      v10 = sub_1000193B4(&v11);
      [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v10 type:401];
    }
  }
}

- (int64_t)daysSinceTimestamp:(double)timestamp
{
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:timestamp];
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate now];
  v6 = [v4 components:16 fromDate:v3 toDate:v5 options:0];

  v7 = [v6 day];
  return v7;
}

- (BOOL)shouldKeepEarlyCrashTTR
{
  v3 = +[CSPersistentConfiguration sharedConfiguration];
  v4 = [v3 getFloatDefault:@"KappaTTREarlyCrashPopupRate"];
  [v3 doubleForKey:@"KappaLastTTREarlyCrashTimestamp"];
  v5 = [(CSKappaDetectionService *)self daysSinceTimestamp:?];
  v6 = v5;
  if ((v4 & &_mh_execute_header) != 0)
  {
    v7 = *&v4;
  }

  else
  {
    v7 = 1.0;
  }

  if (v5 >= 1 && [(CSKappaDetectionService *)self coinflip:v7])
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109376;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[TTR] EarlyCrash alert cooldown expired daysSinceLast,%d,rate,%4.2f", &v12, 0x12u);
    }

    v9 = 1;
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v10 = qword_100456820;
    v9 = 0;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 67109376;
      v13 = v6;
      v14 = 2048;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[TTR] EarlyCrash alert still cooling down daysSinceLast,%d,rate,%4.2f", &v12, 0x12u);
      v9 = 0;
    }
  }

  return v9;
}

- (void)stop:(unint64_t)stop
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v5 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stop the aop service", &buf, 2u);
  }

  CSAOPSvc::suppressTriggers(self->_aop, 1);
  CSAOPSvc::stopDetection(self->_aop);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v6 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "finalizing the session", &buf, 2u);
  }

  [(CSKappaDetectionService *)self stopSession];
  [(CSPower *)self->_powerAssertion powerlogActivity:6 event:0 isActive:CFAbsoluteTimeGetCurrent()];
  logAudioStats = [(CSKappaDetectionService *)self logAudioStats];
  if (self->_detectionEvent >= 2)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "subsequent detection events cannot take tokens or update metadata", &buf, 2u);
    }

    goto LABEL_61;
  }

  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100307044(logAudioStats);
  }

  v10 = *(ptr + 54);
  v11 = *(ptr + 55);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v10 + 160))(&v47);
  sub_10003B98C(&v47, v58);
  if (v48)
  {
    sub_100009A48(v48);
  }

  v12 = *v58;
  self->_deescalationBitmap = *(*v58 + 344);
  v44 = v12[49];
  v45 = v12[50];
  v43 = v12[48];
  v13 = v12[53];
  KappaToken = getKappaToken(0);
  KappaLowSenseCrashToken = getKappaLowSenseCrashToken(0);
  KappaHighSenseCrashToken = getKappaHighSenseCrashToken(0);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  stopCopy = stop;
  v18 = qword_100456820;
  v19 = os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG);
  if (v19)
  {
    LODWORD(buf) = 67109632;
    HIDWORD(buf) = KappaToken;
    v50 = 1024;
    v51 = KappaLowSenseCrashToken;
    v52 = 1024;
    v53 = KappaHighSenseCrashToken;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "tokenTriggerCnt = %d, tokenLowSenseCrashCnt = %d, tokenHighSenseCrashCnt = %d", &buf, 0x14u);
  }

  if (self->_SOSInProgress || v13)
  {
    stop = stopCopy;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v21 = v11;
    v24 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      SOSInProgress = self->_SOSInProgress;
      LODWORD(buf) = 67109376;
      HIDWORD(buf) = SOSInProgress;
      v50 = 1024;
      v51 = v13;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "crash detected %d suppressed %d", &buf, 0xEu);
    }

    goto LABEL_36;
  }

  stop = stopCopy;
  if (KappaLowSenseCrashToken >= 1 && v45)
  {
    v21 = v11;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v22 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "acquiring kappa low sense crash token", &buf, 2u);
    }

    v23 = 1;
    getKappaLowSenseCrashToken(1);
    goto LABEL_37;
  }

  v21 = v11;
  if (KappaHighSenseCrashToken >= 1 && v44)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v34 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "acquiring kappa high sense crash token", &buf, 2u);
    }

    v23 = 1;
    getKappaHighSenseCrashToken(1);
    goto LABEL_37;
  }

  if (KappaToken < 1)
  {
    if (!KappaToken)
    {
      v42 = sub_1002F7258(v19, v20);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "forcefully stopping aop collection", &buf, 2u);
      }

      CSAOPSvc::forceStopCollection(self->_aop);
    }

LABEL_36:
    v23 = 0;
    goto LABEL_37;
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v41 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEBUG, "acquiring kappa trigger token", &buf, 2u);
  }

  v23 = 1;
  getKappaToken(1);
LABEL_37:
  mslRecording = self->_mslRecording;
  v56 = @"kappaTokenAllocated";
  v27 = [NSNumber numberWithBool:v23];
  v57 = v27;
  v28 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v28];

  self->_sessionDetails.lowSenseCrashDetected = v45;
  self->_sessionDetails.highSenseCrashDetected = v44;
  v29 = +[CSPersistentConfiguration sharedConfiguration];
  v30 = [v29 getFloatDefault:@"KappaTTREnableHighSens"];
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v31 = (v30 & 0x17FFFFFFFLL);
  v32 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    buf = __PAIR64__(v45, 67109888);
    v50 = 1024;
    v51 = v44;
    v52 = 1024;
    v53 = v31 != &_mh_execute_header;
    v54 = 1024;
    v55 = v43;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[TTR] lowSens,%d,highSens,%d,highSensEnabled,%d,severe,%d", &buf, 0x1Au);
  }

  if (![(CSKappaDetectionService *)self shouldKeepEarlyCrashTTR])
  {
    goto LABEL_57;
  }

  if (!v45 || (v43 & 1) != 0)
  {
    if (v31 == &_mh_execute_header || !v44 || (v43 & 1) != 0)
    {
      goto LABEL_57;
    }

    v33 = 2;
  }

  else
  {
    v33 = 3;
  }

  self->_sessionDetails.ttrType = v33;
LABEL_57:

  if (v59)
  {
    sub_100009A48(v59);
  }

  if (v21)
  {
    sub_100009A48(v21);
  }

LABEL_61:
  v35 = objc_initWeak(&buf, self);
  newTimer = [(CLSilo *)self->_silo newTimer];
  sosTimer = self->_sosTimer;
  self->_sosTimer = newTimer;

  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3221225472;
  v46[2] = sub_1002FD810;
  v46[3] = &unk_1004234F0;
  v46[4] = self;
  v46[5] = stop;
  [(CLTimer *)self->_sosTimer setHandler:v46];
  v38 = +[CSPersistentConfiguration sharedConfiguration];
  v39 = [v38 integerForKey:@"SOSTimeoutExpiration"];

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v40 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *v58 = 67109120;
    *&v58[4] = v39;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_INFO, "setting sos timer expiration %d", v58, 8u);
  }

  [(CLTimer *)self->_sosTimer setNextFireDelay:v39 interval:1.79769313e308];

  objc_destroyWeak(&buf);
}

- (void)saveForceState:(int)state withValue:(int)value
{
  if (state < 0x18)
  {
    self->_savedForceState[state] = value;
  }

  else
  {
    v8 = v4;
    v9 = v5;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "value not in range", v7, 2u);
    }
  }
}

- (void)forceCrashDetector:(int)detector withValue:(int)value
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100307280();
  }

  v5 = *(ptr + 40);
  v6 = *(ptr + 41);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    sub_10030716C();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 1785, "[CSKappaDetectionService forceCrashDetector:withValue:]");
    __break(1u);
    goto LABEL_58;
  }

  if (detector <= 2)
  {
    if (detector)
    {
      if (detector != 1)
      {
        if (detector == 2)
        {
          if (value < 2)
          {
            sub_1002FDE14(v5, value != 0);
            if (!v6)
            {
              return;
            }

            goto LABEL_52;
          }

          if (qword_100456818 != -1)
          {
            sub_1003061F8();
          }

          v7 = qword_100456820;
          if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            v8 = "value must be 0/1";
            goto LABEL_41;
          }
        }

        goto LABEL_51;
      }

      if (value < 2)
      {
        sub_1002FDD4C(v5, value != 0);
        goto LABEL_51;
      }

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v7 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
LABEL_51:
        if (!v6)
        {
          return;
        }

        goto LABEL_52;
      }

      *buf = 0;
      v8 = "value must be 0/1";
LABEL_41:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v8, buf, 2u);
      if (!v6)
      {
        return;
      }

      goto LABEL_52;
    }

    if (value < 2)
    {
      sub_1002FDC84(v5, value != 0);
      goto LABEL_51;
    }

    if (qword_100456818 == -1)
    {
LABEL_24:
      v7 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_51;
      }

      *buf = 0;
      v8 = "value must be 0/1";
      goto LABEL_41;
    }

LABEL_58:
    sub_1003061F8();
    goto LABEL_24;
  }

  if (detector == 3)
  {
    if (value < 2)
    {
      sub_1002FDEDC(v5, value != 0);
      if (!v6)
      {
        return;
      }

      goto LABEL_52;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v8 = "value must be 0/1";
    goto LABEL_41;
  }

  if (detector != 4)
  {
    if (detector != 5)
    {
      goto LABEL_51;
    }

    if ((value - 4) > 0xFFFFFFFA)
    {
      sub_1002FE06C(v5, value);
      if (!v6)
      {
        return;
      }

      goto LABEL_52;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v8 = "value not in range";
    goto LABEL_41;
  }

  if (value >= 2)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_51;
    }

    *buf = 0;
    v8 = "value must be 0/1";
    goto LABEL_41;
  }

  sub_1002FDFA4(v5, value != 0);
  if (v6)
  {
LABEL_52:
    sub_100009A48(v6);
  }
}

- (void)forceHighSpeedCrashDetector:(int)detector withValue:(int)value
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_1003074D0();
  }

  v5 = *(ptr + 44);
  v6 = *(ptr + 45);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    sub_1003073BC();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 1819, "[CSKappaDetectionService forceHighSpeedCrashDetector:withValue:]");
    __break(1u);
    goto LABEL_59;
  }

  if (detector <= 12)
  {
    if (detector != 10)
    {
      if (detector != 11)
      {
        if (detector == 12)
        {
          if (value < 2)
          {
            sub_1002FE60C(v5, value != 0);
            if (!v6)
            {
              return;
            }

            goto LABEL_53;
          }

          if (qword_100456818 != -1)
          {
            sub_1003061F8();
          }

          v7 = qword_100456820;
          if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            goto LABEL_41;
          }
        }

        goto LABEL_52;
      }

      if (value < 2)
      {
        sub_1002FE544(v5, value != 0);
        goto LABEL_52;
      }

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v7 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
LABEL_52:
        if (!v6)
        {
          return;
        }

        goto LABEL_53;
      }

      *buf = 0;
LABEL_41:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "value must be 0/1", buf, 2u);
      if (!v6)
      {
        return;
      }

      goto LABEL_53;
    }

    if (value < 2)
    {
      sub_1002FE47C(v5, value != 0);
      if (!v6)
      {
        return;
      }

      goto LABEL_53;
    }

    if (qword_100456818 == -1)
    {
LABEL_24:
      v7 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_52;
      }

      *buf = 0;
      goto LABEL_41;
    }

LABEL_59:
    sub_1003061F8();
    goto LABEL_24;
  }

  if (detector == 13)
  {
    if (value < 2)
    {
      sub_1002FE6D4(v5, value != 0);
      if (!v6)
      {
        return;
      }

      goto LABEL_53;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    *buf = 0;
    goto LABEL_41;
  }

  if (detector != 14)
  {
    if (detector != 15)
    {
      goto LABEL_52;
    }

    if (value < 2)
    {
      sub_1002FE864(v5, value != 0);
      if (!v6)
      {
        return;
      }

      goto LABEL_53;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    *buf = 0;
    goto LABEL_41;
  }

  if (value >= 2)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    *buf = 0;
    goto LABEL_41;
  }

  sub_1002FE79C(v5, value != 0);
  if (v6)
  {
LABEL_53:
    sub_100009A48(v6);
  }
}

- (void)forceRolloverCrashDetector:(int)detector withValue:(int)value
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_10030770C();
  }

  v5 = *(ptr + 42);
  v6 = *(ptr + 43);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    sub_1003075F8();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 1853, "[CSKappaDetectionService forceRolloverCrashDetector:withValue:]");
    __break(1u);
LABEL_43:
    sub_1003061F8();
LABEL_10:
    v7 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v8 = "value must be 0/1";
      goto LABEL_29;
    }

    goto LABEL_36;
  }

  if (detector <= 7)
  {
    if (detector != 6)
    {
      if (detector != 7)
      {
        goto LABEL_36;
      }

      if (value < 2)
      {
        sub_1002FEC64(v5, value != 0);
        if (!v6)
        {
          return;
        }

        goto LABEL_37;
      }

      if (qword_100456818 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_43;
    }

    if (value < 2)
    {
      sub_1002FEB9C(v5, value != 0);
      goto LABEL_36;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
LABEL_36:
      if (!v6)
      {
        return;
      }

      goto LABEL_37;
    }

    *buf = 0;
    v8 = "value must be 0/1";
LABEL_29:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, v8, buf, 2u);
    if (!v6)
    {
      return;
    }

    goto LABEL_37;
  }

  if (detector != 8)
  {
    if (detector != 9)
    {
      goto LABEL_36;
    }

    if ((value - 3) > 0xFFFFFFFB)
    {
      sub_1002FEDF4(v5, value);
      if (!v6)
      {
        return;
      }

      goto LABEL_37;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v8 = "value not in range";
    goto LABEL_29;
  }

  if (value >= 2)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v8 = "value must be 0/1";
    goto LABEL_29;
  }

  sub_1002FED2C(v5, value != 0);
  if (v6)
  {
LABEL_37:
    sub_100009A48(v6);
  }
}

- (void)forceSevereCrashDetector:(int)detector withValue:(int)value
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100307948();
  }

  v5 = *(ptr + 54);
  v6 = *(ptr + 55);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    sub_100307834();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 1880, "[CSKappaDetectionService forceSevereCrashDetector:withValue:]");
    __break(1u);
    goto LABEL_59;
  }

  if (detector <= 18)
  {
    if (detector != 16)
    {
      if (detector != 17)
      {
        if (detector == 18)
        {
          if (value < 2)
          {
            sub_1002FF394(v5, value != 0);
            if (!v6)
            {
              return;
            }

            goto LABEL_53;
          }

          if (qword_100456818 != -1)
          {
            sub_1003061F8();
          }

          v7 = qword_100456820;
          if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            goto LABEL_41;
          }
        }

        goto LABEL_52;
      }

      if (value < 2)
      {
        sub_1002FF2CC(v5, value != 0);
        goto LABEL_52;
      }

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v7 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
LABEL_52:
        if (!v6)
        {
          return;
        }

        goto LABEL_53;
      }

      *buf = 0;
LABEL_41:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "value must be 0/1", buf, 2u);
      if (!v6)
      {
        return;
      }

      goto LABEL_53;
    }

    if (value < 2)
    {
      sub_1002FF204(v5, value != 0);
      if (!v6)
      {
        return;
      }

      goto LABEL_53;
    }

    if (qword_100456818 == -1)
    {
LABEL_24:
      v7 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_52;
      }

      *buf = 0;
      goto LABEL_41;
    }

LABEL_59:
    sub_1003061F8();
    goto LABEL_24;
  }

  if (detector == 19)
  {
    if (value < 2)
    {
      sub_1002FF45C(v5, value != 0);
      if (!v6)
      {
        return;
      }

      goto LABEL_53;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    *buf = 0;
    goto LABEL_41;
  }

  if (detector != 20)
  {
    if (detector != 23)
    {
      goto LABEL_52;
    }

    if (value < 2)
    {
      sub_1002FF5EC(v5, value != 0);
      if (!v6)
      {
        return;
      }

      goto LABEL_53;
    }

    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    *buf = 0;
    goto LABEL_41;
  }

  if (value >= 2)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_52;
    }

    *buf = 0;
    goto LABEL_41;
  }

  sub_1002FF524(v5, value != 0);
  if (v6)
  {
LABEL_53:
    sub_100009A48(v6);
  }
}

- (void)forceParticipatingInEscalation:(int)escalation withValue:(int)value
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100307A70(0, a2, *&escalation, *&value);
LABEL_12:
    sub_1003061F8();
LABEL_5:
    v5 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "value must be 0/1", v6, 2u);
    }

    return;
  }

  if (escalation != 22)
  {
    return;
  }

  if (value >= 2)
  {
    if (qword_100456818 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  sub_1002FF774(ptr, value != 0);
}

- (void)forceBehavior:(int)behavior withValue:(int)value
{
  if (behavior <= 9)
  {
    if (behavior >= 6)
    {
      if ((behavior - 6) < 4)
      {
        [CSKappaDetectionService forceRolloverCrashDetector:"forceRolloverCrashDetector:withValue:" withValue:?];
      }
    }

    else
    {
      [CSKappaDetectionService forceCrashDetector:"forceCrashDetector:withValue:" withValue:?];
    }
  }

  else if (behavior < 16)
  {
    [CSKappaDetectionService forceHighSpeedCrashDetector:"forceHighSpeedCrashDetector:withValue:" withValue:?];
  }

  else
  {
    if (behavior < 21)
    {
LABEL_4:
      [CSKappaDetectionService forceSevereCrashDetector:"forceSevereCrashDetector:withValue:" withValue:?];
      return;
    }

    switch(behavior)
    {
      case 21:
        [CSKappaDetectionService forceSamplingBits:"forceSamplingBits:withValue:" withValue:?];
        break;
      case 22:
        [CSKappaDetectionService forceParticipatingInEscalation:"forceParticipatingInEscalation:withValue:" withValue:?];
        break;
      case 23:
        goto LABEL_4;
    }
  }
}

- (BOOL)coinflip:(double)coinflip
{
  if (coinflip >= 0.0 && coinflip <= 1.0)
  {
    v7 = drand48();
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v8 = v7 * 100.0;
    v9 = coinflip * 100.0;
    v10 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      v12 = 134218240;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "coin flip = %f, rbound = %f", &v12, 0x16u);
    }

    LOBYTE(v6) = v8 <= v9 && v8 >= 0.0;
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    v6 = os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO);
    if (v6)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "invalid rate specified", &v12, 2u);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (float)querySamplingRate:(id)rate withDefault:(float)default
{
  rateCopy = rate;
  v6 = +[CSPersistentConfiguration sharedConfiguration];
  v7 = [v6 objectForKey:rateCopy];
  if (v7)
  {
    [v6 floatForKey:rateCopy];
    default = v8;
  }

  return default;
}

- (float)querySamplingBin:(id)bin atIndex:(int)index withDefault:(float)default
{
  binCopy = bin;
  v8 = +[CSPersistentConfiguration sharedConfiguration];
  indexCopy = index;
  index = [binCopy stringByAppendingFormat:@"%lu", index];
  v11 = [v8 objectForKey:index];
  if (v11)
  {
    LODWORD(v12) = 1120403456;
    *&v13 = default;
    [v8 algorithmThresholdNumber:indexCopy inArrayForKey:@"CurDetectionPhoneDetectionWatchAcceptanceRateBitmap" withMinValue:0.0 maxValue:v12 defaultValue:v13];
    default = v14;
  }

  return default;
}

- (void)printSamplingDefaults
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LODWORD(v4) = -1.0;
    [(CSKappaDetectionService *)self querySamplingRate:@"CurPairedLoggingAndDetectionAcceptanceRate" withDefault:v4];
    *buf = 134217984;
    v20[0] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "curation rate 2: %f", buf, 0xCu);
  }

  v6 = 0;
  do
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v7 = qword_100456820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LODWORD(v8) = -1.0;
      [(CSKappaDetectionService *)self querySamplingBin:@"CurDetectionPhoneDetectionWatchAcceptanceRateBitmap" atIndex:v6 withDefault:v8];
      *buf = 67109376;
      LODWORD(v20[0]) = v6;
      WORD2(v20[0]) = 2048;
      *(v20 + 6) = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "curation bitmap %d: %f", buf, 0x12u);
    }

    v6 = (v6 + 1);
  }

  while (v6 != 32);
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(v11) = -1.0;
    [(CSKappaDetectionService *)self querySamplingRate:@"PerfDetectionPhoneDetectionWatchAcceptanceRate" withDefault:v11];
    *buf = 134217984;
    v20[0] = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "performance sampling rate 1 %f", buf, 0xCu);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v13 = qword_100456820;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LODWORD(v14) = -1.0;
    [(CSKappaDetectionService *)self querySamplingRate:@"PerfLoggingPhoneDetectionWatchAcceptanceRate" withDefault:v14];
    *buf = 134217984;
    v20[0] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "performance sampling rate 2 %f", buf, 0xCu);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v16 = qword_100456820;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    LODWORD(v17) = -1.0;
    [(CSKappaDetectionService *)self querySamplingRate:@"PerfDetectionPhoneAcceptanceRate" withDefault:v17];
    *buf = 134217984;
    v20[0] = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "performance sampling rate 3 %f", buf, 0xCu);
  }
}

- (BOOL)curationSampling
{
  if (self->_SOSInProgress)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v3 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "curation sampling coinflip 1 1.0", buf, 2u);
    }

    self->_samplingBitmap |= 1u;
    return 1;
  }

  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_100307BA4();
  }

  v6 = *(ptr + 54);
  v7 = *(ptr + 55);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v6 + 160))(&v20);
  sub_10003B98C(&v20, &v22);
  if (v21)
  {
    sub_100009A48(v21);
  }

  if (*(v22 + 53) != 1)
  {
    LODWORD(v8) = 1041865114;
    [(CSKappaDetectionService *)self querySamplingRate:@"CurPairedLoggingAndDetectionAcceptanceRate" withDefault:v8];
    v11 = *&v10;
    if (!self->_isLoggingDevice || self->_companionDeviceType != 1)
    {
      if (!self->_isDetectionDevice)
      {
        goto LABEL_35;
      }

      if (self->_companionDeviceType)
      {
        goto LABEL_33;
      }
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    v13 = v11;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *v25 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "curation sampling coinflip 2 %f", buf, 0xCu);
    }

    if ([(CSKappaDetectionService *)self coinflip:v13])
    {
      goto LABEL_34;
    }

    if (self->_isDetectionDevice)
    {
LABEL_33:
      if (self->_companionDeviceType == 1)
      {
        LODWORD(v10) = dword_1003BFE74[self->_algFeatureBitmap];
        [(CSKappaDetectionService *)self querySamplingBin:@"CurDetectionPhoneDetectionWatchAcceptanceRateBitmap" atIndex:v10 withDefault:?];
        v15 = v14;
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v16 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
        {
          algFeatureBitmap = self->_algFeatureBitmap;
          v18 = v15;
          *buf = 67109376;
          LODWORD(v25[0]) = algFeatureBitmap;
          WORD2(v25[0]) = 2048;
          *(v25 + 6) = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "curation sampling coinflip 3 alg rate for %d is %f", buf, 0x12u);
        }

        else
        {
          v18 = v15;
        }

        if ([(CSKappaDetectionService *)self coinflip:v18])
        {
          goto LABEL_34;
        }
      }
    }

LABEL_35:
    v4 = 0;
    goto LABEL_36;
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v9 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "false positive (previous escalations) 1.0", buf, 2u);
  }

LABEL_34:
  self->_samplingBitmap |= 1u;
  v4 = 1;
LABEL_36:
  if (v23)
  {
    sub_100009A48(v23);
  }

  if (v7)
  {
    sub_100009A48(v7);
  }

  return v4;
}

- (BOOL)performanceSampling
{
  LODWORD(v2) = 1031798784;
  [(CSKappaDetectionService *)self querySamplingRate:@"PerfDetectionPhoneDetectionWatchAcceptanceRate" withDefault:v2];
  if (__PAIR64__(self->_companionDeviceType, self->_isDetectionDevice) == 0x100000001)
  {
    v5 = *&v4;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    v7 = v5;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "performance sampling coinflip 1 %f", &v18, 0xCu);
    }

    if ([(CSKappaDetectionService *)self coinflip:v7])
    {
      goto LABEL_22;
    }
  }

  LODWORD(v4) = 956502639;
  [(CSKappaDetectionService *)self querySamplingRate:@"PerfLoggingPhoneDetectionWatchAcceptanceRate" withDefault:v4];
  if (self->_isLoggingDevice && self->_companionDeviceType == 1)
  {
    v9 = *&v8;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v10 = qword_100456820;
    v11 = v9;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "performance sampling coinflip 2 %f", &v18, 0xCu);
    }

    if ([(CSKappaDetectionService *)self coinflip:v11])
    {
      goto LABEL_22;
    }
  }

  LODWORD(v8) = 956502639;
  [(CSKappaDetectionService *)self querySamplingRate:@"PerfDetectionPhoneAcceptanceRate" withDefault:v8];
  if (self->_isDetectionDevice && (self->_companionDeviceType + 1) <= 1)
  {
    v13 = v12;
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v14 = qword_100456820;
    v15 = v13;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      v18 = 134217984;
      v19 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "performance sampling coinflip 3 %f", &v18, 0xCu);
    }

    v16 = [(CSKappaDetectionService *)self coinflip:v15];
    if (v16)
    {
LABEL_22:
      self->_samplingBitmap |= 2u;
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)shouldUploadRecording
{
  curationSampling = [(CSKappaDetectionService *)self curationSampling];
  performanceSampling = [(CSKappaDetectionService *)self performanceSampling];
  return (curationSampling | performanceSampling | [(CSKappaDetectionService *)self isHighOrLowSenseDetection]) & 1;
}

- (void)notifyCompanionOfUploadedCompanionUUID
{
  v5[0] = 0;
  v5[1] = 0;
  [(NSUUID *)self->_companionUUID getUUIDBytes:v5];
  companionProxy = self->_companionProxy;
  v4 = [NSData dataWithBytes:v5 length:16];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v4 type:7];
}

- (void)resetSession
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "resetSession", buf, 2u);
  }

  v4 = +[CSPersistentConfiguration sharedConfiguration];
  v45 = [v4 integerForKey:@"ServerConfigVersion"];

  v5 = +[CSPersistentConfiguration sharedConfiguration];
  v44 = [v5 BOOLForKey:@"UploadSerialNumberInMetadata"];

  ptr = self->fFlowControl.__ptr_;
  v7 = *(ptr + 54);
  v8 = *(ptr + 55);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v39 = v8;
  (*(*v7 + 160))(&v46);
  sub_10003B98C(&v46, buf);
  if (v47)
  {
    sub_100009A48(v47);
  }

  mslRecording = self->_mslRecording;
  v58[0] = @"configServerVersionNumber";
  v43 = [NSNumber numberWithInteger:v45];
  v59[0] = v43;
  v58[1] = @"curationAlgBitmap";
  v42 = [NSNumber numberWithUnsignedChar:self->_algFeatureBitmap];
  v59[1] = v42;
  v58[2] = @"severeCrashDetectorDecision";
  v41 = [NSNumber numberWithBool:self->_sessionDetails.numSevereCrashes > 0];
  v59[2] = v41;
  v58[3] = @"severeCrashTimestamp";
  v40 = [NSNumber numberWithUnsignedLongLong:self->_sessionDetails.severeCrashAOPTimestamp];
  v59[3] = v40;
  v58[4] = @"algsEndTimestamp";
  v10 = [NSNumber numberWithUnsignedLongLong:self->_sessionDetails.algsEndTimestamp];
  v59[4] = v10;
  v58[5] = @"deescalationPath";
  v11 = [NSNumber numberWithUnsignedInt:self->_deescalationBitmap];
  v59[5] = v11;
  v58[6] = @"escalationCandidateSuppressed";
  v12 = [NSNumber numberWithBool:*(*buf + 53)];
  v59[6] = v12;
  v58[7] = @"crashTimestamp";
  v13 = [NSNumber numberWithUnsignedLongLong:self->_sessionDetails.crashTimestamp];
  v59[7] = v13;
  v58[8] = @"lowSenseCrashDetected";
  v14 = [NSNumber numberWithBool:self->_sessionDetails.lowSenseCrashDetected];
  v59[8] = v14;
  v58[9] = @"highSenseCrashDetected";
  v15 = [NSNumber numberWithBool:self->_sessionDetails.highSenseCrashDetected];
  v59[9] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:10];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v16];

  if (v44)
  {
    v17 = +[CSPlatformInfo sharedInstance];
    getSerialNumber = [v17 getSerialNumber];

    v19 = self->_mslRecording;
    v56 = @"serialNumber";
    v57 = getSerialNumber;
    v20 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    [(CSMSLDataRecording *)v19 updateMetadata:v20];
  }

  if (self->_checkForPOI)
  {
    v21 = self->_mslRecording;
    v54 = @"LOIHint";
    v22 = [NSNumber numberWithBool:self->_isNearAmusementParkPOI];
    v55 = v22;
    v23 = [NSDictionary dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    [(CSMSLDataRecording *)v21 updateMetadata:v23];
  }

  self->_sessionDetails.deescalationBitmap = self->_deescalationBitmap;
  self->_deescalationBitmap = 0;
  self->_sessionDetails.serverConfigVersion = v45;
  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v24 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    samplingBitmap = self->_samplingBitmap;
    *v52 = 67240192;
    v53 = samplingBitmap;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "sampling bitmap %{public}d", v52, 8u);
  }

  if (self->_canCollectData)
  {
    shouldUploadRecording = [(CSKappaDetectionService *)self shouldUploadRecording];
    metadata = [(CSMSLDataRecording *)self->_mslRecording metadata];
    v28 = [metadata objectForKey:@"shouldUploadIndependentlyOfSOS"];

    if (v28)
    {
      shouldUploadRecording = [v28 isEqual:&off_10043D648];
    }

    if (self->_companionUUID && ((shouldUploadRecording & 1) != 0 || self->_tellCompanionToUpload))
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v29 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
      {
        *v52 = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Notifying companion of UUID for upload", v52, 2u);
      }

      [(CSKappaDetectionService *)self notifyCompanionOfUploadedCompanionUUID];
      companionUUID = self->_companionUUID;
      self->_companionUUID = 0;
    }

    v31 = self->_mslRecording;
    v50[0] = @"samplingBitmap";
    v32 = [NSNumber numberWithUnsignedChar:self->_samplingBitmap];
    v33 = &off_10043D648;
    v50[1] = @"shouldUploadIndependentlyOfSOS";
    v51[0] = v32;
    if (!shouldUploadRecording)
    {
      v33 = &off_10043D660;
    }

    v51[1] = v33;
    v34 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    [(CSMSLDataRecording *)v31 updateMetadata:v34];
  }

  v35 = [NSData dataWithBytes:&self->_sessionDetails length:176];
  [(CSKappaDetectionService *)self updateKappaSessionClients:9 data:v35];

  self->_companionTriggerTime = 0.0;
  self->_inSession = 0;
  companionUUIDPreSession = self->_companionUUIDPreSession;
  self->_companionUUIDPreSession = 0;

  v37 = self->_companionUUID;
  self->_companionUUID = 0;

  [(CLTimer *)self->_triggerTimer setNextFireDelay:1.79769313e308 interval:1.79769313e308];
  v38 = self->fFlowControl.__ptr_;
  self->fFlowControl.__ptr_ = 0;
  if (v38)
  {
    (*(*v38 + 8))(v38);
  }

  CSAOPSvc::suppressTriggers(self->_aop, 0);
  if (v49)
  {
    sub_100009A48(v49);
  }

  if (v39)
  {
    sub_100009A48(v39);
  }
}

- (void)stopSession
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "stop session", v15, 2u);
  }

  companionUUID = self->_companionUUID;
  if (companionUUID && (v5 = self->_mslRecording, v20 = @"companionUUID", v21 = companionUUID, [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1], v6 = objc_claimAutoreleasedReturnValue(), [(CSMSLDataRecording *)v5 updateMetadata:v6], v6, self->_companionUUID))
  {
    mslRecording = self->_mslRecording;
    v16 = @"collectionUUID";
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    v17 = uUIDString;
    v9 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    [(CSMSLDataRecording *)mslRecording updateMetadata:v9];
  }

  else
  {
    v10 = self->_mslRecording;
    v18 = @"collectionUUID";
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    v19 = uUIDString;
    v9 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [(CSMSLDataRecording *)v10 updateMetadata:v9];
  }

  self->_sessionDetails.trigger_bitmap = self->_triggerPathBitmap;
  v11 = objc_alloc_init(NSMutableDictionary);
  ptr = self->fFlowControl.__ptr_;
  if (ptr)
  {
    CLKappaAlgFlowController::finalizeAlgBlocks(ptr);
    CLKappaAlgFlowController::fetchAlgBlocksMeta(self->fFlowControl.__ptr_, v11);
  }

  [(CSMSLDataRecording *)self->_mslRecording updateMetadata:v11];
  if (self->_canCollectData)
  {
    v13 = +[CSPermissions sharedInstance];
    isAuthorizedToCollectData = [v13 isAuthorizedToCollectData];

    if ((isAuthorizedToCollectData & 1) == 0)
    {
      self->_canCollectData = 0;
    }
  }

  [(CSKappaDetectionService *)self updateKappaSessionClients:3 data:0];
}

- (void)finishAnomalyEvent
{
  self->_detectionEvent = 0;
  [(CSKappaDetectionService *)self decideToShowTTR];
  v3 = +[CSPlatformInfo sharedInstance];
  isFeedbackAssistantEligible = [v3 isFeedbackAssistantEligible];

  if (isFeedbackAssistantEligible && !self->_SOSInProgress)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[fba] SOS not in progress, attempt to enqueue UUID, if it was held", v7, 2u);
    }

    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    [CSAnomalyEventService enqueueHeldRecordingForUpload:uUIDString];
  }
}

- (void)decideToShowTTR
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
  {
    ttrType = self->_sessionDetails.ttrType;
    v12[0] = 67109120;
    v12[1] = ttrType;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[TTR] Deciding if to show TTR: type,%d", v12, 8u);
  }

  v5 = +[CSPlatformInfo sharedInstance];
  isInternalInstall = [v5 isInternalInstall];

  if (isInternalInstall)
  {
    v7 = +[CSPersistentConfiguration sharedConfiguration];
    v8 = self->_sessionDetails.ttrType;
    if ((v8 - 2) >= 2)
    {
      if (v8 != 4)
      {
LABEL_11:

        return;
      }

      ttr = self->_ttr;
      uUIDString = [(NSUUID *)self->_uuid UUIDString];
      [(CSKappaTap2Radar *)ttr enqueueTTRWithTriggerUUID:uUIDString error:0];
    }

    else
    {
      [v7 setDouble:@"KappaLastTTREarlyCrashTimestamp" forKey:CFAbsoluteTimeGetCurrent()];
      v9 = self->_ttr;
      uUIDString = [(NSUUID *)self->_uuid UUIDString];
      [(CSKappaTap2Radar *)v9 showTTRWithTriggerUUID:uUIDString andEventType:self->_sessionDetails.ttrType];
    }

    goto LABEL_11;
  }
}

- (void)setRecording:(id)recording withUUID:(id)d
{
  recordingCopy = recording;
  dCopy = d;
  if (self->_hsm)
  {
    p_vtable = GPBRootObject.vtable;
    if (qword_100456818 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_100307CCC();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2323, "[CSKappaDetectionService setRecording:withUUID:]");
    __break(1u);
  }

  sub_1003061F8();
LABEL_3:
  v10 = qword_100456820;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = recordingCopy;
    v12 = [(CSHSMObjc *)self->_hsm isIn:self->_idleState];
    v13 = [(CSHSMObjc *)self->_hsm isIn:self->_readingState];
    v14 = [(CSHSMObjc *)self->_hsm isIn:self->_waitForSOSState];
    v15 = [(CSHSMObjc *)self->_hsm isIn:self->_waitForPOIState];
    *buf = 67109888;
    *&buf[4] = v12;
    v18 = 1024;
    v19 = v13;
    v20 = 1024;
    v21 = v14;
    v22 = 1024;
    v23 = v15;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "set recording state %d %d %d %d", buf, 0x1Au);
    recordingCopy = v11;
    p_vtable = GPBRootObject.vtable;
  }

  if ([(CSHSMObjc *)self->_hsm isIn:self->_idleState])
  {
    objc_storeStrong(&self->_mslRecording, recording);
    objc_storeStrong(&self->_uuid, d);
  }

  else
  {
    if (p_vtable[259] != -1)
    {
      sub_10030620C();
    }

    v16 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "recording details may only be set in idle", buf, 2u);
    }
  }
}

- (void)dumpSample:(id)sample
{
  sampleCopy = sample;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sampleCopy;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v6 = *[v4 c_struct];
    v7 = *([v4 c_struct] + 2);
    v8 = *([v4 c_struct] + 3);
    v9 = *([v4 c_struct] + 4);
    v61 = 134218752;
    v62 = v6;
    v63 = 2048;
    *v64 = v7;
    *&v64[8] = 2048;
    *v65 = v8;
    *&v65[8] = 2048;
    v66 = v9;
    v10 = "accel800 %llu x %.7f y %.7f z %.7f\n";
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = sampleCopy;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v12 = *[v11 c_struct];
    v13 = *([v11 c_struct] + 2);
    v14 = *([v11 c_struct] + 3);
    v15 = *([v11 c_struct] + 4);
    v61 = 134218752;
    v62 = v12;
    v63 = 2048;
    *v64 = v13;
    *&v64[8] = 2048;
    *v65 = v14;
    *&v65[8] = 2048;
    v66 = v15;
    v10 = "hgaccel %llu x %.7f y %.7f z %.7f\n";
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = sampleCopy;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v17 = *[v16 c_struct];
    v18 = *([v16 c_struct] + 2);
    v19 = *([v16 c_struct] + 3);
    v20 = *([v16 c_struct] + 4);
    v61 = 134218752;
    v62 = v17;
    v63 = 2048;
    *v64 = v18;
    *&v64[8] = 2048;
    *v65 = v19;
    *&v65[8] = 2048;
    v66 = v20;
    v10 = "accel %llu x %.7f y %.7f z %.7f\n";
LABEL_16:
    v21 = v5;
    v22 = 42;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v10, &v61, v22);
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = sampleCopy;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v24 = *([v23 c_struct] + 1);
    v61 = 134217984;
    v62 = v24;
    v10 = "trigger %llu\n";
    v21 = v5;
    v22 = 12;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = sampleCopy;
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v5 = qword_100456820;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v26 = *([v25 c_struct] + 42);
    v27 = *[v25 c_struct];
    v28 = *([v25 c_struct] + 1);
    v29 = *([v25 c_struct] + 2);
    v30 = *([v25 c_struct] + 3);
    v31 = *([v25 c_struct] + 4);
    v32 = *([v25 c_struct] + 5);
    v33 = *([v25 c_struct] + 6);
    v61 = 134219776;
    v62 = v26;
    v63 = 2048;
    *v64 = v27;
    *&v64[8] = 2048;
    *v65 = v28;
    *&v65[8] = 2048;
    v66 = v29;
    v67 = 2048;
    v68 = v30;
    v69 = 2048;
    v70 = v31;
    v71 = 2048;
    v72 = v32;
    v73 = 2048;
    v74 = v33;
    v10 = "dm6 %llu %.7f %.7f %.7f %.7f %.7f %.7f %.7f\n";
    v21 = v5;
    v22 = 82;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = sampleCopy;
    v5 = sub_1002F7258(v34, v35);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v36 = *([v34 c_struct] + 5);
    v37 = *([v34 c_struct] + 8);
    v38 = *[v34 c_struct];
    v39 = *([v34 c_struct] + 1);
    v40 = *([v34 c_struct] + 2);
    v41 = *([v34 c_struct] + 3);
    v61 = 134219264;
    v62 = v36;
    v63 = 2048;
    *v64 = v37;
    *&v64[8] = 2048;
    *v65 = v38;
    *&v65[8] = 2048;
    v66 = v39;
    v67 = 2048;
    v68 = v40;
    v69 = 2048;
    v70 = v41;
    v10 = "gps %llu %f %.7f %.7f %.7f %.7f\n";
    v21 = v5;
    v22 = 62;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = sampleCopy;
    v5 = sub_1002F7258(v42, v43);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v44 = *[v42 c_struct];
    v45 = *([v42 c_struct] + 2);
    v46 = *([v42 c_struct] + 3);
    v47 = *([v42 c_struct] + 4);
    v48 = *([v42 c_struct] + 20);
    v61 = 134219008;
    v62 = v44;
    v63 = 1024;
    *v64 = v45;
    *&v64[4] = 1024;
    *&v64[6] = v46;
    *v65 = 2048;
    *&v65[2] = v47;
    LOWORD(v66) = 1024;
    *(&v66 + 2) = v48;
    v10 = "steps %llu %d %d %.7f %d\n";
    v21 = v5;
    v22 = 40;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = sampleCopy;
    v5 = sub_1002F7258(v49, v50);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v51 = *[v49 c_struct];
    v52 = *([v49 c_struct] + 2);
    v61 = 134218240;
    v62 = v51;
    v63 = 2048;
    *v64 = v52;
    v10 = "SPL %llu %f\n";
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = sampleCopy;
    v5 = sub_1002F7258(v53, v54);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v55 = *[v53 c_struct];
    v56 = *([v53 c_struct] + 2);
    v61 = 134218240;
    v62 = v55;
    v63 = 2048;
    *v64 = v56;
    v10 = "pressure %llu %f\n";
    goto LABEL_45;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v57 = sampleCopy;
  v5 = sub_1002F7258(v57, v58);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v59 = *[v57 c_struct];
    v60 = *([v57 c_struct] + 1);
    v61 = 134218240;
    v62 = v59;
    v63 = 2048;
    *v64 = v60;
    v10 = "roads %llu %f\n";
LABEL_45:
    v21 = v5;
    v22 = 22;
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
}

- (void)sosActivated
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v3 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    inSession = self->_inSession;
    mslRecording = self->_mslRecording;
    v8[0] = 67109376;
    v8[1] = inSession;
    v9 = 2048;
    v10 = mslRecording;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sosActivated _inSession %d _mslRecording %p", v8, 0x12u);
  }

  if (self->_inSession && (v6 = self->_mslRecording) != 0)
  {
    [(CSMSLDataRecording *)v6 updateMetadata:&off_10043F340];
  }

  else
  {
    v7 = [[CSStudiesServerUploadOutOfBandMetadata alloc] initWithLookingBack:&off_10043F368 keyValuePairs:900.0];
    [(CSStudiesServerUploader *)self->_uploader addOutOfBandMetadata:v7 error:0];
  }

  self->_tellCompanionToUpload = 1;
}

- (void)feedAccel800:(id)accel800
{
  accel800Copy = accel800;
  v5 = accel800Copy;
  if (accel800Copy)
  {
    CLKappaAlgFlowController::feedFastAccel(self->fFlowControl.__ptr_, accel800Copy);
  }

  else
  {
    sub_100307DE0();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2440, "[CSKappaDetectionService feedAccel800:]");
    __break(1u);
  }
}

- (void)feedHgAccel:(id)accel
{
  accelCopy = accel;
  v5 = accelCopy;
  if (accelCopy)
  {
    CLKappaAlgFlowController::feedHgAccel(self->fFlowControl.__ptr_, accelCopy);
  }

  else
  {
    sub_100307EF4();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2448, "[CSKappaDetectionService feedHgAccel:]");
    __break(1u);
  }
}

- (void)feedAccel:(id)accel
{
  accelCopy = accel;
  if (!accelCopy)
  {
    sub_100308008();
  }
}

- (void)feedDeviceMotion:(id)motion
{
  motionCopy = motion;
  v5 = motionCopy;
  if (motionCopy)
  {
    CLKappaAlgFlowController::feedDM(self->fFlowControl.__ptr_, motionCopy);
  }

  else
  {
    sub_100308130();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2466, "[CSKappaDetectionService feedDeviceMotion:]");
    __break(1u);
  }
}

- (void)feedGPS:(id)s
{
  sCopy = s;
  v6 = sCopy;
  if (!sCopy)
  {
    sub_100308244();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2475, "[CSKappaDetectionService feedGPS:]");
    __break(1u);
    goto LABEL_20;
  }

  if (*([(CSSPUGps *)sCopy c_struct]+ 15) != 3)
  {
LABEL_5:
    if (!self->_gpsCount)
    {
      Current = CFAbsoluteTimeGetCurrent();
      LODWORD(Current) = sunElevationDeg(Current, *([(CSSPUGps *)v6 c_struct]+ 4), *([(CSSPUGps *)v6 c_struct]+ 5));
      v8 = *([(CSSPUGps *)v6 c_struct]+ 32);
      self->_sessionDetails.sunElevation = *&Current;
      self->_sessionDetails.signalEnvironment = v8;
      ++self->_gpsCount;
    }

    if (CSAOPSvc::isRecording(self->_aop))
    {
      v9 = self->_gpsCount + 1;
      self->_gpsCount = v9;
      self->_sessionDetails.gpsCount = v9;
    }

    objc_storeStrong(&self->_poiGpsSample, s);
    CLKappaAlgFlowController::feedGPS(self->fFlowControl.__ptr_, v6);
    goto LABEL_18;
  }

  if (!self->_shouldFeedAccessoryGPS)
  {
    if (qword_100456818 == -1)
    {
LABEL_11:
      v10 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v14 = 0;
      v11 = "ignoring gps accessory";
      v12 = &v14;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, v11, v12, 2u);
      goto LABEL_18;
    }

LABEL_20:
    sub_1003061F8();
    goto LABEL_11;
  }

  if (self->_triggerAOPHasBTCarplay)
  {
    goto LABEL_5;
  }

  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v11 = "ignoring gps accessory when btHint=0";
    v12 = buf;
    goto LABEL_17;
  }

LABEL_18:
}

- (void)feedSteps:(id)steps
{
  stepsCopy = steps;
  v5 = stepsCopy;
  if (stepsCopy)
  {
    CLKappaAlgFlowController::feedSteps(self->fFlowControl.__ptr_, stepsCopy);
  }

  else
  {
    sub_100308358();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2528, "[CSKappaDetectionService feedSteps:]");
    __break(1u);
  }
}

- (void)feedKappaTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = triggerCopy;
  if (triggerCopy)
  {
    CLKappaAlgFlowController::feedTrigger(self->fFlowControl.__ptr_, triggerCopy);
  }

  else
  {
    sub_10030846C();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2537, "[CSKappaDetectionService feedKappaTrigger:]");
    __break(1u);
  }
}

- (void)feedMag:(id)mag
{
  magCopy = mag;
  if (!magCopy)
  {
    sub_100308580();
  }
}

- (void)feedPressure:(id)pressure
{
  pressureCopy = pressure;
  v5 = pressureCopy;
  if (pressureCopy)
  {
    CLKappaAlgFlowController::feedPressure(self->fFlowControl.__ptr_, pressureCopy);
  }

  else
  {
    sub_1003086A8();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2553, "[CSKappaDetectionService feedPressure:]");
    __break(1u);
  }
}

- (void)feedSoundPressureLevel:(id)level
{
  levelCopy = level;
  v5 = levelCopy;
  if (levelCopy)
  {
    CLKappaAlgFlowController::feedAudioRms(self->fFlowControl.__ptr_, levelCopy);
  }

  else
  {
    sub_1003087BC();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2562, "[CSKappaDetectionService feedSoundPressureLevel:]");
    __break(1u);
  }
}

- (void)feedTrustedAudioResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy)
  {
    CLKappaAlgFlowController::feedTrustedAudioResult(self->fFlowControl.__ptr_, resultCopy);
  }

  else
  {
    sub_1003088D0();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2571, "[CSKappaDetectionService feedTrustedAudioResult:]");
    __break(1u);
  }
}

- (void)feedRoads:(id)roads
{
  roadsCopy = roads;
  v5 = roadsCopy;
  if (roadsCopy)
  {
    CLKappaAlgFlowController::feedRoads(self->fFlowControl.__ptr_, roadsCopy);
  }

  else
  {
    sub_1003089E4();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2579, "[CSKappaDetectionService feedRoads:]");
    __break(1u);
  }
}

- (void)feedHertzSample:(id)sample
{
  sampleCopy = sample;
  v5 = sampleCopy;
  if (sampleCopy)
  {
    CLKappaAlgFlowController::feedHertzSample(self->fFlowControl.__ptr_, sampleCopy);
  }

  else
  {
    sub_100308AF8();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2587, "[CSKappaDetectionService feedHertzSample:]");
    __break(1u);
  }
}

- (void)feedCompanionStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy)
  {
    CLKappaAlgFlowController::feedCompanionStatus(self->fFlowControl.__ptr_, statusCopy);
  }

  else
  {
    sub_100308C0C();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2595, "[CSKappaDetectionService feedCompanionStatus:]");
    __break(1u);
  }
}

- (void)feedRemoteSample:(id)sample
{
  sampleCopy = sample;
  v5 = sampleCopy;
  if (sampleCopy)
  {
    CLKappaAlgFlowController::feedRemoteSample(self->fFlowControl.__ptr_, sampleCopy);
  }

  else
  {
    sub_100308D20();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2603, "[CSKappaDetectionService feedRemoteSample:]");
    __break(1u);
  }
}

- (void)consumeSampleArray:(id)array
{
  arrayCopy = array;
  for (i = 0; [arrayCopy count] > i; ++i)
  {
    ptr = self->fFlowControl.__ptr_;
    if (!ptr)
    {
      sub_100308E34();

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2612, "[CSKappaDetectionService consumeSampleArray:]");
      __break(1u);
LABEL_49:
      sub_10030620C();
LABEL_45:
      v13 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "stop consuming samples", buf, 2u);
      }

      break;
    }

    if ((*(ptr + 8) & 1) == 0)
    {
      if (qword_100456818 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    }

    v7 = [arrayCopy objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedAccel800:v8];
LABEL_39:

      goto LABEL_40;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedAccel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedHgAccel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      if ([v8 meta]< 0)
      {
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v9 = qword_100456820;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          timestamp = [v8 timestamp];
          *buf = 134217984;
          *&buf[4] = timestamp;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ignoring stop trigger from aop %llu", buf, 0xCu);
        }
      }

      else
      {
        [(CSKappaDetectionService *)self feedKappaTrigger:v8];
      }

      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedDeviceMotion:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedGPS:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedSteps:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedSoundPressureLevel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedTrustedAudioResult:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedPressure:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedRoads:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedHertzSample:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedCompanionStatus:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSKappaDetectionService *)self feedRemoteSample:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v8 = sub_1002F7258(isKindOfClass, v12);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CSKappaDetectionService ignoring %@", buf, 0xCu);
      }

      goto LABEL_39;
    }

LABEL_40:
  }
}

- (void)feedLocationManagerResults:(id)results
{
  resultsCopy = results;
  v5 = resultsCopy;
  if (self->_mslRecording)
  {
    firstObject = [resultsCopy firstObject];
    [firstObject coordinate];
    v8 = v7;

    firstObject2 = [v5 firstObject];
    [firstObject2 coordinate];
    v11 = v10 * 1000.0;

    *&v8 = v8 * 1000.0;
    self->_sessionDetails.coarseLat = *&v8;
    self->_sessionDetails.coarseLong = v11;
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "coarse location cannot be stored: IS=0 or IS=1 and not the first session in the recording", v13, 2u);
    }
  }
}

- (void)companionConnectedAckHandler_Deprecated:(int)deprecated data:(id)data receivedTimestamp:(double)timestamp
{
  dataCopy = data;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v7 = qword_100456820;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *v39 = [dataCopy length];
    *&v39[4] = 1024;
    *&v39[6] = 36;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "companionConnectedAckHandler %d %d", buf, 0xEu);
  }

  if ([dataCopy length] < 0x25)
  {
    if (self->_inSession)
    {
      v15 = dataCopy;
      memcpy(&__dst, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v16 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134349570;
        *v39 = __dst;
        *&v39[8] = 2082;
        v40 = v44;
        v41 = 1026;
        v42 = v45;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "received companion device info %{public}lu %{public}s %{public}d", buf, 0x1Cu);
      }

      if (v47 < 1)
      {
        v17 = -1;
      }

      else
      {
        v17 = 1;
      }

      if (v47)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v37[0] = &__kCFBooleanTrue;
      mslRecording = self->_mslRecording;
      v36[0] = @"companionConnected";
      v36[1] = @"companionDeviceModel";
      v20 = [NSString stringWithUTF8String:v44];
      v37[1] = v20;
      v36[2] = @"companionDeviceType";
      v21 = [NSNumber numberWithInt:v45];
      v37[2] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
      [(CSMSLDataRecording *)mslRecording updateMetadata:v22];

      if ((_companionCompatibility & 0xFFFFFFFD) == 1)
      {
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v23 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240448;
          *v39 = v46;
          *&v39[4] = 1026;
          *&v39[6] = v47;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "received companion device info %{public}d %{public}d", buf, 0xEu);
        }

        v24 = self->_mslRecording;
        v25 = [NSNumber numberWithInt:v46, @"companionTokenCount"];
        v34[1] = @"companionArmedStatus";
        v35[0] = v25;
        v26 = [NSNumber numberWithInt:v18];
        v35[1] = v26;
        v27 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:2];
        [(CSMSLDataRecording *)v24 updateMetadata:v27];
      }

      self->_companionDeviceType = v45;
      [(CSKappaDetectionService *)self updateKappaSessionClients:10 data:0];
      ptr = self->fFlowControl.__ptr_;
      v29 = *(ptr + 40);
      v30 = *(ptr + 41);
      if (v30)
      {
        atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
        ptr = self->fFlowControl.__ptr_;
      }

      *(v29 + 82) = 1;
      v32 = *(ptr + 42);
      v31 = *(ptr + 43);
      if (v31)
      {
        atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
        *(v32 + 81) = 1;
        self->_companionConnected = 1;
        sub_100009A48(v31);
        if (!v30)
        {
          goto LABEL_47;
        }
      }

      else
      {
        *(v32 + 81) = 1;
        self->_companionConnected = 1;
        if (!v30)
        {
          goto LABEL_47;
        }
      }

      sub_100009A48(v30);
      goto LABEL_47;
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v33 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v12 = "companion out of sync, session not in progress";
      v13 = v33;
      v14 = 2;
      goto LABEL_44;
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v8 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "incorrect number of bytes for device info", buf, 2u);
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v9 = qword_100456820;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [dataCopy length];
      *buf = 134217984;
      *v39 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "data length %lu", buf, 0xCu);
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v11 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      *v39 = 36;
      v12 = "result length %lu";
      v13 = v11;
      v14 = 12;
LABEL_44:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, v12, buf, v14);
    }
  }

LABEL_47:
}

- (void)messageReceived:(id)received fromConnection:(id)connection
{
  receivedCopy = received;
  connectionCopy = connection;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v8 = qword_100456820;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    name = [receivedCopy name];
    *buf = 68289538;
    *&buf[4] = 0;
    *&buf[8] = 2082;
    *&buf[10] = "";
    v99 = 2114;
    v100 = connectionCopy;
    v101 = 2114;
    v102 = name;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:messageReceived, connection:%{public, location:escape_only}@, name:%{public, location:escape_only}@}", buf, 0x26u);
  }

  name2 = [receivedCopy name];
  v11 = [name2 isEqualToString:@"com.apple.anomalydetectiond.kappa.message.test"];

  if (v11)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v12 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "testMessageReceived", buf, 2u);
    }

    goto LABEL_125;
  }

  name3 = [receivedCopy name];
  v14 = [name3 isEqualToString:@"com.apple.anomalydetectiond.kappa.ttr.test"];

  if (v14)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v15 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "testTTRReceived", buf, 2u);
    }

    if ((atomic_load_explicit(&qword_100458888, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_100458888))
    {
      qword_100458880 = [[CSKappaTap2RadarConfiguration alloc] initWithAllowOnBattery:1 checkIntervalInSeconds:XPC_ACTIVITY_INTERVAL_1_MIN coolDownPeriodInSeconds:0];
      __cxa_guard_release(&qword_100458888);
    }

    if (qword_100458898 != -1)
    {
      sub_100308F48();
    }

    v16 = +[NSUUID UUID];
    uUIDString = [v16 UUIDString];

    v95 = 0;
    [qword_100458890 enqueueTTRWithTriggerUUID:uUIDString error:&v95];
    v18 = v95;
    if (v18)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v19 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[TTR] Error enqueuing for TTR test: %@", buf, 0xCu);
      }
    }

    goto LABEL_125;
  }

  name4 = [receivedCopy name];
  v21 = [name4 isEqualToString:@"com.apple.anomalydetectiond.kappa.feedbackConsentResponse"];

  if (v21)
  {
    if (receivedCopy)
    {
      objc_msgSend_message(receivedCopy);
      v22 = *buf;
    }

    else
    {
      v22 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    v30 = CLConnectionMessage::getDictionary(v22);
    if (*&buf[8])
    {
      sub_100009A48(*&buf[8]);
    }

    v31 = [v30 objectForKeyedSubscript:@"CSKappaFeedbackAssistantConsentKey"];
    if (v31)
    {
      v32 = [v30 objectForKeyedSubscript:@"CSKappaFeedbackAssistantUUIDKey"];
      v33 = v32 == 0;

      if (!v33)
      {
        v34 = [v30 objectForKey:@"CSKappaFeedbackAssistantConsentKey"];
        bOOLValue = [v34 BOOLValue];

        v36 = [v30 objectForKey:@"CSKappaFeedbackAssistantUUIDKey"];
        v37 = [[NSUUID alloc] initWithUUIDString:v36];
        if (v37)
        {
          if (qword_100456818 != -1)
          {
            sub_10030620C();
          }

          v38 = qword_100456820;
          if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109378;
            *&buf[4] = bOOLValue;
            *&buf[8] = 2112;
            *&buf[10] = v36;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "[fba] Received Feedback Assistant Consent Response: consented,%d uuid,%@", buf, 0x12u);
          }

          v39 = *(self->_aop + 2);
          v40 = v39;
          if (v39)
          {
            v41 = bOOLValue;
          }

          else
          {
            v41 = 0;
          }

          if (v41 == 1)
          {
            v94 = 0;
            [v39 enqueueHeldRecordingForUploadWithConsent:v36 withError:&v94];
            v42 = v94;
            v44 = v42;
            if (v42)
            {
              v45 = sub_1002F7258(v42, v43);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = [v44 description];
                *buf = 138412290;
                *&buf[4] = v46;
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "[fba] Feedback Assistant encountered an error: %@", buf, 0xCu);
              }

              [CSAnomalyEventService removeHeldRecording:v36];
            }
          }

          else
          {
            [CSAnomalyEventService removeHeldRecording:v36];
          }
        }

        else
        {
          if (qword_100456818 != -1)
          {
            sub_10030620C();
          }

          v59 = qword_100456820;
          if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "[fba] UUID in message is malformed", buf, 2u);
          }
        }

        goto LABEL_125;
      }
    }

    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v47 = qword_100456820;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [v30 description];
      *buf = 138412290;
      *&buf[4] = v48;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[fba] Feedback Assistant consent keys not found: %@", buf, 0xCu);
    }

LABEL_60:

    goto LABEL_125;
  }

  name5 = [receivedCopy name];
  v24 = [name5 isEqualToString:@"CSKappaConnectionBringupFeedbackAssistantMessage"];

  if (!v24)
  {
    name6 = [receivedCopy name];
    v27 = [name6 isEqualToString:@"CSKappaConnectionTestSensorAccessQuery"];

    if (v27)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v28 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "testSensorAccessQuery received", buf, 2u);
      }

      v29 = +[CSKappaDetectionService testSensorAccessQuery];
      if (receivedCopy)
      {
        objc_msgSend_message(receivedCopy);
      }

      else
      {
        *buf = 0;
        *&buf[8] = 0;
      }

      v96 = @"SensorAccess";
      v67 = [NSNumber numberWithBool:v29 ^ 1];
      v97 = v67;
      v68 = [NSDictionary dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      CLConnectionMessage::sendReply();

      if (*&buf[8])
      {
        sub_100009A48(*&buf[8]);
      }

      goto LABEL_125;
    }

    name7 = [receivedCopy name];
    v50 = [name7 isEqualToString:@"com.apple.anomalydetectiond.kappa.command"];

    if (v50)
    {
      if (receivedCopy)
      {
        objc_msgSend_message(receivedCopy);
        v51 = *buf;
      }

      else
      {
        v51 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      v75 = CLConnectionMessage::getDictionary(v51);
      if (*&buf[8])
      {
        sub_100009A48(*&buf[8]);
      }

      v76 = [v75 objectForKeyedSubscript:@"CSKappaCommandKey"];
      v78 = v76;
      if (!v76 || ([v75 objectForKeyedSubscript:@"CSKappaValueKey"], v79 = objc_claimAutoreleasedReturnValue(), v80 = v79 == 0, v79, v78, v80))
      {
        v88 = sub_1002F7258(v76, v77);
        if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_INFO, "invalid command", buf, 2u);
        }
      }

      else
      {
        v81 = [v75 objectForKeyedSubscript:@"CSKappaCommandKey"];
        intValue = [v81 intValue];

        v83 = [v75 objectForKeyedSubscript:@"CSKappaValueKey"];
        intValue2 = [v83 intValue];

        v87 = sub_1002F7258(v85, v86);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          *&buf[4] = intValue;
          *&buf[8] = 1024;
          *&buf[10] = intValue2;
          _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "cmd = %d val = %d", buf, 0xEu);
        }

        [(CSKappaDetectionService *)self saveForceState:intValue withValue:intValue2];
        if (receivedCopy)
        {
          objc_msgSend_message(receivedCopy);
        }

        else
        {
          *buf = 0;
          *&buf[8] = 0;
        }

        CLConnectionMessage::sendReply();
        if (*&buf[8])
        {
          sub_100009A48(*&buf[8]);
        }
      }
    }

    else
    {
      name8 = [receivedCopy name];
      v61 = [name8 isEqualToString:@"com.apple.anomalydetectiond.kappa.powerassertion.test"];

      if (!v61)
      {
        name9 = [receivedCopy name];
        v70 = [name9 isEqualToString:@"com.apple.anomalydetectiond.kappa.aoi.test"];

        if (v70)
        {
          v73 = sub_1002F7258(v71, v72);
          if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEBUG, "testAOIReceived", buf, 2u);
          }

          if (receivedCopy)
          {
            objc_msgSend_message(receivedCopy);
            v74 = *buf;
          }

          else
          {
            v74 = 0;
            *buf = 0;
            *&buf[8] = 0;
          }

          v93 = CLConnectionMessage::getDictionary(v74);
          if (*&buf[8])
          {
            sub_100009A48(*&buf[8]);
          }

          CLKappaDeescalatorAOI::runOnDeviceTest(v93);
        }

        goto LABEL_125;
      }

      v64 = sub_1002F7258(v62, v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEBUG, "testPowerAssertionReceived", buf, 2u);
      }

      if (receivedCopy)
      {
        objc_msgSend_message(receivedCopy);
        v65 = *buf;
      }

      else
      {
        v65 = 0;
        *buf = 0;
        *&buf[8] = 0;
      }

      v75 = CLConnectionMessage::getDictionary(v65);
      if (*&buf[8])
      {
        sub_100009A48(*&buf[8]);
      }

      v89 = [v75 objectForKeyedSubscript:@"testPowerAssertionCmd"];
      [v89 doubleValue];
      v91 = v90;

      powerAssertion = self->_powerAssertion;
      if (v91 <= 0.0)
      {
        [(CSPower *)powerAssertion releasePowerAssertion];
      }

      else
      {
        [(CSPower *)powerAssertion createPowerAssertion:@"anomalyctl"];
      }
    }

    goto LABEL_125;
  }

  if (receivedCopy)
  {
    objc_msgSend_message(receivedCopy);
    v25 = *buf;
  }

  else
  {
    v25 = 0;
    *buf = 0;
    *&buf[8] = 0;
  }

  v30 = CLConnectionMessage::getDictionary(v25);
  if (*&buf[8])
  {
    sub_100009A48(*&buf[8]);
  }

  v52 = [v30 objectForKeyedSubscript:@"CSKappaFeedbackAssistantUUIDKey"];
  v53 = v52 == 0;

  if (v53)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v47 = qword_100456820;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v58 = [v30 description];
      *buf = 138412290;
      *&buf[4] = v58;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "[fba] Feedback Assistant consent keys not found: %@", buf, 0xCu);
    }

    goto LABEL_60;
  }

  v54 = [v30 objectForKey:@"CSKappaFeedbackAssistantUUIDKey"];
  v56 = [[NSUUID alloc] initWithUUIDString:v54];
  if (v56)
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v57 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v54;
      _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "[fba] Received Feedback Assistant bringup: uuid,%@", buf, 0xCu);
    }

    [CSFeedbackAssistant showFeedbackAssistantSurveyWithUUID:v54];
  }

  else
  {
    v66 = sub_1002F7258(0, v55);
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_ERROR, "[fba] UUID in message is malformed", buf, 2u);
    }
  }

LABEL_125:
}

- (void)onCompanionTestTrigger:(double)trigger
{
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v5 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    triggerCopy = trigger;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "onCompanionTestTrigger: timestamp: %f", buf, 0xCu);
  }

  v6 = [NSString stringWithFormat:@"test message data %f", *&trigger];
  companionProxy = self->_companionProxy;
  v8 = [v6 dataUsingEncoding:4];
  [(CSCompanionServiceProtocol *)companionProxy sendData:v8 type:0];
}

- (void)kappaSessionCompanionHandler:(int)handler data:(id)data receivedTimestamp:(double)timestamp
{
  dataCopy = data;
  if (self->_inSession)
  {
    if (self->_canCollectData)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v14 = qword_100456820;
    if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_23;
    }

    LOWORD(buf[0]) = 0;
    v11 = "ignoring companion UUID since collection is not allowed";
    v15 = v14;
    v16 = OS_LOG_TYPE_DEBUG;
    v17 = 2;
    goto LABEL_16;
  }

  v12 = +[CSPermissions sharedInstance];
  isAuthorizedToCollectData = [v12 isAuthorizedToCollectData];

  if ((isAuthorizedToCollectData & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ([dataCopy length] > 0xF)
  {
    if (![(CSKappaDetectionService *)self isArmedForKappa])
    {
LABEL_23:

      return;
    }

    if (self->_inSession)
    {
      if (self->_companionUUID)
      {
        goto LABEL_23;
      }

      v7 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(dataCopy, "bytes")}];
      companionUUID = self->_companionUUID;
      self->_companionUUID = v7;

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v9 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v10 = self->_companionUUID;
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v10;
      v11 = "Companion trigger session UUID %{public}@";
    }

    else
    {
      if (self->_companionUUIDPreSession)
      {
        goto LABEL_23;
      }

      v18 = [[NSUUID alloc] initWithUUIDBytes:{objc_msgSend(dataCopy, "bytes")}];
      companionUUIDPreSession = self->_companionUUIDPreSession;
      self->_companionUUIDPreSession = v18;

      if (qword_100456818 != -1)
      {
        sub_1003061F8();
      }

      v9 = qword_100456820;
      if (!os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      v20 = self->_companionUUIDPreSession;
      LODWORD(buf[0]) = 138543362;
      *(buf + 4) = v20;
      v11 = "Companion trigger session UUID %{public}@";
    }

    v15 = v9;
    v16 = OS_LOG_TYPE_DEFAULT;
    v17 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v15, v16, v11, buf, v17);
    goto LABEL_23;
  }

  sub_100308F70();

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 2954, "[CSKappaDetectionService kappaSessionCompanionHandler:data:receivedTimestamp:]");
  __break(1u);
}

- (BOOL)isArmedForKappa
{
  v3 = objc_alloc_init(CSArmedClients);
  if (CSAOPSvc::getArmedClients(self->_aop, v3))
  {
    v4 = [(CSArmedClients *)v3 enableMode]& 1;
  }

  else
  {
    if (qword_1004567D8 != -1)
    {
      sub_100306470();
    }

    v5 = qword_1004567E0;
    if (os_log_type_enabled(qword_1004567E0, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "failed to get armed clients state", v7, 2u);
    }

    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)companionTriggerHandler:(int)handler data:(id)data receivedTimestamp:(double)timestamp
{
  dataCopy = data;
  if ([dataCopy length] <= 0x27)
  {
    sub_100309084();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSKappaDetectionService.mm", 3059, "[CSKappaDetectionService companionTriggerHandler:data:receivedTimestamp:]");
    __break(1u);
  }

  memcpy(&__dst, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  v7 = v13;
  if ((v13 & 4) != 0)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v10 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      *v14 = 67109120;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "not setting companion trigger time path %d", v14, 8u);
    }
  }

  else
  {
    *v14 = 1027;
    v14[2] = 0;
    v16 = 0;
    CSAOPSvc::sendCommand(self->_aop, v14, 0x10u);
    v8 = __dst;
    if (*&__dst == 0.0)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v9 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "companion message trigger time of zero will leak wall-clock time", buf, 2u);
      }
    }

    if ([(CSKappaDetectionService *)self isArmedForKappa])
    {
      *&self->_companionTriggerTime = v8;
    }
  }
}

- (void)onCompanionMessage:(int)message data:(id)data receivedTimestamp:(double)timestamp
{
  dataCopy = data;
  v9 = [[NSString alloc] initWithData:dataCopy encoding:4];
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v10 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109890;
    v13[1] = message;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = dataCopy;
    v18 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "onCompanionMessage: type: %d, msg: %@ data: %@, receivedTimestamp: %f", v13, 0x26u);
  }

  if (self->_isLoggingDevice || self->_isDetectionDevice)
  {
    if (message > 100)
    {
      if (message <= 200)
      {
        if (message == 101)
        {
          v12 = 102;
          goto LABEL_31;
        }

        if (message == 102)
        {
          [(CSKappaDetectionService *)self companionConnectedAckHandler:102 data:dataCopy receivedTimestamp:timestamp];
        }
      }

      else
      {
        switch(message)
        {
          case 201:
            [(CSKappaDetectionService *)self receiveDeviceInfoProtobuf:dataCopy];
            break;
          case 202:
            [(CSKappaDetectionService *)self receiveForceTriggerProtobuf:dataCopy];
            break;
          case 203:
            [(CSKappaDetectionService *)self receiveCompanionUUID:dataCopy];
            break;
        }
      }
    }

    else
    {
      if (message > 3)
      {
        if (message != 4)
        {
          if (message == 5)
          {
            [(CSKappaDetectionService *)self companionConnectedAckHandler_Deprecated:5 data:dataCopy receivedTimestamp:timestamp];
          }

          else if (message == 7)
          {
            [(CSKappaDetectionService *)self companionDecidedToUploadHandler:7 data:dataCopy receivedTimestamp:timestamp];
          }

          goto LABEL_35;
        }

        v12 = 5;
LABEL_31:
        [(CSKappaDetectionService *)self companionConnectedAck:v12];
        goto LABEL_35;
      }

      if (message == 1)
      {
        [(CSKappaDetectionService *)self kappaSessionCompanionHandler:1 data:dataCopy receivedTimestamp:timestamp];
      }

      else if (message == 3)
      {
        [(CSKappaDetectionService *)self companionTriggerHandler:3 data:dataCopy receivedTimestamp:timestamp];
      }
    }
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v11 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13[0]) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "ignore companion messages", v13, 2u);
    }
  }

LABEL_35:
}

- (void)onCompanionStatusUpdate:(BOOL)update pairedDevice:(id)device updatedTimestamp:(double)timestamp
{
  updateCopy = update;
  deviceCopy = device;
  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v8 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109376;
    *v17 = updateCopy;
    *&v17[4] = 2048;
    *&v17[6] = timestamp;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "onCompanionStatusUpdate: isConnected: %d, updatedTimestamp: %f", &v16, 0x12u);
  }

  if (qword_100456818 != -1)
  {
    sub_10030620C();
  }

  v9 = qword_100456820;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    name = [deviceCopy name];
    v11 = name;
    uTF8String = [name UTF8String];
    isNearby = [deviceCopy isNearby];
    isDefaultPairedDevice = [deviceCopy isDefaultPairedDevice];
    isConnected = [deviceCopy isConnected];
    v16 = 136315906;
    *v17 = uTF8String;
    *&v17[8] = 1024;
    *&v17[10] = isNearby;
    v18 = 1024;
    v19 = isDefaultPairedDevice;
    v20 = 1024;
    v21 = isConnected;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Paired device info: name %s, isNearby %d, isDefaultPairedDevice %d, isConnected %d", &v16, 0x1Eu);
  }
}

- (void)didReceiveSOSAck:(int64_t)ack forMode:(unsigned __int8)mode
{
  ackCopy = ack;
  if (mode == 1)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v6 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      ackCopy2 = ack;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "didReceiveSOSAck response:%ld", buf, 0xCu);
    }

    if (ack <= 6)
    {
      if (((1 << ack) & 0x65) != 0)
      {
        self->_SOSInProgress = 1;
        if (qword_100456818 != -1)
        {
          sub_10030620C();
        }

        v7 = qword_100456820;
        if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_INFO))
        {
          SOSInProgress = self->_SOSInProgress;
          *buf = 67109120;
          LODWORD(ackCopy2) = SOSInProgress;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "didReceiveSOSAck setting _SOSInProgress to %d", buf, 8u);
        }

        [(CSPower *)self->_powerAssertion releasePowerAssertion];
      }

      else
      {
        [(CSMSLDataRecording *)self->_mslRecording updateMetadata:&off_10043F390];
        [(CSHSMObjc *)self->_hsm signal:7 data:0];
      }
    }

    v10 = [NSData dataWithBytes:&ackCopy length:8];
    [(CSKappaDetectionService *)self updateKappaSessionClients:4 data:v10];
  }

  else
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v9 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "sos status ack invalid mode", buf, 2u);
    }
  }
}

- (void)didReceiveSOSStatusUpdate:(id)update forMode:(unsigned __int8)mode
{
  modeCopy = mode;
  updateCopy = update;
  if (modeCopy == 1)
  {
    if (qword_100456818 != -1)
    {
      sub_1003061F8();
    }

    v7 = qword_100456820;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sosStatus = [updateCopy sosStatus];
      flowState = [sosStatus flowState];
      isKappaFlow = [updateCopy isKappaFlow];
      isKappaFlowActive = [updateCopy isKappaFlowActive];
      sosStatus2 = [updateCopy sosStatus];
      *buf = 134218752;
      *v45 = flowState;
      *&v45[8] = 1024;
      v46 = isKappaFlow;
      v47 = 1024;
      v48 = isKappaFlowActive;
      v49 = 1024;
      isPairedDeviceStatus = [sosStatus2 isPairedDeviceStatus];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "didReceiveSOSStatusUpdate state:%ld, isKappaFlow:%d, isKappaFlowActive:%d isFromPaired:%d", buf, 0x1Eu);
    }

    if (([updateCopy isKappaFlow] & 1) == 0)
    {
      if (qword_100456818 != -1)
      {
        sub_10030620C();
      }

      v13 = qword_100456820;
      if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received non-Kappa flow state from SOS SM (should never happen)", buf, 2u);
      }
    }

    sosStatus3 = [updateCopy sosStatus];
    isPairedDeviceStatus2 = [sosStatus3 isPairedDeviceStatus];

    v37 = isPairedDeviceStatus2 ^ 1;
    sosKappaState = [updateCopy sosKappaState];
    if (sosKappaState <= 3)
    {
      if (sosKappaState == 1)
      {
        if (v37)
        {
          v28 = &off_10043F3B8;
        }

        else
        {
          v28 = &off_10043F3E0;
        }

        [(CSMSLDataRecording *)self->_mslRecording updateMetadata:v28];
        uUIDString = [NSData dataWithBytes:&v37 length:1];
        [(CSKappaDetectionService *)self updateKappaSessionClients:5 data:uUIDString];
        goto LABEL_29;
      }

      if (sosKappaState != 3)
      {
        goto LABEL_30;
      }

      mslRecording = self->_mslRecording;
      v42 = @"userResponse";
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [updateCopy sosKappaState]);
      v43 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      [(CSMSLDataRecording *)mslRecording updateMetadata:v19];

      v20 = [NSData dataWithBytes:&v37 length:1];
      [(CSKappaDetectionService *)self updateKappaSessionClients:7 data:v20];

      v21 = +[CSPlatformInfo sharedInstance];
      LODWORD(mslRecording) = [v21 isFeedbackAssistantEligible];

      if (!mslRecording)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if (sosKappaState == 4)
    {
      v29 = self->_mslRecording;
      v40 = @"userResponse";
      v30 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [updateCopy sosKappaState]);
      v41 = v30;
      v31 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      [(CSMSLDataRecording *)v29 updateMetadata:v31];

      v32 = [NSData dataWithBytes:&v37 length:1];
      [(CSKappaDetectionService *)self updateKappaSessionClients:8 data:v32];

      v33 = +[CSPlatformInfo sharedInstance];
      LODWORD(v29) = [v33 isFeedbackAssistantEligible];

      if (v29)
      {
LABEL_28:
        uUIDString = [(NSUUID *)self->_uuid UUIDString];
        [CSAnomalyEventService enqueueHeldRecordingForUpload:uUIDString];
        goto LABEL_29;
      }
    }

    else if (sosKappaState == 6)
    {
      uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
      [CSFeedbackAssistant showFeedbackAssistantSurveyWithUUID:uUIDString2];

      v24 = self->_mslRecording;
      v38 = @"userResponse";
      v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [updateCopy sosKappaState]);
      v39 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      [(CSMSLDataRecording *)v24 updateMetadata:v26];

      uUIDString = [NSData dataWithBytes:&v37 length:1];
      [(CSKappaDetectionService *)self updateKappaSessionClients:6 data:uUIDString];
LABEL_29:
    }

LABEL_30:
    SOSInProgress = self->_SOSInProgress;
    isKappaFlowActive2 = [updateCopy isKappaFlowActive];
    if (qword_100456818 != -1)
    {
      sub_10030620C();
    }

    v36 = qword_100456820;
    if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v45 = SOSInProgress;
      *&v45[4] = 1024;
      *&v45[6] = isKappaFlowActive2;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEBUG, "_SOSInProgress prev %d, current %d", buf, 0xEu);
    }

    if (!(isKappaFlowActive2 & 1 | !SOSInProgress))
    {
      [(CSHSMObjc *)self->_hsm signal:7 data:0];
    }

    goto LABEL_36;
  }

  if (qword_100456818 != -1)
  {
    sub_1003061F8();
  }

  v22 = qword_100456820;
  if (os_log_type_enabled(qword_100456820, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "sos status update for invalid mode", buf, 2u);
  }

LABEL_36:
}

- (id)userInfoUploader
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100305DD0;
  v5[3] = &unk_100416C50;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 56) = -1082130432;
  *(self + 228) = 0;
  *(self + 30) = 0;
  *(self + 31) = 0;
  *(self + 29) = 0;
  *(self + 32) = vdup_n_s32(0x447A0000u);
  *(self + 33) = 0x3E8447A0000;
  *(self + 86) = 0;
  *(self + 48) = 0;
  *(self + 98) = 0;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 19) = 0u;
  *(self + 20) = 0u;
  *(self + 333) = 0;
  *(self + 44) = 0;
  *(self + 45) = 0;
  *(self + 94) = 0;
  *(self + 46) = 0;
  *(self + 66) = 3212836864;
  *(self + 67) = 0xFF7FFFFF00000000;
  return self;
}

@end