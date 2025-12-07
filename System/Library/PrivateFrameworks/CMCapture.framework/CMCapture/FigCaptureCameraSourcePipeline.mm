@interface FigCaptureCameraSourcePipeline
+ (void)initialize;
- (BOOL)requiresMasterClock;
- (BWNodeOutput)_addCrossOverNodeToGraph:(int)graph outputNetworkType:(void *)type inputs:(uint64_t)inputs mediaType:(uint64_t)mediaType name:(_DWORD *)name outErr:;
- (BWNodeOutput)_stereoVideoAddSlaveFrameSynchronizerNode:(uint64_t)node input1:(uint64_t)input1 input2:(uint64_t)input2 mediaType:(uint64_t)type name:(_DWORD *)name outErr:;
- (BWNodeOutput)createOutputNetworkForOutput:(uint64_t)output withFanOutCount:(void *)count graph:(uint64_t)graph sessionID:;
- (NSString)description;
- (char)_buildPointCloudOutputNetworkWithPipelineConfiguration:(char *)result graph:(uint64_t)graph;
- (double)trueVideoCaptureAdditionalZoomFactor;
- (double)trueVideoCaptureAdditionalZoomFactorForPhotoGraphVideoZoomFactor:(uint64_t)factor;
- (float)trueVideoTransitionPreviousPhotoGraphZoomFactor;
- (id)_addDepthFromInfraredSynchronizer:(void *)synchronizer previewOutputsBySourceDeviceType:(uint64_t)type pipelineConfiguration:(uint64_t)configuration graph:(uint64_t)graph sourceDeviceType:;
- (id)clock;
- (id)colorSpaceProperties;
- (id)firmwareStillImageDimensionsAfterOverscanCropping;
- (id)getSmartStyle;
- (id)hackRetainedBufferCountsForDualStreamSources;
- (id)initWithConfiguration:(void *)configuration captureDevice:(void *)device graph:(uint64_t)graph name:(uint64_t)name renderDelegate:(uint64_t)delegate ispFastSwitchEnabled:(uint64_t)enabled rtscProcessorsBySourceDeviceType:(uint64_t)type inferenceScheduler:(int *)self0 error:;
- (id)metadataObjectConnectionConfigurationForSessionID:(id *)result;
- (id)motionAttachmentsSource;
- (id)preferredPreviewDimensions;
- (id)registerAttachedSessionID:(id *)result;
- (id)semanticStyleSceneObserver;
- (id)setCinematicVideoFocusDetectionsProvider:(id *)result;
- (id)setDisableTemporalNoiseReductionWhenStopping:(id *)result;
- (id)setMotionToWakeTargetFrameRate:(id *)result;
- (id)setObjectDetectionTargetFrameRate:(id *)result;
- (id)setVideoHDRImageStatisticsEnabled:(id *)result;
- (id)stillImageOutputColorInfo;
- (id)stillImageOutputVideoFormat;
- (id)usesFirmwareStillImageOutput;
- (id)videoCaptureDimensionsWithoutOverscan;
- (id)videoOutputColorInfo;
- (uint64_t)_buildMultiStreamCameraSourcePipeline:(void *)pipeline graph:(uint64_t)graph renderDelegate:(uint64_t)delegate fastModeSwitch:(uint64_t)switch rtscProcessorsBySourceDeviceType:(uint64_t)type inferenceScheduler:;
- (uint64_t)_buildPreviewOutputNetwork:(uint64_t)network videoCaptureOutputsBySourceDeviceType:(uint64_t)type pipelineConfiguration:(uint64_t)configuration graph:(uint64_t)graph numberOfSecondaryFramesToSkip:(uint64_t)skip;
- (uint64_t)_buildSemanticMasksOutputNetwork:(uint64_t)network pipelineConfiguration:(uint64_t)configuration graph:;
- (uint64_t)_canDeferSourceNodesForGraph:(uint64_t)result;
- (uint64_t)_connectCinematicFramingNode:(void *)node videoOutputsBySourceDeviceType:(void *)type sourceDeviceTypes:(void *)types portTypes:(void *)portTypes graph:(void *)graph cameraConfiguration:stillImageCaptureEnabled:stillImageOutputsByPortType:;
- (uint64_t)_getDeviceOrientationCorrectionEnabledForVideoCaptureConnectionConfigurations:(uint64_t)configurations;
- (uint64_t)_insertSubjectSelectionAndCinematicFramingNodesOnOutputsBySourceDeviceType:(uint64_t)type connectionConfigurations:(void *)configurations pipelineConfiguration:(void *)configuration cameraInfoByPortType:(uint64_t)portType graph:(uint64_t)graph stillImageCaptureEnabled:(void *)enabled stillImageOutputsByPortType:(unsigned int)byPortType;
- (uint64_t)allocateSharedBufferPools;
- (uint64_t)cameraConfiguration;
- (uint64_t)captureDevice;
- (uint64_t)captureSource;
- (uint64_t)captureSourceDepthDataFormat;
- (uint64_t)captureSourceVideoFormat;
- (uint64_t)cinematicFramingCameraStatesProvider;
- (uint64_t)depthOutput;
- (uint64_t)depthType;
- (uint64_t)hardwareDepthFilteringEnabled;
- (uint64_t)lowLatencyStabilizationEnabled;
- (uint64_t)metadataOutputsByCategoryForSourceDeviceType:(uint64_t)type;
- (uint64_t)postColorProcessingThumbnailEnabled;
- (uint64_t)preLTMThumbnailEnabled;
- (uint64_t)previewOutputTransformForSourceDeviceType:(uint64_t)type;
- (uint64_t)smartCropHomographyProvider;
- (uint64_t)sourceFormatReferenceOutput;
- (uint64_t)sourceNodes;
- (uint64_t)stillImageOutputDerivesFromVideoCaptureOutput;
- (uint64_t)stillImageOutputsByPortType;
- (uint64_t)stillImageSensorRawOutputsByPortType;
- (uint64_t)trueVideoCaptureEnabled;
- (uint64_t)videoCaptureOutputTransformForSourceDeviceType:(uint64_t)type;
- (uint64_t)videoHDRImageStatisticsEnabled;
- (uint64_t)weightSegmentMapEnabled;
- (void)_addFunnelNodeToGraph:(uint64_t)graph inputs:(uint64_t)inputs mediaType:(uint64_t)type name:(uint64_t)name outErr:(uint64_t)err;
- (void)_addOverCaptureSourcePipelineToGraph:(void *)graph upstreamVideoCaptureOutputsBySourceDeviceType:(uint64_t)type depthEnabled:(uint64_t)enabled depthFilterRenderingEnabled:(unsigned int)renderingEnabled preLTMThumbnailEnabled:(unsigned int)thumbnailEnabled postColorProcessingThumbnailEnabled:(int)processingThumbnailEnabled weightSegmentMapEnabled:(char)mapEnabled forPreview:(unsigned int)self0 maxLossyCompressionLevel:(int)self1 numberOfSecondaryFramesToSkip:(unsigned int *)self2 outErr:;
- (void)_buildVideoCaptureOutputNetwork:(uint64_t)network previewOutputsBySourceDeviceType:(uint64_t)type stillImageOutputsByPortType:(uint64_t)portType lightSourceMaskOutputsBySourceDeviceType:(uint64_t)deviceType keypointDescriptorDataOutputsBySourceDeviceType:(uint64_t)sourceDeviceType pipelineConfiguration:(uint64_t)configuration graph:(uint64_t)graph videoCaptureDimensions:(uint64_t)self0 numberOfSecondaryFramesToSkip:(uint64_t)self1 rtscProcessorsBySourceDeviceType:(uint64_t)self2 inferenceScheduler:(uint64_t)self3;
- (void)_connectSubjectSelectionNode:(uint64_t)node videoOutputsBySourceDeviceType:sourceDeviceTypes:portTypes:graph:;
- (void)_insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:;
- (void)_insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:;
- (void)_insertFunnelOnPreviewOutputsBySourceDeviceType:previewDerivedConnectionConfigurations:graph:;
- (void)_insertSmartStyleLearningNodeOnOutputsBySourceDeviceType:ifAllowedByAdditionalPreviewConnectionConfigurations:semanticMasksOutputsBySourceDeviceType:pipelineConfiguration:graph:;
- (void)_insertSmartStyleMetadataSynchronizerNodeOnOutputsBySourceDeviceType:pipelineConfiguration:graph:;
- (void)_rerouteDetectedObjectsOutputsForSourcesWithCinematicFramingEnabled:graph:;
- (void)addMetadataOutputNetworksForSessionID:(uint64_t)d graph:(uint64_t)graph;
- (void)dealloc;
- (void)isKeypointDescriptorDataOnVideoCaptureOutputsEnabledForSourceDeviceType:(void *)result;
- (void)isLightSourceMaskOnVideoCaptureOutputsEnabledForSourceDeviceType:(void *)result;
- (void)liveReconfigureForOutputDimensions:(uint64_t)dimensions aspectRatio:;
- (void)loadInferenceNetworkForSmartStyle;
- (void)metadataCategoriesForConnectionConfiguration:(uint64_t)configuration;
- (void)newConfigurationRequiresStreamRestart:tnrConfigurationChanged:newFormatIndexByPortTypeOut:;
- (void)nextPointCloudOutput;
- (void)nextPreviewOutputForSourceDeviceType:(char)type intendedForVideoDataSinkPipeline:;
- (void)nextVideoCaptureOutputForSourceDeviceType:(uint64_t)type;
- (void)nextVideoCaptureOutputForSourceDeviceType:(uint64_t)type sharesBuffersWithOtherConnections:(uint64_t)connections;
- (void)nondisruptiveSwitchingFormatIndicesByPortTypeForConfiguration:;
- (void)semanticMasksOutputsBySourceDeviceType:(void *)result;
- (void)setBackgroundBlurNodePropertiesWhileRunning:(uint64_t)running studioLightingEnabled:reactionEffectsEnabled:backgroundReplacementEnabled:;
- (void)setBlackenFramesForContinuityDisplayConnected:(void *)result;
- (void)setCinematicFramingControlsWhileRunning:(float)running panningAngleX:(float)x panningAngleY:(float)y videoZoomFactor:(double)factor manualFramingDefaultZoomFactor:;
- (void)setFaceFilteringDelegate:(void *)result;
- (void)setKeepISPStreamingWhenStopping:(void *)result;
- (void)setMasterClock:(void *)result;
- (void)setMetadataObjectConnectionConfiguration:(uint64_t)configuration forSessionID:;
- (void)setPreviewShift:(double)shift previewScaleFactor:(double)factor forPortType:(float)type previewShiftAtBaseZoom:(double)zoom;
- (void)setSmartStyle:(void *)result;
- (void)setStreamsSuspendedBySourceDeviceType:(uint64_t)type;
- (void)startIncrementalPrefetchingOfSourcePoolsIfNecessary;
- (void)visionDataOutputForSourceDeviceType:(void *)result;
@end

@implementation FigCaptureCameraSourcePipeline

- (id)colorSpaceProperties
{
  if (result)
  {
    return [result[9] colorSpaceProperties];
  }

  return result;
}

- (uint64_t)captureSourceVideoFormat
{
  if (result)
  {
    return *(result + 472);
  }

  return result;
}

- (double)trueVideoCaptureAdditionalZoomFactor
{
  if (!self)
  {
    return 0.0;
  }

  v3 = *(self + 56);
  if ((*(self + 584) & 1) == 0)
  {
    if (v3)
    {
      if (*(v3 + 336))
      {
        goto LABEL_7;
      }

      v5 = *(v3 + 176);
    }

    else
    {
      v5 = 0;
    }

    [v5 videoZoomFactor];
    goto LABEL_10;
  }

  if (v3)
  {
LABEL_7:
    v4 = *(v3 + 340);
    goto LABEL_10;
  }

  v4 = 0.0;
LABEL_10:

  return [(FigCaptureCameraSourcePipeline *)self trueVideoCaptureAdditionalZoomFactorForPhotoGraphVideoZoomFactor:v4];
}

- (uint64_t)trueVideoCaptureEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 584));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)lowLatencyStabilizationEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 588));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)videoHDRImageStatisticsEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 513));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)captureDevice
{
  if (result)
  {
    return *(result + 456);
  }

  return result;
}

- (id)stillImageOutputColorInfo
{
  if (result)
  {
    [result[9] stillImageOutput];
    v1 = OUTLINED_FUNCTION_17();

    return [v1 colorInfoForOutput:?];
  }

  return result;
}

- (id)motionAttachmentsSource
{
  if (result)
  {
    configuration = [result[9] configuration];

    return [configuration motionAttachmentsSource];
  }

  return result;
}

- (uint64_t)stillImageOutputsByPortType
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

- (id)usesFirmwareStillImageOutput
{
  if (result)
  {
    configuration = [result[9] configuration];

    return [configuration usesFirmwareStillImageOutput];
  }

  return result;
}

- (uint64_t)stillImageOutputDerivesFromVideoCaptureOutput
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 488));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)stillImageSensorRawOutputsByPortType
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

- (uint64_t)captureSource
{
  if (result)
  {
    return *(result + 464);
  }

  return result;
}

- (void)nextPointCloudOutput
{
  if (result)
  {
    v1 = result[47];
    ++*(result + 96);
    return [v1 objectAtIndexedSubscript:?];
  }

  return result;
}

- (id)videoCaptureDimensionsWithoutOverscan
{
  if (result)
  {
    configuration = [result[9] configuration];

    return [configuration videoCaptureDimensions];
  }

  return result;
}

- (uint64_t)depthType
{
  if (result)
  {
    return *(result + 508);
  }

  return result;
}

- (id)hackRetainedBufferCountsForDualStreamSources
{
  if (result)
  {
    v2 = result;
    switch(*(result + 11))
    {
      case 4:
        v9 = result[9];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        v10 = [objc_msgSend(OUTLINED_FUNCTION_103_3(objc_msgSend(objc_msgSend(v2[9] "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "videoCaptureOutput")];
        v11 = [objc_msgSend(OUTLINED_FUNCTION_103_3(objc_msgSend(objc_msgSend(v2[9] "videoCaptureOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "videoCaptureOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_18_0() "previewOutput")];
        v7 = [objc_msgSend(OUTLINED_FUNCTION_27_12() "videoCaptureOutput")];
        goto LABEL_12;
      case 6:
      case 0xC:
        v3 = result[9];
        [objc_msgSend(OUTLINED_FUNCTION_104_1() "previewOutput")];
        v4 = [objc_msgSend(OUTLINED_FUNCTION_18_0() "previewOutput")];
        v5 = v3;
        if (v1 > v4)
        {
          v5 = OUTLINED_FUNCTION_104_1();
        }

        v6 = [objc_msgSend(v5 "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_104_1() "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_104_1() "videoCaptureOutput")];
        if (v6 > [objc_msgSend(OUTLINED_FUNCTION_18_0() "videoCaptureOutput")])
        {
          v3 = v2[12];
        }

        v7 = [objc_msgSend(v3 "videoCaptureOutput")];
        v8 = 12;
        goto LABEL_11;
      case 8:
        result = [result[57] stereoVideoCaptureEnabled];
        if (!result)
        {
          return result;
        }

        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        v12 = [objc_msgSend(OUTLINED_FUNCTION_101_2(objc_msgSend(objc_msgSend(v2[9] "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "previewOutput")];
        [objc_msgSend(OUTLINED_FUNCTION_27_12() "videoCaptureOutput")];
        v7 = [objc_msgSend(OUTLINED_FUNCTION_101_2(objc_msgSend(objc_msgSend(v2[9] "videoCaptureOutput")];
        v8 = 11;
LABEL_11:
        v9 = v2[v8];
LABEL_12:
        videoCaptureOutput = [v9 videoCaptureOutput];

        result = [videoCaptureOutput setRetainedBufferCount:v7];
        break;
      default:
        return result;
    }
  }

  return result;
}

- (uint64_t)allocateSharedBufferPools
{
  if (!self)
  {
    return 0;
  }

  v2 = [self[9] allocateOrReuseBufferPoolsFromSourceNode:0];
  if (v2 || (v2 = [self[10] allocateOrReuseBufferPoolsFromSourceNode:self[9]], v2) || (v2 = objc_msgSend(self[11], "allocateOrReuseBufferPoolsFromSourceNode:", self[9]), v2))
  {
    v3 = v2;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
  }

  else
  {
    v3 = [self[12] allocateOrReuseBufferPoolsFromSourceNode:0];
    if (v3)
    {
      OUTLINED_FUNCTION_0_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3);
    }
  }

  return v3;
}

- (uint64_t)sourceFormatReferenceOutput
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

- (uint64_t)sourceNodes
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(void *)pipeline graph:(uint64_t)graph renderDelegate:(uint64_t)delegate fastModeSwitch:(uint64_t)switch rtscProcessorsBySourceDeviceType:(uint64_t)type inferenceScheduler:
{
  if (!result)
  {
    return result;
  }

  v10 = result;
  v885 = 0;
  v884 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  dictionary3 = [MEMORY[0x1E695DF90] dictionary];
  dictionary4 = [MEMORY[0x1E695DF90] dictionary];
  dictionary5 = [MEMORY[0x1E695DF90] dictionary];
  dictionary6 = [MEMORY[0x1E695DF90] dictionary];
  dictionary7 = [MEMORY[0x1E695DF90] dictionary];
  dictionary8 = [MEMORY[0x1E695DF90] dictionary];
  dictionary9 = [MEMORY[0x1E695DF90] dictionary];
  dictionary10 = [MEMORY[0x1E695DF90] dictionary];
  dictionary11 = [MEMORY[0x1E695DF90] dictionary];
  dictionary12 = [MEMORY[0x1E695DF90] dictionary];
  dictionary13 = [MEMORY[0x1E695DF90] dictionary];
  v776 = a2;
  if (a2)
  {
    v730 = *(a2 + 16);
    v757 = *(a2 + 32);
    v715 = *(a2 + 121);
    v785 = *(a2 + 176);
    v11 = *(a2 + 192);
    v761 = *(a2 + 200);
    v12 = *(a2 + 216);
    v764 = *(a2 + 208);
    v727 = *(a2 + 224);
    a2 = *(a2 + 256);
  }

  else
  {
    v727 = 0;
    v764 = 0;
    v11 = 0;
    v715 = 0;
    v730 = 0;
    v757 = 0;
    v785 = 0;
    v761 = 0;
    v12 = 0;
  }

  if ([a2 count] && objc_msgSend(a2, "count"))
  {
    v13 = 0;
    do
    {
      v14 = [objc_msgSend(a2 "firstObject")];
      if ((v14 & 1) == 0)
      {
        break;
      }

      ++v13;
    }

    while ([a2 count] > v13);
    v708 = v14 ^ 1;
  }

  else
  {
    v708 = 0;
  }

  if (v776)
  {
    v15 = *(v776 + 256);
  }

  else
  {
    v15 = 0;
  }

  if ([v15 count])
  {
    v777 = [objc_msgSend(v15 "firstObject")];
    if ([v15 count] >= 2)
    {
      v16 = 1;
      do
      {
        if (v777 != [objc_msgSend(v15 objectAtIndexedSubscript:{v16), "supplementalPointCloudData"}])
        {
          objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Point cloud connection configs with the same source should have the same supplementalPointCloudData value" userInfo:0]);
        }

        ++v16;
      }

      while ([v15 count] > v16);
    }
  }

  else
  {
    v777 = 0;
  }

  if (v776)
  {
    v17 = *(v776 + 256);
  }

  else
  {
    v17 = 0;
  }

  v896 = 0u;
  v897 = 0u;
  v898 = 0u;
  v899 = 0u;
  v18 = [v17 countByEnumeratingWithState:&v896 objects:&v909 count:16];
  v760 = v12;
  v756 = v11;
  if (v18)
  {
    v19 = v18;
    v20 = *v897;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v897 != v20)
        {
          objc_enumerationMutation(v17);
        }

        if ([objc_msgSend(*(*(&v896 + 1) + 8 * i) "sinkConfiguration")] == 15)
        {
          HIDWORD(v662) = 0;
          goto LABEL_31;
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v896 objects:&v909 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  HIDWORD(v662) = 1;
LABEL_31:
  depthDataDeliveryEnabled = [v785 depthDataDeliveryEnabled];
  v822 = depthDataDeliveryEnabled;
  if (v757 == 3)
  {
    v23 = 0;
  }

  else
  {
    v23 = depthDataDeliveryEnabled;
  }

  *v748 = v23;
  previewDepthFilterRenderingEnabled = [v11 previewDepthFilterRenderingEnabled];
  requiredFormat = [v785 requiredFormat];
  v705 = [objc_msgSend(v760 "irisSinkConfiguration")];
  v25 = [objc_msgSend(objc_msgSend(objc_msgSend(*(v10 + 456) "captureStream")];
  if ([v785 cinematicFramingEnabled])
  {
    isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration = 1;
  }

  else
  {
    if (v776)
    {
      v27 = *(v776 + 208);
    }

    else
    {
      v27 = 0;
    }

    isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration = csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(v27);
  }

  v801 = v25;
  if ([v785 manualCinematicFramingEnabled])
  {
    v28 = 1;
  }

  else
  {
    if (v776)
    {
      v29 = *(v776 + 208);
    }

    else
    {
      v29 = 0;
    }

    v28 = csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(v29);
  }

  if ([v785 deskCamEnabled])
  {
    isDeskCamEnabledInVideoDataConnectionConfiguration = 1;
  }

  else
  {
    if (v776)
    {
      v30 = *(v776 + 208);
    }

    else
    {
      v30 = 0;
    }

    isDeskCamEnabledInVideoDataConnectionConfiguration = csp_isDeskCamEnabledInVideoDataConnectionConfiguration(v30);
  }

  v31 = FigCaptureCinematicFramingNodeRequiredInGraph(isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration, [objc_msgSend(v785 "requiredFormat")], v28);
  v765 = requiredFormat;
  if ([v785 cinematicFramingEnabled] && objc_msgSend(objc_msgSend(v785, "requiredFormat"), "isSmartCropSupported") && (objc_msgSend(objc_msgSend(v785, "requiredFormat"), "isCinematicFramingSupported") & 1) == 0)
  {
    pipelineCopy2 = pipeline;
    v33 = [objc_msgSend(v785 "requiredFormat")] ^ 1;
  }

  else
  {
    pipelineCopy2 = pipeline;
    v33 = 0;
  }

  v34 = (v33 ^ 1) & v31;
  v35 = v760 != 0;
  v816 = FigCaptureVideoEffectEnabledInGraph(@"backgroundblur", [v785 backgroundBlurEnabled], objc_msgSend(v785, "isBackgroundBlurSupported"), objc_msgSend(objc_msgSend(v785, "requiredFormat"), "isBackgroundBlurProvidedBySource"), v35, objc_msgSend(v785, "isCinematicVideoCaptureEnabled"), 0);
  obj = FigCaptureVideoEffectEnabledInGraph(@"studiolighting", [v785 studioLightingEnabled], objc_msgSend(v785, "isStudioLightingSupported"), objc_msgSend(objc_msgSend(v785, "requiredFormat"), "isStudioLightingProvidedBySource"), v35, objc_msgSend(v785, "isCinematicVideoCaptureEnabled"), 0);
  v693 = FigCaptureVideoEffectEnabledInGraph(@"reactioneffects", [v785 reactionEffectsEnabled], objc_msgSend(v785, "reactionEffectsSupported"), objc_msgSend(objc_msgSend(v785, "requiredFormat"), "reactionEffectsProvidedBySource"), v35, objc_msgSend(v785, "isCinematicVideoCaptureEnabled"), 0);
  v808 = FigCaptureVideoEffectEnabledInGraph(@"backgroundreplacement", [v785 backgroundReplacementEnabled], objc_msgSend(v785, "isBackgroundReplacementSupported"), objc_msgSend(objc_msgSend(v785, "requiredFormat"), "isBackgroundReplacementProvidedBySource"), v35, objc_msgSend(v785, "isCinematicVideoCaptureEnabled"), 0);
  v798 = v34;
  v713 = isDeskCamEnabledInVideoDataConnectionConfiguration | v34;
  v711 = v33;
  shouldApplyCropFromVideoDataOutput = csp_shouldApplyCropFromVideoDataOutput(v776);
  v36 = csp_videoCaptureDimensionsFromConnectionConfigurations([v785 requiredFormat], v760, v764, v761, v727, ((isDeskCamEnabledInVideoDataConnectionConfiguration | v34) | v33) & 1, shouldApplyCropFromVideoDataOutput, objc_msgSend(v785, "outputAspectRatio"), v33);
  csp_shouldUseFESCompanionIndex(v785, v764, v36, v37, v38, v39, v40, v41, v568, v573, v577, v581, v585, v589, v593, v597, v601, v605, v609, v613, v617, v621, v625, v629, v633, v637, v641, v644, v647, v649);
  *v716 = v42;
  v750 = v36;
  csp_shouldUseDepthCompanionIndex(v785, v764, v36, v43, v44, v45, v46, v47, v569, v574, v578, v582, v586, v590, v594, v598, v602, v606, v610, v614, v618, v622, v626, v630, v634, v638, v642, v645);
  v703 = v48;
  hasFlash = [*(v10 + 456) hasFlash];
  if (FigCapturePlatformIdentifier() > 10)
  {
    enabled = 0;
  }

  else
  {
    if (v776)
    {
      v49 = *(v776 + 192);
    }

    else
    {
      v49 = 0;
    }

    if ([objc_msgSend(v49 "sinkConfiguration")] == 1)
    {
      enabled = [v49 enabled];
    }

    else
    {
      enabled = 0;
    }
  }

  v786 = v10;
  if (v776)
  {
    v50 = *(v776 + 136);
    v753 = v50 != 0.0;
  }

  else
  {
    v753 = 0;
    v50 = 0.0;
  }

  v804 = HIDWORD(v36);
  IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw([requiredFormat format]);
  v787 = pipelineCopy2;
  isRunningForContinuityCapture = [pipelineCopy2 isRunningForContinuityCapture];
  csp_dockKitNodeEnabled(v776, isRunningForContinuityCapture, v53, v54, v55, v56, v57, v58, v570, v575, v579, v583, v587, v591, v595, SBYTE2(v595), SHIBYTE(v595), v599, v603, v607, v611, v615, v619, v623, v627, v631, v635, v639, v643, v646, v648, v650, v651, SBYTE2(v651), BYTE3(v651), HIDWORD(v651), v652, v653, v654, v655, v656, v657, v658, v659, v660, v7, v662, graph, type);
  v749 = v59;
  v60 = csp_willDecoupleWarperFromStreamProcessing(v730);
  if (*v748)
  {
    v61 = v785;
    if ([*(v786 + 456) isBravoVariant])
    {
      if (v36 == 3840 && v804 == 2160 || (v729 = 0, v62 = 1, v36 == 2160) && v804 == 3840)
      {
        v63 = *(v786 + 456);
        v896 = 0u;
        v897 = 0u;
        v898 = 0u;
        v899 = 0u;
        captureStreams = [v63 captureStreams];
        v65 = [captureStreams countByEnumeratingWithState:&v896 objects:&v909 count:16];
        if (!v65)
        {
LABEL_79:
          [(FigCaptureCameraSourcePipeline *)&v885 _buildMultiStreamCameraSourcePipeline:v66 graph:v67 renderDelegate:v68 fastModeSwitch:v69 rtscProcessorsBySourceDeviceType:v70 inferenceScheduler:v71, v72];
          goto LABEL_609;
        }

        v73 = v65;
        v74 = *v897;
LABEL_70:
        v75 = 0;
        while (1)
        {
          if (*v897 != v74)
          {
            objc_enumerationMutation(captureStreams);
          }

          v76 = *(*(&v896 + 1) + 8 * v75);
          if ([v63 bravoTelephotoCaptureStream])
          {
            if (objc_msgSend_isEqualToString_([v76 portType]))
            {
              break;
            }
          }

          if ([v63 bravoSuperWideCaptureStream] && (objc_msgSend_isEqualToString_(objc_msgSend(v76, "portType")) & 1) != 0)
          {
            break;
          }

          if (v73 == ++v75)
          {
            v73 = [captureStreams countByEnumeratingWithState:&v896 objects:&v909 count:16];
            if (!v73)
            {
              goto LABEL_79;
            }

            goto LABEL_70;
          }
        }

        if (!v76)
        {
          goto LABEL_79;
        }

        v61 = v785;
        v77 = BWUtilitiesUnderlyingDeviceTypeFromPortType([v76 portType], objc_msgSend(v785, "sourceDeviceType"));
        v78 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v764);
        v79 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v761);
        if ([v78 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v77)}])
        {
          v729 = 0;
        }

        else
        {
          v729 = [v79 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v77)}] ^ 1;
        }

        v62 = 1;
        requiredFormat = v765;
      }
    }

    else
    {
      v62 = 0;
      v729 = 0;
    }
  }

  else
  {
    v62 = 0;
    v729 = 0;
    v61 = v785;
  }

  if (v60 & 1 | (([objc_msgSend(objc_msgSend(*(v786 + 456) "captureStream")] & 1) == 0))
  {
    v80 = 1;
  }

  else
  {
    v80 = v62 & (v729 ^ 1);
  }

  if ([objc_msgSend(objc_msgSend(*(v786 + 456) "captureStream")])
  {
    v81 = [requiredFormat isSecondaryScalerUnavailable] | v60 & (v801 == 0);
  }

  else
  {
    v81 = 1;
  }

  v728 = v81;
  if (v757 - 1 < 2)
  {
    v82 = v822;
  }

  else
  {
    v82 = 0;
  }

  if (v82 == 1 && [v764 count])
  {
    if (v750 == 3840 && v804 == 2160)
    {
      v728 = 1;
    }

    else
    {
      v84 = v750 == 2160 && v804 == 3840;
      v728 |= v84;
    }
  }

  v85 = [objc_msgSend(objc_msgSend(*(v786 + 456) "captureStream")];
  geometricDistortionCorrectionEnabled = [v61 geometricDistortionCorrectionEnabled];
  if (FigCapturePlatformIdentifier() <= 9 && geometricDistortionCorrectionEnabled && (([v730 containsObject:&unk_1F2244788] & 1) != 0 || objc_msgSend(v730, "containsObject:", &unk_1F22447B8)))
  {
    [(FigCaptureCameraSourcePipeline *)&v885 _buildMultiStreamCameraSourcePipeline:v87 graph:v88 renderDelegate:v89 fastModeSwitch:v90 rtscProcessorsBySourceDeviceType:v91 inferenceScheduler:v92, v93];
    goto LABEL_609;
  }

  if (v776)
  {
    v706 = *(v776 + 125);
    v710 = *(v776 + 124);
    v714[1] = *(v776 + 148);
    v714[0] = *(v776 + 152);
    v700[1] = *(v776 + 156);
    v700[0] = *(v776 + 160);
    if ([v765 sushiRawSupported])
    {
      sushiRawSupported = *(v776 + 264) ^ 1;
    }

    else
    {
      sushiRawSupported = 0;
    }

    v94 = v816;
    v95 = obj;
    v96 = v808;
    v733 = *(v776 + 164);
  }

  else
  {
    sushiRawSupported = [v765 sushiRawSupported];
    *v700 = 0;
    *v714 = 0;
    v706 = 0;
    v710 = 0;
    v733 = 0;
    v94 = v816;
    v95 = obj;
    v96 = v808;
  }

  v97 = v94 | v95;
  v98 = v693 | v96;
  if ((FigCapturePlatformIdentifier() < 7) | (v80 | v728) & 1)
  {
    v99 = 0;
  }

  else
  {
    v99 = FigCaptureSourceGetBoolAttribute([v61 source], @"GeometricDistortionCorrectionExpandsImageDimensions", 0) ^ 1;
  }

  v709 = v97 | v98;
  capturesStillsFromVideoStream = v760;
  *(v786 + 488) = csp_shouldCaptureStillsFromVideoStream(v61, v765, v716[0], v760 != 0);
  *(v786 + 40) = 0;
  if (v761)
  {
    if (v760)
    {
      capturesStillsFromVideoStream = [v765 capturesStillsFromVideoStream];
    }

    v101 = [v764 count] != 0;
    if (geometricDistortionCorrectionEnabled)
    {
      v102 = [*(v786 + 456) isBravoVariant] & v729;
    }

    else
    {
      v102 = 1;
    }

    v104 = v776;
    if (IsPackedBayerRaw)
    {
      v103 = v786;
      *(v786 + 40) = 0;
LABEL_133:
      v105 = v765;
      v106 = 0x1E696A000;
      v61 = v785;
      goto LABEL_134;
    }

    if (((v101 | capturesStillsFromVideoStream) & 1) != 0 && ((((v728 & 1) == 0) + (v80 ^ 1u) + v85 > 1) & (v99 | v102)) == 0)
    {
      v103 = v786;
      *(v786 + 40) = 1;
      goto LABEL_133;
    }

    v106 = 0x1E696A000;
    v61 = v785;
    if ([v764 count] || *(v786 + 488) == 1)
    {
      v104 = v776;
      v105 = v765;
      if ((isDeskCamEnabledInVideoDataConnectionConfiguration | v711 | v80 & v728 | v753 | v798 | v709))
      {
        *(v786 + 40) = 1;
        v103 = v786;
      }

      else if (v706 == v710)
      {
        if (geometricDistortionCorrectionEnabled & 1 | (([v730 containsObject:&unk_1F2244908] & 1) == 0))
        {
          v402 = [v765 previewDimensionsForAspectRatio:{objc_msgSend(v785, "outputAspectRatio")}];
          v403 = v804 * v750;
          v404 = HIDWORD(v402) * v402;
          v103 = v786;
          if (HIDWORD(v402) * v402 <= v804 * v750 && (v404 * 1.5385) >= v403 || v403 <= v404 && (v403 * 1.5385) >= v404)
          {
            *(v786 + 40) = 1;
          }

          else
          {
            v104 = v776;
            if (v402 >= v750 || ((v728 | v80) & 1) == 0)
            {
              goto LABEL_134;
            }

            requiredFormat2 = [v785 requiredFormat];
            if (*v716)
            {
              nativeDimensions = [objc_msgSend(objc_msgSend(requiredFormat2 "frontEndScalerCompanionFormats")];
            }

            else
            {
              nativeDimensions = [requiredFormat2 nativeDimensions];
            }

            *(v786 + 40) = (v750 * 1.2) < nativeDimensions;
          }
        }

        else
        {
          v103 = v786;
        }

        v104 = v776;
      }

      else
      {
        v103 = v786;
        *(v786 + 40) = 0;
      }
    }

    else
    {
      v103 = v786;
      v104 = v776;
      v105 = v765;
    }
  }

  else
  {
    v103 = v786;
    v104 = v776;
    v105 = v765;
    v106 = 0x1E696A000;
  }

LABEL_134:
  if (v104)
  {
    v107 = v776;
    *(v103 + 584) = csp_trueVideoCaptureEnabled(*(v104 + 208));
    if (*(v776 + 336) == 1 && (*(v103 + 584) & 1) == 0)
    {
      if (dword_1ED844130)
      {
        LODWORD(v891[0]) = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v108 = 0;
        v107 = v776;
        v105 = v765;
        v61 = v785;
      }

      else
      {
        v108 = 0;
      }
    }

    else
    {
      v108 = 8;
    }

    v109 = *(v107 + 256);
  }

  else
  {
    v107 = 0;
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:v103 graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
    v109 = 0;
    v108 = 8;
  }

  v758 = csp_projectorModeFromPointCloudDataConnectionConfigurations(v109);
  v802 = csp_cinematicVideoEnabled(v107);
  sensorCropDimensions = [v105 sensorCropDimensions];
  if (sensorCropDimensions < 1 || SHIDWORD(sensorCropDimensions) < 1)
  {
    sensorDimensions = [v105 sensorDimensions];
  }

  else
  {
    sensorDimensions = [v105 sensorCropDimensions];
  }

  v112 = sensorDimensions;
  horizontalSensorBinningFactor = [v105 horizontalSensorBinningFactor];
  verticalSensorBinningFactor = [v105 verticalSensorBinningFactor];
  v115 = v750 / v804;
  v116 = v115 >= 1.0 && (v115 - (((v112 * horizontalSensorBinningFactor) / SHIDWORD(v112)) * verticalSensorBinningFactor)) > 0.01;
  if (v776)
  {
    v117 = *(v776 + 208);
  }

  else
  {
    v117 = 0;
  }

  v118 = [FigVideoCaptureConnectionConfiguration videoStabilizationMethods:v117 includeIris:1];
  v791 = csp_stabilizationMethodWithMostOverscan(v118);
  isDynamicAspectRatioSupported = [v765 isDynamicAspectRatioSupported];
  if (!v116)
  {
    goto LABEL_162;
  }

  v120 = isDynamicAspectRatioSupported;
  if (v802 & 1 | (([objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")] & 1) == 0))
  {
    goto LABEL_162;
  }

  v121 = v776;
  if (v776 && *(v776 + 24) == 1)
  {
    v122 = 0;
    v123 = *(v103 + 456);
LABEL_164:
    v782 = v122;
    v769 = *(v121 + 168);
    v766 = *(v121 + 129);
    v770 = *(v121 + 140);
    v772 = *(v121 + 141);
    v754 = *(v121 + 130);
    v125 = *(v121 + 224);
    goto LABEL_165;
  }

  if ([v61 cinematicFramingEnabled] & 1) != 0 || (objc_msgSend(v61, "manualCinematicFramingEnabled") & 1) != 0 || (objc_msgSend(v61, "deskCamEnabled"))
  {
LABEL_162:
    v122 = 0;
    v121 = v776;
  }

  else
  {
    v121 = v776;
    if (v750 == 3840 && v804 == 2160 || (v122 = 0, v750 == 2160) && v804 == 3840)
    {
      v407 = csp_enableAdaptiveOverscanByVideoStabilizationMethods(v118);
      v121 = v776;
      v122 = v407 & (v120 ^ 1);
    }
  }

  v123 = *(v103 + 456);
  if (v121)
  {
    goto LABEL_164;
  }

  v782 = v122;
  v754 = 0;
  v770 = 0;
  v769 = 0;
  v766 = 0;
  v772 = 0;
  v125 = 0;
LABEL_165:
  v126 = v121;
  v127 = *(v103 + 496);
  v793 = [objc_msgSend(v125 "depthDataSinkConfiguration")];
  if (v126)
  {
    v796 = *(v126 + 24);
    v128 = *(v126 + 176);
  }

  else
  {
    v796 = 0;
    v128 = 0;
  }

  *&v909 = 0;
  source = [v128 source];
  v670 = *MEMORY[0x1E695E480];
  v130 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v130)
  {
    v130(source, @"AttributesDictionary", v670, &v909);
    v131 = v909;
  }

  else
  {
    v131 = 0;
  }

  v132 = v131;
  v663 = v108;
  v778 = [objc_msgSend(v909 objectForKeyedSubscript:{@"VideoZoomSmoothingSupported", "BOOLValue"}];
  v762 = v127;
  if (v776)
  {
    v788 = *(v776 + 143);
    v739 = *(v776 + 312);
    v133 = *(v776 + 304);
    LOBYTE(v736) = *(v776 + 302);
    v134 = *(v776 + 36);
    v799 = *(v776 + 354);
    HIDWORD(v736) = *(v776 + 144);
    v743 = *(v103 + 584);
    v745 = *(v776 + 336);
    v751 = *(v776 + 344);
    v741 = *(v776 + 300);
    v779 = *(v776 + 357);
    v774 = *(v776 + 28) > 2;
    v746 = *(v776 + 358);
  }

  else
  {
    v741 = 0;
    v774 = 0;
    v736 = 0;
    v788 = 0;
    v739 = 0;
    v799 = 0;
    v745 = 0;
    v751 = 0;
    v779 = 0;
    v746 = 0;
    v743 = *(v103 + 584);
    v134 = 0;
    v133 = 0;
  }

  v908 = 0;
  requiredFormat3 = [v61 requiredFormat];
  dictionary14 = [MEMORY[0x1E695DF90] dictionary];
  v904 = 0u;
  v905 = 0u;
  v906 = 0u;
  v907 = 0u;
  v809 = v123;
  obja = [v123 captureStreams];
  v136 = [obja countByEnumeratingWithState:&v904 objects:&v909 count:16];
  v828 = requiredFormat3;
  if (v136)
  {
    v137 = v136;
    v817 = *v905;
    do
    {
      for (j = 0; j != v137; ++j)
      {
        if (*v905 != v817)
        {
          objc_enumerationMutation(obja);
        }

        v139 = *(*(&v904 + 1) + 8 * j);
        v140 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([v61 source], requiredFormat3, objc_msgSend(v139, "portType"), &v908);
        v141 = v908;
        if (v908)
        {
          goto LABEL_607;
        }

        if (v140)
        {
          v142 = v140;
        }

        else
        {
          v142 = requiredFormat3;
        }

        v143 = [MEMORY[0x1E695DFA8] set];
        v900 = 0u;
        v901 = 0u;
        v902 = 0u;
        v903 = 0u;
        highResStillImageDimensions = [v142 highResStillImageDimensions];
        v145 = [highResStillImageDimensions countByEnumeratingWithState:&v900 objects:&v896 count:16];
        if (v145)
        {
          v146 = v145;
          v147 = *v901;
          do
          {
            for (k = 0; k != v146; ++k)
            {
              if (*v901 != v147)
              {
                objc_enumerationMutation(highResStillImageDimensions);
              }

              v149 = MEMORY[0x1E696AD98];
              flavor = [*(*(&v900 + 1) + 8 * k) flavor];
              v151 = v149;
              v106 = 0x1E696A000;
              [v143 addObject:{objc_msgSend(v151, "numberWithInt:", flavor)}];
            }

            v146 = [highResStillImageDimensions countByEnumeratingWithState:&v900 objects:&v896 count:16];
          }

          while (v146);
        }

        [dictionary14 setObject:objc_msgSend(v143 forKeyedSubscript:{"allObjects"), objc_msgSend(v139, "portType")}];
        if (v140)
        {
          CFRelease(v140);
        }

        v61 = v785;
        requiredFormat3 = v828;
      }

      v137 = [obja countByEnumeratingWithState:&v904 objects:&v909 count:16];
    }

    while (v137);
  }

  depthDataDeliveryEnabled2 = [v61 depthDataDeliveryEnabled];
  if (v757 == 3)
  {
    v153 = 0;
  }

  else
  {
    v153 = depthDataDeliveryEnabled2;
  }

  v154 = 0;
  if (v153 == 1)
  {
    [v61 depthDataMaxFrameRate];
    v154 = v155;
  }

  isStereoFusionSupported = [requiredFormat3 isStereoFusionSupported];
  v157 = v153 ^ 1;
  v818 = [objc_msgSend(v760 "irisSinkConfiguration")];
  if ([v756 previewDepthFilterRenderingEnabled])
  {
    v158 = [v756 portraitAutoSuggestEnabled] ^ 1;
  }

  else
  {
    v158 = 0;
  }

  [v809 setStillImageSupportedHighResolutionFlavorsByPortType:dictionary14];
  [v809 setStillImageEnhancedResByMaintainingSensorResolutionSupported:{objc_msgSend(v828, "stillImageEnhancedResByMaintainingSensorResolutionSupported")}];
  [v809 setStereoFusionEnabled:isStereoFusionSupported & v157];
  [v809 setBravoConstituentPhotoDeliveryEnabled:v818];
  [v809 setDepthDataDeliveryEnabled:v153];
  [v809 setShallowDepthOfFieldEffectEnabled:v158];
  [v809 setWideDigitalFlashAvailableShallowDepthOfFieldEffectsEnabled:{objc_msgSend(v828, "isWideDigitalFlashAvailableShallowDepthOfFieldEffectsEnabled")}];
  [v809 setPortraitAutoSuggestEnabled:{objc_msgSend(v756, "portraitAutoSuggestEnabled")}];
  LODWORD(v159) = v134;
  [v809 setMaxContinuousZoomFactorForDepthDataDelivery:v159];
  [v809 setStillImageISPMultiBandNoiseReductionEnabled:{objc_msgSend(v828, "isStillImageISPMultiBandNoiseReductionSupported")}];
  [v809 setStillImageFocusPixelDataCaptureWithDepthEnabled:v714[1] != 0];
  [v809 setStillImageSashimiRawCaptureWithDepthEnabled:v714[0] != 0];
  [v809 setFocusPixelsEnabled:{objc_msgSend(v828, "autoFocusSystem") == 2}];
  [v809 setRedEyeReductionEnabled:{objc_msgSend(v828, "redEyeReductionVersion") > 0}];
  if (v796)
  {
    sensorDimensions2 = [objc_msgSend(v828 "actionCameraCompanionFormat")];
    [v828 maxVisibleSensorRect];
    FigCaptureMetadataUtilitiesNormalizeCropRect(v161, v162, v163, v164, [v828 sensorDimensions], (objc_msgSend(v828, "sensorDimensions") >> 32));
    FigCaptureMetadataUtilitiesDenormalizeCropRect(v165, v166, v167, v168, sensorDimensions2, SHIDWORD(sensorDimensions2));
    v170 = v169;
    v172 = v171;
    v174 = v173;
    v176 = v175;
  }

  else
  {
    [v828 maxVisibleSensorRect];
    v170 = v177;
    v172 = v178;
    v174 = v179;
    v176 = v180;
    sensorDimensions2 = [v828 sensorDimensions];
  }

  [v809 setSensorRegionOfInterestForCameraControls:sensorDimensions2 forSensorDimensions:{v170, v172, v174, v176}];
  [v809 setWideAsStatisticsPrimaryPreferred:{objc_msgSend(v828, "isWideAsStatisticsPrimaryEnabled")}];
  [v809 setAwbStatisticsAveragingEnabled:{objc_msgSend(v828, "isAWBStatisticsAveragingEnabled")}];
  [v809 setSmartCameraEnabled:{objc_msgSend(v785, "smartCameraEnabled")}];
  [v809 setFullBinSIFROnSecondaryCameraAllowed:{objc_msgSend(v828, "fullBinSIFROnSecondaryCameraAllowed")}];
  dictionary15 = [MEMORY[0x1E695DF90] dictionary];
  v892 = 0u;
  v893 = 0u;
  v894 = 0u;
  v895 = 0u;
  captureStreams2 = [v809 captureStreams];
  v183 = [captureStreams2 countByEnumeratingWithState:&v892 objects:v891 count:16];
  if (v183)
  {
    v184 = v183;
    v185 = *v893;
    do
    {
      for (m = 0; m != v184; ++m)
      {
        if (*v893 != v185)
        {
          objc_enumerationMutation(captureStreams2);
        }

        v187 = *(*(&v892 + 1) + 8 * m);
        v188 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType([v785 source], objc_msgSend(v785, "requiredFormat"), objc_msgSend(v187, "portType"), &v908);
        v106 = 0x1E696A000uLL;
        v189 = MEMORY[0x1E696AD98];
        [v188 sensorOrientation];
        [dictionary15 setObject:objc_msgSend(v189 forKeyedSubscript:{"numberWithFloat:"), objc_msgSend(v187, "portType")}];
      }

      v184 = [captureStreams2 countByEnumeratingWithState:&v892 objects:v891 count:16];
    }

    while (v184);
  }

  v190 = v809;
  [v809 setSensorOrientationByPortType:dictionary15];
  [v809 setAttachesUprightExifOrientationMetadataToStreamingFrames:0];
  [v809 setStereoVideoCaptureEnabled:v799 & 1];
  if (v799)
  {
    [v809 setAwbStatisticsAveragingEnabled:FigCapturePlatformIdentifier() > 11];
  }

  v191 = v785;
  [v809 setCinematicFramingSupported:{objc_msgSend(v785, "isCinematicFramingSupported")}];
  [v809 setCinematicFramingEnabled:{objc_msgSend(v785, "cinematicFramingEnabled")}];
  [v809 setManualCinematicFramingEnabled:{objc_msgSend(v785, "manualCinematicFramingEnabled")}];
  v192 = v787;
  if (([v809 manualCinematicFramingEnabled] & 1) != 0 || objc_msgSend(v809, "isCMIOZoomStreamPropertySupported"))
  {
    zoomCommandHandler = [v809 zoomCommandHandler];
    LODWORD(v194) = 1.0;
    [zoomCommandHandler setRequestedZoomFactor:v194];
  }

  [v809 setCinematicFramingControlMode:{objc_msgSend(v785, "cinematicFramingControlMode")}];
  [v809 setSmartCropSupported:{objc_msgSend(objc_msgSend(v785, "requiredFormat"), "isSmartCropSupported")}];
  [v809 setBackgroundBlurSupported:{objc_msgSend(v785, "isBackgroundBlurSupported")}];
  [v809 setBackgroundBlurEnabled:{objc_msgSend(v785, "backgroundBlurEnabled")}];
  [v809 setStudioLightingSupported:{objc_msgSend(v785, "isStudioLightingSupported")}];
  [v809 setStudioLightingEnabled:{objc_msgSend(v785, "studioLightingEnabled")}];
  [v809 setReactionEffectsSupported:{objc_msgSend(v785, "reactionEffectsSupported")}];
  [v809 setReactionEffectsEnabled:{objc_msgSend(v785, "reactionEffectsEnabled")}];
  [v809 setBackgroundReplacementSupported:{objc_msgSend(v785, "isBackgroundReplacementSupported")}];
  [v809 setBackgroundReplacementEnabled:{objc_msgSend(v785, "backgroundReplacementEnabled")}];
  [v809 setFaceDrivenAEAFEnabledByDefault:{objc_msgSend(v785, "faceDrivenAEAFEnabledByDefault")}];
  [v809 setPhotoFormat:objc_msgSend(v828, "isPhotoFormat")];
  [v809 setSmartFramingEnabled:{objc_msgSend(v828, "isSmartFramingSupported")}];
  [v809 setSmartFramingRequiresSceneMonitoring:{objc_msgSend(v809, "smartFramingEnabled")}];
  if ([v785 nonDestructiveCropEnabled])
  {
    [v785 normalizedNonDestructiveCropSize];
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v914);
    source2 = [v785 source];
    v197 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v197)
    {
      v197(source2, @"NonDestructiveCropSize", DictionaryRepresentation);
    }

    CFRelease(DictionaryRepresentation);
    v190 = v809;
  }

  source3 = [v785 source];
  if (source3)
  {
    v199 = source3;
    if (([v785 hasSetVideoZoomFactorOnCaptureSource] & 1) == 0)
    {
      v200 = *(v106 + 3480);
      [v785 videoZoomFactor];
      v908 = FigVideoCaptureSourceSetSessionProperty(v199, v809, @"VideoZoomFactor", [v200 numberWithFloat:?]);
      if (v908)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        goto LABEL_285;
      }

      [v785 setHasSetVideoZoomFactorOnCaptureSource:1];
    }

    if (([v785 hasSetSimulatedApertureOnCaptureSource] & 1) == 0)
    {
      v201 = *(v106 + 3480);
      [v785 simulatedAperture];
      v908 = FigVideoCaptureSourceSetSessionProperty(v199, v809, @"SimulatedAperture", [v201 numberWithFloat:?]);
      if (v908)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        goto LABEL_285;
      }

      [v785 setHasSetSimulatedApertureOnCaptureSource:1];
    }

    if ([v809 isBravoVariant])
    {
      v908 = FigVideoCaptureSourceSetSessionProperty(v199, v809, @"EligibleFallbackCaptureSourceDeviceTypes", [v785 fallbackPrimaryConstituentDeviceTypes]);
      if (v908)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        goto LABEL_285;
      }
    }

    v908 = FigVideoCaptureSourceSetSessionProperty(v199, v809, @"ActiveFormat_FigCaptureSessionOnly", v828);
    if (v908)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    requiredMaxFrameRate = [v785 requiredMaxFrameRate];
    v204 = FigCaptureFrameRateAsData(requiredMaxFrameRate, v203);
    v908 = FigVideoCaptureSourceSetSessionProperty(v199, v809, @"ActiveMaxFrameRate_FigCaptureSessionOnly", v204);
    if (v908)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    requiredMinFrameRate = [v785 requiredMinFrameRate];
    v207 = FigCaptureFrameRateAsData(requiredMinFrameRate, v206);
    v908 = FigVideoCaptureSourceSetSessionProperty(v199, v809, @"ActiveMinFrameRate_FigCaptureSessionOnly", v207);
    if (v908)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    LODWORD(v208) = v154;
    v908 = FigVideoCaptureSourceSetSessionProperty(v199, v809, @"ActiveDepthDataMaxFrameRate", [*(v106 + 3480) numberWithFloat:v208]);
    if (v908)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }

    v209 = *(v106 + 3480);
    faceDrivenAEAFMode = [v785 faceDrivenAEAFMode];
    v211 = v209;
    v190 = v809;
    v908 = FigVideoCaptureSourceSetSessionProperty(v199, v809, @"FaceDrivenAEAFMode", [v211 numberWithInt:faceDrivenAEAFMode]);
    if (v908)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_285;
    }
  }

  [v190 setAutoImageControlMode:v769];
  if (v766)
  {
    v212 = 4;
  }

  else
  {
    v212 = 1;
  }

  [v190 setZeroShutterLagEnabled:v766 & 1];
  [v190 setZeroShutterLagTimeMachineBufferCapacity:v212];
  [v190 setMemoryPool:v762];
  [v190 setOverCaptureEnabled:v753];
  *&v213 = v50;
  [v190 setOverCapturePercentage:v213];
  [v190 setAllocateResourcesCompatibleWithOverCapture:v770 & 1];
  v214 = [objc_msgSend(v760 "irisSinkConfiguration")];
  [v190 setDigitalFlashMetadataEnabled:(v772 | v214) & 1];
  if (v214)
  {
    digitalFlashDetectedObjectTypes = [v828 digitalFlashDetectedObjectTypes];
  }

  else
  {
    digitalFlashDetectedObjectTypes = 0;
  }

  [v190 setDigitalFlashDetectedObjectTypes:digitalFlashDetectedObjectTypes];
  [v190 setMomentCaptureVideoRecordingSupported:{objc_msgSend(objc_msgSend(v760, "irisSinkConfiguration"), "momentCaptureMovieRecordingEnabled")}];
  v216 = v190;
  v217 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
  v218 = csp_variableFrameRateVideoEnabled(v785);
  [v216 setVariableFrameRateControlEnabled:v218 & (v217 ^ 1)];
  v890 = 0u;
  v889 = 0u;
  v888 = 0u;
  v887 = 0u;
  captureStreams3 = [v216 captureStreams];
  v220 = [captureStreams3 countByEnumeratingWithState:&v887 objects:type count:16];
  if (v220)
  {
    v221 = v220;
    v222 = *v888;
    do
    {
      for (n = 0; n != v221; ++n)
      {
        if (*v888 != v222)
        {
          objc_enumerationMutation(captureStreams3);
        }

        [*(*(&v887 + 1) + 8 * n) setVariableFrameRateVideoEnabled:v218];
      }

      v221 = [captureStreams3 countByEnumeratingWithState:&v887 objects:type count:16];
    }

    while (v221);
  }

  [v809 setTeleAutoVideoFrameRateAllows24FPS:{objc_msgSend(objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider, "sharedCaptureSourceBackingsProvider"), "commonSettings"), "teleAutoVideoFrameRateAllows24FPS")}];
  [v809 setCinematicVideoEnabled:v802];
  [v809 setDepthType:v757];
  [v809 setMaxOverscanVideoStabilizationMethod:v791];
  v191 = v785;
  [v809 setVideoStabilizationStrength:{objc_msgSend(v785, "videoStabilizationStrength")}];
  [v809 setConfiguresStreamingImageIntentForActionCamera:v774];
  if (v791 == 5)
  {
    [v828 stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced];
    if (v224 == 0.0)
    {
      v226 = 0;
    }

    else
    {
      [v828 stabilizationOverscanPercentageOverrideForCinematicExtendedEnhanced];
      v226 = v225 < 28.0;
    }

    [v809 setVideoStabilizationModeUsesReducedOverscan:v226];
  }

  [v809 setAdaptiveOverscanEnabled:v782];
  [v809 setOptimizesZoomRampsForVISZoomSmoothing:v778];
  v227 = [v828 temporalNoiseReductionMode] >= 1 && objc_msgSend(v785, "imageControlMode") != 4;
  [v809 setTemporalNoiseReductionEnabled:v227];
  if ([v809 cinematicVideoEnabled])
  {
    v228 = v750 == 3840 && v804 == 2160 || v750 == 2160 && v804 == 3840;
  }

  else
  {
    v228 = 0;
  }

  if (FigCapturePlatformIdentifier() < 9)
  {
    v230 = 1;
  }

  else
  {
    v230 = v157;
  }

  if (v227 & (v228 | v230) && (v228 | [v809 cinematicVideoEnabled] ^ 1) == 1)
  {
    v231 = v809;
    [v809 setTemporalNoiseReductionBand0Disabled:{objc_msgSend(v828, "temporalNoiseReductionBand0Disabled")}];
    temporalNoiseReductionRawEnabled = [v828 temporalNoiseReductionRawEnabled];
  }

  else
  {
    v231 = v809;
    [v809 setTemporalNoiseReductionBand0Disabled:0];
    temporalNoiseReductionRawEnabled = 0;
  }

  [v231 setTemporalNoiseReductionRawEnabled:temporalNoiseReductionRawEnabled];
  [v231 setTemporalNoiseReductionStrengthHighEnabled:v779 & 1];
  [v231 setDepthFormatDimensions:{objc_msgSend(objc_msgSend(v785, "depthDataFormat"), "dimensions")}];
  [v231 setDepthPixelFormat:objc_msgSend(objc_msgSend(v785, "depthDataFormat"), "format")];
  [v231 setDepthFilteringEnabled:v793];
  [v231 setTimeOfFlightProjectorMode:v758];
  [v231 setAllocateResourcesCompatibleWithDepthDataDelivery:v788 & 1];
  v233 = [objc_msgSend(v756 "videoPreviewSinkConfiguration")];
  v234 = 0.0;
  v235 = 0;
  if (v233)
  {
    *&v234 = FigVideoCaptureSourceUIBaseZoomFactor([v785 source], &v908);
    if (v908)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:? graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
      goto LABEL_285;
    }

    v235 = LODWORD(v234);
    LODWORD(v234) = v133;
  }

  [v231 setZoomPIPMinimumUIZoomFactor:v234];
  [v231 setZoomPIPSingleStreamModeEnabled:v736 & 1];
  LODWORD(v236) = v235;
  [v231 setUiBaseZoomFactor:v236];
  v237 = [objc_msgSend(v231 "captureStreams")];
  if (((v754 & HIDWORD(v736) | v788) & [v231 isBravoVariant]) != 0)
  {
    v238 = 2;
  }

  else
  {
    v238 = 1;
  }

  if (v818)
  {
    v239 = v237;
  }

  else
  {
    v239 = v238;
  }

  [v231 setNumberOfActiveTimeMachines:v239];
  [v231 setPreferredMasterPortType:v739];
  [v231 setStreamingSessionAnalyticsPixelFormat:objc_msgSend(v828, "format")];
  [v231 setStreamingSessionAnalyticsVideoDimensions:{objc_msgSend(v828, "dimensions")}];
  [v231 setStreamingSessionAnalyticsHighlightRecoveryEnabled:{objc_msgSend(v785, "highlightRecoveryEnabled")}];
  [v231 setStreamingSessionAnalyticsClientIsVOIP:v741 & 1];
  [v231 setTrueVideoCaptureEnabled:v743 & 1];
  [v231 setRebuildingGraphForTrueVideoTransition:v745 & 1];
  [v231 setTargetFrameRateWhenNotRecording:v751];
  [v231 setFrameSkippingWhenNotRecordingEnabled:v751 > 0];
  [v231 setStreamingSessionAnalyticsMixWithOthersEnabled:v746 & 1];
  if ([v785 outputAspectRatio])
  {
    if (([v828 isDynamicAspectRatioSupported] & 1) == 0)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      v141 = -12780;
LABEL_607:
      v885 = v141;
LABEL_608:
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      goto LABEL_609;
    }

    [v231 setAspectRatio:{objc_msgSend(v785, "outputAspectRatio")}];
  }

  [v231 setOutputAspectRatioSupported:{objc_msgSend(v828, "isDynamicAspectRatioSupported")}];
LABEL_285:
  v885 = v908;
  if (v908)
  {
    goto LABEL_608;
  }

  v883 = 0u;
  v882 = 0u;
  v881 = 0u;
  v880 = 0u;
  captureStreams4 = [*(v786 + 456) captureStreams];
  v717 = [captureStreams4 countByEnumeratingWithState:&v880 objects:v879 count:16];
  if (!v717)
  {
    v692 = 0;
    depthOutput = 0;
    goto LABEL_503;
  }

  v692 = 0;
  depthOutput = 0;
  v731 = *v881;
  v671 = (v727 != 0) | v715;
  v763 = *off_1E798ACB8;
  v697 = v733 & 1;
  v752 = *off_1E798ACB0;
  v696 = sushiRawSupported & 1;
  v712 = *off_1E798ACD0;
  v683 = *off_1E798ACC8;
  v672 = *off_1E798B220;
  v673 = *off_1E798A3C8;
  v695 = *off_1E798AC98;
  v694 = *off_1E798ACA8;
  v675 = *off_1E798AC90;
  v676 = *off_1E798ACA0;
  v674 = *off_1E798ACE0;
  v240 = &selRef__waitForPreviewGenerationGroupToComplete;
  do
  {
    v241 = 0;
    v699 = v240[148];
    do
    {
      if (*v881 != v731)
      {
        v242 = v241;
        objc_enumerationMutation(captureStreams4);
        v241 = v242;
      }

      v759 = v241;
      v243 = *(*(&v880 + 1) + 8 * v241);
      portType = [v243 portType];
      sourceDeviceType = [v191 sourceDeviceType];
      if (sourceDeviceType == 12 || sourceDeviceType == 6) && (objc_msgSend_isEqualToString_(portType))
      {
        v692 = v243;
        goto LABEL_473;
      }

      v773 = portType;
      sourceDeviceType3 = BWUtilitiesUnderlyingDeviceTypeFromPortType(portType, [v191 sourceDeviceType]);
      sourceDeviceType2 = [v191 sourceDeviceType];
      if (sourceDeviceType2 == 6 || sourceDeviceType2 == 12 || [v191 sourceDeviceType] == 13)
      {
        sourceDeviceType3 = [v191 sourceDeviceType];
      }

      if ([v191 sourceDeviceType] == 14)
      {
        sourceDeviceType3 = [v191 sourceDeviceType];
      }

      v767 = v243;
      if ([v191 sourceDeviceType] - 17 <= 3)
      {
        sourceDeviceType3 = [v191 sourceDeviceType];
      }

      v248 = FigCaptureConnectionConfigurationsFilterWithBlock(v764, &__block_literal_global_69);
      v249 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v248);
      v250 = FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v761);
      v771 = sourceDeviceType3;
      if ([v249 containsObject:{objc_msgSend(*(v106 + 3480), "numberWithInt:", sourceDeviceType3)}])
      {
        v251 = 1;
LABEL_311:
        v253 = v760;
        v254 = v756;
        v255 = v773;
        goto LABEL_312;
      }

      v252 = [v250 containsObject:{objc_msgSend(*(v106 + 3480), "numberWithInt:", sourceDeviceType3)}];
      if (v757 == 3)
      {
        v251 = 1;
      }

      else
      {
        v251 = v252;
      }

      if (!v776)
      {
        goto LABEL_311;
      }

      v253 = v760;
      v254 = v756;
      v255 = v773;
      if ((v251 & 1) == 0)
      {
        v251 = *(v776 + 354);
      }

LABEL_312:
      v257 = 0;
      if ([objc_msgSend(v254 "videoPreviewSinkConfiguration")])
      {
        isEqualToString = objc_msgSend_isEqualToString_(v255);
        if (v776 && isEqualToString)
        {
          v259 = v251 | v753;
          v251 = *(v776 + 302) ^ 1;
          if ((v259 & 1) == 0 && (*(v776 + 302) & 1) == 0)
          {
            v257 = *(v776 + 308);
          }
        }

        else
        {
          v251 |= isEqualToString;
        }
      }

      LODWORD(v256) = v257;
      [v767 setStreamingFrameRateForZoomPIPOverlay:v256];
      sourceDeviceType4 = [v191 sourceDeviceType];
      *&v909 = MEMORY[0x1E69E9820];
      *(&v909 + 1) = 3221225472;
      v910 = __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke;
      v911 = &__block_descriptor_40_e60_B24__0__FigCaptureConnectionConfiguration_8__NSDictionary_16l;
      v912 = sourceDeviceType3;
      v913 = sourceDeviceType4;
      v744 = [v761 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v909)}];
      sourceDeviceType5 = [v191 sourceDeviceType];
      if ([v253 underlyingDeviceType] != sourceDeviceType3 && objc_msgSend(v253, "underlyingDeviceType") != sourceDeviceType5)
      {
        v253 = 0;
      }

      v755 = v253;
      sourceDeviceType6 = [v191 sourceDeviceType];
      *&v909 = MEMORY[0x1E69E9820];
      *(&v909 + 1) = 3221225472;
      v910 = __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke;
      v911 = &__block_descriptor_40_e60_B24__0__FigCaptureConnectionConfiguration_8__NSDictionary_16l;
      v912 = sourceDeviceType3;
      v913 = sourceDeviceType6;
      v742 = [v764 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v909)}];
      if (v776)
      {
        v740 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(*(v776 + 232), sourceDeviceType3);
        v263 = *(v776 + 240);
      }

      else
      {
        v740 = FigCaptureConnectionConfigurationWithUnderlyingDeviceType(0, sourceDeviceType3);
        v263 = 0;
      }

      sourceDeviceType7 = [v191 sourceDeviceType];
      *&v909 = MEMORY[0x1E69E9820];
      *(&v909 + 1) = 3221225472;
      v910 = __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke;
      v911 = &__block_descriptor_40_e60_B24__0__FigCaptureConnectionConfiguration_8__NSDictionary_16l;
      v912 = sourceDeviceType3;
      v913 = sourceDeviceType7;
      v780 = [v263 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v909)}];
      if (v776)
      {
        v265 = *(v776 + 248);
      }

      else
      {
        v265 = 0;
      }

      sourceDeviceType8 = [v191 sourceDeviceType];
      *&v909 = MEMORY[0x1E69E9820];
      *(&v909 + 1) = 3221225472;
      v910 = __csp_filterConnectionConfigurationsForSourceDeviceTypes_block_invoke;
      v911 = &__block_descriptor_40_e60_B24__0__FigCaptureConnectionConfiguration_8__NSDictionary_16l;
      v912 = sourceDeviceType3;
      v913 = sourceDeviceType8;
      v783 = [v265 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &v909)}];
      v267 = [[BWMultiStreamCameraSourceNode alloc] initWithCaptureDevice:*(v786 + 456) captureStream:v767];
      if (!v267)
      {
        [(FigCaptureCameraSourcePipeline *)&v885 _buildMultiStreamCameraSourcePipeline:v268 graph:v269 renderDelegate:v270 fastModeSwitch:v271 rtscProcessorsBySourceDeviceType:v272 inferenceScheduler:v273, v274];
        goto LABEL_609;
      }

      v738 = v251;
      v275 = v267;
      -[BWNode setName:](v267, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Camera", BWPortTypeToDisplayString(v773, v268)]);
      v775 = v275;
      [*(v786 + 64) addObject:v275];
      if (!objc_msgSend_isEqualToString_(v773) || (v276 = &OBJC_IVAR___FigCaptureCameraSourcePipeline__telephotoSourceNode, [objc_msgSend(*(v786 + 456) "captureStreams")] <= 1))
      {
        if (!objc_msgSend_isEqualToString_(v773) || (v276 = &OBJC_IVAR___FigCaptureCameraSourcePipeline__superWideSourceNode, [objc_msgSend(*(v786 + 456) "captureStreams")] <= 1))
        {
          v276 = &OBJC_IVAR___FigCaptureCameraSourcePipeline__sourceNode;
        }
      }

      *(v786 + *v276) = v275;
      if (((v713 | v749) & 1) == 0)
      {
        v277 = v773;
        if (v776 && (*(v776 + 166) & 1) != 0)
        {
          LOBYTE(v737) = 0;
          v278 = 1;
LABEL_340:
          v747 = v278;
          goto LABEL_341;
        }

        if (v275 != *(v786 + 72))
        {
          LOBYTE(v737) = 0;
          v278 = (v275 == *(v786 + 80)) & v671;
          goto LABEL_340;
        }

        if (*v748 && [*(v786 + 456) pearlInfraredCaptureStream])
        {
          v367 = 1;
          v747 = (v727 != 0) | v715;
          goto LABEL_484;
        }

        if ([objc_msgSend(v253 "irisSinkConfiguration")])
        {
          v367 = [objc_msgSend(*(v786 + 456) "captureStreams")] == 1;
          if ((v367 | *v748 ^ 1))
          {
            v747 = 0;
LABEL_483:
            if (*v748)
            {
LABEL_484:
              v747 |= [v191 sourceDeviceType] == 13;
            }

LABEL_486:
            if ([objc_msgSend(v253 "irisSinkConfiguration")])
            {
              v367 |= [objc_msgSend(v253 "irisSinkConfiguration")];
            }

            v737 = [objc_msgSend(v253 "irisSinkConfiguration")] | v367;
            goto LABEL_334;
          }
        }

        else if (!*v748)
        {
          v367 = 0;
          v747 = 0;
          goto LABEL_486;
        }

        v367 = 0;
        v747 = ([*(v786 + 456) bravoSuperWideCaptureStream] != 0) & v671;
        goto LABEL_483;
      }

      LOBYTE(v737) = 1;
      v747 = 1;
LABEL_334:
      v277 = v773;
LABEL_341:
      if ([*(v786 + 456) bravoTelephotoCaptureStream] && (objc_msgSend_isEqualToString_(v277) & 1) != 0)
      {
        v279 = v757;
        v280 = v757;
        goto LABEL_350;
      }

      if (![*(v786 + 456) bravoSuperWideCaptureStream])
      {
        v280 = 0;
        goto LABEL_353;
      }

      v281 = objc_msgSend_isEqualToString_(v277);
      if (v281)
      {
        v280 = v757;
      }

      else
      {
        v280 = 0;
      }

      if (v281)
      {
        v279 = v757;
LABEL_350:
        if (v757 - 1 < 2)
        {
          goto LABEL_356;
        }
      }

LABEL_353:
      if (([*(v786 + 456) isBravoVariant] & 1) == 0)
      {
        v279 = v280;
LABEL_356:
        if (v776)
        {
          BYTE4(v734) = *(v776 + 165);
          LOBYTE(v734) = *(v776 + 122);
        }

        else
        {
          v734 = 0;
        }

        v280 = v279;
        goto LABEL_359;
      }

      v734 = 0;
LABEL_359:
      v732 = v280;
      v282 = [MEMORY[0x1E695DFA8] set];
      v875 = 0u;
      v876 = 0u;
      v877 = 0u;
      v878 = 0u;
      v794 = [v780 countByEnumeratingWithState:&v875 objects:v874 count:16];
      v792 = v282;
      if (v794)
      {
        v283 = 0;
        v284 = 0;
        v285 = 0;
        v829 = 0;
        v824 = 0;
        faceTrackingMaxFaces = 0;
        v810 = 0;
        v819 = 0;
        objb = 0;
        v789 = *v876;
        v286 = -1.0;
        v287 = 0.0;
        v288 = 0.0;
        v289 = 0.0;
        while (2)
        {
          for (ii = 0; ii != v794; ++ii)
          {
            if (*v876 != v789)
            {
              objc_enumerationMutation(v780);
            }

            v291 = *(*(&v875 + 1) + 8 * ii);
            FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet([v291 metadataIdentifiers], v282);
            attentionDetectionEnabled = [v291 attentionDetectionEnabled];
            v293 = FigCaptureMetadataObjectConfigurationRequiresEyeReliefStatus(v291);
            if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v291))
            {
              BoolAttribute = FigCaptureSourceGetBoolAttribute([objc_msgSend(v291 "sourceConfiguration")], 0x1F219FFF0, &v885);
            }

            else
            {
              BoolAttribute = 0;
            }

            if (faceTrackingMaxFaces <= [v291 faceTrackingMaxFaces])
            {
              faceTrackingMaxFaces = [v291 faceTrackingMaxFaces];
            }

            [v291 faceTrackingNetworkFailureThresholdMultiplier];
            if (v289 <= v295)
            {
              [v291 faceTrackingNetworkFailureThresholdMultiplier];
              v289 = v296;
            }

            [v291 faceTrackingFailureFieldOfViewModifier];
            if (v286 <= v297)
            {
              [v291 faceTrackingFailureFieldOfViewModifier];
              v286 = v298;
            }

            if (v885)
            {
              [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
              goto LABEL_609;
            }

            v800 = v285;
            v803 = v284;
            v805 = v283;
            [v291 objectDetectionTargetFrameRate];
            if (v288 <= v299)
            {
              [v291 objectDetectionTargetFrameRate];
              v288 = v300;
            }

            v301 = FigCaptureMetadataObjectConfigurationRequiresFaceIDReadiness(v291);
            periocularForFaceIDReadinessEnabled = [v291 periocularForFaceIDReadinessEnabled];
            attentionForFaceIDReadinessRequired = [v291 attentionForFaceIDReadinessRequired];
            faceOcclusionDetectionEnabled = [v291 faceOcclusionDetectionEnabled];
            v305 = FigCaptureMetadataObjectConfigurationRequiresMotionToWake(v291);
            [v291 motionToWakeTargetFrameRate];
            if (v287 <= v306)
            {
              [v291 motionToWakeTargetFrameRate];
              v287 = v307;
            }

            objb |= attentionDetectionEnabled;
            v819 |= v293;
            v810 = BoolAttribute | v810 & 1;
            v824 |= v301;
            v829 |= periocularForFaceIDReadinessEnabled;
            v285 = v800 | attentionForFaceIDReadinessRequired;
            v284 = v803 | faceOcclusionDetectionEnabled;
            v283 = v805 | v305;
            v282 = v792;
          }

          v794 = [v780 countByEnumeratingWithState:&v875 objects:v874 count:16];
          if (v794)
          {
            continue;
          }

          break;
        }

        v806 = v283;
        v192 = v787;
        v191 = v785;
        v254 = v756;
      }

      else
      {
        v806 = 0;
        LOBYTE(v284) = 0;
        LOBYTE(v285) = 0;
        v829 = 0;
        v824 = 0;
        faceTrackingMaxFaces = 0;
        v810 = 0;
        v819 = 0;
        objb = 0;
        v286 = -1.0;
        v287 = 0.0;
        v288 = 0.0;
        v289 = 0.0;
      }

      v873 = 0u;
      v872 = 0u;
      v871 = 0u;
      v870 = 0u;
      v308 = [v783 countByEnumeratingWithState:&v870 objects:v869 count:16];
      if (v308)
      {
        v309 = v308;
        v310 = *v871;
        do
        {
          for (jj = 0; jj != v309; ++jj)
          {
            if (*v871 != v310)
            {
              objc_enumerationMutation(v783);
            }

            Identifiers = CMMetadataFormatDescriptionGetIdentifiers([*(*(&v870 + 1) + 8 * jj) formatDescription]);
            FigCaptureAddDetectedObjectTypesFromMetadataIdentifiersToSet(Identifiers, v282);
          }

          v309 = [v783 countByEnumeratingWithState:&v870 objects:v869 count:16];
        }

        while (v309);
      }

      digitalFlashDetectedObjectTypes2 = [v765 digitalFlashDetectedObjectTypes];
      if ([digitalFlashDetectedObjectTypes2 count] && objc_msgSend(objc_msgSend(v755, "irisSinkConfiguration"), "digitalFlashCaptureEnabled"))
      {
        [v282 addObjectsFromArray:digitalFlashDetectedObjectTypes2];
      }

      v314 = v767;
      if (v749)
      {
        v868[0] = v763;
        v868[1] = v752;
        [v282 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v868, 2)}];
      }

      if (v713)
      {
        v867[0] = v763;
        v867[1] = v752;
        [v282 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v867, 2)}];
      }

      if ((v711 & 1) != 0 || [*(v786 + 456) smartFramingEnabled])
      {
        v866[0] = v763;
        v866[1] = v712;
        v866[2] = v752;
        [v282 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v866, 3)}];
      }

      if (v709)
      {
        [v282 addObject:v763];
        if ([v192 isRunningForContinuityCapture])
        {
          [v282 addObject:v752];
        }

        if ((v693 & 1) != 0 && (!v776 || *(v776 + 296) != 4))
        {
          [v282 addObject:v683];
        }
      }

      sourceDeviceType9 = [v191 sourceDeviceType];
      if (((sourceDeviceType9 - 2) < 0xD || (sourceDeviceType9 - 17) <= 3) && [v191 sourceDeviceType] - 17 >= 4)
      {
        [v282 addObject:v763];
      }

      v316 = [FigCaptureConnectionConfigurationWithSinkType(v764 6)];
      if (v316)
      {
        v317 = v316;
        if ([v316 requestedBufferAttachmentsTrie])
        {
          v865[0] = v673;
          v865[1] = v672;
          v318 = [MEMORY[0x1E695DEC8] arrayWithObjects:v865 count:2];
          requestedBufferAttachmentsTrie = [v317 requestedBufferAttachmentsTrie];
          v320 = v318;
          v314 = v767;
          v321 = [requestedBufferAttachmentsTrie getSubTrie:v320];
          if (v321)
          {
            v322 = v321;
            if (([v321 isComplete] & 1) == 0)
            {
              if ([objc_msgSend(v322 "children")])
              {
                [v282 addObjectsFromArray:{objc_msgSend(objc_msgSend(v322, "children"), "allKeys")}];
              }
            }
          }
        }
      }

      if (v776)
      {
        [v314 setContinuityCameraIsWired:*(v776 + 294)];
        v323 = *(v776 + 296);
      }

      else
      {
        [v314 setContinuityCameraIsWired:0];
        v323 = 0;
      }

      [v314 setContinuityCameraClientDeviceClass:v323];
      v324 = csp_cinematicVideoEnabled(v776);
      if ([v254 portraitAutoSuggestEnabled])
      {
        [v282 addObject:v763];
        [v282 addObject:v695];
        [v282 addObject:v694];
      }

      if (v324)
      {
        v864[0] = v763;
        v864[1] = v683;
        v864[2] = v752;
        v864[3] = v712;
        v864[4] = v676;
        v864[5] = v675;
        v864[6] = v695;
        v864[7] = v694;
        v864[8] = v674;
        [v282 addObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v864, 9)}];
      }

      v325 = v776;
      if (v776)
      {
        v326 = v775;
        if (*(v776 + 123) == 1)
        {
          if ([objc_msgSend(v191 "requiredFormat")])
          {
            v325 = v776;
          }

          else
          {
            v325 = v776;
          }
        }
      }

      else
      {
        v326 = v775;
      }

      if (v753)
      {
        v719 = [v191 sourceDeviceType] == 9 && v326 == *(v786 + 80);
        v325 = v776;
      }

      else
      {
        v719 = 0;
      }

      v720 = *(v786 + 456);
      v718 = *(v786 + 40);
      if (v325)
      {
        v795 = *(v325 + 24);
        v768 = *(v325 + 28);
        v725 = *(v325 + 8);
        v790 = *(v325 + 120);
        v909 = *(v325 + 72);
        v910 = *(v325 + 88);
        v896 = *(v325 + 96);
        *&v897 = *(v325 + 112);
      }

      else
      {
        v768 = 0;
        v795 = 0;
        v725 = 0;
        v790 = 0;
        v909 = 0uLL;
        v910 = 0;
        v896 = 0uLL;
        *&v897 = 0;
      }

      v327 = v325;
      [objc_msgSend(v727 "depthDataSinkConfiguration")];
      if (v327)
      {
        v328 = *(v327 + 36) > 0.0;
        v784 = *(v327 + 129);
        v781 = *(v327 + 130);
        v726 = *(v327 + 68);
        v329 = *(v327 + 268);
        BYTE4(v724) = *(v327 + 266);
        v723 = *(v327 + 131);
        LOBYTE(v724) = *(v327 + 133);
        BYTE4(v722) = *(v327 + 142);
        v721 = *(v327 + 126);
        LOBYTE(v722) = *(v327 + 127);
        csp_portraitPhotoModeEnabled(v327);
        [v787 isRunningForContinuityCapture];
        v330 = *(v327 + 340);
      }

      else
      {
        csp_portraitPhotoModeEnabled(0);
        [v787 isRunningForContinuityCapture];
        v722 = 0;
        v723 = 0;
        v724 = 0;
        v726 = 0;
        v784 = 0;
        v328 = 0;
        v781 = 0;
        v721 = 0;
        v329 = 0.0;
        v330 = 0.0;
      }

      BYTE2(v640) = v719;
      BYTE1(v640) = v722 & 1;
      LOBYTE(v640) = v721 & 1;
      v191 = v785;
      v331 = csp_configureMultiStreamCameraNode(v775, v785, v720, v744, v755, v742, v708, v777, v289, v286, v329, v288, v287, v330, v718, v715 & 1, v730, v795 & 1, v768, v725, v705, hasFlash, v790 & 1, v716[0], v703, v728 & 1, enabled, &v909, &v896, v732, previewDepthFilterRenderingEnabled, v748[0], v328, v747 & 1, v737 & 1, v784 & 1, v781 & 1, v714[1], v714[0], v700[1], v700[0], v696, v697, v740, BYTE4(v734) & 1, v734 & 1, faceTrackingMaxFaces, v726 & 1, v753, v738 & 1, v792, objb & 1, v819 & 1, v810, v824 & 1, v829 & 1, v285 & 1, v284 & 1, v806 & 1, BYTE4(v724) & 1, v723 & 1, v724 & 1, BYTE4(v722) & 1);
      v885 = v331;
      if (v331)
      {
        LODWORD(v572) = v331;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v572, v661, v580, v584, v588, v592, v596, v600);
        goto LABEL_609;
      }

      v863.receiver = v786;
      v863.super_class = FigCaptureCameraSourcePipeline;
      if ((objc_msgSendSuper2(&v863, v699, v775, &v884) & 1) == 0)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        goto LABEL_609;
      }

      v332 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:{-[BWMultiStreamCameraSourceNodeConfiguration videoStabilizationMethods](-[BWMultiStreamCameraSourceNode configuration](v775, "configuration"), "videoStabilizationMethods")}];
      v106 = 0x1E696A000uLL;
      v192 = v787;
      [v332 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(objc_msgSend(v787, "memoryAnalyticsPayload"), "maxVideoStabilizationMethod"))}];
      [objc_msgSend(v787 "memoryAnalyticsPayload")];
      LODWORD(v332) = [v785 videoStabilizationStrength];
      v333 = [objc_msgSend(v787 "memoryAnalyticsPayload")];
      memoryAnalyticsPayload = v785;
      if (v332 <= v333)
      {
        memoryAnalyticsPayload = [v787 memoryAnalyticsPayload];
      }

      [objc_msgSend(v787 "memoryAnalyticsPayload")];
      sourceDeviceType10 = v771;
      if (v729)
      {
        sourceDeviceType10 = [v785 sourceDeviceType];
      }

      v336 = v775;
      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v775 configuration] previewOutputEnabled])
      {
        previewOutput = [(BWMultiStreamCameraSourceNode *)v775 previewOutput];
        v336 = v775;
        [dictionary setObject:previewOutput forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", sourceDeviceType10)}];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v336 configuration] videoCaptureOutputEnabled])
      {
        videoCaptureOutput = [(BWMultiStreamCameraSourceNode *)v336 videoCaptureOutput];
        v336 = v775;
        [dictionary2 setObject:videoCaptureOutput forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", sourceDeviceType10)}];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v336 configuration] stillImageOutputEnabled])
      {
        [dictionary3 setObject:-[BWMultiStreamCameraSourceNode stillImageOutput](v336 forKeyedSubscript:{"stillImageOutput"), v773}];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v336 configuration] sensorRawStillImageOutputEnabled])
      {
        [dictionary4 setObject:-[BWMultiStreamCameraSourceNode stillImageSensorRawOutput](v336 forKeyedSubscript:{"stillImageSensorRawOutput"), v773}];
      }

      v339 = v336;
      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v336 configuration] depthOutputEnabled])
      {
        depthOutput = [(BWMultiStreamCameraSourceNode *)v336 depthOutput];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v336 configuration] lightSourceMaskOutputEnabled])
      {
        lightSourceMaskOutput = [(BWMultiStreamCameraSourceNode *)v336 lightSourceMaskOutput];
        v341 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v342 = lightSourceMaskOutput;
        v339 = v775;
        [dictionary6 setObject:v342 forKeyedSubscript:v341];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v339 configuration] keypointDescriptorDataOutputEnabled])
      {
        keypointDescriptorDataOutput = [(BWMultiStreamCameraSourceNode *)v339 keypointDescriptorDataOutput];
        v344 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v345 = keypointDescriptorDataOutput;
        v339 = v775;
        [dictionary7 setObject:v345 forKeyedSubscript:v344];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v339 configuration] semanticMasksOutputEnabled])
      {
        semanticMasksOutput = [(BWMultiStreamCameraSourceNode *)v339 semanticMasksOutput];
        v347 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v348 = semanticMasksOutput;
        v339 = v775;
        [dictionary8 setObject:v348 forKeyedSubscript:v347];
      }

      if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v339 configuration] detectedObjectsOutputEnabled])
      {
        v349 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v339 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244908];
        v350 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v351 = v349;
        v339 = v775;
        [dictionary5 setObject:v351 forKeyedSubscript:v350];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v339 configuration] secureMetadataOutputConfiguration] objectDetectionEnabled])
      {
        v352 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v339 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244770];
        v353 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v354 = v352;
        v339 = v775;
        [dictionary9 setObject:v354 forKeyedSubscript:v353];
        [*(v786 + 392) setObject:dictionary9 forKeyedSubscript:&unk_1F2244770];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v339 configuration] secureMetadataOutputConfiguration] eyeReliefStatusDetectionEnabled])
      {
        v355 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v339 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244788];
        v356 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v357 = v355;
        v339 = v775;
        [dictionary10 setObject:v357 forKeyedSubscript:v356];
        [*(v786 + 392) setObject:dictionary10 forKeyedSubscript:&unk_1F2244788];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v339 configuration] secureMetadataOutputConfiguration] faceTrackingEnabled])
      {
        v358 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v339 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F22447B8];
        v359 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v360 = v358;
        v339 = v775;
        [dictionary11 setObject:v360 forKeyedSubscript:v359];
        [*(v786 + 392) setObject:dictionary11 forKeyedSubscript:&unk_1F22447B8];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v339 configuration] secureMetadataOutputConfiguration] faceIDReadinessEnabled])
      {
        v361 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v339 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244920];
        v362 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v363 = v361;
        v339 = v775;
        [dictionary12 setObject:v363 forKeyedSubscript:v362];
        [*(v786 + 392) setObject:dictionary12 forKeyedSubscript:&unk_1F2244920];
      }

      if ([(BWSecureMetadataOutputConfiguration *)[(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v339 configuration] secureMetadataOutputConfiguration] motionToWakeEnabled])
      {
        v364 = [(NSDictionary *)[(BWMultiStreamCameraSourceNode *)v339 metadataOutputsByCategory] objectForKeyedSubscript:&unk_1F2244830];
        v365 = [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType10];
        v366 = v364;
        v339 = v775;
        [dictionary13 setObject:v366 forKeyedSubscript:v365];
        [*(v786 + 392) setObject:dictionary13 forKeyedSubscript:&unk_1F2244830];
      }

      *(v786 + 512) |= [(BWMultiStreamCameraSourceNode *)v339 hardwareDepthFilteringEnabled];
LABEL_473:
      v241 = v759 + 1;
    }

    while (v759 + 1 != v717);
    v368 = [captureStreams4 countByEnumeratingWithState:&v880 objects:v879 count:16];
    v717 = v368;
    v240 = &selRef__waitForPreviewGenerationGroupToComplete;
  }

  while (v368);
LABEL_503:
  v369 = v786;
  if (!v776 || *(v776 + 32) != 3 && (*(v776 + 354) & 1) == 0)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:v786 graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
  }

  v370 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  if (!v692)
  {
    goto LABEL_542;
  }

  [*(v786 + 72) setName:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@ RGB Camera", BWCaptureDevicePositionToString(objc_msgSend(*(v786 + 456), "position")))}];
  v371 = [[BWMultiStreamCameraSourceNode alloc] initWithCaptureDevice:*(v786 + 456) captureStream:v692];
  if (!v371)
  {
    [(FigCaptureCameraSourcePipeline *)&v885 _buildMultiStreamCameraSourcePipeline:v372 graph:v373 renderDelegate:v374 fastModeSwitch:v375 rtscProcessorsBySourceDeviceType:v376 inferenceScheduler:v377, v378];
    goto LABEL_609;
  }

  v379 = v371;
  -[BWNode setName:](v371, "setName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Infrared Camera", BWCaptureDevicePositionToString(objc_msgSend(*(v786 + 456), "position"))]);
  [*(v786 + 64) addObject:v379];
  LODWORD(v909) = 0;
  source4 = [v785 source];
  v381 = *off_1E798A0E8;
  v382 = FigVideoCaptureSourceCopyUnderlyingCaptureSourceForPortType(source4, *off_1E798A0E8, &v909);
  if (v909)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    v384 = 0;
  }

  else
  {
    v383 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(source4, [v785 requiredFormat], v381, &v909);
    v384 = v383;
    if (!v909 && v383)
    {
      v385 = [[FigCaptureSourceConfiguration alloc] initWithSource:v382];
      [(FigCaptureSourceConfiguration *)v385 setRequiredFormat:v384];
      [v785 maxFrameRateClientOverride];
      [(FigCaptureSourceConfiguration *)v385 setMaxFrameRateClientOverride:?];
      requiredMinFrameRate2 = [v785 requiredMinFrameRate];
      [(FigCaptureSourceConfiguration *)v385 setRequiredMinFrameRate:requiredMinFrameRate2, v387];
      requiredMaxFrameRate2 = [v785 requiredMaxFrameRate];
      [(FigCaptureSourceConfiguration *)v385 setRequiredMaxFrameRate:requiredMaxFrameRate2, v389];
      -[FigCaptureSourceConfiguration setDepthDataFormat:](v385, "setDepthDataFormat:", [v785 depthDataFormat]);
      -[FigCaptureSourceConfiguration setDepthDataDeliveryEnabled:](v385, "setDepthDataDeliveryEnabled:", [v785 depthDataDeliveryEnabled]);
      -[FigCaptureSourceConfiguration setCinematicVideoCaptureEnabled:](v385, "setCinematicVideoCaptureEnabled:", [v785 isCinematicVideoCaptureEnabled]);
      if (v382)
      {
        goto LABEL_513;
      }

      goto LABEL_514;
    }

    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
  }

  v385 = 0;
  if (v382)
  {
LABEL_513:
    CFRelease(v382);
  }

LABEL_514:

  if (!v385)
  {
    [(FigCaptureCameraSourcePipeline *)&v885 _buildMultiStreamCameraSourcePipeline:v390 graph:v391 renderDelegate:v392 fastModeSwitch:v393 rtscProcessorsBySourceDeviceType:v394 inferenceScheduler:v395, v396];
    goto LABEL_609;
  }

  [(FigCaptureSourceVideoFormat *)[(FigCaptureSourceConfiguration *)v385 requiredFormat] nativeDimensions];
  v397 = *(v786 + 456);
  [objc_msgSend(v727 "depthDataSinkConfiguration")];
  if (v776)
  {
    v398 = *(v776 + 36) > 0.0;
    v399 = *(v776 + 129);
    v400 = *(v776 + 130);
    v401 = *(v776 + 68);
  }

  else
  {
    v400 = 0;
    v398 = 0;
    v399 = 0;
    v401 = 0;
  }

  v909 = *MEMORY[0x1E6960C70];
  v910 = *(MEMORY[0x1E6960C70] + 16);
  BYTE2(v640) = 0;
  LOWORD(v640) = 0;
  v885 = csp_configureMultiStreamCameraNode(v379, v385, v397, 0, v760, 0, 0, 0, 0.0, 0.0, 0.0, 0.0, 0.0, -1.0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, MEMORY[0x1E6960C70], &v909, v757, previewDepthFilterRenderingEnabled, v748[0], v398, 0, 1, v399 & 1, v400 & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v401 & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

  if (v885)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    goto LABEL_609;
  }

  v369 = v786;
  *(v786 + 512) |= [(BWMultiStreamCameraSourceNode *)v379 hardwareDepthFilteringEnabled];
  v862.receiver = v786;
  v862.super_class = FigCaptureCameraSourcePipeline;
  if ((objc_msgSendSuper2(&v862, sel_addNode_error_, v379, &v884) & 1) == 0)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    goto LABEL_609;
  }

  *(v786 + 96) = v379;
  if ([(BWMultiStreamCameraSourceNodeConfiguration *)[(BWMultiStreamCameraSourceNode *)v379 configuration] stillImageOutputEnabled])
  {
    [dictionary3 setObject:-[BWMultiStreamCameraSourceNode stillImageOutput](v379 forKeyedSubscript:{"stillImageOutput"), v381}];
  }

  if (v776 && *(v776 + 292) == 1)
  {
    depthOutput = [(BWMultiStreamCameraSourceNode *)v379 depthOutput];
    v370 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
    goto LABEL_542;
  }

  v885 = -[FigCaptureCameraSourcePipeline _addDepthFromInfraredSynchronizer:previewOutputsBySourceDeviceType:pipelineConfiguration:graph:sourceDeviceType:](v786, dictionary2, dictionary, v776, v787, [v785 sourceDeviceType]);
  v370 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  if (v885)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    goto LABEL_609;
  }

LABEL_542:
  source5 = [v785 source];
  v820 = *(v369 + 64);
  v409 = *(v369 + v370[631]);
  v891[0] = 0;
  v410 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v410)
  {
    *type = -12782;
    goto LABEL_544;
  }

  v807 = v409;
  *type = v410(source5, @"AttributesDictionary", v670, v891);
  if (*type)
  {
LABEL_544:
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
LABEL_545:

    v411 = v786;
    goto LABEL_546;
  }

  v830 = [v891[0] objectForKeyedSubscript:0x1F21A05D0];
  if (!v830)
  {
    goto LABEL_545;
  }

  v811 = [v891[0] objectForKeyedSubscript:0x1F21A0630];
  if (!v811)
  {
    goto LABEL_545;
  }

  v825 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v820, "count")}];
  v417 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v820, "count")}];
  v896 = 0u;
  v897 = 0u;
  v898 = 0u;
  v899 = 0u;
  v418 = [v820 countByEnumeratingWithState:&v896 objects:&v909 count:16];
  if (v418)
  {
    v449 = v418;
    v450 = *v897;
    while (2)
    {
      for (kk = 0; kk != v449; ++kk)
      {
        if (*v897 != v450)
        {
          objc_enumerationMutation(v820);
        }

        v452 = *(*(&v896 + 1) + 8 * kk);
        portType2 = [v452 portType];
        if ([objc_msgSend(v452 "configuration")])
        {
          v454 = [objc_msgSend(v830 objectForKeyedSubscript:{portType2), "objectForKeyedSubscript:", 0x1F21A0610}];
          if (!v454)
          {
            goto LABEL_545;
          }

          v455 = v454;
          v456 = MEMORY[0x1E696AD98];
          [v452 geometricDistortionCorrectionStrengthOnStreamingOutputs];
          [v825 setObject:objc_msgSend(v455 forKeyedSubscript:{"objectForKeyedSubscript:", objc_msgSend(objc_msgSend(v456, "numberWithLong:", llroundf(v457 * 100.0)), "stringValue")), portType2}];
        }

        v458 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(source5, v765, portType2, type);
        if (*type)
        {
          [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
          goto LABEL_545;
        }

        if (!v458)
        {
          [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:? graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
          goto LABEL_545;
        }

        sensorCropDimensions2 = [v458 sensorCropDimensions];
        if (!sensorCropDimensions2)
        {
          sensorCropDimensions2 = [v458 sensorDimensions];
        }

        horizontalSensorBinningFactor2 = [v458 horizontalSensorBinningFactor];
        [objc_msgSend(v452 "configuration")];
        v462 = v461;
        [objc_msgSend(v452 "configuration")];
        v464 = v463;
        configuration = [v452 configuration];
        if (v462 <= v464)
        {
          [configuration visOverscan];
        }

        else
        {
          [configuration sensorOverscan];
        }

        v467 = v466;
        v468 = (horizontalSensorBinningFactor2 * sensorCropDimensions2) / (v467 + 1.0);
        [objc_msgSend(v452 "configuration")];
        *&v470 = v468 / (v469 + 1.0);
        [v417 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v470), portType2}];
      }

      v449 = [v820 countByEnumeratingWithState:&v896 objects:&v909 count:16];
      if (v449)
      {
        continue;
      }

      break;
    }
  }

  v419 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v811];
  v411 = v786;
  if ([objc_msgSend(v807 "captureStreamsByFocalLength")] >= 2)
  {
    v420 = 1;
    do
    {
      v421 = [objc_msgSend(objc_msgSend(v807 "captureStreamsByFocalLength")];
      v422 = [objc_msgSend(objc_msgSend(v807 "captureStreamsByFocalLength")];
      v423 = [v830 objectForKeyedSubscript:v421];
      v424 = [v830 objectForKeyedSubscript:v422];
      LODWORD(v423) = [objc_msgSend(v423 objectForKeyedSubscript:{0x1F21A05F0), "intValue"}];
      v425 = [objc_msgSend(v424 objectForKeyedSubscript:{0x1F21A05F0), "intValue"}];
      [objc_msgSend(v417 objectForKeyedSubscript:{v422), "floatValue"}];
      v427 = v425 / v426;
      [objc_msgSend(v417 objectForKeyedSubscript:{v421), "floatValue"}];
      v429 = v423 / v428;
      [objc_msgSend(v825 objectForKeyedSubscript:{v422), "floatValue"}];
      if (v430 == 0.0)
      {
        v431 = 1.0;
      }

      else
      {
        v431 = v430;
      }

      [objc_msgSend(v825 objectForKeyedSubscript:{v421), "floatValue"}];
      if (v432 == 0.0)
      {
        v432 = 1.0;
      }

      v433 = v427 * v431;
      v434 = v429 * v432;
      [objc_msgSend(v811 objectForKeyedSubscript:{v421), "floatValue"}];
      v436 = v435;
      [objc_msgSend(v811 objectForKeyedSubscript:{v422), "floatValue"}];
      v438 = (v434 / v433) * (v436 / v437);
      [objc_msgSend(v419 objectForKeyedSubscript:{v422), "floatValue"}];
      v440 = v439 * v438;
      if (([v807 overCaptureEnabled] & 1) == 0 && objc_msgSend(v807, "maxOverscanVideoStabilizationMethod") <= 0)
      {
        [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v807 "captureStreamsByFocalLength")];
        v443 = v442;
        if (BWWiderNonDisruptiveSwitchingFormatZoomFactorAndNarrowerBaseZoomFactorShouldBeCombined(v442, v440))
        {
          v440 = v443;
        }
      }

      v411 = v786;
      *&v441 = v440;
      [v419 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v441), v421}];
      ++v420;
    }

    while ([objc_msgSend(v807 "captureStreamsByFocalLength")] > v420);
  }

  if (v419)
  {
    [*(v411 + 456) setBaseZoomFactorsByPortType:v419];
    v861 = 0u;
    v860 = 0u;
    v859 = 0u;
    v858 = 0u;
    v444 = *(v411 + 64);
    v445 = [v444 countByEnumeratingWithState:&v858 objects:v857 count:16];
    if (v445)
    {
      v446 = v445;
      v447 = *v859;
      do
      {
        for (mm = 0; mm != v446; ++mm)
        {
          if (*v859 != v447)
          {
            objc_enumerationMutation(v444);
          }

          [*(*(&v858 + 1) + 8 * mm) updateZoomFactorsToNondisruptiveSwitchingFormatIndexMapping];
        }

        v446 = [v444 countByEnumeratingWithState:&v858 objects:v857 count:16];
      }

      while (v446);
    }
  }

LABEL_546:
  if (v776)
  {
    v412 = *(v411 + 64);
    v413 = v765;
    v414 = v663;
    if (*(v776 + 24) == 1)
    {
      sensorDimensions3 = [objc_msgSend(v765 "actionCameraCompanionFormat")];
      actionCameraCompanionFormat = [v765 actionCameraCompanionFormat];
      goto LABEL_646;
    }
  }

  else
  {
    v412 = *(v411 + 64);
    v413 = v765;
    v414 = v663;
  }

  sensorDimensions3 = [v413 sensorDimensions];
  preGDCSensorCropDimensions = [v413 preGDCSensorCropDimensions];
  if (preGDCSensorCropDimensions < 1)
  {
    actionCameraCompanionFormat = v413;
    goto LABEL_646;
  }

  actionCameraCompanionFormat = v413;
  if (SHIDWORD(preGDCSensorCropDimensions) <= 0)
  {
LABEL_646:
    preGDCSensorCropDimensions = [actionCameraCompanionFormat sensorCropDimensions];
  }

  v473 = *MEMORY[0x1E695F060];
  v472 = *(MEMORY[0x1E695F060] + 8);
  v899 = 0u;
  v898 = 0u;
  v897 = 0u;
  v896 = 0u;
  v474 = [v412 countByEnumeratingWithState:&v896 objects:&v909 count:16];
  if (v474)
  {
    v475 = v474;
    v476 = preGDCSensorCropDimensions > 0;
    v477 = SHIDWORD(preGDCSensorCropDimensions) > 0;
    v478 = !v476 || !v477;
    if (v476 && v477)
    {
      v479 = HIDWORD(preGDCSensorCropDimensions);
    }

    else
    {
      v479 = HIDWORD(sensorDimensions3);
    }

    if (v478)
    {
      v480 = sensorDimensions3;
    }

    else
    {
      v480 = preGDCSensorCropDimensions;
    }

    v481 = *v897;
    v482 = v480;
    v483 = v479;
    do
    {
      for (nn = 0; nn != v475; ++nn)
      {
        if (*v897 != v481)
        {
          objc_enumerationMutation(v412);
        }

        v485 = *(*(&v896 + 1) + 8 * nn);
        [objc_msgSend(v485 "configuration")];
        v487 = v486;
        v489 = v488;
        [objc_msgSend(v485 "configuration")];
        v492 = v487 > v490;
        if (v489 > v491)
        {
          v492 = 1;
        }

        if (v492)
        {
          v490 = v487;
          v491 = v489;
        }

        v493 = v482 / (v490 + 1.0);
        v494 = v483 / (v491 + 1.0);
        if (v473 <= v493)
        {
          v473 = v493;
        }

        if (v472 <= v494)
        {
          v472 = v494;
        }
      }

      v475 = [v412 countByEnumeratingWithState:&v896 objects:&v909 count:16];
    }

    while (v475);
  }

  v495 = v473;
  v496 = v472;
  sourceCropAspectRatio = [v765 sourceCropAspectRatio];
  if (sourceCropAspectRatio < 1)
  {
    v498 = v787;
  }

  else
  {
    v498 = v787;
    if (SHIDWORD(sourceCropAspectRatio) >= 1)
    {
      v499 = FigCaptureFitAspectInsideDimensions(v495 | (v496 << 32), 0x200000002, sourceCropAspectRatio / HIDWORD(sourceCropAspectRatio));
      v496 = HIDWORD(v499);
      LODWORD(v495) = v499;
    }
  }

  v500 = 0.0;
  if (sensorDimensions3 <= v495 && SHIDWORD(sensorDimensions3) <= v496)
  {
    v496 = HIDWORD(sensorDimensions3);
    LODWORD(v495) = sensorDimensions3;
    v503 = 0.0;
  }

  else
  {
    [v765 sensorCenterOffset];
    v503 = v502 + ((sensorDimensions3 - v495) / 2);
    v500 = v504 + ((HIDWORD(sensorDimensions3) - v496) / 2);
  }

  v505 = v495;
  v506 = v786;
  [*(v786 + 456) setRegionOfInterestWithoutOverscan:{v503, v500, v505, v496}];
  if (!v776)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:v786 graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
    goto LABEL_709;
  }

  [*(v786 + 456) setLumaHistogramsEnabled:*(v776 + 293)];
  v507 = v776;
  if ((*(v776 + 132) & 1) != 0 || *(v776 + 142) == 1)
  {
    [*(v786 + 456) setSensorRawPoolEnabled:1];
    v856 = 0u;
    v855 = 0u;
    v854 = 0u;
    v853 = 0u;
    v508 = *(v786 + 64);
    v509 = [v508 countByEnumeratingWithState:&v853 objects:v852 count:16];
    if (v509)
    {
      v511 = v509;
      v512 = 0;
      v513 = 0;
      v514 = *v854;
      do
      {
        for (i1 = 0; i1 != v511; ++i1)
        {
          if (*v854 != v514)
          {
            objc_enumerationMutation(v508);
          }

          v516 = *(*(&v853 + 1) + 8 * i1);
          if (v512 < 1 || v513 < 1)
          {
            ultraHighResSensorRawStillImageOutputDimensions = [v516 ultraHighResSensorRawStillImageOutputDimensions];
            v512 = ultraHighResSensorRawStillImageOutputDimensions;
            v513 = HIDWORD(ultraHighResSensorRawStillImageOutputDimensions);
          }

          else
          {
            ultraHighResSensorRawStillImageOutputDimensions2 = [v516 ultraHighResSensorRawStillImageOutputDimensions];
            if (v512 <= ultraHighResSensorRawStillImageOutputDimensions2)
            {
              v518 = ultraHighResSensorRawStillImageOutputDimensions2;
            }

            else
            {
              v518 = v512;
            }

            if (v513 <= HIDWORD(ultraHighResSensorRawStillImageOutputDimensions2))
            {
              v519 = HIDWORD(ultraHighResSensorRawStillImageOutputDimensions2);
            }

            else
            {
              v519 = v513;
            }

            if ((v512 | (v513 << 32)) == ultraHighResSensorRawStillImageOutputDimensions2 || ultraHighResSensorRawStillImageOutputDimensions2 < 1 || SHIDWORD(ultraHighResSensorRawStillImageOutputDimensions2) < 1)
            {
              v513 = v513;
            }

            else
            {
              v512 = v518;
              v513 = v519;
            }
          }
        }

        v511 = [v508 countByEnumeratingWithState:&v853 objects:v852 count:16];
      }

      while (v511);
      v510 = v512 | (v513 << 32);
      v498 = v787;
    }

    else
    {
      v510 = 0;
    }

    v506 = v786;
    [*(v786 + 456) setUltraHighResSensorRawPoolDimensions:v510];
LABEL_709:
    v507 = v776;
  }

  v885 = [(FigCaptureCameraSourcePipeline *)v506 _buildSemanticMasksOutputNetwork:dictionary8 pipelineConfiguration:v507 graph:v498];
  if (v885)
  {
    [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
  }

  else
  {
    LODWORD(v576) = v414;
    [(FigCaptureCameraSourcePipeline *)v506 _buildVideoCaptureOutputNetwork:dictionary2 previewOutputsBySourceDeviceType:dictionary stillImageOutputsByPortType:dictionary3 lightSourceMaskOutputsBySourceDeviceType:dictionary6 keypointDescriptorDataOutputsBySourceDeviceType:dictionary7 pipelineConfiguration:v507 graph:v498 videoCaptureDimensions:v572 numberOfSecondaryFramesToSkip:v576 rtscProcessorsBySourceDeviceType:switch inferenceScheduler:v668, v588, v592, v596, v600, v604, v608, v612, v616, v620, v624, v628, v632, v636, v640];
    v885 = v524;
    if (v524)
    {
      [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
    }

    else
    {
      v885 = [FigCaptureCameraSourcePipeline _buildPreviewOutputNetwork:v506 videoCaptureOutputsBySourceDeviceType:dictionary pipelineConfiguration:v523 graph:v507 numberOfSecondaryFramesToSkip:v498];
      if (v885)
      {
        [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
      }

      else
      {
        v885 = [(FigCaptureCameraSourcePipeline *)v506 _buildDetectedObjectsOutputNetwork:dictionary5 pipelineConfiguration:v507 graph:v498];
        if (v885)
        {
          [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
        }

        else
        {
          v525 = v786;
          if (v715)
          {
            if (v776)
            {
              v526 = *(v776 + 240);
            }

            else
            {
              v526 = 0;
            }

            [(FigCaptureCameraSourcePipeline *)v786 _updateNumberOfFaceTrackingConnectionConfigurations:v526];
          }

          if (*(v786 + 41) == 1)
          {
            v851 = 0u;
            v850 = 0u;
            v849 = 0u;
            v848 = 0u;
            v527 = v776 ? *(v776 + 240) : 0;
            objc = v527;
            v826 = [v527 countByEnumeratingWithState:&v848 objects:v847 count:16];
            if (v826)
            {
              v821 = *v849;
              do
              {
                v528 = 0;
                do
                {
                  if (*v849 != v821)
                  {
                    objc_enumerationMutation(objc);
                  }

                  v831 = v528;
                  v529 = *(*(&v848 + 1) + 8 * v528);
                  v530 = [(FigCaptureCameraSourcePipeline *)v525 metadataCategoriesForConnectionConfiguration:v529];
                  v843 = 0u;
                  v844 = 0u;
                  v845 = 0u;
                  v846 = 0u;
                  v531 = [v530 countByEnumeratingWithState:&v843 objects:v842 count:16];
                  if (v531)
                  {
                    v532 = v531;
                    v533 = *v844;
                    do
                    {
                      for (i2 = 0; i2 != v532; ++i2)
                      {
                        if (*v844 != v533)
                        {
                          objc_enumerationMutation(v530);
                        }

                        v535 = *(*(&v843 + 1) + 8 * i2);
                        v536 = [(FigCaptureCameraSourcePipeline *)v786 createOutputNetworkForOutput:v535 withFanOutCount:1 graph:v787 sessionID:@"PrimaryClientSession"];
                        v537 = [*(v786 + 392) objectForKeyedSubscript:v535];
                        [v537 setObject:v536 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", objc_msgSend(v529, "underlyingDeviceType"))}];
                      }

                      v532 = [v530 countByEnumeratingWithState:&v843 objects:v842 count:16];
                    }

                    while (v532);
                  }

                  v528 = v831 + 1;
                  v525 = v786;
                }

                while (v831 + 1 != v826);
                v826 = [objc countByEnumeratingWithState:&v848 objects:v847 count:16];
              }

              while (v826);
            }
          }

          v885 = [FigCaptureCameraSourcePipeline _buildPointCloudOutputNetworkWithPipelineConfiguration:v525 graph:v776];
          if (v885)
          {
            [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:];
          }

          else
          {
            *(v525 + 408) = depthOutput;
            [*(v525 + 72) setRenderDelegate:v666];
            v538 = [objc_msgSend(*(v525 + 72) "configuration")];
            v539 = *(v525 + 72);
            if (v538)
            {
              videoCaptureOutput2 = [v539 videoCaptureOutput];
              goto LABEL_757;
            }

            if ([objc_msgSend(v539 "configuration")])
            {
              videoCaptureOutput2 = [*(v525 + 72) previewOutput];
              goto LABEL_757;
            }

            v541 = [dictionary3 count];
            v542 = *(v525 + 72);
            if (v541)
            {
              videoCaptureOutput2 = [v542 stillImageOutput];
              goto LABEL_757;
            }

            v543 = [objc_msgSend(v542 "configuration")];
            v544 = *(v525 + 72);
            if (v543)
            {
              metadataOutputsByCategory = [v544 metadataOutputsByCategory];
              v546 = &unk_1F2244908;
              goto LABEL_756;
            }

            v547 = [objc_msgSend(v544 "configuration")];
            v548 = *(v525 + 72);
            if (v547)
            {
              videoCaptureOutput2 = [v548 pointCloudOutput];
              goto LABEL_757;
            }

            v549 = [objc_msgSend(objc_msgSend(v548 "configuration")];
            v550 = *(v525 + 72);
            if (v549)
            {
              metadataOutputsByCategory = [v550 metadataOutputsByCategory];
              v546 = &unk_1F2244770;
LABEL_756:
              videoCaptureOutput2 = [metadataOutputsByCategory objectForKeyedSubscript:v546];
LABEL_757:
              *(v525 + 112) = videoCaptureOutput2;
            }

            else
            {
              v551 = [objc_msgSend(objc_msgSend(v550 "configuration")];
              v552 = *(v525 + 72);
              if (v551)
              {
                metadataOutputsByCategory = [v552 metadataOutputsByCategory];
                v546 = &unk_1F22447B8;
                goto LABEL_756;
              }

              v553 = [objc_msgSend(objc_msgSend(v552 "configuration")];
              v554 = *(v525 + 72);
              if (v553)
              {
                metadataOutputsByCategory = [v554 metadataOutputsByCategory];
                v546 = &unk_1F2244788;
                goto LABEL_756;
              }

              v555 = [objc_msgSend(objc_msgSend(v554 "configuration")];
              v556 = *(v525 + 72);
              if (v555)
              {
                metadataOutputsByCategory = [v556 metadataOutputsByCategory];
                v546 = &unk_1F2244830;
                goto LABEL_756;
              }

              if ([objc_msgSend(objc_msgSend(v556 "configuration")])
              {
                metadataOutputsByCategory = [*(v525 + 72) metadataOutputsByCategory];
                v546 = &unk_1F2244920;
                goto LABEL_756;
              }
            }

            *(v525 + 176) = dictionary3;
            *(v525 + 184) = dictionary4;
            *(v525 + 508) = v757;
            if (v776)
            {
              *(v525 + 585) = *(v776 + 348);
              *(v525 + 586) = *(v776 + 350);
              *(v525 + 587) = *(v776 + 351);
              if ((v708 & v664 & *(v776 + 265)) == 1)
              {
                v841 = 0u;
                v840 = 0u;
                v839 = 0u;
                v838 = 0u;
                v557 = *(v786 + 64);
                v558 = [v557 countByEnumeratingWithState:&v838 objects:v837 count:16];
                if (v558)
                {
                  v559 = v558;
                  v560 = *v839;
                  do
                  {
                    for (i3 = 0; i3 != v559; ++i3)
                    {
                      if (*v839 != v560)
                      {
                        objc_enumerationMutation(v557);
                      }

                      v562 = *(*(&v838 + 1) + 8 * i3);
                      if (objc_msgSend_isEqualToString_([objc_msgSend(v562 "captureStream")]))
                      {
                        [v787 enableDeferredStartForSourceNode:v562 mustStartAfterNonDeferred:1];
                      }
                    }

                    v559 = [v557 countByEnumeratingWithState:&v838 objects:v837 count:16];
                  }

                  while (v559);
                }
              }
            }

            else
            {
              [FigCaptureCameraSourcePipeline _buildMultiStreamCameraSourcePipeline:v525 graph:? renderDelegate:? fastModeSwitch:? rtscProcessorsBySourceDeviceType:? inferenceScheduler:?];
            }

            if ([(FigCaptureCameraSourcePipeline *)v786 _canDeferSourceNodesForGraph:v787])
            {
              v836 = 0u;
              v835 = 0u;
              v834 = 0u;
              v833 = 0u;
              v563 = *(v786 + 64);
              v564 = [v563 countByEnumeratingWithState:&v833 objects:v832 count:16];
              if (v564)
              {
                v565 = v564;
                v566 = *v834;
                do
                {
                  for (i4 = 0; i4 != v565; ++i4)
                  {
                    if (*v834 != v566)
                    {
                      objc_enumerationMutation(v563);
                    }

                    [v787 enableDeferredStartForSourceNode:*(*(&v833 + 1) + 8 * i4) mustStartAfterNonDeferred:1];
                  }

                  v565 = [v563 countByEnumeratingWithState:&v833 objects:v832 count:16];
                }

                while (v565);
              }
            }
          }
        }
      }
    }
  }

LABEL_609:
  result = v885;
  if (!v885)
  {
    if (v884)
    {
      return [v884 code];
    }
  }

  return result;
}

- (void)dealloc
{
  captureSource = self->_captureSource;
  if (captureSource)
  {
    CFRelease(captureSource);
  }

  v4.receiver = self;
  v4.super_class = FigCaptureCameraSourcePipeline;
  [(FigCaptureSourcePipeline *)&v4 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p> captureDevice:%@ captureSource:%@", NSStringFromClass(v4), self, self->_captureDevice, self->_captureSource];
}

- (uint64_t)_getDeviceOrientationCorrectionEnabledForVideoCaptureConnectionConfigurations:(uint64_t)configurations
{
  result = 0;
  if (configurations)
  {
    if (a2)
    {
      result = [a2 count];
      if (result)
      {
        v12 = 0u;
        v13 = 0u;
        v10 = 0u;
        v11 = 0u;
        result = [a2 countByEnumeratingWithState:&v10 objects:v9 count:16];
        if (result)
        {
          v5 = result;
          v6 = *v11;
          while (2)
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v11 != v6)
              {
                objc_enumerationMutation(a2);
              }

              v8 = *(*(&v10 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 deviceOrientationCorrectionEnabled])
              {
                return 1;
              }
            }

            v5 = [a2 countByEnumeratingWithState:&v10 objects:v9 count:16];
            result = 0;
            if (v5)
            {
              continue;
            }

            break;
          }
        }
      }
    }
  }

  return result;
}

- (id)initWithConfiguration:(void *)configuration captureDevice:(void *)device graph:(uint64_t)graph name:(uint64_t)name renderDelegate:(uint64_t)delegate ispFastSwitchEnabled:(uint64_t)enabled rtscProcessorsBySourceDeviceType:(uint64_t)type inferenceScheduler:(int *)self0 error:
{
  selfCopy = self;
  if (!self)
  {
    return selfCopy;
  }

  v38 = 0;
  if (a2)
  {
    v18 = *(a2 + 176);
  }

  else
  {
    v18 = 0;
  }

  source = [v18 source];
  v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v20)
  {
    v21 = v20(source, @"AttributesDictionary", *MEMORY[0x1E695E480], &v38);
    if (!v21)
    {
      if (a2)
      {
        v22 = *(a2 + 176);
      }

      else
      {
        v22 = 0;
      }

      v37.receiver = selfCopy;
      v37.super_class = FigCaptureCameraSourcePipeline;
      selfCopy = objc_msgSendSuper2(&v37, sel_initWithGraph_name_sourceID_, device, graph, [v22 sourceID]);
      if (!selfCopy)
      {
LABEL_21:

        return selfCopy;
      }

      if (a2)
      {
        v23 = *(a2 + 176);
      }

      else
      {
        v23 = 0;
      }

      if ([v23 source])
      {
        *(selfCopy + 7) = a2;
        *(selfCopy + 8) = objc_alloc_init(MEMORY[0x1E695DF70]);
        *(selfCopy + 11) = [objc_msgSend(v38 objectForKeyedSubscript:{@"DeviceType", "intValue"}];
        *(selfCopy + 12) = [objc_msgSend(v38 objectForKeyedSubscript:{@"Position", "intValue"}];
        *(selfCopy + 57) = configuration;
        if (a2)
        {
          v26 = *(a2 + 176);
        }

        else
        {
          v26 = 0;
        }

        source2 = [v26 source];
        if (source2)
        {
          source2 = CFRetain(source2);
        }

        *(selfCopy + 58) = source2;
        if (a2)
        {
          *(selfCopy + 59) = [*(a2 + 176) requiredFormat];
          v28 = *(a2 + 176);
        }

        else
        {
          requiredFormat = [0 requiredFormat];
          v28 = OUTLINED_FUNCTION_110_2();
          *(selfCopy + 59) = v35;
        }

        *(selfCopy + 60) = [v28 depthDataFormat];
        *(selfCopy + 62) = [device memoryPool];
        if (a2)
        {
          *(selfCopy + 504) = *(a2 + 136) != 0.0;
          *(selfCopy + 513) = *(a2 + 266);
          v29 = *(a2 + 176);
        }

        else
        {
          v29 = 0;
          *(selfCopy + 504) = 0;
          *(selfCopy + 513) = 0;
        }

        [v29 maxFrameRateClientOverride];
        *(selfCopy + 129) = v30;
        *(selfCopy + 71) = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(selfCopy + 72) = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(selfCopy + 49) = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(selfCopy + 41) = [objc_msgSend(v38 objectForKeyedSubscript:{0x1F21833F0), "BOOLValue"}];
        *(selfCopy + 65) = objc_alloc_init(MEMORY[0x1E695DF90]);
        *(selfCopy + 55) = objc_alloc_init(MEMORY[0x1E695DF90]);
        v31 = [(FigCaptureCameraSourcePipeline *)selfCopy _buildMultiStreamCameraSourcePipeline:a2 graph:device renderDelegate:name fastModeSwitch:0 rtscProcessorsBySourceDeviceType:enabled inferenceScheduler:type];
        if (!v31)
        {
          goto LABEL_21;
        }

        v32 = v31;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

      else
      {
        v32 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844128, 0xFFFFCE14, "<<<< FigCaptureCameraSourcePipeline >>>>", 0x1DE, v10, v24, v25, v36);
      }

      goto LABEL_24;
    }

    v32 = v21;
  }

  else
  {
    v32 = -12782;
  }

  OUTLINED_FUNCTION_0_8();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v32);
LABEL_24:

  if (scheduler)
  {
    *scheduler = v32;
  }

  return 0;
}

- (uint64_t)cameraConfiguration
{
  if (result)
  {
    v1 = *(result + 56);
    if (v1)
    {
      return *(v1 + 176);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)videoOutputColorInfo
{
  if (result)
  {
    [result[9] videoCaptureOutput];
    v1 = OUTLINED_FUNCTION_17();

    return [v1 colorInfoForOutput:?];
  }

  return result;
}

- (uint64_t)metadataOutputsByCategoryForSourceDeviceType:(uint64_t)type
{
  if (!type)
  {
    return 0;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  allKeys = [*(type + 392) allKeys];
  OUTLINED_FUNCTION_43();
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        OUTLINED_FUNCTION_4_10();
        if (v11 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        [*(type + 392) objectForKeyedSubscript:*(v17 + 8 * v10)];
        [MEMORY[0x1E696AD98] numberWithInt:a2];
        [OUTLINED_FUNCTION_36() objectForKeyedSubscript:?];
        [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
        ++v10;
      }

      while (v8 != v10);
      OUTLINED_FUNCTION_43();
      v8 = OUTLINED_FUNCTION_52(v12, v13, v14, v15);
    }

    while (v8);
  }

  return dictionary;
}

- (void)metadataCategoriesForConnectionConfiguration:(uint64_t)configuration
{
  if (!configuration)
  {
    return 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (FigCaptureMetadataObjectConfigurationRequiresObjectDetection(a2))
  {
    [array addObject:&unk_1F2244770];
  }

  if (FigCaptureMetadataObjectConfigurationRequiresEyeReliefStatus(a2))
  {
    [array addObject:&unk_1F2244788];
  }

  if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(a2))
  {
    [array addObject:&unk_1F22447B8];
  }

  if (FigCaptureMetadataObjectConfigurationRequiresFaceIDReadiness(a2))
  {
    [array addObject:&unk_1F2244920];
  }

  if (FigCaptureMetadataObjectConfigurationRequiresMotionToWake(a2))
  {
    [array addObject:&unk_1F2244830];
  }

  return array;
}

- (void)visionDataOutputForSourceDeviceType:(void *)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInt:a2];
    v2 = OUTLINED_FUNCTION_17();

    return [v2 objectForKeyedSubscript:?];
  }

  return result;
}

- (uint64_t)depthOutput
{
  if (result)
  {
    return *(result + 408);
  }

  return result;
}

- (void)isLightSourceMaskOnVideoCaptureOutputsEnabledForSourceDeviceType:(void *)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInt:a2];
    v2 = OUTLINED_FUNCTION_17();

    return [v2 containsObject:?];
  }

  return result;
}

- (void)isKeypointDescriptorDataOnVideoCaptureOutputsEnabledForSourceDeviceType:(void *)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInt:a2];
    v2 = OUTLINED_FUNCTION_17();

    return [v2 containsObject:?];
  }

  return result;
}

- (void)semanticMasksOutputsBySourceDeviceType:(void *)result
{
  if (result)
  {
    [MEMORY[0x1E696AD98] numberWithInt:a2];
    v2 = OUTLINED_FUNCTION_17();

    return [v2 objectForKeyedSubscript:?];
  }

  return result;
}

- (id)preferredPreviewDimensions
{
  if (result)
  {
    configuration = [result[9] configuration];

    return [configuration preferredPreviewDimensions];
  }

  return result;
}

- (uint64_t)videoCaptureOutputTransformForSourceDeviceType:(uint64_t)type
{
  if (type)
  {
    OUTLINED_FUNCTION_141_0(type, a2);
    if ([objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"count"")])
    {
      [*(v2 + 3480) numberWithInt:a2];
      v5 = [objc_msgSend(OUTLINED_FUNCTION_8() "objectForKeyedSubscript:{"objectAtIndexedSubscript:", 0}")];
      if (v5)
      {
        v6 = v5;
        while (1)
        {
          formatRequirements = [v6 formatRequirements];
          if ([formatRequirements width])
          {
            if ([formatRequirements height])
            {
              break;
            }
          }

          v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v6 "node")];
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        formatRequirements = 0;
      }
    }

    else
    {
      formatRequirements = [objc_msgSend(*(type + 72) "videoCaptureOutput")];
    }

    [formatRequirements width];
    [formatRequirements height];
  }

  return OUTLINED_FUNCTION_3_19();
}

- (uint64_t)previewOutputTransformForSourceDeviceType:(uint64_t)type
{
  if (type)
  {
    OUTLINED_FUNCTION_141_0(type, a2);
    if ([objc_msgSend(OUTLINED_FUNCTION_7() "objectForKeyedSubscript:"count"")])
    {
      [*(v2 + 3480) numberWithInt:a2];
      v5 = [objc_msgSend(OUTLINED_FUNCTION_8() "objectForKeyedSubscript:{"objectAtIndexedSubscript:", 0}")];
      if (v5)
      {
        v6 = v5;
        while (1)
        {
          formatRequirements = [v6 formatRequirements];
          if ([formatRequirements width])
          {
            if ([formatRequirements height])
            {
              break;
            }
          }

          v6 = [objc_msgSend(objc_msgSend(objc_msgSend(v6 "node")];
          if (!v6)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        formatRequirements = 0;
      }
    }

    else
    {
      formatRequirements = [objc_msgSend(*(type + 72) "previewOutput")];
    }

    [formatRequirements width];
    [formatRequirements height];
  }

  return OUTLINED_FUNCTION_3_19();
}

- (id)firmwareStillImageDimensionsAfterOverscanCropping
{
  if (result)
  {
    return [result[9] firmwareStillImageDimensionsAfterOverscanCropping];
  }

  return result;
}

- (id)stillImageOutputVideoFormat
{
  if (result)
  {
    stillImageOutput = [result[9] stillImageOutput];

    return [stillImageOutput videoFormat];
  }

  return result;
}

- (void)nextVideoCaptureOutputForSourceDeviceType:(uint64_t)type
{
  if (result)
  {
    [(FigCaptureCameraSourcePipeline *)result nextVideoCaptureOutputForSourceDeviceType:a2 sharesBuffersWithOtherConnections:0, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28];
  }
}

- (void)nextVideoCaptureOutputForSourceDeviceType:(uint64_t)type sharesBuffersWithOtherConnections:(uint64_t)connections
{
  if (self)
  {
    OUTLINED_FUNCTION_91();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    OUTLINED_FUNCTION_124_3(v33, v31, 208);
    v35 = 0x1E696A000uLL;
    [MEMORY[0x1E696AD98] numberWithInt:v36];
    if (![OUTLINED_FUNCTION_28() objectForKeyedSubscript:?])
    {
      goto LABEL_28;
    }

    [MEMORY[0x1E696AD98] numberWithInt:v32];
    if ([objc_msgSend(OUTLINED_FUNCTION_28() "objectForKeyedSubscript:"count"")] <= v28)
    {
      goto LABEL_28;
    }

    if (!v30)
    {
LABEL_27:
      [*(v35 + 3480) numberWithInt:v32];
      [objc_msgSend(OUTLINED_FUNCTION_8() "objectForKeyedSubscript:{"objectAtIndexedSubscript:", v28}")];
LABEL_28:
      OUTLINED_FUNCTION_90_3();
      return;
    }

    [MEMORY[0x1E696AD98] numberWithInt:v32];
    v37 = [OUTLINED_FUNCTION_28() arrayWithObject:?];
    if (*(v34 + 44) != v32)
    {
      [MEMORY[0x1E696AD98] numberWithInt:?];
      [OUTLINED_FUNCTION_28() addObject:?];
    }

    switch(v32)
    {
      case 4:
        v38 = &unk_1F22489D0;
        break;
      case 9:
        v38 = &unk_1F2248A00;
        break;
      case 8:
        v38 = &unk_1F22489E8;
        break;
      default:
LABEL_14:
        OUTLINED_FUNCTION_69_0();
        OUTLINED_FUNCTION_17_20();
        v43 = OUTLINED_FUNCTION_1_0(v39, v40, v41, v42);
        if (v43)
        {
          v44 = v43;
          v55 = v30;
          v56 = v28;
          v45 = 0;
          OUTLINED_FUNCTION_82_4();
          while (2)
          {
            for (i = 0; i != v44; ++i)
            {
              OUTLINED_FUNCTION_19_17();
              if (!v47)
              {
                objc_enumerationMutation(v37);
              }

              v48 = *(a28 + 8 * i);
              v49 = [objc_msgSend(*(v34 + 192) objectForKeyedSubscript:{v48), "count"}] + v45;
              v45 = v49 + [objc_msgSend(*(v34 + 200) objectForKeyedSubscript:{v48), "intValue"}];
              if (v45 > 1)
              {
                v54 = 1;
                goto LABEL_24;
              }
            }

            OUTLINED_FUNCTION_17_20();
            v44 = OUTLINED_FUNCTION_1_0(v50, v51, v52, v53);
            if (v44)
            {
              continue;
            }

            break;
          }

          v54 = 0;
LABEL_24:
          v30 = v55;
          v28 = v56;
          v35 = 0x1E696A000;
        }

        else
        {
          v54 = 0;
        }

        *v30 = v54;
        goto LABEL_27;
    }

    [v37 addObjectsFromArray:v38];
    goto LABEL_14;
  }
}

- (void)nextPreviewOutputForSourceDeviceType:(char)type intendedForVideoDataSinkPipeline:
{
  if (!self)
  {
    return 0;
  }

  OUTLINED_FUNCTION_124_3(self, a2, 292);
  [MEMORY[0x1E696AD98] numberWithInt:v7];
  if (![OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?] || (objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2), objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_37_0(), "objectForKeyedSubscript:"), "count") <= v3))
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v27, v28, v29, v30, v31, v32, v33, v34);
    return 0;
  }

  [MEMORY[0x1E696AD98] numberWithInt:a2];
  v8 = [objc_msgSend(OUTLINED_FUNCTION_28() "objectForKeyedSubscript:{"objectAtIndexedSubscript:", v3}")];
  v9 = v8;
  if ((type & 1) == 0)
  {
    v10 = *(self + 56);
    if (v10)
    {
      v11 = *(v10 + 176);
      if (!v8)
      {
        return v9;
      }
    }

    else
    {
      v11 = 0;
      if (!v8)
      {
        return v9;
      }
    }

    requiredMinFrameRate = [v11 requiredMinFrameRate];
    v14 = v13;
    requiredMaxFrameRate = [v11 requiredMaxFrameRate];
    v17 = FigCaptureFrameRateEqual(requiredMinFrameRate, v14, requiredMaxFrameRate, v16);
    if (v17)
    {
      v19 = BWGetMaximumDisplayFrequency(v17, v18);
      v20 = [objc_msgSend(v11 "requiredFormat")];
      if (v20 >= 1 && v20 <= v19)
      {
        requiredMaxFrameRate2 = [OUTLINED_FUNCTION_18_0() requiredMaxFrameRate];
        v25 = FigCaptureFrameRateAsInt(requiredMaxFrameRate2, v24);
        v19 = v25 / ((requiredMinFrameRate + v25 - 1) / requiredMinFrameRate);
      }

      *&v21 = v19;
      [v9 setMaxSampleDataOutputRate:v21];
    }
  }

  return v9;
}

- (void)setSmartStyle:(void *)result
{
  if (result)
  {
    v4 = OUTLINED_FUNCTION_36_13();
    allValues = [*(v5 + 568) allValues];
    result = OUTLINED_FUNCTION_134_2(allValues, v7, v8, v9, v10, v11, v12, v13, v22);
    if (result)
    {
      OUTLINED_FUNCTION_39_12();
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v14)
        {
          objc_enumerationMutation(v2);
        }

        [OUTLINED_FUNCTION_121_0() setSmartStyle:a2];
        OUTLINED_FUNCTION_120_0();
        if (v14)
        {
          result = OUTLINED_FUNCTION_13_26(v15, v16, v24, v17, v18, v19, v20, v21, v23);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (id)getSmartStyle
{
  if (result)
  {
    v1 = [objc_msgSend(result[71] "allValues")];

    return [v1 smartStyle];
  }

  return result;
}

- (void)loadInferenceNetworkForSmartStyle
{
  if (result)
  {
    v2 = OUTLINED_FUNCTION_72_3();
    allValues = [*(v3 + 568) allValues];
    result = [allValues countByEnumeratingWithState:v16 objects:v15 count:16];
    if (result)
    {
      OUTLINED_FUNCTION_74_4();
      do
      {
        v5 = 0;
        do
        {
          OUTLINED_FUNCTION_76_3();
          if (!v6)
          {
            objc_enumerationMutation(allValues);
          }

          loadInferenceNetwork = [*(v17 + 8 * v5) loadInferenceNetwork];
          v5 = v5 + 1;
        }

        while (v1 != v5);
        result = OUTLINED_FUNCTION_57(loadInferenceNetwork, v8, v9, v10, v11, v12, v13, v14, v15[0]);
        v1 = result;
      }

      while (result);
    }
  }

  return result;
}

- (id)registerAttachedSessionID:(id *)result
{
  if (result)
  {
    v3 = [objc_msgSend(result[9] "captureStream")];

    return [v3 registerAttachedSessionID:a2];
  }

  return result;
}

- (void)setMetadataObjectConnectionConfiguration:(uint64_t)configuration forSessionID:
{
  if (result)
  {
    v5 = result;
    v6 = result[56];
    if (!v6)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v5[56] = v6;
    }

    return [v6 setObject:a2 forKeyedSubscript:configuration];
  }

  return result;
}

- (id)metadataObjectConnectionConfigurationForSessionID:(id *)result
{
  if (result)
  {
    return [result[56] objectForKeyedSubscript:a2];
  }

  return result;
}

- (void)addMetadataOutputNetworksForSessionID:(uint64_t)d graph:(uint64_t)graph
{
  OUTLINED_FUNCTION_91();
  v46 = v30;
  if (v28)
  {
    v31 = v29;
    v32 = v28;
    v33 = [v28[56] objectForKeyedSubscript:v29];
    v34 = [(FigCaptureCameraSourcePipeline *)v32 metadataCategoriesForConnectionConfiguration:v33];
    v35 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v33, "underlyingDeviceType")}];
    v36 = [v34 countByEnumeratingWithState:OUTLINED_FUNCTION_9_35() objects:? count:?];
    if (v36)
    {
      v37 = v36;
      OUTLINED_FUNCTION_82_4();
      do
      {
        for (i = 0; i != v37; ++i)
        {
          OUTLINED_FUNCTION_19_17();
          if (!v39)
          {
            objc_enumerationMutation(v34);
          }

          v40 = *(a28 + 8 * i);
          dictionary = [v32[55] objectForKeyedSubscript:v40];
          if (!dictionary)
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
          }

          if (![dictionary objectForKeyedSubscript:v31])
          {
            [MEMORY[0x1E695DF90] dictionary];
            [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
          }

          if (![objc_msgSend(dictionary objectForKeyedSubscript:{v31), "objectForKeyedSubscript:", v35}])
          {
            v42 = v34;
            v43 = [(FigCaptureCameraSourcePipeline *)v32 createOutputNetworkForOutput:v40 withFanOutCount:0 graph:v46 sessionID:v31];
            v44 = [dictionary objectForKeyedSubscript:v31];
            v45 = v43;
            v34 = v42;
            [v44 setObject:v45 forKeyedSubscript:v35];
            [v32[55] setObject:dictionary forKeyedSubscript:v40];
          }
        }

        OUTLINED_FUNCTION_17_20();
        v37 = [v34 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v37);
    }
  }

  OUTLINED_FUNCTION_90_3();
}

- (BWNodeOutput)createOutputNetworkForOutput:(uint64_t)output withFanOutCount:(void *)count graph:(uint64_t)graph sessionID:
{
  if (!self)
  {
    return 0;
  }

  v21 = 0;
  v10 = objc_alloc_init(BWNodeOutput);
  if (![self[65] objectForKeyedSubscript:a2])
  {
    v11 = [[BWFanOutNode alloc] initWithFanOutCount:output mediaType:1835365473];
    [self[65] setObject:v11 forKeyedSubscript:a2];
    BWMetadataCategoryToString([a2 intValue]);
    [OUTLINED_FUNCTION_15() setName:?];
    [self addNode:v11 error:&v21];
    if (v21)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v19, v20, v21, v22, v23, v24, v25);
      return v10;
    }

    [objc_msgSend(self[9] "metadataOutputsByCategory")];
    input = [(BWNode *)v11 input];
    OUTLINED_FUNCTION_93_1(count, v13, v14, input);
  }

  v15 = [self[65] objectForKeyedSubscript:a2];
  if (output)
  {
    output = [v15 output];
  }

  else
  {
    output = [v15 addExtendedOutput];
  }

  v10 = output;
  [(BWNodeOutput *)output setName:graph];
  return v10;
}

- (id)setMotionToWakeTargetFrameRate:(id *)result
{
  if (result)
  {
    return [result[9] setMotionToWakeTargetFrameRate:?];
  }

  return result;
}

- (id)setObjectDetectionTargetFrameRate:(id *)result
{
  if (result)
  {
    return [result[9] setObjectDetectionTargetFrameRate:?];
  }

  return result;
}

- (double)trueVideoCaptureAdditionalZoomFactorForPhotoGraphVideoZoomFactor:(uint64_t)factor
{
  if (!factor)
  {
    return 0.0;
  }

  v4 = *(factor + 48);
  v5 = *(factor + 44);
  objc_opt_self();
  if (v4 == 1)
  {
    result = 1.18;
  }

  else if (v4 == 2)
  {
    result = dbl_1AD055E20[a2 > 1.1];
    if (v5 != 7)
    {
      result = 1.1;
    }
  }

  else
  {
    result = 1.0;
  }

  v7 = *(factor + 48);
  if (v7 == 2)
  {
    if (*(factor + 44) == 7)
    {
      return result * 1.02;
    }
  }

  else if (v7 == 1)
  {
    return result / 1.04761905;
  }

  return result;
}

- (float)trueVideoTransitionPreviousPhotoGraphZoomFactor
{
  result = 0.0;
  if (self)
  {
    v2 = *(self + 56);
    if (v2)
    {
      return *(v2 + 340);
    }
  }

  return result;
}

- (id)semanticStyleSceneObserver
{
  if (result)
  {
    allValues = [result[71] allValues];

    return [allValues firstObject];
  }

  return result;
}

- (void)startIncrementalPrefetchingOfSourcePoolsIfNecessary
{
  if (result)
  {
    OUTLINED_FUNCTION_72_3();
    v3 = *(v2 + 64);
    result = OUTLINED_FUNCTION_57(v2, v4, v5, v6, v7, v8, v9, v10, v21);
    if (result)
    {
      OUTLINED_FUNCTION_74_4();
      do
      {
        v11 = 0;
        do
        {
          OUTLINED_FUNCTION_76_3();
          if (!v12)
          {
            objc_enumerationMutation(v3);
          }

          startIncrementalPrefetchingOfSourcePoolsIfNecessary = [*(v23 + 8 * v11) startIncrementalPrefetchingOfSourcePoolsIfNecessary];
          v11 = v11 + 1;
        }

        while (v1 != v11);
        result = OUTLINED_FUNCTION_57(startIncrementalPrefetchingOfSourcePoolsIfNecessary, v14, v15, v16, v17, v18, v19, v20, v22);
        v1 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)setFaceFilteringDelegate:(void *)result
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_80();
  v4 = *(v3 + 80);
  if (v4)
  {
    if (*(v2 + 72))
    {
      [v4 setDetectedFacesFilterDelegate:v1];
    }

LABEL_7:
    result = *(v2 + 72);
    if (!result || !*(v2 + 88))
    {
      return result;
    }

    goto LABEL_9;
  }

  if (*(v2 + 88))
  {
    goto LABEL_7;
  }

  result = *(v2 + 72);
LABEL_9:

  return [result setDetectedFacesFilterDelegate:v1];
}

- (id)setCinematicVideoFocusDetectionsProvider:(id *)result
{
  if (result)
  {
    return [result[13] setCinematicVideoFocusDetectionsProvider:a2];
  }

  return result;
}

- (void)newConfigurationRequiresStreamRestart:tnrConfigurationChanged:newFormatIndexByPortTypeOut:
{
  OUTLINED_FUNCTION_60();
  v5 = v4;
  if (!v0)
  {
    goto LABEL_25;
  }

  v6 = v3;
  v7 = v2;
  v8 = v1;
  v9 = v0;
  if (v1)
  {
    v10 = *(v1 + 176);
    v11 = *(v1 + 208);
    v182 = *(v1 + 216);
    v181 = *(v1 + 8);
    v12 = *(v1 + 130);
  }

  else
  {
    v181 = 0;
    v182 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  [v0 sourceID];
  [v10 sourceID];
  if (![OUTLINED_FUNCTION_17() isEqual:?])
  {
    goto LABEL_25;
  }

  if (FigCapturePlatformIdentifier() < 4)
  {
    goto LABEL_25;
  }

  sourceDeviceType = [v10 sourceDeviceType];
  if (sourceDeviceType > 0x14 || ((1 << sourceDeviceType) & 0x1E7FFC) == 0 || [v10 sourceDeviceType] == 10 && FigCapturePlatformIdentifier() < 10)
  {
    goto LABEL_25;
  }

  v184[0] = 0;
  Attribute = FigCaptureSourceGetAttribute([v10 source], @"DepthDataDeliveryConfigurations", v184);
  if (v184[0])
  {
    if ([OUTLINED_FUNCTION_16_24() depthDataDeliveryEnabled])
    {
      goto LABEL_25;
    }

    LOBYTE(v15) = 0;
LABEL_16:
    if ([v10 depthDataDeliveryEnabled] && (v15 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_18;
  }

  v15 = [objc_msgSend(Attribute objectForKeyedSubscript:{@"FastModeSwitchingSupported", "BOOLValue"}];
  if (([OUTLINED_FUNCTION_16_24() depthDataDeliveryEnabled] & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!v15)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (![OUTLINED_FUNCTION_16_24() synchronizedStreamsGroup] || (!v8 ? (v16 = 0) : (v16 = *(v8 + 147)), ((v16 ^ objc_msgSend(OUTLINED_FUNCTION_16_24(), "midFrameSynchronizationEnabled")) & 1) == 0 && ((v17 = objc_msgSend(objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_16_24(), "synchronizedStreamsGroup"), "syncGroup"), "synchronizationMaster"), v18 = OUTLINED_FUNCTION_16_24(), !v8) ? (v19 = 0) : (v19 = *(v8 + 147)), v17 == objc_msgSend(objc_msgSend(v18, "synchronizationPrimaryForMidFrameSynchronizationEnabled:", v19 & 1), "stream"))))
  {
    bravoShiftMitigationEnabled = [v10 bravoShiftMitigationEnabled];
    cinematicFramingEnabled = [v10 cinematicFramingEnabled];
    deskCamEnabled = [v10 deskCamEnabled];
    manualCinematicFramingEnabled = 1;
    if ((cinematicFramingEnabled & 1) == 0 && (deskCamEnabled & 1) == 0)
    {
      manualCinematicFramingEnabled = [v10 manualCinematicFramingEnabled];
    }

    v177 = [v10 cinematicFramingEnabled] ? objc_msgSend(objc_msgSend(v10, "requiredFormat"), "isSmartCropSupported") : 0;
    v156 = v9;
    v141 = v6;
    requiredFormat = [v10 requiredFormat];
    v179 = manualCinematicFramingEnabled;
    if (v8)
    {
      v24 = *(v8 + 200);
      v25 = *(v8 + 224);
    }

    else
    {
      v24 = 0;
      v25 = 0;
    }

    shouldApplyCropFromVideoDataOutput = csp_shouldApplyCropFromVideoDataOutput(v8);
    v27 = csp_videoCaptureDimensionsFromConnectionConfigurations(requiredFormat, v182, v11, v24, v25, v179, shouldApplyCropFromVideoDataOutput, [v10 outputAspectRatio], v177);
    csp_shouldUseFESCompanionIndex(v10, v11, v27, v28, v29, v30, v31, v32, v114, v117, v120, v123, v126, v129, v132, v135, v5, v7, v141, v144, v147, v150, obj, v156, v159, v161, v163, v167, v170, v172);
    v180 = v33;
    csp_shouldUseDepthCompanionIndex(v10, v11, v27, v34, v35, v36, v37, v38, v115, v118, v121, v124, v127, v130, v133, v136, v138, v139, v142, v145, v148, v151, objb, v157, v160, v162, v164, v168);
    v175 = v39;
    v40 = v8 ? *(v8 + 24) : 0;
    v41 = v143;
    v174 = csp_shouldUseActionCameraCompanionIndex(v10, v11, v40 & 1);
    v42 = (v182 == 0) | csp_shouldCaptureStillsFromVideoStream(v10, [v10 requiredFormat], v180, v182 != 0);
    if (v12 & 1 | ((v42 & 1) == 0))
    {
      v43 = (v12 & 1) != 0 ? 4 : 1;
      v166 = v43;
      v178 = v8 ? *(v8 + 131) : 0;
    }

    else
    {
      v178 = 0;
      v166 = 0;
    }

    v44 = [objc_msgSend(v182 "irisSinkConfiguration")];
    if (v44 == [OUTLINED_FUNCTION_16_24() bravoConstituentPhotoDeliveryEnabled])
    {
      v45 = [objc_msgSend(OUTLINED_FUNCTION_16_24() "captureStreams")];
      isBravoVariant = [OUTLINED_FUNCTION_16_24() isBravoVariant];
      if (v8)
      {
        v47 = *(v8 + 143);
        v48 = *(v8 + 144);
      }

      else
      {
        OUTLINED_FUNCTION_130_1();
      }

      if ((isBravoVariant & (v47 | v12 & v48)) != 0)
      {
        v49 = 2;
      }

      else
      {
        v49 = 1;
      }

      if (!v44)
      {
        v45 = v49;
      }

      if ([OUTLINED_FUNCTION_16_24() numberOfActiveTimeMachines] == v45)
      {
        v50 = v8 ? *(v8 + 216) : 0;
        v51 = [objc_msgSend(v50 "irisSinkConfiguration")];
        if (v51 == [OUTLINED_FUNCTION_16_24() ultraHighResolutionZeroShutterLagSupportEnabled])
        {
          if (v8)
          {
            v165 = *(v8 + 131);
          }

          else
          {
            v165 = 0;
          }

          if ([objc_msgSend(v10 "requiredFormat")])
          {
            BWColorSpaceIsHDR([v10 colorSpace]);
          }

          if (v8)
          {
            v52 = *(v8 + 136) != 0.0;
          }

          else
          {
            v52 = 0;
          }

          if ([OUTLINED_FUNCTION_16_24() overCaptureEnabled])
          {
            allocateResourcesCompatibleWithOverCapture = 1;
          }

          else
          {
            allocateResourcesCompatibleWithOverCapture = [OUTLINED_FUNCTION_16_24() allocateResourcesCompatibleWithOverCapture];
          }

          if (v8)
          {
            v54 = v52;
          }

          else
          {
            v54 = 1;
          }

          if ((v54 & 1) == 0)
          {
            v52 = *(v8 + 140);
          }

          if (allocateResourcesCompatibleWithOverCapture == v52)
          {
            v55 = ([OUTLINED_FUNCTION_16_24() digitalFlashEnabled] & 1) != 0 ? 1 : objc_msgSend(OUTLINED_FUNCTION_16_24(), "digitalFlashMetadataEnabled");
            v56 = v8 && (*(v8 + 141) & 1) != 0 ? 1 : [objc_msgSend(v182 "irisSinkConfiguration")];
            if (v55 == v56)
            {
              v57 = [objc_msgSend(*(v158 + 72) "configuration")];
              if (v8)
              {
                if (v57 != *(v8 + 122))
                {
                  goto LABEL_25;
                }

                timeOfFlightProjectorMode = [OUTLINED_FUNCTION_16_24() timeOfFlightProjectorMode];
                v59 = *(v8 + 256);
              }

              else
              {
                if (v57)
                {
                  goto LABEL_25;
                }

                timeOfFlightProjectorMode = [*(v158 + 456) timeOfFlightProjectorMode];
                v59 = 0;
                v41 = v143;
              }

              if (timeOfFlightProjectorMode == csp_projectorModeFromPointCloudDataConnectionConfigurations(v59))
              {
                lockedFrameRate = [v10 lockedFrameRate];
                IsValidRational = FigCaptureFrameRateIsValidRational(lockedFrameRate, v61);
                if (!IsValidRational)
                {
                  v63 = !IsValidRational;
                  [v10 lockedFrameRate];
                  v64 = [objc_msgSend(OUTLINED_FUNCTION_16_24() "captureStream")];
                  if ((OUTLINED_FUNCTION_95_5(v64, v65) & v63 & 1) == 0)
                  {
                    externalSyncFrameRate = [v10 externalSyncFrameRate];
                    if (!FigCaptureFrameRateIsValidRational(externalSyncFrameRate, v67))
                    {
                      [v10 externalSyncFrameRate];
                      v68 = [objc_msgSend(OUTLINED_FUNCTION_16_24() "captureStream")];
                      if ((OUTLINED_FUNCTION_95_5(v68, v69) & v63 & 1) == 0)
                      {
                        temporalNoiseReductionBand0Disabled = [OUTLINED_FUNCTION_16_24() temporalNoiseReductionBand0Disabled];
                        v71 = [objc_msgSend(v10 "requiredFormat")];
                        temporalNoiseReductionRawEnabled = [OUTLINED_FUNCTION_16_24() temporalNoiseReductionRawEnabled];
                        v73 = temporalNoiseReductionRawEnabled ^ [objc_msgSend(v10 "requiredFormat")];
                        if (v8)
                        {
                          v173 = *(v8 + 133);
                          if ((v42 & v173) == 1)
                          {
                            v173 = *(v8 + 142);
                          }
                        }

                        else
                        {
                          v173 = 0;
                        }

                        v74 = v73 | temporalNoiseReductionBand0Disabled ^ v71;
                        dictionary = [MEMORY[0x1E695DF90] dictionary];
                        OUTLINED_FUNCTION_73_2();
                        OUTLINED_FUNCTION_117_2();
                        obja = v75;
                        v171 = [v75 countByEnumeratingWithState:? objects:? count:?];
                        if (v171)
                        {
                          v152 = v74 & 1;
                          OUTLINED_FUNCTION_23_14();
                          v169 = v76;
                          v146 = *off_1E798C998;
LABEL_91:
                          v77 = 0;
                          while (1)
                          {
                            OUTLINED_FUNCTION_23_14();
                            if (v78 != v169)
                            {
                              objc_enumerationMutation(obja);
                            }

                            v79 = *(v183 + 8 * v77);
                            [v10 source];
                            [v10 requiredFormat];
                            [OUTLINED_FUNCTION_45_1() portType];
                            v80 = OUTLINED_FUNCTION_3_19();
                            v84 = FigVideoCaptureSourceCopyUnderlyingSourceFormatForFormatAndPortType(v80, v81, v82, v83);
                            if (v184[0])
                            {
                              break;
                            }

                            v85 = v84;
                            if (!v84)
                            {
                              break;
                            }

                            [objc_msgSend(v79 "captureStream")];
                            v86 = OUTLINED_FUNCTION_114_2();
                            if (v8)
                            {
                              shouldUseFullBinSIFRCompanionIndex = csp_shouldUseFullBinSIFRCompanionIndex(v86, v87, v88, v89, v90);
                              v92 = *(v8 + 147);
                              v93 = *(v8 + 354);
                            }

                            else
                            {
                              shouldUseFullBinSIFRCompanionIndex = csp_shouldUseFullBinSIFRCompanionIndex(v86, v87, v88, v89, 0);
                              v92 = 0;
                              v93 = 0;
                            }

                            sensorHDREnabled = [v10 sensorHDREnabled];
                            highlightRecoveryEnabled = [v10 highlightRecoveryEnabled];
                            [v10 geometricDistortionCorrectionEnabled];
                            if (v8)
                            {
                              v96 = *(v8 + 36) > 0.0;
                            }

                            else
                            {
                              v96 = 0;
                            }

                            v97 = csp_formatIndex(v85, v180, v175, 0, v174, shouldUseFullBinSIFRCompanionIndex, v92 & 1, v93 & 1, bravoShiftMitigationEnabled, sensorHDREnabled, highlightRecoveryEnabled, v96, 0, 0, 0, 0, 0, 0);
                            if ([objc_msgSend(v79 "captureStream")] && objc_msgSend(v85, "isFastSwitchingConfigurationRequired") && objc_msgSend(objc_msgSend(v79, "configuration"), "fastSwitchingNondisruptiveFormatIndices"))
                            {
                              if (v97 != [objc_msgSend(v79 "configuration")])
                              {
                                [objc_msgSend(v79 "captureStream")];
                                v98 = [sensorHDREnabled objectAtIndexedSubscript:{objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_45_1(), "configuration"), "formatIndex")}];
                                [v98 objectForKeyedSubscript:v146];
                                [MEMORY[0x1E696AD98] numberWithInt:v97];
                                if (![OUTLINED_FUNCTION_24_1() containsObject:?])
                                {
                                  goto LABEL_25;
                                }

                                v99 = csp_formatUsesFES(v98);
                                if (v99 != csp_formatUsesFES([objc_msgSend(objc_msgSend(v79 "captureStream")]))
                                {
                                  goto LABEL_25;
                                }

                                v100 = v152;
                                if ((v152 & 1) == 0)
                                {
                                  v100 = 1;
                                }

                                v152 = v100;
                                [MEMORY[0x1E696AD98] numberWithInt:v97];
                                [dictionary setObject:v99 forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_45_1(), "portType")}];
                              }
                            }

                            else
                            {
                              [objc_msgSend(*(v158 + 72) "captureStream")];
                              v102 = v101;
                              [v10 maxFrameRateClientOverride];
                              if (v102 != v103 || v97 != [objc_msgSend(v79 "configuration")])
                              {
                                goto LABEL_25;
                              }
                            }

                            if (v181 != [objc_msgSend(v79 "configuration")] || v173 != objc_msgSend(objc_msgSend(v79, "configuration"), "sensorRawStillImageOutputEnabled"))
                            {
                              goto LABEL_25;
                            }

                            if ([objc_msgSend(v79 "configuration")] && (objc_msgSend(objc_msgSend(v79, "configuration"), "usesFirmwareStillImageOutput") & 1) != 0 || objc_msgSend(objc_msgSend(v79, "configuration"), "forceFirmwareStillImageOutputEnabled"))
                            {
                              if (v166 != [objc_msgSend(v79 "configuration")])
                              {
                                goto LABEL_25;
                              }

                              v104 = [objc_msgSend(v79 "configuration")];
                              v105 = 1;
                            }

                            else
                            {
                              if (v166)
                              {
                                goto LABEL_25;
                              }

                              v105 = 0;
                              v104 = 0;
                            }

                            if (v104 != (v178 & 1) || ([objc_msgSend(v79 "configuration")] & 1) != 0)
                            {
                              goto LABEL_25;
                            }

                            v106 = v105 ? [objc_msgSend(v79 "configuration")] : 0;
                            if (v165 != v106 || ([objc_msgSend(v79 "captureStream")] & 1) != 0)
                            {
                              goto LABEL_25;
                            }

                            v107 = [objc_msgSend(v79 "configuration")];
                            if (v8)
                            {
                              if (v107 != *(v8 + 127))
                              {
                                goto LABEL_25;
                              }
                            }

                            else if (v107)
                            {
                              goto LABEL_25;
                            }

                            v108 = [objc_msgSend(v79 "configuration")];
                            if (v8)
                            {
                              if (v108 != *(v8 + 272))
                              {
                                goto LABEL_25;
                              }
                            }

                            else if (v108)
                            {
                              goto LABEL_25;
                            }

                            if (FigCaptureSourceGetBoolAttribute([v10 source], @"GeometricDistortionCorrectionExpandsImageDimensions", 0))
                            {
                              v109 = [objc_msgSend(v79 "configuration")];
                              if (v8)
                              {
                                if (v109 != *(v8 + 125))
                                {
                                  goto LABEL_25;
                                }
                              }

                              else if (v109)
                              {
                                goto LABEL_25;
                              }

                              v110 = [objc_msgSend(v79 "configuration")];
                              if (v8)
                              {
                                if (v110 != *(v8 + 124))
                                {
                                  goto LABEL_25;
                                }
                              }

                              else if (v110)
                              {
                                goto LABEL_25;
                              }

                              v111 = [objc_msgSend(v79 "configuration")];
                              if (v8)
                              {
                                if (v111 != *(v8 + 123))
                                {
                                  goto LABEL_25;
                                }
                              }

                              else if (v111)
                              {
                                goto LABEL_25;
                              }
                            }

                            if ([objc_msgSend(v79 "configuration")])
                            {
                              goto LABEL_25;
                            }

                            if (v171 == ++v77)
                            {
                              OUTLINED_FUNCTION_117_2();
                              v112 = [obja countByEnumeratingWithState:? objects:? count:?];
                              v171 = v112;
                              if (!v112)
                              {
                                v41 = v143;
                                v74 = v152;
                                goto LABEL_155;
                              }

                              goto LABEL_91;
                            }
                          }

                          OUTLINED_FUNCTION_0();
                          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v119, v122, v125, v128, v131, v134, v137);
                        }

                        else
                        {
LABEL_155:
                          if (!v140)
                          {
                            OUTLINED_FUNCTION_0();
                            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v116, v119, v122, v125, v128, v131, v134, v137);
                          }

                          *v140 = v74 & 1;
                          if ([dictionary count])
                          {
                            v113 = dictionary;
                          }

                          else
                          {
                            v113 = 0;
                          }

                          *v41 = v113;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_128_0();
}

- (void)nondisruptiveSwitchingFormatIndicesByPortTypeForConfiguration:
{
  OUTLINED_FUNCTION_60();
  if (v1)
  {
    OUTLINED_FUNCTION_54();
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v2 = v0 ? *(v0 + 176) : 0;
    OUTLINED_FUNCTION_71_2();
    OUTLINED_FUNCTION_118_2();
    v48 = OUTLINED_FUNCTION_145(v3, v4, v5, v6);
    if (v48)
    {
      OUTLINED_FUNCTION_23_14();
      v45 = v7;
      v8 = *off_1E798C960;
      v52 = *off_1E798C958;
      v43 = *(MEMORY[0x1E695F058] + 16);
      v44 = *MEMORY[0x1E695F058];
      v46 = v2;
      v47 = v0;
      do
      {
        v9 = 0;
        do
        {
          OUTLINED_FUNCTION_23_14();
          if (v10 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(v56 + 8 * v9);
          v12 = [objc_msgSend(v11 "configuration")];
          v51 = v11;
          v13 = [objc_msgSend(v11 "captureStream")];
          if (v0 && *(v0 + 129) == 1)
          {
            [objc_msgSend(*(v0 + 216) "irisSinkConfiguration")];
          }

          [objc_msgSend(v2 "requiredFormat")];
          csp_activeStreamingNondisruptiveSwitchingFormatIndices();
          v15 = v14;
          v54[4] = v44;
          *v55 = v43;
          v16 = [v13 objectAtIndexedSubscript:v12];
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            v17 = v55[0];
          }

          else
          {
            v17 = 0.0;
          }

          v49 = v9;
          if ([objc_msgSend(v16 objectForKeyedSubscript:{v8), "BOOLValue"}])
          {
            v18 = [objc_msgSend(v16 objectForKeyedSubscript:{v52), "intValue"}];
          }

          else
          {
            v18 = 0;
          }

          v19 = [objc_msgSend(v2 "requiredFormat")];
          if (v19 <= 0 || v18 <= 0)
          {
            v21 = v18;
          }

          else
          {
            v21 = v19;
          }

          v22 = csp_formatUsesFES(v16);
          v23 = v22;
          memset(v54, 0, 64);
          v25 = OUTLINED_FUNCTION_52(v22, v24, v54, v53);
          if (v25)
          {
            v26 = v25;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                OUTLINED_FUNCTION_21_20();
                if (!v32)
                {
                  objc_enumerationMutation(v15);
                }

                v28 = *(*(&v54[0] + 1) + 8 * i);
                v29 = [v13 objectAtIndexedSubscript:{objc_msgSend(v28, "intValue")}];
                CGRectIfPresent = [objc_msgSend(v29 objectForKeyedSubscript:{v8), "BOOLValue"}];
                if (CGRectIfPresent)
                {
                  CGRectIfPresent = [objc_msgSend(v29 objectForKeyedSubscript:{v52), "intValue"}];
                }

                if (v21 == CGRectIfPresent)
                {
                  CGRectIfPresent = csp_formatUsesFES(v29);
                  if (v23 == CGRectIfPresent)
                  {
                    CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
                    if (CGRectIfPresent)
                    {
                      v32 = v55[0] == v17;
                    }

                    else
                    {
                      v32 = 0;
                    }

                    if (v32)
                    {
                      CGRectIfPresent = [dictionary setObject:v28 forKeyedSubscript:{objc_msgSend(v51, "portType", v55[0])}];
                    }
                  }
                }
              }

              v26 = OUTLINED_FUNCTION_52(CGRectIfPresent, v31, v54, v53);
            }

            while (v26);
          }

          ++v9;
          v2 = v46;
          v0 = v47;
        }

        while (v49 + 1 != v48);
        OUTLINED_FUNCTION_118_2();
        v48 = OUTLINED_FUNCTION_94_1(v33, v34, v35, v36, v37, v38, v39, v40, v41, obj);
      }

      while (v48);
    }
  }

  OUTLINED_FUNCTION_128_0();
}

- (void)setBlackenFramesForContinuityDisplayConnected:(void *)result
{
  if (result)
  {
    v4 = OUTLINED_FUNCTION_36_13();
    captureStreams = [*(v5 + 456) captureStreams];
    result = OUTLINED_FUNCTION_134_2(captureStreams, v7, v8, v9, v10, v11, v12, v13, v22);
    if (result)
    {
      OUTLINED_FUNCTION_39_12();
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v14)
        {
          objc_enumerationMutation(v2);
        }

        [OUTLINED_FUNCTION_121_0() setBlackenFramesForContinuityDisplayConnected:a2];
        OUTLINED_FUNCTION_120_0();
        if (v14)
        {
          result = OUTLINED_FUNCTION_13_26(v15, v16, v24, v17, v18, v19, v20, v21, v23);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (void)setKeepISPStreamingWhenStopping:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_36_13();
    v4 = *(v3 + 64);
    result = OUTLINED_FUNCTION_13_26(v3, v5, v21, v6, v7, v8, v9, v10, v19);
    if (result)
    {
      OUTLINED_FUNCTION_39_12();
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v11)
        {
          objc_enumerationMutation(v4);
        }

        [OUTLINED_FUNCTION_121_0() setKeepISPStreamingWhenStopping:a2];
        OUTLINED_FUNCTION_120_0();
        if (v11)
        {
          result = OUTLINED_FUNCTION_13_26(v12, v13, v21, v14, v15, v16, v17, v18, v20);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (id)setDisableTemporalNoiseReductionWhenStopping:(id *)result
{
  if (result)
  {
    return [result[57] setDisableTemporalNoiseReductionWhenStopping:a2];
  }

  return result;
}

- (void)setCinematicFramingControlsWhileRunning:(float)running panningAngleX:(float)x panningAngleY:(float)y videoZoomFactor:(double)factor manualFramingDefaultZoomFactor:
{
  if (self)
  {
    v10 = a2;
    v68[0] = 0;
    [*(self + 456) setCinematicFramingEnabled:a2];
    if ([*(self + 472) isCinematicFramingProvidedBySource])
    {
LABEL_22:

      return;
    }

    [OUTLINED_FUNCTION_46_11() setManualCinematicFramingEnabled:v10 ^ 1u];
    [objc_msgSend(OUTLINED_FUNCTION_46_11() "manualCinematicFramingDelegate")];
    v12 = *(self + 464);
    *&v13 = y;
    v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v15)
    {
      v15(v12, @"VideoZoomFactor", v14);
    }

    [objc_msgSend(OUTLINED_FUNCTION_46_11() "manualCinematicFramingDelegate")];
    CenterStageFramingMode = csp_getCenterStageFramingMode(*(self + 464));
    [objc_msgSend(OUTLINED_FUNCTION_46_11() "subjectSelectionDelegate")];
    CinematicFramingFieldOfViewRestrictedToWide = csp_getCinematicFramingFieldOfViewRestrictedToWide(*(self + 464));
    csp_getCenterStageRectOfInterest(*(self + 464));
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v26 = *(self + 464);
    v27 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    v50 = v21;
    v51 = v23;
    v49 = v19;
    if (v27 && (v27(v26, @"AttributesDictionary", *MEMORY[0x1E695E480], v68), v68[0]))
    {
      v28 = v25;
      factorCopy2 = factor;
      yCopy2 = y;
      v31 = [v68[0] objectForKeyedSubscript:@"CinematicFramingVirtualCameraConfiguration"];
      v32 = v31;
      if (v31)
      {
        runningCopy3 = running;
        xCopy3 = x;
        v48 = [objc_msgSend(v31 objectForKeyedSubscript:{@"FishEyeEffectEnabled", "BOOLValue"}];
        v35 = 0;
        goto LABEL_11;
      }

      runningCopy3 = running;
      xCopy3 = x;
    }

    else
    {
      v28 = v25;
      factorCopy2 = factor;
      yCopy2 = y;
      runningCopy3 = running;
      xCopy3 = x;
      v32 = 0;
    }

    v35 = 1;
    v48 = 1;
LABEL_11:
    v36 = [v32 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleX"];
    v37 = [v32 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleY"];
    v38 = [v32 objectForKeyedSubscript:@"DefaultVirtualCameraRotationAngleZ"];
    v39 = 0;
    v40 = 0;
    if (v36)
    {
      [v36 floatValue];
      v40 = v41;
    }

    if (v37)
    {
      [v37 floatValue];
      v39 = v42;
    }

    if (v38)
    {
      [v38 floatValue];
      v44 = v43;
      if (v35)
      {
LABEL_18:
        v46 = OUTLINED_FUNCTION_46_11();
        if (v10)
        {
          manualCinematicFramingDelegate = [v46 manualCinematicFramingDelegate];
        }

        else
        {
          manualCinematicFramingDelegate = [v46 centerStageDelegate];
        }

        v52[0] = v10;
        v52[1] = v48;
        v52[2] = CinematicFramingFieldOfViewRestrictedToWide;
        v53 = 0;
        v54 = 0;
        v55 = v49;
        v56 = v50;
        v57 = v51;
        v58 = v28;
        v59 = CenterStageFramingMode;
        v60 = yCopy2;
        v61 = runningCopy3;
        v62 = xCopy3;
        v63 = factorCopy2;
        v64 = v40;
        v65 = v39;
        v66 = v44;
        v67 = 0;
        [manualCinematicFramingDelegate setCinematicFramingControls:v52];
        goto LABEL_22;
      }
    }

    else
    {
      v44 = 0;
      if (v35)
      {
        goto LABEL_18;
      }
    }

    [objc_msgSend(v32 objectForKeyedSubscript:{@"ManualFramingDefaultZoomFactor", "floatValue"}];
    factorCopy2 = v45;
    goto LABEL_18;
  }
}

- (void)setBackgroundBlurNodePropertiesWhileRunning:(uint64_t)running studioLightingEnabled:reactionEffectsEnabled:backgroundReplacementEnabled:
{
  if (running)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [*(v9 + 456) setBackgroundBlurEnabled:v7];
    [OUTLINED_FUNCTION_25_13() setStudioLightingEnabled:v6];
    [OUTLINED_FUNCTION_25_13() setReactionEffectsEnabled:v4];
    [OUTLINED_FUNCTION_25_13() setBackgroundReplacementEnabled:v2];
    [*(v10 + 160) allValues];
    OUTLINED_FUNCTION_118_2();
    v47 = OUTLINED_FUNCTION_145(v11, v12, v13, v14);
    if (v47)
    {
      OUTLINED_FUNCTION_23_14();
      v46 = v15;
      v45 = v4 | v2 | v6 | v8;
      v16 = v8;
      if (v6)
      {
        v16 = v8 | 2;
      }

      if (v4)
      {
        v16 |= 0x10uLL;
      }

      if (v2)
      {
        v16 |= 0x40uLL;
      }

      v44 = v16;
      do
      {
        v17 = 0;
        do
        {
          OUTLINED_FUNCTION_23_14();
          if (v18 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v48 = v17;
          v19 = *(v57 + 8 * v17);
          [v19 setEffectBypassed:v45 ^ 1u];
          [v19 setActiveBlurEffect:v44];
          memset(v56, 0, 64);
          captureStreams = [OUTLINED_FUNCTION_25_13() captureStreams];
          v20 = [captureStreams countByEnumeratingWithState:v56 objects:v55 count:16];
          if (v20)
          {
            v21 = v20;
            do
            {
              v22 = 0;
              v49 = v21;
              do
              {
                OUTLINED_FUNCTION_10_18();
                if (!v23)
                {
                  objc_enumerationMutation(captureStreams);
                }

                v24 = *(*(&v56[0] + 1) + 8 * v22);
                if ([objc_msgSend(v24 "stream")])
                {
                  v54 = 0;
                  v52 = 0u;
                  v53 = 0u;
                  LOBYTE(v52) = [v24 pixelFormatIsTenBit];
                  [v24 maximumSupportedFrameRate];
                  DWORD1(v52) = v25;
                  BYTE8(v52) = [v24 highlightRecoveryEnabled];
                  HIDWORD(v52) = [v24 sensorDimensions];
                  LODWORD(v53) = [v24 sensorDimensions] >> 32;
                  DWORD1(v53) = [v24 videoCaptureDimensions];
                  DWORD2(v53) = [v24 videoCaptureDimensions] >> 32;
                  BYTE12(v53) = [OUTLINED_FUNCTION_25_13() backgroundBlurEnabled];
                  BYTE13(v53) = [OUTLINED_FUNCTION_25_13() studioLightingEnabled];
                  BYTE14(v53) = [OUTLINED_FUNCTION_25_13() reactionEffectsEnabled];
                  HIBYTE(v53) = [OUTLINED_FUNCTION_25_13() backgroundReplacementEnabled];
                  LOBYTE(v54) = [OUTLINED_FUNCTION_25_13() cinematicFramingEnabled];
                  if (v24)
                  {
                    objc_msgSend_clientAuditToken(v24);
                  }

                  else
                  {
                    memset(v51, 0, sizeof(v51));
                  }

                  PIDFromAuditToken = FigCaptureGetPIDFromAuditToken(v51);
                  applicationID = [OUTLINED_FUNCTION_25_13() applicationID];
                  v28 = *(v10 + 44);
                  portType = [v24 portType];
                  date = [MEMORY[0x1E695DF00] date];
                  [v24 averageFrameRate];
                  v32 = v31;
                  [v24 continuityCameraIsWired];
                  isDeskCamActive = [OUTLINED_FUNCTION_84_4() isDeskCamActive];
                  FigCaptureLogCameraStreamingPowerEvent(PIDFromAuditToken, applicationID, v28, 1, portType, date, &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn, isDeskCamActive, v32, &v52);
                  v21 = v49;
                }

                ++v22;
              }

              while (v21 != v22);
              v21 = [captureStreams countByEnumeratingWithState:v56 objects:v55 count:16];
            }

            while (v21);
          }

          v17 = v48 + 1;
        }

        while (v48 + 1 != v47);
        OUTLINED_FUNCTION_118_2();
        v47 = OUTLINED_FUNCTION_94_1(v34, v35, v36, v37, v38, v39, v40, v41, v42, obj);
      }

      while (v47);
    }

    OUTLINED_FUNCTION_128_0();
  }
}

- (void)setStreamsSuspendedBySourceDeviceType:(uint64_t)type
{
  if (type)
  {
    OUTLINED_FUNCTION_84();
    OUTLINED_FUNCTION_80();
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(v3 + 64);
    v25 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v25)
    {
      v24 = *v30;
      v23 = v2;
      v21 = *off_1E798A0E8;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v30 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v29 + 1) + 8 * i);
          portType = [v5 portType];
          isEqualToString = objc_msgSend_isEqualToString_(portType);
          v9 = &unk_1F2248A18;
          if ((isEqualToString & 1) == 0)
          {
            isEqualToString = objc_msgSend_isEqualToString_(portType);
            v9 = &unk_1F2248A30;
            if ((isEqualToString & 1) == 0)
            {
              isEqualToString = objc_msgSend_isEqualToString_(portType);
              v9 = &unk_1F2248A48;
              if ((isEqualToString & 1) == 0)
              {
                isEqualToString = objc_msgSend_isEqualToString_(portType);
                v9 = &unk_1F2248A60;
                if ((isEqualToString & 1) == 0)
                {
                  isEqualToString = objc_msgSend_isEqualToString_(portType);
                  v9 = &unk_1F2248A78;
                  if ((isEqualToString & 1) == 0)
                  {
                    isEqualToString = objc_msgSend_isEqualToString_(portType);
                    v9 = &unk_1F2248A90;
                    if (!isEqualToString)
                    {
                      continue;
                    }
                  }
                }
              }
            }
          }

          memset(v27, 0, sizeof(v27));
          v10 = OUTLINED_FUNCTION_21_10(isEqualToString, v8, v27, v26);
          if (v10)
          {
            v11 = v10;
            v12 = 1;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                OUTLINED_FUNCTION_21_20();
                if (!v14)
                {
                  objc_enumerationMutation(v9);
                }

                intValue = [*(*(&v27[0] + 1) + 8 * j) intValue];
                [MEMORY[0x1E696AD98] numberWithInt:intValue];
                v16 = [OUTLINED_FUNCTION_17() objectForKeyedSubscript:?];
                if (v16)
                {
                  [MEMORY[0x1E696AD98] numberWithInt:intValue];
                  v16 = [objc_msgSend(OUTLINED_FUNCTION_17() "objectForKeyedSubscript:"BOOLValue"")];
                  v12 &= v16;
                }
              }

              v11 = OUTLINED_FUNCTION_21_10(v16, v17, v27, v26);
            }

            while (v11);
          }

          else
          {
            v12 = 1;
          }

          captureStream = [v5 captureStream];
          if ([captureStream suspendingSupported])
          {
            [captureStream setSuspended:v12 & 1];
          }

          v19 = [objc_msgSend(v1 objectForKeyedSubscript:{&unk_1F2244818), "BOOLValue"}];
          if (((objc_msgSend_isEqualToString_([*(v23 + 456) applicationID]) & 1) != 0 || objc_msgSend_isEqualToString_(objc_msgSend(*(v23 + 456), "applicationID"))) && objc_msgSend_isEqualToString_(objc_msgSend(v5, "portType")) && *(v23 + 544))
          {
            [captureStream setDeskCamActive:v19 ^ 1];
          }

          v20 = *(v23 + 544);
          if (v20)
          {
            [objc_msgSend(objc_msgSend(objc_msgSend(v20 "input")];
            [*(v23 + 456) setDeskCamActive:v19 ^ 1];
            if ([v1 objectForKeyedSubscript:&unk_1F22447A0])
            {
              [*(v23 + 456) setUltraWideActive:{objc_msgSend(objc_msgSend(v1, "objectForKeyedSubscript:", &unk_1F22447A0), "BOOLValue") ^ 1}];
            }
          }
        }

        v25 = [obj countByEnumeratingWithState:&v29 objects:v28 count:16];
      }

      while (v25);
    }

    OUTLINED_FUNCTION_81();
  }
}

- (BOOL)requiresMasterClock
{
  if (result)
  {
    return [*(result + 120) count] != 0;
  }

  return result;
}

- (void)setMasterClock:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_36_13();
    v4 = *(v3 + 120);
    result = OUTLINED_FUNCTION_13_26(v3, v5, v21, v6, v7, v8, v9, v10, v19);
    if (result)
    {
      OUTLINED_FUNCTION_39_12();
      while (1)
      {
        OUTLINED_FUNCTION_49_7();
        if (!v11)
        {
          objc_enumerationMutation(v4);
        }

        [OUTLINED_FUNCTION_121_0() setMasterClock:a2];
        OUTLINED_FUNCTION_120_0();
        if (v11)
        {
          result = OUTLINED_FUNCTION_13_26(v12, v13, v21, v14, v15, v16, v17, v18, v20);
          if (!result)
          {
            break;
          }
        }
      }
    }
  }

  return result;
}

- (id)clock
{
  if (result)
  {
    return [result[9] clock];
  }

  return result;
}

- (void)setPreviewShift:(double)shift previewScaleFactor:(double)factor forPortType:(float)type previewShiftAtBaseZoom:(double)zoom
{
  if (result)
  {
    v14 = OUTLINED_FUNCTION_1_13();
    v16 = *(v15 + 64);
    result = OUTLINED_FUNCTION_1_3(v15, v17, v18, v19, v20, v21, v22, v23, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74, v14);
    if (result)
    {
      OUTLINED_FUNCTION_37_9();
      while (1)
      {
        OUTLINED_FUNCTION_4_10();
        if (v32 != v8)
        {
          objc_enumerationMutation(v16);
        }

        v33 = [OUTLINED_FUNCTION_31_13(v24 v25];
        if (objc_msgSend_isEqualToString_(v33))
        {
          break;
        }

        OUTLINED_FUNCTION_51_11();
        if (v43)
        {
          result = OUTLINED_FUNCTION_1_3(v35, v36, v37, v38, v39, v40, v41, v42, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75);
          if (!result)
          {
            return result;
          }
        }
      }

      *&v34 = type;
      return [v7 setPreviewShift:shift previewScaleFactor:factor previewShiftAtBaseZoom:{v34, zoom, a7}];
    }
  }

  return result;
}

- (id)setVideoHDRImageStatisticsEnabled:(id *)result
{
  if (result)
  {
    if (*(result + 513) != a2)
    {
      *(result + 513) = a2;
      return [result[57] setVideoHDRImageStatisticsEnabled:a2];
    }
  }

  return result;
}

- (id)_addDepthFromInfraredSynchronizer:(void *)synchronizer previewOutputsBySourceDeviceType:(uint64_t)type pipelineConfiguration:(uint64_t)configuration graph:(uint64_t)graph sourceDeviceType:
{
  if (result)
  {
    v11 = result;
    v63[0] = 0;
    if (type)
    {
      v12 = *(type + 192);
      v13 = *(type + 200);
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }

    HIDWORD(v60) = [v12 previewDepthFilterRenderingEnabled];
    [MEMORY[0x1E696AD98] numberWithInt:graph];
    v14 = [OUTLINED_FUNCTION_28() objectForKeyedSubscript:?];
    [MEMORY[0x1E696AD98] numberWithInt:graph];
    v15 = [OUTLINED_FUNCTION_4() objectForKeyedSubscript:?];
    if (v14 | v15)
    {
      v23 = v15;
      v64 = 0u;
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      if (OUTLINED_FUNCTION_136_1(v15, v16, v17, v18, v19, v20, v21, v22, v45, v47, v49, v51, v53, v55, v57, v11, v60, v62.receiver, v62.super_class, v63[0]))
      {
        configurationCopy = configuration;
        v54 = v6;
        v56 = a2;
        synchronizerCopy = synchronizer;
        while (1)
        {
          OUTLINED_FUNCTION_21_20();
          if (!v35)
          {
            objc_enumerationMutation(v13);
          }

          v24 = **(&v64 + 1);
          sinkConfiguration = [**(&v64 + 1) sinkConfiguration];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [sinkConfiguration sinkType] == 11)
          {
            break;
          }

          OUTLINED_FUNCTION_131_2();
          if (v35 && !OUTLINED_FUNCTION_136_1(v26, v27, v28, v29, v30, v31, v32, v33, v46, v48, v50, configurationCopy, v54, v56, synchronizerCopy, v59, v61, v62.receiver, v62.super_class, v63[0]))
          {
            v34 = 1;
            goto LABEL_21;
          }
        }

        if (v24)
        {
          v35 = v23 == 0;
        }

        else
        {
          v35 = 1;
        }

        v34 = v35;
LABEL_21:
        a2 = v56;
        synchronizer = synchronizerCopy;
      }

      else
      {
        v34 = 1;
      }

      if (((v14 != 0) & v34) != 0)
      {
        v36 = v14;
      }

      else
      {
        v36 = v23;
      }

      v37 = [[BWDepthSynchronizerNode alloc] initForStreaming:1 separateDepthComponentsEnabled:0];
      [v37 setName:@"Source Depth Synchronizer"];
      v62.receiver = v59;
      v62.super_class = FigCaptureCameraSourcePipeline;
      if (objc_msgSendSuper2(&v62, sel_addNode_error_, v37, v63) & 1) != 0 && ([v37 imageInput], (objc_msgSend(OUTLINED_FUNCTION_67_5(), "connectOutput:toInput:pipelineStage:", v36)) && (objc_msgSend(v59[12], "depthOutput"), objc_msgSend(v37, "depthInput"), v38 = OUTLINED_FUNCTION_67_5(), (OUTLINED_FUNCTION_77_4(v38, v39, v40, v41)))
      {
        [v37 setDiscardsDegradedDepthBuffers:HIDWORD(v61) ^ 1u];
        output = [v37 output];
        v43 = [MEMORY[0x1E696AD98] numberWithInt:graph];
        if (v36 == v23)
        {
          synchronizerCopy2 = synchronizer;
        }

        else
        {
          synchronizerCopy2 = a2;
        }

        [synchronizerCopy2 setObject:output forKeyedSubscript:v43];
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

    result = v63[0];
    if (v63[0])
    {
      return [v63[0] code];
    }
  }

  return result;
}

- (uint64_t)_buildSemanticMasksOutputNetwork:(uint64_t)network pipelineConfiguration:(uint64_t)configuration graph:
{
  if (!self)
  {
    return 0;
  }

  [FigCaptureCameraSourcePipeline _insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:];
  v7 = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_0_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v7, v9, v10, v11, v12, v13, vars0, vars8);
  }

  else
  {
    *(self + 432) = [a2 copy];
  }

  return v7;
}

- (void)_buildVideoCaptureOutputNetwork:(uint64_t)network previewOutputsBySourceDeviceType:(uint64_t)type stillImageOutputsByPortType:(uint64_t)portType lightSourceMaskOutputsBySourceDeviceType:(uint64_t)deviceType keypointDescriptorDataOutputsBySourceDeviceType:(uint64_t)sourceDeviceType pipelineConfiguration:(uint64_t)configuration graph:(uint64_t)graph videoCaptureDimensions:(uint64_t)self0 numberOfSecondaryFramesToSkip:(uint64_t)self1 rtscProcessorsBySourceDeviceType:(uint64_t)self2 inferenceScheduler:(uint64_t)self3
{
  OUTLINED_FUNCTION_60();
  v573 = v30;
  v581 = v31;
  v565 = v32;
  v597 = v33;
  v817 = v34;
  if (!v26)
  {
    goto LABEL_73;
  }

  v35 = v29;
  v36 = v27;
  v37 = v26;
  v897[0] = 0;
  v896 = 0;
  v819 = v28;
  if (v28)
  {
    v38 = v28[22];
    v39 = v28[26];
    v589 = v28[28];
  }

  else
  {
    v39 = 0;
    v38 = 0;
    v589 = 0;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if (v39)
  {
    [array addObjectsFromArray:v39];
  }

  OUTLINED_FUNCTION_91_4();
  if (v42)
  {
    if (v819)
    {
      v43 = *(v819 + 200);
    }

    else
    {
      v43 = 0;
    }

    v44 = array;
  }

  else
  {
    if (v819)
    {
      v43 = *(v819 + 200);
    }

    else
    {
      v43 = 0;
    }

    v44 = array2;
  }

  [v44 addObjectsFromArray:v43];
  OUTLINED_FUNCTION_91_4();
  v45 = v819;
  if (v42)
  {
    if (v819)
    {
      v46 = *(v819 + 216);
    }

    else
    {
      v46 = 0;
    }

    [array addObject:v46];
    v45 = v819;
  }

  v806 = v35;
  v725 = array2;
  v733 = v38;
  v557 = v36;
  if (v45)
  {
    if (*(v45 + 354) == 1)
    {
      OUTLINED_FUNCTION_91_4();
      if (v42)
      {
        v47 = [BWFanOutNode alloc];
        v49 = OUTLINED_FUNCTION_48_12(v47, v48);
        [v49 setName:@"Video Preview/Capture Splitter"];
        [v817 objectForKeyedSubscript:&unk_1F2244770];
        v895.receiver = v37;
        v895.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v895, sel_addNode_error_, v49, &v896) & 1) == 0 || ([v49 input], v50 = OUTLINED_FUNCTION_24_0(), (OUTLINED_FUNCTION_100_3(v50, v51, v52, v53) & 1) == 0))
        {
          OUTLINED_FUNCTION_0_64();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          goto LABEL_70;
        }

        v54 = [objc_msgSend(v49 "outputs")];
        [v54 setName:@"Preview"];
        [v36 setObject:v54 forKeyedSubscript:&unk_1F2244770];
        v55 = [objc_msgSend(v49 "outputs")];
        [OUTLINED_FUNCTION_108_1(v55 v56];
        v45 = v819;
      }
    }

    if (![*(v45 + 232) count])
    {
      v66 = 0;
      OUTLINED_FUNCTION_62_6();
      goto LABEL_31;
    }

    v63 = *(v45 + 232);
  }

  else
  {
    [0 count];
    v63 = OUTLINED_FUNCTION_110_2();
    if (!v474)
    {
      v66 = 0;
      v67 = 0;
      OUTLINED_FUNCTION_62_6();
      goto LABEL_32;
    }
  }

  [v63 count];
  v64 = [OUTLINED_FUNCTION_17() dictionaryWithCapacity:?];
  v66 = v64;
  v891 = 0u;
  v892 = 0u;
  v893 = 0u;
  v894 = 0u;
  if (v45)
  {
LABEL_31:
    v67 = *(v45 + 232);
    goto LABEL_32;
  }

  v67 = 0;
LABEL_32:
  v68 = OUTLINED_FUNCTION_1_18(v64, v65, &v891, v890);
  v814 = v37;
  v799 = array;
  if (v68)
  {
    v69 = v68;
    v783 = *v892;
    obja = v67;
    v751 = @"PrimaryFormat";
    v768 = 0x1F2192EF0;
    do
    {
      v70 = 0;
      do
      {
        if (*v892 != v783)
        {
          objc_enumerationMutation(obja);
        }

        v71 = *(*(&v891 + 1) + 8 * v70);
        [array removeObject:v71];
        underlyingDeviceType = [v71 underlyingDeviceType];
        v73 = [MEMORY[0x1E696AD98] numberWithInt:underlyingDeviceType];
        [OUTLINED_FUNCTION_108_1(v73 v74];
        if (v819)
        {
          v81 = *(v819 + 208);
        }

        else
        {
          v81 = 0;
        }

        v82 = [FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v81 underlyingDeviceType)];
        if (v82)
        {
          v889[0] = v752;
          v889[1] = v769;
          v83 = MEMORY[0x1E695DEC8];
          v84 = v889;
          v85 = 2;
        }

        else
        {
          v888 = v769;
          v83 = MEMORY[0x1E695DEC8];
          v84 = &v888;
          v85 = 1;
        }

        v86 = [v83 arrayWithObjects:v84 count:v85];
        v87 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v819)
        {
          if (*(v819 + 320) == 1)
          {
            [MEMORY[0x1E696AD98] numberWithInt:underlyingDeviceType];
            v37 = v814;
            if ([OUTLINED_FUNCTION_24_1() objectForKey:?])
            {
              BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, *(v819 + 321));
              [OUTLINED_FUNCTION_7() addObjectsFromArray:?];
            }
          }
        }

        v88 = [[BWAttachedMediaSplitNode alloc] initWithAttachedMediaKeys:v86 attachedMediaToPropagateToPrimaryOutput:v87];
        [(BWNode *)v88 setName:@"Vision Data Splitter"];
        v887.receiver = v37;
        v887.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v887, sel_addNode_error_, v88, &v896) & 1) == 0)
        {
          goto LABEL_69;
        }

        input = [(BWNode *)v88 input];
        v97 = OUTLINED_FUNCTION_66_4(input, v90, v91, v92, v93, v94, v95, v96, v475, v482, v491, v500, v509, v517, v525, v534, v542, v550, v558, v566, v574, v582, v590, v598, v606, v614, v623, v632, v640, v648, v655, v663, v670, v678, v685, v693, v701, v709, v718, v726, v734, objb, v752, v761, v769, v777, v784, v792, v800, v807);
        if ((OUTLINED_FUNCTION_77_4(v97, v98, v99, v100) & 1) == 0)
        {
          goto LABEL_69;
        }

        if (v82)
        {
          v82 = [(NSArray *)[(BWNode *)v88 outputs] objectAtIndexedSubscript:0];
          v101 = 1;
        }

        else
        {
          v101 = 0;
        }

        [v817 setObject:v82 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", underlyingDeviceType)}];
        v102 = [(NSArray *)[(BWNode *)v88 outputs] objectAtIndexedSubscript:v101];
        [MEMORY[0x1E696AD98] numberWithInt:underlyingDeviceType];
        [OUTLINED_FUNCTION_67_5() setObject:v102 forKeyedSubscript:?];
        ++v70;
        array = v799;
      }

      while (v69 != v70);
      v103 = [obja countByEnumeratingWithState:&v891 objects:v890 count:16];
      v69 = v103;
    }

    while (v103);
  }

  v104 = [v66 count];
  if (v104)
  {
    v104 = [v66 copy];
  }

  *(v37 + 400) = v104;
  [FigCaptureCameraSourcePipeline _insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:];
  v897[0] = v105;
  if (v105)
  {
    goto LABEL_407;
  }

  if (!v819 || *(v819 + 320) != 1 || *(v819 + 32) == 3)
  {
    HIDWORD(v533) = 0;
    goto LABEL_62;
  }

  [FigCaptureCameraSourcePipeline _insertSmartStyleLearningNodeOnOutputsBySourceDeviceType:ifAllowedByAdditionalPreviewConnectionConfigurations:semanticMasksOutputsBySourceDeviceType:pipelineConfiguration:graph:];
  v897[0] = v469;
  if (v469)
  {
LABEL_407:
    OUTLINED_FUNCTION_3_60();
    LODWORD(v475) = v471;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v475);
    goto LABEL_70;
  }

  HIDWORD(v533) = 1;
LABEL_62:
  if ([v817 count])
  {
    v106 = v817;
  }

  else
  {
    v106 = v557;
  }

  v107 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  objc = v106;
  if (![objc_msgSend(v733 "requiredFormat")])
  {
    cinematicFramingEnabled = 0;
    if (![*(v37 + 456) smartFramingEnabled])
    {
      goto LABEL_90;
    }

    goto LABEL_75;
  }

  cinematicFramingEnabled = [v733 cinematicFramingEnabled];
  if ([*(v37 + 456) smartFramingEnabled])
  {
LABEL_75:
    if (([*(v37 + 456) smartFramingRequiresSceneMonitoring] & 1) == 0 && (cinematicFramingEnabled & 1) == 0)
    {
      cinematicFramingEnabled = 0;
      goto LABEL_90;
    }

    goto LABEL_77;
  }

  if (!cinematicFramingEnabled)
  {
    goto LABEL_90;
  }

  cinematicFramingEnabled = 1;
LABEL_77:
  if ([v106 count] != 1)
  {
LABEL_69:
    OUTLINED_FUNCTION_0_64();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v475);
    goto LABEL_70;
  }

  v109 = [objc_msgSend(v106 "allKeys")];
  v110 = [BWFanOutNode alloc];
  v112 = OUTLINED_FUNCTION_48_12(v110, v111);
  [v112 setName:@"Video capture/SmartFraming Inference Splitter"];
  [v106 objectForKeyedSubscript:v109];
  v886.receiver = v37;
  v886.super_class = FigCaptureCameraSourcePipeline;
  if ((objc_msgSendSuper2(&v886, sel_addNode_error_, v112, &v896) & 1) == 0 || ([v112 input], v113 = OUTLINED_FUNCTION_67_5(), (OUTLINED_FUNCTION_93_1(v113, v114, v115, v116) & 1) == 0))
  {
    OUTLINED_FUNCTION_0_64();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v475);
    goto LABEL_70;
  }

  v117 = [objc_msgSend(v112 "outputs")];
  [v117 setName:@"Video Capture"];
  [objc setObject:v117 forKeyedSubscript:v109];
  v118 = [objc_msgSend(v112 "outputs")];
  [BWPipelineStage pipelineStageWithName:FigCaptureBuildPipelineStageName(@"com.apple.coremedia.capture.perception" priority:v733), 13];
  v119 = [[BWSmartFramingPerceptionSinkNode alloc] initWithSinkID:@"SmartFramingPerceptionSink" captureDevice:*(v37 + 456) inferenceScheduler:a26];
  v885.receiver = v37;
  v885.super_class = FigCaptureCameraSourcePipeline;
  if ((objc_msgSendSuper2(&v885, sel_addNode_error_, v119, &v896) & 1) == 0 || (-[BWNode input](v119, "input"), ([OUTLINED_FUNCTION_67_5() connectOutput:v118 toInput:? pipelineStage:?] & 1) == 0))
  {
    OUTLINED_FUNCTION_0_64();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v475);
    goto LABEL_70;
  }

  v107 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  v106 = objc;
  if ([v806 deferredNodePrepareSupported])
  {
    v120 = v819 ? *(v819 + 192) : 0;
    if (([objc_msgSend(v120 "sinkConfiguration")] & 1) == 0 && (!v819 || (*(v819 + 336) & 1) == 0))
    {
      [v806 enableDeferredPrepareForNodesNotInPathOfSinkNode:v119];
    }
  }

LABEL_90:
  OUTLINED_FUNCTION_119_1();
  v624 = v121;
  [FigCaptureCameraSourcePipeline _insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:];
  v897[0] = v122;
  if (v122 || (OUTLINED_FUNCTION_119_1(), v615 = v123, [FigCaptureCameraSourcePipeline _insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:], (v897[0] = v124) != 0))
  {
    OUTLINED_FUNCTION_3_60();
    LODWORD(v475) = v472;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v475);
    goto LABEL_70;
  }

  v125 = v733;
  if (v819)
  {
    v126 = *(v819 + 216) != 0;
  }

  else
  {
    v126 = 0;
  }

  v884 = 0;
  [v733 backgroundBlurEnabled];
  [OUTLINED_FUNCTION_58_10() isBackgroundBlurSupported];
  [OUTLINED_FUNCTION_144() isBackgroundBlurProvidedBySource];
  [OUTLINED_FUNCTION_84_4() isCinematicVideoCaptureEnabled];
  OUTLINED_FUNCTION_43_11();
  v133 = FigCaptureVideoEffectEnabledInGraph(v127, v128, v129, v130, v126, v131, v132);
  v883 = 0;
  [v733 studioLightingEnabled];
  [OUTLINED_FUNCTION_58_10() isStudioLightingSupported];
  [OUTLINED_FUNCTION_144() isStudioLightingProvidedBySource];
  [OUTLINED_FUNCTION_84_4() isCinematicVideoCaptureEnabled];
  OUTLINED_FUNCTION_43_11();
  LODWORD(v783) = FigCaptureVideoEffectEnabledInGraph(v134, v135, v136, v137, v126, v138, v139);
  [v733 reactionEffectsEnabled];
  [OUTLINED_FUNCTION_58_10() reactionEffectsSupported];
  [OUTLINED_FUNCTION_144() reactionEffectsProvidedBySource];
  [OUTLINED_FUNCTION_84_4() isCinematicVideoCaptureEnabled];
  OUTLINED_FUNCTION_43_11();
  LODWORD(v541) = FigCaptureVideoEffectEnabledInGraph(v140, v141, v142, v143, v126, v144, v145);
  v882 = 0;
  [v733 backgroundReplacementEnabled];
  [OUTLINED_FUNCTION_58_10() isBackgroundReplacementSupported];
  [OUTLINED_FUNCTION_144() isBackgroundReplacementProvidedBySource];
  [OUTLINED_FUNCTION_84_4() isCinematicVideoCaptureEnabled];
  OUTLINED_FUNCTION_43_11();
  LODWORD(v725) = v126;
  HIDWORD(v549) = FigCaptureVideoEffectEnabledInGraph(v146, v147, v148, v149, v126, v150, v151);
  if ([OUTLINED_FUNCTION_123_2(v107[631] v475] && objc_msgSend(v106, "count") == 1 && objc_msgSend(objc_msgSend(v106, "allKeys"), "firstObject"))
  {
    [OUTLINED_FUNCTION_49_8() objectForKeyedSubscript:v819];
    if ([v125 outputAspectRatio])
    {
      v152 = v815;
      [objc_msgSend(objc_msgSend(*(v815 + 64) "firstObject")];
      v154 = v153;
      v156 = v155;
      v157 = BWAspectRatioValueFromAspectRatio([v125 outputAspectRatio]);
      v158 = (v154 + 1.0) * v157 / (v156 + 1.0);
    }

    else
    {
      v158 = 0.0;
      v152 = v815;
    }

    v159 = [BWVISOverscanPredictionNode alloc];
    [*&v152[v107[631]] cameraInfoByPortType];
    v160 = OUTLINED_FUNCTION_8();
    *&v161 = v158;
    v162 = [v160 initWithCameraInfoByPortType:v161 visInputAspectRatio:? delegate:?];
    [v162 setName:@"Overscan prediction"];
    v881.receiver = v152;
    v881.super_class = FigCaptureCameraSourcePipeline;
    if ((objc_msgSendSuper2(&v881, sel_addNode_error_, v162, &v896) & 1) == 0 || (v163 = [v162 input], v171 = OUTLINED_FUNCTION_66_4(v163, v164, v165, v166, v167, v168, v169, v170, v476, v483, v492, v501, v510, v518, v526, v535, v543, v551, v559, v567, v575, v583, v591, v599, v607, v616, v625, v633, v641, v649, v656, v664, v671, v679, v686, v694, v702, v710, v719, v727, v735, objd, v753, v762, v770, v778, allKeys3, v793, allKeys2, v808), v106 = objd, (OUTLINED_FUNCTION_100_3(v171, v172, v173, v174) & 1) == 0))
    {
      OUTLINED_FUNCTION_0_64();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v476);
      goto LABEL_70;
    }

    [v162 output];
    [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
  }

  isRunningForContinuityCapture = [v808 isRunningForContinuityCapture];
  csp_dockKitNodeEnabled(v819, isRunningForContinuityCapture, v176, v177, v178, v179, v180, v181, v476, v483, v492, v501, v510, v518, v526, SBYTE2(v526), SBYTE3(v526), v535, v543, v551, v559, v567, v575, v583, v591, v599, v607, v616, v625, v633, v641, v649, v656, SBYTE2(v656), BYTE3(v656), HIDWORD(v656), v664, v671, v679, v686, v694, v702, v710, v719, v727, v735, objd, v753, v762);
  if (v182)
  {
    csp_cinematicVideoEnabled(v819);
    v183 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_58_10() "requiredFormat")];
    v184 = csp_portraitPhotoModeEnabled(v819);
    v477 = [OUTLINED_FUNCTION_123_2(456 v477];
    v187 = FigCaptureClientApplicationIDIsCameraOrDerivative(v477, v186);
    v188 = &unk_1F2244770;
    if (([objc_msgSend(v106 "allKeys")] & 1) != 0 || (v188 = objc_msgSend(objc_msgSend(v106, "allKeys"), "firstObject")) != 0)
    {
      LODWORD(v770) = v133;
      LODWORD(v754) = cinematicFramingEnabled;
      v189 = [v106 objectForKeyedSubscript:v188];
      v190 = -[BWDockKitNode initWithIsRunningForContinuityCapture:cinematicVideoEnabled:captureDevice:]([BWDockKitNode alloc], "initWithIsRunningForContinuityCapture:cinematicVideoEnabled:captureDevice:", [v808 isRunningForContinuityCapture], v819, *(v815 + 456));
      v880.receiver = v815;
      v880.super_class = FigCaptureCameraSourcePipeline;
      if ((objc_msgSendSuper2(&v880, sel_addNode_error_, v190, &v896) & 1) == 0)
      {
        goto LABEL_430;
      }

      [(BWNode *)v190 input];
      if (([OUTLINED_FUNCTION_126_2() connectOutput:v189 toInput:? pipelineStage:?] & 1) == 0)
      {
        goto LABEL_430;
      }

      v106 = obje;
      [obje setObject:-[BWNode output](v190 forKeyedSubscript:{"output"), v188}];
      if (v819 & 1 | ((v187 & 1) == 0))
      {
        v191 = v819;
      }

      else
      {
        v191 = v183 | v184;
      }

      [(BWDockKitNode *)v190 setCustomInferenceEnabled:(v191 & 1) == 0];
      [*(v815 + 456) applicationID];
      [OUTLINED_FUNCTION_36() setClientApplicationID:?];
      *(v815 + 104) = v190;
      v125 = v736;
      array = allKeys2;
    }
  }

  LODWORD(v552) = v133 | allKeys3;
  v192 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  if (([objc_msgSend(v125 "requiredFormat")] & 1) == 0)
  {
    v193 = ([v125 cinematicFramingEnabled] & 1) != 0 ? 0 : objc_msgSend(v125, "manualCinematicFramingEnabled") ^ 1;
    if (((cinematicFramingEnabled | v193) & 1) == 0)
    {
      HIDWORD(v544) = [v125 deskCamEnabled];
      if (!HIDWORD(v544))
      {
        v196 = 0;
        goto LABEL_124;
      }

      if ([v817 objectForKeyedSubscript:&unk_1F22447A0])
      {
        v194 = [BWFanOutNode alloc];
        v196 = OUTLINED_FUNCTION_48_12(v194, v195);
        [v196 setName:@"Cinematic Framing/DeskCam Splitter"];
        v879.receiver = v815;
        v879.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v879, sel_addNode_error_, v196, &v896) & 1) == 0)
        {
          goto LABEL_431;
        }

        [v196 input];
        v197 = OUTLINED_FUNCTION_24_0();
        if ((OUTLINED_FUNCTION_77_4(v197, v198, v199, v200) & 1) == 0)
        {
          goto LABEL_431;
        }

        [v106 setObject:objc_msgSend(objc_msgSend(v196 forKeyedSubscript:{"outputs"), "objectAtIndexedSubscript:", 0), &unk_1F22447A0}];
LABEL_124:
        cameraInfoByPortType = [OUTLINED_FUNCTION_46_11() cameraInfoByPortType];
        v202 = BYTE4(v544) ^ 1;
        if (v196)
        {
          v202 = 1;
        }

        if (v202)
        {
          v203 = cameraInfoByPortType;
          v528 = v196;
          v204 = objc_alloc(MEMORY[0x1E695DF90]);
          [OUTLINED_FUNCTION_49_8() count];
          *(v815 + 144) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
          cameraInfoByPortType2 = v203;
          v897[0] = [FigCaptureCameraSourcePipeline _insertSubjectSelectionAndCinematicFramingNodesOnOutputsBySourceDeviceType:v815 connectionConfigurations:v106 pipelineConfiguration:array cameraInfoByPortType:v819 graph:v203 stillImageCaptureEnabled:v808 stillImageOutputsByPortType:v728 & ((v552 | HIDWORD(v552)) ^ 1)];
          if (v897[0])
          {
            OUTLINED_FUNCTION_3_60();
            LODWORD(v477) = v473;
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v477);
            goto LABEL_70;
          }

          goto LABEL_128;
        }

LABEL_431:
        OUTLINED_FUNCTION_0_64();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v477);
        goto LABEL_70;
      }

LABEL_430:
      OUTLINED_FUNCTION_0_64();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v477);
      goto LABEL_70;
    }
  }

  cameraInfoByPortType2 = [OUTLINED_FUNCTION_46_11() cameraInfoByPortType];
  v528 = 0;
  HIDWORD(v544) = 0;
LABEL_128:
  if ((cinematicFramingEnabled & 1) != 0 || v819 && *(v819 + 353) == 1)
  {
    v205 = objc_alloc(MEMORY[0x1E695DF90]);
    [OUTLINED_FUNCTION_49_8() count];
    *(v815 + 152) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
    if (FigCapturePlatformSupportsUniversalLossyCompression())
    {
      v206 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(allKeys2, [v125 sourceDeviceType]);
      LODWORD(v703) = csp_maxLossyCompressionLevelForConnectionConfigurations(v206, v819);
    }

    else
    {
      LODWORD(v703) = 0;
    }

    v877 = 0u;
    v878 = 0u;
    v875 = 0u;
    v876 = 0u;
    allKeys = [v106 allKeys];
    v207 = [allKeys countByEnumeratingWithState:&v875 objects:v874 count:16];
    if (v207)
    {
      v208 = v207;
      v634 = a25;
      v695 = *v876;
      *v657 = *(MEMORY[0x1E69E9B10] + 16);
      v672 = *MEMORY[0x1E69E9B10];
      v642 = *(MEMORY[0x1E69E9B10] + 32);
      do
      {
        v209 = 0;
        v720 = sel_addNode_error_;
        do
        {
          if (*v876 != v695)
          {
            objc_enumerationMutation(allKeys);
          }

          v210 = *(*(&v875 + 1) + 8 * v209);
          IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([v210 integerValue]);
          v214 = *v657;
          v213 = v672;
          v215 = v642;
          if (!IsExtensionDeviceType)
          {
            v216 = [OUTLINED_FUNCTION_123_2(456 v477] == 2;
            *&v213 = FigCaptureGetDeviceToCameraTransform(v216, v217);
          }

          if (v819)
          {
            v218 = *(v819 + 353);
          }

          else
          {
            v218 = 0;
          }

          *(v815 + 588) = v218 & 1;
          v219 = *(v815 + 588);
          v771 = v214;
          *v786 = v213;
          v755 = v215;
          if ((v219 & 1) != 0 || ((v872 = 0u, v873 = 0u, v870 = 0u, v871 = 0u, !v819) ? (v220 = 0) : (v220 = *(v819 + 240)), (v221 = OUTLINED_FUNCTION_1_18(IsExtensionDeviceType, v212, &v870, v869)) == 0))
          {
            metadataIdentifiers = 0;
          }

          else
          {
            v222 = v221;
            v223 = *v871;
            while (2)
            {
              for (i = 0; i != v222; ++i)
              {
                if (*v871 != v223)
                {
                  objc_enumerationMutation(v220);
                }

                v225 = *(*(&v870 + 1) + 8 * i);
                v226 = [objc_msgSend(v225 "sourceConfiguration")];
                intValue = [v210 intValue];
                if (v226 == intValue)
                {
                  metadataIdentifiers = [v225 metadataIdentifiers];
                  v125 = v736;
                  goto LABEL_157;
                }
              }

              v222 = OUTLINED_FUNCTION_1_18(intValue, v228, &v870, v869);
              metadataIdentifiers = 0;
              v125 = v736;
              if (v222)
              {
                continue;
              }

              break;
            }
          }

LABEL_157:
          v230 = FigCaptureConvertDimensionsForAspectRatio([objc_msgSend(v125 "requiredFormat")], objc_msgSend(v125, "outputAspectRatio"));
          v231 = [BWSmartCropNode alloc];
          v232 = [objc_msgSend(v125 "requiredFormat")];
          v233 = [objc_msgSend(v125 "requiredFormat")];
          v192 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
          v485 = metadataIdentifiers;
          v494 = *(v815 + 456);
          LOBYTE(v477) = v728;
          v234 = [(BWSmartCropNode *)v231 initWithOutputDimensions:v230 cameraInfoByPortType:cameraInfoByPortType2 horizontalSensorBinningFactor:v232 verticalSensorBinningFactor:v233 maxLossyCompressionLevel:v703 cameraExtrinsicMatrix:v219 processingMode:*v786 stillCaptureEnabled:*&v771 objectMetadataIdentifiers:*&v755 captureDevice:?];
          if (!v234)
          {
            v468 = -12786;
            goto LABEL_397;
          }

          v235 = v234;
          [v634 objectForKeyedSubscript:v210];
          [OUTLINED_FUNCTION_17() setRtscProcessor:?];
          if (v728)
          {
            *(v815 + 552) = v235;
          }

          v106 = obje;
          if (v219)
          {
            [(BWNode *)v235 setName:@"Low Latency Stabilization"];
            v236 = v815;
          }

          else
          {
            [(BWNode *)v235 setName:@"Center Stage (SmartCrop)"];
            v236 = v815;
            [*(v815 + 456) setCenterStageDelegate:v235];
            csp_getCenterStageRectOfInterest(*(v815 + 464));
            [OUTLINED_FUNCTION_46_11() setCenterStageRectOfInterest:?];
          }

          v868.receiver = v236;
          v868.super_class = FigCaptureCameraSourcePipeline;
          if ((objc_msgSendSuper2(&v868, v720, v235, &v896) & 1) == 0)
          {
LABEL_391:
            OUTLINED_FUNCTION_0_64();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v477);
            goto LABEL_70;
          }

          [obje objectForKeyedSubscript:v210];
          input2 = [(BWNode *)v235 input];
          v245 = OUTLINED_FUNCTION_66_4(input2, v238, v239, v240, v241, v242, v243, v244, v477, v485, v494, v502, v511, v519, v528, v536, v544, v552, v560, v568, v576, v584, v592, v600, allKeys, v617, v626, v634, v642, *(&v642 + 1), v657[0], v657[1], v672, *(&v672 + 1), v687, v695, v703, cameraInfoByPortType2, v720, v728, v736, obje, v755, *(&v755 + 1), v771, *(&v771 + 1), v786[0], v786[1], allKeys2, v808);
          if ((OUTLINED_FUNCTION_100_3(v245, v246, v247, v248) & 1) == 0)
          {
            goto LABEL_396;
          }

          if (![(BWNode *)v235 output])
          {
            goto LABEL_70;
          }

          [(BWNode *)v235 output];
          [OUTLINED_FUNCTION_7() setObject:? forKeyedSubscript:?];
          [OUTLINED_FUNCTION_123_2(152 v478];
          ++v209;
        }

        while (v209 != v208);
        v249 = [allKeys countByEnumeratingWithState:&v875 objects:v874 count:16];
        v208 = v249;
      }

      while (v249);
    }
  }

  v250 = v808;
  v251 = v815;
  if ((v552 | v544 | HIDWORD(v552)))
  {
    v252 = objc_alloc(MEMORY[0x1E695DF90]);
    [OUTLINED_FUNCTION_49_8() count];
    *(v815 + 160) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
    v864 = 0u;
    v865 = 0u;
    v866 = 0u;
    v867 = 0u;
    v657[0] = [v106 allKeys];
    v703 = [v657[0] countByEnumeratingWithState:&v864 objects:v863 count:16];
    if (v703)
    {
      *&v672 = *v865;
      *&v253 = 136315394;
      v642 = v253;
      do
      {
        v254 = 0;
        v695 = sel_addNode_error_;
        do
        {
          if (*v865 != v672)
          {
            objc_enumerationMutation(v657[0]);
          }

          v255 = *(*(&v864 + 1) + 8 * v254);
          v256 = [OUTLINED_FUNCTION_86() objectForKeyedSubscript:?];
          v257 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(allKeys2, [v255 intValue]);
          v720 = v254;
          v754 = v256;
          allKeys3 = v255;
          if (FigCapturePlatformSupportsUniversalLossyCompression())
          {
            LODWORD(v770) = csp_maxLossyCompressionLevelForConnectionConfigurations(v257, v819);
          }

          else
          {
            LODWORD(v770) = 0;
          }

          v258 = [(FigCaptureCameraSourcePipeline *)v251 _getDeviceOrientationCorrectionEnabledForVideoCaptureConnectionConfigurations:v257];
          backgroundBlurEnabled = [v736 backgroundBlurEnabled];
          if ([v736 studioLightingEnabled])
          {
            backgroundBlurEnabled |= 2uLL;
          }

          if ([v736 reactionEffectsEnabled])
          {
            backgroundBlurEnabled |= 0x10uLL;
          }

          if ([v736 backgroundReplacementEnabled])
          {
            v260 = backgroundBlurEnabled | 0x40;
          }

          else
          {
            v260 = backgroundBlurEnabled;
          }

          v261 = v884;
          v262 = v260 | v884;
          v263 = v883;
          if (v883)
          {
            v262 |= 2uLL;
          }

          v264 = HIBYTE(v882);
          if (HIBYTE(v882))
          {
            v262 |= 0x10uLL;
          }

          v265 = v882;
          if (v882)
          {
            v266 = v262 | 0x40;
          }

          else
          {
            v266 = v262;
          }

          if (v260 == 16)
          {
            v192 = 0;
          }

          else
          {
            v192 = v728;
          }

          isRunningForContinuityCapture2 = [v250 isRunningForContinuityCapture];
          v269 = ((isRunningForContinuityCapture2 & 1) != 0 || BWDeviceIsiPad(isRunningForContinuityCapture2, v268)) && FigCapturePlatformIdentifier() > 6;
          v270 = [BWBackgroundBlurNode alloc];
          if (v258)
          {
            if ([v736 cinematicFramingEnabled])
            {
              LOBYTE(v258) = 1;
            }

            else
            {
              LOBYTE(v258) = [v736 manualCinematicFramingEnabled];
            }
          }

          v271 = v265 | v264 | v263 | v261;
          intValue2 = [allKeys3 intValue];
          v251 = v815;
          v484 = *(v815 + 456);
          HIDWORD(v477) = intValue2;
          LOBYTE(v477) = v258;
          v273 = [BWBackgroundBlurNode initWithStillImageCaptureEnabled:v270 maxLossyCompressionLevel:"initWithStillImageCaptureEnabled:maxLossyCompressionLevel:fastSwitchEnabled:availableEffects:activeEffect:isHighQualitySupported:upstreamDeviceOrientationCorrectionEnabled:deviceType:captureDevice:" fastSwitchEnabled:v192 availableEffects:v770 activeEffect:v271 & 1 isHighQualitySupported:v266 upstreamDeviceOrientationCorrectionEnabled:v260 deviceType:v269 captureDevice:?];
          [*(v815 + 456) setPortraitEffectPropertiesDelegate:v273];
          [*(v815 + 456) applicationID];
          [OUTLINED_FUNCTION_8() setClientApplicationID:?];
          [objc_msgSend(*(v815 + 456) "captureStream")];
          [OUTLINED_FUNCTION_8() setContinuityCameraClientDeviceClass:?];
          v862.receiver = v815;
          v862.super_class = FigCaptureCameraSourcePipeline;
          if ((objc_msgSendSuper2(&v862, sel_addNode_error_, v273, &v896) & 1) == 0)
          {
            goto LABEL_391;
          }

          if (![(BWBackgroundBlurNode *)v273 videoInput])
          {
            goto LABEL_391;
          }

          v250 = v808;
          if (([v808 connectOutput:v754 toInput:-[BWBackgroundBlurNode videoInput](v273 pipelineStage:{"videoInput"), 0}] & 1) == 0 || !-[BWBackgroundBlurNode videoOutput](v273, "videoOutput"))
          {
            goto LABEL_391;
          }

          [*(v815 + 160) setObject:v273 forKeyedSubscript:allKeys3];
          [obje setObject:-[BWBackgroundBlurNode videoOutput](v273 forKeyedSubscript:{"videoOutput"), allKeys3}];
          v125 = v736;
          if (v192)
          {
            if (![(BWBackgroundBlurNode *)v273 stillImageInput])
            {
              goto LABEL_391;
            }

            [v600 objectForKeyedSubscript:{objc_msgSend(objc_msgSend(*(v815 + 456), "captureStream"), "portType")}];
            [(BWBackgroundBlurNode *)v273 stillImageInput];
            v274 = OUTLINED_FUNCTION_129();
            if ((OUTLINED_FUNCTION_77_4(v274, v275, v276, v277) & 1) == 0 || ![(BWBackgroundBlurNode *)v273 stillImageOutput])
            {
              goto LABEL_391;
            }

            [v600 setObject:-[BWBackgroundBlurNode stillImageOutput](v273 forKeyedSubscript:{"stillImageOutput"), objc_msgSend(objc_msgSend(*(v815 + 456), "captureStream"), "portType")}];
          }

          [(BWBackgroundBlurNode *)v273 setEffectBypassed:v260 == 0];
          if (dword_1ED844130)
          {
            v861 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v279 = v861;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v280 = v279;
            }

            else
            {
              v280 = v279 & 0xFFFFFFFE;
            }

            if (v280)
            {
              effectBypassed = [(BWBackgroundBlurNode *)v273 effectBypassed];
              v855 = v642;
              v282 = @"NO";
              if (effectBypassed)
              {
                v282 = @"YES";
              }

              v856 = "[FigCaptureCameraSourcePipeline _buildVideoCaptureOutputNetwork:previewOutputsBySourceDeviceType:stillImageOutputsByPortType:lightSourceMaskOutputsBySourceDeviceType:keypointDescriptorDataOutputsBySourceDeviceType:pipelineConfiguration:graph:videoCaptureDimensions:numberOfSecondaryFramesToSkip:rtscProcessorsBySourceDeviceType:inferenceScheduler:]";
              v857 = 2112;
              v858 = v282;
              LODWORD(v484) = 22;
              v477 = &v855;
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          v254 = v720 + 1;
        }

        while (v703 != v720 + 1);
        v703 = [v657[0] countByEnumeratingWithState:&v864 objects:v863 count:16];
      }

      while (v703);
    }
  }

  if ([v125 deskCamEnabled])
  {
    if (HIDWORD(v544))
    {
      v283 = 7;
    }

    else
    {
      v283 = 14;
    }

    [MEMORY[0x1E696AD98] numberWithInt:v283];
    [OUTLINED_FUNCTION_7() objectForKeyedSubscript:?];
    v284 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(allKeys2, v283);
    if (FigCapturePlatformSupportsUniversalLossyCompression())
    {
      v285 = csp_maxLossyCompressionLevelForConnectionConfigurations(v284, v819);
    }

    else
    {
      v285 = 0;
    }

    v859[0] = 0;
    source = [v125 source];
    FigCaptureSourceCopyProperty(source, @"OverheadCameraMode", *MEMORY[0x1E695E480], v859);
    v287 = v859[0];
    intValue3 = [v859[0] intValue];
    v289 = v125;
    v290 = *off_1E798A0D0;
    [BWDeskCamNode alloc];
    [v289 deskCamOutputDimensions];
    v192 = [objc_msgSend(v289 "requiredFormat")];
    [objc_msgSend(v289 "requiredFormat")];
    LOBYTE(v511) = 0;
    v504 = v251[57];
    LODWORD(v493) = intValue3;
    LODWORD(v479) = v285;
    v291 = OUTLINED_FUNCTION_86();
    v293 = v292;
    v294 = [v291 initWithOutputDimensions:? cameraInfoByPortType:? horizontalSensorBinningFactor:? verticalSensorBinningFactor:? stillImageCaptureEnabled:? objectMetadataIdentifiers:? maxLossyCompressionLevel:? portType:? overheadCameraMode:? captureDevice:? downStreamRequires10BitPixelFormat:?];
    v251[68] = v294;
    [*(v251 + *(v293 + 2524)) applicationID];
    [OUTLINED_FUNCTION_17() setClientApplicationID:?];
    v854.receiver = v251;
    v854.super_class = FigCaptureCameraSourcePipeline;
    if ((objc_msgSendSuper2(&v854, sel_addNode_error_, v294, &v896) & 1) == 0 || ![v294 videoCaptureInput])
    {
      goto LABEL_236;
    }

    if (HIDWORD(v544))
    {
      [objc_msgSend(v528 outputs];
      [v294 videoCaptureInput];
      v295 = OUTLINED_FUNCTION_129();
      if ((OUTLINED_FUNCTION_100_3(v295, v296, v297, v298) & 1) == 0)
      {
LABEL_236:
        OUTLINED_FUNCTION_0_64();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v479);
        goto LABEL_70;
      }
    }

    else
    {
      [v294 videoCaptureInput];
      v299 = OUTLINED_FUNCTION_129();
      if ((OUTLINED_FUNCTION_146(v299, v300, v301, v302) & 1) == 0)
      {
        goto LABEL_236;
      }
    }

    if (![v294 videoCaptureOutput])
    {
      goto LABEL_236;
    }

    [obje setObject:objc_msgSend(v294 forKeyedSubscript:{"videoCaptureOutput"), &unk_1F2244818}];
  }

  if (!v819)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v362 = dictionary;
    goto LABEL_272;
  }

  if (*(v819 + 145) != 1)
  {
    goto LABEL_256;
  }

  objc_alloc(MEMORY[0x1E695DF70]);
  [v817 count];
  *(v815 + 120) = [OUTLINED_FUNCTION_17() initWithCapacity:?];
  v850 = 0u;
  v851 = 0u;
  v852 = 0u;
  v853 = 0u;
  allKeys2 = [v817 allKeys];
  v303 = [allKeys2 countByEnumeratingWithState:&v850 objects:v849 count:16];
  if (!v303)
  {
    goto LABEL_256;
  }

  v304 = v303;
  v305 = *v851;
  do
  {
    for (j = 0; j != v304; ++j)
    {
      if (*v851 != v305)
      {
        objc_enumerationMutation(allKeys2);
      }

      v307 = [v817 objectForKeyedSubscript:*(*(&v850 + 1) + 8 * j)];
      v308 = [[BWSynchronizerNode alloc] initWithMediaType:1986618469];
      v848.receiver = v815;
      v848.super_class = FigCaptureCameraSourcePipeline;
      if ((objc_msgSendSuper2(&v848, sel_addNode_error_, v308, &v896) & 1) == 0)
      {
LABEL_398:
        OUTLINED_FUNCTION_0_64();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v479);
        goto LABEL_70;
      }

      [*(v815 + 120) addObject:v308];
      -[BWSynchronizerNode setSourceClock:](v308, "setSourceClock:", [*(v815 + 72) clock]);
      lockedFrameRate = [v736 lockedFrameRate];
      if (FigCaptureFrameRateIsValidRational(lockedFrameRate, v310))
      {
        CMTimeMake(&v847, [v736 lockedFrameRate] >> 32, objc_msgSend(v736, "lockedFrameRate"));
        *v859 = *&v847.value;
        epoch = v847.epoch;
      }

      else
      {
        externalSyncFrameRate = [v736 externalSyncFrameRate];
        v192 = v192 & 0xFFFFFFFF00000000 | v313;
        if (!FigCaptureFrameRateIsValidRational(externalSyncFrameRate, v192))
        {
          goto LABEL_253;
        }

        CMTimeMake(&v846, [v736 externalSyncFrameRate] >> 32, objc_msgSend(v736, "externalSyncFrameRate"));
        *v859 = *&v846.value;
        epoch = v846.epoch;
      }

      v859[2] = epoch;
      [(BWSynchronizerNode *)v308 setQuantizationFrameDuration:v859];
LABEL_253:
      input3 = [(BWNode *)v308 input];
      if (([OUTLINED_FUNCTION_66_4(input3 v315] & 1) == 0)
      {
        goto LABEL_398;
      }

      output = [(BWNode *)v308 output];
      [OUTLINED_FUNCTION_108_1(output v323];
    }

    v304 = [allKeys2 countByEnumeratingWithState:&v850 objects:v849 count:16];
  }

  while (v304);
LABEL_256:
  if (*(v819 + 146) != 1)
  {
    goto LABEL_270;
  }

  v844 = 0u;
  v845 = 0u;
  v842 = 0u;
  v843 = 0u;
  allKeys3 = [v817 allKeys];
  v330 = [allKeys3 countByEnumeratingWithState:&v842 objects:v841 count:16];
  if (!v330)
  {
    goto LABEL_270;
  }

  v331 = v330;
  allKeys2 = *v843;
  do
  {
    for (k = 0; k != v331; ++k)
    {
      if (*v843 != allKeys2)
      {
        objc_enumerationMutation(allKeys3);
      }

      v333 = [v817 objectForKeyedSubscript:*(*(&v842 + 1) + 8 * k)];
      v334 = *(v819 + 200);
      VideoDataConfigurationFromConfigurations = csp_getVideoDataConfigurationFromConfigurations(*(v819 + 208));
      if (!VideoDataConfigurationFromConfigurations)
      {
        VideoDataConfigurationFromConfigurations = csp_getVideoDataConfigurationFromConfigurations(v334);
      }

      v336 = FigCaptureCreateAndConfigureDepthConverterNode(v592, VideoDataConfigurationFromConfigurations, 0, [v736 requiredFormat], objc_msgSend(*(v815 + 456), "cameraInfoByPortType"), objc_msgSend(*(v815 + 456), "depthDataBaseRotation"), *(v815 + 512), 0, v897);
      if (v897[0])
      {
        OUTLINED_FUNCTION_14_21();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v479);
        goto LABEL_70;
      }

      v337 = v336;
      v338 = v336;
      if (!v337)
      {
        OUTLINED_FUNCTION_0_64();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_396:
        v468 = -12780;
LABEL_397:
        v897[0] = v468;
        goto LABEL_70;
      }

      v840.receiver = v815;
      v840.super_class = FigCaptureCameraSourcePipeline;
      if ((objc_msgSendSuper2(&v840, sel_addNode_error_, v337, &v896) & 1) == 0)
      {
        goto LABEL_398;
      }

      input4 = [(BWNode *)v337 input];
      if (([OUTLINED_FUNCTION_66_4(input4 v340] & 1) == 0)
      {
        goto LABEL_398;
      }

      output2 = [(BWNode *)v337 output];
      [OUTLINED_FUNCTION_108_1(output2 v348];
    }

    v331 = [allKeys3 countByEnumeratingWithState:&v842 objects:v841 count:16];
  }

  while (v331);
LABEL_270:
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v362 = dictionary;
  if (*(v819 + 32) == 3)
  {
    v839 = [v817 objectForKeyedSubscript:&unk_1F22447A0];
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v839 count:1];
    [OUTLINED_FUNCTION_15() setObject:? forKeyedSubscript:?];
    dictionary = [v817 setObject:objc_msgSend(v817 forKeyedSubscript:{"objectForKeyedSubscript:", &unk_1F2244770), &unk_1F22447D0}];
  }

LABEL_272:
  v363 = v808;
  v364 = v815;
  if (HIDWORD(v536))
  {
    [FigCaptureCameraSourcePipeline _insertSmartStyleMetadataSynchronizerNodeOnOutputsBySourceDeviceType:pipelineConfiguration:graph:];
    v897[0] = dictionary;
    if (dictionary)
    {
      OUTLINED_FUNCTION_3_60();
      LODWORD(v479) = v470;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v479);
      goto LABEL_70;
    }
  }

  v837 = 0u;
  v838 = 0u;
  v835 = 0u;
  v836 = 0u;
  v732 = OUTLINED_FUNCTION_139(dictionary, v356, v357, v363, v358, v359, v360, v361, v479, v484, v493, v502, v511, v519, v528, v536, v544, v552, v560, v568, v576, v584, v592, v600, allKeys, v617, v626, v634, v642, *(&v642 + 1), v657[0], v657[1], v672, *(&v672 + 1), v687, v695, v703, cameraInfoByPortType2, v720, v728, v736, obje, v754, v763, v770, v778, allKeys3, v793, allKeys2, v808, v815, v817);
  if (!v732)
  {
    goto LABEL_381;
  }

  v740 = *v836;
  v775 = v362;
  while (2)
  {
    v365 = 0;
    obji = sel_addNode_error_;
    while (2)
    {
      if (*v836 != v740)
      {
        objc_enumerationMutation(v818);
      }

      v790 = v365;
      v366 = *(*(&v835 + 1) + 8 * v365);
      intValue4 = [v366 intValue];
      v368 = [v818 objectForKeyedSubscript:v366];
      if (v819)
      {
        v369 = *(v819 + 208);
      }

      else
      {
        v369 = 0;
      }

      v370 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v369, intValue4);
      v371 = [v370 count];
      if (v819)
      {
        v372 = *(v819 + 200);
      }

      else
      {
        v372 = 0;
      }

      FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v372);
      dictionary2 = [MEMORY[0x1E695DF90] dictionary];
      [v580 objectForKeyedSubscript:v366];
      [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
      [v572 objectForKeyedSubscript:v366];
      [OUTLINED_FUNCTION_36() setObject:? forKeyedSubscript:?];
      OUTLINED_FUNCTION_91_4();
      v805 = v366;
      if (v42 && ([MEMORY[0x1E696AD98] numberWithInt:intValue4], objc_msgSend(OUTLINED_FUNCTION_4(), "containsObject:")) && (csp_cinematicVideoEnabled(v819) & 1) == 0)
      {
        v375 = v819;
        if (v819)
        {
          v374 = *(v819 + 354) ^ 1;
          v371 += v374 & 1;
LABEL_287:
          v376 = *(v375 + 232);
        }

        else
        {
          v376 = 0;
          ++v371;
          v374 = 1;
        }
      }

      else
      {
        v374 = 0;
        v375 = v819;
        if (v819)
        {
          goto LABEL_287;
        }

        v376 = 0;
      }

      v377 = v375;
      FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v376);
      [MEMORY[0x1E696AD98] numberWithInt:intValue4];
      v378 = [OUTLINED_FUNCTION_4() containsObject:?];
      if (v377)
      {
        v379 = *(v377 + 248);
      }

      else
      {
        v379 = 0;
      }

      v380 = (v371 - v378);
      FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v379);
      [MEMORY[0x1E696AD98] numberWithInt:intValue4];
      v381 = v380;
      v382 = v805;
      if ([OUTLINED_FUNCTION_4() containsObject:?])
      {
        v381 = v380 - (FigCaptureConnectionConfigurationWithSinkTypeAndMediaType(v370, 4, 1986618469) != 0);
      }

      v362 = (v381 - 1);
      if (v381 == 1)
      {
        if (v374)
        {
          v362 = v775;
          if ([v564 objectForKeyedSubscript:v805])
          {
            OUTLINED_FUNCTION_0_64();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", name, v489, v498, v507, v515, v523, v532, v540);
          }

          [v564 setObject:v368 forKeyedSubscript:v805];
          LODWORD(v381) = 0;
        }

        else
        {
          v834[0] = v368;
          v383 = [MEMORY[0x1E695DEC8] arrayWithObjects:v834 count:1];
          OUTLINED_FUNCTION_135_2(v383, v384, v385, v386, v387, v388, v389, v390, name, v489, v498, v507, v515, v523, v532, v540, v548, v556, v564, v572, v580, v588, v596, v604, v612, v621, v630, v638, v646, v653, v661, v668, v676, v683, v691, v699, v707, v716, v724, v732, v740, obji, v759, v767, v775);
          LODWORD(v381) = [dictionary2 count] != 0;
        }
      }

      else
      {
        if (v381 < 2)
        {
          LODWORD(v381) = 0;
        }

        else
        {
          if ([dictionary2 count])
          {
            if ((v374 & 1) == 0)
            {
              v833 = v368;
              v394 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v833 count:1];
              OUTLINED_FUNCTION_135_2(v394, v395, v396, v397, v398, v399, v400, v401, name, v489, v498, v507, v515, v523, v532, v540, v548, v556, v564, v572, v580, v588, v596, v604, v612, v621, v630, v638, v646, v653, v661, v668, v676, v683, v691, v699, v707, v716, v724, v732, v740, obji, v759, v767, v775);
              goto LABEL_337;
            }

            v381 = 2;
          }

          else
          {
            LODWORD(v362) = 0;
          }

          v391 = [[BWFanOutNode alloc] initWithFanOutCount:v381 mediaType:1986618469];
          if ((csp_isCenterStageOrManualFramingEnabledInVideoDataConnectionConfiguration(v370) & 1) != 0 || csp_isDeskCamEnabledInVideoDataConnectionConfiguration(v370))
          {

            v392 = v391;
            *(v364 + 528) = v392;
            v393 = @"Center Stage, Manual Framing and Desk Cam Video Capture Splitter";
          }

          else
          {
            if (v374)
            {
              v393 = @"Video Preview/Capture Splitter";
            }

            else
            {
              v393 = @"Video Capture Splitter";
            }

            v392 = v391;
          }

          [(BWNode *)v392 setName:v393];
          v832.receiver = v364;
          v832.super_class = FigCaptureCameraSourcePipeline;
          if ((objc_msgSendSuper2(&v832, obji, v391, &v896) & 1) == 0)
          {
            goto LABEL_406;
          }

          input5 = [(BWNode *)v391 input];
          if (([OUTLINED_FUNCTION_66_4(input5 v403] & 1) == 0)
          {
            goto LABEL_406;
          }

          LODWORD(v759) = v381;
          if (v374)
          {
            v410 = [(NSArray *)[(BWNode *)v391 outputs] objectAtIndexedSubscript:0];
            [v410 setName:@"Preview"];
            [v564 setObject:v410 forKeyedSubscript:v382];
            v411 = 1;
          }

          else
          {
            v411 = 0;
          }

          [v775 setObject:-[NSArray subarrayWithRange:](-[BWNode outputs](v391 forKeyedSubscript:{"outputs"), "subarrayWithRange:", v411, (v381 - v411)), v382}];
          OUTLINED_FUNCTION_91_4();
          if (v42)
          {
            if (v819 && *(v819 + 320) == 1)
            {
              if (*(v819 + 321) == 1)
              {
                v412 = [objc_msgSend(*(v819 + 216) "irisSinkConfiguration")];
              }

              else
              {
                v412 = 0;
              }

              v413 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, v412);
              do
              {
                [(BWFanOutNode *)v391 setAllowedAttachedMediaKeys:v413 forOutputIndex:v411];
                v411 = (v411 + 1);
              }

              while (v411 < v759);
            }

            else
            {
              do
              {
                [(BWFanOutNode *)v391 setDiscardsAttachedMedia:1 forOutputIndex:v411];
                v411 = (v411 + 1);
              }

              while (v411 < v381);
            }
          }

          LODWORD(v381) = v362;
        }

        v362 = v775;
      }

LABEL_337:
      v414 = [dictionary2 count];
      if (v414)
      {
        LODWORD(v759) = v381;
        if (intValue4 <= 9 && ((1 << intValue4) & 0x310) != 0)
        {
          dictionary3 = [MEMORY[0x1E695DF90] dictionary];
          v828 = 0u;
          v829 = 0u;
          v830 = 0u;
          v831 = 0u;
          v423 = *(v364 + 64);
          v424 = OUTLINED_FUNCTION_138_0();
          if (v424)
          {
            v425 = v424;
            v426 = *v829;
            do
            {
              for (m = 0; m != v425; ++m)
              {
                if (*v829 != v426)
                {
                  objc_enumerationMutation(v423);
                }

                v428 = *(*(&v828 + 1) + 8 * m);
                BWUnderlyingDeviceTypesForCompositeDeviceType(intValue4);
                [MEMORY[0x1E696AD98] numberWithInt:{BWUtilitiesUnderlyingDeviceTypeFromPortType(objc_msgSend(v428, "portType"), intValue4)}];
                if ([OUTLINED_FUNCTION_7() containsObject:?])
                {
                  array3 = [MEMORY[0x1E695DF70] array];
                  if ([objc_msgSend(v428 "configuration")])
                  {
                    [array3 addObject:v630];
                  }

                  if ([objc_msgSend(v428 "configuration")])
                  {
                    [array3 addObject:v621];
                  }

                  if ([array3 count])
                  {
                    [v428 portType];
                    [OUTLINED_FUNCTION_1_15() setObject:array3 forKeyedSubscript:?];
                  }
                }
              }

              v425 = OUTLINED_FUNCTION_138_0();
            }

            while (v425);
          }

          v364 = v816;
          v362 = v775;
          v382 = v805;
          if (![objc_msgSend(dictionary3 "allKeys")])
          {
            OUTLINED_FUNCTION_0_64();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            goto LABEL_396;
          }
        }

        v430 = [BWMetadataSynchronizerNode alloc];
        [dictionary2 allKeys];
        v431 = [OUTLINED_FUNCTION_4() initWithMetadataInputs:? propagateSampleBufferAttachmentKeys:? propagateSampleBufferMetadataDictKeys:? syncMetadataByPortType:? syncOnlyIfMetadataEnabledForKeys:?];
        v432 = MEMORY[0x1E696AEC0];
        name = [v364 name];
        [v432 stringWithFormat:@"%@ Metadata Synchronizer"];
        [OUTLINED_FUNCTION_17() setName:?];
        v827.receiver = v364;
        v827.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v827, obji, v431, &v896) & 1) == 0)
        {
          goto LABEL_406;
        }

        [objc_msgSend(v362 objectForKeyedSubscript:{v382), "objectAtIndexedSubscript:", 0}];
        [objc_msgSend(v431 "inputs")];
        v433 = OUTLINED_FUNCTION_126_2();
        v437 = OUTLINED_FUNCTION_100_3(v433, v434, v435, v436);
        if ((v437 & 1) == 0)
        {
          goto LABEL_406;
        }

        v825 = 0u;
        v826 = 0u;
        v823 = 0u;
        v824 = 0u;
        if (OUTLINED_FUNCTION_137_1(v437, v438, v439, v440, v441, v442, v443, v444, name, v489, v498, v507, v515, v523, v532, v540, v548, v556, v564, v572, v580, v588, v596, v604, v612, v621, v630, v638, v646, v653, v661, v668, v676, v683, v691, v699, v707, v716, v724, v732, v740, obji, v759, v767, v775, v782, v790, v797, v805, v812, v816, v818, v819, v820.receiver, v820.super_class, output3, v822))
        {
          LODWORD(v445) = 1;
LABEL_359:
          v445 = v445;
          while (1)
          {
            OUTLINED_FUNCTION_21_20();
            if (!v42)
            {
              objc_enumerationMutation(dictionary2);
            }

            [dictionary2 objectForKeyedSubscript:**(&v823 + 1)];
            [objc_msgSend(v431 "inputs")];
            v446 = OUTLINED_FUNCTION_126_2();
            if (!OUTLINED_FUNCTION_93_1(v446, v447, v448, v449))
            {
              break;
            }

            ++v445;
            OUTLINED_FUNCTION_51_11();
            if (v42)
            {
              if (OUTLINED_FUNCTION_137_1(v450, v451, v452, v453, v454, v455, v456, v457, name, v489, v498, v507, v515, v523, v532, v540, v548, v556, v564, v572, v580, v588, v596, v604, v612, v621, v630, v638, v646, v653, v661, v668, v676, v683, v691, v699, v707, v716, v724, v732, v740, obji, v759, v767, v775, v782, v790, v797, v805, v812, v816, v818, v819, v820.receiver, v820.super_class, output3, v822))
              {
                goto LABEL_359;
              }

              goto LABEL_366;
            }
          }

LABEL_406:
          OUTLINED_FUNCTION_0_64();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", name);
          goto LABEL_70;
        }

LABEL_366:
        if (v759 == 1)
        {
          output3 = [v431 output];
          outputs = [MEMORY[0x1E695DEC8] arrayWithObjects:&output3 count:1];
          v459 = v805;
        }

        else
        {
          v460 = [[BWFanOutNode alloc] initWithFanOutCount:v759 mediaType:1986618469];
          [(BWNode *)v460 setName:@"Video Capture Splitter"];
          v820.receiver = v364;
          v820.super_class = FigCaptureCameraSourcePipeline;
          if ((objc_msgSendSuper2(&v820, obji, v460, &v896) & 1) == 0)
          {
            goto LABEL_406;
          }

          [v431 output];
          [(BWNode *)v460 input];
          v461 = OUTLINED_FUNCTION_126_2();
          v459 = v805;
          if ((OUTLINED_FUNCTION_77_4(v461, v462, v463, v464) & 1) == 0)
          {
            goto LABEL_406;
          }

          outputs = [(BWNode *)v460 outputs];
        }

        [v362 setObject:outputs forKeyedSubscript:v459];
        if ([v580 objectForKeyedSubscript:v459])
        {
          v465 = *(v364 + 416);
          if (!v465)
          {
            v465 = objc_alloc_init(MEMORY[0x1E695DF70]);
            *(v364 + 416) = v465;
          }

          [v465 addObject:v459];
        }

        v414 = [v572 objectForKeyedSubscript:v459];
        if (v414)
        {
          v466 = *(v364 + 424);
          if (!v466)
          {
            v466 = objc_alloc_init(MEMORY[0x1E695DF70]);
            *(v364 + 424) = v466;
          }

          v414 = [v466 addObject:v459];
        }
      }

      v365 = v790 + 1;
      if (v790 + 1 != v732)
      {
        continue;
      }

      break;
    }

    v732 = OUTLINED_FUNCTION_139(v414, v415, v416, v417, v418, v419, v420, v421, name, v489, v498, v507, v515, v523, v532, v540, v548, v556, v564, v572, v580, v588, v596, v604, v612, v621, v630, v638, v646, v653, v661, v668, v676, v683, v691, v699, v707, v716, v724, v732, v740, obji, v759, v767, v775, v782, v790, v797, v805, v812, v816, v818);
    if (v732)
    {
      continue;
    }

    break;
  }

LABEL_381:
  v467 = [v362 count];
  if (v467)
  {
    v467 = [v362 copy];
  }

  *(v364 + 192) = v467;
LABEL_70:
  if (!v897[0] && v896)
  {
    [v896 code];
  }

LABEL_73:
  OUTLINED_FUNCTION_128_0();
}

- (uint64_t)_buildPreviewOutputNetwork:(uint64_t)network videoCaptureOutputsBySourceDeviceType:(uint64_t)type pipelineConfiguration:(uint64_t)configuration graph:(uint64_t)graph numberOfSecondaryFramesToSkip:(uint64_t)skip
{
  if (!network)
  {
    return 0;
  }

  if (!graph)
  {
    OUTLINED_FUNCTION_113_2();
    [FigCaptureCameraSourcePipeline _insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:];
    if (!v6)
    {
      goto LABEL_7;
    }

LABEL_13:
    v8 = v6;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return v8;
  }

  OUTLINED_FUNCTION_113_2();
  [FigCaptureCameraSourcePipeline _insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:];
  if (v6)
  {
    goto LABEL_13;
  }

  if (*(graph + 320) == 1 && *(graph + 32) != 3)
  {
    OUTLINED_FUNCTION_113_2();
    [FigCaptureCameraSourcePipeline _insertSmartStyleLearningNodeOnOutputsBySourceDeviceType:ifAllowedByAdditionalPreviewConnectionConfigurations:semanticMasksOutputsBySourceDeviceType:pipelineConfiguration:graph:];
    if (v6)
    {
      goto LABEL_13;
    }
  }

LABEL_7:
  OUTLINED_FUNCTION_113_2();
  [FigCaptureCameraSourcePipeline _insertFunnelOnPreviewOutputsBySourceDeviceType:previewDerivedConnectionConfigurations:graph:];
  v8 = v7;
  if (v7)
  {
    OUTLINED_FUNCTION_0_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v8);
  }

  return v8;
}

- (char)_buildPointCloudOutputNetworkWithPipelineConfiguration:(char *)result graph:(uint64_t)graph
{
  if (result)
  {
    v3 = result;
    v16 = 0;
    if (graph)
    {
      if (![*(graph + 256) count])
      {
        goto LABEL_10;
      }

      v4 = *(graph + 256);
    }

    else
    {
      [0 count];
      v4 = OUTLINED_FUNCTION_110_2();
      if (!v12)
      {
        return 0;
      }
    }

    v5 = [v4 count];
    array = [MEMORY[0x1E695DF70] array];
    if (v5 < 2)
    {
      [*(v3 + 9) pointCloudOutput];
      [OUTLINED_FUNCTION_8() addObject:?];
    }

    else
    {
      v7 = [[BWFanOutNode alloc] initWithFanOutCount:v5 mediaType:1885564004];
      [v3 addNode:v7 error:&v16];
      if (v16)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v13, v14, v15, v16, v17, v18, v19, v20);
LABEL_10:
        result = v16;
        if (v16)
        {
          return [v16 code];
        }

        return result;
      }

      [*(v3 + 9) pointCloudOutput];
      [(BWNode *)v7 input];
      v8 = OUTLINED_FUNCTION_40_9();
      OUTLINED_FUNCTION_93_1(v8, v9, v10, v11);
      [(BWNode *)v7 outputs];
      [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
    }

    *(v3 + 47) = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:array];
    goto LABEL_10;
  }

  return result;
}

- (uint64_t)_canDeferSourceNodesForGraph:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    result = [a2 deferredNodePrepareSupported];
    if (result)
    {
      OUTLINED_FUNCTION_72_3();
      v12 = *(v3 + 56);
      if (v12)
      {
        v13 = *(v12 + 184);
      }

      else
      {
        v13 = 0;
      }

      if (OUTLINED_FUNCTION_57(v4, v5, v6, v7, v8, v9, v10, v11, v23))
      {
        OUTLINED_FUNCTION_74_4();
LABEL_7:
        v14 = 0;
        while (1)
        {
          OUTLINED_FUNCTION_76_3();
          if (!v15)
          {
            objc_enumerationMutation(v13);
          }

          result = [objc_msgSend(*(v25 + 8 * v14) "sinkConfiguration")];
          if (!result)
          {
            break;
          }

          if (v2 == ++v14)
          {
            v2 = OUTLINED_FUNCTION_57(result, v16, v17, v18, v19, v20, v21, v22, v24);
            if (v2)
            {
              goto LABEL_7;
            }

            return 1;
          }
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

- (BWNodeOutput)_addCrossOverNodeToGraph:(int)graph outputNetworkType:(void *)type inputs:(uint64_t)inputs mediaType:(uint64_t)mediaType name:(_DWORD *)name outErr:
{
  if (result)
  {
    v11 = -[BWCrossoverNode initWithMediaType:numberOfInputs:]([BWCrossoverNode alloc], "initWithMediaType:numberOfInputs:", inputs, [type count]);
    [(BWNode *)v11 setName:mediaType];
    v12 = OUTLINED_FUNCTION_111_2();
    if (objc_msgSendSuper2(v12, v13, v11))
    {
      if (graph == 2)
      {
        [BWPipelineStage pipelineStageWithName:@"com.apple.coremedia.capture.detectedObjects" priority:14];
      }

      OUTLINED_FUNCTION_35_12();
      OUTLINED_FUNCTION_47_0();
      v18 = OUTLINED_FUNCTION_52(v14, v15, v16, v17);
      if (v18)
      {
        v19 = v18;
        v20 = 0;
        OUTLINED_FUNCTION_125_1();
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            OUTLINED_FUNCTION_32_10();
            if (!v22)
            {
              objc_enumerationMutation(type);
            }

            v23 = *(v28 + 8 * i);
            [(NSArray *)[(BWNode *)v11 inputs] objectAtIndexedSubscript:v20];
            if (([OUTLINED_FUNCTION_6_44() connectOutput:v23 toInput:? pipelineStage:?] & 1) == 0)
            {
              OUTLINED_FUNCTION_1_9();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              goto LABEL_15;
            }

            ++v20;
          }

          OUTLINED_FUNCTION_47_0();
          v19 = OUTLINED_FUNCTION_52(v24, v25, v26, v27);
          if (v19)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

LABEL_15:
    *name = 0;
    return [(BWNode *)v11 output];
  }

  return result;
}

- (BWNodeOutput)_stereoVideoAddSlaveFrameSynchronizerNode:(uint64_t)node input1:(uint64_t)input1 input2:(uint64_t)input2 mediaType:(uint64_t)type name:(_DWORD *)name outErr:
{
  if (result)
  {
    v11 = result;
    v20 = 0;
    BYTE12(v19) = 0;
    *(&v19 + 4) = 1;
    LOBYTE(v19) = 1;
    v12 = [BWSlaveFrameSynchronizerNode initWithDepthEnabled:"initWithDepthEnabled:numberOfInputs:syncSlaveForMasterPortTypes:separateDepthComponentsEnabled:preLTMThumbnailEnabledInputs:postColorProcessingThumbnailEnabledInputs:weightSegmentMapEnabledInputs:differentInputFormatsSupported:bufferSize:numberOfSlaveFramesToSkip:startEmittingMasterFramesBeforeSlaveStreamStarts:" numberOfInputs:0 syncSlaveForMasterPortTypes:2 separateDepthComponentsEnabled:0 preLTMThumbnailEnabledInputs:0 postColorProcessingThumbnailEnabledInputs:0 weightSegmentMapEnabledInputs:0 differentInputFormatsSupported:0 bufferSize:v19 numberOfSlaveFramesToSkip:? startEmittingMasterFramesBeforeSlaveStreamStarts:?];
    v13 = v12;
    if (node && input1)
    {
      [(BWNode *)v12 setName:type];
      if ((-[BWNodeOutput addNode:error:](v11, "addNode:error:", v13, &v20) & 1) == 0 || (-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v13, "inputs"), "objectAtIndexedSubscript:", 0), ([OUTLINED_FUNCTION_6_44() connectOutput:node toInput:? pipelineStage:?] & 1) == 0) || (-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v13, "inputs"), "objectAtIndexedSubscript:", 1), v14 = OUTLINED_FUNCTION_6_44(), (OUTLINED_FUNCTION_93_1(v14, v15, v16, v17) & 1) == 0))
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    if (v20)
    {
      [v20 code];
      result = OUTLINED_FUNCTION_110_2();
      *name = v18;
    }

    else
    {
      return [(BWNode *)v13 output];
    }
  }

  return result;
}

- (void)_addFunnelNodeToGraph:(uint64_t)graph inputs:(uint64_t)inputs mediaType:(uint64_t)type name:(uint64_t)name outErr:(uint64_t)err
{
  if (self)
  {
    OUTLINED_FUNCTION_81_3();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    [BWFunnelNode alloc];
    [v34 count];
    v35 = [OUTLINED_FUNCTION_15() initWithNumberOfInputs:? mediaType:?];
    [v35 setName:v32];
    v36 = OUTLINED_FUNCTION_111_2();
    if (objc_msgSendSuper2(v36, v37, v35))
    {
      OUTLINED_FUNCTION_69_0();
      OUTLINED_FUNCTION_17_20();
      v42 = OUTLINED_FUNCTION_52(v38, v39, v40, v41);
      if (!v42)
      {
LABEL_13:
        *v30 = 0;
        [v35 output];
        OUTLINED_FUNCTION_80_3();
        return;
      }

      v43 = v42;
      v44 = 0;
      v45 = *a29;
LABEL_5:
      v46 = 0;
      while (1)
      {
        OUTLINED_FUNCTION_29_11();
        if (v47 != v45)
        {
          objc_enumerationMutation(v34);
        }

        v48 = *(a28 + 8 * v46);
        [objc_msgSend(v35 "inputs")];
        if (([OUTLINED_FUNCTION_6_44() connectOutput:v48 toInput:? pipelineStage:?] & 1) == 0)
        {
          break;
        }

        ++v44;
        if (v43 == ++v46)
        {
          OUTLINED_FUNCTION_17_20();
          v43 = OUTLINED_FUNCTION_52(v49, v50, v51, v52);
          if (v43)
          {
            goto LABEL_5;
          }

          goto LABEL_13;
        }
      }
    }

    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_13;
  }
}

- (void)_addOverCaptureSourcePipelineToGraph:(void *)graph upstreamVideoCaptureOutputsBySourceDeviceType:(uint64_t)type depthEnabled:(uint64_t)enabled depthFilterRenderingEnabled:(unsigned int)renderingEnabled preLTMThumbnailEnabled:(unsigned int)thumbnailEnabled postColorProcessingThumbnailEnabled:(int)processingThumbnailEnabled weightSegmentMapEnabled:(char)mapEnabled forPreview:(unsigned int)self0 maxLossyCompressionLevel:(int)self1 numberOfSecondaryFramesToSkip:(unsigned int *)self2 outErr:
{
  HIDWORD(v75) = processingThumbnailEnabled;
  typeCopy = type;
  v78 = result;
  if (result)
  {
    v86[0] = 0;
    v16 = @"Video Capture Synchronizer";
    if (mapEnabled)
    {
      v16 = @"Preview Synchronizer";
    }

    v74 = v16;
    array = [MEMORY[0x1E695DF70] array];
    memset(v85, 0, sizeof(v85));
    v18 = [&unk_1F2248AA8 countByEnumeratingWithState:v85 objects:v84 count:16];
    if (v18)
    {
      v19 = v18;
      v12 = &unk_1F2248AA8;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v41)
          {
            objc_enumerationMutation(&unk_1F2248AA8);
          }

          v21 = [graph objectForKeyedSubscript:*(*(&v85[0] + 1) + 8 * i)];
          if (v21)
          {
            v21 = [OUTLINED_FUNCTION_7() addObject:?];
          }
        }

        v19 = OUTLINED_FUNCTION_1_0(v21, v22, v85, v84);
      }

      while (v19);
    }

    skipCopy2 = skip;
    if ([array count] <= 1)
    {
      v64 = v70;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v70, v69, v70, v71, v74, v75, v76);
      code = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844128, 0xFFFFCE14, "<<<< FigCaptureCameraSourcePipeline >>>>", 0x16AB, v64, v65, v66, v68);
      v47 = 0;
      if (code)
      {
LABEL_43:
        *skipCopy2 = code;
        return [v47 output];
      }

LABEL_41:
      if (v86[0])
      {
        code = [v86[0] code];
      }

      goto LABEL_43;
    }

    renderingEnabledCopy = renderingEnabled;
    thumbnailEnabledCopy = thumbnailEnabled;
    if (!typeCopy || (mapEnabled & 1) != 0 || ((v24 = *(v78 + 9), [objc_msgSend(v24 "configuration")], v26 = v25 + 1.0, objc_msgSend(objc_msgSend(v24, "configuration"), "sensorOverscan"), v28 = v26 * (v27 + 1.0), objc_msgSend(objc_msgSend(v24, "configuration"), "overscanForShiftMitigation"), v30 = v29 + 1.0, objc_msgSend(objc_msgSend(v24, "configuration"), "sensorOverscan"), v32 = v30 * (v31 + 1.0), v33 = objc_msgSend(objc_msgSend(v24, "configuration"), "videoCaptureDimensions"), v34 = HIDWORD(v33), v35 = v28 * v33, v12 = FigCaptureRoundFloatToMultipleOf(2, v35), v36 = v32 * v34, v37 = FigCaptureRoundFloatToMultipleOf(2, v36), v38 = objc_msgSend(objc_msgSend(v24, "videoCaptureOutput"), "formatRequirements"), v39 = objc_msgSend(v38, "width"), v40 = objc_msgSend(v38, "height"), v12 == v39) ? (v41 = v37 == v40) : (v41 = 0), v41 || !objc_msgSend(array, "count")))
    {
LABEL_25:
      if (*(v78 + 560) == 1)
      {
        v82 = *off_1E798A0D8;
        v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
      }

      else
      {
        v45 = 0;
      }

      v46 = [BWSlaveFrameSynchronizerNode alloc];
      HIDWORD(v67) = level;
      LOBYTE(v67) = BYTE4(v75);
      v47 = [v12 initWithDepthEnabled:typeCopy numberOfInputs:objc_msgSend(OUTLINED_FUNCTION_111() syncSlaveForMasterPortTypes:"count") separateDepthComponentsEnabled:v45 preLTMThumbnailEnabled:0 postColorProcessingThumbnailEnabled:renderingEnabledCopy weightSegmentMapEnabled:thumbnailEnabledCopy numberOfSecondaryFramesToSkip:v67];
      [v47 setName:v74];
      v81.receiver = v78;
      v81.super_class = FigCaptureCameraSourcePipeline;
      if (objc_msgSendSuper2(&v81, sel_addNode_error_, v47, v86))
      {
        OUTLINED_FUNCTION_70_2();
        OUTLINED_FUNCTION_59_7();
        v52 = OUTLINED_FUNCTION_52(v48, v49, v50, v51);
        if (!v52)
        {
LABEL_37:

          v62 = v47;
          code = 0;
          *(v78 + 16) = v62;
LABEL_40:
          skipCopy2 = skip;
          goto LABEL_41;
        }

        v53 = v52;
        v54 = 0;
        v55 = *v80;
LABEL_31:
        v56 = 0;
        while (1)
        {
          if (*v80 != v55)
          {
            objc_enumerationMutation(array);
          }

          v57 = *(v79 + 8 * v56);
          [objc_msgSend(v47 "inputs")];
          if (![OUTLINED_FUNCTION_24_0() connectOutput:v57 toInput:? pipelineStage:?])
          {
            break;
          }

          ++v54;
          if (v53 == ++v56)
          {
            OUTLINED_FUNCTION_59_7();
            v53 = OUTLINED_FUNCTION_52(v58, v59, v60, v61);
            if (v53)
            {
              goto LABEL_31;
            }

            goto LABEL_37;
          }
        }
      }

      OUTLINED_FUNCTION_1_9();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      v42 = 0;
      v12 = v12;
      while (1)
      {
        v43 = [array objectAtIndexedSubscript:v42];
        v44 = objc_alloc_init(BWPixelTransferNode);
        v83.receiver = v78;
        v83.super_class = FigCaptureCameraSourcePipeline;
        if ((objc_msgSendSuper2(&v83, sel_addNode_error_, v44, v86) & 1) == 0)
        {
          break;
        }

        [(BWPixelTransferNode *)v44 setOutputWidth:v12];
        [(BWPixelTransferNode *)v44 setOutputHeight:v37];
        [(BWPixelTransferNode *)v44 setUpdatesSampleBufferMetadataForIrisVIS:1];
        [(BWPixelTransferNode *)v44 setMaxLossyCompressionLevel:preview];
        [(BWNode *)v44 input];
        if (([OUTLINED_FUNCTION_24_0() connectOutput:v43 toInput:? pipelineStage:?] & 1) == 0)
        {
          break;
        }

        [(BWNode *)v44 output];
        [OUTLINED_FUNCTION_7() setObject:? atIndexedSubscript:?];
        if ([array count] <= ++v42)
        {
          goto LABEL_25;
        }
      }

      OUTLINED_FUNCTION_1_9();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      v47 = 0;
    }

    code = 0;
    goto LABEL_40;
  }

  return result;
}

- (void)_connectSubjectSelectionNode:(uint64_t)node videoOutputsBySourceDeviceType:sourceDeviceTypes:portTypes:graph:
{
  if (node)
  {
    OUTLINED_FUNCTION_84();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = OUTLINED_FUNCTION_111_2();
    if (objc_msgSendSuper2(v9, v10, v8))
    {
      if ([objc_msgSend(v8 "videoCaptureInputsByPortType")])
      {
        v11 = [objc_msgSend(v8 "videoCaptureInputsByPortType")];
        if (v11 == [objc_msgSend(v6 "allKeys")])
        {
          allKeys = [v6 allKeys];
          OUTLINED_FUNCTION_117_2();
          v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
          if (v14)
          {
            v15 = v14;
            v16 = *v46;
LABEL_7:
            v17 = 0;
            while (1)
            {
              OUTLINED_FUNCTION_23_14();
              if (v18 != v16)
              {
                objc_enumerationMutation(allKeys);
              }

              if (![v2 connectOutput:objc_msgSend(v6 toInput:"objectForKeyedSubscript:" pipelineStage:{*(v45 + 8 * v17)), objc_msgSend(objc_msgSend(v8, "videoCaptureInputsByPortType"), "objectForKeyedSubscript:", BWUtilitiesGetPortTypeForUnderlyingDeviceType(objc_msgSend(*(v45 + 8 * v17), "intValue"), v4)), 0}])
              {
                break;
              }

              if (v15 == ++v17)
              {
                OUTLINED_FUNCTION_117_2();
                v15 = OUTLINED_FUNCTION_1_0(v19, v20, v21, v22);
                if (v15)
                {
                  goto LABEL_7;
                }

                goto LABEL_13;
              }
            }
          }

          else
          {
LABEL_13:
            if ([objc_msgSend(v8 "videoCaptureOutputsByPortType")])
            {
              v23 = [objc_msgSend(v8 "videoCaptureOutputsByPortType")];
              if (v23 == [objc_msgSend(v6 "allKeys")])
              {
                allKeys2 = [v6 allKeys];
                OUTLINED_FUNCTION_17_20();
                v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v44;
                  do
                  {
                    for (i = 0; i != v27; ++i)
                    {
                      OUTLINED_FUNCTION_29_11();
                      if (v30 != v28)
                      {
                        objc_enumerationMutation(allKeys2);
                      }

                      [objc_msgSend(v8 "videoCaptureOutputsByPortType")];
                      [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
                    }

                    OUTLINED_FUNCTION_17_20();
                    v27 = OUTLINED_FUNCTION_52(v31, v32, v33, v34);
                  }

                  while (v27);
                }
              }
            }
          }
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35, v36, v37, v38, v39, v40, v41, v42);
    }

    OUTLINED_FUNCTION_81();
  }
}

- (uint64_t)_connectCinematicFramingNode:(void *)node videoOutputsBySourceDeviceType:(void *)type sourceDeviceTypes:(void *)types portTypes:(void *)portTypes graph:(void *)graph cameraConfiguration:stillImageCaptureEnabled:stillImageOutputsByPortType:
{
  if (result)
  {
    v12 = result;
    v41 = result;
    v42 = FigCaptureCameraSourcePipeline;
    v43 = 0;
    v13 = OUTLINED_FUNCTION_111_2();
    if (objc_msgSendSuper2(v13, v14, a2))
    {
      if (![objc_msgSend(a2 "videoCaptureInputsByPortType")])
      {
        return 4294954514;
      }

      v15 = [objc_msgSend(a2 "videoCaptureInputsByPortType")];
      if (v15 != [objc_msgSend(node "allKeys")])
      {
        return 4294954514;
      }

      v29 = v12;
      graphCopy = graph;
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      obja = [node allKeys];
      v16 = [obja countByEnumeratingWithState:&v37 objects:&v35 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v38;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v38 != v18)
            {
              objc_enumerationMutation(obja);
            }

            v20 = *(*(&v37 + 1) + 8 * i);
            PortTypeForUnderlyingDeviceType = BWUtilitiesGetPortTypeForUnderlyingDeviceType([v20 intValue], types);
            [node objectForKeyedSubscript:v20];
            v22 = [objc_msgSend(a2 "videoCaptureInputsByPortType")];
            if (!OUTLINED_FUNCTION_146(portTypes, v23, v24, v22))
            {
              return 4294954516;
            }

            if ([type count] >= 2)
            {
              [node setObject:0 forKeyedSubscript:v20];
            }
          }

          v17 = [obja countByEnumeratingWithState:&v37 objects:&v35 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      if ([a2 videoCaptureOutput])
      {
        videoCaptureOutput = [a2 videoCaptureOutput];
        [graphCopy sourceDeviceType];
        [node setObject:videoCaptureOutput forKeyedSubscript:{objc_msgSend(OUTLINED_FUNCTION_8(), "numberWithInt:")}];
        [*(v29 + 456) applicationID];
        [OUTLINED_FUNCTION_28() setClientApplicationID:?];
        [a2 setCinematicFramingControlMode:{objc_msgSend(graphCopy, "cinematicFramingControlMode")}];
        [graphCopy sourceDeviceType];
        [OUTLINED_FUNCTION_8() numberWithInt:?];
        [OUTLINED_FUNCTION_40_9() setObject:a2 forKeyedSubscript:?];
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v26, v27, v28, v30, obj, portTypes, v35, v36);
    }

    result = v43;
    if (v43)
    {
      return [v43 code];
    }
  }

  return result;
}

- (uint64_t)_insertSubjectSelectionAndCinematicFramingNodesOnOutputsBySourceDeviceType:(uint64_t)type connectionConfigurations:(void *)configurations pipelineConfiguration:(void *)configuration cameraInfoByPortType:(uint64_t)portType graph:(uint64_t)graph stillImageCaptureEnabled:(void *)enabled stillImageOutputsByPortType:(unsigned int)byPortType
{
  if (type)
  {
    portTypeCopy = portType;
    if (portType)
    {
      v9 = *(portType + 176);
    }

    else
    {
      v9 = 0;
    }

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    *&v11 = OUTLINED_FUNCTION_106_2();
    v12[38] = v11;
    v12[39] = v11;
    v12[40] = v11;
    v12[41] = v11;
    v13 = *(type + 64);
    v16 = OUTLINED_FUNCTION_52(v14, v15, v132, v131);
    if (v16)
    {
      v17 = v16;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v19)
          {
            objc_enumerationMutation(v13);
          }

          [*(v133 + 8 * i) portType];
          v20 = [OUTLINED_FUNCTION_15() addObject:?];
        }

        v17 = OUTLINED_FUNCTION_52(v20, v21, v132, v131);
      }

      while (v17);
    }

    v22 = [v10 count];
    if (v22 != [objc_msgSend(configurations "allKeys")])
    {
      return 4294954510;
    }

    v23 = FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(configuration, [v9 sourceDeviceType]);
    v107 = [(FigCaptureCameraSourcePipeline *)type _getDeviceOrientationCorrectionEnabledForVideoCaptureConnectionConfigurations:v23];
    if (FigCapturePlatformSupportsUniversalLossyCompression())
    {
      v99 = csp_maxLossyCompressionLevelForConnectionConfigurations(v23, portTypeCopy);
    }

    else
    {
      v99 = 0;
    }

    *&v26 = OUTLINED_FUNCTION_106_2();
    v27[28] = v26;
    v27[29] = v26;
    v27[26] = v26;
    v27[27] = v26;
    if (portTypeCopy)
    {
      portTypeCopy = *(portTypeCopy + 240);
    }

    if (OUTLINED_FUNCTION_1_18(v24, v25, v129, v128))
    {
      while (1)
      {
        OUTLINED_FUNCTION_10_18();
        if (!v19)
        {
          objc_enumerationMutation(portTypeCopy);
        }

        v28 = *v130;
        v29 = [objc_msgSend(*v130 "sourceConfiguration")];
        if (v29 == [v9 sourceDeviceType])
        {
          break;
        }

        OUTLINED_FUNCTION_51_11();
        if (v19 && !OUTLINED_FUNCTION_1_18(v30, v31, v129, v128))
        {
          goto LABEL_24;
        }
      }

      metadataIdentifiers = [v28 metadataIdentifiers];
    }

    else
    {
LABEL_24:
      metadataIdentifiers = 0;
    }

    CenterStageFramingMode = csp_getCenterStageFramingMode([v9 source]);
    typeCopy3 = type;
    if ([objc_msgSend(*(type + 456) "captureStreams")] != 1)
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v85, v86, v87, v88, v89, v90, v91, v92);
      return 4294954516;
    }

    v105 = [objc_msgSend(OUTLINED_FUNCTION_132_2() "captureStream")];
    v33 = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_132_2() "captureStream")];
    if (v35 <= 0.0)
    {
      v104 = BWDeviceIsiPad(v33, v34);
    }

    else
    {
      v104 = 1;
    }

    *&v36 = OUTLINED_FUNCTION_106_2();
    v37[16] = v36;
    v37[17] = v36;
    v37[14] = v36;
    v37[15] = v36;
    obj = [configurations allKeys];
    v38 = [obj countByEnumeratingWithState:v126 objects:v125 count:16];
    if (v38)
    {
      v39 = v38;
      while (2)
      {
        for (j = 0; j != v39; ++j)
        {
          OUTLINED_FUNCTION_10_18();
          if (!v19)
          {
            objc_enumerationMutation(obj);
          }

          v124 = *(v127 + 8 * j);
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
          v41 = [BWSubjectSelectionNode alloc];
          v42 = [objc_msgSend(v9 "requiredFormat")];
          v43 = [objc_msgSend(v9 "requiredFormat")];
          [objc_msgSend(v9 "requiredFormat")];
          LOBYTE(v86) = [OUTLINED_FUNCTION_58_10() gazeSelectionEnabled];
          HIDWORD(v85) = CenterStageFramingMode;
          BYTE1(v85) = v104;
          LOBYTE(v85) = v105 != 0;
          v44 = [BWSubjectSelectionNode initWithOutputDimensions:v41 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:deviceOrientationCorrectionEnabled:portTypes:cameraHasDistortionCoefficients:cameraHasCalibrationValidMaxRadius:centerStageFramingMode:gazeSelectionEnabled:" horizontalSensorBinningFactor:v42 verticalSensorBinningFactor:graph deviceOrientationCorrectionEnabled:v43 portTypes:typeCopy3 cameraHasDistortionCoefficients:v107 cameraHasCalibrationValidMaxRadius:v10 centerStageFramingMode:v85 gazeSelectionEnabled:v86];
          if (!v44)
          {
            OUTLINED_FUNCTION_0();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v85, v86, v87, v88, v89, v90, v91, v92);
            return 0;
          }

          v45 = v44;
          typeCopy3 = type;
          [FigCaptureCameraSourcePipeline _connectSubjectSelectionNode:type videoOutputsBySourceDeviceType:? sourceDeviceTypes:? portTypes:? graph:?];
          if (v46)
          {
            v83 = v46;
            OUTLINED_FUNCTION_1_5();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            return v83;
          }
        }

        v39 = [obj countByEnumeratingWithState:v126 objects:v125 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v45 = 0;
    }

    [OUTLINED_FUNCTION_132_2() setSubjectSelectionDelegate:v45];
    CinematicFramingFieldOfViewRestrictedToWide = csp_getCinematicFramingFieldOfViewRestrictedToWide([v9 source]);
    v123 = 0;
    [v9 source];
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v47 = OUTLINED_FUNCTION_86();
      v48(v47);
      v49 = v123;
    }

    else
    {
      v49 = 0;
    }

    [v49 floatValue];
    v51 = v50;

    v122 = 0;
    v121 = 0;
    csp_getCenterStageRectOfInterest([v9 source]);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    cinematicFramingEnabled = [v9 cinematicFramingEnabled];
    [v9 manualFramingPanningAngleX];
    v61 = v60;
    [v9 manualFramingPanningAngleY];
    v63 = v62;
    [v9 manualFramingDefaultZoomFactor];
    v65 = v64;
    v66 = OUTLINED_FUNCTION_132_2();
    LODWORD(v67) = 1.0;
    [v66 setZoomFactor:v67];
    [v9 source];
    cf[0] = 0;
    if (*(*(CMBaseObjectGetVTable() + 8) + 48))
    {
      v68 = OUTLINED_FUNCTION_86();
      v69(v68);
      v70 = cf[0];
    }

    else
    {
      v70 = 0;
    }

    bOOLValue = [v70 BOOLValue];
    *&v71 = OUTLINED_FUNCTION_106_2();
    *v72 = v71;
    v72[1] = v71;
    v72[2] = v71;
    v72[3] = v71;
    [configurations allKeys];
    OUTLINED_FUNCTION_122();
    v93 = v73;
    obja = [v73 countByEnumeratingWithState:? objects:? count:?];
    if (obja)
    {
      v94 = *v120;
LABEL_49:
      v74 = 0;
      while (1)
      {
        if (*v120 != v94)
        {
          objc_enumerationMutation(v93);
        }

        v119[0] = *(v119[18] + 8 * v74);
        v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:1];
        v76 = [BWCinematicFramingNode alloc];
        v77 = [objc_msgSend(v9 "requiredFormat")];
        v78 = [objc_msgSend(v9 "requiredFormat")];
        v79 = [objc_msgSend(v9 "requiredFormat")];
        LOBYTE(cf[0]) = cinematicFramingEnabled;
        BYTE1(cf[0]) = 1;
        BYTE2(cf[0]) = CinematicFramingFieldOfViewRestrictedToWide;
        *(cf + 3) = v121;
        HIBYTE(cf[0]) = v122;
        cf[1] = v53;
        cf[2] = v55;
        cf[3] = v57;
        cf[4] = v59;
        v112 = CenterStageFramingMode;
        v113 = v51;
        v114 = v61;
        v115 = v63;
        v116 = v65;
        v117 = 0;
        v118 = 0;
        LOBYTE(v91) = 0;
        BYTE2(v89) = bOOLValue;
        BYTE1(v89) = v104;
        LOBYTE(v89) = v105 != 0;
        LODWORD(v86) = v99;
        v80 = [BWCinematicFramingNode initWithOutputDimensions:v76 cameraInfoByPortType:"initWithOutputDimensions:cameraInfoByPortType:horizontalSensorBinningFactor:verticalSensorBinningFactor:deviceOrientationCorrectionEnabled:stillImageCaptureEnabled:objectMetadataIdentifiers:maxLossyCompressionLevel:portTypes:cinematicFramingControls:cameraHasDistortionCoefficients:cameraHasCalibrationValidMaxRadius:centerStageMetadataDeliveryEnabled:pipelineType:downStreamRequires10BitPixelFormat:" horizontalSensorBinningFactor:v77 verticalSensorBinningFactor:graph deviceOrientationCorrectionEnabled:v78 stillImageCaptureEnabled:v79 objectMetadataIdentifiers:v107 maxLossyCompressionLevel:byPortType portTypes:metadataIdentifiers cinematicFramingControls:v86 cameraHasDistortionCoefficients:v10 cameraHasCalibrationValidMaxRadius:cf centerStageMetadataDeliveryEnabled:v89 pipelineType:0 downStreamRequires10BitPixelFormat:v91];
        if (!v80)
        {
          return 4294954510;
        }

        v81 = v80;
        typeCopy3 = type;
        [*(type + 456) setManualCinematicFramingDelegate:v80];
        if (byPortType)
        {
          *(type + 536) = v81;
        }

        v82 = [FigCaptureCameraSourcePipeline _connectCinematicFramingNode:type videoOutputsBySourceDeviceType:v81 sourceDeviceTypes:configurations portTypes:v75 graph:v10 cameraConfiguration:enabled stillImageCaptureEnabled:v9 stillImageOutputsByPortType:?];
        if (v82)
        {
          v83 = v82;
          OUTLINED_FUNCTION_1_5();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          return v83;
        }

        if (obja == ++v74)
        {
          OUTLINED_FUNCTION_122();
          obja = [v93 countByEnumeratingWithState:? objects:? count:?];
          if (obja)
          {
            goto LABEL_49;
          }

          goto LABEL_60;
        }
      }
    }

    v81 = 0;
LABEL_60:
    [*(typeCopy3 + 456) setCenterStageDelegate:v81];
  }

  return 0;
}

- (void)_insertCrossOverAndOverCaptureNodesOnOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:outputNetworkType:numberOfSecondaryFramesToSkip:
{
  OUTLINED_FUNCTION_84();
  v59 = v5;
  v61 = v7;
  v62 = v6;
  if (!v6)
  {
    goto LABEL_65;
  }

  v8 = v4;
  v9 = v3;
  v10 = v2;
  v60 = v1;
  v69[0] = 0;
  v68 = 0;
  if (!v3)
  {
    v11 = 0;
LABEL_5:
    sourceDeviceType = [v11 sourceDeviceType];
    v12 = [FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v10) mutableCopy];
    if (v9)
    {
      v13 = *(v9 + 192);
    }

    else
    {
      v13 = 0;
    }

    v14 = [objc_msgSend(v13 "videoPreviewSinkConfiguration")];
    if (v9)
    {
      v15 = *(v9 + 302);
    }

    else
    {
      v15 = 0;
    }

    *(v62 + 560) = 0;
    [*(v62 + 456) isBravoVariant];
    OUTLINED_FUNCTION_130_1();
    if (!v18 || ([v60 count], v19 = OUTLINED_FUNCTION_45_1(), objc_msgSend(FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v19, sourceDeviceType), "count"), OUTLINED_FUNCTION_130_1(), v0 < 2) || !v20)
    {
LABEL_24:
      if (v9 && *(v9 + 354) == 1)
      {
        if (!v59 || v59 == 2)
        {
          v48 = [v60 objectForKeyedSubscript:&unk_1F2244770];
          [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType];
          [OUTLINED_FUNCTION_1_15() setObject:v48 forKeyedSubscript:?];
        }

        else if (v59 == 1)
        {
          if ([*(v62 + 456) isBravoVariant] && objc_msgSend(v60, "objectForKey:", &unk_1F2244770) && objc_msgSend(v60, "objectForKey:", &unk_1F22447A0) && objc_msgSend(v60, "count") == 2)
          {
            v23 = [v60 objectForKey:&unk_1F22447A0];
            v24 = [v60 objectForKey:&unk_1F2244770];
            [v60 setObject:-[FigCaptureCameraSourcePipeline _stereoVideoAddSlaveFrameSynchronizerNode:input1:input2:mediaType:name:outErr:](v62 forKeyedSubscript:{v61, v23, v24, v25, @"Back Wide S-Wide sync node", v69), &unk_1F22447D0}];
            [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
            [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
            if (v69[0])
            {
              OUTLINED_FUNCTION_14_21();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            }
          }

          else
          {
            OUTLINED_FUNCTION_0();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          }
        }
      }

      else if (v17)
      {
        array = [MEMORY[0x1E695DF70] array];
        obj = [v60 allKeys];
        v27 = [obj countByEnumeratingWithState:v67 objects:v66 count:16];
        if (v27)
        {
          v28 = v27;
          v29 = *v67[2];
          while (2)
          {
            for (i = 0; i != v28; ++i)
            {
              OUTLINED_FUNCTION_23_14();
              if (v31 != v29)
              {
                objc_enumerationMutation(obj);
              }

              v32 = *(v67[1] + 8 * i);
              if ([v12 containsObject:v32])
              {
                v33 = [BWFanOutNode alloc];
                v35 = OUTLINED_FUNCTION_48_12(v33, v34);
                v65.receiver = v62;
                v65.super_class = FigCaptureCameraSourcePipeline;
                if ((objc_msgSendSuper2(&v65, sel_addNode_error_, v35, &v68) & 1) == 0 || ([v60 objectForKeyedSubscript:v32], v36 = objc_msgSend(v35, "input"), (OUTLINED_FUNCTION_77_4(v61, v37, v38, v36) & 1) == 0))
                {
                  OUTLINED_FUNCTION_0();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                  goto LABEL_62;
                }

                [objc_msgSend(v35 "outputs")];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
                [objc_msgSend(v35 "outputs")];
                [OUTLINED_FUNCTION_15() addObject:?];
              }

              else
              {
                [v60 objectForKeyedSubscript:v32];
                [OUTLINED_FUNCTION_15() addObject:?];
                [v60 setObject:0 forKeyedSubscript:v32];
              }
            }

            v28 = [obj countByEnumeratingWithState:v67 objects:v66 count:16];
            if (v28)
            {
              continue;
            }

            break;
          }
        }

        if (v59 > 2)
        {
          v39 = 0;
        }

        else
        {
          v39 = off_1E7998360[v59];
        }

        [v60 setObject:-[FigCaptureCameraSourcePipeline _addCrossOverNodeToGraph:outputNetworkType:inputs:mediaType:name:outErr:](v62 forKeyedSubscript:{v61, v59, array, 1986618469, v39, v69), objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", sourceDeviceType)}];
        if (v69[0])
        {
          OUTLINED_FUNCTION_14_21();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        }
      }

      else if (v16)
      {
        if (v9)
        {
          v49 = *(v9 + 32) != 0;
        }

        else
        {
          v49 = 0;
        }

        if (FigCapturePlatformSupportsUniversalLossyCompression())
        {
          v50 = csp_maxLossyCompressionLevelForConnectionConfigurations(v10, v9);
        }

        else
        {
          v50 = 0;
        }

        if (v9)
        {
          [*(v9 + 192) previewDepthFilterRenderingEnabled];
          v51 = *(v9 + 348);
          v52 = *(v9 + 350);
          v53 = *(v9 + 351);
        }

        else
        {
          [0 previewDepthFilterRenderingEnabled];
          OUTLINED_FUNCTION_130_1();
          v53 = 0;
        }

        v54 = [(FigCaptureCameraSourcePipeline *)v62 _addOverCaptureSourcePipelineToGraph:v61 upstreamVideoCaptureOutputsBySourceDeviceType:v60 depthEnabled:v49 depthFilterRenderingEnabled:0 preLTMThumbnailEnabled:v51 & 1 postColorProcessingThumbnailEnabled:v52 & 1 weightSegmentMapEnabled:v53 & 1 forPreview:v59 == 0 maxLossyCompressionLevel:v50 numberOfSecondaryFramesToSkip:v8 outErr:v69];
        [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType];
        [OUTLINED_FUNCTION_1_15() setObject:v54 forKeyedSubscript:?];
        allKeys = [v60 allKeys];
        OUTLINED_FUNCTION_122();
        if ([v56 countByEnumeratingWithState:? objects:? count:?])
        {
          while (1)
          {
            OUTLINED_FUNCTION_21_20();
            if (!v42)
            {
              objc_enumerationMutation(allKeys);
            }

            v57 = MEMORY[0];
            if ([MEMORY[0] intValue] != sourceDeviceType)
            {
              [v60 setObject:0 forKeyedSubscript:v57];
            }

            OUTLINED_FUNCTION_131_2();
            if (v42)
            {
              OUTLINED_FUNCTION_122();
              if (![allKeys countByEnumeratingWithState:? objects:? count:?])
              {
                break;
              }
            }
          }
        }
      }

      else
      {
        allKeys2 = [v60 allKeys];
        OUTLINED_FUNCTION_59_7();
        if ([v41 countByEnumeratingWithState:? objects:? count:?])
        {
          while (1)
          {
            OUTLINED_FUNCTION_21_20();
            if (!v42)
            {
              objc_enumerationMutation(allKeys2);
            }

            v43 = *v64;
            if (([v12 containsObject:*v64] & 1) == 0)
            {
              [v60 setObject:0 forKeyedSubscript:v43];
            }

            OUTLINED_FUNCTION_51_11();
            if (v42)
            {
              OUTLINED_FUNCTION_59_7();
              if (!OUTLINED_FUNCTION_37(v44, v45, v46, v47))
              {
                break;
              }
            }
          }
        }
      }

      goto LABEL_62;
    }

    if (v9)
    {
      v16 = *(v9 + 136) != 0.0;
    }

    else
    {
      v16 = 0;
    }

    if (v59 == 2)
    {
      v16 = 0;
    }

    if (v16 & 1 | ((v14 & 1) == 0) | v15 & 1)
    {
LABEL_23:
      v17 = v16 ^ 1;
      goto LABEL_24;
    }

    if (v59)
    {
      v21 = v62;
      if (v59 != 1)
      {
LABEL_22:
        v16 = *(v21 + 560);
        goto LABEL_23;
      }

      v22 = *(v62 + 40);
    }

    else
    {
      v22 = 1;
      v21 = v62;
    }

    *(v21 + 560) = v22;
    goto LABEL_22;
  }

  if (*(v3 + 32) != 3)
  {
    v11 = *(v3 + 176);
    goto LABEL_5;
  }

LABEL_62:
  if (!v69[0] && v68)
  {
    [v68 code];
  }

LABEL_65:
  OUTLINED_FUNCTION_81();
}

- (void)_insertSmartStyleLearningNodeOnOutputsBySourceDeviceType:ifAllowedByAdditionalPreviewConnectionConfigurations:semanticMasksOutputsBySourceDeviceType:pipelineConfiguration:graph:
{
  OUTLINED_FUNCTION_84();
  v62 = v5;
  if (v0)
  {
    v6 = v3;
    v7 = v2;
    v8 = v1;
    v9 = v0;
    v69 = v4;
    v76 = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (v6)
    {
      v10 = *(v6 + 176);
    }

    else
    {
      v10 = 0;
    }

    v66 = [objc_msgSend(+[FigCaptureSourceBackingsProvider sharedCaptureSourceBackingsProvider](FigCaptureSourceBackingsProvider "sharedCaptureSourceBackingsProvider")];
    v65 = [objc_msgSend(v10 "requiredFormat")];
    if ([v10 cinematicFramingEnabled])
    {
      v11 = 2;
    }

    else
    {
      manualCinematicFramingEnabled = [v10 manualCinematicFramingEnabled];
      v11 = 2;
      if (!manualCinematicFramingEnabled)
      {
        v11 = 3;
      }
    }

    v64 = v11;
    if (v6)
    {
      if (*(v6 + 321) == 1)
      {
        v67 = [objc_msgSend(*(v6 + 216) "irisSinkConfiguration")];
        if (*(v6 + 321))
        {
          v13 = *(v6 + 200);
          OUTLINED_FUNCTION_34_13();
          v17 = OUTLINED_FUNCTION_1_18(v14, v15, v16, v77);
          if (v17)
          {
            v18 = v17;
            while (2)
            {
              for (i = 0; i != v18; ++i)
              {
                OUTLINED_FUNCTION_10_18();
                if (!v20)
                {
                  objc_enumerationMutation(v13);
                }

                v21 = *(v78[1] + 8 * i);
                v22 = [objc_msgSend(v21 "sinkConfiguration")];
                if (v22 == 14)
                {
                  v22 = [objc_msgSend(v21 "sinkConfiguration")];
                  if (v22 == 3)
                  {
                    v24 = 1;
                    goto LABEL_23;
                  }
                }
              }

              v18 = OUTLINED_FUNCTION_1_18(v22, v23, v78, v77);
              if (v18)
              {
                continue;
              }

              break;
            }

            v24 = 0;
LABEL_23:
            v67 |= v24;
          }
        }
      }

      else
      {
        v67 = 0;
      }

      v25 = (*(v6 + 168) - 4) < 0xFFFFFFFD;
    }

    else
    {
      v67 = 0;
      v25 = 1;
    }

    v63 = v25;
    v26 = [FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v7) copy];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    OUTLINED_FUNCTION_112_0();
    v31 = OUTLINED_FUNCTION_21_10(v27, v28, v29, v30);
    if (v31)
    {
      v32 = v31;
      v61 = v6;
      do
      {
        v33 = 0;
        do
        {
          OUTLINED_FUNCTION_49_7();
          if (!v20)
          {
            objc_enumerationMutation(v8);
          }

          v34 = *(*(&v72 + 1) + 8 * v33);
          v35 = [v9[71] objectForKeyedSubscript:v34];
          if (([v26 containsObject:v34] & 1) == 0 && !v35)
          {
            [v9[57] device];
            v36 = [OUTLINED_FUNCTION_17() newISPSMGProcessingSession:?];
            if (v6 && *(v6 + 264) == 1)
            {
              v37 = [objc_msgSend(*(v6 + 176) "requiredFormat")];
            }

            else
            {
              v37 = 0;
            }

            v38 = [[BWSmartStyleLearningNode alloc] initWithOutputs:v64 masksRefinerEnabled:v37 propagateMasks:v67 ispSMGProcessingSession:v36 squareAspectRatioConfigEnabled:v65 subjectRelightingPreviewVersion:v66];

            if (!v38)
            {
              goto LABEL_55;
            }

            [(BWNode *)v38 setName:@"Source SmartStyle Learning"];
            if (v6)
            {
              [(BWSmartStyleLearningNode *)v38 setDisableWaitForCoefficientsOnFirstFrame:*(v6 + 336)];
              [(BWSmartStyleLearningNode *)v38 setSubjectRelightingEnabled:v63];
              [v9[57] cameraInfoByPortType];
              [OUTLINED_FUNCTION_17() setCameraInfoByPortType:?];
              v39 = *(v6 + 328);
            }

            else
            {
              [(BWSmartStyleLearningNode *)v38 setDisableWaitForCoefficientsOnFirstFrame:0];
              [(BWSmartStyleLearningNode *)v38 setSubjectRelightingEnabled:v63];
              [v9[57] cameraInfoByPortType];
              [OUTLINED_FUNCTION_17() setCameraInfoByPortType:?];
              v39 = 0;
            }

            [(BWSmartStyleLearningNode *)v38 setSmartStyle:v39];
            v71.receiver = v9;
            v71.super_class = FigCaptureCameraSourcePipeline;
            if ((objc_msgSendSuper2(&v71, sel_addNode_error_, v38, &v76) & 1) == 0 || ([v8 objectForKeyedSubscript:v34], v40 = -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v38, "inputs"), "objectAtIndexedSubscript:", 0), (OUTLINED_FUNCTION_93_1(v69, v41, v42, v40) & 1) == 0) || objc_msgSend(v62, "objectForKeyedSubscript:", v34) && (v43 = -[NSArray objectAtIndexedSubscript:](-[BWNode inputs](v38, "inputs"), "objectAtIndexedSubscript:", 1), (OUTLINED_FUNCTION_93_1(v69, v44, v45, v43) & 1) == 0))
            {
LABEL_54:
              OUTLINED_FUNCTION_1_9();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              goto LABEL_55;
            }

            [dictionary setObject:v38 forKeyedSubscript:v34];
            if ([v9[72] objectForKeyedSubscript:v34])
            {
              v46 = [BWFanOutNode alloc];
              v48 = OUTLINED_FUNCTION_48_12(v46, v47);
              [v48 setName:@"SmartStyle Preview/Capture FanOut"];
              v70.receiver = v9;
              v70.super_class = FigCaptureCameraSourcePipeline;
              if ((objc_msgSendSuper2(&v70, sel_addNode_error_, v48, &v76) & 1) == 0)
              {
                goto LABEL_54;
              }

              [(BWNode *)v38 output];
              input = [OUTLINED_FUNCTION_49_8() input];
              if ((OUTLINED_FUNCTION_77_4(v69, v50, v51, input) & 1) == 0)
              {
                goto LABEL_54;
              }

              [objc_msgSend(v48 "outputs")];
              [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
              [objc_msgSend(v48 "outputs")];
              [objc_msgSend(objc_msgSend(v9[72] objectForKeyedSubscript:{v34), "inputs"), "objectAtIndexedSubscript:", 1}];
              v52 = OUTLINED_FUNCTION_67_5();
              v6 = v61;
              if ((OUTLINED_FUNCTION_77_4(v52, v53, v54, v55) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            else
            {
              [(BWNode *)v38 output];
              [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
            }
          }

          ++v33;
        }

        while (v32 != v33);
        OUTLINED_FUNCTION_112_0();
        v60 = OUTLINED_FUNCTION_21_10(v56, v57, v58, v59);
        v32 = v60;
      }

      while (v60);
    }

    [v9[71] addEntriesFromDictionary:dictionary];
LABEL_55:
    if (v76)
    {
      [v76 code];
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_insertFunnelOnMetadataOutputsBySourceDeviceType:connectionConfigurations:pipelineConfiguration:graph:mediaType:metadataName:
{
  OUTLINED_FUNCTION_84();
  v88 = v4;
  HIDWORD(v98) = v5;
  v96 = v6;
  v99 = v7;
  if (!v7)
  {
    goto LABEL_49;
  }

  v8 = v3;
  v9 = v2;
  v10 = v1;
  v11 = v0;
  v123[0] = 0;
  v122 = 0;
  if ([v0 count])
  {
    if (v9)
    {
      v12 = *(v9 + 176);
    }

    else
    {
      v12 = 0;
    }

    sourceDeviceType = [v12 sourceDeviceType];
    v14 = [FigCaptureUnderlyingDeviceTypesFromConnectionConfigurations(v10) mutableCopy];
    if (![v99[57] isBravoVariant])
    {
      goto LABEL_36;
    }

    v15 = [v11 count];
    v16 = [FigCaptureConnectionConfigurationsFilterWithUnderlyingDeviceType(v10 sourceDeviceType)];
    if (v15 >= 2 && v16)
    {
      v86 = v8;
      LODWORD(v90) = sourceDeviceType;
      array = [MEMORY[0x1E695DF70] array];
      obj = [v11 allKeys];
      v18 = [obj countByEnumeratingWithState:v121 objects:v120 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v121[2];
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            OUTLINED_FUNCTION_23_14();
            if (v22 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(v121[1] + 8 * i);
            if ([OUTLINED_FUNCTION_85_0() containsObject:?])
            {
              v24 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:HIDWORD(v98)];
              v119.receiver = v99;
              v119.super_class = FigCaptureCameraSourcePipeline;
              if ((objc_msgSendSuper2(&v119, sel_addNode_error_, v24, &v122) & 1) == 0 || ([v11 objectForKeyedSubscript:v23], v25 = objc_msgSend(OUTLINED_FUNCTION_111(), "input"), (OUTLINED_FUNCTION_142(v25, v26, v27, v28, v29, v30, v31, v32, v79, v82, v83, v86, v88, v90, obj, v96) & 1) == 0))
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                goto LABEL_47;
              }

              [(NSArray *)[(BWNode *)v24 outputs] objectAtIndexedSubscript:0];
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
              [(NSArray *)[(BWNode *)v24 outputs] objectAtIndexedSubscript:1];
              v33 = [OUTLINED_FUNCTION_24_1() addObject:?];
            }

            else
            {
              [v11 objectForKeyedSubscript:v23];
              [OUTLINED_FUNCTION_24_1() addObject:?];
              v33 = [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
            }
          }

          v19 = OUTLINED_FUNCTION_147(v33, v34, v121, v120, v35, v36, v37, v38, v79, v82, v83, v86, v88, v90, obj);
          if (v19)
          {
            continue;
          }

          break;
        }
      }

      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Metadata Funnel", v86];
      [(FigCaptureCameraSourcePipeline *)v99 _addFunnelNodeToGraph:v96 inputs:array mediaType:HIDWORD(v98) name:v39 outErr:v123, v40, v41, v80, v82, v83, v86, v88, v90, obj, v96, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110];
      v43 = v42;
      [MEMORY[0x1E696AD98] numberWithInt:v91];
      [OUTLINED_FUNCTION_1_15() setObject:v43 forKeyedSubscript:?];
      if (v123[0])
      {
        LODWORD(v81) = v123[0];
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v81, v89, v84, v87, v89, v91, obja, v97);
        goto LABEL_49;
      }

      goto LABEL_47;
    }

    if (v16)
    {
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      objb = [v11 allKeys];
      v44 = [objb countByEnumeratingWithState:&v115 objects:v114 count:16];
      if (v44)
      {
        v45 = v44;
        v46 = *v116;
        while (2)
        {
          v47 = 0;
          v92 = sel_addNode_error_;
          do
          {
            if (*v116 != v46)
            {
              objc_enumerationMutation(objb);
            }

            v48 = *(*(&v115 + 1) + 8 * v47);
            if ([v14 containsObject:v48])
            {
              v49 = [[BWFanOutNode alloc] initWithFanOutCount:2 mediaType:HIDWORD(v98)];
              v113.receiver = v99;
              v113.super_class = FigCaptureCameraSourcePipeline;
              if ((objc_msgSendSuper2(&v113, v92, v49, &v122) & 1) == 0 || ([v11 objectForKeyedSubscript:v48], v50 = objc_msgSend(OUTLINED_FUNCTION_111(), "input"), (OUTLINED_FUNCTION_142(v50, v51, v52, v53, v54, v55, v56, v57, v79, v82, v83, v85, v88, v92, objb, v96) & 1) == 0))
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                goto LABEL_47;
              }

              [(NSArray *)[(BWNode *)v49 outputs] objectAtIndexedSubscript:0];
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
              v58 = [(NSArray *)[(BWNode *)v49 outputs] objectAtIndexedSubscript:1];
              [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType];
              v59 = OUTLINED_FUNCTION_1_15();
              v61 = v58;
            }

            else
            {
              v62 = [v11 objectForKeyedSubscript:v48];
              [MEMORY[0x1E696AD98] numberWithInt:sourceDeviceType];
              [OUTLINED_FUNCTION_1_15() setObject:v62 forKeyedSubscript:?];
              v59 = OUTLINED_FUNCTION_4_3();
              v60 = v48;
            }

            v63 = [v59 setObject:v61 forKeyedSubscript:v60];
            ++v47;
          }

          while (v45 != v47);
          v45 = OUTLINED_FUNCTION_147(v63, v64, &v115, v114, v65, v66, v67, v68, v79, v82, v83, v85, v88, v92, objb);
          if (v45)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
LABEL_36:
      allKeys = [v11 allKeys];
      OUTLINED_FUNCTION_59_7();
      v71 = [v70 countByEnumeratingWithState:? objects:? count:?];
      if (v71)
      {
        v72 = v71;
        v73 = *v112;
        do
        {
          for (j = 0; j != v72; ++j)
          {
            if (*v112 != v73)
            {
              objc_enumerationMutation(allKeys);
            }

            if (([v14 containsObject:*(v111 + 8 * j)] & 1) == 0)
            {
              [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
            }
          }

          OUTLINED_FUNCTION_59_7();
          v72 = OUTLINED_FUNCTION_37(v75, v76, v77, v78);
        }

        while (v72);
      }
    }
  }

LABEL_47:
  if (v122)
  {
    [v122 code];
  }

LABEL_49:
  OUTLINED_FUNCTION_81();
}

- (void)_insertSmartStyleMetadataSynchronizerNodeOnOutputsBySourceDeviceType:pipelineConfiguration:graph:
{
  OUTLINED_FUNCTION_84();
  v32 = v3;
  if (v0)
  {
    v4 = v2;
    v5 = v1;
    v6 = v0;
    v42[0] = 0;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (v4 && *(v4 + 321) == 1)
    {
      v7 = [objc_msgSend(*(v4 + 216) "irisSinkConfiguration")];
    }

    else
    {
      v7 = 0;
    }

    v33 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, v7);
    OUTLINED_FUNCTION_34_13();
    v11 = OUTLINED_FUNCTION_37(v8, v9, v10, v40);
    if (v11)
    {
      v12 = v11;
      v31 = *off_1E798A8C0;
      v30 = *off_1E798A8F8;
      v29 = *off_1E798A920;
      v28 = *off_1E798A928;
      v27 = *off_1E798A8E8;
      v26 = *off_1E798A8D0;
      v25 = *off_1E798A4C0;
      while (2)
      {
        v13 = 0;
        v35 = v12;
        do
        {
          OUTLINED_FUNCTION_49_7();
          if (!v14)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(v41[1] + 8 * v13);
          v16 = [v6[71] objectForKeyedSubscript:v15];
          if (!v16)
          {
            v18 = objc_alloc(MEMORY[0x1E695DF70]);
            v39[0] = v31;
            v39[1] = v30;
            v39[2] = v29;
            v39[3] = v28;
            v39[4] = v27;
            v39[5] = v26;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:6];
            v19 = [OUTLINED_FUNCTION_17() initWithArray:?];
            [BWMetadataSynchronizerNode alloc];
            v38 = v33;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
            v37 = v25;
            [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
            v21 = [OUTLINED_FUNCTION_129() initWithArraysOfMetadataInputs:v20 propagateSampleBufferAttachmentKeys:? propagateSampleBufferMetadataDictKeys:? syncMetadataByPortType:? syncOnlyIfMetadataEnabledForKeys:?];
            [v21 setName:@"SmartStyle AttachedMedia Synchronizer"];
            [dictionary setObject:v21 forKeyedSubscript:v15];
            v36.receiver = v6;
            v36.super_class = FigCaptureCameraSourcePipeline;
            if ((objc_msgSendSuper2(&v36, sel_addNode_error_, v21, v42) & 1) == 0)
            {
              OUTLINED_FUNCTION_1_9();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              goto LABEL_18;
            }

            [v5 objectForKeyedSubscript:v15];
            v22 = [objc_msgSend(v21 "inputs")];
            if ((OUTLINED_FUNCTION_146(v32, v23, v24, v22) & 1) == 0)
            {
              OUTLINED_FUNCTION_1_9();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              goto LABEL_18;
            }

            [objc_msgSend(v21 "outputs")];
            v16 = [OUTLINED_FUNCTION_4() setObject:? forKeyedSubscript:?];
            v12 = v35;
          }

          ++v13;
        }

        while (v12 != v13);
        v12 = OUTLINED_FUNCTION_37(v16, v17, v41, v40);
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    [v6[72] addEntriesFromDictionary:dictionary];
LABEL_18:
    if (v42[0])
    {
      [v42[0] code];
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_insertFunnelOnPreviewOutputsBySourceDeviceType:previewDerivedConnectionConfigurations:graph:
{
  OUTLINED_FUNCTION_84();
  v2 = v1;
  v37 = v4;
  v38 = v3;
  v47 = v5;
  if (v3)
  {
    v6 = v0;
    v56[0] = 0;
    if ([v0 count])
    {
      v36 = v2;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      memset(v55, 0, 64);
      obj = [v6 allKeys];
      v43 = [obj countByEnumeratingWithState:v55 objects:v54 count:16];
      if (v43)
      {
        OUTLINED_FUNCTION_23_14();
        v40 = v6;
        v41 = v7;
        while (2)
        {
          for (i = 0; i != v43; ++i)
          {
            OUTLINED_FUNCTION_23_14();
            if (v9 != v41)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(v55[1] + 8 * i);
            array = [MEMORY[0x1E695DF70] array];
            array2 = [MEMORY[0x1E695DF70] array];
            array3 = [MEMORY[0x1E695DF70] array];
            v50 = 0u;
            v51 = 0u;
            v52 = 0u;
            v53 = 0u;
            OUTLINED_FUNCTION_112_0();
            v12 = [v47 countByEnumeratingWithState:? objects:? count:?];
            if (!v12)
            {
              goto LABEL_27;
            }

            v13 = v12;
            v44 = i;
            v14 = 0;
            v15 = 0;
            v16 = 0;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                OUTLINED_FUNCTION_49_7();
                if (!v18)
                {
                  objc_enumerationMutation(v47);
                }

                v19 = *(*(&v50 + 1) + 8 * j);
                [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "underlyingDeviceType")}];
                if ([OUTLINED_FUNCTION_17() isEqualToNumber:?])
                {
                  if ([v19 videoDataSinkConfiguration])
                  {
                    [array3 setObject:v19 atIndexedSubscript:v14++];
                  }

                  else if ([objc_msgSend(v19 "sinkConfiguration")] == 14)
                  {
                    [array2 setObject:v19 atIndexedSubscript:v15++];
                  }

                  else
                  {
                    [array setObject:v19 atIndexedSubscript:v16++];
                  }
                }
              }

              OUTLINED_FUNCTION_112_0();
              v13 = [v47 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v13);
            v20 = v16 + v15;
            v6 = v40;
            i = v44;
            if (v14 <= 1 && (v14 == 1 ? (v21 = v20 < 1) : (v21 = 1), v21))
            {
LABEL_27:
              v48 = [v6 objectForKeyedSubscript:v10];
              outputs = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
            }

            else
            {
              v23 = [MEMORY[0x1E695DF70] arrayWithArray:array];
              [v23 addObjectsFromArray:array3];
              [v23 addObjectsFromArray:array2];
              v24 = [[BWFanOutNode alloc] initWithFanOutCount:(v14 + v20) mediaType:1986618469];
              [(BWNode *)v24 setName:@"Preview Output Splitter"];
              FigCaptureNameSplitterNodeOutputsCorrespondingToConnections([(BWNode *)v24 outputs], v23);
              v49.receiver = v38;
              v49.super_class = FigCaptureCameraSourcePipeline;
              if ((objc_msgSendSuper2(&v49, sel_addNode_error_, v24, v56) & 1) == 0 || ([v40 objectForKeyedSubscript:v10], v25 = -[BWNode input](v24, "input"), (OUTLINED_FUNCTION_146(v37, v26, v27, v25) & 1) == 0))
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
                goto LABEL_35;
              }

              outputs = [(BWNode *)v24 outputs];
            }

            v28 = [dictionary setObject:outputs forKeyedSubscript:v10];
          }

          v43 = OUTLINED_FUNCTION_147(v28, v29, v55, v54, v30, v31, v32, v33, v34, v35, v36, v37, v38, sel_addNode_error_, obj);
          if (v43)
          {
            continue;
          }

          break;
        }
      }

      v38[21] = [dictionary copy];
LABEL_35:
      if (v56[0])
      {
        [v56[0] code];
      }
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)_rerouteDetectedObjectsOutputsForSourcesWithCinematicFramingEnabled:graph:
{
  OUTLINED_FUNCTION_84();
  if (v0)
  {
    v1 = v0;
    if (![*(v0 + 144) count] || !objc_msgSend(*(v1 + 152), "count"))
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      obj = [*(v1 + 144) allKeys];
      v2 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
      if (v2)
      {
        v3 = v2;
        v4 = *v26;
        do
        {
          v5 = 0;
          do
          {
            if (*v26 != v4)
            {
              objc_enumerationMutation(obj);
            }

            v6 = *(*(&v25 + 1) + 8 * v5);
            if ([OUTLINED_FUNCTION_85_0() objectForKeyedSubscript:?])
            {
              v7 = [*(v1 + 144) objectForKeyedSubscript:v6];
              PortTypeForUnderlyingDeviceType = BWUtilitiesGetPortTypeForUnderlyingDeviceType([v6 intValue], objc_msgSend(objc_msgSend(v7, "detectionMetadataInputsByPortType"), "allKeys"));
              if ([objc_msgSend(v7 "detectionMetadataInputsByPortType")] && (v9 = objc_msgSend(OUTLINED_FUNCTION_85_0(), "objectForKeyedSubscript:"), objc_msgSend(objc_msgSend(v7, "detectionMetadataInputsByPortType"), "objectForKeyedSubscript:", PortTypeForUnderlyingDeviceType), (objc_msgSend(OUTLINED_FUNCTION_40_9(), "connectOutput:toInput:pipelineStage:", v9) & 1) != 0) && objc_msgSend(v7, "detectionMetadataOutput"))
              {
                [v7 detectionMetadataOutput];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
              }

              else
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              }
            }

            ++v5;
          }

          while (v3 != v5);
          v10 = [obj countByEnumeratingWithState:&v25 objects:v24 count:16];
          v3 = v10;
        }

        while (v10);
      }

      [*(v1 + 152) allKeys];
      OUTLINED_FUNCTION_47_0();
      obja = v11;
      v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        do
        {
          v15 = 0;
          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(obja);
            }

            v16 = *(v22 + 8 * v15);
            if ([OUTLINED_FUNCTION_85_0() objectForKeyedSubscript:?] && (*(v1 + 588) & 1) == 0)
            {
              v17 = [*(v1 + 152) objectForKeyedSubscript:v16];
              if ([v17 detectionMetadataInput] && (v18 = objc_msgSend(OUTLINED_FUNCTION_85_0(), "objectForKeyedSubscript:"), objc_msgSend(v17, "detectionMetadataInput"), (objc_msgSend(OUTLINED_FUNCTION_40_9(), "connectOutput:toInput:pipelineStage:", v18) & 1) != 0) && objc_msgSend(v17, "detectionMetadataOutput"))
              {
                [v17 detectionMetadataOutput];
                [OUTLINED_FUNCTION_8() setObject:? forKeyedSubscript:?];
              }

              else
              {
                OUTLINED_FUNCTION_0();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              }
            }

            ++v15;
          }

          while (v13 != v15);
          OUTLINED_FUNCTION_47_0();
          v19 = [obja countByEnumeratingWithState:? objects:? count:?];
          v13 = v19;
        }

        while (v19);
      }
    }
  }

  OUTLINED_FUNCTION_81();
}

- (void)liveReconfigureForOutputDimensions:(uint64_t)dimensions aspectRatio:
{
  if (result)
  {
    OUTLINED_FUNCTION_80();
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v7 = *(v6 + 64);
    v9 = OUTLINED_FUNCTION_52(v6, v8, &v69, v68);
    if (v9)
    {
      v10 = v9;
      v11 = *v70;
      do
      {
        v12 = 0;
        do
        {
          if (*v70 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = [*(*(&v69 + 1) + 8 * v12++) setAspectRatio:dimensions];
        }

        while (v10 != v12);
        v10 = OUTLINED_FUNCTION_52(v13, v14, &v69, v68);
      }

      while (v10);
    }

    v15 = OUTLINED_FUNCTION_1_13();
    v16 = *(v4 + 152);
    result = OUTLINED_FUNCTION_0_0(v17, v18, v19, v20, v21, v22, v23, v24, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v15);
    if (result)
    {
      OUTLINED_FUNCTION_61_6();
      do
      {
        v25 = 0;
        do
        {
          OUTLINED_FUNCTION_71();
          if (!v26)
          {
            objc_enumerationMutation(v16);
          }

          v27 = [objc_msgSend(*(v4 + 152) objectForKeyedSubscript:{*(v67 + 8 * v25)), "setOutputDimensions:", v3}];
          v25 = v25 + 1;
        }

        while (v7 != v25);
        result = OUTLINED_FUNCTION_0_0(v27, v28, v29, v30, v31, v32, v33, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66);
        v7 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)captureSourceDepthDataFormat
{
  if (result)
  {
    return *(result + 480);
  }

  return result;
}

- (uint64_t)hardwareDepthFilteringEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 512));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)preLTMThumbnailEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 585));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)postColorProcessingThumbnailEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 586));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)weightSegmentMapEnabled
{
  if (self)
  {
    return OUTLINED_FUNCTION_5_27(*(self + 587));
  }

  else
  {
    return OUTLINED_FUNCTION_5_27(0);
  }
}

- (uint64_t)cinematicFramingCameraStatesProvider
{
  if (result)
  {
    return *(result + 536);
  }

  return result;
}

- (uint64_t)smartCropHomographyProvider
{
  if (result)
  {
    return *(result + 552);
  }

  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(uint64_t)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.1(uint64_t a1)
{
  result = csp_trueVideoCaptureEnabled(0);
  *(a1 + 584) = result;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(uint64_t)a3 graph:(uint64_t)a4 renderDelegate:(uint64_t)a5 fastModeSwitch:(uint64_t)a6 rtscProcessorsBySourceDeviceType:(void *)a7 inferenceScheduler:(void *)a8 .cold.15(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844128, 0xFFFFCE14, "<<<< FigCaptureCameraSourcePipeline >>>>", 0x1284, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (void)_buildMultiStreamCameraSourcePipeline:(id *)a1 graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.16(id *a1)
{
  [a1[10] updateFormatRequirementsFromSourceNode:a1[9]];
  result = [a1[11] updateFormatRequirementsFromSourceNode:a1[9]];
  if (a1[10])
  {
    [a1[9] updateFormatRequirementsFromSourceNode:?];
    result = [a1[11] updateFormatRequirementsFromSourceNode:a1[10]];
  }

  if (a1[11])
  {
    [a1[10] updateFormatRequirementsFromSourceNode:?];
    return [a1[9] updateFormatRequirementsFromSourceNode:a1[11]];
  }

  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(uint64_t)a3 graph:(uint64_t)a4 renderDelegate:(uint64_t)a5 fastModeSwitch:(uint64_t)a6 rtscProcessorsBySourceDeviceType:(void *)a7 inferenceScheduler:(void *)a8 .cold.22(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844128, 0xFFFFCE14, "<<<< FigCaptureCameraSourcePipeline >>>>", 0x14B9, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(uint64_t)a3 graph:(uint64_t)a4 renderDelegate:(uint64_t)a5 fastModeSwitch:(uint64_t)a6 rtscProcessorsBySourceDeviceType:(void *)a7 inferenceScheduler:(void *)a8 .cold.23(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844128, 0xFFFFCE14, "<<<< FigCaptureCameraSourcePipeline >>>>", 0x14B4, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (_BYTE)_buildMultiStreamCameraSourcePipeline:(_BYTE *)result graph:renderDelegate:fastModeSwitch:rtscProcessorsBySourceDeviceType:inferenceScheduler:.cold.33(_BYTE *result)
{
  result[585] = 0;
  result[586] = 0;
  result[587] = 0;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(uint64_t)a3 graph:(uint64_t)a4 renderDelegate:(uint64_t)a5 fastModeSwitch:(uint64_t)a6 rtscProcessorsBySourceDeviceType:(void *)a7 inferenceScheduler:(void *)a8 .cold.34(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844128, 0xFFFFCE14, "<<<< FigCaptureCameraSourcePipeline >>>>", 0x119A, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)_buildMultiStreamCameraSourcePipeline:(uint64_t)a3 graph:(uint64_t)a4 renderDelegate:(uint64_t)a5 fastModeSwitch:(uint64_t)a6 rtscProcessorsBySourceDeviceType:(void *)a7 inferenceScheduler:(void *)a8 .cold.35(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844128, 0xFFFFCE14, "<<<< FigCaptureCameraSourcePipeline >>>>", 0x1178, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

@end