@interface BWStillImageMetalSDOFRenderer
- (BOOL)shouldEnableForegroundBlur;
- (BWStillImageMetalSDOFRenderer)initWithSDOFRenderingTuningParameters:(id)parameters imageDimensions:(id)dimensions depthDataMapDimensions:(id)mapDimensions portraitRenderQuality:(int)quality metalCommandQueue:(id)queue;
- (uint64_t)_loadAndConfigureSDOFRenderer;
- (void)bundleOptionsDictionary;
- (void)dealloc;
- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler;
@end

@implementation BWStillImageMetalSDOFRenderer

- (BWStillImageMetalSDOFRenderer)initWithSDOFRenderingTuningParameters:(id)parameters imageDimensions:(id)dimensions depthDataMapDimensions:(id)mapDimensions portraitRenderQuality:(int)quality metalCommandQueue:(id)queue
{
  v14.receiver = self;
  v14.super_class = BWStillImageMetalSDOFRenderer;
  v12 = [(BWStillImageMetalSDOFRenderer *)&v14 init];
  if (v12)
  {
    *(v12 + 1) = parameters;
    *(v12 + 28) = dimensions;
    *(v12 + 36) = mapDimensions;
    *(v12 + 6) = quality;
    *(v12 + 6) = queue;
    [(BWStillImageMetalSDOFRenderer *)v12 _loadAndConfigureSDOFRenderer];
  }

  return v12;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageMetalSDOFRenderer;
  [(BWStillImageMetalSDOFRenderer *)&v3 dealloc];
}

- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler
{
  v13 = CMGetAttachment(sampleBuffer, @"PortraitStillImageFaceAdjustedBlurMap", 0);
  if (!v13)
  {
    [BWStillImageMetalSDOFRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
    goto LABEL_15;
  }

  v14 = v13;
  AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F21AABB0);
  if (AttachedMedia)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
  }

  else
  {
    ImageBuffer = 0;
  }

  v17 = BWSampleBufferGetAttachedMedia(sampleBuffer, 0x1F217BF50);
  if (v17)
  {
    v18 = CMSampleBufferGetImageBuffer(v17);
  }

  else
  {
    v18 = 0;
  }

  if ([(FigSDOFEffectRendering *)self->_sdofEffectRenderer runSamplingWithImage:sampleBuffer inputPixelBuffer:buffer inputFaceAdjustedBlurMap:v14 inputAlphaMask:ImageBuffer inputGainMap:v18 resultImage:processedPixelBuffer])
  {
    [BWStillImageMetalSDOFRenderer renderUsingParameters:inputPixelBuffer:inputSampleBuffer:originalPixelBuffer:processedPixelBuffer:completionHandler:];
LABEL_15:
    v19 = 0;
    if (!handler)
    {
      return;
    }

    goto LABEL_10;
  }

  v19 = 2;
  if (!handler)
  {
    return;
  }

LABEL_10:
  v20 = *(handler + 2);

  v20(handler, v19, 0);
}

- (uint64_t)_loadAndConfigureSDOFRenderer
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v25 = 0;
  bundleOptionsDictionary = [(BWStillImageMetalSDOFRenderer *)result bundleOptionsDictionary];
  if (!bundleOptionsDictionary)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v21, v23, v25, v26, v27, v28, v29);
    v13 = OUTLINED_FUNCTION_2();
    v16 = 4294954510;
    v17 = 243;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v16, "<<<< BWStillImageMetalSDOFRenderer >>>>", v17, v1, v14, v15, v20);
  }

  v4 = bundleOptionsDictionary;
  v5 = [bundleOptionsDictionary objectForKeyedSubscript:*off_1E798A9D0];
  if (!v5)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v21, v23, v25, v26, v27, v28, v29);
    v13 = OUTLINED_FUNCTION_2();
    v16 = 4294954516;
    v17 = 247;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v16, "<<<< BWStillImageMetalSDOFRenderer >>>>", v17, v1, v14, v15, v20);
  }

  v6 = [v5 objectForKeyedSubscript:*off_1E798A9D8];
  if (!v6)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18, v21, v23, v25, v26, v27, v28, v29);
    v13 = OUTLINED_FUNCTION_2();
    v16 = 4294954516;
    v17 = 251;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v16, "<<<< BWStillImageMetalSDOFRenderer >>>>", v17, v1, v14, v15, v20);
  }

  intValue = [v6 intValue];
  if (intValue >= 5)
  {
    v8 = 5;
  }

  else
  {
    v8 = intValue;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@/%@V%d.bundle", @"/System/Library/VideoProcessors", @"SDOFRendering", v8, v25];
  v10 = [MEMORY[0x1E696AAE8] bundleWithPath:v9];
  if (!v10)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v22, v24, v25, v26, v27, v28, v29);
    v13 = OUTLINED_FUNCTION_2();
    v16 = 4294954510;
    v17 = 273;
    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v16, "<<<< BWStillImageMetalSDOFRenderer >>>>", v17, v1, v14, v15, v20);
  }

  v11 = v10;
  if ([v10 loadAndReturnError:&v25])
  {
    v12 = [objc_alloc(objc_msgSend(v11 classNamed:{@"FigSDOFEffectRendering", "initWithCommandQueue:", v2[6]}];
    v2[2] = v12;
    if (v12)
    {
      if ([v12 setOptions:v4])
      {
        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v22, v24, v25, v26, v27, v28, v29);
        v13 = OUTLINED_FUNCTION_2();
        v16 = 4294954510;
        v17 = 288;
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          [v2 shouldEnableForegroundBlur];
          if ([OUTLINED_FUNCTION_3_2() allocateResourcesForInputImageWidth:? inputImageHeight:? shiftMapWidth:? shiftMapHeight:? enableForegroundBlur:?])
          {
            return 0;
          }
        }

        else if ([OUTLINED_FUNCTION_3_2() allocateResourcesForInputImageWidth:? inputImageHeight:? shiftMapWidth:? shiftMapHeight:?])
        {
          return 0;
        }

        OUTLINED_FUNCTION_2();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v22, v24, v25, v26, v27, v28, v29);
        v13 = OUTLINED_FUNCTION_2();
        v16 = 4294954510;
        v17 = 306;
      }
    }

    else
    {
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_0_2();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v22, v24, v25, v26, v27, v28, v29);
      v13 = OUTLINED_FUNCTION_2();
      v16 = 4294954510;
      v17 = 285;
    }

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v16, "<<<< BWStillImageMetalSDOFRenderer >>>>", v17, v1, v14, v15, v20);
  }

  return 4294954510;
}

- (void)bundleOptionsDictionary
{
  if (result)
  {
    if (result[1])
    {
      v1 = *off_1E798A9D0;
      v7 = result[1];
      v2 = *off_1E798D328;
      v5 = v1;
      v6 = v2;
      v8 = [MEMORY[0x1E696AD98] numberWithInt:*(result + 6) != 0];
      return [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v5 count:2];
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_6();
      v3 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v3, v4, v5, v6, v7, v8, v9, v10);
      return 0;
    }
  }

  return result;
}

- (BOOL)shouldEnableForegroundBlur
{
  bundleOptionsDictionary = [(BWStillImageMetalSDOFRenderer *)self bundleOptionsDictionary];
  if (!bundleOptionsDictionary)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v24, v25, v26, v27, v28, v29, v30);
    v15 = OUTLINED_FUNCTION_2();
    v18 = 4294954510;
    v19 = 199;
LABEL_16:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v18, "<<<< BWStillImageMetalSDOFRenderer >>>>", v19, v2, v16, v17, v23);
    return 0;
  }

  v4 = [bundleOptionsDictionary objectForKeyedSubscript:*off_1E798A9D0];
  if (!v4)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v24, v25, v26, v27, v28, v29, v30);
    v15 = OUTLINED_FUNCTION_2();
    v18 = 4294954516;
    v19 = 203;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [v4 objectForKeyedSubscript:*off_1E798A9D8];
  if (!v6)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v24, v25, v26, v27, v28, v29, v30);
    v15 = OUTLINED_FUNCTION_2();
    v18 = 4294954516;
    v19 = 207;
    goto LABEL_16;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v6, "unsignedIntValue")}];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderingV%@", v7];
  if (!v8)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v24, v25, v26, v27, v28, v29, v30);
    v15 = OUTLINED_FUNCTION_2();
    v18 = 4294954516;
    v19 = 212;
    goto LABEL_16;
  }

  v9 = v8;
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"RenderingV%@_NMP", v7];
  if (!v10)
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v22, v24, v25, v26, v27, v28, v29, v30);
    v15 = OUTLINED_FUNCTION_2();
    v18 = 4294954516;
    v19 = 214;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = [objc_msgSend(v5 objectForKeyedSubscript:{v9), "objectForKeyedSubscript:", @"fgNRings"}];
  v13 = [objc_msgSend(v5 objectForKeyedSubscript:{v11), "objectForKeyedSubscript:", @"fgNRings"}];
  if (v12 && [v12 unsignedIntValue])
  {
    return 1;
  }

  if (v13)
  {
    return [v13 unsignedIntValue] != 0;
  }

  return 0;
}

@end