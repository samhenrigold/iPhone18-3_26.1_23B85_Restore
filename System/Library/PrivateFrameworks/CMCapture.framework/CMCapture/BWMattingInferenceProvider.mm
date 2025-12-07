@interface BWMattingInferenceProvider
- (BWMattingInferenceProvider)initWithConfiguration:(id)configuration;
- (id)_configureMattingProcessor;
- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format;
- (id)bindMattingOutput:(id)output fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)newStorage;
- (id)processorOptionsDictionary;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prepareForExecution;
- (int)prewarmUsingLimitedMemory:(BOOL)memory;
- (uint64_t)_loadMattingProcessor;
- (unsigned)allowedPixelBufferCompressionDirection;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)setCustomInferenceIdentifier:(id)identifier;
- (void)setDepthInputVideoRequirement:(id)requirement;
- (void)setPrimaryFormatInputVideoRequirement:(id)requirement;
- (void)setRefinedDepthOutputVideoRequirement:(id)requirement;
- (void)setSegmentationInputVideoRequirement:(id)requirement;
- (void)setSegmentationOutputVideoRequirement:(id)requirement;
@end

@implementation BWMattingInferenceProvider

- (void)setPrimaryFormatInputVideoRequirement:(id)requirement
{
  primaryFormatInputVideoRequirement = self->_primaryFormatInputVideoRequirement;
  if (primaryFormatInputVideoRequirement != requirement)
  {

    self->_primaryFormatInputVideoRequirement = requirement;
  }
}

- (void)setSegmentationInputVideoRequirement:(id)requirement
{
  segmentationInputVideoRequirement = self->_segmentationInputVideoRequirement;
  if (segmentationInputVideoRequirement != requirement)
  {

    self->_segmentationInputVideoRequirement = requirement;
  }
}

- (void)setDepthInputVideoRequirement:(id)requirement
{
  depthInputVideoRequirement = self->_depthInputVideoRequirement;
  if (depthInputVideoRequirement != requirement)
  {

    self->_depthInputVideoRequirement = requirement;
  }
}

- (void)setSegmentationOutputVideoRequirement:(id)requirement
{
  if (self->_segmentationOutputVideoRequirement != requirement)
  {

    self->_segmentationOutputVideoRequirement = requirement;
  }
}

- (void)setRefinedDepthOutputVideoRequirement:(id)requirement
{
  refinedDepthOutputVideoRequirement = self->_refinedDepthOutputVideoRequirement;
  if (refinedDepthOutputVideoRequirement != requirement)
  {

    self->_refinedDepthOutputVideoRequirement = requirement;
  }
}

- (BWMattingInferenceProvider)initWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = BWMattingInferenceProvider;
  v4 = [(BWMattingInferenceProvider *)&v7 init];
  if (v4)
  {
    if (configuration && ([configuration mainImageDownscalingFactor], v5 != 0.0))
    {
      v4->_tuningParameters = [configuration tuningParameters];
      v4->_sdofRenderingTuningParameters = [configuration sdofRenderingTuningParameters];
      v4->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_metalCommandQueue = [configuration metalCommandQueue];
      v4->_segmentationInputVideoRequirement = 0;
      v4->_depthInputVideoRequirement = 0;
      v4->_primaryFormatInputVideoRequirement = 0;
      v4->_segmentationOutputVideoRequirement = 0;
      v4->_refinedDepthOutputVideoRequirement = 0;
    }

    else
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(FigMatting *)self->_mattingProcessor finishProcessing];

  v3.receiver = self;
  v3.super_class = BWMattingInferenceProvider;
  [(BWMattingInferenceProvider *)&v3 dealloc];
}

- (id)newStorage
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_inputVideoRequirements];
  [array addObjectsFromArray:self->_outputVideoRequirements];
  array2 = [MEMORY[0x1E695DF70] array];
  [array2 addObjectsFromArray:self->_outputVideoRequirements];
  v5 = [BWMattingInferenceStorage alloc];

  return [(BWInferenceProviderStorage *)v5 initWithRequirementsNeedingPixelBuffers:array requirementsNeedingPixelBufferPools:array2];
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (unsigned)allowedPixelBufferCompressionDirection
{
  executionTarget = [(BWMattingInferenceProvider *)self executionTarget];

  return [BWInferenceEngine allowedBufferCompressionDirectionForExecutionTarget:executionTarget];
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  v11 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v12 = MEMORY[0x1E695F050];
  if (self->_mattingProcessor)
  {
    v13 = [storage pixelBufferForRequirement:self->_primaryFormatInputVideoRequirement];
    if (v13)
    {
      v14 = v13;
      v15 = [storage pixelBufferForRequirement:self->_segmentationInputVideoRequirement];
      if (v15)
      {
        v16 = v15;
        v17 = [storage pixelBufferForRequirement:self->_depthInputVideoRequirement];
        if (v17)
        {
          v18 = v17;
          v19 = [storage pixelBufferForRequirement:self->_disparityInputVideoRequirement];
          if (v19)
          {
            v20 = v19;
            v21 = *(v12 + 1);
            rect.origin = *v12;
            rect.size = v21;
            v22 = CMGetAttachment(buffer, *off_1E798D340, 0);
            if (v22)
            {
              if (CGRectMakeWithDictionaryRepresentation(v22, &rect))
              {
                handlerCopy = handler;
                AttachedInference = BWInferenceGetAttachedInference(buffer, 801, 0x1F219E5F0);
                [AttachedInference count];
                v24 = [storage pixelBufferForRequirement:self->_segmentationOutputVideoRequirement];
                if (v24)
                {
                  goto LABEL_13;
                }

                v24 = [objc_msgSend(storage pixelBufferPoolForRequirement:{self->_segmentationOutputVideoRequirement), "newPixelBuffer"}];
                [storage setPixelBuffer:v24 forRequirement:self->_segmentationOutputVideoRequirement];
                if (v24)
                {
                  CFRelease(v24);
LABEL_13:
                  if (self->_refinedDepthOutputVideoRequirement)
                  {
                    v25 = [storage pixelBufferForRequirement:?];
                    if (!v25)
                    {
                      v25 = [objc_msgSend(storage pixelBufferPoolForRequirement:{self->_refinedDepthOutputVideoRequirement), "newPixelBuffer"}];
                      [storage setPixelBuffer:v25 forRequirement:self->_refinedDepthOutputVideoRequirement];
                      if (!v25)
                      {
                        emitter = fig_log_get_emitter();
                        v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFF841ALL, "<<<< BWMattingInferenceProvider >>>>", 0x191, v6, v32, v33, v34);
LABEL_20:
                        handler = handlerCopy;
                        v11 = MEMORY[0x1E695FF58];
                        v12 = MEMORY[0x1E695F050];
                        goto LABEL_21;
                      }

                      CFRelease(v25);
                    }
                  }

                  else
                  {
                    v25 = 0;
                  }

                  CVBufferSetAttachment(v24, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
                  [(FigMatting *)self->_mattingProcessor setImagePixelBuffer:v14];
                  [(FigMatting *)self->_mattingProcessor setInputSegmentationPixelBuffer:v16];
                  [(FigMatting *)self->_mattingProcessor setInputDepthPixelBuffer:v18];
                  [(FigMatting *)self->_mattingProcessor setInputDisparityPixelBuffer:v20];
                  [(FigMatting *)self->_mattingProcessor setSyntheticFocusRectangle:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
                  [(FigMatting *)self->_mattingProcessor setFaceLandmarks:AttachedInference];
                  [(FigMatting *)self->_mattingProcessor setOutputMattePixelBuffer:v24];
                  [(FigMatting *)self->_mattingProcessor setOutputRefinedDisparityPixelBuffer:v25];
                  if ([(FigMatting *)self->_mattingProcessor process])
                  {
                    [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
                    v26 = v37;
                  }

                  else
                  {
                    [(FigMatting *)self->_mattingProcessor finishScheduling];
                    v26 = 0;
                  }

                  goto LABEL_20;
                }

                v28 = fig_log_get_emitter();
                v26 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFF841ALL, "<<<< BWMattingInferenceProvider >>>>", 0x184, v6, v29, v30, v34);
                handler = handlerCopy;
                goto LABEL_27;
              }

              [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
            }

            else
            {
              [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
            }

            v26 = v37;
LABEL_27:
            v11 = MEMORY[0x1E695FF58];
            goto LABEL_21;
          }

          [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
        }

        else
        {
          [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
        }
      }

      else
      {
        [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
      }
    }

    else
    {
      [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
    }
  }

  else
  {
    [BWMattingInferenceProvider executeOnSampleBuffer:? usingStorage:? withExecutionTime:? completionHandler:?];
  }

  v26 = v37;
LABEL_21:
  [(FigMatting *)self->_mattingProcessor setImagePixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setInputSegmentationPixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setInputDepthPixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setInputDisparityPixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setSyntheticFocusRectangle:*v12, v12[1], v12[2], v12[3]];
  [(FigMatting *)self->_mattingProcessor setFaceLandmarks:0];
  [(FigMatting *)self->_mattingProcessor setOutputMattePixelBuffer:0];
  [(FigMatting *)self->_mattingProcessor setOutputRefinedDisparityPixelBuffer:0];
  if (*v11 == 1)
  {
    kdebug_trace();
  }

  if (handler)
  {
    (*(handler + 2))(handler, v26, self);
  }

  return v26;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  BWSampleBufferRemoveAttachedMedia(sampleBuffer, 0x1F219E750);
  v10 = [storage newSampleBufferSatisfyingRequirement:self->_segmentationOutputVideoRequirement withPropagationSampleBuffer:sampleBuffer];
  if (!v10)
  {
    [BWMattingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
    goto LABEL_11;
  }

  v11 = v10;
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{0x10000, *off_1E798D218}];
  CMSetAttachment(v11, *off_1E798D2D8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1], 1u);
  BWSampleBufferSetAttachedMedia(sampleBuffer, 0x1F21AABB0, v11);
  refinedDepthOutputVideoRequirement = self->_refinedDepthOutputVideoRequirement;
  if (!refinedDepthOutputVideoRequirement)
  {
    goto LABEL_9;
  }

  v13 = [storage newSampleBufferSatisfyingRequirement:refinedDepthOutputVideoRequirement withPropagationSampleBuffer:sampleBuffer];
  if (!v13)
  {
    [BWMattingInferenceProvider propagateInferenceResultsToInferenceDictionary:usingStorage:inputSampleBuffer:propagationSampleBuffer:];
LABEL_9:
    v15 = v11;
    goto LABEL_10;
  }

  v14 = v13;
  BWSampleBufferSetAttachedMedia(sampleBuffer, 0x1F21AABD0, v13);
  CFRelease(v11);
  v15 = v14;
LABEL_10:
  CFRelease(v15);
LABEL_11:
  if (*v9 == 1)
  {
    kdebug_trace();
  }
}

- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format
{
  v6 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:key videoFormat:format];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v6];

  return v6;
}

- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider
{
  v7 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:key preparedByAttachedMediaKey:mediaKey videoFormatProvider:provider];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v7];

  return v7;
}

- (id)bindMattingOutput:(id)output fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider
{
  v7 = [[BWInferenceLazyVideoRequirement alloc] initWithAttachedMediaKey:key preparedByAttachedMediaKey:mediaKey videoFormatProvider:provider];
  [(NSMutableArray *)self->_outputVideoRequirements addObject:v7];

  return v7;
}

- (int)prepareForExecution
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (self->_mattingProcessor)
  {
    goto LABEL_6;
  }

  Matting = [(BWMattingInferenceProvider *)self _loadMattingProcessor];
  if (Matting)
  {
    v15 = Matting;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    v19 = v15;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19);
  }

  else
  {
    v12 = [(BWMattingInferenceProvider *)&self->super.isa _configureMattingProcessor:v5];
    if (!v12)
    {
LABEL_6:
      v13 = 0;
      goto LABEL_7;
    }

    v16 = v12;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    LODWORD(v18) = v16;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18);
  }

  v13 = -31702;
LABEL_7:
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v13;
}

- (uint64_t)_loadMattingProcessor
{
  if (result)
  {
    v2 = result;
    v14 = 0;
    v3 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/VideoProcessors/MattingV1.bundle"];
    if (v3)
    {
      v4 = v3;
      if (![v3 loadAndReturnError:&v14])
      {
        return 4294954510;
      }

      v5 = [objc_alloc(objc_msgSend(v4 "principalClass"))];
      *(v2 + 96) = v5;
      if (v5)
      {
        return 0;
      }

      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10, v12, v13, v14, v15, v16, v17, v18);
      v6 = OUTLINED_FUNCTION_2();
      v9 = 594;
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10, v12, v13, v14, v15, v16, v17, v18);
      v6 = OUTLINED_FUNCTION_2();
      v9 = 588;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, 0xFFFFCE0ELL, "<<<< BWMattingInferenceProvider >>>>", v9, v1, v7, v8, v11);
  }

  return result;
}

- (id)_configureMattingProcessor
{
  if (result)
  {
    v10 = result;
    processorOptionsDictionary = [(BWMattingInferenceProvider *)result processorOptionsDictionary];
    if (processorOptionsDictionary)
    {
      [v10[12] setOptions:processorOptionsDictionary];
      videoFormat = [v10[2] videoFormat];
      if (videoFormat && (v13 = videoFormat, (v14 = [v10[4] videoFormat]) != 0) && (v15 = v14, (v16 = objc_msgSend(v10[3], "videoFormat")) != 0))
      {
        v17 = v16;
        width = [v13 width];
        height = [v13 height];
        width2 = [v15 width];
        height2 = [v15 height];
        width3 = [v17 width];
        height3 = [v17 height];
        v24 = v10[12];
        v34 = __PAIR64__(height, width);
        v35 = __PAIR64__(height2, width2);
        v36 = width3;
        v37 = height3;
        v38 = 0;
        [v24 setConfig:&v34];
        result = [v10[12] prepareToProcess:0];
        if (result)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_4();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v28, 0xFFFFCE0ELL, "<<<< BWMattingInferenceProvider >>>>", 0x279, v29, v30, v31, v32);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, v33, v34, v35, v36, v38, v39, v40);
      v25 = OUTLINED_FUNCTION_2();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, 0xFFFFCE0ELL, "<<<< BWMattingInferenceProvider >>>>", 0x25F, v9, v26, v27, a9);
    }
  }

  return result;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  result = [(BWMattingInferenceProvider *)self _loadMattingProcessor];
  if (!result)
  {
    processorOptionsDictionary = [(BWMattingInferenceProvider *)&self->super.isa processorOptionsDictionary];
    if (processorOptionsDictionary)
    {
      [(FigMatting *)self->_mattingProcessor setOptions:processorOptionsDictionary];
      mattingProcessor = self->_mattingProcessor;

      return [(FigMatting *)mattingProcessor prewarmWithTuningParameters:0];
    }

    else
    {
      return -31702;
    }
  }

  return result;
}

- (id)processorOptionsDictionary
{
  if (result)
  {
    v1 = result;
    v2 = [objc_msgSend(result[10] objectForKeyedSubscript:{@"MattingParameters", "objectForKeyedSubscript:", @"MattingV1"}];
    if (v2)
    {
      if (!v1[8])
      {
        v8 = *off_1E798A9D0;
        v9 = v2;
        v4 = MEMORY[0x1E695DF20];
        v5 = &v9;
        v6 = &v8;
        v7 = 1;
        return [v4 dictionaryWithObjects:v5 forKeys:v6 count:v7];
      }

      v3 = v1[11];
      if (v3)
      {
        v10[0] = *off_1E798A9D0;
        v10[1] = @"SDOFRenderingParameters";
        v11[0] = v2;
        v11[1] = v3;
        v4 = MEMORY[0x1E695DF20];
        v5 = v11;
        v6 = v10;
        v7 = 2;
        return [v4 dictionaryWithObjects:v5 forKeys:v6 count:v7];
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ELL, "<<<< BWMattingInferenceProvider >>>>", 0x175, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8422, "<<<< BWMattingInferenceProvider >>>>", 0x1A8, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF841ELL, "<<<< BWMattingInferenceProvider >>>>", 0x174, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8420, "<<<< BWMattingInferenceProvider >>>>", 0x170, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8420, "<<<< BWMattingInferenceProvider >>>>", 0x16D, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8420, "<<<< BWMattingInferenceProvider >>>>", 0x16A, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF8420, "<<<< BWMattingInferenceProvider >>>>", 0x167, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

- (uint64_t)executeOnSampleBuffer:(_DWORD *)a1 usingStorage:withExecutionTime:completionHandler:.cold.8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, 0xFFFF842ALL, "<<<< BWMattingInferenceProvider >>>>", 0x164, v3, v4, v5, v7);
  *a1 = result;
  return result;
}

@end