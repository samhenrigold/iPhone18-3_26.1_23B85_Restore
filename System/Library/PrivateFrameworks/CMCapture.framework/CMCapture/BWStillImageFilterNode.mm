@interface BWStillImageFilterNode
+ (void)initialize;
- (BWStillImageFilterNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type statusDelegate:(id)delegate depthDataDeliveryEnabled:(BOOL)enabled personSegmentationEnabled:(BOOL)segmentationEnabled refinedDepthEnabled:(BOOL)depthEnabled portraitRenderQuality:(int)quality targetAspectRatio:(float)self0 defaultPortType:(id)self1 defaultZoomFactor:(float)self2 backPressureDrivenPipelining:(BOOL)self3;
- (id)_initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type statusDelegate:(id)delegate depthDataDeliveryEnabled:(BOOL)enabled personSegmentationEnabled:(BOOL)segmentationEnabled refinedDepthEnabled:(BOOL)depthEnabled portraitRenderQuality:(int)quality targetAspectRatio:(float)self0 defaultPortType:(id)self1 defaultZoomFactor:(float)self2 backPressureDrivenPipelining:(BOOL)self3 renderResourceProvider:(id)self4;
- (id)_releaseResourcesForLiveReconfiguration;
- (id)provideApplySmartStyleRenderer;
- (id)provideCoreImageFilterRenderer;
- (id)provideMetalFilterRenderer;
- (id)provideStillImageCoreImageBlurMapRenderer;
- (id)provideStillImageMetalBlurMapRenderer;
- (id)provideStillImageMetalSDOFRenderer;
- (uint64_t)_downsampleAttachedMediaForSampleBuffer:(uint64_t)buffer;
- (uint64_t)_downsampleImageForSampleBuffer:(CFTypeRef *)buffer outputSampleBuffer:(unint64_t)sampleBuffer dimensions:;
- (uint64_t)_downsamplePixelBuffer:(CVPixelBufferRef *)buffer outputPixelBuffer:(unint64_t)pixelBuffer dimensions:;
- (uint64_t)_ensureCCPortraitLoaded;
- (uint64_t)_ensureOutputBufferPool;
- (uint64_t)_ensureResourcesWithSharedMetalAllocatorBackend:(uint64_t)backend;
- (uint64_t)_provideCIContext;
- (void)_emitNodeErrorForErrorStatus:(int)status numberOfNodeErrors:(uint64_t)errors stillImageSettings:(uint64_t)settings metadata:;
- (void)_emitSampleBufferAsync:(uint64_t)async;
- (void)_prepareStillImageFilterRenderersForOriginalFilters:(id)filters processedFilters:(void *)processedFilters metadata:(void *)metadata settings:(uint64_t)settings inputDimensions:;
- (void)_releaseResources;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageFilterNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageFilterNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type statusDelegate:(id)delegate depthDataDeliveryEnabled:(BOOL)enabled personSegmentationEnabled:(BOOL)segmentationEnabled refinedDepthEnabled:(BOOL)depthEnabled portraitRenderQuality:(int)quality targetAspectRatio:(float)self0 defaultPortType:(id)self1 defaultZoomFactor:(float)self2 backPressureDrivenPipelining:(BOOL)self3
{
  LOBYTE(v15) = pipelining;
  LODWORD(v14) = quality;
  return [BWStillImageFilterNode _initWithNodeConfiguration:"_initWithNodeConfiguration:sensorConfigurationsByPortType:statusDelegate:depthDataDeliveryEnabled:personSegmentationEnabled:refinedDepthEnabled:portraitRenderQuality:targetAspectRatio:defaultPortType:defaultZoomFactor:backPressureDrivenPipelining:renderResourceProvider:" sensorConfigurationsByPortType:configuration statusDelegate:type depthDataDeliveryEnabled:delegate personSegmentationEnabled:enabled refinedDepthEnabled:segmentationEnabled portraitRenderQuality:depthEnabled targetAspectRatio:v14 defaultPortType:portType defaultZoomFactor:v15 backPressureDrivenPipelining:self renderResourceProvider:?];
}

- (id)_initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type statusDelegate:(id)delegate depthDataDeliveryEnabled:(BOOL)enabled personSegmentationEnabled:(BOOL)segmentationEnabled refinedDepthEnabled:(BOOL)depthEnabled portraitRenderQuality:(int)quality targetAspectRatio:(float)self0 defaultPortType:(id)self1 defaultZoomFactor:(float)self2 backPressureDrivenPipelining:(BOOL)self3 renderResourceProvider:(id)self4
{
  depthEnabledCopy = depthEnabled;
  segmentationEnabledCopy = segmentationEnabled;
  enabledCopy = enabled;
  v41.receiver = self;
  v41.super_class = BWStillImageFilterNode;
  v22 = [(BWNode *)&v41 init];
  v23 = v22;
  if (!v22)
  {
    return v23;
  }

  [(BWNode *)v22 setSupportsLiveReconfiguration:1];
  v23->_nodeConfiguration = configuration;
  v23->_sensorConfigurationsByPortType = type;
  v23->_statusDelegate = delegate;
  v23->_targetAspectRatio = ratio;
  v23->_defaultPortType = portType;
  v23->_defaultZoomFactor = factor;
  v23->_backPressureDrivenPipelining = pipelining;
  v23->_depthDataDeliveryEnabled = enabledCopy;
  v23->_portraitRenderQuality = quality;
  if (quality == 2)
  {
    v24 = VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &v23->_portraitDownsamplingTransferSession);
    if (v24)
    {
      [BWStillImageFilterNode _initWithNodeConfiguration:v24 sensorConfigurationsByPortType:v23 statusDelegate:? depthDataDeliveryEnabled:? personSegmentationEnabled:? refinedDepthEnabled:? portraitRenderQuality:? targetAspectRatio:? defaultPortType:? defaultZoomFactor:? backPressureDrivenPipelining:? renderResourceProvider:?];
      return 0;
    }
  }

  if ([configuration metalCommandQueue])
  {
    metalCommandQueue = [configuration metalCommandQueue];
  }

  else
  {
    metalCommandQueue = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
  }

  v26 = segmentationEnabledCopy;
  v23->_mtlCommandQueue = metalCommandQueue;
  if (FigCapturePlatformSupportsUniversalCompression())
  {
    v27 = FigCapturePixelFormatsByAddingCompressedVariants(&unk_1F2248BB0, [configuration maxLossyCompressionLevel]);
  }

  else
  {
    v27 = &unk_1F2248BB0;
  }

  v28 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v23];
  v29 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v29 setSupportedPixelFormats:v27];
  [(BWNodeInput *)v28 setFormatRequirements:v29];
  [(BWNodeInput *)v28 setPassthroughMode:1];
  [(BWNodeInput *)v28 setDelayedBufferCount:1];
  if (!enabledCopy)
  {
    if (!segmentationEnabledCopy)
    {
      goto LABEL_12;
    }

LABEL_21:
    v38 = objc_alloc_init(BWNodeInputMediaConfiguration);
    v39 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v39 setSupportedPixelFormats:&unk_1F2248BC8];
    v40 = v39;
    v26 = segmentationEnabledCopy;
    [(BWNodeInputMediaConfiguration *)v38 setFormatRequirements:v40];
    [(BWNodeInputMediaConfiguration *)v38 setPassthroughMode:1];
    [(BWNodeInputMediaConfiguration *)v38 setDelayedBufferCount:1];
    [(BWNodeInput *)v28 setMediaConfiguration:v38 forAttachedMediaKey:0x1F21AABB0];
    if (!depthEnabledCopy)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v37 = objc_alloc_init(BWNodeInputMediaConfiguration);
  [(BWNodeInputMediaConfiguration *)v37 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeInputMediaConfiguration *)v37 setPassthroughMode:1];
  [(BWNodeInputMediaConfiguration *)v37 setDelayedBufferCount:1];
  [(BWNodeInput *)v28 setMediaConfiguration:v37 forAttachedMediaKey:@"Depth"];
  if (segmentationEnabledCopy)
  {
    goto LABEL_21;
  }

LABEL_12:
  if (depthEnabledCopy)
  {
LABEL_13:
    v30 = objc_alloc_init(BWNodeInputMediaConfiguration);
    v31 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v31 setSupportedPixelFormats:&unk_1F2248BE0];
    [(BWNodeInputMediaConfiguration *)v30 setFormatRequirements:v31];
    [(BWNodeInputMediaConfiguration *)v30 setPassthroughMode:0];
    [(BWNodeInputMediaConfiguration *)v30 setDelayedBufferCount:1];
    [(BWNodeInput *)v28 setMediaConfiguration:v30 forAttachedMediaKey:0x1F21AABD0];
  }

LABEL_14:
  [(BWNode *)v23 addInput:v28];

  v32 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v23];
  [objc_alloc_init(BWVideoFormatRequirements) setSupportedPixelFormats:v27];
  [(BWNodeOutput *)v32 setPassthroughMode:1];
  if (enabledCopy)
  {
    v33 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v33 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v33 setPassthroughMode:1];
    [(BWNodeOutput *)v32 setMediaConfiguration:v33 forAttachedMediaKey:@"Depth"];
  }

  if (v26)
  {
    v34 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v35 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v35 setSupportedPixelFormats:&unk_1F2248BF8];
    [(BWNodeOutputMediaConfiguration *)v34 setFormatRequirements:v35];
    [(BWNodeOutputMediaConfiguration *)v34 setPassthroughMode:1];
    [(BWNodeOutput *)v32 setMediaConfiguration:v34 forAttachedMediaKey:0x1F21AABB0];
  }

  [(BWNode *)v23 addOutput:v32];

  v23->_rendererProvider = provider;
  v23->_colorLookupCache = objc_alloc_init(BWColorLookupCache);
  [configuration figThreadPriority];
  v23->_emitQueue = FigDispatchQueueCreateWithPriority();
  return v23;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v23.receiver = self;
  v23.super_class = BWStillImageFilterNode;
  [(BWNode *)&v23 prepareForCurrentConfigurationToBecomeLive];
  v3 = [(BWNodeInput *)self->super._input mediaPropertiesForAttachedMediaKey:@"Depth"];
  v4 = [objc_msgSend(v3 "resolvedVideoFormat")];
  if (v3)
  {
    v5 = v4;
    if (self->_portraitRenderQuality == 2)
    {
      v6 = 0x12000000180;
      width = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] width];
      if (width == [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] height])
      {
        v6 = FigCaptureSquareDimensionsUsingLongerDimension(0x12000000180);
      }

      targetAspectRatio = self->_targetAspectRatio;
      if (targetAspectRatio == 0.0)
      {
        targetAspectRatio = FigCaptureAspectRatioForDimensions(v5);
      }

      v9 = __ROR8__(v6, 32);
      if (targetAspectRatio >= 1.0)
      {
        v9 = v6;
      }

      self->_depthDataMapDimensions = v9;
    }

    else
    {
      self->_depthDataMapDimensions = v4;
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  inputs = [(BWNode *)self inputs];
  v11 = [(NSArray *)inputs countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v11)
  {
    v13 = v11;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(inputs);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if (v16 != self->super._input)
        {
          [(BWFormat *)[(BWNodeInput *)v16 format] isEqual:[(BWNodeInput *)self->super._input format]];
        }

        ++v15;
      }

      while (v13 != v15);
      v11 = [(NSArray *)inputs countByEnumeratingWithState:&v19 objects:v18 count:16];
      v13 = v11;
    }

    while (v11);
  }

  v17 = BWDeviceSupportsDeferredPhotoProcessorPrewarming(v11, v12);
  if (![(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled]|| !v17)
  {
    [(BWStillImageFilterNode *)self _ensureResourcesWithSharedMetalAllocatorBackend:?];
  }
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  v9 = [(BWNodeOutput *)self->super._output mediaConfigurationForAttachedMediaKey:key];
  if (objc_msgSend_isEqualToString_(key))
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:format];
  }

  else if (!v9 || [v9 passthroughMode])
  {
    v11.receiver = self;
    v11.super_class = BWStillImageFilterNode;
    [(BWNode *)&v11 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  emitQueue = self->_emitQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__BWStillImageFilterNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(emitQueue, block);
}

void __54__BWStillImageFilterNode_renderSampleBuffer_forInput___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {

    *(*(a1 + 32) + 256) = a3;
  }

  else
  {
    v6 = *(v4 + 264);
    v7 = CMGetAttachment(*(a1 + 40), @"PortraitStillImageFaceAdjustedBlurMap", 0);
    *(*(a1 + 32) + 264) = v7;
    if (v7)
    {
      CFRetain(v7);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    *(*(a1 + 32) + 280) = BWSampleBufferCopyDictionaryOfAttachedMedia(*(a1 + 40));
    *(*(a1 + 32) + 288) = CMGetAttachment(*(a1 + 40), @"Inferences", 0);
    v8 = *(*(a1 + 32) + 296);
    v9 = CMGetAttachment(*(a1 + 40), @"PortraitStillImageAuxDepthMetadata", 0);
    *(*(a1 + 32) + 296) = v9;
    if (v9)
    {
      CFRetain(v9);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 272);
    v12 = [*(v10 + 280) objectForKeyedSubscript:0x1F21AAE30];
    *(*(a1 + 32) + 272) = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    if (v11)
    {

      CFRelease(v11);
    }
  }
}

- (void)_emitSampleBufferAsync:(uint64_t)async
{
  if (async)
  {
    if (cf)
    {
      CFRetain(cf);
      v4 = *(async + 440);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __49__BWStillImageFilterNode__emitSampleBufferAsync___block_invoke;
      v5[3] = &unk_1E7990178;
      v5[4] = async;
      v5[5] = cf;
      dispatch_async(v4, v5);
    }
  }
}

void __54__BWStillImageFilterNode_renderSampleBuffer_forInput___block_invoke_86(uint64_t a1, unint64_t a2, void *target, void *a4)
{
  v8 = [CMGetAttachment(target @"StillImageProcessingFlags"];
  v9 = BWIsSmartStyleAllowedForAdjustedImage(*(a1 + 32));
  if (v9)
  {
    v10 = [a4 code] == -2;
  }

  else
  {
    v10 = 0;
  }

  v11 = BWStillImageProcessingFlagsForSampleBuffer(*(a1 + 56));
  if (v10)
  {
    v8 |= 0x800000u;
  }

  else
  {
    if (a4)
    {
      v12 = v10;
    }

    else
    {
      v12 = 1;
    }

    if ((v12 & 1) == 0)
    {
      v37 = [a4 code];
      v67 = 0;
      v66 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v36 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v24 = 0;
      LODWORD(v25) = 0;
      if (v37)
      {
        goto LABEL_68;
      }

      goto LABEL_60;
    }
  }

  if (!target)
  {
    v24 = 0;
    LODWORD(v25) = 0;
    v37 = -12786;
    v36 = 1;
    goto LABEL_68;
  }

  if (a2 != 1)
  {
    if ((a2 & 2) != 0)
    {
      if (*(a1 + 77) != 1)
      {
        goto LABEL_30;
      }

      v13 = v11 & 0x800000;
      v14 = v8 | (4 * (a2 & 1));
      v15 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
      if (*(a1 + 78) == 1)
      {
        v52 = v11 & 0x800000;
        v16 = v14 | 0x48;
        if (*(*(a1 + 40) + 412))
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          sampleBufferOut = @"PersonSegmentationMask";
          v61 = @"PersonSemanticsHair";
          v62 = @"PersonSemanticsGlasses";
          v63 = 0x1F21AABD0;
          v64 = @"Depth";
          v65 = 0x1F217BF50;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&sampleBufferOut count:6];
          sampleBufferOut = @"PersonSemanticsSkin";
          v61 = @"PersonSemanticsTeeth";
          v18 = [v17 arrayByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &sampleBufferOut, 2)}];
          v19 = [v18 countByEnumeratingWithState:&v54 objects:v53 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v55;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v55 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                BWSampleBufferRemoveAttachedMedia(target, *(*(&v54 + 1) + 8 * i));
              }

              v20 = [v18 countByEnumeratingWithState:&v54 objects:v53 count:16];
            }

            while (v20);
          }
        }

        if (*(a1 + 79))
        {
          v23 = 7;
        }

        else
        {
          v23 = 8;
        }

        CMSetAttachment(target, @"SDOFCustomRendered", [MEMORY[0x1E696AD98] numberWithShort:v23], 1u);
        v15 = &kBWNodeSampleBufferAttachmentKey_TotalZoomFactor;
        v13 = v52;
      }

      else
      {
        v16 = v14 | 8;
      }

      v26 = v10 | (v13 >> 23);
      v27 = BWCIFilterArrayContainsPortraitEffectStageFilters(*(a1 + 48), 1);
      v28 = v15[106];
      AttachedMedia = BWSampleBufferGetAttachedMedia(target, v28);
      if (([objc_msgSend(CMGetAttachment(AttachedMedia *off_1E798A3C8] & 0xFFFE0000) != 0)
      {
        v30 = v27;
      }

      else
      {
        v30 = 0;
      }

      if (v30 == 1)
      {
        BWSampleBufferRemoveAttachedMedia(target, v28);
      }

      v31 = v16 | 0x200000;
      if (v26)
      {
        v31 = v16;
      }

      if (v9)
      {
        v32 = v31;
      }

      else
      {
        v32 = v16;
      }

      v33 = *(*(a1 + 40) + 272);
      if (v33)
      {
        goto LABEL_53;
      }

      v34 = BWSampleBufferGetAttachedMedia(target, 0x1F21AAE30);
      if (v34)
      {
        v34 = CFRetain(v34);
      }

      *(*(a1 + 40) + 272) = v34;
      v33 = *(*(a1 + 40) + 272);
      if (v33)
      {
LABEL_53:
        if ((v30 & 1) == 0)
        {
          BWSampleBufferSetAttachedMedia(target, v28, v33);
        }

        BWSampleBufferRemoveAttachedMedia(target, 0x1F21AAE30);
        v35 = *(*(a1 + 40) + 272);
        if (v35)
        {
          CFRelease(v35);
          *(*(a1 + 40) + 272) = 0;
        }
      }

      BWStillImageSetProcessingFlagsForSampleBuffer(target, v32);
      [(BWStillImageFilterNode *)*(a1 + 40) _emitSampleBufferAsync:?];
    }

    v25 = (a2 >> 1) & 1;
    if (!a2)
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      v67 = 0;
      v66 = OS_LOG_TYPE_DEFAULT;
      v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v40 = v67;
      if (os_log_type_enabled(v39, v66))
      {
        v41 = v40;
      }

      else
      {
        v41 = v40 & 0xFFFFFFFE;
      }

      if (v41)
      {
        v58 = 136315138;
        v59 = "[BWStillImageFilterNode renderSampleBuffer:forInput:]_block_invoke";
        _os_log_send_and_compose_impl();
      }

      v36 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOWORD(sampleBufferOut) = 0;
      v42 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v42, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFilterNode.m", 1022, @"LastShownDate:BWStillImageFilterNode.m:1022", @"LastShownBuild:BWStillImageFilterNode.m:1022", 0);
      free(v42);
      v24 = 0;
      v37 = -12780;
      goto LABEL_68;
    }

    v24 = 0;
    goto LABEL_60;
  }

  if (*(a1 + 76) == 1)
  {
    sampleBufferOut = 0;
    if (*(a1 + 77) == 1)
    {
      BWCMSampleBufferCreateCopyIncludingMetadata(target, &sampleBufferOut);
    }

    else
    {
      sampleBufferOut = CFRetain(target);
    }

    if (*(a1 + 78) == 1 && (*(a1 + 79) & 1) == 0)
    {
      CMSetAttachment(sampleBufferOut, @"SDOFCustomRendered", [MEMORY[0x1E696AD98] numberWithShort:9], 1u);
    }

    CMSetAttachment(sampleBufferOut, @"StillImageProcessingFlags", [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8 | 4u], 1u);
    [(BWStillImageFilterNode *)*(a1 + 40) _emitSampleBufferAsync:?];
    if (sampleBufferOut)
    {
      CFRelease(sampleBufferOut);
    }

    LODWORD(v25) = 0;
    v24 = 1;
    goto LABEL_60;
  }

LABEL_30:
  v24 = 0;
  LODWORD(v25) = 0;
LABEL_60:
  if (!*(a1 + 72))
  {
    goto LABEL_76;
  }

  v36 = 0;
  v37 = 0;
LABEL_68:
  v43 = CMGetAttachment(target, *off_1E798A3C8, 0);
  if (v36 && !v24 && (*(a1 + 76) & 1) != 0)
  {
    [(BWStillImageFilterNode *)*(a1 + 40) _emitNodeErrorForErrorStatus:v37 numberOfNodeErrors:1 stillImageSettings:*(a1 + 32) metadata:v43];
  }

  if ((v36 & (v25 ^ 1) & *(a1 + 77)) == 1)
  {
    [(BWStillImageFilterNode *)*(a1 + 40) _emitNodeErrorForErrorStatus:v37 numberOfNodeErrors:1 stillImageSettings:*(a1 + 32) metadata:v43];
  }

  v44 = *(a1 + 72);
  if (v44)
  {
    [(BWStillImageFilterNode *)*(a1 + 40) _emitNodeErrorForErrorStatus:v44 numberOfNodeErrors:1 stillImageSettings:*(a1 + 32) metadata:v43];
  }

LABEL_76:
  v45 = *(a1 + 40);
  v46 = v45[40];
  if (v46)
  {
    CFRelease(v46);
    *(*(a1 + 40) + 320) = 0;
    v45 = *(a1 + 40);
  }

  v47 = v45[42];
  if (v47)
  {
    CFRelease(v47);
    *(*(a1 + 40) + 336) = 0;
    v45 = *(a1 + 40);
  }

  v48 = v45[41];
  if (v48)
  {
    CFRelease(v48);
    *(*(a1 + 40) + 328) = 0;
  }

  v49 = *(a1 + 56);
  if (v49)
  {
    CFRelease(v49);
  }

  v50 = *(a1 + 64);
  if (v50)
  {
    CFRelease(v50);
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if ([(BWStillImageNodeConfiguration *)self->_nodeConfiguration optimizedEnhancedResolutionDepthPipelineEnabled:error])
  {
    -[BWStillImageFilterStatusDelegate filterNodeDidReceiveStandardResolutionDeepFusionBuffer:error:](self->_statusDelegate, "filterNodeDidReceiveStandardResolutionDeepFusionBuffer:error:", 0, [error errorCode]);
  }

  [(BWRenderListProcessor *)self->_renderListProcessor waitForAllProcessingToComplete];
  emitQueue = self->_emitQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__BWStillImageFilterNode_handleNodeError_forInput___block_invoke;
  v7[3] = &unk_1E798F898;
  v7[4] = error;
  v7[5] = self;
  dispatch_async(emitQueue, v7);
}

void *__51__BWStillImageFilterNode_handleNodeError_forInput___block_invoke(uint64_t a1)
{
  result = [objc_msgSend(objc_msgSend(*(a1 + 32) "stillImageSettings")];
  if (result >= 1)
  {
    v3 = 0;
    do
    {
      [*(*(a1 + 40) + 16) emitNodeError:*(a1 + 32)];
      ++v3;
      result = [objc_msgSend(objc_msgSend(*(a1 + 32) "stillImageSettings")];
    }

    while (v3 < result);
  }

  return result;
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  [(BWRenderListProcessor *)self->_renderListProcessor waitForAllProcessingToComplete];
  emitQueue = self->_emitQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__BWStillImageFilterNode_didReachEndOfDataForConfigurationID_input___block_invoke;
  v9[3] = &unk_1E798F898;
  v9[4] = self;
  v9[5] = d;
  dispatch_async(emitQueue, v9);
  if (d)
  {
    v8 = [objc_msgSend(input "videoFormat")];
    if (v8 != [objc_msgSend(input "videoFormat")])
    {
      [(BWStillImageFilterNode *)&self->super.super.isa _releaseResourcesForLiveReconfiguration];
    }
  }

  else
  {
    [(BWStillImageFilterNode *)self _releaseResources];
  }
}

void __49__BWStillImageFilterNode__emitSampleBufferAsync___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 16) emitSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __102__BWStillImageFilterNode__emitNodeErrorForErrorStatus_numberOfNodeErrors_stillImageSettings_metadata___block_invoke(uint64_t a1)
{
  if (*(a1 + 56) >= 1)
  {
    v12 = v6;
    v13 = v5;
    v14 = v4;
    v15 = v3;
    v16 = v2;
    v17 = v1;
    v18 = v7;
    v19 = v8;
    v10 = 0;
    do
    {
      v11 = [BWNodeError newError:*(a1 + 60) sourceNode:*(a1 + 32) stillImageSettings:*(a1 + 40) metadata:*(a1 + 48), v12, v13, v14, v15, v16, v17, v18, v19];
      [*(*(a1 + 32) + 16) emitNodeError:v11];

      ++v10;
    }

    while (v10 < *(a1 + 56));
  }
}

- (id)provideMetalFilterRenderer
{
  metalFilterRenderer = self->_metalFilterRenderer;
  if (!metalFilterRenderer)
  {
    metalFilterRenderer = [[BWMetalColorCubeRenderer alloc] initWithMetalCommandQueue:self->_mtlCommandQueue mixInGammaDomain:0];
    self->_metalFilterRenderer = metalFilterRenderer;
  }

  v4 = metalFilterRenderer;

  return v4;
}

- (id)_releaseResourcesForLiveReconfiguration
{
  if (result)
  {
    v1 = result;

    v1[53] = 0;
    v1[23] = 0;
    result = [v1[16] deferredPhotoProcessorEnabled];
    if (result)
    {
      *(v1 + 464) = 0;
    }
  }

  return result;
}

- (void)_releaseResources
{
  if (self)
  {
    if (dword_1EB58E360)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(self + 448) = 0;
    *(self + 456) = 0;
  }
}

- (void)dealloc
{
  if (self && [(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled])
  {
    v3 = NSClassFromString(&cfstr_Espressowrappe.isa);
    [(objc_class *)v3 performSelector:NSSelectorFromString(&cfstr_Clearcache.isa)];
  }

  [(BWStillImageFilterNode *)&self->super.super.isa _releaseResourcesForLiveReconfiguration];
  [(BWStillImageFilterNode *)self _releaseResources];

  self->_rendererProvider = 0;
  faceAdjustedBlurMapFromStandardResolutionImage = self->_faceAdjustedBlurMapFromStandardResolutionImage;
  if (faceAdjustedBlurMapFromStandardResolutionImage)
  {
    CFRelease(faceAdjustedBlurMapFromStandardResolutionImage);
  }

  blurredGainMapSbuf = self->_blurredGainMapSbuf;
  if (blurredGainMapSbuf)
  {
    CFRelease(blurredGainMapSbuf);
  }

  portraitStillImageAuxDepthMetadata = self->_portraitStillImageAuxDepthMetadata;
  if (portraitStillImageAuxDepthMetadata)
  {
    CFRelease(portraitStillImageAuxDepthMetadata);
  }

  unstyledFullResolutionSbuf = self->_unstyledFullResolutionSbuf;
  if (unstyledFullResolutionSbuf)
  {
    CFRelease(unstyledFullResolutionSbuf);
  }

  styledFullResolutionSbuf = self->_styledFullResolutionSbuf;
  if (styledFullResolutionSbuf)
  {
    CFRelease(styledFullResolutionSbuf);
  }

  learnedCoefficientsSbuf = self->_learnedCoefficientsSbuf;
  if (learnedCoefficientsSbuf)
  {
    CFRelease(learnedCoefficientsSbuf);
  }

  portraitDownsamplingTransferSession = self->_portraitDownsamplingTransferSession;
  if (portraitDownsamplingTransferSession)
  {
    CFRelease(portraitDownsamplingTransferSession);
  }

  v11.receiver = self;
  v11.super_class = BWStillImageFilterNode;
  [(BWNode *)&v11 dealloc];
}

- (uint64_t)_ensureResourcesWithSharedMetalAllocatorBackend:(uint64_t)backend
{
  if (!backend)
  {
    return 0;
  }

  _ensureOutputBufferPool = [(BWStillImageFilterNode *)backend _ensureOutputBufferPool];
  if (_ensureOutputBufferPool)
  {
    v6 = _ensureOutputBufferPool;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v12, v13, v14, v15, v16, v17, v18, v19);
    return v6;
  }

  if (!*(backend + 184))
  {
    v5 = [[BWRenderListProcessor alloc] initWithRenderingPool:*(backend + 424)];
    *(backend + 184) = v5;
    if (!v5)
    {
      return 4294954510;
    }
  }

  if (*(backend + 400) != 1 || (*(backend + 464) & 1) != 0)
  {
    return 0;
  }

  v7 = [objc_msgSend(*(backend + 136) objectForKeyedSubscript:{*(backend + 160)), "sensorIDDictionary"}];

  LODWORD(v8) = *(backend + 168);
  v9 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v7 zoomFactor:v8];
  *(backend + 368) = v9;
  if (!v9)
  {
    return 4294954513;
  }

  *(backend + 352) = *(backend + 160);
  *(backend + 360) = *(backend + 168);
  v10 = [objc_msgSend(*(backend + 368) objectForKeyedSubscript:{@"Version", "intValue"}];
  *(backend + 240) = [*(backend + 368) objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"HairNetV%d", v10)}] != 0;
  if ([*(backend + 128) deferredPhotoProcessorEnabled])
  {

    *(backend + 456) = a2;
    [*(backend + 192) provideStillImageCoreImageBlurMapRenderer];
    [*(backend + 248) prepareForRenderingWithParameters:0 inputVideoFormat:*(backend + 432) inputMediaPropertiesByAttachedMediaKey:0];
  }

  else
  {
    [*(backend + 192) provideStillImageMetalSDOFRenderer];
    [*(backend + 192) provideStillImageMetalBlurMapRenderer];
  }

  v6 = 0;
  *(backend + 464) = 1;
  return v6;
}

- (uint64_t)_ensureOutputBufferPool
{
  if (result)
  {
    v1 = result;
    if (*(result + 424))
    {
      return 0;
    }

    v2 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [objc_msgSend(*(result + 8) "videoFormat")]);
    v3 = v2;
    if (*(v1 + 152) != 0.0)
    {
      v4 = FigCaptureMetadataUtilitiesEnforceAspectRatioWithStillImageDimensions([(BWVideoFormatRequirements *)v2 width]| ([(BWVideoFormatRequirements *)v2 height]<< 32), *(v1 + 152));
      [(BWVideoFormatRequirements *)v3 setWidth:v4];
      [(BWVideoFormatRequirements *)v3 setHeight:v4 >> 32];
    }

    v61 = v3;
    v5 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v61 count:1]);
    if (*(v1 + 412) == 2)
    {
      v6 = 0x5E8000007E0;
      v7 = [objc_msgSend(*(v1 + 8) "videoFormat")];
      if (v7 == [objc_msgSend(*(v1 + 8) "videoFormat")])
      {
        v6 = FigCaptureSquareDimensionsUsingLongerDimension(0x5E8000007E0);
      }

      v8 = *(v1 + 152);
      if (v8 <= 0.0)
      {
        width = [(BWVideoFormatRequirements *)v3 width];
        v8 = width / [(BWVideoFormatRequirements *)v3 height];
      }

      v10 = __ROR8__(v6, 32);
      v11 = v8 >= 1.0 ? v6 : v10;
      *(v1 + 384) = v11;
      v12 = HIDWORD(v11);
    }

    else if ([*(v1 + 128) optimizedEnhancedResolutionDepthPipelineEnabled])
    {
      *(v1 + 384) = [OUTLINED_FUNCTION_15_23() deepFusionEnhancedResolutionDimensions];
      dimensions = [v5 dimensions];
      v12 = HIDWORD(dimensions);
      LODWORD(v11) = dimensions;
    }

    else
    {
      downgradedDeepFusionEnhancedResolutionDimensions = [OUTLINED_FUNCTION_15_23() downgradedDeepFusionEnhancedResolutionDimensions];
      if (downgradedDeepFusionEnhancedResolutionDimensions < 1 || SHIDWORD(downgradedDeepFusionEnhancedResolutionDimensions) < 1)
      {
        *(v1 + 384) = [v5 dimensions];
        LODWORD(v11) = *(v1 + 384);
        v12 = *(v1 + 388);
      }

      else
      {
        *(v1 + 384) = [OUTLINED_FUNCTION_15_23() downgradedDeepFusionEnhancedResolutionDimensions];
        dimensions2 = [v5 dimensions];
        v12 = HIDWORD(dimensions2);
        LODWORD(v11) = dimensions2;
      }
    }

    if ([OUTLINED_FUNCTION_15_23() deferredPhotoProcessorEnabled])
    {
      [(BWStillImageFilterNode *)v1 _ensureCCPortraitLoaded];
      v23 = v11 | (v12 << 32);
      [NSClassFromString(&cfstr_Makeblurmap.isa) blurMapSize:v11, v12];
      HIDWORD(v27) = MEMORY[0x1E695F064];
      if (v25 == *MEMORY[0x1E695F060] && v26 == *(MEMORY[0x1E695F060] + 8))
      {
        FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
        OUTLINED_FUNCTION_11_31();
        OUTLINED_FUNCTION_10_31();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        HIDWORD(v44) = v59;
        v31 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v59);
        v32 = v60 & 0xFFFFFFFE;
        if (v31)
        {
          v32 = v60;
        }

        v46 = FrameworkRadarComponent;
        if (v32)
        {
          v53 = 136315394;
          v54 = "[BWStillImageFilterNode _ensureOutputBufferPool]";
          v55 = 2112;
          v56 = BWStringFromDimensions();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_8_1();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v57 = 138412290;
        v58 = BWStringFromDimensions();
        v36 = OUTLINED_FUNCTION_6_0(v58, v33, v34, v35, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        FigCapturePleaseFileRadar(FrameworkRadarComponent, v36, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFilterNode.m", 1561, @"LastShownDate:BWStillImageFilterNode.m:1561", @"LastShownBuild:BWStillImageFilterNode.m:1561", 0);
        free(v36);
      }

      else
      {
        LODWORD(v27) = llround(v25);
        LODWORD(v24) = llround(v26);
        v29 = FigCaptureScaledDimensions(v27 | (v24 << 32), 2.0);
        if (v23 == v29)
        {
          v12 = v12;
        }

        else
        {
          v12 = HIDWORD(v29);
        }

        if (v23 != v29)
        {
          LODWORD(v11) = v29;
        }
      }
    }

    *(v1 + 392) = FigCaptureScaledDimensions(v11 | (v12 << 32), 0.5);
    v17 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v17 setWidth:v11];
    [(BWVideoFormatRequirements *)v17 setHeight:v12];
    [(BWVideoFormatRequirements *)v17 setSupportedPixelFormats:&unk_1F2248C10];
    [OUTLINED_FUNCTION_13_29() setBytesPerRowAlignment:?];
    [OUTLINED_FUNCTION_13_29() setPlaneAlignment:?];
    [(BWVideoFormatRequirements *)v17 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
    if ([v5 colorSpaceProperties])
    {
      v52 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "colorSpaceProperties")}];
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    }

    else
    {
      v18 = 0;
    }

    [(BWVideoFormatRequirements *)v17 setSupportedColorSpaceProperties:v18];

    v51 = v17;
    *(v1 + 432) = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1]);

    v19 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v19 setWidth:*(v1 + 384)];
    [(BWVideoFormatRequirements *)v19 setHeight:*(v1 + 388)];
    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v5, "pixelFormat")}];
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v19, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1]);
    [OUTLINED_FUNCTION_13_29() setBytesPerRowAlignment:?];
    [OUTLINED_FUNCTION_13_29() setPlaneAlignment:?];
    [(BWVideoFormatRequirements *)v19 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
    if ([v5 colorSpaceProperties])
    {
      v49 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v5, "colorSpaceProperties")}];
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
    }

    else
    {
      v20 = 0;
    }

    [(BWVideoFormatRequirements *)v19 setSupportedColorSpaceProperties:v20];

    v48 = v19;
    deferredPhotoProcessorEnabled = 1;
    *(v1 + 376) = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1]);

    if ((*(v1 + 172) & 1) == 0)
    {
      deferredPhotoProcessorEnabled = [*(v1 + 128) deferredPhotoProcessorEnabled];
    }

    LOBYTE(v40) = deferredPhotoProcessorEnabled;
    v22 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:clientProvidesPool:memoryPool:providesBackPressure:reportSlowBackPressureAllocations:", *(v1 + 376), 2, @"Still Image Filter Processing Pool", 0, [*(v1 + 16) memoryPool], deferredPhotoProcessorEnabled, v40);
    *(v1 + 424) = v22;
    if (v22)
    {
      return 0;
    }

    else
    {
      v37 = v47;
      LODWORD(v41) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v41, v47, v43, v44, os_log_and_send_and_compose_flags_and_os_log_type, v46, v47, v48);
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58E358, 0xFFFFCE0ELL, "<<<< BWStillImageFilterNode >>>>", 0x63F, v37, v38, v39, v42);
    }
  }

  return result;
}

- (void)handleStillImagePrewarmWithSettings:(id)settings resourceConfig:(id)config forInput:(id)input
{
  [(BWStillImageFilterNode *)self _ensureCCPortraitLoaded];
  -[BWStillImageFilterNode _ensureResourcesWithSharedMetalAllocatorBackend:](self, [config sharedMetalAllocatorBackend]);
  [(BWRenderListProcessor *)self->_renderListProcessor waitForAllProcessingToComplete];
  emitQueue = self->_emitQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__BWStillImageFilterNode_handleStillImagePrewarmWithSettings_resourceConfig_forInput___block_invoke;
  block[3] = &unk_1E798FD58;
  block[4] = self;
  block[5] = settings;
  block[6] = config;
  dispatch_async(emitQueue, block);
}

- (uint64_t)_ensureCCPortraitLoaded
{
  if (result)
  {
    v1 = result;
    result = [*(result + 128) deferredPhotoProcessorEnabled];
    if (result)
    {
      if (*(v1 + 208))
      {
        return 0;
      }

      else if (BWLoadProcessorBundle(@"CCPortrait", 0xFFFFFFFFLL))
      {
        result = 0;
        *(v1 + 208) = 1;
      }

      else
      {
        OUTLINED_FUNCTION_0_8();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v2, v3, v4, v5, v6, vars0, vars8);
        return 4294954510;
      }
    }
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  sampleBufferOut[0] = 0;
  v7 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
  v8 = "[BWStillImageFilterNode renderSampleBuffer:forInput:]";
  if (buffer)
  {
    v10 = CMGetAttachment(buffer, @"StillSettings", 0);
    if (v10)
    {
      [(BWStillImageFilterNode *)self _ensureResourcesWithSharedMetalAllocatorBackend:?];
      [(BWRenderListProcessor *)self->_renderListProcessor waitForAllProcessingToComplete];
      v11 = *off_1E798A3C8;
      v144 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
      if (v144)
      {
        key = v11;
        v142 = 184;
        target = buffer;
        v140 = v5;
        captureSettings = [v10 captureSettings];
        requestedSettings = [v10 requestedSettings];
        v148 = v10;
        v13 = [objc_msgSend(v10 "processingSettings")];
        originalImageFilters = [requestedSettings originalImageFilters];
        processedImageFilters = [requestedSettings processedImageFilters];
        v191 = 0u;
        v192 = 0u;
        v193 = 0u;
        v194 = 0u;
        photoDescriptors = [v13 photoDescriptors];
        v15 = [photoDescriptors countByEnumeratingWithState:&v191 objects:v190 count:16];
        if (v15)
        {
          v16 = v15;
          LODWORD(v8) = 0;
          v17 = 0;
          v18 = *v192;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v192 != v18)
              {
                objc_enumerationMutation(photoDescriptors);
              }

              processingFlags = [*(*(&v191 + 1) + 8 * i) processingFlags];
              LODWORD(v8) = v8 | ((processingFlags & 4) >> 2);
              v17 |= (processingFlags & 8) >> 3;
            }

            v16 = [photoDescriptors countByEnumeratingWithState:&v191 objects:v190 count:16];
          }

          while (v16);
        }

        else
        {
          LODWORD(v8) = 0;
          v17 = 0;
        }

        v21 = target;
        v22 = [CMGetAttachment(target @"StillImageBufferFrameType"];
        v23 = BWStillImageProcessingFlagsForSampleBuffer(target) & 0x200040;
        optimizedEnhancedResolutionDepthPipelineEnabled = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration optimizedEnhancedResolutionDepthPipelineEnabled];
        v25 = v22 == 13;
        if (optimizedEnhancedResolutionDepthPipelineEnabled && v25)
        {
          v26 = 0;
        }

        else
        {
          v26 = target;
        }

        if (optimizedEnhancedResolutionDepthPipelineEnabled && v25)
        {
          v27 = target;
        }

        else
        {
          v27 = 0;
        }

        if (v22 == 40)
        {
          [(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled];
          unstyledFullResolutionSbuf = self->_unstyledFullResolutionSbuf;
          self->_unstyledFullResolutionSbuf = target;
          CFRetain(target);
          if (unstyledFullResolutionSbuf)
          {
            CFRelease(unstyledFullResolutionSbuf);
          }

          v26 = self->_unstyledFullResolutionSbuf;
          cf = self->_styledFullResolutionSbuf;
          v21 = target;
        }

        else
        {
          cf = v26;
        }

        if (v23 == 0x200000)
        {
          [(BWStillImageNodeConfiguration *)self->_nodeConfiguration deferredPhotoProcessorEnabled];
          learnedCoefficientsSbuf = self->_learnedCoefficientsSbuf;
          AttachedMedia = BWSampleBufferGetAttachedMedia(v21, 0x1F21AAFD0);
          self->_learnedCoefficientsSbuf = AttachedMedia;
          if (AttachedMedia)
          {
            CFRetain(AttachedMedia);
          }

          if (learnedCoefficientsSbuf)
          {
            CFRelease(learnedCoefficientsSbuf);
          }

          styledFullResolutionSbuf = self->_styledFullResolutionSbuf;
          self->_styledFullResolutionSbuf = v21;
          CFRetain(v21);
          if (styledFullResolutionSbuf)
          {
            CFRelease(styledFullResolutionSbuf);
          }

          cf = self->_styledFullResolutionSbuf;
          v26 = self->_unstyledFullResolutionSbuf;
        }

        v151 = v27;
        sbuf = v26;
        if (v27)
        {
          v32 = v27;
        }

        else
        {
          v32 = v26;
        }

        v147 = v32;
        v33 = CMGetAttachment(v32, *off_1E798D2B8, 0);
        v34 = 0x1E696A000;
        if (v33)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            OUTLINED_FUNCTION_12_34(cf);
          }

          else
          {
            v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v33];
            OUTLINED_FUNCTION_12_34(v147);
            OUTLINED_FUNCTION_12_34(cf);
          }

          [requestedSettings simulatedAperture];
          v7 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
          if (v35 > 0.0)
          {
            v36 = MEMORY[0x1E696AD98];
            [requestedSettings simulatedAperture];
            v37 = v36;
            v34 = 0x1E696A000uLL;
            [v33 setObject:objc_msgSend(v37 forKeyedSubscript:{"numberWithFloat:"), *off_1E798CEF8}];
          }

          [requestedSettings portraitLightingEffectStrength];
          v38 = *(v34 + 3480);
          [requestedSettings portraitLightingEffectStrength];
          [v33 setObject:objc_msgSend(v38 forKeyedSubscript:{"numberWithFloat:"), *off_1E798D220}];
        }

        else
        {
          v7 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
        }

        optimizedEnhancedResolutionDepthPipelineEnabled2 = [(BWStillImageNodeConfiguration *)self->_nodeConfiguration optimizedEnhancedResolutionDepthPipelineEnabled];
        if (optimizedEnhancedResolutionDepthPipelineEnabled2)
        {
          if (v151)
          {
            [(BWStillImageFilterStatusDelegate *)self->_statusDelegate filterNodeDidReceiveStandardResolutionDeepFusionBuffer:self error:0];
            coreImageBlurMapRenderer = self->_coreImageBlurMapRenderer;
            ImageBuffer = CMSampleBufferGetImageBuffer(v21);
            v189[0] = MEMORY[0x1E69E9820];
            v189[1] = 3221225472;
            v189[2] = __54__BWStillImageFilterNode_renderSampleBuffer_forInput___block_invoke;
            v189[3] = &unk_1E7998930;
            v189[4] = self;
            v189[5] = v21;
            [(BWStillImageCoreImageBlurMapRenderer *)coreImageBlurMapRenderer renderUsingParameters:0 inputPixelBuffer:ImageBuffer inputSampleBuffer:v21 originalPixelBuffer:0 processedPixelBuffer:0 completionHandler:v189];
            code = 0;
LABEL_46:
            v50 = 0;
LABEL_47:
            v10 = v148;
            goto LABEL_113;
          }

          if (sbuf && cf)
          {
            v187 = 0u;
            v188 = 0u;
            v185 = 0u;
            v186 = 0u;
            selfCopy = self;
            attachedMediaFromStandardResolutionImage = self->_attachedMediaFromStandardResolutionImage;
            v53 = OUTLINED_FUNCTION_17_22(optimizedEnhancedResolutionDepthPipelineEnabled2, v40, v41, v42, v43, v44, v45, v46, v134, v135, v136, v137, v33, v5, key, 184, originalImageFilters, v144, captureSettings, processedImageFilters, v147, v148, target, cf, 280, sbuf, v155, v156, v157, v158, v159, selfCopy2, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
            if (v53)
            {
              v54 = v53;
              v55 = *v186;
              do
              {
                for (j = 0; j != v54; ++j)
                {
                  if (*v186 != v55)
                  {
                    objc_enumerationMutation(attachedMediaFromStandardResolutionImage);
                  }

                  v57 = *(*(&v185 + 1) + 8 * j);
                  isEqualToString = objc_msgSend_isEqualToString_(v57);
                  if ((isEqualToString & 1) == 0)
                  {
                    BWSampleBufferSetAttachedMedia(cf, v57, [*(&selfCopy->super.super.isa + v152) objectForKeyedSubscript:v57]);
                    if (cf != sbuf)
                    {
                      BWSampleBufferSetAttachedMedia(sbuf, v57, [*(&selfCopy->super.super.isa + v152) objectForKeyedSubscript:v57]);
                    }
                  }
                }

                v54 = OUTLINED_FUNCTION_17_22(isEqualToString, v59, v60, v61, v62, v63, v64, v65, v134, v135, v136, v138, v139, v140, key, v142, originalImageFilters, v144, captureSettings, processedImageFilters, v147, v148, target, cf, v152, sbuf, v155, v156, v157, v158, v159, selfCopy2, v161, v162, v163, v164, *v165, *&v165[8], *&v165[16], v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181, v182, v183, v184);
              }

              while (v54);
            }

            sifn_mergeInferenceResults(cf, selfCopy->_inferenceResultsFromStandardResolutionImage);
            if (cf != sbuf)
            {
              sifn_mergeInferenceResults(sbuf, selfCopy->_inferenceResultsFromStandardResolutionImage);
            }

            v137 = 288;
            CMSetAttachment(cf, @"PortraitStillImageAuxDepthMetadata", selfCopy->_portraitStillImageAuxDepthMetadata, 1u);
            v66 = selfCopy;
            CMSetAttachment(cf, @"PortraitStillImageFaceAdjustedBlurMap", selfCopy->_faceAdjustedBlurMapFromStandardResolutionImage, 1u);
            if (cf != sbuf)
            {
              CMSetAttachment(sbuf, @"PortraitStillImageAuxDepthMetadata", selfCopy->_portraitStillImageAuxDepthMetadata, 1u);
              CMSetAttachment(sbuf, @"PortraitStillImageFaceAdjustedBlurMap", selfCopy->_faceAdjustedBlurMapFromStandardResolutionImage, 1u);
            }

            faceAdjustedBlurMapFromStandardResolutionImage = selfCopy->_faceAdjustedBlurMapFromStandardResolutionImage;
            v7 = &OBJC_IVAR___BWAutoSuggestTracker__ObjectAreaIn;
            if (faceAdjustedBlurMapFromStandardResolutionImage)
            {
              CFRelease(faceAdjustedBlurMapFromStandardResolutionImage);
              v66->_faceAdjustedBlurMapFromStandardResolutionImage = 0;
            }

            portraitStillImageAuxDepthMetadata = v66->_portraitStillImageAuxDepthMetadata;
            self = v66;
            v33 = v139;
            if (portraitStillImageAuxDepthMetadata)
            {
              CFRelease(portraitStillImageAuxDepthMetadata);
              v66->_portraitStillImageAuxDepthMetadata = 0;
            }

            *(&v66->super.super.isa + v152) = 0;
            v66->_inferenceResultsFromStandardResolutionImage = 0;
            v21 = target;
          }
        }

        code = 0;
        if (!cf || ((sbuf == 0) & v17) != 0)
        {
          v50 = 0;
          goto LABEL_47;
        }

        if ([captureSettings captureType] == 3)
        {
          LOBYTE(v69) = 1;
        }

        else
        {
          if ([captureSettings captureType] != 10)
          {
            v153 = 0;
LABEL_77:
            v70 = BWCIFilterArrayContainsPortraitFilters(processedImageFilters);
            v71 = BWCIFilterArrayOnlyContainsPortraitFilters(processedImageFilters);
            v72 = [objc_msgSend(v33 objectForKeyedSubscript:{*off_1E798D008), "intValue"}];
            v73 = BWSampleBufferGetAttachedMedia(v147, @"Depth");
            v74 = v73;
            if (v70)
            {
              if (v73)
              {
                v75 = v72 == 1;
              }

              else
              {
                v75 = 0;
              }

              v76 = v75;
            }

            else
            {
              v76 = 0;
            }

            if (v17 & v71 & 1) == 0 || (v76)
            {
              blurMapRenderErrorFromStandardResolutionImage = self->_blurMapRenderErrorFromStandardResolutionImage;
              if (blurMapRenderErrorFromStandardResolutionImage)
              {
                code = [(NSError *)blurMapRenderErrorFromStandardResolutionImage code];
                OUTLINED_FUNCTION_11_31();
                OUTLINED_FUNCTION_10_31();
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                if (OUTLINED_FUNCTION_18_18(os_log_and_send_and_compose_flags_and_os_log_type))
                {
                  v86 = v74;
                }

                else
                {
                  v86 = v74 & 0xFFFFFFFE;
                }

                if (v86)
                {
                  v87 = self->_blurMapRenderErrorFromStandardResolutionImage;
                  *v165 = 136315394;
                  *&v165[4] = "[BWStillImageFilterNode renderSampleBuffer:forInput:]";
                  *&v165[12] = 2114;
                  *&v165[14] = v87;
                  OUTLINED_FUNCTION_76();
                  OUTLINED_FUNCTION_5_0(v88, v89, v195, v90, &dword_1AC90E000);
                }

                v21 = target;
                OUTLINED_FUNCTION_8_36();
                fig_log_call_emit_and_clean_up_after_send_and_compose();

                v17 = 0;
                self->_blurMapRenderErrorFromStandardResolutionImage = 0;
              }

              else
              {
                code = 0;
              }
            }

            else
            {
              OUTLINED_FUNCTION_11_31();
              OUTLINED_FUNCTION_10_31();
              v77 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v78 = v197;
              if (os_log_type_enabled(v77, v196))
              {
                v79 = v78;
              }

              else
              {
                v79 = v78 & 0xFFFFFFFE;
              }

              if (v79)
              {
                v80 = v76;
                if (v74)
                {
                  v81 = @"low quality";
                }

                else
                {
                  v81 = @"missing";
                }

                *v165 = 136315906;
                *&v165[4] = "[BWStillImageFilterNode renderSampleBuffer:forInput:]";
                *&v165[12] = 2114;
                *&v165[14] = v81;
                v76 = v80;
                *&v165[22] = 2050;
                v166 = BWStillImageCaptureIDForSampleBuffer(target);
                LOWORD(v167) = 1026;
                *(&v167 + 2) = -16809;
                OUTLINED_FUNCTION_76();
                OUTLINED_FUNCTION_5_0(v79, v82, v195, v83, &dword_1AC90E000);
              }

              OUTLINED_FUNCTION_8_36();
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v17 = 0;
              code = -16809;
              v21 = target;
            }

            if (((v8 | v17) & 1) == 0)
            {
              v91 = self->_unstyledFullResolutionSbuf;
              if (v91)
              {
                CFRelease(v91);
                self->_unstyledFullResolutionSbuf = 0;
              }

              v92 = self->_learnedCoefficientsSbuf;
              v10 = v148;
              if (v92)
              {
                CFRelease(v92);
                self->_learnedCoefficientsSbuf = 0;
              }

              v93 = v7[850];
              v94 = *(&self->super.super.isa + v93);
              if (v94)
              {
                CFRelease(v94);
                *(&self->super.super.isa + v93) = 0;
              }

              [(BWStillImageFilterNode *)self _emitSampleBufferAsync:v21];
              LOBYTE(v8) = 0;
LABEL_112:
              v50 = 0;
              goto LABEL_113;
            }

            v100 = BWPixelBufferDimensionsFromSampleBuffer(v21);
            [(BWStillImageFilterNode *)self _prepareStillImageFilterRenderersForOriginalFilters:originalImageFilters processedFilters:processedImageFilters metadata:v144 settings:v148 inputDimensions:v100];
            if (v8)
            {
              v101 = CFRetain(cf);
              sampleBufferOut[0] = v101;
LABEL_145:
              if (!v101)
              {
                goto LABEL_46;
              }

              v110 = CMSampleBufferGetImageBuffer(v101);
              if (v110)
              {
                v111 = v110;
                BWSampleBufferSetAttachedMedia(sampleBufferOut[0], 0x1F21AAFD0, self->_learnedCoefficientsSbuf);
                CFRetain(cf);
                if (sbuf)
                {
                  CFRetain(sbuf);
                }

                v112 = *(&self->super.super.isa + v142);
                renderList = self->_renderList;
                v155 = MEMORY[0x1E69E9820];
                v156 = 3221225472;
                v157 = __54__BWStillImageFilterNode_renderSampleBuffer_forInput___block_invoke_86;
                v158 = &unk_1E7998958;
                BYTE4(v164) = v8 & 1;
                BYTE5(v164) = v17 & 1;
                BYTE6(v164) = v76;
                HIBYTE(v164) = v153;
                v10 = v148;
                v159 = v148;
                selfCopy2 = self;
                v161 = processedImageFilters;
                v162 = cf;
                LODWORD(v164) = code;
                v163 = sbuf;
                [v112 processRenderList:renderList inputPixelBuffer:v111 inputSampleBuffer:sampleBufferOut[0] resultHandler:&v155];
                goto LABEL_112;
              }

              OUTLINED_FUNCTION_0();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v134, v135, v136, v137, v139, v140, key, v142);
LABEL_167:
              v50 = -12780;
              goto LABEL_47;
            }

            if (sbuf)
            {
              v102 = v76;
              if (self->_portraitRenderQuality == 2)
              {
                v103 = CMSampleBufferGetImageBuffer(sbuf);
                if (!v103)
                {
                  OUTLINED_FUNCTION_0();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v134, v135, v136, v137, v139, v140, key, v142);
                  LOBYTE(v8) = 0;
                  goto LABEL_167;
                }

                height = self->_outputDimensions.height;
                v105 = CVPixelBufferGetHeight(v103);
                [(BWStillImageFilterNode *)self _downsampleImageForSampleBuffer:sampleBufferOut outputSampleBuffer:*&self->_outputDimensions dimensions:?];
                if (!sampleBufferOut[0])
                {
                  OUTLINED_FUNCTION_0();
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v134, v135, v136, v137, v139, v140, key, v142);
                  LOBYTE(v8) = 0;
                  goto LABEL_46;
                }

                v106 = height / v105;
                v107 = [v144 mutableCopy];
                v108 = 1;
                CMSetAttachment(sampleBufferOut[0], key, v107, 1u);
                *&v109 = v106;
                [v107 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v109), *off_1E798A780}];

                goto LABEL_140;
              }

              BWCMSampleBufferCreateCopyIncludingMetadata(sbuf, sampleBufferOut);
            }

            else
            {
              v102 = v76;
            }

            v108 = 0;
LABEL_140:
            if (v102 && (v153 & 1) == 0)
            {
              CMSetAttachment(cf, @"SDOFCustomRendered", [MEMORY[0x1E696AD98] numberWithShort:9], 1u);
            }

            [(BWStillImageFilterNode *)self _emitSampleBufferAsync:?];
            if (v108)
            {
              v114 = [(BWStillImageFilterNode *)self _downsampleAttachedMediaForSampleBuffer:?];
              if (v114)
              {
                v50 = v114;
                OUTLINED_FUNCTION_1_5();
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v134, v135, v136, v137, v139, v140, key, v142);
                LOBYTE(v8) = 0;
                goto LABEL_47;
              }
            }

            v101 = sampleBufferOut[0];
            LOBYTE(v76) = v102;
            goto LABEL_145;
          }

          v69 = ([captureSettings captureFlags] >> 20) & 1;
        }

        v153 = v69;
        goto LABEL_77;
      }

      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      OUTLINED_FUNCTION_11_31();
      OUTLINED_FUNCTION_10_31();
      v122 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      if (os_log_type_enabled(v122, v196))
      {
        v123 = v197;
      }

      else
      {
        v123 = v197 & 0xFFFFFFFE;
      }

      if (v123)
      {
        *v165 = 136315138;
        *&v165[4] = "[BWStillImageFilterNode renderSampleBuffer:forInput:]";
        OUTLINED_FUNCTION_76();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_8_1();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      OUTLINED_FUNCTION_14_25();
      v133 = OUTLINED_FUNCTION_6_0(v129, v130, v131, v132, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v133, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFilterNode.m", 598, @"LastShownDate:BWStillImageFilterNode.m:598", @"LastShownBuild:BWStillImageFilterNode.m:598", 0);
      free(v133);
    }
  }

  else
  {
    v115 = FigCaptureGetFrameworkRadarComponent();
    OUTLINED_FUNCTION_11_31();
    OUTLINED_FUNCTION_10_31();
    v116 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    if (OUTLINED_FUNCTION_18_18(v116))
    {
      v117 = v4;
    }

    else
    {
      v117 = v4 & 0xFFFFFFFE;
    }

    if (v117)
    {
      *v165 = 136315138;
      *&v165[4] = "[BWStillImageFilterNode renderSampleBuffer:forInput:]";
      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_5_0(v118, v119, v195, v120, &dword_1AC90E000);
    }

    OUTLINED_FUNCTION_8_1();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_14_25();
    v128 = OUTLINED_FUNCTION_6_0(v124, v125, v126, v127, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    FigCapturePleaseFileRadar(v115, v128, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFilterNode.m", 585, @"LastShownDate:BWStillImageFilterNode.m:585", @"LastShownBuild:BWStillImageFilterNode.m:585", 0);
    free(v128);
    v10 = 0;
  }

  v144 = 0;
  code = 0;
  v50 = -12780;
LABEL_113:
  if (sampleBufferOut[0])
  {
    CFRelease(sampleBufferOut[0]);
  }

  if (!v50)
  {
    if (v8 & 1 | (code == 0))
    {
      return;
    }

    v95 = 1;
    v50 = code;
LABEL_129:
    [(BWStillImageFilterNode *)self _emitNodeErrorForErrorStatus:v50 numberOfNodeErrors:v95 stillImageSettings:v10 metadata:v144];
    return;
  }

  if (v10)
  {
    v95 = [objc_msgSend(v10 "processingSettings")];
  }

  else
  {
    v95 = 2;
  }

  v96 = self->_unstyledFullResolutionSbuf;
  if (v96)
  {
    CFRelease(v96);
    self->_unstyledFullResolutionSbuf = 0;
  }

  v97 = self->_learnedCoefficientsSbuf;
  if (v97)
  {
    CFRelease(v97);
    self->_learnedCoefficientsSbuf = 0;
  }

  v98 = v7[850];
  v99 = *(&self->super.super.isa + v98);
  if (v99)
  {
    CFRelease(v99);
    *(&self->super.super.isa + v98) = 0;
  }

  if (v95 >= 1)
  {
    goto LABEL_129;
  }
}

- (void)_prepareStillImageFilterRenderersForOriginalFilters:(id)filters processedFilters:(void *)processedFilters metadata:(void *)metadata settings:(uint64_t)settings inputDimensions:
{
  if (!self)
  {
    goto LABEL_31;
  }

  if ([*(self + 128) deferredPhotoProcessorEnabled])
  {
    v11 = [filters mutableCopy];
    if ([filters count])
    {
      v12 = 0;
      while (!objc_msgSend_isEqualToString_([objc_msgSend(filters objectAtIndex:{v12), "name"}]))
      {
        if ([filters count] <= ++v12)
        {
          goto LABEL_9;
        }
      }

      [v11 removeObjectAtIndex:v12];
      [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffectMakeBlurMap"];
      [OUTLINED_FUNCTION_36() insertObject:? atIndex:?];
      [MEMORY[0x1E695F648] filterWithName:@"CIDepthEffectApplyBlurMap"];
      [OUTLINED_FUNCTION_36() addObject:?];
    }

LABEL_9:
    filters = v11;
  }

  v51 = *(self + 176);
  [a2 valueForKeyPath:@"name"];
  v13 = [OUTLINED_FUNCTION_36() setWithArray:?];
  [filters valueForKeyPath:@"name"];
  [OUTLINED_FUNCTION_36() setWithArray:?];
  if ([v13 isEqualToSet:{objc_msgSend(*(self + 176), "originalFilterNames")}])
  {
    [*(self + 176) processedFilterNames];
    v14 = [OUTLINED_FUNCTION_36() isEqualToSet:?] ^ 1;
  }

  else
  {
    LOBYTE(v14) = 1;
  }

  if (*(self + 400) == 1)
  {
    if ([*(self + 136) count] < 2)
    {
      v15 = *(self + 160);
    }

    else
    {
      v15 = [processedFilters objectForKeyedSubscript:*off_1E798B540];
    }

    FinalCropRect = FigCaptureMetadataUtilitiesGetFinalCropRect(processedFilters);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v28 = [objc_msgSend(metadata "requestedSettings")];
    v29.n128_f64[0] = v28 / [objc_msgSend(metadata "requestedSettings")];
    v30.n128_f64[0] = FinalCropRect;
    v31.n128_u64[0] = v25;
    v32.n128_u64[0] = v27;
    FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(settings, settings >> 32, v30, v23, v31, v32, v29, v33);
    height = v53.size.height;
    if (CGRectIsNull(v53))
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      if ([objc_msgSend(metadata "requestedSettings")])
      {
        [objc_msgSend(objc_msgSend(metadata "captureSettings")];
        v36 = v35;
        v37 = 1.0;
        if (v36 > 1.0)
        {
          [objc_msgSend(objc_msgSend(metadata "captureSettings")];
        }
      }

      else
      {
        v38 = [objc_msgSend(metadata "requestedSettings")] / height;
        v39 = [objc_msgSend(processedFilters objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
        if (v39)
        {
          v38 = v38 / vcvts_n_f32_s32(v39, 1uLL);
        }

        [objc_msgSend(processedFilters objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
        if (v40 == 0.0)
        {
          v40 = 1.0;
        }

        v37 = v38 * v40;
      }

      v41 = fmaxf(v37, 1.0);
      if (objc_msgSend_isEqualToString_(v15))
      {
        v42 = *(self + 360);
        v43 = v41 != v42;
        if (!((v51 == 0) | v14 & 1) && v41 == v42)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v43 = 1;
      }

      v44 = *(self + 352);

      *(self + 176) = 0;
      *(self + 352) = 0;

      *(self + 368) = 0;
      *(self + 360) = 0;
      *(self + 464) = 0;
      if (v43)
      {

        *(self + 216) = 0;
        *(self + 224) = 0;
      }

      v45 = [objc_msgSend(*(self + 136) objectForKeyedSubscript:{v15), "sensorIDDictionary"}];
      *&v46 = v41;
      v47 = [FigCaptureCameraParameters sdofTuningParametersForSensorIDDictionary:v45 zoomFactor:v46];
      *(self + 368) = v47;
      if (v47)
      {
        *(self + 352) = v15;
        *(self + 360) = v41;
        if ([*(self + 128) deferredPhotoProcessorEnabled])
        {
          if ([*(self + 128) optimizedEnhancedResolutionDepthPipelineEnabled])
          {
            v48 = 3;
          }

          else
          {
            v48 = 2;
          }
        }

        else
        {
          v48 = 1;
        }

        v16 = [BWRenderList alloc];
        v17 = *(self + 192);
        v20 = v48;
        v18 = a2;
        filtersCopy2 = filters;
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

LABEL_31:
    OUTLINED_FUNCTION_16_26();
    return;
  }

  if (!((v51 == 0) | v14 & 1))
  {
    goto LABEL_31;
  }

  v16 = [BWRenderList alloc];
  v17 = *(self + 192);
  v18 = a2;
  filtersCopy2 = filters;
  v20 = 1;
LABEL_42:
  *(self + 176) = [(BWRenderList *)v16 initWithResourceProvider:v17 originalFilters:v18 processedFilters:filtersCopy2 optimizationStrategy:v20 stillImageSettings:metadata];
  OUTLINED_FUNCTION_16_26();

  [v49 prepareWithParameters:? forInputVideoFormat:? inputMediaPropertiesByAttachedMediaKey:?];
}

- (uint64_t)_downsampleImageForSampleBuffer:(CFTypeRef *)buffer outputSampleBuffer:(unint64_t)sampleBuffer dimensions:
{
  if (!self)
  {
    return 0;
  }

  v6 = 0;
  cf = 0;
  v13 = 0;
  v11 = 0;
  if (sbuf && buffer)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(sbuf);
    if (ImageBuffer)
    {
      if (![(BWStillImageFilterNode *)self _downsamplePixelBuffer:&v11 outputPixelBuffer:sampleBuffer dimensions:?]&& !BWCMSampleBufferCreateCopyWithNewPixelBuffer(sbuf, v11, &cf, &v13))
      {
        v6 = 1;
        goto LABEL_8;
      }

      OUTLINED_FUNCTION_0_67();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      OUTLINED_FUNCTION_0_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    }

    v6 = 0;
  }

LABEL_8:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v6)
  {
    *buffer = v13;
  }

  else if (v13)
  {
    CFRelease(v13);
  }

  return 0;
}

- (uint64_t)_downsampleAttachedMediaForSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0;
  }

  if (a2)
  {
    v5 = BWSampleBufferCopyDictionaryOfAttachedMedia(a2);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30[0] = @"PersonSegmentationMask";
    v30[1] = @"PersonSemanticsHair";
    v30[2] = @"PersonSemanticsGlasses";
    v30[3] = @"RefinedDepth";
    v30[4] = @"Depth";
    v30[5] = @"GainMap";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:6];
    v7 = [v6 countByEnumeratingWithState:&v26 objects:&v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v27;
      do
      {
        v10 = 0;
        do
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v26 + 1) + 8 * v10);
          v12 = [v5 objectForKeyedSubscript:v11];
          if (v12)
          {
            v13 = v12;
            v30[0] = 0;
            isEqualToString = objc_msgSend_isEqualToString_(v11);
            v15 = &OBJC_IVAR___BWStillImageFilterNode__maskDimensions;
            if (isEqualToString)
            {
              v15 = &OBJC_IVAR___BWStillImageFilterNode__depthDataMapDimensions;
            }

            [(BWStillImageFilterNode *)buffer _downsampleImageForSampleBuffer:v13 outputSampleBuffer:v30 dimensions:*(buffer + *v15)];
            if (!v30[0])
            {
              OUTLINED_FUNCTION_0();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v20, v21, v2, v22, v23, v24, v25);
              goto LABEL_17;
            }

            BWSampleBufferSetAttachedMedia(a2, v11, v30[0]);
            if (v30[0])
            {
              CFRelease(v30[0]);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v16 = [v6 countByEnumeratingWithState:&v26 objects:&v22 count:16];
        v8 = v16;
      }

      while (v16);
    }

LABEL_17:
    v17 = 0;
  }

  else
  {
    v5 = 0;
    v17 = 4294954516;
  }

  return v17;
}

- (void)_emitNodeErrorForErrorStatus:(int)status numberOfNodeErrors:(uint64_t)errors stillImageSettings:(uint64_t)settings metadata:
{
  if (self)
  {
    v5 = *(self + 440);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __102__BWStillImageFilterNode__emitNodeErrorForErrorStatus_numberOfNodeErrors_stillImageSettings_metadata___block_invoke;
    v6[3] = &unk_1E7998980;
    statusCopy = status;
    v8 = a2;
    v6[4] = self;
    v6[5] = errors;
    v6[6] = settings;
    dispatch_async(v5, v6);
  }
}

- (uint64_t)_downsamplePixelBuffer:(CVPixelBufferRef *)buffer outputPixelBuffer:(unint64_t)pixelBuffer dimensions:
{
  if (!self)
  {
    return 0;
  }

  v5 = 0;
  pixelBufferOut = 0;
  v6 = 4294954516;
  if (a2 && buffer)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:CVPixelBufferGetAttributes()];
    if (v5)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:pixelBuffer];
      [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6966208]];
      v11 = [MEMORY[0x1E696AD98] numberWithInt:HIDWORD(pixelBuffer)];
      [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69660B8]];
      v12 = *MEMORY[0x1E695E480];
      PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
      v14 = CVPixelBufferCreate(v12, pixelBuffer, pixelBuffer >> 32, PixelFormatType, v5, &pixelBufferOut);
      if (!v14)
      {
        v15 = CVPixelBufferGetPixelFormatType(a2);
        if (FigDepthFormatIsDepth(v15) || FigDepthFormatIsDisparity(v15))
        {
          v14 = FigDepthScaleBuffer(a2, pixelBufferOut);
          if (!v14)
          {
LABEL_9:

            v6 = 0;
            *buffer = pixelBufferOut;
            return v6;
          }
        }

        else
        {
          v14 = VTSessionSetProperty(*(self + 416), *MEMORY[0x1E6983E30], *MEMORY[0x1E69840F0]);
          if (!v14)
          {
            v14 = VTPixelTransferSessionTransferImage(*(self + 416), a2, pixelBufferOut);
            if (!v14)
            {
              goto LABEL_9;
            }
          }
        }
      }

      v6 = v14;
      OUTLINED_FUNCTION_0_67();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      OUTLINED_FUNCTION_0_8();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v17, v18, pixelBufferOut, v20, v21, v22, v23);
      v6 = 4294954510;
    }
  }

  if (pixelBufferOut)
  {
    CFRelease(pixelBufferOut);
  }

  return v6;
}

- (uint64_t)_provideCIContext
{
  if (result)
  {
    v2 = result;
    result = *(result + 200);
    if (!result)
    {
      HIDWORD(v5) = 0;
      *(v2 + 200) = +[BWCoreImageFilterRenderer context:deferredPhotoProcessorEnabled:allocatorBackend:err:](BWCoreImageFilterRenderer, "context:deferredPhotoProcessorEnabled:allocatorBackend:err:", *(v2 + 400), [*(v2 + 128) deferredPhotoProcessorEnabled], *(v2 + 456), &v5 + 4);
      if ([*(v2 + 128) deferredPhotoProcessorEnabled])
      {
        [*(v2 + 200) loadArchiveWithName:@"ccportrait_archive" fromURL:{objc_msgSend(BWLoadProcessorBundle(@"CCPortrait", 0xFFFFFFFFLL), "bundleURL")}];
        [*(v2 + 200) loadArchive:*MEMORY[0x1E695FB60]];
      }

      if (HIDWORD(v5))
      {
        v3 = HIDWORD(v5);
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v1, v4, v5, v6, v7, v8, v9);
      }

      return *(v2 + 200);
    }
  }

  return result;
}

- (id)provideCoreImageFilterRenderer
{
  v2 = [[BWCoreImageFilterRenderer alloc] initForRenderingWithDepth:self->_depthDataDeliveryEnabled context:[(BWStillImageFilterNode *)self _provideCIContext] portraitRenderQuality:self->_portraitRenderQuality hairnetEnabled:self->_hairnetEnabled metalCommandQueue:self->_mtlCommandQueue figThreadPriority:[(BWStillImageNodeConfiguration *)self->_nodeConfiguration figThreadPriority]];

  return v2;
}

- (id)provideStillImageMetalSDOFRenderer
{
  metalSDOFRenderer = self->_metalSDOFRenderer;
  if (!metalSDOFRenderer)
  {
    metalSDOFRenderer = [[BWStillImageMetalSDOFRenderer alloc] initWithSDOFRenderingTuningParameters:self->_currentSDOFRenderingParameters imageDimensions:*&self->_outputDimensions depthDataMapDimensions:*&self->_depthDataMapDimensions portraitRenderQuality:self->_portraitRenderQuality metalCommandQueue:self->_mtlCommandQueue];
    self->_metalSDOFRenderer = metalSDOFRenderer;
  }

  v4 = metalSDOFRenderer;

  return v4;
}

- (id)provideStillImageMetalBlurMapRenderer
{
  metalBlurMapRenderer = self->_metalBlurMapRenderer;
  if (!metalBlurMapRenderer)
  {
    metalBlurMapRenderer = [[BWStillImageMetalBlurMapRenderer alloc] initWithSDOFRenderingTuningParameters:self->_currentSDOFRenderingParameters imageDimensions:*&self->_outputDimensions depthDataMapDimensions:*&self->_depthDataMapDimensions portraitRenderQuality:self->_portraitRenderQuality metalCommandQueue:self->_mtlCommandQueue backPressureDrivenPipelining:self->_backPressureDrivenPipelining];
    self->_metalBlurMapRenderer = metalBlurMapRenderer;
  }

  v4 = metalBlurMapRenderer;

  return v4;
}

- (id)provideApplySmartStyleRenderer
{
  applySmartStyleRenderer = self->_applySmartStyleRenderer;
  if (!applySmartStyleRenderer)
  {
    if (self->_smartStyleRenderingVersion < 1)
    {
      applySmartStyleRenderer = 0;
    }

    else
    {
      applySmartStyleRenderer = [[BWApplySmartStyleRenderer alloc] initWithMetalCommandQueue:self->_mtlCommandQueue smartStyleRenderingVersion:self->_smartStyleRenderingVersion];
      self->_applySmartStyleRenderer = applySmartStyleRenderer;
    }
  }

  v4 = applySmartStyleRenderer;

  return v4;
}

- (id)provideStillImageCoreImageBlurMapRenderer
{
  coreImageBlurMapRenderer = self->_coreImageBlurMapRenderer;
  if (!coreImageBlurMapRenderer)
  {
    coreImageBlurMapRenderer = [[BWStillImageCoreImageBlurMapRenderer alloc] initForRenderingWithContext:[(BWStillImageFilterNode *)self _provideCIContext] hairnetEnabled:self->_hairnetEnabled];
    self->_coreImageBlurMapRenderer = coreImageBlurMapRenderer;
  }

  v4 = coreImageBlurMapRenderer;

  return v4;
}

@end