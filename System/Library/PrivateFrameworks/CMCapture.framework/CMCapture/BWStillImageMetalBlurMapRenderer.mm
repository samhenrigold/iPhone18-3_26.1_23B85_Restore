@interface BWStillImageMetalBlurMapRenderer
- (BOOL)shouldEnableForegroundBlur;
- (BWStillImageMetalBlurMapRenderer)initWithSDOFRenderingTuningParameters:(id)parameters imageDimensions:(id)dimensions depthDataMapDimensions:(id)mapDimensions portraitRenderQuality:(int)quality metalCommandQueue:(id)queue backPressureDrivenPipelining:(BOOL)pipelining;
- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key;
- (uint64_t)_allocateBlurMapPixelBufferPoolForBuffersOfWidth:(uint64_t)width height:(int)height enableForegroundBlur:;
- (uint64_t)_loadAndConfigureSDOFBlurMapRenderer;
- (uint64_t)shouldEnableForegroundBlur;
- (void)bundleOptionsDictionary;
- (void)dealloc;
- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler;
@end

@implementation BWStillImageMetalBlurMapRenderer

- (BWStillImageMetalBlurMapRenderer)initWithSDOFRenderingTuningParameters:(id)parameters imageDimensions:(id)dimensions depthDataMapDimensions:(id)mapDimensions portraitRenderQuality:(int)quality metalCommandQueue:(id)queue backPressureDrivenPipelining:(BOOL)pipelining
{
  v17.receiver = self;
  v17.super_class = BWStillImageMetalBlurMapRenderer;
  v14 = [(BWStillImageMetalBlurMapRenderer *)&v17 init];
  if (v14)
  {
    v14->_sdofRenderingTuningParameters = parameters;
    v14->_imageDimensions = dimensions;
    v14->_depthDataMapDimensions = mapDimensions;
    v14->_portraitRenderQuality = quality;
    v14->_mtlCommandQueue = queue;
    v14->_backPressureDrivenPipelining = pipelining;
    [(BWStillImageMetalBlurMapRenderer *)v14 _loadAndConfigureSDOFBlurMapRenderer];
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageMetalBlurMapRenderer;
  [(BWStillImageMetalBlurMapRenderer *)&v3 dealloc];
}

- (BOOL)shouldEnableForegroundBlur
{
  bundleOptionsDictionary = [(BWStillImageMetalBlurMapRenderer *)self bundleOptionsDictionary];
  if (bundleOptionsDictionary)
  {
    v10 = [bundleOptionsDictionary objectForKeyedSubscript:*off_1E798A9D0];
    if (v10)
    {
      v18 = v10;
      v19 = [v10 objectForKeyedSubscript:*off_1E798A9D8];
      if (v19)
      {
        v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v19, "unsignedIntValue")}];
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderingV%@"];
        if (v28)
        {
          v36 = v28;
          v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderingV%@_NMP"];
          if (v37)
          {
            v45 = v37;
            v46 = [objc_msgSend(v18 objectForKeyedSubscript:{v36), "objectForKeyedSubscript:", @"fgNRings"}];
            v47 = [objc_msgSend(v18 objectForKeyedSubscript:{v45), "objectForKeyedSubscript:", @"fgNRings"}];
            if (v46 && [v46 unsignedIntValue])
            {
              return 1;
            }

            if (v47)
            {
              return [v47 unsignedIntValue] != 0;
            }
          }

          else
          {
            [(BWStillImageMetalBlurMapRenderer *)0 shouldEnableForegroundBlur:v38];
          }
        }

        else
        {
          [(BWStillImageMetalBlurMapRenderer *)0 shouldEnableForegroundBlur:v29];
        }
      }

      else
      {
        [(BWStillImageMetalBlurMapRenderer *)0 shouldEnableForegroundBlur:v20];
      }
    }

    else
    {
      [(BWStillImageMetalBlurMapRenderer *)0 shouldEnableForegroundBlur:v11];
    }
  }

  else
  {
    [(BWStillImageMetalBlurMapRenderer *)0 shouldEnableForegroundBlur:v3];
  }

  return 0;
}

- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key
{
  if (!self->_blurMapPixelBufferPool)
  {
    width = [format width];
    v9 = width + (width >> 31);
    height = [format height];
    [(BWStillImageMetalBlurMapRenderer *)self _allocateBlurMapPixelBufferPoolForBuffersOfWidth:(height + (height >> 31)) >> 1 height:[(BWStillImageMetalBlurMapRenderer *)self shouldEnableForegroundBlur] enableForegroundBlur:?];
  }

  return 0;
}

- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler
{
  AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBuffer, @"Depth");
  if (!AttachedMedia || (ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia)) == 0)
  {
    [BWStillImageMetalBlurMapRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
LABEL_28:
    newPixelBuffer = 0;
    goto LABEL_22;
  }

  v13 = ImageBuffer;
  v14 = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F21AABB0);
  if (v14)
  {
    v15 = CMSampleBufferGetImageBuffer(v14);
  }

  else
  {
    v15 = 0;
  }

  v16 = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F21AABD0);
  if (v16)
  {
    v17 = CMSampleBufferGetImageBuffer(v16);
  }

  else
  {
    v17 = 0;
  }

  v18 = BWSampleBufferGetAttachedMedia(sampleBuffer, @"PersonSemanticsHair");
  if (v18)
  {
    v19 = CMSampleBufferGetImageBuffer(v18);
  }

  else
  {
    v19 = 0;
  }

  v20 = BWSampleBufferGetAttachedMedia(sampleBuffer, @"PersonSemanticsGlasses");
  if (v20)
  {
    v21 = CMSampleBufferGetImageBuffer(v20);
  }

  else
  {
    v21 = 0;
  }

  if (!self->_sdofBlurMapRenderer)
  {
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v28, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageMetalBlurMapRenderer.m", 224, @"LastShownDate:BWStillImageMetalBlurMapRenderer.m:224", @"LastShownBuild:BWStillImageMetalBlurMapRenderer.m:224", 0);
LABEL_32:
    free(v28);
    goto LABEL_28;
  }

  if (!self->_blurMapPixelBufferPool)
  {
    v26 = FigCaptureGetFrameworkRadarComponent();
    v27 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v28 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(v26, v28, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWStillImageMetalBlurMapRenderer.m", 225, @"LastShownDate:BWStillImageMetalBlurMapRenderer.m:225", @"LastShownBuild:BWStillImageMetalBlurMapRenderer.m:225", 0);
    goto LABEL_32;
  }

  [(FigSDOFBlurMapRendering *)self->_sdofBlurMapRenderer setFaceLandmarksArray:BWInferenceGetAttachedInference(sampleBuffer, 801, 0x1F219E5F0)];
  newPixelBuffer = [(BWPixelBufferPool *)self->_blurMapPixelBufferPool newPixelBuffer];
  if (v17)
  {
    v23 = v17;
  }

  else
  {
    v23 = v13;
  }

  if ([(FigSDOFBlurMapRendering *)self->_sdofBlurMapRenderer computeBlurMapWithImage:sampleBuffer shiftMap:v23 personSegmentationMask:v15 hairSemanticSegmentationMask:v19 glassesSemanticSegmentationMask:v21 resultFaceAdjustedBlurMap:newPixelBuffer])
  {
    [BWStillImageMetalBlurMapRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
  }

  else
  {
    CMSetAttachment(sampleBuffer, @"PortraitStillImageFaceAdjustedBlurMap", newPixelBuffer, 1u);
  }

LABEL_22:
  if (handler)
  {
    (*(handler + 2))(handler, 0, 0);
  }

  if (newPixelBuffer)
  {
    CFRelease(newPixelBuffer);
  }
}

- (uint64_t)_loadAndConfigureSDOFBlurMapRenderer
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  v26 = 0;
  bundleOptionsDictionary = [(BWStillImageMetalBlurMapRenderer *)result bundleOptionsDictionary];
  if (!bundleOptionsDictionary)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v22, v24, v26, v27, v28, v29, v30);
    v14 = OUTLINED_FUNCTION_2();
    v17 = 4294954510;
    v18 = 281;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v17, "<<<< BWStillImageMetalBlurMapRenderer >>>>", v18, v2, v15, v16, v21);
  }

  v5 = bundleOptionsDictionary;
  v6 = [bundleOptionsDictionary objectForKeyedSubscript:*off_1E798A9D0];
  if (!v6)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v22, v24, v26, v27, v28, v29, v30);
    v14 = OUTLINED_FUNCTION_2();
    v17 = 4294954516;
    v18 = 285;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v17, "<<<< BWStillImageMetalBlurMapRenderer >>>>", v18, v2, v15, v16, v21);
  }

  v7 = [v6 objectForKeyedSubscript:*off_1E798A9D8];
  if (!v7)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v22, v24, v26, v27, v28, v29, v30);
    v14 = OUTLINED_FUNCTION_2();
    v17 = 4294954516;
    v18 = 289;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v17, "<<<< BWStillImageMetalBlurMapRenderer >>>>", v18, v2, v15, v16, v21);
  }

  intValue = [v7 intValue];
  if (intValue >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = intValue;
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors", @"SDOFRendering", v9, v26];
  v11 = [MEMORY[0x1E696AAE8] bundleWithPath:v10];
  if (!v11)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v23, v25, v26, v27, v28, v29, v30);
    v14 = OUTLINED_FUNCTION_2();
    v17 = 4294954510;
    v18 = 308;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v17, "<<<< BWStillImageMetalBlurMapRenderer >>>>", v18, v2, v15, v16, v21);
  }

  v12 = v11;
  if ([v11 loadAndReturnError:&v26])
  {
    v13 = [objc_alloc(objc_msgSend(v12 classNamed:{@"FigSDOFBlurMapRendering", "initWithCommandQueue:", *(v3 + 56)}];
    *(v3 + 16) = v13;
    if (v13)
    {
      if ([v13 setOptions:v5])
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v23, v25, v26, v27, v28, v29, v30);
        v14 = OUTLINED_FUNCTION_2();
        v17 = 4294954510;
        v18 = 323;
      }

      else
      {
        if ([*(v3 + 16) allocateResourcesForInputImageWidth:*(v3 + 40) inputImageHeight:*(v3 + 44) shiftMapWidth:*(v3 + 48) shiftMapHeight:*(v3 + 52) enableForegroundBlur:{objc_msgSend(v3, "shouldEnableForegroundBlur")}])
        {
          return 0;
        }

        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v23, v25, v26, v27, v28, v29, v30);
        v14 = OUTLINED_FUNCTION_2();
        v17 = 4294954510;
        v18 = 334;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v23, v25, v26, v27, v28, v29, v30);
      v14 = OUTLINED_FUNCTION_2();
      v17 = 4294954510;
      v18 = 320;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v17, "<<<< BWStillImageMetalBlurMapRenderer >>>>", v18, v2, v15, v16, v21);
  }

  return 4294954510;
}

- (void)bundleOptionsDictionary
{
  if (result)
  {
    v1 = result[1];
    if (v1)
    {
      v4 = *off_1E798A9D0;
      v5 = v1;
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      v2 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v2, v3, v4, v5, v6, v7, vars0, vars8);
      return 0;
    }
  }

  return result;
}

- (uint64_t)_allocateBlurMapPixelBufferPoolForBuffersOfWidth:(uint64_t)width height:(int)height enableForegroundBlur:
{
  if (self && !*(self + 24))
  {
    if (height)
    {
      v6 = 843264056;
    }

    else
    {
      v6 = 1278226488;
    }

    v24[0] = *MEMORY[0x1E6966208];
    v25[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
    v24[1] = *MEMORY[0x1E69660B8];
    v25[1] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:width];
    v24[2] = *MEMORY[0x1E6966130];
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
    v24[3] = *MEMORY[0x1E69660D8];
    v25[2] = v7;
    v25[3] = MEMORY[0x1E695E0F8];
    v8 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:4]);
    v23 = v8;
    v9 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1]);

    v21 = *MEMORY[0x1E6965C70];
    v19 = *MEMORY[0x1E6965F30];
    v20 = *MEMORY[0x1E6965F60];
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v11 = [BWPixelBufferPool alloc];
    v12 = +[BWMemoryPool sharedMemoryPool];
    LOBYTE(v15) = *(self + 32);
    v13 = [(BWPixelBufferPool *)v11 initWithVideoFormat:v9 capacity:2 name:@"Still Image Blur Map Pool" memoryPool:v12 additionalPixelBufferAttributes:v10 providesBackPressure:v15 reportSlowBackPressureAllocations:?];
    *(self + 24) = v13;
    if (!v13)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      LODWORD(v16) = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  return 0;
}

- (uint64_t)shouldEnableForegroundBlur
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v14, v15, v16, v17, v18, v19, vars0, vars8);
  v10 = OUTLINED_FUNCTION_2();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0xFFFFCE0ELL, "<<<< BWStillImageMetalBlurMapRenderer >>>>", 0x82, v9, v11, v12, a9);
}

@end