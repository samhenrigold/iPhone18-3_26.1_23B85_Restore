@interface BWPixelTransferNode
+ (void)initialize;
- (BOOL)_zeroFillBuffers;
- (BOOL)hasNonLiveConfigurationChanges;
- (BWPixelTransferNode)initWithfractionalSourceRectEnabled:(BOOL)enabled;
- (CGFloat)_getUpdatedPrimaryCaptureRectForOutputSampleBuffer:(uint64_t)buffer inputDimensions:(CMAttachmentBearerRef)target;
- (CGRect)inputCropRect;
- (VTPixelTransferSessionRef)_ensureTransferSession;
- (double)_makeCurrentConfigurationLive;
- (id)_updateInputRequirements;
- (id)_updateOutputRequirements;
- (int)maxLossyCompressionLevel;
- (uint64_t)_convertUsingHDRProcessing:(__CVBuffer *)processing toSDR:(uint64_t)r;
- (uint64_t)_emitIfMarkerBuffer:(uint64_t)result;
- (uint64_t)_ensureDeviceOrientationMonitor;
- (uint64_t)_ensureIntermediatePoolWithDimensions:(uint64_t)dimensions;
- (uint64_t)_ensureRotationSession;
- (uint64_t)_supportedOutputPixelFormats;
- (uint64_t)_updateLiveRotationAndFlipsToApplyUprightExifOrientation:(uint64_t)result;
- (uint64_t)_updateMetadataForOutputSampleBuffer:(uint64_t)result destinationRect:;
- (unsigned)_updateLiveDeviceOrientationAffectedMetadataForOutputSampleBuffer:(double)buffer inputDims:(double)dims inputCropRect:(double)rect;
- (void)_ensureIntermediatePixelBufferForStillHDRToSDRConversionIfNeeded;
- (void)_updatePassthroughModes;
- (void)_updatePrimaryCaptureRect:(uint64_t)rect forOutputSampleBuffer:(const void *)buffer;
- (void)_updateUprightExifOrientationOnSampleBufferIfNeeded:(uint64_t)needed;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setAllows422To420Conversion:(BOOL)conversion;
- (void)setConversionMethodForStillImagesDuringHDRVideos:(int)videos;
- (void)setCropMode:(int)mode;
- (void)setEmitSampleBufferSemaphore:(id)semaphore;
- (void)setMaxInputLossyCompressionLevel:(int)level;
- (void)setMaxLossyCompressionLevel:(int)level;
- (void)setMaxOutputLossyCompressionLevel:(int)level;
- (void)setOutputColorSpaceProperties:(int)properties;
- (void)setOutputHeight:(unint64_t)height;
- (void)setOutputPixelFormat:(unsigned int)format;
- (void)setOutputWidth:(unint64_t)width;
- (void)setPassesBuffersThroughWhenPossible:(BOOL)possible;
- (void)setPreferredOutputPixelFormats:(id)formats;
@end

@implementation BWPixelTransferNode

- (id)_updateOutputRequirements
{
  if (result)
  {
    v1 = result;
    formatRequirements = [result[2] formatRequirements];
    videoFormat = [v1[1] videoFormat];
    v4 = videoFormat;
    width = v1[30];
    if (!width)
    {
      width = [videoFormat width];
    }

    [formatRequirements setWidth:width];
    height = v1[31];
    if (!height)
    {
      height = [v4 height];
    }

    [formatRequirements setHeight:height];
    if (*(v1 + 64))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
      result = [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
    }

    else
    {
      [(BWPixelTransferNode *)v1 _supportedOutputPixelFormats];
      [OUTLINED_FUNCTION_17() setSupportedPixelFormats:?];
      result = [formatRequirements setPreferredPixelFormats:v1[33]];
    }

    if (*(v1 + 68))
    {
      v9 = [MEMORY[0x1E696AD98] numberWithInt:?];
      v7 = &v9;
    }

    else
    {
      if (!v4)
      {
        return result;
      }

      [v4 colorSpaceProperties];
      v8 = [OUTLINED_FUNCTION_4() numberWithInt:?];
      v7 = &v8;
    }

    [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    return [OUTLINED_FUNCTION_17() setSupportedColorSpaceProperties:?];
  }

  return result;
}

- (uint64_t)_supportedOutputPixelFormats
{
  if (!self)
  {
    return 0;
  }

  v2 = ptn_supportedPixelFormats(*(self + 292));
  v3 = [objc_msgSend(*(self + 8) "videoFormat")];
  if (v3)
  {
    v4 = v3;
    if (FigCapturePixelFormatIsDepthData(v3))
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      return [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    }

    else
    {
      IsFullRange = FigCapturePixelFormatIsFullRange(v4);
      IsTenBit = FigCapturePixelFormatIsTenBit(v4);
      v7 = FigCapturePixelFormatIs422(v4);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __51__BWPixelTransferNode__supportedOutputPixelFormats__block_invoke;
      v9[3] = &unk_1E79902F0;
      v9[4] = self;
      v10 = IsTenBit & (IsFullRange ^ 1);
      v11 = IsFullRange & 1;
      v12 = IsTenBit;
      v13 = v7;
      [MEMORY[0x1E696AE18] predicateWithBlock:v9];
      [OUTLINED_FUNCTION_17() filterUsingPredicate:?];
    }
  }

  return v2;
}

- (id)_updateInputRequirements
{
  if (result)
  {
    v1 = result;
    formatRequirements = [result[1] formatRequirements];
    v3 = ptn_supportedPixelFormats(*(v1 + 74));

    return [formatRequirements setSupportedPixelFormats:v3];
  }

  return result;
}

- (void)_updatePassthroughModes
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 32) == 3)
  {
    v2 = result[1];
    v3 = 1;
    v4 = 1;
  }

  else
  {
    v5 = *(result + 201);
    v2 = result[1];
    if (v5 != 1)
    {
      [v2 setPassthroughMode:0];
      v3 = 0;
      goto LABEL_8;
    }

    v3 = 2;
    v4 = 2;
  }

  [v2 setPassthroughMode:v4];
LABEL_8:
  [v1[2] setPassthroughMode:v3];
  v6 = [v1[1] passthroughMode] != 0;
  v7 = v1[1];

  return [v7 setConversionToPassthroughModeNeverAllowed:v6];
}

BOOL __51__BWPixelTransferNode__supportedOutputPixelFormats__block_invoke(uint64_t a1, void *a2)
{
  v4 = [a2 intValue];
  v5 = *(a1 + 32);
  if (*(v5 + 388) == 2 && [objc_msgSend(*(v5 + 8) "videoFormat")] && FigCapturePixelFormatGetCompressionType(v4))
  {
    return 0;
  }

  if (FigCapturePixelFormatIsFullRange(v4))
  {
    v6 = FigCaptureVideoRangePixelFormatForPixelFormat(v4);
  }

  else
  {
    v6 = FigCaptureFullRangePixelFormatForPixelFormat(v4);
  }

  v7 = v6;
  if (([*(*(a1 + 32) + 264) containsObject:a2] & 1) != 0 || *(*(a1 + 32) + 256) == v4)
  {
    if (FigCapturePixelFormatIsTenBit(v4))
    {
      v8 = 1;
    }

    else
    {
      v8 = FigCapturePixelFormatIsFullRange(v4) ^ 1;
    }

    v9 = *(a1 + 32);
    if (*(v9 + 393) == 1)
    {
      v10 = *(a1 + 40) ^ 1 | v8;
    }

    else
    {
      v10 = 1;
    }

    if (v7 == v4 || ([*(v9 + 264) containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v7)}] & v10) != 1)
    {
      return 1;
    }

    IsFullRange = FigCapturePixelFormatIsFullRange(v4);
    v12 = *(a1 + 41);
  }

  else
  {
    if (*(a1 + 41) != FigCapturePixelFormatIsFullRange(v4) || *(a1 + 42) != FigCapturePixelFormatIsTenBit(v4))
    {
      return 0;
    }

    if (*(*(a1 + 32) + 392))
    {
      return 1;
    }

    IsFullRange = FigCapturePixelFormatIs422(v4);
    v12 = *(a1 + 43);
  }

  return v12 == IsFullRange;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWPixelTransferNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  [(BWPixelTransferNode *)self _ensureIntermediatePixelBufferForStillHDRToSDRConversionIfNeeded];
}

- (void)_ensureIntermediatePixelBufferForStillHDRToSDRConversionIfNeeded
{
  v2 = *(self + 400);
  if (v2)
  {
    CFRelease(v2);
    *(self + 400) = 0;
  }
}

- (BOOL)_zeroFillBuffers
{
  if (result)
  {
    v1 = result;
    return ([objc_msgSend(*(result + 16) "videoFormat")] & 1) == 0 && FigCapturePixelFormatGetCompressionType(objc_msgSend(objc_msgSend(*(v1 + 16), "videoFormat"), "pixelFormat")) == 0;
  }

  return result;
}

- (double)_makeCurrentConfigurationLive
{
  if (self)
  {
    *(self + 132) = *(self + 128);
    *(self + 200) = !CGRectEqualToRect(*(self + 136), *MEMORY[0x1E695F058]);
    v2 = *(self + 152);
    *(self + 168) = *(self + 136);
    *(self + 184) = v2;
    *(self + 202) = *(self + 201);
    *(self + 239) = *(self + 238);
    *(self + 284) = *(self + 276);
    *(self + 204) = *(self + 203);
    *(self + 212) = *(self + 208);
    *(self + 217) = *(self + 216);
    *(self + 219) = *(self + 218);
    *(self + 220) = [(BWPixelTransferNode *)self _zeroFillBuffers];
    *(self + 222) = *(self + 221);
    *(self + 237) = *(self + 236);
    *(self + 385) = *(self + 384);
    if (*(self + 200) == 1 && *(self + 432) == 1)
    {
      if (dword_1ED844550)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  return result;
}

- (uint64_t)_ensureRotationSession
{
  v1 = result;
  if (*(result + 316) != *(result + 217))
  {
    OUTLINED_FUNCTION_10_10();
    [MEMORY[0x1E696AD98] numberWithBool:?];
    v2 = OUTLINED_FUNCTION_1_25();
    result = VTSessionSetProperty(v2, v3, v4);
    *(v1 + 316) = *(v1 + 217);
  }

  if (*(v1 + 317) != *(v1 + 219))
  {
    OUTLINED_FUNCTION_10_10();
    [MEMORY[0x1E696AD98] numberWithBool:?];
    v5 = OUTLINED_FUNCTION_1_25();
    result = VTSessionSetProperty(v5, v6, v7);
    *(v1 + 317) = *(v1 + 219);
  }

  if (*(v1 + 318) != *(v1 + 220))
  {
    OUTLINED_FUNCTION_10_10();
    [MEMORY[0x1E696AD98] numberWithBool:?];
    v8 = OUTLINED_FUNCTION_1_25();
    result = VTSessionSetProperty(v8, v9, v10);
    *(v1 + 318) = *(v1 + 220);
  }

  if (*(v1 + 319) != *(v1 + 237))
  {
    if (*(v1 + 237))
    {
      v11 = MEMORY[0x1E695E4C0];
    }

    else
    {
      v11 = MEMORY[0x1E695E4D0];
    }

    result = VTSessionSetProperty(*(v1 + 304), *MEMORY[0x1E6983D68], *v11);
    *(v1 + 319) = *(v1 + 237);
  }

  if (*(v1 + 324) != *(v1 + 272))
  {
    v12 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:?];
    OUTLINED_FUNCTION_6_16([v12 objectForKeyedSubscript:*MEMORY[0x1E6965F98]]);
    OUTLINED_FUNCTION_6_16([v12 objectForKeyedSubscript:*MEMORY[0x1E6965D88]]);
    result = OUTLINED_FUNCTION_6_16([v12 objectForKeyedSubscript:*MEMORY[0x1E6965F30]]);
    *(v1 + 324) = *(v1 + 272);
  }

  if (*(v1 + 320) != *(v1 + 387))
  {
    OUTLINED_FUNCTION_10_10();
    [MEMORY[0x1E696AD98] numberWithBool:?];
    v13 = OUTLINED_FUNCTION_1_25();
    result = VTSessionSetProperty(v13, v14, v15);
    *(v1 + 320) = *(v1 + 387);
  }

  if (*(v1 + 388) == 3)
  {
    videoFormat = [*(v1 + 8) videoFormat];
    videoFormat2 = [*(v1 + 16) videoFormat];
    if (([videoFormat isHLGColorSpace] & 1) != 0 && (objc_msgSend(videoFormat2, "isHLGColorSpace") & 1) == 0)
    {
      v18 = MEMORY[0x1E695E118];
      v19 = MEMORY[0x1E695E110];
    }

    else
    {
      v18 = MEMORY[0x1E695E110];
      v19 = MEMORY[0x1E695E118];
    }

    VTSessionSetProperty(*(v1 + 304), *MEMORY[0x1E6983D60], v19);
    return VTSessionSetProperty(*(v1 + 304), *MEMORY[0x1E6983D58], v18);
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

- (BWPixelTransferNode)initWithfractionalSourceRectEnabled:(BOOL)enabled
{
  v11.receiver = self;
  v11.super_class = BWPixelTransferNode;
  v4 = [(BWNode *)&v11 init];
  if (v4)
  {
    v6 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v4];
    v7 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v6 setFormatRequirements:v7];

    [(BWNode *)v4 addInput:v6];
    [(BWFormatRequirements *)[(BWNodeInput *)v4->super._input formatRequirements] setSupportedPixelFormats:ptn_supportedPixelFormats(v4->_maxInputLossyCompressionLevel)];
    v8 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v4];
    v9 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v9 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedDisplayAccess]];
    [(BWVideoFormatRequirements *)v9 setPrewireBuffers:0];
    [(BWNodeOutput *)v8 setFormatRequirements:v9];
    [(BWNodeOutput *)v8 setIndexOfInputWhichDrivesThisOutput:0];

    [(BWNode *)v4 addOutput:v8];
    [(BWPixelTransferNode *)&v4->super.super.isa _updateOutputRequirements];
    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    [(BWNode *)v4 setSupportsPrepareWhileRunning:1];
    v10 = [BWLimitedGMErrorLogger alloc];
    v4->_limitedGMErrorLogger = -[BWLimitedGMErrorLogger initWithName:maxLoggingCount:](v10, "initWithName:maxLoggingCount:", [MEMORY[0x1E696AEC0] stringWithFormat:@"PixelTransfer %p", v4], 10);
    v4->_fractionalSourceRectEnabled = enabled;
  }

  return v4;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    CFRelease(rotationSession);
  }

  transferSession = self->_transferSession;
  if (transferSession)
  {
    CFRelease(transferSession);
  }

  intermediatePixelBufferForStillHDRToSDRConversion = self->_intermediatePixelBufferForStillHDRToSDRConversion;
  if (intermediatePixelBufferForStillHDRToSDRConversion)
  {
    CFRelease(intermediatePixelBufferForStillHDRToSDRConversion);
  }

  msrScalerForHDRProcessing = self->_msrScalerForHDRProcessing;
  if (msrScalerForHDRProcessing)
  {
    CFRelease(msrScalerForHDRProcessing);
  }

  v8.receiver = self;
  v8.super_class = BWPixelTransferNode;
  [(BWNode *)&v8 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  if ([input passthroughMode])
  {
    -[BWNodeOutput setFormat:](self->super._output, "setFormat:", [input format]);
    if ([input passthroughMode] == 1)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Passthrough %@", -[BWNode name](self, "name")];

      [(BWNode *)self setName:v6];
    }
  }

  else
  {
    self->_passesBuffersThroughWhenPossible = 0;

    [(BWPixelTransferNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (BOOL)hasNonLiveConfigurationChanges
{
  v3 = [(BWFormat *)[(BWNodeOutput *)self->super._output liveFormat] isEqual:[(BWNodeOutput *)self->super._output format]];
  cropMode = self->_cropMode;
  liveCropMode = self->_liveCropMode;
  v6 = v3 & CGRectEqualToRect(self->_inputCropRect, self->_liveInputCropRect) ^ 1;
  if (cropMode != liveCropMode)
  {
    LOBYTE(v6) = 1;
  }

  if (self->_passesBuffersThroughWhenPossible != self->_livePassesBuffersThroughWhenPossible)
  {
    LOBYTE(v6) = 1;
  }

  v7 = self->_validOutputDimensions.width != self->_liveValidOutputDimensions.width || self->_validOutputDimensions.height != self->_liveValidOutputDimensions.height;
  v8 = v7 | v6;
  appliesUprightExifOrientationTransformToInput = self->_appliesUprightExifOrientationTransformToInput;
  if (appliesUprightExifOrientationTransformToInput == self->_liveAppliesUprightExifOrientationTransformToInput)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1;
  }

  if (!appliesUprightExifOrientationTransformToInput)
  {
    v11 = self->_rotationDegrees == self->_liveRotationDegrees && self->_flipHorizontal == self->_liveFlipHorizontal;
    if (!v11 || self->_flipVertical != self->_liveFlipVertical)
    {
      v10 = 1;
    }
  }

  if (self->_liveZeroFillBuffers == [(BWPixelTransferNode *)self _zeroFillBuffers])
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  if (self->_lowSpeed == self->_liveLowSpeed)
  {
    v14 = v13;
  }

  else
  {
    v14 = 1;
  }

  return self->_expectsMarkerBuffers != self->_liveExpectsMarkerBuffers || v14;
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (format)
  {
    outputFormatDescription = self->_outputFormatDescription;
    if (outputFormatDescription)
    {
      CFRelease(outputFormatDescription);
      self->_outputFormatDescription = 0;
    }
  }

  CurrentConfiguration = [(BWPixelTransferNode *)self _makeCurrentConfigurationLive];
  v11.receiver = self;
  v11.super_class = BWPixelTransferNode;
  [(BWNode *)&v11 configurationWithID:d updatedFormat:format didBecomeLiveForInput:input, CurrentConfiguration];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d)
  {
    outputFormatDescription = self->_outputFormatDescription;
    if (outputFormatDescription)
    {
      CFRelease(outputFormatDescription);
      self->_outputFormatDescription = 0;
    }

    rotationSession = self->_rotationSession;
    if (rotationSession)
    {
      CFRelease(rotationSession);
      self->_rotationSession = 0;
    }

    transferSession = self->_transferSession;
    if (transferSession)
    {
      CFRelease(transferSession);
      self->_transferSession = 0;
    }

    self->_intermediateBufferPool = 0;
    [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor stop];

    self->_deviceOrientationMonitor = 0;
  }

  v10.receiver = self;
  v10.super_class = BWPixelTransferNode;
  [(BWNode *)&v10 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  bufferCopy = buffer;
  v7 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    BWGetOriginalPresentationTimeStampFromBuffer(buffer, &v414);
    time[0].origin = *&v414.value;
    *&time[0].size.width = v414.epoch;
    CMTimeGetSeconds(time);
    kdebug_trace();
  }

  if (self->_makeCurrentConfigurationLiveOnNextRenderCallback)
  {
    [BWPixelTransferNode renderSampleBuffer:&self->_makeCurrentConfigurationLiveOnNextRenderCallback forInput:?];
  }

  if (!self->_liveExpectsMarkerBuffers || ([(BWPixelTransferNode *)self _emitIfMarkerBuffer:bufferCopy]& 1) == 0)
  {
    if (self->_doGMLogging && dword_1ED844550 != 0)
    {
      LODWORD(origin.f64[0]) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v10 = LODWORD(origin.f64[0]);
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type[0]))
      {
        v11 = v10;
      }

      else
      {
        v11 = v10 & 0xFFFFFFFE;
      }

      if (v11)
      {
        name = [(BWNode *)self name];
        CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
        Seconds = CMTimeGetSeconds(time);
        LODWORD(v414.value) = 136315906;
        *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
        LOWORD(v414.flags) = 2112;
        *(&v414.flags + 2) = name;
        HIWORD(v414.epoch) = 2048;
        selfCopy22 = self;
        v416 = 2048;
        *v417 = Seconds;
        LODWORD(v354) = 42;
        v347 = &v414;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
    if (emitSampleBufferSemaphore)
    {
      dispatch_semaphore_wait(emitSampleBufferSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    }

    v405 = *(MEMORY[0x1E695F058] + 16);
    v408 = *MEMORY[0x1E695F058];
    origin = *MEMORY[0x1E695F058];
    v424 = v405;
    pixelBuffer = CMSampleBufferGetImageBuffer(bufferCopy);
    fractionalSourceRectEnabled = self->_fractionalSourceRectEnabled;
    *type = 0;
    liveCropMode = self->_liveCropMode;
    if (liveCropMode == 2)
    {
      if (!CMGetAttachment(bufferCopy, *off_1E798A3C8, 0) || !FigCFDictionaryGetCGRectIfPresent())
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (liveCropMode == 1)
      {
        v29 = CMGetAttachment(bufferCopy, *off_1E798A3C8, 0);
        if (v29)
        {
          v30 = v29;
          v31 = *off_1E798A5C8;
          if (FigCFDictionaryGetCGRectIfPresent())
          {
            rect = origin;
            v32 = v424.f64[1];
            Width = CVPixelBufferGetWidth(pixelBuffer);
            Height = CVPixelBufferGetHeight(pixelBuffer);
            v35.i64[0] = Width;
            v35.i64[1] = Height;
            v36 = vcvtq_f64_u64(v35);
            v37 = vmulq_f64(origin, v36);
            if (fractionalSourceRectEnabled)
            {
              v38 = vmulq_f64(v424, v36);
            }

            else
            {
              __asm { FMOV            V2.2D, #0.5 }

              v46 = vrndaq_f64(vmulq_f64(v37, _Q2));
              v37 = vaddq_f64(v46, v46);
              v47 = vrndaq_f64(vmulq_f64(vmulq_f64(v424, v36), _Q2));
              v38 = vaddq_f64(v47, v47);
            }

            origin = v37;
            v424 = v38;
            CFDictionaryRemoveValue(v30, v31);
            if (self->_liveUpdatesSampleBufferMetadataForIrisVIS)
            {
              LODWORD(v414.value) = 0;
              v48 = *off_1E798B328;
              if (FigCFDictionaryGetInt32IfPresent())
              {
                CFDictionarySetValue(v30, v48, [MEMORY[0x1E696AD98] numberWithInt:(v32 * SLODWORD(v414.value))]);
              }

              time[0].origin = v408;
              time[0].size = v405;
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                *v421 = 0;
                FigCFDictionaryGetInt32IfPresent();
                FigCFDictionaryGetInt32IfPresent();
                v49 = vmulq_f64(rect, time[0].size);
                _D4 = 2.0;
                time[0].origin = vaddq_f64(time[0].origin, vbslq_s8(vcltzq_f64(v49), vrndpq_f64(v49), vrndmq_f64(v49)));
                __asm { FMLS            D3, D4, V0.D[1] }

                time[0].size.width = *&v421[4] - 2.0 * time[0].origin.x;
                time[0].size.height = _D3;
                FigCFDictionarySetCGRect();
              }
            }

            goto LABEL_44;
          }
        }

        goto LABEL_33;
      }

      if (liveCropMode)
      {
        goto LABEL_33;
      }

      haveLiveInputCropRect = self->_haveLiveInputCropRect;
      size = self->_liveInputCropRect.size;
      origin = self->_liveInputCropRect.origin;
      v424 = size;
      if ([(BWPixelTransferNode *)self appliesPrimaryCaptureRect])
      {
        v18 = *off_1E798A430;
        v19 = CMGetAttachment(bufferCopy, *off_1E798A430, 0);
        if (v19)
        {
          v20 = v19;
          memset(time, 0, 32);
          v21 = CVPixelBufferGetWidth(pixelBuffer);
          v22 = CVPixelBufferGetHeight(pixelBuffer);
          CGRectMakeWithDictionaryRepresentation(v20, time);
          FigCaptureMetadataUtilitiesDenormalizeCropRect(time[0].origin.x, time[0].origin.y, time[0].size.width, time[0].size.height, v21, v22);
          time[0].origin.x = v23;
          time[0].origin.y = v24;
          time[0].size.width = v25;
          time[0].size.height = v26;
          CMSetAttachment(bufferCopy, v18, 0, 1u);
          if (haveLiveInputCropRect)
          {
            v27 = v424.f64[0];
            v28 = v424.f64[1];
          }

          else
          {
            v27 = v21;
            v28 = v22;
          }

          origin.f64[0] = FigCaptureMetadataUtilitiesRectByCroppingRectToAspectRatio(time[0].origin.x, time[0].origin.y, time[0].size.width, time[0].size.height, v27 / v28);
          origin.f64[1] = v52;
          v424.f64[0] = v53;
          v424.f64[1] = v54;
          goto LABEL_44;
        }
      }

      if (!haveLiveInputCropRect)
      {
LABEL_33:
        v39 = CVPixelBufferGetWidth(pixelBuffer);
        v40 = 0;
        v41 = CVPixelBufferGetHeight(pixelBuffer);
        goto LABEL_45;
      }
    }

LABEL_44:
    v39 = v424.f64[0];
    v41 = v424.f64[1];
    v40 = 1;
LABEL_45:
    if (!self->_liveDeviceOrientationCorrectionEnabled)
    {
      goto LABEL_46;
    }

    [(BWPixelTransferNode *)self _ensureDeviceOrientationMonitor];
    v181 = CMGetAttachment(bufferCopy, *off_1E798A3C8, 0);
    v182 = [v181 objectForKeyedSubscript:*off_1E798B540];
    v399 = v40;
    if (objc_msgSend_isEqualToString_(v182))
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(v182);
    }

    IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(v181 objectForKeyedSubscript:{*off_1E798B238, v347, v354), "integerValue"}]);
    mostRecentPortraitLandscapeOrientation = [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor mostRecentPortraitLandscapeOrientation];
    liveRotationDegrees = [(BWDeviceOrientationMonitor *)self->_deviceOrientationMonitor rotationDegreesFromOrientation:mostRecentPortraitLandscapeOrientation isFrontCamera:isEqualToString isExternalCamera:IsExtensionDeviceType isMirrored:0 clientExpectsCameraMountedInLandscapeOrientation:[(BWGraph *)[(BWNode *)self graph] clientExpectsCameraMountedInLandscapeOrientation]];
    self->_liveRotationDegrees = liveRotationDegrees;
    if (self->_prevLiveDeviceOrientationCorrectionDegrees == liveRotationDegrees)
    {
      v7 = MEMORY[0x1E695FF58];
    }

    else
    {
      v7 = MEMORY[0x1E695FF58];
      if (dword_1ED844550)
      {
        v412 = bufferCopy;
        *&v421[4] = 0;
        v421[0] = OS_LOG_TYPE_DEFAULT;
        v207 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v208 = *&v421[4];
        if (os_log_type_enabled(v207, v421[0]))
        {
          v209 = v208;
        }

        else
        {
          v209 = v208 & 0xFFFFFFFE;
        }

        if (v209)
        {
          name2 = [(BWNode *)self name];
          LODWORD(v414.value) = 136315906;
          *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
          LOWORD(v414.flags) = 2112;
          *(&v414.flags + 2) = name2;
          HIWORD(v414.epoch) = 2048;
          selfCopy22 = self;
          v416 = 1024;
          *v417 = mostRecentPortraitLandscapeOrientation;
          LODWORD(v354) = 38;
          v347 = &v414;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v7 = MEMORY[0x1E695FF58];
        bufferCopy = v412;
        if (dword_1ED844550)
        {
          v243 = MEMORY[0x1E695FF58];
          *&v421[4] = 0;
          v421[0] = OS_LOG_TYPE_DEFAULT;
          v244 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v245 = *&v421[4];
          if (os_log_type_enabled(v244, v421[0]))
          {
            v246 = v245;
          }

          else
          {
            v246 = v245 & 0xFFFFFFFE;
          }

          if (v246)
          {
            name3 = [(BWNode *)self name];
            LODWORD(v414.value) = 136315906;
            *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
            LOWORD(v414.flags) = 2112;
            *(&v414.flags + 2) = name3;
            HIWORD(v414.epoch) = 2048;
            selfCopy22 = self;
            v416 = 1024;
            *v417 = liveRotationDegrees;
            LODWORD(v354) = 38;
            v347 = &v414;
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          bufferCopy = v412;
          v7 = v243;
        }
      }

      self->_doGMLogging = 1;
      liveRotationDegrees = self->_liveRotationDegrees;
      self->_prevLiveDeviceOrientationCorrectionDegrees = liveRotationDegrees;
    }

    v40 = v399;
    if (liveRotationDegrees)
    {
      v304 = v41;
      v305 = v39;
      if (liveRotationDegrees != 90)
      {
        v304 = v41;
        v305 = v39;
        if (liveRotationDegrees != 270)
        {
          v304 = v39;
          v305 = v41;
        }
      }

      origin.f64[0] = FigCaptureMakeRectWithAspectRatioInsideDimensions(v39 | (v41 << 32), 0, v304 / v305);
      origin.f64[1] = v306;
      v424.f64[0] = v307;
      v424.f64[1] = v308;
      v40 = 1;
      if (!self->_doGMLogging || !dword_1ED844550)
      {
LABEL_46:
        if (self->_liveCropMode == 3 && [(BWNodeInput *)self->super._input passthroughMode]== 1 && [(BWNodeOutput *)self->super._output passthroughMode]== 1 || (v40 & 1) == 0 && self->_livePassesBuffersThroughWhenPossible)
        {
          if (self->_doGMLogging && dword_1ED844550)
          {
            *&v421[4] = 0;
            v421[0] = OS_LOG_TYPE_DEFAULT;
            v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v56 = *&v421[4];
            if (os_log_type_enabled(v55, v421[0]))
            {
              v57 = v56;
            }

            else
            {
              v57 = v56 & 0xFFFFFFFE;
            }

            if (v57)
            {
              name4 = [(BWNode *)self name];
              CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
              v59 = CMTimeGetSeconds(time);
              LODWORD(v414.value) = 136315906;
              *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
              LOWORD(v414.flags) = 2112;
              *(&v414.flags + 2) = name4;
              HIWORD(v414.epoch) = 2048;
              selfCopy22 = self;
              v416 = 2048;
              *v417 = v59;
              LODWORD(v354) = 42;
              v347 = &v414;
              _os_log_send_and_compose_impl();
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          self->_doGMLogging = 0;
          [(BWNodeOutput *)self->super._output emitSampleBuffer:bufferCopy, v347, v354];
          LODWORD(v180) = 0;
LABEL_296:
          if (*type)
          {
            CFRelease(*type);
          }

          if (v180)
          {
            CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
            v303 = [BWDroppedSample newDroppedSampleWithReason:0x1F219BF10 pts:time];
            [(BWNodeOutput *)self->super._output emitDroppedSample:v303];
          }

          if (*v7 == 1)
          {
            kdebug_trace();
          }

          return;
        }

        if (self->_liveAppliesUprightExifOrientationTransformToInput)
        {
          v211 = [CMGetAttachment(bufferCopy @"UprightExifOrientation"];
          [(BWPixelTransferNode *)self _updateLiveRotationAndFlipsToApplyUprightExifOrientation:v211];
        }

        newPixelBuffer = [(BWPixelBufferPool *)[(BWNodeOutput *)self->super._output livePixelBufferPool:v347] newPixelBuffer];
        if (newPixelBuffer)
        {
          BWCMSampleBufferCreateCopyWithNewPixelBuffer(bufferCopy, newPixelBuffer, &self->_outputFormatDescription, type);
        }

        if (*type)
        {
          v61 = CVPixelBufferGetWidth(newPixelBuffer);
          destinationBuffer = newPixelBuffer;
          v62 = CVPixelBufferGetHeight(newPixelBuffer);
          v63 = v39;
          v406 = [BWPixelTransferNode _getUpdatedPrimaryCaptureRectForOutputSampleBuffer:*type inputDimensions:?];
          v400 = v65;
          recta = v64;
          v67 = v66;
          if (v40)
          {
            v409 = origin.f64[1];
            v395 = origin.f64[0];
            v69 = v424.f64[1];
            v68 = v424.f64[0];
          }

          else
          {
            v68 = v39;
            v69 = v41;
            v409 = 0.0;
            v395 = 0.0;
          }

          LOBYTE(time[0].origin.x) = 0;
          v70 = ptn_rotationDegreesAndMirroringFromLiveConfiguration(self->_liveRotationDegrees, self->_liveFlipHorizontal, self->_liveFlipVertical, time);
          v426.origin.x = v406;
          v426.origin.y = v67;
          v426.size.width = recta;
          v426.size.height = v400;
          IsNull = CGRectIsNull(v426);
          v72 = 0.0;
          if (IsNull)
          {
            v73 = v62;
            v74 = v61;
            v75 = v61;
            v76 = 0.0;
            v77 = v62;
            v78 = v409;
            v79 = v395;
          }

          else
          {
            v396 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(v406, v67, recta, v400, v395, v409, v68);
            v410 = v80;
            v68 = v81;
            v69 = v82;
            v74 = v61;
            v83 = FigCaptureMetadataUtilitiesRectDenormalizedToRect(v406, v67, recta, v400, 0.0, 0.0, v61);
            v79 = v396;
            v78 = v410;
            v76 = v83;
            v72 = v84;
            v75 = v85;
            v73 = v86;
            v77 = v62;
          }

          v87 = v61 | (v62 << 32);
          BWUpdateCameraIntrinsicsMatrixOnSampleBuffer(*type, *MEMORY[0x1E6960470], v70, LOBYTE(time[0].origin.x), v79, v78, v68, v69, v76, v72, v75, v73);
          v88 = *off_1E798A3C8;
          v411 = bufferCopy;
          CMGetAttachment(bufferCopy, *off_1E798A3C8, 0);
          time[0].origin.x = 1.0;
          FigCFDictionaryGetCGFloatIfPresent();
          v89 = self->_liveRotationDegrees;
          v90 = v74;
          if (v89 == 270 || (v91 = v77, v89 == 90))
          {
            v91 = v74;
          }

          time[0].origin.x = time[0].origin.x * v91 / v41;
          v92 = v400;
          if (time[0].origin.x > 1.0)
          {
            FigCFDictionarySetCGFloat();
          }

          v93 = [(BWPixelTransferNode *)self _intermediateBufferDimensionsForInputDimensions:v87 outputDimensions:?];
          cf = 0;
          v94 = HIDWORD(v93);
          if (!HIDWORD(v93) || (v95 = v93, !v93))
          {
            v119 = v40;
            goto LABEL_92;
          }

          v389 = origin;
          v397 = v424.f64[0];
          if (fractionalSourceRectEnabled)
          {
            *&v385 = v67;
            __asm { FMOV            V0.2D, #0.5 }

            v97 = vrndmq_f64(vmulq_f64(origin, _Q0));
            v98 = vaddq_f64(v97, v97);
            v99 = vrndpq_f64(vmulq_f64(vaddq_f64(v424, vsubq_f64(v98, v98)), _Q0));
            origin = v98;
            v424 = vaddq_f64(v99, v99);
            memset(time, 0, 32);
            v100 = *MEMORY[0x1E695F058];
            v101 = *(MEMORY[0x1E695F058] + 8);
            v102 = CVPixelBufferGetWidth(pixelBuffer);
            v103 = CVPixelBufferGetHeight(pixelBuffer);
            time[0].origin.x = v100;
            time[0].origin.y = v101;
            time[0].size.width = v102;
            time[0].size.height = v103;
            v104 = [CMGetAttachment(bufferCopy v88];
            CGRectMakeWithDictionaryRepresentation(v104, time);
            v105 = origin.f64[0];
            v106 = v424.f64[0];
            x = time[0].origin.x;
            y = time[0].origin.y;
            v110 = time[0].size.width;
            v109 = time[0].size.height;
            if (time[0].size.width < v424.f64[0])
            {
              v106 = time[0].size.width;
            }

            if (v106 >= 0.0)
            {
              v111 = v106;
            }

            else
            {
              v111 = 0.0;
            }

            if (time[0].size.height >= v424.f64[1])
            {
              v112 = v424.f64[1];
            }

            else
            {
              v112 = time[0].size.height;
            }

            if (v112 < 0.0)
            {
              v112 = 0.0;
            }

            v380 = origin.f64[1];
            v382 = v112;
            MinX = CGRectGetMinX(time[0]);
            v427.origin.x = x;
            v427.origin.y = y;
            v427.size.width = v110;
            v427.size.height = v109;
            cfa = v111;
            propertyKey = v105;
            if (CGRectGetMaxX(v427) - v111 < v105)
            {
              v428.origin.x = x;
              v428.origin.y = y;
              v428.size.width = v110;
              v428.size.height = v109;
              v105 = CGRectGetMaxX(v428) - v111;
            }

            v113 = x;
            if (MinX <= v105)
            {
              v248 = y;
              v249 = v110;
              v250 = v109;
              v118 = v380;
              v117 = v382;
              if (CGRectGetMaxX(*&v113) - cfa < propertyKey)
              {
                v432.origin.x = x;
                v432.origin.y = y;
                v432.size.width = v110;
                v432.size.height = v109;
                propertyKey = CGRectGetMaxX(v432) - cfa;
              }
            }

            else
            {
              v114 = y;
              v115 = v110;
              v116 = v109;
              propertyKey = CGRectGetMinX(*&v113);
              v118 = v380;
              v117 = v382;
            }

            v433.origin.x = x;
            v433.origin.y = y;
            v433.size.width = v110;
            v433.size.height = v109;
            MinY = CGRectGetMinY(v433);
            v434.origin.x = x;
            v434.origin.y = y;
            v434.size.width = v110;
            v434.size.height = v109;
            _NF = CGRectGetMaxY(v434) - v117 < v118;
            v251 = v118;
            if (_NF)
            {
              v435.origin.x = x;
              v435.origin.y = y;
              v435.size.width = v110;
              v435.size.height = v109;
              v251 = CGRectGetMaxY(v435) - v117;
            }

            if (MinY <= v251)
            {
              v437.origin.x = x;
              v437.origin.y = y;
              v437.size.width = v110;
              v437.size.height = v109;
              if (CGRectGetMaxY(v437) - v117 < v118)
              {
                v438.origin.x = x;
                v438.origin.y = y;
                v438.size.width = v110;
                v438.size.height = v109;
                v118 = CGRectGetMaxY(v438) - v117;
              }
            }

            else
            {
              v436.origin.x = x;
              v436.origin.y = y;
              v436.size.width = v110;
              v436.size.height = v109;
              v118 = CGRectGetMinY(v436);
            }

            origin.f64[0] = propertyKey;
            origin.f64[1] = v118;
            v424.f64[0] = cfa;
            v424.f64[1] = v117;
            v67 = *&v385;
            v92 = v400;
          }

          [(BWPixelTransferNode *)self _ensureIntermediatePoolWithDimensions:v95];
          [(BWPixelTransferNode *)&self->super.super.isa _ensureTransferSession];
          cf = [(BWPixelBufferPool *)self->_intermediateBufferPool newPixelBuffer];
          if (cf)
          {
            if (v40)
            {
              v252 = v424.f64[0];
              if (v424.f64[0] < 16.0)
              {
                v424.f64[0] = 16.0;
                v253 = origin.f64[0] - ((16 - v252) / 2);
                if (v253 < 0.0)
                {
                  v253 = 0.0;
                }

                origin.f64[0] = v253;
              }

              v254 = v424.f64[1];
              if (v424.f64[1] < 16.0)
              {
                v424.f64[1] = 16.0;
                v255 = origin.f64[1] - ((16 - v254) / 2);
                if (v255 < 0.0)
                {
                  v255 = 0.0;
                }

                origin.f64[1] = v255;
              }

              PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
              IsTenBitPacked = FigCapturePixelFormatIsTenBitPacked(PixelFormatType);
              v258 = origin.f64[0];
              if (IsTenBitPacked)
              {
                v259 = origin.f64[0];
                v258 = FigCaptureRoundFloatToMultipleOf(6, v259);
                origin.f64[0] = v258;
              }

              v260 = origin.f64[1];
              v261 = v424;
              DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*&v258);
              if (self->_doGMLogging && dword_1ED844550)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v263 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v264 = *&v421[4];
                if (os_log_type_enabled(v263, v421[0]))
                {
                  v265 = v264;
                }

                else
                {
                  v265 = v264 & 0xFFFFFFFE;
                }

                if (v265)
                {
                  name5 = [(BWNode *)self name];
                  v267 = BWStringFromCGRect(origin.f64[0], origin.f64[1], v424.f64[0], v424.f64[1]);
                  LODWORD(v414.value) = 136316418;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name5;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 2112;
                  *v417 = v267;
                  *&v417[8] = 1024;
                  *&v417[10] = v95;
                  *&v417[14] = 1024;
                  *&v417[16] = v94;
                  LODWORD(v355) = 54;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                bufferCopy = v411;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            else
            {
              DictionaryRepresentation = 0;
            }

            v180 = VTSessionSetProperty(self->_transferSession, *MEMORY[0x1E6983E40], DictionaryRepresentation);
            if (v180)
            {
              limitedGMErrorLogger = self->_limitedGMErrorLogger;
              v320 = MEMORY[0x1E696AEC0];
              name6 = [(BWNode *)self name];
              v321 = v320;
              bufferCopy = v411;
              -[BWLimitedGMErrorLogger logErrorNumber:errorString:](limitedGMErrorLogger, "logErrorNumber:errorString:", v180, [v321 stringWithFormat:@"%@: %p: %p: setting source crop rect transfer property to %@", name6, self, self->_transferSession, DictionaryRepresentation]);
            }

            if (DictionaryRepresentation)
            {
              CFRelease(DictionaryRepresentation);
            }

            if (v180)
            {
              [BWPixelTransferNode renderSampleBuffer:v180 forInput:?];
              v302 = cf;
              goto LABEL_361;
            }

            v322 = VTPixelTransferSessionTransferImage(self->_transferSession, pixelBuffer, cf);
            v180 = v322;
            doGMLogging = self->_doGMLogging;
            v324 = dword_1ED844550;
            if (doGMLogging && dword_1ED844550)
            {
              v325 = v322;
              *&v421[4] = 0;
              v421[0] = OS_LOG_TYPE_DEFAULT;
              v326 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v327 = *&v421[4];
              if (os_log_type_enabled(v326, v421[0]))
              {
                v328 = v327;
              }

              else
              {
                v328 = v327 & 0xFFFFFFFE;
              }

              if (v328)
              {
                name7 = [(BWNode *)self name];
                transferSession = self->_transferSession;
                LODWORD(v414.value) = 136316162;
                *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                LOWORD(v414.flags) = 2112;
                *(&v414.flags + 2) = name7;
                HIWORD(v414.epoch) = 2048;
                selfCopy22 = self;
                v416 = 1024;
                *v417 = v325;
                *&v417[4] = 2112;
                *&v417[6] = transferSession;
                LODWORD(v355) = 48;
                v348 = &v414;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v324 = dword_1ED844550;
              LOBYTE(doGMLogging) = self->_doGMLogging;
              bufferCopy = v411;
              v180 = v325;
            }

            if (doGMLogging && v324)
            {
              v331 = v180;
              *&v421[4] = 0;
              v421[0] = OS_LOG_TYPE_DEFAULT;
              v332 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v333 = *&v421[4];
              if (os_log_type_enabled(v332, v421[0]))
              {
                v334 = v333;
              }

              else
              {
                v334 = v333 & 0xFFFFFFFE;
              }

              if (v334)
              {
                name8 = [(BWNode *)self name];
                LODWORD(v414.value) = 136315906;
                *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                LOWORD(v414.flags) = 2112;
                *(&v414.flags + 2) = name8;
                HIWORD(v414.epoch) = 2048;
                selfCopy22 = self;
                v416 = 2112;
                *v417 = pixelBuffer;
                LODWORD(v355) = 42;
                v348 = &v414;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v324 = dword_1ED844550;
              LOBYTE(doGMLogging) = self->_doGMLogging;
              bufferCopy = v411;
              v180 = v331;
            }

            if (doGMLogging && v324)
            {
              v336 = v180;
              *&v421[4] = 0;
              v421[0] = OS_LOG_TYPE_DEFAULT;
              v337 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v338 = *&v421[4];
              if (os_log_type_enabled(v337, v421[0]))
              {
                v339 = v338;
              }

              else
              {
                v339 = v338 & 0xFFFFFFFE;
              }

              if (v339)
              {
                name9 = [(BWNode *)self name];
                LODWORD(v414.value) = 136315906;
                *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                LOWORD(v414.flags) = 2112;
                *(&v414.flags + 2) = name9;
                HIWORD(v414.epoch) = 2048;
                selfCopy22 = self;
                v416 = 2112;
                *v417 = cf;
                LODWORD(v355) = 42;
                v348 = &v414;
                _os_log_send_and_compose_impl();
              }

              fig_log_call_emit_and_clean_up_after_send_and_compose();
              bufferCopy = v411;
              v180 = v336;
            }

            if (v180)
            {
              v341 = self->_limitedGMErrorLogger;
              v342 = MEMORY[0x1E696AEC0];
              name10 = [(BWNode *)self name];
              CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
              v302 = cf;
              -[BWLimitedGMErrorLogger logErrorNumber:errorString:](v341, "logErrorNumber:errorString:", v180, [v342 stringWithFormat:@"%@: %p: %.4lf: %p: transferring from %p to %p", name10, self, CMTimeGetSeconds(time), self->_transferSession, pixelBuffer, cf]);
              LODWORD(v353) = v180;
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v353, v4, v358, v361, v365, v369, v370, v374);
LABEL_361:
              newPixelBuffer = destinationBuffer;
              v7 = MEMORY[0x1E695FF58];
LABEL_293:
              CFRelease(v302);
              goto LABEL_294;
            }

            if (fractionalSourceRectEnabled)
            {
              origin.f64[0] = ptn_rectBoundedByDimensions(v95, v95 / v424.f64[0] * (v389.f64[0] - origin.f64[0]), v94 / v424.f64[1] * (v389.f64[1] - origin.f64[1]), v95 / v424.f64[0] * v397);
              origin.f64[1] = v344;
              v424.f64[0] = v345;
              v424.f64[1] = v346;
              v119 = 1;
            }

            else
            {
              v119 = 0;
            }

            pixelBuffer = cf;
LABEL_92:
            [(BWPixelTransferNode *)self _ensureRotationSession];
            if (self->_generatesHistogram)
            {
              v429.origin.x = v406;
              v429.origin.y = v67;
              v429.size.width = recta;
              v429.size.height = v92;
              v120 = CGRectIsNull(v429);
              v121 = 0.0;
              v122 = v77;
              v123 = v90;
              v124 = 0.0;
              if (!v120)
              {
                FigCaptureMetadataUtilitiesDenormalizeCropRect(v406, v67, recta, v92, v90, v77);
                v126 = v125;
                v128 = v127;
                v130 = v129;
                *&v131 = v131;
                v124 = FigCaptureRoundFloatToMultipleOf(2, *&v131);
                v132 = v126;
                v121 = FigCaptureRoundFloatToMultipleOf(2, v132);
                v133 = v128;
                v123 = FigCaptureRoundFloatToMultipleOf(2, v133);
                v134 = v130;
                v122 = FigCaptureRoundFloatToMultipleOf(2, v134);
              }

              v135 = v124;
              v136 = v121;
              v137 = v123;
              v138 = CGRectCreateDictionaryRepresentation(*(&v122 - 3));
              VTSessionSetProperty(self->_rotationSession, *MEMORY[0x1E6983D90], v138);
              if (v138)
              {
                CFRelease(v138);
              }
            }

            v398 = v119;
            if (v119)
            {
              v139 = 0.0;
              newPixelBuffer = destinationBuffer;
              if (self->_liveCropMode == 2 && (v140 = self->_liveValidOutputDimensions.width, v140 >= 1) && (v141 = self->_liveValidOutputDimensions.height, v141 >= 1))
              {
                v430.origin.x = 0.0;
                v430.origin.y = 0.0;
                v430.size.width = v90;
                v430.size.height = v77;
                v431 = CGRectInset(v430, (v90 - v140) * 0.5, (v77 - v141) * 0.5);
                v142 = v431.origin.y;
                v90 = v431.size.width;
                v77 = v431.size.height;
                *&v431.origin.x = v431.origin.x;
                v143 = FigCaptureRoundFloatToMultipleOf(2, *&v431.origin.x);
                v144 = v142;
                v139 = FigCaptureRoundFloatToMultipleOf(2, v144);
              }

              else
              {
                v143 = 0.0;
              }

              v159 = CVPixelBufferGetPixelFormatType(pixelBuffer);
              if (FigCapturePixelFormatIsTenBitPacked(v159))
              {
                v160 = origin.f64[0];
                origin.f64[0] = FigCaptureRoundFloatToMultipleOf(6, v160);
              }

              v161 = VTPixelRotationSessionRotateSubImage();
              v162 = self->_doGMLogging;
              v163 = dword_1ED844550;
              if (v162 && dword_1ED844550)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v164 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v165 = *&v421[4];
                if (os_log_type_enabled(v164, v421[0]))
                {
                  v166 = v165;
                }

                else
                {
                  v166 = v165 & 0xFFFFFFFE;
                }

                if (v166)
                {
                  name11 = [(BWNode *)self name];
                  v168 = v161;
                  v169 = BWStringFromCGRect(origin.f64[0], origin.f64[1], v424.f64[0], v424.f64[1]);
                  v170 = BWStringFromCGRect(v143, v139, v90, v77);
                  rotationSession = self->_rotationSession;
                  LODWORD(v414.value) = 136316674;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name11;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 2112;
                  *v417 = v169;
                  v161 = v168;
                  *&v417[8] = 2112;
                  *&v417[10] = v170;
                  *&v417[18] = 1024;
                  v418 = v168;
                  v419 = 2112;
                  v420 = rotationSession;
                  LODWORD(v355) = 68;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v163 = dword_1ED844550;
                LOBYTE(v162) = self->_doGMLogging;
                bufferCopy = v411;
                v119 = v398;
              }

              if (v162 && v163)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v184 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v185 = *&v421[4];
                if (os_log_type_enabled(v184, v421[0]))
                {
                  v186 = v185;
                }

                else
                {
                  v186 = v185 & 0xFFFFFFFE;
                }

                if (v186)
                {
                  name12 = [(BWNode *)self name];
                  LODWORD(v414.value) = 136315906;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name12;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 2112;
                  *v417 = pixelBuffer;
                  LODWORD(v355) = 42;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v163 = dword_1ED844550;
                LOBYTE(v162) = self->_doGMLogging;
                bufferCopy = v411;
                v119 = v398;
              }

              if (v162 && v163)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v188 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v189 = *&v421[4];
                if (os_log_type_enabled(v188, v421[0]))
                {
                  v190 = v189;
                }

                else
                {
                  v190 = v189 & 0xFFFFFFFE;
                }

                if (v190)
                {
                  name13 = [(BWNode *)self name];
                  LODWORD(v414.value) = 136315906;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name13;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 2112;
                  *v417 = destinationBuffer;
                  LODWORD(v355) = 42;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                bufferCopy = v411;
                v119 = v398;
              }

              if (v161)
              {
                v192 = self->_limitedGMErrorLogger;
                v193 = MEMORY[0x1E696AEC0];
                name14 = [(BWNode *)self name];
                CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
                v195 = CMTimeGetSeconds(time);
                v196 = self->_rotationSession;
                v197 = CVPixelBufferGetPixelFormatType(pixelBuffer);
                v198 = BWStringFromCVPixelFormatType(v197);
                v199 = BWStringFromCGRect(origin.f64[0], origin.f64[1], v424.f64[0], v424.f64[1]);
                v200 = CVPixelBufferGetPixelFormatType(destinationBuffer);
                v201 = v161;
                v202 = BWStringFromCVPixelFormatType(v200);
                v203 = BWStringFromCGRect(v143, v139, v90, v77);
                v371 = v202;
                v180 = v201;
                newPixelBuffer = destinationBuffer;
                v366 = v199;
                bufferCopy = v411;
                v349 = name14;
                v7 = MEMORY[0x1E695FF58];
                -[BWLimitedGMErrorLogger logErrorNumber:errorString:](v192, "logErrorNumber:errorString:", v180, [v193 stringWithFormat:@"%@: %p: %.4lf: %p: rotating sub-image with input %@ rect %@, dest %@ rect %@", v349, self, *&v195, v196, v198, v366, v371, v203]);
                LODWORD(v350) = v180;
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v350, v4, v356, v359, v362, v367, v372, v375);
                goto LABEL_292;
              }

LABEL_258:
              if (self->_generatesHistogram)
              {
                time[0].origin.x = 0.0;
                LODWORD(v180) = VTSessionCopyProperty(self->_rotationSession, *MEMORY[0x1E6983D88], *MEMORY[0x1E695E480], time);
                v276 = [*&time[0].origin.x copy];
                if (!v180)
                {
                  CMSetAttachment(*type, *off_1E798A520, v276, 1u);
                }
              }

              else
              {
                LODWORD(v180) = 0;
              }

              [BWPixelTransferNode _updateMetadataForOutputSampleBuffer:? destinationRect:?];
              [(BWPixelTransferNode *)self _updateUprightExifOrientationOnSampleBufferIfNeeded:?];
              [BWPixelTransferNode _updatePrimaryCaptureRect:*type forOutputSampleBuffer:?];
              if (self->_liveDeviceOrientationCorrectionEnabled)
              {
                if (!self->_liveRotationDegrees)
                {
                  goto LABEL_268;
                }

                FormatDescription = CMSampleBufferGetFormatDescription(bufferCopy);
                Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
                [(BWPixelTransferNode *)self _updateLiveDeviceOrientationAffectedMetadataForOutputSampleBuffer:Dimensions.width inputDims:Dimensions.height inputCropRect:origin.f64[0], origin.f64[1], v424.f64[0], v424.f64[1]];
              }

              if (self->_liveRotationDegrees)
              {
                v279 = [MEMORY[0x1E696AD98] numberWithInt:self->_rotationDegrees];
                goto LABEL_270;
              }

LABEL_268:
              if (!v119)
              {
                goto LABEL_271;
              }

              v279 = CMGetAttachment(pixelBuffer, @"RotationDegrees", 0);
LABEL_270:
              CMSetAttachment(newPixelBuffer, @"RotationDegrees", v279, 1u);
LABEL_271:
              if (self->_liveFlipHorizontal)
              {
                v280 = @"MirroredHorizontal";
              }

              else
              {
                if (!self->_liveFlipVertical)
                {
                  if (!v119)
                  {
                    goto LABEL_277;
                  }

                  v293 = CMGetAttachment(pixelBuffer, @"MirroredHorizontal", 0);
                  CMSetAttachment(newPixelBuffer, @"MirroredHorizontal", v293, 1u);
                  v281 = CMGetAttachment(pixelBuffer, @"MirroredVertical", 0);
                  v282 = newPixelBuffer;
                  v280 = @"MirroredVertical";
LABEL_276:
                  CMSetAttachment(v282, v280, v281, 1u);
LABEL_277:
                  v283 = *MEMORY[0x1E6965F18];
                  v284 = CMGetAttachment(pixelBuffer, *MEMORY[0x1E6965F18], 0);
                  CMSetAttachment(newPixelBuffer, v283, v284, 1u);
                  v285 = CMGetAttachment(pixelBuffer, @"AmbientViewingEnvironmentStrength", 0);
                  if (v285)
                  {
                    v286 = v285;
                    IOSurface = CVPixelBufferGetIOSurface(newPixelBuffer);
                    BWUtilitiesApplyAVEStrength(IOSurface, v286);
                  }

                  if (self->_doGMLogging && dword_1ED844550)
                  {
                    *&v421[4] = 0;
                    v421[0] = OS_LOG_TYPE_DEFAULT;
                    v288 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v289 = *&v421[4];
                    if (os_log_type_enabled(v288, v421[0]))
                    {
                      v290 = v289;
                    }

                    else
                    {
                      v290 = v289 & 0xFFFFFFFE;
                    }

                    if (v290)
                    {
                      name15 = [(BWNode *)self name];
                      CMSampleBufferGetPresentationTimeStamp(time, *type);
                      v292 = CMTimeGetSeconds(time);
                      LODWORD(v414.value) = 136315906;
                      *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                      LOWORD(v414.flags) = 2112;
                      *(&v414.flags + 2) = name15;
                      HIWORD(v414.epoch) = 2048;
                      selfCopy22 = self;
                      v416 = 2048;
                      *v417 = v292;
                      LODWORD(v355) = 42;
                      v348 = &v414;
                      _os_log_send_and_compose_impl();
                    }

                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    newPixelBuffer = destinationBuffer;
                  }

                  self->_doGMLogging = 0;
                  [(BWNodeOutput *)self->super._output emitSampleBuffer:*type, v348, v355];
                  v7 = MEMORY[0x1E695FF58];
LABEL_292:
                  v302 = cf;
                  if (!cf)
                  {
                    goto LABEL_294;
                  }

                  goto LABEL_293;
                }

                v280 = @"MirroredVertical";
              }

              v281 = MEMORY[0x1E695E118];
              v282 = newPixelBuffer;
              goto LABEL_276;
            }

            conversionMethodForStillImagesDuringHDRVideo = self->_conversionMethodForStillImagesDuringHDRVideo;
            if ((conversionMethodForStillImagesDuringHDRVideo == 4 || conversionMethodForStillImagesDuringHDRVideo == 2) && self->_intermediatePixelBufferForStillHDRToSDRConversion)
            {
              Attributes = CVPixelBufferGetAttributes();
              v147 = *MEMORY[0x1E6983DE0];
              v383 = *MEMORY[0x1E6965F98];
              [Attributes objectForKeyedSubscript:?];
              propertyKeya = v147;
              VTPixelRotationSessionSetProperty();
              v148 = *MEMORY[0x1E6983DC0];
              v379 = *MEMORY[0x1E6965D88];
              [Attributes objectForKeyedSubscript:?];
              v386 = v148;
              VTPixelRotationSessionSetProperty();
              v149 = *MEMORY[0x1E6983DD8];
              v377 = *MEMORY[0x1E6965F30];
              [Attributes objectForKeyedSubscript:?];
              v381 = v149;
              VTPixelRotationSessionSetProperty();
              v150 = VTPixelRotationSessionRotateImage(self->_rotationSession, pixelBuffer, self->_intermediatePixelBufferForStillHDRToSDRConversion);
              v151 = self->_doGMLogging;
              v152 = dword_1ED844550;
              v153 = v150;
              if (v151)
              {
                v119 = 0;
                if (dword_1ED844550)
                {
                  *&v421[4] = 0;
                  v421[0] = OS_LOG_TYPE_DEFAULT;
                  v154 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v155 = *&v421[4];
                  if (os_log_type_enabled(v154, v421[0]))
                  {
                    v156 = v155;
                  }

                  else
                  {
                    v156 = v155 & 0xFFFFFFFE;
                  }

                  if (v156)
                  {
                    name16 = [(BWNode *)self name];
                    v158 = self->_rotationSession;
                    LODWORD(v414.value) = 136316162;
                    *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                    LOWORD(v414.flags) = 2112;
                    *(&v414.flags + 2) = name16;
                    HIWORD(v414.epoch) = 2048;
                    selfCopy22 = self;
                    v416 = 1024;
                    *v417 = v153;
                    *&v417[4] = 2112;
                    *&v417[6] = v158;
                    LODWORD(v355) = 48;
                    v348 = &v414;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v152 = dword_1ED844550;
                  LOBYTE(v151) = self->_doGMLogging;
                  bufferCopy = v411;
                }
              }

              else
              {
                v119 = 0;
              }

              if (v151 && v152)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v220 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v221 = *&v421[4];
                if (os_log_type_enabled(v220, v421[0]))
                {
                  v222 = v221;
                }

                else
                {
                  v222 = v221 & 0xFFFFFFFE;
                }

                if (v222)
                {
                  name17 = [(BWNode *)self name];
                  LODWORD(v414.value) = 136315906;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name17;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 2112;
                  *v417 = pixelBuffer;
                  LODWORD(v355) = 42;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v152 = dword_1ED844550;
                LOBYTE(v151) = self->_doGMLogging;
                bufferCopy = v411;
              }

              if (v151 && v152)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v224 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v225 = *&v421[4];
                if (os_log_type_enabled(v224, v421[0]))
                {
                  v226 = v225;
                }

                else
                {
                  v226 = v225 & 0xFFFFFFFE;
                }

                if (v226)
                {
                  name18 = [(BWNode *)self name];
                  intermediatePixelBufferForStillHDRToSDRConversion = self->_intermediatePixelBufferForStillHDRToSDRConversion;
                  LODWORD(v414.value) = 136315906;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name18;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 2112;
                  *v417 = intermediatePixelBufferForStillHDRToSDRConversion;
                  LODWORD(v355) = 42;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                bufferCopy = v411;
                v119 = 0;
              }

              [(BWPixelTransferNode *)&self->super.super.isa _ensureTransferSession];
              v229 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:self->_outputColorSpaceProperties];
              VTSessionSetProperty(self->_transferSession, propertyKeya, [v229 objectForKeyedSubscript:v383]);
              VTSessionSetProperty(self->_transferSession, v386, [v229 objectForKeyedSubscript:v379]);
              VTSessionSetProperty(self->_transferSession, v381, [v229 objectForKeyedSubscript:v377]);
              VTSessionSetProperty(self->_transferSession, *MEMORY[0x1E6983D58], MEMORY[0x1E695E110]);
              if (v153)
              {
                goto LABEL_289;
              }

              v235 = self->_conversionMethodForStillImagesDuringHDRVideo;
              if (v235 != 2)
              {
                newPixelBuffer = destinationBuffer;
                if (v235 == 4)
                {
                  [(BWPixelTransferNode *)self _convertUsingHDRProcessing:destinationBuffer toSDR:v230, v231, v232, v233, v234];
                }

                goto LABEL_258;
              }

              newPixelBuffer = destinationBuffer;
              v390 = VTPixelTransferSessionTransferImage(self->_transferSession, self->_intermediatePixelBufferForStillHDRToSDRConversion, destinationBuffer);
              v236 = self->_doGMLogging;
              v237 = dword_1ED844550;
              if (v236 && dword_1ED844550)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v238 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v239 = *&v421[4];
                if (os_log_type_enabled(v238, v421[0]))
                {
                  v240 = v239;
                }

                else
                {
                  v240 = v239 & 0xFFFFFFFE;
                }

                if (v240)
                {
                  name19 = [(BWNode *)self name];
                  v242 = self->_transferSession;
                  LODWORD(v414.value) = 136316162;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name19;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 1024;
                  *v417 = v390;
                  *&v417[4] = 2112;
                  *&v417[6] = v242;
                  LODWORD(v355) = 48;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v237 = dword_1ED844550;
                LOBYTE(v236) = self->_doGMLogging;
                bufferCopy = v411;
                v119 = 0;
              }

              if (v236)
              {
                v172 = v390;
                if (v237)
                {
                  *&v421[4] = 0;
                  v421[0] = OS_LOG_TYPE_DEFAULT;
                  v268 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v269 = *&v421[4];
                  if (os_log_type_enabled(v268, v421[0]))
                  {
                    v270 = v269;
                  }

                  else
                  {
                    v270 = v269 & 0xFFFFFFFE;
                  }

                  if (v270)
                  {
                    name20 = [(BWNode *)self name];
                    v272 = self->_intermediatePixelBufferForStillHDRToSDRConversion;
                    LODWORD(v414.value) = 136315906;
                    *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                    LOWORD(v414.flags) = 2112;
                    *(&v414.flags + 2) = name20;
                    HIWORD(v414.epoch) = 2048;
                    selfCopy22 = self;
                    v416 = 2112;
                    *v417 = v272;
                    LODWORD(v355) = 42;
                    v348 = &v414;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v237 = dword_1ED844550;
                  LOBYTE(v236) = self->_doGMLogging;
                  bufferCopy = v411;
                  v119 = 0;
                }
              }

              else
              {
                v172 = v390;
              }

              if (!v236 || !v237)
              {
LABEL_257:
                if (!v172)
                {
                  goto LABEL_258;
                }

                v153 = v172;
LABEL_289:
                v407 = self->_limitedGMErrorLogger;
                rectb = MEMORY[0x1E696AEC0];
                v401 = [(BWNode *)self name:v348];
                CMSampleBufferGetPresentationTimeStamp(time, bufferCopy);
                v294 = CMTimeGetSeconds(time);
                v295 = self->_rotationSession;
                v296 = CVPixelBufferGetPixelFormatType(pixelBuffer);
                v297 = BWStringFromCVPixelFormatType(v296);
                v180 = CVPixelBufferGetWidth(pixelBuffer);
                v298 = CVPixelBufferGetHeight(pixelBuffer);
                newPixelBuffer = destinationBuffer;
                v299 = CVPixelBufferGetPixelFormatType(destinationBuffer);
                v300 = BWStringFromCVPixelFormatType(v299);
                v301 = CVPixelBufferGetWidth(destinationBuffer);
                v363 = v297;
                bufferCopy = v411;
                -[BWLimitedGMErrorLogger logErrorNumber:errorString:](v407, "logErrorNumber:errorString:", v153, [rectb stringWithFormat:@"%@: %p: %.4lf: %p: rotating scaler rect %@ 0, 0, %lu x %lu, output %@ %lu x %lu, input %p, output %p", v401, self, *&v294, v295, v363, v180, v298, v300, v301, CVPixelBufferGetHeight(destinationBuffer), pixelBuffer, destinationBuffer]);
                LODWORD(v351) = v153;
                FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v351, v4, v357, v360, v364, v368, v373, v376);
                v7 = MEMORY[0x1E695FF58];
                LODWORD(v180) = v153;
                goto LABEL_292;
              }

              *&v421[4] = 0;
              v421[0] = OS_LOG_TYPE_DEFAULT;
              v273 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v274 = *&v421[4];
              if (os_log_type_enabled(v273, v421[0]))
              {
                v275 = v274;
              }

              else
              {
                v275 = v274 & 0xFFFFFFFE;
              }

              if (!v275)
              {
LABEL_256:
                v119 = 0;
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                bufferCopy = v411;
                goto LABEL_257;
              }
            }

            else
            {
              newPixelBuffer = destinationBuffer;
              v172 = VTPixelRotationSessionRotateImage(self->_rotationSession, pixelBuffer, destinationBuffer);
              v173 = self->_doGMLogging;
              v174 = dword_1ED844550;
              if (v173 && dword_1ED844550)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v175 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v176 = *&v421[4];
                if (os_log_type_enabled(v175, v421[0]))
                {
                  v177 = v176;
                }

                else
                {
                  v177 = v176 & 0xFFFFFFFE;
                }

                if (v177)
                {
                  name21 = [(BWNode *)self name];
                  v179 = self->_rotationSession;
                  LODWORD(v414.value) = 136316162;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name21;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 1024;
                  *v417 = v172;
                  *&v417[4] = 2112;
                  *&v417[6] = v179;
                  LODWORD(v355) = 48;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v174 = dword_1ED844550;
                LOBYTE(v173) = self->_doGMLogging;
                bufferCopy = v411;
                v119 = 0;
              }

              if (v173 && v174)
              {
                *&v421[4] = 0;
                v421[0] = OS_LOG_TYPE_DEFAULT;
                v212 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v213 = *&v421[4];
                if (os_log_type_enabled(v212, v421[0]))
                {
                  v214 = v213;
                }

                else
                {
                  v214 = v213 & 0xFFFFFFFE;
                }

                if (v214)
                {
                  name22 = [(BWNode *)self name];
                  LODWORD(v414.value) = 136315906;
                  *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
                  LOWORD(v414.flags) = 2112;
                  *(&v414.flags + 2) = name22;
                  HIWORD(v414.epoch) = 2048;
                  selfCopy22 = self;
                  v416 = 2112;
                  *v417 = pixelBuffer;
                  LODWORD(v355) = 42;
                  v348 = &v414;
                  _os_log_send_and_compose_impl();
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
                v174 = dword_1ED844550;
                LOBYTE(v173) = self->_doGMLogging;
                bufferCopy = v411;
                v119 = 0;
              }

              if (!v173 || !v174)
              {
                goto LABEL_257;
              }

              *&v421[4] = 0;
              v421[0] = OS_LOG_TYPE_DEFAULT;
              v216 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v217 = *&v421[4];
              if (os_log_type_enabled(v216, v421[0]))
              {
                v218 = v217;
              }

              else
              {
                v218 = v217 & 0xFFFFFFFE;
              }

              if (!v218)
              {
                goto LABEL_256;
              }
            }

            name23 = [(BWNode *)self name];
            LODWORD(v414.value) = 136315906;
            *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
            LOWORD(v414.flags) = 2112;
            *(&v414.flags + 2) = name23;
            HIWORD(v414.epoch) = 2048;
            selfCopy22 = self;
            v416 = 2112;
            *v417 = newPixelBuffer;
            LODWORD(v355) = 42;
            v348 = &v414;
            _os_log_send_and_compose_impl();
            goto LABEL_256;
          }

          [BWPixelTransferNode renderSampleBuffer:? forInput:?];
          LODWORD(v180) = LODWORD(time[0].origin.x);
          newPixelBuffer = destinationBuffer;
          v7 = MEMORY[0x1E695FF58];
        }

        else
        {
          LODWORD(v180) = -12780;
        }

LABEL_294:
        if (newPixelBuffer)
        {
          CFRelease(newPixelBuffer);
        }

        goto LABEL_296;
      }

      *&v421[4] = 0;
      v421[0] = OS_LOG_TYPE_DEFAULT;
      v309 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v310 = *&v421[4];
      if (os_log_type_enabled(v309, v421[0]))
      {
        v311 = v310;
      }

      else
      {
        v311 = v310 & 0xFFFFFFFE;
      }

      if (v311)
      {
        name24 = [(BWNode *)self name];
        v313 = self->_liveRotationDegrees;
        v314 = BWStringFromCGRect(origin.f64[0], origin.f64[1], v424.f64[0], v424.f64[1]);
        LODWORD(v414.value) = 136316162;
        *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
        LOWORD(v414.flags) = 2112;
        *(&v414.flags + 2) = name24;
        HIWORD(v414.epoch) = 2048;
        selfCopy22 = self;
        v416 = 1024;
        *v417 = v313;
        *&v417[4] = 2112;
        *&v417[6] = v314;
        LODWORD(v354) = 48;
        v347 = &v414;
        _os_log_send_and_compose_impl();
      }

      v40 = 1;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      if (!self->_doGMLogging || !dword_1ED844550)
      {
        goto LABEL_46;
      }

      *&v421[4] = 0;
      v421[0] = OS_LOG_TYPE_DEFAULT;
      v315 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v316 = *&v421[4];
      if (os_log_type_enabled(v315, v421[0]))
      {
        v317 = v316;
      }

      else
      {
        v317 = v316 & 0xFFFFFFFE;
      }

      if (v317)
      {
        name25 = [(BWNode *)self name];
        LODWORD(v414.value) = 136315650;
        *(&v414.value + 4) = "[BWPixelTransferNode renderSampleBuffer:forInput:]";
        LOWORD(v414.flags) = 2112;
        *(&v414.flags + 2) = name25;
        HIWORD(v414.epoch) = 2048;
        selfCopy22 = self;
        LODWORD(v354) = 32;
        v347 = &v414;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = MEMORY[0x1E695FF58];
    goto LABEL_46;
  }
}

- (CGFloat)_getUpdatedPrimaryCaptureRectForOutputSampleBuffer:(uint64_t)buffer inputDimensions:(CMAttachmentBearerRef)target
{
  if (buffer)
  {
    v3 = *(MEMORY[0x1E695F050] + 16);
    rect.origin = *MEMORY[0x1E695F050];
    rect.size = v3;
    v4 = CMGetAttachment(target, *off_1E798A430, 0);
    if (v4 && (*(buffer + 208) || (*(buffer + 216) & 1) != 0 || *(buffer + 218) == 1))
    {
      CGRectMakeWithDictionaryRepresentation(v4, &rect);
      memset(&v8, 0, sizeof(v8));
      if (*(buffer + 216))
      {
        v5 = 1;
      }

      else
      {
        v5 = *(buffer + 218);
      }

      FigCaptureMakeMirrorAndRotateVideoTransform(1, 1, v5 & 1, *(buffer + 208), &v8);
      v7 = v8;
      rect = CGRectApplyAffineTransform(rect, &v7);
    }
  }

  else
  {
    memset(&rect, 0, sizeof(rect));
  }

  return rect.origin.x;
}

- (VTPixelTransferSessionRef)_ensureTransferSession
{
  if (result)
  {
    v1 = result;
    if (!result[42])
    {
      VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], result + 42);
      *(v1 + 432) = 1;
      context = objc_autoreleasePoolPush();
      v2 = malloc_type_malloc(0x2800uLL, 0x9FD05F99uLL);
      if (getCameraCaptureExcessiveLog_cameraCaptureExcessiveLogOnceToken != -1)
      {
        [BWPixelTransferNode _ensureTransferSession];
      }

      name = [(VTPixelTransferSessionRef *)v1 name];
      v4 = v1[42];
      v33 = 138412802;
      v34 = name;
      v35 = 2048;
      v29 = v1;
      v36 = v1;
      v37 = 2112;
      v38 = v4;
      LODWORD(v23) = 32;
      v27 = v2;
      v26 = _os_log_send_and_compose_impl();
      v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:{v26, &v33, v23}];
      v6 = [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%s %s: ", "<<<< BWPixelTransferNode >>>>", "-[BWPixelTransferNode _ensureTransferSession]"), "length"];
      v30 = v5;
      if (([v5 length] + v6) >= 0x400)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = [v5 componentsSeparatedByString:@"\n"];
        v7 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = &stru_1F216A3D0;
          v10 = *v43;
          v31 = v6;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v43 != v10)
              {
                objc_enumerationMutation(obj);
              }

              v12 = *(*(&v42 + 1) + 8 * i);
              if (-[__CFString length](v9, "length") && (v13 = -[__CFString length](v9, "length"), v14 = -[__CFString length](v12, "length"), (v13 + v6 + [@"\n..." length] + v14) > 0x3FF))
              {
                if (dword_1ED844550)
                {
                  v40 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v17 = v40;
                  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                  {
                    v18 = v17;
                  }

                  else
                  {
                    v18 = v17 & 0xFFFFFFFE;
                  }

                  if (v18)
                  {
                    LODWORD(v24) = 32;
                    _os_log_send_and_compose_impl();
                  }

                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                  v6 = v31;
                }

                v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"\n%@", v12, v24, v25];
              }

              else
              {
                if (![(__CFString *)v9 length])
                {
                  v9 = v12;
                  continue;
                }

                v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@%@", v9, @"\n", v12];
              }

              v9 = v15;
            }

            v8 = [obj countByEnumeratingWithState:&v42 objects:v41 count:16];
          }

          while (v8);
        }
      }

      if (dword_1ED844550)
      {
        v40 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v20 = v40;
        if (os_log_type_enabled(v19, type))
        {
          v21 = v20;
        }

        else
        {
          v21 = v20 & 0xFFFFFFFE;
        }

        if (v21)
        {
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      free(v27);
      if (v26 != v27)
      {
        free(v26);
      }

      objc_autoreleasePoolPop(context);
      v22 = v29[53];
      if (v29[42])
      {
        result = [(OpaqueVTPixelTransferSession *)v22 resetCurrentLoggingCounter];
      }

      else
      {
        result = [(OpaqueVTPixelTransferSession *)v22 logErrorNumber:4294954516 errorString:@"failed to create transfer session"];
      }

      if (!v29[42])
      {
        [BWPixelTransferNode _ensureTransferSession];
      }
    }
  }

  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(__CVBuffer *)processing toSDR:(uint64_t)r
{
  if (result)
  {
    v8 = result;
    if (*(result + 408))
    {
      if (*(result + 416))
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DEF0]);
        v12 = MEMORY[0x1E695DF90];
        v78 = 0;
        v79 = &v78;
        v80 = 0x2020000000;
        v13 = getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr;
        v81 = getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr;
        if (!getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr)
        {
          v76[0] = MEMORY[0x1E69E9820];
          v76[1] = 3221225472;
          v76[2] = __getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_block_invoke;
          v76[3] = &unk_1E798FC38;
          v77 = &v78;
          v14 = HDRProcessingLibrary();
          v79[3] = dlsym(v14, "kHDRProcessingDolbyVisionRPUDataKey");
          getkHDRProcessingDolbyVisionRPUDataKeySymbolLoc_ptr = *(v77[1] + 24);
          v13 = v79[3];
        }

        _Block_object_dispose(&v78, 8);
        if (!v13)
        {
          [BWPixelTransferNode _convertUsingHDRProcessing:toSDR:];
        }

        v15 = [v12 dictionaryWithObject:v11 forKey:*v13];
        IOSurface = CVPixelBufferGetIOSurface(a2);
        if (IOSurface)
        {
          v24 = IOSurface;
          v25 = CVPixelBufferGetIOSurface(processing);
          if (v25)
          {
            v33 = v25;
            v75 = 0;
            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v69 = 0u;
            v70 = 0u;
            v67 = 0u;
            v68 = 0u;
            WORD5(v70) = 3073;
            BYTE12(v70) = 18;
            if (IOSurfaceSetBulkAttachments2())
            {
              [(BWPixelTransferNode *)v76 _convertUsingHDRProcessing:v34 toSDR:v35, v36, v37, v38, v39, v40];
            }

            else
            {
              v66 = 0;
              v64 = 0u;
              v65 = 0u;
              v62 = 0u;
              v63 = 0u;
              v60 = 0u;
              v61 = 0u;
              v58 = 0u;
              v59 = 0u;
              WORD5(v61) = 3073;
              BYTE12(v61) = 1;
              if (!IOSurfaceSetBulkAttachments2())
              {
                v57 = 0;
                if ([*(v8 + 408) generateMSRColorConfigWithOperation:4 inputSurface:v24 outputSurface:v33 metadata:v15 histogram:0 config:&v57] == -17000)
                {
                  v48 = malloc_type_malloc(0x28uLL, 0x10000407607B2BCuLL);
                  *v48 = 3;
                  v48[1] = [v57 bytes];
                  *(v48 + 4) = [v57 length];
                  *(v48 + 28) = 0;
                  *(v48 + 20) = 0;
                  v49 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v48 length:40 freeWhenDone:1];
                  v50 = *MEMORY[0x1E69A8498];
                  v54 = v49;
                  v55[0] = v50;
                  v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
                  v52 = *MEMORY[0x1E69A84D8];
                  v56[0] = v51;
                  v56[1] = MEMORY[0x1E695E118];
                  v53 = *MEMORY[0x1E69A85B8];
                  v55[1] = v52;
                  v55[2] = v53;
                  v56[2] = MEMORY[0x1E695E110];
                  [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:3];
                  result = IOSurfaceAcceleratorTransformSurface();
                  if (!result)
                  {
                    return result;
                  }

                  [BWPixelTransferNode _convertUsingHDRProcessing:toSDR:];
                }

                else
                {
                  [BWPixelTransferNode _convertUsingHDRProcessing:toSDR:];
                }

                return 4294954514;
              }

              [(BWPixelTransferNode *)v76 _convertUsingHDRProcessing:v41 toSDR:v42, v43, v44, v45, v46, v47];
            }
          }

          else
          {
            [(BWPixelTransferNode *)v76 _convertUsingHDRProcessing:v26 toSDR:v27, v28, v29, v30, v31, v32];
          }
        }

        else
        {
          [(BWPixelTransferNode *)v76 _convertUsingHDRProcessing:v17 toSDR:v18, v19, v20, v21, v22, v23];
        }
      }

      else
      {
        [(BWPixelTransferNode *)v76 _convertUsingHDRProcessing:a2 toSDR:processing, r, a5, a6, a7, a8];
      }
    }

    else
    {
      [(BWPixelTransferNode *)v76 _convertUsingHDRProcessing:a2 toSDR:processing, r, a5, a6, a7, a8];
    }

    return LODWORD(v76[0]);
  }

  return result;
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (self->_emitSampleBufferSemaphore)
  {
    emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
    sampleCopy = +[BWDroppedSample newDroppedSampleFromDroppedSample:backPressureSemaphoresToIgnore:](BWDroppedSample, "newDroppedSampleFromDroppedSample:backPressureSemaphoresToIgnore:", sample, [MEMORY[0x1E695DEC8] arrayWithObjects:&emitSampleBufferSemaphore count:1]);
  }

  else
  {
    sampleCopy = sample;
  }

  v6 = sampleCopy;
  [(BWNodeOutput *)self->super._output emitDroppedSample:sampleCopy];
}

- (void)setCropMode:(int)mode
{
  if (self->_cropMode != mode)
  {
    self->_cropMode = mode;
    [(BWPixelTransferNode *)self _updatePassthroughModes];
  }
}

- (CGRect)inputCropRect
{
  x = self->_inputCropRect.origin.x;
  y = self->_inputCropRect.origin.y;
  width = self->_inputCropRect.size.width;
  height = self->_inputCropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)setPassesBuffersThroughWhenPossible:(BOOL)possible
{
  if (self->_passesBuffersThroughWhenPossible != possible)
  {
    self->_passesBuffersThroughWhenPossible = possible;
    [(BWPixelTransferNode *)self _updatePassthroughModes];
  }
}

- (void)setOutputWidth:(unint64_t)width
{
  if (self->_outputWidth != width)
  {
    self->_outputWidth = width;
    [(BWPixelTransferNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (void)setOutputHeight:(unint64_t)height
{
  if (self->_outputHeight != height)
  {
    self->_outputHeight = height;
    [(BWPixelTransferNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (void)setOutputPixelFormat:(unsigned int)format
{
  if (self->_outputPixelFormat != format)
  {
    self->_outputPixelFormat = format;
    [(BWPixelTransferNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (void)setPreferredOutputPixelFormats:(id)formats
{
  if (([formats isEqualToArray:self->_preferredOutputPixelFormats] & 1) == 0)
  {
    [(BWPixelTransferNode *)&self->_preferredOutputPixelFormats setPreferredOutputPixelFormats:formats, &self->super.super.isa];
  }
}

- (void)setOutputColorSpaceProperties:(int)properties
{
  if (self->_outputColorSpaceProperties != properties)
  {
    self->_outputColorSpaceProperties = properties;
    [(BWPixelTransferNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (void)setMaxLossyCompressionLevel:(int)level
{
  v3 = *&level;
  [(BWPixelTransferNode *)self setMaxInputLossyCompressionLevel:?];

  [(BWPixelTransferNode *)self setMaxOutputLossyCompressionLevel:v3];
}

- (int)maxLossyCompressionLevel
{
  if (self->_maxInputLossyCompressionLevel <= self->_maxOutputLossyCompressionLevel)
  {
    return self->_maxOutputLossyCompressionLevel;
  }

  else
  {
    return self->_maxInputLossyCompressionLevel;
  }
}

- (void)setMaxInputLossyCompressionLevel:(int)level
{
  if (self->_maxInputLossyCompressionLevel != level)
  {
    self->_maxInputLossyCompressionLevel = level;
    [(BWPixelTransferNode *)&self->super.super.isa _updateInputRequirements];
  }
}

- (void)setMaxOutputLossyCompressionLevel:(int)level
{
  if (self->_maxOutputLossyCompressionLevel != level)
  {
    self->_maxOutputLossyCompressionLevel = level;
    [(BWPixelTransferNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (void)setEmitSampleBufferSemaphore:(id)semaphore
{
  emitSampleBufferSemaphore = self->_emitSampleBufferSemaphore;
  if (emitSampleBufferSemaphore != semaphore)
  {

    self->_emitSampleBufferSemaphore = semaphore;
  }
}

- (void)setConversionMethodForStillImagesDuringHDRVideos:(int)videos
{
  if (videos == 3 && self->_fractionalSourceRectEnabled)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Internal inconsistency, conversionMethodForStillImagesDuringHDRVideos(%d) can not be set when fractional rects is enabled", 3), 0}]);
  }

  if (self->_conversionMethodForStillImagesDuringHDRVideo != videos)
  {
    self->_conversionMethodForStillImagesDuringHDRVideo = videos;

    [(BWPixelTransferNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (void)setAllows422To420Conversion:(BOOL)conversion
{
  if (self->_allows422To420Conversion != conversion)
  {
    self->_allows422To420Conversion = conversion;
    [(BWPixelTransferNode *)&self->super.super.isa _updateOutputRequirements];
  }
}

- (uint64_t)_emitIfMarkerBuffer:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = OUTLINED_FUNCTION_4_3();
    v7 = CMGetAttachment(v4, v5, v6);
    v8 = OUTLINED_FUNCTION_4_3();
    v11 = CMGetAttachment(v8, v9, v10);
    v12 = OUTLINED_FUNCTION_4_3();
    result = CMGetAttachment(v12, v13, v14);
    if (v7 || v11 || result)
    {
      [*(v3 + 16) emitSampleBuffer:a2];
      return 1;
    }
  }

  return result;
}

- (uint64_t)_ensureDeviceOrientationMonitor
{
  if (result)
  {
    v1 = result;
    if (*(result + 222) == 1 && !*(result + 224))
    {
      v2 = objc_alloc_init(BWDeviceOrientationMonitor);
      *(v1 + 224) = v2;
      result = [(BWDeviceOrientationMonitor *)v2 start];
      *(v1 + 232) = -1;
    }
  }

  return result;
}

- (uint64_t)_updateLiveRotationAndFlipsToApplyUprightExifOrientation:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v7 = 0;
    if (a2)
    {
      result = FigCaptureRotationDegreesAndMirroringFromExifOrientation(a2, &v7);
    }

    else
    {
      result = 0;
    }

    if (result != *(v2 + 212))
    {
      *(v2 + 212) = result;
    }

    v3 = result != 270;
    v4 = result == 270;
    if (result == 90)
    {
      v3 = 0;
      v4 = 1;
    }

    v5 = v7 && v3;
    v6 = v7 && v4;
    if (*(v2 + 217) != v5 || *(v2 + 219) != v6)
    {
      *(v2 + 217) = v5;
      *(v2 + 219) = v6;
    }
  }

  return result;
}

- (uint64_t)_ensureIntermediatePoolWithDimensions:(uint64_t)dimensions
{
  if (dimensions)
  {
    v4 = HIDWORD(a2);
    if (*(dimensions + 352) != a2)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = objc_alloc_init(BWVideoFormatRequirements);
      liveFormat = [*(dimensions + 8) liveFormat];
      name = [dimensions name];
      if (!name)
      {
        name = @"PixelTransfer";
      }

      v9 = [(__CFString *)name stringByAppendingString:@" Intermediate"];
      [(BWVideoFormatRequirements *)v6 setWidth:a2];
      [(BWVideoFormatRequirements *)v6 setHeight:a2 >> 32];
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(liveFormat, "pixelFormat")}];
      -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1]);
      v22 = v6;
      v10 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1]);
      if (v10)
      {
        v11 = v10;
        if (*(dimensions + 432) == 1 && dword_1ED844550)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        *(dimensions + 344) = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", v11, 1, v9, [*(dimensions + 16) memoryPool]);
        *(dimensions + 352) = a2;
        *(dimensions + 356) = v4;
      }

      else
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, v20, v21);
      }

      objc_autoreleasePoolPop(v5);
    }
  }

  return 0;
}

- (uint64_t)_updateMetadataForOutputSampleBuffer:(uint64_t)result destinationRect:
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_9_7();
  v2 = v1;
  result = CMGetAttachment(v3, *off_1E798A3C8, 0);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v5 = *(v2 + 132);
  if (v5)
  {
    if (v5 == 2)
    {
      if (*(v2 + 284) >= 1 && *(v2 + 288) >= 1)
      {
        v28.origin.x = OUTLINED_FUNCTION_3_1();
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v28);
        v8 = CFAutorelease(DictionaryRepresentation);
        v9 = *off_1E798B7A0;
        v10 = v4;
LABEL_14:

        return [v10 setObject:v8 forKeyedSubscript:v9];
      }
    }

    else if (v5 != 1)
    {
      return result;
    }

LABEL_13:
    v10 = OUTLINED_FUNCTION_4_3();
    goto LABEL_14;
  }

  if (*(v2 + 200) == 1)
  {
    goto LABEL_13;
  }

  if (!*(v2 + 212))
  {
    v11 = *(MEMORY[0x1E695F058] + 16);
    v26.origin = *MEMORY[0x1E695F058];
    v26.size = v11;
    result = CGRectMakeWithDictionaryRepresentation([result objectForKeyedSubscript:{*off_1E798B7A0, *&v26.origin, v11}], &v26);
    if (result)
    {
      liveFormat = [*(v2 + 8) liveFormat];
      liveFormat2 = [*(v2 + 16) liveFormat];
      [liveFormat2 width];
      [liveFormat width];
      [liveFormat2 height];
      [liveFormat height];
      v14 = OUTLINED_FUNCTION_11_10();
      v16 = FigCaptureCeilFloatToMultipleOf(v14, v15);
      v17 = OUTLINED_FUNCTION_11_10();
      v19 = FigCaptureCeilFloatToMultipleOf(v17, v18);
      v20 = OUTLINED_FUNCTION_11_10();
      v22 = FigCaptureFloorFloatToMultipleOf(v20, v21);
      v23 = OUTLINED_FUNCTION_11_10();
      v29.size.height = FigCaptureFloorFloatToMultipleOf(v23, v24);
      v29.origin.x = v16;
      v29.origin.y = v19;
      v29.size.width = v22;
      v25 = CGRectCreateDictionaryRepresentation(v29);
      CFAutorelease(v25);
      return [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
    }
  }

  return result;
}

- (void)_updateUprightExifOrientationOnSampleBufferIfNeeded:(uint64_t)needed
{
  if (needed)
  {
    v3 = [CMGetAttachment(target @"UprightExifOrientation"];
    v4 = v3;
    if (*(needed + 212) || (*(needed + 217) & 1) != 0)
    {
      v5 = 0;
      if (v3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v5 = *(needed + 219) ^ 1;
      if (v3)
      {
LABEL_5:
        if ((v5 & 1) == 0)
        {
          v14 = 0;
          v6 = FigCaptureRotationDegreesAndMirroringFromExifOrientation(v3, &v14);
          v13 = 0;
          v7 = ptn_rotationDegreesAndMirroringFromLiveConfiguration(*(needed + 212), *(needed + 217), *(needed + 219), &v13);
          if (v14 != v13 && (v7 == 270 || v7 == 90))
          {
            v6 += 180;
          }

          v8 = v14 != v13;
          v9 = FigCaptureNormalizeAngle(v6 - v7);
          [MEMORY[0x1E696AD98] numberWithInt:{FigCaptureExifOrientationFromRotationDegreesAndMirroring(v9, v8)}];
          v10 = OUTLINED_FUNCTION_1_25();
          CMSetAttachment(v10, v11, v12, 1u);
        }
      }
    }

    *(needed + 328) = v4;
  }
}

- (void)_updatePrimaryCaptureRect:(uint64_t)rect forOutputSampleBuffer:(const void *)buffer
{
  if (rect)
  {
    OUTLINED_FUNCTION_9_7();
    v3 = *off_1E798A430;
    if (CMGetAttachment(v4, *off_1E798A430, 0))
    {
      v7.origin.x = OUTLINED_FUNCTION_3_1();
      if (!CGRectIsNull(v7))
      {
        v8.origin.x = OUTLINED_FUNCTION_3_1();
        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v8);
        CMSetAttachment(buffer, v3, DictionaryRepresentation, 1u);
        if (DictionaryRepresentation)
        {

          CFRelease(DictionaryRepresentation);
        }
      }
    }
  }
}

- (unsigned)_updateLiveDeviceOrientationAffectedMetadataForOutputSampleBuffer:(double)buffer inputDims:(double)dims inputCropRect:(double)rect
{
  v125 = a7;
  v126 = a8;
  rectCopy = rect;
  v122 = a6;
  bufferCopy = buffer;
  dimsCopy = dims;
  if (result)
  {
    v8 = result;
    result = CMGetAttachment(target, *off_1E798A3C8, 0);
    if (result)
    {
      v9 = result;
      v10 = *off_1E798B220;
      v101 = [result objectForKeyedSubscript:*off_1E798B220];
      result = [v101 count];
      if (result)
      {
        v143[0] = 0;
        result = ptn_rotationDegreesAndMirroringFromLiveConfiguration(v8[53], *(v8 + 217), *(v8 + 219), v143);
        HIDWORD(v108) = result;
        if (result || (v143[0] & 1) != 0)
        {
          v97 = v10;
          v98 = v9;
          memset(v142, 0, sizeof(v142));
          FigCaptureMakeMirrorAndRotateVideoTransform(1, 1, (result == 0) | v143[0] & 1, result, v142);
          v141 = 0;
          v137 = 0u;
          v138 = 0u;
          v139 = 0u;
          v140 = 0u;
          obj = [v101 allKeys];
          v102 = [obj countByEnumeratingWithState:&v137 objects:v136 count:16];
          dictionary = 0;
          if (v102)
          {
            v100 = *v138;
            v105 = *off_1E798ACE8;
            v12 = *MEMORY[0x1E695F058];
            v13 = *(MEMORY[0x1E695F058] + 8);
            v15 = *(MEMORY[0x1E695F058] + 16);
            v14 = *(MEMORY[0x1E695F058] + 24);
            v16 = *off_1E798B5C0;
            v110 = *off_1E798B5D0;
            v113 = v13;
            v114 = *MEMORY[0x1E695F058];
            *&v111 = v14;
            *&v112 = v15;
            v109 = *off_1E798B160;
            do
            {
              for (i = 0; i != v102; i = v91 + 1)
              {
                v107 = dictionary;
                if (*v138 != v100)
                {
                  objc_enumerationMutation(obj);
                }

                v106 = i;
                v104 = *(*(&v137 + 1) + 8 * i);
                v103 = [v101 objectForKeyedSubscript:?];
                v18 = [v103 objectForKeyedSubscript:v105];
                v132 = 0u;
                v133 = 0u;
                v134 = 0u;
                v135 = 0u;
                v116 = v18;
                v19 = [v18 countByEnumeratingWithState:&v132 objects:v131 count:16];
                if (v19)
                {
                  v20 = v19;
                  array = 0;
                  v22 = *v133;
                  do
                  {
                    v23 = 0;
                    v115 = v20;
                    do
                    {
                      if (*v133 != v22)
                      {
                        objc_enumerationMutation(v116);
                      }

                      v24 = *(*(&v132 + 1) + 8 * v23);
                      memset(&rect, 0, sizeof(rect));
                      v25 = [v24 objectForKeyedSubscript:v16];
                      v26 = v14;
                      v27 = v15;
                      v28 = v13;
                      if (v25)
                      {
                        v29 = CGRectMakeWithDictionaryRepresentation(v25, &rect);
                        OUTLINED_FUNCTION_0_23(v37, v38, v39, v40, v29, v30, v31, v32, v33, v34, v35, v36, v41, v42, v43, v44, v93, v94, v95, v96, v97, v98, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, rectCopy, v122, bufferCopy, dimsCopy, v125, v126, v127, v128, v129, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
                        v27 = v45;
                        v26 = v46;
                      }

                      if (v27 > 0.0 && v26 > 0.0)
                      {
                        v120 = v28;
                        v47 = [v24 objectForKeyedSubscript:v16];
                        *&v48 = v14;
                        v49 = v15;
                        v50 = v13;
                        v51 = v12;
                        if (v47)
                        {
                          v52 = CGRectMakeWithDictionaryRepresentation(v47, &rect);
                          v51 = OUTLINED_FUNCTION_0_23(v60, v61, v62, v63, v52, v53, v54, v55, v56, v57, v58, v59, v64, v65, v66, v67, v93, v94, v95, v96, v97, v98, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, rectCopy, v122, bufferCopy, dimsCopy, v125, v126, v127, v128, v129, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
                          v49 = v68;
                        }

                        v117 = *&v51;
                        v118 = v50;
                        v119 = v48;
                        v69 = [v24 objectForKeyedSubscript:v110];
                        if (v69)
                        {
                          v70 = CGRectMakeWithDictionaryRepresentation(v69, &rect);
                          OUTLINED_FUNCTION_0_23(v78, v79, v80, v81, v70, v71, v72, v73, v74, v75, v76, v77, v82, v83, v84, v85, v93, v94, v95, v96, v97, v98, obj, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, rectCopy, v122, bufferCopy, dimsCopy, v125, v126, v127, v128, v129, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
                          v15 = v86;
                          v14 = v87;
                        }

                        v88 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v24];
                        FigCFDictionarySetCGRect();
                        if (v49 > 0.0 && *&v119 > 0.0)
                        {
                          FigCFDictionarySetCGRect();
                        }

                        if (v15 > 0.0 && v14 > 0.0)
                        {
                          FigCFDictionarySetCGRect();
                        }

                        if (FigCFDictionaryGetInt32IfPresent())
                        {
                          v89 = v141;
                          if (v143[0])
                          {
                            v89 = -v141;
                          }

                          FigCaptureNormalizeAngle(v89 + HIDWORD(v108));
                          OUTLINED_FUNCTION_4();
                          FigCFDictionarySetInt32();
                        }

                        v13 = v113;
                        v12 = *&v114;
                        v14 = *&v111;
                        v15 = *&v112;
                        if (FigCFDictionaryGetInt32IfPresent())
                        {
                          if (v143[0])
                          {
                            v90 = -v141;
                          }

                          else
                          {
                            v90 = v141;
                          }

                          FigCaptureNormalizeAngle(v90);
                          OUTLINED_FUNCTION_4();
                          FigCFDictionarySetInt32();
                        }

                        if (FigCFDictionaryGetInt32IfPresent())
                        {
                          FigCaptureNormalizeAngle(v141);
                          OUTLINED_FUNCTION_4();
                          FigCFDictionarySetInt32();
                        }

                        if (!array)
                        {
                          array = [MEMORY[0x1E695DF70] array];
                        }

                        [array addObject:v88];
                        v20 = v115;
                      }

                      ++v23;
                    }

                    while (v20 != v23);
                    v20 = [v116 countByEnumeratingWithState:&v132 objects:v131 count:16];
                  }

                  while (v20);
                }

                else
                {
                  array = 0;
                }

                if ([array count])
                {
                  v91 = v106;
                  dictionary = v107;
                  if (!v107)
                  {
                    dictionary = [MEMORY[0x1E695DF90] dictionary];
                  }

                  v92 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v103];
                  [v92 setObject:array forKeyedSubscript:v105];
                  [dictionary setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithDictionary:", v92), v104}];
                }

                else
                {
                  v91 = v106;
                  dictionary = v107;
                }
              }

              v102 = [obj countByEnumeratingWithState:&v137 objects:v136 count:16];
            }

            while (v102);
          }

          [v98 setObject:dictionary forKeyedSubscript:v97];
          return [OUTLINED_FUNCTION_4_3() setObject:? forKeyedSubscript:?];
        }
      }
    }
  }

  return result;
}

- (uint64_t)renderSampleBuffer:(uint64_t)a1 forInput:(_BYTE *)a2 .cold.1(uint64_t a1, _BYTE *a2)
{
  CurrentConfiguration = [(BWPixelTransferNode *)a1 _makeCurrentConfigurationLive];
  *a2 = 0;
  return [*(a1 + 16) makeConfiguredFormatLive];
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.3(_DWORD *a1)
{
  v6 = 0;
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v1, v8, v9, v10, v11, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844548, 0xFFFFCE0ELL, "<<<< BWPixelTransferNode >>>>", 0x2E3, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(uint64_t)a3 toSDR:(uint64_t)a4 .cold.1(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844548, 0xFFFFCE14, "<<<< BWPixelTransferNode >>>>", 0x8AA, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(uint64_t)a3 toSDR:(uint64_t)a4 .cold.2(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844548, 0xFFFFCE14, "<<<< BWPixelTransferNode >>>>", 0x8B3, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(uint64_t)a3 toSDR:(uint64_t)a4 .cold.5(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844548, 0xFFFFCE14, "<<<< BWPixelTransferNode >>>>", 0x8A1, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(uint64_t)a3 toSDR:(uint64_t)a4 .cold.6(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844548, 0xFFFFCE14, "<<<< BWPixelTransferNode >>>>", 0x89F, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (void)_convertUsingHDRProcessing:toSDR:.cold.7()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  [v0 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef getkHDRProcessingDolbyVisionRPUDataKey(void)") description:{@"BWPixelTransferNode.m", 66, @"%s", dlerror()}];
  __break(1u);
}

- (uint64_t)_convertUsingHDRProcessing:(uint64_t)a3 toSDR:(uint64_t)a4 .cold.8(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844548, 0xFFFFCE14, "<<<< BWPixelTransferNode >>>>", 0x899, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (uint64_t)_convertUsingHDRProcessing:(uint64_t)a3 toSDR:(uint64_t)a4 .cold.9(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED844548, 0xFFFFCE14, "<<<< BWPixelTransferNode >>>>", 0x898, v8, a7, a8, v11);
  *a1 = result;
  return result;
}

- (id)setPreferredOutputPixelFormats:(id *)a3 .cold.1(id *a1, void *a2, id *a3)
{
  *a1 = [a2 copy];

  return [(BWPixelTransferNode *)a3 _updateOutputRequirements];
}

@end