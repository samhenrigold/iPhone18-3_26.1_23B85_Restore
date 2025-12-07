@interface FigCaptureStillImageUnifiedBracketingSinkPipeline
+ (void)initialize;
- (FigCaptureStillImageUnifiedBracketingSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type highResStillImageDimensions:(id)dimensions supplementalPointCloudCaptureDevice:(id)captureDevice supplementalPointCloudSourceOutput:(id)output captureStatusDelegate:(id)delegate inferenceScheduler:(id)self0 cinematicFramingStatesProvider:(id)self1 graph:(id)self2 name:(id)self3;
- (uint64_t)_addMattingInferenceToNode:(unsigned int)node mattingVersion:(uint64_t)version refinedDepthEnabled:(unsigned int)enabled mainImageDownscalingFactor:(uint64_t)factor enabledSemantics:(void *)semantics metalCommandQueue:(char)queue mattingsensorConfigurationsByPortType:(float)type clientIsCameraOrDerivative:(float)self0 requiredAdditionalInferenceOutputBuffers:(unsigned int)self1 zoomFactorForPortrait:;
- (uint64_t)_buildRedEyeReductionSubPipelineWithName:(uint64_t)name pipelineStage:(uint64_t)stage graph:(uint64_t)graph sensorConfigurationsByPortType:(uint64_t)type inferenceScheduler:(BWNodeInput *)scheduler subPipelineInputOut:(BWNodeOutput *)out subPipelineOutputOut:;
- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)result graph:(uint64_t)graph nodeConfiguration:(void *)configuration stillImageSinkPipelineWithConfiguration:(uint64_t)withConfiguration sensorConfigurationsByPortType:(void *)type supportsScaling:(uint64_t)scaling provideMeteorHeadroom:(void *)headroom providePostEncodeInferences:(void *)inferences semanticDevelopmentVersion:(char)version constituentPhotoDeliveryEnabled:(int)self0 demosaicedRawEnabled:(unsigned __int8)self1 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)self2 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)self3 inferenceScheduler:(uint64_t)self4 subPipelineInputOut:(uint64_t)self5 subPipelineOutputOut:(uint64_t)self6 cameraSupportsFlash:(unsigned __int8)self7 cinematicFramingStatesProvider:(void *)self8;
- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)configuration captureDevice:(uint64_t)device sourceOutputsByPortType:(uint64_t)type highResStillImageDimensions:(uint64_t)dimensions supplementalPointCloudCaptureDevice:(uint64_t)captureDevice supplementalPointCloudSourceOutput:(uint64_t)output captureStatusDelegate:(uint64_t)delegate inferenceScheduler:(void *)self0 cinematicFramingStatesProvider:(void *)self1 graph:;
- (void)_addLandmarksInferenceToNode:(void *)result;
- (void)dealloc;
@end

@implementation FigCaptureStillImageUnifiedBracketingSinkPipeline

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCaptureStillImageUnifiedBracketingSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type highResStillImageDimensions:(id)dimensions supplementalPointCloudCaptureDevice:(id)captureDevice supplementalPointCloudSourceOutput:(id)output captureStatusDelegate:(id)delegate inferenceScheduler:(id)self0 cinematicFramingStatesProvider:(id)self1 graph:(id)self2 name:(id)self3
{
  v23.receiver = self;
  v23.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  v19 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v23, sel_initWithGraph_name_sinkID_, graph, name, [objc_msgSend(configuration "sinkConfiguration")]);
  v20 = v19;
  if (v19)
  {
    v22 = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v19 _buildStillImageSinkPipelineWithConfiguration:configuration captureDevice:device sourceOutputsByPortType:type highResStillImageDimensions:dimensions supplementalPointCloudCaptureDevice:captureDevice supplementalPointCloudSourceOutput:output captureStatusDelegate:delegate inferenceScheduler:scheduler cinematicFramingStatesProvider:provider graph:graph];
    if (v22)
    {
      [FigCaptureStillImageUnifiedBracketingSinkPipeline initWithConfiguration:v22 captureDevice:v20 sourceOutputsByPortType:? highResStillImageDimensions:? supplementalPointCloudCaptureDevice:? supplementalPointCloudSourceOutput:? captureStatusDelegate:? inferenceScheduler:? cinematicFramingStatesProvider:? graph:? name:?];
      return 0;
    }
  }

  return v20;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)configuration captureDevice:(uint64_t)device sourceOutputsByPortType:(uint64_t)type highResStillImageDimensions:(uint64_t)dimensions supplementalPointCloudCaptureDevice:(uint64_t)captureDevice supplementalPointCloudSourceOutput:(uint64_t)output captureStatusDelegate:(uint64_t)delegate inferenceScheduler:(void *)self0 cinematicFramingStatesProvider:(void *)self1 graph:
{
  result = MEMORY[0x1EEE9AC00](self, a2, configuration, device);
  v577 = v18;
  v579 = v19;
  if (!result)
  {
    return result;
  }

  v20 = v17;
  v21 = v16;
  v22 = v15;
  v23 = v14;
  v24 = v13;
  v25 = result;
  v759[0] = 0;
  v758 = 0;
  sinkConfiguration = [v13 sinkConfiguration];
  objc_opt_class();
  sinkConfiguration2 = 0;
  if (objc_opt_isKindOfClass())
  {
    sinkConfiguration2 = [v24 sinkConfiguration];
  }

  if ([sinkConfiguration2 depthDataDeliveryEnabled] && objc_msgSend(v24, "deviceType") == 9)
  {
    goto LABEL_695;
  }

  v543 = v22;
  obj = v23;
  *(v25 + 48) = [v24 pipelineStagePriority];
  *(v25 + 52) = [v24 inferencePriority];
  v28 = objc_alloc_init(BWStillImageNodeConfiguration);
  [OUTLINED_FUNCTION_25_0() stillImageSinkPipelineProcessingMode];
  [OUTLINED_FUNCTION_7() setStillImageProcessingMode:?];
  v29 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
  [OUTLINED_FUNCTION_7() setMetalCommandQueue:?];
  [v24 pipelineStagePriority];
  FigDispatchQueueCreateWithPriority();
  [objc_msgSend(OUTLINED_FUNCTION_49_8() "metalCommandQueue")];
  dispatch_release(sinkConfiguration);
  v30 = v23;
  [v23 setFigThreadPriority:*(v25 + 48)];
  [v24 depthDataType];
  [OUTLINED_FUNCTION_7() setDepthDataType:?];
  [v24 pearlModuleType];
  [OUTLINED_FUNCTION_7() setPearlModuleType:?];
  [v23 setInferenceScheduler:delegate];
  v583 = v23;
  [v23 setMaxLossyCompressionLevel:{objc_msgSend(v24, "maxLossyCompressionLevel")}];
  v31 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v23];
  v32 = 0;
  depthDataType = [v24 depthDataType];
  if (depthDataType == 7)
  {
    v33 = *off_1E798A0C8;
    v34 = [v30 objectForKeyedSubscript:*off_1E798A0C8];
    v756 = v33;
    v757 = v34;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v757 forKeys:&v756 count:1];
    [v31 setObject:0 forKeyedSubscript:v33];
  }

  v600 = v31;
  allKeys = [v31 allKeys];
  v36 = v30;
  v37 = allKeys;
  allKeys2 = [v36 allKeys];
  v529 = v32;
  v541 = v20;
  if ([v36 count] >= 2)
  {
    switch([v24 deviceType])
    {
      case 4u:
        firstObject = *off_1E798A0C0;
        v755 = *off_1E798A0D8;
        v40 = MEMORY[0x1E695DEC8];
        v41 = &v755;
        goto LABEL_14;
      case 6u:
        firstObject = *off_1E798A0E0;
        v597 = *off_1E798A0E8;
        v754 = *off_1E798A0E8;
        v44 = MEMORY[0x1E695DEC8];
        v45 = &v754;
        goto LABEL_20;
      case 8u:
        firstObject = *off_1E798A0D0;
        v752 = *off_1E798A0C0;
        v40 = MEMORY[0x1E695DEC8];
        v41 = &v752;
LABEL_14:
        v43 = 1;
        goto LABEL_18;
      case 9u:
        firstObject = *off_1E798A0C0;
        v46 = *off_1E798A0D8;
        v751[0] = *off_1E798A0D0;
        v751[1] = v46;
        v40 = MEMORY[0x1E695DEC8];
        v41 = v751;
        v43 = 2;
LABEL_18:
        v42 = [v40 arrayWithObjects:v41 count:v43];
        v597 = 0;
        v591 = v42;
        goto LABEL_21;
      case 0xCu:
        firstObject = *off_1E798A0F8;
        v597 = *off_1E798A0E8;
        v753 = *off_1E798A0E8;
        v44 = MEMORY[0x1E695DEC8];
        v45 = &v753;
        goto LABEL_20;
      case 0xDu:
        firstObject = *off_1E798A0C0;
        v597 = *off_1E798A0C8;
        v750 = *off_1E798A0C8;
        v44 = MEMORY[0x1E695DEC8];
        v45 = &v750;
LABEL_20:
        v591 = [v44 arrayWithObjects:v45 count:1];
        v42 = 0;
LABEL_21:
        v47 = [MEMORY[0x1E695DFD8] setWithArray:allKeys2];
        v48 = [MEMORY[0x1E695DFA8] set];
        v32 = v48;
        if (firstObject)
        {
          [v48 addObject:firstObject];
        }

        if (v42)
        {
          [v32 addObjectsFromArray:v42];
        }

        if (v597)
        {
          [v32 addObject:?];
        }

        if ([v47 isEqualToSet:v32])
        {
          goto LABEL_28;
        }

        goto LABEL_695;
      default:
        goto LABEL_695;
    }
  }

  firstObject = [(BWStillImageConditionalRouterNode *)v37 firstObject];
  v749 = firstObject;
  v591 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v749 count:1];
  if (!firstObject)
  {
    goto LABEL_695;
  }

  v597 = 0;
  v42 = 0;
LABEL_28:
  v546 = v21;
  v605 = v42;
  v574 = firstObject;
  v582 = v37;
  v527 = allKeys2;
  v584 = sinkConfiguration2;
  v607 = v25;
  +[FigCaptureCameraParameters sharedInstance];
  sensorIDStringsByPortType = [OUTLINED_FUNCTION_25_0() sensorIDStringsByPortType];
  cameraInfoByPortType = [v24 cameraInfoByPortType];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  outputStillImageDimensions = [v24 outputStillImageDimensions];
  v52 = outputStillImageDimensions > 0 && SHIDWORD(outputStillImageDimensions) > 0;
  v619 = v52;
  gdcInDCProcessorOutputCropDimensions = [v24 gdcInDCProcessorOutputCropDimensions];
  v745 = 0u;
  v746 = 0u;
  v55 = gdcInDCProcessorOutputCropDimensions > 0 && SHIDWORD(gdcInDCProcessorOutputCropDimensions) > 0;
  v585 = v55;
  v747 = 0uLL;
  v748 = 0uLL;
  v56 = OUTLINED_FUNCTION_28_10();
  v617 = v32;
  if (v56)
  {
    v57 = v56;
    v616 = 0;
    v58 = 0;
    v59 = *v746;
    do
    {
      v60 = 0;
      do
      {
        if (*v746 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v745 + 1) + 8 * v60);
        v62 = [sensorIDStringsByPortType objectForKeyedSubscript:v61];
        [dictionary setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:]([BWSensorConfiguration alloc] forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:", v61, v62, objc_msgSend(v32, "sensorIDDictionaryForPortType:sensorIDString:", v61, v62), objc_msgSend(cameraInfoByPortType, "objectForKeyedSubscript:", v61)), v61}];
        if (v619)
        {
          v32 = v617;
          if ((objc_msgSend_isEqualToString_(v61) & 1) == 0 && (objc_msgSend_isEqualToString_(v61) & 1) == 0)
          {
            v63 = [objc_msgSend(obj objectForKeyedSubscript:{v61), "formatRequirements"}];
            width = [v63 width];
            v65 = width;
            if (v58 < 1 || v616 <= 0)
            {
              height = [v63 height];
              v616 = height;
              v68 = v65 < 1 || height <= 0;
              v58 = v65;
              if (v68)
              {
                goto LABEL_643;
              }
            }

            else if (v58 != width || v616 != [v63 height])
            {
              goto LABEL_643;
            }
          }
        }

        else
        {
          v32 = v617;
        }

        ++v60;
      }

      while (v57 != v60);
      v69 = OUTLINED_FUNCTION_28_10();
      v57 = v69;
    }

    while (v69);
  }

  else
  {
    v616 = 0;
    v58 = 0;
  }

  v612 = v58;
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v741 = 0u;
  v742 = 0u;
  v743 = 0u;
  v744 = 0u;
  OUTLINED_FUNCTION_39_11();
  v71 = dictionary;
  v76 = OUTLINED_FUNCTION_37_2(v72, v73, v74, v75);
  v77 = v607;
  if (v76)
  {
    v78 = v76;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        OUTLINED_FUNCTION_42();
        if (!v107)
        {
          objc_enumerationMutation(dictionary);
        }

        v80 = *(*(&v741 + 1) + 8 * i);
        if ([v591 containsObject:v80])
        {
          [dictionary2 setObject:objc_msgSend(dictionary forKeyedSubscript:{"objectForKeyedSubscript:", v80), v80}];
        }
      }

      OUTLINED_FUNCTION_39_11();
      v78 = OUTLINED_FUNCTION_37_2(v81, v82, v83, v84);
    }

    while (v78);
  }

  firstObject2 = [v591 firstObject];
  v575 = [dictionary2 objectForKeyedSubscript:?];
  v85 = [v600 objectForKeyedSubscript:v597];
  isEqualToString = objc_msgSend_isEqualToString_(v597);
  v556 = dictionary2;
  v623 = [v24 depthDataType] == 3 && objc_msgSend(v24, "pearlModuleType") == 2;
  v86 = v584;
  bravoConstituentPhotoDeliveryEnabled = [v584 bravoConstituentPhotoDeliveryEnabled];
  deferredProcessingSupported = [v24 deferredProcessingSupported];
  stillImageSinkPipelineProcessingMode = [v24 stillImageSinkPipelineProcessingMode];
  depthDataDeliveryEnabled = [v584 depthDataDeliveryEnabled];
  depthDataType2 = [v24 depthDataType];
  filterRenderingEnabled = [v584 filterRenderingEnabled];
  v90 = 0.0;
  v588 = depthDataDeliveryEnabled;
  if (depthDataDeliveryEnabled)
  {
    [v579 requestedZoomFactorRelativeToPortType:{objc_msgSend(v575, "portType")}];
    v90 = v91;
  }

  if ([v24 highQualityPhotoCaptureForVideoFormatEnabled])
  {
    if ((depthDataDeliveryEnabled | bravoConstituentPhotoDeliveryEnabled))
    {
      stillImageStabilizationSupported = 0;
    }

    else
    {
      stillImageStabilizationSupported = 2;
    }
  }

  else
  {
    stillImageStabilizationSupported = [v24 stillImageStabilizationSupported];
  }

  v539 = stillImageSinkPipelineProcessingMode != 1;
  v592 = stillImageSinkPipelineProcessingMode == 1;
  learnedNRSupported = [v24 learnedNRSupported];
  v564 = stillImageStabilizationSupported == 2;
  deepFusionSupported = [v24 deepFusionSupported];
  v573 = stillImageStabilizationSupported;
  v538 = stillImageStabilizationSupported == 1;
  digitalFlashCaptureEnabled = [v584 digitalFlashCaptureEnabled];
  [v24 depthDataType];
  portraitEffectsMatteDeliveryEnabled = [v584 portraitEffectsMatteDeliveryEnabled];
  v93 = (portraitEffectsMatteDeliveryEnabled & 1) != 0 || [objc_msgSend(v24 "enabledSemanticSegmentationMatteURNs")] != 0;
  if ([v617 personSemanticsVersion])
  {
    personSemanticsVersion = [v617 personSemanticsVersion];
  }

  else
  {
    personSemanticsVersion = 3;
  }

  Major = BWInferenceVersionMakeMajor(personSemanticsVersion);
  v558 = stillImageSinkPipelineProcessingMode;
  v576 = v93;
  if (v93)
  {
    v95 = [(BWInferenceConfiguration *)[BWPersonSemanticsConfiguration alloc] initWithInferenceType:104];
    [(BWInferenceConfiguration *)v95 setPriority:*(v607 + 52)];
    if (portraitEffectsMatteDeliveryEnabled)
    {
      [(BWPersonSemanticsConfiguration *)v95 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v95 enabledSemantics]| 1];
    }

    enabledSemanticSegmentationMatteURNs = [v24 enabledSemanticSegmentationMatteURNs];
    if ([enabledSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917E0]])
    {
      [(BWPersonSemanticsConfiguration *)v95 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v95 enabledSemantics]| 2];
    }

    enabledSemanticSegmentationMatteURNs2 = [v24 enabledSemanticSegmentationMatteURNs];
    if ([enabledSemanticSegmentationMatteURNs2 containsObject:*MEMORY[0x1E69917E8]])
    {
      [(BWPersonSemanticsConfiguration *)v95 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v95 enabledSemantics]| 8];
    }

    enabledSemanticSegmentationMatteURNs3 = [v24 enabledSemanticSegmentationMatteURNs];
    if ([enabledSemanticSegmentationMatteURNs3 containsObject:*MEMORY[0x1E69917F8]])
    {
      [(BWPersonSemanticsConfiguration *)v95 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v95 enabledSemantics]| 0x10];
    }

    supportedSemanticSegmentationMatteURNs = [v24 supportedSemanticSegmentationMatteURNs];
    v100 = *MEMORY[0x1E69917D8];
    if (![supportedSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917D8]])
    {
      goto LABEL_108;
    }

    if ((Major & 0xFFFC) == 0)
    {
      BWInferenceVersionMakeMajor(4);
    }

    if ([objc_msgSend(v24 "enabledSemanticSegmentationMatteURNs")])
    {
      v101 = v95;
      [(BWPersonSemanticsConfiguration *)v95 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v95 enabledSemantics]| 0x20];
    }

    else
    {
LABEL_108:
      v101 = v95;
    }

    v93 = v576;
  }

  else
  {
    v101 = 0;
  }

  v559 = depthDataDeliveryEnabled & filterRenderingEnabled;
  v525 = v101;
  if (depthDataDeliveryEnabled)
  {
    [v575 portType];
    [OUTLINED_FUNCTION_49_8() sensorIDString];
    v102 = OUTLINED_FUNCTION_6_44();
    *&v103 = v90;
    v104 = [v102 sdofRenderingVersionForPortType:v101 sensorIDString:v103 zoomFactor:?];
  }

  else
  {
    v104 = 0;
  }

  learnedMattingVersion = [v617 learnedMattingVersion];
  v106 = learnedMattingVersion;
  if ((v93 & v588) == 1)
  {
    v107 = learnedMattingVersion <= 0 || depthDataType == 7;
    v108 = !v107;
    v545 = v108 | v559;
  }

  else
  {
    v545 = 0;
  }

  if ([v24 clientIsCameraOrDerivative])
  {
    [v24 stillImageStabilizationSupported];
    OUTLINED_FUNCTION_23_13();
    if (v107)
    {
      v110 = 0;
    }

    else
    {
      v110 = v109;
    }

    v549 = v110;
  }

  else
  {
    v549 = 0;
  }

  if (v605)
  {
    v111 = v588;
  }

  else
  {
    v111 = 0;
  }

  v563 = v111;
  if ([v24 allowsMultipleInflightCaptures])
  {
    v587 = 1;
    if ([v24 responsiveShutterSupported])
    {
      if ([v24 responsiveShutterEnabled])
      {
        v112 = 2;
      }

      else
      {
        v112 = 1;
      }

      v587 = v112;
    }

    if ([v24 clientIsCameraOrDerivative])
    {
      [v24 responsiveShutterSupported];
      OUTLINED_FUNCTION_41_10();
      if (v107)
      {
        v114 = v113;
      }

      else
      {
        v114 = v587;
      }

      v587 = v114;
    }
  }

  else
  {
    v587 = 0;
  }

  v533 = v104;
  redEyeReductionVersion = [v24 redEyeReductionVersion];
  if (redEyeReductionVersion > 0)
  {
    v115 = bravoConstituentPhotoDeliveryEnabled;
  }

  else
  {
    v115 = 0;
  }

  v520 = v115;
  if (v93)
  {
    [v575 portType];
    v116 = [v617 mattingVersionForPortType:v106 sensorIDString:{objc_msgSend(OUTLINED_FUNCTION_49_8(), "sensorIDString")}];
    if (v116)
    {
      v119 = 0;
    }

    else
    {
      v119 = portraitEffectsMatteDeliveryEnabled;
    }

    if (v119 == 1)
    {
      v121 = qword_1EB58E298;
      v122 = 1067;
      goto LABEL_712;
    }

    v120 = v116;
    if ([objc_msgSend(v24 "enabledSemanticSegmentationMatteURNs")])
    {
      v77 = v607;
      v86 = v584;
      if (v120 <= 1)
      {
        v121 = qword_1EB58E298;
        v122 = 1070;
LABEL_712:
        v759[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v121, 0xFFFFCE14, "<<<< FigCaptureStillImageUnifiedBracketingSinkPipeline >>>>", v122, v11, v117, v118, v509);
        goto LABEL_643;
      }
    }

    else
    {
      v77 = v607;
      v86 = v584;
    }
  }

  else
  {
    v120 = 0;
  }

  v531 = v106;
  v522 = v120;
  if (v588)
  {
    [v575 portType];
    [OUTLINED_FUNCTION_49_8() sensorIDString];
    v123 = OUTLINED_FUNCTION_6_44();
    *&v124 = v90;
    v528 = [v123 disparityRefinementTypeForPortType:v106 sensorIDString:v124 zoomFactor:?] == 1;
  }

  else
  {
    v528 = 0;
  }

  if (isEqualToString)
  {
    v125 = [v617 personSemanticsVersion] > 4 && v623;
  }

  else
  {
    v125 = 0;
  }

  OUTLINED_FUNCTION_23_13();
  v126 = v107;
  v535 = v126;
  allowedToModifyInputBuffers = [v24 allowedToModifyInputBuffers];
  semanticRenderingVersion = [v24 semanticRenderingVersion];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v554 = semanticRenderingVersion;
  if (semanticRenderingVersion)
  {
    semanticDevelopmentVersion = [v24 semanticDevelopmentVersion];
  }

  else
  {
    semanticDevelopmentVersion = 0;
  }

  demosaicedRawEnabled = [v86 demosaicedRawEnabled];
  if (demosaicedRawEnabled)
  {
    [dictionary3 setObject:BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw() forKeyedSubscript:&unk_1F2244728];
  }

  if (v125)
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:0x1F219E750];
    BWInferenceLowResPersonInstanceMaskKeys();
    [OUTLINED_FUNCTION_4() addObjectsFromArray:?];
    v130 = array;
    v93 = v576;
    [dictionary3 setObject:v130 forKeyedSubscript:&unk_1F2244740];
  }

  v537 = allowedToModifyInputBuffers;
  if ([objc_msgSend(v24 "portTypesWithGeometricDistortionCorrectionEnabled")])
  {
    if ((v588 ^ 1 | bravoConstituentPhotoDeliveryEnabled))
    {
      v131 = 1;
    }

    else
    {
      v131 = [objc_msgSend(v24 "portTypesWithGeometricDistortionCorrectionEnabled")];
    }

    v132 = [v24 gdcInDCProcessorSupported] & v131;
    v93 = v576;
  }

  else
  {
    v132 = 0;
  }

  v578 = learnedNRSupported & v564;
  v536 = [objc_msgSend(v24 "portTypesWithIntelligentDistortionCorrectionEnabled")] != 0;
  v548 = v125;
  v534 = v619 & v132;
  if (v612 >= [v24 rawSensorDimensions] && (v616 >= (objc_msgSend(v24, "rawSensorDimensions") >> 32) ? (v133 = v619 & v132) : (v133 = 0), v133 == 1))
  {
    if (v585)
    {
      gdcInDCProcessorOutputCropDimensions2 = [v24 gdcInDCProcessorOutputCropDimensions];
    }

    else
    {
      gdcInDCProcessorOutputCropDimensions2 = [v24 outputStillImageDimensions];
    }

    v523 = gdcInDCProcessorOutputCropDimensions2;
  }

  else
  {
    v523 = 0;
  }

  if ([v24 clientIsCameraOrDerivative] && +[BWInferenceEngine isNeuralEngineSupported](BWInferenceEngine, "isNeuralEngineSupported"))
  {
    captureTimePhotosCurationSupported = [v24 captureTimePhotosCurationSupported];
  }

  else
  {
    captureTimePhotosCurationSupported = 0;
  }

  if (!v93)
  {
    v136 = 0;
LABEL_200:
    v137 = v573;
    goto LABEL_201;
  }

  clientIsCameraOrDerivative = [v24 clientIsCameraOrDerivative];
  if (clientIsCameraOrDerivative)
  {
    v136 = 0;
  }

  else
  {
    v136 = 7;
  }

  if (clientIsCameraOrDerivative)
  {
    goto LABEL_200;
  }

  v137 = v573;
  if (((bravoConstituentPhotoDeliveryEnabled ^ 1) & 1) == 0)
  {
    v136 = 8 * [v600 count] - 1;
  }

LABEL_201:
  v586 = bravoConstituentPhotoDeliveryEnabled | v563;
  v571 = (deepFusionSupported | v578) & v592 ^ 1;
  v521 = v136;
  if (v587 == 2)
  {
    responsiveShutterSupported = [v24 responsiveShutterSupported];
  }

  else
  {
    responsiveShutterSupported = 0;
  }

  [v579 setStillImageCaptureEnabled:1];
  [v584 irisFrameHarvestingEnabled];
  [OUTLINED_FUNCTION_17() setIrisFrameHarvestingEnabled:?];
  [v24 noiseReductionAndFusionScheme];
  [OUTLINED_FUNCTION_17() setStillImageFusionScheme:?];
  [v579 setUnifiedBracketingMode:v137];
  [v24 sifrStillImageCaptureEnabledIfAvailable];
  [OUTLINED_FUNCTION_17() setSifrStillImageCaptureEnabledIfAvailable:?];
  [v24 deepFusionSupported];
  [OUTLINED_FUNCTION_17() setDeepFusionEnabled:?];
  [v579 setLearnedNRMode:v578];
  [v579 setDigitalFlashEnabled:digitalFlashCaptureEnabled & v571];
  [v579 setRedSaturationMitigationEnabled:{objc_msgSend(v584, "optimizesImagesForOfflineVideoStabilization") ^ 1}];
  [v579 registerForAEMatrixMetadata];
  [v579 setRedEyeReductionEnabled:redEyeReductionVersion > 0];
  if (v605)
  {
    v138 = v588 & (bravoConstituentPhotoDeliveryEnabled ^ 1);
  }

  else
  {
    v138 = 0;
  }

  v524 = v138;
  [v579 setDisparityGenerationFromReferenceFramesSupported:?];
  [v579 setSupplementalPointCloudCaptureDevice:v577];
  v139 = [OUTLINED_FUNCTION_14_22() pipelineStageWithName:@"com.apple.coremedia.capture.stillimage" priority:?];
  v140 = v139;
  v613 = v139;
  if ((bravoConstituentPhotoDeliveryEnabled | v563))
  {
    [OUTLINED_FUNCTION_14_22() pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.ub.default" priority:?];
    v530 = [OUTLINED_FUNCTION_14_22() pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.ub.telephoto" priority:?];
    v561 = [OUTLINED_FUNCTION_14_22() pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.multi" priority:?];
    v141 = v140;
    v593 = v140;
  }

  else
  {
    v141 = v139;
    v561 = v139;
    v530 = v139;
    v593 = v139;
    if (v587 == 2)
    {
      v141 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.scale-and-encode" priority:v77[12]];
      if (responsiveShutterSupported)
      {
        v593 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.buffer-servicing" priority:v77[12]];
        OUTLINED_FUNCTION_48_11();
      }

      else
      {
        OUTLINED_FUNCTION_48_11();
        v593 = v142;
      }
    }
  }

  v553 = v141;
  v551 = bravoConstituentPhotoDeliveryEnabled;
  v557 = v132;
  if (dword_1EB58E2A0)
  {
    LODWORD(v720) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v144 = &selRef__waitForPreviewGenerationGroupToComplete;
  if (v85)
  {
    v145 = [BWAttachedMediaSplitNode alloc];
    v737 = @"Depth";
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v737 count:1];
    v146 = [OUTLINED_FUNCTION_4() initWithAttachedMediaKeys:?];
    v736.receiver = v77;
    v736.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v736, sel_addNode_error_, v146, &v758) & 1) == 0 || ([v146 input], v147 = objc_msgSend(OUTLINED_FUNCTION_1_15(), "connectOutput:toInput:pipelineStage:", v85), v148 = v600, (v147 & 1) == 0))
    {
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      goto LABEL_643;
    }

    [v146 setName:@"Still Image IR-Depth Splitter"];
    [v146 setEmitsNodeErrorsForMissingAttachedMedia:1];
    obja = [objc_msgSend(v146 "outputs")];
  }

  else
  {
    obja = 0;
    v148 = v600;
  }

  [v148 count];
  v149 = [OUTLINED_FUNCTION_4() dictionaryWithCapacity:?];
  cameraInfoByPortType2 = [v577 cameraInfoByPortType];
  if ([v24 stillImageSinkPipelineProcessingMode] && objc_msgSend(v24, "stillImageSinkPipelineProcessingMode") != 2)
  {
    v149 = [v148 mutableCopy];
    if (v597)
    {
      v598 = [v148 objectForKeyedSubscript:?];
      v594 = 0;
    }

    else
    {
      v594 = 0;
      v598 = 0;
    }

    v164 = v607;
  }

  else
  {
    if ([v24 stillImageSinkPipelineProcessingMode])
    {
      v150 = 0;
      v151 = v607;
      v152 = &classRef_BWDerectificationInferenceProvider;
      v153 = v582;
    }

    else
    {
      v153 = v582;
      v150 = [[BWStillImageCoordinatorNode alloc] initWithNodeConfiguration:v583 captureDevice:v579 inputPortTypes:v582 sensorRawInputPortTypes:0 highResStillImageDimensions:v543];
      v152 = &classRef_BWDerectificationInferenceProvider;
      v735.receiver = v607;
      v735.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      if ((objc_msgSendSuper2(&v735, sel_addNode_error_, v150, &v758) & 1) == 0)
      {
        OUTLINED_FUNCTION_0_61();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
        goto LABEL_643;
      }

      [(BWNode *)v150 setName:@"Still Image Coordinator"];
      [(BWStillImageCoordinatorNode *)v150 setStillImageCaptureStatusDelegate:v541];
      [(BWStillImageCoordinatorNode *)v150 setResponsiveShutterEnabled:responsiveShutterSupported];
      if ([v24 responsiveShutterSupported])
      {
        responsiveShutterEnabled = [v24 responsiveShutterEnabled];
      }

      else
      {
        responsiveShutterEnabled = 0;
      }

      [(BWStillImageCoordinatorNode *)v150 setResponsiveShutterEnabledViaAPI:responsiveShutterEnabled];
      -[BWStillImageCoordinatorNode setFastCapturePrioritizationEnabled:](v150, "setFastCapturePrioritizationEnabled:", [v24 fastCapturePrioritizationEnabled]);
      [(BWStillImageCoordinatorNode *)v150 setStillImageCapturePipeliningMode:v587];
      -[BWStillImageCoordinatorNode setCinematicFramingWarpingRequired:](v150, "setCinematicFramingWarpingRequired:", [v24 cinematicFramingWarpingRequired]);
      if (v587 == 1)
      {
        [(BWStillImageCoordinatorNode *)v150 setMaxNumberOfBurstCapturesAllowedInFlight:2];
      }

      v151 = v607;
      *(v607 + 56) = v150;
    }

    v155 = [[BWStillImageFrameCoordinatorNode alloc] initWithNodeConfiguration:v583 inputPortTypes:v153 sensorRawInputPortTypes:0];
    v156 = v152[251];
    v734.receiver = v151;
    v734.super_class = v156;
    if ((objc_msgSendSuper2(&v734, sel_addNode_error_, v155, &v758) & 1) == 0)
    {
LABEL_242:
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    [(BWNode *)v155 setName:@"Still Image Frame Coordinator"];
    v733 = 0u;
    v732 = 0u;
    v731 = 0u;
    v730 = 0u;
    if (OUTLINED_FUNCTION_27_11())
    {
      do
      {
        OUTLINED_FUNCTION_42();
        if (!v107)
        {
          objc_enumerationMutation(v148);
        }

        v157 = **(&v730 + 1);
        v158 = [v148 objectForKeyedSubscript:**(&v730 + 1)];
        if (objc_msgSend_isEqualToString_(v157))
        {
          v158 = obja;
        }

        if (v150)
        {
          if (([provider connectOutput:v158 toInput:-[BWStillImageCoordinatorNode inputForPortType:](v150 pipelineStage:{"inputForPortType:", v157), v593}] & 1) == 0)
          {
            goto LABEL_242;
          }

          v148 = v600;
          if (([provider connectOutput:-[BWStillImageCoordinatorNode outputForPortType:](v150 toInput:"outputForPortType:" pipelineStage:{v157), objc_msgSend(OUTLINED_FUNCTION_12_31(), "inputForPortType:"), v613}] & 1) == 0)
          {
            goto LABEL_242;
          }
        }

        else
        {
          [OUTLINED_FUNCTION_12_31() inputForPortType:?];
          if (([OUTLINED_FUNCTION_15_21() connectOutput:v158 toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_242;
          }
        }

        [OUTLINED_FUNCTION_12_31() outputForPortType:?];
        [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
        OUTLINED_FUNCTION_46_10();
      }

      while (!v107 || OUTLINED_FUNCTION_27_11());
    }

    v598 = [(BWStillImageFrameCoordinatorNode *)v155 outputForPortType:v597];
    v159 = objc_alloc_init(FigCaptureIrisPreparedSettings);
    deepFusionSupported2 = [v24 deepFusionSupported];
    if (v573)
    {
      v161 = 2;
    }

    else
    {
      v161 = 1;
    }

    if (deepFusionSupported2)
    {
      v162 = 3;
    }

    else
    {
      v162 = v161;
    }

    [(FigCaptureIrisPreparedSettings *)v159 setQualityPrioritization:v162];
    [(FigCaptureIrisPreparedSettings *)v159 setDigitalFlashMode:digitalFlashCaptureEnabled & v571];
    v738[1] = 0;
    v738[0] = 0;
    v739 = 0;
    objc_msgSend_worstCaseMaxBracketedCaptureBufferCountForPreparedSettings_stillImageCaptureSettings_captureDevice_(BWStillImageCoordinatorNode);
    v163 = v738[0];
    if (SLODWORD(v738[0]) <= SHIDWORD(v738[0]))
    {
      v163 = HIDWORD(v738[0]);
    }

    v594 = v163;
    v164 = v607;
    v71 = dictionary;
    v144 = &selRef__waitForPreviewGenerationGroupToComplete;
  }

  if (!((v605 == 0) | v586 & 1))
  {
    v165 = -[BWCrossoverNode initWithMediaType:numberOfInputs:]([BWCrossoverNode alloc], "initWithMediaType:numberOfInputs:", 1986618469, [v600 count]);
    v729.receiver = v164;
    v729.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v729, v144[148], v165, &v758) & 1) == 0)
    {
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    memset(v728, 0, sizeof(v728));
    if ([v600 countByEnumeratingWithState:v728 objects:v727 count:16])
    {
      v166 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_30_6();
        if (!v107)
        {
          objc_enumerationMutation(v600);
        }

        v167 = [v149 objectForKeyedSubscript:**(&v728[0] + 1)];
        [(NSArray *)[(BWNode *)v165 inputs] objectAtIndexedSubscript:v166];
        if (![OUTLINED_FUNCTION_15_21() connectOutput:v167 toInput:? pipelineStage:?])
        {
          break;
        }

        ++v166;
        OUTLINED_FUNCTION_46_10();
        if (v107 && ![v600 countByEnumeratingWithState:v728 objects:v727 count:16])
        {
          goto LABEL_268;
        }
      }

      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

LABEL_268:
    [(BWNode *)v165 output];
    [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
    v71 = dictionary;
    v144 = &selRef__waitForPreviewGenerationGroupToComplete;
  }

  array2 = [MEMORY[0x1E695DF70] array];
  v169 = objc_alloc_init(BWPixelTransferNode);
  [(BWNode *)v169 setName:@"Still Image Format Converter"];
  [v24 outputColorSpaceProperties];
  [OUTLINED_FUNCTION_7() setOutputColorSpaceProperties:?];
  [(BWPixelTransferNode *)v169 setCropMode:3];
  [(BWPixelTransferNode *)v169 setMaxInputLossyCompressionLevel:3];
  [v24 maxLossyCompressionLevel];
  [OUTLINED_FUNCTION_7() setMaxOutputLossyCompressionLevel:?];
  [(BWPixelTransferNode *)v169 setConversionMethodForStillImagesDuringHDRVideos:2];
  objb = array2;
  [array2 addObject:v169];
  v544 = v169;
  if (redEyeReductionVersion == 1)
  {
    v726.receiver = v164;
    v726.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    v170 = v144[148];
    if ((objc_msgSendSuper2(&v726, v170, v169, &v758) & 1) == 0 || (v171 = [v149 objectForKeyedSubscript:v574], -[BWNode input](v169, "input"), (objc_msgSend(OUTLINED_FUNCTION_1_15(), "connectOutput:toInput:pipelineStage:", v171) & 1) == 0))
    {
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    [(BWNode *)v169 output];
    [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
    if (v586)
    {
      v725 = 0u;
      v724 = 0u;
      v723 = 0u;
      v722 = 0u;
      v172 = OUTLINED_FUNCTION_52_10();
      if (v172)
      {
        v173 = v172;
LABEL_275:
        v174 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_30_6();
          if (!v107)
          {
            objc_enumerationMutation(v605);
          }

          v175 = *(*(&v722 + 1) + 8 * v174);
          v176 = objc_alloc_init(BWPixelTransferNode);
          v177 = MEMORY[0x1E696AEC0];
          v510 = BWPortTypeToDisplayString(v175, v178);
          [v177 stringWithFormat:@"%@ Format Converter"];
          [OUTLINED_FUNCTION_4() setName:?];
          [v24 outputColorSpaceProperties];
          [OUTLINED_FUNCTION_4() setOutputColorSpaceProperties:?];
          [(BWPixelTransferNode *)v176 setCropMode:3];
          [v24 maxLossyCompressionLevel];
          [OUTLINED_FUNCTION_4() setMaxLossyCompressionLevel:?];
          v721.receiver = v607;
          v721.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          if ((objc_msgSendSuper2(&v721, v170, v176, &v758) & 1) == 0)
          {
            goto LABEL_765;
          }

          v179 = [v149 objectForKeyedSubscript:v175];
          [(BWNode *)v176 input];
          if (([OUTLINED_FUNCTION_15_21() connectOutput:v179 toInput:? pipelineStage:?] & 1) == 0)
          {
            goto LABEL_765;
          }

          [(BWNode *)v176 output];
          [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
          [objb addObject:v176];
          if (v173 == ++v174)
          {
            v173 = OUTLINED_FUNCTION_52_10();
            if (v173)
            {
              goto LABEL_275;
            }

            break;
          }
        }
      }
    }

    if ([v605 count] >= 2)
    {
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510, v513, v514, v515, v516, v517, v518, v519);
    }

    firstObject3 = [v605 firstObject];
    v738[0] = 0;
    v740 = 0;
    v164 = v607;
    v71 = dictionary;
    v759[0] = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v607 _buildRedEyeReductionSubPipelineWithName:v613 pipelineStage:provider graph:dictionary sensorConfigurationsByPortType:delegate inferenceScheduler:v738 subPipelineInputOut:&v740 subPipelineOutputOut:?];
    v144 = &selRef__waitForPreviewGenerationGroupToComplete;
    if (v759[0])
    {
      OUTLINED_FUNCTION_2_64();
      LODWORD(v510) = v507;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    if (v520)
    {
      v720 = 0;
      *type = 0;
      v759[0] = [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v607 _buildRedEyeReductionSubPipelineWithName:v530 pipelineStage:provider graph:dictionary sensorConfigurationsByPortType:delegate inferenceScheduler:&v720 subPipelineInputOut:type subPipelineOutputOut:?];
      if (v759[0])
      {
        OUTLINED_FUNCTION_2_64();
        LODWORD(v510) = v508;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
        goto LABEL_643;
      }

      v496 = [v149 objectForKeyedSubscript:v574];
      if (([provider connectOutput:v496 toInput:v738[0] pipelineStage:v613] & 1) == 0 || (objc_msgSend(v149, "setObject:forKeyedSubscript:", v740, v574), v497 = objc_msgSend(v149, "objectForKeyedSubscript:", firstObject3), (objc_msgSend(provider, "connectOutput:toInput:pipelineStage:", v497, v720, v530) & 1) == 0))
      {
        OUTLINED_FUNCTION_0_61();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
        goto LABEL_643;
      }

      v182 = *type;
      goto LABEL_289;
    }

    if (v586)
    {
      v181 = [v149 objectForKeyedSubscript:firstObject3];
      if ([provider connectOutput:v181 toInput:v738[0] pipelineStage:v530])
      {
        v182 = v740;
LABEL_289:
        [v149 setObject:v182 forKeyedSubscript:firstObject3];
        goto LABEL_297;
      }

LABEL_765:
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    v183 = [v149 objectForKeyedSubscript:v574];
    if (([provider connectOutput:v183 toInput:v738[0] pipelineStage:v613] & 1) == 0)
    {
      goto LABEL_765;
    }

    [v149 setObject:v740 forKeyedSubscript:v574];
  }

LABEL_297:
  if (v598)
  {
    v184 = [[BWDepthSynchronizerNode alloc] initForStreaming:0 separateDepthComponentsEnabled:0];
    v718.receiver = v164;
    v718.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v718, v144[148], v184, &v758) & 1) == 0 || ([v184 setName:@"Still Image YUV Depth Synchronizer"], v185 = objc_msgSend(v149, "objectForKeyedSubscript:", v574), objc_msgSend(v184, "imageInput"), (objc_msgSend(OUTLINED_FUNCTION_1_15(), "connectOutput:toInput:pipelineStage:", v185) & 1) == 0) || (objc_msgSend(v184, "depthInput"), (objc_msgSend(OUTLINED_FUNCTION_1_15(), "connectOutput:toInput:pipelineStage:", v598) & 1) == 0))
    {
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    [v184 output];
    [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
  }

  output = [v149 objectForKeyedSubscript:v574];
  firstObject4 = [v605 firstObject];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  [v71 objectForKeyedSubscript:v574];
  [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
  memset(v717, 0, sizeof(v717));
  v187 = [v605 countByEnumeratingWithState:v717 objects:v716 count:16];
  if (v187)
  {
    v188 = v187;
    do
    {
      for (j = 0; j != v188; ++j)
      {
        OUTLINED_FUNCTION_42();
        if (!v107)
        {
          objc_enumerationMutation(v605);
        }

        [v71 objectForKeyedSubscript:*(v717[0].super_class + j)];
        [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
      }

      v188 = [v605 countByEnumeratingWithState:v717 objects:v716 count:16];
    }

    while (v188);
  }

  if (depthDataType == 7)
  {
    [v71 objectForKeyedSubscript:*off_1E798A0C8];
    [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
  }

  if (v586)
  {
    v190 = [BWFunnelNode alloc];
    [dictionary4 count];
    v191 = [OUTLINED_FUNCTION_4() initWithNumberOfInputs:? mediaType:?];
    v715.receiver = v607;
    v715.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v715, v144[148], v191, &v758) & 1) == 0)
    {
LABEL_485:
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    [v191 setName:@"UB Funnel"];
    v714 = 0u;
    v713 = 0u;
    v712 = 0u;
    v711 = 0u;
    v192 = OUTLINED_FUNCTION_57_8();
    if (v192)
    {
      v193 = v192;
      v194 = 0;
LABEL_315:
      v195 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_30_6();
        if (!v107)
        {
          objc_enumerationMutation(v149);
        }

        v196 = [v149 objectForKeyedSubscript:*(*(&v711 + 1) + 8 * v195)];
        [objc_msgSend(v191 "inputs")];
        if (![OUTLINED_FUNCTION_15_21() connectOutput:v196 toInput:? pipelineStage:?])
        {
          goto LABEL_485;
        }

        ++v194;
        if (v193 == ++v195)
        {
          v193 = OUTLINED_FUNCTION_57_8();
          if (v193)
          {
            goto LABEL_315;
          }

          break;
        }
      }
    }

    output = [v191 output];
    v144 = &selRef__waitForPreviewGenerationGroupToComplete;
  }

  if (redEyeReductionVersion != 1)
  {
    v710.receiver = v607;
    v710.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v710, v144[148], v544, &v758) & 1) == 0)
    {
      goto LABEL_384;
    }

    [(BWNode *)v544 input];
    v197 = OUTLINED_FUNCTION_1_15();
    if ((OUTLINED_FUNCTION_29_10(v197, v198, v199, v200) & 1) == 0)
    {
      goto LABEL_384;
    }

    output = [(BWNode *)v544 output];
  }

  if ([v24 clientIsCameraOrDerivative])
  {
    if (v549)
    {
      v201 = 2;
    }

    else
    {
      v201 = 1;
    }

    v202 = v558;
    if (v558 == 1)
    {
      v203 = 1;
    }

    else
    {
      v203 = v201;
    }
  }

  else
  {
    if (v551)
    {
      v203 = 8 * [dictionary4 count];
    }

    else
    {
      v203 = 8;
    }

    v202 = v558;
  }

  v204 = v538 | v564 ^ v578;
  v205 = v202 == 1;
  if (v203 <= 2)
  {
    v206 = 2;
  }

  else
  {
    v206 = v203;
  }

  if (v587 == 1)
  {
    v207 = v206;
  }

  else
  {
    v207 = v203;
  }

  v208 = objc_alloc_init(BWUBNodeConfiguration);
  [v583 metalCommandQueue];
  [OUTLINED_FUNCTION_4() setMetalCommandQueue:?];
  [v583 figThreadPriority];
  [OUTLINED_FUNCTION_4() setFigThreadPriority:?];
  [v583 depthDataType];
  [OUTLINED_FUNCTION_4() setDepthDataType:?];
  [v583 pearlModuleType];
  [OUTLINED_FUNCTION_4() setPearlModuleType:?];
  [v583 inferenceScheduler];
  [OUTLINED_FUNCTION_4() setInferenceScheduler:?];
  [v583 maxLossyCompressionLevel];
  [OUTLINED_FUNCTION_4() setMaxLossyCompressionLevel:?];
  [(BWUBNodeConfiguration *)v208 setSensorConfigurationsByPortType:dictionary4, v209];
  [v24 inputIs10Bit];
  v210 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v210 setInputIs10Bit:v211];
  [(BWUBNodeConfiguration *)v208 setRetainedBufferCount:v594];
  v595 = v207;
  [(BWUBNodeConfiguration *)v208 setOutputBufferCount:v207];
  [(BWUBNodeConfiguration *)v208 setMinimumOutputBufferCount:v203];
  [(BWUBNodeConfiguration *)v208 setMaxNumberOfBurstCapturesAllowedInFlight:?];
  [(BWUBNodeConfiguration *)v208 setOutputPoolBackPressureEnabled:?];
  [(BWStillImageNodeConfiguration *)v208 setDeferredCaptureSupportEnabled:deferredProcessingSupported];
  [(BWStillImageNodeConfiguration *)v208 setDeferredPhotoProcessorEnabled:v205];
  [v24 noiseReductionAndFusionScheme];
  v212 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v212 setStillImageFusionScheme:v213];
  [(BWStillImageNodeConfiguration *)v208 setFigThreadPriority:*(v607 + 48)];
  [(BWUBNodeConfiguration *)v208 setReferenceFrameSelectionDelegate:?];
  if (v534)
  {
    [v24 outputStillImageDimensions];
    v214 = OUTLINED_FUNCTION_10_29();
    [(BWUBNodeConfiguration *)v214 setOutputDimensions:v215];
  }

  v565 = v538 | v564 ^ v578;
  [(BWUBNodeConfiguration *)v208 setUnifiedBracketingFusionSupportEnabled:?];
  [(BWUBNodeConfiguration *)v208 setDigitalFlashSupportEnabled:?];
  -[BWUBNodeConfiguration setDeepFusionSyntheticsInNRSupportEnabled:](v208, [v24 deepFusionSupported] & v539);
  deepFusionSupported3 = [v24 deepFusionSupported];
  if (v587 == 2)
  {
    v217 = 0;
  }

  else
  {
    v217 = deferredProcessingSupported;
  }

  if (deepFusionSupported3)
  {
    v218 = v217;
  }

  else
  {
    v218 = 0;
  }

  [(BWUBNodeConfiguration *)v208 setDeepFusionWaitForPreprocessingToFinish:v218];
  [v24 deepFusionSupported];
  v219 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v219 setDeepFusionSupportEnabled:v220];
  [v24 deepFusionEnhancedResolutionDimensions];
  [OUTLINED_FUNCTION_4() setDeepFusionEnhancedResolutionDimensions:?];
  if (v573 == 2)
  {
    v221 = learnedNRSupported;
  }

  else
  {
    v221 = 0;
  }

  if (v558 == 1)
  {
    v222 = 1;
  }

  else
  {
    v222 = deferredProcessingSupported;
  }

  if ((v222 & 1) != 0 || v221)
  {
    deepZoomVersion = [v24 deepZoomVersion];
  }

  else
  {
    deepZoomVersion = 0;
  }

  v224 = v557;
  [(BWUBNodeConfiguration *)v208 setDeepZoomVersion:deepZoomVersion];
  [(BWUBNodeConfiguration *)v208 setMaxDeepFusionOutputCount:?];
  [(BWUBNodeConfiguration *)v208 setLearnedNRMode:v578];
  [(BWUBNodeConfiguration *)v208 setDepthDataDeliveryEnabled:v588];
  if (v577)
  {
    v225 = [BWSensorConfiguration alloc];
    v226 = [objc_msgSend(v577 "captureStream")];
    v227 = [objc_msgSend(v577 "captureStream")];
    v228 = [objc_msgSend(v577 "captureStream")];
    v229 = [cameraInfoByPortType2 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v577, "captureStream"), "portType")}];
    v230 = v226;
    v224 = v557;
    v231 = v228;
    v144 = &selRef__waitForPreviewGenerationGroupToComplete;
    v232 = [(BWSensorConfiguration *)v225 initWithPortType:v230 sensorIDString:v227 sensorIDDictionary:v231 cameraInfo:v229];
    v233 = OUTLINED_FUNCTION_10_29();
    [(BWUBNodeConfiguration *)v233 setJasperSensorConfiguration:v234, v235];
  }

  [(BWUBNodeConfiguration *)v208 setAlwaysAllowModifyingInputBuffers:?];
  [v24 ubInferenceMainImageDownscalingFactor];
  [(BWUBNodeConfiguration *)v208 setInferenceMainImageDownscalingFactor:v236];
  [(BWUBNodeConfiguration *)v208 setProvidedInferenceAttachedMediaByMode:dictionary3, v237];
  [(BWUBNodeConfiguration *)v208 setSemanticRenderingVersion:v554];
  [(BWUBNodeConfiguration *)v208 setSemanticDevelopmentVersion:semanticDevelopmentVersion];
  [v617 personSemanticsVersion];
  v238 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v238 setPersonSemanticsVersion:v239];
  [v24 semanticStyleRenderingEnabled];
  v240 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v240 setSemanticStyleRenderingEnabled:v241];
  OUTLINED_FUNCTION_23_13();
  if (v107)
  {
    v242 = v607;
    if ([v617 disparityVersion] >= 5)
    {
      [v556 allKeys];
      v244 = OUTLINED_FUNCTION_10_29();
      [(BWUBNodeConfiguration *)v244 setPortTypesWithDepthSegmentationPortraitParameters:v245, v246];
      [v24 depthDataType];
      [OUTLINED_FUNCTION_4() setDepthDataType:?];
      [(BWUBNodeConfiguration *)v208 setShouldComputeDisparityWhenCalibrationFails:?];
    }

    [(BWUBNodeConfiguration *)v208 setGenerateLiDARDepth:?];
  }

  else
  {
    [(BWUBNodeConfiguration *)v208 setGenerateLiDARDepth:?];
    v242 = v607;
    if (depthDataType != 7)
    {
      v243 = 0;
      goto LABEL_373;
    }
  }

  OUTLINED_FUNCTION_23_13();
  v243 = v107;
  [v24 depthDataTargetDimensions];
  v247 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v247 setDisparityOutputDimensions:v248];
LABEL_373:
  [(BWUBNodeConfiguration *)v208 setDemosaicedRawEnabled:demosaicedRawEnabled];
  if (demosaicedRawEnabled)
  {
    [v24 demosaicedRawPixelFormat];
    v249 = OUTLINED_FUNCTION_10_29();
    [(BWUBNodeConfiguration *)v249 setDemosaicedRawPixelFormat:v250];
  }

  [v24 rawColorCalibrationsByPortType];
  v251 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v251 setRawColorCalibrationsByPortType:v252, v253];
  [v24 rawLensShadingCorrectionCoefficientsByPortType];
  v254 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v254 setRawLensShadingCorrectionCoefficientsByPortType:v255, v256];
  if ((v536 | v224))
  {
    [v24 dcProcessorVersion];
    v257 = OUTLINED_FUNCTION_10_29();
    [(BWUBNodeConfiguration *)v257 setIntelligentDistortionCorrectionVersion:v258];
    if (v557)
    {
      portTypesWithGeometricDistortionCorrectionEnabled = [v24 portTypesWithGeometricDistortionCorrectionEnabled];
    }

    else
    {
      portTypesWithGeometricDistortionCorrectionEnabled = 0;
    }

    [(BWUBNodeConfiguration *)v208 setPortTypesWithGeometricDistortionCorrectionEnabled:portTypesWithGeometricDistortionCorrectionEnabled, v259];
    [(BWUBNodeConfiguration *)v208 setGeometricDistortionCorrectionExpandedImageDimensions:v523];
    [v24 portTypesWithIntelligentDistortionCorrectionEnabled];
    v261 = OUTLINED_FUNCTION_10_29();
    [(BWUBNodeConfiguration *)v261 setPortTypesWithIntelligentDistortionCorrectionEnabled:v262, v263];
    [(BWUBNodeConfiguration *)v208 setIntelligentDistortionCorrectionAppliesFinalDimensions:?];
  }

  [v24 greenGhostMitigationVersion];
  v264 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v264 setGreenGhostMitigationVersion:v265];
  [(BWUBNodeConfiguration *)v208 setRedEyeReductionEnabled:?];
  [v24 gainMapMainImageDownscalingFactor];
  [(BWUBNodeConfiguration *)v208 setGainMapMainImageDownscalingFactor:v266];
  [v24 horizontalSensorBinningFactor];
  v267 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v267 setHorizontalSensorBinningFactor:v268];
  [v24 verticalSensorBinningFactor];
  v269 = OUTLINED_FUNCTION_10_29();
  [(BWUBNodeConfiguration *)v269 setVerticalSensorBinningFactor:v270];
  v271 = [[BWUBNode alloc] initWithNodeConfiguration:v208 captureDevice:v579];
  v708 = v242;
  v709 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  k = v144[148];
  OUTLINED_FUNCTION_11_30();
  if ((objc_msgSendSuper2(v273, v274, v271) & 1) == 0)
  {
    goto LABEL_384;
  }

  [(BWNode *)v271 setName:@"UB"];
  [v579 setStillImageProcessingSupportProvider:v271];
  [*(v242 + 56) setStillImageProcessingSupportProvider:v271];
  [(BWNode *)v271 input];
  if (([OUTLINED_FUNCTION_44_10() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
  {
    goto LABEL_384;
  }

  if (v546)
  {
    [(BWUBNode *)v271 pointCloudInput];
    if (([OUTLINED_FUNCTION_44_10() connectOutput:v546 toInput:? pipelineStage:?] & 1) == 0)
    {
LABEL_384:
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }
  }

  else
  {
    v275 = *off_1E798A0C8;
    if ([v529 objectForKeyedSubscript:*off_1E798A0C8])
    {
      v276 = [v529 objectForKeyedSubscript:v275];
      [(BWUBNode *)v271 pointCloudInput];
      if (([OUTLINED_FUNCTION_44_10() connectOutput:v276 toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_384;
      }
    }
  }

  output2 = [(BWNode *)v271 output];
  output3 = output2;
  v599 = k;
  if (!(v557 & 1 | !v619))
  {
    v602 = output2;
    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    [v24 gainMapMainImageDownscalingFactor];
    if (v280 != 0.0)
    {
      v281 = MEMORY[0x1E696AD98];
      [v24 gainMapMainImageDownscalingFactor];
      [dictionary5 setObject:objc_msgSend(v281 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
    }

    array3 = [MEMORY[0x1E695DF70] array];
    v704 = 0u;
    v705 = 0u;
    v706 = 0u;
    v707 = 0u;
    v283 = OUTLINED_FUNCTION_51_10();
    if (v283)
    {
      v284 = v283;
      do
      {
        for (k = 0; k != v284; k = (k + 1))
        {
          OUTLINED_FUNCTION_10_18();
          if (!v107)
          {
            objc_enumerationMutation(dictionary3);
          }

          [array3 addObjectsFromArray:{objc_msgSend(dictionary3, "objectForKeyedSubscript:", *(*(&v704 + 1) + 8 * k))}];
        }

        v284 = OUTLINED_FUNCTION_51_10();
      }

      while (v284);
    }

    v620 = v243;
    if (demosaicedRawEnabled)
    {
      [dictionary5 setObject:&unk_1F224A860 forKeyedSubscript:0x1F21AAE10];
      v703 = 0u;
      v702 = 0u;
      v701 = 0u;
      v700 = 0u;
      v285 = OUTLINED_FUNCTION_50_11();
      if (v285)
      {
        v286 = v285;
        do
        {
          for (k = 0; k != v286; k = (k + 1))
          {
            OUTLINED_FUNCTION_10_18();
            if (!v107)
            {
              objc_enumerationMutation(array3);
            }

            v287 = MEMORY[0x1E696AD98];
            [v24 ubInferenceMainImageDownscalingFactor];
            [v287 numberWithFloat:?];
            [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
          }

          v286 = OUTLINED_FUNCTION_50_11();
        }

        while (v286);
      }
    }

    v288 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:v595 nodeConfiguration:v583];
    [(BWNode *)v288 setName:@"Resizing"];
    [v24 outputStillImageDimensions];
    [OUTLINED_FUNCTION_7() setResizedOutputDimensions:?];
    [(BWStillImageScalerNode *)v288 setBlackFillingRequired:0];
    [(BWStillImageScalerNode *)v288 setMainImageDownscalingFactorByAttachedMediaKey:dictionary5];
    v698 = v607;
    v699 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    OUTLINED_FUNCTION_7_40();
    if ((objc_msgSendSuper2(v289, v290, v288) & 1) == 0)
    {
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510, v513, v514, v515, v516, v517, v518, v519);
      v505 = -12786;
      goto LABEL_696;
    }

    [(BWNode *)v288 input];
    v243 = v620;
    if (([OUTLINED_FUNCTION_15_21() connectOutput:v602 toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_384;
    }

    output3 = [(BWNode *)v288 output];
  }

  if ((v605 == 0) | (v588 ^ 1) & 1 | v243 & 1)
  {
    output5 = output3;
    output4 = 0;
  }

  else
  {
    v292 = [BWStillImageConditionalRouterUBConfiguration configurationWithPortTypes:v582];
    v293 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v292];
    v696 = v607;
    v697 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    OUTLINED_FUNCTION_11_30();
    if ((objc_msgSendSuper2(v294, v295, v293) & 1) == 0)
    {
      goto LABEL_384;
    }

    [(BWNode *)v293 setName:@"UB Router"];
    [(BWNode *)v293 input];
    if (([OUTLINED_FUNCTION_15_21() connectOutput:output3 toInput:? pipelineStage:?] & 1) == 0)
    {
      goto LABEL_384;
    }

    if ([v605 count] >= 2)
    {
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510, v513, v514, v515, v516, v517, v518, v519);
    }

    v296 = [(BWStillImageConditionalRouterUBConfiguration *)v292 outputIndexForPortType:firstObject4];
    v297 = [(BWStillImageConditionalRouterUBConfiguration *)v292 outputIndexForPortType:v574];
    if (v296 == 0x7FFFFFFFFFFFFFFFLL || v297 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_695;
    }

    output5 = [(NSArray *)[(BWNode *)v293 outputs] objectAtIndexedSubscript:v297];
    output4 = [(NSArray *)[(BWNode *)v293 outputs] objectAtIndexedSubscript:v296];
  }

  formatRequirements = [(BWNodeInput *)[(BWNode *)v271 input] formatRequirements];
  v692 = 0u;
  v693 = 0u;
  v694 = 0u;
  v695 = 0u;
  v300 = OUTLINED_FUNCTION_56_9();
  if (v300)
  {
    v301 = v300;
    do
    {
      for (k = 0; k != v301; k = (k + 1))
      {
        OUTLINED_FUNCTION_10_18();
        if (!v107)
        {
          objc_enumerationMutation(objb);
        }

        v302 = *(*(&v692 + 1) + 8 * k);
        [(BWFormatRequirements *)formatRequirements supportedPixelFormats];
        [OUTLINED_FUNCTION_37_0() setPreferredOutputPixelFormats:?];
        [v302 setConverting10BitVideoRangeTo8BitFullRangeEncouraged:1];
      }

      v301 = OUTLINED_FUNCTION_56_9();
    }

    while (v301);
  }

  if ((v549 & v559) == 1)
  {
    v303 = objc_alloc_init(BWPortraitHDRStagingNode);
    v691[6] = v607;
    v691[7] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    OUTLINED_FUNCTION_7_40();
    if ((objc_msgSendSuper2(v304, v305, v303) & 1) == 0)
    {
      goto LABEL_384;
    }

    v306 = v303;
    *(v607 + 96) = v306;
    if (v605)
    {
      [(BWNode *)v306 input];
      OUTLINED_FUNCTION_31_12();
      v307 = depthDataType2;
      if (([OUTLINED_FUNCTION_12_31() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_384;
      }

      output4 = [*(v607 + 96) output];
    }

    else
    {
      v307 = depthDataType2;
      if ((isEqualToString & 1) == 0)
      {
        if (depthDataType2 > 9 || (OUTLINED_FUNCTION_13_25(), v107))
        {
          v308 = v576;
          goto LABEL_440;
        }
      }

      [(BWNode *)v306 input];
      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_384;
      }

      output5 = [*(v607 + 96) output];
    }

    v308 = v576;
  }

  else
  {
    v308 = v576;
    v307 = depthDataType2;
    k = v599;
  }

  if (!v588)
  {
    v309 = 0;
    goto LABEL_444;
  }

  if (isEqualToString)
  {
    goto LABEL_442;
  }

LABEL_440:
  v309 = 0;
  if (v307 <= 9)
  {
    OUTLINED_FUNCTION_13_25();
    if (!v107)
    {
LABEL_442:
      v309 = v548 ^ 1;
    }
  }

LABEL_444:
  if (v307 == 6)
  {
    v310 = 1;
  }

  else
  {
    v310 = v309;
  }

  v590 = v310 | v548;
  v581 = v309;
  if ((v310 | v548))
  {
    v469 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v607 + 52)];
    v470 = v469;
    if (v307 == 6)
    {
      [(BWNode *)v469 setName:@"MonocularDepth"];
      [(BWInferenceNode *)v470 addInferenceOfType:106 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:[[BWMonocularDepthConfiguration alloc] initWithInferenceType:106 monocularDepthType:2]];
    }

    else if (v309)
    {
      [(BWNode *)v469 setName:@"RGB Segmentation"];
      [(BWInferenceNode *)v470 addInferenceOfType:103 version:+[BWRGBPersonSegmentationInferenceConfiguration portraitVersion]& 0xFFFFFFFFFFFFLL];
    }

    if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v607 _addLandmarksInferenceToNode:v470])
    {
      goto LABEL_695;
    }

    v691[4] = v607;
    v691[5] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    OUTLINED_FUNCTION_11_30();
    if ((objc_msgSendSuper2(v471, v472, v470) & 1) == 0)
    {
      goto LABEL_384;
    }

    input = [(BWNode *)v470 input];
    v308 = v576;
    if (v586)
    {
      if (([provider connectOutput:output4 toInput:input pipelineStage:v613] & 1) == 0)
      {
        goto LABEL_384;
      }
    }

    else if ((OUTLINED_FUNCTION_29_10(provider, v473, v474, input) & 1) == 0)
    {
      goto LABEL_384;
    }

    output6 = [(BWNode *)v470 output];
    if (v545)
    {
      [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.person-semantics" priority:*(v607 + 48)];
      v477 = [BWFanOutNode alloc];
      OUTLINED_FUNCTION_26_12();
      v479 = [v478 initWithFanOutCount:? mediaType:?];
      [v479 setName:@"Concurrent PersonSemantics / DepthProcessing Fan Out"];
      v691[2] = v607;
      v691[3] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      OUTLINED_FUNCTION_11_30();
      if ((objc_msgSendSuper2(v480, v481, v479) & 1) == 0)
      {
        goto LABEL_384;
      }

      [v479 input];
      if (([OUTLINED_FUNCTION_6_44() connectOutput:output6 toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_384;
      }

      output7 = [objc_msgSend(v479 "outputs")];
      v483 = isEqualToString;
      if (depthDataType2 == 6)
      {
        v483 = 1;
      }

      if (v483 == 1)
      {
        v484 = [BWAttachedMediaSplitNode alloc];
        v691[0] = @"PrimaryFormat";
        v691[1] = @"Depth";
        [MEMORY[0x1E695DEC8] arrayWithObjects:v691 count:2];
        v485 = [OUTLINED_FUNCTION_7() initWithAttachedMediaKeys:?];
        [v485 setName:@"Unprocessed DepthData Discarder"];
        v690[14] = v607;
        v690[15] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        OUTLINED_FUNCTION_9_34();
        if ((objc_msgSendSuper2(v486, v487, v485) & 1) == 0)
        {
          goto LABEL_470;
        }

        [v485 input];
        if (([OUTLINED_FUNCTION_6_44() connectOutput:output7 toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_470;
        }

        output7 = [v485 output];
      }

      v488 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v607 + 52)];
      OUTLINED_FUNCTION_5_50();
      [v489 addInferenceOfType:104 version:? configuration:?];
      [(BWNode *)v488 setName:@"Person Semantics"];
      if (v531 >= 1)
      {
        [v24 portraitEffectsMatteMainImageDownscalingFactor];
        v500 = v499;
        enabledSemantics = [(BWPersonSemanticsConfiguration *)v525 enabledSemantics];
        metalCommandQueue = [v583 metalCommandQueue];
        [v24 clientIsCameraOrDerivative];
        OUTLINED_FUNCTION_25_12();
        if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v607 _addMattingInferenceToNode:v488 mattingVersion:v502 refinedDepthEnabled:v503 mainImageDownscalingFactor:enabledSemantics enabledSemantics:metalCommandQueue metalCommandQueue:v556 mattingsensorConfigurationsByPortType:v504 clientIsCameraOrDerivative:v500 requiredAdditionalInferenceOutputBuffers:v90 zoomFactorForPortrait:v510])
        {
          goto LABEL_695;
        }
      }

      v690[12] = v607;
      v690[13] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      OUTLINED_FUNCTION_9_34();
      if ((objc_msgSendSuper2(v490, v491, v488) & 1) == 0 || (-[BWNode input](v488, "input"), v308 = v576, ([OUTLINED_FUNCTION_6_44() connectOutput:output7 toInput:? pipelineStage:?] & 1) == 0))
      {
LABEL_470:
        OUTLINED_FUNCTION_0_61();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
        goto LABEL_643;
      }

      output8 = [(BWNode *)v488 output];
      output6 = [objc_msgSend(v479 "outputs")];
      k = v599;
    }

    else
    {
      output8 = 0;
    }

    if (v586)
    {
      output4 = output6;
    }

    v492 = output5;
    if ((v586 & 1) == 0)
    {
      v492 = output6;
    }

    output5 = v492;
    v307 = depthDataType2;
  }

  else
  {
    output8 = 0;
  }

  if (v588)
  {
    if (v307 <= 9)
    {
      OUTLINED_FUNCTION_13_25();
      if (!v107)
      {
        [v24 depthDataTargetDimensions];
        clientIsCameraOrDerivative2 = [OUTLINED_FUNCTION_25_0() clientIsCameraOrDerivative];
        v312 = [BWStillImageFocusPixelDisparityNode alloc];
        *&v313 = v90;
        v314 = [(BWStillImageFocusPixelDisparityNode *)v312 initWithNodeConfiguration:v583 sensorConfiguration:v575 disparityMapWidth:v307 disparityMapHeight:v307 >> 32 depthIsAlwaysHighQuality:clientIsCameraOrDerivative2 defaultZoomFactor:v313];
        v690[10] = v607;
        v690[11] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        OUTLINED_FUNCTION_11_30();
        if ((objc_msgSendSuper2(v315, v316, v314) & 1) == 0)
        {
          goto LABEL_470;
        }

        [(BWNode *)v314 input];
        OUTLINED_FUNCTION_31_12();
        if ((v586 & 1) == 0)
        {
          OUTLINED_FUNCTION_29_10(clientIsCameraOrDerivative2, v317, v318, v319);
          OUTLINED_FUNCTION_21_19();
          LODWORD(v307) = depthDataType2;
          if (v330)
          {
            goto LABEL_538;
          }

          goto LABEL_470;
        }

        if (([OUTLINED_FUNCTION_12_31() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_470;
        }

        [(BWNode *)v314 output];
        OUTLINED_FUNCTION_23_13();
        if (!v107)
        {
          output4 = v320;
LABEL_460:
          if (!v524)
          {
            v321 = 0;
            goto LABEL_487;
          }

          v321 = objc_alloc_init(BWStillImageDisparitySplitterNode);
          [(BWNode *)v321 setName:@"Disparity/UB Splitter"];
          v690[2] = v607;
          v690[3] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
          OUTLINED_FUNCTION_7_40();
          if (objc_msgSendSuper2(v322, v323, v321))
          {
            [(BWNode *)v321 input];
            if ([OUTLINED_FUNCTION_6_44() connectOutput:output4 toInput:? pipelineStage:?])
            {
              output4 = [(BWStillImageDisparitySplitterNode *)v321 disparityOutput];
LABEL_487:
              v690[0] = v574;
              v690[1] = firstObject4;
              v342 = [MEMORY[0x1E695DEC8] arrayWithObjects:v690 count:2];
              v343 = [[BWStillImageMultiCameraDoserNode alloc] initWithPortTypes:v342];
              v688 = v607;
              v689 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
              OUTLINED_FUNCTION_11_30();
              if (objc_msgSendSuper2(v344, v345, v343))
              {
                v346 = [v342 indexOfObject:v574];
                if (v346 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_695;
                }

                v347 = v346;
                v348 = [v342 indexOfObject:firstObject4];
                if (v348 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_695;
                }

                v349 = v348;
                if ([provider connectOutput:output5 toInput:objc_msgSend(-[BWPipelineStage inputs](v343 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", v347), v561}] & 1) != 0 && (objc_msgSend(provider, "connectOutput:toInput:pipelineStage:", output4, objc_msgSend(-[BWPipelineStage inputs](v343, "inputs"), "objectAtIndexedSubscript:", v349), v561))
                {
                  v350 = [(BWPipelineStage *)v343 outputIndexForPortType:v574];
                  if (v350 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_695;
                  }

                  v351 = v350;
                  v352 = [(BWPipelineStage *)v343 outputIndexForPortType:firstObject4];
                  if (v352 == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    goto LABEL_695;
                  }

                  v353 = v352;
                  output4 = [-[BWPipelineStage outputs](v343 "outputs")];
                  [-[BWPipelineStage outputs](v343 "outputs")];
                  if (v551)
                  {
                    v354 = [BWStillImageDualPhotoFacePropagatorNode alloc];
                    [objc_msgSend(OUTLINED_FUNCTION_25_0() "baseZoomFactorsByPortType")];
                    v343 = [OUTLINED_FUNCTION_7() initWithBaseZoomFactors:?];
                    v686 = v607;
                    v687 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                    OUTLINED_FUNCTION_11_30();
                    if ((objc_msgSendSuper2(v355, v356, v343) & 1) == 0)
                    {
                      goto LABEL_519;
                    }

                    [-[BWPipelineStage inputs](v343 "inputs")];
                    if (([OUTLINED_FUNCTION_6_44() connectOutput:output4 toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_519;
                    }

                    [-[BWPipelineStage inputs](v343 "inputs")];
                    if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                    {
                      goto LABEL_519;
                    }

                    output4 = [-[BWPipelineStage outputs](v343 "outputs")];
                    [-[BWPipelineStage outputs](v343 "outputs")];
                  }

                  if (!v524)
                  {
                    v357 = 0;
                    goto LABEL_509;
                  }

                  v343 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:*(v607 + 48)];
                  v357 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v607 + 52)];
                  [(BWNode *)v357 setName:@"Disparity"];
                  if ((v590 & 1) == 0 && [(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v607 _addLandmarksInferenceToNode:v357])
                  {
                    goto LABEL_695;
                  }

                  if (v545)
                  {
                    name = [(BWNode *)v357 name];
                    if ([(NSString *)name length])
                    {
                      v510 = @"Person Semantics";
                      [(NSString *)name stringByAppendingFormat:@" + %@"];
                    }

                    OUTLINED_FUNCTION_5_50();
                    [BWInferenceNode addInferenceOfType:v357 version:"addInferenceOfType:version:configuration:" configuration:104];
                  }

                  v684 = v607;
                  v685 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                  OUTLINED_FUNCTION_11_30();
                  if (objc_msgSendSuper2(v359, v360, v357))
                  {
                    processedOutput = [(BWStillImageDisparitySplitterNode *)v321 processedOutput];
                    [(BWNode *)v357 input];
                    if ([OUTLINED_FUNCTION_15_21() connectOutput:processedOutput toInput:? pipelineStage:?])
                    {
                      v590 = 1;
LABEL_509:
                      k = v607;
                      [v24 depthDataTargetDimensions];
                      if ([OUTLINED_FUNCTION_25_0() clientIsCameraOrDerivative])
                      {
                        v362 = 0;
                      }

                      else
                      {
                        v362 = 8;
                      }

                      v363 = [[BWStillImageBravoDisparityNode alloc] initWithNodeConfiguration:v583 sensorConfigurationsByPortType:dictionary disparityMapWidth:v343 disparityMapHeight:v343 >> 32 outputDisparityBufferCount:v362];
                      v682 = v607;
                      v683 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      OUTLINED_FUNCTION_9_34();
                      if ((objc_msgSendSuper2(v364, v365, v363) & 1) == 0)
                      {
                        goto LABEL_519;
                      }

                      *(v607 + 80) = v363;
                      [(BWStillImageBravoDisparityNode *)v363 setShouldComputeDisparityWhenCalibrationFails:v559 ^ 1];
                      [(BWStillImageBravoDisparityNode *)v363 wideInput];
                      OUTLINED_FUNCTION_31_12();
                      if (([OUTLINED_FUNCTION_12_31() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_519;
                      }

                      [(BWStillImageBravoDisparityNode *)v363 telephotoInput];
                      [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
                      OUTLINED_FUNCTION_21_19();
                      if ((v366 & 1) == 0)
                      {
                        goto LABEL_519;
                      }

                      output5 = [(BWNode *)v363 output];
                      v308 = v576;
                      if (!v524)
                      {
                        v324 = v607;
                        LODWORD(v307) = depthDataType2;
                        goto LABEL_539;
                      }

                      v314 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
                      [(BWNode *)v314 setName:@"Disparity/Landmarks Sync"];
                      [(BWInferenceSynchronizerNode *)v314 setSynchronizesTopLevelAttachments:1];
                      v680 = v607;
                      v681 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                      OUTLINED_FUNCTION_9_34();
                      LODWORD(v307) = depthDataType2;
                      if ((objc_msgSendSuper2(v367, v368, v314) & 1) == 0)
                      {
                        goto LABEL_519;
                      }

                      [(NSArray *)[(BWNode *)v314 inputs] objectAtIndexedSubscript:0];
                      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_519;
                      }

                      [(BWNode *)v357 output];
                      [objc_msgSend(OUTLINED_FUNCTION_45_1() "inputs")];
                      v308 = v576;
                      if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
                      {
                        goto LABEL_519;
                      }

LABEL_538:
                      output5 = [(BWNode *)v314 output];
                      v324 = v607;
LABEL_539:
                      if ((v588 & (isEqualToString | (v307 == 6))) == 1)
                      {
                        LOBYTE(v510) = 0;
                        v384 = -[BWDepthConverterNode initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:]([BWDepthConverterNode alloc], "initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:", v583, cameraInfoByPortType, [v575 sensorIDDictionary], v581, objc_msgSend(v24, "clientIsCameraOrDerivative"), v307 == 6);
                        v667 = v324;
                        v668 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
                        OUTLINED_FUNCTION_9_34();
                        if ((objc_msgSendSuper2(v385, v386, v384) & 1) == 0)
                        {
                          goto LABEL_560;
                        }

                        [(BWNode *)v384 setName:@"Still Image Depth Converter"];
                        [v24 horizontalSensorBinningFactor];
                        [OUTLINED_FUNCTION_7() setHorizontalSensorBinningFactor:?];
                        [v24 verticalSensorBinningFactor];
                        v387 = [OUTLINED_FUNCTION_7() setVerticalSensorBinningFactor:?];
                        v389 = FigCaptureFrontDepthDataToRGBRotationAngle(v387, v388);
                        [(BWDepthConverterNode *)v384 setStillGDRFilteringSupportEnabled:1];
                        [(BWDepthConverterNode *)v384 setOutputFormat:1751411059];
                        [v24 depthDataTargetDimensions];
                        [OUTLINED_FUNCTION_7() setOutputDimensions:?];
                        [(BWDepthConverterNode *)v384 setBaseRotationDegrees:v389];
                        [(BWNode *)v384 input];
                        OUTLINED_FUNCTION_31_12();
                        if ((OUTLINED_FUNCTION_29_10(v389, v390, v391, v392) & 1) == 0)
                        {
                          goto LABEL_560;
                        }

                        *(v324 + 88) = v384;
                        output5 = [(BWNode *)v384 output];
                      }

                      goto LABEL_543;
                    }
                  }
                }
              }

LABEL_519:
              OUTLINED_FUNCTION_0_61();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
              goto LABEL_643;
            }
          }

          goto LABEL_470;
        }

LABEL_465:
        v325 = +[BWStillImageConditionalRouterInferenceConfiguration inferenceConfiguration];
        output4 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v325];
        k = v607;
        v690[8] = v607;
        v690[9] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        OUTLINED_FUNCTION_9_34();
        if ((objc_msgSendSuper2(v326, v327, output4) & 1) == 0)
        {
          goto LABEL_470;
        }

        [output4 setName:@"Inference Conditional Router"];
        [output4 input];
        if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_470;
        }

        [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:*(v607 + 48)];
        v328 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v607 + 52)];
        if ((v590 & 1) == 0)
        {
          v331 = portraitEffectsMatteDeliveryEnabled;
          if (v531 <= 0)
          {
            v331 = 0;
          }

          if (v331)
          {
            v329 = 0;
            goto LABEL_475;
          }

          if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v607 _addLandmarksInferenceToNode:v328])
          {
            goto LABEL_695;
          }
        }

        v329 = 1;
LABEL_475:
        if ((v576 & v545) == 1)
        {
          name2 = [(BWNode *)v328 name];
          v333 = [(NSString *)name2 length];
          v334 = @"Person Semantics";
          if (v333)
          {
            v510 = @"Person Semantics";
            v334 = [(NSString *)name2 stringByAppendingFormat:@" + %@"];
          }

          [(BWNode *)v328 setName:v334];
          OUTLINED_FUNCTION_5_50();
          [BWInferenceNode addInferenceOfType:v328 version:"addInferenceOfType:version:configuration:" configuration:104];
          if (v531 >= 1)
          {
            [v24 portraitEffectsMatteMainImageDownscalingFactor];
            if (-[FigCaptureStillImageUnifiedBracketingSinkPipeline _addMattingInferenceToNode:mattingVersion:refinedDepthEnabled:mainImageDownscalingFactor:enabledSemantics:metalCommandQueue:mattingsensorConfigurationsByPortType:clientIsCameraOrDerivative:requiredAdditionalInferenceOutputBuffers:zoomFactorForPortrait:](v607, v328, v522, 0, -[BWPersonSemanticsConfiguration enabledSemantics](v525, "enabledSemantics"), [v583 metalCommandQueue], v556, objc_msgSend(v24, "clientIsCameraOrDerivative"), v498, v90, v521))
            {
              goto LABEL_695;
            }
          }
        }

        v690[6] = v607;
        v690[7] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        OUTLINED_FUNCTION_7_40();
        if (objc_msgSendSuper2(v335, v336, v328))
        {
          v590 = v329;
          v337 = [objc_msgSend(output4 "outputs")];
          [(BWNode *)v328 input];
          if ([OUTLINED_FUNCTION_15_21() connectOutput:v337 toInput:? pipelineStage:?])
          {
            [(BWNode *)v328 output];
            v314 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
            [(BWNode *)v314 setName:@"Disparity/Inference Sync"];
            [(BWInferenceSynchronizerNode *)v314 setSynchronizesTopLevelAttachments:1];
            v690[4] = v607;
            v690[5] = FigCaptureStillImageUnifiedBracketingSinkPipeline;
            OUTLINED_FUNCTION_11_30();
            if (objc_msgSendSuper2(v338, v339, v314))
            {
              v340 = [objc_msgSend(output4 "outputs")];
              [(NSArray *)[(BWNode *)v314 inputs] objectAtIndexedSubscript:0];
              OUTLINED_FUNCTION_31_12();
              if (([BWInferenceNode connectOutput:v328 toInput:"connectOutput:toInput:pipelineStage:" pipelineStage:v340]& 1) != 0)
              {
                [(NSArray *)[(BWNode *)v314 inputs] objectAtIndexedSubscript:1];
                [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
                OUTLINED_FUNCTION_21_19();
                v308 = v576;
                LODWORD(v307) = depthDataType2;
                if (v341)
                {
                  goto LABEL_538;
                }
              }
            }
          }
        }

        goto LABEL_470;
      }
    }
  }

  if ((v586 & 1) == 0)
  {
    v324 = v607;
    OUTLINED_FUNCTION_21_19();
    goto LABEL_539;
  }

  OUTLINED_FUNCTION_23_13();
  if (v107)
  {
    goto LABEL_465;
  }

  if (v588)
  {
    goto LABEL_460;
  }

  if (!v551)
  {
    v324 = v607;
    OUTLINED_FUNCTION_21_19();
LABEL_543:
    if (output8)
    {
      v393 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
      [(BWNode *)v393 setName:@"DepthData Processing / PersonSemantics"];
      v665 = v324;
      v666 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      OUTLINED_FUNCTION_9_34();
      if ((objc_msgSendSuper2(v394, v395, v393) & 1) == 0)
      {
        goto LABEL_560;
      }

      [(NSArray *)[(BWNode *)v393 inputs] objectAtIndexedSubscript:0];
      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_560;
      }

      [(NSArray *)[(BWNode *)v393 inputs] objectAtIndexedSubscript:1];
      if (([OUTLINED_FUNCTION_6_44() connectOutput:output8 toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_560;
      }

      output5 = [(BWNode *)v393 output];
    }

    if (v533)
    {
      v396 = [BWStillImagePortraitMetadataNode alloc];
      *&v397 = v90;
      v398 = [(BWStillImagePortraitMetadataNode *)v396 initWithNodeConfiguration:v583 sdofRenderingVersion:v533 sensorConfigurationsByPortType:output4 defaultPortType:firstObject2 defaultZoomFactor:v397];
      v663 = v324;
      v664 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      OUTLINED_FUNCTION_9_34();
      if ((objc_msgSendSuper2(v399, v400, v398) & 1) == 0)
      {
        goto LABEL_560;
      }

      [(BWNode *)v398 input];
      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_560;
      }

      output5 = [(BWNode *)v398 output];
    }

    if (!v308)
    {
LABEL_572:
      if (filterRenderingEnabled)
      {
        [(BWStillImageConditionalRouterNode *)k previewQualityAdjustedPhotoFilterRenderingEnabled];
        OUTLINED_FUNCTION_41_10();
        if (v107)
        {
          v420 = 0;
        }

        else
        {
          v420 = v419;
        }

        v421 = [BWStillImageFilterNode alloc];
        LOBYTE(v514) = 0;
        LODWORD(v510) = v420;
        *&v422 = v90;
        v423 = [(BWStillImageFilterNode *)v421 initWithNodeConfiguration:v583 sensorConfigurationsByPortType:output4 statusDelegate:0 depthDataDeliveryEnabled:v588 personSegmentationEnabled:portraitEffectsMatteDeliveryEnabled refinedDepthEnabled:portraitEffectsMatteDeliveryEnabled & v528 portraitRenderQuality:0.0 targetAspectRatio:v422 defaultPortType:v510 defaultZoomFactor:firstObject2 backPressureDrivenPipelining:v514];
        v653 = v324;
        v654 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        OUTLINED_FUNCTION_7_40();
        if ((objc_msgSendSuper2(v424, v425, v423) & 1) == 0)
        {
          goto LABEL_726;
        }

        [(BWNode *)v423 input];
        if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_726;
        }

        output9 = [(BWNode *)v423 output];
      }

      else
      {
        output9 = output5;
      }

      if (v587 != 1)
      {
        goto LABEL_584;
      }

      v427 = [[BWStillImageTurnstileNode alloc] initWithStillImageCoordinator:*(v324 + 56)];
      v651 = v324;
      v652 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      OUTLINED_FUNCTION_11_30();
      if (objc_msgSendSuper2(v428, v429, v427))
      {
        [(BWNode *)v427 input];
        if ([OUTLINED_FUNCTION_6_44() connectOutput:output9 toInput:? pipelineStage:?])
        {
          output9 = [(BWNode *)v427 output];
LABEL_584:
          v604 = output9;
          dictionary6 = [MEMORY[0x1E695DF90] dictionary];
          [v24 gainMapMainImageDownscalingFactor];
          if (v431 != 0.0)
          {
            v432 = MEMORY[0x1E696AD98];
            [v24 gainMapMainImageDownscalingFactor];
            [dictionary6 setObject:objc_msgSend(v432 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
          }

          if (demosaicedRawEnabled)
          {
            [dictionary6 setObject:&unk_1F224A860 forKeyedSubscript:0x1F21AAE10];
            v650 = 0u;
            v649 = 0u;
            v648 = 0u;
            v647 = 0u;
            v621 = OUTLINED_FUNCTION_55_9();
            if (v621)
            {
              v618 = *v648;
              do
              {
                for (m = 0; m != v621; ++m)
                {
                  if (*v648 != v618)
                  {
                    objc_enumerationMutation(dictionary3);
                  }

                  v434 = *(*(&v647 + 1) + 8 * m);
                  v643 = 0u;
                  v644 = 0u;
                  v645 = 0u;
                  v646 = 0u;
                  v435 = [dictionary3 objectForKeyedSubscript:v434];
                  v436 = [v435 countByEnumeratingWithState:&v643 objects:v642 count:16];
                  if (v436)
                  {
                    v437 = v436;
                    v438 = *v644;
                    do
                    {
                      for (n = 0; n != v437; ++n)
                      {
                        if (*v644 != v438)
                        {
                          objc_enumerationMutation(v435);
                        }

                        v440 = MEMORY[0x1E696AD98];
                        [v24 ubInferenceMainImageDownscalingFactor];
                        [v440 numberWithFloat:?];
                        [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
                      }

                      v437 = [v435 countByEnumeratingWithState:&v643 objects:v642 count:16];
                    }

                    while (v437);
                  }
                }

                v621 = OUTLINED_FUNCTION_55_9();
              }

              while (v621);
            }
          }

          dictionary7 = [MEMORY[0x1E695DF90] dictionary];
          [v24 portraitEffectsMatteMainImageDownscalingFactor];
          if (v442 != 0.0)
          {
            if (portraitEffectsMatteDeliveryEnabled)
            {
              v443 = MEMORY[0x1E696AD98];
              [v24 portraitEffectsMatteMainImageDownscalingFactor];
              [dictionary7 setObject:objc_msgSend(v443 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
            }

            memset(v641, 0, sizeof(v641));
            enabledSemanticSegmentationMatteURNs4 = [v24 enabledSemanticSegmentationMatteURNs];
            v445 = [enabledSemanticSegmentationMatteURNs4 countByEnumeratingWithState:v641 objects:v640 count:16];
            if (v445)
            {
              v446 = v445;
              do
              {
                for (ii = 0; ii != v446; ++ii)
                {
                  OUTLINED_FUNCTION_10_18();
                  if (!v107)
                  {
                    objc_enumerationMutation(enabledSemanticSegmentationMatteURNs4);
                  }

                  if (BWPhotoEncoderAttachedMediaKeyForSemanticSegmentationMatteURN(*(*(&v641[0] + 1) + 8 * ii), v448))
                  {
                    v449 = MEMORY[0x1E696AD98];
                    [v24 portraitEffectsMatteMainImageDownscalingFactor];
                    [v449 numberWithFloat:?];
                    [OUTLINED_FUNCTION_24_1() setObject:? forKeyedSubscript:?];
                  }
                }

                v446 = [enabledSemanticSegmentationMatteURNs4 countByEnumeratingWithState:v641 objects:v640 count:16];
              }

              while (v446);
            }
          }

          deviceHasFlash = [v24 deviceHasFlash];
          if (v558 == 1)
          {
            v451 = 1;
          }

          else
          {
            v451 = deviceHasFlash;
          }

          v639 = 0;
          v638 = 0;
          v759[0] = [FigCaptureStillImageUnifiedBracketingSinkPipeline _buildScaleAndEncodeSubPipelineWithPipelineStage:v607 graph:v553 nodeConfiguration:provider stillImageSinkPipelineWithConfiguration:v583 sensorConfigurationsByPortType:v24 supportsScaling:dictionary provideMeteorHeadroom:1 providePostEncodeInferences:(v565 & 1u | (v558 == 1)) semanticDevelopmentVersion:captureTimePhotosCurationSupported constituentPhotoDeliveryEnabled:semanticDevelopmentVersion demosaicedRawEnabled:v551 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:dictionary6 propagatedMainImageDownscalingFactorByAttachedMediaKey:dictionary7 inferenceScheduler:delegate subPipelineInputOut:&v639 subPipelineOutputOut:&v638 cameraSupportsFlash:v451 cinematicFramingStatesProvider:scheduler];
          if (v759[0])
          {
            OUTLINED_FUNCTION_2_64();
            LODWORD(v511) = v506;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v511);
            goto LABEL_643;
          }

          if ([provider connectOutput:v604 toInput:v639 pipelineStage:v553])
          {
            v452 = v638;
            if ([v584 optimizesImagesForOfflineVideoStabilization])
            {
              dictionary8 = [MEMORY[0x1E695DF90] dictionary];
              v634 = 0u;
              v635 = 0u;
              v636 = 0u;
              v637 = 0u;
              if (OUTLINED_FUNCTION_53_8())
              {
                do
                {
                  OUTLINED_FUNCTION_42();
                  if (!v107)
                  {
                    objc_enumerationMutation(dictionary);
                  }

                  [dictionary8 setObject:objc_msgSend(objc_msgSend(dictionary forKeyedSubscript:{"objectForKeyedSubscript:", **(&v634 + 1)), "sensorIDDictionary"), **(&v634 + 1)}];
                  OUTLINED_FUNCTION_46_10();
                }

                while (!v107 || OUTLINED_FUNCTION_53_8());
              }

              horizontalSensorBinningFactor = [v24 horizontalSensorBinningFactor];
              verticalSensorBinningFactor = [v24 verticalSensorBinningFactor];
              [v24 maxSupportedFrameRate];
              v457 = FigCaptureBuildMotionAttachmentsNode(v607, v452, horizontalSensorBinningFactor, verticalSensorBinningFactor, v613, [v24 motionAttachmentsSource], dictionary8, objc_msgSend(v24, "cameraInfoByPortType"), v456, v527, 0, 0, 1, 1, 0, v759);
              if (v759[0])
              {
                LODWORD(v511) = v759[0];
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v511);
                goto LABEL_643;
              }

              v452 = v457;
            }

            v458 = [BWStillImageSampleBufferSinkNode alloc];
            [v607 sinkID];
            v459 = [OUTLINED_FUNCTION_8() initWithSinkID:?];
            [v459 setName:@"Still Image Sink"];
            [dictionary7 allKeys];
            [OUTLINED_FUNCTION_8() setPropagatedAttachedMediaKeys:?];
            [v459 setCameraSupportsFlash:v451];
            v632 = v607;
            v633 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
            OUTLINED_FUNCTION_9_34();
            if (objc_msgSendSuper2(v460, v461, v459))
            {
              *(v607 + 72) = v459;
              [v459 input];
              if ([OUTLINED_FUNCTION_44_10() connectOutput:v452 toInput:? pipelineStage:?])
              {
                v631 = 0u;
                v630 = 0u;
                v629 = 0u;
                v628 = 0u;
                nodes = [v607 nodes];
                v463 = [nodes countByEnumeratingWithState:&v628 objects:v627 count:16];
                if (v463)
                {
                  v464 = v463;
                  v465 = *v629;
                  do
                  {
                    for (jj = 0; jj != v464; ++jj)
                    {
                      if (*v629 != v465)
                      {
                        objc_enumerationMutation(nodes);
                      }

                      v467 = *(*(&v628 + 1) + 8 * jj);
                      [v467 setDeferredPreparePriority:1];
                      memset(v626, 0, sizeof(v626));
                      inputs = [v467 inputs];
                      if ([inputs countByEnumeratingWithState:v626 objects:v625 count:16])
                      {
                        do
                        {
                          OUTLINED_FUNCTION_30_6();
                          if (!v107)
                          {
                            objc_enumerationMutation(inputs);
                          }

                          [objc_msgSend(**(&v626[0] + 1) "connection")];
                          OUTLINED_FUNCTION_46_10();
                        }

                        while (!v107 || [inputs countByEnumeratingWithState:v626 objects:v625 count:16]);
                      }
                    }

                    v464 = [nodes countByEnumeratingWithState:&v628 objects:v627 count:16];
                  }

                  while (v464);
                }

                [*(v607 + 56) setDeferredPreparePriority:4];
                goto LABEL_643;
              }
            }
          }

          OUTLINED_FUNCTION_0_61();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v511);
          goto LABEL_643;
        }
      }

LABEL_726:
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    if (v590)
    {
LABEL_554:
      if ((v545 & (v531 > 0)) != 0)
      {
        [v617 complementMatteSuppressionDecisionWithISPDetectedFaces];
        OUTLINED_FUNCTION_41_10();
        if (v107)
        {
          v402 = v401;
        }

        else
        {
          v402 = 4;
        }

        v559 = [[BWMatteMediaSuppressionNode alloc] initWithBehavior:v402 | v559];
        [(BWNode *)v559 setName:@"Matting Media Suppression Node"];
        v655 = v324;
        v656 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        OUTLINED_FUNCTION_9_34();
        if ((objc_msgSendSuper2(v404, v405, v559) & 1) == 0)
        {
          goto LABEL_560;
        }

        [(BWNode *)v559 input];
        if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_560;
        }

LABEL_571:
        output5 = [(BWNode *)v559 output];
        v324 = v607;
        goto LABEL_572;
      }

      v406 = +[BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration personSegmentationAndMattingConfiguration];
      k = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v406];
      [(BWNode *)k setName:@"Matting Conditional Router"];
      v659 = v324;
      v660 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      OUTLINED_FUNCTION_9_34();
      if (objc_msgSendSuper2(v407, v408, k))
      {
        output4 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v324 + 52)];
        if ((v545 & 1) == 0)
        {
          OUTLINED_FUNCTION_5_50();
          [output4 addInferenceOfType:104 version:? configuration:?];
          [output4 setName:@"PersonSemantics"];
        }

        [v24 portraitEffectsMatteMainImageDownscalingFactor];
        v410 = v409;
        enabledSemantics2 = [(BWPersonSemanticsConfiguration *)v525 enabledSemantics];
        metalCommandQueue2 = [v583 metalCommandQueue];
        [v24 clientIsCameraOrDerivative];
        OUTLINED_FUNCTION_25_12();
        if ([(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v324 _addMattingInferenceToNode:output4 mattingVersion:v413 refinedDepthEnabled:v414 mainImageDownscalingFactor:enabledSemantics2 enabledSemantics:metalCommandQueue2 metalCommandQueue:v556 mattingsensorConfigurationsByPortType:v415 clientIsCameraOrDerivative:v410 requiredAdditionalInferenceOutputBuffers:v90 zoomFactorForPortrait:v510])
        {
          goto LABEL_695;
        }

        v658.receiver = v324;
        v658.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        if ((objc_msgSendSuper2(&v658, v599, output4, &v758) & 1) == 0)
        {
          OUTLINED_FUNCTION_0_61();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
          goto LABEL_643;
        }

        v416 = [BWFunnelNode alloc];
        OUTLINED_FUNCTION_26_12();
        v559 = [v417 initWithNumberOfInputs:? mediaType:?];
        [(BWNode *)v559 setName:@"Matting Funnel"];
        v657.receiver = v324;
        v657.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
        if ((objc_msgSendSuper2(&v657, v599, v559, &v758) & 1) == 0)
        {
          goto LABEL_726;
        }

        [(BWNode *)k input];
        if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_726;
        }

        -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](k, "outputs"), "objectAtIndexedSubscript:", [v406 defaultOutputIndex]);
        [objc_msgSend(OUTLINED_FUNCTION_45_1() "inputs")];
        if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_726;
        }

        -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](k, "outputs"), "objectAtIndexedSubscript:", [v406 personSegmentationAndMattingOuputIndex]);
        [output4 input];
        if (([OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_726;
        }

        [output4 output];
        [objc_msgSend(OUTLINED_FUNCTION_45_1() "inputs")];
        [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
        OUTLINED_FUNCTION_21_19();
        if ((v418 & 1) == 0)
        {
          goto LABEL_726;
        }

        goto LABEL_571;
      }

LABEL_560:
      OUTLINED_FUNCTION_0_61();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
      goto LABEL_643;
    }

    v493 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v324 + 52)];
    if (![(FigCaptureStillImageUnifiedBracketingSinkPipeline *)v324 _addLandmarksInferenceToNode:v493])
    {
      v661 = v324;
      v662 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      OUTLINED_FUNCTION_9_34();
      if ((objc_msgSendSuper2(v494, v495, v493) & 1) == 0)
      {
        goto LABEL_560;
      }

      [(BWNode *)v493 input];
      if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_560;
      }

      [(BWNode *)v493 output];
      goto LABEL_554;
    }

LABEL_695:
    v505 = -12780;
LABEL_696:
    v759[0] = v505;
    goto LABEL_643;
  }

  k = v582;
  objc = [BWStillImageConditionalRouterUBConfiguration configurationWithPortTypes:v582];
  output4 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:objc];
  v678 = v607;
  v679 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  OUTLINED_FUNCTION_9_34();
  if ((objc_msgSendSuper2(v369, v370, output4) & 1) == 0)
  {
    goto LABEL_470;
  }

  [output4 setName:@"UB Router for ConstituentPhoto without Depth"];
  [output4 input];
  if (([OUTLINED_FUNCTION_3_58() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
  {
    goto LABEL_470;
  }

  v371 = [BWStillImageMultiCameraDoserNode alloc];
  [dictionary allKeys];
  v372 = [OUTLINED_FUNCTION_4() initWithPortTypes:?];
  v677.receiver = v607;
  v677.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  if (objc_msgSendSuper2(&v677, v599, v372, &v758))
  {
    v606 = output4;
    v373 = [BWFunnelNode alloc];
    [(BWStillImageConditionalRouterNode *)v582 count];
    v374 = [OUTLINED_FUNCTION_4() initWithNumberOfInputs:? mediaType:?];
    v676.receiver = v607;
    v676.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if (objc_msgSendSuper2(&v676, v599, v374, &v758))
    {
      v375 = [v374 setName:@"Camera Calibration Data"];
      v675 = 0u;
      v674 = 0u;
      v673 = 0u;
      v672 = 0u;
      v377 = OUTLINED_FUNCTION_37_2(v375, v376, &v672, v671);
      if (v377)
      {
        v378 = v377;
        k = *v673;
LABEL_528:
        output4 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_30_6();
          if (!v107)
          {
            objc_enumerationMutation(v582);
          }

          v379 = [(BWStillImageConditionalRouterUBConfiguration *)objc outputIndexForPortType:*(*(&v672 + 1) + 8 * output4)];
          if (v379 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_695;
          }

          v380 = v379;
          if (([provider connectOutput:objc_msgSend(objc_msgSend(v606 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", v379), objc_msgSend(objc_msgSend(v372, "inputs"), "objectAtIndexedSubscript:", v379), v613}] & 1) == 0 || (objc_msgSend(provider, "connectOutput:toInput:pipelineStage:", objc_msgSend(objc_msgSend(v372, "outputs"), "objectAtIndexedSubscript:", v380), objc_msgSend(objc_msgSend(v374, "inputs"), "objectAtIndexedSubscript:", v380), v613) & 1) == 0)
          {
            goto LABEL_560;
          }

          if (v378 == ++output4)
          {
            v378 = [(BWStillImageConditionalRouterNode *)v582 countByEnumeratingWithState:&v672 objects:v671 count:16];
            if (v378)
            {
              goto LABEL_528;
            }

            break;
          }
        }
      }

      v314 = [[BWStillImageCameraCalibrationDataNode alloc] initWithSensorConfigurationsByPortType:dictionary];
      [(BWInferenceSynchronizerNode *)v314 setPropagatesDetectedObjects:1];
      -[BWInferenceSynchronizerNode setBaseZoomFactorsByPortType:](v314, "setBaseZoomFactorsByPortType:", [v24 baseZoomFactorsByPortType]);
      [(BWNode *)v314 setName:@"Still Image Camera Calibration Data"];
      v669 = v607;
      v670 = FigCaptureStillImageUnifiedBracketingSinkPipeline;
      OUTLINED_FUNCTION_9_34();
      if ((objc_msgSendSuper2(v381, v382, v314) & 1) == 0)
      {
        goto LABEL_560;
      }

      [v374 output];
      [OUTLINED_FUNCTION_45_1() input];
      [OUTLINED_FUNCTION_4_51() connectOutput:? toInput:? pipelineStage:?];
      OUTLINED_FUNCTION_21_19();
      v308 = v576;
      LODWORD(v307) = depthDataType2;
      if ((v383 & 1) == 0)
      {
        goto LABEL_560;
      }

      goto LABEL_538;
    }

    OUTLINED_FUNCTION_0_61();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
  }

  else
  {
    OUTLINED_FUNCTION_0_61();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v510);
  }

LABEL_643:
  result = v759[0];
  if (!v759[0])
  {
    if (v758)
    {
      return [v758 code];
    }
  }

  return result;
}

- (uint64_t)_buildRedEyeReductionSubPipelineWithName:(uint64_t)name pipelineStage:(uint64_t)stage graph:(uint64_t)graph sensorConfigurationsByPortType:(uint64_t)type inferenceScheduler:(BWNodeInput *)scheduler subPipelineInputOut:(BWNodeOutput *)out subPipelineOutputOut:
{
  if (result)
  {
    v10 = result;
    v11 = +[BWLandmarksInferenceConfiguration configuration];
    [v11 setDetectLandmarksInFullSizeInput:1];
    v12 = +[BWStillImageConditionalRouterLandmarksConfiguration landmarksConfiguration];
    v13 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v12];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Landmarks Input Routing Node", a2];
    [OUTLINED_FUNCTION_4() setName:?];
    OUTLINED_FUNCTION_40_11();
    if (objc_msgSendSuper2(v14, v15, v13) & 1) != 0 && (v16 = -[BWInferenceNode initWithScheduler:priority:]([BWInferenceNode alloc], "initWithScheduler:priority:", type, *(v10 + 52)), v34 = a2, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Landmarks Node", a2], objc_msgSend(OUTLINED_FUNCTION_8(), "setName:"), -[BWInferenceNode addInferenceOfType:version:configuration:](v16, "addInferenceOfType:version:configuration:", 801, objc_msgSend(v11, "landmarksInferenceVersion") & 0xFFFFFFFFFFFFLL, v11), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v17, v18, v16)) && (v19 = [BWFunnelNode alloc], OUTLINED_FUNCTION_26_12(), v21 = objc_msgSend(v20, "initWithNumberOfInputs:mediaType:holdMessages:"), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v22, v23, v21)) && (v24 = -[BWNode input](v13, "input"), v25 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v13, "outputs"), "objectAtIndexedSubscript:", objc_msgSend(v12, "defaultOutputIndex")), objc_msgSend(objc_msgSend(v21, "inputs"), "objectAtIndexedSubscript:", 0), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v25)) && (v26 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v13, "outputs"), "objectAtIndexedSubscript:", objc_msgSend(v12, "landmarksOutputIndex")), -[BWNode input](v16, "input"), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v26)) && (v27 = -[BWNode output](v16, "output"), objc_msgSend(objc_msgSend(v21, "inputs"), "objectAtIndexedSubscript:", 1), (objc_msgSend(OUTLINED_FUNCTION_6_44(), "connectOutput:toInput:pipelineStage:", v27)) && (objc_msgSend(v21, "output"), v28 = -[BWRedEyeReducerNode initWithVersion:sensorConfigurationsByPortType:]([BWRedEyeReducerNode alloc], "initWithVersion:sensorConfigurationsByPortType:", 1, graph), objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ Red Eye Reducer", v34), objc_msgSend(OUTLINED_FUNCTION_8(), "setName:"), -[BWRedEyeReducerNode setInferenceType:](v28, "setInferenceType:", 801), -[BWRedEyeReducerNode setInferenceAttachmentKey:](v28, "setInferenceAttachmentKey:", 0x1F219E5F0), OUTLINED_FUNCTION_40_11(), (objc_msgSendSuper2(v29, v30, v28)) && (-[BWNode input](v28, "input"), (objc_msgSend(OUTLINED_FUNCTION_4_51(), "connectOutput:toInput:pipelineStage:")))
    {
      output = [(BWNode *)v28 output];
      result = 4294954516;
      if (v24)
      {
        if (output)
        {
          result = 0;
          *scheduler = v24;
          *out = output;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954516;
    }
  }

  return result;
}

- (void)_addLandmarksInferenceToNode:(void *)result
{
  if (result)
  {
    name = [a2 name];
    v4 = [name length];
    v5 = @"Landmarks";
    if (v4)
    {
      v5 = [name stringByAppendingFormat:@" + %@", @"Landmarks"];
    }

    [a2 setName:v5];
    v6 = +[BWLandmarksInferenceConfiguration configuration];
    +[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces];
    [OUTLINED_FUNCTION_4() setMaximumNumberOfFaces:?];
    [v6 landmarksInferenceVersion];
    v7 = OUTLINED_FUNCTION_38();

    return [v7 addInferenceOfType:801 version:? configuration:?];
  }

  return result;
}

- (uint64_t)_addMattingInferenceToNode:(unsigned int)node mattingVersion:(uint64_t)version refinedDepthEnabled:(unsigned int)enabled mainImageDownscalingFactor:(uint64_t)factor enabledSemantics:(void *)semantics metalCommandQueue:(char)queue mattingsensorConfigurationsByPortType:(float)type clientIsCameraOrDerivative:(float)self0 requiredAdditionalInferenceOutputBuffers:(unsigned int)self1 zoomFactorForPortrait:
{
  if (!self)
  {
    return 0;
  }

  name = [a2 name];
  v21 = [name length];
  v22 = @"Matting";
  factorCopy = factor;
  if (v21)
  {
    v22 = [name stringByAppendingFormat:@" + %@", @"Matting"];
  }

  [a2 setName:v22];
  v23 = [objc_msgSend(semantics "allKeys")];
  v24 = [objc_msgSend(semantics objectForKeyedSubscript:{v23), "sensorIDDictionary"}];
  v25 = +[FigCaptureCameraParameters sharedInstance];
  v26 = [objc_msgSend(semantics objectForKeyedSubscript:{v23), "sensorIDString"}];
  *&v27 = derivative;
  if ([(FigCaptureCameraParameters *)v25 sdofRenderingVersionForPortType:v23 sensorIDString:v26 zoomFactor:v27])
  {
    *&v28 = derivative;
    v29 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v24 zoomFactor:v28];
  }

  else
  {
    v29 = 0;
  }

  if (node == 1)
  {
    v30 = [(BWInferenceConfiguration *)[BWMattingInferenceConfiguration alloc] initWithInferenceType:201];
    [(BWInferenceConfiguration *)v30 setPriority:*(self + 52)];
    [(BWInferenceConfiguration *)v30 setTuningParameters:v24];
    [(BWMattingInferenceConfiguration *)v30 setSdofRenderingTuningParameters:v29];
    *&v31 = type;
    [(BWMattingInferenceConfiguration *)v30 setMainImageDownscalingFactor:v31];
    [(BWMattingInferenceConfiguration *)v30 setRefinedDepthDeliveryEnabled:version];
    [(BWMattingInferenceConfiguration *)v30 setMetalCommandQueue:factor];
    BWInferenceVersionMakeMajor(1);
    v32 = [OUTLINED_FUNCTION_38() addInferenceOfType:201 version:? configuration:?];
LABEL_27:
    if ((queue & 1) == 0)
    {
      [a2 setAwaitAsynchronousOutputs:1];
    }

    if (buffers)
    {
      [a2 setAdditionalOutputPoolRetainedBufferCount:buffers];
    }

    return v32;
  }

  queueCopy = queue;
  if ([(FigCaptureCameraParameters *)v25 learnedMattingVersion]< 1)
  {
    versionCopy = 1;
  }

  else
  {
    versionCopy = version;
  }

  versionCopy3 = version | 2;
  if (!versionCopy)
  {
    versionCopy3 = version;
  }

  if ((enabled & 1) == 0)
  {
    versionCopy3 = version;
  }

  v35 = enabled & 0x78 | (4 * ((enabled >> 1) & 1)) | versionCopy3;
  if (v35)
  {
    v36 = [(BWInferenceConfiguration *)[BWMattingV2InferenceConfiguration alloc] initWithInferenceType:201];
    [(BWMattingV2InferenceConfiguration *)v36 setSensorConfigurationsByPortType:semantics];
    [(BWMattingV2InferenceConfiguration *)v36 setEnabledMattes:v35];
    [(BWMattingV2InferenceConfiguration *)v36 setTuningConfiguration:2];
    [(BWInferenceConfiguration *)v36 setPriority:*(self + 52)];
    [(BWMattingV2InferenceConfiguration *)v36 setSdofRenderingTuningParameters:v29];
    *&v37 = type;
    [(BWMattingV2InferenceConfiguration *)v36 setMainImageDownscalingFactor:v37];
    [(BWMattingV2InferenceConfiguration *)v36 setDepthDataDeliveryEnabled:version];
    [(BWMattingV2InferenceConfiguration *)v36 setMetalCommandQueue:factorCopy];
    BWInferenceVersionMakeMajor(node);
    v38 = [OUTLINED_FUNCTION_38() addInferenceOfType:201 version:? configuration:?];
    if (v38)
    {
      return v38;
    }
  }

  if (enabled)
  {
    v39 = versionCopy;
  }

  else
  {
    v39 = 1;
  }

  if (v39)
  {
    v32 = 0;
    queue = queueCopy;
    goto LABEL_27;
  }

  name2 = [a2 name];
  v41 = [name2 length];
  v42 = @"Learned Matting";
  queue = queueCopy;
  if (v41)
  {
    v42 = [name2 stringByAppendingFormat:@" + %@", @"Learned Matting"];
  }

  [a2 setName:v42];
  v43 = [(BWInferenceConfiguration *)[BWLearnedMattingInferenceConfiguration alloc] initWithInferenceType:107];
  [(BWTiledEspressoInferenceConfiguration *)v43 setMetalCommandQueue:0];
  *&v44 = type;
  [(BWLearnedMattingInferenceConfiguration *)v43 setMainImageDownscalingFactor:v44];
  BWInferenceVersionMakeMajor([(FigCaptureCameraParameters *)v25 learnedMattingVersion]);
  v32 = [OUTLINED_FUNCTION_38() addInferenceOfType:107 version:? configuration:?];
  if (!v32)
  {
    goto LABEL_27;
  }

  return v32;
}

- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)result graph:(uint64_t)graph nodeConfiguration:(void *)configuration stillImageSinkPipelineWithConfiguration:(uint64_t)withConfiguration sensorConfigurationsByPortType:(void *)type supportsScaling:(uint64_t)scaling provideMeteorHeadroom:(void *)headroom providePostEncodeInferences:(void *)inferences semanticDevelopmentVersion:(char)version constituentPhotoDeliveryEnabled:(int)self0 demosaicedRawEnabled:(unsigned __int8)self1 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)self2 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)self3 inferenceScheduler:(uint64_t)self4 subPipelineInputOut:(uint64_t)self5 subPipelineOutputOut:(uint64_t)self6 cameraSupportsFlash:(unsigned __int8)self7 cinematicFramingStatesProvider:(void *)self8
{
  v94 = result;
  if (!result)
  {
    return result;
  }

  v126[0] = 0;
  if (!out)
  {
    v73 = qword_1EB58E298;
    v74 = v18;
    v75 = 2541;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, 0xFFFFCE14, "<<<< FigCaptureStillImageUnifiedBracketingSinkPipeline >>>>", v75, v74, headroom, inferences, v76);
  }

  if (!outputOut)
  {
    v73 = qword_1EB58E298;
    v74 = v18;
    v75 = 2542;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, 0xFFFFCE14, "<<<< FigCaptureStillImageUnifiedBracketingSinkPipeline >>>>", v75, v74, headroom, inferences, v76);
  }

  inferencesCopy = inferences;
  headroomCopy = headroom;
  [type sinkConfiguration];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sinkConfiguration = [type sinkConfiguration];
  }

  else
  {
    sinkConfiguration = 0;
  }

  if ([type cinematicFramingWarpingRequired])
  {
    v24 = -[BWCinematicFramingWarpingNode initWithFramingStatesProvider:outputDimensions:maxLossyCompressionLevel:]([BWCinematicFramingWarpingNode alloc], provider, [type cinematicFramingWarpingOutputDimensions], objc_msgSend(type, "maxLossyCompressionLevel"));
    [v24 setName:@"CinematicFramingWarper"];
    v125.receiver = v94;
    v125.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if (!objc_msgSendSuper2(&v125, &selRef_acquireWithError_, v24, v126))
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    input = [v24 input];
    output = [v24 output];
  }

  else
  {
    output = 0;
    input = 0;
  }

  if (headroomCopy)
  {
    v84 = inferencesCopy;
    v26 = sinkConfiguration;
    v27 = input;
    v28 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:1 nodeConfiguration:withConfiguration];
    [(BWNode *)v28 setName:@"Scaler"];
    [(BWStillImageScalerNode *)v28 setBlackFillingRequired:rawEnabled];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary addEntriesFromDictionary:key];
    [dictionary addEntriesFromDictionary:mediaKey];
    [OUTLINED_FUNCTION_18_17() setMainImageDownscalingFactorByAttachedMediaKey:?];
    v124.receiver = v94;
    v124.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v124, sel_addNode_error_, v28, v126) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    if (output && ([configuration connectOutput:output toInput:-[BWNode input](v28 pipelineStage:{"input"), graph}] & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954516;
    }

    input = v27;
    if (!v27)
    {
      input = [(BWNode *)v28 input];
    }

    output = [(BWNode *)v28 output];
    sinkConfiguration = v26;
    inferencesCopy = v84;
  }

  if (inferencesCopy)
  {
    v30 = [[BWMeteorHeadroomNode alloc] initWithNodeConfiguration:withConfiguration sensorConfigurationsByPortType:scaling];
    [(BWNode *)v30 setName:@"Meteor Headroom"];
    [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters meteorHeadroomProcessingType];
    [OUTLINED_FUNCTION_4() setHeadroomProcessingType:?];
    [type gainMapMainImageDownscalingFactor];
    [(BWMeteorHeadroomNode *)v30 setGainMapMainImageDownscalingFactor:?];
    v123.receiver = v94;
    v123.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
    if ((objc_msgSendSuper2(&v123, sel_addNode_error_, v30, v126) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    if (output && ([configuration connectOutput:output toInput:-[BWNode input](v30 pipelineStage:{"input"), graph}] & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954516;
    }

    if (!input)
    {
      input = [(BWNode *)v30 input];
    }

    v85 = input;
    output = [(BWNode *)v30 output];
  }

  else
  {
    v85 = input;
  }

  [sinkConfiguration previewQualityAdjustedPhotoFilterRenderingEnabled];
  OUTLINED_FUNCTION_41_10();
  if (v33)
  {
    v34 = 0;
  }

  else
  {
    v34 = v32;
  }

  v35 = [BWPhotoEncoderNode alloc];
  if (!version)
  {
    scheduler = 0;
  }

  v36 = [type stillImageSinkPipelineProcessingMode] == 1;
  BYTE1(v76) = [type clientIsCameraOrDerivative];
  LOBYTE(v76) = v36;
  v37 = [(BWPhotoEncoderNode *)v35 initWithNodeConfiguration:withConfiguration sensorConfigurationsByPortType:scaling semanticDevelopmentVersion:enabled inferenceScheduler:scheduler alwaysAwaitInference:enabled > 0 portraitRenderQuality:v34 deferredPhotoProcessorEnabled:v76 clientIsCameraOrDerivative:?];
  [(BWNode *)v37 setName:@"Encoder"];
  [(BWPhotoEncoderNode *)v37 setCameraSupportsFlash:flash];
  [type usesHighEncodingPriority];
  [OUTLINED_FUNCTION_17() setUsesHighEncodingPriority:?];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v119 = 0u;
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v46 = OUTLINED_FUNCTION_54_6(dictionary2, v39, v40, v41, v42, v43, v44, v45, v77, v79, v18, outputOut, out, v85, graph, configuration, scaling, withConfiguration, v94, output, v98.receiver, v98.super_class, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, *(&v116 + 1), v117, *(&v117 + 1), v118, *(&v118 + 1));
  if (v46)
  {
    v48 = v46;
    v49 = *v120;
    do
    {
      v50 = 0;
      do
      {
        if (*v120 != v49)
        {
          objc_enumerationMutation(key);
        }

        v51 = *(*(&v119 + 1) + 8 * v50);
        v52 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
        [objc_msgSend(key objectForKeyedSubscript:{v51), "floatValue"}];
        v53 = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)v52 initWithMainImageDownscalingFactor:1 propagationMode:?];
        v54 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
        ++v50;
      }

      while (v48 != v50);
      v46 = OUTLINED_FUNCTION_54_6(v54, v55, v56, v57, v58, v59, v60, v61, v78, v80, v81, v82, v83, v86, v87, v89, v91, v93, v95, v97, v98.receiver, v98.super_class, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, *(&v115 + 1), v116, *(&v116 + 1), v117, *(&v117 + 1), v118, *(&v118 + 1));
      v48 = v46;
    }

    while (v46);
  }

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v62 = OUTLINED_FUNCTION_37_2(v46, v47, &v115, &v99);
  if (v62)
  {
    v63 = v62;
    v64 = *v116;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v116 != v64)
        {
          objc_enumerationMutation(mediaKey);
        }

        v66 = *(*(&v115 + 1) + 8 * i);
        v67 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
        [objc_msgSend(mediaKey objectForKeyedSubscript:{v66), "floatValue"}];
        v68 = [(BWPhotoEncoderNodeAttachedMediaConfiguration *)v67 initWithMainImageDownscalingFactor:0 propagationMode:?];
        v69 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
      }

      v63 = OUTLINED_FUNCTION_37_2(v69, v70, &v115, &v99);
    }

    while (v63);
  }

  if ([dictionary2 count])
  {
    [(BWPhotoEncoderNode *)v37 setAttachedMediaConfigurationByAttachedMediaKey:dictionary2];
  }

  v98.receiver = v95;
  v98.super_class = FigCaptureStillImageUnifiedBracketingSinkPipeline;
  if ((objc_msgSendSuper2(&v98, sel_addNode_error_, v37, v126) & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 4294954510;
  }

  if (v97 && ([v89 connectOutput:v97 toInput:-[BWNode input](v37 pipelineStage:{"input"), v87}] & 1) == 0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 4294954516;
  }

  input2 = v86;
  if (!v86)
  {
    input2 = [(BWNode *)v37 input];
  }

  output2 = [(BWNode *)v37 output];
  result = 4294954516;
  if (input2)
  {
    if (output2)
    {
      result = 0;
      *v83 = input2;
      *v82 = output2;
    }
  }

  return result;
}

@end