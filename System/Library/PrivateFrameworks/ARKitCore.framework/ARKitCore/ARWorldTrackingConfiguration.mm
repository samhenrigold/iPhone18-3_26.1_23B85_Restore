@interface ARWorldTrackingConfiguration
+ (BOOL)isSupported;
+ (BOOL)shouldProvide30FPSVideoFormats;
+ (BOOL)supportsAppClipCodeTracking;
+ (BOOL)supportsFrameSemantics:(unint64_t)semantics;
+ (BOOL)supportsSceneReconstruction:(ARSceneReconstruction)sceneReconstruction;
+ (BOOL)supportsUserFaceTracking;
+ (id)_availableCaptureDeviceTypeForBackdropCameraOverride;
+ (id)_querySupportedVideoFormats;
+ (id)_querySupportedVideoFormatsForUltraWide;
+ (id)_querySupportedVideoFormatsForUserFaceTracking;
+ (id)recommendedVideoFormatFor4KResolution;
+ (id)recommendedVideoFormatForHighResolutionFrameCapturing;
+ (id)supportedVideoFormats;
+ (id)supportedVideoFormatsForUltraWide;
+ (id)supportedVideoFormatsForUserFaceTracking;
+ (void)setBackdropCameraOverride:(int64_t)override;
+ (void)setShouldProvide30FPSVideoFormats:(BOOL)formats;
- (ARImageSensorSettings)imageSensorSettingsForUltraWide;
- (ARSpatialMappingParameters)spatialMappingParameters;
- (ARWorldTrackingConfiguration)init;
- (BOOL)appClipCodeTrackingEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldEnableVisionDataForImageSensorSettings:(id)settings;
- (BOOL)shouldUseJasper;
- (BOOL)shouldUseUltraWide;
- (id)_trackingOptions;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)imageSensorSettings;
- (id)imageSensorSettingsForUserFaceTracking;
- (id)parentImageSensorSettings;
- (id)secondaryTechniques;
- (int64_t)_depthPrioritization;
- (void)createTechniques:(id)techniques;
- (void)setDetectionImages:(NSSet *)detectionImages;
- (void)setSceneReconstruction:(ARSceneReconstruction)sceneReconstruction;
- (void)setSpatialMappingParameters:(ARSpatialMappingParameters)parameters;
- (void)setVideoFormat:(id)format;
@end

@implementation ARWorldTrackingConfiguration

+ (BOOL)isSupported
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___ARWorldTrackingConfiguration;
  v2 = objc_msgSendSuper2(&v4, sel_isSupported);
  if (v2)
  {
    LOBYTE(v2) = +[ARWorldTrackingTechnique isSupported];
  }

  return v2;
}

- (ARWorldTrackingConfiguration)init
{
  v19.receiver = self;
  v19.super_class = ARWorldTrackingConfiguration;
  initPrivate = [(ARConfiguration *)&v19 initPrivate];
  v4 = initPrivate;
  if (initPrivate)
  {
    if (ARShouldSupport1440pAndAutofocus(initPrivate, v3))
    {
      [(ARConfiguration *)v4 setAutoFocusEnabled:1];
      [(ARWorldTrackingConfiguration *)v4 setMaximumNumberOfTrackedImages:0];
    }

    v5 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.environmentTexturing.wantsHDR"];
    if (v5)
    {
      v7 = ARLinkedOnOrAfterYukon(v5, v6);
    }

    else
    {
      v7 = 0;
    }

    [(ARWorldTrackingConfiguration *)v4 setWantsHDREnvironmentTextures:v7];
    v8 = objc_opt_new();
    detectionImages = v4->_detectionImages;
    v4->_detectionImages = v8;

    v10 = objc_opt_new();
    detectionObjects = v4->_detectionObjects;
    v4->_detectionObjects = v10;

    v12 = objc_opt_new();
    v4->_relocalizationEnabled = [v12 relocalizationEnabled];
    [v12 minVergenceAngle];
    v4->_minVergenceAngle = v13;
    v14 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.mlOnANEDevices"];
    if (v14)
    {
      LOBYTE(v14) = ARAppleNeuralEngine();
    }

    v4->_mlModelEnabled = v14;
    v4->_lowQosSchedulingEnabled = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.planeEstimation.enableLowQosScheduling"];
    v4->_accuratePlaneExtentCheckEnabled = 1;
    slamConfiguration = v4->_slamConfiguration;
    v4->_slamConfiguration = @"ARKitiOS";

    v4->_userFaceTrackingEnabled = 0;
    v4->_shouldUseUltraWideIfAvailable = 1;
    v4->_depthTemporalSmoothingEnabled = 0;
    v4->_depthOptimizedForStaticScene = 0;
    v4->_alwaysUsePrimaryCameraForTracking = 0;
    v4->_disableFrontCamera = 0;
    v4->_ignoreAppClipCodeURLLimitation = 0;
    v4->_appClipCodeTrackingEnabled = 0;
    v16 = objc_opt_new();
    sceneReconstructionOptions = v4->_sceneReconstructionOptions;
    v4->_sceneReconstructionOptions = v16;

    v4->_recordForGeoTracking = 0;
    v4->_planeBundleAdjustmentEnabled = 0;
    v4->_useLidarIfAvailable = 1;
    v4->_disableLocationSensor = 0;
  }

  return v4;
}

+ (void)setShouldProvide30FPSVideoFormats:(BOOL)formats
{
  if (s_provide30FPSVideoFormats != formats)
  {
    s_provide30FPSVideoFormats = formats;
    v3 = s_supportedFormatsCache_0;
    if (s_supportedFormatsCache_0)
    {
      s_supportedFormatsCache_0 = MEMORY[0x1E695E0F0];
    }
  }
}

+ (BOOL)shouldProvide30FPSVideoFormats
{
  result = ARLinkedOnOrAfterSydney(self, a2);
  if (s_provide30FPSVideoFormats)
  {
    return 1;
  }

  return result;
}

+ (void)setBackdropCameraOverride:(int64_t)override
{
  if (s_backdropCameraOverride != override)
  {
    s_backdropCameraOverride = override;
    v3 = s_supportedFormatsCache_0;
    if (s_supportedFormatsCache_0)
    {
      s_supportedFormatsCache_0 = MEMORY[0x1E695E0F0];
    }
  }
}

+ (id)_availableCaptureDeviceTypeForBackdropCameraOverride
{
  if (s_backdropCameraOverride <= 2)
  {
    v2 = **(&unk_1E817D180 + s_backdropCameraOverride);
  }

  if ([ARVideoFormat isCaptureDeviceTypeAvailable:v2 position:1])
  {
    v3 = v2;
  }

  else
  {
    v3 = *MEMORY[0x1E6986950];
  }

  v4 = v3;

  return v3;
}

+ (id)_querySupportedVideoFormats
{
  v62 = *MEMORY[0x1E69E9840];
  _availableCaptureDeviceTypeForBackdropCameraOverride = [self _availableCaptureDeviceTypeForBackdropCameraOverride];
  v4 = objc_opt_new();
  if ((ARLinkedOnOrAfterSydney(v4, v5) & 1) != 0 || ![self shouldProvide30FPSVideoFormats])
  {
    v6 = [ARVideoFormat supportedVideoFormatsForDevicePosition:1 deviceType:_availableCaptureDeviceTypeForBackdropCameraOverride];
  }

  else
  {
    v6 = [ARVideoFormat supportedVideoFormatsForDevicePosition:1 deviceType:_availableCaptureDeviceTypeForBackdropCameraOverride frameRate:30.0];
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v50 objects:v61 count:16];
  v45 = v4;
  if (v8)
  {
    v10 = v8;
    v11 = *v51;
    *&v9 = 138543874;
    v43 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v50 + 1) + 8 * i);
        [v13 imageResolution];
        v14 = [ARWorldTrackingTechnique supportsVideoResolution:_availableCaptureDeviceTypeForBackdropCameraOverride forDeviceType:?];
        if (v14)
        {
          [v4 addObject:v13];
        }

        else
        {
          v15 = _ARLogGeneral_15(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = objc_opt_class();
            v17 = NSStringFromClass(v16);
            *buf = v43;
            v56 = v17;
            v57 = 2048;
            selfCopy4 = self;
            v59 = 2114;
            v60 = v13;
            _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Filtering out video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);

            v4 = v45;
          }
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v50 objects:v61 count:16];
    }

    while (v10);
  }

  if (ARLinkedOnOrAfterSydney(v18, v19))
  {
    v20 = [ARVideoFormat supportedVideoFormatsForStillImageCaptureForDevicePosition:1 deviceType:_availableCaptureDeviceTypeForBackdropCameraOverride];

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v7 = v20;
    v21 = [v7 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v21)
    {
      v23 = v21;
      v24 = *v47;
      *&v22 = 138543874;
      v44 = v22;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v7);
          }

          v26 = *(*(&v46 + 1) + 8 * j);
          [v26 imageResolution];
          v27 = [ARWorldTrackingTechnique supportsVideoResolution:_availableCaptureDeviceTypeForBackdropCameraOverride forDeviceType:?];
          if (v27)
          {
            [v4 addObject:v26];
          }

          else
          {
            v28 = _ARLogGeneral_15(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
            {
              v29 = objc_opt_class();
              v30 = NSStringFromClass(v29);
              *buf = v44;
              v56 = v30;
              v57 = 2048;
              selfCopy4 = self;
              v59 = 2114;
              v60 = v26;
              _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Filtering out video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);

              v4 = v45;
            }
          }
        }

        v23 = [v7 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v23);
    }

    v31 = [ARVideoFormat supportedVideoFormatsForHiResOrX420ForDevicePosition:1 deviceType:_availableCaptureDeviceTypeForBackdropCameraOverride];
    [v4 addObjectsFromArray:v31];
  }

  v32 = [v4 count];
  if (!v32)
  {
    if (ARShouldUseLogTypeError_onceToken_27 != -1)
    {
      +[ARWorldTrackingConfiguration _querySupportedVideoFormats];
    }

    v33 = ARShouldUseLogTypeError_internalOSVersion_27;
    v34 = _ARLogGeneral_15(v32);
    v35 = v34;
    if (v33 == 1)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138543618;
        v56 = v37;
        v57 = 2048;
        selfCopy4 = self;
        v38 = "%{public}@ <%p>: Result of querying supportedVideoFormats is empty.";
        v39 = v35;
        v40 = OS_LOG_TYPE_ERROR;
LABEL_39:
        _os_log_impl(&dword_1C241C000, v39, v40, v38, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v37 = NSStringFromClass(v41);
      *buf = 138543618;
      v56 = v37;
      v57 = 2048;
      selfCopy4 = self;
      v38 = "Error: %{public}@ <%p>: Result of querying supportedVideoFormats is empty.";
      v39 = v35;
      v40 = OS_LOG_TYPE_INFO;
      goto LABEL_39;
    }
  }

  return v4;
}

+ (id)supportedVideoFormats
{
  v25 = *MEMORY[0x1E69E9840];
  isSupported = [self isSupported];
  if ((isSupported & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_27 != -1)
    {
      +[ARWorldTrackingConfiguration supportedVideoFormats];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_27;
    v12 = _ARLogGeneral_15(isSupported);
    v9 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138543618;
        v22 = v14;
        v23 = 2048;
        selfCopy2 = self;
        v15 = "%{public}@ <%p>: ARWorldTrackingConfiguration is not supported";
        v16 = v9;
        v17 = OS_LOG_TYPE_ERROR;
LABEL_18:
        _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v14 = NSStringFromClass(v18);
      *buf = 138543618;
      v22 = v14;
      v23 = 2048;
      selfCopy2 = self;
      v15 = "Error: %{public}@ <%p>: ARWorldTrackingConfiguration is not supported";
      v16 = v9;
      v17 = OS_LOG_TYPE_INFO;
      goto LABEL_18;
    }

    v6 = MEMORY[0x1E695E0F0];
    goto LABEL_20;
  }

  if (s_supportedFormatsCache_0 && ![s_supportedFormatsCache_0 count])
  {
    _querySupportedVideoFormats = [self _querySupportedVideoFormats];
    v5 = s_supportedFormatsCache_0;
    s_supportedFormatsCache_0 = _querySupportedVideoFormats;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__ARWorldTrackingConfiguration_supportedVideoFormats__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (supportedVideoFormats_onceToken_2 != -1)
  {
    dispatch_once(&supportedVideoFormats_onceToken_2, block);
  }

  v6 = s_supportedFormatsCache_0;
  if (([objc_opt_class() shouldProvideX420VideoFormat] & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_58];
    v8 = [v6 filteredArrayUsingPredicate:v7];

    v6 = v8;
  }

  if (([objc_opt_class() shouldProvideNonBinnedVideoFormats] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_14_0];
    v10 = [v6 filteredArrayUsingPredicate:v9];

    v6 = v10;
LABEL_20:
  }

  return v6;
}

void __53__ARWorldTrackingConfiguration_supportedVideoFormats__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormats];
  v2 = s_supportedFormatsCache_0;
  s_supportedFormatsCache_0 = v1;
}

uint64_t __53__ARWorldTrackingConfiguration_supportedVideoFormats__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 deviceFormat];
  v3 = [v2 isVideoBinned];

  return v3;
}

+ (id)recommendedVideoFormatFor4KResolution
{
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_16];
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v4 = [supportedVideoFormats filteredArrayUsingPredicate:v2];

  if ([v4 count])
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

BOOL __69__ARWorldTrackingConfiguration_recommendedVideoFormatFor4KResolution__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 has4KVideoResolution])
  {
    v3 = [v2 framesPerSecond] == 30;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)recommendedVideoFormatForHighResolutionFrameCapturing
{
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_18_0];
  supportedVideoFormats = [objc_opt_class() supportedVideoFormats];
  v4 = [supportedVideoFormats filteredArrayUsingPredicate:v2];

  if ([v4 count])
  {
    firstObject = [v4 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)_querySupportedVideoFormatsForUserFaceTracking
{
  v20[1] = *MEMORY[0x1E69E9840];
  _availableCaptureDeviceTypeForBackdropCameraOverride = [self _availableCaptureDeviceTypeForBackdropCameraOverride];
  v4 = [ARVideoFormat bestVideoFormatForDevicePosition:2 deviceType:_availableCaptureDeviceTypeForBackdropCameraOverride resolution:0x2D000000500 frameRates:&unk_1F4258F38 videoBinned:1];
  if (v4 || ([ARFaceTrackingConfiguration fallbackVideoFormatWithCaptureDeviceType:_availableCaptureDeviceTypeForBackdropCameraOverride], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v20[0] = v4;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
    goto LABEL_4;
  }

  if (ARShouldUseLogTypeError_onceToken_27 != -1)
  {
    +[ARWorldTrackingConfiguration supportedVideoFormats];
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_27;
  v9 = _ARLogGeneral_15(v4);
  v5 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v16 = 138543618;
      v17 = v11;
      v18 = 2048;
      selfCopy2 = self;
      v12 = "%{public}@ <%p>: Could not find supported video format for running user face tracking in multicam mode.";
      v13 = v5;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_14:
      _os_log_impl(&dword_1C241C000, v13, v14, v12, &v16, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v11 = NSStringFromClass(v15);
    v16 = 138543618;
    v17 = v11;
    v18 = 2048;
    selfCopy2 = self;
    v12 = "Error: %{public}@ <%p>: Could not find supported video format for running user face tracking in multicam mode.";
    v13 = v5;
    v14 = OS_LOG_TYPE_INFO;
    goto LABEL_14;
  }

  v6 = MEMORY[0x1E695E0F0];
LABEL_4:

  return v6;
}

+ (id)supportedVideoFormatsForUserFaceTracking
{
  if ([self supportsUserFaceTracking])
  {
    if (supportedVideoFormatsForUserFaceTracking_supportedFormats && ![supportedVideoFormatsForUserFaceTracking_supportedFormats count])
    {
      _querySupportedVideoFormatsForUserFaceTracking = [self _querySupportedVideoFormatsForUserFaceTracking];
      v4 = supportedVideoFormatsForUserFaceTracking_supportedFormats;
      supportedVideoFormatsForUserFaceTracking_supportedFormats = _querySupportedVideoFormatsForUserFaceTracking;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __72__ARWorldTrackingConfiguration_supportedVideoFormatsForUserFaceTracking__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (supportedVideoFormatsForUserFaceTracking_onceToken != -1)
    {
      dispatch_once(&supportedVideoFormatsForUserFaceTracking_onceToken, block);
    }

    v5 = supportedVideoFormatsForUserFaceTracking_supportedFormats;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __72__ARWorldTrackingConfiguration_supportedVideoFormatsForUserFaceTracking__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormatsForUserFaceTracking];
  v2 = supportedVideoFormatsForUserFaceTracking_supportedFormats;
  supportedVideoFormatsForUserFaceTracking_supportedFormats = v1;
}

+ (id)_querySupportedVideoFormatsForUltraWide
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6986948];
  v43 = 0x1E000000280;
  v4 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.imagesensor.back.ultrawide.videoBinned"];
  v5 = [ARKitUserDefaults resolutionForKey:@"com.apple.arkit.imagesensor.back.ultrawide.resolution" resultingDimensions:&v43];
  if (v5)
  {
    v6 = _ARLogSensor_9(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544386;
      v48 = v8;
      v49 = 2048;
      selfCopy5 = self;
      v51 = 2112;
      v52 = *&v3;
      v53 = 1024;
      v54 = v43;
      v55 = 1024;
      v56 = HIDWORD(v43);
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat resolution for %@ set to %i, %i by user defaults", buf, 0x2Cu);
    }
  }

  v9 = [ARKitUserDefaults numberForKey:@"com.apple.arkit.imagesensor.back.ultrawide.frameRate"];
  v10 = v9;
  if (v9)
  {
    doubleValue = [v9 doubleValue];
    v13 = v12;
    v14 = _ARLogSensor_9(doubleValue);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138543874;
      v48 = v16;
      v49 = 2048;
      selfCopy5 = self;
      v51 = 2048;
      v52 = v13;
      _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: ARVideoFormat frame rate set to %f by user defaults", buf, 0x20u);
    }
  }

  else
  {
    v13 = 10.0;
  }

  v17 = MGCopyAnswer();
  bOOLValue = [v17 BOOLValue];
  if ((bOOLValue & 1) == 0 && ARDeviceSupportsJasper(bOOLValue, v19))
  {
    v20 = [[ARVideoFormat alloc] initWithImageResolution:1 captureDevicePosition:v3 captureDeviceType:640.0, 480.0];
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v46[0] = v21;
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v46[1] = v22;
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:v13];
    v46[2] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
    [(ARVideoFormat *)v20 setFrameRatesByPowerUsage:v24];

    v45 = v20;
    v25 = MEMORY[0x1E695DEC8];
    v26 = &v45;
LABEL_16:
    v29 = [v25 arrayWithObjects:v26 count:1];
    goto LABEL_29;
  }

  v27 = [ARVideoFormat bestVideoFormatForDevicePosition:1 deviceType:v3 resolution:v43 frameRate:v4 videoBinned:v13];
  v20 = v27;
  if (v27)
  {
    [(ARVideoFormat *)v27 imageResolution];
    v28 = [ARWorldTrackingTechnique supportsVideoResolution:v3 forDeviceType:?];
    if (v28)
    {
      v44 = v20;
      v25 = MEMORY[0x1E695DEC8];
      v26 = &v44;
      goto LABEL_16;
    }

    v30 = _ARLogGeneral_15(v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138543874;
      v48 = v32;
      v49 = 2048;
      selfCopy5 = self;
      v51 = 2114;
      v52 = *&v20;
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Not returning video format %{public}@ because world tracking technique does not support its video resolution on current device", buf, 0x20u);
    }
  }

  if (ARShouldUseLogTypeError_onceToken_27 != -1)
  {
    +[ARWorldTrackingConfiguration _querySupportedVideoFormats];
  }

  v33 = ARShouldUseLogTypeError_internalOSVersion_27;
  v34 = _ARLogGeneral_15(v27);
  v35 = v34;
  if (v33 == 1)
  {
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v36 = objc_opt_class();
      v37 = NSStringFromClass(v36);
      *buf = 138543618;
      v48 = v37;
      v49 = 2048;
      selfCopy5 = self;
      v38 = "%{public}@ <%p>: Video format not found for using ultra wide in world tracking";
      v39 = v35;
      v40 = OS_LOG_TYPE_ERROR;
LABEL_27:
      _os_log_impl(&dword_1C241C000, v39, v40, v38, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v41 = objc_opt_class();
    v37 = NSStringFromClass(v41);
    *buf = 138543618;
    v48 = v37;
    v49 = 2048;
    selfCopy5 = self;
    v38 = "Error: %{public}@ <%p>: Video format not found for using ultra wide in world tracking";
    v39 = v35;
    v40 = OS_LOG_TYPE_INFO;
    goto LABEL_27;
  }

  v29 = MEMORY[0x1E695E0F0];
LABEL_29:

  return v29;
}

+ (id)supportedVideoFormatsForUltraWide
{
  if ([self isSupported])
  {
    if (supportedVideoFormatsForUltraWide_supportedFormats_0 && ![supportedVideoFormatsForUltraWide_supportedFormats_0 count])
    {
      _querySupportedVideoFormatsForUltraWide = [self _querySupportedVideoFormatsForUltraWide];
      v4 = supportedVideoFormatsForUltraWide_supportedFormats_0;
      supportedVideoFormatsForUltraWide_supportedFormats_0 = _querySupportedVideoFormatsForUltraWide;
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__ARWorldTrackingConfiguration_supportedVideoFormatsForUltraWide__block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (supportedVideoFormatsForUltraWide_onceToken_0 != -1)
    {
      dispatch_once(&supportedVideoFormatsForUltraWide_onceToken_0, block);
    }

    v5 = supportedVideoFormatsForUltraWide_supportedFormats_0;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

void __65__ARWorldTrackingConfiguration_supportedVideoFormatsForUltraWide__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _querySupportedVideoFormatsForUltraWide];
  v2 = supportedVideoFormatsForUltraWide_supportedFormats_0;
  supportedVideoFormatsForUltraWide_supportedFormats_0 = v1;
}

- (void)setVideoFormat:(id)format
{
  formatCopy = format;
  v6.receiver = self;
  v6.super_class = ARWorldTrackingConfiguration;
  [(ARConfiguration *)&v6 setVideoFormat:formatCopy];
  if ([formatCopy has4KVideoResolution])
  {
    isX420PixelFormat = 1;
  }

  else
  {
    isX420PixelFormat = [formatCopy isX420PixelFormat];
  }

  [(ARWorldTrackingConfiguration *)self setAlwaysUsePrimaryCameraForTracking:isX420PixelFormat];
}

- (id)parentImageSensorSettings
{
  v10.receiver = self;
  v10.super_class = ARWorldTrackingConfiguration;
  parentImageSensorSettings = [(ARConfiguration *)&v10 parentImageSensorSettings];
  settings = [parentImageSensorSettings settings];
  v5 = [settings mutableCopy];

  if ([objc_opt_class() supportsUserFaceTracking] && !self->_disableFrontCamera && !+[ARKitUserDefaults BOOLForKey:](ARKitUserDefaults, "BOOLForKey:", @"com.apple.arkit.worldTracking.forceDisableFrontCamera") && !objc_msgSend(objc_opt_class(), "backdropCameraOverride") && !-[ARWorldTrackingConfiguration recordForGeoTracking](self, "recordForGeoTracking"))
  {
    imageSensorSettingsForUserFaceTracking = [(ARWorldTrackingConfiguration *)self imageSensorSettingsForUserFaceTracking];
    [imageSensorSettingsForUserFaceTracking setEnabled:{-[ARWorldTrackingConfiguration userFaceTrackingEnabled](self, "userFaceTrackingEnabled")}];
    if (imageSensorSettingsForUserFaceTracking)
    {
      [v5 addObject:imageSensorSettingsForUserFaceTracking];
    }
  }

  imageSensorSettingsForUltraWide = [(ARWorldTrackingConfiguration *)self imageSensorSettingsForUltraWide];
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

- (id)imageSensorSettings
{
  v22 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = ARWorldTrackingConfiguration;
  imageSensorSettings = [(ARConfiguration *)&v15 imageSensorSettings];
  [imageSensorSettings setVisionDataOutputEnabled:{-[ARWorldTrackingConfiguration shouldEnableVisionDataForImageSensorSettings:](self, "shouldEnableVisionDataForImageSensorSettings:", imageSensorSettings)}];
  if ([imageSensorSettings visionDataOutputEnabled])
  {
    _trackingOptions = [(ARWorldTrackingConfiguration *)self _trackingOptions];
    [_trackingOptions setImageSensorSettings:imageSensorSettings];
    imageSensorSettingsForUltraWide = [(ARWorldTrackingConfiguration *)self imageSensorSettingsForUltraWide];
    [_trackingOptions setImageSensorSettingsForUltraWide:imageSensorSettingsForUltraWide];

    v6 = ARVisionDataParametersForWorldTrackingOptions(_trackingOptions);
    if (v6)
    {
      v7 = _ARLogGeneral_15([imageSensorSettings setVisionDataOutputParameters:v6]);
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
      v7 = _ARLogGeneral_15(0);
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
  if (![(ARWorldTrackingConfiguration *)self shouldUseUltraWide])
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
    [(ARImageSensorSettings *)v5 setVisionDataOutputEnabled:[(ARWorldTrackingConfiguration *)self shouldEnableVisionDataForImageSensorSettings:v5]];
    if ([(ARImageSensorSettings *)v5 visionDataOutputEnabled])
    {
      _trackingOptions = [(ARWorldTrackingConfiguration *)self _trackingOptions];
      imageSensorSettings = [(ARWorldTrackingConfiguration *)self imageSensorSettings];
      [_trackingOptions setImageSensorSettings:imageSensorSettings];

      [_trackingOptions setImageSensorSettingsForUltraWide:v5];
      v9 = ARVisionDataParametersForWorldTrackingOptions(_trackingOptions);
      if (v9)
      {
        v10 = _ARLogGeneral_15([(ARImageSensorSettings *)v5 setVisionDataOutputParameters:v9]);
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
        v10 = _ARLogGeneral_15(0);
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
  v3 = ARDeviceSupportsUltraWideCamera(self, a2);
  if (v3)
  {
    v3 = ARUserDefaultsMulticamModeEnabled(v3, v4);
    if (v3)
    {
      supportedVideoFormatsForUltraWide = [objc_opt_class() supportedVideoFormatsForUltraWide];
      if ([supportedVideoFormatsForUltraWide count] && self->_shouldUseUltraWideIfAvailable)
      {
        backdropCameraOverride = [objc_opt_class() backdropCameraOverride];

        if (!backdropCameraOverride)
        {
          v7 = 1;
          v3 = ARDeviceSupportsMulticamMode();
          if (v3)
          {
            return v7;
          }

          goto LABEL_10;
        }
      }

      else
      {
      }
    }
  }

  v7 = 0;
LABEL_10:
  v8 = ARLinkedOnOrAfterYukon(v3, v4);
  if (v8)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    return v7 & ARDeviceSupportsJasper(v8, v9);
  }

  return v7;
}

- (BOOL)shouldUseJasper
{
  v3 = ARDeviceSupportsJasper(self, a2);
  if (v3)
  {

    LOBYTE(v3) = [(ARWorldTrackingConfiguration *)self useLidarIfAvailable];
  }

  return v3;
}

- (BOOL)shouldEnableVisionDataForImageSensorSettings:(id)settings
{
  videoFormat = [settings videoFormat];
  if (!videoFormat)
  {
    goto LABEL_8;
  }

  shouldUseUltraWide = [(ARWorldTrackingConfiguration *)self shouldUseUltraWide];
  captureDeviceType = [videoFormat captureDeviceType];
  v7 = captureDeviceType;
  if (!shouldUseUltraWide)
  {
    v9 = ARIsSupportedAVCaptureDeviceTypeForRearCameraBackdrop(captureDeviceType);

    if (v9)
    {
      goto LABEL_6;
    }

LABEL_8:
    v12 = 0;
    goto LABEL_9;
  }

  v8 = *MEMORY[0x1E6986948];

  if (v7 != v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  slamConfiguration = [(ARWorldTrackingConfiguration *)self slamConfiguration];
  v11 = [slamConfiguration isEqualToString:@"MeasureApp"];

  if (![ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.visionData"])
  {
    goto LABEL_8;
  }

  v12 = ([ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.simulateHWFeatureDetection"]| v11) ^ 1;
LABEL_9:

  return v12 & 1;
}

- (void)setDetectionImages:(NSSet *)detectionImages
{
  v4 = detectionImages;
  v6 = v4;
  if (!v4)
  {
    v4 = objc_opt_new();
  }

  objc_storeStrong(&self->_detectionImages, v4);
  v5 = v6;
  if (!v6)
  {

    v5 = 0;
  }
}

- (void)createTechniques:(id)techniques
{
  v69 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  frameSemantics = [(ARConfiguration *)self frameSemantics];
  if (![(ARWorldTrackingConfiguration *)self useLidarIfAvailable]&& (frameSemantics & 0x18) != 0)
  {
    if (_ARLogRuntimeIssues_onceToken_0 != -1)
    {
      [ARWorldTrackingConfiguration createTechniques:];
    }

    v6 = _ARLogRuntimeIssues_logObj_0;
    if (os_log_type_enabled(_ARLogRuntimeIssues_logObj_0, OS_LOG_TYPE_FAULT))
    {
      v7 = v6;
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138543618;
      v64 = v9;
      v65 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_FAULT, "%{public}@ <%p>: Disabling Lidar (useLidarIfAvailable=false) and SceneDepth is not compatible (ARFrameSemanticSceneDepth | ARFrameSemanticSmoothedSceneDepth)", buf, 0x16u);
    }
  }

  _trackingOptions = [(ARWorldTrackingConfiguration *)self _trackingOptions];
  imageSensorSettings = [(ARWorldTrackingConfiguration *)self imageSensorSettings];
  [_trackingOptions setImageSensorSettings:imageSensorSettings];

  imageSensorSettingsForUltraWide = [(ARWorldTrackingConfiguration *)self imageSensorSettingsForUltraWide];
  [_trackingOptions setImageSensorSettingsForUltraWide:imageSensorSettingsForUltraWide];

  if ([(ARWorldTrackingConfiguration *)self environmentTexturing])
  {
    [_trackingOptions setPlaneDetection:{objc_msgSend(_trackingOptions, "planeDetection") | 0x80}];
  }

  replaySensor = [(ARConfiguration *)self replaySensor];
  v14 = replaySensor;
  if (replaySensor && [replaySensor replayMode])
  {
    [_trackingOptions setDeterministicMode:1];
    sceneReconstructionOptions = [_trackingOptions sceneReconstructionOptions];
    [sceneReconstructionOptions setDeterministicMode:1];
  }

  if ([_trackingOptions planeDetection])
  {
    v16 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.worldTracking.accuratePlaneExtentCheck"];
    if (v16)
    {
      accuratePlaneExtentCheckEnabled = self->_accuratePlaneExtentCheckEnabled;
    }

    else
    {
      accuratePlaneExtentCheckEnabled = 0;
    }

    v18 = _ARLogGeneral_15(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = @"disabled";
      *buf = 138543874;
      v64 = v20;
      if (accuratePlaneExtentCheckEnabled)
      {
        v21 = @"enabled";
      }

      v65 = 2048;
      selfCopy3 = self;
      v67 = 2114;
      v68 = *&v21;
      _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Ray-cast accurate extent check: %{public}@", buf, 0x20u);
    }

    if (accuratePlaneExtentCheckEnabled)
    {
      [_trackingOptions setPlaneDetection:{objc_msgSend(_trackingOptions, "planeDetection") | 0x200}];
    }
  }

  v22 = [[ARWorldTrackingTechnique alloc] initWithOptions:_trackingOptions];
  v23 = v22;
  if (v22)
  {
    options = [(ARWorldTrackingTechnique *)v22 options];
    planeDetection = [options planeDetection];

    if (planeDetection)
    {
      v26 = [[ARPlaneEstimationTechnique alloc] initWithTrackingTechnique:v23];
      [techniquesCopy addObject:v26];
    }

    if ([(ARWorldTrackingConfiguration *)self environmentTexturing])
    {
      v27 = [[AREnvironmentTexturingTechnique alloc] initWithOptions:[(ARWorldTrackingConfiguration *)self environmentTexturing] wantsHDREnvironmentTextures:self->_wantsHDREnvironmentTextures];
      [techniquesCopy addObject:v27];
    }

    v28 = [ARParentTechnique alloc];
    v62 = v23;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1];
    v30 = [(ARParentTechnique *)v28 initWithParallelTechniques:v29];

    [techniquesCopy insertObject:v30 atIndex:0];
    v61.receiver = self;
    v61.super_class = ARWorldTrackingConfiguration;
    [(ARConfiguration *)&v61 createTechniques:techniquesCopy];
    if ([_trackingOptions planeDetection])
    {
      isMLModelEnabled = [(ARWorldTrackingConfiguration *)self isMLModelEnabled];
    }

    else
    {
      isMLModelEnabled = 0;
    }

    sceneReconstruction = [(ARWorldTrackingConfiguration *)self sceneReconstruction];
    if ([(ARWorldTrackingConfiguration *)self shouldUseJasper])
    {
      ARAddJasperTechniquesToParent(v30, techniquesCopy, sceneReconstruction != 0 || isMLModelEnabled, ([(ARConfiguration *)self frameSemantics]>> 4) & 1, [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate]);
      v33 = [ARTechnique techniqueConformsToProtocol:&unk_1F425FD78 inArray:techniquesCopy];
      v34 = v33;
      if (v33)
      {
        pipelineParameters = [v33 pipelineParameters];
        [pipelineParameters confidenceBucketingHighThreshold];
        v37 = v36;
        mutableOptions = [(ARWorldTrackingTechnique *)v23 mutableOptions];
        sceneReconstructionOptions2 = [mutableOptions sceneReconstructionOptions];
        LODWORD(v40) = v37;
        [sceneReconstructionOptions2 setMinDepthUncertaintyThreshold:v40];

        v42 = _ARLogGeneral_15(v41);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = objc_opt_class();
          v44 = NSStringFromClass(v43);
          mutableOptions2 = [(ARWorldTrackingTechnique *)v23 mutableOptions];
          sceneReconstructionOptions3 = [mutableOptions2 sceneReconstructionOptions];
          [sceneReconstructionOptions3 minDepthUncertaintyThreshold];
          *buf = 138543874;
          v64 = v44;
          v65 = 2048;
          selfCopy3 = self;
          v67 = 2048;
          v68 = v46;
          _os_log_impl(&dword_1C241C000, v42, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Changed the min depth uncertainty threshold of scene reconstruction to %f \n", buf, 0x20u);
        }
      }
    }

    else if (isMLModelEnabled)
    {
      ARAddNonJasperSemanticsToParent(v30, techniquesCopy, [(ARConfiguration *)self maxUltrawideImageForwardingFrameRate], 1);
    }

    detectionImages = [(ARWorldTrackingConfiguration *)self detectionImages];
    v48 = [detectionImages count];

    if (v48)
    {
      v49 = [ARImageDetectionTechnique alloc];
      detectionImages2 = [(ARWorldTrackingConfiguration *)self detectionImages];
      allObjects = [detectionImages2 allObjects];
      v52 = [(ARImageDetectionTechnique *)v49 initWithReferenceImages:allObjects maximumNumberOfTrackedImages:[(ARWorldTrackingConfiguration *)self maximumNumberOfTrackedImages]];

      [(ARImageDetectionTechnique *)v52 setEnableAutomaticImageScaleEstimation:[(ARWorldTrackingConfiguration *)self automaticImageScaleEstimationEnabled]];
      [techniquesCopy addObject:v52];
    }

    detectionObjects = [(ARWorldTrackingConfiguration *)self detectionObjects];
    v54 = [detectionObjects count];

    if (v54)
    {
      v55 = [ARObjectDetectionTechnique alloc];
      detectionObjects2 = [(ARWorldTrackingConfiguration *)self detectionObjects];
      allObjects2 = [detectionObjects2 allObjects];
      v58 = [(ARObjectDetectionTechnique *)v55 initWithDetectionObjects:allObjects2];

      [techniquesCopy addObject:v58];
    }

    if ([(ARWorldTrackingConfiguration *)self appClipCodeTrackingEnabled])
    {
      v59 = [[ARAppClipCodeTechnique alloc] initWithIgnoreURLLimitation:[(ARWorldTrackingConfiguration *)self ignoreAppClipCodeURLLimitation]];
      if ((self->_appClipCodePerformanceTestingMode - 1) <= 1)
      {
        [techniquesCopy removeAllObjects];
      }

      [techniquesCopy addObject:v59];
    }
  }
}

- (id)secondaryTechniques
{
  v6[1] = *MEMORY[0x1E69E9840];
  if ([objc_opt_class() supportsUserFaceTracking] && -[ARWorldTrackingConfiguration userFaceTrackingEnabled](self, "userFaceTrackingEnabled"))
  {
    v3 = objc_opt_new();
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

- (id)_trackingOptions
{
  v3 = objc_opt_new();
  deviceModel = [(ARConfiguration *)self deviceModel];
  [v3 setDeviceModel:deviceModel];

  [v3 setRelocalizationEnabled:{-[ARWorldTrackingConfiguration relocalizationEnabled](self, "relocalizationEnabled")}];
  initialWorldMap = [(ARWorldTrackingConfiguration *)self initialWorldMap];
  [v3 setInitialWorldMap:initialWorldMap];

  slamConfiguration = [(ARWorldTrackingConfiguration *)self slamConfiguration];
  [v3 setSlamConfiguration:slamConfiguration];

  [v3 setPlaneDetection:{-[ARWorldTrackingConfiguration planeDetection](self, "planeDetection")}];
  [(ARWorldTrackingConfiguration *)self minVergenceAngle];
  [v3 setMinVergenceAngle:?];
  [v3 setMlModelEnabled:{-[ARWorldTrackingConfiguration isMLModelEnabled](self, "isMLModelEnabled")}];
  [v3 setLowQosSchedulingEnabled:{-[ARWorldTrackingConfiguration isLowQosSchedulingEnabled](self, "isLowQosSchedulingEnabled")}];
  [v3 setCollaborationEnabled:{-[ARWorldTrackingConfiguration isCollaborationEnabled](self, "isCollaborationEnabled")}];
  [v3 setSceneReconstruction:{-[ARWorldTrackingConfiguration sceneReconstruction](self, "sceneReconstruction")}];
  sceneReconstructionOptions = [(ARWorldTrackingConfiguration *)self sceneReconstructionOptions];
  [v3 setSceneReconstructionOptions:sceneReconstructionOptions];

  LOBYTE(sceneReconstructionOptions) = [(ARConfiguration *)self frameSemantics];
  [(ARConfiguration *)self frameSemantics];
  if ((sceneReconstructionOptions & 8) != 0 || [(ARWorldTrackingConfiguration *)self sceneReconstruction])
  {
    [v3 setDepthBuffersWillBeProvided:1];
  }

  [v3 setAlwaysUsePrimaryCameraForTracking:{-[ARWorldTrackingConfiguration alwaysUsePrimaryCameraForTracking](self, "alwaysUsePrimaryCameraForTracking")}];
  [v3 setRecordForGeoTracking:{-[ARWorldTrackingConfiguration recordForGeoTracking](self, "recordForGeoTracking")}];
  [v3 setPlaneBundleAdjustmentEnabled:{-[ARWorldTrackingConfiguration isPlaneBundleAdjustmentEnabled](self, "isPlaneBundleAdjustmentEnabled")}];
  singleShotPlaneCallback = [(ARWorldTrackingConfiguration *)self singleShotPlaneCallback];
  [v3 setSingleShotPlaneCallback:singleShotPlaneCallback];

  trackedPlaneCallback = [(ARWorldTrackingConfiguration *)self trackedPlaneCallback];
  [v3 setTrackedPlaneCallback:trackedPlaneCallback];

  planeDetectionVIOPoseCallback = [(ARWorldTrackingConfiguration *)self planeDetectionVIOPoseCallback];
  [v3 setPlaneDetectionVIOPoseCallback:planeDetectionVIOPoseCallback];

  planeDetectionPoseUpdateCallback = [(ARWorldTrackingConfiguration *)self planeDetectionPoseUpdateCallback];
  [v3 setPlaneDetectionPoseUpdateCallback:planeDetectionPoseUpdateCallback];

  [v3 setDisableMLRelocalization:{-[ARConfiguration disableMLRelocalization](self, "disableMLRelocalization")}];
  [v3 setPlaneEstimationShouldUseJasperData:{-[ARWorldTrackingConfiguration shouldUseJasper](self, "shouldUseJasper")}];

  return v3;
}

- (int64_t)_depthPrioritization
{
  if ([(ARWorldTrackingConfiguration *)self depthOptimizedForStaticScene])
  {
    return 4;
  }

  else
  {
    return 1;
  }
}

+ (BOOL)supportsUserFaceTracking
{
  v2 = ARDeviceSupportsUltraWideCamera(self, a2);
  if (v2)
  {
    v4 = ARDeviceSupportsMulticamWithTripleRGBStreaming(v2, v3);
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v4 = ARDeviceSupportsMulticamMode();
    if (!v4)
    {
      return 0;
    }
  }

  return ARUserDefaultsMulticamModeEnabled(v4, v5);
}

+ (BOOL)supportsSceneReconstruction:(ARSceneReconstruction)sceneReconstruction
{
  if (!ARDeviceSupportsJasper(self, a2))
  {
    return sceneReconstruction == 0;
  }

  result = 1;
  if ((sceneReconstruction & 1) == 0 && (sceneReconstruction & 8) == 0 && (sceneReconstruction & 0x80) == 0)
  {
    return sceneReconstruction == 0;
  }

  return result;
}

- (void)setSceneReconstruction:(ARSceneReconstruction)sceneReconstruction
{
  if (([objc_opt_class() supportsSceneReconstruction:sceneReconstruction] & 1) == 0)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Scene Reconstruction type not supported by this configuration" userInfo:0];
    objc_exception_throw(v5);
  }

  self->_sceneReconstruction = sceneReconstruction;
}

+ (BOOL)supportsFrameSemantics:(unint64_t)semantics
{
  if (semantics & 7) == 0 && (ARDeviceSupportsJasper(self, a2))
  {
    return 1;
  }

  if (semantics & 0x1B) == 0 && (ARAppleNeuralEngine())
  {
    return 1;
  }

  if (semantics & 0x1C) == 0 && (ARAppleNeuralEngine())
  {
    return 1;
  }

  if ((semantics & 4) == 0)
  {
    v5 = ARAppleNeuralEngine();
    if (v5)
    {
      if (ARDeviceSupportsJasper(v5, v6))
      {
        return 1;
      }
    }
  }

  v8.receiver = self;
  v8.super_class = &OBJC_METACLASS___ARWorldTrackingConfiguration;
  return objc_msgSendSuper2(&v8, sel_supportsFrameSemantics_, semantics);
}

- (void)setSpatialMappingParameters:(ARSpatialMappingParameters)parameters
{
  var1 = parameters.var1;
  [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions setVoxelSize:parameters.var0];
  sceneReconstructionOptions = self->_sceneReconstructionOptions;

  [(ARSceneReconstructionOptions *)sceneReconstructionOptions setBucketsCount:var1];
}

- (ARSpatialMappingParameters)spatialMappingParameters
{
  voxelSize = [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions voxelSize];
  bucketsCount = [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions bucketsCount];
  v5 = voxelSize;
  result.var1 = bucketsCount;
  result.var0 = v5;
  return result;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v42.receiver = self;
  v42.super_class = ARWorldTrackingConfiguration;
  if ([(ARConfiguration *)&v42 isEqual:equalCopy])
  {
    v7 = equalCopy;
    v8 = v7;
    if (self->_planeDetection != *(v7 + 18) || self->_minVergenceAngle != v7[25] || self->_mlModelEnabled != *(v7 + 118) || self->_lowQosSchedulingEnabled != *(v7 + 119) || self->_accuratePlaneExtentCheckEnabled != *(v7 + 120) || self->_deliverRawSceneUnderstandingResults != *(v7 + 121) || (slamConfiguration = self->_slamConfiguration, slamConfiguration != *(v8 + 24)) && ![(NSString *)slamConfiguration isEqual:?]|| self->_environmentTexturing != *(v8 + 17) || self->_wantsHDREnvironmentTextures != *(v8 + 112) || self->_relocalizationEnabled != *(v8 + 117))
    {
      v13 = 0;
LABEL_18:

      goto LABEL_19;
    }

    initialWorldMap = [(ARWorldTrackingConfiguration *)self initialWorldMap];
    initialWorldMap2 = [v8 initialWorldMap];
    if (initialWorldMap != initialWorldMap2)
    {
      initialWorldMap3 = [(ARWorldTrackingConfiguration *)self initialWorldMap];
      initialWorldMap4 = [v8 initialWorldMap];
      if (![initialWorldMap3 isEqual:initialWorldMap4])
      {
        v12 = 0;
        goto LABEL_47;
      }
    }

    detectionImages = self->_detectionImages;
    detectionImages = [v8 detectionImages];
    if ((detectionImages == detectionImages || [(NSSet *)self->_detectionImages isEqual:*(v8 + 20)]) && self->_maximumNumberOfTrackedImages == *(v8 + 21))
    {
      detectionObjects = self->_detectionObjects;
      if (detectionObjects == *(v8 + 22) || [(NSSet *)detectionObjects isEqual:?])
      {
        automaticImageScaleEstimationEnabled = self->_automaticImageScaleEstimationEnabled;
        if (automaticImageScaleEstimationEnabled == [v8 automaticImageScaleEstimationEnabled])
        {
          collaborationEnabled = self->_collaborationEnabled;
          if (collaborationEnabled == [v8 isCollaborationEnabled])
          {
            shouldUseUltraWideIfAvailable = self->_shouldUseUltraWideIfAvailable;
            if (shouldUseUltraWideIfAvailable == [v8 shouldUseUltraWideIfAvailable])
            {
              userFaceTrackingEnabled = self->_userFaceTrackingEnabled;
              if (userFaceTrackingEnabled == [v8 userFaceTrackingEnabled])
              {
                depthTemporalSmoothingEnabled = self->_depthTemporalSmoothingEnabled;
                if (depthTemporalSmoothingEnabled == [v8 depthTemporalSmoothingEnabled])
                {
                  depthOptimizedForStaticScene = self->_depthOptimizedForStaticScene;
                  if (depthOptimizedForStaticScene == [v8 depthOptimizedForStaticScene] && self->_sceneReconstruction == *(v8 + 23))
                  {
                    sceneReconstructionOptions = self->_sceneReconstructionOptions;
                    if (sceneReconstructionOptions == *(v8 + 26) || [(ARSceneReconstructionOptions *)sceneReconstructionOptions isEqual:?])
                    {
                      alwaysUsePrimaryCameraForTracking = self->_alwaysUsePrimaryCameraForTracking;
                      if (alwaysUsePrimaryCameraForTracking == [v8 alwaysUsePrimaryCameraForTracking])
                      {
                        disableFrontCamera = self->_disableFrontCamera;
                        if (disableFrontCamera == [v8 disableFrontCamera])
                        {
                          ignoreAppClipCodeURLLimitation = self->_ignoreAppClipCodeURLLimitation;
                          if (ignoreAppClipCodeURLLimitation == [v8 ignoreAppClipCodeURLLimitation])
                          {
                            appClipCodeTrackingEnabled = self->_appClipCodeTrackingEnabled;
                            if (appClipCodeTrackingEnabled == [v8 appClipCodeTrackingEnabled])
                            {
                              appClipCodePerformanceTestingMode = self->_appClipCodePerformanceTestingMode;
                              if (appClipCodePerformanceTestingMode == [v8 appClipCodePerformanceTestingMode])
                              {
                                recordForGeoTracking = self->_recordForGeoTracking;
                                if (recordForGeoTracking == [v8 recordForGeoTracking])
                                {
                                  planeBundleAdjustmentEnabled = self->_planeBundleAdjustmentEnabled;
                                  if (planeBundleAdjustmentEnabled == [v8 isPlaneBundleAdjustmentEnabled])
                                  {
                                    singleShotPlaneCallback = self->_singleShotPlaneCallback;
                                    singleShotPlaneCallback = [v8 singleShotPlaneCallback];
                                    if (singleShotPlaneCallback == singleShotPlaneCallback)
                                    {
                                      trackedPlaneCallback = self->_trackedPlaneCallback;
                                      trackedPlaneCallback = [v8 trackedPlaneCallback];
                                      if (trackedPlaneCallback == trackedPlaneCallback)
                                      {
                                        planeDetectionVIOPoseCallback = self->_planeDetectionVIOPoseCallback;
                                        planeDetectionVIOPoseCallback = [v8 planeDetectionVIOPoseCallback];
                                        if (planeDetectionVIOPoseCallback == planeDetectionVIOPoseCallback)
                                        {
                                          planeDetectionPoseUpdateCallback = self->_planeDetectionPoseUpdateCallback;
                                          planeDetectionPoseUpdateCallback = [v8 planeDetectionPoseUpdateCallback];
                                          if (planeDetectionPoseUpdateCallback == planeDetectionPoseUpdateCallback && (disableLocationSensor = self->_disableLocationSensor, disableLocationSensor == [v8 disableLocationSensor]))
                                          {
                                            useLidarIfAvailable = self->_useLidarIfAvailable;
                                            v12 = useLidarIfAvailable == [v8 useLidarIfAvailable];
                                          }

                                          else
                                          {
                                            v12 = 0;
                                          }
                                        }

                                        else
                                        {
                                          v12 = 0;
                                        }

                                        v13 = v12;
LABEL_46:
                                        if (initialWorldMap == initialWorldMap2)
                                        {
LABEL_48:

                                          goto LABEL_18;
                                        }

LABEL_47:

                                        v13 = v12;
                                        goto LABEL_48;
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

    v12 = 0;
    v13 = 0;
    goto LABEL_46;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24.receiver = self;
  v24.super_class = ARWorldTrackingConfiguration;
  v5 = [(ARConfiguration *)&v24 copyWithZone:?];
  v5[18] = self->_planeDetection;
  v5[25] = *&self->_minVergenceAngle;
  *(v5 + 118) = self->_mlModelEnabled;
  *(v5 + 119) = self->_lowQosSchedulingEnabled;
  *(v5 + 120) = self->_accuratePlaneExtentCheckEnabled;
  *(v5 + 121) = self->_deliverRawSceneUnderstandingResults;
  v6 = [(NSString *)self->_slamConfiguration copyWithZone:zone];
  v7 = v5[24];
  v5[24] = v6;

  v5[17] = self->_environmentTexturing;
  *(v5 + 112) = self->_wantsHDREnvironmentTextures;
  *(v5 + 117) = self->_relocalizationEnabled;
  initialWorldMap = [(ARWorldTrackingConfiguration *)self initialWorldMap];
  [v5 setInitialWorldMap:initialWorldMap];

  v9 = [(NSSet *)self->_detectionImages copyWithZone:zone];
  v10 = v5[20];
  v5[20] = v9;

  v5[21] = self->_maximumNumberOfTrackedImages;
  v11 = [(NSSet *)self->_detectionObjects copyWithZone:zone];
  v12 = v5[22];
  v5[22] = v11;

  *(v5 + 113) = self->_automaticImageScaleEstimationEnabled;
  *(v5 + 114) = self->_collaborationEnabled;
  *(v5 + 115) = self->_userFaceTrackingEnabled;
  *(v5 + 122) = self->_shouldUseUltraWideIfAvailable;
  *(v5 + 124) = self->_depthTemporalSmoothingEnabled;
  *(v5 + 125) = self->_depthOptimizedForStaticScene;
  v5[23] = self->_sceneReconstruction;
  v13 = [(ARSceneReconstructionOptions *)self->_sceneReconstructionOptions copyWithZone:zone];
  v14 = v5[26];
  v5[26] = v13;

  *(v5 + 127) = self->_alwaysUsePrimaryCameraForTracking;
  *(v5 + 128) = self->_disableFrontCamera;
  *(v5 + 126) = self->_ignoreAppClipCodeURLLimitation;
  *(v5 + 116) = self->_appClipCodeTrackingEnabled;
  v5[27] = self->_appClipCodePerformanceTestingMode;
  *(v5 + 130) = self->_recordForGeoTracking;
  *(v5 + 131) = self->_planeBundleAdjustmentEnabled;
  v15 = MEMORY[0x1C691B4C0](self->_singleShotPlaneCallback);
  v16 = v5[28];
  v5[28] = v15;

  v17 = MEMORY[0x1C691B4C0](self->_trackedPlaneCallback);
  v18 = v5[29];
  v5[29] = v17;

  v19 = MEMORY[0x1C691B4C0](self->_planeDetectionVIOPoseCallback);
  v20 = v5[30];
  v5[30] = v19;

  v21 = MEMORY[0x1C691B4C0](self->_planeDetectionPoseUpdateCallback);
  v22 = v5[31];
  v5[31] = v21;

  *(v5 + 123) = self->_useLidarIfAvailable;
  *(v5 + 129) = self->_disableLocationSensor;
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

  if ([(ARWorldTrackingConfiguration *)self wantsHDREnvironmentTextures])
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

  if ([(ARWorldTrackingConfiguration *)self isCollaborationEnabled])
  {
    v12 = @"Enabled";
  }

  else
  {
    v12 = @"Disabled";
  }

  [v6 appendFormat:@" collaboration=%@", v12];
  if ([(ARWorldTrackingConfiguration *)self userFaceTrackingEnabled])
  {
    v13 = @"Enabled";
  }

  else
  {
    v13 = @"Disabled";
  }

  [v6 appendFormat:@" userFaceTracking=%@", v13];
  v14 = NSStringFromARSceneReconstruction([(ARWorldTrackingConfiguration *)self sceneReconstruction]);
  [v6 appendFormat:@" sceneReconstruction=%@", v14];

  initialWorldMap = [(ARWorldTrackingConfiguration *)self initialWorldMap];

  if (initialWorldMap)
  {
    initialWorldMap2 = [(ARWorldTrackingConfiguration *)self initialWorldMap];
    [v6 appendFormat:@" initialWorldMap=%@", initialWorldMap2];
  }

  detectionImages = [(ARWorldTrackingConfiguration *)self detectionImages];
  v18 = [detectionImages count];

  if (v18)
  {
    [v6 appendFormat:@" maximumNumberOfTrackedImages=%ld", -[ARWorldTrackingConfiguration maximumNumberOfTrackedImages](self, "maximumNumberOfTrackedImages")];
    if ([(ARWorldTrackingConfiguration *)self automaticImageScaleEstimationEnabled])
    {
      v19 = @"Enabled";
    }

    else
    {
      v19 = @"Disabled";
    }

    [v6 appendFormat:@" automaticImageScaleEstimation=%@", v19];
    detectionImages2 = [(ARWorldTrackingConfiguration *)self detectionImages];
    v21 = [detectionImages2 count];
    detectionImages3 = [(ARWorldTrackingConfiguration *)self detectionImages];
    allObjects = [detectionImages3 allObjects];
    v24 = [allObjects ar_map:&__block_literal_global_165];
    v25 = [v24 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" detectionImages=[count: %ld, %@]", v21, v25];
  }

  detectionObjects = [(ARWorldTrackingConfiguration *)self detectionObjects];
  v27 = [detectionObjects count];

  if (v27)
  {
    detectionObjects2 = [(ARWorldTrackingConfiguration *)self detectionObjects];
    allObjects2 = [detectionObjects2 allObjects];
    v30 = [allObjects2 componentsJoinedByString:{@", "}];
    [v6 appendFormat:@" detectionObjects=[%@]", v30];
  }

  [v6 appendFormat:@" useLidarIfAvailable=%d", self->_useLidarIfAvailable];
  if ([(ARWorldTrackingConfiguration *)self appClipCodeTrackingEnabled])
  {
    v31 = @"Enabled";
  }

  else
  {
    v31 = @"Disabled";
  }

  [v6 appendFormat:@" appClipCodeTracking=%@", v31];
  [v6 appendString:@">"];

  return v6;
}

@end