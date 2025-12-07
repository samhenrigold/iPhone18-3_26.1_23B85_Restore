@interface FigCaptureMetadataSinkPipeline
- (id)_buildMetadataDetectorSinkPipeline:(void *)pipeline graph:(void *)graph mrcSourceOutput:(void *)output captureDevice:(void *)device mrcOutputsOut:(uint64_t)out inferenceScheduler:;
- (id)_buildSceneClassificationPipeline:(uint64_t)pipeline graph:(void *)graph upstreamOutput:(uint64_t)output metadataGatingNode:(uint64_t)node captureDevice:(uint64_t)device inferenceScheduler:(void *)scheduler outputOut:;
- (id)detectedObjectBoxedMetadataOutputs;
- (id)extendForNodeOutputs:(void *)outputs withConnectionConfiguration:;
- (id)mrcLowPowerModeEnabled;
- (id)removeNodeOutputs:(void *)outputs withConnectionConfiguration:;
- (id)setDiscardsFaceDetectionSampleData:(id *)result;
- (id)setDiscardsFaceTrackingSampleData:(id *)result;
- (id)setDiscardsMRCSampleData:(id *)result;
- (id)setFaceTrackingSuspended:(id *)result;
- (id)setRectOfInterest:(double)interest;
- (id)setSemanticStyleSceneObserver:(id *)result;
- (uint64_t)_buildMetadataSinkPipeline:(uint64_t)result graph:(uint64_t)graph videoPreviewOutput:(uint64_t)output offlineVISMotionDataSourceOutput:(id)sourceOutput metadataSourceOutputsByCategory:(BWNodeOutput *)category captureDevice:(void *)device faceTrackingPipelineStage:(void *)stage clientAuditToken:(uint64_t)token inferenceScheduler:(__int128 *)scheduler delegate:(uint64_t)self0;
- (uint64_t)mrcSceneObserver;
- (uint64_t)setMrcSuspended:(uint64_t)result;
- (uint64_t)smartCameraInferenceOutput;
- (uint64_t)sourceDeviceType;
- (uint64_t)sourceID;
- (void)_buildFaceTrackingPipeline:(uint64_t)pipeline graph:(void *)graph videoCaptureOutput:(void *)output pipelineStage:;
- (void)_buildMetadataObjectRemoteQueueSinkPipeline:(void *)pipeline graph:(void *)graph metadataNodeOutputs:(uint64_t)outputs videoPreviewEnabled:(uint64_t)enabled delegate:(__int128 *)delegate clientAuditToken:;
- (void)_buildPreviewHistogramSinkPipeline:(void *)pipeline graph:(void *)graph videoPreviewHistogramOutput:;
- (void)dealloc;
- (void)initWithConfiguration:(uint64_t)configuration graph:(uint64_t)graph name:(void *)name videoPreviewOutput:(BWNodeOutput *)output offlineVISMotionDataSourceOutput:(void *)sourceOutput metadataSourceOutputsByCategory:(void *)category captureDevice:(const char *)device faceTrackingPipelineStage:(__int128 *)self0 clientAuditToken:(uint64_t)self1 inferenceScheduler:(const char *)self2 delegate:;
- (void)setSceneClassifierSuspended:(void *)result;
@end

@implementation FigCaptureMetadataSinkPipeline

- (uint64_t)sourceDeviceType
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)sourceID
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (uint64_t)smartCameraInferenceOutput
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

- (uint64_t)mrcSceneObserver
{
  if (result)
  {
    if (*(result + 80))
    {
      return 0;
    }

    else
    {
      return *(result + 56);
    }
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMetadataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (id)_buildMetadataDetectorSinkPipeline:(void *)pipeline graph:(void *)graph mrcSourceOutput:(void *)output captureDevice:(void *)device mrcOutputsOut:(uint64_t)out inferenceScheduler:
{
  if (result)
  {
    v9 = result;
    v44 = 0;
    if (a2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 0;
    }

    v38 = +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.mrc", [v10 sourceConfiguration]), 0, 1);
    [graph setName:@"MRC"];
    LODWORD(v11) = 30.0;
    [graph setMaxSampleDataOutputRate:v11];
    if (a2)
    {
      v12 = FigCaptureMetadataObjectConfigurationRequiresMRCNode(*(a2 + 8));
      v13 = FigCaptureMetadataObjectConfigurationRequiresAppClipCodeNode(*(a2 + 8));
      v14 = FigCaptureMetadataObjectConfigurationRequiresTextLocalization(*(a2 + 8));
      v15 = *(a2 + 49);
      v16 = *(a2 + 33);
      v17 = [BWMetadataDetectorGatingNode alloc];
      if (v16 == 1)
      {
        v18 = [(BWMetadataDetectorGatingNode *)v17 initWithSceneClassifierVersion:*(a2 + 34) | (*(a2 + 38) << 32) mrcEnabled:v12 appClipCodeEnabled:v13 textLocalizationEnabled:v14 lowPowerModeEnabled:*(a2 + 32) compressed8BitInputEnabled:v15];
        goto LABEL_9;
      }

      v19 = *(a2 + 32);
    }

    else
    {
      v12 = FigCaptureMetadataObjectConfigurationRequiresMRCNode(0);
      v13 = FigCaptureMetadataObjectConfigurationRequiresAppClipCodeNode(0);
      v14 = FigCaptureMetadataObjectConfigurationRequiresTextLocalization(0);
      v17 = [BWMetadataDetectorGatingNode alloc];
      v15 = 0;
      v19 = 0;
    }

    v18 = [(BWMetadataDetectorGatingNode *)v17 initWithMRCEnabled:v12 appClipCodeEnabled:v13 textLocalizationEnabled:v14 lowPowerModeEnabled:v19 & 1 compressed8BitInputEnabled:v15];
LABEL_9:
    v20 = v18;
    v43.receiver = v9;
    v43.super_class = FigCaptureMetadataSinkPipeline;
    if ((objc_msgSendSuper2(&v43, sel_addNode_error_, v20, &v44) & 1) == 0)
    {
      [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
      goto LABEL_25;
    }

    if (([pipeline connectOutput:graph toInput:-[BWNode input](v20 pipelineStage:{"input"), v38}] & 1) == 0)
    {
      [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
      goto LABEL_25;
    }

    v9[7] = v20;
    v21 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[BWNode outputs](v20, "outputs"), "count")}];
    v22 = v21;
    if (v12)
    {
      v34 = v21;
      v23 = objc_alloc_init(BWMRCNode);
      if (a2)
      {
        v24 = *(a2 + 8);
        v25 = *(a2 + 32);
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      -[BWMRCNode setMrcIdentifiers:](v23, "setMrcIdentifiers:", [v24 metadataIdentifiers]);
      [v24 metadataRectOfInterest];
      [(BWMRCNode *)v23 setRectOfInterest:?];
      [(BWMRCNode *)v23 setLowPowerModeEnabled:v25 & 1];
      [(BWMRCNode *)v23 setDetectedResultsObserver:[(BWMetadataDetectorGatingNode *)v20 mrcResultsObserver]];
      v42.receiver = v9;
      v42.super_class = FigCaptureMetadataSinkPipeline;
      if ((objc_msgSendSuper2(&v42, sel_addNode_error_, v23, &v44) & 1) == 0)
      {
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
        goto LABEL_25;
      }

      v9[8] = v23;
      if (([pipeline connectOutput:-[BWMetadataDetectorGatingNode mrcOutput](v20 toInput:"mrcOutput") pipelineStage:{objc_msgSend(v9[8], "input"), +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", @"com.apple.coremedia.capture.mrc.barcode", 0, 0)}] & 1) == 0)
      {
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
        goto LABEL_25;
      }

      v22 = v34;
      [v34 addObject:{-[BWNode output](v23, "output")}];
    }

    if (v13)
    {
      v26 = [[BWAppClipCodeNode alloc] initWithProcessingQueuePriority:[(BWPipelineStage *)v38 priority]];
      [(BWAppClipCodeNode *)v26 setDetectedResultsObserver:[(BWMetadataDetectorGatingNode *)v20 appClipCodeResultsObserver]];
      v41.receiver = v9;
      v41.super_class = FigCaptureMetadataSinkPipeline;
      if ((objc_msgSendSuper2(&v41, sel_addNode_error_, v26, &v44) & 1) == 0)
      {
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
        goto LABEL_25;
      }

      if (([pipeline connectOutput:-[BWMetadataDetectorGatingNode appClipCodeOutput](v20 toInput:"appClipCodeOutput") pipelineStage:{-[BWNode input](v26, "input"), +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", @"com.apple.coremedia.capture.mrc.app-clip-code", 0, 0)}] & 1) == 0)
      {
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
        goto LABEL_25;
      }

      [v22 addObject:{-[BWNode output](v26, "output")}];
    }

    if (!v14)
    {
LABEL_22:
      if (device)
      {
        *device = v22;
      }

      [output registerForAEMatrixMetadata];
      goto LABEL_25;
    }

    v27 = [[BWInferenceNode alloc] initWithConvEngineSupportWithCaptureDevice:output scheduler:out priority:6];
    [(BWNode *)v27 setName:@"Text Localization"];
    if (a2)
    {
      v28 = *(a2 + 96);
      if (v28 >= 0)
      {
        v29 = *(a2 + 96);
      }

      else
      {
        v29 = -v28;
      }

      if (v29 == 90)
      {
        v30 = v22;
        v31 = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v28 = 0;
    }

    v30 = v22;
    if (v28 < 0)
    {
      v28 = -v28;
    }

    v31 = v28 == 270;
LABEL_47:
    textLocalizationResultsObserver = [(BWMetadataDetectorGatingNode *)v20 textLocalizationResultsObserver];
    [(BWInferenceNode *)v27 setPassthroughInputSampleBuffer:0];
    objc_initWeak(location, v27);
    objc_initWeak(&from, textLocalizationResultsObserver);
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v48[3] = 0;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __msp_configureTextLocalizationNode_block_invoke;
    v45[3] = &unk_1E799CB28;
    objc_copyWeak(&v46, &from);
    v45[4] = v48;
    objc_copyWeak(&v47, location);
    [(BWInferenceNode *)v27 setPostprocessFilter:v45];
    v33 = +[BWTextLocalizationInferenceConfiguration configuration];
    [v33 setLogger:{objc_msgSend(objc_loadWeak(&from), "logger")}];
    [v33 setInferenceInputUsesPortraitOrientation:v31];
    -[BWInferenceNode addInferenceOfType:version:configuration:](v27, "addInferenceOfType:version:configuration:", 116, [v33 version] & 0xFFFFFFFFFFFFLL, v33);
    objc_destroyWeak(&v47);
    objc_destroyWeak(&v46);
    _Block_object_dispose(v48, 8);
    objc_destroyWeak(&from);
    objc_destroyWeak(location);
    v40.receiver = v9;
    v40.super_class = FigCaptureMetadataSinkPipeline;
    if (objc_msgSendSuper2(&v40, sel_addNode_error_, v27, &v44))
    {
      if ([pipeline connectOutput:-[BWMetadataDetectorGatingNode textLocalizationOutput](v20 toInput:"textLocalizationOutput") pipelineStage:{-[BWNode input](v27, "input"), +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", @"com.apple.coremedia.capture.mrc.text-localization", 0, 0)}])
      {
        v22 = v30;
        [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:v27 graph:v30 mrcSourceOutput:? captureDevice:? mrcOutputsOut:? inferenceScheduler:?];
        goto LABEL_22;
      }

      [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
    }

    else
    {
      [FigCaptureMetadataSinkPipeline _buildMetadataDetectorSinkPipeline:graph:mrcSourceOutput:captureDevice:mrcOutputsOut:inferenceScheduler:];
    }

LABEL_25:
    result = v44;
    if (v44)
    {
      return [v44 code];
    }
  }

  return result;
}

- (void)initWithConfiguration:(uint64_t)configuration graph:(uint64_t)graph name:(void *)name videoPreviewOutput:(BWNodeOutput *)output offlineVISMotionDataSourceOutput:(void *)sourceOutput metadataSourceOutputsByCategory:(void *)category captureDevice:(const char *)device faceTrackingPipelineStage:(__int128 *)self0 clientAuditToken:(uint64_t)self1 inferenceScheduler:(const char *)self2 delegate:
{
  if (!self)
  {
    return 0;
  }

  if (a2)
  {
    v20 = *(a2 + 8);
  }

  else
  {
    v20 = 0;
  }

  v31.receiver = self;
  v31.super_class = FigCaptureMetadataSinkPipeline;
  v21 = objc_msgSendSuper2(&v31, sel_initWithGraph_name_sinkID_, configuration, graph, [objc_msgSend(v20 "sinkConfiguration")]);
  if (v21)
  {
    if (a2)
    {
      v21[16] = [objc_msgSend(*(a2 + 8) "sourceConfiguration")];
      v23 = *(a2 + 8);
    }

    else
    {
      v27 = [objc_msgSend(0 "sourceConfiguration")];
      v23 = 0;
      v21[16] = v27;
    }

    *(v21 + 34) = [v23 underlyingDeviceType];
    v24 = stage[1];
    v30[0] = *stage;
    v30[1] = v24;
    v25 = [FigCaptureMetadataSinkPipeline _buildMetadataSinkPipeline:v21 graph:a2 videoPreviewOutput:configuration offlineVISMotionDataSourceOutput:name metadataSourceOutputsByCategory:output captureDevice:sourceOutput faceTrackingPipelineStage:category clientAuditToken:device inferenceScheduler:v30 delegate:token];
    if (v25)
    {
      v26 = v25;
      fig_log_get_emitter();
      LODWORD(v28) = v26;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v12, scheduler, v29, token, device, *&v30[0], DWORD2(v30[0]));

      return 0;
    }
  }

  return v21;
}

- (uint64_t)_buildMetadataSinkPipeline:(uint64_t)result graph:(uint64_t)graph videoPreviewOutput:(uint64_t)output offlineVISMotionDataSourceOutput:(id)sourceOutput metadataSourceOutputsByCategory:(BWNodeOutput *)category captureDevice:(void *)device faceTrackingPipelineStage:(void *)stage clientAuditToken:(uint64_t)token inferenceScheduler:(__int128 *)scheduler delegate:(uint64_t)self0
{
  stageCopy = stage;
  tokenCopy = token;
  categoryCopy = category;
  if (!result)
  {
    return result;
  }

  v14 = result;
  v173[0] = 0;
  v172 = 0;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  deviceCopy = device;
  v123 = array;
  if (!sourceOutput)
  {
    goto LABEL_37;
  }

  if (graph)
  {
    v16 = FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(*(graph + 8));
    v17 = *(graph + 8);
  }

  else
  {
    v16 = FigCaptureMetadataObjectConfigurationRequiresMetadataDetectorPipeline(0);
    v17 = 0;
  }

  delegateCopy2 = delegate;
  v19 = FigCaptureMetadataObjectConfigurationRequiresSceneClassification(v17);
  v20 = v19;
  if (v16)
  {
    v21 = 2;
  }

  else
  {
    v21 = 1;
  }

  if (v19)
  {
    v22 = v21;
  }

  else
  {
    v22 = v16;
  }

  if (graph)
  {
    v23 = *(graph + 8);
  }

  else
  {
    v23 = 0;
  }

  v24 = FigCaptureMetadataObjectConfigurationRequiresVideoPreviewHistogramPipeline(v23);
  v26 = v24;
  v27 = (v22 + v24);
  if (v27 >= 2)
  {
    if (graph)
    {
      v28 = *(graph + 8);
    }

    else
    {
      v28 = 0;
    }

    +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.video-preview-metadata-fanout", [v28 sourceConfiguration]), 0, 1);
    v29 = [[BWFanOutNode alloc] initWithFanOutCount:v27 mediaType:1986618469];
    [(BWNode *)v29 setName:@"Video Preview Metadata Fan Out"];
    v171.receiver = v14;
    v171.super_class = FigCaptureMetadataSinkPipeline;
    if ((objc_msgSendSuper2(&v171, sel_addNode_error_, v29, &v172) & 1) == 0 || (-[BWNode input](v29, "input"), ([OUTLINED_FUNCTION_40_9() connectOutput:sourceOutput toInput:? pipelineStage:?] & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_36();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
      goto LABEL_101;
    }

    if (v16)
    {
      sourceOutput = [(NSArray *)[(BWNode *)v29 outputs] objectAtIndexedSubscript:0];
    }

    else
    {
      sourceOutput = 0;
    }

    delegateCopy2 = delegate;
    if (v20)
    {
      v30 = [(NSArray *)[(BWNode *)v29 outputs] objectAtIndexedSubscript:v16];
    }

    else
    {
      v30 = 0;
    }

    array = v123;
    if (v26)
    {
      v31 = [(NSArray *)[(BWNode *)v29 outputs] objectAtIndexedSubscript:v22];
    }

    else
    {
      v31 = 0;
    }

    device = deviceCopy;
    if (!sourceOutput)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v16)
  {
    v30 = 0;
    v31 = 0;
    device = deviceCopy;
    array = v123;
LABEL_33:
    *&v130 = 0;
    v32 = OUTLINED_FUNCTION_7_76();
    v36 = [(FigCaptureMetadataSinkPipeline *)v32 _buildMetadataDetectorSinkPipeline:v33 graph:v34 mrcSourceOutput:sourceOutput captureDevice:stageCopy mrcOutputsOut:v35 inferenceScheduler:delegateCopy2];
    v173[0] = v36;
    if (v36)
    {
      v111 = v36;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_5_36();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v111);
      goto LABEL_101;
    }

    v25 = v130;
LABEL_35:
    sourceOutput = v30;
    if (!v30)
    {
LABEL_36:
      sourceOutput = v31;
      if (!v31)
      {
        goto LABEL_37;
      }

      goto LABEL_105;
    }

LABEL_109:
    *&v130 = 0;
    v109 = [(FigCaptureMetadataSinkPipeline *)v14 _buildSceneClassificationPipeline:graph graph:v25 upstreamOutput:sourceOutput metadataGatingNode:*(v14 + 56) captureDevice:stageCopy inferenceScheduler:delegateCopy2 outputOut:&v130];
    v173[0] = v109;
    if (v109)
    {
      goto LABEL_118;
    }

    if (v130)
    {
      [array2 addObject:?];
    }

    goto LABEL_36;
  }

  device = deviceCopy;
  if (v20)
  {
    v31 = 0;
    array = v123;
    goto LABEL_109;
  }

  array = v123;
  if (v24)
  {
LABEL_105:
    v106 = OUTLINED_FUNCTION_7_76();
    v109 = [(FigCaptureMetadataSinkPipeline *)v106 _buildPreviewHistogramSinkPipeline:v107 graph:v108 videoPreviewHistogramOutput:sourceOutput];
    v173[0] = v109;
    if (!v109)
    {
      [*(v14 + 104) output];
      [OUTLINED_FUNCTION_47() addObject:?];
      goto LABEL_37;
    }

LABEL_118:
    v112 = v109;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_36();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v112);
    goto LABEL_101;
  }

LABEL_37:
  outputCopy = output;
  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  obj = [device allKeys];
  v37 = [obj countByEnumeratingWithState:&v167 objects:v166 count:16];
  graphCopy = graph;
  if (!v37)
  {
    goto LABEL_81;
  }

  v38 = v37;
  v39 = *v168;
  v120 = v14;
  do
  {
    v40 = 0;
    do
    {
      if (*v168 != v39)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v167 + 1) + 8 * v40);
      if ([v41 isEqualToNumber:&unk_1F2246CC0])
      {
        v42 = [OUTLINED_FUNCTION_9_63() objectForKeyedSubscript:?];
        if ([v42 mediaType] != 1986618469)
        {
          if ([v42 mediaType] != 1835365473)
          {
            goto LABEL_76;
          }

          v43 = array;
          v44 = v42;
          goto LABEL_75;
        }

        v81 = tokenCopy;
        if (!tokenCopy)
        {
          if (graph)
          {
            v82 = *(graph + 8);
          }

          else
          {
            v82 = 0;
          }

          v81 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.facetracking", [v82 sourceConfiguration]), 13);
        }

        tokenCopy = v81;
        v78 = [(FigCaptureMetadataSinkPipeline *)v14 _buildFaceTrackingPipeline:graph graph:outputCopy videoCaptureOutput:v42 pipelineStage:v81];
        v173[0] = v78;
        if (v78)
        {
          goto LABEL_107;
        }

        v80 = 112;
LABEL_73:
        [*(v14 + v80) output];
LABEL_74:
        v43 = OUTLINED_FUNCTION_47();
LABEL_75:
        [v43 addObject:v44];
        goto LABEL_76;
      }

      if (([v41 isEqualToNumber:&unk_1F2246C90] & 1) == 0 && !objc_msgSend(v41, "isEqualToNumber:", &unk_1F2246CA8))
      {
        [OUTLINED_FUNCTION_9_63() objectForKeyedSubscript:?];
        goto LABEL_74;
      }

      v45 = [OUTLINED_FUNCTION_9_63() objectForKeyedSubscript:?];
      if (v45 && !*(v14 + 120))
      {
        v46 = v45;
        if (graph)
        {
          metadataIdentifiers = [*(graph + 8) metadataIdentifiers];
          if ([*(graph + 56) count] && *(graph + 48) == 1)
          {
            array3 = [MEMORY[0x1E695DF70] array];
            v162 = 0u;
            v163 = 0u;
            v164 = 0u;
            v165 = 0u;
            v48 = *(graph + 56);
            v56 = OUTLINED_FUNCTION_11_51(array3, v49, v50, v51, v52, v53, v54, v55, v113, v114, v115, v116, v117, stageCopy, categoryCopy, v120, graphCopy, deviceCopy, v123, outputCopy, tokenCopy, metadataIdentifiers, obj, array2, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, *(&v150 + 1), v151, *(&v151 + 1), v152.receiver, v152.super_class, v153, v154, v155, v156, v157, v158, v159, v160, v161);
            if (v56)
            {
              v57 = v56;
              v58 = *v163;
              do
              {
                for (i = 0; i != v57; ++i)
                {
                  if (*v163 != v58)
                  {
                    objc_enumerationMutation(v48);
                  }

                  v60 = [array3 addObject:{CMMetadataFormatDescriptionGetIdentifiers(objc_msgSend(*(*(&v162 + 1) + 8 * i), "formatDescription"))}];
                }

                v57 = OUTLINED_FUNCTION_11_51(v60, v61, v62, v63, v64, v65, v66, v67, v113, v114, v115, v116, v117, stageCopy, categoryCopy, v120, graphCopy, deviceCopy, v123, outputCopy, tokenCopy, v127, obj, array2, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, *(&v148 + 1), v149, *(&v149 + 1), v150, *(&v150 + 1), v151, *(&v151 + 1), v152.receiver, v152.super_class, v153, v154, v155, v156, v157, v158, v159, v160, v161);
              }

              while (v57);
              v14 = v120;
              graph = graphCopy;
            }

            array = v123;
          }

          *&v130 = 0;
          [*(graph + 8) metadataRectOfInterest];
          OUTLINED_FUNCTION_2_3();
          v68 = *(graph + 8);
        }

        else
        {
          [0 metadataIdentifiers];
          [0 count];
          *&v130 = 0;
          [0 metadataRectOfInterest];
          OUTLINED_FUNCTION_2_3();
          v68 = 0;
        }

        [v68 emitsEmptyObjectDetectionMetadata];
        v69 = OUTLINED_FUNCTION_3();
        v78 = FigCaptureBuildObjectDetectionPipeline(v70, v71, v72, v73, v46, v74, v69, v75, v76, v77);
        v173[0] = v78;
        if (v78)
        {
LABEL_107:
          v110 = v78;
          fig_log_get_emitter();
          OUTLINED_FUNCTION_5_36();
          LODWORD(v113) = v110;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v113);
          goto LABEL_101;
        }

        v79 = v130;
        *(v14 + 120) = v79;
        if ([v79 metadataObjectOutputEnabled])
        {
          v80 = 120;
          goto LABEL_73;
        }
      }

LABEL_76:
      ++v40;
    }

    while (v40 != v38);
    v83 = [obj countByEnumeratingWithState:&v167 objects:v166 count:16];
    v38 = v83;
  }

  while (v83);
LABEL_81:
  if (!categoryCopy)
  {
    goto LABEL_88;
  }

  [(BWNodeOutput *)categoryCopy setName:@"OfflineVISMotionData"];
  if (graph)
  {
    v84 = *(graph + 16);
  }

  else
  {
    v84 = 0;
  }

  v85 = [objc_msgSend(v84 "sourceConfiguration")];
  v86 = [objc_msgSend(v84 "sourceConfiguration")];
  FigCapturePixelFormatIsPackedBayerRaw([v85 format]);
  horizontalSensorBinningFactor = [v85 horizontalSensorBinningFactor];
  verticalSensorBinningFactor = [v85 verticalSensorBinningFactor];
  [v85 maxSupportedFrameRate];
  if (graph)
  {
    v90 = *(graph + 44);
  }

  else
  {
    v90 = 0;
  }

  v91 = FigCaptureBuildMotionAttachmentsNode(v14, categoryCopy, horizontalSensorBinningFactor, verticalSensorBinningFactor, 0, v90, [stageCopy sensorIDDictionaryByPortType], objc_msgSend(stageCopy, "cameraInfoByPortType"), v89, objc_msgSend(stageCopy, "activePortTypes"), v86 == 4, 0, objc_msgSend(objc_msgSend(v84, "irisSinkConfiguration"), "optimizesImagesForOfflineVideoStabilization"), 0, 1, v173);
  v92 = v173[0];
  if (v173[0])
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_5_36();
    LODWORD(v113) = v92;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v113);
    goto LABEL_101;
  }

  array = v123;
  [v123 addObject:v91];
LABEL_88:
  if (![array2 count])
  {
    goto LABEL_99;
  }

  v93 = -[BWFunnelNode initWithNumberOfInputs:mediaType:]([BWMetadataPropagatorNode alloc], "initWithNumberOfInputs:mediaType:", [array2 count], 1836016234);
  v152.receiver = v14;
  v152.super_class = FigCaptureMetadataSinkPipeline;
  if ((objc_msgSendSuper2(&v152, sel_addNode_error_, v93, &v172) & 1) == 0)
  {
    goto LABEL_100;
  }

  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v94 = [array2 countByEnumeratingWithState:&v148 objects:&v132 count:16];
  if (!v94)
  {
LABEL_98:
    [(BWNode *)v93 output];
    [OUTLINED_FUNCTION_47() addObject:?];
LABEL_99:
    v100 = scheduler[1];
    v130 = *scheduler;
    v131 = v100;
    v101 = OUTLINED_FUNCTION_7_76();
    v173[0] = [(FigCaptureMetadataSinkPipeline *)v101 _buildMetadataObjectRemoteQueueSinkPipeline:v102 graph:v103 metadataNodeOutputs:array videoPreviewEnabled:0 delegate:v104 clientAuditToken:v105];
    goto LABEL_101;
  }

  v95 = v94;
  LODWORD(v96) = 0;
  v97 = *v149;
LABEL_92:
  v98 = 0;
  v96 = v96;
  while (1)
  {
    if (*v149 != v97)
    {
      objc_enumerationMutation(array2);
    }

    v99 = *(*(&v148 + 1) + 8 * v98);
    [(NSArray *)[(BWNode *)v93 inputs] objectAtIndexedSubscript:v96];
    if (![OUTLINED_FUNCTION_40_9() connectOutput:v99 toInput:? pipelineStage:?])
    {
      break;
    }

    ++v96;
    if (v95 == ++v98)
    {
      v95 = [array2 countByEnumeratingWithState:&v148 objects:&v132 count:16];
      if (v95)
      {
        goto LABEL_92;
      }

      goto LABEL_98;
    }
  }

LABEL_100:
  fig_log_get_emitter();
  OUTLINED_FUNCTION_5_36();
  LODWORD(v113) = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v113);
LABEL_101:
  result = v173[0];
  if (!v173[0])
  {
    if (v172)
    {
      return [v172 code];
    }
  }

  return result;
}

- (id)setSemanticStyleSceneObserver:(id *)result
{
  if (result)
  {
    return [result[10] setSemanticStyleSceneObserver:a2];
  }

  return result;
}

- (id)detectedObjectBoxedMetadataOutputs
{
  if (result)
  {
    return [result[15] boxedMetadataOutputs];
  }

  return result;
}

- (id)mrcLowPowerModeEnabled
{
  if (result)
  {
    return [result[8] lowPowerModeEnabled];
  }

  return result;
}

- (id)setDiscardsMRCSampleData:(id *)result
{
  if (result)
  {
    v3 = [objc_msgSend(objc_msgSend(result[8] "input")];

    return [v3 setDiscardsSampleData:a2];
  }

  return result;
}

- (void)setSceneClassifierSuspended:(void *)result
{
  if (result)
  {
    v2 = result;
    if (result[10])
    {
      v4 = result[11];
      if (!v4)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
        v4 = v2[11];
      }

      return [v4 setDiscardsSampleData:a2];
    }
  }

  return result;
}

- (id)setDiscardsFaceDetectionSampleData:(id *)result
{
  if (result)
  {
    metadataObjectOutput = [result[15] metadataObjectOutput];

    return [metadataObjectOutput setDiscardsSampleData:a2];
  }

  return result;
}

- (id)setDiscardsFaceTrackingSampleData:(id *)result
{
  if (result)
  {
    v3 = [objc_msgSend(objc_msgSend(result[14] "input")];

    return [v3 setDiscardsSampleData:a2];
  }

  return result;
}

- (id)setRectOfInterest:(double)interest
{
  if (result)
  {
    v9 = result;
    [result[8] setRectOfInterest:?];
    v10 = v9[15];

    return [v10 setRectOfInterest:{a2, interest, a4, a5}];
  }

  return result;
}

- (id)setFaceTrackingSuspended:(id *)result
{
  if (result)
  {
    return [result[14] setSkipProcessing:a2];
  }

  return result;
}

- (id)extendForNodeOutputs:(void *)outputs withConnectionConfiguration:
{
  if (!result)
  {
    return result;
  }

  v4 = result;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [a2 allKeys];
  result = [allKeys countByEnumeratingWithState:&v33 objects:&v31 count:16];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = *v34;
  while (2)
  {
    v8 = 0;
    do
    {
      if (*v34 != v7)
      {
        objc_enumerationMutation(allKeys);
      }

      v9 = *(*(&v33 + 1) + 8 * v8);
      if (([v9 isEqualToNumber:&unk_1F2246C90] & 1) != 0 || objc_msgSend(v9, "isEqualToNumber:", &unk_1F2246CA8))
      {
        if (v4[15])
        {
          [outputs metadataIdentifiers];
          [outputs metadataRectOfInterest];
          OUTLINED_FUNCTION_2_3();
          [outputs emitsEmptyObjectDetectionMetadata];
          v10 = OUTLINED_FUNCTION_3();
          [v11 updateMetadataIdentifiers:v10 rectOfInterest:? emitsEmptyObjectDetectionMetadata:?];
          goto LABEL_15;
        }

        [outputs metadataIdentifiers];
        [outputs metadataRectOfInterest];
        OUTLINED_FUNCTION_2_3();
        emitsEmptyObjectDetectionMetadata = [outputs emitsEmptyObjectDetectionMetadata];
        [a2 objectForKeyedSubscript:v9];
        v13 = OUTLINED_FUNCTION_3();
        v22 = FigCaptureBuildObjectDetectionPipeline(v14, v15, v16, emitsEmptyObjectDetectionMetadata, v17, v18, v13, v19, v20, v21);
        if (v22)
        {
          v27 = v22;
          fig_log_get_emitter();
          return FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v29, v28, v29, a2, 0, v31, v32);
        }

        v4[15] = 0;
        addExtendedInput = [v4[18] addExtendedInput];
        graph = [v4 graph];
        output = [v4[15] output];
        v26 = graph;
      }

      else
      {
        addExtendedInput = [v4[18] addExtendedInput];
        [v4 graph];
        [a2 objectForKeyedSubscript:v9];
        v26 = OUTLINED_FUNCTION_47();
      }

      [v26 connectOutput:output toInput:addExtendedInput pipelineStage:0];
LABEL_15:
      v8 = (v8 + 1);
    }

    while (v6 != v8);
    result = [allKeys countByEnumeratingWithState:&v33 objects:&v31 count:16];
    v6 = result;
    if (result)
    {
      continue;
    }

    return result;
  }
}

- (id)removeNodeOutputs:(void *)outputs withConnectionConfiguration:
{
  if (result)
  {
    v3 = result;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [a2 allKeys];
    result = [allKeys countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v21;
      v7 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
      do
      {
        v8 = 0;
        v16 = v5;
        do
        {
          if (*v21 != v6)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          if (([v9 isEqualToNumber:&unk_1F2246C90] & 1) != 0 || objc_msgSend(v9, "isEqualToNumber:", &unk_1F2246CA8))
          {
            v10 = [objc_msgSend(objc_msgSend(v3[15] "output")];
            v11 = v3[15];
            v12 = v7[112];
            v18.receiver = v3;
            v18.super_class = v12;
            objc_msgSendSuper2(&v18, sel_removeNode_, v11);
            [v3[18] removeInput:v10];

            v3[15] = 0;
          }

          else
          {
            if (v3[15])
            {
              [outputs metadataIdentifiers];
              [outputs metadataRectOfInterest];
              OUTLINED_FUNCTION_2_3();
              v5 = v16;
              [outputs emitsEmptyObjectDetectionMetadata];
              v13 = OUTLINED_FUNCTION_3();
              [v14 updateMetadataIdentifiers:v13 rectOfInterest:? emitsEmptyObjectDetectionMetadata:?];
            }

            [v3[18] removeInput:{objc_msgSend(objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", v9), "connection"), "input")}];
            v7 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
          }

          v8 = (v8 + 1);
        }

        while (v5 != v8);
        result = [allKeys countByEnumeratingWithState:&v20 objects:v19 count:16];
        v5 = result;
      }

      while (result);
    }
  }

  return result;
}

- (id)_buildSceneClassificationPipeline:(uint64_t)pipeline graph:(void *)graph upstreamOutput:(uint64_t)output metadataGatingNode:(uint64_t)node captureDevice:(uint64_t)device inferenceScheduler:(void *)scheduler outputOut:
{
  if (!self)
  {
    return 0;
  }

  if (a2)
  {
    v16 = *(a2 + 8);
  }

  else
  {
    v16 = 0;
  }

  v17 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.scene-classification", [v16 sourceConfiguration]), 13);
  if (a2)
  {
    v18 = *(a2 + 40);
    if (*(a2 + 40))
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    v20 = *(a2 + 34) | (*(a2 + 38) << 32);
    v26[0] = *(a2 + 64);
    *(v26 + 12) = *(a2 + 76);
  }

  else
  {
    v20 = 0;
    v18 = 0;
    memset(v26, 0, 28);
    v19 = 1;
  }

  v27 = 0;
  v28 = 0;
  v21 = FigCaptureBuildSceneClassifierPipeline(self, graph, v20, 13, v17, v19, v26, node, device, 0, &v28, &v27);
  if (v21)
  {
    fig_log_get_emitter();
    LODWORD(v23) = v21;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v23, v8, v24, v25, LODWORD(v26[0]), *(&v26[0] + 1), *&v26[1], DWORD2(v26[1]));
  }

  else
  {
    self[10] = v27;
    self[11] = graph;
    if (v18)
    {
      self[12] = [v28 lastObject];
    }

    if (a2 && *(a2 + 33) == 1)
    {
      [(BWSceneClassifierSinkNode *)v27 setMrcSceneObserver:output];
    }

    if (scheduler)
    {
      *scheduler = [v28 firstObject];
    }
  }

  return v21;
}

- (void)_buildPreviewHistogramSinkPipeline:(void *)pipeline graph:(void *)graph videoPreviewHistogramOutput:
{
  if (result)
  {
    v6 = result;
    v12 = 0;
    if (a2)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    v8 = +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.video-preview-histogram", [v7 sourceConfiguration]), 0, 1);
    [graph setName:@"Preview Histogram"];
    v9 = objc_alloc_init(BWPreviewHistogramNode);
    FigCaptureSessionIsLaunchPrewarmingEnabled();
    [OUTLINED_FUNCTION_37_0() setMsrHistogramsEnabled:?];
    FigCaptureMetadataUtilitiesShouldIncludeDiagnosticMetadata();
    [OUTLINED_FUNCTION_37_0() setIspHistogramsEnabled:?];
    v11.receiver = v6;
    v11.super_class = FigCaptureMetadataSinkPipeline;
    if (objc_msgSendSuper2(&v11, sel_addNode_error_, v9, &v12))
    {
      v10 = v9;
      v6[13] = v10;
      if (([pipeline connectOutput:graph toInput:-[BWNode input](v10 pipelineStage:{"input"), v8}] & 1) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    result = v12;
    if (v12)
    {
      return [v12 code];
    }
  }

  return result;
}

- (void)_buildFaceTrackingPipeline:(uint64_t)pipeline graph:(void *)graph videoCaptureOutput:(void *)output pipelineStage:
{
  if (result)
  {
    v8 = result;
    v21[0] = 0;
    [graph setName:@"FaceTracking"];
    v9 = [BWFaceTrackingNode alloc];
    priority = [output priority];
    if (a2)
    {
      v11 = *(a2 + 52);
    }

    else
    {
      v11 = 0;
    }

    v12 = [(BWFaceTrackingNode *)v9 initWithFigThreadPriority:priority pearlModuleType:v11 useUnfilteredDepth:1 queueDepth:2 passthroughInputs:0 allowPixelTransfer:0];
    if (v12)
    {
      v13 = v12;
      if (a2)
      {
        v14 = *(a2 + 8);
        a2 = *(a2 + 16);
      }

      else
      {
        v14 = 0;
      }

      [a2 mirroringEnabled];
      [OUTLINED_FUNCTION_37_0() setMirrored:?];
      [a2 rotationDegrees];
      [OUTLINED_FUNCTION_37_0() setRotationDegrees:?];
      [v14 faceTrackingMaxFaces];
      [OUTLINED_FUNCTION_37_0() setMaxFaces:?];
      [v14 faceTrackingUsesFaceRecognition];
      [OUTLINED_FUNCTION_37_0() setUsesFaceRecognition:?];
      [v14 faceTrackingPlusEnabled];
      [OUTLINED_FUNCTION_37_0() setFaceTrackingPlusEnabled:?];
      [v14 faceTrackingNetworkFailureThresholdMultiplier];
      [(BWFaceTrackingNode *)v13 setNetworkFailureThresholdMultiplier:?];
      [v14 faceTrackingFailureFieldOfViewModifier];
      [(BWFaceTrackingNode *)v13 setTrackingFailureFieldOfViewModifier:?];
      [v14 faceTrackingSuspended];
      [OUTLINED_FUNCTION_37_0() setSkipProcessing:?];
      v20.receiver = v8;
      v20.super_class = FigCaptureMetadataSinkPipeline;
      if (objc_msgSendSuper2(&v20, sel_addNode_error_, v13, v21))
      {
        v8[14] = v13;
        [(BWNode *)v13 input];
        if (([OUTLINED_FUNCTION_9_63() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_11();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_11();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

      result = 0;
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v19, v20.receiver, LODWORD(v20.super_class), v21[0], v21[1], v22);
      emitter = fig_log_get_emitter();
      result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< FigCaptureMetadataSinkPipeline >>>>", 0x425, v5, v16, v17, v18);
      if (result)
      {
        return result;
      }
    }

    if (v21[0])
    {
      return [v21[0] code];
    }
  }

  return result;
}

- (void)_buildMetadataObjectRemoteQueueSinkPipeline:(void *)pipeline graph:(void *)graph metadataNodeOutputs:(uint64_t)outputs videoPreviewEnabled:(uint64_t)enabled delegate:(__int128 *)delegate clientAuditToken:
{
  if (result)
  {
    v12 = result;
    v66[0] = 0;
    v13 = [graph count];
    v14 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
    if (v13)
    {
      v15 = [[BWFunnelNode alloc] initWithNumberOfInputs:v13 mediaType:1836016234];
      v12[18] = v15;
      [(BWNode *)v15 setName:@"Metadata Funnel"];
      v65.receiver = v12;
      v65.super_class = FigCaptureMetadataSinkPipeline;
      v16 = objc_msgSendSuper2(&v65, sel_addNode_error_, v15, v66);
      if ((v16 & 1) == 0)
      {
LABEL_28:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_25:
        result = v66[0];
        if (v66[0])
        {
          return [v66[0] code];
        }

        return result;
      }

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v24 = OUTLINED_FUNCTION_12_50(v16, v17, v18, v19, v20, v21, v22, v23, v48, v50, sel_addNode_error_, enabled, a2, v55, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59, *(&v59 + 1), v60, *(&v60 + 1));
      if (v24)
      {
        v25 = v24;
        LODWORD(v26) = 0;
        v27 = *v62;
LABEL_6:
        v28 = 0;
        v26 = v26;
        while (1)
        {
          if (*v62 != v27)
          {
            objc_enumerationMutation(graph);
          }

          v29 = *(*(&v61 + 1) + 8 * v28);
          [(NSArray *)[(BWNode *)v15 inputs] objectAtIndexedSubscript:v26];
          v30 = [OUTLINED_FUNCTION_40_9() connectOutput:v29 toInput:? pipelineStage:?];
          if (!v30)
          {
            goto LABEL_28;
          }

          ++v26;
          if (v25 == ++v28)
          {
            v25 = OUTLINED_FUNCTION_12_50(v30, v31, v32, v33, v34, v35, v36, v37, v49, v51, v52, v53, v54, v56, v57.receiver, v57.super_class, v58.receiver, v58.super_class, v59, *(&v59 + 1), v60, *(&v60 + 1));
            if (v25)
            {
              goto LABEL_6;
            }

            break;
          }
        }
      }

      output = [(BWNode *)v15 output];
      enabled = v53;
      a2 = v54;
      v14 = &classRef_BWStillImageSmartStyleAttachmentTransferNode;
      v39 = v52;
    }

    else
    {
      output = 0;
      v39 = sel_addNode_error_;
    }

    v40 = [BWRemoteQueueSinkNode alloc];
    sinkID = [v12 sinkID];
    v42 = delegate[1];
    v59 = *delegate;
    v60 = v42;
    v43 = [(BWRemoteQueueSinkNode *)v40 initWithMediaType:1836016234 clientAuditToken:&v59 sinkID:sinkID cameraInfoByPortType:0];
    [(BWNode *)v43 setName:@"Metadata Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v43 setDelegate:enabled];
    v44 = v14[112];
    v58.receiver = v12;
    v58.super_class = v44;
    if (objc_msgSendSuper2(&v58, v39, v43, v66))
    {
      v45 = v14[112];
      v57.receiver = v12;
      v57.super_class = v45;
      objc_msgSendSuper2(&v57, sel_setSinkNode_, v43);
      if ([pipeline deferredNodePrepareSupported])
      {
        v46 = a2 ? *(a2 + 8) : 0;
        +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.metadata-object-remote-queue", [v46 sourceConfiguration]), 0);
        v47 = a2 ? *(a2 + 8) : 0;
        if (([objc_msgSend(v47 "sinkConfiguration")] & 1) == 0)
        {
          [pipeline enableDeferredPrepareForNodesNotInPathOfSinkNode:v43];
          if (v12[10])
          {
            [pipeline enableDeferredPrepareForNodesNotInPathOfSinkNode:?];
          }
        }
      }

      [(BWNode *)v43 input];
      if (([OUTLINED_FUNCTION_40_9() connectOutput:output toInput:? pipelineStage:?] & 1) == 0)
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

    goto LABEL_25;
  }

  return result;
}

- (uint64_t)setMrcSuspended:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

@end