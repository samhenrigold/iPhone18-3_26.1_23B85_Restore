@interface ARSceneDepthTechnique
+ (BOOL)isSupported;
- (ADJasperColorPipelineParameters)pipelineParameters;
- (ARSceneDepthTechnique)initWithPrioritization:(int64_t)prioritization temporalSmoothing:(BOOL)smoothing;
- (BOOL)isBusy;
- (BOOL)isEqual:(id)equal;
- (id)_generateDepthForDownscaledImageData:(id)data error:(id *)error;
- (id)_getCameraCalibration:(id)calibration rotation:(int64_t)rotation inputDimensions:(CGSize)dimensions;
- (id)_rotatedPixelBufferImageData:(__CVBuffer *)data rotationAngle:(int64_t)angle;
- (id)_safeProcessData:(id)data;
- (id)processData:(id)data;
- (id)resultDataClasses;
- (void)_prepareOnDimensionsChange:(CGSize)change outputRotation:(int64_t)rotation error:(id *)error;
- (void)_prepareOnce;
- (void)dealloc;
- (void)prepare:(BOOL)prepare;
- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)timestamp;
- (void)waitForProcessingCompleteInDeterministicMode;
@end

@implementation ARSceneDepthTechnique

+ (BOOL)isSupported
{
  v2 = ARDeviceSupportsJasper(self, a2);
  if (v2)
  {

    LOBYTE(v2) = ARAppleNeuralEngine();
  }

  return v2;
}

- (void)prepare:(BOOL)prepare
{
  os_unfair_lock_lock(&self->_prepLock);
  self->_deterministic = prepare;
  startedPrepare = self->_startedPrepare;
  self->_startedPrepare = 1;
  os_unfair_lock_unlock(&self->_prepLock);
  if (!startedPrepare)
  {
    [(ARSceneDepthTechnique *)self _prepareOnce];
    self->_prepared = 1;
  }
}

- (void)_prepareOnce
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[ARBKSAccelerometer sharedWeakAccelerometerHandle];
  currentOrientation = [v3 currentOrientation];
  if ((currentOrientation - 3) >= 2)
  {
    v5 = 192.0;
  }

  else
  {
    v5 = 256.0;
  }

  if ((currentOrientation - 1) > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1C25C8B68[currentOrientation - 1];
  }

  v19 = 0;
  [(ARSceneDepthTechnique *)self _prepareOnDimensionsChange:v6 outputRotation:&v19 error:v5];
  v7 = v19;
  v8 = v7;
  if (v7)
  {
    if (ARShouldUseLogTypeError_onceToken_16 != -1)
    {
      [ARSceneDepthTechnique _prepareOnce];
    }

    v9 = ARShouldUseLogTypeError_internalOSVersion_16;
    v10 = _ARLogTechnique_12(v7);
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        *buf = 138543874;
        v21 = v13;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2112;
        v25 = v8;
        v14 = "%{public}@ <%p>: Failed preparing scene depth: %@";
        v15 = v11;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_15:
        _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v17 = objc_opt_class();
      v13 = NSStringFromClass(v17);
      *buf = 138543874;
      v21 = v13;
      v22 = 2048;
      selfCopy2 = self;
      v24 = 2112;
      v25 = v8;
      v14 = "Error: %{public}@ <%p>: Failed preparing scene depth: %@";
      v15 = v11;
      v16 = OS_LOG_TYPE_INFO;
      goto LABEL_15;
    }

    delegate = [(ARTechnique *)self delegate];
    [delegate technique:self didFailWithError:v8];
  }
}

- (BOOL)isBusy
{
  v3 = dispatch_semaphore_wait(self->_busySemaphore, 0);
  if (!v3)
  {
    dispatch_semaphore_signal(self->_busySemaphore);
  }

  return v3 != 0;
}

- (ARSceneDepthTechnique)initWithPrioritization:(int64_t)prioritization temporalSmoothing:(BOOL)smoothing
{
  smoothingCopy = smoothing;
  v29.receiver = self;
  v29.super_class = ARSceneDepthTechnique;
  v6 = [(ARImageBasedTechnique *)&v29 init];
  v7 = v6;
  if (v6)
  {
    v6->_prepared = 0;
    v6->_startedPrepare = 0;
    v6->_deterministic = 0;
    v6->_prepLock._os_unfair_lock_opaque = 0;
    v8 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.scenedepthtechnique", 0xFFFFFFFFLL);
    depthProcessingQueue = v7->_depthProcessingQueue;
    v7->_depthProcessingQueue = v8;

    v7->_prioritization = prioritization;
    v7->_inputDimensions = *MEMORY[0x1E695F060];
    v10 = dispatch_semaphore_create(1);
    busySemaphore = v7->_busySemaphore;
    v7->_busySemaphore = v10;

    if (smoothingCopy)
    {
      v12 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.appleDepth.temporalSmoothingMethod"];
    }

    else
    {
      v12 = 0;
    }

    v7->_temporalConsistencyMethod = v12;
    v13 = [objc_alloc(MEMORY[0x1E698C110]) initWithInputPrioritization:prioritization];
    executor = v7->_executor;
    v7->_executor = v13;

    temporalConsistencyMethod = v7->_temporalConsistencyMethod;
    executorParameters = [(ADJasperColorExecutor *)v7->_executor executorParameters];
    [executorParameters setTemporalConsistencyMethod:temporalConsistencyMethod];

    executorParameters2 = [(ADJasperColorExecutor *)v7->_executor executorParameters];
    [executorParameters2 setBufferCopyPolicy:1];

    executorParameters3 = [(ADJasperColorExecutor *)v7->_executor executorParameters];
    [executorParameters3 setIgnoreDistortionInDepthReprojection:1];

    pipeline = [(ADJasperColorExecutor *)v7->_executor pipeline];
    inferenceDescriptor = [pipeline inferenceDescriptor];
    depthOutput = [inferenceDescriptor depthOutput];
    imageDescriptor = [depthOutput imageDescriptor];

    [imageDescriptor sizeForLayout:1];
    v7->_outputDimensionsInOriginalImageRotation.width = v23;
    v7->_outputDimensionsInOriginalImageRotation.height = v24;
    v7->_outputDepthPixelBufferPool = 0;
    v7->_outputConfidencePixelBufferPool = 0;
    v7->_outputSingleFrameDepthPixelBufferPool = 0;
    v7->_outputSingleFrameConfidencePixelBufferPool = 0;
    v7->_outputConfidenceMapPixelBufferPool = 0;
    v7->_outputNormalsInOriginalImageRotationPixelBufferPool = 0;
    v7->_outputScaledDepthPixelBufferPool = 0;
    v7->_outputScaledConfidencePixelBufferPool = 0;
    v7->_outputScaledSingleFrameDepthPixelBufferPool = 0;
    v7->_outputScaledSingleFrameConfidencePixelBufferPool = 0;
    v7->_outputScaledConfidenceMapPixelBufferPool = 0;
    v25 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.appleDepth.computeNormals"];
    v7->_computeNormals = v25;
    if (v25)
    {
      v26 = objc_opt_new();
      normalsHelperBuffer = v7->_normalsHelperBuffer;
      v7->_normalsHelperBuffer = v26;
    }
  }

  return v7;
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_outputDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputSingleFrameDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputSingleFrameConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputConfidenceMapPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputNormalsInOriginalImageRotationPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledSingleFrameDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledSingleFrameConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputScaledConfidenceMapPixelBufferPool);
  v3.receiver = self;
  v3.super_class = ARSceneDepthTechnique;
  [(ARSceneDepthTechnique *)&v3 dealloc];
}

- (ADJasperColorPipelineParameters)pipelineParameters
{
  pipeline = [(ADJasperColorExecutor *)self->_executor pipeline];
  pipelineParameters = [pipeline pipelineParameters];

  return pipelineParameters;
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
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_prioritization == equalCopy[13] && self->_temporalConsistencyMethod == equalCopy[12];

  return v5;
}

- (id)_rotatedPixelBufferImageData:(__CVBuffer *)data rotationAngle:(int64_t)angle
{
  v7 = objc_opt_new();
  [v7 setPixelBuffer:data];
  if (CVPixelBufferGetPixelFormatType(data) == 1278226488)
  {
    v8 = 256;
  }

  else
  {
    v8 = 248;
  }

  v9 = (&self->super.super.super.isa + v8);
  if (!*v9 || [*v9 rotationAngle] != angle || objc_msgSend(*v9, "mirrorMode"))
  {
    v10 = [[ARImageRotationTechnique alloc] initWithRotation:angle mirror:0];
    v11 = *v9;
    *v9 = v10;
  }

  v12 = [*v9 processData:v7];

  return v12;
}

- (id)_getCameraCalibration:(id)calibration rotation:(int64_t)rotation inputDimensions:(CGSize)dimensions
{
  height = dimensions.height;
  width = dimensions.width;
  calibrationCopy = calibration;
  calibrationData = [calibrationCopy calibrationData];

  if (calibrationData)
  {
    adCameraCalibration2 = objc_alloc(MEMORY[0x1E698C180]);
    calibrationData2 = [calibrationCopy calibrationData];
    adCameraCalibration = [adCameraCalibration2 ar_initWithImageData:calibrationCopy calibrationData:calibrationData2];
  }

  else
  {
    adCameraCalibration = [calibrationCopy adCameraCalibration];

    if (!adCameraCalibration)
    {
      goto LABEL_17;
    }

    adCameraCalibration2 = [calibrationCopy adCameraCalibration];
    adCameraCalibration = [adCameraCalibration2 mutableCopy];
  }

  if (rotation)
  {
    v13 = 3;
    if (rotation == 90)
    {
      v13 = 1;
    }

    if (rotation == 180)
    {
      v14 = 2;
    }

    else
    {
      v14 = v13;
    }

    [adCameraCalibration adjustForImageRotation:v14];
  }

  if (width != *MEMORY[0x1E695F060] || height != *(MEMORY[0x1E695F060] + 8))
  {
    [adCameraCalibration scaleAllowStretch:{width, height}];
  }

LABEL_17:

  return adCameraCalibration;
}

- (id)_generateDepthForDownscaledImageData:(id)data error:(id *)error
{
  v175 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v163 = 0;
  v164 = &v163;
  v165 = 0x2020000000;
  p_inputDimensions = &self->_inputDimensions;
  v166 = ARCreateCVPixelBufferFromPool(&self->_outputDepthPixelBufferPool, 1717855600, self, @"Depth Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = ARCreateCVPixelBufferFromPool(&self->_outputConfidencePixelBufferPool, 1717855600, self, @"Confidence Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v155 = 0;
  v156 = &v155;
  v157 = 0x2020000000;
  v158 = ARCreateCVPixelBufferFromPool(&self->_outputSingleFrameDepthPixelBufferPool, 1717855600, self, @"single frame Depth Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v151 = 0;
  v152 = &v151;
  v153 = 0x2020000000;
  v154 = ARCreateCVPixelBufferFromPool(&self->_outputSingleFrameConfidencePixelBufferPool, 1717855600, self, @"single frame Confidence Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v147 = 0;
  v148 = &v147;
  v149 = 0x2020000000;
  v150 = ARCreateCVPixelBufferFromPool(&self->_outputConfidenceMapPixelBufferPool, 1278226488, self, @"Confidence Map Output", self->_inputDimensions.width, self->_inputDimensions.height);
  v139[0] = MEMORY[0x1E69E9820];
  v139[1] = 3221225472;
  v140 = __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke;
  v141 = &unk_1E817C768;
  v142 = &v163;
  v143 = &v159;
  v144 = &v155;
  v145 = &v151;
  v146 = &v147;
  if (!v164[3] || !v160[3] || !v156[3] || !v152[3] || !v148[3])
  {
    _createAllocationError();
    *error = v47 = 0;
    goto LABEL_12;
  }

  v6 = MEMORY[0x1E698C198];
  originalImageData = [dataCopy originalImageData];
  [originalImageData visionTransform];
  [v6 transformMetersToMillimiters:?];
  v135 = v8;
  v136 = v9;
  v137 = v10;
  v138 = v11;

  v12 = [dataCopy rotationOfResultTensor] * 3.14159265 / -180.0;
  v13 = __sincosf_stret(v12 * 0.5);
  v14 = 0;
  _Q2 = vmulq_n_f32(xmmword_1C25C86A0, v13.__sinval);
  _S3 = _Q2.i32[1];
  _S5 = _Q2.i32[2];
  __asm { FMLS            S0, S5, V2.S[2] }

  v21 = vmuls_lane_f32(v13.__cosval, _Q2, 2);
  v22 = vmuls_lane_f32(v13.__cosval, *_Q2.f32, 1);
  _Q0.i32[3] = 0;
  _Q0.f32[0] = _Q0.f32[0] + (v13.__cosval * v13.__cosval);
  _Q0.f32[1] = (v21 + (_Q2.f32[0] * _Q2.f32[1])) + (v21 + (_Q2.f32[0] * _Q2.f32[1]));
  *&v24 = -(v21 - (_Q2.f32[0] * _Q2.f32[1])) - (v21 - (_Q2.f32[0] * _Q2.f32[1]));
  __asm { FMLA            S4, S3, V2.S[1] }

  *&v26 = (_S4 + (v13.__cosval * v13.__cosval)) - (_Q2.f32[0] * _Q2.f32[0]);
  __asm { FMLA            S4, S5, V2.S[1] }

  *&v28 = _S4 + _S4;
  v29.i64[0] = __PAIR64__(v26, v24);
  v29.i64[1] = v28;
  __asm
  {
    FMLA            S7, S5, V2.S[1]
    FMLA            S16, S5, V2.S[2]
  }

  v33.f32[0] = (v22 + (_Q2.f32[2] * _Q2.f32[0])) + (v22 + (_Q2.f32[2] * _Q2.f32[0]));
  v33.f32[1] = _S7 + _S7;
  __asm { FMLS            S5, S3, V2.S[1] }

  v33.i64[1] = _S5;
  v167 = v135;
  v168 = v136;
  v169 = v137;
  v170 = v138;
  memset(buf, 0, sizeof(buf));
  v173 = 0u;
  v174 = 0u;
  do
  {
    _Q0.f32[2] = -(v22 - (_Q2.f32[0] * _Q2.f32[2])) - (v22 - (_Q2.f32[0] * _Q2.f32[2]));
    *&buf[v14] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(_Q0, COERCE_FLOAT(*(&v167 + v14))), v29, *(&v167 + v14), 1), v33, *(&v167 + v14), 2), xmmword_1C25C8560, *(&v167 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v135 = *buf;
  v136 = *&buf[16];
  v137 = v173;
  v138 = v174;
  originalImageData2 = [dataCopy originalImageData];
  v108 = -[ARSceneDepthTechnique _getCameraCalibration:rotation:inputDimensions:](self, "_getCameraCalibration:rotation:inputDimensions:", originalImageData2, [dataCopy rotationOfResultTensor], p_inputDimensions->width, self->_inputDimensions.height);

  originalImageData3 = [dataCopy originalImageData];
  v107 = [(ARSceneDepthTechnique *)self _getCameraCalibration:originalImageData3 rotation:0 inputDimensions:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];

  originalImageData4 = [dataCopy originalImageData];
  pointCloud = [originalImageData4 pointCloud];
  depthPointCloud = [pointCloud depthPointCloud];

  if (!depthPointCloud)
  {
    if (ARShouldUseLogTypeError_onceToken_16 != -1)
    {
      [ARSceneDepthTechnique _prepareOnce];
    }

    v49 = ARShouldUseLogTypeError_internalOSVersion_16;
    v50 = _ARLogTechnique_12(v39);
    v51 = v50;
    if (v49 == 1)
    {
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2048;
        *&buf[14] = self;
        _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Failed generating depth: missing point cloud", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      v58 = objc_opt_class();
      v59 = NSStringFromClass(v58);
      *buf = 138543618;
      *&buf[4] = v59;
      *&buf[12] = 2048;
      *&buf[14] = self;
      _os_log_impl(&dword_1C241C000, v51, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Failed generating depth: missing point cloud", buf, 0x16u);
    }

    goto LABEL_26;
  }

  executor = self->_executor;
  downScalingResults = [dataCopy downScalingResults];
  v42 = [downScalingResults objectAtIndexedSubscript:0];
  pixelBuffer = [v42 pixelBuffer];
  v171 = depthPointCloud;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v171 count:1];
  v45 = [(ADJasperColorExecutor *)executor executeWithColor:pixelBuffer colorCameraCalibration:v108 colorWorldToPlatformTransform:v44 pointClouds:v107 lidarCameraCalibration:&v135 pointCloudWorldToPlatformTransforms:v164 + 3 outDepthMap:*&v135 outConfMap:*&v136 outNonTemporalyConsistentDepthMap:*&v137 outNonTemporalyConsistentConfMap:*&v138 outConfidenceLevels:v160 + 3, v156[3], v152[3], 0];

  if (!v45)
  {
    v54 = [(ADJasperColorExecutor *)self->_executor getIntermediateWithName:@"Unprocessed Conf"];
    pipeline = [(ADJasperColorExecutor *)self->_executor pipeline];
    v56 = [pipeline postProcessConfidence:v54 confidenceOutput:v148[3] confidenceUnits:1];

    if (v56)
    {
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed compute confidence levels with error: %li", v56];
      *error = _createADError(v57);

      goto LABEL_26;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000uLL;
    *&v167 = 0;
    *(&v167 + 1) = &v167;
    v168 = 0x2020000000uLL;
    v131 = 0;
    v132 = &v131;
    v133 = 0x2020000000;
    v134 = 0;
    v127 = 0;
    v128 = &v127;
    v129 = 0x2020000000;
    v130 = 0;
    v123 = 0;
    v124 = &v123;
    v125 = 0x2020000000;
    v126 = 0;
    v115[0] = MEMORY[0x1E69E9820];
    v115[1] = 3221225472;
    v116 = __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke_38;
    v117 = &unk_1E817C768;
    v118 = buf;
    v119 = &v167;
    v120 = &v131;
    v121 = &v127;
    v122 = &v123;
    downScalingResults2 = [dataCopy downScalingResults];
    v61 = [downScalingResults2 objectAtIndexedSubscript:0];
    [v61 regionOfInterest];
    v63 = v62;
    v65 = v64;

    _ZF = p_inputDimensions->width == v63 && self->_inputDimensions.height == v65;
    v67 = _ZF;
    if (!_ZF)
    {
      v75 = ARCreateCVPixelBufferFromPool(&self->_outputScaledDepthPixelBufferPool, 1717855600, self, @"Scaled Depth Output", v63, v65);
      *(*&buf[8] + 24) = v75;
      v76 = ARCreateCVPixelBufferFromPool(&self->_outputScaledConfidencePixelBufferPool, 1717855600, self, @"Scaled Confidence Output", v63, v65);
      *(*(&v167 + 1) + 24) = v76;
      v77 = ARCreateCVPixelBufferFromPool(&self->_outputScaledSingleFrameDepthPixelBufferPool, 1717855600, self, @"Scaled single frame Depth Output", v63, v65);
      v132[3] = v77;
      v78 = ARCreateCVPixelBufferFromPool(&self->_outputScaledSingleFrameConfidencePixelBufferPool, 1717855600, self, @"Scaled single frame Confidence Output", v63, v65);
      v128[3] = v78;
      v79 = ARCreateCVPixelBufferFromPool(&self->_outputScaledConfidenceMapPixelBufferPool, 1278226488, self, @"Scaled Confidence Map Output", v63, v65);
      v124[3] = v79;
      v80 = *(*&buf[8] + 24);
      if (!v80 || !*(*(&v167 + 1) + 24) || !v132[3] || !v128[3] || !v79)
      {
        v82 = _createAllocationError();
LABEL_56:
        v47 = 0;
        *error = v82;
LABEL_70:
        v116(v115);
        _Block_object_dispose(&v123, 8);
        _Block_object_dispose(&v127, 8);
        _Block_object_dispose(&v131, 8);
        _Block_object_dispose(&v167, 8);
        _Block_object_dispose(buf, 8);
        goto LABEL_27;
      }

      v81 = ARResizeBufferWithNearestNeighbors(v164[3], v80, 4uLL);
      if (v81 || (v81 = ARResizeBufferWithNearestNeighbors(v160[3], *(*(&v167 + 1) + 24), 4uLL)) != 0 || self->_temporalConsistencyMethod && ((v81 = ARResizeBufferWithNearestNeighbors(v156[3], v132[3], 4uLL)) != 0 || (v81 = ARResizeBufferWithNearestNeighbors(v152[3], v128[3], 4uLL)) != 0) || (v81 = ARResizeBufferWithNearestNeighbors(v148[3], v124[3], 1uLL)) != 0)
      {
        v82 = _createResamplingError(v81);
        goto LABEL_56;
      }
    }

    rotationOfResultTensor = [dataCopy rotationOfResultTensor];
    v69 = buf;
    if (v67)
    {
      v69 = &v163;
    }

    v106 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(*(v69 + 1) + 24) rotationAngle:rotationOfResultTensor];
    v70 = &v167;
    if (v67)
    {
      v70 = &v159;
    }

    v105 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(v70[1] + 24) rotationAngle:rotationOfResultTensor];
    v71 = &v123;
    if (v67)
    {
      v71 = &v147;
    }

    v72 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(v71[1] + 24) rotationAngle:rotationOfResultTensor];
    if (self->_temporalConsistencyMethod)
    {
      v73 = &v131;
      if (v67)
      {
        v73 = &v155;
      }

      v104 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(v73[1] + 24) rotationAngle:rotationOfResultTensor];
      v74 = &v127;
      if (v67)
      {
        v74 = &v151;
      }

      v103 = [(ARSceneDepthTechnique *)self _rotatedPixelBufferImageData:*(v74[1] + 24) rotationAngle:rotationOfResultTensor];
    }

    else
    {
      v103 = 0;
      v104 = 0;
    }

    v83 = [ARMLDepthData alloc];
    originalImageData5 = [dataCopy originalImageData];
    objc_msgSend_timestamp(originalImageData5);
    v86 = -[ARMLDepthData initWithTimestamp:depthBuffer:confidenceBuffer:source:](v83, "initWithTimestamp:depthBuffer:confidenceBuffer:source:", [v106 pixelBuffer], objc_msgSend(v105, "pixelBuffer"), 2, v85);

    -[ARMLDepthData setConfidenceMap:](v86, "setConfidenceMap:", [v72 pixelBuffer]);
    originalImageData6 = [dataCopy originalImageData];
    [(ARMLDepthData *)v86 setSourceImageData:originalImageData6];

    if (self->_temporalConsistencyMethod)
    {
      -[ARMLDepthData setSingleFrameDepthBuffer:](v86, "setSingleFrameDepthBuffer:", [v104 pixelBuffer]);
      -[ARMLDepthData setSingleFrameConfidenceBuffer:](v86, "setSingleFrameConfidenceBuffer:", [v103 pixelBuffer]);
    }

    if (self->_computeNormals && ((Width = CVPixelBufferGetWidth(-[ARMLDepthData depthBuffer](v86, "depthBuffer")), Height = CVPixelBufferGetHeight(-[ARMLDepthData depthBuffer](v86, "depthBuffer")), v90 = ARCreateCVPixelBufferFromPool(&self->_outputNormalsInOriginalImageRotationPixelBufferPool, 1380410945, self, @"Normals Map", Width, Height), v111[0] = MEMORY[0x1E69E9820], v111[1] = 3221225472, v112 = __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke_2, v113 = &__block_descriptor_40_e5_v8__0l, (v114 = v90) == 0) ? (_createAllocationError(), v97 = 0, *error = objc_claimAutoreleasedReturnValue()) : (([dataCopy originalImageData], v91 = objc_claimAutoreleasedReturnValue(), -[ARSceneDepthTechnique _getCameraCalibration:rotation:inputDimensions:](self, "_getCameraCalibration:rotation:inputDimensions:", v91, 0, Width, Height), v92 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v92, "intrinsicMatrix"), v101 = v94, v102 = v93, v92, v91, (v95 = objc_msgSend(MEMORY[0x1E698C138], "normalsFromDepth:focalLength:principalPoint:normalsOutput:withHelperBuffer:", -[ARMLDepthData depthBuffer](v86, "depthBuffer"), v90, self->_normalsHelperBuffer, v102, *&v101, *(&v101 + 1))) == 0) ? (-[ADJasperColorExecutor executorParameters](self->_executor, "executorParameters"), v98 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v98, "logger"), v99 = objc_claimAutoreleasedReturnValue(), objc_msgSend(dataCopy, "originalImageData"), v100 = objc_claimAutoreleasedReturnValue(), objc_msgSend_timestamp(v100), objc_msgSend(v99, "logPixelBuffer:name:timestamp:", v90, "normals"), v100, v99, v98, -[ARMLDepthData setNormalsBuffer:](v86, "setNormalsBuffer:", v90), v97 = 1) : (objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Unable to generate normal map: %li", v95), v96 = objc_claimAutoreleasedReturnValue(), _createADError(v96), *error = objc_claimAutoreleasedReturnValue(), v96, v97 = 0)), v112(v111), (v97 & 1) == 0))
    {
      v47 = 0;
    }

    else
    {
      v47 = v86;
    }

    goto LABEL_70;
  }

  v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed generating depth with AD error %li", v45];
  *error = _createADError(v46);

LABEL_26:
  v47 = 0;
LABEL_27:

LABEL_12:
  v140(v139);
  _Block_object_dispose(&v147, 8);
  _Block_object_dispose(&v151, 8);
  _Block_object_dispose(&v155, 8);
  _Block_object_dispose(&v159, 8);
  _Block_object_dispose(&v163, 8);

  return v47;
}

void __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[6] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[7] + 8) + 24));
  v2 = *(*(a1[8] + 8) + 24);

  CVPixelBufferRelease(v2);
}

void __68__ARSceneDepthTechnique__generateDepthForDownscaledImageData_error___block_invoke_38(void *a1)
{
  CVPixelBufferRelease(*(*(a1[4] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[5] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[6] + 8) + 24));
  CVPixelBufferRelease(*(*(a1[7] + 8) + 24));
  v2 = *(*(a1[8] + 8) + 24);

  CVPixelBufferRelease(v2);
}

- (void)waitForProcessingCompleteInDeterministicMode
{
  if (self->_deterministic)
  {
    dispatch_sync(self->_depthProcessingQueue, &__block_literal_global_36);
  }
}

- (id)_safeProcessData:(id)data
{
  v58 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v51.receiver = self;
  v51.super_class = ARSceneDepthTechnique;
  v5 = [(ARImageBasedTechnique *)&v51 processData:dataCopy];
  if (!self->_prepared)
  {
    v13 = 0;
    goto LABEL_41;
  }

  isDroppedData = [dataCopy isDroppedData];
  if (!isDroppedData)
  {
    downScalingResults = [dataCopy downScalingResults];
    v15 = [downScalingResults count];

    if (!v15)
    {
      if (ARShouldUseLogTypeError_onceToken_16 != -1)
      {
        [ARSceneDepthTechnique _prepareOnce];
      }

      v31 = ARShouldUseLogTypeError_internalOSVersion_16;
      v32 = _ARLogGeneral_6(v16);
      v7 = v32;
      if (v31 == 1)
      {
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v33 = objc_opt_class();
        v9 = NSStringFromClass(v33);
        *buf = 138543618;
        v53 = v9;
        v54 = 2048;
        selfCopy7 = self;
        v10 = "%{public}@ <%p>: Received unexpected data, downScalingResults is empty.";
        v11 = v7;
        v12 = OS_LOG_TYPE_ERROR;
        goto LABEL_6;
      }

      if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        goto LABEL_7;
      }

      v45 = objc_opt_class();
      v9 = NSStringFromClass(v45);
      *buf = 138543618;
      v53 = v9;
      v54 = 2048;
      selfCopy7 = self;
      v10 = "Error: %{public}@ <%p>: Received unexpected data, downScalingResults is empty.";
LABEL_5:
      v11 = v7;
      v12 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1C241C000, v11, v12, v10, buf, 0x16u);

      goto LABEL_7;
    }

    downScalingResults2 = [dataCopy downScalingResults];
    v18 = [downScalingResults2 objectAtIndexedSubscript:0];
    pixelBuffer = [v18 pixelBuffer];

    rotationOfResultTensor = [dataCopy rotationOfResultTensor];
    Width = CVPixelBufferGetWidth(pixelBuffer);
    v50 = 0;
    [(ARSceneDepthTechnique *)self _prepareOnDimensionsChange:rotationOfResultTensor outputRotation:&v50 error:Width, CVPixelBufferGetHeight(pixelBuffer)];
    v22 = v50;
    if (v22)
    {
      v7 = v22;
      if (ARShouldUseLogTypeError_onceToken_16 != -1)
      {
        [ARSceneDepthTechnique _prepareOnce];
      }

      v23 = ARShouldUseLogTypeError_internalOSVersion_16;
      v24 = _ARLogTechnique_12(v22);
      v25 = v24;
      if (v23 == 1)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v26 = objc_opt_class();
          v27 = NSStringFromClass(v26);
          *buf = 138543874;
          v53 = v27;
          v54 = 2048;
          selfCopy7 = self;
          v56 = 2112;
          v57 = v7;
          v28 = "%{public}@ <%p>: Failed preparing scene depth: %@";
          v29 = v25;
          v30 = OS_LOG_TYPE_ERROR;
LABEL_29:
          _os_log_impl(&dword_1C241C000, v29, v30, v28, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v44 = objc_opt_class();
        v27 = NSStringFromClass(v44);
        *buf = 138543874;
        v53 = v27;
        v54 = 2048;
        selfCopy7 = self;
        v56 = 2112;
        v57 = v7;
        v28 = "Error: %{public}@ <%p>: Failed preparing scene depth: %@";
        v29 = v25;
        v30 = OS_LOG_TYPE_INFO;
        goto LABEL_29;
      }

      delegate = [(ARTechnique *)self delegate];
      [delegate technique:self didFailWithError:v7];
LABEL_38:
      v13 = 0;
      goto LABEL_39;
    }

    v49 = 0;
    delegate = [(ARSceneDepthTechnique *)self _generateDepthForDownscaledImageData:dataCopy error:&v49];
    v35 = v49;
    v7 = v35;
    if (!v35)
    {
      delegate = delegate;
      v13 = delegate;
LABEL_39:

      goto LABEL_40;
    }

    if (ARShouldUseLogTypeError_onceToken_16 != -1)
    {
      [ARSceneDepthTechnique _prepareOnce];
    }

    v36 = ARShouldUseLogTypeError_internalOSVersion_16;
    v37 = _ARLogTechnique_12(v35);
    v38 = v37;
    if (v36 == 1)
    {
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v39 = objc_opt_class();
        v40 = NSStringFromClass(v39);
        *buf = 138543874;
        v53 = v40;
        v54 = 2048;
        selfCopy7 = self;
        v56 = 2112;
        v57 = v7;
        v41 = "%{public}@ <%p>: Failed running scene depth frame: %@";
        v42 = v38;
        v43 = OS_LOG_TYPE_ERROR;
LABEL_36:
        _os_log_impl(&dword_1C241C000, v42, v43, v41, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v46 = objc_opt_class();
      v40 = NSStringFromClass(v46);
      *buf = 138543874;
      v53 = v40;
      v54 = 2048;
      selfCopy7 = self;
      v56 = 2112;
      v57 = v7;
      v41 = "Error: %{public}@ <%p>: Failed running scene depth frame: %@";
      v42 = v38;
      v43 = OS_LOG_TYPE_INFO;
      goto LABEL_36;
    }

    delegate2 = [(ARTechnique *)self delegate];
    [delegate2 technique:self didFailWithError:v7];

    goto LABEL_38;
  }

  v7 = _ARLogGeneral_6(isDroppedData);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *buf = 138543618;
    v53 = v9;
    v54 = 2048;
    selfCopy7 = self;
    v10 = "%{public}@ <%p>: Downscaled data is dropped, the downscaling technique is not prepared yet.";
    goto LABEL_5;
  }

LABEL_7:
  v13 = 0;
LABEL_40:

LABEL_41:

  return v13;
}

- (id)processData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    depthProcessingQueue = self->_depthProcessingQueue;
    v7 = MEMORY[0x1E69E9820];
    v8 = 3221225472;
    v9 = __37__ARSceneDepthTechnique_processData___block_invoke;
    v10 = &unk_1E817BEC8;
    selfCopy = self;
    v12 = dataCopy;
    dispatch_async(depthProcessingQueue, &v7);
    [(ARSceneDepthTechnique *)self waitForProcessingCompleteInDeterministicMode:v7];
  }

  return dataCopy;
}

void __37__ARSceneDepthTechnique_processData___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  dispatch_semaphore_wait(*(*(a1 + 32) + 280), 0xFFFFFFFFFFFFFFFFLL);
  v2 = *(a1 + 40);
  objc_msgSend_timestamp(v2);
  kdebug_trace();
  v3 = [*(a1 + 32) _safeProcessData:v2];
  objc_msgSend_timestamp(v2);
  kdebug_trace();
  dispatch_semaphore_signal(*(*(a1 + 32) + 280));
  v4 = *(a1 + 32);
  if (v3)
  {
    v6[0] = v3;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    objc_msgSend_timestamp(v2);
    [v4 pushResultData:v5 forTimestamp:?];
  }

  else
  {
    objc_msgSend_timestamp(v2);
    [v4 pushResultData:MEMORY[0x1E695E0F0] forTimestamp:?];
  }
}

- (void)_prepareOnDimensionsChange:(CGSize)change outputRotation:(int64_t)rotation error:(id *)error
{
  height = change.height;
  width = change.width;
  v36 = *MEMORY[0x1E69E9840];
  p_inputDimensions = &self->_inputDimensions;
  v11 = change.width == self->_inputDimensions.width && change.height == self->_inputDimensions.height;
  if (!v11 || self->_outputRotation != rotation)
  {
    v12 = _ARLogTechnique_12(self);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = p_inputDimensions->width;
      v16 = p_inputDimensions->height;
      *buf = 138544642;
      v25 = v14;
      v26 = 2048;
      selfCopy = self;
      v28 = 2048;
      v29 = v15;
      v30 = 2048;
      v31 = v16;
      v32 = 2048;
      v33 = width;
      v34 = 2048;
      v35 = height;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ <%p>: preparing AppleDepth executor on orientation change: (%.0f,%.0f) -> (%.0f,%.0f)", buf, 0x3Eu);
    }

    height = [(ADJasperColorExecutor *)self->_executor prepareForEngineType:4 roi:1 exifOrientation:0 rotationPreference:0.0, 0.0, width, height];
    if (height)
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed preparing AppleDepth executor AD error %li", height];
      *error = _createADError(v18);
    }

    else
    {
      v19 = [[ARImageRotationTechnique alloc] initWithRotation:rotation mirror:0];
      oneComponent8RotationTechnique = self->_oneComponent8RotationTechnique;
      self->_oneComponent8RotationTechnique = v19;

      v21 = [[ARImageRotationTechnique alloc] initWithRotation:rotation mirror:0];
      float32RotationTechnique = self->_float32RotationTechnique;
      self->_float32RotationTechnique = v21;

      v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputDepthPixelBufferPool, 1717855600, 0, width, height);
      if (v23 || (v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputConfidencePixelBufferPool, 1717855600, 0, width, height)) != 0 || (v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputSingleFrameDepthPixelBufferPool, 1717855600, 0, width, height)) != 0 || (v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputSingleFrameConfidencePixelBufferPool, 1717855600, 0, width, height)) != 0 || (v23 = ARRecreatePixelBufferPoolOnConfigurationChangesWithZeroCopyOption(&self->_outputConfidenceMapPixelBufferPool, 1278226488, 0, width, height)) != 0)
      {
        *error = _createPoolAllocationError(v23);
      }

      else
      {
        p_inputDimensions->width = width;
        p_inputDimensions->height = height;
        self->_outputRotation = rotation;
      }
    }
  }
}

- (void)pushEmptyResultOnAsynchronousQueueForTimestamp:(double)timestamp
{
  objc_initWeak(&location, self);
  depthProcessingQueue = self->_depthProcessingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__ARSceneDepthTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke;
  block[3] = &unk_1E817C4E8;
  objc_copyWeak(v7, &location);
  v7[1] = *&timestamp;
  dispatch_async(depthProcessingQueue, block);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __72__ARSceneDepthTechnique_pushEmptyResultOnAsynchronousQueueForTimestamp___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained pushResultData:MEMORY[0x1E695E0F0] forTimestamp:*(a1 + 40)];
}

@end