@interface BWStreamingCVAFilterRenderer
+ (void)initialize;
- (BWStreamingCVAFilterRenderer)initWithCaptureDevice:(id)device studioAndContourRenderingEnabled:(BOOL)enabled stageRenderingEnabled:(BOOL)renderingEnabled depthDataSource:(int)source foregroundBlurEnabled:(BOOL)blurEnabled depthFilterRenderingIsAfterPreviewStitcher:(BOOL)stitcher commandQueue:(id)queue priority:(unsigned int)self0 mirroredForMetadataAdjustment:(BOOL)self1 rotationDegreesForMetadataAdjustment:(int)self2 secondaryStreamingPersonSegmentationEnabled:(BOOL)self3 cropDepthToPrimaryCaptureAspectRatio:(BOOL)self4 disableDepthAndSegmentationRotationInLandscape:(BOOL)self5;
- (float)portraitLightingEffectStrength;
- (float)simulatedAperture;
- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key;
- (uint64_t)mattingRequest:(uint64_t)result didCompleteMattingWithResult:;
- (void)_removeFaceVisibilityForFacesMissingFromDetectedFaces:(uint64_t)faces;
- (void)adjustMetadataOfSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (void)dealloc;
- (void)disparityPostprocessingRequest:(void *)request didCompleteDisparityPostprocessingWithResult:;
- (void)portraitRequest:(void *)request didCompletePortraitWithResult:(uint64_t)result completionHandler:;
- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler;
- (void)setPortraitLightingEffectStrength:(float)strength;
- (void)setSimulatedAperture:(float)aperture;
@end

@implementation BWStreamingCVAFilterRenderer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStreamingCVAFilterRenderer)initWithCaptureDevice:(id)device studioAndContourRenderingEnabled:(BOOL)enabled stageRenderingEnabled:(BOOL)renderingEnabled depthDataSource:(int)source foregroundBlurEnabled:(BOOL)blurEnabled depthFilterRenderingIsAfterPreviewStitcher:(BOOL)stitcher commandQueue:(id)queue priority:(unsigned int)self0 mirroredForMetadataAdjustment:(BOOL)self1 rotationDegreesForMetadataAdjustment:(int)self2 secondaryStreamingPersonSegmentationEnabled:(BOOL)self3 cropDepthToPrimaryCaptureAspectRatio:(BOOL)self4 disableDepthAndSegmentationRotationInLandscape:(BOOL)self5
{
  renderingEnabledCopy = renderingEnabled;
  v26.receiver = self;
  v26.super_class = BWStreamingCVAFilterRenderer;
  v21 = [(BWStreamingCVAFilterRenderer *)&v26 init];
  if (v21)
  {
    v21->_sharedContextQueue = dispatch_queue_create("com.apple.bwgraph.streaming-cva-renderer.context-queue", 0);
    v21->_notificationQueue = FigDispatchQueueCreateWithPriority();
    v21->_commandQueue = queue;
    v21->_depthFilterRenderingIsAfterPreviewStitcher = stitcher;
    v21->_animator = -[BWStreamingCVAFilterRendererAnimator initWithEffectStatus:overCaptureEnabled:]([BWStreamingCVAFilterRendererAnimator alloc], "initWithEffectStatus:overCaptureEnabled:", [device shallowDepthOfFieldEffectStatus], objc_msgSend(device, "overCaptureEnabled"));
    v21->_previousSkinSegmentationPixelBuffer = 0;
    v21->_previousDisparityPixelBuffer = 0;
    v21->_previousForegroundSegmentationPixelBuffer = 0;
    sharedContextQueue = v21->_sharedContextQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __407__BWStreamingCVAFilterRenderer_initWithCaptureDevice_studioAndContourRenderingEnabled_stageRenderingEnabled_depthDataSource_foregroundBlurEnabled_depthFilterRenderingIsAfterPreviewStitcher_commandQueue_priority_mirroredForMetadataAdjustment_rotationDegreesForMetadataAdjustment_secondaryStreamingPersonSegmentationEnabled_cropDepthToPrimaryCaptureAspectRatio_disableDepthAndSegmentationRotationInLandscape___block_invoke;
    block[3] = &unk_1E798F870;
    block[4] = v21;
    dispatch_sync(sharedContextQueue, block);
    v21->_depthDataSource = source;
    v21->_captureDevice = device;
    v21->_studioAndContourRenderingEnabled = enabled;
    v21->_stageRenderingEnabled = renderingEnabledCopy;
    if (renderingEnabledCopy)
    {
      v23 = objc_alloc_init(BWSpringSimulation);
      v21->_stageProxyLiveRenderingSpringSimulation = v23;
      [(BWSpringSimulation *)v23 resetWithInput:1.0 initialOutput:0.0 initialVelocity:0.0];
      [(BWSpringSimulation *)v21->_stageProxyLiveRenderingSpringSimulation setTension:800.0];
      [(BWSpringSimulation *)v21->_stageProxyLiveRenderingSpringSimulation setFriction:20.0];
    }

    v21->_objectVisibilityByID = objc_alloc_init(MEMORY[0x1E695DF90]);
    v21->_objectVisibilityByIDLock._os_unfair_lock_opaque = 0;
    v21->_postprocessedFaces = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21->_foregroundBlurEnabled = blurEnabled;
    v21->_mirroredForMetadataAdjustment = adjustment;
    v21->_rotationDegreesForMetadataAdjustment = metadataAdjustment;
    v21->_secondaryStreamingPersonSegmentationEnabled = segmentationEnabled;
    v21->_cropDepthToPrimaryCaptureAspectRatio = ratio;
    v21->_disableDepthAndSegmentationRotationInLandscape = landscape;
  }

  return v21;
}

void *__407__BWStreamingCVAFilterRenderer_initWithCaptureDevice_studioAndContourRenderingEnabled_stageRenderingEnabled_depthDataSource_foregroundBlurEnabled_depthFilterRenderingIsAfterPreviewStitcher_commandQueue_priority_mirroredForMetadataAdjustment_rotationDegreesForMetadataAdjustment_secondaryStreamingPersonSegmentationEnabled_cropDepthToPrimaryCaptureAspectRatio_disableDepthAndSegmentationRotationInLandscape___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 192) isDepthAvailable];
  *(*(a1 + 32) + 24) = result;
  *(*(a1 + 32) + 56) = 0;
  *(*(a1 + 32) + 60) = 2143289344;
  return result;
}

- (void)dealloc
{
  sharedContextQueue = self->_sharedContextQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__BWStreamingCVAFilterRenderer_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(sharedContextQueue, block);

  mattingBuffer = self->_mattingBuffer;
  if (mattingBuffer)
  {
    CFRelease(mattingBuffer);
  }

  previousForegroundSegmentationPixelBuffer = self->_previousForegroundSegmentationPixelBuffer;
  if (previousForegroundSegmentationPixelBuffer)
  {
    CFRelease(previousForegroundSegmentationPixelBuffer);
  }

  previousSkinSegmentationPixelBuffer = self->_previousSkinSegmentationPixelBuffer;
  if (previousSkinSegmentationPixelBuffer)
  {
    CFRelease(previousSkinSegmentationPixelBuffer);
  }

  previousDisparityPixelBuffer = self->_previousDisparityPixelBuffer;
  if (previousDisparityPixelBuffer)
  {
    CFRelease(previousDisparityPixelBuffer);
  }

  v8.receiver = self;
  v8.super_class = BWStreamingCVAFilterRenderer;
  [(BWStreamingCVAFilterRenderer *)&v8 dealloc];
}

void __39__BWStreamingCVAFilterRenderer_dealloc__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 32) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(*(a1 + 32) + 80);
}

- (void)setSimulatedAperture:(float)aperture
{
  sharedContextQueue = self->_sharedContextQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__BWStreamingCVAFilterRenderer_setSimulatedAperture___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  apertureCopy = aperture;
  dispatch_sync(sharedContextQueue, v4);
}

float __53__BWStreamingCVAFilterRenderer_setSimulatedAperture___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 56) = result;
  return result;
}

- (float)simulatedAperture
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sharedContextQueue = self->_sharedContextQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__BWStreamingCVAFilterRenderer_simulatedAperture__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sharedContextQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __49__BWStreamingCVAFilterRenderer_simulatedAperture__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 56);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)setPortraitLightingEffectStrength:(float)strength
{
  sharedContextQueue = self->_sharedContextQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__BWStreamingCVAFilterRenderer_setPortraitLightingEffectStrength___block_invoke;
  v4[3] = &unk_1E7991CF0;
  v4[4] = self;
  strengthCopy = strength;
  dispatch_sync(sharedContextQueue, v4);
}

float __66__BWStreamingCVAFilterRenderer_setPortraitLightingEffectStrength___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 60) = result;
  return result;
}

- (float)portraitLightingEffectStrength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  sharedContextQueue = self->_sharedContextQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__BWStreamingCVAFilterRenderer_portraitLightingEffectStrength__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(sharedContextQueue, v5);
  v3 = v7[6];
  _Block_object_dispose(&v6, 8);
  return v3;
}

float __62__BWStreamingCVAFilterRenderer_portraitLightingEffectStrength__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 60);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key
{
  v65 = 0;
  if (!parameters)
  {
    goto LABEL_177;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v9 = [parameters prepareForRenderingWithInputVideoFormat:format];
  if (!v9)
  {
LABEL_177:
    if (self->_portraitVideoPipeline)
    {
      return 0;
    }

    self->_hasSeenDepth = 0;
    *&self->_maxFramesWithoutDepth = 1;
    self->_hasSeenSegmentation = 0;
    *&self->_maxFramesWithoutSegmentation = 6;
    v10 = [objc_msgSend(key objectForKeyedSubscript:{@"Depth", "resolvedVideoFormat"}];
    if (!format)
    {
      [BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:v10 inputVideoFormat:? inputMediaPropertiesByAttachedMediaKey:?];
      goto LABEL_72;
    }

    v11 = v10;
    if (!self->_depthDataSource && !v10)
    {
      [BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:inputVideoFormat:inputMediaPropertiesByAttachedMediaKey:];
      goto LABEL_72;
    }

    position = [(BWFigVideoCaptureDevice *)self->_captureDevice position];
    bravoSuperWideCaptureStream = [(BWFigVideoCaptureDevice *)self->_captureDevice bravoSuperWideCaptureStream];
    requestedZoomFactorWithoutFudge = [(BWZoomCommandHandler *)[(BWFigVideoCaptureDevice *)self->_captureDevice zoomCommandHandler] requestedZoomFactorWithoutFudge];
    v16 = v15;
    depthFilterRenderingIsAfterPreviewStitcher = self->_depthFilterRenderingIsAfterPreviewStitcher;
    ModelSpecificName = FigCaptureGetModelSpecificName(requestedZoomFactorWithoutFudge, v18);
    if ([ModelSpecificName hasPrefix:@"N104"])
    {
      v20 = position == 2;
      v21 = 18;
      goto LABEL_10;
    }

    if ([ModelSpecificName hasPrefix:@"D42"])
    {
      v23 = 12;
      if (bravoSuperWideCaptureStream)
      {
        v23 = 13;
      }

      v24 = position == 2;
      v25 = 14;
      goto LABEL_21;
    }

    if ([ModelSpecificName hasPrefix:@"D43"])
    {
      v23 = 15;
      if (bravoSuperWideCaptureStream)
      {
        v23 = 16;
      }

      v24 = position == 2;
      v25 = 17;
      goto LABEL_21;
    }

    if ([ModelSpecificName hasPrefix:@"J317"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J318"))
    {
      goto LABEL_26;
    }

    if ([ModelSpecificName hasPrefix:@"J320"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J321"))
    {
LABEL_56:
      v22 = 11;
      goto LABEL_27;
    }

    if ([ModelSpecificName hasPrefix:@"D79"])
    {
      goto LABEL_58;
    }

    if (([ModelSpecificName hasPrefix:@"J417"] & 1) == 0 && (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J418") & 1) == 0)
    {
      if ([ModelSpecificName hasPrefix:@"J420"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J421"))
      {
        goto LABEL_56;
      }

      if ([ModelSpecificName hasPrefix:@"D52g"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D53g"))
      {
        v20 = position == 2;
        v21 = 22;
        goto LABEL_10;
      }

      if ([ModelSpecificName hasPrefix:@"D53p"])
      {
        v49 = bravoSuperWideCaptureStream == 0;
        v23 = 24;
LABEL_80:
        if (!v49)
        {
          ++v23;
        }

        v24 = position == 2;
        v25 = 26;
        goto LABEL_21;
      }

      if ([ModelSpecificName hasPrefix:@"D54p"])
      {
        v49 = bravoSuperWideCaptureStream == 0;
        v23 = 27;
        goto LABEL_80;
      }

      if (([ModelSpecificName hasPrefix:@"J517"] & 1) == 0 && (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J518") & 1) == 0)
      {
        if ([ModelSpecificName hasPrefix:@"J522"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"J523"))
        {
          goto LABEL_56;
        }

        if ([ModelSpecificName hasPrefix:@"D16"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D17"))
        {
          v20 = position == 2;
          v21 = 29;
LABEL_10:
          if (v20)
          {
            v22 = v21 + 1;
          }

          else
          {
            v22 = v21;
          }

          goto LABEL_27;
        }

        if ([ModelSpecificName hasPrefix:@"D27"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D28"))
        {
          if (position == 2)
          {
            v22 = 37;
          }

          else
          {
            v22 = 38;
          }

          goto LABEL_27;
        }

        if ([ModelSpecificName hasPrefix:@"D37"])
        {
LABEL_96:
          if (position != 2)
          {
            v50 = !depthFilterRenderingIsAfterPreviewStitcher;
            v51 = 42;
LABEL_107:
            v52 = 48;
LABEL_108:
            if (v50)
            {
              v22 = v51;
            }

            else
            {
              v22 = v52;
            }

            goto LABEL_27;
          }

          goto LABEL_100;
        }

        if ([ModelSpecificName hasPrefix:@"D38"])
        {
          goto LABEL_99;
        }

        if ([ModelSpecificName hasPrefix:@"D47"])
        {
          goto LABEL_96;
        }

        if ([ModelSpecificName hasPrefix:@"D48"])
        {
LABEL_99:
          if (position != 2)
          {
            v50 = !depthFilterRenderingIsAfterPreviewStitcher;
            v51 = 43;
            goto LABEL_107;
          }

LABEL_100:
          v50 = !depthFilterRenderingIsAfterPreviewStitcher;
          v51 = 33;
          v52 = 49;
          goto LABEL_108;
        }

        if ([ModelSpecificName hasPrefix:@"V59"])
        {
          if (position == 2)
          {
            goto LABEL_100;
          }

          v24 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters monocularStreamingDepthType]== 2;
          v23 = 50;
          v25 = 48;
LABEL_21:
          if (v24)
          {
            v22 = v25;
          }

          else
          {
            v22 = v23;
          }

          goto LABEL_27;
        }

        if ([ModelSpecificName hasPrefix:@"V57"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D23"))
        {
          goto LABEL_113;
        }

        if ([ModelSpecificName hasPrefix:@"D63"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D64"))
        {
          v23 = 31;
          if (!bravoSuperWideCaptureStream)
          {
            v23 = 32;
          }

          v24 = position == 2;
          v25 = 30;
          goto LABEL_21;
        }

        if ([ModelSpecificName hasPrefix:@"D73"] || objc_msgSend(ModelSpecificName, "hasPrefix:", @"D74"))
        {
          if (position != 2)
          {
            v23 = 34;
            if (v16 == 4.0)
            {
              v23 = 35;
            }

            v24 = bravoSuperWideCaptureStream == 0;
            v25 = 36;
            goto LABEL_21;
          }

          v22 = 33;
LABEL_27:
          v26 = [MEMORY[0x1E698C0E0] videoPipelinePropertiesForDevice:v22];
          if (v26)
          {
            v27 = v26;
            width = [format width];
            height = [format height];
            [v27 setColorPixelBufferWidth:width];
            [v27 setColorPixelBufferHeight:height];
            [v27 setAlphaMattePixelBufferWidth:width];
            [v27 setAlphaMattePixelBufferHeight:height];
            depthDataSource = self->_depthDataSource;
            switch(depthDataSource)
            {
              case 2:
                goto LABEL_31;
              case 1:
                [v27 setFocusStatisticsXTileCount:24];
                [v27 setFocusStatisticsYTileCount:19];
                [(BWFigVideoCaptureStream *)[(BWFigVideoCaptureDevice *)self->_captureDevice captureStream] focalLength];
                [v27 setColorPixelBufferFocalLength_mm:?];
                [(BWFigVideoCaptureStream *)[(BWFigVideoCaptureDevice *)self->_captureDevice captureStream] pixelSize];
                [v27 setColorPixelBufferPixelSize_um:?];
                [(BWFigVideoCaptureStream *)[(BWFigVideoCaptureDevice *)self->_captureDevice captureStream] lensFNumber];
                [v27 setColorPixelBufferFocalRatio:?];
                break;
              case 0:
LABEL_31:
                [v27 setInputDisparityPixelBufferWidth:{objc_msgSend(v11, "width")}];
                [v27 setInputDisparityPixelBufferHeight:{objc_msgSend(v11, "height")}];
                break;
            }

            if (self->_foregroundBlurEnabled)
            {
              v31 = 1751411059;
            }

            else if (self->_depthDataSource == 2)
            {
              v31 = 1717855600;
            }

            else
            {
              v31 = 825306677;
            }

            self->_requiredDisparityFormat = v31;
            [v27 setInputDisparityPixelBufferPixelFormat:?];
            if (self->_foregroundBlurEnabled && position == 2)
            {
              inputToOutputDisparityPixelBufferRotation = 0;
            }

            else
            {
              inputToOutputDisparityPixelBufferRotation = [v27 inputToOutputDisparityPixelBufferRotation];
            }

            [v27 setInputToOutputDisparityPixelBufferRotation:inputToOutputDisparityPixelBufferRotation];
            if (self->_depthFilterRenderingIsAfterPreviewStitcher && ![(BWFigVideoCaptureDevice *)self->_captureDevice isBravoVariant])
            {
              [v27 setOutputDisparityPixelBufferWidth:{objc_msgSend(v11, "height")}];
              [v27 setOutputDisparityPixelBufferHeight:{objc_msgSend(v11, "width")}];
              if (position == 2)
              {
                v33 = 1;
              }

              else
              {
                v33 = 3;
              }

              [v27 setInputToOutputDisparityPixelBufferRotation:v33];
            }

            outputDisparityPixelBufferWidth = [v27 outputDisparityPixelBufferWidth];
            outputDisparityPixelBufferHeight = [v27 outputDisparityPixelBufferHeight];

            v36 = [MEMORY[0x1E698C0E0] portraitVideoPipelineWithProperties:v27 commandQueue:self->_commandQueue notificationQueue:self->_notificationQueue error:&v65];
            self->_portraitVideoPipeline = v36;
            if (v36)
            {
              v63[0] = *MEMORY[0x1E6966208];
              v64[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLong:outputDisparityPixelBufferWidth];
              v63[1] = *MEMORY[0x1E69660B8];
              v37 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:outputDisparityPixelBufferHeight];
              v38 = *MEMORY[0x1E6966130];
              v64[1] = v37;
              v64[2] = &unk_1F22488C8;
              v39 = *MEMORY[0x1E69660D8];
              v63[2] = v38;
              v63[3] = v39;
              v40 = MEMORY[0x1E695E0F8];
              v64[3] = MEMORY[0x1E695E0F8];
              v41 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:4]);
              v62 = v41;
              v42 = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v62 count:1]);

              self->_postprocessedDisparityBufferPool = [[BWPixelBufferPool alloc] initWithVideoFormat:v42 capacity:4 name:@"Postprocessed Disparity Pool" memoryPool:+[BWMemoryPool sharedMemoryPool]];
              p_mattingBuffer = &self->_mattingBuffer;
              mattingBuffer = self->_mattingBuffer;
              if (mattingBuffer)
              {
                CFRelease(mattingBuffer);
                *p_mattingBuffer = 0;
              }

              v60 = v39;
              v61 = v40;
              v45 = CVPixelBufferCreate(0, width, height, 0x4C303038u, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1], &self->_mattingBuffer);
              if (*p_mattingBuffer)
              {
                return 0;
              }

              [BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:v45 inputVideoFormat:? inputMediaPropertiesByAttachedMediaKey:?];
              goto LABEL_72;
            }

            if (([BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:&v66 inputVideoFormat:? inputMediaPropertiesByAttachedMediaKey:?]& 1) == 0)
            {
              v46 = v66;
              goto LABEL_73;
            }

            return 0;
          }

          [BWStreamingCVAFilterRenderer prepareForRenderingWithParameters:inputVideoFormat:inputMediaPropertiesByAttachedMediaKey:];
LABEL_72:
          v46 = -12780;
          goto LABEL_73;
        }

        if (([ModelSpecificName hasPrefix:@"D83"] & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"D84") & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"D93") & 1) != 0 || (objc_msgSend(ModelSpecificName, "hasPrefix:", @"D94") & 1) != 0 || objc_msgSend(ModelSpecificName, "hasPrefix:", @"T2030"))
        {
          v53 = 33;
          if (depthFilterRenderingIsAfterPreviewStitcher)
          {
            v53 = 49;
          }

          if (position == 2)
          {
            v22 = v53;
          }

          else
          {
            v22 = 48;
          }

          goto LABEL_27;
        }

        if (([ModelSpecificName hasPrefix:@"V53"] & 1) != 0 || objc_msgSend(ModelSpecificName, "hasPrefix:", @"V54"))
        {
LABEL_113:
          v24 = position == 2;
          v23 = 48;
          v25 = 51;
          goto LABEL_21;
        }

        if ([ModelSpecificName hasPrefix:@"D49"])
        {
LABEL_58:
          v20 = position == 2;
          v21 = 20;
          goto LABEL_10;
        }

        if ([ModelSpecificName hasPrefix:@"J617"])
        {
          if (position != 2)
          {
            if (([ModelSpecificName hasPrefix:@"J620"] & 1) == 0)
            {
              [ModelSpecificName hasPrefix:@"J621"];
            }

            goto LABEL_150;
          }
        }

        else
        {
          v54 = [ModelSpecificName hasPrefix:@"J618"];
          if (position != 2 || (v54 & 1) == 0)
          {
            if ([ModelSpecificName hasPrefix:@"J620"])
            {
              if (position == 2)
              {
                goto LABEL_56;
              }
            }

            else
            {
              v55 = [ModelSpecificName hasPrefix:@"J621"];
              if (position == 2 && (v55 & 1) != 0)
              {
                goto LABEL_56;
              }
            }

LABEL_150:
            if ([ModelSpecificName hasPrefix:@"J717"])
            {
              if (position == 2)
              {
                goto LABEL_167;
              }

              if (([ModelSpecificName hasPrefix:@"J720"] & 1) == 0)
              {
                [ModelSpecificName hasPrefix:@"J721"];
              }
            }

            else
            {
              v56 = [ModelSpecificName hasPrefix:@"J718"];
              if (position == 2 && (v56 & 1) != 0)
              {
                goto LABEL_167;
              }

              if ([ModelSpecificName hasPrefix:@"J720"])
              {
                if (position == 2)
                {
                  goto LABEL_173;
                }
              }

              else
              {
                v57 = [ModelSpecificName hasPrefix:@"J721"];
                if (position == 2 && (v57 & 1) != 0)
                {
                  goto LABEL_173;
                }
              }
            }

            if ([ModelSpecificName hasPrefix:@"J817"])
            {
              if (position != 2)
              {
                if (([ModelSpecificName hasPrefix:@"J820"] & 1) == 0)
                {
                  [ModelSpecificName hasPrefix:@"J821"];
                }

LABEL_174:
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Failed to find CVAVideoPipelineDevice for modelSpecificName: %@, isFrontCamera: %d, zoomFactor %f", ModelSpecificName, position == 2, v16), 0}]);
              }

LABEL_167:
              v22 = 46;
              goto LABEL_27;
            }

            v58 = [ModelSpecificName hasPrefix:@"J818"];
            if (position == 2 && (v58 & 1) != 0)
            {
              goto LABEL_167;
            }

            if ([ModelSpecificName hasPrefix:@"J820"])
            {
              if (position != 2)
              {
                goto LABEL_174;
              }
            }

            else
            {
              v59 = [ModelSpecificName hasPrefix:@"J821"];
              if (position != 2 || (v59 & 1) == 0)
              {
                goto LABEL_174;
              }
            }

LABEL_173:
            v22 = 47;
            goto LABEL_27;
          }
        }
      }
    }

LABEL_26:
    v22 = 10;
    goto LABEL_27;
  }

  v46 = v9;
LABEL_73:

  self->_portraitVideoPipeline = 0;
  v48 = self->_mattingBuffer;
  if (v48)
  {
    CFRelease(v48);
    self->_mattingBuffer = 0;
  }

  return v46;
}

- (void)renderUsingParameters:(id)parameters inputPixelBuffer:(__CVBuffer *)buffer inputSampleBuffer:(opaqueCMSampleBuffer *)sampleBuffer originalPixelBuffer:(__CVBuffer *)pixelBuffer processedPixelBuffer:(__CVBuffer *)processedPixelBuffer completionHandler:(id)handler
{
  v9 = MEMORY[0x1EEE9AC00](self, a2, parameters, buffer);
  v68 = v11;
  v69 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = v9;
  v119[5] = v9;
  v120[0] = 0;
  v119[0] = 0;
  v119[1] = v119;
  v119[2] = 0x3052000000;
  v119[3] = __Block_byref_object_copy__22;
  v119[4] = __Block_byref_object_dispose__22;
  theDict = CMGetAttachment(v12, *off_1E798A3C8, 0);
  target = v13;
  AttachedMedia = BWSampleBufferGetAttachedMedia(v13, @"Depth");
  v20 = [-[__CFDictionary objectForKeyedSubscript:](theDict objectForKeyedSubscript:{*off_1E798A660), "BOOLValue"}];
  if (AttachedMedia)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
    if (CVPixelBufferGetPixelFormatType(ImageBuffer) != *(v18 + 120))
    {
      BWSampleBufferRemoveAttachedMedia(target, @"Depth");
      ImageBuffer = 0;
    }
  }

  else
  {
    ImageBuffer = 0;
  }

  if (*(v18 + 256) == 1)
  {
    v21 = BWSampleBufferGetAttachedMedia(target, 0x1F21AAC10);
    v22 = BWSampleBufferGetAttachedMedia(target, 0x1F21AAC50);
  }

  else
  {
    v21 = BWSampleBufferGetAttachedMedia(target, 0x1F21AABF0);
    v22 = BWSampleBufferGetAttachedMedia(target, 0x1F21AAC30);
  }

  v23 = v22;
  if (v21)
  {
    v24 = CMSampleBufferGetImageBuffer(v21);
  }

  else
  {
    v24 = CMGetAttachment(target, *off_1E798A4C8, 0);
  }

  v25 = v24;
  if (v23)
  {
    cf = CMSampleBufferGetImageBuffer(v23);
  }

  else
  {
    cf = 0;
  }

  v65 = [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B2E8];
  v26 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v26;
  if (target)
  {
    v27 = CMGetAttachment(target, *off_1E798A430, 0);
    if (v27)
    {
      CGRectMakeWithDictionaryRepresentation(v27, &rect);
      Width = CVPixelBufferGetWidth(v15);
      Height = CVPixelBufferGetHeight(v15);
      FigCaptureMetadataUtilitiesDenormalizeCropRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, Width, Height);
      rect.origin.x = v30;
      rect.origin.y = v31;
      rect.size.width = v32;
      rect.size.height = v33;
    }
  }

  v114 = 0;
  v115 = &v114;
  v116 = 0x2020000000;
  v117 = 0;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3052000000;
  v111 = __Block_byref_object_copy__22;
  v112 = __Block_byref_object_dispose__22;
  v113 = 0;
  v104 = 0;
  v105 = &v104;
  v106 = 0x2020000000;
  v107 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3052000000;
  v101 = __Block_byref_object_copy__22;
  v102 = __Block_byref_object_dispose__22;
  v103 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v97 = 0;
  v92 = 0;
  v93 = &v92;
  v94 = 0x2020000000;
  v95 = 0;
  v90[0] = 0;
  v90[1] = v90;
  v90[2] = 0x2020000000;
  v91 = 2143289344;
  v88[0] = 0;
  v88[1] = v88;
  v88[2] = 0x2020000000;
  v89 = 0;
  v34 = *(v18 + 8);
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __148__BWStreamingCVAFilterRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke;
  v87[3] = &unk_1E7997670;
  v87[5] = &v114;
  v87[4] = v18;
  v87[6] = &v108;
  v87[7] = &v104;
  v87[8] = &v98;
  v87[9] = v88;
  v87[10] = v96;
  v87[11] = &v92;
  v87[12] = v90;
  dispatch_sync(v34, v87);
  v67 = [CMGetAttachment(target @"StructuredLightRecentlyOccluded"];
  v35 = *(MEMORY[0x1E695F058] + 16);
  v85 = *MEMORY[0x1E695F058];
  v86 = v35;
  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
  BYTE4(v71) = ImageBuffer == 0;
  if (ImageBuffer)
  {
    *(v18 + 232) = 0;
    *(v18 + 225) = 1;
    if (!v21)
    {
      if (v20)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  if ((v20 & 1) == 0)
  {
    ++*(v18 + 232);
    if (!v21)
    {
LABEL_26:
      ++*(v18 + 244);
      goto LABEL_27;
    }

LABEL_25:
    *(v18 + 244) = 0;
    *(v18 + 236) = 1;
    goto LABEL_27;
  }

  if (v21)
  {
    goto LABEL_25;
  }

LABEL_27:
  if (*(v18 + 244) <= *(v18 + 240))
  {
    if (v25 && cf)
    {
      v39 = *(v18 + 128);
      if (v39)
      {
        CFRelease(v39);
      }

      *(v18 + 128) = CFRetain(v25);
      v40 = *(v18 + 136);
      if (v40)
      {
        CFRelease(v40);
      }

      *(v18 + 136) = CFRetain(cf);
    }
  }

  else
  {
    v37 = *(v18 + 128);
    if (v37)
    {
      CFRelease(v37);
    }

    v38 = *(v18 + 136);
    if (v38)
    {
      CFRelease(v38);
    }

    *(v18 + 128) = 0;
    *(v18 + 136) = 0;
  }

  if (*(v18 + 232) <= *(v18 + 228))
  {
    if (ImageBuffer)
    {
      v42 = *(v18 + 144);
      *(v18 + 144) = ImageBuffer;
      CFRetain(ImageBuffer);
      if (v42)
      {
        CFRelease(v42);
      }
    }
  }

  else
  {
    v41 = *(v18 + 144);
    if (v41)
    {
      CFRelease(v41);
      *(v18 + 144) = 0;
    }
  }

  if (v17)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  colorFilter = [v17 colorFilter];
  v44 = *(v18 + 152);
  if (v44 != 2)
  {
    if (v44 != 1)
    {
      if (v44)
      {
        goto LABEL_59;
      }

      goto LABEL_51;
    }

    if (v65)
    {
      if (!CGRectIfPresent)
      {
        goto LABEL_91;
      }

      goto LABEL_59;
    }

LABEL_97:
    v71 = 0;
    v56 = 0;
    goto LABEL_84;
  }

LABEL_51:
  if ((v67 & 1) != 0 || *(v18 + 225) != 1 || *(v18 + 232) > *(v18 + 228))
  {
    goto LABEL_60;
  }

  if (v20)
  {
    if (!(ImageBuffer | *(v18 + 144)))
    {
      goto LABEL_91;
    }

    goto LABEL_59;
  }

  if (!ImageBuffer)
  {
LABEL_91:
    BYTE4(v71) = 0;
    goto LABEL_99;
  }

LABEL_59:
  BYTE4(v71) = 0;
LABEL_60:
  if (colorFilter)
  {
    v84 = colorFilter;
    if (BWCIFilterArrayContainsFiltersRequiringSegmentation([MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1]))
    {
      if (*(v18 + 236) == 1 && *(v18 + 244) <= *(v18 + 240))
      {
        if (!v25)
        {
          if (!*(v18 + 128))
          {
LABEL_99:
            LOBYTE(v71) = 0;
            v56 = -12780;
            goto LABEL_84;
          }

          if (dword_1EB58E300)
          {
            v51 = v20;
          }

          else
          {
            v51 = 1;
          }

          if ((v51 & 1) == 0)
          {
            LODWORD(v82) = 0;
            type[0] = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      else
      {
        BYTE4(v71) = 1;
      }
    }
  }

  if (!theDict || !v15 || !v69)
  {
LABEL_98:
    LODWORD(v57) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v57, v8, v59, v60, v61, v62, v63, v64);
    goto LABEL_99;
  }

  if (*(v18 + 96) && *(v18 + 104))
  {
    CMGetAttachment(target, *off_1E798A510, 0);
    [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B308];
    [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B310];
    [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B208];
    [CMGetAttachment(target @"SDOFFocusLocked"];
    [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798D338];
    if ([-[__CFDictionary objectForKeyedSubscript:](theDict objectForKeyedSubscript:{*off_1E798B0A8), "intValue"}] == 4)
    {
      v45 = *(v105 + 6) + 1;
    }

    else
    {
      v45 = 0;
    }

    *(v105 + 6) = v45;
    shallowDepthOfFieldEffectStatus = [*(v18 + 160) shallowDepthOfFieldEffectStatus];
    v47 = CMGetAttachment(target, @"BWShallowDepthOfFieldEffectPreviewStatusOverride", 0);
    if (v47)
    {
      shallowDepthOfFieldEffectStatus = [v47 intValue];
    }

    LODWORD(v48) = *(v115 + 6);
    LODWORD(v49) = *(v93 + 6);
    [*(v18 + 192) simulateNextFrameWithEffectStatus:shallowDepthOfFieldEffectStatus portraitStability:v48 clientSuppliedSimulatedAperture:v49];
    v50 = [(__CFDictionary *)theDict objectForKeyedSubscript:*off_1E798B4B8];
    if (v50)
    {
      [v50 floatValue];
      v83 = 0;
      FigCaptureComputeImageGainFromMetadata();
    }

    goto LABEL_98;
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v8, v59, v60, v61, v62, v63, v64);
  LOBYTE(v71) = 0;
  v56 = -12786;
LABEL_84:
  v53 = *(v18 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __148__BWStreamingCVAFilterRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke_4;
  block[3] = &unk_1E7997710;
  v78 = v67;
  block[5] = 0;
  block[6] = &v104;
  v77 = 0;
  v79 = v71 & 1;
  block[4] = v18;
  v80 = BYTE4(v71);
  dispatch_sync(v53, block);
  if (!v120[0] && v56)
  {
    v54 = MEMORY[0x1E696ABC0];
    v74 = *MEMORY[0x1E696A578];
    v75 = @"Streaming CVA rendering failure";
    v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
    v120[0] = [v54 errorWithDomain:*MEMORY[0x1E696A768] code:v56 userInfo:v55];
  }

  if (v68)
  {
    (*(v68 + 16))(v68, 0);
  }

  _Block_object_dispose(v88, 8);
  _Block_object_dispose(v90, 8);
  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(v96, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v104, 8);
  _Block_object_dispose(&v108, 8);
  _Block_object_dispose(&v114, 8);
  _Block_object_dispose(v119, 8);
}

float __148__BWStreamingCVAFilterRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 24) = *(a1[4] + 48);
  *(*(a1[6] + 8) + 40) = *(a1[4] + 72);
  *(*(a1[7] + 8) + 24) = *(a1[4] + 52);
  *(*(a1[8] + 8) + 40) = *(a1[4] + 80);
  *(*(a1[9] + 8) + 24) = *(a1[4] + 88);
  *(*(a1[10] + 8) + 24) = *(a1[4] + 65);
  *(*(a1[11] + 8) + 24) = *(a1[4] + 56);
  result = *(a1[4] + 60);
  *(*(a1[12] + 8) + 24) = result;
  return result;
}

- (void)disparityPostprocessingRequest:(void *)request didCompleteDisparityPostprocessingWithResult:
{
  if (self)
  {
    v5 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      [request postprocessedDisparityPixelBuffer];
      kdebug_trace();
      if (*v5 == 1)
      {
        [request postprocessedDisparityPixelBuffer];
        kdebug_trace();
      }
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x3052000000;
    v32 = __Block_byref_object_copy__22;
    v33 = __Block_byref_object_dispose__22;
    v34 = MEMORY[0x1E695E0F0];
    v6 = *(self + 8);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __108__BWStreamingCVAFilterRenderer_disparityPostprocessingRequest_didCompleteDisparityPostprocessingWithResult___block_invoke;
    v28[3] = &unk_1E7997788;
    v28[4] = self;
    v28[5] = request;
    v28[6] = &v35;
    v28[7] = &v29;
    dispatch_sync(v6, v28);
    v7 = *(self + 160);
    [request backgroundDisparitySum];
    v9 = v8;
    [request invalidDisparityRatio];
    v11 = v10;
    [request closeCanonicalDisparityAverage];
    v13 = v12;
    faceCanonicalDisparityAverage = [request faceCanonicalDisparityAverage];
    [request erodedForegroundRatio];
    v16 = v15;
    [request foregroundRatio];
    v18 = v17;
    v19 = *(v36 + 24);
    v20 = v30[5];
    [request personSegmentationRatio];
    LODWORD(v22) = v21;
    LODWORD(v23) = v9;
    LODWORD(v24) = v11;
    LODWORD(v25) = v13;
    LODWORD(v26) = v16;
    LODWORD(v27) = v18;
    [v7 updateSDOFBackgroundShiftSum:faceCanonicalDisparityAverage invalidShiftRatio:v19 closeCanonicalDisparityAverage:v20 faceCanonicalDisparityAverages:v23 erodedForegroundRatio:v24 foregroundRatio:v25 occluded:v26 faces:v27 personSegmentationRatio:v22];

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v35, 8);
  }
}

- (uint64_t)mattingRequest:(uint64_t)result didCompleteMattingWithResult:
{
  if (result)
  {
    v1 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      result = kdebug_trace();
      if (*v1 == 1)
      {

        return kdebug_trace();
      }
    }
  }

  return result;
}

id __148__BWStreamingCVAFilterRenderer_renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_completionHandler___block_invoke_4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 192) isDepthAvailable];
  *(*(a1 + 32) + 24) = result;
  *(*(a1 + 32) + 64) = *(a1 + 60);
  *(*(a1 + 32) + 52) = *(*(*(a1 + 48) + 8) + 24);
  *(*(a1 + 32) + 88) = *(a1 + 56);
  if ((*(a1 + 61) & 1) == 0)
  {

    result = *(a1 + 40);
    *(*(a1 + 32) + 80) = result;
    *(*(a1 + 32) + 65) = *(a1 + 62);
  }

  return result;
}

- (void)adjustMetadataOfSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  v4 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v15 = *off_1E798B220;
  v5 = [v4 objectForKeyedSubscript:?];
  v6 = [v5 objectForKeyedSubscript:*off_1E798ACB8];
  v7 = *off_1E798ACE8;
  v8 = [v6 objectForKeyedSubscript:*off_1E798ACE8];
  if (!v8)
  {
    v8 = [v4 objectForKeyedSubscript:*off_1E798B218];
  }

  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v30 = 0;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v28 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  mirroredForMetadataAdjustment = self->_mirroredForMetadataAdjustment;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  rotationDegreesForMetadataAdjustment = self->_rotationDegreesForMetadataAdjustment;
  [(BWStreamingCVAFilterRenderer *)self _removeFaceVisibilityForFacesMissingFromDetectedFaces:v8];
  sharedContextQueue = self->_sharedContextQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__BWStreamingCVAFilterRenderer_adjustMetadataOfSampleBuffer___block_invoke;
  block[3] = &unk_1E7997738;
  block[6] = &v37;
  block[7] = &v33;
  block[8] = v31;
  block[9] = v29;
  block[10] = v27;
  block[4] = self;
  block[5] = v8;
  dispatch_sync(sharedContextQueue, block);
  if ([v8 count])
  {
    if (*(v38 + 24) == 1)
    {
      if (v34[3])
      {
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __61__BWStreamingCVAFilterRenderer_adjustMetadataOfSampleBuffer___block_invoke_2;
        v21[3] = &unk_1E7997760;
        v21[4] = self;
        v21[5] = v27;
        v21[6] = v31;
        v21[7] = v29;
        v21[8] = &v33;
        v21[9] = v25;
        v21[10] = v23;
        v10 = [MEMORY[0x1E696AE18] predicateWithBlock:v21];
        if (!CVPixelBufferLockBaseAddress(v34[3], 1uLL))
        {
          if (v5)
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v11 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
            if (v11)
            {
              v12 = *v18;
              do
              {
                v13 = 0;
                do
                {
                  if (*v18 != v12)
                  {
                    objc_enumerationMutation(v5);
                  }

                  [objc_msgSend(v5 objectForKeyedSubscript:{*(*(&v17 + 1) + 8 * v13)), "setObject:forKeyedSubscript:", objc_msgSend(objc_msgSend(objc_msgSend(v5, "objectForKeyedSubscript:", *(*(&v17 + 1) + 8 * v13)), "objectForKeyedSubscript:", v7), "filteredArrayUsingPredicate:", v10), v7}];
                  ++v13;
                }

                while (v11 != v13);
                v11 = [v5 countByEnumeratingWithState:&v17 objects:v16 count:16];
              }

              while (v11);
            }

            [v4 setObject:v5 forKeyedSubscript:v15];
          }

          else
          {
            [v4 setObject:objc_msgSend(v8 forKeyedSubscript:{"filteredArrayUsingPredicate:", v10), *off_1E798B218}];
          }

          CVPixelBufferUnlockBaseAddress(v34[3], 1uLL);
        }
      }
    }
  }

  v14 = v34[3];
  if (v14)
  {
    CFRelease(v14);
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v27, 8);
  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

- (void)_removeFaceVisibilityForFacesMissingFromDetectedFaces:(uint64_t)faces
{
  if (faces && a2)
  {
    os_unfair_lock_lock((faces + 208));
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], [*(faces + 200) allKeys], 0);
    facesCopy = faces;
    os_unfair_lock_unlock((faces + 208));
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = [DeepCopy countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v24;
      v8 = *off_1E798B2B8;
      do
      {
        v9 = 0;
        do
        {
          if (*v24 != v7)
          {
            objc_enumerationMutation(DeepCopy);
          }

          v10 = *(*(&v23 + 1) + 8 * v9);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v11 = [a2 countByEnumeratingWithState:&v18 objects:v17 count:{16, facesCopy}];
          if (v11)
          {
            v12 = v11;
            v13 = *v19;
LABEL_10:
            v14 = 0;
            while (1)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(a2);
              }

              if ([objc_msgSend(*(*(&v18 + 1) + 8 * v14) objectForKeyedSubscript:{v8), "isEqualToNumber:", v10}])
              {
                break;
              }

              if (v12 == ++v14)
              {
                v12 = [a2 countByEnumeratingWithState:&v18 objects:v17 count:16];
                if (v12)
                {
                  goto LABEL_10;
                }

                goto LABEL_16;
              }
            }
          }

          else
          {
LABEL_16:
            [array addObject:v10];
          }

          ++v9;
        }

        while (v9 != v6);
        v6 = [DeepCopy countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v6);
    }

    os_unfair_lock_lock((facesCopy + 208));
    [*(facesCopy + 200) removeObjectsForKeys:array];
    os_unfair_lock_unlock((facesCopy + 208));
  }
}

id __61__BWStreamingCVAFilterRenderer_adjustMetadataOfSampleBuffer___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 24);
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v2 = CFRetain(v2);
  }

  *(*(*(a1 + 56) + 8) + 24) = v2;
  *(*(*(a1 + 64) + 8) + 24) = *(*(a1 + 32) + 40);
  *(*(*(a1 + 72) + 8) + 24) = *(*(a1 + 32) + 44);
  v3 = *(a1 + 32);
  if (*(v3 + 152) == 1)
  {
    *(*(*(a1 + 72) + 8) + 24) = 1048576000;
    v3 = *(a1 + 32);
  }

  *(*(*(a1 + 80) + 8) + 24) = *(v3 + 52) > 2;

  result = *(a1 + 40);
  *(*(a1 + 32) + 72) = result;
  return result;
}

uint64_t __61__BWStreamingCVAFilterRenderer_adjustMetadataOfSampleBuffer___block_invoke_2(void *a1, void *a2)
{
  v4 = [a2 objectForKeyedSubscript:*off_1E798AC78];
  v5 = v4;
  if (!v4)
  {
    v5 = [a2 objectForKeyedSubscript:*off_1E798B2B8];
    if (!v5)
    {
      return 1;
    }
  }

  v6 = [*(a1[4] + 200) objectForKeyedSubscript:v5];
  v7 = v6;
  if (*(*(a1[5] + 8) + 24))
  {
    _S0 = *(*(a1[6] + 8) + 24) - *(*(a1[7] + 8) + 24);
    __asm { FCVT            H8, S0 }

    if (v6)
    {
      v14 = [v6 BOOLValue];
      v15 = 0.049988;
      if (v14)
      {
        v15 = -0.049988;
      }

      __asm { FCVT            S1, H8 }

      _S0 = v15 + _S1;
      __asm { FCVT            H8, S0 }
    }

    LOWORD(v30) = 0;
    v20 = *MEMORY[0x1E695F058];
    v21 = *(MEMORY[0x1E695F058] + 16);
    v28 = *MEMORY[0x1E695F058];
    *v29 = v21;
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      if (v4)
      {
LABEL_29:
        v18 = 1;
        goto LABEL_32;
      }

      LOWORD(v27) = 0;
      v25 = v20;
      *v26 = v21;
LABEL_20:
      if (!FigCFDictionaryGetCGRectIfPresent())
      {
        LOWORD(v24) = 0;
        v22 = v20;
        v23 = v21;
        goto LABEL_26;
      }

      if (scfr_averageForegroundDisparityForRect(*(*(a1[8] + 8) + 24), &v27, *(*(a1[9] + 8) + 24), *(*(a1[10] + 8) + 24), *&v25, *(&v25 + 1), v26[0], v26[1]))
      {
        LOWORD(v24) = 0;
        v22 = v20;
        v23 = v21;
        if (v27 <= _H8)
        {
          goto LABEL_30;
        }

        goto LABEL_26;
      }

      LOWORD(v24) = 0;
      v22 = v20;
      v23 = v21;
      if ([v7 BOOLValue])
      {
LABEL_26:
        if (FigCFDictionaryGetCGRectIfPresent())
        {
          if (scfr_averageForegroundDisparityForRect(*(*(a1[8] + 8) + 24), &v24, *(*(a1[9] + 8) + 24), *(*(a1[10] + 8) + 24), *&v22, *(&v22 + 1), *&v23, *(&v23 + 1)))
          {
            v18 = v24 > _H8;
          }

          else
          {
            v18 = [v7 BOOLValue];
          }

          goto LABEL_32;
        }

        goto LABEL_29;
      }

LABEL_30:
      v18 = 0;
      goto LABEL_32;
    }

    if (scfr_averageForegroundDisparityForRect(*(*(a1[8] + 8) + 24), &v30, *(*(a1[9] + 8) + 24), *(*(a1[10] + 8) + 24), *&v28, *(&v28 + 1), v29[0], v29[1]))
    {
      v18 = v30 > _H8;
      if (!v4)
      {
LABEL_19:
        LOWORD(v27) = 0;
        v25 = v20;
        *v26 = v21;
        if ((v18 & 1) == 0)
        {
          goto LABEL_30;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v18 = [v7 BOOLValue];
      if (!v4)
      {
        goto LABEL_19;
      }
    }

LABEL_32:
    os_unfair_lock_lock((a1[4] + 208));
    [*(a1[4] + 200) setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", v18), v5}];
    os_unfair_lock_unlock((a1[4] + 208));
    return v18;
  }

  return [v6 BOOLValue];
}

id __108__BWStreamingCVAFilterRenderer_disparityPostprocessingRequest_didCompleteDisparityPostprocessingWithResult___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 32) = 0;
  }

  v3 = [*(a1 + 40) postprocessedDisparityPixelBuffer];
  if (v3)
  {
    v3 = CFRetain(v3);
  }

  *(*(a1 + 32) + 32) = v3;
  [*(a1 + 40) focusDisparity];
  *(*(a1 + 32) + 40) = v4;
  [*(a1 + 40) deltaCanonicalDisparity];
  *(*(a1 + 32) + 44) = v5;
  *(*(*(a1 + 48) + 8) + 24) = *(*(a1 + 32) + 64);
  result = *(*(a1 + 32) + 72);
  *(*(*(a1 + 56) + 8) + 40) = result;
  return result;
}

void *__96__BWStreamingCVAFilterRenderer_portraitRequest_didCompletePortraitWithResult_completionHandler___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) portraitStability];
  *(*(a1 + 32) + 48) = v3;
  return result;
}

- (void)portraitRequest:(void *)request didCompletePortraitWithResult:(uint64_t)result completionHandler:
{
  if (self)
  {
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      OUTLINED_FUNCTION_5_14(822149702);
      if (*v7 == 1)
      {
        OUTLINED_FUNCTION_5_14(822149710);
      }
    }

    if ([request portraitPixelBuffer])
    {
      v8 = 0;
      v9 = 2;
    }

    else
    {
      v10 = *MEMORY[0x1E696A768];
      v13 = *MEMORY[0x1E696A578];
      v14 = @"Portrait rendering request provided no result";
      v8 = [MEMORY[0x1E696ABC0] errorWithDomain:v10 code:-12780 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v14, &v13, 1)}];
      v9 = 0;
    }

    v11 = *(self + 8);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __96__BWStreamingCVAFilterRenderer_portraitRequest_didCompletePortraitWithResult_completionHandler___block_invoke;
    v12[3] = &unk_1E798F898;
    v12[4] = self;
    v12[5] = request;
    dispatch_sync(v11, v12);
    if (result)
    {
      (*(result + 16))(result, v9, v8);
    }
  }
}

@end