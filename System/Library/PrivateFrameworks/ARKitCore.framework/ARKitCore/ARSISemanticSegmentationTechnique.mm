@interface ARSISemanticSegmentationTechnique
+ (void)createUncertaintyMaskedSegmentationBuffer:(__CVBuffer *)buffer fromSegmentationBuffer:(__CVBuffer *)segmentationBuffer uncertaintyBuffer:(__CVBuffer *)uncertaintyBuffer maskValue:(unsigned __int8)value;
- (BOOL)_scaleOutputBuffersIfNeededForTargetResolution:(CGSize)resolution segmentationPixelBuffer:(__CVBuffer *)buffer confidencePixelBuffer:(__CVBuffer *)pixelBuffer normalPixelBuffer:(__CVBuffer *)normalPixelBuffer uncertaintyPixelBuffer:(__CVBuffer *)uncertaintyPixelBuffer;
- (BOOL)_scalePixelOutputBuffer:(__CVBuffer *)buffer toTargetResolution:(CGSize)resolution description:(id)description;
- (id)_rotateImageData:(id)data withRotationTechnique:(id)technique rotationNeeded:(int64_t)needed;
- (id)createResultDataFromOutputSegmentation:(__CVBuffer *)segmentation outputConfidence:(__CVBuffer *)confidence outputNormalize:(__CVBuffer *)normalize outputUncertainty:(__CVBuffer *)uncertainty inputImageData:(id)data originalData:(id)originalData rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)self0;
- (id)initLegacyAlgorithmUsingSynchronizedUltrawideWhenAvailable:(BOOL)available;
- (id)initUsingSynchronizedUltrawideWhenAvailable:(BOOL)available;
- (id)resultDataClasses;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (int64_t)_mapUIDeviceOrientation:(int64_t)orientation;
- (void)_prepareOnce:(BOOL)once;
- (void)dealloc;
@end

@implementation ARSISemanticSegmentationTechnique

+ (void)createUncertaintyMaskedSegmentationBuffer:(__CVBuffer *)buffer fromSegmentationBuffer:(__CVBuffer *)segmentationBuffer uncertaintyBuffer:(__CVBuffer *)uncertaintyBuffer maskValue:(unsigned __int8)value
{
  Height = CVPixelBufferGetHeight(segmentationBuffer);
  Width = CVPixelBufferGetWidth(segmentationBuffer);
  CVPixelBufferLockBaseAddress(uncertaintyBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(segmentationBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(buffer, 0);
  BytesPerRow = CVPixelBufferGetBytesPerRow(segmentationBuffer);
  BaseAddress = CVPixelBufferGetBaseAddress(segmentationBuffer);
  v14 = CVPixelBufferGetBaseAddress(buffer);
  v15 = CVPixelBufferGetBytesPerRow(uncertaintyBuffer);
  v16 = CVPixelBufferGetBaseAddress(uncertaintyBuffer);
  if (Height)
  {
    v17 = 0;
    do
    {
      v18 = Width;
      v19 = BaseAddress;
      v20 = v14;
      for (i = v16; v18; --v18)
      {
        valueCopy = value;
        if (*i > 0.0)
        {
          valueCopy = *v19;
        }

        *v20++ = valueCopy;
        ++i;
        ++v19;
      }

      ++v17;
      v16 = (v16 + v15);
      v14 += BytesPerRow;
      BaseAddress += BytesPerRow;
    }

    while (v17 != Height);
  }

  CVPixelBufferUnlockBaseAddress(buffer, 0);
  CVPixelBufferUnlockBaseAddress(uncertaintyBuffer, 1uLL);

  CVPixelBufferUnlockBaseAddress(segmentationBuffer, 1uLL);
}

- (id)initLegacyAlgorithmUsingSynchronizedUltrawideWhenAvailable:(BOOL)available
{
  availableCopy = available;
  v20 = *MEMORY[0x1E69E9840];
  v5 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.semanticSegmentationTechnique", 4294967285);
  v15.receiver = self;
  v15.super_class = ARSISemanticSegmentationTechnique;
  v6 = [(ARMLImageProcessingTechnique *)&v15 initWithDispatchQueue:v5 networkInputScaleBeforeRotation:1 delegateInference:256.0, 192.0];
  v7 = v6;
  if (v6)
  {
    v8 = _ARLogTechnique_13(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v17 = v10;
      v18 = 2048;
      v19 = v7;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running scene segmentation technique legacy by SceneIntelligence", buf, 0x16u);
    }

    v7->_numClasses = 12;
    v7->_lastResultPushTimestamp = 0.0;
    if (availableCopy)
    {
      v13 = ARDeviceSupportsUltraWideCamera(v11, v12);
    }

    else
    {
      v13 = 0;
    }

    v7->_shouldUseSynchronizedUltraWide = v13;
    v7->_isLegacyModel = 1;
  }

  return v7;
}

- (id)initUsingSynchronizedUltrawideWhenAvailable:(BOOL)available
{
  availableCopy = available;
  v20 = *MEMORY[0x1E69E9840];
  v5 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.semanticSegmentationTechnique", 4294967285);
  v15.receiver = self;
  v15.super_class = ARSISemanticSegmentationTechnique;
  v6 = [(ARMLImageProcessingTechnique *)&v15 initWithDispatchQueue:v5 networkInputScaleBeforeRotation:1 delegateInference:256.0, 192.0];
  v7 = v6;
  if (v6)
  {
    v8 = _ARLogTechnique_13(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      *buf = 138543618;
      v17 = v10;
      v18 = 2048;
      v19 = v7;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running scene segmentation technique by SceneIntelligence", buf, 0x16u);
    }

    v7->_numClasses = 34;
    v7->_lastResultPushTimestamp = 0.0;
    if (availableCopy)
    {
      v13 = ARDeviceSupportsUltraWideCamera(v11, v12);
    }

    else
    {
      v13 = 0;
    }

    v7->_shouldUseSynchronizedUltraWide = v13;
    v7->_isLegacyModel = 0;
  }

  return v7;
}

- (void)_prepareOnce:(BOOL)once
{
  v42 = *MEMORY[0x1E69E9840];
  if (self->_isLegacyModel)
  {
    v4 = objc_alloc(MEMORY[0x1E69C9CE8]);
    [(ARMLImageProcessingTechnique *)self networkInputScaleBeforeRotation];
    v5 = [v4 initWithInputResolution:1 andComputeEngine:?];
    sceneUnderstandingAlgorithm = self->_sceneUnderstandingAlgorithm;
    self->_sceneUnderstandingAlgorithm = v5;

    if (self->_sceneUnderstandingAlgorithm)
    {
      return;
    }

    if (ARShouldUseLogTypeError_onceToken_17 != -1)
    {
      [ARSISemanticSegmentationTechnique _prepareOnce:];
    }

    v8 = ARShouldUseLogTypeError_internalOSVersion_17;
    v9 = _ARLogGeneral_7(v7);
    v10 = v9;
    if (v8 == 1)
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_17;
      }

      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v39 = v12;
      v40 = 2048;
      selfCopy4 = self;
      v13 = "%{public}@ <%p>: SISceneUnderstandingAlgorithm could not be initialized!";
      v14 = v10;
      v15 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        goto LABEL_17;
      }

      v31 = objc_opt_class();
      v12 = NSStringFromClass(v31);
      *buf = 138543618;
      v39 = v12;
      v40 = 2048;
      selfCopy4 = self;
      v13 = "Error: %{public}@ <%p>: SISceneUnderstandingAlgorithm could not be initialized!";
      v14 = v10;
      v15 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v14, v15, v13, buf, 0x16u);

LABEL_17:
    if (ARSkipCrashOnCrash_onceToken_0 != -1)
    {
      [ARSISemanticSegmentationTechnique _prepareOnce:];
    }

    if ((ARSkipCrashOnCrash_skipCrashOnCrash_0 & 1) == 0)
    {
      v32 = MEMORY[0x1E696AEC0];
      v33 = @"SISceneUnderstandingAlgorithm could not be initialized!";
LABEL_28:
      v35 = [v32 stringWithFormat:v33];
      v36 = [v32 stringWithFormat:@"ARCrash: %@", v35];

      qword_1EBF41A28 = strdup([v36 UTF8String]);
      if ((ARInternalOSBuild(qword_1EBF41A28, v37) & 1) == 0)
      {
        abort();
      }

      ARAbortWithError(v36);

      return;
    }

    return;
  }

  [ARKitUserDefaults floatForKey:@"com.apple.arkit.semanticSegmentation.uncertaintyThreshold"];
  v17 = v16;
  v18 = objc_alloc(MEMORY[0x1E69C9CE0]);
  LODWORD(v19) = v17;
  v20 = [v18 initWithComputeEngine:1 andNetworkConfiguration:0 uncertaintyThreshold:v19];
  sceneSegmentationAlgorithm = self->_sceneSegmentationAlgorithm;
  self->_sceneSegmentationAlgorithm = v20;

  if (self->_sceneSegmentationAlgorithm)
  {
    return;
  }

  if (ARShouldUseLogTypeError_onceToken_17 != -1)
  {
    [ARSISemanticSegmentationTechnique _prepareOnce:];
  }

  v23 = ARShouldUseLogTypeError_internalOSVersion_17;
  v24 = _ARLogGeneral_7(v22);
  v25 = v24;
  if (v23 == 1)
  {
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v26 = objc_opt_class();
    v27 = NSStringFromClass(v26);
    *buf = 138543618;
    v39 = v27;
    v40 = 2048;
    selfCopy4 = self;
    v28 = "%{public}@ <%p>: SISceneSegmentationAlgorithm could not be initialized!";
    v29 = v25;
    v30 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_24;
    }

    v34 = objc_opt_class();
    v27 = NSStringFromClass(v34);
    *buf = 138543618;
    v39 = v27;
    v40 = 2048;
    selfCopy4 = self;
    v28 = "Error: %{public}@ <%p>: SISceneSegmentationAlgorithm could not be initialized!";
    v29 = v25;
    v30 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&dword_1C241C000, v29, v30, v28, buf, 0x16u);

LABEL_24:
  if (ARSkipCrashOnCrash_onceToken_0 != -1)
  {
    [ARSISemanticSegmentationTechnique _prepareOnce:];
  }

  if ((ARSkipCrashOnCrash_skipCrashOnCrash_0 & 1) == 0)
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = @"SISceneSegmentationAlgorithm could not be initialized!";
    goto LABEL_28;
  }
}

- (void)dealloc
{
  outputSegmentationPixelBufferPool = self->_outputSegmentationPixelBufferPool;
  if (outputSegmentationPixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputSegmentationPixelBufferPool);
    self->_outputSegmentationPixelBufferPool = 0;
  }

  outputConfidencePixelBufferPool = self->_outputConfidencePixelBufferPool;
  if (outputConfidencePixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputConfidencePixelBufferPool);
    self->_outputConfidencePixelBufferPool = 0;
  }

  outputNormalPixelBufferPool = self->_outputNormalPixelBufferPool;
  if (outputNormalPixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputNormalPixelBufferPool);
    self->_outputNormalPixelBufferPool = 0;
  }

  scaledSegmentationOutputPixelBufferPool = self->_scaledSegmentationOutputPixelBufferPool;
  if (scaledSegmentationOutputPixelBufferPool)
  {
    CVPixelBufferPoolRelease(scaledSegmentationOutputPixelBufferPool);
    self->_scaledSegmentationOutputPixelBufferPool = 0;
  }

  scaledConfidencePixelBufferPool = self->_scaledConfidencePixelBufferPool;
  if (scaledConfidencePixelBufferPool)
  {
    CVPixelBufferPoolRelease(scaledConfidencePixelBufferPool);
    self->_scaledConfidencePixelBufferPool = 0;
  }

  scaledNormalsPixelBufferPool = self->_scaledNormalsPixelBufferPool;
  if (scaledNormalsPixelBufferPool)
  {
    CVPixelBufferPoolRelease(scaledNormalsPixelBufferPool);
    self->_scaledNormalsPixelBufferPool = 0;
  }

  outputUncertaintyPixelBufferPool = self->_outputUncertaintyPixelBufferPool;
  if (outputUncertaintyPixelBufferPool)
  {
    CVPixelBufferPoolRelease(outputUncertaintyPixelBufferPool);
    self->_outputUncertaintyPixelBufferPool = 0;
  }

  v10.receiver = self;
  v10.super_class = ARSISemanticSegmentationTechnique;
  [(ARMLImageProcessingTechnique *)&v10 dealloc];
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v93 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  imageDataCopy = imageData;
  if (self->_sceneSegmentationAlgorithm)
  {
    if (dataCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_38;
  }

  if (self->_sceneUnderstandingAlgorithm)
  {
    v17 = dataCopy == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_10;
  }

LABEL_3:
  objc_msgSend_timestamp(dataCopy);
  [(ARSISemanticSegmentationTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
  if (self->_isLegacyModel)
  {
    [MEMORY[0x1E69C9CE8] outputResolution];
    v14 = v13;
    v16 = v15;
  }

  else if (self->_shouldUseSynchronizedUltraWide)
  {
    v16 = height;
    v14 = width;
  }

  else
  {
    pixelBuffer = [dataCopy pixelBuffer];
    if (pixelBuffer)
    {
      v20 = pixelBuffer;
      v14 = CVPixelBufferGetWidth(pixelBuffer);
      v16 = CVPixelBufferGetHeight(v20);
    }

    else
    {
      v14 = *MEMORY[0x1E695F060];
      v16 = *(MEMORY[0x1E695F060] + 8);
    }
  }

  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = ARCreateCVPixelBufferFromPool(&self->_outputSegmentationPixelBufferPool, 1278226488, self, @"segmentation output label", v14, v16);
  v80 = 0;
  v81 = &v80;
  v82 = 0x2020000000;
  v83 = ARCreateCVPixelBufferFromPool(&self->_outputConfidencePixelBufferPool, 1278226534, self, @"segmentation output confidence", v14, v16);
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = ARCreateCVPixelBufferFromPool(&self->_outputNormalPixelBufferPool, 1380410945, self, @"segmentation output normal", v14, v16);
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v21 = ARCreateCVPixelBufferFromPool(&self->_outputUncertaintyPixelBufferPool, 1278226534, self, @"segmentation output uncertainty", v14, v16);
  v75 = v21;
  v65[1] = 3221225472;
  v65[0] = MEMORY[0x1E69E9820];
  v66 = __125__ARSISemanticSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke;
  v67 = &unk_1E817C790;
  v68 = &v84;
  v69 = &v80;
  v70 = &v72;
  v71 = &v76;
  if (!v85[3] || !v81[3] || !v73[3] || self->_isLegacyModel && !v77[3])
  {
    if (ARShouldUseLogTypeError_onceToken_17 != -1)
    {
      [ARSISemanticSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
    }

    v34 = ARShouldUseLogTypeError_internalOSVersion_17;
    v35 = _ARLogTechnique_13(v21);
    tensor = v35;
    if (v34 == 1)
    {
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v37 = objc_opt_class();
        v38 = NSStringFromClass(v37);
        *buf = 138543618;
        v90 = v38;
        v91 = 2048;
        selfCopy6 = self;
        _os_log_impl(&dword_1C241C000, tensor, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Pixelbuffer is nil. Returning empty result.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v39 = objc_opt_class();
      v40 = NSStringFromClass(v39);
      *buf = 138543618;
      v90 = v40;
      v91 = 2048;
      selfCopy6 = self;
      _os_log_impl(&dword_1C241C000, tensor, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Pixelbuffer is nil. Returning empty result.", buf, 0x16u);
    }

    v18 = MEMORY[0x1E695E0F0];
    goto LABEL_36;
  }

  v22 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:imageDataCopy];
  v23 = v22;
  if (self->_isLegacyModel)
  {
    sceneUnderstandingAlgorithm = self->_sceneUnderstandingAlgorithm;
    pixelBuffer2 = [dataCopy pixelBuffer];
    IOSurface = CVPixelBufferGetIOSurface(v85[3]);
    v27 = CVPixelBufferGetIOSurface(v81[3]);
    [(SISceneUnderstandingAlgorithm *)sceneUnderstandingAlgorithm runWithInput:pixelBuffer2 output:IOSurface confidenceOutput:v27 normalsOutput:CVPixelBufferGetIOSurface(v77[3]) orientation:[(ARSISemanticSegmentationTechnique *)self _mapUIDeviceOrientation:v23]];
    height = [(ARSISemanticSegmentationTechnique *)self _scaleOutputBuffersIfNeededForTargetResolution:v85 + 3 segmentationPixelBuffer:v81 + 3 confidencePixelBuffer:v77 + 3 normalPixelBuffer:0 uncertaintyPixelBuffer:width, height];
    if ((height & 1) == 0)
    {
      if (ARShouldUseLogTypeError_onceToken_17 != -1)
      {
        [ARSISemanticSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
      }

      v29 = ARShouldUseLogTypeError_internalOSVersion_17;
      v30 = _ARLogGeneral_7(height);
      v31 = v30;
      if (v29 == 1)
      {
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v32 = objc_opt_class();
          v33 = NSStringFromClass(v32);
          *buf = 138543618;
          v90 = v33;
          v91 = 2048;
          selfCopy6 = self;
          _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Output buffer scaling failed. (legacy)", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v54 = NSStringFromClass(v53);
        *buf = 138543618;
        v90 = v54;
        v91 = 2048;
        selfCopy6 = self;
        _os_log_impl(&dword_1C241C000, v31, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Output buffer scaling failed. (legacy)", buf, 0x16u);
      }

      if (ARSkipCrashOnCrash_onceToken_0 != -1)
      {
        [ARSISemanticSegmentationTechnique _prepareOnce:];
      }

      if ((ARSkipCrashOnCrash_skipCrashOnCrash_0 & 1) == 0)
      {
        v55 = MEMORY[0x1E696AEC0];
        v56 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output buffer scaling failed. (legacy)"];
        tensor = [v55 stringWithFormat:@"ARCrash: %@", v56];

        v57 = tensor;
        qword_1EBF41A28 = strdup([tensor UTF8String]);
        if (ARInternalOSBuild(qword_1EBF41A28, v58))
        {
          goto LABEL_66;
        }

        goto LABEL_67;
      }

      goto LABEL_64;
    }
  }

  else
  {
    if ((v22 - 3) < 2)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2 * ((v22 - 1) < 2);
    }

    sceneSegmentationAlgorithm = self->_sceneSegmentationAlgorithm;
    pixelBuffer3 = [dataCopy pixelBuffer];
    v45 = CVPixelBufferGetIOSurface(v85[3]);
    v46 = CVPixelBufferGetIOSurface(v81[3]);
    [(SISceneSegmentationAlgorithm *)sceneSegmentationAlgorithm runWithInput:pixelBuffer3 output:v45 confidenceOutput:v46 uncertaintyOutput:CVPixelBufferGetIOSurface(v73[3]) resampleOutput:1 networkConfiguration:v42];
    if (!self->_shouldUseSynchronizedUltraWide)
    {
      height2 = [(ARSISemanticSegmentationTechnique *)self _scaleOutputBuffersIfNeededForTargetResolution:v85 + 3 segmentationPixelBuffer:v81 + 3 confidencePixelBuffer:0 normalPixelBuffer:v73 + 3 uncertaintyPixelBuffer:width, height];
      if ((height2 & 1) == 0)
      {
        if (ARShouldUseLogTypeError_onceToken_17 != -1)
        {
          [ARSISemanticSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
        }

        v48 = ARShouldUseLogTypeError_internalOSVersion_17;
        v49 = _ARLogGeneral_7(height2);
        v50 = v49;
        if (v48 == 1)
        {
          if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
          {
            v51 = objc_opt_class();
            v52 = NSStringFromClass(v51);
            *buf = 138543618;
            v90 = v52;
            v91 = 2048;
            selfCopy6 = self;
            _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Output buffer scaling failed. (Non-legacy)", buf, 0x16u);
          }
        }

        else if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v59 = objc_opt_class();
          v60 = NSStringFromClass(v59);
          *buf = 138543618;
          v90 = v60;
          v91 = 2048;
          selfCopy6 = self;
          _os_log_impl(&dword_1C241C000, v50, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Output buffer scaling failed. (Non-legacy)", buf, 0x16u);
        }

        if (ARSkipCrashOnCrash_onceToken_0 != -1)
        {
          [ARSISemanticSegmentationTechnique _prepareOnce:];
        }

        if ((ARSkipCrashOnCrash_skipCrashOnCrash_0 & 1) == 0)
        {
          v61 = MEMORY[0x1E696AEC0];
          v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Output buffer scaling failed. (Non-legacy)"];
          tensor = [v61 stringWithFormat:@"ARCrash: %@", v62];

          v63 = tensor;
          qword_1EBF41A28 = strdup([tensor UTF8String]);
          if (ARInternalOSBuild(qword_1EBF41A28, v64))
          {
LABEL_66:
            ARAbortWithError(tensor);
            v18 = 0;
            goto LABEL_36;
          }

LABEL_67:
          abort();
        }

LABEL_64:
        v18 = 0;
        goto LABEL_37;
      }
    }
  }

  objc_msgSend_timestamp(dataCopy);
  [(ARSISemanticSegmentationTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
  tensor = [(ARSISemanticSegmentationTechnique *)self createResultDataFromOutputSegmentation:v85[3] outputConfidence:v81[3] outputNormalize:v77[3] outputUncertainty:v73[3] inputImageData:imageDataCopy originalData:dataCopy rotationNeeded:width regionOfInterest:height, tensor];
  v88 = tensor;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
LABEL_36:

LABEL_37:
  v66(v65);
  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v76, 8);
  _Block_object_dispose(&v80, 8);
  _Block_object_dispose(&v84, 8);
LABEL_38:

  return v18;
}

void __125__ARSISemanticSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[6] + 8) + 24));
  v2 = *(*(a1[7] + 8) + 24);

  CVPixelBufferRelease(v2);
}

- (BOOL)_scaleOutputBuffersIfNeededForTargetResolution:(CGSize)resolution segmentationPixelBuffer:(__CVBuffer *)buffer confidencePixelBuffer:(__CVBuffer *)pixelBuffer normalPixelBuffer:(__CVBuffer *)normalPixelBuffer uncertaintyPixelBuffer:(__CVBuffer *)uncertaintyPixelBuffer
{
  height = resolution.height;
  width = resolution.width;
  v14 = *buffer;
  if (*buffer)
  {
    v15 = CVPixelBufferGetWidth(*buffer);
    v16 = CVPixelBufferGetHeight(v14);
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v16 = *(MEMORY[0x1E695F060] + 8);
  }

  v17 = width == v15 && height == v16;
  if (v17 || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:buffer toTargetResolution:@"Scaled Segmentation Output" description:width, height]) && (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:pixelBuffer toTargetResolution:@"Scaled Confidence Output" description:width, height]) && (!normalPixelBuffer || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:normalPixelBuffer toTargetResolution:@"Scaled Normals Output" description:width, height])) && (!uncertaintyPixelBuffer || (v18 = [(ARSISemanticSegmentationTechnique *)self _scalePixelOutputBuffer:uncertaintyPixelBuffer toTargetResolution:@"Scaled Uncertainty Output" description:width, height])))
  {
    LOBYTE(v18) = 1;
  }

  return v18;
}

- (BOOL)_scalePixelOutputBuffer:(__CVBuffer *)buffer toTargetResolution:(CGSize)resolution description:(id)description
{
  height = resolution.height;
  width = resolution.width;
  v38 = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  if (buffer)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(*buffer);
    v11 = ARCreateCVPixelBufferFromPool(&self->_scaledSegmentationOutputPixelBufferPool, PixelFormatType, self, descriptionCopy, width, height);
    if (v11)
    {
      v12 = v11;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v27 = __92__ARSISemanticSegmentationTechnique__scalePixelOutputBuffer_toTargetResolution_description___block_invoke;
      v28 = &__block_descriptor_40_e5_v8__0l;
      v29 = v11;
      IOSurface = CVPixelBufferGetIOSurface(*buffer);
      if (IOSurface)
      {
        BytesPerElement = IOSurfaceGetBytesPerElement(IOSurface);
        v15 = ARResizeBufferWithNearestNeighbors(*buffer, v12, BytesPerElement);
        v16 = v15;
        if (!v15)
        {
          CVPixelBufferRelease(*buffer);
          *buffer = CVPixelBufferRetain(v12);
          v22 = 1;
LABEL_17:
          v27(v26);
          goto LABEL_18;
        }

        if (ARShouldUseLogTypeError_onceToken_17 != -1)
        {
          [ARSISemanticSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
        }

        v17 = ARShouldUseLogTypeError_internalOSVersion_17;
        v18 = _ARLogTechnique_13(v15);
        v19 = v18;
        if (v17 == 1)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = objc_opt_class();
            v21 = NSStringFromClass(v20);
            *buf = 138544130;
            v31 = v21;
            v32 = 2048;
            selfCopy2 = self;
            v34 = 2112;
            v35 = descriptionCopy;
            v36 = 1024;
            v37 = v16;
            _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer (%@): %i", buf, 0x26u);
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v23 = objc_opt_class();
          v24 = NSStringFromClass(v23);
          *buf = 138544130;
          v31 = v24;
          v32 = 2048;
          selfCopy2 = self;
          v34 = 2112;
          v35 = descriptionCopy;
          v36 = 1024;
          v37 = v16;
          _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer (%@): %i", buf, 0x26u);
        }
      }

      v22 = 0;
      goto LABEL_17;
    }
  }

  v22 = 0;
LABEL_18:

  return v22;
}

- (id)createResultDataFromOutputSegmentation:(__CVBuffer *)segmentation outputConfidence:(__CVBuffer *)confidence outputNormalize:(__CVBuffer *)normalize outputUncertainty:(__CVBuffer *)uncertainty inputImageData:(id)data originalData:(id)originalData rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)self0
{
  dataCopy = data;
  v16 = objc_opt_new();
  [v16 setPixelBuffer:segmentation];
  v17 = objc_opt_new();
  [v17 setPixelBuffer:confidence];
  segmentationRotationTechnique = self->_segmentationRotationTechnique;
  if (!segmentationRotationTechnique || [(ARImageRotationTechnique *)segmentationRotationTechnique rotationAngle]!= needed || [(ARImageRotationTechnique *)self->_segmentationRotationTechnique mirrorMode])
  {
    v19 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
    v20 = self->_segmentationRotationTechnique;
    self->_segmentationRotationTechnique = v19;

    v21 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
    confidenceUncertaintyRotationTechnique = self->_confidenceUncertaintyRotationTechnique;
    self->_confidenceUncertaintyRotationTechnique = v21;
  }

  v23 = [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v16 withRotationTechnique:self->_segmentationRotationTechnique rotationNeeded:needed];
  [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v17 withRotationTechnique:self->_confidenceUncertaintyRotationTechnique rotationNeeded:needed];
  v46 = v45 = v23;
  if (!uncertainty || self->_isLegacyModel)
  {
    v31 = [ARSegmentationData alloc];
    objc_msgSend_timestamp(dataCopy);
    v30 = -[ARSegmentationData initWithTimestamp:segmentationBuffer:confidenceBuffer:source:](v31, "initWithTimestamp:segmentationBuffer:confidenceBuffer:source:", [v23 pixelBuffer], objc_msgSend(v46, "pixelBuffer"), 2, v32);
  }

  else
  {
    normalizeCopy = normalize;
    v24 = objc_opt_new();
    [v24 setPixelBuffer:uncertainty];
    [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v24 withRotationTechnique:self->_confidenceUncertaintyRotationTechnique rotationNeeded:needed];
    v44 = v17;
    v25 = v16;
    v27 = v26 = dataCopy;
    v28 = [ARSegmentationData alloc];
    objc_msgSend_timestamp(v26);
    v30 = -[ARSegmentationData initWithTimestamp:segmentationBuffer:confidenceBuffer:uncertaintyBuffer:source:](v28, "initWithTimestamp:segmentationBuffer:confidenceBuffer:uncertaintyBuffer:source:", [v23 pixelBuffer], objc_msgSend(v46, "pixelBuffer"), objc_msgSend(v27, "pixelBuffer"), 2, v29);

    dataCopy = v26;
    v16 = v25;
    v17 = v44;

    normalize = normalizeCopy;
  }

  if (normalize && self->_isLegacyModel)
  {
    normalsRotationTechnique = self->_normalsRotationTechnique;
    if (!normalsRotationTechnique || [(ARImageRotationTechnique *)normalsRotationTechnique rotationAngle]!= needed || [(ARImageRotationTechnique *)self->_normalsRotationTechnique mirrorMode])
    {
      v34 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
      v35 = self->_normalsRotationTechnique;
      self->_normalsRotationTechnique = v34;
    }

    v36 = objc_opt_new();
    [v36 setPixelBuffer:normalize];
    v37 = [(ARSISemanticSegmentationTechnique *)self _rotateImageData:v36 withRotationTechnique:self->_normalsRotationTechnique rotationNeeded:needed];
    -[ARSegmentationData setNormalsBuffer:](v30, "setNormalsBuffer:", [v37 pixelBuffer]);
  }

  originalImage = [dataCopy originalImage];
  [(ARSegmentationData *)v30 setSourceImageData:originalImage];

  sourceImageData = [(ARSegmentationData *)v30 sourceImageData];
  objc_msgSend_timestamp(sourceImageData);
  sourceImageData2 = [(ARSegmentationData *)v30 sourceImageData];
  cameraType = [sourceImageData2 cameraType];
  [cameraType isEqualToString:*MEMORY[0x1E6986948]];
  CVPixelBufferGetWidth([(ARSegmentationData *)v30 segmentationBuffer]);
  CVPixelBufferGetHeight([(ARSegmentationData *)v30 segmentationBuffer]);
  kdebug_trace();

  return v30;
}

- (int64_t)_mapUIDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_1C25C8B90[orientation - 1];
  }
}

- (id)_rotateImageData:(id)data withRotationTechnique:(id)technique rotationNeeded:(int64_t)needed
{
  v27 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = [technique processData:dataCopy];

  if (needed && v9 == dataCopy)
  {
    if (ARShouldUseLogTypeError_onceToken_17 != -1)
    {
      [ARSISemanticSegmentationTechnique _prepareOnce:];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_17;
    v12 = _ARLogTechnique_13(v10);
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v23 = 138543618;
        v24 = v15;
        v25 = 2048;
        selfCopy2 = self;
        v16 = "%{public}@ <%p>: Could not rotate image data.";
        v17 = v13;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, &v23, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v15 = NSStringFromClass(v19);
      v23 = 138543618;
      v24 = v15;
      v25 = 2048;
      selfCopy2 = self;
      v16 = "Error: %{public}@ <%p>: Could not rotate image data.";
      v17 = v13;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

    delegate = [(ARTechnique *)self delegate];
    v21 = ARErrorWithCodeAndUserInfo(151, 0);
    [delegate technique:self didFailWithError:v21];
  }

  return v9;
}

@end