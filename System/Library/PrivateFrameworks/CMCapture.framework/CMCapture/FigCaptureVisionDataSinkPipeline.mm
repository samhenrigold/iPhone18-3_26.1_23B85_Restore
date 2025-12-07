@interface FigCaptureVisionDataSinkPipeline
- (id)_buildVisionDataSinkPipeline:(uint64_t)pipeline videoDataConnectionConfiguration:(void *)configuration graph:(uint64_t)graph visionCaptureOutput:(_OWORD *)output clientAuditToken:(uint64_t)token delegate:;
- (id)setKeypointDetectionThreshold:(id *)result;
- (id)setRuntimeUpdates:(id *)result;
- (id)triggerVisionDataBurst;
- (void)dealloc;
- (void)initWithVisionDataConnectionConfiguration:(uint64_t)configuration videoDataConnectionConfiguration:(void *)connectionConfiguration graph:(uint64_t)graph name:(uint64_t)name visionCaptureOutput:(void *)output captureDevice:(_OWORD *)device clientAuditToken:(uint64_t)token delegate:;
@end

@implementation FigCaptureVisionDataSinkPipeline

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVisionDataSinkPipeline;
  [(FigCaptureRemoteQueueSinkPipeline *)&v3 dealloc];
}

- (void)initWithVisionDataConnectionConfiguration:(uint64_t)configuration videoDataConnectionConfiguration:(void *)connectionConfiguration graph:(uint64_t)graph name:(uint64_t)name visionCaptureOutput:(void *)output captureDevice:(_OWORD *)device clientAuditToken:(uint64_t)token delegate:
{
  if (!self)
  {
    return 0;
  }

  v44.receiver = self;
  v44.super_class = FigCaptureVisionDataSinkPipeline;
  v14 = objc_msgSendSuper2(&v44, sel_initWithGraph_name_sinkID_, connectionConfiguration, graph, [objc_msgSend(a2 sinkConfiguration]);
  if (v14)
  {
    deviceCopy = device;
    connectionConfigurationCopy = connectionConfiguration;
    nameCopy = name;
    v14[8] = [objc_msgSend(a2 "sourceConfiguration")];
    v34 = a2;
    *(v14 + 18) = [a2 underlyingDeviceType];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    captureStreams = [output captureStreams];
    v16 = [captureStreams countByEnumeratingWithState:&v40 objects:v39 count:16];
    v17 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    if (!v16)
    {
      goto LABEL_21;
    }

    v18 = v16;
    v19 = *v41;
LABEL_5:
    v20 = 0;
    while (2)
    {
      if (*v41 != v19)
      {
        objc_enumerationMutation(captureStreams);
      }

      v21 = *(*(&v40 + 1) + 8 * v20);
      portType = [v21 portType];
      v23 = portType;
      switch(*(v14 + 18))
      {
        case 2:
          if (objc_msgSend_isEqualToString_(portType))
          {
            goto LABEL_20;
          }

          goto LABEL_10;
        case 3:
          isEqualToString = objc_msgSend_isEqualToString_(portType);
          goto LABEL_14;
        case 7:
          if (objc_msgSend_isEqualToString_(portType))
          {
            goto LABEL_20;
          }

LABEL_10:
          isEqualToString = objc_msgSend_isEqualToString_(v23);
LABEL_14:
          if (isEqualToString)
          {
LABEL_20:
            v25 = v21;
            v17 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
            v14[7] = v25;
            goto LABEL_21;
          }

LABEL_17:
          if (v18 != ++v20)
          {
            continue;
          }

          v18 = [captureStreams countByEnumeratingWithState:&v40 objects:v39 count:16];
          v17 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
          if (v18)
          {
            goto LABEL_5;
          }

LABEL_21:
          if (*(v14 + v17[101]))
          {
            v38.receiver = v14;
            v38.super_class = FigCaptureVisionDataSinkPipeline;
            objc_msgSendSuper2(&v38, sel_setUpstreamOutput_, nameCopy);
            v26 = deviceCopy[1];
            v37[0] = *deviceCopy;
            v37[1] = v26;
            v28 = [(FigCaptureVisionDataSinkPipeline *)v14 _buildVisionDataSinkPipeline:v34 videoDataConnectionConfiguration:v27 graph:connectionConfigurationCopy visionCaptureOutput:nameCopy clientAuditToken:v37 delegate:token];
            if (!v28)
            {
              return v14;
            }

            v31 = v28;
            emitter = fig_log_get_emitter();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< FigCaptureVisionDataSinkPipeline >>>> Fig", "err == 0 ", "bail", 0, "FigCaptureVisionDataSinkPipeline.m", 106, v31);
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, "<<<< FigCaptureVisionDataSinkPipeline >>>> Fig", "_captureStream", "bail", 0, "FigCaptureVisionDataSinkPipeline.m", 97);
          }

          break;
        case 0xB:
          if (!objc_msgSend_isEqualToString_(portType))
          {
            goto LABEL_17;
          }

          goto LABEL_20;
        default:
          goto LABEL_17;
      }

      return 0;
    }
  }

  return v14;
}

- (id)_buildVisionDataSinkPipeline:(uint64_t)pipeline videoDataConnectionConfiguration:(void *)configuration graph:(uint64_t)graph visionCaptureOutput:(_OWORD *)output clientAuditToken:(uint64_t)token delegate:
{
  if (result)
  {
    v12 = result;
    v21 = 0;
    v13 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.visiondata", [a2 sourceConfiguration]), 13);
    v14 = [BWRemoteQueueSinkNode alloc];
    sinkID = [v12 sinkID];
    v16 = output[1];
    v20[0] = *output;
    v20[1] = v16;
    v17 = [(BWRemoteQueueSinkNode *)v14 initWithMediaType:1986618469 clientAuditToken:v20 sinkID:sinkID cameraInfoByPortType:0];
    [(BWNode *)v17 setName:@"Vision Data Remote Queue Sink"];
    [(BWRemoteQueueSinkNode *)v17 setDelegate:token];
    [(BWRemoteQueueSinkNode *)v17 setDiscardsLateSampleBuffers:0];
    -[BWRemoteQueueSinkNode setClientVideoRetainedBufferCount:](v17, "setClientVideoRetainedBufferCount:", [a2 retainedBufferCount]);
    v19.receiver = v12;
    v19.super_class = FigCaptureVisionDataSinkPipeline;
    if (objc_msgSendSuper2(&v19, sel_addNode_error_, v17, &v21))
    {
      if ([configuration connectOutput:graph toInput:-[BWNode input](v17 pipelineStage:{"input"), v13}])
      {
        v18.receiver = v12;
        v18.super_class = FigCaptureVisionDataSinkPipeline;
        objc_msgSendSuper2(&v18, sel_setSinkNode_, v17);
        if ([configuration deferredNodePrepareSupported] && (objc_msgSend(objc_msgSend(a2, "sinkConfiguration"), "deferredStartEnabled") & 1) == 0)
        {
          [configuration enableDeferredPrepareForNodesNotInPathOfSinkNode:v17];
        }
      }

      else
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

    result = v21;
    if (v21)
    {
      return [v21 code];
    }
  }

  return result;
}

- (id)triggerVisionDataBurst
{
  if (result)
  {
    return [result[7] triggerVisionDataBurst];
  }

  return result;
}

- (id)setRuntimeUpdates:(id *)result
{
  if (result)
  {
    return [result[7] setRuntimeUpdates:a2];
  }

  return result;
}

- (id)setKeypointDetectionThreshold:(id *)result
{
  if (result)
  {
    return [result[7] setVisionDataKeypointDetectionThreshold:?];
  }

  return result;
}

@end