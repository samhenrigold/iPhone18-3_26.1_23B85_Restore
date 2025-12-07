@interface BWDerectificationInferenceProvider
- (BWDerectificationInferenceProvider)initWithInputRequirement:(id)requirement opticalFlowInputRequirement:(id)inputRequirement outputRequirement:(id)outputRequirement resourceProvider:(id)provider configuration:(id)configuration;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWDerectificationInferenceProvider

- (BWDerectificationInferenceProvider)initWithInputRequirement:(id)requirement opticalFlowInputRequirement:(id)inputRequirement outputRequirement:(id)outputRequirement resourceProvider:(id)provider configuration:(id)configuration
{
  v14.receiver = self;
  v14.super_class = BWDerectificationInferenceProvider;
  v12 = [(BWDerectificationInferenceProvider *)&v14 init];
  if (v12)
  {
    v12->_metalInferenceContext = [provider defaultDeviceMetalContext];
    v12->_outputRequirement = outputRequirement;
    v12->_inputRequirement = requirement;
    v12->_opticalFlowInputRequirement = inputRequirement;
    v12->_portType = [configuration portType];
    v12->_lastIsQsubFrame = 0;
    v12->_applyRollingShutterCorrection = 1;
    v12->_canonicalDisparityScaleFactorOverride = 0.0;
  }

  return v12;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWDerectificationInferenceProvider;
  [(BWDerectificationInferenceProvider *)&v4 dealloc];
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  videoFormat = [(BWInferenceVideoRequirement *)self->_inputRequirement videoFormat];
  self->_inputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](videoFormat height:"width") mipmapped:-[BWInferenceVideoFormat height](videoFormat, "height"), 0];
  self->_outputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](videoFormat height:"width") mipmapped:-[BWInferenceVideoFormat height](videoFormat, "height"), 0];
  [(MTLTextureDescriptor *)self->_inputDescriptor setUsage:1];
  [(MTLTextureDescriptor *)self->_outputDescriptor setUsage:2];
  v5 = [objc_alloc(MEMORY[0x1E6991790]) initWithOptionalCommandQueue:{-[BWMetalInferenceContext commandQueue](self->_metalInferenceContext, "commandQueue")}];
  self->_gdcTransform = v5;
  if (!v5)
  {
    [BWDerectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
LABEL_14:
    LODWORD(opticalFlowInputRequirement) = -31702;
    return opticalFlowInputRequirement;
  }

  v27 = 0;
  v6 = -[MTLDevice newDefaultLibraryWithBundle:error:](-[BWMetalInferenceContext device](self->_metalInferenceContext, "device"), "newDefaultLibraryWithBundle:error:", [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()], &v27);
  if (v6)
  {
    v7 = -[MTLDevice newComputePipelineStateWithFunction:error:](-[BWMetalInferenceContext device](self->_metalInferenceContext, "device"), "newComputePipelineStateWithFunction:error:", [v6 newFunctionWithName:@"depthPadding"], &v27);
    self->_depthPaddingPipelineState = v7;
    if (v7)
    {
      opticalFlowInputRequirement = self->_opticalFlowInputRequirement;
      if (!opticalFlowInputRequirement)
      {
        return opticalFlowInputRequirement;
      }

      v9 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](opticalFlowInputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_opticalFlowInputRequirement, "videoFormat"), "height"), 0];
      self->_opticalFlowInputDescriptor = v9;
      [(MTLTextureDescriptor *)v9 setUsage:1];
      disparityPostProcessor = self->_disparityPostProcessor;
      if (disparityPostProcessor)
      {
      }

      width = [(MTLTextureDescriptor *)self->_inputDescriptor width];
      height = [(MTLTextureDescriptor *)self->_inputDescriptor height];
      width2 = [(MTLTextureDescriptor *)self->_opticalFlowInputDescriptor width];
      height2 = [(MTLTextureDescriptor *)self->_opticalFlowInputDescriptor height];
      width3 = [(MTLTextureDescriptor *)self->_inputDescriptor width];
      height3 = [(MTLTextureDescriptor *)self->_inputDescriptor height];
      v17 = objc_alloc(getPTDisparityPostProcessingClass());
      commandQueue = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
      portType = self->_portType;
      v26[0] = width;
      v26[1] = height;
      v26[2] = 1;
      v25[0] = width3;
      v25[1] = height3;
      v25[2] = 1;
      v24[0] = width2;
      v24[1] = height2;
      v24[2] = 1;
      v20 = [v17 initWithCommandQueue:commandQueue disparitySize:v26 filteredDisparitySize:v25 disparityPixelFormat:25 colorSize:v24 colorPixelFormat:71 sensorPort:portType];
      self->_disparityPostProcessor = v20;
      if (v20)
      {
        v21 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:width3 height:height3 mipmapped:0];
        [v21 setUsage:3];
        [v21 setResourceOptions:32];
        v22 = [(MTLDevice *)[(BWMetalInferenceContext *)self->_metalInferenceContext device] newTextureWithDescriptor:v21];
        LODWORD(opticalFlowInputRequirement) = 0;
        self->_disparityIntermediate = v22;
        return opticalFlowInputRequirement;
      }

      [BWDerectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    }

    else
    {
      [BWDerectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
    }

    goto LABEL_14;
  }

  [BWDerectificationInferenceProvider prepareForSubmissionWithWorkQueue:];
  LODWORD(opticalFlowInputRequirement) = 0;
  return opticalFlowInputRequirement;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  opticalFlowInputRequirement = self->_opticalFlowInputRequirement;
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame");
  v13 = *off_1E798A3C8;
  if (!CMGetAttachment(AttachedMedia, *off_1E798A3C8, 0))
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_45;
  }

  v14 = CMGetAttachment(buffer, v13, 0);
  if (!v14)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
LABEL_45:
    v57 = 0;
    v22 = 0;
    v65 = 0;
    v56 = 0;
    commandBuffer = 4294935582;
    if (!handler)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v15 = v14;
  v16 = [storage pixelBufferForRequirement:self->_inputRequirement];
  if (!v16)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v57 = 0;
    v22 = 0;
    v65 = 0;
    v56 = 0;
    commandBuffer = 4294935584;
    if (!handler)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v17 = v16;
  v18 = [storage pixelBufferPoolForRequirement:self->_outputRequirement];
  newPixelBuffer = [v18 newPixelBuffer];
  if (!newPixelBuffer)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    v57 = 0;
    v22 = 0;
    v65 = 0;
    v56 = 0;
    commandBuffer = 4294935578;
    if (!handler)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  v20 = newPixelBuffer;
  storageCopy = storage;
  commandQueue = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
  v65 = [-[MTLCommandQueue device](commandQueue "device")];
  v22 = [-[MTLCommandQueue device](commandQueue "device")];
  v62 = v20;
  handlerCopy = handler;
  if (opticalFlowInputRequirement)
  {
    v23 = [storageCopy pixelBufferForRequirement:self->_opticalFlowInputRequirement];
    if (!v23)
    {
      [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
      v57 = 0;
      commandBuffer = 4294935584;
      goto LABEL_65;
    }

    v61 = [-[MTLCommandQueue device](commandQueue "device")];
  }

  else
  {
    v61 = 0;
  }

  v81 = 0;
  v79 = 0u;
  v80 = 0u;
  v77 = 0u;
  v78 = 0u;
  v76 = 0u;
  memset(v75, 0, sizeof(v75));
  memset(v74, 0, 184);
  v73 = 0.0;
  v24 = CMGetAttachment(buffer, @"unrectifyData", 0);
  v25 = [objc_msgSend(v24 objectForKeyedSubscript:{@"refRollingShutterRowCount", "intValue"}];
  [objc_msgSend(v24 objectForKeyedSubscript:{@"refRollingShutterHomographyStep", "floatValue"}];
  v27 = v26;
  [objc_msgSend(v24 objectForKeyedSubscript:{@"gdcParametersReference", "getValue:", v75}];
  [objc_msgSend(v24 objectForKeyedSubscript:{@"calModel", "getValue:", v74}];
  v28 = [v24 objectForKeyedSubscript:@"orientationVector"];
  if ([v28 length] != 8)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
LABEL_55:
    commandBuffer = 4294935595;
    goto LABEL_58;
  }

  v29 = [v28 getBytes:&v73 length:8];
  HIDWORD(v30) = HIDWORD(v73);
  if (*&v73 < 0.0)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:v29 usingStorage:v73 withSubmissionTime:? workQueue:? completionHandler:?];
LABEL_57:
    commandBuffer = 4294935556;
    goto LABEL_58;
  }

  LODWORD(v30) = HIDWORD(v73);
  if (*(&v73 + 1) < 0.0)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:v29 usingStorage:*(&v73 + 1) withSubmissionTime:? workQueue:? completionHandler:?];
    goto LABEL_57;
  }

  v31 = [v24 objectForKeyedSubscript:{@"refRollingShutterCorrectionHomographiesInv", v30}];
  if ([v31 length] != 48 * v25)
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_55;
  }

  bytes = [v31 bytes];
  width = [v22 width];
  height = [v22 height];
  *(&v76 + 1) = width;
  *&v77 = height;
  BYTE8(v77) = 1;
  HIDWORD(v77) = 1;
  if (self->_applyRollingShutterCorrection)
  {
    *&v78 = bytes;
    *(&v78 + 1) = __PAIR64__(v27, v25);
    LOBYTE(v79) = 1;
  }

  width2 = [v65 width];
  v36 = v74[19];
  *&v60 = width2 / v36;
  height2 = [v65 height];
  v38 = v74[20];
  v39 = vmul_f32(*&v73, __PAIR64__(height2 / v38, v60));
  v40 = v74[18] / sqrtf(vaddv_f32(vmul_f32(v39, v39)));
  if (self->_canonicalDisparityScaleFactorOverride == 0.0)
  {
    canonicalDisparityScaleFactorOverride = v40;
  }

  else
  {
    canonicalDisparityScaleFactorOverride = self->_canonicalDisparityScaleFactorOverride;
  }

  v42 = [objc_msgSend(v15 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] == 1;
  if (self->_lastIsQsubFrame == v42 || !opticalFlowInputRequirement)
  {
    self->_lastIsQsubFrame = v42;
    commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
    gdcTransform = self->_gdcTransform;
    if (opticalFlowInputRequirement)
    {
      disparityIntermediate = self->_disparityIntermediate;
      v45 = 1;
      goto LABEL_25;
    }

    v45 = 0;
  }

  else
  {
    [(PTDisparityPostProcessing *)self->_disparityPostProcessor reset];
    self->_lastIsQsubFrame = v42;
    commandBuffer = [(MTLCommandQueue *)commandQueue commandBuffer];
    v45 = 0;
    gdcTransform = self->_gdcTransform;
  }

  disparityIntermediate = v22;
LABEL_25:
  *&v44 = canonicalDisparityScaleFactorOverride;
  if ([(GDCTransform *)gdcTransform transformFrom:v65 to:disparityIntermediate withParameters:v75 withScale:2 withMode:commandBuffer andCommandBuffer:v44])
  {
    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    goto LABEL_57;
  }

  v72 = 0u;
  v71 = 0u;
  if (FigCFDictionaryGetCGRectIfPresent())
  {
    newPixelBuffer2 = [v18 newPixelBuffer];
    if (newPixelBuffer2)
    {
      v49 = newPixelBuffer2;
      v50 = [-[MTLCommandQueue device](commandQueue "device")];
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      v52 = computeCommandEncoder;
      v53 = v22;
      if (v45)
      {
        v53 = self->_disparityIntermediate;
      }

      [computeCommandEncoder setTexture:v53 atIndex:0];
      [v52 setTexture:v50 atIndex:1];
      v70 = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(v71, *&v74[19])), vdivq_f64(v72, *&v74[19]));
      [v52 setBytes:&v70 length:16 atIndex:0];
      [v52 setComputePipelineState:self->_depthPaddingPipelineState];
      threadExecutionWidth = [(MTLComputePipelineState *)self->_depthPaddingPipelineState threadExecutionWidth];
      v55 = [(MTLComputePipelineState *)self->_depthPaddingPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
      v69[0] = [v22 width];
      v69[1] = [v22 height];
      v69[2] = 1;
      v68[0] = threadExecutionWidth;
      v68[1] = v55;
      v68[2] = 1;
      [v52 dispatchThreads:v69 threadsPerThreadgroup:v68];
      [v52 endEncoding];
      v56 = v49;
      v20 = v62;
      handler = handlerCopy;
      goto LABEL_35;
    }

    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    commandBuffer = 4294935578;
LABEL_58:
    v56 = v20;
    handler = handlerCopy;
    v57 = v61;
    if (!handlerCopy)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

  if (v45)
  {
    v57 = v61;
    handler = handlerCopy;
    if (![(PTDisparityPostProcessing *)self->_disparityPostProcessor temporalDisparityFilter:commandBuffer inDisparity:self->_disparityIntermediate inDisplacement:v61 inDisparityFilteredPrev:self->_disparityIntermediate outDisparityFiltered:v22 disparityBias:0.0])
    {
      v56 = 0;
      v50 = 0;
      v49 = v20;
      goto LABEL_36;
    }

    [BWDerectificationInferenceProvider submitForSampleBuffer:usingStorage:withSubmissionTime:workQueue:completionHandler:];
    commandBuffer = 4294935578;
LABEL_65:
    v56 = v20;
    if (!handler)
    {
LABEL_60:
      v50 = 0;
      if (!v56)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

LABEL_59:
    (*(handler + 2))(handler, commandBuffer, self);
    goto LABEL_60;
  }

  v56 = 0;
  v50 = 0;
  handler = handlerCopy;
  v49 = v20;
LABEL_35:
  v57 = v61;
LABEL_36:
  [storageCopy setPixelBuffer:v49 forRequirement:self->_outputRequirement];
  if (*MEMORY[0x1E695FF58])
  {
    v58 = [objc_msgSend(commandBuffer "commandQueue")];
    [v58 setLabel:@"KTRACE_MTLCMDBUF"];
    [v58 addCompletedHandler:&__block_literal_global_26];
    [v58 commit];
    [commandBuffer addCompletedHandler:&__block_literal_global_70];
  }

  if (handler)
  {
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __120__BWDerectificationInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_3;
    v66[3] = &unk_1E798FB70;
    v67 = 0;
    v66[4] = self;
    v66[5] = handler;
    [commandBuffer addScheduledHandler:v66];
  }

  [commandBuffer commit];
  CFRelease(v20);
  LODWORD(commandBuffer) = 0;
  if (v56)
  {
LABEL_41:
    CFRelease(v56);
  }

LABEL_42:

  return commandBuffer;
}

uint64_t __120__BWDerectificationInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke()
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

uint64_t __120__BWDerectificationInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  if ([a2 status] == 4)
  {
    [a2 GPUEndTime];
    result = [a2 GPUStartTime];
  }

  else
  {
    result = [a2 status];
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {

    return kdebug_trace();
  }

  return result;
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (id)newStorage
{
  v3 = [BWInferenceProviderStorage alloc];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:{self->_inputRequirement, self->_opticalFlowInputRequirement, 0}];
  outputRequirement = self->_outputRequirement;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v3, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", v4, [MEMORY[0x1E695DEC8] arrayWithObjects:&outputRequirement count:1]);
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  cf = 0;
  v8 = [storage pixelBufferForRequirement:self->_outputRequirement];
  if (v8)
  {
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    if (BWSampleBufferCreateFromPixelBuffer(v8, &v10, &self->_outputFormatDescription, &cf))
    {
      [BWDerectificationInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
    }

    else
    {
      attachedMediaKey = [(BWInferenceMediaRequirement *)self->_outputRequirement attachedMediaKey];
      BWSampleBufferSetAttachedMedia(sampleBuffer, attachedMediaKey, cf);
    }
  }

  else
  {
    [BWDerectificationInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

@end