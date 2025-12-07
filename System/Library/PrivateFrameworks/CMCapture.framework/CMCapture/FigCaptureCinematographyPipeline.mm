@interface FigCaptureCinematographyPipeline
- (id)_buildPreviewOutputNetworkWithGraph:(id)result previewOutput:;
- (id)_buildVideoCaptureOutputNetworkWithGraph:(id)result videoCaptureOutput:;
- (id)depthOutputDimensions;
- (id)detectedObjectsOutput;
- (id)getSmartStyle;
- (id)globalMetadata;
- (id)loadInferenceNetworksForSmartStyle;
- (id)setSmartStyle:(id *)result;
- (uint64_t)_buildCinematographyPipeline:(BWNodeOutput *)pipeline videoSourceCaptureOutput:(uint64_t)output sourceSemanticMasksOutput:(BWNodeOutput *)masksOutput previewOutput:(BWNodeOutput *)previewOutput auxiliaryOutput:(void *)auxiliaryOutput sourceID:(void *)d graph:(void *)graph captureDevice:(uint64_t)self0 inferenceScheduler:;
- (uint64_t)cinematicVideoFocusDetectionsProvider;
- (uint64_t)previewOutputTransform;
- (uint64_t)semanticStyleSceneObserver;
- (uint64_t)sourceID;
- (uint64_t)videoCaptureOutputTransform;
- (void)dealloc;
- (void)initWithConfiguration:(BWNodeOutput *)configuration videoSourceCaptureOutput:(uint64_t)output sourceSemanticMasksOutput:(BWNodeOutput *)masksOutput previewOutput:(BWNodeOutput *)previewOutput auxiliaryOutput:(void *)auxiliaryOutput graph:(uint64_t)graph name:(void *)name sourceID:(void *)self0 captureDevice:(uint64_t)self1 inferenceScheduler:(_DWORD *)self2 errorOut:;
- (void)nextPreviewOutput;
- (void)nextVideoCaptureOutput;
@end

@implementation FigCaptureCinematographyPipeline

- (uint64_t)cinematicVideoFocusDetectionsProvider
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureCinematographyPipeline;
  [(FigCapturePipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(BWNodeOutput *)configuration videoSourceCaptureOutput:(uint64_t)output sourceSemanticMasksOutput:(BWNodeOutput *)masksOutput previewOutput:(BWNodeOutput *)previewOutput auxiliaryOutput:(void *)auxiliaryOutput graph:(uint64_t)graph name:(void *)name sourceID:(void *)self0 captureDevice:(uint64_t)self1 inferenceScheduler:(_DWORD *)self2 errorOut:
{
  if (!self)
  {
    return 0;
  }

  v25.receiver = self;
  v25.super_class = FigCaptureCinematographyPipeline;
  v19 = objc_msgSendSuper2(&v25, sel_initWithGraph_name_, auxiliaryOutput, graph);
  v20 = v19;
  if (v19)
  {
    v22 = [(FigCaptureCinematographyPipeline *)v19 _buildCinematographyPipeline:a2 videoSourceCaptureOutput:configuration sourceSemanticMasksOutput:output previewOutput:masksOutput auxiliaryOutput:previewOutput sourceID:name graph:auxiliaryOutput captureDevice:d inferenceScheduler:device];
    if (v22)
    {
      v23 = v22;
      fig_log_get_emitter();
      LODWORD(v24) = v23;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v12, v25.receiver, v25.super_class, v26, v27, v28, v29);
      if (scheduler)
      {
        *scheduler = v23;
      }

      return 0;
    }
  }

  return v20;
}

- (uint64_t)_buildCinematographyPipeline:(BWNodeOutput *)pipeline videoSourceCaptureOutput:(uint64_t)output sourceSemanticMasksOutput:(BWNodeOutput *)masksOutput previewOutput:(BWNodeOutput *)previewOutput auxiliaryOutput:(void *)auxiliaryOutput sourceID:(void *)d graph:(void *)graph captureDevice:(uint64_t)self0 inferenceScheduler:
{
  if (!result)
  {
    return result;
  }

  v15 = result;
  v148[0] = 0;
  v147 = 0;
  *(result + 32) = a2;
  if (masksOutput)
  {
    pipelineCopy = masksOutput;
  }

  else
  {
    pipelineCopy = pipeline;
  }

  v17 = [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.cinematic_video.color_inferences" priority:14];
  v131 = v15;
  pipelineCopy2 = pipeline;
  v133 = a2;
  [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.cinematic_video.depth" priority:14];
  [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.cinematic_video.cinematography" priority:14];
  masksOutputCopy2 = masksOutput;
  if (!a2)
  {
    previewOutputCopy = previewOutput;
    v53 = pipelineCopy;
    previewOutputCopy4 = previewOutputCopy;
    *(v15 + 72) = auxiliaryOutput;
    outputAspectRatio = [0 outputAspectRatio];
    graphCopy6 = 0;
    if (outputAspectRatio)
    {
      v52 = outputAspectRatio;
      dCopy = d;
      graphCopy5 = graph;
      goto LABEL_36;
    }

    v55 = 0;
    dCopy4 = d;
    graphCopy5 = graph;
LABEL_33:
    dCopy = dCopy4;
    v56 = [objc_msgSend(v55 "requiredFormat")];
    if (v56 > SHIDWORD(v56))
    {
      v52 = 3;
    }

    else
    {
      v52 = 4;
    }

    goto LABEL_36;
  }

  auxiliaryOutputCopy = auxiliaryOutput;
  v18 = *(a2 + 60);
  graphCopy6 = v18 == 3;
  if (v18 == 3)
  {
    previewOutputCopy2 = previewOutput;
    v134 = v18 == 3;
    v20 = objc_alloc_init(FigVideoCaptureConnectionConfiguration);
    [(FigCaptureConnectionConfiguration *)v20 setSourceConfiguration:*(a2 + 32)];
    [(FigVideoCaptureConnectionConfiguration *)v20 setVideoStabilizationMethod:3];
    v21 = [FigCaptureVISPipeline alloc];
    OUTLINED_FUNCTION_6_81();
    graphCopy6 = 0x5000000005;
    dCopy4 = d;
    OUTLINED_FUNCTION_8_62();
    v30 = OUTLINED_FUNCTION_10_56(v22, pipelineCopy, v23, v24, v29, v25, v26, v27, v28, v92, HIDWORD(v92), v98, v103, v104, SBYTE4(v104), v106, SHIDWORD(v106), v108, v110, v112, v114, v116, v118, BYTE4(v118), BYTE5(v118), SBYTE6(v118), HIBYTE(v118), v120[0], v120[1], v120[2], v120[3], v120[4], v122, v124);
    if (!v30)
    {
      OUTLINED_FUNCTION_3_19();
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_110();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v93, v99, v105, v107, v109, v111, v113, v115);
      OUTLINED_FUNCTION_3_19();
      emitter = fig_log_get_emitter();
      v88 = 4294954510;
      v89 = 220;
      goto LABEL_106;
    }

    output = [-[FigCaptureVISPipeline visNode](v30) output];
    v32 = [FigCaptureVISPipeline alloc];
    OUTLINED_FUNCTION_6_81();
    OUTLINED_FUNCTION_8_62();
    v41 = OUTLINED_FUNCTION_10_56(v33, previewOutputCopy2, v34, v35, v40, v36, v37, v38, v39, v93, HIDWORD(v93), v99, HIDWORD(v99), v105, SBYTE4(v105), v107, SHIDWORD(v107), v109, v111, v113, v115, v117, v119, BYTE4(v119), BYTE5(v119), SBYTE6(v119), HIBYTE(v119), v121[0], v121[1], v121[2], v121[3], v121[4], v123, v125);
    if (!v41)
    {
      OUTLINED_FUNCTION_3_19();
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_110();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v94, v100, *(&v100 + 1), v106, v108, v110, v112, v114);
      OUTLINED_FUNCTION_3_19();
      emitter = fig_log_get_emitter();
      v88 = 4294954510;
      v89 = 263;
      goto LABEL_106;
    }

    previewOutput = [-[FigCaptureVISPipeline visNode](v41) output];
    if (*(a2 + 57))
    {
      v42 = &unk_1F224A0E0;
    }

    else
    {
      v42 = 0;
    }

    if (*(a2 + 58))
    {
      v43 = &unk_1F224A0F8;
    }

    else
    {
      v43 = 0;
    }

    if (*(a2 + 59))
    {
      v44 = &unk_1F224A110;
    }

    else
    {
      v44 = 0;
    }

    BYTE12(v100) = 0;
    *(&v100 + 4) = 1;
    LOBYTE(v100) = 1;
    v45 = [BWSlaveFrameSynchronizerNode initWithDepthEnabled:"initWithDepthEnabled:numberOfInputs:syncSlaveForMasterPortTypes:separateDepthComponentsEnabled:preLTMThumbnailEnabledInputs:postColorProcessingThumbnailEnabledInputs:weightSegmentMapEnabledInputs:differentInputFormatsSupported:bufferSize:numberOfSlaveFramesToSkip:startEmittingMasterFramesBeforeSlaveStreamStarts:" numberOfInputs:0 syncSlaveForMasterPortTypes:2 separateDepthComponentsEnabled:0 preLTMThumbnailEnabledInputs:0 postColorProcessingThumbnailEnabledInputs:v42 weightSegmentMapEnabledInputs:v43 differentInputFormatsSupported:v44 bufferSize:v100 numberOfSlaveFramesToSkip:? startEmittingMasterFramesBeforeSlaveStreamStarts:?];
    [(BWNode *)v45 setName:@"REF/AUX sync node"];
    if (([v15 addNode:v45 error:&v147] & 1) == 0 || (-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v45, "inputs"), "objectAtIndexedSubscript:", 1), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", output) & 1) == 0) || (-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v45, "inputs"), "objectAtIndexedSubscript:", 0), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", previewOutput) & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_118();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v95);
      goto LABEL_86;
    }

    pipelineCopy = [(BWNode *)v45 output];
    if (*(a2 + 40) == 1)
    {
      previewOutputCopy3 = previewOutput;
      v46 = *(a2 + 56);
      graphCopy5 = graph;
      v47 = +[BWSmartStyleLearningNode newISPSMGProcessingSession:](BWSmartStyleLearningNode, "newISPSMGProcessingSession:", [graph device]);
      v48 = -[BWSmartStyleLearningNode initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:]([BWSmartStyleLearningNode alloc], "initWithOutputs:masksRefinerEnabled:propagateMasks:ispSMGProcessingSession:squareAspectRatioConfigEnabled:subjectRelightingPreviewVersion:", 1, 1, v46, v47, [objc_msgSend(*(a2 + 32) "requiredFormat")], objc_msgSend(objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider, "sharedCaptureSourceBackingsProvider"), "commonSettings"), "smartStyleRenderingVersion"));

      if (!v48)
      {
        goto LABEL_86;
      }

      [(BWNode *)v48 setName:@"Cinematic SmartStyle Learning"];
      [(BWSmartStyleLearningNode *)v48 setDisableWaitForCoefficientsOnFirstFrame:0];
      [(BWSmartStyleLearningNode *)v48 setSubjectRelightingEnabled:0];
      -[BWSmartStyleLearningNode setCameraInfoByPortType:](v48, "setCameraInfoByPortType:", [graph cameraInfoByPortType]);
      [(BWSmartStyleLearningNode *)v48 setSmartStyle:*(a2 + 48)];
      v146.receiver = v15;
      v146.super_class = FigCaptureCinematographyPipeline;
      if ((objc_msgSendSuper2(&v146, sel_addNode_error_, v48, &v147) & 1) == 0)
      {
        goto LABEL_107;
      }

      [(NSArray *)[(BWNode *)v48 inputs] objectAtIndexedSubscript:0];
      if (([OUTLINED_FUNCTION_129() connectOutput:pipelineCopy toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_107;
      }

      if (output)
      {
        [(NSArray *)[(BWNode *)v48 inputs] objectAtIndexedSubscript:1];
        if (([OUTLINED_FUNCTION_129() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
        {
          goto LABEL_107;
        }
      }

      pipelineCopy = [(BWNode *)v48 output];
      *(v15 + 64) = v48;
      graphCopy6 = v134;
      previewOutput = previewOutputCopy3;
    }

    else
    {
      graphCopy5 = graph;
      graphCopy6 = v134;
    }
  }

  else
  {
    dCopy4 = d;
    graphCopy5 = graph;
  }

  previewOutputCopy4 = previewOutput;
  *(v15 + 72) = auxiliaryOutputCopy;
  outputAspectRatio2 = [*(a2 + 32) outputAspectRatio];
  if (!outputAspectRatio2)
  {
    v53 = pipelineCopy;
    v55 = *(a2 + 32);
    goto LABEL_33;
  }

  v52 = outputAspectRatio2;
  v53 = pipelineCopy;
  dCopy = dCopy4;
LABEL_36:
  *(v15 + 48) = [[BWCinematicPerceptionNode alloc] initWithConvEngineSupportWithCaptureDevice:graphCopy5 scheduler:device priority:6 depthInferenceEnabled:graphCopy6 aspectRatio:v52];
  [*(v15 + 48) setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ %@", objc_msgSend(v15, "name"), @"Cinematic Perception"}];
  if (([v15 addNode:*(v15 + 48) error:&v147] & 1) == 0)
  {
    goto LABEL_107;
  }

  if (([dCopy connectOutput:v53 toInput:objc_msgSend(*(v15 + 48) pipelineStage:{"input"), v17}] & 1) == 0)
  {
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_110();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v95, v101, v104, v106, v108, v110, v112, v114);
    OUTLINED_FUNCTION_3_19();
    emitter = fig_log_get_emitter();
    v88 = 4294954516;
    v89 = 337;
LABEL_106:
    v148[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v88, "<<<< FigCaptureCinematographyPipeline >>>>", v89, graphCopy6, v86, v87, v97);
    goto LABEL_86;
  }

  output2 = [*(v15 + 48) output];
  v135 = graphCopy6;
  if ([graphCopy5 depthType] - 1 > 1)
  {
    output3 = output2;
    goto LABEL_44;
  }

  v58 = [[BWDepthSynchronizerNode alloc] initForStreaming:1 separateDepthComponentsEnabled:0];
  [v58 setName:@"Cinematography Depth Synchronizer"];
  [v58 setFlushOnDepthEOD:1];
  if (([v15 addNode:v58 error:&v147] & 1) == 0 || (objc_msgSend(v58, "imageInput"), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", output2) & 1) == 0) || (objc_msgSend(v58, "depthInput"), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", previewOutputCopy4) & 1) == 0))
  {
LABEL_107:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_118();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v95);
    goto LABEL_86;
  }

  output3 = [v58 output];
LABEL_44:
  v139 = +[FigCaptureCameraParameters sharedInstance];
  v59 = *off_1E798A0C0;
  sensorIDString = [objc_msgSend(graphCopy5 "captureStream")];
  v142 = 0u;
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  activePortTypes = [graphCopy5 activePortTypes];
  v62 = [activePortTypes countByEnumeratingWithState:&v142 objects:v141 count:16];
  v127 = v59;
  if (!v62)
  {
    goto LABEL_58;
  }

  v63 = v62;
  v64 = *v143;
  do
  {
    for (i = 0; i != v63; ++i)
    {
      if (*v143 != v64)
      {
        objc_enumerationMutation(activePortTypes);
      }

      v66 = *(*(&v142 + 1) + 8 * i);
      if (objc_msgSend_isEqualToString_(v66))
      {
        bravoTelephotoCaptureStream = [graph bravoTelephotoCaptureStream];
LABEL_53:
        sensorIDString = [bravoTelephotoCaptureStream sensorIDString];
        v59 = v66;
        continue;
      }

      if (objc_msgSend_isEqualToString_(v66))
      {
        bravoTelephotoCaptureStream = [graph pearlInfraredCaptureStream];
        goto LABEL_53;
      }

      if (objc_msgSend_isEqualToString_(v66))
      {
        v59 = v66;
      }
    }

    v63 = [activePortTypes countByEnumeratingWithState:&v142 objects:v141 count:16];
  }

  while (v63);
LABEL_58:
  isEqualToString = objc_msgSend_isEqualToString_(v59);
  LODWORD(v69) = 1.0;
  graphCopy6 = graph;
  if ((isEqualToString & 1) == 0)
  {
    [graph requestedZoomFactorRelativeToPortType:{v127, v69}];
  }

  v70 = [(FigCaptureCameraParameters *)v139 portraitSceneMonitoringParametersForPortType:v59 sensorIDString:sensorIDString zoomFactorRelativeToWidePortType:v69];
  videoDepthConfiguration = [*(v15 + 48) videoDepthConfiguration];
  if (a2)
  {
    v72 = *(a2 + 16);
  }

  else
  {
    v72 = 0;
  }

  v73 = [FigCaptureConnectionConfigurationWithSinkType(v72 4)];
  if (pipelineCopy2)
  {
    v74 = masksOutputCopy2 == 0;
  }

  else
  {
    v74 = 1;
  }

  v75 = !v74;
  v76 = [BWRealtimeCinematographyNode alloc];
  if (v133)
  {
    v77 = *(v133 + 8);
    [graph simulatedAperture];
    v78 = *(v133 + 40);
  }

  else
  {
    [graph simulatedAperture];
    v77 = 0;
    v78 = 0;
  }

  LOBYTE(v95) = v73 == 0;
  *(v131 + 56) = [(BWRealtimeCinematographyNode *)v76 initWithObjectMetadataIdentifiers:v77 cachedSimulatedAperture:graph captureDevice:v70 tuningParameters:videoDepthConfiguration videoDepthConfiguration:v78 & 1 smartStyleLearningEnabled:v75 highResolutionInputEnabled:v95 transformCinematographyDetectionsForMovieFileOutput:?];
  [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", objc_msgSend(v131, "name"), @"Cinematography"];
  [OUTLINED_FUNCTION_9_67() setName:?];
  if (([v131 addNode:*(v131 + 56) error:&v147] & 1) == 0)
  {
    goto LABEL_104;
  }

  if (v135)
  {
    output4 = output3;
    goto LABEL_77;
  }

  graphCopy6 = &OBJC_IVAR___BWFigVideoCaptureDevice__deviceMotionActivityDetector;
  *(v131 + 40) = [[BWVideoDepthNode alloc] initWithInferenceScheduler:device captureDevice:graph videoDepthConfiguration:videoDepthConfiguration extraDepthOutputRetainedBufferCount:0 error:v148];
  v80 = v148[0];
  if (v148[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_35();
    LODWORD(v96) = v80;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v96);
    goto LABEL_86;
  }

  [*(v131 + 40) setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ %@", objc_msgSend(v131, "name"), @"Video Depth Node"}];
  if (([v131 addNode:*(v131 + 40) error:&v147] & 1) == 0 || (objc_msgSend(*(v131 + 40), "input"), (objc_msgSend(OUTLINED_FUNCTION_129(), "connectOutput:toInput:pipelineStage:", output3) & 1) == 0))
  {
LABEL_104:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_118();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v96);
    goto LABEL_86;
  }

  output4 = [*(v131 + 40) output];
LABEL_77:
  [OUTLINED_FUNCTION_9_67() input];
  if (([OUTLINED_FUNCTION_129() connectOutput:output4 toInput:? pipelineStage:?] & 1) == 0)
  {
    OUTLINED_FUNCTION_3_19();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_110();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v96, v102, v104, v106, v108, v110, v112, v114);
    OUTLINED_FUNCTION_3_19();
    emitter = fig_log_get_emitter();
    v88 = 4294954516;
    v89 = 406;
    goto LABEL_106;
  }

  if (v75)
  {
    [objc_msgSend(OUTLINED_FUNCTION_9_67() "inputs")];
    if (([OUTLINED_FUNCTION_129() connectOutput:pipelineCopy2 toInput:? pipelineStage:?] & 1) == 0)
    {
      OUTLINED_FUNCTION_3_19();
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_110();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v96, v102, v104, v106, v108, v110, v112, v114);
      OUTLINED_FUNCTION_3_19();
      emitter = fig_log_get_emitter();
      v88 = 4294954516;
      v89 = 409;
      goto LABEL_106;
    }
  }

  if (v133)
  {
    v81 = *(v133 + 16);
  }

  else
  {
    v81 = 0;
  }

  if ([v81 count] >= 2 && (objc_msgSend(OUTLINED_FUNCTION_9_67(), "movieFileOutput"), (v83 = -[FigCaptureCinematographyPipeline _buildVideoCaptureOutputNetworkWithGraph:videoCaptureOutput:](v131)) != 0) || (!v133 ? (v82 = 0) : (v82 = *(v133 + 24)), objc_msgSend(v82, "count") >= 2 && (objc_msgSend(OUTLINED_FUNCTION_9_67(), "previewOutput"), (v83 = -[FigCaptureCinematographyPipeline _buildPreviewOutputNetworkWithGraph:previewOutput:](v131)) != 0)))
  {
    v84 = v83;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_35();
    LODWORD(v96) = v84;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v96);
  }

LABEL_86:
  result = v148[0];
  if (!v148[0])
  {
    if (v147)
    {
      return [v147 code];
    }
  }

  return result;
}

- (id)_buildVideoCaptureOutputNetworkWithGraph:(id)result videoCaptureOutput:
{
  if (result)
  {
    OUTLINED_FUNCTION_11_55();
    v2 = [BWFanOutNode alloc];
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = *(v3 + 16);
    }

    else
    {
      v4 = 0;
    }

    v5 = OUTLINED_FUNCTION_12_54([v4 count]);

    v6 = v5;
    *(v1 + 80) = v6;
    [v6 setName:@"Cinematography Video Capture Splitter Node"];
    *(v1 + 88) = 0;
    v7.receiver = v1;
    v7.super_class = FigCaptureCinematographyPipeline;
    if (objc_msgSendSuper2(&v7, sel_addNode_error_, v5, &v8))
    {
      if ((OUTLINED_FUNCTION_13_44([v5 input]) & 1) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    result = v8;
    if (v8)
    {
      return [v8 code];
    }
  }

  return result;
}

- (id)_buildPreviewOutputNetworkWithGraph:(id)result previewOutput:
{
  if (result)
  {
    OUTLINED_FUNCTION_11_55();
    v2 = [BWFanOutNode alloc];
    v3 = *(v1 + 32);
    if (v3)
    {
      v4 = *(v3 + 24);
    }

    else
    {
      v4 = 0;
    }

    v5 = OUTLINED_FUNCTION_12_54([v4 count]);

    v6 = v5;
    *(v1 + 96) = v6;
    [v6 setName:@"Cinematography Preview Splitter Node"];
    *(v1 + 104) = 0;
    v7.receiver = v1;
    v7.super_class = FigCaptureCinematographyPipeline;
    if (objc_msgSendSuper2(&v7, sel_addNode_error_, v5, &v8))
    {
      if ((OUTLINED_FUNCTION_13_44([v5 input]) & 1) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    result = v8;
    if (v8)
    {
      return [v8 code];
    }
  }

  return result;
}

- (id)depthOutputDimensions
{
  if (result)
  {
    videoDepthConfiguration = [result[6] videoDepthConfiguration];

    return [videoDepthConfiguration outputDimensions];
  }

  return result;
}

- (id)detectedObjectsOutput
{
  if (result)
  {
    return [result[7] detectedObjectsOutput];
  }

  return result;
}

- (id)globalMetadata
{
  if (result)
  {
    return [result[7] globalMetadata];
  }

  return result;
}

- (id)setSmartStyle:(id *)result
{
  if (result)
  {
    return [result[8] setSmartStyle:a2];
  }

  return result;
}

- (id)getSmartStyle
{
  if (result)
  {
    return [result[8] smartStyle];
  }

  return result;
}

- (id)loadInferenceNetworksForSmartStyle
{
  if (result)
  {
    return [result[8] loadInferenceNetwork];
  }

  return result;
}

- (uint64_t)semanticStyleSceneObserver
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (void)nextVideoCaptureOutput
{
  if (result)
  {
    v1 = result;
    v2 = result[10];
    v3 = *(v1 + 22);
    if (v2)
    {
      if ([objc_msgSend(v2 "outputs")] > v3)
      {
        result = [objc_msgSend(v1[10] "outputs")];
LABEL_7:
        ++*(v1 + 22);
        return result;
      }
    }

    else if (!v3)
    {
      result = [v1[7] movieFileOutput];
      goto LABEL_7;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  return result;
}

- (uint64_t)videoCaptureOutputTransform
{
  if (self)
  {
    if (*(self + 80))
    {
      movieFileOutput = [objc_msgSend(*(self + 80) "outputs")];
    }

    else
    {
      movieFileOutput = [*(self + 56) movieFileOutput];
    }

    v2 = movieFileOutput;
    if (movieFileOutput)
    {
      while (1)
      {
        formatRequirements = [v2 formatRequirements];
        if ([formatRequirements width])
        {
          if ([formatRequirements height])
          {
            break;
          }
        }

        v2 = [objc_msgSend(objc_msgSend(objc_msgSend(v2 "node")];
        if (!v2)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      formatRequirements = 0;
    }

    [formatRequirements width];
    [formatRequirements height];
  }

  return OUTLINED_FUNCTION_3_19();
}

- (void)nextPreviewOutput
{
  if (result)
  {
    v1 = result;
    v2 = result[12];
    v3 = *(v1 + 26);
    if (v2)
    {
      if ([objc_msgSend(v2 "outputs")] > v3)
      {
        result = [objc_msgSend(v1[12] "outputs")];
LABEL_7:
        ++*(v1 + 26);
        return result;
      }
    }

    else if (!v3)
    {
      result = [v1[7] previewOutput];
      goto LABEL_7;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  return result;
}

- (uint64_t)previewOutputTransform
{
  if (self)
  {
    if (*(self + 96))
    {
      previewOutput = [objc_msgSend(*(self + 96) "outputs")];
    }

    else
    {
      previewOutput = [*(self + 56) previewOutput];
    }

    v2 = previewOutput;
    if (previewOutput)
    {
      while (1)
      {
        formatRequirements = [v2 formatRequirements];
        if ([formatRequirements width])
        {
          if ([formatRequirements height])
          {
            break;
          }
        }

        v2 = [objc_msgSend(objc_msgSend(objc_msgSend(v2 "node")];
        if (!v2)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      formatRequirements = 0;
    }

    [formatRequirements width];
    [formatRequirements height];
  }

  return OUTLINED_FUNCTION_3_19();
}

- (uint64_t)sourceID
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

@end