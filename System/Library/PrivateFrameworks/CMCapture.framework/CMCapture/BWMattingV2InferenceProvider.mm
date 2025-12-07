@interface BWMattingV2InferenceProvider
- (BWMattingV2InferenceProvider)initWithConfiguration:(id)configuration;
- (NSArray)cloneVideoRequirements;
- (id)_configureMattingProcessor;
- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)bindMattingInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format;
- (id)bindMattingInput:(id)input fromMetadataUsingKeys:(id)keys;
- (id)bindMattingOutput:(id)output asMetadataUsingKeys:(id)keys;
- (id)bindMattingOutput:(id)output fromAttachedMediaUsingKey:(id)key preparedByAttachedMediaKey:(id)mediaKey withVideoFormatProvider:(id)provider;
- (id)newStorage;
- (int)prepareForSubmissionWithWorkQueue:(id)queue;
- (int)prewarmUsingLimitedMemory:(BOOL)memory;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler;
- (uint64_t)_loadMattingProcessor;
- (unsigned)allowedPixelBufferCompressionDirection;
- (void)_outputPixelBufferForOutputVideoRequirement:(void *)requirement storage:(int)storage isMatte:;
- (void)_processorOptions;
- (void)dealloc;
- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer;
- (void)propagateMattingOutputToSampleBuffer:(void *)buffer storage:;
- (void)setCustomInferenceIdentifier:(id)identifier;
@end

@implementation BWMattingV2InferenceProvider

- (unsigned)allowedPixelBufferCompressionDirection
{
  executionTarget = [(BWMattingV2InferenceProvider *)self executionTarget];

  return [BWInferenceEngine allowedBufferCompressionDirectionForExecutionTarget:executionTarget];
}

- (NSArray)cloneVideoRequirements
{
  if (!self->_lowResSegmentationCloneOutputVideoRequirement)
  {
    return MEMORY[0x1E695E0F0];
  }

  lowResSegmentationCloneOutputVideoRequirement = self->_lowResSegmentationCloneOutputVideoRequirement;
  return [MEMORY[0x1E695DEC8] arrayWithObjects:&lowResSegmentationCloneOutputVideoRequirement count:1];
}

- (BWMattingV2InferenceProvider)initWithConfiguration:(id)configuration
{
  v10.receiver = self;
  v10.super_class = BWMattingV2InferenceProvider;
  v4 = [(BWMattingV2InferenceProvider *)&v10 init];
  if (v4)
  {
    if (!configuration || ([configuration mainImageDownscalingFactor], v5 == 0.0))
    {

      return 0;
    }

    else
    {
      v4->_type = [configuration inferenceType];
      v4->_sensorConfigurationsByPortType = [configuration sensorConfigurationsByPortType];
      mattingVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters mattingVersion];
      if (!mattingVersion)
      {
        firstObject = [(NSArray *)[(NSDictionary *)v4->_sensorConfigurationsByPortType allValues] firstObject];
        mattingVersion = -[FigCaptureCameraParameters mattingVersionForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "mattingVersionForPortType:sensorIDString:", [firstObject portType], objc_msgSend(firstObject, "sensorIDString"));
      }

      v4->_mattingProcessorVersion = mattingVersion;
      v4->_mattingTuningConfiguration = [configuration tuningConfiguration];
      v4->_submitWithoutSynchronization = [configuration submitWithoutSynchronization];
      v4->_appliesFinalCropRect = [configuration appliesFinalCropRect];
      [configuration mainImageDownscalingFactor];
      v4->_mainImageDownscalingFactor = v8;
      v4->_enabledMattes = [configuration enabledMattes];
      v4->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_outputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_metalCommandQueue = [configuration metalCommandQueue];
      v4->_sdofRenderingTuningParameters = [configuration sdofRenderingTuningParameters];
    }
  }

  return v4;
}

- (void)dealloc
{
  [(FigMatting *)self->_mattingProcessor finishProcessing];

  lowResSegmentationCloneCopySession = self->_lowResSegmentationCloneCopySession;
  if (lowResSegmentationCloneCopySession)
  {
    CFRelease(lowResSegmentationCloneCopySession);
  }

  v4.receiver = self;
  v4.super_class = BWMattingV2InferenceProvider;
  [(BWMattingV2InferenceProvider *)&v4 dealloc];
}

- (id)newStorage
{
  cloneVideoRequirements = [(BWMattingV2InferenceProvider *)self cloneVideoRequirements];
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_inputVideoRequirements];
  [array addObjectsFromArray:self->_outputVideoRequirements];
  if ([(NSArray *)cloneVideoRequirements count])
  {
    [array addObjectsFromArray:cloneVideoRequirements];
  }

  array2 = [MEMORY[0x1E695DF70] array];
  [array2 addObjectsFromArray:self->_outputVideoRequirements];
  if ([(NSArray *)cloneVideoRequirements count])
  {
    [array2 addObjectsFromArray:cloneVideoRequirements];
  }

  v6 = [BWMattingInferenceStorage alloc];

  return [(BWInferenceProviderStorage *)v6 initWithRequirementsNeedingPixelBuffers:array requirementsNeedingPixelBufferPools:array2];
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

uint64_t __114__BWMattingV2InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(uint64_t a1)
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)propagateInferenceResultsToInferenceDictionary:(id)dictionary usingStorage:(id)storage inputSampleBuffer:(opaqueCMSampleBuffer *)buffer propagationSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer
{
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  [(BWMattingV2InferenceProvider *)self propagateMattingOutputToSampleBuffer:sampleBuffer storage:storage];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  outputMetadataRequirements = self->_outputMetadataRequirements;
  v12 = [(NSMutableArray *)outputMetadataRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(outputMetadataRequirements);
        }

        v16 = [storage newMetadataDictionarySatisfyingRequirement:*(*(&v18 + 1) + 8 * v15)];
        [dictionary addEntriesFromDictionary:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)outputMetadataRequirements countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v13);
  }

  if (*v10 == 1)
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

- (id)bindMattingInput:(id)input fromMetadataUsingKeys:(id)keys
{
  v5 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_inputMetadataRequirements addObject:v5];

  return v5;
}

- (id)bindMattingOutput:(id)output asMetadataUsingKeys:(id)keys
{
  v5 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v5];

  return v5;
}

- (int)reconcileWithPlaceholderProvider:(id)provider
{
  type = self->_type;
  if (type != [provider type])
  {
    return -31783;
  }

  [provider customInferenceIdentifier];
  v6 = OUTLINED_FUNCTION_8();
  if (!objc_msgSend_isEqualToString_(v6))
  {
    return -31783;
  }

  [(NSMutableArray *)self->_inputVideoRequirements removeAllObjects];
  [provider inputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_inputMetadataRequirements removeAllObjects];
  [provider inputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputVideoRequirements removeAllObjects];
  [provider outputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputMetadataRequirements removeAllObjects];
  [provider outputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];

  self->_primaryFormatInputVideoRequirement = [provider primaryFormatInputVideoRequirement];
  self->_depthInputVideoRequirement = [provider depthInputVideoRequirement];

  self->_disparityInputVideoRequirement = [provider disparityInputVideoRequirement];
  self->_segmentationInputVideoRequirement = [provider segmentationInputVideoRequirement];

  self->_segmentationOutputVideoRequirement = [provider segmentationOutputVideoRequirement];
  self->_lowResSegmentationCloneOutputVideoRequirement = [provider lowResSegmentationCloneOutputVideoRequirement];

  self->_refinedDepthOutputVideoRequirement = [provider refinedDepthOutputVideoRequirement];
  self->_faceSegmentsWithLandmarksMetadataRequirement = [provider faceSegmentsWithLandmarksMetadataRequirement];

  self->_outputMasksContainsValidContentRequirement = [provider outputMasksContainsValidContentRequirement];
  [(NSMutableDictionary *)self->_semanticMatteInputVideoRequirementsByMattingOutputType removeAllObjects];
  -[NSMutableDictionary addEntriesFromDictionary:](self->_semanticMatteInputVideoRequirementsByMattingOutputType, "addEntriesFromDictionary:", [provider semanticMatteInputVideoRequirementsByMattingOutputType]);
  [(NSMutableDictionary *)self->_semanticMatteOutputVideoRequirementsByMattingOutputType removeAllObjects];
  -[NSMutableDictionary addEntriesFromDictionary:](self->_semanticMatteOutputVideoRequirementsByMattingOutputType, "addEntriesFromDictionary:", [provider semanticMatteOutputVideoRequirementsByMattingOutputType]);
  return 0;
}

- (int)prepareForSubmissionWithWorkQueue:(id)queue
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4_61();
    kdebug_trace();
  }

  p_lowResSegmentationCloneCopySession = &self->_lowResSegmentationCloneCopySession;
  if (!self->_lowResSegmentationCloneCopySession && (~self->_enabledMattes & 0x82) == 0 && VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], p_lowResSegmentationCloneCopySession) || self->_mattingProcessor)
  {
    goto LABEL_9;
  }

  Matting = [(BWMattingV2InferenceProvider *)self _loadMattingProcessor:queue];
  if (Matting)
  {
    v22 = Matting;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    LODWORD(v25) = v22;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v25);
  }

  else
  {
    v19 = [(BWMattingV2InferenceProvider *)&self->super.isa _configureMattingProcessor:v12];
    if (!v19)
    {
LABEL_9:
      v20 = 0;
      goto LABEL_10;
    }

    v23 = v19;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    LODWORD(v26) = v23;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v26);
  }

  v20 = -31702;
LABEL_10:
  if (*v9 == 1)
  {
    OUTLINED_FUNCTION_4_61();
    kdebug_trace();
  }

  return v20;
}

- (uint64_t)_loadMattingProcessor
{
  if (!self)
  {
    return 0;
  }

  if (BWLoadProcessorBundle(@"Matting", *(self + 40)))
  {
    v11 = [objc_alloc(NSClassFromString(&cfstr_Figmatting.isa)) initWithCommandQueue:*(self + 184)];
    *(self + 32) = v11;
    if (v11)
    {
      return 0;
    }

    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v20, v21, v22, v23, v24, vars0, vars8);
    emitter = OUTLINED_FUNCTION_2();
    v17 = 4294954510;
    v18 = 988;
    v16 = v9;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v16 = v9;
    v17 = 4294954514;
    v18 = 984;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v17, "<<<< BWMattingV2InferenceProvider >>>>", v18, v16, v14, v15, a9);
}

- (id)_configureMattingProcessor
{
  if (result)
  {
    v10 = result;
    if ([(BWMattingV2InferenceProvider *)result _processorOptions])
    {
      [OUTLINED_FUNCTION_3_70() setOptions:?];
      videoFormat = [v10[11] videoFormat];
      if (!videoFormat)
      {
LABEL_44:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
        return 0;
      }

      v19 = videoFormat;
      v20 = v10[12];
      if (v20)
      {
        videoFormat2 = [v20 videoFormat];
        if (!videoFormat2)
        {
          goto LABEL_44;
        }
      }

      else
      {
        videoFormat2 = 0;
      }

      videoFormat3 = v10[14];
      if (videoFormat3)
      {
        videoFormat3 = [videoFormat3 videoFormat];
        v23 = videoFormat3;
        if (!videoFormat3)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v23 = 0;
      }

      v24 = v10[18];
      v25 = (v10[17] != 0) | (2 * (v10[15] != 0));
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v26 = OUTLINED_FUNCTION_10_36(videoFormat3, v12, v13, v14, v15, v16, v17, v18, v56, v58, v60, v9, v64, v66, v68, v69, v70, v71);
      if (v26)
      {
        v27 = v26;
        v65 = videoFormat2;
        v67 = v19;
        v28 = *v73;
LABEL_14:
        v29 = 0;
        while (1)
        {
          if (*v73 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v72 + 1) + 8 * v29);
          result = [objc_msgSend(v10[19] objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", objc_msgSend(v30, "intValue"))), "videoFormat"}];
          if (!result)
          {
            break;
          }

          v23 = result;
          intValue = [v30 intValue];
          if (!(!v40 & v39))
          {
            v41 = 0;
            switch(intValue)
            {
              case 1:
              case 2:
              case 4:
              case 8:
                goto LABEL_34;
              case 3:
              case 5:
              case 6:
              case 7:
                goto LABEL_35;
              default:
                JUMPOUT(0);
            }
          }

          if (intValue == 16 || intValue == 32)
          {
LABEL_34:
            v41 = intValue;
          }

          else
          {
            v41 = intValue;
            if (intValue != 64)
            {
              switch(intValue)
              {
                case 0x200:
                  v41 = 128;
                  break;
                case 0x400:
                  v41 = 256;
                  break;
                case 0x800:
                  v41 = 512;
                  break;
                case 0x1000:
                  v41 = 1024;
                  break;
                default:
                  v41 = 0;
                  if (intValue == 0x2000)
                  {
                    v41 = 2048;
                  }

                  break;
              }
            }
          }

LABEL_35:
          v25 |= v41;
          if (v27 == ++v29)
          {
            v27 = OUTLINED_FUNCTION_10_36(intValue, v32, v33, v34, v35, v36, v37, v38, v57, v59, v61, v63, v65, v67, v68, v69, v70, v71);
            if (v27)
            {
              goto LABEL_14;
            }

            videoFormat2 = v65;
            v19 = v67;
            goto LABEL_38;
          }
        }
      }

      else
      {
LABEL_38:
        width = [v19 width];
        height = [v19 height];
        width2 = [videoFormat2 width];
        height2 = [videoFormat2 height];
        width3 = [v23 width];
        height3 = [v23 height];
        v48 = *(v10 + 11);
        v49 = v10[4];
        v68 = __PAIR64__(height, width);
        v69 = __PAIR64__(height2, width2);
        v70 = __PAIR64__(height3, width3);
        v71 = __PAIR64__(v48, v25);
        [v49 setConfig:&v68];
        result = [v10[4] prepareToProcess:0];
        if (result)
        {
          emitter = fig_log_get_emitter();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0ELL, "<<<< BWMattingV2InferenceProvider >>>>", 0x41F, v63, v54, v55, v57);
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56, v58, v60, v62, v64, v66, v68, v69);
      v50 = OUTLINED_FUNCTION_2();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, 0xFFFFCE0ELL, "<<<< BWMattingV2InferenceProvider >>>>", 0x3E9, v9, v51, v52, a9);
    }
  }

  return result;
}

- (int)submitForSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withSubmissionTime:(id *)time workQueue:(id)queue completionHandler:(id)handler
{
  v12 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_4_61();
    kdebug_trace();
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v103 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = MEMORY[0x1E695F050];
  if (!self->_mattingProcessor)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_87();
    v28 = 4294935594;
    v29 = 496;
    goto LABEL_81;
  }

  v15 = [storage pixelBufferForRequirement:self->_primaryFormatInputVideoRequirement];
  if (!v15)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_87();
    v28 = 4294935584;
    v29 = 499;
    goto LABEL_81;
  }

  v22 = v15;
  if (self->_depthInputVideoRequirement)
  {
    v23 = [storage pixelBufferForRequirement:?];
    if (!v23)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_87();
      v28 = 4294935584;
      v29 = 503;
LABEL_81:
      v80 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v24, v28, "<<<< BWMattingV2InferenceProvider >>>>", v29, v25, v26, v27, v88);
      v79 = 0;
      goto LABEL_61;
    }
  }

  else
  {
    v23 = 0;
  }

  if (self->_disparityInputVideoRequirement)
  {
    v30 = [storage pixelBufferForRequirement:?];
    if (!v30)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_87();
      v28 = 4294935584;
      v29 = 507;
      goto LABEL_81;
    }
  }

  else
  {
    v30 = 0;
  }

  v98 = v30;
  v31 = *(v14 + 1);
  rect.origin = *v14;
  rect.size = v31;
  if (self->_refinedDepthOutputVideoRequirement)
  {
    v32 = CMGetAttachment(buffer, *off_1E798D340, 0);
    if (!v32)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_87();
      v28 = 4294935582;
      v29 = 515;
      goto LABEL_81;
    }

    v30 = CGRectMakeWithDictionaryRepresentation(v32, &rect);
    if ((v30 & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_87();
      v28 = 4294935582;
      v29 = 516;
      goto LABEL_81;
    }
  }

  segmentationInputVideoRequirement = self->_segmentationInputVideoRequirement;
  v88 = v7;
  if (segmentationInputVideoRequirement)
  {
    v34 = [storage pixelBufferForRequirement:?];
    if (!v34)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_87();
      v28 = 4294935584;
      v29 = 522;
      goto LABEL_81;
    }

    v35 = v34;
    v36 = OUTLINED_FUNCTION_6_52(v34, self->_segmentationOutputVideoRequirement);
    if (!v36)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_87();
      v28 = 4294935578;
      v29 = 525;
      goto LABEL_81;
    }

    v94 = v36;
    refinedDepthOutputVideoRequirement = self->_refinedDepthOutputVideoRequirement;
    if (refinedDepthOutputVideoRequirement)
    {
      v30 = [(BWMattingV2InferenceProvider *)self _outputPixelBufferForOutputVideoRequirement:storage storage:0 isMatte:?];
      if (!v30)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_87();
        v28 = 4294935578;
        v29 = 528;
        goto LABEL_81;
      }
    }

    else
    {
      v30 = 0;
    }

    lowResSegmentationCloneOutputVideoRequirement = self->_lowResSegmentationCloneOutputVideoRequirement;
    v101 = v35;
    v92 = v30;
    if (lowResSegmentationCloneOutputVideoRequirement)
    {
      v30 = OUTLINED_FUNCTION_6_52(v30, lowResSegmentationCloneOutputVideoRequirement);
      if (!v30)
      {
        v79 = 0;
        v80 = 0;
        goto LABEL_61;
      }

      destinationBuffer = v30;
      if (!self->_lowResSegmentationCloneCopySession)
      {
        v79 = 0;
        v80 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      destinationBuffer = 0;
    }
  }

  else
  {
    destinationBuffer = 0;
    v92 = 0;
    v94 = 0;
    v101 = 0;
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  enabledSemanticMattingOutputTypes = self->_enabledSemanticMattingOutputTypes;
  v39 = OUTLINED_FUNCTION_9_42(v30, lowResSegmentationCloneOutputVideoRequirement, segmentationInputVideoRequirement, v17, v18, v19, v20, v21, v7, destinationBuffer, v92, v94, v23, v22, v98, handler, v101, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, selfCopy, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1), v137, *(&v137 + 1));
  if (v39)
  {
    v40 = v39;
    v41 = *v139;
    while (2)
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v139 != v41)
        {
          objc_enumerationMutation(enabledSemanticMattingOutputTypes);
        }

        [*(*(&v138 + 1) + 8 * i) intValue];
        v43 = [storage pixelBufferForRequirement:{-[NSMutableDictionary objectForKeyedSubscript:](self->_semanticMatteInputVideoRequirementsByMattingOutputType, "objectForKeyedSubscript:", OUTLINED_FUNCTION_13_31())}];
        if (!v43 || ([v13 setObject:v43 forKeyedSubscript:OUTLINED_FUNCTION_13_31()], v44 = -[NSMutableDictionary objectForKeyedSubscript:](self->_semanticMatteOutputVideoRequirementsByMattingOutputType, "objectForKeyedSubscript:", OUTLINED_FUNCTION_13_31()), (v45 = OUTLINED_FUNCTION_6_52(v44, v44)) == 0))
        {
          v79 = 0;
          v80 = 4294935578;
          handler = v100;
          v12 = MEMORY[0x1E695FF58];
          goto LABEL_56;
        }

        v46 = [v103 setObject:v45 forKeyedSubscript:OUTLINED_FUNCTION_13_31()];
      }

      v40 = OUTLINED_FUNCTION_9_42(v46, v47, v48, v49, v50, v51, v52, v53, v89, destinationBuffera, v93, v95, v96, v97, v99, v100, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, selfCopy, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v136 + 1), v137, *(&v137 + 1));
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_outputMasksContainsValidContentRequirement)
  {
    v62 = dictionary;
    v63 = v102;
    if (v102)
    {
      v63 = [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", mv2ip_pixelBufferContainsValidContent(v102)), 0x1F21AABB0}];
    }

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v64 = OUTLINED_FUNCTION_12_35(v63, v55, v56, v57, v58, v59, v60, v61, v89, destinationBuffera, v93, v95, v96, v97, v99, v100, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, selfCopy, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
    if (v64)
    {
      v65 = v64;
      v66 = *v135;
      do
      {
        for (j = 0; j != v65; ++j)
        {
          if (*v135 != v66)
          {
            objc_enumerationMutation(v13);
          }

          v68 = *(*(&v134 + 1) + 8 * j);
          v69 = mv2ip_outputAttachedMediaKeyForMattingOutputType([v68 intValue]);
          if (v69)
          {
            v77 = v69;
            v69 = [v13 objectForKeyedSubscript:v68];
            if (v69)
            {
              v69 = [v62 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", mv2ip_pixelBufferContainsValidContent(v69)), v77}];
            }
          }
        }

        v65 = OUTLINED_FUNCTION_12_35(v69, v70, v71, v72, v73, v74, v75, v76, v89, destinationBuffera, v93, v95, v96, v97, v99, v100, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, selfCopy, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
      }

      while (v65);
    }

    if ([v62 count])
    {
      v116 = 0x1F219E710;
      v117 = v62;
      [storage setDictionary:objc_msgSend(MEMORY[0x1E695DF20] forMetadataRequirement:{"dictionaryWithObjects:forKeys:count:", &v117, &v116, 1), self->_outputMasksContainsValidContentRequirement}];
    }
  }

  [(FigMatting *)self->_mattingProcessor setImagePixelBuffer:v97];
  [(FigMatting *)self->_mattingProcessor setInputDepthPixelBuffer:v96];
  [(FigMatting *)self->_mattingProcessor setInputDisparityPixelBuffer:v99];
  [(FigMatting *)self->_mattingProcessor setSyntheticFocusRectangle:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  [(FigMatting *)self->_mattingProcessor setInputSegmentationPixelBuffer:v102];
  [(FigMatting *)self->_mattingProcessor setOutputMattePixelBuffer:v95];
  [(FigMatting *)self->_mattingProcessor setOutputRefinedDisparityPixelBuffer:v93];
  [v13 objectForKeyedSubscript:&unk_1F2245238];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsHairPixelBuffer:?];
  [v13 objectForKeyedSubscript:&unk_1F2245250];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsSkinPixelBuffer:?];
  [v13 objectForKeyedSubscript:&unk_1F2245268];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsTeethPixelBuffer:?];
  [v13 objectForKeyedSubscript:&unk_1F2245280];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsGlassesPixelBuffer:?];
  [v13 objectForKeyedSubscript:&unk_1F2245298];
  [OUTLINED_FUNCTION_3_70() setInputSemanticsSkyPixelBuffer:?];
  [v103 objectForKeyedSubscript:&unk_1F2245238];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsHairPixelBuffer:?];
  [v103 objectForKeyedSubscript:&unk_1F2245250];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsSkinPixelBuffer:?];
  [v103 objectForKeyedSubscript:&unk_1F2245268];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsTeethPixelBuffer:?];
  [v103 objectForKeyedSubscript:&unk_1F2245280];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsGlassesPixelBuffer:?];
  [v103 objectForKeyedSubscript:&unk_1F2245298];
  [OUTLINED_FUNCTION_3_70() setOutputSemanticsSkyPixelBuffer:?];
  process = [(FigMatting *)self->_mattingProcessor process];
  handler = v100;
  v12 = MEMORY[0x1E695FF58];
  if (process)
  {
    emitter = fig_log_get_emitter();
    v80 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFF8422, "<<<< BWMattingV2InferenceProvider >>>>", 0x281, v89, v86, v87, v89);
    v79 = 0;
LABEL_56:
    v14 = MEMORY[0x1E695F050];
  }

  else
  {
    v14 = MEMORY[0x1E695F050];
    if (destinationBuffera && v102 && VTPixelTransferSessionTransferImage(self->_lowResSegmentationCloneCopySession, v102, destinationBuffera))
    {
      v79 = 0;
      v80 = 4294935586;
    }

    else
    {
      v109 = MEMORY[0x1E69E9820];
      v110 = 3221225472;
      v111 = __114__BWMattingV2InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke;
      v112 = &unk_1E7999708;
      LODWORD(v115) = 0;
      selfCopy = self;
      v114 = v100;
      if (self->_submitWithoutSynchronization)
      {
        __114__BWMattingV2InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke(&v109);
      }

      else
      {
        metalCommandQueue = self->_metalCommandQueue;
        if (metalCommandQueue)
        {
          commandBuffer = [(MTLCommandQueue *)metalCommandQueue commandBuffer];
          [commandBuffer setLabel:@"inference_matting_async_completion"];
          v104 = MEMORY[0x1E69E9820];
          v105 = 3221225472;
          v106 = __114__BWMattingV2InferenceProvider_submitForSampleBuffer_usingStorage_withSubmissionTime_workQueue_completionHandler___block_invoke_2;
          v107 = &unk_1E7998320;
          v108 = &v109;
          [commandBuffer addScheduledHandler:&v104];
          [commandBuffer commit];
        }

        else
        {
          [(FigMatting *)self->_mattingProcessor finishScheduling];
          v111(&v109);
        }
      }

      v80 = 0;
      v79 = 1;
    }
  }

LABEL_61:
  [OUTLINED_FUNCTION_2_77() setImagePixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputDepthPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputDisparityPixelBuffer:?];
  [(FigMatting *)self->_mattingProcessor setSyntheticFocusRectangle:*v14, v14[1], v14[2], v14[3]];
  [OUTLINED_FUNCTION_2_77() setFaceLandmarks:?];
  [OUTLINED_FUNCTION_2_77() setFaceSegments:?];
  [(FigMatting *)self->_mattingProcessor setExifOrientation:0];
  [OUTLINED_FUNCTION_2_77() setInputSegmentationPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputMattePixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputRefinedDisparityPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsHairPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsSkinPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsTeethPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsGlassesPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setInputSemanticsSkyPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsHairPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsSkinPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsTeethPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsGlassesPixelBuffer:?];
  [OUTLINED_FUNCTION_2_77() setOutputSemanticsSkyPixelBuffer:?];

  if (*v12 == 1)
  {
    OUTLINED_FUNCTION_4_61();
    kdebug_trace();
  }

  if (handler)
  {
    v83 = v79;
  }

  else
  {
    v83 = 1;
  }

  if ((v83 & 1) == 0)
  {
    (*(handler + 2))(handler, v80, self);
  }

  return v80;
}

- (void)_outputPixelBufferForOutputVideoRequirement:(void *)requirement storage:(int)storage isMatte:
{
  if (!self)
  {
    return 0;
  }

  v7 = [requirement pixelBufferForRequirement:a2];
  if (!v7)
  {
    v7 = [objc_msgSend(requirement pixelBufferPoolForRequirement:{a2), "newPixelBuffer"}];
    [requirement setPixelBuffer:v7 forRequirement:a2];
    if (v7)
    {
      CFRelease(v7);
    }
  }

  if (storage)
  {
    CVBufferSetAttachment(v7, *MEMORY[0x1E6965F30], *MEMORY[0x1E6965F60], kCVAttachmentMode_ShouldPropagate);
  }

  return v7;
}

- (void)propagateMattingOutputToSampleBuffer:(void *)buffer storage:
{
  bufferCopy = buffer;
  if (!self)
  {
    return;
  }

  v5 = off_1E798A3C8;
  if (!*(self + 120))
  {
    v50 = off_1E798A788;
    v51 = off_1E798A5C8;
    cfb = 0;
    v108 = 0;
    v112 = 0;
    goto LABEL_19;
  }

  BWSampleBufferRemoveAttachedMedia(a2, 0x1F219E750);
  v13 = OUTLINED_FUNCTION_14_29(v6, v7, *(self + 120), v8, v9, v10, v11, v12, v99, v100, v101, cf, v105, v109, v113, obj, v119, v122, v125, v128, v129, bufferCopy);
  if (!v13)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_6();
    LODWORD(v99) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v99, v100, v101, cfa, v106, v110, v114, obja);
    return;
  }

  v14 = v13;
  v15 = (*(self + 40) - 1) | 0x10000u;
  v142 = *off_1E798D218;
  v143 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v15];
  CMSetAttachment(v14, *off_1E798D2D8, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v143 forKeys:&v142 count:1], 1u);
  v16 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v14);
  if (*(self + 53) == 1)
  {
    v17 = BWPixelBufferDimensionsFromSampleBuffer(a2);
    CMGetAttachment(a2, *off_1E798A3C8, 0);
    v18 = *(MEMORY[0x1E695F050] + 8);
    v19 = *(MEMORY[0x1E695F050] + 16);
    v20 = *(MEMORY[0x1E695F050] + 24);
    v21 = *(MEMORY[0x1E695F050] + 16);
    v140 = *MEMORY[0x1E695F050];
    *v141 = v21;
    v22 = v20;
    v23 = v19;
    v24 = v18;
    v25 = v140;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      FigCaptureMetadataUtilitiesDenormalizeCropRect(*&v140, *(&v140 + 1), v141[0], v141[1], v17, SHIDWORD(v17));
      v25 = v26;
      v24 = v27;
      v23 = v28;
      v22 = v29;
    }

    v30 = BWPixelBufferDimensionsFromSampleBuffer(v14);
    v31.n128_u64[0] = v25;
    v32.n128_u64[0] = v24;
    v33.n128_u64[0] = v23;
    v34.n128_u64[0] = v22;
    OUTLINED_FUNCTION_11_35(v31, v32, v33, v34, v35, v36, v37, v38, v16, v17, v30);
    v5 = off_1E798A3C8;
  }

  if (*(self + 208) != 0.0)
  {
    [objc_msgSend(CMGetAttachment(a2 *v5];
    *&v40 = OUTLINED_FUNCTION_7_50(v39);
    [v16 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v40), *off_1E798A788}];
  }

  BWSampleBufferSetAttachedMedia(a2, 0x1F21AABB0, v14);
  v48 = *(self + 136);
  if (v48)
  {
    v49 = OUTLINED_FUNCTION_14_29(v41, v42, v48, v43, v44, v45, v46, v47, v99, v100, v101, cfa, v106, v110, v114, obja, v120, v123, v126, v128, v130, bufferCopy);
    if (!v49)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      LODWORD(v99) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v99, v100, v101, cfa, v107, v111, v114, obja);
      goto LABEL_43;
    }

    BWSampleBufferSetAttachedMedia(a2, 0x1F21AABD0, v49);
  }

  else
  {
    v49 = 0;
  }

  v52 = *(self + 128);
  v108 = v49;
  v112 = v14;
  if (!v52)
  {
    v50 = off_1E798A788;
    v51 = off_1E798A5C8;
    cfb = 0;
LABEL_19:
    v54 = *(self + 40);
    v136 = 0u;
    v137 = 0u;
    v138 = 0u;
    v139 = 0u;
    objb = *(self + 144);
    v55 = [objb countByEnumeratingWithState:&v136 objects:v135 count:16];
    if (v55)
    {
      v56 = v55;
      HIDWORD(v128) = (v54 - 2) | 0x10000;
      v131 = *v137;
      v127 = *off_1E798D318;
      v57 = *off_1E798D2E0;
      v58 = *v5;
      v59 = *MEMORY[0x1E695F050];
      v60 = *(MEMORY[0x1E695F050] + 8);
      v61 = *(MEMORY[0x1E695F050] + 16);
      v62 = *(MEMORY[0x1E695F050] + 24);
      v115 = *v51;
      v121 = *v50;
      v124 = *off_1E798A708;
      do
      {
        for (i = 0; i != v56; ++i)
        {
          if (*v137 != v131)
          {
            objc_enumerationMutation(objb);
          }

          intValue = [*(*(&v136 + 1) + 8 * i) intValue];
          v65 = mv2ip_inputAttachedMediaKeyForMattingOutputType(intValue);
          v66 = mv2ip_outputAttachedMediaKeyForMattingOutputType(intValue);
          BWSampleBufferRemoveAttachedMedia(a2, v65);
          v67 = [*(self + 160) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", intValue)}];
          v74 = OUTLINED_FUNCTION_14_29(v67, v68, v67, v69, v70, v71, v72, v73, v99, v100, v101, cfb, v108, v112, v115, objb, v121, v124, v127, v128, v131, bufferCopy);
          if (v74)
          {
            v75 = v74;
            v133 = v127;
            v134 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(v128)];
            CMSetAttachment(v75, v57, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1], 1u);
            v76 = BWCMSampleBufferCopyReattachAndReturnMutableMetadata(v75);
            if (*(self + 53) == 1)
            {
              v77 = BWPixelBufferDimensionsFromSampleBuffer(a2);
              CMGetAttachment(a2, v58, 0);
              v78 = *(MEMORY[0x1E695F050] + 16);
              v140 = *MEMORY[0x1E695F050];
              *v141 = v78;
              v79 = v59;
              v80 = v60;
              v81 = v61;
              v82 = v62;
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                FigCaptureMetadataUtilitiesDenormalizeCropRect(*&v140, *(&v140 + 1), v141[0], v141[1], v77, SHIDWORD(v77));
                v79 = v83;
                v80 = v84;
                v81 = v85;
                v82 = v86;
              }

              v87 = BWPixelBufferDimensionsFromSampleBuffer(v75);
              v88.n128_u64[0] = v79;
              v89.n128_u64[0] = v80;
              v90.n128_u64[0] = v81;
              v91.n128_u64[0] = v82;
              OUTLINED_FUNCTION_11_35(v88, v89, v90, v91, v92, v93, v94, v95, v76, v77, v87);
            }

            if (*(self + 208) != 0.0)
            {
              [objc_msgSend(CMGetAttachment(a2 v58];
              *&v97 = OUTLINED_FUNCTION_7_50(v96);
              [v76 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v97), v121}];
            }

            BWSampleBufferSetAttachedMedia(a2, v66, v75);
            CFRelease(v75);
          }
        }

        v56 = [objb countByEnumeratingWithState:&v136 objects:v135 count:16];
      }

      while (v56);
    }

    v49 = v108;
    v14 = v112;
    v98 = cfb;
    if (!v112)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v53 = OUTLINED_FUNCTION_14_29(v41, v42, v52, v43, v44, v45, v46, v47, v99, v100, v101, cfa, v49, v14, v114, obja, v120, v123, v126, v128, v130, bufferCopy);
  if (v53)
  {
    v50 = off_1E798A788;
    v51 = off_1E798A5C8;
    cfb = v53;
    BWSampleBufferSetAttachedMedia(a2, 0x1F21AADF0, v53);
    goto LABEL_19;
  }

LABEL_43:
  v98 = 0;
LABEL_35:
  CFRelease(v14);
LABEL_36:
  if (v49)
  {
    CFRelease(v49);
  }

  if (v98)
  {
    CFRelease(v98);
  }
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  result = [(BWMattingV2InferenceProvider *)self _loadMattingProcessor:a2];
  if (!result)
  {
    _processorOptions = [(BWMattingV2InferenceProvider *)self _processorOptions];
    if (_processorOptions)
    {
      [(FigMatting *)self->_mattingProcessor setOptions:_processorOptions];
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

- (void)_processorOptions
{
  if (result)
  {
    v1 = result;
    v2 = result[17];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v5 = *off_1E798A9D0;
    [dictionary setObject:dictionary2 forKeyedSubscript:*off_1E798A9D0];
    if (v2)
    {
      [dictionary setObject:v1[25] forKeyedSubscript:@"SDOFRenderingParameters"];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    obj = v1[3];
    v6 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        v11 = [objc_msgSend(objc_msgSend(v1[3] objectForKeyedSubscript:{v10), "sensorIDDictionary"), "objectForKeyedSubscript:", @"MattingParameters"}];
        v12 = [v11 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@V%d", @"Matting", *(v1 + 10))}];
        if (!v12)
        {
          break;
        }

        [objc_msgSend(dictionary objectForKeyedSubscript:{v5), "setObject:forKeyedSubscript:", v12, v10}];
        if (v7 == ++v9)
        {
          v7 = [obj countByEnumeratingWithState:&v16 objects:v15 count:16];
          if (v7)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    if ([dictionary count])
    {
      v13 = dictionary;
    }

    else
    {
      v13 = 0;
    }

    return [v13 copy];
  }

  return result;
}

@end