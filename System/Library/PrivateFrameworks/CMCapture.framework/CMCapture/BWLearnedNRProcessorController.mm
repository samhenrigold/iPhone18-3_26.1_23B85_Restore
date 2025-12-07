@interface BWLearnedNRProcessorController
+ (void)initialize;
- (BWLearnedNRProcessorController)initWithConfiguration:(id)configuration;
- (id)_inputFormat;
- (id)_landscapeCropInputFormat;
- (id)_portraitCropInputFormat;
- (id)_primaryInputFormat;
- (id)_process;
- (id)_quadraInputFormat;
- (id)_quadraUltraHighResolutionInputFormat;
- (id)_quadraZoomBasedInputFormat;
- (id)_serviceNextRequest;
- (id)_squareCropInputFormat;
- (id)_updateStateIfNeeded;
- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key;
- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate;
- (int)prepareWithPixelBufferPoolProvider:(id)provider;
- (uint64_t)_addInferenceType:(uint64_t)type outputVideoRequirements:;
- (uint64_t)_attachedMediaKeyForOutputFormat:(uint64_t)result;
- (uint64_t)_configureInference;
- (void)cancelProcessing;
- (void)dealloc;
- (void)input:(id)input setInputFrame:(opaqueCMSampleBuffer *)frame;
@end

@implementation BWLearnedNRProcessorController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWLearnedNRProcessorController)initWithConfiguration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = BWLearnedNRProcessorController;
  v4 = [(BWLearnedNRProcessorController *)&v9 init];
  if (v4)
  {
    if ([objc_msgSend(configuration "sensorConfigurationsByPortType")])
    {
      v4->_configuration = configuration;
      v6 = [[FigStateMachine alloc] initWithLabel:@"BWLearnedNRController state machine" stateCount:4 initialState:1 owner:v4];
      [(FigStateMachine *)v6 setPerformsAtomicStateTransitions:0];
      [(FigStateMachine *)v6 setLabel:@"Idle" forState:1];
      [(FigStateMachine *)v6 setLabel:@"Ready" forState:2];
      [(FigStateMachine *)v6 setLabel:@"Waiting" forState:4];
      [(FigStateMachine *)v6 setLabel:@"Processing" forState:8];
      [(FigStateMachine *)v6 whenTransitioningToStates:1 callHandler:&__block_literal_global_113];
      [(FigStateMachine *)v6 whenTransitioningToStates:2 callHandler:&__block_literal_global_244];
      [(FigStateMachine *)v6 whenTransitioningToState:4 callHandler:&__block_literal_global_246];
      [(FigStateMachine *)v6 whenTransitioningToState:8 callHandler:&__block_literal_global_248];
      v4->_stateMachine = v6;
      v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4->_inferenceConfigurationByInferenceType = objc_alloc_init(MEMORY[0x1E695DF90]);
      v7 = objc_autoreleasePoolPush();
      _configureInference = [(BWLearnedNRProcessorController *)v4 _configureInference];
      objc_autoreleasePoolPop(v7);
      if (!_configureInference)
      {
        return v4;
      }
    }

    else
    {
      [BWLearnedNRProcessorController initWithConfiguration:];
    }

    return 0;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWLearnedNRProcessorController;
  [(BWStillImageProcessorController *)&v3 dealloc];
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWLearnedNRRequest *)self->_currentRequest setErr:4294950490];

  [(BWLearnedNRProcessorController *)&self->super.super.isa _serviceNextRequest];
}

- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key
{
  if (!objc_msgSend_isEqualToString_(key, a2, @"PrimaryFormat"))
  {
    return 0;
  }

  [(BWLearnedNRProcessorController *)&self->super.super.isa inputInferenceVideoFormatForAttachedMediaKey:?];
  return v5;
}

- (uint64_t)_configureInference
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  *(result + 96) = 0;
  v3 = [BWInferenceEngine alloc];
  [OUTLINED_FUNCTION_12_44() inferenceScheduler];
  result = -[BWInferenceEngine initWithScheduler:priority:shareIntermediateBuffer:](v3, "initWithScheduler:priority:shareIntermediateBuffer:", v1, [OUTLINED_FUNCTION_11_47() figThreadPriority], 1);
  *(v2 + 104) = result;
  if (!result)
  {
    return result;
  }

  _inputFormat = [(BWLearnedNRProcessorController *)v2 _inputFormat];
  _quadraInputFormat = [(BWLearnedNRProcessorController *)v2 _quadraInputFormat];
  _quadraZoomBasedInputFormat = [(BWLearnedNRProcessorController *)v2 _quadraZoomBasedInputFormat];
  _landscapeCropInputFormat = [(BWLearnedNRProcessorController *)v2 _landscapeCropInputFormat];
  _portraitCropInputFormat = [(BWLearnedNRProcessorController *)v2 _portraitCropInputFormat];
  _squareCropInputFormat = [(BWLearnedNRProcessorController *)v2 _squareCropInputFormat];
  _quadraUltraHighResolutionInputFormat = [(BWLearnedNRProcessorController *)v2 _quadraUltraHighResolutionInputFormat];
  [OUTLINED_FUNCTION_12_44() outputFormat];
  v6 = OUTLINED_FUNCTION_10_29();
  [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v6];
  outputFormat = [OUTLINED_FUNCTION_11_47() outputFormat];
  v8 = lnrpc_inferenceVideoRequirementForVideoFormat(v1, outputFormat);
  [OUTLINED_FUNCTION_12_44() zoomBasedOutputFormat];
  v9 = OUTLINED_FUNCTION_10_29();
  [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v9];
  zoomBasedOutputFormat = [OUTLINED_FUNCTION_11_47() zoomBasedOutputFormat];
  v31 = lnrpc_inferenceVideoRequirementForVideoFormat(v1, zoomBasedOutputFormat);
  [OUTLINED_FUNCTION_12_44() landscapeCropOutputFormat];
  v11 = OUTLINED_FUNCTION_10_29();
  [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v11];
  landscapeCropOutputFormat = [OUTLINED_FUNCTION_11_47() landscapeCropOutputFormat];
  lnrpc_inferenceVideoRequirementForVideoFormat(v1, landscapeCropOutputFormat);
  [OUTLINED_FUNCTION_11_47() portraitCropOutputFormat];
  v13 = OUTLINED_FUNCTION_10_29();
  v14 = [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v13];
  portraitCropOutputFormat = [OUTLINED_FUNCTION_12_44() portraitCropOutputFormat];
  v16 = lnrpc_inferenceVideoRequirementForVideoFormat(v14, portraitCropOutputFormat);
  [OUTLINED_FUNCTION_12_44() squareCropOutputFormat];
  v17 = OUTLINED_FUNCTION_10_29();
  v18 = [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v17];
  squareCropOutputFormat = [OUTLINED_FUNCTION_12_44() squareCropOutputFormat];
  v20 = lnrpc_inferenceVideoRequirementForVideoFormat(v18, squareCropOutputFormat);
  [OUTLINED_FUNCTION_12_44() ultraHighResolutionOutputFormat];
  v21 = OUTLINED_FUNCTION_10_29();
  v22 = [BWLearnedNRProcessorController _attachedMediaKeyForOutputFormat:v21];
  ultraHighResolutionOutputFormat = [OUTLINED_FUNCTION_12_44() ultraHighResolutionOutputFormat];
  v24 = lnrpc_inferenceVideoRequirementForVideoFormat(v22, ultraHighResolutionOutputFormat);
  if (_inputFormat || _landscapeCropInputFormat || _portraitCropInputFormat || _squareCropInputFormat)
  {
    array = [MEMORY[0x1E695DF70] array];
    v26 = array;
    if (_inputFormat)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      [array addObject:v8];
    }

    if (_landscapeCropInputFormat)
    {
      if (!v1)
      {
        goto LABEL_36;
      }

      [v26 addObject:v1];
    }

    if (_portraitCropInputFormat)
    {
      if (!v16)
      {
        goto LABEL_36;
      }

      [v26 addObject:v16];
    }

    if (_squareCropInputFormat)
    {
      if (!v20)
      {
        goto LABEL_36;
      }

      [v26 addObject:v20];
    }

    result = [(BWLearnedNRProcessorController *)v2 _addInferenceType:v26 outputVideoRequirements:?];
    if (result)
    {
      return result;
    }
  }

  if (_quadraInputFormat || _quadraZoomBasedInputFormat || _quadraUltraHighResolutionInputFormat)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v28 = array2;
    if (_quadraInputFormat)
    {
      if (!v8)
      {
        goto LABEL_36;
      }

      [array2 addObject:v8];
    }

    if (_quadraZoomBasedInputFormat)
    {
      if (!v31)
      {
        goto LABEL_36;
      }

      [v28 addObject:?];
    }

    if (!_quadraUltraHighResolutionInputFormat)
    {
      goto LABEL_32;
    }

    if (v24)
    {
      [v28 addObject:v24];
LABEL_32:
      result = [(BWLearnedNRProcessorController *)v2 _addInferenceType:v28 outputVideoRequirements:?];
      if (result)
      {
        return result;
      }

      goto LABEL_33;
    }

LABEL_36:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 4294935585;
  }

LABEL_33:
  v29 = *(v2 + 104);
  _primaryInputFormat = [(BWLearnedNRProcessorController *)v2 _primaryInputFormat];

  return [v29 prepareForInputVideoFormat:_primaryInputFormat attachedMediaKey:@"PrimaryFormat"];
}

- (uint64_t)_attachedMediaKeyForOutputFormat:(uint64_t)result
{
  if (result)
  {
    if (OUTLINED_FUNCTION_19_31([*(result + 64) ultraHighResolutionOutputFormat]))
    {
      return 0x1F219EDB0;
    }

    else
    {
      zoomBasedOutputFormat = [OUTLINED_FUNCTION_20_25() zoomBasedOutputFormat];
      if (OUTLINED_FUNCTION_19_31(zoomBasedOutputFormat))
      {
        return 0x1F219ED30;
      }

      else
      {
        landscapeCropOutputFormat = [OUTLINED_FUNCTION_20_25() landscapeCropOutputFormat];
        if (OUTLINED_FUNCTION_19_31(landscapeCropOutputFormat))
        {
          return 0x1F219ED50;
        }

        else
        {
          portraitCropOutputFormat = [OUTLINED_FUNCTION_20_25() portraitCropOutputFormat];
          if (OUTLINED_FUNCTION_19_31(portraitCropOutputFormat))
          {
            return 0x1F219ED70;
          }

          else
          {
            squareCropOutputFormat = [OUTLINED_FUNCTION_20_25() squareCropOutputFormat];
            if (OUTLINED_FUNCTION_19_31(squareCropOutputFormat))
            {
              return 0x1F219ED90;
            }

            else
            {
              return 0x1F219ED10;
            }
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)_addInferenceType:(uint64_t)type outputVideoRequirements:
{
  if (!self)
  {
    return 0;
  }

  v6 = -[BWLearnedNRInferenceConfiguration initWithMetalCommandQueue:sensorConfigurationsByPortType:inferenceType:outputVideoRequirements:]([BWLearnedNRInferenceConfiguration alloc], "initWithMetalCommandQueue:sensorConfigurationsByPortType:inferenceType:outputVideoRequirements:", [self[8] metalCommandQueue], objc_msgSend(self[8], "sensorConfigurationsByPortType"), a2, type);
  v7 = [self[13] addInferenceOfType:a2 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v6];
  v8 = v7;
  if (v7)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v3, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    [self[14] setObject:v6 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}];
  }

  return v8;
}

- (id)_inputFormat
{
  if (result)
  {
    [result[8] inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_0_106();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, 0);
  }

  return result;
}

- (id)_quadraInputFormat
{
  if (result)
  {
    [result[8] inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_0_106();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, 1);
  }

  return result;
}

- (id)_quadraZoomBasedInputFormat
{
  if (result)
  {
    [result[8] inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_4_83();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, 1);
  }

  return result;
}

- (id)_landscapeCropInputFormat
{
  if (result)
  {
    [result[8] inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_72();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, 0);
  }

  return result;
}

- (id)_portraitCropInputFormat
{
  if (result)
  {
    [result[8] inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_5_76();
    OUTLINED_FUNCTION_7_66();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

- (id)_squareCropInputFormat
{
  if (result)
  {
    [result[8] inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_3_93();
    OUTLINED_FUNCTION_14_38();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, v7, v8);
  }

  return result;
}

- (id)_quadraUltraHighResolutionInputFormat
{
  if (result)
  {
    [result[8] inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_1_114();

    return lnrpc_formatFromInputFormatsByResolutionFlavor(v1, v2, v3, v4, v5, v6, 1, 1);
  }

  return result;
}

- (id)_primaryInputFormat
{
  if (result)
  {
    v1 = result;
    [result[8] inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_0_106();
    result = lnrpc_formatFromInputFormatsByResolutionFlavor(v2, v3, v4, v5, v6, v7, v8, 0);
    if (!result)
    {
      [v1[8] inputFormatsByResolutionFlavor];
      OUTLINED_FUNCTION_1_114();

      return lnrpc_formatFromInputFormatsByResolutionFlavor(v9, v10, v11, v12, v13, v14, 1, 1);
    }
  }

  return result;
}

- (int)prepareWithPixelBufferPoolProvider:(id)provider
{
  result = [(BWInferenceEngine *)self->_inferenceEngine prepareForInferenceWithFormatProvider:self pixelBufferPoolProvider:provider];
  if (!result)
  {
    self->_inferenceEnginePrepared = 1;
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate
{
  if (![(BWInferenceEngine *)self->_inferenceEngine isConfiguredForInference]|| !self->_inferenceEnginePrepared)
  {
    return -12780;
  }

  v7 = [[BWLearnedNRRequest alloc] initWithInput:processing delegate:delegate];
  [(NSMutableArray *)self->_requestQueue addObject:v7];

  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (id)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    delegate = [result[11] delegate];
    input = [v1[11] input];
    v4 = [v1[11] err];

    v1[11] = 0;
    [delegate processorController:v1 didFinishProcessingInput:input err:v4];

    firstObject = [v1[10] firstObject];
    v1[11] = firstObject;
    if (firstObject)
    {
      [v1[10] removeObjectAtIndex:0];
      [objc_msgSend(v1[11] "input")];
    }

    return [(BWLearnedNRProcessorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (id)_updateStateIfNeeded
{
  if (result)
  {
    v1 = result;
    v2 = result[11];
    currentState = [result[9] currentState];
    if (v2)
    {
      if (currentState == 2)
      {
        v4 = 4;
      }

      else if (currentState == 4)
      {
        v4 = [v2[1] inputFrame] ? 8 : 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 1;
    }

    result = [v1[9] currentState];
    if (v4 != result)
    {
      v5 = v1[9];

      return [v5 transitionToState:v4];
    }
  }

  return result;
}

- (id)_process
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = &OBJC_IVAR___BWAudioSourceNode__keepAudioSessionActiveOnStop;
  if ([result[11] err])
  {
    OUTLINED_FUNCTION_9_56();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v212))
    {
      v170 = v213;
    }

    else
    {
      v170 = v213 & 0xFFFFFFFE;
    }

    if (v170)
    {
      [OUTLINED_FUNCTION_13_37() input];
      [OUTLINED_FUNCTION_13_37() err];
      OUTLINED_FUNCTION_76();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_15_37();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v132 = 0;
    goto LABEL_57;
  }

  v3 = [objc_msgSend(OUTLINED_FUNCTION_13_37() "input")];
  if (dword_1EB58E120)
  {
    OUTLINED_FUNCTION_9_56();
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(v4, v212))
    {
      v5 = v213;
    }

    else
    {
      v5 = v213 & 0xFFFFFFFE;
    }

    if (v5)
    {
      [objc_msgSend(objc_msgSend(v1[11] "input")];
      BWStillImageSampleBufferToDisplayString(v3, v6);
      OUTLINED_FUNCTION_76();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_15_37();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(v3);
  if (!ImageBuffer)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v171, v173, v175, r2, r2_8, r2_16, r2_24, v186);
    goto LABEL_46;
  }

  v8 = ImageBuffer;
  v9 = CMGetAttachment(v3, *off_1E798A3C8, 0);
  Width = CVPixelBufferGetWidth(v8);
  Height = CVPixelBufferGetHeight(v8);
  v12 = Width | (Height << 32);
  v13 = 1.0;
  if ([OUTLINED_FUNCTION_8_54() stillImageProcessingMode] == 1)
  {
    FinalCropRect = 0.0;
    v15 = 0.0;
    v16 = 1.0;
    v17 = 1.0;
  }

  else
  {
    FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(v9);
  }

  FigCaptureMetadataUtilitiesDenormalizeCropRect(FinalCropRect, v15, v16, v17, Width, Height);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  r2a = FigCaptureMetadataUtilitiesGetValidBufferRect(v9);
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = [objc_msgSend(OUTLINED_FUNCTION_8_54() "finalCropRectOverscanMultiplierByPortType")];
  if (v32)
  {
    [v32 floatValue];
    v13 = v34;
  }

  v35 = FigCaptureMetadataUtilitiesScaleRect(v19, v21, v23, v25, v13, v33);
  v214.origin.x = (floorf(v35) + -2.0);
  *&v36 = v36;
  v214.origin.y = (floorf(*&v36) + -2.0);
  *&v37 = v37;
  v214.size.width = (ceilf(*&v37) + 4.0);
  *&v38 = v38;
  v214.size.height = (ceilf(*&v38) + 4.0);
  v217.origin.x = r2a;
  v217.origin.y = v27;
  v217.size.width = v29;
  v217.size.height = v31;
  v215 = CGRectIntersection(v214, v217);
  x = v215.origin.x;
  y = v215.origin.y;
  v41 = v215.size.width;
  v42 = v215.size.height;
  if (!CGRectIsNull(v215))
  {
    v216.origin.x = x;
    v216.origin.y = y;
    v216.size.width = v41;
    v216.size.height = v42;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v216);
    CMSetAttachment(v3, @"LearnedNRRegionOfInterest", DictionaryRepresentation, 0);
    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }

  if ([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B588), "intValue"}] != 1)
  {
    [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_10_49();
    OUTLINED_FUNCTION_72();
    if (Width == [lnrpc_formatFromInputFormatsByResolutionFlavor(v52 v53] && (objc_msgSend(OUTLINED_FUNCTION_8_54(), "inputFormatsByResolutionFlavor"), OUTLINED_FUNCTION_10_49(), OUTLINED_FUNCTION_72(), objc_msgSend(lnrpc_formatFromInputFormatsByResolutionFlavor(v59, v60, v61, v62, v63, v64, v65, 0), "height") == Height))
    {
      [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
      OUTLINED_FUNCTION_10_49();
    }

    else
    {
      [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
      OUTLINED_FUNCTION_5_76();
      OUTLINED_FUNCTION_7_66();
      if (Width == [lnrpc_formatFromInputFormatsByResolutionFlavor(v66 v67] && (objc_msgSend(OUTLINED_FUNCTION_8_54(), "inputFormatsByResolutionFlavor"), OUTLINED_FUNCTION_5_76(), OUTLINED_FUNCTION_7_66(), objc_msgSend(lnrpc_formatFromInputFormatsByResolutionFlavor(v74, v75, v76, v77, v78, v79, v80, v81), "height") == Height))
      {
        [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
        OUTLINED_FUNCTION_5_76();
      }

      else
      {
        [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
        OUTLINED_FUNCTION_3_93();
        OUTLINED_FUNCTION_14_38();
        if (Width == [lnrpc_formatFromInputFormatsByResolutionFlavor(v82 v83] && (objc_msgSend(OUTLINED_FUNCTION_8_54(), "inputFormatsByResolutionFlavor"), OUTLINED_FUNCTION_3_93(), OUTLINED_FUNCTION_14_38(), objc_msgSend(lnrpc_formatFromInputFormatsByResolutionFlavor(v90, v91, v92, v93, v94, v95, v96, v97), "height") == Height))
        {
          [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
          OUTLINED_FUNCTION_3_93();
        }

        else
        {
          [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
        }
      }
    }

    OUTLINED_FUNCTION_14_38();
    v113 = lnrpc_formatFromInputFormatsByResolutionFlavor(v105, v106, v107, v108, v109, v110, v111, v112);
    v114 = 171;
    v115 = 170;
    goto LABEL_38;
  }

  v44 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_13_37() "input")];
  [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
  OUTLINED_FUNCTION_0_106();
  if ([lnrpc_formatFromInputFormatsByResolutionFlavor(v45 v46] >= Width)
  {
    [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
    OUTLINED_FUNCTION_0_106();
    [lnrpc_formatFromInputFormatsByResolutionFlavor(v98 v99];
    if ((v44 & 0x100000000) != 0)
    {
LABEL_34:
      [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
      OUTLINED_FUNCTION_1_114();
      v122 = 1;
      goto LABEL_37;
    }
  }

  else if ((v44 & 0x100000000) != 0)
  {
    goto LABEL_34;
  }

  [OUTLINED_FUNCTION_8_54() inputFormatsByResolutionFlavor];
  OUTLINED_FUNCTION_4_83();
LABEL_37:
  v113 = lnrpc_formatFromInputFormatsByResolutionFlavor(v116, v117, v118, v119, v120, v121, v122, 1);
  v114 = 170;
  v115 = 171;
LABEL_38:
  width = [v113 width];
  height = [v113 height];
  if (width != Width || height != Height)
  {
    v2 = &OBJC_IVAR___BWAudioSourceNode__keepAudioSessionActiveOnStop;
LABEL_77:
    [OUTLINED_FUNCTION_13_37() setErr:4294954516];
    v132 = 0;
    goto LABEL_57;
  }

  pixelFormat = [v113 pixelFormat];
  v2 = &OBJC_IVAR___BWAudioSourceNode__keepAudioSessionActiveOnStop;
  if (pixelFormat != CVPixelBufferGetPixelFormatType(v8))
  {
    goto LABEL_77;
  }

  if ([v1[13] performInferencesOnSampleBuffer:v3 attachingResultsToSampleBuffer:v3 skippingInferencesWithTypes:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithObject:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v114))}])
  {
    v130 = OUTLINED_FUNCTION_13_37();
    goto LABEL_47;
  }

  [objc_msgSend(v1[14] objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v115)), "outputAttachedMediaKeyForInputDimensions:", v12}];
  v127 = OUTLINED_FUNCTION_10_29();
  AttachedMedia = BWSampleBufferGetAttachedMedia(v127, v128);
  if (AttachedMedia)
  {
    v133 = CFRetain(AttachedMedia);
    if (v133)
    {
      v132 = v133;
      v134 = BWSampleBufferCopyDictionaryOfAttachedMedia(v3);
      v135 = [v134 mutableCopy];
      [v135 setObject:0 forKeyedSubscript:0x1F219ECF0];
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_30();
      OUTLINED_FUNCTION_18_30();
      v136 = OUTLINED_FUNCTION_18_30();
      v144 = OUTLINED_FUNCTION_21_30(v136, v137, v138, v139, v140, v141, v142, v143, v171, v173, v175, *&r2a, r2_8, r2_16, r2_24, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210);
      if (v144)
      {
        v145 = v144;
        v146 = MEMORY[0];
        do
        {
          for (i = 0; i != v145; ++i)
          {
            if (MEMORY[0] != v146)
            {
              objc_enumerationMutation(v135);
            }

            BWSampleBufferSetAttachedMedia(v132, *(8 * i), [v135 objectForKeyedSubscript:*(8 * i)]);
          }

          v145 = OUTLINED_FUNCTION_21_30(v148, v149, v150, v151, v152, v153, v154, v155, v172, v174, v176, r2b, r2_8a, r2_16a, r2_24a, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209, v211);
        }

        while (v145);
      }

      goto LABEL_57;
    }
  }

LABEL_46:
  v130 = OUTLINED_FUNCTION_13_37();
  v131 = 4294954510;
LABEL_47:
  [v130 setErr:v131];
  v132 = 0;
LABEL_57:
  if (dword_1EB58E120)
  {
    OUTLINED_FUNCTION_9_56();
    v156 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (os_log_type_enabled(v156, v212))
    {
      v157 = v213;
    }

    else
    {
      v157 = v213 & 0xFFFFFFFE;
    }

    if (v157)
    {
      [*(v1 + v2[221]) err];
      [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_13_37() "input")];
      OUTLINED_FUNCTION_76();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_15_37();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v158 = [OUTLINED_FUNCTION_13_37() err];
  delegate = [OUTLINED_FUNCTION_13_37() delegate];
  input = [OUTLINED_FUNCTION_13_37() input];
  v161 = input;
  if (v158)
  {
    inputFrame = [input inputFrame];
    input2 = [OUTLINED_FUNCTION_13_37() input];
    v162 = [OUTLINED_FUNCTION_13_37() err];
    v163 = delegate;
    v164 = v1;
    v165 = inputFrame;
    v166 = input2;
  }

  else
  {
    v162 = [OUTLINED_FUNCTION_13_37() err];
    v163 = delegate;
    v164 = v1;
    v165 = v132;
    v166 = v161;
  }

  [v163 processorController:v164 didFinishProcessingSampleBuffer:v165 type:1 processorInput:v166 err:v162];
  if (v132)
  {
    CFRelease(v132);
  }

  return [(BWLearnedNRProcessorController *)v1 _updateStateIfNeeded];
}

- (void)input:(id)input setInputFrame:(opaqueCMSampleBuffer *)frame
{
  [(BWLearnedNRRequest *)self->_currentRequest input:input];

  [(BWLearnedNRProcessorController *)&self->super.super.isa _updateStateIfNeeded];
}

- (BWInferenceVideoFormat)inputInferenceVideoFormatForAttachedMediaKey:(id *)a1 .cold.1(id *a1, BWInferenceVideoFormat **a2)
{
  WORD2(v4) = 0;
  LODWORD(v4) = 0;
  result = [BWInferenceVideoFormat initWithUnderlyingFormat:"initWithUnderlyingFormat:isDeviceOriented:videoContentMode:includesInvalidContent:cropDescriptor:histogramRequest:rotationDegrees:applyHorizontalFlip:isLandscapeOriented:" isDeviceOriented:[(BWLearnedNRProcessorController *)a1 _primaryInputFormat] videoContentMode:0 includesInvalidContent:0 cropDescriptor:0 histogramRequest:0 rotationDegrees:0 applyHorizontalFlip:v4 isLandscapeOriented:?];
  *a2 = result;
  return result;
}

@end