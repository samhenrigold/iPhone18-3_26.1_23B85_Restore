@interface FigCaptureCameraCalibrationDataSinkPipeline
- (id)_buildCameraCalibrationDataSinkPipelineWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph cameraInfoByPortType:(_OWORD *)type clientAuditToken:(uint64_t)token delegate:;
- (void)dealloc;
- (void)initWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph name:(uint64_t)name cameraInfoByPortType:(__int128 *)type clientAuditToken:(uint64_t)token delegate:;
@end

@implementation FigCaptureCameraCalibrationDataSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (void)initWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph name:(uint64_t)name cameraInfoByPortType:(__int128 *)type clientAuditToken:(uint64_t)token delegate:
{
  if (!self)
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
  v14 = objc_msgSendSuper2(&v23, sel_initWithGraph_name_sinkID_, output, graph, [objc_msgSend(a2 "sinkConfiguration")]);
  if (v14)
  {
    v14[7] = [objc_msgSend(a2 "sourceConfiguration")];
    v16 = type[1];
    v21 = *type;
    v22 = v16;
    v17 = [(FigCaptureCameraCalibrationDataSinkPipeline *)v14 _buildCameraCalibrationDataSinkPipelineWithConfiguration:a2 sourceOutput:configuration graph:output cameraInfoByPortType:name clientAuditToken:&v21 delegate:token];
    if (v17)
    {
      v18 = v17;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      v19 = v18;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23.receiver, LODWORD(v23.super_class));

      return 0;
    }
  }

  return v14;
}

- (id)_buildCameraCalibrationDataSinkPipelineWithConfiguration:(uint64_t)configuration sourceOutput:(void *)output graph:(uint64_t)graph cameraInfoByPortType:(_OWORD *)type clientAuditToken:(uint64_t)token delegate:
{
  if (result)
  {
    v12 = result;
    v27 = 0;
    v26.receiver = result;
    v26.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
    objc_msgSendSuper2(&v26, sel_setUpstreamOutput_);
    v13 = [[BWStreamingCameraCalibrationDataNode alloc] initWithCameraInfoByPortType:graph];
    [(BWNode *)v13 setName:@"Streaming Camera Calibration Data Node"];
    sourceConfiguration = [a2 sourceConfiguration];
    [objc_msgSend(sourceConfiguration "requiredFormat")];
    [OUTLINED_FUNCTION_15() setHorizontalSensorBinningFactor:?];
    [objc_msgSend(sourceConfiguration "requiredFormat")];
    [OUTLINED_FUNCTION_15() setVerticalSensorBinningFactor:?];
    FigCaptureRotationDegreesWithMirroring([a2 rotationDegrees], objc_msgSend(a2, "mirroringEnabled"));
    [OUTLINED_FUNCTION_15() setRotationDegrees:?];
    [a2 mirroringEnabled];
    [OUTLINED_FUNCTION_15() setMirroringEnabled:?];
    v25.receiver = v12;
    v25.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
    if (objc_msgSendSuper2(&v25, sel_addNode_error_, v13, &v27) & 1) != 0 && (OUTLINED_FUNCTION_2_36([(BWNode *)v13 input]))
    {
      [(BWNode *)v13 output];
      v15 = [BWRemoteQueueSinkNode alloc];
      sinkID = [v12 sinkID];
      v17 = type[1];
      v24[0] = *type;
      v24[1] = v17;
      v18 = [(BWRemoteQueueSinkNode *)v15 initWithMediaType:1667326820 clientAuditToken:v24 sinkID:sinkID cameraInfoByPortType:0];
      [(BWNode *)v18 setName:@"Camera Calibration Data Remote Queue Sink"];
      [(BWRemoteQueueSinkNode *)v18 setDelegate:token];
      -[BWRemoteQueueSinkNode setDiscardsLateSampleBuffers:](v18, "setDiscardsLateSampleBuffers:", [objc_msgSend(a2 "cameraCalibrationDataSinkConfiguration")]);
      v23.receiver = v12;
      v23.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
      if (objc_msgSendSuper2(&v23, sel_addNode_error_, v18, &v27))
      {
        v22.receiver = v12;
        v22.super_class = FigCaptureCameraCalibrationDataSinkPipeline;
        objc_msgSendSuper2(&v22, sel_setSinkNode_, v18);
        if (OUTLINED_FUNCTION_2_36([(BWNode *)v18 input]))
        {
          if ([output deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
          {
            [output enableDeferredPrepareForNodesNotInPathOfSinkNode:v18];
          }
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_6();
          v21 = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21);
        }
      }

      else
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        v20 = 0;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      v19 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19);
    }

    result = v27;
    if (v27)
    {
      return [v27 code];
    }
  }

  return result;
}

@end