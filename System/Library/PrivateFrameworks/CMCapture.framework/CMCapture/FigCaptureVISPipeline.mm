@interface FigCaptureVISPipeline
- (BWNodeOutput)_buildMotionAttachmentsNodeWithUpstreamOutput:(void *)output graph:(BWNodeOutput *)graph parentPipeline:(char *)pipeline horizontalSensorBinningFactor:(char *)factor verticalSensorBinningFactor:(unsigned int)binningFactor maxSupportedFrameRate:(unsigned int)rate pipelineStage:(void *)stage motionAttachmentsSource:(unsigned int)source captureDevice:(float)device isPanorama:(void *)output0 optimizesImagesForOfflineVideoStabilization:(unsigned __int8)output1 provideSourceVideoWithMotionAttachmentsOutput:(char)output2 provideOfflineVISMotionDataOutput:(char)output3 maxLossyCompressionLevel:(unsigned __int8)output4 motionAttachmentsNodeOut:(BWMotionAttachmentsNode *)output5 errOut:(_DWORD *)output6;
- (BWVISNode)_buildVISPipelineWithUpstreamOutput:(char *)output graph:(char *)graph parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(void *)configuration pipelineStage:(void *)stage sdofPipelineStage:(uint64_t)pipelineStage videoStabilizationType:(unsigned int)type motionAttachmentsSource:(int)self0 fillExtendedRowsOfOutputBuffer:(unsigned int)self1 overCaptureEnabled:(unsigned int)self2 stereoMode:(char)self3 videoStabilizationOverscanOverride:(int)self4 videoStabilizationStrength:(uint64_t)self5 motionMetadataPreloadingEnabled:(void *)self6 visExecutionMode:(unint64_t)self7 pipelineTraceID:(uint64_t)self8 captureDevice:(char)self9 outputDimensions:(char)dimensions generatedTransformsOutputDimensionsOverride:(uint64_t)dimensionsOverride P3ToBT2020ConversionEnabled:(unsigned int)conversionEnabled stabilizeDepthAttachments:(unsigned __int8)attachments outputDepthDimensions:(unsigned __int8)depthDimensions maxLossyCompressionLevel:(char)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(unsigned __int8)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output0 personSegmentationRenderingEnabled:(unsigned __int8)output1 smartStyleRenderingEnabled:(void *)output2 smartStyleReversibilityEnabled:(uint64_t)output3 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:;
- (BWVISNode)_newVISNodeWithUpstreamOutput:(void *)output graph:(void *)graph parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(unsigned int)configuration videoStabilizationType:(int)type motionAttachmentsSource:(char)source fillExtendedRowsOfOutputBuffer:(float)buffer overCaptureEnabled:(unsigned __int8)self0 stereoMode:(unsigned int)self1 videoStabilizationOverscanOverride:(unsigned int)self2 videoStabilizationStrength:(char)self3 motionMetadataPreloadingEnabled:(int)self4 visExecutionMode:(unsigned int)self5 pipelineTraceID:(void *)self6 pipelineStage:(void *)self7 captureDevice:(unint64_t)self8 outputDimensions:(uint64_t)self9 generatedTransformsOutputDimensionsOverride:(double *)dimensionsOverride irisVISCleanOutputRectOut:(char)out P3ToBT2020ConversionEnabled:(char)conversionEnabled stabilizeDepthAttachments:(uint64_t)attachments outputDepthDimensions:(unsigned int)depthDimensions maxLossyCompressionLevel:(unsigned __int8)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(char)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output0 personSegmentationRenderingEnabled:(unsigned __int8)output1 smartStyleRenderingEnabled:(unsigned __int8)output2 smartStyleReversibilityEnabled:(unsigned __int8)output3 lowResImageUsedByVideoEncoderEnabled:(void *)output4 portTypesWithGeometricDistortionCorrectionInVISEnabled:(uint64_t)output5 visProcessingSemaphore:;
- (BWVISNode)initWithUpstreamOutput:(char *)output graph:(float)graph name:(uint64_t)name parentPipeline:(char *)pipeline videoCaptureConnectionConfiguration:(void *)configuration pipelineStage:(void *)stage sdofPipelineStage:(void *)pipelineStage videoStabilizationType:(unsigned int)self0 motionAttachmentsSource:(unsigned int)self1 fillExtendedRowsOfOutputBuffer:(__int16)self2 overCaptureEnabled:(unsigned int)self3 stereoMode:(unsigned int)self4 videoStabilizationOverscanOverride:(char)self5 videoStabilizationStrength:(int)self6 motionMetadataPreloadingEnabled:(int)self7 visExecutionMode:(void *)self8 pipelineTraceID:(unint64_t)self9 captureDevice:(uint64_t)device outputDimensions:(__int16)dimensions generatedTransformsOutputDimensionsOverride:(uint64_t)dimensionsOverride P3ToBT2020ConversionEnabled:(unsigned int)conversionEnabled stabilizeDepthAttachments:(unsigned __int8)attachments outputDepthDimensions:(unsigned __int8)depthDimensions maxLossyCompressionLevel:(char)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(unsigned __int8)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)output0 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output1 personSegmentationRenderingEnabled:(unsigned __int8)output2 smartStyleRenderingEnabled:(void *)output3 smartStyleReversibilityEnabled:(uint64_t)output4 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:;
- (double)irisVISCleanOutputRect;
- (uint64_t)motionAttachmentsNode;
- (uint64_t)sdofVISNode;
- (uint64_t)visNode;
- (void)_recreateISPProcessingSessionForVISNode:(uint64_t)node withCaptureDevice:(void *)device;
- (void)dealloc;
- (void)liveReconfigureForOutputDimensions:(uint64_t)result;
@end

@implementation FigCaptureVISPipeline

- (uint64_t)visNode
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)sdofVISNode
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVISPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (BWVISNode)initWithUpstreamOutput:(char *)output graph:(float)graph name:(uint64_t)name parentPipeline:(char *)pipeline videoCaptureConnectionConfiguration:(void *)configuration pipelineStage:(void *)stage sdofPipelineStage:(void *)pipelineStage videoStabilizationType:(unsigned int)self0 motionAttachmentsSource:(unsigned int)self1 fillExtendedRowsOfOutputBuffer:(__int16)self2 overCaptureEnabled:(unsigned int)self3 stereoMode:(unsigned int)self4 videoStabilizationOverscanOverride:(char)self5 videoStabilizationStrength:(int)self6 motionMetadataPreloadingEnabled:(int)self7 visExecutionMode:(void *)self8 pipelineTraceID:(unint64_t)self9 captureDevice:(uint64_t)device outputDimensions:(__int16)dimensions generatedTransformsOutputDimensionsOverride:(uint64_t)dimensionsOverride P3ToBT2020ConversionEnabled:(unsigned int)conversionEnabled stabilizeDepthAttachments:(unsigned __int8)attachments outputDepthDimensions:(unsigned __int8)depthDimensions maxLossyCompressionLevel:(char)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(unsigned __int8)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)output0 videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output1 personSegmentationRenderingEnabled:(unsigned __int8)output2 smartStyleRenderingEnabled:(void *)output3 smartStyleReversibilityEnabled:(uint64_t)output4 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:
{
  if (!self)
  {
    return 0;
  }

  v46.receiver = self;
  v46.super_class = FigCaptureVISPipeline;
  v40 = objc_msgSendSuper2(&v46, sel_initWithGraph_name_, output, name);
  v41 = v40;
  if (v40)
  {
    v43 = *(MEMORY[0x1E695F058] + 16);
    *(v40 + 56) = *MEMORY[0x1E695F058];
    *(v40 + 72) = v43;
    *(v40 + 11) = [executionMode device];
    LODWORD(v45) = preloadingEnabled;
    LOWORD(v44) = buffer;
    [FigCaptureVISPipeline _buildVISPipelineWithUpstreamOutput:v41 graph:a2 parentPipeline:output videoCaptureConnectionConfiguration:pipeline pipelineStage:configuration sdofPipelineStage:stage videoStabilizationType:pipelineStage motionAttachmentsSource:type fillExtendedRowsOfOutputBuffer:source overCaptureEnabled:v44 stereoMode:enabled videoStabilizationOverscanOverride:mode videoStabilizationStrength:override motionMetadataPreloadingEnabled:strength visExecutionMode:v45 pipelineTraceID:executionMode captureDevice:d outputDimensions:device generatedTransformsOutputDimensionsOverride:dimensions P3ToBT2020ConversionEnabled:SHIBYTE(dimensions) stabilizeDepthAttachments:dimensionsOverride outputDepthDimensions:conversionEnabled maxLossyCompressionLevel:attachments videoSTFEnabled:depthDimensions videoGreenGhostMitigationEnabled:level lightSourceMaskAndKeypointDescriptorDataEnabled:fEnabled videoGreenGhostOfflineMetadataEnabled:mitigationEnabled videoGreenGhostOfflineLightSourceMaskEnabled:dataEnabled personSegmentationRenderingEnabled:metadataEnabled smartStyleRenderingEnabled:maskEnabled smartStyleReversibilityEnabled:renderingEnabled lowResImageUsedByVideoEncoderEnabled:styleRenderingEnabled portTypesWithGeometricDistortionCorrectionInVISEnabled:reversibilityEnabled visProcessingSemaphore:?];
    if (!v41->super._name || [configuration irisSDOFEnabled] && !v41->super._subgraphName)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");

      return 0;
    }
  }

  return v41;
}

- (BWVISNode)_buildVISPipelineWithUpstreamOutput:(char *)output graph:(char *)graph parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(void *)configuration pipelineStage:(void *)stage sdofPipelineStage:(uint64_t)pipelineStage videoStabilizationType:(unsigned int)type motionAttachmentsSource:(int)self0 fillExtendedRowsOfOutputBuffer:(unsigned int)self1 overCaptureEnabled:(unsigned int)self2 stereoMode:(char)self3 videoStabilizationOverscanOverride:(int)self4 videoStabilizationStrength:(uint64_t)self5 motionMetadataPreloadingEnabled:(void *)self6 visExecutionMode:(unint64_t)self7 pipelineTraceID:(uint64_t)self8 captureDevice:(char)self9 outputDimensions:(char)dimensions generatedTransformsOutputDimensionsOverride:(uint64_t)dimensionsOverride P3ToBT2020ConversionEnabled:(unsigned int)conversionEnabled stabilizeDepthAttachments:(unsigned __int8)attachments outputDepthDimensions:(unsigned __int8)depthDimensions maxLossyCompressionLevel:(char)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(unsigned __int8)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output0 personSegmentationRenderingEnabled:(unsigned __int8)output1 smartStyleRenderingEnabled:(void *)output2 smartStyleReversibilityEnabled:(uint64_t)output3 lowResImageUsedByVideoEncoderEnabled:portTypesWithGeometricDistortionCorrectionInVISEnabled:visProcessingSemaphore:
{
  if (result)
  {
    v38 = result;
    v80 = 0;
    v39 = [objc_msgSend(pipeline "sourceConfiguration")];
    irisSDOFEnabled = [pipeline irisSDOFEnabled];
    v41 = [objc_msgSend(pipeline "sourceConfiguration")];
    v75 = irisSDOFEnabled;
    if (override != 3)
    {
      v56 = v41 == 4;
      v79 = 0;
      v57 = [objc_msgSend(pipeline "irisSinkConfiguration")];
      if (override == 5)
      {
        v58 = 1;
      }

      else
      {
        v58 = v57;
      }

      v78 = 0;
      horizontalSensorBinningFactor = [v39 horizontalSensorBinningFactor];
      verticalSensorBinningFactor = [v39 verticalSensorBinningFactor];
      [v39 maxSupportedFrameRate];
      v61 = [FigCaptureVISPipeline _buildMotionAttachmentsNodeWithUpstreamOutput:v38 graph:a2 parentPipeline:output horizontalSensorBinningFactor:graph verticalSensorBinningFactor:horizontalSensorBinningFactor maxSupportedFrameRate:verticalSensorBinningFactor pipelineStage:configuration motionAttachmentsSource:type captureDevice:v60 isPanorama:preloadingEnabled optimizesImagesForOfflineVideoStabilization:v56 provideSourceVideoWithMotionAttachmentsOutput:v58 provideOfflineVISMotionDataOutput:1 maxLossyCompressionLevel:0 motionAttachmentsNodeOut:&v79 errOut:&v78];
      v62 = v78;
      if (v78)
      {
        fig_log_get_emitter();
        LODWORD(name) = v62;
        return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", name);
      }

      a2 = v61;
      v38->super._outputs = v79;
      irisSDOFEnabled = v75;
    }

    if (irisSDOFEnabled)
    {
      v42 = objc_alloc_init(BWVideoSDOFSplitNode);
      v43 = MEMORY[0x1E696AEC0];
      name = [(BWNode *)v38 name];
      -[BWNode setName:](v42, "setName:", [v43 stringWithFormat:@"%@ Iris SDOF Split"]);
      if (([graph addNode:v42 error:&v80] & 1) == 0 || (objc_msgSend(output, "connectOutput:toInput:pipelineStage:", a2, -[BWNode input](v42, "input"), configuration) & 1) == 0)
      {
LABEL_23:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", name);
      }

      [(BWVideoSDOFSplitNode *)v42 originalOutput];
    }

    else
    {
      v42 = 0;
    }

    metadataEnabledCopy = metadataEnabled;
    if (override == 3 || override == 0)
    {
      maskEnabledCopy = maskEnabled;
    }

    else
    {
      metadataEnabledCopy = 0;
      maskEnabledCopy = 0;
    }

    v73 = maskEnabledCopy;
    v72 = metadataEnabledCopy;
    configurationCopy = configuration;
    v47 = OUTLINED_FUNCTION_1_97();
    v77 = v48;
    v55 = [(FigCaptureVISPipeline *)v49 _newVISNodeWithUpstreamOutput:v50 graph:v51 parentPipeline:v52 videoCaptureConnectionConfiguration:v53 videoStabilizationType:v54 motionAttachmentsSource:type fillExtendedRowsOfOutputBuffer:v48 overCaptureEnabled:v47 stereoMode:name videoStabilizationOverscanOverride:buffer videoStabilizationStrength:enabled motionMetadataPreloadingEnabled:mode visExecutionMode:override pipelineTraceID:strength pipelineStage:configurationCopy captureDevice:preloadingEnabled outputDimensions:executionMode generatedTransformsOutputDimensionsOverride:d irisVISCleanOutputRectOut:&v38->super._supportsConcurrentLiveInputCallbacks P3ToBT2020ConversionEnabled:device stabilizeDepthAttachments:dimensions outputDepthDimensions:dimensionsOverride maxLossyCompressionLevel:conversionEnabled videoSTFEnabled:attachments videoGreenGhostMitigationEnabled:depthDimensions lightSourceMaskAndKeypointDescriptorDataEnabled:level videoGreenGhostOfflineMetadataEnabled:fEnabled videoGreenGhostOfflineLightSourceMaskEnabled:mitigationEnabled personSegmentationRenderingEnabled:dataEnabled smartStyleRenderingEnabled:v72 smartStyleReversibilityEnabled:v73 lowResImageUsedByVideoEncoderEnabled:renderingEnabled portTypesWithGeometricDistortionCorrectionInVISEnabled:styleRenderingEnabled visProcessingSemaphore:reversibilityEnabled];
    v38->super._name = &v55->super.super.isa;
    if (!v55)
    {
      goto LABEL_23;
    }

    result = [(BWNode *)v55 output];
    if (v75)
    {
      [(BWVideoSDOFSplitNode *)v42 sdofOutput];
      v63 = OUTLINED_FUNCTION_1_97();
      result = [(FigCaptureVISPipeline *)v64 _newVISNodeWithUpstreamOutput:v65 graph:v66 parentPipeline:v67 videoCaptureConnectionConfiguration:v68 videoStabilizationType:v69 motionAttachmentsSource:type fillExtendedRowsOfOutputBuffer:v77 overCaptureEnabled:v63 stereoMode:name videoStabilizationOverscanOverride:0 videoStabilizationStrength:enabled motionMetadataPreloadingEnabled:mode visExecutionMode:override pipelineTraceID:strength pipelineStage:stage captureDevice:preloadingEnabled outputDimensions:executionMode generatedTransformsOutputDimensionsOverride:d irisVISCleanOutputRectOut:0 P3ToBT2020ConversionEnabled:device stabilizeDepthAttachments:dimensions outputDepthDimensions:dimensionsOverride maxLossyCompressionLevel:conversionEnabled videoSTFEnabled:attachments videoGreenGhostMitigationEnabled:depthDimensions lightSourceMaskAndKeypointDescriptorDataEnabled:level videoGreenGhostOfflineMetadataEnabled:fEnabled videoGreenGhostOfflineLightSourceMaskEnabled:mitigationEnabled personSegmentationRenderingEnabled:dataEnabled smartStyleRenderingEnabled:metadataEnabled smartStyleReversibilityEnabled:maskEnabled lowResImageUsedByVideoEncoderEnabled:renderingEnabled portTypesWithGeometricDistortionCorrectionInVISEnabled:0 visProcessingSemaphore:0];
      v38->super._subgraphName = &result->super.super.isa;
      if (!result)
      {
        goto LABEL_23;
      }
    }
  }

  return result;
}

- (void)liveReconfigureForOutputDimensions:(uint64_t)result
{
  if (result)
  {
    [*(result + 40) setOutputDimensions:a2];
    [*(result + 48) setOutputDimensions:a2];
    v9.origin.x = OUTLINED_FUNCTION_2_83();
    if (!CGRectIsEmpty(v9))
    {
      *(result + 56) = vp_irisVISCleanOutputRectForOutputDimensions([*(result + 40) outputDimensions]);
      *(result + 64) = v4;
      *(result + 72) = v5;
      *(result + 80) = v6;
      [*(result + 40) setIrisVISCleanOutputRect:OUTLINED_FUNCTION_2_83()];
    }

    [FigCaptureVISPipeline _recreateISPProcessingSessionForVISNode:*(result + 40) withCaptureDevice:?];
    v7 = *(result + 48);

    [FigCaptureVISPipeline _recreateISPProcessingSessionForVISNode:v7 withCaptureDevice:?];
  }
}

- (void)_recreateISPProcessingSessionForVISNode:(uint64_t)node withCaptureDevice:(void *)device
{
  if (node && [device ispProcessingSession])
  {
    HIDWORD(v9) = 0;
    v4 = [*(node + 88) copyISPProcessingSessionWithType:objc_msgSend(objc_msgSend(device error:{"ispProcessingSession"), "type"), &v9 + 4}];
    if (v4)
    {
      v5 = v4;
      [device setIspProcessingSession:v4];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }
}

- (BWNodeOutput)_buildMotionAttachmentsNodeWithUpstreamOutput:(void *)output graph:(BWNodeOutput *)graph parentPipeline:(char *)pipeline horizontalSensorBinningFactor:(char *)factor verticalSensorBinningFactor:(unsigned int)binningFactor maxSupportedFrameRate:(unsigned int)rate pipelineStage:(void *)stage motionAttachmentsSource:(unsigned int)source captureDevice:(float)device isPanorama:(void *)output0 optimizesImagesForOfflineVideoStabilization:(unsigned __int8)output1 provideSourceVideoWithMotionAttachmentsOutput:(char)output2 provideOfflineVISMotionDataOutput:(char)output3 maxLossyCompressionLevel:(unsigned __int8)output4 motionAttachmentsNodeOut:(BWMotionAttachmentsNode *)output5 errOut:(_DWORD *)output6
{
  if (!output)
  {
    return 0;
  }

  stabilizationCopy = stabilization;
  v47 = 0;
  v46 = 0;
  motionAttachmentsParameters = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters motionAttachmentsParameters];
  sensorIDDictionaryByPortType = [panorama sensorIDDictionaryByPortType];
  cameraInfoByPortType = [panorama cameraInfoByPortType];
  activePortTypes = [panorama activePortTypes];
  if (attachmentsOutput)
  {
    stabilizationCopy = 2;
  }

  v24 = [BWMotionAttachmentsNode alloc];
  *(&v35 + 5) = level;
  BYTE4(v35) = dataOutput;
  LODWORD(v35) = [stage priority];
  *&v25 = device;
  v26 = [BWMotionAttachmentsNode initWithSensorIDDictionaryByPortType:v24 cameraInfoByPortType:"initWithSensorIDDictionaryByPortType:cameraInfoByPortType:tuningParameters:activePortTypes:horizontalSensorBinningFactor:verticalSensorBinningFactor:maxSupportedFrameRate:motionAttachmentsMode:motionAttachmentsSource:motionCallbackThreadPriority:provideSourceVideoWithMotionAttachmentsOutput:provideOfflineVISMotionDataOutput:inputFormatIsProResRaw:errorOut:" tuningParameters:sensorIDDictionaryByPortType activePortTypes:cameraInfoByPortType horizontalSensorBinningFactor:motionAttachmentsParameters verticalSensorBinningFactor:activePortTypes maxSupportedFrameRate:binningFactor motionAttachmentsMode:rate motionAttachmentsSource:v25 motionCallbackThreadPriority:__PAIR64__(source provideSourceVideoWithMotionAttachmentsOutput:stabilizationCopy) provideOfflineVISMotionDataOutput:v35 inputFormatIsProResRaw:&v46 errorOut:?];
  v27 = v46;
  if (v46)
  {
    fig_log_get_emitter();
    LODWORD(v33) = v27;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v33, v38, v37, v38, stage, pipeline, factor, graph);
    graphCopy = 0;
LABEL_17:
    errOutCopy3 = errOut;
    goto LABEL_12;
  }

  v28 = v26;
  -[BWNode setName:](v26, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Motion Attachments", objc_msgSend(output, "name")]);
  if ([factor addNode:v28 error:&v47])
  {
    graphCopy = graph;
    if ([pipeline connectOutput:graph toInput:-[BWNode input](v28 pipelineStage:{"input"), stage}])
    {
      if (dataOutput)
      {
        sourceVideoWithMotionAttachmentsOutput = [(BWMotionAttachmentsNode *)v28 sourceVideoWithMotionAttachmentsOutput];
      }

      else
      {
        sourceVideoWithMotionAttachmentsOutput = [(BWMotionAttachmentsNode *)v28 offlineVISMotionDataOutput];
      }

      graphCopy = sourceVideoWithMotionAttachmentsOutput;
      errOutCopy3 = errOut;
      if (out)
      {
        *out = v28;
      }

      goto LABEL_12;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v34, v36, v37, v38, stage, pipeline, factor, graph);
    goto LABEL_17;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v34, v36, v37, v38, stage, pipeline, factor, graph);
  graphCopy = v42;
  errOutCopy3 = errOut;
LABEL_12:
  *errOutCopy3 = v46;
  return graphCopy;
}

- (BWVISNode)_newVISNodeWithUpstreamOutput:(void *)output graph:(void *)graph parentPipeline:(void *)pipeline videoCaptureConnectionConfiguration:(unsigned int)configuration videoStabilizationType:(int)type motionAttachmentsSource:(char)source fillExtendedRowsOfOutputBuffer:(float)buffer overCaptureEnabled:(unsigned __int8)self0 stereoMode:(unsigned int)self1 videoStabilizationOverscanOverride:(unsigned int)self2 videoStabilizationStrength:(char)self3 motionMetadataPreloadingEnabled:(int)self4 visExecutionMode:(unsigned int)self5 pipelineTraceID:(void *)self6 pipelineStage:(void *)self7 captureDevice:(unint64_t)self8 outputDimensions:(uint64_t)self9 generatedTransformsOutputDimensionsOverride:(double *)dimensionsOverride irisVISCleanOutputRectOut:(char)out P3ToBT2020ConversionEnabled:(char)conversionEnabled stabilizeDepthAttachments:(uint64_t)attachments outputDepthDimensions:(unsigned int)depthDimensions maxLossyCompressionLevel:(unsigned __int8)level videoSTFEnabled:(unsigned __int8)fEnabled videoGreenGhostMitigationEnabled:(char)mitigationEnabled lightSourceMaskAndKeypointDescriptorDataEnabled:(unsigned __int8)dataEnabled videoGreenGhostOfflineMetadataEnabled:(unsigned __int8)metadataEnabled videoGreenGhostOfflineLightSourceMaskEnabled:(unsigned __int8)output0 personSegmentationRenderingEnabled:(unsigned __int8)output1 smartStyleRenderingEnabled:(unsigned __int8)output2 smartStyleReversibilityEnabled:(unsigned __int8)output3 lowResImageUsedByVideoEncoderEnabled:(void *)output4 portTypesWithGeometricDistortionCorrectionInVISEnabled:(uint64_t)output5 visProcessingSemaphore:
{
  if (!self)
  {
    return 0;
  }

  v152 = [objc_msgSend(stage "captureStream")];
  v42 = [objc_msgSend(pipeline "sourceConfiguration")];
  irisVISEnabled = [pipeline irisVISEnabled];
  if (irisVISEnabled)
  {
    irisSinkConfiguration = [pipeline irisSinkConfiguration];
    if (irisSinkConfiguration)
    {
      objc_msgSend_irisMovieVideoFrameDuration(irisSinkConfiguration);
    }

    else
    {
      memset(&v174, 0, sizeof(v174));
    }

    v49 = FigCaptureFrameRateFromCMTime(&v174);
    v47 = FigCaptureFrameRateAsFloat(v49, v50);
    irisVISMethod = [pipeline irisVISMethod];
  }

  else
  {
    v45 = [objc_msgSend(pipeline "sourceConfiguration")];
    v47 = FigCaptureFrameRateAsFloat(v45, v46);
    irisVISMethod = [pipeline videoStabilizationMethod];
  }

  v155 = irisVISMethod;
  if (irisVISMethod == 5 || irisVISMethod == 3)
  {
    [v42 cinematicStabilizationExtendedLookAheadDuration];
    v53 = v52;
  }

  else
  {
    v53 = 0;
  }

  thermalSystemPressureLevel = [stage thermalSystemPressureLevel];
  if (!a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v131, "<<<< FigCaptureVISPipeline >>>> Fig", "upstreamOutput", "bail", 0, "FigCaptureVISPipeline.m", 436);
    goto LABEL_26;
  }

  v150 = thermalSystemPressureLevel;
  v173 = 0;
  v55 = [objc_msgSend(pipeline "sourceConfiguration")];
  v56 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v56)
  {
    v64 = -12782;
    v172 = -12782;
LABEL_25:
    emitter = fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< FigCaptureVISPipeline >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureVISPipeline.m", 441, v64);
    goto LABEL_26;
  }

  v57 = v56(v55, @"AttributesDictionary", *MEMORY[0x1E695E480], &v173);
  v172 = v57;
  if (v57)
  {
    v64 = v57;
    goto LABEL_25;
  }

  [objc_msgSend(objc_msgSend(v173 objectForKeyedSubscript:{0x1F21A0550), "objectForKeyedSubscript:", 0x1F21A0570), "floatValue"}];
  v59 = v58;
  v60 = [objc_msgSend(v173 objectForKeyedSubscript:{@"FaceAwareVideoStabilizationSupported", "BOOLValue"}];
  if (((v155 - 3) & 0xFFFFFFFD) != 0)
  {
    v61 = 0;
  }

  else
  {
    v61 = v60;
  }

  v148 = v61;

  if (configuration == 4)
  {
    stageCopy3 = stage;
    cf = [stage copyISPProcessingSessionWithType:6 error:0];
    if (!cf)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v67, "<<<< FigCaptureVISPipeline >>>> Fig", "ispProcessingSession", "bail", 0, "FigCaptureVISPipeline.m", 468);
      goto LABEL_26;
    }
  }

  else
  {
    stageCopy3 = stage;
    if (configuration == 3)
    {
      cf = [stage copyISPProcessingSessionWithType:1 error:0];
      if (!cf)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v63, "<<<< FigCaptureVISPipeline >>>> Fig", "ispProcessingSession", "bail", 0, "FigCaptureVISPipeline.m", 463);
LABEL_26:
        v66 = 0;
LABEL_27:

        return 0;
      }
    }

    else
    {
      cf = 0;
    }
  }

  outputCopy = output;
  v145 = a2;
  selfCopy = self;
  graphCopy = graph;
  pipelineCopy = pipeline;
  if (irisVISEnabled)
  {
    v68 = vp_irisVISCleanOutputRectForOutputDimensions(device);
    v72 = v68;
    v73 = v69;
    v74 = v70;
    v75 = v71;
    if (dimensionsOverride)
    {
      *dimensionsOverride = v68;
      dimensionsOverride[1] = v69;
      dimensionsOverride[2] = v70;
      dimensionsOverride[3] = v71;
    }

    stageCopy3 = stage;
  }

  else
  {
    v72 = *MEMORY[0x1E695F058];
    v73 = *(MEMORY[0x1E695F058] + 8);
    v74 = *(MEMORY[0x1E695F058] + 16);
    v75 = *(MEMORY[0x1E695F058] + 24);
  }

  if ([objc_msgSend(pipeline "irisSinkConfiguration")] & 1) != 0 || (objc_msgSend(stageCopy3, "parallaxMitigationBasedOnZoomFactorEnabled"))
  {
    adaptiveOverscanEnabled = 1;
  }

  else
  {
    adaptiveOverscanEnabled = [stageCopy3 adaptiveOverscanEnabled];
  }

  cameraInfoByPortType = [stageCopy3 cameraInfoByPortType];
  array = [MEMORY[0x1E695DF70] array];
  v168 = 0u;
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  activePortTypes = [stageCopy3 activePortTypes];
  v77 = [activePortTypes countByEnumeratingWithState:&v168 objects:v167 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v169;
LABEL_43:
    v80 = 0;
    while (1)
    {
      if (*v169 != v79)
      {
        objc_enumerationMutation(activePortTypes);
      }

      v81 = *(*(&v168 + 1) + 8 * v80);
      v82 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([objc_msgSend(pipeline "sourceConfiguration")], v42, v81, &v172);
      if (v172)
      {
        break;
      }

      v83 = v82;
      if (!v82)
      {
        break;
      }

      distortionCompensationSupported = [v82 distortionCompensationSupported];
      if (preloadingEnabled != 5 && !mode && distortionCompensationSupported && ([encoderEnabled containsObject:v81] & 1) == 0)
      {
        [array addObject:v81];
      }

      if (v78 == ++v80)
      {
        v78 = [activePortTypes countByEnumeratingWithState:&v168 objects:v167 count:16];
        if (v78)
        {
          goto LABEL_43;
        }

        goto LABEL_55;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v132, v133, v134, v135, v136, v137, v138, v140);
    v66 = 0;
    v101 = cf;
    if (!cf)
    {
      goto LABEL_27;
    }

LABEL_96:
    CFRelease(v101);
    goto LABEL_27;
  }

LABEL_55:
  v141 = v53;
  v85 = v75;
  v86 = v74;
  v87 = v73;
  v88 = v72;
  bufferCopy = buffer;
  v90 = v59 * 10.0;
  v91 = v150 > 2;
  if ([v42 isHighPhotoQualitySupported])
  {
    v92 = 2;
  }

  else
  {
    v92 = 1;
  }

  v151 = v92;
  v93 = [BWVISNode alloc];
  [v42 maxSupportedFrameRate];
  v95 = v94;
  priority = [d priority];
  BYTE1(v140) = v148;
  LOBYTE(v140) = v91;
  HIBYTE(v139) = mode == 1;
  BYTE6(v139) = mitigationEnabled;
  WORD2(v139) = __PAIR16__(metadataEnabled, dataEnabled);
  *&v139 = v90;
  HIDWORD(v134) = preloadingEnabled;
  BYTE2(v134) = strength;
  BYTE1(v134) = adaptiveOverscanEnabled;
  LOBYTE(v134) = [pipeline zoomSmoothingEnabled];
  BYTE5(v132) = enabled;
  BYTE4(v132) = source;
  LODWORD(v132) = type;
  LODWORD(v97) = v95;
  *&v98 = v47;
  *&v99 = bufferCopy;
  LODWORD(v100) = v141;
  v101 = cf;
  v66 = [BWVISNode initWithSensorIDDict:v93 stabilizationMethod:"initWithSensorIDDict:stabilizationMethod:stabilizationType:ispProcessingSession:maxSupportedFrameRate:activeMaxFrameRate:gpuPriority:metalSubmissionAndCompletionQueuePriority:motionAttachmentsSource:fillExtendedRowsOfOutputBuffer:overCaptureEnabled:stereoMode:videoStabilizationOverscanOverride:videoStabilizationStrength:zoomSmoothingEnabled:applyFrameCropOffset:motionMetadataPreloadingEnabled:visExecutionMode:livePhotoCleanOutputRect:cameraInfoByPortType:cvisExtendedLookAheadDuration:distortionCorrectionEnabledPortTypes:distortionCompensationEnabledPortTypes:minDistanceForBravoParallaxShift:videoGreenGhostOfflineMetadataEnabled:videoGreenGhostOfflineLightSourceMaskEnabled:lightSourceMaskAndKeypointDescriptorDataEnabled:attachStabilizedOutputCameraTrajectory:systemIsUnderCriticalThermalPressure:faceAwareVideoStabilizationEnabled:" stabilizationType:v152 ispProcessingSession:v155 maxSupportedFrameRate:configuration activeMaxFrameRate:cf gpuPriority:v151 metalSubmissionAndCompletionQueuePriority:priority motionAttachmentsSource:v97 fillExtendedRowsOfOutputBuffer:v98 overCaptureEnabled:v99 stereoMode:v88 videoStabilizationOverscanOverride:v87 videoStabilizationStrength:v86 zoomSmoothingEnabled:v85 applyFrameCropOffset:v100 motionMetadataPreloadingEnabled:v132 visExecutionMode:__PAIR64__(override livePhotoCleanOutputRect:mode) cameraInfoByPortType:v134 cvisExtendedLookAheadDuration:cameraInfoByPortType distortionCorrectionEnabledPortTypes:encoderEnabled distortionCompensationEnabledPortTypes:array minDistanceForBravoParallaxShift:v139 videoGreenGhostOfflineMetadataEnabled:v140 videoGreenGhostOfflineLightSourceMaskEnabled:? lightSourceMaskAndKeypointDescriptorDataEnabled:? attachStabilizedOutputCameraTrajectory:? systemIsUnderCriticalThermalPressure:? faceAwareVideoStabilizationEnabled:?];
  [(BWVISNode *)v66 setGeneratedTransformsOutputDimensionsOverride:dimensions];
  stageCopy5 = stage;
  v103 = [stage position] == 2;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  DeviceToCameraTransform = FigCaptureGetDeviceToCameraTransform(v103, v104);
  v106 = 0;
  DWORD2(v164) = v107;
  DWORD2(v165) = v108;
  *&v164 = DeviceToCameraTransform;
  *&v165 = v109;
  DWORD2(v166) = v110;
  *&v166 = v111;
  v112 = v163;
  do
  {
    for (i = 0; i != 3; ++i)
    {
      *&v112[8 * i] = *((&v164 + i) & 0xFFFFFFFFFFFFFFF3 | (4 * (v106 & 3)));
    }

    ++v106;
    v112 += 24;
  }

  while (v106 != 3);
  -[BWVISNode setCameraExtrinsicMatrix:](v66, "setCameraExtrinsicMatrix:", [MEMORY[0x1E695DEF0] dataWithBytes:v163 length:72]);
  if (!v66)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_100;
  }

  v161 = 0u;
  v162 = 0u;
  v159 = 0u;
  v160 = 0u;
  captureStreams = [stage captureStreams];
  v115 = [captureStreams countByEnumeratingWithState:&v159 objects:v158 count:16];
  if (v115)
  {
    v116 = v115;
    LOBYTE(v117) = 0;
    v118 = *v160;
    do
    {
      v119 = 0;
      do
      {
        if (*v160 != v118)
        {
          objc_enumerationMutation(captureStreams);
        }

        [*(*(&v159 + 1) + 8 * v119) currentNonLowPowerSphereMode];
        v120 = FigCFEqual() || FigCFEqual() || FigCFEqual() != 0;
        v117 = v120 | v117 & 1;
        ++v119;
      }

      while (v116 != v119);
      v121 = [captureStreams countByEnumeratingWithState:&v159 objects:v158 count:16];
      v116 = v121;
    }

    while (v121);
    v101 = cf;
    stageCopy5 = stage;
  }

  else
  {
    v117 = 0;
  }

  variableFrameRateControlEnabled = [stageCopy5 variableFrameRateControlEnabled];
  [(BWVISNode *)v66 setOutputDimensions:device];
  [(BWVISNode *)v66 setSphereVideoEnabled:v117 | enabled];
  [(BWVISNode *)v66 setFrameRateConversionEnabled:variableFrameRateControlEnabled];
  if (out)
  {
    [(BWVISNode *)v66 setOutputColorSpaceProperties:6];
  }

  if (conversionEnabled)
  {
    [(BWVISNode *)v66 setStabilizeDepthAttachments:1];
    [(BWVISNode *)v66 setOutputDepthDimensions:attachments];
  }

  [(BWVISNode *)v66 setMaxLossyCompressionLevel:depthDimensions];
  -[BWVISNode setFlipHorizontalExcludingIris:](v66, "setFlipHorizontalExcludingIris:", [pipelineCopy physicalMirroringForMovieRecordingEnabled]);
  [(BWVISNode *)v66 setVideoSTFEnabled:level];
  [(BWVISNode *)v66 setVideoGreenGhostMitigationEnabled:fEnabled];
  [(BWVISNode *)v66 setSmartStyleRenderingEnabled:renderingEnabled];
  [(BWVISNode *)v66 setSmartStyleReversibilityEnabled:styleRenderingEnabled];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v124 = [objc_msgSend(objc_msgSend(pipelineCopy "sourceConfiguration")];
  if (v124)
  {
    v125 = &unk_1F22455E0;
  }

  else
  {
    v125 = &unk_1F2245610;
  }

  if (v124)
  {
    v126 = &unk_1F22455F8;
  }

  else
  {
    v126 = &unk_1F2245628;
  }

  [dictionary setObject:v125 forKeyedSubscript:*off_1E798CEB0];
  [dictionary setObject:v126 forKeyedSubscript:*off_1E798CEB8];
  [(BWVISNode *)v66 setLowResImageUsedByVideoEncoderEnabled:reversibilityEnabled];
  [(BWVISNode *)v66 setPersonSegmentationRenderingEnabled:maskEnabled];
  [(BWVISNode *)v66 setProcessingSemaphore:sEnabled];
  v127 = MEMORY[0x1E696AEC0];
  name = [selfCopy name];
  if (configuration - 1 > 3)
  {
    v129 = @"None";
  }

  else
  {
    v129 = off_1E7999D58[configuration - 1];
  }

  -[BWNode setName:](v66, "setName:", [v127 stringWithFormat:@"%@ Stabilizer (%@)", name, v129]);
  [(BWVISNode *)v66 setPipelineTraceID:executionMode];
  if (([graphCopy addNode:v66 error:0] & 1) == 0 || (objc_msgSend(outputCopy, "connectOutput:toInput:pipelineStage:", v145, -[BWNode input](v66, "input"), d) & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_100:
    if (!v101)
    {
      goto LABEL_27;
    }

    goto LABEL_96;
  }

  if (v101)
  {
    CFRelease(v101);
  }

  return v66;
}

- (uint64_t)motionAttachmentsNode
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (double)irisVISCleanOutputRect
{
  if (self)
  {
    return *(self + 56);
  }

  else
  {
    return 0.0;
  }
}

@end