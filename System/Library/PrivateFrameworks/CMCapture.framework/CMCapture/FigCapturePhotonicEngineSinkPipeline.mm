@interface FigCapturePhotonicEngineSinkPipeline
+ (void)initialize;
- (FigCapturePhotonicEngineSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type sourceSensorRawOutputsByPortType:(id)portType highResStillImageDimensions:(id)dimensions supplementalPointCloudCaptureDevice:(id)captureDevice supplementalPointCloudSourceOutput:(id)output captureStatusDelegate:(id)self0 inferenceScheduler:(id)self1 cinematicFramingStatesProvider:(id)self2 smartCropHomographyProvider:(id)self3 multiCamClientCompositingCallback:(id)self4 isPrimaryStillImagePipeline:(BOOL)self5 graph:(id)self6 name:(id)self7;
- (uint64_t)_addMattingInferenceToNode:(uint64_t)node mattingVersion:(int)version learnedMattingEnabled:(uint64_t)enabled learnedMattingVersion:(uint64_t)mattingVersion mainImageDownscalingFactor:(unsigned int)factor targetAspectRatio:(uint64_t)ratio appliesFinalCropRect:(float)rect enabledSemantics:(float)self0 metalCommandQueue:(uint64_t)self1 mattingSensorConfigurationsByPortType:(char)self2 clientIsCameraOrDerivative:(unsigned int)self3 requiredAdditionalInferenceOutputBuffers:;
- (uint64_t)_addScalerNodeWithNodeConfiguration:(int)configuration intermediate:(uint64_t)intermediate bravoConstituentPhotoDeliveryEnabled:(uint64_t)enabled mainImageDownscalingFactorByAttachedMediaKey:(int)key zoomingDepthSupported:(int)supported smartStyleReversibilityEnabled:(uint64_t)reversibilityEnabled constantColorConfidenceMapDimensions:(unsigned __int8)dimensions filterRenderingEnabled:(unsigned __int8)self0 enforcesZoomingForPortraitCaptures:(unsigned __int8)self1 backPressureDrivenPipelining:(void *)self2 scalerNodeInputOut:(BWNodeOutput *)self3 scalerNodeOutputOut:;
- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)stage graph:(uint64_t)graph nodeConfiguration:(void *)configuration stillImageSinkPipelineWithConfiguration:(void *)withConfiguration sensorConfigurationsByPortType:(void *)type supportsScaling:(uint64_t)scaling deferredPearlDepthProcessingEnabled:(void *)enabled provideMeteorHeadroom:(void *)headroom provideFlexGTC:(char)c providePostEncodeInferences:(char)stage0 semanticDevelopmentVersion:(char)stage1 constituentPhotoDeliveryEnabled:(int)stage2 demosaicedRawEnabled:(unsigned __int8)stage3 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)stage4 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)stage5 scalingMainImageDownscalingFactorByAttachedMediaKey:(uint64_t)stage6 inferenceScheduler:(uint64_t)stage7 subPipelineInputOut:(uint64_t)stage8 subPipelineOutputOut:(BWNodeOutput *)stage9 cameraSupportsFlash:(unsigned __int8)graph0 cinematicFramingStatesProvider:(void *)graph1 smartCropHomographyProvider:(void *)graph2 multiCamClientCompositingCallback:(uint64_t)graph3 photoEncoderControllerOut:(void *)graph4;
- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)configuration captureDevice:(uint64_t)device sourceOutputsByPortType:(uint64_t)type sourceSensorRawOutputsByPortType:(uint64_t)portType highResStillImageDimensions:(uint64_t)dimensions supplementalPointCloudCaptureDevice:(uint64_t)captureDevice supplementalPointCloudSourceOutput:(uint64_t)output captureStatusDelegate:(uint64_t)self0 inferenceScheduler:(void *)self1 cinematicFramingStatesProvider:(void *)self2 smartCropHomographyProvider:(uint64_t)self3 multiCamClientCompositingCallback:(void *)self4 graph:;
- (void)_addLandmarksInferenceToNode:(void *)result;
- (void)connectToSecondaryMultiCameraClientCompositingPipeline:(id)pipeline;
- (void)dealloc;
@end

@implementation FigCapturePhotonicEngineSinkPipeline

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (FigCapturePhotonicEngineSinkPipeline)initWithConfiguration:(id)configuration captureDevice:(id)device sourceOutputsByPortType:(id)type sourceSensorRawOutputsByPortType:(id)portType highResStillImageDimensions:(id)dimensions supplementalPointCloudCaptureDevice:(id)captureDevice supplementalPointCloudSourceOutput:(id)output captureStatusDelegate:(id)self0 inferenceScheduler:(id)self1 cinematicFramingStatesProvider:(id)self2 smartCropHomographyProvider:(id)self3 multiCamClientCompositingCallback:(id)self4 isPrimaryStillImagePipeline:(BOOL)self5 graph:(id)self6 name:(id)self7
{
  v27.receiver = self;
  v27.super_class = FigCapturePhotonicEngineSinkPipeline;
  v23 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v27, sel_initWithGraph_name_sinkID_, graph, name, [objc_msgSend(configuration "sinkConfiguration")]);
  v24 = v23;
  if (v23)
  {
    v23->_isPrimaryStillImagePipeline = pipeline;
    v25 = [(FigCapturePhotonicEngineSinkPipeline *)v23 _buildStillImageSinkPipelineWithConfiguration:configuration captureDevice:device sourceOutputsByPortType:type sourceSensorRawOutputsByPortType:portType highResStillImageDimensions:dimensions supplementalPointCloudCaptureDevice:captureDevice supplementalPointCloudSourceOutput:output captureStatusDelegate:delegate inferenceScheduler:scheduler cinematicFramingStatesProvider:provider smartCropHomographyProvider:homographyProvider multiCamClientCompositingCallback:callback graph:graph];
    if (v25)
    {
      [FigCapturePhotonicEngineSinkPipeline initWithConfiguration:v25 captureDevice:v24 sourceOutputsByPortType:? sourceSensorRawOutputsByPortType:? highResStillImageDimensions:? supplementalPointCloudCaptureDevice:? supplementalPointCloudSourceOutput:? captureStatusDelegate:? inferenceScheduler:? cinematicFramingStatesProvider:? smartCropHomographyProvider:? multiCamClientCompositingCallback:? isPrimaryStillImagePipeline:? graph:? name:?];
      return 0;
    }
  }

  return v24;
}

- (uint64_t)_buildStillImageSinkPipelineWithConfiguration:(uint64_t)configuration captureDevice:(uint64_t)device sourceOutputsByPortType:(uint64_t)type sourceSensorRawOutputsByPortType:(uint64_t)portType highResStillImageDimensions:(uint64_t)dimensions supplementalPointCloudCaptureDevice:(uint64_t)captureDevice supplementalPointCloudSourceOutput:(uint64_t)output captureStatusDelegate:(uint64_t)self0 inferenceScheduler:(void *)self1 cinematicFramingStatesProvider:(void *)self2 smartCropHomographyProvider:(uint64_t)self3 multiCamClientCompositingCallback:(void *)self4 graph:
{
  result = MEMORY[0x1EEE9AC00](self, a2, configuration, device);
  v706 = v19;
  v747 = v20;
  v723 = v21;
  if (!result)
  {
    return result;
  }

  v22 = v16;
  v23 = v15;
  v24 = result;
  obj = v17;
  v770 = v18;
  v1051[0] = 0;
  v1050 = 0;
  [v15 sinkConfiguration];
  objc_opt_class();
  sinkConfiguration = 0;
  if (objc_opt_isKindOfClass())
  {
    sinkConfiguration = [v23 sinkConfiguration];
  }

  *(v24 + 48) = [v23 pipelineStagePriority];
  *(v24 + 52) = [v23 inferencePriority];
  deferredProcessingSupported = [v23 deferredProcessingSupported];
  stillImageSinkPipelineProcessingMode = [v23 stillImageSinkPipelineProcessingMode];
  filterRenderingEnabled = [sinkConfiguration filterRenderingEnabled];
  depthDataDeliveryEnabled = [sinkConfiguration depthDataDeliveryEnabled];
  v759 = stillImageSinkPipelineProcessingMode;
  v765 = stillImageSinkPipelineProcessingMode == 1;
  v763 = depthDataDeliveryEnabled;
  if (stillImageSinkPipelineProcessingMode == 1)
  {
    v29 = depthDataDeliveryEnabled;
  }

  else
  {
    v29 = 0;
  }

  v719 = v29;
  v757 = v22;
  v805 = v29 == 1 && [v23 depthDataType] == 3;
  v30 = stillImageSinkPipelineProcessingMode == 1;
  deepFusionEnhancedResolutionDimensions = [v23 deepFusionEnhancedResolutionDimensions];
  v32 = v30 & v763;
  if (deepFusionEnhancedResolutionDimensions <= 0)
  {
    v32 = 0;
  }

  v750 = v32;
  previewQualityAdjustedPhotoFilterRenderingEnabled = [sinkConfiguration previewQualityAdjustedPhotoFilterRenderingEnabled];
  if (previewQualityAdjustedPhotoFilterRenderingEnabled)
  {
    v33 = 2;
  }

  else
  {
    v33 = 0;
  }

  v694 = v33;
  v34 = objc_alloc_init(BWPhotonicEngineNodeConfiguration);
  -[BWStillImageNodeConfiguration setPipelineProcessingContext:](v34, "setPipelineProcessingContext:", [v23 pipelineProcessingContext]);
  [(BWStillImageNodeConfiguration *)v34 setDeferredCaptureSupportEnabled:deferredProcessingSupported];
  [(BWStillImageNodeConfiguration *)v34 setDeferredPhotoProcessorEnabled:v30];
  [(BWStillImageNodeConfiguration *)v34 setFilterRenderingEnabled:filterRenderingEnabled];
  if (v763)
  {
    -[BWStillImageNodeConfiguration setDepthDataOutputDimensions:](v34, "setDepthDataOutputDimensions:", [v23 depthDataTargetDimensions]);
  }

  -[BWStillImageNodeConfiguration setStillImageProcessingMode:](v34, "setStillImageProcessingMode:", [v23 stillImageSinkPipelineProcessingMode]);
  -[BWStillImageNodeConfiguration setMetalCommandQueue:](v34, "setMetalCommandQueue:", [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")]);
  if (![v23 stillImageSinkPipelineProcessingMode])
  {
    metalCommandQueue = [(BWStillImageNodeConfiguration *)v34 metalCommandQueue];
    [v23 pipelineStagePriority];
    v36 = FigDispatchQueueCreateWithPriority();
    [(MTLCommandQueue *)metalCommandQueue setSubmissionQueue:v36];

    [v23 pipelineStagePriority];
    v37 = FigDispatchQueueCreateWithPriority();
    [(MTLCommandQueue *)metalCommandQueue setCompletionQueue:v37];
  }

  [(BWStillImageNodeConfiguration *)v34 setFigThreadPriority:*(v24 + 48)];
  -[BWStillImageNodeConfiguration setDepthDataType:](v34, "setDepthDataType:", [v23 depthDataType]);
  -[BWStillImageNodeConfiguration setDeepFusionEnhancedResolutionDimensions:](v34, "setDeepFusionEnhancedResolutionDimensions:", [v23 deepFusionEnhancedResolutionDimensions]);
  -[BWStillImageNodeConfiguration setDowngradedDeepFusionEnhancedResolutionDimensions:](v34, "setDowngradedDeepFusionEnhancedResolutionDimensions:", [v23 downgradedDeepFusionEnhancedResolutionDimensions]);
  [(BWStillImageNodeConfiguration *)v34 setOptimizedEnhancedResolutionDepthPipelineEnabled:v750];
  -[BWStillImageNodeConfiguration setConstantColorConfidenceMapDimensions:](v34, "setConstantColorConfidenceMapDimensions:", [v23 constantColorConfidenceMapDimensions]);
  -[BWStillImageNodeConfiguration setDocumentScanningEnabled:](v34, "setDocumentScanningEnabled:", [v23 constantColorClippingRecoveryEnabled]);
  -[BWStillImageNodeConfiguration setStereoPhotoOutputDimensions:](v34, "setStereoPhotoOutputDimensions:", [v23 stereoPhotoOutputDimensions]);
  -[BWStillImageNodeConfiguration setPearlModuleType:](v34, "setPearlModuleType:", [v23 pearlModuleType]);
  [(BWStillImageNodeConfiguration *)v34 setInferenceScheduler:delegate];
  -[BWStillImageNodeConfiguration setMaxLossyCompressionLevel:](v34, "setMaxLossyCompressionLevel:", [v23 maxLossyCompressionLevel]);
  -[BWStillImageNodeConfiguration setCameraSensorOrientationCompensationDegreesCW:](v34, "setCameraSensorOrientationCompensationDegreesCW:", [v23 cameraSensorOrientationCompensationDegreesCW]);
  v38 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:obj];
  depthDataType = [v23 depthDataType];
  v722 = deferredProcessingSupported;
  if (depthDataType == 7)
  {
    v39 = *off_1E798A0C8;
    v40 = [obj objectForKeyedSubscript:*off_1E798A0C8];
    v1048 = v39;
    v1049 = v40;
    v691 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v1049 forKeys:&v1048 count:1];
    [v38 setObject:0 forKeyedSubscript:v39];
  }

  else
  {
    v691 = 0;
  }

  v798 = v38;
  allKeys = [v38 allKeys];
  allKeys2 = [obj allKeys];
  v756 = [v770 count];
  v693 = allKeys2;
  v764 = allKeys;
  if ([obj count] >= 2)
  {
    deviceType = [v23 deviceType];
    if (deviceType > 8)
    {
      switch(deviceType)
      {
        case 9:
          v44 = *off_1E798A0D0;
          v52 = *off_1E798A0D8;
          v1043[0] = *off_1E798A0C0;
          v1043[1] = v52;
          v45 = MEMORY[0x1E695DEC8];
          v46 = v1043;
          v51 = 2;
          goto LABEL_39;
        case 12:
          v44 = *off_1E798A0F8;
          v787 = *off_1E798A0E8;
          v1045 = *off_1E798A0E8;
          v48 = MEMORY[0x1E695DEC8];
          v49 = &v1045;
          break;
        case 13:
          v44 = *off_1E798A0C0;
          v787 = *off_1E798A0C8;
          v1042 = *off_1E798A0C8;
          v48 = MEMORY[0x1E695DEC8];
          v49 = &v1042;
          break;
        default:
          goto LABEL_1022;
      }
    }

    else
    {
      if (deviceType == 4)
      {
        v44 = *off_1E798A0C0;
        v1047 = *off_1E798A0D8;
        v45 = MEMORY[0x1E695DEC8];
        v46 = &v1047;
LABEL_37:
        v51 = 1;
LABEL_39:
        v787 = 0;
        v806 = [v45 arrayWithObjects:v46 count:v51];
        v772 = v806;
        goto LABEL_43;
      }

      if (deviceType != 6)
      {
        if (deviceType != 8)
        {
          goto LABEL_1022;
        }

        v44 = *off_1E798A0D0;
        v1044 = *off_1E798A0C0;
        v45 = MEMORY[0x1E695DEC8];
        v46 = &v1044;
        goto LABEL_37;
      }

      v44 = *off_1E798A0E0;
      v787 = *off_1E798A0E8;
      v1046 = *off_1E798A0E8;
      v48 = MEMORY[0x1E695DEC8];
      v49 = &v1046;
    }

    v806 = [v48 arrayWithObjects:v49 count:1];
    v772 = 0;
LABEL_43:
    v53 = [MEMORY[0x1E695DFD8] setWithArray:allKeys2];
    v54 = [MEMORY[0x1E695DFA8] set];
    v55 = v54;
    if (v44)
    {
      [v54 addObject:v44];
    }

    v742 = v44;
    if (v772)
    {
      [v55 addObjectsFromArray:?];
    }

    if (v787)
    {
      [v55 addObject:?];
    }

    if (([v53 isEqualToSet:v55] & 1) == 0)
    {
      goto LABEL_1022;
    }

    goto LABEL_50;
  }

  firstObject = [allKeys firstObject];
  v742 = firstObject;
  if (v805)
  {
    v1041 = *off_1E798A0E8;
    v806 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1041 count:1];
  }

  else
  {
    v50 = firstObject;
    v1040 = firstObject;
    v806 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v1040 count:1];
    if (!v50)
    {
      goto LABEL_1022;
    }
  }

  v787 = 0;
  v772 = 0;
LABEL_50:
  allKeys3 = [v770 allKeys];
  if (v756)
  {
    v56 = [MEMORY[0x1E695DFD8] setWithArray:allKeys3];
    v57 = [MEMORY[0x1E695DFA8] set];
    v58 = v57;
    if (v742)
    {
      [v57 addObject:?];
    }

    if (v772)
    {
      [v58 addObjectsFromArray:?];
    }

    isEqualToString = objc_msgSend_isEqualToString_(v787);
    v60 = objc_msgSend_isEqualToString_(v787);
    if (v787 && (isEqualToString & 1) == 0 && (v60 & 1) == 0)
    {
      [v58 addObject:v787];
    }

    if (([v56 isEqualToSet:v58] & 1) == 0)
    {
      goto LABEL_1022;
    }
  }

  v758 = v34;
  v744 = sinkConfiguration;
  v762 = v24;
  v820 = +[FigCaptureCameraParameters sharedInstance];
  sensorIDStringsByPortType = [v23 sensorIDStringsByPortType];
  cameraInfoByPortType = [v23 cameraInfoByPortType];
  moduleCalibrationByPortType = [v23 moduleCalibrationByPortType];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  outputStillImageDimensions = [v23 outputStillImageDimensions];
  v66 = outputStillImageDimensions < 1 || SHIDWORD(outputStillImageDimensions) < 1;
  v813 = v66;
  gdcInDCProcessorOutputCropDimensions = [v23 gdcInDCProcessorOutputCropDimensions];
  v1036 = 0u;
  v1037 = 0u;
  v69 = gdcInDCProcessorOutputCropDimensions > 0 && SHIDWORD(gdcInDCProcessorOutputCropDimensions) > 0;
  v740 = v69;
  v1038 = 0uLL;
  v1039 = 0uLL;
  v819 = dictionary;
  v821 = [obj countByEnumeratingWithState:&v1036 objects:v1035 count:16];
  if (v821)
  {
    height = 0;
    v783 = 0;
    v800 = *v1037;
    v70 = *off_1E798A0E8;
    do
    {
      for (i = 0; i != v821; i = i + 1)
      {
        if (*v1037 != v800)
        {
          objc_enumerationMutation(obj);
        }

        v72 = *(*(&v1036 + 1) + 8 * i);
        v73 = [sensorIDStringsByPortType objectForKeyedSubscript:v72];
        dictionary = v819;
        [v819 setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:moduleCalibration:]([BWSensorConfiguration alloc] forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:moduleCalibration:", v72, v73, -[FigCaptureCameraParameters sensorIDDictionaryForPortType:sensorIDString:](v820, "sensorIDDictionaryForPortType:sensorIDString:", v72, v73), objc_msgSend(cameraInfoByPortType, "objectForKeyedSubscript:", v72), objc_msgSend(moduleCalibrationByPortType, "objectForKeyedSubscript:", v72)), v72}];
        if (v805 && ((objc_msgSend_isEqualToString_(v72) & 1) != 0 || objc_msgSend_isEqualToString_(v72)))
        {
          v74 = [sensorIDStringsByPortType objectForKeyedSubscript:v70];
          v75 = [(FigCaptureCameraParameters *)v820 sensorIDDictionaryForPortType:v70 sensorIDString:v74];
          v76 = [cameraInfoByPortType objectForKeyedSubscript:v70];
          v77 = [moduleCalibrationByPortType objectForKeyedSubscript:v70];
          v78 = [BWSensorConfiguration alloc];
          v79 = v74;
          dictionary = v819;
          [v819 setObject:-[BWSensorConfiguration initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:moduleCalibration:](v78 forKeyedSubscript:{"initWithPortType:sensorIDString:sensorIDDictionary:cameraInfo:moduleCalibration:", v70, v79, v75, v76, v77), v70}];
        }

        if (!v813 && (objc_msgSend_isEqualToString_(v72) & 1) == 0 && (objc_msgSend_isEqualToString_(v72) & 1) == 0)
        {
          v80 = [objc_msgSend(obj objectForKeyedSubscript:{v72), "formatRequirements"}];
          width = [v80 width];
          v82 = width;
          if (v783 < 1 || height <= 0)
          {
            height = [v80 height];
            if (v82 < 1)
            {
              goto LABEL_964;
            }

            v783 = v82;
            if (height <= 0)
            {
              goto LABEL_964;
            }
          }

          else if (v783 != width || height != [v80 height])
          {
            goto LABEL_964;
          }
        }
      }

      v821 = [obj countByEnumeratingWithState:&v1036 objects:v1035 count:16];
    }

    while (v821);
  }

  else
  {
    height = 0;
    v783 = 0;
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v1031 = 0u;
  v1032 = 0u;
  v1033 = 0u;
  v1034 = 0u;
  v84 = [dictionary countByEnumeratingWithState:&v1031 objects:v1030 count:16];
  if (v84)
  {
    v85 = v84;
    v86 = *v1032;
    do
    {
      for (j = 0; j != v85; ++j)
      {
        if (*v1032 != v86)
        {
          objc_enumerationMutation(dictionary);
        }

        v88 = *(*(&v1031 + 1) + 8 * j);
        if ([v806 containsObject:v88])
        {
          [dictionary2 setObject:objc_msgSend(dictionary forKeyedSubscript:{"objectForKeyedSubscript:", v88), v88}];
        }
      }

      v85 = [dictionary countByEnumeratingWithState:&v1031 objects:v1030 count:16];
    }

    while (v85);
  }

  clientIsCameraOrDerivative = [v23 clientIsCameraOrDerivative];
  v731 = [v798 objectForKeyedSubscript:v787];
  v89 = objc_msgSend_isEqualToString_(v787);
  pearlModuleType = [v23 pearlModuleType];
  pearlModuleType2 = [v23 pearlModuleType];
  bravoConstituentPhotoDeliveryEnabled = [v744 bravoConstituentPhotoDeliveryEnabled];
  v777 = bravoConstituentPhotoDeliveryEnabled ^ 1;
  if (((bravoConstituentPhotoDeliveryEnabled ^ 1) & 1) == 0 && !v772)
  {
    v1051[0] = -12780;
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v1029 = 0;
    v1028 = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v946 = 0;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1454, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1454", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1454", 0);
    goto LABEL_1175;
  }

  depthDataType2 = [v23 depthDataType];
  if (v763)
  {
    if (v772)
    {
      v93 = v759 == 1;
    }

    else
    {
      v93 = 1;
    }

    v94 = !v93;
    v752 = v94;
    if (!v93)
    {
      if ([v23 depthDataType] != 8)
      {
        v1051[0] = -12780;
        v643 = FigCaptureGetFrameworkRadarComponent();
        v1029 = 0;
        v1028 = OS_LOG_TYPE_DEFAULT;
        v644 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v644, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *v946 = 67109120;
        *&v946[4] = [v23 depthDataType];
        v634 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(v643, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1460, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1460", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1460", 0);
        goto LABEL_1175;
      }

      if ([(FigCaptureCameraParameters *)v820 disparityVersion]<= 4)
      {
        v1051[0] = -12780;
        v647 = FigCaptureGetFrameworkRadarComponent();
        v1029 = 0;
        v1028 = OS_LOG_TYPE_DEFAULT;
        v648 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v648, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *v946 = 67109120;
        *&v946[4] = [(FigCaptureCameraParameters *)v820 disparityVersion];
        v634 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(v647, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1461, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1461", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1461", 0);
        goto LABEL_1175;
      }
    }

    v734 = 0;
    if (v89 && v759 != 1)
    {
      if ([v23 depthDataType] != 3)
      {
        v1051[0] = -12780;
        v645 = FigCaptureGetFrameworkRadarComponent();
        v1029 = 0;
        v1028 = OS_LOG_TYPE_DEFAULT;
        v646 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v646, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *v946 = 67109120;
        *&v946[4] = [v23 depthDataType];
        v634 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(v645, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1465, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1465", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1465", 0);
        goto LABEL_1175;
      }

      v734 = 1;
    }

    v716 = filterRenderingEnabled;
  }

  else
  {
    v716 = 0;
    v734 = 0;
    v752 = 0;
  }

  v95 = depthDataType2 == 9 || (depthDataType2 & 0xFFFFFFFE) == 4;
  v96 = v95;
  v687 = v96;
  if (v95)
  {
    v97 = 1;
  }

  else
  {
    v97 = v763 & (depthDataType2 == 10);
  }

  v697 = v97;
  v724 = v763 & (depthDataType2 == 10);
  if (depthDataType2 == 6)
  {
    v98 = 1;
  }

  else
  {
    v98 = v763 & (depthDataType2 == 10);
  }

  v738 = v98;
  if (v772)
  {
    firstObject2 = *off_1E798A0D0;
    if (([v806 containsObject:*off_1E798A0D0] & 1) == 0)
    {
      firstObject2 = *off_1E798A0C0;
      if (([v806 containsObject:*off_1E798A0C0] & 1) == 0)
      {
        firstObject2 = *off_1E798A0D8;
        if (![v806 containsObject:*off_1E798A0D8])
        {
          firstObject2 = 0;
        }
      }
    }
  }

  else
  {
    firstObject2 = [v806 firstObject];
  }

  v100 = 0.0;
  if (v763)
  {
    if (v757)
    {
      [v757 requestedZoomFactorRelativeToPortType:firstObject2];
      v100 = v101;
    }

    else
    {
      v100 = 1.0;
    }
  }

  v743 = depthDataType2;
  v696 = firstObject2;
  if ([v23 highQualityPhotoCaptureForVideoFormatEnabled])
  {
    if (v763 | bravoConstituentPhotoDeliveryEnabled)
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
    stillImageStabilizationSupported = [v23 stillImageStabilizationSupported];
  }

  if ([v23 learnedNRSupported])
  {
    if (stillImageStabilizationSupported == 2)
    {
      v104 = 1;
    }

    else if (stillImageStabilizationSupported == 1)
    {
      v103 = (v100 == 2.0) & ~[v757 zeroShutterLagEnabled];
      if (depthDataType2 == 8)
      {
        LODWORD(v104) = v103;
      }

      else
      {
        LODWORD(v104) = 0;
      }

      if ([v23 learnedHRNRSupported])
      {
        v104 = 17;
      }

      else
      {
        v104 = v104;
      }
    }

    else
    {
      v104 = 0;
    }

    if ([v23 ultraHighResolutionProcessingEnabled])
    {
      learnedNRUltraHighResolutionDowngradeSupported = [v757 learnedNRUltraHighResolutionDowngradeSupported];
      if (learnedNRUltraHighResolutionDowngradeSupported)
      {
        v106 = 5;
      }

      else
      {
        v106 = 4;
      }

      v104 = v106 | v104;
    }

    else
    {
      LOBYTE(learnedNRUltraHighResolutionDowngradeSupported) = 0;
    }

    if (v722)
    {
      if (BWResolutionFlavorSupported([v23 dimensionsByResolutionFlavorByPortType], 2))
      {
        learnedNRUltraHighResolutionDowngradeSupported2 = [v757 learnedNRUltraHighResolutionDowngradeSupported];
        LOBYTE(learnedNRUltraHighResolutionDowngradeSupported) = learnedNRUltraHighResolutionDowngradeSupported2 | learnedNRUltraHighResolutionDowngradeSupported;
        if (learnedNRUltraHighResolutionDowngradeSupported2)
        {
          v108 = 10;
        }

        else
        {
          v108 = 8;
        }

        v104 = v108 | v104;
      }
    }

    else
    {
      v104 = v104 | (v759 == 1);
    }
  }

  else
  {
    LOBYTE(learnedNRUltraHighResolutionDowngradeSupported) = 0;
    v104 = 0;
  }

  v727 = learnedNRUltraHighResolutionDowngradeSupported;
  if ((([v23 deepFusionSupported] & 1) != 0 || ((v109 = objc_msgSend(objc_msgSend(v23, "portTypesWithLearnedFusionEnabled"), "count"), !v104) ? (v110 = v109 == 0) : (v110 = 0), !v110)) && v759 == 1)
  {
    v736 = 0;
    v111 = 0;
  }

  else
  {
    if (stillImageStabilizationSupported)
    {
      if (stillImageStabilizationSupported == 2)
      {
        v111 = v104 ^ 1;
      }

      else
      {
        v111 = (v104 & 0x10) == 0;
      }
    }

    else
    {
      v111 = 0;
    }

    v736 = 1;
  }

  digitalFlashCaptureEnabled = [v744 digitalFlashCaptureEnabled];
  stereoPhotoCaptureEnabled = [v744 stereoPhotoCaptureEnabled];
  portraitEffectsMatteDeliveryEnabled = [v744 portraitEffectsMatteDeliveryEnabled];
  v112 = (portraitEffectsMatteDeliveryEnabled & 1) != 0 || [objc_msgSend(v23 "enabledSemanticSegmentationMatteURNs")] != 0;
  v755 = v112;
  personSemanticsVersion = [(FigCaptureCameraParameters *)v820 personSemanticsVersion];
  if (personSemanticsVersion && personSemanticsVersion <= 4)
  {
    v605 = personSemanticsVersion;
    v1051[0] = -12780;
    v606 = FigCaptureGetFrameworkRadarComponent();
    v1029 = 0;
    v1028 = OS_LOG_TYPE_DEFAULT;
    v607 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v607, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v946 = 67109120;
    *&v946[4] = v605;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v606, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1581, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1581", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1581", 0);
    goto LABEL_1175;
  }

  v735 = v104;
  v703 = personSemanticsVersion;
  Major = BWInferenceVersionMakeMajor(personSemanticsVersion);
  v114 = [objc_msgSend(dictionary2 "allValues")];
  if (v763)
  {
    v115 = v114;
    portType = [v114 portType];
    sensorIDString = [v115 sensorIDString];
    *&v118 = v100;
    v119 = [(FigCaptureCameraParameters *)v820 sdofRenderingVersionForPortType:portType sensorIDString:sensorIDString zoomFactor:v118];
    v120 = v119;
    if (v119 && v119 <= 4)
    {
      v121 = v119;
      v1051[0] = -12780;
      v122 = FigCaptureGetFrameworkRadarComponent();
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v123 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v946 = 67109120;
      *&v946[4] = v121;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v122, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1587, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1587", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1587", 0);
LABEL_1175:
      v662 = v634;
LABEL_1176:
      free(v662);
      goto LABEL_964;
    }
  }

  else
  {
    v120 = 0;
  }

  if (v755)
  {
    mattingVersion = [(FigCaptureCameraParameters *)v820 mattingVersion];
    v684 = mattingVersion;
    if (mattingVersion && mattingVersion <= 1)
    {
      v125 = mattingVersion;
      v1051[0] = -12780;
      v126 = FigCaptureGetFrameworkRadarComponent();
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v127 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v946 = 67109120;
      *&v946[4] = v125;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v126, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1590, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1590", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1590", 0);
      goto LABEL_1175;
    }
  }

  else
  {
    v684 = 0;
  }

  learnedMattingVersion = [(FigCaptureCameraParameters *)v820 learnedMattingVersion];
  v746 = 0;
  v705 = v120;
  if (((v763 ^ 1) & 1) == 0 && v755)
  {
    v129 = depthDataType != 7 && v759 != 1;
    v746 = v129;
  }

  v131 = pearlModuleType == 2 || pearlModuleType2 == 3;
  v726 = v131;
  devicePosition = [v23 devicePosition];
  v682 = v89;
  v702 = v111;
  v133 = devicePosition == 2 && [v23 aspectRatio] && objc_msgSend(v23, "aspectRatio") != 5;
  v686 = v133;
  [(BWStillImageNodeConfiguration *)v758 setOptimizedProcessingForZoomFOVSupported:?];
  if ((v724 ^ 1 | previewQualityAdjustedPhotoFilterRenderingEnabled))
  {
    v134 = v724;
  }

  else
  {
    v134 = v719 | v716 ^ 1;
  }

  v690 = devicePosition != 2;
  v776 = [v23 continuousZoomWithDepthSupported] & (v719 | v724 | v752) & (v690 | v134);
  aspectRatio = [v23 aspectRatio];
  v136 = aspectRatio != 0;
  if (aspectRatio)
  {
    if (![v23 smartCropWarpingRequired])
    {
      aspectRatio2 = [v23 aspectRatio];
      firstObject3 = [v723 firstObject];
      v136 = aspectRatio2 == 6;
      if (aspectRatio2 != 6)
      {
        v138 = 0.0;
        if (aspectRatio2)
        {
          goto LABEL_236;
        }
      }

      goto LABEL_230;
    }

    aspectRatio2 = 6;
  }

  else
  {
    aspectRatio2 = 0;
  }

  firstObject3 = [v723 firstObject];
LABEL_230:
  v138 = 0.0;
  if (v776)
  {
    dimensions = [firstObject3 dimensions];
    if (dimensions >= 1 && SHIDWORD(dimensions) >= 1)
    {
      dimensions2 = [firstObject3 dimensions];
      v138 = dimensions2 / ([firstObject3 dimensions] >> 32);
    }
  }

LABEL_236:
  v688 = v136;
  continuousZoomWithDepthSupported = [v23 continuousZoomWithDepthSupported];
  if (devicePosition == 2)
  {
    v142 = continuousZoomWithDepthSupported;
  }

  else
  {
    v142 = 0;
  }

  v692 = v142;
  if (aspectRatio2)
  {
    v143 = aspectRatio2 == 6;
  }

  else
  {
    v143 = 1;
  }

  v144 = !v143;
  v708 = v144;
  v745 = BWEmitUnstyledBufferForInferencesOrAdjustedImageWithConfigurations(v23, v744);
  if (v745)
  {
    v1026[0] = MEMORY[0x1E69E9820];
    v1026[1] = 3221225472;
    v707 = v1026;
    v1026[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke;
    v1026[3] = &__block_descriptor_33_e31_B16__0__opaqueCMSampleBuffer__8l;
    v1027 = v765;
  }

  else
  {
    v707 = 0;
  }

  if (v755)
  {
    v145 = [(BWInferenceConfiguration *)[BWPersonSemanticsConfiguration alloc] initWithInferenceType:104];
    [(BWInferenceConfiguration *)v145 setPriority:*(v762 + 52)];
    v718 = v145;
    [(BWPersonSemanticsConfiguration *)v145 setAppliesFinalCropRect:v776];
    if (portraitEffectsMatteDeliveryEnabled)
    {
      [(BWPersonSemanticsConfiguration *)v145 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v145 enabledSemantics]| 1];
    }

    supportedSemanticSegmentationMatteURNs = [v23 supportedSemanticSegmentationMatteURNs];
    v147 = *MEMORY[0x1E69917E0];
    if ([supportedSemanticSegmentationMatteURNs containsObject:*MEMORY[0x1E69917E0]] && objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "containsObject:", v147))
    {
      [(BWPersonSemanticsConfiguration *)v718 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics]| 2];
    }

    supportedSemanticSegmentationMatteURNs2 = [v23 supportedSemanticSegmentationMatteURNs];
    v149 = *MEMORY[0x1E69917E8];
    if ([supportedSemanticSegmentationMatteURNs2 containsObject:*MEMORY[0x1E69917E8]] && objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "containsObject:", v149))
    {
      [(BWPersonSemanticsConfiguration *)v718 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics]| 8];
    }

    supportedSemanticSegmentationMatteURNs3 = [v23 supportedSemanticSegmentationMatteURNs];
    v151 = *MEMORY[0x1E69917F8];
    if ([supportedSemanticSegmentationMatteURNs3 containsObject:*MEMORY[0x1E69917F8]] && objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "containsObject:", v151))
    {
      [(BWPersonSemanticsConfiguration *)v718 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics]| 0x10];
    }

    supportedSemanticSegmentationMatteURNs4 = [v23 supportedSemanticSegmentationMatteURNs];
    v153 = *MEMORY[0x1E69917D8];
    if ([supportedSemanticSegmentationMatteURNs4 containsObject:*MEMORY[0x1E69917D8]] && objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "containsObject:", v153))
    {
      [(BWPersonSemanticsConfiguration *)v718 setEnabledSemantics:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics]| 0x20];
    }
  }

  else
  {
    v718 = 0;
  }

  v1024[0] = MEMORY[0x1E69E9820];
  v1024[1] = 3221225472;
  v1024[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_2;
  v1024[3] = &__block_descriptor_33_e38___NSSet_16__0__opaqueCMSampleBuffer__8l;
  v1025 = clientIsCameraOrDerivative;
  v1023[0] = MEMORY[0x1E69E9820];
  v1023[1] = 3221225472;
  v1023[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_773;
  v1023[3] = &unk_1E79913E0;
  v1023[4] = v1024;
  if ([v23 allowsMultipleInflightCaptures])
  {
    v760 = 1;
    if ([v23 responsiveShutterSupported])
    {
      if ([v23 responsiveShutterEnabled])
      {
        v154 = 2;
      }

      else
      {
        v154 = 1;
      }

      v760 = v154;
    }
  }

  else
  {
    v760 = 0;
  }

  redEyeReductionVersion = [v23 redEyeReductionVersion];
  v156 = redEyeReductionVersion;
  if (redEyeReductionVersion && redEyeReductionVersion <= 1)
  {
    v1051[0] = -12780;
    v608 = FigCaptureGetFrameworkRadarComponent();
    v1029 = 0;
    v1028 = OS_LOG_TYPE_DEFAULT;
    v609 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v610 = v1029;
    if (os_log_type_enabled(v609, v1028))
    {
      v611 = v610;
    }

    else
    {
      v611 = v610 & 0xFFFFFFFE;
    }

    if (v611)
    {
      *v986 = 136315394;
      *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
      v987 = 1024;
      *v988 = v156;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v946 = 67109120;
    *&v946[4] = v156;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v608, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 1751, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:1751", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:1751", 0);
    goto LABEL_1175;
  }

  v739 = redEyeReductionVersion;
  v698 = v734 | v805;
  semanticRenderingVersion = [v23 semanticRenderingVersion];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  v712 = semanticRenderingVersion;
  if (semanticRenderingVersion)
  {
    semanticDevelopmentVersion = [v23 semanticDevelopmentVersion];
  }

  else
  {
    semanticDevelopmentVersion = 0;
  }

  demosaicedRawEnabled = [v744 demosaicedRawEnabled];
  if (demosaicedRawEnabled)
  {
    [dictionary3 setObject:BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw() forKeyedSubscript:&unk_1F2243528];
  }

  if (((v734 | v805) & v726) != 0)
  {
    array = [MEMORY[0x1E695DF70] array];
    [array addObject:0x1F219E750];
    [array addObjectsFromArray:BWInferenceLowResPersonInstanceMaskKeys()];
    [dictionary3 setObject:array forKeyedSubscript:&unk_1F2243540];
  }

  if ([v23 smartStyleReversibilityEnabled])
  {
    [dictionary3 setObject:BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw() forKeyedSubscript:&unk_1F2243558];
  }

  v709 = aspectRatio2;
  if ([objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")])
  {
    v1022 = 0u;
    v1021 = 0u;
    v1020 = 0u;
    v1019 = 0u;
    v160 = [v806 countByEnumeratingWithState:&v1019 objects:v1018 count:16];
    if (v160)
    {
      v161 = v160;
      v162 = *v1020;
LABEL_285:
      v163 = 0;
      while (1)
      {
        if (*v1020 != v162)
        {
          objc_enumerationMutation(v806);
        }

        if ([objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")])
        {
          break;
        }

        if (v161 == ++v163)
        {
          v161 = [v806 countByEnumeratingWithState:&v1019 objects:v1018 count:16];
          if (v161)
          {
            goto LABEL_285;
          }

          goto LABEL_291;
        }
      }
    }

    else
    {
LABEL_291:
      if ((bravoConstituentPhotoDeliveryEnabled & 1) == 0)
      {
        if ([v23 deviceType] == 12)
        {
          v164 = [objc_msgSend(v23 "portTypesWithGeometricDistortionCorrectionEnabled")];
        }

        else
        {
          v164 = 0;
        }

LABEL_293:
        if (v763)
        {
          v165 = [v23 continuousZoomWithDepthSupported] | v164;
        }

        else
        {
          v165 = 1;
        }

        v725 = [v23 gdcInDCProcessorSupported] & v165;
        goto LABEL_298;
      }
    }

    v164 = 1;
    goto LABEL_293;
  }

  v725 = 0;
LABEL_298:
  v166 = [objc_msgSend(v23 "portTypesWithIntelligentDistortionCorrectionEnabled")] != 0;
  if (v813)
  {
    v167 = 0;
    v710 = 1;
  }

  else
  {
    if (pearlModuleType2 == 3)
    {
      v168 = 0;
    }

    else
    {
      v168 = v725;
    }

    v710 = v168;
    v167 = v168;
  }

  v701 = v166;
  v700 = v167;
  if (v783 >= [v23 rawSensorDimensions] && (height >= (objc_msgSend(v23, "rawSensorDimensions") >> 32) ? (v169 = v167) : (v169 = 0), v169 == 1))
  {
    if (v740)
    {
      gdcInDCProcessorOutputCropDimensions2 = [v23 gdcInDCProcessorOutputCropDimensions];
    }

    else
    {
      gdcInDCProcessorOutputCropDimensions2 = [v23 outputStillImageDimensions];
    }

    v689 = gdcInDCProcessorOutputCropDimensions2;
  }

  else
  {
    v689 = 0;
  }

  v741 = stillImageStabilizationSupported;
  v717 = dictionary2;
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  [v23 gainMapMainImageDownscalingFactor];
  if (v172 != 0.0)
  {
    v173 = MEMORY[0x1E696AD98];
    [v23 gainMapMainImageDownscalingFactor];
    [dictionary4 setObject:objc_msgSend(v173 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
  }

  v713 = demosaicedRawEnabled;
  if (demosaicedRawEnabled)
  {
    [dictionary4 setObject:&unk_1F224A7F0 forKeyedSubscript:0x1F21AAE10];
    v1017 = 0u;
    v1016 = 0u;
    v1015 = 0u;
    v1014 = 0u;
    v814 = [dictionary3 countByEnumeratingWithState:&v1014 objects:v1013 count:16];
    if (v814)
    {
      v801 = *v1015;
      do
      {
        for (k = 0; k != v814; k = k + 1)
        {
          if (*v1015 != v801)
          {
            objc_enumerationMutation(dictionary3);
          }

          v175 = *(*(&v1014 + 1) + 8 * k);
          v1009 = 0u;
          v1010 = 0u;
          v1011 = 0u;
          v1012 = 0u;
          v176 = [dictionary3 objectForKeyedSubscript:v175];
          v177 = [v176 countByEnumeratingWithState:&v1009 objects:v1008 count:16];
          if (v177)
          {
            v178 = v177;
            v179 = *v1010;
            do
            {
              for (m = 0; m != v178; ++m)
              {
                if (*v1010 != v179)
                {
                  objc_enumerationMutation(v176);
                }

                v181 = *(*(&v1009 + 1) + 8 * m);
                v182 = MEMORY[0x1E696AD98];
                [v23 ubInferenceMainImageDownscalingFactor];
                [dictionary4 setObject:objc_msgSend(v182 forKeyedSubscript:{"numberWithFloat:"), v181}];
              }

              v178 = [v176 countByEnumeratingWithState:&v1009 objects:v1008 count:16];
            }

            while (v178);
          }
        }

        v814 = [dictionary3 countByEnumeratingWithState:&v1014 objects:v1013 count:16];
      }

      while (v814);
    }
  }

  if ((v745 & 1) != 0 || [v23 smartStyleReversibilityEnabled])
  {
    [dictionary4 setObject:&unk_1F224A7F0 forKeyedSubscript:0x1F21AAF90];
  }

  if ([v23 smartStyleReversibilityEnabled])
  {
    v1007 = 0u;
    v1006 = 0u;
    v1005 = 0u;
    v1004 = 0u;
    v183 = [dictionary3 countByEnumeratingWithState:&v1004 objects:v1003 count:16];
    if (v183)
    {
      v184 = v183;
      v815 = *v1005;
      do
      {
        for (n = 0; n != v184; ++n)
        {
          if (*v1005 != v815)
          {
            objc_enumerationMutation(dictionary3);
          }

          v186 = *(*(&v1004 + 1) + 8 * n);
          v999 = 0u;
          v1000 = 0u;
          v1001 = 0u;
          v1002 = 0u;
          v187 = [dictionary3 objectForKeyedSubscript:v186];
          v188 = [v187 countByEnumeratingWithState:&v999 objects:v998 count:16];
          if (v188)
          {
            v189 = v188;
            v190 = *v1000;
            do
            {
              for (ii = 0; ii != v189; ++ii)
              {
                if (*v1000 != v190)
                {
                  objc_enumerationMutation(v187);
                }

                v192 = *(*(&v999 + 1) + 8 * ii);
                [v23 gainMapMainImageDownscalingFactor];
                if (v193 <= 0.0)
                {
                  [v23 portraitEffectsMatteMainImageDownscalingFactor];
                  v195 = *&v194;
                  LODWORD(v194) = 2.0;
                  if (v195 > 0.0)
                  {
                    [v23 portraitEffectsMatteMainImageDownscalingFactor];
                  }
                }

                else
                {
                  [v23 gainMapMainImageDownscalingFactor];
                }

                [dictionary4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v194), v192}];
              }

              v189 = [v187 countByEnumeratingWithState:&v999 objects:v998 count:16];
            }

            while (v189);
          }
        }

        v184 = [dictionary3 countByEnumeratingWithState:&v1004 objects:v1003 count:16];
      }

      while (v184);
    }
  }

  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  v766 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:dictionary4];
  [v23 portraitEffectsMatteMainImageDownscalingFactor];
  if (v196 != 0.0)
  {
    if (portraitEffectsMatteDeliveryEnabled)
    {
      v197 = MEMORY[0x1E696AD98];
      [v23 portraitEffectsMatteMainImageDownscalingFactor];
      [dictionary5 setObject:objc_msgSend(v197 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
      if ((v776 & 1) == 0)
      {
        v198 = MEMORY[0x1E696AD98];
        [v23 portraitEffectsMatteMainImageDownscalingFactor];
        [v766 setObject:objc_msgSend(v198 forKeyedSubscript:{"numberWithFloat:"), 0x1F21AABB0}];
      }
    }

    v997 = 0u;
    v996 = 0u;
    v995 = 0u;
    v994 = 0u;
    enabledSemanticSegmentationMatteURNs = [v23 enabledSemanticSegmentationMatteURNs];
    v199 = [enabledSemanticSegmentationMatteURNs countByEnumeratingWithState:&v994 objects:v993 count:16];
    if (v199)
    {
      v200 = v199;
      v201 = *v995;
      do
      {
        for (jj = 0; jj != v200; ++jj)
        {
          if (*v995 != v201)
          {
            objc_enumerationMutation(enabledSemanticSegmentationMatteURNs);
          }

          v203 = *(*(&v994 + 1) + 8 * jj);
          v204 = objc_msgSend_isEqualToString_(v203);
          v205 = BWAttachedMediaKey_PersonSemanticsHair;
          if ((v204 & 1) == 0)
          {
            v206 = objc_msgSend_isEqualToString_(v203);
            v205 = BWAttachedMediaKey_PersonSemanticsSkin;
            if ((v206 & 1) == 0)
            {
              v207 = objc_msgSend_isEqualToString_(v203);
              v205 = BWAttachedMediaKey_PersonSemanticsTeeth;
              if ((v207 & 1) == 0)
              {
                v208 = objc_msgSend_isEqualToString_(v203);
                v205 = BWAttachedMediaKey_PersonSemanticsGlasses;
                if (!v208)
                {
                  continue;
                }
              }
            }
          }

          v209 = *v205;
          if (*v205)
          {
            v210 = MEMORY[0x1E696AD98];
            [v23 portraitEffectsMatteMainImageDownscalingFactor];
            [dictionary5 setObject:objc_msgSend(v210 forKeyedSubscript:{"numberWithFloat:"), v209}];
            if ((v776 & 1) == 0)
            {
              v211 = MEMORY[0x1E696AD98];
              [v23 portraitEffectsMatteMainImageDownscalingFactor];
              [v766 setObject:objc_msgSend(v211 forKeyedSubscript:{"numberWithFloat:"), v209}];
            }
          }
        }

        v200 = [enabledSemanticSegmentationMatteURNs countByEnumeratingWithState:&v994 objects:v993 count:16];
      }

      while (v200);
    }
  }

  allowedToModifyInputBuffers = [v23 allowedToModifyInputBuffers];
  if (clientIsCameraOrDerivative)
  {
    v212 = v762;
    v213 = v744;
    v214 = v819;
    v215 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v216 = v760;
    v217 = v757;
    if (+[BWInferenceEngine isNeuralEngineSupported])
    {
      captureTimePhotosCurationSupported = [v23 captureTimePhotosCurationSupported];
    }

    else
    {
      captureTimePhotosCurationSupported = 0;
    }

    v218 = 0;
  }

  else
  {
    if (v755)
    {
      v218 = 7;
    }

    else
    {
      v218 = 0;
    }

    v212 = v762;
    v213 = v744;
    v214 = v819;
    v215 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v216 = v760;
    v217 = v757;
    captureTimePhotosCurationSupported = 0;
    if (((!v755 | v777) & 1) == 0)
    {
      v218 = 8 * [v798 count] - 1;
    }
  }

  v683 = v218;
  if (v216 == 2)
  {
    responsiveShutterSupported = [v23 responsiveShutterSupported];
    fastCapturePrioritizationEnabled = 0;
    if (v756)
    {
      v221 = bravoConstituentPhotoDeliveryEnabled ^ 1;
    }

    else
    {
      v221 = 0;
    }

    v720 = responsiveShutterSupported;
    if (responsiveShutterSupported && v221)
    {
      fastCapturePrioritizationEnabled = [v23 fastCapturePrioritizationEnabled];
      v720 = 1;
    }
  }

  else
  {
    v720 = 0;
    fastCapturePrioritizationEnabled = 0;
  }

  v711 = fastCapturePrioritizationEnabled;
  v737 = v736 & digitalFlashCaptureEnabled;
  [v217 setStillImageCaptureEnabled:1];
  [v217 setStereoPhotoCaptureEnabled:stereoPhotoCaptureEnabled];
  [v217 setIrisFrameHarvestingEnabled:{objc_msgSend(v213, "irisFrameHarvestingEnabled")}];
  [v217 setStillImageFusionScheme:{objc_msgSend(v23, "noiseReductionAndFusionScheme")}];
  [v217 setUnifiedBracketingMode:v741];
  [v217 setSifrStillImageCaptureEnabledIfAvailable:{objc_msgSend(v23, "sifrStillImageCaptureEnabledIfAvailable")}];
  [v217 setSoftISPEnabled:{objc_msgSend(v23, "softISPSupported")}];
  [v217 setSensorRawStillImageOutputsEnabled:v756 != 0];
  [v217 setDeepFusionEnabled:{objc_msgSend(v23, "deepFusionSupported")}];
  if ([v23 depthWithDeepFusionSupported])
  {
    deepFusionSupported = [v23 deepFusionSupported];
    if (depthDataType == 7)
    {
      v223 = 0;
    }

    else
    {
      v223 = deepFusionSupported;
    }

    v224 = v763 & v223;
  }

  else
  {
    v224 = 0;
  }

  v749 = bravoConstituentPhotoDeliveryEnabled | v752 | stereoPhotoCaptureEnabled;
  [v217 setDepthWithDeepFusionEnabled:v224];
  [v217 setLearnedNRMode:v735];
  [v217 setLearnedNRUltraHighResolutionDowngradeEnabled:v727 & 1];
  [v217 setSwfrEnabled:{objc_msgSend(v23, "swfrVersion") != 0}];
  [v217 setConstantColorEnabled:{objc_msgSend(v23, "constantColorVersion") != 0}];
  [v217 setDigitalFlashEnabled:v737];
  if (v737)
  {
    [v217 setPortTypesWithDigitalFlashZeroShutterLagEnabled:{objc_msgSend(v23, "portTypesWithDigitalFlashZeroShutterLagEnabled")}];
  }

  [v217 setRedSaturationMitigationEnabled:{objc_msgSend(v213, "optimizesImagesForOfflineVideoStabilization") ^ 1}];
  [v217 registerForAEMatrixMetadata];
  [v217 setRedEyeReductionEnabled:v739 != 0];
  if (v772)
  {
    v225 = v763 & v777;
  }

  else
  {
    v225 = 0;
  }

  [v217 setDisparityGenerationFromReferenceFramesSupported:v225];
  [v217 setSupplementalPointCloudCaptureDevice:v747];
  [v217 setExifFocalLengthsByZoomFactor:{objc_msgSend(v213, "exifFocalLengthsByZoomFactor")}];
  v226 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage" priority:*(v212 + v215[452])];
  v799 = v226;
  v768 = v226;
  if ((v749 | v746))
  {
    v768 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.ub.default" priority:*(v212 + v215[452])];
    v226 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.concurrent" priority:*(v212 + v215[452])];
  }

  v715 = v799;
  v791 = v799;
  if (v216 == 2)
  {
    v715 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.scale-and-encode" priority:*(v212 + v215[452])];
    if (v720)
    {
      v791 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.buffer-servicing" priority:*(v212 + v215[452])];
    }

    else
    {
      v791 = v799;
    }
  }

  v728 = v226;
  if (dword_1EB58E2C0)
  {
    v1029 = 0;
    v1028 = OS_LOG_TYPE_DEFAULT;
    v227 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v228 = v1029;
    if (os_log_type_enabled(v227, v1028))
    {
      v229 = v228;
    }

    else
    {
      v229 = v228 & 0xFFFFFFFE;
    }

    if (v229)
    {
      *v946 = 136320514;
      *&v946[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
      *&v946[12] = 2114;
      *&v946[14] = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "dt", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v23, "deviceType"))];
      *v947 = 2114;
      *&v947[2] = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "bd", v772 != 0];
      v948 = 2114;
      v949 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "soc", objc_msgSend(obj, "count")];
      v950 = 2114;
      v951 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "sfd", objc_msgSend(firstObject3, "dimensions"), objc_msgSend(firstObject3, "dimensions") >> 32];
      v952 = 2114;
      v953 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "bmcp", v749 & 1];
      v954 = 2114;
      v955 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "mlcl", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", -[BWStillImageNodeConfiguration maxLossyCompressionLevel](v758, "maxLossyCompressionLevel"))];
      v956 = 2114;
      v763 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ddd", v763];
      v958 = 2114;
      v959 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "ddt", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v23, "depthDataType"))];
      v960 = 2114;
      v961 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "dtd", objc_msgSend(v23, "depthDataTargetDimensions"), objc_msgSend(v23, "depthDataTargetDimensions") >> 32];
      v962 = 2114;
      v963 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "dsd", objc_msgSend(v23, "depthDataSourceDimensions"), objc_msgSend(v23, "depthDataSourceDimensions") >> 32];
      v964 = 2114;
      v753 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "cpd", bravoConstituentPhotoDeliveryEnabled];
      v966 = 2114;
      v751 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "fr", filterRenderingEnabled];
      v968 = 2114;
      v969 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "swfr", objc_msgSend(v23, "swfrVersion")];
      v970 = 2114;
      v739 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "rer", v739];
      v972 = 2114;
      v973 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "psip", objc_msgSend(objc_msgSend(v23, "enabledSemanticSegmentationMatteURNs"), "count") != 0];
      v974 = 2114;
      v712 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "sr", v712];
      v976 = 2114;
      v721 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "sd", semanticDevelopmentVersion];
      v217 = v757;
      v978 = 2114;
      v979 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ssr", objc_msgSend(v23, "semanticStyleRenderingEnabled")];
      v980 = 2114;
      v981 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ssv", objc_msgSend(v23, "smartStyleRenderingVersion")];
      v212 = v762;
      v982 = 2114;
      v983 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "sse", objc_msgSend(v23, "smartStyleRenderingEnabled")];
      v214 = v819;
      v984 = 2114;
      v985 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ssr", objc_msgSend(v23, "smartStyleReversibilityEnabled")];
      LODWORD(v666) = 222;
      v663 = v946;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v216 = v760;
    if (dword_1EB58E2C0)
    {
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v230 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v231 = v1029;
      if (os_log_type_enabled(v230, v1028))
      {
        v232 = v231;
      }

      else
      {
        v232 = v231 & 0xFFFFFFFE;
      }

      if (v232)
      {
        v778 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "igfsp", objc_msgSend(v23, "generateInferencesForSemanticProcessingIfNeeded", v663, v666)];
        v233 = MEMORY[0x1E696AEC0];
        [v23 ubInferenceMainImageDownscalingFactor];
        v234 = [v233 stringWithFormat:@"\n %s: %.3f", "imf", v234];
        v678 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "idc", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(v23, "portTypesWithIntelligentDistortionCorrectionEnabled"), "count"))];
        v725 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "gdcsp", v725];
        v674 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "gdc", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(v23, "portTypesWithGeometricDistortionCorrectionEnabled"), "count"))];
        v672 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "ggm", objc_msgSend(v23, "greenGhostMitigationVersion")];
        v671 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "df", objc_msgSend(v23, "deepFusionSupported")];
        v670 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "lf", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(v23, "portTypesWithLearnedFusionEnabled"), "count"))];
        v669 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "cp", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", v760)];
        v720 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "rs", v720];
        v711 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "csb", v711];
        v713 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "dr", v713];
        v237 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "lnrm", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", v735)];
        v722 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "dc", v722];
        v216 = v760;
        v214 = v819;
        v239 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "dc", v759 == 1];
        *v946 = 136318978;
        *&v946[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        *&v946[12] = 2114;
        *&v946[14] = v778;
        *v947 = 2114;
        *&v947[2] = v234;
        v948 = 2114;
        v949 = v678;
        v950 = 2114;
        v951 = v725;
        v952 = 2114;
        v953 = v674;
        v954 = 2114;
        v955 = v672;
        v956 = 2114;
        v763 = v671;
        v958 = 2114;
        v959 = v670;
        v960 = 2114;
        v961 = v669;
        v962 = 2114;
        v963 = v720;
        v964 = 2114;
        v753 = v711;
        v212 = v762;
        v966 = 2114;
        v751 = v713;
        v217 = v757;
        v968 = 2114;
        v969 = v237;
        v970 = 2114;
        v739 = v722;
        v972 = 2114;
        v973 = v239;
        LODWORD(v666) = 162;
        v663 = v946;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB58E2C0)
      {
        v1029 = 0;
        v1028 = OS_LOG_TYPE_DEFAULT;
        v240 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v241 = v1029;
        v242 = os_log_type_enabled(v240, v1028);
        v243 = v241 & 0xFFFFFFFE;
        if (v242)
        {
          v243 = v241;
        }

        if (v243)
        {
          v779 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "rsd", objc_msgSend(v23, "rawSensorDimensions"), objc_msgSend(v23, "rawSensorDimensions") >> 32];
          v681 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %dx%d", "erd", objc_msgSend(v23, "deepFusionEnhancedResolutionDimensions"), objc_msgSend(v23, "deepFusionEnhancedResolutionDimensions") >> 32];
          v679 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "uhrc", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 2), "count"))];
          v677 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %d", "uhrp", objc_msgSend(v23, "ultraHighResolutionProcessingEnabled")];
          v675 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "zqs", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 1), "count"))];
          v673 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "lcrp", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 3), "count"))];
          v244 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "pcrp", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 4), "count"))];
          v245 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "sqrc", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 6), "count"))];
          v246 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "fsqr", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(BWPortTypesWithResolutionFlavor(objc_msgSend(v23, "dimensionsByResolutionFlavorByPortType"), 5), "count"))];
          v247 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "ar", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v23, "aspectRatio"))];
          v214 = v819;
          v248 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n %s: %@", "sfhr", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%d", objc_msgSend(v23, "sfhrMode"))];
          *v946 = 136318210;
          *&v946[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
          *&v946[12] = 2114;
          *&v946[14] = v779;
          *v947 = 2114;
          *&v947[2] = v681;
          v948 = 2114;
          v949 = v679;
          v950 = 2114;
          v951 = v677;
          v952 = 2114;
          v953 = v675;
          v954 = 2114;
          v955 = v673;
          v956 = 2114;
          v763 = v244;
          v958 = 2114;
          v959 = v245;
          v217 = v757;
          v960 = 2114;
          v961 = v246;
          v212 = v762;
          v962 = 2114;
          v963 = v247;
          v964 = 2114;
          v753 = v248;
          v966 = 2114;
          v751 = &stru_1F216A3D0;
          LODWORD(v666) = 132;
          v663 = v946;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v216 = v760;
      }
    }
  }

  v761 = v216;
  v249 = &classRef_BWDerectificationInferenceProvider;
  if (v731)
  {
    v250 = [BWAttachedMediaSplitNode alloc];
    v945 = @"Depth";
    v251 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:](v250, "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v945 count:1]);
    v944.receiver = v212;
    v944.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v944, sel_addNode_error_, v251, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callback safelyConnectOutput:v731 toInput:-[BWNode input](v251 pipelineStage:{"input"), v791}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v251 setName:@"Still Image IR-Depth Splitter"];
    [(BWAttachedMediaSplitNode *)v251 setEmitsNodeErrorsForMissingAttachedMedia:1];
    v784 = [(NSArray *)[(BWNode *)v251 outputs] objectAtIndexedSubscript:0];
  }

  else
  {
    v784 = 0;
  }

  v802 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v798, "count", v663, v666)}];
  obja = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v770, "count")}];
  cameraInfoByPortType2 = [v747 cameraInfoByPortType];
  if ([v23 stillImageSinkPipelineProcessingMode] && objc_msgSend(v23, "stillImageSinkPipelineProcessingMode") != 2)
  {
    v802 = [v798 mutableCopy];
    obja = [v770 mutableCopy];
    v254 = v772;
    if (v787)
    {
      v255 = [v798 objectForKeyedSubscript:?];
      v780 = 0;
    }

    else
    {
      v780 = 0;
      v255 = 0;
    }

    callbackCopy4 = callback;
  }

  else
  {
    if ([v23 stillImageSinkPipelineProcessingMode])
    {
      v252 = 0;
      v253 = v758;
    }

    else
    {
      v253 = v758;
      v252 = [[BWStillImageCoordinatorNode alloc] initWithNodeConfiguration:v758 captureDevice:v217 inputPortTypes:v764 sensorRawInputPortTypes:allKeys3 highResStillImageDimensions:v723];
      v943.receiver = v212;
      v943.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v943, sel_addNode_error_, v252, &v1050) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      [(BWNode *)v252 setName:@"Still Image Coordinator"];
      [(BWStillImageCoordinatorNode *)v252 setStillImageCaptureStatusDelegate:output];
      [(BWStillImageCoordinatorNode *)v252 setResponsiveShutterEnabled:v720];
      if ([v23 responsiveShutterSupported])
      {
        responsiveShutterEnabled = [v23 responsiveShutterEnabled];
      }

      else
      {
        responsiveShutterEnabled = 0;
      }

      [(BWStillImageCoordinatorNode *)v252 setResponsiveShutterEnabledViaAPI:responsiveShutterEnabled];
      -[BWStillImageCoordinatorNode setFastCapturePrioritizationEnabled:](v252, "setFastCapturePrioritizationEnabled:", [v23 fastCapturePrioritizationEnabled]);
      [(BWStillImageCoordinatorNode *)v252 setStillImageCapturePipeliningMode:v761];
      -[BWStillImageCoordinatorNode setCinematicFramingWarpingRequired:](v252, "setCinematicFramingWarpingRequired:", [v23 cinematicFramingWarpingRequired]);
      if (v761 == 1)
      {
        [(BWStillImageCoordinatorNode *)v252 setMaxNumberOfBurstCapturesAllowedInFlight:2];
      }

      v212[7] = v252;
    }

    v257 = [[BWStillImageFrameCoordinatorNode alloc] initWithNodeConfiguration:v253 inputPortTypes:v764 sensorRawInputPortTypes:allKeys3];
    v942.receiver = v212;
    v942.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v942, sel_addNode_error_, v257, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v257 setName:@"Still Image Frame Coordinator"];
    v941 = 0u;
    v940 = 0u;
    v939 = 0u;
    v938 = 0u;
    v258 = [v798 countByEnumeratingWithState:&v938 objects:v937 count:16];
    v259 = v799;
    if (v258)
    {
      v260 = v258;
      v781 = *v939;
      while (2)
      {
        for (kk = 0; kk != v260; ++kk)
        {
          if (*v939 != v781)
          {
            objc_enumerationMutation(v798);
          }

          v262 = *(*(&v938 + 1) + 8 * kk);
          v263 = [v798 objectForKeyedSubscript:v262];
          if (objc_msgSend_isEqualToString_(v262))
          {
            v264 = v784;
          }

          else
          {
            v264 = v263;
          }

          if (v252)
          {
            v1051[0] = [callback safelyConnectOutput:v264 toInput:-[BWStillImageCoordinatorNode inputForPortType:](v252 pipelineStage:{"inputForPortType:", v262), v791}];
            if (v1051[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }

            v259 = v799;
            v1051[0] = [callback safelyConnectOutput:-[BWStillImageCoordinatorNode outputForPortType:](v252 toInput:"outputForPortType:" pipelineStage:{v262), -[BWStillImageFrameCoordinatorNode inputForPortType:](v257, "inputForPortType:", v262), v799}];
            if (v1051[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }
          }

          else
          {
            v1051[0] = [callback safelyConnectOutput:v264 toInput:-[BWStillImageFrameCoordinatorNode inputForPortType:](v257 pipelineStage:{"inputForPortType:", v262), v259}];
            if (v1051[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }
          }

          [v802 setObject:-[BWStillImageFrameCoordinatorNode outputForPortType:](v257 forKeyedSubscript:{"outputForPortType:", v262), v262}];
        }

        v260 = [v798 countByEnumeratingWithState:&v938 objects:v937 count:16];
        if (v260)
        {
          continue;
        }

        break;
      }
    }

    v936 = 0u;
    v935 = 0u;
    v934 = 0u;
    v933 = 0u;
    v265 = v770;
    v266 = [v770 countByEnumeratingWithState:&v933 objects:v932 count:16];
    if (v266)
    {
      v267 = v266;
      v785 = *v934;
      while (2)
      {
        for (mm = 0; mm != v267; ++mm)
        {
          if (*v934 != v785)
          {
            objc_enumerationMutation(v265);
          }

          v269 = *(*(&v933 + 1) + 8 * mm);
          v270 = [v265 objectForKeyedSubscript:v269];
          if (v252)
          {
            v1051[0] = [callback safelyConnectOutput:v270 toInput:-[BWStillImageCoordinatorNode sensorRawInputForPortType:](v252 pipelineStage:{"sensorRawInputForPortType:", v269), v791}];
            if (v1051[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }

            v271 = [(BWStillImageCoordinatorNode *)v252 sensorRawOutputForPortType:v269];
            v272 = [(BWStillImageFrameCoordinatorNode *)v257 sensorRawInputForPortType:v269];
            v273 = v271;
            v265 = v770;
            v259 = v799;
            v1051[0] = [callback safelyConnectOutput:v273 toInput:v272 pipelineStage:v799];
            if (v1051[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }
          }

          else
          {
            v1051[0] = [callback safelyConnectOutput:v270 toInput:-[BWStillImageFrameCoordinatorNode sensorRawInputForPortType:](v257 pipelineStage:{"sensorRawInputForPortType:", v269), v259}];
            if (v1051[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }
          }

          [obja setObject:-[BWStillImageFrameCoordinatorNode sensorRawOutputForPortType:](v257 forKeyedSubscript:{"sensorRawOutputForPortType:", v269), v269}];
        }

        v267 = [v265 countByEnumeratingWithState:&v933 objects:v932 count:16];
        if (v267)
        {
          continue;
        }

        break;
      }
    }

    v255 = [(BWStillImageFrameCoordinatorNode *)v257 outputForPortType:v787];
    v274 = objc_alloc_init(FigCaptureIrisPreparedSettings);
    deepFusionSupported2 = [v23 deepFusionSupported];
    if (v741)
    {
      v276 = 2;
    }

    else
    {
      v276 = 1;
    }

    if (deepFusionSupported2)
    {
      v277 = 3;
    }

    else
    {
      v277 = v276;
    }

    [(FigCaptureIrisPreparedSettings *)v274 setQualityPrioritization:v277];
    [(FigCaptureIrisPreparedSettings *)v274 setDigitalFlashMode:v737];
    memset(v946, 0, 20);
    objc_msgSend_worstCaseMaxBracketedCaptureBufferCountForPreparedSettings_stillImageCaptureSettings_captureDevice_(BWStillImageCoordinatorNode);
    v278 = *v946;
    if (*v946 <= *&v946[4])
    {
      v278 = *&v946[4];
    }

    v780 = v278;
    v214 = v819;
    callbackCopy4 = callback;
    v254 = v772;
    v249 = &classRef_BWDerectificationInferenceProvider;
  }

  v280 = v742;
  if (!((v254 == 0) | v749 & 1))
  {
    v281 = -[BWCrossoverNode initWithMediaType:numberOfInputs:]([BWCrossoverNode alloc], "initWithMediaType:numberOfInputs:", 1986618469, [v798 count]);
    v282 = v249[65];
    v931.receiver = v762;
    v931.super_class = v282;
    if ((objc_msgSendSuper2(&v931, sel_addNode_error_, v281, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v792 = v255;
    v930 = 0u;
    v929 = 0u;
    v928 = 0u;
    v927 = 0u;
    v283 = [v798 countByEnumeratingWithState:&v927 objects:v926 count:16];
    if (v283)
    {
      v284 = v283;
      v285 = 0;
      v286 = *v928;
      while (2)
      {
        for (nn = 0; nn != v284; ++nn)
        {
          if (*v928 != v286)
          {
            objc_enumerationMutation(v798);
          }

          v1051[0] = [callback safelyConnectOutput:objc_msgSend(v802 toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v927 + 1) + 8 * nn)), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v281, "inputs"), "objectAtIndexedSubscript:", v285), v799}];
          if (v1051[0])
          {
            [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
            goto LABEL_964;
          }

          ++v285;
        }

        v284 = [v798 countByEnumeratingWithState:&v927 objects:v926 count:16];
        if (v284)
        {
          continue;
        }

        break;
      }
    }

    output = [(BWNode *)v281 output];
    v280 = v742;
    [v802 setObject:output forKeyedSubscript:v742];
    v214 = v819;
    callbackCopy4 = callback;
    v249 = &classRef_BWDerectificationInferenceProvider;
    v289 = v770;
    v255 = v792;
    if (v756)
    {
      v290 = -[BWCrossoverNode initWithMediaType:numberOfInputs:]([BWCrossoverNode alloc], "initWithMediaType:numberOfInputs:", 1986618469, [v770 count]);
      v925.receiver = v762;
      v925.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v925, sel_addNode_error_, v290, &v1050) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v924 = 0u;
      v923 = 0u;
      v922 = 0u;
      v921 = 0u;
      v291 = [v770 countByEnumeratingWithState:&v921 objects:v920 count:16];
      if (v291)
      {
        v292 = v291;
        v293 = 0;
        v294 = *v922;
        while (2)
        {
          for (i1 = 0; i1 != v292; ++i1)
          {
            if (*v922 != v294)
            {
              objc_enumerationMutation(v289);
            }

            v1051[0] = [callback safelyConnectOutput:objc_msgSend(obja toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v921 + 1) + 8 * i1)), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v290, "inputs"), "objectAtIndexedSubscript:", v293), v799}];
            if (v1051[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }

            ++v293;
            v289 = v770;
          }

          v292 = [v770 countByEnumeratingWithState:&v921 objects:v920 count:16];
          if (v292)
          {
            continue;
          }

          break;
        }
      }

      output2 = [(BWNode *)v290 output];
      v280 = v742;
      [obja setObject:output2 forKeyedSubscript:v742];
      callbackCopy4 = callback;
      v255 = v792;
    }
  }

  v297 = objc_alloc_init(BWPixelTransferNode);
  [(BWNode *)v297 setName:@"Still Image Format Converter"];
  [(BWPixelTransferNode *)v297 setCropMode:3];
  [(BWPixelTransferNode *)v297 setMaxInputLossyCompressionLevel:3];
  -[BWPixelTransferNode setMaxOutputLossyCompressionLevel:](v297, "setMaxOutputLossyCompressionLevel:", [v23 maxLossyCompressionLevel]);
  if ([v23 inputIsHLG] && (objc_msgSend(v23, "gainMapMainImageDownscalingFactor"), v298 != 0.0))
  {
    v299 = 0;
  }

  else
  {
    -[BWPixelTransferNode setOutputColorSpaceProperties:](v297, "setOutputColorSpaceProperties:", [v23 outputColorSpaceProperties]);
    v299 = 2;
  }

  v793 = v297;
  [(BWPixelTransferNode *)v297 setConversionMethodForStillImagesDuringHDRVideos:v299];
  if (v255)
  {
    v300 = 0x1E7988000;
    if (v756)
    {
      v301 = v255;
      v302 = +[BWStillImageConditionalRouterDepthConfiguration depthConfiguration];
      v303 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v302];
      [(BWNode *)v303 setName:@"Depth Conditional Router"];
      [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v303 "outputs")];
      [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v303 "outputs")];
      v304 = v249[65];
      v919.receiver = v762;
      v919.super_class = v304;
      if ((objc_msgSendSuper2(&v919, sel_addNode_error_, v303, &v1050) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1051[0] = [callbackCopy4 safelyConnectOutput:v301 toInput:-[BWNode input](v303 pipelineStage:{"input"), v799}];
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v305 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v303, "outputs"), "objectAtIndexedSubscript:", [v302 yuvOutputIndex]);
      v306 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v303, "outputs"), "objectAtIndexedSubscript:", [v302 rawOutputIndex]);
      v307 = -[BWDepthSynchronizerNode initForStreaming:maxQueueDepth:separateDepthComponentsEnabled:]([BWDepthSynchronizerNode alloc], "initForStreaming:maxQueueDepth:separateDepthComponentsEnabled:", 0, [v757 zeroShutterLagTimeMachineBufferCapacity] + objc_msgSend(v23, "sifrStillImageCaptureEnabledIfAvailable"), 0);
      v308 = v249[65];
      v918.receiver = v762;
      v918.super_class = v308;
      if ((objc_msgSendSuper2(&v918, sel_addNode_error_, v307, &v1050) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      [v307 setName:@"Still Image Raw Depth Synchronizer"];
      v1051[0] = [callbackCopy4 safelyConnectOutput:objc_msgSend(obja toInput:"objectForKeyedSubscript:" pipelineStage:{v742), objc_msgSend(v307, "imageInput"), v799}];
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1051[0] = [callbackCopy4 safelyConnectOutput:v306 toInput:objc_msgSend(v307 pipelineStage:{"depthInput"), v799}];
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v280 = v742;
      [obja setObject:objc_msgSend(v307 forKeyedSubscript:{"output"), v742}];
      v255 = v305;
      v300 = 0x1E7988000uLL;
    }

    v309 = [objc_alloc(*(v300 + 3656)) initForStreaming:0 separateDepthComponentsEnabled:0];
    v310 = v249[65];
    v917.receiver = v762;
    v917.super_class = v310;
    if ((objc_msgSendSuper2(&v917, sel_addNode_error_, v309, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [v309 setName:@"Still Image YUV Depth Synchronizer"];
    v1051[0] = [callbackCopy4 safelyConnectOutput:objc_msgSend(v802 toInput:"objectForKeyedSubscript:" pipelineStage:{v280), objc_msgSend(v309, "imageInput"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy4 safelyConnectOutput:v255 toInput:objc_msgSend(v309 pipelineStage:{"depthInput"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [v802 setObject:objc_msgSend(v309 forKeyedSubscript:{"output"), v280}];
  }

  output3 = [v802 objectForKeyedSubscript:v280];
  output4 = [obja objectForKeyedSubscript:v280];
  dictionary6 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary6 setObject:objc_msgSend(v214 forKeyedSubscript:{"objectForKeyedSubscript:", v280), v280}];
  v916 = 0u;
  v915 = 0u;
  v914 = 0u;
  v913 = 0u;
  v313 = [v772 countByEnumeratingWithState:&v913 objects:v912 count:16];
  if (v313)
  {
    v314 = v313;
    v315 = *v914;
    do
    {
      for (i2 = 0; i2 != v314; ++i2)
      {
        if (*v914 != v315)
        {
          objc_enumerationMutation(v772);
        }

        [dictionary6 setObject:objc_msgSend(v214 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v913 + 1) + 8 * i2)), *(*(&v913 + 1) + 8 * i2)}];
      }

      v314 = [v772 countByEnumeratingWithState:&v913 objects:v912 count:16];
    }

    while (v314);
  }

  if (v787)
  {
    [dictionary6 setObject:objc_msgSend(v214 forKeyedSubscript:{"objectForKeyedSubscript:", v787), v787}];
  }

  v317 = v762;
  callbackCopy6 = callback;
  v319 = v799;
  if (v749)
  {
    v320 = -[BWFunnelNode initWithNumberOfInputs:mediaType:]([BWFunnelNode alloc], "initWithNumberOfInputs:mediaType:", [dictionary6 count], 1986618469);
    v321 = v249[65];
    v911.receiver = v762;
    v911.super_class = v321;
    if ((objc_msgSendSuper2(&v911, sel_addNode_error_, v320, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v320 setName:@"UB Funnel"];
    v910 = 0u;
    v909 = 0u;
    v908 = 0u;
    v907 = 0u;
    v322 = [v802 countByEnumeratingWithState:&v907 objects:v906 count:16];
    if (v322)
    {
      v323 = v322;
      v324 = 0;
      v325 = *v908;
      while (2)
      {
        for (i3 = 0; i3 != v323; ++i3)
        {
          if (*v908 != v325)
          {
            objc_enumerationMutation(v802);
          }

          v1051[0] = [callback safelyConnectOutput:objc_msgSend(v802 toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v907 + 1) + 8 * i3)), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v320, "inputs"), "objectAtIndexedSubscript:", v324), v768}];
          if (v1051[0])
          {
            [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
            goto LABEL_964;
          }

          ++v324;
        }

        v323 = [v802 countByEnumeratingWithState:&v907 objects:v906 count:16];
        if (v323)
        {
          continue;
        }

        break;
      }
    }

    output3 = [(BWNode *)v320 output];
    if (v756)
    {
      v327 = -[BWFunnelNode initWithNumberOfInputs:mediaType:]([BWFunnelNode alloc], "initWithNumberOfInputs:mediaType:", [dictionary6 count], 1986618469);
      v905.receiver = v762;
      v905.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v905, sel_addNode_error_, v327, &v1050) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      [(BWNode *)v327 setName:@"UB Sensor Raw Funnel"];
      v904 = 0u;
      v903 = 0u;
      v902 = 0u;
      v901 = 0u;
      v328 = [obja countByEnumeratingWithState:&v901 objects:v900 count:16];
      if (v328)
      {
        v329 = v328;
        v330 = 0;
        v331 = *v902;
        while (2)
        {
          for (i4 = 0; i4 != v329; ++i4)
          {
            if (*v902 != v331)
            {
              objc_enumerationMutation(obja);
            }

            v1051[0] = [callback safelyConnectOutput:objc_msgSend(obja toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v901 + 1) + 8 * i4)), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v327, "inputs"), "objectAtIndexedSubscript:", v330), v768}];
            if (v1051[0])
            {
              [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
              goto LABEL_964;
            }

            ++v330;
          }

          v329 = [obja countByEnumeratingWithState:&v901 objects:v900 count:16];
          if (v329)
          {
            continue;
          }

          break;
        }
      }

      output4 = [(BWNode *)v327 output];
    }

    v317 = v762;
    v214 = v819;
    callbackCopy6 = callback;
    v319 = v799;
    v249 = &classRef_BWDerectificationInferenceProvider;
  }

  v333 = v249[65];
  v899.receiver = v317;
  v899.super_class = v333;
  if ((objc_msgSendSuper2(&v899, sel_addNode_error_, v793, &v1050) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v1051[0] = [callbackCopy6 safelyConnectOutput:output3 toInput:-[BWNode input](v793 pipelineStage:{"input"), v319}];
  if (v1051[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  output5 = [(BWNode *)v793 output];
  if (v711)
  {
    rawSensorDimensions = [v23 rawSensorDimensions];
    if (!v772)
    {
      v335 = FigCaptureDimensionsFromDictionaryRepresentation([objc_msgSend(objc_msgSend(v23 "dimensionsByResolutionFlavorByPortType")]);
      if (SHIDWORD(v335) > 0 && v335 > 0)
      {
        rawSensorDimensions = v335;
      }
    }

    v337 = [[BWCompressedShotBufferNode alloc] initWithNodeConfiguration:v758 compressionInputDimensions:rawSensorDimensions];
    v338 = v249[65];
    v898.receiver = v762;
    v898.super_class = v338;
    if ((objc_msgSendSuper2(&v898, sel_addNode_error_, v337, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v339 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.compressed-shot-buffer" priority:*(v762 + 48)];
    v768 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.ub.default" priority:*(v762 + 48)];
    v1051[0] = [callback safelyConnectOutput:output5 toInput:-[BWNode input](v337 pipelineStage:{"input"), v339}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output5 = [(BWNode *)v337 output];
    v1051[0] = [callback safelyConnectOutput:output4 toInput:-[BWCompressedShotBufferNode sensorRawInput](v337 pipelineStage:{"sensorRawInput"), v339}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output4 = [(BWCompressedShotBufferNode *)v337 sensorRawOutput];
    v340 = v762;
    [*(v762 + 56) setCompressedShotBuffer:v337];
    *(v762 + 64) = v337;
    v341 = v709;
    v342 = v780;
  }

  else
  {
    v341 = v709;
    v342 = v780;
    v340 = v762;
  }

  if (clientIsCameraOrDerivative)
  {
    if (v759 == 1)
    {
      v343 = 1;
    }

    else
    {
      v343 = 2;
    }
  }

  else if (bravoConstituentPhotoDeliveryEnabled)
  {
    v343 = 8 * [dictionary6 count];
  }

  else
  {
    v343 = 8;
  }

  constantColorVersion = [v23 constantColorVersion];
  if (v761 == 1)
  {
    v346 = 4;
  }

  else
  {
    v346 = 2;
  }

  if (v343 > v346)
  {
    v346 = v343;
  }

  if (constantColorVersion > 0)
  {
    v343 = v346;
  }

  if (v343 <= 2)
  {
    v347 = 2;
  }

  else
  {
    v347 = v343;
  }

  if (v761 == 1)
  {
    v348 = v347;
  }

  else
  {
    v348 = v343;
  }

  v349 = dictionary6;
  v350 = v758;
  [(BWPhotonicEngineNodeConfiguration *)v758 setSensorConfigurationsByPortType:v349, v345];
  -[BWPhotonicEngineNodeConfiguration setInputIs10Bit:](v758, [v23 inputIs10Bit]);
  [(BWPhotonicEngineNodeConfiguration *)v758 setRetainedBufferCount:v342];
  if ([v23 inputIsHLG])
  {
    -[BWPhotonicEngineNodeConfiguration setOutputPixelFormat:](v758, [v23 outputPixelFormat]);
    -[BWPhotonicEngineNodeConfiguration setOutputColorSpaceProperties:](v758, [v23 outputColorSpaceProperties]);
  }

  [(BWPhotonicEngineNodeConfiguration *)v758 setOutputBufferCount:v348];
  [(BWPhotonicEngineNodeConfiguration *)v758 setMinimumOutputBufferCount:v343];
  [(BWPhotonicEngineNodeConfiguration *)v758 setMaxNumberOfBurstCapturesAllowedInFlight:?];
  [(BWPhotonicEngineNodeConfiguration *)v758 setOutputPoolBackPressureEnabled:?];
  -[BWPhotonicEngineNodeConfiguration setStillImageFusionScheme:](v758, [v23 noiseReductionAndFusionScheme]);
  [(BWStillImageNodeConfiguration *)v758 setFigThreadPriority:*(v340 + 48)];
  [(BWPhotonicEngineNodeConfiguration *)v758 setReferenceFrameSelectionDelegate:?];
  -[BWPhotonicEngineNodeConfiguration setStandardFormatDimensions:](v758, [firstObject3 dimensions]);
  if (v700)
  {
    -[BWPhotonicEngineNodeConfiguration setOutputDimensions:](v758, [v23 outputStillImageDimensions]);
  }

  -[BWPhotonicEngineNodeConfiguration setSoftISPSupportEnabled:](v758, [v23 softISPSupported]);
  -[BWPhotonicEngineNodeConfiguration setQuadraProcessingSupportEnabled:](v758, [v23 quadraProcessingSupportEnabled]);
  -[BWPhotonicEngineNodeConfiguration setSensorRawPixelFormat:](v758, [v23 sensorRawPixelFormat]);
  -[BWPhotonicEngineNodeConfiguration setRawSensorDimensions:](v758, [v23 rawSensorDimensions]);
  [v23 sensorCenterOffset];
  [(BWPhotonicEngineNodeConfiguration *)v758 setSensorCenterOffset:v351, v352];
  dimensionsByResolutionFlavorByPortType = [v23 dimensionsByResolutionFlavorByPortType];
  [(BWPhotonicEngineNodeConfiguration *)v758 setDimensionsByResolutionFlavorByPortType:dimensionsByResolutionFlavorByPortType, v354];
  -[BWPhotonicEngineNodeConfiguration setUltraHighResolutionProcessingEnabled:](v758, [v23 ultraHighResolutionProcessingEnabled]);
  [(BWPhotonicEngineNodeConfiguration *)v758 setProcessingAspectRatio:v341];
  -[BWPhotonicEngineNodeConfiguration setStillImageGDCSourceMode:](v758, [v23 stillImageGDCSourceMode]);
  -[BWPhotonicEngineNodeConfiguration setSfhrMode:](v758, [v23 sfhrMode]);
  [(BWPhotonicEngineNodeConfiguration *)v758 setUnifiedBracketingFusionSupportEnabled:?];
  [(BWPhotonicEngineNodeConfiguration *)v758 setDigitalFlashSupportEnabled:v737];
  portTypesWithRawNightModeEnabled = [v23 portTypesWithRawNightModeEnabled];
  [(BWPhotonicEngineNodeConfiguration *)v758 setPortTypesWithRawNightModeEnabled:portTypesWithRawNightModeEnabled, v356];
  v357 = v759 != 1 && ([v23 deepFusionSupported] && !-[BWPhotonicEngineNodeConfiguration softISPSupportEnabled](v758) || objc_msgSend(objc_msgSend(v23, "portTypesWithLearnedFusionEnabled"), "count") != 0);
  [(BWPhotonicEngineNodeConfiguration *)v758 setDeepFusionSyntheticsInNRSupportEnabled:v357];
  deepFusionSupported3 = [v23 deepFusionSupported];
  if (v761 == 2)
  {
    v359 = 0;
  }

  else
  {
    v359 = v722;
  }

  if (deepFusionSupported3)
  {
    v360 = v359;
  }

  else
  {
    v360 = 0;
  }

  [(BWPhotonicEngineNodeConfiguration *)v758 setDeepFusionWaitForPreprocessingToFinish:v360];
  -[BWPhotonicEngineNodeConfiguration setDeepFusionSupportEnabled:](v758, [v23 deepFusionSupported]);
  portTypesWithLearnedFusionEnabled = [v23 portTypesWithLearnedFusionEnabled];
  [(BWPhotonicEngineNodeConfiguration *)v758 setPortTypesWithLearnedFusionEnabled:portTypesWithLearnedFusionEnabled, v362];
  if (v759 == 1)
  {
    v363 = 1;
  }

  else
  {
    v363 = v722;
  }

  v788 = v348;
  if ((v363 & 1) != 0 || ((v741 == 2) & v735) != 0)
  {
    deepZoomVersion = [v23 deepZoomVersion];
  }

  else
  {
    deepZoomVersion = 0;
  }

  [(BWPhotonicEngineNodeConfiguration *)v758 setDeepZoomVersion:deepZoomVersion];
  -[BWPhotonicEngineNodeConfiguration setDeepZoomMode:](v758, [v23 deepZoomMode]);
  [(BWPhotonicEngineNodeConfiguration *)v758 setMaxDeepFusionOutputCount:?];
  [(BWPhotonicEngineNodeConfiguration *)v758 setLearnedNRMode:v735];
  [(BWPhotonicEngineNodeConfiguration *)v758 setDepthDataDeliveryEnabled:v763];
  if (v747)
  {
    v365 = [BWSensorConfiguration alloc];
    v366 = [objc_msgSend(v747 "captureStream")];
    v367 = [objc_msgSend(v747 "captureStream")];
    v368 = [objc_msgSend(v747 "captureStream")];
    v369 = [cameraInfoByPortType2 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(v747, "captureStream"), "portType")}];
    v370 = v368;
    v350 = v758;
    v371 = [(BWSensorConfiguration *)v365 initWithPortType:v366 sensorIDString:v367 sensorIDDictionary:v370 cameraInfo:v369];
    [(BWPhotonicEngineNodeConfiguration *)v758 setJasperSensorConfiguration:v371, v372];
  }

  [(BWPhotonicEngineNodeConfiguration *)v350 setCmiResourceEnabled:?];
  [(BWPhotonicEngineNodeConfiguration *)v350 setAlwaysAllowModifyingInputBuffers:allowedToModifyInputBuffers];
  [v23 ubInferenceMainImageDownscalingFactor];
  [(BWPhotonicEngineNodeConfiguration *)v350 setInferenceMainImageDownscalingFactor:v373];
  [(BWPhotonicEngineNodeConfiguration *)v350 setProvidedInferenceAttachedMediaByMode:dictionary3, v374];
  [(BWPhotonicEngineNodeConfiguration *)v350 setSemanticRenderingVersion:v712];
  [(BWPhotonicEngineNodeConfiguration *)v350 setSemanticDevelopmentVersion:semanticDevelopmentVersion];
  -[BWPhotonicEngineNodeConfiguration setSmartStyleRenderingVersion:](v350, [v23 smartStyleRenderingVersion]);
  -[BWPhotonicEngineNodeConfiguration setSmartStyleRenderingEnabled:](v350, [v23 smartStyleRenderingEnabled]);
  -[BWPhotonicEngineNodeConfiguration setSmartStyleReversibilityEnabled:](v350, [v23 smartStyleReversibilityEnabled]);
  if (v745)
  {
    smartStyleReversibilityEnabled = 1;
  }

  else
  {
    smartStyleReversibilityEnabled = [v23 smartStyleReversibilityEnabled];
  }

  [(BWPhotonicEngineNodeConfiguration *)v350 setUnstyledBufferEmitted:smartStyleReversibilityEnabled];
  -[BWPhotonicEngineNodeConfiguration setGenerateInferencesForSemanticProcessingIfNeeded:](v350, [v23 generateInferencesForSemanticProcessingIfNeeded]);
  [(BWPhotonicEngineNodeConfiguration *)v350 setPersonSemanticsVersion:v703];
  -[BWPhotonicEngineNodeConfiguration setSemanticStyleRenderingEnabled:](v350, [v23 semanticStyleRenderingEnabled]);
  if (v752)
  {
    [(BWPhotonicEngineNodeConfiguration *)v350 setPortTypesWithDepthSegmentationPortraitParameters:v806, v376];
    [(BWPhotonicEngineNodeConfiguration *)v350 setZoomingDisparityAllowed:?];
    [(BWPhotonicEngineNodeConfiguration *)v350 setShouldComputeDisparityWhenCalibrationFails:?];
  }

  if (v763)
  {
    -[BWPhotonicEngineNodeConfiguration setContinuousZoomWithDepthSupported:](v350, [v23 continuousZoomWithDepthSupported]);
  }

  [(BWPhotonicEngineNodeConfiguration *)v350 setDemosaicedRawEnabled:v713];
  if (v713)
  {
    -[BWPhotonicEngineNodeConfiguration setDemosaicedRawPixelFormat:](v350, [v23 demosaicedRawPixelFormat]);
  }

  rawColorCalibrationsByPortType = [v23 rawColorCalibrationsByPortType];
  [(BWPhotonicEngineNodeConfiguration *)v350 setRawColorCalibrationsByPortType:rawColorCalibrationsByPortType, v378];
  rawLensShadingCorrectionCoefficientsByPortType = [v23 rawLensShadingCorrectionCoefficientsByPortType];
  [(BWPhotonicEngineNodeConfiguration *)v350 setRawLensShadingCorrectionCoefficientsByPortType:rawLensShadingCorrectionCoefficientsByPortType, v380];
  if ((v701 | v725))
  {
    -[BWPhotonicEngineNodeConfiguration setIntelligentDistortionCorrectionVersion:](v350, [v23 dcProcessorVersion]);
    if (v725)
    {
      portTypesWithGeometricDistortionCorrectionEnabled = [v23 portTypesWithGeometricDistortionCorrectionEnabled];
    }

    else
    {
      portTypesWithGeometricDistortionCorrectionEnabled = 0;
    }

    [(BWPhotonicEngineNodeConfiguration *)v350 setPortTypesWithGeometricDistortionCorrectionEnabled:portTypesWithGeometricDistortionCorrectionEnabled, v381];
    [(BWPhotonicEngineNodeConfiguration *)v350 setGeometricDistortionCorrectionExpandedImageDimensions:v689];
    portTypesWithIntelligentDistortionCorrectionEnabled = [v23 portTypesWithIntelligentDistortionCorrectionEnabled];
    [(BWPhotonicEngineNodeConfiguration *)v350 setPortTypesWithIntelligentDistortionCorrectionEnabled:portTypesWithIntelligentDistortionCorrectionEnabled, v384];
    [(BWPhotonicEngineNodeConfiguration *)v350 setIntelligentDistortionCorrectionAppliesFinalDimensions:v710];
    -[BWPhotonicEngineNodeConfiguration setDcProcessingWithDepthSupported:](v350, [v23 dcProcessingWithDepthSupported]);
    if ((v763 ^ 1 | v690))
    {
      continuousZoomWithDepthSupported2 = 0;
    }

    else if ([v23 dcProcessingWithDepthSupported])
    {
      continuousZoomWithDepthSupported2 = 1;
    }

    else
    {
      continuousZoomWithDepthSupported2 = [v23 continuousZoomWithDepthSupported];
    }

    [(BWPhotonicEngineNodeConfiguration *)v350 setReplicatePixelsOutsideOfFinalImageDimensionsWithDCProcessing:continuousZoomWithDepthSupported2];
  }

  -[BWPhotonicEngineNodeConfiguration setGreenGhostMitigationVersion:](v350, [v23 greenGhostMitigationVersion]);
  -[BWPhotonicEngineNodeConfiguration setSwfrVersion:](v350, [v23 swfrVersion]);
  -[BWPhotonicEngineNodeConfiguration setConstantColorVersion:](v350, [v23 constantColorVersion]);
  -[BWPhotonicEngineNodeConfiguration setConstantColorClippingRecoveryEnabled:](v350, [v23 constantColorClippingRecoveryEnabled]);
  -[BWPhotonicEngineNodeConfiguration setConstantColorSaturationBoostEnabled:](v350, [v23 constantColorSaturationBoostEnabled]);
  [(BWStillImageNodeConfiguration *)v350 setStereoPhotoOutputDimensions:[(BWStillImageNodeConfiguration *)v350 stereoPhotoOutputDimensions]];
  [(BWPhotonicEngineNodeConfiguration *)v350 setRedEyeReductionEnabled:?];
  [v23 gainMapMainImageDownscalingFactor];
  [(BWPhotonicEngineNodeConfiguration *)v350 setGainMapMainImageDownscalingFactor:v386];
  -[BWPhotonicEngineNodeConfiguration setHorizontalSensorBinningFactor:](v350, [v23 horizontalSensorBinningFactor]);
  -[BWPhotonicEngineNodeConfiguration setVerticalSensorBinningFactor:](v350, [v23 verticalSensorBinningFactor]);
  v387 = [[BWPhotonicEngineNode alloc] initWithNodeConfiguration:v350 captureDevice:v757];
  v388 = v249[65];
  v897.receiver = v340;
  v897.super_class = v388;
  if ((objc_msgSendSuper2(&v897, sel_addNode_error_, v387, &v1050) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  [(BWNode *)v387 setName:@"PhotonicEngine"];
  [v757 setStillImageProcessingSupportProvider:v387];
  [*(v340 + 56) setStillImageProcessingSupportProvider:v387];
  if ([v23 aspectRatio] && (objc_msgSend(v23, "smartCropWarpingRequired") & 1) == 0)
  {
    *(v340 + 128) = v387;
  }

  v1051[0] = [callback safelyConnectOutput:output5 toInput:-[BWNode input](v387 pipelineStage:{"input"), v768}];
  if (v1051[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  objb = v387;
  callbackCopy19 = callback;
  if (v756)
  {
    v1051[0] = [callback safelyConnectOutput:output4 toInput:-[BWPhotonicEngineNode sensorRawInput](v387 pipelineStage:{"sensorRawInput"), v768}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }
  }

  if (v706)
  {
    v390 = v387;
    v1051[0] = [callback safelyConnectOutput:v706 toInput:-[BWPhotonicEngineNode pointCloudInput](v387 pipelineStage:{"pointCloudInput"), v768}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }
  }

  else
  {
    v391 = *off_1E798A0C8;
    v390 = v387;
    if ([v691 objectForKeyedSubscript:*off_1E798A0C8])
    {
      v1051[0] = [callback safelyConnectOutput:objc_msgSend(v691 toInput:"objectForKeyedSubscript:" pipelineStage:{v391), -[BWPhotonicEngineNode pointCloudInput](v387, "pointCloudInput"), v768}];
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }
    }
  }

  output6 = [(BWNode *)v390 output];
  output7 = output6;
  if ((v710 & 1) == 0)
  {
    v807 = output6;
    dictionary7 = [MEMORY[0x1E695DF90] dictionary];
    [v23 gainMapMainImageDownscalingFactor];
    if (v395 != 0.0)
    {
      v396 = MEMORY[0x1E696AD98];
      [v23 gainMapMainImageDownscalingFactor];
      [dictionary7 setObject:objc_msgSend(v396 forKeyedSubscript:{"numberWithFloat:"), 0x1F217BF50}];
    }

    array2 = [MEMORY[0x1E695DF70] array];
    v893 = 0u;
    v894 = 0u;
    v895 = 0u;
    v896 = 0u;
    v398 = [dictionary3 countByEnumeratingWithState:&v893 objects:v892 count:16];
    if (v398)
    {
      v399 = v398;
      v400 = *v894;
      do
      {
        for (i5 = 0; i5 != v399; ++i5)
        {
          if (*v894 != v400)
          {
            objc_enumerationMutation(dictionary3);
          }

          [array2 addObjectsFromArray:{objc_msgSend(dictionary3, "objectForKeyedSubscript:", *(*(&v893 + 1) + 8 * i5))}];
        }

        v399 = [dictionary3 countByEnumeratingWithState:&v893 objects:v892 count:16];
      }

      while (v399);
    }

    if (v713)
    {
      [dictionary7 setObject:&unk_1F224A7F0 forKeyedSubscript:0x1F21AAE10];
      v891 = 0u;
      v890 = 0u;
      v889 = 0u;
      v888 = 0u;
      v402 = [array2 countByEnumeratingWithState:&v888 objects:v887 count:16];
      if (v402)
      {
        v403 = v402;
        v404 = *v889;
        do
        {
          for (i6 = 0; i6 != v403; ++i6)
          {
            if (*v889 != v404)
            {
              objc_enumerationMutation(array2);
            }

            v406 = *(*(&v888 + 1) + 8 * i6);
            v407 = MEMORY[0x1E696AD98];
            [v23 ubInferenceMainImageDownscalingFactor];
            [dictionary7 setObject:objc_msgSend(v407 forKeyedSubscript:{"numberWithFloat:"), v406}];
          }

          v403 = [array2 countByEnumeratingWithState:&v888 objects:v887 count:16];
        }

        while (v403);
      }
    }

    v350 = v758;
    v408 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:v788 nodeConfiguration:v758];
    [(BWNode *)v408 setName:@"Resizing"];
    -[BWStillImageScalerNode setResizedOutputDimensions:](v408, "setResizedOutputDimensions:", [v23 outputStillImageDimensions]);
    [(BWStillImageScalerNode *)v408 setBlackFillingRequired:0];
    [(BWStillImageScalerNode *)v408 setMainImageDownscalingFactorByAttachedMediaKey:dictionary7];
    [(BWStillImageScalerNode *)v408 setPreferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer:1];
    v249 = &classRef_BWDerectificationInferenceProvider;
    v340 = v762;
    v886.receiver = v762;
    v886.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v886, sel_addNode_error_, v408, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:v1051 captureDevice:? sourceOutputsByPortType:? sourceSensorRawOutputsByPortType:? highResStillImageDimensions:? supplementalPointCloudCaptureDevice:? supplementalPointCloudSourceOutput:? captureStatusDelegate:? inferenceScheduler:? cinematicFramingStatesProvider:? smartCropHomographyProvider:? multiCamClientCompositingCallback:? graph:?];
      goto LABEL_964;
    }

    callbackCopy19 = callback;
    v1051[0] = [callback safelyConnectOutput:v807 toInput:-[BWNode input](v408 pipelineStage:{"input"), v799}];
    v214 = v819;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v408 output];
  }

  [(BWPixelTransferNode *)v793 setPreferredOutputPixelFormats:[(BWFormatRequirements *)[(BWNodeInput *)[(BWNode *)objb input] formatRequirements] supportedPixelFormats]];
  [(BWPixelTransferNode *)v793 setConverting10BitVideoRangeTo8BitFullRangeEncouraged:1];
  if (v743 != 9 || v759 == 1)
  {
    v416 = v738;
  }

  else
  {
    v409 = v249;
    v410 = output7;
    v411 = +[BWStillImageConditionalRouterFocusPixelDisparityInputConfiguration focusPixelDisparityInputConfiguration];
    v412 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v411];
    [(BWNode *)v412 setName:@"Focus Pixel Disparity Input Frame Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v412 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v412 "outputs")];
    v413 = v409[65];
    v885.receiver = v340;
    v885.super_class = v413;
    if ((objc_msgSendSuper2(&v885, sel_addNode_error_, v412, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v410 toInput:-[BWNode input](v412 pipelineStage:{"input"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v414 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
    [(BWNode *)v414 setName:@"Default/FocusPixel Sync"];
    [(BWInferenceSynchronizerNode *)v414 setSynchronizeInferencesResolver:&__block_literal_global_41];
    v415 = v409[65];
    v884.receiver = v340;
    v884.super_class = v415;
    if ((objc_msgSendSuper2(&v884, sel_addNode_error_, v414, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callback safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v412 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v411, "defaultOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v414, "inputs"), "objectAtIndexedSubscript:", 0), v728}];
    v416 = v738;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callback safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v412 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v411, "focusPixelDisparityInputOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v414, "inputs"), "objectAtIndexedSubscript:", 1), v728}];
    v350 = v758;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v414 output];
    callbackCopy19 = callback;
    v249 = &classRef_BWDerectificationInferenceProvider;
  }

  if (((v776 | v745 ^ 1) & 1) == 0)
  {
    v417 = objc_alloc_init(BWStillImageSmartStyleUnstyledBufferEmitterNode);
    [v340 addNode:v417 error:0];
    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v417 pipelineStage:{"input"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v417 output];
  }

  stereoPhotoOutputDimensions = [v23 stereoPhotoOutputDimensions];
  v794 = 0;
  if (stereoPhotoOutputDimensions >= 1 && SHIDWORD(stereoPhotoOutputDimensions) >= 1)
  {
    v419 = output7;
    [(BWNodeOutput *)output7 node];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v1051[0] = -12780;
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v649 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v650 = v1029;
      if (os_log_type_enabled(v649, v1028))
      {
        v651 = v650;
      }

      else
      {
        v651 = v650 & 0xFFFFFFFE;
      }

      if (v651)
      {
        *v986 = 136315138;
        *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v946 = 0;
      v661 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(7, v661, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2734, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2734", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2734", 0);
      v662 = v661;
      goto LABEL_1176;
    }

    v420 = +[BWStillImageConditionalRouterStereoPhotoConfiguration stereoPhotoConfiguration];
    v421 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v420];
    [(BWNode *)v421 setName:@"Stereo Photo Conditional Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v421 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v421 "outputs")];
    v422 = v249[65];
    v883.receiver = v340;
    v883.super_class = v422;
    if ((objc_msgSendSuper2(&v883, sel_addNode_error_, v421, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v419 toInput:-[BWNode input](v421 pipelineStage:{"input"), v799}];
    v350 = v758;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v423 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v421, "outputs"), "objectAtIndexedSubscript:", [v420 mainImageOutputIndex]);
    outputs = [(BWNode *)v421 outputs];
    stereoPhotoOutoutIndex = [v420 stereoPhotoOutoutIndex];
    v426 = outputs;
    output7 = v423;
    v794 = [v426 objectAtIndexedSubscript:stereoPhotoOutoutIndex];
    callbackCopy19 = callback;
    v416 = v738;
  }

  if (v776)
  {
    v578 = output7;
    *v946 = 0;
    *v986 = 0;
    smartStyleReversibilityEnabled2 = [v23 smartStyleReversibilityEnabled];
    constantColorConfidenceMapDimensions = [v23 constantColorConfidenceMapDimensions];
    filterRenderingEnabled2 = [v744 filterRenderingEnabled];
    depthDataSourceDimensions = [v23 depthDataSourceDimensions];
    v583 = depthDataSourceDimensions > 0 && SHIDWORD(depthDataSourceDimensions) > 0;
    v665 = filterRenderingEnabled2;
    v350 = v758;
    v1051[0] = [(FigCapturePhotonicEngineSinkPipeline *)v340 _addScalerNodeWithNodeConfiguration:v758 intermediate:1 bravoConstituentPhotoDeliveryEnabled:bravoConstituentPhotoDeliveryEnabled mainImageDownscalingFactorByAttachedMediaKey:v766 zoomingDepthSupported:v724 ^ 1u smartStyleReversibilityEnabled:smartStyleReversibilityEnabled2 constantColorConfidenceMapDimensions:constantColorConfidenceMapDimensions filterRenderingEnabled:v665 enforcesZoomingForPortraitCaptures:v583 backPressureDrivenPipelining:v761 == 2 scalerNodeInputOut:v946 scalerNodeOutputOut:v986];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v584 = v799;
    if (v761 == 2)
    {
      v584 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.intermediateScaler" priority:*(v340 + 48)];
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v578 toInput:*v946 pipelineStage:v584];
    v249 = &classRef_BWDerectificationInferenceProvider;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v585 = *v986;
    v586 = [[BWPiecemealEncodingNode alloc] initWithNodeConfiguration:v758];
    v882.receiver = v340;
    v882.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v882, sel_addNode_error_, v586, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v585 toInput:-[BWNode input](v586 pipelineStage:{"input"), v584}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v769 = v586;
    output7 = [(BWNode *)v586 output];
    if (v745)
    {
      v587 = objc_alloc_init(BWStillImageSmartStyleUnstyledBufferEmitterNode);
      [v340 addNode:v587 error:0];
      v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v587 pipelineStage:{"input"), v799}];
      v416 = v738;
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      output7 = [(BWNode *)v587 output];
    }

    else
    {
      v416 = v738;
    }
  }

  else
  {
    v769 = 0;
  }

  if (v750)
  {
    v427 = output7;
    v428 = +[BWStillImageConditionalRouterOptimizedEnhancedDepthConfiguration optimizedEnhancedDepthConfiguration];
    v429 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v428];
    [(BWNode *)v429 setName:@"Optimized Enhanced Depth Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v429 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v429 "outputs")];
    v430 = v249[65];
    v881.receiver = v340;
    v881.super_class = v430;
    if ((objc_msgSendSuper2(&v881, sel_addNode_error_, v429, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v427 toInput:-[BWNode input](v429 pipelineStage:{"input"), v799}];
    v350 = v758;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v431 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v429, "outputs"), "objectAtIndexedSubscript:", [v428 deepFusionImageOutputIndex]);
    outputs2 = [(BWNode *)v429 outputs];
    mainImageOutputIndex = [v428 mainImageOutputIndex];
    v434 = outputs2;
    output7 = v431;
    v771 = [v434 objectAtIndexedSubscript:mainImageOutputIndex];
    callbackCopy19 = callback;
    v416 = v738;
  }

  else
  {
    v771 = 0;
  }

  if ((v698 & !v726 & 1) == 0 && (v743 > 9 || ((1 << v743) & 0x230) == 0) && (((v734 | v805) & v726 | v416) & 1) == 0)
  {
    v782 = 0;
    v773 = 0;
    output9 = 0;
    if (!v763)
    {
      goto LABEL_739;
    }

    goto LABEL_732;
  }

  if ((v763 & 1) == 0)
  {
    v1051[0] = -12780;
    v614 = FigCaptureGetFrameworkRadarComponent();
    v1029 = 0;
    v1028 = OS_LOG_TYPE_DEFAULT;
    v615 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v616 = v1029;
    if (os_log_type_enabled(v615, v1028))
    {
      v617 = v616;
    }

    else
    {
      v617 = v616 & 0xFFFFFFFE;
    }

    if (v617)
    {
      *v986 = 136316162;
      *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
      v987 = 1024;
      v618 = v682;
      *v988 = v682;
      *&v988[4] = 1024;
      v619 = (v734 | v805) & v726;
      *&v988[6] = v619;
      v989 = 1024;
      v620 = v687;
      v990 = v687;
      v991 = 1024;
      v621 = v738;
      v992 = v738;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v621 = v738;
      v620 = v687;
      v618 = v682;
      v619 = (v734 | v805) & v726;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v946 = 67109888;
    *&v946[4] = v618;
    *&v946[8] = 1024;
    *&v946[10] = v619;
    *&v946[14] = 1024;
    *&v946[16] = v620;
    *&v946[20] = 1024;
    *v947 = v621;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v614, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2820, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2820", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2820", 0);
    goto LABEL_1175;
  }

  if (v772)
  {
    v1051[0] = -12780;
    v622 = FigCaptureGetFrameworkRadarComponent();
    v1029 = 0;
    v1028 = OS_LOG_TYPE_DEFAULT;
    v623 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v624 = v1029;
    if (os_log_type_enabled(v623, v1028))
    {
      v625 = v624;
    }

    else
    {
      v625 = v624 & 0xFFFFFFFE;
    }

    if (v625)
    {
      *v986 = 136316162;
      *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
      v987 = 1024;
      v626 = v682;
      *v988 = v682;
      *&v988[4] = 1024;
      v627 = (v734 | v805) & v726;
      *&v988[6] = v627;
      v989 = 1024;
      v628 = v687;
      v990 = v687;
      v991 = 1024;
      v629 = v738;
      v992 = v738;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v629 = v738;
      v628 = v687;
      v626 = v682;
      v627 = (v734 | v805) & v726;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    *v946 = 67109888;
    *&v946[4] = v626;
    *&v946[8] = 1024;
    *&v946[10] = v627;
    *&v946[14] = 1024;
    *&v946[16] = v628;
    *&v946[20] = 1024;
    *v947 = v629;
    v634 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v622, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2821, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2821", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2821", 0);
    goto LABEL_1175;
  }

  v808 = output7;
  if (FigCaptureOptimizedBWInferenceScalingPathSupported())
  {
    v435 = objc_alloc_init(BWInferenceProcessingConfiguration);
    [(BWInferenceProcessingConfiguration *)v435 setScalingStrategy:10];
    [(BWInferenceProcessingConfiguration *)v435 setFilterType:2];
  }

  else
  {
    v435 = 0;
  }

  pipelineProcessingContext = [v23 pipelineProcessingContext];
  v437 = pipelineProcessingContext;
  if (v416)
  {
    if (v743 == 10)
    {
      v438 = @"MonaDepth";
    }

    else
    {
      v438 = @"MonocularDepth";
    }
  }

  else
  {
    if ((v698 & !v726 & 1) == 0 && (v743 > 9 || ((1 << v743) & 0x230) == 0))
    {
      goto LABEL_709;
    }

    v438 = @"RGBSegmentation";
  }

  v437 = pesp_appendToName(pipelineProcessingContext, v438);
LABEL_709:
  v439 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v340 + 52) processingConfiguration:v435 name:v437];
  if (v416)
  {
    if (v743 == 10)
    {
      v440 = 2;
    }

    else
    {
      v440 = 1;
    }

    v441 = BWInferenceVersionMakeMajor(v440);
    v442 = [[BWMonocularDepthConfiguration alloc] initWithInferenceType:106 monocularDepthType:2];
    depthDataSourceDimensions2 = [v23 depthDataSourceDimensions];
    v444 = depthDataSourceDimensions2;
    if (v709)
    {
      if (v709 != 6)
      {
        v497 = FigCaptureAspectRatioForDimensions(depthDataSourceDimensions2);
        v498 = BWAspectRatioValueFromAspectRatio(v709);
        if (v497 <= 1.0 || v498 <= 1.0)
        {
          v499 = v498 < 1.0 && v497 < 1.0;
          v500 = __ROR8__(v444, 32);
          if (!v499)
          {
            v444 = v500;
          }
        }
      }
    }

    [(BWMonocularDepthConfiguration *)v442 setDepthDataDimensions:v444];
    if (v776)
    {
      [(BWMonocularDepthConfiguration *)v442 setAppliesFinalCropRect:1];
    }

    [(BWInferenceNode *)v439 addInferenceOfType:106 version:v441 & 0xFFFFFFFFFFFFLL configuration:v442];
    [(BWInferenceNode *)v439 setInferenceTypesToSkipResolver:v1024];
    [(BWInferenceNode *)v439 setIgnoreInvalidContentInformationForPrimaryMedia:v692];
    if (v708)
    {
      v445 = 2;
    }

    else
    {
      v445 = 0;
    }

    [(BWInferenceNode *)v439 setEndOfDataBehavior:v445];
    v340 = v762;
    v350 = v758;
    if (v688)
    {
      [(BWInferenceNode *)v439 setMaxInputDimensions:0xFC000000FC0];
    }
  }

  else if ((v698 & !v726 & 1) != 0 || v743 <= 9 && ((1 << v743) & 0x230) != 0)
  {
    [(BWInferenceNode *)v439 addInferenceOfType:103 version:+[BWRGBPersonSegmentationInferenceConfiguration portraitVersion]& 0xFFFFFFFFFFFFLL];
  }

  if ([(FigCapturePhotonicEngineSinkPipeline *)v340 _addLandmarksInferenceToNode:v439])
  {
    goto LABEL_1022;
  }

  v880.receiver = v340;
  v880.super_class = FigCapturePhotonicEngineSinkPipeline;
  if ((objc_msgSendSuper2(&v880, sel_addNode_error_, v439, &v1050) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v1051[0] = [callbackCopy19 safelyConnectOutput:v808 toInput:-[BWNode input](v439 pipelineStage:{"input"), v799}];
  if (v1051[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  output7 = [(BWNode *)v439 output];
  if (v746)
  {
    v591 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.person-semantics" priority:*(v340 + 48)];
    v592 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:1986618469];
    [(BWNode *)v592 setName:@"Concurrent PersonSemantics / DepthProcessing Fan Out"];
    v879.receiver = v340;
    v879.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v879, sel_addNode_error_, v592, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v592 pipelineStage:{"input"), v728}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output8 = [(NSArray *)[(BWNode *)v592 outputs] objectAtIndexedSubscript:0];
    if (((v682 | v416) & 1) != 0 || v743 <= 9 && ((1 << v743) & 0x230) != 0)
    {
      v594 = [BWAttachedMediaSplitNode alloc];
      v878 = @"PrimaryFormat";
      v595 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:](v594, "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v878 count:1]);
      [(BWNode *)v595 setName:@"Unprocessed DepthData Discarder"];
      v877.receiver = v340;
      v877.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v877, sel_addNode_error_, v595, &v1050) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1051[0] = [callbackCopy19 safelyConnectOutput:output8 toInput:-[BWNode input](v595 pipelineStage:{"input"), v591}];
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      output8 = [(BWNode *)v595 output];
    }

    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v596 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v596 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v596 setFilterType:2];
    }

    else
    {
      v596 = 0;
    }

    if (learnedMattingVersion < 1)
    {
      v598 = 0;
    }

    else
    {
      v598 = [(BWPersonSemanticsConfiguration *)v718 enabledSemantics]& 1;
    }

    v599 = pesp_appendToName([v23 pipelineProcessingContext], @"PersonSemantics");
    v600 = pesp_appendToName(v599, @"Matting");
    v601 = v600;
    if (v598)
    {
      v601 = pesp_appendToName(v600, @"LearnedMatting");
    }

    v602 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v762 + 52) processingConfiguration:v596 name:v601];
    [(BWInferenceNode *)v602 addInferenceOfType:104 version:Major & 0xFFFFFFFFFFFFLL configuration:v718];
    [v23 portraitEffectsMatteMainImageDownscalingFactor];
    if ([(FigCapturePhotonicEngineSinkPipeline *)v762 _addMattingInferenceToNode:v602 mattingVersion:v684 learnedMattingEnabled:v598 learnedMattingVersion:learnedMattingVersion mainImageDownscalingFactor:v776 targetAspectRatio:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics] appliesFinalCropRect:[(BWStillImageNodeConfiguration *)v758 metalCommandQueue] enabledSemantics:v603 metalCommandQueue:v138 mattingSensorConfigurationsByPortType:v717 clientIsCameraOrDerivative:clientIsCameraOrDerivative requiredAdditionalInferenceOutputBuffers:v683])
    {
      goto LABEL_1022;
    }

    [(BWInferenceNode *)v602 setIgnoreInvalidContentInformationForPrimaryMedia:v692];
    [(BWInferenceNode *)v602 setInferenceTypesToSkipResolver:v1024];
    [(BWInferenceNode *)v602 setBackPressureDrivenPipelining:v761 == 2];
    if (v708)
    {
      v604 = 2;
    }

    else
    {
      v604 = 0;
    }

    [(BWInferenceNode *)v602 setEndOfDataBehavior:v604];
    v876.receiver = v762;
    v876.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v876, sel_addNode_error_, v602, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v340 = v762;
    callbackCopy19 = callback;
    v1051[0] = [callback safelyConnectOutput:output8 toInput:-[BWNode input](v602 pipelineStage:{"input"), v591}];
    v416 = v738;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output9 = [(BWNode *)v602 output];
    v782 = 1;
    output7 = [(NSArray *)[(BWNode *)v592 outputs] objectAtIndexedSubscript:1];
    v773 = 1;
    v350 = v758;
  }

  else
  {
    v773 = 0;
    output9 = 0;
    v782 = 1;
  }

  v249 = &classRef_BWDerectificationInferenceProvider;
LABEL_732:
  if (v743 <= 9 && ((1 << v743) & 0x230) != 0)
  {
    depthDataSourceDimensions3 = [v23 depthDataSourceDimensions];
    if ([v717 count] != 1)
    {
      v1051[0] = -12780;
      v635 = FigCaptureGetFrameworkRadarComponent();
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v636 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v637 = v1029;
      if (os_log_type_enabled(v636, v1028))
      {
        v638 = v637;
      }

      else
      {
        v638 = v637 & 0xFFFFFFFE;
      }

      if (v638)
      {
        *v986 = 136315138;
        *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v946 = 0;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v635, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2993, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2993", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2993", 0);
      goto LABEL_1175;
    }

    v809 = output7;
    v447 = [objc_msgSend(v717 "allValues")];
    if (!v447)
    {
      v1051[0] = -12780;
      v639 = FigCaptureGetFrameworkRadarComponent();
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v640 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v641 = v1029;
      if (os_log_type_enabled(v640, v1028))
      {
        v642 = v641;
      }

      else
      {
        v642 = v641 & 0xFFFFFFFE;
      }

      if (v642)
      {
        *v986 = 136315138;
        *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v946 = 0;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v639, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 2996, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:2996", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:2996", 0);
      goto LABEL_1175;
    }

    v448 = v447;
    v449 = [BWStillImageFocusPixelDisparityNode alloc];
    *&v450 = v100;
    v451 = [(BWStillImageFocusPixelDisparityNode *)v449 initWithNodeConfiguration:v350 sensorConfiguration:v448 disparityMapWidth:depthDataSourceDimensions3 disparityMapHeight:depthDataSourceDimensions3 >> 32 depthIsAlwaysHighQuality:clientIsCameraOrDerivative defaultZoomFactor:v450];
    v452 = v249[65];
    v875.receiver = v340;
    v875.super_class = v452;
    if ((objc_msgSendSuper2(&v875, sel_addNode_error_, v451, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v809 toInput:-[BWNode input](v451 pipelineStage:{"input"), v728}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v451 output];
    v416 = v738;
  }

LABEL_739:
  if (v752)
  {
    v453 = v249;
    v454 = +[BWStillImageConditionalRouterInferenceConfiguration inferenceConfiguration];
    v455 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v454];
    [(BWNode *)v455 setName:@"Inference Conditional Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v455 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v455 "outputs")];
    v456 = v453[65];
    v874.receiver = v340;
    v874.super_class = v456;
    if ((objc_msgSendSuper2(&v874, sel_addNode_error_, v455, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v455 pipelineStage:{"input"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v457 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.inference.bravo" priority:*(v340 + 48)];
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v458 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v458 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v458 setFilterType:2];
    }

    else
    {
      v458 = 0;
    }

    if (learnedMattingVersion < 1)
    {
      v472 = 0;
    }

    else
    {
      v472 = [(BWPersonSemanticsConfiguration *)v718 enabledSemantics]& 1;
    }

    pipelineProcessingContext2 = [v23 pipelineProcessingContext];
    v474 = pipelineProcessingContext2;
    if (((portraitEffectsMatteDeliveryEnabled | v782) & 1) == 0)
    {
      v474 = pesp_appendToName(pipelineProcessingContext2, @"Landmarks");
    }

    if (v746)
    {
      v475 = pesp_appendToName(v474, @"PersonSemantics");
      v476 = pesp_appendToName(v475, @"Matting");
      v474 = v476;
      if (v472)
      {
        v474 = pesp_appendToName(v476, @"LearnedMatting");
      }
    }

    v477 = [BWInferenceNode alloc];
    v478 = v474;
    v340 = v762;
    v479 = [(BWInferenceNode *)v477 initWithScheduler:delegate priority:*(v762 + 52) processingConfiguration:v458 name:v478];
    if (((portraitEffectsMatteDeliveryEnabled | v782) & 1) == 0)
    {
      if ([(FigCapturePhotonicEngineSinkPipeline *)v762 _addLandmarksInferenceToNode:v479])
      {
        goto LABEL_1022;
      }

      v782 = 1;
    }

    v416 = v738;
    if (v746)
    {
      [(BWInferenceNode *)v479 addInferenceOfType:104 version:Major & 0xFFFFFFFFFFFFLL configuration:v718];
      [v23 portraitEffectsMatteMainImageDownscalingFactor];
      if ([(FigCapturePhotonicEngineSinkPipeline *)v762 _addMattingInferenceToNode:v479 mattingVersion:v684 learnedMattingEnabled:v472 learnedMattingVersion:learnedMattingVersion mainImageDownscalingFactor:v776 targetAspectRatio:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics] appliesFinalCropRect:[(BWStillImageNodeConfiguration *)v350 metalCommandQueue] enabledSemantics:v597 metalCommandQueue:v138 mattingSensorConfigurationsByPortType:v717 clientIsCameraOrDerivative:clientIsCameraOrDerivative requiredAdditionalInferenceOutputBuffers:v683])
      {
        goto LABEL_1022;
      }

      v773 = 1;
      v350 = v758;
    }

    [(BWInferenceNode *)v479 setInferenceTypesToSkipResolver:v1024];
    [(BWInferenceNode *)v479 setBackPressureDrivenPipelining:v761 == 2];
    if (v708)
    {
      v480 = 2;
    }

    else
    {
      v480 = 0;
    }

    [(BWInferenceNode *)v479 setEndOfDataBehavior:v480];
    v873.receiver = v762;
    v873.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v873, sel_addNode_error_, v479, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callback safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v455 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v454, "inferenceOuputIndex")), -[BWNode input](v479, "input"), v457}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v471 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:1 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
    [(BWNode *)v471 setName:@"Disparity/Inference Sync"];
    [(BWInferenceSynchronizerNode *)v471 setSynchronizesTopLevelAttachments:1];
    [(BWInferenceSynchronizerNode *)v471 setSynchronizeInferencesResolver:v707];
    v872.receiver = v762;
    v872.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v872, sel_addNode_error_, v471, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callback safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v455 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v454, "defaultOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v471, "inputs"), "objectAtIndexedSubscript:", 0), v728}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callback safelyConnectOutput:-[BWNode output](v479 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v471, "inputs"), "objectAtIndexedSubscript:", 1), v728}];
    v214 = v819;
    callbackCopy19 = callback;
    v249 = &classRef_BWDerectificationInferenceProvider;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }
  }

  else
  {
    if (!bravoConstituentPhotoDeliveryEnabled)
    {
      goto LABEL_782;
    }

    v810 = [BWStillImageConditionalRouterUBConfiguration configurationWithPortTypes:v764];
    v459 = v249;
    v460 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v810];
    [(BWNode *)v460 setName:@"UB Router for ConstituentPhoto without Depth"];
    v461 = v459[65];
    v871.receiver = v340;
    v871.super_class = v461;
    if ((objc_msgSendSuper2(&v871, sel_addNode_error_, v460, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v460 pipelineStage:{"input"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v462 = -[BWStillImageMultiCameraDoserNode initWithPortTypes:]([BWStillImageMultiCameraDoserNode alloc], "initWithPortTypes:", [v214 allKeys]);
    v870.receiver = v340;
    v870.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v870, sel_addNode_error_, v462, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v463 = -[BWFunnelNode initWithNumberOfInputs:mediaType:]([BWFunnelNode alloc], "initWithNumberOfInputs:mediaType:", [v764 count], 1986618469);
    v869.receiver = v340;
    v869.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v869, sel_addNode_error_, v463, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v823 = v463;
    [(BWNode *)v463 setName:@"Camera Calibration Data"];
    v868 = 0u;
    v867 = 0u;
    v866 = 0u;
    v865 = 0u;
    v464 = [v764 countByEnumeratingWithState:&v865 objects:v864 count:16];
    if (v464)
    {
      v465 = v464;
      v804 = *v866;
LABEL_751:
      v466 = 0;
      while (1)
      {
        if (*v866 != v804)
        {
          objc_enumerationMutation(v764);
        }

        v467 = *(*(&v865 + 1) + 8 * v466);
        v468 = [(BWStillImageConditionalRouterUBConfiguration *)v810 outputIndexForPortType:v467];
        if (v468 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_1022;
        }

        v470 = v468;
        [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v460 "outputs")];
        v1051[0] = [callback safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v460 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", v470), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v462, "inputs"), "objectAtIndexedSubscript:", v470), v799}];
        if (v1051[0])
        {
          [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
          goto LABEL_964;
        }

        v1051[0] = [callback safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v462 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", v470), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v823, "inputs"), "objectAtIndexedSubscript:", v470), v799}];
        if (v1051[0])
        {
          [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
          goto LABEL_964;
        }

        if (v465 == ++v466)
        {
          v465 = [v764 countByEnumeratingWithState:&v865 objects:v864 count:16];
          if (v465)
          {
            goto LABEL_751;
          }

          break;
        }
      }
    }

    v214 = v819;
    v471 = [[BWStillImageCameraCalibrationDataNode alloc] initWithSensorConfigurationsByPortType:v819];
    [(BWInferenceSynchronizerNode *)v471 setPropagatesDetectedObjects:1];
    -[BWInferenceSynchronizerNode setBaseZoomFactorsByPortType:](v471, "setBaseZoomFactorsByPortType:", [v23 baseZoomFactorsByPortType]);
    [(BWNode *)v471 setName:@"Still Image Camera Calibration Data"];
    v249 = &classRef_BWDerectificationInferenceProvider;
    v340 = v762;
    v863.receiver = v762;
    v863.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v863, sel_addNode_error_, v471, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    callbackCopy19 = callback;
    v1051[0] = [callback safelyConnectOutput:-[BWNode output](v823 toInput:"output") pipelineStage:{-[BWNode input](v471, "input"), v799}];
    v350 = v758;
    v416 = v738;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }
  }

  output7 = [(BWNode *)v471 output];
LABEL_782:
  if ((v734 | v416 | v805))
  {
    if ([v717 count] != 1)
    {
      v1051[0] = -12780;
      v652 = FigCaptureGetFrameworkRadarComponent();
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v653 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v654 = v1029;
      if (os_log_type_enabled(v653, v1028))
      {
        v655 = v654;
      }

      else
      {
        v655 = v654 & 0xFFFFFFFE;
      }

      if (v655)
      {
        *v986 = 136315394;
        *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        v987 = 2112;
        v656 = v717;
        *v988 = v717;
        _os_log_send_and_compose_impl();
      }

      else
      {
        v656 = v717;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v946 = 138412290;
      *&v946[4] = v656;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v652, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 3167, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:3167", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:3167", 0);
      goto LABEL_1175;
    }

    v811 = output7;
    v481 = [objc_msgSend(v717 "allValues")];
    if (!v481)
    {
      v1051[0] = -12780;
      v657 = FigCaptureGetFrameworkRadarComponent();
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v658 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v659 = v1029;
      if (os_log_type_enabled(v658, v1028))
      {
        v660 = v659;
      }

      else
      {
        v660 = v659 & 0xFFFFFFFE;
      }

      if (v660)
      {
        *v986 = 136315138;
        *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v946 = 0;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v657, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 3170, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:3170", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:3170", 0);
      goto LABEL_1175;
    }

    LOBYTE(v664) = v761 == 2;
    v482 = -[BWDepthConverterNode initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:]([BWDepthConverterNode alloc], "initWithStillImageNodeConfiguration:cameraInfoByPortType:sensorIDDictionary:rgbPersonSegmentationEnabled:depthIsAlwaysHighQuality:depthOriginatesFromNeuralNetwork:backPressureDrivenPipelining:", v350, cameraInfoByPortType, [v481 sensorIDDictionary], (v698 & !v726 | v687) & 1, clientIsCameraOrDerivative, v738, v664);
    v483 = v249[65];
    v862.receiver = v340;
    v862.super_class = v483;
    if ((objc_msgSendSuper2(&v862, sel_addNode_error_, v482, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v482 setName:@"Still Image Depth Converter"];
    -[BWDepthConverterNode setHorizontalSensorBinningFactor:](v482, "setHorizontalSensorBinningFactor:", [v23 horizontalSensorBinningFactor]);
    -[BWDepthConverterNode setVerticalSensorBinningFactor:](v482, "setVerticalSensorBinningFactor:", [v23 verticalSensorBinningFactor]);
    v484 = [(BWDepthConverterNode *)v482 setSkipSmartStyleBuffer:v745];
    callbackCopy19 = callback;
    v486 = v728;
    if (v724)
    {
      v487 = 0;
    }

    else
    {
      v487 = FigCaptureFrontDepthDataToRGBRotationAngle(v484, v485);
    }

    [(BWDepthConverterNode *)v482 setStillGDRFilteringSupportEnabled:1];
    [(BWDepthConverterNode *)v482 setOutputFormat:1751411059];
    -[BWDepthConverterNode setOutputDimensions:](v482, "setOutputDimensions:", [v23 depthDataTargetDimensions]);
    [(BWDepthConverterNode *)v482 setBaseRotationDegrees:v487];
    v488 = v799;
    if (v761 == 2)
    {
      v488 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.stillimage.depthConverter" priority:*(v340 + 48)];
    }

    v1051[0] = [callback safelyConnectOutput:v811 toInput:-[BWNode input](v482 pipelineStage:{"input"), v488}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    *(v340 + 88) = v482;
    output7 = [(BWNode *)v482 output];
  }

  else
  {
    v486 = v728;
  }

  if (output9)
  {
    if (v486 == v799)
    {
      v1051[0] = -12780;
      v630 = FigCaptureGetFrameworkRadarComponent();
      v1029 = 0;
      v1028 = OS_LOG_TYPE_DEFAULT;
      v631 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v632 = v1029;
      if (os_log_type_enabled(v631, v1028))
      {
        v633 = v632;
      }

      else
      {
        v633 = v632 & 0xFFFFFFFE;
      }

      if (v633)
      {
        *v986 = 136315138;
        *&v986[4] = "[FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:]";
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      *v946 = 0;
      v634 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(v630, v634, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/CaptureSession/FigCapturePhotonicEngineSinkPipeline.m", 3215, @"LastShownDate:FigCapturePhotonicEngineSinkPipeline.m:3215", @"LastShownBuild:FigCapturePhotonicEngineSinkPipeline.m:3215", 0);
      goto LABEL_1175;
    }

    v489 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
    [(BWNode *)v489 setName:@"DepthData Processing / PersonSemantics"];
    v861[0] = MEMORY[0x1E69E9820];
    v861[1] = 3221225472;
    v861[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_1112;
    v861[3] = &unk_1E7991428;
    v861[4] = v1023;
    v861[5] = v707;
    [(BWInferenceSynchronizerNode *)v489 setSynchronizeInferencesResolver:v861];
    v490 = v249[65];
    v860.receiver = v340;
    v860.super_class = v490;
    if ((objc_msgSendSuper2(&v860, sel_addNode_error_, v489, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v489 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v486}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output9 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v489 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v486}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v489 output];
  }

  if (!v755)
  {
    if (v771)
    {
      v493 = v750 & v697;
    }

    else
    {
      v493 = 0;
    }

    if (v493 != 1)
    {
      v496 = v705;
      goto LABEL_888;
    }

    v494 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
    [(BWNode *)v494 setName:@"Single Camera Depth Funnel"];
    v495 = v249[65];
    v853.receiver = v340;
    v853.super_class = v495;
    v496 = v705;
    if ((objc_msgSendSuper2(&v853, sel_addNode_error_, v494, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v494 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v771 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v494 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    goto LABEL_887;
  }

  if ((v782 & 1) == 0)
  {
    v491 = output7;
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v492 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v492 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v492 setFilterType:2];
    }

    else
    {
      v492 = 0;
    }

    v501 = v719 & (v773 ^ 1);
    v502 = pesp_appendToName([v23 pipelineProcessingContext], @"Landmarks");
    v503 = v502;
    if (v501 == 1)
    {
      v503 = pesp_appendToName(v502, @"PersonSemantics");
    }

    v504 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v340 + 52) processingConfiguration:v492 name:v503];
    if ([(FigCapturePhotonicEngineSinkPipeline *)v340 _addLandmarksInferenceToNode:v504])
    {
      goto LABEL_1022;
    }

    if (v501)
    {
      [(BWInferenceNode *)v504 addInferenceOfType:104 version:Major & 0xFFFFFFFFFFFFLL configuration:v718];
      LOBYTE(v773) = 1;
    }

    [(BWInferenceNode *)v504 setInferenceTypesToSkipResolver:v1024];
    if (v708)
    {
      v505 = 2;
    }

    else
    {
      v505 = 0;
    }

    [(BWInferenceNode *)v504 setEndOfDataBehavior:v505];
    v506 = v249[65];
    v859.receiver = v340;
    v859.super_class = v506;
    if ((objc_msgSendSuper2(&v859, sel_addNode_error_, v504, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v491 toInput:-[BWNode input](v504 pipelineStage:{"input"), v799}];
    v350 = v758;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v504 output];
  }

  if (!v746)
  {
    v515 = +[BWStillImageConditionalRouterPersonSegmentationAndMattingConfiguration personSegmentationAndMattingConfiguration];
    v516 = v249;
    v517 = [[BWStillImageConditionalRouterNode alloc] initWithRoutingConfiguration:v515];
    [(BWNode *)v517 setName:@"Matting Conditional Router"];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v517 "outputs")];
    [-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v517 "outputs")];
    v518 = v516[65];
    v857.receiver = v340;
    v857.super_class = v518;
    if ((objc_msgSendSuper2(&v857, sel_addNode_error_, v517, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v812 = output7;
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v519 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v519 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v519 setFilterType:2];
    }

    else
    {
      v519 = 0;
    }

    if (learnedMattingVersion < 1)
    {
      v520 = 0;
    }

    else
    {
      v520 = [(BWPersonSemanticsConfiguration *)v718 enabledSemantics]& 1;
    }

    pipelineProcessingContext3 = [v23 pipelineProcessingContext];
    if ((v773 & 1) == 0)
    {
      pipelineProcessingContext3 = pesp_appendToName(pipelineProcessingContext3, @"PersonSemantics");
    }

    v522 = pesp_appendToName(pipelineProcessingContext3, @"Matting");
    v523 = v522;
    if (v520)
    {
      v523 = pesp_appendToName(v522, @"LearnedMatting");
    }

    v524 = [[BWInferenceNode alloc] initWithScheduler:delegate priority:*(v762 + 52) processingConfiguration:v519 name:v523];
    v525 = v524;
    if ((v773 & 1) == 0)
    {
      [(BWInferenceNode *)v524 addInferenceOfType:104 version:Major & 0xFFFFFFFFFFFFLL configuration:v718];
    }

    v818 = v515;
    [v23 portraitEffectsMatteMainImageDownscalingFactor];
    if (![(FigCapturePhotonicEngineSinkPipeline *)v762 _addMattingInferenceToNode:v525 mattingVersion:v684 learnedMattingEnabled:v520 learnedMattingVersion:learnedMattingVersion mainImageDownscalingFactor:v776 targetAspectRatio:[(BWPersonSemanticsConfiguration *)v718 enabledSemantics] appliesFinalCropRect:[(BWStillImageNodeConfiguration *)v758 metalCommandQueue] enabledSemantics:v526 metalCommandQueue:v138 mattingSensorConfigurationsByPortType:v717 clientIsCameraOrDerivative:clientIsCameraOrDerivative requiredAdditionalInferenceOutputBuffers:v683])
    {
      [(BWInferenceNode *)v525 setIgnoreInvalidContentInformationForPrimaryMedia:v692];
      [(BWInferenceNode *)v525 setInferenceTypesToSkipResolver:v1024];
      if (v708)
      {
        v527 = 2;
      }

      else
      {
        v527 = 0;
      }

      [(BWInferenceNode *)v525 setEndOfDataBehavior:v527];
      v856.receiver = v762;
      v856.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v856, sel_addNode_error_, v525, &v1050) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      if ((v750 & filterRenderingEnabled | v750 & v697))
      {
        v528 = 3;
      }

      else
      {
        v528 = 2;
      }

      v512 = [[BWFunnelNode alloc] initWithNumberOfInputs:v528 mediaType:1986618469];
      [(BWNode *)v512 setName:@"Matting Funnel"];
      v855.receiver = v762;
      v855.super_class = FigCapturePhotonicEngineSinkPipeline;
      if ((objc_msgSendSuper2(&v855, sel_addNode_error_, v512, &v1050) & 1) == 0)
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      callbackCopy19 = callback;
      v1051[0] = [callback safelyConnectOutput:v812 toInput:-[BWNode input](v517 pipelineStage:{"input"), v799}];
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1051[0] = [callback safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v517 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v818, "defaultOutputIndex")), -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v512, "inputs"), "objectAtIndexedSubscript:", 0), v799}];
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1051[0] = [callback safelyConnectOutput:-[NSArray objectAtIndexedSubscript:](-[BWNode outputs](v517 toInput:"outputs") pipelineStage:{"objectAtIndexedSubscript:", objc_msgSend(v818, "personSegmentationAndMattingOuputIndex")), -[BWNode input](v525, "input"), v799}];
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v1051[0] = [callback safelyConnectOutput:-[BWNode output](v525 toInput:"output") pipelineStage:{-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v512, "inputs"), "objectAtIndexedSubscript:", 1), v799}];
      v350 = v758;
      v249 = &classRef_BWDerectificationInferenceProvider;
      if (v1051[0])
      {
        [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
        goto LABEL_964;
      }

      v214 = v819;
      if (v750 & filterRenderingEnabled)
      {
        v496 = v705;
        v529 = v771;
        if (v771)
        {
          goto LABEL_875;
        }
      }

      else
      {
        v529 = v771;
        if (v771)
        {
          v530 = v750 & v697;
        }

        else
        {
          v530 = 0;
        }

        v496 = v705;
        if (v530)
        {
LABEL_875:
          v1051[0] = [callback safelyConnectOutput:v529 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v512 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 2), v799}];
          v340 = v762;
          if (v1051[0])
          {
            [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
            goto LABEL_964;
          }

          goto LABEL_882;
        }
      }

      v340 = v762;
      goto LABEL_882;
    }

LABEL_1022:
    v1051[0] = -12780;
    goto LABEL_964;
  }

  v507 = v249;
  v508 = output7;
  if ([(FigCaptureCameraParameters *)v820 complementMatteSuppressionDecisionWithISPDetectedFaces])
  {
    v509 = 4;
  }

  else
  {
    v509 = 2;
  }

  v510 = v509 | v716;
  if ([v23 smartStyleReversibilityEnabled])
  {
    v511 = v510 | 8;
  }

  else
  {
    v511 = v510;
  }

  v512 = [[BWMatteMediaSuppressionNode alloc] initWithBehavior:v511];
  [(BWNode *)v512 setName:@"Matting Media Suppression Node"];
  v513 = v507;
  v514 = v507[65];
  v858.receiver = v340;
  v858.super_class = v514;
  if ((objc_msgSendSuper2(&v858, sel_addNode_error_, v512, &v1050) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  callbackCopy19 = callback;
  v1051[0] = [callback safelyConnectOutput:v508 toInput:-[BWNode input](v512 pipelineStage:{"input"), v799}];
  v249 = v513;
  v496 = v705;
  if (v1051[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

LABEL_882:
  output7 = [(BWNode *)v512 output];
  if (v686 && v759 != 1)
  {
    v494 = [[BWMatteMediaScalerNode alloc] initWithBasePoolCapacity:2];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v531 = v249[65];
    v854.receiver = v340;
    v854.super_class = v531;
    if ((objc_msgSendSuper2(&v854, sel_addNode_error_, v494, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    [(BWNode *)v494 setName:@"Portrait Matte Media scaler"];
    [(BWFunnelNode *)v494 setMainImageDownscalingFactorByAttachedMediaKey:dictionary5];
    [(BWFunnelNode *)v494 setPreferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer:1];
    [(BWFunnelNode *)v494 setBackPressureDrivenPipelining:v761 == 2];
    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v494 pipelineStage:{"input"), v799}];
    v496 = v705;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

LABEL_887:
    output7 = [(BWNode *)v494 output];
  }

LABEL_888:
  if (!v750)
  {
    goto LABEL_895;
  }

  if ((v724 & 1) != 0 || v743 <= 9 && ((1 << v743) & 0x230) != 0)
  {
    v532 = output7;
    v533 = [[BWStillImageStandardResolutionAttachmentTransferNode alloc] initWithNodeConfiguration:v350];
    v534 = v249[65];
    v852.receiver = v340;
    v852.super_class = v534;
    if ((objc_msgSendSuper2(&v852, sel_addNode_error_, v533, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v532 toInput:-[BWNode input](v533 pipelineStage:{"input"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

LABEL_894:
    output7 = [(BWNode *)v533 output];
    goto LABEL_895;
  }

  if ((filterRenderingEnabled & 1) == 0)
  {
    v588 = v249;
    v589 = output7;
    v533 = [[BWInferenceSynchronizerNode alloc] initWithIndexOfInputProvidingOutputSampleBuffer:0 indexOfInputProvidingPreferredInferences:1 errorHandlingModel:0];
    [(BWNode *)v533 setName:@"24MP/12MP Inference Synchronizer"];
    -[BWStillImageStandardResolutionAttachmentTransferNode setAttachedMediaKeysToSkip:](v533, "setAttachedMediaKeysToSkip:", [MEMORY[0x1E695DFD8] setWithObject:0x1F217BF50]);
    [(BWStillImageStandardResolutionAttachmentTransferNode *)v533 setAllowOutOfOrderInputs:1];
    v851[0] = MEMORY[0x1E69E9820];
    v851[1] = 3221225472;
    v851[2] = __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_2_1147;
    v851[3] = &unk_1E79913E0;
    v851[4] = v707;
    [(BWStillImageStandardResolutionAttachmentTransferNode *)v533 setSynchronizeInferencesResolver:v851];
    v590 = v588[65];
    v850.receiver = v340;
    v850.super_class = v590;
    if ((objc_msgSendSuper2(&v850, sel_addNode_error_, v533, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callback safelyConnectOutput:v771 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v533 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v728}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callback safelyConnectOutput:v589 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v533 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v728}];
    v249 = v588;
    callbackCopy19 = callback;
    v496 = v705;
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    goto LABEL_894;
  }

LABEL_895:
  if (v745)
  {
    v535 = [[BWStillImageSmartStyleAttachmentTransferNode alloc] initWithNodeConfiguration:v350];
    v536 = v249[65];
    v849.receiver = v340;
    v849.super_class = v536;
    if ((objc_msgSendSuper2(&v849, sel_addNode_error_, v535, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v535 pipelineStage:{"input"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v535 output];
  }

  if (v496)
  {
    v537 = [BWStillImagePortraitMetadataNode alloc];
    *&v538 = v100;
    v539 = [(BWStillImagePortraitMetadataNode *)v537 initWithNodeConfiguration:v350 sdofRenderingVersion:v496 sensorConfigurationsByPortType:v717 defaultPortType:v696 defaultZoomFactor:v538];
    v540 = v249[65];
    v848.receiver = v340;
    v848.super_class = v540;
    if ((objc_msgSendSuper2(&v848, sel_addNode_error_, v539, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v539 pipelineStage:{"input"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v539 output];
  }

  if (filterRenderingEnabled)
  {
    v541 = [BWStillImageFilterNode alloc];
    LOBYTE(v667) = v761 == 2;
    LODWORD(v664) = v694;
    *&v542 = v138;
    *&v543 = v100;
    v544 = [(BWStillImageFilterNode *)v541 initWithNodeConfiguration:v350 sensorConfigurationsByPortType:v717 statusDelegate:objb depthDataDeliveryEnabled:v763 personSegmentationEnabled:portraitEffectsMatteDeliveryEnabled refinedDepthEnabled:0 portraitRenderQuality:v542 targetAspectRatio:v543 defaultPortType:v664 defaultZoomFactor:v696 backPressureDrivenPipelining:v667];
    -[BWStillImageFilterNode setSmartStyleRenderingVersion:](v544, "setSmartStyleRenderingVersion:", [v23 smartStyleRenderingVersion]);
    v545 = v249[65];
    v847.receiver = v340;
    v847.super_class = v545;
    if ((objc_msgSendSuper2(&v847, sel_addNode_error_, v544, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v544 pipelineStage:{"input"), v728}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v544 output];
  }

  if (v761 == 1)
  {
    v546 = [[BWStillImageTurnstileNode alloc] initWithStillImageCoordinator:*(v340 + 56)];
    v547 = v249[65];
    v846.receiver = v340;
    v846.super_class = v547;
    v548 = v715;
    if ((objc_msgSendSuper2(&v846, sel_addNode_error_, v546, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[BWNode input](v546 pipelineStage:{"input"), v799}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v546 output];
  }

  else
  {
    v548 = v715;
  }

  LODWORD(v549) = [v23 deviceHasFlash];
  gainMapVersion = [(FigCaptureCameraParameters *)v820 gainMapVersion];
  v551 = v741 != 0;
  if (v759 == 1)
  {
    v549 = 1;
  }

  else
  {
    v549 = v549;
  }

  if (v759 == 1)
  {
    v551 = 1;
  }

  v552 = gainMapVersion < 0x20000 && v551;
  v553 = (gainMapVersion & 0xFFFE0000) != 0 && v551;
  if (v794)
  {
    v824 = v549;
    v554 = [[BWFunnelNode alloc] initWithNumberOfInputs:2 mediaType:1986618469];
    [(BWNode *)v554 setName:@"Stereo Photo Funnel"];
    v845.receiver = v340;
    v845.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v845, sel_addNode_error_, v554, &v1050) & 1) == 0)
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v554 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 0), v548}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    v1051[0] = [callbackCopy19 safelyConnectOutput:v794 toInput:-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v554 pipelineStage:{"inputs"), "objectAtIndexedSubscript:", 1), v548}];
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    output7 = [(BWNode *)v554 output];
    v549 = v824;
    v340 = v762;
  }

  v844 = 0;
  v843 = 0;
  v842 = 0;
  v1051[0] = [FigCapturePhotonicEngineSinkPipeline _buildScaleAndEncodeSubPipelineWithPipelineStage:v340 graph:v548 nodeConfiguration:callbackCopy19 stillImageSinkPipelineWithConfiguration:v758 sensorConfigurationsByPortType:v23 supportsScaling:v214 deferredPearlDepthProcessingEnabled:(v776 ^ 1) provideMeteorHeadroom:v805 provideFlexGTC:v552 providePostEncodeInferences:v553 semanticDevelopmentVersion:captureTimePhotosCurationSupported constituentPhotoDeliveryEnabled:semanticDevelopmentVersion demosaicedRawEnabled:bravoConstituentPhotoDeliveryEnabled nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:dictionary4 propagatedMainImageDownscalingFactorByAttachedMediaKey:dictionary5 scalingMainImageDownscalingFactorByAttachedMediaKey:v766 inferenceScheduler:delegate subPipelineInputOut:&v844 subPipelineOutputOut:&v843 cameraSupportsFlash:v549 cinematicFramingStatesProvider:scheduler smartCropHomographyProvider:provider multiCamClientCompositingCallback:homographyProvider photoEncoderControllerOut:&v842];
  if (v1051[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v555 = v842;
  if (objb && v842)
  {
    [(BWPhotonicEngineNode *)objb sharePhotoEncoderControllerForPiecemealEncoding:v842];
    v555 = v842;
  }

  if (v769 && v555)
  {
    [(BWPiecemealEncodingNode *)v769 sharePhotoEncoderControllerForPiecemealEncoding:?];
  }

  v1051[0] = [callbackCopy19 safelyConnectOutput:output7 toInput:v844 pipelineStage:v548];
  if (v1051[0])
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  v556 = v843;
  if ([v744 optimizesImagesForOfflineVideoStabilization])
  {
    v557 = v549;
    dictionary8 = [MEMORY[0x1E695DF90] dictionary];
    v838 = 0u;
    v839 = 0u;
    v840 = 0u;
    v841 = 0u;
    v559 = [v214 countByEnumeratingWithState:&v838 objects:v837 count:16];
    if (v559)
    {
      v560 = v559;
      v561 = *v839;
      do
      {
        for (i7 = 0; i7 != v560; ++i7)
        {
          if (*v839 != v561)
          {
            objc_enumerationMutation(v214);
          }

          [dictionary8 setObject:objc_msgSend(objc_msgSend(v214 forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v838 + 1) + 8 * i7)), "sensorIDDictionary"), *(*(&v838 + 1) + 8 * i7)}];
        }

        v560 = [v214 countByEnumeratingWithState:&v838 objects:v837 count:16];
      }

      while (v560);
    }

    horizontalSensorBinningFactor = [v23 horizontalSensorBinningFactor];
    verticalSensorBinningFactor = [v23 verticalSensorBinningFactor];
    [v23 maxSupportedFrameRate];
    v340 = v762;
    v556 = FigCaptureBuildMotionAttachmentsNode(v762, v556, horizontalSensorBinningFactor, verticalSensorBinningFactor, v799, [v23 motionAttachmentsSource], dictionary8, objc_msgSend(v23, "cameraInfoByPortType"), v565, v693, 0, 0, 1, 1, 0, v1051);
    if (v1051[0])
    {
      [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
      goto LABEL_964;
    }

    callbackCopy19 = callback;
    v549 = v557;
  }

  if (*(v340 + 104) != 1)
  {
    goto LABEL_949;
  }

  v566 = -[BWStillImageSampleBufferSinkNode initWithSinkID:]([BWStillImageSampleBufferSinkNode alloc], "initWithSinkID:", [v340 sinkID]);
  [(BWNode *)v566 setName:@"Still Image Sink"];
  -[BWStillImageSampleBufferSinkNode setPropagatedAttachedMediaKeys:](v566, "setPropagatedAttachedMediaKeys:", [dictionary5 allKeys]);
  [(BWStillImageSampleBufferSinkNode *)v566 setCameraSupportsFlash:v549];
  v836.receiver = v340;
  v836.super_class = FigCapturePhotonicEngineSinkPipeline;
  if ((objc_msgSendSuper2(&v836, sel_addNode_error_, v566, &v1050) & 1) == 0)
  {
    [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
    goto LABEL_964;
  }

  *(v340 + 72) = v566;
  v1051[0] = [callbackCopy19 safelyConnectOutput:v556 toInput:-[BWNode input](v566 pipelineStage:{"input"), v548}];
  if (!v1051[0])
  {
LABEL_949:
    v835 = 0u;
    v834 = 0u;
    v833 = 0u;
    v832 = 0u;
    nodes = [v340 nodes];
    v568 = [nodes countByEnumeratingWithState:&v832 objects:v831 count:16];
    if (v568)
    {
      v569 = v568;
      v570 = *v833;
      do
      {
        for (i8 = 0; i8 != v569; ++i8)
        {
          if (*v833 != v570)
          {
            objc_enumerationMutation(nodes);
          }

          v572 = *(*(&v832 + 1) + 8 * i8);
          [v572 setDeferredPreparePriority:1];
          v830 = 0u;
          v829 = 0u;
          v828 = 0u;
          v827 = 0u;
          inputs = [v572 inputs];
          v574 = [inputs countByEnumeratingWithState:&v827 objects:v826 count:16];
          if (v574)
          {
            v575 = v574;
            v576 = *v828;
            do
            {
              for (i9 = 0; i9 != v575; ++i9)
              {
                if (*v828 != v576)
                {
                  objc_enumerationMutation(inputs);
                }

                [objc_msgSend(*(*(&v827 + 1) + 8 * i9) "connection")];
              }

              v575 = [inputs countByEnumeratingWithState:&v827 objects:v826 count:16];
            }

            while (v575);
          }
        }

        v569 = [nodes countByEnumeratingWithState:&v832 objects:v831 count:16];
      }

      while (v569);
    }

    [*(v762 + 56) setDeferredPreparePriority:4];
    goto LABEL_964;
  }

  [FigCapturePhotonicEngineSinkPipeline _buildStillImageSinkPipelineWithConfiguration:captureDevice:sourceOutputsByPortType:sourceSensorRawOutputsByPortType:highResStillImageDimensions:supplementalPointCloudCaptureDevice:supplementalPointCloudSourceOutput:captureStatusDelegate:inferenceScheduler:cinematicFramingStatesProvider:smartCropHomographyProvider:multiCamClientCompositingCallback:graph:];
LABEL_964:
  result = v1051[0];
  if (!v1051[0])
  {
    if (v1050)
    {
      return [v1050 code];
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCapturePhotonicEngineSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

void *__396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_2(uint64_t a1, CMAttachmentBearerRef target)
{
  v4 = CMGetAttachment(target, @"StillSettings", 0);
  v5 = BWStillImageProcessingFlagsForSampleBuffer(target);
  v6 = BWCIFilterArrayContainsPortraitFilters([objc_msgSend(v4 "requestedSettings")]);
  v7 = ([objc_msgSend(v4 "requestedSettings")] & 1) != 0 || objc_msgSend(objc_msgSend(objc_msgSend(v4, "requestedSettings"), "enabledSemanticSegmentationMatteURNs"), "count") != 0;
  v8 = (v5 & 0x1000) == 0;
  v9 = v5 & 0x200000;
  v10 = v8 | v6;
  v11 = (([objc_msgSend(v4 "captureSettings")] & 0x800) == 0) | v10 ^ 1 | (v9 >> 21);
  if (v7 && (v10 & 1) != 0 && !v9)
  {
    if ((v11 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (*(a1 + 32))
  {
    v13 = &unk_1F2248430;
  }

  else
  {
    v13 = &unk_1F2248448;
  }

  v14 = [MEMORY[0x1E695DFA8] setWithArray:v13];
  v12 = v14;
  if (v11)
  {
    if (v14)
    {
LABEL_15:
      [v12 addObject:&unk_1F2243510];
      return v12;
    }

LABEL_14:
    v12 = [MEMORY[0x1E695DFA8] set];
    goto LABEL_15;
  }

  return v12;
}

BOOL __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_953(int a1, CMAttachmentBearerRef target)
{
  v2 = CMGetAttachment(target, @"StillSettings", 0);
  if (([objc_msgSend(v2 "captureSettings")] & 0x800) == 0)
  {
    return 0;
  }

  if ([objc_msgSend(v2 "captureSettings")] != 1 || (objc_msgSend(objc_msgSend(v2, "captureSettings"), "captureFlags") & 0x80) != 0)
  {
    return [objc_msgSend(v2 "captureSettings")] == 7;
  }

  return 1;
}

uint64_t __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_1112(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  if (result)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v3 + 16);

      return v4();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t __396__FigCapturePhotonicEngineSinkPipeline__buildStillImageSinkPipelineWithConfiguration_captureDevice_sourceOutputsByPortType_sourceSensorRawOutputsByPortType_highResStillImageDimensions_supplementalPointCloudCaptureDevice_supplementalPointCloudSourceOutput_captureStatusDelegate_inferenceScheduler_cinematicFramingStatesProvider_smartCropHomographyProvider_multiCamClientCompositingCallback_graph___block_invoke_2_1147(uint64_t a1, CMAttachmentBearerRef target)
{
  v3 = [objc_msgSend(CMGetAttachment(target @"StillSettings"];
  v4 = *(a1 + 32);
  if (!v4)
  {
    return (v3 >> 11) & 1;
  }

  if ((v3 & 0x800) == 0)
  {
    return 0;
  }

  v6 = *(v4 + 16);

  return v6();
}

- (void)connectToSecondaryMultiCameraClientCompositingPipeline:(id)pipeline
{
  if (pipeline)
  {
    v3 = *(pipeline + 15);
    if (v3)
    {
      multiCamClientCompositingNode = self->_multiCamClientCompositingNode;
      if (multiCamClientCompositingNode)
      {
        graph = [(BWNode *)multiCamClientCompositingNode graph];
        v7 = [(NSArray *)[(BWNode *)self->_multiCamClientCompositingNode inputs] objectAtIndexedSubscript:1];
        pipelineStage = [(BWNodeConnection *)[(BWNodeInput *)[(BWNode *)self->_multiCamClientCompositingNode input] connection] pipelineStage];

        [(BWGraph *)graph safelyConnectOutput:v3 toInput:v7 pipelineStage:pipelineStage];
      }
    }
  }
}

- (uint64_t)_addScalerNodeWithNodeConfiguration:(int)configuration intermediate:(uint64_t)intermediate bravoConstituentPhotoDeliveryEnabled:(uint64_t)enabled mainImageDownscalingFactorByAttachedMediaKey:(int)key zoomingDepthSupported:(int)supported smartStyleReversibilityEnabled:(uint64_t)reversibilityEnabled constantColorConfidenceMapDimensions:(unsigned __int8)dimensions filterRenderingEnabled:(unsigned __int8)self0 enforcesZoomingForPortraitCaptures:(unsigned __int8)self1 backPressureDrivenPipelining:(void *)self2 scalerNodeInputOut:(BWNodeOutput *)self3 scalerNodeOutputOut:
{
  if (result)
  {
    v20 = result;
    v42 = 0;
    optimizedEnhancedResolutionDepthPipelineEnabled = [a2 deferredPhotoProcessorEnabled] & key;
    if (optimizedEnhancedResolutionDepthPipelineEnabled == 1 && (dimensions & 1) == 0)
    {
      optimizedEnhancedResolutionDepthPipelineEnabled = [a2 optimizedEnhancedResolutionDepthPipelineEnabled];
    }

    if (optimizedEnhancedResolutionDepthPipelineEnabled)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v23 = v22 + (key & ~configuration & dimensions);
    if ([a2 deferredPhotoProcessorEnabled])
    {
      v23 = (v23 << ([a2 pearlModuleType] != 0));
    }

    v24 = [[BWStillImageScalerNode alloc] initWithBasePoolCapacity:v23 nodeConfiguration:a2];
    v25 = v24;
    if (configuration)
    {
      v26 = @"Intermediate Scaler";
    }

    else
    {
      v26 = @"Scaler";
    }

    [(BWNode *)v24 setName:v26];
    [(BWStillImageScalerNode *)v25 setBlackFillingRequired:intermediate];
    [(BWStillImageScalerNode *)v25 setMainImageDownscalingFactorByAttachedMediaKey:enabled];
    [(BWStillImageScalerNode *)v25 setPreferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer:1];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v28 = MEMORY[0x1E695E118];
    if (key)
    {
      v40 = 0x1F2173130;
      v41 = MEMORY[0x1E695E118];
      [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v41, &v40, 1), @"Depth"}];
    }

    if (supported)
    {
      v38 = 0x1F2173130;
      v39 = v28;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v39, &v38, 1), 0x1F21AAF70}];
      v36 = @"KeepInputSize";
      v37 = v28;
      [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", &v37, &v36, 1), 0x1F21AAFB0}];
      v43.width = 160.0;
      v43.height = 162.0;
      [dictionary setObject:CGSizeCreateDictionaryRepresentation(v43) forKeyedSubscript:0x1F21AAFF0];
      v44.width = 32.0;
      v44.height = 32.0;
      v29 = CGSizeCreateDictionaryRepresentation(v44);
      [dictionary setObject:v29 forKeyedSubscript:0x1F21AB010];
      [dictionary setObject:v29 forKeyedSubscript:0x1F21AB030];
    }

    if (reversibilityEnabled >= 1 && SHIDWORD(reversibilityEnabled) >= 1)
    {
      v45.width = reversibilityEnabled;
      v45.height = HIDWORD(reversibilityEnabled);
      [dictionary setObject:CGSizeCreateDictionaryRepresentation(v45) forKeyedSubscript:0x1F21AB170];
    }

    if ([dictionary count])
    {
      [(BWStillImageScalerNode *)v25 setOutputSizeByAttachedMediaKey:dictionary];
    }

    [(BWStillImageScalerNode *)v25 setEnforcesZoomingForPortraitCaptures:renderingEnabled];
    [(BWStillImageScalerNode *)v25 setBackPressureDrivenPipelining:captures];
    v35.receiver = v20;
    v35.super_class = FigCapturePhotonicEngineSinkPipeline;
    if (objc_msgSendSuper2(&v35, sel_addNode_error_, v25, &v42))
    {
      if (pipelining)
      {
        *pipelining = [(BWNode *)v25 input];
      }

      if (out)
      {
        output = [(BWNode *)v25 output];
        result = 0;
        *out = output;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, v33, v34, v35.receiver, LODWORD(v35.super_class), v36, v37, v38);
      return 4294954510;
    }
  }

  return result;
}

- (void)_addLandmarksInferenceToNode:(void *)result
{
  if (result)
  {
    v3 = +[BWLandmarksInferenceConfiguration configuration];
    [v3 setMaximumNumberOfFaces:{+[BWLandmarksInferenceConfiguration portraitMaximumNumberOfFaces](BWLandmarksInferenceConfiguration, "portraitMaximumNumberOfFaces")}];
    v4 = [a2 addInferenceOfType:801 version:objc_msgSend(v3 configuration:{"landmarksInferenceVersion") & 0xFFFFFFFFFFFFLL, v3}];
    [a2 setIgnoreInvalidContentInformationForPrimaryMedia:1];
    return v4;
  }

  return result;
}

- (uint64_t)_addMattingInferenceToNode:(uint64_t)node mattingVersion:(int)version learnedMattingEnabled:(uint64_t)enabled learnedMattingVersion:(uint64_t)mattingVersion mainImageDownscalingFactor:(unsigned int)factor targetAspectRatio:(uint64_t)ratio appliesFinalCropRect:(float)rect enabledSemantics:(float)self0 metalCommandQueue:(uint64_t)self1 mattingSensorConfigurationsByPortType:(char)self2 clientIsCameraOrDerivative:(unsigned int)self3 requiredAdditionalInferenceOutputBuffers:
{
  if (!self)
  {
    return 0;
  }

  if (node == 1)
  {
    FigCaptureGetFrameworkRadarComponent();
    v31 = OUTLINED_FUNCTION_3_33();
    if (OUTLINED_FUNCTION_11_20(v31))
    {
      v38 = v13;
    }

    else
    {
      v38 = v13 & 0xFFFFFFFE;
    }

    if (v38)
    {
      LODWORD(v84) = 136315138;
      OUTLINED_FUNCTION_5_6();
      v38 = OUTLINED_FUNCTION_6_28(v39, v40, v41, v42, &dword_1AC90E000, v43, v44, "<<<< FigCapturePhotonicEngineSinkPipeline >>>> %s: Photonic Engine sink pipeline doesn't support Matting version 1", v82);
      v45 = v38;
    }

    else
    {
      v45 = 0;
    }

    OUTLINED_FUNCTION_2_43(v38, v32, v33, v45, v34, v35, v36, v37, v82, v83, v84, v85, v86);
    OUTLINED_FUNCTION_9_17();
    v68 = OUTLINED_FUNCTION_6_0(v77, v78, v79, v80, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    v69 = OUTLINED_FUNCTION_8_9();
    v76 = 4176;
    goto LABEL_30;
  }

  if (!node)
  {
    FigCaptureGetFrameworkRadarComponent();
    v16 = OUTLINED_FUNCTION_3_33();
    if (OUTLINED_FUNCTION_11_20(v16))
    {
      v23 = v13;
    }

    else
    {
      v23 = v13 & 0xFFFFFFFE;
    }

    if (v23)
    {
      LODWORD(v84) = 136315138;
      OUTLINED_FUNCTION_5_6();
      v23 = OUTLINED_FUNCTION_6_28(v24, v25, v26, v27, &dword_1AC90E000, v28, v29, "<<<< FigCapturePhotonicEngineSinkPipeline >>>> %s: Matting was requested but version is 0", v82);
      v30 = v23;
    }

    else
    {
      v30 = 0;
    }

    OUTLINED_FUNCTION_2_43(v23, v17, v18, v30, v19, v20, v21, v22, v82, v83, v84, v85, v86);
    OUTLINED_FUNCTION_9_17();
    v68 = OUTLINED_FUNCTION_6_0(v64, v65, v66, v67, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    v69 = OUTLINED_FUNCTION_8_9();
    v76 = 4170;
LABEL_30:
    FigCapturePleaseFileRadar(v69, v70, v71, v72, v73, v76, v74, v75, 0);
    free(v68);
    v60 = 4294935514;
    goto LABEL_31;
  }

  if (factor)
  {
    versionCopy = version;
  }

  else
  {
    versionCopy = 1;
  }

  if (versionCopy)
  {
    v52 = 0;
  }

  else
  {
    v52 = 2;
  }

  v53 = factor & 0x78 | (4 * ((factor >> 1) & 1)) | v52;
  if (v53)
  {
    v56 = [(BWInferenceConfiguration *)[BWMattingV2InferenceConfiguration alloc] initWithInferenceType:201];
    [(BWMattingV2InferenceConfiguration *)v56 setSensorConfigurationsByPortType:queue];
    [(BWMattingV2InferenceConfiguration *)v56 setEnabledMattes:v53];
    [(BWMattingV2InferenceConfiguration *)v56 setTuningConfiguration:2];
    [(BWInferenceConfiguration *)v56 setPriority:*(self + 52)];
    *&v57 = rect;
    [(BWMattingV2InferenceConfiguration *)v56 setMainImageDownscalingFactor:v57];
    *&v58 = semantics;
    [(BWMattingV2InferenceConfiguration *)v56 setTargetAspectRatio:v58];
    [(BWMattingV2InferenceConfiguration *)v56 setAppliesFinalCropRect:mattingVersion];
    [(BWMattingV2InferenceConfiguration *)v56 setMetalCommandQueue:ratio];
    v59 = [a2 addInferenceOfType:201 version:BWInferenceVersionMakeMajor(node) & 0xFFFFFFFFFFFFLL configuration:v56];
    if (v59)
    {
      return v59;
    }
  }

  if (version)
  {
    v61 = [(BWInferenceConfiguration *)[BWLearnedMattingInferenceConfiguration alloc] initWithInferenceType:107];
    [(BWTiledEspressoInferenceConfiguration *)v61 setMetalCommandQueue:0];
    *&v62 = rect;
    [(BWLearnedMattingInferenceConfiguration *)v61 setMainImageDownscalingFactor:v62];
    *&v63 = semantics;
    [(BWLearnedMattingInferenceConfiguration *)v61 setTargetAspectRatio:v63];
    [(BWLearnedMattingInferenceConfiguration *)v61 setAppliesFinalCropRect:mattingVersion];
    v60 = [a2 addInferenceOfType:107 version:BWInferenceVersionMakeMajor(enabled) & 0xFFFFFFFFFFFFLL configuration:v61];
    if (v60)
    {
      return v60;
    }
  }

  else
  {
    v60 = 0;
  }

LABEL_31:
  if ((type & 1) == 0)
  {
    [a2 setAwaitAsynchronousOutputs:1];
  }

  if (derivative)
  {
    [a2 setAdditionalOutputPoolRetainedBufferCount:derivative];
  }

  return v60;
}

- (uint64_t)_buildScaleAndEncodeSubPipelineWithPipelineStage:(uint64_t)stage graph:(uint64_t)graph nodeConfiguration:(void *)configuration stillImageSinkPipelineWithConfiguration:(void *)withConfiguration sensorConfigurationsByPortType:(void *)type supportsScaling:(uint64_t)scaling deferredPearlDepthProcessingEnabled:(void *)enabled provideMeteorHeadroom:(void *)headroom provideFlexGTC:(char)c providePostEncodeInferences:(char)stage0 semanticDevelopmentVersion:(char)stage1 constituentPhotoDeliveryEnabled:(int)stage2 demosaicedRawEnabled:(unsigned __int8)stage3 nonPropagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)stage4 propagatedMainImageDownscalingFactorByAttachedMediaKey:(void *)stage5 scalingMainImageDownscalingFactorByAttachedMediaKey:(uint64_t)stage6 inferenceScheduler:(uint64_t)stage7 subPipelineInputOut:(uint64_t)stage8 subPipelineOutputOut:(BWNodeOutput *)stage9 cameraSupportsFlash:(unsigned __int8)graph0 cinematicFramingStatesProvider:(void *)graph1 smartCropHomographyProvider:(void *)graph2 multiCamClientCompositingCallback:(uint64_t)graph3 photoEncoderControllerOut:(void *)graph4
{
  withConfigurationCopy = withConfiguration;
  configurationCopy = configuration;
  graphCopy = graph;
  if (!stage)
  {
    return 0;
  }

  v217[0] = 0;
  if (!out)
  {
    v132 = qword_1EB58E2B8;
    v133 = v24;
    v134 = 3758;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, 0xFFFFCE14, "<<<< FigCapturePhotonicEngineSinkPipeline >>>>", v134, v133, enabled, headroom, v135);
  }

  if (!outputOut)
  {
    v132 = qword_1EB58E2B8;
    v133 = v24;
    v134 = 3759;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v132, 0xFFFFCE14, "<<<< FigCapturePhotonicEngineSinkPipeline >>>>", v134, v133, enabled, headroom, v135);
  }

  headroomCopy = headroom;
  stageCopy = stage;
  LODWORD(v152) = enabled;
  outputOutCopy = outputOut;
  [type sinkConfiguration];
  objc_opt_class();
  outCopy = out;
  if (objc_opt_isKindOfClass())
  {
    sinkConfiguration = [type sinkConfiguration];
  }

  else
  {
    sinkConfiguration = 0;
  }

  v29 = &selRef__waitForPreviewGenerationGroupToComplete;
  LODWORD(v144) = headroomCopy;
  if ([type cinematicFramingWarpingRequired])
  {
    v30 = stageCopy;
    v31 = [BWCinematicFramingWarpingNode alloc];
    cinematicFramingWarpingOutputDimensions = [type cinematicFramingWarpingOutputDimensions];
    maxLossyCompressionLevel = [type maxLossyCompressionLevel];
    v34 = v31;
    stageCopy = v30;
    v35 = [(BWCinematicFramingWarpingNode *)v34 initWithFramingStatesProvider:provider outputDimensions:cinematicFramingWarpingOutputDimensions maxLossyCompressionLevel:maxLossyCompressionLevel];
    [v35 setName:@"CinematicFramingWarper"];
    v216.receiver = v30;
    v216.super_class = FigCapturePhotonicEngineSinkPipeline;
    if (!objc_msgSendSuper2(&v216, sel_addNode_error_, v35, v217))
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    input = [v35 input];
    output = [v35 output];
  }

  else
  {
    output = 0;
    input = 0;
  }

  typeCopy = type;
  v150 = v24;
  if ([type smartCropWarpingRequired])
  {
    scalingCopy = scaling;
    v38 = -[BWSmartCropWarpingNode initWithHomographyProvider:aspectRatio:formatDimensions:maxLossyCompressionLevel:]([BWSmartCropWarpingNode alloc], homographyProvider, [type aspectRatio], objc_msgSend(type, "smartCropWarpingOutputDimensions"), objc_msgSend(type, "maxLossyCompressionLevel"));
    [v38 setName:@"SmartCrop Warper"];
    v215.receiver = stageCopy;
    v215.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v215, sel_addNode_error_, v38, v217) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    if (output)
    {
      input2 = [v38 input];
      v47 = OUTLINED_FUNCTION_4_33(input2, v40, v41, v42, v43, v44, v45, v46, v135, v137, v139, scalingCopy, v144, outputOut, sinkConfiguration, v24, v152, out, withConfigurationCopy, configurationCopy, graphCopy);
      if (v47)
      {
        v129 = v47;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        return v129;
      }
    }

    if (!input)
    {
      input = [v38 input];
    }

    output = [v38 output];

    *(stageCopy + 128) = v38;
    scaling = scalingCopy;
  }

  if (v152)
  {
    v213 = 0;
    v214 = 0;
    v131 = -[FigCapturePhotonicEngineSinkPipeline _addScalerNodeWithNodeConfiguration:intermediate:bravoConstituentPhotoDeliveryEnabled:mainImageDownscalingFactorByAttachedMediaKey:zoomingDepthSupported:smartStyleReversibilityEnabled:constantColorConfidenceMapDimensions:filterRenderingEnabled:enforcesZoomingForPortraitCaptures:backPressureDrivenPipelining:scalerNodeInputOut:scalerNodeOutputOut:](stageCopy, withConfigurationCopy, 0, rawEnabled, attachedMediaKey, [type continuousZoomWithDepthSupported] | v144, objc_msgSend(type, "smartStyleReversibilityEnabled"), objc_msgSend(type, "constantColorConfidenceMapDimensions"), objc_msgSend(sinkConfiguration, "filterRenderingEnabled"), 0, 0, &v214, &v213);
    if (v131 || output && (v131 = [configurationCopy safelyConnectOutput:output toInput:v214 pipelineStage:graphCopy], v131))
    {
      v129 = v131;
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return v129;
    }

    output = v213;
    if (!input)
    {
      input = v214;
    }

    v29 = &selRef__waitForPreviewGenerationGroupToComplete;
  }

  if (c)
  {
    v48 = [[BWMeteorHeadroomNode alloc] initWithNodeConfiguration:withConfigurationCopy sensorConfigurationsByPortType:scaling];
    [(BWNode *)v48 setName:@"Meteor Headroom"];
    -[BWMeteorHeadroomNode setHeadroomProcessingType:](v48, "setHeadroomProcessingType:", [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters meteorHeadroomProcessingType]);
    [type gainMapMainImageDownscalingFactor];
    [(BWMeteorHeadroomNode *)v48 setGainMapMainImageDownscalingFactor:?];
    v212.receiver = stageCopy;
    v212.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v212, v29[148], v48, v217) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    if (output)
    {
      input3 = [(BWNode *)v48 input];
      v57 = OUTLINED_FUNCTION_4_33(input3, v50, v51, v52, v53, v54, v55, v56, v135, v137, v139, scalingCopy, v144, outputOutCopy, sinkConfiguration, v150, v152, outCopy, withConfigurationCopy, configurationCopy, graphCopy);
      if (v57)
      {
        v129 = v57;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        return v129;
      }
    }

    if (!input)
    {
      input = [(BWNode *)v48 input];
    }

    output = [(BWNode *)v48 output];
  }

  if (inferences)
  {
    v58 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
    if (![type stillImageSinkPipelineProcessingMode])
    {
      [type pipelineStagePriority];
      v59 = FigDispatchQueueCreateWithPriority();
      [v58 setSubmissionQueue:v59];
      [v58 setCompletionQueue:v59];
    }

    v60 = [[BWFlexGTCNode alloc] initWithNodeConfiguration:withConfigurationCopy sensorConfigurationsByPortType:scaling metalCommandQueue:v58];
    [(BWNode *)v60 setName:@"FlexGTC"];
    v211.receiver = stageCopy;
    v211.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v211, v29[148], v60, v217) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    if (output)
    {
      input4 = [(BWNode *)v60 input];
      v69 = OUTLINED_FUNCTION_4_33(input4, v62, v63, v64, v65, v66, v67, v68, v135, v137, v139, scalingCopy, v144, outputOutCopy, sinkConfiguration, v150, v152, outCopy, withConfigurationCopy, configurationCopy, graphCopy);
      if (v69)
      {
        v129 = v69;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        return v129;
      }
    }

    if (!input)
    {
      input = [(BWNode *)v60 input];
    }

    output = [(BWNode *)v60 output];
  }

  if (callback)
  {
    v70 = [BWMultiCamClientCompositingNode alloc];
    [type gainMapMainImageDownscalingFactor];
    v72 = [(BWMultiCamClientCompositingNode *)v70 initWithIndexOfInputProvidingOutputSampleBuffer:0 compositingStrategy:1 gainMapSupported:v71 != 0.0 clientCompositingCallback:callback];
    *(stageCopy + 112) = v72;
    v210.receiver = stageCopy;
    v210.super_class = FigCapturePhotonicEngineSinkPipeline;
    if ((objc_msgSendSuper2(&v210, v29[148], v72, v217) & 1) == 0)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 4294954510;
    }

    input5 = [*(stageCopy + 112) input];
    v81 = OUTLINED_FUNCTION_4_33(input5, v74, v75, v76, v77, v78, v79, v80, v135, v137, v139, scalingCopy, v144, outputOutCopy, sinkConfiguration, v150, v152, outCopy, withConfigurationCopy, configurationCopy, graphCopy);
    v82 = outCopy;
    if (v81)
    {
      v129 = v81;
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return v129;
    }

    output = [*(stageCopy + 112) output];
    [*(stageCopy + 112) setName:@"Still Image Client Compositing"];
  }

  else
  {
    v82 = outCopy;
  }

  if (*(stageCopy + 104) == 1)
  {
    v142 = output;
    v145 = input;
    v153 = stageCopy;
    if ([sinkConfiguration previewQualityAdjustedPhotoFilterRenderingEnabled])
    {
      v84 = 2;
    }

    else
    {
      v84 = 0;
    }

    v85 = [BWPhotoEncoderNode alloc];
    if (!version)
    {
      scheduler = 0;
    }

    v86 = [typeCopy stillImageSinkPipelineProcessingMode] == 1;
    BYTE1(v135) = [typeCopy clientIsCameraOrDerivative];
    LOBYTE(v135) = v86;
    v87 = v84;
    v88 = typeCopy;
    v89 = [BWPhotoEncoderNode initWithNodeConfiguration:v85 sensorConfigurationsByPortType:"initWithNodeConfiguration:sensorConfigurationsByPortType:semanticDevelopmentVersion:inferenceScheduler:alwaysAwaitInference:portraitRenderQuality:deferredPhotoProcessorEnabled:clientIsCameraOrDerivative:" semanticDevelopmentVersion:withConfigurationCopy inferenceScheduler:scaling alwaysAwaitInference:deliveryEnabled portraitRenderQuality:scheduler deferredPhotoProcessorEnabled:deliveryEnabled > 0 clientIsCameraOrDerivative:v87];
    [(BWNode *)v89 setName:@"Encoder"];
    [(BWPhotoEncoderNode *)v89 setCameraSupportsFlash:flash];
    v158 = v89;
    -[BWPhotoEncoderNode setUsesHighEncodingPriority:](v89, "setUsesHighEncodingPriority:", [typeCopy usesHighEncodingPriority]);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v209 = 0u;
    v91 = OUTLINED_FUNCTION_10_17();
    if (v91)
    {
      v99 = v91;
      v100 = *v207;
      do
      {
        v101 = 0;
        do
        {
          if (*v207 != v100)
          {
            objc_enumerationMutation(key);
          }

          v102 = *(*(&v206 + 1) + 8 * v101);
          v103 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
          [objc_msgSend(key objectForKeyedSubscript:{v102), "floatValue"}];
          [dictionary setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithMainImageDownscalingFactor:propagationMode:](v103 forKeyedSubscript:{"initWithMainImageDownscalingFactor:propagationMode:", 1), v102}];
          ++v101;
        }

        while (v99 != v101);
        v91 = OUTLINED_FUNCTION_10_17();
        v99 = v91;
      }

      while (v91);
    }

    v204 = 0u;
    v205 = 0u;
    v202 = 0u;
    v203 = 0u;
    v104 = OUTLINED_FUNCTION_12_19(v91, v92, v93, v94, v95, v96, v97, v98, v135, v137, v139, v142, v145, outputOutCopy, sinkConfiguration, v150, v153, outCopy, v158, configurationCopy, graphCopy, typeCopy, v166.receiver, v166.super_class, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, *(&v183 + 1), v184, *(&v184 + 1), v185, *(&v185 + 1), v186, *(&v186 + 1), v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
    if (v104)
    {
      v105 = v104;
      v106 = *v203;
      while (2)
      {
        for (i = 0; i != v105; ++i)
        {
          if (*v203 != v106)
          {
            objc_enumerationMutation(mediaKey);
          }

          v108 = *(*(&v202 + 1) + 8 * i);
          v109 = [dictionary objectForKeyedSubscript:v108];
          if (v109)
          {
            v110 = v109;
            [v109 mainImageDownscalingFactor];
            v112 = v111;
            [objc_msgSend(mediaKey objectForKeyedSubscript:{v108), "floatValue"}];
            if (v112 != v113)
            {
              return 4294954516;
            }

            v114 = [v110 setPropagationMode:2];
          }

          else
          {
            v122 = [BWPhotoEncoderNodeAttachedMediaConfiguration alloc];
            [objc_msgSend(mediaKey objectForKeyedSubscript:{v108), "floatValue"}];
            v114 = [dictionary setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithMainImageDownscalingFactor:propagationMode:](v122 forKeyedSubscript:{"initWithMainImageDownscalingFactor:propagationMode:", 0), v108}];
          }
        }

        v105 = OUTLINED_FUNCTION_12_19(v114, v115, v116, v117, v118, v119, v120, v121, v136, v138, v140, v143, v146, outputOutCopy, v149, v151, v154, v156, v159, v161, v163, v165, v166.receiver, v166.super_class, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, *(&v183 + 1), v184, *(&v184 + 1), v185, *(&v185 + 1), v186, *(&v186 + 1), v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201);
        if (v105)
        {
          continue;
        }

        break;
      }
    }

    [v159 setSmartStyleRenderingVersion:{objc_msgSend(v88, "smartStyleRenderingVersion")}];
    [v159 setSmartStyleReversibilityEnabled:{objc_msgSend(v88, "smartStyleReversibilityEnabled")}];
    stageCopy = v154;
    input = v146;
    if ([v88 smartStyleReversibilityEnabled])
    {
      [dictionary setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithKeepInputDimensions:propagationMode:]([BWPhotoEncoderNodeAttachedMediaConfiguration alloc] forKeyedSubscript:{"initWithKeepInputDimensions:propagationMode:", 1, 1), 0x1F21AAF70}];
      [dictionary setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithKeepInputDimensions:propagationMode:]([BWPhotoEncoderNodeAttachedMediaConfiguration alloc] forKeyedSubscript:{"initWithKeepInputDimensions:propagationMode:", 1, 1), 0x1F21AAFB0}];
      v185 = 0u;
      v186 = 0u;
      v183 = 0u;
      v184 = 0u;
      v123 = BWSemanticSegmentationMatteAttachedMediaKeysSupportedByDemosaicedRaw();
      v124 = [v123 countByEnumeratingWithState:&v183 objects:&v167 count:16];
      if (v124)
      {
        v125 = v124;
        v126 = *v184;
        do
        {
          for (j = 0; j != v125; ++j)
          {
            if (*v184 != v126)
            {
              objc_enumerationMutation(v123);
            }

            [objc_msgSend(dictionary objectForKeyedSubscript:{*(*(&v183 + 1) + 8 * j)), "setPropagationMode:", 2}];
          }

          v125 = [v123 countByEnumeratingWithState:&v183 objects:&v167 count:16];
        }

        while (v125);
      }
    }

    if ([v88 constantColorVersion] >= 1)
    {
      [dictionary setObject:-[BWPhotoEncoderNodeAttachedMediaConfiguration initWithDimensions:propagationMode:]([BWPhotoEncoderNodeAttachedMediaConfiguration alloc] forKeyedSubscript:{"initWithDimensions:propagationMode:", objc_msgSend(v88, "constantColorConfidenceMapDimensions"), 2), 0x1F21AB170}];
    }

    if ([dictionary count])
    {
      [v159 setAttachedMediaConfigurationByAttachedMediaKey:dictionary];
    }

    [v159 setPreferMainImageDownscalingFactorByAttachedMediaKeyFromSampleBuffer:1];
    v166.receiver = v154;
    v166.super_class = FigCapturePhotonicEngineSinkPipeline;
    if (objc_msgSendSuper2(&v166, sel_addNode_error_, v159, v217))
    {
      if (v143)
      {
        v128 = [v161 safelyConnectOutput:v143 toInput:objc_msgSend(v159 pipelineStage:{"input"), v163}];
        if (v128)
        {
          v129 = v128;
          OUTLINED_FUNCTION_1_5();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          return v129;
        }
      }

      if (!v146)
      {
        input = [v159 input];
      }

      output = [v159 output];
      v82 = v156;
      if (controllerOut)
      {
        *controllerOut = [v159 photoEncoderController];
      }

      goto LABEL_83;
    }

    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 4294954510;
  }

LABEL_83:
  if ((*(stageCopy + 104) & 1) == 0)
  {
    *(stageCopy + 120) = output;
  }

  v129 = 4294954516;
  if (input && output)
  {
    v129 = 0;
    *v82 = input;
    *outputOutCopy = output;
  }

  return v129;
}

@end