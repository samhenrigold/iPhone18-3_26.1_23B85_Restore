@interface ARConfiguration
+ (AVCaptureDevice)configurableCaptureDeviceForPrimaryCamera;
+ (BOOL)shouldProvideNonBinnedVideoFormats;
+ (NSArray)supportedVideoFormats;
+ (id)_querySupportedVideoFormatsForJasper:(int64_t)jasper;
+ (id)_supportedVideoFormatsForJasper:(int64_t)jasper;
+ (void)setShouldProvideNonBinnedVideoFormats:(BOOL)formats;
+ (void)setShouldProvideX420VideoFormat:(BOOL)format;
+ (void)setShouldUse30FPSJasperFormats:(BOOL)formats;
- (ARImageSensorSettings)imageSensorSettings;
- (ARParentImageSensorSettings)parentImageSensorSettings;
- (ARReplaySensorProtocol)replaySensor;
- (BOOL)isEqual:(id)equal;
- (BOOL)isKindOfConfiguration:(Class)configuration;
- (NSString)deviceModel;
- (id)copyWithZone:(_NSZone *)zone;
- (id)depthSensorSettingsForJasper;
- (id)description;
- (id)descriptionWithoutBrackets;
- (id)getAsKindOfConfiguration:(Class)configuration;
- (id)initPrivate;
- (id)techniques;
- (id)techniquesForStillImageGraph;
- (unint64_t)hash;
- (void)_createTechniques:(id)techniques forStillImage:(BOOL)image;
- (void)setCameraPosition:(int64_t)position;
- (void)setCustomSensors:(id)sensors;
- (void)setDepthSensorNumberOfPointsMode:(int64_t)mode;
- (void)setFrameSemantics:(ARFrameSemantics)frameSemantics;
- (void)setJasperFrameRate:(int64_t)rate;
- (void)setTimeOfFlightProjectorMode:(id)mode;
- (void)setVideoFormat:(ARVideoFormat *)videoFormat;
@end

@implementation ARConfiguration

- (id)initPrivate
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = ARConfiguration;
  v2 = [(ARConfiguration *)&v17 init];
  if (v2)
  {
    if ([v2 isMemberOfClass:objc_opt_class()])
    {
LABEL_14:
      v2[35] = 0;
      *(v2 + 6) = 0;
      *(v2 + 72) = xmmword_1C25C8E00;
      *(v2 + 1) = 0;
      objc_storeStrong(v2 + 11, @"ARTimeOfFlightProjectorModeNormalShortHybrid");
      *(v2 + 12) = 0;
      v2[34] = [ARKitUserDefaults integerForKey:@"com.apple.arkit.personOcclusion.optimizationStrategy"]!= 0;
      *(v2 + 3) = 0;
      *(v2 + 13) = -1;
      v2[33] = 0;
      v2[38] = 0;
      v2[41] = 0;
      v2[42] = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.initialFrameDrop.enabled"];
      v2[36] = 0;
      return v2;
    }

    supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
    firstObject = [supportedVideoFormats firstObject];
    v5 = *(v2 + 2);
    *(v2 + 2) = firstObject;

    if (*(v2 + 2))
    {
LABEL_13:

      goto LABEL_14;
    }

    if (ARShouldUseLogTypeError_onceToken_23 != -1)
    {
      [ARConfiguration initPrivate];
    }

    v7 = ARShouldUseLogTypeError_internalOSVersion_23;
    v8 = _ARLogGeneral_11(v6);
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v19 = v11;
        v20 = 2048;
        v21 = v2;
        v12 = "%{public}@ <%p>: video format is nil, supportedVideoFormats is empty";
        v13 = v9;
        v14 = OS_LOG_TYPE_ERROR;
LABEL_11:
        _os_log_impl(&dword_1C241C000, v13, v14, v12, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v15 = objc_opt_class();
      v11 = NSStringFromClass(v15);
      *buf = 138543618;
      v19 = v11;
      v20 = 2048;
      v21 = v2;
      v12 = "Error: %{public}@ <%p>: video format is nil, supportedVideoFormats is empty";
      v13 = v9;
      v14 = OS_LOG_TYPE_INFO;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  return v2;
}

- (void)setVideoFormat:(ARVideoFormat *)videoFormat
{
  v4 = videoFormat;
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v6 = [supportedVideoFormats indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Video format not supported by this configuration" userInfo:0];
    objc_exception_throw(v8);
  }

  v7 = self->_videoFormat;
  self->_videoFormat = v4;
}

- (ARParentImageSensorSettings)parentImageSensorSettings
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  imageSensorSettings = [(ARConfiguration *)self imageSensorSettings];
  [imageSensorSettings setDropsInitialFramesOutsideExposureTargetOffsetThreshold:{-[ARConfiguration dropInitialFramesOutsideExposureTarget](self, "dropInitialFramesOutsideExposureTarget")}];
  v7[0] = imageSensorSettings;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 setSettings:v5];

  [v3 setAudioCaptureEnabled:{-[ARConfiguration providesAudioData](self, "providesAudioData")}];
  [v3 setAllowCameraInMultipleForegroundAppLayout:{-[ARConfiguration allowCameraInMultipleForegroundAppLayout](self, "allowCameraInMultipleForegroundAppLayout")}];

  return v3;
}

- (ARImageSensorSettings)imageSensorSettings
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [ARImageSensorSettings alloc];
  videoFormat = [(ARConfiguration *)self videoFormat];
  v5 = [(ARImageSensorSettings *)v3 initWithVideoFormat:videoFormat];

  [(ARImageSensorSettings *)v5 setAutoFocusEnabled:[(ARConfiguration *)self isAutoFocusEnabled]];
  [(ARImageSensorSettings *)v5 setVideoHDRAllowed:[(ARConfiguration *)self videoHDRAllowed]];
  [(ARImageSensorSettings *)v5 setSupportsCapturingHighResolutionFrames:1];
  [(ARImageSensorSettings *)v5 setFocusPixelBlurScoreDeliveryEnabled:[(ARConfiguration *)self focusPixelBlurScoreDeliveryEnabled]];
  [(ARImageSensorSettings *)v5 setCalibrationDataOutputEnabled:[(ARConfiguration *)self shouldUseJasper]];
  videoFormat2 = [(ARConfiguration *)self videoFormat];
  captureDevicePosition = [videoFormat2 captureDevicePosition];

  if (captureDevicePosition == 2)
  {
    v8 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.imagesensor.face.mirror"];
    v9 = v8;
    if (v8)
    {
      bOOLValue = [v8 BOOLValue];
      if (_ARLogSensor_onceToken_10 != -1)
      {
        [ARConfiguration imageSensorSettings];
      }

      v11 = _ARLogSensor_logObj_10;
      if (os_log_type_enabled(_ARLogSensor_logObj_10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        v15 = "disabled";
        *v17 = 138543874;
        *&v17[4] = v14;
        if (bOOLValue)
        {
          v15 = "enabled";
        }

        *&v17[12] = 2048;
        *&v17[14] = self;
        v18 = 2080;
        v19 = v15;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: Face tracking image sensor mirrored video output %s by user defaults", v17, 0x20u);
      }
    }

    else
    {
      bOOLValue = 1;
    }

    [(ARImageSensorSettings *)v5 setMirrorVideoOutput:bOOLValue, *v17, *&v17[8]];
  }

  return v5;
}

- (id)depthSensorSettingsForJasper
{
  if ([(ARConfiguration *)self shouldUseJasper])
  {
    v3 = [objc_opt_class() _supportedVideoFormatsForJasper:self->_depthSensorNumberOfPointsMode];
    firstObject = [v3 firstObject];

    if (firstObject)
    {
      v5 = [[ARDepthSensorSettings alloc] initWithVideoFormat:firstObject];
      timeOfFlightProjectorMode = [(ARConfiguration *)self timeOfFlightProjectorMode];

      if (timeOfFlightProjectorMode != @"ARTimeOfFlightProjectorModeNone")
      {
        timeOfFlightProjectorMode2 = [(ARConfiguration *)self timeOfFlightProjectorMode];
        [(ARDepthSensorSettings *)v5 setTimeOfFlightProjectorMode:timeOfFlightProjectorMode2];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_querySupportedVideoFormatsForJasper:(int64_t)jasper
{
  v34[3] = *MEMORY[0x1E69E9840];
  if (s_customJasperFrameRate)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v34[0] = v5;
    v34[1] = &unk_1F4259450;
    v34[2] = &unk_1F4259450;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:3];
  }

  else
  {
    v6 = 0;
  }

  v7 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.jasper.framerate"];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 componentsSeparatedByString:{@", "}];
    v10 = [v9 mutableCopy];

    v11 = [v10 count];
    if (v11 == 3)
    {
      v12 = v6;
      v6 = v10;
    }

    else
    {
      if (ARShouldUseLogTypeError_onceToken_23 != -1)
      {
        [ARConfiguration initPrivate];
      }

      v19 = ARShouldUseLogTypeError_internalOSVersion_23;
      v20 = _ARLogGeneral_11(v11);
      v12 = v20;
      if (v19 == 1)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = objc_opt_class();
          v22 = NSStringFromClass(v21);
          *buf = 138543874;
          v29 = v22;
          v30 = 2048;
          selfCopy2 = self;
          v32 = 2048;
          v33 = [v6 count];
          _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Expected 3 jasper frame rate values: %lu", buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138543874;
        v29 = v25;
        v30 = 2048;
        selfCopy2 = self;
        v32 = 2048;
        v33 = [v6 count];
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Expected 3 jasper frame rate values: %lu", buf, 0x20u);
      }
    }
  }

  v13 = [ARVideoFormat bestTimeOfFlightFormatForDevicePosition:1 depthSensorNumberOfPointsMode:jasper frameRates:v6];
  v15 = v13;
  if (v13)
  {
    v27 = v13;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  }

  else if (ARDeviceSupportsJasper(0, v14))
  {
    v17 = [ARVideoFormat alloc];
    v18 = [(ARVideoFormat *)v17 initWithImageResolution:1 captureDevicePosition:*MEMORY[0x1E6986930] captureDeviceType:512.0, 256.0];
    v26 = v18;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

+ (id)_supportedVideoFormatsForJasper:(int64_t)jasper
{
  if ([self isSupported])
  {
    firstObject = [s_supportedJasperFormatsCache firstObject];
    device = [firstObject device];

    if (!device || s_supportedJasperFormatsCache && ![s_supportedJasperFormatsCache count])
    {
      v7 = [self _querySupportedVideoFormatsForJasper:jasper];
      v8 = s_supportedJasperFormatsCache;
      s_supportedJasperFormatsCache = v7;
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __51__ARConfiguration__supportedVideoFormatsForJasper___block_invoke;
    v11[3] = &__block_descriptor_48_e5_v8__0l;
    v11[4] = self;
    v11[5] = jasper;
    if (_supportedVideoFormatsForJasper__onceToken != -1)
    {
      dispatch_once(&_supportedVideoFormatsForJasper__onceToken, v11);
    }

    v9 = s_supportedJasperFormatsCache;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

void __51__ARConfiguration__supportedVideoFormatsForJasper___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormatsForJasper:*(a1 + 40)];
  v2 = s_supportedJasperFormatsCache;
  s_supportedJasperFormatsCache = v1;
}

- (void)setCustomSensors:(id)sensors
{
  v54 = *MEMORY[0x1E69E9840];
  sensorsCopy = sensors;
  v6 = sensorsCopy;
  if (sensorsCopy)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    supportedVideoFormats = sensorsCopy;
    v8 = [supportedVideoFormats countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (!v8)
    {
      goto LABEL_24;
    }

    v9 = *v44;
LABEL_4:
    v10 = 0;
    while (1)
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(supportedVideoFormats);
      }

      v11 = *(*(&v43 + 1) + 8 * v10);
      if ([v11 conformsToProtocol:&unk_1F425D818])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [supportedVideoFormats countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v8)
        {
          goto LABEL_4;
        }

        goto LABEL_24;
      }
    }

    v12 = v11;
    v13 = *MEMORY[0x1E6986950];
    v14 = objc_initWeak(&location, self);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = objc_loadWeakRetained(&location);
      templateConfiguration = [v16 templateConfiguration];
      objc_storeWeak(&location, templateConfiguration);
    }

    v18 = objc_loadWeakRetained(&location);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v25 = objc_loadWeakRetained(&location);
      objc_opt_class();
      v26 = objc_opt_isKindOfClass();

      if ((v26 & 1) == 0)
      {
        v28 = 1;
        goto LABEL_20;
      }
    }

    v27 = *MEMORY[0x1E6986940];

    v28 = 2;
    v13 = v27;
LABEL_20:
    v29 = [ARVideoFormat alloc];
    [v12 imageResolution];
    v30 = [(ARVideoFormat *)v29 initWithImageResolution:v28 captureDevicePosition:v13 captureDeviceType:?];
    videoFormat = self->_videoFormat;
    self->_videoFormat = v30;

    v33 = _ARLogGeneral_11(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      v36 = [(ARVideoFormat *)self->_videoFormat description];
      *buf = 138543874;
      v49 = v35;
      v50 = 2048;
      selfCopy3 = self;
      v52 = 2114;
      v53 = v36;
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Video format updated from replay sensor: %{public}@", buf, 0x20u);
    }

    objc_destroyWeak(&location);
    goto LABEL_23;
  }

  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  firstObject = [supportedVideoFormats firstObject];
  v20 = self->_videoFormat;
  self->_videoFormat = firstObject;

  v12 = _ARLogGeneral_11(v21);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = [(ARVideoFormat *)self->_videoFormat description];
    *buf = 138543874;
    v49 = v23;
    v50 = 2048;
    selfCopy3 = self;
    v52 = 2114;
    v53 = v24;
    _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Video format reset to default: %{public}@", buf, 0x20u);
  }

LABEL_23:

LABEL_24:
  objc_storeStrong(&self->_customSensors, sensors);
  v38 = _ARLogGeneral_11(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    v39 = objc_opt_class();
    v40 = NSStringFromClass(v39);
    customSensors = self->_customSensors;
    *buf = 138543874;
    v49 = v40;
    v50 = 2048;
    selfCopy3 = self;
    v52 = 2048;
    v53 = customSensors;
    _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Custom sensors set: %p", buf, 0x20u);
  }
}

- (void)setCameraPosition:(int64_t)position
{
  v23 = *MEMORY[0x1E69E9840];
  if (position && (-[ARConfiguration videoFormat](self, "videoFormat"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 captureDevicePosition], v5, v6 != position))
  {
    supportedVideoFormats = [ARVideoFormat supportedVideoFormatsForDevicePosition:position deviceType:*MEMORY[0x1E6986950]];
    firstObject = [supportedVideoFormats firstObject];
    videoFormat = self->_videoFormat;
    self->_videoFormat = firstObject;

    v13 = _ARLogGeneral_11(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = [(ARVideoFormat *)self->_videoFormat description];
      v17 = 138543874;
      v18 = v15;
      v19 = 2048;
      selfCopy = self;
      v21 = 2114;
      v22 = v16;
      _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using custom video format for configuration, it may not be supported: %{public}@", &v17, 0x20u);
    }
  }

  else
  {
    supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
    firstObject2 = [supportedVideoFormats firstObject];
    v9 = self->_videoFormat;
    self->_videoFormat = firstObject2;
  }

  self->_cameraPosition = position;
}

- (void)setFrameSemantics:(ARFrameSemantics)frameSemantics
{
  if (([objc_opt_class() supportsFrameSemantics:frameSemantics] & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"This set of frame semantics is not supported on this configuration" userInfo:0];
    objc_exception_throw(v6);
  }

  self->_frameSemantics = frameSemantics;
  v5 = (frameSemantics & 0x18) == 0 && [ARKitUserDefaults integerForKey:@"com.apple.arkit.personOcclusion.optimizationStrategy"]!= 0;
  self->_smartPersonOcclusionEnabled = v5;
}

- (NSString)deviceModel
{
  v3 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.worldtracking.deviceModel"];
  v4 = v3;
  if (v3)
  {
    deviceModel = v3;
  }

  else
  {
    replaySensor = [(ARConfiguration *)self replaySensor];
    deviceModel = [replaySensor deviceModel];
  }

  return deviceModel;
}

- (ARReplaySensorProtocol)replaySensor
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  customSensors = [(ARConfiguration *)self customSensors];
  v3 = [customSensors countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(customSensors);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 conformsToProtocol:&unk_1F425D818])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [customSensors countByEnumeratingWithState:&v8 objects:v12 count:16];
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

- (void)setTimeOfFlightProjectorMode:(id)mode
{
  modeCopy = mode;
  if (([modeCopy isEqualToString:@"ARTimeOfFlightProjectorModeNone"] & 1) == 0 && (objc_msgSend(objc_opt_class(), "supportsTimeOfFlightProjectorMode") & 1) == 0)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Projector Mode is not supported on this device" userInfo:0];
    objc_exception_throw(v6);
  }

  timeOfFlightProjectorMode = self->_timeOfFlightProjectorMode;
  self->_timeOfFlightProjectorMode = modeCopy;
}

- (id)techniques
{
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  [(ARConfiguration *)self createTechniques:v3];
  objc_autoreleasePoolPop(v4);
  if ([v3 count])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (id)techniquesForStillImageGraph
{
  v3 = objc_opt_new();
  v4 = objc_autoreleasePoolPush();
  [(ARConfiguration *)self _createTechniques:v3 forStillImage:1];
  objc_autoreleasePoolPop(v4);
  if ([v3 count])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_createTechniques:(id)techniques forStillImage:(BOOL)image
{
  imageCopy = image;
  v73 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  v7 = ~[(ARConfiguration *)self frameSemantics]& 3;
  frameSemantics = [(ARConfiguration *)self frameSemantics];
  v9 = ([(ARConfiguration *)self frameSemantics]& 4) == 0 || imageCopy;
  frameSemantics2 = [(ARConfiguration *)self frameSemantics];
  frameSemantics3 = [(ARConfiguration *)self frameSemantics];
  v13 = frameSemantics3;
  if (!v7)
  {
    frameSemantics3 = [objc_opt_class() supportsFrameSemantics:3];
    if (frameSemantics3)
    {
      if (ARDeviceSupportsJasper(frameSemantics3, v12))
      {
        v14 = [ARDepthTechnique sceneDepthTechniqueForPrioritization:[(ARConfiguration *)self _depthPrioritization] temporalSmoothing:(v13 >> 4) & 1];
      }

      else
      {
        v14 = objc_opt_new();
      }

      v17 = v14;
      v22 = frameSemantics2 & 8 | v13 & 0x10;
      _ARAddScalingTechniquesToTechniques(techniquesCopy, !self->_disableOcclusionForPersonSegmentation, 0, 256.0, 192.0);
      v19 = objc_opt_new();
      [v19 setDisableTemporalSegmentation:imageCopy];
      v23 = objc_alloc(MEMORY[0x1E695DF70]);
      v24 = objc_opt_new();
      v25 = [v23 initWithObjects:{v19, v24, 0}];

      if (v22 && ARDeviceSupportsJasper(v26, v27))
      {
        v28 = _ARParentTechniqueForDepthTechnique(v17, imageCopy);
        [techniquesCopy addObject:v28];
      }

      else
      {
        [v25 addObject:v17];
      }

      if (!self->_disableOcclusionForPersonSegmentation)
      {
        v29 = objc_alloc_init(ARMLImageMattingMetadataTechnique);
        [v25 addObject:v29];
      }

      v20 = [(ARParentTechnique *)[ARPersonOcclusionParentTechnique alloc] initWithParallelTechniques:v25];
      smartPersonOcclusionEnabled = [(ARConfiguration *)self smartPersonOcclusionEnabled];
      v31 = 0;
      if (smartPersonOcclusionEnabled && !imageCopy)
      {
        v31 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.personOcclusion.optimizationStrategy"];
      }

      [(ARPersonOcclusionParentTechnique *)v20 setOptimizationStrategy:v31];
      [techniquesCopy addObject:v20];
      v32 = objc_opt_new();
      [techniquesCopy addObject:v32];

      goto LABEL_38;
    }
  }

  if (frameSemantics)
  {
    frameSemantics3 = [objc_opt_class() supportsFrameSemantics:1];
    if (frameSemantics3)
    {
      v15 = !self->_disableOcclusionForPersonSegmentation;
      v16 = [(ARConfiguration *)self getAsKindOfConfiguration:objc_opt_class()];
      v17 = v16;
      if (v16)
      {
        prepareForPortraitImageData = [v16 prepareForPortraitImageData];
      }

      else
      {
        prepareForPortraitImageData = 0;
      }

      _ARAddScalingTechniquesToTechniques(techniquesCopy, v15, prepareForPortraitImageData, 256.0, 192.0);
      v19 = objc_opt_new();
      [v19 setDisableTemporalSegmentation:imageCopy];
      v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v19, 0}];
      if (!self->_disableOcclusionForPersonSegmentation)
      {
        v34 = objc_alloc_init(ARMLImageMattingMetadataTechnique);
        [v33 addObject:v34];
      }

      v35 = frameSemantics2 & 8 | v13 & 0x10;
      v20 = [(ARParentTechnique *)[ARPersonOcclusionParentTechnique alloc] initWithParallelTechniques:v33];
      if ([(ARConfiguration *)self smartPersonOcclusionEnabled])
      {
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      [(ARPersonOcclusionParentTechnique *)v20 setOptimizationStrategy:v36];
      v37 = [techniquesCopy addObject:v20];
      if (v35 && ARDeviceSupportsJasper(v37, v38))
      {
        v39 = [ARDepthTechnique sceneDepthTechniqueForPrioritization:[(ARConfiguration *)self _depthPrioritization] temporalSmoothing:(v13 >> 4) & 1];
        v40 = _ARParentTechniqueForDepthTechnique(v39, imageCopy);
        [techniquesCopy addObject:v40];
      }

LABEL_38:
      v21 = 1;
      if (v9)
      {
        goto LABEL_48;
      }

      goto LABEL_39;
    }
  }

  if (frameSemantics2 & 8 | v13 & 0x10 && ARDeviceSupportsJasper(frameSemantics3, v12))
  {
    v17 = [ARDepthTechnique sceneDepthTechniqueForPrioritization:[(ARConfiguration *)self _depthPrioritization] temporalSmoothing:(v13 >> 4) & 1];
    v19 = _ARParentTechniqueForDepthTechnique(v17, imageCopy);
    _ARAddScalingTechniquesToTechniques(techniquesCopy, 0, 0, 256.0, 192.0);
    [techniquesCopy addObject:v19];
    v20 = 0;
    goto LABEL_38;
  }

  v20 = 0;
  v21 = 0;
  if (v9)
  {
    goto LABEL_48;
  }

LABEL_39:
  if ([objc_opt_class() supportsFrameSemantics:4])
  {
    if ((v21 & 1) == 0)
    {
      v41 = +[AR2DSkeletonDetectionTechnique inputDimensionsForMLModel];
      v43 = v42;
      v45 = v44;
      v46 = _ARLogGeneral_11(v41);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = objc_opt_class();
        v48 = NSStringFromClass(v47);
        *buf = 138544130;
        v66 = v48;
        v67 = 2048;
        selfCopy = self;
        v69 = 2048;
        v70 = v43;
        v71 = 2048;
        v72 = v45;
        _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_INFO, "%{public}@ <%p>: ARConfiguration for Body Detection Scaler dimensions: (%f,%f)", buf, 0x2Au);
      }

      _ARAddScalingTechniquesToTechniques(techniquesCopy, 0, 0, v43, v45);
    }

    v49 = objc_opt_new();
    v50 = objc_opt_new();
    v51 = [ARParentTechnique alloc];
    v64[0] = v49;
    v64[1] = v50;
    v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    v53 = [(ARParentTechnique *)v51 initWithTechniques:v52];

    if (v20)
    {
      techniques = [(ARParentTechnique *)v20 techniques];
      v55 = [(ARParentTechnique *)techniques arrayByAddingObject:v53];
      [(ARPersonOcclusionParentTechnique *)v20 setTechniques:v55];
    }

    else
    {
      v56 = [ARParentTechnique alloc];
      v63 = v53;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
      techniques = [(ARParentTechnique *)v56 initWithParallelTechniques:v57];

      [techniquesCopy addObject:techniques];
    }
  }

LABEL_48:
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([(ARConfiguration *)self isWorldTrackingEnabled]& 1) == 0)
  {
    v58 = [ARWorldAlignmentTechnique alloc];
    worldAlignment = [(ARConfiguration *)self worldAlignment];
    videoFormat = [(ARConfiguration *)self videoFormat];
    v61 = -[ARWorldAlignmentTechnique initWithAlignment:cameraPosition:](v58, "initWithAlignment:cameraPosition:", worldAlignment, [videoFormat captureDevicePosition]);
    [techniquesCopy addObject:v61];
  }

  if ([(ARConfiguration *)self lightEstimation]== 1 || [(ARConfiguration *)self lightEstimation]== 2)
  {
    v62 = objc_opt_new();
    [techniquesCopy addObject:v62];
  }
}

+ (NSArray)supportedVideoFormats
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Supported video formats should be called on individual configuration class." userInfo:0];
  objc_exception_throw(v2);
}

+ (void)setShouldUse30FPSJasperFormats:(BOOL)formats
{
  if (s_customJasperFrameRate != 30)
  {
    s_customJasperFrameRate = 30;
    v3 = s_supportedJasperFormatsCache;
    if (s_supportedJasperFormatsCache)
    {
      s_supportedJasperFormatsCache = MEMORY[0x1E695E0F0];
    }
  }
}

- (void)setJasperFrameRate:(int64_t)rate
{
  if (self->_jasperFrameRate != rate)
  {
    self->_jasperFrameRate = rate;
    s_customJasperFrameRate = rate;
    v3 = s_supportedJasperFormatsCache;
    if (s_supportedJasperFormatsCache)
    {
      s_supportedJasperFormatsCache = MEMORY[0x1E695E0F0];
    }
  }
}

- (void)setDepthSensorNumberOfPointsMode:(int64_t)mode
{
  if (self->_depthSensorNumberOfPointsMode != mode || s_customNumberOfPointsMode != mode)
  {
    self->_depthSensorNumberOfPointsMode = mode;
    s_customNumberOfPointsMode = mode;
    v4 = s_supportedJasperFormatsCache;
    if (s_supportedJasperFormatsCache)
    {
      s_supportedJasperFormatsCache = MEMORY[0x1E695E0F0];
    }
  }
}

+ (AVCaptureDevice)configurableCaptureDeviceForPrimaryCamera
{
  v2 = NSSelectorFromString(&cfstr_Supportedvideo.isa);
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v3 = [objc_opt_class() performSelector:v2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      firstObject = [v3 firstObject];

      if (firstObject)
      {
        firstObject = [MEMORY[0x1E69870A0] defaultDeviceWithDeviceType:*MEMORY[0x1E6986950] mediaType:*MEMORY[0x1E6987608] position:1];
      }
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (void)setShouldProvideX420VideoFormat:(BOOL)format
{
  if (s_provideX420VideoFormat != format)
  {
    s_provideX420VideoFormat = format;
  }
}

+ (void)setShouldProvideNonBinnedVideoFormats:(BOOL)formats
{
  if (s_provideNonBinnedVideoFormats != formats)
  {
    s_provideNonBinnedVideoFormats = formats;
  }
}

+ (BOOL)shouldProvideNonBinnedVideoFormats
{
  v2 = ARLinkedOnOrAfterLuck(self, a2);
  if (v2)
  {
    return 1;
  }

  if (s_provideNonBinnedVideoFormats)
  {
    return 1;
  }

  v4 = ARDeviceSupportsUltraWideCamera(v2, v3);
  if (v4)
  {
    return 1;
  }

  return ARDeviceSupportsJasper(v4, v5);
}

- (unint64_t)hash
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 hash];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v38.receiver = self;
  v38.super_class = ARConfiguration;
  if (![(ARConfiguration *)&v38 isEqual:equalCopy])
  {
    if (![equalCopy isMemberOfClass:objc_opt_class()])
    {
      v7 = 0;
      goto LABEL_38;
    }

    v8 = equalCopy;
    customSensors = [(ARConfiguration *)self customSensors];
    customSensors2 = [v8 customSensors];
    v11 = customSensors2;
    if (customSensors == customSensors2)
    {
    }

    else
    {
      customSensors3 = [(ARConfiguration *)self customSensors];
      customSensors4 = [v8 customSensors];
      v12 = [customSensors3 isEqualToArray:customSensors4];

      if (!v12)
      {
        v7 = 0;
LABEL_37:

        goto LABEL_38;
      }
    }

    videoFormat = [(ARConfiguration *)self videoFormat];
    videoFormat2 = [v8 videoFormat];
    if (videoFormat != videoFormat2)
    {
      customSensors3 = [(ARConfiguration *)self videoFormat];
      customSensors4 = [v8 videoFormat];
      if (![customSensors3 isEqual:customSensors4])
      {
        LOBYTE(v15) = 0;
        goto LABEL_35;
      }
    }

    isAutoFocusEnabled = [(ARConfiguration *)self isAutoFocusEnabled];
    if (isAutoFocusEnabled == [v8 isAutoFocusEnabled])
    {
      worldAlignment = [(ARConfiguration *)self worldAlignment];
      if (worldAlignment == [v8 worldAlignment])
      {
        lightEstimation = [(ARConfiguration *)self lightEstimation];
        if (lightEstimation == [v8 lightEstimation])
        {
          providesAudioData = [(ARConfiguration *)self providesAudioData];
          if (providesAudioData == [v8 providesAudioData])
          {
            frameDebugOptions = [(ARConfiguration *)self frameDebugOptions];
            if (frameDebugOptions == [v8 frameDebugOptions])
            {
              cameraPosition = [(ARConfiguration *)self cameraPosition];
              if (cameraPosition == [v8 cameraPosition])
              {
                isPersonMetadataEnabled = [(ARConfiguration *)self isPersonMetadataEnabled];
                if (isPersonMetadataEnabled == [v8 isPersonMetadataEnabled])
                {
                  allowCameraInMultipleForegroundAppLayout = [(ARConfiguration *)self allowCameraInMultipleForegroundAppLayout];
                  if (allowCameraInMultipleForegroundAppLayout == [v8 allowCameraInMultipleForegroundAppLayout])
                  {
                    disableOcclusionForPersonSegmentation = [(ARConfiguration *)self disableOcclusionForPersonSegmentation];
                    if (disableOcclusionForPersonSegmentation == [v8 disableOcclusionForPersonSegmentation])
                    {
                      disableMLRelocalization = [(ARConfiguration *)self disableMLRelocalization];
                      if (disableMLRelocalization == [v8 disableMLRelocalization])
                      {
                        disableRenderSyncScheduling = [(ARConfiguration *)self disableRenderSyncScheduling];
                        if (disableRenderSyncScheduling == [v8 disableRenderSyncScheduling])
                        {
                          dropInitialFramesOutsideExposureTarget = [(ARConfiguration *)self dropInitialFramesOutsideExposureTarget];
                          if (dropInitialFramesOutsideExposureTarget == [v8 dropInitialFramesOutsideExposureTarget])
                          {
                            frameSemantics = [(ARConfiguration *)self frameSemantics];
                            if (frameSemantics == [v8 frameSemantics])
                            {
                              timeOfFlightProjectorMode = [(ARConfiguration *)self timeOfFlightProjectorMode];
                              timeOfFlightProjectorMode2 = [v8 timeOfFlightProjectorMode];
                              if (timeOfFlightProjectorMode == timeOfFlightProjectorMode2)
                              {
                                depthSensorNumberOfPointsMode = [(ARConfiguration *)self depthSensorNumberOfPointsMode];
                                if (depthSensorNumberOfPointsMode == [v8 depthSensorNumberOfPointsMode])
                                {
                                  smartPersonOcclusionEnabled = [(ARConfiguration *)self smartPersonOcclusionEnabled];
                                  if (smartPersonOcclusionEnabled == [v8 smartPersonOcclusionEnabled])
                                  {
                                    jasperFrameRate = [(ARConfiguration *)self jasperFrameRate];
                                    if (jasperFrameRate == [v8 jasperFrameRate])
                                    {
                                      videoHDRAllowed = [(ARConfiguration *)self videoHDRAllowed];
                                      if (videoHDRAllowed == [v8 videoHDRAllowed])
                                      {
                                        maxUltrawideImageForwardingFrameRate = [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate];
                                        if (maxUltrawideImageForwardingFrameRate == [v8 maxUltrawideImageForwardingFrameRate])
                                        {
                                          focusPixelBlurScoreDeliveryEnabled = [(ARConfiguration *)self focusPixelBlurScoreDeliveryEnabled];
                                          v15 = focusPixelBlurScoreDeliveryEnabled ^ [v8 focusPixelBlurScoreDeliveryEnabled] ^ 1;

                                          v7 = v15;
                                          goto LABEL_34;
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
              }
            }
          }
        }
      }
    }

    LOBYTE(v15) = 0;
    v7 = 0;
LABEL_34:
    if (videoFormat == videoFormat2)
    {
LABEL_36:

      goto LABEL_37;
    }

LABEL_35:

    v7 = v15;
    goto LABEL_36;
  }

  v7 = 1;
LABEL_38:

  return v7;
}

- (id)descriptionWithoutBrackets
{
  v3 = objc_opt_new();
  v4 = v3;
  worldAlignment = self->_worldAlignment;
  if (worldAlignment > 2)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_1E817D018[worldAlignment];
  }

  [v3 appendFormat:@" worldAlignment=%@", v6];
  lightEstimation = [(ARConfiguration *)self lightEstimation];
  v8 = @"Enabled";
  if (!lightEstimation)
  {
    v8 = @"Disabled";
  }

  [v4 appendFormat:@" lightEstimation=%@", v8];
  v9 = NSStringFromARFrameSemantics([(ARConfiguration *)self frameSemantics]);
  [v4 appendFormat:@" frameSemantics=%@", v9];

  videoFormat = [(ARConfiguration *)self videoFormat];
  [v4 appendFormat:@" videoFormat=%@", videoFormat];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p", v5, self];

  descriptionWithoutBrackets = [(ARConfiguration *)self descriptionWithoutBrackets];
  [v6 appendString:descriptionWithoutBrackets];

  [v6 appendString:@">"];

  return v6;
}

- (BOOL)isKindOfConfiguration:(Class)configuration
{
  v3 = [(ARConfiguration *)self getAsKindOfConfiguration:configuration];
  v4 = v3 != 0;

  return v4;
}

- (id)getAsKindOfConfiguration:(Class)configuration
{
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    goto LABEL_8;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy2 = self;
    templateConfiguration = [(ARConfiguration *)selfCopy2 templateConfiguration];
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      selfCopy = [(ARConfiguration *)selfCopy2 templateConfiguration];

      goto LABEL_8;
    }
  }

  selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initPrivate"}];
  objc_storeStrong((v5 + 16), self->_videoFormat);
  *(v5 + 35) = [(ARConfiguration *)self isAutoFocusEnabled];
  *(v5 + 48) = self->_worldAlignment;
  *(v5 + 72) = self->_lightEstimation;
  *(v5 + 32) = self->_providesAudioData;
  v6 = [(NSArray *)self->_customSensors copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  *(v5 + 80) = self->_frameDebugOptions;
  *(v5 + 37) = self->_personMetadataEnabled;
  *(v5 + 8) = self->_cameraPosition;
  *(v5 + 38) = self->_allowCameraInMultipleForegroundAppLayout;
  *(v5 + 39) = self->_disableOcclusionForPersonSegmentation;
  *(v5 + 40) = self->_disableMLRelocalization;
  *(v5 + 41) = self->_disableRenderSyncScheduling;
  *(v5 + 42) = self->_dropInitialFramesOutsideExposureTarget;
  *(v5 + 56) = self->_frameSemantics;
  objc_storeStrong((v5 + 88), self->_timeOfFlightProjectorMode);
  *(v5 + 96) = self->_depthSensorNumberOfPointsMode;
  *(v5 + 34) = self->_smartPersonOcclusionEnabled;
  *(v5 + 24) = self->_jasperFrameRate;
  *(v5 + 33) = self->_videoHDRAllowed;
  *(v5 + 104) = self->_maxUltrawideImageForwardingFrameRate;
  *(v5 + 36) = self->_focusPixelBlurScoreDeliveryEnabled;
  return v5;
}

@end