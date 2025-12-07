@interface BWDisparityPostProcessingInferenceProvider
- (BWDisparityPostProcessingInferenceProvider)initWithDisparityInputRequirement:(id)requirement displacementInputRequirement:(id)inputRequirement stateInputRequirement:(id)stateInputRequirement stateOutputRequirement:(id)outputRequirement disparityOutputRequirement:(id)disparityOutputRequirement portType:(id)type resourceProvider:(id)provider configuration:(id)self0;
- (NSArray)inputVideoRequirements;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (uint64_t)newTextureWithRequirement:(void *)requirement usingStorage:(uint64_t)storage descriptor:(int)descriptor isOutput:;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWDisparityPostProcessingInferenceProvider

- (NSArray)inputVideoRequirements
{
  v2 = *&self->_stateInputRequirement;
  v4[0] = *&self->_displacementInputRequirement;
  v4[1] = v2;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];
}

- (BWDisparityPostProcessingInferenceProvider)initWithDisparityInputRequirement:(id)requirement displacementInputRequirement:(id)inputRequirement stateInputRequirement:(id)stateInputRequirement stateOutputRequirement:(id)outputRequirement disparityOutputRequirement:(id)disparityOutputRequirement portType:(id)type resourceProvider:(id)provider configuration:(id)self0
{
  v18.receiver = self;
  v18.super_class = BWDisparityPostProcessingInferenceProvider;
  v16 = [(BWDisparityPostProcessingInferenceProvider *)&v18 init];
  if (v16)
  {
    v16->_metalInferenceContext = [provider defaultDeviceMetalContext];
    v16->_disparityInputRequirement = requirement;
    v16->_displacementInputRequirement = inputRequirement;
    v16->_disparityOutputRequirement = disparityOutputRequirement;
    v16->_stateInputRequirement = stateInputRequirement;
    v16->_stateOutputRequirement = outputRequirement;
    v16->_portType = type;
    v16->_concurrencyWidth = [configuration concurrencyWidth];
    *&v16->_resetTemporalStateOnAspectRatioChange = [configuration colorInputRotationChangesWithAspectRatio];
  }

  return v16;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWDisparityPostProcessingInferenceProvider;
  [(BWDisparityPostProcessingInferenceProvider *)&v4 dealloc];
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  self->_disparityPostProcessor = 0;
  videoFormat = [(BWInferenceVideoRequirement *)self->_disparityInputRequirement videoFormat];
  width = [(BWInferenceVideoFormat *)videoFormat width];
  height = [(BWInferenceVideoFormat *)videoFormat height];
  videoFormat2 = [(BWInferenceVideoRequirement *)self->_disparityOutputRequirement videoFormat];
  width2 = [(BWInferenceVideoFormat *)videoFormat2 width];
  height2 = [(BWInferenceVideoFormat *)videoFormat2 height];
  v10 = objc_alloc(getPTDisparityPostProcessingClass());
  commandQueue = [(BWMetalInferenceContext *)self->_metalInferenceContext commandQueue];
  portType = self->_portType;
  v17[0] = width;
  v17[1] = height;
  v17[2] = 1;
  v16[0] = width2;
  v16[1] = height2;
  v16[2] = 1;
  v15[0] = width;
  v15[1] = height;
  v15[2] = 1;
  v13 = [v10 initWithCommandQueue:commandQueue disparitySize:v17 filteredDisparitySize:v16 disparityPixelFormat:25 colorSize:v15 colorPixelFormat:71 sensorPort:portType];
  self->_disparityPostProcessor = v13;
  if (v13)
  {
    self->_disparityInputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](videoFormat height:"width") mipmapped:-[BWInferenceVideoFormat height](videoFormat, "height"), 0];
    self->_disparityOutputDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:25 width:-[BWInferenceVideoFormat width](videoFormat2 height:"width") mipmapped:-[BWInferenceVideoFormat height](videoFormat2, "height"), 0];
    self->_displacementDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](-[BWInferenceVideoRequirement videoFormat](self->_displacementInputRequirement height:"videoFormat") mipmapped:"width"), -[BWInferenceVideoFormat height](-[BWInferenceVideoRequirement videoFormat](self->_displacementInputRequirement, "videoFormat"), "height"), 0];
    self->_stateInDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](videoFormat2 height:"width") mipmapped:-[BWInferenceVideoFormat height](videoFormat2, "height"), 0];
    self->_stateOutDescriptor = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:65 width:-[BWInferenceVideoFormat width](videoFormat2 height:"width") mipmapped:-[BWInferenceVideoFormat height](videoFormat2, "height"), 0];
    [(MTLTextureDescriptor *)self->_disparityInputDescriptor setUsage:1];
    [(MTLTextureDescriptor *)self->_disparityOutputDescriptor setUsage:2];
    [(MTLTextureDescriptor *)self->_displacementDescriptor setUsage:1];
    [(MTLTextureDescriptor *)self->_stateInDescriptor setUsage:1];
    [(MTLTextureDescriptor *)self->_stateOutDescriptor setUsage:2];
    return 0;
  }

  else
  {
    [BWDisparityPostProcessingInferenceProvider prepareForSubmissionWithWorkQueue:];
    return -31702;
  }
}

uint64_t __128__BWDisparityPostProcessingInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

uint64_t __128__BWDisparityPostProcessingInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2()
{
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
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  stateOutputRequirement = self->_stateOutputRequirement;
  v16[0] = self->_disparityOutputRequirement;
  v16[1] = stateOutputRequirement;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        concurrencyWidth = self->_concurrencyWidth;
        if (concurrencyWidth)
        {
          v11 = *(*(&v18 + 1) + 8 * v9);
          do
          {
            [v3 addObject:v11];
            --concurrencyWidth;
          }

          while (concurrencyWidth);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = [BWInferenceProviderStorage alloc];
  v13 = *&self->_stateInputRequirement;
  v15[0] = *&self->_displacementInputRequirement;
  v15[1] = v13;
  return -[BWInferenceProviderStorage initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:](v12, "initWithRequirementsNeedingPixelBuffers:requirementsNeedingPixelBufferPools:", [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:4], v3);
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  cf = 0;
  v8 = [storage pixelBufferForRequirement:self->_disparityOutputRequirement];
  if (v8)
  {
    v10 = *MEMORY[0x1E6960C70];
    v11 = *(MEMORY[0x1E6960C70] + 16);
    if (BWSampleBufferCreateFromPixelBuffer(v8, &v10, &self->_outputFormatDescription, &cf))
    {
      [BWDisparityPostProcessingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
    }

    else
    {
      attachedMediaKey = [(BWInferenceMediaRequirement *)self->_disparityOutputRequirement attachedMediaKey];
      BWSampleBufferSetAttachedMedia(sampleBuffer, attachedMediaKey, cf);
    }
  }

  else
  {
    [BWDisparityPostProcessingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (uint64_t)newTextureWithRequirement:(void *)requirement usingStorage:(uint64_t)storage descriptor:(int)descriptor isOutput:
{
  if (!self)
  {
    return 0;
  }

  if (descriptor)
  {
    v10 = [objc_msgSend(requirement pixelBufferPoolForRequirement:{a2), "newPixelBuffer"}];
    if (v10)
    {
      v11 = v10;
      [requirement setPixelBuffer:v10 forRequirement:a2];
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v11 = [requirement pixelBufferForRequirement:a2];
  if (!v11)
  {
LABEL_9:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

LABEL_6:
  v12 = [objc_msgSend(objc_msgSend(*(self + 64) "commandQueue")];
  if (descriptor)
  {
    CFRelease(v11);
  }

  return v12;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  selfCopy = self;
  v12 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    self = OUTLINED_FUNCTION_2_80(822152321);
  }

  if (selfCopy->_resetTemporalStateOnAspectRatioChange)
  {
    self = CMGetAttachment(buffer, *off_1E798A440, 0);
    if (self)
    {
      self = [(BWDisparityPostProcessingInferenceProvider *)self BOOLValue];
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }

    if (selfCopy->_previousAspectRatioIsLandscape != selfCopy2)
    {
      self = [(PTDisparityPostProcessing *)selfCopy->_disparityPostProcessor reset];
    }

    selfCopy->_previousAspectRatioIsLandscape = selfCopy2;
  }

  v14 = OUTLINED_FUNCTION_1_90(self, selfCopy->_disparityInputRequirement, buffer, selfCopy->_disparityInputDescriptor);
  if (!v14)
  {
    v24 = 0;
    v17 = 0;
LABEL_21:
    v23 = 0;
    v20 = 0;
    goto LABEL_24;
  }

  v15 = [(BWDisparityPostProcessingInferenceProvider *)selfCopy newTextureWithRequirement:storage usingStorage:selfCopy->_disparityOutputDescriptor descriptor:1 isOutput:?];
  v17 = v15;
  if (!v15)
  {
    v24 = 0;
    goto LABEL_21;
  }

  v18 = OUTLINED_FUNCTION_1_90(v15, selfCopy->_stateInputRequirement, v16, selfCopy->_stateInDescriptor);
  v20 = v18;
  if (!v18)
  {
    v24 = 0;
    v23 = 0;
    goto LABEL_24;
  }

  v21 = OUTLINED_FUNCTION_1_90(v18, selfCopy->_stateOutputRequirement, v19, selfCopy->_stateOutDescriptor);
  v23 = v21;
  if (!v21)
  {
    v24 = 0;
    goto LABEL_24;
  }

  v24 = OUTLINED_FUNCTION_1_90(v21, selfCopy->_displacementInputRequirement, v22, selfCopy->_displacementDescriptor);
  if (!v24)
  {
LABEL_24:
    v28 = 4294935578;
    goto LABEL_25;
  }

  v25 = [(PTDisparityPostProcessing *)selfCopy->_disparityPostProcessor temporalDisparityFilter:v24 inStatePrev:v20 inDisparity:v14 outDisparityFiltered:v17 outState:v23];
  if (v25)
  {
    v30 = v25;
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, v7, v35, v36, v37, v38, v39, v40);
    v28 = 4294935586;
  }

  else
  {
    commandBuffer = [(MTLCommandQueue *)[(BWMetalInferenceContext *)selfCopy->_metalInferenceContext commandQueue] commandBuffer];
    if (commandBuffer)
    {
      v27 = commandBuffer;
      v36 = MEMORY[0x1E69E9820];
      v37 = 3221225472;
      v38 = __128__BWDisparityPostProcessingInferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
      v39 = &unk_1E798FB70;
      v42 = 0;
      v40 = selfCopy;
      handlerCopy = handler;
      [commandBuffer addScheduledHandler:&v36];
      [v27 addCompletedHandler:&__block_literal_global_85];
      [v27 commit];
      LODWORD(v28) = 0;
      goto LABEL_18;
    }

    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v7, v35, v36, v37, v38, v39, v40);
    emitter = fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFEE107, "<<<< BWDisparityPostProcessingInferenceProvider >>>>", 0x112, v7, v32, v33, v34);
    v28 = 0;
  }

LABEL_25:
  if (handler)
  {
    (*(handler + 2))(handler, v28, selfCopy);
  }

  if (*v12 == 1)
  {
    OUTLINED_FUNCTION_2_80(822152322);
  }

LABEL_18:

  return v28;
}

@end