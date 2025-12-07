@interface BWSISNode
- (id)_initWithCameraTuningDictionary:(id)dictionary sensorIDDictionary:(id)dDictionary sbpCreationFunction:(void *)function fusionScheme:(int)scheme allowExperimentalOverrides:(BOOL)overrides;
- (uint64_t)_setupSampleBufferProcessor;
- (uint64_t)_unpackSISOptions;
- (void)_clearCaptureRequestState;
- (void)_sampleBufferProcessorOutputReady:(const void *)ready sampleBuffer:;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWSISNode

- (void)dealloc
{
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

  [(BWSISNode *)self _clearCaptureRequestState];

  v9.receiver = self;
  v9.super_class = BWSISNode;
  [(BWNode *)&v9 dealloc];
}

- (id)_initWithCameraTuningDictionary:(id)dictionary sensorIDDictionary:(id)dDictionary sbpCreationFunction:(void *)function fusionScheme:(int)scheme allowExperimentalOverrides:(BOOL)overrides
{
  if (scheme >= 2)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"StillImageStabilization node supports only SeparateFusionAndNoiseReduction and TemporalMultiBandNoiseReduction fusion schemes!" userInfo:0]);
  }

  v27.receiver = self;
  v27.super_class = BWSISNode;
  v11 = [(BWNode *)&v27 init];
  if (v11)
  {
    v11->_cameraTuningDictionary = dictionary;
    v11->_sensorIDDictionary = dDictionary;
    v11->_fusionScheme = scheme;
    v11->_allowExperimentalOverrides = 0;
    if ([(BWSISNode *)v11 _unpackSISOptions:v13])
    {

      return 0;
    }

    else
    {
      v11->_createSampleBufferProcessorFunction = function;
      v20 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v11];
      v21 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v21 setSupportedPixelFormats:&unk_1F2248D48];
      [(BWNodeInput *)v20 setFormatRequirements:v21];
      v22 = v11->_oisBracketCount + 1;
      sisBracketCount = v11->_sisBracketCount;
      if (v22 <= sisBracketCount + 1)
      {
        v24 = (sisBracketCount + 1);
      }

      else
      {
        v24 = v22;
      }

      [(BWNodeInput *)v20 setRetainedBufferCount:v24];

      [(BWNode *)v11 addInput:v20];
      v25 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
      v26 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v26 setSupportedPixelFormats:&unk_1F2248D60];
      [(BWNodeOutput *)v25 setProvidesPixelBufferPool:0];
      [(BWNodeOutput *)v25 setFormatRequirements:v26];

      [(BWNode *)v11 addOutput:v25];
      v11->_lastFusionTypeUsed = 0;
    }
  }

  return v11;
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
  v10.receiver = self;
  v10.super_class = BWSISNode;
  [(BWNode *)&v10 prepareForCurrentConfigurationToBecomeLive];
  if (!self->_sampleBufferProcessor && [(BWSISNode *)self _setupSampleBufferProcessor])
  {
    [BWSISNode prepareForCurrentConfigurationToBecomeLive];
  }

  if (self->_allowAllocationsAtPrepareTime && self->_sampleBufferProcessor && ![(BWSISNode *)self livePhotoSupported])
  {
    if ([(BWSISNode *)self OISSupported])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    self->_lastFusionTypeUsed = v3;
    v4 = [MEMORY[0x1E696AD98] numberWithInt:?];
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v6)
    {
      v6(FigBaseObject, *off_1E798D3B0, v4);
    }

    pixelBufferAttributes = [(BWVideoFormat *)[(BWNodeInput *)self->super._input videoFormat] pixelBufferAttributes];
    v8 = FigSampleBufferProcessorGetFigBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v9(v8, *off_1E798A9E8, pixelBufferAttributes);
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer || !self->_sampleBufferProcessor)
  {
    return;
  }

  v7 = CMGetAttachment(buffer, @"StillImageSettings", 0);
  if (!v7)
  {
    [BWSISNode renderSampleBuffer:forInput:];
    return;
  }

  if (!self->_currentCaptureSettings)
  {
    self->_currentCaptureSettings = v7;
  }

  v8 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  if (!v8)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v34, v35, v36, v37, v38, v39);
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v33 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v33, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSISNode.m", 282, @"LastShownDate:BWSISNode.m:282", @"LastShownBuild:BWSISNode.m:282", 0);
LABEL_40:
    free(v33);
    return;
  }

  v9 = v8;
  v10 = [objc_msgSend(v8 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
  v11 = [objc_msgSend(v9 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}];
  v12 = [objc_msgSend(CMGetAttachment(buffer @"BWStillImageCaptureSettings"];
  if (!v12)
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v34, v35, v36, v37, v38, v39);
    v31 = FigCaptureGetFrameworkRadarComponent();
    v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v33 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v31, v33, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSISNode.m", 296, @"LastShownDate:BWSISNode.m:296", @"LastShownBuild:BWSISNode.m:296", 0);
    goto LABEL_40;
  }

  v13 = v12;
  providePreBracketedEV0 = [v12 providePreBracketedEV0];
  bracketFrameCount = [v13 bracketFrameCount];
  v16 = [CMGetAttachment(buffer @"StillImageCaptureType"];
  if (v16 == 4)
  {
    v17 = 1;
  }

  else
  {
    v17 = 2;
  }

  if (v16 == 5)
  {
    providePreBracketedEV0 &= !self->_alwaysRequestsPreBracketedEV0;
  }

  if ((self->_lastFusionTypeUsed & ~v17) != 0)
  {
    v16 = [BWSISNode renderSampleBuffer:self forInput:?];
  }

  self->_lastFusionTypeUsed = v17;
  if (!self->_numberFramesReceived)
  {
    v22 = [MEMORY[0x1E696AD98] numberWithInt:v17];
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    VTable = CMBaseObjectGetVTable();
    v25 = *(VTable + 8);
    v16 = VTable + 8;
    v26 = *(v25 + 56);
    if (v26)
    {
      v16 = v26(FigBaseObject, *off_1E798D3B0, v22);
    }
  }

  if (v11)
  {
    if (providePreBracketedEV0 & 1 | !self->_alwaysRequestsPreBracketedEV0)
    {
      self->_preBracketedFrameReceived = 1;
      sampleBufferProcessor = self->_sampleBufferProcessor;
      v19 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v19 || v19(sampleBufferProcessor, buffer))
      {
        [BWSISNode renderSampleBuffer:forInput:];
      }
    }

    return;
  }

  if (v10 < 1 || v10 > bracketFrameCount)
  {
    return;
  }

  v20 = self->_numberFramesReceived + 1;
  self->_numberFramesReceived = v20;
  if (v10 == bracketFrameCount)
  {
    v21 = (providePreBracketedEV0 & 1) == 0 || self->_preBracketedFrameReceived;
    if (v20 != v10 || !v21)
    {
      [BWSISNode renderSampleBuffer:v16 forInput:?];
LABEL_42:

      [(BWSISNode *)self _clearCaptureRequestState];
      return;
    }

    CMSetAttachment(buffer, *off_1E798A3A0, *MEMORY[0x1E695E4D0], 0);
  }

  v27 = self->_sampleBufferProcessor;
  v28 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v28 || v28(v27, buffer))
  {
    [BWSISNode renderSampleBuffer:forInput:];
  }

  if (v10 == bracketFrameCount)
  {
    goto LABEL_42;
  }
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  currentCaptureSettings = self->_currentCaptureSettings;
  if (currentCaptureSettings && currentCaptureSettings == [objc_msgSend(error stillImageSettings])
  {
    [BWSISNode handleNodeError:? forInput:?];
  }

  output = self->super._output;

  [(BWNodeOutput *)output emitNodeError:error, input];
}

- (void)_clearCaptureRequestState
{
  if (self)
  {

    *(self + 240) = 0;
    *(self + 248) = 0;
    *(self + 252) = 0;
  }
}

- (uint64_t)_unpackSISOptions
{
  if (!result)
  {
    return result;
  }

  v10 = result;
  if (!*(result + 152))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_11();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v29, v30, v31, v32, v33, v34, v35);
    return 4294954516;
  }

  *(result + 216) = 4;
  *(result + 184) = 0;
  v11 = [*(result + 152) objectForKeyedSubscript:{@"StillImageStabilization", a4, a5, a6, a7, a8}];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 objectForKeyedSubscript:*off_1E798BC50];
    if (v13)
    {
      v14 = *(v10 + 208);
      *(v10 + 208) = v13;
      CFRetain(v13);
      if (v14)
      {
        CFRelease(v14);
      }

      v15 = [v12 objectForKeyedSubscript:@"MaxGain"];
      if (v15)
      {
        intValue = [v15 intValue];
        v17 = [v12 objectForKeyedSubscript:*off_1E798D388];
        if (v17)
        {
          *(v10 + 184) = [v17 intValue];
          v18 = [*(v10 + 152) objectForKeyedSubscript:*off_1E798D390];
          *(v10 + 160) = v18;
          if (*(v10 + 176) || v18)
          {
            *(v10 + 168) = [*(v10 + 152) objectForKeyedSubscript:*off_1E798D380];
            *(v10 + 192) = vcvts_n_f32_s32(intValue, 8uLL);
            *(v10 + 188) = 67;
            if (*(v10 + 200))
            {
              goto LABEL_16;
            }

            v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
            if (*(v10 + 216) >= 1)
            {
              v20 = 0;
              do
              {
                [v19 addObject:&unk_1F224A880];
                ++v20;
              }

              while (v20 < *(v10 + 216));
            }

            *(v10 + 200) = v19;
            if (v19)
            {
LABEL_16:
              v21 = *(v10 + 224);
              if (!v21)
              {
                v21 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{&unk_1F2244EA8, &unk_1F2244EC0, 0}];
                *(v10 + 224) = v21;
              }

              v22 = [v21 count];
              result = 0;
              *(v10 + 232) = v22;
              return result;
            }

            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_0_2();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v29, v30, v31, v32, v33, v34, v35);
            v23 = OUTLINED_FUNCTION_2();
            v26 = 4294954510;
            v27 = 567;
          }

          else
          {
            OUTLINED_FUNCTION_2();
            OUTLINED_FUNCTION_0_2();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v29, v30, v31, v32, v33, v34, v35);
            v23 = OUTLINED_FUNCTION_2();
            v26 = 4294954516;
            v27 = 545;
          }
        }

        else
        {
          OUTLINED_FUNCTION_2();
          OUTLINED_FUNCTION_0_2();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v29, v30, v31, v32, v33, v34, v35);
          v23 = OUTLINED_FUNCTION_2();
          v26 = 4294954516;
          v27 = 538;
        }
      }

      else
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v29, v30, v31, v32, v33, v34, v35);
        v23 = OUTLINED_FUNCTION_2();
        v26 = 4294954516;
        v27 = 534;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v29, v30, v31, v32, v33, v34, v35);
      v23 = OUTLINED_FUNCTION_2();
      v26 = 4294954516;
      v27 = 529;
    }
  }

  else
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v28, v29, v30, v31, v32, v33, v34, v35);
    v23 = OUTLINED_FUNCTION_2();
    v26 = 4294954516;
    v27 = 524;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v23, v26, "<<<< BWSISNode >>>>", v27, v9, v24, v25, a9);
}

- (uint64_t)_setupSampleBufferProcessor
{
  if (!self)
  {
    return 0;
  }

  v22 = 0;
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  if (!*(self + 144))
  {
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v1, v21, v22, v23, v24, v25, v26);
    emitter = fig_log_get_emitter();
    v14 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE14, "<<<< BWSISNode >>>>", 0x2BC, v1, v17, v18, v19);
    goto LABEL_20;
  }

  v5 = *(self + 176);
  if (v5 == 1)
  {
    [v3 setObject:? forKeyedSubscript:?];
    [v4 setObject:&unk_1F2244ED8 forKeyedSubscript:*off_1E798D398];
    v8 = *off_1E798D3A0;
    v7 = &unk_1F2244EF0;
  }

  else
  {
    if (v5)
    {
      goto LABEL_10;
    }

    [v3 setObject:&unk_1F2244ED8 forKeyedSubscript:*off_1E798D398];
    [v4 setObject:&unk_1F2244EF0 forKeyedSubscript:*off_1E798D3A0];
    [v4 setObject:*(self + 160) forKeyedSubscript:*off_1E798D390];
    v6 = *(self + 168);
    if (v6)
    {
      [v4 setObject:v6 forKeyedSubscript:*off_1E798D380];
    }

    v7 = [MEMORY[0x1E696AD98] numberWithInt:*(self + 184)];
    v8 = *off_1E798D388;
  }

  [v4 setObject:v7 forKeyedSubscript:v8];
LABEL_10:
  v9 = *(self + 128);
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v20, v21, v22, v23, v24, v25, v26);
    v14 = 0;
    goto LABEL_20;
  }

  if (*(self + 176))
  {
    v10 = @"TMBNR";
  }

  else
  {
    v10 = @"SIS";
  }

  v11 = v9(*MEMORY[0x1E695E480], v10, v4, &v22);
  if (v11)
  {
    v14 = v11;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14);
    goto LABEL_20;
  }

  v12 = v22;
  *(self + 136) = v22;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v13)
  {
    v14 = 4294954514;
LABEL_19:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    goto LABEL_20;
  }

  v14 = v13(v12, sisn_processorOutputReadyCallback, self);
  if (v14)
  {
    goto LABEL_19;
  }

LABEL_20:

  return v14;
}

- (void)_sampleBufferProcessorOutputReady:(const void *)ready sampleBuffer:
{
  if (!self)
  {
    return;
  }

  v4 = a2;
  value = 0;
  cf = 0;
  if (a2)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v4, v14, value, cf, v17, v18, v19, v20);
    goto LABEL_19;
  }

  if (!*(self + 176) && [*(self + 240) noiseReductionEnabled])
  {
    v6 = *MEMORY[0x1E695E480];
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v9 = *off_1E798D3A8;
      v8(FigBaseObject, *off_1E798D3A8, v6, &value);
      if (value)
      {
        CMSetAttachment(ready, v9, value, 0);
      }
    }

    v10 = FigSampleBufferProcessorGetFigBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v4 = v11(v10, *off_1E798D3B8, v6, &cf);
      if (cf)
      {
        CMSetAttachment(ready, @"NoiseReductionAlternateMetadata", cf, 0);
      }

      if (!v4)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v4 = 4294954514;
    }

LABEL_19:
    v12 = CMGetAttachment(ready, @"StillSettings", 0);
    v13 = [BWNodeError newError:v4 sourceNode:self stillImageSettings:v12 metadata:CMGetAttachment(ready, *off_1E798A3C8, 0)];
    [*(self + 16) emitNodeError:v13];

    goto LABEL_13;
  }

LABEL_12:
  [*(self + 16) emitSampleBuffer:ready];
LABEL_13:
  if (value)
  {
    CFRelease(value);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (uint64_t)renderSampleBuffer:(CFTypeRef *)a1 forInput:(uint64_t)a2 .cold.1(CFTypeRef *a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v5)
    {
      v5(v3, 0, 0);
    }

    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    if (FigBaseObject)
    {
      v7 = FigBaseObject;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v8)
      {
        v8(v7);
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }
  }

  return [(BWSISNode *)a2 _setupSampleBufferProcessor];
}

- (uint64_t)handleNodeError:(uint64_t)a1 forInput:.cold.1(uint64_t a1)
{
  [(BWSISNode *)a1 _clearCaptureRequestState];
  result = *(a1 + 136);
  if (result)
  {
    FigBaseObject = FigSampleBufferProcessorGetFigBaseObject();
    VTable = CMBaseObjectGetVTable();
    v5 = *(VTable + 8);
    result = VTable + 8;
    v6 = *(v5 + 56);
    if (v6)
    {
      v7 = *off_1E798D3C0;
      v8 = *MEMORY[0x1E695E4D0];

      return v6(FigBaseObject, v7, v8);
    }
  }

  return result;
}

@end