@interface ARPersonSegmentationTechnique
- (ARPersonSegmentationTechnique)init;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLoadedModelVersionCorrect:(id)correct;
- (__CVBuffer)_createCopyWithCVPixelBufferPoolForBuffer:(__CVBuffer *)buffer;
- (id)resultDataClasses;
- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor;
- (void)_prepareOnce:(BOOL)once;
- (void)dealloc;
@end

@implementation ARPersonSegmentationTechnique

- (ARPersonSegmentationTechnique)init
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.personsegmentationtechnique", 0xFFFFFFFFLL);
  v10.receiver = self;
  v10.super_class = ARPersonSegmentationTechnique;
  v4 = [(ARMLImageProcessingTechnique *)&v10 initWithDispatchQueue:v3 networkInputScaleBeforeRotation:1 delegateInference:256.0, 192.0];
  v5 = v4;
  if (v4)
  {
    v6 = _ARLogTechnique_10(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = v5;
      _os_log_impl(&dword_1C241C000, v6, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Running person segmentation by ARPersonSegmentationTechnique.", buf, 0x16u);
    }

    v5->_outputSegmentationCopyPixelBufferPool = 0;
    v5->_scaledSegmentationOutputPixelBufferPool = 0;
    v5->_disableTemporalSegmentation = 0;
  }

  return v5;
}

- (void)_prepareOnce:(BOOL)once
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E69C9CD0]);
  [v4 setRunByE5RT:1];
  [v4 setEngineType:1];
  v5 = [objc_alloc(MEMORY[0x1E69C9CC0]) initWithNetworkConfiguration:v4];
  algorithm = self->_algorithm;
  self->_algorithm = v5;

  v7 = objc_alloc_init(MEMORY[0x1E69C9CB8]);
  imageInputData = self->_imageInputData;
  self->_imageInputData = v7;

  if (self->_algorithm)
  {
    goto LABEL_15;
  }

  if (ARShouldUseLogTypeError_onceToken_14 != -1)
  {
    [ARPersonSegmentationTechnique _prepareOnce:];
  }

  v10 = ARShouldUseLogTypeError_internalOSVersion_14;
  v11 = _ARLogGeneral_5(v9);
  v12 = v11;
  if (v10 == 1)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138543618;
      v24 = v14;
      v25 = 2048;
      selfCopy2 = self;
      v15 = "%{public}@ <%p>: SIPeopleSegmentationAlgorithm could not be initialized!";
      v16 = v12;
      v17 = OS_LOG_TYPE_ERROR;
LABEL_9:
      _os_log_impl(&dword_1C241C000, v16, v17, v15, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v18 = objc_opt_class();
    v14 = NSStringFromClass(v18);
    *buf = 138543618;
    v24 = v14;
    v25 = 2048;
    selfCopy2 = self;
    v15 = "Error: %{public}@ <%p>: SIPeopleSegmentationAlgorithm could not be initialized!";
    v16 = v12;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_9;
  }

  if (ARSkipCrashOnCrash_onceToken != -1)
  {
    [ARPersonSegmentationTechnique _prepareOnce:];
  }

  if ((ARSkipCrashOnCrash_skipCrashOnCrash & 1) == 0)
  {
    v19 = MEMORY[0x1E696AEC0];
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SIPeopleSegmentationAlgorithm could not be initialized!"];
    v21 = [v19 stringWithFormat:@"ARCrash: %@", v20];

    qword_1EBF41A28 = strdup([v21 UTF8String]);
    if (!ARInternalOSBuild(qword_1EBF41A28, v22))
    {
      abort();
    }

    ARAbortWithError(v21);
  }

LABEL_15:
  if ([(ARPersonSegmentationTechnique *)self disableTemporalSegmentation])
  {
    [(SIPeopleSegmentationAlgorithm *)self->_algorithm setSnapEveryFrameCount:1];
  }
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_outputSegmentationCopyPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledSegmentationOutputPixelBufferPool);
  v3.receiver = self;
  v3.super_class = ARPersonSegmentationTechnique;
  [(ARMLImageProcessingTechnique *)&v3 dealloc];
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7.receiver = self;
  v7.super_class = ARPersonSegmentationTechnique;
  if ([(ARTechnique *)&v7 isEqual:equalCopy])
  {
    v5 = self->_disableTemporalSegmentation == equalCopy[376];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isLoadedModelVersionCorrect:(id)correct
{
  v4.receiver = self;
  v4.super_class = ARPersonSegmentationTechnique;
  return [(ARMLImageProcessingTechnique *)&v4 ARMLVerifyLoadedModelVersion:correct deviceName:@"D" major:1 minor:4];
}

- (id)runNeuralNetworkWithImageData:(id)data originalImageData:(id)imageData regionOfInterest:(CGSize)interest rotationOfResultTensor:(int64_t)tensor
{
  height = interest.height;
  width = interest.width;
  v107 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  imageDataCopy = imageData;
  if (self->_algorithm)
  {
    v13 = dataCopy == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = MEMORY[0x1E695E0F0];
    goto LABEL_50;
  }

  [dataCopy imageResolution];
  IsLandscape = CGSizeAspectRatioIsLandscape(v15, v16);
  v18 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:imageDataCopy];
  v19 = _ARLogTechnique_10(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    objc_msgSend_timestamp(imageDataCopy);
    v24 = v23;
    [dataCopy imageResolution];
    v26 = v25;
    [dataCopy imageResolution];
    v28 = v27;
    [imageDataCopy imageResolution];
    v30 = v29;
    [imageDataCopy imageResolution];
    *buf = 138545410;
    v90 = v22;
    v91 = 2048;
    selfCopy5 = self;
    v93 = 2048;
    v94 = v24;
    v95 = 2048;
    v96 = v26;
    v97 = 2048;
    v98 = v28;
    v99 = 2048;
    v100 = v30;
    v101 = 2048;
    v102 = v31;
    v103 = 2048;
    v104 = width;
    v105 = 2048;
    v106 = height;
    _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: [%f] Got imageData %fx%f, originalImageData %fx%f, ROI: %fx%f", buf, 0x5Cu);
  }

  v32 = !IsLandscape;
  [(SIPeopleSegmentationAlgorithm *)self->_algorithm switchConfiguration:v32];
  if (IsLandscape)
  {
    v33 = 360;
  }

  else
  {
    v33 = 368;
  }

  v34 = (&self->super.super.super.super.isa + v33);
  v35 = *(&self->super.super.super.super.isa + v33);
  if (!v35)
  {
    v36 = objc_alloc(MEMORY[0x1E69C9CC8]);
    networkConfiguration = [(SIPeopleSegmentationAlgorithm *)self->_algorithm networkConfiguration];
    v38 = [v36 initWithConfig:networkConfiguration];
    v39 = *v34;
    *v34 = v38;

    v35 = *v34;
  }

  v40 = v35;
  objc_msgSend_timestamp(dataCopy);
  [(ARPersonSegmentationTechnique *)self _startMLRunNetworkSignpostWithTimestamp:?];
  -[SIImageInputData setInputImageBuffer:](self->_imageInputData, "setInputImageBuffer:", [dataCopy pixelBuffer]);
  [(SIPeopleSegmentationAlgorithm *)self->_algorithm runWithInput:self->_imageInputData output:v40 resolutionConfiguration:v32];
  objc_msgSend_timestamp(dataCopy);
  [(ARPersonSegmentationTechnique *)self _endMLRunNetworkSignpostWithTimestamp:?];
  objc_msgSend_timestamp(dataCopy);
  v42 = v41;
  inputImageBuffer = [(SIImageInputData *)self->_imageInputData inputImageBuffer];
  v44 = inputImageBuffer;
  if (inputImageBuffer)
  {
    v45 = CVPixelBufferGetWidth(inputImageBuffer);
    v46 = CVPixelBufferGetHeight(v44);
    v47 = v45;
    v48 = v46;
  }

  else
  {
    v47 = *MEMORY[0x1E695F060];
    v48 = *(MEMORY[0x1E695F060] + 8);
  }

  [(ARPersonSegmentationTechnique *)self _startMLCreateResultSignpostWithTimestamp:v18 orientation:v42 outputSize:v47, v48];
  [(SIPeopleSegmentationAlgorithm *)self->_algorithm getOutputResolution];
  v50 = v49;
  v52 = v51;
  v53 = objc_opt_new();
  if (v50 == width && v52 == height)
  {
    [v53 setPixelBuffer:{objc_msgSend(v40, "segmentation")}];
    goto LABEL_20;
  }

  v61 = ARCreateCVPixelBufferFromPool(&self->_scaledSegmentationOutputPixelBufferPool, 1278226488, self, @"Scaled Segmentation", width, height);
  v62 = v61;
  if (v61)
  {
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v85 = __121__ARPersonSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke;
    v86 = &__block_descriptor_40_e5_v8__0l;
    v87 = v61;
    v63 = ARResizeBufferWithNearestNeighbors([v40 segmentation], v61, 1uLL);
    v64 = v63;
    if (!v63)
    {
      [v53 setPixelBuffer:v62];
      v85(v84);
LABEL_20:
      segmentationRotationTechnique = self->_segmentationRotationTechnique;
      if (!segmentationRotationTechnique || [(ARImageRotationTechnique *)segmentationRotationTechnique rotationAngle]!= tensor || [(ARImageRotationTechnique *)self->_segmentationRotationTechnique mirrorMode])
      {
        v55 = [[ARImageRotationTechnique alloc] initWithRotation:tensor mirror:0];
        v56 = self->_segmentationRotationTechnique;
        self->_segmentationRotationTechnique = v55;
      }

      v57 = [(ARImageRotationTechnique *)self->_segmentationRotationTechnique processData:v53];
      pixelBuffer = [v57 pixelBuffer];
      LODWORD(pixelBuffer) = pixelBuffer == [v40 segmentation];
      pixelBuffer2 = [v57 pixelBuffer];
      if (pixelBuffer)
      {
        v60 = [(ARPersonSegmentationTechnique *)self _createCopyWithCVPixelBufferPoolForBuffer:pixelBuffer2];
      }

      else
      {
        v60 = CVPixelBufferRetain(pixelBuffer2);
      }

      v70 = v60;
      v83[0] = MEMORY[0x1E69E9820];
      v83[1] = 3221225472;
      v83[2] = __121__ARPersonSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke_26;
      v83[3] = &__block_descriptor_40_e5_v8__0l;
      v83[4] = v60;
      v71 = [ARSegmentationData alloc];
      objc_msgSend_timestamp(imageDataCopy);
      v72 = [(ARSegmentationData *)v71 initWithTimestamp:v70 segmentationBuffer:?];
      v88 = v72;
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
      objc_msgSend_timestamp(dataCopy);
      [(ARPersonSegmentationTechnique *)self _endMLCreateResultSignpostWithTimestamp:?];

      __121__ARPersonSegmentationTechnique_runNeuralNetworkWithImageData_originalImageData_regionOfInterest_rotationOfResultTensor___block_invoke_26(v83);
      goto LABEL_49;
    }

    if (ARShouldUseLogTypeError_onceToken_14 != -1)
    {
      [ARPersonSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
    }

    v65 = ARShouldUseLogTypeError_internalOSVersion_14;
    v66 = _ARLogTechnique_10(v63);
    v67 = v66;
    if (v65 == 1)
    {
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        v68 = objc_opt_class();
        v69 = NSStringFromClass(v68);
        *buf = 138543874;
        v90 = v69;
        v91 = 2048;
        selfCopy5 = self;
        v93 = 1024;
        LODWORD(v94) = v64;
        _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer: %i", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
    {
      v78 = objc_opt_class();
      v79 = NSStringFromClass(v78);
      *buf = 138543874;
      v90 = v79;
      v91 = 2048;
      selfCopy5 = self;
      v93 = 1024;
      LODWORD(v94) = v64;
      _os_log_impl(&dword_1C241C000, v67, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer: %i", buf, 0x1Cu);
    }

    v85(v84);
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_14 != -1)
    {
      [ARPersonSegmentationTechnique runNeuralNetworkWithImageData:originalImageData:regionOfInterest:rotationOfResultTensor:];
    }

    v73 = ARShouldUseLogTypeError_internalOSVersion_14;
    v74 = _ARLogTechnique_10(v61);
    v75 = v74;
    if (v73 == 1)
    {
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        v76 = objc_opt_class();
        v77 = NSStringFromClass(v76);
        *buf = 138543618;
        v90 = v77;
        v91 = 2048;
        selfCopy5 = self;
        _os_log_impl(&dword_1C241C000, v75, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed to create scaled person segmentation buffer", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
    {
      v80 = objc_opt_class();
      v81 = NSStringFromClass(v80);
      *buf = 138543618;
      v90 = v81;
      v91 = 2048;
      selfCopy5 = self;
      _os_log_impl(&dword_1C241C000, v75, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed to create scaled person segmentation buffer", buf, 0x16u);
    }
  }

  v14 = 0;
LABEL_49:

LABEL_50:

  return v14;
}

- (__CVBuffer)_createCopyWithCVPixelBufferPoolForBuffer:(__CVBuffer *)buffer
{
  v34 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(buffer);
  Height = CVPixelBufferGetHeight(buffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v8 = ARCreateCVPixelBufferFromPool(&self->_outputSegmentationCopyPixelBufferPool, PixelFormatType, self, @"Copied person segmentation output", Width, Height);
  if (!v8)
  {
    if (ARShouldUseLogTypeError_onceToken_14 != -1)
    {
      [ARPersonSegmentationTechnique _prepareOnce:];
    }

    v19 = ARShouldUseLogTypeError_internalOSVersion_14;
    v20 = _ARLogTechnique_10(v8);
    v21 = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v30 = 138543618;
        v31 = v23;
        v32 = 2048;
        selfCopy4 = self;
        v24 = "%{public}@ <%p>: Failed to create a copied buffer for person segmentation result";
        v25 = v21;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v25, v26, v24, &v30, 0x16u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v23 = NSStringFromClass(v27);
      v30 = 138543618;
      v31 = v23;
      v32 = 2048;
      selfCopy4 = self;
      v24 = "Error: %{public}@ <%p>: Failed to create a copied buffer for person segmentation result";
      v25 = v21;
      v26 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    return 0;
  }

  v9 = v8;
  v10 = ARPixelBufferCopy(buffer, v8);
  if ((v10 & 1) == 0)
  {
    if (ARShouldUseLogTypeError_onceToken_14 != -1)
    {
      [ARPersonSegmentationTechnique _prepareOnce:];
    }

    v11 = ARShouldUseLogTypeError_internalOSVersion_14;
    v12 = _ARLogTechnique_10(v10);
    v13 = v12;
    if (v11 == 1)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v30 = 138543618;
        v31 = v15;
        v32 = 2048;
        selfCopy4 = self;
        v16 = "%{public}@ <%p>: Failed to copy for person segmentation result";
        v17 = v13;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_19:
        _os_log_impl(&dword_1C241C000, v17, v18, v16, &v30, 0x16u);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      v15 = NSStringFromClass(v28);
      v30 = 138543618;
      v31 = v15;
      v32 = 2048;
      selfCopy4 = self;
      v16 = "Error: %{public}@ <%p>: Failed to copy for person segmentation result";
      v17 = v13;
      v18 = OS_LOG_TYPE_INFO;
      goto LABEL_19;
    }

    CVPixelBufferRelease(v9);
    return 0;
  }

  return v9;
}

@end