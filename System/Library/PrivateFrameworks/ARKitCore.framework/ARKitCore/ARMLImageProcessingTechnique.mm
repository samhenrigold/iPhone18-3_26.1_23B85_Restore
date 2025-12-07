@interface ARMLImageProcessingTechnique
+ (BOOL)isSupported;
- ($C4732ECC957FA13B9B3DF4A51A95735B)espressoNetwork;
- ($F613A077D53D3D97A8E0FDF5BAE1891D)networkInputParams;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue inputTensorNames:(id)names outputTensorNames:(id)tensorNames networkInputScaleBeforeRotation:(CGSize)rotation networkFilePath:(id)path;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue inputTensorNames:(id)names outputTensorNames:(id)tensorNames networkInputScaleBeforeRotation:(CGSize)rotation networkFilePath:(id)path useEspressoZeroCopyOutput:(BOOL)output;
- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue networkInputScaleBeforeRotation:(CGSize)rotation delegateInference:(BOOL)inference;
- (BOOL)ARMLVerifyLoadedModelVersion:(id)version deviceName:(id)name major:(int)major minor:(int)minor;
- (BOOL)isBusy;
- (CGSize)allowedResamplingImageSize;
- (CGSize)networkInputScaleBeforeRotation;
- (NSString)networkVersionString;
- (id).cxx_construct;
- (id)_resampleImage:(id)image rotationOfResultTensor:(int64_t)tensor networkInputSize:(CGSize)size;
- (id)defaultEngineName;
- (id)networkModesForOrientation:(int64_t)orientation;
- (id)processData:(id)data;
- (id)processImageDataThroughNeuralNetwork:(id)network originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (int)bindInputBuffer:(unint64_t)buffer withImage:(id)image andOriginalImageData:(id)data rotationOfResultTensor:(int64_t)tensor;
- (int64_t)getDeviceOrientationFromImageData:(id)data;
- (void)_asynchronousProcessDownSampledImage:(id)image;
- (void)_asynchronousProcessEspressoTensor:(id)tensor;
- (void)_bindOutputTensor;
- (void)_runNeuralNetworkAndPushResult:(id)result originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (void)changeEspressoConfig:(id)config;
- (void)dealloc;
- (void)loadMLWithPath:(id)path networkMode:(id)mode;
- (void)prepare:(BOOL)prepare;
- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)timestamp;
- (void)waitForProcessingCompleteInDeterministicMode;
@end

@implementation ARMLImageProcessingTechnique

+ (BOOL)isSupported
{
  if (+[ARMLImageProcessingTechnique isSupported]::onceToken != -1)
  {
    +[ARMLImageProcessingTechnique isSupported];
  }

  return +[ARMLImageProcessingTechnique isSupported]::supported;
}

uint64_t __43__ARMLImageProcessingTechnique_isSupported__block_invoke()
{
  result = ARAppleNeuralEngine();
  +[ARMLImageProcessingTechnique isSupported]::supported = result;
  return result;
}

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue inputTensorNames:(id)names outputTensorNames:(id)tensorNames networkInputScaleBeforeRotation:(CGSize)rotation networkFilePath:(id)path useEspressoZeroCopyOutput:(BOOL)output
{
  outputCopy = output;
  height = rotation.height;
  width = rotation.width;
  queueCopy = queue;
  namesCopy = names;
  tensorNamesCopy = tensorNames;
  pathCopy = path;
  height = [(ARMLImageProcessingTechnique *)self initWithDispatchQueue:queueCopy inputTensorNames:namesCopy outputTensorNames:tensorNamesCopy networkInputScaleBeforeRotation:pathCopy networkFilePath:width, height];
  v20 = height;
  if (height)
  {
    [(ARMLImageProcessingTechnique *)height setUseEspressoZeroCopyOutput:outputCopy];
  }

  return v20;
}

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue networkInputScaleBeforeRotation:(CGSize)rotation delegateInference:(BOOL)inference
{
  height = rotation.height;
  width = rotation.width;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = ARMLImageProcessingTechnique;
  v11 = [(ARImageBasedTechnique *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_processingQueue, queue);
    v13 = dispatch_semaphore_create(1);
    processingSemaphore = v12->_processingSemaphore;
    v12->_processingSemaphore = v13;

    v12->_prepLock._os_unfair_lock_opaque = 0;
    v12->_lockedOrientation = -1;
    v12->_allowedResamplingImageSize = *MEMORY[0x1E695F060];
    v12->_delegateInference = inference;
    v12->_networkInputScaleBeforeRotation.width = width;
    v12->_networkInputScaleBeforeRotation.height = height;
  }

  return v12;
}

- (ARMLImageProcessingTechnique)initWithDispatchQueue:(id)queue inputTensorNames:(id)names outputTensorNames:(id)tensorNames networkInputScaleBeforeRotation:(CGSize)rotation networkFilePath:(id)path
{
  height = rotation.height;
  width = rotation.width;
  queueCopy = queue;
  namesCopy = names;
  tensorNamesCopy = tensorNames;
  pathCopy = path;
  height = [(ARMLImageProcessingTechnique *)self initWithDispatchQueue:queueCopy networkInputScaleBeforeRotation:width, height];
  v18 = height;
  if (height)
  {
    height->_espressoInputBufferTimestamp = 0.0;
    height->_espressoInputBufferLock._os_unfair_lock_opaque = 0;
    v19 = [namesCopy copy];
    inputTensorNames = v18->_inputTensorNames;
    v18->_inputTensorNames = v19;

    v21 = [tensorNamesCopy copy];
    outputTensorNames = v18->_outputTensorNames;
    v18->_outputTensorNames = v21;

    v23 = [pathCopy copy];
    networkFilePath = v18->_networkFilePath;
    v18->_networkFilePath = v23;

    v18->_bgraPixelBufferPool = 0;
    v18->_failedToLoadNetwork = 1;
    [(ARMLImageProcessingTechnique *)v18 setUseEspressoZeroCopyOutput:0];
  }

  return v18;
}

- (BOOL)ARMLVerifyLoadedModelVersion:(id)version deviceName:(id)name major:(int)major minor:(int)minor
{
  nameCopy = name;
  v10 = [version componentsSeparatedByString:@"."];
  v11 = v10;
  if (!v10 || [v10 count] != 3)
  {
    goto LABEL_10;
  }

  v12 = [v11 objectAtIndexedSubscript:1];
  intValue = [v12 intValue];

  v14 = [v11 objectAtIndexedSubscript:2];
  intValue2 = [v14 intValue];

  v16 = [v11 objectAtIndexedSubscript:0];
  v17 = [v16 isEqual:nameCopy];
  if (intValue == major)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 != 1)
  {

    goto LABEL_10;
  }

  if (intValue2 != minor)
  {
LABEL_10:
    v19 = 0;
    goto LABEL_11;
  }

  v19 = 1;
LABEL_11:

  return v19;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  bgraPixelBufferPool = self->_bgraPixelBufferPool;
  if (bgraPixelBufferPool)
  {
    CVPixelBufferPoolRelease(bgraPixelBufferPool);
    self->_bgraPixelBufferPool = 0;
  }

  begin = self->_espressoOutputBufferPools.__begin_;
  end = self->_espressoOutputBufferPools.__end_;
  while (begin != end)
  {
    if (*begin)
    {
      CVPixelBufferPoolRelease(*begin);
    }

    ++begin;
  }

  v6.receiver = self;
  v6.super_class = ARMLImageProcessingTechnique;
  [(ARMLImageProcessingTechnique *)&v6 dealloc];
}

- ($C4732ECC957FA13B9B3DF4A51A95735B)espressoNetwork
{
  p_espressoNetwork = &self->_espressoNetwork;
  plan = self->_espressoNetwork.plan;
  v4 = *&p_espressoNetwork->network_index;
  result.var1 = v4;
  result.var0 = plan;
  return result;
}

- (id)defaultEngineName
{
  defaultEngine = [(ARMLImageProcessingTechnique *)self defaultEngine];
  if (defaultEngine > 10005)
  {
    if (defaultEngine == 10006)
    {
      return @"ESPRESSO_ENGINE_ANE_RUNTIME_DIRECT";
    }

    if (defaultEngine != 10007)
    {
      if (defaultEngine == 0x7FFFFFFF)
      {
        return @"ESPRESSO_ENGINE_MAX_VAL";
      }

      return &stru_1F4208A80;
    }

    return @"ESPRESSO_ENGINE_ANE_RUNTIME";
  }

  else
  {
    if (!defaultEngine)
    {
      return @"ESPRESSO_ENGINE_CPU";
    }

    if (defaultEngine != 2)
    {
      if (defaultEngine == 5)
      {
        return @"ESPRESSO_ENGINE_MPS";
      }

      return &stru_1F4208A80;
    }

    return @"ESPRESSO_ENGINE_METAL";
  }
}

- (id)networkModesForOrientation:(int64_t)orientation
{
  v19 = *MEMORY[0x1E69E9840];
  if ((orientation - 3) >= 2)
  {
    if ((orientation - 1) < 2)
    {
      return @"portrait";
    }

    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARMLImageProcessingTechnique networkModesForOrientation:];
    }

    v6 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v7 = _ARLogGeneral(self);
    v8 = v7;
    if (v6 == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v13 = 138543874;
        v14 = v10;
        v15 = 2048;
        selfCopy2 = self;
        v17 = 2048;
        orientationCopy2 = orientation;
        _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Could not find a network config for the device orientation %ld", &v13, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = 138543874;
      v14 = v12;
      v15 = 2048;
      selfCopy2 = self;
      v17 = 2048;
      orientationCopy2 = orientation;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Could not find a network config for the device orientation %ld", &v13, 0x20u);
    }
  }

  return @"landscape";
}

- (NSString)networkVersionString
{
  v5 = *MEMORY[0x1E69E9840];
  [(ARMLImageProcessingTechnique *)self espressoNetwork:0];
  if (espresso_network_get_version())
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v4];
  }

  return v2;
}

- (void)loadMLWithPath:(id)path networkMode:(id)mode
{
  v74 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  modeCopy = mode;
  v8 = modeCopy;
  if (pathCopy)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v10 = [defaultManager fileExistsAtPath:pathCopy];

    if (v10)
    {
      v12 = _ARLogTechnique(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        defaultEngineName = [(ARMLImageProcessingTechnique *)self defaultEngineName];
        *buf = 138543874;
        v69 = v14;
        v70 = 2048;
        selfCopy9 = self;
        v72 = 2112;
        v73 = defaultEngineName;
        _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Setting up espresso engine '%@'.", buf, 0x20u);
      }

      [(ARMLImageProcessingTechnique *)self defaultEngine];
      context = espresso_create_context();
      self->_espressoContext = context;
      if (!context)
      {
        v17 = espresso_create_context();
        self->_espressoContext = v17;
        if (!v17)
        {
          self->_failedToLoadNetwork = 1;
          goto LABEL_30;
        }
      }

      self->_espressoPlan = espresso_create_plan();
      v18 = pathCopy;
      [(__CFString *)pathCopy UTF8String];
      if (espresso_plan_add_network())
      {
        self->_failedToLoadNetwork = 1;
        goto LABEL_30;
      }

      self->_failedToLoadNetwork = 0;
      networkVersionString = [(ARMLImageProcessingTechnique *)self networkVersionString];
      if (networkVersionString)
      {
        v39 = [(ARMLImageProcessingTechnique *)self isLoadedModelVersionCorrect:networkVersionString];
        v40 = v39;
        v41 = _ARLogTechnique(v39);
        v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
        if (v40)
        {
          if (v42)
          {
            v43 = objc_opt_class();
            v44 = NSStringFromClass(v43);
            *buf = 138543874;
            v69 = v44;
            v70 = 2048;
            selfCopy9 = self;
            v72 = 2112;
            v73 = networkVersionString;
            _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Version '%@'.", buf, 0x20u);
          }

          inputTensorNames = [(ARMLImageProcessingTechnique *)self inputTensorNames];
          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke;
          v67[3] = &unk_1E817C510;
          v67[4] = self;
          [inputTensorNames enumerateObjectsUsingBlock:v67];

          outputTensorNames = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          std::vector<espresso_buffer_t>::resize(&self->_espressoOutputTensors.__begin_, [outputTensorNames count]);

          outputTensorNames2 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          v48 = [outputTensorNames2 count];
          std::vector<__CVPixelBufferPool *>::resize(&self->_espressoOutputBufferPools.__begin_, v48, v49);

          outputTensorNames3 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
          v66[0] = MEMORY[0x1E69E9820];
          v66[1] = 3221225472;
          v66[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_36;
          v66[3] = &unk_1E817C510;
          v66[4] = self;
          [outputTensorNames3 enumerateObjectsUsingBlock:v66];

          v51 = espresso_plan_build();
          if (!v51)
          {
            [(ARMLImageProcessingTechnique *)self _bindOutputTensor];
            inputTensorNames2 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            std::vector<espresso_buffer_t>::resize(&self->_espressoInputTensors.__begin_, [inputTensorNames2 count]);

            inputTensorNames3 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            v65[0] = MEMORY[0x1E69E9820];
            v65[1] = 3221225472;
            v65[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_39;
            v65[3] = &unk_1E817C510;
            v65[4] = self;
            [inputTensorNames3 enumerateObjectsUsingBlock:v65];

            inputTensorNames4 = [(ARMLImageProcessingTechnique *)self inputTensorNames];
            v64[0] = MEMORY[0x1E69E9820];
            v64[1] = 3221225472;
            v64[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_41;
            v64[3] = &unk_1E817C510;
            v64[4] = self;
            [inputTensorNames4 enumerateObjectsUsingBlock:v64];

            outputTensorNames4 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_43;
            v63[3] = &unk_1E817C510;
            v63[4] = self;
            [outputTensorNames4 enumerateObjectsUsingBlock:v63];

            goto LABEL_47;
          }

          v52 = _ARLogTechnique(v51);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            v53 = objc_opt_class();
            v54 = NSStringFromClass(v53);
            *buf = 138543874;
            v69 = v54;
            v70 = 2048;
            selfCopy9 = self;
            v72 = 2080;
            v73 = "Could not build espresso plan.";
            _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
          }

LABEL_46:
          self->_failedToLoadNetwork = 1;
LABEL_47:

          goto LABEL_30;
        }

        if (v42)
        {
          v57 = objc_opt_class();
          v58 = NSStringFromClass(v57);
          *buf = 138543874;
          v69 = v58;
          v70 = 2048;
          selfCopy9 = self;
          v72 = 2080;
          v73 = "Version mismatch";
          _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
        }
      }

      else
      {
        v41 = _ARLogTechnique(0);
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v55 = objc_opt_class();
          v56 = NSStringFromClass(v55);
          *buf = 138543874;
          v69 = v56;
          v70 = 2048;
          selfCopy9 = self;
          v72 = 2080;
          v73 = "Failed to get espresso network version.";
          _os_log_impl(&dword_1C241C000, v41, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
        }
      }

      goto LABEL_46;
    }

    self->_failedToLoadNetwork = 1;
  }

  else
  {
    self->_failedToLoadNetwork = 1;
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARMLImageProcessingTechnique networkModesForOrientation:];
    }

    v19 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v20 = _ARLogTechnique(modeCopy);
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138543618;
        v69 = v23;
        v70 = 2048;
        selfCopy9 = self;
        _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Path to network is nil, check if network is added to spatial_splitting_network_mapping.plist file.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138543618;
      v69 = v25;
      v70 = 2048;
      selfCopy9 = self;
      _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Path to network is nil, check if network is added to spatial_splitting_network_mapping.plist file.", buf, 0x16u);
    }
  }

  if (ARShouldUseLogTypeError(void)::onceToken != -1)
  {
    [ARMLImageProcessingTechnique loadMLWithPath:networkMode:];
  }

  v26 = ARShouldUseLogTypeError(void)::internalOSVersion;
  v27 = _ARLogTechnique(v11);
  v28 = v27;
  if (v26 == 1)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *buf = 138543874;
      v69 = v30;
      v70 = 2048;
      selfCopy9 = self;
      v72 = 2112;
      v73 = pathCopy;
      _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to load model from path '%@'", buf, 0x20u);
    }
  }

  else if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v31 = objc_opt_class();
    v32 = NSStringFromClass(v31);
    *buf = 138543874;
    v69 = v32;
    v70 = 2048;
    selfCopy9 = self;
    v72 = 2112;
    v73 = pathCopy;
    _os_log_impl(&dword_1C241C000, v28, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to load model from path '%@'", buf, 0x20u);
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v34 = dictionary;
  if (pathCopy)
  {
    v35 = pathCopy;
  }

  else
  {
    v35 = @"<nil>";
  }

  [dictionary setObject:v35 forKeyedSubscript:*MEMORY[0x1E696A368]];
  delegate = [(ARTechnique *)self delegate];
  v37 = ARErrorWithCodeAndUserInfo(1004, v34);
  [delegate technique:self didFailWithError:v37];

LABEL_30:
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 UTF8String];
  v4 = espresso_network_declare_input();
  if (v4)
  {
    v5 = _ARLogTechnique(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = 138543874;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2080;
      v14 = "Failure to declare input tensor";
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v9, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_36(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 UTF8String];
  v4 = espresso_network_declare_output();
  if (v4)
  {
    v5 = _ARLogTechnique(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = 138543874;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2080;
      v14 = "Failure to declare output tensor";
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v9, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_39(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) prepareBindInputBuffer:a3 withName:a2];
  if (v4)
  {
    v5 = _ARLogTechnique(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = 138543874;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2080;
      v14 = "Failure to bind input tensor";
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v9, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_41(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  [v3 UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v5 = _ARLogTechnique(blob_dimensions);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = 138543874;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2080;
      v14 = "Failure to determine input tensor shape";
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v9, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

void __59__ARMLImageProcessingTechnique_loadMLWithPath_networkMode___block_invoke_43(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  [v3 UTF8String];
  blob_dimensions = espresso_network_query_blob_dimensions();
  if (blob_dimensions)
  {
    v5 = _ARLogTechnique(blob_dimensions);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = 138543874;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2080;
      v14 = "Failure to determine output tensor shape";
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v9, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

- (void)_bindOutputTensor
{
  outputTensorNames = [(ARMLImageProcessingTechnique *)self outputTensorNames];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__ARMLImageProcessingTechnique__bindOutputTensor__block_invoke;
  v4[3] = &unk_1E817C510;
  v4[4] = self;
  [outputTensorNames enumerateObjectsUsingBlock:v4];
}

void __49__ARMLImageProcessingTechnique__bindOutputTensor__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if ([*(a1 + 32) useEspressoZeroCopyOutput])
  {
    v6 = [*(a1 + 32) outputTensorNames];
    v7 = [v6 objectAtIndexedSubscript:a3];
    [v7 UTF8String];
    v8 = espresso_network_bind_buffer();

    if (v8)
    {
      v10 = _ARLogTechnique(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = *(a1 + 32);
        *buf = 138543874;
        v62 = v12;
        v63 = 2048;
        v64 = v13;
        v65 = 2080;
        v66 = "Failure to bind output tensor";
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
      }

LABEL_10:
      *(*(a1 + 32) + 233) = 1;
      goto LABEL_26;
    }

    pixelBufferOut = 0;
    v19 = *v73;
    v71 = *MEMORY[0x1E6966120];
    v72 = MEMORY[0x1E695E0F8];
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
    v21 = CVPixelBufferCreateWithIOSurface(*MEMORY[0x1E695E480], v19, v20, &pixelBufferOut);
    IOSurface = CVPixelBufferGetIOSurface(pixelBufferOut);
    if (!IOSurface)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARMLImageProcessingTechnique loadMLWithPath:networkMode:];
      }

      v23 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v24 = _ARLogTechnique(IOSurface);
      v25 = v24;
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          v28 = *(a1 + 32);
          v29 = objc_opt_class();
          v30 = NSStringFromClass(v29);
          v31 = *(a1 + 32);
          *buf = 138544130;
          v62 = v27;
          v63 = 2048;
          v64 = v28;
          v65 = 2112;
          v66 = v30;
          v67 = 2048;
          v68 = v31;
          _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ (%p): Could not get IOSurface", buf, 0x2Au);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        v34 = *(a1 + 32);
        v35 = objc_opt_class();
        v36 = NSStringFromClass(v35);
        v37 = *(a1 + 32);
        *buf = 138544130;
        v62 = v33;
        v63 = 2048;
        v64 = v34;
        v65 = 2112;
        v66 = v36;
        v67 = 2048;
        v68 = v37;
        _os_log_impl(&dword_1C241C000, v25, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ (%p): Could not get IOSurface", buf, 0x2Au);
      }
    }

    if (v21)
    {
      if (ARShouldUseLogTypeError(void)::onceToken != -1)
      {
        [ARMLImageProcessingTechnique loadMLWithPath:networkMode:];
      }

      v44 = ARShouldUseLogTypeError(void)::internalOSVersion;
      v45 = _ARLogTechnique(IOSurface);
      v46 = v45;
      if (v44 == 1)
      {
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          v47 = objc_opt_class();
          v48 = NSStringFromClass(v47);
          v49 = *(a1 + 32);
          v50 = objc_opt_class();
          v51 = NSStringFromClass(v50);
          v52 = *(a1 + 32);
          *buf = 138544386;
          v62 = v48;
          v63 = 2048;
          v64 = v49;
          v65 = 2112;
          v66 = v51;
          v67 = 2048;
          v68 = v52;
          v69 = 1024;
          v70 = v21;
          _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: %@ (%p): Could not create CVPixelBuffer for neural network: %d", buf, 0x30u);
        }
      }

      else if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        v55 = *(a1 + 32);
        v56 = objc_opt_class();
        v57 = NSStringFromClass(v56);
        v58 = *(a1 + 32);
        *buf = 138544386;
        v62 = v54;
        v63 = 2048;
        v64 = v55;
        v65 = 2112;
        v66 = v57;
        v67 = 2048;
        v68 = v58;
        v69 = 1024;
        v70 = v21;
        _os_log_impl(&dword_1C241C000, v46, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: %@ (%p): Could not create CVPixelBuffer for neural network: %d", buf, 0x30u);
      }

      exception = __cxa_allocate_exception(8uLL);
      *exception = "Error: Could not create CVPixelBuffer for neural network";
      __cxa_throw(exception, MEMORY[0x1E69E53D8], 0);
    }

    v38 = v5;
    [v5 UTF8String];
    v39 = espresso_network_bind_direct_cvpixelbuffer();
    if (v39)
    {
      v40 = _ARLogTechnique(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        v41 = objc_opt_class();
        v42 = NSStringFromClass(v41);
        v43 = *(a1 + 32);
        *buf = 138543874;
        v62 = v42;
        v63 = 2048;
        v64 = v43;
        v65 = 2080;
        v66 = "Failure to bind direct cvpixelbuffer output";
        _os_log_impl(&dword_1C241C000, v40, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
      }
    }

    CVPixelBufferRelease(pixelBufferOut);
  }

  else
  {
    [v5 UTF8String];
    v14 = espresso_network_bind_buffer();
    if (v14)
    {
      v15 = _ARLogTechnique(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v18 = *(a1 + 32);
        *v73 = 138543874;
        *&v73[4] = v17;
        v74 = 2048;
        v75 = v18;
        v76 = 2080;
        v77 = "Failure to bind output tensor";
        _os_log_impl(&dword_1C241C000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", v73, 0x20u);
      }

      goto LABEL_10;
    }
  }

LABEL_26:
}

- (void)changeEspressoConfig:(id)config
{
  v22 = *MEMORY[0x1E69E9840];
  configCopy = config;
  previous_network_configuration = self->_previous_network_configuration;
  if (previous_network_configuration == configCopy || [(NSString *)previous_network_configuration isEqualToString:configCopy])
  {
    goto LABEL_3;
  }

  [(ARMLImageProcessingTechnique *)self _startLoadingMLModelSignpost];
  espresso_plan_build_clean();
  [(NSString *)configCopy UTF8String];
  v7 = espresso_network_select_configuration();
  if (v7)
  {
    v8 = _ARLogTechnique(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543874;
      v17 = v10;
      v18 = 2048;
      selfCopy2 = self;
      v20 = 2080;
      v21 = "Can't set mode";
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
    }

LABEL_11:

    self->_failedToLoadNetwork = 1;
    goto LABEL_12;
  }

  v11 = espresso_plan_build();
  if (v11)
  {
    v8 = _ARLogTechnique(v11);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543874;
      v17 = v13;
      v18 = 2048;
      selfCopy2 = self;
      v20 = 2080;
      v21 = "Could not rebuild espresso plan";
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
    }

    goto LABEL_11;
  }

  [(ARMLImageProcessingTechnique *)self _bindOutputTensor];
  inputTensorNames = [(ARMLImageProcessingTechnique *)self inputTensorNames];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __53__ARMLImageProcessingTechnique_changeEspressoConfig___block_invoke;
  v15[3] = &unk_1E817C510;
  v15[4] = self;
  [inputTensorNames enumerateObjectsUsingBlock:v15];

  [(ARMLImageProcessingTechnique *)self _endLoadingMLModelSignpost];
  [(ARMLImageProcessingTechnique *)self networkModeDidChange:self->_previous_network_configuration toMode:configCopy];
LABEL_3:
  objc_storeStrong(&self->_previous_network_configuration, config);
LABEL_12:
}

void __53__ARMLImageProcessingTechnique_changeEspressoConfig___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) prepareBindInputBuffer:a3 withName:a2];
  if (v4)
  {
    v5 = _ARLogTechnique(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      v8 = *(a1 + 32);
      v9 = 138543874;
      v10 = v7;
      v11 = 2048;
      v12 = v8;
      v13 = 2080;
      v14 = "Failure to bind input tensor";
      _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", &v9, 0x20u);
    }

    *(*(a1 + 32) + 233) = 1;
  }
}

- (void)prepare:(BOOL)prepare
{
  prepareCopy = prepare;
  os_unfair_lock_lock(&self->_prepLock);
  self->_deterministic = prepareCopy;
  if (self->_hasBegunPrep)
  {

    os_unfair_lock_unlock(&self->_prepLock);
  }

  else
  {
    self->_hasBegunPrep = 1;
    os_unfair_lock_unlock(&self->_prepLock);
    [(ARMLImageProcessingTechnique *)self _prepareOnce:prepareCopy];
    if (!self->_delegateInference)
    {
      [(ARMLImageProcessingTechnique *)self _startLoadingMLModelSignpost];
      [(ARMLImageProcessingTechnique *)self loadMLWithPath:self->_networkFilePath networkMode:0];
      previous_network_configuration = self->_previous_network_configuration;
      self->_previous_network_configuration = 0;

      [(ARMLImageProcessingTechnique *)self _endLoadingMLModelSignpost];
      v6 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
      v7 = -[ARMLImageProcessingTechnique networkModesForOrientation:](self, "networkModesForOrientation:", [v6 currentOrientation]);
      [(ARMLImageProcessingTechnique *)self changeEspressoConfig:v7];
    }

    [(ARMLImageProcessingTechnique *)self setPrepComplete:1];
  }
}

- (void)waitForProcessingCompleteInDeterministicMode
{
  if (self->_deterministic)
  {
    dispatch_sync(self->_processingQueue, &__block_literal_global_58);
  }
}

- (id)processData:(id)data
{
  dataCopy = data;
  v7.receiver = self;
  v7.super_class = ARMLImageProcessingTechnique;
  v5 = [(ARImageBasedTechnique *)&v7 processData:dataCopy];
  if ([(ARMLImageProcessingTechnique *)self prepComplete])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(ARMLImageProcessingTechnique *)self requiredSensorDataTypes]& 1) != 0)
    {
      [(ARMLImageProcessingTechnique *)self _asynchronousProcessDownSampledImage:dataCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(ARMLImageProcessingTechnique *)self _asynchronousProcessEspressoTensor:dataCopy];
      }
    }

    [(ARMLImageProcessingTechnique *)self waitForProcessingCompleteInDeterministicMode];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(ARMLImageProcessingTechnique *)self requiredSensorDataTypes]& 1) != 0)
    {
      objc_msgSend_timestamp(dataCopy);
      [(ARMLImageProcessingTechnique *)self pushEmptyResultOnAsynchronousQueueForTimestamp:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_msgSend_timestamp(dataCopy);
      [(ARMLImageProcessingTechnique *)self pushEmptyResultOnAsynchronousQueueForTimestamp:?];
    }
  }

  return dataCopy;
}

- (void)_asynchronousProcessDownSampledImage:(id)image
{
  v63 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  latestResizedUltraWideImageData3 = imageCopy;
  if ([(ARMLImageProcessingTechnique *)self shouldUseSynchronizedUltraWide])
  {
    latestResizedUltraWideImageData = [imageCopy latestResizedUltraWideImageData];

    latestResizedUltraWideImageData3 = imageCopy;
    if (latestResizedUltraWideImageData)
    {
      latestResizedUltraWideImageData2 = [imageCopy latestResizedUltraWideImageData];

      if (latestResizedUltraWideImageData2)
      {
        latestResizedUltraWideImageData3 = [imageCopy latestResizedUltraWideImageData];
        originalImageData = imageCopy;
      }

      else
      {
        originalImageData = [imageCopy originalImageData];
        objc_msgSend_timestamp(originalImageData);
        [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
        latestResizedUltraWideImageData3 = imageCopy;
      }
    }
  }

  p_networkInputScaleBeforeRotation = &self->_networkInputScaleBeforeRotation;
  width = self->_networkInputScaleBeforeRotation.width;
  height = self->_networkInputScaleBeforeRotation.height;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  downScalingResults = [latestResizedUltraWideImageData3 downScalingResults];
  v13 = [downScalingResults countByEnumeratingWithState:&v56 objects:v62 count:16];
  if (!v13)
  {

LABEL_28:
    v25 = p_networkInputScaleBeforeRotation->width;
    v26 = self->_networkInputScaleBeforeRotation.height;
    if (-[ARMLImageProcessingTechnique networkProvidesConfigurationsForDeviceOrientation](self, "networkProvidesConfigurationsForDeviceOrientation") && ([latestResizedUltraWideImageData3 rotationOfResultTensor] == 90 || objc_msgSend(latestResizedUltraWideImageData3, "rotationOfResultTensor") == -90))
    {
      v26 = p_networkInputScaleBeforeRotation->width;
      v25 = self->_networkInputScaleBeforeRotation.height;
    }

    downScalingResults2 = [latestResizedUltraWideImageData3 downScalingResults];
    firstObject = [downScalingResults2 firstObject];
    v14 = -[ARMLImageProcessingTechnique _resampleImage:rotationOfResultTensor:networkInputSize:](self, "_resampleImage:rotationOfResultTensor:networkInputSize:", firstObject, [latestResizedUltraWideImageData3 rotationOfResultTensor], v25, v26);

    goto LABEL_33;
  }

  v14 = 0;
  v15 = *v57;
  do
  {
    for (i = 0; i != v13; ++i)
    {
      if (*v57 != v15)
      {
        objc_enumerationMutation(downScalingResults);
      }

      v17 = *(*(&v56 + 1) + 8 * i);
      [v17 imageResolution];
      if (v19 != p_networkInputScaleBeforeRotation->width || v18 != self->_networkInputScaleBeforeRotation.height)
      {
        [v17 imageResolution];
        v23 = v22 == height && v21 == width;
        if (!v23 || ![(ARMLImageProcessingTechnique *)self networkProvidesConfigurationsForDeviceOrientation])
        {
          continue;
        }
      }

      v24 = v17;

      v14 = v24;
    }

    v13 = [downScalingResults countByEnumeratingWithState:&v56 objects:v62 count:16];
  }

  while (v13);

  if (!v14)
  {
    goto LABEL_28;
  }

LABEL_33:
  rotationOfResultTensor = [latestResizedUltraWideImageData3 rotationOfResultTensor];
  [v14 regionOfInterest];
  v31 = v30;
  v33 = v32;
  v34 = objc_opt_new();
  objc_msgSend_timestamp(latestResizedUltraWideImageData3);
  [v34 setTimestamp:?];
  if (-[ARMLImageProcessingTechnique shouldUseSynchronizedUltraWide](self, "shouldUseSynchronizedUltraWide") && [v14 undistortedPixelBuffer] || objc_msgSend(v14, "undistortedPixelBuffer"))
  {
    undistortedPixelBuffer = [v14 undistortedPixelBuffer];
  }

  else
  {
    undistortedPixelBuffer = [v14 pixelBuffer];
  }

  [v34 setPixelBuffer:undistortedPixelBuffer];
  v60 = @"croppedRect";
  v36 = MEMORY[0x1E696B098];
  [v14 cropRegion];
  v55[0] = v37;
  v55[1] = v38;
  v55[2] = v39;
  v55[3] = v40;
  v41 = [v36 valueWithBytes:v55 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  v61 = v41;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  [v34 setMetaData:v42];

  originalImageData2 = [latestResizedUltraWideImageData3 originalImageData];
  if (dispatch_semaphore_wait(self->_processingSemaphore, 0))
  {
    objc_msgSend_timestamp(latestResizedUltraWideImageData3);
    kdebug_trace();
  }

  else
  {
    dispatch_semaphore_signal(self->_processingSemaphore);
  }

  os_unfair_lock_lock(&self->_espressoInputBufferLock);
  objc_msgSend_timestamp(originalImageData2);
  self->_espressoInputBufferTimestamp = v44;
  os_unfair_lock_unlock(&self->_espressoInputBufferLock);
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __69__ARMLImageProcessingTechnique__asynchronousProcessDownSampledImage___block_invoke;
  v49[3] = &unk_1E817C538;
  objc_copyWeak(v53, &location);
  v50 = originalImageData2;
  v51 = v34;
  v52 = latestResizedUltraWideImageData3;
  v53[1] = v31;
  v53[2] = v33;
  v53[3] = rotationOfResultTensor;
  v46 = latestResizedUltraWideImageData3;
  v47 = v34;
  v48 = originalImageData2;
  dispatch_async(processingQueue, v49);

  objc_destroyWeak(v53);
  objc_destroyWeak(&location);
}

void __69__ARMLImageProcessingTechnique__asynchronousProcessDownSampledImage___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    objc_msgSend_timestamp(*(a1 + 32));
    v4 = v3;
    os_unfair_lock_lock(v10 + 30);
    v5 = *(v10 + 14);
    if (v5 == 0.0 || v4 == v5)
    {
      kdebug_trace();
      *(v10 + 14) = 0;
      os_unfair_lock_unlock(v10 + 30);
      dispatch_semaphore_wait(*(v10 + 12), 0xFFFFFFFFFFFFFFFFLL);
      v7 = *(a1 + 40);
      v8 = [*(a1 + 48) originalImageData];
      [v10 _runNeuralNetworkAndPushResult:v7 originalImageData:v8 regionOfInterest:*(a1 + 80) rotationOfResultTensor:{*(a1 + 64), *(a1 + 72)}];

      WeakRetained = v10;
    }

    else
    {
      os_unfair_lock_unlock(v10 + 30);
      kdebug_trace();
      if ([v10 shouldUseSynchronizedUltraWide])
      {
        [*(a1 + 32) timestampOfSynchronizedWideImageData];
        v4 = v9;
      }

      [v10 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:v4];
      WeakRetained = v10;
    }
  }
}

- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)timestamp
{
  objc_initWeak(&location, self);
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__ARMLImageProcessingTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke;
  block[3] = &unk_1E817C560;
  objc_copyWeak(v7, &location);
  v7[1] = *&timestamp;
  dispatch_async(processingQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __79__ARMLImageProcessingTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pushResultData:MEMORY[0x1E695E0F0] forTimestamp:*(a1 + 40)];
}

- (void)_runNeuralNetworkAndPushResult:(id)result originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  resultCopy = result;
  dataCopy = data;
  objc_msgSend_timestamp(dataCopy);
  [(ARMLImageProcessingTechnique *)self _startMLProcessingSignpostWithTimestamp:?];
  height = [(ARMLImageProcessingTechnique *)self runNeuralNetworkWithImageData:resultCopy originalImageData:dataCopy regionOfInterest:tensor rotationOfResultTensor:width, height];
  dispatch_semaphore_signal(self->_processingSemaphore);
  if ([(ARMLImageProcessingTechnique *)self shouldUseSynchronizedUltraWide])
  {
    [dataCopy timestampOfSynchronizedWideImageData];
  }

  else
  {
    objc_msgSend_timestamp(dataCopy);
  }

  if (height)
  {
    v13 = height;
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  [(ARImageBasedTechnique *)self pushResultData:v13 forTimestamp:?];
  objc_msgSend_timestamp(dataCopy);
  [(ARMLImageProcessingTechnique *)self _endMLProcessingSignpostWithTimestamp:?];
}

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v17[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  imageDataCopy = imageData;
  height = [(ARMLImageProcessingTechnique *)self processImageDataThroughNeuralNetwork:dataCopy originalImageData:imageDataCopy regionOfInterest:tensor rotationOfResultTensor:width, height];
  v14 = height;
  if (height)
  {
    v17[0] = height;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  else
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (void)_asynchronousProcessEspressoTensor:(id)tensor
{
  tensorCopy = tensor;
  if (self->_failedToLoadNetwork || dispatch_semaphore_wait(self->_processingSemaphore, 0))
  {
    objc_msgSend_timestamp(tensorCopy);
    [(ARImageBasedTechnique *)self pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  }

  else
  {
    v5 = self->_processingSemaphore;
    objc_initWeak(&location, self);
    processingQueue = self->_processingQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __67__ARMLImageProcessingTechnique__asynchronousProcessEspressoTensor___block_invoke;
    v8[3] = &unk_1E817C350;
    objc_copyWeak(&v11, &location);
    v9 = v5;
    v10 = tensorCopy;
    v7 = v5;
    dispatch_async(processingQueue, v8);

    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __67__ARMLImageProcessingTechnique__asynchronousProcessEspressoTensor___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    objc_msgSend_timestamp(*(a1 + 40));
    [(dispatch_semaphore_t *)WeakRetained _startMLProcessingSignpostWithTimestamp:?];
    v3 = [(dispatch_semaphore_t *)WeakRetained processEspressoTensor:*(a1 + 40)];
    dispatch_semaphore_signal(WeakRetained[12]);
    if (v3)
    {
      v5[0] = v3;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
    }

    else
    {
      v4 = MEMORY[0x1E695E0F0];
    }

    objc_msgSend_timestamp(*(a1 + 40));
    [(dispatch_semaphore_t *)WeakRetained pushResultData:v4 forTimestamp:?];
    if (v3)
    {
    }

    objc_msgSend_timestamp(*(a1 + 40));
    [(dispatch_semaphore_t *)WeakRetained _endMLProcessingSignpostWithTimestamp:?];
  }

  else
  {
    dispatch_semaphore_signal(*(a1 + 32));
  }
}

- (id)_resampleImage:(id)image rotationOfResultTensor:(int64_t)tensor networkInputSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  imageCopy = image;
  v9 = ARCreateCVPixelBufferFromPool(&self->_bgraPixelBufferPool, 1111970369, self, @"Down Scale Output", width, height);
  if (v9)
  {
    CVPixelBufferLockBaseAddress([imageCopy pixelBuffer], 0);
    CVPixelBufferLockBaseAddress(v9, 0);
    memset(&src, 0, sizeof(src));
    ARWrapCVPixelBufferVImage([imageCopy pixelBuffer], &src.data);
    memset(&v27, 0, sizeof(v27));
    ARWrapCVPixelBufferVImage(v9, &v27.data);
    vImageScale_ARGB8888(&src, &v27, 0, 0x10u);
    CVPixelBufferUnlockBaseAddress(v9, 0);
    CVPixelBufferUnlockBaseAddress([imageCopy pixelBuffer], 0);
    [imageCopy imageResolution];
    v11 = v10;
    [imageCopy imageResolution];
    v13 = v12;
    [imageCopy regionOfInterest];
    v15 = v14;
    [imageCopy regionOfInterest];
    v17 = v16;
    v18 = [ARMLImageDownScalingResult alloc];
    [imageCopy cropRegion];
    v20 = v19;
    v22 = v21;
    *&v19 = width / v11;
    *&v21 = height / v13;
    v25 = [(ARMLImageDownScalingResult *)v18 initWithPixelBuffer:v9 regionOfInterest:v15 * *&v19 cropRegion:v17 * *&v21, v20, v22, v23, v24];
    CVPixelBufferRelease(v9);
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- ($F613A077D53D3D97A8E0FDF5BAE1891D)networkInputParams
{
  *&retstr->var4 = 0;
  *&retstr->var0 = xmmword_1C25C89C8;
  return self;
}

- (int)bindInputBuffer:(unint64_t)buffer withImage:(id)image andOriginalImageData:(id)data rotationOfResultTensor:(int64_t)tensor
{
  imageCopy = image;
  v9 = [(NSArray *)self->_inputTensorNames objectAtIndexedSubscript:buffer];
  [v9 UTF8String];
  [imageCopy pixelBuffer];
  v10 = espresso_network_bind_direct_cvpixelbuffer();

  return v10;
}

- (id)processImageDataThroughNeuralNetwork:(id)network originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v88 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  dataCopy = data;
  v12 = 0;
  if (networkCopy && !self->_failedToLoadNetwork)
  {
    v74 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:dataCopy];
    v75 = [(ARMLImageProcessingTechnique *)self networkModesForOrientation:?];
    [(ARMLImageProcessingTechnique *)self changeEspressoConfig:?];
    CVPixelBufferLockBaseAddress([networkCopy pixelBuffer], 0);
    objc_msgSend_timestamp(networkCopy);
    [(ARMLImageProcessingTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
    objc_msgSend_timestamp(networkCopy);
    v14 = v13;
    cameraType = [dataCopy cameraType];
    v16 = [cameraType isEqualToString:*MEMORY[0x1E6986948]];
    v17 = CVPixelBufferGetWidth([networkCopy pixelBuffer]);
    -[ARMLImageProcessingTechnique _captureMLRunNetworkInputImageData:cameraType:imageWidth:imageHeight:](self, "_captureMLRunNetworkInputImageData:cameraType:imageWidth:imageHeight:", v16, v17, CVPixelBufferGetHeight([networkCopy pixelBuffer]), v14);

    __p = 0;
    v78 = 0;
    v79 = 0;
    if ([(ARMLImageProcessingTechnique *)self useEspressoZeroCopyOutput])
    {
      v18 = 0;
      for (i = 0; ; ++i)
      {
        outputTensorNames = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v21 = i < [outputTensorNames count];

        if (!v21)
        {
          break;
        }

        objc_msgSend_timestamp(networkCopy);
        kdebug_trace();
        v22 = [(NSArray *)self->_outputTensorNames objectAtIndexedSubscript:i];
        v23 = v22;
        [v22 UTF8String];
        blob_dimensions = espresso_network_query_blob_dimensions();

        if (blob_dimensions)
        {
          v26 = _ARLogTechnique(v25);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            *buf = 138543874;
            v81 = v28;
            v82 = 2048;
            selfCopy2 = self;
            v84 = 2080;
            v85 = "Failure to query network output dimensions";
            _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
          }
        }

        v29 = *v86;
        v30 = *&v86[8];
        v31 = *&v86[16];
        kdebug_trace();
        v32 = ARCreateCVPixelBufferFromPool(&self->_espressoOutputBufferPools.__begin_[v18], 1278226536, self, @"Espresso Output", v29, (v31 * v30));
        kdebug_trace();
        v33 = v78;
        if (v78 >= v79)
        {
          v35 = (v78 - __p) >> 3;
          if ((v35 + 1) >> 61)
          {
            _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE20__throw_length_errorB8ne200100Ev();
          }

          v36 = (v79 - __p) >> 2;
          if (v36 <= v35 + 1)
          {
            v36 = v35 + 1;
          }

          if (v79 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v36;
          }

          if (v37)
          {
            std::allocator<__CVPixelBufferPool *>::allocate_at_least[abi:ne200100](&__p, v37);
          }

          *(8 * v35) = v32;
          v34 = 8 * v35 + 8;
          v38 = (8 * v35 - (v78 - __p));
          memcpy(v38, __p, v78 - __p);
          v39 = __p;
          __p = v38;
          v78 = v34;
          v79 = 0;
          if (v39)
          {
            operator delete(v39);
          }
        }

        else
        {
          *v78 = v32;
          v34 = (v33 + 8);
        }

        v78 = v34;
        outputTensorNames2 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v41 = [outputTensorNames2 objectAtIndexedSubscript:i];
        v42 = v41;
        [v41 UTF8String];
        v43 = espresso_network_bind_direct_cvpixelbuffer();

        if (v43)
        {
          v45 = _ARLogTechnique(v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v46 = objc_opt_class();
            v47 = NSStringFromClass(v46);
            *buf = 138543874;
            v81 = v47;
            v82 = 2048;
            selfCopy2 = self;
            v84 = 2080;
            v85 = "Failure to bind direct cvpixelbuffer output";
            _os_log_impl(&dword_1C241C000, v45, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", buf, 0x20u);
          }
        }

        kdebug_trace();
        ++v18;
      }
    }

    for (j = 0; ; ++j)
    {
      inputTensorNames = [(ARMLImageProcessingTechnique *)self inputTensorNames];
      v50 = j < [inputTensorNames count];

      if (!v50)
      {
        break;
      }

      if ([(ARMLImageProcessingTechnique *)self bindInputBuffer:j withImage:networkCopy andOriginalImageData:dataCopy rotationOfResultTensor:tensor])
      {
        objc_msgSend_timestamp(networkCopy);
        v55 = [(ARMLImageProcessingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
        if (ARShouldUseLogTypeError(void)::onceToken != -1)
        {
          [ARMLImageProcessingTechnique loadMLWithPath:networkMode:];
        }

        v56 = ARShouldUseLogTypeError(void)::internalOSVersion;
        v57 = _ARLogTechnique(v55);
        v58 = v57;
        if (v56 == 1)
        {
          if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
          {
            v59 = objc_opt_class();
            v60 = NSStringFromClass(v59);
            *v86 = 138543874;
            *&v86[4] = v60;
            *&v86[12] = 2048;
            *&v86[14] = self;
            *&v86[22] = 2048;
            v87 = j;
            _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to bind input buffer for index: '%lu'.", v86, 0x20u);
          }
        }

        else if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
        {
          v61 = objc_opt_class();
          v62 = NSStringFromClass(v61);
          *v86 = 138543874;
          *&v86[4] = v62;
          *&v86[12] = 2048;
          *&v86[14] = self;
          *&v86[22] = 2048;
          v87 = j;
          _os_log_impl(&dword_1C241C000, v58, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to bind input buffer for index: '%lu'.", v86, 0x20u);
        }

        CVPixelBufferUnlockBaseAddress([networkCopy pixelBuffer], 0);
LABEL_43:
        v12 = 0;
        goto LABEL_44;
      }
    }

    v51 = espresso_plan_execute_sync();
    if (v51)
    {
      v52 = _ARLogTechnique(v51);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        *v86 = 138543874;
        *&v86[4] = v54;
        *&v86[12] = 2048;
        *&v86[14] = self;
        *&v86[22] = 2080;
        v87 = "Failure to run network.";
        _os_log_impl(&dword_1C241C000, v52, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: %s", v86, 0x20u);
      }

      CVPixelBufferUnlockBaseAddress([networkCopy pixelBuffer], 0);
      objc_msgSend_timestamp(networkCopy);
      [(ARMLImageProcessingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
      goto LABEL_43;
    }

    objc_msgSend_timestamp(networkCopy);
    [(ARMLImageProcessingTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
    CVPixelBufferUnlockBaseAddress([networkCopy pixelBuffer], 0);
    pixelBuffer = [networkCopy pixelBuffer];
    objc_msgSend_timestamp(networkCopy);
    v66 = v65;
    if (pixelBuffer)
    {
      v67 = CVPixelBufferGetWidth(pixelBuffer);
      v68 = CVPixelBufferGetHeight(pixelBuffer);
      v69 = v67;
      v70 = v68;
    }

    else
    {
      v69 = *MEMORY[0x1E695F060];
      v70 = *(MEMORY[0x1E695F060] + 8);
    }

    [(ARMLImageProcessingTechnique *)self _startMLCreateResultSignpostWithTimestamp:v74 orientation:v66 outputSize:v69, v70];
    if ([(ARMLImageProcessingTechnique *)self useEspressoZeroCopyOutput])
    {
      [ARMLImageProcessingTechnique createResultDataFromPixelBuffer:"createResultDataFromPixelBuffer:numberOfOutputTensors:imageDataForNeuralNetwork:inputImageData:rotationNeeded:regionOfInterest:" numberOfOutputTensors:width imageDataForNeuralNetwork:height inputImageData:? rotationNeeded:? regionOfInterest:?];
    }

    else
    {
      [ARMLImageProcessingTechnique createResultDataFromTensors:"createResultDataFromTensors:numberOfOutputTensors:imageDataForNeuralNetwork:inputImageData:rotationNeeded:regionOfInterest:" numberOfOutputTensors:width imageDataForNeuralNetwork:height inputImageData:? rotationNeeded:? regionOfInterest:?];
    }
    v12 = ;
    objc_msgSend_timestamp(networkCopy);
    [(ARMLImageProcessingTechnique *)self _endMLCreateResultSignpostWithTimestamp:?];
    if ([(ARMLImageProcessingTechnique *)self useEspressoZeroCopyOutput])
    {
      for (k = 0; ; ++k)
      {
        outputTensorNames3 = [(ARMLImageProcessingTechnique *)self outputTensorNames];
        v73 = k < [outputTensorNames3 count];

        if (!v73)
        {
          break;
        }

        CVPixelBufferRelease(*(__p + k));
      }
    }

LABEL_44:
    if (__p)
    {
      v78 = __p;
      operator delete(__p);
    }
  }

  return v12;
}

- (int64_t)getDeviceOrientationFromImageData:(id)data
{
  dataCopy = data;
  if (![dataCopy deviceOrientation])
  {
    lockedOrientation = self->_lockedOrientation;
    if ((lockedOrientation & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v6 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
    v7 = v6;
    if (v6)
    {
      lockedOrientation = [v6 currentOrientation];

      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = ARMLImageProcessingTechnique;
  lockedOrientation = [(ARImageBasedTechnique *)&v9 getDeviceOrientationFromImageData:dataCopy];
LABEL_6:

  return lockedOrientation;
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_processingSemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_processingSemaphore);
  }

  return v3 != 0;
}

- (CGSize)networkInputScaleBeforeRotation
{
  width = self->_networkInputScaleBeforeRotation.width;
  height = self->_networkInputScaleBeforeRotation.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)allowedResamplingImageSize
{
  width = self->_allowedResamplingImageSize.width;
  height = self->_allowedResamplingImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id).cxx_construct
{
  *(self + 21) = 0;
  *(self + 22) = 0;
  *(self + 20) = 0;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 26) = 0;
  return self;
}

@end