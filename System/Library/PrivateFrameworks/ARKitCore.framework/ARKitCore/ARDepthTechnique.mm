@interface ARDepthTechnique
+ (id)sceneDepthTechniqueForPrioritization:(int64_t)prioritization temporalSmoothing:(BOOL)smoothing;
- (ARDepthTechnique)initWithPrioritization:(int64_t)prioritization temporalSmoothing:(BOOL)smoothing;
- (BOOL)isEqual:(id)equal;
- (__CVBuffer)_executeLKTWithFrame:(__CVBuffer *)frame;
- (id)_rotatedPixelBufferImageData:(__CVBuffer *)data;
- (id)createResultDataFromTensors:(id *)tensors numberOfOutputTensors:(unint64_t)outputTensors imageDataForNeuralNetwork:(id)network inputImageData:(id)data rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)interest;
- (id)networkModesForOrientation:(int64_t)orientation;
- (id)resultDataClasses;
- (int)bindInputBuffer:(unint64_t)buffer withImage:(id)image andOriginalImageData:(id)data rotationOfResultTensor:(int64_t)tensor;
- (int)prepareBindInputBuffer:(unint64_t)buffer withName:(id)name;
- (void)_allocateLKTBuffers;
- (void)_initLKT;
- (void)_updateOpticalFlowOutputBufferInBackgroundFromImageData:(id)data;
- (void)dealloc;
- (void)networkModeDidChange:(id)change toMode:(id)mode;
- (void)setOpticalFlowOutputBuffer:(__CVBuffer *)buffer;
@end

@implementation ARDepthTechnique

- (ARDepthTechnique)initWithPrioritization:(int64_t)prioritization temporalSmoothing:(BOOL)smoothing
{
  smoothingCopy = smoothing;
  v54[2] = *MEMORY[0x1E69E9840];
  if (prioritization < 5)
  {
    v6 = dbl_1C25C86B0[prioritization];
    v7 = dbl_1C25C86D8[prioritization];
    goto LABEL_12;
  }

  if (ARShouldUseLogTypeError_onceToken_6 != -1)
  {
    [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
  }

  v8 = ARShouldUseLogTypeError_internalOSVersion_6;
  v9 = _ARLogGeneral_3(self);
  v10 = v9;
  if (v8 == 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "Unhandled ADDepthPrioritization";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
LABEL_10:
      _os_log_impl(&dword_1C241C000, v12, v13, v11, buf, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    v11 = "Error: Unhandled ADDepthPrioritization";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
    goto LABEL_10;
  }

  v6 = 0.0;
  v7 = 0.0;
LABEL_12:
  obj = [objc_alloc(MEMORY[0x1E698C118]) initWithInputPrioritization:prioritization];
  inferenceDescriptor = [obj inferenceDescriptor];
  colorInput = [inferenceDescriptor colorInput];
  name = [colorInput name];
  v54[0] = name;
  jasperInput = [inferenceDescriptor jasperInput];
  name2 = [jasperInput name];
  v54[1] = name2;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];

  depthOutput = [inferenceDescriptor depthOutput];
  name3 = [depthOutput name];
  v53[0] = name3;
  confidenceOutput = [inferenceDescriptor confidenceOutput];
  name4 = [confidenceOutput name];
  v53[1] = name4;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];

  if (smoothingCopy)
  {
    v25 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.appleDepth.temporalSmoothingMethod"];
    v26 = _ARLogTechnique_0(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v28 = NSStringFromClass(v27);
      *buf = 138543874;
      v48 = v28;
      v49 = 2048;
      selfCopy = self;
      v51 = 2048;
      v52 = v25;
      _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Temporal smoothing enabled, using method: %ld", buf, 0x20u);
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.depthtechnique", 0xFFFFFFFFLL);
  networkURL = [inferenceDescriptor networkURL];
  absoluteString = [networkURL absoluteString];
  v46.receiver = self;
  v46.super_class = ARDepthTechnique;
  v32 = [(ARMLImageProcessingTechnique *)&v46 initWithDispatchQueue:v29 inputTensorNames:v19 outputTensorNames:v24 networkInputScaleBeforeRotation:absoluteString networkFilePath:v6, v7];

  if (v32)
  {
    v32->_prioritization = prioritization;
    v32->_outputSize.width = v6;
    v32->_outputSize.height = v7;
    objc_storeStrong(&v32->_pipeline, obj);
    objc_storeStrong(&v32->_inferenceDescriptor, inferenceDescriptor);
    v32->_outputDepthPixelBufferPool = 0;
    v32->_outputConfidencePixelBufferPool = 0;
    v32->_outputConfidenceMapPixelBufferPool = 0;
    v32->_scaledDepthOutputPixelBufferPool = 0;
    v32->_scaledConfidenceOutputPixelBufferPool = 0;
    v32->_scaledConfidenceMapPixelBufferPool = 0;
    v32->_outputTemporalConsistentDepthPixelBufferPool = 0;
    v32->_outputTemporalConsistentConfidencePixelBufferPool = 0;
    v32->_scaledTemporallyConsistentDepthOutputPixelBufferPool = 0;
    v32->_scaledTemporallyConsistentConfidenceOutputPixelBufferPool = 0;
    v32->_previousDepthBuffer = 0;
    v32->_previousConfidenceBuffer = 0;
    v32->_layout = 0;
    v32->_temporalConsistencyMethod = v25;
    if (v25 == 2)
    {
      [(ARDepthTechnique *)v32 _initLKT];
    }

    v33 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.appleDepth.computeNormals"];
    v32->_computeNormals = v33;
    v34 = _ARLogTechnique_0(v33);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      computeNormals = v32->_computeNormals;
      *buf = 138543874;
      v48 = v36;
      if (computeNormals)
      {
        v38 = @"Enabled";
      }

      else
      {
        v38 = @"Disabled";
      }

      v49 = 2048;
      selfCopy = v32;
      v51 = 2112;
      v52 = v38;
      _os_log_impl(&dword_1C241C000, v34, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Compute normals: %@", buf, 0x20u);
    }

    if (v32->_computeNormals)
    {
      v39 = objc_opt_new();
      normalsHelperBuffer = v32->_normalsHelperBuffer;
      v32->_normalsHelperBuffer = v39;
    }

    v41 = [MEMORY[0x1E698C128] defaultLoggerWithName:@"arkitdepth"];
    adLogger = v32->_adLogger;
    v32->_adLogger = v41;
  }

  return v32;
}

- (void)dealloc
{
  [(ARDepthTechnique *)self setOpticalFlowOutputBuffer:0];
  CVPixelBufferRelease(self->_previousDepthBuffer);
  CVPixelBufferRelease(self->_previousConfidenceBuffer);
  CVPixelBufferRelease(self->_jasperInputBuffer);
  CVPixelBufferRelease(self->_previousWarpedDepthBuffer);
  CVPixelBufferRelease(self->_previousWarpedConfidenceBuffer);
  CVPixelBufferPoolRelease(self->_outputDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputConfidenceMapPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputTemporalConsistentDepthPixelBufferPool);
  CVPixelBufferPoolRelease(self->_outputTemporalConsistentConfidencePixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledDepthOutputPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledConfidenceOutputPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledConfidenceMapPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledTemporallyConsistentDepthOutputPixelBufferPool);
  CVPixelBufferPoolRelease(self->_scaledTemporallyConsistentConfidenceOutputPixelBufferPool);
  CVPixelBufferPoolRelease(self->_opticalFlowPixelBufferPool);
  CVPixelBufferPoolRelease(self->_normalPixelBufferPool);
  v3.receiver = self;
  v3.super_class = ARDepthTechnique;
  [(ARMLImageProcessingTechnique *)&v3 dealloc];
}

- (void)_initLKT
{
  v43 = *MEMORY[0x1E69E9840];
  self->_currentFrameIndex = 0;
  lKTTexturesDescriptor = [(ADJasperColorPipeline *)self->_pipeline LKTTexturesDescriptor];
  lktDescriptor = self->_lktDescriptor;
  self->_lktDescriptor = lKTTexturesDescriptor;

  v5 = ARCreateFixedPriorityDispatchQueue("com.apple.arkit.depthtechnique.lkt", 4294967285);
  lktProcessingQueue = self->_lktProcessingQueue;
  self->_lktProcessingQueue = v5;

  self->_opticalFlowOutputBufferLock._os_unfair_lock_opaque = 0;
  array = [MEMORY[0x1E695DF70] array];
  features = self->_features;
  self->_features = array;

  array2 = [MEMORY[0x1E695DF70] array];
  derivatives = self->_derivatives;
  self->_derivatives = array2;

  array3 = [MEMORY[0x1E695DF70] array];
  pyramids = self->_pyramids;
  self->_pyramids = array3;

  v13 = [ARKitUserDefaults integerForKey:@"com.apple.arkit.appleDepth.temporalFilteringStoredFrames"];
  self->_storedFramesCount = v13;
  v14 = _ARLogTechnique_0(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    storedFramesCount = self->_storedFramesCount;
    v37 = 138543874;
    v38 = v16;
    v39 = 2048;
    selfCopy5 = self;
    v41 = 2048;
    v42 = storedFramesCount;
    _os_log_impl(&dword_1C241C000, v14, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Using %ti stored frames for temporal filtering", &v37, 0x20u);
  }

  v18 = MTLCreateSystemDefaultDevice();
  device = self->_device;
  self->_device = v18;

  v20 = self->_device;
  if (v20)
  {
    newCommandQueue = [(MTLDevice *)v20 newCommandQueue];
    commandQueue = self->_commandQueue;
    self->_commandQueue = newCommandQueue;

    if (self->_commandQueue)
    {
      [(ARDepthTechnique *)self _allocateLKTBuffers];
      return;
    }

    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [ARDepthTechnique _initLKT];
    }

    v30 = ARShouldUseLogTypeError_internalOSVersion_6;
    v31 = _ARLogTechnique_0(v23);
    v26 = v31;
    if (v30 == 1)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v28 = NSStringFromClass(v32);
        v37 = 138543618;
        v38 = v28;
        v39 = 2048;
        selfCopy5 = self;
        v29 = "%{public}@ <%p>: Couldn't create command queue for temporal filtering";
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    if (!os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v36 = objc_opt_class();
    v28 = NSStringFromClass(v36);
    v37 = 138543618;
    v38 = v28;
    v39 = 2048;
    selfCopy5 = self;
    v29 = "Error: %{public}@ <%p>: Couldn't create command queue for temporal filtering";
LABEL_21:
    v33 = v26;
    v34 = OS_LOG_TYPE_INFO;
    goto LABEL_22;
  }

  if (ARShouldUseLogTypeError_onceToken_6 != -1)
  {
    [ARDepthTechnique _initLKT];
  }

  v24 = ARShouldUseLogTypeError_internalOSVersion_6;
  v25 = _ARLogTechnique_0(v20);
  v26 = v25;
  if (v24 != 1)
  {
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      goto LABEL_23;
    }

    v35 = objc_opt_class();
    v28 = NSStringFromClass(v35);
    v37 = 138543618;
    v38 = v28;
    v39 = 2048;
    selfCopy5 = self;
    v29 = "Error: %{public}@ <%p>: Couldn't create system default device for temporal filtering";
    goto LABEL_21;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v37 = 138543618;
    v38 = v28;
    v39 = 2048;
    selfCopy5 = self;
    v29 = "%{public}@ <%p>: Couldn't create system default device for temporal filtering";
LABEL_16:
    v33 = v26;
    v34 = OS_LOG_TYPE_ERROR;
LABEL_22:
    _os_log_impl(&dword_1C241C000, v33, v34, v29, &v37, 0x16u);
  }

LABEL_23:
}

- (void)_allocateLKTBuffers
{
  v75 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_features removeAllObjects];
  [(NSMutableArray *)self->_derivatives removeAllObjects];
  [(NSMutableArray *)self->_pyramids removeAllObjects];
  CVPixelBufferRelease(self->_previousDepthBuffer);
  self->_previousDepthBuffer = 0;
  v3 = objc_alloc(MEMORY[0x1E698C120]);
  device = self->_device;
  [(ADLKTTexturesDescriptor *)self->_lktDescriptor inputSizeForLayout:self->_layout];
  v6 = v5;
  v8 = v7;
  lktDescriptor = self->_lktDescriptor;
  if (lktDescriptor)
  {
    objc_msgSend_opticalFlowConfig(lktDescriptor);
    v10 = v64;
  }

  else
  {
    v10 = 0;
    v67 = 0;
    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
  }

  v11 = [v3 initWithDevice:device inputSize:v10 scales:{v6, v8}];
  lkt = self->_lkt;
  self->_lkt = v11;

  if (self->_lkt)
  {
    if (self->_storedFramesCount >= 1)
    {
      v14 = 0;
      do
      {
        array = [MEMORY[0x1E695DF70] array];
        [(NSMutableArray *)self->_features setObject:array atIndexedSubscript:v14];

        array2 = [MEMORY[0x1E695DF70] array];
        [(NSMutableArray *)self->_derivatives setObject:array2 atIndexedSubscript:v14];

        array3 = [MEMORY[0x1E695DF70] array];
        [(NSMutableArray *)self->_pyramids setObject:array3 atIndexedSubscript:v14];

        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        pyramidsDescriptors = [(ADLKTTexturesDescriptor *)self->_lktDescriptor pyramidsDescriptors];
        v19 = [pyramidsDescriptors countByEnumeratingWithState:&v60 objects:v70 count:16];
        if (v19)
        {
          v20 = *v61;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v61 != v20)
              {
                objc_enumerationMutation(pyramidsDescriptors);
              }

              v22 = *(*(&v60 + 1) + 8 * i);
              v23 = [(NSMutableArray *)self->_pyramids objectAtIndexedSubscript:v14];
              [v22 sizeForLayout:self->_layout];
              v26 = textureForSizeWithPixelFormatAndMetalDevice([v22 pixelFormat], self->_device, v24, v25);
              [v23 addObject:v26];
            }

            v19 = [pyramidsDescriptors countByEnumeratingWithState:&v60 objects:v70 count:16];
          }

          while (v19);
        }

        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        featuresDescriptors = [(ADLKTTexturesDescriptor *)self->_lktDescriptor featuresDescriptors];
        v28 = [featuresDescriptors countByEnumeratingWithState:&v56 objects:v69 count:16];
        if (v28)
        {
          v29 = *v57;
          do
          {
            for (j = 0; j != v28; ++j)
            {
              if (*v57 != v29)
              {
                objc_enumerationMutation(featuresDescriptors);
              }

              v31 = *(*(&v56 + 1) + 8 * j);
              v32 = [(NSMutableArray *)self->_features objectAtIndexedSubscript:v14];
              [v31 sizeForLayout:self->_layout];
              v35 = textureForSizeWithPixelFormatAndMetalDevice([v31 pixelFormat], self->_device, v33, v34);
              [v32 addObject:v35];
            }

            v28 = [featuresDescriptors countByEnumeratingWithState:&v56 objects:v69 count:16];
          }

          while (v28);
        }

        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        derivitivesDescriptors = [(ADLKTTexturesDescriptor *)self->_lktDescriptor derivitivesDescriptors];
        v37 = [derivitivesDescriptors countByEnumeratingWithState:&v52 objects:v68 count:16];
        if (v37)
        {
          v38 = *v53;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v53 != v38)
              {
                objc_enumerationMutation(derivitivesDescriptors);
              }

              v40 = *(*(&v52 + 1) + 8 * k);
              v41 = [(NSMutableArray *)self->_derivatives objectAtIndexedSubscript:v14];
              [v40 sizeForLayout:self->_layout];
              v44 = textureForSizeWithPixelFormatAndMetalDevice([v40 pixelFormat], self->_device, v42, v43);
              [v41 addObject:v44];
            }

            v37 = [derivitivesDescriptors countByEnumeratingWithState:&v52 objects:v68 count:16];
          }

          while (v37);
        }

        ++v14;
      }

      while (v14 < self->_storedFramesCount);
    }
  }

  else
  {
    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [ARDepthTechnique _initLKT];
    }

    v45 = ARShouldUseLogTypeError_internalOSVersion_6;
    v46 = _ARLogTechnique_0(v13);
    v47 = v46;
    if (v45 == 1)
    {
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v48 = objc_opt_class();
        v49 = NSStringFromClass(v48);
        *buf = 138543618;
        v72 = v49;
        v73 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Couldn't create DFLKTOpticalFlow for temporal filtering", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v50 = objc_opt_class();
      v51 = NSStringFromClass(v50);
      *buf = 138543618;
      v72 = v51;
      v73 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v47, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Couldn't create DFLKTOpticalFlow for temporal filtering", buf, 0x16u);
    }
  }
}

- (void)setOpticalFlowOutputBuffer:(__CVBuffer *)buffer
{
  opticalFlowOutputBuffer = self->_opticalFlowOutputBuffer;
  if (opticalFlowOutputBuffer != buffer)
  {
    CVPixelBufferRelease(opticalFlowOutputBuffer);
    self->_opticalFlowOutputBuffer = buffer;

    CVPixelBufferRetain(buffer);
  }
}

- (__CVBuffer)_executeLKTWithFrame:(__CVBuffer *)frame
{
  currentFrameIndex = self->_currentFrameIndex;
  storedFramesCount = currentFrameIndex;
  if (!currentFrameIndex)
  {
    storedFramesCount = self->_storedFramesCount;
  }

  v27 = storedFramesCount;
  v7 = bindPixelBufferToMTL2DTextureWithMetalDevice(frame, self->_device);
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  lkt = self->_lkt;
  v10 = [(NSMutableArray *)self->_pyramids objectAtIndexedSubscript:currentFrameIndex];
  v11 = [(NSMutableArray *)self->_features objectAtIndexedSubscript:currentFrameIndex];
  v12 = [(NSMutableArray *)self->_derivatives objectAtIndexedSubscript:currentFrameIndex];
  v13 = lkt;
  v14 = v7;
  [(ADLKTOpticalFlow *)v13 encodePyramidFeaturesToCommandBuffer:commandBuffer colorTexture:v7 outPyramidsArray:v10 outFeaturesArray:v11 outDerivitiveArray:v12];

  [commandBuffer commit];
  if (!self->_previousDepthBuffer)
  {
    v17 = 0;
LABEL_10:
    [commandBuffer waitUntilCompleted];
    self->_currentFrameIndex = (currentFrameIndex + 1) % self->_storedFramesCount;
    goto LABEL_11;
  }

  if (frame)
  {
    Width = CVPixelBufferGetWidth(frame);
    Height = CVPixelBufferGetHeight(frame);
  }

  else
  {
    Width = *MEMORY[0x1E695F060];
    Height = *(MEMORY[0x1E695F060] + 8);
  }

  v18 = ARCreateCVPixelBufferFromPool(&self->_opticalFlowPixelBufferPool, 843264104, self, @"Optical Flow", Width, Height);
  v17 = v18;
  if (v18)
  {
    v19 = v27 - 1;
    v29 = bindPixelBufferToMTL2DTextureWithMetalDevice(v18, self->_device);
    commandBuffer2 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];

    v28 = self->_lkt;
    v21 = [(NSMutableArray *)self->_features objectAtIndexedSubscript:currentFrameIndex];
    v22 = [(NSMutableArray *)self->_derivatives objectAtIndexedSubscript:currentFrameIndex];
    [(NSMutableArray *)self->_features objectAtIndexedSubscript:v19];
    v23 = v30 = v7;
    v24 = [(NSMutableArray *)self->_derivatives objectAtIndexedSubscript:v19];
    v25 = [(NSMutableArray *)self->_pyramids objectAtIndexedSubscript:currentFrameIndex];
    [(ADLKTOpticalFlow *)v28 encodeOpticalFlowSolverToCommandBuffer:commandBuffer2 currentFeaturesArray:v21 currentDerivitiveArray:v22 previousFeaturesArray:v23 previousDerivitiveArray:v24 currentPyramidsArray:v25 outShiftMap:v29];

    v14 = v30;
    [commandBuffer2 commit];

    commandBuffer = commandBuffer2;
    goto LABEL_10;
  }

LABEL_11:

  return v17;
}

- (id)resultDataClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();

  return [v2 setWithObject:v3];
}

- (int)prepareBindInputBuffer:(unint64_t)buffer withName:(id)name
{
  v42 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  colorInput = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor colorInput];
  name = [colorInput name];
  v9 = [nameCopy isEqualToString:name];

  if ((v9 & 1) == 0)
  {
    if (buffer > 1)
    {
      v10 = -1;
      goto LABEL_16;
    }

    [(ARMLImageProcessingTechnique *)self espressoNetwork];
    [nameCopy UTF8String];
    [(ARMLImageProcessingTechnique *)self espressoInputTensorsData];
    v10 = espresso_network_bind_buffer();
    if (v10)
    {
      goto LABEL_16;
    }

    CVPixelBufferRelease(self->_jasperInputBuffer);
    v34 = *MEMORY[0x1E695E480];
    jasperInput = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
    imageDescriptor = [jasperInput imageDescriptor];
    [imageDescriptor sizeForLayout:self->_layout];
    v32 = v11;
    jasperInput2 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
    imageDescriptor2 = [jasperInput2 imageDescriptor];
    [imageDescriptor2 sizeForLayout:self->_layout];
    v31 = v12;
    jasperInput3 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
    imageDescriptor3 = [jasperInput3 imageDescriptor];
    pixelFormat = [imageDescriptor3 pixelFormat];
    buffer = [(ARMLImageProcessingTechnique *)self espressoInputTensorsData][168 * buffer];
    jasperInput4 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor jasperInput];
    imageDescriptor4 = [jasperInput4 imageDescriptor];
    [imageDescriptor4 sizeForLayout:self->_layout];
    LODWORD(buffer) = CVPixelBufferCreateWithBytes(v34, v32, v31, pixelFormat, buffer, vcvtd_n_u64_f64(v19, 2uLL), 0, 0, 0, &self->_jasperInputBuffer);

    if (buffer)
    {
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
      }

      v21 = ARShouldUseLogTypeError_internalOSVersion_6;
      v22 = _ARLogTechnique_0(v20);
      v23 = v22;
      if (v21 == 1)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v24 = objc_opt_class();
          v25 = NSStringFromClass(v24);
          *buf = 138543618;
          v39 = v25;
          v40 = 2048;
          selfCopy2 = self;
          v26 = "%{public}@ <%p>: Couldn't allocate pixel buffer for jasper point projection";
          v27 = v23;
          v28 = OS_LOG_TYPE_ERROR;
LABEL_14:
          _os_log_impl(&dword_1C241C000, v27, v28, v26, buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v29 = objc_opt_class();
        v25 = NSStringFromClass(v29);
        *buf = 138543618;
        v39 = v25;
        v40 = 2048;
        selfCopy2 = self;
        v26 = "Error: %{public}@ <%p>: Couldn't allocate pixel buffer for jasper point projection";
        v27 = v23;
        v28 = OS_LOG_TYPE_INFO;
        goto LABEL_14;
      }

      v10 = -4;
      goto LABEL_16;
    }
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (void)_updateOpticalFlowOutputBufferInBackgroundFromImageData:(id)data
{
  lktProcessingQueue = self->_lktProcessingQueue;
  dataCopy = data;
  dispatch_assert_queue_V2(lktProcessingQueue);
  os_unfair_lock_lock(&self->_opticalFlowOutputBufferLock);
  objc_msgSend_timestamp(dataCopy);
  kdebug_trace();
  v6 = -[ARDepthTechnique _executeLKTWithFrame:](self, "_executeLKTWithFrame:", [dataCopy pixelBuffer]);
  [(ARDepthTechnique *)self setOpticalFlowOutputBuffer:v6];
  CVPixelBufferRelease(v6);
  objc_msgSend_timestamp(dataCopy);

  kdebug_trace();

  os_unfair_lock_unlock(&self->_opticalFlowOutputBufferLock);
}

- (int)bindInputBuffer:(unint64_t)buffer withImage:(id)image andOriginalImageData:(id)data rotationOfResultTensor:(int64_t)tensor
{
  v65 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  dataCopy = data;
  v12 = dataCopy;
  if (buffer == 1)
  {
    v17 = [(ARMLImageProcessingTechnique *)self getDeviceOrientationFromImageData:dataCopy]- 1;
    if (v17 > 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = qword_1C25C8700[v17];
    }

    originalImage = [v12 originalImage];
    pointCloud = [originalImage pointCloud];
    depthPointCloud = [pointCloud depthPointCloud];

    if (depthPointCloud)
    {
      pixelBuffer = [originalImage pixelBuffer];
      if (pixelBuffer)
      {
        v31 = pixelBuffer;
        Width = CVPixelBufferGetWidth(pixelBuffer);
        Height = CVPixelBufferGetHeight(v31);
      }

      else
      {
        Width = *MEMORY[0x1E695F060];
        Height = *(MEMORY[0x1E695F060] + 8);
      }

      objc_msgSend_timestamp(imageCopy);
      kdebug_trace();
      height = [(ADJasperColorPipeline *)self->_pipeline projectJasperPoints:depthPointCloud cropTo:v18 rotateBy:self->_jasperInputBuffer projectedPointsBuffer:0.0, 0.0, Width, Height];
      adLogger = self->_adLogger;
      jasperInputBuffer = self->_jasperInputBuffer;
      objc_msgSend_timestamp(imageCopy);
      [(ADLogManager *)adLogger logPixelBuffer:jasperInputBuffer name:"processedJasper" timestamp:?];
      objc_msgSend_timestamp(imageCopy);
      [depthPointCloud length];
      v45 = kdebug_trace();
      if (!height)
      {
        goto LABEL_37;
      }

      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
      }

      v46 = ARShouldUseLogTypeError_internalOSVersion_6;
      v47 = _ARLogTechnique_0(v45);
      height = v47;
      if (v46 == 1)
      {
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = objc_opt_class();
          v49 = NSStringFromClass(v48);
          *location = 138543874;
          *&location[4] = v49;
          v61 = 2048;
          selfCopy6 = self;
          v63 = 2048;
          bufferCopy2 = -1;
          v50 = "%{public}@ <%p>: Couldn't project jasper points: %ld";
          v51 = height;
          v52 = OS_LOG_TYPE_ERROR;
LABEL_35:
          _os_log_impl(&dword_1C241C000, v51, v52, v50, location, 0x20u);
        }
      }

      else if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        v53 = objc_opt_class();
        v49 = NSStringFromClass(v53);
        *location = 138543874;
        *&location[4] = v49;
        v61 = 2048;
        selfCopy6 = self;
        v63 = 2048;
        bufferCopy2 = -1;
        v50 = "Error: %{public}@ <%p>: Couldn't project jasper points: %ld";
        v51 = height;
        v52 = OS_LOG_TYPE_INFO;
        goto LABEL_35;
      }

      LODWORD(height) = -1;
LABEL_37:

      goto LABEL_43;
    }

    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
    }

    v35 = ARShouldUseLogTypeError_internalOSVersion_6;
    v36 = _ARLogTechnique_0(v29);
    v37 = v36;
    if (v35 == 1)
    {
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v39 = NSStringFromClass(v38);
        *location = 138543618;
        *&location[4] = v39;
        v61 = 2048;
        selfCopy6 = self;
        v40 = "%{public}@ <%p>: No depth point cloud found";
        v41 = v37;
        v42 = OS_LOG_TYPE_ERROR;
LABEL_40:
        _os_log_impl(&dword_1C241C000, v41, v42, v40, location, 0x16u);
      }
    }

    else if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v54 = objc_opt_class();
      v39 = NSStringFromClass(v54);
      *location = 138543618;
      *&location[4] = v39;
      v61 = 2048;
      selfCopy6 = self;
      v40 = "Error: %{public}@ <%p>: No depth point cloud found";
      v41 = v37;
      v42 = OS_LOG_TYPE_INFO;
      goto LABEL_40;
    }

    goto LABEL_42;
  }

  if (buffer)
  {
    if (ARShouldUseLogTypeError_onceToken_6 != -1)
    {
      [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
    }

    v19 = ARShouldUseLogTypeError_internalOSVersion_6;
    v20 = _ARLogTechnique_0(dataCopy);
    originalImage = v20;
    if (v19 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *location = 138543874;
        *&location[4] = v23;
        v61 = 2048;
        selfCopy6 = self;
        v63 = 2048;
        bufferCopy2 = buffer;
        v24 = "%{public}@ <%p>: Index not supported: %lu";
        v25 = originalImage;
        v26 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_1C241C000, v25, v26, v24, location, 0x20u);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v34 = objc_opt_class();
      v23 = NSStringFromClass(v34);
      *location = 138543874;
      *&location[4] = v23;
      v61 = 2048;
      selfCopy6 = self;
      v63 = 2048;
      bufferCopy2 = buffer;
      v24 = "Error: %{public}@ <%p>: Index not supported: %lu";
      v25 = originalImage;
      v26 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

LABEL_42:

    LODWORD(height) = -1;
    goto LABEL_43;
  }

  if (self->_temporalConsistencyMethod == 2 && [imageCopy pixelBuffer])
  {
    objc_initWeak(location, self);
    lktProcessingQueue = self->_lktProcessingQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__ARDepthTechnique_bindInputBuffer_withImage_andOriginalImageData_rotationOfResultTensor___block_invoke;
    block[3] = &unk_1E817BDB0;
    objc_copyWeak(&v59, location);
    v58 = imageCopy;
    dispatch_async(lktProcessingQueue, block);

    objc_destroyWeak(&v59);
    objc_destroyWeak(location);
  }

  v56.receiver = self;
  v56.super_class = ARDepthTechnique;
  LODWORD(height) = [(ARMLImageProcessingTechnique *)&v56 bindInputBuffer:0 withImage:imageCopy andOriginalImageData:v12 rotationOfResultTensor:tensor];
  v15 = self->_adLogger;
  pixelBuffer2 = [imageCopy pixelBuffer];
  objc_msgSend_timestamp(imageCopy);
  [(ADLogManager *)v15 logPixelBuffer:pixelBuffer2 name:"processedColor" timestamp:?];
LABEL_43:

  return height;
}

void __90__ARDepthTechnique_bindInputBuffer_withImage_andOriginalImageData_rotationOfResultTensor___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateOpticalFlowOutputBufferInBackgroundFromImageData:*(a1 + 32)];
}

- (id)networkModesForOrientation:(int64_t)orientation
{
  v18 = *MEMORY[0x1E69E9840];
  if ((orientation - 3) <= 1)
  {
    self->_layout = 1;
    goto LABEL_14;
  }

  if ((orientation - 1) <= 1)
  {
    self->_layout = 0;
    goto LABEL_14;
  }

  if (ARShouldUseLogTypeError_onceToken_6 != -1)
  {
    [ARDepthTechnique initWithPrioritization:temporalSmoothing:];
  }

  v5 = ARShouldUseLogTypeError_internalOSVersion_6;
  v6 = _ARLogGeneral_3(self);
  v7 = v6;
  if (v5 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *v16 = 138543874;
      *&v16[4] = v9;
      *&v16[12] = 2048;
      *&v16[14] = self;
      *&v16[22] = 2048;
      orientationCopy2 = orientation;
      v10 = "%{public}@ <%p>: Could not find a network config for the device orientation %ld";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_12:
      _os_log_impl(&dword_1C241C000, v11, v12, v10, v16, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v13 = objc_opt_class();
    v9 = NSStringFromClass(v13);
    *v16 = 138543874;
    *&v16[4] = v9;
    *&v16[12] = 2048;
    *&v16[14] = self;
    *&v16[22] = 2048;
    orientationCopy2 = orientation;
    v10 = "Error: %{public}@ <%p>: Could not find a network config for the device orientation %ld";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    goto LABEL_12;
  }

LABEL_14:
  orientationCopy2 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor configurationNameForLayout:self->_layout, *v16, *&v16[8], orientationCopy2];

  return orientationCopy2;
}

- (void)networkModeDidChange:(id)change toMode:(id)mode
{
  v5.receiver = self;
  v5.super_class = ARDepthTechnique;
  [(ARMLImageProcessingTechnique *)&v5 networkModeDidChange:change toMode:mode];
  CVPixelBufferRelease(self->_previousDepthBuffer);
  self->_previousDepthBuffer = 0;
  CVPixelBufferRelease(self->_previousConfidenceBuffer);
  self->_previousConfidenceBuffer = 0;
  if (self->_temporalConsistencyMethod == 2)
  {
    [(ARDepthTechnique *)self _allocateLKTBuffers];
  }
}

- (id)createResultDataFromTensors:(id *)tensors numberOfOutputTensors:(unint64_t)outputTensors imageDataForNeuralNetwork:(id)network inputImageData:(id)data rotationNeeded:(int64_t)needed regionOfInterest:(CGSize)interest
{
  height = interest.height;
  width = interest.width;
  v373 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  dataCopy = data;
  var4 = tensors->var4;
  v13 = var4;
  var5 = tensors->var5;
  v14 = var5;
  v369 = 0;
  v370[0] = &v369;
  v370[1] = 0x2020000000;
  selfCopy = self;
  v370[2] = ARCreateCVPixelBufferFromPool(&self->_outputDepthPixelBufferPool, 1717855600, self, @"Depth Output", var4, var5);
  if (!*(v370[0] + 24))
  {
    v36 = 0;
    goto LABEL_196;
  }

  v365[0] = MEMORY[0x1E69E9820];
  v365[1] = 3221225472;
  v366 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke;
  v367 = &unk_1E817C268;
  v368 = &v369;
  v361 = 0;
  v362 = &v361;
  v363 = 0x2020000000;
  v364 = ARCreateCVPixelBufferFromPool(&self->_outputConfidencePixelBufferPool, 1717855600, self, @"Confidence Ouput", v13, v14);
  if (v362[3])
  {
    v357[0] = MEMORY[0x1E69E9820];
    v357[1] = 3221225472;
    v358 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_2;
    v359 = &unk_1E817C268;
    v360 = &v361;
    v353 = 0;
    v354 = &v353;
    v355 = 0x2020000000;
    v356 = ARCreateCVPixelBufferFromPool(&self->_outputConfidenceMapPixelBufferPool, 1278226488, self, @"Confidence Map Ouput", v13, v14);
    if (!v354[3])
    {
      v36 = 0;
LABEL_194:
      _Block_object_dispose(&v353, 8);
      v358(v357);
      goto LABEL_195;
    }

    v349[0] = MEMORY[0x1E69E9820];
    v349[1] = 3221225472;
    v350 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_3;
    v351 = &unk_1E817C268;
    v352 = &v353;
    v348 = 0;
    v347 = 0;
    depthOutput = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor depthOutput];
    imageDescriptor = [depthOutput imageDescriptor];
    [imageDescriptor sizeForLayout:self->_layout];
    v16 = v15;
    depthOutput2 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor depthOutput];
    imageDescriptor2 = [depthOutput2 imageDescriptor];
    [imageDescriptor2 sizeForLayout:self->_layout];
    v20 = v19;
    depthOutput3 = [(ADEspressoJasperColorInferenceDescriptor *)self->_inferenceDescriptor depthOutput];
    imageDescriptor3 = [depthOutput3 imageDescriptor];
    pixelFormat = [imageDescriptor3 pixelFormat];
    v24 = *[(ARMLImageProcessingTechnique *)self espressoOutputTensorsData];
    depthOutput4 = [(ADEspressoJasperColorInferenceDescriptor *)selfCopy->_inferenceDescriptor depthOutput];
    imageDescriptor4 = [depthOutput4 imageDescriptor];
    [imageDescriptor4 sizeForLayout:selfCopy->_layout];
    allocator = *MEMORY[0x1E695E480];
    v28 = CVPixelBufferCreateWithBytes(*MEMORY[0x1E695E480], v16, v20, pixelFormat, v24, vcvtd_n_u64_f64(v27, 2uLL), 0, 0, 0, &v348);

    if (v28)
    {
      v30 = selfCopy;
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
        v30 = selfCopy;
      }

      v31 = ARShouldUseLogTypeError_internalOSVersion_6;
      v32 = _ARLogTechnique_0(v29);
      v33 = v32;
      if (v31 == 1)
      {
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          buf.columns[0].i32[0] = 138543618;
          *(buf.columns[0].i64 + 4) = v35;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v30;
          _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Couldn't allocate pixel buffer for raw depth output", &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v58 = objc_opt_class();
        v59 = NSStringFromClass(v58);
        buf.columns[0].i32[0] = 138543618;
        *(buf.columns[0].i64 + 4) = v59;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v30;
        _os_log_impl(&dword_1C241C000, v33, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Couldn't allocate pixel buffer for raw depth output", &buf, 0x16u);
      }

      v36 = 0;
      goto LABEL_193;
    }

    v343[0] = MEMORY[0x1E69E9820];
    v343[1] = 3221225472;
    v344 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_38;
    v345 = &__block_descriptor_40_e5_v8__0l;
    v346 = v348;
    confidenceOutput = [(ADEspressoJasperColorInferenceDescriptor *)selfCopy->_inferenceDescriptor confidenceOutput];
    imageDescriptor5 = [confidenceOutput imageDescriptor];
    [imageDescriptor5 sizeForLayout:selfCopy->_layout];
    v38 = v37;
    confidenceOutput2 = [(ADEspressoJasperColorInferenceDescriptor *)selfCopy->_inferenceDescriptor confidenceOutput];
    imageDescriptor6 = [confidenceOutput2 imageDescriptor];
    [imageDescriptor6 sizeForLayout:selfCopy->_layout];
    v42 = v41;
    confidenceOutput3 = [(ADEspressoJasperColorInferenceDescriptor *)selfCopy->_inferenceDescriptor confidenceOutput];
    imageDescriptor7 = [confidenceOutput3 imageDescriptor];
    pixelFormat2 = [imageDescriptor7 pixelFormat];
    v46 = [(ARMLImageProcessingTechnique *)selfCopy espressoOutputTensorsData][168];
    confidenceOutput4 = [(ADEspressoJasperColorInferenceDescriptor *)selfCopy->_inferenceDescriptor confidenceOutput];
    imageDescriptor8 = [confidenceOutput4 imageDescriptor];
    [imageDescriptor8 sizeForLayout:selfCopy->_layout];
    v50 = CVPixelBufferCreateWithBytes(allocator, v38, v42, pixelFormat2, v46, vcvtd_n_u64_f64(v49, 2uLL), 0, 0, 0, &v347);

    if (v50)
    {
      v52 = selfCopy;
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
        v52 = selfCopy;
      }

      v53 = ARShouldUseLogTypeError_internalOSVersion_6;
      v54 = _ARLogTechnique_0(v51);
      v55 = v54;
      if (v53 == 1)
      {
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          v56 = objc_opt_class();
          v57 = NSStringFromClass(v56);
          buf.columns[0].i32[0] = 138543618;
          *(buf.columns[0].i64 + 4) = v57;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v52;
          _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Couldn't allocate pixel buffer for raw confidence output", &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        buf.columns[0].i32[0] = 138543618;
        *(buf.columns[0].i64 + 4) = v74;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v52;
        _os_log_impl(&dword_1C241C000, v55, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Couldn't allocate pixel buffer for raw confidence output", &buf, 0x16u);
      }

      v36 = 0;
      goto LABEL_192;
    }

    v339[0] = MEMORY[0x1E69E9820];
    v339[1] = 3221225472;
    v340 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_39;
    v341 = &__block_descriptor_40_e5_v8__0l;
    v342 = v347;
    objc_msgSend_timestamp(dataCopy);
    v60 = selfCopy;
    kdebug_trace();
    v61 = v370;
    v62 = [(ADJasperColorPipeline *)selfCopy->_pipeline postProcessWithDepth:v348 confidence:v347 depthOutput:*(v370[0] + 24) confidenceOutput:v362[3]];
    adLogger = selfCopy->_adLogger;
    v64 = v348;
    objc_msgSend_timestamp(dataCopy);
    [(ADLogManager *)adLogger logPixelBuffer:v64 name:"depthOutRaw" timestamp:?];
    v65 = selfCopy->_adLogger;
    v66 = v347;
    objc_msgSend_timestamp(dataCopy);
    [(ADLogManager *)v65 logPixelBuffer:v66 name:"confidenceOutRaw" timestamp:?];
    objc_msgSend_timestamp(dataCopy);
    v67 = kdebug_trace();
    if (v62)
    {
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
      }

      v68 = ARShouldUseLogTypeError_internalOSVersion_6;
      v69 = _ARLogTechnique_0(v67);
      v70 = v69;
      if (v68 == 1)
      {
        if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v71 = objc_opt_class();
          v72 = NSStringFromClass(v71);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v72;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = selfCopy;
          buf.columns[1].i16[3] = 2048;
          buf.columns[1].i64[1] = v62;
          _os_log_impl(&dword_1C241C000, v70, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to post process AppleDepth pipeline output: %li", &buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v75 = objc_opt_class();
        v76 = NSStringFromClass(v75);
        buf.columns[0].i32[0] = 138543874;
        *(buf.columns[0].i64 + 4) = v76;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = selfCopy;
        buf.columns[1].i16[3] = 2048;
        buf.columns[1].i64[1] = v62;
        _os_log_impl(&dword_1C241C000, v70, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to post process AppleDepth pipeline output: %li", &buf, 0x20u);
      }

      v60 = selfCopy;
      v61 = v370;
    }

    v77 = [*(v60 + 344) postProcessConfidence:v347 confidenceOutput:v354[3] confidenceUnits:1];
    v78 = v77;
    if (v77)
    {
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
        v60 = selfCopy;
      }

      v79 = ARShouldUseLogTypeError_internalOSVersion_6;
      v80 = _ARLogTechnique_0(v77);
      v81 = v80;
      if (v79 == 1)
      {
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v83;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = v60;
          buf.columns[1].i16[3] = 2048;
          buf.columns[1].i64[1] = v78;
          _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to post process AppleDepth confidence map output: %li", &buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
      {
        v93 = objc_opt_class();
        v94 = NSStringFromClass(v93);
        buf.columns[0].i32[0] = 138543874;
        *(buf.columns[0].i64 + 4) = v94;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v60;
        buf.columns[1].i16[3] = 2048;
        buf.columns[1].i64[1] = v78;
        _os_log_impl(&dword_1C241C000, v81, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to post process AppleDepth confidence map output: %li", &buf, 0x20u);
      }

      v36 = 0;
LABEL_191:
      v340(v339);
LABEL_192:
      v344(v343);
LABEL_193:
      v350(v349);
      goto LABEL_194;
    }

    v337 = 0;
    v338[0] = &v337;
    v338[1] = 0x2020000000;
    v338[2] = 0;
    v333 = 0;
    v334 = &v333;
    v335 = 0x2020000000;
    v336 = 0;
    v328[0] = MEMORY[0x1E69E9820];
    v328[1] = 3221225472;
    v329 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_42;
    v330 = &unk_1E817C2B0;
    v331 = &v337;
    v332 = &v333;
    v84 = *(v60 + 704);
    if (*(v60 + 368) && v84 == 2)
    {
      buf.columns[0].i64[0] = 0;
      buf.columns[0].i64[1] = &buf;
      buf.columns[1] = 0x2020000000uLL;
      v324[0] = MEMORY[0x1E69E9820];
      v324[1] = 3221225472;
      v325 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_2_43;
      v326 = &unk_1E817C268;
      p_buf = &buf;
      if (*(v60 + 496))
      {
        v85 = ARCreateCVPixelBufferFromPool((v60 + 392), 1717855600, v60, @"temporally smoothed depth buffer", v13, v14);
        *(v338[0] + 24) = v85;
        if (!v85)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
            v60 = selfCopy;
          }

          v96 = ARShouldUseLogTypeError_internalOSVersion_6;
          v97 = _ARLogTechnique_0(v85);
          v90 = v97;
          if (v96 == 1)
          {
            if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
            {
              v98 = objc_opt_class();
              v99 = NSStringFromClass(v98);
              v371.columns[0].i32[0] = 138543618;
              *(v371.columns[0].i64 + 4) = v99;
              v371.columns[0].i16[6] = 2048;
              *(&v371.columns[0].i64[1] + 6) = v60;
              _os_log_impl(&dword_1C241C000, v90, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create pixel buffer for generating optical flow result pixelbuffer", &v371, 0x16u);
            }
          }

          else if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
          {
            v140 = objc_opt_class();
            v141 = NSStringFromClass(v140);
            v371.columns[0].i32[0] = 138543618;
            *(v371.columns[0].i64 + 4) = v141;
            v371.columns[0].i16[6] = 2048;
            *(&v371.columns[0].i64[1] + 6) = v60;
            _os_log_impl(&dword_1C241C000, v90, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create pixel buffer for generating optical flow result pixelbuffer", &v371, 0x16u);
          }

          goto LABEL_93;
        }

        os_unfair_lock_lock((v60 + 624));
        objc_msgSend_timestamp(dataCopy);
        kdebug_trace();
        v86 = [*(v60 + 344) warpAndFuseWithCurrDepth:*(v370[0] + 24) prevDepth:*(v60 + 496) opticalFlow:*(v60 + 720) alphaMap:*(buf.columns[0].i64[1] + 24) depthOutput:*(v338[0] + 24)];
        objc_msgSend_timestamp(dataCopy);
        kdebug_trace();
        [v60 setOpticalFlowOutputBuffer:0];
        os_unfair_lock_unlock((v60 + 624));
        if (v86)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
            v60 = selfCopy;
          }

          v88 = ARShouldUseLogTypeError_internalOSVersion_6;
          v89 = _ARLogTechnique_0(v87);
          v90 = v89;
          if (v88 == 1)
          {
            if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
            {
              v91 = objc_opt_class();
              v92 = NSStringFromClass(v91);
              v371.columns[0].i32[0] = 138543874;
              *(v371.columns[0].i64 + 4) = v92;
              v371.columns[0].i16[6] = 2048;
              *(&v371.columns[0].i64[1] + 6) = v60;
              v371.columns[1].i16[3] = 2048;
              v371.columns[1].i64[1] = v86;
              _os_log_impl(&dword_1C241C000, v90, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to warp and fuse AppleDepth pipeline output: %li", &v371, 0x20u);
            }
          }

          else if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
          {
            v138 = objc_opt_class();
            v139 = NSStringFromClass(v138);
            v371.columns[0].i32[0] = 138543874;
            *(v371.columns[0].i64 + 4) = v139;
            v371.columns[0].i16[6] = 2048;
            *(&v371.columns[0].i64[1] + 6) = v60;
            v371.columns[1].i16[3] = 2048;
            v371.columns[1].i64[1] = v86;
            _os_log_impl(&dword_1C241C000, v90, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to warp and fuse AppleDepth pipeline output: %li", &v371, 0x20u);
          }

LABEL_93:

          v60 = selfCopy;
          goto LABEL_94;
        }

        CVPixelBufferRelease(*(v60 + 496));
        v61 = v338;
      }

      v100 = *(*v61 + 24);
      *(v60 + 496) = v100;
      CVPixelBufferRetain(v100);
LABEL_94:
      v325(v324);
      _Block_object_dispose(&buf, 8);
      goto LABEL_130;
    }

    if (v84 != 1)
    {
      if (var4 == width && var5 == height)
      {
        goto LABEL_132;
      }

LABEL_130:
      v173 = ARCreateCVPixelBufferFromPool((v60 + 432), 1717855600, v60, @"Scaled Depth Ouput", width, height);
      v174 = v173;
      if (!v173)
      {
        goto LABEL_166;
      }

      v320[0] = MEMORY[0x1E69E9820];
      v320[1] = 3221225472;
      v321 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_59;
      v322 = &__block_descriptor_40_e5_v8__0l;
      v323 = v173;
      objc_msgSend_timestamp(dataCopy);
      kdebug_trace();
      v175 = ARResizeBufferWithNearestNeighbors(*(v370[0] + 24), v174, 4uLL);
      objc_msgSend_timestamp(dataCopy);
      v176 = kdebug_trace();
      if (v175)
      {
        if (ARShouldUseLogTypeError_onceToken_6 != -1)
        {
          [ARDepthTechnique _initLKT];
        }

        v177 = ARShouldUseLogTypeError_internalOSVersion_6;
        v178 = _ARLogTechnique_0(v176);
        v179 = v178;
        if (v177 == 1)
        {
          if (os_log_type_enabled(v178, OS_LOG_TYPE_ERROR))
          {
            v180 = objc_opt_class();
            v181 = NSStringFromClass(v180);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v181;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = selfCopy;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v175;
            _os_log_impl(&dword_1C241C000, v179, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer: %i", &buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
        {
          v202 = objc_opt_class();
          v203 = NSStringFromClass(v202);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v203;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = selfCopy;
          buf.columns[1].i16[3] = 1024;
          buf.columns[1].i32[2] = v175;
          _os_log_impl(&dword_1C241C000, v179, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer: %i", &buf, 0x1Cu);
        }

        v60 = selfCopy;
      }

      else
      {
        CVPixelBufferRelease(*(v370[0] + 24));
        v201 = CVPixelBufferRetain(v174);
        *(v370[0] + 24) = v201;
      }

      v321(v320);
      if (v175)
      {
        goto LABEL_166;
      }

      if (*(v338[0] + 24))
      {
        v204 = ARCreateCVPixelBufferFromPool((v60 + 456), 1717855600, v60, @"Scaled Temporally Consistent Depth Ouput", width, height);
        v205 = v204;
        if (!v204)
        {
          goto LABEL_166;
        }

        v316[0] = MEMORY[0x1E69E9820];
        v316[1] = 3221225472;
        v317 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_63;
        v318 = &__block_descriptor_40_e5_v8__0l;
        v319 = v204;
        v206 = ARResizeBufferWithNearestNeighbors(*(v338[0] + 24), v204, 4uLL);
        v207 = v206;
        if (v206)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
          }

          v208 = ARShouldUseLogTypeError_internalOSVersion_6;
          v209 = _ARLogTechnique_0(v206);
          v210 = v209;
          if (v208 == 1)
          {
            if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
            {
              v211 = objc_opt_class();
              v212 = NSStringFromClass(v211);
              buf.columns[0].i32[0] = 138543874;
              *(buf.columns[0].i64 + 4) = v212;
              buf.columns[0].i16[6] = 2048;
              *(&buf.columns[0].i64[1] + 6) = selfCopy;
              buf.columns[1].i16[3] = 1024;
              buf.columns[1].i32[2] = v207;
              _os_log_impl(&dword_1C241C000, v210, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample temporally consistent depth buffer: %i", &buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
          {
            v231 = objc_opt_class();
            v232 = NSStringFromClass(v231);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v232;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = selfCopy;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v207;
            _os_log_impl(&dword_1C241C000, v210, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample temporally consistent depth buffer: %i", &buf, 0x1Cu);
          }

          v60 = selfCopy;
        }

        else
        {
          CVPixelBufferRelease(*(v338[0] + 24));
          v230 = CVPixelBufferRetain(v205);
          *(v338[0] + 24) = v230;
        }

        v317(v316);
        if (v207)
        {
          goto LABEL_166;
        }
      }

      v233 = ARCreateCVPixelBufferFromPool((v60 + 440), 1717855600, v60, @"Scaled Depth Confidence Ouput", width, height);
      v234 = v233;
      if (!v233)
      {
        goto LABEL_166;
      }

      v312[0] = MEMORY[0x1E69E9820];
      v312[1] = 3221225472;
      v313 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_67;
      v314 = &__block_descriptor_40_e5_v8__0l;
      v315 = v233;
      v235 = ARResizeBufferWithNearestNeighbors(v362[3], v233, 4uLL);
      v236 = v235;
      if (v235)
      {
        if (ARShouldUseLogTypeError_onceToken_6 != -1)
        {
          [ARDepthTechnique _initLKT];
        }

        v237 = ARShouldUseLogTypeError_internalOSVersion_6;
        v238 = _ARLogTechnique_0(v235);
        v239 = v238;
        if (v237 == 1)
        {
          if (os_log_type_enabled(v238, OS_LOG_TYPE_ERROR))
          {
            v240 = objc_opt_class();
            v241 = NSStringFromClass(v240);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v241;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = selfCopy;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v236;
            _os_log_impl(&dword_1C241C000, v239, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample pixel buffer: %i", &buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v238, OS_LOG_TYPE_INFO))
        {
          v243 = objc_opt_class();
          v244 = NSStringFromClass(v243);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v244;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = selfCopy;
          buf.columns[1].i16[3] = 1024;
          buf.columns[1].i32[2] = v236;
          _os_log_impl(&dword_1C241C000, v239, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample pixel buffer: %i", &buf, 0x1Cu);
        }

        v60 = selfCopy;
      }

      else
      {
        CVPixelBufferRelease(v362[3]);
        v242 = CVPixelBufferRetain(v234);
        v362[3] = v242;
      }

      v313(v312);
      if (v236)
      {
        goto LABEL_166;
      }

      if (v334[3])
      {
        v245 = ARCreateCVPixelBufferFromPool((v60 + 456), 1717855600, v60, @"Scaled Temporally Consistent Depth Confidence Ouput", width, height);
        v246 = v245;
        if (!v245)
        {
          goto LABEL_166;
        }

        v308[0] = MEMORY[0x1E69E9820];
        v308[1] = 3221225472;
        v309 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_71;
        v310 = &__block_descriptor_40_e5_v8__0l;
        v311 = v245;
        v247 = ARResizeBufferWithNearestNeighbors(v334[3], v245, 4uLL);
        v248 = v247;
        if (v247)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
          }

          v249 = ARShouldUseLogTypeError_internalOSVersion_6;
          v250 = _ARLogTechnique_0(v247);
          v251 = v250;
          if (v249 == 1)
          {
            if (os_log_type_enabled(v250, OS_LOG_TYPE_ERROR))
            {
              v252 = objc_opt_class();
              v253 = NSStringFromClass(v252);
              buf.columns[0].i32[0] = 138543874;
              *(buf.columns[0].i64 + 4) = v253;
              buf.columns[0].i16[6] = 2048;
              *(&buf.columns[0].i64[1] + 6) = selfCopy;
              buf.columns[1].i16[3] = 1024;
              buf.columns[1].i32[2] = v248;
              _os_log_impl(&dword_1C241C000, v251, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample temporally consistent confidence buffer: %i", &buf, 0x1Cu);
            }
          }

          else if (os_log_type_enabled(v250, OS_LOG_TYPE_INFO))
          {
            v255 = objc_opt_class();
            v256 = NSStringFromClass(v255);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v256;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = selfCopy;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v248;
            _os_log_impl(&dword_1C241C000, v251, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample temporally consistent confidence buffer: %i", &buf, 0x1Cu);
          }
        }

        else
        {
          CVPixelBufferRelease(v334[3]);
          v254 = CVPixelBufferRetain(v246);
          v334[3] = v254;
        }

        v309(v308);
        v60 = selfCopy;
        if (v248)
        {
          goto LABEL_166;
        }
      }

      v257 = ARCreateCVPixelBufferFromPool((v60 + 448), 1278226488, v60, @"Scaled Depth Confidence Map Ouput", width, height);
      v258 = v257;
      if (!v257)
      {
        goto LABEL_166;
      }

      v304[0] = MEMORY[0x1E69E9820];
      v304[1] = 3221225472;
      v305 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_75;
      v306 = &__block_descriptor_40_e5_v8__0l;
      v307 = v257;
      v259 = ARResizeBufferWithNearestNeighbors(v354[3], v257, 1uLL);
      v260 = v259;
      if (v259)
      {
        if (ARShouldUseLogTypeError_onceToken_6 != -1)
        {
          [ARDepthTechnique _initLKT];
        }

        v261 = ARShouldUseLogTypeError_internalOSVersion_6;
        v262 = _ARLogTechnique_0(v259);
        v263 = v262;
        if (v261 == 1)
        {
          if (os_log_type_enabled(v262, OS_LOG_TYPE_ERROR))
          {
            v264 = objc_opt_class();
            v265 = NSStringFromClass(v264);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v265;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = selfCopy;
            buf.columns[1].i16[3] = 1024;
            buf.columns[1].i32[2] = v260;
            _os_log_impl(&dword_1C241C000, v263, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to resample confidence buffer: %i", &buf, 0x1Cu);
          }
        }

        else if (os_log_type_enabled(v262, OS_LOG_TYPE_INFO))
        {
          v267 = objc_opt_class();
          v268 = NSStringFromClass(v267);
          buf.columns[0].i32[0] = 138543874;
          *(buf.columns[0].i64 + 4) = v268;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = selfCopy;
          buf.columns[1].i16[3] = 1024;
          buf.columns[1].i32[2] = v260;
          _os_log_impl(&dword_1C241C000, v263, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to resample confidence buffer: %i", &buf, 0x1Cu);
        }
      }

      else
      {
        CVPixelBufferRelease(v354[3]);
        v266 = CVPixelBufferRetain(v258);
        v354[3] = v266;
      }

      v305(v304);
      v60 = selfCopy;
      if (v260)
      {
LABEL_166:
        v36 = 0;
      }

      else
      {
LABEL_132:
        v165 = *(v60 + 600);
        if (!v165 || [v165 rotationAngle] != needed || objc_msgSend(*(v60 + 600), "mirrorMode"))
        {
          v166 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
          v167 = *(v60 + 600);
          *(v60 + 600) = v166;

          v60 = selfCopy;
        }

        v168 = *(v60 + 608);
        if (!v168 || [v168 rotationAngle] != needed || objc_msgSend(*(v60 + 608), "mirrorMode"))
        {
          v169 = [[ARImageRotationTechnique alloc] initWithRotation:needed mirror:0];
          v170 = *(v60 + 608);
          *(v60 + 608) = v169;

          v60 = selfCopy;
        }

        objc_msgSend_timestamp(dataCopy);
        kdebug_trace();
        v296 = [v60 _rotatedPixelBufferImageData:*(v370[0] + 24)];
        v294 = [v60 _rotatedPixelBufferImageData:v362[3]];
        v171 = [v60 _rotatedPixelBufferImageData:v354[3]];
        if (*(v338[0] + 24))
        {
          v172 = [v60 _rotatedPixelBufferImageData:?];

          v60 = selfCopy;
        }

        else
        {
          v172 = 0;
        }

        if (v334[3])
        {
          v182 = [v60 _rotatedPixelBufferImageData:?];
        }

        else
        {
          v182 = 0;
        }

        objc_msgSend_timestamp(dataCopy);
        kdebug_trace();
        if (v172 && v182)
        {
          v183 = [ARMLDepthData alloc];
          objc_msgSend_timestamp(dataCopy);
          v185 = -[ARMLDepthData initWithTimestamp:depthBuffer:confidenceBuffer:source:](v183, "initWithTimestamp:depthBuffer:confidenceBuffer:source:", [v172 pixelBuffer], objc_msgSend(v182, "pixelBuffer"), 2, v184);
          -[ARMLDepthData setSingleFrameDepthBuffer:](v185, "setSingleFrameDepthBuffer:", [v296 pixelBuffer]);
          -[ARMLDepthData setSingleFrameConfidenceBuffer:](v185, "setSingleFrameConfidenceBuffer:", [v294 pixelBuffer]);
        }

        else
        {
          v186 = [ARMLDepthData alloc];
          objc_msgSend_timestamp(dataCopy);
          v185 = -[ARMLDepthData initWithTimestamp:depthBuffer:confidenceBuffer:source:](v186, "initWithTimestamp:depthBuffer:confidenceBuffer:source:", [v296 pixelBuffer], objc_msgSend(v294, "pixelBuffer"), 2, v187);
        }

        -[ARMLDepthData setConfidenceMap:](v185, "setConfidenceMap:", [v171 pixelBuffer]);
        originalImage = [dataCopy originalImage];
        [(ARMLDepthData *)v185 setSourceImageData:originalImage];

        v189 = selfCopy->_adLogger;
        depthBuffer = [(ARMLDepthData *)v185 depthBuffer];
        objc_msgSend_timestamp(dataCopy);
        [(ADLogManager *)v189 logPixelBuffer:depthBuffer name:"depthOutProcessed" timestamp:?];
        v191 = selfCopy->_adLogger;
        confidenceBuffer = [(ARMLDepthData *)v185 confidenceBuffer];
        objc_msgSend_timestamp(dataCopy);
        [(ADLogManager *)v191 logPixelBuffer:confidenceBuffer name:"confidenceOutProcessed" timestamp:?];
        v193 = selfCopy->_adLogger;
        confidenceMap = [(ARMLDepthData *)v185 confidenceMap];
        objc_msgSend_timestamp(dataCopy);
        [(ADLogManager *)v193 logPixelBuffer:confidenceMap name:"confidenceLevels" timestamp:?];
        if (selfCopy->_computeNormals)
        {
          singleFrameDepthBuffer = [(ARMLDepthData *)v185 singleFrameDepthBuffer];
          v196 = singleFrameDepthBuffer;
          if (singleFrameDepthBuffer)
          {
            v197 = CVPixelBufferGetWidth(singleFrameDepthBuffer);
            v198 = CVPixelBufferGetHeight(v196);
            v199 = v197;
            v200 = v198;
          }

          else
          {
            v199 = *MEMORY[0x1E695F060];
            v200 = *(MEMORY[0x1E695F060] + 8);
          }

          v213 = ARCreateCVPixelBufferFromPool(&selfCopy->_normalPixelBufferPool, 1380410945, selfCopy, @"Normals Map", v199, v200);
          v300[0] = MEMORY[0x1E69E9820];
          v300[1] = 3221225472;
          v301 = __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_83;
          v302 = &__block_descriptor_40_e5_v8__0l;
          v303 = v213;
          if (v213)
          {
            [dataCopy cameraIntrinsics];
            v290 = v215;
            v292 = v214;
            objc_msgSend_timestamp(dataCopy);
            kdebug_trace();
            v216 = [MEMORY[0x1E698C138] normalsFromDepth:-[ARMLDepthData depthBuffer](v185 focalLength:"depthBuffer") principalPoint:v213 normalsOutput:selfCopy->_normalsHelperBuffer withHelperBuffer:{v292, *&v290, *(&v290 + 1)}];
            objc_msgSend_timestamp(dataCopy);
            v217 = kdebug_trace();
            if (v216)
            {
              if (ARShouldUseLogTypeError_onceToken_6 != -1)
              {
                [ARDepthTechnique _initLKT];
              }

              v218 = ARShouldUseLogTypeError_internalOSVersion_6;
              v219 = _ARLogTechnique_0(v217);
              v220 = v219;
              if (v218 == 1)
              {
                if (os_log_type_enabled(v219, OS_LOG_TYPE_ERROR))
                {
                  v221 = objc_opt_class();
                  v222 = NSStringFromClass(v221);
                  buf.columns[0].i32[0] = 138543874;
                  *(buf.columns[0].i64 + 4) = v222;
                  buf.columns[0].i16[6] = 2048;
                  *(&buf.columns[0].i64[1] + 6) = selfCopy;
                  buf.columns[1].i16[3] = 2048;
                  buf.columns[1].i64[1] = v216;
                  _os_log_impl(&dword_1C241C000, v220, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to generate normal map: %li", &buf, 0x20u);
                }
              }

              else if (os_log_type_enabled(v219, OS_LOG_TYPE_INFO))
              {
                v225 = objc_opt_class();
                v226 = NSStringFromClass(v225);
                buf.columns[0].i32[0] = 138543874;
                *(buf.columns[0].i64 + 4) = v226;
                buf.columns[0].i16[6] = 2048;
                *(&buf.columns[0].i64[1] + 6) = selfCopy;
                buf.columns[1].i16[3] = 2048;
                buf.columns[1].i64[1] = v216;
                _os_log_impl(&dword_1C241C000, v220, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to generate normal map: %li", &buf, 0x20u);
              }
            }

            else
            {
              [(ARMLDepthData *)v185 setNormalsBuffer:v213];
              v223 = selfCopy->_adLogger;
              normalsBuffer = [(ARMLDepthData *)v185 normalsBuffer];
              objc_msgSend_timestamp(dataCopy);
              [(ADLogManager *)v223 logPixelBuffer:normalsBuffer name:"normalsOutProcessed" timestamp:?];
            }
          }

          v301(v300);
        }

        objc_msgSend_timestamp(v185);
        kdebug_trace();
        objc_msgSend_timestamp(v185);
        sourceImageData = [(ARMLDepthData *)v185 sourceImageData];
        cameraType = [sourceImageData cameraType];
        [cameraType isEqualToString:*MEMORY[0x1E6986948]];
        kdebug_trace();

        objc_msgSend_timestamp(v185);
        [dataCopy cameraIntrinsics];
        [dataCopy cameraIntrinsics];
        [dataCopy cameraIntrinsics];
        kdebug_trace();
        v36 = v185;
      }

      v329(v328);
      _Block_object_dispose(&v333, 8);
      _Block_object_dispose(&v337, 8);
      goto LABEL_191;
    }

    if (needed == -90)
    {
      v95 = 3;
    }

    else if (needed == 180)
    {
      v95 = 2;
    }

    else
    {
      v95 = needed == 90;
    }

    *v101.i64 = matrixForImageRotation(v95);
    v277 = v102;
    v279 = v101;
    v273 = v104;
    v275 = v103;
    v105 = MEMORY[0x1E698C198];
    [dataCopy visionTransform];
    [v105 transformMetersToMillimiters:?];
    v289 = v106;
    v282 = v108;
    *allocatora = v107;
    v281 = v109;
    calibrationData = [dataCopy calibrationData];

    if (calibrationData)
    {
      v111 = objc_alloc(MEMORY[0x1E698C180]);
      calibrationData2 = [dataCopy calibrationData];
      v113 = [v111 ar_initWithImageData:dataCopy calibrationData:calibrationData2];

      v114 = objc_opt_new();
      [v113 setDistortionModel:v114];

      [v113 adjustForImageRotation:v95];
      [v113 referenceDimensions];
      v115 = selfCopy;
      v117 = v116;
      [v113 referenceDimensions];
      v119 = var5;
      if (v117 * v13 != v118 * v14)
      {
        [v113 referenceDimensions];
        v121 = v120;
        [v113 referenceDimensions];
        v119 = v121 * v13 / v122;
      }

      [v113 scale:{v13, v119}];
    }

    else
    {
      v113 = 0;
      v115 = selfCopy;
    }

    previousDepthBuffer = v115->_previousDepthBuffer;
    v124 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
    if (!previousDepthBuffer || !v115->_previousConfidenceBuffer)
    {
      CVPixelBufferRelease(previousDepthBuffer);
      selfCopy->_previousDepthBuffer = CVPixelBufferRetain(*(v370[0] + 24));
      CVPixelBufferRelease(selfCopy->_previousConfidenceBuffer);
      v136 = CVPixelBufferRetain(v362[3]);
      v137 = selfCopy;
      selfCopy->_previousConfidenceBuffer = v136;
LABEL_129:
      *v137->_anon_210 = v289;
      *&v137->_anon_210[16] = *allocatora;
      *&v137->_anon_210[32] = v282;
      *&v137->_anon_210[48] = v281;
      objc_storeStrong((&v137->super.super.super.super.isa + v124[113]), v113);

      v60 = selfCopy;
      goto LABEL_130;
    }

    v125 = ARCreateCVPixelBufferFromPool(&v115->_outputTemporalConsistentDepthPixelBufferPool, 1717855600, v115, @"temporally consistent depth buffer", v13, v14);
    *(v338[0] + 24) = v125;
    v126 = ARCreateCVPixelBufferFromPool(&selfCopy->_outputTemporalConsistentConfidencePixelBufferPool, 1717855600, selfCopy, @"temporally consistent confidence buffer", v13, v14);
    v334[3] = v126;
    if (!*(v338[0] + 24) || !v126)
    {
      if (ARShouldUseLogTypeError_onceToken_6 != -1)
      {
        [ARDepthTechnique _initLKT];
      }

      v142 = ARShouldUseLogTypeError_internalOSVersion_6;
      v143 = _ARLogTechnique_0(v126);
      v144 = v143;
      if (v142 == 1)
      {
        if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
        {
          v145 = objc_opt_class();
          v146 = NSStringFromClass(v145);
          buf.columns[0].i32[0] = 138543618;
          *(buf.columns[0].i64 + 4) = v146;
          buf.columns[0].i16[6] = 2048;
          *(&buf.columns[0].i64[1] + 6) = selfCopy;
          _os_log_impl(&dword_1C241C000, v144, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create pixel buffer for generating optical flow result pixelbuffer", &buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v143, OS_LOG_TYPE_INFO))
      {
        v147 = objc_opt_class();
        v148 = NSStringFromClass(v147);
        buf.columns[0].i32[0] = 138543618;
        *(buf.columns[0].i64 + 4) = v148;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = selfCopy;
        _os_log_impl(&dword_1C241C000, v144, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to create pixel buffer for generating optical flow result pixelbuffer", &buf, 0x16u);
      }

      v137 = selfCopy;
      goto LABEL_129;
    }

    os_unfair_lock_lock(&selfCopy->_opticalFlowOutputBufferLock);
    objc_msgSend_timestamp(dataCopy);
    kdebug_trace();
    v375 = __invert_f4(*selfCopy->_anon_210);
    v127 = 0;
    v371 = v375;
    memset(&buf, 0, sizeof(buf));
    do
    {
      buf.columns[v127] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v289, COERCE_FLOAT(*&v371.columns[v127])), *allocatora, *v371.columns[v127].f32, 1), v282, v371.columns[v127], 2), v281, v371.columns[v127], 3);
      ++v127;
    }

    while (v127 != 4);
    v271 = buf.columns[1];
    v272 = buf.columns[0];
    v269 = buf.columns[3];
    v270 = buf.columns[2];
    v376.columns[1] = v277;
    v376.columns[0] = v279;
    v376.columns[3] = v273;
    v376.columns[2] = v275;
    v377 = __invert_f4(v376);
    v128 = 0;
    v371.columns[0] = v279;
    v371.columns[1] = v277;
    v371.columns[2] = v275;
    v371.columns[3] = v273;
    memset(&buf, 0, sizeof(buf));
    do
    {
      buf.columns[v128] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v272, COERCE_FLOAT(*&v371.columns[v128])), v271, *v371.columns[v128].f32, 1), v270, v371.columns[v128], 2), v269, v371.columns[v128], 3);
      ++v128;
    }

    while (v128 != 4);
    v129 = 0;
    v371 = buf;
    memset(&buf, 0, sizeof(buf));
    do
    {
      buf.columns[v129] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v377.columns[0], COERCE_FLOAT(*&v371.columns[v129])), v377.columns[1], *v371.columns[v129].f32, 1), v377.columns[2], v371.columns[v129], 2), v377.columns[3], v371.columns[v129], 3);
      ++v129;
    }

    while (v129 != 4);
    v278 = *buf.columns[1].i64;
    v280 = *buf.columns[0].i64;
    v274 = *buf.columns[3].i64;
    v276 = *buf.columns[2].i64;
    previousWarpedDepthBuffer = selfCopy->_previousWarpedDepthBuffer;
    if (previousWarpedDepthBuffer)
    {
      v131 = CVPixelBufferGetWidth(selfCopy->_previousWarpedDepthBuffer);
      v132 = CVPixelBufferGetHeight(previousWarpedDepthBuffer);
      v133 = v13 == v131 && v14 == v132;
      v134 = selfCopy;
      if (v133)
      {
LABEL_106:
        previousWarpedConfidenceBuffer = v134->_previousWarpedConfidenceBuffer;
        if (previousWarpedConfidenceBuffer)
        {
          v151 = CVPixelBufferGetWidth(v134->_previousWarpedConfidenceBuffer);
          v152 = CVPixelBufferGetHeight(previousWarpedConfidenceBuffer);
          v153 = selfCopy->_previousWarpedConfidenceBuffer;
          if (v13 == v151 && v14 == v152)
          {
            goto LABEL_115;
          }
        }

        else
        {
          v153 = 0;
        }

        CVPixelBufferRelease(v153);
        v153 = ARCreateCVPixelBufferFromPool(&selfCopy->_outputTemporalConsistentConfidencePixelBufferPool, 1717855600, selfCopy, @"temporally consistent depth buffer", v13, v14);
        selfCopy->_previousWarpedConfidenceBuffer = v153;
LABEL_115:
        v274 = [(ADJasperColorPipeline *)selfCopy->_pipeline warpPreviousDepth:selfCopy->_previousDepthBuffer intoCurrentDepth:selfCopy->_previousWarpedDepthBuffer previousConfidence:selfCopy->_previousConfidenceBuffer intoCurrentConfidence:v153 usingPoseDelta:selfCopy->_previousCameraCalibration previousCalibration:v113 currentCalibration:v280, v278, v276, v274];
        if (!v274)
        {
          v274 = [(ADJasperColorPipeline *)selfCopy->_pipeline fuseCurrentDepth:*(v370[0] + 24) previousDepth:selfCopy->_previousWarpedDepthBuffer intoOutputDepth:*(v338[0] + 24) currentConfidence:v362[3] previousConfidence:selfCopy->_previousWarpedConfidenceBuffer intoOutputConfidence:v334[3]];
        }

        objc_msgSend_timestamp(dataCopy);
        kdebug_trace();
        os_unfair_lock_unlock(&selfCopy->_opticalFlowOutputBufferLock);
        if (v274)
        {
          if (ARShouldUseLogTypeError_onceToken_6 != -1)
          {
            [ARDepthTechnique _initLKT];
          }

          v157 = ARShouldUseLogTypeError_internalOSVersion_6;
          v158 = _ARLogTechnique_0(v156);
          v159 = v158;
          if (v157 == 1)
          {
            if (os_log_type_enabled(v158, OS_LOG_TYPE_ERROR))
            {
              v160 = objc_opt_class();
              v161 = NSStringFromClass(v160);
              buf.columns[0].i32[0] = 138543874;
              *(buf.columns[0].i64 + 4) = v161;
              buf.columns[0].i16[6] = 2048;
              *(&buf.columns[0].i64[1] + 6) = selfCopy;
              buf.columns[1].i16[3] = 2048;
              buf.columns[1].i64[1] = v274;
              _os_log_impl(&dword_1C241C000, v159, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to warp and fuse AppleDepth pipeline output: %li", &buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v158, OS_LOG_TYPE_INFO))
          {
            v163 = objc_opt_class();
            v164 = NSStringFromClass(v163);
            buf.columns[0].i32[0] = 138543874;
            *(buf.columns[0].i64 + 4) = v164;
            buf.columns[0].i16[6] = 2048;
            *(&buf.columns[0].i64[1] + 6) = selfCopy;
            buf.columns[1].i16[3] = 2048;
            buf.columns[1].i64[1] = v274;
            _os_log_impl(&dword_1C241C000, v159, OS_LOG_TYPE_INFO, "Error: %{public}@ <%p>: Unable to warp and fuse AppleDepth pipeline output: %li", &buf, 0x20u);
          }

          v137 = selfCopy;
        }

        else
        {
          CVPixelBufferRelease(selfCopy->_previousDepthBuffer);
          selfCopy->_previousDepthBuffer = CVPixelBufferRetain(*(v338[0] + 24));
          CVPixelBufferRelease(selfCopy->_previousConfidenceBuffer);
          v162 = CVPixelBufferRetain(v334[3]);
          v137 = selfCopy;
          selfCopy->_previousConfidenceBuffer = v162;
        }

        v124 = &OBJC_IVAR___ARReplaySensorPublic__sequenceURL;
        goto LABEL_129;
      }

      v135 = selfCopy->_previousWarpedDepthBuffer;
    }

    else
    {
      v135 = 0;
    }

    CVPixelBufferRelease(v135);
    v149 = ARCreateCVPixelBufferFromPool(&selfCopy->_outputTemporalConsistentDepthPixelBufferPool, 1717855600, selfCopy, @"temporally consistent depth buffer", v13, v14);
    v134 = selfCopy;
    selfCopy->_previousWarpedDepthBuffer = v149;
    goto LABEL_106;
  }

  v36 = 0;
LABEL_195:
  _Block_object_dispose(&v361, 8);
  v366(v365);
LABEL_196:
  _Block_object_dispose(&v369, 8);

  return v36;
}

void __143__ARDepthTechnique_createResultDataFromTensors_numberOfOutputTensors_imageDataForNeuralNetwork_inputImageData_rotationNeeded_regionOfInterest___block_invoke_42(uint64_t a1)
{
  CVPixelBufferRelease(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(*(*(a1 + 40) + 8) + 24);

  CVPixelBufferRelease(v2);
}

- (id)_rotatedPixelBufferImageData:(__CVBuffer *)data
{
  v5 = objc_opt_new();
  [v5 setPixelBuffer:data];
  PixelFormatType = CVPixelBufferGetPixelFormatType(data);
  v7 = &OBJC_IVAR___ARDepthTechnique__float32RotationTechnique;
  if (PixelFormatType == 1278226488)
  {
    v7 = &OBJC_IVAR___ARDepthTechnique__oneComponent8RotationTechnique;
  }

  v8 = [*(&self->super.super.super.super.isa + *v7) processData:v5];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v9.receiver = self;
  v9.super_class = ARDepthTechnique;
  if ([(ARTechnique *)&v9 isEqual:equalCopy])
  {
    v5 = equalCopy;
    prioritization = [(ARDepthTechnique *)self prioritization];
    v7 = prioritization == [v5 prioritization] && self->_temporalConsistencyMethod == v5[88];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)sceneDepthTechniqueForPrioritization:(int64_t)prioritization temporalSmoothing:(BOOL)smoothing
{
  smoothingCopy = smoothing;
  v6 = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.appleDepth.useLegacyDepthTechnique"];
  v7 = off_1E817A6A8;
  if (!v6)
  {
    v7 = off_1E817AB80;
  }

  v8 = [objc_alloc(*v7) initWithPrioritization:prioritization temporalSmoothing:smoothingCopy];

  return v8;
}

@end