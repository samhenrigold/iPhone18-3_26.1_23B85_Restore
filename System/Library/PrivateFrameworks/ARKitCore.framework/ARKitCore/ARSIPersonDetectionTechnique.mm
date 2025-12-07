@interface ARSIPersonDetectionTechnique
- (ARSIPersonDetectionTechnique)init;
- (BOOL)isLoadedModelVersionCorrect:(id)correct;
- (id)createResultDataFromAlgorithmOutput:(id)output imageDataForNeuralNetwork:(id)network inputImageData:(id)data rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)interest;
- (id)resultDataClasses;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (void)_prepareOnce:(BOOL)once;
- (void)dealloc;
@end

@implementation ARSIPersonDetectionTechnique

- (ARSIPersonDetectionTechnique)init
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.persondetectiontechnique", 0xFFFFFFFFLL);
  v11.receiver = self;
  v11.super_class = ARSIPersonDetectionTechnique;
  v4 = [(ARMLImageProcessingTechnique *)&v11 initWithDispatchQueue:v3 networkInputScaleBeforeRotation:1 delegateInference:256.0, 256.0];
  v5 = v4;
  if (v4)
  {
    v6 = _ARLogTechnique(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v13 = v8;
      v14 = 2048;
      v15 = v5;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running person detection technique by SceneIntelligence", buf, 0x16u);
    }

    v5->_lastTimestamp = -1.0;
    v5->_imageNetworkSize = vdupq_n_s64(0x4070000000000000uLL);
    v9 = [ARKitUserDefaults objectForKey:@"com.apple.arkit.personDetectionTechnique.mergeLargelyOverlappingBoundingBoxes" useCache:0];
    v5->_mergeLargelyOverlappingBoxes = [v9 BOOLValue];

    [(ARMLImageProcessingTechnique *)v5 setAllowedResamplingImageSize:256.0, 256.0];
  }

  return v5;
}

- (void)_prepareOnce:(BOOL)once
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = [objc_alloc(MEMORY[0x1E69C9CD8]) initWithComputeEngine:1 andNetworkConfiguration:0];
  algorithm = self->_algorithm;
  self->_algorithm = v4;

  if (!self->_algorithm)
  {
    if (ARShouldUseLogTypeError(void)::onceToken != -1)
    {
      [ARSIPersonDetectionTechnique _prepareOnce:];
    }

    v7 = ARShouldUseLogTypeError(void)::internalOSVersion;
    v8 = _ARLogGeneral(v6);
    v9 = v8;
    if (v7 == 1)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        *buf = 138543618;
        v20 = v11;
        v21 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: SIPersonDetectorAlgorithm could not be initialized!", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v20 = v13;
      v21 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v9, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: SIPersonDetectorAlgorithm could not be initialized!", buf, 0x16u);
    }

    if (ARSkipCrashOnCrash(void)::onceToken != -1)
    {
      [ARSIPersonDetectionTechnique _prepareOnce:];
    }

    if ((ARSkipCrashOnCrash(void)::skipCrashOnCrash & 1) == 0)
    {
      v14 = MEMORY[0x1E696AEC0];
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SIPersonDetectorAlgorithm could not be initialized!"];
      v16 = [v14 stringWithFormat:@"ARCrash: %@", v15];

      v17 = v16;
      qword_1EBF41A28 = strdup([v16 UTF8String]);
      if (!ARInternalOSBuild(qword_1EBF41A28, v18))
      {
        abort();
      }

      ARAbortWithError(v16);
    }
  }
}

- (void)dealloc
{
  depthPixelBufferPool = self->_depthPixelBufferPool;
  if (depthPixelBufferPool)
  {
    CVPixelBufferPoolRelease(depthPixelBufferPool);
    self->_depthPixelBufferPool = 0;
  }

  v4.receiver = self;
  v4.super_class = ARSIPersonDetectionTechnique;
  [(ARMLImageProcessingTechnique *)&v4 dealloc];
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (BOOL)isLoadedModelVersionCorrect:(id)correct
{
  v4.receiver = self;
  v4.super_class = ARSIPersonDetectionTechnique;
  return [(ARMLImageProcessingTechnique *)&v4 ARMLVerifyLoadedModelVersion:correct deviceName:@"D" major:2 minor:1];
}

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v17[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v11 = dataCopy;
  if (self->_algorithm)
  {
    v12 = dataCopy == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v15 = MEMORY[0x1E695E0F0];
  }

  else
  {
    objc_msgSend_timestamp(dataCopy);
    [(ARSIPersonDetectionTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    -[SIPersonDetectorAlgorithm runWithInput:output:](self->_algorithm, "runWithInput:output:", [v11 pixelBuffer], v13);
    objc_msgSend_timestamp(v11);
    [(ARSIPersonDetectionTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
    height = [(ARSIPersonDetectionTechnique *)self createResultDataFromAlgorithmOutput:v13 imageDataForNeuralNetwork:v11 inputImageData:v11 rotationNeeded:tensor regionOfInterest:width, height];
    v17[0] = height;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  }

  return v15;
}

- (id)createResultDataFromAlgorithmOutput:(id)output imageDataForNeuralNetwork:(id)network inputImageData:(id)data rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)interest
{
  v46 = *MEMORY[0x1E69E9840];
  outputCopy = output;
  networkCopy = network;
  v12 = objc_opt_new();
  v13 = [outputCopy count];
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = [outputCopy objectAtIndexedSubscript:i];
      [v15 boundingBox];
      ARCGRectRotate(needed, v16, v17, v18, v19);
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v28 = [[ARPersonDetectionResult alloc] initWithBoundingBox:v21, v23, v25, v27];
      [v12 addObject:v28];
    }
  }

  v29 = objc_opt_new();
  [v29 setDetectedObjects:v12];
  objc_msgSend_timestamp(networkCopy);
  [v29 setTimestamp:?];
  if (self->_mergeLargelyOverlappingBoxes)
  {
    LODWORD(v30) = 1058642330;
    v31 = [v29 mergeOverlappingDetectionsWithThreshold:v30];

    v33 = _ARLogTechnique(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      v34 = objc_opt_class();
      v35 = NSStringFromClass(v34);
      detectedObjects = [v31 detectedObjects];
      v38 = 138544130;
      v39 = v35;
      v40 = 2048;
      selfCopy = self;
      v42 = 1024;
      v43 = [detectedObjects count];
      v44 = 1024;
      v45 = [v12 count];
      _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: Detections %d / %d.", &v38, 0x22u);
    }
  }

  else
  {
    v31 = v29;
  }

  return v31;
}

@end