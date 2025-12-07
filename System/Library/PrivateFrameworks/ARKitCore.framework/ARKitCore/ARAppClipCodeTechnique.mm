@interface ARAppClipCodeTechnique
- (ARAppClipCodeTechnique)initWithIgnoreURLLimitation:(BOOL)limitation;
- (BOOL)deterministicMode;
- (BOOL)isEqual:(id)equal;
- (id)processData:(id)data;
- (void)dealloc;
- (void)prepare:(BOOL)prepare;
- (void)setPowerUsage:(unint64_t)usage;
@end

@implementation ARAppClipCodeTechnique

- (ARAppClipCodeTechnique)initWithIgnoreURLLimitation:(BOOL)limitation
{
  v13.receiver = self;
  v13.super_class = ARAppClipCodeTechnique;
  v4 = [(ARImageBasedTechnique *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_ignoreURLLimitation = limitation;
    v6 = objc_opt_new();
    decodedURLs = v5->_decodedURLs;
    v5->_decodedURLs = v6;

    v8 = objc_alloc_init(getBCSAppClipCodeURLDecoderClass());
    urlDecoder = v5->_urlDecoder;
    v5->_urlDecoder = v8;

    v5->_prepared = 0;
    v10 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.accresults", 0xFFFFFFFFLL);
    resultDispatchingQueue = v5->_resultDispatchingQueue;
    v5->_resultDispatchingQueue = v10;
  }

  return v5;
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_appClipCodeSession)
  {
    v3 = _ARLogTechnique(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = objc_opt_class();
      v5 = NSStringFromClass(v4);
      appClipCodeSession = self->_appClipCodeSession;
      *buf = 138543874;
      v13 = v5;
      v14 = 2048;
      selfCopy2 = self;
      v16 = 2048;
      v17 = appClipCodeSession;
      _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Releasing app clip code session: %p …", buf, 0x20u);
    }

    v7 = AppC3DRelease();
    v8 = _ARLogTechnique(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v13 = v10;
      v14 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: App clip code session released", buf, 0x16u);
    }
  }

  v11.receiver = self;
  v11.super_class = ARAppClipCodeTechnique;
  [(ARAppClipCodeTechnique *)&v11 dealloc];
}

- (void)prepare:(BOOL)prepare
{
  v45 = *MEMORY[0x1E69E9840];
  if (self->_prepared)
  {
    v4 = _ARLogTechnique(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = objc_opt_class();
      v6 = NSStringFromClass(v5);
      *buf = 138543618;
      v40 = v6;
      v41 = 2048;
      selfCopy6 = self;
      _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: App clip code session already exists, not recreating it.", buf, 0x16u);
    }
  }

  else
  {
    prepareCopy = prepare;
    kdebug_trace();
    if ([(NSMutableDictionary *)self->_decodedURLs count])
    {
      [(NSMutableDictionary *)self->_decodedURLs removeAllObjects];
    }

    AppC3DConfigCreate();
    v8 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.appClipCodeTracking.performanceTestMode"];
    if (v8 == 2)
    {
      AppC3DConfigSetTrackingConfig();
    }

    v9 = [ARAppClipCodeTechnique shouldRunCameraOrScannerPerformanceTestingMode:0];
    if (v9)
    {
      v10 = _ARLogTechnique(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = @"scanner";
        *buf = 138543874;
        v40 = v12;
        if (v8 == 1)
        {
          v13 = @"camera";
        }

        v41 = 2048;
        selfCopy6 = self;
        v43 = 2112;
        *v44 = v13;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running in '%@' performance test mode", buf, 0x20u);
      }

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = AppC3DConfigSetTrackingMode();
    if (v36)
    {
      if (ARShouldUseLogTypeError_onceToken_5 != -1)
      {
        [ARAppClipCodeTechnique prepare:];
      }

      v16 = ARShouldUseLogTypeError_internalOSVersion_5;
      v17 = _ARLogTechnique(v15);
      v18 = v17;
      if (v16 == 1)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = NSStringFromClass(v19);
          *buf = 138544130;
          v40 = v20;
          v41 = 2048;
          selfCopy6 = self;
          v43 = 1024;
          *v44 = v14;
          *&v44[4] = 2112;
          *&v44[6] = v36;
          _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not set app clip code config tracking mode to: %d failed with error: %@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v21 = objc_opt_class();
        v22 = NSStringFromClass(v21);
        *buf = 138544130;
        v40 = v22;
        v41 = 2048;
        selfCopy6 = self;
        v43 = 1024;
        *v44 = v14;
        *&v44[4] = 2112;
        *&v44[6] = v36;
        _os_log_impl(&dword_1C241C000, v18, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not set app clip code config tracking mode to: %d failed with error: %@", buf, 0x26u);
      }

      AppC3DConfigRelease();
      delegate = [(ARTechnique *)self delegate];
      v24 = ARErrorWithCodeAndUserInfo(151, 0);
      [delegate technique:self didFailWithError:v24];
    }

    else
    {
      AppC3DConfigSetMaxNumberCodesToTrack();
      v37 = *MEMORY[0x1E698AAE0];
      v25 = [MEMORY[0x1E696AD98] numberWithBool:prepareCopy];
      v38 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      appClipCodeTrackingOptions = self->_appClipCodeTrackingOptions;
      self->_appClipCodeTrackingOptions = v26;

      AppC3DCreate();
      AppC3DConfigRelease();
      AppC3DSetUpdateCallback();
      [(ARAppClipCodeTechnique *)self setPowerUsage:[(ARTechnique *)self powerUsage]];
      deterministicMode = [(ARAppClipCodeTechnique *)self deterministicMode];
      v29 = deterministicMode;
      v30 = _ARLogTechnique(deterministicMode);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
      if (v29)
      {
        if (v31)
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138543618;
          v40 = v33;
          v41 = 2048;
          selfCopy6 = self;
          _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: prepared for deterministic mode.", buf, 0x16u);
        }
      }

      else if (v31)
      {
        v34 = objc_opt_class();
        v35 = NSStringFromClass(v34);
        *buf = 138543618;
        v40 = v35;
        v41 = 2048;
        selfCopy6 = self;
        _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: prepared for non-deterministic mode.", buf, 0x16u);
      }

      self->_prepared = 1;
    }

    kdebug_trace();
  }
}

- (id)processData:(id)data
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v25.receiver = self;
    v25.super_class = ARAppClipCodeTechnique;
    v7 = [(ARImageBasedTechnique *)&v25 processData:dataCopy];
    goto LABEL_13;
  }

  v24.receiver = self;
  v24.super_class = ARAppClipCodeTechnique;
  v5 = [(ARImageBasedTechnique *)&v24 processData:dataCopy];
  v6 = dataCopy;
  v7 = v6;
  if (self->_prepared)
  {
    [v6 visionTransform];
    IsZero = ARMatrix4x4IsZero(v8, v9, v10, v11);
    objc_msgSend_timestamp(v7);
    if (!IsZero)
    {
      kdebug_trace();
      v29 = 0;
      memset(v28, 0, sizeof(v28));
      [v7 cameraIntrinsics];
      [v7 visionTransform];
      v21 = [ARAppClipCodeTechnique shouldRunCameraOrScannerPerformanceTestingMode:ARMatrix4x4RowMajorRotationAndTranslation(v27];
      [v7 pixelBuffer];
      objc_msgSend_timestamp(v7);
      if (v21)
      {
        AppC3DProcessCameraFrameData();
      }

      else
      {
        AppC3DProcess();
      }

      v22 = v7;

      goto LABEL_12;
    }

    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
    objc_msgSend_timestamp(v7);
    kdebug_trace();
  }

  else
  {
    objc_msgSend_timestamp(v6);
    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  }

  v13 = v7;
LABEL_12:

LABEL_13:

  return v7;
}

- (BOOL)deterministicMode
{
  v2 = [(NSDictionary *)self->_appClipCodeTrackingOptions objectForKey:*MEMORY[0x1E698AAE0]];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSDictionary *)self->_appClipCodeTrackingOptions isEqual:equalCopy[12]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setPowerUsage:(unint64_t)usage
{
  v19 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = ARAppClipCodeTechnique;
  [(ARTechnique *)&v10 setPowerUsage:?];
  if (self->_appClipCodeSession)
  {
    if (usage == 1)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2 * (usage == 2);
    }

    v6 = AppC3DSetPerformanceMode();
    v7 = _ARLogTechnique(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544130;
      v12 = v9;
      v13 = 2048;
      selfCopy = self;
      v15 = 2048;
      selfCopy2 = self;
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_1C241C000, v7, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: ARAppClipCodeTechnique(%p): Setting performance mode %i.", buf, 0x26u);
    }
  }
}

@end