@interface BWGNRNode
- (BOOL)_isBravoDepthDataCapture;
- (BOOL)_isBravoHDRDepthDataCapture;
- (id)_copyAndZoomSampleBuffer:(double)buffer usingNormalizedZoomRectangle:(double)rectangle;
- (id)_initWithSISEnabled:(BOOL)enabled OISEnabled:(BOOL)sEnabled LTMHDREnabled:(BOOL)rEnabled processingLTMHDRFusion:(BOOL)fusion portType:(id)type sensorID:(id)d sensorIDDictionary:(id)dictionary telephotoPortType:(id)self0 telephotoSensorID:(id)self1 telephotoSensorIDDictionary:(id)self2 sbpCreationFunction:(void *)self3 treatSoftErrorsAsHardErrors:(BOOL)self4;
- (id)_sampleBufferProcessorOutputReady:(CMAttachmentBearerRef)target sampleBuffer:;
- (uint64_t)_gnrProcessingTypeWithMetadataDictionary:(uint64_t)result;
- (uint64_t)_isBravoTelephotoHDRDepthDataCapture;
- (uint64_t)_setExpectedFrameCountForPortType:(uint64_t)result;
- (uint64_t)_setPropertyOnSampleBufferProcessorWithKey:(uint64_t)key value:;
- (uint64_t)_setupSampleBufferProcessor;
- (unsigned)sbpOptionsDictionary;
- (void)_clearCaptureRequestState;
- (void)_detectMissingPreBracketedFrameAndEmitBWNodeError;
- (void)_setReferenceFrameBracketedCaptureSequenceNumberOnSampleBufferProcessor:(_DWORD *)processor;
- (void)_tuningDictionaryWithOnlyGNRParameters;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWGNRNode

- (id)_initWithSISEnabled:(BOOL)enabled OISEnabled:(BOOL)sEnabled LTMHDREnabled:(BOOL)rEnabled processingLTMHDRFusion:(BOOL)fusion portType:(id)type sensorID:(id)d sensorIDDictionary:(id)dictionary telephotoPortType:(id)self0 telephotoSensorID:(id)self1 telephotoSensorIDDictionary:(id)self2 sbpCreationFunction:(void *)self3 treatSoftErrorsAsHardErrors:(BOOL)self4
{
  v31.receiver = self;
  v31.super_class = BWGNRNode;
  v20 = [(BWNode *)&v31 init];
  v21 = v20;
  if (v20)
  {
    v20->_sisEnabled = enabled;
    v20->_oisEnabled = sEnabled;
    v20->_hdrEnabled = rEnabled;
    v20->_processingLTMHDRFusion = fusion;
    v20->_previouslyCompletedFusionSettingsID = -1;
    v20->_receivedReferenceFrameBracketedCaptureSequenceNumber = -1;
    v20->_gnrFusionReferenceFrameBracketedCaptureSequenceNumber = -1;
    v20->_processingHDREV0BracketFrame = 0;
    v20->_hdrEV0BracketCaptureIdentifier = -1;
    v20->_hdrDisparityBracketedCaptureSequenceNumber = -1;
    v20->_portType = type;
    v21->_sensorID = d;
    v21->_sensorIDDictionary = dictionary;
    v21->_telephotoPortType = portType;
    v21->_telephotoSensorID = iD;
    v21->_telephotoSensorIDDictionary = dDictionary;
    v21->_createSampleBufferProcessorFunction = function;
    v22 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v21];
    v23 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v23 setSupportedPixelFormats:&unk_1F22483B8];
    [(BWNodeInput *)v22 setFormatRequirements:v23];

    [(BWNodeInput *)v22 setPassthroughMode:0];
    if (v21->_sisEnabled)
    {
      v24 = 4;
    }

    else
    {
      v24 = 0;
    }

    if (v21->_oisEnabled)
    {
      v25 = 4;
    }

    else
    {
      v25 = 0;
    }

    if (v21->_hdrEnabled)
    {
      v26 = 3;
    }

    else
    {
      v26 = 0;
    }

    if (v24 > v25)
    {
      v25 = v24;
    }

    if (v25 <= v26)
    {
      v25 = v26;
    }

    if (v25 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v25;
    }

    [(BWNodeInput *)v22 setRetainedBufferCount:v27];
    [(BWNode *)v21 addInput:v22];

    v28 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v21];
    v29 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v29 setSupportedPixelFormats:&unk_1F22483D0];
    [(BWNodeOutput *)v28 setFormatRequirements:v29];

    [(BWNodeOutput *)v28 setProvidesPixelBufferPool:0];
    [(BWNodeOutput *)v28 setPassthroughMode:0];
    [(BWNode *)v21 addOutput:v28];
  }

  return v21;
}

- (void)dealloc
{
  [(BWGNRNode *)self _clearCaptureRequestState];
  sampleBufferProcessor = self->_sampleBufferProcessor;
  if (sampleBufferProcessor)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v4)
    {
      v4(sampleBufferProcessor, 0, 0);
    }

    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    if (FigBaseObject)
    {
      v6 = FigBaseObject;
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v7)
      {
        v7(v6);
      }
    }

    v8 = self->_sampleBufferProcessor;
    if (v8)
    {
      CFRelease(v8);
      self->_sampleBufferProcessor = 0;
    }
  }

  v9.receiver = self;
  v9.super_class = BWGNRNode;
  [(BWNode *)&v9 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input
{
  v6 = objc_alloc_init(BWVideoFormatRequirements);
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(format, "pixelFormat")}];
  -[BWVideoFormatRequirements setSupportedPixelFormats:](v6, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1]);
  -[BWVideoFormatRequirements setWidth:](v6, "setWidth:", [format width]);
  -[BWVideoFormatRequirements setHeight:](v6, "setHeight:", [format height]);
  [(BWVideoFormatRequirements *)v6 setSupportedCacheModes:+[BWVideoFormatRequirements cacheModesForOptimizedHWAccess]];
  if ([format colorSpaceProperties])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  }

  else
  {
    v7 = 0;
  }

  [(BWVideoFormatRequirements *)v6 setSupportedColorSpaceProperties:v7];
  [(BWNodeOutput *)self->super._output setFormatRequirements:v6];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWGNRNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if (self->_sampleBufferProcessor || ![(BWGNRNode *)self _setupSampleBufferProcessor])
  {
    if (self->_hdrEnabled && self->_portType && self->_telephotoPortType && !self->_stereoFusedGNRHDRPixelConverter)
    {
      self->_stereoFusedGNRHDRPixelConverter = objc_alloc_init(FigCapturePixelConverter);
    }

    self->_inputAttachedMedia = objc_alloc_init(MEMORY[0x1E695DF90]);
  }
}

- (uint64_t)_setupSampleBufferProcessor
{
  if (!self)
  {
    return 0;
  }

  v21 = 0;
  v22 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3052000000;
  v20[3] = __Block_byref_object_copy__11;
  v20[4] = __Block_byref_object_dispose__11;
  v20[5] = self;
  sbpOptionsDictionary = [(BWGNRNode *)self sbpOptionsDictionary];
  if (!sbpOptionsDictionary || (v4 = *(self + 144)) == 0)
  {
    v11 = 0;
    v6 = 0;
    goto LABEL_11;
  }

  v5 = *MEMORY[0x1E695E480];
  v6 = v4(*MEMORY[0x1E695E480], @"GNR", sbpOptionsDictionary, &v22);
  if (v6)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v6, v1, v14, v15, v16, v17, v18, v19);
    goto LABEL_15;
  }

  v7 = v22;
  *(self + 152) = v22;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v8)
  {
    v6 = v8(v7, gnrn_processorOutputReadyCallback, self);
    if (!v6)
    {
      FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v6 = v10(FigBaseObject, *off_1E798D068, v5, &v21);
        v11 = v21;
        if (!v6)
        {
          v15 = MEMORY[0x1E69E9820];
          v16 = 3221225472;
          v17 = __40__BWGNRNode__setupSampleBufferProcessor__block_invoke;
          v18 = &unk_1E7990FD0;
          v19 = v20;
          [v21 setReferenceFrameSelectionHandlerBlock:&v15];
          videoFormat = [*(self + 8) videoFormat];
          [v21 prepareForProcessingPixelBuffersWithAttributes:{objc_msgSend(videoFormat, "pixelBufferAttributes")}];
          v6 = 0;
          v11 = v21;
        }

        goto LABEL_11;
      }

      goto LABEL_10;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_11;
  }

LABEL_10:
  v11 = 0;
  v6 = 4294954514;
LABEL_11:

  _Block_object_dispose(v20, 8);
  return v6;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    *cf = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v105 = 138412290;
    name = [(BWNode *)self name];
    v78 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v78, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 332, @"LastShownDate:BWGNRNode.m:332", @"LastShownBuild:BWGNRNode.m:332", 0);
    goto LABEL_146;
  }

  v6 = v4;
  v8 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v8)
  {
    v68 = FigCaptureGetFrameworkRadarComponent();
    *cf = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v69 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v105 = 138412290;
    name = [(BWNode *)self name];
    v78 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v68, v78, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 335, @"LastShownDate:BWGNRNode.m:335", @"LastShownBuild:BWGNRNode.m:335", 0);
    goto LABEL_146;
  }

  v9 = v8;
  v10 = [v8 objectForKeyedSubscript:*off_1E798B540];
  v11 = *off_1E798B1B8;
  v100 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
  v12 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
  if (!self->_sampleBufferProcessor)
  {
    v70 = FigCaptureGetFrameworkRadarComponent();
    *cf = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v71 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v105 = 138412290;
    name = [(BWNode *)self name];
    v72 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v70, v72, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 343, @"LastShownDate:BWGNRNode.m:343", @"LastShownBuild:BWGNRNode.m:343", 0);
LABEL_132:
    free(v72);
    v50 = 4294954516;
    goto LABEL_133;
  }

  if (self->_currentStillImageSettings)
  {
    goto LABEL_5;
  }

  v98 = v4;
  v43 = CMGetAttachment(buffer, @"StillSettings", 0);
  if (!v43)
  {
    v79 = FigCaptureGetFrameworkRadarComponent();
    *cf = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v80 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v105 = 138412290;
    name = [(BWNode *)self name];
    v72 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v79, v72, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 348, @"LastShownDate:BWGNRNode.m:348", @"LastShownBuild:BWGNRNode.m:348", 0);
    goto LABEL_132;
  }

  v44 = v43;
  if ([v43 settingsID] == self->_previouslyCompletedFusionSettingsID)
  {
    v81 = FigCaptureGetFrameworkRadarComponent();
    *cf = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v82 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v105 = 138412546;
    name = [(BWNode *)self name];
    v107 = 2048;
    v108[0] = [v44 settingsID];
    v72 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v81, v72, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 350, @"LastShownDate:BWGNRNode.m:350", @"LastShownBuild:BWGNRNode.m:350", 0);
    goto LABEL_132;
  }

  self->_currentStillImageSettings = v44;
  [(BWGNRNode *)self _setExpectedFrameCountForPortType:v10];
  v45 = [(BWGNRNode *)self _gnrProcessingTypeWithMetadataDictionary:v9];
  v46 = -[BWGNRNode _setPropertyOnSampleBufferProcessorWithKey:value:](self, *off_1E798D078, [MEMORY[0x1E696AD98] numberWithInt:v45]);
  if (v46)
  {
    goto LABEL_102;
  }

  self->_processingType = v45;
  captureType = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureType];
  if ((captureType & 0xFFFFFFFE) == 4)
  {
    v48 = 1;
    v6 = v4;
  }

  else
  {
    v6 = v4;
    v48 = captureType == 3 && self->_hdrEnabled;
  }

  if (self->_allowedToModifyInputBuffers && v48)
  {
    v51 = MEMORY[0x1E695E4D0];
  }

  else
  {
    v51 = MEMORY[0x1E695E4C0];
  }

  v52 = [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:*v51 value:?];
  if (v52)
  {
    LODWORD(v96) = v52;
    v94 = FigCaptureGetFrameworkRadarComponent();
    *cf = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v92 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v90 = 0;
    os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v105 = 138412546;
    name = [(BWNode *)self name];
    v107 = 1024;
    LODWORD(v108[0]) = v96;
    v53 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v94, v53, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 382, @"LastShownDate:BWGNRNode.m:382", @"LastShownBuild:BWGNRNode.m:382", 0);
    free(v53);
    v6 = v4;
  }

LABEL_5:
  if (!v12)
  {
    processingType = self->_processingType;
    v14 = processingType > 0xA;
    v15 = (1 << processingType) & 0x431;
    v16 = v14 || v15 == 0;
    if (v16 && (v100 < 1 || v100 > self->_expectedFrameCount))
    {
      return;
    }

    v95 = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureStreamSettingsForPortType:v10];
    v17 = self->_processingType;
    if (v17 != 9 && v17 != 3 || ([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureFlags]& 0x400) == 0)
    {
      v18 = 0;
      v97 = 0;
      bufferCopy3 = buffer;
LABEL_39:
      ++self->_receivedFrameCount;
      if (self->_hdrEnabled)
      {
        v23 = [v9 objectForKeyedSubscript:*off_1E798A830];
        if (v23)
        {
          [v23 doubleValue];
          if (v24 == 0.0)
          {
            self->_hdrEV0BracketCaptureIdentifier = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B708), "intValue"}];
            if ([(BWGNRNode *)self _isBravoHDRDepthDataCapture])
            {
              self->_processingHDREV0BracketFrame = 1;
              v54 = *off_1E798D078;
              [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:&unk_1F22430D8 value:?];
              sampleBufferProcessor = self->_sampleBufferProcessor;
              v55 = *(*(CMBaseObjectGetVTable() + 16) + 16);
              if (v55)
              {
                v55(sampleBufferProcessor, buffer);
              }

              [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:0 value:?];
              if (!objc_msgSend_isEqualToString_(self->_portType))
              {
LABEL_114:
                [(BWGNRNode *)self _clearCaptureRequestState];
LABEL_75:
                if ((v97 & 1) == 0)
                {
                  return;
                }

LABEL_76:
                CFRelease(bufferCopy3);
                return;
              }

              -[BWGNRNode _setPropertyOnSampleBufferProcessorWithKey:value:](self, v54, [MEMORY[0x1E696AD98] numberWithInt:self->_processingType]);
              self->_hdrDisparityBracketedCaptureSequenceNumber = [objc_msgSend(v9 objectForKeyedSubscript:{v11), "intValue"}];
            }
          }
        }
      }

      v25 = self->_processingType;
      if (v25 > 0xA || ((1 << v25) & 0x431) == 0)
      {
        [(BWGNRNode *)bufferCopy3 renderSampleBuffer:buffer forInput:self, v100];
      }

      if (v100 < 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v18;
      }

      expectedFrameCount = self->_expectedFrameCount;
      if (v26)
      {
        if (expectedFrameCount)
        {
          v28 = self->_receivedFrameCount >= expectedFrameCount;
          goto LABEL_55;
        }
      }

      else if (expectedFrameCount && self->_receivedFrameCount < expectedFrameCount)
      {
        if (v100 == expectedFrameCount)
        {
          v28 = [(BWGNRNode *)self _isBravoTelephotoHDRDepthDataCapture]^ 1;
        }

        else
        {
          v28 = 0;
        }

LABEL_55:
        self->_receivedAllFrames = v28;
        collectedUnprocessedPreBracketHDR = self->_collectedUnprocessedPreBracketHDR;
        if (collectedUnprocessedPreBracketHDR)
        {
          v30 = self->_sampleBufferProcessor;
          v31 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v31)
          {
            v31(v30, collectedUnprocessedPreBracketHDR);
          }

          v32 = self->_collectedUnprocessedPreBracketHDR;
          if (v32)
          {
            CFRelease(v32);
            self->_collectedUnprocessedPreBracketHDR = 0;
          }
        }

        v33 = self->_sampleBufferProcessor;
        v34 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v34)
        {
          v34(v33, bufferCopy3);
        }

        if ([v95 captureType] == 5 && self->_receivedFrameCount == self->_expectedFrameCount - 1)
        {
          timeMachineFrameCount = [v95 timeMachineFrameCount];
          if ([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] bracketedCaptureSequenceNumberForOISLongExposure]+ timeMachineFrameCount == self->_expectedFrameCount)
          {
            [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:MEMORY[0x1E695E118] value:?];
          }
        }

        if (!self->_receivedAllFrames)
        {
          v36 = self->_processingType;
          if (v36 > 0xA || ((1 << v36) & 0x431) == 0)
          {
LABEL_69:
            if ((v28 & 1) == 0)
            {
              if (!v97)
              {
                return;
              }

              goto LABEL_76;
            }

            goto LABEL_114;
          }
        }

        [(BWGNRNode *)self _detectMissingPreBracketedFrameAndEmitBWNodeError];
        expectReferenceFrameBracketedCaptureSequenceNumber = [(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] expectReferenceFrameBracketedCaptureSequenceNumber];
        receivedReferenceFrameBracketedCaptureSequenceNumber = self->_receivedReferenceFrameBracketedCaptureSequenceNumber;
        if (expectReferenceFrameBracketedCaptureSequenceNumber)
        {
          if (receivedReferenceFrameBracketedCaptureSequenceNumber != -1)
          {
LABEL_124:
            if ((receivedReferenceFrameBracketedCaptureSequenceNumber & 0x80000000) == 0)
            {
              [(BWGNRNode *)self _setReferenceFrameBracketedCaptureSequenceNumberOnSampleBufferProcessor:?];
            }

            [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:0 value:?];
            v64 = self->_processingType;
            if (v64 > 0xA || ((1 << v64) & 0x431) == 0)
            {
              self->_previouslyCompletedFusionSettingsID = [(BWStillImageSettings *)self->_currentStillImageSettings settingsID];
            }

            goto LABEL_69;
          }

          if (self->_hdrDisparityBracketedCaptureSequenceNumber == -1)
          {
            goto LABEL_75;
          }
        }

        else if (receivedReferenceFrameBracketedCaptureSequenceNumber != -1)
        {
          v56 = FigCaptureGetFrameworkRadarComponent();
          *cf = 0;
          type[0] = OS_LOG_TYPE_DEFAULT;
          v57 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          name2 = [(BWNode *)self name];
          v61 = self->_receivedReferenceFrameBracketedCaptureSequenceNumber;
          v62 = BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureType]);
          v105 = 138412802;
          name = name2;
          v107 = 1024;
          LODWORD(v108[0]) = v61;
          WORD2(v108[0]) = 2112;
          *(v108 + 6) = v62;
          v63 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(v56, v63, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 670, @"LastShownDate:BWGNRNode.m:670", @"LastShownBuild:BWGNRNode.m:670", 0);
          free(v63);
          receivedReferenceFrameBracketedCaptureSequenceNumber = self->_receivedReferenceFrameBracketedCaptureSequenceNumber;
          if (receivedReferenceFrameBracketedCaptureSequenceNumber != -1)
          {
            goto LABEL_124;
          }
        }

        receivedReferenceFrameBracketedCaptureSequenceNumber = self->_hdrDisparityBracketedCaptureSequenceNumber;
        goto LABEL_124;
      }

      v28 = 1;
      goto LABEL_55;
    }

    *v101 = *MEMORY[0x1E695F050];
    *&v101[16] = *(MEMORY[0x1E695F050] + 16);
    if (objc_msgSend_isEqualToString_(v10))
    {
      v19 = *off_1E798A5C8;
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        [v9 removeObjectForKey:v19];
      }
    }

    v20 = [v9 objectForKeyedSubscript:*off_1E798A830];
    if (v20 && ([v20 doubleValue], v21 == 0.0))
    {
      CMSetAttachment(buffer, *off_1E798D090, *MEMORY[0x1E695E4D0], 1u);
    }

    else if (!CGRectIsNull(*v101))
    {
      bufferCopy3 = [(BWGNRNode *)&self->super.super.isa _copyAndZoomSampleBuffer:buffer usingNormalizedZoomRectangle:*v101, *&v101[8], *&v101[16], *&v101[24]];
      if (bufferCopy3)
      {
        v97 = 1;
      }

      else
      {
        v58 = FigCaptureGetFrameworkRadarComponent();
        *type = 0;
        v103 = OS_LOG_TYPE_DEFAULT;
        v59 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v105 = 138412546;
        name = [(BWNode *)self name];
        v107 = 1024;
        LODWORD(v108[0]) = v100;
        v65 = _os_log_send_and_compose_impl();
        FigCapturePleaseFileRadar(v58, v65, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 541, @"LastShownDate:BWGNRNode.m:541", @"LastShownBuild:BWGNRNode.m:541", 0);
        free(v65);
        v97 = 0;
        bufferCopy3 = buffer;
      }

      goto LABEL_38;
    }

    v97 = 0;
    bufferCopy3 = buffer;
LABEL_38:
    v18 = 1;
    goto LABEL_39;
  }

  self->_receivedPreBracketFrame = 1;
  if ([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureType]!= 3)
  {
    goto LABEL_79;
  }

  if (([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureFlags]& 0x400) == 0)
  {
    if (self->_hdrEnabled)
    {
      self->_collectedUnprocessedPreBracketHDR = CFRetain(buffer);
      if (![(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] deliverOriginalImage])
      {
        return;
      }
    }

    goto LABEL_79;
  }

  if (self->_portType && self->_telephotoPortType)
  {
    if (![(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] deliverOriginalImage])
    {
      goto LABEL_31;
    }

    *cf = 0;
    CopyIncludingMetadata = BWCMSampleBufferCreateCopyIncludingMetadata(buffer, cf);
    if (!CopyIncludingMetadata)
    {
      [(BWNodeOutput *)self->super._output emitSampleBuffer:*cf];
      if (*cf)
      {
        CFRelease(*cf);
      }

LABEL_31:
      if (!self->_hdrEnabled)
      {
        return;
      }

      goto LABEL_79;
    }

    v83 = CopyIncludingMetadata;
    fig_log_get_emitter();
    LODWORD(v89) = v83;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v89, v6, v90, v92, v94, v96, v98, v99);
    v84 = FigCaptureGetFrameworkRadarComponent();
    *type = 0;
    v103 = OS_LOG_TYPE_DEFAULT;
    v85 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v86 = *type;
    if (os_log_type_enabled(v85, v103))
    {
      v87 = v86;
    }

    else
    {
      v87 = v86 & 0xFFFFFFFE;
    }

    if (v87)
    {
      [(BWNode *)self name];
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    name3 = [(BWNode *)self name];
    v105 = 138412290;
    name = name3;
    v78 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v84, v78, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 445, @"LastShownDate:BWGNRNode.m:445", @"LastShownBuild:BWGNRNode.m:445", 0);
LABEL_146:
    free(v78);
    return;
  }

  if (![(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] deliverOriginalImage]&& !self->_usesHDRPreBracketFrameForErrorRecoveryDownstream)
  {
    return;
  }

LABEL_79:
  v39 = self->_processingType;
  if (v39 != 9 && v39 != 3 || ([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureFlags]& 0x400) != 0)
  {
    LOBYTE(v12) = 0;
    goto LABEL_83;
  }

  v46 = -[BWGNRNode _setPropertyOnSampleBufferProcessorWithKey:value:](self, *off_1E798D078, [MEMORY[0x1E696AD98] numberWithInt:0]);
  LOBYTE(v12) = 1;
  if (v46)
  {
LABEL_102:
    v50 = v46;
    goto LABEL_133;
  }

LABEL_83:
  v40 = self->_sampleBufferProcessor;
  v41 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v41)
  {
    v41(v40, buffer);
  }

  v42 = self->_processingType;
  if (v42 <= 0xA && ((1 << v42) & 0x431) != 0)
  {
    [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:0 value:?];
    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      return;
    }

    [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:0 value:?];
  }

  v49 = -[BWGNRNode _setPropertyOnSampleBufferProcessorWithKey:value:](self, *off_1E798D078, [MEMORY[0x1E696AD98] numberWithInt:self->_processingType]);
  if (v49)
  {
    v50 = v49;
    LOBYTE(v12) = 1;
LABEL_133:
    v73 = self->_expectedFrameCount;
    if (v73 && (v73 == 1 || v100 == v73))
    {
      v74 = 1;
    }

    else
    {
      if ([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureType]!= 7)
      {
LABEL_145:
        [(BWGNRNode *)self _clearCaptureRequestState];
        return;
      }

      v74 = 0;
    }

    if ((v12 & 1) == 0)
    {
      [(BWGNRNode *)self _detectMissingPreBracketedFrameAndEmitBWNodeError];
      v75 = [BWNodeError newError:v50 sourceNode:self stillImageSettings:self->_currentStillImageSettings metadata:v9];
      [(BWNodeOutput *)self->super._output emitNodeError:v75];
    }

    if (v74)
    {
      currentStillImageSettings = self->_currentStillImageSettings;
      if (currentStillImageSettings)
      {
        v77 = self->_processingType;
        if (v77 > 0xA || ((1 << v77) & 0x431) == 0)
        {
          self->_previouslyCompletedFusionSettingsID = [(BWStillImageSettings *)currentStillImageSettings settingsID];
        }
      }
    }

    goto LABEL_145;
  }
}

- (void)handleStillImageReferenceFrameBracketedCaptureSequenceNumber:(int)number forInput:(id)input
{
  v4 = *&number;
  if (self->_receivedAllFrames)
  {
    if (![(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings:*&number] expectReferenceFrameBracketedCaptureSequenceNumber])
    {
      FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      [(BWNode *)self name];
      BWPhotoEncoderStringFromEncodingScheme([(BWStillImageCaptureSettings *)[(BWStillImageSettings *)self->_currentStillImageSettings captureSettings] captureType]);
      v8 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(FrameworkRadarComponent, v8, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWGNRNode.m", 744, @"LastShownDate:BWGNRNode.m:744", @"LastShownBuild:BWGNRNode.m:744", 0);
      free(v8);
    }

    [(BWGNRNode *)self _setReferenceFrameBracketedCaptureSequenceNumberOnSampleBufferProcessor:v4];
    [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:0 value:?];
    self->_previouslyCompletedFusionSettingsID = [(BWStillImageSettings *)self->_currentStillImageSettings settingsID];
    [(BWGNRNode *)self _clearCaptureRequestState];
  }

  else
  {
    self->_receivedReferenceFrameBracketedCaptureSequenceNumber = number;
  }
}

- (void)_clearCaptureRequestState
{
  if (self)
  {

    *(self + 208) = 0;
    *(self + 216) = 0;
    *(self + 220) = 0;
    *(self + 221) = 0;
    *(self + 222) = 0;
    *(self + 224) = 0;
    *(self + 228) = 0;
    *(self + 232) = 0;
    *(self + 236) = -1;
    *(self + 240) = -1;
    *(self + 248) = -1;
    *(self + 252) = -1;
    [*(self + 256) removeAllObjects];
    v2 = *(self + 264);
    if (v2)
    {
      CFRelease(v2);
      *(self + 264) = 0;
    }
  }
}

- (uint64_t)_setExpectedFrameCountForPortType:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = [objc_msgSend(*(result + 208) "captureSettings")];
    captureType = [v3 captureType];
    result = [v3 bracketSettings];
    v5 = result;
    if (result)
    {
      providePreBracketedEV0 = [result providePreBracketedEV0];
      expectedFrameCount = [v3 expectedFrameCount];
      result = [v5 providePreBracketedEV0];
      v8 = expectedFrameCount - result;
    }

    else
    {
      providePreBracketedEV0 = 0;
      v8 = 1;
    }

    if (!*(v2 + 56))
    {
      *(v2 + 56) = v8;
      *(v2 + 221) = providePreBracketedEV0;
      result = [v5 providePreBracketedEV0];
      if (result)
      {
        result = [objc_msgSend(v2[26] "captureSettings")];
      }

      *(v2 + 220) = result;
      if (captureType == 3)
      {
        if (*(v2 + 130))
        {
          result = [(BWGNRNode *)v2 _isBravoHDRDepthDataCapture];
          if (result)
          {
            result = objc_msgSend_isEqualToString_(v2[20]);
            if (result)
            {
              *(v2 + 56) = 1;
            }
          }
        }

        else
        {
          *(v2 + 56) = 1;
          result = [(BWGNRNode *)v2 _isBravoTelephotoHDRDepthDataCapture];
          if (result)
          {
            ++*(v2 + 56);
          }

          if (v2[20] && v2[23] && (*(v2 + 220) & 1) == 0)
          {
            *(v2 + 221) = 0;
          }
        }
      }
    }
  }

  return result;
}

- (uint64_t)_gnrProcessingTypeWithMetadataDictionary:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    v4 = [objc_msgSend(objc_msgSend(*(result + 208) "captureSettings")];
    v5 = [objc_msgSend(*(v3 + 208) "captureSettings")] & 0x400;
    switch(v4)
    {
      case 1:
      case 2:
        v6 = v5 >> 8;
        break;
      case 3:
        if (v5)
        {
          if (*(v3 + 160) && *(v3 + 184))
          {
            if (*(v3 + 130))
            {
              LODWORD(v6) = 9;
            }

            else
            {
              LODWORD(v6) = 5;
            }
          }

          else
          {
            LODWORD(v6) = 4;
          }
        }

        else if (*(v3 + 130))
        {
          LODWORD(v6) = 9;
        }

        else
        {
          LODWORD(v6) = 0;
        }

        break;
      case 4:
        if (v5)
        {
          LODWORD(v6) = 6;
        }

        else
        {
          LODWORD(v6) = 1;
        }

        break;
      case 5:
        if (v5)
        {
          LODWORD(v6) = 7;
        }

        else
        {
          LODWORD(v6) = 2;
        }

        break;
      default:
        LODWORD(v6) = 0;
        break;
    }

    v7 = *off_1E798B4F8;
    if ([a2 objectForKeyedSubscript:*off_1E798B4F8])
    {
      if ([objc_msgSend(a2 objectForKeyedSubscript:{v7), "BOOLValue"}])
      {
        v8 = 0;
      }

      else
      {
        v8 = 10;
      }
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      return v6;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

- (uint64_t)_setPropertyOnSampleBufferProcessorWithKey:(uint64_t)key value:
{
  if (result)
  {
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {

      return v6(FigBaseObject, a2, key);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

- (id)_copyAndZoomSampleBuffer:(double)buffer usingNormalizedZoomRectangle:(double)rectangle
{
  if (result)
  {
    v11 = result;
    target = 0;
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
    v14 = v11[34];
    pixelFormat = [OUTLINED_FUNCTION_8_19() pixelFormat];
    v16 = [v14 updateOutputPixelFormat:pixelFormat dimensions:Dimensions poolCapacity:2 colorSpaceProperties:objc_msgSend(OUTLINED_FUNCTION_8_19(), "colorSpaceProperties")];
    if (v16)
    {
      v43 = v16;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_2_33();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v43);
    }

    else
    {
      v17 = [v11[34] convertSampleBuffer:sbuf cropRect:&target outputSampleBuffer:{buffer * Dimensions.width, rectangle * Dimensions.height, a5 * Dimensions.width, a6 * Dimensions.height}];
      if (v17)
      {
        v44 = v17;
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_33();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v44);
      }

      else
      {
        LODWORD(v18) = [objc_msgSend(v11[26] "requestedSettings")];
        v19 = [objc_msgSend(v11[26] "requestedSettings")];
        if (v18 && v19)
        {
          v18 = v18;
          v20 = v19;
        }

        else
        {
          v18 = [objc_msgSend(v11[2] "videoFormat")];
          v20 = [objc_msgSend(v11[2] "videoFormat")];
        }

        v21 = CMGetAttachment(target, *off_1E798A3C8, 0);
        if (v21)
        {
          v22 = v21;
          width = [OUTLINED_FUNCTION_8_19() width];
          height = [OUTLINED_FUNCTION_8_19() height];
          v25.n128_f64[0] = buffer;
          v26.n128_f64[0] = a5;
          v27.n128_f64[0] = a6;
          v28.n128_f64[0] = v18 / v20;
          FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(width, height, v25, rectangle, v26, v27, v28, v29);
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;
          LODWORD(width) = [OUTLINED_FUNCTION_8_19() width];
          height2 = [OUTLINED_FUNCTION_8_19() height];
          v39.n128_u64[0] = v31;
          v40.n128_u64[0] = v33;
          v41.n128_u64[0] = v35;
          FigCaptureMetadataUtilitiesUpdateMetadataForStillImageCrop(v22, width | (height2 << 32), v18 | (v20 << 32), v39, v40, v41, v37, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
          FigCaptureMetadataUtilitiesPreventFurtherCropping(v22, v42);
        }

        else
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_33();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
        }
      }
    }

    return target;
  }

  return result;
}

- (BOOL)_isBravoHDRDepthDataCapture
{
  if (!self || [objc_msgSend(*(self + 208) "captureSettings")] != 3)
  {
    return 0;
  }

  return [(BWGNRNode *)self _isBravoDepthDataCapture];
}

- (uint64_t)_isBravoTelephotoHDRDepthDataCapture
{
  if (!self || [OUTLINED_FUNCTION_12_14(self) captureType] != 3 || (objc_msgSend(objc_msgSend(*(v1 + *(v2 + 3252)), "captureSettings"), "captureFlags") & 0x800) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 160);

  return objc_msgSend_isEqualToString_(v4);
}

- (void)_detectMissingPreBracketedFrameAndEmitBWNodeError
{
  if (self && *(self + 221) == 1 && (*(self + 222) & 1) == 0)
  {
    v2 = *(self + 288) == 1 && [objc_msgSend(*(self + 208) "captureSettings")] == 3;
    if ((*(self + 220) & 1) != 0 || v2)
    {
      v3 = [BWNodeError newError:4294954516 sourceNode:self stillImageSettings:*(self + 208) metadata:0];
      [*(self + 16) emitNodeError:v3];
    }
  }
}

- (void)_setReferenceFrameBracketedCaptureSequenceNumberOnSampleBufferProcessor:(_DWORD *)processor
{
  if (processor)
  {
    if ([(BWGNRNode *)processor _isBravoDepthDataCapture])
    {
      v4 = processor[54];
      v6 = v4 != 3 && v4 != 9;
    }

    else
    {
      v6 = 0;
    }

    if (-[BWGNRNode _setPropertyOnSampleBufferProcessorWithKey:value:](processor, *off_1E798D060, [MEMORY[0x1E696AD98] numberWithBool:v6]))
    {
      FigCaptureGetFrameworkRadarComponent();
      v45 = 0;
      v44 = OS_LOG_TYPE_DEFAULT;
      OUTLINED_FUNCTION_4_29();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      v8 = !v6;
      if (v6)
      {
        v9 = "YES";
      }

      else
      {
        v9 = "NO";
      }

      if (v8)
      {
        v10 = "";
      }

      else
      {
        v10 = "Client will get an image with less than optimal image quality.";
      }

      OUTLINED_FUNCTION_7_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      [processor name];
      OUTLINED_FUNCTION_7_20();
      v40 = 2080;
      v41 = v9;
      v42 = 2080;
      v43 = v10;
      v15 = OUTLINED_FUNCTION_6_0(v11, v12, v13, v14, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      FigCapturePleaseFileRadar(v16, v17, v18, v19, v20, 1084, v21, v22, v39);
      free(v15);
    }

    if (-[BWGNRNode _setPropertyOnSampleBufferProcessorWithKey:value:](processor, *off_1E798D080, [MEMORY[0x1E696AD98] numberWithInt:a2]))
    {
      FigCaptureGetFrameworkRadarComponent();
      v45 = 0;
      v44 = OS_LOG_TYPE_DEFAULT;
      OUTLINED_FUNCTION_4_29();
      v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v24 = v45;
      if (os_log_type_enabled(v23, v44))
      {
        v25 = v24;
      }

      else
      {
        v25 = v24 & 0xFFFFFFFE;
      }

      if (v25)
      {
        [processor name];
        OUTLINED_FUNCTION_6_22();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_7_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      [processor name];
      OUTLINED_FUNCTION_7_20();
      v40 = v26;
      LODWORD(v41) = a2;
      v31 = OUTLINED_FUNCTION_6_0(v27, v28, v29, v30, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_10();
      FigCapturePleaseFileRadar(v32, v33, v34, v35, v36, 1092, v37, v38, v39);
      free(v31);
    }
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if (self->_sampleBufferProcessor)
  {
    v6 = [error errorCode] == -16800 || objc_msgSend(error, "errorCode") == -16802;
    if ([objc_msgSend(error "stillImageSettings")] == self->_previouslyCompletedFusionSettingsID && !v6)
    {
      goto LABEL_13;
    }

    processingType = self->_processingType;
    if (processingType < 0xB && ((0x431u >> processingType) & 1) != 0)
    {
      v9 = 1;
      goto LABEL_15;
    }

    if (self->_currentStillImageSettings)
    {
      [(BWGNRNode *)self _setPropertyOnSampleBufferProcessorWithKey:0 value:?];
      v9 = 0;
      self->_previouslyCompletedFusionSettingsID = [(BWStillImageSettings *)self->_currentStillImageSettings settingsID];
    }

    else
    {
LABEL_13:
      v9 = 0;
    }
  }

  else
  {
    FigCaptureGetFrameworkRadarComponent();
    v27 = 0;
    v26 = 0;
    OUTLINED_FUNCTION_4_29();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v9 = 1;
    OUTLINED_FUNCTION_4_29();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    name = [(BWNode *)self name];
    v24 = 138412290;
    v25 = name;
    v16 = OUTLINED_FUNCTION_6_0(name, v13, v14, v15, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_10();
    FigCapturePleaseFileRadar(v17, v18, v19, v20, v21, 767, v22, v23, &v24);
    free(v16);
  }

LABEL_15:
  isBravoTelephotoHDRDepthData = [(BWGNRNode *)self _isBravoTelephotoHDRDepthDataCapture];
  [(BWGNRNode *)self _clearCaptureRequestState];
  if (v9)
  {
    [(BWNodeOutput *)self->super._output emitNodeError:error];
    if (isBravoTelephotoHDRDepthData)
    {
      [(BWNodeOutput *)self->super._output emitNodeError:error];
    }
  }
}

- (unsigned)sbpOptionsDictionary
{
  if (result)
  {
    v1 = result;
    result = [(BWGNRNode *)result _tuningDictionaryWithOnlyGNRParameters];
    if (result)
    {
      v3[2] = [MEMORY[0x1E696AD98] numberWithBool:{v1[131], *off_1E798A9D0, *off_1E798D058, *off_1E798D050, result, &unk_1F22430F0}];
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:3];
    }
  }

  return result;
}

- (void)_tuningDictionaryWithOnlyGNRParameters
{
  if (result)
  {
    v1 = result;
    if (!result[20] || !result[21])
    {
      return 0;
    }

    result = result[22];
    if (result)
    {
      result = [result objectForKeyedSubscript:@"GNRParameters"];
      if (result)
      {
        v2 = v1[25];
        if (!v2)
        {
          v22 = v1[20];
          v23 = v1[21];
          v24[0] = @"DefaultSensorIDs";
          [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
          OUTLINED_FUNCTION_3_27();
          v24[1] = v16;
          v25[0] = v15;
          v20 = v17;
          v19 = [v1[22] objectForKeyedSubscript:{@"GNRParameters", @"GNRParameters"}];
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
          v25[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
          v11 = MEMORY[0x1E695DF20];
          v12 = v25;
          v13 = v24;
          v14 = 2;
          return [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
        }

        if (v1[23] && v1[24])
        {
          result = [v2 objectForKeyedSubscript:@"GNRParameters"];
          if (!result)
          {
            return result;
          }

          OUTLINED_FUNCTION_3_27();
          v3 = v1[23];
          v34[0] = v4;
          v34[1] = v3;
          v5 = v1[24];
          v35[0] = v6;
          v35[1] = v5;
          v36[0] = v7;
          v37[0] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
          OUTLINED_FUNCTION_3_27();
          v36[1] = v8;
          v32 = v9;
          v30 = @"GNRParameters";
          v31 = [v1[22] objectForKeyedSubscript:@"GNRParameters"];
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
          v37[1] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          v10 = v1[24];
          v36[2] = v1[23];
          v28 = v10;
          v26 = @"GNRParameters";
          v27 = [v1[25] objectForKeyedSubscript:@"GNRParameters"];
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          v37[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
          v11 = MEMORY[0x1E695DF20];
          v12 = v37;
          v13 = v36;
          v14 = 3;
          return [v11 dictionaryWithObjects:v12 forKeys:v13 count:v14];
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t __40__BWGNRNode__setupSampleBufferProcessor__block_invoke(uint64_t result, int a2)
{
  v2 = *(*(*(result + 32) + 8) + 40);
  if (v2)
  {
    *(v2 + 240) = a2;
  }

  return result;
}

- (BOOL)_isBravoDepthDataCapture
{
  if (result)
  {
    return ([OUTLINED_FUNCTION_12_14(result) captureFlags] & 0x800) != 0 && objc_msgSend(objc_msgSend(*(v1 + *(v2 + 3252)), "captureSettings"), "captureStreamSettingsForPortType:", *off_1E798A0D8) != 0;
  }

  return result;
}

- (id)_sampleBufferProcessorOutputReady:(CMAttachmentBearerRef)target sampleBuffer:
{
  if (result)
  {
    v6 = result;
    v7 = CMGetAttachment(target, *off_1E798A3C8, 0);
    v8 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
    if (a2)
    {
      v9 = target == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = !v9;
    if (v9)
    {
      if (a2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_9_12();
      v12 = v11 == 9 || v11 == 3;
      if (v12 && (v8 & 1) == 0 && ([objc_msgSend(v6[26] "captureSettings")] & 1) != 0)
      {
LABEL_16:
        fig_log_get_emitter();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", a2, v3, v41, v42, v43, v44, v45, v46);
        FigCaptureGetFrameworkRadarComponent();
        v54 = 0;
        v53 = 0;
        OUTLINED_FUNCTION_4_29();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_7_0();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        name = [v6 name];
        if ((a2 + 17402) > 2)
        {
          v31 = @"unknown error";
        }

        else
        {
          v31 = off_1E7991010[(a2 + 17402)];
        }

        v47 = 138412802;
        v48 = name;
        v49 = 1024;
        v50 = a2;
        v51 = 2112;
        v52 = v31;
        v32 = OUTLINED_FUNCTION_6_0(name, v28, v29, v30, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
        OUTLINED_FUNCTION_11();
        OUTLINED_FUNCTION_10();
        FigCapturePleaseFileRadar(v33, v34, v35, v36, v37, 1304, v38, v39, &v47);
        free(v32);
        v40 = [BWNodeError newError:a2 sourceNode:v6 stillImageSettings:v6[26] metadata:v7];
        [v6[2] emitNodeError:v40];
        if ([(BWGNRNode *)v6 _isBravoTelephotoHDRDepthDataCapture])
        {
          [v6[2] emitNodeError:v40];
        }

        return [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportGNRSampleBufferProcessorProcessingStatus:"reportGNRSampleBufferProcessorProcessingStatus:", a2];
      }
    }

    OUTLINED_FUNCTION_9_12();
    if (v14 != 9 && v14 != 3)
    {
      v18 = 0;
LABEL_38:
      v20 = v14 > 0xA;
      v21 = (1 << v14) & 0x431;
      v22 = v20 || v21 == 0;
      if (v22 && (v18 | [objc_msgSend(v6[26] "captureSettings")] ^ 1) == 1)
      {
        CMSetAttachment(target, @"HasUnreliableBracketingMetadata", MEMORY[0x1E695E118], 1u);
      }

      CMRemoveAttachment(target, *off_1E798D090);
      OUTLINED_FUNCTION_9_12();
      v20 = v23 > 0xA;
      v24 = (1 << v23) & 0x431;
      v25 = v20 || v24 == 0;
      if (v25 && (v8 & 1) == 0 && (v6[30] & 0x80000000) == 0)
      {
        v26 = [v6[32] objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:")}];
        if (v26)
        {
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __60__BWGNRNode__sampleBufferProcessorOutputReady_sampleBuffer___block_invoke;
          v55[3] = &__block_descriptor_40_e25_v32__0__NSString_8_16_B24l;
          v55[4] = target;
          [v26 enumerateKeysAndObjectsUsingBlock:v55];
        }
      }

      [v6[2] emitSampleBuffer:target];
      return [+[BWAggdDataReporter sharedInstance](BWAggdDataReporter reportGNRSampleBufferProcessorProcessingStatus:"reportGNRSampleBufferProcessorProcessingStatus:", a2];
    }

    v16 = [CMGetAttachment(target @"StillImageProcessingFlags"];
    v17 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    if (v10)
    {
      OUTLINED_FUNCTION_5_28([MEMORY[0x1E696AD98] numberWithUnsignedInt:v16 | 0x400u]);
      v17 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
    }

    else
    {
      if (v8)
      {
        if ([objc_msgSend(v6[26] "captureSettings")])
        {
          OUTLINED_FUNCTION_5_28([MEMORY[0x1E696AD98] numberWithUnsignedInt:v16 | 1u]);
          [v7 setObject:&unk_1F2243108 forKeyedSubscript:*off_1E798B370];
        }

        v18 = 0;
        v17 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        goto LABEL_37;
      }

      if ((*(v6 + 244) & 1) == 0)
      {
        OUTLINED_FUNCTION_5_28([MEMORY[0x1E696AD98] numberWithUnsignedInt:v16 | 2u]);
        if ([objc_msgSend(v6[26] "captureSettings")])
        {
          v19 = 3;
        }

        else
        {
          v19 = 2;
        }

        [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithShort:", v19), *off_1E798B370}];
        if (*(v6 + 62) < 1)
        {
          [(BWGNRNode *)v6 _isBravoTelephotoHDRDepthDataCapture];
        }

        else
        {
          [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:"), *off_1E798B708}];
        }

        v18 = 1;
        v17 = &OBJC_IVAR___BWInferenceEngineControllerConfiguration__fastMattingEnabled;
        goto LABEL_37;
      }
    }

    v18 = 0;
LABEL_37:
    *(v6 + v17[800]) = 0;
    OUTLINED_FUNCTION_9_12();
    goto LABEL_38;
  }

  return result;
}

- (void)renderSampleBuffer:(uint64_t)a3 forInput:(uint64_t)a4 .cold.1(const void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v7 = BWSampleBufferCopyDictionaryOfAttachedMedia(a1);
  if (v7)
  {
    v8 = v7;
    [*(a3 + 256) setObject:v7 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a4)}];
  }

  BWSampleBufferRemoveAttachedMedia(a2, @"Depth");
}

@end