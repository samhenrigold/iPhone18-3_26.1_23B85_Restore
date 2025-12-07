@interface ARSession
+ (BOOL)_supportsConfiguration:(id)configuration;
+ (id)_applySessionOverrides:(id)overrides outError:(id *)error;
+ (id)_fullDescription;
+ (id)_runningSessions;
+ (void)forceEnvironmentTexturingTechniqueToManualMode:(id)mode;
+ (void)initialize;
- (ARFrame)currentFrame;
- (ARSession)init;
- (ARTrackedRaycast)trackedRaycast:(ARRaycastQuery *)query updateHandler:(void *)updateHandler;
- (BOOL)_geoTrackingPublicStatusChangedFromLastVendedFrameToFrame:(id)frame;
- (BOOL)_trackingStateChangedFromLastVendedFrameToFrame:(id)frame;
- (BOOL)is6DofFaceTracking;
- (BOOL)isPrimaryImageData:(id)data;
- (BOOL)isUserFaceTracking;
- (BOOL)querySceneReconstructionOccupancyWithPoints:(id)points callback:(id)callback;
- (NSArray)raycast:(ARRaycastQuery *)query;
- (NSString)description;
- (__n128)_cameraTransformForResultData:(void *)data previousFrame:(void *)frame;
- (__n128)originTransform;
- (__n128)predictedDeviceTransformAtTimestamp:(uint64_t)timestamp;
- (id)_frameContextByConsumingPendingChanges;
- (id)_fullDescription;
- (id)_getGeoAnchorAltitude:(id)altitude;
- (id)_getObservers;
- (id)_imageSensorForConfiguration:(id)configuration existingSensor:(id)sensor;
- (id)_updateAnchorsForFrame:(id)frame resultDatas:(id)datas context:(id)context;
- (id)adPipelineParameters;
- (id)annotateAnchorToRaycastResults:(id)results;
- (id)delegate;
- (id)replaySensor;
- (int64_t)_preferredRenderFrameRateForCaptureFrameRate:(int64_t)rate isNominalPower:(BOOL)power;
- (int64_t)_preferredRenderSyncFrameRateForCaptureFrameRate:(int64_t)rate;
- (void)_addObserver:(id)observer;
- (void)_changePowerUsage:(unint64_t)usage;
- (void)_configureSensorsForRecording;
- (void)_endInterruption;
- (void)_interruptSession;
- (void)_lookupAltitudeForAnchor:(id)anchor;
- (void)_pauseWaitingForOutstandingCallbacks:(BOOL)callbacks;
- (void)_populateRawSceneUnderstandingDataForFrame:(id)frame fromResultData:(id)data;
- (void)_removeGeoAnchorAltitude:(id)altitude;
- (void)_removeObserver:(id)observer;
- (void)_replaceOrAddSensor:(id)sensor;
- (void)_saveGraphFileInFileName:(id *)name;
- (void)_sessionCameraDidChangeTrackingState:(id)state;
- (void)_sessionDidAddAnchors:(id)anchors;
- (void)_sessionDidCaptureHighResolutionFrame:(id)frame error:(id)error;
- (void)_sessionDidChangeGeoTrackingStatus:(id)status;
- (void)_sessionDidFailWithError:(id)error;
- (void)_sessionDidOutputAudioData:(id)data;
- (void)_sessionDidOutputCollaborationData:(id)data;
- (void)_sessionDidRemoveAnchors:(id)anchors;
- (void)_sessionDidUpdateAnchors:(id)anchors;
- (void)_sessionDidUpdateExternalAnchors:(id)anchors;
- (void)_sessionDidUpdateFrame:(id)frame;
- (void)_sessionDidUpdateSpatialMappingPointClouds:(id)clouds;
- (void)_sessionRequestedRunWithConfiguration:(id)configuration options:(unint64_t)options;
- (void)_sessionShouldAttemptRelocalization;
- (void)_sessionWillRunWithConfiguration:(id)configuration;
- (void)_setGeoAnchorAltitude:(id)altitude pair:(id)pair;
- (void)_setInternalConfiguration:(id)configuration;
- (void)_setPrimaryTechnique:(id)technique secondaryTechnique:(id)secondaryTechnique stillImageRootTechnique:(id)rootTechnique;
- (void)_startSensorsWithDataTypes:(unint64_t)types;
- (void)_stopAllSensorsWaitingForOutstandingCallbacks:(BOOL)callbacks;
- (void)_stopSensorsWithDataTypes:(unint64_t)types keepingDataTypes:(unint64_t)dataTypes;
- (void)_updateFeaturePointsForFrame:(id)frame previousFrame:(id)previousFrame trackingStateChanged:(BOOL)changed context:(id)context;
- (void)_updateOriginTransformForFrame:(id)frame previousFrame:(id)previousFrame modifiers:(unint64_t)modifiers context:(id)context;
- (void)_updatePowerPressureLevelWithToken:(int)token;
- (void)_updatePowerUsage;
- (void)_updateSensorsWithConfiguration:(id)configuration;
- (void)_updateSessionStateWithConfiguration:(id)configuration options:(unint64_t)options;
- (void)_updateSessionWithConfiguration:(id)configuration options:(unint64_t)options;
- (void)_updateThermalStateFromCurrentProcessInfo;
- (void)addAnchor:(ARAnchor *)anchor;
- (void)captureHighResolutionFrameUsingPhotoSettings:(id)settings completion:(id)completion;
- (void)createReferenceObjectWithTransform:(simd_float4x4)transform center:(simd_float3)center extent:(simd_float3)extent completionHandler:(void *)completionHandler;
- (void)dealloc;
- (void)forceEnvironmentTexturingToManualMode:(BOOL)mode;
- (void)getCurrentWorldMapWithCompletionHandler:(void *)completionHandler;
- (void)getGeoLocationForPoint:(simd_float3)position completionHandler:(void *)completionHandler;
- (void)pause;
- (void)removeAnchor:(ARAnchor *)anchor;
- (void)runWithConfiguration:(ARConfiguration *)configuration options:(ARSessionRunOptions)options;
- (void)sensor:(id)sensor didFailWithError:(id)error;
- (void)sensor:(id)sensor didOutputSensorData:(id)data;
- (void)sensorDidPause:(id)pause;
- (void)sensorDidRestart:(id)restart;
- (void)setAvailableSensors:(id)sensors;
- (void)setGeoTrackingTechnique:(id)technique;
- (void)setOriginTransform:(__n128)transform;
- (void)setState:(unint64_t)state;
- (void)setWorldOrigin:(simd_float4x4)relativeTransform;
- (void)setupResultRequestSyncScheduler:(id)scheduler forTechnique:(id)technique;
- (void)setupSessionForTechniques:(id)techniques;
- (void)technique:(id)technique didChangeState:(int64_t)state;
- (void)technique:(id)technique didOutputCollaborationData:(id)data;
- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)timerDidVendFrame:(id)frame;
- (void)updateWithCollaborationData:(ARCollaborationData *)collaborationData;
@end

@implementation ARSession

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__ARSession_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, block);
  }
}

void __23__ARSession_initialize__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1C241C000, "ARKit Session", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v3 = arkitActivity;
  arkitActivity = v2;

  v5 = _ARLogSession_0(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 32);
    v10 = ARKitCoreBuildVersionString(v7, v9);
    *buf = 138543874;
    v17 = v7;
    v18 = 2048;
    v19 = v8;
    v20 = 2114;
    *v21 = v10;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>:  ==== Loading ARKit %{public}@ ====", buf, 0x20u);
  }

  v11 = CV3DGetVersionInfo();
  v12 = _ARLogSession_0(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = *(a1 + 32);
    *buf = 138544386;
    v17 = v14;
    v18 = 2048;
    v19 = v15;
    v20 = 1024;
    *v21 = 0;
    *&v21[4] = 1024;
    *&v21[6] = 0;
    v22 = 1024;
    v23 = 0;
    _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>:  ==== Using AppleCV3D %u.%u.%u  ====", buf, 0x28u);
  }
}

+ (id)_runningSessions
{
  if (_runningSessions_sessionsOnceToken != -1)
  {
    +[ARSession _runningSessions];
  }

  [_weakSessions ar_compactZeroedWeakPointers];
  v2 = _weakSessions;

  return [v2 allObjects];
}

void __29__ARSession__runningSessions__block_invoke()
{
  v0 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
  v1 = _weakSessions;
  _weakSessions = v0;
}

- (ARSession)init
{
  v97 = *MEMORY[0x1E69E9840];
  v90.receiver = self;
  v90.super_class = ARSession;
  v2 = [(ARSession *)&v90 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v4 = *(v2 + 62);
    *(v2 + 62) = uUID;

    *(v2 + 65) = 0;
    v5 = dispatch_semaphore_create(1);
    v6 = *(v2 + 17);
    *(v2 + 17) = v5;

    v7 = dispatch_semaphore_create(1);
    v8 = *(v2 + 20);
    *(v2 + 20) = v7;

    v9 = dispatch_semaphore_create(1);
    v10 = *(v2 + 23);
    *(v2 + 23) = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_attr_make_with_qos_class(v11, QOS_CLASS_USER_INTERACTIVE, 0);

    v13 = dispatch_queue_create("com.apple.arkit.stateSerialQueue", v12);
    dispatch_queue_set_specific(v13, &kARSessionStateQueueSpecificKey, kARSessionStateQueueSpecificValue, 0);
    objc_storeStrong(v2 + 24, v13);
    *(v2 + 70) = 0;
    v14 = objc_opt_new();
    v15 = *(v2 + 69);
    *(v2 + 69) = v14;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    v17 = *(v2 + 25);
    *(v2 + 25) = weakObjectsHashTable;

    v18 = dispatch_semaphore_create(1);
    v19 = *(v2 + 26);
    *(v2 + 26) = v18;

    v20 = objc_opt_new();
    v21 = *(v2 + 74);
    *(v2 + 74) = v20;

    v22 = objc_opt_new();
    v23 = *(v2 + 22);
    *(v2 + 22) = v22;

    v24 = dispatch_semaphore_create(1);
    v25 = *(v2 + 7);
    *(v2 + 7) = v24;

    v26 = MEMORY[0x1E69E9B18];
    v27 = *(MEMORY[0x1E69E9B18] + 16);
    *(v2 + 4) = *MEMORY[0x1E69E9B18];
    *(v2 + 5) = v27;
    v28 = *(v26 + 48);
    *(v2 + 6) = *(v26 + 32);
    *(v2 + 7) = v28;
    v29 = dispatch_semaphore_create(1);
    v30 = *(v2 + 45);
    *(v2 + 45) = v29;

    v31 = dispatch_semaphore_create(1);
    v32 = *(v2 + 53);
    *(v2 + 53) = v31;

    *(v2 + 432) = 0;
    v33 = objc_alloc_init(ARFrameUpdateTimer);
    v34 = *(v2 + 18);
    *(v2 + 18) = v33;

    [*(v2 + 18) setDelegate:v2];
    *(v2 + 473) = 1;
    v35 = dispatch_queue_create("com.apple.arkit.resultDataPredictionQueue", v12);
    v36 = *(v2 + 21);
    *(v2 + 21) = v35;

    v37 = objc_opt_new();
    v38 = *(v2 + 50);
    *(v2 + 50) = v37;

    if (+[ARQATracer isEnabled])
    {
      v39 = objc_opt_new();
      v40 = *(v2 + 73);
      *(v2 + 73) = v39;

      [v2 _addObserver:*(v2 + 73)];
    }

    *(v2 + 50) = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.personDetectionTechnique.renderBoundingBoxesIntoCapturedImage"];
    *(v2 + 32) = 0x4010000000000000;
    v41 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.session.defaultRelocalizationTimeout"];
    v42 = v41;
    if (v41)
    {
      doubleValue = [v41 doubleValue];
      *(v2 + 32) = v44;
      v45 = _ARLogSession_0(doubleValue);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = objc_opt_class();
        v47 = NSStringFromClass(v46);
        v48 = *(v2 + 32);
        *buf = 138543874;
        v92 = v47;
        v93 = 2048;
        v94 = v2;
        v95 = 2048;
        v96 = v48;
        _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Overriding default relocalization timeout: %f", buf, 0x20u);
      }
    }

    v49 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.session.featurePointAccumulationCount"];
    *(v2 + 36) = v49;
    v50 = _ARLogSession_0(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v51 = objc_opt_class();
      v52 = NSStringFromClass(v51);
      v53 = *(v2 + 36);
      *buf = 138543874;
      v92 = v52;
      v93 = 2048;
      v94 = v2;
      v95 = 2048;
      v96 = v53;
      _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Feature point accumulation set to %ld", buf, 0x20u);
    }

    objc_initWeak(&location, v2);
    v54 = objc_opt_new();
    [v54 setUnderlyingQueue:v13];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __17__ARSession_init__block_invoke;
    handler[3] = &unk_1E817CB68;
    objc_copyWeak(&v88, &location);
    notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v2 + 60, v13, handler);
    [v2 _updatePowerPressureLevelWithToken:v2[60]];
    v55 = objc_opt_new();
    v56 = *(v2 + 28);
    *(v2 + 28) = v55;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __17__ARSession_init__block_invoke_2;
    v85[3] = &unk_1E817CB90;
    objc_copyWeak(&v86, &location);
    v58 = [defaultCenter addObserverForName:*MEMORY[0x1E696A7E0] object:0 queue:v54 usingBlock:v85];
    v59 = *(v2 + 27);
    *(v2 + 27) = v58;

    [v2 _updateThermalStateFromCurrentProcessInfo];
    [v2 _updatePowerUsage];
    v60 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.technique.prepare", 0xFFFFFFFFLL);
    v61 = *(v2 + 39);
    *(v2 + 39) = v60;

    v62 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.technique.stillimages", 0xFFFFFFFFLL);
    v63 = *(v2 + 40);
    *(v2 + 40) = v62;

    v64 = [[ARTrackedRaycastPostProcessor alloc] initWithSession:v2];
    v65 = *(v2 + 46);
    *(v2 + 46) = v64;

    v66 = +[ARBKSAccelerometer sharedAccelerometerHandle];
    v67 = *(v2 + 47);
    *(v2 + 47) = v66;

    v69 = _ARLogSession_0(v68);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
    {
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      identifier = [v2 identifier];
      *buf = 138543874;
      v92 = v71;
      v93 = 2048;
      v94 = v2;
      v95 = 2112;
      v96 = identifier;
      _os_log_impl(&dword_1C241C000, v69, OS_LOG_TYPE_INFO, "%{public}@ <%p>: initialized with identifier %@", buf, 0x20u);
    }

    v73 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:261];
    v74 = *(v2 + 51);
    *(v2 + 51) = v73;

    v75 = objc_opt_class();
    objc_sync_enter(v75);
    v76 = objc_autoreleasePoolPush();
    v77 = +[ARSession _runningSessions];
    [_weakSessions addPointer:v2];
    objc_autoreleasePoolPop(v76);
    objc_sync_exit(v75);

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v79 = *(v2 + 79);
    *(v2 + 79) = dictionary;

    v2[7] = 0;
    *(v2 + 109) = 0;
    *(v2 + 56) = ARCreateCV3DLoggingHandle([ARKitUserDefaults integerForKey:@"com.apple.arkit.slamManager.cv3dLoggingLevel.api"], [ARKitUserDefaults integerForKey:@"com.apple.arkit.slamManager.cv3dLoggingLevel.internal"]);
    v80 = [[ARRecon3DLogger alloc] initWithInternalLogging:1];
    v81 = *(v2 + 57);
    *(v2 + 57) = v80;

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.inFrameAnchorVisualization"])
    {
      v82 = objc_opt_new();
    }

    else
    {
      v82 = 0;
    }

    v83 = *(v2 + 58);
    *(v2 + 58) = v82;

    objc_destroyWeak(&v86);
    objc_destroyWeak(&v88);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __17__ARSession_init__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updatePowerPressureLevelWithToken:a2];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _updatePowerUsage];
}

void __17__ARSession_init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateThermalStateFromCurrentProcessInfo];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updatePowerUsage];
}

- (void)dealloc
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __20__ARSession_dealloc__block_invoke;
  v7[3] = &unk_1E817BFE8;
  v7[4] = self;
  v3 = MEMORY[0x1C691B4C0](v7, a2);
  if (dispatch_get_specific(&kARSessionStateQueueSpecificKey) == kARSessionStateQueueSpecificValue)
  {
    v3[2](v3);
  }

  else
  {
    dispatch_sync(self->_stateQueue, v3);
  }

  if (self->_thermalStateObserver)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:self->_thermalStateObserver];
  }

  peakPowerPressureToken = self->_peakPowerPressureToken;
  if (peakPowerPressureToken)
  {
    notify_cancel(peakPowerPressureToken);
  }

  +[ARKitUserDefaults clearUserDefaultsCache];
  CV3DLoggingReleaseHandle();

  v6.receiver = self;
  v6.super_class = ARSession;
  [(ARSession *)&v6 dealloc];
}

void *__20__ARSession_dealloc__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) state];
  if (result)
  {
    v3 = _ARLogSession_0(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v5;
      v9 = 2048;
      v10 = v6;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ARSession is being deallocated without being paused. Please pause running sessions explicitly.", &v7, 0x16u);
    }

    return [*(a1 + 32) _pauseWaitingForOutstandingCallbacks:0];
  }

  return result;
}

- (ARFrame)currentFrame
{
  kdebug_trace();
  dispatch_semaphore_wait(self->_lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = self->_lastVendedFrame;
  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  objc_msgSend_timestamp(v3);
  kdebug_trace();

  return v3;
}

- (void)runWithConfiguration:(ARConfiguration *)configuration options:(ARSessionRunOptions)options
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = configuration;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_1C241C000, "Running with configuration", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [(ARConfiguration *)v6 copy];
  if ([(ARSession *)self forceAddSceneReconstructionKeyframePointCloudWithColor])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = _ARLogSession_0([v9 setSceneReconstruction:{objc_msgSend(v9, "sceneReconstruction") | 0x18}]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = NSStringFromARSceneReconstruction([v9 sceneReconstruction]);
        *buf = 138543874;
        v42 = v12;
        v43 = 2048;
        selfCopy6 = self;
        v45 = 2112;
        v46 = v13;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: SceneReconstruction after enforcing addition of KeyframePointCloudWithColor=%@", buf, 0x20u);
      }
    }
  }

  [(ARSession *)self _sessionRequestedRunWithConfiguration:v8 options:options];
  kdebug_trace();
  v14 = [ARSession _supportsConfiguration:v8];
  v15 = v14;
  v16 = _ARLogSession_0(v14);
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      v20 = ARSessionRunOptionsToString(options);
      *buf = 138544130;
      v42 = v19;
      v43 = 2048;
      selfCopy6 = self;
      v45 = 2114;
      v46 = v8;
      v47 = 2114;
      v48 = v20;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: begin run with configuration\nConfiguration: %{public}@\nOptions: %{public}@", buf, 0x2Au);
    }

    v21 = objc_autoreleasePoolPush();
    v39 = 0;
    v22 = [ARSession _applySessionOverrides:v8 outError:&v39];
    v23 = v39;

    objc_autoreleasePoolPop(v21);
    if (v22)
    {
      [(ARSessionMetrics *)self->_metrics sessionStarted:self withConfiguration:v22];
      stateQueue = self->_stateQueue;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __42__ARSession_runWithConfiguration_options___block_invoke;
      v35[3] = &unk_1E817C240;
      v8 = v22;
      v36 = v8;
      selfCopy3 = self;
      v38 = options;
      dispatch_async(stateQueue, v35);
    }

    else
    {
      if (ARShouldUseLogTypeError_onceToken_21 != -1)
      {
        [ARSession runWithConfiguration:options:];
      }

      v28 = ARShouldUseLogTypeError_internalOSVersion_21;
      v29 = _ARLogSession_0(v24);
      v30 = v29;
      if (v28 == 1)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v31 = objc_opt_class();
          v32 = NSStringFromClass(v31);
          *buf = 138543874;
          v42 = v32;
          v43 = 2048;
          selfCopy6 = self;
          v45 = 2112;
          v46 = v23;
          _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to apply overrides to configuration. Error: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v33 = objc_opt_class();
        v34 = NSStringFromClass(v33);
        *buf = 138543874;
        v42 = v34;
        v43 = 2048;
        selfCopy6 = self;
        v45 = 2112;
        v46 = v23;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to apply overrides to configuration. Error: %@", buf, 0x20u);
      }

      [(ARSession *)self _sessionDidFailWithError:v23];
      kdebug_trace();
      v8 = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138543874;
      v42 = v27;
      v43 = 2048;
      selfCopy6 = self;
      v45 = 2112;
      v46 = v8;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to run the session, configuration is not supported on this device: %@", buf, 0x20u);
    }

    v23 = ARErrorWithCodeAndUserInfo(100, 0);
    [(ARSession *)self _sessionDidFailWithError:v23];
    kdebug_trace();
  }

  os_activity_scope_leave(&state);
}

void __42__ARSession_runWithConfiguration_options___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) isKindOfConfiguration:objc_opt_class()])
  {
LABEL_6:
    v7 = *(a1 + 48);
    v8 = [*(a1 + 40) configurationInternal];
    v9 = [v8 isEqual:*(a1 + 32)];

    if (objc_opt_respondsToSelector())
    {
      v10 = [*(a1 + 32) initialWorldMap];
      v11 = v10 != 0;

      if (!v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v11 = 0;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    if (!v11 && (v7 & 1) != 0 && [*(a1 + 40) relocalizing])
    {
      v7 &= ~1uLL;
      [*(*(a1 + 40) + 8) clearMap];
    }

LABEL_14:
    if ([*(*(a1 + 40) + 344) finishedReplaying])
    {
      v12 = *(*(a1 + 40) + 344);
      v13 = [*(a1 + 32) replaySensor];

      v14 = v7 | 3;
      if (v12 != v13)
      {
        v7 |= 3uLL;
      }
    }

    else
    {
      v14 = v7 | 3;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v7 = v14;
      }
    }

    v16 = _ARLogSession_0(isKindOfClass);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      v20 = *(a1 + 32);
      v19 = *(a1 + 40);
      v21 = ARSessionRunOptionsToString(v7);
      *buf = 138544130;
      v43 = v18;
      v44 = 2048;
      v45 = v19;
      v46 = 2112;
      v47 = v20;
      v48 = 2112;
      v49 = v21;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: running with configuration\nConfiguration: %@\nOptions: %@", buf, 0x2Au);
    }

    v22 = [*(a1 + 40) state];
    if ((v7 & 1) != 0 || v22 == 0)
    {
      v24 = 0;
    }

    else
    {
      v24 = v9;
    }

    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    if (v24)
    {
      [v25 _updateSessionStateWithConfiguration:v26 options:v7];
    }

    else
    {
      [v25 _updateSessionWithConfiguration:v26 options:v7];
    }

    if ([*(a1 + 40) state] == 2 && (v27 = objc_msgSend(*(a1 + 40), "pausedSensors")) != 0)
    {
      v28 = _ARLogSession_0(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = *(a1 + 40);
        *buf = 138543618;
        v43 = v30;
        v44 = 2048;
        v45 = v31;
        v32 = "%{public}@ <%p>: deferring run due to paused sensors";
LABEL_39:
        _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_DEFAULT, v32, buf, 0x16u);
      }
    }

    else
    {
      v28 = _ARLogSession_0([*(a1 + 40) setState:1]);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v30 = NSStringFromClass(v33);
        v34 = *(a1 + 40);
        *buf = 138543618;
        v43 = v30;
        v44 = 2048;
        v45 = v34;
        v32 = "%{public}@ <%p>: running";
        goto LABEL_39;
      }
    }

    kdebug_trace();
    return;
  }

  v2 = [*(a1 + 32) replaySensor];
  if (v2 && (v3 = v2, v4 = +[ARKitUserDefaults BOOLForKey:](ARKitUserDefaults, "BOOLForKey:", @"com.apple.arkit.geotracking.disableLocationAuthorizationCheckForReplay"), v3, v4) || (v5 = +[ARGeoTrackingConfiguration verifyLocationPermissions], (v5 & 1) != 0))
  {
    dispatch_semaphore_wait(*(*(a1 + 40) + 184), 0xFFFFFFFFFFFFFFFFLL);
    v6 = [*(*(a1 + 40) + 176) anchorsToAdd];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __42__ARSession_runWithConfiguration_options___block_invoke_43;
    v41[3] = &unk_1E817CBB8;
    v41[4] = *(a1 + 40);
    [v6 enumerateObjectsUsingBlock:v41];
    dispatch_semaphore_signal(*(*(a1 + 40) + 184));

    goto LABEL_6;
  }

  v35 = _ARLogSession_0(v5);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    v36 = objc_opt_class();
    v37 = NSStringFromClass(v36);
    v38 = *(a1 + 40);
    *buf = 138543618;
    v43 = v37;
    v44 = 2048;
    v45 = v38;
    _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Location permissions not sufficient to run geo tracking.", buf, 0x16u);
  }

  v39 = *(a1 + 40);
  v40 = ARErrorWithCodeAndUserInfo(105, 0);
  [v39 _sessionDidFailWithError:v40];
}

void __42__ARSession_runWithConfiguration_options___block_invoke_43(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v4 = v6;
  if (isKindOfClass)
  {
    v5 = v6;
    if (([v5 isAltitudeAvailable] & 1) == 0)
    {
      [*(a1 + 32) _lookupAltitudeForAnchor:v5];
    }

    v4 = v6;
  }
}

- (void)pause
{
  v15 = *MEMORY[0x1E69E9840];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v3 = _os_activity_create(&dword_1C241C000, "Pausing session", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v3, &state);

  v5 = _ARLogSession_0(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v12 = v7;
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: begin pause", buf, 0x16u);
  }

  kdebug_trace();
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __18__ARSession_pause__block_invoke;
  block[3] = &unk_1E817BFE8;
  block[4] = self;
  dispatch_async(stateQueue, block);
  os_activity_scope_leave(&state);
}

double __18__ARSession_pause__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) state])
  {
    [*(a1 + 32) _pauseWaitingForOutstandingCallbacks:1];
    v2 = _ARLogSession_0([*(a1 + 32) setState:0]);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = *(a1 + 32);
      v10 = 138543618;
      v11 = v4;
      v12 = 2048;
      v13 = v5;
      v6 = "%{public}@ <%p>: paused";
LABEL_6:
      _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEFAULT, v6, &v10, 0x16u);
    }
  }

  else
  {
    v2 = _ARLogSession_0(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v4 = NSStringFromClass(v7);
      v8 = *(a1 + 32);
      v10 = 138543618;
      v11 = v4;
      v12 = 2048;
      v13 = v8;
      v6 = "%{public}@ <%p>: already paused";
      goto LABEL_6;
    }
  }

  kdebug_trace();
  return result;
}

- (void)addAnchor:(ARAnchor *)anchor
{
  v4 = anchor;
  identifier = [(ARAnchor *)v4 identifier];
  [identifier ar_integerValue];
  kdebug_trace();

  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __23__ARSession_addAnchor___block_invoke;
  v8[3] = &unk_1E817BEC8;
  v9 = v4;
  selfCopy = self;
  v7 = v4;
  dispatch_async(stateQueue, v8);
}

uint64_t __23__ARSession_addAnchor___block_invoke(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(a1 + 32);
    if (([v2 isAltitudeAvailable] & 1) == 0)
    {
      [*(a1 + 40) _lookupAltitudeForAnchor:v2];
    }
  }

  dispatch_semaphore_wait(*(*(a1 + 40) + 136), 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_timestamp(*(*(a1 + 40) + 128));
  [*(a1 + 32) setLastUpdateTimestamp:?];
  if ([*(*(a1 + 40) + 128) referenceOriginTransformAvailable])
  {
    [*(*(a1 + 40) + 128) referenceOriginTransform];
    v22 = __invert_f4(v21);
    v13 = v22.columns[1];
    v14 = v22.columns[0];
    v11 = v22.columns[3];
    v12 = v22.columns[2];
    objc_msgSend_transform(*(a1 + 32));
    v3 = 0;
    v15[0] = v4;
    v15[1] = v5;
    v15[2] = v6;
    v15[3] = v7;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    do
    {
      *(&v16 + v3 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v15[v3])), v13, *&v15[v3], 1), v12, v15[v3], 2), v11, v15[v3], 3);
      ++v3;
    }

    while (v3 != 4);
    [*(a1 + 32) setReferenceTransform:{*&v16, *&v17, *&v18, *&v19}];
  }

  dispatch_semaphore_signal(*(*(a1 + 40) + 136));
  dispatch_semaphore_wait(*(*(a1 + 40) + 184), 0xFFFFFFFFFFFFFFFFLL);
  [*(*(a1 + 40) + 176) addAnchor:*(a1 + 32)];
  dispatch_semaphore_signal(*(*(a1 + 40) + 184));
  v8 = *(a1 + 32);
  v9 = *(*(a1 + 40) + 40);

  return [v9 recordAddedAnchor:v8];
}

- (void)removeAnchor:(ARAnchor *)anchor
{
  v4 = anchor;
  identifier = [(ARAnchor *)v4 identifier];
  [identifier ar_integerValue];
  kdebug_trace();

  stateQueue = self->_stateQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __26__ARSession_removeAnchor___block_invoke;
  v8[3] = &unk_1E817BEC8;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(stateQueue, v8);
}

uint64_t __26__ARSession_removeAnchor___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 32) + 184), 0xFFFFFFFFFFFFFFFFLL);
  [*(*(a1 + 32) + 176) removeAnchor:*(a1 + 40)];
  dispatch_semaphore_signal(*(*(a1 + 32) + 184));
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 40);

  return [v3 recordRemovedAnchor:v2];
}

- (void)setWorldOrigin:(simd_float4x4)relativeTransform
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__ARSession_setWorldOrigin___block_invoke;
  v4[3] = &unk_1E817CBE0;
  selfCopy = self;
  v5 = relativeTransform;
  dispatch_async(stateQueue, v4);
}

intptr_t __28__ARSession_setWorldOrigin___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(*(*(a1 + 96) + 184), 0xFFFFFFFFFFFFFFFFLL);
  dispatch_semaphore_wait(*(*(a1 + 96) + 136), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 96);
  v3 = *(v2 + 128);
  if (v3)
  {
    [v3 sessionOriginTransform];
    v28 = __invert_f4(v27);
    v20 = v28.columns[1];
    v21 = v28.columns[0];
    v18 = v28.columns[3];
    v19 = v28.columns[2];
    v2 = *(a1 + 96);
  }

  else
  {
    v20 = *(MEMORY[0x1E69E9B18] + 16);
    v21 = *MEMORY[0x1E69E9B18];
    v18 = *(MEMORY[0x1E69E9B18] + 48);
    v19 = *(MEMORY[0x1E69E9B18] + 32);
  }

  dispatch_semaphore_signal(*(v2 + 136));
  v4 = 0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v22[0] = *(a1 + 32);
  v22[1] = v5;
  v22[2] = v6;
  v22[3] = v7;
  memset(buf, 0, sizeof(buf));
  v24 = 0u;
  *v25 = 0u;
  do
  {
    *&buf[v4 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(v22[v4])), v20, *&v22[v4], 1), v19, v22[v4], 2), v18, v22[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  v8 = _ARLogSession_0([*(*(a1 + 96) + 176) setSessionTransform:{*buf, *&buf[16], *&v24, v25[0]}]);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = *(a1 + 96);
    [*(v11 + 176) sessionTransform];
    v16 = ARMatrix4x4Description(0, v12, v13, v14, v15);
    *buf = 138543874;
    *&buf[4] = v10;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    *&buf[22] = 2112;
    *&buf[24] = v16;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: world origin updated %@", buf, 0x20u);
  }

  return dispatch_semaphore_signal(*(*(a1 + 96) + 184));
}

+ (void)forceEnvironmentTexturingTechniqueToManualMode:(id)mode
{
  v14 = *MEMORY[0x1E69E9840];
  modeCopy = mode;
  if (modeCopy)
  {
    v5 = -[AREnvironmentTexturingTechnique initWithOptions:wantsHDREnvironmentTextures:]([AREnvironmentTexturingTechnique alloc], "initWithOptions:wantsHDREnvironmentTextures:", 1, [modeCopy wantsHDREnvironmentTextures]);
    v6 = [modeCopy isEqual:v5];
    if ((v6 & 1) == 0)
    {
      v7 = _ARLogSession_0(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        v10 = 138543618;
        v11 = v9;
        v12 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Forcing environment texturing technique to manual mode", &v10, 0x16u);
      }

      [modeCopy reconfigureFrom:v5];
    }
  }
}

- (void)forceEnvironmentTexturingToManualMode:(BOOL)mode
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__ARSession_forceEnvironmentTexturingToManualMode___block_invoke;
  v4[3] = &unk_1E817CC08;
  v4[4] = self;
  modeCopy = mode;
  dispatch_async(stateQueue, v4);
}

void *__51__ARSession_forceEnvironmentTexturingToManualMode___block_invoke(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 32);
  if (v2 != *(result + 40))
  {
    if (*(result + 40))
    {
      v3 = result;
      result = [ARSession forceEnvironmentTexturingTechniqueToManualMode:*(v1 + 16)];
      LOBYTE(v2) = *(v3 + 40);
      v1 = v3[4];
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  *(v1 + 32) = v2;
  return result;
}

- (void)getCurrentWorldMapWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E817CCA0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(stateQueue, v7);
}

void __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke(uint64_t a1)
{
  v46[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v3 = v2;
  if (v2 && ([v2 mutableOptions], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "slamConfiguration"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "isEqualToString:", @"ObjectDetectionMapBuilding"), v5, v4, !v6))
  {
    v11 = [*(a1 + 32) currentFrame];
    v12 = kdebug_trace();
    v38 = v11;
    if (v11 && (v12 = [v3 hasQualityKeyframe], v12) && (objc_msgSend(v11, "gravityAlignedReferenceOriginTransform"), objc_msgSend(v3, "serializeWorldMapWithReferenceOrigin:"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = v12;
      v14 = [v3 serializeSurfaceData];
      [v13 setSurfaceData:v14];

      v15 = [v11 anchors];
      v16 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_68_0];
      v17 = [v15 filteredArrayUsingPredicate:v16];
      [v13 setAnchors:v17];

      v18 = *(*(a1 + 32) + 592);
      v19 = [v11 worldMappingStatus];
      v20 = [v13 rawFeaturePoints];
      [v18 recordSaveMap:v19 numberOfFeaturePoints:{objc_msgSend(v20, "count")}];

      [v13 trackingData];
    }

    else
    {
      v45[0] = *MEMORY[0x1E696A588];
      v21 = ARKitCoreBundle(v12);
      v22 = [v21 localizedStringForKey:@"Not enough features have been recorded to create a world map yet." value:&stru_1F4208A80 table:@"Localizable"];
      v46[0] = v22;
      v45[1] = *MEMORY[0x1E696A598];
      v23 = ARKitCoreBundle(v22);
      v24 = [v23 localizedStringForKey:@"Make sure that tracking has initialized and continue to scan the environment." value:&stru_1F4208A80 table:@"Localizable"];
      v46[1] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];

      v37 = ARErrorWithCodeAndUserInfo(400, v25);

      v13 = 0;
      [0 trackingData];
    }
    v26 = ;
    [v26 length];
    v27 = [v13 surfaceData];
    [v27 length];
    v28 = [v13 rawFeaturePoints];
    [v28 count];
    v29 = [v13 anchors];
    [v29 count];
    kdebug_trace();

    v30 = *(*(a1 + 32) + 512);
    v31 = v30;
    if (!v30)
    {
      v31 = MEMORY[0x1E69E96A0];
      v32 = MEMORY[0x1E69E96A0];
    }

    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke_4;
    v39[3] = &unk_1E817CC78;
    v33 = *(a1 + 40);
    v40 = v13;
    v41 = v36;
    v42 = v33;
    v34 = v36;
    v35 = v13;
    dispatch_async(v31, v39);
    if (!v30)
    {
    }

    v10 = v38;
  }

  else
  {
    v7 = *(*(a1 + 32) + 512);
    v8 = v7;
    if (!v7)
    {
      v8 = MEMORY[0x1E69E96A0];
      v9 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke_2;
    block[3] = &unk_1E817CC30;
    v44 = *(a1 + 40);
    dispatch_async(v8, block);
    if (!v7)
    {
    }

    v10 = v44;
  }
}

void __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E696A588];
  v3 = ARKitCoreBundle(a1);
  v4 = [v3 localizedStringForKey:@"Getting the current world map requires that world tracking is configured." value:&stru_1F4208A80 table:@"Localizable"];
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E696A598];
  v5 = ARKitCoreBundle(v4);
  v6 = [v5 localizedStringForKey:@"Make sure that an ARWorldTrackingConfiguration is being used." value:&stru_1F4208A80 table:@"Localizable"];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *(a1 + 32);
  v9 = ARErrorWithCodeAndUserInfo(303, v7);
  (*(v8 + 16))(v8, 0, v9);
}

uint64_t __53__ARSession_getCurrentWorldMapWithCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = 0;
  }

  else
  {
    objc_opt_class();
    v3 = objc_opt_isKindOfClass() ^ 1;
  }

  return v3 & 1;
}

- (id)adPipelineParameters
{
  v12[1] = *MEMORY[0x1E69E9840];
  technique = [(ARSession *)self technique];

  if (!technique || (-[ARSession technique](self, "technique"), v4 = objc_claimAutoreleasedReturnValue(), v12[0] = v4, [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1], v5 = objc_claimAutoreleasedReturnValue(), +[ARTechnique techniqueConformsToProtocol:inArray:](ARTechnique, "techniqueConformsToProtocol:inArray:", &unk_1F425FD78, v5), secondaryTechnique = objc_claimAutoreleasedReturnValue(), v5, v4, !secondaryTechnique))
  {
    secondaryTechnique = [(ARSession *)self secondaryTechnique];

    if (secondaryTechnique)
    {
      secondaryTechnique2 = [(ARSession *)self secondaryTechnique];
      v11 = secondaryTechnique2;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
      secondaryTechnique = [ARTechnique techniqueConformsToProtocol:&unk_1F425FD78 inArray:v8];
    }
  }

  pipelineParameters = [secondaryTechnique pipelineParameters];

  return pipelineParameters;
}

- (void)createReferenceObjectWithTransform:(simd_float4x4)transform center:(simd_float3)center extent:(simd_float3)extent completionHandler:(void *)completionHandler
{
  v7 = completionHandler;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke;
  block[3] = &unk_1E817CCC8;
  selfCopy = self;
  v18 = v7;
  v14 = transform;
  v15 = center;
  v16 = extent;
  v9 = v7;
  dispatch_async(stateQueue, block);
}

void __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke(uint64_t a1)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 128) + 8);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 mutableOptions];
    v5 = [v4 slamConfiguration];
    v6 = [v5 isEqualToString:@"ObjectDetectionMapBuilding"];

    if (v6)
    {
      v7 = [*(a1 + 128) currentFrame];
      v8 = kdebug_trace();
      if (v7)
      {
        [v7 gravityAlignedReferenceOriginTransform];
        v8 = [v3 serializeWorldMapWithReferenceOrigin:?];
        v9 = v8;
        if (v8)
        {
          v8 = [v8 extractReferenceObjectWithTransform:0 center:*(a1 + 32) extent:*(a1 + 48) error:{*(a1 + 64), *(a1 + 80), *(a1 + 96), *(a1 + 112)}];
          if (v8)
          {
            v10 = v8;
            v11 = 0;
LABEL_14:
            kdebug_trace();
            v20 = *(*(a1 + 128) + 512);
            v21 = v20;
            if (!v20)
            {
              v21 = MEMORY[0x1E69E96A0];
              v22 = MEMORY[0x1E69E96A0];
            }

            v26[0] = MEMORY[0x1E69E9820];
            v26[1] = 3221225472;
            v26[2] = __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke_3;
            v26[3] = &unk_1E817CC78;
            v23 = *(a1 + 136);
            v28 = v11;
            v29 = v23;
            v27 = v10;
            v24 = v11;
            v25 = v10;
            dispatch_async(v21, v26);
            if (!v20)
            {
            }

            goto LABEL_19;
          }
        }
      }

      else
      {
        v9 = 0;
      }

      v32[0] = *MEMORY[0x1E696A588];
      v15 = ARKitCoreBundle(v8);
      v16 = [v15 localizedStringForKey:@"Not enough features have been recorded to create a reference object at this position." value:&stru_1F4208A80 table:@"Localizable"];
      v33[0] = v16;
      v32[1] = *MEMORY[0x1E696A598];
      v17 = ARKitCoreBundle(v16);
      v18 = [v17 localizedStringForKey:@"Make sure the bounds of the object are correct value:or scan the object further and try again." table:{&stru_1F4208A80, @"Localizable"}];
      v33[1] = v18;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

      v11 = ARErrorWithCodeAndUserInfo(400, v19);

      v10 = 0;
      goto LABEL_14;
    }
  }

  v12 = *(*(a1 + 128) + 512);
  v13 = v12;
  if (!v12)
  {
    v13 = MEMORY[0x1E69E96A0];
    v14 = MEMORY[0x1E69E96A0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke_2;
  block[3] = &unk_1E817CC30;
  v31 = *(a1 + 136);
  dispatch_async(v13, block);
  if (!v12)
  {
  }

  v7 = v31;
LABEL_19:
}

void __80__ARSession_createReferenceObjectWithTransform_center_extent_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E696A588];
  v3 = ARKitCoreBundle(a1);
  v4 = [v3 localizedStringForKey:@"Creating a reference object requires that object scanning is configured." value:&stru_1F4208A80 table:@"Localizable"];
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E696A598];
  v5 = ARKitCoreBundle(v4);
  v6 = [v5 localizedStringForKey:@"Make sure that an ARObjectScanningConfiguration is being used." value:&stru_1F4208A80 table:@"Localizable"];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = *(a1 + 32);
  v9 = ARErrorWithCodeAndUserInfo(303, v7);
  (*(v8 + 16))(v8, 0, v9);
}

- (void)_pauseWaitingForOutstandingCallbacks:(BOOL)callbacks
{
  callbacksCopy = callbacks;
  dispatch_assert_queue_V2(self->_stateQueue);
  resultRequestScheduler = self->_resultRequestScheduler;
  self->_resultRequestScheduler = 0;

  secondaryResultRequestScheduler = self->_secondaryResultRequestScheduler;
  self->_secondaryResultRequestScheduler = 0;

  [(ARFrameUpdateTimer *)self->_frameUpdateTimer setActive:0];
  dispatch_semaphore_wait(self->_pendingHiResFrameCaptureSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_pendingHiResFrameCaptureCompletionBlock)
  {
    self->_isHiResFrameCaptureInProgress = 0;
    v7 = MEMORY[0x1C691B4C0]();
    pendingHiResFrameCaptureCompletionBlock = self->_pendingHiResFrameCaptureCompletionBlock;
    self->_pendingHiResFrameCaptureCompletionBlock = 0;

    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
    if (v7)
    {
      delegateQueue = [(ARSession *)self delegateQueue];
      v10 = delegateQueue;
      if (!delegateQueue)
      {
        v10 = MEMORY[0x1E69E96A0];
        v11 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __50__ARSession__pauseWaitingForOutstandingCallbacks___block_invoke;
      block[3] = &unk_1E817CC30;
      v7 = v7;
      v13 = v7;
      dispatch_async(v10, block);
      if (!delegateQueue)
      {
      }
    }
  }

  else
  {
    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
    v7 = 0;
  }

  [(ARSessionMetrics *)self->_metrics sessionStopped];
  [(ARSession *)self _stopAllSensorsWaitingForOutstandingCallbacks:callbacksCopy];
}

void __50__ARSession__pauseWaitingForOutstandingCallbacks___block_invoke(uint64_t a1, uint64_t a2)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = ARKitCoreBundle(a1);
  v5 = [v4 localizedStringForKey:@"Could not complete high-resolution frame capturing because the session was paused." value:&stru_1F4208A80 table:@"Localizable"];
  v6 = [v3 stringWithFormat:v5];

  v10 = *MEMORY[0x1E696A588];
  v11[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v8 = *(a1 + 32);
  v9 = ARErrorWithCodeAndUserInfo(107, v7);
  (*(v8 + 16))(v8, 0, v9);
}

- (void)setState:(unint64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    self->_state = state;
    kdebug_trace();
    if ([(ARSession *)self _shouldUpdateLocationSensorForFusion])
    {
      [(ARRemoteLocationSensor *)self->_locationSensor updateARSessionState:state];
    }

    _getObservers = [(ARSession *)self _getObservers];
    kdebug_trace();
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = _getObservers;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            [v11 session:self didChangeState:{self->_state, v12}];
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v8);
    }

    kdebug_trace();
    if (state != 1)
    {
      [(ARFrameUpdateTimer *)self->_frameUpdateTimer stop];
    }
  }
}

- (__n128)originTransform
{
  dispatch_semaphore_wait(*(self + 136), 0xFFFFFFFFFFFFFFFFLL);
  [*(self + 128) sessionOriginTransform];
  v4 = __invert_f4(v5);
  dispatch_semaphore_signal(*(self + 136));
  dispatch_semaphore_wait(*(self + 184), 0xFFFFFFFFFFFFFFFFLL);
  if ([*(self + 176) sessionTransformUpdated])
  {
    [*(self + 176) sessionTransform];
    v4 = v2;
  }

  dispatch_semaphore_signal(*(self + 184));
  return v4;
}

- (void)setOriginTransform:(__n128)transform
{
  v5 = *(self + 192);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__ARSession_setOriginTransform___block_invoke;
  v6[3] = &unk_1E817CBE0;
  selfCopy = self;
  v7 = a2;
  transformCopy = transform;
  v9 = a4;
  v10 = a5;
  dispatch_async(v5, v6);
}

intptr_t __32__ARSession_setOriginTransform___block_invoke(uint64_t a1)
{
  dispatch_semaphore_wait(*(*(a1 + 96) + 184), 0xFFFFFFFFFFFFFFFFLL);
  [*(*(a1 + 96) + 176) setSessionTransform:{*(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80)}];
  v2 = *(*(a1 + 96) + 184);

  return dispatch_semaphore_signal(v2);
}

- (__n128)predictedDeviceTransformAtTimestamp:(uint64_t)timestamp
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = _os_activity_create(&dword_1C241C000, "Predicted device transform", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  kdebug_trace();
  technique = [timestamp technique];
  if (technique && ([timestamp configurationInternal], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "worldAlignment"), v6, v7 != 2))
  {
    v8 = objc_opt_new();
    configurationInternal = [timestamp configurationInternal];
    videoFormat = [configurationInternal videoFormat];
    [v8 setCameraPosition:{objc_msgSend(videoFormat, "captureDevicePosition")}];

    v11 = [technique predictedResultDataAtTimestamp:v8 context:a2];
    dispatch_semaphore_wait(*(timestamp + 136), 0xFFFFFFFFFFFFFFFFLL);
    [timestamp _cameraTransformForResultData:v11 previousFrame:*(timestamp + 128)];
    v25 = v13;
    v26 = v12;
    v23 = v15;
    v24 = v14;
    dispatch_semaphore_signal(*(timestamp + 136));
    v16 = ARDisplayCenterTransformForCaptureDevicePosition([v8 cameraPosition]);
    v29 = v17;
    v31 = v16;
    v27 = v19;
    v28 = v18;
    kdebug_trace();
    v41.columns[1] = v29;
    v41.columns[0] = v31;
    v41.columns[3] = v27;
    v41.columns[2] = v28;
    v42 = __invert_f4(v41);
    v20 = 0;
    v33 = v31;
    v34 = v29;
    v35 = v28;
    v36 = v27;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    do
    {
      *(&v37 + v20) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v26, COERCE_FLOAT(*(&v33 + v20))), v25, *&v33.f32[v20 / 4], 1), v24, *(&v33 + v20), 2), v23, *(&v33 + v20), 3);
      v20 += 16;
    }

    while (v20 != 64);
    v21 = 0;
    v33 = v37;
    v34 = v38;
    v35 = v39;
    v36 = v40;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    do
    {
      *(&v37 + v21) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v42.columns[0], COERCE_FLOAT(*(&v33 + v21))), v42.columns[1], *&v33.f32[v21 / 4], 1), v42.columns[2], *(&v33 + v21), 2), v42.columns[3], *(&v33 + v21), 3);
      v21 += 16;
    }

    while (v21 != 64);
    v30 = v37;
  }

  else
  {
    v30 = *MEMORY[0x1E69E9B18];
  }

  os_activity_scope_leave(&state);
  return v30;
}

- (void)_interruptSession
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(ARSession *)self state]== 1)
  {
    v9.opaque[0] = 0;
    v9.opaque[1] = 0;
    v3 = _os_activity_create(&dword_1C241C000, "Session was interrupted", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &v9);

    v5 = _ARLogSession_0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = ARSensorDataTypesToString([(ARSession *)self pausedSensors:v9.opaque[0]]);
      *buf = 138543874;
      v11 = v7;
      v12 = 2048;
      selfCopy = self;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: was interrupted: paused sensor type(s) %@", buf, 0x20u);
    }

    [(ARSession *)self _stopSensorsWithDataTypes:[(ARSession *)self runningSensors] keepingDataTypes:[(ARSession *)self pausedSensors]];
    [(ARSession *)self setState:2];
    [(ARBKSAccelerometer *)self->_bksAccelerometer setPassive:1];
    os_activity_scope_leave(&v9);
  }
}

- (void)_endInterruption
{
  v14 = *MEMORY[0x1E69E9840];
  if ([(ARSession *)self state]== 2)
  {
    v9.opaque[0] = 0;
    v9.opaque[1] = 0;
    v3 = _os_activity_create(&dword_1C241C000, "Session interruption ended", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v3, &v9);

    v5 = _ARLogSession_0(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138543618;
      v11 = v7;
      v12 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: interruption ended", buf, 0x16u);
    }

    v8 = [(ARSession *)self configurationInternal:v9.opaque[0]];
    [(ARSession *)self _updateSessionWithConfiguration:v8 options:0];

    [(ARSession *)self setState:1];
    [(ARBKSAccelerometer *)self->_bksAccelerometer setPassive:0];
    os_activity_scope_leave(&v9);
  }
}

- (void)_updatePowerPressureLevelWithToken:(int)token
{
  v23 = *MEMORY[0x1E69E9840];
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    self->_peakPowerPressureLevel = 0;
    if (ARShouldUseLogTypeError_onceToken_21 != -1)
    {
      [ARSession runWithConfiguration:options:];
    }

    v5 = ARShouldUseLogTypeError_internalOSVersion_21;
    v6 = _ARLogSession_0(state);
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543618;
        v18 = v9;
        v19 = 2048;
        selfCopy3 = self;
        v10 = "%{public}@ <%p>: could not read peak power";
        v11 = v7;
        v12 = OS_LOG_TYPE_ERROR;
LABEL_11:
        v14 = 22;
        goto LABEL_12;
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v9 = NSStringFromClass(v15);
      *buf = 138543618;
      v18 = v9;
      v19 = 2048;
      selfCopy3 = self;
      v10 = "Error: %{public}@ <%p>: could not read peak power";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }
  }

  else
  {
    self->_peakPowerPressureLevel = state64;
    v7 = _ARLogSession_0(state);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v9 = NSStringFromClass(v13);
      *buf = 138543874;
      v18 = v9;
      v19 = 2048;
      selfCopy3 = self;
      v21 = 2048;
      v22 = state64;
      v10 = "%{public}@ <%p>: peak power level: %llu";
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
      v14 = 32;
LABEL_12:
      _os_log_impl(&dword_1C241C000, v11, v12, v10, buf, v14);
    }
  }
}

- (void)_updateThermalStateFromCurrentProcessInfo
{
  v14 = *MEMORY[0x1E69E9840];
  thermalState = [(ARThermalStateProvider *)self->_thermalStateProvider thermalState];
  if (self->_thermalState != thermalState)
  {
    self->_thermalState = thermalState;
    v4 = _ARLogSession_0([(ARSessionMetrics *)self->_metrics sessionUpdateThermalState:thermalState]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      thermalState = self->_thermalState;
      v8 = 138543874;
      v9 = v6;
      v10 = 2048;
      selfCopy = self;
      v12 = 2048;
      v13 = thermalState;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: thermal state: %li", &v8, 0x20u);
    }
  }
}

- (void)_updatePowerUsage
{
  v3 = ARPowerUsageForThermalState(self->_thermalState);
  v4 = ARPowerUsageForPowerPressureLevel(self->_peakPowerPressureLevel);
  if (v3 <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  [(ARSession *)self _changePowerUsage:v5];
}

- (void)_changePowerUsage:(unint64_t)usage
{
  v37 = *MEMORY[0x1E69E9840];
  if ([(ARSession *)self powerUsage]!= usage)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v5 = _os_activity_create(&dword_1C241C000, "Power usage changed", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    powerUsage = [(ARSession *)self powerUsage];
    v7 = [(ARSession *)self setPowerUsage:usage];
    if (usage)
    {
      v8 = _ARLogSession_0(v7);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (powerUsage <= usage)
      {
        if (v9)
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          powerUsage2 = [(ARSession *)self powerUsage];
          *buf = 138543874;
          v32 = v16;
          v33 = 2048;
          selfCopy3 = self;
          v35 = 2048;
          v36 = powerUsage2;
          _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Increasing power utilization [%li]", buf, 0x20u);
        }
      }

      else if (v9)
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        powerUsage3 = [(ARSession *)self powerUsage];
        *buf = 138543874;
        v32 = v11;
        v33 = 2048;
        selfCopy3 = self;
        v35 = 2048;
        v36 = powerUsage3;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Decreasing power utilization [%li]", buf, 0x20u);
      }
    }

    else
    {
      v8 = _ARLogSession_0(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v32 = v14;
        v33 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Restoring normal power utilization", buf, 0x16u);
      }
    }

    technique = [(ARSession *)self technique];
    [technique setPowerUsage:usage];

    secondaryTechnique = [(ARSession *)self secondaryTechnique];
    [secondaryTechnique setPowerUsage:usage];

    kdebug_trace();
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    availableSensors = [(ARSession *)self availableSensors];
    v21 = [availableSensors countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v21)
    {
      v22 = *v26;
      do
      {
        v23 = 0;
        do
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(availableSensors);
          }

          v24 = *(*(&v25 + 1) + 8 * v23);
          if (objc_opt_respondsToSelector())
          {
            [v24 setPowerUsage:usage];
          }

          ++v23;
        }

        while (v21 != v23);
        v21 = [availableSensors countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v21);
    }

    kdebug_trace();
    os_activity_scope_leave(&state);
  }
}

- (id)_frameContextByConsumingPendingChanges
{
  dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  createdContextByConsumingPendingChanges = [(ARFrameContextHandler *)self->_frameContextHandler createdContextByConsumingPendingChanges];
  configurationInternal = [(ARSession *)self configurationInternal];
  [createdContextByConsumingPendingChanges setWorldAlignment:{objc_msgSend(configurationInternal, "worldAlignment")}];

  configurationInternal2 = [(ARSession *)self configurationInternal];
  [createdContextByConsumingPendingChanges setFrameDebugOptions:{objc_msgSend(configurationInternal2, "frameDebugOptions")}];

  worldTrackingTechnique = self->_worldTrackingTechnique;
  if (worldTrackingTechnique)
  {
    mutableOptions = [(ARWorldTrackingTechnique *)worldTrackingTechnique mutableOptions];
    initialWorldMap = [mutableOptions initialWorldMap];
    [createdContextByConsumingPendingChanges setWorldMap:initialWorldMap];
  }

  dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);

  return createdContextByConsumingPendingChanges;
}

- (int64_t)_preferredRenderSyncFrameRateForCaptureFrameRate:(int64_t)rate
{
  rateCopy = 48;
  if (rate != 24)
  {
    rateCopy = rate;
  }

  if (rate == 25)
  {
    rateCopy = 60;
  }

  if (rate == 10)
  {
    return 60;
  }

  else
  {
    return rateCopy;
  }
}

- (int64_t)_preferredRenderFrameRateForCaptureFrameRate:(int64_t)rate isNominalPower:(BOOL)power
{
  v4 = 60;
  rateCopy = 30;
  if (power)
  {
    rateCopy = 60;
  }

  if (rate != 30)
  {
    rateCopy = rate;
  }

  if (rate != 25)
  {
    v4 = rateCopy;
  }

  v6 = 10;
  if (power)
  {
    v6 = 60;
  }

  rateCopy2 = 48;
  if (rate != 24)
  {
    rateCopy2 = rate;
  }

  if (rate != 10)
  {
    v6 = rateCopy2;
  }

  if (rate <= 24)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)_supportsConfiguration:(id)configuration
{
  configurationCopy = configuration;
  deviceModel = [configurationCopy deviceModel];
  if (deviceModel)
  {
  }

  else if (([objc_opt_class() isSupported] & 1) == 0)
  {
    v6 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([configurationCopy userFaceTrackingEnabled])
    {
      v5 = +[ARWorldTrackingConfiguration supportsUserFaceTracking];
LABEL_10:
      v6 = v5;
      goto LABEL_13;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [configurationCopy isWorldTrackingEnabled])
    {
      v5 = +[ARFaceTrackingConfiguration supportsWorldTracking];
      goto LABEL_10;
    }
  }

  v6 = 1;
LABEL_13:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = configurationCopy;
    v8 = v7;
    if (v6)
    {
      v6 = 1;
    }

    else if ([v7 supportEnablementOptions])
    {
      v6 = +[ARGeoTrackingConfiguration isSupportedWithOptions:](ARGeoTrackingConfiguration, "isSupportedWithOptions:", [v8 supportEnablementOptions]);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_trackingStateChangedFromLastVendedFrameToFrame:(id)frame
{
  lastVendedFrameSemaphore = self->_lastVendedFrameSemaphore;
  frameCopy = frame;
  dispatch_semaphore_wait(lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(lastVendedFrameSemaphore) = TrackingStateDifferent(self->_lastVendedFrame, frameCopy);

  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  return lastVendedFrameSemaphore;
}

- (BOOL)_geoTrackingPublicStatusChangedFromLastVendedFrameToFrame:(id)frame
{
  v38 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  dispatch_semaphore_wait(self->_lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v5 = self->_lastVendedFrame;
  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  geoTrackingStatus = [frameCopy geoTrackingStatus];

  if (geoTrackingStatus)
  {
    geoTrackingStatus2 = [(ARFrame *)v5 geoTrackingStatus];

    if (geoTrackingStatus2)
    {
      geoTrackingStatus3 = [frameCopy geoTrackingStatus];
      geoTrackingStatus4 = [(ARFrame *)v5 geoTrackingStatus];
      LODWORD(geoTrackingStatus) = [geoTrackingStatus3 isEqual:geoTrackingStatus4] ^ 1;

      geoTrackingStatus5 = [frameCopy geoTrackingStatus];
      geoTrackingStatus6 = [(ARFrame *)v5 geoTrackingStatus];
      v13 = [geoTrackingStatus5 isEqualPrivate:geoTrackingStatus6];

      if (v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      LOBYTE(geoTrackingStatus) = 1;
    }

    v14 = _ARLogSession_0(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v25 = NSStringFromClass(v15);
      geoTrackingStatus7 = [frameCopy geoTrackingStatus];
      v22 = NSStringFromARGeoTrackingState([geoTrackingStatus7 state]);
      geoTrackingStatus8 = [frameCopy geoTrackingStatus];
      v16 = NSStringFromARGeoTrackingStateReason([geoTrackingStatus8 stateReason]);
      geoTrackingStatus9 = [frameCopy geoTrackingStatus];
      v18 = NSStringFromARGeoTrackingAccuracy([geoTrackingStatus9 accuracy]);
      geoTrackingStatus10 = [frameCopy geoTrackingStatus];
      v20 = NSStringFromARGeoTrackingInternalFailureReason([geoTrackingStatus10 failureReasons]);
      *buf = 138544642;
      v27 = v25;
      v28 = 2048;
      selfCopy = self;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v20;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: GeoTrackingStatus changed: (%@), reason: (%@), accuracy: (%@), internal: (%@)", buf, 0x3Eu);
    }
  }

LABEL_9:

  return geoTrackingStatus;
}

- (void)timerDidVendFrame:(id)frame
{
  v78 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  v6 = [(ARSession *)self _trackingStateChangedFromLastVendedFrameToFrame:frameCopy];
  v7 = [(ARSession *)self _geoTrackingPublicStatusChangedFromLastVendedFrameToFrame:frameCopy];
  dispatch_semaphore_wait(self->_lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&self->_lastVendedFrame, frame);
  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  if (v6)
  {
    camera = [frameCopy camera];
    [(ARSession *)self _sessionCameraDidChangeTrackingState:camera];
  }

  if (v7)
  {
    geoTrackingStatus = [frameCopy geoTrackingStatus];
    [(ARSession *)self _sessionDidChangeGeoTrackingStatus:geoTrackingStatus];
  }

  anchorChangeSet = [frameCopy anchorChangeSet];
  if (anchorChangeSet)
  {
    [frameCopy setAnchorChangeSet:0];
    externalAnchors = [anchorChangeSet externalAnchors];
    v12 = [externalAnchors count];

    v53 = anchorChangeSet;
    v55 = frameCopy;
    if (v12)
    {
      externalAnchors2 = [anchorChangeSet externalAnchors];
      [(ARSession *)self _sessionDidUpdateExternalAnchors:externalAnchors2];

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      externalAnchors3 = [anchorChangeSet externalAnchors];
      v15 = [externalAnchors3 countByEnumeratingWithState:&v65 objects:v77 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v66;
        do
        {
          v18 = 0;
          do
          {
            if (*v66 != v17)
            {
              objc_enumerationMutation(externalAnchors3);
            }

            v19 = *(*(&v65 + 1) + 8 * v18);
            v20 = _ARLogSession_0(v15);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              v23 = [v19 description];
              *buf = 138543874;
              v72 = v22;
              v73 = 2048;
              selfCopy3 = self;
              v75 = 2112;
              v76 = v23;
              _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: External anchor updated: %@", buf, 0x20u);
            }

            ++v18;
          }

          while (v16 != v18);
          v15 = [externalAnchors3 countByEnumeratingWithState:&v65 objects:v77 count:16];
          v16 = v15;
        }

        while (v15);
      }

      anchorChangeSet = v53;
      frameCopy = v55;
    }

    removedAnchors = [anchorChangeSet removedAnchors];
    v25 = [removedAnchors count];

    if (v25)
    {
      removedAnchors2 = [anchorChangeSet removedAnchors];
      [(ARSession *)self _sessionDidRemoveAnchors:removedAnchors2];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      removedAnchors3 = [anchorChangeSet removedAnchors];
      v28 = [removedAnchors3 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v62;
        do
        {
          v31 = 0;
          do
          {
            if (*v62 != v30)
            {
              objc_enumerationMutation(removedAnchors3);
            }

            v32 = *(*(&v61 + 1) + 8 * v31);
            v33 = _ARLogSession_0(v28);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              v34 = objc_opt_class();
              v35 = NSStringFromClass(v34);
              v36 = [v32 description];
              *buf = 138543874;
              v72 = v35;
              v73 = 2048;
              selfCopy3 = self;
              v75 = 2112;
              v76 = v36;
              _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Anchor removed: %@", buf, 0x20u);
            }

            ++v31;
          }

          while (v29 != v31);
          v28 = [removedAnchors3 countByEnumeratingWithState:&v61 objects:v70 count:16];
          v29 = v28;
        }

        while (v28);
      }

      anchorChangeSet = v54;
      frameCopy = v56;
    }

    addedAnchors = [anchorChangeSet addedAnchors];
    v38 = [addedAnchors count];

    if (v38)
    {
      addedAnchors2 = [anchorChangeSet addedAnchors];
      [(ARSession *)self _sessionDidAddAnchors:addedAnchors2];

      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      addedAnchors3 = [anchorChangeSet addedAnchors];
      v41 = [addedAnchors3 countByEnumeratingWithState:&v57 objects:v69 count:16];
      if (v41)
      {
        v42 = v41;
        v43 = *v58;
        do
        {
          v44 = 0;
          do
          {
            if (*v58 != v43)
            {
              objc_enumerationMutation(addedAnchors3);
            }

            v45 = *(*(&v57 + 1) + 8 * v44);
            v46 = _ARLogSession_0(v41);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
            {
              v47 = objc_opt_class();
              v48 = NSStringFromClass(v47);
              v49 = [v45 description];
              *buf = 138543874;
              v72 = v48;
              v73 = 2048;
              selfCopy3 = self;
              v75 = 2112;
              v76 = v49;
              _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Anchor added: %@", buf, 0x20u);
            }

            ++v44;
          }

          while (v42 != v44);
          v41 = [addedAnchors3 countByEnumeratingWithState:&v57 objects:v69 count:16];
          v42 = v41;
        }

        while (v41);
      }

      anchorChangeSet = v54;
      frameCopy = v56;
    }

    updatedAnchors = [anchorChangeSet updatedAnchors];
    v51 = [updatedAnchors count];

    if (v51)
    {
      updatedAnchors2 = [anchorChangeSet updatedAnchors];
      [(ARSession *)self _sessionDidUpdateAnchors:updatedAnchors2];
    }
  }

  [(ARSession *)self _sessionDidUpdateFrame:frameCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  dispatch_semaphore_wait(self->_lastVendedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [v6 appendFormat:@" currentFrame=%p", self->_lastVendedFrame];
  objc_msgSend_timestamp(self->_lastVendedFrame);
  [v6 appendFormat:@" timestamp=%f", v7];
  dispatch_semaphore_signal(self->_lastVendedFrameSemaphore);
  configurationInternal = [(ARSession *)self configurationInternal];
  [v6 appendFormat:@" configuration=%@", configurationInternal];

  [v6 appendString:@">"];

  return v6;
}

- (id)_fullDescription
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [(ARSession *)self description];
  v5 = [v3 stringWithFormat:@"%@\n", v4];

  if (dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0))
  {
    v6 = @"Busy";
  }

  else
  {
    dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
    v6 = @"NotBusy";
  }

  [v5 appendFormat:@"nextFrameContextHandler: %@\n", v6];
  if (dispatch_semaphore_wait(self->_lastProcessedFrameSemaphore, 0))
  {
    v7 = @"Busy";
  }

  else
  {
    dispatch_semaphore_signal(self->_lastProcessedFrameSemaphore);
    v7 = @"NotBusy";
  }

  [v5 appendFormat:@"lastProcessedFrame: %@\n", v7];
  if (self->_relocalizationRequested)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 appendFormat:@"RelocalizationRequested: %@\n", v8];
  [v5 appendFormat:@"RelocalizationTimeoutDate: %@\n", self->_relocalizationTimeoutDate];
  technique = [(ARSession *)self technique];
  _fullDescription = [technique _fullDescription];
  [v5 appendFormat:@"Technique:\n%@\n", _fullDescription];

  secondaryTechnique = [(ARSession *)self secondaryTechnique];
  _fullDescription2 = [secondaryTechnique _fullDescription];
  [v5 appendFormat:@"Secondary Technique: \n%@\n", _fullDescription2];

  [v5 appendFormat:@"Sensors:\n"];
  if ([(NSArray *)self->_availableSensors count])
  {
    v13 = 0;
    do
    {
      v14 = v13 + 1;
      v15 = [(NSArray *)self->_availableSensors objectAtIndexedSubscript:?];
      v16 = [v15 description];
      v17 = [v16 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t\t"];
      [v5 appendFormat:@"\t%lu: %@\n", v14, v17];

      v18 = [(NSArray *)self->_availableSensors count];
      v13 = v14;
    }

    while (v14 < v18);
  }

  os_unfair_lock_lock_with_options();
  [v5 appendFormat:@"Alive Pixel Buffers: %ld\n", -[NSPointerArray count](self->_weakPixelBuffers, "count")];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = self->_weakPixelBuffers;
  v20 = [(NSPointerArray *)v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v27;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v27 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = CFCopyDescription(*(*(&v26 + 1) + 8 * i));
        [v5 appendFormat:@"\t| - %@\n", v24];
      }

      v21 = [(NSPointerArray *)v19 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v21);
  }

  os_unfair_lock_unlock(&self->_weakPixelBuffersLock);

  return v5;
}

+ (id)_fullDescription
{
  v2 = +[ARSession _runningSessions];
  if ([v2 count] < 2)
  {
    firstObject = [v2 firstObject];
    _fullDescription = [firstObject _fullDescription];
  }

  else
  {
    _fullDescription = [v2 description];
  }

  return _fullDescription;
}

- (NSArray)raycast:(ARRaycastQuery *)query
{
  v4 = query;
  worldTrackingTechnique = self->_worldTrackingTechnique;
  if (worldTrackingTechnique)
  {
    if (self->_tracer)
    {
      [(ARQATracer *)self->_tracer traceRaycastQuery:v4];
      worldTrackingTechnique = self->_worldTrackingTechnique;
    }

    v6 = [(ARWorldTrackingTechnique *)worldTrackingTechnique raycast:v4];
    v7 = [(ARSession *)self annotateAnchorToRaycastResults:v6];

    tracer = self->_tracer;
    if (tracer)
    {
      [(ARQATracer *)tracer traceRaycastResults:v7];
    }

    [(ARSessionMetrics *)self->_metrics recordRaycast:v4 tracked:0];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (ARTrackedRaycast)trackedRaycast:(ARRaycastQuery *)query updateHandler:(void *)updateHandler
{
  metrics = self->_metrics;
  v7 = updateHandler;
  v8 = query;
  [(ARSessionMetrics *)metrics recordRaycast:v8 tracked:1];
  v9 = [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique trackedRaycast:v8 updateHandler:v7];

  return v9;
}

- (id)annotateAnchorToRaycastResults:(id)results
{
  v43 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  array = [MEMORY[0x1E695DF70] array];
  currentFrame = [(ARSession *)self currentFrame];
  if (currentFrame)
  {
    v28 = array;
    v27 = currentFrame;
    anchors = [currentFrame anchors];
    v8 = ARDictionaryFromAnchors(anchors);

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = resultsCopy;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          anchorIdentifier = [v14 anchorIdentifier];

          if (anchorIdentifier)
          {
            anchorIdentifier2 = [v14 anchorIdentifier];
            v17 = [v8 objectForKeyedSubscript:anchorIdentifier2];

            v18 = v17 != 0;
            if (v17)
            {
              [v14 setAnchor:v17];
              objc_msgSend_transform(v17);
              v46 = __invert_f4(v45);
              v31 = v46.columns[1];
              v32 = v46.columns[0];
              v29 = v46.columns[3];
              v30 = v46.columns[2];
              [v14 worldTransform];
              v19 = 0;
              v37[0] = v20;
              v37[1] = v21;
              v37[2] = v22;
              v37[3] = v23;
              v38 = 0u;
              v39 = 0u;
              v40 = 0u;
              v41 = 0u;
              do
              {
                *(&v38 + v19 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, COERCE_FLOAT(v37[v19])), v31, *&v37[v19], 1), v30, v37[v19], 2), v29, v37[v19], 3);
                ++v19;
              }

              while (v19 != 4);
              [v14 setLocalTransform:{*&v38, *&v39, *&v40, *&v41}];
            }
          }

          else
          {
            v18 = 0;
          }

          target = [v14 target];
          if (v18 || target == 2)
          {
            [v28 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v42 count:16];
      }

      while (v11);
    }

    array = v28;
    v25 = v28;

    currentFrame = v27;
  }

  else
  {
    v25 = MEMORY[0x1E695E0F0];
  }

  return v25;
}

- (void)updateWithCollaborationData:(ARCollaborationData *)collaborationData
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = collaborationData;
  vioSessionID = [(ARCollaborationData *)v4 vioSessionID];
  vioSessionIdentifier = [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique vioSessionIdentifier];
  if (vioSessionID == vioSessionIdentifier)
  {
    if (ARShouldUseLogTypeError_onceToken_21 != -1)
    {
      [ARSession updateWithCollaborationData:];
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_21;
    v8 = _ARLogSession_0(vioSessionIdentifier);
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        identifier = [(ARSession *)self identifier];
        uUIDString = [identifier UUIDString];
        v23 = 138543874;
        v24 = v11;
        v25 = 2048;
        selfCopy3 = self;
        v27 = 2112;
        v28 = uUIDString;
        v14 = "%{public}@ <%p>: Ignoring collaboration data originating from own session with ID: %@";
        v15 = v9;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v15, v16, v14, &v23, 0x20u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v11 = NSStringFromClass(v22);
      identifier = [(ARSession *)self identifier];
      uUIDString = [identifier UUIDString];
      v23 = 138543874;
      v24 = v11;
      v25 = 2048;
      selfCopy3 = self;
      v27 = 2112;
      v28 = uUIDString;
      v14 = "Error: %{public}@ <%p>: Ignoring collaboration data originating from own session with ID: %@";
      v15 = v9;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v17 = _ARLogSession_0(vioSessionIdentifier);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = NSStringFromARCollaborationData(v4);
    v23 = 138543874;
    v24 = v19;
    v25 = 2048;
    selfCopy3 = self;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: updateWithCollaborationData: %@", &v23, 0x20u);
  }

  objc_msgSend_timestamp(v4);
  [(ARCollaborationData *)v4 vioDataType];
  vioData = [(ARCollaborationData *)v4 vioData];
  [vioData length];
  [(ARCollaborationData *)v4 vioSessionID];
  kdebug_trace();

  [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique pushCollaborationData:v4];
  objc_msgSend_timestamp(v4);
  [(ARCollaborationData *)v4 vioSessionID];
  kdebug_trace();
  [(ARRecordingTechniquePublic *)self->_recordingTechnique recordCollaborationData:v4 localSession:0];
LABEL_14:
}

- (id)_getGeoAnchorAltitude:(id)altitude
{
  altitudeCopy = altitude;
  os_unfair_lock_lock(&self->_geoAnchorToAltitudeLock);
  geoAnchorToAltitude = [(ARSession *)self geoAnchorToAltitude];
  v6 = [geoAnchorToAltitude objectForKey:altitudeCopy];

  os_unfair_lock_unlock(&self->_geoAnchorToAltitudeLock);

  return v6;
}

- (void)_setGeoAnchorAltitude:(id)altitude pair:(id)pair
{
  pairCopy = pair;
  altitudeCopy = altitude;
  os_unfair_lock_lock(&self->_geoAnchorToAltitudeLock);
  geoAnchorToAltitude = [(ARSession *)self geoAnchorToAltitude];
  [geoAnchorToAltitude setObject:pairCopy forKey:altitudeCopy];

  os_unfair_lock_unlock(&self->_geoAnchorToAltitudeLock);
}

- (void)_removeGeoAnchorAltitude:(id)altitude
{
  altitudeCopy = altitude;
  os_unfair_lock_lock(&self->_geoAnchorToAltitudeLock);
  geoAnchorToAltitude = [(ARSession *)self geoAnchorToAltitude];
  [geoAnchorToAltitude removeObjectForKey:altitudeCopy];

  os_unfair_lock_unlock(&self->_geoAnchorToAltitudeLock);
}

- (void)getGeoLocationForPoint:(simd_float3)position completionHandler:(void *)completionHandler
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = completionHandler;
  geoTrackingTechnique = [(ARSession *)self geoTrackingTechnique];
  v7 = geoTrackingTechnique;
  if (geoTrackingTechnique)
  {
    v37 = 0;
    objc_msgSend_getLocationFromWorldPosition_error_(geoTrackingTechnique, *position.i64);
    v8 = v37;
    if (v8)
    {
      delegateQueue = self->_delegateQueue;
      v10 = delegateQueue;
      if (!delegateQueue)
      {
        v10 = MEMORY[0x1E69E96A0];
        v11 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke_2;
      block[3] = &unk_1E817CCF0;
      v34 = v5;
      v33 = v8;
      dispatch_async(v10, block);
      if (!delegateQueue)
      {
      }

      v12 = v34;
    }

    else
    {
      v25 = v36;
      v26 = v35;
      v19 = _ARLogSession_0(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138545155;
        v41 = v21;
        v42 = 2048;
        selfCopy2 = self;
        v44 = 2049;
        v45 = position.f32[0];
        v46 = 2049;
        v47 = position.f32[1];
        v48 = 2049;
        v49 = position.f32[2];
        v50 = 2049;
        v51 = v26;
        v52 = 2049;
        v53 = *(&v26 + 1);
        v54 = 2049;
        v55 = v25;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Converted to geo location point: %{private}f, %{private}f, %{private}f -> %{private}f, %{private}f, %{private}f", buf, 0x52u);
      }

      v22 = self->_delegateQueue;
      v23 = v22;
      if (!v22)
      {
        v23 = MEMORY[0x1E69E96A0];
        v24 = MEMORY[0x1E69E96A0];
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke_237;
      v28[3] = &unk_1E817CD18;
      v31 = v5;
      v29 = v26;
      v30 = v25;
      dispatch_async(v23, v28);
      if (!v22)
      {
      }

      v12 = v31;
    }
  }

  else
  {
    v13 = _ARLogSession_0(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543618;
      v41 = v15;
      v42 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ARGeoTrackingConfiguration is not running. Cannot call getGeoLocationForPoint.", buf, 0x16u);
    }

    v16 = self->_delegateQueue;
    v17 = v16;
    if (!v16)
    {
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke;
    v38[3] = &unk_1E817CC30;
    v39 = v5;
    dispatch_async(v17, v38);
    if (!v16)
    {
    }

    v8 = v39;
  }
}

void __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E696A588];
  v3 = ARKitCoreBundle(a1);
  v4 = [v3 localizedStringForKey:@"Unable to call method as ARGeoTrackingConfiguration is not running." value:&stru_1F4208A80 table:@"Localizable"];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = ARErrorWithCodeAndUserInfo(501, v5);

  (*(*(a1 + 32) + 16))(*MEMORY[0x1E6985CC0], *(MEMORY[0x1E6985CC0] + 8), 0.0);
}

uint64_t __54__ARSession_getGeoLocationForPoint_completionHandler___block_invoke_237(uint64_t a1)
{
  v2 = *(a1 + 64);
  v5 = CLLocationCoordinate2DMake(*(a1 + 32), *(a1 + 40));
  v4.n128_f64[0] = v5.longitude;
  v3.n128_f64[0] = v5.latitude;
  v6 = *(v2 + 16);
  v7.n128_u64[0] = *(a1 + 48);

  return v6(v2, 0, v3, v4, v7);
}

- (BOOL)querySceneReconstructionOccupancyWithPoints:(id)points callback:(id)callback
{
  callbackCopy = callback;
  v7 = callbackCopy;
  worldTrackingTechnique = self->_worldTrackingTechnique;
  if (worldTrackingTechnique)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __66__ARSession_querySceneReconstructionOccupancyWithPoints_callback___block_invoke;
    v11[3] = &unk_1E817CD40;
    v12 = callbackCopy;
    v9 = [(ARWorldTrackingTechnique *)worldTrackingTechnique querySceneReconstructionOccupancyWithPoints:points callback:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __66__ARSession_querySceneReconstructionOccupancyWithPoints_callback___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    Width = CV3DReconOccupancyQueryResultGetWidth();
    a2 = [MEMORY[0x1E695DEF0] dataWithBytes:CV3DReconOccupancyQueryResultGetRawPtr() length:Width];
  }

  v4 = a2;
  (*(*(a1 + 32) + 16))();
  CV3DReconOccupancyQueryResultRelease();
}

- (void)_addObserver:(id)observer
{
  observersSemaphore = self->_observersSemaphore;
  observerCopy = observer;
  dispatch_semaphore_wait(observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  v6 = self->_observersSemaphore;

  dispatch_semaphore_signal(v6);
}

- (void)_removeObserver:(id)observer
{
  observersSemaphore = self->_observersSemaphore;
  observerCopy = observer;
  dispatch_semaphore_wait(observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  v6 = self->_observersSemaphore;

  dispatch_semaphore_signal(v6);
}

- (id)_getObservers
{
  dispatch_semaphore_wait(self->_observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  dispatch_semaphore_signal(self->_observersSemaphore);

  return allObjects;
}

- (void)_setPrimaryTechnique:(id)technique secondaryTechnique:(id)secondaryTechnique stillImageRootTechnique:(id)rootTechnique
{
  v103 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  secondaryTechniqueCopy = secondaryTechnique;
  rootTechniqueCopy = rootTechnique;
  array = [MEMORY[0x1E695DF70] array];
  technique = [(ARSession *)self technique];
  secondaryTechnique = [(ARSession *)self secondaryTechnique];
  stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];
  useFrameUpdateTimer = [(ARSession *)self useFrameUpdateTimer];
  v14 = useFrameUpdateTimer;
  v84 = array;
  v85 = technique;
  if (technique != techniqueCopy)
  {
    v15 = _ARLogSession_0(useFrameUpdateTimer);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138544130;
      v96 = v17;
      v97 = 2048;
      selfCopy9 = self;
      v99 = 2048;
      v100 = v85;
      v101 = 2048;
      v102 = techniqueCopy;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing session primary technique %p with %p", buf, 0x2Au);
    }

    v18 = [(ARRenderSyncScheduler *)v85 setDelegate:0];
    resultRequestScheduler = self->_resultRequestScheduler;
    if (!((resultRequestScheduler != 0) | v14 & 1))
    {
      v20 = [[ARRenderSyncScheduler alloc] initWithExpectedFramesPerSecond:60];
      v21 = self->_resultRequestScheduler;
      self->_resultRequestScheduler = v20;

      v23 = _ARLogSession_0(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = self->_resultRequestScheduler;
        *buf = 138543874;
        v96 = v25;
        v97 = 2048;
        selfCopy9 = self;
        v99 = 2048;
        v100 = v26;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating primary renderSyncScheduler <%p>", buf, 0x20u);
      }

      resultRequestScheduler = self->_resultRequestScheduler;
    }

    if (resultRequestScheduler)
    {
      v27 = _ARLogSession_0([(ARSession *)self setupResultRequestSyncScheduler:resultRequestScheduler forTechnique:techniqueCopy]);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        [(ARRenderSyncScheduler *)self->_resultRequestScheduler inputJitterBufferInterval];
        v31 = v30;
        [(ARRenderSyncScheduler *)self->_resultRequestScheduler vsyncOffset];
        *buf = 138544130;
        v96 = v29;
        v97 = 2048;
        selfCopy9 = self;
        v99 = 2048;
        v100 = v31;
        v101 = 2048;
        v102 = v32;
        _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Primary render sync scheduler jitter buffer interval: %f, vsync offset: %f", buf, 0x2Au);
      }
    }

    v33 = _ARLogSession_0(v18);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      [(ARRenderSyncScheduler *)techniqueCopy bonusLatency];
      *buf = 138543874;
      v96 = v35;
      v97 = 2048;
      selfCopy9 = self;
      v99 = 2048;
      v100 = v36;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Primary technique bonus latency %f", buf, 0x20u);
    }

    array = v84;
  }

  v37 = [array addObject:techniqueCopy];
  if (secondaryTechnique != secondaryTechniqueCopy)
  {
    v38 = _ARLogSession_0(v37);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138544130;
      v96 = v40;
      v97 = 2048;
      selfCopy9 = self;
      v99 = 2048;
      v100 = secondaryTechnique;
      v101 = 2048;
      v102 = secondaryTechniqueCopy;
      _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing session secondary technique %p with %p", buf, 0x2Au);
    }

    v41 = [(ARRenderSyncScheduler *)secondaryTechnique setDelegate:0];
    secondaryResultRequestScheduler = self->_secondaryResultRequestScheduler;
    if (!((secondaryResultRequestScheduler != 0) | v14 & 1))
    {
      v43 = [[ARRenderSyncScheduler alloc] initWithExpectedFramesPerSecond:60];
      v44 = self->_secondaryResultRequestScheduler;
      self->_secondaryResultRequestScheduler = v43;

      v46 = _ARLogSession_0(v45);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = self->_secondaryResultRequestScheduler;
        *buf = 138543874;
        v96 = v48;
        v97 = 2048;
        selfCopy9 = self;
        v99 = 2048;
        v100 = v49;
        _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating secondary renderSyncScheduler <%p>", buf, 0x20u);
      }

      secondaryResultRequestScheduler = self->_secondaryResultRequestScheduler;
    }

    if (secondaryResultRequestScheduler)
    {
      v50 = _ARLogSession_0([(ARSession *)self setupResultRequestSyncScheduler:secondaryResultRequestScheduler forTechnique:secondaryTechniqueCopy]);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        [(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler inputJitterBufferInterval];
        v54 = v53;
        [(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler vsyncOffset];
        *buf = 138544130;
        v96 = v52;
        v97 = 2048;
        selfCopy9 = self;
        v99 = 2048;
        v100 = v54;
        v101 = 2048;
        v102 = v55;
        _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Secondary render sync scheduler jitter buffer interval: %f, vsync offset: %f", buf, 0x2Au);
      }
    }

    v56 = _ARLogSession_0(v41);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      [(ARRenderSyncScheduler *)secondaryTechniqueCopy bonusLatency];
      *buf = 138543874;
      v96 = v58;
      v97 = 2048;
      selfCopy9 = self;
      v99 = 2048;
      v100 = v59;
      _os_log_impl(&dword_1C241C000, v56, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Secondary technique bonus latency %f", buf, 0x20u);
    }

    array = v84;
  }

  if (secondaryTechniqueCopy)
  {
    v37 = [array addObject:secondaryTechniqueCopy];
  }

  v60 = stillImageRootTechnique;
  if (stillImageRootTechnique != rootTechniqueCopy)
  {
    v61 = _ARLogSession_0(v37);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_INFO))
    {
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      *buf = 138544130;
      v96 = v63;
      v97 = 2048;
      selfCopy9 = self;
      v99 = 2048;
      v100 = stillImageRootTechnique;
      v101 = 2048;
      v102 = rootTechniqueCopy;
      _os_log_impl(&dword_1C241C000, v61, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing highRes session technique %p with %p", buf, 0x2Au);
    }

    [(ARRenderSyncScheduler *)stillImageRootTechnique setDelegate:0];
  }

  if (rootTechniqueCopy)
  {
    [array addObject:rootTechniqueCopy];
  }

  [(ARSession *)self setupSessionForTechniques:array];
  [(ARSession *)self setTechnique:techniqueCopy];
  [(ARSession *)self setSecondaryTechnique:secondaryTechniqueCopy];
  [(ARSession *)self setStillImageRootTechnique:rootTechniqueCopy];
  [(ARSession *)self _logTechniqueGraphForDebugging];
  dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(ARFrameContextHandler *)self->_frameContextHandler clearInFlightContextsReapplyingChanges];
  v64 = dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
  v66 = ARDeviceSupportsJasper(v64, v65);
  if (v66)
  {
    adPipelineParameters = [(ARSession *)self adPipelineParameters];
    aggregationParameters = [adPipelineParameters aggregationParameters];

    if (aggregationParameters)
    {
      [(ARDepthPointCloudCoalescer *)self->_depthPointCloudCoalescer setAggregationParameters:aggregationParameters];
    }
  }

  if (ARLinkedOnOrAfterAzulC(v66, v67))
  {
    v81 = rootTechniqueCopy;
    v82 = secondaryTechniqueCopy;
    v87 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    currentFrame = [(ARSession *)self currentFrame];
    anchors = [currentFrame anchors];

    obj = anchors;
    v72 = [anchors countByEnumeratingWithState:&v90 objects:v94 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v91;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v91 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v76 = *(*(&v90 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v89[0] = MEMORY[0x1E69E9820];
            v89[1] = 3221225472;
            v89[2] = __77__ARSession__setPrimaryTechnique_secondaryTechnique_stillImageRootTechnique___block_invoke;
            v89[3] = &unk_1E817CD68;
            v89[4] = v76;
            v77 = [MEMORY[0x1E696AE18] predicateWithBlock:v89];
            technique2 = [(ARSession *)self technique];
            v79 = [technique2 techniqueMatchingPredicate:v77];

            if (!v79)
            {
              secondaryTechnique2 = [(ARSession *)self secondaryTechnique];
              v79 = [secondaryTechnique2 techniqueMatchingPredicate:v77];

              if (!v79)
              {
                [v87 addObject:v76];
              }
            }
          }
        }

        v73 = [obj countByEnumeratingWithState:&v90 objects:v94 count:16];
      }

      while (v73);
    }

    if ([v87 count])
    {
      dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      [(ARFrameContextHandler *)self->_frameContextHandler stopTrackingAnchors:v87];
      dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
    }

    secondaryTechniqueCopy = v82;
    rootTechniqueCopy = v81;
    v60 = stillImageRootTechnique;
    array = v84;
  }
}

uint64_t __77__ARSession__setPrimaryTechnique_secondaryTechnique_stillImageRootTechnique___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = objc_opt_class();

  return [v2 producesResultDataForAnchorOfClass:v3];
}

- (void)setupSessionForTechniques:(id)techniques
{
  v44 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [techniquesCopy countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(techniquesCopy);
        }

        v9 = *(*(&v38 + 1) + 8 * i);
        [v9 setDelegate:self];
        [v9 setPowerUsage:{-[ARSession powerUsage](self, "powerUsage")}];
      }

      v6 = [techniquesCopy countByEnumeratingWithState:&v38 objects:v43 count:16];
    }

    while (v6);
  }

  v10 = 0x1E817A000uLL;
  v11 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniquesCopy];
  v12 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniquesCopy];
  v13 = v12;
  if (v11)
  {
    [v12 setMotionManager:self->_motionManger];
  }

  p_worldTrackingTechnique = &self->_worldTrackingTechnique;
  worldTrackingTechnique = self->_worldTrackingTechnique;
  if (worldTrackingTechnique != v11)
  {
    [(ARWorldTrackingTechnique *)worldTrackingTechnique invalidateAllRaycasts];
    [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique removeObserver:self];
  }

  objc_storeStrong(&self->_worldTrackingTechnique, v11);
  v16 = *p_worldTrackingTechnique;
  if (*p_worldTrackingTechnique)
  {
    [(ARWorldTrackingTechnique *)v16 setTrackedRaycastPostProcessor:self->_trackedRaycastPostProcessor];
    mutableOptions = [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique mutableOptions];
    slamConfiguration = [mutableOptions slamConfiguration];
    self->_vioFusionEnabled = [slamConfiguration isEqualToString:@"CoreLocationIntegration"];

    v16 = self->_worldTrackingTechnique;
  }

  [(ARWorldTrackingTechnique *)v16 addObserver:self];
  v19 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniquesCopy];
  [(ARSession *)self setGeoTrackingTechnique:v19];

  v20 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniquesCopy];
  self->_techniquesWantPredictedPoseForWideCam = v20 != 0;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = techniquesCopy;
  v22 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v22)
  {
    v23 = v22;
    v33 = v13;
    v24 = *v35;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(v21);
        }

        resultDataClasses = [*(*(&v34 + 1) + 8 * j) resultDataClasses];
        v27 = [resultDataClasses containsObject:objc_opt_class()];

        if (v27)
        {
          v28 = 1;
          goto LABEL_24;
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }

    v28 = 0;
LABEL_24:
    v10 = 0x1E817A000;
    v13 = v33;
  }

  else
  {
    v28 = 0;
  }

  self->_configuredForWorldTracking = v28;
  v29 = [*(v10 + 3096) techniqueOfClass:objc_opt_class() inArray:v21];
  environmentTexturingTechnique = self->_environmentTexturingTechnique;
  self->_environmentTexturingTechnique = v29;

  v31 = [*(v10 + 3096) techniqueOfClass:objc_opt_class() inArray:v21];
  recordingTechnique = self->_recordingTechnique;
  self->_recordingTechnique = v31;
}

- (void)setupResultRequestSyncScheduler:(id)scheduler forTechnique:(id)technique
{
  techniqueCopy = technique;
  schedulerCopy = scheduler;
  requiredSensorDataTypes = [techniqueCopy requiredSensorDataTypes];
  v8 = [techniqueCopy techniqueOfClass:objc_opt_class()];
  v9 = v8;
  if (v8)
  {
    mutableOptions = [v8 mutableOptions];
    imageSensorSettings = [mutableOptions imageSensorSettings];
    visionDataOutputEnabled = [imageSensorSettings visionDataOutputEnabled];

    mutableOptions2 = [v9 mutableOptions];
    imageSensorSettingsForUltraWide = [mutableOptions2 imageSensorSettingsForUltraWide];
    visionDataOutputEnabled2 = [imageSensorSettingsForUltraWide visionDataOutputEnabled];

    v16 = (visionDataOutputEnabled | visionDataOutputEnabled2) ^ 1;
    v17 = visionDataOutputEnabled2 ^ 1;
    if ((requiredSensorDataTypes & 0x10) == 0)
    {
LABEL_3:
      v18 = v16 | v17;
      v19 = 0.005;
      if ((v16 & 1) == 0)
      {
        v19 = 0.015;
      }

      if ((v18 & 1) == 0)
      {
        isUserFaceTracking = [(ARSession *)self isUserFaceTracking];
        v19 = 0.035;
        if (!isUserFaceTracking)
        {
          v19 = 0.015;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    v17 = 1;
    v16 = 1;
    if ((requiredSensorDataTypes & 0x10) == 0)
    {
      goto LABEL_3;
    }
  }

  v21 = ARHasH10();
  v19 = 0.018;
  if (v21)
  {
    v19 = 0.01;
  }

LABEL_12:
  [schedulerCopy setInputJitterBufferInterval:v19];
  [schedulerCopy inputJitterBufferInterval];
  v23 = v22 * 0.75;
  [techniqueCopy setBonusLatency:v22 * 0.75];
  [techniqueCopy requiredTimeInterval];
  v25 = v24 - v23;
  if (v25 >= 0.0)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0.0;
  }

  [schedulerCopy setVsyncOffset:-(ARDispatchAfterLeewayForTimeInterval(v26) + v26 + 0.003)];
}

- (void)_setInternalConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [(ARSession *)self setConfigurationInternal:configurationCopy];
  v5 = [configurationCopy copy];

  [(ARSession *)self setConfigurationForPublicGetter:v5];
}

- (void)_updateSessionWithConfiguration:(id)configuration options:(unint64_t)options
{
  v142 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  techniques = [(__CFString *)configurationCopy techniques];
  secondaryTechniques = [(__CFString *)configurationCopy secondaryTechniques];
  customSensors = [(__CFString *)configurationCopy customSensors];

  if (customSensors)
  {
    replaySensor = [(__CFString *)configurationCopy replaySensor];
    if (replaySensor)
    {
      v11 = replaySensor;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v13 = [ARReplayConfiguration alloc];
        replaySensor2 = [(__CFString *)configurationCopy replaySensor];
        v15 = [(ARReplayConfiguration *)v13 initWithBaseConfiguration:configurationCopy replaySensor:replaySensor2];

        techniques2 = [(ARCustomTechniquesConfiguration *)v15 techniques];

        secondaryTechniques2 = [(ARReplayConfiguration *)v15 secondaryTechniques];

        secondaryTechniques = secondaryTechniques2;
        techniques = techniques2;
      }
    }
  }

  if (techniques)
  {
    if (self->_forceEnvironmentTexturingToManualMode)
    {
      v18 = objc_opt_new();
      [v18 addObjectsFromArray:techniques];
      [v18 addObjectsFromArray:secondaryTechniques];
      v19 = [ARTechnique techniqueOfClass:objc_opt_class() inArray:techniques];
      [ARSession forceEnvironmentTexturingTechniqueToManualMode:v19];
    }

    if ([(__CFString *)configurationCopy isKindOfConfiguration:objc_opt_class()])
    {
      replaySensor3 = [(__CFString *)configurationCopy replaySensor];

      if (replaySensor3)
      {
        v21 = objc_opt_new();
        v22 = _ARLogSession_0([(__CFString *)v21 configureForReplay]);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138543874;
          v137 = v24;
          v138 = 2048;
          selfCopy13 = self;
          v140 = 2048;
          v141 = v21;
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating location sensor for replay: %p", buf, 0x20u);
        }

        replaySensor4 = [(__CFString *)configurationCopy replaySensor];
        v135[0] = replaySensor4;
        v135[1] = v21;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v135 count:2];

        [(__CFString *)configurationCopy setCustomSensors:v26];
      }
    }

    [(ARSession *)self _updateSensorsWithConfiguration:configurationCopy];
    v131 = 0u;
    v132 = 0u;
    v130 = 0u;
    v129 = 0u;
    v119 = techniques;
    v27 = techniques;
    v28 = [v27 countByEnumeratingWithState:&v129 objects:v134 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v130;
      v31 = 1;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v130 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v31 |= [*(*(&v129 + 1) + 8 * i) requiredSensorDataTypes];
        }

        v29 = [v27 countByEnumeratingWithState:&v129 objects:v134 count:16];
      }

      while (v29);
    }

    else
    {
      v31 = 1;
    }

    v127 = 0u;
    v128 = 0u;
    v125 = 0u;
    v126 = 0u;
    v120 = secondaryTechniques;
    v37 = secondaryTechniques;
    v38 = [v37 countByEnumeratingWithState:&v125 objects:v133 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v126;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v126 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v31 |= [*(*(&v125 + 1) + 8 * j) requiredSensorDataTypes];
        }

        v39 = [v37 countByEnumeratingWithState:&v125 objects:v133 count:16];
      }

      while (v39);
    }

    if ([(__CFString *)configurationCopy isKindOfConfiguration:objc_opt_class()])
    {
      replaySensor5 = [(__CFString *)configurationCopy replaySensor];

      if (replaySensor5)
      {
        v44 = _ARLogSession_0(v43);
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *buf = 138543618;
          v137 = v46;
          v138 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Disabling location data type because of replay.", buf, 0x16u);
        }

        v31 &= ~0x40uLL;
      }
    }

    v47 = [(__CFString *)configurationCopy getAsKindOfConfiguration:objc_opt_class()];
    v36 = v47;
    if (v47)
    {
      disableLocationSensor = [v47 disableLocationSensor];
      if (disableLocationSensor)
      {
        v49 = _ARLogSession_0(disableLocationSensor);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          *buf = 138543618;
          v137 = v51;
          v138 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v49, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Disabling location sensor data type via SPI.", buf, 0x16u);
        }

        v31 &= ~0x40uLL;
      }
    }

    runningSensors = [(ARSession *)self runningSensors];
    v53 = ([(ARSession *)self runningSensors]^ v31) & runningSensors;
    runningSensors2 = [(ARSession *)self runningSensors];
    [(ARSession *)self _stopSensorsWithDataTypes:v53 keepingDataTypes:v31];
    [(ARSession *)self _updateSessionStateWithConfiguration:configurationCopy options:options];
    [(ARSession *)self _setInternalConfiguration:configurationCopy];
    [(ARSession *)self _sessionWillRunWithConfiguration:configurationCopy];
    if ([(ARSession *)self state]== 2 && [(ARSession *)self pausedSensors])
    {
      techniques = v119;
      secondaryTechniques = v120;
    }

    else
    {
      v116 = runningSensors2;
      v117 = v53;
      v118 = v36;
      technique = [(ARSession *)self technique];

      v57 = _ARLogSession_0(v56);
      v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG);
      if ((options & 1) != 0 || !technique)
      {
        if (v58)
        {
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          *buf = 138543618;
          v137 = v66;
          v138 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using all new techniques.", buf, 0x16u);
        }

        v64 = [[ARParentTechnique alloc] initWithTechniques:v27 delegate:self];
      }

      else
      {
        if (v58)
        {
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          *buf = 138543618;
          v137 = v60;
          v138 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Re-using existing techniques if possible.", buf, 0x16u);
        }

        v61 = [[ARParentTechnique alloc] initWithTechniques:v27 delegate:self];
        technique2 = [(ARSession *)self technique];
        techniques3 = [technique2 techniques];
        v64 = v61;
        [(ARParentTechnique *)v61 reuseTechniques:techniques3];
      }

      if ([v37 count])
      {
        secondaryTechnique = [(ARSession *)self secondaryTechnique];

        v69 = _ARLogSession_0(v68);
        v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
        if ((options & 1) != 0 || !secondaryTechnique)
        {
          if (v70)
          {
            v76 = objc_opt_class();
            v77 = NSStringFromClass(v76);
            *buf = 138543618;
            v137 = v77;
            v138 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v69, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using all new secondary techniques.", buf, 0x16u);
          }

          v73 = [[ARParentTechnique alloc] initWithTechniques:v37 delegate:self];
        }

        else
        {
          if (v70)
          {
            v71 = objc_opt_class();
            v72 = NSStringFromClass(v71);
            *buf = 138543618;
            v137 = v72;
            v138 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v69, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Re-using existing techniques if possible.", buf, 0x16u);
          }

          v73 = [[ARParentTechnique alloc] initWithTechniques:v37 delegate:self];
          secondaryTechnique2 = [(ARSession *)self secondaryTechnique];
          techniques4 = [secondaryTechnique2 techniques];
          [(ARParentTechnique *)v73 reuseTechniques:techniques4];
        }
      }

      else
      {
        v73 = 0;
      }

      techniquesForStillImageGraph = [(__CFString *)configurationCopy techniquesForStillImageGraph];
      v115 = techniquesForStillImageGraph;
      if ([techniquesForStillImageGraph count])
      {
        stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];

        v81 = _ARLogSession_0(v80);
        v82 = os_log_type_enabled(v81, OS_LOG_TYPE_DEBUG);
        if ((options & 1) != 0 || !stillImageRootTechnique)
        {
          if (v82)
          {
            v88 = objc_opt_class();
            v89 = NSStringFromClass(v88);
            *buf = 138543618;
            v137 = v89;
            v138 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using all new high-res techniques.", buf, 0x16u);
          }

          v85 = [[ARParentTechnique alloc] initWithTechniques:techniquesForStillImageGraph delegate:self];
        }

        else
        {
          if (v82)
          {
            v83 = objc_opt_class();
            v84 = NSStringFromClass(v83);
            *buf = 138543618;
            v137 = v84;
            v138 = 2048;
            selfCopy13 = self;
            _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Re-using existing still image techniques if possible.", buf, 0x16u);
          }

          v85 = [[ARParentTechnique alloc] initWithTechniques:techniquesForStillImageGraph delegate:self];
          stillImageRootTechnique2 = [(ARSession *)self stillImageRootTechnique];
          techniques5 = [stillImageRootTechnique2 techniques];
          [(ARParentTechnique *)v85 reuseTechniques:techniques5];
        }
      }

      else
      {
        v85 = 0;
      }

      [(ARSession *)self _setPrimaryTechnique:v64 secondaryTechnique:v73 stillImageRootTechnique:v85, v85];
      configurationInternal = [(ARSession *)self configurationInternal];
      parentImageSensorSettings = [configurationInternal parentImageSensorSettings];
      settings = [parentImageSensorSettings settings];
      firstObject = [settings firstObject];
      videoFormat = [firstObject videoFormat];
      primaryVideoFormat = self->_primaryVideoFormat;
      self->_primaryVideoFormat = videoFormat;

      replaySensor6 = [(__CFString *)configurationCopy replaySensor];
      replayMode = [replaySensor6 replayMode];
      prepareTechniquesQueue = self->_prepareTechniquesQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__ARSession__updateSessionWithConfiguration_options___block_invoke;
      block[3] = &unk_1E817CD90;
      v99 = v64;
      v122 = v99;
      v124 = replayMode != 0;
      v100 = v73;
      v123 = v100;
      dispatch_async(prepareTechniquesQueue, block);
      if (replaySensor6)
      {
        dispatch_sync(self->_prepareTechniquesQueue, &__block_literal_global_253);
      }

      [(ARRenderSyncScheduler *)self->_resultRequestScheduler setExcessiveCallbackOptions:replaySensor6 != 0];
      [(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler setExcessiveCallbackOptions:replaySensor6 != 0];
      if (([(__CFString *)configurationCopy disableRenderSyncScheduling]& 1) != 0 || [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.disableRenderSyncScheduling"]|| replayMode || [(ARSession *)self useFrameUpdateTimer])
      {
        [(ARRenderSyncScheduler *)self->_resultRequestScheduler setSchedulingActive:0];
        v101 = _ARLogSession_0([(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler setSchedulingActive:0]);
        if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
        {
          v102 = objc_opt_class();
          v103 = NSStringFromClass(v102);
          *buf = 138543618;
          v137 = v103;
          v138 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v101, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Disabling scheduling for ResultRequestSchedulers", buf, 0x16u);
        }

        useFrameUpdateTimer = [(ARSession *)self useFrameUpdateTimer];
        if (replayMode)
        {
          v105 = 0;
        }

        else
        {
          v105 = useFrameUpdateTimer;
        }
      }

      else
      {
        [(ARRenderSyncScheduler *)self->_resultRequestScheduler setSchedulingActive:1];
        v111 = _ARLogSession_0([(ARRenderSyncScheduler *)self->_secondaryResultRequestScheduler setSchedulingActive:1]);
        if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
        {
          v112 = objc_opt_class();
          v113 = NSStringFromClass(v112);
          *buf = 138543618;
          v137 = v113;
          v138 = 2048;
          selfCopy13 = self;
          _os_log_impl(&dword_1C241C000, v111, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Enabling scheduling for ResultRequestSchedulers", buf, 0x16u);
        }

        v105 = 0;
      }

      v106 = _ARLogSession_0([(ARFrameUpdateTimer *)self->_frameUpdateTimer setActive:v105]);
      if (os_log_type_enabled(v106, OS_LOG_TYPE_INFO))
      {
        v107 = objc_opt_class();
        v108 = NSStringFromClass(v107);
        isActive = [(ARFrameUpdateTimer *)self->_frameUpdateTimer isActive];
        v110 = @"Disabling";
        *buf = 138543874;
        v137 = v108;
        if (isActive)
        {
          v110 = @"Enabling";
        }

        v138 = 2048;
        selfCopy13 = self;
        v140 = 2112;
        v141 = v110;
        _os_log_impl(&dword_1C241C000, v106, OS_LOG_TYPE_INFO, "%{public}@ <%p>: %@ frame update timer", buf, 0x20u);
      }

      [(ARSession *)self _startSensorsWithDataTypes:v31 & ~(v116 ^ v117)];
      [(ARSession *)self _configureSensorsForRecording];
      [(ARSession *)self _saveGraphFileInFileName:0];

      techniques = v119;
      secondaryTechniques = v120;
      v36 = v118;
    }
  }

  else
  {
    v33 = _ARLogSession_0(replaySensor);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138543874;
      v137 = v35;
      v138 = 2048;
      selfCopy13 = self;
      v140 = 2112;
      v141 = configurationCopy;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to run the session, configuration is not supported on this device: %@", buf, 0x20u);
    }

    v36 = ARErrorWithCodeAndUserInfo(100, 0);
    [(ARSession *)self _sessionDidFailWithError:v36];
  }
}

double __53__ARSession__updateSessionWithConfiguration_options___block_invoke(uint64_t a1)
{
  kdebug_trace();
  [*(a1 + 32) prepare:*(a1 + 48)];
  [*(a1 + 40) prepare:*(a1 + 48)];

  kdebug_trace();
  return result;
}

- (void)_updateSessionStateWithConfiguration:(id)configuration options:(unint64_t)options
{
  optionsCopy = options;
  v27 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if ((optionsCopy & 2) != 0)
  {
    dispatch_semaphore_wait(self->_lastProcessedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    anchors = [(ARFrame *)self->_lastProcessedFrame anchors];
    v7 = [anchors countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(anchors);
          }

          [(ARFrameContextHandler *)self->_frameContextHandler removeAnchor:*(*(&v18 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [anchors countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v8);
    }

    dispatch_semaphore_signal(self->_lastProcessedFrameSemaphore);
    v11 = _ARLogSession_0([(ARFrameContextHandler *)self->_frameContextHandler clearAddedAnchors]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v23 = v13;
      v24 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removing existing anchors", buf, 0x16u);
    }

    if ((optionsCopy & 4) == 0)
    {
LABEL_3:
      if ((optionsCopy & 8) == 0)
      {
        goto LABEL_4;
      }

LABEL_17:
      [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique resetSceneReconstruction];
      if ((optionsCopy & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }
  }

  else if ((optionsCopy & 4) == 0)
  {
    goto LABEL_3;
  }

  [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique stopAllRaycasts];
  if ((optionsCopy & 8) != 0)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((optionsCopy & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  v14 = _ARLogSession_0([(ARFrameContextHandler *)self->_frameContextHandler resetSessionTransform]);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    *buf = 138543618;
    v23 = v16;
    v24 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reset session transform", buf, 0x16u);
  }

LABEL_21:
  dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
  dispatch_semaphore_wait(self->_resultDataOfSecondaryFrameContextsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  resultDatasOfSecondaryFrameContexts = self->resultDatasOfSecondaryFrameContexts;
  self->resultDatasOfSecondaryFrameContexts = 0;

  dispatch_semaphore_signal(self->_resultDataOfSecondaryFrameContextsSemaphore);
}

- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  v395 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  obj = data;
  contextCopy = context;
  kdebug_trace();
  kdebug_trace();
  dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v348 = contextCopy;
  [(ARFrameContextHandler *)self->_frameContextHandler markFrameContextProcessed:contextCopy];
  selfCopy = self;
  dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
  v379 = 0u;
  v380 = 0u;
  v381 = 0u;
  v382 = 0u;
  v315 = techniqueCopy;
  splitTechniques = [techniqueCopy splitTechniques];
  v13 = [splitTechniques countByEnumeratingWithState:&v379 objects:v394 count:16];
  if (v13)
  {
    v14 = *v380;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v380 != v14)
        {
          objc_enumerationMutation(splitTechniques);
        }

        [*(*(&v379 + 1) + 8 * i) requestResultDataAtTimestamp:v348 context:timestamp];
      }

      v13 = [splitTechniques countByEnumeratingWithState:&v379 objects:v394 count:16];
    }

    while (v13);
  }

  if (!v348 || ([v348 imageData], (v16 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_23:
    if (selfCopy->resultDatasOfSecondaryFrameContexts)
    {
      dispatch_semaphore_wait(selfCopy->_resultDataOfSecondaryFrameContextsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
      v28 = [obj arrayByAddingObjectsFromArray:selfCopy->resultDatasOfSecondaryFrameContexts];

      array = [MEMORY[0x1E695DF70] array];
      v373 = 0u;
      v374 = 0u;
      v371 = 0u;
      v372 = 0u;
      v30 = selfCopy->resultDatasOfSecondaryFrameContexts;
      v31 = [(NSArray *)v30 countByEnumeratingWithState:&v371 objects:v392 count:16];
      if (v31)
      {
        v32 = *v372;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v372 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v371 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  continue;
                }
              }
            }

            [array addObject:v34];
          }

          v31 = [(NSArray *)v30 countByEnumeratingWithState:&v371 objects:v392 count:16];
        }

        while (v31);
      }

      objc_storeStrong(&selfCopy->resultDatasOfSecondaryFrameContexts, array);
      dispatch_semaphore_signal(selfCopy->_resultDataOfSecondaryFrameContextsSemaphore);

      obj = v28;
    }

    v35 = [[ARFrame alloc] initWithTimestamp:v348 context:timestamp];
    orientationData = [v348 orientationData];
    deviceMotion = [orientationData deviceMotion];
    [deviceMotion heading];
    [(ARFrame *)v35 setRawHeading:?];

    locationData = [v348 locationData];
    v39 = objc_msgSend_location(locationData);
    [(ARFrame *)v35 setRawLocation:v39];

    locationData2 = [v348 locationData];
    objc_msgSend_timestamp(locationData2);
    [(ARFrame *)v35 setRawLocationTimestamp:?];

    locationData3 = [v348 locationData];
    [locationData3 undulation];
    [(ARFrame *)v35 setUndulation:?];

    if ((selfCopy->_runningSensors & 0x40) != 0)
    {
      v43 = _ARLogSession_0(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        v44 = objc_opt_class();
        v45 = NSStringFromClass(v44);
        [(ARFrame *)v35 rawHeading];
        *buf = 138543875;
        *&buf[4] = v45;
        *&buf[12] = 2048;
        *&buf[14] = selfCopy;
        *&buf[22] = 2049;
        *&buf[24] = v46;
        _os_log_impl(&dword_1C241C000, v43, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: currentFrame.rawHeading,%{private}f", buf, 0x20u);
      }

      v48 = _ARLogSession_0(v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
      {
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        [(ARFrame *)v35 rawLocationTimestamp];
        v52 = v51;
        rawLocation = [(ARFrame *)v35 rawLocation];
        [rawLocation coordinate];
        v55 = v54;
        rawLocation2 = [(ARFrame *)v35 rawLocation];
        [rawLocation2 coordinate];
        v58 = v57;
        rawLocation3 = [(ARFrame *)v35 rawLocation];
        [rawLocation3 altitudeWgs84];
        v61 = v60;
        rawLocation4 = [(ARFrame *)v35 rawLocation];
        isAltitudeWgs84Available = [rawLocation4 isAltitudeWgs84Available];
        *buf = 138544899;
        *&buf[4] = v50;
        *&buf[12] = 2048;
        *&buf[14] = selfCopy;
        *&buf[22] = 2049;
        *&buf[24] = v52;
        LOWORD(v390[0]) = 2049;
        *(v390 + 2) = v55;
        WORD5(v390[0]) = 2049;
        *(v390 + 12) = v58;
        WORD2(v390[1]) = 2049;
        *(&v390[1] + 6) = v61;
        HIWORD(v390[1]) = 1024;
        v391 = isAltitudeWgs84Available;
        _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: currentFrame.rawLocation,%{private}lf,%{private}lf,%{private}lf,%{private}lf,%d", buf, 0x44u);
      }
    }

    if ([(ARFrame *)v35 isHighResolution])
    {
      technique = [(ARSession *)selfCopy technique];
      v65 = [technique predictedResultDataAtTimestamp:v348 context:timestamp];

      v66 = [MEMORY[0x1E696AE18] predicateWithFormat:@"class != %@", objc_opt_class()];
      v67 = [v65 filteredArrayUsingPredicate:v66];

      v68 = [obj arrayByAddingObjectsFromArray:v67];
    }

    else
    {
      v68 = obj;
    }

    v369 = 0u;
    v370 = 0u;
    v367 = 0u;
    v368 = 0u;
    obj = v68;
    v346 = [obj countByEnumeratingWithState:&v367 objects:v388 count:16];
    if (v346)
    {
      v329 = 0;
      worldAlignmentModifiers = 0;
      v331 = *v368;
      do
      {
        for (k = 0; k != v346; ++k)
        {
          if (*v368 != v331)
          {
            objc_enumerationMutation(obj);
          }

          v70 = *(*(&v367 + 1) + 8 * k);
          if (objc_opt_respondsToSelector())
          {
            [v70 cameraTransform];
            v326 = v72;
            v330 = v71;
            v320 = v74;
            v323 = v73;
            camera = [(ARFrame *)v35 camera];
            [camera setTransform:{v330, v326, v323, v320}];

            v329 = 1;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && selfCopy->_renderPersonBoundingBoxesIntoCapturedImage)
          {
            v365 = 0u;
            v366 = 0u;
            v363 = 0u;
            v364 = 0u;
            detectedObjects = [v70 detectedObjects];
            v77 = [detectedObjects countByEnumeratingWithState:&v363 objects:v387 count:16];
            if (v77)
            {
              v78 = *v364;
              do
              {
                for (m = 0; m != v77; ++m)
                {
                  if (*v364 != v78)
                  {
                    objc_enumerationMutation(detectedObjects);
                  }

                  [*(*(&v363 + 1) + 8 * m) boundingBox];
                  ARDrawNormalizedCGRectIntoYUVPixelBuffer([(ARFrame *)v35 capturedImage], 255, v80, v81, v82, v83);
                }

                v77 = [detectedObjects countByEnumeratingWithState:&v363 objects:v387 count:16];
              }

              while (v77);
            }
          }

          if (objc_opt_respondsToSelector())
          {
            worldTrackingState = [v70 worldTrackingState];
            state = [worldTrackingState state];
            camera2 = [(ARFrame *)v35 camera];
            [camera2 setTrackingState:state];

            reason = [worldTrackingState reason];
            camera3 = [(ARFrame *)v35 camera];
            [camera3 setTrackingStateReason:reason];

            [(ARFrame *)v35 setWorldTrackingState:worldTrackingState];
            [v348 setDidRelocalize:{objc_msgSend(worldTrackingState, "majorRelocalization")}];
            if ([v348 didRelocalize])
            {
              dispatch_semaphore_wait(selfCopy->_lastProcessedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
              [worldTrackingState majorRelocalizationCameraTransform];
              v324 = v90;
              v327 = v89;
              v321 = v91;
              v316 = v92;
              camera4 = [(ARFrame *)selfCopy->_lastProcessedFrame camera];
              objc_msgSend_transform(camera4);
              v397 = __invert_f4(v396);
              v94 = 0;
              v383 = v397;
              memset(buf, 0, sizeof(buf));
              memset(v390, 0, sizeof(v390));
              do
              {
                *&buf[v94 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, COERCE_FLOAT(*&v383.columns[v94])), v324, *v383.columns[v94].f32, 1), v321, v383.columns[v94], 2), v316, v383.columns[v94], 3);
                ++v94;
              }

              while (v94 != 4);
              v325 = *&buf[16];
              v328 = *buf;
              v322 = v390[0];
              v317 = v390[1];
              [(ARFrame *)selfCopy->_lastProcessedFrame referenceOriginTransform];
              v95 = 0;
              v383.columns[0] = v96;
              v383.columns[1] = v97;
              v383.columns[2] = v98;
              v383.columns[3] = v99;
              memset(buf, 0, sizeof(buf));
              memset(v390, 0, sizeof(v390));
              do
              {
                *&buf[v95 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v328, COERCE_FLOAT(*&v383.columns[v95])), v325, *v383.columns[v95].f32, 1), v322, v383.columns[v95], 2), v317, v383.columns[v95], 3);
                ++v95;
              }

              while (v95 != 4);
              [v348 setRelocalizationDeltaTransform:{*buf, *&buf[16], *v390, *&v390[1]}];

              v100 = dispatch_semaphore_signal(selfCopy->_lastProcessedFrameSemaphore);
              v101 = _ARLogSession_0(v100);
              if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
              {
                v102 = objc_opt_class();
                v103 = NSStringFromClass(v102);
                [worldTrackingState lastMajorRelocalizationTimestamp];
                v105 = v104;
                [v348 relocalizationDeltaTransform];
                v110 = ARMatrix4x4Description(0, v106, v107, v108, v109);
                *buf = 138544130;
                *&buf[4] = v103;
                *&buf[12] = 2048;
                *&buf[14] = selfCopy;
                *&buf[22] = 2048;
                *&buf[24] = v105;
                LOWORD(v390[0]) = 2112;
                *(v390 + 2) = v110;
                _os_log_impl(&dword_1C241C000, v101, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Relocalization time stamp: %f, delta transform: %@", buf, 0x2Au);
              }
            }
          }

          if (([v348 frameDebugOptions] & 4) != 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(ARFrame *)v35 setWorldTrackingErrorData:v70];
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v111 = v70;
            -[ARFrame setWorldMappingStatus:](v35, "setWorldMappingStatus:", [v111 worldMappingStatus]);
            [v348 frameDebugOptions];
            lineCloud = [v111 lineCloud];
            [(ARFrame *)v35 setWorldTrackingLineCloud:lineCloud];

            currentlyActiveVideoFormat = [v111 currentlyActiveVideoFormat];
            [(ARFrame *)v35 setCurrentlyActiveVideoFormat:currentlyActiveVideoFormat];

            if ([(ARSession *)selfCopy _shouldUpdateLocationSensorForFusion])
            {
              locationSensor = selfCopy->_locationSensor;
              imageData = [v348 imageData];
              [(ARRemoteLocationSensor *)locationSensor updateEstimationFromVIOPose:v111 imageData:imageData];
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v116 = v70;
            v117 = objc_msgSend_location(v116);
            [(ARFrame *)v35 setLocation:v117];

            [v116 heading];
            v118 = _ARLogSession_0([(ARFrame *)v35 setHeading:?]);
            if (os_log_type_enabled(v118, OS_LOG_TYPE_DEBUG))
            {
              v119 = objc_opt_class();
              v120 = NSStringFromClass(v119);
              v121 = objc_msgSend_location(v35);
              [v121 coordinate];
              v123 = v122;
              v124 = objc_msgSend_location(v35);
              [v124 coordinate];
              v126 = v125;
              v127 = objc_msgSend_location(v35);
              [v127 altitude];
              v129 = v128;
              [(ARFrame *)v35 heading];
              *buf = 138544643;
              *&buf[4] = v120;
              *&buf[12] = 2048;
              *&buf[14] = selfCopy;
              *&buf[22] = 2049;
              *&buf[24] = v123;
              LOWORD(v390[0]) = 2049;
              *(v390 + 2) = v126;
              WORD5(v390[0]) = 2049;
              *(v390 + 12) = v129;
              WORD2(v390[1]) = 2049;
              *(&v390[1] + 6) = v130;
              _os_log_impl(&dword_1C241C000, v118, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: currentFrame.lat,lon,alt,heading: %{private}lf,%{private}lf,%{private}lf,%{private}lf", buf, 0x3Eu);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v131 = v70;
            [(ARFrame *)v35 setVlState:v131];
            trackingStatus = [v131 trackingStatus];
            [(ARFrame *)v35 setGeoTrackingStatus:trackingStatus];

            fusedReplayLocation = [v131 fusedReplayLocation];
            [(ARFrame *)v35 setRawLocation:fusedReplayLocation];

            [v131 fusedReplayLocationTimestamp];
            [(ARFrame *)v35 setRawLocationTimestamp:?];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v134 = v70;
            debugInfo = [v134 debugInfo];
            [(ARFrame *)v35 setVlDebugInfo:debugInfo];
          }

          if (objc_opt_respondsToSelector())
          {
            if (objc_opt_respondsToSelector())
            {
              worldAlignmentModifiers = [v70 worldAlignmentModifiers];
            }

            if ((worldAlignmentModifiers & 1) == 0)
            {
              [v70 worldAlignmentTransform];
              [(ARFrame *)v35 setWorldAlignmentTransform:?];
            }
          }

          if (objc_opt_respondsToSelector())
          {
            lightEstimate = [v70 lightEstimate];
            [(ARFrame *)v35 setLightEstimate:lightEstimate];

            v139 = ARLinkedOnOrAfterDawn(v137, v138);
            lightEstimate2 = [v70 lightEstimate];
            [lightEstimate2 ambientIntensity];
            if (v139)
            {
              v141 = v141 / 1000.0;
            }

            v142 = v141;
            v143 = ARMapLightIntensity(v142);
            camera5 = [(ARFrame *)v35 camera];
            *&v145 = v143;
            [camera5 setExposureOffset:v145];
          }

          if (objc_opt_respondsToSelector())
          {
            featurePoints = [v70 featurePoints];
            [(ARFrame *)v35 setReferenceFeaturePoints:featurePoints];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v147 = v70;
            if ([v147 source] == 1)
            {
              -[ARFrame setSegmentationBuffer:](v35, "setSegmentationBuffer:", [v147 segmentationBuffer]);
            }
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v148 = v70;
            -[ARFrame setDownSampledMattingPixelBuffer:](v35, "setDownSampledMattingPixelBuffer:", [v148 downSampledImageBuffer]);
            -[ARFrame setMattingScaleImagePixelBuffer:](v35, "setMattingScaleImagePixelBuffer:", [v148 mattingScaleImageBuffer]);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v149 = v70;
            -[ARFrame setEstimatedDepthData:](v35, "setEstimatedDepthData:", [v149 depthBuffer]);
          }

          frameSemantics = [(ARConfiguration *)selfCopy->_configurationInternal frameSemantics];
          if ((frameSemantics & 8) != 0 && ARDeviceSupportsJasper(frameSemantics, v151) && [v70 isMemberOfClass:objc_opt_class()])
          {
            v152 = v70;
            v153 = [objc_alloc(MEMORY[0x1E69864F8]) initWithDepthMap:objc_msgSend(v152 confidenceMap:{"singleFrameDepthBuffer"), objc_msgSend(v152, "confidenceMap")}];
            objc_msgSend_timestamp(v152);
            [v153 setTimestamp:?];
            [(ARFrame *)v35 setSceneDepth:v153];
            -[ARFrame setDepthConfidenceData:](v35, "setDepthConfidenceData:", [v152 confidenceBuffer]);
          }

          frameSemantics2 = [(ARConfiguration *)selfCopy->_configurationInternal frameSemantics];
          if ((frameSemantics2 & 0x10) != 0 && ARDeviceSupportsJasper(frameSemantics2, v155) && [v70 isMemberOfClass:objc_opt_class()])
          {
            v156 = v70;
            v157 = [objc_alloc(MEMORY[0x1E69864F8]) initWithDepthMap:objc_msgSend(v156 confidenceMap:{"depthBuffer"), objc_msgSend(v156, "confidenceMap")}];
            objc_msgSend_timestamp(v156);
            [v157 setTimestamp:?];
            [(ARFrame *)v35 setSmoothedSceneDepth:v157];
            -[ARFrame setDepthConfidenceData:](v35, "setDepthConfidenceData:", [v156 confidenceBuffer]);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v158 = v70;
            v159 = objc_opt_new();
            trackedDetectionResult = [v158 trackedDetectionResult];

            if (trackedDetectionResult)
            {
              trackedDetectionResult2 = [v158 trackedDetectionResult];
              [v159 addObject:trackedDetectionResult2];
            }

            alignedDetectionResult = [v158 alignedDetectionResult];

            if (alignedDetectionResult)
            {
              alignedDetectionResult2 = [v158 alignedDetectionResult];
              [v159 addObject:alignedDetectionResult2];
            }

            v164 = [v159 ar_map:&__block_literal_global_290];
            [(ARFrame *)v35 setDetectedBodies:v164];
          }
        }

        v346 = [obj countByEnumeratingWithState:&v367 objects:v388 count:16];
      }

      while (v346);
    }

    else
    {
      v329 = 0;
      worldAlignmentModifiers = 0;
    }

    v347 = [obj ar_filter:&__block_literal_global_295];
    if ([v347 count])
    {
      [(ARSession *)selfCopy _sessionDidUpdateSpatialMappingPointClouds:v347];
    }

    configurationInternal = [(ARSession *)selfCopy configurationInternal];
    if ([configurationInternal isPersonMetadataEnabled] && -[ARFrame segmentationBuffer](v35, "segmentationBuffer"))
    {
      v166 = [(ARFrame *)v35 estimatedDepthData]== 0;

      if (v166)
      {
LABEL_139:
        if (ARInternalOSBuild(v167, v168) && ([v348 frameDebugOptions] & 2) != 0)
        {
          [(ARFrame *)v35 setResultDatas:obj];
        }

        camera6 = [(ARFrame *)v35 camera];
        if (![camera6 trackingState])
        {
          if (v329)
          {
          }

          else
          {
            v198 = [v348 worldAlignment] == 2;

            if (!v198)
            {
LABEL_144:
              if ([v348 frameDebugOptions])
              {
                v177 = objc_opt_new();
                imageData2 = [v348 imageData];
                captureDate = [imageData2 captureDate];
                [captureDate timeIntervalSinceNow];
                [v177 setVideoLatency:-v180];

                imageData3 = [v348 imageData];
                objc_msgSend_timestamp(imageData3);
                [v177 addTimestamp:objc_opt_class() forDataOfClass:v182];

                v357 = 0u;
                v358 = 0u;
                v355 = 0u;
                v356 = 0u;
                v183 = obj;
                v184 = [v183 countByEnumeratingWithState:&v355 objects:v385 count:16];
                if (v184)
                {
                  v185 = *v356;
                  do
                  {
                    for (n = 0; n != v184; ++n)
                    {
                      if (*v356 != v185)
                      {
                        objc_enumerationMutation(v183);
                      }

                      v187 = *(*(&v355 + 1) + 8 * n);
                      if (objc_opt_respondsToSelector())
                      {
                        objc_msgSend_timestamp(v187);
                        [v177 addTimestamp:objc_opt_class() forDataOfClass:v188];
                      }
                    }

                    v184 = [v183 countByEnumeratingWithState:&v355 objects:v385 count:16];
                  }

                  while (v184);
                }

                [(ARFrame *)v35 setTimingData:v177];
              }

              v189 = [(ARSession *)selfCopy powerUsage]== 0;
              imageData4 = [v348 imageData];
              captureFramesPerSecond = [imageData4 captureFramesPerSecond];

              [(ARFrame *)v35 setRenderFramesPerSecond:[(ARSession *)selfCopy _preferredRenderFrameRateForCaptureFrameRate:captureFramesPerSecond isNominalPower:v189]];
              [(ARFrame *)v35 setShouldRestrictFrameRate:v189 ^ 1];
              dispatch_semaphore_wait(selfCopy->_lastProcessedFrameSemaphore, 0xFFFFFFFFFFFFFFFFLL);
              camera7 = [(ARFrame *)v35 camera];
              trackingStateReason = [camera7 trackingStateReason];
              v194 = trackingStateReason == 4;
              if (trackingStateReason == 4)
              {
                camera8 = [(ARFrame *)v35 camera];
                v196 = [camera8 trackingState] == 1;

                if (!v196)
                {
                  v194 = 0;
LABEL_168:
                  v197 = selfCopy;
LABEL_169:
                  technique2 = [(ARSession *)v197 technique];
                  v345 = [technique2 techniqueOfClass:objc_opt_class()];

                  if (v345)
                  {
                    v202 = [v345 finishedLoadingImages] ^ 1;
                  }

                  else
                  {
                    v202 = 0;
                  }

                  technique3 = [(ARSession *)selfCopy technique];
                  v344 = [technique3 techniqueOfClass:objc_opt_class()];

                  if (v344)
                  {
                    v204 = [v344 finishedLoadingObjects] ^ 1;
                  }

                  else
                  {
                    v204 = 0;
                  }

                  if ((v202 | v204))
                  {
                    camera9 = [(ARFrame *)v35 camera];
                    v206 = [camera9 trackingState] == 0;

                    if (!v206)
                    {
                      camera10 = [(ARFrame *)v35 camera];
                      [camera10 setTrackingState:1];

                      camera11 = [(ARFrame *)v35 camera];
                      [camera11 setTrackingStateReason:1];
                    }
                  }

                  p_lastProcessedFrame = &selfCopy->_lastProcessedFrame;
                  v210 = TrackingStateDifferent(selfCopy->_lastProcessedFrame, v35);
                  geoTrackingTechnique = [(ARSession *)selfCopy geoTrackingTechnique];
                  if (geoTrackingTechnique)
                  {
                    geoTrackingStatus = [(ARFrame *)v35 geoTrackingStatus];
                    v213 = geoTrackingStatus == 0;

                    if (v213)
                    {
                      vlState = [*p_lastProcessedFrame vlState];

                      if (vlState)
                      {
                        vlState2 = [*p_lastProcessedFrame vlState];
                        [(ARFrame *)v35 setVlState:vlState2];

                        vlState3 = [*p_lastProcessedFrame vlState];
                        trackingStatus2 = [vlState3 trackingStatus];
                        [(ARFrame *)v35 setGeoTrackingStatus:trackingStatus2];

                        vlState4 = [*p_lastProcessedFrame vlState];
                        fusedReplayLocation2 = [vlState4 fusedReplayLocation];
                        [(ARFrame *)v35 setRawLocation:fusedReplayLocation2];

                        vlState5 = [*p_lastProcessedFrame vlState];
                        [vlState5 fusedReplayLocationTimestamp];
                        [(ARFrame *)v35 setRawLocationTimestamp:?];

                        v222 = _ARLogSession_0(v221);
                        if (os_log_type_enabled(v222, OS_LOG_TYPE_INFO))
                        {
                          v223 = objc_opt_class();
                          v224 = NSStringFromClass(v223);
                          *buf = 138543618;
                          *&buf[4] = v224;
                          *&buf[12] = 2048;
                          *&buf[14] = selfCopy;
                          _os_log_impl(&dword_1C241C000, v222, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using vlState from previous frame.", buf, 0x16u);
                        }
                      }

                      else
                      {
                        v222 = +[ARGeoTrackingStatus initialStatus];
                        [(ARFrame *)v35 setGeoTrackingStatus:v222];
                      }
                    }
                  }

                  v225 = selfCopy;
                  if ([v348 didRelocalize])
                  {
                    os_unfair_lock_lock(&selfCopy->_worldMapSurfaceDataLock);
                    worldMap = [v348 worldMap];
                    surfaceData = [worldMap surfaceData];
                    if (surfaceData)
                    {
                      hasLoadedSurfaceData = [(ARWorldTrackingTechnique *)selfCopy->_worldTrackingTechnique hasLoadedSurfaceData];

                      v225 = selfCopy;
                      if (!hasLoadedSurfaceData)
                      {
                        objc_msgSend_timestamp(v35);
                        kdebug_trace();
                        worldTrackingTechnique = selfCopy->_worldTrackingTechnique;
                        worldMap2 = [v348 worldMap];
                        surfaceData2 = [worldMap2 surfaceData];
                        [(ARWorldTrackingTechnique *)worldTrackingTechnique loadSurfaceData:surfaceData2];

                        dispatch_semaphore_wait(selfCopy->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
                        v351 = 0u;
                        v352 = 0u;
                        v353 = 0u;
                        v354 = 0u;
                        anchors = [(ARFrame *)v35 anchors];
                        v233 = [anchors countByEnumeratingWithState:&v351 objects:v384 count:16];
                        if (v233)
                        {
                          v234 = *v352;
                          do
                          {
                            for (ii = 0; ii != v233; ++ii)
                            {
                              if (*v352 != v234)
                              {
                                objc_enumerationMutation(anchors);
                              }

                              v236 = *(*(&v351 + 1) + 8 * ii);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                [(ARFrameContextHandler *)selfCopy->_frameContextHandler removeAnchor:v236];
                              }
                            }

                            v233 = [anchors countByEnumeratingWithState:&v351 objects:v384 count:16];
                          }

                          while (v233);
                        }

                        v225 = selfCopy;
                        dispatch_semaphore_signal(selfCopy->_frameContextHandlerSemaphore);
                        objc_msgSend_timestamp(v35);
                        kdebug_trace();
                      }
                    }

                    else
                    {

                      v225 = selfCopy;
                    }

                    os_unfair_lock_unlock(&v225->_worldMapSurfaceDataLock);
                  }

                  [(ARSession *)v225 _updateOriginTransformForFrame:v35 previousFrame:v225->_lastProcessedFrame modifiers:worldAlignmentModifiers context:v348];
                  if ([(ARFrame *)v35 referenceOriginTransformAvailable])
                  {
                    if ([v348 worldAlignment] == 2)
                    {
                      camera12 = [(ARFrame *)v35 camera];
                      [camera12 setTransform:{*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), *(MEMORY[0x1E69E9B18] + 48)}];
                    }

                    else
                    {
                      [(ARFrame *)v35 referenceOriginTransform];
                      v338 = v239;
                      v341 = v238;
                      v332 = v241;
                      v335 = v240;
                      camera12 = [(ARFrame *)v35 camera];
                      objc_msgSend_transform(camera12);
                      v242 = 0;
                      v383.columns[0] = v243;
                      v383.columns[1] = v244;
                      v383.columns[2] = v245;
                      v383.columns[3] = v246;
                      memset(buf, 0, sizeof(buf));
                      memset(v390, 0, sizeof(v390));
                      do
                      {
                        *&buf[v242 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v341, COERCE_FLOAT(*&v383.columns[v242])), v338, *v383.columns[v242].f32, 1), v335, v383.columns[v242], 2), v332, v383.columns[v242], 3);
                        ++v242;
                      }

                      while (v242 != 4);
                      v339 = *&buf[16];
                      v342 = *buf;
                      v333 = *&v390[1];
                      v336 = *v390;
                      camera13 = [(ARFrame *)v35 camera];
                      [camera13 setTransform:{v342, v339, v336, v333}];
                    }

                    if (selfCopy->_worldTrackingTechnique)
                    {
                      [(ARFrame *)v35 referenceOriginTransform];
                      [(ARWorldTrackingTechnique *)selfCopy->_worldTrackingTechnique setReferenceOriginTransform:?];
                    }
                  }

                  [(ARSession *)selfCopy _populateRawSceneUnderstandingDataForFrame:v35 fromResultData:obj];
                  v248 = selfCopy;
                  if (selfCopy->_configuredForWorldTracking)
                  {
                    is6DofFaceTracking = [(ARSession *)selfCopy is6DofFaceTracking];
                    v248 = selfCopy;
                    if (!is6DofFaceTracking)
                    {
                      [(ARSession *)selfCopy _updateFeaturePointsForFrame:v35 previousFrame:selfCopy->_lastProcessedFrame trackingStateChanged:v210 context:v348];
                      v248 = selfCopy;
                    }
                  }

                  if ([(ARSession *)v248 is6DofFaceTracking])
                  {
                    camera14 = [(ARFrame *)v35 camera];
                    objc_msgSend_transform(camera14);
                    v255 = ARFrontWideCameraTransformFromBackWideAngleCameraTransform(v251, v252, v253, v254);
                    v340 = v256;
                    v343 = v255;
                    v334 = v258;
                    v337 = v257;
                    camera15 = [(ARFrame *)v35 camera];
                    [camera15 setTransform:{v343, v340, v337, v334}];
                  }

                  lightEstimate3 = [(ARFrame *)v35 lightEstimate];
                  objc_opt_class();
                  isKindOfClass = objc_opt_isKindOfClass();

                  if (isKindOfClass)
                  {
                    lightEstimate4 = [(ARFrame *)v35 lightEstimate];
                    camera16 = [(ARFrame *)v35 camera];
                    objc_msgSend_transform(camera16);
                    ARMatrix3x3FromMatrix4x4();
                    v264 = [lightEstimate4 lightEstimateByApplyingRotation:?];
                    [(ARFrame *)v35 setLightEstimate:v264];
                  }

                  anchors2 = [(ARFrame *)selfCopy->_lastProcessedFrame anchors];
                  [anchors2 count];
                  kdebug_trace();

                  anchors3 = [(ARFrame *)selfCopy->_lastProcessedFrame anchors];
                  [(ARFrame *)v35 setAnchors:anchors3];

                  privateAnchors = [(ARFrame *)selfCopy->_lastProcessedFrame privateAnchors];
                  [(ARFrame *)v35 setPrivateAnchors:privateAnchors];

                  v268 = [(ARSession *)selfCopy _updateAnchorsForFrame:v35 resultDatas:obj context:v348];
                  anchors4 = [(ARFrame *)v35 anchors];
                  [anchors4 count];
                  kdebug_trace();

                  if (v210)
                  {
                    camera17 = [(ARFrame *)v35 camera];
                    if ([camera17 trackingState])
                    {
                      anchors4 = [(ARFrame *)v35 camera];
                      v271 = [anchors4 trackingStateReason] == 1;

                      if (!v271)
                      {
                        goto LABEL_225;
                      }
                    }

                    else
                    {
                    }

                    if (*p_lastProcessedFrame)
                    {
                      camera18 = [*p_lastProcessedFrame camera];
                      if (![camera18 trackingState])
                      {

                        goto LABEL_225;
                      }

                      anchors4 = [*p_lastProcessedFrame camera];
                      v273 = [anchors4 trackingStateReason] == 1;

                      if (v273)
                      {
                        goto LABEL_225;
                      }
                    }

                    objc_msgSend_timestamp(v35);
                    selfCopy->_currentTrackingStartingTimestamp = v274;
                  }

LABEL_225:
                  if (![(ARFrame *)v35 isHighResolution])
                  {
                    objc_storeStrong(p_lastProcessedFrame, v35);
                    objc_msgSend_timestamp(v35);
                    kdebug_trace();
                  }

                  relocalizing = [(ARSession *)selfCopy relocalizing];
                  v276 = [(ARSession *)selfCopy setRelocalizing:v194];
                  v277 = v194 ^ relocalizing;
                  if (v194 & (v194 ^ relocalizing))
                  {
                    v278 = _ARLogSession_0(v276);
                    if (os_log_type_enabled(v278, OS_LOG_TYPE_INFO))
                    {
                      v279 = objc_opt_class();
                      v280 = NSStringFromClass(v279);
                      *buf = 138543618;
                      *&buf[4] = v280;
                      *&buf[12] = 2048;
                      *&buf[14] = selfCopy;
                      _os_log_impl(&dword_1C241C000, v278, OS_LOG_TYPE_INFO, "%{public}@ <%p>: world tracking did start relocalizing", buf, 0x16u);
                    }

                    worldMap3 = [v348 worldMap];

                    if (worldMap3)
                    {
                      v282 = selfCopy;
                      selfCopy->_relocalizationRequested = 1;
                    }

                    else
                    {
                      v289 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:selfCopy->_defaultRelocalizationDuration];
                      relocalizationTimeoutDate = selfCopy->_relocalizationTimeoutDate;
                      selfCopy->_relocalizationTimeoutDate = v289;

                      [(ARSession *)selfCopy _sessionShouldAttemptRelocalization];
                      v282 = selfCopy;
                    }
                  }

                  else if (v194)
                  {
                    v282 = selfCopy;
                    if (!selfCopy->_relocalizationRequested)
                    {
                      [(NSDate *)selfCopy->_relocalizationTimeoutDate timeIntervalSinceNow];
                      v282 = selfCopy;
                      if (v283 < 0.0)
                      {
                        v284 = selfCopy->_relocalizationTimeoutDate;
                        selfCopy->_relocalizationTimeoutDate = 0;

                        v282 = selfCopy;
                        stateQueue = selfCopy->_stateQueue;
                        block[0] = MEMORY[0x1E69E9820];
                        block[1] = 3221225472;
                        block[2] = __61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke_311;
                        block[3] = &unk_1E817BFE8;
                        block[4] = selfCopy;
                        dispatch_async(stateQueue, block);
                      }
                    }
                  }

                  else
                  {
                    v282 = selfCopy;
                    if (v277)
                    {
                      v286 = _ARLogSession_0(v276);
                      if (os_log_type_enabled(v286, OS_LOG_TYPE_DEBUG))
                      {
                        v287 = objc_opt_class();
                        v288 = NSStringFromClass(v287);
                        *buf = 138543618;
                        *&buf[4] = v288;
                        *&buf[12] = 2048;
                        *&buf[14] = selfCopy;
                        _os_log_impl(&dword_1C241C000, v286, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: world tracking ended relocalization", buf, 0x16u);
                      }

                      v282 = selfCopy;
                      selfCopy->_relocalizationRequested = 0;
                    }
                  }

                  [(ARSessionMetrics *)v282->_metrics sessionDidUpdateFrame:v35];
                  v291 = selfCopy->_worldTrackingTechnique;
                  dispatch_semaphore_signal(selfCopy->_lastProcessedFrameSemaphore);
                  if ([(ARFrame *)v35 isHighResolution])
                  {
                    [(ARSession *)selfCopy _sessionDidCaptureHighResolutionFrame:v35 error:0];
                  }

                  else
                  {
                    [(ARFrame *)v35 setScheduledTimestamp:CACurrentMediaTime()];
                    imageData5 = [v348 imageData];
                    anchors4 = [(ARSession *)selfCopy configurationInternal];
                    v293 = ARTimerFramesPerSecond(imageData5, anchors4);

                    v294 = selfCopy;
                    inFrameAnchorVisualizer = selfCopy->_inFrameAnchorVisualizer;
                    if (inFrameAnchorVisualizer)
                    {
                      [(ARInFrameAnchorVisualizer *)inFrameAnchorVisualizer drawOriginAndAnchorsOnFrame:v35];
                      v294 = selfCopy;
                    }

                    [(ARFrameUpdateTimer *)v294->_frameUpdateTimer scheduleFrame:v35 captureFramesPerSecond:v293];
                  }

                  kdebug_trace();
                  if (!v291)
                  {
                    goto LABEL_265;
                  }

                  removedAnchors = [v268 removedAnchors];
                  camera20 = [removedAnchors count];

                  if (camera20)
                  {
                    removedAnchors2 = [v268 removedAnchors];
                    anchors4 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_314];
                    camera20 = [removedAnchors2 filteredArrayUsingPredicate:anchors4];

                    [(ARWorldTrackingTechnique *)v291 removeReferenceAnchors:camera20];
                  }

                  camera19 = [(ARFrame *)v35 camera];
                  trackingState = [camera19 trackingState];
                  if (trackingState == 1)
                  {
                    camera20 = [(ARFrame *)v35 camera];
                    if ([camera20 trackingStateReason]== 1)
                    {
                      goto LABEL_251;
                    }

                    anchors4 = [(ARFrame *)v35 camera];
                    if ([anchors4 trackingStateReason] == 4)
                    {

                      goto LABEL_264;
                    }
                  }

                  v301 = trackingState == 1;
                  camera21 = [(ARFrame *)v35 camera];
                  trackingState2 = [camera21 trackingState];

                  if (v301)
                  {
                    LOBYTE(v304) = trackingState2 == 0;
                  }

                  else
                  {
                    v304 = trackingState2 == 0;
                  }

                  if (v304)
                  {
                    goto LABEL_265;
                  }

                  referenceOriginTransformUpdated = [(ARFrame *)v35 referenceOriginTransformUpdated];
                  anchors5 = [(ARFrame *)v35 anchors];
                  v307 = [anchors5 count] != 0;

                  if ((v307 & (v277 ^ referenceOriginTransformUpdated)) == 0)
                  {
                    addedAnchors = [v268 addedAnchors];
                    v313 = [addedAnchors count];

                    if (!v313)
                    {
LABEL_265:

                      goto LABEL_266;
                    }

                    addedAnchors2 = [v268 addedAnchors];
                    camera19 = ARAnchorsForPoseGraphUpdates(addedAnchors2);

                    [(ARWorldTrackingTechnique *)v291 addReferenceAnchors:camera19];
LABEL_264:

                    goto LABEL_265;
                  }

                  anchors6 = [(ARFrame *)v35 anchors];
                  camera19 = ARAnchorsForPoseGraphUpdates(anchors6);

                  camera20 = _ARLogSession_0([(ARWorldTrackingTechnique *)v291 addReferenceAnchors:camera19]);
                  if (os_log_type_enabled(camera20, OS_LOG_TYPE_DEBUG))
                  {
                    v309 = objc_opt_class();
                    v310 = NSStringFromClass(v309);
                    v311 = [camera19 count];
                    *buf = 138543874;
                    *&buf[4] = v310;
                    *&buf[12] = 2048;
                    *&buf[14] = selfCopy;
                    *&buf[22] = 2048;
                    *&buf[24] = v311;
                    _os_log_impl(&dword_1C241C000, camera20, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: all anchors re-added to pose graph updates: %tu", buf, 0x20u);
                  }

LABEL_251:

                  goto LABEL_264;
                }

                v197 = selfCopy;
                if (selfCopy->_relocalizationRequested)
                {
                  v194 = 1;
                  goto LABEL_169;
                }

                camera7 = [(ARFrame *)v35 camera];
                [camera7 setTrackingStateReason:1];
              }

              goto LABEL_168;
            }
          }

          configuredForWorldTracking = selfCopy->_configuredForWorldTracking;
          camera22 = [(ARFrame *)v35 camera];
          camera6 = camera22;
          if (configuredForWorldTracking)
          {
            [camera22 setTrackingState:1];

            camera6 = [(ARFrame *)v35 camera];
            [camera6 setTrackingStateReason:1];
          }

          else
          {
            [camera22 setTrackingState:2];
          }
        }

        goto LABEL_144;
      }

      configurationInternal = [obj ar_firstObjectPassingTest:&__block_literal_global_299];
      if (configurationInternal)
      {
        v169 = objc_opt_new();
        v170 = [configurationInternal transformToCVPixelBuffer:-[ARFrame segmentationBuffer](v35 depthBuffer:{"segmentationBuffer"), -[ARFrame estimatedDepthData](v35, "estimatedDepthData")}];
        v361 = 0u;
        v362 = 0u;
        v359 = 0u;
        v360 = 0u;
        v171 = v170;
        v172 = [v171 countByEnumeratingWithState:&v359 objects:v386 count:16];
        if (v172)
        {
          v173 = *v360;
          do
          {
            for (jj = 0; jj != v172; ++jj)
            {
              if (*v360 != v173)
              {
                objc_enumerationMutation(v171);
              }

              v175 = [[ARPersonMetadata alloc] initWithDepthBasedPersonDetectionResult:*(*(&v359 + 1) + 8 * jj)];
              [v169 addObject:v175];
            }

            v172 = [v171 countByEnumeratingWithState:&v359 objects:v386 count:16];
          }

          while (v172);
        }

        [(ARFrame *)v35 setDetectedPersonMetadata:v169];
      }
    }

    goto LABEL_139;
  }

  imageData6 = [v348 imageData];
  if (([imageData6 isSecondary] & 1) == 0)
  {

    goto LABEL_23;
  }

  imageData7 = [v348 imageData];
  isHighResolution = [imageData7 isHighResolution];

  if (isHighResolution)
  {
    goto LABEL_23;
  }

  dispatch_semaphore_wait(selfCopy->_resultDataOfSecondaryFrameContextsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_storeStrong(&selfCopy->resultDatasOfSecondaryFrameContexts, data);
  dispatch_semaphore_signal(selfCopy->_resultDataOfSecondaryFrameContextsSemaphore);
  dispatch_semaphore_wait(selfCopy->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v375 = 0u;
  v376 = 0u;
  v377 = 0u;
  v378 = 0u;
  anchorsToRemove = [v348 anchorsToRemove];
  v21 = [anchorsToRemove countByEnumeratingWithState:&v375 objects:v393 count:16];
  if (v21)
  {
    v22 = *v376;
    do
    {
      for (kk = 0; kk != v21; ++kk)
      {
        if (*v376 != v22)
        {
          objc_enumerationMutation(anchorsToRemove);
        }

        [(ARFrameContextHandler *)selfCopy->_frameContextHandler removeAnchor:*(*(&v375 + 1) + 8 * kk)];
      }

      v21 = [anchorsToRemove countByEnumeratingWithState:&v375 objects:v393 count:16];
    }

    while (v21);
  }

  anchorsToStopTracking = [v348 anchorsToStopTracking];
  v25 = [anchorsToStopTracking count] == 0;

  if (!v25)
  {
    frameContextHandler = selfCopy->_frameContextHandler;
    anchorsToStopTracking2 = [v348 anchorsToStopTracking];
    [(ARFrameContextHandler *)frameContextHandler stopTrackingAnchors:anchorsToStopTracking2];
  }

  dispatch_semaphore_signal(selfCopy->_frameContextHandlerSemaphore);
LABEL_266:
}

ARBody2D *__61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ARBody2D alloc];
  v4 = [[ARSkeleton2D alloc] initWithDetectedSkeleton:v2];

  v5 = [(ARBody2D *)v3 initWithSkeleton2D:v4];

  return v5;
}

uint64_t __61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

uint64_t __61__ARSession_technique_didOutputResultData_timestamp_context___block_invoke_311(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSession_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 32);
    v7 = 138543618;
    v8 = v4;
    v9 = 2048;
    v10 = v5;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_INFO, "%{public}@ <%p>: default relocalization timed out", &v7, 0x16u);
  }

  return [*(*(a1 + 32) + 8) clearMap];
}

- (void)_populateRawSceneUnderstandingDataForFrame:(id)frame fromResultData:(id)data
{
  frameCopy = frame;
  v5 = [data ar_firstObjectPassingTest:&__block_literal_global_316];
  v6 = [v5 resultDataOfClass:objc_opt_class()];
  v7 = [v6 ar_firstObjectPassingTest:&__block_literal_global_319];

  if (v7)
  {
    v8 = objc_alloc_init(ARRawSceneUnderstandingData);
    if ([v7 segmentationBuffer])
    {
      -[ARRawSceneUnderstandingData setSemanticSegmentationBuffer:](v8, "setSemanticSegmentationBuffer:", [v7 segmentationBuffer]);
      -[ARRawSceneUnderstandingData setSemanticSegmentationBufferSampledForDepth:](v8, "setSemanticSegmentationBufferSampledForDepth:", [v7 semanticsSampledForDepth]);
      -[ARRawSceneUnderstandingData setSemanticSegmentationConfidenceBuffer:](v8, "setSemanticSegmentationConfidenceBuffer:", [v7 confidenceBuffer]);
      -[ARRawSceneUnderstandingData setSemanticSegmentationConfidenceBufferSampledForDepth:](v8, "setSemanticSegmentationConfidenceBufferSampledForDepth:", [v7 confidenceSampledForDepth]);
      -[ARRawSceneUnderstandingData setSemanticSegmentationUncertaintyBuffer:](v8, "setSemanticSegmentationUncertaintyBuffer:", [v7 uncertaintyBuffer]);
    }

    v9 = [v5 resultDataOfClass:objc_opt_class()];
    v10 = [v9 ar_firstObjectPassingTest:&__block_literal_global_323];

    if (v10)
    {
      -[ARRawSceneUnderstandingData setDepthBuffer:](v8, "setDepthBuffer:", [v10 singleFrameDepthBuffer]);
      v11 = -[ARRawSceneUnderstandingData setDepthConfidenceBuffer:](v8, "setDepthConfidenceBuffer:", [v10 singleFrameConfidenceBuffer]);
    }

    if (ARDeviceSupportsJasper(v11, v12))
    {
      v13 = v10;
    }

    else
    {
      v13 = v7;
    }

    -[ARRawSceneUnderstandingData setNormalsBuffer:](v8, "setNormalsBuffer:", [v13 normalsBuffer]);
    v14 = [v5 resultDataOfClass:objc_opt_class()];
    firstObject = [v14 firstObject];

    if (firstObject)
    {
      objc_msgSend_timestamp(firstObject);
      [(ARRawSceneUnderstandingData *)v8 setTimestamp:?];
      -[ARRawSceneUnderstandingData setCapturedImage:](v8, "setCapturedImage:", [firstObject pixelBuffer]);
    }

    v16 = [v5 resultDataOfClass:objc_opt_class()];
    firstObject2 = [v16 firstObject];

    if (firstObject && firstObject2)
    {
      v18 = [[ARCamera alloc] initFromImageData:firstObject];
      [frameCopy referenceOriginTransform];
      v37 = v20;
      v38 = v19;
      v35 = v22;
      v36 = v21;
      [firstObject2 cameraTransform];
      v23 = 0;
      v40[0] = v24;
      v40[1] = v25;
      v40[2] = v26;
      v40[3] = v27;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      do
      {
        *(&v41 + v23 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, COERCE_FLOAT(v40[v23])), v37, *&v40[v23], 1), v36, v40[v23], 2), v35, v40[v23], 3);
        ++v23;
      }

      while (v23 != 4);
      [v18 setTransform:{*&v41, *&v42, *&v43, *&v44}];
      [(ARRawSceneUnderstandingData *)v8 setWideCamera:v18];
    }

    latestUltraWideImage = [firstObject latestUltraWideImage];

    if (latestUltraWideImage && firstObject2)
    {
      v29 = [ARCamera alloc];
      latestUltraWideImage2 = [firstObject latestUltraWideImage];
      v31 = [(ARCamera *)v29 initFromImageData:latestUltraWideImage2];

      [(ARRawSceneUnderstandingData *)v8 setUltraWideCamera:v31];
    }

    v32 = [v5 resultDataOfClass:objc_opt_class()];
    firstObject3 = [v32 firstObject];

    if (firstObject3)
    {
      latestResizedUltraWideImageData = [firstObject3 latestResizedUltraWideImageData];
      [(ARRawSceneUnderstandingData *)v8 setUltraWideDownscalingResultData:latestResizedUltraWideImageData];
    }

    [frameCopy setRawSceneUnderstandingData:v8];
  }
}

uint64_t __71__ARSession__populateRawSceneUnderstandingDataForFrame_fromResultData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 stillRequiresPostProcessing] & 1) == 0)
  {
    v6 = 1;
    *a4 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

BOOL __71__ARSession__populateRawSceneUnderstandingDataForFrame_fromResultData___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 source];
  if (v5 == 2)
  {
    *a4 = 1;
  }

  return v5 == 2;
}

BOOL __71__ARSession__populateRawSceneUnderstandingDataForFrame_fromResultData___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = [a2 source];
  if (v5 == 2)
  {
    *a4 = 1;
  }

  return v5 == 2;
}

- (__n128)_cameraTransformForResultData:(void *)data previousFrame:(void *)frame
{
  v53 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  frameCopy = frame;
  v40 = *(MEMORY[0x1E69E9B18] + 16);
  v42 = *MEMORY[0x1E69E9B18];
  v36 = *(MEMORY[0x1E69E9B18] + 48);
  v38 = *(MEMORY[0x1E69E9B18] + 32);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v8 = [dataCopy countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(dataCopy);
        }

        v12 = *(*(&v44 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 cameraTransform];
          v40 = v14;
          v42 = v13;
          v36 = v16;
          v38 = v15;
        }
      }

      v9 = [dataCopy countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v9);
  }

  v17 = [dataCopy count];
  if (v17)
  {
    goto LABEL_23;
  }

  if (frameCopy)
  {
    camera = [frameCopy camera];

    if (camera)
    {
      camera2 = [frameCopy camera];
      objc_msgSend_transform(camera2);
      v43 = v20;

      goto LABEL_27;
    }
  }

  if (ARShouldUseLogTypeError_onceToken_21 != -1)
  {
    [ARSession runWithConfiguration:options:];
  }

  v21 = ARShouldUseLogTypeError_internalOSVersion_21;
  v22 = _ARLogGeneral_9(v17);
  v23 = v22;
  if (v21 == 1)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543618;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v26 = "%{public}@ <%p>: prediction failure can lead to no resultData. Falling back to old camera transform";
      v27 = v23;
      v28 = OS_LOG_TYPE_ERROR;
LABEL_21:
      _os_log_impl(&dword_1C241C000, v27, v28, v26, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v29 = objc_opt_class();
    v25 = NSStringFromClass(v29);
    *buf = 138543618;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    *&buf[14] = self;
    v26 = "Error: %{public}@ <%p>: prediction failure can lead to no resultData. Falling back to old camera transform";
    v27 = v23;
    v28 = OS_LOG_TYPE_INFO;
    goto LABEL_21;
  }

LABEL_23:
  if ([frameCopy referenceOriginTransformAvailable])
  {
    [frameCopy referenceOriginTransform];
    v34 = 0;
    v48[0] = v43;
    v48[1] = v41;
    v48[2] = v39;
    v48[3] = v37;
    memset(buf, 0, sizeof(buf));
    v51 = 0u;
    v52 = 0u;
    do
    {
      *&buf[v34 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(v48[v34])), v31, *&v48[v34], 1), v32, v48[v34], 2), v33, v48[v34], 3);
      ++v34;
    }

    while (v34 != 4);
    v43 = *buf;
  }

LABEL_27:

  return v43;
}

- (void)_updateOriginTransformForFrame:(id)frame previousFrame:(id)previousFrame modifiers:(unint64_t)modifiers context:(id)context
{
  modifiersCopy = modifiers;
  v120 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  previousFrameCopy = previousFrame;
  contextCopy = context;
  if (![frameCopy isHighResolution] || (objc_msgSend(previousFrameCopy, "isHighResolution") & 1) != 0)
  {
    if (([contextCopy sessionTransformUpdated] & 1) == 0)
    {
      if ((modifiersCopy & 8) != 0)
      {
        [contextCopy resumeSessionCameraPositionAndHeading];
      }

      else if ((modifiersCopy & 4) != 0)
      {
        [contextCopy resumeSessionCameraPosition];
      }
    }

    if ([contextCopy didRelocalize])
    {
      worldMap = [contextCopy worldMap];

      if (worldMap)
      {
        worldMap2 = [contextCopy worldMap];
        [worldMap2 referenceOriginTransform];
        v122 = __invert_f4(v121);
        [frameCopy setWorldAlignmentTransform:{*v122.columns[0].i64, *v122.columns[1].i64, *v122.columns[2].i64, *v122.columns[3].i64}];

        [contextCopy resetSessionTransform];
      }
    }

    if ([contextCopy sessionTransformReset])
    {
      sessionOriginTransformAvailable = [previousFrameCopy sessionOriginTransformAvailable];
      sessionOriginTransformAvailable2 = [previousFrameCopy sessionOriginTransformAvailable];
LABEL_46:
      worldAlignmentTransformAvailable = [frameCopy worldAlignmentTransformAvailable];
      if (modifiersCopy & 1) != 0 || (worldAlignmentTransformAvailable)
      {
        if ([(ARConfiguration *)self->_configurationInternal worldAlignment]!= ARWorldAlignmentCamera)
        {
          goto LABEL_63;
        }
      }

      else
      {
        if ([previousFrameCopy worldAlignmentTransformAvailable])
        {
          [previousFrameCopy worldAlignmentTransform];
          [frameCopy setWorldAlignmentTransform:?];
        }

        if ([(ARConfiguration *)self->_configurationInternal worldAlignment]!= ARWorldAlignmentCamera)
        {
          if ((sessionOriginTransformAvailable & 1) == 0)
          {
            if ([previousFrameCopy referenceOriginTransformAvailable])
            {
              [previousFrameCopy referenceOriginTransform];
              [frameCopy setReferenceOriginTransform:?];
              v61 = 0;
              goto LABEL_75;
            }

            v61 = 0;
LABEL_64:
            if ([frameCopy sessionOriginTransformAvailable] && objc_msgSend(frameCopy, "worldAlignmentTransformAvailable"))
            {
              [frameCopy sessionOriginTransform];
              v113 = v75;
              v117 = v74;
              v105 = v77;
              v109 = v76;
              [frameCopy worldAlignmentTransform];
              v133 = __invert_f4(v132);
              v78 = 0;
              v118 = v133;
              memset(&buf, 0, sizeof(buf));
              do
              {
                buf.columns[v78] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v117, COERCE_FLOAT(*&v118.columns[v78])), v113, *v118.columns[v78].f32, 1), v109, v118.columns[v78], 2), v105, v118.columns[v78], 3);
                ++v78;
              }

              while (v78 != 4);
              v79.columns[2].i64[0] = buf.columns[2].i64[0];
              v79.columns[3].i64[0] = buf.columns[3].i64[0];
              v79.columns[0].i64[0] = buf.columns[0].i64[0];
              v79.columns[1].i64[0] = buf.columns[1].i64[0];
            }

            else if ([frameCopy sessionOriginTransformAvailable])
            {
              [frameCopy sessionOriginTransform];
            }

            else
            {
              if (![frameCopy worldAlignmentTransformAvailable])
              {
                goto LABEL_75;
              }

              [frameCopy worldAlignmentTransform];
              v79 = __invert_f4(v134);
            }

            [frameCopy setReferenceOriginTransform:{*v79.columns[0].i64, *v79.columns[1].i64, *v79.columns[2].i64, *v79.columns[3].i64}];
LABEL_75:
            [frameCopy setReferenceOriginTransformUpdated:v61];
            v80 = [frameCopy setReferenceOriginChanged:sessionOriginTransformAvailable2 & 1];
            if (sessionOriginTransformAvailable2)
            {
              v81 = _ARLogSession_0(v80);
              if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
              {
                v82 = objc_opt_class();
                v83 = NSStringFromClass(v82);
                [frameCopy referenceOriginTransform];
                v88 = ARMatrix4x4Description(0, v84, v85, v86, v87);
                buf.columns[0].i32[0] = 138543874;
                *(buf.columns[0].i64 + 4) = v83;
                buf.columns[0].i16[6] = 2048;
                *(&buf.columns[0].i64[1] + 6) = self;
                buf.columns[1].i16[3] = 2112;
                buf.columns[1].i64[1] = v88;
                _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reference origin changed %@", &buf, 0x20u);
              }
            }

            goto LABEL_79;
          }

LABEL_63:
          v61 = 1;
          goto LABEL_64;
        }
      }

      camera = [frameCopy camera];
      objc_msgSend_transform(camera);
      v127 = __invert_f4(v126);
      [frameCopy setReferenceOriginTransform:{*v127.columns[0].i64, *v127.columns[1].i64, *v127.columns[2].i64, *v127.columns[3].i64}];

      if ((sessionOriginTransformAvailable2 & 1) == 0)
      {
        [frameCopy setReferenceOriginTransformUpdated:1];
        [frameCopy setReferenceOriginChanged:0];
        goto LABEL_79;
      }

      [previousFrameCopy sessionOriginTransform];
      v111 = v64;
      v115 = v63;
      v103 = v66;
      v107 = v65;
      [frameCopy sessionOriginTransform];
      v129 = __invert_f4(v128);
      v67 = 0;
      v118 = v129;
      memset(&buf, 0, sizeof(buf));
      do
      {
        buf.columns[v67] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v115, COERCE_FLOAT(*&v118.columns[v67])), v111, *v118.columns[v67].f32, 1), v107, v118.columns[v67], 2), v103, v118.columns[v67], 3);
        ++v67;
      }

      while (v67 != 4);
      v98 = buf.columns[1];
      v101 = buf.columns[0];
      v92 = buf.columns[3];
      v95 = buf.columns[2];
      [frameCopy worldAlignmentTransform];
      v112 = v69;
      v116 = v68;
      v104 = v71;
      v108 = v70;
      [previousFrameCopy worldAlignmentTransform];
      v131 = __invert_f4(v130);
      v72 = 0;
      v118 = v131;
      memset(&buf, 0, sizeof(buf));
      do
      {
        buf.columns[v72] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v101, COERCE_FLOAT(*&v118.columns[v72])), v98, *v118.columns[v72].f32, 1), v95, v118.columns[v72], 2), v92, v118.columns[v72], 3);
        ++v72;
      }

      while (v72 != 4);
      v73 = 0;
      v118 = buf;
      memset(&buf, 0, sizeof(buf));
      do
      {
        buf.columns[v73] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v116, COERCE_FLOAT(*&v118.columns[v73])), v112, *v118.columns[v73].f32, 1), v108, v118.columns[v73], 2), v104, v118.columns[v73], 3);
        ++v73;
      }

      while (v73 != 4);
      [frameCopy setReferenceOriginDelta:{*buf.columns[0].i64, *buf.columns[1].i64, *buf.columns[2].i64, *buf.columns[3].i64}];
      v61 = 1;
      goto LABEL_75;
    }

    sessionTransformUpdated = [contextCopy sessionTransformUpdated];
    sessionOriginTransformAvailable2 = modifiersCopy >> 1;
    if (sessionTransformUpdated)
    {
      [contextCopy sessionTransform];
      v17 = __invert_f4(v123);
      if (!previousFrameCopy)
      {
        sessionOriginTransformAvailable = 1;
        goto LABEL_45;
      }

      *&v106 = v17.columns[1].i64[0];
      *&v110 = v17.columns[2].i64[0];
      *&v114 = v17.columns[0].i64[0];
    }

    else
    {
      if (!previousFrameCopy)
      {
        v110 = *(MEMORY[0x1E69E9B18] + 32);
        v114 = *MEMORY[0x1E69E9B18];
        v102 = *(MEMORY[0x1E69E9B18] + 48);
        v106 = *(MEMORY[0x1E69E9B18] + 16);
LABEL_44:
        sessionOriginTransformAvailable3 = [previousFrameCopy sessionOriginTransformAvailable];
        sessionOriginTransformAvailable = 0;
        v17.columns[3].i64[0] = v102;
        v17.columns[1].i64[0] = v106;
        v17.columns[2].i64[0] = v110;
        v17.columns[0].i64[0] = v114;
        if (!sessionOriginTransformAvailable3)
        {
          goto LABEL_46;
        }

LABEL_45:
        [frameCopy setSessionOriginTransform:{*v17.columns[0].i64, *v17.columns[1].i64, *v17.columns[2].i64, *v17.columns[3].i64}];
        goto LABEL_46;
      }

      [previousFrameCopy sessionOriginTransform];
      *&v110 = v17.columns[2].i64[0];
      *&v114 = v17.columns[0].i64[0];
      *&v106 = v17.columns[1].i64[0];
    }

    *&v102 = v17.columns[3].i64[0];
    if (([contextCopy sessionTransformShouldResumeCameraHeading] & 1) != 0 || objc_msgSend(contextCopy, "sessionTransformShouldResumeCameraPosition"))
    {
      camera2 = [previousFrameCopy camera];
      objc_msgSend_transform(camera2);
      v93 = v21;
      v96 = v20;
      v89 = v22;
      v99 = v23;

      if ([previousFrameCopy worldAlignment] == 2)
      {
        [previousFrameCopy gravityAlignedReferenceOriginTransform];
        v97 = v25;
        v100 = v24;
        v90 = v27;
        v94 = v26;
        [previousFrameCopy referenceOriginTransform];
        v125 = __invert_f4(v124);
        v28 = 0;
        v118 = v125;
        memset(&buf, 0, sizeof(buf));
        do
        {
          buf.columns[v28] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*&v118.columns[v28])), v97, *v118.columns[v28].f32, 1), v94, v118.columns[v28], 2), v90, v118.columns[v28], 3);
          ++v28;
        }

        while (v28 != 4);
        v93 = buf.columns[1];
        v96 = buf.columns[0];
        v89 = buf.columns[2];
        v99 = buf.columns[3];
      }

      if ([contextCopy sessionTransformShouldResumeCameraHeading])
      {
        v29.n128_f64[0] = AREulerAnglesFromMatrix(v96, v93, v91);
        v91 = v29;
        v31 = __sincosf_stret(vmuls_lane_f32(0.5, v29.n128_u64[0], 1));
        cosval = v31.__cosval;
        _Q0 = vmulq_n_f32(xmmword_1C25C8BC0, v31.__sinval);
        _S2 = _Q0.i32[1];
        _S4 = _Q0.i32[2];
        __asm { FMLS            S3, S4, V0.S[2] }

        v40 = vmuls_lane_f32(v31.__cosval, _Q0, 2);
        v41 = vmuls_lane_f32(v31.__cosval, *_Q0.f32, 1);
        *&v42 = _S3 + (cosval * cosval);
        *(&v42 + 1) = (v40 + (_Q0.f32[0] * _Q0.f32[1])) + (v40 + (_Q0.f32[0] * _Q0.f32[1]));
        *&v114 = v42;
        v43 = -(v40 - (_Q0.f32[0] * _Q0.f32[1])) - (v40 - (_Q0.f32[0] * _Q0.f32[1]));
        __asm
        {
          FMLA            S5, S2, V0.S[1]
          FMLA            S6, S4, V0.S[1]
        }

        *&v46 = v43;
        *(&v46 + 1) = (_S5 + (cosval * cosval)) - (_Q0.f32[0] * _Q0.f32[0]);
        __asm
        {
          FMLA            S5, S4, V0.S[1]
          FMLA            S1, S4, V0.S[2]
          FMLS            S1, S2, V0.S[1]
        }

        *&v50 = (v41 + (_Q0.f32[2] * _Q0.f32[0])) + (v41 + (_Q0.f32[2] * _Q0.f32[0]));
        *(&v50 + 1) = _S5 + _S5;
        *&v106 = v46;
        *&v110 = v50;
        v52 = _ARLogSession_0(v51);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = objc_opt_class();
          v54 = NSStringFromClass(v53);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v54;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = self;
          buf.columns[1].i16[3] = 2048;
          *&buf.columns[1].i64[1] = v91.n128_f32[1] * 180.0 / 3.14159265;
          _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Updated session heading (%0.2f°)", &buf, 0x20u);
        }

        *&v102 = 0;
      }

      sessionTransformShouldResumeCameraPosition = [contextCopy sessionTransformShouldResumeCameraPosition];
      if (sessionTransformShouldResumeCameraPosition)
      {
        v56 = _ARLogSession_0(sessionTransformShouldResumeCameraPosition);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
        {
          v57 = objc_opt_class();
          v58 = NSStringFromClass(v57);
          buf.columns[0].i32[0] = 138544386;
          *(buf.columns[0].i64 + 4) = v58;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = self;
          buf.columns[1].i16[3] = 2048;
          *&buf.columns[1].i64[1] = v99.f32[0];
          buf.columns[2].i16[0] = 2048;
          *(buf.columns[2].i64 + 2) = v99.f32[1];
          buf.columns[2].i16[5] = 2048;
          *(&buf.columns[2].i64[1] + 4) = v99.f32[2];
          _os_log_impl(&dword_1C241C000, v56, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Updated session origin (%f, %f, %f)", &buf, 0x34u);
        }

        sessionOriginTransformAvailable2 = 1;
        sessionOriginTransformAvailable = 1;
        v17.columns[2].i64[0] = v110;
        v17.columns[0].i64[0] = v114;
        v17.columns[1].i64[0] = v106;
        v17.columns[3].i64[0] = v99.i64[0];
        goto LABEL_45;
      }

      sessionOriginTransformAvailable2 = 1;
      v17.columns[3].i64[0] = v102;
      sessionOriginTransformAvailable = 1;
      goto LABEL_43;
    }

    if (sessionTransformUpdated)
    {
      sessionOriginTransformAvailable = 1;
      v17.columns[3].i64[0] = v102;
LABEL_43:
      v17.columns[2].i64[0] = v110;
      v17.columns[0].i64[0] = v114;
      v17.columns[1].i64[0] = v106;
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  if ([previousFrameCopy sessionOriginTransformAvailable])
  {
    [previousFrameCopy sessionOriginTransform];
    [frameCopy setSessionOriginTransform:?];
  }

  if ([previousFrameCopy worldAlignmentTransformAvailable])
  {
    [previousFrameCopy worldAlignmentTransform];
    [frameCopy setWorldAlignmentTransform:?];
  }

  if ([previousFrameCopy referenceOriginTransformAvailable])
  {
    [previousFrameCopy referenceOriginTransform];
    [frameCopy setReferenceOriginTransform:?];
  }

LABEL_79:
}

- (void)_updateFeaturePointsForFrame:(id)frame previousFrame:(id)previousFrame trackingStateChanged:(BOOL)changed context:(id)context
{
  changedCopy = changed;
  v47 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  previousFrameCopy = previousFrame;
  referenceOriginChanged = [frameCopy referenceOriginChanged];
  if (!referenceOriginChanged)
  {
    referenceFeaturePoints = [frameCopy referenceFeaturePoints];
    if ([referenceFeaturePoints count])
    {
      cachedPointClouds = [previousFrameCopy cachedPointClouds];
      referenceFeaturePoints2 = [frameCopy referenceFeaturePoints];
      v22 = [cachedPointClouds containsObject:referenceFeaturePoints2] ^ 1;
    }

    else
    {
      v22 = 0;
    }

    if (changedCopy)
    {
      camera = [frameCopy camera];
      trackingStateReason = [camera trackingStateReason];

      if (trackingStateReason == 1)
      {

        previousFrameCopy = 0;
      }
    }

    if (v22)
    {
      cachedPointClouds2 = [previousFrameCopy cachedPointClouds];
      v26 = [cachedPointClouds2 mutableCopy];
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = objc_opt_new();
      }

      v34 = v28;

      referenceFeaturePoints3 = [frameCopy referenceFeaturePoints];
      [v34 addObject:referenceFeaturePoints3];

      if ([v34 count] > self->_featurePointAccumulationCount)
      {
        [v34 removeObjectAtIndex:0];
      }

      [frameCopy setCachedPointClouds:v34];
      v36 = [ARPointCloud concatPointClouds:v34];
      [frameCopy setReferenceFeaturePoints:v36];

      [frameCopy referenceOriginTransformUpdated];
      goto LABEL_27;
    }

    referenceFeaturePoints4 = [frameCopy referenceFeaturePoints];
    if (!referenceFeaturePoints4)
    {
      referenceFeaturePoints4 = [frameCopy camera];
      if ([referenceFeaturePoints4 trackingState] != 2)
      {
        camera2 = [frameCopy camera];
        if ([camera2 trackingStateReason] != 4)
        {
          camera3 = [frameCopy camera];
          trackingStateReason2 = [camera3 trackingStateReason];

          if (trackingStateReason2 != 1)
          {
            [frameCopy setFeaturePoints:0];
LABEL_21:
            if (![frameCopy referenceOriginTransformUpdated])
            {
              goto LABEL_31;
            }

            goto LABEL_27;
          }

LABEL_20:
          cachedPointClouds3 = [previousFrameCopy cachedPointClouds];
          [frameCopy setCachedPointClouds:cachedPointClouds3];

          referenceFeaturePoints5 = [previousFrameCopy referenceFeaturePoints];
          [frameCopy setReferenceFeaturePoints:referenceFeaturePoints5];

          featurePoints = [previousFrameCopy featurePoints];
          [frameCopy setFeaturePoints:featurePoints];

          goto LABEL_21;
        }
      }
    }

    goto LABEL_20;
  }

  v12 = _ARLogSession_0(referenceOriginChanged);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    *buf = 138543618;
    v44 = v14;
    v45 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Removing previous cached feature points, because reference origin changed", buf, 0x16u);
  }

  referenceFeaturePoints6 = [frameCopy referenceFeaturePoints];

  if (referenceFeaturePoints6)
  {
    referenceFeaturePoints7 = [frameCopy referenceFeaturePoints];
    v42 = referenceFeaturePoints7;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
    v18 = [v17 mutableCopy];
    [frameCopy setCachedPointClouds:v18];

LABEL_27:
    referenceOriginTransformAvailable = [frameCopy referenceOriginTransformAvailable];
    referenceFeaturePoints8 = [frameCopy referenceFeaturePoints];
    if (referenceOriginTransformAvailable)
    {
      [frameCopy referenceOriginTransform];
      v39 = [referenceFeaturePoints8 pointCloudByApplyingTransform:?];
      [frameCopy setFeaturePoints:v39];
    }

    else
    {
      [frameCopy setFeaturePoints:referenceFeaturePoints8];
    }
  }

LABEL_31:
}

- (void)setGeoTrackingTechnique:(id)technique
{
  v23 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  geoTrackingTechnique = self->_geoTrackingTechnique;
  v7 = _ARLogSession_0(techniqueCopy);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (geoTrackingTechnique == techniqueCopy)
  {
    if (v8)
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138543874;
      v16 = v14;
      v17 = 2048;
      selfCopy2 = self;
      v19 = 2112;
      v20 = techniqueCopy;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: The specified geo tracking technique is already set: %@", &v15, 0x20u);
    }
  }

  else
  {
    p_geoTrackingTechnique = &self->_geoTrackingTechnique;
    if (v8)
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = self->_geoTrackingTechnique;
      v15 = 138544130;
      v16 = v11;
      v17 = 2048;
      selfCopy2 = self;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = techniqueCopy;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Changing geo tracking technique - old: %@, new: %@", &v15, 0x2Au);
    }

    [(ARRemoteTechnique *)*p_geoTrackingTechnique setActive:0];
    objc_storeStrong(&self->_geoTrackingTechnique, technique);
    [(ARRemoteTechnique *)*p_geoTrackingTechnique setActive:1];
  }
}

- (void)_lookupAltitudeForAnchor:(id)anchor
{
  anchorCopy = anchor;
  dispatch_assert_queue_V2(self->_stateQueue);
  identifier = [anchorCopy identifier];
  v6 = [(ARSession *)self _getGeoAnchorAltitude:identifier];
  if (v6)
  {
  }

  else
  {
    isAltitudeLookupInProgress = [anchorCopy isAltitudeLookupInProgress];

    if ((isAltitudeLookupInProgress & 1) == 0)
    {
      [anchorCopy setIsAltitudeLookupInProgress:1];
      [anchorCopy coordinate];
      v9 = v8;
      [anchorCopy coordinate];
      v11 = CLLocationCoordinate2DMake(v9, v10);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __38__ARSession__lookupAltitudeForAnchor___block_invoke;
      v12[3] = &unk_1E817CE18;
      v12[4] = self;
      v13 = anchorCopy;
      v14 = v11;
      [(ARSession *)self _lookupAltitudeAtCoordinate:v12 completionHandler:v11.latitude, v11.longitude];
    }
  }
}

void __38__ARSession__lookupAltitudeForAnchor___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    [v3 uncertainty];
    if (v5 == -1.0)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    v7 = [ARAltitudeUndulationPair alloc];
    [v4 altitude];
    v9 = v8;
    [v4 undulation];
    v11 = v10;
    v12 = v7;
    v13 = v9;
    v14 = 0;
    v15 = v6;
    goto LABEL_25;
  }

  if (ARShouldUseLogTypeError_onceToken_21 != -1)
  {
    [ARSession updateWithCollaborationData:];
  }

  v16 = ARShouldUseLogTypeError_internalOSVersion_21;
  v17 = _ARLogSession_0(v3);
  v18 = v17;
  if (v16 == 1)
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = *(a1 + 32);
    *v43 = 138543618;
    *&v43[4] = v20;
    *&v43[12] = 2048;
    *&v43[14] = v21;
    v22 = "%{public}@ <%p>: Unable to look up altitude or undulation for anchor";
    v23 = v18;
    v24 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v25 = objc_opt_class();
    v20 = NSStringFromClass(v25);
    v26 = *(a1 + 32);
    *v43 = 138543618;
    *&v43[4] = v20;
    *&v43[12] = 2048;
    *&v43[14] = v26;
    v22 = "Error: %{public}@ <%p>: Unable to look up altitude or undulation for anchor";
    v23 = v18;
    v24 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v23, v24, v22, v43, 0x16u);

LABEL_14:
  if ([*(a1 + 40) altitudeSource] != 3)
  {
LABEL_24:
    v12 = [ARAltitudeUndulationPair alloc];
    v13 = NAN;
    v11 = NAN;
    v14 = 1;
    v15 = 0;
LABEL_25:
    v40 = [(ARAltitudeUndulationPair *)v12 initWithAltitude:v14 undulation:v15 lookupFailed:v13 source:v11, *v43, *&v43[8], *&v44];
    goto LABEL_26;
  }

  v28 = ARGetFallbackUndulationValue(*(a1 + 48), *(a1 + 56));
  if (ARShouldUseLogTypeError_onceToken_21 != -1)
  {
    [ARSession runWithConfiguration:options:];
  }

  v29 = ARShouldUseLogTypeError_internalOSVersion_21;
  v30 = _ARLogSession_0(v27);
  v31 = v30;
  if (v29 == 1)
  {
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_23;
    }

    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    v34 = *(a1 + 32);
    *v43 = 138543875;
    *&v43[4] = v33;
    *&v43[12] = 2048;
    *&v43[14] = v34;
    *&v43[22] = 2049;
    v44 = v28;
    v35 = "%{public}@ <%p>: Falling back to hardcoded undulation value: %{private}f";
    v36 = v31;
    v37 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v38 = objc_opt_class();
    v33 = NSStringFromClass(v38);
    v39 = *(a1 + 32);
    *v43 = 138543875;
    *&v43[4] = v33;
    *&v43[12] = 2048;
    *&v43[14] = v39;
    *&v43[22] = 2049;
    v44 = v28;
    v35 = "Error: %{public}@ <%p>: Falling back to hardcoded undulation value: %{private}f";
    v36 = v31;
    v37 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v36, v37, v35, v43, 0x20u);

LABEL_23:
  v40 = [[ARAltitudeUndulationPair alloc] initWithAltitude:0 undulation:3 lookupFailed:0.0 source:v28];
  if (!v40)
  {
    goto LABEL_24;
  }

LABEL_26:
  v41 = *(a1 + 32);
  v42 = [*(a1 + 40) identifier];
  [v41 _setGeoAnchorAltitude:v42 pair:v40];

  [*(a1 + 40) setIsAltitudeLookupInProgress:0];
}

- (id)_updateAnchorsForFrame:(id)frame resultDatas:(id)datas context:(id)context
{
  v5 = MEMORY[0x1EEE9AC00](self, a2, frame, datas, context);
  v7 = v6;
  v9 = v8;
  v426 = v5;
  v529 = *MEMORY[0x1E69E9840];
  v11 = v10;
  v364 = v9;
  v12 = v7;
  if ([v11 referenceOriginTransformAvailable])
  {
    [v11 referenceOriginTransform];
    v532 = __invert_f4(v531);
    v425 = v532.columns[0];
    v420 = v532.columns[1];
    v415 = v532.columns[3];
    v417 = v532.columns[2];
  }

  else
  {
    v425 = *MEMORY[0x1E69E9B18];
    v420 = *(MEMORY[0x1E69E9B18] + 16);
    v415 = *(MEMORY[0x1E69E9B18] + 48);
    v417 = *(MEMORY[0x1E69E9B18] + 32);
  }

  anchors = [v11 anchors];
  privateAnchors = [v11 privateAnchors];
  v15 = [anchors arrayByAddingObjectsFromArray:privateAnchors];

  v16 = ARDictionaryFromAnchors(v15);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  v19 = *(v426 + 128);
  v423 = v11;
  v363 = v15;
  if (v19 && ([v19 worldTrackingState], v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
    worldTrackingState = [v11 worldTrackingState];
    [worldTrackingState originTimestamp];
    v23 = v22;
    worldTrackingState2 = [*(v426 + 128) worldTrackingState];
    [worldTrackingState2 originTimestamp];
    v381 = v23 > v25;
  }

  else
  {
    v381 = 0;
  }

  v414 = v12;
  v502 = 0u;
  v501 = 0u;
  v500 = 0u;
  v499 = 0u;
  v424 = v16;
  allValues = [v16 allValues];
  v27 = [allValues countByEnumeratingWithState:&v499 objects:v525 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v500;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v500 != v29)
        {
          objc_enumerationMutation(allValues);
        }

        v31 = *(*(&v499 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v32 = v31;
          if (([v32 isAltitudeAvailable] & 1) == 0)
          {
            identifier = [v32 identifier];
            v34 = [v426 _getGeoAnchorAltitude:identifier];

            if (v34)
            {
              if ([v34 lookupFailed])
              {
                identifier2 = [v32 identifier];
                [dictionary3 setObject:v32 forKey:identifier2];
              }

              else
              {
                source = [v34 source];
                [v34 altitude];
                v38 = v37;
                if ([v32 altitudeSource] == 3)
                {
                  [v32 altitude];
                  v38 = v39;
                  source = 3;
                }

                [v32 coordinate];
                v41 = v40;
                v43 = v42;
                [v34 undulation];
                [v32 initWithCoordinate:source altitude:1 altitudeSource:v41 isAltitudeAvailable:v43 undulation:{v38, v44}];
              }
            }
          }
        }
      }

      v28 = [allValues countByEnumeratingWithState:&v499 objects:v525 count:16];
    }

    while (v28);
  }

  v422 = dictionary2;
  v419 = dictionary;

  v498 = 0u;
  v497 = 0u;
  v496 = 0u;
  v495 = 0u;
  allValues2 = [dictionary3 allValues];
  v46 = [allValues2 countByEnumeratingWithState:&v495 objects:v524 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v496;
    v49 = &ARTechnique_Image_to_Result_Frame_keyToCode;
    do
    {
      v50 = 0;
      do
      {
        if (*v496 != v48)
        {
          objc_enumerationMutation(allValues2);
        }

        v51 = *(*(&v495 + 1) + 8 * v50);
        if (v49[204] != -1)
        {
          [ARSession runWithConfiguration:options:];
        }

        v52 = ARShouldUseLogTypeError_internalOSVersion_21;
        v53 = _ARLogSession_0(v46);
        v54 = v53;
        if (v52 == 1)
        {
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_38;
          }

          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          identifier3 = [v51 identifier];
          *buf = 138543874;
          *&buf[4] = v56;
          *&buf[12] = 2048;
          *&buf[14] = v426;
          v49 = &ARTechnique_Image_to_Result_Frame_keyToCode;
          *&buf[22] = 2112;
          *&buf[24] = identifier3;
          v58 = v54;
          v59 = OS_LOG_TYPE_ERROR;
          v60 = "%{public}@ <%p>: Failed to look up geo anchor altitude. Removing anchor: %@";
        }

        else
        {
          if (!os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
          {
            goto LABEL_38;
          }

          v61 = objc_opt_class();
          v56 = NSStringFromClass(v61);
          identifier3 = [v51 identifier];
          *buf = 138543874;
          *&buf[4] = v56;
          *&buf[12] = 2048;
          *&buf[14] = v426;
          v49 = &ARTechnique_Image_to_Result_Frame_keyToCode;
          *&buf[22] = 2112;
          *&buf[24] = identifier3;
          v58 = v54;
          v59 = OS_LOG_TYPE_INFO;
          v60 = "Error: %{public}@ <%p>: Failed to look up geo anchor altitude. Removing anchor: %@";
        }

        _os_log_impl(&dword_1C241C000, v58, v59, v60, buf, 0x20u);

LABEL_38:
        identifier4 = [v51 identifier];
        [v424 removeObjectForKey:identifier4];

        identifier5 = [v51 identifier];
        [v426 _removeGeoAnchorAltitude:identifier5];

        ++v50;
      }

      while (v47 != v50);
      v46 = [allValues2 countByEnumeratingWithState:&v495 objects:v524 count:16];
      v47 = v46;
    }

    while (v46);
  }

  v65 = v423;
  v64 = v424;
  v66 = v414;
  if (v381)
  {
    v494 = 0u;
    v493 = 0u;
    v492 = 0u;
    v491 = 0u;
    allValues3 = [v424 allValues];
    v68 = [allValues3 countByEnumeratingWithState:&v491 objects:v523 count:16];
    if (v68)
    {
      v69 = v68;
      v70 = *v492;
      do
      {
        for (j = 0; j != v69; ++j)
        {
          if (*v492 != v70)
          {
            objc_enumerationMutation(allValues3);
          }

          v72 = *(*(&v491 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v73 = [v72 copy];
            identifier6 = [v73 identifier];
            [v424 setObject:v73 forKey:identifier6];

            v75 = v73;
            [v75 setIsTracked:0];
            identifier7 = [v75 identifier];
            [v422 setObject:v75 forKey:identifier7];
          }
        }

        v69 = [allValues3 countByEnumeratingWithState:&v491 objects:v523 count:16];
      }

      while (v69);
    }
  }

  if ([v423 referenceOriginTransformUpdated])
  {
    v490 = 0u;
    v489 = 0u;
    v488 = 0u;
    v487 = 0u;
    allValues4 = [v424 allValues];
    v78 = [allValues4 countByEnumeratingWithState:&v487 objects:v522 count:16];
    v79 = v381;
    if (!v78)
    {
      goto LABEL_85;
    }

    v80 = v78;
    v81 = *v488;
    v377 = *v488;
    while (1)
    {
      v82 = 0;
      v385 = v80;
      do
      {
        if (*v488 != v81)
        {
          objc_enumerationMutation(allValues4);
        }

        v83 = *(*(&v487 + 1) + 8 * v82);
        if (!v79 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v84 = v83) == 0)
        {
          v84 = [v83 copy];
          identifier8 = [v84 identifier];
          [v424 setObject:v84 forKey:identifier8];
        }

        if ([v414 didRelocalize])
        {
          lastUpdateTimestamp = [v84 lastUpdateTimestamp];
          if (v87 > *(v426 + 280))
          {
            v88 = _ARLogSession_0(lastUpdateTimestamp);
            if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
            {
              v89 = objc_opt_class();
              v90 = NSStringFromClass(v89);
              identifier9 = [v84 identifier];
              [v414 relocalizationDeltaTransform];
              ARMatrix4x4Description(0, v92, v93, v94, v95);
              v97 = v96 = allValues4;
              *buf = 138544130;
              *&buf[4] = v90;
              *&buf[12] = 2048;
              *&buf[14] = v426;
              v79 = v381;
              *&buf[22] = 2112;
              *&buf[24] = identifier9;
              LOWORD(v527) = 2112;
              *(&v527 + 2) = v97;
              _os_log_impl(&dword_1C241C000, v88, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Relocalization - Anchor (%@) left in place, delta %@", buf, 0x2Au);

              v80 = v385;
              allValues4 = v96;
              v81 = v377;

              v65 = v423;
            }

            [v414 relocalizationDeltaTransform];
            *v402 = v99;
            v409 = v98;
            v389 = v101;
            v396 = v100;
            [v84 referenceTransform];
            v102 = 0;
            v503 = v103;
            v504 = v104;
            v505 = v105;
            v506 = v106;
            memset(buf, 0, sizeof(buf));
            v527 = 0u;
            v528 = 0u;
            do
            {
              *&buf[v102] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v409, COERCE_FLOAT(*(&v503 + v102))), *v402, *(&v503 + v102), 1), v396, *(&v503 + v102), 2), v389, *(&v503 + v102), 3);
              v102 += 16;
            }

            while (v102 != 64);
            [v84 setReferenceTransform:{*buf, *&buf[16], *&v527, *&v528}];
            [v65 referenceOriginTransform];
            *v403 = v108;
            v410 = v107;
            v390 = v110;
            v397 = v109;
            [v84 referenceTransform];
            v111 = 0;
            v503 = v112;
            v504 = v113;
            v505 = v114;
            v506 = v115;
            memset(buf, 0, sizeof(buf));
            v527 = 0u;
            v528 = 0u;
            do
            {
              *&buf[v111] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v410, COERCE_FLOAT(*(&v503 + v111))), *v403, *(&v503 + v111), 1), v397, *(&v503 + v111), 2), v390, *(&v503 + v111), 3);
              v111 += 16;
            }

            while (v111 != 64);
LABEL_78:
            [v84 setTransform:{*buf, *&buf[16], *&v527, *&v528}];
            identifier10 = [v84 identifier];
            [v422 setObject:v84 forKey:identifier10];

            goto LABEL_79;
          }
        }

        if (![v65 referenceOriginChanged] || (objc_msgSend(v65, "referenceOriginDeltaAvailable") & 1) != 0)
        {
          if ([v65 referenceOriginDeltaAvailable])
          {
            [v65 referenceOriginDelta];
            *v404 = v117;
            v411 = v116;
            v391 = v119;
            v398 = v118;
            [v84 referenceTransform];
            v120 = 0;
            v503 = v121;
            v504 = v122;
            v505 = v123;
            v506 = v124;
            memset(buf, 0, sizeof(buf));
            v527 = 0u;
            v528 = 0u;
            do
            {
              *&buf[v120] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v411, COERCE_FLOAT(*(&v503 + v120))), *v404, *(&v503 + v120), 1), v398, *(&v503 + v120), 2), v391, *(&v503 + v120), 3);
              v120 += 16;
            }

            while (v120 != 64);
            [v84 setReferenceTransform:{*buf, *&buf[16], *&v527, *&v528}];
          }

          [v65 referenceOriginTransform];
          *v405 = v126;
          v412 = v125;
          v392 = v128;
          v399 = v127;
          [v84 referenceTransform];
          v129 = 0;
          v503 = v130;
          v504 = v131;
          v505 = v132;
          v506 = v133;
          memset(buf, 0, sizeof(buf));
          v527 = 0u;
          v528 = 0u;
          do
          {
            *&buf[v129] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v412, COERCE_FLOAT(*(&v503 + v129))), *v405, *(&v503 + v129), 1), v399, *(&v503 + v129), 2), v392, *(&v503 + v129), 3);
            v129 += 16;
          }

          while (v129 != 64);
          goto LABEL_78;
        }

        objc_msgSend_transform(v84);
        v135 = 0;
        v503 = v136;
        v504 = v137;
        v505 = v138;
        v506 = v139;
        memset(buf, 0, sizeof(buf));
        v527 = 0u;
        v528 = 0u;
        do
        {
          *&buf[v135] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, COERCE_FLOAT(*(&v503 + v135))), v420, *(&v503 + v135), 1), v417, *(&v503 + v135), 2), v415, *(&v503 + v135), 3);
          v135 += 16;
        }

        while (v135 != 64);
        [v84 setReferenceTransform:{*buf, *&buf[16], *&v527, *&v528}];
LABEL_79:

        ++v82;
      }

      while (v82 != v80);
      v140 = [allValues4 countByEnumeratingWithState:&v487 objects:v522 count:16];
      v80 = v140;
      if (!v140)
      {
LABEL_85:

        v66 = v414;
        v64 = v424;
        break;
      }
    }
  }

  v486 = 0u;
  v485 = 0u;
  v484 = 0u;
  v483 = 0u;
  anchorsToRemove = [v66 anchorsToRemove];
  v142 = [anchorsToRemove countByEnumeratingWithState:&v483 objects:v521 count:16];
  v143 = dictionary3;
  if (v142)
  {
    v144 = v142;
    v145 = *v484;
    do
    {
      for (k = 0; k != v144; ++k)
      {
        if (*v484 != v145)
        {
          objc_enumerationMutation(anchorsToRemove);
        }

        identifier11 = [*(*(&v483 + 1) + 8 * k) identifier];
        v148 = [v64 objectForKey:identifier11];

        if (v148)
        {
          identifier12 = [v148 identifier];
          [dictionary3 setObject:v148 forKey:identifier12];

          identifier13 = [v148 identifier];
          [v64 removeObjectForKey:identifier13];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            identifier14 = [v148 identifier];
            [v426 _removeGeoAnchorAltitude:identifier14];
          }
        }
      }

      v144 = [anchorsToRemove countByEnumeratingWithState:&v483 objects:v521 count:16];
    }

    while (v144);
  }

  if (ARLinkedOnOrAfterAzulC(v152, v153))
  {
    v482 = 0u;
    v481 = 0u;
    v480 = 0u;
    v479 = 0u;
    anchorsToStopTracking = [v66 anchorsToStopTracking];
    v155 = [anchorsToStopTracking countByEnumeratingWithState:&v479 objects:v520 count:16];
    if (v155)
    {
      v156 = v155;
      v157 = *v480;
      do
      {
        for (m = 0; m != v156; ++m)
        {
          if (*v480 != v157)
          {
            objc_enumerationMutation(anchorsToStopTracking);
          }

          identifier15 = [*(*(&v479 + 1) + 8 * m) identifier];
          v160 = [v64 objectForKey:identifier15];

          if (objc_opt_respondsToSelector())
          {
            v161 = v160;
            if ([v161 isTracked])
            {
              v162 = [v161 copy];
              if (objc_opt_respondsToSelector())
              {
                [v162 setIsTracked:0];
              }

              identifier16 = [v162 identifier];
              [v424 setObject:v162 forKey:identifier16];

              identifier17 = [v162 identifier];
              [v422 setObject:v162 forKey:identifier17];

              v65 = v423;
            }

            v64 = v424;
          }
        }

        v156 = [anchorsToStopTracking countByEnumeratingWithState:&v479 objects:v520 count:16];
      }

      while (v156);
    }

    v66 = v414;
    v143 = dictionary3;
  }

  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  v365 = objc_opt_new();
  if ([v66 didRelocalize])
  {
    worldMap = [v66 worldMap];
    anchors2 = [worldMap anchors];
    v168 = ARDictionaryFromAnchors(anchors2);

    if ([*(v426 + 8) isMultiSessionMode])
    {
      worldMap2 = [v66 worldMap];
      anchors3 = [worldMap2 anchors];
      v171 = ARAnchorsForPoseGraphUpdates(anchors3);

      v478 = 0u;
      v477 = 0u;
      v476 = 0u;
      v475 = 0u;
      v172 = v171;
      v173 = [v172 countByEnumeratingWithState:&v475 objects:v519 count:16];
      if (v173)
      {
        v174 = v173;
        v175 = *v476;
        do
        {
          v176 = 0;
          do
          {
            if (*v476 != v175)
            {
              objc_enumerationMutation(v172);
            }

            v177 = *(*(&v475 + 1) + 8 * v176);
            v178 = _ARLogGeneral_9(v173);
            if (os_log_type_enabled(v178, OS_LOG_TYPE_DEBUG))
            {
              v179 = objc_opt_class();
              v180 = NSStringFromClass(v179);
              identifier18 = [v177 identifier];
              *buf = 138543874;
              *&buf[4] = v180;
              *&buf[12] = 2048;
              *&buf[14] = v426;
              *&buf[22] = 2114;
              *&buf[24] = identifier18;
              _os_log_impl(&dword_1C241C000, v178, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: skipped adding anchor loaded from world map: %{public}@", buf, 0x20u);
            }

            identifier19 = [v177 identifier];
            [v168 removeObjectForKey:identifier19];

            ++v176;
          }

          while (v174 != v176);
          v173 = [v172 countByEnumeratingWithState:&v475 objects:v519 count:16];
          v174 = v173;
        }

        while (v173);
      }

      v65 = v423;
      v64 = v424;
      v66 = v414;
      v143 = dictionary3;
    }
  }

  else
  {
    v168 = dictionary5;
  }

  camera = [v65 camera];
  trackingState = [camera trackingState];

  if (trackingState)
  {
    v474 = 0u;
    v473 = 0u;
    v472 = 0u;
    v471 = 0u;
    obj = v364;
    v185 = [obj countByEnumeratingWithState:&v471 objects:v518 count:16];
    v186 = dictionary4;
    if (!v185)
    {
      goto LABEL_159;
    }

    v187 = v185;
    v400 = *v472;
    while (1)
    {
      for (n = 0; n != v187; ++n)
      {
        if (*v472 != v400)
        {
          objc_enumerationMutation(obj);
        }

        v189 = *(*(&v471 + 1) + 8 * n);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v190 = v189;
          camera2 = [v65 camera];
          [v190 setCurrentCamera:camera2];
        }

        if (objc_opt_respondsToSelector())
        {
          if ([v426 isUserFaceTracking])
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              camera3 = [v65 camera];
              objc_msgSend_transform(camera3);
              v197 = ARFrontWideCameraTransformFromBackWideAngleCameraTransformWithZFlip(v193, v194, v195, v196);
              v386 = v198;
              v393 = v197;
              v378 = v200;
              v382 = v199;

              [v65 referenceOriginTransform];
              v370 = v202;
              v372 = v201;
              v366 = v204;
              v368 = v203;
              allValues5 = [v64 allValues];
              v206 = [v189 anchorsForCameraWithTransform:allValues5 referenceOriginTransform:v365 existingAnchors:v393 anchorsToRemove:{v386, v382, v378, v372, v370, v368, v366}];
              goto LABEL_139;
            }
          }

          if ([v426 _shouldSkipAnchorCreationForData:v189])
          {
            v206 = 0;
          }

          else
          {
            allValues5 = [v65 camera];
            objc_msgSend_transform(allValues5);
            v387 = v208;
            v394 = v207;
            v379 = v210;
            v383 = v209;
            [v65 referenceOriginTransform];
            v371 = v212;
            v373 = v211;
            v367 = v214;
            v369 = v213;
            allValues6 = [v64 allValues];
            v206 = [v189 anchorsForCameraWithTransform:allValues6 referenceOriginTransform:v365 existingAnchors:v394 anchorsToRemove:{v387, v383, v379, v373, v371, v369, v367}];

LABEL_139:
          }

          v470 = 0u;
          v469 = 0u;
          v468 = 0u;
          v467 = 0u;
          v216 = v206;
          v217 = [v216 countByEnumeratingWithState:&v467 objects:v517 count:16];
          if (v217)
          {
            v218 = v217;
            v219 = *v468;
            do
            {
              for (ii = 0; ii != v218; ++ii)
              {
                if (*v468 != v219)
                {
                  objc_enumerationMutation(v216);
                }

                v221 = *(*(&v467 + 1) + 8 * ii);
                identifier20 = [v221 identifier];
                [v168 setObject:v221 forKey:identifier20];
              }

              v218 = [v216 countByEnumeratingWithState:&v467 objects:v517 count:16];
            }

            while (v218);
          }

          v65 = v423;
          v64 = v424;
          v186 = dictionary4;
        }

        if (objc_opt_respondsToSelector())
        {
          [v65 referenceOriginTransform];
          v388 = v224;
          v395 = v223;
          v380 = v226;
          v384 = v225;
          allValues7 = [v64 allValues];
          v228 = [v189 externalAnchorsWithReferenceOriginTransform:allValues7 existingAnchors:{v395, v388, v384, v380}];

          v465 = 0u;
          v466 = 0u;
          v463 = 0u;
          v464 = 0u;
          v229 = v228;
          v230 = [v229 countByEnumeratingWithState:&v463 objects:v516 count:16];
          if (v230)
          {
            v231 = v230;
            v232 = *v464;
            do
            {
              for (jj = 0; jj != v231; ++jj)
              {
                if (*v464 != v232)
                {
                  objc_enumerationMutation(v229);
                }

                v234 = *(*(&v463 + 1) + 8 * jj);
                identifier21 = [v234 identifier];
                [v186 setObject:v234 forKey:identifier21];
              }

              v231 = [v229 countByEnumeratingWithState:&v463 objects:v516 count:16];
            }

            while (v231);
          }

          v65 = v423;
          v64 = v424;
        }
      }

      v187 = [obj countByEnumeratingWithState:&v471 objects:v518 count:16];
      if (!v187)
      {
LABEL_159:

        v66 = v414;
        v143 = dictionary3;
        break;
      }
    }
  }

  v461 = 0u;
  v462 = 0u;
  v459 = 0u;
  v460 = 0u;
  v413 = v365;
  v236 = [v413 countByEnumeratingWithState:&v459 objects:v515 count:16];
  if (v236)
  {
    v237 = v236;
    v238 = *v460;
    do
    {
      for (kk = 0; kk != v237; ++kk)
      {
        if (*v460 != v238)
        {
          objc_enumerationMutation(v413);
        }

        identifier22 = [*(*(&v459 + 1) + 8 * kk) identifier];
        v241 = [v64 objectForKey:identifier22];

        if (v241)
        {
          identifier23 = [v241 identifier];
          [v143 setObject:v241 forKey:identifier23];

          identifier24 = [v241 identifier];
          [v64 removeObjectForKey:identifier24];

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            identifier25 = [v241 identifier];
            [v426 _removeGeoAnchorAltitude:identifier25];
          }
        }
      }

      v237 = [v413 countByEnumeratingWithState:&v459 objects:v515 count:16];
    }

    while (v237);
  }

  if (([v65 referenceOriginTransformUpdated] & 1) == 0)
  {
    v457 = 0u;
    v458 = 0u;
    v455 = 0u;
    v456 = 0u;
    allValues8 = [v64 allValues];
    v246 = [allValues8 countByEnumeratingWithState:&v455 objects:v514 count:16];
    if (!v246)
    {
      goto LABEL_183;
    }

    v247 = v246;
    v248 = *v456;
    while (1)
    {
      for (mm = 0; mm != v247; ++mm)
      {
        if (*v456 != v248)
        {
          objc_enumerationMutation(allValues8);
        }

        v250 = *(*(&v455 + 1) + 8 * mm);
        identifier26 = [v250 identifier];
        v252 = [v168 objectForKey:identifier26];
        if (v252)
        {
          identifier27 = v252;
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            continue;
          }

          identifier26 = [v250 copy];
          identifier27 = [v250 identifier];
          [v424 setObject:identifier26 forKey:identifier27];
        }
      }

      v247 = [allValues8 countByEnumeratingWithState:&v455 objects:v514 count:16];
      if (!v247)
      {
LABEL_183:

        v64 = v424;
        break;
      }
    }
  }

  v453 = 0u;
  v454 = 0u;
  v451 = 0u;
  v452 = 0u;
  anchorsToAdd = [v66 anchorsToAdd];
  v255 = [anchorsToAdd countByEnumeratingWithState:&v451 objects:v513 count:16];
  if (v255)
  {
    v256 = v255;
    v257 = *v452;
    do
    {
      for (nn = 0; nn != v256; ++nn)
      {
        if (*v452 != v257)
        {
          objc_enumerationMutation(anchorsToAdd);
        }

        v259 = *(*(&v451 + 1) + 8 * nn);
        identifier28 = [v259 identifier];
        v261 = [v64 objectForKey:identifier28];

        if (!v261)
        {
          if ([v423 referenceOriginTransformAvailable])
          {
            objc_msgSend_transform(v259);
            v262 = 0;
            v503 = v263;
            v504 = v264;
            v505 = v265;
            v506 = v266;
            memset(buf, 0, sizeof(buf));
            v527 = 0u;
            v528 = 0u;
            do
            {
              *&buf[v262] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, COERCE_FLOAT(*(&v503 + v262))), v420, *(&v503 + v262), 1), v417, *(&v503 + v262), 2), v415, *(&v503 + v262), 3);
              v262 += 16;
            }

            while (v262 != 64);
            [v259 setReferenceTransform:{*buf, *&buf[16], *&v527, *&v528}];
          }

          identifier29 = [v259 identifier];
          v268 = [dictionary3 objectForKey:identifier29];

          v269 = v419;
          if (v268)
          {
            identifier30 = [v268 identifier];
            [dictionary3 removeObjectForKey:identifier30];

            v269 = v422;
          }

          identifier31 = [v259 identifier];
          [v269 setObject:v259 forKey:identifier31];

          identifier32 = [v259 identifier];
          v64 = v424;
          [v424 setObject:v259 forKey:identifier32];
        }
      }

      v256 = [anchorsToAdd countByEnumeratingWithState:&v451 objects:v513 count:16];
    }

    while (v256);
  }

  v449 = 0u;
  v450 = 0u;
  v447 = 0u;
  v448 = 0u;
  allValues9 = [v168 allValues];
  v273 = [allValues9 countByEnumeratingWithState:&v447 objects:v512 count:16];
  if (v273)
  {
    v274 = v273;
    v275 = *v448;
    do
    {
      for (i1 = 0; i1 != v274; ++i1)
      {
        if (*v448 != v275)
        {
          objc_enumerationMutation(allValues9);
        }

        v277 = *(*(&v447 + 1) + 8 * i1);
        if ([v423 referenceOriginTransformAvailable])
        {
          objc_msgSend_transform(v277);
          v278 = 0;
          v503 = v279;
          v504 = v280;
          v505 = v281;
          v506 = v282;
          memset(buf, 0, sizeof(buf));
          v527 = 0u;
          v528 = 0u;
          do
          {
            *&buf[v278] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, COERCE_FLOAT(*(&v503 + v278))), v420, *(&v503 + v278), 1), v417, *(&v503 + v278), 2), v415, *(&v503 + v278), 3);
            v278 += 16;
          }

          while (v278 != 64);
          [v277 setReferenceTransform:{*buf, *&buf[16], *&v527, *&v528}];
        }

        objc_msgSend_timestamp(v423);
        [v277 setLastUpdateTimestamp:?];
        identifier33 = [v277 identifier];
        v284 = [v424 objectForKey:identifier33];

        identifier34 = [v277 identifier];
        if (v284)
        {
          v286 = v422;
        }

        else
        {
          v286 = v419;
        }

        [v286 setObject:v277 forKey:identifier34];

        identifier35 = [v277 identifier];
        [v424 setObject:v277 forKey:identifier35];
      }

      v274 = [allValues9 countByEnumeratingWithState:&v447 objects:v512 count:16];
    }

    while (v274);
  }

  v445 = 0u;
  v446 = 0u;
  v443 = 0u;
  v444 = 0u;
  collaborationData = [v414 collaborationData];
  v289 = [collaborationData countByEnumeratingWithState:&v443 objects:v511 count:16];
  v290 = v424;
  if (v289)
  {
    v291 = v289;
    v292 = *v444;
    v408 = collaborationData;
    v401 = *v444;
    do
    {
      v293 = 0;
      v416 = v291;
      do
      {
        if (*v444 != v292)
        {
          objc_enumerationMutation(collaborationData);
        }

        v294 = *(*(&v443 + 1) + 8 * v293);
        if ([v294 vioDataType] == 1)
        {
          v421 = v293;
          v295 = v294;
          anchorIdentifier = [v294 anchorIdentifier];
          v297 = [v290 objectForKey:anchorIdentifier];

          v298 = [v297 isMemberOfClass:objc_opt_class()];
          v299 = v298;
          v300 = _ARLogSession_0(v298);
          v301 = os_log_type_enabled(v300, OS_LOG_TYPE_DEBUG);
          if (v299)
          {
            if (v301)
            {
              v302 = objc_opt_class();
              v303 = NSStringFromClass(v302);
              v304 = [v297 description];
              *buf = 138543874;
              *&buf[4] = v303;
              *&buf[12] = 2048;
              *&buf[14] = v426;
              v290 = v424;
              *&buf[22] = 2112;
              *&buf[24] = v304;
              _os_log_impl(&dword_1C241C000, v300, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Sending collaboration data with anchor: %@", buf, 0x20u);

              v291 = v416;
            }

            v305 = [MEMORY[0x1E695DFD8] setWithObject:v297];
            [v295 setAnchors:v305];

            [v426 _sessionDidOutputCollaborationData:v295];
          }

          else
          {
            if (v301)
            {
              v328 = objc_opt_class();
              v329 = NSStringFromClass(v328);
              anchorIdentifier2 = [v295 anchorIdentifier];
              [v297 description];
              v332 = v331 = collaborationData;
              *buf = 138544130;
              *&buf[4] = v329;
              *&buf[12] = 2048;
              *&buf[14] = v426;
              *&buf[22] = 2112;
              *&buf[24] = anchorIdentifier2;
              LOWORD(v527) = 2112;
              *(&v527 + 2) = v332;
              _os_log_impl(&dword_1C241C000, v300, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Not sending anchor data, it is not found or not a simple anchor: %@, %@", buf, 0x2Au);

              collaborationData = v331;
              v290 = v424;

              v291 = v416;
            }
          }
        }

        else
        {
          if ([v294 vioDataType] != 3)
          {
            goto LABEL_249;
          }

          v418 = v294;
          v421 = v293;
          v306 = [MEMORY[0x1E695DFA8] set];
          v439 = 0u;
          v440 = 0u;
          v441 = 0u;
          v442 = 0u;
          allValues10 = [v290 allValues];
          v308 = [allValues10 countByEnumeratingWithState:&v439 objects:v510 count:16];
          if (v308)
          {
            v309 = v308;
            v310 = *v440;
            do
            {
              for (i2 = 0; i2 != v309; ++i2)
              {
                if (*v440 != v310)
                {
                  objc_enumerationMutation(allValues10);
                }

                v312 = *(*(&v439 + 1) + 8 * i2);
                if ([v312 isMemberOfClass:objc_opt_class()])
                {
                  [v306 addObject:v312];
                }
              }

              v309 = [allValues10 countByEnumeratingWithState:&v439 objects:v510 count:16];
            }

            while (v309);
          }

          v313 = [v306 copy];
          [v418 setAnchors:v313];

          v315 = _ARLogSession_0(v314);
          if (os_log_type_enabled(v315, OS_LOG_TYPE_DEBUG))
          {
            v316 = objc_opt_class();
            v317 = NSStringFromClass(v316);
            v318 = [v306 count];
            *buf = 138543874;
            *&buf[4] = v317;
            *&buf[12] = 2048;
            *&buf[14] = v426;
            *&buf[22] = 2048;
            *&buf[24] = v318;
            _os_log_impl(&dword_1C241C000, v315, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Sending registration data with anchors: %tu", buf, 0x20u);
          }

          v437 = 0u;
          v438 = 0u;
          v435 = 0u;
          v436 = 0u;
          v297 = v306;
          v319 = [v297 countByEnumeratingWithState:&v435 objects:v509 count:16];
          if (v319)
          {
            v320 = v319;
            v321 = *v436;
            do
            {
              v322 = 0;
              do
              {
                if (*v436 != v321)
                {
                  objc_enumerationMutation(v297);
                }

                v323 = *(*(&v435 + 1) + 8 * v322);
                v324 = _ARLogSession_0(v319);
                if (os_log_type_enabled(v324, OS_LOG_TYPE_DEBUG))
                {
                  v325 = objc_opt_class();
                  v326 = NSStringFromClass(v325);
                  v327 = [v323 description];
                  *buf = 138543874;
                  *&buf[4] = v326;
                  *&buf[12] = 2048;
                  *&buf[14] = v426;
                  *&buf[22] = 2112;
                  *&buf[24] = v327;
                  _os_log_impl(&dword_1C241C000, v324, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Sending registration data with anchor: %@", buf, 0x20u);
                }

                ++v322;
              }

              while (v320 != v322);
              v319 = [v297 countByEnumeratingWithState:&v435 objects:v509 count:16];
              v320 = v319;
            }

            while (v319);
          }

          [v426 _sessionDidOutputCollaborationData:v418];
          v290 = v424;
          collaborationData = v408;
          v292 = v401;
          v291 = v416;
        }

        v293 = v421;
LABEL_249:
        ++v293;
      }

      while (v293 != v291);
      v291 = [collaborationData countByEnumeratingWithState:&v443 objects:v511 count:16];
    }

    while (v291);
  }

  v433 = 0u;
  v434 = 0u;
  v431 = 0u;
  v432 = 0u;
  allValues11 = [v290 allValues];
  v334 = [allValues11 countByEnumeratingWithState:&v431 objects:v508 count:16];
  v335 = v419;
  if (v334)
  {
    v336 = v334;
    v337 = *v432;
    do
    {
      for (i3 = 0; i3 != v336; ++i3)
      {
        if (*v432 != v337)
        {
          objc_enumerationMutation(allValues11);
        }

        v339 = *(*(&v431 + 1) + 8 * i3);
        sessionIdentifier = [v339 sessionIdentifier];

        if (!sessionIdentifier)
        {
          identifier36 = [v426 identifier];
          [v339 setSessionIdentifier:identifier36];
        }
      }

      v336 = [allValues11 countByEnumeratingWithState:&v431 objects:v508 count:16];
    }

    while (v336);
  }

  v429 = 0u;
  v430 = 0u;
  v427 = 0u;
  v428 = 0u;
  allValues12 = [dictionary3 allValues];
  v343 = [allValues12 countByEnumeratingWithState:&v427 objects:v507 count:16];
  v344 = v414;
  v345 = v424;
  if (v343)
  {
    v346 = v343;
    v347 = *v428;
    do
    {
      for (i4 = 0; i4 != v346; ++i4)
      {
        if (*v428 != v347)
        {
          objc_enumerationMutation(allValues12);
        }

        [*(*(&v427 + 1) + 8 * i4) setSessionIdentifier:0];
      }

      v346 = [allValues12 countByEnumeratingWithState:&v427 objects:v507 count:16];
    }

    while (v346);
  }

  allValues13 = [v424 allValues];
  v350 = ARAnchorsForPublicDelegate(allValues13);
  [v423 setAnchors:v350];

  allValues14 = [v424 allValues];
  v352 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_341];
  v353 = [allValues14 filteredArrayUsingPredicate:v352];

  [v423 setPrivateAnchors:v353];
  v354 = v422;
  if ([v419 count] || objc_msgSend(v422, "count") || objc_msgSend(dictionary3, "count") || objc_msgSend(dictionary4, "count"))
  {
    v355 = [ARAnchorChangeSet alloc];
    allValues15 = [v419 allValues];
    allValues16 = [v422 allValues];
    allValues17 = [dictionary3 allValues];
    allValues18 = [dictionary4 allValues];
    v360 = [(ARAnchorChangeSet *)v355 initWithAddedAnchors:allValues15 updatedAnchors:allValues16 removedAnchors:allValues17 externalAnchors:allValues18];
    [v423 setAnchorChangeSet:v360];

    v345 = v424;
    v344 = v414;
    v335 = v419;

    v354 = v422;
  }

  anchorChangeSet = [v423 anchorChangeSet];

  return anchorChangeSet;
}

- (void)setAvailableSensors:(id)sensors
{
  v50 = *MEMORY[0x1E69E9840];
  sensorsCopy = sensors;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v6 = self->_availableSensors;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        if ([sensorsCopy indexOfObjectIdenticalTo:v11] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v11 setDelegate:0];
        }
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v8);
  }

  v31 = sensorsCopy;

  imageSensor = self->_imageSensor;
  self->_imageSensor = 0;

  replaySensor = self->_replaySensor;
  self->_replaySensor = 0;

  objc_storeStrong(&self->_availableSensors, sensors);
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = self->_availableSensors;
  v14 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v14)
  {
    v15 = v14;
    v33 = 0;
    v16 = *v35;
    v17 = 0x1E817A000uLL;
    v18 = 0x1E817A000uLL;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v34 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v20 setPowerUsage:{-[ARSession powerUsage](self, "powerUsage")}];
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_storeStrong(&self->_imageSensor, v20);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = v18;
          v22 = v17;
          v23 = v20;

          v33 = v23;
          v17 = v22;
          v18 = v21;
        }

        if ([v20 conformsToProtocol:&unk_1F425D818])
        {
          v24 = v20;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v24 setSession:self];
          }

          v25 = self->_replaySensor;
          self->_replaySensor = v24;
        }
      }

      v15 = [(NSArray *)obj countByEnumeratingWithState:&v34 objects:v48 count:16];
    }

    while (v15);
  }

  else
  {
    v33 = 0;
  }

  v27 = _ARLogSession_0(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    *buf = 138543874;
    v43 = v29;
    v44 = 2048;
    selfCopy = self;
    v46 = 2048;
    v47 = v33;
    _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting new location sensor: %p", buf, 0x20u);
  }

  locationSensor = self->_locationSensor;
  self->_locationSensor = v33;
}

- (id)replaySensor
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  availableSensors = [(ARSession *)self availableSensors];
  v3 = [availableSensors countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(availableSensors);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [availableSensors countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)_replaceOrAddSensor:(id)sensor
{
  v19 = *MEMORY[0x1E69E9840];
  sensorCopy = sensor;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_availableSensors;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (!v7)
  {

LABEL_13:
    [array addObject:{sensorCopy, v14}];
    goto LABEL_14;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v15;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v15 != v10)
      {
        objc_enumerationMutation(v6);
      }

      v12 = *(*(&v14 + 1) + 8 * i);
      providedDataTypes = [v12 providedDataTypes];
      if (([sensorCopy providedDataTypes] & providedDataTypes) != 0)
      {
        [v12 stop];
        -[ARSession setRunningSensors:](self, "setRunningSensors:", -[ARSession runningSensors](self, "runningSensors") & ~[v12 providedDataTypes]);
        -[ARSession setPausedSensors:](self, "setPausedSensors:", -[ARSession pausedSensors](self, "pausedSensors") & ~[v12 providedDataTypes]);
        v9 = 1;
        v12 = sensorCopy;
      }

      [array addObject:v12];
    }

    v8 = [(NSArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  }

  while (v8);

  if ((v9 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  [(ARSession *)self setAvailableSensors:array];
}

+ (id)_applySessionOverrides:(id)overrides outError:(id *)error
{
  v116 = *MEMORY[0x1E69E9840];
  overridesCopy = overrides;
  v7 = 0x1E817A000uLL;
  v8 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.session.cameraPosition"];
  if (v8)
  {
    v9 = v8;
    videoFormat = [(ARRecordingConfiguration *)overridesCopy videoFormat];
    captureDevicePosition = [videoFormat captureDevicePosition];

    if (captureDevicePosition != v9)
    {
      v12 = _ARLogSession_0([(ARCustomTechniquesConfiguration *)overridesCopy setCameraPosition:v9]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = @"Front";
        *buf = 138543874;
        v109 = v14;
        if (v9 == 1)
        {
          v15 = @"Back";
        }

        v110 = 2048;
        selfCopy8 = self;
        v112 = 2112;
        v113 = v15;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Overriding default camera position to %@", buf, 0x20u);
      }
    }
  }

  videoFormat2 = [(ARRecordingConfiguration *)overridesCopy videoFormat];
  if (videoFormat2)
  {
    v17 = videoFormat2;
    videoFormat3 = [(ARRecordingConfiguration *)overridesCopy videoFormat];
    if ([videoFormat3 captureDevicePosition]== 1)
    {
      videoFormat4 = [(ARRecordingConfiguration *)overridesCopy videoFormat];
      captureDeviceType = [videoFormat4 captureDeviceType];
      v21 = *MEMORY[0x1E6986950];

      v31 = captureDeviceType == v21;
      v7 = 0x1E817A000uLL;
      if (!v31)
      {
        goto LABEL_19;
      }

      v17 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.imagesensor.back.wide.autoFocus"];
      if (!v17)
      {
LABEL_18:

        goto LABEL_19;
      }

      videoFormat3 = _ARLogSession_0([(ARConfiguration *)overridesCopy setAutoFocusEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.wide.autoFocus"]]);
      if (os_log_type_enabled(videoFormat3, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        isAutoFocusEnabled = [(ARConfiguration *)overridesCopy isAutoFocusEnabled];
        v25 = @"disabled";
        *buf = 138543874;
        v109 = v23;
        if (isAutoFocusEnabled)
        {
          v25 = @"enabled";
        }

        v110 = 2048;
        selfCopy8 = self;
        v112 = 2112;
        v113 = v25;
        _os_log_impl(&dword_1C241C000, videoFormat3, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Image sensor auto focus %@ by user defaults", buf, 0x20u);
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.imagedetection.assetcatalog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
      v28 = [v27 objectForKey:@"path"];
      v29 = [v27 objectForKey:@"imageGroup"];
      v30 = v29;
      if (v28)
      {
        v31 = v29 == 0;
      }

      else
      {
        v31 = 1;
      }

      if (v31)
      {
        v32 = _ARLogSession_0(v29);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = objc_opt_class();
          NSStringFromClass(v33);
          v35 = v34 = self;
          *buf = 138543874;
          v109 = v35;
          v110 = 2048;
          selfCopy8 = v34;
          v112 = 2112;
          v113 = @"com.apple.arkit.imagedetection.assetcatalog";
          _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: When using the default '%@' the options 'path' and 'recognition_group_name' need to be specified", buf, 0x20u);

          self = v34;
          v7 = 0x1E817A000;
        }
      }

      else
      {
        isAbsolutePath = [v28 isAbsolutePath];
        if ((isAbsolutePath & 1) == 0)
        {
          v37 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
          lastObject = [v37 lastObject];

          v39 = [lastObject stringByAppendingPathComponent:v28];

          v28 = v39;
        }

        v40 = [MEMORY[0x1E695DFF8] fileURLWithPath:v28];
        v32 = [ARReferenceImage referenceImagesInGroupNamed:v30 catalogURL:v40];

        if (v32)
        {
          [(ARRecordingConfiguration *)overridesCopy setDetectionImages:v32];
        }

        else
        {
          v42 = _ARLogSession_0(v41);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            v43 = objc_opt_class();
            NSStringFromClass(v43);
            v45 = v44 = self;
            *buf = 138544130;
            v109 = v45;
            v110 = 2048;
            selfCopy8 = v44;
            v112 = 2112;
            v113 = v30;
            v114 = 2112;
            v115 = v28;
            _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: No recognition group named '%@' found in '%@'", buf, 0x2Au);

            self = v44;
            v7 = 0x1E817A000uLL;
          }
        }
      }
    }
  }

  v46 = [*(v7 + 2288) stringForKey:@"com.apple.arkit.session.replay.filepath"];
  if (!v46)
  {
    goto LABEL_57;
  }

  v47 = objc_opt_new();
  if ([(__CFString *)v46 isAbsolutePath])
  {
    [v47 addObject:v46];
  }

  else
  {
    v48 = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, 1uLL, 1);
    lastObject2 = [v48 lastObject];

    v50 = NSTemporaryDirectory();
    v51 = [v50 stringByAppendingPathComponent:v46];
    [v47 addObject:v51];

    v52 = [lastObject2 stringByAppendingPathComponent:v46];
    [v47 addObject:v52];
  }

  v53 = [v47 indexOfObjectPassingTest:&__block_literal_global_459];
  if (v53 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      v54 = v7;
      v55 = MEMORY[0x1E696ABC0];
      v105 = *MEMORY[0x1E696A578];
      v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Replay URL points to a file which does not exist or which the app cannot access: %@", v46];
      v106 = v56;
      v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v58 = v55;
      v7 = v54;
      *error = [v58 errorWithDomain:@"com.apple.arkit.error" code:102 userInfo:v57];

      goto LABEL_50;
    }

    goto LABEL_56;
  }

  v60 = [v47 objectAtIndex:v53];
  v61 = [MEMORY[0x1E695DFF8] fileURLWithPath:v60];
  v62 = ARReplaySensorClassForMovieURL(v61, error);
  if (v62)
  {
    v63 = [[v62 alloc] initWithSequenceURL:v61 replayMode:0];
    parentImageSensorSettings = [(ARRecordingConfiguration *)overridesCopy parentImageSensorSettings];
    [v63 setParentImageSensorSettings:parentImageSensorSettings];

    if (v63)
    {
      selfCopy3 = self;
      v107 = v63;
      v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
      v67 = _ARLogSession_0([(ARCustomTechniquesConfiguration *)overridesCopy setCustomSensors:v66]);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        *buf = 138543874;
        v109 = v69;
        v110 = 2048;
        selfCopy8 = selfCopy3;
        v112 = 2112;
        v113 = v60;
        _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Forcing replay of sequence instead of live sensor capturing from file: %@", buf, 0x20u);

        v7 = 0x1E817A000;
      }

      self = selfCopy3;
      goto LABEL_49;
    }

    if (ARShouldUseLogTypeError_onceToken_21 != -1)
    {
      [ARSession runWithConfiguration:options:];
    }

    v90 = ARShouldUseLogTypeError_internalOSVersion_21;
    v91 = _ARLogSession_0(v65);
    v92 = v91;
    if (v90 == 1)
    {
      if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
      {
        v93 = objc_opt_class();
        v94 = NSStringFromClass(v93);
        *buf = 138543874;
        v109 = v94;
        v110 = 2048;
        selfCopy8 = self;
        v112 = 2112;
        v113 = v61;
        v95 = "%{public}@ <%p>: Unable to create replay sensor for file: %@";
        v96 = v92;
        v97 = OS_LOG_TYPE_ERROR;
LABEL_77:
        _os_log_impl(&dword_1C241C000, v96, v97, v95, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
    {
      v98 = objc_opt_class();
      v94 = NSStringFromClass(v98);
      *buf = 138543874;
      v109 = v94;
      v110 = 2048;
      selfCopy8 = self;
      v112 = 2112;
      v113 = v61;
      v95 = "Error: %{public}@ <%p>: Unable to create replay sensor for file: %@";
      v96 = v92;
      v97 = OS_LOG_TYPE_INFO;
      goto LABEL_77;
    }

    goto LABEL_79;
  }

LABEL_49:

  if (error)
  {
LABEL_50:
    if (*error)
    {
      if (ARShouldUseLogTypeError_onceToken_21 != -1)
      {
        [ARSession runWithConfiguration:options:];
      }

      v70 = ARShouldUseLogTypeError_internalOSVersion_21;
      v71 = _ARLogSession_0(v59);
      v60 = v71;
      if (v70 == 1)
      {
        if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
        {
          v72 = objc_opt_class();
          v73 = NSStringFromClass(v72);
          v74 = *error;
          *buf = 138544130;
          v109 = v73;
          v110 = 2048;
          selfCopy8 = self;
          v112 = 2112;
          v113 = v46;
          v114 = 2112;
          v115 = v74;
          v75 = "%{public}@ <%p>: Cannot force replay of file %@, because of file issue: %@";
          v76 = v60;
          v77 = OS_LOG_TYPE_ERROR;
LABEL_69:
          _os_log_impl(&dword_1C241C000, v76, v77, v75, buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        v88 = objc_opt_class();
        v73 = NSStringFromClass(v88);
        v89 = *error;
        *buf = 138544130;
        v109 = v73;
        v110 = 2048;
        selfCopy8 = self;
        v112 = 2112;
        v113 = v46;
        v114 = 2112;
        v115 = v89;
        v75 = "Error: %{public}@ <%p>: Cannot force replay of file %@, because of file issue: %@";
        v76 = v60;
        v77 = OS_LOG_TYPE_INFO;
        goto LABEL_69;
      }

LABEL_79:

      v87 = 0;
      goto LABEL_80;
    }
  }

LABEL_56:

LABEL_57:
  v78 = [*(v7 + 2288) integerForKey:@"com.apple.arkit.session.forceRecording"];
  if (v78)
  {
    v79 = v78;
    v80 = _ARLogSession_0(v78);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
    {
      v81 = objc_opt_class();
      v82 = NSStringFromClass(v81);
      *buf = 138543874;
      v109 = v82;
      v110 = 2048;
      selfCopy8 = self;
      v112 = 2048;
      v113 = v79;
      _os_log_impl(&dword_1C241C000, v80, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Forcing %li second recording", buf, 0x20u);
    }

    v83 = [[ARRecordingConfiguration alloc] initWithBaseConfiguration:overridesCopy fileURL:0];
    [(ARRecordingConfiguration *)v83 startRecording];
    if (v79 >= 1)
    {
      recordingTechnique = [(ARRecordingConfiguration *)v83 recordingTechnique];
      v85 = dispatch_time(0, 1000000000 * v79);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __45__ARSession__applySessionOverrides_outError___block_invoke_465;
      block[3] = &unk_1E817C010;
      selfCopy9 = self;
      v104 = v79;
      v102 = recordingTechnique;
      v86 = recordingTechnique;
      dispatch_after(v85, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    v83 = overridesCopy;
  }

  if (+[ARQATracer isEnabled])
  {
    [(ARConfiguration *)v83 setFrameDebugOptions:[(ARConfiguration *)v83 frameDebugOptions]| 2];
  }

  overridesCopy = v83;
  v87 = overridesCopy;
LABEL_80:

  return v87;
}

uint64_t __45__ARSession__applySessionOverrides_outError___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = MEMORY[0x1E696AC08];
  v6 = a2;
  v7 = [v5 defaultManager];
  v8 = [v7 fileExistsAtPath:v6];

  if (v8)
  {
    *a4 = 1;
  }

  return v8;
}

uint64_t __45__ARSession__applySessionOverrides_outError___block_invoke_465(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = _ARLogSession_0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = 138543874;
    v9 = v4;
    v10 = 2048;
    v11 = v5;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Forcing recording end after %li seconds", &v8, 0x20u);
  }

  return [*(a1 + 32) finishRecording];
}

- (void)captureHighResolutionFrameUsingPhotoSettings:(id)settings completion:(id)completion
{
  v38[1] = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  completionCopy = completion;
  dispatch_semaphore_wait(self->_pendingHiResFrameCaptureSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if ([(ARSession *)self state])
  {
    if (self->_isHiResFrameCaptureInProgress)
    {
      dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
      delegateQueue = [(ARSession *)self delegateQueue];
      v9 = delegateQueue;
      if (!delegateQueue)
      {
        v9 = MEMORY[0x1E69E96A0];
        v10 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_2;
      block[3] = &unk_1E817CC30;
      v33 = completionCopy;
      dispatch_async(v9, block);
      if (!delegateQueue)
      {
      }

      v11 = v33;
    }

    else
    {
      stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];
      prepareWasCalled = [stillImageRootTechnique prepareWasCalled];

      if ((prepareWasCalled & 1) == 0)
      {
        stillImageProcessingQueue = self->_stillImageProcessingQueue;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_3;
        v31[3] = &unk_1E817BFE8;
        v31[4] = self;
        dispatch_async(stillImageProcessingQueue, v31);
      }

      v23 = MEMORY[0x1C691B4C0](completionCopy);
      pendingHiResFrameCaptureCompletionBlock = self->_pendingHiResFrameCaptureCompletionBlock;
      self->_pendingHiResFrameCaptureCompletionBlock = v23;

      self->_isHiResFrameCaptureInProgress = 1;
      dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
      availableSensors = [(ARSession *)self availableSensors];
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_469;
      v29 = &unk_1E817CE60;
      v30 = settingsCopy;
      [availableSensors enumerateObjectsUsingBlock:&v26];

      [(ARSessionMetrics *)self->_metrics recordHiResFrameCapture:v26];
      v11 = v30;
    }
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = ARKitCoreBundle(0);
    v14 = [v13 localizedStringForKey:@"Cannot capture high-resolution frame while the session is paused." value:&stru_1F4208A80 table:@"Localizable"];
    v11 = [v12 stringWithFormat:v14];

    v37 = *MEMORY[0x1E696A588];
    v38[0] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
    delegateQueue2 = [(ARSession *)self delegateQueue];
    v17 = delegateQueue2;
    if (!delegateQueue2)
    {
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
    }

    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke;
    v34[3] = &unk_1E817CCF0;
    v35 = v15;
    v36 = completionCopy;
    v19 = v15;
    dispatch_async(v17, v34);
    if (!delegateQueue2)
    {
    }
  }
}

void __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = ARErrorWithCodeAndUserInfo(107, *(a1 + 32));
  (*(v1 + 16))(v1, 0, v2);
}

void __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = ARErrorWithCodeAndUserInfo(106, 0);
  (*(v1 + 16))(v1, 0, v2);
}

double __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = kdebug_trace();
  v3 = _ARLogSession_0(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = *(a1 + 32);
    v9 = 138543618;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Preparing still image techniques", &v9, 0x16u);
  }

  v7 = [*(a1 + 32) stillImageRootTechnique];
  [v7 prepare:1];

  kdebug_trace();
  return result;
}

void __69__ARSession_captureHighResolutionFrameUsingPhotoSettings_completion___block_invoke_469(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 captureHighResolutionFrameWithPhotoSettings:*(a1 + 32)];
    *a4 = 1;
  }
}

- (void)_updateSensorsWithConfiguration:(id)configuration
{
  v54 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  customSensors = [configurationCopy customSensors];

  if (customSensors)
  {
    availableSensors = [(ARSession *)self availableSensors];
    customSensors2 = [configurationCopy customSensors];
    if ([availableSensors isEqualToArray:customSensors2])
    {
      if (([(ARReplaySensorProtocol *)self->_replaySensor finishedReplaying]& 1) == 0)
      {

        goto LABEL_20;
      }

      replaySensor = self->_replaySensor;
      replaySensor = [configurationCopy replaySensor];

      if (replaySensor == replaySensor)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    [(ARSession *)self _stopAllSensorsWaitingForOutstandingCallbacks:1];
    availableSensors = [configurationCopy customSensors];
    [(ARSession *)self setAvailableSensors:availableSensors];
LABEL_20:

    goto LABEL_42;
  }

  if (!self->_motionManger)
  {
    v10 = objc_opt_new();
    motionManger = self->_motionManger;
    self->_motionManger = v10;

    v13 = _ARLogSession_0(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = self->_motionManger;
      *buf = 138543874;
      *&buf[4] = v15;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      v51 = v16;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating new motion manager %p.", buf, 0x20u);
    }
  }

  configurationInternal = [(ARSession *)self configurationInternal];
  customSensors3 = [configurationInternal customSensors];
  if (customSensors3)
  {

LABEL_12:
    array = [MEMORY[0x1E695DF70] array];
    v20 = [(ARSession *)self _imageSensorForConfiguration:configurationCopy existingSensor:0];
    if (v20)
    {
      [array addObject:v20];
    }

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.useIOKit"])
    {
      v21 = objc_alloc_init(ARIOMotionSensor);
      v22 = _ARLogSession_0(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        *buf = 138543618;
        *&buf[4] = v24;
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using IOKit for motion sensor", buf, 0x16u);
      }
    }

    else
    {
      v21 = [[ARMotionSensor alloc] initWithMotionManager:self->_motionManger];
      v22 = _ARLogSession_0(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        v27 = self->_motionManger;
        *buf = 138543874;
        *&buf[4] = v26;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        v51 = v27;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using CoreMotion for motion sensor (%p).", buf, 0x20u);
      }
    }

    if (v21)
    {
      [array addObject:v21];
    }

    v28 = -[ARDeviceOrientationSensor initWithMotionManager:alignment:]([ARDeviceOrientationSensor alloc], "initWithMotionManager:alignment:", self->_motionManger, [configurationCopy worldAlignment]);
    if (v28)
    {
      [array addObject:v28];
    }

    v29 = objc_opt_new();
    if (v29)
    {
      [array addObject:v29];
    }

    [(ARSession *)self _stopAllSensorsWaitingForOutstandingCallbacks:1];
    [(ARSession *)self setAvailableSensors:array];

    goto LABEL_42;
  }

  availableSensors2 = [(ARSession *)self availableSensors];
  v31 = [availableSensors2 count] == 0;

  if (v31)
  {
    goto LABEL_12;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  v53 = 0;
  availableSensors3 = [(ARSession *)self availableSensors];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __45__ARSession__updateSensorsWithConfiguration___block_invoke;
  v45[3] = &unk_1E817CE88;
  v45[4] = buf;
  [availableSensors3 enumerateObjectsUsingBlock:v45];

  v33 = [(ARSession *)self _imageSensorForConfiguration:configurationCopy existingSensor:*(*&buf[8] + 40)];
  v34 = v33;
  if (v33)
  {
    v35 = _ARLogSession_0(v33);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *v46 = 138543618;
      v47 = v37;
      v48 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing image sensor", v46, 0x16u);
    }

    [(ARSession *)self _replaceOrAddSensor:v34];
  }

  configurationInternal2 = [(ARSession *)self configurationInternal];
  worldAlignment = [configurationInternal2 worldAlignment];
  LOBYTE(worldAlignment) = worldAlignment == [configurationCopy worldAlignment];

  if ((worldAlignment & 1) == 0)
  {
    v40 = -[ARDeviceOrientationSensor initWithMotionManager:alignment:]([ARDeviceOrientationSensor alloc], "initWithMotionManager:alignment:", self->_motionManger, [configurationCopy worldAlignment]);
    v41 = v40;
    if (v40)
    {
      v42 = _ARLogSession_0(v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        *v46 = 138543618;
        v47 = v44;
        v48 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Replacing orientation sensor because alignment has changed", v46, 0x16u);
      }

      [(ARSession *)self _replaceOrAddSensor:v41];
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_42:
}

void __45__ARSession__updateSensorsWithConfiguration___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 providedDataTypes])
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)_imageSensorForConfiguration:(id)configuration existingSensor:(id)sensor
{
  v25 = *MEMORY[0x1E69E9840];
  sensorCopy = sensor;
  parentImageSensorSettings = [configuration parentImageSensorSettings];
  v8 = [(ARParentImageSensor *)sensorCopy canReconfigure:parentImageSensorSettings];
  v9 = v8;
  v10 = _ARLogSession_0(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v9)
  {
    if (v11)
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v21 = 138543618;
      v22 = v13;
      v23 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reconfiguring existing image sensor based on new settings...", &v21, 0x16u);
    }

    [(ARParentImageSensor *)sensorCopy reconfigure:parentImageSensorSettings];
    v14 = sensorCopy;
  }

  else
  {
    if (v11)
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v21 = 138543618;
      v22 = v16;
      v23 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating new image sensor, because settings are changed...", &v21, 0x16u);
    }

    v14 = [[ARParentImageSensor alloc] initWithSettings:parentImageSensorSettings];
  }

  v17 = v14;
  if (v14 == sensorCopy)
  {
    v18 = 0;
  }

  else
  {
    v18 = v14;
  }

  v19 = v18;

  return v18;
}

- (void)_startSensorsWithDataTypes:(unint64_t)types
{
  v60 = *MEMORY[0x1E69E9840];
  if (types)
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v4 = _os_activity_create(&dword_1C241C000, "Start sensors", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &state);

    v5 = kdebug_trace();
    v6 = _ARLogSession_0(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      v9 = ARSensorDataTypesToString(types);
      *buf = 138543874;
      v52 = v8;
      v53 = 2048;
      selfCopy6 = self;
      v55 = 2112;
      v56 = v9;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Starting sensors with data type(s): %@ …", buf, 0x20u);
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = self->_availableSensors;
    v11 = 0;
    v12 = [(NSArray *)v10 countByEnumeratingWithState:&v46 objects:v59 count:16];
    if (v12)
    {
      v13 = *v47;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v47 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v46 + 1) + 8 * i);
          if (([v15 providedDataTypes] & types) != 0)
          {
            [v15 setDelegate:self];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = v15;
              beforeRunningAVCaptureSession = [(ARSession *)self beforeRunningAVCaptureSession];
              [v16 setBeforeRunningAVCaptureSession:beforeRunningAVCaptureSession];
            }

            [v15 start];
            v11 |= [v15 providedDataTypes];
          }
        }

        v12 = [(NSArray *)v10 countByEnumeratingWithState:&v46 objects:v59 count:16];
      }

      while (v12);
    }

    v18 = _ARLogSession_0([(ARSession *)self setRunningSensors:[(ARSession *)self runningSensors]| v11]);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = ARSensorDataTypesToString(v11);
      *buf = 138543874;
      v52 = v20;
      v53 = 2048;
      selfCopy6 = self;
      v55 = 2112;
      v56 = v21;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Started sensors with data type(s): %@", buf, 0x20u);
    }

    v23 = _ARLogSession_0(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      v26 = ARSensorDataTypesToString([(ARSession *)self runningSensors]);
      *buf = 138543874;
      v52 = v25;
      v53 = 2048;
      selfCopy6 = self;
      v55 = 2112;
      v56 = v26;
      _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Currently running sensors with data type(s): %@", buf, 0x20u);
    }

    v28 = v11 & types;
    if ((v11 & types) != types)
    {
      if (ARShouldUseLogTypeError_onceToken_21 != -1)
      {
        [ARSession runWithConfiguration:options:];
      }

      v29 = ARShouldUseLogTypeError_internalOSVersion_21;
      v30 = _ARLogSession_0(v27);
      v31 = v30;
      if (v29 == 1)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          v34 = ARSensorDataTypesToString(v28 ^ types);
          *buf = 138543874;
          v52 = v33;
          v53 = 2048;
          selfCopy6 = self;
          v55 = 2112;
          v56 = v34;
          _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to start required sensor(s) %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = ARSensorDataTypesToString(v28 ^ types);
        *buf = 138543874;
        v52 = v36;
        v53 = 2048;
        selfCopy6 = self;
        v55 = 2112;
        v56 = v37;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to start required sensor(s) %@", buf, 0x20u);
      }

      v39 = _ARLogSession_0(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = ARSensorDataTypesToString(v11);
        v43 = ARSensorDataTypesToString(types);
        *buf = 138544130;
        v52 = v41;
        v53 = 2048;
        selfCopy6 = self;
        v55 = 2112;
        v56 = v42;
        v57 = 2112;
        v58 = v43;
        _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: startedSensorDataTypes: %@  VS.  requiredDataTypes: %@", buf, 0x2Au);
      }

      v44 = ARErrorWithCodeAndUserInfo(101, 0);
      [(ARSession *)self _sessionDidFailWithError:v44];
    }

    [(ARSession *)self runningSensors];
    kdebug_trace();
    os_activity_scope_leave(&state);
  }
}

- (void)_configureSensorsForRecording
{
  v19 = *MEMORY[0x1E69E9840];
  technique = [(ARSession *)self technique];
  v4 = [technique techniqueOfClass:objc_opt_class()];

  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_availableSensors;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 setRecordingMode:{1, v14}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    if (([(ARSession *)self runningSensors]& 0x40) != 0)
    {
      latestLocationData = [(ARSession *)self latestLocationData];

      if (latestLocationData)
      {
        latestLocationData2 = [(ARSession *)self latestLocationData];
        v13 = [v4 processData:latestLocationData2];
      }
    }
  }
}

- (void)_stopSensorsWithDataTypes:(unint64_t)types keepingDataTypes:(unint64_t)dataTypes
{
  v54 = *MEMORY[0x1E69E9840];
  if (types)
  {
    array = [MEMORY[0x1E695DF70] array];
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v8 = self->_availableSensors;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
    if (v9)
    {
      v10 = *v43;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v43 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v42 + 1) + 8 * i);
          providedDataTypes = [v12 providedDataTypes];
          if ((providedDataTypes & types) != 0 && (providedDataTypes & dataTypes) == 0)
          {
            [v12 setDelegate:0];
            [array addObject:v12];
          }
        }

        v9 = [(NSArray *)v8 countByEnumeratingWithState:&v42 objects:v53 count:16];
      }

      while (v9);
    }

    if ([array count])
    {
      state.opaque[0] = 0;
      state.opaque[1] = 0;
      v15 = _os_activity_create(&dword_1C241C000, "Stopping sensors", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
      os_activity_scope_enter(v15, &state);

      v16 = kdebug_trace();
      v17 = _ARLogSession_0(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = ARSensorDataTypesToString(types);
        *buf = 138543874;
        v48 = v19;
        v49 = 2048;
        selfCopy3 = self;
        v51 = 2112;
        v52 = v20;
        _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopping sensors with data type(s): %@", buf, 0x20u);
      }

      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v21 = array;
      v22 = 0;
      v23 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
      if (v23)
      {
        v24 = *v38;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v38 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v26 = *(*(&v37 + 1) + 8 * j);
            [v26 stop];
            v22 |= [v26 providedDataTypes];
          }

          v23 = [v21 countByEnumeratingWithState:&v37 objects:v46 count:16];
        }

        while (v23);
      }

      [(ARSession *)self setRunningSensors:[(ARSession *)self runningSensors]& ~v22];
      [(ARSession *)self setPausedSensors:[(ARSession *)self pausedSensors]& ~v22];
      [(ARSession *)self runningSensors];
      v27 = kdebug_trace();
      v28 = _ARLogSession_0(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        v31 = ARSensorDataTypesToString(v22);
        *buf = 138543874;
        v48 = v30;
        v49 = 2048;
        selfCopy3 = self;
        v51 = 2112;
        v52 = v31;
        _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopped sensors with data type(s): %@", buf, 0x20u);
      }

      v33 = _ARLogSession_0(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        v36 = ARSensorDataTypesToString([(ARSession *)self runningSensors]);
        *buf = 138543874;
        v48 = v35;
        v49 = 2048;
        selfCopy3 = self;
        v51 = 2112;
        v52 = v36;
        _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Currently running sensors with data type(s): %@", buf, 0x20u);
      }

      os_activity_scope_leave(&state);
    }
  }
}

- (void)_stopAllSensorsWaitingForOutstandingCallbacks:(BOOL)callbacks
{
  callbacksCopy = callbacks;
  v47 = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_availableSensors count])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v5 = _os_activity_create(&dword_1C241C000, "Stopping all sensors", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v5, &state);

    [(ARSession *)self runningSensors];
    v6 = kdebug_trace();
    v7 = _ARLogSession_0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v44 = v9;
      v45 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopping all sensors", buf, 0x16u);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = self->_availableSensors;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v35 objects:v42 count:16];
    if (v11)
    {
      v12 = *v36;
      do
      {
        v13 = 0;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [*(*(&v35 + 1) + 8 * v13++) setDelegate:0];
        }

        while (v11 != v13);
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v35 objects:v42 count:16];
      }

      while (v11);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = self->_availableSensors;
    v15 = [(NSArray *)v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
    if (v15)
    {
      v16 = *v32;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v31 + 1) + 8 * v17++) stop];
        }

        while (v15 != v17);
        v15 = [(NSArray *)v14 countByEnumeratingWithState:&v31 objects:v41 count:16];
      }

      while (v15);
    }

    if (callbacksCopy)
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v18 = self->_availableSensors;
      v19 = [(NSArray *)v18 countByEnumeratingWithState:&v27 objects:v40 count:16];
      if (v19)
      {
        v20 = *v28;
        do
        {
          v21 = 0;
          do
          {
            if (*v28 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v27 + 1) + 8 * v21);
            if (objc_opt_respondsToSelector())
            {
              [v22 waitForOutstandingCallbacks];
            }

            ++v21;
          }

          while (v19 != v21);
          v19 = [(NSArray *)v18 countByEnumeratingWithState:&v27 objects:v40 count:16];
        }

        while (v19);
      }
    }

    [(ARSession *)self setRunningSensors:0, v27];
    [(ARSession *)self setPausedSensors:0];
    [(ARSession *)self runningSensors];
    v23 = kdebug_trace();
    v24 = _ARLogSession_0(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543618;
      v44 = v26;
      v45 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Stopped all sensors", buf, 0x16u);
    }

    os_activity_scope_leave(&state);
  }
}

- (BOOL)isPrimaryImageData:(id)data
{
  dataCopy = data;
  primaryVideoFormat = self->_primaryVideoFormat;
  v7 = 1;
  if (primaryVideoFormat)
  {
    captureDevicePosition = [(ARVideoFormat *)primaryVideoFormat captureDevicePosition];
    if (captureDevicePosition != [dataCopy cameraPosition] || objc_msgSend(dataCopy, "isHighResolution"))
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)sensor:(id)sensor didOutputSensorData:(id)data
{
  sensorCopy = sensor;
  dataCopy = data;
  [sensorCopy providedDataTypes];
  kdebug_trace();
  technique = [(ARSession *)self technique];
  secondaryTechnique = [(ARSession *)self secondaryTechnique];
  stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];
  v75 = stillImageRootTechnique;
  if (self->_techniquesWantPredictedPoseForWideCam || ARDeviceSupportsJasper(stillImageRootTechnique, v10) && ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    v11 = objc_opt_new();
    configurationInternal = [(ARSession *)self configurationInternal];
    videoFormat = [configurationInternal videoFormat];
    [v11 setCameraPosition:{objc_msgSend(videoFormat, "captureDevicePosition")}];

    worldTrackingTechnique = self->_worldTrackingTechnique;
    objc_msgSend_timestamp(dataCopy);
    v15 = [(ARWorldTrackingTechnique *)worldTrackingTechnique predictedResultDataAtTimestamp:v11 context:?];
    v16 = [v15 ar_firstObjectPassingTest:&__block_literal_global_479];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = dataCopy;
      if (v16)
      {
        [v16 visionCameraTransform];
      }

      else
      {
        v18 = *MEMORY[0x1E69E9B18];
        v19 = *(MEMORY[0x1E69E9B18] + 16);
        v20 = *(MEMORY[0x1E69E9B18] + 32);
        v21 = *(MEMORY[0x1E69E9B18] + 48);
      }

      [v17 setVisionCameraTransform:{*&v18, *&v19, *&v20, *&v21}];
      [(ARDepthPointCloudCoalescer *)self->_depthPointCloudCoalescer addDepthPointCloudData:v17];
    }
  }

  else
  {
    v16 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v33 = [technique processData:dataCopy];
    v34 = [secondaryTechnique processData:dataCopy];
    v35 = [v75 processData:dataCopy];
    goto LABEL_44;
  }

  v22 = dataCopy;
  if ([(ARSession *)self isPrimaryImageData:v22])
  {
    objc_msgSend_timestamp(v22);
    kdebug_trace();
  }

  if ([v22 cameraPosition] == 1)
  {
    cameraType = [v22 cameraType];
    v24 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(cameraType);

    if (v24)
    {
      if (ARDeviceSupportsJasper(v25, v26))
      {
        v27 = [(ARDepthPointCloudCoalescer *)self->_depthPointCloudCoalescer depthPointCloudWithPose:v16 imageData:v22];
        if (v27)
        {
          v28 = [[ARPointCloud alloc] initWithDepthPointCloud:v27];
          [v22 setPointCloud:v28];
        }

        if (v16)
        {
          [v16 visionCameraTransform];
        }

        else
        {
          v29 = *MEMORY[0x1E69E9B18];
          v30 = *(MEMORY[0x1E69E9B18] + 16);
          v31 = *(MEMORY[0x1E69E9B18] + 32);
          v32 = *(MEMORY[0x1E69E9B18] + 48);
        }

        [v22 setVisionTransform:{*&v29, *&v30, *&v31, *&v32}];
      }

      else if (v16)
      {
        [v16 visionCameraTransform];
        [v22 setVisionTransform:?];
      }
    }
  }

  if ([v22 isBackUltraWide])
  {
    v36 = v22;
    latestUltraWideImageData = self->_latestUltraWideImageData;
    self->_latestUltraWideImageData = v36;
  }

  else
  {
    latestUltraWideImageData = [v22 cameraType];
    if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(latestUltraWideImageData) && [v22 cameraPosition] == 1)
    {
      v38 = self->_latestUltraWideImageData;

      if (!v38)
      {
        goto LABEL_34;
      }

      [v22 setLatestUltraWideImage:self->_latestUltraWideImageData];
      objc_msgSend_timestamp(v22);
      [(ARImageData *)self->_latestUltraWideImageData setTimestampOfSynchronizedWideImageData:?];
      latestUltraWideImageData = self->_latestUltraWideImageData;
      self->_latestUltraWideImageData = 0;
    }
  }

LABEL_34:
  if (![v22 isBackUltraWide])
  {
LABEL_38:
    if ([(ARSession *)self isPrimaryImageData:v22])
    {
      v41 = [technique processData:v22];
      [v22 setVisionData:0];
    }

    else if ([v22 isHighResolution])
    {
      stillImageProcessingQueue = self->_stillImageProcessingQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __40__ARSession_sensor_didOutputSensorData___block_invoke_2;
      block[3] = &unk_1E817BEC8;
      v91 = v75;
      v92 = v22;
      dispatch_async(stillImageProcessingQueue, block);
    }

    else
    {
      [v22 setSecondary:1];
      v43 = [secondaryTechnique processData:v22];
      v44 = [(ARRecordingTechniquePublic *)self->_recordingTechnique processData:v22];
    }

LABEL_44:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(ARSession *)self _sessionDidOutputAudioData:dataCopy];
LABEL_80:
      kdebug_trace();
      goto LABEL_81;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v51 = [dataCopy copy];
        [(ARSession *)self setLatestDeviceOrientationData:v51];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_80;
        }

        v51 = [dataCopy copy];
        [(ARSession *)self setLatestLocationData:v51];
      }

      goto LABEL_80;
    }

    v74 = technique;
    v45 = dataCopy;
    isSecondary = [v45 isSecondary];
    v47 = 296;
    if (isSecondary)
    {
      v47 = 304;
    }

    v48 = *(&self->super.isa + v47);
    if ([v48 schedulingActive] && !objc_msgSend(v45, "isHighResolution"))
    {
      captureFramesPerSecond = [v45 captureFramesPerSecond];
      configurationInternal2 = [(ARSession *)self configurationInternal];
      v67 = [configurationInternal2 isKindOfConfiguration:objc_opt_class()];

      if (v67)
      {
        captureFramesPerSecond = 60;
        v68 = 60 / [v45 captureFramesPerSecond];
      }

      else
      {
        v68 = 1;
      }

      objc_initWeak(&location, self);
      [v48 setExpectedFramesPerSecond:{-[ARSession _preferredRenderSyncFrameRateForCaptureFrameRate:](self, "_preferredRenderSyncFrameRateForCaptureFrameRate:", objc_msgSend(v45, "captureFramesPerSecond"))}];
      if (v68 >= 1)
      {
        for (i = 0; i != v68; ++i)
        {
          objc_msgSend_timestamp(v45);
          v72 = 1.0 / captureFramesPerSecond * i + v71;
          kdebug_trace();
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 3221225472;
          v77[2] = __40__ARSession_sensor_didOutputSensorData___block_invoke_4;
          v77[3] = &unk_1E817CED8;
          objc_copyWeak(v79, &location);
          v79[1] = *&v72;
          v78 = v45;
          v79[2] = i;
          [v48 submitBlock:v77];

          objc_destroyWeak(v79);
        }
      }

      objc_destroyWeak(&location);
      goto LABEL_79;
    }

    technique2 = [(ARSession *)self technique];
    if ([v45 isSecondary])
    {
      secondaryTechnique2 = [(ARSession *)self secondaryTechnique];
    }

    else
    {
      if (![v45 isHighResolution])
      {
LABEL_61:
        if (technique2)
        {
          objc_msgSend_timestamp(v45);
          kdebug_trace();
          _frameContextByConsumingPendingChanges = [(ARSession *)self _frameContextByConsumingPendingChanges];
          [_frameContextByConsumingPendingChanges setImageData:v45];
          latestDeviceOrientationData = [(ARSession *)self latestDeviceOrientationData];
          [_frameContextByConsumingPendingChanges setOrientationData:latestDeviceOrientationData];

          latestLocationData = [(ARSession *)self latestLocationData];
          [_frameContextByConsumingPendingChanges setLocationData:latestLocationData];

          objc_msgSend_timestamp(v45);
          kdebug_trace();
          imageData = [_frameContextByConsumingPendingChanges imageData];
          configurationInternal3 = [(ARSession *)self configurationInternal];
          v58 = ARTimerFramesPerSecond(imageData, configurationInternal3);

          v59 = v58 / [v45 captureFramesPerSecond];
          v60 = 0;
          if (([v45 isHighResolution] & 1) == 0)
          {
            [(ARFrameUpdateTimer *)self->_frameUpdateTimer timeoutForNextFrameUpdateWithNumberOfInFlightContexts:[(ARFrameContextHandler *)self->_frameContextHandler numberOfInFlightContexts]];
            v60 = v61;
          }

          if (v59 == 1)
          {
            objc_msgSend_timestamp(v45);
            kdebug_trace();
            objc_msgSend_timestamp(v45);
            [technique2 requestResultDataAtTimestamp:_frameContextByConsumingPendingChanges context:? withTimeout:?];
          }

          else
          {
            resultDataPredictionQueue = self->_resultDataPredictionQueue;
            v81[0] = MEMORY[0x1E69E9820];
            v81[1] = 3221225472;
            v81[2] = __40__ARSession_sensor_didOutputSensorData___block_invoke_3;
            v81[3] = &unk_1E817CEB0;
            v86 = v59;
            v87 = v58;
            v82 = v45;
            v83 = technique2;
            v88 = v60;
            v89 = fmax(1.0 / v58 + -0.005, 0.0);
            v84 = _frameContextByConsumingPendingChanges;
            selfCopy = self;
            dispatch_async(resultDataPredictionQueue, v81);
          }
        }

        sensorCopy = v73;
LABEL_79:

        technique = v74;
        goto LABEL_80;
      }

      secondaryTechnique2 = [(ARSession *)self stillImageRootTechnique];
    }

    v52 = secondaryTechnique2;

    technique2 = v52;
    goto LABEL_61;
  }

  captureDeviceType = [(ARVideoFormat *)self->_primaryVideoFormat captureDeviceType];
  if ([captureDeviceType isEqualToString:*MEMORY[0x1E6986948]])
  {

    goto LABEL_38;
  }

  is6DofFaceTracking = [(ARSession *)self is6DofFaceTracking];

  if (is6DofFaceTracking)
  {
    goto LABEL_38;
  }

  if (self->_configuredForWorldTracking)
  {
    v62 = [(ARWorldTrackingTechnique *)self->_worldTrackingTechnique processData:v22];
  }

  v63 = [(AREnvironmentTexturingTechnique *)self->_environmentTexturingTechnique processData:v22];
  v64 = [(ARRecordingTechniquePublic *)self->_recordingTechnique processData:v22];
  [v22 setVisionData:0];

LABEL_81:
}

uint64_t __40__ARSession_sensor_didOutputSensorData___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    *a4 = 1;
  }

  return isKindOfClass & 1;
}

void __40__ARSession_sensor_didOutputSensorData___block_invoke_3(uint64_t a1, const char *a2)
{
  if (*(a1 + 64) >= 1)
  {
    v18 = v11;
    v19 = v10;
    v20 = v9;
    v21 = v8;
    v22 = v5;
    v23 = v4;
    v24 = v3;
    v25 = v2;
    v26 = v6;
    v27 = v7;
    v13 = 0;
    do
    {
      v14 = 1.0 / *(a1 + 72) * v13;
      objc_msgSend_timestamp(*(a1 + 32), a2, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
      v16 = v15 + v14;
      if (v13)
      {
        v17 = [*(a1 + 40) predictedResultDataAtTimestamp:*(a1 + 48) context:v16];
        usleep((*(a1 + 88) * 1000000.0));
        [*(a1 + 56) technique:*(a1 + 40) didOutputResultData:v17 timestamp:*(a1 + 48) context:v16];
      }

      else
      {
        kdebug_trace();
        [*(a1 + 40) requestResultDataAtTimestamp:*(a1 + 48) context:v16 withTimeout:*(a1 + 80)];
      }

      ++v13;
    }

    while (v13 < *(a1 + 64));
  }
}

void __40__ARSession_sensor_didOutputSensorData___block_invoke_4(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v21 = a1;
    kdebug_trace();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v3 = WeakRetained[69];
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v23;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v23 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v22 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            v9 = [v8 providedDataTypes];
            if ((v9 & ~[WeakRetained runningSensors]) == 0)
            {
              v10 = [v8 currentData];
              if (v10)
              {
                v11 = [WeakRetained technique];
                v12 = [v11 processData:v10];

                v13 = [WeakRetained secondaryTechnique];
                v14 = [v13 processData:v10];

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v15 = [v10 copy];
                  [WeakRetained setLatestDeviceOrientationData:v15];
                }
              }
            }
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v5);
    }

    if ([*(v21 + 32) isSecondary])
    {
      [WeakRetained secondaryTechnique];
    }

    else
    {
      [WeakRetained technique];
    }
    v16 = ;
    if (v16)
    {
      kdebug_trace();
      v17 = [WeakRetained _frameContextByConsumingPendingChanges];
      [v17 setImageData:*(v21 + 32)];
      v18 = [WeakRetained latestDeviceOrientationData];
      [v17 setOrientationData:v18];

      v19 = [WeakRetained latestLocationData];
      [v17 setLocationData:v19];

      if (*(v21 + 56) < 1)
      {
        kdebug_trace();
        [v16 requestResultDataAtTimestamp:v17 context:*(v21 + 48)];
      }

      else
      {
        v20 = [v16 predictedResultDataAtTimestamp:v17 context:*(v21 + 48)];
        [WeakRetained technique:v16 didOutputResultData:v20 timestamp:v17 context:*(v21 + 48)];
      }
    }
  }

  else
  {
    v16 = _ARLogSession_0(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "Ignoring request result call, because session is nil", buf, 2u);
    }
  }
}

- (void)sensor:(id)sensor didFailWithError:(id)error
{
  v30 = *MEMORY[0x1E69E9840];
  sensorCopy = sensor;
  errorCopy = error;
  configurationInternal = [(ARSession *)self configurationInternal];
  if ([configurationInternal isKindOfConfiguration:objc_opt_class()])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      goto LABEL_12;
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    configurationInternal = [errorCopy underlyingErrors];
    v10 = [configurationInternal countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(configurationInternal);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 code] == 102)
          {
            if (_ARLogSensor_onceToken_8 != -1)
            {
              [ARSession sensor:didFailWithError:];
            }

            v15 = _ARLogSensor_logObj_8;
            if (os_log_type_enabled(_ARLogSensor_logObj_8, OS_LOG_TYPE_DEBUG))
            {
              v16 = v15;
              v17 = objc_opt_class();
              v18 = NSStringFromClass(v17);
              *buf = 138543874;
              v24 = v18;
              v25 = 2048;
              selfCopy = self;
              v27 = 2112;
              v28 = v14;
              _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Restarting device orientation sensor with magnetic north reference frame due to %@.", buf, 0x20u);
            }

            [sensorCopy changeReferenceFrame:4];
            [(ARSessionMetrics *)self->_metrics recordTrueNorthUnavailable];

            goto LABEL_20;
          }
        }

        v11 = [configurationInternal countByEnumeratingWithState:&v19 objects:v29 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_12:
  if ([errorCopy code] == 107)
  {
    [(ARSession *)self _sessionDidCaptureHighResolutionFrame:0 error:errorCopy];
  }

  else
  {
    [(ARSession *)self _sessionDidFailWithError:errorCopy];
  }

LABEL_20:
}

- (void)sensorDidPause:(id)pause
{
  v19 = *MEMORY[0x1E69E9840];
  pauseCopy = pause;
  v5 = _ARLogSession_0(pauseCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v16 = v7;
    v17 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: begin interruption", buf, 0x16u);
  }

  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__ARSession_sensorDidPause___block_invoke;
  block[3] = &unk_1E817BEC8;
  block[4] = self;
  v14 = pauseCopy;
  v9 = pauseCopy;
  dispatch_async(stateQueue, block);
  v10 = dispatch_time(0, 400000000);
  v11 = self->_stateQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __28__ARSession_sensorDidPause___block_invoke_3;
  v12[3] = &unk_1E817BFE8;
  v12[4] = self;
  dispatch_after(v10, v11, v12);
}

uint64_t __28__ARSession_sensorDidPause___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) pausedSensors])
  {
    [*(*(a1 + 32) + 592) sessionStopped];
    [*(a1 + 32) _getObservers];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v2 = v16 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v3)
    {
      v4 = *v16;
      do
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v16 != v4)
          {
            objc_enumerationMutation(v2);
          }

          v6 = *(*(&v15 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v6 sessionWasInterrupted:*(a1 + 32)];
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v3);
    }

    v7 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, v7);
      v8 = [*(a1 + 32) delegateQueue];
      v9 = v8;
      if (!v8)
      {
        v9 = MEMORY[0x1E69E96A0];
        v10 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __28__ARSession_sensorDidPause___block_invoke_2;
      block[3] = &unk_1E817BDB0;
      objc_copyWeak(&v13, &location);
      block[4] = *(a1 + 32);
      dispatch_async(v9, block);
      if (!v8)
      {
      }

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  return [*(a1 + 32) setPausedSensors:{objc_msgSend(*(a1 + 32), "pausedSensors") | objc_msgSend(*(a1 + 40), "providedDataTypes")}];
}

void __28__ARSession_sensorDidPause___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sessionWasInterrupted:*(a1 + 32)];
}

void __28__ARSession_sensorDidPause___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) pausedSensors])
  {
    v2 = _ARLogSession_0([*(a1 + 32) _interruptSession]);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = *(a1 + 32);
      v9 = 138543618;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      v6 = "%{public}@ <%p>: interrupted";
LABEL_6:
      _os_log_impl(&dword_1C241C000, v2, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x16u);
    }
  }

  else
  {
    v2 = _ARLogSession_0(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v4 = NSStringFromClass(v7);
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v4;
      v11 = 2048;
      v12 = v8;
      v6 = "%{public}@ <%p>: cancel interruption";
      goto LABEL_6;
    }
  }
}

- (void)sensorDidRestart:(id)restart
{
  v16 = *MEMORY[0x1E69E9840];
  restartCopy = restart;
  v5 = _ARLogSession_0(restartCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543618;
    v13 = v7;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: end interruption", buf, 0x16u);
  }

  stateQueue = self->_stateQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__ARSession_sensorDidRestart___block_invoke;
  v10[3] = &unk_1E817BEC8;
  v10[4] = self;
  v11 = restartCopy;
  v9 = restartCopy;
  dispatch_async(stateQueue, v10);
}

void __30__ARSession_sensorDidRestart___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) setPausedSensors:{objc_msgSend(*(a1 + 32), "pausedSensors") & ~objc_msgSend(*(a1 + 40), "providedDataTypes")}];
  if (![*(a1 + 32) pausedSensors])
  {
    [*(a1 + 32) _endInterruption];
    v2 = *(a1 + 32);
    v3 = v2[74];
    v4 = [v2 configurationInternal];
    [v3 sessionStarted:v2 withConfiguration:v4];

    [*(a1 + 32) _getObservers];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v5 = v18 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = *v18;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v17 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v9 sessionInterruptionEnded:*(a1 + 32)];
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v6);
    }

    v10 = [*(a1 + 32) delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, v10);
      v11 = [*(a1 + 32) delegateQueue];
      v12 = v11;
      if (!v11)
      {
        v12 = MEMORY[0x1E69E96A0];
        v13 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __30__ARSession_sensorDidRestart___block_invoke_2;
      block[3] = &unk_1E817BDB0;
      objc_copyWeak(&v15, &location);
      block[4] = *(a1 + 32);
      dispatch_async(v12, block);
      if (!v11)
      {
      }

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __30__ARSession_sensorDidRestart___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained sessionInterruptionEnded:*(a1 + 32)];
}

- (void)_sessionWillRunWithConfiguration:(id)configuration
{
  v16 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  _getObservers = [(ARSession *)self _getObservers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [_getObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_getObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 session:self willRunWithConfiguration:configurationCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_getObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_sessionRequestedRunWithConfiguration:(id)configuration options:(unint64_t)options
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  _getObservers = [(ARSession *)self _getObservers];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [_getObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(_getObservers);
        }

        v12 = *(*(&v13 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 session:self requestedRunWithConfiguration:configurationCopy options:options];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [_getObservers countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_sessionDidUpdateFrame:(id)frame
{
  v34 = *MEMORY[0x1E69E9840];
  frameCopy = frame;
  objc_msgSend_timestamp(frameCopy);
  kdebug_trace();
  capturedImage = [frameCopy capturedImage];
  os_unfair_lock_lock_with_options();
  v6 = objc_autoreleasePoolPush();
  [(NSPointerArray *)self->_weakPixelBuffers ar_compactZeroedWeakPointers];
  if (![(NSPointerArray *)self->_weakPixelBuffers count]|| [(NSPointerArray *)self->_weakPixelBuffers pointerAtIndex:[(NSPointerArray *)self->_weakPixelBuffers count]- 1]!= capturedImage)
  {
    [(NSPointerArray *)self->_weakPixelBuffers addPointer:capturedImage];
  }

  objc_autoreleasePoolPop(v6);
  v7 = [(NSPointerArray *)self->_weakPixelBuffers count];
  os_unfair_lock_unlock(&self->_weakPixelBuffersLock);
  if (v7 < 0xB || self->_replaySensor)
  {
    [(ARSession *)self _getObservers];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v9 = v25 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v10)
    {
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v24 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v13 session:self didUpdateFrame:frameCopy];
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    delegate = [(ARSession *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(location, delegate);
      delegateQueue = [(ARSession *)self delegateQueue];
      v16 = delegateQueue;
      if (!delegateQueue)
      {
        v16 = MEMORY[0x1E69E96A0];
        v17 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __36__ARSession__sessionDidUpdateFrame___block_invoke;
      block[3] = &unk_1E817CF00;
      objc_copyWeak(&v23, location);
      block[4] = self;
      v22 = frameCopy;
      dispatch_async(v16, block);
      if (!delegateQueue)
      {
      }

      objc_destroyWeak(&v23);
      objc_destroyWeak(location);
    }

    objc_msgSend_timestamp(frameCopy);
    kdebug_trace();
  }

  else
  {
    v18 = _ARLogSession_0(v8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      *location = 138543874;
      *&location[4] = v20;
      v30 = 2048;
      selfCopy = self;
      v32 = 2048;
      v33 = v7;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: The delegate of ARSession is retaining %lu ARFrames. The camera will stop delivering camera images if the delegate keeps holding on to too many ARFrames. This could be a threading or memory management issue in the delegate and should be fixed.", location, 0x20u);
    }

    objc_msgSend_timestamp(frameCopy);
    kdebug_trace();
    kdebug_trace();
  }
}

void __36__ARSession__sessionDidUpdateFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didUpdateFrame:*(a1 + 40)];
}

- (void)_sessionDidCaptureHighResolutionFrame:(id)frame error:(id)error
{
  frameCopy = frame;
  errorCopy = error;
  dispatch_semaphore_wait(self->_pendingHiResFrameCaptureSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_pendingHiResFrameCaptureCompletionBlock)
  {
    self->_isHiResFrameCaptureInProgress = 0;
    v8 = MEMORY[0x1C691B4C0]();
    pendingHiResFrameCaptureCompletionBlock = self->_pendingHiResFrameCaptureCompletionBlock;
    self->_pendingHiResFrameCaptureCompletionBlock = 0;

    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
    if (v8)
    {
      delegateQueue = [(ARSession *)self delegateQueue];
      v11 = delegateQueue;
      if (!delegateQueue)
      {
        v11 = MEMORY[0x1E69E96A0];
        v12 = MEMORY[0x1E69E96A0];
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __57__ARSession__sessionDidCaptureHighResolutionFrame_error___block_invoke;
      block[3] = &unk_1E817CC78;
      v17 = v8;
      v15 = frameCopy;
      v16 = errorCopy;
      v13 = v8;
      dispatch_async(v11, block);
      if (!delegateQueue)
      {
      }
    }
  }

  else
  {
    dispatch_semaphore_signal(self->_pendingHiResFrameCaptureSemaphore);
  }
}

- (void)_sessionCameraDidChangeTrackingState:(id)state
{
  v38 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  [stateCopy trackingState];
  [stateCopy trackingStateReason];
  kdebug_trace();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1C241C000, "Tracking state changed", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v7 = _ARLogSession_0(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = ARTrackingStateToString([stateCopy trackingState]);
    v11 = ARTrackingStateReasonToString([stateCopy trackingStateReason]);
    *buf = 138544130;
    v31 = v9;
    v32 = 2048;
    selfCopy = self;
    v34 = 2112;
    v35 = v10;
    v36 = 2112;
    v37 = v11;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Tracking state changed: %@ reason: %@", buf, 0x2Au);
  }

  [(ARSession *)self _getObservers];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v12 = v25 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v16 session:self cameraDidChangeTrackingState:stateCopy];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v19 = delegateQueue;
    if (!delegateQueue)
    {
      v19 = MEMORY[0x1E69E96A0];
      v20 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__ARSession__sessionCameraDidChangeTrackingState___block_invoke;
    block[3] = &unk_1E817CF00;
    objc_copyWeak(&v23, buf);
    block[4] = self;
    v22 = stateCopy;
    dispatch_async(v19, block);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }

  [stateCopy trackingState];
  [stateCopy trackingStateReason];
  kdebug_trace();

  os_activity_scope_leave(&state);
}

void __50__ARSession__sessionCameraDidChangeTrackingState___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) cameraDidChangeTrackingState:*(a1 + 40)];
}

- (void)_sessionDidFailWithError:(id)error
{
  v31 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = _ARLogSession_0(errorCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    *buf = 138543874;
    v26 = v7;
    v27 = 2048;
    selfCopy = self;
    v29 = 2112;
    v30 = errorCopy;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: did fail with error: %@", buf, 0x20u);
  }

  [(ARSessionMetrics *)self->_metrics reportSessionFailure:errorCopy];
  [errorCopy code];
  kdebug_trace();
  [(ARSession *)self pause];
  [(ARSession *)self _getObservers];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v8 = v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v12 session:self didFailWithError:errorCopy];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v15 = delegateQueue;
    if (!delegateQueue)
    {
      v15 = MEMORY[0x1E69E96A0];
      v16 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__ARSession__sessionDidFailWithError___block_invoke;
    block[3] = &unk_1E817CF00;
    objc_copyWeak(&v19, buf);
    block[4] = self;
    v18 = errorCopy;
    dispatch_async(v15, block);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v19);
    objc_destroyWeak(buf);
  }

  [errorCopy code];
  kdebug_trace();
}

void __38__ARSession__sessionDidFailWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)_sessionDidAddAnchors:(id)anchors
{
  v30 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  [anchorsCopy count];
  kdebug_trace();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_1C241C000, "Did add anchors", arkitActivity, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  [(ARSession *)self _getObservers];
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v6 = v25 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v10 session:self didAddAnchors:anchorsCopy];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v11 = ARAnchorsForPublicDelegate(anchorsCopy);
  if ([v11 count])
  {
    delegate = [(ARSession *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, delegate);
      delegateQueue = [(ARSession *)self delegateQueue];
      v14 = delegateQueue;
      if (!delegateQueue)
      {
        v14 = MEMORY[0x1E69E96A0];
        v15 = MEMORY[0x1E69E96A0];
      }

      v16 = MEMORY[0x1E69E9820];
      v17 = 3221225472;
      v18 = __35__ARSession__sessionDidAddAnchors___block_invoke;
      v19 = &unk_1E817CF00;
      objc_copyWeak(&v22, &location);
      selfCopy = self;
      v21 = v11;
      dispatch_async(v14, &v16);
      if (!delegateQueue)
      {
      }

      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  [anchorsCopy count];
  kdebug_trace();

  os_activity_scope_leave(&state);
}

void __35__ARSession__sessionDidAddAnchors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didAddAnchors:*(a1 + 40)];
}

- (void)_sessionDidUpdateAnchors:(id)anchors
{
  v28 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  [anchorsCopy count];
  kdebug_trace();
  [(ARSession *)self _getObservers];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 session:self didUpdateAnchors:anchorsCopy];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v10 = ARAnchorsForPublicDelegate(anchorsCopy);
  if ([v10 count])
  {
    delegate = [(ARSession *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, delegate);
      delegateQueue = [(ARSession *)self delegateQueue];
      v13 = delegateQueue;
      if (!delegateQueue)
      {
        v13 = MEMORY[0x1E69E96A0];
        v14 = MEMORY[0x1E69E96A0];
      }

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __38__ARSession__sessionDidUpdateAnchors___block_invoke;
      v18 = &unk_1E817CF00;
      objc_copyWeak(&v21, &location);
      selfCopy = self;
      v20 = v10;
      dispatch_async(v13, &v15);
      if (!delegateQueue)
      {
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  [anchorsCopy count];
  kdebug_trace();
}

void __38__ARSession__sessionDidUpdateAnchors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didUpdateAnchors:*(a1 + 40)];
}

- (void)_sessionDidRemoveAnchors:(id)anchors
{
  v28 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  [anchorsCopy count];
  kdebug_trace();
  [(ARSession *)self _getObservers];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v5 = v24 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = *v24;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 session:self didRemoveAnchors:anchorsCopy];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v6);
  }

  v10 = ARAnchorsForPublicDelegate(anchorsCopy);
  if ([v10 count])
  {
    delegate = [(ARSession *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      objc_initWeak(&location, delegate);
      delegateQueue = [(ARSession *)self delegateQueue];
      v13 = delegateQueue;
      if (!delegateQueue)
      {
        v13 = MEMORY[0x1E69E96A0];
        v14 = MEMORY[0x1E69E96A0];
      }

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __38__ARSession__sessionDidRemoveAnchors___block_invoke;
      v18 = &unk_1E817CF00;
      objc_copyWeak(&v21, &location);
      selfCopy = self;
      v20 = v10;
      dispatch_async(v13, &v15);
      if (!delegateQueue)
      {
      }

      objc_destroyWeak(&v21);
      objc_destroyWeak(&location);
    }
  }

  [anchorsCopy count];
  kdebug_trace();
}

void __38__ARSession__sessionDidRemoveAnchors___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didRemoveAnchors:*(a1 + 40)];
}

- (void)_sessionDidUpdateExternalAnchors:(id)anchors
{
  v16 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  [anchorsCopy count];
  kdebug_trace();
  _getObservers = [(ARSession *)self _getObservers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [_getObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(_getObservers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 session:self didUpdateExternalAnchors:anchorsCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [_getObservers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [anchorsCopy count];
  kdebug_trace();
}

- (void)_sessionShouldAttemptRelocalization
{
  v31 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __48__ARSession__sessionShouldAttemptRelocalization__block_invoke;
  v25[3] = &unk_1E817CF28;
  v25[4] = self;
  objc_copyWeak(&v26, &location);
  v25[5] = v27;
  v3 = MEMORY[0x1C691B4C0](v25);
  [(ARSession *)self _getObservers];
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  obj = v21 = 0u;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
  if (v4)
  {
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          stateQueue = self->_stateQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __48__ARSession__sessionShouldAttemptRelocalization__block_invoke_511;
          block[3] = &unk_1E817CC78;
          v9 = v3;
          block[5] = self;
          v20 = v9;
          block[4] = v7;
          dispatch_async(stateQueue, block);
        }

        if (objc_opt_respondsToSelector())
        {
          [v7 sessionShouldAttemptRelocalization:self completion:v3];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v30 count:16];
    }

    while (v4);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&from, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v12 = delegateQueue;
    if (!delegateQueue)
    {
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __48__ARSession__sessionShouldAttemptRelocalization__block_invoke_2;
    v15[3] = &unk_1E817CF50;
    v16 = v3;
    objc_copyWeak(&v17, &from);
    v15[4] = self;
    dispatch_async(v12, v15);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v17);
    objc_destroyWeak(&from);
  }

  objc_destroyWeak(&v26);
  _Block_object_dispose(v27, 8);
  objc_destroyWeak(&location);
}

void __48__ARSession__sessionShouldAttemptRelocalization__block_invoke(uint64_t a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(*(*(a1 + 32) + 136), 0xFFFFFFFFFFFFFFFFLL);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  v6 = *(*(a1 + 40) + 8);
  if ((*(v6 + 24) & 1) == 0)
  {
    if (WeakRetained)
    {
      *(v6 + 24) = 1;
      v7 = [WeakRetained relocalizing];
      if (v7)
      {
        v8 = _ARLogSession_0(v7);
        v9 = os_log_type_enabled(v8, OS_LOG_TYPE_INFO);
        if (a2)
        {
          if (v9)
          {
            v10 = objc_opt_class();
            v11 = NSStringFromClass(v10);
            v12 = *(a1 + 32);
            v18 = 138543618;
            v19 = v11;
            v20 = 2048;
            v21 = v12;
            _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: developer asked for relocalization", &v18, 0x16u);
          }

          v5[272] = 1;
        }

        else
        {
          if (v9)
          {
            v13 = objc_opt_class();
            v14 = NSStringFromClass(v13);
            v15 = *(a1 + 32);
            v18 = 138543618;
            v19 = v14;
            v20 = 2048;
            v21 = v15;
            _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: developer specifically declined relocalization", &v18, 0x16u);
          }

          v16 = [MEMORY[0x1E695DF00] date];
          v17 = *(v5 + 33);
          *(v5 + 33) = v16;
        }
      }
    }
  }

  dispatch_semaphore_signal(*(*(a1 + 32) + 136));
}

uint64_t __48__ARSession__sessionShouldAttemptRelocalization__block_invoke_511(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) sessionShouldAttemptRelocalization:*(a1 + 40)];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void __48__ARSession__sessionShouldAttemptRelocalization__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  (*(v2 + 16))(v2, [WeakRetained sessionShouldAttemptRelocalization:*(a1 + 32)]);
}

- (void)_sessionDidOutputAudioData:(id)data
{
  v23 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  objc_msgSend_timestamp(dataCopy);
  kdebug_trace();
  [(ARSession *)self _getObservers];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v5 = v19 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 session:self didOutputAudioSampleBuffer:{objc_msgSend(dataCopy, "sampleBuffer")}];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v12 = delegateQueue;
    if (!delegateQueue)
    {
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __40__ARSession__sessionDidOutputAudioData___block_invoke;
    v14[3] = &unk_1E817CF00;
    objc_copyWeak(&v16, &location);
    v14[4] = self;
    v15 = dataCopy;
    dispatch_async(v12, v14);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }
}

void __40__ARSession__sessionDidOutputAudioData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didOutputAudioSampleBuffer:{objc_msgSend(*(a1 + 40), "sampleBuffer")}];
}

- (void)_sessionDidOutputCollaborationData:(id)data
{
  v33 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = _ARLogSession_0(dataCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromARCollaborationData(dataCopy);
    *buf = 138543874;
    v28 = v7;
    v29 = 2048;
    selfCopy = self;
    v31 = 2112;
    v32 = v8;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: didOutputCollaborationData: %@", buf, 0x20u);
  }

  objc_msgSend_timestamp(dataCopy);
  [dataCopy vioDataType];
  vioData = [dataCopy vioData];
  [vioData length];
  kdebug_trace();

  [(ARSession *)self _getObservers];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v10 = v23 = 0u;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 session:self didOutputCollaborationData:dataCopy];
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(buf, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v17 = delegateQueue;
    if (!delegateQueue)
    {
      v17 = MEMORY[0x1E69E96A0];
      v18 = MEMORY[0x1E69E96A0];
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__ARSession__sessionDidOutputCollaborationData___block_invoke;
    block[3] = &unk_1E817CF00;
    objc_copyWeak(&v21, buf);
    block[4] = self;
    v20 = dataCopy;
    dispatch_async(v17, block);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  [(ARRecordingTechniquePublic *)self->_recordingTechnique recordCollaborationData:dataCopy localSession:1];
  objc_msgSend_timestamp(dataCopy);
  kdebug_trace();
}

void __48__ARSession__sessionDidOutputCollaborationData___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didOutputCollaborationData:*(a1 + 40)];
}

- (void)_sessionDidChangeGeoTrackingStatus:(id)status
{
  v27 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  [statusCopy state];
  [statusCopy stateReason];
  [statusCopy accuracy];
  kdebug_trace();
  [(ARSession *)self _getObservers];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v5 = v23 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v6)
  {
    v7 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 session:self didChangeGeoTrackingStatus:statusCopy];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  delegate = [(ARSession *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    objc_initWeak(&location, delegate);
    delegateQueue = [(ARSession *)self delegateQueue];
    v12 = delegateQueue;
    if (!delegateQueue)
    {
      v12 = MEMORY[0x1E69E96A0];
      v13 = MEMORY[0x1E69E96A0];
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __48__ARSession__sessionDidChangeGeoTrackingStatus___block_invoke;
    v17 = &unk_1E817CF00;
    objc_copyWeak(&v20, &location);
    selfCopy = self;
    v19 = statusCopy;
    dispatch_async(v12, &v14);
    if (!delegateQueue)
    {
    }

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  [statusCopy state];
  [statusCopy stateReason];
  [statusCopy accuracy];
  kdebug_trace();
}

void __48__ARSession__sessionDidChangeGeoTrackingStatus___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained session:*(a1 + 32) didChangeGeoTrackingStatus:*(a1 + 40)];
}

- (void)_sessionDidUpdateSpatialMappingPointClouds:(id)clouds
{
  v16 = *MEMORY[0x1E69E9840];
  cloudsCopy = clouds;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_observers;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 session:self didUpdateSpatialMappingPointClouds:{cloudsCopy, v11}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)technique:(id)technique didChangeState:(int64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  if (state == 3)
  {
    v5 = [MEMORY[0x1E696AFB0] ar_UUIDWithIntegerValue:{objc_msgSend(technique, "vioSessionIdentifier")}];
    [(ARSession *)self setIdentifier:v5];

    v7 = _ARLogSession_0(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      identifier = [(ARSession *)self identifier];
      v11 = 138543874;
      v12 = v9;
      v13 = 2048;
      selfCopy = self;
      v15 = 2112;
      v16 = identifier;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: identifier changed to %@", &v11, 0x20u);
    }
  }
}

- (void)technique:(id)technique didOutputCollaborationData:(id)data
{
  v20 = *MEMORY[0x1E69E9840];
  techniqueCopy = technique;
  dataCopy = data;
  v8 = _ARLogSession_0(dataCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = NSStringFromARCollaborationData(dataCopy);
    v12 = 138544130;
    v13 = v10;
    v14 = 2048;
    selfCopy = self;
    v16 = 2048;
    v17 = techniqueCopy;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Technique (%p) didOutputCollaborationData: %@", &v12, 0x2Au);
  }

  if ([dataCopy vioDataType] == 1 || objc_msgSend(dataCopy, "vioDataType") == 3)
  {
    dispatch_semaphore_wait(self->_frameContextHandlerSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    [(ARFrameContextHandler *)self->_frameContextHandler addCollaborationData:dataCopy];
    dispatch_semaphore_signal(self->_frameContextHandlerSemaphore);
  }

  else
  {
    [(ARSession *)self _sessionDidOutputCollaborationData:dataCopy];
  }
}

- (BOOL)is6DofFaceTracking
{
  configurationInternal = [(ARSession *)self configurationInternal];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    configurationInternal2 = [(ARSession *)self configurationInternal];
    templateConfiguration = [configurationInternal2 templateConfiguration];

    configurationInternal = templateConfiguration;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isWorldTrackingEnabled = [configurationInternal isWorldTrackingEnabled];
  }

  else
  {
    isWorldTrackingEnabled = 0;
  }

  return isWorldTrackingEnabled;
}

- (BOOL)isUserFaceTracking
{
  configurationInternal = [(ARSession *)self configurationInternal];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    configurationInternal2 = [(ARSession *)self configurationInternal];
    templateConfiguration = [configurationInternal2 templateConfiguration];

    configurationInternal = templateConfiguration;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    userFaceTrackingEnabled = [configurationInternal userFaceTrackingEnabled];
  }

  else
  {
    userFaceTrackingEnabled = 0;
  }

  return userFaceTrackingEnabled;
}

- (void)_saveGraphFileInFileName:(id *)name
{
  v36 = *MEMORY[0x1E69E9840];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.session.configuration.saveDotGraph"])
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:@"digraph g { "];
    [array addObject:@"node [shape=record]"];
    technique = [(ARSession *)self technique];
    [technique dotGraphWithLines:array rootName:@"Primary"];

    stillImageRootTechnique = [(ARSession *)self stillImageRootTechnique];
    [stillImageRootTechnique dotGraphWithLines:array rootName:@"HighRes"];

    [array addObject:@"}"];
    v8 = [array componentsJoinedByString:@"\n"];
    v9 = NSTemporaryDirectory();
    configurationInternal = [(ARSession *)self configurationInternal];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v9 stringByAppendingFormat:@"%@.dot", v12];

    v29 = 0;
    [v8 writeToFile:v13 atomically:1 encoding:4 error:&v29];
    v14 = v29;
    v15 = v14;
    if (!v14)
    {
      v24 = _ARLogGeneral_9(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138543874;
        v31 = v26;
        v32 = 2048;
        selfCopy3 = self;
        v34 = 2114;
        v35 = v13;
        _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Graph: Successfully wrote the configuration's dot file to '%{public}@'", buf, 0x20u);
      }

      if (name)
      {
        v27 = v13;
        *name = v13;
      }

      goto LABEL_16;
    }

    if (ARShouldUseLogTypeError_onceToken_21 != -1)
    {
      [ARSession runWithConfiguration:options:];
    }

    v16 = ARShouldUseLogTypeError_internalOSVersion_21;
    v17 = _ARLogGeneral_9(v14);
    v18 = v17;
    if (v16 == 1)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138543874;
        v31 = v20;
        v32 = 2048;
        selfCopy3 = self;
        v34 = 2112;
        v35 = v15;
        v21 = "%{public}@ <%p>: Graph: Could not write dot graph to file. Error: %@";
        v22 = v18;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v22, v23, v21, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v20 = NSStringFromClass(v28);
      *buf = 138543874;
      v31 = v20;
      v32 = 2048;
      selfCopy3 = self;
      v34 = 2112;
      v35 = v15;
      v21 = "Error: %{public}@ <%p>: Graph: Could not write dot graph to file. Error: %@";
      v22 = v18;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

LABEL_16:
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end