@interface FigCaptureAudioDataSinkPipeline
- (id)_buildAudioDataSinkPipeline:(void *)pipeline graph:(uint64_t)graph sourceAudioOutput:(_OWORD *)output clientAuditToken:(uint64_t)token renderDelegate:;
- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name sourceAudioOutput:(__int128 *)output clientAuditToken:(uint64_t)token renderDelegate:;
@end

@implementation FigCaptureAudioDataSinkPipeline

- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(uint64_t)name sourceAudioOutput:(__int128 *)output clientAuditToken:(uint64_t)token renderDelegate:
{
  if (!self)
  {
    return 0;
  }

  v22.receiver = self;
  v22.super_class = FigCaptureAudioDataSinkPipeline;
  v13 = objc_msgSendSuper2(&v22, sel_initWithGraph_name_sinkID_, configuration, graph, [objc_msgSend(a2 "sinkConfiguration")]);
  v14 = v13;
  if (v13)
  {
    v16 = output[1];
    v20 = *output;
    v21 = v16;
    v17 = [(FigCaptureAudioDataSinkPipeline *)v13 _buildAudioDataSinkPipeline:a2 graph:configuration sourceAudioOutput:name clientAuditToken:&v20 renderDelegate:token];
    if (v17)
    {
      v18 = v17;
      fig_log_get_emitter();
      v19 = v18;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v7, v20, *(&v20 + 1), v21, *(&v21 + 1), v22.receiver, LODWORD(v22.super_class));

      return 0;
    }
  }

  return v14;
}

- (id)_buildAudioDataSinkPipeline:(void *)pipeline graph:(uint64_t)graph sourceAudioOutput:(_OWORD *)output clientAuditToken:(uint64_t)token renderDelegate:
{
  if (result)
  {
    v11 = result;
    v20 = 0;
    v19.receiver = result;
    v19.super_class = FigCaptureAudioDataSinkPipeline;
    objc_msgSendSuper2(&v19, sel_setUpstreamOutput_, graph);
    v12 = [BWRemoteQueueSinkNode alloc];
    sinkID = [v11 sinkID];
    v14 = output[1];
    v18[0] = *output;
    v18[1] = v14;
    v15 = [(BWRemoteQueueSinkNode *)v12 initWithMediaType:1936684398 clientAuditToken:v18 sinkID:sinkID cameraInfoByPortType:0];
    [(BWNode *)v15 setName:@"Audio Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v15 setDelegate:token];
    v17.receiver = v11;
    v17.super_class = FigCaptureAudioDataSinkPipeline;
    if (objc_msgSendSuper2(&v17, sel_addNode_error_, v15, &v20))
    {
      v16.receiver = v11;
      v16.super_class = FigCaptureAudioDataSinkPipeline;
      objc_msgSendSuper2(&v16, sel_setSinkNode_, v15);
      if ([pipeline connectOutput:graph toInput:-[BWNode input](v15 pipelineStage:{"input"), 0}])
      {
        if ([pipeline deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
        {
          [pipeline enableDeferredPrepareForNodesNotInPathOfSinkNode:v15];
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