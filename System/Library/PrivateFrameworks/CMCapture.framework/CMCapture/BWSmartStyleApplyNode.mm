@interface BWSmartStyleApplyNode
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)stamp;
- (BOOL)_canRenderWithStyleEngineApplyForInput:(opaqueCMSampleBuffer *)input;
- (BOOL)_updateCurrentStyle:(opaqueCMSampleBuffer *)style;
- (BWSmartStyleApplyNode)initWithMetalCommandQueue:(id)queue renderingMethod:(int)method squareAspectRatioConfigEnabled:(BOOL)enabled;
- (id)_updateSupportedPixelFormats;
- (int)_applySmartStyleFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to;
- (int)_applySmartStyleProxyRenderingWithMethod:(int)method fromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to;
- (int)_loadAndConfigureSmartStyleBundle:(BOOL)bundle;
- (int)_loadAndConfigureSmartStyleProxyRenderer;
- (void)_consumeSampleBufferAttachments:(opaqueCMSampleBuffer *)attachments;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setMaxLossyCompressionLevel:(int)level;
@end

@implementation BWSmartStyleApplyNode

- (BWSmartStyleApplyNode)initWithMetalCommandQueue:(id)queue renderingMethod:(int)method squareAspectRatioConfigEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v34.receiver = self;
  v34.super_class = BWSmartStyleApplyNode;
  v8 = [(BWNode *)&v34 init];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v8->_renderingMethod = method;
  v8->_maxLossyCompressionLevel = 0;
  v8->_metalCommandQueue = queue;
  v9->_firstFrame = 1;
  _updateSupportedPixelFormats = [(BWSmartStyleApplyNode *)v9 _updateSupportedPixelFormats];
  if (!_updateSupportedPixelFormats)
  {
    [BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:];
    return 0;
  }

  v11 = _updateSupportedPixelFormats;
  v12 = objc_alloc_init(BWVideoFormatRequirements);
  if (!v12)
  {
    [BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:];
    return 0;
  }

  v13 = v12;
  v27 = enabledCopy;
  [(BWVideoFormatRequirements *)v12 setSupportedPixelFormats:v11];
  v28 = v9;
  v14 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v9];
  [(BWNodeInput *)v14 setFormatRequirements:v13];
  [(BWNodeInput *)v14 setPassthroughMode:2];
  if (method == 1)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 0);
    v16 = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v31;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v31 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v30 + 1) + 8 * i);
          v21 = objc_alloc_init(BWNodeInputMediaConfiguration);
          [(BWNodeInputMediaConfiguration *)v21 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeInputMediaConfiguration *)v21 setPassthroughMode:0];
          if (objc_msgSend_isEqualToString_(v20))
          {
            [(BWNodeInputMediaConfiguration *)v21 setRetainedBufferCount:4];
          }

          [(BWNodeInput *)v14 setMediaConfiguration:v21 forAttachedMediaKey:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v17);
    }
  }

  v22 = v28;
  [(BWNode *)v28 addInput:v14];
  v23 = objc_alloc_init(BWVideoFormatRequirements);
  if (!v23)
  {
    [BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:];
    return 0;
  }

  v24 = v23;
  [(BWVideoFormatRequirements *)v23 setSupportedPixelFormats:v11];
  v25 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v28];
  [(BWNodeOutput *)v25 setFormatRequirements:v24];
  [(BWNodeOutput *)v25 setPassthroughMode:2];
  [(BWNodeOutput *)v25 setProvidesPixelBufferPool:1];
  [(BWNodeOutput *)v25 setOwningNodeRetainedBufferCount:1];
  [(BWNode *)v28 addOutput:v25];
  if ([(BWSmartStyleApplyNode *)v28 _loadAndConfigureSmartStyleBundle:v27])
  {
    [BWSmartStyleApplyNode initWithMetalCommandQueue:renderingMethod:squareAspectRatioConfigEnabled:];
    return 0;
  }

  v28->_applyDither = 1;
  return v22;
}

- (void)setMaxLossyCompressionLevel:(int)level
{
  if (self->_maxLossyCompressionLevel != level)
  {
    formatRequirements = [(BWNodeInput *)self->super._input formatRequirements];
    formatRequirements2 = [(BWNodeOutput *)self->super._output formatRequirements];
    _updateSupportedPixelFormats = [(BWSmartStyleApplyNode *)self _updateSupportedPixelFormats];
    if (_updateSupportedPixelFormats)
    {
      v7 = _updateSupportedPixelFormats;
      [(BWFormatRequirements *)formatRequirements setSupportedPixelFormats:_updateSupportedPixelFormats];

      [(BWFormatRequirements *)formatRequirements2 setSupportedPixelFormats:v7];
    }

    else
    {
      [BWSmartStyleApplyNode setMaxLossyCompressionLevel:];
    }
  }
}

- (void)dealloc
{
  [-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")];

  mostRecentCoefficients = self->_mostRecentCoefficients;
  if (mostRecentCoefficients)
  {
    CFRelease(mostRecentCoefficients);
  }

  v4.receiver = self;
  v4.super_class = BWSmartStyleApplyNode;
  [(BWNode *)&v4 dealloc];
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
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(format, "pixelFormat")}];
        -[BWFormatRequirements setSupportedPixelFormats:](formatRequirements, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1]);
        v13 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
        -[BWFormatRequirements setSupportedColorSpaceProperties:](formatRequirements, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v13 count:1]);
        [(BWNodeOutput *)self->super._output setFormat:format];
      }

      else if ([key isEqual:0x1F21AB070])
      {
        v10 = [BWPixelBufferPool alloc];
        v11 = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:](v10, "initWithVideoFormat:capacity:name:memoryPool:", format, self->_filteredCoefficientsPixelBufferPoolSize, [MEMORY[0x1E696AEC0] stringWithFormat:@"ApplyNode filtered coefficients buffer pool"], -[BWNodeOutput memoryPool](self->super._output, "memoryPool"));
        self->_filteredCoefficientsPixelBufferPool = v11;
        if (!v11)
        {
          [BWSmartStyleApplyNode didSelectFormat:forInput:forAttachedMediaKey:];
        }
      }

      else if (([BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1 1)] & 1) == 0)
      {
        v12.receiver = self;
        v12.super_class = BWSmartStyleApplyNode;
        [(BWNode *)&v12 didSelectFormat:format forInput:input forAttachedMediaKey:key];
      }
    }

    else
    {
      [BWSmartStyleApplyNode didSelectFormat:a2 forInput:? forAttachedMediaKey:?];
    }
  }

  else
  {
    [(BWSmartStyleApplyNode *)self didSelectFormat:a2 forInput:0 forAttachedMediaKey:input, key];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWSmartStyleApplyNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWSmartStyleApplyNode *)self _loadAndConfigureSmartStyleProxyRenderer])
  {
    [BWSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor setup])
  {
    [BWSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor prepareToProcess:4])
  {
    [BWSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }

  else if ([-[CMISmartStyleProcessor utilities](self->_smartStyleProcessor "utilities")])
  {
    [BWSmartStyleApplyNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  v3.receiver = self;
  v3.super_class = BWSmartStyleApplyNode;
  [(BWNode *)&v3 didReachEndOfDataForInput:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  target = 0;
  if (!buffer)
  {
    [BWSmartStyleApplyNode renderSampleBuffer:? forInput:?];
    goto LABEL_26;
  }

  if (!input)
  {
    [BWSmartStyleApplyNode renderSampleBuffer:a2 forInput:?];
    goto LABEL_29;
  }

  if (!BWSampleBufferIsMarkerBuffer(buffer))
  {
    if ([(BWSmartStyleApplyNode *)self _updateCurrentStyle:buffer])
    {
      renderingMethod = self->_renderingMethod;
      if (renderingMethod)
      {
        v8 = *off_1E798A3C8;
        v9 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
        if (v9)
        {
          v10 = *off_1E798B710;
          if (([objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B710), "BOOLValue"}] & 1) != 0 || (AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame")) == 0)
          {
            v12 = 0;
            bufferCopy2 = buffer;
            goto LABEL_17;
          }

          v14 = AttachedMedia;
          v15 = CMGetAttachment(AttachedMedia, v8, 0);
          if (v15)
          {
            v16 = [objc_msgSend(v15 objectForKeyedSubscript:{v10), "BOOLValue"}];
            v12 = v16;
            if (v16)
            {
              bufferCopy2 = v14;
            }

            else
            {
              bufferCopy2 = buffer;
            }

LABEL_17:
            if (BWSmartStyleRenderingShouldBeBypassed(bufferCopy2))
            {
LABEL_25:
              [(BWSmartStyleApplyNode *)&self->super.super.isa renderSampleBuffer:buffer forInput:v12, &target];
LABEL_26:
              self->_firstFrame = 0;
              return;
            }

            if (renderingMethod == 1)
            {
              if ([(BWSmartStyleApplyNode *)self _canRenderWithStyleEngineApplyForInput:bufferCopy2])
              {
                if ([(BWSmartStyleApplyNode *)self _applySmartStyleFromSampleBuffer:bufferCopy2 to:&target])
                {
                  [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
                  goto LABEL_25;
                }

LABEL_24:
                CMSetAttachment(target, @"FiltersApplied", MEMORY[0x1E695E118], 1u);
                goto LABEL_25;
              }

              renderingMethod = 3;
            }

            if ([(BWSmartStyleApplyNode *)self _applySmartStyleProxyRenderingWithMethod:renderingMethod fromSampleBuffer:bufferCopy2 to:&target])
            {
              [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
        }

        else
        {
          [BWSmartStyleApplyNode renderSampleBuffer:forInput:];
        }
      }
    }

LABEL_29:
    v12 = 0;
    goto LABEL_25;
  }

  output = self->super._output;

  [(BWNodeOutput *)output emitSampleBuffer:buffer];
}

- (BOOL)_canRenderWithStyleEngineApplyForInput:(opaqueCMSampleBuffer *)input
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(input, 0x1F21AB0D0);
  v5 = BWSampleBufferGetAttachedMedia(input, 0x1F21AB070);
  if (AttachedMedia)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  return !v6;
}

- (int)_loadAndConfigureSmartStyleBundle:(BOOL)bundle
{
  bundleCopy = bundle;
  v5 = BWLoadProcessorBundle(@"SmartStyle", 1);
  if (v5)
  {
    v6 = [v5 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorV%d", 1)}];
    v7 = [[v6 alloc] initWithOptionalMetalCommandQueue:self->_metalCommandQueue];
    self->_smartStyleProcessor = v7;
    if (v7)
    {
      [(CMISmartStyleProcessor *)v7 setInstanceLabel:@"ApplyNode"];
      [(CMISmartStyleProcessor *)self->_smartStyleProcessor setUseLiveMetalAllocations:1];
      v8 = [(objc_class *)v6 getSmartStyleCoefficientsFilterType:@"iir"];
      self->_filterType = v8;
      v9 = bundleCopy ? [(objc_class *)v6 getDefaultProcessorConfigurationForStreamingSquareAspectRatioWithFilterType:v8]: [(objc_class *)v6 getDefaultProcessorConfigurationForStreamingWithFilterType:v8];
      [(CMISmartStyleProcessor *)self->_smartStyleProcessor setConfiguration:v9];
      if ([(CMISmartStyleProcessor *)self->_smartStyleProcessor configuration])
      {
        [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
        self->_globalLocalSystemMixFactorDecayRate = v10 / 10.0;
        self->_filteredCoefficientsPixelBufferPoolSize = [(objc_class *)v6 getRequiredFilteredCoefficientsPixelBufferPoolSizeForFilterType:self->_filterType]+ 1;
        v11 = [v5 classNamed:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"CMISmartStyleProcessorInputOutputV%d", 1)}];
        self->_smartStyleProcessorInputOutputClass = v11;
        if (v11)
        {
          return 0;
        }
      }
    }
  }

  [(BWSmartStyleApplyNode *)v5 _loadAndConfigureSmartStyleBundle:?];
  return -12786;
}

- (int)_loadAndConfigureSmartStyleProxyRenderer
{
  v3 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleV%d", 1]);
  self->_smartStyleClass = v3;
  if (!v3 || (v4 = NSClassFromString([MEMORY[0x1E696AEC0] stringWithFormat:@"CMISmartStyleProxyRendererV%d", 1]), !self->_smartStyleClass) || (v5 = objc_msgSend([v4 alloc], "initWithOptionalMetalCommandQueue:", self->_metalCommandQueue), (self->_smartStyleProxyRenderer = v5) == 0))
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
  [v9 setLabel:@"BWSmartStyleApplyNode-SmartStyleProxyRenderer-FigMetalAllocatorBackend"];
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
    [(BWSmartStyleApplyNode *)v13 _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  setup = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer setup];
  if (setup)
  {
    LODWORD(v13) = setup;
    [BWSmartStyleApplyNode _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  prewarm = [(CMISmartStyleProxyRenderer *)self->_smartStyleProxyRenderer prewarm];
  LODWORD(v13) = prewarm;
  if (prewarm)
  {
    [(BWSmartStyleApplyNode *)prewarm _loadAndConfigureSmartStyleProxyRenderer];
    goto LABEL_22;
  }

  return v13;
}

- (id)_updateSupportedPixelFormats
{
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2249BE8];
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
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 1);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        BWSampleBufferRemoveAttachedMedia(attachments, *(*(&v11 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v6);
  }

  CMRemoveAttachment(attachments, *off_1E798A4C0);
  v9 = CMGetAttachment(attachments, *off_1E798A3C8, 0);
  [v9 setObject:0 forKeyedSubscript:*off_1E798A8F8];
  [v9 setObject:0 forKeyedSubscript:*off_1E798A920];
  [v9 setObject:0 forKeyedSubscript:*off_1E798A928];
  [v9 setObject:0 forKeyedSubscript:*off_1E798A8E8];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getSampleBufferPresentationTimeStamp:(SEL)stamp
{
  *retstr = **&MEMORY[0x1E6960C70];
  if (!a4)
  {
    return [(BWSmartStyleApplyNode *)self _getSampleBufferPresentationTimeStamp:stamp];
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

- (BOOL)_updateCurrentStyle:(opaqueCMSampleBuffer *)style
{
  if (!style)
  {
    return 0;
  }

  v4 = CMGetAttachment(style, *off_1E798A3C8, 0);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = [v4 objectForKeyedSubscript:*off_1E798A8C0];
  if (!v5)
  {

    result = 0;
    self->_currentStyle = 0;
    return result;
  }

  v6 = [FigCaptureSmartStyle createFromDictionary:v5];
  if (v6)
  {
    v7 = v6;
    currentStyle = self->_currentStyle;
    if (!currentStyle)
    {
      currentStyle = objc_alloc_init(self->_smartStyleClass);
    }

    self->_currentStyle = currentStyle;
    -[CMISmartStyle setCastType:](self->_currentStyle, "setCastType:", [v7 cast]);
    [v7 intensity];
    [(CMISmartStyle *)self->_currentStyle setCastIntensity:?];
    [v7 toneBias];
    [(CMISmartStyle *)self->_currentStyle setToneBias:?];
    [v7 colorBias];
    [(CMISmartStyle *)self->_currentStyle setColorBias:?];
    return self->_currentStyle != 0;
  }

  else
  {
LABEL_10:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }
}

- (int)_applySmartStyleFromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to
{
  v69 = 0;
  v70[0] = 0;
  v67 = *MEMORY[0x1E6960CC0];
  v68 = *(MEMORY[0x1E6960CC0] + 8);
  v7 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v7;
  v8 = MEMORY[0x1E695FF58];
  if (!buffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v56, key, v58, v59, v60, v61);
    goto LABEL_51;
  }

  toCopy = to;
  if (!to)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v56, key, v58, v59, v60, v61);
    goto LABEL_53;
  }

  *to = 0;
  if (!self)
  {
    toCopy = 0;
    OUTLINED_FUNCTION_9_61();
    v68 = 0;
    v67 = 0;
LABEL_18:
    v39 = -12780;
    goto LABEL_39;
  }

  SampleBufferPresentationTimeStamp = objc_msgSend__getSampleBufferPresentationTimeStamp_(self, a2);
  v20 = v64;
  v67 = v61;
  v21 = v63;
  v68 = v62;
  if ((v63 & 1) == 0)
  {
LABEL_51:
    toCopy = 0;
LABEL_53:
    OUTLINED_FUNCTION_9_61();
    goto LABEL_18;
  }

  if (*v8 == 1)
  {
    *&v22 = OUTLINED_FUNCTION_8_58(SampleBufferPresentationTimeStamp, v13, v14, v15, v16, v17, v18, v19, v54, v55, v56, key, v58, v59, v60, v61, v62, v63, v64, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v66, v67, v68);
    OUTLINED_FUNCTION_5_7(822150521, v22);
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    AttachedMedia = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v56, key, v58, v59, v60, v61);
    toCopy = 0;
    v4 = 0;
    goto LABEL_18;
  }

  HIDWORD(v60) = v21;
  v23 = *off_1E798A3C8;
  v24 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v24)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v56, key, v58, v59, v60, v61);
    toCopy = 0;
    OUTLINED_FUNCTION_9_61();
    v39 = -12780;
    goto LABEL_39;
  }

  v25 = v24;
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AB0D0);
  v4 = AttachedMedia;
  if (!AttachedMedia)
  {
    toCopy = 0;
LABEL_58:
    ImageBuffer = 0;
    v39 = -12783;
    goto LABEL_39;
  }

  v58 = toCopy;
  AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AB070);
  toCopy = AttachedMedia;
  if (!AttachedMedia)
  {
    v4 = 0;
    goto LABEL_58;
  }

  v56 = v6;
  key = v23;
  v59 = v20;
  v34 = *off_1E798B588;
  v35 = [objc_msgSend(v25 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
  mostRecentCoefficients = self->_mostRecentCoefficients;
  if (v35 == self->_mostRecentQuadraBinningFactor)
  {
    if (mostRecentCoefficients)
    {
      CFRelease(mostRecentCoefficients);
      self->_mostRecentCoefficients = 0;
    }

    self->_mostRecentCoefficients = CFRetain(toCopy);
    self->_applyGlobalMostRecentCoefficients = 0;
    v37 = self->_currentGlobalLocalMixFactor - self->_globalLocalSystemMixFactorDecayRate;
    [objc_msgSend(-[CMISmartStyleProcessor configuration](self->_smartStyleProcessor "configuration")];
    if (v37 >= v38)
    {
      v38 = v37;
    }

    self->_currentGlobalLocalMixFactor = v38;
  }

  else if (mostRecentCoefficients)
  {
    self->_applyGlobalMostRecentCoefficients = 1;
    self->_currentGlobalLocalMixFactor = 1.0;
    toCopy = mostRecentCoefficients;
  }

  self->_mostRecentQuadraBinningFactor = [objc_msgSend(v25 objectForKeyedSubscript:{v34), "intValue"}];
  v40 = [v25 objectForKeyedSubscript:*off_1E798A8F0];
  if (v40 && !CGRectMakeWithDictionaryRepresentation(v40, &rect) || (v41 = CMSampleBufferGetImageBuffer(v4)) == 0 || (v42 = v41, (v43 = CMSampleBufferGetImageBuffer(toCopy)) == 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v54) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54);
    toCopy = 0;
    OUTLINED_FUNCTION_9_61();
    v39 = -12780;
LABEL_71:
    v8 = MEMORY[0x1E695FF58];
    goto LABEL_39;
  }

  v44 = v43;
  AttachedMedia = [(BWPixelBufferPool *)[(BWNodeOutput *)self->super._output livePixelBufferPool] newPixelBuffer];
  v4 = AttachedMedia;
  if (!AttachedMedia)
  {
    toCopy = 0;
LABEL_63:
    ImageBuffer = 0;
LABEL_70:
    v39 = -12786;
    goto LABEL_71;
  }

  CVBufferPropagateAttachments(ImageBuffer, AttachedMedia);
  toCopy = objc_alloc_init(self->_smartStyleProcessorInputOutputClass);
  if (!toCopy)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v54) = 0;
    AttachedMedia = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v6, v23, v58, v20, v60, v61);
    goto LABEL_63;
  }

  [toCopy setMetalSharedEvent:{CMGetAttachment(buffer, *off_1E798A4C0, 0)}];
  [toCopy setInputUnstyledPixelBuffer:ImageBuffer];
  [toCopy setInputMetadataDict:v25];
  [toCopy setInputUnstyledThumbnailPixelBuffer:v42];
  [toCopy setOutputStyledPixelBuffer:v4];
  [toCopy setPrimaryCaptureRect:{rect.origin.x, rect.origin.y, rect.size.width, rect.size.height}];
  *&v45 = self->_currentGlobalLocalMixFactor;
  [toCopy setGlobalLinearSystemMixFactor:v45];
  [toCopy setApplyDither:self->_applyDither];
  if (!self->_filterType)
  {
    [toCopy setInputStyleCoefficientsPixelBuffer:v44];
    ImageBuffer = 0;
    goto LABEL_32;
  }

  [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
  OUTLINED_FUNCTION_5_83();
  v47 = [v46 enqueueCoefficientsForFiltering:v44 withMetadata:v25 pts:&v61];
  if (v47)
  {
    v39 = v47;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v54) = v39;
    AttachedMedia = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v6, v23, v58, v20, v60, v61);
    ImageBuffer = 0;
    goto LABEL_71;
  }

  ImageBuffer = [(BWPixelBufferPool *)self->_filteredCoefficientsPixelBufferPool newPixelBuffer];
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v54) = 0;
    AttachedMedia = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v6, v23, v58, v20, v60, v61);
    goto LABEL_70;
  }

  [(CMISmartStyleProcessor *)self->_smartStyleProcessor utilities];
  OUTLINED_FUNCTION_5_83();
  [v48 filterCoefficientsForFrameWithMetadata:v25 pts:&v61 filterType:? toPixelBuffer:?];
  [toCopy setInputStyleCoefficientsPixelBuffer:ImageBuffer];
LABEL_32:
  [(CMISmartStyleProcessor *)self->_smartStyleProcessor setInputOutput:toCopy];
  process = [(CMISmartStyleProcessor *)self->_smartStyleProcessor process];
  if (process || (process = [(CMISmartStyleProcessor *)self->_smartStyleProcessor finishProcessing]) != 0)
  {
    v39 = process;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v54) = v39;
    AttachedMedia = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54);
    v8 = MEMORY[0x1E695FF58];
    goto LABEL_39;
  }

  v50 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, v4, &v69, v70);
  v8 = MEMORY[0x1E695FF58];
  if (v50)
  {
    v39 = v50;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v54) = v39;
    AttachedMedia = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v6, v23, v58, v20, v60, v61);
    goto LABEL_39;
  }

  v51 = CMGetAttachment(buffer, v23, 0);
  if (!v51)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_47();
    LODWORD(v54) = 0;
    AttachedMedia = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v54, v55, v6, v23, v58, v20, v60, v61);
    goto LABEL_18;
  }

  [v51 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798A8B8];
  AttachedMedia = v70[0];
  if (v70[0])
  {
    AttachedMedia = CFRetain(v70[0]);
  }

  v39 = 0;
  *v58 = AttachedMedia;
LABEL_39:
  if (*v8 == 1)
  {
    *&v52 = OUTLINED_FUNCTION_8_58(AttachedMedia, v27, v28, v29, v30, v31, v32, v33, v54, v55, v56, key, v58, v59, v60, v61, v62, v63, v64, *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height, v66, v67, v68);
    OUTLINED_FUNCTION_5_7(822150522, v52);
  }

  if (v70[0])
  {
    CFRelease(v70[0]);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  return v39;
}

- (int)_applySmartStyleProxyRenderingWithMethod:(int)method fromSampleBuffer:(opaqueCMSampleBuffer *)buffer to:(opaqueCMSampleBuffer *)to
{
  selfCopy = self;
  v44 = 0;
  cf = 0;
  v41 = *MEMORY[0x1E6960CC0];
  v42 = *(MEMORY[0x1E6960CC0] + 8);
  v12 = MEMORY[0x1E695FF58];
  if (method == 2)
  {
    v13 = 1;
  }

  else
  {
    if (method != 3)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_11();
      self = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, v31, v32, v33, v34, v35, currentStyle, v37);
      selfCopy2 = 0;
      v25 = 0;
      goto LABEL_26;
    }

    v13 = 2;
  }

  if (!buffer || !to)
  {
    goto LABEL_35;
  }

  *to = 0;
  if (!self)
  {
    selfCopy2 = 0;
    v42 = 0;
    v41 = 0;
LABEL_18:
    v25 = -12780;
    goto LABEL_26;
  }

  self = objc_msgSend__getSampleBufferPresentationTimeStamp_(self, a2, buffer);
  v14 = v40;
  v41 = v37;
  v15 = v39;
  v42 = v38;
  if ((v39 & 1) == 0)
  {
LABEL_36:
    selfCopy2 = 0;
    goto LABEL_18;
  }

  if (*v12 == 1)
  {
    *&v16 = OUTLINED_FUNCTION_7_73(self, a2, *&method, buffer, to, v5, v6, v7, v30, v31, v32, v33, v34, v35, currentStyle, v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_5_7(822150525, v16);
  }

  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (!ImageBuffer || (v18 = ImageBuffer, (v19 = CMGetAttachment(buffer, *off_1E798A3C8, 0)) == 0))
  {
LABEL_35:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    self = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_36;
  }

  v20 = v19;
  v33 = v8;
  self = [(BWPixelBufferPool *)[(BWNodeOutput *)selfCopy->super._output livePixelBufferPool] newPixelBuffer];
  selfCopy2 = self;
  if (self)
  {
    v34 = v14;
    HIDWORD(v35) = v15;
    CVBufferPropagateAttachments(v18, self);
    v22 = [v20 objectForKeyedSubscript:*off_1E798A8D0];
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAED0);
    if (AttachedMedia)
    {
      v24 = CMSampleBufferGetImageBuffer(AttachedMedia);
    }

    else
    {
      v24 = 0;
    }

    currentStyle = selfCopy->_currentStyle;
    -[CMISmartStyleProxyRenderer setInputStyles:](selfCopy->_smartStyleProxyRenderer, "setInputStyles:", [MEMORY[0x1E695DEC8] arrayWithObjects:&currentStyle count:1]);
    [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer setInputPixelBuffer:v18];
    [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer setInputMaskPixelBuffer:v24];
    [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer setInputImageStatistics:v22];
    [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer setOutputPixelBuffer:selfCopy2];
    v26 = [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer prepareToProcess:v13];
    if (v26 || (v26 = [(CMISmartStyleProxyRenderer *)selfCopy->_smartStyleProxyRenderer process]) != 0)
    {
      v25 = v26;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_4_88();
      self = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    }

    else
    {
      v27 = BWCMSampleBufferCreateCopyWithNewPixelBuffer(buffer, selfCopy2, &cf, &v44);
      if (v27)
      {
        v25 = v27;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_4_88();
        self = FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30, v31, v32, v8, v14, v35, currentStyle, v37);
      }

      else
      {
        self = v44;
        if (v44)
        {
          self = CFRetain(v44);
        }

        v25 = 0;
        *to = self;
      }
    }
  }

  else
  {
    v25 = -12786;
  }

LABEL_26:
  if (*v12 == 1)
  {
    *&v28 = OUTLINED_FUNCTION_7_73(self, a2, *&method, buffer, to, v5, v6, v7, v30, v31, v32, v33, v34, v35, currentStyle, v37, v38, v39, v40, v41, v42);
    OUTLINED_FUNCTION_5_7(822150526, v28);
  }

  if (v44)
  {
    CFRelease(v44);
  }

  if (selfCopy2)
  {
    CFRelease(selfCopy2);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v25;
}

- (void)renderSampleBuffer:(char)a3 forInput:(uint64_t *)a4 .cold.6(id *a1, const void *a2, char a3, uint64_t *a4)
{
  [a1 _consumeSampleBufferAttachments:a2];
  if (*a4)
  {
    [a1 _consumeSampleBufferAttachments:?];
    if (a3)
    {
      BWSampleBufferSetAttachedMedia(a2, @"SynchronizedSlaveFrame", *a4);
      v8 = a1[2];
      v9 = a2;
    }

    else
    {
      v9 = *a4;
      v8 = a1[2];
    }

    [v8 emitSampleBuffer:v9];
    if (*a4)
    {
      CFRelease(*a4);
    }
  }

  else
  {
    [a1[2] emitSampleBuffer:a2];
  }
}

- (void)renderSampleBuffer:(id *)a1 forInput:.cold.7(id *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6.value, v6.timescale, v6.epoch, v7, v8);
  [a1 _consumeSampleBufferAttachments:0];
  CMSampleBufferGetPresentationTimeStamp(&v6, 0);
  v2 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C1B0 pts:&v6];
  [a1[2] emitDroppedSample:v2];
}

@end