@interface AR2DSkeletonDetectionTechnique
+ (CGSize)inputDimensionsForMLModel;
- (AR2DSkeletonDetectionTechnique)init;
- (double)requiredTimeInterval;
- (id)processImageDataThroughNeuralNetwork:(id)network originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (void)_prepareOnce:(BOOL)once;
@end

@implementation AR2DSkeletonDetectionTechnique

+ (CGSize)inputDimensionsForMLModel
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E698A8E8]) initWithAlgorithmMode:1];
  v4 = v3;
  if (v3)
  {
    [MEMORY[0x1E698A908] inputDimensionsForModelWithABPKNetworkConfig:v3];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      +[AR2DSkeletonDetectionTechnique inputDimensionsForMLModel];
    }

    v9 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v10 = _ARLogGeneral(v3);
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v18 = 138543618;
        v19 = v13;
        v20 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to initialize config for ABPK 2D Detection module", &v18, 0x16u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v18 = 138543618;
      v19 = v15;
      v20 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to initialize config for ABPK 2D Detection module", &v18, 0x16u);
    }

    v6 = *MEMORY[0x1E695F060];
    v8 = *(MEMORY[0x1E695F060] + 8);
  }

  v16 = v6;
  v17 = v8;
  result.height = v17;
  result.width = v16;
  return result;
}

- (AR2DSkeletonDetectionTechnique)init
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = _ARLogGeneral(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *buf = 138543618;
    v12 = v5;
    v13 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Initializing", buf, 0x16u);
  }

  v6 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.abpk.humanpose2d", 0xFFFFFFFFLL);
  [objc_opt_class() inputDimensionsForMLModel];
  v10.receiver = self;
  v10.super_class = AR2DSkeletonDetectionTechnique;
  v7 = [(ARMLImageProcessingTechnique *)&v10 initWithDispatchQueue:v6 networkInputScaleBeforeRotation:1 delegateInference:?];
  v8 = v7;
  if (v7)
  {
    [(ARMLImageProcessingTechnique *)v7 setUseEspressoZeroCopyOutput:1];
  }

  return v8;
}

- (void)_prepareOnce:(BOOL)once
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E698A8E8]) initWithAlgorithmMode:1];
  v5 = [objc_alloc(MEMORY[0x1E698A8E0]) initWithNetworkConfig:v4];
  algorithm = self->_algorithm;
  self->_algorithm = v5;

  if (!self->_algorithm)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      +[AR2DSkeletonDetectionTechnique inputDimensionsForMLModel];
    }

    v8 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v9 = _ARLogGeneral(v7);
    v10 = v9;
    if (v8 == 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        *buf = 138543618;
        v21 = v12;
        v22 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: ABPK2DDetection could not be initialized!", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      v21 = v14;
      v22 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: ABPK2DDetection could not be initialized!", buf, 0x16u);
    }

    if (ARSkipCrashOnCrash(void)::onceToken != -1)
    {
      [AR2DSkeletonDetectionTechnique _prepareOnce:];
    }

    if ((ARSkipCrashOnCrash(void)::skipCrashOnCrash & 1) == 0)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ABPK2DDetection could not be initialized!"];
      v17 = [v15 stringWithFormat:@"ARCrash: %@", v16];

      v18 = v17;
      qword_1EBF41A28 = strdup([v17 UTF8String]);
      if (!ARInternalOSBuild(qword_1EBF41A28, v19))
      {
        abort();
      }

      ARAbortWithError(v17);
    }
  }
}

- (double)requiredTimeInterval
{
  if ([AR2DSkeletonDetectionTechnique requiredTimeInterval]::onceToken != -1)
  {
    [AR2DSkeletonDetectionTechnique requiredTimeInterval];
  }

  return *&[AR2DSkeletonDetectionTechnique requiredTimeInterval]::sTimeInterval;
}

uint64_t __54__AR2DSkeletonDetectionTechnique_requiredTimeInterval__block_invoke(uint64_t a1, uint64_t a2)
{
  result = ARIsANEVersionEqualOrPriorToH12(a1, a2);
  v3 = 0.008;
  if (result)
  {
    v3 = 0.016;
  }

  [AR2DSkeletonDetectionTechnique requiredTimeInterval]::sTimeInterval = *&v3;
  return result;
}

- (id)processImageDataThroughNeuralNetwork:(id)network originalImageData:(id)data regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  v35 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  dataCopy = data;
  objc_msgSend_timestamp(networkCopy);
  v11 = _ARLogGeneral([(AR2DSkeletonDetectionTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?]);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v31 = 138543618;
    v32 = v13;
    v33 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: processImageDataThroughNeuralNetwork", &v31, 0x16u);
  }

  v14 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:dataCopy];
  [dataCopy imageResolution];
  v16 = v15;
  v18 = v17;
  [networkCopy imageResolution];
  v21 = [objc_alloc(MEMORY[0x1E698A938]) initWithType:1 inputResolution:v16 outputResolution:{v18, v19, v20}];
  v22 = objc_alloc(MEMORY[0x1E698A940]);
  pixelBuffer = [networkCopy pixelBuffer];
  objc_msgSend_timestamp(networkCopy);
  v24 = [v22 initWithPixelBuffer:pixelBuffer timestamp:v14 abpkDeviceOrientation:v21 preprocessingParameters:?];
  v25 = objc_alloc(MEMORY[0x1E698A930]);
  pixelBuffer2 = [dataCopy pixelBuffer];
  objc_msgSend_timestamp(dataCopy);
  v27 = [v25 initWithPixelBuffer:pixelBuffer2 timestamp:?];
  algorithm = self->_algorithm;
  objc_msgSend_timestamp(v24);
  v29 = [(ABPK2DDetection *)algorithm runWithMLImage:v24 originalImage:v27 abpkOrientation:v14 atTimestamp:tensor rotationOfResultTensor:?];
  objc_msgSend_timestamp(networkCopy);
  [(AR2DSkeletonDetectionTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];

  return v29;
}

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  imageDataCopy = imageData;
  v13 = _ARLogGeneral(imageDataCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    *buf = 138543618;
    v22 = v15;
    v23 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: runNeuralNetworkWithImageData", buf, 0x16u);
  }

  if (self->_algorithm)
  {
    v16 = dataCopy == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = MEMORY[0x1E695E0F0];
  }

  else
  {
    objc_msgSend_timestamp(imageDataCopy);
    [(AR2DSkeletonDetectionTechnique *)self _startMLProcessingSignpostWithTimestamp:?];
    height = [(AR2DSkeletonDetectionTechnique *)self processImageDataThroughNeuralNetwork:dataCopy originalImageData:imageDataCopy regionOfInterest:tensor rotationOfResultTensor:width, height];
    objc_msgSend_timestamp(imageDataCopy);
    [(AR2DSkeletonDetectionTechnique *)self _endMLProcessingSignpostWithTimestamp:?];
    if (height)
    {
      v20 = height;
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    }

    else
    {
      v17 = MEMORY[0x1E695E0F0];
    }
  }

  return v17;
}

@end