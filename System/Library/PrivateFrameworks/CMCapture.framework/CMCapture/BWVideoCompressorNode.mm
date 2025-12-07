@interface BWVideoCompressorNode
+ (BWVideoFormatRequirements)_formatRequirementsForCompressionSettings:(_DWORD *)settings maxVideoFrameRate:(int)rate retainedBufferCountHint:(float)hint maxLossyCompressionLevel:;
+ (void)initialize;
- (BWVideoCompressorNode)initWithCompressionSettings:(id)settings overCaptureEnabled:(BOOL)enabled stereoVideoCompressionEnabled:(BOOL)compressionEnabled maxVideoFrameRate:(float)rate delayedCompressorCleanupEnabled:(BOOL)cleanupEnabled maxLossyCompressionLevel:(int)level cameraInfoByPortType:(id)type;
- (VTSessionRef)_createEncoderSessionWithWidth:(int32_t)width height:(uint64_t)height inputPixelFormat:(uint64_t)format isHDResolution:(uint64_t)codecType videoCodec:(CFDictionaryRef)encoderSpecification encoderSpecification:(void *)specification compressionProperties:(void *)outputCallbackRefCon compressorNodeRef:;
- (char)_scaleBitrateByFactor:(char *)result;
- (const)_copyCompressionSessionProperty:(int)property requireSupported:(OSStatus *)supported error:;
- (id)_verifyDimensions:(id *)result;
- (uint64_t)_setCompressionSessionProperty:(const void *)property value:(uint64_t)value requireSupported:(uint64_t)supported;
- (uint64_t)_setEncoderCompressionPropertiesWithCompressionSession:(void *)session compressionProperties:(uint64_t)properties sourcePixelType:(int)type isHDResolution:(int)resolution videoCodec:;
- (uint64_t)_updatePowerPressureLevel;
- (uint64_t)_updateThermalPressureLevel;
- (void)_addStereoCompressionPropertiesToCompressionSettings:(int)settings rotationDegrees:;
- (void)_cleanCompressor:(uint64_t)compressor;
- (void)_createCompressionSession;
- (void)_prepareForVideoCompression;
- (void)_registerForThermalAndPowerNotifications;
- (void)_releaseCompressionSession;
- (void)_unregisterForThermalAndPowerNotification;
- (void)_validateBFrameEncodingAbility;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)suspendResources;
@end

@implementation BWVideoCompressorNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWVideoCompressorNode)initWithCompressionSettings:(id)settings overCaptureEnabled:(BOOL)enabled stereoVideoCompressionEnabled:(BOOL)compressionEnabled maxVideoFrameRate:(float)rate delayedCompressorCleanupEnabled:(BOOL)cleanupEnabled maxLossyCompressionLevel:(int)level cameraInfoByPortType:(id)type
{
  compressionEnabledCopy = compressionEnabled;
  if (compressionEnabled && !VTIsStereoMVHEVCEncodeSupported())
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Stereo video compression requested on system that doesn't support it" userInfo:0]);
  }

  v32.receiver = self;
  v32.super_class = BWVideoCompressorNode;
  v17 = [(BWNode *)&v32 init];
  if (v17)
  {
    v18 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v17];
    *(v17 + 279) = enabled;
    *(v17 + 314) = compressionEnabledCopy;
    *(v17 + 71) = rate;
    if (settings)
    {
      *(v17 + 16) = [settings copy];
      rate = *(v17 + 71);
    }

    v31 = 0;
    [(BWNodeInput *)v18 setFormatRequirements:[BWVideoCompressorNode _formatRequirementsForCompressionSettings:settings maxVideoFrameRate:&v31 retainedBufferCountHint:level maxLossyCompressionLevel:rate]];
    [(BWNodeInput *)v18 setRetainedBufferCount:v31];
    *(v17 + 145) = 0;
    *(v17 + 37) = 81;
    v19 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v19 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v19 setPassthroughMode:0];
    [(BWNodeInput *)v18 setUnspecifiedAttachedMediaConfiguration:v19];
    [v17 addInput:v18];

    if (compressionEnabledCopy)
    {
      v20 = objc_alloc_init(BWNodeInputMediaConfiguration);
      -[BWNodeInputMediaConfiguration setFormatRequirements:](v20, "setFormatRequirements:", [*(v17 + 1) formatRequirements]);
      -[BWNodeInputMediaConfiguration setRetainedBufferCount:](v20, "setRetainedBufferCount:", [*(v17 + 1) retainedBufferCount]);
      [*(v17 + 1) setMediaConfiguration:v20 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
    }

    v21 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v17];
    v22 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeOutput *)v21 setFormatRequirements:v22];
    [(BWNodeOutput *)v21 setProvidesPixelBufferPool:0];

    [v17 addOutput:v21];
    *(v17 + 22) = FigDispatchQueueCreateWithPriority();
    *(v17 + 23) = FigDispatchQueueCreateWithPriority();
    *(v17 + 208) = !compressionEnabledCopy;
    if (!compressionEnabledCopy)
    {
      *(v17 + 25) = 0x4014000000000000;
      v23 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v17 + 23));
      *(v17 + 24) = v23;
      dispatch_source_set_timer(v23, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v24 = [FigWeakReference weakReferenceToObject:v17];
      v25 = *(v17 + 24);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __198__BWVideoCompressorNode_initWithCompressionSettings_overCaptureEnabled_stereoVideoCompressionEnabled_maxVideoFrameRate_delayedCompressorCleanupEnabled_maxLossyCompressionLevel_cameraInfoByPortType___block_invoke;
      handler[3] = &unk_1E798F870;
      handler[4] = v24;
      dispatch_source_set_event_handler(v25, handler);
      dispatch_activate(*(v17 + 24));
    }

    *(v17 + 30) = 0x405E000000000000;
    *(v17 + 29) = FigDispatchQueueCreateWithPriority();
    *(v17 + 38) = [[BWLimitedGMErrorLogger alloc] initWithName:@"Video Compressor" maxLoggingCount:40];
    *(v17 + 278) = 1;
    *(v17 + 352) = cleanupEnabled;
    v26 = [MEMORY[0x1E695DF70] arrayWithObjects:{0x1F21AA650, 0x1F21AA670, 0x1F21AA2B0, *off_1E798D4E0, *off_1E798D4E8, 0x1F21AA350, *off_1E798D480, 0x1F21A9AB0, *off_1E798D478, *off_1E798D458, *off_1E798CD98, 0x1F21AA9B0, 0x1F21AA9D0, 0}];
    v27 = v26;
    if (*(v17 + 279) == 1)
    {
      [v26 addObject:0x1F216AB90];
    }

    *(v17 + 45) = [v27 copy];
    v28 = MEMORY[0x1E6960C70];
    *(v17 + 23) = *MEMORY[0x1E6960C70];
    *(v17 + 48) = *(v28 + 16);
    [v17 setSupportsLiveReconfiguration:1];
    [v17 setSupportsPrepareWhileRunning:1];
    [v17 setRequiresEndOfDataForConfigurationChanges:1];
    *(v17 + 51) = [type copy];
  }

  return v17;
}

+ (BWVideoFormatRequirements)_formatRequirementsForCompressionSettings:(_DWORD *)settings maxVideoFrameRate:(int)rate retainedBufferCountHint:(float)hint maxLossyCompressionLevel:
{
  objc_opt_self();
  if (settings)
  {
    *settings = (((hint * 60.0) / 1000.0) + 3.0);
    if (a2)
    {
      *settings += [objc_msgSend(a2 objectForKeyedSubscript:{@"AVVideoHEVCLookaheadFrames", "intValue"}];
      v9 = [objc_msgSend(a2 objectForKeyedSubscript:{@"AVVideoHEVCExtraRetainedBufferCount", "intValue"}];
      *settings += [objc_msgSend(a2 objectForKeyedSubscript:{@"CVPixelBufferRecyclingSlop", "intValue"}] + v9;
    }
  }

  v10 = objc_alloc_init(BWVideoFormatRequirements);
  [(BWVideoFormatRequirements *)v10 setWidthAlignment:16];
  [(BWVideoFormatRequirements *)v10 setHeightAlignment:16];
  [(BWVideoFormatRequirements *)v10 setBytesPerRowAlignment:64];
  [(BWVideoFormatRequirements *)v10 setPlaneAlignment:64];
  [(BWVideoFormatRequirements *)v10 setSupportedCacheModes:&unk_1F2249120];
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 1, 1, rate)}];
  [array addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(1, 1, 1, 0)}];
  [array addObjectsFromArray:&unk_1F2249138];
  [(BWVideoFormatRequirements *)v10 setSupportedPixelFormats:array];

  return v10;
}

uint64_t __198__BWVideoCompressorNode_initWithCompressionSettings_overCaptureEnabled_stereoVideoCompressionEnabled_maxVideoFrameRate_delayedCompressorCleanupEnabled_maxLossyCompressionLevel_cameraInfoByPortType___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) referencedObject];

  return [v1 _releaseCompressionSession];
}

- (void)dealloc
{
  reapCompressionSessionTimer = self->_reapCompressionSessionTimer;
  if (reapCompressionSessionTimer)
  {
    dispatch_source_cancel(reapCompressionSessionTimer);

    self->_reapCompressionSessionTimer = 0;
  }

  self->_compressionSessionStateQueue = 0;
  if (self->_compressionSession)
  {
    [(BWVideoCompressorNode *)self _releaseCompressionSession];
    self->_didPrepareToEncode = 0;
  }

  self->_encodedFirstVideoBuffer = 0;
  self->_emittedFirstVideoBuffer = 0;

  self->_compressionSettings = 0;
  self->_stereoTaggedCollections = 0;
  thumbnailSourcePixelBuffer = self->_thumbnailSourcePixelBuffer;
  if (thumbnailSourcePixelBuffer)
  {
    CFRelease(thumbnailSourcePixelBuffer);
  }

  self->_emitterQueue = 0;
  self->_thermalAndPowerNotificationQueue = 0;

  v5.receiver = self;
  v5.super_class = BWVideoCompressorNode;
  [(BWNode *)&v5 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [format width]);
  -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", [format height]);
  v7 = FigCaptureEncodedByteStreamFormatForPixelFormat([format pixelFormat]);
  if (v7)
  {
    v8 = v7;
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1]);
  }

  [(BWNodeOutput *)self->super._output setFormatRequirements:v6];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (format)
  {
    if (self->_compressionDimensionsFromInputEnabled)
    {
      compressionSettings = self->_compressionSettings;
      if (compressionSettings)
      {
        v9 = [(NSDictionary *)compressionSettings mutableCopy];
      }

      else
      {
        v9 = [objc_msgSend(MEMORY[0x1E695DF90] init];
      }

      v10 = v9;
      -[NSDictionary setObject:forKeyedSubscript:](v9, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(format, "width")}], @"AVVideoWidthKey");
      -[NSDictionary setObject:forKeyedSubscript:](v10, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(format, "height")}], @"AVVideoHeightKey");

      self->_compressionSettings = v10;
    }

    [(BWVideoCompressorNode *)&self->super.super.isa _verifyDimensions:format];
    width = [format width];
    height = [format height];
    v13 = width >= 0x3C0 && height > 0x21B || width > 0x21B && height > 0x3BF;
    self->_sourceIsHDResolution = v13;
    self->_sourcePixelFormatType = [format pixelFormat];
  }

  emitterQueue = self->_emitterQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__BWVideoCompressorNode_configurationWithID_updatedFormat_didBecomeLiveForInput___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(emitterQueue, block);
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d)
  {
    [(BWVideoCompressorNode *)self _unregisterForThermalAndPowerNotification];
  }

  reapCompressionSessionTimer = self->_reapCompressionSessionTimer;
  if (reapCompressionSessionTimer)
  {
    dispatch_source_set_timer(reapCompressionSessionTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  compressionSessionStateQueue = self->_compressionSessionStateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__BWVideoCompressorNode_didReachEndOfDataForConfigurationID_input___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(compressionSessionStateQueue, block);
  [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger resetCurrentLoggingCounter];
  emitterQueue = self->_emitterQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__BWVideoCompressorNode_didReachEndOfDataForConfigurationID_input___block_invoke_2;
  v9[3] = &unk_1E798F898;
  v9[4] = self;
  v9[5] = d;
  dispatch_async(emitterQueue, v9);
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  bufferCopy = buffer;
  v7 = *off_1E798A3C8;
  CMGetAttachment(buffer, *off_1E798A3C8, 0);
  memset(&v149, 0, sizeof(v149));
  CMSampleBufferGetPresentationTimeStamp(&v149, bufferCopy);
  v148 = 0;
  v8 = MEMORY[0x1E695FF58];
  target = bufferCopy;
  if (*MEMORY[0x1E695FF58])
  {
    CMSampleBufferGetPresentationTimeStamp(&time, bufferCopy);
    CMTimeGetSeconds(&time);
    FigCFDictionaryGetIntIfPresent();
    if (*v8 == 1)
    {
      [(BWVideoCompressorNode *)self pipelineTraceID];
      kdebug_trace();
    }
  }

  if (!bufferCopy)
  {
    [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
    goto LABEL_188;
  }

  if (!input)
  {
    [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
    goto LABEL_188;
  }

  v9 = CMGetAttachment(bufferCopy, *MEMORY[0x1E69604E0], 0);
  v10 = *MEMORY[0x1E695E4D0];
  if (v9 == *MEMORY[0x1E695E4D0])
  {
    self->_nextFrameEncodeAsKeyFrame = 1;
  }

  if (!CMSampleBufferGetDataBuffer(bufferCopy) && !CMSampleBufferGetImageBuffer(bufferCopy))
  {
    v58 = v8;
    v59 = CMGetAttachment(bufferCopy, @"FileWriterAction", 0);
    if ((byte_1ED8441E0 & 0x20) != 0)
    {
      v60 = CMGetAttachment(bufferCopy, @"RecordingSettings", 0);
      if (v60)
      {
        [v60 settingsID];
      }
    }

    v61 = &off_1ACF06000;
    if (!v59)
    {
      v96 = 0;
      v95 = 0;
      goto LABEL_131;
    }

    v62 = CFEqual(v59, @"Stop");
    v63 = CFEqual(v59, @"Pause");
    v64 = CFEqual(v59, @"Terminate");
    v65 = CFEqual(v59, @"Flush");
    v66 = CFEqual(v59, @"Start");
    v67 = CFEqual(v59, @"Prewarm");
    v68 = CFEqual(v59, @"StreamForcedOff");
    if (v62 | v65)
    {
      CMSetAttachment(target, @"FramesDroppedDueToFormatWriterQueueFull", [MEMORY[0x1E696AD98] numberWithInt:self->_numberOfFramesDroppedBecauseTooManyCompressedBytesInFlight], 1u);
    }

    if (v63 || v62 || v64 || v65 || v68)
    {
      compressionSession = self->_compressionSession;
      if (compressionSession)
      {
        time = **&MEMORY[0x1E6960C70];
        VTCompressionSessionCompleteFrames(compressionSession, &time);
      }

      if (v62 || v64 || v65)
      {
        compressionSessionStateQueue = self->_compressionSessionStateQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __53__BWVideoCompressorNode_renderSampleBuffer_forInput___block_invoke;
        block[3] = &unk_1E798F870;
        block[4] = self;
        dispatch_sync(compressionSessionStateQueue, block);
      }

      [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger resetCurrentLoggingCounter];
    }

    if (objc_msgSend_isEqualToString_(self->_alternateCompressionSettingsKey))
    {
      isEqualToString = 1;
      v8 = v58;
    }

    else
    {
      v8 = v58;
      if (objc_msgSend_isEqualToString_(self->_alternateCompressionSettingsKey))
      {
        isEqualToString = 1;
      }

      else
      {
        isEqualToString = objc_msgSend_isEqualToString_(self->_alternateCompressionSettingsKey);
      }
    }

    if (v67)
    {
      v104 = (self->_stereoVideoCompressionEnabled | isEqualToString) ^ 1;
      if (v66)
      {
        goto LABEL_146;
      }
    }

    else
    {
      v104 = 0;
      if (v66)
      {
        goto LABEL_146;
      }
    }

    if ((v104 & 1) == 0)
    {
LABEL_170:
      if (v65)
      {
        self->_flushRequestReceived = 1;
      }

      bufferCopy = target;
      v61 = &off_1ACF06000;
      if (!v66 || !self->_compressionSession)
      {
        v96 = 0;
        v95 = 0;
        goto LABEL_175;
      }

      v112 = *MEMORY[0x1E6983678];
      v95 = [(BWVideoCompressorNode *)self _copyCompressionSessionProperty:0 requireSupported:0 error:?];
      v113 = *MEMORY[0x1E6983680];
      v96 = [(BWVideoCompressorNode *)self _copyCompressionSessionProperty:0 requireSupported:0 error:?];
      v114 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
      [v114 setObject:objc_msgSend(v95 forKeyedSubscript:{"copy"), v112}];
      [v114 setObject:objc_msgSend(v96 forKeyedSubscript:{"copy"), v113}];
      if (![v114 count])
      {
        v8 = v58;
        bufferCopy = target;
        goto LABEL_175;
      }

      v115 = [v114 copy];
      bufferCopy = target;
      CMSetAttachment(target, @"TemporalScalabilityProperties", v115, 1u);
LABEL_131:
      v8 = v58;
LABEL_175:
      CFRetain(bufferCopy);
      emitterQueue = self->_emitterQueue;
      v146[0] = MEMORY[0x1E69E9820];
      v146[1] = *(v61 + 60);
      v146[2] = __53__BWVideoCompressorNode_renderSampleBuffer_forInput___block_invoke_2;
      v146[3] = &unk_1E7990178;
      v146[4] = self;
      v146[5] = bufferCopy;
      dispatch_async(emitterQueue, v146);
      v97 = 0;
      goto LABEL_176;
    }

LABEL_146:
    v105 = CMGetAttachment(target, @"RecordingVideoSettings", 0);
    v106 = v105;
    if (self->_alternateCompressionSettingsKey)
    {
      v106 = [v105 objectForKeyedSubscript:?];
    }

    if (v106 && ([v106 isEqualToDictionary:self->_compressionSettings] & 1) == 0)
    {
      if (self->_compressionDimensionsFromInputEnabled)
      {
        v109 = [v106 mutableCopy];
        [v109 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", -[BWVideoFormat width](-[BWNodeOutput videoFormat](self->super._output, "videoFormat"), "width")), @"AVVideoWidthKey"}];
        [v109 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedLong:", -[BWVideoFormat height](-[BWNodeOutput videoFormat](self->super._output, "videoFormat"), "height")), @"AVVideoHeightKey"}];
        v106 = v109;
      }

      else
      {
        v109 = 0;
      }

      self->_stereoTaggedCollections = 0;
      if (self->_stereoVideoCompressionEnabled)
      {
        if (self->_stereoVideoBaseline <= 0.0)
        {
          [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
          value_low = LODWORD(time.value);
          LOBYTE(v15) = 1;
          v8 = v58;
          bufferCopy = target;
LABEL_190:
          v97 = 0;
          v99 = 0;
          if (!value_low)
          {
LABEL_135:

            BWSampleBufferRemoveAllAttachedMedia(bufferCopy);
            if (v15)
            {
              goto LABEL_177;
            }

            goto LABEL_136;
          }

LABEL_134:
          [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:value_low errorString:@"when rendering", p_lhs, v117];
          v99 = v97;
          goto LABEL_135;
        }

        if (!v109)
        {
          v109 = [v106 mutableCopy];
          v106 = v109;
        }

        v110 = [CMGetAttachment(target @"RecordingSettings"];
        [(BWVideoCompressorNode *)self _addStereoCompressionPropertiesToCompressionSettings:v109 rotationDegrees:v110];
      }

      [(BWVideoCompressorNode *)&self->_compressionSettings renderSampleBuffer:v106 forInput:&self->super.super.isa];
      if (v66)
      {
        goto LABEL_151;
      }
    }

    else if (v66)
    {
LABEL_151:
      v107 = CMGetAttachment(target, @"RecordingSettings", 0);
      v8 = v58;
      if ([v107 sendPreviewIOSurface])
      {
        self->_attachThumbnailSourcePixelBuffer = 1;
      }

      if (isEqualToString)
      {
        v108 = [v107 smartStyleReversibilitySupported] ^ 1;
      }

      else
      {
        v108 = 0;
      }

      self->_nextFrameEncodeAsKeyFrame = 1;
      goto LABEL_167;
    }

    v108 = 0;
    v8 = v58;
LABEL_167:
    if (!self->_didPrepareToEncode && (v108 & 1) == 0)
    {
      [(BWVideoCompressorNode *)self _prepareForVideoCompression];
    }

    goto LABEL_170;
  }

  v11 = self->_compressionSession;
  if (!self->_flushRequestReceived)
  {
    if (!v11)
    {
      [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
      goto LABEL_188;
    }

    goto LABEL_14;
  }

  if (v11)
  {
LABEL_14:
    if (!self->_didPrepareToEncode)
    {
      [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
      goto LABEL_188;
    }

    ImageBuffer = CMSampleBufferGetImageBuffer(bufferCopy);
    if (!ImageBuffer)
    {
      [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
      goto LABEL_188;
    }

    v13 = ImageBuffer;
    if (self->_stereoVideoCompressionEnabled)
    {
      AttachedMedia = BWSampleBufferGetAttachedMedia(bufferCopy, @"SynchronizedSlaveFrame");
      v15 = AttachedMedia;
      if (!AttachedMedia)
      {
        [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
        goto LABEL_189;
      }

      v121 = CMSampleBufferGetImageBuffer(AttachedMedia);
      if (!v121)
      {
        [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
LABEL_188:
        LOBYTE(v15) = 0;
LABEL_189:
        value_low = LODWORD(time.value);
        goto LABEL_190;
      }
    }

    else
    {
      v121 = 0;
      v15 = 0;
    }

    if (self->_maximumAllowedInFlightCompressedBytes && self->_encodedFirstVideoBuffer)
    {
      v16 = +[BWBufferometer totalTrackedSizeInFlight];
      v17 = v16 > self->_inFlightCompressedBytesWarningThreshold;
      if (self->_inFlightCompressedBytesOverWarningThreshold != v17)
      {
        self->_inFlightCompressedBytesOverWarningThreshold = v17;
      }

      if (v16 > self->_maximumAllowedInFlightCompressedBytes)
      {
        ++self->_numberOfFramesDroppedBecauseTooManyCompressedBytesInFlight;
        LODWORD(rhs.value) = 0;
        LOBYTE(type.value) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        LOBYTE(v15) = 0;
        v97 = 0;
        value_low = 4294954510;
        goto LABEL_134;
      }
    }

    v120 = v15;
    if (self->_attachThumbnailSourcePixelBuffer)
    {
      self->_attachThumbnailSourcePixelBuffer = 0;
      self->_thumbnailSourcePixelBuffer = CFRetain(v13);
    }

    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v15 = v19;
    if (!v19)
    {
      [BWVideoCompressorNode renderSampleBuffer:? forInput:?];
      goto LABEL_189;
    }

    if (self->_nextFrameEncodeAsKeyFrame)
    {
      self->_nextFrameEncodeAsKeyFrame = 0;
      [(opaqueCMSampleBuffer *)v19 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6983BD8]];
    }

    if (CMGetAttachment(bufferCopy, @"FinalFrameInSequence", 0) == v10)
    {
      [(opaqueCMSampleBuffer *)v15 setObject:v10 forKeyedSubscript:*MEMORY[0x1E6983BB8]];
    }

    key = v7;
    v20 = CMGetAttachment(bufferCopy, v7, 0);
    frameProperties = v15;
    if (self->_propagateStabilizedFacesToAVE)
    {
      v21 = CMGetAttachment(bufferCopy, @"DetectedFacesArrayHasBeenStabilized", 0);
      v22 = [v20 objectForKeyedSubscript:*off_1E798B218];
      if ([v21 BOOLValue])
      {
        if ([v22 count])
        {
          v118 = v10;
          v119 = v13;
          array = [MEMORY[0x1E695DF70] array];
          v24 = bufferCopy;
          v25 = array;
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetPresentationTimeStamp(&time, v24);
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          v26 = [v22 countByEnumeratingWithState:&v141 objects:v140 count:16];
          if (v26)
          {
            v27 = v26;
            v28 = *v142;
            v29 = *off_1E798ACF0;
            v30 = *off_1E798B780;
            obj = v22;
            do
            {
              for (i = 0; i != v27; ++i)
              {
                if (*v142 != v28)
                {
                  objc_enumerationMutation(obj);
                }

                v32 = *(*(&v141 + 1) + 8 * i);
                v33 = [v32 mutableCopy];
                memset(&lhs, 0, sizeof(lhs));
                [objc_msgSend(v32 objectForKeyedSubscript:{v29), "longLongValue"}];
                v34 = FigHostTimeToNanoseconds();
                CMTimeMake(&rhs, v34, 1000000000);
                CMTimeConvertScale(&lhs, &rhs, time.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                [v33 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", lhs.value), v29}];
                [objc_msgSend(v32 objectForKeyedSubscript:{v30), "longLongValue"}];
                v35 = FigHostTimeToNanoseconds();
                CMTimeMake(&type, v35, 1000000000);
                CMTimeConvertScale(&rhs, &type, time.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                lhs = rhs;
                [v33 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithLongLong:", rhs.value), v30}];
                [v25 addObject:v33];
              }

              v27 = [obj countByEnumeratingWithState:&v141 objects:v140 count:16];
            }

            while (v27);
          }

          v15 = frameProperties;
          [(__CFDictionary *)frameProperties setObject:v25 forKeyedSubscript:*MEMORY[0x1E6983C70]];
          v13 = v119;
          v8 = MEMORY[0x1E695FF58];
          bufferCopy = target;
          v10 = v118;
        }
      }
    }

    v36 = BWSampleBufferGetAttachedMedia(bufferCopy, 0x1F21AB190);
    if (v36)
    {
      [(opaqueCMSampleBuffer *)v15 setObject:CMSampleBufferGetImageBuffer(v36) forKeyedSubscript:*MEMORY[0x1E6983C28]];
    }

    if (self->_resetCodec)
    {
      [(opaqueCMSampleBuffer *)v15 setObject:v10 forKeyedSubscript:@"ResetRCState"];
    }

    v37 = BWGetHDRImageStatisticsDictFromSampleBuffer(bufferCopy);
    if (v37)
    {
      [(opaqueCMSampleBuffer *)v15 setObject:v37 forKeyedSubscript:*MEMORY[0x1E6983BF0]];
    }

    v38 = CVBufferCopyAttachments(v13, kCVAttachmentMode_ShouldPropagate);
    if (v38)
    {
      v39 = CFAutorelease(v38);
    }

    else
    {
      v39 = 0;
    }

    if (BWColorSpacePropertiesIsHDR([BWVideoFormat colorSpacePropertiesForPixelBufferAttachments:v39]))
    {
      v40 = CVBufferCopyAttachment(v13, *MEMORY[0x1E6965CD8], 0);
      if (v40)
      {
        v41 = CFAutorelease(v40);
        if (v41)
        {
          [(opaqueCMSampleBuffer *)v15 setObject:v41 forKeyedSubscript:*MEMORY[0x1E6983AC8]];
        }
      }
    }

    [(opaqueCMSampleBuffer *)v15 setObject:CMGetAttachment(bufferCopy forKeyedSubscript:*MEMORY[0x1E6983788], 0), *MEMORY[0x1E6983788]];
    v42 = *MEMORY[0x1E695E480];
    time = v149;
    v43 = CMTimeCopyAsDictionary(&time, v42);
    [v20 setObject:v43 forKeyedSubscript:@"VideoCompressorNodeAttachedPTS"];

    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    smuggledSampleBufferAttachments = self->_smuggledSampleBufferAttachments;
    v45 = [(NSArray *)smuggledSampleBufferAttachments countByEnumeratingWithState:&v134 objects:v133 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v135;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v135 != v47)
          {
            objc_enumerationMutation(smuggledSampleBufferAttachments);
          }

          [v20 setObject:CMGetAttachment(target forKeyedSubscript:{*(*(&v134 + 1) + 8 * j), 0), *(*(&v134 + 1) + 8 * j)}];
        }

        v46 = [(NSArray *)smuggledSampleBufferAttachments countByEnumeratingWithState:&v134 objects:v133 count:16];
      }

      while (v46);
    }

    PixelFormatType = CVPixelBufferGetPixelFormatType(v13);
    IsPackedBayerRaw = FigCapturePixelFormatIsPackedBayerRaw(PixelFormatType);
    v51 = -[NSDictionary objectForKeyedSubscript:](self->_cameraInfoForPortType, "objectForKeyedSubscript:", [v20 objectForKeyedSubscript:*off_1E798B540]);
    if (v51)
    {
      v53 = !IsPackedBayerRaw;
    }

    else
    {
      v53 = 1;
    }

    bufferCopy = target;
    if (!v53)
    {
      v54 = v51;
      v55 = CMGetAttachment(target, *off_1E798D448, 0);
      BWUpdateFrameLevelMetadataForProResRaw(target, v20, v54, v55);
    }

    v56 = v13;
    if (self->_shouldAttachDebugSEI)
    {
      [v20 addEntriesFromDictionary:{CMGetAttachment(v13, key, 0)}];
      CMSetAttachment(v13, key, v20, 1u);
      if (self->_stereoVideoCompressionEnabled)
      {
        if (CMGetAttachment(v120, key, 0))
        {
          dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
        }

        else
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
        }

        v72 = dictionary;
        v73 = *off_1E798A420;
        v74 = CMGetAttachment(v120, *off_1E798A420, 0);
        if (v74)
        {
          [v72 setObject:v74 forKeyedSubscript:v73];
        }

        CMSetAttachment(v121, key, v72, 1u);
        v56 = v13;
      }
    }

    if (self->_bFrameEncodingAllowed)
    {
      [(BWVideoCompressorNode *)self _validateBFrameEncodingAbility];
    }

    memset(&v132, 0, sizeof(v132));
    CMSampleBufferGetDuration(&v132, target);
    [v20 setObject:CMGetAttachment(v56 forKeyedSubscript:{@"MirroredHorizontal", 0), @"MirroredHorizontal"}];
    [v20 setObject:CMGetAttachment(v56 forKeyedSubscript:{@"MirroredVertical", 0), @"MirroredVertical"}];
    [v20 setObject:CMGetAttachment(v56 forKeyedSubscript:{@"RotationDegrees", 0), 0x1F216A8D0}];
    v75 = CVBufferCopyAttachment(v56, *MEMORY[0x1E69661C8], 0);
    if (v75)
    {
      v75 = CFAutorelease(v75);
    }

    [v75 floatValue];
    v77 = v76;
    v78 = CVBufferCopyAttachment(v56, *MEMORY[0x1E69661D8], 0);
    if (v78)
    {
      v78 = CFAutorelease(v78);
    }

    [v78 floatValue];
    if (v77 != 0.0)
    {
      v80 = LODWORD(v79);
      if (*&v79 != 0.0)
      {
        *&v79 = v77;
        [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v79), @"ProResRawWhiteBalanceBlueFactor"}];
        LODWORD(v81) = v80;
        [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v81), @"ProResRawWhiteBalanceRedFactor"}];
      }
    }

    if (!self->_encodedFirstVideoBuffer)
    {
      self->_encodedFirstVideoBuffer = 1;
      if (dword_1ED8441F0)
      {
        v82 = v8;
        LODWORD(rhs.value) = 0;
        LOBYTE(type.value) = 0;
        v83 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = rhs.value;
        if (os_log_type_enabled(v83, type.value))
        {
          v85 = value;
        }

        else
        {
          v85 = value & 0xFFFFFFFE;
        }

        if (v85)
        {
          name = [(BWNode *)self name];
          time = v149;
          Seconds = CMTimeGetSeconds(&time);
          maximumAllowedInFlightCompressedBytes = self->_maximumAllowedInFlightCompressedBytes;
          LODWORD(lhs.value) = 136315906;
          *(&lhs.value + 4) = "[BWVideoCompressorNode renderSampleBuffer:forInput:]";
          LOWORD(lhs.flags) = 2112;
          *(&lhs.flags + 2) = name;
          HIWORD(lhs.epoch) = 2048;
          v129 = Seconds;
          v130 = 2048;
          v131 = maximumAllowedInFlightCompressedBytes;
          LODWORD(v117) = 42;
          p_lhs = &lhs;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = v82;
        bufferCopy = target;
        v56 = v13;
      }
    }

    v89 = v20;
    memset(&v127, 0, sizeof(v127));
    BWGetOriginalPresentationTimeStampFromBuffer(bufferCopy, &v127);
    p_previousFrameOriginalPTS = &self->_previousFrameOriginalPTS;
    if (self->_previousFrameOriginalPTS.flags)
    {
      memset(&time, 0, sizeof(time));
      lhs = v127;
      *&rhs.value = *&p_previousFrameOriginalPTS->value;
      rhs.epoch = self->_previousFrameOriginalPTS.epoch;
      CMTimeSubtract(&time, &lhs, &rhs);
      lhs = time;
      [v20 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", CMTimeGetSeconds(&lhs)), *off_1E798B568}];
    }

    *&p_previousFrameOriginalPTS->value = *&v127.value;
    self->_previousFrameOriginalPTS.epoch = v127.epoch;
    if (self->_stereoVideoCompressionEnabled)
    {
      v91 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v56, v121, 0}];
      rhs.value = 0;
      value_low = MEMORY[0x1B26EF320](v42, self->_stereoTaggedCollections, v91, &rhs);
      if (value_low || !rhs.value)
      {

        [(BWLimitedGMErrorLogger *)self->_limitedGMErrorLogger logErrorNumber:value_low errorString:@"could not create stereo tagged buffer group"];
        v97 = frameProperties;
      }

      else
      {
        v92 = self->_compressionSession;
        time = v149;
        lhs = v132;
        v97 = frameProperties;
        value_low = VTCompressionSessionEncodeMultiImageFrame(v92, rhs.value, &time, &lhs, frameProperties, v20, 0);
        if (value_low)
        {
        }
      }

      if (rhs.value)
      {
        CFRelease(rhs.value);
      }

      if (value_low)
      {
        goto LABEL_128;
      }
    }

    else
    {
      v93 = self->_compressionSession;
      time = v149;
      lhs = v132;
      v97 = frameProperties;
      v94 = VTCompressionSessionEncodeFrame(v93, v56, &time, &lhs, frameProperties, v20, 0);
      if (v94)
      {
        value_low = v94;

LABEL_128:
        LOBYTE(v15) = 0;
        goto LABEL_134;
      }
    }

    v95 = 0;
    v96 = 0;
    self->_resetCodec = 0;
LABEL_176:

    BWSampleBufferRemoveAllAttachedMedia(bufferCopy);
    goto LABEL_177;
  }

  BWSampleBufferRemoveAllAttachedMedia(bufferCopy);
LABEL_136:
  if (self->_numberOfFramesDroppedBecauseTooManyCompressedBytesInFlight <= 0)
  {
    v100 = BWDroppedSampleReasonVideoCompressionFailure;
  }

  else
  {
    v100 = &BWDroppedSampleReasonVideoCompressionFormatWriterQueueFull;
  }

  v101 = *v100;
  time = v149;
  v102 = [BWDroppedSample newDroppedSampleWithReason:v101 pts:&time];
  v103 = self->_emitterQueue;
  v126[0] = MEMORY[0x1E69E9820];
  v126[1] = 3221225472;
  v126[2] = __53__BWVideoCompressorNode_renderSampleBuffer_forInput___block_invoke_67;
  v126[3] = &unk_1E798F898;
  v126[4] = self;
  v126[5] = v102;
  dispatch_async(v103, v126);
LABEL_177:
  if (*v8 == 1)
  {
    [(BWVideoCompressorNode *)self pipelineTraceID];
    kdebug_trace();
  }
}

void __53__BWVideoCompressorNode_renderSampleBuffer_forInput___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 16) emitSampleBuffer:*(a1 + 40)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

void __53__BWVideoCompressorNode_renderSampleBuffer_forInput___block_invoke_67(uint64_t a1)
{
  [*(*(a1 + 32) + 16) emitDroppedSample:*(a1 + 40)];
  v2 = *(a1 + 40);
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  emitterQueue = self->_emitterQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__BWVideoCompressorNode_handleDroppedSample_forInput___block_invoke;
  v5[3] = &unk_1E798F898;
  v5[4] = self;
  v5[5] = sample;
  dispatch_async(emitterQueue, v5);
}

void __52__BWVideoCompressorNode__prepareForVideoCompression__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id *a9)
{
  v10 = *(a1 + 32);
  if (*(v10 + 152))
  {
    if (*(v10 + 209) == 1)
    {
      v11 = [*(v10 + 128) isEqualToDictionary:*(v10 + 136)];
      v12 = *(a1 + 32);
      if (v11)
      {
        v12[168] = 1;
        *(*(a1 + 32) + 282) = 0;
        *(*(a1 + 32) + 210) = 1;
      }

      else
      {
        [v12 _releaseCompressionSession];
      }
    }

    else
    {
      [*(v10 + 304) logErrorNumber:0xFFFFFFFFLL errorString:{@"unexpectedly already have un-re-usable compression session, will continue to use"}];
    }
  }

  v13 = *(a1 + 32);
  if (!*(v13 + 152))
  {

    [(BWVideoCompressorNode *)v13 _createCompressionSession:a2];
  }
}

- (void)_releaseCompressionSession
{
  compressionSession = self->_compressionSession;
  if (compressionSession)
  {
    if (self->_maximumAllowedInFlightCompressedBytes)
    {
      self->_numberOfFramesDroppedBecauseTooManyCompressedBytesInFlight = 0;
      self->_inFlightCompressedBytesOverWarningThreshold = 0;
    }

    VTCompressionSessionInvalidate(compressionSession);
    CFRelease(self->_compressionSession);
    self->_compressionSession = 0;

    self->_compressionSessionSupportedProperties = 0;
    self->_compressionSessionCanBeReused = 0;

    self->_compressionSettingsPreparedFor = 0;
    self->_codecNameString = 0;
  }
}

- (void)_cleanCompressor:(uint64_t)compressor
{
  if (compressor)
  {
    if (*(compressor + 152))
    {
      if (a2 && (OUTLINED_FUNCTION_33(), v3))
      {
        v4 = *(compressor + 192);
        v5 = dispatch_time(0, (*(compressor + 200) * 1000000000.0));
        dispatch_source_set_timer(v4, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      else
      {
        [compressor _releaseCompressionSession];
      }

      *(compressor + 168) = 0;
    }

    *(compressor + 225) = 0;
    *(compressor + 226) = 0;
  }
}

- (void)_registerForThermalAndPowerNotifications
{
  if (self && !*(self + 260) && !*(self + 268))
  {
    v2 = *MEMORY[0x1E69E98C0];
    v3 = *(self + 232);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __65__BWVideoCompressorNode__registerForThermalAndPowerNotifications__block_invoke;
    handler[3] = &unk_1E7991270;
    handler[4] = self;
    notify_register_dispatch(v2, (self + 260), v3, handler);
    v4 = *(self + 232);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __65__BWVideoCompressorNode__registerForThermalAndPowerNotifications__block_invoke_2;
    v11[3] = &unk_1E7991270;
    v11[4] = self;
    notify_register_dispatch("com.apple.system.peakpowerpressurelevel", (self + 268), v4, v11);
    v5 = OUTLINED_FUNCTION_2_84(232);
    v7 = 3221225472;
    v8 = __65__BWVideoCompressorNode__registerForThermalAndPowerNotifications__block_invoke_3;
    v9 = &unk_1E798F870;
    selfCopy = self;
    dispatch_sync(v5, block);
  }
}

- (void)suspendResources
{
  v3.receiver = self;
  v3.super_class = BWVideoCompressorNode;
  [(BWNode *)&v3 suspendResources];
  [(BWVideoCompressorNode *)self _cleanCompressor:?];
}

- (id)_verifyDimensions:(id *)result
{
  if (result)
  {
    v3 = result;
    [a2 width];
    [a2 height];
    [objc_msgSend(v3[16] objectForKeyedSubscript:{@"AVVideoWidthKey", "unsignedIntegerValue"}];
    v4 = [v3[16] objectForKeyedSubscript:@"AVVideoHeightKey"];

    return [v4 unsignedIntegerValue];
  }

  return result;
}

- (void)_unregisterForThermalAndPowerNotification
{
  if (self)
  {
    v2 = *(self + 260);
    if (v2)
    {
      notify_cancel(v2);
      v3 = *(self + 232);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __66__BWVideoCompressorNode__unregisterForThermalAndPowerNotification__block_invoke;
      block[3] = &unk_1E798F870;
      block[4] = self;
      dispatch_sync(v3, block);
    }

    v4 = *(self + 268);
    if (v4)
    {
      notify_cancel(v4);
      v5 = *(self + 232);
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = __66__BWVideoCompressorNode__unregisterForThermalAndPowerNotification__block_invoke_2;
      v6[3] = &unk_1E798F870;
      v6[4] = self;
      dispatch_sync(v5, v6);
    }
  }
}

OpaqueVTCompressionSession *__67__BWVideoCompressorNode_didReachEndOfDataForConfigurationID_input___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 152);
  if (result)
  {
    v4 = **&MEMORY[0x1E6960C70];
    result = VTCompressionSessionCompleteFrames(result, &v4);
    v3 = *(a1 + 32);
    if (v3)
    {
      if (*(v3 + 152))
      {
        result = [v3 _releaseCompressionSession];
        *(v3 + 168) = 0;
      }

      *(v3 + 225) = 0;
      *(v3 + 226) = 0;
    }
  }

  return result;
}

- (void)_addStereoCompressionPropertiesToCompressionSettings:(int)settings rotationDegrees:
{
  if (self)
  {
    if ([a2 objectForKeyedSubscript:@"AVVideoCompressionPropertiesKey"])
    {
      v6 = [objc_msgSend(a2 objectForKeyedSubscript:{@"AVVideoCompressionPropertiesKey", "mutableCopy"}];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = v6;
    [a2 setObject:v6 forKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
    v8 = settings == 180;
    v9 = settings == 180;
    v10 = !v8;
    tags = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, 0);
    v23 = CMTagMakeWithSInt64Value(kCMTagCategory_VideoLayerID, 1);
    v21 = 0;
    newCollectionOut = 0;
    v11 = *MEMORY[0x1E695E480];
    if (!CMTagCollectionCreate(*MEMORY[0x1E695E480], &tags, 1, &newCollectionOut) && !CMTagCollectionCreate(v11, &v23, 1, &v21) && newCollectionOut && v21)
    {
      v20[0] = newCollectionOut;
      v20[1] = v21;
      *(self + 320) = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
      v12 = (*(self + 400) * 1000.0);
      [v7 setObject:&unk_1F2249150 forKeyedSubscript:*MEMORY[0x1E69836E0]];
      [v7 setObject:&unk_1F2249150 forKeyedSubscript:*MEMORY[0x1E69836E8]];
      v13 = [MEMORY[0x1E696AD98] numberWithInt:v10];
      v19[1] = [MEMORY[0x1E696AD98] numberWithInt:{v9, v13}];
      v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
      [v7 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69836D8]];
      v15 = *MEMORY[0x1E695E4D0];
      [v7 setObject:*MEMORY[0x1E695E4D0] forKeyedSubscript:*MEMORY[0x1E6983688]];
      [v7 setObject:v15 forKeyedSubscript:*MEMORY[0x1E6983690]];
      [v7 setObject:*MEMORY[0x1E69627E8] forKeyedSubscript:*MEMORY[0x1E69837D8]];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
      [v7 setObject:v16 forKeyedSubscript:*MEMORY[0x1E6983830]];
      v17 = [MEMORY[0x1E696AD98] numberWithInt:200];
      [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x1E6983698]];
      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:63400];
      [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69836A0]];
    }

    if (newCollectionOut)
    {
      CFRelease(newCollectionOut);
    }

    if (v21)
    {
      CFRelease(v21);
    }
  }
}

- (void)_prepareForVideoCompression
{
  if (self)
  {
    v2 = *(self + 192);
    if (v2)
    {
      dispatch_source_set_timer(v2, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    v3 = OUTLINED_FUNCTION_2_84(184);
    v5 = 3221225472;
    v6 = __52__BWVideoCompressorNode__prepareForVideoCompression__block_invoke;
    v7 = &unk_1E798F870;
    selfCopy = self;
    dispatch_sync(v3, block);
  }
}

- (const)_copyCompressionSessionProperty:(int)property requireSupported:(OSStatus *)supported error:
{
  if (result)
  {
    v6 = result;
    propertyValueOut = 0;
    if (*(result + 19))
    {
      v7 = *(result + 20);
      if (v7)
      {
        if (a2)
        {
          if ([v7 objectForKeyedSubscript:a2])
          {
            v10 = VTSessionCopyProperty(*(v6 + 19), a2, *MEMORY[0x1E695E480], &propertyValueOut);
            if (!supported)
            {
              return propertyValueOut;
            }
          }

          else
          {
            if (property)
            {
              v10 = -12787;
            }

            else
            {
              v10 = 0;
            }

            if (!supported)
            {
              return propertyValueOut;
            }
          }

LABEL_12:
          *supported = v10;
          return propertyValueOut;
        }

        v11 = v4;
        OUTLINED_FUNCTION_2_6();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v18, v19, propertyValueOut, v21, v22, v23, v24);
        v14 = qword_1ED8441E8;
        v15 = 2044;
      }

      else
      {
        v11 = v4;
        OUTLINED_FUNCTION_2_6();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v18, v19, propertyValueOut, v21, v22, v23, v24);
        v14 = qword_1ED8441E8;
        v15 = 2043;
      }
    }

    else
    {
      v11 = v4;
      OUTLINED_FUNCTION_2_6();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v18, v19, propertyValueOut, v21, v22, v23, v24);
      v14 = qword_1ED8441E8;
      v15 = 2042;
    }

    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", v15, v11, v12, v13, v17);
    if (!supported)
    {
      return propertyValueOut;
    }

    goto LABEL_12;
  }

  return result;
}

- (void)_validateBFrameEncodingAbility
{
  if (!self || *(self + 276) != 1)
  {
    return;
  }

  FigMemoryBarrier();
  v7 = *(self + 264);
  v8 = *(self + 272);
  v9 = *(self + 248);
  if (v9 != 0.0)
  {
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&time, HostTimeClock);
    if (v9 > CMTimeGetSeconds(&time))
    {
      v11 = 30;
      goto LABEL_8;
    }

    *(self + 248) = 0;
  }

  v11 = 20;
LABEL_8:
  v13 = v7 < v11 && v8 < v11;
  *(self + 277) = v13;
  if ((*(self + 277) & 1) == 0)
  {
    if ([(BWVideoCompressorNode *)self _setCompressionSessionProperty:MEMORY[0x1E695E110] value:1 requireSupported:v3, v4, v5, v6, v20])
    {
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v23, v24, time.value, time.timescale, time.epoch, v26, v27);
    }

    if (*(self + 256))
    {
      v14 = *MEMORY[0x1E6983558];
      v15 = [MEMORY[0x1E696AD98] numberWithInt:?];
      if ([(BWVideoCompressorNode *)self _setCompressionSessionProperty:v14 value:v15 requireSupported:1, v16, v17, v18, v19, v21])
      {
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v22, v23, v24, time.value, time.timescale, time.epoch, v26, v27);
      }
    }
  }
}

- (void)_createCompressionSession
{
  if (!self)
  {
    goto LABEL_24;
  }

  if (*(self + 152))
  {
    OUTLINED_FUNCTION_10_39();

    FigSignalErrorAtGM(v10, v11, v12, v13, v14, v15, v16, v17, a9);
    return;
  }

  v18 = OUTLINED_FUNCTION_11_37();
  v20 = v19;
  if (v18)
  {
    v21 = [v18 objectForKeyedSubscript:@"AVVideoCodecKey"];
    *(self + 328) = v21;
    if (v21)
    {
      v22 = BWOSTypeForString(v21);
    }

    else
    {
      v22 = 0;
    }

    v23 = [objc_msgSend(OUTLINED_FUNCTION_11_37() objectForKeyedSubscript:{@"AVVideoWidthKey", "unsignedIntegerValue"}];
    v24 = [objc_msgSend(OUTLINED_FUNCTION_11_37() objectForKeyedSubscript:{@"AVVideoHeightKey", "unsignedIntegerValue"}];
    v25 = [OUTLINED_FUNCTION_11_37() objectForKeyedSubscript:@"AVVideoEncoderSpecificationKey"];
    v26 = [OUTLINED_FUNCTION_11_37() objectForKeyedSubscript:@"AVVideoCompressionPropertiesKey"];
    if (*(self + 392) || (OUTLINED_FUNCTION_33(), v27))
    {
      if (v26)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v26];
      }

      else
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
      }

      v26 = dictionary;
      OUTLINED_FUNCTION_33();
      if (v27)
      {
        [v26 setValuesForKeysWithDictionary:{+[BWVideoFormat compressionPropertiesForColorSpaceProperties:](BWVideoFormat, "compressionPropertiesForColorSpaceProperties:", objc_msgSend(objc_msgSend(*(self + 8), "videoFormat"), "colorSpaceProperties"))}];
      }

      if (*(self + 392))
      {
        [v26 setValuesForKeysWithDictionary:?];
      }
    }

    if (!v23 || !v24 || !v22)
    {
      goto LABEL_24;
    }

    *(self + 152) = [(BWVideoCompressorNode *)self _createEncoderSessionWithWidth:v23 height:v24 inputPixelFormat:*(self + 172) isHDResolution:*(self + 169) videoCodec:v22 encoderSpecification:v25 compressionProperties:v26 compressorNodeRef:self];
    *(self + 277) = 0;
    *(self + 276) = [objc_msgSend(v26 objectForKeyedSubscript:{@"AllowFrameReordering", "BOOLValue"}];
    OUTLINED_FUNCTION_33();
    if (v27)
    {
      v39 = [(BWVideoCompressorNode *)self _copyCompressionSessionProperty:0 requireSupported:0 error:?];
      *(self + 276) = [v39 BOOLValue];
    }

    *(self + 256) = 0;
    OUTLINED_FUNCTION_33();
    if (v27)
    {
      v40 = [(BWVideoCompressorNode *)self _copyCompressionSessionProperty:0 requireSupported:0 error:?];
      [v40 floatValue];
      *(self + 256) = (v41 * 1.15);

      v43 = 0.0;
      if (*(self + 240) != 0.0)
      {
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time, HostTimeClock);
        v43 = CMTimeGetSeconds(&time) + *(self + 240);
      }

      *(self + 248) = v43;
      [(BWVideoCompressorNode *)self _validateBFrameEncodingAbility];
    }

    *(self + 280) = [objc_msgSend(v26 objectForKeyedSubscript:{@"DebugMetadataSEI", "BOOLValue"}];
    OUTLINED_FUNCTION_33();
    if (v27 && dword_1ED8441F0)
    {
      v58[0] = 0;
      v57 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v30 = v58[0];
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v57))
      {
        v31 = v30;
      }

      else
      {
        v31 = v30 & 0xFFFFFFFE;
      }

      if (v31)
      {
        LODWORD(v54) = 136315138;
        *(&v54 + 4) = "[BWVideoCompressorNode _createCompressionSession]";
        LODWORD(v53) = 12;
        v50 = &v54;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(self + 281) = [objc_msgSend(v26 objectForKeyedSubscript:{@"PassSerializedDepthImageBuffers", v50, v53), "BOOLValue"}];
    VTCompressionSessionPrepareToEncodeFrames(*(self + 152));
    *(self + 168) = 1;
    *(self + 282) = 0;
    *(self + 136) = [OUTLINED_FUNCTION_11_37() copy];
    OUTLINED_FUNCTION_33();
    if (v27 && objc_msgSend_isEqualToString_(*(self + 328)))
    {
      v36 = *(self + 352);
    }

    else
    {
      v36 = 0;
    }

    *(self + 209) = v36 & 1;
    if (*(self + 145))
    {
      [(BWVideoCompressorNode *)self _setCompressionSessionProperty:MEMORY[0x1E695E118] value:1 requireSupported:v32, v33, v34, v35, v51];
      v38 = *(self + 279);
      v37 = 1.1;
      if ((*(self + 145) & 1) == 0)
      {
        v37 = 1.0;
      }

      goto LABEL_45;
    }

    if (*(self + 279))
    {
      v37 = 1.0;
      v38 = 1;
LABEL_45:
      if (v38)
      {
        v37 = v37 + 0.2;
      }

      if (v37 > 1.0)
      {
        [(BWVideoCompressorNode *)self _scaleBitrateByFactor:v37];
      }
    }

LABEL_24:
    OUTLINED_FUNCTION_10_39();
    return;
  }

  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v49, v53, v54, *(&v54 + 1), LODWORD(time.value), *&time.timescale, time.epoch, v56);
  if (!FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", 0x5D8, v20, v45, v46, v52))
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_10_39();

  [v47 logErrorNumber:? errorString:?];
}

- (VTSessionRef)_createEncoderSessionWithWidth:(int32_t)width height:(uint64_t)height inputPixelFormat:(uint64_t)format isHDResolution:(uint64_t)codecType videoCodec:(CFDictionaryRef)encoderSpecification encoderSpecification:(void *)specification compressionProperties:(void *)outputCallbackRefCon compressorNodeRef:
{
  if (result)
  {
    v10 = codecType;
    formatCopy = format;
    v13 = result;
    session = 0;
    v14 = VTCompressionSessionCreate(*MEMORY[0x1E695E480], a2, width, codecType, encoderSpecification, 0, 0, vcn_encoderCallback, outputCallbackRefCon, &session);
    if (v14 || (v14 = VTSessionCopySupportedPropertyDictionary(session, (v13 + 160)), v14) || (v14 = [(BWVideoCompressorNode *)v13 _setEncoderCompressionPropertiesWithCompressionSession:specification compressionProperties:height sourcePixelType:formatCopy isHDResolution:v10 videoCodec:?], v14))
    {
      v15 = v14;
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      [*(v13 + 304) logErrorNumber:v15 errorString:@"creating compression session"];
    }

    return session;
  }

  return result;
}

- (uint64_t)_setCompressionSessionProperty:(const void *)property value:(uint64_t)value requireSupported:(uint64_t)supported
{
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (*(result + 152))
  {
    v11 = *(result + 160);
    if (v11)
    {
      if (a2)
      {
        valueCopy = value;
        if ([v11 objectForKeyedSubscript:{a2, value, supported, a6, a7, a8}])
        {
          v15 = *(v10 + 152);

          return VTSessionSetProperty(v15, a2, property);
        }

        else if (valueCopy)
        {
          return 4294954509;
        }

        else
        {
          return 0;
        }
      }

      v16 = v9;
      OUTLINED_FUNCTION_9_38();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, v24, v25, v26, v27, v28);
      v19 = qword_1ED8441E8;
      v20 = 2022;
    }

    else
    {
      v16 = v9;
      OUTLINED_FUNCTION_9_38();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, v24, v25, v26, v27, v28);
      v19 = qword_1ED8441E8;
      v20 = 2021;
    }
  }

  else
  {
    v16 = v9;
    OUTLINED_FUNCTION_9_38();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v22, v23, v24, v25, v26, v27, v28);
    v19 = qword_1ED8441E8;
    v20 = 2020;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", v20, v16, v17, v18, a9);
}

- (char)_scaleBitrateByFactor:(char *)result
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x1E6983558];
    result = [(BWVideoCompressorNode *)result _copyCompressionSessionProperty:0 requireSupported:0 error:?];
    if (result)
    {
      v6 = result;
      [result doubleValue];
      v8 = (v7 * a2);

      v9 = [MEMORY[0x1E696AD98] numberWithInt:v8];
      result = [(BWVideoCompressorNode *)v3 _setCompressionSessionProperty:v4 value:v9 requireSupported:1, v10, v11, v12, v13, v14];
    }

    v5 = *(v3 + 64);
    if (v5 >= 1)
    {
      *(v3 + 64) = (v5 * a2);
    }
  }

  return result;
}

- (uint64_t)_updateThermalPressureLevel
{
  if (result)
  {
    v1 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, state64, v6, v7, vars0, vars8);
    }

    result = *(v1 + 260);
    if (result)
    {
      state64 = 0;
      result = notify_get_state(result, &state64);
      if (*(v1 + 264) != state64)
      {
        *(v1 + 264) = state64;
        return FigMemoryBarrier();
      }
    }
  }

  return result;
}

- (uint64_t)_updatePowerPressureLevel
{
  if (result)
  {
    v1 = result;
    if (!_FigIsCurrentDispatchQueue())
    {
      OUTLINED_FUNCTION_0_3();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, state64, v6, v7, vars0, vars8);
    }

    result = *(v1 + 268);
    if (result)
    {
      state64 = 0;
      result = notify_get_state(result, &state64);
      if (*(v1 + 272) != state64)
      {
        *(v1 + 272) = state64;
        return FigMemoryBarrier();
      }
    }
  }

  return result;
}

uint64_t __65__BWVideoCompressorNode__registerForThermalAndPowerNotifications__block_invoke_3(uint64_t a1)
{
  [(BWVideoCompressorNode *)*(a1 + 32) _updateThermalPressureLevel];
  v2 = *(a1 + 32);

  return [(BWVideoCompressorNode *)v2 _updatePowerPressureLevel];
}

- (uint64_t)_setEncoderCompressionPropertiesWithCompressionSession:(void *)session compressionProperties:(uint64_t)properties sourcePixelType:(int)type isHDResolution:(int)resolution videoCodec:
{
  session = a2;
  selfCopy = self;
  if (!self)
  {
    return 0;
  }

  LODWORD(v78) = type;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = [session count];
  v11 = MEMORY[0x1E6983878];
  v12 = MEMORY[0x1E69838B8];
  if (!v10)
  {
    v31 = 0;
    v22 = 0;
LABEL_15:
    OUTLINED_FUNCTION_9_44();
    if (!v33 & v32 || (OUTLINED_FUNCTION_8_43(), (v38 & 0x8C1) == 0))
    {
      OUTLINED_FUNCTION_6_57();
      if (!v33 & v32 || (OUTLINED_FUNCTION_8_43(), (v39 & 0x51) == 0))
      {
        v33 = resolution == 1634742376 || resolution == 1634742888;
        v34 = v33 || resolution == 1634743416;
        if (!v34 && resolution != 1634743400)
        {
          v36 = OUTLINED_FUNCTION_3_75(v23, v24, v25, v26, v27, v28, v29, v30, v76, v77, v78, v79, session, selfCopy);
          v37 = *MEMORY[0x1E69835B0];
          v23 = [v36 objectForKeyedSubscript:*MEMORY[0x1E69835B0]];
          if (v23)
          {
            v23 = [dictionary setObject:*MEMORY[0x1E6965DB8] forKeyedSubscript:v37];
          }
        }
      }
    }

    goto LABEL_34;
  }

  HIDWORD(v78) = resolution;
  LODWORD(v79) = properties;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  allKeys = [session allKeys];
  v14 = [allKeys countByEnumeratingWithState:&v90 objects:v89 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v91;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v91 != v16)
        {
          objc_enumerationMutation(allKeys);
        }

        v18 = *(*(&v90 + 1) + 8 * i);
        v19 = *(selfCopy + 160);
        v20 = [session objectForKeyedSubscript:v18];
        if ([v19 objectForKeyedSubscript:v18])
        {
          [dictionary setObject:v20 forKeyedSubscript:v18];
        }
      }

      v15 = [allKeys countByEnumeratingWithState:&v90 objects:v89 count:16];
    }

    while (v15);
  }

  v21 = [session objectForKeyedSubscript:*MEMORY[0x1E69835B0]];
  v11 = MEMORY[0x1E6983878];
  v22 = [session objectForKeyedSubscript:*MEMORY[0x1E6983878]] != 0;
  v12 = MEMORY[0x1E69838B8];
  v23 = [session objectForKeyedSubscript:*MEMORY[0x1E69838B8]];
  v31 = v23 != 0;
  resolution = HIDWORD(v78);
  properties = v79;
  if (!v21)
  {
    goto LABEL_15;
  }

LABEL_34:
  if (!v22)
  {
    OUTLINED_FUNCTION_9_44();
    if (!v33 & v32 || (OUTLINED_FUNCTION_8_43(), (v45 & 0x8C1) == 0))
    {
      OUTLINED_FUNCTION_6_57();
      if (!v33 & v32 || (OUTLINED_FUNCTION_8_43(), (v46 & 0x51) == 0))
      {
        v40 = resolution == 1634742376 || resolution == 1634742888;
        v41 = v40 || resolution == 1634743416;
        if (!v41 && resolution != 1634743400)
        {
          v43 = OUTLINED_FUNCTION_3_75(v23, v24, v25, v26, v27, v28, v29, v30, v76, v77, v78, v79, session, selfCopy);
          v44 = *v11;
          v23 = [v43 objectForKeyedSubscript:*v11];
          if (v23)
          {
            v23 = [dictionary setObject:*MEMORY[0x1E6965F50] forKeyedSubscript:v44];
          }
        }
      }
    }
  }

  if (!v31 && resolution != 1634759272 && resolution != 1634759278)
  {
    IsFullRange = FigCapturePixelFormatIsFullRange(properties);
    v49 = IsFullRange;
    v57 = OUTLINED_FUNCTION_3_75(IsFullRange, v50, v51, v52, v53, v54, v55, v56, v76, v77, v78, v79, session, selfCopy);
    v58 = *v12;
    v23 = [v57 objectForKeyedSubscript:*v12];
    if (v23)
    {
      if (v78)
      {
        v59 = v49;
      }

      else
      {
        v59 = 1;
      }

      if (v59)
      {
        v60 = *MEMORY[0x1E6965FC8];
      }

      else
      {
        v60 = *MEMORY[0x1E6965FD0];
      }

      v23 = [dictionary setObject:v60 forKeyedSubscript:v58];
    }
  }

  v61 = OUTLINED_FUNCTION_3_75(v23, v24, v25, v26, v27, v28, v29, v30, v76, v77, v78, v79, session, selfCopy);
  v62 = *MEMORY[0x1E6983648];
  if ([v61 objectForKeyedSubscript:*MEMORY[0x1E6983648]])
  {
    [dictionary setObject:&unk_1F2245820 forKeyedSubscript:v62];
  }

  if (properties)
  {
    v63 = *(v83 + 160);
    v64 = *MEMORY[0x1E69836B8];
    v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:properties];
    if ([v63 objectForKeyedSubscript:v64])
    {
      [dictionary setObject:v65 forKeyedSubscript:v64];
    }
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  allKeys2 = [dictionary allKeys];
  v67 = [allKeys2 countByEnumeratingWithState:&v85 objects:v84 count:16];
  if (!v67)
  {
    return 0;
  }

  v68 = v67;
  v69 = 0;
  v70 = *v86;
  do
  {
    for (j = 0; j != v68; ++j)
    {
      if (*v86 != v70)
      {
        objc_enumerationMutation(allKeys2);
      }

      v72 = *(*(&v85 + 1) + 8 * j);
      v73 = VTSessionSetProperty(sessiona, v72, [dictionary objectForKeyedSubscript:v72]);
      if (v73)
      {
        v74 = v73;
        if (v73 != -12900 || (objc_msgSend_isEqualToString_(v72) & 1) == 0)
        {
          [*(v83 + 304) logErrorNumber:v74 errorString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"Failed to set encoder session property %@ with %@", v72, objc_msgSend(dictionary, "objectForKeyedSubscript:", v72))}];
          v69 = v74;
        }
      }
    }

    v68 = [allKeys2 countByEnumeratingWithState:&v85 objects:v84 count:16];
  }

  while (v68);
  return v69;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", 0x2C3, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE12, "<<<< BWVideoCompressorNode >>>>", 0x2C4, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE0ELL, "<<<< BWVideoCompressorNode >>>>", 0x2FA, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", 0x2D0, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", 0x2CE, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", 0x2C8, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", 0x26E, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.9(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", 0x21A, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

- (uint64_t)renderSampleBuffer:(_DWORD *)a1 forInput:.cold.10(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_6();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v8, v9, v10, v11, v12, vars0, vars8);
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED8441E8, 0xFFFFCE14, "<<<< BWVideoCompressorNode >>>>", 0x219, v1, v3, v4, v7);
  *a1 = result;
  return result;
}

@end