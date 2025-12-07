@interface BWOverCaptureSmartStyleApplyNode
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)stamp;
- (BOOL)hasNonLiveConfigurationChanges;
- (BWOverCaptureSmartStyleApplyNode)initWithMetalCommandQueue:(id)queue squareAspectRatioConfigEnabled:(BOOL)enabled;
- (double)_computeAffineTransform:(int)transform mirror:(int)mirror;
- (id)_updateSupportedPixelFormats;
- (int)_applySmartStyleOnSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)_applySmartStyleProxyRenderingWithMethod:(int)method onSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (int)_getMirrorConfigForPixelBuffer:(__CVBuffer *)buffer;
- (int)_getRotationConfigForPixelBuffer:(__CVBuffer *)buffer;
- (int)_loadAndConfigureSmartStyleBundle:(BOOL)bundle;
- (int)_loadAndConfigureSmartStyleProxyRenderer;
- (uint64_t)_calculateExtrapolationAndSpotlightZoom:(double)zoom inputCropRectWithinPrimaryCaptureRect:(double)rect learningROIRect:(CGFloat)iRect adjustedPrimaryCaptureRect:(CGFloat)captureRect adjustedSpotlightZoomRect:(CGFloat)zoomRect;
- (void)_consumeSampleBufferAttachments:(opaqueCMSampleBuffer *)attachments;
- (void)_updateCurrentStyle:(opaqueCMSampleBuffer *)style;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setMaxLossyCompressionLevel:(int)level;
@end

@implementation BWOverCaptureSmartStyleApplyNode

- (BWOverCaptureSmartStyleApplyNode)initWithMetalCommandQueue:(id)queue squareAspectRatioConfigEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18.receiver = self;
  v18.super_class = BWOverCaptureSmartStyleApplyNode;
  v6 = [(BWNode *)&v18 init];
  v7 = v6;
  if (v6)
  {
    _updateSupportedPixelFormats = [(BWOverCaptureSmartStyleApplyNode *)v6 _updateSupportedPixelFormats];
    if (_updateSupportedPixelFormats)
    {
      v9 = _updateSupportedPixelFormats;
      v7->_renderingMethod = 1;
      v7->_maxLossyCompressionLevel = 0;
      v7->_metalCommandQueue = queue;
      v7->_firstFrame = 1;
      v10 = objc_alloc_init(BWVideoFormatRequirements);
      if (v10)
      {
        v11 = v10;
        [(BWVideoFormatRequirements *)v10 setSupportedPixelFormats:v9];
        v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v7];
        [(BWNodeInput *)v12 setFormatRequirements:v11];
        [(BWNodeInput *)v12 setPassthroughMode:1];
        v13 = objc_alloc_init(BWNodeInputMediaConfiguration);
        [(BWNodeInputMediaConfiguration *)v13 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
        [(BWNodeInputMediaConfiguration *)v13 setPassthroughMode:0];
        [(BWNodeInputMediaConfiguration *)v13 setRetainedBufferCount:6];
        [(BWNodeInput *)v12 setMediaConfiguration:v13 forAttachedMediaKey:0x1F21AB070];
        [(BWNode *)v7 addInput:v12];
        v14 = objc_alloc_init(BWVideoFormatRequirements);
        if (v14)
        {
          v15 = v14;
          [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:v9];
          v16 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v7];
          [(BWNodeOutput *)v16 setFormatRequirements:v15];
          [(BWNodeOutput *)v16 setPassthroughMode:1];
          [(BWNode *)v7 addOutput:v16];
          if (![(BWOverCaptureSmartStyleApplyNode *)v7 _loadAndConfigureSmartStyleBundle:enabledCopy])
          {
            v7->_applyDither = 1;
            [(BWNode *)v7 setSupportsLiveReconfiguration:1];
            return v7;
          }

          [BWOverCaptureSmartStyleApplyNode initWithMetalCommandQueue:squareAspectRatioConfigEnabled:];
        }

        else
        {
          [BWOverCaptureSmartStyleApplyNode initWithMetalCommandQueue:squareAspectRatioConfigEnabled:];
        }
      }

      else
      {
        [BWOverCaptureSmartStyleApplyNode initWithMetalCommandQueue:squareAspectRatioConfigEnabled:];
      }
    }

    else
    {
      [BWOverCaptureSmartStyleApplyNode initWithMetalCommandQueue:squareAspectRatioConfigEnabled:];
    }

    return 0;
  }

  return v7;
}

- (void)setMaxLossyCompressionLevel:(int)level
{
  if (self->_maxLossyCompressionLevel != level)
  {
    formatRequirements = [(BWNodeInput *)self->super._input formatRequirements];
    formatRequirements2 = [(BWNodeOutput *)self->super._output formatRequirements];
    self->_maxLossyCompressionLevel = level;
    _updateSupportedPixelFormats = [(BWOverCaptureSmartStyleApplyNode *)self _updateSupportedPixelFormats];
    if (_updateSupportedPixelFormats)
    {
      v8 = _updateSupportedPixelFormats;
      [(BWFormatRequirements *)formatRequirements setSupportedPixelFormats:_updateSupportedPixelFormats];

      [(BWFormatRequirements *)formatRequirements2 setSupportedPixelFormats:v8];
    }

    else
    {
      [BWOverCaptureSmartStyleApplyNode setMaxLossyCompressionLevel:];
    }
  }
}

- (void)dealloc
{
  [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];

  identityCoefficientsPixelBuffer = self->_identityCoefficientsPixelBuffer;
  if (identityCoefficientsPixelBuffer)
  {
    CFRelease(identityCoefficientsPixelBuffer);
  }

  mostRecentCoefficients = self->_mostRecentCoefficients;
  if (mostRecentCoefficients)
  {
    CFRelease(mostRecentCoefficients);
  }

  previewThumbnailBuffer = self->_previewThumbnailBuffer;
  if (previewThumbnailBuffer)
  {
    CFRelease(previewThumbnailBuffer);
  }

  v6.receiver = self;
  v6.super_class = BWOverCaptureSmartStyleApplyNode;
  [(BWNode *)&v6 dealloc];
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v4.receiver = self;
  v4.super_class = BWOverCaptureSmartStyleApplyNode;
  hasNonLiveConfigurationChanges = [(BWNode *)&v4 hasNonLiveConfigurationChanges];
  if (hasNonLiveConfigurationChanges)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Live reconfiguring BWOverCaptureSmartStylsApplyNode with changing formats is not supported", 0}]);
  }

  return hasNonLiveConfigurationChanges;
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (format)
  {
    if (input)
    {
      if (objc_msgSend_isEqualToString_(key, a2, @"PrimaryFormat"))
      {
        formatRequirements = [(BWNodeOutput *)self->super._output formatRequirements];
        -[BWFormatRequirements setWidth:](formatRequirements, "setWidth:", [format width]);
        -[BWFormatRequirements setHeight:](formatRequirements, "setHeight:", [format height]);
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(format, "pixelFormat")}];
        -[BWFormatRequirements setSupportedPixelFormats:](formatRequirements, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v12 count:1]);
        v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
        -[BWFormatRequirements setSupportedColorSpaceProperties:](formatRequirements, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1]);
        [(BWNodeOutput *)self->super._output setFormat:format];
      }

      else if ([key isEqual:0x1F21AB070])
      {

        self->_filterCoefficientsVideoFormatToPrepare = format;
      }

      else if (([BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1 1)] & 1) == 0)
      {
        v10.receiver = self;
        v10.super_class = BWOverCaptureSmartStyleApplyNode;
        [(BWNode *)&v10 didSelectFormat:format forInput:input forAttachedMediaKey:key];
      }
    }

    else
    {
      [BWOverCaptureSmartStyleApplyNode didSelectFormat:a2 forInput:? forAttachedMediaKey:?];
    }
  }

  else
  {
    [(BWOverCaptureSmartStyleApplyNode *)self didSelectFormat:a2 forInput:0 forAttachedMediaKey:input, key];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v4.receiver = self;
  v4.super_class = BWOverCaptureSmartStyleApplyNode;
  [(BWNode *)&v4 prepareForCurrentConfigurationToBecomeLive];
  if (self->_filterCoefficientsVideoFormatToPrepare && (v3 = [BWPixelBufferPool alloc], self->_filteredCoefficientsPixelBufferPool = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v3, "initWithVideoFormat:capacity:name:memoryPool:", self->_filterCoefficientsVideoFormatToPrepare, self->_filteredCoefficientsPixelBufferPoolSize, [MEMORY[0x1E696AEC0] stringWithFormat:@"BWOverCaptureSmartStyleApplyNode filtered coefficients buffer pool"], -[BWNodeOutput memoryPool](self->super._output, "memoryPool")), self->_filterCoefficientsVideoFormatToPrepare, self->_filterCoefficientsVideoFormatToPrepare = 0, !self->_filteredCoefficientsPixelBufferPool))
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(BWOverCaptureSmartStyleApplyNode *)self _loadAndConfigureSmartStyleProxyRenderer])
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor setup])
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:4])
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")])
  {
    [BWOverCaptureSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else
  {
    self->_currentGlobalLocalMixFactor = 1.0;
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  v4.receiver = self;
  v4.super_class = BWOverCaptureSmartStyleApplyNode;
  [(BWNode *)&v4 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (buffer)
  {
    if (input)
    {
      [(BWOverCaptureSmartStyleApplyNode *)self _updateCurrentStyle:buffer];
      renderingMethod = self->_renderingMethod;
      if (CMGetAttachment(buffer, *off_1E798A3C8, 0))
      {
        if (renderingMethod == 1)
        {
          [(BWOverCaptureSmartStyleApplyNode *)self _canRenderWithStyleEngineApplyForInput:buffer];
          if ([(BWOverCaptureSmartStyleApplyNode *)self _applySmartStyleOnSampleBuffer:buffer])
          {
            [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:forInput:];
          }
        }

        else if (renderingMethod && [(BWOverCaptureSmartStyleApplyNode *)self _applySmartStyleProxyRenderingWithMethod:renderingMethod onSampleBuffer:buffer])
        {
          [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:forInput:];
        }
      }

      else
      {
        [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:forInput:];
      }
    }

    else
    {
      [BWOverCaptureSmartStyleApplyNode renderSampleBuffer:a2 forInput:?];
    }
  }

  else
  {
    [(BWOverCaptureSmartStyleApplyNode *)self renderSampleBuffer:a2 forInput:0, input];
  }

  [(BWOverCaptureSmartStyleApplyNode *)self _consumeSampleBufferAttachments:buffer];
  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
  self->_firstFrame = 0;
}

- (void)_updateCurrentStyle:(opaqueCMSampleBuffer *)style
{
  v4 = [CMGetAttachment(style *off_1E798A3C8];
  if (v4)
  {
    v5 = [FigCaptureSmartStyle createFromDictionary:v4];
    if (v5)
    {
      v6 = v5;
      currentStyle = self->_currentStyle;
      if (!currentStyle)
      {
        currentStyle = objc_alloc_init(self->_smartStyleClass);
      }

      self->_currentStyle = currentStyle;
      -[CMISmartStyle setCastType:](self->_currentStyle, "setCastType:", [v6 cast]);
      [v6 intensity];
      [(CMISmartStyle *)self->_currentStyle setCastIntensity:?];
      [v6 toneBias];
      [(CMISmartStyle *)self->_currentStyle setToneBias:?];
      [v6 colorBias];
      v8 = self->_currentStyle;

      [(CMISmartStyle *)v8 setColorBias:?];
    }
  }

  else
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v11 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v11, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWOverCaptureSmartStyleApplyNode.m", 416, @"LastShownDate:BWOverCaptureSmartStyleApplyNode.m:416", @"LastShownBuild:BWOverCaptureSmartStyleApplyNode.m:416", 0);
    free(v11);
  }
}

- (int)_loadAndConfigureSmartStyleBundle:(BOOL)bundle
{
  bundleCopy = bundle;
  v5 = BWLoadProcessorBundle(@"SmartStyle", 1);
  if (v5 && (v6 = [v5 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorV%d", 1)}], v7 = objc_msgSend([v6 alloc], "initWithOptionalMetalCommandQueue:", self->_metalCommandQueue), (self->_smartStyleProcessor = v7) != 0) && ((-[CMISmartStyleProcessor setInstanceLabel:](v7, "setInstanceLabel:", @"OverCaptureApplyNode"), -[CMISmartStyleProcessor setUseLiveMetalAllocations:](self->_smartStyleProcessor, "setUseLiveMetalAllocations:", 1), v8 = -[objc_class getSmartStyleCoefficientsFilterType:](v6, "getSmartStyleCoefficientsFilterType:", @"iir"), self->_filterType = v8, !bundleCopy) ? (v9 = -[objc_class getDefaultProcessorConfigurationForStreamingWithFilterType:](v6, "getDefaultProcessorConfigurationForStreamingWithFilterType:", v8)) : (v9 = -[objc_class getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:](v6, "getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:", v8)), (v10 = v9, objc_msgSend(v9, "setTemporalFilterInputBufferSize:", 5), -[CMISmartStyleProcessor setConfiguration:](self->_smartStyleProcessor, "setConfiguration:", v10), -[CMISmartStyleProcessor configuration](self->_smartStyleProcessor, "configuration")) && (objc_msgSend(objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor, "configuration"), "styleEngineConfiguration"), "setThumbnailSize:", 128.0, 282.0), objc_msgSend(objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor, "configuration"), "styleEngineConfiguration"), "globalLinearSystemMixFactor"), self->_globalLocalSystemMixFactorDecayRate = (1.0 - v11) / 10.0, self->_filteredCoefficientsPixelBufferPoolSize = 6, v12 = objc_msgSend(v5, "classNamed:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", 1)), (self->_smartStyleProcessorInputOutputClass = v12) != 0)))
  {
    result = 0;
    self->_useOptimizedThumbnailGeneration = 0;
  }

  else
  {
    [(BWOverCaptureSmartStyleApplyNode *)v5 _loadAndConfigureSmartStyleBundle:?];
    return -12786;
  }

  return result;
}

- (int)_loadAndConfigureSmartStyleProxyRenderer
{
  v3 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", 1]);
  self->_smartStyleClass = v3;
  if (!v3 || (v4 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleProxyRendererV%d", 1])) == 0 || (v5 = objc_msgSend([v4 alloc], "initWithOptionalMetalCommandQueue:", self->_metalCommandQueue), (self->_smartStyleProxyRenderer = v5) == 0))
  {
    LODWORD(v13) = -12786;
LABEL_22:

    self->_smartStyleProxyRenderer = 0;
    return v13;
  }

  [(CMISmartStyleProxyRenderer *)v5 setMaxInputStylesCount:1];
  [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setForegroundRatio:0.0];
  smartStyleProxyRenderer = self->_smartStyleProxyRenderer;
  v7 = [(CMISmartStyleProxyRenderer *)smartStyleProxyRenderer externalMemoryDescriptorForConfiguration:0];
  if (!v7)
  {
    v8 = 0;
    goto LABEL_16;
  }

  v8 = [objc_alloc(MEMORY[0x1E6991758]) initWithDevice:objc_msgSend(-[CMISmartStyleProxyRenderer metalCommandQueue](smartStyleProxyRenderer allocatorType:{"metalCommandQueue"), "device"), objc_msgSend(v7, "allocatorType")}];
  if (!v8)
  {
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v9 = objc_opt_new();
  if (!v9)
  {
LABEL_17:
    v12 = 0;
LABEL_18:
    v13 = 4294954510;
    goto LABEL_10;
  }

  [v9 setMemSize:{objc_msgSend(v7, "memSize")}];
  [v9 setWireMemory:1];
  [v9 setLabel:@"BWOverCaptureSmartStyleApplyNode-SmartStyleProxyRenderer-FigMetalAllocatorBackend"];
  [v9 setMemoryPoolId:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  v10 = [v8 setupWithDescriptor:v9];
  if (!v10)
  {
    v11 = objc_opt_new();
    v12 = v11;
    if (v11)
    {
      [v11 setAllocatorBackend:v8];
      [(CMISmartStyleProxyRenderer *)smartStyleProxyRenderer setExternalMemoryResource:v12];
      v13 = 0;
      goto LABEL_10;
    }

    goto LABEL_18;
  }

  v13 = v10;
  v12 = 0;
LABEL_10:

  if (v13)
  {
    [(BWOverCaptureSmartStyleApplyNode *)v13 _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  setup = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setup];
  if (setup)
  {
    LODWORD(v13) = setup;
    [BWOverCaptureSmartStyleApplyNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  prewarm = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prewarm];
  LODWORD(v13) = prewarm;
  if (prewarm)
  {
    [(BWOverCaptureSmartStyleApplyNode *)prewarm _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  return v13;
}

- (id)_updateSupportedPixelFormats
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F22487C0];
  [v3 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, 0)}];
  maxLossyCompressionLevel = self->_maxLossyCompressionLevel;
  if (maxLossyCompressionLevel)
  {
    [v3 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 0, maxLossyCompressionLevel)}];
  }

  return v3;
}

- (void)_consumeSampleBufferAttachments:(opaqueCMSampleBuffer *)attachments
{
  BWSampleBufferRemoveAttachedMedia(attachments, 0x1F21AB0D0);
  BWSampleBufferRemoveAttachedMedia(attachments, 0x1F21AB110);
  BWSampleBufferRemoveAttachedMedia(attachments, 0x1F21AB070);
  BWSampleBufferRemoveAttachedMedia(attachments, 0x1F21AAED0);
  BWSampleBufferRemoveAttachedMedia(attachments, 0x1F21AAEF0);
  BWSampleBufferRemoveAttachedMedia(attachments, 0x1F21AAF30);
  BWSampleBufferRemoveAttachedMedia(attachments, @"PreLTMThumbnail");
  BWSampleBufferRemoveAttachedMedia(attachments, @"LTMThumbnail");
  CMRemoveAttachment(attachments, *off_1E798A4C0);
  v4 = CMGetAttachment(attachments, *off_1E798A3C8, 0);
  [v4 setObject:0 forKeyedSubscript:*off_1E798A8F8];
  [v4 setObject:0 forKeyedSubscript:*off_1E798A920];
  [v4 setObject:0 forKeyedSubscript:*off_1E798A928];
  v5 = *off_1E798A8E8;

  [v4 setObject:0 forKeyedSubscript:v5];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)stamp
{
  *retstr = **&MEMORY[0x1E6960C70];
  if (!a4)
  {
    return [(BWOverCaptureSmartStyleApplyNode *)self _getSampleBufferPresentationTimeStamp:stamp];
  }

  v6 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  if (v6 && (v7 = v6, v8 = *off_1E798A420, [v6 objectForKeyedSubscript:*off_1E798A420]))
  {
    v9 = [v7 objectForKeyedSubscript:v8];

    return CMTimeMakeFromDictionary(retstr, v9);
  }

  else
  {

    return CMSampleBufferGetPresentationTimeStamp(retstr, a4);
  }
}

- (int)_getRotationConfigForPixelBuffer:(__CVBuffer *)buffer
{
  v3 = CMGetAttachment(buffer, @"RotationDegrees", 0);
  if (v3)
  {
    LODWORD(v3) = [v3 intValue];
    if (v3 > 179)
    {
      if (v3 == 180)
      {
        LODWORD(v3) = 2;
        return v3;
      }

      if (v3 == 270)
      {
        LODWORD(v3) = 6;
        return v3;
      }

      goto LABEL_9;
    }

    if (v3)
    {
      if (v3 == 90)
      {
        LODWORD(v3) = 4;
        return v3;
      }

LABEL_9:
      LODWORD(v3) = -1;
    }
  }

  return v3;
}

- (int)_getMirrorConfigForPixelBuffer:(__CVBuffer *)buffer
{
  v4 = CMGetAttachment(buffer, @"MirroredVertical", 0);
  v5 = CMGetAttachment(buffer, @"MirroredHorizontal", 0);
  if (!(v4 | v5))
  {
    return 0;
  }

  v6 = v5;
  bOOLValue = [v4 BOOLValue];
  bOOLValue2 = [v6 BOOLValue];
  v9 = bOOLValue2;
  v10 = (bOOLValue & bOOLValue2) != 0 ? 3 : 2;
  result = bOOLValue ? v10 : 1;
  if ((bOOLValue & 1) == 0 && (v9 & 1) == 0)
  {
    return 0;
  }

  return result;
}

- (double)_computeAffineTransform:(int)transform mirror:(int)mirror
{
  v4 = xmmword_1AD046FE0;
  v5 = xmmword_1AD046FF0;
  v6 = 0;
  if (transform <= 3)
  {
    if (transform == 2)
    {
      v6 = 0x3F8000003F800000;
      v8 = xmmword_1AD055220;
      v7 = xmmword_1AD055210;
      goto LABEL_11;
    }

    v7 = xmmword_1AD046FF0;
    v8 = xmmword_1AD046FE0;
    if (transform != 3)
    {
      goto LABEL_11;
    }

LABEL_8:
    v6 = 1065353216;
    v8 = xmmword_1AD046FF0;
    v7 = xmmword_1AD055220;
    goto LABEL_11;
  }

  if (transform == 4 || transform == 5)
  {
    v6 = 0x3F80000000000000;
    v8 = xmmword_1AD055210;
    v7 = xmmword_1AD046FE0;
    goto LABEL_11;
  }

  v7 = xmmword_1AD046FF0;
  v8 = xmmword_1AD046FE0;
  if (transform == 6)
  {
    goto LABEL_8;
  }

LABEL_11:
  __asm { FMOV            V5.4S, #1.0 }

  _Q5.i32[0] = v6;
  if (mirror == 1)
  {
    *&v14 = 1065353216;
    v4 = xmmword_1AD055220;
  }

  else if (mirror == 3)
  {
    *&v14 = 0x3F8000003F800000;
    v4 = xmmword_1AD055210;
    v5 = xmmword_1AD055220;
  }

  else
  {
    *&v14 = 0;
    if (mirror == 2)
    {
      *&v14 = 0x3F80000000000000;
      v5 = xmmword_1AD055210;
    }
  }

  v15 = 0;
  _Q5.i32[1] = HIDWORD(v6);
  HIDWORD(v4) = 0;
  HIDWORD(v5) = 0;
  *(&v14 + 1) = COERCE_UNSIGNED_INT(1.0);
  v17[0] = v4;
  v17[1] = v5;
  v17[2] = v14;
  memset(v18, 0, sizeof(v18));
  do
  {
    v18[v15] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(v17[v15])), v7, *&v17[v15], 1), _Q5, v17[v15], 2);
    ++v15;
  }

  while (v15 != 3);
  return *v18;
}

- (uint64_t)_calculateExtrapolationAndSpotlightZoom:(double)zoom inputCropRectWithinPrimaryCaptureRect:(double)rect learningROIRect:(CGFloat)iRect adjustedPrimaryCaptureRect:(CGFloat)captureRect adjustedSpotlightZoomRect:(CGFloat)zoomRect
{
  *&v50[16] = zoom;
  *&v50[24] = rect;
  *v50 = self;
  *&v50[8] = a2;
  if (!a11)
  {
    [(BWOverCaptureSmartStyleApplyNode *)a9 _calculateExtrapolationAndSpotlightZoom:a10 inputCropRectWithinPrimaryCaptureRect:0 learningROIRect:a12 adjustedPrimaryCaptureRect:self adjustedSpotlightZoomRect:a2, zoom, rect, iRect, captureRect, zoomRect, a8];
    return 4294954516;
  }

  if (!a12)
  {
    [(BWOverCaptureSmartStyleApplyNode *)a9 _calculateExtrapolationAndSpotlightZoom:a10 inputCropRectWithinPrimaryCaptureRect:self learningROIRect:a2 adjustedPrimaryCaptureRect:zoom adjustedSpotlightZoomRect:rect, iRect, captureRect, zoomRect, a8];
    return 4294954516;
  }

  v18 = a8;
  zoomRectCopy = zoomRect;
  captureRectCopy = captureRect;
  iRectCopy = iRect;
  v51.origin.x = a13;
  v51.origin.y = a14;
  v51.size.width = a15;
  v51.size.height = a16;
  if (!CGRectIsEmpty(v51) && !CGRectIsEmpty(*v50))
  {
    v52.origin.x = iRectCopy;
    v52.origin.y = captureRectCopy;
    v52.size.width = zoomRectCopy;
    v52.size.height = v18;
    if (!CGRectIsEmpty(v52))
    {
      v22 = FigCaptureMetadataUtilitiesRectNormalizedToRect(a13, a14, a15, a16, iRectCopy, captureRectCopy, zoomRectCopy);
      v26 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(v22, v23, v24, v25, *v50, *&v50[8], *&v50[16]);
      v48 = v27;
      v49 = v26;
      v46 = v29;
      v47 = v28;
      v30 = FigCaptureMetadataUtilitiesRectNormalizedToRect(iRectCopy, captureRectCopy, zoomRectCopy, v18, a13, a14, a15);
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v37.f64[0] = v49;
      *v50 = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v37, v48, v47, v46, *v50, *&v50[8], *&v50[16], *&v50[24]);
      *&v50[8] = v38;
      *&v50[16] = v39;
      *&v50[24] = v40;
      v41.f64[0] = v30;
      iRectCopy = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v41, v32, v34, v36, 0.0, 0.0, 1.0, 1.0);
      captureRectCopy = v42;
      zoomRectCopy = v43;
      v18 = v44;
    }
  }

  result = 0;
  *a11 = *v50;
  a11[1] = *&v50[8];
  a11[2] = *&v50[16];
  a11[3] = *&v50[24];
  *a12 = iRectCopy;
  a12[1] = captureRectCopy;
  a12[2] = zoomRectCopy;
  a12[3] = v18;
  return result;
}

- (int)_applySmartStyleOnSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v99 = 0;
  v100 = 0;
  value = *MEMORY[0x1E6960CC0];
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v4;
  v95.origin = rect.origin;
  v95.size = v4;
  v94.origin = rect.origin;
  v94.size = v4;
  v93.origin = rect.origin;
  v93.size = v4;
  v92 = 0.0;
  v5 = MEMORY[0x1E695FF58];
  if (!buffer)
  {
    epoch = *(MEMORY[0x1E6960CC0] + 16);
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_30();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v72, v74, v76, v78, v79, v80, v81);
    goto LABEL_88;
  }

  if (!self)
  {
    AttachedMedia = 0;
    epoch = 0;
    v17 = 0;
    ImageBuffer = 0;
    timescale = 0;
    value = 0;
LABEL_14:
    finishProcessing = -12780;
    goto LABEL_76;
  }

  objc_msgSend__getSampleBufferPresentationTimeStamp_(self, a2);
  epoch = time.duration.epoch;
  value = time.duration.value;
  timescale = time.duration.timescale;
  if ((time.duration.flags & 1) == 0)
  {
LABEL_88:
    AttachedMedia = 0;
    v17 = 0;
    ImageBuffer = 0;
    goto LABEL_14;
  }

  AttachedMedia = &OBJC_IVAR___BWBravoPortraitSceneMonitorV2__stageMostRecentFaces;
  if (!self->_didSetTimeToStartStyleEngineBypass)
  {
    OUTLINED_FUNCTION_4_38();
    time.duration.epoch = epoch;
    v10 = CMTimeGetSeconds(&time.duration) + 0.5;
    self->_timeToStartStyleEngineBypass = v10;
    self->_didSetTimeToStartStyleEngineBypass = 1;
  }

  if (*v5 == 1)
  {
    OUTLINED_FUNCTION_4_38();
    time.duration.epoch = epoch;
    *&v11 = CMTimeGetSeconds(&time.duration);
    OUTLINED_FUNCTION_5_7(822150521, v11);
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_7_30();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v72, v74, v76, v78, v79, v80, v81);
    AttachedMedia = 0;
    v17 = 0;
    goto LABEL_14;
  }

  v13 = [(BWOverCaptureSmartStyleApplyNode *)self _computeAffineTransform:[(BWOverCaptureSmartStyleApplyNode *)self _getRotationConfigForPixelBuffer:ImageBuffer] mirror:[(BWOverCaptureSmartStyleApplyNode *)self _getMirrorConfigForPixelBuffer:ImageBuffer]];
  v84 = v15;
  v85 = v14;
  v83 = v16;
  v17 = OUTLINED_FUNCTION_22_6(v13, *off_1E798A3C8);
  if (!v17)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_56();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v72, v74, v76, v78, v79, v80, v81);
    OUTLINED_FUNCTION_9_24();
    finishProcessing = -12780;
    goto LABEL_76;
  }

  if (BWSmartStyleRenderingShouldBeBypassed(buffer))
  {
    OUTLINED_FUNCTION_4_38();
    time.duration.epoch = epoch;
    if (CMTimeGetSeconds(&time.duration) > self->_timeToStartStyleEngineBypass)
    {
      AttachedMedia = 0;
      v17 = 0;
      ImageBuffer = 0;
      finishProcessing = 0;
      self->_currentGlobalLocalMixFactor = 1.0;
      goto LABEL_76;
    }
  }

  else
  {
    self->_didSetTimeToStartStyleEngineBypass = 0;
  }

  castType = [(CMISmartStyle *)self->_currentStyle castType];
  v20 = [castType isEqual:FigSmartStyleCastTypeStandard];
  if (v20 && (v20 = -[CMISmartStyle toneBias](self->_currentStyle, "toneBias"), v21 == 0.0) && (v20 = -[CMISmartStyle colorBias](self->_currentStyle, "colorBias"), v22 == 0.0) || ![OUTLINED_FUNCTION_22_6(v20 @"SmartStyleApplyWithIdentityCoefficients")])
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AB070);
    v82 = 0;
    goto LABEL_30;
  }

  memset(&time, 0, sizeof(time));
  SampleTimingInfoArray = CMSampleBufferGetSampleTimingInfoArray(buffer, 1, &time, 0);
  if (SampleTimingInfoArray)
  {
    finishProcessing = SampleTimingInfoArray;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_42();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", finishProcessing, v72, v74, v76, v78, v79, v80, v81);
    v17 = 0;
  }

  else
  {
    AttachedMedia = self->_identityCoefficientsPixelBuffer;
    if (AttachedMedia)
    {
      v82 = 0;
LABEL_28:
      memcpy(&__dst, &time, sizeof(__dst));
      v33 = BWSampleBufferCreateFromPixelBufferWithTimingInfo(AttachedMedia, &__dst, &v99, &v100);
      if (!v33)
      {
        AttachedMedia = v100;
LABEL_30:
        v34 = *off_1E798B588;
        v35 = [objc_msgSend(v17 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
        if (AttachedMedia)
        {
          v36 = v35;
          mostRecentCoefficients = self->_mostRecentCoefficients;
          if (v36 == self->_mostRecentQuadraBinningFactor)
          {
            if (mostRecentCoefficients)
            {
              CFRelease(mostRecentCoefficients);
              self->_mostRecentCoefficients = 0;
            }

            self->_mostRecentCoefficients = CFRetain(AttachedMedia);
            self->_applyGlobalMostRecentCoefficients = 0;
            v38 = self->_currentGlobalLocalMixFactor - self->_globalLocalSystemMixFactorDecayRate;
            [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
            if (v38 >= v39)
            {
              v39 = v38;
            }

            self->_currentGlobalLocalMixFactor = v39;
LABEL_42:
            self->_mostRecentQuadraBinningFactor = [objc_msgSend(v17 objectForKeyedSubscript:{v34), "intValue"}];
            v40 = CMSampleBufferGetImageBuffer(AttachedMedia);
            if (!v40 || (v41 = v40, (v42 = [v17 objectForKeyedSubscript:*off_1E798A8F0]) != 0) && (v42 = CGRectMakeWithDictionaryRepresentation(v42, &rect), (v42 & 1) == 0) || (v43 = OUTLINED_FUNCTION_22_6(v42, *off_1E798A430)) != 0 && (v43 = CGRectMakeWithDictionaryRepresentation(v43, &v95), (v43 & 1) == 0) || (v44 = OUTLINED_FUNCTION_22_6(v43, *off_1E798A398)) != 0 && (v44 = CGRectMakeWithDictionaryRepresentation(v44, &v94), (v44 & 1) == 0) || (v88 = 0u, v89 = 0u, (v45 = OUTLINED_FUNCTION_22_6(v44, @"OverCaptureStitchedValidBufferRect")) != 0) && !CGRectMakeWithDictionaryRepresentation(v45, &v93))
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_56();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              OUTLINED_FUNCTION_9_24();
              finishProcessing = -12780;
              goto LABEL_39;
            }

            v86 = 0u;
            v87 = 0u;
            v46 = [(BWOverCaptureSmartStyleApplyNode *)self _calculateExtrapolationAndSpotlightZoom:&v88 inputCropRectWithinPrimaryCaptureRect:&v86 learningROIRect:OUTLINED_FUNCTION_10_21() adjustedPrimaryCaptureRect:*&rect.origin.x adjustedSpotlightZoomRect:*&rect.origin.y, *&rect.size.width, *&rect.size.height];
            if (v46)
            {
              finishProcessing = v46;
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_42();
              LODWORD(v70) = finishProcessing;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70, v73, v75, v77, v78, v79, v80, v81);
              AttachedMedia = 0;
LABEL_93:
              ImageBuffer = 0;
              goto LABEL_39;
            }

            v47 = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
            AttachedMedia = v47;
            if (!v47)
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_56();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70, v73, v75, v77, v78, v79, v80, v81);
              ImageBuffer = 0;
              finishProcessing = -12786;
              goto LABEL_39;
            }

            v48 = OUTLINED_FUNCTION_22_6(v47, @"PreviewStitcherPrimaryCameraTransitionInProgress");
            if (!self->_useOptimizedThumbnailGeneration || ([v48 BOOLValue] & 1) != 0 || self->_applyGlobalMostRecentCoefficients)
            {
              goto LABEL_65;
            }

            v49 = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AB0D0);
            if (v49)
            {
              v50 = CMSampleBufferGetImageBuffer(v49);
              if (v50)
              {
                v51 = v50;
                if (self->_previewThumbnailBuffer)
                {
LABEL_61:
                  commandBuffer = [(MTLCommandQueue *)self->_metalCommandQueue commandBuffer];
                  if (commandBuffer)
                  {
                    v54 = commandBuffer;
                    v55 = OUTLINED_FUNCTION_10_21();
                    if (![v56 generateOvercaptureIntegrationThumbnailFromPreviewThumbnailPixelBuffer:v51 stitcherOutputPixelBuffer:ImageBuffer outputOvercaptureIntegrationThumbnailPixelBuffer:v55 primaryCaptureRect:v85 inputCropRectWithinPrimaryCaptureRect:v84 affineTransformForPreviewThumbnailPixelBuffer:v83 optionalCommandBuffer:?])
                    {
                      [(__CVBuffer *)AttachedMedia setInputUnstyledThumbnailPixelBuffer:self->_previewThumbnailBuffer];
                    }

                    goto LABEL_64;
                  }

                  fig_log_get_emitter();
                  LODWORD(v70) = 0;
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70, v3, v75, v77, v78, v79, v80, v81);
                  emitter = fig_log_get_emitter();
                  finishProcessing = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFEE107, "<<<< BWOverCaptureSmartStyleApplyNode >>>>", 0x27E, v3, v67, v68, v71);
                  goto LABEL_93;
                }

                CVPixelBufferGetPixelFormatType(v50);
                PixelBuffer = CreatePixelBuffer();
                self->_previewThumbnailBuffer = PixelBuffer;
                if (PixelBuffer)
                {
                  CVBufferPropagateAttachments(ImageBuffer, PixelBuffer);
                  goto LABEL_61;
                }
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_56();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            v54 = 0;
LABEL_64:
            [v54 commit];
LABEL_65:
            [(__CVBuffer *)AttachedMedia setInputUnstyledPixelBuffer:ImageBuffer];
            [(__CVBuffer *)AttachedMedia setInputMetadataDict:v17];
            [(__CVBuffer *)AttachedMedia setOutputStyledPixelBuffer:ImageBuffer];
            [(__CVBuffer *)AttachedMedia setPrimaryCaptureRect:v88, v89];
            [(__CVBuffer *)AttachedMedia setInputCropRectWithinPrimaryCaptureRect:v86, v87];
            [(__CVBuffer *)AttachedMedia setSpotlightAffineTransform:*&v85, *&v84, *&v83];
            [(__CVBuffer *)AttachedMedia setOutputRenderRect:v93.origin.x, v93.origin.y, v93.size.width, v93.size.height];
            [(__CVBuffer *)AttachedMedia setApplyDither:self->_applyDither];
            if (!self->_filterType)
            {
              ImageBuffer = 0;
              v5 = MEMORY[0x1E695FF58];
              goto LABEL_70;
            }

            [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
            OUTLINED_FUNCTION_4_38();
            time.duration.epoch = epoch;
            v58 = [v57 enqueueCoefficientsForFiltering:v41 withMetadata:v17 pts:&time];
            v5 = MEMORY[0x1E695FF58];
            if (v58)
            {
              finishProcessing = v58;
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_42();
              LODWORD(v70) = finishProcessing;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70, v73, v75, v77, v78, v79, v80, v81);
              ImageBuffer = 0;
            }

            else
            {
              newPixelBuffer = [(BWPixelBufferPool *)self->_filteredCoefficientsPixelBufferPool newPixelBuffer];
              if (newPixelBuffer)
              {
                v41 = newPixelBuffer;
                [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
                OUTLINED_FUNCTION_4_38();
                time.duration.epoch = epoch;
                [v60 filterCoefficientsForFrameWithMetadata:v17 pts:&time filterType:? toPixelBuffer:? toGlobalRemixFactor:?];
                ImageBuffer = v41;
LABEL_70:
                [(__CVBuffer *)AttachedMedia setInputStyleCoefficientsPixelBuffer:v41];
                *&v61 = self->_currentGlobalLocalMixFactor;
                v62 = *&v61 + (v92 * (1.0 - *&v61));
                if (v62 > *&v61)
                {
                  self->_currentGlobalLocalMixFactor = v62;
                  *&v61 = v62;
                }

                [(__CVBuffer *)AttachedMedia setGlobalLinearSystemMixFactor:v61];
                [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:AttachedMedia];
                process = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process];
                if (process)
                {
                  finishProcessing = process;
                  fig_log_get_emitter();
                  OUTLINED_FUNCTION_3_42();
                  LODWORD(v70) = finishProcessing;
                  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70);
                }

                else
                {
                  finishProcessing = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing];
                  if (finishProcessing)
                  {
                    fig_log_get_emitter();
                    OUTLINED_FUNCTION_3_42();
                    LODWORD(v70) = finishProcessing;
                    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70);
                  }

                  else
                  {
                    [v17 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A8B8];
                  }
                }

                goto LABEL_75;
              }

              fig_log_get_emitter();
              OUTLINED_FUNCTION_1_56();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v70, v73, v75, v77, v78, v79, v80, v81);
              ImageBuffer = 0;
              finishProcessing = -12786;
            }

LABEL_75:
            v17 = v82;
            goto LABEL_76;
          }

          if (!mostRecentCoefficients)
          {
            goto LABEL_42;
          }
        }

        else
        {
          mostRecentCoefficients = self->_mostRecentCoefficients;
          if (!mostRecentCoefficients)
          {
            OUTLINED_FUNCTION_9_24();
            finishProcessing = -12783;
LABEL_39:
            v5 = MEMORY[0x1E695FF58];
            goto LABEL_75;
          }
        }

        self->_applyGlobalMostRecentCoefficients = 1;
        self->_currentGlobalLocalMixFactor = 1.0;
        AttachedMedia = mostRecentCoefficients;
        goto LABEL_42;
      }

      finishProcessing = v33;
      v17 = v82;
      goto LABEL_106;
    }

    v24 = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AB070);
    v25 = CMSampleBufferGetImageBuffer(v24);
    if (v25)
    {
      AttachedMedia = v25;
      v26 = CVPixelBufferCopyCreationAttributes(v25);
      v27 = *MEMORY[0x1E695E480];
      Width = CVPixelBufferGetWidth(AttachedMedia);
      Height = CVPixelBufferGetHeight(AttachedMedia);
      PixelFormatType = CVPixelBufferGetPixelFormatType(AttachedMedia);
      v82 = v26;
      v31 = CVPixelBufferCreate(v27, Width, Height, PixelFormatType, v26, &self->_identityCoefficientsPixelBuffer);
      if (v31)
      {
        finishProcessing = v31;
      }

      else
      {
        v32 = [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];
        AttachedMedia = self->_identityCoefficientsPixelBuffer;
        if (AttachedMedia)
        {
          v5 = MEMORY[0x1E695FF58];
          goto LABEL_28;
        }

        finishProcessing = v32;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_56();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v72, v74, v76, v78, v79, v80, v81);
      }

      v5 = MEMORY[0x1E695FF58];
      v17 = v26;
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_56();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v69, v72, v74, v76, v78, v79, v80, v81);
      v17 = 0;
      finishProcessing = -12780;
    }
  }

LABEL_106:
  OUTLINED_FUNCTION_9_24();
LABEL_76:
  if (*v5 == 1)
  {
    OUTLINED_FUNCTION_4_38();
    time.duration.epoch = epoch;
    *&v64 = CMTimeGetSeconds(&time.duration);
    OUTLINED_FUNCTION_5_7(822150522, v64);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v100)
  {
    CFRelease(v100);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  return finishProcessing;
}

- (int)_applySmartStyleProxyRenderingWithMethod:(int)method onSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  selfCopy = self;
  v29 = *MEMORY[0x1E6960CC0];
  v30 = *(MEMORY[0x1E6960CC0] + 8);
  v10 = MEMORY[0x1E695FF58];
  if (method == 2)
  {
    v11 = 1;
  }

  else
  {
    if (method != 3)
    {
      goto LABEL_16;
    }

    v11 = 2;
  }

  if (!buffer)
  {
    goto LABEL_16;
  }

  if (!self)
  {
    v30 = 0;
    v29 = 0;
    goto LABEL_18;
  }

  self = objc_msgSend__getSampleBufferPresentationTimeStamp_(self, a2, buffer);
  v29 = v25;
  v30 = v26;
  if ((v27 & 1) == 0)
  {
LABEL_18:
    selfCopy2 = -12780;
    goto LABEL_19;
  }

  if (*v10 == 1)
  {
    *&v12 = OUTLINED_FUNCTION_6_35(self, a2, *&method, buffer, v4, v5, v6, v7, v22, v23, currentStyle, v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_5_7(822150525, v12);
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer || (v14 = ImageBuffer, (v15 = CMGetAttachment(buffer, *off_1E798A3C8, 0)) == 0))
  {
LABEL_16:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    self = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_18;
  }

  v16 = v15;
  self = BWSmartStyleRenderingShouldBeBypassed(buffer);
  if (self)
  {
    selfCopy2 = 0;
  }

  else
  {
    v17 = [v16 objectForKeyedSubscript:*off_1E798A8D0];
    currentStyle = selfCopy->_currentStyle;
    -[CMISmartStyleProxyRenderer setInputStyles:](selfCopy->_smartStyleProxyRenderer, "setInputStyles:", [MEMORY[0x1E695DEC8] arrayWithObjects:&currentStyle count:1]);
    [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer setInputPixelBuffer:v14];
    [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer setInputImageStatistics:v17];
    v18 = [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer prepareToProcess:v11];
    if (v18)
    {
      selfCopy2 = v18;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      LODWORD(v22) = selfCopy2;
      self = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v22);
    }

    else
    {
      self = [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer process];
      selfCopy2 = self;
      if (self)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        LODWORD(v22) = selfCopy2;
        self = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v22);
      }
    }
  }

LABEL_19:
  if (*v10 == 1)
  {
    *&v20 = OUTLINED_FUNCTION_6_35(self, a2, *&method, buffer, v4, v5, v6, v7, v22, v23, currentStyle, v25, v26, v27, v28, v29, v30);
    OUTLINED_FUNCTION_5_7(822150526, v20);
  }

  return selfCopy2;
}

@end