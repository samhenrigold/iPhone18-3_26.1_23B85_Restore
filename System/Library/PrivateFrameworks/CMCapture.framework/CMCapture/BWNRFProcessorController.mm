@interface BWNRFProcessorController
+ (void)initialize;
- (BOOL)finishProcessingCurrentInputNow;
- (BWNRFProcessorController)initWithConfiguration:(id)configuration;
- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(CFTypeRef *)pixelBuffer formatDescriptionInOut:(uint64_t)out metadataToMerge:;
- (id)_prepareDescriptorsByProcessingTypeForResolutionFlavors:(id *)result;
- (id)_prepareProcessor;
- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)type;
- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)mode frameStatistics:(id)statistics stationary:(BOOL)stationary sphereOffsetEnabled:(BOOL)enabled detectedObjects:(id)objects;
- (id)externalMemoryDescriptorForResolutionFlavors:(id)flavors;
- (id)processorGetInferenceResults:(id)results;
- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate processErrorRecoveryFrame:(BOOL)frame processErrorRecoveryProxy:(BOOL)proxy processOriginalImage:(BOOL)image processToneMapping:(BOOL)mapping processInferenceInputImage:(BOOL)inputImage clientBracketSequenceNumber:(int)self0 processSemanticRendering:(BOOL)self1 provideInferenceInputImageForProcessing:(BOOL)self2 processSmartStyleRenderingInput:(BOOL)self3 inferencesAvailable:(BOOL)self4;
- (int)progressiveLowLightFusionBatchSize;
- (uint64_t)_loadNRFProcessor;
- (uint64_t)_prepareProcessorForProcessingType:(id *)type;
- (uint64_t)_setupNRFProcessor;
- (unsigned)rawNightModeOutputPixelFormatByBufferType:(unint64_t)type;
- (void)_generateGainMapMetadata:(uint64_t)metadata;
- (void)_logCompletionStatus:(int)status processingType:(void *)type request:;
- (void)_processDeepFusion;
- (void)_processDigitalFlash;
- (void)_processLearnedFusion;
- (void)_processLearnedHRNR;
- (void)_processRawNightMode;
- (void)_processSingleImage;
- (void)_processUBFusion;
- (void)_propagateDemosaicedRawPixelBuffer:(void *)buffer demosaicedRawMetadata:(void *)target outputSampleBuffer:(int)sampleBuffer error:;
- (void)_releaseNRFProcessorResources;
- (void)_serviceNextRequest;
- (void)_singleImageProcessSampleBuffer:(int)buffer sampleBufferOut:(int)out;
- (void)_updateStateIfNeeded;
- (void)cancelProcessing;
- (void)dealloc;
- (void)input:(id)input addFrame:(opaqueCMSampleBuffer *)frame isReferenceFrame:(BOOL)referenceFrame;
- (void)inputReceivedAllFrames:(id)frames;
- (void)inputReceivedProcessedRawErrorRecoveryFrame:(id)frame proxy:(BOOL)proxy;
- (void)processor:(id)processor didSelectFusionMode:(int)mode;
- (void)processor:(id)processor didSelectProgressiveFusionReferenceFrameIndex:(int)index;
- (void)processor:(id)processor outputReadyWithFrameType:(int)type outputPixelBuffer:(__CVBuffer *)buffer outputMetadata:(id)metadata error:(int)error;
@end

@implementation BWNRFProcessorController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWNRFProcessorController)initWithConfiguration:(id)configuration
{
  v8.receiver = self;
  v8.super_class = BWNRFProcessorController;
  v4 = [(BWNRFProcessorController *)&v8 init];
  if (v4)
  {
    v4->_configuration = configuration;
    v4->_requestQueue = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = [[FigStateMachine alloc] initWithLabel:@"BWNRFProcessorController state machine" stateCount:[FigStateMachine indexForState:?], 1, v4];
    [(FigStateMachine *)v6 setPerformsAtomicStateTransitions:0];
    [(FigStateMachine *)v6 setLabel:@"Idle" forState:1];
    [(FigStateMachine *)v6 setLabel:@"Ready" forState:2];
    [(FigStateMachine *)v6 setLabel:@"WaitingForFrames" forState:4];
    [(FigStateMachine *)v6 setLabel:@"ProcessingSingleImage" forState:8];
    [(FigStateMachine *)v6 setLabel:@"ProcessingOriginalImage" forState:16];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBFusion" forState:32];
    [(FigStateMachine *)v6 setLabel:@"ProcessingUBLowLightFusion" forState:64];
    [(FigStateMachine *)v6 setLabel:@"ProcessingDeepFusion" forState:128];
    [(FigStateMachine *)v6 setLabel:@"ProcessingRawNightMode" forState:256];
    [(FigStateMachine *)v6 setLabel:@"ProcessingLearnedHRNR" forState:512];
    [(FigStateMachine *)v6 setLabel:@"ProcessingLearnedFusion" forState:1024];
    [(FigStateMachine *)v6 whenTransitioningToStates:1 callHandler:&__block_literal_global_58];
    [(FigStateMachine *)v6 whenTransitioningToStates:2 callHandler:&__block_literal_global_751];
    [(FigStateMachine *)v6 whenTransitioningToState:4 callHandler:&__block_literal_global_753];
    [(FigStateMachine *)v6 whenTransitioningToState:8 callHandler:&__block_literal_global_755];
    [(FigStateMachine *)v6 whenTransitioningToState:16 callHandler:&__block_literal_global_757];
    [(FigStateMachine *)v6 whenTransitioningToState:32 callHandler:&__block_literal_global_759];
    [(FigStateMachine *)v6 whenTransitioningToState:64 callHandler:&__block_literal_global_761];
    [(FigStateMachine *)v6 whenTransitioningToState:128 callHandler:&__block_literal_global_763];
    [(FigStateMachine *)v6 whenTransitioningToState:256 callHandler:&__block_literal_global_765];
    [(FigStateMachine *)v6 whenTransitioningToState:512 callHandler:&__block_literal_global_767];
    [(FigStateMachine *)v6 whenTransitioningToState:1024 callHandler:&__block_literal_global_769];
    v4->_stateMachine = v6;
    [configuration figThreadPriority];
    v4->_completionStatusQueue = FigDispatchQueueCreateWithPriority();
    v7 = objc_autoreleasePoolPush();
    if ([(BWNRFProcessorController *)&v4->super.super.isa _loadNRFProcessor]|| [(BWNRFProcessorController *)v4 _setupNRFProcessor])
    {
      objc_autoreleasePoolPop(v7);

      return 0;
    }

    else
    {
      objc_autoreleasePoolPop(v7);
    }
  }

  return v4;
}

- (void)dealloc
{
  [(NRFProcessor *)self->_nrfProcessor finishProcessing];
  [(NRFProcessor *)self->_nrfProcessor setOutput:0];
  [(NRFProcessor *)self->_nrfProcessor resetState];
  [(BWNRFProcessorController *)&self->super.super.isa _releaseNRFProcessorResources];
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

  demosaicedRawFormatDescription = self->_demosaicedRawFormatDescription;
  if (demosaicedRawFormatDescription)
  {
    CFRelease(demosaicedRawFormatDescription);
  }

  linearOutputMIWBAppliedFormatDescription = self->_linearOutputMIWBAppliedFormatDescription;
  if (linearOutputMIWBAppliedFormatDescription)
  {
    CFRelease(linearOutputMIWBAppliedFormatDescription);
  }

  gainMapFormatDescription = self->_gainMapFormatDescription;
  if (gainMapFormatDescription)
  {
    CFRelease(gainMapFormatDescription);
  }

  v8.receiver = self;
  v8.super_class = BWNRFProcessorController;
  [(BWStillImageProcessorController *)&v8 dealloc];
}

- (void)_updateStateIfNeeded
{
  result = [*(self + 80) currentState];
  if (a2 != result)
  {
    return [*(self + 80) transitionToState:a2];
  }

  return result;
}

- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate processErrorRecoveryFrame:(BOOL)frame processErrorRecoveryProxy:(BOOL)proxy processOriginalImage:(BOOL)image processToneMapping:(BOOL)mapping processInferenceInputImage:(BOOL)inputImage clientBracketSequenceNumber:(int)self0 processSemanticRendering:(BOOL)self1 provideInferenceInputImageForProcessing:(BOOL)self2 processSmartStyleRenderingInput:(BOOL)self3 inferencesAvailable:(BOOL)self4
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
    v30 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v30, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWNRFProcessorController.m", 1599, @"LastShownDate:BWNRFProcessorController.m:1599", @"LastShownBuild:BWNRFProcessorController.m:1599", 0);
    v31 = v30;
LABEL_17:
    free(v31);
    return -12780;
  }

  if (frameCopy && imageCopy)
  {
    v28 = FigCaptureGetFrameworkRadarComponent();
    v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v32 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v28, v32, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWNRFProcessorController.m", 1600, @"LastShownDate:BWNRFProcessorController.m:1600", @"LastShownBuild:BWNRFProcessorController.m:1600", 0);
    v31 = v32;
    goto LABEL_17;
  }

  v21 = objc_alloc_init(self->_nrfUBFusionOutputClass);
  [v21 setCompletionStatus:objc_alloc_init(self->_nrfCompletionStatusClass)];
  if (([objc_msgSend(processing "captureStreamSettings")] & 0x800000000) != 0)
  {
    v34 = objc_alloc_init(self->_nrfRawNightModeOutputFrameClass);
    [v34 setCompletionStatus:objc_alloc_init(self->_nrfCompletionStatusClass)];
  }

  else
  {
    v34 = 0;
  }

  v33 = frameCopy;
  if ([objc_msgSend(processing "captureStreamSettings")] == 12 || objc_msgSend(objc_msgSend(processing, "captureStreamSettings"), "captureType") == 13 && !-[BWStillImageProcessorControllerConfiguration deferredPhotoProcessorEnabled](self->_configuration, "deferredPhotoProcessorEnabled"))
  {
    processingCopy2 = processing;
    v23 = objc_alloc_init(self->_nrfDeepFusionOutputClass);
    [v23 setCompletionStatus:objc_alloc_init(self->_nrfCompletionStatusClass)];
  }

  else
  {
    processingCopy2 = processing;
    v23 = 0;
  }

  v24 = [[BWNRFProcessorRequest alloc] initWithConfiguration:processingCopy2 input:v21 output:v34 rawNightModeOutputFrame:v23 deepFusionOutput:v33 processErrorRecoveryFrame:proxy processErrorRecoveryProxy:imageCopy processOriginalImage:mapping processToneMapping:inputImage processInferenceInputImage:number clientBracketSequenceNumber:rendering processSemanticRendering:forProcessing provideInferenceInputImageForProcessing:available inferencesAvailable:input processSmartStyleRenderingInput:delegate delegate:?];

  [(NSMutableArray *)self->_requestQueue addObject:v24];
  if ([(FigStateMachine *)self->_stateMachine currentState]== 1)
  {
    [(FigStateMachine *)self->_stateMachine transitionToState:2];
  }

  return 0;
}

- (void)cancelProcessing
{
  [(NSMutableArray *)self->_requestQueue removeAllObjects];
  [(BWNRFProcessorRequest *)self->_currentRequest setErr:4294950490];
  [(BWNRFProcessorController *)self _serviceNextRequest];
  [(NRFProcessor *)self->_nrfProcessor setOutput:0];
  [(NRFProcessor *)self->_nrfProcessor resetState];

  [(BWNRFProcessorController *)self _updateStateIfNeeded];
}

- (unsigned)rawNightModeOutputPixelFormatByBufferType:(unint64_t)type
{
  if (type - 31 < 2)
  {
    return 1751527984;
  }

  if (type != 35 && type != 33)
  {
    return 0;
  }

  outputFormat = [(BWNRFProcessorControllerConfiguration *)self->_configuration outputFormat];

  return [(BWVideoFormat *)outputFormat pixelFormat];
}

- (void)processor:(id)processor didSelectProgressiveFusionReferenceFrameIndex:(int)index
{
  if (dword_1EB58E0E0)
  {
    v16 = 0;
    v15 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  referenceFrameIndex = [(BWStillImageCaptureStreamSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input:processor] captureStreamSettings] referenceFrameIndex];
  if ((index & 0x80000000) == 0 && referenceFrameIndex < 0 && ![(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] referenceFrame])
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      input = [(BWNRFProcessorRequest *)self->_currentRequest input];
      if (input)
      {
        input = input->_frames;
      }

      if ([(BWNRFProcessorInput *)input count]<= v8)
      {
        break;
      }

      input2 = [(BWNRFProcessorRequest *)self->_currentRequest input];
      if (input2)
      {
        input2 = input2->_frames;
      }

      v12 = [(BWNRFProcessorInput *)input2 objectAtIndexedSubscript:v8];
      if ([(BWNRFProcessorRequest *)self->_currentRequest useFrameForMultiFrameProcessing:v12])
      {
        if (v9 == index)
        {
          if (v12)
          {
            [BWNRFProcessorController processor:? didSelectProgressiveFusionReferenceFrameIndex:?];
          }

          return;
        }

        ++v9;
      }

      ++v8;
    }
  }
}

- (int)progressiveLowLightFusionBatchSize
{
  result = [(BWNRFProcessorControllerConfiguration *)self->_configuration lowLightFusionEnabled];
  if (result)
  {
    nrfProcessor = self->_nrfProcessor;

    return [(NRFProcessor *)nrfProcessor progressiveBatchSize];
  }

  return result;
}

- (uint64_t)_loadNRFProcessor
{
  if (self && !self[11])
  {
    if ([objc_msgSend(OUTLINED_FUNCTION_42_9() "sensorConfigurationsByPortType")] && objc_msgSend(OUTLINED_FUNCTION_42_9(), "inputFormat") && objc_msgSend(OUTLINED_FUNCTION_42_9(), "outputFormat"))
    {
      nrfVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      if (nrfVersion)
      {
        v3 = nrfVersion;
        self[12] = [MEMORY[0x1E696AEC0] stringWithFormat:@"NRFProcessorV%d", nrfVersion];
        self[9] = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_42_9(), "sensorConfigurationsByPortType"), "allKeys")}];
        v4 = BWLoadProcessorBundle(@"NRF", v3);
        if (v4)
        {
          v5 = v4;
          v6 = [v4 classNamed:@"NRFUBFusionOutput"];
          self[13] = v6;
          if (v6)
          {
            if (![OUTLINED_FUNCTION_42_9() rawNightModeEnabled] || (v7 = objc_msgSend(v5, "classNamed:", @"NRFRawNightModeOutputFrame"), (self[17] = v7) != 0))
            {
              v8 = [v5 classNamed:@"NRFDeepFusionOutput"];
              self[18] = v8;
              if (v8)
              {
                v9 = [v5 classNamed:@"NRFCompletionStatus"];
                self[19] = v9;
                if (v9)
                {
                  v10 = [v5 classNamed:@"NRFProgressiveBracketingStatistics"];
                  self[14] = v10;
                  if (v10)
                  {
                    v11 = [v5 classNamed:@"NRFProgressiveBracketingParameters"];
                    self[15] = v11;
                    if (v11)
                    {
                      v12 = objc_alloc([v5 classNamed:self[12]]);
                      [OUTLINED_FUNCTION_42_9() metalCommandQueue];
                      v13 = [OUTLINED_FUNCTION_4() initWithCommandQueue:?];
                      self[11] = v13;
                      if (v13)
                      {
                        return 0;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v14 = 4294954510;
    }

    else
    {
      v14 = 4294954516;
    }

    [(BWNRFProcessorController *)self _releaseNRFProcessorResources];
    return v14;
  }

  return 0;
}

- (uint64_t)_setupNRFProcessor
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  v2 = BWAllStillImageResolutionFlavors();
  v21 = [(BWNRFProcessorController *)selfCopy _prepareDescriptorsByProcessingTypeForResolutionFlavors:v2];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary5 setObject:-[FigCaptureCameraParameters commonNRFParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters forKeyedSubscript:{"sharedInstance"), "commonNRFParameters"), @"NRFParameters"}];
  [dictionary2 setObject:dictionary5 forKeyedSubscript:@"Common"];
  v26 = dictionary2;
  [dictionary2 setObject:dictionary3 forKeyedSubscript:@"DefaultSensorIDs"];
  dictionary6 = [MEMORY[0x1E695DF90] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [*(selfCopy + 64) sensorConfigurationsByPortType];
  v7 = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v24 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = dictionary4;
        if (*v31 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v30 + 1) + 8 * i);
        v12 = selfCopy;
        v13 = [objc_msgSend(*(selfCopy + 64) "sensorConfigurationsByPortType")];
        [dictionary3 setObject:objc_msgSend(v13 forKeyedSubscript:{"sensorIDString"), v11}];
        dictionary7 = [MEMORY[0x1E695DF90] dictionary];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        [objc_msgSend(v13 "sensorIDDictionary")];
        [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
        sensorIDString = [v13 sensorIDString];
        v28 = dictionary7;
        [v26 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v28, &sensorIDString, 1), v11}];
        dictionary4 = v10;
        [v10 setObject:objc_msgSend(v13 forKeyedSubscript:{"cameraInfo"), v11}];
        v15 = v13;
        selfCopy = v12;
        [dictionary6 setObject:objc_msgSend(objc_msgSend(objc_msgSend(v15 forKeyedSubscript:{"sensorIDDictionary"), "objectForKeyedSubscript:", @"UBCaptureParameters", "objectForKeyedSubscript:", @"AdaptiveBracketingParameters", v11}];
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v29 count:16];
    }

    while (v8);
  }

  if (![v26 count])
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v19, v20, v21, dictionary, obj, v24, dictionary3);
  }

  [dictionary setObject:v26 forKeyedSubscript:*off_1E798A9D0];
  if ([dictionary4 count])
  {
    [dictionary setObject:dictionary4 forKeyedSubscript:*off_1E798A970];
  }

  *(selfCopy + 128) = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:dictionary6];
  [dictionary setObject:v21 forKeyedSubscript:*off_1E798D1F0];
  if ([*(selfCopy + 64) depthDataDeliveryEnabled])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798D1D8];
  }

  if ([*(selfCopy + 64) quadraSupportEnabled])
  {
    [dictionary setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798D1F8];
  }

  [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters deviceGeneration];
  [dictionary setObject:objc_msgSend(OUTLINED_FUNCTION_17() forKeyedSubscript:{"numberWithInt:"), *off_1E798D1E0}];
  v16 = [*(selfCopy + 88) setupWithOptions:dictionary];
  if (v16)
  {
    [(BWNRFProcessorController *)selfCopy _releaseNRFProcessorResources];
  }

  return v16;
}

- (void)_releaseNRFProcessorResources
{
  if (self)
  {

    self[11] = 0;
    self[12] = 0;

    self[9] = 0;
    self[16] = 0;

    self[19] = 0;
    self[13] = 0;

    self[18] = 0;
    self[14] = 0;

    self[15] = 0;
    self[17] = 0;
  }
}

- (void)input:(id)input addFrame:(opaqueCMSampleBuffer *)frame isReferenceFrame:(BOOL)referenceFrame
{
  referenceFrameCopy = referenceFrame;
  if ([(BWNRFProcessorRequest *)self->_currentRequest input]== input)
  {
    if (![(BWStillImageProcessingSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] processingSettings] optimizedProcessingForZoomFOVEnabled]|| [(NRFProcessor *)self->_nrfProcessor output]|| (v7 = [(BWNRFProcessorRequest *)self->_currentRequest processingType], [(BWNRFProcessorRequest *)self->_currentRequest setErr:[(BWNRFProcessorController *)&self->super.super.isa _prepareProcessorForProcessingType:v7]], ![(BWNRFProcessorRequest *)self->_currentRequest err]))
    {
      if (objc_opt_respondsToSelector())
      {
        OUTLINED_FUNCTION_46_1();
        [v8 processorController:? willAddSampleBuffer:? processorInput:?];
      }

      v9 = OUTLINED_FUNCTION_75_2();
      nrfp_addFrame_0(v9, v10, v11, v12, referenceFrameCopy);
      if ([(BWNRFProcessorRequest *)self->_currentRequest err])
      {
        adaptiveBracketingParameters = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] adaptiveBracketingParameters];
        [(BWUBNRFAdaptiveBracketingParameters *)adaptiveBracketingParameters stopAdaptiveBracketing];
      }
    }
  }

  [(BWNRFProcessorController *)self _updateStateIfNeeded];
}

- (uint64_t)_prepareProcessorForProcessingType:(id *)type
{
  if (!type)
  {
    return 0;
  }

  typeCopy = type;
  v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  input = [type[27] input];
  resolutionFlavor = [input resolutionFlavor];
  v109 = input;
  if (dword_1EB58E0E0)
  {
    v113 = 0;
    v112 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_30();
    if (v2)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
      BWPhotoEncoderStringFromEncodingScheme(resolutionFlavor);
      v5 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      [objc_msgSend(objc_msgSend(typeCopy[27] "input")];
      OUTLINED_FUNCTION_49_5();
      OUTLINED_FUNCTION_11_0();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0(v8, v9, v10, v11, v12);
  }

  v13 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  [OUTLINED_FUNCTION_21_15() setOutput:0];
  [OUTLINED_FUNCTION_21_15() resetState];
  captureSettings = [input captureSettings];
  captureType = [captureSettings captureType];
  v15 = [objc_msgSend(objc_msgSend(*(typeCopy + v5[831]) "input")];
  v16 = captureType - 10;
  v17 = v5[831];
  v18 = *(typeCopy + v17);
  v110 = v15;
  if (a2 || v16 > 3)
  {
    if (!v18)
    {
      v23 = 0;
      goto LABEL_17;
    }
  }

  else if (!v18 || (v18[48] & 1) == 0 && (v18[49] & 1) == 0 && (v18[50] & 1) == 0)
  {
    v19 = 0;
    v20 = 0;
    v21 = 0;
    LODWORD(v107) = 0;
    LODWORD(v103) = 1;
    v22 = (v15 >> 7) & 1;
    LODWORD(v101) = 1;
    v23 = 1;
    goto LABEL_25;
  }

  if (v18[48])
  {
    v23 = 1;
  }

  else
  {
    v23 = v18[49];
  }

LABEL_17:
  v19 = 0;
  v21 = a2 == 5;
  LODWORD(v103) = (a2 < 8) & (0xC1u >> a2);
  v22 = (v15 & 0x80) >> 7;
  v24 = (v15 & 0x80) != 0 || a2 == 7;
  v20 = v23 ^ 1;
  if (v24 && ((v23 ^ 1) & 1) != 0)
  {
    LODWORD(v101) = 0;
    LODWORD(v107) = [captureSettings learnedNRStereoPhotoFrameFlag] != 0;
    v17 = 216;
    v19 = 1;
    v20 = 1;
  }

  else
  {
    LODWORD(v101) = 0;
    LODWORD(v107) = 0;
  }

LABEL_25:
  processSemanticRendering = [*(typeCopy + v17) processSemanticRendering];
  if (processSemanticRendering && captureType == 10)
  {
    v20 = typeCopy;
    typeCopy = v22;
    v22 = captureType;
    LODWORD(captureType) = v23;
    LOBYTE(v23) = v16;
    v16 = a2;
    a2 = v21;
    LODWORD(v21) = v19;
    v19 = captureSettings;
    sceneFlags = [captureSettings sceneFlags];
    sceneFlags2 = [captureSettings sceneFlags];
    if ((sceneFlags & 8) != 0 || (sceneFlags2 & 4) != 0)
    {
      v13 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      OUTLINED_FUNCTION_31_10();
    }

    else
    {
      v13 = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
      OUTLINED_FUNCTION_31_10();
    }
  }

  [OUTLINED_FUNCTION_21_15() setSrlEnabled:?];
  OUTLINED_FUNCTION_21_15();
  v28 = objc_opt_respondsToSelector();
  v29 = typeCopy[27];
  LODWORD(v104) = v21;
  if (v28)
  {
    if (v29)
    {
      v30 = *(v29 + 51);
    }

    else
    {
      v30 = 0;
    }

    [*(typeCopy + v13[825]) setSkipDenoising:v30 & 1];
    v29 = typeCopy[27];
    if (!v29)
    {
      goto LABEL_43;
    }

    if (*(v29 + 51) == 1 && a2 && a2 != 6)
    {
      return 4294954516;
    }
  }

  else if (!v29)
  {
    goto LABEL_43;
  }

  if (*(v29 + 52))
  {
    if (v21)
    {
      cf = 0;
      goto LABEL_45;
    }

    goto LABEL_82;
  }

LABEL_43:
  if (v21 | [v29 provideInferenceInputImageForProcessing] ^ 1)
  {
    cf = 0;
    goto LABEL_45;
  }

  v29 = typeCopy[27];
  if (!v29)
  {
    v43 = 0;
    goto LABEL_83;
  }

LABEL_82:
  v43 = *(v29 + 64);
LABEL_83:
  v44 = [v43 processorController:typeCopy newOutputPixelBufferForProcessorInput:v109 type:-[BWNRFProcessorRequest inferenceInputType](v29)];
  if (!v44)
  {
    return 4294954510;
  }

  cf = v44;
LABEL_45:
  [typeCopy[27] setGainMapEnabled:0];
  [OUTLINED_FUNCTION_14_18() gainMapMainImageDownscalingFactor];
  v34 = v32 == 0.0 || a2 == 4;
  if ((v34 | v107))
  {
    goto LABEL_92;
  }

  deferredPhotoProcessorEnabled = [OUTLINED_FUNCTION_14_18() deferredPhotoProcessorEnabled];
  if (a2 == 10 && (deferredPhotoProcessorEnabled & 1) != 0)
  {
    goto LABEL_92;
  }

  v36 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion]>> 16;
  if (v36 == 2)
  {
    v39 = [objc_msgSend(objc_msgSend(typeCopy[27] "input")] < 2 || captureType != 1;
    if ((v22 | v39))
    {
      if (captureType == 2 && (v110 & 8) != 0)
      {
        v40 = typeCopy[27];
        if (!v40)
        {
          v41 = 0;
          goto LABEL_71;
        }

        if ((v40[52] & 1) == 0)
        {
          v41 = v40[51];
LABEL_71:
          v37 = 1;
          if ((v41 & 1) != 0 || (v110 & 0x10000) == 0)
          {
            goto LABEL_91;
          }
        }
      }
    }

    else if ([objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")])
    {
      v37 = 1;
LABEL_91:
      [typeCopy[27] setGainMapEnabled:v37 & 1];
      goto LABEL_92;
    }

    v37 = v22 | (v16 < 4);
    goto LABEL_91;
  }

  if (v36 == 1)
  {
    if ([OUTLINED_FUNCTION_14_18() depthDataDeliveryEnabled])
    {
      if ((v110 & 0x800) != 0)
      {
        v37 = v19 | v103 ^ 1;
      }

      else
      {
        v37 = 0;
      }

      goto LABEL_91;
    }

    if ((v103 & 1) == 0)
    {
      if (a2 == 3)
      {
        v37 = 1;
      }

      else
      {
        v37 = ((v110 & 0x100000) != 0) & v20;
      }

      if (captureType == 11)
      {
        v37 = 1;
      }

      goto LABEL_91;
    }

    if (v19)
    {
      nrfVersion = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters nrfVersion];
      if (!nrfVersion)
      {
        goto LABEL_104;
      }

      v37 = nrfVersion > 2;
      goto LABEL_91;
    }
  }

LABEL_92:
  v102 = ((v110 & 0x100000) != 0) & v20;
  if ([objc_msgSend(v109 "processingSettings")])
  {
    if (v23)
    {
      errorRecoveryFrame = [v109 errorRecoveryFrame];
    }

    else
    {
      errorRecoveryFrame = [v109 referenceFrame];
      if (!errorRecoveryFrame)
      {
        if (v109)
        {
          v46 = v109[7];
        }

        else
        {
          v46 = 0;
        }

        errorRecoveryFrame = [v46 firstObject];
      }
    }

    v47 = BWPixelBufferDimensionsFromSampleBuffer(errorRecoveryFrame);
    v48 = HIDWORD(v47);
    if (v47 < 1 || SHIDWORD(v47) <= 0)
    {
      goto LABEL_104;
    }
  }

  else if ([objc_msgSend(v109 "processingSettings")])
  {
    v53 = [objc_msgSend(v109 "captureSettings")];
    v54 = +[FigCaptureCameraParameters sharedInstance];
    if (v53)
    {
      softISPCropDimensionsForOptimizedLearnedFusionForSuperwide = [(FigCaptureCameraParameters *)v54 softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
    }

    else
    {
      softISPCropDimensionsForOptimizedLearnedFusionForSuperwide = [(FigCaptureCameraParameters *)v54 nrfProcessingDimensionsForOptimizedLearnedFusionForSuperwide];
    }

    v48 = HIDWORD(softISPCropDimensionsForOptimizedLearnedFusionForSuperwide);
    v47 = softISPCropDimensionsForOptimizedLearnedFusionForSuperwide;
  }

  else
  {
    v48 = 0;
    v47 = 0;
  }

  v50 = 0x1E696A000;
  v111 = [MEMORY[0x1E696AD98] numberWithInt:resolutionFlavor];
  v56 = -[BWNRFProcessorController _prepareDescriptorsByProcessingTypeForResolutionFlavors:](typeCopy, [MEMORY[0x1E695DEC8] arrayWithObjects:&v111 count:1]);
  v51 = 0;
  if (a2 > 0xB)
  {
    OUTLINED_FUNCTION_57_6();
    v72 = captureSettings;
    goto LABEL_204;
  }

  v57 = v56;
  if (((1 << a2) & 0x6E7) != 0)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    v107 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
    if (v107)
    {
      OUTLINED_FUNCTION_74_2();
      if (v58 == v59 && v48 >= 1)
      {
        [v107 setWidth:v47];
        [v107 setHeight:v48];
      }

      output = [OUTLINED_FUNCTION_27_10() output];
      v62 = OUTLINED_FUNCTION_27_10();
      if (v62 && (*(v62 + 52) & 1) != 0)
      {
        v63 = 0;
LABEL_131:
        [output setPixelBuffer:v63];
        [output setMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
        if (v104)
        {
          [output setInferenceInputPixelBuffer:0];
          v64 = 1;
        }

        else
        {
          [output setInferenceInputPixelBuffer:cf];
          if ([OUTLINED_FUNCTION_27_10() inferencesAvailable])
          {
            v64 = [OUTLINED_FUNCTION_27_10() provideInferenceInputImageForProcessing] ^ 1;
          }

          else
          {
            v64 = 0;
          }
        }

        [output setProvidesInferencesWithoutInferenceInputPixelBuffer:v64];
        if (![objc_msgSend(v109 "processingSettings")] || (OUTLINED_FUNCTION_73_1(), v68) && ((*(v68 + 52) & 1) != 0 || (*(v68 + 51) & 1) != 0))
        {
          v50 = 0;
        }

        else
        {
          OUTLINED_FUNCTION_58_9();
          v50 = [v79 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
          if (v50)
          {
            [output setLinearOutputPixelBuffer:v50];
            [output setLinearOutputMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
          }

          else
          {
            [OUTLINED_FUNCTION_27_10() setDemosaicedRawErr:4294954510];
          }
        }

        if ([OUTLINED_FUNCTION_27_10() processSmartStyleRenderingInput])
        {
          OUTLINED_FUNCTION_73_1();
          OUTLINED_FUNCTION_58_9();
          v51 = [v69 processorController:? newOutputPixelBufferForProcessorInput:? type:?];
          if (!v51)
          {
            v22 = 0;
            v85 = 0;
            v86 = 0;
            v31 = 4294954510;
            if (!v63)
            {
              goto LABEL_235;
            }

            goto LABEL_234;
          }

          [output setLinearOutputMIWBAppliedPixelBuffer:v51];
          [output setLinearOutputMIWBAppliedMetadata:{objc_msgSend(MEMORY[0x1E695DF90], "dictionary")}];
        }

        else
        {
          v51 = 0;
        }

        v104 = output;
        if ([OUTLINED_FUNCTION_45_9() gainMapEnabled])
        {
          v70 = typeCopy[27];
          if (v70)
          {
            v71 = v70[8];
          }

          else
          {
            v71 = 0;
          }

          v22 = [v71 processorController:typeCopy newOutputPixelBufferForProcessorInput:v109 type:19];
          v72 = captureSettings;
          if (v22 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [MEMORY[0x1E695DF90] dictionary];
            [OUTLINED_FUNCTION_37_0() setGainMapOutputMetadata:?];
          }
        }

        else
        {
          v22 = 0;
          v72 = captureSettings;
        }

        [v104 setGainMapOutputPixelBuffer:v22];
        if (a2 == 5 || a2 == 2)
        {
          -[BWNRFProcessorInput adaptiveBracketingParameters]([typeCopy[27] input]);
          [OUTLINED_FUNCTION_21_15() setProgressiveBracketingParameters:?];
        }

        if (([v72 sceneFlags] & 0x100) != 0)
        {
          [v72 captureType];
        }

        [OUTLINED_FUNCTION_21_15() setDoRedFaceFix:?];
        v101 = v63;
        if ([typeCopy[8] greenGhostMitigationVersion] >= 1)
        {
          [objc_msgSend(v109 "processingSettings")];
        }

        [OUTLINED_FUNCTION_21_15() setEnableGreenGhostMitigation:?];
        [OUTLINED_FUNCTION_21_15() enableGreenGhostMitigation];
        v100 = 0;
        goto LABEL_203;
      }

      if (v101)
      {
        [(BWNRFProcessorRequest *)v62 fusionErrorRecoveryImageType];
      }

      else
      {
        [(BWNRFProcessorRequest *)v62 imageType];
      }

      OUTLINED_FUNCTION_58_9();
      v63 = [v95 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
      if (v63)
      {
        goto LABEL_131;
      }

      goto LABEL_247;
    }
  }

  else if (((1 << a2) & 0x808) != 0)
  {
    [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    v107 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
    if (v107)
    {
      if (v47 >= 1 && v48 >= 1)
      {
        [v107 setWidth:v47];
        [v107 setHeight:v48];
      }

      deepFusionOutput = [OUTLINED_FUNCTION_45_9() deepFusionOutput];
      if ([captureSettings deliverDeferredPhotoProxyImage] && objc_msgSend(objc_msgSend(v109, "processingSettings"), "provideDemosaicedRaw"))
      {
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_7() setLinearOutputMetadata:?];
      }

      [deepFusionOutput setInferenceInputPixelBuffer:cf];
      if ([OUTLINED_FUNCTION_45_9() inferencesAvailable])
      {
        v67 = [OUTLINED_FUNCTION_45_9() provideInferenceInputImageForProcessing] ^ 1;
      }

      else
      {
        v67 = 0;
      }

      v72 = captureSettings;
      [deepFusionOutput setProvidesInferencesWithoutInferenceInputPixelBuffer:v67];
      v104 = deepFusionOutput;
      if (objc_opt_respondsToSelector())
      {
        if ((v110 & 0x200000000) != 0)
        {
          v78 = 2;
        }

        else if ((v110 & 0x100000000) != 0)
        {
          v78 = 4;
        }

        else if ((v110 & 0x10) != 0)
        {
          v78 = 3;
        }

        else
        {
          v78 = 1;
        }

        [typeCopy[11] setDeepFusionProcessingMode:v78];
      }

      v51 = 0;
      v22 = 0;
      v50 = 0;
      v100 = 0;
      v101 = 0;
LABEL_203:
      v103 = 0;
LABEL_204:
      [objc_msgSend(typeCopy[27] "input")];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [(BWNRFProcessorRequest *)typeCopy[27] imageType]!= 38)
      {
        v92 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_45_9() "input")];
        if (v92 && (v93 = v92, [OUTLINED_FUNCTION_45_9() inferencesAvailable]))
        {
          v94 = [[BWStillImageSemanticStyle alloc] initWithSemanticStyle:v93];
        }

        else
        {
          v94 = 0;
        }

        v72 = captureSettings;
        [typeCopy[11] setSemanticStyleProperties:v94];
      }

      if ((a2 & 0xFFFFFFFE) != 0xA && v102 && (v110 & 0x1800) != 0x800)
      {
        [v109 fusionMode];
      }

      [OUTLINED_FUNCTION_21_15() setFusionMode:?];
      [OUTLINED_FUNCTION_21_15() setReferenceFrameHasEVMinus:v102];
      OUTLINED_FUNCTION_21_15();
      if (objc_opt_respondsToSelector())
      {
        [OUTLINED_FUNCTION_21_15() setLearnedNREnabled:?];
      }

      OUTLINED_FUNCTION_21_15();
      if (objc_opt_respondsToSelector())
      {
        if (v19)
        {
          [v72 deliverDeferredPhotoProxyImage];
        }

        [OUTLINED_FUNCTION_21_15() setStfAllowed:?];
      }

      [OUTLINED_FUNCTION_21_15() setOutput:v104];
      if (v107)
      {
        [v107 setIsQuadra:{(objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_27_10(), "input"), "captureStreamSettings"), "captureFlags") >> 4) & 1}];
        [typeCopy[8] sensorConfigurationsByPortType];
        [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_27_10() "input")];
        [objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"sensorIDString"")];
        [OUTLINED_FUNCTION_15() setSensorID:?];
        v81 = [OUTLINED_FUNCTION_55_6() prepareToProcess:a2 prepareDescriptor:v107];
        if (v81)
        {
          v31 = v81;
          v113 = 0;
          v112 = OS_LOG_TYPE_DEFAULT;
          v96 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v97 = v113;
          if (os_log_type_enabled(v96, v112))
          {
            v98 = v97;
          }

          else
          {
            v98 = v97 & 0xFFFFFFFE;
          }

          if (v98)
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
            fusionMode = [typeCopy[11] fusionMode];
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", fusionMode];
            BWPhotoEncoderStringFromEncodingScheme(resolutionFlavor);
            OUTLINED_FUNCTION_34_10();
            OUTLINED_FUNCTION_49_5();
            OUTLINED_FUNCTION_11_0();
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        else
        {
          v82 = a2 == 4 || a2 == 2;
          if (v82 && ([objc_msgSend(v109 "captureStreamSettings")] & 0x80000000) != 0)
          {
            if ((v110 & 0x2000) != 0)
            {
              [objc_msgSend(v109 "captureStreamSettings")];
            }

            [OUTLINED_FUNCTION_55_6() setReferenceFrameCandidatesCount:?];
            [OUTLINED_FUNCTION_55_6() referenceFrameCandidatesCount];
            [OUTLINED_FUNCTION_55_6() setMaximumNumberOfReferenceFrameCandidatesToHoldForProcessing:?];
          }

          [OUTLINED_FUNCTION_55_6() setDelegate:typeCopy];
          if (dword_1EB58E0E0)
          {
            v113 = 0;
            v112 = OS_LOG_TYPE_DEFAULT;
            v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v83, v112);
            OUTLINED_FUNCTION_30();
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", a2];
            fusionMode2 = [typeCopy[11] fusionMode];
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", fusionMode2];
            BWPhotoEncoderStringFromEncodingScheme(resolutionFlavor);
            OUTLINED_FUNCTION_34_10();
            OUTLINED_FUNCTION_49_5();
            OUTLINED_FUNCTION_11_0();
            _os_log_send_and_compose_impl();
            v85 = v100;
            v63 = v101;
            v86 = v103;
            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_56_0(v87, v88, v89, v90, v91);
            v31 = 0;
            if (v101)
            {
              goto LABEL_234;
            }

LABEL_235:
            if (!v86)
            {
              goto LABEL_237;
            }

            goto LABEL_236;
          }

          v31 = 0;
        }
      }

      else
      {
        v31 = 4294954516;
      }

      v85 = v100;
      v63 = v101;
      v86 = v103;
      if (!v101)
      {
        goto LABEL_235;
      }

LABEL_234:
      CFRelease(v63);
      goto LABEL_235;
    }
  }

  else
  {
    OUTLINED_FUNCTION_57_6();
    v72 = captureSettings;
    if (a2 != 4)
    {
      goto LABEL_204;
    }

    v107 = [v57 objectForKeyedSubscript:&unk_1F2244038];
    if (v107)
    {
      OUTLINED_FUNCTION_74_2();
      if (v58 == v59 && v48 >= 1)
      {
        [v107 setWidth:v47];
        [v107 setHeight:v48];
      }

      rawNightModeOutputFrame = [OUTLINED_FUNCTION_27_10() rawNightModeOutputFrame];
      OUTLINED_FUNCTION_73_1();
      OUTLINED_FUNCTION_58_9();
      v103 = [v76 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
      if (v103)
      {
        OUTLINED_FUNCTION_73_1();
        OUTLINED_FUNCTION_58_9();
        v50 = [v77 processorController:? newOutputPixelBufferForProcessorInput:? type:? dimensions:?];
        if (!v50)
        {
          v51 = 0;
          v22 = 0;
          v85 = 0;
          v31 = 4294954510;
          v86 = v103;
LABEL_236:
          CFRelease(v86);
LABEL_237:
          if (v85)
          {
            CFRelease(v85);
          }

          goto LABEL_105;
        }

        [rawNightModeOutputFrame setPixelBuffer:v103];
        v100 = v50;
        [rawNightModeOutputFrame setNoiseMapPixelBuffer:v50];
        [rawNightModeOutputFrame setInferenceInputPixelBuffer:cf];
        [MEMORY[0x1E695DF90] dictionary];
        [OUTLINED_FUNCTION_15() setMetadata:?];
        if ([typeCopy[8] greenGhostMitigationVersion] >= 1)
        {
          [objc_msgSend(v109 "processingSettings")];
        }

        v72 = captureSettings;
        [OUTLINED_FUNCTION_21_15() setEnableGreenGhostMitigation:?];
        [OUTLINED_FUNCTION_21_15() enableGreenGhostMitigation];
        input2 = [OUTLINED_FUNCTION_27_10() input];
        [(BWNRFProcessorInput *)input2 adaptiveBracketingParameters];
        v104 = rawNightModeOutputFrame;
        [OUTLINED_FUNCTION_21_15() setProgressiveBracketingParameters:?];
        v51 = 0;
        v22 = 0;
        v50 = 0;
        v101 = 0;
        goto LABEL_204;
      }

LABEL_247:
      v50 = 0;
      v22 = 0;
      v51 = 0;
      v31 = 4294954510;
      goto LABEL_105;
    }
  }

LABEL_104:
  v50 = 0;
  v22 = 0;
  v51 = 0;
  v31 = 4294954516;
LABEL_105:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (v50)
  {
    CFRelease(v50);
  }

  if (v51)
  {
    CFRelease(v51);
  }

  return v31;
}

- (void)inputReceivedProcessedRawErrorRecoveryFrame:(id)frame proxy:(BOOL)proxy
{
  proxyCopy = proxy;
  if ([(BWNRFProcessorRequest *)self->_currentRequest input]== frame)
  {
    currentRequest = self->_currentRequest;
    if (currentRequest)
    {
      v7 = currentRequest->_processErrorRecoveryFrame && !proxyCopy;
      if (v7 || (currentRequest->_processErrorRecoveryProxy ? (v8 = !proxyCopy) : (v8 = 1), !v8))
      {

        [(BWNRFProcessorController *)self _updateStateIfNeeded];
      }
    }
  }
}

- (void)inputReceivedAllFrames:(id)frames
{
  if ([(BWNRFProcessorRequest *)self->_currentRequest input]== frames)
  {

    [(BWNRFProcessorController *)self _updateStateIfNeeded];
  }
}

- (BOOL)finishProcessingCurrentInputNow
{
  OUTLINED_FUNCTION_59_0();
  v14 = v3;
  v15 = v4;
  v6 = *(v5 + 216);
  if (-[BWNRFProcessorInput adaptiveBracketingParameters]([v6 input]))
  {
    -[BWNRFProcessorInput stopAdaptiveBracketingNow]([v6 input]);
    if ([v6 err])
    {
      [v6 deliveredAdaptiveBracketingErrorRecoveryFrame];
    }

    if (dword_1EB58E0E0)
    {
      v8 = OUTLINED_FUNCTION_40_8();
      OUTLINED_FUNCTION_19_3(v8);
      OUTLINED_FUNCTION_4_0();
      if (v2)
      {
        v9 = MEMORY[0x1E696AEC0];
        [v6 err];
        [v6 deliveredAdaptiveBracketingErrorRecoveryFrame];
        [v9 stringWithFormat:@"'%@'. Success:%d (err=%d, deliveredErrorRecoveryFrame:%d)"];
        [objc_msgSend(objc_msgSend(v6 "input")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_5_1(v10, v11, v13, v12, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_1_63();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  OUTLINED_FUNCTION_58_0();
  return result;
}

- (void)_serviceNextRequest
{
  if (result)
  {
    v1 = result;
    v2 = result[27];
    if (v2)
    {
      v2 = v2[8];
    }

    v3 = v2;
    input = [v1[27] input];
    [v1[27] err];

    v1[27] = 0;
    OUTLINED_FUNCTION_46_1();
    [v5 processorController:? didFinishProcessingInput:? err:?];

    result = [v1[26] firstObject];
    v1[27] = result;
    if (result)
    {
      [OUTLINED_FUNCTION_34_0(208) removeObjectAtIndex:?];
      input2 = [v1[27] input];

      return [input2 setDelegate:v1];
    }
  }

  return result;
}

- (id)_prepareDescriptorsByProcessingTypeForResolutionFlavors:(id *)result
{
  if (result)
  {
    v3 = result;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v106 = [a2 containsObject:&unk_1F2244098];
    if (v106)
    {
      v5 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")];
      v6 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")] << 32;
      v7 = v5;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    if ([a2 containsObject:&unk_1F22440B0])
    {
      if ([objc_msgSend(objc_msgSend(v3[27] "input")])
      {
        v8 = [objc_msgSend(objc_msgSend(v3[27] "input")];
        v9 = +[FigCaptureCameraParameters sharedInstance];
        if (v8)
        {
          softISPCropDimensionsForOptimizedLearnedFusionForSuperwide = [(FigCaptureCameraParameters *)v9 softISPCropDimensionsForOptimizedLearnedFusionForSuperwide];
        }

        else
        {
          softISPCropDimensionsForOptimizedLearnedFusionForSuperwide = [(FigCaptureCameraParameters *)v9 nrfProcessingDimensionsForOptimizedLearnedFusionForSuperwide];
        }
      }

      else
      {
        v11 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
        softISPCropDimensionsForOptimizedLearnedFusionForSuperwide = FigCaptureDimensionsFromDictionaryRepresentation(v11);
      }

      v113 = softISPCropDimensionsForOptimizedLearnedFusionForSuperwide;
    }

    else
    {
      v113 = 0;
    }

    v12 = [a2 containsObject:&unk_1F22440C8];
    if (v12)
    {
      v13 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      v115 = FigCaptureDimensionsFromDictionaryRepresentation(v13);
    }

    else
    {
      v115 = 0;
    }

    v14 = [a2 containsObject:&unk_1F22440E0];
    if (v14)
    {
      v15 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      FigCaptureDimensionsFromDictionaryRepresentation(v15);
    }

    v16 = [a2 containsObject:&unk_1F22440F8];
    if (v16)
    {
      v17 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      FigCaptureDimensionsFromDictionaryRepresentation(v17);
    }

    v111 = dictionary;
    if ([a2 containsObject:&unk_1F2244110])
    {
      v18 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      v19 = FigCaptureDimensionsFromDictionaryRepresentation(v18);
      v20 = v19 & 0xFFFFFFFF00000000;
      v21 = v19;
    }

    else
    {
      v20 = 0;
      v21 = 0;
    }

    if ([a2 containsObject:&unk_1F2244068])
    {
      v22 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "dimensionsByResolutionFlavor")];
      v23 = FigCaptureDimensionsFromDictionaryRepresentation(v22);
      v112 = v23 & 0xFFFFFFFF00000000;
      v114 = v23;
    }

    else
    {
      v112 = 0;
      v114 = 0;
    }

    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v24 = v7 | v6;
    if (v7 >= 1 && SHIDWORD(v6) >= 1)
    {
      v26 = FigCaptureDictionaryRepresentationForDimensions(v7 | v6);
      OUTLINED_FUNCTION_64_5(v26);
      v27 = FigCaptureDictionaryRepresentationForDimensions(v7 | v6);
      OUTLINED_FUNCTION_90_2(v27);
    }

    v28 = v113 < 1 || SHIDWORD(v113) < 1;
    v29 = v28;
    v110 = v29;
    if (!v28 && v24 != v113)
    {
      v30 = FigCaptureDictionaryRepresentationForDimensions(v113);
      OUTLINED_FUNCTION_64_5(v30);
      v31 = FigCaptureDictionaryRepresentationForDimensions(v113);
      OUTLINED_FUNCTION_90_2(v31);
    }

    v109 = v12 | v14 | v16;
    if (v109 == 1)
    {
      OUTLINED_FUNCTION_7_35();
      OUTLINED_FUNCTION_7_35();
      v40 = v37 != v38 || v24 == v34;
      if (v36 <= v33)
      {
        v41 = v33;
      }

      else
      {
        v41 = v36;
      }

      if (v35 <= v32)
      {
        v35 = v32;
      }

      if (v40)
      {
        v32 = v32;
      }

      else
      {
        v32 = v35;
      }

      if (v40)
      {
        v33 = v33;
      }

      else
      {
        v33 = v41;
      }

      v42 = v33 | (v32 << 32);
      v43 = FigCaptureDictionaryRepresentationForDimensions(v42);
      OUTLINED_FUNCTION_64_5(v43);
      v44 = FigCaptureDictionaryRepresentationForDimensions(v42);
      OUTLINED_FUNCTION_90_2(v44);
    }

    v45 = v21 | v20;
    v47 = v21 < 1 || SHIDWORD(v20) < 1 || v24 == v45;
    v48 = v47;
    v108 = v48;
    if (!v47)
    {
      v49 = FigCaptureDictionaryRepresentationForDimensions(v21 | v20);
      OUTLINED_FUNCTION_64_5(v49);
      v50 = FigCaptureDictionaryRepresentationForDimensions(v21 | v20);
      OUTLINED_FUNCTION_90_2(v50);
    }

    v51 = v114 < 1 || SHIDWORD(v112) < 1;
    v52 = v51;
    v107 = v52;
    if (!v51)
    {
      v53 = FigCaptureDictionaryRepresentationForDimensions(v114 | v112);
      OUTLINED_FUNCTION_64_5(v53);
    }

    v54 = NSClassFromString(&cfstr_Nrfpreparedesc.isa);
    v55 = objc_alloc_init(v54);
    v56 = FigCaptureLargestDimensionsFromDimensionsArray(array);
    v57 = HIDWORD(v56);
    [v55 setWidth:{v56, v115}];
    [v55 setHeight:v57];
    v58 = off_1E7989000;
    [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
    [OUTLINED_FUNCTION_17() setMemoryPoolId:?];
    [objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")];
    [OUTLINED_FUNCTION_17() setPixelFormat:?];
    [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
    [OUTLINED_FUNCTION_17() setAllowModifyingInputBuffers:?];
    OUTLINED_FUNCTION_61_4();
    if ([OUTLINED_FUNCTION_14_18() swfrEnabled])
    {
      OUTLINED_FUNCTION_61_4();
    }

    if ([OUTLINED_FUNCTION_14_18() rawNightModeEnabled])
    {
      OUTLINED_FUNCTION_61_4();
    }

    if ([OUTLINED_FUNCTION_14_18() learnedNRMode] && objc_msgSend(OUTLINED_FUNCTION_14_18(), "learnedNRInputFormat"))
    {
      v59 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedNRInputFormat")];
      v60 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedNRInputFormat")];
      array3 = [MEMORY[0x1E695DF70] array];
      if (v59 >= 1 && v60 >= 1)
      {
        FigCaptureDictionaryRepresentationForDimensions(v59 & 0x7FFFFFFF | (v60 << 32));
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ((v110 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v113);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      learnedNRMode = [OUTLINED_FUNCTION_14_18() learnedNRMode];
      v64 = v107;
      if ((learnedNRMode & 4) == 0)
      {
        v64 = 1;
      }

      if ((v64 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v114 | v112);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if (v109)
      {
        OUTLINED_FUNCTION_48_9();
        OUTLINED_FUNCTION_7_35();
        OUTLINED_FUNCTION_7_35();
        v71 = v37 != v38 || v24 == v67;
        if (v69 <= v66)
        {
          v72 = v66;
        }

        else
        {
          v72 = v69;
        }

        if (v68 <= v65)
        {
          v68 = v65;
        }

        if (v71)
        {
          v65 = v65;
        }

        else
        {
          v65 = v68;
        }

        if (v71)
        {
          v66 = v66;
        }

        else
        {
          v66 = v72;
        }

        FigCaptureDictionaryRepresentationForDimensions(v66 | (v65 << 32));
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ((v108 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v45);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      v73 = objc_alloc_init(v54);
      v74 = FigCaptureLargestDimensionsFromDimensionsArray(array3);
      [v73 setWidth:v74];
      [v73 setHeight:HIDWORD(v74)];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedNRInputFormat")];
      [OUTLINED_FUNCTION_36() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_36() setAllowModifyingInputBuffers:?];
      [v111 setObject:v73 forKeyedSubscript:&unk_1F2244170];
      v58 = off_1E7989000;
      if (([OUTLINED_FUNCTION_14_18() learnedNRMode] & 0x10) != 0)
      {
        v75 = objc_alloc_init(v54);
        [v75 setWidth:v74];
        [v75 setHeight:HIDWORD(v74)];
        [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedNRInputFormat")];
        [OUTLINED_FUNCTION_36() setPixelFormat:?];
        [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
        [OUTLINED_FUNCTION_36() setAllowModifyingInputBuffers:?];
        v76 = v75;
        v58 = off_1E7989000;
        [v111 setObject:v76 forKeyedSubscript:&unk_1F2244188];
      }
    }

    if (([OUTLINED_FUNCTION_14_18() unifiedBracketingFusionEnabled] & 1) != 0 || objc_msgSend(OUTLINED_FUNCTION_14_18(), "lowLightFusionEnabled"))
    {
      v77 = objc_alloc_init(v54);
      v78 = FigCaptureLargestDimensionsFromDimensionsArray(array2);
      v79 = HIDWORD(v78);
      [v77 setWidth:v78];
      [v77 setHeight:v79];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "inputFormat")];
      [OUTLINED_FUNCTION_17() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_17() setAllowModifyingInputBuffers:?];
      [-[__objc2_class sharedMemoryPool](v58[33] "sharedMemoryPool")];
      [OUTLINED_FUNCTION_17() setMemoryPoolId:?];
      if ([OUTLINED_FUNCTION_14_18() unifiedBracketingFusionEnabled])
      {
        OUTLINED_FUNCTION_61_4();
      }

      if ([OUTLINED_FUNCTION_14_18() lowLightFusionEnabled])
      {
        OUTLINED_FUNCTION_61_4();
      }
    }

    if ([OUTLINED_FUNCTION_14_18() rawNightModeEnabled])
    {
      v80 = v54;
      if (v106)
      {
        v81 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "rawNightModeInputFormat")];
        v82 = [objc_msgSend(OUTLINED_FUNCTION_14_18() "rawNightModeInputFormat")] << 32;
        v83 = v81;
      }

      else
      {
        v83 = 0;
        v82 = 0;
      }

      [MEMORY[0x1E695DF70] array];
      array4 = [MEMORY[0x1E695DF70] array];
      if (v83 >= 1 && SHIDWORD(v82) >= 1)
      {
        FigCaptureDictionaryRepresentationForDimensions(v82 | v83);
        [OUTLINED_FUNCTION_37_0() addObject:?];
        FigCaptureDictionaryRepresentationForDimensions(v82 | v83);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ((v110 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v113);
        [OUTLINED_FUNCTION_37_0() addObject:?];
        FigCaptureDictionaryRepresentationForDimensions(v113);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if (v109)
      {
        OUTLINED_FUNCTION_48_9();
        OUTLINED_FUNCTION_7_35();
        OUTLINED_FUNCTION_7_35();
        v92 = v37 != v38 || v24 == v88;
        if (v90 <= v86)
        {
          v93 = v86;
        }

        else
        {
          v93 = v90;
        }

        if (v89 <= v87)
        {
          v89 = v87;
        }

        if (v92)
        {
          v86 = v86;
        }

        else
        {
          v86 = v93;
        }

        if (v92)
        {
          v87 = v87;
        }

        else
        {
          v87 = v89;
        }

        v94 = v86 | (v87 << 32);
        v95 = FigCaptureDictionaryRepresentationForDimensions(v94);
        OUTLINED_FUNCTION_64_5(v95);
        FigCaptureDictionaryRepresentationForDimensions(v94);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      if ((v108 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v45);
        [OUTLINED_FUNCTION_37_0() addObject:?];
        FigCaptureDictionaryRepresentationForDimensions(v45);
        [OUTLINED_FUNCTION_17() addObject:?];
      }

      v54 = v80;
      if ((v107 & 1) == 0)
      {
        FigCaptureDictionaryRepresentationForDimensions(v114 | v112);
        [OUTLINED_FUNCTION_37_0() addObject:?];
      }

      v96 = objc_alloc_init(v80);
      v97 = FigCaptureLargestDimensionsFromDimensionsArray(array4);
      v98 = HIDWORD(v97);
      [v96 setWidth:v97];
      [v96 setHeight:v98];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "rawNightModeInputFormat")];
      [OUTLINED_FUNCTION_8() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_8() setAllowModifyingInputBuffers:?];
      [v111 setObject:v96 forKeyedSubscript:&unk_1F2244038];
    }

    if ([OUTLINED_FUNCTION_14_18() deepFusionEnabled] && ((v99 = objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_14_18(), "deepFusionInputFormat"), "pixelFormat"), (FigCapturePixelFormatIs420(v99) & 1) != 0) || (objc_msgSend(OUTLINED_FUNCTION_14_18(), "deferredCaptureSupportEnabled") & 1) != 0) || objc_msgSend(OUTLINED_FUNCTION_14_18(), "learnedFusionEnabled") && objc_msgSend(OUTLINED_FUNCTION_14_18(), "deferredCaptureSupportEnabled"))
    {
      v100 = objc_alloc_init(v54);
      v101 = FigCaptureLargestDimensionsFromDimensionsArray(array2);
      v102 = HIDWORD(v101);
      [v100 setWidth:v101];
      [v100 setHeight:v102];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "deepFusionInputFormat")];
      [OUTLINED_FUNCTION_17() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_17() setAllowModifyingInputBuffers:?];
      [OUTLINED_FUNCTION_14_18() cmiResourceEnabled];
      [OUTLINED_FUNCTION_17() setCmiResourceEnabled:?];
      if ([OUTLINED_FUNCTION_14_18() deepFusionEnabled])
      {
        OUTLINED_FUNCTION_61_4();
      }

      if ([OUTLINED_FUNCTION_14_18() learnedFusionEnabled] && objc_msgSend(OUTLINED_FUNCTION_14_18(), "deferredCaptureSupportEnabled"))
      {
        OUTLINED_FUNCTION_61_4();
      }
    }

    if ([OUTLINED_FUNCTION_14_18() learnedFusionEnabled] && (objc_msgSend(OUTLINED_FUNCTION_14_18(), "deferredCaptureSupportEnabled") & 1) == 0)
    {
      v103 = FigCaptureLargestDimensionsFromDimensionsArray(array2);
      v104 = objc_alloc_init(v54);
      [v104 setWidth:v103];
      [v104 setHeight:HIDWORD(v103)];
      [objc_msgSend(OUTLINED_FUNCTION_14_18() "learnedFusionInputFormat")];
      [OUTLINED_FUNCTION_7() setPixelFormat:?];
      [OUTLINED_FUNCTION_14_18() alwaysAllowModifyingInputBuffers];
      [OUTLINED_FUNCTION_7() setAllowModifyingInputBuffers:?];
      [OUTLINED_FUNCTION_14_18() cmiResourceEnabled];
      [OUTLINED_FUNCTION_7() setCmiResourceEnabled:?];
      [v111 setObject:v104 forKeyedSubscript:&unk_1F2244200];
    }

    v105 = [v111 copy];

    return v105;
  }

  return result;
}

- (id)_prepareProcessor
{
  if (result)
  {
    v1 = result;
    if (![objc_msgSend(objc_msgSend(result[27] "input")])
    {
      goto LABEL_10;
    }

    input = [v1[27] input];
    if (input)
    {
      input = input[7];
    }

    result = [input count];
    if (result || (v3 = v1[27]) != 0 && ((v3[48] & 1) != 0 || v3[49] == 1))
    {
LABEL_10:
      processingType = [(BWNRFProcessorRequest *)v1[27] processingType];
      v5 = [(BWNRFProcessorController *)v1 _prepareProcessorForProcessingType:processingType];
      if (v5)
      {
        [v1[27] setErr:v5];
        [OUTLINED_FUNCTION_34_0(88) setOutput:?];
        v14 = v1[11];

        return [v14 resetState];
      }

      else
      {
        for (i = 0; ; ++i)
        {
          input2 = [v1[27] input];
          if (input2)
          {
            input2 = input2[7];
          }

          result = [input2 count];
          if (result <= i)
          {
            break;
          }

          input3 = [v1[27] input];
          if (input3)
          {
            input3 = input3[7];
          }

          BWStillImageCaptureFrameFlagsForSampleBuffer([input3 objectAtIndexedSubscript:i]);
          v9 = OUTLINED_FUNCTION_75_2();
          nrfp_addFrame_0(v9, v10, v11, v12, v13);
        }
      }
    }
  }

  return result;
}

- (void)_processSingleImage
{
  if (!self)
  {
    return;
  }

  v64 = 0;
  v3 = OUTLINED_FUNCTION_29_7(self);
  if (!v3)
  {
    goto LABEL_6;
  }

  if (*(v3 + 48) != 1)
  {
    if (*(v3 + 56) >= 1)
    {
      clientBracketFrame = [(BWNRFProcessorRequest *)v3 clientBracketFrame];
      goto LABEL_9;
    }

LABEL_6:
    input = [v3 input];
    if (input)
    {
      input = input[7];
    }

    clientBracketFrame = [input firstObject];
    goto LABEL_9;
  }

  clientBracketFrame = [objc_msgSend(v3 "input")];
LABEL_9:
  v6 = clientBracketFrame;
  v7 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_13_21() "input")];
  v8 = *(self + *(v1 + 3324));
  if ((!v8 || (*(v8 + 48) & 1) == 0) && (v7 & 0x20000000000) != 0 && (v9 = CMGetAttachment(v6, *off_1E798A3C8, 0), [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}]) && (v10 = *off_1E798B528, v11 = objc_msgSend(v9, "objectForKeyedSubscript:", *off_1E798B528), objc_msgSend(objc_msgSend(v9, "objectForKeyedSubscript:", *off_1E798B2A8), "doubleValue"), v13 = v12, FigCaptureMetadataUtilitiesHasFlicker(objc_msgSend(v9, "objectForKeyedSubscript:", v10), v13)))
  {
    [OUTLINED_FUNCTION_13_21() setErr:4294893857];
    [objc_msgSend(objc_msgSend(objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B960), "firstObject"), "objectForKeyedSubscript:", *off_1E798B958), "doubleValue"}];
    if (dword_1EB58E0E0)
    {
      OUTLINED_FUNCTION_58_3();
      v14 = OUTLINED_FUNCTION_54_0(qword_1EB58E0D8);
      if (os_log_type_enabled(v14, BYTE3(v63)))
      {
        v15 = HIDWORD(v63);
      }

      else
      {
        v15 = HIDWORD(v63) & 0xFFFFFFFE;
      }

      if (v15)
      {
        OUTLINED_FUNCTION_2_1();
        OUTLINED_FUNCTION_5_0(v16, v17, &v45 + 3, v18, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_70();
    [(BWNRFProcessorController *)v19 _singleImageProcessSampleBuffer:v20 sampleBufferOut:v21, v22, v23, v24, v25, v26, v38, v39, v40, v41, v42, SHIDWORD(v42), v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76];
    [OUTLINED_FUNCTION_13_21() setErr:?];
    [OUTLINED_FUNCTION_13_21() err];
  }

  v27 = [OUTLINED_FUNCTION_13_21() err];
  v28 = *(self + *(v1 + 3324));
  if (v27 && (!v28 || (v28[48] & 1) == 0) && (v7 & 0x20000000000) != 0)
  {
    [objc_msgSend(v28 "output")];
    OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v33, v34, v35, v36);
    v37 = OUTLINED_FUNCTION_3_30();
    [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v37];
  }

  else if (!v28 || (v28[52] & 1) == 0)
  {
    [(BWNRFProcessorRequest *)v28 imageType];
    [OUTLINED_FUNCTION_13_21() input];
    [OUTLINED_FUNCTION_13_21() err];
    [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    v29 = *(self + *(v1 + 3324));
    if (v29)
    {
      if (*(v29 + 48) == 1 && (v7 & 4) != 0)
      {
        v30 = CMGetAttachment(v64, *off_1E798A3C8, 0);
        if ([v30 objectForKeyedSubscript:@"UBDeepFusionFusionFailure"])
        {
          [objc_msgSend(v30 objectForKeyedSubscript:{@"UBDeepFusionFusionFailure", "intValue"}];
          v31 = OUTLINED_FUNCTION_13_21();
        }

        else
        {
          v31 = OUTLINED_FUNCTION_13_21();
          v32 = 4294950489;
        }

        [v31 setErr:v32];
      }
    }
  }

  if (v64)
  {
    CFRelease(v64);
  }
}

- (void)_singleImageProcessSampleBuffer:(int)buffer sampleBufferOut:(int)out
{
  OUTLINED_FUNCTION_59_0();
  a47 = v49;
  a48 = v53;
  if (v50)
  {
    v54 = v51;
    if (v51)
    {
      v55 = v52;
      v56 = v50;
      if (dword_1EB58E0E0)
      {
        HIDWORD(a36) = 0;
        BYTE3(a36) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(a36));
        OUTLINED_FUNCTION_30();
        if (v48)
        {
          v59 = BWStillImageSampleBufferToDisplayString(v54, v58);
          [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "input")];
          a13 = 136315651;
          OUTLINED_FUNCTION_20();
          *(&a15 + 6) = v59;
          OUTLINED_FUNCTION_0_51();
          OUTLINED_FUNCTION_11_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0(v60, v61, v62, v63, v64);
      }

      ImageBuffer = CMSampleBufferGetImageBuffer(v54);
      v66 = CVBufferCopyAttachment(ImageBuffer, *off_1E798A0B8, 0);
      v67 = *(v56 + 88);
      if (v66)
      {
        v68 = [v67 addInputResource:v66];
        v69 = OUTLINED_FUNCTION_39_9();
        CVBufferRemoveAttachment(v69, v70);

        if (v68)
        {
          goto LABEL_43;
        }
      }

      else if ([v67 addFrame:v54])
      {
        goto LABEL_43;
      }

      if (![*(v56 + 88) process])
      {
        v71 = [objc_msgSend(*(v56 + 88) "output")];
        v72 = OUTLINED_FUNCTION_15_16();
        processingType = [(BWNRFProcessorRequest *)v72 processingType];
        [(BWNRFProcessorController *)v56 _logCompletionStatus:v71 processingType:processingType request:*(v56 + 216)];
        v74 = OUTLINED_FUNCTION_15_16();
        if (!v74 || (v74[52] & 1) == 0)
        {
          if (([objc_msgSend(objc_msgSend(v74 "input")] & 0x60000000000) != 0)
          {
            if ((BWStillImageCaptureFrameFlagsForSampleBuffer(v54) & 4) != 0)
            {
              v75 = 2;
            }

            else
            {
              v75 = 1;
            }

            v76 = OUTLINED_FUNCTION_15_16();
            if (v76)
            {
              v77 = v76[8];
            }

            else
            {
              v77 = 0;
            }

            [v77 processorController:v56 didSelectFusionMode:v75 processorInput:{objc_msgSend(v76, "input")}];
          }

          target = 0;
          v78 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
          if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(v54, v78, (v56 + 168), &target))
          {
            if (![objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "output")])
            {
              [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
            }

            v79 = *off_1E798A3C8;
            v80 = [CMGetAttachment(target *off_1E798A3C8];
            [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
            [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
            CMSetAttachment(target, v79, v80, 1u);

            v81 = OUTLINED_FUNCTION_15_16();
            if ([(BWNRFProcessorRequest *)v81 imageType]== 29)
            {
              BWStillImageSetProcessingFlagsForSampleBuffer(target, 4096);
              [OUTLINED_FUNCTION_15_16() setDeliveredDeferredProxyImage:1];
            }

            else
            {
              v88 = OUTLINED_FUNCTION_15_16();
              if ([(BWNRFProcessorRequest *)v88 imageType]== 38)
              {
                v89 = target;
                v90 = BWStillImageProcessingFlagsForSampleBuffer(target);
                BWStillImageSetProcessingFlagsForSampleBuffer(v89, v90 | 0x100000);
              }
            }

            v82 = OUTLINED_FUNCTION_15_16();
            if (v82 && v82[48] == 1)
            {
              BWStillImageSetProcessingFlagsForSampleBuffer(target, 1024);
              if (!target || ![objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "input")] && (!objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16(), "input"), "captureSettings"), "deliverDeferredPhotoProxyImage") || (objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16(), "input"), "captureSettings"), "captureFlags") & 0x100000) == 0))
              {
                goto LABEL_35;
              }

              v83 = target;
              v84 = 0x8000000;
            }

            else
            {
              if (([objc_msgSend(objc_msgSend(v82 "input")] & 0x80) == 0)
              {
                goto LABEL_35;
              }

              CMSetAttachment(target, @"SDOFCustomRendered", &unk_1F2244050, 1u);
              if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "input")] & 0x260000000000) == 0)
              {
                goto LABEL_35;
              }

              v83 = target;
              v84 = 2;
            }

            BWStillImageSetProcessingFlagsForSampleBuffer(v83, v84);
LABEL_35:
            if ([objc_msgSend(OUTLINED_FUNCTION_15_16() "output")])
            {
              [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              [OUTLINED_FUNCTION_15_16() input];
              OUTLINED_FUNCTION_52_0();
              v91 = OUTLINED_FUNCTION_53_1();
              OUTLINED_FUNCTION_64_1(v91, v92, v93);
              [(BWNRFProcessorController *)v56 _generateGainMapMetadata:?];
              v94 = target;
              v95 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              OUTLINED_FUNCTION_66_2(v94, 0x1F217BF50, v95, (v56 + 200));
            }

            if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_15_16() "input")])
            {
              v96 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              v97 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              v98 = target;
              demosaicedRawErr = [OUTLINED_FUNCTION_15_16() demosaicedRawErr];
              [(BWNRFProcessorController *)v56 _propagateDemosaicedRawPixelBuffer:v96 demosaicedRawMetadata:v97 outputSampleBuffer:v98 error:demosaicedRawErr];
            }

            if ([OUTLINED_FUNCTION_15_16() processSmartStyleRenderingInput])
            {
              v85 = target;
              v86 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              v87 = [objc_msgSend(OUTLINED_FUNCTION_15_16() "output")];
              OUTLINED_FUNCTION_67_3(v85, 0x1F21AAF50, v86, (v56 + 192), v87);
            }

            if (v55)
            {
              *v55 = target;
            }
          }
        }
      }
    }
  }

LABEL_43:
  OUTLINED_FUNCTION_58_0();
}

- (void)_processLearnedHRNR
{
  if (self)
  {
    v42 = 0;
    [OUTLINED_FUNCTION_29_7(self) output];
    OUTLINED_FUNCTION_80_1();
    if (v5)
    {
      v6 = OUTLINED_FUNCTION_52_8();
      OUTLINED_FUNCTION_65_4(v6);
      OUTLINED_FUNCTION_4_0();
      if (v2)
      {
        [objc_msgSend(OUTLINED_FUNCTION_44_8() "settings")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_1_63();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if ([OUTLINED_FUNCTION_13_21() err])
    {
      metadata = [v1 metadata];
      if (!metadata)
      {
        metadata = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [OUTLINED_FUNCTION_13_21() err];
      [metadata setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), @"LearnedHRNRAddFrameFailure"}];
    }

    else
    {
      [*(self + 88) process];
      [OUTLINED_FUNCTION_13_21() setErr:?];
      metadata = [v1 metadata];
      if (![OUTLINED_FUNCTION_13_21() err])
      {
        completionStatus = [v1 completionStatus];
        v9 = OUTLINED_FUNCTION_13_21();
        [(BWNRFProcessorRequest *)v9 processingType];
        v10 = OUTLINED_FUNCTION_46_8();
        [(BWNRFProcessorController *)v10 _logCompletionStatus:completionStatus processingType:v11 request:v12];
        v13 = [objc_msgSend(OUTLINED_FUNCTION_13_21() "input")];
        BWCMSampleBufferCreateCopyWithNewPixelBuffer(v13, [v1 pixelBuffer], (self + 168), &v42);
        [OUTLINED_FUNCTION_13_21() setErr:?];
        if (![OUTLINED_FUNCTION_13_21() err])
        {
          v14 = CMGetAttachment(v42, *off_1E798A3C8, 0);
          [v14 addEntriesFromDictionary:metadata];
          if (![v14 objectForKeyedSubscript:@"UB"])
          {
            [v14 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionary"), @"UB"}];
          }

          CMSetAttachment(v42, @"SDOFCustomRendered", &unk_1F2244050, 1u);
          if ([objc_msgSend(OUTLINED_FUNCTION_13_21() "output")])
          {
            LODWORD(v2) = [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            OUTLINED_FUNCTION_91_3();
            v15 = OUTLINED_FUNCTION_17_16();
            BWSampleBufferSetAttachedMediaFromPixelBuffer(v15, v16, v17, v18, v19, v20, 1);
          }

          if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_13_21() "input")])
          {
            [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            v2 = v42;
            [OUTLINED_FUNCTION_13_21() demosaicedRawErr];
            v21 = OUTLINED_FUNCTION_51_0();
            [(BWNRFProcessorController *)v21 _propagateDemosaicedRawPixelBuffer:v22 demosaicedRawMetadata:v23 outputSampleBuffer:v2 error:v24];
          }

          if ([OUTLINED_FUNCTION_13_21() processSmartStyleRenderingInput])
          {
            LODWORD(v2) = [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_13_21() "output")];
            v25 = OUTLINED_FUNCTION_17_16();
            BWSampleBufferSetAttachedMediaFromPixelBuffer(v25, v26, v27, v28, v29, v30, 0);
          }

          BWStillImageSetProcessingFlagsForSampleBuffer(v42, 2);
          if (*(v3 + 224))
          {
            v31 = OUTLINED_FUNCTION_52_8();
            OUTLINED_FUNCTION_65_4(v31);
            OUTLINED_FUNCTION_4_0();
            if (v2)
            {
              [objc_msgSend(OUTLINED_FUNCTION_44_8() "settings")];
              OUTLINED_FUNCTION_20();
              OUTLINED_FUNCTION_0_51();
              OUTLINED_FUNCTION_5_1(v32, v33, v41, v34, &dword_1AC90E000);
            }

            OUTLINED_FUNCTION_1_63();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v35 = OUTLINED_FUNCTION_13_21();
          [(BWNRFProcessorRequest *)v35 imageType];
          [OUTLINED_FUNCTION_13_21() input];
          [OUTLINED_FUNCTION_13_21() err];
          [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
        }
      }
    }

    if ([OUTLINED_FUNCTION_13_21() err])
    {
      OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v36, v37, v38, v39);
      v40 = OUTLINED_FUNCTION_3_30();
      [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v40];
    }

    if (v42)
    {
      CFRelease(v42);
    }
  }
}

- (void)_logCompletionStatus:(int)status processingType:(void *)type request:
{
  if (self)
  {
    if (a2)
    {
      v7 = [[BWNRFProcessorCompletionStatus alloc] initWithCompletionStatus:a2];
      v8 = [objc_msgSend(objc_msgSend(type "input")];
      v9 = [type description];
      v10 = *(self + 160);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __72__BWNRFProcessorController__logCompletionStatus_processingType_request___block_invoke;
      v11[3] = &unk_1E7990030;
      statusCopy = status;
      v11[4] = v7;
      v11[5] = v9;
      v11[6] = v8;
      dispatch_async(v10, v11);
    }
  }
}

- (void)_generateGainMapMetadata:(uint64_t)metadata
{
  if (!metadata)
  {
    return 0;
  }

  v3 = *(metadata + 216);
  if (!a2)
  {
    [v3 output];
    if ((objc_opt_respondsToSelector() & 1) != 0 && [objc_msgSend(OUTLINED_FUNCTION_72_2() "output")])
    {
      output = [OUTLINED_FUNCTION_72_2() output];
      goto LABEL_9;
    }

LABEL_10:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    goto LABEL_11;
  }

  [v3 deepFusionOutput];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ![objc_msgSend(OUTLINED_FUNCTION_72_2() "deepFusionOutput")])
  {
    goto LABEL_10;
  }

  output = [OUTLINED_FUNCTION_72_2() deepFusionOutput];
LABEL_9:
  dictionary = [output gainMapOutputMetadata];
LABEL_11:
  v6 = dictionary;
  [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters gainMapVersion];
  [v6 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), *off_1E798A688}];
  v7 = MEMORY[0x1E696AD98];
  [*(metadata + 64) gainMapMainImageDownscalingFactor];
  [v6 setObject:objc_msgSend(v7 forKeyedSubscript:{"numberWithFloat:"), *off_1E798A788}];
  return v6;
}

- (void)_propagateDemosaicedRawPixelBuffer:(void *)buffer demosaicedRawMetadata:(void *)target outputSampleBuffer:(int)sampleBuffer error:
{
  if (self)
  {
    v6 = 0;
    targeta = 0;
    if (!a2 || sampleBuffer)
    {
      goto LABEL_15;
    }

    v10 = *off_1E798A3C8;
    v11 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v6 = [v11 mutableCopy];
    if ([buffer count])
    {
      [v6 addEntriesFromDictionary:buffer];
    }

    if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(target, a2, (self + 184), &targeta))
    {
      goto LABEL_15;
    }

    BWStillImageSetProcessingFlagsForSampleBuffer(targeta, 0x10000);
    v12 = CMGetAttachment(targeta, @"RawDNGDictionary", 0);
    if (v12)
    {
      v13 = v12;
      Width = CVPixelBufferGetWidth(a2);
      Height = CVPixelBufferGetHeight(a2);
      v16 = BWCreateDNGDictionaryWithUpdatedToneCurvesIfNeeded(v13, Width | (Height << 32), v6);
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = [v11 objectForKeyedSubscript:*off_1E798B540];
      v18 = [objc_msgSend(*(self + 64) "rawColorCalibrationsByPortType")];
      if (!v18)
      {
        goto LABEL_15;
      }

      v19 = v18;
      v20 = [objc_msgSend(objc_msgSend(*(self + 64) "sensorConfigurationsByPortType")];
      if (!v20)
      {
        goto LABEL_15;
      }

      v21 = v20;
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      v23 = [objc_msgSend(objc_msgSend(*(self + 216) "input")];
      v24 = v23 / [objc_msgSend(objc_msgSend(*(self + 216) "input")];
      v25 = CVPixelBufferGetWidth(a2);
      v26 = CVPixelBufferGetHeight(a2);
      v16 = BWCreateDemosaicedRawDNGDictionary(v25 | (v26 << 32), PixelFormatType, v6, v19, v21, v24);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v27 = v16;
    CMSetAttachment(targeta, @"RawDNGDictionary", v16, 1u);

LABEL_14:
    [v6 setObject:&unk_1F224A830 forKeyedSubscript:*off_1E798A788];
    CMSetAttachment(targeta, v10, v6, 1u);
    BWSampleBufferSetAttachedMedia(target, 0x1F21AAE10, targeta);
LABEL_15:

    if (targeta)
    {
      CFRelease(targeta);
    }
  }
}

- (void)_processUBFusion
{
  if (!self)
  {
    return;
  }

  v123 = 0;
  output = [*(self + 216) output];
  if (dword_1EB58E0E0)
  {
    v5 = OUTLINED_FUNCTION_25_9();
    OUTLINED_FUNCTION_63_5(v5);
    OUTLINED_FUNCTION_4_0();
    if (v1)
    {
      [objc_msgSend(OUTLINED_FUNCTION_62_4() "settings")];
      LODWORD(v121.value) = 136315651;
      *(&v121.value + 4) = "[BWNRFProcessorController _processUBFusion]";
      LOWORD(v121.flags) = 2113;
      *(&v121.flags + 2) = v2;
      OUTLINED_FUNCTION_38_9();
      OUTLINED_FUNCTION_13();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_1_63();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([OUTLINED_FUNCTION_12_27() err])
  {
    metadata = [output metadata];
    if (!metadata)
    {
      metadata = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [OUTLINED_FUNCTION_12_27() err];
    [metadata setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), @"UBAddFrameFailure"}];
    goto LABEL_57;
  }

  [*(self + 88) process];
  [OUTLINED_FUNCTION_12_27() setErr:?];
  metadata = [output metadata];
  if (![OUTLINED_FUNCTION_12_27() err])
  {
    completionStatus = [output completionStatus];
    v8 = OUTLINED_FUNCTION_12_27();
    [(BWNRFProcessorRequest *)v8 processingType];
    v9 = OUTLINED_FUNCTION_46_8();
    [(BWNRFProcessorController *)v9 _logCompletionStatus:completionStatus processingType:v10 request:v11];
    v12 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
    BWCMSampleBufferCreateCopyWithNewPixelBuffer(v12, [output pixelBuffer], (self + 168), &v123);
    [OUTLINED_FUNCTION_12_27() setErr:?];
    if (![OUTLINED_FUNCTION_12_27() err])
    {
      v90 = metadata;
      if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")] & 0x800) == 0)
      {
LABEL_27:
        if ([objc_msgSend(OUTLINED_FUNCTION_12_27() "output")])
        {
          v40 = OUTLINED_FUNCTION_91_3();
          [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          v41 = OUTLINED_FUNCTION_39_9();
          BWSampleBufferSetAttachedMediaFromPixelBuffer(v41, v42, v43, v44, v40, 0, 1);
        }

        metadata = v90;
        if ([output fusionMode] == 2 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v45 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
          memset(&v122, 0, sizeof(v122));
          CMSampleBufferGetPresentationTimeStamp(&v122, v45);
          array = [MEMORY[0x1E695DF70] array];
          for (i = 0; i != 3; ++i)
          {
            for (j = 0; j != 3; ++j)
            {
              v49 = MEMORY[0x1E696AD98];
              [output refFrameTransform];
              OUTLINED_FUNCTION_49_0(v50, v51);
              v93 = *&v52;
              v95 = v53;
              LODWORD(v98) = v54;
              v97 = v55;
              LODWORD(v52) = *((&v93 + 2 * i) & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
              [v49 numberWithFloat:v52];
              [OUTLINED_FUNCTION_7() addObject:?];
            }
          }

          v56 = OUTLINED_FUNCTION_12_27();
          if (v56)
          {
            v57 = v56[8];
          }

          else
          {
            v57 = 0;
          }

          metadata = v90;
          input = [v56 input];
          v121 = v122;
          [v57 processorController:self didSelectNewReferenceFrameWithPTS:&v121 transform:array processorInput:input];
        }

        CMSetAttachment(v123, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
        v59 = CMGetAttachment(v123, *off_1E798A3C8, 0);
        if ([OUTLINED_FUNCTION_12_27() processSmartStyleRenderingInput])
        {
          v60 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          v61 = OUTLINED_FUNCTION_39_9();
          OUTLINED_FUNCTION_67_3(v61, v62, v60, v63, v64);
        }

        [v59 addEntriesFromDictionary:metadata];
        LODWORD(v65) = MEMORY[0x1E696AD98];
        [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(output, "fusionMode")), *off_1E798A670}];
        if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")] & 0x100000) != 0)
        {
          BWStillImageSetProcessingFlagsForSampleBuffer(v123, 2);
          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27(), "input"), "settings"), "HDRMode") == 1)
          {
            if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")])
            {
              v66 = 3;
            }

            else
            {
              v66 = 2;
            }

            [v59 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v66), *off_1E798B370}];
          }
        }

        if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")] == 11)
        {
          [OUTLINED_FUNCTION_12_27() numberOfFramesAddedForMultiFrameProcessing];
          [OUTLINED_FUNCTION_12_27() totalExposureTimesOfFramesAddedForMultiFrameProcessing];
          [OUTLINED_FUNCTION_12_27() minExposureTimesOfFramesAddedForMultiFrameProcessing];
          [OUTLINED_FUNCTION_12_27() maxExposureTimesOfFramesAddedForMultiFrameProcessing];
          v70 = OUTLINED_FUNCTION_87_1(v67, v68, v69);
          [v59 addEntriesFromDictionary:v70];

          v71 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
          OUTLINED_FUNCTION_26_10(v71);
          LODWORD(v65) = MEMORY[0x1E696AD98];
          v72 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27(), "input"), "ispMotionHighPassFilterConvergenceFlags")}];
          OUTLINED_FUNCTION_26_10(v72);
        }

        else
        {
          [v59 setObject:&unk_1F2244068 forKeyedSubscript:@"CompositeImage"];
        }

        if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")])
        {
          [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
          v65 = v123;
          [OUTLINED_FUNCTION_12_27() demosaicedRawErr];
          v73 = OUTLINED_FUNCTION_51_0();
          [(BWNRFProcessorController *)v73 _propagateDemosaicedRawPixelBuffer:v74 demosaicedRawMetadata:v75 outputSampleBuffer:v65 error:v76];
        }

        if (dword_1EB58E0E0)
        {
          v77 = OUTLINED_FUNCTION_25_9();
          OUTLINED_FUNCTION_63_5(v77);
          OUTLINED_FUNCTION_4_0();
          if (v65)
          {
            [objc_msgSend(OUTLINED_FUNCTION_62_4() "settings")];
            LODWORD(v121.value) = 136315651;
            *(&v121.value + 4) = "[BWNRFProcessorController _processUBFusion]";
            LOWORD(v121.flags) = 2113;
            *(&v121.flags + 2) = 0x1E696A000uLL;
            OUTLINED_FUNCTION_38_9();
            OUTLINED_FUNCTION_5_1(v78, v79, &v122, v80, &dword_1AC90E000);
          }

          OUTLINED_FUNCTION_1_63();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v81 = OUTLINED_FUNCTION_12_27();
        [(BWNRFProcessorRequest *)v81 imageType];
        [OUTLINED_FUNCTION_12_27() input];
        [OUTLINED_FUNCTION_12_27() err];
        [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
        goto LABEL_57;
      }

      fusionMode = [output fusionMode];
      if (fusionMode == 1)
      {
        if (!BWSampleBufferGetAttachedMedia(v123, 0x1F21AAAF0))
        {
          v119 = 0x1F21AAAF0;
          v14 = MEMORY[0x1E695DEC8];
          v15 = &v119;
          v16 = 1;
          goto LABEL_18;
        }
      }

      else if (fusionMode == 2)
      {
        v120[0] = @"Depth";
        v120[1] = 0x1F21AABD0;
        v120[2] = 0x1F21AAB10;
        v120[3] = 0x1F21AAB50;
        v14 = MEMORY[0x1E695DEC8];
        v15 = v120;
        v16 = 4;
LABEL_18:
        v17 = [v14 arrayWithObjects:v15 count:v16];
        goto LABEL_20;
      }

      v17 = 0;
LABEL_20:
      v18 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v26 = OUTLINED_FUNCTION_62_0(v18, v19, v20, v21, v22, v23, v24, v25, v84, v86, v88, metadata, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
      if (v26)
      {
        v27 = v26;
        v28 = *v116;
        do
        {
          for (k = 0; k != v27; ++k)
          {
            if (*v116 != v28)
            {
              objc_enumerationMutation(v17);
            }

            v30 = *(*(&v115 + 1) + 8 * k);
            AttachedMedia = BWSampleBufferGetAttachedMedia(v18, v30);
            BWSampleBufferSetAttachedMedia(v123, v30, AttachedMedia);
          }

          v27 = OUTLINED_FUNCTION_62_0(v32, v33, v34, v35, v36, v37, v38, v39, v85, v87, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114);
        }

        while (v27);
      }

      goto LABEL_27;
    }
  }

LABEL_57:
  if ([OUTLINED_FUNCTION_12_27() err])
  {
    if (metadata)
    {
      v82 = metadata;
    }

    else
    {
      v82 = MEMORY[0x1E695E0F8];
    }

    v91 = @"UBFusionFailure";
    v92 = v82;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
    v83 = OUTLINED_FUNCTION_3_30();
    [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v83];
  }

  if (v123)
  {
    CFRelease(v123);
  }
}

- (void)_processDigitalFlash
{
  if (self)
  {
    if (([objc_msgSend(objc_msgSend(*(self + 216) "input")] & 0x800000000) != 0)
    {

      [(BWNRFProcessorController *)self _processRawNightMode];
    }

    else
    {

      [(BWNRFProcessorController *)self _processUBFusion];
    }
  }
}

- (void)_processRawNightMode
{
  if (self)
  {
    v64 = 0;
    v65 = 0;
    rawNightModeOutputFrame = [*(self + 216) rawNightModeOutputFrame];
    [OUTLINED_FUNCTION_12_27() output];
    OUTLINED_FUNCTION_80_1();
    if (v6)
    {
      v7 = OUTLINED_FUNCTION_25_9();
      os_log_type_enabled(v7, v62);
      OUTLINED_FUNCTION_30();
      if (v2)
      {
        [objc_msgSend(objc_msgSend(*(self + 216) "input")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_11_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_56_0(v8, v9, v10, v11, v12);
    }

    if ([OUTLINED_FUNCTION_12_27() err])
    {
      v13 = [objc_msgSend(rawNightModeOutputFrame "metadata")];
      if (!v13)
      {
        v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      [OUTLINED_FUNCTION_12_27() err];
      [v13 setObject:objc_msgSend(OUTLINED_FUNCTION_8() forKeyedSubscript:{"numberWithInt:"), @"RawNightModeAddFrameFailure"}];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      [*(self + 88) process];
      [OUTLINED_FUNCTION_12_27() setErr:?];
      objc_autoreleasePoolPop(v14);
      v13 = [objc_msgSend(rawNightModeOutputFrame "metadata")];
      if (![OUTLINED_FUNCTION_12_27() err])
      {
        [(BWNRFProcessorController *)self _prepareProcessorForProcessingType:?];
        [OUTLINED_FUNCTION_12_27() setErr:?];
        if (![OUTLINED_FUNCTION_12_27() err])
        {
          completionStatus = [rawNightModeOutputFrame completionStatus];
          v16 = OUTLINED_FUNCTION_12_27();
          [(BWNRFProcessorRequest *)v16 processingType];
          v17 = OUTLINED_FUNCTION_46_8();
          [(BWNRFProcessorController *)v17 _logCompletionStatus:completionStatus processingType:v18 request:v19];
          v20 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
          BWCMSampleBufferCreateDeepCopyWithNewPixelBuffer(v20, [rawNightModeOutputFrame pixelBuffer], 0, (self + 168), &v65);
          [OUTLINED_FUNCTION_12_27() setErr:?];
          if (![OUTLINED_FUNCTION_12_27() err])
          {
            [rawNightModeOutputFrame noiseMapPixelBuffer];
            v21 = OUTLINED_FUNCTION_39_9();
            CMSetAttachment(v21, v22, v23, 1u);
            v24 = CMGetAttachment(v65, *off_1E798A3C8, 0);
            [v24 addEntriesFromDictionary:v13];
            [*(self + 88) addFrame:v65];
            v25 = objc_autoreleasePoolPush();
            [*(self + 88) process];
            [OUTLINED_FUNCTION_12_27() setErr:?];
            objc_autoreleasePoolPop(v25);
            if (![OUTLINED_FUNCTION_12_27() err])
            {
              [v1 completionStatus];
              v26 = OUTLINED_FUNCTION_46_8();
              [(BWNRFProcessorController *)v26 _logCompletionStatus:v27 processingType:5 request:v28];
              v29 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
              BWCMSampleBufferCreateCopyWithNewPixelBuffer(v29, [v1 pixelBuffer], (self + 168), &v64);
              [OUTLINED_FUNCTION_12_27() setErr:?];
              if (![OUTLINED_FUNCTION_12_27() err])
              {
                if ([objc_msgSend(OUTLINED_FUNCTION_12_27() "output")])
                {
                  OUTLINED_FUNCTION_91_3();
                  [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  v30 = OUTLINED_FUNCTION_39_9();
                  OUTLINED_FUNCTION_66_2(v30, v31, v32, v33);
                }

                CMSetAttachment(v64, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
                [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
                [OUTLINED_FUNCTION_12_27() numberOfFramesAddedForMultiFrameProcessing];
                [OUTLINED_FUNCTION_12_27() totalExposureTimesOfFramesAddedForMultiFrameProcessing];
                [OUTLINED_FUNCTION_12_27() minExposureTimesOfFramesAddedForMultiFrameProcessing];
                [OUTLINED_FUNCTION_12_27() maxExposureTimesOfFramesAddedForMultiFrameProcessing];
                v37 = OUTLINED_FUNCTION_87_1(v34, v35, v36);
                [v24 addEntriesFromDictionary:v37];

                v38 = [objc_msgSend(OUTLINED_FUNCTION_12_27() "input")];
                OUTLINED_FUNCTION_26_10(v38);
                LODWORD(v39) = MEMORY[0x1E696AD98];
                v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27(), "input"), "ispMotionHighPassFilterConvergenceFlags")}];
                OUTLINED_FUNCTION_26_10(v40);
                if ([OUTLINED_FUNCTION_12_27() processSmartStyleRenderingInput])
                {
                  LODWORD(v39) = [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  v41 = OUTLINED_FUNCTION_17_16();
                  BWSampleBufferSetAttachedMediaFromPixelBuffer(v41, v42, v43, v44, v45, v46, 0);
                }

                if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_27() "input")])
                {
                  [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  [objc_msgSend(OUTLINED_FUNCTION_12_27() "output")];
                  v39 = v64;
                  [OUTLINED_FUNCTION_12_27() demosaicedRawErr];
                  v47 = OUTLINED_FUNCTION_51_0();
                  [(BWNRFProcessorController *)v47 _propagateDemosaicedRawPixelBuffer:v48 demosaicedRawMetadata:v49 outputSampleBuffer:v39 error:v50];
                }

                if (*(v3 + 224))
                {
                  v63 = 0;
                  v62 = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  OUTLINED_FUNCTION_63_5(os_log_and_send_and_compose_flags_and_os_log_type);
                  OUTLINED_FUNCTION_4_0();
                  if (v39)
                  {
                    [objc_msgSend(OUTLINED_FUNCTION_62_4() "settings")];
                    OUTLINED_FUNCTION_20();
                    OUTLINED_FUNCTION_0_51();
                    OUTLINED_FUNCTION_5_1(v52, v53, v61, v54, &dword_1AC90E000);
                  }

                  OUTLINED_FUNCTION_1_63();
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                v55 = OUTLINED_FUNCTION_12_27();
                [(BWNRFProcessorRequest *)v55 imageType];
                [OUTLINED_FUNCTION_12_27() input];
                [OUTLINED_FUNCTION_12_27() err];
                [OUTLINED_FUNCTION_9_5() processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
              }
            }
          }
        }
      }
    }

    if ([OUTLINED_FUNCTION_12_27() err])
    {
      OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v56, v57, v58, v59);
      v60 = OUTLINED_FUNCTION_3_30();
      [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v60];
    }

    if (v64)
    {
      CFRelease(v64);
    }

    if (v65)
    {
      CFRelease(v65);
    }
  }
}

- (void)_processDeepFusion
{
  if (self)
  {
    OUTLINED_FUNCTION_59_0();
    a47 = v50;
    a48 = v51;
    v53 = v52;
    input = [OUTLINED_FUNCTION_29_7(v52) input];
    if (dword_1EB58E0E0)
    {
      v55 = OUTLINED_FUNCTION_40_8();
      OUTLINED_FUNCTION_19_3(v55);
      OUTLINED_FUNCTION_4_0();
      if (v48)
      {
        [objc_msgSend(input "settings")];
        OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_0_51();
        OUTLINED_FUNCTION_5_1(v56, v57, &a20, v58, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_1_63();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (![OUTLINED_FUNCTION_13_21() err])
    {
      v59 = *(v53 + *(v49 + 3324));
      if (!v59 || v59[49] != 1 || (v65 = *(v53 + 88), [objc_msgSend(v59 "input")], v66 = OUTLINED_FUNCTION_70(), nrfp_addFrame_0(v66, v67, v65, v68, 1), !objc_msgSend(OUTLINED_FUNCTION_13_21(), "err")))
      {
        [*(v53 + 88) process];
        [OUTLINED_FUNCTION_13_21() setErr:?];
        if (![OUTLINED_FUNCTION_13_21() err])
        {
          [objc_msgSend(*(v53 + 88) "output")];
          v60 = OUTLINED_FUNCTION_13_21();
          [(BWNRFProcessorRequest *)v60 processingType];
          v61 = OUTLINED_FUNCTION_70();
          [(BWNRFProcessorController *)v61 _logCompletionStatus:v62 processingType:v63 request:v64];
          if ([*(v53 + 64) deepFusionWaitForProcessingToFinish])
          {
            [*(v53 + 88) finishProcessing];
          }
        }
      }
    }

    if ([OUTLINED_FUNCTION_13_21() err] && objc_msgSend(objc_msgSend(input, "captureSettings"), "deliverDeferredPhotoProxyImage") && (objc_msgSend(OUTLINED_FUNCTION_13_21(), "deliveredDeferredProxyImage") & 1) == 0)
    {
      [objc_msgSend(objc_msgSend(input "captureSettings")];
      [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(OUTLINED_FUNCTION_13_21(), "err")}];
      OUTLINED_FUNCTION_41(MEMORY[0x1E695DF20], v69, v70, v71, v72);
      v73 = OUTLINED_FUNCTION_3_30();
      [BWNRFProcessorController _handleErrorRecoveryWithFailureMetadata:v73];
    }

    OUTLINED_FUNCTION_58_0();
  }
}

- (void)_processLearnedFusion
{
  if (self)
  {
    OUTLINED_FUNCTION_59_0();
    a50 = v52;
    a51 = v53;
    v55 = v54;
    a38 = 0;
    input = [*(v54 + 216) input];
    if (dword_1EB58E0E0)
    {
      a37 = 0;
      a36 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      OUTLINED_FUNCTION_65_4(os_log_and_send_and_compose_flags_and_os_log_type);
      OUTLINED_FUNCTION_4_0();
      if (v51)
      {
        [objc_msgSend(input "settings")];
        OUTLINED_FUNCTION_6_39();
        OUTLINED_FUNCTION_5_1(v58, v59, &a18, v60, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_1_63();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(v55 + 88) process];
    [OUTLINED_FUNCTION_19_14() setErr:?];
    if (![OUTLINED_FUNCTION_19_14() err])
    {
      referenceFrame = [input referenceFrame];
      if (referenceFrame)
      {
        v62 = referenceFrame;
        v63 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
        BWCMSampleBufferCreateCopyWithNewPixelBuffer(v62, v63, (v55 + 168), &a38);
        [OUTLINED_FUNCTION_19_14() setErr:?];
        if (![OUTLINED_FUNCTION_19_14() err])
        {
          CMSetAttachments(a38, [input referenceFrameAttachments], 1u);
          CMSetAttachment(a38, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
          v64 = *off_1E798A3C8;
          v65 = CMGetAttachment(a38, *off_1E798A3C8, 0);
          v66 = CMGetAttachment([input referenceFrame], v64, 0);
          FigCaptureMetadataUtilitiesCopyZoomRelatedMetadata(v66, v65);
          [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
          [OUTLINED_FUNCTION_7() addEntriesFromDictionary:?];
          [v65 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_19_14(), "output"), "fusionMode")), *off_1E798A670}];
          if ([objc_msgSend(OUTLINED_FUNCTION_19_14() "output")])
          {
            v67 = OUTLINED_FUNCTION_91_3();
            v68 = a38;
            v69 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            BWSampleBufferSetAttachedMediaFromPixelBuffer(v68, 0x1F217BF50, v69, (v55 + 200), v67, 0, 1);
          }

          if ([OUTLINED_FUNCTION_19_14() processSmartStyleRenderingInput])
          {
            BWCopyLTMMetadata(v66, v65);
            v70 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            v71 = OUTLINED_FUNCTION_39_9();
            OUTLINED_FUNCTION_67_3(v71, v72, v70, v73, v74);
          }

          v75 = BWPixelBufferDimensionsFromSampleBuffer(v62);
          v76 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
          Width = CVPixelBufferGetWidth(v76);
          v78 = [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
          v79 = Width | (CVPixelBufferGetHeight(v78) << 32);
          if (v75 != v79)
          {
            v80.n128_u64[0] = *MEMORY[0x1E695F050];
            v81.n128_u64[0] = *(MEMORY[0x1E695F050] + 8);
            v82.n128_u64[0] = *(MEMORY[0x1E695F050] + 16);
            FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v65, v75, v79, v80, v81, v82, *(MEMORY[0x1E695F050] + 24), *MEMORY[0x1E695F050], v81.n128_f64[0], v82.n128_f64[0], *(MEMORY[0x1E695F050] + 24));
          }

          if ([objc_msgSend(input "processingSettings")])
          {
            [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            [objc_msgSend(OUTLINED_FUNCTION_19_14() "output")];
            v83 = a38;
            [OUTLINED_FUNCTION_19_14() demosaicedRawErr];
            v84 = OUTLINED_FUNCTION_51_0();
            [(BWNRFProcessorController *)v84 _propagateDemosaicedRawPixelBuffer:v85 demosaicedRawMetadata:v86 outputSampleBuffer:v83 error:v87];
          }

          if ([objc_msgSend(objc_msgSend(input "captureSettings")])
          {
            BWStillImageSetProcessingFlagsForSampleBuffer(a38, 0x8000000);
          }

          if (([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_19_14() "input")] & 0x100000) != 0)
          {
            BWStillImageSetProcessingFlagsForSampleBuffer(a38, 2);
          }

          v88 = [objc_msgSend(*(v55 + 88) "output")];
          v89 = OUTLINED_FUNCTION_19_14();
          [(BWNRFProcessorRequest *)v89 processingType];
          v90 = OUTLINED_FUNCTION_46_8();
          [(BWNRFProcessorController *)v90 _logCompletionStatus:v88 processingType:v91 request:v92];
        }
      }
    }

    v93 = OUTLINED_FUNCTION_19_14();
    [(BWNRFProcessorRequest *)v93 imageType];
    [OUTLINED_FUNCTION_19_14() input];
    [OUTLINED_FUNCTION_19_14() err];
    OUTLINED_FUNCTION_46_1();
    [v94 processorController:? didFinishProcessingSampleBuffer:? type:? processorInput:? err:?];
    if (a38)
    {
      CFRelease(a38);
    }

    OUTLINED_FUNCTION_58_0();
  }
}

- (id)externalMemoryDescriptorForResolutionFlavors:(id)flavors
{
  v4 = [(BWNRFProcessorController *)&self->super.super.isa _prepareDescriptorsByProcessingTypeForResolutionFlavors:flavors];
  if ([(BWNRFProcessorControllerConfiguration *)self->_configuration learnedNRMode])
  {
    v5 = [(BWNRFProcessorControllerConfiguration *)self->_configuration learnedNRInputFormat]== 0;
  }

  else
  {
    v5 = 0;
  }

  v9[1] = [MEMORY[0x1E696AD98] numberWithBool:{v5, *off_1E798D1F0, *off_1E798D1E8, v4}];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:2];
  return -[NRFProcessor externalMemoryDescriptorForConfiguration:](self->_nrfProcessor, "externalMemoryDescriptorForConfiguration:", [objc_alloc(MEMORY[0x1E69916C8]) initWithMaxInputDimensions:0 inputPixelFormat:0 maxOutputDimensions:0 cmiResourceEnabled:0 processorSpecificOptions:v6]);
}

- (void)processor:(id)processor outputReadyWithFrameType:(int)type outputPixelBuffer:(__CVBuffer *)buffer outputMetadata:(id)metadata error:(int)error
{
  if (error)
  {
LABEL_27:
    OUTLINED_FUNCTION_57_0();
    return;
  }

  if (type == 2)
  {
    captureType = [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] captureSettings] captureType];
    if (buffer || captureType != 13)
    {
      deepFusionOutput = [(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput];
      if ([(NRFDeepFusionOutput *)deepFusionOutput refFrameTransformIsValid]& 1) != 0 && (objc_opt_respondsToSelector())
      {
        evMinusReferenceFrame = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] evMinusReferenceFrame];
        memset(&v62, 0, sizeof(v62));
        CMSampleBufferGetPresentationTimeStamp(&v62, evMinusReferenceFrame);
        array = [MEMORY[0x1E695DF70] array];
        for (i = 0; i != 3; ++i)
        {
          for (j = 0; j != 3; ++j)
          {
            v16 = MEMORY[0x1E696AD98];
            [(NRFDeepFusionOutput *)deepFusionOutput refFrameTransform];
            OUTLINED_FUNCTION_49_0(v17, v18);
            *v60 = v19;
            v60[2] = v20;
            v61 = v21;
            v60[4] = v22;
            LODWORD(v19) = *(&v60[2 * i] & 0xFFFFFFFFFFFFFFF3 | (4 * (j & 3)));
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

        input = [(BWNRFProcessorRequest *)currentRequest input];
        v59 = v62;
        [(BWNRFProcessorControllerDelegate *)delegate processorController:self didSelectNewReferenceFrameWithPTS:&v59 transform:array processorInput:input];
      }

      if ([(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer])
      {
        [(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput];
        if ((objc_opt_respondsToSelector() & 1) != 0 && [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputMetadata])
        {
          gainMapOutputMetadata = [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputMetadata];
        }

        else
        {
          gainMapOutputMetadata = [MEMORY[0x1E695DF90] dictionary];
        }

        [gainMapOutputMetadata setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", -[FigCaptureCameraParameters gainMapVersion](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "gainMapVersion")), *off_1E798A688}];
        v28 = self->_currentRequest;
        if (v28)
        {
          v29 = v28->_delegate;
        }

        else
        {
          v29 = 0;
        }

        [(BWNRFProcessorRequest *)v28 input];
        OUTLINED_FUNCTION_52_0();
        OUTLINED_FUNCTION_64_1(v29, v30, self);
      }

      v27 = self->_currentRequest;
LABEL_25:
      [(BWNRFProcessorRequest *)v27 input];
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_46_1();
LABEL_26:
      [v31 processorController:? didFinishProcessingBuffer:? metadata:? type:? captureFrameFlags:? processorInput:? err:?];
    }

    goto LABEL_27;
  }

  if (!buffer)
  {
    goto LABEL_27;
  }

  v27 = self->_currentRequest;
  switch(type)
  {
    case 1:
      [(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)v27 input] captureSettings] captureType];
      [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] fusionMode];
      [metadata setObject:objc_msgSend(OUTLINED_FUNCTION_7() forKeyedSubscript:{"numberWithUnsignedInt:"), *off_1E798A670}];
      v47 = self->_currentRequest;
      if (v47 && v47->_processErrorRecoveryProxy)
      {
        errorRecoveryFrame = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)v47 input] errorRecoveryFrame];
      }

      else
      {
        errorRecoveryFrame = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)v47 input] referenceFrame];
      }

      v37 = OUTLINED_FUNCTION_84_2(errorRecoveryFrame, 168);
      v49 = self->_currentRequest;
      if (v49 && v49->_processErrorRecoveryProxy && ([(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)v49 input] captureSettings] captureFlags]& 0x100000) != 0)
      {
        BWStillImageSetProcessingFlagsForSampleBuffer(v37, 0x8000000);
      }

      if (![(BWStillImageCaptureSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] captureSettings] deliverDeferredPhotoProxyImage])
      {
        goto LABEL_55;
      }

      BWStillImageSetProcessingFlagsForSampleBuffer(v37, 4096);
      [(BWNRFProcessorRequest *)self->_currentRequest setDeliveredDeferredProxyImage:1];
      if ([(BWStillImageProcessingSettings *)[(BWStillImageProcessorControllerInput *)[(BWNRFProcessorRequest *)self->_currentRequest input] processingSettings] provideDemosaicedRaw])
      {
        [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputPixelBuffer];
        [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputMetadata];
        [(BWNRFProcessorRequest *)self->_currentRequest demosaicedRawErr];
        v52 = OUTLINED_FUNCTION_51_0();
        [(BWNRFProcessorController *)v52 _propagateDemosaicedRawPixelBuffer:v53 demosaicedRawMetadata:v54 outputSampleBuffer:v37 error:v55];
      }

      if ([(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer])
      {
        [(BWNRFProcessorController *)self _generateGainMapMetadata:?];
        OUTLINED_FUNCTION_66_2(v37, 0x1F217BF50, [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] gainMapOutputPixelBuffer], &self->_gainMapFormatDescription);
      }

      if ([(BWNRFProcessorRequest *)self->_currentRequest processSmartStyleRenderingInput])
      {
        OUTLINED_FUNCTION_67_3(v37, 0x1F21AAF50, [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputMIWBAppliedPixelBuffer], &self->_demosaicedRawFormatDescription, [(NRFDeepFusionOutput *)[(BWNRFProcessorRequest *)self->_currentRequest deepFusionOutput] linearOutputMIWBAppliedMetadata]);
      }

      v56 = self->_currentRequest;
      if (v56)
      {
        v57 = v56->_delegate;
      }

      else
      {
        v57 = 0;
      }

      imageType = [(BWNRFProcessorRequest *)v56 imageType];
      input2 = [(BWNRFProcessorRequest *)self->_currentRequest input];
      v42 = v57;
      selfCopy2 = self;
      v44 = v37;
      v45 = imageType;
      v46 = 0;
      break;
    case 3:
    case 4:
    case 5:
    case 6:
      goto LABEL_25;
    case 7:
      inferenceInputType = [(BWNRFProcessorRequest *)v27 inferenceInputType];
      v35 = self->_currentRequest;
      if (v35 && (v35->_processErrorRecoveryFrame || v35->_processErrorRecoveryProxy))
      {
        goto LABEL_38;
      }

      referenceFrame = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)v35 input] referenceFrame];
      if (!referenceFrame)
      {
        v35 = self->_currentRequest;
LABEL_38:
        referenceFrame = [(BWNRFProcessorInput *)[(BWNRFProcessorRequest *)v35 input] errorRecoveryFrame];
      }

      v37 = OUTLINED_FUNCTION_84_2(referenceFrame, 176);
      if (v37)
      {
        v38 = 0;
      }

      else
      {
        v38 = 4294954516;
      }

      v39 = self->_currentRequest;
      if (v39)
      {
        v40 = v39->_delegate;
      }

      else
      {
        v40 = 0;
      }

      input2 = [(BWNRFProcessorRequest *)v39 input];
      v42 = v40;
      selfCopy2 = self;
      v44 = v37;
      v45 = inferenceInputType;
      v46 = v38;
      break;
    case 8:
      if ([(BWNRFProcessorRequest *)v27 demosaicedRawErr])
      {
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_57_0();

      [v32 setDemosaicedRawErr:?];
      return;
    case 9:
      [(BWNRFProcessorRequest *)v27 input];
      OUTLINED_FUNCTION_52_0();
      OUTLINED_FUNCTION_46_1();
      goto LABEL_26;
    default:
      goto LABEL_27;
  }

  [(BWNRFProcessorControllerDelegate *)v42 processorController:selfCopy2 didFinishProcessingSampleBuffer:v44 type:v45 processorInput:input2 err:v46];
LABEL_55:
  if (!v37)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_57_0();

  CFRelease(v50);
}

- (CMAttachmentBearerRef)_newOutputSampleBufferWithSampleBuffer:(__CVBuffer *)buffer pixelBuffer:(CFTypeRef *)pixelBuffer formatDescriptionInOut:(uint64_t)out metadataToMerge:
{
  if (result)
  {
    target = 0;
    if (a2 && buffer)
    {
      CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(a2, buffer, pixelBuffer, &target);
      if (CopyWithNewPixelBuffer)
      {
        v10 = CopyWithNewPixelBuffer;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v10, v5, v11, target, v13, v14, v15, v16);
      }

      else
      {
        v8 = *off_1E798A3C8;
        v9 = [CMGetAttachment(target *off_1E798A3C8];
        [v9 addEntriesFromDictionary:out];
        CMSetAttachment(target, v8, v9, 1u);
      }
    }

    return target;
  }

  return result;
}

- (void)processor:(id)processor didSelectFusionMode:(int)mode
{
  [(BWNRFProcessorRequest *)self->_currentRequest input];
  v4 = OUTLINED_FUNCTION_53_1();

  [v4 processorController:? didSelectFusionMode:? processorInput:?];
}

- (id)processorGetInferenceResults:(id)results
{
  v4 = objc_alloc_init(NSClassFromString(&cfstr_Nrfprocessorin.isa));
  if ([(BWNRFProcessorRequest *)self->_currentRequest inferencesAvailable])
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

    v7 = [(BWNRFProcessorControllerDelegate *)delegate processorController:self newInferencesForProcessorInput:[(BWNRFProcessorRequest *)currentRequest input] inferenceInputBufferType:[(BWNRFProcessorRequest *)self->_currentRequest inferenceInputType]];
    if ([v7 inferenceBufferForAttachedMediaKey:@"PersonSemanticsSkin"])
    {
      [OUTLINED_FUNCTION_17() setSkinMask:?];
    }

    if ([v7 inferenceBufferForAttachedMediaKey:@"PersonSemanticsHair"])
    {
      [OUTLINED_FUNCTION_17() setHairMask:?];
    }

    if ([v7 inferenceBufferForAttachedMediaKey:0x1F21AAD30])
    {
      [OUTLINED_FUNCTION_17() setSkyMask:?];
    }

    if ([(BWNRFProcessorControllerConfiguration *)self->_configuration semanticRenderingVersion]< 4)
    {
      if ([v7 inferenceBufferForAttachedMediaKey:0x1F219E750])
      {
        [OUTLINED_FUNCTION_17() setPersonMask:?];
      }
    }

    else if ([v7 inferenceBufferForAttachedMediaKey:0x1F21AABB0])
    {
      [OUTLINED_FUNCTION_17() setHighResPersonMask:?];
    }

    if (-[BWNRFProcessorControllerConfiguration semanticRenderingVersion](self->_configuration, "semanticRenderingVersion") >= 5 && [v7 inferenceBufferForAttachedMediaKey:0x1F219E7F0])
    {
      [OUTLINED_FUNCTION_17() setLowResGlassesMask:?];
    }

    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = BWInferenceLowResPersonInstanceMaskKeys();
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          if ([v7 inferenceBufferForAttachedMediaKey:*(*(&v17 + 1) + 8 * v13)])
          {
            [OUTLINED_FUNCTION_7() addObject:?];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v16 count:16];
      }

      while (v11);
    }

    if ([array count])
    {
      [v4 setLowResPersonInstanceMasks:array];
      [v7 inferenceForAttachmentKey:0x1F219E990];
      [OUTLINED_FUNCTION_17() setLowResPersonInstanceConfidences:?];
      [v7 inferenceForAttachmentKey:0x1F219E9B0];
      [OUTLINED_FUNCTION_17() setLowResPersonInstanceBoundingBoxes:?];
    }

    [-[BWStillImageCaptureSettings metadata](-[BWStillImageProcessorControllerInput captureSettings](-[BWNRFProcessorRequest input](self->_currentRequest "input")];
    [OUTLINED_FUNCTION_17() setSmartCameraSceneType:?];
    if ([v7 inferenceForAttachmentKey:0x1F219E6F0])
    {
      [OUTLINED_FUNCTION_17() setSkinToneClassificationsForFaces:?];
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

  v14 = v4;
  OUTLINED_FUNCTION_56();
  return result;
}

- (id)adaptiveBracketingParametersForDigitalFlashMode:(int)mode frameStatistics:(id)statistics stationary:(BOOL)stationary sphereOffsetEnabled:(BOOL)enabled detectedObjects:(id)objects
{
  if (mode && (v8 = enabled, v9 = stationary, [statistics portType], (v13 = objc_msgSend(OUTLINED_FUNCTION_37_0(), "objectForKeyedSubscript:")) != 0))
  {
    v14 = v13;
    NRFStatisticsFromFrameStatistics = nfrp_createNRFStatisticsFromFrameStatistics(self->_nrfProgressiveBracketingStatisticsClass, statistics, v9, objects);
    v16 = -[BWNRFAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWNRFAdaptiveBracketingParameters alloc], [objc_alloc(self->_nrfProgressiveBracketingParametersClass) initWithOptions:v14 portType:objc_msgSend(statistics statistics:"portType") mode:NRFStatisticsFromFrameStatistics sphereOffsetEnabled:{mode == 2, v8}], self->_nrfProgressiveBracketingStatisticsClass);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)adaptiveBracketingDigitalFlashTotalIntegrationTimesProviderForPortType:(id)type
{
  v5 = [(NSDictionary *)self->_adaptiveBracketingCaptureParametersByPortType objectForKeyedSubscript:?];
  if (v5)
  {
    v5 = -[BWNRFAdaptiveBracketingParameters initWithProgressiveBracketingParameters:progressiveBracketingStatisticsClass:]([BWNRFAdaptiveBracketingParameters alloc], [objc_alloc(self->_nrfProgressiveBracketingParametersClass) initWithOptions:v5 portType:type statistics:0 mode:0 sphereOffsetEnabled:0], self->_nrfProgressiveBracketingStatisticsClass);
  }

  return v5;
}

void __72__BWNRFProcessorController__logCompletionStatus_processingType_request___block_invoke(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v13 = 0;
  [(BWUBNRFProcessorCompletionStatus *)*(a1 + 32) waitForCompletionWithDescriptionOut:?];
  if (dword_1EB58E0E0)
  {
    v4 = OUTLINED_FUNCTION_22_12();
    os_log_type_enabled(v4, v12[128]);
    OUTLINED_FUNCTION_30();
    if (v1)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", *(a1 + 56)];
      OUTLINED_FUNCTION_5_0(v1, v5, v12, v6, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_56_0(v7, v8, v9, v10, v11);
  }

  objc_autoreleasePoolPop(v3);
}

- (uint64_t)processor:(id *)a1 didSelectProgressiveFusionReferenceFrameIndex:.cold.1(id *a1)
{
  -[BWNRFProcessorInput _setReferenceFrame:]([*a1 input]);
  if ([(BWNRFProcessorRequest *)*a1 keepFramesUntilReferenceFrameSelected])
  {
    [objc_msgSend(*a1 "input")];
  }

  result = objc_opt_respondsToSelector();
  if (result)
  {
    [*a1 input];
    return [OUTLINED_FUNCTION_53_1() processorController:? didSelectLowLightReferenceFrame:? processorInput:?];
  }

  return result;
}

@end