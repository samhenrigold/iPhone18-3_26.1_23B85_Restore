@interface BWStillImageFocusPixelDisparityNode
- (BWStillImageFocusPixelDisparityNode)initWithNodeConfiguration:(id)configuration sensorConfiguration:(id)sensorConfiguration disparityMapWidth:(unint64_t)width disparityMapHeight:(unint64_t)height depthIsAlwaysHighQuality:(BOOL)quality defaultZoomFactor:(float)factor;
- (uint64_t)_loadAndConfigureDisparityGeneratorForZoomFactor:(uint64_t)factor;
- (void)_attachDepthMetadataToSampleBuffer:(uint64_t)buffer;
- (void)_processDisparityForSampleBuffer:(uint64_t)buffer;
- (void)_removeConsumedAttachedMediaFromSampleBuffer:(uint64_t)buffer;
- (void)dealloc;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)processorOptionsForProcessorVersion:(float)version zoomFactor:;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWStillImageFocusPixelDisparityNode

- (BWStillImageFocusPixelDisparityNode)initWithNodeConfiguration:(id)configuration sensorConfiguration:(id)sensorConfiguration disparityMapWidth:(unint64_t)width disparityMapHeight:(unint64_t)height depthIsAlwaysHighQuality:(BOOL)quality defaultZoomFactor:(float)factor
{
  v42.receiver = self;
  v42.super_class = BWStillImageFocusPixelDisparityNode;
  v14 = [(BWNode *)&v42 init];
  if (v14)
  {
    if (configuration)
    {
      v14->_nodeConfiguration = configuration;
      if (sensorConfiguration)
      {
        sensorConfigurationCopy = sensorConfiguration;
        v14->_sensorConfiguration = sensorConfigurationCopy;
        if ([(BWSensorConfiguration *)sensorConfigurationCopy cameraInfo])
        {
          v16 = [(NSDictionary *)[(BWSensorConfiguration *)v14->_sensorConfiguration cameraInfo] objectForKeyedSubscript:*off_1E7989F18];
          if (v16)
          {
            [v16 doubleValue];
            *&v17 = v17 * 0.001;
            v14->_pixelSizeInMm = *&v17;
            v14->_depthIsAlwaysHighQuality = quality;
            v14->_defaultZoomFactor = factor;
            v18 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v14];
            v19 = objc_alloc_init(BWVideoFormatRequirements);
            [(BWVideoFormatRequirements *)v19 setSupportedPixelFormats:&unk_1F22480D0];
            [(BWNodeInput *)v18 setFormatRequirements:v19];

            [(BWNodeInput *)v18 setPassthroughMode:1];
            [(BWNode *)v14 addInput:v18];

            depthDataType = [(BWStillImageNodeConfiguration *)v14->_nodeConfiguration depthDataType];
            switch(depthDataType)
            {
              case 9:
                v28 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v29 = +[BWVideoFormatRequirements formatRequirements];
                [v29 setSupportedPixelFormats:&unk_1F2248130];
                [(BWNodeInputMediaConfiguration *)v28 setFormatRequirements:v29];
                [(BWNodeInputMediaConfiguration *)v28 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v28 forAttachedMediaKey:0x1F21AAB10];
                v30 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v31 = +[BWVideoFormatRequirements formatRequirements];
                [v31 setSupportedPixelFormats:&unk_1F2248148];
                [(BWNodeInputMediaConfiguration *)v30 setFormatRequirements:v31];
                [(BWNodeInputMediaConfiguration *)v30 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v30 forAttachedMediaKey:0x1F21AAB70];
                v32 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v33 = +[BWVideoFormatRequirements formatRequirements];
                [v33 setSupportedPixelFormats:&unk_1F2248160];
                [(BWNodeInputMediaConfiguration *)v32 setFormatRequirements:v33];
                [(BWNodeInputMediaConfiguration *)v32 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v32 forAttachedMediaKey:0x1F21AAB90];
                goto LABEL_13;
              case 5:
                v23 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v27 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v27 setSupportedPixelFormats:&unk_1F2248118];
                [(BWNodeInputMediaConfiguration *)v23 setFormatRequirements:v27];

                [(BWNodeInputMediaConfiguration *)v23 setPassthroughMode:0];
                input = v14->super._input;
                v26 = 0x1F21AAAF0;
                break;
              case 4:
                v21 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v22 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v22 setSupportedPixelFormats:&unk_1F22480E8];
                [(BWNodeInputMediaConfiguration *)v21 setFormatRequirements:v22];

                [(BWNodeInputMediaConfiguration *)v21 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v21 forAttachedMediaKey:0x1F21AAB10];

                v23 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v24 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v24 setSupportedPixelFormats:&unk_1F2248100];
                [(BWNodeInputMediaConfiguration *)v23 setFormatRequirements:v24];

                [(BWNodeInputMediaConfiguration *)v23 setPassthroughMode:0];
                input = v14->super._input;
                v26 = 0x1F21AAB50;
                break;
              default:
LABEL_13:
                v34 = objc_alloc_init(BWNodeInputMediaConfiguration);
                v35 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v35 setSupportedPixelFormats:&unk_1F2248178];
                [(BWNodeInputMediaConfiguration *)v34 setFormatRequirements:v35];
                [(BWNodeInputMediaConfiguration *)v34 setPassthroughMode:0];
                [(BWNodeInput *)v14->super._input setMediaConfiguration:v34 forAttachedMediaKey:0x1F21AAC70];
                v36 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v14];
                primaryMediaConfiguration = [(BWNodeOutput *)v36 primaryMediaConfiguration];
                v38 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v38 setSupportedPixelFormats:&unk_1F2248190];
                [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setFormatRequirements:v38];

                [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setProvidesPixelBufferPool:0];
                [(BWNodeOutputMediaConfiguration *)primaryMediaConfiguration setPassthroughMode:1];
                v39 = objc_alloc_init(BWNodeOutputMediaConfiguration);
                v40 = objc_alloc_init(BWVideoFormatRequirements);
                [(BWVideoFormatRequirements *)v40 setSupportedPixelFormats:&unk_1F22481A8];
                [(BWVideoFormatRequirements *)v40 setWidth:width];
                [(BWVideoFormatRequirements *)v40 setHeight:height];
                [(BWNodeOutputMediaConfiguration *)v39 setFormatRequirements:v40];

                [(BWNodeOutputMediaConfiguration *)v39 setPassthroughMode:0];
                [(BWNodeOutputMediaConfiguration *)v39 setProvidesPixelBufferPool:1];
                [(BWNodeOutput *)v36 setMediaConfiguration:v39 forAttachedMediaKey:@"Depth"];

                [(BWNode *)v14 addOutput:v36];
                *v14->_anon_b0 = 1065353216;
                *&v14->_anon_b0[20] = 1065353216;
                *&v14->_anon_b0[40] = 1065353216;
                return v14;
            }

            [(BWNodeInput *)input setMediaConfiguration:v23 forAttachedMediaKey:v26];

            goto LABEL_13;
          }

          [BWStillImageFocusPixelDisparityNode initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:];
        }

        else
        {
          [BWStillImageFocusPixelDisparityNode initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:];
        }
      }

      else
      {
        [BWStillImageFocusPixelDisparityNode initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:];
      }
    }

    else
    {
      [BWStillImageFocusPixelDisparityNode initWithNodeConfiguration:sensorConfiguration:disparityMapWidth:disparityMapHeight:depthIsAlwaysHighQuality:defaultZoomFactor:];
    }

    return 0;
  }

  return v14;
}

- (void)dealloc
{
  [(FigFocusPixelDisparityGenerator *)self->_focusPixelDisparityGenerator finishProcessing];

  disparityFormatDescription = self->_disparityFormatDescription;
  if (disparityFormatDescription)
  {
    CFRelease(disparityFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWStillImageFocusPixelDisparityNode;
  [(BWNode *)&v4 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"PrimaryFormat"))
  {
    output = self->super._output;

    [(BWNodeOutput *)output setFormat:format];
  }

  else if ((objc_msgSend_isEqualToString_(key) & 1) == 0 && (objc_msgSend_isEqualToString_(key) & 1) == 0 && (objc_msgSend_isEqualToString_(key) & 1) == 0 && (objc_msgSend_isEqualToString_(key) & 1) == 0 && (objc_msgSend_isEqualToString_(key) & 1) == 0)
  {
    v10.receiver = self;
    v10.super_class = BWStillImageFocusPixelDisparityNode;
    [(BWNode *)&v10 didSelectFormat:format forInput:input forAttachedMediaKey:key];
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWStillImageFocusPixelDisparityNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  if ([(BWStillImageFocusPixelDisparityNode *)self _loadAndConfigureDisparityGeneratorForZoomFactor:?])
  {
    [BWStillImageFocusPixelDisparityNode prepareForCurrentConfigurationToBecomeLive];
  }
}

- (uint64_t)_loadAndConfigureDisparityGeneratorForZoomFactor:(uint64_t)factor
{
  if (!factor)
  {
    return 0;
  }

  *(factor + 152) = 0;
  v5 = -[FigCaptureCameraParameters focusPixelDisparityVersionForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "focusPixelDisparityVersionForPortType:sensorIDString:", [*(factor + 144) portType], objc_msgSend(*(factor + 144), "sensorIDString"));
  depthDataType = [*(factor + 136) depthDataType];
  if (depthDataType == 9)
  {
    if (v5 >= 3)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (depthDataType == 5)
  {
    if (v5 >= 2)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (depthDataType == 4 && v5 != 1)
  {
    return 0;
  }

LABEL_9:
  v8 = [(BWStillImageFocusPixelDisparityNode *)factor processorOptionsForProcessorVersion:v5 zoomFactor:a2];
  if (!v8)
  {
    OUTLINED_FUNCTION_2_7();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_8_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_2_7();
    emitter = fig_log_get_emitter();
    v17 = 405;
    goto LABEL_22;
  }

  v9 = v8;
  v10 = BWLoadProcessorBundle(@"FPDisparity", v5);
  if (!v10)
  {
    OUTLINED_FUNCTION_2_7();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_8_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_2_7();
    emitter = fig_log_get_emitter();
    v17 = 408;
    goto LABEL_22;
  }

  v11 = [objc_alloc(objc_msgSend(v10 "principalClass"))];
  *(factor + 152) = v11;
  if (!v11)
  {
    OUTLINED_FUNCTION_2_7();
    fig_log_get_emitter();
    OUTLINED_FUNCTION_8_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v20, v21, v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_2_7();
    emitter = fig_log_get_emitter();
    v17 = 411;
LABEL_22:
    v12 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE0ELL, "<<<< BWStillImageFocusPixelDisparityNode >>>>", v17, v2, v15, v16, v19);
    if (!v12)
    {
      return v12;
    }

    goto LABEL_25;
  }

  [v11 setOptions:v9];
  [*(factor + 152) setFocusPixelMetadata:0];
  [*(factor + 152) setQualityEstimationEnabled:(*(factor + 244) & 1) == 0];
  if ([*(factor + 152) prepareToProcess:0])
  {
    v12 = 4294954516;
LABEL_25:

    *(factor + 152) = 0;
    return v12;
  }

  v12 = 0;
  *(factor + 252) = a2;
  return v12;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (!buffer)
  {
    FigCaptureGetFrameworkRadarComponent();
    v30 = OUTLINED_FUNCTION_11_5();
    if (OUTLINED_FUNCTION_15_1(v30))
    {
      v31 = v4;
    }

    else
    {
      v31 = v4 & 0xFFFFFFFE;
    }

    if (v31)
    {
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_13_6();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_12_4();
    v42 = OUTLINED_FUNCTION_6_0(v38, v39, v40, v41, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    v43 = OUTLINED_FUNCTION_2_7();
    v48 = 311;
    goto LABEL_36;
  }

  v7 = OUTLINED_FUNCTION_16_7(self, @"BWStillImageCaptureSettings");
  if (!v7)
  {
    FigCaptureGetFrameworkRadarComponent();
    v32 = OUTLINED_FUNCTION_11_5();
    if (OUTLINED_FUNCTION_15_1(v32))
    {
      v33 = v4;
    }

    else
    {
      v33 = v4 & 0xFFFFFFFE;
    }

    if (v33)
    {
      OUTLINED_FUNCTION_5_13();
      OUTLINED_FUNCTION_13_6();
      _os_log_send_and_compose_impl();
    }

    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_12_4();
    v42 = OUTLINED_FUNCTION_6_0(v49, v50, v51, v52, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    v43 = OUTLINED_FUNCTION_2_7();
    v48 = 314;
LABEL_36:
    FigCapturePleaseFileRadar(v43, v44, 0, 0, v45, v48, v46, v47, 0);
    free(v42);
    goto LABEL_17;
  }

  captureFlags = [v7 captureFlags];
  if ((captureFlags & 0x800) != 0)
  {
    v9 = OUTLINED_FUNCTION_16_7(captureFlags, @"StillSettings");
    if (v9)
    {
      v10 = v9;
      v11 = OUTLINED_FUNCTION_16_7(v9, *off_1E798A3C8);
      v12 = BWPixelBufferDimensionsFromSampleBuffer(buffer);
      v53 = *MEMORY[0x1E695F050];
      v54 = *(MEMORY[0x1E695F050] + 16);
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        v53 = 0uLL;
        __asm { FMOV            V0.2D, #1.0 }

        v54 = _Q0;
      }

      v18 = [objc_msgSend(v10 "requestedSettings")];
      v19.n128_f64[0] = v18 / [objc_msgSend(v10 "requestedSettings")];
      v20.n128_u64[0] = v53;
      v22.n128_u64[0] = *(&v54 + 1);
      v21.n128_u64[0] = v54;
      FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(v12, v12 >> 32, v20, *(&v53 + 1), v21, v22, v19, v23);
      height = v55.size.height;
      if (CGRectIsNull(v55))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v35, "<<<< BWStillImageFocusPixelDisparityNode >>>> Fig", "! CGRectIsNull( denormalizedSourceCropRect)", "bail", "Failed to determine denormalizedSourceCropRect, skipping Focus pixel disparity generation", "BWStillImageFocusPixelDisparityNode.m", 332);
      }

      else
      {
        v25 = [objc_msgSend(v10 "requestedSettings")] / height;
        v26 = [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B588), "intValue"}];
        if (v26)
        {
          v25 = v25 / vcvts_n_f32_s32(v26, 1uLL);
        }

        [objc_msgSend(v11 objectForKeyedSubscript:{*off_1E798B240), "floatValue"}];
        if (v27 == 0.0)
        {
          v27 = 1.0;
        }

        v28 = v25 * v27;
        if (v28 < 1.0)
        {
          v28 = 1.0;
        }

        if (v28 != self->_currentZoomFactorForFocusPixelDisparityGenerator && (v29 = [(BWStillImageFocusPixelDisparityNode *)self _loadAndConfigureDisparityGeneratorForZoomFactor:v28]) != 0)
        {
          v36 = v29;
          emitter = fig_log_get_emitter();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", emitter, "<<<< BWStillImageFocusPixelDisparityNode >>>> Fig", "err == 0 ", "bail", 0, "BWStillImageFocusPixelDisparityNode.m", 344, v36);
        }

        else
        {
          [(BWStillImageFocusPixelDisparityNode *)self _processDisparityForSampleBuffer:buffer];
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v34, "<<<< BWStillImageFocusPixelDisparityNode >>>> Fig", "settings", "bail", "settings are not available", "BWStillImageFocusPixelDisparityNode.m", 321);
    }
  }

LABEL_17:
  if ([(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType]== 5 || [(BWStillImageNodeConfiguration *)self->_nodeConfiguration depthDataType]== 9)
  {
    [(BWStillImageFocusPixelDisparityNode *)self _removeConsumedAttachedMediaFromSampleBuffer:buffer];
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (void)_processDisparityForSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return;
  }

  v3 = a2;
  v5 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v5;
  if (!*(buffer + 152))
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7_0();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    OUTLINED_FUNCTION_12_4();
    v10 = OUTLINED_FUNCTION_6_0(v48, v49, v50, v51, &dword_1AC90E000, MEMORY[0x1E69E9C10]);
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v10, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageFocusPixelDisparityNode.m", 495, @"LastShownDate:BWStillImageFocusPixelDisparityNode.m:495", @"LastShownBuild:BWStillImageFocusPixelDisparityNode.m:495", 0);
    free(v10);
    LOBYTE(v10) = 0;
    ImageBuffer = 0;
    v3 = a2;
    goto LABEL_46;
  }

  depthDataType = [*(buffer + 136) depthDataType];
  v56 = v3;
  switch(depthDataType)
  {
    case 9:
      v18 = +[FigCaptureCameraParameters sharedInstance];
      portType = [OUTLINED_FUNCTION_14_1() portType];
      -[FigCaptureCameraParameters focusPixelDisparityVersionForPortType:sensorIDString:](v18, "focusPixelDisparityVersionForPortType:sensorIDString:", portType, [OUTLINED_FUNCTION_14_1() sensorIDString]);
      portType2 = [OUTLINED_FUNCTION_14_1() portType];
      sensorIDString = [OUTLINED_FUNCTION_14_1() sensorIDString];
      LODWORD(v22) = *(buffer + 252);
      v23 = [(FigCaptureCameraParameters *)v18 focusPixelDisparityTuningParametersForPortType:portType2 sensorIDString:sensorIDString zoomFactor:v22];
      if (v23)
      {
        v24 = [v23 objectForKeyedSubscript:@"sizes"];
        v3 = v56;
        if (!v24)
        {
          goto LABEL_77;
        }

        v25 = v24;
        v26 = BWPixelBufferDimensionsFromSampleBuffer(v56);
        if (__PAIR64__([objc_msgSend(objc_msgSend(v25 objectForKeyedSubscript:{@"color_size", "objectForKeyedSubscript:", @"height", "intValue"}], objc_msgSend(objc_msgSend(objc_msgSend(v25, "objectForKeyedSubscript:", @"color_size"), "objectForKeyedSubscript:", @"width"), "intValue")) != v26)
        {
          goto LABEL_78;
        }

        AttachedMedia = BWSampleBufferGetAttachedMedia(v56, 0x1F21AAB10);
        v10 = AttachedMedia;
        if (!AttachedMedia)
        {
          goto LABEL_74;
        }

        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        if (!ImageBuffer)
        {
LABEL_76:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_15();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          LOBYTE(v10) = 0;
          goto LABEL_46;
        }

        v28 = BWPixelBufferDimensionsFromSampleBuffer(v10);
        if ([objc_msgSend(objc_msgSend(v25 objectForKeyedSubscript:{@"green_size", "objectForKeyedSubscript:", @"width", "intValue"}] != v28)
        {
LABEL_78:
          LOBYTE(v10) = 0;
          goto LABEL_79;
        }

        if (__PAIR64__([objc_msgSend(objc_msgSend(v25 objectForKeyedSubscript:{@"green_size", "objectForKeyedSubscript:", @"height", "intValue"}], objc_msgSend(objc_msgSend(objc_msgSend(v25, "objectForKeyedSubscript:", @"raw_size"), "objectForKeyedSubscript:", @"width"), "intValue")) == v28 && objc_msgSend(objc_msgSend(objc_msgSend(v25, "objectForKeyedSubscript:", @"raw_size"), "objectForKeyedSubscript:", @"height"), "intValue") == HIDWORD(v28))
        {
          v3 = v56;
          v29 = BWSampleBufferGetAttachedMedia(v56, 0x1F21AAB70);
          if (v29)
          {
            v30 = CMSampleBufferGetImageBuffer(v29);
            if (v30)
            {
              v17 = v30;
              v31 = BWSampleBufferGetAttachedMedia(v56, 0x1F21AAB90);
              if (v31)
              {
                v32 = CMSampleBufferGetImageBuffer(v31);
                if (v32)
                {
                  v16 = v32;
                  v14 = 0;
                  v12 = 0;
                  goto LABEL_30;
                }
              }
            }
          }

LABEL_77:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_15();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
          goto LABEL_78;
        }
      }

      LOBYTE(v10) = 0;
      ImageBuffer = 0;
LABEL_61:
      v3 = v56;
      goto LABEL_46;
    case 5:
      v15 = BWSampleBufferGetAttachedMedia(v3, 0x1F21AAAF0);
      if (v15)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(v15);
        if (ImageBuffer)
        {
          v14 = 0;
          v12 = 0;
          goto LABEL_15;
        }

        goto LABEL_76;
      }

      goto LABEL_77;
    case 4:
      v7 = BWSampleBufferGetAttachedMedia(v3, 0x1F21AAB10);
      if (v7)
      {
        ImageBuffer = CMSampleBufferGetImageBuffer(v7);
        if (ImageBuffer)
        {
          v9 = BWSampleBufferGetAttachedMedia(v3, 0x1F21AAB50);
          LOBYTE(v10) = v9;
          if (v9)
          {
            v11 = CMSampleBufferGetImageBuffer(v9);
            if (v11)
            {
              v12 = v11;
              v13 = OUTLINED_FUNCTION_16_7(v11, *off_1E798A388);
              if (v13)
              {
                v14 = v13;
LABEL_15:
                v16 = 0;
                v17 = 0;
                goto LABEL_30;
              }
            }

            fig_log_get_emitter();
            OUTLINED_FUNCTION_1_16();
            FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            goto LABEL_78;
          }

LABEL_74:
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0_15();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_79:
          ImageBuffer = 0;
          goto LABEL_46;
        }

        goto LABEL_76;
      }

      goto LABEL_77;
  }

  v14 = 0;
  v12 = 0;
  v16 = 0;
  v17 = 0;
  ImageBuffer = 0;
LABEL_30:
  v10 = CMGetAttachment(v3, *off_1E798A3C8, 0);
  if (!v10)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_16();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v53, v54, v2, v55, v56, v58, v59);
LABEL_66:
    ImageBuffer = 0;
    goto LABEL_46;
  }

  if ([*(buffer + 136) depthDataType] != 9)
  {
    v33 = [v10 objectForKeyedSubscript:*off_1E798B798];
    if (!v33)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_65:
      LOBYTE(v10) = 0;
      goto LABEL_66;
    }

    if (!CGRectMakeWithDictionaryRepresentation(v33, &rect))
    {
      goto LABEL_64;
    }
  }

  v34 = BWSampleBufferGetAttachedMedia(v3, 0x1F21AAC70);
  if (!v34)
  {
LABEL_64:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_16();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_65;
  }

  v35 = ImageBuffer;
  v36 = CMSampleBufferGetImageBuffer(v34);
  if (!v36)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_16();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v53, v54, v2, v55, v56, v58, v59);
    LOBYTE(v10) = 0;
    goto LABEL_56;
  }

  v37 = v36;
  v38 = BWSampleBufferGetAttachedMedia(v56, 0x1F21AAC90);
  if (v38)
  {
    v10 = CMSampleBufferGetImageBuffer(v38);
    if (!v10)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_16();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v53, v54, v2, v55, v56, v58, v59);
LABEL_56:
      ImageBuffer = 0;
LABEL_58:
      v3 = v57;
      goto LABEL_46;
    }
  }

  else
  {
    v10 = 0;
  }

  ImageBuffer = [objc_msgSend(objc_msgSend(*(buffer + 16) mediaPropertiesForAttachedMediaKey:{@"Depth", "livePixelBufferPool"), "newPixelBuffer"}];
  if (!ImageBuffer)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_16();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v52, v53, v54, v2, v17, v56, v58, v59);
    LOBYTE(v10) = 0;
    goto LABEL_58;
  }

  [OUTLINED_FUNCTION_4_17() setImageSampleBuffer:v56];
  [OUTLINED_FUNCTION_4_17() setRawImagePixelBufferBuffer:v35];
  [OUTLINED_FUNCTION_4_17() setFocusPixelBuffer:v12];
  [OUTLINED_FUNCTION_4_17() setFocusPixelMetadata:v14];
  [OUTLINED_FUNCTION_4_17() setFocusPixelValidArea:?];
  [OUTLINED_FUNCTION_4_17() setPersonSegmentationPixelBuffer:v37];
  [OUTLINED_FUNCTION_4_17() setPersonSegmentationConfidencePixelBuffer:v10];
  [OUTLINED_FUNCTION_4_17() setOutDisparity:ImageBuffer];
  [OUTLINED_FUNCTION_4_17() setH0:v17];
  [OUTLINED_FUNCTION_4_17() setH1:v16];
  if ([OUTLINED_FUNCTION_4_17() process])
  {
    LOBYTE(v10) = 0;
    v3 = v56;
    goto LABEL_46;
  }

  if ([OUTLINED_FUNCTION_4_17() finishProcessing])
  {
    LOBYTE(v10) = 0;
    goto LABEL_61;
  }

  v3 = v56;
  [(BWStillImageFocusPixelDisparityNode *)buffer _removeConsumedAttachedMediaFromSampleBuffer:v56];
  v39 = OUTLINED_FUNCTION_2_7();
  CopyWithNewPixelBuffer = BWCMSampleBufferCreateCopyWithNewPixelBuffer(v39, v40, v41, v42);
  if (CopyWithNewPixelBuffer)
  {
    v47 = CopyWithNewPixelBuffer;
    fig_log_get_emitter();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v47, v2, v54, v2, v17, v56, v58, v59);
  }

  else
  {
    [(BWStillImageFocusPixelDisparityNode *)buffer _attachDepthMetadataToSampleBuffer:v56];
    BWSampleBufferSetAttachedMedia(v56, @"Depth", 0);
  }

  LOBYTE(v10) = 1;
LABEL_46:
  [OUTLINED_FUNCTION_3_8() setImageSampleBuffer:?];
  [OUTLINED_FUNCTION_3_8() setRawImagePixelBufferBuffer:?];
  [OUTLINED_FUNCTION_3_8() setFocusPixelBuffer:?];
  [OUTLINED_FUNCTION_3_8() setFocusPixelMetadata:?];
  [OUTLINED_FUNCTION_4_17() setFocusPixelValidArea:?];
  [OUTLINED_FUNCTION_3_8() setPersonSegmentationPixelBuffer:?];
  [OUTLINED_FUNCTION_3_8() setPersonSegmentationConfidencePixelBuffer:?];
  [OUTLINED_FUNCTION_3_8() setOutDisparity:?];
  [OUTLINED_FUNCTION_3_8() setH0:?];
  [OUTLINED_FUNCTION_3_8() setH1:?];
  if (ImageBuffer)
  {
    CFRelease(ImageBuffer);
  }

  if ((v10 & 1) == 0)
  {
    [(BWStillImageFocusPixelDisparityNode *)buffer _removeConsumedAttachedMediaFromSampleBuffer:v3];
  }
}

- (void)_removeConsumedAttachedMediaFromSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB10);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAAF0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB50);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAC70);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAC90);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB70);

    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAB90);
  }
}

- (void)processorOptionsForProcessorVersion:(float)version zoomFactor:
{
  if (!self)
  {
    return 0;
  }

  v6 = +[FigCaptureCameraParameters sharedInstance];
  portType = [OUTLINED_FUNCTION_10_5() portType];
  sensorIDString = [OUTLINED_FUNCTION_10_5() sensorIDString];
  *&v9 = version;
  v10 = [(FigCaptureCameraParameters *)v6 focusPixelDisparityTuningParametersForPortType:portType sensorIDString:sensorIDString zoomFactor:v9];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if (a2 < 3)
  {
    v17 = 0;
  }

  else
  {
    v12 = [v10 objectForKeyedSubscript:@"sizes"];
    if (!v12)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      return 0;
    }

    v13 = v12;
    v14 = [objc_msgSend(objc_msgSend(v12 objectForKeyedSubscript:{@"disparity_size", "objectForKeyedSubscript:", @"width", "intValue"}];
    if (v14 != [*(self + 136) depthDataOutputDimensions])
    {
      return 0;
    }

    v15 = [objc_msgSend(objc_msgSend(v13 objectForKeyedSubscript:{@"disparity_size", "objectForKeyedSubscript:", @"height", "intValue"}];
    if (v15 != [*(self + 136) depthDataOutputDimensions] >> 32)
    {
      return 0;
    }

    portType2 = [OUTLINED_FUNCTION_10_5() portType];
    v17 = -[FigCaptureCameraParameters focusPixelsPatternsForPortType:sensorIDString:](v6, "focusPixelsPatternsForPortType:sensorIDString:", portType2, [OUTLINED_FUNCTION_10_5() sensorIDString]);
    if (!v17)
    {
      return 0;
    }
  }

  portType3 = [OUTLINED_FUNCTION_10_5() portType];
  cameraInfo = [OUTLINED_FUNCTION_10_5() cameraInfo];
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&cameraInfo forKeys:&portType3 count:1];
  if (!v18)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    return 0;
  }

  v19 = *off_1E798A970;
  v22[0] = *off_1E798A9D0;
  v22[1] = v19;
  v23[0] = v11;
  v23[1] = v18;
  v20 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v23, v22, 2)}];
  [v20 setObject:v17 forKeyedSubscript:@"Patterns"];
  return v20;
}

- (void)_attachDepthMetadataToSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v4 && ((v5 = -[FigCaptureCameraParameters focusPixelDisparityVersionForPortType:sensorIDString:](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "focusPixelDisparityVersionForPortType:sensorIDString:", [*(buffer + 144) portType], objc_msgSend(*(buffer + 144), "sensorIDString")), !-[FigCaptureCameraParameters portraitTapToRefocusPrevented](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters, "sharedInstance"), "portraitTapToRefocusPrevented")) ? (v6 = -15536) : (v6 = -14536), v5 <= 1 ? (v7 = 30000) : (v7 = v6), (CurrentMajorVersion = FigDepthDataGetCurrentMajorVersion(), (*(buffer + 244) & 1) == 0) ? (v9 = objc_msgSend(*(buffer + 152), "disparityQuality")) : (v9 = 1), CMGetAttachment(a2, *off_1E798A3C8, 0) && (size = *MEMORY[0x1E695F060], (v10 = CMGetAttachment(a2, @"OriginalCameraIntrinsicMatrixReferenceDimensions", 0)) != 0)))
    {
      v11 = v10;
      if (CGSizeMakeWithDictionaryRepresentation(v10, &size) && (v12 = CMGetAttachment(a2, @"OriginalCameraIntrinsicMatrix", 0)) != 0)
      {
        v13 = v12;
        [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", (v7 + v5) | (CurrentMajorVersion << 16)), *off_1E798D010}];
        [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v9), *off_1E798D008}];
        [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*off_1E798CFD0];
        [v4 setObject:&unk_1F22426B8 forKeyedSubscript:*off_1E798CFC0];
        LODWORD(v14) = *(buffer + 240);
        [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithFloat:", v14), *off_1E798D000}];
        [v4 setObject:v13 forKeyedSubscript:*off_1E798CFD8];
        [v4 setObject:v11 forKeyedSubscript:*off_1E798CFE0];
        [v4 setObject:objc_msgSend(MEMORY[0x1E695DEF0] forKeyedSubscript:{"dataWithBytes:length:", buffer + 176, 64), *off_1E798CFC8}];
        CMSetAttachment(a2, *off_1E798D2B8, v4, 1u);
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
}

@end