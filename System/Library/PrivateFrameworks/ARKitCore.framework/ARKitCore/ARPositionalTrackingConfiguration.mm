@interface ARPositionalTrackingConfiguration
+ (id)_querySupportedVideoFormats;
+ (id)supportedVideoFormats;
- (ARPositionalTrackingConfiguration)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageSensorSettings;
- (id)worldTrackingOptions;
- (void)createTechniques:(id)techniques;
@end

@implementation ARPositionalTrackingConfiguration

- (ARPositionalTrackingConfiguration)init
{
  v5.receiver = self;
  v5.super_class = ARPositionalTrackingConfiguration;
  initPrivate = [(ARConfiguration *)&v5 initPrivate];
  v3 = initPrivate;
  if (initPrivate)
  {
    [(ARConfiguration *)initPrivate setLightEstimationEnabled:0];
    [(ARConfiguration *)v3 setAutoFocusEnabled:1];
    v3->_relocalizationEnabled = 1;
  }

  return v3;
}

+ (id)supportedVideoFormats
{
  if ([self isSupported])
  {
    if (supportedVideoFormats_supportedFormats_0 && ![supportedVideoFormats_supportedFormats_0 count])
    {
      _querySupportedVideoFormats = [self _querySupportedVideoFormats];
      v4 = supportedVideoFormats_supportedFormats_0;
      supportedVideoFormats_supportedFormats_0 = _querySupportedVideoFormats;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__ARPositionalTrackingConfiguration_supportedVideoFormats__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (supportedVideoFormats_onceToken_1 != -1)
    {
      dispatch_once(&supportedVideoFormats_onceToken_1, block);
    }

    v5 = supportedVideoFormats_supportedFormats_0;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __58__ARPositionalTrackingConfiguration_supportedVideoFormats__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormats];
  v2 = supportedVideoFormats_supportedFormats_0;
  supportedVideoFormats_supportedFormats_0 = v1;
}

+ (id)_querySupportedVideoFormats
{
  v54[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6986950];
  if (ARDeviceSupportsUltraWideCamera(v3, v4))
  {
    v5 = *MEMORY[0x1E6986948];

    v3 = v5;
  }

  v46 = 0x1E000000280;
  v6 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.wide.videoBinned"];
  v7 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.wide.resolution" resultingDimensions:&v46];
  if (v7)
  {
    v8 = _ARLogSensor_8(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138544130;
      v50 = v10;
      v51 = 2048;
      selfCopy7 = self;
      v53 = 1024;
      LODWORD(v54[0]) = v46;
      WORD2(v54[0]) = 1024;
      *(v54 + 6) = HIDWORD(v46);
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat resolution set to %i, %i by user defaults", buf, 0x22u);
    }
  }

  v11 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.ultrawide.frameRate"];
  v12 = v11;
  if (v11)
  {
    doubleValue = [v11 doubleValue];
    v15 = v14;
    v16 = _ARLogSensor_8(doubleValue);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138543874;
      v50 = v18;
      v51 = 2048;
      selfCopy7 = self;
      v53 = 2048;
      *v54 = v15;
      _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARPositionalTrackingConfiguration frame rate set to %f by user defaults", buf, 0x20u);
    }
  }

  else
  {
    v15 = 10.0;
  }

  v19 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:v46 frameRate:v6 videoBinned:v15];
  v20 = v19;
  if (v19)
  {
    [v19 imageResolution];
    v21 = [ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?];
    if (v21)
    {
      v48 = v20;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
      v23 = v20;
      goto LABEL_35;
    }

    v24 = _ARLogGeneral_14(v21);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543874;
      v50 = v26;
      v51 = 2048;
      selfCopy7 = self;
      v53 = 2114;
      v54[0] = v20;
      _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Not returning video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);
    }
  }

  v46 = 0x2D000000500;
  v23 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:0x2D000000500 frameRate:v6 videoBinned:10.0];

  if (!v23)
  {
LABEL_26:
    if (ARShouldUseLogTypeError_onceToken_26 != -1)
    {
      +[ARPositionalTrackingConfiguration _querySupportedVideoFormats];
    }

    v36 = ARShouldUseLogTypeError_internalOSVersion_26;
    v37 = _ARLogGeneral_14(v27);
    v38 = v37;
    if (v36 == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138543618;
        v50 = v40;
        v51 = 2048;
        selfCopy7 = self;
        v41 = "%{public}@ <%p>: Video format not found for positional tracking configuration";
        v42 = v38;
        v43 = OS_LOG_TYPE_ERROR;
LABEL_33:
        _os_log_impl(&dword_1C241C000, v42, v43, v41, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v44 = objc_opt_class();
      v40 = NSStringFromClass(v44);
      *buf = 138543618;
      v50 = v40;
      v51 = 2048;
      selfCopy7 = self;
      v41 = "Error: %{public}@ <%p>: Video format not found for positional tracking configuration";
      v42 = v38;
      v43 = OS_LOG_TYPE_INFO;
      goto LABEL_33;
    }

    v22 = MEMORY[0x1E695E0F0];
    goto LABEL_35;
  }

  [v23 imageResolution];
  v28 = [ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?];
  v29 = v28;
  v30 = _ARLogGeneral_14(v28);
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (!v29)
  {
    if (v31)
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      *buf = 138543874;
      v50 = v35;
      v51 = 2048;
      selfCopy7 = self;
      v53 = 2114;
      v54[0] = v23;
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Not returning video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);
    }

    goto LABEL_26;
  }

  if (v31)
  {
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    *buf = 138543618;
    v50 = v33;
    v51 = 2048;
    selfCopy7 = self;
    _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Falling back to 1280x720 for positional tracking configuration", buf, 0x16u);
  }

  v47 = v23;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
LABEL_35:

  return v22;
}

- (id)imageSensorSettings
{
  v23 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = ARPositionalTrackingConfiguration;
  imageSensorSettings = [(ARConfiguration *)&v18 imageSensorSettings];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.visionData"])
  {
    v4 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"]^ 1;
  }

  else
  {
    v4 = 0;
  }

  [imageSensorSettings setVisionDataOutputEnabled:v4];
  if ([imageSensorSettings visionDataOutputEnabled])
  {
    worldTrackingOptions = [(ARPositionalTrackingConfiguration *)self worldTrackingOptions];
    [worldTrackingOptions setImageSensorSettings:imageSensorSettings];
    v6 = ARVisionDataParametersForWorldTrackingOptions(worldTrackingOptions);
    v7 = v6;
    if (v6)
    {
      [imageSensorSettings setVisionDataOutputParameters:v6];
LABEL_16:

      goto LABEL_17;
    }

    if (ARShouldUseLogTypeError_onceToken_26 != -1)
    {
      +[ARPositionalTrackingConfiguration _querySupportedVideoFormats];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_26;
    v9 = _ARLogGeneral_14(v6);
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v20 = v12;
        v21 = 2048;
        selfCopy2 = self;
        v13 = "%{public}@ <%p>: Error reading vision data output parameters.";
        v14 = v10;
        v15 = OS_LOG_TYPE_ERROR;
LABEL_14:
        _os_log_impl(&dword_1C241C000, v14, v15, v13, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v12 = NSStringFromClass(v16);
      *buf = 138543618;
      v20 = v12;
      v21 = 2048;
      selfCopy2 = self;
      v13 = "Error: %{public}@ <%p>: Error reading vision data output parameters.";
      v14 = v10;
      v15 = OS_LOG_TYPE_INFO;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_17:

  return imageSensorSettings;
}

- (id)worldTrackingOptions
{
  v3 = objc_opt_new();
  deviceModel = [(ARConfiguration *)self deviceModel];
  [v3 setDeviceModel:deviceModel];

  [v3 setRelocalizationEnabled:{-[ARPositionalTrackingConfiguration isRelocalizationEnabled](self, "isRelocalizationEnabled")}];
  [v3 setPlaneDetection:{-[ARPositionalTrackingConfiguration planeDetection](self, "planeDetection")}];
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.mlOnANEDevices"])
  {
    v5 = ARAppleNeuralEngine();
  }

  else
  {
    v5 = 0;
  }

  [v3 setMlModelEnabled:v5];
  initialWorldMap = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
  [v3 setInitialWorldMap:initialWorldMap];

  replaySensor = [(ARConfiguration *)self replaySensor];
  v8 = replaySensor;
  if (replaySensor && [replaySensor replayMode])
  {
    [v3 setDeterministicMode:1];
  }

  if (self->_vioFusionEnabled)
  {
    [v3 setSlamConfiguration:@"CoreLocationIntegration"];
  }

  [v3 setPlaneEstimationShouldUseJasperData:0];

  return v3;
}

- (void)createTechniques:(id)techniques
{
  v28 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  worldTrackingOptions = [(ARPositionalTrackingConfiguration *)self worldTrackingOptions];
  imageSensorSettings = [(ARPositionalTrackingConfiguration *)self imageSensorSettings];
  [worldTrackingOptions setImageSensorSettings:imageSensorSettings];

  if ([worldTrackingOptions planeDetection])
  {
    v7 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.accuratePlaneExtentCheck"];
    v8 = v7;
    v9 = _ARLogGeneral_14(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v12 = @"disabled";
      *buf = 138543874;
      v23 = v11;
      if (v8)
      {
        v12 = @"enabled";
      }

      v24 = 2048;
      selfCopy = self;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Ray-cast accurate extent check: %{public}@", buf, 0x20u);
    }

    if (v8)
    {
      [worldTrackingOptions setPlaneDetection:{objc_msgSend(worldTrackingOptions, "planeDetection") | 0x200}];
    }
  }

  v13 = [[ARWorldTrackingTechnique alloc] initWithOptions:worldTrackingOptions];
  if (v13)
  {
    v14 = [ARParentTechnique alloc];
    v21 = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    v16 = [(ARParentTechnique *)v14 initWithParallelTechniques:v15];

    [techniquesCopy addObject:v16];
    options = [(ARWorldTrackingTechnique *)v13 options];
    planeDetection = [options planeDetection];

    if (planeDetection)
    {
      v19 = [[ARPlaneEstimationTechnique alloc] initWithTrackingTechnique:v13];
      [techniquesCopy addObject:v19];
    }

    v20.receiver = self;
    v20.super_class = ARPositionalTrackingConfiguration;
    [(ARConfiguration *)&v20 createTechniques:techniquesCopy];
    if ([(ARPositionalTrackingConfiguration *)self planeDetection])
    {
      ARAddNonJasperSemanticsToParent(v16, techniquesCopy, [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate], 0);
    }
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = ARPositionalTrackingConfiguration;
  if ([(ARConfiguration *)&v12 isEqual:equalCopy])
  {
    v5 = equalCopy;
    if (self->_planeDetection == *(v5 + 15))
    {
      initialWorldMap = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
      initialWorldMap2 = [v5 initialWorldMap];
      if (initialWorldMap == initialWorldMap2)
      {
        v10 = self->_relocalizationEnabled == v5[112] && self->_vioFusionEnabled == v5[113];
      }

      else
      {
        initialWorldMap3 = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
        initialWorldMap4 = [v5 initialWorldMap];
        v10 = ([initialWorldMap3 isEqual:initialWorldMap4] & 1) != 0 && self->_relocalizationEnabled == v5[112] && self->_vioFusionEnabled == v5[113];
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
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = ARPositionalTrackingConfiguration;
  v4 = [(ARConfiguration *)&v7 copyWithZone:zone];
  v4[15] = self->_planeDetection;
  initialWorldMap = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
  [v4 setInitialWorldMap:initialWorldMap];

  *(v4 + 112) = self->_relocalizationEnabled;
  *(v4 + 113) = self->_vioFusionEnabled;
  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  isAutoFocusEnabled = [(ARConfiguration *)self isAutoFocusEnabled];
  v8 = @"Disabled";
  if (isAutoFocusEnabled)
  {
    v8 = @"Enabled";
  }

  [v6 appendFormat:@" autoFocus=%@", v8];
  v9 = NSStringFromARPlaneDetection(self->_planeDetection);
  [v6 appendFormat:@" planeDetection=%@", v9];

  initialWorldMap = [(ARPositionalTrackingConfiguration *)self initialWorldMap];

  if (initialWorldMap)
  {
    initialWorldMap2 = [(ARPositionalTrackingConfiguration *)self initialWorldMap];
    [v6 appendFormat:@" initialWorldMap=%@", initialWorldMap2];
  }

  descriptionWithoutBrackets = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:descriptionWithoutBrackets];

  [v6 appendString:@">"];

  return v6;
}

@end