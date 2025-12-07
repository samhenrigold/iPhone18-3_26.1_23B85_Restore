@interface FigCaptureDepthDataPipeline
- (FigCaptureDepthDataPipeline)initWithConfiguration:(id)configuration sourceOutput:(id)output graph:(id)graph name:(id)name delegate:(id)delegate;
- (id)_buildDepthDataSinkPipeline:(uint64_t)pipeline sourceOutput:(void *)output graph:(_OWORD *)graph clientAuditToken:(uint64_t)token delegate:(int)delegate insertCopier:;
- (id)_buildDepthPipelineWithConfiguration:(BWNodeOutput *)configuration sourceOutput:(void *)output graph:(uint64_t)graph delegate:;
- (unint64_t)_buildDepthConversionPipelineWithConfiguration:(BWNodeOutput *)configuration sourceOutput:(void *)output graph:(NSArray *)graph convertedDepthOutputsOut:;
- (void)dealloc;
@end

@implementation FigCaptureDepthDataPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureDepthDataPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (FigCaptureDepthDataPipeline)initWithConfiguration:(id)configuration sourceOutput:(id)output graph:(id)graph name:(id)name delegate:(id)delegate
{
  if (configuration)
  {
    v13 = *(configuration + 1);
  }

  else
  {
    v13 = 0;
  }

  v19.receiver = self;
  v19.super_class = FigCaptureDepthDataPipeline;
  v14 = -[FigCaptureSinkPipeline initWithGraph:name:sinkID:](&v19, sel_initWithGraph_name_sinkID_, graph, name, [objc_msgSend(v13 "sinkConfiguration")]);
  if (!v14)
  {
    goto LABEL_4;
  }

  if (configuration)
  {
    v16 = *(configuration + 1);
    if (!v16)
    {
      v16 = *(configuration + 2);
      if (!v16)
      {
        v16 = *(configuration + 3);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v14->_sourceID = [objc_msgSend(v16 "sourceConfiguration")];
  v14->_sourceDeviceType = [v16 underlyingDeviceType];
  v17 = [(FigCaptureDepthDataPipeline *)v14 _buildDepthPipelineWithConfiguration:configuration sourceOutput:output graph:graph delegate:delegate];
  if (v17)
  {
    v18 = v17;
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v7, v19.receiver, v19.super_class, v20, v21, v22, v23);

    return 0;
  }

  else
  {
LABEL_4:
    [objc_msgSend(graph "memoryAnalyticsPayload")];
  }

  return v14;
}

- (id)_buildDepthPipelineWithConfiguration:(BWNodeOutput *)configuration sourceOutput:(void *)output graph:(uint64_t)graph delegate:
{
  if (!self)
  {
    return 0;
  }

  v21 = 0;
  if (!a2)
  {
    self[9] = 0;
    [(FigCaptureDepthDataPipeline *)self _buildDepthConversionPipelineWithConfiguration:configuration sourceOutput:output graph:&v21 convertedDepthOutputsOut:?];
    return 0;
  }

  self[9] = *(a2 + 40);
  [(FigCaptureDepthDataPipeline *)self _buildDepthConversionPipelineWithConfiguration:a2 sourceOutput:configuration graph:output convertedDepthOutputsOut:&v21];
  v11 = *(a2 + 8);
  if (v11)
  {
    v14 = [(NSArray *)v21 objectAtIndexedSubscript:0];
    v15 = *(a2 + 64);
    v18 = *(a2 + 48);
    v19 = v15;
    v16 = [(FigCaptureDepthDataPipeline *)self _buildDepthDataSinkPipeline:v11 sourceOutput:v14 graph:output clientAuditToken:&v18 delegate:graph insertCopier:[(NSArray *)v21 count]> 1];
    if (v16)
    {
      v13 = v16;
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v5, v18, *(&v18 + 1), v19, *(&v19 + 1), v20, v21);
      return v13;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  if (*(a2 + 34) != 1)
  {
    return 0;
  }

  v13 = 0;
  self[8] = [(NSArray *)v21 objectAtIndexedSubscript:v12];
  return v13;
}

- (unint64_t)_buildDepthConversionPipelineWithConfiguration:(BWNodeOutput *)configuration sourceOutput:(void *)output graph:(NSArray *)graph convertedDepthOutputsOut:
{
  if (!result)
  {
    return result;
  }

  v9 = result;
  v41 = 0;
  v40 = 0;
  if (a2)
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 34);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v12 = FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.depthdata", [v10 sourceConfiguration]);
  if (a2)
  {
    v13 = *(a2 + 40);
    if (v13)
    {
      if ((v10 != 0) | v11 & 1)
      {
        v14 = (v10 != 0) & v11;
        if (v14)
        {
          v15 = 2;
        }

        else
        {
          v15 = 1;
        }

        goto LABEL_15;
      }

LABEL_42:
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_45:
      v41 = -12780;
      goto LABEL_38;
    }
  }

  v16 = [BWPipelineStage pipelineStageWithName:v12 priority:13];
  if (!((v10 != 0) | v11 & 1))
  {
    goto LABEL_42;
  }

  v13 = v16;
  v14 = (v10 != 0) & v11;
  if (v14)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (!a2)
  {
    FigCaptureMetadataObjectConfigurationRequiresFaceTracking(0);
    v22 = 0;
    v20 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v21 = 0;
    v23 = 0;
    goto LABEL_22;
  }

LABEL_15:
  if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(*(a2 + 24)))
  {
    v17 = *(a2 + 104) == 2;
  }

  else
  {
    v17 = 0;
  }

  if (*(a2 + 32))
  {
    if (v14)
    {
      goto LABEL_27;
    }

LABEL_33:
    if (configuration)
    {
      configurationCopy = configuration;
      outputs = [MEMORY[0x1E695DEC8] arrayWithObjects:&configurationCopy count:1];
      if (!graph)
      {
        goto LABEL_38;
      }
    }

    else
    {
      outputs = 0;
      if (!graph)
      {
        goto LABEL_38;
      }
    }

LABEL_37:
    *graph = outputs;
    goto LABEL_38;
  }

  v18 = *(a2 + 16);
  v19 = *(a2 + 24);
  v21 = *(a2 + 88);
  v20 = *(a2 + 96);
  v22 = *(a2 + 80);
  v23 = *(a2 + 33);
LABEL_22:
  v24 = FigCaptureCreateAndConfigureDepthConverterNode(v10, v18, v19, v20, v21, v22, v23 & 1, v17, &v41);
  v25 = v41;
  if (v41)
  {
    emitter = fig_log_get_emitter();
    LODWORD(v36) = v25;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< FigCaptureDepthDataPipeline >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureDepthDataPipeline.m", 197, v36);
    goto LABEL_38;
  }

  v26 = v24;
  if (!v24)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_45;
  }

  v39.receiver = v9;
  v39.super_class = FigCaptureDepthDataPipeline;
  if ((objc_msgSendSuper2(&v39, sel_addNode_error_, v24, &v40) & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32, "<<<< FigCaptureDepthDataPipeline >>>> Fig", "[super addNode:depthConverterNode error:&error]", "bail", 0, "FigCaptureDepthDataPipeline.m", 199, v36);
    goto LABEL_38;
  }

  if (([output connectOutput:configuration toInput:-[BWNode input](v26 pipelineStage:{"input"), v13}] & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v34, "<<<< FigCaptureDepthDataPipeline >>>> Fig", "[graph connectOutput:sourceOutput toInput:depthConverterNode.input pipelineStage:depthDataPipelineStage]", "bail", 0, "FigCaptureDepthDataPipeline.m", 200, v36);
    goto LABEL_38;
  }

  v9[7] = v26;
  configuration = [(BWNode *)v26 output];
  if ((v14 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_27:
  v27 = [[BWFanOutNode alloc] initWithFanOutCount:v15 mediaType:1986618469];
  [(BWNode *)v27 setName:@"Depth Splitter"];
  v38.receiver = v9;
  v38.super_class = FigCaptureDepthDataPipeline;
  if ((objc_msgSendSuper2(&v38, sel_addNode_error_, v27, &v40) & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v33, "<<<< FigCaptureDepthDataPipeline >>>> Fig", "[super addNode:depthSplitterNode error:&error]", "bail", 0, "FigCaptureDepthDataPipeline.m", 211, v36);
    goto LABEL_38;
  }

  input = [(BWNode *)v27 input];
  if (a2)
  {
    v29 = *(a2 + 40);
  }

  else
  {
    v29 = 0;
  }

  if (([output connectOutput:configuration toInput:input pipelineStage:v29] & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35, "<<<< FigCaptureDepthDataPipeline >>>> Fig", "[graph connectOutput:outputThatContainsConvertedDepth toInput:depthSplitterNode.input pipelineStage:pipelineConfiguration.pipelineStage]", "bail", 0, "FigCaptureDepthDataPipeline.m", 212, v36);
    goto LABEL_38;
  }

  outputs = [(BWNode *)v27 outputs];
  if (graph)
  {
    goto LABEL_37;
  }

LABEL_38:
  result = v41;
  if (!v41)
  {
    if (v40)
    {
      return [v40 code];
    }
  }

  return result;
}

- (id)_buildDepthDataSinkPipeline:(uint64_t)pipeline sourceOutput:(void *)output graph:(_OWORD *)graph clientAuditToken:(uint64_t)token delegate:(int)delegate insertCopier:
{
  if (result)
  {
    v12 = result;
    v26.receiver = result;
    v26.super_class = FigCaptureDepthDataPipeline;
    v27[0] = 0;
    objc_msgSendSuper2(&v26, sel_setUpstreamOutput_);
    v13 = [BWAttachedMediaSplitNode alloc];
    v25 = @"Depth";
    v14 = -[BWAttachedMediaSplitNode initWithAttachedMediaKeys:](v13, "initWithAttachedMediaKeys:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1]);
    [(BWNode *)v14 setName:@"Depth Splitter"];
    v24.receiver = v12;
    v24.super_class = FigCaptureDepthDataPipeline;
    if (objc_msgSendSuper2(&v24, sel_addNode_error_, v14, v27) & 1) != 0 && (OUTLINED_FUNCTION_2_123([(BWNode *)v14 input]))
    {
      [(NSArray *)[(BWNode *)v14 outputs] objectAtIndexedSubscript:0];
      if (!delegate)
      {
        goto LABEL_8;
      }

      v15 = [[BWPixelTransferNode alloc] initWithfractionalSourceRectEnabled:0];
      [(BWNode *)v15 setName:@"Depth Data Copier"];
      -[BWPixelTransferNode setOutputPixelFormat:](v15, "setOutputPixelFormat:", [a2 outputFormat]);
      v23.receiver = v12;
      v23.super_class = FigCaptureDepthDataPipeline;
      if (objc_msgSendSuper2(&v23, sel_addNode_error_, v15, v27) & 1) != 0 && (OUTLINED_FUNCTION_2_123([(BWNode *)v15 input]))
      {
        [(BWNode *)v15 output];
LABEL_8:
        v16 = [BWRemoteQueueSinkNode alloc];
        sinkID = [v12 sinkID];
        v18 = graph[1];
        v22[0] = *graph;
        v22[1] = v18;
        v19 = [(BWRemoteQueueSinkNode *)v16 initWithMediaType:1986618469 clientAuditToken:v22 sinkID:sinkID cameraInfoByPortType:0];
        [(BWNode *)v19 setName:@"Depth Data Remote Queue Sink"];
        [(BWRemoteQueueSinkNode *)v19 setDelegate:token];
        -[BWRemoteQueueSinkNode setDiscardsLateSampleBuffers:](v19, "setDiscardsLateSampleBuffers:", [objc_msgSend(a2 "depthDataSinkConfiguration")]);
        -[BWRemoteQueueSinkNode setClientVideoRetainedBufferCount:](v19, "setClientVideoRetainedBufferCount:", [a2 retainedBufferCount]);
        v21.receiver = v12;
        v21.super_class = FigCaptureDepthDataPipeline;
        if (objc_msgSendSuper2(&v21, sel_addNode_error_, v19, v27))
        {
          v20.receiver = v12;
          v20.super_class = FigCaptureDepthDataPipeline;
          objc_msgSendSuper2(&v20, sel_setSinkNode_, v19);
          if (OUTLINED_FUNCTION_2_123([(BWNode *)v19 input]))
          {
            if ([output deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
            {
              [output enableDeferredPrepareForNodesNotInPathOfSinkNode:v19];
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_16();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_16();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        }

        goto LABEL_13;
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

LABEL_13:
    result = v27[0];
    if (v27[0])
    {
      return [v27[0] code];
    }
  }

  return result;
}

@end