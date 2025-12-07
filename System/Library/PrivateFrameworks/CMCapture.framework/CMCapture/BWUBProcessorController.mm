@interface BWUBProcessorController
+ (void)initialize;
- (BOOL)finishProcessingCurrentInputNow;
- (BWUBProcessorController)initWithConfiguration:(id)configuration;
- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(CFTypeRef *)pixelBuffer formatDescriptionInOut:(uint64_t)out metadataToMerge:;
- (id)_processUBOriginalImage;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)type;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)mode frameStatistics:(id)statistics stationary:(BOOL)stationary sphereOffsetEnabled:(BOOL)enabled detectedObjects:(id)objects;
- (id)processorGetInferenceResults:(id)results;
- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate processErrorRecoveryFrame:(BOOL)frame processOriginalImage:(BOOL)image clientBracketSequenceNumber:(int)number processSemanticRendering:(BOOL)rendering provideInferenceInputImageForProcessing:(BOOL)forProcessing inferencesAvailable:(BOOL)self0;
- (int)progressiveLowLightFusionBatchSize;
- (uint64_t)_loadSetupAndPrepareUBProcessor;
- (uint64_t)_setupProcessorForProcessingType:(uint64_t)type;
- (uint64_t)_singleImageProcessSampleBuffer:(CMAttachmentBearerRef *)buffer sampleBufferOut:;
- (void)_processDeepFusion;
- (void)_processSingleImage;
- (void)_processUBFusion;
- (void)_serviceNextRequest;
- (void)_setupProcessor;
- (void)_updateStateIfNeeded;
- (void)cancelProcessing;
- (void)dealloc;
- (void)input:(id)input addFrame:(opaqueCMSampleBuffer *)frame isReferenceFrame:(BOOL)referenceFrame;
- (void)inputReceivedAllFrames:(id)frames;
- (void)processor:(id)processor didSelectFusionMode:(int)mode;
- (void)processor:(id)processor outputReadyWithFrameType:(int)type outputPixelBuffer:(__CVBuffer *)buffer outputMetadata:(id)metadata error:(int)error;
@end

@implementation BWUBProcessorController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWUBProcessorController)initWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = BWUBProcessorController;
  v4 = [(BWUBProcessorController *)&v7 init];
  if (v4)
  {
    v4->_configuration = configuration;
    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [[FigStateMachine alloc] initWithLabel:@"BWUBProcessorController state machine" stateCount:8 initialState:1 owner:v4];
    [(FigStateMachine *)v6 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v6 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v6 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v6 setLabel:@"WaitingForFrames" forState:4];
    [(FigStateMachine *)v6 setLabel:@"ProcessingSingleImage" forState:8];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBOriginalImage" forState:16];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBFusion" forState:32];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBLowLightFusion" forState:64];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBDeepFusion" forState:128];
    [(FigStateMachine *)v6 whenTransitioningToStates:1 callHandler:&__block_literal_global_57];
    [(FigStateMachine *)v6 whenTransitioningToStates:2 callHandler:&__block_literal_global_605];
    [(FigStateMachine *)v6 whenTransitioningToState:4 callHandler:&__block_literal_global_607];
    [(FigStateMachine *)v6 whenTransitioningToState:8 callHandler:&__block_literal_global_609];
    [(FigStateMachine *)v6 whenTransitioningToState:16 callHandler:&__block_literal_global_611];
    [(FigStateMachine *)v6 whenTransitioningToState:32 callHandler:&__block_literal_global_613];
    [(FigStateMachine *)v6 whenTransitioningToState:64 callHandler:&__block_literal_global_615];
    [(FigStateMachine *)v6 whenTransitioningToState:128 callHandler:&__block_literal_global_617];
    v4->_stateMachine = v6;
    if ([(BWUBProcessorController *)v4 _loadSetupAndPrepareUBProcessor])
    {

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  [(UBProcessor *)self->_ubProcessor finishProcessing];
  [(UBProcessor *)self->_ubProcessor setOutput:0];
  [(UBProcessor *)self->_ubProcessor resetState];

  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  inferenceInputFormatDescription = self->_inferenceInputFormatDescription;
  if (inferenceInputFormatDescription)
  {
    CFRelease(inferenceInputFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = BWUBProcessorController;
  [(BWStillImageProcessorController *)&v5 dealloc];
}

- (void)_updateStateIfNeeded
{
  result = [*(self + 80) currentState];
  if (a2 != result)
  {
    v5 = *(self + 80);

    return [v5 transitionToState:a2];
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate processErrorRecoveryFrame:(BOOL)frame processOriginalImage:(BOOL)image clientBracketSequenceNumber:(int)number processSemanticRendering:(BOOL)rendering provideInferenceInputImageForProcessing:(BOOL)forProcessing inferencesAvailable:(BOOL)self0
{
  imageCopy = image;
  frameCopy = frame;
  if (!-[NSSet containsObject:](self->_supportedPortTypes, "containsObject:", [processing portType]))
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    [processing portType];
    v27 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v27, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBProcessorController.m", 1151, @"LastShownDate:BWUBProcessorController.m:1151", @"LastShownBuild:BWUBProcessorController.m:1151", 0);
    v28 = v27;
LABEL_15:
    free(v28);
    return -12780;
  }

  if (frameCopy && imageCopy)
  {
    v23 = FigCaptureGetFrameworkRadarComponent();
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v23, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBProcessorController.m", 1152, @"LastShownDate:BWUBProcessorController.m:1152", @"LastShownBuild:BWUBProcessorController.m:1152", 0);
LABEL_14:
    v28 = v29;
    goto LABEL_15;
  }

  if (number)
  {
    v25 = FigCaptureGetFrameworkRadarComponent();
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v29 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v25, v29, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWUBProcessorController.m", 1153, @"LastShownDate:BWUBProcessorController.m:1153", @"LastShownBuild:BWUBProcessorController.m:1153", 0);
    goto LABEL_14;
  }

  v17 = objc_alloc_init(self->_ubFusionOutputClass);
  if ([objc_msgSend(processing "captureStreamSettings")] == 12)
  {
    v18 = objc_alloc_init(self->_ubDeepFusionOutputClass);
  }

  else
  {
    v18 = 0;
  }

  v19 = [[BWUBProcessorRequest alloc] initWithInput:processing output:v17 deepFusionOutput:v18 processErrorRecoveryFrame:frameCopy processOriginalImage:imageCopy processSemanticRendering:rendering provideInferenceInputImageForProcessing:forProcessing inferencesAvailable:available delegate:delegate];

  [(NSMutableArray *)self->_requestQueue addObject:v19];
  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWUBProcessorRequest *)self->_currentRequest setErr:4294950490];
  [(BWUBProcessorController *)self _serviceNextRequest];
  [(UBProcessor *)self->_ubProcessor setOutput:0];
  [(UBProcessor *)self->_ubProcessor resetState];

  [(BWUBProcessorController *)self _updateStateIfNeeded];
}

- (int)progressiveLowLightFusionBatchSize
{
  result = [(BWUBProcessorControllerConfiguration *)self->_configuration lowLightFusionEnabled];
  if (result)
  {
    ubProcessor = self->_ubProcessor;

    return [(UBProcessor *)ubProcessor progressiveBatchSize];
  }

  return result;
}

- (uint64_t)_loadSetupAndPrepareUBProcessor
{
  if (!self || *(self + 88))
  {
    return 0;
  }

  if (![objc_msgSend(OUTLINED_FUNCTION_11_25() "sensorConfigurationsByPortType")] || !objc_msgSend(OUTLINED_FUNCTION_11_25(), "inputFormat") || !objc_msgSend(OUTLINED_FUNCTION_11_25(), "outputFormat"))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = dictionary3;
  [dictionary2 setObject:dictionary3 forKeyedSubscript:@"DefaultSensorIDs"];
  v30 = [MEMORY[0x1E695DFA8] set];
  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [OUTLINED_FUNCTION_11_25() sensorConfigurationsByPortType];
  v6 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [objc_msgSend(*(self + 64) "sensorConfigurationsByPortType")];
        [v10 sensorIDString];
        [v5 setObject:self forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_29_6(), "portType")}];
        [MEMORY[0x1E695DF90] dictionary];
        v11 = [objc_msgSend(OUTLINED_FUNCTION_29_6() "sensorIDDictionary")];
        if (v11)
        {
          [self setObject:v11 forKeyedSubscript:@"UBParameters"];
        }

        v12 = [objc_msgSend(v10 "sensorIDDictionary")];
        if (v12)
        {
          [self setObject:v12 forKeyedSubscript:@"ChromaticDefringing"];
        }

        sensorIDString = [v10 sensorIDString];
        selfCopy = self;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&selfCopy forKeys:&sensorIDString count:1];
        [dictionary2 setObject:self forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_29_6(), "portType")}];
        [v10 cameraInfo];
        [dictionary4 setObject:self forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_29_6(), "portType")}];
        [v30 addObject:{objc_msgSend(v10, "portType")}];
        [objc_msgSend(objc_msgSend(v10 "sensorIDDictionary")];
        [dictionary5 setObject:self forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_29_6(), "portType")}];
      }

      v7 = [obj countByEnumeratingWithState:&v37 objects:v36 count:16];
    }

    while (v7);
  }

  if (![dictionary2 count])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v26, v27, v1, dictionary, obj, dictionary2, v30, dictionary4);
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:*off_1E798A9D0];
  if ([dictionary4 count])
  {
    [dictionary setObject:dictionary4 forKeyedSubscript:*off_1E798A970];
  }

  *(self + 72) = [objc_alloc(MEMORY[0x1E695DFD8]) initWithSet:v30];
  *(self + 128) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:dictionary5];
  v13 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/VideoProcessors/UB.bundle"];
  if (!v13)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  v14 = v13;
  v33 = 0;
  if (![v13 loadAndReturnError:&v33])
  {
    goto LABEL_41;
  }

  v15 = [v14 classNamed:@"UBFusionOutput"];
  *(self + 104) = v15;
  if (!v15)
  {
    goto LABEL_41;
  }

  v16 = [v14 classNamed:@"UBDeepFusionOutput"];
  *(self + 136) = v16;
  if (!v16)
  {
    goto LABEL_41;
  }

  v17 = [v14 classNamed:@"UBProgressiveBracketingStatistics"];
  *(self + 112) = v17;
  if (!v17)
  {
    goto LABEL_41;
  }

  v18 = [v14 classNamed:@"UBProgressiveBracketingParameters"];
  *(self + 120) = v18;
  if (!v18)
  {
    goto LABEL_41;
  }

  v19 = objc_alloc([v14 classNamed:@"UBProcessor"]);
  [OUTLINED_FUNCTION_11_25() metalCommandQueue];
  v20 = [OUTLINED_FUNCTION_17() initWithCommandQueue:?];
  *(self + 88) = v20;
  if (!v20)
  {
    goto LABEL_41;
  }

  v21 = objc_alloc_init([v14 classNamed:@"UBPrepareDescriptor"]);
  *(self + 96) = v21;
  if (!v21)
  {
    goto LABEL_41;
  }

  [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
  [OUTLINED_FUNCTION_41_8() setWidth:?];
  [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
  [OUTLINED_FUNCTION_41_8() setHeight:?];
  [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
  [OUTLINED_FUNCTION_41_8() setPixelFormat:?];
  [OUTLINED_FUNCTION_11_25() alwaysAllowModifyingInputBuffers];
  [OUTLINED_FUNCTION_41_8() setAllowModifyingInputBuffers:?];
  dictionary6 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary6 setObject:*(self + 96) forKeyedSubscript:&unk_1F2243FD8];
  if ([OUTLINED_FUNCTION_11_25() unifiedBracketingFusionSupportEnabled])
  {
    [dictionary6 setObject:*(self + 96) forKeyedSubscript:&unk_1F2243FF0];
  }

  if ([OUTLINED_FUNCTION_11_25() lowLightFusionEnabled])
  {
    [dictionary6 setObject:*(self + 96) forKeyedSubscript:&unk_1F2244008];
  }

  if ([OUTLINED_FUNCTION_11_25() deepFusionEnabled])
  {
    v23 = objc_alloc_init([v14 classNamed:@"UBPrepareDescriptor"]);
    *(self + 144) = v23;
    if (v23)
    {
      [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
      [OUTLINED_FUNCTION_39_8() setWidth:?];
      [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
      [OUTLINED_FUNCTION_39_8() setHeight:?];
      [objc_msgSend(OUTLINED_FUNCTION_11_25() "inputFormat")];
      [OUTLINED_FUNCTION_39_8() setPixelFormat:?];
      [OUTLINED_FUNCTION_11_25() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_39_8() setAllowModifyingInputBuffers:?];
      [dictionary6 setObject:*(self + 144) forKeyedSubscript:&unk_1F2244020];
      goto LABEL_36;
    }

LABEL_41:
    v24 = 4294954510;
LABEL_39:

    *(self + 88) = 0;
    *(self + 96) = 0;

    *(self + 144) = 0;
    return v24;
  }

LABEL_36:
  [dictionary setObject:dictionary6 forKeyedSubscript:*off_1E798D420];
  if ([OUTLINED_FUNCTION_11_25() depthDataDeliveryEnabled])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798D418];
  }

  v24 = [*(self + 88) setupWithOptions:dictionary];
  if (v24)
  {
    goto LABEL_39;
  }

  return v24;
}

- (void)input:(id)input addFrame:(opaqueCMSampleBuffer *)frame isReferenceFrame:(BOOL)referenceFrame
{
  referenceFrameCopy = referenceFrame;
  if ([(BWUBProcessorRequest *)self->_currentRequest input]== input)
  {
    ubp_addFrame(self, &self->_currentRequest->super.isa, self->_ubProcessor, frame, referenceFrameCopy);
    [(BWUBProcessorInput *)[(BWUBProcessorRequest *)self->_currentRequest input] updateAdaptiveBracketingFrameParametersIfNeededUsingFrame:frame err:[(BWUBProcessorRequest *)self->_currentRequest err]];
  }

  [(BWUBProcessorController *)self _updateStateIfNeeded];
}

- (void)inputReceivedAllFrames:(id)frames
{
  if ([(BWUBProcessorRequest *)self->_currentRequest input]== frames)
  {

    [(BWUBProcessorController *)self _updateStateIfNeeded];
  }
}

- (BOOL)finishProcessingCurrentInputNow
{
  v2 = self->_currentRequest;
  if ([(BWUBProcessorInput *)[(BWUBProcessorRequest *)v2 input] adaptiveBracketingParameters])
  {
    [(BWUBProcessorInput *)[(BWUBProcessorRequest *)v2 input] stopAdaptiveBracketingNow];
    v5 = [(BWUBProcessorRequest *)v2 err];
    v3 = v5 == 0;
    if (dword_1EB58DE40)
    {
      v6 = v5;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_40_7();
      if (v9)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }

      if (v10)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"'%@'. Success:%d (err=%d)", v2, v6 == 0, -[BWUBProcessorRequest err](v2, "err")];
        [(FigCaptureStillImageSettings *)[(BWStillImageProcessorControllerInput *)[(BWUBProcessorRequest *)v2 input] settings] settingsID];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0(v11, v12, v13, v14, v15);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    v2 = result[22];
    v3 = v2 ? v2[5] : 0;
    input = [v2 input];
    v5 = [v1[22] err];

    v1[22] = 0;
    [v3 processorController:v1 didFinishProcessingInput:input err:v5];

    result = [v1[21] firstObject];
    v1[22] = result;
    if (result)
    {
      [v1[21] removeObjectAtIndex:0];
      input2 = [v1[22] input];

      return [input2 setDelegate:v1];
    }
  }

  return result;
}

- (uint64_t)_setupProcessorForProcessingType:(uint64_t)type
{
  if (!type)
  {
    return 0;
  }

  v4 = a2;
  if (dword_1EB58DE40)
  {
    v88[0] = 0;
    v87 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_4_0();
    if (v2)
    {
      v8 = *(type + 176);
      v79 = 136315907;
      v80 = "[BWUBProcessorController _setupProcessorForProcessingType:]";
      v81 = 2113;
      v82 = &stru_1F216A3D0;
      v83 = 2113;
      v84 = v8;
      v85 = 2048;
      v86 = [objc_msgSend(objc_msgSend(v8 "input")];
      LODWORD(v66) = 42;
      v64 = &v79;
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_39_0(v9, v10, v11, v12, v13);
    v4 = a2;
  }

  v14 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")];
  [OUTLINED_FUNCTION_45_8() setOutput:0];
  [OUTLINED_FUNCTION_45_8() resetState];
  input = [OUTLINED_FUNCTION_15_15() input];
  v16 = OUTLINED_FUNCTION_15_15();
  if (v16)
  {
    v18 = 0;
    if (v4 && (v16[34] & 1) != 0)
    {
      v19 = [objc_msgSend(v16 "input")];
      if (v14 == 10)
      {
        v20 = v19;
        sceneFlags = [v19 sceneFlags];
        v22 = v4;
        sceneFlags2 = [v20 sceneFlags];
        v24 = [v20 captureFlags] & 0x100000;
        captureFlags = [v20 captureFlags];
        v26 = sceneFlags2 & 4;
        v4 = v22;
        v27 = (captureFlags >> 22) & 1;
        if (v24)
        {
          LODWORD(v27) = 1;
        }

        if (v26)
        {
          v28 = 1;
        }

        else
        {
          v28 = v27;
        }

        if ((sceneFlags & 8) != 0)
        {
          v29 = 1;
        }

        else
        {
          v29 = v28;
        }
      }

      else
      {
        v29 = 1;
      }

      [*(type + 88) setSrlEnabled:{v29, v64, v66}];
      provideInferenceInputImageForProcessing = [OUTLINED_FUNCTION_15_15() provideInferenceInputImageForProcessing];
      v17 = 176;
      if (provideInferenceInputImageForProcessing)
      {
        OUTLINED_FUNCTION_19_13();
        v32 = [v31 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
        if (!v32)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v64, v66, v68, v70, v3, v73, cf, v77);
          return 4294954510;
        }

        v18 = v32;
        v17 = 176;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  input2 = [objc_msgSend(objc_msgSend(*(type + v17) input];
  v78 = v18;
  HIDWORD(v73) = v4;
  if (v4 != 3)
  {
    v56 = 0;
    v57 = OUTLINED_FUNCTION_15_15();
    if (!v4 && (v14 - 10) <= 2)
    {
      if (v57)
      {
        if (v57[32])
        {
          v56 = 0;
        }

        else
        {
          v56 = v57[33] ^ 1;
        }
      }

      else
      {
        v56 = 1;
      }
    }

    cfb = input2;
    v52 = *(type + 96);
    output = [v57 output];
    v59 = OUTLINED_FUNCTION_15_15();
    if (v59)
    {
      if (v56)
      {
LABEL_70:
        [(BWUBProcessorRequest *)v59 fusionErrorRecoveryImageType];
        goto LABEL_85;
      }
    }

    else if (v56)
    {
      goto LABEL_70;
    }

    [(BWUBProcessorRequest *)v59 imageType];
LABEL_85:
    OUTLINED_FUNCTION_19_13();
    v61 = [v60 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v61)
    {
      v51 = v61;
      [output setPixelBuffer:v61];
      [MEMORY[0x1E695DF90] dictionary];
      [OUTLINED_FUNCTION_7() setMetadata:?];
      [output setInferenceInputPixelBuffer:v18];
      fusionMode = [input fusionMode];
      if ((v4 - 1) <= 1)
      {
        if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")] & 0x800) != 0)
        {
          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")] & 0x1000) != 0)
          {
            fusionMode = fusionMode;
          }

          else
          {
            fusionMode = 1;
          }
        }

        if (v4 == 2)
        {
          input3 = [OUTLINED_FUNCTION_15_15() input];
          [(BWUBProcessorInput *)input3 adaptiveBracketingParameters];
          [OUTLINED_FUNCTION_45_8() setProgressiveBracketingParameters:?];
        }
      }

      [OUTLINED_FUNCTION_45_8() setFusionMode:fusionMode];
      if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")] & 0x100) != 0)
      {
        [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_15() "input")];
      }

      [OUTLINED_FUNCTION_23_10() setDoRedFaceFix:?];
      [OUTLINED_FUNCTION_23_10() setReferenceFrameHasEVMinus:(cfb >> 20) & 1];
      [OUTLINED_FUNCTION_15_15() output];
      cfa = 0;
      v42 = 0;
      v72 = 0;
      v49 = 0;
      v50 = 0;
      v53 = 0;
      goto LABEL_42;
    }

    goto LABEL_77;
  }

  v34 = *(type + 144);
  deepFusionOutput = [OUTLINED_FUNCTION_15_15() deepFusionOutput];
  if (![objc_msgSend(input "captureSettings")])
  {
    cfa = 0;
    goto LABEL_30;
  }

  if (([objc_opt_class() lazilyAllocatesDeepFusionOutputBuffers] & 1) == 0)
  {
    OUTLINED_FUNCTION_19_13();
    v36 = [v37 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v36)
    {
      goto LABEL_29;
    }

LABEL_77:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v54 = 4294954510;
    if (!v18)
    {
      return v54;
    }

    goto LABEL_60;
  }

  v36 = 0;
LABEL_29:
  cfa = v36;
  [deepFusionOutput setProxyPixelBuffer:v36];
  [deepFusionOutput setProxyMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
LABEL_30:
  v71 = v34;
  if (([objc_opt_class() lazilyAllocatesDeepFusionOutputBuffers] & 1) == 0)
  {
    OUTLINED_FUNCTION_19_13();
    v69 = [v43 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (!v69)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v65, v67, 0, v34, v3, v73, cfa, v18);
      v42 = 0;
      v41 = 0;
      v40 = 0;
      v39 = 0;
      v53 = 0;
      v54 = 4294954510;
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_19_13();
    v41 = [v44 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v41)
    {
      OUTLINED_FUNCTION_19_13();
      v40 = [v45 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (v40)
      {
        OUTLINED_FUNCTION_19_13();
        v39 = [v46 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
        if (v39)
        {
          if (([objc_msgSend(objc_msgSend(*(type + 176) "input")] & 0x400000) == 0)
          {
            v38 = 0;
LABEL_40:
            v42 = v69;
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_19_13();
          v48 = [v47 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
          if (v48)
          {
            v38 = v48;
            goto LABEL_40;
          }
        }

        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_80:
        v53 = 0;
        v54 = 4294954510;
        v42 = v69;
        goto LABEL_47;
      }

      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v65, v67, v69, v34, v3, v73, cfa, v78);
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v65, v67, v69, v34, v3, v73, cfa, v78);
      v40 = 0;
    }

    v39 = 0;
    goto LABEL_80;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
LABEL_41:
  [deepFusionOutput setReferencePixelBuffer:v42];
  v72 = v41;
  [deepFusionOutput setReferenceNoisePixelBuffer:v41];
  [deepFusionOutput setReferenceMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
  v49 = v40;
  [deepFusionOutput setLongPixelBuffer:v40];
  v50 = v39;
  [deepFusionOutput setLongNoisePixelBuffer:v39];
  [deepFusionOutput setLongMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
  [deepFusionOutput setRealLongNoisePixelBuffer:v38];
  [deepFusionOutput setInferenceInputPixelBuffer:v78];
  [OUTLINED_FUNCTION_23_10() setReferenceFrameHasEVMinus:(input2 >> 20) & 1];
  [*(type + 176) deepFusionOutput];
  v51 = 0;
  v52 = v71;
  v53 = v38;
LABEL_42:
  [OUTLINED_FUNCTION_23_10() setOutput:?];
  v54 = [OUTLINED_FUNCTION_23_10() prepareToProcess:HIDWORD(v73) prepareDescriptor:v52];
  if (!v54)
  {
    [OUTLINED_FUNCTION_23_10() setDelegate:type];
  }

  if (v51)
  {
    CFRelease(v51);
  }

  v40 = v49;
  v41 = v72;
  v39 = v50;
LABEL_47:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v42)
  {
    CFRelease(v42);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  v18 = v78;
  if (v40)
  {
    CFRelease(v40);
  }

  if (v39)
  {
    CFRelease(v39);
  }

  if (v53)
  {
    CFRelease(v53);
  }

  if (v78)
  {
LABEL_60:
    CFRelease(v18);
  }

  return v54;
}

- (void)_setupProcessor
{
  if (result)
  {
    v1 = result;
    processingType = [(BWUBNRFProcessorRequest *)result[22] processingType];
    if ([(BWUBProcessorController *)v1 _setupProcessorForProcessingType:processingType])
    {
      [OUTLINED_FUNCTION_44_7() setErr:?];
      [v1[11] setOutput:0];
      v8 = v1[11];

      return [v8 resetState];
    }

    else
    {
      for (i = 0; ; ++i)
      {
        input = [OUTLINED_FUNCTION_44_7() input];
        if (input)
        {
          input = OUTLINED_FUNCTION_42_8(input);
        }

        result = [input count];
        if (result <= i)
        {
          break;
        }

        input2 = [OUTLINED_FUNCTION_44_7() input];
        if (input2)
        {
          input2 = OUTLINED_FUNCTION_42_8(input2);
        }

        v6 = [input2 objectAtIndexedSubscript:i];
        v7 = i == [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_44_7() "input")];
        ubp_addFrame(v1, v1[22], v1[11], v6, v7);
      }
    }
  }

  return result;
}

- (void)_processSingleImage
{
  if (self)
  {
    v2 = *(self + 176);
    if (v2 && v2[32] == 1)
    {
      firstObject = [objc_msgSend(v2 "input")];
    }

    else
    {
      input = [v2 input];
      if (input)
      {
        input = input[7];
      }

      firstObject = [input firstObject];
    }

    cf = 0;
    [(BWUBProcessorController *)self _singleImageProcessSampleBuffer:firstObject sampleBufferOut:&cf];
    if (cf)
    {
      v5 = *(self + 176);
      if (v5)
      {
        if (*(v5 + 32) == 1)
        {
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_50_8(cf), "unsignedIntValue") | 0x400}];
          v6 = OUTLINED_FUNCTION_7();
          CMSetAttachment(v6, @"StillImageProcessingFlags", v7, 1u);
        }
      }
    }

    [(BWUBProcessorRequest *)*(self + 176) imageType];
    [OUTLINED_FUNCTION_43_8() input];
    v8 = OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_35_10(v8, v9, v10, v11, v12, v13);
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

- (uint64_t)_singleImageProcessSampleBuffer:(CMAttachmentBearerRef *)buffer sampleBufferOut:
{
  if (result)
  {
    if (a2)
    {
      v5 = result;
      if (dword_1EB58DE40)
      {
        v23 = 0;
        v22 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_40_7();
        if (v9)
        {
          v10 = v8;
        }

        else
        {
          v10 = 0;
        }

        if (v10)
        {
          v11 = BWStillImageSampleBufferToDisplayString(a2, v7);
          [objc_msgSend(objc_msgSend(*(v5 + 176) "input")];
          v20 = 136315651;
          OUTLINED_FUNCTION_20();
          v21 = v11;
          OUTLINED_FUNCTION_1_7();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0(v12, v13, v14, v15, v16);
      }

      result = [*(v5 + 88) addFrame:a2];
      if (!result)
      {
        result = [*(v5 + 88) process];
        if (!result)
        {
          target = 0;
          result = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, [objc_msgSend(*(v5 + 176) "output")], (v5 + 152), &target);
          if (!result)
          {
            v17 = *off_1E798A3C8;
            v18 = [OUTLINED_FUNCTION_50_8(target) mutableCopy];
            [objc_msgSend(*(v5 + 176) "output")];
            [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
            CMSetAttachment(target, v17, v18, 1u);

            result = 0;
            if (buffer)
            {
              *buffer = target;
            }
          }
        }
      }
    }

    else
    {
      return 4294954516;
    }
  }

  return result;
}

- (void)_processUBFusion
{
  if (!self)
  {
    return;
  }

  process = [self[22] err];
  sampleBufferOut[0] = 0;
  output = [OUTLINED_FUNCTION_10_26() output];
  v5 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
  if (dword_1EB58DE40)
  {
    OUTLINED_FUNCTION_10_19();
    v6 = OUTLINED_FUNCTION_22_11(qword_1EB58DE38);
    os_log_type_enabled(v6, v143);
    OUTLINED_FUNCTION_37_1();
    if (v1)
    {
      [objc_msgSend(OUTLINED_FUNCTION_31_9() "settings")];
      OUTLINED_FUNCTION_36_11();
      OUTLINED_FUNCTION_18_15("[BWUBProcessorController _processUBFusion]");
      *(v7 + 14) = v144;
      OUTLINED_FUNCTION_2_58();
      OUTLINED_FUNCTION_4_4();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  i = kBWNodeSampleBufferAttachmentKey_StillImageProcessingFlags;
  v9 = &unk_1E799C000;
  if (process)
  {
    metadata = [output metadata];
    if (!metadata)
    {
      metadata = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [metadata setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", process), @"UBAddFrameFailure"}];
    goto LABEL_53;
  }

  process = [self[11] process];
  metadata = [output metadata];
  if (!process)
  {
    v11 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
    CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v11, [output pixelBuffer], self + 19, sampleBufferOut);
    if (!CopyWithNewPixelBuffer)
    {
      v101 = metadata;
      HIDWORD(v98) = v5;
      if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")] & 0x800) == 0)
      {
LABEL_27:
        v5 = HIDWORD(v98);
        metadata = v101;
        if ([output fusionMode] == 2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v39 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
          memset(&v142, 0, sizeof(v142));
          CMSampleBufferGetPresentationTimeStamp(&v142, v39);
          array = [MEMORY[0x1E695DF70] array];
          for (i = 0; i != 3; ++i)
          {
            for (j = 0; j != 3; ++j)
            {
              v42 = MEMORY[0x1E696AD98];
              [output refFrameTransform];
              LODWORD(v114) = v43;
              LODWORD(v116) = v44;
              v113 = *&v45;
              v115 = v46;
              LODWORD(v118) = v47;
              v117 = v48;
              LODWORD(v45) = *((&v113 + 2 * i) & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              [array addObject:{objc_msgSend(v42, "numberWithFloat:", v45)}];
            }
          }

          v49 = OUTLINED_FUNCTION_10_26();
          if (v49)
          {
            v50 = v49[5];
          }

          else
          {
            v50 = 0;
          }

          v5 = HIDWORD(v98);
          metadata = v101;
          input = [v49 input];
          v141 = v142;
          [v50 processorController:self didSelectNewReferenceFrameWithPTS:&v141 transform:array processorInput:input];
        }

        CMSetAttachment(sampleBufferOut[0], @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
        v52 = CMGetAttachment(sampleBufferOut[0], *off_1E798A3C8, 0);
        [v52 addEntriesFromDictionary:metadata];
        [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(output, "fusionMode")), *off_1E798A670}];
        if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")] & 0x100000) != 0)
        {
          v53 = [CMGetAttachment(sampleBufferOut[0] @"StillImageProcessingFlags"];
          LODWORD(i) = sampleBufferOut[0];
          CMSetAttachment(sampleBufferOut[0], @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v53 | 2u], 1u);
          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26(), "input"), "settings"), "HDRMode") == 1)
          {
            if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")])
            {
              v54 = 3;
            }

            else
            {
              v54 = 2;
            }

            [v52 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v54), *off_1E798B370}];
          }
        }

        if (v5 == 11)
        {
          [v52 setObject:&unk_1F2243F78 forKeyedSubscript:@"CompositeImage"];
          v111 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_10_26(), "numberOfFramesAddedForMultiFrameProcessing")}];
          v112 = &unk_1F2243F90;
          i = 0x1E695D000uLL;
          [v52 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v111, 2), @"SourceImageNumberOfCompositeImage"}];
          [OUTLINED_FUNCTION_10_26() totalExposureTimesOfFramesAddedForMultiFrameProcessing];
          v56 = v55;
          [OUTLINED_FUNCTION_10_26() maxExposureTimesOfFramesAddedForMultiFrameProcessing];
          v58 = v57;
          [OUTLINED_FUNCTION_10_26() minExposureTimesOfFramesAddedForMultiFrameProcessing];
          v60 = v59;
          v103 = &unk_1F224A820;
          LODWORD(v61) = v56;
          v104 = [MEMORY[0x1E696AD98] numberWithFloat:v61];
          v105 = &unk_1F224A820;
          LODWORD(v62) = v58;
          v106 = [MEMORY[0x1E696AD98] numberWithFloat:v62];
          v107 = &unk_1F224A820;
          LODWORD(v63) = v60;
          v108 = [MEMORY[0x1E696AD98] numberWithFloat:v63];
          v109 = &unk_1F224A820;
          v110 = &unk_1F2243F90;
          [v52 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v103, 8), @"SourceExposureTimesOfCompositeImage"}];
          v64 = sampleBufferOut[0];
          v9 = &unk_1E799C000;
          v65 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
          CMSetAttachment(v64, @"OisRecenteringLoggingData", v65, 1u);
        }

        else
        {
          [v52 setObject:&unk_1F2243FA8 forKeyedSubscript:@"CompositeImage"];
          v9 = &unk_1E799C000;
        }

        if (dword_1EB58DE40)
        {
          OUTLINED_FUNCTION_10_19();
          v66 = OUTLINED_FUNCTION_22_11(qword_1EB58DE38);
          v67 = v144;
          os_log_type_enabled(v66, v143);
          OUTLINED_FUNCTION_37_1();
          if (i)
          {
            [objc_msgSend(OUTLINED_FUNCTION_31_9() "settings")];
            OUTLINED_FUNCTION_36_11();
            OUTLINED_FUNCTION_18_15("[BWUBProcessorController _processUBFusion]");
            *(v68 + 14) = v67;
            OUTLINED_FUNCTION_2_58();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          metadata = v101;
        }

        v69 = OUTLINED_FUNCTION_10_26();
        if (v69)
        {
          v70 = *(v69 + 40);
        }

        else
        {
          v70 = 0;
        }

        v71 = sampleBufferOut[0];
        imageType = [(BWUBProcessorRequest *)v69 imageType];
        [v70 processorController:self didFinishProcessingSampleBuffer:v71 type:imageType processorInput:objc_msgSend(OUTLINED_FUNCTION_10_26() err:{"input"), 0}];
        process = 0;
        goto LABEL_53;
      }

      fusionMode = [output fusionMode];
      if (fusionMode == 1)
      {
        if (!BWSampleBufferGetAttachedMedia(sampleBufferOut[0], 0x1F21AAAF0))
        {
          v139 = 0x1F21AAAF0;
          v14 = MEMORY[0x1E695DEC8];
          v15 = &v139;
          v16 = 1;
          goto LABEL_18;
        }
      }

      else if (fusionMode == 2)
      {
        v140[0] = @"Depth";
        v140[1] = 0x1F21AABD0;
        v140[2] = 0x1F21AAB10;
        v140[3] = 0x1F21AAB50;
        v14 = MEMORY[0x1E695DEC8];
        v15 = v140;
        v16 = 4;
LABEL_18:
        v17 = [v14 arrayWithObjects:v15 count:v16];
        goto LABEL_20;
      }

      v17 = 0;
LABEL_20:
      v18 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v26 = OUTLINED_FUNCTION_47_8(v18, v19, v20, v21, v22, v23, v24, v25, v92, v94, v96, v98, v99, metadata, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
      if (v26)
      {
        i = v26;
        v27 = *v136;
        do
        {
          for (k = 0; k != i; ++k)
          {
            if (*v136 != v27)
            {
              objc_enumerationMutation(v17);
            }

            v29 = *(*(&v135 + 1) + 8 * k);
            AttachedMedia = BWSampleBufferGetAttachedMedia(v18, v29);
            BWSampleBufferSetAttachedMedia(sampleBufferOut[0], v29, AttachedMedia);
          }

          i = OUTLINED_FUNCTION_47_8(v31, v32, v33, v34, v35, v36, v37, v38, v93, v95, v97, v98, v100, v101, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
        }

        while (i);
      }

      goto LABEL_27;
    }

    process = CopyWithNewPixelBuffer;
  }

LABEL_53:
  if (![OUTLINED_FUNCTION_10_26() err])
  {
    [OUTLINED_FUNCTION_10_26() setErr:process];
  }

  v73 = sampleBufferOut[0];
  if (sampleBufferOut[0])
  {
    goto LABEL_56;
  }

  [output setPixelBuffer:0];
  v74 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
  if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_10_26() "input")] & 1) == 0 && v74)
  {
    if ([(BWUBProcessorController *)self _setupProcessorForProcessingType:?]|| [(BWUBProcessorController *)self _singleImageProcessSampleBuffer:v74 sampleBufferOut:sampleBufferOut])
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else if (dword_1EB58DE40)
    {
      v102 = metadata;
      OUTLINED_FUNCTION_10_19();
      v75 = OUTLINED_FUNCTION_22_11(qword_1EB58DE38);
      v76 = v144;
      os_log_type_enabled(v75, v143);
      OUTLINED_FUNCTION_37_1();
      if (kBWNodeSampleBufferAttachmentKey_StillImageProcessingFlags)
      {
        [objc_msgSend(OUTLINED_FUNCTION_31_9() "settings")];
        OUTLINED_FUNCTION_36_11();
        OUTLINED_FUNCTION_18_15("[BWUBProcessorController _processUBFusion]");
        *(v77 + 14) = v76;
        OUTLINED_FUNCTION_2_58();
        OUTLINED_FUNCTION_4_4();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      metadata = v102;
      v9 = &unk_1E799C000;
    }

    v78 = sampleBufferOut[0];
    if (sampleBufferOut[0])
    {
      goto LABEL_78;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(v74);
    PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
    if (PixelFormatType == [objc_msgSend(self[8] "outputFormat")] && !BWCMSampleBufferCreateCopyIncludingMetadata(v74, sampleBufferOut) && dword_1EB58DE40)
    {
      OUTLINED_FUNCTION_10_19();
      v81 = OUTLINED_FUNCTION_22_11(qword_1EB58DE38);
      v82 = v144;
      if (os_log_type_enabled(v81, v143))
      {
        v83 = v82;
      }

      else
      {
        v83 = v82 & 0xFFFFFFFE;
      }

      if (v83)
      {
        v84 = self[22];
        [objc_msgSend(objc_msgSend(v84 "input")];
        OUTLINED_FUNCTION_36_11();
        OUTLINED_FUNCTION_18_15("[BWUBProcessorController _processUBFusion]");
        *(v85 + 14) = v84;
        OUTLINED_FUNCTION_2_58();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v9 = &unk_1E799C000;
    }

    v78 = sampleBufferOut[0];
    if (sampleBufferOut[0])
    {
LABEL_78:
      v86 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(v78, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 0x400}];
      OUTLINED_FUNCTION_46_7(v86);
      [CMGetAttachment(sampleBufferOut[0] *off_1E798A3C8];
      if (v5 == 11)
      {
        v87 = sampleBufferOut[0];
        v88 = *(v9 + 409);
        v89 = [objc_msgSend(OUTLINED_FUNCTION_10_26() "input")];
        CMSetAttachment(v87, v88, v89, 1u);
      }
    }
  }

  v90 = OUTLINED_FUNCTION_10_26();
  [(BWUBProcessorRequest *)v90 fusionErrorRecoveryImageType];
  [OUTLINED_FUNCTION_10_26() input];
  OUTLINED_FUNCTION_20_11();
  [v91 processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
  v73 = sampleBufferOut[0];
  if (sampleBufferOut[0])
  {
LABEL_56:
    CFRelease(v73);
  }
}

- (id)_processUBOriginalImage
{
  if (result)
  {
    v1 = result;
    target = 0;
    v2 = -[BWUBProcessorController _singleImageProcessSampleBuffer:sampleBufferOut:](result, [objc_msgSend(result[22] "input")], &target);
    if (target)
    {
      v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
      v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(target, @"StillImageProcessingFlags", 0), "unsignedIntValue") | 1}];
      OUTLINED_FUNCTION_46_7(v4);
      [v3 setObject:&unk_1F2243FC0 forKeyedSubscript:*off_1E798B370];
      if (!v2)
      {
        [v3 addEntriesFromDictionary:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_43_8(), "output"), "metadata")}];
      }
    }

    v5 = OUTLINED_FUNCTION_43_8();
    [(BWUBProcessorRequest *)v5 imageType];
    [OUTLINED_FUNCTION_43_8() input];
    v6 = OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_35_10(v6, v7, v8, v9, v10, v11);
    if (target)
    {
      CFRelease(target);
    }

    return [(BWUBProcessorController *)v1 _updateStateIfNeeded];
  }

  return result;
}

- (void)_processDeepFusion
{
  if (!self)
  {
    return;
  }

  v3 = [self[22] err];
  sampleBufferOut[0] = 0;
  if (dword_1EB58DE40)
  {
    v4 = OUTLINED_FUNCTION_16_18();
    LODWORD(v1) = v61;
    os_log_type_enabled(v4, v61);
    OUTLINED_FUNCTION_40_7();
    if (v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = v62;
    }

    if (v7)
    {
      v8 = self[22];
      [objc_msgSend(objc_msgSend(v8 "input")];
      v59 = 136315651;
      OUTLINED_FUNCTION_27_9();
      v60 = v8;
      OUTLINED_FUNCTION_8_29();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0(v9, v10, v11, v12, v13);
  }

  if (!v3)
  {
    if (![objc_opt_class() lazilyAllocatesDeepFusionOutputBuffers])
    {
      goto LABEL_21;
    }

    input = [OUTLINED_FUNCTION_17_15() input];
    deepFusionOutput = [OUTLINED_FUNCTION_17_15() deepFusionOutput];
    if (![deepFusionOutput longPixelBuffer])
    {
      OUTLINED_FUNCTION_20_11();
      v17 = [v16 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (!v17)
      {
        goto LABEL_53;
      }

      v1 = v17;
      [deepFusionOutput setLongPixelBuffer:v17];
      CFRelease(v1);
    }

    if ([deepFusionOutput longNoisePixelBuffer])
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_20_11();
    v19 = [v18 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
    if (v19)
    {
      v1 = v19;
      [deepFusionOutput setLongNoisePixelBuffer:v19];
      CFRelease(v1);
LABEL_17:
      if ([deepFusionOutput realLongNoisePixelBuffer] || (objc_msgSend(objc_msgSend(input, "captureSettings"), "captureFlags") & 0x400000) == 0)
      {
LABEL_21:
        process = [self[11] process];
        if (process)
        {
          v3 = process;
        }

        else
        {
          if ([self[8] deepFusionWaitForProcessingToFinish])
          {
            [self[11] finishProcessing];
          }

          v3 = 0;
        }

        goto LABEL_25;
      }

      OUTLINED_FUNCTION_20_11();
      v21 = [v20 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
      if (v21)
      {
        v22 = v21;
        [deepFusionOutput setRealLongNoisePixelBuffer:v21];
        CFRelease(v22);
        goto LABEL_21;
      }
    }

LABEL_53:
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    v3 = 4294954510;
  }

LABEL_25:
  if (![OUTLINED_FUNCTION_17_15() err])
  {
    [OUTLINED_FUNCTION_17_15() setErr:v3];
  }

  if (v3 && [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_17_15() "input")] && (objc_msgSend(OUTLINED_FUNCTION_17_15(), "deliveredDeferredProxyImage") & 1) == 0)
  {
    [objc_msgSend(OUTLINED_FUNCTION_17_15() "deepFusionOutput")];
    v24 = [objc_msgSend(OUTLINED_FUNCTION_17_15() "input")];
    if (v24)
    {
      v25 = v24;
      if ([(BWUBProcessorController *)self _setupProcessorForProcessingType:?])
      {
        OUTLINED_FUNCTION_6_38();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54);
      }

      else if ([(BWUBProcessorController *)self _singleImageProcessSampleBuffer:v25 sampleBufferOut:sampleBufferOut])
      {
        OUTLINED_FUNCTION_6_38();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v55);
      }

      else if (dword_1EB58DE40)
      {
        LODWORD(v1) = v61;
        v56 = OUTLINED_FUNCTION_16_18();
        os_log_type_enabled(v56, v61);
        OUTLINED_FUNCTION_40_7();
        if (v6)
        {
          v27 = v26;
        }

        else
        {
          v27 = v62;
        }

        if (v27)
        {
          v28 = self[22];
          [objc_msgSend(objc_msgSend(v28 "input")];
          v59 = 136315651;
          OUTLINED_FUNCTION_27_9();
          v60 = v28;
          OUTLINED_FUNCTION_8_29();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0(v29, v30, v31, v32, v33);
      }

      v34 = sampleBufferOut[0];
      if (sampleBufferOut[0])
      {
        goto LABEL_49;
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v25);
      PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
      if (PixelFormatType == [objc_msgSend(self[8] "outputFormat")] && !BWCMSampleBufferCreateCopyIncludingMetadata(v25, sampleBufferOut) && dword_1EB58DE40)
      {
        v37 = OUTLINED_FUNCTION_16_18();
        os_log_type_enabled(v37, v61);
        OUTLINED_FUNCTION_4_0();
        if (v1)
        {
          v38 = self[22];
          [objc_msgSend(objc_msgSend(v38 "input")];
          v59 = 136315651;
          OUTLINED_FUNCTION_27_9();
          v60 = v38;
          OUTLINED_FUNCTION_8_29();
          OUTLINED_FUNCTION_4_4();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v39, v40, v41, v42, v43);
      }

      v34 = sampleBufferOut[0];
      if (sampleBufferOut[0])
      {
LABEL_49:
        [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_50_8(v34), "unsignedIntValue") | 0x400}];
        v44 = OUTLINED_FUNCTION_7();
        CMSetAttachment(v44, @"StillImageProcessingFlags", v45, 1u);
        v46 = CMGetAttachment(sampleBufferOut[0], *off_1E798A3C8, 0);
        v57 = @"UBDeepFusionFusionFailure";
        v58 = [MEMORY[0x1E696AD98] numberWithInt:v3];
        [v46 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v58, &v57, 1), @"UB"}];
      }
    }

    v47 = OUTLINED_FUNCTION_17_15();
    [(BWUBProcessorRequest *)v47 fusionErrorRecoveryImageType];
    [OUTLINED_FUNCTION_17_15() input];
    v48 = OUTLINED_FUNCTION_14_17();
    OUTLINED_FUNCTION_35_10(v48, v49, v50, v51, v52, v53);
    if (sampleBufferOut[0])
    {
      CFRelease(sampleBufferOut[0]);
    }
  }
}

- (void)processor:(id)processor outputReadyWithFrameType:(int)type outputPixelBuffer:(__CVBuffer *)buffer outputMetadata:(id)metadata error:(int)error
{
  if (buffer && !error)
  {
    v10 = 9;
    switch(type)
    {
      case 2:
        v28 = OUTLINED_FUNCTION_48_8([(BWUBProcessorInput *)[(BWUBProcessorRequest *)self->_currentRequest input] referenceFrame], 152);
        if (![(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWUBProcessorRequest *)self->_currentRequest input] captureSettings] deliverDeferredPhotoProxyImage])
        {
          goto LABEL_25;
        }

        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(OUTLINED_FUNCTION_50_8(v28), "unsignedIntValue") | 0x1000}];
        CMSetAttachment(v28, @"StillImageProcessingFlags", v29, 1u);
        [(BWUBProcessorRequest *)self->_currentRequest setDeliveredDeferredProxyImage:1];
        [(BWUBProcessorRequest *)self->_currentRequest input];
        v30 = OUTLINED_FUNCTION_14_17();
        goto LABEL_24;
      case 3:
        deepFusionOutput = [(BWUBProcessorRequest *)self->_currentRequest deepFusionOutput];
        if ([(UBDeepFusionOutput *)deepFusionOutput refFrameTransformIsValid]&& (objc_opt_respondsToSelector() & 1) != 0)
        {
          evMinusReferenceFrame = [(BWUBProcessorInput *)[(BWUBProcessorRequest *)self->_currentRequest input] evMinusReferenceFrame];
          memset(&v39, 0, sizeof(v39));
          CMSampleBufferGetPresentationTimeStamp(&v39, evMinusReferenceFrame);
          array = [MEMORY[0x1E695DF70] array];
          for (i = 0; i != 3; ++i)
          {
            for (j = 0; j != 3; ++j)
            {
              v16 = MEMORY[0x1E696AD98];
              [(UBDeepFusionOutput *)deepFusionOutput refFrameTransform];
              v34 = v17;
              v36 = v18;
              v33 = v19;
              v35 = v20;
              v38 = v21;
              v37 = v22;
              LODWORD(v19) = *((&v33 + 2 * i) & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              [array addObject:{objc_msgSend(v16, "numberWithFloat:", v19)}];
            }
          }

          currentRequest = self->_currentRequest;
          if (currentRequest)
          {
            delegate = currentRequest->_delegate;
          }

          else
          {
            delegate = 0;
          }

          input = [(BWUBProcessorRequest *)currentRequest input];
          v32 = v39;
          [(BWUBProcessorControllerDelegate *)delegate processorController:self didSelectNewReferenceFrameWithPTS:&v32 transform:array processorInput:input];
        }

        v10 = 8;
        goto LABEL_17;
      case 4:
        goto LABEL_17;
      case 5:
        v10 = 10;
        goto LABEL_17;
      case 6:
        v10 = 11;
        goto LABEL_17;
      case 7:
        v10 = 12;
LABEL_17:
        v26 = self->_currentRequest;
        if (v26)
        {
          v27 = v26->_delegate;
        }

        else
        {
          v27 = 0;
        }

        LODWORD(v31) = 0;
        [(BWUBProcessorControllerDelegate *)v27 processorController:self didFinishProcessingBuffer:buffer metadata:metadata type:v10 captureFrameFlags:0 processorInput:[(BWUBProcessorRequest *)v26 input] err:v31];
        break;
      case 8:
        v28 = OUTLINED_FUNCTION_48_8([(BWUBProcessorInput *)[(BWUBProcessorRequest *)self->_currentRequest input] referenceFrame], 160);
        [(BWUBProcessorRequest *)self->_currentRequest input];
        v30 = OUTLINED_FUNCTION_14_17();
LABEL_24:
        [v30 processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
LABEL_25:
        if (v28)
        {

          CFRelease(v28);
        }

        break;
      default:
        return;
    }
  }
}

- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(CFTypeRef *)pixelBuffer formatDescriptionInOut:(uint64_t)out metadataToMerge:
{
  if (result)
  {
    target = 0;
    if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, buffer, pixelBuffer, &target))
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8, v9, v10, target, v12, v13, v14, v15);
    }

    else
    {
      v6 = *off_1E798A3C8;
      v7 = [CMGetAttachment(target *off_1E798A3C8];
      [v7 addEntriesFromDictionary:out];
      CMSetAttachment(target, v6, v7, 1u);
    }

    return target;
  }

  return result;
}

- (void)processor:(id)processor didSelectFusionMode:(int)mode
{
  v4 = *&mode;
  currentRequest = self->_currentRequest;
  if (currentRequest)
  {
    delegate = currentRequest->_delegate;
  }

  else
  {
    delegate = 0;
  }

  input = [(BWUBProcessorRequest *)currentRequest input];

  [(BWUBProcessorControllerDelegate *)delegate processorController:self didSelectFusionMode:v4 processorInput:input];
}

- (id)processorGetInferenceResults:(id)results
{
  v4 = objc_alloc_init(NSClassFromString(&cfstr_Ubprocessorinf.isa));
  if ([(BWUBProcessorRequest *)self->_currentRequest inferencesAvailable])
  {
    currentRequest = self->_currentRequest;
    if (currentRequest)
    {
      delegate = currentRequest->_delegate;
    }

    else
    {
      delegate = 0;
    }

    v7 = [(BWUBProcessorControllerDelegate *)delegate processorController:self newInferencesForProcessorInput:[(BWUBProcessorRequest *)currentRequest input]];
    if ([v7 inferenceBufferForAttachedMediaKey:@"PersonSemanticsSkin"])
    {
      [OUTLINED_FUNCTION_17() setSkinMask:?];
    }

    if ([v7 inferenceBufferForAttachedMediaKey:0x1F219E750])
    {
      [OUTLINED_FUNCTION_17() setPersonMask:?];
    }

    if ([v7 inferenceForAttachmentKey:0x1F219E5F0])
    {
      [OUTLINED_FUNCTION_17() setFaceLandmarks:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v4;
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)mode frameStatistics:(id)statistics stationary:(BOOL)stationary sphereOffsetEnabled:(BOOL)enabled detectedObjects:(id)objects
{
  if (mode && (v7 = stationary, [statistics portType], (v11 = objc_msgSend(OUTLINED_FUNCTION_7(), "objectForKeyedSubscript:")) != 0))
  {
    v12 = v11;
    UBStatisticsFromFrameStatistics = udp_createUBStatisticsFromFrameStatistics(self->_ubProgressiveBracketingStatisticsClass, statistics, v7);
    v14 = -[BWUBAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWUBAdaptiveBracketingParameters alloc], [objc_alloc(self->_ubProgressiveBracketingParametersClass) initWithOptions:v12 portType:objc_msgSend(statistics statistics:"portType") mode:{UBStatisticsFromFrameStatistics, mode == 2}], self->_ubProgressiveBracketingStatisticsClass);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)type
{
  v5 = [(NSDictionary *)self->_adaptiveBracketingCaptureParametersByPortType objectForKeyedSubscript:?];
  if (v5)
  {
    v5 = -[BWUBAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWUBAdaptiveBracketingParameters alloc], [objc_alloc(self->_ubProgressiveBracketingParametersClass) initWithOptions:v5 portType:type statistics:0 mode:0], self->_ubProgressiveBracketingStatisticsClass);
  }

  return v5;
}

@end