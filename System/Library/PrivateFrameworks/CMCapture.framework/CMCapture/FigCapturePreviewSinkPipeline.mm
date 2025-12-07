@interface FigCapturePreviewSinkPipeline
- (BOOL)discardsImageQueueSampleData;
- (CGPoint)primaryCaptureRectCenter;
- (FigCapturePreviewSinkPipeline)initWithConfiguration:(id)configuration sourcePreviewOutput:(id)output imageQueueSinkNode:(id)node graph:(id)graph name:(id)name inferenceScheduler:(id)scheduler captureDevice:(id)device previewTapDelegate:(id)self0 zoomPIPOverlayDelegate:(id)self1 sourceStillImageOutputsByPortType:(id)self2;
- (FigCaptureVideoTransform)outputTransform;
- (FigCaptureVideoTransform)videoThumbnailSinkOutputTransform;
- (float)portraitLightingEffectStrength;
- (id)_buildImageQueuePreviewSinkPipeline:(uint64_t)pipeline previewPipelineStage:(void *)stage videoPreviewSinkConnectionConfiguration:(int)configuration previewScalerOutputBuffersAreShared:(int)shared zoomPIPOverlayEnabled:(unsigned int)enabled zoomPIPSmartStyleRenderingEnabled:(unsigned int)renderingEnabled zoomPIPSlaveStreamingEnabled:(float)streamingEnabled zoomPIPSlaveStreamingFrameRate:(unsigned __int8)self0 debugOverlayEnabled:(unsigned __int8)self1 parallelGraphRebuildEnabled:(uint64_t)self2 transform:(uint64_t)self3 remoteVideoPreview:(unsigned __int8)self4 maxLossyCompressionLevel:(unsigned int)self5 clientAuditToken:(_OWORD *)self6 graph:(void *)self7 captureDevice:(void *)self8 previewTapDelegate:(uint64_t)self9 videoHDRImageStatisticsEnabled:(unsigned __int8)statisticsEnabled zoomPIPOverlayDelegate:(uint64_t)overlayDelegate metalCommandQueue:(uint64_t)queue;
- (id)_buildPreviewSmartStyleCoefficientsTimeMachineSinkPipeline:(uint64_t)pipeline upstreamPipelineStageForPreviewTimeMachine:(uint64_t)machine previewTimeMachineConnectionConfiguration:(void *)configuration graph:(void *)graph captureDevice:;
- (id)_metalCommandQueueWithNamePrefix:(uint64_t)prefix priority:;
- (id)_stashPreviewImageQueueUpdatedNotificationPayload:(unint64_t)payload previewDimensions:(int)dimensions remoteVideoPreview:;
- (id)toggleDepthDensificationAccordingToFilters:(id *)result;
- (uint64_t)_appendFilteredPreviewPipeline:(BWPipelineStage *)pipeline desiredPipelineStage:(BWPipelineStage *)stage desiredStreamingFilterPipelineStage:(uint64_t)pipelineStage previewSinkPipelineConfiguration:(void *)configuration videoPreviewSinkConnectionConfiguration:(void *)connectionConfiguration graph:(uint64_t)graph inferenceScheduler:(void *)scheduler captureDevice:(unsigned __int8)self0 focusBlurMapForDepthFiltersEnabled:(unsigned __int8)self1 depthFromMonocularNetworkEnabled:(unsigned __int8)self2 runMonocularDepthInVideoDepthNode:(unsigned int)self3 maxLossyCompressionLevel:(uint64_t)self4 metalCommandQueue:(unsigned __int8)self5 depthFilterRenderingIsAfterPreviewStitcher:(unsigned __int8)self6 portraitAutoSuggestEnabled:(void *)self7 sourceStillImageOutputsByPortType:(unsigned __int8)self8 usePrimaryPreviewSourceAttachedMediaForInference:;
- (uint64_t)_metalCompletionQueue;
- (uint64_t)_metalSubmissionQueue;
- (unint64_t)_buildVideoPreviewSinkPipeline:(BWNodeOutput *)pipeline sourcePreviewOutput:(void *)output graph:(uint64_t)graph inferenceScheduler:(void *)scheduler captureDevice:(uint64_t)device previewTapDelegate:(uint64_t)delegate zoomPIPOverlayDelegate:(uint64_t)overlayDelegate sourceStillImageOutputsByPortType:;
- (void)_buildPreviewTimeMachineSinkPipeline:(uint64_t)pipeline upstreamPipelineStageForPreviewTimeMachine:(uint64_t)machine upstreamTransform:(uint64_t)transform previewTimeMachineConnectionConfiguration:(uint64_t)configuration videoPreviewEnabled:(uint64_t)enabled smartCameraMotionDetectionEnabled:(uint64_t)detectionEnabled graph:(void *)graph captureDevice:(void *)self0;
- (void)_setPortraitRenderingInferencesNeededForFilters:(void *)result;
- (void)dealloc;
- (void)liveReconfigureForOutputDimensions:(id)dimensions;
- (void)setDiscardsImageQueueSampleData:(BOOL)data;
- (void)setFilters:(id)filters;
- (void)setPreviewTapRegistered:(BOOL)registered;
- (void)setPrimaryCaptureRectAspectRatio:(double)ratio center:(CGPoint)center trueVideoTransitionPercentComplete:(double)complete smartFramingTransitionPercentComplete:(double)percentComplete smartFramingTransitionTargetFieldOfView:(int)view fencePortSendRight:(id)right uniqueID:(int64_t)d;
- (void)setSceneClassifierSuspended:(BOOL)suspended;
- (void)setSemanticStyle:(id)style;
- (void)setSemanticStyle:(id)style animated:(BOOL)animated;
- (void)setSemanticStyleRenderingSuspended:(BOOL)suspended animated:(BOOL)animated;
- (void)setSemanticStyleSet:(id)set fencePortSendRight:(id)right;
- (void)setStoppingForModeSwitch:(BOOL)switch parallelGraphRebuildEnabled:(BOOL)enabled ispFastSwitchEnabled:(BOOL)switchEnabled smartStyleRenderingEnabledInTrueVideoGraph:(BOOL)graph;
- (void)setVideoStabilizationOverscanCropEnabled:(BOOL)enabled momentMovieRecordingEnabled:(BOOL)recordingEnabled;
- (void)updateClientAuditToken:(id *)token;
@end

@implementation FigCapturePreviewSinkPipeline

- (FigCaptureVideoTransform)outputTransform
{
  p_outputTransform = &self->_outputTransform;
  v3 = *&self->_outputTransform.mirrored;
  dimensions = p_outputTransform->dimensions;
  result.dimensions = dimensions;
  result.mirrored = v3;
  result.rotationDegrees = HIDWORD(v3);
  return result;
}

- (FigCaptureVideoTransform)videoThumbnailSinkOutputTransform
{
  p_videoThumbnailSinkOutputTransform = &self->_videoThumbnailSinkOutputTransform;
  v3 = *&self->_videoThumbnailSinkOutputTransform.mirrored;
  dimensions = p_videoThumbnailSinkOutputTransform->dimensions;
  result.dimensions = dimensions;
  result.mirrored = v3;
  result.rotationDegrees = HIDWORD(v3);
  return result;
}

- (BOOL)discardsImageQueueSampleData
{
  output = [(BWNodeConnection *)[(BWNodeInput *)[(BWNode *)self->_imageQueueSinkNode input] connection] output];

  return [(BWNodeOutput *)output discardsSampleData];
}

- (float)portraitLightingEffectStrength
{
  filterNode = self->_filterNode;
  if (!filterNode)
  {
    return NAN;
  }

  [(BWStreamingFilterNode *)filterNode portraitLightingEffectStrength];
  return result;
}

- (CGPoint)primaryCaptureRectCenter
{
  previewStitcher = self->_previewStitcher;
  if (previewStitcher)
  {
    [(BWPreviewStitcherNode *)previewStitcher primaryCaptureRectCenter];
  }

  else
  {
    v3 = 0.5;
    v4 = 0.5;
  }

  result.y = v4;
  result.x = v3;
  return result;
}

- (void)dealloc
{
  [(BWImageQueueSinkNode *)self->_imageQueueSinkNode setCaptureDevice:0];

  v3.receiver = self;
  v3.super_class = FigCapturePreviewSinkPipeline;
  [(FigCaptureSinkPipeline *)&v3 dealloc];
}

- (void)setDiscardsImageQueueSampleData:(BOOL)data
{
  dataCopy = data;
  output = [(BWNodeConnection *)[(BWNodeInput *)[(BWNode *)self->_imageQueueSinkNode input] connection] output];

  [(BWNodeOutput *)output setDiscardsSampleData:dataCopy];
}

- (void)setSceneClassifierSuspended:(BOOL)suspended
{
  if (self->_sceneClassifierSinkNode)
  {
    suspendedCopy = suspended;
    sceneClassifierPipelineUpstreamOutput = self->_sceneClassifierPipelineUpstreamOutput;
    if (!sceneClassifierPipelineUpstreamOutput)
    {
      [(FigCapturePreviewSinkPipeline *)&self->_sceneClassifierPipelineUpstreamOutput setSceneClassifierSuspended:?];
      sceneClassifierPipelineUpstreamOutput = v5;
    }

    [(BWNodeOutput *)sceneClassifierPipelineUpstreamOutput setDiscardsSampleData:suspendedCopy];
  }
}

- (void)setPrimaryCaptureRectAspectRatio:(double)ratio center:(CGPoint)center trueVideoTransitionPercentComplete:(double)complete smartFramingTransitionPercentComplete:(double)percentComplete smartFramingTransitionTargetFieldOfView:(int)view fencePortSendRight:(id)right uniqueID:(int64_t)d
{
  if (self->_primaryCaptureRectUniqueID <= d)
  {
    v11 = *&view;
    y = center.y;
    x = center.x;
    if (self->_trueVideoTransitionPercentComplete < complete && ![(BWPreviewStitcherNode *)self->_previewStitcher trueVideoCaptureEnabled])
    {
      [(BWPreviewStabilizationNode *)self->_previewStabilizationNode setRampOffStabilizationForGraphStop:1];
    }

    self->_trueVideoTransitionPercentComplete = complete;
    self->_primaryCaptureRectUniqueID = d;
    v18 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [right port];
      kdebug_trace();
    }

    [(BWImageQueueSinkNode *)self->_imageQueueSinkNode fencePortGenerationIDWillChange];
    [(BWPreviewStitcherNode *)self->_previewStitcher setPrimaryCaptureRectAspectRatio:0 center:v11 trueVideoTransitionPercentComplete:right trueVideoTransitionReferenceSampleBuffer:ratio smartFramingTransitionPercentComplete:x smartFramingTransitionTargetFieldOfView:y fencePortSendRight:complete, percentComplete];
    if (*v18 == 1)
    {

      kdebug_trace();
    }
  }
}

- (void)setVideoStabilizationOverscanCropEnabled:(BOOL)enabled momentMovieRecordingEnabled:(BOOL)recordingEnabled
{
  v4 = 1.0;
  if (enabled)
  {
    v4 = self->_videoStabilizationOverscan + 1.0;
  }

  v5 = recordingEnabled && !self->_applyPreviewShiftToMomentCapture;
  [(BWPreviewStitcherNode *)self->_previewStitcher rampToAdditionalZoomFactor:v5 momentMovieRecordingRecenteringEnabled:v4];
}

- (void)setStoppingForModeSwitch:(BOOL)switch parallelGraphRebuildEnabled:(BOOL)enabled ispFastSwitchEnabled:(BOOL)switchEnabled smartStyleRenderingEnabledInTrueVideoGraph:(BOOL)graph
{
  enabledCopy = enabled;
  [(BWPreviewStitcherNode *)self->_previewStitcher setStoppingForModeSwitch:switch delayedEndOfDataEnabled:enabled ispFastSwitchEnabled:switchEnabled smartStyleRenderingEnabledInTrueVideoGraph:graph];
  if (enabledCopy)
  {
    [(BWPreviewStabilizationNode *)self->_previewStabilizationNode setRampOffStabilizationForGraphStop:1];
    [(BWVideoDepthNode *)self->_videoDepthNode setReleasesResourcesAtEndOfData:0];
    [(BWInferenceNode *)self->_opticalFlowInferenceNode setEndOfDataBehavior:1];
    [(BWInferenceNode *)self->_personSegmentationAndDepthNode setEndOfDataBehavior:1];
    [(BWInferenceNode *)self->_portraitOnlyPersonSegmentationNode setEndOfDataBehavior:1];
    zoomPIPOverlayNode = self->_zoomPIPOverlayNode;

    [(BWVideoPIPOverlayNode *)zoomPIPOverlayNode setReleasesResourcesAtEndOfData:0];
  }
}

- (void)setPreviewTapRegistered:(BOOL)registered
{
  previewStitcher = self->_previewStitcher;
  if (previewStitcher)
  {
    [(BWPreviewStitcherNode *)previewStitcher setPreviewTapRegistered:registered];
  }
}

- (void)updateClientAuditToken:(id *)token
{
  self->_primaryCaptureRectUniqueID = 0;
  imageQueueSinkNode = self->_imageQueueSinkNode;
  v4 = *&token->var0[4];
  v5[0] = *token->var0;
  v5[1] = v4;
  [(BWImageQueueSinkNode *)imageQueueSinkNode updateClientAuditToken:v5];
}

- (void)liveReconfigureForOutputDimensions:(id)dimensions
{
  [(BWPixelTransferNode *)self->_scalerNode setOutputWidth:dimensions.var0];
  [(BWPixelTransferNode *)self->_scalerNode setOutputHeight:*&dimensions >> 32];
  lowLatencyStabilizationNode = self->_lowLatencyStabilizationNode;

  [(BWSmartCropNode *)lowLatencyStabilizationNode setOutputDimensions:dimensions];
}

- (FigCapturePreviewSinkPipeline)initWithConfiguration:(id)configuration sourcePreviewOutput:(id)output imageQueueSinkNode:(id)node graph:(id)graph name:(id)name inferenceScheduler:(id)scheduler captureDevice:(id)device previewTapDelegate:(id)self0 zoomPIPOverlayDelegate:(id)self1 sourceStillImageOutputsByPortType:(id)self2
{
  if (configuration)
  {
    v18 = *(configuration + 1);
  }

  else
  {
    v18 = 0;
  }

  v26.receiver = self;
  v26.super_class = FigCapturePreviewSinkPipeline;
  v19 = [(FigCaptureSinkPipeline *)&v26 initWithGraph:graph name:name sinkID:v18];
  if (v19)
  {
    v19->_imageQueueSinkNode = node;
    if (configuration)
    {
      v19->_overCaptureEnabled = *(configuration + 130);
      v19->_singleCameraOverCaptureEnabled = *(configuration + 131);
      v19->_videoStabilizationOverscan = *(configuration + 17);
      v21 = *(configuration + 2);
    }

    else
    {
      v21 = 0;
      v19->_overCaptureEnabled = 0;
      v19->_singleCameraOverCaptureEnabled = 0;
      v19->_videoStabilizationOverscan = 0.0;
    }

    v19->_primaryCaptureRectUniqueID = [objc_msgSend(v21 "videoPreviewSinkConfiguration")];
    if (configuration)
    {
      v22 = *(configuration + 9);
    }

    else
    {
      v22 = 0;
    }

    v19->_applyPreviewShiftToMomentCapture = [objc_msgSend(v22 "irisSinkConfiguration")];
    v23 = [(FigCapturePreviewSinkPipeline *)v19 _buildVideoPreviewSinkPipeline:configuration sourcePreviewOutput:output graph:graph inferenceScheduler:scheduler captureDevice:device previewTapDelegate:delegate zoomPIPOverlayDelegate:overlayDelegate sourceStillImageOutputsByPortType:type];
    if (v23)
    {
      v24 = v23;
      fig_log_get_emitter();
      LODWORD(v25) = v24;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v25, v12, v26.receiver, v26.super_class, v27, v28, v29, v30);

      return 0;
    }
  }

  return v19;
}

- (unint64_t)_buildVideoPreviewSinkPipeline:(BWNodeOutput *)pipeline sourcePreviewOutput:(void *)output graph:(uint64_t)graph inferenceScheduler:(void *)scheduler captureDevice:(uint64_t)device previewTapDelegate:(uint64_t)delegate zoomPIPOverlayDelegate:(uint64_t)overlayDelegate sourceStillImageOutputsByPortType:
{
  delegateCopy = delegate;
  deviceCopy = device;
  outputCopy = output;
  v413 = result;
  if (!result)
  {
    return result;
  }

  v444[0] = 0;
  pipelineCopy = pipeline;
  v443 = 0;
  v362 = kFigCaptureVideoTransform_Identity;
  v441 = kFigCaptureVideoTransform_Identity;
  if (a2)
  {
    previewFilterRenderingEnabled = [*(a2 + 16) previewFilterRenderingEnabled];
    v13 = *(a2 + 181);
    LODWORD(v391) = *(a2 + 182);
    v14 = *(a2 + 183);
    v15 = *(a2 + 16);
  }

  else
  {
    previewFilterRenderingEnabled = [0 previewFilterRenderingEnabled];
    v14 = 0;
    v13 = 0;
    LODWORD(v391) = 0;
    v15 = 0;
  }

  v413[328] = [v15 previewDepthFilterRenderingEnabled];
  if (a2)
  {
    v413[281] = *(a2 + 184);
    *(v413 + 76) = 0;
    v413[252] = *(a2 + 163);
    v16 = *(a2 + 16);
    if (v16)
    {
      v17 = [objc_msgSend(v16 "sourceConfiguration")];
      v18 = [objc_msgSend(FigCaptureDeviceCoreRepairStatusesByKeys(v17) objectForKeyedSubscript:{@"FrontCameraAssembly", "intValue"}];
      if (([v17 isPhotoFormat] & 1) == 0 && ((previewFilterRenderingEnabled ^ 1) & 1) == 0)
      {
        previewFilterRenderingEnabled = ((v18 & 0xFFFFFFFE) != 2) & previewFilterRenderingEnabled;
      }

      [v17 maxContinuousZoomFactorForDepthDataDelivery];
      if (v19 == 0.0)
      {
        previewDepthDataDeliveryEnabled = 0;
      }

      else
      {
        previewDepthDataDeliveryEnabled = [*(a2 + 16) previewDepthDataDeliveryEnabled];
      }

      HIDWORD(v391) = previewFilterRenderingEnabled;
      [v17 maxContinuousZoomFactorForDepthDataDelivery];
      if (v22 == 0.0)
      {
        v21 = 0;
      }

      else
      {
        v21 = v413[328];
      }

      HIDWORD(v376) = [*(a2 + 16) portraitAutoSuggestEnabled];
      if ((v376 & 0x100000000) == 0)
      {
        OUTLINED_FUNCTION_14_35();
        if (v23 != 1)
        {
          HIDWORD(v376) = 0;
        }
      }
    }

    else
    {
      HIDWORD(v391) = previewFilterRenderingEnabled;
      HIDWORD(v376) = 0;
      v21 = 0;
      previewDepthDataDeliveryEnabled = 0;
    }

    OUTLINED_FUNCTION_14_35();
    LODWORD(v380) = v24;
    HIDWORD(v369) = v25 & (v24 ^ 1);
    v26 = *(a2 + 16);
    HIDWORD(v360) = previewDepthDataDeliveryEnabled | v21;
  }

  else
  {
    HIDWORD(v391) = previewFilterRenderingEnabled;
    HIDWORD(v360) = 0;
    LODWORD(v380) = 0;
    HIDWORD(v376) = 0;
    v26 = 0;
    v413[281] = 0;
    *(v413 + 76) = 0;
    v413[252] = 0;
    HIDWORD(v369) = v413[328];
  }

  HIDWORD(v402) = [objc_msgSend(v26 "videoPreviewSinkConfiguration")];
  schedulerCopy = scheduler;
  HIDWORD(v378) = [scheduler depthType];
  if (HIDWORD(v378) == 4)
  {
    HIDWORD(v380) = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters monocularStreamingDepthType]== 2;
    if ((v391 & 0x100000000) != 0)
    {
LABEL_26:
      v29 = 1;
      if (!a2)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    HIDWORD(v380) = 0;
    if ((v391 & 0x100000000) != 0)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_14_35();
  if (v28)
  {
    goto LABEL_26;
  }

  v29 = *(v27 + 281);
  if (!a2)
  {
LABEL_31:
    v415 = 0;
    goto LABEL_32;
  }

LABEL_29:
  if (!*(a2 + 48))
  {
    goto LABEL_31;
  }

  v415 = *(a2 + 128);
LABEL_32:
  metalDevice = [MEMORY[0x1E6991778] metalDevice];
  if (!metalDevice || (v371 = [metalDevice newCommandQueue]) == 0 || (v31 = -[FigCapturePreviewSinkPipeline _metalCompletionQueue](v413)) == 0 || (v32 = v31, (v33 = -[FigCapturePreviewSinkPipeline _metalSubmissionQueue](v413)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_372;
  }

  v34 = v33;
  [v371 setCompletionQueue:v32];
  [v371 setSubmissionQueue:v34];
  [v413 setUpstreamOutput:pipeline];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (a2)
  {
    if (*(a2 + 16))
    {
      [array addObject:?];
    }

    if (*(a2 + 48))
    {
      v35 = array2;
      if ((v29 & 1) == 0)
      {
        v35 = array;
      }

      if (v415)
      {
        v36 = array;
      }

      else
      {
        v36 = v35;
      }

      [v36 addObject:?];
    }

    if (!((*(a2 + 24) == 0) | BYTE4(v369) & 1))
    {
      [array addObject:?];
    }

    if (*(a2 + 32))
    {
      [array addObject:?];
    }

    if (*(a2 + 40))
    {
      [array addObject:?];
    }

    if (*(a2 + 232))
    {
      if (v29)
      {
        v37 = array2;
      }

      else
      {
        v37 = array;
      }

      [v37 addObject:?];
    }

    if (*(a2 + 56))
    {
      if (v29)
      {
        v38 = array2;
      }

      else
      {
        v38 = array;
      }

      [v38 addObject:?];
    }

    if (*(a2 + 64))
    {
      [array addObject:?];
    }
  }

  if ([array count])
  {
    v39 = array;
  }

  else
  {
    v39 = array2;
  }

  if (![v39 count])
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v358, v313, v315, v317, v319, v321, v323);
    emitter = fig_log_get_emitter();
    v444[0] = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< FigCapturePreviewSinkPipeline >>>>", 0x31F, v358, v62, v63, v310);
    goto LABEL_372;
  }

  v40 = v413;
  *(v413 + 30) = [objc_msgSend(objc_msgSend(v39 "firstObject")];
  *(v413 + 62) = [objc_msgSend(v39 "firstObject")];
  v408 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.preview", [objc_msgSend(v39 "firstObject")]), 6);
  if (a2)
  {
    v41 = *(a2 + 72);
  }

  else
  {
    v41 = 0;
  }

  if (([objc_msgSend(v41 "irisSinkConfiguration")] & 1) != 0 || a2 && *(a2 + 187) == 1 && (*(a2 + 186) & 1) == 0)
  {
    v42 = objc_alloc_init(BWFrameRateGovernorNode);
    [(BWNode *)v42 setName:@"Preview Governor"];
    if (a2)
    {
      [objc_msgSend(*(a2 + 72) "irisSinkConfiguration")];
      [OUTLINED_FUNCTION_17() setDropsStillBracketFramesToMaintainConsistentFrameRate:?];
      if (*(a2 + 187) == 1 && (*(a2 + 186) & 1) == 0)
      {
        [(BWFrameRateGovernorNode *)v42 setDropsStartupFramesWithUnstableAE:1];
        [(BWFrameRateGovernorNode *)v42 setAeStabilityTuning:1];
      }
    }

    else
    {
      [objc_msgSend(0 "irisSinkConfiguration")];
      [OUTLINED_FUNCTION_17() setDropsStillBracketFramesToMaintainConsistentFrameRate:?];
    }

    v440.receiver = v413;
    v440.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v440, sel_addNode_error_, v42, &v443) & 1) == 0 || ([outputCopy connectOutput:pipelineCopy toInput:-[BWNode input](v42 pipelineStage:{"input"), 0}] & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      goto LABEL_372;
    }

    pipelineCopy = [(BWNode *)v42 output];
    v40 = v413;
  }

  if ([array2 count])
  {
    v43 = v40;
    v44 = -[BWFanOutNode initWithFanOutCount:mediaType:]([BWFanOutNode alloc], "initWithFanOutCount:mediaType:", [array2 count] + 1, 1986618469);
    [(BWNode *)v44 setName:@"Preview Pre-Filter Splitter"];
    v439.receiver = v43;
    v439.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v439, sel_addNode_error_, v44, &v443) & 1) == 0 || (v45 = pipelineCopy, v46 = -[BWNode input](v44, "input"), ([OUTLINED_FUNCTION_12_40(v46 v47] & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
      goto LABEL_372;
    }

    pipelineCopy = [(NSArray *)[(BWNode *)v44 outputs] objectAtIndexedSubscript:0];
    outputs = [(BWNode *)v44 outputs];
    v40 = v413;
    if (a2)
    {
      goto LABEL_85;
    }
  }

  else
  {
    outputs = 0;
    if (a2)
    {
LABEL_85:
      v54 = *(a2 + 16);
      goto LABEL_86;
    }
  }

  v54 = 0;
LABEL_86:
  overlayDelegateCopy = overlayDelegate;
  sourceConfiguration = [v54 sourceConfiguration];
  v385 = v39;
  requiredFormat = [sourceConfiguration requiredFormat];
  if (!a2)
  {
    LODWORD(v378) = 0;
    goto LABEL_122;
  }

  if (*(a2 + 130) == 1)
  {
    LODWORD(v55) = 0;
    OUTLINED_FUNCTION_16_33();
    goto LABEL_99;
  }

  if (*(a2 + 132))
  {
    OUTLINED_FUNCTION_16_33();
    goto LABEL_94;
  }

  v56 = *(a2 + 131);
  LODWORD(v378) = HIDWORD(v380) & v380 & v56;
  if ((v56 & 1) == 0)
  {
LABEL_122:
    LODWORD(v406) = 0;
LABEL_123:
    LODWORD(v55) = 1;
    goto LABEL_124;
  }

LABEL_94:
  if (*(a2 + 131) & 1) != 0 || *(a2 + 94) == 1 && ([objc_msgSend(*(a2 + 72) "irisSinkConfiguration")] & 1) != 0 || (*(a2 + 144))
  {
    LODWORD(v55) = 0;
  }

  else
  {
    LODWORD(v55) = v380 & HIDWORD(v380) ^ 1;
  }

LABEL_99:
  LODWORD(v406) = 1;
  if (*(a2 + 144) == 1 && (v55 & 1) == 0)
  {
    if ([schedulerCopy position] != 2)
    {
      LODWORD(v55) = 0;
      LODWORD(v406) = 1;
LABEL_110:
      HIDWORD(v364) = 1;
      goto LABEL_128;
    }

    dimensions = [requiredFormat dimensions];
    v58 = HIDWORD(dimensions);
    if (dimensions != 3840 || v58 != 2160)
    {
      LODWORD(v55) = 0;
      LODWORD(v406) = 1;
      if (dimensions != 2160 || v58 != 3840)
      {
        goto LABEL_110;
      }
    }

    v59 = [objc_msgSend(*(a2 + 16) "sourceConfiguration")];
    LODWORD(v406) = 1;
    if (FigCaptureFrameRateAsFloat(v59, v60) < 60.0)
    {
      LODWORD(v55) = 0;
      goto LABEL_110;
    }

    goto LABEL_123;
  }

LABEL_124:
  if (*(v40 + 281) == 1 && (v55 & 1) != 0 && ((*(v40 + 252) | HIDWORD(v380)) & 1) == 0)
  {
    v218 = OUTLINED_FUNCTION_8_49();
    v219 = [FigCapturePreviewSinkPipeline _appendSmartStyleApplyNodeToPreviewPipelineStage:v218 previewSinkPipelineConfiguration:? graph:? metalCommandQueue:? upstreamOutput:?];
    v444[0] = v219;
    if (v219)
    {
      v220 = v219;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_105();
      LODWORD(v309) = v220;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
      goto LABEL_372;
    }
  }

  HIDWORD(v364) = v55 ^ 1;
  if (!a2)
  {
    if ((v369 & 0x100000000) == 0)
    {
      v40 = v413;
      goto LABEL_140;
    }

    v40 = v413;
    goto LABEL_139;
  }

LABEL_128:
  if (*(a2 + 225) == 1)
  {
    FigCaptureSourceGetIntAttribute([objc_msgSend(*(a2 + 16) "sourceConfiguration")], @"PearlModuleType", v444);
    v64 = v444[0];
    if (v444[0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_105();
      LODWORD(v309) = v64;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
      goto LABEL_372;
    }

    v65 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.previewfacetracking", [objc_msgSend(v39 "firstObject")]), -[BWPipelineStage priority](v408, "priority"));
    v66 = [BWFaceTrackingNode alloc];
    [(BWPipelineStage *)v65 priority];
    v67 = [OUTLINED_FUNCTION_28() initWithFigThreadPriority:? pearlModuleType:? useUnfilteredDepth:? queueDepth:? passthroughInputs:? allowPixelTransfer:?];
    if (!v67)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      goto LABEL_267;
    }

    v68 = v67;
    [v67 setName:@"Face Tracking"];
    v438.receiver = v40;
    v438.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v438, sel_addNode_error_, v68, &v443) & 1) == 0 || ([outputCopy connectOutput:pipelineCopy toInput:objc_msgSend(v68 pipelineStage:{"input"), v65}] & 1) == 0)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
      goto LABEL_372;
    }

    v69 = v68;
    *(v40 + 144) = v69;
    pipelineCopy = [v69 output];
    [OUTLINED_FUNCTION_9_50() setMirrored:?];
    [OUTLINED_FUNCTION_9_50() setRotationDegrees:?];
    [*(v40 + 144) setMaxFaces:1];
    [OUTLINED_FUNCTION_9_50() setUsesFaceRecognition:?];
    [OUTLINED_FUNCTION_9_50() setFaceTrackingPlusEnabled:?];
    [*(v40 + 144) setNetworkFailureThresholdMultiplier:0.0];
    LODWORD(v70) = -1.0;
    [*(v40 + 144) setTrackingFailureFieldOfViewModifier:v70];
  }

  if ((v369 & 0x100000000) != 0)
  {
    if (*(a2 + 24))
    {
      v71 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:1986618469];
      v437.receiver = v40;
      v437.super_class = FigCapturePreviewSinkPipeline;
      if ((objc_msgSendSuper2(&v437, sel_addNode_error_, v71, &v443) & 1) == 0 || ([outputCopy connectOutput:pipelineCopy toInput:-[BWNode input](v71 pipelineStage:{"input"), 0}] & 1) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_94();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
        goto LABEL_372;
      }

      pipelineCopy = [(NSArray *)[(BWNode *)v71 outputs] objectAtIndexedSubscript:0];
      *(v40 + 184) = [(NSArray *)[(BWNode *)v71 outputs] objectAtIndexedSubscript:1];
    }

LABEL_139:
    OUTLINED_FUNCTION_7_58();
    HIDWORD(v311) = v72;
    v73 = OUTLINED_FUNCTION_11_41();
    v76 = [(FigCapturePreviewSinkPipeline *)v73 _appendFilteredPreviewPipeline:v74 desiredPipelineStage:0 desiredStreamingFilterPipelineStage:0 previewSinkPipelineConfiguration:a2 videoPreviewSinkConnectionConfiguration:v75 graph:outputCopy inferenceScheduler:graph captureDevice:v309 focusBlurMapForDepthFiltersEnabled:v311 depthFromMonocularNetworkEnabled:BYTE1(v311) runMonocularDepthInVideoDepthNode:BYTE2(v311) maxLossyCompressionLevel:HIDWORD(v311) metalCommandQueue:v371 depthFilterRenderingIsAfterPreviewStitcher:v315 portraitAutoSuggestEnabled:BYTE1(v315) sourceStillImageOutputsByPortType:v317 usePrimaryPreviewSourceAttachedMediaForInference:v319];
    v444[0] = v76;
    if (v76)
    {
LABEL_241:
      v217 = v76;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_105();
      LODWORD(v309) = v217;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
      goto LABEL_372;
    }
  }

LABEL_140:
  if (*(v40 + 281) == 1 && (v55 & 1) != 0 && (*(v40 + 252) & 1) == 0 && ((HIDWORD(v380) ^ 1) & 1) == 0)
  {
    v216 = OUTLINED_FUNCTION_8_49();
    v76 = [FigCapturePreviewSinkPipeline _appendSmartStyleApplyNodeToPreviewPipelineStage:v216 previewSinkPipelineConfiguration:? graph:? metalCommandQueue:? upstreamOutput:?];
    v444[0] = v76;
    if (v76)
    {
      goto LABEL_241;
    }
  }

  v77 = array;
  if ((v14 & 1) == 0)
  {
    if (v13)
    {
LABEL_146:
      v78 = [objc_msgSend(objc_msgSend(schedulerCopy "captureStreamsByFocalLength")];
LABEL_154:
      HIDWORD(v398) = v55;
      LODWORD(v382) = v13;
      if ((v391 | v78))
      {
        if (BWDeviceTypeIsExtensionDeviceType(*(v40 + 248)))
        {
          v348 = *(MEMORY[0x1E69E9B10] + 16);
          v353 = *MEMORY[0x1E69E9B10];
          v342 = *(MEMORY[0x1E69E9B10] + 32);
          v93 = schedulerCopy;
        }

        else
        {
          v93 = schedulerCopy;
          v94 = [schedulerCopy position] == 2;
          *&v96 = FigCaptureGetDeviceToCameraTransform(v94, v95);
          v348 = v97;
          v353 = v96;
          v342 = v98;
        }

        if (v78)
        {
          v99 = 2;
        }

        else
        {
          v99 = 1;
        }

        v100 = FigCaptureConvertDimensionsForAspectRatio([requiredFormat dimensions], objc_msgSend(sourceConfiguration, "outputAspectRatio"));
        v101 = [BWSmartCropNode alloc];
        cameraInfoByPortType = [v93 cameraInfoByPortType];
        horizontalSensorBinningFactor = [requiredFormat horizontalSensorBinningFactor];
        verticalSensorBinningFactor = [requiredFormat verticalSensorBinningFactor];
        if (a2)
        {
          v105 = *(a2 + 164);
        }

        else
        {
          v105 = 0;
        }

        LOBYTE(v309) = 0;
        v106 = [(BWSmartCropNode *)v101 initWithOutputDimensions:v100 cameraInfoByPortType:cameraInfoByPortType horizontalSensorBinningFactor:horizontalSensorBinningFactor verticalSensorBinningFactor:verticalSensorBinningFactor maxLossyCompressionLevel:v105 cameraExtrinsicMatrix:v99 processingMode:*&v353 stillCaptureEnabled:*&v348 objectMetadataIdentifiers:*&v342 captureDevice:v309];
        v107 = v106;
        if (v78)
        {
          v108 = @"Rolling Shutter Correction";
        }

        else
        {
          v108 = @"Low Latency Stabilization";
        }

        [(BWNode *)v106 setName:v108];
        v435.receiver = v40;
        v435.super_class = FigCapturePreviewSinkPipeline;
        if ((objc_msgSendSuper2(&v435, sel_addNode_error_, v107, &v443) & 1) == 0 || (v109 = pipelineCopy, v110 = -[BWNode input](v107, "input"), ([OUTLINED_FUNCTION_12_40(v110 v111] & 1) == 0))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_94();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
          goto LABEL_372;
        }

        pipelineCopy = [(BWNode *)v107 output];
        *(v40 + 160) = v107;
        v77 = array;
        LOBYTE(v55) = BYTE4(v398);
        LOBYTE(v13) = v382;
      }

      v118 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
      if (v13)
      {
        if (a2)
        {
          if (*(a2 + 130))
          {
            v119 = 0;
          }

          else
          {
            v119 = *(a2 + 132) ^ 1;
          }
        }

        else
        {
          v119 = 1;
        }

        cameraInfoByPortType2 = [schedulerCopy cameraInfoByPortType];
        v121 = [schedulerCopy autoImageControlMode] == 0;
        [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters previewStabilizationParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
        v123 = v122;
        v124 = [BWPreviewStabilizationNode alloc];
        LODWORD(v125) = v123;
        v126 = [(BWPreviewStabilizationNode *)v124 initWithCameraInfoByPortType:cameraInfoByPortType2 forStillImagePreview:v121 updateFinalCropRectWithStabilizationShift:v119 & 1 minimumSupportedUIZoomFactor:v125];
        if (!v126)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_94();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          goto LABEL_267;
        }

        v127 = v126;
        [(BWNode *)v126 setName:@"Preview Stabilization"];
        v434.receiver = v40;
        v434.super_class = FigCapturePreviewSinkPipeline;
        if ((objc_msgSendSuper2(&v434, sel_addNode_error_, v127, &v443) & 1) == 0 || (v128 = pipelineCopy, v129 = -[BWNode input](v127, "input"), ([OUTLINED_FUNCTION_12_40(v129 v130] & 1) == 0))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_94();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
          goto LABEL_372;
        }

        *(v40 + 128) = v127;
        pipelineCopy = [(BWNode *)v127 output];
      }

      v137 = schedulerCopy;
      if (!v406)
      {
LABEL_229:
        if (!(v55 & 1 | ((*(v40 + v118[401]) & 1) == 0) | BYTE4(v380) & 1))
        {
          v213 = OUTLINED_FUNCTION_8_49();
          v214 = [FigCapturePreviewSinkPipeline _appendOverCaptureSmartStyleApplyNodeToPreviewPipelineStage:v213 previewSinkPipelineConfiguration:? graph:? metalCommandQueue:? upstreamOutput:?];
          v444[0] = v214;
          if (v214)
          {
            v215 = v214;
            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_105();
            LODWORD(v309) = v215;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
            goto LABEL_372;
          }
        }

        FigCapturePixelFormatIsTenBit([objc_msgSend(objc_msgSend(objc_msgSend(v385 "firstObject")]);
        v201 = -[BWPixelTransferNode initWithfractionalSourceRectEnabled:]([BWPixelTransferNode alloc], "initWithfractionalSourceRectEnabled:", (([v137 parallaxMitigationBasedOnZoomFactorEnabled] | v13) | v391) & 1);
        [(BWNode *)v201 setName:@"Preview Scaler"];
        firstObject = [v385 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (a2)
          {
            LODWORD(v391) = (v406 ^ 1) & *(a2 + 162);
            v203 = *(a2 + 88);
            v204 = *(a2 + 164);
            transform = [firstObject transform];
            v207 = v206;
            v208 = HIDWORD(transform);
            if (v203 == 5)
            {
              v209 = v413;
              if ([objc_msgSend(firstObject "sinkConfiguration")] == 1)
              {
                v210 = 0;
                v211 = 5;
                goto LABEL_279;
              }

LABEL_276:
              if ([objc_msgSend(firstObject "sinkConfiguration")] == 6)
              {
                v223 = MEMORY[0x1E696AD98];
                outputFormat = [firstObject outputFormat];
                v225 = v223;
                v77 = array;
                *&v423 = [v225 numberWithInt:outputFormat];
                v210 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v423 count:1];
                v211 = 0;
              }

              else
              {
                v211 = 0;
                v210 = 0;
              }

LABEL_279:
              [(BWPixelTransferNode *)v201 setPreferredOutputPixelFormats:v210];
              [(BWPixelTransferNode *)v201 setOutputColorSpaceProperties:v211];
              [(BWPixelTransferNode *)v201 setMaxLossyCompressionLevel:v204];
              if ((v406 & 1) == 0)
              {
                [(BWPixelTransferNode *)v201 setOutputWidth:v207];
                [(BWPixelTransferNode *)v201 setOutputHeight:v207 >> 32];
                [(BWPixelTransferNode *)v201 setRotationDegrees:v208];
                v226 = FigCaptureTransformFlipAppliedBeforeRotationToAfter(transform & 1, v208);
                [(BWPixelTransferNode *)v201 setFlipHorizontal:v226 == 1];
                [(BWPixelTransferNode *)v201 setFlipVertical:v226 == 2];
              }

              [(BWPixelTransferNode *)v201 setCropMode:1];
              if (![(BWPixelTransferNode *)v201 flipHorizontal]&& ![(BWPixelTransferNode *)v201 flipVertical]&& ![(BWPixelTransferNode *)v201 rotationDegrees])
              {
                [(BWPixelTransferNode *)v201 setPassesBuffersThroughWhenPossible:1];
              }

              [(BWPixelTransferNode *)v201 setGeneratesHistogram:v391];
              [(BWPixelTransferNode *)v201 setAllows422To420Conversion:1];
              *&v441 = transform;
              *(&v441 + 1) = v207;
              v432.receiver = v209;
              v432.super_class = FigCapturePreviewSinkPipeline;
              v227 = v371;
              if (objc_msgSendSuper2(&v432, sel_addNode_error_, v201, &v443))
              {
                *(v209 + 6) = v201;
                v228 = pipelineCopy;
                input = [(BWNode *)v201 input];
                if ([OUTLINED_FUNCTION_12_40(input v230])
                {
                  pipelineCopy = [(BWNode *)v201 output];
                  if ([v77 count] < 2)
                  {
                    v430 = pipelineCopy;
                    outputs2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v430 count:1];
                    goto LABEL_292;
                  }

                  v237 = -[BWFanOutNode initWithFanOutCount:mediaType:]([BWFanOutNode alloc], "initWithFanOutCount:mediaType:", [v77 count], 1986618469);
                  [(BWNode *)v237 setName:@"Preview Splitter"];
                  FigCaptureNameSplitterNodeOutputsCorrespondingToConnections([(BWNode *)v237 outputs], v77);
                  v431.receiver = v209;
                  v431.super_class = FigCapturePreviewSinkPipeline;
                  if (objc_msgSendSuper2(&v431, sel_addNode_error_, v237, &v443))
                  {
                    v238 = pipelineCopy;
                    input2 = [(BWNode *)v237 input];
                    if ([OUTLINED_FUNCTION_12_40(input2 v240])
                    {
                      outputs2 = [(BWNode *)v237 outputs];
LABEL_292:
                      v248 = outputs2;
                      v428 = 0u;
                      v429 = 0u;
                      v426 = 0u;
                      v427 = 0u;
                      v249 = OUTLINED_FUNCTION_23_19();
                      if (!v249)
                      {
                        goto LABEL_345;
                      }

                      v250 = v249;
                      v251 = 0;
                      v252 = *v427;
                      v393 = BYTE4(v392) ^ 1 | BYTE4(v370);
                      v390 = v248;
                      while (1)
                      {
                        v253 = 0;
                        do
                        {
                          if (*v427 != v252)
                          {
                            objc_enumerationMutation(v77);
                          }

                          v254 = *(*(&v426 + 1) + 8 * v253);
                          v255 = [v248 objectAtIndexedSubscript:v251];
                          v425 = v255;
                          if (!a2)
                          {
                            if (v254)
                            {
                              goto LABEL_313;
                            }

LABEL_321:
                            v265 = v409;
                            if ((v393 & 1) == 0)
                            {
                              if (([objc_msgSend(v254 "videoPreviewSinkConfiguration")] & 1) != 0 || (v265 = v409, v266 = v409, v209[281] == 1))
                              {
                                v266 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.preview.filtering", [objc_msgSend(v401 "firstObject")]), -[BWPipelineStage priority](v409, "priority"));
                                v227 = v372;
                                v209 = v413;
                                v265 = +[BWPipelineStage pipelineStageWithName:priority:](BWPipelineStage, "pipelineStageWithName:priority:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.separate-streaming-filter", [v254 sourceConfiguration]), -[BWPipelineStage priority](v409, "priority"));
                              }

                              OUTLINED_FUNCTION_7_58();
                              HIDWORD(v312) = v267;
                              v268 = OUTLINED_FUNCTION_11_41();
                              v271 = [(FigCapturePreviewSinkPipeline *)v268 _appendFilteredPreviewPipeline:v269 desiredPipelineStage:v266 desiredStreamingFilterPipelineStage:v265 previewSinkPipelineConfiguration:a2 videoPreviewSinkConnectionConfiguration:v270 graph:v411 inferenceScheduler:graph captureDevice:v309 focusBlurMapForDepthFiltersEnabled:v312 depthFromMonocularNetworkEnabled:BYTE1(v312) runMonocularDepthInVideoDepthNode:BYTE2(v312) maxLossyCompressionLevel:HIDWORD(v312) metalCommandQueue:v227 depthFilterRenderingIsAfterPreviewStitcher:v316 portraitAutoSuggestEnabled:BYTE1(v316) sourceStillImageOutputsByPortType:v318 usePrimaryPreviewSourceAttachedMediaForInference:v320];
                              v444[0] = v271;
                              if (v271)
                              {
LABEL_380:
                                v308 = v271;
                                fig_log_get_emitter();
                                OUTLINED_FUNCTION_1_105();
                                LODWORD(v309) = v308;
                                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
                                goto LABEL_372;
                              }

                              if (*(v209 + 19) && v265 != v409)
                              {
                                v272 = dispatch_semaphore_create(2);
                                [*(v413 + 19) setEmitSampleBufferSemaphore:v272];
                                [*(v413 + 9) setPreviewFilterBackpressureSemaphore:v272];
                                [*(v413 + 9) setPreviewFilterBackpressureSemaphoreInitialCount:2];

                                v209 = v413;
                                [v411 registerEmitSampleBufferSemaphoreFromNode:*(v413 + 19) toNode:*(v413 + 9)];
                              }
                            }

                            if (!(BYTE4(v399) & 1 | ((v209[281] & 1) == 0) | (BYTE4(v381) ^ 1) & 1))
                            {
                              v271 = [FigCapturePreviewSinkPipeline _appendOverCaptureSmartStyleApplyNodeToPreviewPipelineStage:v209 previewSinkPipelineConfiguration:? graph:? metalCommandQueue:? upstreamOutput:?];
                              v444[0] = v271;
                              if (v271)
                              {
                                goto LABEL_380;
                              }
                            }

                            v273 = [objc_msgSend(v254 "videoPreviewSinkConfiguration")];
                            v274 = 0;
                            if (v265)
                            {
                              v275 = v273;
                            }

                            else
                            {
                              v275 = 0;
                            }

                            if (a2)
                            {
                              v77 = v401;
                              if ((v275 & 1) == 0)
                              {
                                v274 = *(a2 + 185);
                              }
                            }

                            else
                            {
                              v77 = v401;
                            }

                            if ((HIDWORD(v403) | v274))
                            {
                              v276 = FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.preview.image-queue", [objc_msgSend(v77 "firstObject")]);
                              priority = [(BWPipelineStage *)v409 priority];
                              v278 = v276;
                              v209 = v413;
                              v265 = [BWPipelineStage pipelineStageWithName:v278 priority:priority];
                            }

                            v279 = [v77 count];
                            if (a2)
                            {
                              v280 = *(a2 + 16);
                              v281 = *(a2 + 184);
                              v282 = *(a2 + 169) ^ 1;
                              v283 = *(a2 + 176);
                              v284 = *(a2 + 185);
                              v285 = *(a2 + 129);
                              v286 = *(a2 + 164);
                              v287 = *(a2 + 112);
                              v423 = *(a2 + 96);
                              v424 = v287;
                              v288 = *(a2 + 168);
                            }

                            else
                            {
                              v285 = 0;
                              v281 = 0;
                              v280 = 0;
                              v284 = 0;
                              v286 = 0;
                              v288 = 0;
                              v423 = 0u;
                              v424 = 0u;
                              v283 = 0.0;
                              v282 = 1;
                            }

                            v444[0] = [(FigCapturePreviewSinkPipeline *)v209 _buildImageQueuePreviewSinkPipeline:v425 previewPipelineStage:v265 videoPreviewSinkConnectionConfiguration:v280 previewScalerOutputBuffersAreShared:v279 > 1 zoomPIPOverlayEnabled:SHIDWORD(v403) zoomPIPSmartStyleRenderingEnabled:v281 & 1 zoomPIPSlaveStreamingEnabled:v282 & 1 zoomPIPSlaveStreamingFrameRate:v283 debugOverlayEnabled:0 parallelGraphRebuildEnabled:v284 & 1 transform:0 remoteVideoPreview:0 maxLossyCompressionLevel:v285 & 1 clientAuditToken:v286 graph:&v423 captureDevice:v411 previewTapDelegate:schedulerCopy videoHDRImageStatisticsEnabled:v397 zoomPIPOverlayDelegate:v288 & 1 metalCommandQueue:v395, v227];
                            v248 = v390;
                            goto LABEL_313;
                          }

                          if (v254 == *(a2 + 16))
                          {
                            goto LABEL_321;
                          }

                          if (v254 == *(a2 + 40))
                          {
                            schedulerCopy = [(FigCapturePreviewSinkPipeline *)v209 _buildPreviewTimeMachineSinkPipeline:v255 upstreamPipelineStageForPreviewTimeMachine:v409 upstreamTransform:v256 previewTimeMachineConnectionConfiguration:v257 videoPreviewEnabled:v258 smartCameraMotionDetectionEnabled:0 graph:*(a2 + 161) captureDevice:v411, schedulerCopy];
                            v444[0] = schedulerCopy;
                            if (schedulerCopy)
                            {
                              goto LABEL_316;
                            }
                          }

                          else if (v254 == *(a2 + 232))
                          {
                            v444[0] = [(FigCapturePreviewSinkPipeline *)v209 _buildPreviewSmartStyleCoefficientsTimeMachineSinkPipeline:v255 upstreamPipelineStageForPreviewTimeMachine:v409 previewTimeMachineConnectionConfiguration:v256 graph:v411 captureDevice:schedulerCopy];
                          }

                          else
                          {
                            if (v254 == *(a2 + 48))
                            {
                              if (v415)
                              {
                                goto LABEL_313;
                              }

                              +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.sceneclassifier", [v254 sourceConfiguration]), 0, 1);
                              v422 = 0;
                              OUTLINED_FUNCTION_10_43();
                              v407 = v407 & 0xFFFF000000000000 | v261;
                              schedulerCopy = FigCaptureBuildSceneClassifierPipeline(v209, v262, v407, 6, v263, 0, &v423, schedulerCopy, graph, 0, 0, &v422);
                              v444[0] = schedulerCopy;
                              if (schedulerCopy)
                              {
                                goto LABEL_316;
                              }

                              *(v209 + 8) = v422;
                              v259 = v425;
                              v260 = 96;
                              goto LABEL_312;
                            }

                            if (v254 != *(a2 + 56))
                            {
                              if (v254 == *(a2 + 64))
                              {
                                v259 = v255;
                                v260 = 176;
                              }

                              else if (v254 == *(a2 + 32))
                              {
                                v259 = v255;
                                v260 = 192;
                              }

                              else
                              {
                                if (v254 != *(a2 + 24))
                                {
                                  goto LABEL_313;
                                }

                                v259 = v255;
                                v260 = 184;
                              }

LABEL_312:
                              *&v209[v260] = v259;
                              goto LABEL_313;
                            }

                            schedulerCopy = [FigCapturePreviewSinkPipeline _buildSensitiveContentAnalyzerPipelineStage:v209 connectionConfiguration:v255 graph:?];
                            v444[0] = schedulerCopy;
                            if (schedulerCopy)
                            {
LABEL_316:
                              v306 = schedulerCopy;
                              fig_log_get_emitter();
                              OUTLINED_FUNCTION_1_105();
                              LODWORD(v309) = v306;
                              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
                              goto LABEL_372;
                            }

                            [schedulerCopy setAttachesUprightExifOrientationMetadataToStreamingFrames:1];
                          }

LABEL_313:
                          ++v251;
                          ++v253;
                        }

                        while (v250 != v253);
                        v289 = OUTLINED_FUNCTION_23_19();
                        v250 = v289;
                        if (!v289)
                        {
LABEL_345:
                          v420 = 0u;
                          v421 = 0u;
                          v418 = 0u;
                          v419 = 0u;
                          v290 = v405;
                          v291 = [v405 countByEnumeratingWithState:&v418 objects:v417 count:16];
                          if (!v291)
                          {
LABEL_368:
                            *(v413 + 13) = v441;
                            if ((v370 & 0x100000000) != 0)
                            {
                              v304 = v363;
                            }

                            else
                            {
                              v304 = v441;
                            }

                            *(v413 + 14) = v304;
                            goto LABEL_372;
                          }

                          v292 = v291;
                          v293 = *v419;
                          v294 = 1;
                          while (2)
                          {
                            v295 = 0;
LABEL_348:
                            if (*v419 != v293)
                            {
                              objc_enumerationMutation(v290);
                            }

                            v296 = *(*(&v418 + 1) + 8 * v295);
                            v298 = [(NSArray *)outputs objectAtIndexedSubscript:v294];
                            if (a2)
                            {
                              if (v296 != *(a2 + 48))
                              {
                                if (v296 == *(a2 + 232))
                                {
                                  v444[0] = [(FigCapturePreviewSinkPipeline *)v413 _buildPreviewSmartStyleCoefficientsTimeMachineSinkPipeline:v298 upstreamPipelineStageForPreviewTimeMachine:v409 previewTimeMachineConnectionConfiguration:v297 graph:v411 captureDevice:schedulerCopy];
                                }

                                else if (v296 == *(a2 + 56))
                                {
                                  v299 = [FigCapturePreviewSinkPipeline _buildSensitiveContentAnalyzerPipelineStage:v413 connectionConfiguration:v298 graph:?];
                                  v444[0] = v299;
                                  if (v299)
                                  {
                                    v307 = v299;
                                    fig_log_get_emitter();
                                    OUTLINED_FUNCTION_1_105();
                                    LODWORD(v309) = v307;
                                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
                                    goto LABEL_372;
                                  }

                                  [schedulerCopy setAttachesUprightExifOrientationMetadataToStreamingFrames:1];
                                }

LABEL_361:
                                ++v294;
                                if (v292 == ++v295)
                                {
                                  v303 = [v290 countByEnumeratingWithState:&v418 objects:v417 count:16];
                                  v292 = v303;
                                  if (!v303)
                                  {
                                    goto LABEL_368;
                                  }

                                  continue;
                                }

                                goto LABEL_348;
                              }

                              if (v415)
                              {
                                goto LABEL_361;
                              }
                            }

                            else if ((v296 != 0) | v415 & 1)
                            {
                              goto LABEL_361;
                            }

                            break;
                          }

                          v300 = +[BWPipelineStage pipelineStageWithName:priority:discardsLateSampleData:](BWPipelineStage, "pipelineStageWithName:priority:discardsLateSampleData:", FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.sceneclassifier", [v296 sourceConfiguration]), 0, 1);
                          v425 = 0;
                          if (a2)
                          {
                            OUTLINED_FUNCTION_10_43();
                          }

                          else
                          {
                            v301 = 0;
                            v423 = 0uLL;
                            DWORD2(v424) = 0;
                            *&v424 = 0;
                          }

                          v227 = v301 | v227 & 0xFFFF000000000000;
                          v302 = FigCaptureBuildSceneClassifierPipeline(v413, v298, v227, 6, v300, 0, &v423, schedulerCopy, graph, 0, 0, &v425);
                          v444[0] = v302;
                          if (v302)
                          {
                            v305 = v302;
                            fig_log_get_emitter();
                            OUTLINED_FUNCTION_1_105();
                            LODWORD(v309) = v305;
                            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
                            goto LABEL_372;
                          }

                          *(v413 + 8) = v425;
                          *(v413 + 12) = v298;
                          v290 = v405;
                          goto LABEL_361;
                        }
                      }
                    }
                  }
                }
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_0_94();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
              goto LABEL_372;
            }
          }

          else
          {
            transform = [firstObject transform];
            v207 = v222;
            v204 = 0;
            LODWORD(v391) = 0;
            v208 = HIDWORD(transform);
          }

          v209 = v413;
          goto LABEL_276;
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_94();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        goto LABEL_265;
      }

      if (a2)
      {
        videoPreviewSinkConfiguration = [*(a2 + 16) videoPreviewSinkConfiguration];
        v139 = *(a2 + 172);
        v140 = *(a2 + 169);
      }

      else
      {
        videoPreviewSinkConfiguration = [0 videoPreviewSinkConfiguration];
        v140 = 0;
        v139 = 0;
      }

      if ([schedulerCopy smartFramingEnabled])
      {
        smartFramingZoomFactorsByFieldOfView = [schedulerCopy smartFramingZoomFactorsByFieldOfView];
      }

      else
      {
        smartFramingZoomFactorsByFieldOfView = 0;
      }

      v343 = videoPreviewSinkConfiguration;
      if (a2 && *(a2 + 130) == 1)
      {
        v141 = [objc_msgSend(*(a2 + 16) "sourceConfiguration")];
        v333 = *off_1E798A0C0;
        v142 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v141, requiredFormat, *off_1E798A0C0, v444);
        v143 = v444[0];
        if (v444[0])
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_105();
          LODWORD(v309) = v143;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
          goto LABEL_372;
        }

        if (!v142)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_94();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_265:
          v221 = -12780;
LABEL_268:
          v444[0] = v221;
          goto LABEL_372;
        }

        [v142 stabilizationOverscanFromSensorForFESCropDimensions:objc_msgSend(v142 preferSIFRFormat:"fesInputCropDimensions") geometricDistortionCorrection:objc_msgSend(v142 useFESCompanionIndex:"shouldPreferSIFRFormatWithHighlightRecoveryEnabled:", objc_msgSend(sourceConfiguration, "highlightRecoveryEnabled")), objc_msgSend(sourceConfiguration, "geometricDistortionCorrectionEnabled"), 1];
        v146 = v145 == 0.0 && v144 > 0.0;
        LODWORD(sourceConfiguration) = [requiredFormat horizontalSensorBinningFactor];
        verticalSensorBinningFactor2 = [requiredFormat verticalSensorBinningFactor];
        v148 = [+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
        previewRegistrationType = [v148 previewRegistrationType];
        if (previewRegistrationType == 1)
        {
          v150 = [(FigCapturePreviewSinkPipeline *)v40 _metalCommandQueueWithNamePrefix:[(BWPipelineStage *)v408 priority] priority:?];
        }

        else
        {
          v150 = 0;
        }

        v151 = v140;
        HIDWORD(v335) = [v148 previewRegistrationExcludeStaticComponentFromAlignmentShiftsEnabled];
        HIDWORD(v339) = v146;
        v337 = v150;
        v152 = verticalSensorBinningFactor2;
        if (*(a2 + 130) == 1)
        {
          v153 = schedulerCopy;
          cameraInfoByPortType3 = [schedulerCopy cameraInfoByPortType];
        }

        else
        {
          cameraInfoByPortType3 = 0;
          v153 = schedulerCopy;
        }

        v167 = [BWPreviewStitcherNode alloc];
        v168 = *(a2 + 184) & BYTE4(v364);
        sensorOrientationByPortType = [v153 sensorOrientationByPortType];
        v170 = *(a2 + 131);
        parallaxMitigationBasedOnZoomFactorEnabled = [v153 parallaxMitigationBasedOnZoomFactorEnabled];
        BYTE6(v315) = v378;
        WORD2(v315) = *(a2 + 180);
        BYTE3(v315) = v151 & 1;
        BYTE2(v315) = BYTE4(v402);
        BYTE1(v315) = parallaxMitigationBasedOnZoomFactorEnabled;
        LOBYTE(v315) = v170;
        v311 = smartFramingZoomFactorsByFieldOfView;
        v313 = sensorOrientationByPortType;
        BYTE1(v309) = v168;
        LOBYTE(v309) = v380 & (HIDWORD(v378) != 4);
        LODWORD(v172) = v139;
        v173 = [BWPreviewStitcherNode initWithCameraInfoByPortType:v167 sensorBinningFactor:"initWithCameraInfoByPortType:sensorBinningFactor:inputBuffersHaveHorizontalOverscanOnly:registrationType:registrationMetalCommandQueue:excludeStaticComponentFromAlignmentShifts:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:zoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:" inputBuffersHaveHorizontalOverscanOnly:cameraInfoByPortType3 registrationType:sourceConfiguration | (v152 << 32) registrationMetalCommandQueue:HIDWORD(v339) excludeStaticComponentFromAlignmentShifts:previewRegistrationType propagateDepth:v337 propagateStyles:HIDWORD(v335) smartFramingZoomFactorsByFieldOfView:v172 sensorOrientationByPortType:? singleCameraOverCaptureEnabled:? parallaxMitigationBasedOnZoomFactorEnabled:? zoomPIPOverlayEnabled:? zoomPIPMinimumUIZoomFactor:? zoomPIPSingleStreamModeEnabled:? preallocateOutputBufferPool:? primaryCaptureRectCenterYPixelOffsetEnabled:? propagatePrimaryPreviewSource:?];
        if (v173)
        {
          v55 = v173;
          [(BWPreviewStitcherNode *)v173 setDelegate:deviceCopy];
          [objc_msgSend(*(a2 + 16) "sourceConfiguration")];
          v175 = v174;
          v176 = [objc_msgSend(*(a2 + 16) "sourceConfiguration")];
          clientBaseZoomFactorsByPortType = [v153 clientBaseZoomFactorsByPortType];
          v178 = clientBaseZoomFactorsByPortType;
          v137 = v153;
          if (v176 == 8)
          {
            [objc_msgSend(clientBaseZoomFactorsByPortType objectForKeyedSubscript:{v333), "floatValue"}];
            v40 = v413;
            v118 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
            v77 = array;
            LOBYTE(v13) = v382;
            if (v175 < v212)
            {
LABEL_206:
              isEqualToString = 0;
LABEL_207:
              [(BWPreviewStitcherNode *)v55 setPreviewsWideBeforeSlaveStreamStarts:isEqualToString];
              [objc_msgSend(v137 "bravoSuperWideCaptureStream")];
              [OUTLINED_FUNCTION_28() setSuperWideFallbackForMacroSceneEnabled:?];
              goto LABEL_208;
            }
          }

          else
          {
            v40 = v413;
            v118 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
            v77 = array;
            LOBYTE(v13) = v382;
            if (v176 != 9)
            {
              goto LABEL_206;
            }

            [objc_msgSend(clientBaseZoomFactorsByPortType objectForKeyedSubscript:{v333), "floatValue"}];
            if (v175 < v179)
            {
              goto LABEL_206;
            }

            [objc_msgSend(v178 objectForKeyedSubscript:{*off_1E798A0D8), "floatValue"}];
            if (v175 >= v180)
            {
              goto LABEL_206;
            }
          }

          if ([v137 preferredMasterPortType])
          {
            isEqualToString = objc_msgSend_isEqualToString_([v137 preferredMasterPortType]);
          }

          else
          {
            isEqualToString = 1;
          }

          goto LABEL_207;
        }
      }

      else
      {
        v155 = v140;
        v156 = [schedulerCopy position] == 2;
        isExternalVariant = [schedulerCopy isExternalVariant];
        [schedulerCopy clientExpectsCameraMountedInLandscapeOrientation];
        v158 = FigCapturePlatformMountsCamerasInLandscapeOrientation(v156, isExternalVariant);
        v159 = [BWPreviewStitcherNode alloc];
        if (a2)
        {
          v160 = *(a2 + 184) & BYTE4(v364);
          sensorOrientationByPortType2 = [schedulerCopy sensorOrientationByPortType];
          v162 = *(a2 + 131);
          parallaxMitigationBasedOnZoomFactorEnabled2 = [schedulerCopy parallaxMitigationBasedOnZoomFactorEnabled];
          v165 = *(a2 + 180);
        }

        else
        {
          sensorOrientationByPortType2 = [schedulerCopy sensorOrientationByPortType];
          parallaxMitigationBasedOnZoomFactorEnabled2 = [schedulerCopy parallaxMitigationBasedOnZoomFactorEnabled];
          v162 = 0;
          v160 = 0;
          v165 = 0;
        }

        v118 = &OBJC_IVAR___BWVISNode__frameMotionTensorsRingBuffer;
        BYTE4(v309) = v378;
        BYTE2(v309) = v165 & 1;
        BYTE1(v309) = parallaxMitigationBasedOnZoomFactorEnabled2;
        LOBYTE(v309) = v162 & 1;
        BYTE3(v309) = !v158;
        LODWORD(v164) = v139;
        v166 = [BWPreviewStitcherNode initWithStitchingDisabledAndZoomPIPOverlayEnabled:v159 zoomPIPMinimumUIZoomFactor:"initWithStitchingDisabledAndZoomPIPOverlayEnabled:zoomPIPMinimumUIZoomFactor:zoomPIPSingleStreamModeEnabled:propagateDepth:propagateStyles:smartFramingZoomFactorsByFieldOfView:sensorOrientationByPortType:singleCameraOverCaptureEnabled:parallaxMitigationBasedOnZoomFactorEnabled:preallocateOutputBufferPool:primaryCaptureRectCenterYPixelOffsetEnabled:propagatePrimaryPreviewSource:" zoomPIPSingleStreamModeEnabled:HIDWORD(v402) propagateDepth:v155 & 1 propagateStyles:v380 & (HIDWORD(v378) != 4) smartFramingZoomFactorsByFieldOfView:v160 & 1 sensorOrientationByPortType:smartFramingZoomFactorsByFieldOfView singleCameraOverCaptureEnabled:sensorOrientationByPortType2 parallaxMitigationBasedOnZoomFactorEnabled:v164 preallocateOutputBufferPool:? primaryCaptureRectCenterYPixelOffsetEnabled:? propagatePrimaryPreviewSource:?];
        if (v166)
        {
          v55 = v166;
          [(BWPreviewStitcherNode *)v166 setDelegate:deviceCopy];
          if (!a2)
          {
            v182 = 0;
            v77 = array;
            LOBYTE(v13) = v382;
            goto LABEL_209;
          }

          v77 = array;
          LOBYTE(v13) = v382;
LABEL_208:
          v182 = *(a2 + 16);
LABEL_209:
          [v182 transform];
          [(BWPreviewStitcherNode *)v55 setOutputDimensions:v183];
          [v343 primaryCaptureRectAspectRatio];
          [(BWPreviewStitcherNode *)v55 setPrimaryCameraAspectRatio:?];
          [v343 primaryCaptureRectCenter];
          [(BWPreviewStitcherNode *)v55 setPrimaryCaptureRectCenter:?];
          if (a2)
          {
            v184 = *(a2 + 164);
          }

          else
          {
            v184 = 0;
          }

          [(BWPreviewStitcherNode *)v55 setMaxLossyCompressionLevel:v184];
          v185 = BYTE4(v391);
          if (HIDWORD(v391))
          {
            v185 = *(v40 + 328) ^ 1 | BYTE4(v360);
          }

          [(BWPreviewStitcherNode *)v55 setForceBlackFillBorderEnabled:v185 & 1];
          if (a2)
          {
            BWCIFilterArrayContainsFiltersRequiringSegmentation([objc_msgSend(*(a2 + 16) "videoPreviewSinkConfiguration")]);
            [OUTLINED_FUNCTION_28() setOverCaptureNotSupportedByDownstreamNodes:?];
            cs_configurePreviewStitcherNodeOutputTransformAndHistogramGeneration(v55, *(a2 + 16), *(a2 + 162), &v441);
            [(BWPreviewStitcherNode *)v55 setRebuildingGraphForTrueVideoTransition:*(a2 + 187)];
            v186 = *(a2 + 144);
          }

          else
          {
            BWCIFilterArrayContainsFiltersRequiringSegmentation([objc_msgSend(0 "videoPreviewSinkConfiguration")]);
            [OUTLINED_FUNCTION_28() setOverCaptureNotSupportedByDownstreamNodes:?];
            cs_configurePreviewStitcherNodeOutputTransformAndHistogramGeneration(v55, 0, 0, &v441);
            [(BWPreviewStitcherNode *)v55 setRebuildingGraphForTrueVideoTransition:0];
            v186 = 0;
          }

          [(BWPreviewStitcherNode *)v55 setTrueVideoCaptureEnabled:v186 & 1];
          dimensions2 = [requiredFormat dimensions];
          v188 = HIDWORD(dimensions2);
          v189 = dimensions2 == 3840 && v188 == 2160 || dimensions2 == 2160 && v188 == 3840;
          [(BWPreviewStitcherNode *)v55 setTrueVideoCaptureFormatIs4K:v189];
          if (a2)
          {
            v191 = *(a2 + 152);
          }

          else
          {
            v191 = 0.0;
          }

          [(BWPreviewStitcherNode *)v55 setTrueVideoCaptureAdditionalZoomFactor:v191];
          -[BWPreviewStitcherNode setThermalPressureIsCritical:](v55, "setThermalPressureIsCritical:", [v137 thermalSystemPressureLevel] > 2);
          v433.receiver = v40;
          v433.super_class = FigCapturePreviewSinkPipeline;
          if ((objc_msgSendSuper2(&v433, sel_addNode_error_, v55, &v443) & 1) == 0 || (v192 = pipelineCopy, v193 = -[BWNode input](v55, "input"), LODWORD(v347) = v380 & (HIDWORD(v378) != 4), ([OUTLINED_FUNCTION_12_40(v193 v194] & 1) == 0))
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0_94();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
            goto LABEL_372;
          }

          *(v40 + 152) = v55;
          pipelineCopy = [(BWNode *)v55 output];
          LOBYTE(v55) = BYTE4(v398);
          goto LABEL_229;
        }
      }

      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_94();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_267:
      v221 = -12786;
      goto LABEL_268;
    }

LABEL_153:
    v78 = 0;
    goto LABEL_154;
  }

  v79 = [(FigCapturePreviewSinkPipeline *)v40 _metalCommandQueueWithNamePrefix:[(BWPipelineStage *)v408 priority] priority:?];
  v80 = [BWPocketDetectionNode alloc];
  if (a2)
  {
    v81 = *(a2 + 216);
  }

  else
  {
    v81 = 0;
  }

  v82 = [(BWPocketDetectionNode *)v80 initWithMetalCommandQueue:v79 clientApplicationID:v81];
  if (!v82)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_94();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_267;
  }

  v83 = v82;
  [(BWNode *)v82 setName:@"Pocket Detection"];
  v436.receiver = v40;
  v436.super_class = FigCapturePreviewSinkPipeline;
  if (objc_msgSendSuper2(&v436, sel_addNode_error_, v83, &v443))
  {
    v84 = pipelineCopy;
    input3 = [(BWNode *)v83 input];
    if ([OUTLINED_FUNCTION_12_40(input3 v86])
    {
      *(v40 + 136) = v83;
      pipelineCopy = [(BWNode *)v83 output];
      if (v13)
      {
        goto LABEL_146;
      }

      goto LABEL_153;
    }
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_94();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v309);
LABEL_372:
  result = v444[0];
  if (!v444[0])
  {
    if (v443)
    {
      return [v443 code];
    }
  }

  return result;
}

- (id)toggleDepthDensificationAccordingToFilters:(id *)result
{
  if (result)
  {
    v3 = result;
    [result[36] setSkipProcessing:BWCIFilterArrayContainsPortraitFilters(a2) ^ 1];
    if (BWCIFilterArrayContainsPortraitFilters(a2))
    {
      v4 = [MEMORY[0x1E695DFD8] set];
    }

    else
    {
      v4 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F2245D30];
    }

    v5 = v4;
    v6 = v3[37];

    return [v6 setInferencesToSkip:v5];
  }

  return result;
}

- (void)setFilters:(id)filters
{
  [(FigCapturePreviewSinkPipeline *)&self->super.super.super.isa toggleDepthDensificationAccordingToFilters:filters];
  [(FigCapturePreviewSinkPipeline *)self _setPortraitRenderingInferencesNeededForFilters:filters];
  [(BWPreviewStitcherNode *)self->_previewStitcher setOverCaptureNotSupportedByDownstreamNodes:BWCIFilterArrayContainsFiltersRequiringSegmentation(filters)];
  filterNode = self->_filterNode;

  [(BWStreamingFilterNode *)filterNode changeToFilters:filters animated:1];
}

- (void)_setPortraitRenderingInferencesNeededForFilters:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = BWCIFilterArrayContainsFiltersRequiringSegmentation(a2);
    v4 = v2[15];
    if (v3)
    {
      v5 = 0;
    }

    else
    {
      v5 = [MEMORY[0x1E695DFD8] setWithObject:&unk_1F2245D48];
    }

    [v4 setInferencesToSkip:v5];
    v6 = v2[18];

    return [v6 setSkipProcessing:v3 ^ 1u];
  }

  return result;
}

- (void)setSemanticStyle:(id)style animated:(BOOL)animated
{
  if (!self->_smartStyleRenderingEnabled)
  {
    animatedCopy = animated;
    if ([style isIdentity])
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObjects:{&unk_1F2245D48, &unk_1F2245D30, 0}];
    }

    else
    {
      v7 = 0;
    }

    [(BWInferenceNode *)self->_semanticStylePersonSegmentationNode setInferencesToSkip:v7];
    filterNode = self->_filterNode;

    [(BWStreamingFilterNode *)filterNode changeToSemanticStyle:style animated:animatedCopy];
  }
}

- (void)setSemanticStyleSet:(id)set fencePortSendRight:(id)right
{
  if (!self->_smartStyleRenderingEnabled)
  {
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [set leftmostRegionStartXOffset];
      [right port];
      kdebug_trace();
    }

    [(BWImageQueueSinkNode *)self->_imageQueueSinkNode fencePortGenerationIDWillChange];
    if ([objc_msgSend(set "semanticStyles")])
    {
      [(BWInferenceNode *)self->_semanticStylePersonSegmentationNode setInferencesToSkip:0];
    }

    [(BWStreamingFilterNode *)self->_filterNode setSemanticStyleSet:set fencePortSendRight:right];
    if (*v7 == 1)
    {

      kdebug_trace();
    }
  }
}

- (void)setSemanticStyle:(id)style
{
  if (!self->_smartStyleRenderingEnabled)
  {
    [(FigCapturePreviewSinkPipeline *)self setSemanticStyle:style animated:0];
  }
}

- (void)setSemanticStyleRenderingSuspended:(BOOL)suspended animated:(BOOL)animated
{
  if (!self->_smartStyleRenderingEnabled)
  {
    animatedCopy = animated;
    suspendedCopy = suspended;
    if ([(BWStreamingFilterNode *)self->_filterNode isSemanticStyleRenderingEnabled])
    {
      filterNode = self->_filterNode;

      [(BWStreamingFilterNode *)filterNode setSemanticStyleRenderingSuspended:suspendedCopy animated:animatedCopy];
    }
  }
}

- (uint64_t)_metalCompletionQueue
{
  if (result)
  {
    v1 = result;
    result = *(result + 312);
    if (!result)
    {
      result = FigDispatchQueueCreateWithPriority();
      *(v1 + 312) = result;
    }
  }

  return result;
}

- (uint64_t)_metalSubmissionQueue
{
  if (result)
  {
    v1 = result;
    result = *(result + 320);
    if (!result)
    {
      result = FigDispatchQueueCreateWithPriority();
      *(v1 + 320) = result;
    }
  }

  return result;
}

- (uint64_t)_appendFilteredPreviewPipeline:(BWPipelineStage *)pipeline desiredPipelineStage:(BWPipelineStage *)stage desiredStreamingFilterPipelineStage:(uint64_t)pipelineStage previewSinkPipelineConfiguration:(void *)configuration videoPreviewSinkConnectionConfiguration:(void *)connectionConfiguration graph:(uint64_t)graph inferenceScheduler:(void *)scheduler captureDevice:(unsigned __int8)self0 focusBlurMapForDepthFiltersEnabled:(unsigned __int8)self1 depthFromMonocularNetworkEnabled:(unsigned __int8)self2 runMonocularDepthInVideoDepthNode:(unsigned int)self3 maxLossyCompressionLevel:(uint64_t)self4 metalCommandQueue:(unsigned __int8)self5 depthFilterRenderingIsAfterPreviewStitcher:(unsigned __int8)self6 portraitAutoSuggestEnabled:(void *)self7 sourceStillImageOutputsByPortType:(unsigned __int8)self8 usePrimaryPreviewSourceAttachedMediaForInference:
{
  if (!result)
  {
    return result;
  }

  v22 = a2;
  v23 = result;
  v168[0] = 0;
  v167 = 0;
  if (a2)
  {
    v24 = *a2;
  }

  else
  {
    v24 = 0;
  }

  v154 = v24;
  HIDWORD(v139) = [configuration previewDepthDataDeliveryEnabled];
  v155 = v23;
  if (!pipeline)
  {
    if (HIDWORD(v139))
    {
      v25 = @"com.apple.coremedia.capture.streaming-disparity+filter";
    }

    else
    {
      v25 = @"com.apple.coremedia.capture.streaming-filter";
    }

    sourceConfiguration = [configuration sourceConfiguration];
    v27 = v25;
    v23 = v155;
    pipeline = [BWPipelineStage pipelineStageWithName:FigCaptureBuildPipelineStageName(v27 priority:sourceConfiguration), 13];
  }

  if (stage)
  {
    pipelineCopy = stage;
  }

  else
  {
    pipelineCopy = pipeline;
  }

  v149 = [objc_msgSend(configuration "sourceConfiguration")];
  [v149 defaultPortraitLightingEffectStrength];
  if (*(v23 + 328) == 1)
  {
    portraitPreviewForegroundBlurEnabled = [scheduler portraitPreviewForegroundBlurEnabled];
  }

  else
  {
    portraitPreviewForegroundBlurEnabled = 0;
  }

  v29 = [objc_msgSend(configuration "videoPreviewSinkConfiguration")];
  v135 = [objc_msgSend(configuration "videoPreviewSinkConfiguration")];
  v152 = v29;
  if (v29)
  {
    v29 = *(v23 + 328) == stitcher;
  }

  HIDWORD(v131) = enabled;
  HIDWORD(v137) = type;
  HIDWORD(v124) = stitcher;
  v153 = queue | stitcher;
  v142 = [objc_msgSend(configuration "videoPreviewSinkConfiguration")];
  v30 = BWCIFilterArrayContainsPortraitEffectFilters(v142);
  LODWORD(v144) = [connectionConfiguration deferredNodePrepareSupported] & (v30 ^ 1);
  LODWORD(v139) = [v149 isDynamicAspectRatioSupported];
  LODWORD(v131) = 1;
  configurationCopy = configuration;
  if (FigCaptureOptimizedBWInferenceScalingPathSupported())
  {
    v31 = objc_alloc_init(BWInferenceProcessingConfiguration);
    [(BWInferenceProcessingConfiguration *)v31 setScalingStrategy:10];
    [(BWInferenceProcessingConfiguration *)v31 setFilterType:2];
  }

  v32 = [BWInferenceNode alloc];
  v40 = OUTLINED_FUNCTION_13_34(v32, v33, v34, v35, v36, v37, v38, v39, v107, v110, v112, v114, v116, v118, v120, v122, v124, pipelineStage, v128, v131, v133, v135, v137, v139, pipelineCopy, v142, v144, graph);
  [v40 setName:@"Segmentation Node"];
  if (v145)
  {
    [connectionConfiguration enableBypassUntilPreparedForNode:v40 deferredPreparePriority:2];
  }

  v41 = v155;
  v166.receiver = v155;
  v166.super_class = FigCapturePreviewSinkPipeline;
  v121 = sel_addNode_error_;
  if ((objc_msgSendSuper2(&v166, sel_addNode_error_, v40, &v167) & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_93();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v108, v111, v113, v115, v117, v119, sel_addNode_error_, v123);
    goto LABEL_113;
  }

  *(v155 + 104) = v40;
  v42 = [(BWInferenceConfiguration *)[BWStreamingPersonSegmentationConfiguration alloc] initWithInferenceType:105];
  if (v29)
  {
    *(v155 + 112) = v40;
    if ([v136 isIdentity])
    {
      v108 = &unk_1F2245D30;
      v111 = 0;
      v134 = [MEMORY[0x1E695DFD8] setWithObjects:&unk_1F2245D48];
    }

    else
    {
      v134 = 0;
    }

    -[BWStreamingPersonSegmentationConfiguration setInputRotationAngle:](v42, "setInputRotationAngle:", -([configuration transform] >> 32));
    [(BWStreamingPersonSegmentationConfiguration *)v42 setPropagateColorInput:0];
    [(BWStreamingPersonSegmentationConfiguration *)v42 setCropColorInputToPrimaryCaptureRect:0];
    [OUTLINED_FUNCTION_19_27() setPropagatesFrameRatePrevention:?];
    LODWORD(v44) = 10.0;
    [(BWInferenceConfiguration *)v42 setMaximumFramesPerSecond:v44];
    [OUTLINED_FUNCTION_19_27() setUseLowFrameRateOptimizedNetwork:?];
    BWInferenceVersionMakeMajor(1);
    [OUTLINED_FUNCTION_15_32() addInferenceOfType:? version:? configuration:?];
    v45 = [(BWInferenceConfiguration *)[BWOpticalFlowInferenceConfiguration alloc] initWithInferenceType:117];
    [(BWOpticalFlowInferenceConfiguration *)v45 setInputDimensions:0xC000000100];
    [(BWOpticalFlowInferenceConfiguration *)v45 setOutputDimensions:0xC000000100];
    [(BWOpticalFlowInferenceConfiguration *)v45 setConcurrencyWidth:2];
    -[BWOpticalFlowInferenceConfiguration setInputRotationAngle:](v45, "setInputRotationAngle:", -([configuration transform] >> 32));
    [(BWOpticalFlowInferenceConfiguration *)v45 setColorInputCropMode:0];
    [(BWOpticalFlowInferenceConfiguration *)v45 setAttachedMediaKeyForPropagatedColorInput:0x1F219EA70];
    [v40 addInferenceOfType:117 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v45];
    name = [v40 name];
    v47 = [name length];
    v48 = @"Optical Flow";
    if (v47)
    {
      v108 = @"Optical Flow";
      v48 = [name stringByAppendingFormat:@" + %@"];
    }

    output = v154;
    [v40 setName:v48];

    v41 = v155;
    [*(v155 + 112) setInferencesToSkip:v134];
LABEL_32:
    LODWORD(v134) = 1;
    goto LABEL_34;
  }

  if ((v153 & 1) == 0)
  {
    LODWORD(v134) = 1;
    BWInferenceVersionMakeMajor(1);
    [OUTLINED_FUNCTION_15_32() addInferenceOfType:? version:? configuration:?];
    output = v154;
    if (!portraitPreviewForegroundBlurEnabled)
    {
      goto LABEL_34;
    }

    *(v155 + 120) = v40;
    [(FigCapturePreviewSinkPipeline *)v155 _setPortraitRenderingInferencesNeededForFilters:v143];
    goto LABEL_32;
  }

  LODWORD(v134) = 0;
  output = v154;
LABEL_34:
  if ((HIDWORD(v132) & ~networkEnabled) != 0)
  {
    [v40 addInferenceOfType:106 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:{-[BWMonocularDepthConfiguration initWithInferenceType:monocularDepthType:]([BWMonocularDepthConfiguration alloc], "initWithInferenceType:monocularDepthType:", 106, 1)}];
    name2 = [v40 name];
    v50 = [name2 length];
    v51 = @"Monocular Depth";
    if (v50)
    {
      v108 = @"Monocular Depth";
      v51 = [name2 stringByAppendingFormat:@" + %@"];
    }

    [v40 setName:v51];
    v41 = v155;
  }

  [v40 input];
  if (([OUTLINED_FUNCTION_6_64() connectOutput:? toInput:? pipelineStage:?] & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_93();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v108);
    goto LABEL_107;
  }

  output = [v40 output];
  if (v29)
  {
    v105 = v41;
    v106 = [[BWPersonSegmentationFilteringNode alloc] initWithGPUPriority:0 frameRateUpsamplingEnabled:1 metalCommandQueue:[(FigCapturePreviewSinkPipeline *)v41 _metalCommandQueueWithNamePrefix:6 priority:?]];
    v165.receiver = v105;
    v165.super_class = FigCapturePreviewSinkPipeline;
    v53 = 0x1E7988000;
    if ((objc_msgSendSuper2(&v165, sel_addNode_error_, v106, &v167) & 1) == 0 || (-[BWPersonSegmentationFilteringNode setInputOrientationRelativeToSensor:](v106, "setInputOrientationRelativeToSensor:", [configuration transform] >> 32), -[BWPersonSegmentationFilteringNode setAlignsMaskWithPrimaryCaptureRect:](v106, "setAlignsMaskWithPrimaryCaptureRect:", -[BWStreamingPersonSegmentationConfiguration cropColorInputToPrimaryCaptureRect](v42, "cropColorInputToPrimaryCaptureRect")), -[BWNode input](v106, "input"), (objc_msgSend(OUTLINED_FUNCTION_6_64(), "connectOutput:toInput:pipelineStage:") & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v108);
      goto LABEL_107;
    }

    output = [(BWNode *)v106 output];
    schedulerCopy2 = scheduler;
  }

  else
  {
    schedulerCopy2 = scheduler;
    v53 = 0x1E7988000;
  }

  if ((networkEnabled | portraitPreviewForegroundBlurEnabled))
  {
    v54 = [BWVideoDepthInferenceConfiguration alloc];
    v55 = v141;
    if (queue)
    {
      v56 = [schedulerCopy2 isBravoVariant] ^ 1;
    }

    else
    {
      v56 = 0;
    }

    v57 = [(BWVideoDepthInferenceConfiguration *)v54 initWithConcurrencyWidth:2 videoDepthLayout:1 captureDevice:schedulerCopy2 requiresCroppingOfDepthBuffer:queue requiresVerticalFlipOfDepthBuffer:v56 backpressureEvent:0];
    [(BWVideoDepthInferenceConfiguration *)v57 setRequiresAppleDepthPostProcessing:1];
    [(BWVideoDepthInferenceConfiguration *)v57 setColorInputRotationChangesWithAspectRatio:v140];
    IntAttribute = FigCaptureSourceGetIntAttribute([objc_msgSend(configuration "sourceConfiguration")], @"PearlModuleType", v168);
    v59 = v168[0];
    if (v168[0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_81();
      LODWORD(v108) = v59;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v108);
      goto LABEL_107;
    }

    [(BWVideoDepthInferenceConfiguration *)v57 setSourceIsNuri:IntAttribute == 3];
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v60 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v60 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v60 setFilterType:2];
    }

    v61 = [BWInferenceNode alloc];
    *(v155 + 296) = OUTLINED_FUNCTION_13_34(v61, v62, v63, v64, v65, v66, v67, v68, v108, v111, v113, v115, v117, v119, sel_addNode_error_, v123, v125, v127, v129, v132, v134, v136, v138, v140, v141, v143, v145, v148);
    v69 = [(BWInferenceConfiguration *)[BWOpticalFlowInferenceConfiguration alloc] initWithInferenceType:117];
    [(BWOpticalFlowInferenceConfiguration *)v69 setInputDimensions:[(BWVideoDepthInferenceConfiguration *)v57 outputDimensions]];
    [(BWOpticalFlowInferenceConfiguration *)v69 setOutputDimensions:[(BWVideoDepthInferenceConfiguration *)v57 outputDimensions]];
    [(BWOpticalFlowInferenceConfiguration *)v69 setConcurrencyWidth:2];
    [objc_msgSend(objc_msgSend(configuration "sourceConfiguration")];
    IsSensorMountedInPortraitOrientation = FigCaptureSourceIsSensorMountedInPortraitOrientation(v70);
    if (HIDWORD(v138))
    {
      if (IsSensorMountedInPortraitOrientation)
      {
        v72 = 90;
      }

      else
      {
        v72 = 0;
      }

      [(BWOpticalFlowInferenceConfiguration *)v69 setInputRotationAngle:v72];
      [(BWOpticalFlowInferenceConfiguration *)v69 setAttachedMediaKeyForColorInput:0x1F21AAAD0];
      -[BWOpticalFlowInferenceConfiguration setColorInputFlipHorizontal:](v69, "setColorInputFlipHorizontal:", [configuration transform] & 1);
      [(BWOpticalFlowInferenceConfiguration *)v69 setColorInputCropMode:2];
      [(BWOpticalFlowInferenceConfiguration *)v69 setAttachedMediaCropRectKey:*off_1E798A360];
      [(BWVideoDepthInferenceConfiguration *)v57 setUsePrimaryPreviewSourceAttachedMediaForInference:1];
    }

    else
    {
      if (queue)
      {
        v73 = psp_rotationAngleForStreamingFilterInferences(configuration);
      }

      else
      {
        v73 = 0;
      }

      [(BWOpticalFlowInferenceConfiguration *)v69 setInputRotationAngle:v73];
      [OUTLINED_FUNCTION_19_27() setColorInputCropMode:?];
    }

    [(BWOpticalFlowInferenceConfiguration *)v69 setAttachedMediaKeyForPropagatedColorInput:0x1F219EC10];
    [*(v155 + 296) addInferenceOfType:117 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:v69];

    [*(v155 + 296) setName:@"Optical Flow Node"];
    if (v145)
    {
      [connectionConfiguration enableBypassUntilPreparedForNode:*(v155 + 296) deferredPreparePriority:2];
    }

    v74 = *(v155 + 296);
    v164.receiver = v155;
    v164.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v164, v121, v74, &v167) & 1) == 0 || ([*(v155 + 296) input], (objc_msgSend(OUTLINED_FUNCTION_6_64(), "connectOutput:toInput:pipelineStage:") & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v108);
      goto LABEL_107;
    }

    output = [*(v155 + 296) output];
    v75 = [[BWVideoDepthNode alloc] initWithInferenceScheduler:v148 captureDevice:scheduler videoDepthConfiguration:v57 extraDepthOutputRetainedBufferCount:4 error:v168];
    *(v155 + 288) = v75;
    v76 = v168[0];
    if (v168[0])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_81();
      LODWORD(v108) = v76;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v108);
      goto LABEL_107;
    }

    v163.receiver = v155;
    v163.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v163, v121, v75, &v167) & 1) == 0 || ([*(v155 + 288) input], (objc_msgSend(OUTLINED_FUNCTION_6_64(), "connectOutput:toInput:pipelineStage:") & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v108);
      goto LABEL_107;
    }

    output = [*(v155 + 288) output];
    if (v145)
    {
      [OUTLINED_FUNCTION_19_27() setPreviewVideoDepthNodeUnprepared:?];
      [connectionConfiguration enableBypassUntilPreparedForNode:*(v155 + 288) deferredPreparePriority:2];
    }

    -[FigCapturePreviewSinkPipeline toggleDepthDensificationAccordingToFilters:](v155, [objc_msgSend(configuration "videoPreviewSinkConfiguration")]);
    v53 = 0x1E7988000uLL;
  }

  else
  {
    v55 = v141;
  }

  v130 = v22;
  if (v153)
  {
    if (FigCaptureOptimizedBWInferenceScalingPathSupported())
    {
      v77 = objc_alloc_init(BWInferenceProcessingConfiguration);
      [(BWInferenceProcessingConfiguration *)v77 setScalingStrategy:10];
      [(BWInferenceProcessingConfiguration *)v77 setFilterType:2];
    }

    v78 = objc_alloc(*(v53 + 4040));
    v86 = OUTLINED_FUNCTION_13_34(v78, v79, v80, v81, v82, v83, v84, v85, v108, v111, v113, v115, v117, v119, v121, v123, v125, v127, v22, v132, v134, v136, v138, v140, v141, v143, v145, v148);
    [v86 setName:@"Segmentation Node (secondary)"];
    if (v146)
    {
      [connectionConfiguration enableBypassUntilPreparedForNode:v86 deferredPreparePriority:2];
    }

    v162.receiver = v155;
    v162.super_class = FigCapturePreviewSinkPipeline;
    if ((objc_msgSendSuper2(&v162, sel_addNode_error_, v86, &v167) & 1) == 0 || (*(v155 + 120) = v86, [v86 input], (objc_msgSend(OUTLINED_FUNCTION_6_64(), "connectOutput:toInput:pipelineStage:") & 1) == 0))
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v108);
      goto LABEL_107;
    }

    output = [v86 output];
    v87 = [(BWInferenceConfiguration *)[BWStreamingPersonSegmentationConfiguration alloc] initWithInferenceType:105];
    v88 = psp_rotationAngleForStreamingFilterInferences(configuration);
    if ([configuration transform])
    {
      v89 = -v88;
    }

    else
    {
      v89 = v88;
    }

    [(BWStreamingPersonSegmentationConfiguration *)v87 setInputRotationAngle:v89];
    [(BWStreamingPersonSegmentationConfiguration *)v87 setCropColorInputToPrimaryCaptureRect:1];
    [(BWStreamingPersonSegmentationConfiguration *)v87 setAlternativeStreamingPersonSegmentationMaskKey:0x1F21AAC10];
    [(BWStreamingPersonSegmentationConfiguration *)v87 setAlternativeStreamingSkinSegmentationMaskKey:0x1F21AAC50];
    BWInferenceVersionMakeMajor(1);
    [OUTLINED_FUNCTION_15_32() addInferenceOfType:? version:? configuration:?];
    [(FigCapturePreviewSinkPipeline *)v155 _setPortraitRenderingInferencesNeededForFilters:v143];
  }

  v154 = output;
  if (queue)
  {
    transform = [configuration transform];
    v91 = [configuration transform] >> 32;
  }

  else
  {
    transform = 0;
    LODWORD(v91) = 0;
  }

  v92 = [objc_msgSend(objc_msgSend(configuration "sourceConfiguration")];
  v93 = [BWStreamingFilterNode alloc];
  v94 = v155;
  v95 = *(v155 + 252);
  v96 = *(v155 + 281);
  BYTE2(v119) = v140;
  BYTE1(v119) = BYTE4(v138);
  LOBYTE(v119) = v92;
  LODWORD(v115) = v91;
  BYTE4(v113) = transform & 1;
  LODWORD(v113) = [v55 priority];
  LOBYTE(v108) = queue;
  v97 = -[BWStreamingFilterNode initWithCaptureDevice:maxLossyCompressionLevel:semanticStyleRenderingEnabled:cinematicVideoEnabled:smartStyleRenderingEnabled:portraitPreviewForegroundBlurEnabled:depthFilterRenderingIsAfterPreviewStitcher:metalCommandQueue:priority:mirroredForMetadataAdjustment:rotationDegreesForMetadataAdjustment:sourceStillImageOutputPortTypes:squareAspectRatioConfigEnabled:cropDepthToPrimaryCaptureAspectRatio:disableDepthAndSegmentationRotationInLandscape:](v93, "initWithCaptureDevice:maxLossyCompressionLevel:semanticStyleRenderingEnabled:cinematicVideoEnabled:smartStyleRenderingEnabled:portraitPreviewForegroundBlurEnabled:depthFilterRenderingIsAfterPreviewStitcher:metalCommandQueue:priority:mirroredForMetadataAdjustment:rotationDegreesForMetadataAdjustment:sourceStillImageOutputPortTypes:squareAspectRatioConfigEnabled:cropDepthToPrimaryCaptureAspectRatio:disableDepthAndSegmentationRotationInLandscape:", scheduler, node, v152, v95, v96, portraitPreviewForegroundBlurEnabled, v108, level, v113, v115, [suggestEnabled allKeys], v119);
  v161.receiver = v155;
  v161.super_class = FigCapturePreviewSinkPipeline;
  if (objc_msgSendSuper2(&v161, sel_addNode_error_, v97, &v167))
  {
    *(v155 + 72) = v97;
    if (*(v155 + 328) == 1)
    {
      [(BWStreamingFilterNode *)v97 setMetadataProcessingEnabled:1];
      [v149 isStudioAndContourPreviewRenderingSupported];
      [OUTLINED_FUNCTION_17() setStudioAndContourRenderingEnabled:?];
      [v149 isStagePreviewRenderingSupported];
      [OUTLINED_FUNCTION_17() setStageRenderingEnabled:?];
      v94 = v155;
      [(BWStreamingFilterNode *)v97 setFocusBlurMapDeliveryEnabled:device];
      [(BWStreamingFilterNode *)v97 setPortraitAutoSuggestEnabled:HIDWORD(v125)];
      [(BWStreamingFilterNode *)v97 setDepthFromMonocularNetworkEnabled:HIDWORD(v132)];
    }

    [(BWStreamingFilterNode *)v97 setPrimaryStreamingPersonSegmentationEnabled:v134];
    [(BWStreamingFilterNode *)v97 setSecondaryStreamingPersonSegmentationEnabled:v153];
    [(BWStreamingFilterNode *)v97 setStreamingSegmentationFromInferenceEngine:v132];
    if (suggestEnabled)
    {
      if (*(v94 + 252))
      {
        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        allKeys = [suggestEnabled allKeys];
        v99 = [allKeys countByEnumeratingWithState:&v157 objects:v156 count:16];
        if (v99)
        {
          v100 = v99;
          v101 = *v158;
          while (2)
          {
            for (i = 0; i != v100; ++i)
            {
              if (*v158 != v101)
              {
                objc_enumerationMutation(allKeys);
              }

              if (![connectionConfiguration connectOutput:objc_msgSend(suggestEnabled toInput:"objectForKeyedSubscript:" pipelineStage:{*(*(&v157 + 1) + 8 * i)), -[NSDictionary objectForKeyedSubscript:](-[BWStreamingFilterNode stillImageInputsByPortType](v97, "stillImageInputsByPortType"), "objectForKeyedSubscript:", *(*(&v157 + 1) + 8 * i)), 0}])
              {
                fig_log_get_emitter();
                OUTLINED_FUNCTION_2_93();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                goto LABEL_112;
              }
            }

            v100 = [allKeys countByEnumeratingWithState:&v157 objects:v156 count:16];
            if (v100)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    v103 = v127;
    if (v127)
    {
      v103 = *(v127 + 184);
    }

    v22 = v130;
    output = v154;
    if (v103 & 1 | ((v152 & 1) == 0))
    {
      v104 = 0;
    }

    else
    {
      v104 = v136;
    }

    if ([v143 count] || v104)
    {
      [(BWStreamingFilterNode *)v97 changeToFilters:v143 semanticStyle:v104 animated:0];
    }

    if ([v143 count])
    {
      [scheduler simulatedAperture];
      [(BWStreamingFilterNode *)v97 setSimulatedAperture:?];
      [objc_msgSend(configurationCopy "videoPreviewSinkConfiguration")];
      [(BWStreamingFilterNode *)v97 setPortraitLightingEffectStrength:?];
    }

    [(BWStreamingFilterNode *)v97 setDepthDataDeliveryEnabled:HIDWORD(v140)];
    [(BWStreamingFilterNode *)v97 setAttachesInputPixelBufferAfterRendering:0];
    [(BWNode *)v97 input];
    if ([OUTLINED_FUNCTION_6_64() connectOutput:? toInput:? pipelineStage:?])
    {
      output = [(BWNode *)v97 output];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_93();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v109);
    }

    goto LABEL_107;
  }

  fig_log_get_emitter();
  OUTLINED_FUNCTION_2_93();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_112:
  v22 = v130;
LABEL_113:
  output = v154;
LABEL_107:
  if (v22)
  {
    *v22 = output;
  }

  return v168[0];
}

- (id)_metalCommandQueueWithNamePrefix:(uint64_t)prefix priority:
{
  if (!self)
  {
    return 0;
  }

  v4 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
  [objc_msgSend(a2 stringByAppendingString:{@".metal-completion-queue", "UTF8String"}];
  v5 = FigDispatchQueueCreateWithPriority();
  [objc_msgSend(a2 stringByAppendingString:{@".metal-submission-queue", "UTF8String"}];
  v6 = FigDispatchQueueCreateWithPriority();
  [v4 setCompletionQueue:v5];
  [v4 setSubmissionQueue:v6];

  return v4;
}

- (id)_buildImageQueuePreviewSinkPipeline:(uint64_t)pipeline previewPipelineStage:(void *)stage videoPreviewSinkConnectionConfiguration:(int)configuration previewScalerOutputBuffersAreShared:(int)shared zoomPIPOverlayEnabled:(unsigned int)enabled zoomPIPSmartStyleRenderingEnabled:(unsigned int)renderingEnabled zoomPIPSlaveStreamingEnabled:(float)streamingEnabled zoomPIPSlaveStreamingFrameRate:(unsigned __int8)self0 debugOverlayEnabled:(unsigned __int8)self1 parallelGraphRebuildEnabled:(uint64_t)self2 transform:(uint64_t)self3 remoteVideoPreview:(unsigned __int8)self4 maxLossyCompressionLevel:(unsigned int)self5 clientAuditToken:(_OWORD *)self6 graph:(void *)self7 captureDevice:(void *)self8 previewTapDelegate:(uint64_t)self9 videoHDRImageStatisticsEnabled:(unsigned __int8)statisticsEnabled zoomPIPOverlayDelegate:(uint64_t)overlayDelegate metalCommandQueue:(uint64_t)queue
{
  if (result)
  {
    v27 = result;
    v86[0] = 0;
    if ((shared | rate) == 1 && configuration)
    {
      v28 = objc_alloc_init(BWPixelTransferNode);
      v29 = v28;
      if (shared)
      {
        v30 = @"Zoom PIP Overlay Buffer Copier";
      }

      else
      {
        v30 = @"Debug Overlay Buffer Copier";
      }

      [(BWNode *)v28 setName:v30];
      if (shared)
      {
        [(BWPixelTransferNode *)v29 setMaxInputLossyCompressionLevel:level];
        [(BWPixelTransferNode *)v29 setMaxOutputLossyCompressionLevel:level];
      }

      v85.receiver = v27;
      v85.super_class = FigCapturePreviewSinkPipeline;
      if ((objc_msgSendSuper2(&v85, sel_addNode_error_, v29, v86) & 1) == 0 || ([graph connectOutput:a2 toInput:-[BWNode input](v29 pipelineStage:{"input"), pipeline}] & 1) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        goto LABEL_54;
      }

      pipelineCopy2 = pipeline;
      a2 = [(BWNode *)v29 output];
    }

    else
    {
      pipelineCopy2 = pipeline;
    }

    if (!shared)
    {
      deviceCopy2 = device;
      v38 = pipelineCopy2;
      output = a2;
LABEL_20:
      sourceConfiguration = [stage sourceConfiguration];
      if (FigCapturePlatformIdentifier() <= 4)
      {
        sourceDeviceType = [sourceConfiguration sourceDeviceType];
        if (sourceDeviceType > 9)
        {
          v76 = 0;
LABEL_26:
          v43 = v27[7];
          v80 = v43;
          if (v43)
          {
            [v43 setPreviewTapDelegate:delegate];
            v44 = v27[7];
          }

          else
          {
            v45 = [BWImageQueueSinkNode alloc];
            sinkID = [v27 sinkID];
            v47 = token[1];
            v83[0] = *token;
            v83[1] = v47;
            v44 = [(BWImageQueueSinkNode *)v45 initWithHFRSupport:1 ispJitterCompensationEnabled:v76 & 1 clientAuditToken:v83 sinkID:sinkID];
            [(BWImageQueueSinkNode *)v44 setPreviewTapDelegate:delegate];
            v27[7] = v44;
          }

          [(BWImageQueueSinkNode *)v44 setCaptureDevice:deviceCopy2];
          [v27[7] setTransform:{rebuildEnabled, transform}];
          [v27[7] setVideoHDRImageStatisticsEnabled:statisticsEnabled];
          if (*(v27 + 253))
          {
            v48 = 1;
          }

          else
          {
            v48 = [objc_msgSend(stage "videoPreviewSinkConfiguration")];
          }

          v49 = v27[7];
          sourceConfiguration2 = [stage sourceConfiguration];
          [objc_msgSend(sourceConfiguration2 "requiredFormat")];
          v52 = v51;
          requiredMinFrameRate = [sourceConfiguration2 requiredMinFrameRate];
          v55 = FigCaptureFrameRateAsFloat(requiredMinFrameRate, v54);
          requiredMaxFrameRate = [sourceConfiguration2 requiredMaxFrameRate];
          v58 = FigCaptureFrameRateAsFloat(requiredMaxFrameRate, v57);
          v61 = BWGetMaximumDisplayFrequency(v59, v60);
          v62 = v61;
          v63 = v58 == v55 && fmod(v58, v61) == 0.0;
          [v49 setFenceSupportEnabled:v48];
          [v49 setMaxLossyCompressionLevel:level];
          if ([objc_msgSend(sourceConfiguration2 "requiredFormat")])
          {
            v64 = [objc_msgSend(sourceConfiguration2 "requiredFormat")];
          }

          else if ((v76 & 1) != 0 && (v52 <= v62 || v63))
          {
            v64 = 3;
          }

          else if (v52 <= 30.0)
          {
            v64 = 1;
          }

          else
          {
            v64 = 2;
          }

          [v49 setSyncStrategy:v64];
          v65 = v27[7];
          v82.receiver = v27;
          v82.super_class = FigCapturePreviewSinkPipeline;
          if (objc_msgSendSuper2(&v82, sel_addNode_error_, v65, v86) & 1) != 0 && (v80 ? (v66 = overlayEnabled) : (v66 = 0), ([graph connectOutput:output toInput:objc_msgSend(v27[7] pipelineStage:"input") deferredAttach:{v38, v66}]))
          {
            if ([graph deferredNodePrepareSupported])
            {
              if (([objc_msgSend(stage "sinkConfiguration")] & 1) == 0)
              {
                [graph enableDeferredPrepareForNodesNotInPathOfSinkNode:v27[7]];
                if (v27[8])
                {
                  [graph enableDeferredPrepareForNodesNotInPathOfSinkNode:?];
                }
              }
            }

            if (!v80 || !v27[25])
            {
              rotationDegrees = [v27[19] rotationDegrees];
              if (!rotationDegrees)
              {
                rotationDegrees = [v27[6] rotationDegrees];
              }

              position = [deviceCopy2 position];
              v69 = position == 2;
              v70 = FigCaptureCameraRequires180DegreesRotation(v69, [deviceCopy2 isExternalVariant]);
              isExternalVariant = [deviceCopy2 isExternalVariant];
              [deviceCopy2 clientExpectsCameraMountedInLandscapeOrientation];
              if (FigCapturePlatformMountsCamerasInLandscapeOrientation(v69, isExternalVariant))
              {
                stageCopy2 = stage;
                if ([stage mirroringEnabled] && ((objc_msgSend(deviceCopy2, "isExternalVariant") | v70) & 1) != 0 || (objc_msgSend(stage, "mirroringEnabled") & 1) == 0 && ((v73 = objc_msgSend(deviceCopy2, "isExternalVariant"), position != 2) ? (v74 = 1) : (v74 = v73), ((v74 | v70) & 1) == 0))
                {
                  rotationDegrees = FigCaptureNormalizeAngle(rotationDegrees + 180);
                }
              }

              else
              {
                stageCopy2 = stage;
              }

              [stageCopy2 transform];
              *(v27 + 76) = rotationDegrees;
              [(FigCapturePreviewSinkPipeline *)v27 _stashPreviewImageQueueUpdatedNotificationPayload:rotationDegrees previewDimensions:v75 remoteVideoPreview:preview];
            }
          }

          else
          {
            fig_log_get_emitter();
            OUTLINED_FUNCTION_0();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          }

          goto LABEL_54;
        }

        v41 = 0x310u >> sourceDeviceType;
      }

      else
      {
        LOBYTE(v41) = 1;
      }

      v76 = v41;
      goto LABEL_26;
    }

    enabledCopy = enabled;
    v32 = [BWVideoPIPOverlayNode alloc];
    isBravoVariant = [device isBravoVariant];
    deviceCopy2 = device;
    baseZoomFactorsByPortType = [device baseZoomFactorsByPortType];
    *&v36 = streamingEnabled;
    v37 = [(BWVideoPIPOverlayNode *)v32 initWithDelegate:overlayDelegate metalCommandQueue:queue secondaryCameraStreamingEnabled:renderingEnabled secondaryCameraFrameRate:level maxLossyCompressionLevel:isBravoVariant isDeviceBravoVariant:baseZoomFactorsByPortType baseZoomFactorsByPortType:v36];
    [(BWNode *)v37 setName:@"PIP Overlay"];
    if ([graph deferredNodePrepareSupported])
    {
      [graph enableBypassUntilPreparedForNode:v37 deferredPreparePriority:3];
    }

    v84.receiver = v27;
    v84.super_class = FigCapturePreviewSinkPipeline;
    if (objc_msgSendSuper2(&v84, sel_addNode_error_, v37, v86))
    {
      v38 = pipelineCopy2;
      v39 = v37;
      v27[11] = v39;
      [(BWVideoPIPOverlayNode *)v39 setSmartStyleRenderingEnabled:enabledCopy];
      if ([graph connectOutput:a2 toInput:-[BWNode input](v37 pipelineStage:{"input"), pipelineCopy2}])
      {
        output = [(BWNode *)v37 output];
        goto LABEL_20;
      }
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_54:
    result = v86[0];
    if (v86[0])
    {
      return [v86[0] code];
    }
  }

  return result;
}

- (void)_buildPreviewTimeMachineSinkPipeline:(uint64_t)pipeline upstreamPipelineStageForPreviewTimeMachine:(uint64_t)machine upstreamTransform:(uint64_t)transform previewTimeMachineConnectionConfiguration:(uint64_t)configuration videoPreviewEnabled:(uint64_t)enabled smartCameraMotionDetectionEnabled:(uint64_t)detectionEnabled graph:(void *)graph captureDevice:(void *)self0
{
  if (result)
  {
    v13 = result;
    if ([device zeroShutterLagEnabled])
    {
      v14 = 7;
    }

    else
    {
      v14 = 4;
    }

    v15 = -[BWPreviewTimeMachineSinkNode initWithCaptureDevice:processingQueuePriority:timeMachineCapacity:smartCameraMotionDetectionEnabled:sinkID:]([BWPreviewTimeMachineSinkNode alloc], "initWithCaptureDevice:processingQueuePriority:timeMachineCapacity:smartCameraMotionDetectionEnabled:sinkID:", device, 13, v14, detectionEnabled, [v13 sinkID]);
    v22 = OUTLINED_FUNCTION_20_20(v15, sel_addNode_error_, v16, v17, v18, v19, v20, v21, v24, v25, v26, v13);
    if (objc_msgSendSuper2(v22, v23, v15) & 1) != 0 && (v13[10] = v15, ([graph connectOutput:a2 toInput:-[BWNode input](v15 pipelineStage:{"input"), pipeline}]))
    {
      [(BWNode *)v15 output];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    return 0;
  }

  return result;
}

- (id)_buildPreviewSmartStyleCoefficientsTimeMachineSinkPipeline:(uint64_t)pipeline upstreamPipelineStageForPreviewTimeMachine:(uint64_t)machine previewTimeMachineConnectionConfiguration:(void *)configuration graph:(void *)graph captureDevice:
{
  if (result)
  {
    v10 = result;
    v19 = 0;
    v18[0] = 0x1F21AB110;
    v18[1] = 0x1F21AB070;
    v18[2] = 0x1F21AAED0;
    v18[3] = 0x1F21AAEF0;
    v18[4] = 0x1F21AAF30;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
    v12 = *off_1E798A928;
    v17[0] = *off_1E798A920;
    v17[1] = v12;
    v13 = *off_1E798A8D0;
    v17[2] = *off_1E798A8F0;
    v17[3] = v13;
    v17[4] = *off_1E798A8D8;
    v14 = -[BWAttachedMediaTimeMachineSinkNode initWithTimeMachineCapacity:attachedMediaKeys:metadataKeys:sinkID:]([BWAttachedMediaTimeMachineSinkNode alloc], "initWithTimeMachineCapacity:attachedMediaKeys:metadataKeys:sinkID:", 4, v11, [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:5], @"SmartStyle attachments Time Machine");
    if (v14)
    {
      v15 = v14;
      [(BWNode *)v14 setName:@"SmartStyle attachments Time Machine"];
      [graph setSmartStyleAttachedMediaTimeMachineDelegate:v15];
      v16.receiver = v10;
      v16.super_class = FigCapturePreviewSinkPipeline;
      if (objc_msgSendSuper2(&v16, sel_addNode_error_, v15, &v19))
      {
        if ([configuration connectOutput:a2 toInput:-[BWNode input](v15 pipelineStage:{"input"), pipeline}])
        {
          [(BWNode *)v15 output];
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
    }

    result = v19;
    if (v19)
    {
      return [v19 code];
    }
  }

  return result;
}

- (id)_stashPreviewImageQueueUpdatedNotificationPayload:(unint64_t)payload previewDimensions:(int)dimensions remoteVideoPreview:
{
  if (result)
  {
    v7 = result;
    imageQueueSlot = [result[7] imageQueueSlot];
    if (imageQueueSlot)
    {
      v9 = imageQueueSlot;
      if (dimensions)
      {
        v18[0] = @"SectionID";
        v19[0] = [v7 sinkID];
        v18[1] = @"ImageQueueSlot";
        v19[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
        v18[2] = @"RotationDegrees";
        v19[2] = [MEMORY[0x1E696AD98] numberWithInt:a2];
        v18[3] = @"ImageQueueWidth";
        v19[3] = [MEMORY[0x1E696AD98] numberWithInt:payload];
        v18[4] = @"ImageQueueHeight";
        v19[4] = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(payload)];
        v10 = MEMORY[0x1E695DF20];
        v11 = v19;
        v12 = v18;
        v13 = 5;
      }

      else
      {
        imageQueue = [v7[7] imageQueue];
        v17[0] = [v7 sinkID];
        v16[1] = @"ImageQueueSlot";
        v17[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v9];
        v17[2] = imageQueue;
        v16[2] = @"ImageQueue";
        v16[3] = @"RotationDegrees";
        v17[3] = [MEMORY[0x1E696AD98] numberWithInt:a2];
        v16[4] = @"ImageQueueWidth";
        v17[4] = [MEMORY[0x1E696AD98] numberWithInt:payload];
        v16[5] = @"ImageQueueHeight";
        v17[5] = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(payload)];
        v10 = MEMORY[0x1E695DF20];
        v11 = v17;
        v12 = v16;
        v13 = 6;
      }

      v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:v13];
    }

    else
    {
      v14 = 0;
    }

    result = v14;
    v7[25] = result;
  }

  return result;
}

- (uint64_t)setSceneClassifierSuspended:(void *)a1 .cold.1(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  result = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v5, v6, v7, v8, v9, v10, vars0, vars8);
  *a2 = *a1;
  return result;
}

@end