@interface ARWorldTrackingOptions
- (ARWorldTrackingOptions)init;
- (ARWorldTrackingOptions)initWithImageSensorSettings:(id)settings;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldUseUltraWide;
- (NSDictionary)activeVideoFormatsMap;
- (id)copyWithZone:(_NSZone *)zone;
- (int)createSLAMCalibration:(CV3DSLAMCalibration *)calibration;
- (int)setupCameraCalibration:(CV3DSLAMCalibration *)calibration forImageSensorSettings:(id)settings deviceModel:(int)model;
- (unsigned)cameraIdForCaptureDeviceType:(id)type;
- (void)createSLAMConfig:(CV3DSLAMConfig *)config calibration:(CV3DSLAMCalibration *)calibration;
- (void)setImageSensorSettings:(id)settings;
- (void)setImageSensorSettingsForUltraWide:(id)wide;
- (void)setSlamConfiguration:(id)configuration;
- (void)updateCameraMap;
@end

@implementation ARWorldTrackingOptions

- (ARWorldTrackingOptions)init
{
  v3 = +[ARWorldTrackingConfiguration supportedVideoFormats];
  v4 = [ARImageSensorSettings alloc];
  firstObject = [v3 firstObject];
  v6 = [(ARImageSensorSettings *)v4 initWithVideoFormat:firstObject];

  [(ARImageSensorSettings *)v6 setSupportsCapturingHighResolutionFrames:1];
  v7 = [(ARWorldTrackingOptions *)self initWithImageSensorSettings:v6];

  return v7;
}

- (ARWorldTrackingOptions)initWithImageSensorSettings:(id)settings
{
  settingsCopy = settings;
  v19.receiver = self;
  v19.super_class = ARWorldTrackingOptions;
  v6 = [(ARWorldTrackingOptions *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_relocalizationEnabled = 1;
    objc_storeStrong(&v6->_imageSensorSettings, settings);
    [(ARImageSensorSettings *)v7->_imageSensorSettings setAutoFocusEnabled:1];
    v7->_planeDetection = 0;
    slamConfigurationPreset = v7->_slamConfigurationPreset;
    v7->_slamConfigurationPreset = @"ARKitiOS";

    v7->_minVergenceAngle = 1.0;
    imageSensorSettingsForUltraWide = v7->_imageSensorSettingsForUltraWide;
    v7->_imageSensorSettingsForUltraWide = 0;

    v10 = dispatch_semaphore_create(1);
    activeVideoFormatsSemaphore = v7->_activeVideoFormatsSemaphore;
    v7->_activeVideoFormatsSemaphore = v10;

    v12 = objc_opt_new();
    activeVideoFormatsMap = v7->_activeVideoFormatsMap;
    v7->_activeVideoFormatsMap = v12;

    v7->_sceneReconstruction = 0;
    v14 = objc_opt_new();
    sceneReconstructionOptions = v7->_sceneReconstructionOptions;
    v7->_sceneReconstructionOptions = v14;

    v7->_planeEstimationShouldUseJasperData = ARDeviceSupportsJasper(v16, v17);
    v7->_alwaysUsePrimaryCameraForTracking = 0;
    v7->_recordForGeoTracking = 0;
    [(ARWorldTrackingOptions *)v7 updateCameraMap];
  }

  return v7;
}

- (void)setSlamConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = [ARKitUserDefaults stringForKey:@"com.apple.arkit.worldtracking.slamConfiguration"];
  if ([v4 isEqualToString:&stru_1F4208A80])
  {

    v4 = 0;
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = configurationCopy;
  }

  objc_storeStrong(&self->_slamConfigurationPreset, v5);
}

- (BOOL)shouldUseUltraWide
{
  imageSensorSettingsForUltraWide = [(ARWorldTrackingOptions *)self imageSensorSettingsForUltraWide];
  v3 = imageSensorSettingsForUltraWide != 0;

  return v3;
}

- (void)setImageSensorSettings:(id)settings
{
  objc_storeStrong(&self->_imageSensorSettings, settings);

  [(ARWorldTrackingOptions *)self updateCameraMap];
}

- (void)setImageSensorSettingsForUltraWide:(id)wide
{
  objc_storeStrong(&self->_imageSensorSettingsForUltraWide, wide);

  [(ARWorldTrackingOptions *)self updateCameraMap];
}

- (void)updateCameraMap
{
  dispatch_semaphore_wait(self->_activeVideoFormatsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  [(NSMutableDictionary *)self->_activeVideoFormatsMap removeAllObjects];
  videoFormat = [(ARImageSensorSettings *)self->_imageSensorSettings videoFormat];

  if (videoFormat)
  {
    videoFormat2 = [(ARImageSensorSettings *)self->_imageSensorSettings videoFormat];
    activeVideoFormatsMap = self->_activeVideoFormatsMap;
    v6 = MEMORY[0x1E696AD98];
    videoFormat3 = [(ARImageSensorSettings *)self->_imageSensorSettings videoFormat];
    captureDeviceType = [videoFormat3 captureDeviceType];
    v9 = [v6 numberWithUnsignedInt:{-[ARWorldTrackingOptions cameraIdForCaptureDeviceType:](self, "cameraIdForCaptureDeviceType:", captureDeviceType)}];
    [(NSMutableDictionary *)activeVideoFormatsMap setObject:videoFormat2 forKeyedSubscript:v9];
  }

  videoFormat4 = [(ARImageSensorSettings *)self->_imageSensorSettingsForUltraWide videoFormat];

  if (videoFormat4)
  {
    videoFormat5 = [(ARImageSensorSettings *)self->_imageSensorSettingsForUltraWide videoFormat];
    v12 = self->_activeVideoFormatsMap;
    v13 = MEMORY[0x1E696AD98];
    videoFormat6 = [(ARImageSensorSettings *)self->_imageSensorSettingsForUltraWide videoFormat];
    captureDeviceType2 = [videoFormat6 captureDeviceType];
    v16 = [v13 numberWithUnsignedInt:{-[ARWorldTrackingOptions cameraIdForCaptureDeviceType:](self, "cameraIdForCaptureDeviceType:", captureDeviceType2)}];
    [(NSMutableDictionary *)v12 setObject:videoFormat5 forKeyedSubscript:v16];
  }

  activeVideoFormatsSemaphore = self->_activeVideoFormatsSemaphore;

  dispatch_semaphore_signal(activeVideoFormatsSemaphore);
}

- (NSDictionary)activeVideoFormatsMap
{
  dispatch_semaphore_wait(self->_activeVideoFormatsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  v3 = [(NSMutableDictionary *)self->_activeVideoFormatsMap copy];
  dispatch_semaphore_signal(self->_activeVideoFormatsSemaphore);

  return v3;
}

- (unsigned)cameraIdForCaptureDeviceType:(id)type
{
  typeCopy = type;
  v5 = -[ARWorldTrackingOptions shouldUseUltraWide](self, "shouldUseUltraWide") && ([typeCopy isEqualToString:*MEMORY[0x1E6986948]] & 1) == 0 && (objc_msgSend(typeCopy, "isEqualToString:", *MEMORY[0x1E6986950]) & 1) != 0;

  return v5;
}

- (int)createSLAMCalibration:(CV3DSLAMCalibration *)calibration
{
  v78 = *MEMORY[0x1E69E9840];
  *calibration = CV3DSLAMCalibrationCreate();
  deviceModel = [(ARWorldTrackingOptions *)self deviceModel];
  if (deviceModel)
  {
    deviceModel2 = [(ARWorldTrackingOptions *)self deviceModel];
    [deviceModel2 UTF8String];
    v7 = CV3DSLAMCameraModelTypeFromString();
  }

  else
  {
    v7 = CV3DSLAMCalibrationDetectRuntimeHardware();
  }

  v8 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.worldtracking.calibrationParameters.imu"];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = _ARLogGeneral_30(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v72 = 138543618;
        v73 = v12;
        v74 = 2048;
        selfCopy15 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Parsing custom imu calibration parameters.", &v72, 0x16u);
      }

      v13 = ARParseAndAddImuCalibrationParameters(v9, *calibration);
      v14 = v13;
      v15 = _ARLogGeneral_30(v13);
      v16 = v15;
      if (!v14)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v72 = 138543618;
          v73 = v30;
          v74 = 2048;
          selfCopy15 = self;
          _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using custom imu calibration parameters.", &v72, 0x16u);
        }

        goto LABEL_23;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        v18 = NSStringFromClass(v17);
        v72 = 138543618;
        v73 = v18;
        v74 = 2048;
        selfCopy15 = self;
        _os_log_impl(&dword_1C241C000, v16, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Error parsing custom imu calibration parameters, using default parameters", &v72, 0x16u);
      }
    }
  }

  v19 = SetDefaultImuCalibrationData();
  if (v19)
  {
    v20 = v19;
    if (ARShouldUseLogTypeError_onceToken_38 != -1)
    {
      [ARWorldTrackingOptions createSLAMCalibration:];
    }

    v21 = ARShouldUseLogTypeError_internalOSVersion_38;
    v22 = _ARLogGeneral_30(v19);
    v23 = v22;
    if (v21 == 1)
    {
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        v26 = NSStringFromCV3DSLAMCalibrationReturn(v20);
        v72 = 138543874;
        v73 = v25;
        v74 = 2048;
        selfCopy15 = self;
        v76 = 2114;
        v77 = v26;
        v27 = "%{public}@ <%p>: Error setting default Imu calibration data: %{public}@";
LABEL_45:
        v44 = v23;
        v45 = OS_LOG_TYPE_ERROR;
LABEL_68:
        _os_log_impl(&dword_1C241C000, v44, v45, v27, &v72, 0x20u);

        goto LABEL_69;
      }

      goto LABEL_69;
    }

    if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      goto LABEL_69;
    }

    v28 = objc_opt_class();
    v25 = NSStringFromClass(v28);
    v26 = NSStringFromCV3DSLAMCalibrationReturn(v20);
    v72 = 138543874;
    v73 = v25;
    v74 = 2048;
    selfCopy15 = self;
    v76 = 2114;
    v77 = v26;
    v27 = "Error: %{public}@ <%p>: Error setting default Imu calibration data: %{public}@";
LABEL_67:
    v44 = v23;
    v45 = OS_LOG_TYPE_INFO;
    goto LABEL_68;
  }

LABEL_23:
  if (![(ARWorldTrackingOptions *)self shouldUseUltraWide]|| (v31 = [(ARWorldTrackingOptions *)self setupCameraCalibration:calibration forImageSensorSettings:self->_imageSensorSettingsForUltraWide deviceModel:v7], !v31))
  {
    if (![(ARWorldTrackingOptions *)self shouldUseUltraWide]|| (v35 = [(ARWorldTrackingOptions *)self alwaysUsePrimaryCameraForTracking], (v35 & 1) == 0))
    {
      v35 = [(ARWorldTrackingOptions *)self setupCameraCalibration:calibration forImageSensorSettings:self->_imageSensorSettings deviceModel:v7];
      if (v35)
      {
        v20 = v35;
        if (ARShouldUseLogTypeError_onceToken_38 != -1)
        {
          [ARWorldTrackingOptions createSLAMCalibration:];
        }

        v37 = ARShouldUseLogTypeError_internalOSVersion_38;
        v38 = _ARLogGeneral_30(v35);
        v23 = v38;
        if (v37 == 1)
        {
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v39 = objc_opt_class();
            v25 = NSStringFromClass(v39);
            v26 = NSStringFromCV3DSLAMCalibrationReturn(v20);
            v72 = 138543874;
            v73 = v25;
            v74 = 2048;
            selfCopy15 = self;
            v76 = 2114;
            v77 = v26;
            v27 = "%{public}@ <%p>: Error setting camera calibration for wide camera: %{public}@";
            goto LABEL_45;
          }

          goto LABEL_69;
        }

        if (!os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          goto LABEL_69;
        }

        v59 = objc_opt_class();
        v25 = NSStringFromClass(v59);
        v26 = NSStringFromCV3DSLAMCalibrationReturn(v20);
        v72 = 138543874;
        v73 = v25;
        v74 = 2048;
        selfCopy15 = self;
        v76 = 2114;
        v77 = v26;
        v27 = "Error: %{public}@ <%p>: Error setting camera calibration for wide camera: %{public}@";
        goto LABEL_67;
      }
    }

    if (ARDeviceSupportsJasper(v35, v36))
    {
      v40 = SetDefaultJasperCalibrationData();
      if (v40)
      {
        v20 = v40;
        if (ARShouldUseLogTypeError_onceToken_38 != -1)
        {
          [ARWorldTrackingOptions createSLAMCalibration:];
        }

        v41 = ARShouldUseLogTypeError_internalOSVersion_38;
        v42 = _ARLogGeneral_30(v40);
        v23 = v42;
        if (v41 == 1)
        {
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = objc_opt_class();
            v25 = NSStringFromClass(v43);
            v26 = NSStringFromCV3DSLAMCalibrationReturn(v20);
            v72 = 138543874;
            v73 = v25;
            v74 = 2048;
            selfCopy15 = self;
            v76 = 2114;
            v77 = v26;
            v27 = "%{public}@ <%p>: Error setting jasper calibration data: %{public}@";
            goto LABEL_45;
          }

          goto LABEL_69;
        }

        if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          goto LABEL_69;
        }

        v68 = objc_opt_class();
        v25 = NSStringFromClass(v68);
        v26 = NSStringFromCV3DSLAMCalibrationReturn(v20);
        v72 = 138543874;
        v73 = v25;
        v74 = 2048;
        selfCopy15 = self;
        v76 = 2114;
        v77 = v26;
        v27 = "Error: %{public}@ <%p>: Error setting jasper calibration data: %{public}@";
        goto LABEL_67;
      }
    }

    shouldUseUltraWide = [(ARWorldTrackingOptions *)self shouldUseUltraWide];
    imageSensorSettings = [(ARWorldTrackingOptions *)self imageSensorSettings];
    if ([imageSensorSettings isBravoCameraEnabled])
    {
    }

    else
    {
      if (shouldUseUltraWide)
      {

LABEL_79:
        v20 = 0;
        goto LABEL_70;
      }

      imageSensorSettings2 = [(ARWorldTrackingOptions *)self imageSensorSettings];
      videoFormat = [imageSensorSettings2 videoFormat];
      device = [videoFormat device];
      [device maxAvailableVideoZoomFactorOverride];
      v67 = v66;

      if (v67 <= 1.0)
      {
        goto LABEL_79;
      }
    }

    v48 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.usePerFrameCameraIntrinsicsForBravo"];
    if (v48)
    {
      v49 = CV3DSLAMCalibrationForceToUsePerFrameCameraIntrinsics();
      if (v49)
      {
        if (ARShouldUseLogTypeError_onceToken_38 != -1)
        {
          [ARWorldTrackingOptions createSLAMCalibration:];
        }

        v50 = ARShouldUseLogTypeError_internalOSVersion_38;
        v51 = _ARLogGeneral_30(v49);
        v52 = v51;
        if (v50 == 1)
        {
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v53 = objc_opt_class();
            v54 = NSStringFromClass(v53);
            v55 = NSStringFromCV3DSLAMCalibrationReturn(0);
            v72 = 138543874;
            v73 = v54;
            v74 = 2048;
            selfCopy15 = self;
            v76 = 2112;
            v77 = v55;
            v56 = "%{public}@ <%p>: Error configuring SLAM calibration to use per-frame camera intrinsics: %@";
            v57 = v52;
            v58 = OS_LOG_TYPE_ERROR;
LABEL_76:
            _os_log_impl(&dword_1C241C000, v57, v58, v56, &v72, 0x20u);

            goto LABEL_77;
          }
        }

        else if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          v71 = objc_opt_class();
          v54 = NSStringFromClass(v71);
          v55 = NSStringFromCV3DSLAMCalibrationReturn(0);
          v72 = 138543874;
          v73 = v54;
          v74 = 2048;
          selfCopy15 = self;
          v76 = 2112;
          v77 = v55;
          v56 = "Error: %{public}@ <%p>: Error configuring SLAM calibration to use per-frame camera intrinsics: %@";
          v57 = v52;
          v58 = OS_LOG_TYPE_INFO;
          goto LABEL_76;
        }

LABEL_78:

        goto LABEL_79;
      }

      v52 = _ARLogGeneral_30(v49);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        goto LABEL_78;
      }

      v70 = objc_opt_class();
      v54 = NSStringFromClass(v70);
      v72 = 138543618;
      v73 = v54;
      v74 = 2048;
      selfCopy15 = self;
      v62 = "%{public}@ <%p>: Configured SLAM calibration to use per-frame camera intrinsics.";
    }

    else
    {
      v52 = _ARLogGeneral_30(v48);
      if (!os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
      {
        goto LABEL_78;
      }

      v61 = objc_opt_class();
      v54 = NSStringFromClass(v61);
      v72 = 138543618;
      v73 = v54;
      v74 = 2048;
      selfCopy15 = self;
      v62 = "%{public}@ <%p>: Disabled per-frame camera intrinsics through user defaults.";
    }

    _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_INFO, v62, &v72, 0x16u);
LABEL_77:

    goto LABEL_78;
  }

  v20 = v31;
  if (ARShouldUseLogTypeError_onceToken_38 != -1)
  {
    [ARWorldTrackingOptions createSLAMCalibration:];
  }

  v32 = ARShouldUseLogTypeError_internalOSVersion_38;
  v33 = _ARLogGeneral_30(v31);
  v23 = v33;
  if (v32 != 1)
  {
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      goto LABEL_69;
    }

    v60 = objc_opt_class();
    v25 = NSStringFromClass(v60);
    v26 = NSStringFromCV3DSLAMCalibrationReturn(v20);
    v72 = 138543874;
    v73 = v25;
    v74 = 2048;
    selfCopy15 = self;
    v76 = 2114;
    v77 = v26;
    v27 = "Error: %{public}@ <%p>: Error setting camera calibration for ultra wide camera: %{public}@";
    goto LABEL_67;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = objc_opt_class();
    v25 = NSStringFromClass(v34);
    v26 = NSStringFromCV3DSLAMCalibrationReturn(v20);
    v72 = 138543874;
    v73 = v25;
    v74 = 2048;
    selfCopy15 = self;
    v76 = 2114;
    v77 = v26;
    v27 = "%{public}@ <%p>: Error setting camera calibration for ultra wide camera: %{public}@";
    goto LABEL_45;
  }

LABEL_69:

  CV3DSLAMCalibrationRelease();
  *calibration = 0;
LABEL_70:

  return v20;
}

- (int)setupCameraCalibration:(CV3DSLAMCalibration *)calibration forImageSensorSettings:(id)settings deviceModel:(int)model
{
  v78 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  videoFormat = [settingsCopy videoFormat];

  if (videoFormat)
  {
    videoFormat2 = [settingsCopy videoFormat];
    captureDeviceType = [videoFormat2 captureDeviceType];

    if (captureDeviceType == *MEMORY[0x1E6986950])
    {
      v14 = &ARWorldTrackingBackWideCalibrationParametersUserDefaultsKey;
    }

    else
    {
      if (captureDeviceType != *MEMORY[0x1E6986948])
      {
        v12 = 0;
LABEL_9:
        v15 = [(ARWorldTrackingOptions *)self cameraIdForCaptureDeviceType:captureDeviceType];
        videoFormat3 = [settingsCopy videoFormat];
        [videoFormat3 imageResolution];
        v18 = v17;
        v20 = v19;

        v21 = CV3DSLAMCameraVideoModeForResolutionAndDeviceType(captureDeviceType, v18, v20);
        if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
LABEL_28:
          v42 = SetDefaultCameraCalibrationData();
          v13 = v42;
          if (!v42)
          {
LABEL_46:

            goto LABEL_47;
          }

          v65 = v21;
          if (ARShouldUseLogTypeError_onceToken_38 != -1)
          {
            [ARWorldTrackingOptions createSLAMCalibration:];
          }

          v43 = ARShouldUseLogTypeError_internalOSVersion_38;
          v44 = _ARLogGeneral_30(v42);
          v45 = v44;
          if (v43 == 1)
          {
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_37;
            }

            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            NSStringFromCV3DSLAMCalibrationReturn(v13);
            v49 = v48 = model;
            *buf = 138543874;
            v67 = v47;
            v68 = 2048;
            selfCopy8 = self;
            v70 = 2114;
            *v71 = v49;
            v50 = "%{public}@ <%p>: Error setting default camera calibration data: %{public}@";
            v51 = v45;
            v52 = OS_LOG_TYPE_ERROR;
          }

          else
          {
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              goto LABEL_37;
            }

            v53 = objc_opt_class();
            v47 = NSStringFromClass(v53);
            NSStringFromCV3DSLAMCalibrationReturn(v13);
            v49 = v48 = model;
            *buf = 138543874;
            v67 = v47;
            v68 = 2048;
            selfCopy8 = self;
            v70 = 2114;
            *v71 = v49;
            v50 = "Error: %{public}@ <%p>: Error setting default camera calibration data: %{public}@";
            v51 = v45;
            v52 = OS_LOG_TYPE_INFO;
          }

          _os_log_impl(&dword_1C241C000, v51, v52, v50, buf, 0x20u);

          model = v48;
LABEL_37:

          if (ARShouldUseLogTypeError_onceToken_38 != -1)
          {
            [ARWorldTrackingOptions createSLAMCalibration:];
          }

          v55 = ARShouldUseLogTypeError_internalOSVersion_38;
          v56 = _ARLogGeneral_30(v54);
          v22 = v56;
          if (v55 == 1)
          {
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              v57 = objc_opt_class();
              v58 = NSStringFromClass(v57);
              *buf = 138544899;
              v67 = v58;
              v68 = 2048;
              selfCopy8 = self;
              v70 = 1025;
              *v71 = model;
              *&v71[4] = 1025;
              *&v71[6] = v65;
              v72 = 1025;
              v73 = 0;
              v74 = 1025;
              v75 = v15;
              v76 = 1025;
              v77 = 0;
              v59 = "%{public}@ <%p>: Input values of failing call to SetDefaultCameraCalibrationData: deviceModel: %{private}d, videoMode: %{private}d, cameraMode: %{private}d, cameraID: %{private}d, cameraStreamId: %{private}d";
              v60 = v22;
              v61 = OS_LOG_TYPE_ERROR;
LABEL_44:
              _os_log_impl(&dword_1C241C000, v60, v61, v59, buf, 0x34u);
            }
          }

          else if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
          {
            v62 = objc_opt_class();
            v58 = NSStringFromClass(v62);
            *buf = 138544899;
            v67 = v58;
            v68 = 2048;
            selfCopy8 = self;
            v70 = 1025;
            *v71 = model;
            *&v71[4] = 1025;
            *&v71[6] = v65;
            v72 = 1025;
            v73 = 0;
            v74 = 1025;
            v75 = v15;
            v76 = 1025;
            v77 = 0;
            v59 = "Error: %{public}@ <%p>: Input values of failing call to SetDefaultCameraCalibrationData: deviceModel: %{private}d, videoMode: %{private}d, cameraMode: %{private}d, cameraID: %{private}d, cameraStreamId: %{private}d";
            v60 = v22;
            v61 = OS_LOG_TYPE_INFO;
            goto LABEL_44;
          }

LABEL_45:

          goto LABEL_46;
        }

        v22 = v12;
        modelCopy = model;
        if (_ARLogTechnique_onceToken_20 != -1)
        {
          [ARWorldTrackingOptions setupCameraCalibration:forImageSensorSettings:deviceModel:];
        }

        v23 = _ARLogTechnique_logObj_20;
        if (os_log_type_enabled(_ARLogTechnique_logObj_20, OS_LOG_TYPE_DEBUG))
        {
          v24 = v23;
          v25 = objc_opt_class();
          NSStringFromClass(v25);
          v27 = v26 = v21;
          *buf = 138543874;
          v67 = v27;
          v68 = 2048;
          selfCopy8 = self;
          v70 = 2112;
          *v71 = captureDeviceType;
          _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Parsing custom camera calibration parameters for device type %@.", buf, 0x20u);

          v21 = v26;
        }

        v28 = ARParseAndAddCameraCalibrationParameters(v22, *calibration, 0, v15, 0);
        if (!v28)
        {
          v38 = _ARLogGeneral_30(v28);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v39 = objc_opt_class();
            v40 = NSStringFromClass(v39);
            *buf = 138543618;
            v67 = v40;
            v68 = 2048;
            selfCopy8 = self;
            _os_log_impl(&dword_1C241C000, v38, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Using custom camera calibration parameters.", buf, 0x16u);
          }

          v13 = 0;
          goto LABEL_45;
        }

        if (ARShouldUseLogTypeError_onceToken_38 != -1)
        {
          [ARWorldTrackingOptions createSLAMCalibration:];
        }

        v29 = ARShouldUseLogTypeError_internalOSVersion_38;
        v30 = _ARLogGeneral_30(v28);
        v31 = v30;
        if (v29 == 1)
        {
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_opt_class();
            NSStringFromClass(v32);
            v34 = v33 = v21;
            *buf = 138543618;
            v67 = v34;
            v68 = 2048;
            selfCopy8 = self;
            v35 = "%{public}@ <%p>: Error parsing custom camera calibration parameters, using default parameters";
            v36 = v31;
            v37 = OS_LOG_TYPE_ERROR;
LABEL_26:
            _os_log_impl(&dword_1C241C000, v36, v37, v35, buf, 0x16u);

            v21 = v33;
          }
        }

        else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v41 = objc_opt_class();
          NSStringFromClass(v41);
          v34 = v33 = v21;
          *buf = 138543618;
          v67 = v34;
          v68 = 2048;
          selfCopy8 = self;
          v35 = "Error: %{public}@ <%p>: Error parsing custom camera calibration parameters, using default parameters";
          v36 = v31;
          v37 = OS_LOG_TYPE_INFO;
          goto LABEL_26;
        }

        model = modelCopy;
        goto LABEL_28;
      }

      v14 = &ARWorldTrackingBackUltraWideCalibrationParametersUserDefaultsKey;
    }

    v12 = [ARKitUserDefaults objectForKey:*v14];
    goto LABEL_9;
  }

  v13 = 1;
LABEL_47:

  return v13;
}

- (void)createSLAMConfig:(CV3DSLAMConfig *)config calibration:(CV3DSLAMCalibration *)calibration
{
  v53 = *MEMORY[0x1E69E9840];
  imageSensorSettings = [(ARWorldTrackingOptions *)self imageSensorSettings];
  if ([(ARWorldTrackingOptions *)self shouldUseUltraWide])
  {
    imageSensorSettingsForUltraWide = [(ARWorldTrackingOptions *)self imageSensorSettingsForUltraWide];

    imageSensorSettings = imageSensorSettingsForUltraWide;
  }

  videoFormat = [imageSensorSettings videoFormat];

  if (!videoFormat)
  {
    *config = 0;
    goto LABEL_58;
  }

  videoFormat2 = [imageSensorSettings videoFormat];
  [videoFormat2 imageResolution];
  v11 = v10;
  v13 = v12;

  videoFormat3 = [imageSensorSettings videoFormat];
  captureDeviceType = [videoFormat3 captureDeviceType];
  CV3DSLAMCameraVideoModeForResolutionAndDeviceType(captureDeviceType, v11, v13);

  slamConfiguration = [(ARWorldTrackingOptions *)self slamConfiguration];
  [slamConfiguration UTF8String];
  CV3DSLAMConfigPresetFromString();

  [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"];
  [imageSensorSettings visionDataOutputEnabled];
  CV3DSLAMConfigCalcFeaturePointDetectionResolution();
  CV3DSLAMConfigCalcLineDetectionResolution();
  *config = CV3DSLAMConfigCreate2();
  [(ARWorldTrackingOptions *)self relocalizationEnabled];
  CV3DSLAMConfigSetRelocalizationEnabled();
  CV3DSLAMConfigUseSWProxyFeaturePoints();
  v17 = CV3DSLAMConfigUseHWFeaturePoints();
  v18 = MEMORY[0x1C6919710](v17);
  if (v18 && [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.useLACCIfAvailable"])
  {
    CV3DSLAMConfigEnableLacc();
  }

  if ([(ARWorldTrackingOptions *)self isCollaborationEnabled])
  {
    CV3DSLAMConfigEnableCollaborativeMapping();
    [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.collaborativeMappingStatistics"];
    CV3DSLAMConfigOutputCollaborativeMappingStatistics();
  }

  [(ARWorldTrackingOptions *)self deterministicMode];
  v19 = CV3DSLAMConfigUseDeterministicMode();
  if (self->_disableMLRelocalization)
  {
    v20 = _ARLogGeneral_30(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *v51 = 138543618;
      *&v51[4] = v22;
      *&v51[12] = 2048;
      *&v51[14] = self;
      _os_log_impl(&dword_1C241C000, v20, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Force disabling relocalization mode. The user default has no effect.", v51, 0x16u);
    }

    goto LABEL_15;
  }

  v23 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.worldTracking.mlRelocalizationMode"];
  if (v23 == 2)
  {
    goto LABEL_20;
  }

  if (v23 == 1)
  {
LABEL_15:
    CV3DSLAMConfigDisableMLRelocalization();
    goto LABEL_21;
  }

  if (!v23 && CV3DSLAMConfigIsMLRelocalizationSupported())
  {
LABEL_20:
    CV3DSLAMConfigEnableMLRelocalization();
  }

LABEL_21:
  if ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldtracking.enableTempMappingDirectory"]&& !self->_disableMLRelocalization)
  {
    v24 = NSTemporaryDirectory();
    [v24 fileSystemRepresentation];
    v25 = CV3DSLAMConfigSetMappingDirectory();
    if (!v25)
    {
LABEL_33:

      goto LABEL_34;
    }

    v26 = v25;
    if (ARShouldUseLogTypeError_onceToken_38 != -1)
    {
      [ARWorldTrackingOptions createSLAMCalibration:];
    }

    v27 = ARShouldUseLogTypeError_internalOSVersion_38;
    v28 = _ARLogGeneral_30(v25);
    v29 = v28;
    if (v27 == 1)
    {
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v30 = objc_opt_class();
        v31 = NSStringFromClass(v30);
        v32 = NSStringFromCV3DSLAMConfigReturn(v26);
        *v51 = 138543874;
        *&v51[4] = v31;
        *&v51[12] = 2048;
        *&v51[14] = self;
        *&v51[22] = 2114;
        v52 = v32;
        v33 = "%{public}@ <%p>: Error setting SLAM mapping directory: %{public}@";
        v34 = v29;
        v35 = OS_LOG_TYPE_ERROR;
LABEL_31:
        _os_log_impl(&dword_1C241C000, v34, v35, v33, v51, 0x20u);
      }
    }

    else if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v36 = objc_opt_class();
      v31 = NSStringFromClass(v36);
      v32 = NSStringFromCV3DSLAMConfigReturn(v26);
      *v51 = 138543874;
      *&v51[4] = v31;
      *&v51[12] = 2048;
      *&v51[14] = self;
      *&v51[22] = 2114;
      v52 = v32;
      v33 = "Error: %{public}@ <%p>: Error setting SLAM mapping directory: %{public}@";
      v34 = v29;
      v35 = OS_LOG_TYPE_INFO;
      goto LABEL_31;
    }

    goto LABEL_33;
  }

LABEL_34:
  v37 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.lineFeatures", *v51, *&v51[8], v52];
  v38 = v37;
  if (v37)
  {
    bOOLValue = [v37 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  v40 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.lineFeaturesAlwaysOn"];
  v41 = v40;
  if (v40 && [v40 BOOLValue])
  {
    v42 = CV3DSLAMConfigEnableLineTrackingAlways();
  }

  else if (bOOLValue)
  {
    v42 = CV3DSLAMConfigEnableLineTracking();
  }

  else
  {
    v42 = CV3DSLAMConfigDisableLineTracking();
  }

  if (self->_sceneReconstruction)
  {
    v42 = CV3DSLAMConfigAnchorStrategy();
  }

  if (ARDeviceSupportsJasper(v42, v43) && [(ARWorldTrackingOptions *)self planeEstimationShouldUseJasperData])
  {
    CV3DSLAMConfigEnablePlaneTracking();
  }

  else
  {
    CV3DSLAMConfigDisablePlaneTracking();
  }

  initialWorldMap = [(ARWorldTrackingOptions *)self initialWorldMap];

  if (initialWorldMap)
  {
    initialWorldMap2 = [(ARWorldTrackingOptions *)self initialWorldMap];
    trackingData = [initialWorldMap2 trackingData];
    CV3DSLAMConfigSetMapFromCFData();
  }

  if ([(ARWorldTrackingOptions *)self alwaysUsePrimaryCameraForTracking])
  {
    CV3DSLAMConfigDisableCameraSwitchingAndUsePrimaryCamera();
  }

  vioSessionID = [(ARWorldTrackingOptions *)self vioSessionID];

  if (vioSessionID)
  {
    vioSessionID2 = [(ARWorldTrackingOptions *)self vioSessionID];
    [vioSessionID2 unsignedIntegerValue];
    CV3DSLAMConfigOverrideSessionID();
  }

  v49 = [ARKitUserDefaults valueForKey:@"com.apple.arkit.worldtracking.transformToExternalSubmap"];
  v50 = v49;
  if (v49)
  {
    [v49 BOOLValue];
    CV3DSLAMConfigEnableTransformToExternalSubmap();
  }

LABEL_58:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ARImageSensorSettings *)self->_imageSensorSettings copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(ARImageSensorSettings *)self->_imageSensorSettingsForUltraWide copyWithZone:zone];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v11 = *(v5 + 64);
  *(v5 + 64) = v10;

  *(v5 + 32) = self->_relocalizationEnabled;
  v12 = [(ARWorldMap *)self->_initialWorldMap copyWithZone:zone];
  v13 = *(v5 + 72);
  *(v5 + 72) = v12;

  v14 = [(NSString *)self->_slamConfigurationPreset copyWithZone:zone];
  v15 = *(v5 + 24);
  *(v5 + 24) = v14;

  *(v5 + 33) = self->_deterministicMode;
  *(v5 + 34) = self->_lowQosSchedulingEnabled;
  *(v5 + 80) = self->_planeDetection;
  *(v5 + 88) = self->_minVergenceAngle;
  *(v5 + 35) = self->_mlModelEnabled;
  *(v5 + 36) = self->_collaborationEnabled;
  objc_storeStrong((v5 + 112), self->_vioSessionID);
  *(v5 + 37) = self->_depthBuffersWillBeProvided;
  *(v5 + 38) = self->_visionDataWillBeReplayed;
  *(v5 + 96) = self->_sceneReconstruction;
  v16 = [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions copyWithZone:zone];
  v17 = *(v5 + 104);
  *(v5 + 104) = v16;

  *(v5 + 39) = self->_planeEstimationShouldUseJasperData;
  *(v5 + 40) = self->_alwaysUsePrimaryCameraForTracking;
  *(v5 + 41) = self->_disableMLRelocalization;
  *(v5 + 42) = self->_recordForGeoTracking;
  *(v5 + 43) = self->_planeBundleAdjustmentEnabled;
  v18 = MEMORY[0x1C691B4C0](self->_singleShotPlaneCallback);
  v19 = *(v5 + 120);
  *(v5 + 120) = v18;

  v20 = MEMORY[0x1C691B4C0](self->_trackedPlaneCallback);
  v21 = *(v5 + 128);
  *(v5 + 128) = v20;

  v22 = MEMORY[0x1C691B4C0](self->_planeDetectionVIOPoseCallback);
  v23 = *(v5 + 136);
  *(v5 + 136) = v22;

  v24 = MEMORY[0x1C691B4C0](self->_planeDetectionPoseUpdateCallback);
  v25 = *(v5 + 144);
  *(v5 + 144) = v24;

  [v5 updateCameraMap];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    imageSensorSettings = self->_imageSensorSettings;
    v12 = (imageSensorSettings == v5[6] || [(ARImageSensorSettings *)imageSensorSettings isEqual:?]) && ((imageSensorSettingsForUltraWide = self->_imageSensorSettingsForUltraWide, imageSensorSettingsForUltraWide == v5[7]) || [(ARImageSensorSettings *)imageSensorSettingsForUltraWide isEqual:?]) && ((deviceModel = self->_deviceModel, deviceModel == v5[8]) || [(NSString *)deviceModel isEqualToString:?]) && self->_relocalizationEnabled == *(v5 + 32) && ((initialWorldMap = self->_initialWorldMap, initialWorldMap == v5[9]) || [(ARWorldMap *)initialWorldMap isEqual:?]) && ((slamConfigurationPreset = self->_slamConfigurationPreset, slamConfigurationPreset == v5[3]) || [(NSString *)slamConfigurationPreset isEqual:?]) && self->_deterministicMode == *(v5 + 33) && self->_planeDetection == v5[10] && self->_lowQosSchedulingEnabled == *(v5 + 34) && self->_minVergenceAngle == *(v5 + 11) && self->_mlModelEnabled == *(v5 + 35) && self->_collaborationEnabled == *(v5 + 36) && self->_vioSessionID == v5[14] && self->_depthBuffersWillBeProvided == *(v5 + 37) && self->_visionDataWillBeReplayed == *(v5 + 38) && self->_sceneReconstruction == v5[12] && ((sceneReconstructionOptions = self->_sceneReconstructionOptions, sceneReconstructionOptions == v5[13]) || [(ARSceneReconstructionOptions *)sceneReconstructionOptions isEqual:?]) && self->_planeEstimationShouldUseJasperData == *(v5 + 39) && self->_alwaysUsePrimaryCameraForTracking == *(v5 + 40) && self->_disableMLRelocalization == *(v5 + 41) && self->_recordForGeoTracking == *(v5 + 42) && self->_planeBundleAdjustmentEnabled == *(v5 + 43) && self->_singleShotPlaneCallback == v5[15] && self->_trackedPlaneCallback == v5[16] && self->_planeDetectionVIOPoseCallback == v5[17] && self->_planeDetectionPoseUpdateCallback == v5[18];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end