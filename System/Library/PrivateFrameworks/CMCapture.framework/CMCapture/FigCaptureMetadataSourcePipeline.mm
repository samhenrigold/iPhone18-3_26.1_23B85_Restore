@interface FigCaptureMetadataSourcePipeline
- (id)_buildMetadataSourcePipeline:(void *)pipeline graph:;
- (id)output;
- (id)setMasterClock:(id *)result;
- (uint64_t)appendSampleBuffer:(uint64_t)result;
- (uint64_t)sourceFormatDescription;
- (void)dealloc;
- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(int *)name errorOut:;
@end

@implementation FigCaptureMetadataSourcePipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureMetadataSourcePipeline;
  [(FigCaptureSourcePipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(void *)configuration graph:(uint64_t)graph name:(int *)name errorOut:
{
  if (!self)
  {
    return 0;
  }

  v16.receiver = self;
  v16.super_class = FigCaptureMetadataSourcePipeline;
  v9 = objc_msgSendSuper2(&v16, sel_initWithGraph_name_sourceID_, configuration, graph, [objc_msgSend(a2 "sourceConfiguration")]);
  v10 = v9;
  if (v9)
  {
    if (a2)
    {
      v11 = [(FigCaptureMetadataSourcePipeline *)v9 _buildMetadataSourcePipeline:a2 graph:configuration];
      if (!v11)
      {
        return v10;
      }

      v13 = v11;
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v5, v16.receiver, v16.super_class, v17, v18, v19, v20);
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16.receiver, v16.super_class, v17, v18, v19, v20);
      v13 = 0;
    }

    if (name)
    {
      *name = v13;
    }

    return 0;
  }

  return v10;
}

- (id)_buildMetadataSourcePipeline:(void *)pipeline graph:
{
  if (result)
  {
    v6 = result;
    v19 = 0;
    if ([a2 sourceSubType] == 1)
    {
      v7 = -[BWMetadataSourceNode initWithFormatDescription:clock:]([BWMetadataSourceNode alloc], "initWithFormatDescription:clock:", [a2 formatDescription], objc_msgSend(a2, "clock"));
      v6[5] = v7;
      v18.receiver = v6;
      v18.super_class = FigCaptureMetadataSourcePipeline;
      if (objc_msgSendSuper2(&v18, sel_addNode_error_, v7, &v19))
      {
        v8 = [[BWSynchronizerNode alloc] initWithMediaType:1835365473];
        v6[6] = v8;
        v17.receiver = v6;
        v17.super_class = FigCaptureMetadataSourcePipeline;
        if (objc_msgSendSuper2(&v17, sel_addNode_error_, v8, &v19))
        {
          if ([a2 sourceSubType] == 1)
          {
            [v6[6] setSourceClock:{objc_msgSend(v6[5], "clock")}];
          }

          if ([pipeline connectOutput:objc_msgSend(v6[5] toInput:"output") pipelineStage:{objc_msgSend(v6[6], "input"), 0}])
          {
            goto LABEL_8;
          }

          fig_log_get_emitter();
          v15 = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15, v3, v16, v17.receiver, LODWORD(v17.super_class), v18.receiver, v18.super_class, v19);
          emitter = fig_log_get_emitter();
          v13 = 136;
          v12 = v3;
LABEL_10:
          result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< FigCaptureMetadataSourcePipeline >>>>", v13, v12, v10, v11, v14);
          if (result)
          {
            return result;
          }

          goto LABEL_11;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

LABEL_8:
      result = 0;
LABEL_11:
      if (v19)
      {
        return [v19 code];
      }

      return result;
    }

    emitter = fig_log_get_emitter();
    v12 = v3;
    v13 = 121;
    goto LABEL_10;
  }

  return result;
}

- (id)setMasterClock:(id *)result
{
  if (result)
  {
    return [result[6] setMasterClock:a2];
  }

  return result;
}

- (uint64_t)sourceFormatDescription
{
  if (!self)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v3 = *(self + 40);

  return [v3 formatDescription];
}

- (id)output
{
  if (result)
  {
    return [result[6] output];
  }

  return result;
}

- (uint64_t)appendSampleBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v4 = *(v3 + 40);

      return [v4 appendMetadataSampleBuffer:a2];
    }
  }

  return result;
}

@end