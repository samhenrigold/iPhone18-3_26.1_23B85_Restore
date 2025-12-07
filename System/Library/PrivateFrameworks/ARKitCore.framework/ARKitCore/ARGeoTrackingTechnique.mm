@interface ARGeoTrackingTechnique
+ (BOOL)isCameraUp:(float)up;
+ (BOOL)isSupportedWithOptions:(unint64_t)options;
+ (int64_t)getFailureReasonFromVLError:(int64_t)error;
- (ARGeoTrackingTechnique)init;
- (ARGeoTrackingTechnique)initWithAuditToken:(id)token;
- (BOOL)reconfigurableFrom:(id)from;
- (__n128)getLocationFromWorldPosition:(__n128 *)position@<X8> error:(__n128)error@<Q0>;
- (id)processData:(id)data;
- (id)resultDataClasses;
- (int64_t)_getHighestPriorityFailureWithTechniqueStateObject:(id)object;
- (void)_callVLWithHandle:(double)handle pixelBuffer:(__n128)buffer deviceLocation:(__n128)location heading:(__n128)heading inputGravity:(__n128)gravity vioTransform:(uint64_t)transform cameraIntrinsics:(void *)intrinsics radialDistortion:(uint64_t)self0 exposureTargetOffset:(void *)self1 timestamp:(__int128 *)self2 vlDeterminismSemaphore:(void *)self3 completionHandler:(void *)self4;
- (void)_estimateEnuFromVioFromCLCM:(id)m;
- (void)_estimatePose:(id)pose pose:(id)a4;
- (void)_logVioTransform:(double)transform withTimestamp:(double)timestamp withSuffix:(double)suffix;
- (void)_setTrackingState:(int64_t)state techniqueStateObject:(id)object;
- (void)_simulateReplayLocationUpdates:(id)updates;
- (void)_updateVLStateData:(double)data;
- (void)dealloc;
- (void)prepare:(BOOL)prepare;
- (void)reconfigureFrom:(id)from;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
@end

@implementation ARGeoTrackingTechnique

- (ARGeoTrackingTechnique)init
{
  v29 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = ARGeoTrackingTechnique;
  v2 = [(ARTechnique *)&v22 init];
  v3 = v2;
  if (v2)
  {
    v2->_resultLock._os_unfair_lock_opaque = 0;
    v4 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.visualLocalizationQueue", 4294967285);
    visualLocalizationQueue = v3->_visualLocalizationQueue;
    v3->_visualLocalizationQueue = v4;

    v3->_resetLock._os_unfair_lock_opaque = 0;
    [(ARGeoTrackingTechnique *)v3 setVLPoseEstimationExecuting:0];
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.geotracking.visualLocalizationCallInterval"];
    [(ARGeoTrackingTechnique *)v3 setVisualLocalizationCallInterval:v6];
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.geotracking.posteriorVisualLocalizationCallInterval"];
    [(ARGeoTrackingTechnique *)v3 setPosteriorVisualLocalizationCallInterval:v7];
    [ARKitUserDefaults floatForKey:@"com.apple.arkit.geotracking.visualLocalizationCallIntervalTimeThreshold"];
    [(ARGeoTrackingTechnique *)v3 setVisualLocalizationCallIntervalTimeThreshold:v8];
    [(ARGeoTrackingTechnique *)v3 setVisualLocalizationUpdatesRequested:1];
    [(ARGeoTrackingTechnique *)v3 setSupportEnablementOptions:0];
    v3->_statusLock._os_unfair_lock_opaque = 0;
    [(ARGeoTrackingTechnique *)v3 setVLTraceRecorder:0];
    v9 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.geotracking.useclfusion"];
    v3->_useCoreLocationFusion = v9;
    if (v9)
    {
      v10 = _ARLogTechnique_1(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v24 = v12;
        v25 = 2048;
        v26 = v3;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: CL fusion is enabled.", buf, 0x16u);
      }
    }

    v3->_useGradualCorrection = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.geotracking.usegradualcorrection"];
    v3->_useVLTraceRecorder = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.geotracking.useVLTraceRecorder"];
    v13 = [[ARGeoTrackingTechniqueState alloc] initWithResetCount:0];
    state = v3->_state;
    v3->_state = v13;

    maximumHorizontalAccuracyThreshold = [MEMORY[0x1E69E0300] maximumHorizontalAccuracyThreshold];
    v3->_maxHorizontalAccuracy = v16;
    v17 = _ARLogTechnique_1(maximumHorizontalAccuracyThreshold);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      maxHorizontalAccuracy = v3->_maxHorizontalAccuracy;
      *buf = 138543874;
      v24 = v19;
      v25 = 2048;
      v26 = v3;
      v27 = 2048;
      v28 = maxHorizontalAccuracy;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: self.maxHorizontalAccuracy %fm", buf, 0x20u);
    }

    v3->_requestResultDataAtTimestampCallCount = 0;
  }

  return v3;
}

- (ARGeoTrackingTechnique)initWithAuditToken:(id)token
{
  tokenCopy = token;
  v6 = [(ARGeoTrackingTechnique *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_auditToken, token);
  }

  return v7;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique_1(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v15 = v5;
    v16 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  if (self->_VLTraceRecorder)
  {
    vLTraceRecorder = [(ARGeoTrackingTechnique *)self VLTraceRecorder];
    [vLTraceRecorder finish];
  }

  v8 = _ARLogTechnique_1(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543618;
    v15 = v10;
    v16 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Stopping location simulation", buf, 0x16u);
  }

  locationSimulationManager = [(ARGeoTrackingTechnique *)self locationSimulationManager];
  [locationSimulationManager clearSimulatedLocations];

  locationSimulationManager2 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
  [locationSimulationManager2 stopLocationSimulation];

  v13.receiver = self;
  v13.super_class = ARGeoTrackingTechnique;
  [(ARGeoTrackingTechnique *)&v13 dealloc];
}

- (void)prepare:(BOOL)prepare
{
  v27 = *MEMORY[0x1E69E9840];
  self->_deterministic = prepare;
  vLHandle = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];

  if (!vLHandle)
  {
    if (self->_auditToken)
    {
      v5 = [objc_alloc(MEMORY[0x1E69E0300]) initWithAuditToken:self->_auditToken];
    }

    else
    {
      v5 = objc_opt_new();
    }

    v6 = v5;
    [(ARGeoTrackingTechniqueState *)self->_state setVLHandle:v5];

    v8 = _ARLogTechnique_1(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      vLHandle2 = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];
      v21 = 138543874;
      v22 = v10;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2048;
      v26 = vLHandle2;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VLHandle created,%p", &v21, 0x20u);
    }
  }

  if (!self->_VLTraceRecorder && self->_useVLTraceRecorder)
  {
    vLHandle3 = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];
    [vLHandle3 _setDebugInfoShouldPreserveImageData:1];

    v13 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/var/mobile/Library/Caches/VisualLocalization/Traces"];
    v14 = _ARLogTechnique_1(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      absoluteString = [v13 absoluteString];
      uTF8String = [absoluteString UTF8String];
      v21 = 138543874;
      v22 = v16;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2080;
      v26 = uTF8String;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Capturing traces at %s", &v21, 0x20u);
    }

    v19 = [objc_alloc(MEMORY[0x1E69E0308]) initWithDirectory:v13];
    [(ARGeoTrackingTechnique *)self setVLTraceRecorder:v19];

    vLTraceRecorder = [(ARGeoTrackingTechnique *)self VLTraceRecorder];
    [vLTraceRecorder start];
  }
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (BOOL)reconfigurableFrom:(id)from
{
  fromCopy = from;
  v4 = [fromCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)reconfigureFrom:(id)from
{
  v14 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = _ARLogTechnique_1(fromCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v10 = 138543618;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reconfiguring existing geo tracking technique.", &v10, 0x16u);
  }

  v8 = fromCopy;
  [v8 visualLocalizationCallInterval];
  [(ARGeoTrackingTechnique *)self setVisualLocalizationCallInterval:?];
  [v8 posteriorVisualLocalizationCallInterval];
  [(ARGeoTrackingTechnique *)self setPosteriorVisualLocalizationCallInterval:?];
  [v8 visualLocalizationCallIntervalTimeThreshold];
  [(ARGeoTrackingTechnique *)self setVisualLocalizationCallIntervalTimeThreshold:?];
  visualLocalizationUpdatesRequested = [v8 visualLocalizationUpdatesRequested];

  [(ARGeoTrackingTechnique *)self setVisualLocalizationUpdatesRequested:visualLocalizationUpdatesRequested];
}

- (void)_simulateReplayLocationUpdates:(id)updates
{
  v29 = *MEMORY[0x1E69E9840];
  updatesCopy = updates;
  if (([updatesCopy isSecure] & 1) == 0)
  {
    v5 = objc_msgSend_location(updatesCopy);
    v6 = [v5 copy];

    v8 = _ARLogTechnique_1(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v23 = 138543874;
      v24 = v10;
      v25 = 2048;
      selfCopy2 = self;
      v27 = 2112;
      v28 = v6;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Simulating Location to CL: %@", &v23, 0x20u);
    }

    locationSimulationManager = [(ARGeoTrackingTechnique *)self locationSimulationManager];

    if (!locationSimulationManager)
    {
      v13 = _ARLogTechnique_1(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v23 = 138543618;
        v24 = v15;
        v25 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Creating location simulation manager.", &v23, 0x16u);
      }

      v16 = objc_alloc_init(MEMORY[0x1E695FC40]);
      [(ARGeoTrackingTechnique *)self setLocationSimulationManager:v16];

      locationSimulationManager2 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
      [locationSimulationManager2 stopLocationSimulation];

      locationSimulationManager3 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
      [locationSimulationManager3 clearSimulatedLocations];
    }

    locationSimulationManager4 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
    [locationSimulationManager4 setLocationDistance:1.0];

    locationSimulationManager5 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
    [locationSimulationManager5 setLocationRepeatBehavior:1];

    locationSimulationManager6 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
    [locationSimulationManager6 appendSimulatedLocation:v6];

    locationSimulationManager7 = [(ARGeoTrackingTechnique *)self locationSimulationManager];
    [locationSimulationManager7 startLocationSimulation];
  }
}

- (id)processData:(id)data
{
  v143 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  os_unfair_lock_lock(&self->_resetLock);
  v5 = self->_state;
  os_unfair_lock_unlock(&self->_resetLock);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_52;
    }

    v35 = dataCopy;
    deviceMotion = [v35 deviceMotion];
    if ([deviceMotion magneticFieldCalibrationLevel] != -1)
    {
      deviceMotion2 = [v35 deviceMotion];
      magneticFieldCalibrationLevel = [deviceMotion2 magneticFieldCalibrationLevel];

      if (!magneticFieldCalibrationLevel)
      {
LABEL_13:

        goto LABEL_52;
      }

      deviceMotion = [v35 copy];
      [(ARGeoTrackingTechniqueState *)v5 setLastCMDeviceMotion:deviceMotion];
      if (self->_useCoreMotionFusion)
      {
        [(ARGeoTrackingTechniqueState *)v5 addDeviceMotionData:deviceMotion];
      }
    }

    goto LABEL_13;
  }

  v6 = dataCopy;
  v7 = _ARLogTechnique_1(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v106 = objc_msgSend_location(v6);
    [v106 coordinate];
    v11 = v10;
    v105 = objc_msgSend_location(v6);
    [v105 coordinate];
    v13 = v12;
    v104 = objc_msgSend_location(v6);
    [v104 altitude];
    v15 = v14;
    v103 = objc_msgSend_location(v6);
    [v103 altitudeWgs84];
    v17 = v16;
    v102 = objc_msgSend_location(v6);
    isAltitudeWgs84Available = [v102 isAltitudeWgs84Available];
    v101 = objc_msgSend_location(v6);
    isCoordinateFused = [v101 isCoordinateFused];
    v100 = objc_msgSend_location(v6);
    [v100 rawCoordinate];
    v19 = v18;
    objc_msgSend_location(v6);
    v20 = v108 = dataCopy;
    [v20 rawCoordinate];
    v22 = v21;
    objc_msgSend_location(v6);
    v23 = v107 = v5;
    [v23 horizontalAccuracy];
    v25 = v24;
    v26 = objc_msgSend_location(v6);
    [v26 rawHorizontalAccuracy];
    v28 = v27;
    v29 = objc_msgSend_location(v6);
    isCoordinateFusedWithVL = [v29 isCoordinateFusedWithVL];
    v31 = objc_msgSend_location(v6);
    [v31 ellipsoidalAltitude];
    *buf = 138546691;
    v116 = v9;
    v117 = 2048;
    selfCopy11 = self;
    v119 = 2049;
    v120 = v11;
    v121 = 2049;
    v122 = v13;
    v123 = 2049;
    v124 = v15;
    v125 = 2049;
    v126 = v17;
    v127 = 1024;
    v128 = isAltitudeWgs84Available;
    v129 = 1024;
    v130 = isCoordinateFused;
    v131 = 2049;
    v132 = v19;
    v133 = 2049;
    v134 = v22;
    v135 = 2049;
    v136 = v25;
    v137 = 2049;
    v138 = v28;
    v139 = 1024;
    v140 = isCoordinateFusedWithVL;
    v141 = 2049;
    v142 = v32;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received new location point: lat=%{private}.8f, lon=%{private}.8f, alt=%{private}.3f, alt_wgs84=%{private}.3f, wgs84_available=%d, fused=%d, rawLat=%{private}.8f, rawLon=%{private}.8f, acc=%{private}.3f, rawAcc=%{private}.3f, fusedWithVL=%d, ellipsoidalAltitude=%{private}.3f.", buf, 0x82u);

    v5 = v107;
    dataCopy = v108;
  }

  [(ARGeoTrackingTechnique *)self _simulateReplayLocationUpdates:v6];
  v33 = objc_msgSend_location(v6);
  if ([v33 type] == 6)
  {
    goto LABEL_5;
  }

  v39 = objc_msgSend_location(v6);
  type = [v39 type];

  if (type == 10)
  {
    v34 = 0;
    goto LABEL_16;
  }

  v33 = objc_msgSend_location(v6);
  [v33 horizontalAccuracy];
  if ((v50 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_5:
    v34 = 0;
  }

  else
  {
    v51 = objc_msgSend_location(v6);
    [v51 horizontalAccuracy];
    if (v52 >= 0.0)
    {
      v77 = objc_msgSend_location(v6);
      [v77 horizontalAccuracy];
      v34 = v78 < self->_maxHorizontalAccuracy;
    }

    else
    {
      v34 = 0;
    }
  }

LABEL_16:
  if (![(ARGeoTrackingTechniqueState *)v5 hasStartedAvailabilityCheck])
  {
    isUndulationValid = [v6 isUndulationValid];
    if ((isUndulationValid & 1) == 0)
    {
      if (ARShouldUseLogTypeError_onceToken_7 != -1)
      {
        [ARGeoTrackingTechnique processData:];
      }

      v42 = ARShouldUseLogTypeError_internalOSVersion_7;
      v43 = _ARLogTechnique_1(isUndulationValid);
      v44 = v43;
      if (v42 == 1)
      {
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          v45 = objc_opt_class();
          v46 = NSStringFromClass(v45);
          *buf = 138543618;
          v116 = v46;
          v117 = 2048;
          selfCopy11 = self;
          v47 = "%{public}@ <%p>: Location to set ENU origin must have undulation.";
          v48 = v44;
          v49 = OS_LOG_TYPE_ERROR;
LABEL_28:
          _os_log_impl(&dword_1C241C000, v48, v49, v47, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v46 = NSStringFromClass(v53);
        *buf = 138543618;
        v116 = v46;
        v117 = 2048;
        selfCopy11 = self;
        v47 = "Error: %{public}@ <%p>: Location to set ENU origin must have undulation.";
        v48 = v44;
        v49 = OS_LOG_TYPE_INFO;
        goto LABEL_28;
      }

      v34 = 0;
    }
  }

  isAltitudeValid = [v6 isAltitudeValid];
  if ((isAltitudeValid & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique processData:];
    }

    v64 = ARShouldUseLogTypeError_internalOSVersion_7;
    v65 = _ARLogTechnique_1(isAltitudeValid);
    v66 = v65;
    if (v64 == 1)
    {
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        v67 = objc_opt_class();
        v68 = NSStringFromClass(v67);
        *buf = 138543618;
        v116 = v68;
        v117 = 2048;
        selfCopy11 = self;
        v69 = "%{public}@ <%p>: Received location must have valid altitude.";
        v70 = v66;
        v71 = OS_LOG_TYPE_ERROR;
LABEL_46:
        _os_log_impl(&dword_1C241C000, v70, v71, v69, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v72 = objc_opt_class();
      v68 = NSStringFromClass(v72);
      *buf = 138543618;
      v116 = v68;
      v117 = 2048;
      selfCopy11 = self;
      v69 = "Error: %{public}@ <%p>: Received location must have valid altitude.";
      v70 = v66;
      v71 = OS_LOG_TYPE_INFO;
      goto LABEL_46;
    }

    goto LABEL_48;
  }

  if (v34)
  {
    v55 = _ARLogTechnique_1(isAltitudeValid);
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = objc_opt_class();
      v57 = NSStringFromClass(v56);
      *buf = 138543618;
      v116 = v57;
      v117 = 2048;
      selfCopy11 = self;
      _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received location valid for geo tracking.", buf, 0x16u);
    }

    [(ARGeoTrackingTechniqueState *)v5 removeFailureReason:1024];
    v58 = [v6 copy];
    [(ARGeoTrackingTechniqueState *)v5 setLastCLLocation:v58];
    hasStartedAvailabilityCheck = [(ARGeoTrackingTechniqueState *)v5 hasStartedAvailabilityCheck];
    if ((hasStartedAvailabilityCheck & 1) == 0)
    {
      v60 = _ARLogTechnique_1(hasStartedAvailabilityCheck);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = objc_opt_class();
        v62 = NSStringFromClass(v61);
        *buf = 138543618;
        v116 = v62;
        v117 = 2048;
        selfCopy11 = self;
        _os_log_impl(&dword_1C241C000, v60, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Received candidate location for ENU origin. Checking geo tracking availability.", buf, 0x16u);
      }

      [(ARGeoTrackingTechniqueState *)v5 setHasStartedAvailabilityCheck:1];
      [(ARGeoTrackingTechniqueState *)v5 addFailureReason:4096];
      if (self->_deterministic)
      {
        v63 = dispatch_semaphore_create(0);
      }

      else
      {
        v63 = 0;
      }

      v79 = objc_msgSend_location(v58);
      [v79 coordinate];
      v81 = v80;
      v83 = v82;
      supportEnablementOptions = [(ARGeoTrackingTechnique *)self supportEnablementOptions];
      v110[0] = MEMORY[0x1E69E9820];
      v110[1] = 3221225472;
      v110[2] = __38__ARGeoTrackingTechnique_processData___block_invoke;
      v110[3] = &unk_1E817C3A0;
      v85 = v63;
      v111 = v85;
      selfCopy8 = self;
      v113 = v5;
      v114 = v58;
      [ARGeoTrackingConfiguration checkAvailabilityAtCoordinate:supportEnablementOptions withOptions:v110 completionHandler:v81, v83];

      if (v85)
      {
        v87 = _ARLogTechnique_1(v86);
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEBUG))
        {
          v88 = objc_opt_class();
          v89 = NSStringFromClass(v88);
          *buf = 138543618;
          v116 = v89;
          v117 = 2048;
          selfCopy11 = self;
          _os_log_impl(&dword_1C241C000, v87, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Waiting for availability check to finish", buf, 0x16u);
        }

        dispatch_semaphore_wait(v85, 0xFFFFFFFFFFFFFFFFLL);
      }
    }

    vLHandle = [(ARGeoTrackingTechniqueState *)v5 VLHandle];
    if (!vLHandle)
    {
      goto LABEL_51;
    }

    v91 = vLHandle;
    visualLocalizationUpdatesRequested = [(ARGeoTrackingTechnique *)self visualLocalizationUpdatesRequested];

    if (!visualLocalizationUpdatesRequested)
    {
      goto LABEL_51;
    }

    v94 = _ARLogTechnique_1(v93);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
    {
      v95 = objc_opt_class();
      v96 = NSStringFromClass(v95);
      *buf = 138543618;
      v116 = v96;
      v117 = 2048;
      selfCopy11 = self;
      _os_log_impl(&dword_1C241C000, v94, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Pre-warming VL with this location.", buf, 0x16u);
    }

    vLHandle2 = [(ARGeoTrackingTechniqueState *)v5 VLHandle];
    v97 = objc_msgSend_location(v6);
    [vLHandle2 prepareWithDeviceLocation:v97];

    goto LABEL_50;
  }

LABEL_48:
  v58 = _ARLogTechnique_1(isAltitudeValid);
  if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    v73 = objc_opt_class();
    vLHandle2 = NSStringFromClass(v73);
    *buf = 138543618;
    v116 = vLHandle2;
    v117 = 2048;
    selfCopy11 = self;
    _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "%{public}@ <%p>: New location is not valid for geo tracking.", buf, 0x16u);
LABEL_50:
  }

LABEL_51:

LABEL_52:
  v109.receiver = self;
  v109.super_class = ARGeoTrackingTechnique;
  v75 = [(ARTechnique *)&v109 processData:dataCopy];

  return v75;
}

void __38__ARGeoTrackingTechnique_processData___block_invoke(id *a1, char a2, void *a3)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v59 = __38__ARGeoTrackingTechnique_processData___block_invoke_2;
  v60 = &unk_1E817BFE8;
  v61 = a1[4];
  os_unfair_lock_lock(a1[5] + 26);
  v6 = a1[5];
  v7 = a1[6];
  v8 = *(v6 + 14);
  os_unfair_lock_unlock(v6 + 26);
  if (v7 != v8)
  {
    v10 = _ARLogTechnique_1(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = a1[5];
      *buf = 138543618;
      v63 = v12;
      v64 = 2048;
      v65 = v13;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Geo tracking was reset while availability check was running.", buf, 0x16u);
    }

    goto LABEL_25;
  }

  [a1[6] setHasReturnedAvailabilityCheck:1];
  [a1[6] removeFailureReason:4096];
  if (a2)
  {
    v14 = _ARLogTechnique_1([a1[6] setEnuOrigin:a1[7]]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v53 = NSStringFromClass(v15);
      v50 = a1[5];
      v52 = objc_msgSend_location(a1[7]);
      [v52 coordinate];
      v17 = v16;
      v51 = objc_msgSend_location(a1[7]);
      [v51 coordinate];
      v19 = v18;
      v20 = objc_msgSend_location(a1[7]);
      [v20 horizontalAccuracy];
      v22 = v21;
      v23 = objc_msgSend_location(a1[7]);
      [v23 altitude];
      v25 = v24;
      v26 = objc_msgSend_location(a1[7]);
      v27 = [v26 isAltitudeWgs84Available];
      v28 = objc_msgSend_location(a1[7]);
      [v28 altitudeWgs84];
      v30 = v29;
      objc_msgSend_timestamp(a1[7]);
      *buf = 138545411;
      v63 = v53;
      v64 = 2048;
      v65 = v50;
      v66 = 2049;
      v67 = v17;
      v68 = 2049;
      v69 = v19;
      v70 = 2049;
      v71 = v22;
      v72 = 2049;
      v73 = v25;
      v74 = 1024;
      *v75 = v27;
      *&v75[4] = 2049;
      *&v75[6] = v30;
      *&v75[14] = 2048;
      *&v75[16] = v31;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL ENU origin set: latitude,%{private}.08f,longitude,%{private}.08f,horizAccuracy,%{private}f,altitude,%{private}.06f,isAltitudeWgs84Available:%d,altitudeWGS84:%{private}.06f,timestamp:%.06f", buf, 0x58u);
    }

    v33 = _ARLogTechnique_1(v32);
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    v34 = objc_opt_class();
    v35 = NSStringFromClass(v34);
    v36 = a1[5];
    v37 = a1[7];
    if (v37)
    {
      objc_msgSend_locationECEF(v37);
      v38 = a1[7];
      v39 = v57;
      if (v38)
      {
        objc_msgSend_locationECEF(v38);
        v40 = a1[7];
        v41 = v56;
        if (v40)
        {
          objc_msgSend_locationECEF(v40);
          v54 = v55;
          objc_msgSend_timestamp(a1[7]);
LABEL_20:
          *buf = 138544643;
          v63 = v35;
          v64 = 2048;
          v65 = v36;
          v66 = 2049;
          v67 = v39;
          v68 = 2049;
          v69 = v41;
          v70 = 2049;
          v71 = v54;
          v72 = 2048;
          v73 = v42;
          _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL ECEFxENUorigin,%{private}f,ECEFyENUorigin,%{private}f,ECEFzENUorigin,%{private}f,ts,%f", buf, 0x3Eu);

LABEL_21:
          v46 = a1[7];
          if (v46)
          {
            v46 = objc_msgSend_ecefFromlocation(v46);
          }

          v10 = _ARLogTechnique_1(v46);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            v49 = a1[5];
            *buf = 138547714;
            v63 = v48;
            v64 = 2048;
            v65 = v49;
            v66 = 2048;
            v67 = 0;
            v68 = 2048;
            v69 = 0;
            v70 = 2048;
            v71 = 0;
            v72 = 2048;
            v73 = 0;
            v74 = 2048;
            *v75 = 0;
            *&v75[8] = 2048;
            *&v75[10] = 0;
            *&v75[18] = 2048;
            *&v75[20] = 0;
            v76 = 2048;
            v77 = 0;
            v78 = 2048;
            v79 = 0;
            v80 = 2048;
            v81 = 0;
            v82 = 2048;
            v83 = 0;
            v84 = 2048;
            v85 = 0;
            v86 = 2048;
            v87 = 0;
            v88 = 2048;
            v89 = 0;
            v90 = 2048;
            v91 = 0;
            v92 = 2048;
            v93 = 0;
            _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ECEFxENUorigin:-ecefFromEnu %f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f", buf, 0xB6u);
          }

          goto LABEL_25;
        }

        v54 = 0;
      }

      else
      {
        v54 = 0;
        v41 = 0;
      }
    }

    else
    {
      v54 = 0;
      v41 = 0;
      v39 = 0;
    }

    objc_msgSend_timestamp(0);
    goto LABEL_20;
  }

  [a1[6] addFailureReason:512];
  v10 = _ARLogTechnique_1([a1[5] _setTrackingState:0 techniqueStateObject:a1[6]]);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v43 = objc_opt_class();
    v44 = NSStringFromClass(v43);
    v45 = a1[5];
    *buf = 138543618;
    v63 = v44;
    v64 = 2048;
    v65 = v45;
    _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Geo tracking is not available at received location. Cannot run geo tracking.", buf, 0x16u);
  }

LABEL_25:

  v59(v58);
}

NSObject *__38__ARGeoTrackingTechnique_processData___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return dispatch_semaphore_signal(result);
  }

  return result;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  STACK[0x6C8] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  ++self->_requestResultDataAtTimestampCallCount;
  [(ARGeoTrackingTechniqueState *)self->_state firstRequestResultTimestamp];
  if (v7 <= 0.0)
  {
    [(ARGeoTrackingTechniqueState *)self->_state setFirstRequestResultTimestamp:timestamp];
  }

  imageData = [contextCopy imageData];
  cameraType = [imageData cameraType];
  v10 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(cameraType);

  if (v10)
  {
    v11 = [contextCopy resultDataOfClass:objc_opt_class()];
    v12 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
    if (![v11 count])
    {
      [(ARGeoTrackingTechniqueState *)self->_state firstRequestResultTimestamp];
      if (timestamp - v25 > 1.5)
      {
        [(ARGeoTrackingTechniqueState *)self->_state addFailureReason:64];
      }

      goto LABEL_91;
    }

    v13 = [v11 objectAtIndexedSubscript:0];
    [(ARGeoTrackingTechniqueState *)self->_state lastPoseOriginTimestamp];
    if (v14 == 0.0)
    {
      worldTrackingState = [v13 worldTrackingState];
      [worldTrackingState originTimestamp];
      [(ARGeoTrackingTechniqueState *)self->_state setLastPoseOriginTimestamp:?];
    }

    worldTrackingState2 = [v13 worldTrackingState];
    [worldTrackingState2 originTimestamp];
    v18 = v17;
    [(ARGeoTrackingTechniqueState *)self->_state lastPoseOriginTimestamp];
    v20 = v19;

    if (v18 > v20)
    {
      os_unfair_lock_lock(&self->_resetLock);
      v21 = [[ARGeoTrackingTechniqueState alloc] initWithResetCount:[(ARGeoTrackingTechniqueState *)self->_state resetCount]+ 1];
      state = self->_state;
      self->_state = v21;

      worldTrackingState3 = [v13 worldTrackingState];
      [worldTrackingState3 originTimestamp];
      [(ARGeoTrackingTechniqueState *)self->_state setLastPoseOriginTimestamp:?];

      if (self->_auditToken)
      {
        v24 = [objc_alloc(MEMORY[0x1E69E0300]) initWithAuditToken:self->_auditToken];
      }

      else
      {
        v24 = objc_opt_new();
      }

      v26 = v24;
      [(ARGeoTrackingTechniqueState *)self->_state setVLHandle:v24];

      useVLTraceRecorder = self->_useVLTraceRecorder;
      vLHandle = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];
      [vLHandle _setDebugInfoShouldPreserveImageData:useVLTraceRecorder];

      os_unfair_lock_unlock(&self->_resetLock);
      v30 = _ARLogTechnique_1(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        vLHandle2 = [(ARGeoTrackingTechniqueState *)self->_state VLHandle];
        LODWORD(STACK[0x610]) = 138543874;
        STACK[0x614] = v32;
        LOWORD(STACK[0x61C]) = 2048;
        STACK[0x61E] = self;
        LOWORD(STACK[0x626]) = 2048;
        STACK[0x628] = vLHandle2;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reset detected. VLHandle created,%p", &STACK[0x610], 0x20u);
      }
    }

    v239 = 0u;
    *&STACK[0x600] = 0u;
    v237 = 0u;
    __x = 0u;
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    [v13 visionCameraTransform];
    ARMatrix4x4FloatToDouble(&v225, v34, v35, v36, v37);
    v38 = v230;
    *&STACK[0x650] = v229;
    *&STACK[0x660] = v38;
    v39 = v232;
    *&STACK[0x670] = v231;
    *&STACK[0x680] = v39;
    v40 = v226;
    *&STACK[0x610] = v225;
    *&STACK[0x620] = v40;
    v41 = v228;
    *&STACK[0x630] = v227;
    *&STACK[0x640] = v41;
    __invert_d4();
    v42 = acos(__x.f64[0]) * 0.318309886;
    v43 = v42 * 180.0;
    *&v42 = v42 * 180.0;
    v44 = [ARGeoTrackingTechnique isCameraUp:v42];
    v45 = self->_state;
    if (v44)
    {
      [(ARGeoTrackingTechniqueState *)v45 removeFailureReason:128];
    }

    else
    {
      [(ARGeoTrackingTechniqueState *)v45 addFailureReason:128];
    }

    worldTrackingState4 = [v13 worldTrackingState];
    vioTrackingState = [worldTrackingState4 vioTrackingState];

    v48 = self->_state;
    if (vioTrackingState)
    {
      [(ARGeoTrackingTechniqueState *)v48 addFailureReason:64];
    }

    else
    {
      [(ARGeoTrackingTechniqueState *)v48 removeFailureReason:64];
    }

    if (([(ARGeoTrackingTechniqueState *)self->_state failureReasons]& 0x40) != 0 || ([(ARGeoTrackingTechniqueState *)self->_state failureReasons]& 0x80) != 0)
    {
LABEL_90:

      v12 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
LABEL_91:
      objc_msgSend_timestamp(imageData);
      [(ARGeoTrackingTechnique *)self _updateVLStateData:?];
      v190 = v12[145];
      os_unfair_lock_lock((self + v190));
      v191 = objc_alloc(MEMORY[0x1E695DEC8]);
      resultDatas = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
      v193 = [v191 initWithArray:resultDatas];

      resultDatas2 = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
      [resultDatas2 removeAllObjects];

      os_unfair_lock_unlock((self + v190));
      delegate = [(ARTechnique *)self delegate];
      LOBYTE(v190) = objc_opt_respondsToSelector();

      if (v190)
      {
        delegate2 = [(ARTechnique *)self delegate];
        [delegate2 technique:self didOutputResultData:v193 timestamp:contextCopy context:timestamp];
      }

      goto LABEL_94;
    }

    [(ARGeoTrackingTechniqueState *)self->_state removeFailureReason:64];
    [(ARGeoTrackingTechniqueState *)self->_state addVioPoseData:v13];
    if ([(ARGeoTrackingTechniqueState *)self->_state VLHasExecuted])
    {
      lastCLLocation = [(ARGeoTrackingTechniqueState *)self->_state lastCLLocation];
      if (self->_useCoreLocationFusion || self->_useCoreMotionFusion)
      {
        [(ARGeoTrackingTechnique *)self _estimateEnuFromVioFromCLCM:lastCLLocation];
      }

      if (self->_useGradualCorrection)
      {
        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        v225 = 0u;
        v226 = 0u;
        [v13 visionCameraTransform];
        v54 = [(ARGeoTrackingTechniqueState *)self->_state gradualCorrectionFilter:ARMatrix4x4FloatToDouble(&v225];
        objc_msgSend_timestamp(v13);
        v55 = v230;
        *&STACK[0x650] = v229;
        *&STACK[0x660] = v55;
        v56 = v232;
        *&STACK[0x670] = v231;
        *&STACK[0x680] = v56;
        v57 = v226;
        *&STACK[0x610] = v225;
        *&STACK[0x620] = v57;
        v58 = v228;
        *&STACK[0x630] = v227;
        *&STACK[0x640] = v58;
        [v54 updateWithVIOPose:&STACK[0x610] timestamp:?];

        v223 = 0u;
        v224 = 0u;
        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v217 = 0u;
        v218 = 0u;
        gradualCorrectionFilter = [(ARGeoTrackingTechniqueState *)self->_state gradualCorrectionFilter];
        v60 = [gradualCorrectionFilter getCurrentENUFromVIO:&v217];

        if (v60)
        {
          v61 = v222;
          *&STACK[0x650] = v221;
          *&STACK[0x660] = v61;
          v62 = v224;
          *&STACK[0x670] = v223;
          *&STACK[0x680] = v62;
          v63 = v218;
          *&STACK[0x610] = v217;
          *&STACK[0x620] = v63;
          v64 = v220;
          *&STACK[0x630] = v219;
          *&STACK[0x640] = v64;
          [(ARGeoTrackingTechniqueState *)self->_state setEnuFromVIO:&STACK[0x610]];
          v65 = v222;
          *&STACK[0x650] = v221;
          *&STACK[0x660] = v65;
          v66 = v224;
          *&STACK[0x670] = v223;
          *&STACK[0x680] = v66;
          v67 = v218;
          *&STACK[0x610] = v217;
          *&STACK[0x620] = v67;
          v68 = v220;
          *&STACK[0x630] = v219;
          *&STACK[0x640] = v68;
          __invert_d4();
          v69 = ARMatrix4x4DoubleToFloat(&v209);
          v199 = v70;
          latitudea = v69;
          v197 = v72;
          v198 = v71;
          v73 = [ARGeoTrackingData alloc];
          enuOrigin = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];
          v197 = [(ARGeoTrackingData *)v73 initWithENUOrigin:enuOrigin vioFromENU:latitudea, v199, v198, v197];

          os_unfair_lock_lock(&self->_resultLock);
          resultDatas3 = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
          [resultDatas3 addObject:v197];

          os_unfair_lock_unlock(&self->_resultLock);
        }
      }

      *&STACK[0x670] = 0u;
      *&STACK[0x680] = 0u;
      *&STACK[0x650] = 0u;
      *&STACK[0x660] = 0u;
      *&STACK[0x630] = 0u;
      *&STACK[0x640] = 0u;
      *&STACK[0x610] = 0u;
      *&STACK[0x620] = 0u;
      enuOrigin2 = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];
      v78 = enuOrigin2;
      if (enuOrigin2)
      {
        objc_msgSend_ecefFromlocation(enuOrigin2);
      }

      else
      {
        *&STACK[0x670] = 0u;
        *&STACK[0x680] = 0u;
        *&STACK[0x650] = 0u;
        *&STACK[0x660] = 0u;
        *&STACK[0x630] = 0u;
        *&STACK[0x640] = 0u;
        *&STACK[0x610] = 0u;
        *&STACK[0x620] = 0u;
      }

      v79 = self->_state;
      v80 = 0uLL;
      if (v79)
      {
        objc_msgSend_enuFromVIO(v79);
        v80 = 0uLL;
        v81 = v217;
        v82 = v218;
        v83 = v219;
        v84 = v220;
        v85 = v221;
        v86 = v222;
        v87 = v223;
        v88 = v224;
      }

      else
      {
        v87 = 0uLL;
        v88 = 0uLL;
        v85 = 0uLL;
        v86 = 0uLL;
        v83 = 0uLL;
        v84 = 0uLL;
        v81 = 0uLL;
        v82 = 0uLL;
      }

      v89 = 0;
      v213 = v237;
      v214 = __x;
      v90 = *&STACK[0x600];
      v215 = v239;
      v216 = v90;
      v209 = v233;
      v210 = v234;
      v211 = v235;
      v212 = v236;
      v225 = v80;
      v226 = v80;
      v227 = v80;
      v228 = v80;
      v229 = v80;
      v230 = v80;
      v231 = v80;
      v232 = v80;
      do
      {
        v92 = *(&v209 + v89);
        v91 = *(&v209 + v89 + 16);
        v93 = (&v225 + v89);
        *v93 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v81, v92.f64[0]), v83, v92, 1), v85, v91.f64[0]), v87, v91, 1);
        v93[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v82, v92.f64[0]), v84, v92, 1), v86, v91.f64[0]), v88, v91, 1);
        v89 += 32;
      }

      while (v89 != 128);
      v94 = 0;
      v96 = *&STACK[0x610];
      v95 = *&STACK[0x620];
      v98 = *&STACK[0x630];
      v97 = *&STACK[0x640];
      v100 = *&STACK[0x650];
      v99 = *&STACK[0x660];
      v102 = *&STACK[0x670];
      v101 = *&STACK[0x680];
      v213 = v229;
      v214 = v230;
      v215 = v231;
      v216 = v232;
      v209 = v225;
      v210 = v226;
      v211 = v227;
      v212 = v228;
      v223 = 0u;
      v224 = 0u;
      v221 = 0u;
      v222 = 0u;
      v219 = 0u;
      v220 = 0u;
      v217 = 0u;
      v218 = 0u;
      do
      {
        v104 = *(&v209 + v94);
        v103 = *(&v209 + v94 + 16);
        v105 = (&v217 + v94);
        *v105 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v96, v104.f64[0]), v98, v104, 1), v100, v103.f64[0]), v102, v103, 1);
        v105[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v95, v104.f64[0]), v97, v104, 1), v99, v103.f64[0]), v101, v103, 1);
        v94 += 32;
      }

      while (v94 != 128);
      v209 = v223;
      v210 = v224;
      ARECEFToLLA(&vars0);
      *latitudeb = vars0;
      v106 = objc_opt_class();
      v213 = v229;
      v214 = v230;
      v215 = v231;
      v216 = v232;
      v209 = v225;
      v210 = v226;
      v211 = v227;
      v212 = v228;
      [v106 getHeadingForEnuFromCam:&v209];
      v108 = v107 * 0.318309886 * 180.0;
      enuOrigin3 = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];
      [enuOrigin3 undulation];
      v111 = ARWGS84ToMSLAltitude(v208, v110);

      v112 = [ARLocationEstimationData alloc];
      v113 = CLLocationCoordinate2DMake(latitudeb[0], latitudeb[1]);
      v108 = [(ARLocationEstimationData *)v112 initWithCoordinates:v113.latitude altitude:v113.longitude heading:v111, v108];
      os_unfair_lock_lock(&self->_resultLock);
      resultDatas4 = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
      [resultDatas4 addObject:v108];

      os_unfair_lock_unlock(&self->_resultLock);
    }

    if (0xEEEEEEEEEEEEEEEFLL * self->_requestResultDataAtTimestampCallCount + 0x888888888888888 > 0x1111111111111110)
    {
LABEL_75:
      lastCMDeviceMotion = [(ARGeoTrackingTechniqueState *)self->_state lastCMDeviceMotion];
      if (lastCMDeviceMotion)
      {
        v171 = lastCMDeviceMotion;
        lastCLLocation2 = [(ARGeoTrackingTechniqueState *)self->_state lastCLLocation];
        if (lastCLLocation2)
        {
          v173 = lastCLLocation2;
          enuOrigin4 = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];

          if (enuOrigin4)
          {
            [(ARGeoTrackingTechniqueState *)self->_state firstVLExecutionAttemptTimestamp];
            if (v175 < 0.0)
            {
              objc_msgSend_timestamp(imageData);
              [(ARGeoTrackingTechniqueState *)self->_state setFirstVLExecutionAttemptTimestamp:?];
            }

            objc_msgSend_timestamp(imageData);
            v177 = v176;
            [(ARGeoTrackingTechniqueState *)self->_state firstVLExecutionAttemptTimestamp];
            v179 = v177 - v178;
            [(ARGeoTrackingTechnique *)self visualLocalizationCallIntervalTimeThreshold];
            if (v179 >= v180)
            {
              [(ARGeoTrackingTechnique *)self posteriorVisualLocalizationCallInterval];
            }

            else
            {
              [(ARGeoTrackingTechnique *)self visualLocalizationCallInterval];
            }

            v182 = v181;
            if (![(ARGeoTrackingTechnique *)self VLPoseEstimationExecuting])
            {
              if ([(ARGeoTrackingTechnique *)self visualLocalizationUpdatesRequested])
              {
                objc_msgSend_timestamp(imageData);
                v184 = v183;
                [(ARGeoTrackingTechniqueState *)self->_state lastVLExecutionAttemptTimestamp];
                if (v184 - v185 > v182)
                {
                  objc_msgSend_timestamp(imageData);
                  [(ARGeoTrackingTechniqueState *)self->_state setLastVLExecutionAttemptTimestamp:?];
                  v186 = _ARLogTechnique_1([(ARGeoTrackingTechniqueState *)self->_state setFailureReasons:0]);
                  if (os_log_type_enabled(v186, OS_LOG_TYPE_INFO))
                  {
                    v187 = objc_opt_class();
                    v188 = NSStringFromClass(v187);
                    [MEMORY[0x1E69E0300] minimumTiltAngle];
                    LODWORD(STACK[0x610]) = 138544130;
                    STACK[0x614] = v188;
                    LOWORD(STACK[0x61C]) = 2048;
                    STACK[0x61E] = self;
                    LOWORD(STACK[0x626]) = 2048;
                    *&STACK[0x628] = v43;
                    LOWORD(STACK[0x630]) = 2048;
                    *&STACK[0x632] = 180.0 - v189;
                    _os_log_impl(&dword_1C241C000, v186, OS_LOG_TYPE_INFO, "%{public}@ <%p>: pitchDegs<- %f minimumTiltAngle<- %f", &STACK[0x610], 0x2Au);
                  }

                  [(ARGeoTrackingTechnique *)self _estimatePose:imageData pose:v13];
                }
              }
            }
          }
        }

        else
        {
        }
      }

      goto LABEL_90;
    }

    if ([(ARGeoTrackingTechniqueState *)self->_state trackingState]== 3)
    {
      v231 = 0u;
      v232 = 0u;
      v229 = 0u;
      v230 = 0u;
      v227 = 0u;
      v228 = 0u;
      v225 = 0u;
      v226 = 0u;
      v116 = self->_state;
      if (v116)
      {
        objc_msgSend_enuFromVIO(v116);
      }

      else
      {
        v223 = 0uLL;
        v224 = 0uLL;
        v221 = 0uLL;
        v222 = 0uLL;
        v219 = 0uLL;
        v220 = 0uLL;
        v217 = 0uLL;
        v218 = 0uLL;
      }

      v117 = v222;
      *&STACK[0x650] = v221;
      *&STACK[0x660] = v117;
      v118 = v224;
      *&STACK[0x670] = v223;
      *&STACK[0x680] = v118;
      v119 = v218;
      *&STACK[0x610] = v217;
      *&STACK[0x620] = v119;
      v120 = v220;
      *&STACK[0x630] = v219;
      *&STACK[0x640] = v120;
      v121 = __invert_d4();
      v122 = _ARLogTechnique_1(v121);
      if (os_log_type_enabled(v122, OS_LOG_TYPE_INFO))
      {
        v123 = objc_opt_class();
        v124 = NSStringFromClass(v123);
        v126 = v225;
        v125 = v226;
        v128 = v227;
        v127 = v228;
        v130 = v229;
        v129 = v230;
        v132 = v231;
        v131 = v232;
        LODWORD(STACK[0x610]) = 138547714;
        STACK[0x614] = v124;
        LOWORD(STACK[0x61C]) = 2048;
        STACK[0x61E] = self;
        LOWORD(STACK[0x626]) = 2048;
        STACK[0x628] = *&v126.f64[0];
        LOWORD(STACK[0x630]) = 2048;
        STACK[0x632] = *&v128.f64[0];
        LOWORD(STACK[0x63A]) = 2048;
        STACK[0x63C] = *&v130.f64[0];
        LOWORD(STACK[0x644]) = 2048;
        STACK[0x646] = *&v132.f64[0];
        LOWORD(STACK[0x64E]) = 2048;
        STACK[0x650] = *&v126.f64[1];
        LOWORD(STACK[0x658]) = 2048;
        STACK[0x65A] = *&v128.f64[1];
        LOWORD(STACK[0x662]) = 2048;
        STACK[0x664] = *&v130.f64[1];
        LOWORD(STACK[0x66C]) = 2048;
        STACK[0x66E] = *&v132.f64[1];
        LOWORD(STACK[0x676]) = 2048;
        STACK[0x678] = *&v125.f64[0];
        LOWORD(STACK[0x680]) = 2048;
        STACK[0x682] = *&v127.f64[0];
        LOWORD(STACK[0x68A]) = 2048;
        STACK[0x68C] = *&v129.f64[0];
        LOWORD(STACK[0x694]) = 2048;
        STACK[0x696] = *&v131.f64[0];
        LOWORD(STACK[0x69E]) = 2048;
        STACK[0x6A0] = *&v125.f64[1];
        LOWORD(STACK[0x6A8]) = 2048;
        STACK[0x6AA] = *&v127.f64[1];
        LOWORD(STACK[0x6B2]) = 2048;
        STACK[0x6B4] = *&v129.f64[1];
        LOWORD(STACK[0x6BC]) = 2048;
        STACK[0x6BE] = *&v131.f64[1];
        _os_log_impl(&dword_1C241C000, v122, OS_LOG_TYPE_INFO, "%{public}@ <%p>: anchorsForCameraWithTransform:vioFromENU<- %f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f", &STACK[0x610], 0xB6u);
      }
    }

    [v13 visionCameraTransform];
    v241 = __invert_f4(v240);
    *v241.columns[0].i64 = v241.columns[3].f32[2];
    latitude = v241.columns[0];
    v204 = vcvtq_f64_f32(*v241.columns[3].f32);
    [(ARGeoTrackingTechniqueState *)self->_state lastLoggedVioTimestamp];
    v133 = 0.0;
    if (v134 >= 0.0)
    {
      [(ARGeoTrackingTechniqueState *)self->_state lastLoggedVioTimestamp];
      v137 = timestamp - v136;
      if (timestamp - v136 > 0.0)
      {
        v138 = vextq_s8(v204, v204, 8uLL).u64[0];
        v139 = self->_state;
        if (v139)
        {
          v200 = v138;
          objc_msgSend_lastLoggedVioPosition(v139);
          v138 = v200;
          v140 = v205;
          v141 = vextq_s8(v140, v140, 8uLL).u64[0];
          v135.f64[0] = v206;
        }

        else
        {
          v140.i64[0] = 0;
          v141 = 0;
          v135.f64[0] = 0.0;
        }

        v140.i64[1] = v141;
        *&v142.f64[0] = v204.i64[0];
        *&v142.f64[1] = v138;
        v143 = vsubq_f64(v142, v140);
        v144 = vsubq_f64(latitude, v135);
        v133 = sqrt(vmulq_f64(v144, v144).f64[0] + vaddvq_f64(vmulq_f64(v143, v143))) / v137;
      }
    }

    worldTrackingState5 = [v13 worldTrackingState];
    vioTrackingState2 = [worldTrackingState5 vioTrackingState];

    v148 = _ARLogTechnique_1(v147);
    v149 = os_log_type_enabled(v148, OS_LOG_TYPE_INFO);
    if (vioTrackingState2)
    {
      if (!v149)
      {
        goto LABEL_62;
      }

      v150 = objc_opt_class();
      v151 = NSStringFromClass(v150);
      resetCount = [(ARGeoTrackingTechniqueState *)self->_state resetCount];
      LODWORD(STACK[0x610]) = 138543874;
      STACK[0x614] = v151;
      LOWORD(STACK[0x61C]) = 2048;
      STACK[0x61E] = self;
      LOWORD(STACK[0x626]) = 2048;
      STACK[0x628] = resetCount;
      v153 = "%{public}@ <%p>: _VIO<state: limited resets= %ld";
    }

    else
    {
      if (!v149)
      {
        goto LABEL_62;
      }

      v154 = objc_opt_class();
      v151 = NSStringFromClass(v154);
      resetCount2 = [(ARGeoTrackingTechniqueState *)self->_state resetCount];
      LODWORD(STACK[0x610]) = 138543874;
      STACK[0x614] = v151;
      LOWORD(STACK[0x61C]) = 2048;
      STACK[0x61E] = self;
      LOWORD(STACK[0x626]) = 2048;
      STACK[0x628] = resetCount2;
      v153 = "%{public}@ <%p>: _VIO<state: nominal resets= %ld";
    }

    _os_log_impl(&dword_1C241C000, v148, OS_LOG_TYPE_INFO, v153, &STACK[0x610], 0x20u);

LABEL_62:
    [(ARGeoTrackingTechniqueState *)self->_state setLastLoggedVioTimestamp:timestamp];
    v156 = self->_state;
    *&STACK[0x610] = v204;
    *&STACK[0x620] = latitude;
    v157 = _ARLogTechnique_1([(ARGeoTrackingTechniqueState *)v156 setLastLoggedVioPosition:&STACK[0x610]]);
    if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
    {
      v158 = objc_opt_class();
      v159 = NSStringFromClass(v158);
      LODWORD(STACK[0x610]) = 138543874;
      STACK[0x614] = v159;
      LOWORD(STACK[0x61C]) = 2048;
      STACK[0x61E] = self;
      LOWORD(STACK[0x626]) = 2048;
      *&STACK[0x628] = v133;
      _os_log_impl(&dword_1C241C000, v157, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _VIO< speed: %f m/s", &STACK[0x610], 0x20u);
    }

    if (v133 <= 5.0)
    {
      goto LABEL_74;
    }

    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique processData:];
    }

    v161 = ARShouldUseLogTypeError_internalOSVersion_7;
    v162 = _ARLogTechnique_1(v160);
    v163 = v162;
    if (v161 == 1)
    {
      if (os_log_type_enabled(v162, OS_LOG_TYPE_ERROR))
      {
        v164 = objc_opt_class();
        v165 = NSStringFromClass(v164);
        LODWORD(STACK[0x610]) = 138544642;
        STACK[0x614] = v165;
        LOWORD(STACK[0x61C]) = 2048;
        STACK[0x61E] = self;
        LOWORD(STACK[0x626]) = 2048;
        *&STACK[0x628] = v133;
        LOWORD(STACK[0x630]) = 2048;
        STACK[0x632] = v204.i64[0];
        LOWORD(STACK[0x63A]) = 2048;
        STACK[0x63C] = v204.u64[1];
        LOWORD(STACK[0x644]) = 2048;
        STACK[0x646] = *&latitude.f64[0];
        v166 = "%{public}@ <%p>: _VIO< speed EXCESSIVE: %f m/s at position:(%f,%f,%f)";
        v167 = v163;
        v168 = OS_LOG_TYPE_ERROR;
LABEL_72:
        _os_log_impl(&dword_1C241C000, v167, v168, v166, &STACK[0x610], 0x3Eu);
      }
    }

    else if (os_log_type_enabled(v162, OS_LOG_TYPE_INFO))
    {
      v169 = objc_opt_class();
      v165 = NSStringFromClass(v169);
      LODWORD(STACK[0x610]) = 138544642;
      STACK[0x614] = v165;
      LOWORD(STACK[0x61C]) = 2048;
      STACK[0x61E] = self;
      LOWORD(STACK[0x626]) = 2048;
      *&STACK[0x628] = v133;
      LOWORD(STACK[0x630]) = 2048;
      STACK[0x632] = v204.i64[0];
      LOWORD(STACK[0x63A]) = 2048;
      STACK[0x63C] = v204.u64[1];
      LOWORD(STACK[0x644]) = 2048;
      STACK[0x646] = *&latitude.f64[0];
      v166 = "Error: %{public}@ <%p>: _VIO< speed EXCESSIVE: %f m/s at position:(%f,%f,%f)";
      v167 = v163;
      v168 = OS_LOG_TYPE_INFO;
      goto LABEL_72;
    }

LABEL_74:
    [v13 visionCameraTransform];
    [ARGeoTrackingTechnique _logVioTransform:"_logVioTransform:withTimestamp:withSuffix:" withTimestamp:"heartbeat" withSuffix:?];
    goto LABEL_75;
  }

LABEL_94:
}

+ (BOOL)isSupportedWithOptions:(unint64_t)options
{
  optionsCopy = options;
  LODWORD(isVisualLocalizationSupported) = +[ARWorldTrackingTechnique isSupported];
  if (isVisualLocalizationSupported)
  {
    isVisualLocalizationSupported = [MEMORY[0x1E69E0300] isVisualLocalizationSupported];
    if (isVisualLocalizationSupported)
    {
      if ((optionsCopy & 2) != 0 || (LODWORD(isVisualLocalizationSupported) = ARDeviceHasGPSCapability(isVisualLocalizationSupported, v5), isVisualLocalizationSupported))
      {
        if ((optionsCopy & 4) != 0)
        {
          LOBYTE(isVisualLocalizationSupported) = 1;
        }

        else
        {

          LOBYTE(isVisualLocalizationSupported) = ARAppleNeuralEngine();
        }
      }
    }
  }

  return isVisualLocalizationSupported;
}

+ (int64_t)getFailureReasonFromVLError:(int64_t)error
{
  result = error;
  if (error <= 200)
  {
    if (error <= 99)
    {
      if (error == 1)
      {
        return result;
      }

      if (error == 2)
      {
        return 256;
      }
    }

    else
    {
      switch(error)
      {
        case 100:
          return 2;
        case 101:
          return 4;
        case 200:
          return 8;
      }
    }
  }

  else if (error > 299)
  {
    switch(error)
    {
      case 300:
        return 32;
      case 400:
        return 128;
      case 404:
        return 1024;
    }
  }

  else if ((error - 201) < 7)
  {
    return 16;
  }

  return 2048;
}

+ (BOOL)isCameraUp:(float)up
{
  upCopy = up;
  [MEMORY[0x1E69E0300] minimumTiltAngle];
  return 180.0 - v4 >= upCopy;
}

- (void)_setTrackingState:(int64_t)state techniqueStateObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v7 = _ARLogTechnique_1(objectCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromARGeoTrackingState(state);
    v11 = 138543874;
    v12 = v9;
    v13 = 2048;
    selfCopy = self;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting new tracking state: %@", &v11, 0x20u);
  }

  [objectCopy setTrackingState:state];
}

- (int64_t)_getHighestPriorityFailureWithTechniqueStateObject:(id)object
{
  v32 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  failureReasons = [objectCopy failureReasons];
  if ([objectCopy lastLoggedFailureReasons] != failureReasons)
  {
    v7 = 1;
    *&v6 = 138543874;
    v23 = v6;
    while (1)
    {
      lastLoggedFailureReasons = [objectCopy lastLoggedFailureReasons];
      v9 = lastLoggedFailureReasons & v7;
      if ((v7 & failureReasons) == 0 || v9)
      {
        if ((v7 & failureReasons) != 0 || !v9)
        {
          goto LABEL_12;
        }

        v10 = _ARLogTechnique_1(lastLoggedFailureReasons);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = objc_opt_class();
          v16 = NSStringFromClass(v15);
          v17 = NSStringFromARGeoTrackingInternalFailureReason(v7);
          *buf = v23;
          v25 = v16;
          v26 = 2048;
          selfCopy2 = self;
          v28 = 2112;
          v29 = v17;
          _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ARGeoTrackingTechnique failure reason: ended %@", buf, 0x20u);
        }
      }

      else
      {
        v10 = _ARLogTechnique_1([objectCopy setFailureLogCount:{objc_msgSend(objectCopy, "failureLogCount") + 1}]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          failureLogCount = [objectCopy failureLogCount];
          v14 = NSStringFromARGeoTrackingInternalFailureReason(v7);
          *buf = 138544130;
          v25 = v12;
          v26 = 2048;
          selfCopy2 = self;
          v28 = 2048;
          v29 = failureLogCount;
          v30 = 2112;
          v31 = v14;
          _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ARGeoTrackingTechnique failure reason: %ld started %@", buf, 0x2Au);
        }
      }

LABEL_12:
      v7 *= 2;
      if (v7 == 0x2000)
      {
        [objectCopy setLastLoggedFailureReasons:failureReasons];
        break;
      }
    }
  }

  if ([objectCopy trackingState] == 3)
  {
    v18 = 0;
    goto LABEL_35;
  }

  if (failureReasons)
  {
LABEL_28:
    v19 = 8;
    goto LABEL_29;
  }

  if ((failureReasons & 0x400) != 0)
  {
    v19 = 4;
    goto LABEL_29;
  }

  if ((failureReasons & 0x1000) != 0)
  {
    v19 = 5;
    goto LABEL_29;
  }

  if ((failureReasons & 0x200) != 0)
  {
    v19 = 1;
    goto LABEL_29;
  }

  if ((failureReasons & 6) == 0)
  {
    if ((failureReasons & 0x80) != 0)
    {
      v19 = 7;
      goto LABEL_29;
    }

    if ((failureReasons & 0x40) != 0)
    {
      v19 = 3;
      goto LABEL_29;
    }

    if ((failureReasons & 0x138) == 0)
    {
      v19 = (failureReasons >> 8) & 8;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v19 = 6;
LABEL_29:
  trackingState = [objectCopy trackingState];
  if (failureReasons)
  {
    v21 = 0;
  }

  else
  {
    v21 = trackingState == 2;
  }

  if (v21)
  {
    v18 = 8;
  }

  else
  {
    v18 = v19;
  }

LABEL_35:

  return v18;
}

- (void)_logVioTransform:(double)transform withTimestamp:(double)timestamp withSuffix:(double)suffix
{
  v31 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  memset(&v21[8], 0, 64);
  ARMatrix4x4FloatToDouble(v21, *&a2, *&transform, *&timestamp, *&suffix);
  *v28 = v21[4];
  *&v28[16] = v21[5];
  v29 = v21[6];
  v30 = v21[7];
  *buf = v21[0];
  *&buf[16] = v21[1];
  *v27 = v21[2];
  *&v27[16] = v21[3];
  __invert_d4();
  v11 = atan2(*&v22, *(&v22 + 1)) * 0.318309886 * 180.0;
  os_unfair_lock_lock((self + 104));
  v12 = *(self + 112);
  poseOkCount = [v12 poseOkCount];
  poseOkCount2 = [v12 poseOkCount];
  failureLogCount = [v12 failureLogCount];
  os_unfair_lock_unlock((self + 104));
  v17 = _ARLogTechnique_1(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = poseOkCount2 + failureLogCount;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    *buf = 138545666;
    *&buf[4] = v20;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2048;
    *&buf[24] = v24;
    *v27 = 2048;
    *&v27[2] = *(&v24 + 1);
    *&v27[10] = 2048;
    *&v27[12] = v25;
    *&v27[20] = 2048;
    *&v27[22] = v11 + ceil(v11 / -360.0) * 360.0;
    *&v27[30] = 1024;
    *v28 = v18;
    *&v28[4] = 1024;
    *&v28[6] = poseOkCount;
    *&v28[10] = 2048;
    *&v28[12] = a6;
    *&v28[20] = 2080;
    *&v28[22] = a8;
    _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _VIO<--x,y,z,yaw-( %f,%f,%f,%f°)- %i,%i ts %f %s", buf, 0x5Eu);
  }
}

- (void)_estimatePose:(id)pose pose:(id)a4
{
  v104 = *MEMORY[0x1E69E9840];
  poseCopy = pose;
  v7 = a4;
  objc_msgSend_timestamp(poseCopy);
  kdebug_trace();
  pixelBuffer = [poseCopy pixelBuffer];
  if (!pixelBuffer)
  {
    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique _estimatePose:pose:];
    }

    v39 = ARShouldUseLogTypeError_internalOSVersion_7;
    v40 = _ARLogTechnique_1(pixelBuffer);
    v41 = v40;
    if (v39 == 1)
    {
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        *buf = 138543618;
        *&buf[4] = v43;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v44 = "%{public}@ <%p>: Pixel buffer is nil";
        v45 = v41;
        v46 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v45, v46, v44, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v70 = objc_opt_class();
      v43 = NSStringFromClass(v70);
      *buf = 138543618;
      *&buf[4] = v43;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v44 = "Error: %{public}@ <%p>: Pixel buffer is nil";
      v45 = v41;
      v46 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    kdebug_trace();
    goto LABEL_20;
  }

  v9 = pixelBuffer;
  CVPixelBufferRetain(pixelBuffer);
  os_unfair_lock_lock(&self->_resetLock);
  v10 = self->_state;
  os_unfair_lock_unlock(&self->_resetLock);
  v11 = [ARWorldTrackingPoseData alloc];
  objc_msgSend_timestamp(v7);
  v12 = [(ARWorldTrackingPoseData *)v11 initWithTimestamp:?];
  [v7 visionCameraTransform];
  v89 = v13;
  [v7 visionCameraTransform];
  v86 = v14;
  [v7 visionCameraTransform];
  v83 = v15;
  [v7 visionCameraTransform];
  [(ARWorldTrackingPoseData *)v12 setVisionCameraTransform:v89, v86, v83];
  [v7 cameraTransform];
  [(ARWorldTrackingPoseData *)v12 setCameraTransform:?];
  worldTrackingState = [v7 worldTrackingState];
  [(ARWorldTrackingPoseData *)v12 setWorldTrackingState:worldTrackingState];

  lastCMDeviceMotion = [(ARGeoTrackingTechniqueState *)v10 lastCMDeviceMotion];
  deviceMotion = [lastCMDeviceMotion deviceMotion];
  [deviceMotion gravity];
  v90 = v19;
  v71 = v20;
  v73 = v21;

  deviceMotion2 = [lastCMDeviceMotion deviceMotion];
  attitude = [deviceMotion2 attitude];
  v24 = ARCameraDirectionFromCMAttitude(attitude);
  v74 = lastCMDeviceMotion;
  deviceMotion3 = [lastCMDeviceMotion deviceMotion];
  [deviceMotion3 headingAccuracy];
  v27 = v26;

  lastCLLocation = [(ARGeoTrackingTechniqueState *)v10 lastCLLocation];
  [(ARWorldTrackingPoseData *)v12 visionCameraTransform];
  v77 = v30;
  v78 = v29;
  v75 = v32;
  v76 = v31;
  [poseCopy cameraIntrinsics];
  v84 = v34;
  v87 = v33;
  v81 = v35;
  if (poseCopy)
  {
    objc_msgSend_radialDistortion(poseCopy);
    v36 = v102[0];
    v79 = v36;
    objc_msgSend_radialDistortion(poseCopy);
    *&v37 = v79;
    v38 = *(&v101 + 1);
  }

  else
  {
    v38 = 0.0;
    LODWORD(v37) = 0;
  }

  v47 = v38;
  *(&v37 + 1) = v47;
  v80 = v37;
  requestResultDataAtTimestampCallCount = self->_requestResultDataAtTimestampCallCount;
  [(ARGeoTrackingTechnique *)self setVLPoseEstimationExecuting:1];
  if (self->_deterministic)
  {
    v48 = dispatch_semaphore_create(0);
  }

  else
  {
    v48 = 0;
  }

  *&v49 = v90;
  *(&v49 + 1) = v71;
  v91 = v49;
  v50 = v24;
  v51 = v87;
  HIDWORD(v51) = 0;
  v88 = v51;
  v52 = v84;
  HIDWORD(v52) = 0;
  v85 = v52;
  v53 = v81;
  HIDWORD(v53) = 0;
  v82 = v53;
  objc_msgSend_timestamp(poseCopy);
  [(ARGeoTrackingTechnique *)self _logVioTransform:"estimatePose" withTimestamp:v78 withSuffix:v77, v76, v75, v54];
  [(ARGeoTrackingTechniqueState *)self->_state setHasStartedLocalization:1];
  objc_msgSend_timestamp(poseCopy);
  v55 = kdebug_trace();
  v56 = _ARLogTechnique_1(v55);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    v57 = objc_opt_class();
    v58 = NSStringFromClass(v57);
    objc_msgSend_timestamp(poseCopy);
    *buf = 138543874;
    *&buf[4] = v58;
    *&buf[12] = 2048;
    *&buf[14] = self;
    *&buf[22] = 2048;
    *&buf[24] = v59;
    _os_log_impl(&dword_1C241C000, v56, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL pose is estimating (%f)", buf, 0x20u);
  }

  objc_msgSend_timestamp(poseCopy);
  kdebug_trace();
  vLHandle = [(ARGeoTrackingTechniqueState *)v10 VLHandle];
  v61 = objc_msgSend_location(lastCLLocation);
  [poseCopy exposureTargetOffset];
  v63 = v62;
  objc_msgSend_timestamp(poseCopy);
  v65 = v64;
  v92[0] = MEMORY[0x1E69E9820];
  v92[1] = 3221225472;
  v92[2] = __45__ARGeoTrackingTechnique__estimatePose_pose___block_invoke;
  v92[3] = &unk_1E817C3C8;
  v93 = v10;
  selfCopy = self;
  v95 = v48;
  v96 = lastCLLocation;
  v99 = v9;
  v100 = requestResultDataAtTimestampCallCount;
  v97 = poseCopy;
  v98 = v12;
  *buf = v91;
  *&buf[16] = v73;
  v66 = v12;
  v67 = lastCLLocation;
  v68 = v48;
  v69 = v10;
  [(ARGeoTrackingTechnique *)self _callVLWithHandle:vLHandle pixelBuffer:v9 deviceLocation:v61 heading:buf inputGravity:v68 vioTransform:v92 cameraIntrinsics:v50 radialDistortion:v27 exposureTargetOffset:v78 timestamp:v77 vlDeterminismSemaphore:v76 completionHandler:v75, v88, v85, v82, v80, *&v63, v65];

  kdebug_trace();
  kdebug_trace();

LABEL_20:
}

void __45__ARGeoTrackingTechnique__estimatePose_pose___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, __int128 a23, __int128 a24, __int128 a25, __int128 a26, __int128 a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, __int128 a38, __int128 a39, __int128 a40, __int128 a41, __int128 a42, __int128 a43, __int128 a44, float64x2_t a45)
{
  STACK[0xFC8] = *MEMORY[0x1E69E9840];
  v47 = a2;
  v48 = a3;
  v49 = a1;
  v50 = v48;
  [v47 confidence];
  kdebug_trace();
  CVPixelBufferRelease(*(a1 + 80));
  v51 = [*(a1 + 32) VLHandle];
  v52 = [v51 _algorithmVersion];

  if (v47)
  {
    v53 = [v47 debugInfo];
    v54 = v53;
  }

  else
  {
    v55 = [v50 userInfo];
    v54 = [v55 objectForKeyedSubscript:*MEMORY[0x1E69E0310]];
  }

  v56 = *(a1 + 40);
  if (*(v56 + 168))
  {
    v57 = _ARLogTechnique_1(v53);
    if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
    {
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      v60 = *(a1 + 40);
      [v54 pngData];
      v62 = v61 = v54;
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v59;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v60;
      LOWORD(STACK[0xF46]) = 2048;
      STACK[0xF48] = v62;
      _os_log_impl(&dword_1C241C000, v57, OS_LOG_TYPE_INFO, "%{public}@ <%p>: writing VL trace with image data %p", &STACK[0xF30], 0x20u);

      v54 = v61;
    }

    v63 = v50;

    v64 = [*(v49 + 40) VLTraceRecorder];
    [v64 recordAttempt:v54];

    v56 = *(v49 + 40);
  }

  else
  {
    v63 = v50;
  }

  os_unfair_lock_lock((v56 + 104));
  v65 = v49;
  v66 = *(v49 + 32);
  v67 = *(v65 + 40);
  v68 = *(v67 + 112);
  os_unfair_lock_unlock((v67 + 104));
  if (v66 == v68)
  {
    vars0 = v52;
    v81 = [*(*(v65 + 40) + 112) setHasReturnedLocalization:1];
    v71 = v65;
    v70 = v63;
    if (v63)
    {
      v82 = v54;
      v83 = _ARLogTechnique_1(v81);
      if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
      {
        v84 = objc_opt_class();
        v85 = NSStringFromClass(v84);
        v86 = *(v71 + 40);
        v87 = [v70 localizedDescription];
        LODWORD(STACK[0xF30]) = 138543874;
        STACK[0xF34] = v85;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v86;
        LOWORD(STACK[0xF46]) = 2112;
        STACK[0xF48] = v87;
        _os_log_impl(&dword_1C241C000, v83, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Visual localization error: %@", &STACK[0xF30], 0x20u);
      }

      v88 = [v70 code];
      v89 = [objc_opt_class() getFailureReasonFromVLError:v88];
      v90 = [[ARVisualLocalizationResultData alloc] initWithVLLocalizationResult:0 errorCode:v88 debugInfo:v82 heading:*(v71 + 56) inputLocation:v52 algorithmVersion:NAN undulation:NAN];
      os_unfair_lock_lock((*(v71 + 40) + 56));
      v91 = [*(v71 + 32) resultDatas];
      [v91 addObject:v90];

      os_unfair_lock_unlock((*(v71 + 40) + 56));
      os_unfair_lock_lock((*(v71 + 40) + 88));
      [*(v71 + 32) addFailureReason:v89];
      if ([*(v71 + 32) trackingState] == 1 && (v89 & 6) == 0)
      {
        [*(v71 + 40) _setTrackingState:2 techniqueStateObject:*(v71 + 32)];
      }

      os_unfair_lock_unlock((*(v71 + 40) + 88));

      v54 = v82;
    }

    [v47 confidence];
    kdebug_trace();
    if (!v47)
    {
LABEL_109:
      [*(v71 + 40) setVLPoseEstimationExecuting:0];
      if (*(*(v71 + 40) + 72) != 1)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    objc_msgSend_location(v47);
    v94 = *&STACK[0xF00];
    *&STACK[0xF40] = *&STACK[0xF10];
    *&STACK[0xF30] = v94;
    ARECEFToLLA(&STACK[0xEB0]);
    v367 = *&STACK[0xEB0];
    v371 = *&STACK[0xEC0];
    v96 = _ARLogTechnique_1(v95);
    if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
    {
      v97 = objc_opt_class();
      v98 = NSStringFromClass(v97);
      v99 = *(v71 + 40);
      v100 = *(v71 + 88);
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v98;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v99;
      LOWORD(STACK[0xF46]) = 2048;
      STACK[0xF48] = v100;
      _os_log_impl(&dword_1C241C000, v96, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Result: at frame = %ld", &STACK[0xF30], 0x20u);
    }

    v102 = _ARLogTechnique_1(v101);
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
    {
      v103 = objc_opt_class();
      v104 = NSStringFromClass(v103);
      v105 = *(v71 + 40);
      Current = CFAbsoluteTimeGetCurrent();
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v104;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v105;
      LOWORD(STACK[0xF46]) = 2048;
      *&STACK[0xF48] = Current;
      _os_log_impl(&dword_1C241C000, v102, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL Result: iOSTime = %f", &STACK[0xF30], 0x20u);
    }

    v108 = _ARLogTechnique_1(v107);
    if (os_log_type_enabled(v108, OS_LOG_TYPE_INFO))
    {
      v109 = objc_opt_class();
      v110 = NSStringFromClass(v109);
      v111 = *(v71 + 40);
      [v47 inputTimestamp];
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v110;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v111;
      LOWORD(STACK[0xF46]) = 2048;
      STACK[0xF48] = v112;
      _os_log_impl(&dword_1C241C000, v108, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Result: sensorTimestamp = %f", &STACK[0xF30], 0x20u);
    }

    vars8 = v54;

    v114 = _ARLogTechnique_1(v113);
    if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
    {
      v115 = objc_opt_class();
      v116 = NSStringFromClass(v115);
      v117 = *(v71 + 40);
      objc_msgSend_location(v47);
      v118 = STACK[0xEF0];
      LODWORD(STACK[0xF30]) = 138544643;
      STACK[0xF34] = v116;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v117;
      LOWORD(STACK[0xF46]) = 2049;
      STACK[0xF48] = v367;
      LOWORD(STACK[0xF50]) = 2049;
      STACK[0xF52] = *(&v367 + 1);
      LOWORD(STACK[0xF5A]) = 2049;
      STACK[0xF5C] = v371;
      LOWORD(STACK[0xF64]) = 2049;
      STACK[0xF66] = v118;
      _os_log_impl(&dword_1C241C000, v114, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Result: lat,lon,alt,accuracy = %{private}f, %{private}f, %{private}f, %{private}f", &STACK[0xF30], 0x3Eu);
    }

    v358 = v70;

    v120 = _ARLogTechnique_1(v119);
    if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
    {
      v121 = objc_opt_class();
      v122 = NSStringFromClass(v121);
      v123 = *(v71 + 40);
      objc_msgSend_transform(v47);
      v124.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0xF30]);
      v128 = ARMatrix4x4Description(1, v124, v125, v126, v127);
      LODWORD(STACK[0xF30]) = 138543875;
      STACK[0xF34] = v122;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v123;
      LOWORD(STACK[0xF46]) = 2113;
      STACK[0xF48] = v128;
      _os_log_impl(&dword_1C241C000, v120, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Result: ecefFromCam = %{private}@", &STACK[0xF30], 0x20u);
    }

    for (i = 0; i != 6; ++i)
    {
      v131 = _ARLogTechnique_1(v129);
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
      {
        v132 = objc_opt_class();
        v133 = NSStringFromClass(v132);
        v134 = *(v71 + 40);
        objc_msgSend_covariance(v47);
        *&v135 = *(&STACK[0xE20] + i);
        objc_msgSend_covariance(v47);
        *&v136 = *(&STACK[0xDA8] + i);
        objc_msgSend_covariance(v47);
        *&v137 = *(&STACK[0xD30] + i);
        objc_msgSend_covariance(v47);
        *&v138 = *(&STACK[0xCB8] + i);
        objc_msgSend_covariance(v47);
        *&v139 = *(&STACK[0xC40] + i);
        objc_msgSend_covariance(v47);
        *&v140 = *(&STACK[0xBC8] + i);
        LODWORD(STACK[0xF30]) = 138545410;
        STACK[0xF34] = v133;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v134;
        LOWORD(STACK[0xF46]) = 2048;
        STACK[0xF48] = i + 1;
        LOWORD(STACK[0xF50]) = 2048;
        STACK[0xF52] = v135;
        LOWORD(STACK[0xF5A]) = 2048;
        STACK[0xF5C] = v136;
        LOWORD(STACK[0xF64]) = 2048;
        STACK[0xF66] = v137;
        LOWORD(STACK[0xF6E]) = 2048;
        STACK[0xF70] = v138;
        LOWORD(STACK[0xF78]) = 2048;
        STACK[0xF7A] = v139;
        LOWORD(STACK[0xF82]) = 2048;
        STACK[0xF84] = v140;
        _os_log_impl(&dword_1C241C000, v131, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL Result: covariance col %zu = %f, %f, %f, %f, %f, %f", &STACK[0xF30], 0x5Cu);
      }
    }

    v141 = _ARLogTechnique_1(v129);
    if (os_log_type_enabled(v141, OS_LOG_TYPE_DEBUG))
    {
      v142 = objc_opt_class();
      v143 = NSStringFromClass(v142);
      v144 = *(v71 + 40);
      [v47 confidence];
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v143;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v144;
      LOWORD(STACK[0xF46]) = 2048;
      *&STACK[0xF48] = v145;
      _os_log_impl(&dword_1C241C000, v141, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: VL Result: confidence = %f", &STACK[0xF30], 0x20u);
    }

    *&STACK[0xB30] = 0u;
    *&STACK[0xB40] = 0u;
    *&STACK[0xB10] = 0u;
    *&STACK[0xB20] = 0u;
    *&STACK[0xAF0] = 0u;
    *&STACK[0xB00] = 0u;
    *&STACK[0xAD0] = 0u;
    *&STACK[0xAE0] = 0u;
    objc_msgSend_transform(v47);
    *&STACK[0xAB0] = 0u;
    *&STACK[0xAC0] = 0u;
    *&STACK[0xA90] = 0u;
    *&STACK[0xAA0] = 0u;
    a45 = 0u;
    *&STACK[0xA80] = 0u;
    a43 = 0u;
    a44 = 0u;
    v146 = [*(v71 + 32) enuOrigin];
    v147 = v146;
    if (v146)
    {
      objc_msgSend_ecefFromlocation(v146);
    }

    else
    {
      a41 = 0u;
      a42 = 0u;
      a39 = 0u;
      a40 = 0u;
      a37 = 0u;
      a38 = 0u;
      a35 = 0u;
      a36 = 0u;
    }

    v148 = a40;
    *&STACK[0xF70] = a39;
    *&STACK[0xF80] = v148;
    v149 = a42;
    *&STACK[0xF90] = a41;
    *&STACK[0xFA0] = v149;
    v150 = a36;
    *&STACK[0xF30] = a35;
    *&STACK[0xF40] = v150;
    v151 = a38;
    *&STACK[0xF50] = a37;
    *&STACK[0xF60] = v151;
    __invert_d4();

    v355 = *&STACK[0xA80];
    v356 = a44;
    v363 = *&STACK[0xAC0];
    v365 = *&STACK[0xAA0];
    v354 = a43;
    v361 = a45;
    v357 = *&STACK[0xA90];
    v368 = *&STACK[0xAB0];
    v152 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(a43, *&STACK[0xAD0]), a45, *&STACK[0xAD0], 1), *&STACK[0xA90], *&STACK[0xAE0]), *&STACK[0xAB0], *&STACK[0xAE0], 1);
    v153 = (1.57079633 - atan2(v152.f64[1], v152.f64[0])) * 0.318309886 * 180.0;
    v352 = *&STACK[0xB30];
    v353 = *&STACK[0xB40];
    v155 = _ARLogTechnique_1(v154);
    if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
    {
      v369 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v354, v352.f64[0]), v361, v352, 1), v357, v353.f64[0]), v368, v353, 1);
      v156 = objc_opt_class();
      v157 = NSStringFromClass(v156);
      v158 = *(v71 + 40);
      v159 = [*(v71 + 32) poseOkCount];
      objc_msgSend_timestamp(*(v71 + 64));
      LODWORD(STACK[0xF30]) = 138545155;
      STACK[0xF34] = v157;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v158;
      LOWORD(STACK[0xF46]) = 2048;
      STACK[0xF48] = v369;
      LOWORD(STACK[0xF50]) = 2048;
      STACK[0xF52] = *(&v369 + 1);
      LOWORD(STACK[0xF5A]) = 2048;
      STACK[0xF5C] = *&vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v356, v352.f64[0]), v355, v352, 1), v365, v353.f64[0]), v363, v353, 1);
      LOWORD(STACK[0xF64]) = 2049;
      *&STACK[0xF66] = v153 + ceil(v153 / -360.0) * 360.0;
      LOWORD(STACK[0xF6E]) = 1024;
      LODWORD(STACK[0xF70]) = v159;
      LOWORD(STACK[0xF74]) = 2048;
      STACK[0xF76] = v160;
      _os_log_impl(&dword_1C241C000, v155, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _VL_VIO<-x,y,z,yaw-( %f,%f,%f,%{private}f°)- %i ts %f vlPose", &STACK[0xF30], 0x4Eu);
    }

    v161 = [ARVisualLocalizationResultData alloc];
    v162 = *(v71 + 56);
    v163 = [*(v71 + 32) enuOrigin];
    [v163 undulation];
    v165 = [(ARVisualLocalizationResultData *)v161 initWithVLLocalizationResult:v47 errorCode:0 debugInfo:vars8 heading:v162 inputLocation:vars0 algorithmVersion:v153 undulation:v164];

    v166 = _ARLogTechnique_1([*(v71 + 32) setPoseOkCount:{objc_msgSend(*(v71 + 32), "poseOkCount") + 1}]);
    if (os_log_type_enabled(v166, OS_LOG_TYPE_INFO))
    {
      v167 = objc_opt_class();
      v168 = NSStringFromClass(v167);
      v169 = *(v71 + 40);
      v170 = [*(v71 + 32) poseOkCount];
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v168;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v169;
      LOWORD(STACK[0xF46]) = 1024;
      LODWORD(STACK[0xF48]) = v170;
      _os_log_impl(&dword_1C241C000, v166, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VL Pose is OK %d ! ", &STACK[0xF30], 0x1Cu);
    }

    a41 = 0u;
    a42 = 0u;
    a39 = 0u;
    a40 = 0u;
    a37 = 0u;
    a38 = 0u;
    a35 = 0u;
    a36 = 0u;
    [*(v71 + 72) visionCameraTransform];
    v175 = [*(v71 + 32) consensusAverageFilter];
    if (v175)
    {

      v54 = vars8;
    }

    else
    {
      v176 = *(v71 + 40);
      v54 = vars8;
      if (*(v176 + 73) != 1 || (*(v176 + 74) & 1) == 0)
      {
        v177 = [ARGeoTrackingConsensusAndAverageFilter alloc];
        v178 = *&STACK[0xAA0];
        *&STACK[0xF70] = *&STACK[0xA90];
        *&STACK[0xF80] = v178;
        v179 = *&STACK[0xAC0];
        *&STACK[0xF90] = *&STACK[0xAB0];
        *&STACK[0xFA0] = v179;
        v180 = a44;
        *&STACK[0xF30] = a43;
        *&STACK[0xF40] = v180;
        v181 = *&STACK[0xA80];
        *&STACK[0xF50] = a45;
        *&STACK[0xF60] = v181;
        v182 = [(ARGeoTrackingConsensusAndAverageFilter *)v177 initWithENUFromECEF:&STACK[0xF30] maxHistory:20 minInlierScore:1.0];
        [*(v71 + 32) setConsensusAverageFilter:v182];
      }
    }

    a33 = 0u;
    a34 = 0u;
    a31 = 0u;
    a32 = 0u;
    a29 = 0u;
    a30 = 0u;
    a27 = 0u;
    a28 = 0u;
    v183 = *(v71 + 40);
    if (*(v183 + 73) == 1 && *(v183 + 74) == 1)
    {
      v184 = 0;
      a23 = a39;
      a24 = a40;
      a25 = a41;
      a26 = a42;
      a19 = a35;
      a20 = a36;
      a21 = a37;
      a22 = a38;
      *&STACK[0xF30] = 0u;
      *&STACK[0xF40] = 0u;
      *&STACK[0xF50] = 0u;
      *&STACK[0xF60] = 0u;
      *&STACK[0xF70] = 0u;
      *&STACK[0xF80] = 0u;
      *&STACK[0xF90] = 0u;
      *&STACK[0xFA0] = 0u;
      do
      {
        v186 = *(&a19 + v184);
        v185 = *(&a19 + v184 + 16);
        v187 = (&STACK[0xF30] + v184);
        *v187 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1C25C88F0, v186.f64[0]), 0, v186, 1), xmmword_1C25C8900, v185.f64[0]), 0, v185, 1);
        v187[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v186.f64[0]), xmmword_1C25C8900, v186, 1), 0, v185.f64[0]), xmmword_1C25C88F0, v185, 1);
        v184 += 32;
      }

      while (v184 != 128);
      v188 = 0;
      v190 = *&STACK[0xAD0];
      v189 = *&STACK[0xAE0];
      v192 = *&STACK[0xAF0];
      v191 = *&STACK[0xB00];
      v194 = *&STACK[0xB10];
      v193 = *&STACK[0xB20];
      v196 = *&STACK[0xB30];
      v195 = *&STACK[0xB40];
      a19 = 0u;
      a20 = 0u;
      a21 = 0u;
      a22 = 0u;
      a23 = 0u;
      a24 = 0u;
      a25 = 0u;
      a26 = 0u;
      do
      {
        v198 = *(&STACK[0xF30] + v188);
        v197 = *(&STACK[0xF30] + v188 + 16);
        v199 = (&a19 + v188);
        *v199 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v190, v198.f64[0]), v192, v198, 1), v194, v197.f64[0]), v196, v197, 1);
        v199[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v189, v198.f64[0]), v191, v198, 1), v193, v197.f64[0]), v195, v197, 1);
        v188 += 32;
      }

      while (v188 != 128);
      v200 = 0;
      v202 = a43;
      v201 = a44;
      v204 = a45;
      v203 = *&STACK[0xA80];
      v206 = *&STACK[0xA90];
      v205 = *&STACK[0xAA0];
      v208 = *&STACK[0xAB0];
      v207 = *&STACK[0xAC0];
      *&STACK[0xF30] = 0u;
      *&STACK[0xF40] = 0u;
      *&STACK[0xF50] = 0u;
      *&STACK[0xF60] = 0u;
      *&STACK[0xF70] = 0u;
      *&STACK[0xF80] = 0u;
      *&STACK[0xF90] = 0u;
      *&STACK[0xFA0] = 0u;
      do
      {
        v210 = *(&a19 + v200);
        v209 = *(&a19 + v200 + 16);
        v211 = (&STACK[0xF30] + v200);
        *v211 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v202, v210.f64[0]), v204, v210, 1), v206, v209.f64[0]), v208, v209, 1);
        v211[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v201, v210.f64[0]), v203, v210, 1), v205, v209.f64[0]), v207, v209, 1);
        v200 += 32;
      }

      while (v200 != 128);
    }

    else
    {
      v212 = [*(v71 + 32) consensusAverageFilter];
      v213 = a40;
      *&STACK[0xF70] = a39;
      *&STACK[0xF80] = v213;
      v214 = a42;
      *&STACK[0xF90] = a41;
      *&STACK[0xFA0] = v214;
      v215 = a36;
      *&STACK[0xF30] = a35;
      *&STACK[0xF40] = v215;
      v216 = a38;
      *&STACK[0xF50] = a37;
      *&STACK[0xF60] = v216;
      v217 = *&STACK[0xB20];
      a23 = *&STACK[0xB10];
      a24 = v217;
      v218 = *&STACK[0xB40];
      a25 = *&STACK[0xB30];
      a26 = v218;
      v219 = *&STACK[0xAE0];
      a19 = *&STACK[0xAD0];
      a20 = v219;
      v220 = *&STACK[0xB00];
      a21 = *&STACK[0xAF0];
      a22 = v220;
      [v212 updateWithVIOPose:&STACK[0xF30] VLPose:&a19];

      v221 = [*(v71 + 32) consensusAverageFilter];
      objc_msgSend_timestamp(*(v71 + 64));
      v222 = [v221 getCurrentENUFromVIO:&a27 ENUFromVIO:?];

      if (v222)
      {
        goto LABEL_74;
      }

      v223 = 0;
      a23 = a39;
      a24 = a40;
      a25 = a41;
      a26 = a42;
      a19 = a35;
      a20 = a36;
      a21 = a37;
      a22 = a38;
      *&STACK[0xF30] = 0u;
      *&STACK[0xF40] = 0u;
      *&STACK[0xF50] = 0u;
      *&STACK[0xF60] = 0u;
      *&STACK[0xF70] = 0u;
      *&STACK[0xF80] = 0u;
      *&STACK[0xF90] = 0u;
      *&STACK[0xFA0] = 0u;
      do
      {
        v225 = *(&a19 + v223);
        v224 = *(&a19 + v223 + 16);
        v226 = (&STACK[0xF30] + v223);
        *v226 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_1C25C88F0, v225.f64[0]), 0, v225, 1), xmmword_1C25C8900, v224.f64[0]), 0, v224, 1);
        v226[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v225.f64[0]), xmmword_1C25C8900, v225, 1), 0, v224.f64[0]), xmmword_1C25C88F0, v224, 1);
        v223 += 32;
      }

      while (v223 != 128);
      v227 = 0;
      v229 = *&STACK[0xAD0];
      v228 = *&STACK[0xAE0];
      v231 = *&STACK[0xAF0];
      v230 = *&STACK[0xB00];
      v233 = *&STACK[0xB10];
      v232 = *&STACK[0xB20];
      v235 = *&STACK[0xB30];
      v234 = *&STACK[0xB40];
      a19 = 0u;
      a20 = 0u;
      a21 = 0u;
      a22 = 0u;
      a23 = 0u;
      a24 = 0u;
      a25 = 0u;
      a26 = 0u;
      do
      {
        v237 = *(&STACK[0xF30] + v227);
        v236 = *(&STACK[0xF30] + v227 + 16);
        v238 = (&a19 + v227);
        *v238 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v229, v237.f64[0]), v231, v237, 1), v233, v236.f64[0]), v235, v236, 1);
        v238[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v228, v237.f64[0]), v230, v237, 1), v232, v236.f64[0]), v234, v236, 1);
        v227 += 32;
      }

      while (v227 != 128);
      v239 = 0;
      v241 = a43;
      v240 = a44;
      v243 = a45;
      v242 = *&STACK[0xA80];
      v245 = *&STACK[0xA90];
      v244 = *&STACK[0xAA0];
      v247 = *&STACK[0xAB0];
      v246 = *&STACK[0xAC0];
      *&STACK[0xF30] = 0u;
      *&STACK[0xF40] = 0u;
      *&STACK[0xF50] = 0u;
      *&STACK[0xF60] = 0u;
      *&STACK[0xF70] = 0u;
      *&STACK[0xF80] = 0u;
      *&STACK[0xF90] = 0u;
      *&STACK[0xFA0] = 0u;
      do
      {
        v249 = *(&a19 + v239);
        v248 = *(&a19 + v239 + 16);
        v250 = (&STACK[0xF30] + v239);
        *v250 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v241, v249.f64[0]), v243, v249, 1), v245, v248.f64[0]), v247, v248, 1);
        v250[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v240, v249.f64[0]), v242, v249, 1), v244, v248.f64[0]), v246, v248, 1);
        v239 += 32;
      }

      while (v239 != 128);
    }

    v251 = *&STACK[0xF80];
    a31 = *&STACK[0xF70];
    a32 = v251;
    v252 = *&STACK[0xFA0];
    a33 = *&STACK[0xF90];
    a34 = v252;
    v253 = *&STACK[0xF40];
    a27 = *&STACK[0xF30];
    a28 = v253;
    v254 = *&STACK[0xF60];
    a29 = *&STACK[0xF50];
    a30 = v254;
LABEL_74:
    v255 = _ARLogTechnique_1(v175);
    if (os_log_type_enabled(v255, OS_LOG_TYPE_INFO))
    {
      v256 = objc_opt_class();
      v257 = NSStringFromClass(v256);
      v258 = *(v71 + 40);
      v259 = a32;
      *&STACK[0xF70] = a31;
      *&STACK[0xF80] = v259;
      v260 = a34;
      *&STACK[0xF90] = a33;
      *&STACK[0xFA0] = v260;
      v261 = a28;
      *&STACK[0xF30] = a27;
      *&STACK[0xF40] = v261;
      v262 = a30;
      *&STACK[0xF50] = a29;
      *&STACK[0xF60] = v262;
      v263.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0xF30]);
      v267 = ARMatrix4x4Description(0, v263, v264, v265, v266);
      LODWORD(STACK[0xF30]) = 138543875;
      STACK[0xF34] = v257;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v258;
      LOWORD(STACK[0xF46]) = 2113;
      STACK[0xF48] = v267;
      _os_log_impl(&dword_1C241C000, v255, OS_LOG_TYPE_INFO, "%{public}@ <%p>: New ENUFromVIO = %{private}@", &STACK[0xF30], 0x20u);

      v54 = vars8;
    }

    v269 = _ARLogTechnique_1(v268);
    v70 = v358;
    if (os_log_type_enabled(v269, OS_LOG_TYPE_DEBUG))
    {
      v270 = objc_opt_class();
      v271 = NSStringFromClass(v270);
      v272 = *(v71 + 40);
      v273 = *&STACK[0xAA0];
      *&STACK[0xF70] = *&STACK[0xA90];
      *&STACK[0xF80] = v273;
      v274 = *&STACK[0xAC0];
      *&STACK[0xF90] = *&STACK[0xAB0];
      *&STACK[0xFA0] = v274;
      v275 = a44;
      *&STACK[0xF30] = a43;
      *&STACK[0xF40] = v275;
      v276 = *&STACK[0xA80];
      *&STACK[0xF50] = a45;
      *&STACK[0xF60] = v276;
      v277.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0xF30]);
      v281 = ARMatrix4x4Description(1, v277, v278, v279, v280);
      LODWORD(STACK[0xF30]) = 138543875;
      STACK[0xF34] = v271;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v272;
      LOWORD(STACK[0xF46]) = 2113;
      STACK[0xF48] = v281;
      _os_log_impl(&dword_1C241C000, v269, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: enuFromEcef = %{private}@", &STACK[0xF30], 0x20u);

      v54 = vars8;
    }

    v283 = _ARLogTechnique_1(v282);
    if (os_log_type_enabled(v283, OS_LOG_TYPE_DEBUG))
    {
      v284 = objc_opt_class();
      v285 = NSStringFromClass(v284);
      v286 = *(v71 + 40);
      v287 = a40;
      *&STACK[0xF70] = a39;
      *&STACK[0xF80] = v287;
      v288 = a42;
      *&STACK[0xF90] = a41;
      *&STACK[0xFA0] = v288;
      v289 = a36;
      *&STACK[0xF30] = a35;
      *&STACK[0xF40] = v289;
      v290 = a38;
      *&STACK[0xF50] = a37;
      *&STACK[0xF60] = v290;
      v291.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0xF30]);
      v295 = ARMatrix4x4Description(0, v291, v292, v293, v294);
      LODWORD(STACK[0xF30]) = 138543874;
      STACK[0xF34] = v285;
      LOWORD(STACK[0xF3C]) = 2048;
      STACK[0xF3E] = v286;
      LOWORD(STACK[0xF46]) = 2112;
      STACK[0xF48] = v295;
      _os_log_impl(&dword_1C241C000, v283, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: camCVFromVIO = %@", &STACK[0xF30], 0x20u);

      v54 = vars8;
    }

    v296 = a32;
    *&STACK[0xF70] = a31;
    *&STACK[0xF80] = v296;
    v297 = a34;
    *&STACK[0xF90] = a33;
    *&STACK[0xFA0] = v297;
    v298 = a28;
    *&STACK[0xF30] = a27;
    *&STACK[0xF40] = v298;
    v299 = a30;
    *&STACK[0xF50] = a29;
    *&STACK[0xF60] = v299;
    __invert_d4();
    v362 = ARMatrix4x4DoubleToFloat(&a19);
    v364 = v300;
    v366 = v301;
    v370 = v302;
    v303 = *(*(v71 + 40) + 75);
    v305 = _ARLogTechnique_1(v304);
    v306 = os_log_type_enabled(v305, OS_LOG_TYPE_INFO);
    if (v303 == 1)
    {
      if (v306)
      {
        v307 = objc_opt_class();
        v308 = NSStringFromClass(v307);
        v309 = *(v71 + 40);
        v310 = *(v309 + 73);
        v311 = *(v309 + 74);
        LODWORD(STACK[0xF30]) = 138544130;
        STACK[0xF34] = v308;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v309;
        LOWORD(STACK[0xF46]) = 1024;
        LODWORD(STACK[0xF48]) = v310;
        LOWORD(STACK[0xF4C]) = 1024;
        LODWORD(STACK[0xF4E]) = v311;
        _os_log_impl(&dword_1C241C000, v305, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting target ENUFromVIO for GCF, _useCoreLocationFusion=%d, _useCoreMotionFusion=%d", &STACK[0xF30], 0x22u);
      }

      v312 = [*(v71 + 32) VLHasExecuted];
      if (v312)
      {
        v313 = *(v71 + 40);
        if ((*(v313 + 73) & 1) == 0 && (*(v313 + 74) & 1) == 0)
        {
          v314 = [*(v71 + 32) gradualCorrectionFilter];
          v315 = a33;
          *&STACK[0xF40] = a34;
          *&STACK[0xF30] = v315;
          [v314 setTargetTranslation:&STACK[0xF30]];

          v313 = *(v71 + 40);
        }

        if ((*(v313 + 74) & 1) == 0)
        {
          v316 = [*(v71 + 32) gradualCorrectionFilter];
          v317 = a32;
          *&STACK[0xF70] = a31;
          *&STACK[0xF80] = v317;
          v318 = a34;
          *&STACK[0xF90] = a33;
          *&STACK[0xFA0] = v318;
          v319 = a28;
          *&STACK[0xF30] = a27;
          *&STACK[0xF40] = v319;
          v320 = a30;
          *&STACK[0xF50] = a29;
          *&STACK[0xF60] = v320;
          [v316 setTargetRotation:&STACK[0xF30]];
          v321 = 0;
LABEL_105:

          goto LABEL_106;
        }

LABEL_99:
        v321 = 0;
LABEL_106:
        os_unfair_lock_lock((*(v71 + 40) + 56));
        v350 = [*(v71 + 32) resultDatas];
        [v350 addObject:v165];

        if (v321)
        {
          v351 = [*(v71 + 32) resultDatas];
          [v351 addObject:v321];
        }

        os_unfair_lock_unlock((*(v71 + 40) + 56));
        os_unfair_lock_lock((*(v71 + 40) + 88));
        [*(v71 + 40) _setTrackingState:3 techniqueStateObject:*(v71 + 32)];
        os_unfair_lock_unlock((*(v71 + 40) + 88));
        objc_msgSend_timestamp(*(v71 + 64));
        [*(v71 + 32) setLastVLExecutionTimestamp:?];

        goto LABEL_109;
      }

      v335 = _ARLogTechnique_1(v312);
      if (os_log_type_enabled(v335, OS_LOG_TYPE_INFO))
      {
        v336 = objc_opt_class();
        v337 = NSStringFromClass(v336);
        v338 = *(v71 + 40);
        LODWORD(STACK[0xF30]) = 138543618;
        STACK[0xF34] = v337;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v338;
        _os_log_impl(&dword_1C241C000, v335, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating GCF", &STACK[0xF30], 0x16u);
      }

      v339 = [ARGeoTrackingGradualCorrectionFilter alloc];
      v340 = a32;
      *&STACK[0xF70] = a31;
      *&STACK[0xF80] = v340;
      v341 = a34;
      *&STACK[0xF90] = a33;
      *&STACK[0xFA0] = v341;
      v342 = a28;
      *&STACK[0xF30] = a27;
      *&STACK[0xF40] = v342;
      v343 = a30;
      *&STACK[0xF50] = a29;
      *&STACK[0xF60] = v343;
      v344 = [(ARGeoTrackingGradualCorrectionFilter *)v339 initWithTargetTransform:&STACK[0xF30]];
      [*(v71 + 32) setGradualCorrectionFilter:v344];
    }

    else
    {
      if (v306)
      {
        v322 = objc_opt_class();
        v323 = NSStringFromClass(v322);
        v324 = *(v71 + 40);
        v325 = *(v324 + 73);
        v326 = *(v324 + 74);
        LODWORD(STACK[0xF30]) = 138544130;
        STACK[0xF34] = v323;
        LOWORD(STACK[0xF3C]) = 2048;
        STACK[0xF3E] = v324;
        LOWORD(STACK[0xF46]) = 1024;
        LODWORD(STACK[0xF48]) = v325;
        LOWORD(STACK[0xF4C]) = 1024;
        LODWORD(STACK[0xF4E]) = v326;
        _os_log_impl(&dword_1C241C000, v305, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Setting ENUFromVIO, _useCoreLocationFusion=%d, _useCoreMotionFusion=%d", &STACK[0xF30], 0x22u);
      }

      if ([*(v71 + 32) VLHasExecuted])
      {
        v327 = *(v71 + 40);
        if ((*(v327 + 73) & 1) == 0 && (*(v327 + 74) & 1) == 0)
        {
          v328 = *(v71 + 32);
          v329 = a33;
          *&STACK[0xF40] = a34;
          *&STACK[0xF30] = v329;
          [v328 setEnuFromVIOTranslation:&STACK[0xF30]];
          v327 = *(v71 + 40);
        }

        if ((*(v327 + 74) & 1) == 0)
        {
          v330 = *(v71 + 32);
          v331 = a32;
          *&STACK[0xF70] = a31;
          *&STACK[0xF80] = v331;
          v332 = a34;
          *&STACK[0xF90] = a33;
          *&STACK[0xFA0] = v332;
          v333 = a28;
          *&STACK[0xF30] = a27;
          *&STACK[0xF40] = v333;
          v334 = a30;
          *&STACK[0xF50] = a29;
          *&STACK[0xF60] = v334;
          [v330 setEnuFromVIORotation:&STACK[0xF30]];
          v327 = *(v71 + 40);
        }

        if (*(v327 + 73) & 1) != 0 || (*(v327 + 74))
        {
          goto LABEL_99;
        }

LABEL_104:
        v349 = [ARGeoTrackingData alloc];
        v316 = [*(v71 + 32) enuOrigin];
        v321 = [(ARGeoTrackingData *)v349 initWithENUOrigin:v316 vioFromENU:v362, v364, v366, v370];
        goto LABEL_105;
      }
    }

    v345 = a32;
    *&STACK[0xF70] = a31;
    *&STACK[0xF80] = v345;
    v346 = a34;
    *&STACK[0xF90] = a33;
    *&STACK[0xFA0] = v346;
    v347 = a28;
    *&STACK[0xF30] = a27;
    *&STACK[0xF40] = v347;
    v348 = a30;
    *&STACK[0xF50] = a29;
    *&STACK[0xF60] = v348;
    [*(v71 + 32) setEnuFromVIO:&STACK[0xF30]];
    goto LABEL_104;
  }

  v70 = v63;
  if (ARShouldUseLogTypeError_onceToken_7 != -1)
  {
    [ARGeoTrackingTechnique processData:];
  }

  v71 = v65;
  v72 = ARShouldUseLogTypeError_internalOSVersion_7;
  v73 = _ARLogTechnique_1(v69);
  v74 = v73;
  if (v72 == 1)
  {
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v75 = objc_opt_class();
    v76 = NSStringFromClass(v75);
    v77 = *(v71 + 40);
    LODWORD(STACK[0xF30]) = 138543618;
    STACK[0xF34] = v76;
    LOWORD(STACK[0xF3C]) = 2048;
    STACK[0xF3E] = v77;
    v78 = "%{public}@ <%p>: Geo tracking has been reset. Dropping VL result.";
    v79 = v74;
    v80 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
    {
      goto LABEL_25;
    }

    v92 = objc_opt_class();
    v76 = NSStringFromClass(v92);
    v93 = *(v71 + 40);
    LODWORD(STACK[0xF30]) = 138543618;
    STACK[0xF34] = v76;
    LOWORD(STACK[0xF3C]) = 2048;
    STACK[0xF3E] = v93;
    v78 = "Error: %{public}@ <%p>: Geo tracking has been reset. Dropping VL result.";
    v79 = v74;
    v80 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v79, v80, v78, &STACK[0xF30], 0x16u);

LABEL_25:
  [*(v71 + 40) setVLPoseEstimationExecuting:0];
  if (*(*(v71 + 40) + 72))
  {
LABEL_26:
    dispatch_semaphore_signal(*(v71 + 48));
  }

LABEL_27:
}

- (void)_callVLWithHandle:(double)handle pixelBuffer:(__n128)buffer deviceLocation:(__n128)location heading:(__n128)heading inputGravity:(__n128)gravity vioTransform:(uint64_t)transform cameraIntrinsics:(void *)intrinsics radialDistortion:(uint64_t)self0 exposureTargetOffset:(void *)self1 timestamp:(__int128 *)self2 vlDeterminismSemaphore:(void *)self3 completionHandler:(void *)self4
{
  v62 = *MEMORY[0x1E69E9840];
  v36 = *timestamp;
  v37 = timestamp[1];
  intrinsicsCopy = intrinsics;
  offsetCopy = offset;
  semaphoreCopy = semaphore;
  handlerCopy = handler;
  if (*(self + 72) == 1)
  {
    *buf = v36;
    *&buf[16] = v37;
    [intrinsicsCopy _deterministicLocateWithPixelBuffer:distortion deviceLocation:offsetCopy heading:buf gravity:handlerCopy transform:a2 cameraIntrinsics:handle radialDistortion:buffer.n128_f64[0] exposureTargetOffset:location.n128_f64[0] timestamp:heading.n128_f64[0] completionHandler:{gravity.n128_f64[0], a15, a16, a17, a18, a19, a20}];
    v31 = dispatch_semaphore_wait(semaphoreCopy, 0xFFFFFFFFFFFFFFFFLL);
    v32 = _ARLogTechnique_1(v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = objc_opt_class();
      v34 = NSStringFromClass(v33);
      *buf = 138543874;
      *&buf[4] = v34;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = a20;
      _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Deterministic VL call completed at timestamp=%f", buf, 0x20u);
    }
  }

  else
  {
    v35 = *(self + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __211__ARGeoTrackingTechnique__callVLWithHandle_pixelBuffer_deviceLocation_heading_inputGravity_vioTransform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_vlDeterminismSemaphore_completionHandler___block_invoke;
    block[3] = &unk_1E817C3F0;
    v52 = intrinsicsCopy;
    distortionCopy = distortion;
    v53 = offsetCopy;
    v56 = a2;
    handleCopy = handle;
    v43 = v36;
    v44 = v37;
    bufferCopy = buffer;
    locationCopy = location;
    headingCopy = heading;
    gravityCopy = gravity;
    v49 = a15;
    v50 = a16;
    v51 = a17;
    v58 = a18;
    v59 = a19;
    v60 = a20;
    v54 = handlerCopy;
    dispatch_async(v35, block);

    v32 = v52;
  }
}

void __211__ARGeoTrackingTechnique__callVLWithHandle_pixelBuffer_deviceLocation_heading_inputGravity_vioTransform_cameraIntrinsics_radialDistortion_exposureTargetOffset_timestamp_vlDeterminismSemaphore_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 200);
  v3 = *(a1 + 176);
  v4 = *(a1 + 184);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 224);
  v8 = *(a1 + 232);
  v9 = *(a1 + 240);
  v15 = 0;
  v10 = *(a1 + 208);
  v11 = *(a1 + 216);
  v14[0] = v5;
  v14[1] = v6;
  v12 = [v3 locateWithPixelBuffer:v2 deviceLocation:v4 heading:v14 gravity:&v15 transform:v10 cameraIntrinsics:v11 radialDistortion:*(a1 + 64) ambientLightIntensity:*(a1 + 80) timestamp:*(a1 + 96) error:{*(a1 + 112), *(a1 + 128), *(a1 + 136), *(a1 + 144), *(a1 + 152), *(a1 + 160), *(a1 + 168), v7, v8, v9}];
  v13 = v15;
  (*(*(a1 + 192) + 16))();
}

- (void)_estimateEnuFromVioFromCLCM:(id)m
{
  STACK[0x978] = *MEMORY[0x1E69E9840];
  mCopy = m;
  enuOrigin = [(ARGeoTrackingTechniqueState *)self->_state enuOrigin];
  v6 = enuOrigin;
  if (mCopy && enuOrigin)
  {
    objc_msgSend_timestamp(mCopy);
    v8 = v7;
    v9 = [(ARGeoTrackingTechniqueState *)self->_state findClosestVioPoseToTimestamp:?];
    v10 = v9;
    if (v9)
    {
      objc_msgSend_timestamp(mCopy);
      v12 = v11;
      objc_msgSend_timestamp(v10);
      v14 = v13;
      if (!self->_useCoreMotionFusion)
      {
LABEL_32:
        v16 = 0;
        v18 = 1.79769313e308;
LABEL_33:
        lastLocationProcessedForFusion = [(ARGeoTrackingTechniqueState *)self->_state lastLocationProcessedForFusion];

        [(ARGeoTrackingTechniqueState *)self->_state setLastLocationProcessedForFusion:mCopy];
        *&STACK[0x7C0] = 0u;
        *&STACK[0x7D0] = 0u;
        *&STACK[0x7A0] = 0u;
        *&STACK[0x7B0] = 0u;
        *&STACK[0x780] = 0u;
        *&STACK[0x790] = 0u;
        *&STACK[0x760] = 0u;
        *&STACK[0x770] = 0u;
        v241 = 0u;
        objc_msgSend_transform(v10);
        if (self->_useGradualCorrection)
        {
          gradualCorrectionFilter = [(ARGeoTrackingTechniqueState *)self->_state gradualCorrectionFilter];
          v46 = gradualCorrectionFilter;
          if (gradualCorrectionFilter)
          {
            objc_msgSend_ENUFromVIOTarget(gradualCorrectionFilter);
            v233 = *&STACK[0x8F0];
            v234 = *&STACK[0x8E0];
            v235 = *&STACK[0x910];
            v236 = *&STACK[0x900];
            v237 = *&STACK[0x930];
            v238 = *&STACK[0x920];
            v240 = *&STACK[0x950];
            v241 = *&STACK[0x940];
          }

          else
          {
            v240 = 0u;
            v241 = 0u;
            v237 = 0u;
            v238 = 0u;
            v235 = 0u;
            v236 = 0u;
            v233 = 0u;
            v234 = 0u;
          }
        }

        else
        {
          state = self->_state;
          if (state)
          {
            state = objc_msgSend_enuFromVIO(state);
            v48 = *&STACK[0x8F0];
            v49 = *&STACK[0x8E0];
            v50 = *&STACK[0x910];
            v51 = *&STACK[0x900];
            v52 = *&STACK[0x930];
            v53 = *&STACK[0x920];
            v54 = *&STACK[0x950];
            v241 = *&STACK[0x940];
          }

          else
          {
            v54 = 0uLL;
            v53 = 0uLL;
            v52 = 0uLL;
            v51 = 0uLL;
            v50 = 0uLL;
            v49 = 0uLL;
            v48 = 0uLL;
          }

          v233 = v48;
          v234 = v49;
          v235 = v50;
          v236 = v51;
          v237 = v52;
          v238 = v53;
          v240 = v54;
        }

        v55 = 0;
        if (lastLocationProcessedForFusion == mCopy)
        {
          v57 = 0;
          goto LABEL_115;
        }

        v56 = vabdd_f64(v12, v14);
        v57 = 0;
        if (v56 >= 1.0)
        {
LABEL_115:
          if ((v55 | v57) == 1 && !self->_useGradualCorrection)
          {
            v211 = self->_state;
            if (v211)
            {
              objc_msgSend_enuFromVIO(v211);
            }

            else
            {
              *&STACK[0x740] = 0u;
              *&STACK[0x750] = 0u;
              v260 = 0u;
              v261 = 0u;
              v258 = 0u;
              v259 = 0u;
              v256 = 0u;
              v257 = 0u;
            }

            v212 = v261;
            *&STACK[0x920] = v260;
            *&STACK[0x930] = v212;
            v213 = *&STACK[0x750];
            *&STACK[0x940] = *&STACK[0x740];
            *&STACK[0x950] = v213;
            v214 = v257;
            *&STACK[0x8E0] = v256;
            *&STACK[0x8F0] = v214;
            v215 = v259;
            *&STACK[0x900] = v258;
            *&STACK[0x910] = v215;
            __invert_d4();
            v216 = ARMatrix4x4DoubleToFloat(&STACK[0x860]);
            v219 = [[ARGeoTrackingData alloc] initWithENUOrigin:v6 vioFromENU:v216, v217, v218, v219];
            os_unfair_lock_lock(&self->_resultLock);
            resultDatas = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
            [resultDatas addObject:v219];

            os_unfair_lock_unlock(&self->_resultLock);
          }

          goto LABEL_121;
        }

        v232 = v6;
        v239 = v16;
        v58 = _ARLogTechnique_1(state);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          v61 = objc_msgSend_location(mCopy);
          isCoordinateFused = [v61 isCoordinateFused];
          v63 = objc_msgSend_location(mCopy);
          isCoordinateFusedWithVL = [v63 isCoordinateFusedWithVL];
          fused = [v239 fused];
          LODWORD(STACK[0x8E0]) = 138544386;
          STACK[0x8E4] = v60;
          LOWORD(STACK[0x8EC]) = 2048;
          STACK[0x8EE] = self;
          LOWORD(STACK[0x8F6]) = 1024;
          LODWORD(STACK[0x8F8]) = isCoordinateFused;
          LOWORD(STACK[0x8FC]) = 1024;
          LODWORD(STACK[0x8FE]) = isCoordinateFusedWithVL;
          LOWORD(STACK[0x902]) = 1024;
          LODWORD(STACK[0x904]) = fused;
          _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "%{public}@ <%p>: CLCM Performing fusion update, fusedLocation=%d, VLFusedLocation=%d, fusedMotion=%d.", &STACK[0x8E0], 0x28u);
        }

        v66 = *&STACK[0x7B0];
        *&STACK[0x920] = *&STACK[0x7A0];
        *&STACK[0x930] = v66;
        v67 = *&STACK[0x7D0];
        *&STACK[0x940] = *&STACK[0x7C0];
        *&STACK[0x950] = v67;
        v68 = *&STACK[0x770];
        *&STACK[0x8E0] = *&STACK[0x760];
        *&STACK[0x8F0] = v68;
        v69 = *&STACK[0x790];
        *&STACK[0x900] = *&STACK[0x780];
        *&STACK[0x910] = v69;
        fused2 = __invert_d4();
        v71 = 0;
        *&STACK[0x860] = 0u;
        *&STACK[0x870] = 0u;
        *&STACK[0x880] = 0u;
        *&STACK[0x890] = 0u;
        *&STACK[0x8A0] = 0u;
        *&STACK[0x8B0] = 0u;
        *&STACK[0x8C0] = 0u;
        *&STACK[0x8D0] = 0u;
        v73 = v240;
        v72 = v241;
        do
        {
          v75 = *(&v256 + v71);
          v74 = *(&v256 + v71 + 16);
          v76 = (&STACK[0x860] + v71);
          *v76 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v234, v75.f64[0]), v236, v75, 1), v238, v74.f64[0]), v241, v74, 1);
          v76[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v233, v75.f64[0]), v235, v75, 1), v237, v74.f64[0]), v240, v74, 1);
          v71 += 32;
        }

        while (v71 != 128);
        if (self->_useCoreLocationFusion)
        {
          v77 = objc_msgSend_location(mCopy);
          isCoordinateFusedWithVL2 = [v77 isCoordinateFusedWithVL];

          if (isCoordinateFusedWithVL2)
          {
            v79 = _ARLogTechnique_1(fused2);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              v80 = objc_opt_class();
              v81 = NSStringFromClass(v80);
              LODWORD(STACK[0x8E0]) = 138543874;
              STACK[0x8E4] = v81;
              LOWORD(STACK[0x8EC]) = 2048;
              STACK[0x8EE] = self;
              LOWORD(STACK[0x8F6]) = 2048;
              *&STACK[0x8F8] = v56;
              _os_log_impl(&dword_1C241C000, v79, OS_LOG_TYPE_INFO, "%{public}@ <%p>: CLCM Computing translation from CL fusion, time diff VIO-CL=%fs", &STACK[0x8E0], 0x20u);
            }

            objc_msgSend_locationECEF(v232);
            vars0a = v255;
            v229 = v254;
            objc_msgSend_locationECEF(mCopy);
            v82 = v252;
            v83 = v253;
            *&STACK[0x8F0] = vars0a;
            *&STACK[0x8E0] = v229;
            v256 = v82;
            v257 = v83;
            fused2 = ARECEFToENU(&v250);
            v84 = v251;
            *&STACK[0x8C0] = v250;
            *&STACK[0x8D0] = v84;
            v57 = 1;
          }

          else
          {
            v57 = 0;
          }

          v73 = v240;
          v72 = v241;
        }

        else
        {
          v57 = 0;
        }

        v85 = 0;
        if (v239 && self->_useCoreMotionFusion)
        {
          fused2 = [v239 fused];
          v85 = 0;
          if (fused2)
          {
            v73 = v240;
            v72 = v241;
            if (v18 >= 0.02)
            {
              goto LABEL_69;
            }

            v86 = _ARLogTechnique_1(fused2);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
            {
              v87 = objc_opt_class();
              v88 = NSStringFromClass(v87);
              LODWORD(STACK[0x8E0]) = 138543874;
              STACK[0x8E4] = v88;
              LOWORD(STACK[0x8EC]) = 2048;
              STACK[0x8EE] = self;
              LOWORD(STACK[0x8F6]) = 2048;
              *&STACK[0x8F8] = v18;
              _os_log_impl(&dword_1C241C000, v86, OS_LOG_TYPE_INFO, "%{public}@ <%p>: CLCM Computing rotation from CM fusion, time diff VIO-CM=%fs", &STACK[0x8E0], 0x20u);
            }

            v89 = objc_opt_class();
            v90 = *&STACK[0x8B0];
            *&STACK[0x920] = *&STACK[0x8A0];
            *&STACK[0x930] = v90;
            v91 = *&STACK[0x8D0];
            *&STACK[0x940] = *&STACK[0x8C0];
            *&STACK[0x950] = v91;
            v92 = *&STACK[0x870];
            *&STACK[0x8E0] = *&STACK[0x860];
            *&STACK[0x8F0] = v92;
            v93 = *&STACK[0x890];
            *&STACK[0x900] = *&STACK[0x880];
            *&STACK[0x910] = v93;
            [v89 getHeadingForEnuFromCam:&STACK[0x8E0]];
            v95 = v94;
            *&STACK[0x740] = 0u;
            *&STACK[0x750] = 0u;
            v260 = 0u;
            v261 = 0u;
            v258 = 0u;
            v259 = 0u;
            v256 = 0u;
            v257 = 0u;
            objc_msgSend_transform(v239);
            v96 = *&STACK[0x830];
            *&STACK[0x920] = *&STACK[0x820];
            *&STACK[0x930] = v96;
            v97 = *&STACK[0x850];
            *&STACK[0x940] = *&STACK[0x840];
            *&STACK[0x950] = v97;
            v98 = *&STACK[0x7F0];
            *&STACK[0x8E0] = *&STACK[0x7E0];
            *&STACK[0x8F0] = v98;
            v99 = *&STACK[0x810];
            *&STACK[0x900] = *&STACK[0x800];
            *&STACK[0x910] = v99;
            __invert_d4();
            v100 = objc_opt_class();
            v101 = v261;
            *&STACK[0x920] = v260;
            *&STACK[0x930] = v101;
            v102 = *&STACK[0x750];
            *&STACK[0x940] = *&STACK[0x740];
            *&STACK[0x950] = v102;
            v103 = v257;
            *&STACK[0x8E0] = v256;
            *&STACK[0x8F0] = v103;
            v104 = v259;
            *&STACK[0x900] = v258;
            *&STACK[0x910] = v104;
            [v100 getHeadingForEnuFromCam:&STACK[0x8E0]];
            v106 = v105;
            *&STACK[0x950] = 0u;
            *&STACK[0x940] = 0u;
            *&STACK[0x930] = 0u;
            *&STACK[0x920] = 0u;
            *&STACK[0x910] = 0u;
            *&STACK[0x900] = 0u;
            *&STACK[0x8F0] = 0u;
            *&STACK[0x8E0] = 0u;
            *&v105 = v105 - v95;
            v107 = __sincosf_stret(*&v105 * 0.5);
            _Q2 = vmulq_n_f32(xmmword_1C25C8910, v107.__sinval);
            _S3 = _Q2.i32[1];
            _S5 = _Q2.i32[2];
            __asm { FMLS            S0, S5, V2.S[2] }

            v115 = vmuls_lane_f32(v107.__cosval, _Q2, 2);
            v116 = vmuls_lane_f32(v107.__cosval, *_Q2.f32, 1);
            v117.i32[3] = 0;
            v117.f32[0] = _S0 + (v107.__cosval * v107.__cosval);
            v117.f32[1] = (v115 + (_Q2.f32[0] * _Q2.f32[1])) + (v115 + (_Q2.f32[0] * _Q2.f32[1]));
            v117.f32[2] = -(v116 - (_Q2.f32[0] * _Q2.f32[2])) - (v116 - (_Q2.f32[0] * _Q2.f32[2]));
            *&v118 = -(v115 - (_Q2.f32[0] * _Q2.f32[1])) - (v115 - (_Q2.f32[0] * _Q2.f32[1]));
            __asm { FMLA            S4, S3, V2.S[1] }

            *&v120 = (_S4 + (v107.__cosval * v107.__cosval)) - (_Q2.f32[0] * _Q2.f32[0]);
            __asm { FMLA            S4, S5, V2.S[1] }

            *&v122 = _S4 + _S4;
            v123.i64[0] = __PAIR64__(v120, v118);
            v123.i64[1] = v122;
            __asm
            {
              FMLA            S7, S5, V2.S[1]
              FMLA            S1, S5, V2.S[2]
              FMLS            S1, S3, V2.S[1]
            }

            _Q2.f32[0] = (v116 + (_Q2.f32[2] * _Q2.f32[0])) + (v116 + (_Q2.f32[2] * _Q2.f32[0]));
            _Q2.f32[1] = _S7 + _S7;
            _Q2.i64[1] = _S1;
            ARMatrix4x4FloatToDouble(&STACK[0x8E0], v117, v123, _Q2, xmmword_1C25C8560);
            v127 = 0;
            v129 = *&STACK[0x860];
            v128 = *&STACK[0x870];
            v131 = *&STACK[0x880];
            v130 = *&STACK[0x890];
            v133 = *&STACK[0x8A0];
            v132 = *&STACK[0x8B0];
            v134 = *&STACK[0x8D0];
            v135 = *&STACK[0x8C0];
            v136 = *&STACK[0x930];
            v246 = *&STACK[0x920];
            v247 = v136;
            v137 = *&STACK[0x950];
            v248 = *&STACK[0x940];
            v249 = v137;
            v138 = *&STACK[0x8F0];
            v242 = *&STACK[0x8E0];
            v243 = v138;
            v139 = *&STACK[0x910];
            v244 = *&STACK[0x900];
            v245 = v139;
            *&STACK[0x840] = 0u;
            *&STACK[0x850] = 0u;
            *&STACK[0x820] = 0u;
            *&STACK[0x830] = 0u;
            *&STACK[0x800] = 0u;
            *&STACK[0x810] = 0u;
            *&STACK[0x7E0] = 0u;
            *&STACK[0x7F0] = 0u;
            do
            {
              v141 = *(&v242 + v127);
              v140 = *(&v242 + v127 + 16);
              v142 = (&STACK[0x7E0] + v127);
              *v142 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v129, v141.f64[0]), v131, v141, 1), v133, v140.f64[0]), v135, v140, 1);
              v142[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v128, v141.f64[0]), v130, v141, 1), v132, v140.f64[0]), v134, v140, 1);
              v127 += 32;
            }

            while (v127 != 128);
            v143 = *&STACK[0x830];
            *&STACK[0x8A0] = *&STACK[0x820];
            *&STACK[0x8B0] = v143;
            v144 = *&STACK[0x850];
            *&STACK[0x8C0] = *&STACK[0x840];
            *&STACK[0x8D0] = v144;
            v145 = *&STACK[0x7F0];
            *&STACK[0x860] = *&STACK[0x7E0];
            *&STACK[0x870] = v145;
            v146 = *&STACK[0x810];
            *&STACK[0x880] = *&STACK[0x800];
            *&STACK[0x890] = v146;
            v147 = objc_opt_class();
            v148 = *&STACK[0x8B0];
            *&STACK[0x820] = *&STACK[0x8A0];
            *&STACK[0x830] = v148;
            v149 = *&STACK[0x8D0];
            *&STACK[0x840] = *&STACK[0x8C0];
            *&STACK[0x850] = v149;
            v150 = *&STACK[0x870];
            *&STACK[0x7E0] = *&STACK[0x860];
            *&STACK[0x7F0] = v150;
            v151 = *&STACK[0x890];
            *&STACK[0x800] = *&STACK[0x880];
            *&STACK[0x810] = v151;
            v152 = [v147 getHeadingForEnuFromCam:&STACK[0x7E0]];
            v154 = v153;
            v155 = _ARLogTechnique_1(v152);
            if (os_log_type_enabled(v155, OS_LOG_TYPE_DEBUG))
            {
              v156 = objc_opt_class();
              v157 = NSStringFromClass(v156);
              LODWORD(STACK[0x7E0]) = 138544387;
              STACK[0x7E4] = v157;
              LOWORD(STACK[0x7EC]) = 2048;
              STACK[0x7EE] = self;
              LOWORD(STACK[0x7F6]) = 2049;
              *&STACK[0x7F8] = v95 * 0.318309886 * 180.0;
              LOWORD(STACK[0x800]) = 2049;
              *&STACK[0x802] = v106 * 0.318309886 * 180.0;
              LOWORD(STACK[0x80A]) = 2049;
              *&STACK[0x80C] = v154 * 0.318309886 * 180.0;
              _os_log_impl(&dword_1C241C000, v155, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM origHeading=%{private}f,cmHeading=%{private}f,newHeading=%{private}f", &STACK[0x7E0], 0x34u);
            }

            v85 = 1;
            v57 = 1;
          }

          v73 = v240;
          v72 = v241;
        }

LABEL_69:
        v158 = 0;
        v160 = *&STACK[0x860];
        v159 = *&STACK[0x870];
        v162 = *&STACK[0x880];
        v161 = *&STACK[0x890];
        v164 = *&STACK[0x8A0];
        v163 = *&STACK[0x8B0];
        v165 = *&STACK[0x8D0];
        v166 = *&STACK[0x8C0];
        v167 = *&STACK[0x7B0];
        v260 = *&STACK[0x7A0];
        v261 = v167;
        v168 = *&STACK[0x7D0];
        *&STACK[0x740] = *&STACK[0x7C0];
        *&STACK[0x750] = v168;
        v169 = *&STACK[0x770];
        v256 = *&STACK[0x760];
        v257 = v169;
        v170 = *&STACK[0x790];
        v258 = *&STACK[0x780];
        v259 = v170;
        *&STACK[0x950] = 0u;
        *&STACK[0x940] = 0u;
        *&STACK[0x930] = 0u;
        *&STACK[0x920] = 0u;
        *&STACK[0x910] = 0u;
        *&STACK[0x900] = 0u;
        *&STACK[0x8F0] = 0u;
        *&STACK[0x8E0] = 0u;
        do
        {
          v172 = *(&v256 + v158);
          v171 = *(&v256 + v158 + 16);
          v173 = (&STACK[0x8E0] + v158);
          *v173 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v160, v172.f64[0]), v162, v172, 1), v164, v171.f64[0]), v166, v171, 1);
          v173[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v159, v172.f64[0]), v161, v172, 1), v163, v171.f64[0]), v165, v171, 1);
          v158 += 32;
        }

        while (v158 != 128);
        v222 = *&STACK[0x8E0];
        v223 = *&STACK[0x8F0];
        v224 = *&STACK[0x900];
        v225 = *&STACK[0x910];
        v226 = *&STACK[0x920];
        vars0 = *&STACK[0x930];
        v230 = *&STACK[0x940];
        v231 = *&STACK[0x950];
        if (v57)
        {
          v174 = vsubq_f64(*&STACK[0x950], v73);
          v175 = vsubq_f64(*&STACK[0x940], v72);
          v176 = vaddvq_f64(vaddq_f64(vmulq_f64(v175, v175), vmulq_f64(v174, v174)));
          v177 = _ARLogTechnique_1(fused2);
          v178 = os_log_type_enabled(v177, OS_LOG_TYPE_DEBUG);
          if (v176 >= 0.0625 && (*&v176 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            if (v178)
            {
              v182 = objc_opt_class();
              v183 = NSStringFromClass(v182);
              v184 = ARVector3Description(vcvt_hight_f32_f64(vcvt_f32_f64(v230), v231));
              LODWORD(STACK[0x8E0]) = 138543875;
              STACK[0x8E4] = v183;
              LOWORD(STACK[0x8EC]) = 2048;
              STACK[0x8EE] = self;
              LOWORD(STACK[0x8F6]) = 2113;
              STACK[0x8F8] = v184;
              _os_log_impl(&dword_1C241C000, v177, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM ENUFromVIO new translation vector: %{private}@", &STACK[0x8E0], 0x20u);
            }

            v185 = self->_state;
            if (self->_useGradualCorrection)
            {
              gradualCorrectionFilter2 = [(ARGeoTrackingTechniqueState *)v185 gradualCorrectionFilter];
              *&STACK[0x8F0] = v231;
              *&STACK[0x8E0] = v230;
              [gradualCorrectionFilter2 setTargetTranslation:&STACK[0x8E0]];
            }

            else
            {
              *&STACK[0x8E0] = v230;
              *&STACK[0x8F0] = v231;
              [(ARGeoTrackingTechniqueState *)v185 setEnuFromVIOTranslation:&STACK[0x8E0]];
            }
          }

          else
          {
            if (v178)
            {
              v180 = objc_opt_class();
              v181 = NSStringFromClass(v180);
              LODWORD(STACK[0x8E0]) = 138543618;
              STACK[0x8E4] = v181;
              LOWORD(STACK[0x8EC]) = 2048;
              STACK[0x8EE] = self;
              _os_log_impl(&dword_1C241C000, v177, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM ENUFromVIO update: translation difference too small, ignoring", &STACK[0x8E0], 0x16u);
            }
          }

          v73 = v240;
          v72 = v241;
          if (v85)
          {
LABEL_87:
            *&STACK[0x8F0] = v233;
            *&STACK[0x8E0] = v234;
            *&STACK[0x910] = v235;
            *&STACK[0x900] = v236;
            *&STACK[0x930] = v237;
            *&STACK[0x920] = v238;
            *&STACK[0x950] = v73;
            *&STACK[0x940] = v72;
            __invert_d4();
            v187 = 0;
            *&STACK[0x8E0] = 0u;
            *&STACK[0x8F0] = 0u;
            *&STACK[0x900] = 0u;
            *&STACK[0x910] = 0u;
            *&STACK[0x920] = 0u;
            *&STACK[0x930] = 0u;
            *&STACK[0x940] = 0u;
            *&STACK[0x950] = 0u;
            do
            {
              v189 = *(&STACK[0x860] + v187);
              v188 = *(&STACK[0x860] + v187 + 16);
              v190 = (&STACK[0x8E0] + v187);
              *v190 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v222, v189.f64[0]), v224, v189, 1), v226, v188.f64[0]), v230, v188, 1);
              v190[1] = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v223, v189.f64[0]), v225, v189, 1), vars0, v188.f64[0]), v231, v188, 1);
              v187 += 32;
            }

            while (v187 != 128);
            v191 = (*&STACK[0x8E0] + *&STACK[0x908] + *&STACK[0x930] + -1.0) * 0.5;
            v192 = 1.0;
            if (v191 >= 1.001 || v191 <= 1.0)
            {
              v192 = (*&STACK[0x8E0] + *&STACK[0x908] + *&STACK[0x930] + -1.0) * 0.5;
            }

            if (v191 >= -1.0 || v191 <= -1.001)
            {
              v195 = v192;
            }

            else
            {
              v195 = -1.0;
            }

            v196 = acos(v195);
            v198 = _ARLogTechnique_1(v197);
            v199 = os_log_type_enabled(v198, OS_LOG_TYPE_DEBUG);
            if ((*&v196 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v196 * 180.0 < 3.14159265)
            {
              v16 = v239;
              if (v199)
              {
                v209 = objc_opt_class();
                v210 = NSStringFromClass(v209);
                LODWORD(STACK[0x860]) = 138543618;
                STACK[0x864] = v210;
                LOWORD(STACK[0x86C]) = 2048;
                STACK[0x86E] = self;
                _os_log_impl(&dword_1C241C000, v198, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM ENUFromVIO update: rotation difference too small, ignoring", &STACK[0x860], 0x16u);
              }
            }

            else
            {
              if (v199)
              {
                v200 = objc_opt_class();
                v201 = NSStringFromClass(v200);
                *&STACK[0x860] = v222;
                *&STACK[0x870] = v223;
                *&STACK[0x880] = v224;
                *&STACK[0x890] = v225;
                *&STACK[0x8A0] = v226;
                *&STACK[0x8B0] = vars0;
                *&STACK[0x8D0] = v231;
                *&STACK[0x8C0] = v230;
                v202.n128_f64[0] = ARMatrix4x4DoubleToFloat(&STACK[0x860]);
                v206 = ARMatrix4x4Description(0, v202, v203, v204, v205);
                LODWORD(STACK[0x860]) = 138543875;
                STACK[0x864] = v201;
                LOWORD(STACK[0x86C]) = 2048;
                STACK[0x86E] = self;
                LOWORD(STACK[0x876]) = 2113;
                STACK[0x878] = v206;
                _os_log_impl(&dword_1C241C000, v198, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CLCM ENUFromVIO new rotation: %{private}@", &STACK[0x860], 0x20u);
              }

              v207 = self->_state;
              v16 = v239;
              if (!self->_useGradualCorrection)
              {
                *&STACK[0x860] = v222;
                *&STACK[0x870] = v223;
                *&STACK[0x880] = v224;
                *&STACK[0x890] = v225;
                *&STACK[0x8A0] = v226;
                *&STACK[0x8B0] = vars0;
                *&STACK[0x8C0] = v230;
                *&STACK[0x8D0] = v231;
                [(ARGeoTrackingTechniqueState *)v207 setEnuFromVIORotation:&STACK[0x860]];
                v6 = v232;
                goto LABEL_114;
              }

              gradualCorrectionFilter3 = [(ARGeoTrackingTechniqueState *)v207 gradualCorrectionFilter];
              *&STACK[0x860] = v222;
              *&STACK[0x870] = v223;
              *&STACK[0x880] = v224;
              *&STACK[0x890] = v225;
              *&STACK[0x8A0] = v226;
              *&STACK[0x8B0] = vars0;
              *&STACK[0x8D0] = v231;
              *&STACK[0x8C0] = v230;
              [gradualCorrectionFilter3 setTargetRotation:&STACK[0x860]];
            }

            v6 = v232;
LABEL_114:
            v55 = 1;
            goto LABEL_115;
          }

          v55 = 0;
          v57 = 1;
        }

        else
        {
          if (v85)
          {
            goto LABEL_87;
          }

          v55 = 0;
          v57 = 0;
        }

        v6 = v232;
        v16 = v239;
        goto LABEL_115;
      }

      v15 = [(ARGeoTrackingTechniqueState *)self->_state findClosestDeviceMotionDataToTimestamp:v8];
      if (v15)
      {
        v16 = v15;
        objc_msgSend_timestamp(v15);
        v18 = vabdd_f64(v17, v8);
        goto LABEL_33;
      }

      if (ARShouldUseLogTypeError_onceToken_7 != -1)
      {
        [ARGeoTrackingTechnique _estimatePose:pose:];
      }

      v35 = ARShouldUseLogTypeError_internalOSVersion_7;
      v36 = _ARLogTechnique_1(v15);
      v37 = v36;
      if (v35 == 1)
      {
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          LODWORD(STACK[0x8E0]) = 138543874;
          STACK[0x8E4] = v39;
          LOWORD(STACK[0x8EC]) = 2048;
          STACK[0x8EE] = self;
          LOWORD(STACK[0x8F6]) = 2048;
          *&STACK[0x8F8] = v8;
          v40 = "%{public}@ <%p>: CLCM No device orientation found near timestamp: %f";
          v41 = v37;
          v42 = OS_LOG_TYPE_ERROR;
LABEL_30:
          _os_log_impl(&dword_1C241C000, v41, v42, v40, &STACK[0x8E0], 0x20u);
        }
      }

      else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v43 = objc_opt_class();
        v39 = NSStringFromClass(v43);
        LODWORD(STACK[0x8E0]) = 138543874;
        STACK[0x8E4] = v39;
        LOWORD(STACK[0x8EC]) = 2048;
        STACK[0x8EE] = self;
        LOWORD(STACK[0x8F6]) = 2048;
        *&STACK[0x8F8] = v8;
        v40 = "Error: %{public}@ <%p>: CLCM No device orientation found near timestamp: %f";
        v41 = v37;
        v42 = OS_LOG_TYPE_INFO;
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    if (ARShouldUseLogTypeError_onceToken_7 != -1)
    {
      [ARGeoTrackingTechnique _estimatePose:pose:];
    }

    v27 = ARShouldUseLogTypeError_internalOSVersion_7;
    v28 = _ARLogTechnique_1(v9);
    v16 = v28;
    if (v27 == 1)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = objc_opt_class();
        v30 = NSStringFromClass(v29);
        LODWORD(STACK[0x8E0]) = 138543874;
        STACK[0x8E4] = v30;
        LOWORD(STACK[0x8EC]) = 2048;
        STACK[0x8EE] = self;
        LOWORD(STACK[0x8F6]) = 2048;
        *&STACK[0x8F8] = v8;
        v31 = "%{public}@ <%p>: CLCM No VIO pose found near timestamp: %f; bailing out";
        v32 = v16;
        v33 = OS_LOG_TYPE_ERROR;
LABEL_22:
        _os_log_impl(&dword_1C241C000, v32, v33, v31, &STACK[0x8E0], 0x20u);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v30 = NSStringFromClass(v34);
      LODWORD(STACK[0x8E0]) = 138543874;
      STACK[0x8E4] = v30;
      LOWORD(STACK[0x8EC]) = 2048;
      STACK[0x8EE] = self;
      LOWORD(STACK[0x8F6]) = 2048;
      *&STACK[0x8F8] = v8;
      v31 = "Error: %{public}@ <%p>: CLCM No VIO pose found near timestamp: %f; bailing out";
      v32 = v16;
      v33 = OS_LOG_TYPE_INFO;
      goto LABEL_22;
    }

LABEL_121:

    goto LABEL_122;
  }

  if (ARShouldUseLogTypeError_onceToken_7 != -1)
  {
    [ARGeoTrackingTechnique _estimatePose:pose:];
  }

  v19 = ARShouldUseLogTypeError_internalOSVersion_7;
  v20 = _ARLogTechnique_1(enuOrigin);
  v10 = v20;
  if (v19 == 1)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      LODWORD(STACK[0x8E0]) = 138543618;
      STACK[0x8E4] = v22;
      LOWORD(STACK[0x8EC]) = 2048;
      STACK[0x8EE] = self;
      v23 = "%{public}@ <%p>: At least one location must have been received so far.";
      v24 = v10;
      v25 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1C241C000, v24, v25, v23, &STACK[0x8E0], 0x16u);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v26 = objc_opt_class();
    v22 = NSStringFromClass(v26);
    LODWORD(STACK[0x8E0]) = 138543618;
    STACK[0x8E4] = v22;
    LOWORD(STACK[0x8EC]) = 2048;
    STACK[0x8EE] = self;
    v23 = "Error: %{public}@ <%p>: At least one location must have been received so far.";
    v24 = v10;
    v25 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

LABEL_122:
}

- (void)_updateVLStateData:(double)data
{
  v58 = *MEMORY[0x1E69E9840];
  [(ARGeoTrackingTechniqueState *)self->_state lastVLExecutionTimestamp];
  v6 = v5;
  [(ARGeoTrackingTechniqueState *)self->_state firstVLExecutionAttemptTimestamp];
  v8 = v7;
  lastCLLocation = [(ARGeoTrackingTechniqueState *)self->_state lastCLLocation];
  v10 = objc_msgSend_location(lastCLLocation);
  [v10 horizontalAccuracy];
  v12 = v11;
  v13 = objc_msgSend_location(lastCLLocation);
  [v13 horizontalAccuracy];
  v15 = v14;
  v16 = objc_msgSend_location(lastCLLocation);
  [v16 verticalAccuracy];
  v18 = v17;
  v51 = lastCLLocation;
  v19 = objc_msgSend_location(lastCLLocation);
  [v19 verticalAccuracy];
  v21 = v20;

  os_unfair_lock_lock(&self->_statusLock);
  trackingState = [(ARGeoTrackingTechniqueState *)self->_state trackingState];
  trackingAccuracy = [(ARGeoTrackingTechniqueState *)self->_state trackingAccuracy];
  v24 = [(ARGeoTrackingTechnique *)self _getHighestPriorityFailureWithTechniqueStateObject:self->_state];
  failureReasons = [(ARGeoTrackingTechniqueState *)self->_state failureReasons];
  hasStartedAvailabilityCheck = [(ARGeoTrackingTechniqueState *)self->_state hasStartedAvailabilityCheck];
  hasReturnedAvailabilityCheck = [(ARGeoTrackingTechniqueState *)self->_state hasReturnedAvailabilityCheck];
  hasStartedLocalization = [(ARGeoTrackingTechniqueState *)self->_state hasStartedLocalization];
  hasReturnedLocalization = [(ARGeoTrackingTechniqueState *)self->_state hasReturnedLocalization];
  os_unfair_lock_unlock(&self->_statusLock);
  if (trackingState == 3)
  {
    v27 = sqrt(v18 * v21 + v12 * v15);
    if (v27 >= 1.88)
    {
      if (v27 >= 3.64)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }
    }

    else
    {
      v28 = 3;
    }
  }

  else
  {
    v28 = 0;
  }

  if (v28 != trackingAccuracy)
  {
    v29 = _ARLogTechnique_1(v26);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      v32 = NSStringFromARGeoTrackingAccuracy(v28);
      *buf = 138543874;
      v53 = v31;
      v54 = 2048;
      selfCopy = self;
      v56 = 2112;
      v57 = v32;
      _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Geo tracking (base level) accuracy changed to: %@", buf, 0x20u);
    }

    os_unfair_lock_lock(&self->_statusLock);
    [(ARGeoTrackingTechniqueState *)self->_state setTrackingAccuracy:v28];
    os_unfair_lock_unlock(&self->_statusLock);
  }

  if (v8 > 0.0)
  {
    v8 = data - v8;
  }

  if (v6 <= 0.0)
  {
    v33 = v6;
  }

  else
  {
    v33 = data - v6;
  }

  v34 = [[ARGeoTrackingStatus alloc] initWithGeoTrackingState:trackingState accuracy:v28 stateReason:v24 failureReasons:failureReasons];
  lastCMDeviceMotion = [(ARGeoTrackingTechniqueState *)self->_state lastCMDeviceMotion];
  v36 = [ARVLStateData alloc];
  v37 = objc_msgSend_location(v51);
  v38 = [v37 copy];
  objc_msgSend_timestamp(v51);
  v40 = v39;
  deviceMotion = [lastCMDeviceMotion deviceMotion];
  [deviceMotion heading];
  v43 = v42;
  objc_msgSend_timestamp(lastCMDeviceMotion);
  v45 = [(ARVLStateData *)v36 init:v34 timeSinceInitialization:v38 trackingStatus:hasStartedAvailabilityCheck fusedReplayLocation:hasReturnedAvailabilityCheck fusedReplayLocationTimestamp:hasStartedLocalization fusedReplayHeading:hasReturnedLocalization fusedReplayHeadingTimestamp:v33 hasStartedAvailabilityCheck:v8 hasReturnedAvailabilityCheck:v40 hasStartedLocalization:v43 hasReturnedLocalization:v44];

  os_unfair_lock_lock(&self->_resultLock);
  resultDatas = [(ARGeoTrackingTechniqueState *)self->_state resultDatas];
  [resultDatas addObject:v45];

  os_unfair_lock_unlock(&self->_resultLock);
}

- (__n128)getLocationFromWorldPosition:(__n128 *)position@<X8> error:(__n128)error@<Q0>
{
  v46[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((self + 104));
  v7 = *(self + 112);
  os_unfair_lock_unlock((self + 104));
  trackingState = [v7 trackingState];
  if (trackingState == 3)
  {
    v9 = 0uLL;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    memset(buf, 0, sizeof(buf));
    if (v7)
    {
      objc_msgSend_enuFromVIO(v7);
      v9 = 0uLL;
    }

    v36 = v9;
    v37 = v9;
    v34 = v9;
    v35 = v9;
    v32 = v9;
    v33 = v9;
    v30 = v9;
    v31 = v9;
    enuOrigin = [v7 enuOrigin];
    v11 = enuOrigin;
    if (enuOrigin)
    {
      objc_msgSend_ecefFromlocation(enuOrigin);
    }

    else
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
    }

    errorCopy = error;
    errorCopy.n128_u32[3] = 1.0;
    ARVisionTransformFromARTransform(*MEMORY[0x1E69E9B18], *(MEMORY[0x1E69E9B18] + 16), *(MEMORY[0x1E69E9B18] + 32), errorCopy);
    ARECEFToLLA(v29);
    v25 = v29[0];
    v28 = v29[1];
    enuOrigin2 = [v7 enuOrigin];
    [enuOrigin2 undulation];
    v22 = ARWGS84ToMSLAltitude(*v28.i64, v21);
    v23.n128_u64[1] = v28.u64[1];
    v23.n128_f64[0] = v22;
    v27 = v23;
  }

  else
  {
    v12 = _ARLogTechnique_1(trackingState);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      *&buf[4] = v14;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: getGeoLocationForPoint requires geo tracking to be localized.", buf, 0x16u);
    }

    if (a2)
    {
      v45 = *MEMORY[0x1E696A578];
      v16 = ARKitCoreBundle(v15);
      v17 = [v16 localizedStringForKey:@"Geo tracking is not localized." value:&stru_1F4208A80 table:@"Localizable"];
      v46[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      *a2 = ARErrorWithCodeAndUserInfo(151, v18);
    }

    v25 = 0u;
    v27 = 0u;
  }

  result = v25;
  *position = v25;
  position[1] = v27;
  return result;
}

@end