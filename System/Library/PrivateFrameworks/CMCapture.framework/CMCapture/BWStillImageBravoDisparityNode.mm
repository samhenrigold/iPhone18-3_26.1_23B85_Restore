@interface BWStillImageBravoDisparityNode
- (BWStillImageBravoDisparityNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type disparityMapWidth:(unint64_t)width disparityMapHeight:(unint64_t)height outputDisparityBufferCount:(int)count;
- (id)_computeDisparityForTeleBuffer:(void *)buffer wideBuffer:(void *)wideBuffer attachToOutputBuffer:;
- (id)_configureCurrentCaptureRequestStateWithStillImageSettings:(id *)result;
- (id)_resolveProcessingMode;
- (id)processorOptionsDictionary;
- (uint64_t)_loadAndConfigureDisparityGenerator;
- (void)_clearCaptureRequestState;
- (void)_handleError:(CMAttachmentBearerRef)target duringProcessingOfSampleBuffer:(uint64_t)buffer fromInput:;
- (void)_processBuffersForDisparityIfNecessary;
- (void)_sensorConfigurationWithPortraitTuningParameters;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageBravoDisparityNode

- (BWStillImageBravoDisparityNode)initWithNodeConfiguration:(id)configuration sensorConfigurationsByPortType:(id)type disparityMapWidth:(unint64_t)width disparityMapHeight:(unint64_t)height outputDisparityBufferCount:(int)count
{
  v25.receiver = self;
  v25.super_class = BWStillImageBravoDisparityNode;
  v12 = [(BWNode *)&v25 init];
  if (v12)
  {
    v12->_sensorConfigurationsByPortType = type;
    v12->_nodeConfiguration = configuration;
    v12->_wideInput = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v12 index:0];
    v13 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v13 setSupportedPixelFormats:&unk_1F2249D08];
    [(BWNodeInput *)v12->_wideInput setFormatRequirements:v13];

    [(BWNodeInput *)v12->_wideInput setPassthroughMode:0];
    [(BWNodeInput *)v12->_wideInput setRetainedBufferCount:1];
    [(BWNodeInput *)v12->_wideInput setName:@"Wide"];
    [(BWNode *)v12 addInput:v12->_wideInput];

    v12->_telephotoInput = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v12 index:1];
    v14 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v14 setSupportedPixelFormats:&unk_1F2249D20];
    [(BWNodeInput *)v12->_telephotoInput setFormatRequirements:v14];

    [(BWNodeInput *)v12->_telephotoInput setPassthroughMode:1];
    [(BWNodeInput *)v12->_telephotoInput setRetainedBufferCount:1];
    [(BWNodeInput *)v12->_telephotoInput setName:@"Telephoto"];
    [(BWNode *)v12 addInput:v12->_telephotoInput];

    v15 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v12];
    primaryMediaConfiguration = [(BWNodeOutput *)v15 primaryMediaConfiguration];
    v17 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v17 setSupportedPixelFormats:&unk_1F2249D38];
    [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:v17];

    [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setProvidesPixelBufferPool:0];
    [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:1];
    v24[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BWNodeInput index](v12->_wideInput, "index")}];
    v24[1] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BWNodeInput index](v12->_telephotoInput, "index")}];
    -[BWNodeOutputMediaConfiguration setIndexesOfInputsWhichDrivesThisOutput:](primaryMediaConfiguration, "setIndexesOfInputsWhichDrivesThisOutput:", [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2]);
    v18 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    v19 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v19 setSupportedPixelFormats:&unk_1F2249D50];
    [(BWVideoFormatRequirements *)v19 setWidth:width];
    [(BWVideoFormatRequirements *)v19 setHeight:height];
    [(BWNodeOutputMediaConfiguration *)v18 setFormatRequirements:v19];
    [(BWNodeOutputMediaConfiguration *)v18 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v18 setProvidesPixelBufferPool:1];
    if (count)
    {
      [(BWNodeOutputMediaConfiguration *)v18 setOwningNodeRetainedBufferCount:(count - 1)];
    }

    [(BWNodeOutput *)v15 setMediaConfiguration:v18 forAttachedMediaKey:@"Depth", 256];
    depthDataType = [*(&v12->super.super.isa + v23) depthDataType];
    v12->_disparityInputIsRaw = depthDataType == 2;
    if (depthDataType == 2)
    {
      v21 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v21 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v21 setPassthroughMode:0];
      [(BWNodeInput *)v12->super._input setMediaConfiguration:v21 forAttachedMediaKey:0x1F21AAB10];
    }

    [(BWNode *)v12 addOutput:v15];

    v12->_disparityMapWidth = width;
    v12->_disparityMapHeight = height;
  }

  return v12;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v14.receiver = self;
  v14.super_class = BWStillImageBravoDisparityNode;
  [(BWNode *)&v14 prepareForCurrentConfigurationToBecomeLive];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  inputs = [(BWNode *)self inputs];
  v4 = [(NSArray *)inputs countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(inputs);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (v8 != self->super._input)
        {
          [(BWFormat *)[(BWNodeInput *)v8 format] isEqual:[(BWNodeInput *)self->super._input format]];
        }
      }

      v5 = [(NSArray *)inputs countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v5);
  }

  if ([(BWStillImageBravoDisparityNode *)self _loadAndConfigureDisparityGenerator])
  {
    [BWStillImageBravoDisparityNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if ([(BWNode *)self allInputsHaveReachedState:1, format, input])
  {
    output = self->super._output;

    [(BWNodeOutput *)output makeConfiguredFormatLive];
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    output = self->super._output;

    [(BWNodeOutput *)output markEndOfLiveOutput];
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if (!self->_currentStillImageSettings || (v7 = [objc_msgSend(error "stillImageSettings")], v7 != -[BWStillImageSettings settingsID](self->_currentStillImageSettings, "settingsID")))
  {
    -[BWStillImageBravoDisparityNode _configureCurrentCaptureRequestStateWithStillImageSettings:](&self->super.super.isa, [error stillImageSettings]);
  }

  if (self->_currentStillImageSettings)
  {
    [(BWStillImageBravoDisparityNode *)self handleNodeError:input forInput:error];
  }

  else
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitNodeError:error];
  }
}

- (void)dealloc
{
  if (self)
  {
    [-[FigDisparityGenerator metalContext](self->_disparityGenerator "metalContext")];
  }

  [(BWStillImageBravoDisparityNode *)self _clearCaptureRequestState];

  disparityFormatDescription = self->_disparityFormatDescription;
  if (disparityFormatDescription)
  {
    CFRelease(disparityFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWStillImageBravoDisparityNode;
  [(BWNode *)&v4 dealloc];
}

- (void)_clearCaptureRequestState
{
  if (self)
  {

    *(self + 184) = 0;
    *(self + 200) = 0;
    *(self + 192) = 0;
    *(self + 196) = 0;
    *(self + 225) = 0;
    v2 = *(self + 208);
    if (v2)
    {
      CFRelease(v2);
      *(self + 208) = 0;
    }

    v3 = *(self + 216);
    if (v3)
    {
      CFRelease(v3);
      *(self + 216) = 0;
    }

    v4 = *(self + 232);
    if (v4)
    {
      CFRelease(v4);
      *(self + 232) = 0;
    }

    v5 = *(self + 240);
    if (v5)
    {
      CFRelease(v5);
      *(self + 240) = 0;
    }
  }
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (self->_telephotoInput == input && (objc_msgSend_isEqualToString_(key, a2, 0x1F21AAB10) & 1) == 0)
  {
    v8 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:key];
    if (!v8)
    {
      v8 = objc_alloc_init(BWNodeOutputMediaProperties);
      [(BWNodeOutput *)self->super._output _setMediaProperties:v8 forAttachedMediaKey:key];
    }

    [(BWNodeOutputMediaProperties *)v8 setResolvedFormat:format];
  }
}

- (uint64_t)_loadAndConfigureDisparityGenerator
{
  if (result)
  {
    v2 = result;
    v39 = 0;
    processorOptionsDictionary = [(BWStillImageBravoDisparityNode *)result processorOptionsDictionary];
    if (processorOptionsDictionary)
    {
      v4 = processorOptionsDictionary;
      v5 = +[FigCaptureCameraParameters sharedInstance];
      disparityVersion = [(FigCaptureCameraParameters *)v5 disparityVersion];
      if (!disparityVersion)
      {
        _sensorConfigurationWithPortraitTuningParameters = [(BWStillImageBravoDisparityNode *)v2 _sensorConfigurationWithPortraitTuningParameters];
        if (!_sensorConfigurationWithPortraitTuningParameters)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_1_6();
          v25 = 0;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v25, v26, v28, v30, v31, v32, v33, v34);
          return 0;
        }

        disparityVersion = -[FigCaptureCameraParameters disparityVersionForPortType:sensorIDString:](v5, "disparityVersionForPortType:sensorIDString:", [_sensorConfigurationWithPortraitTuningParameters portType], objc_msgSend(_sensorConfigurationWithPortraitTuningParameters, "sensorIDString"));
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors", @"Disparity", disparityVersion];
      v8 = [MEMORY[0x1E696AAE8] bundleWithPath:v7];
      if (v8)
      {
        v9 = v8;
        if (![v8 loadAndReturnError:&v39])
        {
          return 4294954510;
        }

        v10 = [objc_alloc(objc_msgSend(v9 "principalClass"))];
        *(v2 + 136) = v10;
        if (v10)
        {
          [v10 setOptions:v4];
          v11 = [objc_msgSend(*(v2 + 8) "videoFormat")];
          v12 = [objc_msgSend(*(v2 + 8) "videoFormat")];
          v13 = *(v2 + 160);
          v14 = *(v2 + 168);
          v15 = *(v2 + 136);
          v31 = v11;
          v32 = v12;
          v33 = 0;
          v34 = v13;
          v35 = v14;
          v36 = 1067030938;
          v37 = 0x1800000020;
          v38 = 0;
          [v15 setDisparityConfig:&v31];
          v16 = [*(v2 + 136) prepareToProcess:0];
          result = 0;
          if (!v16)
          {
            return result;
          }

          emitter = fig_log_get_emitter();
          v22 = v1;
          v21 = 476;
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0ELL, "<<<< BWStillImageBravoDisparityNode >>>>", v21, v22, v19, v20, v24);
        }

        OUTLINED_FUNCTION_17_26();
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v29, v30, v31, v32, v33, v34);
        OUTLINED_FUNCTION_17_26();
        emitter = fig_log_get_emitter();
        v21 = 457;
      }

      else
      {
        OUTLINED_FUNCTION_17_26();
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v24, v27, v29, v30, v31, v32, v33, v34);
        OUTLINED_FUNCTION_17_26();
        emitter = fig_log_get_emitter();
        v21 = 452;
      }
    }

    else
    {
      OUTLINED_FUNCTION_17_26();
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v23, v26, v28, v30, v31, v32, v33, v34);
      OUTLINED_FUNCTION_17_26();
      emitter = fig_log_get_emitter();
      v21 = 435;
    }

    v22 = v1;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0ELL, "<<<< BWStillImageBravoDisparityNode >>>>", v21, v22, v19, v20, v24);
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    FigCaptureGetFrameworkRadarComponent();
    v14 = OUTLINED_FUNCTION_9_66();
    if (OUTLINED_FUNCTION_8_4(v14))
    {
      v15 = v4;
    }

    else
    {
      v15 = v4 & 0xFFFFFFFE;
    }

    if (v15)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_45();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_5_53();
    v22 = OUTLINED_FUNCTION_6_0(v18, v19, v20, v21, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    v23 = OUTLINED_FUNCTION_16_43();
    v30 = 316;
    goto LABEL_32;
  }

  v8 = CMGetAttachment(buffer, @"StillSettings", 0);
  if (!v8)
  {
    FigCaptureGetFrameworkRadarComponent();
    v16 = OUTLINED_FUNCTION_9_66();
    if (OUTLINED_FUNCTION_8_4(v16))
    {
      v17 = v4;
    }

    else
    {
      v17 = v4 & 0xFFFFFFFE;
    }

    if (v17)
    {
      OUTLINED_FUNCTION_5_6();
      OUTLINED_FUNCTION_6_45();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_5_53();
    v22 = OUTLINED_FUNCTION_6_0(v31, v32, v33, v34, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    v23 = OUTLINED_FUNCTION_16_43();
    v30 = 319;
LABEL_32:
    FigCapturePleaseFileRadar(v23, v24, v25, v26, v27, v30, v28, v29, 0);
    free(v22);
    goto LABEL_33;
  }

  v9 = v8;
  if (!self->_currentStillImageSettings || (v10 = [v8 settingsID], v10 != -[BWStillImageSettings settingsID](self->_currentStillImageSettings, "settingsID")))
  {
    [(BWStillImageBravoDisparityNode *)&self->super.super.isa _configureCurrentCaptureRequestStateWithStillImageSettings:v9];
  }

  if (!self->_processingMode)
  {
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  if (v11 && !BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAB10))
  {
LABEL_33:
    [(BWStillImageBravoDisparityNode *)self _handleError:buffer duringProcessingOfSampleBuffer:input fromInput:?];
    goto LABEL_15;
  }

  if (self->_wideInput == input)
  {
    v12 = CFRetain(buffer);
    v13 = 216;
  }

  else
  {
    if (self->_telephotoInput != input)
    {
      goto LABEL_15;
    }

    v12 = CFRetain(buffer);
    v13 = 208;
  }

  *(&self->super.super.isa + v13) = v12;
LABEL_15:
  if (self->_processingMode)
  {
    [(BWStillImageBravoDisparityNode *)self _processBuffersForDisparityIfNecessary];
  }

  else
  {
    [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
    [(BWStillImageBravoDisparityNode *)self _clearCaptureRequestState];
  }
}

- (id)_configureCurrentCaptureRequestStateWithStillImageSettings:(id *)result
{
  if (result)
  {
    v3 = result;
    [(BWStillImageBravoDisparityNode *)result _clearCaptureRequestState];
    v3[23] = a2;
    *(v3 + 224) = 1;
    *(v3 + 225) = 0;
    if ([objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_14_43() "requestedSettings")])
    {
      v4 = [objc_msgSend(OUTLINED_FUNCTION_14_43() "captureSettings")];
      OUTLINED_FUNCTION_43();
      v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        v9 = v6;
        v10 = MEMORY[0];
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (MEMORY[0] != v10)
            {
              objc_enumerationMutation(v4);
            }

            if (objc_msgSend_isEqualToString_([*(8 * i) portType]))
            {
              v7 = 2;
              v8 = 3;
              goto LABEL_14;
            }
          }

          OUTLINED_FUNCTION_43();
          v9 = [v4 countByEnumeratingWithState:? objects:? count:?];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v7 = 7;
      v8 = 2;
LABEL_14:
      *(v3 + 224) = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_14_43() "requestedSettings")];
      *(v3 + 225) = [objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_14_43() "requestedSettings")];
    }

    return [(BWStillImageBravoDisparityNode *)v3 _resolveProcessingMode];
  }

  return result;
}

- (void)_handleError:(CMAttachmentBearerRef)target duringProcessingOfSampleBuffer:(uint64_t)buffer fromInput:
{
  if (result)
  {
    v5 = result;
    result = [BWNodeError newError:a2 sourceNode:v5 stillImageSettings:v5[23] metadata:CMGetAttachment(target, *off_1E798A3C8, 0)];
    if (v5[18] == buffer)
    {
      v6 = &OBJC_IVAR___BWStillImageBravoDisparityNode__errorForWide;
    }

    else
    {
      v6 = &OBJC_IVAR___BWStillImageBravoDisparityNode__errorForTele;
    }

    *(v5 + *v6) = result;
  }

  return result;
}

- (void)_processBuffersForDisparityIfNecessary
{
  if (!self)
  {
    return;
  }

  if (*(self + 200))
  {
    if (*(self + 136))
    {
      v3 = *(self + 240);
      if (!v3)
      {
        v6 = 0;
        goto LABEL_9;
      }

      if (!*(self + 216))
      {
        v4 = *(self + 232);
        v5 = v3;
        goto LABEL_8;
      }

      v23 = v3;
    }

    else
    {
      FigCaptureGetFrameworkRadarComponent();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7_0();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      OUTLINED_FUNCTION_5_53();
      v17 = OUTLINED_FUNCTION_6_0(v13, v14, v15, v16, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
      v18 = OUTLINED_FUNCTION_17_26();
      FigCapturePleaseFileRadar(v18, v19, 0, 0, v20, 562, v21, v22, 0);
      free(v17);
      v23 = OUTLINED_FUNCTION_18_37(BWNodeError, 184);
    }

    v6 = v23;
    goto LABEL_29;
  }

  v4 = *(self + 240);
  v5 = v4;
LABEL_8:
  v6 = v5;
  if (v4)
  {
LABEL_29:
    [OUTLINED_FUNCTION_17_38() emitNodeError:v6];
    v11 = 0;
    LODWORD(v12) = 1;
LABEL_30:
    OUTLINED_FUNCTION_33();
    if (v8)
    {
      v24 = *(self + 216);
      if (v24)
      {
        BWSampleBufferRemoveAttachedMedia(v24, 0x1F21AAB10);
        [OUTLINED_FUNCTION_17_38() emitSampleBuffer:*(self + 216)];
      }

      else
      {
        v25 = *(self + 232);
        if (!v25)
        {
          v25 = OUTLINED_FUNCTION_18_37(BWNodeError, 184);
        }

        [OUTLINED_FUNCTION_17_38() emitNodeError:v25];
      }
    }

    goto LABEL_37;
  }

LABEL_9:
  v7 = *(self + 200);
  if ((v7 - 2) >= 2)
  {
    v8 = v7 == 1 || v7 == 4;
    if (!v8)
    {
      v11 = 0;
      LODWORD(v12) = 0;
      goto LABEL_37;
    }
  }

  v12 = *(self + 208);
  if (v12)
  {
    v9 = *(self + 216);
    if (v9)
    {
      [(BWStillImageBravoDisparityNode *)self _computeDisparityForTeleBuffer:v12 wideBuffer:v9 attachToOutputBuffer:v12];
      v11 = 1;
      goto LABEL_18;
    }

    v11 = 0;
    if (*(self + 232))
    {
LABEL_18:
      OUTLINED_FUNCTION_33();
      if (v8)
      {
        if (!*(self + 208))
        {
          fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v1, v30, v31, v32, v33, v34, v35);
        }

        BWSampleBufferRemoveAttachedMedia(v12, 0x1F21AAB10);
        [OUTLINED_FUNCTION_17_38() emitSampleBuffer:v12];
      }

      LODWORD(v12) = 0;
      goto LABEL_30;
    }

    LODWORD(v12) = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_37:
  if ((v11 & 1) != 0 || v12)
  {
    v26 = *(self + 208);
    if (v26)
    {
      CFRelease(v26);
      *(self + 208) = 0;
    }

    v27 = *(self + 216);
    if (v27)
    {
      CFRelease(v27);
      *(self + 216) = 0;
    }

    v28 = *(self + 240);
    if (v28)
    {
      CFRelease(v28);
      *(self + 240) = 0;
    }

    v29 = *(self + 232);
    if (v29)
    {
      CFRelease(v29);
      *(self + 232) = 0;
    }

    ++*(self + 196);
  }

  if (*(self + 192) == *(self + 196))
  {
    [(BWStillImageBravoDisparityNode *)self _clearCaptureRequestState];
  }
}

- (id)processorOptionsDictionary
{
  if (result)
  {
    v1 = result;
    stereoDisparityParameters = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters stereoDisparityParameters];
    if (!stereoDisparityParameters)
    {
      _sensorConfigurationWithPortraitTuningParameters = [(BWStillImageBravoDisparityNode *)v1 _sensorConfigurationWithPortraitTuningParameters];
      if (!_sensorConfigurationWithPortraitTuningParameters || (stereoDisparityParameters = [objc_msgSend(_sensorConfigurationWithPortraitTuningParameters "sensorIDDictionary")]) == 0)
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_1_6();
        v14 = 0;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14);
        return 0;
      }
    }

    v3 = stereoDisparityParameters;
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    allValues = [v1[16] allValues];
    v6 = [allValues countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = [dictionary setObject:objc_msgSend(*(*(&v19 + 1) + 8 * i) forKeyedSubscript:{"cameraInfo"), objc_msgSend(*(*(&v19 + 1) + 8 * i), "portType")}];
        }

        v7 = OUTLINED_FUNCTION_52(v10, v11, &v19, v18);
      }

      while (v7);
    }

    if (![dictionary count])
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      v15 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v15);
      return 0;
    }

    v12 = *off_1E798A970;
    v16[0] = *off_1E798A9D0;
    v16[1] = v12;
    v17[0] = v3;
    v17[1] = dictionary;
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  }

  return result;
}

- (void)_sensorConfigurationWithPortraitTuningParameters
{
  if (!self)
  {
    return 0;
  }

  v2 = +[FigCaptureCameraParameters sharedInstance];
  if ([(FigCaptureCameraParameters *)v2 stereoDisparityParameters])
  {
    return 0;
  }

  allValues = [*(self + 128) allValues];
  OUTLINED_FUNCTION_43();
  v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = MEMORY[0];
LABEL_5:
  v8 = 0;
  while (1)
  {
    if (MEMORY[0] != v7)
    {
      objc_enumerationMutation(allValues);
    }

    v9 = *(8 * v8);
    if (-[FigCaptureCameraParameters disparityVersionForPortType:sensorIDString:](v2, "disparityVersionForPortType:sensorIDString:", [v9 portType], objc_msgSend(v9, "sensorIDString")))
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      OUTLINED_FUNCTION_43();
      v6 = [allValues countByEnumeratingWithState:? objects:? count:?];
      if (v6)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }
}

- (id)_computeDisparityForTeleBuffer:(void *)buffer wideBuffer:(void *)wideBuffer attachToOutputBuffer:
{
  if (result)
  {
    v8 = result;
    v9 = [objc_msgSend(objc_msgSend(result[2] mediaPropertiesForAttachedMediaKey:{@"Depth", "livePixelBufferPool"), "newPixelBuffer"}];
    if (v9)
    {
      v10 = v9;
      [OUTLINED_FUNCTION_2_121() setShouldComputeDisparityWhenCalibrationFails:?];
      if (([objc_msgSend(v8[23] "captureSettings")] & 0x20000) != 0)
      {
        [objc_msgSend(v8[23] "captureSettings")];
      }

      [OUTLINED_FUNCTION_2_121() setEqualizeTeleGainToMatchReference:?];
      OUTLINED_FUNCTION_33();
      if (v11)
      {
        AttachedMedia = BWSampleBufferGetAttachedMedia(AttachedMedia, 0x1F21AAB10);
        bufferCopy = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAB10);
      }

      else
      {
        bufferCopy = buffer;
      }

      [OUTLINED_FUNCTION_2_121() setReferenceSampleBuffer:AttachedMedia];
      [OUTLINED_FUNCTION_2_121() setAuxiliarySampleBuffer:bufferCopy];
      [OUTLINED_FUNCTION_2_121() setOutputShiftmap:v10];
      process = [OUTLINED_FUNCTION_2_121() process];
      v14 = process & 0xFFFFFFFE;
      if (!process || v14 == 2 && (OUTLINED_FUNCTION_33(), v11))
      {
        targeta = buffer;
        [objc_msgSend(OUTLINED_FUNCTION_2_121() "metalContext")];
        v15 = CMGetAttachment(wideBuffer, *off_1E798A3C8, 0);
        shiftMapMetadata = [OUTLINED_FUNCTION_2_121() shiftMapMetadata];
        v17 = 0;
        if (shiftMapMetadata)
        {
          [objc_msgSend(v8[16] objectForKeyedSubscript:{objc_msgSend(v15, "objectForKeyedSubscript:", *off_1E798B540)), "sensorIDDictionary"}];
          v17 = sidn_depthMetadataAttachmentDictionaryFromBravoDisparityMetadata(shiftMapMetadata, wideBuffer, 1, v14 == 2);
        }

        cf = 0;
        if (!BWCMSampleBufferCreateCopyWithNewPixelBuffer(wideBuffer, v10, v8 + 22, &cf))
        {
          BWSampleBufferSetAttachedMedia(wideBuffer, @"Depth", cf);
          if (cf)
          {
            CFRelease(cf);
          }
        }

        if ([OUTLINED_FUNCTION_2_121() disparityDiagnosticMetadata])
        {
          [v15 setObject:objc_msgSend(OUTLINED_FUNCTION_2_121() forKeyedSubscript:{"disparityDiagnosticMetadata"), @"Disparity"}];
        }

        if (v17)
        {
          CMSetAttachment(wideBuffer, *off_1E798D2B8, v17, 1u);
        }

        OUTLINED_FUNCTION_33();
        if (v11)
        {
          v20 = sidn_depthMetadataAttachmentDictionaryFromBravoDisparityMetadata(shiftMapMetadata, targeta, 0, v14 == 2);
          if (v20)
          {
            CMSetAttachment(targeta, *off_1E798D2B8, v20, 1u);
          }
        }
      }

      v18 = +[BWAggdDataReporter sharedInstance];
      if (process > 3)
      {
        v19 = 4294949886;
      }

      else
      {
        v19 = dword_1AD056160[process];
      }

      [(BWAggdDataReporter *)v18 reportSDOFSampleBufferProcessorProcessingStatus:v19];
      CFRelease(v10);
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, target, cf, v24, v25, v26, v27);
    }

    [OUTLINED_FUNCTION_2_121() setShouldComputeDisparityWhenCalibrationFails:0];
    [OUTLINED_FUNCTION_2_121() setEqualizeTeleGainToMatchReference:0];
    [OUTLINED_FUNCTION_2_121() setReferenceSampleBuffer:0];
    [OUTLINED_FUNCTION_2_121() setAuxiliarySampleBuffer:0];
    return [OUTLINED_FUNCTION_2_121() setOutputShiftmap:0];
  }

  return result;
}

- (id)_resolveProcessingMode
{
  if (result)
  {
    v1 = result;
    *(result + 50) = 0;
    result = [objc_msgSend(result[23] "captureSettings")];
    if ((result & 0x800) != 0)
    {
      *(v1 + 50) = 1;
      *(v1 + 48) = 1;
      if ((*(v1 + 249) & 1) == 0 && ([objc_msgSend(OUTLINED_FUNCTION_12_53() "captureSettings")] == 3 || (objc_msgSend(objc_msgSend(OUTLINED_FUNCTION_12_53(), "captureSettings"), "captureFlags") & 0x100000) != 0))
      {
        *(v1 + 50) = 3;
        result = [objc_msgSend(OUTLINED_FUNCTION_12_53() "captureSettings")];
        if (result)
        {
          *(v1 + 50) = 2;
          ++*(v1 + 48);
        }
      }

      else
      {
        result = [objc_msgSend(OUTLINED_FUNCTION_12_53() "captureSettings")];
        if (result == 7)
        {
          *(v1 + 50) = 4;
          result = [objc_msgSend(OUTLINED_FUNCTION_12_53() "requestedSettings")];
          *(v1 + 48) = result;
        }
      }
    }
  }

  return result;
}

- (void)handleNodeError:(void *)a3 forInput:.cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + 144) == a2)
  {
    *(a1 + 232) = a3;
  }

  if (*(a1 + 152) == a2)
  {

    *(a1 + 240) = a3;
  }

  [(BWStillImageBravoDisparityNode *)a1 _processBuffersForDisparityIfNecessary];
}

@end