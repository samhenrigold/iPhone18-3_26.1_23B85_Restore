@interface FigCaptureAudioFileSinkPipeline
- (id)_buildAudioFileSinkPipeline:(uint64_t)pipeline graph:(uint64_t)graph sourceAudioOutput:(uint64_t)output recordingStatusDelegate:;
- (uint64_t)audioFileSinkNode;
- (uint64_t)fileCoordinatorNode;
- (void)dealloc;
- (void)initWithConfiguration:(uint64_t)configuration graph:(uint64_t)graph name:(uint64_t)name sourceAudioOutput:(uint64_t)output recordingStatusDelegate:;
@end

@implementation FigCaptureAudioFileSinkPipeline

- (void)dealloc
{
  [(BWFileSinkNode *)self->_audioFileSinkNode setRecordingStatusDelegate:0];

  v3.receiver = self;
  v3.super_class = FigCaptureAudioFileSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(uint64_t)configuration graph:(uint64_t)graph name:(uint64_t)name sourceAudioOutput:(uint64_t)output recordingStatusDelegate:
{
  if (!self)
  {
    return 0;
  }

  v17.receiver = self;
  v17.super_class = FigCaptureAudioFileSinkPipeline;
  v10 = objc_msgSendSuper2(&v17, sel_initWithGraph_name_sinkID_, configuration, graph, [objc_msgSend(a2 "sinkConfiguration")]);
  v12 = v10;
  if (v10)
  {
    v14 = [(FigCaptureAudioFileSinkPipeline *)v10 _buildAudioFileSinkPipeline:v11 graph:configuration sourceAudioOutput:name recordingStatusDelegate:output];
    if (v14)
    {
      v15 = v14;
      fig_log_get_emitter();
      v16 = v15;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v6, v17.receiver, v17.super_class, v18, v19, v20, v21);

      return 0;
    }
  }

  return v12;
}

- (id)_buildAudioFileSinkPipeline:(uint64_t)pipeline graph:(uint64_t)graph sourceAudioOutput:(uint64_t)output recordingStatusDelegate:
{
  if (result)
  {
    v7 = result;
    *v47 = 0;
    [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.audiofile" priority:14];
    LOBYTE(v34) = 0;
    v8 = [[BWFileCoordinatorNode alloc] initWithNumberOfVideoInputs:0 numberOfAudioInputs:1 numberOfMetadataInputs:0 numberOfActionOnlyOutputs:0 overCaptureEnabled:0 allowLowLatencyWhenPossible:1 useTrueVideoFileRecordingStaging:v34 motionDataTimeMachine:0];
    if (OUTLINED_FUNCTION_2_125(&v46, v9, v10, v11, v12, v13, v14, v15, v35, v38, v41, v44.receiver, v44.super_class, v45.receiver, v45.super_class, v7, FigCaptureAudioFileSinkPipeline))
    {
      v16 = v8;
      v7[6] = v16;
      if (!graph)
      {
LABEL_6:
        v17 = objc_alloc_init(BWAudioConverterNode);
        if (OUTLINED_FUNCTION_2_125(&v45, v18, v19, v20, v21, v22, v23, v24, v36, v39, v42, v44.receiver, v44.super_class, v7, FigCaptureAudioFileSinkPipeline, v46.receiver, v46.super_class) & 1) != 0 && (v25 = v17, v7[7] = v25, (OUTLINED_FUNCTION_1_132([(BWNode *)v25 input])))
        {
          [v7[7] output];
          v26 = -[BWAudioFileSinkNode initWithSinkID:]([BWAudioFileSinkNode alloc], "initWithSinkID:", [v7 sinkID]);
          if ((OUTLINED_FUNCTION_2_125(&v44, v27, v28, v29, v30, v31, v32, v33, v37, v40, v43, v7, FigCaptureAudioFileSinkPipeline, v45.receiver, v45.super_class, v46.receiver, v46.super_class) & 1) == 0 || (v7[8] = v26, -[BWFileSinkNode setRecordingStatusDelegate:](v26, "setRecordingStatusDelegate:", output), (OUTLINED_FUNCTION_1_132([v7[8] input]) & 1) == 0))
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

        goto LABEL_11;
      }

      if (OUTLINED_FUNCTION_1_132([(BWNode *)v16 input]))
      {
        [v7[6] output];
        goto LABEL_6;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_11:
    result = *v47;
    if (*v47)
    {
      return [*v47 code];
    }
  }

  return result;
}

- (uint64_t)fileCoordinatorNode
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (uint64_t)audioFileSinkNode
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

@end