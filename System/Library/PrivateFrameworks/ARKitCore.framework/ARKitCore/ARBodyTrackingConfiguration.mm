@interface ARBodyTrackingConfiguration
+ (BOOL)isSupported;
+ (BOOL)supportsAppClipCodeTracking;
+ (BOOL)supportsFrameSemantics:(unint64_t)semantics;
+ (id)_querySupportedVideoFormatsForUltraWide;
+ (id)supportedVideoFormats;
+ (id)supportedVideoFormatsForUltraWide;
+ (void)setAllowsParallelPersonOcclusion:(BOOL)occlusion;
+ (void)setAllowsParallelSceneDepth:(BOOL)depth;
- (ARBodyTrackingConfiguration)init;
- (ARImageSensorSettings)imageSensorSettingsForUltraWide;
- (BOOL)appClipCodeTrackingEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldEnableVisionDataForImageSensorSettings:(id)settings;
- (BOOL)shouldUseUltraWide;
- (id)_trackingOptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageSensorSettings;
- (id)imageSensorSettingsForUserFaceTracking;
- (id)parentImageSensorSettings;
- (void)createTechniques:(id)techniques;
- (void)setVideoFormat:(id)format;
@end

@implementation ARBodyTrackingConfiguration

+ (BOOL)isSupported
{
  v2 = +[ARWorldTrackingConfiguration isSupported];
  if (v2)
  {

    LOBYTE(v2) = ARAppleNeuralEngine();
  }

  return v2;
}

+ (id)supportedVideoFormats
{
  if ([self isSupported])
  {
    v2 = +[ARWorldTrackingConfiguration supportedVideoFormats];
  }

  else
  {
    v2 = MEMORY[0x1E695E0F0];
  }

  return v2;
}

+ (BOOL)supportsFrameSemantics:(unint64_t)semantics
{
  if ([self allowsParallelPersonOcclusion])
  {
    v5 = 0;
  }

  else
  {
    v5 = 3;
  }

  allowsParallelSceneDepth = [self allowsParallelSceneDepth];
  v7 = v5 | 0x18;
  if (allowsParallelSceneDepth)
  {
    v7 = v5;
  }

  if (v7 & semantics) == 0 && (ARAppleNeuralEngine())
  {
    return 1;
  }

  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS___ARBodyTrackingConfiguration;
  return objc_msgSendSuper2(&v9, sel_supportsFrameSemantics_, semantics);
}

- (ARBodyTrackingConfiguration)init
{
  v6.receiver = self;
  v6.super_class = ARBodyTrackingConfiguration;
  initPrivate = [(ARConfiguration *)&v6 initPrivate];
  v3 = initPrivate;
  if (initPrivate)
  {
    [(ARConfiguration *)initPrivate setAutoFocusEnabled:1];
    [(ARBodyTrackingConfiguration *)v3 setMaximumNumberOfTrackedImages:0];
    v4 = objc_opt_new();
    [(ARBodyTrackingConfiguration *)v3 setDetectionImages:v4];

    [(ARBodyTrackingConfiguration *)v3 setWantsHDREnvironmentTextures:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.environmentTexturing.wantsHDR"]];
    [(ARBodyTrackingConfiguration *)v3 setLowQosSchedulingEnabled:[ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.enableLowQosScheduling"]];
    if ([objc_opt_class() supportsFrameSemantics:4])
    {
      [(ARConfiguration *)v3 setFrameSemantics:4];
    }

    [(ARBodyTrackingConfiguration *)v3 setAutomaticSkeletonScaleEstimationEnabled:0];
    v3->_alwaysUsePrimaryCameraForTracking = 0;
    v3->_ignoreAppClipCodeURLLimitation = 0;
    v3->_appClipCodeTrackingEnabled = 0;
  }

  return v3;
}

- (id)imageSensorSettings
{
  v22 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = ARBodyTrackingConfiguration;
  imageSensorSettings = [(ARConfiguration *)&v15 imageSensorSettings];
  [imageSensorSettings setVisionDataOutputEnabled:{-[ARBodyTrackingConfiguration shouldEnableVisionDataForImageSensorSettings:](self, "shouldEnableVisionDataForImageSensorSettings:", imageSensorSettings)}];
  if ([imageSensorSettings visionDataOutputEnabled])
  {
    _trackingOptions = [(ARBodyTrackingConfiguration *)self _trackingOptions];
    [_trackingOptions setImageSensorSettings:imageSensorSettings];
    imageSensorSettingsForUltraWide = [(ARBodyTrackingConfiguration *)self imageSensorSettingsForUltraWide];
    [_trackingOptions setImageSensorSettingsForUltraWide:imageSensorSettingsForUltraWide];

    v6 = ARVisionDataParametersForWorldTrackingOptions(_trackingOptions);
    if (v6)
    {
      v7 = _ARLogGeneral_10([imageSensorSettings setVisionDataOutputParameters:v6]);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = objc_opt_class();
        v9 = NSStringFromClass(v8);
        *buf = 138543874;
        v17 = v9;
        v18 = 2048;
        selfCopy2 = self;
        v20 = 2114;
        v21 = v6;
        v10 = "%{public}@ <%p>: Setting vision data output parameters for wide: %{public}@";
        v11 = v7;
        v12 = 32;
LABEL_7:
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, v10, buf, v12);
      }
    }

    else
    {
      v7 = _ARLogGeneral_10(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v9 = NSStringFromClass(v13);
        *buf = 138543618;
        v17 = v9;
        v18 = 2048;
        selfCopy2 = self;
        v10 = "%{public}@ <%p>: Did not receive vision data output parameters for wide.";
        v11 = v7;
        v12 = 22;
        goto LABEL_7;
      }
    }
  }

  return imageSensorSettings;
}

- (id)_trackingOptions
{
  v3 = objc_alloc_init(ARWorldTrackingOptions);
  deviceModel = [(ARConfiguration *)self deviceModel];
  [(ARWorldTrackingOptions *)v3 setDeviceModel:deviceModel];

  [(ARWorldTrackingOptions *)v3 setPlaneDetection:[(ARBodyTrackingConfiguration *)self planeDetection]];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.mlOnANEDevices"])
  {
    v5 = ARAppleNeuralEngine();
  }

  else
  {
    v5 = 0;
  }

  [(ARWorldTrackingOptions *)v3 setMlModelEnabled:v5];
  initialWorldMap = [(ARBodyTrackingConfiguration *)self initialWorldMap];
  [(ARWorldTrackingOptions *)v3 setInitialWorldMap:initialWorldMap];

  [(ARWorldTrackingOptions *)v3 setLowQosSchedulingEnabled:[(ARBodyTrackingConfiguration *)self isLowQosSchedulingEnabled]];
  replaySensor = [(ARConfiguration *)self replaySensor];
  v8 = replaySensor;
  if (replaySensor && [replaySensor replayMode])
  {
    [(ARWorldTrackingOptions *)v3 setDeterministicMode:1];
  }

  [(ARWorldTrackingOptions *)v3 setAlwaysUsePrimaryCameraForTracking:[(ARBodyTrackingConfiguration *)self alwaysUsePrimaryCameraForTracking]];
  [(ARWorldTrackingOptions *)v3 setDisableMLRelocalization:[(ARConfiguration *)self disableMLRelocalization]];

  return v3;
}

- (void)setVideoFormat:(id)format
{
  formatCopy = format;
  v6.receiver = self;
  v6.super_class = ARBodyTrackingConfiguration;
  [(ARConfiguration *)&v6 setVideoFormat:formatCopy];
  if ([formatCopy has4KVideoResolution])
  {
    isX420PixelFormat = 1;
  }

  else
  {
    isX420PixelFormat = [formatCopy isX420PixelFormat];
  }

  [(ARBodyTrackingConfiguration *)self setAlwaysUsePrimaryCameraForTracking:isX420PixelFormat];
}

- (void)createTechniques:(id)techniques
{
  v89 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  _trackingOptions = [(ARBodyTrackingConfiguration *)self _trackingOptions];
  imageSensorSettings = [(ARBodyTrackingConfiguration *)self imageSensorSettings];
  [_trackingOptions setImageSensorSettings:imageSensorSettings];

  imageSensorSettingsForUltraWide = [(ARBodyTrackingConfiguration *)self imageSensorSettingsForUltraWide];
  [_trackingOptions setImageSensorSettingsForUltraWide:imageSensorSettingsForUltraWide];

  if ([(ARBodyTrackingConfiguration *)self environmentTexturing])
  {
    [_trackingOptions setPlaneDetection:{objc_msgSend(_trackingOptions, "planeDetection") | 0x80}];
  }

  replaySensor = [(ARConfiguration *)self replaySensor];
  v9 = replaySensor;
  if (replaySensor && [replaySensor replayMode])
  {
    [_trackingOptions setDeterministicMode:1];
  }

  if ([_trackingOptions planeDetection])
  {
    v10 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.accuratePlaneExtentCheck"];
    v11 = v10;
    v12 = _ARLogGeneral_10(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = @"disabled";
      *buf = 138543874;
      v84 = v14;
      if (v11)
      {
        v15 = @"enabled";
      }

      v85 = 2048;
      selfCopy = self;
      v87 = 2114;
      v88 = v15;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Ray-cast accurate extent check: %{public}@", buf, 0x20u);
    }

    if (v11)
    {
      [_trackingOptions setPlaneDetection:{objc_msgSend(_trackingOptions, "planeDetection") | 0x200}];
    }
  }

  v16 = [[ARWorldTrackingTechnique alloc] initWithOptions:_trackingOptions];
  v17 = v16;
  if (v16)
  {
    options = [(ARWorldTrackingTechnique *)v16 options];
    planeDetection = [options planeDetection];

    if (planeDetection)
    {
      v20 = [[ARPlaneEstimationTechnique alloc] initWithTrackingTechnique:v17];
      [techniquesCopy addObject:v20];
    }

    if ([(ARBodyTrackingConfiguration *)self environmentTexturing])
    {
      v21 = [[AREnvironmentTexturingTechnique alloc] initWithOptions:[(ARBodyTrackingConfiguration *)self environmentTexturing] wantsHDREnvironmentTextures:self->_wantsHDREnvironmentTextures];
      [techniquesCopy addObject:v21];
    }

    v22 = [ARParentTechnique alloc];
    v82 = v17;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
    v24 = [(ARParentTechnique *)v22 initWithParallelTechniques:v23];

    [techniquesCopy insertObject:v24 atIndex:0];
    v79.receiver = self;
    v79.super_class = ARBodyTrackingConfiguration;
    [(ARConfiguration *)&v79 createTechniques:techniquesCopy];
    if ([(ARBodyTrackingConfiguration *)self planeDetection])
    {
      _trackingOptions2 = [(ARBodyTrackingConfiguration *)self _trackingOptions];
      mlModelEnabled = [_trackingOptions2 mlModelEnabled];

      if (mlModelEnabled)
      {
        v29 = ARDeviceSupportsJasper(v27, v28);
        maxUltrawideImageForwardingFrameRate = [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate];
        if (v29)
        {
          ARAddJasperTechniquesToParent(v24, techniquesCopy, 1, 0, maxUltrawideImageForwardingFrameRate);
        }

        else
        {
          ARAddNonJasperSemanticsToParent(v24, techniquesCopy, maxUltrawideImageForwardingFrameRate, 1);
        }
      }
    }

    if (([(ARConfiguration *)self frameSemantics]& 4) != 0)
    {
      v76 = v24;
      v31 = [ARParentTechnique parentTechniqueOfClass:objc_opt_class() inArray:techniquesCopy];
      v32 = MEMORY[0x1E695DF70];
      techniques = [v31 techniques];
      v34 = [v32 arrayWithArray:techniques];

      v35 = objc_opt_new();
      v36 = objc_opt_new();
      [v36 setAutomaticSkeletonScaleEstimationEnabled:{-[ARBodyTrackingConfiguration automaticSkeletonScaleEstimationEnabled](self, "automaticSkeletonScaleEstimationEnabled")}];
      v37 = objc_opt_new();
      v73 = v35;
      [v34 addObject:v35];
      v74 = v34;
      v75 = v31;
      [v31 setTechniques:v34];
      v72 = v36;
      [techniquesCopy addObject:v36];
      [techniquesCopy addObject:v37];
      v38 = MEMORY[0x1E695DFD8];
      v81[0] = objc_opt_class();
      v81[1] = objc_opt_class();
      v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
      v40 = [v38 setWithArray:v39];

      v71 = v40;
      v41 = [[ARSplitTechniqueSynchronizerTechnique alloc] initWithSynchronizedResultDataClasses:v40];
      [techniquesCopy insertObject:v41 atIndex:{objc_msgSend(techniquesCopy, "indexOfObjectPassingTest:", &__block_literal_global_49)}];
      v42 = objc_opt_new();
      [v42 setDelegate:v41];
      v80 = v42;
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
      v70 = v37;
      [v37 setSplitTechniques:v43];

      if (ARDeviceSupportsJasper(v44, v45))
      {
        v46 = objc_alloc(MEMORY[0x1E695DFD8]);
        v47 = objc_opt_class();
        v48 = [v46 initWithObjects:{v47, objc_opt_class(), 0}];
        v49 = MEMORY[0x1E696AE18];
        v77[0] = MEMORY[0x1E69E9820];
        v77[1] = 3221225472;
        v77[2] = __48__ARBodyTrackingConfiguration_createTechniques___block_invoke_2;
        v77[3] = &unk_1E817CD68;
        v50 = v48;
        v78 = v50;
        v51 = [v49 predicateWithBlock:v77];
        v52 = [ARTechnique techniqueMatchingPredicate:v51 inArray:techniquesCopy];

        if (!v52)
        {
          v69 = v9;
          v68 = v50;
          v53 = [ARParentTechnique parentTechniqueOfClass:objc_opt_class() inArray:techniquesCopy];
          if (!v53)
          {
            v53 = [ARParentTechnique parentTechniqueOfClass:objc_opt_class() inArray:techniquesCopy];
          }

          v67 = objc_opt_new();
          splitTechniques = [v53 splitTechniques];
          v55 = [splitTechniques arrayByAddingObject:v67];
          v56 = v53;
          [v53 setSplitTechniques:v55];

          v57 = [[ARFrameRateLimitingStrategy alloc] initWithFrameRate:10];
          v58 = v56;
          [v56 setSplitTechniqueFowardingStrategy:v57];

          v50 = v68;
          v59 = [[ARSplitTechniqueSynchronizerTechnique alloc] initWithSynchronizedResultDataClasses:v68];
          [v67 setDelegate:v59];
          [techniquesCopy insertObject:v59 atIndex:0];

          v9 = v69;
          v52 = 0;
        }
      }

      v24 = v76;
    }

    detectionImages = [(ARBodyTrackingConfiguration *)self detectionImages];
    v61 = [detectionImages count];

    if (v61)
    {
      v62 = [ARImageDetectionTechnique alloc];
      detectionImages2 = [(ARBodyTrackingConfiguration *)self detectionImages];
      allObjects = [detectionImages2 allObjects];
      v65 = [(ARImageDetectionTechnique *)v62 initWithReferenceImages:allObjects maximumNumberOfTrackedImages:[(ARBodyTrackingConfiguration *)self maximumNumberOfTrackedImages]];

      [(ARImageDetectionTechnique *)v65 setEnableAutomaticImageScaleEstimation:[(ARBodyTrackingConfiguration *)self automaticImageScaleEstimationEnabled]];
      [techniquesCopy addObject:v65];
    }

    if ([(ARBodyTrackingConfiguration *)self appClipCodeTrackingEnabled])
    {
      v66 = [[ARAppClipCodeTechnique alloc] initWithIgnoreURLLimitation:[(ARBodyTrackingConfiguration *)self ignoreAppClipCodeURLLimitation]];
      [techniquesCopy addObject:v66];
    }
  }
}

BOOL __48__ARBodyTrackingConfiguration_createTechniques___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    v4 = [v3 techniqueOfClass:objc_opt_class()];
  }

  else
  {
    v4 = [v2 techniqueOfClass:objc_opt_class()];
  }

  return v4 != 0;
}

uint64_t __48__ARBodyTrackingConfiguration_createTechniques___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = [v3 synchronizedResultDataClasses];
    v6 = [v4 isSubsetOfSet:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)setAllowsParallelPersonOcclusion:(BOOL)occlusion
{
  v14 = *MEMORY[0x1E69E9840];
  if (s_allowsParallelPersonOcclusion != occlusion)
  {
    occlusionCopy = occlusion;
    s_allowsParallelPersonOcclusion = occlusion;
    v5 = _ARLogGeneral_10(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138543874;
      v9 = v7;
      v10 = 2048;
      selfCopy = self;
      v12 = 1024;
      v13 = occlusionCopy;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting parallel person occlusion to '%d'", &v8, 0x1Cu);
    }
  }
}

+ (void)setAllowsParallelSceneDepth:(BOOL)depth
{
  v14 = *MEMORY[0x1E69E9840];
  if (s_allowsParallelSceneDepth != depth)
  {
    depthCopy = depth;
    s_allowsParallelSceneDepth = depth;
    v5 = _ARLogGeneral_10(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = 138543874;
      v9 = v7;
      v10 = 2048;
      selfCopy = self;
      v12 = 1024;
      v13 = depthCopy;
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting parallel scene depth to '%d'", &v8, 0x1Cu);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v18.receiver = self;
  v18.super_class = ARBodyTrackingConfiguration;
  if ([(ARConfiguration *)&v18 isEqual:equalCopy])
  {
    v5 = equalCopy;
    v6 = v5;
    if (self->_planeDetection == *(v5 + 17) && self->_environmentTexturing == *(v5 + 16) && self->_wantsHDREnvironmentTextures == v5[112])
    {
      initialWorldMap = self->_initialWorldMap;
      initialWorldMap = [v5 initialWorldMap];
      if (initialWorldMap == initialWorldMap || [(ARWorldMap *)self->_initialWorldMap isEqual:*(v6 + 15)])
      {
        detectionImages = self->_detectionImages;
        detectionImages = [v6 detectionImages];
        if ((detectionImages == detectionImages || -[NSSet isEqual:](self->_detectionImages, "isEqual:", *(v6 + 18))) && self->_maximumNumberOfTrackedImages == *(v6 + 19) && (automaticImageScaleEstimationEnabled = self->_automaticImageScaleEstimationEnabled, automaticImageScaleEstimationEnabled == [v6 automaticImageScaleEstimationEnabled]) && (automaticSkeletonScaleEstimationEnabled = self->_automaticSkeletonScaleEstimationEnabled, automaticSkeletonScaleEstimationEnabled == objc_msgSend(v6, "automaticSkeletonScaleEstimationEnabled")) && self->_lowQosSchedulingEnabled == v6[118] && (alwaysUsePrimaryCameraForTracking = self->_alwaysUsePrimaryCameraForTracking, alwaysUsePrimaryCameraForTracking == objc_msgSend(v6, "alwaysUsePrimaryCameraForTracking")) && (ignoreAppClipCodeURLLimitation = self->_ignoreAppClipCodeURLLimitation, ignoreAppClipCodeURLLimitation == objc_msgSend(v6, "ignoreAppClipCodeURLLimitation")))
        {
          appClipCodeTrackingEnabled = self->_appClipCodeTrackingEnabled;
          v16 = appClipCodeTrackingEnabled == [v6 appClipCodeTrackingEnabled];
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = ARBodyTrackingConfiguration;
  v5 = [(ARConfiguration *)&v9 copyWithZone:?];
  *(v5 + 17) = self->_planeDetection;
  *(v5 + 16) = self->_environmentTexturing;
  *(v5 + 112) = self->_wantsHDREnvironmentTextures;
  objc_storeStrong(v5 + 15, self->_initialWorldMap);
  v6 = [(NSSet *)self->_detectionImages copyWithZone:zone];
  v7 = *(v5 + 18);
  *(v5 + 18) = v6;

  *(v5 + 19) = self->_maximumNumberOfTrackedImages;
  *(v5 + 113) = self->_automaticImageScaleEstimationEnabled;
  *(v5 + 114) = self->_automaticSkeletonScaleEstimationEnabled;
  *(v5 + 118) = self->_lowQosSchedulingEnabled;
  *(v5 + 117) = self->_alwaysUsePrimaryCameraForTracking;
  *(v5 + 116) = self->_ignoreAppClipCodeURLLimitation;
  *(v5 + 115) = self->_appClipCodeTrackingEnabled;
  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  descriptionWithoutBrackets = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:descriptionWithoutBrackets];

  if ([(ARConfiguration *)self isAutoFocusEnabled])
  {
    v8 = @"Enabled";
  }

  else
  {
    v8 = @"Disabled";
  }

  [v6 appendFormat:@" autoFocus=%@", v8];
  v9 = NSStringFromAREnvironmentTexturing(self->_environmentTexturing);
  [v6 appendFormat:@" environmentTexturing=%@", v9];

  if ([(ARBodyTrackingConfiguration *)self wantsHDREnvironmentTextures])
  {
    v10 = @"Enabled";
  }

  else
  {
    v10 = @"Disabled";
  }

  [v6 appendFormat:@" wantsHDREnvironmentTextures=%@", v10];
  v11 = NSStringFromARPlaneDetection(self->_planeDetection);
  [v6 appendFormat:@" planeDetection=%@", v11];

  initialWorldMap = [(ARBodyTrackingConfiguration *)self initialWorldMap];

  if (initialWorldMap)
  {
    initialWorldMap2 = [(ARBodyTrackingConfiguration *)self initialWorldMap];
    [v6 appendFormat:@" initialWorldMap=%@", initialWorldMap2];
  }

  detectionImages = [(ARBodyTrackingConfiguration *)self detectionImages];
  v15 = [detectionImages count];

  if (v15)
  {
    [v6 appendFormat:@" maximumNumberOfTrackedImages=%ld", -[ARBodyTrackingConfiguration maximumNumberOfTrackedImages](self, "maximumNumberOfTrackedImages")];
    if ([(ARBodyTrackingConfiguration *)self automaticImageScaleEstimationEnabled])
    {
      v16 = @"Enabled";
    }

    else
    {
      v16 = @"Disabled";
    }

    [v6 appendFormat:@" automaticImageScaleEstimation=%@", v16];
    detectionImages2 = [(ARBodyTrackingConfiguration *)self detectionImages];
    v18 = [detectionImages2 count];
    detectionImages3 = [(ARBodyTrackingConfiguration *)self detectionImages];
    allObjects = [detectionImages3 allObjects];
    v21 = [allObjects ar_map:&__block_literal_global_81_0];
    v22 = [v21 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" detectionImages=[count: %ld, %@]", v18, v22];
  }

  if ([(ARBodyTrackingConfiguration *)self automaticSkeletonScaleEstimationEnabled])
  {
    v23 = @"Enabled";
  }

  else
  {
    v23 = @"Disabled";
  }

  [v6 appendFormat:@" automaticSkeletonScaleEstimation=%@", v23];
  if ([(ARBodyTrackingConfiguration *)self appClipCodeTrackingEnabled])
  {
    v24 = @"Enabled";
  }

  else
  {
    v24 = @"Disabled";
  }

  [v6 appendFormat:@" appClipCodeTracking=%@", v24];
  [v6 appendString:@">"];

  return v6;
}

+ (BOOL)supportsAppClipCodeTracking
{
  if (ARAppleNeuralEngine())
  {
    return 1;
  }

  return +[ARAppClipCodeTechnique shouldRunCameraOrScannerPerformanceTestingMode];
}

- (BOOL)appClipCodeTrackingEnabled
{
  if (!self->_appClipCodeTrackingEnabled)
  {
    return 0;
  }

  v3 = objc_opt_class();

  return [v3 supportsAppClipCodeTracking];
}

- (id)parentImageSensorSettings
{
  v10.receiver = self;
  v10.super_class = ARBodyTrackingConfiguration;
  parentImageSensorSettings = [(ARConfiguration *)&v10 parentImageSensorSettings];
  settings = [parentImageSensorSettings settings];
  v5 = [settings mutableCopy];

  if ([objc_opt_class() supportsUserFaceTracking] && !+[ARKitUserDefaults BOOLForKey:](ARKitUserDefaults, "BOOLForKey:", @"com.apple.arkit.worldTracking.forceDisableFrontCamera"))
  {
    imageSensorSettingsForUserFaceTracking = [(ARBodyTrackingConfiguration *)self imageSensorSettingsForUserFaceTracking];
    [imageSensorSettingsForUserFaceTracking setEnabled:0];
    if (imageSensorSettingsForUserFaceTracking)
    {
      [v5 addObject:imageSensorSettingsForUserFaceTracking];
    }
  }

  imageSensorSettingsForUltraWide = [(ARBodyTrackingConfiguration *)self imageSensorSettingsForUltraWide];
  if (imageSensorSettingsForUltraWide)
  {
    [v5 addObject:imageSensorSettingsForUltraWide];
  }

  depthSensorSettingsForJasper = [(ARConfiguration *)self depthSensorSettingsForJasper];
  if (depthSensorSettingsForJasper)
  {
    [v5 addObject:depthSensorSettingsForJasper];
  }

  [parentImageSensorSettings setSettings:v5];

  return parentImageSensorSettings;
}

+ (id)_querySupportedVideoFormatsForUltraWide
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6986948];
  v34 = 0x1E000000280;
  v4 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.ultrawide.videoBinned"];
  v5 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.ultrawide.resolution" resultingDimensions:&v34];
  if (v5)
  {
    v6 = _ARLogSensor_7(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544386;
      v37 = v8;
      v38 = 2048;
      selfCopy5 = self;
      v40 = 2112;
      v41 = *&v3;
      v42 = 1024;
      v43 = v34;
      v44 = 1024;
      v45 = HIDWORD(v34);
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat resolution for %@ set to %i, %i by user defaults", buf, 0x2Cu);
    }
  }

  v9 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.ultrawide.frameRate"];
  v10 = v9;
  if (v9)
  {
    doubleValue = [v9 doubleValue];
    v13 = v12;
    v14 = _ARLogSensor_7(doubleValue);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543874;
      v37 = v16;
      v38 = 2048;
      selfCopy5 = self;
      v40 = 2048;
      v41 = v13;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat frame rate set to %f by user defaults", buf, 0x20u);
    }
  }

  else
  {
    v13 = 10.0;
  }

  v17 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:v34 frameRate:v4 videoBinned:v13];
  v18 = v17;
  if (v17)
  {
    [v17 imageResolution];
    v19 = [ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?];
    if (v19)
    {
      v35 = v18;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
      goto LABEL_25;
    }

    v21 = _ARLogGeneral_10(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138543874;
      v37 = v23;
      v38 = 2048;
      selfCopy5 = self;
      v40 = 2114;
      v41 = *&v18;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Not returning video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);
    }
  }

  if (ARShouldUseLogTypeError_onceToken_22 != -1)
  {
    +[ARBodyTrackingConfiguration _querySupportedVideoFormatsForUltraWide];
  }

  v24 = ARShouldUseLogTypeError_internalOSVersion_22;
  v25 = _ARLogGeneral_10(v17);
  v26 = v25;
  if (v24 == 1)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138543618;
      v37 = v28;
      v38 = 2048;
      selfCopy5 = self;
      v29 = "%{public}@ <%p>: Video format not found for using ultra wide in world tracking";
      v30 = v26;
      v31 = OS_LOG_TYPE_ERROR;
LABEL_23:
      _os_log_impl(&dword_1C241C000, v30, v31, v29, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v32 = objc_opt_class();
    v28 = NSStringFromClass(v32);
    *buf = 138543618;
    v37 = v28;
    v38 = 2048;
    selfCopy5 = self;
    v29 = "Error: %{public}@ <%p>: Video format not found for using ultra wide in world tracking";
    v30 = v26;
    v31 = OS_LOG_TYPE_INFO;
    goto LABEL_23;
  }

  v20 = MEMORY[0x1E695E0F0];
LABEL_25:

  return v20;
}

+ (id)supportedVideoFormatsForUltraWide
{
  if ([self isSupported])
  {
    if (supportedVideoFormatsForUltraWide_supportedFormats && ![supportedVideoFormatsForUltraWide_supportedFormats count])
    {
      _querySupportedVideoFormatsForUltraWide = [self _querySupportedVideoFormatsForUltraWide];
      v4 = supportedVideoFormatsForUltraWide_supportedFormats;
      supportedVideoFormatsForUltraWide_supportedFormats = _querySupportedVideoFormatsForUltraWide;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __64__ARBodyTrackingConfiguration_supportedVideoFormatsForUltraWide__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (supportedVideoFormatsForUltraWide_onceToken != -1)
    {
      dispatch_once(&supportedVideoFormatsForUltraWide_onceToken, block);
    }

    v5 = supportedVideoFormatsForUltraWide_supportedFormats;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __64__ARBodyTrackingConfiguration_supportedVideoFormatsForUltraWide__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormatsForUltraWide];
  v2 = supportedVideoFormatsForUltraWide_supportedFormats;
  supportedVideoFormatsForUltraWide_supportedFormats = v1;
}

- (id)imageSensorSettingsForUserFaceTracking
{
  supportedVideoFormatsForUserFaceTracking = [objc_opt_class() supportedVideoFormatsForUserFaceTracking];
  firstObject = [supportedVideoFormatsForUserFaceTracking firstObject];

  if (firstObject)
  {
    v5 = [[ARImageSensorSettings alloc] initWithVideoFormat:firstObject];
    [(ARImageSensorSettings *)v5 setAutoFocusEnabled:[(ARConfiguration *)self isAutoFocusEnabled]];
    [(ARImageSensorSettings *)v5 setMirrorVideoOutput:1];
    [(ARImageSensorSettings *)v5 setCalibrationDataOutputEnabled:0];
    [(ARImageSensorSettings *)v5 setMetaData:*MEMORY[0x1E6987018]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (ARImageSensorSettings)imageSensorSettingsForUltraWide
{
  v24 = *MEMORY[0x1E69E9840];
  if (![(ARBodyTrackingConfiguration *)self shouldUseUltraWide])
  {
    v5 = 0;
    goto LABEL_14;
  }

  supportedVideoFormatsForUltraWide = [objc_opt_class() supportedVideoFormatsForUltraWide];
  firstObject = [supportedVideoFormatsForUltraWide firstObject];

  if (firstObject)
  {
    v5 = [[ARImageSensorSettings alloc] initWithVideoFormat:firstObject];
    LODWORD(v6) = 1126170624;
    [(ARImageSensorSettings *)v5 setMaxGainOverride:v6];
    [(ARImageSensorSettings *)v5 setVisionDataOutputEnabled:[(ARBodyTrackingConfiguration *)self shouldEnableVisionDataForImageSensorSettings:v5]];
    if ([(ARImageSensorSettings *)v5 visionDataOutputEnabled])
    {
      _trackingOptions = [(ARBodyTrackingConfiguration *)self _trackingOptions];
      imageSensorSettings = [(ARBodyTrackingConfiguration *)self imageSensorSettings];
      [_trackingOptions setImageSensorSettings:imageSensorSettings];

      [_trackingOptions setImageSensorSettingsForUltraWide:v5];
      v9 = ARVisionDataParametersForWorldTrackingOptions(_trackingOptions);
      if (v9)
      {
        v10 = _ARLogGeneral_10([(ARImageSensorSettings *)v5 setVisionDataOutputParameters:v9]);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v18 = 138543874;
          v19 = v12;
          v20 = 2048;
          selfCopy2 = self;
          v22 = 2114;
          v23 = v9;
          v13 = "%{public}@ <%p>: Setting vision data output parameters for ultra wide: %{public}@";
          v14 = v10;
          v15 = 32;
LABEL_11:
          _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEBUG, v13, &v18, v15);
        }
      }

      else
      {
        v10 = _ARLogGeneral_10(0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v16 = objc_opt_class();
          v12 = NSStringFromClass(v16);
          v18 = 138543618;
          v19 = v12;
          v20 = 2048;
          selfCopy2 = self;
          v13 = "%{public}@ <%p>: Did not receive vision data output parameters for ultra wide.";
          v14 = v10;
          v15 = 22;
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_14:

  return v5;
}

- (BOOL)shouldUseUltraWide
{
  v2 = ARDeviceSupportsUltraWideCamera(self, a2);
  if (!v2)
  {
    return 0;
  }

  if ((ARDeviceSupportsJasper(v2, v3) & 1) == 0)
  {
    v5 = ARDeviceSupportsMulticamMode();
    if (v5 && ARUserDefaultsMulticamModeEnabled(v5, v6))
    {
      supportedVideoFormatsForUltraWide = [objc_opt_class() supportedVideoFormatsForUltraWide];
      v4 = [supportedVideoFormatsForUltraWide count] != 0;

      return v4;
    }

    return 0;
  }

  return 1;
}

- (BOOL)shouldEnableVisionDataForImageSensorSettings:(id)settings
{
  videoFormat = [settings videoFormat];
  if (videoFormat && ((v5 = -[ARBodyTrackingConfiguration shouldUseUltraWide](self, "shouldUseUltraWide"), [videoFormat captureDeviceType], v6 = objc_claimAutoreleasedReturnValue(), v7 = v6, !v5) ? (v8 = MEMORY[0x1E6986950]) : (v8 = MEMORY[0x1E6986948]), v9 = *v8, v6, v7 == v9))
  {
    _trackingOptions = [(ARBodyTrackingConfiguration *)self _trackingOptions];
    slamConfiguration = [_trackingOptions slamConfiguration];
    v13 = [slamConfiguration isEqualToString:@"MeasureApp"];

    if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.visionData"])
    {
      v10 = ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"]| v13) ^ 1;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

@end