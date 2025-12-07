@interface FigCapturePointCloudDataSinkPipeline
- (id)_buildPointCloudDataSinkPipelineWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(_OWORD *)graph clientAuditToken:(uint64_t)token delegate:;
- (void)dealloc;
- (void)initWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph name:(__int128 *)name clientAuditToken:(uint64_t)token delegate:;
@end

@implementation FigCapturePointCloudDataSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCapturePointCloudDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph name:(__int128 *)name clientAuditToken:(uint64_t)token delegate:
{
  if (!self)
  {
    return 0;
  }

  v21.receiver = self;
  v21.super_class = FigCapturePointCloudDataSinkPipeline;
  v13 = objc_msgSendSuper2(&v21, sel_initWithGraph_name_sinkID_, output, graph, [objc_msgSend(a2 "sinkConfiguration")]);
  if (v13)
  {
    v13[7] = [objc_msgSend(a2 "sourceConfiguration")];
    v15 = name[1];
    v19 = *name;
    v20 = v15;
    v16 = [(FigCapturePointCloudDataSinkPipeline *)v13 _buildPointCloudDataSinkPipelineWithConfiguration:a2 sourceOutput:configuration graph:output clientAuditToken:&v19 delegate:token];
    if (v16)
    {
      v17 = v16;
      fig_log_get_emitter();
      v18 = v17;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v7, v19, *(&v19 + 1), v20, *(&v20 + 1), v21.receiver, LODWORD(v21.super_class));

      return 0;
    }
  }

  return v13;
}

- (id)_buildPointCloudDataSinkPipelineWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(_OWORD *)graph clientAuditToken:(uint64_t)token delegate:
{
  if (result)
  {
    v11 = result;
    v20 = 0;
    v19.receiver = result;
    v19.super_class = FigCapturePointCloudDataSinkPipeline;
    objc_msgSendSuper2(&v19, sel_setUpstreamOutput_);
    v12 = [BWRemoteQueueSinkNode alloc];
    sinkID = [v11 sinkID];
    v14 = graph[1];
    v18[0] = *graph;
    v18[1] = v14;
    v15 = [(BWRemoteQueueSinkNode *)v12 initWithMediaType:1885564004 clientAuditToken:v18 sinkID:sinkID cameraInfoByPortType:0];
    [(BWNode *)v15 setName:@"Point Cloud Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v15 setDelegate:token];
    -[BWRemoteQueueSinkNode setDiscardsLateSampleBuffers:](v15, "setDiscardsLateSampleBuffers:", [objc_msgSend(a2 "pointCloudDataSinkConfiguration")]);
    -[BWRemoteQueueSinkNode setClientVideoRetainedBufferCount:](v15, "setClientVideoRetainedBufferCount:", [a2 retainedBufferCount]);
    v17.receiver = v11;
    v17.super_class = FigCapturePointCloudDataSinkPipeline;
    if (objc_msgSendSuper2(&v17, sel_addNode_error_, v15, &v20))
    {
      v16.receiver = v11;
      v16.super_class = FigCapturePointCloudDataSinkPipeline;
      objc_msgSendSuper2(&v16, sel_setSinkNode_, v15);
      if ([output connectOutput:configuration toInput:-[BWNode input](v15 pipelineStage:{"input"), 0}])
      {
        if ([output deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
        {
          [output enableDeferredPrepareForNodesNotInPathOfSinkNode:v15];
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    result = v20;
    if (v20)
    {
      return [v20 code];
    }
  }

  return result;
}

@end