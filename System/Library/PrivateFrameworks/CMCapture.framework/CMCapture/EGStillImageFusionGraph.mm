@interface EGStillImageFusionGraph
+ (void)initialize;
- (EGStillImageFusionGraph)initWithStillImageSettings:(id)settings nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator delegate:(id)delegate;
- (id)_processorControllerOutputForType:(id *)result;
- (uint64_t)_build;
- (void)dealloc;
@end

@implementation EGStillImageFusionGraph

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (EGStillImageFusionGraph)initWithStillImageSettings:(id)settings nodeConfiguration:(id)configuration resourceCoordinator:(id)coordinator delegate:(id)delegate
{
  v11 = MEMORY[0x1E696AEC0];
  if ([configuration deferredPhotoProcessorEnabled])
  {
    v12 = @"Deferred";
  }

  else
  {
    v12 = @"Synchronous";
  }

  v13 = [v11 stringWithFormat:@"%@_%@_captureID%lld_%@", v12, BWPhotoEncoderStringFromEncodingScheme(objc_msgSend(objc_msgSend(settings, "captureSettings"), "captureType")), objc_msgSend(objc_msgSend(settings, "requestedSettings"), "settingsID"), objc_msgSend(objc_msgSend(settings, "captureSettings"), "masterPortType")];
  v17.receiver = self;
  v17.super_class = EGStillImageFusionGraph;
  v14 = [(EGStillImageGraph *)&v17 initWithName:v13 stillImageSettings:settings delegate:delegate];
  if (v14)
  {
    v14->_stillImageSettings = settings;
    v14->_nodeConfiguration = configuration;
    v14->_resourceCoordinator = coordinator;
    v14->_delegate = delegate;
    v14->_processorControllerSourceNodesByType = objc_alloc_init(MEMORY[0x1E695DF90]);
    v16 = objc_autoreleasePoolPush();
    if ([(EGStillImageFusionGraph *)v14 _build])
    {

      v14 = 0;
    }

    objc_autoreleasePoolPop(v16);
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = EGStillImageFusionGraph;
  [(EGStillImageGraph *)&v3 dealloc];
}

- (uint64_t)_build
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = [objc_msgSend(*(result + 104) "captureSettings")];
  v3 = [OUTLINED_FUNCTION_13_32() captureStreamSettingsForPortType:v2];
  deferredPhotoProcessorEnabled = [OUTLINED_FUNCTION_5_68() deferredPhotoProcessorEnabled];
  if ([OUTLINED_FUNCTION_5_68() deferredPhotoProcessorEnabled])
  {
    v5 = 0;
  }

  else
  {
    v5 = [OUTLINED_FUNCTION_5_68() deferredCaptureSupportEnabled] ^ 1;
  }

  if (((deferredPhotoProcessorEnabled | v5) & 1) == 0)
  {
    return 4294954516;
  }

  captureType = [OUTLINED_FUNCTION_13_32() captureType];
  captureType2 = [OUTLINED_FUNCTION_13_32() captureType];
  v8 = captureType == 12 || captureType2 == 13;
  if (!v8)
  {
    return 4294954516;
  }

  LODWORD(v243) = captureType2;
  if (v5)
  {
    v9 = [OUTLINED_FUNCTION_0_91() areInferencesRequiredByProcessorControllersForSettings:?];
  }

  else
  {
    v9 = 0;
  }

  LODWORD(v260) = v5;
  LODWORD(v248) = deferredPhotoProcessorEnabled;
  if (captureType == 12 && [OUTLINED_FUNCTION_0_91() isInferenceInputImageRequiredForSettings:? portType:?])
  {
    downgradedDeepFusionEnhancedResolutionCapture = [OUTLINED_FUNCTION_13_32() downgradedDeepFusionEnhancedResolutionCapture];
  }

  else
  {
    downgradedDeepFusionEnhancedResolutionCapture = 0;
  }

  captureFlags = [OUTLINED_FUNCTION_13_32() captureFlags];
  HIDWORD(v256) = [OUTLINED_FUNCTION_0_91() isSmartStyleRenderingCapture:?];
  v11 = OUTLINED_FUNCTION_5_68();
  v13 = [(BWPhotonicEngineNodeConfiguration *)v11 deepZoomVersion]> 0 && captureType == 12;
  HIDWORD(v259) = v13;
  v14 = [OUTLINED_FUNCTION_5_68() isIDCCaptureForPortType:v2 settings:*(v1 + 104)];
  v15 = [OUTLINED_FUNCTION_5_68() isGDCCaptureForPortType:v2 settings:*(v1 + 104)];
  HIDWORD(v243) = [OUTLINED_FUNCTION_5_68() scalerProcessorControllerConfiguration] && objc_msgSend(OUTLINED_FUNCTION_0_91(), "isScalerRequiredForSettings:portType:preNoiseReductionScalerOut:");
  HIDWORD(v236) = v15;
  LODWORD(v238) = v14;
  v16 = v14 | v15;
  v17 = (captureFlags >> 33) & 1;
  if (captureType != 12)
  {
    LODWORD(v17) = 0;
  }

  HIDWORD(v242) = v17;
  HIDWORD(v255) = (v16 & HIDWORD(v259) & 1) != 0 && (captureFlags & 0x4200000000) == 0x200000000;
  v18 = (v260 & ((captureFlags & 0x800) != 0)) == 1 && [OUTLINED_FUNCTION_5_68() depthDataType] == 8 && (captureFlags & 0x200) == 0;
  v263 = v2;
  LODWORD(v256) = captureType;
  if (v260)
  {
    LODWORD(v240) = [OUTLINED_FUNCTION_0_91() isReferenceOrClientBracketFrameEmissionNeededForSettings:? portType:?];
  }

  else
  {
    LODWORD(v240) = 0;
  }

  HIDWORD(v251) = v9 | downgradedDeepFusionEnhancedResolutionCapture;
  LODWORD(v246) = [v3 expectedFrameCount];
  if ((captureFlags & 0x100000) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (dword_1EB58DE00)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22 = v16 ^ 1u;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v23 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  v24 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  if (v248)
  {
    v103 = v16 ^ 1u;
    v104 = [[EGStillImageSampleBufferEnqueuerNode alloc] initWithName:@"SampleBufferSource" primaryPortType:v263 numPrimarySbufOutputs:1 numSecondarySbufOutputs:0 stillImageSettings:*(v1 + 104)];
    [OUTLINED_FUNCTION_2_89() installNode:?];
    [OUTLINED_FUNCTION_12_0() setSampleBufferEntryPoint:?];
    v105 = [EGStillImageDeferredProcessingNode alloc];
    OUTLINED_FUNCTION_11_40();
    v107 = [v106 initWithName:@"DeferredProcessing" stillImageSettings:? resourceCoordinator:? numSbufOutputs:? portType:? delegate:?];
    [*(v1 + 120) deferredProcessorControllerQueue];
    [OUTLINED_FUNCTION_28() handleAllInputAsyncOnQueue:?];
    [v1 installNode:v107];
    v108 = [objc_msgSend(v22 "primarySbufOutputs")];
    [v107 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v108 toInput:?];
    v109 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [v107 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v109 toInput:?];
    referenceFrameOutput = [v107 referenceFrameOutput];
    inferencesDeliveredOutput = 0;
    if ((v251 & 0x100000000) == 0)
    {
      inferencesDeliveredOutput = [v107 inferencesDeliveredOutput];
    }

    sbufOutputs = [v107 sbufOutputs];
    v22 = v103;
    v37 = v248;
    goto LABEL_64;
  }

  if (!v260)
  {
    referenceFrameOutput = 0;
    inferencesDeliveredOutput = 0;
    sbufOutputs = 0;
    goto LABEL_66;
  }

  HIDWORD(v238) = v16 ^ 1;
  v25 = v246;
  v26 = [[EGStillImageSampleBufferEnqueuerNode alloc] initWithName:@"SampleBufferSource" primaryPortType:v263 numPrimarySbufOutputs:v246 numSecondarySbufOutputs:v20 stillImageSettings:*(v1 + 104)];
  [v1 installNode:v26];
  [v1 setSampleBufferEntryPoint:v26];
  v27 = [[EGStillImageReferenceFrameSelectionNode alloc] initWithName:@"primaryPortReferenceFrameSelection" numSampleBufferInputs:v246];
  [v1 installNode:v27];
  if (v246 >= 1)
  {
    v25 = 0;
    do
    {
      v28 = [(NSArray *)[(EGStillImageSampleBufferEnqueuerNode *)v26 primarySbufOutputs] objectAtIndexedSubscript:v25];
      [(NSArray *)[(EGStillImageReferenceFrameSelectionNode *)v27 sampleBufferInputs] objectAtIndexedSubscript:v25];
      [OUTLINED_FUNCTION_1_15() connectOutput:v28 toInput:?];
      ++v25;
    }

    while (v246 != v25);
  }

  [array3 addObject:{-[EGStillImageReferenceFrameSelectionNode fusionModeInput](v27, "fusionModeInput")}];
  if (v18)
  {
    v29 = [[EGStillImageReferenceFrameSelectionNode alloc] initWithName:@"secondaryPortReferenceFrameSelection" numSampleBufferInputs:v19];
    [OUTLINED_FUNCTION_2_89() installNode:?];
    for (i = 0; i != v19; ++i)
    {
      v31 = [(NSArray *)[(EGStillImageSampleBufferEnqueuerNode *)v26 secondarySbufOutputs] objectAtIndexedSubscript:i];
      [objc_msgSend(v25 "sampleBufferInputs")];
      [OUTLINED_FUNCTION_1_15() connectOutput:v31 toInput:?];
    }

    [array3 addObject:{objc_msgSend(v25, "fusionModeInput")}];
    referenceFrameOutput2 = [v25 referenceFrameOutput];
  }

  else
  {
    referenceFrameOutput2 = 0;
  }

  v23 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  referenceFrameOutput3 = [(EGStillImageReferenceFrameSelectionNode *)v27 referenceFrameOutput];
  sbufOutputs = [(EGStillImageSampleBufferEnqueuerNode *)v26 primarySbufOutputs];
  v37 = 0;
  if (v18)
  {
    v24 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v38 = [[EGStillImageDisparitySubgraph alloc] initWithName:@"Disparity" stillImageSettings:*(v1 + 104) nodeConfiguration:*(v1 + 112) resourceCoordinator:*(v1 + 120) delegate:*(v1 + 128)];
    [OUTLINED_FUNCTION_2_89() installSubgraph:?];
    [v25 primaryReferenceFrameInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:referenceFrameOutput3 toInput:?];
    [v25 secondaryReferenceFrameInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:referenceFrameOutput2 toInput:?];
    [array2 addObjectsFromArray:{objc_msgSend(v25, "softISPProcessingCompleteSubgraphOutputs")}];
    captureCompleteSubgraphOutputs = [v25 captureCompleteSubgraphOutputs];
    [OUTLINED_FUNCTION_18_24(captureCompleteSubgraphOutputs v40];
  }

  else
  {
    v24 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (v240)
    {
      v47 = [[EGStillImagePrepareUnprocessedReferenceFrameNode alloc] initWithName:@"PrepareUnprocessedReferenceFrame"];
      [OUTLINED_FUNCTION_2_89() installNode:?];
      [v25 sbufInput];
      referenceFrameOutput = referenceFrameOutput3;
      [OUTLINED_FUNCTION_1_15() connectOutput:referenceFrameOutput3 toInput:?];
      v48 = [[EGStillImageSampleBufferEmitterNode alloc] initWithName:@"ReferenceFrameEmitter" description:@"Reference Frame emitter"];
      [v1 installNode:v48];
      sbufOutput = [v25 sbufOutput];
      [(EGStillImageSampleBufferEmitterNode *)v48 sbufInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput toInput:?];
      captureCompleteOutput = [(EGStillImageSampleBufferEmitterNode *)v48 captureCompleteOutput];
      [OUTLINED_FUNCTION_18_24(captureCompleteOutput v51];
      inferencesDeliveredOutput = 0;
      v22 = HIDWORD(v238);
      goto LABEL_64;
    }
  }

  inferencesDeliveredOutput = 0;
  v22 = HIDWORD(v238);
  referenceFrameOutput = referenceFrameOutput3;
LABEL_64:
  if ((HIDWORD(v256) & v22 & v37) == 1)
  {
    v149 = [EGStillImagePiecemealEncodingNode alloc];
    OUTLINED_FUNCTION_11_40();
    OUTLINED_FUNCTION_14_33();
    v151 = inferencesDeliveredOutput;
    v152 = v22;
    v153 = [v150 initWithName:? stillImageSettings:? resourceCoordinator:? portType:? mode:? delegate:?];
    [*(v1 + v24[254]) workerQueue];
    [OUTLINED_FUNCTION_8() handleAllInputAsyncOnQueue:?];
    [OUTLINED_FUNCTION_12_0() installNode:?];
    v154 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [v153 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v154 toInput:?];
    [v153 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:referenceFrameOutput toInput:?];
    v155 = v153;
    v22 = v152;
    inferencesDeliveredOutput = v151;
    encodingCompleteOutput = [v155 encodingCompleteOutput];
    [OUTLINED_FUNCTION_18_24(encodingCompleteOutput v157];
  }

LABEL_66:
  v58 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
  if (v256 == 12)
  {
    v240 = referenceFrameOutput;
    v248 = inferencesDeliveredOutput;
    HIDWORD(v238) = v22;
    array4 = [MEMORY[0x1E695DF70] array];
    if (v246 >= 1)
    {
      v111 = 0;
      v260 = v246;
      do
      {
        v112 = [EGStillImageSoftISPNode alloc];
        [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP_%d", v111];
        OUTLINED_FUNCTION_15_31();
        OUTLINED_FUNCTION_9_47();
        OUTLINED_FUNCTION_14_33();
        v114 = [v113 initWithName:? stillImageSettings:? nodeConfiguration:? portType:? processingMode:? addGatingInput:? delegate:?];
        [*(v1 + v24[254]) workerQueue];
        [OUTLINED_FUNCTION_8() handleAllInputAsyncOnQueue:?];
        [OUTLINED_FUNCTION_12_0() installNode:?];
        v115 = [(NSArray *)sbufOutputs objectAtIndexedSubscript:v111];
        [v114 sbufInput];
        [OUTLINED_FUNCTION_1_15() connectOutput:v115 toInput:?];
        v116 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
        [v114 processorInput];
        v117 = OUTLINED_FUNCTION_1_15();
        v118 = v116;
        v24 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        [v117 connectOutput:v118 toInput:?];
        [v114 sbufOutput];
        [OUTLINED_FUNCTION_28() addObject:?];
        [array2 addObject:{objc_msgSend(v114, "processingCompleteOutput")}];
        ++v111;
      }

      while (v246 != v111);
    }

    v119 = [EGStillImageDeepFusionNode alloc];
    OUTLINED_FUNCTION_15_31();
    v228 = v263;
    v230 = *(v1 + 128);
    BYTE1(v226) = BYTE4(v251) & 1;
    LOBYTE(v226) = BYTE4(v242);
    v121 = [v120 initWithName:@"DeepFusion" stillImageSettings:? nodeConfiguration:? resourceCoordinator:? numSbufInputs:? processSmartStyleRenderingInput:? processQuadraForEnhancedResolution:? processInferenceInputImage:? portType:? delegate:?];
    [v121 setDeepZoomEnabled:HIDWORD(v259)];
    [v1 installNode:v121];
    v122 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [v121 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v122 toInput:?];
    [v121 referenceFrameInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:referenceFrameOutput toInput:?];
    inferencesDeliveredInput = [v121 inferencesDeliveredInput];
    if ((v251 & 0x100000000) != 0)
    {
      inferenceInputImageOutput = [v121 inferenceInputImageOutput];
    }

    else
    {
      inferenceInputImageOutput = 0;
    }

    OUTLINED_FUNCTION_12_38();
    [OUTLINED_FUNCTION_15() handleAllInputAsyncOnQueue:?];
    v23 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    if (v246 >= 1)
    {
      v122 = 0;
      do
      {
        v164 = [array4 objectAtIndexedSubscript:v122];
        [objc_msgSend(v121 "sbufInputs")];
        [OUTLINED_FUNCTION_1_15() connectOutput:v164 toInput:?];
        [v121 specifyInput:objc_msgSend(objc_msgSend(v121 handledSyncAndAssertQueue:{"sbufInputs"), "objectAtIndexedSubscript:", v122), OUTLINED_FUNCTION_12_38()}];
        v122 = (v122 + 1);
      }

      while (v246 != v122);
    }

    sbufOutput2 = [v121 sbufOutput];
    if ((v242 & 0x100000000) != 0)
    {
      v214 = [EGStillImageInferenceEngineNode alloc];
      OUTLINED_FUNCTION_9_47();
      v122 = [v215 initWithName:@"InferenceProcessingForQuadraForEnhancedRes" stillImageSettings:? portType:? nodeConfiguration:? resourceCoordinator:? inferenceInputBufferType:? delegate:?];
      [*(v1 + 120) inferenceControllerQueue];
      [OUTLINED_FUNCTION_8() handleAllInputAsyncOnQueue:?];
      [OUTLINED_FUNCTION_12_0() installNode:?];
      v216 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
      [v122 processorInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v216 toInput:?];
      quadraForEnhancedResolutionInferenceInputImageOutput = [v121 quadraForEnhancedResolutionInferenceInputImageOutput];
      [v122 sbufInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:quadraForEnhancedResolutionInferenceInputImageOutput toInput:?];
    }

    if ([v121 sbufForEarlyEmissionOutput])
    {
      v165 = [[EGStillImageSampleBufferEmitterNode alloc] initWithName:@"DeepFusionEarlyEmitter" description:@"Deep Fusion Early Output"];
      [OUTLINED_FUNCTION_2_89() installNode:?];
      sbufForEarlyEmissionOutput = [v121 sbufForEarlyEmissionOutput];
      [v122 sbufInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:sbufForEarlyEmissionOutput toInput:?];
      captureCompleteOutput2 = [v122 captureCompleteOutput];
      [OUTLINED_FUNCTION_18_24(captureCompleteOutput2 v168];
    }

    fusionModeOutput = 0;
  }

  else
  {
    v59 = v243;
    if (v243 != 13)
    {
      inferencesDeliveredInput = 0;
      fusionModeOutput = 0;
      inferenceInputImageOutput = 0;
      sbufOutput2 = 0;
      goto LABEL_69;
    }

    HIDWORD(v238) = v22;
    v250 = inferencesDeliveredOutput;
    if (v260)
    {
      v148 = v246;
      LODWORD(v236) = (v246 > 3) & (captureFlags >> 20);
    }

    else
    {
      LODWORD(v236) = 0;
      v148 = v246;
    }

    v179 = [[EGStillImageLearnedFusionRoutingNode alloc] initWithName:@"LearnedFusionRouting" numSampleBufferInputs:v148];
    [v1 installNode:v179];
    if (v148 >= 1)
    {
      v180 = 0;
      do
      {
        v181 = [(NSArray *)sbufOutputs objectAtIndexedSubscript:v180];
        [(NSArray *)[(EGStillImageLearnedFusionRoutingNode *)v179 sampleBufferInputs] objectAtIndexedSubscript:v180];
        [OUTLINED_FUNCTION_1_15() connectOutput:v181 toInput:?];
        ++v180;
      }

      while (v148 != v180);
    }

    array5 = [MEMORY[0x1E695DF70] array];
    [(EGStillImageLearnedFusionRoutingNode *)v179 evZeroOutput];
    [OUTLINED_FUNCTION_15() addObject:?];
    [(EGStillImageLearnedFusionRoutingNode *)v179 longOutput];
    [OUTLINED_FUNCTION_15() addObject:?];
    if ((captureFlags & 0x100000) != 0)
    {
      [(EGStillImageLearnedFusionRoutingNode *)v179 evMinusOutput];
    }

    else
    {
      [(EGStillImageLearnedFusionRoutingNode *)v179 secondEvZeroOutput];
    }

    [OUTLINED_FUNCTION_15() addObject:?];
    array6 = [MEMORY[0x1E695DF70] array];
    v191 = OUTLINED_FUNCTION_21_24(array6, v184, v185, v186, v187, v188, v189, v190, v226, v228, v230, v232, v234, v236, v238, referenceFrameOutput, v242, v243, array, v179, v250, v251, array3, v255, v256, captureFlags, v259, v260, array2, v263, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328);
    if (v191)
    {
      v192 = v191;
      v193 = MEMORY[0];
      do
      {
        for (j = 0; j != v192; ++j)
        {
          if (MEMORY[0] != v193)
          {
            objc_enumerationMutation(array5);
          }

          v195 = *(8 * j);
          v196 = [EGStillImageSoftISPNode alloc];
          v197 = MEMORY[0x1E696AEC0];
          name = [v195 name];
          [v197 stringWithFormat:@"SoftISP_%@"];
          OUTLINED_FUNCTION_9_47();
          OUTLINED_FUNCTION_14_33();
          v199 = [v198 initWithName:? stillImageSettings:? nodeConfiguration:? portType:? processingMode:? addGatingInput:? delegate:?];
          OUTLINED_FUNCTION_10_41([*(v1 + 120) workerQueue]);
          [OUTLINED_FUNCTION_27_1() installNode:?];
          [v199 sbufInput];
          [OUTLINED_FUNCTION_1_15() connectOutput:v195 toInput:?];
          [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
          [OUTLINED_FUNCTION_18_0() processorInput];
          [OUTLINED_FUNCTION_1_15() connectOutput:v195 toInput:?];
          [v199 sbufOutput];
          [OUTLINED_FUNCTION_28() addObject:?];
          v200 = [array2 addObject:{objc_msgSend(v199, "processingCompleteOutput")}];
        }

        v192 = OUTLINED_FUNCTION_21_24(v200, v201, v202, v203, v204, v205, v206, v207, name, v228, v230, v232, v234, v236, v238, v240, v242, v243, array, v246, v248, v251, array3, v255, v256, captureFlags, v259, v260, array2, v263, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329);
      }

      while (v192);
    }

    v208 = [EGStillImageLearnedFusionNRFNode alloc];
    OUTLINED_FUNCTION_9_47();
    v210 = [v209 initWithName:@"LearnedFusion" stillImageSettings:? nodeConfiguration:? provideInferenceInputImageForProcessing:? addSyncErrorRecoveryPorts:? portType:? delegate:?];
    [v210 handleAllInputAsyncOnQueue:OUTLINED_FUNCTION_12_38()];
    if (v260)
    {
      [v210 specifyInput:objc_msgSend(v210 handledSyncAndAssertQueue:{"referenceFrameInput"), OUTLINED_FUNCTION_12_38()}];
    }

    [v210 setProcessSmartStyleRenderingInput:HIDWORD(v256)];
    [v1 installNode:v210];
    v211 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [v210 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v211 toInput:?];
    [v210 referenceFrameInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v240 toInput:?];
    if ([array6 count])
    {
      v212 = 0;
      do
      {
        v213 = [array6 objectAtIndexedSubscript:v212];
        [objc_msgSend(v210 "primarySbufInputs")];
        [OUTLINED_FUNCTION_1_15() connectOutput:v213 toInput:?];
        [v210 specifyInput:objc_msgSend(objc_msgSend(v210 handledSyncAndAssertQueue:{"primarySbufInputs"), "objectAtIndexedSubscript:", v212++), OUTLINED_FUNCTION_12_38()}];
      }

      while ([array6 count] > v212);
    }

    if (v236)
    {
      secondEvZeroOutput = [v246 secondEvZeroOutput];
      v219 = [EGStillImageSoftISPNode alloc];
      [MEMORY[0x1E696AEC0] stringWithFormat:@"SoftISP_%@", objc_msgSend(secondEvZeroOutput, "name")];
      OUTLINED_FUNCTION_9_47();
      OUTLINED_FUNCTION_14_33();
      v221 = [v220 initWithName:? stillImageSettings:? nodeConfiguration:? portType:? processingMode:? addGatingInput:? delegate:?];
      OUTLINED_FUNCTION_12_38();
      [OUTLINED_FUNCTION_28() handleAllInputAsyncOnQueue:?];
      [v1 installNode:v221];
      [v221 sbufInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:secondEvZeroOutput toInput:?];
      v222 = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
      [v221 processorInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:v222 toInput:?];
      attemptErrorRecoveryOutput = [v210 attemptErrorRecoveryOutput];
      [v221 gatingInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:attemptErrorRecoveryOutput toInput:?];
      [array2 addObject:{objc_msgSend(v221, "processingCompleteOutput")}];
      sbufOutput3 = [v221 sbufOutput];
      [v210 hdrErrorRecoveryEVZeroInput];
      [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput3 toInput:?];
    }

    inferenceInputImageOutput = [v210 inferenceInputImageOutput];
    fusionModeOutput = [v210 fusionModeOutput];
    sbufOutput2 = [v210 sbufOutput];
    inferencesDeliveredInput = 0;
    v23 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
  }

  v59 = v243;
  v22 = HIDWORD(v238);
  inferencesDeliveredOutput = v248;
  v58 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
LABEL_69:
  v8 = v59 == 13;
  v64 = 52;
  if (!v8)
  {
    v64 = 0;
  }

  if (v256 == 12)
  {
    v65 = 13;
  }

  else
  {
    v65 = v64;
  }

  v66 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
  if (((v22 | HIDWORD(v255)) & 1) == 0)
  {
    v123 = [EGStillImageDCNode alloc];
    OUTLINED_FUNCTION_11_40();
    LOBYTE(v226) = BYTE4(v259);
    v126 = inferencesDeliveredOutput;
    v127 = [v125 initWithName:@"DistortionCorrection" stillImageSettings:v226 nodeConfiguration:v65 addConfigurationInput:v263 processIDC:*(v1 + v124) processGDC:? deepZoomEnabled:? inputImageBufferType:? portType:? delegate:?];
    OUTLINED_FUNCTION_10_41([*(v1 + 120) workerQueue]);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v22 toInput:?];
    [v127 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput2 toInput:?];
    v128 = v127;
    inferencesDeliveredOutput = v126;
    v66 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
    sbufOutput4 = [v128 sbufOutput];
    v58 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
    sbufOutput2 = sbufOutput4;
  }

  if ((v243 & 0x100000000) != 0)
  {
    v22 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v130 = [[EGStillImageScalerNode alloc] initWithName:@"Scaler" stillImageSettings:*(v1 + 104) nodeConfiguration:*(v1 + 112) resourceCoordinator:*(v1 + 120) deepZoomEnabled:HIDWORD(v259) inputImageBufferType:v65 portType:v263 delegate:*(v1 + v23[255])];
    v131 = v66;
    v132 = inferencesDeliveredOutput;
    v133 = v130;
    OUTLINED_FUNCTION_10_41([*(v1 + 120) workerQueue]);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:&OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer toInput:?];
    [(EGStillImageScalerNode *)v133 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput2 toInput:?];
    v134 = v133;
    inferencesDeliveredOutput = v132;
    v66 = v131;
    sbufOutput5 = [(EGStillImageScalerNode *)v134 sbufOutput];
    v58 = &OBJC_METACLASS___EGStillImageDeepFusionNode;
    sbufOutput2 = sbufOutput5;
  }

  if ((v251 & 0x100000000) != 0)
  {
    if (!inferenceInputImageOutput)
    {
      return 4294954516;
    }

    v67 = objc_alloc(&v58[51]);
    v22 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    OUTLINED_FUNCTION_9_47();
    v69 = [v68 initWithName:@"InferenceProcessing" stillImageSettings:? portType:? nodeConfiguration:? resourceCoordinator:? inferenceInputBufferType:? delegate:?];
    OUTLINED_FUNCTION_10_41([*(v1 + 120) inferenceControllerQueue]);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:&OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer toInput:?];
    [v69 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:inferenceInputImageOutput toInput:?];
    inferencesDeliveredOutput = [v69 inferencesDeliveredOutput];
  }

  if (inferencesDeliveredInput)
  {
    if (!inferencesDeliveredOutput)
    {
      return 4294954516;
    }

    [OUTLINED_FUNCTION_27_1() connectOutput:? toInput:?];
  }

  v70 = array3;
  v71 = [array3 count];
  if (v71)
  {
    if (fusionModeOutput)
    {
      v79 = OUTLINED_FUNCTION_20_19(v71, v72, v73, v74, v75, v76, v77, v78, v226, v228, v230, v232, v234, v236, v238, v240, v242, v243, array, v246, v248, v251, array3, v255, v256, captureFlags, v259, v260, array2, v263, v264, v266, v268, v270, v272, v274, v276, v278, v280, v282, v284, v286, v288, v290, v292, v294);
      if (v79)
      {
        v22 = v79;
        inferencesDeliveredOutput = MEMORY[0];
        do
        {
          for (k = 0; k != v22; ++k)
          {
            if (MEMORY[0] != inferencesDeliveredOutput)
            {
              objc_enumerationMutation(v70);
            }

            v81 = [v1 connectOutput:fusionModeOutput toInput:*(8 * k)];
          }

          v22 = OUTLINED_FUNCTION_20_19(v81, v82, v83, v84, v85, v86, v87, v88, v226, v229, v231, v233, v235, v237, v239, v241, v242, v244, array, v247, v249, v252, v254, v255, v256, v258, v259, v261, array2, v263, v265, v267, v269, v271, v273, v275, v277, v279, v281, v283, v285, v287, v289, v291, v293, v295);
        }

        while (v22);
      }

      goto LABEL_93;
    }

    return 4294954516;
  }

LABEL_93:
  if (HIDWORD(v259))
  {
    v136 = [[EGStillImageDeepZoomNode alloc] initWithName:@"DeepZoom" stillImageSettings:*(v1 + 104) portType:v263 delegate:*(v1 + 128)];
    v137 = OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_10_41(v137);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v22 toInput:?];
    [inferencesDeliveredOutput sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput2 toInput:?];
    sbufOutput2 = [inferencesDeliveredOutput sbufOutput];
  }

  if (HIDWORD(v255))
  {
    v138 = objc_alloc(&v66[58]);
    OUTLINED_FUNCTION_11_40();
    LOBYTE(v226) = BYTE4(v259);
    v141 = [v140 initWithName:@"DistortionCorrection" stillImageSettings:v226 nodeConfiguration:1 addConfigurationInput:v263 processIDC:*(v1 + v139) processGDC:? deepZoomEnabled:? inputImageBufferType:? portType:? delegate:?];
    v142 = OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_10_41(v142);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v22 toInput:?];
    [inferencesDeliveredOutput sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput2 toInput:?];
    sbufOutput2 = [inferencesDeliveredOutput sbufOutput];
  }

  requestedSettings = [*(v1 + 104) requestedSettings];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([objc_msgSend(*(v1 + 104) "requestedSettings")] != 0) & BYTE4(v242)) == 1)
  {
    v175 = [EGStillImageSemanticStyleWithDeepFusionNode alloc];
    OUTLINED_FUNCTION_7_55();
    v177 = [v176 initWithName:@"DeepFusionForSemStyles" stillImageSettings:? resourceCoordinator:? portType:? delegate:?];
    v178 = OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_10_41(v178);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:v22 toInput:?];
    [requestedSettings sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput2 toInput:?];
    sbufOutput2 = [requestedSettings sbufOutput];
  }

  if (HIDWORD(v256))
  {
    v22 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
    v143 = [[EGStillImageSmartStyleRenderingNode alloc] initWithName:@"SmartStyleRendering" stillImageSettings:*(v1 + 104) portType:v263 delegate:*(v1 + 128)];
    -[EGQueueManagementNode handleAllInputAsyncOnQueue:](v143, "handleAllInputAsyncOnQueue:", [*(v1 + 120) workerQueue]);
    [v1 installNode:v143];
    requestedSettings = [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [(EGStillImageSmartStyleRenderingNode *)v143 processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:requestedSettings toInput:?];
    [(EGStillImageSmartStyleRenderingNode *)v143 sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput2 toInput:?];
    sbufOutput2 = [(EGStillImageSmartStyleRenderingNode *)v143 sbufOutput];
    v144 = [EGStillImagePiecemealEncodingNode alloc];
    OUTLINED_FUNCTION_7_55();
    v146 = [v145 initWithName:@"piecemealEncodingSmartStyleAuxImages" stillImageSettings:? resourceCoordinator:? portType:? mode:? delegate:?];
    v147 = OUTLINED_FUNCTION_8_46();
    OUTLINED_FUNCTION_10_41(v147);
    [OUTLINED_FUNCTION_27_1() installNode:?];
    [(EGStillImageFusionGraph *)v1 _processorControllerOutputForType:?];
    [OUTLINED_FUNCTION_18_0() processorInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:&OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer toInput:?];
    [(EGStillImageSmartStyleRenderingNode *)v143 sbufOutput];
    [OUTLINED_FUNCTION_18_0() sbufInput];
    [OUTLINED_FUNCTION_1_15() connectOutput:&OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer toInput:?];
    v90 = array;
    [array addObject:{objc_msgSend(requestedSettings, "encodingCompleteOutput")}];
  }

  else
  {
    v90 = array;
  }

  v91 = [EGStillImageInferenceMergingNode alloc];
  OUTLINED_FUNCTION_7_55();
  v93 = [v92 initWithName:@"InferenceMerging" stillImageSettings:? resourceCoordinator:?];
  v94 = OUTLINED_FUNCTION_8_46();
  OUTLINED_FUNCTION_10_41(v94);
  [OUTLINED_FUNCTION_27_1() installNode:?];
  [requestedSettings sbufInput];
  [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput2 toInput:?];
  v95 = [[EGStillImageSampleBufferEmitterNode alloc] initWithName:@"SampleBufferEmitter" description:@"Final fused image"];
  [OUTLINED_FUNCTION_2_89() installNode:?];
  sbufOutput6 = [requestedSettings sbufOutput];
  [v22 sbufInput];
  [OUTLINED_FUNCTION_1_15() connectOutput:sbufOutput6 toInput:?];
  [v90 addObject:{objc_msgSend(v22, "captureCompleteOutput")}];
  v97 = [array2 count];
  if (v97)
  {
    v98 = [[EGStillImageSoftISPProcessingCompleteNode alloc] initWithName:@"SoftISPProcessingComplete" resourceCoordinator:*(v1 + 120) numInputs:v97];
    [OUTLINED_FUNCTION_27_1() installNode:?];
    if (v97 >= 1)
    {
      v99 = 0;
      do
      {
        [array2 objectAtIndexedSubscript:v99];
        [objc_msgSend(OUTLINED_FUNCTION_18_0() "processingCompleteInputs")];
        [OUTLINED_FUNCTION_1_15() connectOutput:v97 toInput:?];
        ++v99;
      }

      while ((v97 & 0x7FFFFFFF) != v99);
    }
  }

  v100 = -[EGStillImageCaptureCompleteNode initWithName:numInputs:]([EGStillImageCaptureCompleteNode alloc], "initWithName:numInputs:", @"CaptureComplete", [v90 count]);
  [OUTLINED_FUNCTION_27_1() installNode:?];
  if ([v90 count])
  {
    v101 = 0;
    do
    {
      v102 = [v90 objectAtIndexedSubscript:v101];
      [(NSArray *)[(EGStillImageCaptureCompleteNode *)v100 captureCompleteInputs] objectAtIndexedSubscript:v101];
      [OUTLINED_FUNCTION_1_15() connectOutput:v102 toInput:?];
      ++v101;
    }

    while ([v90 count] > v101);
  }

  return [EGStillImageProcessorControllerSourceNode enqueueProcessorControllersToGraph:v1 fromResourceCoordinator:*(v1 + 120)];
}

- (id)_processorControllerOutputForType:(id *)result
{
  if (result)
  {
    v3 = result;
    [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
    v4 = [OUTLINED_FUNCTION_8() objectForKeyedSubscript:?];
    if (!v4)
    {
      v5 = [[EGStillImageProcessorControllerSourceNode alloc] initWithType:a2];
      [OUTLINED_FUNCTION_18_0() installNode:0];
      [v3[17] setObject:0 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedLongLong:", a2)}];
    }

    return [v4 processorControllerOutput];
  }

  return result;
}

@end