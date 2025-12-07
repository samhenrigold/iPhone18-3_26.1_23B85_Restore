@interface ARWorldTrackingTechnique
+ (BOOL)isSupported;
+ (BOOL)supportsVideoResolution:(CGSize)resolution forDeviceType:(id)type;
- (ARWorldMap)serializeWorldMapWithReferenceOrigin:(double)origin;
- (ARWorldTrackingOptions)options;
- (ARWorldTrackingTechnique)init;
- (ARWorldTrackingTechnique)initWithOptions:(id)options;
- (BOOL)deterministicMode;
- (BOOL)isEqual:(id)equal;
- (BOOL)querySceneReconstructionOccupancyWithPoints:(id)points callback:(id)callback;
- (BOOL)reconfigurableFrom:(id)from;
- (__n128)_compensationMatrixForBravoSession;
- (__n128)_compensationMatrixForWidePlusUWSessionAndTrackingCameraID:(int)d;
- (__n128)setReconstructionFrameBundleToWorld:(__n128)world;
- (id).cxx_construct;
- (id)_featurePointDataFromSLAMState:(const CV3DSLAMStateContext *)state;
- (id)_fullDescription;
- (id)getObservers;
- (id)predictedResultDataAtTimestamp:(double)timestamp context:(id)context;
- (id)processData:(id)data;
- (id)raycast:(id)raycast;
- (id)raycastResultFrom:(CV3DHitTestResult *)from;
- (id)resultDataClasses;
- (id)serializeSurfaceData;
- (id)trackedRaycast:(id)raycast updateHandler:(id)handler;
- (int)_updatePoseData:(id)data forTimeStamp:(double)stamp updateTrackingState:(BOOL)state;
- (int)extentCheckFromConfiguration;
- (int64_t)_initializeSLAMAndPredictorHandle;
- (int64_t)_mappingStatusFromMapSize:(int)size keyframeQuality:(int)quality isTrackingMap:(BOOL)map timestamp:(double)timestamp;
- (int64_t)vioHandleState;
- (shared_ptr<PlaneDetectionSession>)planeDetectionSession;
- (shared_ptr<RaycastSession>)raycastSession;
- (unint64_t)_sessionType;
- (unint64_t)requiredSensorDataTypes;
- (unsigned)CV3DSLAMJasperPointCloudProjectorModeFromAVTimeOfFlightProjectorMode:(int64_t)mode;
- (unsigned)_trackingCameraID:(CV3DSLAMStateContext *)d;
- (void)_compensationMatrixForTrackingCameraID:(uint64_t)d;
- (void)_configureMeshPlaneHarmonization;
- (void)_didFailWithError:(id)error;
- (void)_handleCV3DError:(__CFError *)error withDescription:(id)description failTechnique:(BOOL)technique;
- (void)_handlePlaneDetectionCallback:(CV3DPlaneDetectionPlaneList *)callback;
- (void)_handleRaycastResultCallback:(CV3DRaycastResultMap *)callback;
- (void)_handleSLAMError:(id)error;
- (void)_handleSingleShotPlaneDetectionCallback:(CV3DPlaneDetectionSingleShotPlaneList *)callback;
- (void)_initializeSurfaceDetection:(const PlaneDetectionConfiguration *)detection;
- (void)_postProcessNonSynchronousDataForSceneUnderstanding:(id)understanding;
- (void)_pushWTResultDataForTimestamp:(double)timestamp;
- (void)_reconfigureSceneReconstruction;
- (void)_removeAllMeshAnchors;
- (void)_reportCollaborationData:(id)data type:(unsigned __int8)type metadata:(const void *)metadata;
- (void)_resetSurfaceDetection;
- (void)_saveExtrinsicsForBravoCamSessionFromImage:(id)image;
- (void)_saveExtrinsicsForWidePlusUWSessionFromImage:(id)image;
- (void)_saveExtrinsicsFromImage:(id)image;
- (void)_setupSceneReconstruction;
- (void)_startSceneReconstruction;
- (void)_updateTrackingState:(id)state slamState:(const CV3DSLAMStateContext *)slamState;
- (void)_updateVIOLineDetectionPolicy;
- (void)addObserver:(id)observer;
- (void)addReferenceAnchors:(id)anchors;
- (void)annotateDepth:(id)depth withSemantics:(id)semantics toTargetSemanticsImage:(__CVBuffer *)image targetConfidenceBuffer:(__CVBuffer *)buffer targetUncertaintyBuffer:(__CVBuffer *)uncertaintyBuffer useGpu:(BOOL)gpu;
- (void)clearMap;
- (void)dealloc;
- (void)didReceiveKeyframesUpdatedCallback:(CV3DReconKeyframeList *)callback;
- (void)didUpdateRaycastResult:(CV3DHitTestResults *)result;
- (void)invalidateAllRaycasts;
- (void)loadSurfaceData:(id)data;
- (void)mergeResultData:(id)data intoData:(id)intoData context:(id)context;
- (void)onMetadataCallback:(CV3DSLAMStateContext *)callback;
- (void)prepare:(BOOL)prepare;
- (void)prepareResultData:(id)data forContext:(id)context;
- (void)pushCollaborationData:(id)data;
- (void)pushToHitTestingDepth:(id)depth pose:(id)pose;
- (void)pushToSceneUnderstandingDepth:(id)depth segmentation:(id)segmentation pose:(id)pose;
- (void)pushToSceneUnderstandingSegmentation:(id)segmentation pose:(id)pose;
- (void)reconfigureFrom:(id)from;
- (void)removeObserver:(id)observer;
- (void)removePlanesByUUIDs:(id)ds;
- (void)removeReferenceAnchors:(id)anchors;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (void)resetSceneReconstruction;
- (void)sceneReconstructionHandler:(id)handler didFailWithError:(id)error;
- (void)sceneReconstructionHandler:(id)handler didOutputKeyframeList:(CV3DReconKeyframeList *)list withTimestamp:(double)timestamp;
- (void)sceneReconstructionHandler:(id)handler didOutputMeshList:(CV3DReconMeshList *)list withTimestamp:(double)timestamp;
- (void)setPlaneDetectionSession:(shared_ptr<PlaneDetectionSession>)session;
- (void)setRaycastSession:(shared_ptr<RaycastSession>)session;
- (void)setReferenceOriginTransform:(__n128)transform;
- (void)stopAllRaycasts;
- (void)stopRaycast:(id)raycast;
- (void)updateSurfaceDetectionConfiguration;
@end

@implementation ARWorldTrackingTechnique

+ (BOOL)isSupported
{
  if (+[ARWorldTrackingTechnique isSupported]::onceToken != -1)
  {
    +[ARWorldTrackingTechnique isSupported];
  }

  return +[ARWorldTrackingTechnique isSupported]::supported;
}

void __39__ARWorldTrackingTechnique_isSupported__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = IsCV3DVIOVideoModeSupported(1, a2);
  if (v2)
  {
    +[ARWorldTrackingTechnique isSupported]::supported = 1;
    return;
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
  }

  v3 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v4 = _ARLogGeneral(v2);
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v6 = "ARWorldTracking is not supported on this device. VIO is video mode supported returned false.";
      v7 = &v11;
      v8 = v5;
      v9 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v8, v9, v6, v7, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v10 = 0;
    v6 = "Error: ARWorldTracking is not supported on this device. VIO is video mode supported returned false.";
    v7 = &v10;
    v8 = v5;
    v9 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }
}

+ (BOOL)supportsVideoResolution:(CGSize)resolution forDeviceType:(id)type
{
  height = resolution.height;
  width = resolution.width;
  typeCopy = type;
  if ((atomic_load_explicit(_MergedGlobals_0, memory_order_acquire) & 1) == 0)
  {
    +[ARWorldTrackingTechnique supportsVideoResolution:forDeviceType:];
  }

  if ((atomic_load_explicit(byte_1EBF41CB8, memory_order_acquire) & 1) == 0)
  {
    +[ARWorldTrackingTechnique supportsVideoResolution:forDeviceType:];
  }

  if (+[ARWorldTrackingTechnique supportsVideoResolution:forDeviceType:]::onceToken != -1)
  {
    +[ARWorldTrackingTechnique supportsVideoResolution:forDeviceType:];
  }

  if (*MEMORY[0x1E6986950] == typeCopy && (*&xmmword_1EBF41CC0 == width ? (v7 = *(&xmmword_1EBF41CC0 + 1) == height) : (v7 = 0), v7) || (v8 = *MEMORY[0x1E6986948], *MEMORY[0x1E6986948] == typeCopy) && (*&qword_1EBF41CD0 == width ? (v9 = *algn_1EBF41CD8 == height) : (v9 = 0), v9))
  {
    v12 = 1;
  }

  else if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(typeCopy))
  {
    if (width == 640.0 && height == 480.0)
    {
      v11 = 0;
LABEL_42:
      v12 = IsCV3DVIOVideoModeSupported(v11, v10);
      goto LABEL_43;
    }

    if (width == 1280.0 && height == 720.0)
    {
      v11 = 1;
      goto LABEL_42;
    }

    if (width == 1440.0 && height == 1080.0)
    {
      v11 = 4;
      goto LABEL_42;
    }

    if (width == 1920.0 && height == 1080.0)
    {
      v11 = 2;
      goto LABEL_42;
    }

    v12 = 0;
    if (width == 1920.0 && height == 1440.0)
    {
      v11 = 3;
      goto LABEL_42;
    }
  }

  else if (v8 == typeCopy)
  {
    if (width == 640.0 && height == 480.0)
    {
      v11 = 5;
      goto LABEL_42;
    }

    v12 = 0;
    if (width == 1920.0 && height == 1440.0)
    {
      v11 = 6;
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_43:

  return v12;
}

void __66__ARWorldTrackingTechnique_supportsVideoResolution_forDeviceType___block_invoke()
{
  v0 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.calibrationParameters.back.wide"];
  if (v0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v1 = [v0 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageWidth];
      [v1 doubleValue];
      v3 = v2;

      v4 = [v0 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageHeight];
      [v4 doubleValue];
      v6 = v5;

      *&xmmword_1EBF41CC0 = v3;
      *(&xmmword_1EBF41CC0 + 1) = v6;
    }
  }

  v15 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.calibrationParameters.back.ultrawide"];

  v7 = v15;
  if (v15)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v7 = v15;
    if (isKindOfClass)
    {
      v9 = [v15 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageWidth];
      [v9 doubleValue];
      v11 = v10;

      v12 = [v15 objectForKeyedSubscript:ARWorldTrackingBackWideCalibrationParametersKeyImageHeight];
      [v12 doubleValue];
      v14 = v13;

      qword_1EBF41CD0 = v11;
      *algn_1EBF41CD8 = v14;
      v7 = v15;
    }
  }
}

- (ARWorldTrackingTechnique)init
{
  v3 = objc_opt_new();
  v4 = [(ARWorldTrackingTechnique *)self initWithOptions:v3];

  return v4;
}

- (ARWorldTrackingTechnique)initWithOptions:(id)options
{
  v120 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  v113.receiver = self;
  v113.super_class = ARWorldTrackingTechnique;
  v5 = [(ARImageBasedTechnique *)&v113 init];
  if (v5)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;

    v8 = dispatch_semaphore_create(1);
    observersSemaphore = v5->_observersSemaphore;
    v5->_observersSemaphore = v8;

    v10 = [optionsCopy copy];
    mutableOptions = v5->_mutableOptions;
    v5->_mutableOptions = v10;

    v12 = dispatch_semaphore_create(1);
    resultSemaphore = v5->_resultSemaphore;
    v5->_resultSemaphore = v12;

    v14 = dispatch_semaphore_create(1);
    sessionHandleStateSemaphore = v5->_sessionHandleStateSemaphore;
    v5->_sessionHandleStateSemaphore = v14;

    v5->_surfaceDetectionSessionLock._os_unfair_lock_opaque = 0;
    v5->_raycastSessionLock._os_unfair_lock_opaque = 0;
    if ([objc_opt_class() isSupported])
    {
      v5->_lastRelocalizationTimestamp = 0.0;
      v5->_relocalizationState = 0;
      v5->_wasEverInNominalState = 0;
      v16 = [MEMORY[0x1E695DFA8] set];
      anchorsReceived = v5->_anchorsReceived;
      v5->_anchorsReceived = v16;

      v18 = [MEMORY[0x1E695DFA8] set];
      participantAnchors = v5->_participantAnchors;
      v5->_participantAnchors = v18;

      v5->_participantAnchorsEnabled = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.participantAnchors"];
      v5->_resultLatency = 0.008;
      doubleValue = [ARKitUserDefaults numberForKey:@"com.apple.arkit.worldTracking.resultLatency"];
      v111 = doubleValue;
      if (doubleValue)
      {
        doubleValue = [(ARWorldTrackingTechnique *)doubleValue doubleValue];
        v5->_resultLatency = v21 * 0.001;
      }

      v22 = _ARLogTechnique(doubleValue);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = objc_opt_class();
        v24 = NSStringFromClass(v23);
        v25 = v5->_resultLatency * 1000.0;
        *buf = 138543874;
        v115 = v24;
        v116 = 2048;
        v117 = v5;
        v118 = 2048;
        *&v119 = v25;
        _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "%{public}@ <%p>: World tracking result latency %fms", buf, 0x20u);
      }

      v26 = CV3DGetVersionInfo();
      v27 = _ARLogTechnique(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544386;
        v115 = v29;
        v116 = 2048;
        v117 = v5;
        v118 = 1024;
        LODWORD(v119) = 0;
        WORD2(v119) = 1024;
        *(&v119 + 6) = 0;
        WORD5(v119) = 1024;
        HIDWORD(v119) = 0;
        _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: AppleCV3D version %u.%u.%u", buf, 0x28u);
      }

      v5->_sessionHandleState = 1;
      v31 = _ARLogTechnique(v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        predictorHandle = v5->_predictorHandle;
        *buf = 138543874;
        v115 = v33;
        v116 = 2048;
        v117 = v5;
        v118 = 2048;
        *&v119 = predictorHandle;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Created pose predictor handle: %p", buf, 0x20u);
      }

      imageSensorSettings = [(ARWorldTrackingOptions *)v5->_mutableOptions imageSensorSettings];
      videoFormat = [imageSensorSettings videoFormat];
      captureDeviceType = [videoFormat captureDeviceType];

      if (captureDeviceType)
      {
        v37 = [(ARWorldTrackingOptions *)v5->_mutableOptions cameraIdForCaptureDeviceType:?];
      }

      else
      {
        v37 = 0;
      }

      v5->_visualizationCameraID = v37;
      v39 = _ARLogTechnique(v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        visualizationCameraID = v5->_visualizationCameraID;
        *buf = 138544130;
        v115 = v41;
        v116 = 2048;
        v117 = v5;
        v118 = 1024;
        LODWORD(v119) = visualizationCameraID;
        WORD2(v119) = 2112;
        *(&v119 + 6) = captureDeviceType;
        _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking visualization camera identifier: %u, visualization capture device type: %@", buf, 0x26u);
      }

      v43 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.fixedIntrinsics"];
      v5->_useFixedIntrinsics = v43;
      v44 = _ARLogTechnique(v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        useFixedIntrinsics = v5->_useFixedIntrinsics;
        *buf = 138543874;
        v115 = v46;
        if (useFixedIntrinsics)
        {
          v48 = @"fixed";
        }

        else
        {
          v48 = @"varying";
        }

        v116 = 2048;
        v117 = v5;
        v118 = 2112;
        *&v119 = v48;
        _os_log_impl(&dword_1C241C000, v44, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking will use %@ intrinsics", buf, 0x20u);
      }

      v49 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.pushVisionDataIntrinsics"];
      v5->_shouldPushVisionDataIntrinsics = v49;
      v50 = _ARLogTechnique(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        v51 = objc_opt_class();
        v52 = NSStringFromClass(v51);
        shouldPushVisionDataIntrinsics = v5->_shouldPushVisionDataIntrinsics;
        *buf = 138543874;
        v115 = v52;
        if (shouldPushVisionDataIntrinsics)
        {
          v54 = &stru_1F4208A80;
        }

        else
        {
          v54 = @"not ";
        }

        v116 = 2048;
        v117 = v5;
        v118 = 2112;
        *&v119 = v54;
        _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking will %@push vision data intrinsics", buf, 0x20u);
      }

      v55 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.useFullResolutionVisionDataIntrinsics"];
      v5->_shouldUseFullResolutionVisionDataIntrinsics = v55;
      v56 = _ARLogTechnique(v55);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
      {
        v57 = objc_opt_class();
        v58 = NSStringFromClass(v57);
        shouldUseFullResolutionVisionDataIntrinsics = v5->_shouldUseFullResolutionVisionDataIntrinsics;
        *buf = 138543874;
        v115 = v58;
        if (shouldUseFullResolutionVisionDataIntrinsics)
        {
          v60 = &stru_1F4208A80;
        }

        else
        {
          v60 = @"not ";
        }

        v116 = 2048;
        v117 = v5;
        v118 = 2112;
        *&v119 = v60;
        _os_log_impl(&dword_1C241C000, v56, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking will %@push scale vision intrinsics for full resolution", buf, 0x20u);
      }

      [ARKitUserDefaults doubleForKey:@"com.apple.arkit.worldtracking.minVergenceAngle"];
      v62 = v61;
      v5->_minVergenceAngleCosine = cos(v61 * 3.14159265 / 180.0);
      v64 = _ARLogTechnique(v63);
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
      {
        v65 = objc_opt_class();
        v66 = NSStringFromClass(v65);
        *buf = 138543874;
        v115 = v66;
        v116 = 2048;
        v117 = v5;
        v118 = 2048;
        *&v119 = v62;
        _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking will use %.03f° as minimum vergence angle threshold", buf, 0x20u);
      }

      v67 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.poseGraphUpdates"];
      v5->_allowPoseGraphUpdates = v67;
      v68 = _ARLogTechnique(v67);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
      {
        v69 = objc_opt_class();
        v70 = NSStringFromClass(v69);
        allowPoseGraphUpdates = v5->_allowPoseGraphUpdates;
        *buf = 138543874;
        v115 = v70;
        if (allowPoseGraphUpdates)
        {
          v72 = @"allowed";
        }

        else
        {
          v72 = @"disallowed";
        }

        v116 = 2048;
        v117 = v5;
        v118 = 2112;
        *&v119 = v72;
        _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking pose graph update custom setting: %@", buf, 0x20u);
      }

      v73 = v5->_mutableOptions;
      v74 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.planeEstimation.minDetectionCount"];
      v75 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.planeEstimation.minVergenceAngle"];
      v76 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.planeEstimation.lineFeaturesAlwaysOn"];
      deterministicMode = [(ARWorldTrackingTechnique *)v5 deterministicMode];
      v78 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.planeEstimation.detectionMethod"];
      options = v5->_surfaceDetectionParametrization.options;
      v5->_surfaceDetectionParametrization.options = v73;

      detectionCountUserDefaultValue = v5->_surfaceDetectionParametrization.detectionCountUserDefaultValue;
      v5->_surfaceDetectionParametrization.detectionCountUserDefaultValue = v74;

      minVergenceAngleDegreesUserDefaultValue = v5->_surfaceDetectionParametrization.minVergenceAngleDegreesUserDefaultValue;
      v5->_surfaceDetectionParametrization.minVergenceAngleDegreesUserDefaultValue = v75;

      lineFeaturesAlwaysOnUserDefaultValue = v5->_surfaceDetectionParametrization.lineFeaturesAlwaysOnUserDefaultValue;
      v5->_surfaceDetectionParametrization.lineFeaturesAlwaysOnUserDefaultValue = v76;

      v5->_surfaceDetectionParametrization.var0 = deterministicMode;
      detectionPolicyString = v5->_surfaceDetectionParametrization.detectionPolicyString;
      v5->_surfaceDetectionParametrization.detectionPolicyString = v78;

      v5->_enableMLCMRelocalization = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.enableMLCMRelocalization"];
      mutableOptions = [(ARWorldTrackingTechnique *)v5 mutableOptions];
      slamConfiguration = [mutableOptions slamConfiguration];
      v86 = slamConfiguration;
      [slamConfiguration UTF8String];
      v87 = CV3DSLAMConfigPresetFromString() == 26;

      [(ARWorldTrackingTechnique *)v5 setIsMultiSessionMode:v5->_enableMLCMRelocalization && v87];
      v88 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.worldTracking.resultData", 4294967285);
      resultDataQueue = v5->_resultDataQueue;
      v5->_resultDataQueue = v88;

      array = [MEMORY[0x1E695DF70] array];
      pendingRawSceneUnderstandingResults = v5->_pendingRawSceneUnderstandingResults;
      v5->_pendingRawSceneUnderstandingResults = array;

      v5->_pendingRawSceneUnderstandingResultsLock._os_unfair_lock_opaque = 0;
      if (ARDeviceSupportsJasper(v92, v93))
      {
        array2 = [MEMORY[0x1E695DF70] array];
        latestSpatialMappingData = v5->_latestSpatialMappingData;
        v5->_latestSpatialMappingData = array2;

        v5->_latestSpatialMappingDataLock._os_unfair_lock_opaque = 0;
        v96 = MTLCreateSystemDefaultDevice();
        sharedMetalDevice = v5->_sharedMetalDevice;
        v5->_sharedMetalDevice = v96;

        newCommandQueue = [(MTLDevice *)v5->_sharedMetalDevice newCommandQueue];
        spatialMappingCommandQueue = v5->_spatialMappingCommandQueue;
        v5->_spatialMappingCommandQueue = newCommandQueue;

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        spatialMappingPointClouds = v5->_spatialMappingPointClouds;
        v5->_spatialMappingPointClouds = dictionary;

        v5->_spatialMappingPointCloudsLock._os_unfair_lock_opaque = 0;
        v103 = ARKitCoreBundle(v102);
        v104 = [v103 URLForResource:@"default" withExtension:@"metallib"];

        v105 = [(MTLDevice *)v5->_sharedMetalDevice newLibraryWithURL:v104 error:0];
        v106 = [v105 newFunctionWithName:@"annotateDepthData"];
        annotateDepthDataKernelFunction = v5->_annotateDepthDataKernelFunction;
        v5->_annotateDepthDataKernelFunction = v106;

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        spatialMappingResultDataWaitingForSemantics = v5->_spatialMappingResultDataWaitingForSemantics;
        v5->_spatialMappingResultDataWaitingForSemantics = dictionary2;
      }

      v38 = v111;
    }

    else
    {
      v38 = v5;
      v5 = 0;
    }
  }

  return v5;
}

- (ARWorldTrackingOptions)options
{
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  v3 = [mutableOptions copy];

  return v3;
}

- (int64_t)vioHandleState
{
  dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  sessionHandleState = self->_sessionHandleState;
  dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
  return sessionHandleState;
}

- (void)dealloc
{
  v35 = *MEMORY[0x1E69E9840];
  depth16grayBufferPool = self->_depth16grayBufferPool;
  if (depth16grayBufferPool)
  {
    CVPixelBufferPoolRelease(depth16grayBufferPool);
    self->_depth16grayBufferPool = 0;
  }

  confidence8BufferPool = self->_confidence8BufferPool;
  if (confidence8BufferPool)
  {
    CVPixelBufferPoolRelease(confidence8BufferPool);
    self->_confidence8BufferPool = 0;
  }

  poolForSemanticsAnnotatedDepth = self->_poolForSemanticsAnnotatedDepth;
  if (poolForSemanticsAnnotatedDepth)
  {
    CVPixelBufferPoolRelease(poolForSemanticsAnnotatedDepth);
    self->_poolForSemanticsAnnotatedDepth = 0;
  }

  poolForConfidenceAnnotatedDepth = self->_poolForConfidenceAnnotatedDepth;
  if (poolForConfidenceAnnotatedDepth)
  {
    CVPixelBufferPoolRelease(poolForConfidenceAnnotatedDepth);
    self->_poolForConfidenceAnnotatedDepth = 0;
  }

  poolForUncertaintyAnnotatedDepth = self->_poolForUncertaintyAnnotatedDepth;
  if (poolForUncertaintyAnnotatedDepth)
  {
    CVPixelBufferPoolRelease(poolForUncertaintyAnnotatedDepth);
    self->_poolForUncertaintyAnnotatedDepth = 0;
  }

  poolForUncertaintyMaskedSemanticsDepth = self->_poolForUncertaintyMaskedSemanticsDepth;
  if (poolForUncertaintyMaskedSemanticsDepth)
  {
    CVPixelBufferPoolRelease(poolForUncertaintyMaskedSemanticsDepth);
    self->_poolForUncertaintyMaskedSemanticsDepth = 0;
  }

  os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
  cntrl = self->_planeDetectionSession.__cntrl_;
  self->_planeDetectionSession.__ptr_ = 0;
  self->_planeDetectionSession.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
  os_unfair_lock_lock(&self->_raycastSessionLock);
  v10 = self->_raycastSession.__cntrl_;
  self->_raycastSession.__ptr_ = 0;
  self->_raycastSession.__cntrl_ = 0;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  os_unfair_lock_unlock(&self->_raycastSessionLock);
  v11 = dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_slamSessionHandle)
  {
    v12 = _ARLogTechnique(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      slamSessionHandle = self->_slamSessionHandle;
      *buf = 138543874;
      v30 = v14;
      v31 = 2048;
      selfCopy4 = self;
      v33 = 2048;
      v34 = slamSessionHandle;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing SLAM handle: %p …", buf, 0x20u);
    }

    CV3DSLAMSessionWait();
    v16 = CV3DSLAMSessionRelease();
    self->_slamSessionHandle = 0;
    self->_sessionHandleState = 0;
    v17 = _ARLogTechnique(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = objc_opt_class();
      v19 = NSStringFromClass(v18);
      *buf = 138543618;
      v30 = v19;
      v31 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1C241C000, v17, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: SLAM handle released", buf, 0x16u);
    }
  }

  if (self->_predictorHandle)
  {
    v20 = _ARLogTechnique(v11);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      predictorHandle = self->_predictorHandle;
      *buf = 138543874;
      v30 = v22;
      v31 = 2048;
      selfCopy4 = self;
      v33 = 2048;
      v34 = predictorHandle;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing predictor handle: %p …", buf, 0x20u);
    }

    v24 = CV3DPosePredictionRelease();
    self->_predictorHandle = 0;
    v25 = _ARLogTechnique(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      *buf = 138543618;
      v30 = v27;
      v31 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Predictor handle released", buf, 0x16u);
    }
  }

  dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
  v28.receiver = self;
  v28.super_class = ARWorldTrackingTechnique;
  [(ARWorldTrackingTechnique *)&v28 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v10.receiver = self;
  v10.super_class = ARWorldTrackingTechnique;
  if ([(ARTechnique *)&v10 isEqual:equalCopy])
  {
    v5 = equalCopy;
    mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
    mutableOptions2 = [v5 mutableOptions];
    v8 = [mutableOptions isEqual:mutableOptions2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_fullDescription
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = ARWorldTrackingTechnique;
  _fullDescription = [(ARImageBasedTechnique *)&v10 _fullDescription];
  v5 = [v3 stringWithFormat:@"%@\n", _fullDescription];

  if (dispatch_semaphore_wait(self->_resultSemaphore, 0))
  {
    v6 = @"Busy";
  }

  else
  {
    dispatch_semaphore_signal(self->_resultSemaphore);
    v6 = @"NotBusy";
  }

  [v5 appendFormat:@"\tResult is %@\n", v6];
  if (dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0))
  {
    v7 = @"Busy";
  }

  else
  {
    dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
    v7 = @"NotBusy";
  }

  [v5 appendFormat:@"\tState is %@\n", v7];
  [v5 appendFormat:@"\tslamSessionHandle state(%li)\n", self->_sessionHandleState];
  [v5 appendFormat:@"\tpredictorHandle state(%li)\n", self->_predictorHandle];
  [v5 appendFormat:@"\tresult latency(%lf)\n", *&self->_resultLatency];
  [v5 appendFormat:@"\tkeyframe count(%d)\n", self->_previousKeyframeCount];
  if (self->_hasQualityKeyframe)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  [v5 appendFormat:@"\tQualityKeyframe: %@\n", v8];
  [v5 appendFormat:@"\tQualityKeyframeTimestamp(%lf)\n", *&self->_lastQualityKeyframeTimestamp];
  [v5 appendFormat:@"\tReinitializationAttempts(%i)\n", self->_reinitializationAttempts];
  [v5 appendFormat:@"\tReinitializationAttemptsAtInitialization(%li)\n", self->_reinitializationAttemptsAtInitialization];
  [v5 appendFormat:@"\tLastRelocalizationTimestamp(%lf)\n", *&self->_lastRelocalizationTimestamp];
  [v5 appendFormat:@"\tOriginTimestamp(%lf)\n", *&self->_originTimestamp];
  [v5 appendFormat:@"\tErrorData: %@\n", self->_errorData];

  return v5;
}

- (unint64_t)requiredSensorDataTypes
{
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  slamConfiguration = [mutableOptions slamConfiguration];
  if ([slamConfiguration isEqualToString:@"CoreLocationIntegration"])
  {

    return 71;
  }

  mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
  recordForGeoTracking = [mutableOptions2 recordForGeoTracking];

  if (recordForGeoTracking)
  {
    return 71;
  }

  return 7;
}

- (BOOL)deterministicMode
{
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  deterministicMode = [mutableOptions deterministicMode];

  return deterministicMode;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, v5, objc_opt_class(), 0}];
}

- (void)_handleCV3DError:(__CFError *)error withDescription:(id)description failTechnique:(BOOL)technique
{
  techniqueCopy = technique;
  v27 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  errorCopy = error;
  v10 = errorCopy;
  if (errorCopy)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
    }

    v11 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v12 = _ARLogTechnique(errorCopy);
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v19 = 138544130;
        v20 = v15;
        v21 = 2048;
        selfCopy2 = self;
        v23 = 2112;
        v24 = descriptionCopy;
        v25 = 2112;
        v26 = v10;
        _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ => %@", &v19, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v19 = 138544130;
      v20 = v17;
      v21 = 2048;
      selfCopy2 = self;
      v23 = 2112;
      v24 = descriptionCopy;
      v25 = 2112;
      v26 = v10;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ => %@", &v19, 0x2Au);
    }

    if (techniqueCopy)
    {
      v18 = ARErrorWithCodeAndUserInfo(200, 0);
      [(ARWorldTrackingTechnique *)self _didFailWithError:v18];
    }
  }
}

- (BOOL)reconfigurableFrom:(id)from
{
  v31 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (-[ARWorldTrackingTechnique vioHandleState](self, "vioHandleState") == 4 || ![fromCopy isMemberOfClass:objc_opt_class()])
  {
    LOBYTE(v8) = 0;
  }

  else
  {
    options = [fromCopy options];
    mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
    v7 = [mutableOptions isEqual:options];
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      imageSensorSettings = [mutableOptions imageSensorSettings];
      imageSensorSettings2 = [options imageSensorSettings];
      v11 = [imageSensorSettings isEqual:imageSensorSettings2];

      if ((v11 & 1) == 0)
      {
        imageSensorSettings3 = [mutableOptions imageSensorSettings];
        autoFocusEnabled = [imageSensorSettings3 autoFocusEnabled];
        imageSensorSettings4 = [options imageSensorSettings];
        [imageSensorSettings4 setAutoFocusEnabled:autoFocusEnabled];
      }

      [options setPlaneDetection:{objc_msgSend(mutableOptions, "planeDetection")}];
      [mutableOptions minVergenceAngle];
      [options setMinVergenceAngle:?];
      [options setMlModelEnabled:{objc_msgSend(mutableOptions, "mlModelEnabled")}];
      [options setSceneReconstruction:{objc_msgSend(mutableOptions, "sceneReconstruction")}];
      sceneReconstructionOptions = [mutableOptions sceneReconstructionOptions];
      [options setSceneReconstructionOptions:sceneReconstructionOptions];

      [options setDepthBuffersWillBeProvided:{objc_msgSend(mutableOptions, "depthBuffersWillBeProvided")}];
      [options setPlaneBundleAdjustmentEnabled:{objc_msgSend(mutableOptions, "planeBundleAdjustmentEnabled")}];
      singleShotPlaneCallback = [mutableOptions singleShotPlaneCallback];
      [options setSingleShotPlaneCallback:singleShotPlaneCallback];

      trackedPlaneCallback = [mutableOptions trackedPlaneCallback];
      [options setTrackedPlaneCallback:trackedPlaneCallback];

      planeDetectionVIOPoseCallback = [mutableOptions planeDetectionVIOPoseCallback];
      [options setPlaneDetectionVIOPoseCallback:planeDetectionVIOPoseCallback];

      planeDetectionPoseUpdateCallback = [mutableOptions planeDetectionPoseUpdateCallback];
      [options setPlaneDetectionPoseUpdateCallback:planeDetectionPoseUpdateCallback];

      v7 = [mutableOptions isEqual:options];
      v8 = v7;
    }

    v20 = _ARLogTechnique(v7);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      v23 = @"not ";
      v25 = 138543874;
      v26 = v22;
      if (v8)
      {
        v23 = &stru_1F4208A80;
      }

      v27 = 2048;
      selfCopy = self;
      v29 = 2112;
      v30 = v23;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: is %@reconfigurable", &v25, 0x20u);
    }
  }

  return v8;
}

- (void)reconfigureFrom:(id)from
{
  v30 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  mutableOptions2 = [fromCopy mutableOptions];
  v7 = [mutableOptions isEqual:mutableOptions2];

  if ((v7 & 1) == 0)
  {
    mutableOptions3 = [fromCopy mutableOptions];
    if ([mutableOptions3 depthBuffersWillBeProvided])
    {
    }

    else
    {
      ptr = self->_raycastSession.__ptr_;

      if (ptr)
      {
        RaycastSession::InvalidateDenseFrame(self->_raycastSession.__ptr_);
      }
    }

    options = [fromCopy options];
    [(ARWorldTrackingTechnique *)self setMutableOptions:options];

    objc_storeStrong(&self->_surfaceDetectionParametrization.options, *(fromCopy + 42));
    objc_storeStrong(&self->_surfaceDetectionParametrization.detectionCountUserDefaultValue, *(fromCopy + 43));
    objc_storeStrong(&self->_surfaceDetectionParametrization.minVergenceAngleDegreesUserDefaultValue, *(fromCopy + 44));
    objc_storeStrong(&self->_surfaceDetectionParametrization.lineFeaturesAlwaysOnUserDefaultValue, *(fromCopy + 45));
    self->_surfaceDetectionParametrization.var0 = *(fromCopy + 368);
    objc_storeStrong(&self->_surfaceDetectionParametrization.detectionPolicyString, *(fromCopy + 47));
    v11 = self->_planeDetectionSession.__ptr_;
    if (v11)
    {
      v12 = PlaneDetectionSession::DidParametersOrConfigurationChanged(v11, &self->_surfaceDetectionParametrization);
      v13 = v12;
      v14 = ((v12 & 0x100) == 0) | v12;
    }

    else
    {
      v13 = 0;
      v14 = 1;
    }

    vioHandleState = [(ARWorldTrackingTechnique *)self vioHandleState];
    if (vioHandleState == 3)
    {
      if (v13)
      {
        vioHandleState = [(ARWorldTrackingTechnique *)self _initializeSurfaceDetection:&self->_surfaceDetectionParametrization];
      }

      else if ((v14 & 1) == 0)
      {
        vioHandleState = [(ARWorldTrackingTechnique *)self updateSurfaceDetectionConfiguration];
      }

      v16 = _ARLogTechnique(vioHandleState);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        mutableOptions4 = [(ARWorldTrackingTechnique *)self mutableOptions];
        v20 = NSStringFromARPlaneDetection([mutableOptions4 planeDetection]);
        v24 = 138543874;
        v25 = v18;
        v26 = 2048;
        selfCopy = self;
        v28 = 2112;
        v29 = v20;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: reconfigured for detection type(s): %@", &v24, 0x20u);
      }

      mutableOptions5 = [(ARWorldTrackingTechnique *)self mutableOptions];
      v22 = [mutableOptions5 sceneReconstruction] == 0;

      if (v22)
      {
        sceneReconstructionHandler = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
        [sceneReconstructionHandler pause];
      }

      else
      {
        [(ARWorldTrackingTechnique *)self _startSceneReconstruction];
      }
    }
  }
}

- (void)updateSurfaceDetectionConfiguration
{
  v17 = *MEMORY[0x1E69E9840];
  ptr = self->_planeDetectionSession.__ptr_;
  if (ptr)
  {
    updated = PlaneDetectionSession::UpdateConfiguration(ptr, &self->_surfaceDetectionParametrization);
    if (updated)
    {

      [(ARWorldTrackingTechnique *)self _updateVIOLineDetectionPolicy];
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
      }

      v5 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v6 = _ARLogTechnique(updated);
      v7 = v6;
      if (v5 == 1)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          v8 = objc_opt_class();
          v9 = NSStringFromClass(v8);
          v13 = 138543618;
          v14 = v9;
          v15 = 2048;
          selfCopy2 = self;
          _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error updating surface detection configuration", &v13, 0x16u);
        }
      }

      else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v13 = 138543618;
        v14 = v11;
        v15 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error updating surface detection configuration", &v13, 0x16u);
      }

      v12 = ARErrorWithCodeAndUserInfo(200, 0);
      [(ARWorldTrackingTechnique *)self _didFailWithError:v12];
    }
  }
}

- (void)prepare:(BOOL)prepare
{
  v26 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  getObservers = [(ARWorldTrackingTechnique *)self getObservers];
  dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (self->_sessionHandleState == 1)
  {
    self->_sessionHandleState = 2;
    dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v4 = getObservers;
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v5)
    {
      v6 = *v21;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v20 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v8 technique:self didChangeState:2];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v5);
    }

    _initializeSLAMAndPredictorHandle = [(ARWorldTrackingTechnique *)self _initializeSLAMAndPredictorHandle];
    if (_initializeSLAMAndPredictorHandle == 3)
    {
      [(ARWorldTrackingTechnique *)self _initializeSurfaceDetection:&self->_surfaceDetectionParametrization];
    }

    dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    self->_sessionHandleState = _initializeSLAMAndPredictorHandle;
    dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
    if (_initializeSLAMAndPredictorHandle != 2)
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v10 = v4;
      v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v11)
      {
        v12 = *v17;
        do
        {
          for (j = 0; j != v11; ++j)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v16 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v14 technique:self didChangeState:_initializeSLAMAndPredictorHandle];
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
        }

        while (v11);
      }
    }
  }

  else
  {
    dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
  }

  kdebug_trace();
}

- (id)processData:(id)data
{
  v209 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v194.receiver = self;
  v194.super_class = ARWorldTrackingTechnique;
  v8 = [(ARImageBasedTechnique *)&v194 processData:dataCopy];
  if ([(ARWorldTrackingTechnique *)self vioHandleState]== 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = dataCopy;
      self->_lastCaptureLens = [v9 captureLens];
      mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
      alwaysUsePrimaryCameraForTracking = [mutableOptions alwaysUsePrimaryCameraForTracking];
      if (alwaysUsePrimaryCameraForTracking)
      {
        mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
        imageSensorSettingsForUltraWide = [mutableOptions2 imageSensorSettingsForUltraWide];
        if (imageSensorSettingsForUltraWide)
        {
          cameraType = [v9 cameraType];
          if (ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(cameraType))
          {

LABEL_39:
            goto LABEL_128;
          }

          v28 = 1;
        }

        else
        {
          v28 = 0;
        }
      }

      else
      {
        v28 = 0;
      }

      isHighResolution = [v9 isHighResolution];
      if (v28)
      {

        if ((alwaysUsePrimaryCameraForTracking & 1) == 0)
        {
LABEL_35:

LABEL_38:
          if (isHighResolution)
          {
            goto LABEL_39;
          }

          [(ARWorldTrackingTechnique *)self _saveExtrinsicsFromImage:v9];
          objc_msgSend_timestamp(v9);
          kdebug_trace();
          mutableOptions3 = [(ARWorldTrackingTechnique *)self mutableOptions];
          cameraType2 = [v9 cameraType];
          [mutableOptions3 cameraIdForCaptureDeviceType:cameraType2];

          objc_msgSend_timestamp(v9);
          [v9 visionData];
          kdebug_trace();
          v208 = 0;
          v206 = 0u;
          v207 = 0u;
          memset(buf, 0, sizeof(buf));
          [v9 cameraIntrinsics];
          ARMatrix3x3RowMajorArray(buf, v42, v43, v44);
          v204 = 0;
          v202 = 0u;
          v203 = 0u;
          v200 = 0u;
          v201 = 0u;
          v45 = CMGetAttachment([v9 visionData], @"VisionDataCameraIntrinsicMatrix", 0);
          v47 = v45;
          if (v45 && self->_shouldPushVisionDataIntrinsics)
          {
            *v48.i64 = ARMatrix3x3FromNSData(v45);
            v164 = v48;
            v167 = v49;
            v48.i32[3] = 0;
            v49.i32[3] = 0;
            v178 = v49;
            v181 = v48;
            v171 = v50;
            v50.i32[3] = 0;
            v174 = v50;
            if (self->_shouldUseFullResolutionVisionDataIntrinsics)
            {
              mutableOptions4 = [(ARWorldTrackingTechnique *)self mutableOptions];
              imageSensorSettings = [mutableOptions4 imageSensorSettings];
              visionDataOutputParameters = [imageSensorSettings visionDataOutputParameters];

              if (visionDataOutputParameters || (-[ARWorldTrackingTechnique mutableOptions](self, "mutableOptions"), v54 = objc_claimAutoreleasedReturnValue(), [v54 imageSensorSettingsForUltraWide], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "visionDataOutputParameters"), visionDataOutputParameters = objc_claimAutoreleasedReturnValue(), v55, v54, visionDataOutputParameters))
              {
                v56 = [visionDataOutputParameters valueForKey:*MEMORY[0x1E698BDC8]];
                [v56 floatValue];
                v175 = v57;

                *v58.i32 = v175 * *v164.i32;
                v58.i32[1] = v164.i32[1];
                v58.i64[1] = v164.u32[2];
                v59.i64[0] = __PAIR64__(COERCE_UNSIGNED_INT(vmuls_lane_f32(v175, *v167.i8, 1)), v167.u32[0]);
                v59.i64[1] = v167.u32[2];
                v178 = v59;
                v181 = v58;
                v60.n128_u64[0] = vmulq_n_f32(v171, v175).u64[0];
                v60.n128_u64[1] = v171.u32[2];
                v174 = v60;
              }
            }

            v46 = ARMatrix3x3RowMajorArray(&v200, v181, v178, v174);
          }

          [v9 ISO];
          v193 = v61;
          objc_msgSend_exposureDuration(v9);
          v192 = v62;
          [v9 temperature];
          v191 = v63;
          kdebug_trace();
          kdebug_trace();
          v190 = 0;
          [v9 pixelBuffer];
          objc_msgSend_timestamp(v9);
          v64 = CV3DSLAMCameraFrameCreate();
          v186[0] = MEMORY[0x1E69E9820];
          v186[1] = 3221225472;
          v187 = __40__ARWorldTrackingTechnique_processData___block_invoke;
          v188 = &__block_descriptor_40_e5_v8__0l;
          v189 = v64;
          if (!v64)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v65 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v66 = _ARLogTechnique(v64);
            v67 = v66;
            if (v65 == 1)
            {
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                v68 = objc_opt_class();
                v69 = NSStringFromClass(v68);
                *v195 = 138543874;
                *&v195[4] = v69;
                v196 = 2048;
                selfCopy6 = self;
                v198 = 2112;
                v199 = v190;
                _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not create camera frame: %@", v195, 0x20u);
              }
            }

            else if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
            {
              v89 = objc_opt_class();
              v90 = NSStringFromClass(v89);
              *v195 = 138543874;
              *&v195[4] = v90;
              v196 = 2048;
              selfCopy6 = self;
              v198 = 2112;
              v199 = v190;
              _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not create camera frame: %@", v195, 0x20u);
            }

            v91 = ARErrorWithCodeAndUserInfo(200, 0);
            [(ARWorldTrackingTechnique *)self _didFailWithError:v91];
          }

          if ([v9 visionData])
          {
            kdebug_trace();
            [v9 visionData];
            v92 = CV3DSLAMCameraFrameAddHWFPWithIntrinsics();
            if ((v92 & 1) == 0)
            {
              if (ARShouldUseLogTypeError(void)::onceToken != -1)
              {
                [ARWorldTrackingTechnique processData:];
              }

              v93 = ARShouldUseLogTypeError(void)::internalOSVersion;
              v94 = _ARLogTechnique(v92);
              v95 = v94;
              if (v93 == 1)
              {
                if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
                {
                  v96 = objc_opt_class();
                  v97 = NSStringFromClass(v96);
                  *v195 = 138543874;
                  *&v195[4] = v97;
                  v196 = 2048;
                  selfCopy6 = self;
                  v198 = 2112;
                  v199 = v190;
                  _os_log_impl(&dword_1C241C000, v95, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not add HWFP: %@", v195, 0x20u);
                }
              }

              else if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
              {
                v98 = objc_opt_class();
                v99 = NSStringFromClass(v98);
                *v195 = 138543874;
                *&v195[4] = v99;
                v196 = 2048;
                selfCopy6 = self;
                v198 = 2112;
                v199 = v190;
                _os_log_impl(&dword_1C241C000, v95, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not add HWFP: %@", v195, 0x20u);
              }

              v100 = ARErrorWithCodeAndUserInfo(200, 0);
              [(ARWorldTrackingTechnique *)self _didFailWithError:v100];
            }
          }

          v185 = 0;
          v101 = CV3DSLAMSessionPushCamera();
          if ((v101 & 1) == 0)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v102 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v103 = _ARLogTechnique(v101);
            v104 = v103;
            if (v102 == 1)
            {
              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
              {
                v105 = objc_opt_class();
                v106 = NSStringFromClass(v105);
                *v195 = 138543874;
                *&v195[4] = v106;
                v196 = 2048;
                selfCopy6 = self;
                v198 = 2112;
                v199 = v185;
                _os_log_impl(&dword_1C241C000, v104, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Pushing camera failed: %@", v195, 0x20u);
              }
            }

            else if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
            {
              v107 = objc_opt_class();
              v108 = NSStringFromClass(v107);
              *v195 = 138543874;
              *&v195[4] = v108;
              v196 = 2048;
              selfCopy6 = self;
              v198 = 2112;
              v199 = v185;
              _os_log_impl(&dword_1C241C000, v104, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Pushing camera failed: %@", v195, 0x20u);
            }

            v109 = ARErrorWithCodeAndUserInfo(200, 0);
            [(ARWorldTrackingTechnique *)self _didFailWithError:v109];
          }

          kdebug_trace();
          v187(v186);

          goto LABEL_125;
        }
      }

      else if (!alwaysUsePrimaryCameraForTracking)
      {
        goto LABEL_35;
      }

      goto LABEL_38;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = dataCopy;
      v200.f64[0] = 0.0;
      [v12 acceleration];
      [v12 acceleration];
      [v12 acceleration];
      objc_msgSend_timestamp(v12);
      v13 = CV3DSLAMSessionPushAccel();
      if ((v13 & 1) == 0)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
        }

        v14 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v15 = _ARLogTechnique(v13);
        v16 = v15;
        if (v14 == 1)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = v200.f64[0];
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v18;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = self;
            HIWORD(buf[1].f64[0]) = 2112;
            buf[1].f64[1] = v200.f64[0];
            _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error pushing accelometer data: %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v73 = objc_opt_class();
          v74 = NSStringFromClass(v73);
          v75 = v200.f64[0];
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v74;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          buf[1].f64[1] = v200.f64[0];
          _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error pushing accelometer data: %@", buf, 0x20u);
        }

        v76 = ARErrorWithCodeAndUserInfo(200, 0);
        [(ARWorldTrackingTechnique *)self _didFailWithError:v76];
      }

      [v12 acceleration];
      [v12 acceleration];
      [v12 acceleration];
      objc_msgSend_timestamp(v12);
      v77 = CV3DPosePredictionPushAccel();
      v78 = v77;
      if (!v77)
      {
        goto LABEL_125;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v79 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v80 = _ARLogTechnique(v77);
      v81 = v80;
      if (v79 == 1)
      {
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          v84 = NSStringFromCV3DPosePredictionReturn(v78);
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v83;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          *&buf[1].f64[1] = v84;
          _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error pushing accelometer data to predictor: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v85 = objc_opt_class();
        v86 = NSStringFromClass(v85);
        v87 = NSStringFromCV3DPosePredictionReturn(v78);
        LODWORD(buf[0].f64[0]) = 138543874;
        *(buf[0].f64 + 4) = v86;
        WORD2(buf[0].f64[1]) = 2048;
        *(&buf[0].f64[1] + 6) = self;
        HIWORD(buf[1].f64[0]) = 2112;
        *&buf[1].f64[1] = v87;
        _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error pushing accelometer data to predictor: %@", buf, 0x20u);
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v29 = dataCopy;
          pointCloud = [v29 pointCloud];
          CV3DSLAMJasperPointCloudCreateFromADPointCloud();

          -[ARWorldTrackingTechnique CV3DSLAMJasperPointCloudProjectorModeFromAVTimeOfFlightProjectorMode:](self, "CV3DSLAMJasperPointCloudProjectorModeFromAVTimeOfFlightProjectorMode:", [v29 projectorMode]);
          v31 = CV3DSLAMJasperPointCloudSetProjectorMode();
          v32 = v31;
          if (v31)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v33 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v34 = _ARLogTechnique(v31);
            v35 = v34;
            if (v33 == 1)
            {
              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                v36 = objc_opt_class();
                v37 = NSStringFromClass(v36);
                v38 = NSStringFromCV3DSLAMJasperPointCloudReturn(v32);
                LODWORD(buf[0].f64[0]) = 138543874;
                *(buf[0].f64 + 4) = v37;
                WORD2(buf[0].f64[1]) = 2048;
                *(&buf[0].f64[1] + 6) = self;
                HIWORD(buf[1].f64[0]) = 2112;
                *&buf[1].f64[1] = v38;
                _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error setting jasper projector mode: %@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v124 = objc_opt_class();
              v125 = NSStringFromClass(v124);
              v126 = NSStringFromCV3DSLAMJasperPointCloudReturn(v32);
              LODWORD(buf[0].f64[0]) = 138543874;
              *(buf[0].f64 + 4) = v125;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = self;
              HIWORD(buf[1].f64[0]) = 2112;
              *&buf[1].f64[1] = v126;
              _os_log_impl(&dword_1C241C000, v35, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error setting jasper projector mode: %@", buf, 0x20u);
            }
          }

          *v195 = 0;
          objc_msgSend_timestamp(v29);
          v127 = CV3DSLAMSessionPushJasperPointCloud();
          if ((v127 & 1) == 0)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v128 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v129 = _ARLogTechnique(v127);
            v130 = v129;
            if (v128 == 1)
            {
              if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
              {
                v131 = objc_opt_class();
                v132 = NSStringFromClass(v131);
                v133 = *v195;
                LODWORD(buf[0].f64[0]) = 138543874;
                *(buf[0].f64 + 4) = v132;
                WORD2(buf[0].f64[1]) = 2048;
                *(&buf[0].f64[1] + 6) = self;
                HIWORD(buf[1].f64[0]) = 2112;
                buf[1].f64[1] = *v195;
                _os_log_impl(&dword_1C241C000, v130, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error pushing jasper buffer to SLAM: %@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
            {
              v134 = objc_opt_class();
              v135 = NSStringFromClass(v134);
              v136 = *v195;
              LODWORD(buf[0].f64[0]) = 138543874;
              *(buf[0].f64 + 4) = v135;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = self;
              HIWORD(buf[1].f64[0]) = 2112;
              buf[1].f64[1] = *v195;
              _os_log_impl(&dword_1C241C000, v130, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error pushing jasper buffer to SLAM: %@", buf, 0x20u);
            }

            v137 = ARErrorWithCodeAndUserInfo(200, 0);
            [(ARWorldTrackingTechnique *)self _didFailWithError:v137];
          }

          if (self->_planeDetectionSession.__ptr_ || self->_raycastSession.__ptr_)
          {
            [v29 extrinsicsToWideSensor];
            ARMatrix4x4FromMatrix4x3();
            v179 = v139;
            v182 = v138;
            v172 = v141;
            v176 = v140;
            [v29 visionCameraTransform];
            v165 = v143;
            v168 = v142;
            v161 = v145;
            v162 = v144;
            v211.columns[1] = v179;
            v211.columns[0] = v182;
            v211.columns[3] = v172;
            v211.columns[2] = v176;
            v212 = __invert_f4(v211);
            v146 = 0;
            v147 = vmulq_f32(v212.columns[3], vdupq_n_s32(0x3A83126Fu));
            v147.i32[3] = v212.columns[3].i32[3];
            v200 = v168;
            v201 = v165;
            v202 = v162;
            v203 = v161;
            do
            {
              buf[v146 / 2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v212.columns[0], COERCE_FLOAT(*(&v200 + v146 * 8))), v212.columns[1], *&v200.f64[v146], 1), v212.columns[2], *(&v200 + v146 * 8), 2), v147, *(&v200 + v146 * 8), 3);
              v146 += 2;
            }

            while (v146 != 8);
            v177 = buf[1].f64[0];
            v180 = buf[0].f64[0];
            v170 = *&v207;
            v173 = *&v206;
          }

          os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
          if (self->_planeDetectionSession.__ptr_)
          {
            mutableOptions5 = [(ARWorldTrackingTechnique *)self mutableOptions];
            v149 = [mutableOptions5 planeDetection] == 0;

            if (!v149)
            {
              v193 = 0.0;
              CV3DSLAMSessionCopyJasperCameraCalibration();
              v150.n128_u64[0] = ARMatrix3x3MakeRowMajorTransform(buf[0].f64);
              v166 = v151;
              v169 = v150;
              v163 = v152;
              v153 = v200.f64[0];
              ptr = self->_planeDetectionSession.__ptr_;
              pointCloud2 = [v29 pointCloud];
              objc_msgSend_timestamp(v29);
              v157 = v166;
              v156 = v169;
              v156.n128_u32[3] = 0;
              v157.n128_u32[3] = 0;
              v158 = v163;
              v158.n128_u32[3] = 0;
              PlaneDetectionSession::PushJasperPointCloud(ptr, pointCloud2, v180, v177, v173, v170, v156, v157, v158, v153, v159);
            }
          }

          os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
          os_unfair_lock_lock(&self->_raycastSessionLock);
          if (self->_raycastSession.__ptr_)
          {
            objc_msgSend_timestamp(v29);
            CV3DRaycastPushJasperPointCloud();
          }

          os_unfair_lock_unlock(&self->_raycastSessionLock);
          CV3DSLAMJasperPointCloudRelease();
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_126;
          }

          v70 = dataCopy;
          [v70 setStillRequiresPostProcessing:1];
          resultDataQueue = self->_resultDataQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __40__ARWorldTrackingTechnique_processData___block_invoke_124;
          block[3] = &unk_1E817C820;
          block[4] = self;
          v184 = v70;
          v72 = v70;
          dispatch_async(resultDataQueue, block);
        }

LABEL_125:

LABEL_126:
        if ([(ARWorldTrackingTechnique *)self deterministicMode])
        {
          dispatch_sync(self->_resultDataQueue, &__block_literal_global_126);
          CV3DSLAMSessionWait();
        }

        goto LABEL_128;
      }

      v20 = dataCopy;
      v200.f64[0] = 0.0;
      [v20 rotationRate];
      [v20 rotationRate];
      [v20 rotationRate];
      objc_msgSend_timestamp(v20);
      v21 = CV3DSLAMSessionPushGyro();
      if ((v21 & 1) == 0)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
        }

        v22 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v23 = _ARLogTechnique(v21);
        v24 = v23;
        if (v22 == 1)
        {
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            v26 = NSStringFromClass(v25);
            v27 = v200.f64[0];
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v26;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = self;
            HIWORD(buf[1].f64[0]) = 2112;
            buf[1].f64[1] = v200.f64[0];
            _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error pushing gyro data: %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v110 = objc_opt_class();
          v111 = NSStringFromClass(v110);
          v112 = v200.f64[0];
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v111;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          buf[1].f64[1] = v200.f64[0];
          _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error pushing gyro data: %@", buf, 0x20u);
        }

        v113 = ARErrorWithCodeAndUserInfo(200, 0);
        [(ARWorldTrackingTechnique *)self _didFailWithError:v113];
      }

      [v20 rotationRate];
      [v20 rotationRate];
      [v20 rotationRate];
      objc_msgSend_timestamp(v20);
      v114 = CV3DPosePredictionPushGyro();
      v115 = v114;
      if (!v114)
      {
        goto LABEL_125;
      }

      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v116 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v117 = _ARLogTechnique(v114);
      v81 = v117;
      if (v116 == 1)
      {
        if (os_log_type_enabled(v117, OS_LOG_TYPE_ERROR))
        {
          v118 = objc_opt_class();
          v119 = NSStringFromClass(v118);
          v120 = NSStringFromCV3DPosePredictionReturn(v115);
          LODWORD(buf[0].f64[0]) = 138543874;
          *(buf[0].f64 + 4) = v119;
          WORD2(buf[0].f64[1]) = 2048;
          *(&buf[0].f64[1] + 6) = self;
          HIWORD(buf[1].f64[0]) = 2112;
          *&buf[1].f64[1] = v120;
          _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: CV3DPosePredictionPushAccel error: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
      {
        v121 = objc_opt_class();
        v122 = NSStringFromClass(v121);
        v123 = NSStringFromCV3DPosePredictionReturn(v115);
        LODWORD(buf[0].f64[0]) = 138543874;
        *(buf[0].f64 + 4) = v122;
        WORD2(buf[0].f64[1]) = 2048;
        *(&buf[0].f64[1] + 6) = self;
        HIWORD(buf[1].f64[0]) = 2112;
        *&buf[1].f64[1] = v123;
        _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: CV3DPosePredictionPushAccel error: %@", buf, 0x20u);
      }
    }

    v88 = ARErrorWithCodeAndUserInfo(200, 0);
    [(ARWorldTrackingTechnique *)self _didFailWithError:v88];

    goto LABEL_125;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forFrame:0];
  }

LABEL_128:

  return dataCopy;
}

void __40__ARWorldTrackingTechnique_processData___block_invoke_124(uint64_t a1)
{
  [*(a1 + 32) _postProcessNonSynchronousDataForSceneUnderstanding:*(a1 + 40)];
  v2 = [ARNonSynchronousData alloc];
  v3 = [*(a1 + 40) gatheredData];
  objc_msgSend_timestamp(*(a1 + 40));
  v25 = [(ARNonSynchronousData *)v2 initWithGatheredData:v3 timestamp:?];

  [*(a1 + 40) setStillRequiresPostProcessing:0];
  os_unfair_lock_lock((*(a1 + 32) + 560));
  [*(*(a1 + 32) + 552) addObject:v25];
  os_unfair_lock_unlock((*(a1 + 32) + 560));
  v4 = [*(a1 + 40) arMLDepthResult];
  v5 = [*(a1 + 40) segmentationResultWithDataSource:1];
  v6 = [*(a1 + 40) segmentationResultWithDataSource:2];
  v7 = [*(a1 + 40) resultDataOfClass:objc_opt_class()];
  v8 = [v7 firstObject];

  if (v8 && v6)
  {
    v11 = [*(a1 + 32) mutableOptions];
    if ([v11 planeDetection])
    {
      v12 = [*(a1 + 32) mutableOptions];
      v13 = [v12 mlModelEnabled];

      if (v13)
      {
        os_unfair_lock_lock((*(a1 + 32) + 152));
        v14 = *(a1 + 32);
        if (v4)
        {
          [v14 pushToSceneUnderstandingDepth:v4 segmentation:v6 pose:v8];
        }

        else
        {
          [v14 pushToSceneUnderstandingSegmentation:v6 pose:v8];
        }

        v15 = [*(a1 + 32) mutableOptions];
        v16 = [v15 planeDetectionVIOPoseCallback];

        if (v16)
        {
          v17 = [*(a1 + 32) mutableOptions];
          v18 = [v17 planeDetectionVIOPoseCallback];
          (v18)[2](v18, v8);
        }

        os_unfair_lock_unlock((*(a1 + 32) + 152));
      }
    }

    else
    {
    }
  }

  if (v4)
  {
    v19 = v8 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = !v19;
  if (!v19)
  {
    os_unfair_lock_lock((*(a1 + 32) + 156));
    [*(a1 + 32) pushToHitTestingDepth:v4 pose:v8];
    os_unfair_lock_unlock((*(a1 + 32) + 156));
  }

  if (ARDeviceSupportsJasper(v9, v10))
  {
    v21 = [*(a1 + 32) mutableOptions];
    v22 = [v21 sceneReconstruction];

    v23 = v6 ? v20 : 0;
    if (v23 == 1 && v22)
    {
      [v8 visionCameraTransform];
      *(*(a1 + 32) + 928) = __invert_f4(v27);
      v24 = [*(a1 + 32) sceneReconstructionHandler];
      [v24 pushDepth:v4 semanticSegmentation:v6 personSegmentation:v5 pose:v8];
    }
  }
}

- (void)_postProcessNonSynchronousDataForSceneUnderstanding:(id)understanding
{
  understandingCopy = understanding;
  arMLDepthResult = [understandingCopy arMLDepthResult];
  v6 = [understandingCopy segmentationResultWithDataSource:2];
  v7 = v6;
  if (v6)
  {
    if ([v6 segmentationBuffer])
    {
      singleFrameDepthBuffer = [arMLDepthResult singleFrameDepthBuffer];
      if (singleFrameDepthBuffer)
      {
        if (ARDeviceSupportsJasper(singleFrameDepthBuffer, v9))
        {
          singleFrameDepthBuffer2 = [arMLDepthResult singleFrameDepthBuffer];
          v11 = singleFrameDepthBuffer2;
          if (singleFrameDepthBuffer2)
          {
            Width = CVPixelBufferGetWidth(singleFrameDepthBuffer2);
            Height = CVPixelBufferGetHeight(v11);
          }

          else
          {
            Width = *MEMORY[0x1E695F060];
            Height = *(MEMORY[0x1E695F060] + 8);
          }

          PixelFormatType = CVPixelBufferGetPixelFormatType([v7 segmentationBuffer]);
          v15 = ARCreateCVPixelBufferFromPool(&self->_poolForSemanticsAnnotatedDepth, PixelFormatType, self, @"segmentation annotated depth", Width, Height);
          v16 = v15;
          if (v15)
          {
            v47[0] = MEMORY[0x1E69E9820];
            v47[1] = 3221225472;
            v48 = __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke;
            v49 = &__block_descriptor_40_e5_v8__0l;
            v50 = v15;
            singleFrameDepthBuffer3 = [arMLDepthResult singleFrameDepthBuffer];
            v18 = singleFrameDepthBuffer3;
            if (singleFrameDepthBuffer3)
            {
              v19 = CVPixelBufferGetWidth(singleFrameDepthBuffer3);
              v20 = CVPixelBufferGetHeight(v18);
            }

            else
            {
              v19 = *MEMORY[0x1E695F060];
              v20 = *(MEMORY[0x1E695F060] + 8);
            }

            v21 = CVPixelBufferGetPixelFormatType([v7 confidenceBuffer]);
            v22 = ARCreateCVPixelBufferFromPool(&self->_poolForConfidenceAnnotatedDepth, v21, self, @"confidence annotated depth", v19, v20);
            v23 = v22;
            if (!v22)
            {
              goto LABEL_27;
            }

            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v44 = __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke_2;
            v45 = &__block_descriptor_40_e5_v8__0l;
            v46 = v22;
            if ([v7 uncertaintyBuffer])
            {
              singleFrameDepthBuffer4 = [arMLDepthResult singleFrameDepthBuffer];
              v25 = singleFrameDepthBuffer4;
              if (singleFrameDepthBuffer4)
              {
                v26 = CVPixelBufferGetWidth(singleFrameDepthBuffer4);
                v27 = CVPixelBufferGetHeight(v25);
              }

              else
              {
                v26 = *MEMORY[0x1E695F060];
                v27 = *(MEMORY[0x1E695F060] + 8);
              }

              v28 = CVPixelBufferGetPixelFormatType([v7 uncertaintyBuffer]);
              v29 = ARCreateCVPixelBufferFromPool(&self->_poolForUncertaintyAnnotatedDepth, v28, self, @"uncertainty annotated depth", v26, v27);
              v30 = v29;
              if (!v29)
              {
                goto LABEL_26;
              }

              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v40 = __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke_3;
              v41 = &__block_descriptor_40_e5_v8__0l;
              v42 = v29;
              singleFrameDepthBuffer5 = [arMLDepthResult singleFrameDepthBuffer];
              v32 = singleFrameDepthBuffer5;
              if (singleFrameDepthBuffer5)
              {
                v33 = CVPixelBufferGetWidth(singleFrameDepthBuffer5);
                v34 = CVPixelBufferGetHeight(v32);
              }

              else
              {
                v33 = *MEMORY[0x1E695F060];
                v34 = *(MEMORY[0x1E695F060] + 8);
              }

              v35 = CVPixelBufferGetPixelFormatType([v7 segmentationBuffer]);
              v36 = ARCreateCVPixelBufferFromPool(&self->_poolForUncertaintyMaskedSemanticsDepth, v35, self, @"uncertainty masked segmentation buffer", v33, v34);
              v37 = v36;
              if (v36)
              {
                v38[0] = MEMORY[0x1E69E9820];
                v38[1] = 3221225472;
                v38[2] = __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke_4;
                v38[3] = &__block_descriptor_40_e5_v8__0l;
                v38[4] = v36;
                [(ARWorldTrackingTechnique *)self annotateDepth:arMLDepthResult withSemantics:v7 toTargetSemanticsImage:v16 targetConfidenceBuffer:v23 targetUncertaintyBuffer:v30];
                [v7 setSemanticsSampledForDepth:v16];
                [v7 setConfidenceSampledForDepth:v23];
                [v7 setUncertaintySampledForDepth:v30];
                [ARSISemanticSegmentationTechnique createUncertaintyMaskedSegmentationBuffer:v37 fromSegmentationBuffer:v16 uncertaintyBuffer:v30 maskValue:255];
                __80__ARWorldTrackingTechnique__postProcessNonSynchronousDataForSceneUnderstanding___block_invoke_4(v38);
              }

              v40(v39);
              if (!v37)
              {
                goto LABEL_26;
              }
            }

            else
            {
              [(ARWorldTrackingTechnique *)self annotateDepth:arMLDepthResult withSemantics:v7 toTargetSemanticsImage:v16 targetConfidenceBuffer:v23 targetUncertaintyBuffer:0];
              [v7 setSemanticsSampledForDepth:v16];
              [v7 setConfidenceSampledForDepth:v23];
            }

            [v7 setMaskedSemanticsSampledForDepth:v16];
LABEL_26:
            v44(v43);
LABEL_27:
            v48(v47);
          }
        }
      }
    }
  }
}

- (void)_saveExtrinsicsForWidePlusUWSessionFromImage:(id)image
{
  imageCopy = image;
  cameraType = [imageCopy cameraType];
  v5 = [cameraType isEqualToString:*MEMORY[0x1E6986948]];

  if (v5)
  {
    [imageCopy extrinsicMatrixToDeviceType:*MEMORY[0x1E6986950]];
    *self->_anon_240 = v6;
    *&self->_anon_240[8] = v7;
    *&self->_anon_240[24] = v8;
    *&self->_anon_240[40] = v9;
    *&self->_anon_240[16] = v10;
    *&self->_anon_240[32] = v11;
    *&self->_anon_240[56] = v12;
    *&self->_anon_240[48] = v13;
  }
}

- (void)_saveExtrinsicsForBravoCamSessionFromImage:(id)image
{
  imageCopy = image;
  [imageCopy extrinsicMatrixToDeviceType:*MEMORY[0x1E6986948]];
  *self->_anon_280 = v4;
  *&self->_anon_280[8] = v5;
  *&self->_anon_280[24] = v6;
  *&self->_anon_280[16] = v7;
  *&self->_anon_280[40] = v8;
  *&self->_anon_280[32] = v9;
  *&self->_anon_280[56] = v10;
  *&self->_anon_280[48] = v11;
  [imageCopy extrinsicMatrixToDeviceType:*MEMORY[0x1E6986928]];
  *self->_anon_2c0 = v12;
  *&self->_anon_2c0[8] = v13;
  *&self->_anon_2c0[24] = v14;
  *&self->_anon_2c0[40] = v15;
  *&self->_anon_2c0[16] = v16;
  *&self->_anon_2c0[32] = v17;
  *&self->_anon_2c0[56] = v18;
  *&self->_anon_2c0[48] = v19;
}

- (void)_saveExtrinsicsFromImage:(id)image
{
  imageCopy = image;
  _sessionType = [(ARWorldTrackingTechnique *)self _sessionType];
  if (_sessionType)
  {
    if (_sessionType == 1)
    {
      [(ARWorldTrackingTechnique *)self _saveExtrinsicsForBravoCamSessionFromImage:imageCopy];
    }
  }

  else
  {
    [(ARWorldTrackingTechnique *)self _saveExtrinsicsForWidePlusUWSessionFromImage:imageCopy];
  }
}

- (id)predictedResultDataAtTimestamp:(double)timestamp context:(id)context
{
  *&v45[21] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  cachedPoseData = self->_cachedPoseData;
  if (cachedPoseData && (-[ARWorldTrackingPoseData worldTrackingState](cachedPoseData, "worldTrackingState"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 state], v8, v9))
  {
    v10 = [(ARWorldTrackingPoseData *)self->_cachedPoseData copy];
    if (!v10)
    {
      v10 = [[ARWorldTrackingPoseData alloc] initWithTimestamp:timestamp];
    }

    v11 = [(ARWorldTrackingTechnique *)self _updatePoseData:v10 forTimeStamp:0 updateTrackingState:timestamp];
    v12 = v11;
    if (v11)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
      }

      v13 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v14 = _ARLogTechnique(v11);
      imageData = v14;
      if (v13 == 1)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v16 = objc_opt_class();
          v17 = NSStringFromClass(v16);
          *buf = 138544130;
          *&buf[4] = v17;
          buf_12 = 2048;
          *buf_14 = self;
          *&buf_14[8] = 1024;
          v43 = v12;
          v44 = 2048;
          *v45 = timestamp;
          _os_log_impl(&dword_1C241C000, imageData, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to predict pose [%i] for timestamp %f", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544130;
        *&buf[4] = v29;
        buf_12 = 2048;
        *buf_14 = self;
        *&buf_14[8] = 1024;
        v43 = v12;
        v44 = 2048;
        *v45 = timestamp;
        _os_log_impl(&dword_1C241C000, imageData, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to predict pose [%i] for timestamp %f", buf, 0x26u);
      }

      v18 = MEMORY[0x1E695E0F0];
    }

    else
    {
      imageData = [contextCopy imageData];
      if ([imageData cameraPosition]== 2)
      {
        [(ARWorldTrackingPoseData *)v10 cameraTransform];
        v33 = v20;
        v34 = v19;
        v31 = v22;
        v32 = v21;
        *&v23 = ARFrontFacingCameraFlip();
        v24 = 0;
        v35 = v23;
        v36 = v25;
        v37 = v26;
        v38 = v27;
        do
        {
          *&buf[v24] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(*(&v35 + v24))), v33, *(&v35 + v24), 1), v32, *(&v35 + v24), 2), v31, *(&v35 + v24), 3);
          v24 += 16;
        }

        while (v24 != 64);
        [(ARWorldTrackingPoseData *)v10 setCameraTransform:*buf, *&buf_14[2], *&v45[1], *&v45[9]];
      }

      v39 = v10;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:{1, *&v31, *&v32, *&v33, *&v34, v35, v36, v37, v38}];
    }
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

- (void)mergeResultData:(id)data intoData:(id)intoData context:(id)context
{
  v57 = *MEMORY[0x1E69E9840];
  i = data;
  intoDataCopy = intoData;
  contextCopy = context;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = i;
  v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  v9 = 0;
  if (!v8)
  {
    v41 = 0;
    v43 = 0;
    v46 = 0;
    goto LABEL_18;
  }

  v41 = 0;
  v43 = 0;
  v46 = 0;
  v10 = *v52;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v52 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v51 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v46;
        v13 = v9;
        v46 = v11;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v43;
          v13 = v9;
          v43 = v11;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v12 = v41;
            v13 = v9;
            v41 = v11;
          }

          else
          {
            objc_opt_class();
            v12 = v9;
            v13 = v11;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }
        }
      }

      v14 = v11;

      v9 = v13;
    }

    v8 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  }

  while (v8);
LABEL_18:

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = intoDataCopy;
  v15 = 0;
  v16 = [v45 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v16)
  {
    v42 = 0;
    v40 = 0;
    v17 = 0;
    i = *v48;
    while (1)
    {
      v18 = 0;
      do
      {
        if (*v48 != i)
        {
          objc_enumerationMutation(v45);
        }

        v19 = *(*(&v47 + 1) + 8 * v18);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v15;
          v15 = v19;
LABEL_29:
          v21 = v17;
LABEL_30:
          v22 = v19;

          v17 = v21;
          goto LABEL_31;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v42;
          v42 = v19;
          goto LABEL_29;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = v40;
          v40 = v19;
          goto LABEL_29;
        }

        objc_opt_class();
        v20 = v17;
        v21 = v19;
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_30;
        }

LABEL_31:
        ++v18;
      }

      while (v16 != v18);
      v23 = [v45 countByEnumeratingWithState:&v47 objects:v55 count:16];
      v16 = v23;
      if (!v23)
      {
        goto LABEL_38;
      }
    }
  }

  v42 = 0;
  v40 = 0;
  v17 = 0;
LABEL_38:

  worldTrackingState = [v15 worldTrackingState];
  majorRelocalization = [worldTrackingState majorRelocalization];
  if (majorRelocalization)
  {
    majorRelocalization2 = 1;
  }

  else
  {
    i = [v46 worldTrackingState];
    majorRelocalization2 = [i majorRelocalization];
  }

  worldTrackingState2 = [v15 worldTrackingState];
  [worldTrackingState2 setMajorRelocalization:majorRelocalization2];

  if ((majorRelocalization & 1) == 0)
  {
  }

  worldTrackingState3 = [v15 worldTrackingState];
  minorRelocalization = [worldTrackingState3 minorRelocalization];
  if (minorRelocalization)
  {
    minorRelocalization2 = 1;
  }

  else
  {
    i = [v46 worldTrackingState];
    minorRelocalization2 = [i minorRelocalization];
  }

  worldTrackingState4 = [v15 worldTrackingState];
  [worldTrackingState4 setMinorRelocalization:minorRelocalization2];

  if ((minorRelocalization & 1) == 0)
  {
  }

  worldTrackingState5 = [v15 worldTrackingState];
  poseGraphUpdated = [worldTrackingState5 poseGraphUpdated];
  if (poseGraphUpdated)
  {
    poseGraphUpdated2 = 1;
  }

  else
  {
    i = [v46 worldTrackingState];
    poseGraphUpdated2 = [i poseGraphUpdated];
  }

  worldTrackingState6 = [v15 worldTrackingState];
  [worldTrackingState6 setPoseGraphUpdated:poseGraphUpdated2];

  if ((poseGraphUpdated & 1) == 0)
  {
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v36 = v45;
    v37 = v36;
    if (v43 && !v42)
    {
      [v36 addObject:v43];
    }

    if (v41 && !v40)
    {
      [v37 addObject:v41];
    }

    if (v9 && !v17)
    {
      [v37 addObject:v9];
    }
  }
}

- (void)prepareResultData:(id)data forContext:(id)context
{
  contextCopy = context;
  firstObject = [data firstObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([contextCopy cameraPosition] == 2)
    {
      [firstObject cameraTransform];
      v23 = v7;
      v24 = v6;
      v21 = v9;
      v22 = v8;
      *&v10 = ARFrontFacingCameraFlip();
      v11 = 0;
      v26[0] = v10;
      v26[1] = v12;
      v26[2] = v13;
      v26[3] = v14;
      do
      {
        *(&v27 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, COERCE_FLOAT(v26[v11])), v23, *&v26[v11], 1), v22, v26[v11], 2), v21, v26[v11], 3);
        ++v11;
      }

      while (v11 != 4);
      [firstObject setCameraTransform:{*&v27, *&v28, *&v29, *&v30}];
    }

    imageData = [contextCopy imageData];
    isMirrored = [imageData isMirrored];

    if (isMirrored)
    {
      [firstObject cameraTransform];
      [firstObject setCameraTransform:{ARMatrix4x4MirrorX(v17, v18, v19, v20)}];
    }
  }
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  contextCopy = context;
  [(ARWorldTrackingTechnique *)self _pushWTResultDataForTimestamp:timestamp];
  v7.receiver = self;
  v7.super_class = ARWorldTrackingTechnique;
  [(ARImageBasedTechnique *)&v7 requestResultDataAtTimestamp:contextCopy context:timestamp];
}

- (void)annotateDepth:(id)depth withSemantics:(id)semantics toTargetSemanticsImage:(__CVBuffer *)image targetConfidenceBuffer:(__CVBuffer *)buffer targetUncertaintyBuffer:(__CVBuffer *)uncertaintyBuffer useGpu:(BOOL)gpu
{
  gpuCopy = gpu;
  depthCopy = depth;
  semanticsCopy = semantics;
  sourceImageData = [semanticsCopy sourceImageData];
  objc_msgSend_timestamp(sourceImageData);
  sourceImageData2 = [depthCopy sourceImageData];
  objc_msgSend_timestamp(sourceImageData2);
  kdebug_trace();

  [depthCopy depthBufferSize];
  v14 = v13;
  v16 = v15;
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  sourceImageData3 = [depthCopy sourceImageData];
  [sourceImageData3 extrinsicMatrixToDeviceType:*MEMORY[0x1E6986948]];
  v91 = v19;
  v93 = v18;
  v101 = v21;
  v106 = v20;

  v120 = v93;
  v121 = v91;
  v122 = v106;
  v123 = vdivq_f32(v101, vdupq_n_s32(0x447A0000u));
  sourceImageData4 = [semanticsCopy sourceImageData];
  [sourceImageData4 cameraIntrinsics];
  v102 = v24;
  v107 = v23;
  v94 = v25;
  sourceImageData5 = [semanticsCopy sourceImageData];
  [sourceImageData5 imageResolution];
  v28 = v27;
  v30 = v29;
  segmentationBuffer = [semanticsCopy segmentationBuffer];
  v32 = segmentationBuffer;
  if (segmentationBuffer)
  {
    Width = CVPixelBufferGetWidth(segmentationBuffer);
    Height = CVPixelBufferGetHeight(v32);
    v35 = Width;
    v36 = Height;
  }

  else
  {
    v35 = *MEMORY[0x1E695F060];
    v36 = *(MEMORY[0x1E695F060] + 8);
  }

  v37.f32[0] = ARAdjustIntrinsicsForViewportSize(v107, v102, v94, v28, v30, v35, v36);
  v124 = v37;
  v125 = v38;
  v126 = v39;

  sourceImageData6 = [depthCopy sourceImageData];
  [sourceImageData6 cameraIntrinsics];
  v103 = v42;
  v108 = v41;
  v95 = v43;
  sourceImageData7 = [depthCopy sourceImageData];
  [sourceImageData7 imageResolution];
  v47.f32[0] = ARAdjustIntrinsicsForViewportSize(v108, v103, v95, v45, v46, v14, v16);
  v104 = v48;
  v109 = v47;
  v96 = v49;

  sourceImageData8 = [depthCopy sourceImageData];
  cameraType = [sourceImageData8 cameraType];
  if (cameraType)
  {
    mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
    sourceImageData9 = [depthCopy sourceImageData];
    cameraType2 = [sourceImageData9 cameraType];
    [mutableOptions cameraIdForCaptureDeviceType:cameraType2];
  }

  kdebug_trace();
  kdebug_trace();
  CVPixelBufferGetWidth([semanticsCopy segmentationBuffer]);
  CVPixelBufferGetHeight([semanticsCopy segmentationBuffer]);
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  v130.columns[2] = v104;
  v130.columns[0] = v109;
  v130.columns[0].i32[3] = 0;
  v130.columns[1] = v96;
  v130.columns[1].i32[3] = 0;
  v130.columns[2].i32[3] = 0;
  v131 = __invert_f3(v130);
  v127 = v131.columns[0];
  v128 = v131.columns[1];
  v129 = v131.columns[2];
  if (gpuCopy)
  {
    v86 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
    v97 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_sharedMetalDevice, "newTextureWithDescriptor:iosurface:plane:", v86, CVPixelBufferGetIOSurface([depthCopy depthBuffer]), 0);
    [v97 setLabel:@"depthTexture"];
    v85 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:13 width:v14 height:v16 mipmapped:0];
    v110 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_sharedMetalDevice, "newTextureWithDescriptor:iosurface:plane:", v85, CVPixelBufferGetIOSurface([semanticsCopy segmentationBuffer]), 0);
    [v110 setLabel:@"semanticsTexture"];
    v105 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
    v90 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_sharedMetalDevice, "newTextureWithDescriptor:iosurface:plane:", v105, CVPixelBufferGetIOSurface([semanticsCopy confidenceBuffer]), 0);
    [v110 setLabel:@"confidenceTexture"];
    v92 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:13 width:v14 height:v16 mipmapped:0];
    [v92 setUsage:3];
    v89 = [(MTLDevice *)self->_sharedMetalDevice newTextureWithDescriptor:v92 iosurface:CVPixelBufferGetIOSurface(image) plane:0];
    [v89 setLabel:@"targetSemanticsTexture"];
    pixelBuffera = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
    [(__CVBuffer *)pixelBuffera setUsage:3];
    v87 = [(MTLDevice *)self->_sharedMetalDevice newTextureWithDescriptor:pixelBuffera iosurface:CVPixelBufferGetIOSurface(buffer) plane:0];
    [v87 setLabel:@"targetConfidenceTexture"];
    v88 = [(MTLDevice *)self->_sharedMetalDevice newBufferWithBytes:&v120 length:160 options:0];
    v55 = [(MTLDevice *)self->_sharedMetalDevice newComputePipelineStateWithFunction:self->_annotateDepthDataKernelFunction error:0];
    if (uncertaintyBuffer)
    {
      commandBuffer2 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
      v84 = -[MTLDevice newTextureWithDescriptor:iosurface:plane:](self->_sharedMetalDevice, "newTextureWithDescriptor:iosurface:plane:", commandBuffer2, CVPixelBufferGetIOSurface([semanticsCopy uncertaintyBuffer]), 0);
      [v110 setLabel:@"uncertaintyTexture"];
      v57 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:55 width:v14 height:v16 mipmapped:0];
      [v57 setUsage:3];
      v58 = [(MTLDevice *)self->_sharedMetalDevice newTextureWithDescriptor:v57 iosurface:CVPixelBufferGetIOSurface(uncertaintyBuffer) plane:0];
      v59 = v110;
      [v58 setLabel:@"targetUncertaintyTexture"];
      commandBuffer = [(MTLCommandQueue *)self->_spatialMappingCommandQueue commandBuffer];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v55];
      [computeCommandEncoder setBuffer:v88 offset:0 atIndex:0];
      [computeCommandEncoder setTexture:v97 atIndex:1];
      [computeCommandEncoder setTexture:v110 atIndex:2];
      [computeCommandEncoder setTexture:v90 atIndex:3];
      [computeCommandEncoder setTexture:v89 atIndex:5];
      [computeCommandEncoder setTexture:v87 atIndex:6];
      [computeCommandEncoder setTexture:v84 atIndex:4];
      [computeCommandEncoder setTexture:v58 atIndex:7];
      v117 = v14;
      v118 = v16;
      v119 = 1;
      threadExecutionWidth = [v55 threadExecutionWidth];
      v115 = [v55 maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
      v116 = 1;
      [computeCommandEncoder dispatchThreads:&v117 threadsPerThreadgroup:&threadExecutionWidth];
      [computeCommandEncoder endEncoding];

      [commandBuffer commit];
      [commandBuffer waitUntilCompleted];
    }

    else
    {
      commandBuffer2 = [(MTLCommandQueue *)self->_spatialMappingCommandQueue commandBuffer];
      v59 = v110;
      computeCommandEncoder2 = [commandBuffer2 computeCommandEncoder];
      [computeCommandEncoder2 setComputePipelineState:v55];
      [computeCommandEncoder2 setBuffer:v88 offset:0 atIndex:0];
      [computeCommandEncoder2 setTexture:v97 atIndex:1];
      [computeCommandEncoder2 setTexture:v110 atIndex:2];
      [computeCommandEncoder2 setTexture:v90 atIndex:3];
      [computeCommandEncoder2 setTexture:v89 atIndex:5];
      [computeCommandEncoder2 setTexture:v87 atIndex:6];
      v117 = v14;
      v118 = v16;
      v119 = 1;
      threadExecutionWidth = [v55 threadExecutionWidth];
      v115 = [v55 maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
      v116 = 1;
      [computeCommandEncoder2 dispatchThreads:&v117 threadsPerThreadgroup:&threadExecutionWidth];
      [computeCommandEncoder2 endEncoding];

      [commandBuffer2 commit];
      [commandBuffer2 waitUntilCompleted];
    }
  }

  else
  {
    BytesPerRow = CVPixelBufferGetBytesPerRow([depthCopy depthBuffer]);
    v63 = CVPixelBufferGetBytesPerRow([semanticsCopy segmentationBuffer]);
    v64 = CVPixelBufferGetBytesPerRow([semanticsCopy confidenceBuffer]);
    v65 = CVPixelBufferGetBytesPerRow([semanticsCopy uncertaintyBuffer]);
    CVPixelBufferLockBaseAddress([semanticsCopy segmentationBuffer], 1uLL);
    CVPixelBufferLockBaseAddress([semanticsCopy confidenceBuffer], 1uLL);
    CVPixelBufferLockBaseAddress([semanticsCopy uncertaintyBuffer], 1uLL);
    CVPixelBufferLockBaseAddress([depthCopy depthBuffer], 1uLL);
    CVPixelBufferLockBaseAddress(image, 0);
    CVPixelBufferLockBaseAddress(buffer, 0);
    CVPixelBufferLockBaseAddress(uncertaintyBuffer, 0);
    BaseAddress = CVPixelBufferGetBaseAddress([depthCopy depthBuffer]);
    v67 = CVPixelBufferGetBaseAddress([semanticsCopy segmentationBuffer]);
    v68 = CVPixelBufferGetBaseAddress([semanticsCopy confidenceBuffer]);
    v69 = CVPixelBufferGetBaseAddress([semanticsCopy uncertaintyBuffer]);
    v70 = CVPixelBufferGetBaseAddress(image);
    v71 = CVPixelBufferGetBaseAddress(buffer);
    v72 = CVPixelBufferGetBaseAddress(uncertaintyBuffer);
    if (v16 > 0.0)
    {
      v75 = 0;
      do
      {
        if (v14 > 0.0)
        {
          v76 = 0;
          *&v74 = v75;
          v77 = vdupq_lane_s32(*&v74, 0);
          do
          {
            v78 = vmulq_n_f32(vaddq_f32(v129, vmlaq_f32(vmulq_n_f32(v127, v76), v77, v128)), BaseAddress[v76]);
            v79 = vaddq_f32(v123, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, v78.f32[0]), v121, *v78.f32, 1), v122, v78, 2));
            v80 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v124, v79.f32[0]), v125, *v79.f32, 1), v126, v79, 2);
            v81 = vdivq_f32(v80, vdupq_laneq_s32(v80, 2)).u64[0];
            LODWORD(v73) = llroundf(*(&v81 + 1));
            if (v73 <= 0xBF)
            {
              v82 = llroundf(*&v81);
              if (v82 <= 0xFF)
              {
                v70[v76] = v67[v63 * v73 + v82];
                *&v71[4 * v76] = *&v68[4 * v82 + v64 * v73];
                v73 = &v69[v65 * v73];
                *&v72[4 * v76] = *&v73[4 * v82];
              }
            }

            ++v76;
          }

          while (v14 > v76);
        }

        v74 = ++v75;
        v70 += v63;
        BaseAddress = (BaseAddress + BytesPerRow);
        v71 += v64;
        v72 += v65;
      }

      while (v16 > v75);
    }

    CVPixelBufferUnlockBaseAddress([depthCopy depthBuffer], 1uLL);
    CVPixelBufferUnlockBaseAddress([semanticsCopy segmentationBuffer], 1uLL);
    CVPixelBufferUnlockBaseAddress([semanticsCopy confidenceBuffer], 1uLL);
    CVPixelBufferUnlockBaseAddress([semanticsCopy uncertaintyBuffer], 1uLL);
    CVPixelBufferUnlockBaseAddress(image, 0);
    CVPixelBufferUnlockBaseAddress(buffer, 0);
  }

  CVPixelBufferGetWidth(buffer);
  CVPixelBufferGetHeight(buffer);
  kdebug_trace();
  kdebug_trace();
}

- (void)pushToSceneUnderstandingSegmentation:(id)segmentation pose:(id)pose
{
  segmentationCopy = segmentation;
  poseCopy = pose;
  if (self->_planeDetectionSession.__ptr_ && [(ARSegmentationData *)segmentationCopy normalsBuffer])
  {
    kdebug_trace();
    segmentationBuffer = [(ARSegmentationData *)segmentationCopy segmentationBuffer];
    v8 = segmentationBuffer;
    if (segmentationBuffer)
    {
      Width = CVPixelBufferGetWidth(segmentationBuffer);
      Height = CVPixelBufferGetHeight(v8);
    }

    else
    {
      Width = *MEMORY[0x1E695F060];
      Height = *(MEMORY[0x1E695F060] + 8);
    }

    sourceImageData = [(ARSegmentationData *)segmentationCopy sourceImageData];
    [sourceImageData cameraIntrinsics];
    v34 = v13;
    v36 = v12;
    v32 = v14;
    sourceImageData2 = [(ARSegmentationData *)segmentationCopy sourceImageData];
    [sourceImageData2 imageResolution];
    v18.f32[0] = ARAdjustIntrinsicsForViewportSize(v36, v34, v32, v16, v17, Width, Height);
    v35 = v19;
    v37 = v18;
    v33 = v20;

    ptr = self->_planeDetectionSession.__ptr_;
    [poseCopy visionCameraTransform];
    v30 = v23;
    v31 = v22;
    v28 = v25;
    v29 = v24;
    objc_msgSend_timestamp(segmentationCopy);
    v27 = v26;
    v40.columns[1] = v35;
    v40.columns[0] = v37;
    v40.columns[0].i32[3] = 0;
    v40.columns[1].i32[3] = 0;
    v41.columns[0] = v31;
    v40.columns[2] = v33;
    v40.columns[2].i32[3] = 0;
    v41.columns[2] = v29;
    v41.columns[1] = v30;
    v41.columns[3] = v28;
    PlaneDetectionSession::PushSemanticsAndNormals(ptr, segmentationCopy, v41, v40, v27);
    kdebug_trace();
  }
}

- (void)pushToHitTestingDepth:(id)depth pose:(id)pose
{
  depthCopy = depth;
  poseCopy = pose;
  if (self->_raycastSession.__ptr_)
  {
    sourceImageData = [depthCopy sourceImageData];
    [sourceImageData cameraIntrinsics];
    v34 = v9;
    v36 = v8;
    v32 = v10;
    sourceImageData2 = [depthCopy sourceImageData];
    [sourceImageData2 imageResolution];
    v13 = v12;
    v15 = v14;
    [depthCopy depthBufferSize];
    v18.f32[0] = ARAdjustIntrinsicsForViewportSize(v36, v34, v32, v13, v15, v16, v17);
    v35 = v19;
    v37 = v18;
    v33 = v20;

    ptr = self->_raycastSession.__ptr_;
    singleFrameDepthBuffer = [depthCopy singleFrameDepthBuffer];
    singleFrameConfidenceBuffer = [depthCopy singleFrameConfidenceBuffer];
    [poseCopy visionCameraTransform];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v40.columns[1] = v35;
    v40.columns[0] = v37;
    v40.columns[0].i32[3] = 0;
    v40.columns[1].i32[3] = 0;
    v40.columns[2] = v33;
    v40.columns[2].i32[3] = 0;
    v41.columns[0] = v25;
    v41.columns[1] = v27;
    v41.columns[2] = v29;
    v41.columns[3] = v31;
    RaycastSession::PushDenseFrame(ptr, singleFrameDepthBuffer, singleFrameConfidenceBuffer, v40, v41);
  }
}

- (void)pushToSceneUnderstandingDepth:(id)depth segmentation:(id)segmentation pose:(id)pose
{
  depthCopy = depth;
  segmentationCopy = segmentation;
  poseCopy = pose;
  if (self->_planeDetectionSession.__ptr_)
  {
    kdebug_trace();
    sourceImageData = [(ARMLDepthData *)depthCopy sourceImageData];
    [sourceImageData cameraIntrinsics];
    v37 = v12;
    v39 = v11;
    v35 = v13;
    sourceImageData2 = [(ARMLDepthData *)depthCopy sourceImageData];
    [sourceImageData2 imageResolution];
    v16 = v15;
    v18 = v17;
    [(ARMLDepthData *)depthCopy depthBufferSize];
    v21.f32[0] = ARAdjustIntrinsicsForViewportSize(v39, v37, v35, v16, v18, v19, v20);
    v38 = v22;
    v40 = v21;
    v36 = v23;

    ptr = self->_planeDetectionSession.__ptr_;
    [poseCopy visionCameraTransform];
    v33 = v26;
    v34 = v25;
    v31 = v28;
    v32 = v27;
    objc_msgSend_timestamp(segmentationCopy);
    v30 = v29;
    v43.columns[1] = v38;
    v43.columns[0] = v40;
    v43.columns[0].i32[3] = 0;
    v43.columns[1].i32[3] = 0;
    v44.columns[0] = v34;
    v43.columns[2] = v36;
    v43.columns[2].i32[3] = 0;
    v44.columns[2] = v32;
    v44.columns[1] = v33;
    v44.columns[3] = v31;
    PlaneDetectionSession::PushDepthWithSemantics(ptr, depthCopy, segmentationCopy, v44, v43, v30);
    kdebug_trace();
  }
}

- (void)didReceiveKeyframesUpdatedCallback:(CV3DReconKeyframeList *)callback
{
  v102 = *MEMORY[0x1E69E9840];
  v95 = 0;
  Count = CV3DReconKeyframeListGetCount();
  kdebug_trace();
  kdebug_trace();
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (!Count)
  {
LABEL_49:
    os_unfair_lock_lock(&self->_spatialMappingPointCloudsLock);
    [(NSMutableDictionary *)self->_spatialMappingPointClouds addEntriesFromDictionary:dictionary];
    os_unfair_lock_unlock(&self->_spatialMappingPointCloudsLock);
    kdebug_trace();
    goto LABEL_73;
  }

  v5 = 0;
  while (1)
  {
    KeyframeUUIDAtIndex = CV3DReconKeyframeListGetKeyframeUUIDAtIndex();
    if (v95)
    {
      break;
    }

    v7 = KeyframeUUIDAtIndex;
    v8 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:KeyframeUUIDAtIndex];
    CFRelease(v7);
    KeyframeToWorldTransformAtIndex = CV3DReconKeyframeListGetKeyframeToWorldTransformAtIndex();
    v83 = v10;
    v84 = v11;
    v85 = v12;
    v86 = v13;
    if (v95)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v62 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v63 = _ARLogGeneral(KeyframeToWorldTransformAtIndex);
      v64 = v63;
      if (v62 == 1)
      {
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          v65 = objc_opt_class();
          v66 = NSStringFromClass(v65);
          v67 = v95;
          *buf = 138543874;
          v97 = v66;
          v98 = 2048;
          selfCopy14 = self;
          v100 = 2112;
          v101 = v95;
          _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting keyframe transform: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v76 = objc_opt_class();
        v77 = NSStringFromClass(v76);
        v78 = v95;
        *buf = 138543874;
        v97 = v77;
        v98 = 2048;
        selfCopy14 = self;
        v100 = 2112;
        v101 = v95;
        _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting keyframe transform: %@", buf, 0x20u);
      }

      goto LABEL_71;
    }

    v14 = CV3DReconKeyframeListCopyKeyframeAtIndex();
    if (v95)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v68 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v69 = _ARLogGeneral(v14);
      v64 = v69;
      if (v68 == 1)
      {
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v70 = objc_opt_class();
          v71 = NSStringFromClass(v70);
          v72 = v95;
          *buf = 138543874;
          v97 = v71;
          v98 = 2048;
          selfCopy14 = self;
          v100 = 2112;
          v101 = v95;
          _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting keyframe: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v79 = objc_opt_class();
        v80 = NSStringFromClass(v79);
        v81 = v95;
        *buf = 138543874;
        v97 = v80;
        v98 = 2048;
        selfCopy14 = self;
        v100 = 2112;
        v101 = v95;
        _os_log_impl(&dword_1C241C000, v64, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting keyframe: %@", buf, 0x20u);
      }

LABEL_71:

      goto LABEL_72;
    }

    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v92 = __63__ARWorldTrackingTechnique_didReceiveKeyframesUpdatedCallback___block_invoke;
    v93 = &__block_descriptor_40_e5_v8__0l;
    v94 = v14;
    PointCloud = CV3DReconKeyframeCreatePointCloud();
    if (v95)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v16 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v17 = _ARLogGeneral(PointCloud);
      v18 = v17;
      if (v16 == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          v21 = v95;
          *buf = 138543874;
          v97 = v20;
          v98 = 2048;
          selfCopy14 = self;
          v100 = 2112;
          v101 = v95;
          _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error creating point cloud keyframe: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v31 = objc_opt_class();
        v32 = NSStringFromClass(v31);
        v33 = v95;
        *buf = 138543874;
        v97 = v32;
        v98 = 2048;
        selfCopy14 = self;
        v100 = 2112;
        v101 = v95;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error creating point cloud keyframe: %@", buf, 0x20u);
      }

      v34 = 0;
      goto LABEL_36;
    }

    v22 = PointCloud;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v88 = __63__ARWorldTrackingTechnique_didReceiveKeyframesUpdatedCallback___block_invoke_172;
    v89 = &__block_descriptor_40_e5_v8__0l;
    v90 = PointCloud;
    CreationTime = CV3DReconKeyframeGetCreationTime();
    if (v95)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v25 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v26 = _ARLogGeneral(CreationTime);
      p_super = v26;
      if (v25 == 1)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = v95;
          *buf = 138543874;
          v97 = v29;
          v98 = 2048;
          selfCopy14 = self;
          v100 = 2112;
          v101 = v95;
          _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting keyframe timestamp: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v42 = objc_opt_class();
        v43 = NSStringFromClass(v42);
        v44 = v95;
        *buf = 138543874;
        v97 = v43;
        v98 = 2048;
        selfCopy14 = self;
        v100 = 2112;
        v101 = v95;
        _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting keyframe timestamp: %@", buf, 0x20u);
      }

LABEL_34:
      v34 = 0;
      goto LABEL_35;
    }

    v35 = v24;
    PointsCount = CV3DReconPointCloudGetPointsCount();
    if (v95)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v37 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v38 = _ARLogGeneral(PointsCount);
      p_super = v38;
      if (v37 == 1)
      {
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          v39 = objc_opt_class();
          v40 = NSStringFromClass(v39);
          v41 = v95;
          *buf = 138543874;
          v97 = v40;
          v98 = 2048;
          selfCopy14 = self;
          v100 = 2112;
          v101 = v95;
          _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting point cloud size: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        v49 = v95;
        *buf = 138543874;
        v97 = v48;
        v98 = 2048;
        selfCopy14 = self;
        v100 = 2112;
        v101 = v95;
        _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting point cloud size: %@", buf, 0x20u);
      }

      goto LABEL_34;
    }

    if (!PointsCount)
    {
      v50 = [dictionary objectForKeyedSubscript:v8];
      p_super = v50;
      if (v50)
      {
        [v50 updateTransform:v83, v84, v85, v86];
      }

      v34 = 1;
      goto LABEL_35;
    }

    v45 = [[ARSpatialMappingPointCloud alloc] initWithPointCloud:v22 smTransform:v8 identifier:v83 timestamp:v84, v85, v86, v35];
    v46 = v45;
    if (!v45)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v51 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v52 = _ARLogGeneral(v45);
      p_super = v52;
      if (v51 == 1)
      {
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = objc_opt_class();
          v54 = NSStringFromClass(v53);
          *buf = 138543618;
          v97 = v54;
          v98 = 2048;
          selfCopy14 = self;
          _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error constructing point cloud", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        v55 = objc_opt_class();
        v56 = NSStringFromClass(v55);
        *buf = 138543618;
        v97 = v56;
        v98 = 2048;
        selfCopy14 = self;
        _os_log_impl(&dword_1C241C000, p_super, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error constructing point cloud", buf, 0x16u);
      }

      goto LABEL_34;
    }

    [dictionary setObject:v45 forKeyedSubscript:v8];
    v34 = 1;
    p_super = &v46->super;
LABEL_35:

    v88(v87);
LABEL_36:
    v92(v91);

    if ((v34 & 1) == 0)
    {
      goto LABEL_73;
    }

    if (Count == ++v5)
    {
      goto LABEL_49;
    }
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARWorldTrackingTechnique processData:];
  }

  v57 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v58 = _ARLogGeneral(KeyframeUUIDAtIndex);
  v8 = v58;
  if (v57 == 1)
  {
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      v59 = objc_opt_class();
      v60 = NSStringFromClass(v59);
      v61 = v95;
      *buf = 138543874;
      v97 = v60;
      v98 = 2048;
      selfCopy14 = self;
      v100 = 2112;
      v101 = v95;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting keyframe UUID: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
  {
    v73 = objc_opt_class();
    v74 = NSStringFromClass(v73);
    v75 = v95;
    *buf = 138543874;
    v97 = v74;
    v98 = 2048;
    selfCopy14 = self;
    v100 = 2112;
    v101 = v95;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting keyframe UUID: %@", buf, 0x20u);
  }

LABEL_72:

LABEL_73:
}

- (ARWorldMap)serializeWorldMapWithReferenceOrigin:(double)origin
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  v7 = CV3DSLAMSessionSerializeMap();
  if (v7)
  {
    v8 = [[ARWorldMap alloc] initWithTrackingData:v6 referenceOriginTransform:a2, origin, a4, a5];
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v10 = _ARLogTechnique(v7);
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543874;
        v22 = v13;
        v23 = 2048;
        selfCopy2 = self;
        v25 = 2112;
        v26 = 0;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to serialize map: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138543874;
      v22 = v15;
      v23 = 2048;
      selfCopy2 = self;
      v25 = 2112;
      v26 = 0;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to serialize map: %@", buf, 0x20u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)clearMap
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(ARWorldTrackingTechnique *)self vioHandleState]== 3)
  {
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    self->_didClearMap = 1;
    [(ARWorldTrackingTechnique *)self setHasQualityKeyframe:0];
    dispatch_semaphore_signal(self->_resultSemaphore);
    kdebug_trace();
    v3 = CV3DSLAMSessionClearMap();
    if (v3)
    {
      v4 = _ARLogTechnique(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        *buf = 138543618;
        v15 = v6;
        v16 = 2048;
        selfCopy3 = self;
        _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: World map cleared", buf, 0x16u);
      }

      kdebug_trace();
      [(ARWorldTrackingTechnique *)self resetSceneReconstruction];
      [(ARWorldTrackingTechnique *)self _resetSurfaceDetection];
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v8 = _ARLogTechnique(v3);
      v9 = v8;
      if (v7 == 1)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = NSStringFromClass(v10);
          *buf = 138543874;
          v15 = v11;
          v16 = 2048;
          selfCopy3 = self;
          v18 = 2112;
          v19 = 0;
          _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error clearing vio map: %@", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543874;
        v15 = v13;
        v16 = 2048;
        selfCopy3 = self;
        v18 = 2112;
        v19 = 0;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error clearing vio map: %@", buf, 0x20u);
      }
    }
  }
}

- (id)serializeSurfaceData
{
  if (self->_planeDetectionSession.__ptr_)
  {
    os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
    v3 = PlaneDetectionSession::SerializePlanes(self->_planeDetectionSession.__ptr_);
    os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)loadSurfaceData:(id)data
{
  dataCopy = data;
  if (self->_planeDetectionSession.__ptr_)
  {
    v5 = dataCopy;
    os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
    PlaneDetectionSession::LoadPlanes(self->_planeDetectionSession.__ptr_, v5);
    self->_hasLoadedSurfaceData = 1;
    os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
    dataCopy = v5;
  }
}

- (void)addReferenceAnchors:(id)anchors
{
  v74 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  selfCopy = self;
  if (self->_allowPoseGraphUpdates)
  {
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v50 = anchorsCopy;
    obj = anchorsCopy;
    v5 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
    if (v5)
    {
      v62 = *v64;
      do
      {
        v6 = 0;
        v51 = v5;
        do
        {
          if (*v64 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v63 + 1) + 8 * v6);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              *v8.i64 = ARRenderingToVisionCoordinateTransform();
              v58 = v9;
              v59 = v8;
              v56 = v11;
              v57 = v10;
              [v7 referenceTransform];
              v54 = v13;
              v55 = v12;
              v52 = v15;
              v53 = v14;
              *&v16 = ARVisionToRenderingCoordinateTransform();
              v20 = 0;
              v67 = v55;
              v68 = v54;
              v69 = v53;
              v70 = v52;
              do
              {
                *&buf[v20] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, COERCE_FLOAT(*(&v67 + v20))), v58, *(&v67 + v20), 1), v57, *(&v67 + v20), 2), v56, *(&v67 + v20), 3);
                v20 += 16;
              }

              while (v20 != 64);
              v21 = 0;
              v22 = *buf;
              v23 = *&buf[16];
              v24 = *v73;
              v25 = *&v73[16];
              v67 = v16;
              v68 = v17;
              v69 = v18;
              v70 = v19;
              do
              {
                *&buf[v21] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, COERCE_FLOAT(*(&v67 + v21))), v23, *(&v67 + v21), 1), v24, *(&v67 + v21), 2), v25, *(&v67 + v21), 3);
                v21 += 16;
              }

              while (v21 != 64);
              *v75.columns[0].i64 = ARNormalizedTransform(*buf);
              __invert_f4(v75);
              identifier = [v7 identifier];
              ar_createCFUUIDRef = [identifier ar_createCFUUIDRef];

              *&v67 = 0;
              v28 = CV3DSLAMSessionAddAnchor();
              v29 = v28;
              if ((v28 & 1) == 0)
              {
                if (ARShouldUseLogTypeError(void)::onceToken != -1)
                {
                  [ARWorldTrackingTechnique processData:];
                }

                v30 = ARShouldUseLogTypeError(void)::internalOSVersion;
                v31 = _ARLogTechnique(v28);
                v32 = v31;
                if (v30 == 1)
                {
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    v33 = objc_opt_class();
                    v34 = NSStringFromClass(v33);
                    v35 = v67;
                    *buf = 138543874;
                    *&buf[4] = v34;
                    *&buf[12] = 2048;
                    *&buf[14] = selfCopy;
                    *&buf[22] = 2112;
                    *&buf[24] = v67;
                    _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error adding anchor: %@", buf, 0x20u);
                  }
                }

                else if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  v36 = objc_opt_class();
                  v37 = NSStringFromClass(v36);
                  v38 = v67;
                  *buf = 138543874;
                  *&buf[4] = v37;
                  *&buf[12] = 2048;
                  *&buf[14] = selfCopy;
                  *&buf[22] = 2112;
                  *&buf[24] = v67;
                  _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error adding anchor: %@", buf, 0x20u);
                }
              }

              v39 = _ARLogTechnique(v28);
              if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
              {
                v40 = objc_opt_class();
                v41 = NSStringFromClass(v40);
                identifier2 = [v7 identifier];
                [v7 referenceTransform];
                v47 = ARMatrix4x4Description(0, v43, v44, v45, v46);
                v48 = v47;
                *buf = 138544386;
                v49 = @"FAILED";
                if (v29)
                {
                  v49 = @"SUCESS";
                }

                *&buf[4] = v41;
                *&buf[12] = 2048;
                *&buf[14] = selfCopy;
                *&buf[22] = 2112;
                *&buf[24] = identifier2;
                *v73 = 2112;
                *&v73[2] = v47;
                *&v73[10] = 2112;
                *&v73[12] = v49;
                _os_log_impl(&dword_1C241C000, v39, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CV3DVIOAddAnchor: %@ - %@, %@", buf, 0x34u);
              }

              CFRelease(ar_createCFUUIDRef);
              v5 = v51;
            }
          }

          ++v6;
        }

        while (v6 != v5);
        v5 = [obj countByEnumeratingWithState:&v63 objects:v71 count:16];
      }

      while (v5);
    }

    anchorsCopy = v50;
  }
}

- (void)removeReferenceAnchors:(id)anchors
{
  v47 = *MEMORY[0x1E69E9840];
  anchorsCopy = anchors;
  if (self->_allowPoseGraphUpdates && self->_slamSessionHandle)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = anchorsCopy;
    v4 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
    if (v4)
    {
      v31 = *v33;
      do
      {
        v5 = 0;
        do
        {
          if (*v33 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v6 = *(*(&v32 + 1) + 8 * v5);
          identifier = [v6 identifier];
          ar_createCFUUIDRef = [identifier ar_createCFUUIDRef];

          v9 = CV3DSLAMSessionRemoveAnchor();
          v10 = v9;
          if ((v9 & 1) == 0)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v11 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v12 = _ARLogTechnique(v9);
            v13 = v12;
            if (v11 == 1)
            {
              if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
              {
                v14 = objc_opt_class();
                v15 = NSStringFromClass(v14);
                *buf = 138543874;
                v37 = v15;
                v38 = 2048;
                selfCopy3 = self;
                v40 = 2112;
                v41 = 0;
                _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error removing anchor: %@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              v16 = objc_opt_class();
              v17 = NSStringFromClass(v16);
              *buf = 138543874;
              v37 = v17;
              v38 = 2048;
              selfCopy3 = self;
              v40 = 2112;
              v41 = 0;
              _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error removing anchor: %@", buf, 0x20u);
            }
          }

          v18 = _ARLogTechnique(v9);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = objc_opt_class();
            v20 = NSStringFromClass(v19);
            identifier2 = [v6 identifier];
            [v6 referenceTransform];
            v26 = ARMatrix4x4Description(0, v22, v23, v24, v25);
            v27 = v26;
            *buf = 138544386;
            v28 = @"FAILED";
            if (v10)
            {
              v28 = @"SUCESS";
            }

            v37 = v20;
            v38 = 2048;
            selfCopy3 = self;
            v40 = 2112;
            v41 = identifier2;
            v42 = 2112;
            v43 = v26;
            v44 = 2112;
            v45 = v28;
            _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: CV3DVIORemoveAnchor: %@ - %@, %@", buf, 0x34u);
          }

          CFRelease(ar_createCFUUIDRef);
          ++v5;
        }

        while (v4 != v5);
        v4 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
      }

      while (v4);
    }
  }
}

- (void)addObserver:(id)observer
{
  observersSemaphore = self->_observersSemaphore;
  observerCopy = observer;
  dispatch_semaphore_wait(observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  v6 = self->_observersSemaphore;

  dispatch_semaphore_signal(v6);
}

- (void)removeObserver:(id)observer
{
  observersSemaphore = self->_observersSemaphore;
  observerCopy = observer;
  dispatch_semaphore_wait(observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  v6 = self->_observersSemaphore;

  dispatch_semaphore_signal(v6);
}

- (id)getObservers
{
  dispatch_semaphore_wait(self->_observersSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  allObjects = [(NSHashTable *)self->_observers allObjects];
  dispatch_semaphore_signal(self->_observersSemaphore);

  return allObjects;
}

- (void)pushCollaborationData:(id)data
{
  v139 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  isCollaborationEnabled = [mutableOptions isCollaborationEnabled];

  v121.columns[1].i64[1] = self;
  if (isCollaborationEnabled)
  {
    dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    v126 = 0;
    if ([dataCopy vioDataType] == 7)
    {
      v124 = 0;
      v134 = 0;
      v132 = 0u;
      v133 = 0u;
      memset(v131, 0, sizeof(v131));
      v128 = 0;
      v129 = 0;
      v130 = 0;
      vioData = [dataCopy vioData];
      CMPoseAnchorTransformation = CV3DSLAMSessionGetCMPoseAnchorTransformation();

      if (CMPoseAnchorTransformation)
      {
        *v10.i64 = ARMatrix4x4MakeRowMajorTransform(v131);
        v121.columns[0] = v10;
        v114 = v12;
        v117 = v11;
        v111 = v13;
        *v14.i64 = ARVisionToRenderingCoordinateTransform();
        v109 = v15;
        v110 = v14;
        v107 = v17;
        v108 = v16;
        *v18.i64 = ARRenderingToVisionCoordinateTransform();
        v103 = v19;
        v104 = v18;
        v105 = v21;
        v106 = v20;
        v140.columns[0] = v121.columns[0];
        v140.columns[2] = v114;
        v140.columns[1] = v117;
        v140.columns[3] = v111;
        v141 = __invert_f4(v140);
        v23 = 0;
        v135 = v141;
        do
        {
          *&buf[v23 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v110, COERCE_FLOAT(*&v135.columns[v23])), v109, *v135.columns[v23].f32, 1), v108, v135.columns[v23], 2), v107, v135.columns[v23], 3);
          ++v23;
        }

        while (v23 != 4);
        v24 = 0;
        v25 = *buf;
        v26 = *&buf[16];
        v27 = v137;
        v28 = v138;
        v135.columns[0] = v104;
        v135.columns[1] = v103;
        v135.columns[2] = v106;
        v135.columns[3] = v105;
        do
        {
          *&buf[v24 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, COERCE_FLOAT(*&v135.columns[v24])), v26, *v135.columns[v24].f32, 1), v27, v135.columns[v24], 2), v28, v135.columns[v24], 3);
          ++v24;
        }

        while (v24 != 4);
        v121.columns[0] = *buf;
        v115 = v137;
        v118 = *&buf[16];
        v112 = v138;
        if (ARLinkedOnOrAfterAzul(v22))
        {
          *v29.i64 = simd_matrix4x4(_PromotedConst);
          v30 = 0;
          v135.columns[0] = v29;
          v135.columns[1] = v31;
          v135.columns[2] = v32;
          v135.columns[3] = v33;
          do
          {
            *&buf[v30 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121.columns[0], COERCE_FLOAT(*&v135.columns[v30])), v118, *v135.columns[v30].f32, 1), v115, v135.columns[v30], 2), v112, v135.columns[v30], 3);
            ++v30;
          }

          while (v30 != 4);
          v121.columns[0] = *&buf[16];
          v116 = v137;
          v119 = *buf;
          v113 = v138;
          *v34.i64 = simd_matrix4x4(_PromotedConst_592);
          v35 = 0;
          v135.columns[0] = v34;
          v135.columns[1] = v36;
          v135.columns[2] = v37;
          v135.columns[3] = v38;
          do
          {
            *&buf[v35 * 16] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, COERCE_FLOAT(*&v135.columns[v35])), v121.columns[0], *v135.columns[v35].f32, 1), v116, v135.columns[v35], 2), v113, v135.columns[v35], 3);
            ++v35;
          }

          while (v35 != 4);
          v121.columns[0].i64[0] = *buf;
          v115.i64[0] = v137.i64[0];
          v118.i64[0] = *&buf[16];
          v112.i64[0] = v138.i64[0];
        }

        v135.columns[0] = v125;
        v39 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&v135];
        v40 = [(ARAnchor *)[ARParticipantAnchor alloc] initWithIdentifier:v39 transform:*v121.columns[0].i64, *v118.i64, *v115.i64, *v112.i64];
        [(ARAnchor *)v40 setSessionIdentifier:v39];
        dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        [(NSMutableSet *)self->_participantAnchors removeObject:v40];
        v41 = _ARLogTechnique([(NSMutableSet *)self->_participantAnchors addObject:v40]);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v42 = objc_opt_class();
          v43 = NSStringFromClass(v42);
          v44 = [(ARAnchor *)v40 description];
          *buf = 138543874;
          *&buf[4] = v43;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 2112;
          *&buf[24] = v44;
          _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Participant anchor updated: %@", buf, 0x20u);
        }

        dispatch_semaphore_signal(self->_resultSemaphore);
      }

      else
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
        }

        v84 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v85 = _ARLogTechnique(v9);
        v86 = v85;
        if (v84 == 1)
        {
          if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
          {
            v87 = objc_opt_class();
            v88 = NSStringFromClass(v87);
            *buf = 138543874;
            *&buf[4] = v88;
            *&buf[12] = 2048;
            *&buf[14] = self;
            *&buf[22] = 2112;
            *&buf[24] = v126;
            _os_log_impl(&dword_1C241C000, v86, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error getting pose for participant anchor: %@", buf, 0x20u);
          }
        }

        else if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
        {
          v96 = objc_opt_class();
          v97 = NSStringFromClass(v96);
          *buf = 138543874;
          *&buf[4] = v97;
          *&buf[12] = 2048;
          *&buf[14] = self;
          *&buf[22] = 2112;
          *&buf[24] = v126;
          _os_log_impl(&dword_1C241C000, v86, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error getting pose for participant anchor: %@", buf, 0x20u);
        }
      }

      selfCopy = self;
    }

    else
    {
      [dataCopy vioDataType];
      vioData2 = [dataCopy vioData];
      [vioData2 length];
      [dataCopy vioSessionID];
      kdebug_trace();

      anchors = [dataCopy anchors];

      if (anchors)
      {
        anchorsReceived = self->_anchorsReceived;
        anchors2 = [dataCopy anchors];
        [(NSMutableSet *)anchorsReceived minusSet:anchors2];

        v56 = self->_anchorsReceived;
        anchors3 = [dataCopy anchors];
        [(NSMutableSet *)v56 unionSet:anchors3];

        v59 = _ARLogTechnique(v58);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v60 = objc_opt_class();
          v61 = NSStringFromClass(v60);
          anchors4 = [dataCopy anchors];
          v63 = [anchors4 count];
          v64 = [(NSMutableSet *)self->_anchorsReceived count];
          *v131 = 138544130;
          *&v131[4] = v61;
          *&v131[12] = 2048;
          *&v131[14] = self;
          *&v131[22] = 2048;
          *&v131[24] = v63;
          LOWORD(v132) = 2048;
          *(&v132 + 2) = v64;
          _os_log_impl(&dword_1C241C000, v59, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: collaboration data received with anchors: %tu => %tu", v131, 0x2Au);
        }

        v122 = 0u;
        v123 = 0u;
        memset(&v121.columns[2], 0, 32);
        v65 = self->_anchorsReceived;
        v66 = [(NSMutableSet *)v65 countByEnumeratingWithState:&v121.columns[2] objects:v127 count:16];
        v67 = v66;
        if (v66)
        {
          v68 = *v121.columns[3].i64[0];
          do
          {
            v69 = 0;
            do
            {
              if (*v121.columns[3].i64[0] != v68)
              {
                objc_enumerationMutation(v65);
              }

              v70 = *(v121.columns[2].i64[1] + 8 * v69);
              v71 = _ARLogTechnique(v66);
              if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
              {
                v72 = objc_opt_class();
                v73 = NSStringFromClass(v72);
                v74 = [v70 description];
                *v131 = 138543874;
                *&v131[4] = v73;
                *&v131[12] = 2048;
                *&v131[14] = self;
                *&v131[22] = 2112;
                *&v131[24] = v74;
                _os_log_impl(&dword_1C241C000, v71, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: received anchor: %@", v131, 0x20u);
              }

              ++v69;
            }

            while (v67 != v69);
            v66 = [(NSMutableSet *)v65 countByEnumeratingWithState:&v121.columns[2] objects:v127 count:16];
            v67 = v66;
          }

          while (v66);
        }
      }

      [dataCopy vioDataType];
      vioData3 = [dataCopy vioData];
      v76 = CV3DSLAMSessionPushCMData();

      if (v76)
      {
        v78 = _ARLogTechnique(v77);
        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
        {
          v79 = objc_opt_class();
          v80 = NSStringFromClass(v79);
          vioData4 = [dataCopy vioData];
          v82 = [vioData4 length];
          v83 = NSStringFromSLAMCMDataType([dataCopy vioDataType]);
          *v131 = 138544130;
          *&v131[4] = v80;
          *&v131[12] = 2048;
          *&v131[14] = self;
          *&v131[22] = 2048;
          *&v131[24] = v82;
          LOWORD(v132) = 2112;
          *(&v132 + 2) = v83;
          _os_log_impl(&dword_1C241C000, v78, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: collaboration data pushed to VIO: %lu, %@", v131, 0x2Au);
        }
      }

      else
      {
        selfCopy3 = self;
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
          selfCopy3 = self;
        }

        v90 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v91 = _ARLogTechnique(v77);
        v78 = v91;
        if (v90 == 1)
        {
          if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
          {
            v92 = objc_opt_class();
            v93 = NSStringFromClass(v92);
            slamSessionHandle = selfCopy3->_slamSessionHandle;
            v95 = v126;
            *v131 = 138544130;
            *&v131[4] = v93;
            *&v131[12] = 2048;
            *&v131[14] = selfCopy3;
            *&v131[22] = 2048;
            *&v131[24] = slamSessionHandle;
            LOWORD(v132) = 2112;
            *(&v132 + 2) = v126;
            _os_log_impl(&dword_1C241C000, v78, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: error pushing SLAM data %p, %@", v131, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
        {
          v99 = objc_opt_class();
          v100 = NSStringFromClass(v99);
          v101 = selfCopy3->_slamSessionHandle;
          v102 = v126;
          *v131 = 138544130;
          *&v131[4] = v100;
          *&v131[12] = 2048;
          *&v131[14] = selfCopy3;
          *&v131[22] = 2048;
          *&v131[24] = v101;
          LOWORD(v132) = 2112;
          *(&v132 + 2) = v126;
          _os_log_impl(&dword_1C241C000, v78, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: error pushing SLAM data %p, %@", v131, 0x2Au);
        }
      }

      [dataCopy vioSessionID];
      selfCopy = v121.columns[1].i64[1];
      kdebug_trace();
    }

    dispatch_semaphore_signal(selfCopy->_sessionHandleStateSemaphore);
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
    }

    v45 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v46 = _ARLogTechnique(v6);
    v47 = v46;
    if (v45 == 1)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *v131 = 138543618;
        *&v131[4] = v49;
        *&v131[12] = 2048;
        *&v131[14] = self;
        _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: collaboration data cannot be pushed because the feature is disabled.", v131, 0x16u);
      }
    }

    else if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *v131 = 138543618;
      *&v131[4] = v51;
      *&v131[12] = 2048;
      *&v131[14] = self;
      _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: collaboration data cannot be pushed because the feature is disabled.", v131, 0x16u);
    }
  }
}

- (void)_reportCollaborationData:(id)data type:(unsigned __int8)type metadata:(const void *)metadata
{
  typeCopy = type;
  v49 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = _ARLogTechnique(dataCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v12 = [dataCopy length];
    v13 = NSStringFromSLAMCMDataType(typeCopy);
    *buf = 138544386;
    *&buf[4] = v11;
    *&buf[12] = 2048;
    *&buf[14] = self;
    v43 = 2048;
    v44 = v12;
    v45 = 2112;
    v46 = v13;
    v47 = 2048;
    metadataCopy = metadata;
    _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: collaboration data received from VIO: %lu, %@, %p", buf, 0x34u);
  }

  v14 = [[ARCollaborationData alloc] initWithVIOData:dataCopy type:typeCopy sessionID:[(ARWorldTrackingTechnique *)self vioSessionIdentifier]];
  if (typeCopy != 1)
  {
    goto LABEL_19;
  }

  v40 = 0;
  v39 = 0uLL;
  v38 = 0;
  v15 = MEMORY[0x1C6919870](metadata, &v40, &v39, &v38);
  if (!v15)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v17 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v18 = _ARLogTechnique(v15);
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = v38;
        *buf = 138543874;
        *&buf[4] = v21;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v43 = 2112;
        v44 = v38;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to parse anchor metadata: %@", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = v38;
      *buf = 138543874;
      *&buf[4] = v27;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v43 = 2112;
      v44 = v38;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to parse anchor metadata: %@", buf, 0x20u);
    }

    goto LABEL_19;
  }

  if (v40 == 1)
  {
    *buf = v39;
    v16 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:buf];
    [(ARCollaborationData *)v14 setAnchorIdentifier:v16];

LABEL_19:
    [(ARWorldTrackingTechnique *)self getObservers];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v29 = v35 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v34 objects:v41 count:16];
    if (v30)
    {
      v31 = *v35;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v35 != v31)
          {
            objc_enumerationMutation(v29);
          }

          v33 = *(*(&v34 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            [v33 technique:self didOutputCollaborationData:{v14, v34}];
          }
        }

        v30 = [v29 countByEnumeratingWithState:&v34 objects:v41 count:16];
      }

      while (v30);
    }

    goto LABEL_29;
  }

  v23 = _ARLogTechnique(v15);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    *buf = 138543618;
    *&buf[4] = v25;
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Not reporting non-user created anchor.", buf, 0x16u);
  }

LABEL_29:
}

- (void)removePlanesByUUIDs:(id)ds
{
  dsCopy = ds;
  if (self->_planeDetectionSession.__ptr_)
  {
    v5 = dsCopy;
    os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
    PlaneDetectionSession::ErasePlanes(self->_planeDetectionSession.__ptr_, v5);
    os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
    dsCopy = v5;
  }
}

- (int)extentCheckFromConfiguration
{
  if (([(ARWorldTrackingOptions *)self->_mutableOptions planeDetection]& 0x200) != 0)
  {
    return 4;
  }

  else
  {
    return 2;
  }
}

- (id)raycast:(id)raycast
{
  raycastCopy = raycast;
  if (self->_raycastSession.__ptr_)
  {
    ARInitializeHitTestIntentWithExtentCheck(v12, raycastCopy, 0, [(ARWorldTrackingTechnique *)self extentCheckFromConfiguration], *self->_anon_360, *&self->_anon_360[16], *&self->_anon_360[32], *&self->_anon_360[48]);
    ptr = self->_raycastSession.__ptr_;
    [(ARWorldTrackingTechnique *)self referenceOriginTransform];
    v10 = RaycastSession::PerformHitTest(ptr, v12, raycastCopy, v6, v7, v8, v9);
    ARReleaseHitTestIntent(v12);
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  return v10;
}

- (id)trackedRaycast:(id)raycast updateHandler:(id)handler
{
  raycastCopy = raycast;
  handlerCopy = handler;
  if (self->_raycastSession.__ptr_)
  {
    ARInitializeHitTestIntentWithExtentCheck(v12, raycastCopy, 1, [(ARWorldTrackingTechnique *)self extentCheckFromConfiguration], *self->_anon_360, *&self->_anon_360[16], *&self->_anon_360[32], *&self->_anon_360[48]);
    v8 = RaycastSession::PerformHitTest(self->_raycastSession.__ptr_, v12, raycastCopy, *self->_anon_360, *&self->_anon_360[16], *&self->_anon_360[32], *&self->_anon_360[48]);
    if ([v8 count])
    {
      v9 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:v13];
      ARReleaseHitTestIntent(v12);
      v10 = [[ARTrackedRaycast alloc] initWithIdentifier:v9 ray:raycastCopy worldTrackingTechnique:self updateHandler:handlerCopy];
      [(ARTrackedRaycastPostProcessor *)self->_trackedRaycastPostProcessor addTrackedRaycast:v10 andProcessInitialResults:v8];
    }

    else
    {
      ARReleaseHitTestIntent(v12);
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)stopRaycast:(id)raycast
{
  raycastCopy = raycast;
  trackedRaycastPostProcessor = self->_trackedRaycastPostProcessor;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__ARWorldTrackingTechnique_stopRaycast___block_invoke;
  v7[3] = &unk_1E817C820;
  v8 = raycastCopy;
  selfCopy = self;
  v6 = raycastCopy;
  [(ARTrackedRaycastPostProcessor *)trackedRaycastPostProcessor performBlockWhileLockingRaycasts:v7];
}

void __40__ARWorldTrackingTechnique_stopRaycast___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) identifier];
  v2 = [v5 ar_createCFUUIDRef];

  RaycastSession::StopRaycast(*(*(a1 + 40) + 832), v2);
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 40) + 816);
  v6 = [v3 identifier];
  [v4 removeTrackedRaycastWithIdentifier:?];
}

- (void)invalidateAllRaycasts
{
  trackedRaycastPostProcessor = self->_trackedRaycastPostProcessor;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__ARWorldTrackingTechnique_invalidateAllRaycasts__block_invoke;
  v3[3] = &unk_1E817C848;
  v3[4] = self;
  [(ARTrackedRaycastPostProcessor *)trackedRaycastPostProcessor performBlockWhileLockingRaycasts:v3];
}

- (void)stopAllRaycasts
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  trackedRaycasts = [(ARTrackedRaycastPostProcessor *)self->_trackedRaycastPostProcessor trackedRaycasts];
  v3 = [trackedRaycasts countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v3)
  {
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(trackedRaycasts);
        }

        [*(*(&v6 + 1) + 8 * v5++) stopTracking];
      }

      while (v3 != v5);
      v3 = [trackedRaycasts countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (void)didUpdateRaycastResult:(CV3DHitTestResults *)result
{
  v14 = objc_opt_new();
  var1 = result->var1;
  if (var1)
  {
    v6 = 0;
    for (i = 0; i < var1; ++i)
    {
      var0 = result->var0;
      if (result->var0[v6].var0)
      {
        v9 = [(ARWorldTrackingTechnique *)self raycastResultFrom:&var0[v6]];
        v10 = [MEMORY[0x1E696AFB0] ar_UUIDWithCFUUIDRef:var0[v6].var0];
        v11 = [v14 objectForKeyedSubscript:v10];

        if (!v11)
        {
          v12 = objc_opt_new();
          [v14 setObject:v12 forKeyedSubscript:v10];
        }

        v13 = [v14 objectForKeyedSubscript:v10];
        [v13 addObject:v9];

        var1 = result->var1;
      }

      ++v6;
    }
  }

  [(ARTrackedRaycastPostProcessor *)self->_trackedRaycastPostProcessor processUpdatedResults:v14];
  CV3DReleaseHitTestResults();
}

- (void)_handleRaycastResultCallback:(CV3DRaycastResultMap *)callback
{
  [(ARWorldTrackingTechnique *)self referenceOriginTransform];
  v5 = ARRaycastResultsDictionaryFrom(callback, v7);
  if (v5)
  {
    [(ARTrackedRaycastPostProcessor *)self->_trackedRaycastPostProcessor processUpdatedResults:v5];
  }
}

- (id)raycastResultFrom:(CV3DHitTestResult *)from
{
  [(ARWorldTrackingTechnique *)self referenceOriginTransform];

  return ARRaycastResultFrom(from, v4);
}

- (void)_updateVIOLineDetectionPolicy
{
  options = [(ARWorldTrackingTechnique *)self options];
  if ([options planeEstimationShouldUseJasperData])
  {
  }

  else
  {
    options2 = [(ARWorldTrackingTechnique *)self options];
    planeDetection = [options2 planeDetection];

    if (planeDetection)
    {
      v6 = MEMORY[0x1E698BD38];
      goto LABEL_6;
    }
  }

  v6 = MEMORY[0x1E698BD40];
LABEL_6:
  slamSessionHandle = self->_slamSessionHandle;
  v8 = *v6;

  MEMORY[0x1EEDECFA8](slamSessionHandle, v8, 0);
}

- (int64_t)_initializeSLAMAndPredictorHandle
{
  v124 = *MEMORY[0x1E69E9840];
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  [mutableOptions initialWorldMap];
  v3 = selfCopy3 = self;

  if (v3)
  {
    self->_relocalizationState = 2;
  }

  kdebug_trace();
  v118 = 0;
  v4 = [mutableOptions createSLAMCalibration:&v118];
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v115 = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke;
  v116 = &__block_descriptor_40_e5_v8__0l;
  v117 = v118;
  if (v4)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v6 = ARKitCoreBundle(dictionary);
    v7 = [v6 localizedStringForKey:@"Unable to initialize tracking." value:&stru_1F4208A80 table:@"Localizable"];
    [dictionary setObject:v7 forKeyedSubscript:*MEMORY[0x1E696A588]];

    v8 = ARErrorWithCodeAndUserInfo(200, dictionary);
    [(ARWorldTrackingTechnique *)self _didFailWithError:v8];
  }

  else
  {
    v113 = 0;
    [mutableOptions createSLAMConfig:&v113 calibration:?];
    v108 = 0;
    v109[0] = MEMORY[0x1E69E9820];
    v109[1] = 3221225472;
    v110 = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_2;
    v111 = &__block_descriptor_40_e5_v8__0l;
    v112 = v113;
    v9 = CV3DSLAMConfigAsString();
    if (!v9)
    {
      v10 = _ARLogTechnique(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
        slamConfiguration = [mutableOptions2 slamConfiguration];
        *buf = 138543874;
        *&buf[4] = v12;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v120 = 2112;
        v121 = slamConfiguration;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Created SLAM configuration with configuration preset '%@'. SLAM config string:", buf, 0x20u);
      }

      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v108];
      ARLogDebugNoClassLongMessage(v15, @"ARWorldTrackingTechnique");

      free(v108);
      selfCopy3 = self;
    }

    v107 = 0;
    v16 = CV3DSLAMSessionCreate();
    selfCopy3->_slamSessionHandle = v16;
    if (v16)
    {
      v17 = CV3DPosePredictionConfigCreate();
      v103[0] = MEMORY[0x1E69E9820];
      v103[1] = 3221225472;
      v104 = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_196;
      v105 = &__block_descriptor_40_e5_v8__0l;
      v106 = v17;
      v18 = CV3DPosePredictionCreate();
      v19 = v18;
      if (v18)
      {
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
          selfCopy3 = self;
        }

        v20 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v21 = _ARLogGeneral(v18);
        v22 = v21;
        if (v20 == 1)
        {
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v23 = objc_opt_class();
            v24 = NSStringFromClass(v23);
            *buf = 138543874;
            *&buf[4] = v24;
            *&buf[12] = 2048;
            *&buf[14] = selfCopy3;
            v120 = 1024;
            LODWORD(v121) = v19;
            _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: CV3DPosePredictionCreate error: %d", buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v38 = objc_opt_class();
          v39 = NSStringFromClass(v38);
          *buf = 138543874;
          *&buf[4] = v39;
          *&buf[12] = 2048;
          *&buf[14] = selfCopy3;
          v120 = 1024;
          LODWORD(v121) = v19;
          _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: CV3DPosePredictionCreate error: %d", buf, 0x1Cu);
        }
      }

      else
      {
        v31 = CV3PosePredictionInitialize();
        if (!v31)
        {
          kdebug_trace();
          v101 = 0;
          v102 = 0;
          SessionID = CV3DSLAMSessionGetSessionID();
          if (SessionID)
          {
            selfCopy3->_vioSessionIdentifier = v102;
            v48 = _ARLogTechnique(SessionID);
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = objc_opt_class();
              v50 = NSStringFromClass(v49);
              *buf = 138543874;
              *&buf[4] = v50;
              *&buf[12] = 2048;
              *&buf[14] = selfCopy3;
              v120 = 2048;
              v121 = v102;
              _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_INFO, "%{public}@ <%p>: initialized with session identifier %llX", buf, 0x20u);
            }
          }

          else
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
              selfCopy3 = self;
            }

            v59 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v60 = _ARLogTechnique(SessionID);
            v48 = v60;
            if (v59 == 1)
            {
              if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
              {
                v61 = objc_opt_class();
                v62 = NSStringFromClass(v61);
                *buf = 138543874;
                *&buf[4] = v62;
                *&buf[12] = 2048;
                *&buf[14] = selfCopy3;
                v120 = 2112;
                v121 = v107;
                _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: unable to read VIO session identifier: %@", buf, 0x20u);
              }
            }

            else if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
            {
              v63 = objc_opt_class();
              v64 = NSStringFromClass(v63);
              *buf = 138543874;
              *&buf[4] = v64;
              *&buf[12] = 2048;
              *&buf[14] = selfCopy3;
              v120 = 2112;
              v121 = v107;
              _os_log_impl(&dword_1C241C000, v48, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: unable to read VIO session identifier: %@", buf, 0x20u);
            }
          }

          objc_initWeak(&location, self);
          v101 = 0;
          v98[1] = MEMORY[0x1E69E9820];
          v98[2] = 3221225472;
          v98[3] = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_197;
          v98[4] = &unk_1E817C870;
          v93 = &v99;
          objc_copyWeak(&v99, &location);
          v65 = CV3DSLAMSetNewStateBlock();
          if ((v65 & 1) == 0)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v66 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v67 = _ARLogTechnique(v65);
            v68 = v67;
            if (v66 == 1)
            {
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                v69 = objc_opt_class();
                v70 = NSStringFromClass(v69);
                slamSessionHandle = self->_slamSessionHandle;
                v72 = v101;
                *buf = 138544130;
                *&buf[4] = v70;
                *&buf[12] = 2048;
                *&buf[14] = self;
                v120 = 2048;
                v121 = slamSessionHandle;
                v122 = 2112;
                v123 = v101;
                _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: error setting metadata callback (%p): %@", buf, 0x2Au);
              }
            }

            else if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v73 = objc_opt_class();
              v74 = NSStringFromClass(v73);
              v75 = self->_slamSessionHandle;
              v76 = v101;
              *buf = 138544130;
              *&buf[4] = v74;
              *&buf[12] = 2048;
              *&buf[14] = self;
              v120 = 2048;
              v121 = v75;
              v122 = 2112;
              v123 = v101;
              _os_log_impl(&dword_1C241C000, v68, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: error setting metadata callback (%p): %@", buf, 0x2Au);
            }

            v77 = objc_loadWeakRetained(&location);
            v78 = ARErrorWithCodeAndUserInfo(200, 0);
            [v77 _didFailWithError:{v78, &v99}];
          }

          objc_destroyWeak(v93);
          v101 = 0;
          v97[2] = MEMORY[0x1E69E9820];
          v97[3] = 3221225472;
          v97[4] = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_199;
          v97[5] = &unk_1E817C898;
          objc_copyWeak(v98, &location);
          v79 = CV3DSLAMSetErrorBlock();
          if (v101)
          {
            if (ARShouldUseLogTypeError(void)::onceToken != -1)
            {
              [ARWorldTrackingTechnique processData:];
            }

            v80 = ARShouldUseLogTypeError(void)::internalOSVersion;
            v81 = _ARLogTechnique(v79);
            v82 = v81;
            if (v80 == 1)
            {
              if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
              {
                v83 = objc_opt_class();
                v84 = NSStringFromClass(v83);
                v85 = self->_slamSessionHandle;
                v86 = v101;
                *buf = 138544130;
                *&buf[4] = v84;
                *&buf[12] = 2048;
                *&buf[14] = self;
                v120 = 2048;
                v121 = v85;
                v122 = 2112;
                v123 = v101;
                _os_log_impl(&dword_1C241C000, v82, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: error setting error callback (%p): %@", buf, 0x2Au);
              }
            }

            else if (os_log_type_enabled(v81, OS_LOG_TYPE_INFO))
            {
              v87 = objc_opt_class();
              v88 = NSStringFromClass(v87);
              v89 = self->_slamSessionHandle;
              v90 = v101;
              *buf = 138544130;
              *&buf[4] = v88;
              *&buf[12] = 2048;
              *&buf[14] = self;
              v120 = 2048;
              v121 = v89;
              v122 = 2112;
              v123 = v101;
              _os_log_impl(&dword_1C241C000, v82, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: error setting error callback (%p): %@", buf, 0x2Au);
            }

            v91 = objc_loadWeakRetained(&location);
            v92 = ARErrorWithCodeAndUserInfo(200, 0);
            [v91 _didFailWithError:{v92, v98}];
          }

          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 3221225472;
          v96[2] = __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_201;
          v96[3] = &unk_1E817C8C0;
          objc_copyWeak(v97, &location);
          v97[1] = MEMORY[0x1C691B4C0](v96);
          [(ARWorldTrackingTechnique *)self deterministicMode];
          std::allocate_shared[abi:ne200100]<RaycastSession,std::allocator<RaycastSession>,CV3DSLAMSession *&,void({block_pointer} {__strong}&)(CV3DRaycastResultMap const*),BOOL,0>();
        }

        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARWorldTrackingTechnique processData:];
        }

        v32 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v33 = _ARLogTechnique(v31);
        v34 = v33;
        if (v32 == 1)
        {
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v35 = objc_opt_class();
            v36 = NSStringFromClass(v35);
            predictorHandle = self->_predictorHandle;
            *buf = 138544130;
            *&buf[4] = v36;
            *&buf[12] = 2048;
            *&buf[14] = self;
            v120 = 2048;
            v121 = predictorHandle;
            v122 = 2112;
            v123 = v107;
            _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error initializing predictor handle (%p): %@", buf, 0x2Au);
          }
        }

        else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          v51 = objc_opt_class();
          v52 = NSStringFromClass(v51);
          v53 = self->_predictorHandle;
          *buf = 138544130;
          *&buf[4] = v52;
          *&buf[12] = 2048;
          *&buf[14] = self;
          v120 = 2048;
          v121 = v53;
          v122 = 2112;
          v123 = v107;
          _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error initializing predictor handle (%p): %@", buf, 0x2Au);
        }

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        v55 = ARKitCoreBundle(dictionary2);
        v56 = [v55 localizedStringForKey:@"Unable to initialize tracking." value:&stru_1F4208A80 table:@"Localizable"];
        [dictionary2 setObject:v56 forKeyedSubscript:*MEMORY[0x1E696A588]];

        v57 = ARErrorWithCodeAndUserInfo(200, dictionary2);
        [(ARWorldTrackingTechnique *)self _didFailWithError:v57];
      }

      v104(v103);
    }

    else
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARWorldTrackingTechnique processData:];
      }

      v25 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v26 = _ARLogTechnique(v16);
      v27 = v26;
      if (v25 == 1)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = objc_opt_class();
          v29 = NSStringFromClass(v28);
          v30 = self->_slamSessionHandle;
          *buf = 138544130;
          *&buf[4] = v29;
          *&buf[12] = 2048;
          *&buf[14] = self;
          v120 = 2048;
          v121 = v30;
          v122 = 2112;
          v123 = v107;
          _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error initializing SLAM handle (%p): %@", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v40 = objc_opt_class();
        v41 = NSStringFromClass(v40);
        v42 = self->_slamSessionHandle;
        *buf = 138544130;
        *&buf[4] = v41;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v120 = 2048;
        v121 = v42;
        v122 = 2112;
        v123 = v107;
        _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error initializing SLAM handle (%p): %@", buf, 0x2Au);
      }

      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      v44 = ARKitCoreBundle(dictionary3);
      v45 = [v44 localizedStringForKey:@"Unable to initialize tracking." value:&stru_1F4208A80 table:@"Localizable"];
      [dictionary3 setObject:v45 forKeyedSubscript:*MEMORY[0x1E696A588]];

      v46 = ARErrorWithCodeAndUserInfo(200, dictionary3);
      [(ARWorldTrackingTechnique *)self _didFailWithError:v46];
    }

    v110(v109);
  }

  v115(v114);

  return 4;
}

void __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_197(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained onMetadataCallback:a2];
}

void __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_199(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSLAMError:a2];
}

void __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_201(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRaycastResultCallback:a2];
}

double __61__ARWorldTrackingTechnique__initializeSLAMAndPredictorHandle__block_invoke_203(uint64_t a1, uint64_t a2, CFDataRef theData, uint64_t a4)
{
  CFDataGetLength(theData);
  kdebug_trace();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportCollaborationData:theData type:a2 metadata:a4];

  kdebug_trace();
  return result;
}

- (unsigned)CV3DSLAMJasperPointCloudProjectorModeFromAVTimeOfFlightProjectorMode:(int64_t)mode
{
  v4 = *MEMORY[0x1E69E9840];
  v20 = *MEMORY[0x1E69E9840];
  if (mode <= 2)
  {
    if (mode)
    {
      if (mode == 1)
      {
        v4 = MEMORY[0x1E698BD28];
        goto LABEL_19;
      }

      if (mode == 2)
      {
        v4 = MEMORY[0x1E698BD30];
LABEL_19:
        LOBYTE(v4) = *v4;
        return v4;
      }

      return v4;
    }

LABEL_18:
    v4 = MEMORY[0x1E698BD20];
    goto LABEL_19;
  }

  LOBYTE(v4) = mode - 3;
  if ((mode - 3) < 2)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
    }

    v6 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v7 = _ARLogTechnique(self);
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v14 = 138543874;
        v15 = v10;
        v16 = 2048;
        selfCopy2 = self;
        v18 = 2048;
        modeCopy2 = mode;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error, the following projector mode is not supported by CV3D (enum value %ld)", &v14, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = 138543874;
      v15 = v12;
      v16 = 2048;
      selfCopy2 = self;
      v18 = 2048;
      modeCopy2 = mode;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error, the following projector mode is not supported by CV3D (enum value %ld)", &v14, 0x20u);
    }

    goto LABEL_18;
  }

  if (mode == 6)
  {
    v4 = MEMORY[0x1E698BD18];
    goto LABEL_19;
  }

  return v4;
}

- (void)_removeAllMeshAnchors
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Removing all mesh anchors", &v7, 0x16u);
  }

  v6 = +[ARSpatialMappingResultData emptyResultData];
  os_unfair_lock_lock(&self->_latestSpatialMappingDataLock);
  [(NSMutableArray *)self->_latestSpatialMappingData addObject:v6];
  os_unfair_lock_unlock(&self->_latestSpatialMappingDataLock);
  os_unfair_lock_lock(&self->_spatialMappingPointCloudsLock);
  [(NSMutableDictionary *)self->_spatialMappingPointClouds removeAllObjects];
  os_unfair_lock_unlock(&self->_spatialMappingPointCloudsLock);
}

- (void)_setupSceneReconstruction
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v13 = 138543618;
    v14 = v5;
    v15 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Start scene reconstruction", &v13, 0x16u);
  }

  v6 = [ARSceneReconstructionHandler alloc];
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  sceneReconstruction = [mutableOptions sceneReconstruction];
  mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
  sceneReconstructionOptions = [mutableOptions2 sceneReconstructionOptions];
  v11 = [(ARSceneReconstructionHandler *)v6 initWithSceneReconstruction:sceneReconstruction options:sceneReconstructionOptions slamSessionHandle:self->_slamSessionHandle];
  sceneReconstructionHandler = self->_sceneReconstructionHandler;
  self->_sceneReconstructionHandler = v11;

  [(ARSceneReconstructionHandler *)self->_sceneReconstructionHandler setDelegate:self];
  [(ARWorldTrackingTechnique *)self _removeAllMeshAnchors];
}

- (void)_reconfigureSceneReconstruction
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v12 = 138543618;
    v13 = v5;
    v14 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Reconfiguring scene reconstruction", &v12, 0x16u);
  }

  sceneReconstructionHandler = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  sceneReconstruction = [mutableOptions sceneReconstruction];
  mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
  sceneReconstructionOptions = [mutableOptions2 sceneReconstructionOptions];
  v11 = [sceneReconstructionHandler reconfigureSceneReconstruction:sceneReconstruction options:sceneReconstructionOptions];

  if (v11 == 2)
  {
    [(ARWorldTrackingTechnique *)self _removeAllMeshAnchors];
  }
}

- (void)_startSceneReconstruction
{
  sceneReconstructionHandler = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];

  if (sceneReconstructionHandler)
  {
    [(ARWorldTrackingTechnique *)self _reconfigureSceneReconstruction];
  }

  else
  {
    [(ARWorldTrackingTechnique *)self _setupSceneReconstruction];
  }

  sceneReconstructionHandler2 = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  [sceneReconstructionHandler2 start];

  [(ARWorldTrackingTechnique *)self _configureMeshPlaneHarmonization];
}

- (void)resetSceneReconstruction
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543618;
    v8 = v5;
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Resetting scene reconstruction", &v7, 0x16u);
  }

  sceneReconstructionHandler = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  [sceneReconstructionHandler reset];

  [(ARWorldTrackingTechnique *)self _removeAllMeshAnchors];
}

- (void)_configureMeshPlaneHarmonization
{
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  if ([mutableOptions planeDetection])
  {
    v4 = 1;
  }

  else
  {
    mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
    v4 = ([mutableOptions2 planeDetection] >> 1) & 1;
  }

  sceneReconstructionHandler = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  [sceneReconstructionHandler meshPlaneHarmonizationShouldEnable:v4];
}

- (BOOL)querySceneReconstructionOccupancyWithPoints:(id)points callback:(id)callback
{
  pointsCopy = points;
  callbackCopy = callback;
  sceneReconstructionHandler = self->_sceneReconstructionHandler;
  if (sceneReconstructionHandler)
  {
    v9 = [(ARSceneReconstructionHandler *)sceneReconstructionHandler queryOccupancyWithPoints:pointsCopy callback:callbackCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)sceneReconstructionHandler:(id)handler didFailWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  errorCopy = error;
  v8 = _ARLogTechnique(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v12 = 138544130;
    v13 = v10;
    v14 = 2048;
    selfCopy = self;
    v16 = 2048;
    v17 = handlerCopy;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Scene reconstruction handler %p failed with error %@", &v12, 0x2Au);
  }

  v11 = ARErrorWithCodeAndUserInfo(200, 0);
  [(ARWorldTrackingTechnique *)self _didFailWithError:v11];
}

- (void)sceneReconstructionHandler:(id)handler didOutputMeshList:(CV3DReconMeshList *)list withTimestamp:(double)timestamp
{
  v8 = [ARSpatialMappingResultData alloc];
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  v10 = -[ARSpatialMappingResultData initWithMeshList:sceneReconstruction:timestamp:](v8, "initWithMeshList:sceneReconstruction:timestamp:", list, [mutableOptions sceneReconstruction], timestamp);

  os_unfair_lock_lock(&self->_latestSpatialMappingDataLock);
  [(NSMutableArray *)self->_latestSpatialMappingData addObject:v10];
  os_unfair_lock_unlock(&self->_latestSpatialMappingDataLock);
}

- (void)sceneReconstructionHandler:(id)handler didOutputKeyframeList:(CV3DReconKeyframeList *)list withTimestamp:(double)timestamp
{
  [(ARWorldTrackingTechnique *)self didReceiveKeyframesUpdatedCallback:list, timestamp];

  CV3DReconKeyframeListRelease();
}

- (void)_handlePlaneDetectionCallback:(CV3DPlaneDetectionPlaneList *)callback
{
  v22 = *MEMORY[0x1E69E9840];
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  trackedPlaneCallback = [mutableOptions trackedPlaneCallback];

  if (trackedPlaneCallback)
  {
    v7 = [[ARCV3DPlaneDetectionPlaneList alloc] initWithDetectionResult:callback];
    mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
    trackedPlaneCallback2 = [mutableOptions2 trackedPlaneCallback];
    (trackedPlaneCallback2)[2](trackedPlaneCallback2, v7);
  }

  os_unfair_lock_lock(&self->_raycastSessionLock);
  if (self->_raycastSession.__ptr_)
  {
    CV3DRaycastPushPlanes();
  }

  os_unfair_lock_unlock(&self->_raycastSessionLock);
  sceneReconstructionHandler = [(ARWorldTrackingTechnique *)self sceneReconstructionHandler];
  [sceneReconstructionHandler processPlaneList:callback];

  v11 = [[ARPlaneData alloc] initWithDetectionResult:callback detectionTypeMask:[(ARWorldTrackingOptions *)self->_mutableOptions planeDetection] sceneUnderstandingEnabled:[(ARWorldTrackingOptions *)self->_mutableOptions mlModelEnabled]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  getObservers = [(ARWorldTrackingTechnique *)self getObservers];
  v13 = [getObservers countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v13)
  {
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(getObservers);
        }

        v16 = *(*(&v17 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 technique:self didDetectPlane:v11 timestamp:0.0];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [getObservers countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }
}

- (void)_handleSingleShotPlaneDetectionCallback:(CV3DPlaneDetectionSingleShotPlaneList *)callback
{
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  singleShotPlaneCallback = [mutableOptions singleShotPlaneCallback];

  if (singleShotPlaneCallback)
  {
    v7 = [[ARCV3DPlaneDetectionSingleShotPlaneList alloc] initWithDetectionResult:callback];
    mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
    singleShotPlaneCallback2 = [mutableOptions2 singleShotPlaneCallback];
    (singleShotPlaneCallback2)[2](singleShotPlaneCallback2, v7);
  }

  CV3DPlaneDetectionSingleShotPlaneListRelease();
}

- (void)_initializeSurfaceDetection:(const PlaneDetectionConfiguration *)detection
{
  objc_initWeak(&location, self);
  os_unfair_lock_lock_with_options();
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  planeBundleAdjustmentEnabled = [mutableOptions planeBundleAdjustmentEnabled];

  if (planeBundleAdjustmentEnabled)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke;
    v10[3] = &unk_1E817C910;
    objc_copyWeak(&v11, &location);
    v12 = MEMORY[0x1C691B4C0](v10);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke_2;
    v8[3] = &unk_1E817C938;
    objc_copyWeak(v9, &location);
    v9[1] = MEMORY[0x1C691B4C0](v8);
    std::allocate_shared[abi:ne200100]<PlaneDetectionSession,std::allocator<PlaneDetectionSession>,CV3DSLAMSession *&,PlaneDetectionConfiguration const&,void({block_pointer} {__strong}&)(CV3DPlaneDetectionPlaneList const*),void({block_pointer} {__strong}&)(CV3DPlaneDetectionSingleShotPlaneList const*),0>();
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke_3;
  v6[3] = &unk_1E817C938;
  objc_copyWeak(&v7, &location);
  v12 = MEMORY[0x1C691B4C0](v6);
  std::allocate_shared[abi:ne200100]<PlaneDetectionSession,std::allocator<PlaneDetectionSession>,CV3DSLAMSession *&,PlaneDetectionConfiguration const&,void({block_pointer} {__strong}&)(CV3DPlaneDetectionPlaneList const*),0>();
}

void __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSingleShotPlaneDetectionCallback:a2];
}

void __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlaneDetectionCallback:a2];
}

void __56__ARWorldTrackingTechnique__initializeSurfaceDetection___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handlePlaneDetectionCallback:a2];
}

- (void)_resetSurfaceDetection
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = _ARLogTechnique(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = 138543618;
    v7 = v5;
    v8 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Resetting surface detection", &v6, 0x16u);
  }

  [(ARWorldTrackingTechnique *)self _initializeSurfaceDetection:&self->_surfaceDetectionParametrization];
}

- (int64_t)_mappingStatusFromMapSize:(int)size keyframeQuality:(int)quality isTrackingMap:(BOOL)map timestamp:(double)timestamp
{
  mapCopy = map;
  if (self->_previousKeyframeCount < size)
  {
    self->_previousKeyframeCount = size;
    if (quality)
    {
      self->_lastQualityKeyframeTimestamp = timestamp;
      [(ARWorldTrackingTechnique *)self setHasQualityKeyframe:1];
    }
  }

  if (mapCopy)
  {
    self->_lastPoseTrackingMapTimestamp = timestamp;
  }

  if (self->_previousKeyframeCount)
  {
    if (timestamp - self->_lastQualityKeyframeTimestamp >= 1.0)
    {
      if (timestamp - self->_lastPoseTrackingMapTimestamp >= 1.0)
      {
        v9 = 1;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  kdebug_trace();
  return v9;
}

- (id)_featurePointDataFromSLAMState:(const CV3DSLAMStateContext *)state
{
  v19 = *MEMORY[0x1E69E9840];
  data = [MEMORY[0x1E695DF88] data];
  PointCloud = CV3DSLAMStateGetPointCloud();
  if (PointCloud != *MEMORY[0x1E698BD80] || CV3DSLAMStateGetTimestamp() != PointCloud)
  {
LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  Status = CV3DSLAMStateGetStatus();
  if (Status != PointCloud)
  {
    v7 = _ARLogTechnique(Status);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543874;
      v14 = v9;
      v15 = 2048;
      selfCopy = self;
      v17 = 2048;
      v18 = 0;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Point cloud rejected because tracking state is not nominal: %f", buf, 0x20u);
    }

    goto LABEL_7;
  }

  [data length];
  v10 = [[ARWorldTrackingFeaturePointData alloc] initWithTimestamp:0.0];
  kdebug_trace();
  v12 = [[ARPointCloud alloc] initWithCV3DPointData:data minVergenceAngleCosine:self->_minVergenceAngleCosine];
  [(ARWorldTrackingFeaturePointData *)v10 setVisionFeaturePoints:v12];

  kdebug_trace();
LABEL_8:

  return v10;
}

- (void)_updateTrackingState:(id)state slamState:(const CV3DSLAMStateContext *)slamState
{
  v56 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  CV3DSLAMStateGetStatus();
  v48 = *(MEMORY[0x1E69E9B18] + 16);
  v49 = *MEMORY[0x1E69E9B18];
  v46 = *(MEMORY[0x1E69E9B18] + 48);
  v47 = *(MEMORY[0x1E69E9B18] + 32);
  if (CV3DSLAMStateGetRelocalizationTimestamp() == *MEMORY[0x1E698BD80] && self->_lastRelocalizationTimestamp < 0.0)
  {
    CV3DSLAMStateIsGlobalRelocalization();
    CV3DSLAMStateRelocalizationSucceeded();
    v5 = kdebug_trace();
    v6 = _ARLogTechnique(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544386;
      *&buf[4] = v8;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v52 = 2048;
      v53 = 0;
      v54 = 1024;
      *v55 = 0;
      *&v55[4] = 1024;
      *&v55[6] = 0;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Relocalization event: %f, global %i, succeeded %i", buf, 0x2Cu);
    }

    self->_lastRelocalizationTimestamp = 0.0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(ARWorldTrackingTechnique *)self _isRelocalizing:v38];
  if (v10 && self->_didClearMap)
  {
    v11 = _ARLogTechnique(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      v14 = @"NO";
      didClearMap = self->_didClearMap;
      *buf = 138544130;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      if (didClearMap)
      {
        v14 = @"YES";
      }

      *&buf[14] = self;
      v52 = 2112;
      v53 = @"NO";
      v54 = 2112;
      *v55 = v14;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Clearing relocalization after sensor data drop because major relocalization(%@) or clear map (%@) occurred.", buf, 0x2Au);
    }

    self->_relocalizationState = 0;
    if ((v9 & 1) == 0)
    {
      p_originTimestamp = &self->_originTimestamp;
      goto LABEL_19;
    }

    p_originTimestamp = &self->_originTimestamp;
    if (self->_didClearMap)
    {
LABEL_19:
      v17 = 0;
      v18 = *p_originTimestamp;
      if (*p_originTimestamp >= 2.22044605e-16)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }
  }

  else
  {
    p_originTimestamp = &self->_originTimestamp;
    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v17 = 1;
LABEL_20:
  v19 = objc_msgSend_timestamp(stateCopy);
  *p_originTimestamp = v20;
  v21 = _ARLogTechnique(v19);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = *p_originTimestamp;
    *buf = 138543874;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = self;
    v52 = 2048;
    v53 = v24;
    _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: VIO origin timestamp: %f", buf, 0x20u);
  }

LABEL_23:
  _isRelocalizing = [(ARWorldTrackingTechnique *)self _isRelocalizing];
  if (_isRelocalizing)
  {
    if (self->_relocalizationState == 2)
    {
      v26 = 4;
    }

    else if (self->_wasEverInNominalState)
    {
      v26 = 4;
    }

    else
    {
      v26 = 1;
    }

    reinitializationAttempts = self->_reinitializationAttempts;
    if (self->_reinitializationAttemptsAtInitialization != reinitializationAttempts)
    {
      self->_reinitializationAttemptsAtInitialization = reinitializationAttempts;
      v29 = _ARLogTechnique(_isRelocalizing);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = ARTrackingStateReasonToString(v26);
        reinitializationAttemptsAtInitialization = self->_reinitializationAttemptsAtInitialization;
        *buf = 138544130;
        *&buf[4] = v31;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v52 = 2112;
        v53 = v32;
        v54 = 2048;
        *v55 = reinitializationAttemptsAtInitialization;
        _os_log_impl(&dword_1C241C000, v29, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting tracking state to limited with %@ after sensor data drop, resetting reinitialization attempts counter to %li", buf, 0x2Au);
      }
    }

    v27 = 1;
  }

  else
  {
    v27 = 1;
    v26 = 3;
    if (self->_reinitializationAttemptsAtInitialization == self->_reinitializationAttempts)
    {
      v26 = 0;
      self->_wasEverInNominalState = 1;
      v27 = 2;
    }
  }

  v34 = CV3DSLAMStateCopyUpdatedAnchors();
  v35 = v34;
  if (v34)
  {
    v36 = [v34 count] != 0;
  }

  else
  {
    v36 = 0;
  }

  v37 = objc_opt_new();
  [v37 setState:v27];
  [v37 setReason:v26];
  [v37 setMajorRelocalization:0];
  [v37 setMinorRelocalization:v17 & 1];
  [v37 setPoseGraphUpdated:v36];
  [v37 setMajorRelocalizationCameraTransform:{*&v49, *&v48, *&v47, *&v46}];
  [v37 setVioTrackingState:1];
  [v37 setLastMajorRelocalizationTimestamp:self->_lastMajorRelocalizationTimestamp];
  [v37 setOriginTimestamp:*p_originTimestamp];
  [v37 setCurrentVIOMapSize:self->_currentVIOMapSize];
  [v37 setNumberOfCameraSwitches:self->_numberOfCameraSwitches];
  [v37 setReinitializationAttempts:self->_reinitializationAttempts];
  [stateCopy setWorldTrackingState:v37];
}

- (unint64_t)_sessionType
{
  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  imageSensorSettingsForUltraWide = [mutableOptions imageSensorSettingsForUltraWide];

  if (imageSensorSettingsForUltraWide)
  {
    return 0;
  }

  mutableOptions2 = [(ARWorldTrackingTechnique *)self mutableOptions];
  imageSensorSettings = [mutableOptions2 imageSensorSettings];
  isBravoCameraEnabled = [imageSensorSettings isBravoCameraEnabled];

  if (isBravoCameraEnabled)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (unsigned)_trackingCameraID:(CV3DSLAMStateContext *)d
{
  v28 = *MEMORY[0x1E69E9840];
  data = [MEMORY[0x1E695DF88] data];
  if (CV3DSLAMStateGetCameraSwitchingStatistics() == *MEMORY[0x1E698BD80] && (v5 = [data bytes], (objc_msgSend(data, "length") - 24) <= 0x17))
  {
    v6 = *v5;
    mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
    activeVideoFormatsMap = [mutableOptions activeVideoFormatsMap];

    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v10 = [activeVideoFormatsMap objectForKeyedSubscript:v9];
    captureDeviceType = [v10 captureDeviceType];

    lastCameraType = self->_lastCameraType;
    if (lastCameraType && lastCameraType != captureDeviceType)
    {
      v14 = _ARLogTechnique(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = self->_lastCameraType;
        v20 = 138544130;
        v21 = v16;
        v22 = 2048;
        selfCopy = self;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = captureDeviceType;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Camera type changed from %@ to %@", &v20, 0x2Au);
      }

      if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.warningSounds"])
      {
        softLinkAudioServicesPlaySystemSound(0x454u);
      }

      ++self->_numberOfCameraSwitches;
    }

    v18 = self->_lastCameraType;
    self->_lastCameraType = captureDeviceType;
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (__n128)_compensationMatrixForWidePlusUWSessionAndTrackingCameraID:(int)d
{
  if (self[17].n128_u32[2] == d)
  {
    ARMatrix4x3FromMatrix4x4();
  }

  else
  {
    return self[36];
  }

  return result;
}

- (__n128)_compensationMatrixForBravoSession
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(self + 272);
  if (v2 <= 1)
  {
    if (v2)
    {
      if (v2 != 1)
      {
        return result;
      }
    }

    else
    {
      v4 = _ARLogGeneral(self);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = objc_opt_class();
        v6 = NSStringFromClass(v5);
        v8 = 138543618;
        v9 = v6;
        v10 = 2048;
        selfCopy = self;
        _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Encountered ARCaptureLensUnknown in Bravo cam session.", &v8, 0x16u);
      }
    }

    ARMatrix4x3FromMatrix4x4();
    return result;
  }

  if (v2 == 2)
  {
    v3 = 640;
  }

  else
  {
    if (v2 != 3)
    {
      return result;
    }

    v3 = 704;
  }

  return *(self + v3);
}

- (void)_compensationMatrixForTrackingCameraID:(uint64_t)d
{
  result = [self _sessionType];
  if (result == 2)
  {
    ARMatrix4x3FromMatrix4x4();
  }

  else if (result == 1)
  {
    return [self _compensationMatrixForBravoSession];
  }

  else if (!result)
  {
    return [self _compensationMatrixForWidePlusUWSessionAndTrackingCameraID:d];
  }

  return result;
}

- (int)_updatePoseData:(id)data forTimeStamp:(double)stamp updateTrackingState:(BOOL)state
{
  stateCopy = state;
  v82 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = CV3DSLAMStateSnapshotCreate();
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v63 = __77__ARWorldTrackingTechnique__updatePoseData_forTimeStamp_updateTrackingState___block_invoke;
  v64 = &__block_descriptor_40_e5_v8__0l;
  v65 = v9;
  Pose = CV3DPosePredictionGetPose();
  v11 = Pose;
  if (Pose)
  {
    if (self->_lastPoseMetaDataTimestamp <= 0.0)
    {
LABEL_32:
      v23 = 1;
      goto LABEL_37;
    }

    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v12 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v13 = _ARLogTechnique(Pose);
    v14 = v13;
    if (v12 == 1)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        v17 = NSStringFromCV3DPosePredictionReturn(v11);
        *buf = 138544130;
        *&buf[4] = v16;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2112;
        *&buf[24] = v17;
        LOWORD(v79) = 2048;
        *(&v79 + 2) = stamp;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to update pose [%@] for timestamp %f", buf, 0x2Au);
      }
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      v31 = NSStringFromCV3DPosePredictionReturn(v11);
      *buf = 138544130;
      *&buf[4] = v30;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2112;
      *&buf[24] = v31;
      LOWORD(v79) = 2048;
      *(&v79 + 2) = stamp;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to update pose [%@] for timestamp %f", buf, 0x2Au);
    }

LABEL_31:

    goto LABEL_32;
  }

  SLAMState = CV3DSLAMStateSnapshotCreateSLAMState();
  v19 = SLAMState;
  if (!SLAMState)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v32 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v33 = _ARLogTechnique(SLAMState);
    v14 = v33;
    if (v32 == 1)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138543874;
        *&buf[4] = v35;
        *&buf[12] = 2048;
        *&buf[14] = self;
        *&buf[22] = 2048;
        *&buf[24] = stamp;
        _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create SLAM state for timestamp %f", buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v45 = NSStringFromClass(v44);
      *buf = 138543874;
      *&buf[4] = v45;
      *&buf[12] = 2048;
      *&buf[14] = self;
      *&buf[22] = 2048;
      *&buf[24] = stamp;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create SLAM state for timestamp %f", buf, 0x20u);
    }

    goto LABEL_31;
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v59 = __77__ARWorldTrackingTechnique__updatePoseData_forTimeStamp_updateTrackingState___block_invoke_219;
  v60 = &__block_descriptor_40_e5_v8__0l;
  v61 = SLAMState;
  v20 = [[ARSLAMState alloc] initWithSLAMState:SLAMState];
  [dataCopy setSlamState:v20];

  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  memset(buf, 0, sizeof(buf));
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v21 = [(ARWorldTrackingTechnique *)self _trackingCameraID:v19];
  v56 = *(MEMORY[0x1E69E9B18] + 16);
  v57 = *MEMORY[0x1E69E9B18];
  v54 = *(MEMORY[0x1E69E9B18] + 48);
  v55 = *(MEMORY[0x1E69E9B18] + 32);
  v22 = CV3DSLAMStateSnapshotGetPose();
  v23 = v22;
  if (v22)
  {
    v24 = *MEMORY[0x1E698BD60];
    v26 = *&v56;
    RowMajorTransform = *&v57;
    v28 = *&v54;
    v27 = *&v55;
  }

  else
  {
    v24 = CV3DSLAMStateConvertPoseToCameraFrame();
    v68 = 0;
    memset(v67, 0, sizeof(v67));
    memset(v66, 0, sizeof(v66));
    [(ARWorldTrackingTechnique *)self _compensationMatrixForTrackingCameraID:v21];
    v83.columns[0].i32[3] = 0;
    v83.columns[1].i32[3] = 0;
    v83.columns[2].i32[3] = 0;
    v83.columns[3].i32[3] = 0;
    ARCascadeTransform(v67, v66, v83, v70, v69);
    RowMajorTransform = ARMatrix4x4MakeRowMajorTransform(v67);
  }

  if (v24 == *MEMORY[0x1E698BD80])
  {
    [dataCopy setVisionCameraTransform:{RowMajorTransform, v26, v27, v28}];
    if (stateCopy)
    {
      [(ARWorldTrackingTechnique *)self _updateTrackingState:dataCopy slamState:v19];
    }

    *v70 = 0;
    CV3DSLAMStateGetTimestamp();
    v36 = *v70;
    worldTrackingState = [dataCopy worldTrackingState];
    [worldTrackingState setPoseTimestamp:v36];
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v38 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v39 = _ARLogTechnique(v22);
    v40 = v39;
    if (v38 == 1)
    {
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = NSStringFromCV3DSLAMReturn(v24);
        *v70 = 138543874;
        *&v70[4] = v42;
        v71 = 2048;
        selfCopy2 = self;
        v73 = 2112;
        v74 = v43;
        _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error converting pose from IMU to camera frame: %@", v70, 0x20u);
      }
    }

    else if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v47 = NSStringFromClass(v46);
      v48 = NSStringFromCV3DSLAMReturn(v24);
      *v70 = 138543874;
      *&v70[4] = v47;
      v71 = 2048;
      selfCopy2 = self;
      v73 = 2112;
      v74 = v48;
      _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Error converting pose from IMU to camera frame: %@", v70, 0x20u);
    }

    v23 = 1;
  }

  v49 = [(ARWorldTrackingTechnique *)self mutableOptions:v54];
  activeVideoFormatsMap = [v49 activeVideoFormatsMap];
  v51 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v21];
  v52 = [activeVideoFormatsMap objectForKeyedSubscript:v51];
  [dataCopy setCurrentlyActiveVideoFormat:v52];

  v59(v58);
LABEL_37:
  v63(v62);

  return v23;
}

- (void)onMetadataCallback:(CV3DSLAMStateContext *)callback
{
  v47 = *MEMORY[0x1E69E9840];
  Timestamp = CV3DSLAMStateGetTimestamp();
  v6 = Timestamp;
  v7 = *MEMORY[0x1E698BD80];
  if (Timestamp != *MEMORY[0x1E698BD80])
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v9 = _ARLogTechnique(Timestamp);
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543874;
        v38 = v12;
        v39 = 2048;
        selfCopy6 = self;
        v41 = 1024;
        LODWORD(v42) = v6;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: onMetadataCallback: CV3DSLAMStateGetTimestamp error: %d", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543874;
      v38 = v14;
      v39 = 2048;
      selfCopy6 = self;
      v41 = 1024;
      LODWORD(v42) = v6;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: onMetadataCallback: CV3DSLAMStateGetTimestamp error: %d", buf, 0x1Cu);
    }
  }

  v15 = CV3DPosePredictionPushSLAMMetadata();
  v16 = v15;
  if (v15)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARWorldTrackingTechnique processData:];
    }

    v17 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v18 = _ARLogTechnique(v15);
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138543874;
        v38 = v21;
        v39 = 2048;
        selfCopy6 = self;
        v41 = 1024;
        LODWORD(v42) = v16;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: onMetadataCallback: CV3DPosePredictionPushSLAMMetadata error: %d", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138543874;
      v38 = v36;
      v39 = 2048;
      selfCopy6 = self;
      v41 = 1024;
      LODWORD(v42) = v16;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: onMetadataCallback: CV3DPosePredictionPushSLAMMetadata error: %d", buf, 0x1Cu);
    }
  }

  else
  {
    CV3DSLAMStateGetStatus();
    v22 = CV3DSLAMStateNumReinit();
    if (v22 == v7 && self->_reinitializationAttempts)
    {
      v23 = _ARLogTechnique(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        reinitializationAttempts = self->_reinitializationAttempts;
        *buf = 138544386;
        v38 = v25;
        v39 = 2048;
        selfCopy6 = self;
        v41 = 2048;
        v42 = 0;
        v43 = 1024;
        v44 = reinitializationAttempts;
        v45 = 1024;
        v46 = 0;
        _os_log_impl(&dword_1C241C000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Reinitialization attempts changed at %f, %i => %i", buf, 0x2Cu);
      }

      self->_reinitializationAttempts = 0;
      if (![(ARWorldTrackingTechnique *)self _isRelocalizing])
      {
        MapSize = CV3DSLAMStateGetMapSize();
        if (MapSize == v7)
        {
          v28 = _ARLogTechnique(MapSize);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            *buf = 138543618;
            v38 = v30;
            v39 = 2048;
            selfCopy6 = self;
            _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: SLAM re-init with 0 mapsize. Triggering scene recon and surface detection reset", buf, 0x16u);
          }

          [(ARWorldTrackingTechnique *)self resetSceneReconstruction];
          [(ARWorldTrackingTechnique *)self _resetSurfaceDetection];
        }
      }
    }

    kdebug_trace();
    os_unfair_lock_lock(&self->_raycastSessionLock);
    if (self->_raycastSession.__ptr_)
    {
      CV3DRaycastPushSlamState();
    }

    os_unfair_lock_unlock(&self->_raycastSessionLock);
    os_unfair_lock_lock(&self->_surfaceDetectionSessionLock);
    ptr = self->_planeDetectionSession.__ptr_;
    if (ptr)
    {
      PlaneDetectionSession::PushSlamState(ptr, callback);
    }

    os_unfair_lock_unlock(&self->_surfaceDetectionSessionLock);
    mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
    isCollaborationEnabled = [mutableOptions isCollaborationEnabled];

    if (isCollaborationEnabled)
    {
      array = [MEMORY[0x1E695DF70] array];
      CV3DSLAMStateGetMapMergeStats();
      [array count];
      kdebug_trace();
    }
  }
}

- (void)_pushWTResultDataForTimestamp:(double)timestamp
{
  v194 = *MEMORY[0x1E69E9840];
  obj = [[ARWorldTrackingPoseData alloc] initWithTimestamp:timestamp];
  v147 = [ARWorldTrackingTechnique _updatePoseData:"_updatePoseData:forTimeStamp:updateTrackingState:" forTimeStamp:timestamp updateTrackingState:?];
  v157 = objc_opt_new();
  v173 = 0.0;
  slamState = [(ARWorldTrackingPoseData *)obj slamState];
  selfCopy = self;
  [slamState slamState];
  CV3DSLAMStateGetTimestamp();

  selfCopy2 = self;
  if (self->_lastPoseMetaDataTimestamp >= 0.0)
  {
    goto LABEL_46;
  }

  kdebug_trace();
  self->_lastPoseMetaDataTimestamp = v173;
  v175[0] = 0;
  slamState2 = [(ARWorldTrackingPoseData *)obj slamState];
  [slamState2 slamState];
  v155 = CV3DSLAMStateCopyUpdatedAnchors();

  if (!v155)
  {
    [(ARWorldTrackingTechnique *)self _handleCV3DError:v175[0] withDescription:@"Get updated anchors error" failTechnique:0];
    CFRelease(v175[0]);
  }

  slamState3 = [(ARWorldTrackingPoseData *)obj slamState];
  [slamState3 slamState];
  v153 = CV3DSLAMStateCopyNewAnchors();

  if (!v153)
  {
    [(ARWorldTrackingTechnique *)self _handleCV3DError:v175[0] withDescription:@"Get added anchors error" failTechnique:0];
    CFRelease(v175[0]);
  }

  slamState4 = [(ARWorldTrackingPoseData *)obj slamState];
  [slamState4 slamState];
  v151 = CV3DSLAMStateCopyRemovedAnchors();

  if (!v151)
  {
    [(ARWorldTrackingTechnique *)self _handleCV3DError:v175[0] withDescription:@"Get removed anchors error" failTechnique:0];
    CFRelease(v175[0]);
  }

  if (self->_enableMLCMRelocalization)
  {
    slamState5 = [(ARWorldTrackingPoseData *)obj slamState];
    [slamState5 slamState];
    ExternalAnchorNames = CV3DSLAMStateGetExternalAnchorNames();

    if (ExternalAnchorNames)
    {
      goto LABEL_12;
    }

    [(ARWorldTrackingTechnique *)self _handleCV3DError:v175[0] withDescription:@"Get external anchors error" failTechnique:0];
    CFRelease(v175[0]);
  }

  ExternalAnchorNames = 0;
LABEL_12:
  if ([v155 count] || objc_msgSend(v153, "count") || objc_msgSend(v151, "count") || objc_msgSend(ExternalAnchorNames, "count"))
  {
    [v155 count];
    [v153 count];
    [v151 count];
    kdebug_trace();
    v11 = [ARWorldTrackingReferenceAnchorData alloc];
    v12 = ARAnchorsFromCV3DAnchorsArray(v155, timestamp);
    v13 = ARAnchorsFromCV3DAnchorsArray(v153, timestamp);
    v14 = ARAnchorsFromCV3DAnchorsArray(v151, timestamp);
    v15 = ARAnchorsFromCV3DAnchorsArray(ExternalAnchorNames, timestamp);
    v149 = [(ARWorldTrackingReferenceAnchorData *)v11 initWithUpdatedAnchors:v12 addedAnchors:v13 removedAnchors:v14 externalAnchors:v15];

    [(ARWorldTrackingReferenceAnchorData *)v149 setTimestamp:timestamp];
    dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    [(ARWorldTrackingReferenceAnchorData *)v149 setReceivedAnchors:self->_anchorsReceived];
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    addedAnchors = [(ARWorldTrackingReferenceAnchorData *)v149 addedAnchors];
    v17 = [addedAnchors countByEnumeratingWithState:&v169 objects:v193 count:16];
    if (v17)
    {
      v18 = *v170;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v170 != v18)
          {
            objc_enumerationMutation(addedAnchors);
          }

          v20 = *(*(&v169 + 1) + 8 * i);
          v21 = [(NSMutableSet *)selfCopy->_anchorsReceived containsObject:v20];
          if (v21)
          {
            v22 = _ARLogTechnique(v21);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
            {
              v23 = objc_opt_class();
              v24 = NSStringFromClass(v23);
              v25 = [v20 description];
              LODWORD(buf[0].f64[0]) = 138543874;
              *(buf[0].f64 + 4) = v24;
              WORD2(buf[0].f64[1]) = 2048;
              *(&buf[0].f64[1] + 6) = selfCopy;
              HIWORD(buf[1].f64[0]) = 2112;
              *&buf[1].f64[1] = v25;
              _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: adding received anchor %@", buf, 0x20u);
            }

            [(NSMutableSet *)selfCopy->_anchorsReceived removeObject:v20];
          }
        }

        v17 = [addedAnchors countByEnumeratingWithState:&v169 objects:v193 count:16];
      }

      while (v17);
    }

    v168 = 0u;
    v166 = 0u;
    v167 = 0u;
    v165 = 0u;
    externalAnchors = [(ARWorldTrackingReferenceAnchorData *)v149 externalAnchors];
    v27 = [externalAnchors countByEnumeratingWithState:&v165 objects:v192 count:16];
    v28 = v27;
    if (v27)
    {
      v29 = *v166;
      do
      {
        v30 = 0;
        do
        {
          if (*v166 != v29)
          {
            objc_enumerationMutation(externalAnchors);
          }

          v31 = *(*(&v165 + 1) + 8 * v30);
          v32 = _ARLogTechnique(v27);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v33 = objc_opt_class();
            v34 = NSStringFromClass(v33);
            v35 = [v31 description];
            LODWORD(buf[0].f64[0]) = 138543874;
            *(buf[0].f64 + 4) = v34;
            WORD2(buf[0].f64[1]) = 2048;
            *(&buf[0].f64[1] + 6) = selfCopy;
            HIWORD(buf[1].f64[0]) = 2112;
            *&buf[1].f64[1] = v35;
            _os_log_impl(&dword_1C241C000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: updating external anchor %@", buf, 0x20u);
          }

          ++v30;
        }

        while (v28 != v30);
        v27 = [externalAnchors countByEnumeratingWithState:&v165 objects:v192 count:16];
        v28 = v27;
      }

      while (v27);
    }

    v37 = _ARLogTechnique(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      v38 = objc_opt_class();
      v39 = NSStringFromClass(v38);
      v40 = [(NSMutableSet *)selfCopy->_anchorsReceived count];
      LODWORD(buf[0].f64[0]) = 138543874;
      *(buf[0].f64 + 4) = v39;
      WORD2(buf[0].f64[1]) = 2048;
      *(&buf[0].f64[1] + 6) = selfCopy;
      HIWORD(buf[1].f64[0]) = 2048;
      *&buf[1].f64[1] = v40;
      _os_log_impl(&dword_1C241C000, v37, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: remaining received anchors to be added %tu", buf, 0x20u);
    }

    dispatch_semaphore_signal(selfCopy->_sessionHandleStateSemaphore);
    [v157 addObject:v149];
    v41 = _ARLogTechnique([(ARTrackedRaycastPostProcessor *)selfCopy->_trackedRaycastPostProcessor updateFromPoseGraphEventWithData:v149 referenceOriginTransform:*selfCopy->_anon_360, *&selfCopy->_anon_360[16], *&selfCopy->_anon_360[32], *&selfCopy->_anon_360[48]]);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      v42 = objc_opt_class();
      v43 = NSStringFromClass(v42);
      v44 = [v155 count];
      v45 = [v153 count];
      v46 = [v151 count];
      v47 = [ExternalAnchorNames count];
      LODWORD(buf[0].f64[0]) = 138544898;
      *(buf[0].f64 + 4) = v43;
      WORD2(buf[0].f64[1]) = 2048;
      *(&buf[0].f64[1] + 6) = selfCopy;
      HIWORD(buf[1].f64[0]) = 2048;
      buf[1].f64[1] = timestamp;
      LOWORD(buf[2].f64[0]) = 2048;
      *(buf[2].f64 + 2) = v44;
      WORD1(buf[2].f64[1]) = 2048;
      *(&buf[2].f64[1] + 4) = v45;
      WORD2(buf[3].f64[0]) = 2048;
      *(buf[3].f64 + 6) = v46;
      HIWORD(buf[3].f64[1]) = 2048;
      v189 = v47;
      _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: World tracking anchors changed at timestamp %f, updated %lu, added %lu, removed %lu, external %lu", buf, 0x48u);
    }

    self = selfCopy;
  }

  mutableOptions = [(ARWorldTrackingTechnique *)self mutableOptions];
  planeDetectionPoseUpdateCallback = [mutableOptions planeDetectionPoseUpdateCallback];
  v50 = planeDetectionPoseUpdateCallback == 0;

  if (!v50)
  {
    mutableOptions2 = [(ARWorldTrackingTechnique *)selfCopy mutableOptions];
    planeDetectionPoseUpdateCallback2 = [mutableOptions2 planeDetectionPoseUpdateCallback];
    (planeDetectionPoseUpdateCallback2)[2](planeDetectionPoseUpdateCallback2, v155);
  }

  os_unfair_lock_lock(&selfCopy->_raycastSessionLock);
  if (selfCopy->_raycastSession.__ptr_)
  {
    [(ARWorldTrackingPoseData *)obj visionCameraTransform];
    __invert_f4(v195);
    CV3DRaycastTriggerUpdateFromTrackableIntentsAsync();
  }

  os_unfair_lock_unlock(&selfCopy->_raycastSessionLock);

  selfCopy2 = selfCopy;
LABEL_46:
  dispatch_semaphore_wait(selfCopy2->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v53 = MEMORY[0x1E698BD80];
  if (v147)
  {
    cachedPoseData = selfCopy2->_cachedPoseData;
    if (cachedPoseData)
    {
      v55 = objc_msgSend_timestamp(cachedPoseData);
      v57 = v56;
      v58 = _ARLogTechnique(v55);
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
      {
        v59 = objc_opt_class();
        v60 = NSStringFromClass(v59);
        objc_msgSend_timestamp(selfCopy->_cachedPoseData);
        LODWORD(buf[0].f64[0]) = 138544386;
        *(buf[0].f64 + 4) = v60;
        WORD2(buf[0].f64[1]) = 2048;
        *(&buf[0].f64[1] + 6) = selfCopy;
        HIWORD(buf[1].f64[0]) = 2048;
        buf[1].f64[1] = (timestamp - v57) * 1000.0;
        LOWORD(buf[2].f64[0]) = 2048;
        *(buf[2].f64 + 2) = timestamp;
        WORD1(buf[2].f64[1]) = 2048;
        *(&buf[2].f64[1] + 4) = v61;
        _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using cached pose data with age: %fms (%f - %f)", buf, 0x34u);
      }

      v62 = [(ARWorldTrackingPoseData *)selfCopy->_cachedPoseData copy];
      obj = v62;
      [v157 addObject:v62];
      selfCopy2 = selfCopy;
    }

    goto LABEL_70;
  }

  [(ARWorldTrackingPoseData *)obj cameraTransform];
  [(ARWorldTrackingPoseData *)obj cameraTransform];
  [(ARWorldTrackingPoseData *)obj cameraTransform];
  kdebug_trace();
  worldTrackingState = [(ARWorldTrackingPoseData *)obj worldTrackingState];
  v64 = [worldTrackingState state] == 0;

  if (!v64)
  {
    v65 = selfCopy->_cachedPoseData;
    if (v65)
    {
      [(ARWorldTrackingPoseData *)v65 visionCameraTransform];
      v154 = v67;
      v156 = v66;
      v150 = v69;
      v152 = v68;
      [(ARWorldTrackingPoseData *)obj visionCameraTransform];
      if (AREqualTransforms(v156, v154, v152, v150, v70, v71, v72, v73))
      {
        kdebug_trace();
      }
    }

    objc_storeStrong(&selfCopy->_cachedPoseData, obj);
  }

  [v157 addObject:obj];
  if (selfCopy->_didClearMap)
  {
    selfCopy->_didClearMap = 0;
  }

  mutableOptions3 = [(ARWorldTrackingTechnique *)selfCopy mutableOptions];
  if ([mutableOptions3 isCollaborationEnabled])
  {
    participantAnchorsEnabled = selfCopy->_participantAnchorsEnabled;

    if (!participantAnchorsEnabled)
    {
      goto LABEL_66;
    }

    mutableOptions3 = [MEMORY[0x1E696AFB0] ar_UUIDWithIntegerValue:{-[ARWorldTrackingTechnique vioSessionIdentifier](selfCopy, "vioSessionIdentifier")}];
    ar_createCFUUIDRef = [mutableOptions3 ar_createCFUUIDRef];
    *&v178 = 0;
    v189 = 0;
    memset(buf, 0, sizeof(buf));
    v180 = 0uLL;
    v181 = 0;
    [(ARWorldTrackingPoseData *)obj visionCameraTransform];
    ARMatrix4x4RowMajorRotationAndTranslation(buf, &v180, v77, v78, v79, v80);
    v196.columns[0] = ARDisplayCenterTransformForCaptureDevicePosition(1);
    v197 = __invert_f4(v196);
    v197.columns[1] = vcvtq_f64_f32(*v197.columns[3].f32);
    v197.columns[2].i64[0] = *&vaddq_f64(v180, v197.columns[1]);
    v197.columns[2].i64[1] = *&vsubq_f64(v180, *(&v197 + 16)).f64[1];
    v190 = v197.columns[2];
    v191 = v181;
    *&v176 = 0;
    CMPoseAnchorData = CV3DSLAMSessionCreateCMPoseAnchorData();
    if (CMPoseAnchorData)
    {
      v82 = v178;
      [(ARWorldTrackingTechnique *)selfCopy _reportCollaborationData:v178 type:7 metadata:0];
    }

    else
    {
      v82 = _ARLogTechnique(CMPoseAnchorData);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEBUG))
      {
        v83 = objc_opt_class();
        v84 = NSStringFromClass(v83);
        v85 = v176;
        LODWORD(v175[0]) = 138543874;
        *(v175 + 4) = v84;
        WORD2(v175[1]) = 2048;
        *(&v175[1] + 6) = selfCopy;
        HIWORD(v175[2]) = 2112;
        v175[3] = v176;
        _os_log_impl(&dword_1C241C000, v82, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Error creating participant anchor data: %@", v175, 0x20u);
      }
    }

    CFRelease(ar_createCFUUIDRef);
  }

LABEL_66:
  data = [MEMORY[0x1E695DF88] data];
  slamState6 = [(ARWorldTrackingPoseData *)obj slamState];
  [slamState6 slamState];
  LineCloud = CV3DSLAMStateGetLineCloud();

  if (LineCloud == *v53 && [data length])
  {
    v89 = [[ARLineCloud alloc] initWithLineCloudData:data];
    [(ARWorldTrackingPoseData *)obj setLineCloud:v89];
  }

  selfCopy2 = selfCopy;
LABEL_70:
  os_unfair_lock_lock(&selfCopy2->_pendingRawSceneUnderstandingResultsLock);
  [v157 addObjectsFromArray:selfCopy2->_pendingRawSceneUnderstandingResults];
  [(NSMutableArray *)selfCopy2->_pendingRawSceneUnderstandingResults removeAllObjects];
  os_unfair_lock_unlock(&selfCopy2->_pendingRawSceneUnderstandingResultsLock);
  slamState7 = [(ARWorldTrackingPoseData *)obj slamState];
  [slamState7 slamState];
  OldestStateCovarianceMatrices = CV3DSLAMStateGetOldestStateCovarianceMatrices();

  v92 = *v53;
  if (OldestStateCovarianceMatrices == *v53)
  {
    v93 = [[ARInertialState alloc] initWithCovarianceMatrix:buf];
    *&v95 = v180.f64[1];
    *&v94 = v180.f64[0];
    *(&v94 + 1) = v182;
    *(&v95 + 1) = v183;
    *&v96 = v185;
    *&v97 = v186;
    *&v98 = v181;
    *(&v98 + 1) = v184;
    *&v99 = v187;
    *v175 = v94;
    *&v175[2] = v96;
    *&v175[4] = v95;
    *&v175[6] = v97;
    *&v175[8] = v98;
    *&v175[10] = v99;
    [(ARInertialState *)v93 setOrientation:v175];
    *&v100 = v175[15];
    *v175 = *&v175[13];
    *&v175[2] = v100;
    [(ARInertialState *)v93 setPosition:v175];
    *&v101 = v179;
    *v175 = v178;
    *&v175[2] = v101;
    [(ARInertialState *)v93 setVelocity:v175];
    *&v102 = v177;
    *v175 = v176;
    *&v175[2] = v102;
    [(ARInertialState *)v93 setAccelerometerBias:v175];
    *&v103 = v191;
    *v175 = v190;
    *&v175[2] = v103;
    [(ARInertialState *)v93 setGyroscopeBias:v175];
    worldTrackingState2 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
    [worldTrackingState2 setInertialState:v93];
  }

  mutableOptions4 = [(ARWorldTrackingTechnique *)selfCopy mutableOptions];
  isCollaborationEnabled = [mutableOptions4 isCollaborationEnabled];

  if (isCollaborationEnabled)
  {
    v175[0] = 0;
    v164 = 0;
    slamState8 = [(ARWorldTrackingPoseData *)obj slamState];
    [slamState8 slamState];
    CollaborativeMapStatistics = CV3DSLAMStateGetCollaborativeMapStatistics();

    v109 = v175[0];
    if (CollaborativeMapStatistics == v92 && v175[0])
    {
      v110 = [MEMORY[0x1E695DF70] arrayWithCapacity:v164];
      worldTrackingState3 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
      [worldTrackingState3 setCollaborationStats:v110];

      v109 = v175[0];
    }

    free(v109);
    v112 = objc_opt_new();
    slamState9 = [(ARWorldTrackingPoseData *)obj slamState];
    [slamState9 slamState];
    MapMergeStats = CV3DSLAMStateGetMapMergeStats();

    if (MapMergeStats == v92)
    {
      v115 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v112, "count")}];
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v116 = v112;
      v117 = [v116 countByEnumeratingWithState:&v160 objects:v174 count:16];
      if (v117)
      {
        v118 = *v161;
        do
        {
          for (j = 0; j != v117; ++j)
          {
            if (*v161 != v118)
            {
              objc_enumerationMutation(v116);
            }

            v120 = *(*(&v160 + 1) + 8 * j);
            firstObject = [v120 firstObject];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              firstObject2 = [v120 firstObject];
              [v115 addObject:firstObject2];
            }
          }

          v117 = [v116 countByEnumeratingWithState:&v160 objects:v174 count:16];
        }

        while (v117);
      }

      worldTrackingState4 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
      [worldTrackingState4 setMergedSessionIdentifiers:v115];
    }
  }

  mutableOptions5 = [(ARWorldTrackingTechnique *)selfCopy mutableOptions];
  slamConfiguration = [mutableOptions5 slamConfiguration];
  v127 = [slamConfiguration isEqualToString:@"ObjectDetectionMapBuilding"];

  p_isa = &selfCopy->super.super.super.isa;
  if ((v127 & 1) == 0)
  {
    LODWORD(v175[0]) = 0;
    LODWORD(v164) = 0;
    slamState10 = [(ARWorldTrackingPoseData *)obj slamState];
    [slamState10 slamState];
    CV3DSLAMStateGetMapSize();

    selfCopy->_currentVIOMapSize = SLODWORD(v175[0]);
    slamState11 = [(ARWorldTrackingPoseData *)obj slamState];
    [slamState11 slamState];
    CV3DSLAMStateGetMapKeyFrameQuality();

    slamState12 = [(ARWorldTrackingPoseData *)obj slamState];
    [slamState12 slamState];
    CV3DSLAMStateWasTrackingMap();

    p_isa = &selfCopy->super.super.super.isa;
    [(ARWorldTrackingPoseData *)obj setWorldMappingStatus:[(ARWorldTrackingTechnique *)selfCopy _mappingStatusFromMapSize:LODWORD(v175[0]) keyframeQuality:v164 isTrackingMap:0 timestamp:timestamp]];
  }

  mutableOptions6 = [p_isa mutableOptions];
  if ([(ARWorldTrackingParticipantAnchorData *)mutableOptions6 isCollaborationEnabled])
  {
    v133 = [p_isa[49] count] == 0;

    if (v133)
    {
      goto LABEL_94;
    }

    mutableOptions6 = [[ARWorldTrackingParticipantAnchorData alloc] initWithAnchors:selfCopy->_participantAnchors];
    [(NSMutableSet *)selfCopy->_participantAnchors removeAllObjects];
    [v157 addObject:mutableOptions6];
  }

LABEL_94:
  v134 = selfCopy;
  if (selfCopy->_errorData)
  {
    [v157 addObject:?];
    if (obj)
    {
      errorCode = [(ARWorldTrackingErrorData *)selfCopy->_errorData errorCode];
      if (errorCode == *MEMORY[0x1E698BD10])
      {
        v136 = _ARLogTechnique(errorCode);
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
        {
          v137 = objc_opt_class();
          v138 = NSStringFromClass(v137);
          LODWORD(v175[0]) = 138543618;
          *(v175 + 4) = v138;
          WORD2(v175[1]) = 2048;
          *(&v175[1] + 6) = selfCopy;
          _os_log_impl(&dword_1C241C000, v136, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting tracking state to initializing due to significant sensor data lose.", v175, 0x16u);
        }

        v139 = objc_opt_new();
        [(ARWorldTrackingPoseData *)obj setWorldTrackingState:v139];

        worldTrackingState5 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
        [worldTrackingState5 setState:0];

        worldTrackingState6 = [(ARWorldTrackingPoseData *)obj worldTrackingState];
        [worldTrackingState6 setReason:1];

        v134 = selfCopy;
      }
    }

    errorData = v134->_errorData;
    v134->_errorData = 0;

    v134 = selfCopy;
  }

  dispatch_semaphore_signal(v134->_resultSemaphore);
  slamState13 = [(ARWorldTrackingPoseData *)obj slamState];
  v144 = -[ARWorldTrackingTechnique _featurePointDataFromSLAMState:](v134, "_featurePointDataFromSLAMState:", [slamState13 slamState]);

  v145 = selfCopy;
  if (v144)
  {
    [v157 addObject:v144];
  }

  os_unfair_lock_lock(&selfCopy->_latestSpatialMappingDataLock);
  if ([(NSMutableArray *)selfCopy->_latestSpatialMappingData count])
  {
    [v157 addObjectsFromArray:selfCopy->_latestSpatialMappingData];
    [(NSMutableArray *)selfCopy->_latestSpatialMappingData removeAllObjects];
  }

  os_unfair_lock_unlock(&selfCopy->_latestSpatialMappingDataLock);
  os_unfair_lock_lock(&selfCopy->_spatialMappingPointCloudsLock);
  if ([(NSMutableDictionary *)selfCopy->_spatialMappingPointClouds count])
  {
    allValues = [(NSMutableDictionary *)selfCopy->_spatialMappingPointClouds allValues];
    [v157 addObjectsFromArray:allValues];

    v145 = selfCopy;
    [(NSMutableDictionary *)selfCopy->_spatialMappingPointClouds removeAllObjects];
  }

  os_unfair_lock_unlock(v145 + 130);
  [(os_unfair_lock_s *)v145 pushResultData:v157 forTimestamp:timestamp];
  if (!obj)
  {
    if (!v144)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

  objc_msgSend_timestamp(obj);
  if (v144)
  {
LABEL_109:
    objc_msgSend_timestamp(v144);
  }

LABEL_111:
  objc_msgSend_timestamp(v144);
  kdebug_trace();
}

- (void)_handleSLAMError:(id)error
{
  v44 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  [errorCopy code];
  v5 = kdebug_trace();
  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    __39__ARWorldTrackingTechnique_isSupported__block_invoke_cold_1();
  }

  v6 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v7 = _ARLogTechnique(v5);
  v8 = v7;
  if (v6 == 1)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543874;
      *&buf[4] = v10;
      v40 = 2048;
      selfCopy6 = self;
      v42 = 2112;
      v43 = *&errorCopy;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: SLAM error callback: %@", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    *buf = 138543874;
    *&buf[4] = v12;
    v40 = 2048;
    selfCopy6 = self;
    v42 = 2112;
    v43 = *&errorCopy;
    _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: SLAM error callback: %@", buf, 0x20u);
  }

  v13 = CACurrentMediaTime();
  code = [errorCopy code];
  if (code == *MEMORY[0x1E698BD10] || (code = [errorCopy code], code == *MEMORY[0x1E698BD08]))
  {
    v15 = _ARLogTechnique(code);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      *buf = 138543874;
      *&buf[4] = v17;
      v40 = 2048;
      selfCopy6 = self;
      v42 = 2048;
      v43 = v13;
      _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: World tracking encountered a significant drop in sensor data, attempting to relocalize at time %f.", buf, 0x20u);
    }

    v18 = dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    if (self->_relocalizationState)
    {
      v19 = _ARLogTechnique(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        relocalizationState = self->_relocalizationState;
        *buf = 138543874;
        *&buf[4] = v21;
        v40 = 2048;
        selfCopy6 = self;
        v42 = 2048;
        v43 = *&relocalizationState;
        _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Not setting ARRelocalizationStateRelocalizingAfterSensorDataDrop, because we're already in state: %lu", buf, 0x20u);
      }
    }

    else
    {
      self->_relocalizationState = 1;
    }

    self->_lastRelocalizationTimestamp = 0.0;
    self->_originTimestamp = 0.0;
    v23 = [(ARWorldTrackingPoseData *)self->_cachedPoseData copy];
    worldTrackingState = [(ARWorldTrackingPoseData *)self->_cachedPoseData worldTrackingState];
    [worldTrackingState setState:1];

    worldTrackingState2 = [(ARWorldTrackingPoseData *)self->_cachedPoseData worldTrackingState];
    [worldTrackingState2 setReason:1];

    dispatch_semaphore_signal(self->_resultSemaphore);
    if (v23)
    {
      v38 = v23;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [(ARImageBasedTechnique *)self pushResultData:v26 forFrame:0];
    }

    [errorCopy code];
    kdebug_trace();
LABEL_20:

    goto LABEL_21;
  }

  [errorCopy code];
  if (!CV3DSLAMIsFatalError())
  {
    code2 = [errorCopy code];
    *buf = &code2;
    if (v13 - *(std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(&self->_lastErrorLogTimestamp, &code2, &std::piecewise_construct, buf) + 5) > 1.0)
    {
      code2 = [errorCopy code];
      *buf = &code2;
      v32 = std::__tree<std::__value_type<long,double>,std::__map_value_compare<long,std::__value_type<long,double>,std::less<long>,true>,std::allocator<std::__value_type<long,double>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(&self->_lastErrorLogTimestamp, &code2, &std::piecewise_construct, buf);
      v32[5] = v13;
      v33 = _ARLogTechnique(v32);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        code3 = [errorCopy code];
        *buf = 138543874;
        *&buf[4] = v35;
        v40 = 2048;
        selfCopy6 = self;
        v42 = 2048;
        v43 = *&code3;
        _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: World tracking performance is being affected by resource constraints [%li]", buf, 0x20u);
      }
    }

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.warningSounds"])
    {
      softLinkAudioServicesPlaySystemSound(0x3EBu);
    }

    v23 = [[ARWorldTrackingErrorData alloc] initWithTimestamp:v13];
    -[ARWorldTrackingErrorData setErrorCode:](v23, "setErrorCode:", [errorCopy code]);
    dispatch_semaphore_wait(self->_resultSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    objc_storeStrong(&self->_errorData, v23);
    dispatch_semaphore_signal(self->_resultSemaphore);
    [errorCopy code];
    kdebug_trace();
    goto LABEL_20;
  }

  dispatch_semaphore_wait(self->_sessionHandleStateSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  self->_sessionHandleState = 4;
  v27 = dispatch_semaphore_signal(self->_sessionHandleStateSemaphore);
  v28 = _ARLogTechnique(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    *buf = 138543618;
    *&buf[4] = v30;
    v40 = 2048;
    selfCopy6 = self;
    _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: World tracking encountered fatal error.", buf, 0x16u);
  }

  v31 = ARErrorWithCodeAndUserInfo(200, 0);
  [(ARWorldTrackingTechnique *)self _didFailWithError:v31];

  [errorCopy code];
  kdebug_trace();
LABEL_21:
}

- (void)_didFailWithError:(id)error
{
  errorCopy = error;
  delegate = [(ARTechnique *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ARTechnique *)self delegate];
    [delegate2 technique:self didFailWithError:errorCopy];
  }
}

- (void)setReferenceOriginTransform:(__n128)transform
{
  v5[0] = a2;
  v5[1] = transform;
  v5[2] = a4;
  v5[3] = a5;
  objc_copyStruct((self + 864), v5, 64, 1, 0);
}

- (shared_ptr<RaycastSession>)raycastSession
{
  cntrl = self->_raycastSession.__cntrl_;
  *v2 = self->_raycastSession.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setRaycastSession:(shared_ptr<RaycastSession>)session
{
  p_raycastSession = &self->_raycastSession;
  v5 = *session.__ptr_;
  v4 = *(session.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_raycastSession.__cntrl_;
  p_raycastSession->__ptr_ = v5;
  p_raycastSession->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (shared_ptr<PlaneDetectionSession>)planeDetectionSession
{
  cntrl = self->_planeDetectionSession.__cntrl_;
  *v2 = self->_planeDetectionSession.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (void)setPlaneDetectionSession:(shared_ptr<PlaneDetectionSession>)session
{
  p_planeDetectionSession = &self->_planeDetectionSession;
  v5 = *session.__ptr_;
  v4 = *(session.__ptr_ + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_planeDetectionSession.__cntrl_;
  p_planeDetectionSession->__ptr_ = v5;
  p_planeDetectionSession->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (__n128)setReconstructionFrameBundleToWorld:(__n128)world
{
  result[58] = a2;
  result[59] = world;
  result[60] = a4;
  result[61] = a5;
  return result;
}

- (id).cxx_construct
{
  *(self + 15) = 0;
  *(self + 14) = 0;
  *(self + 13) = self + 112;
  *(self + 47) = 0;
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 368) = 0;
  *(self + 104) = 0;
  *(self + 105) = 0;
  *(self + 106) = 0;
  *(self + 107) = 0;
  return self;
}

+ (void)supportsVideoResolution:forDeviceType:.cold.1()
{
  if (__cxa_guard_acquire(_MergedGlobals_0))
  {
    xmmword_1EBF41CC0 = *MEMORY[0x1E695F060];

    __cxa_guard_release(_MergedGlobals_0);
  }
}

+ (void)supportsVideoResolution:forDeviceType:.cold.2()
{
  if (__cxa_guard_acquire(byte_1EBF41CB8))
  {
    *&qword_1EBF41CD0 = *MEMORY[0x1E695F060];

    __cxa_guard_release(byte_1EBF41CB8);
  }
}

@end