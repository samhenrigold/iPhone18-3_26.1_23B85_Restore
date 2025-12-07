@interface BWCoreImageFilterRenderer
+ (id)context:(BOOL)context deferredPhotoProcessorEnabled:(BOOL)enabled allocatorBackend:(id)backend err:(int *)err;
+ (void)_prewarmCoreImagePortraitFilterV1;
+ (void)initialize;
+ (void)prewarmCoreImageSDOFRenderingFilter;
+ (void)prewarmPortraitFilterVersion:(unsigned int)version semanticStyleFilters:(BOOL)filters;
- (id)initForRenderingWithDepth:(BOOL)depth context:(id)context portraitRenderQuality:(int)quality hairnetEnabled:(BOOL)enabled metalCommandQueue:(id)queue figThreadPriority:(unsigned int)priority;
- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key;
- (void)_renderUsingParameters:(const void *)parameters inputPixelBuffer:(const void *)buffer inputSampleBuffer:(const void *)sampleBuffer originalPixelBuffer:(const void *)pixelBuffer processedPixelBuffer:(char)processedPixelBuffer prewarming:(uint64_t)prewarming completionHandler:;
- (void)_visionKitFaceObservationToCoreImageDictionary:(uint64_t)dictionary orientation:;
- (void)coreImageArrayRepresentationForRegion:(uint64_t)region;
- (void)dealloc;
@end

@implementation BWCoreImageFilterRenderer

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

+ (void)prewarmCoreImageSDOFRenderingFilter
{
  v2 = MEMORY[0x1E695F620];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{*MEMORY[0x1E695F920], *MEMORY[0x1E695F870]}];
  v4 = *MEMORY[0x1E695F7F0];
  v10[0] = v3;
  v10[1] = MEMORY[0x1E695E110];
  v5 = *MEMORY[0x1E695F858];
  v9[1] = v4;
  v9[2] = v5;
  v10[2] = MEMORY[0x1E695E118];
  v6 = [v2 contextWithOptions:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v10, v9, 3)}];
  [v6 loadArchiveWithName:@"ccportrait_archive" fromURL:{objc_msgSend(BWLoadProcessorBundle(@"CCPortrait", 0xFFFFFFFFLL), "bundleURL")}];
  v7 = [MEMORY[0x1E695F648] filterWithName:@"CIDepthBlurEffect"];
  if (v7)
  {
    [v7 performSelector:NSSelectorFromString(&cfstr_Prewarm.isa) withObject:v6];
    v8 = NSClassFromString(&cfstr_Espressowrappe.isa);
    [(objc_class *)v8 performSelector:NSSelectorFromString(&cfstr_Clearcache.isa)];
  }
}

+ (void)_prewarmCoreImagePortraitFilterV1
{
  objc_opt_self();
  v1 = objc_autoreleasePoolPush();
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v45 = 0;
  sampleBufferOut = 0;
  v43 = 0;
  pixelBufferOut = 0;
  v41 = 0;
  v42 = 0;
  formatDescriptionOut = 0;
  v3 = *MEMORY[0x1E69660D8];
  v38[0] = *MEMORY[0x1E6966038];
  v38[1] = v3;
  v39[0] = &unk_1F2246138;
  v39[1] = MEMORY[0x1E695E0F8];
  v38[2] = *MEMORY[0x1E6966208];
  v39[2] = [MEMORY[0x1E696AD98] numberWithInt:1024];
  v38[3] = *MEMORY[0x1E69660B8];
  v39[3] = [MEMORY[0x1E696AD98] numberWithInt:768];
  v38[4] = *MEMORY[0x1E6966130];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:875704422];
  v38[5] = *MEMORY[0x1E6965D00];
  v5 = *MEMORY[0x1E6965D20];
  v39[4] = v4;
  v39[5] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:6];
  v7 = *MEMORY[0x1E695E480];
  if (CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x400uLL, 0x300uLL, 0x34323066u, v6, &pixelBufferOut))
  {
    +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
  }

  else
  {
    v8 = [BWVideoFormat pixelBufferAttachmentsForColorSpaceProperties:3];
    CVBufferSetAttachments(pixelBufferOut, v8, kCVAttachmentMode_ShouldPropagate);
    if (CMVideoFormatDescriptionCreateForImageBuffer(v7, pixelBufferOut, &formatDescriptionOut))
    {
      +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
    }

    else if (CVPixelBufferCreate(v7, 0x280uLL, 0x1E0uLL, 0x68646973u, 0, &v42))
    {
      +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
    }

    else if (CVPixelBufferCreate(v7, 0x280uLL, 0x1E0uLL, 0x4C303038u, 0, &v43))
    {
      +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
    }

    else
    {
      *&sampleTiming.duration.value = *MEMORY[0x1E6960C70];
      sampleTiming.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      CMTimeMake(&sampleTiming.presentationTimeStamp, 0x858A8CD5B3FDLL, 1000000000);
      sampleTiming.decodeTimeStamp = sampleTiming.duration;
      if (CMSampleBufferCreateForImageBuffer(v7, pixelBufferOut, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &sampleBufferOut))
      {
        +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
      }

      else
      {
        CMSetAttachment(sampleBufferOut, @"PortraitStillImageFaceAdjustedBlurMap", v43, 1u);
        v9 = *off_1E798D2B8;
        v10 = *off_1E798CFC0;
        v35 = *off_1E798CFC0;
        v36 = &unk_1F2246150;
        CMSetAttachment(sampleBufferOut, v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1], 1u);
        if (formatDescriptionOut)
        {
          CFRelease(formatDescriptionOut);
          formatDescriptionOut = 0;
        }

        if (CMVideoFormatDescriptionCreateForImageBuffer(v7, v42, &formatDescriptionOut))
        {
          +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
        }

        else if (CMSampleBufferCreateForImageBuffer(v7, v42, 1u, 0, 0, formatDescriptionOut, &sampleTiming, &v41))
        {
          +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
        }

        else
        {
          BWSampleBufferSetAttachedMedia(sampleBufferOut, @"Depth", v41);
          if (formatDescriptionOut)
          {
            CFRelease(formatDescriptionOut);
            formatDescriptionOut = 0;
          }

          v34 = &unk_1F224C138;
          CMSetAttachment(sampleBufferOut, @"PortraitFacesLandmarksArrayForPrewarm", [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1], 1u);
          if (BWCMSampleBufferCreateCopyIncludingMetadata(sampleBufferOut, &v45))
          {
            +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
          }

          else
          {
            context = v1;
            v32 = v10;
            v33 = &unk_1F2246180;
            CMSetAttachment(v45, v9, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1], 1u);
            v11 = dispatch_group_create();
            v12 = [[BWCoreImageFilterRenderer alloc] initForRenderingWithDepth:1 context:0 portraitRenderQuality:0 hairnetEnabled:0 metalCommandQueue:0 figThreadPriority:14];
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v13 = [&unk_1F2249510 countByEnumeratingWithState:&v28 objects:v27 count:16];
            if (v13)
            {
              v14 = v13;
              v15 = *v29;
              do
              {
                v16 = 0;
                do
                {
                  if (*v29 != v15)
                  {
                    objc_enumerationMutation(&unk_1F2249510);
                  }

                  v17 = *(*(&v28 + 1) + 8 * v16);
                  v18 = objc_autoreleasePoolPush();
                  dispatch_group_enter(v11);
                  v19 = [MEMORY[0x1E695F648] filterWithName:v17];
                  if (v19)
                  {
                    v20 = v19;
                    v21 = [BWCoreImageFilterRendererParameters alloc];
                    v26 = v20;
                    v22 = -[BWCoreImageFilterRendererParameters initWithFilters:originalOutputFilter:](v21, "initWithFilters:originalOutputFilter:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1], 0);
                    [v12 prepareForRenderingWithParameters:v22 inputVideoFormat:0 inputMediaPropertiesByAttachedMediaKey:0];
                    v25[0] = MEMORY[0x1E69E9820];
                    v25[1] = 3221225472;
                    v25[2] = __62__BWCoreImageFilterRenderer__prewarmCoreImagePortraitFilterV1__block_invoke;
                    v25[3] = &unk_1E799A630;
                    v25[4] = v11;
                    [(BWCoreImageFilterRenderer *)v12 _renderUsingParameters:v22 inputPixelBuffer:pixelBufferOut inputSampleBuffer:sampleBufferOut originalPixelBuffer:0 processedPixelBuffer:pixelBufferOut prewarming:1 completionHandler:v25];
                    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
                    dispatch_group_enter(v11);
                    v24[0] = MEMORY[0x1E69E9820];
                    v24[1] = 3221225472;
                    v24[2] = __62__BWCoreImageFilterRenderer__prewarmCoreImagePortraitFilterV1__block_invoke_2;
                    v24[3] = &unk_1E799A630;
                    v24[4] = v11;
                    [(BWCoreImageFilterRenderer *)v12 _renderUsingParameters:v22 inputPixelBuffer:pixelBufferOut inputSampleBuffer:v45 originalPixelBuffer:0 processedPixelBuffer:pixelBufferOut prewarming:1 completionHandler:v24];
                    dispatch_group_wait(v11, 0xFFFFFFFFFFFFFFFFLL);
                  }

                  objc_autoreleasePoolPop(v18);
                  ++v16;
                }

                while (v14 != v16);
                v14 = [&unk_1F2249510 countByEnumeratingWithState:&v28 objects:v27 count:16];
              }

              while (v14);
            }

            if (v41)
            {
              CFRelease(v41);
            }

            v2 = MEMORY[0x1E695FF58];
            if (v42)
            {
              CFRelease(v42);
            }

            if (v43)
            {
              CFRelease(v43);
            }

            v1 = context;
            if (pixelBufferOut)
            {
              CFRelease(pixelBufferOut);
            }

            if (sampleBufferOut)
            {
              CFRelease(sampleBufferOut);
            }

            if (v45)
            {
              CFRelease(v45);
            }
          }
        }
      }
    }
  }

  objc_autoreleasePoolPop(v1);
  if (*v2 == 1)
  {
    kdebug_trace();
  }
}

+ (id)context:(BOOL)context deferredPhotoProcessorEnabled:(BOOL)enabled allocatorBackend:(id)backend err:(int *)err
{
  enabledCopy = enabled;
  contextCopy = context;
  if (enabled)
  {
    v10 = [objc_msgSend(MEMORY[0x1E6991778] "metalDevice")];
    v11 = v10;
    device = [v10 device];
  }

  else
  {
    device = 0;
  }

  poolIdentifier = [+[BWMemoryPool sharedMemoryPool](BWMemoryPool poolIdentifier];
  v14 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v15 = 0;
  if (backend && enabledCopy)
  {
    if ([backend memSize])
    {
      v15 = [[BWCoreImageIntermediateAllocator alloc] initWithBackend:device allocatorBackend:backend memoryPool:poolIdentifier];
    }

    else
    {
      v15 = 0;
    }
  }

  if (enabledCopy)
  {
    v16 = 350;
  }

  else
  {
    v16 = 64;
  }

  v17 = MEMORY[0x1E695F910];
  if (contextCopy)
  {
    v17 = MEMORY[0x1E695F920];
  }

  v18 = *v17;
  v30[0] = *MEMORY[0x1E695F870];
  v19 = [MEMORY[0x1E696AD98] numberWithInt:v18];
  v20 = *MEMORY[0x1E695F7F0];
  v31[0] = v19;
  v31[1] = MEMORY[0x1E695E110];
  v21 = *MEMORY[0x1E695F818];
  v30[1] = v20;
  v30[2] = v21;
  v31[2] = [MEMORY[0x1E696AD98] numberWithInt:v16];
  v30[3] = *MEMORY[0x1E695F808];
  v31[3] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:poolIdentifier];
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:4];
  v23 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v22];
  if (v15)
  {
    v28 = *MEMORY[0x1E695F810];
    v29 = v15;
    [v23 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v29, &v28, 1)}];
  }

  if (device)
  {
    v24 = [MEMORY[0x1E695F620] contextWithMTLDevice:device options:v23];
  }

  else
  {
    v24 = [MEMORY[0x1E695F620] contextWithOptions:v23];
  }

  v25 = v24;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = -12786;
  }

  if (err)
  {
    *err = v26;
  }

  if (*v14 == 1)
  {
    kdebug_trace();
  }

  return v25;
}

- (id)initForRenderingWithDepth:(BOOL)depth context:(id)context portraitRenderQuality:(int)quality hairnetEnabled:(BOOL)enabled metalCommandQueue:(id)queue figThreadPriority:(unsigned int)priority
{
  v17.receiver = self;
  v17.super_class = BWCoreImageFilterRenderer;
  v13 = [(BWCoreImageFilterRenderer *)&v17 init];
  v14 = v13;
  if (v13)
  {
    v13->_metalCommandQueue = queue;
    v13->_usingDepth = depth;
    v13->_renderingQueueContext = context;
    v14->_portraitRenderQuality = quality;
    v15 = 1.0;
    if (!quality)
    {
      v15 = 0.0;
    }

    v14->_inputRenderQuality = v15;
    v14->_renderingQueue = FigDispatchQueueCreateWithPriority();
    v14->_callbackQueue = dispatch_queue_create("com.apple.bwgraph.callback.core-image", 0);
    v14->_hairnetEnabled = enabled;
  }

  return v14;
}

- (void)dealloc
{
  renderingQueue = self->_renderingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__BWCoreImageFilterRenderer_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(renderingQueue, block);

  self->_renderingQueue = 0;
  self->_callbackQueue = 0;
  v4.receiver = self;
  v4.super_class = BWCoreImageFilterRenderer;
  [(BWCoreImageFilterRenderer *)&v4 dealloc];
}

- (int)prepareForRenderingWithParameters:(id)parameters inputVideoFormat:(id)format inputMediaPropertiesByAttachedMediaKey:(id)key
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  renderingQueue = self->_renderingQueue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __119__BWCoreImageFilterRenderer_prepareForRenderingWithParameters_inputVideoFormat_inputMediaPropertiesByAttachedMediaKey___block_invoke;
  v9[3] = &unk_1E79904A0;
  v9[4] = self;
  v9[5] = &v10;
  dispatch_sync(renderingQueue, v9);
  LODWORD(format) = [parameters prepareForRenderingWithInputVideoFormat:format];
  *(v11 + 6) = format;
  _Block_object_dispose(&v10, 8);
  return format;
}

void *__119__BWCoreImageFilterRenderer_prepareForRenderingWithParameters_inputVideoFormat_inputMediaPropertiesByAttachedMediaKey___block_invoke(void *result)
{
  v2 = result[4];
  if (!*(v2 + 40))
  {
    v3 = result;
    v4 = [BWCoreImageFilterRenderer context:*(v2 + 8) deferredPhotoProcessorEnabled:0 allocatorBackend:0 err:*(result[5] + 8) + 24];
    v5 = v3[4];

    return [v5 setRenderingQueueContext:v4];
  }

  return result;
}

void __157__BWCoreImageFilterRenderer__renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_prewarming_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) renderingQueueContext];
  v3 = *(*(a1 + 32) + 48);
  if (v3)
  {
    v4 = [v3 commandBuffer];
    [v4 commit];
    [v4 waitUntilCompleted];
  }

  obj = [*(a1 + 40) filters];
  if ([obj count])
  {
    v125 = *MEMORY[0x1E695F990];
    v183 = *MEMORY[0x1E695F990];
    v184 = MEMORY[0x1E695E118];
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
    v6 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:*(a1 + 56) options:v5];
    v7 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if ([*(a1 + 40) requiresDepthMap])
    {
      v8 = CMGetAttachment(*(a1 + 64), *off_1E798D2B8, 0);
      v9 = CMGetAttachment(*(a1 + 64), @"PortraitStillImageAuxDepthMetadata", 0);
      if (!v9 || (AuxiliaryImagePropertiesFromDepthMetadata = CFRetain(v9)) == 0)
      {
        AuxiliaryImagePropertiesFromDepthMetadata = FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromDepthMetadata(v8);
      }

      v123 = AuxiliaryImagePropertiesFromDepthMetadata;
      v108 = CMGetAttachment(*(a1 + 64), @"PortraitStillImageFaceAdjustedBlurMap", 0);
      AttachedMedia = BWSampleBufferGetAttachedMedia(*(a1 + 64), 0x1F217BF50);
      if (AttachedMedia)
      {
        v12 = AttachedMedia;
        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        v13 = CMGetAttachment(v12, *off_1E798A3C8, 0);
        [objc_msgSend(CMGetAttachment(*(a1 + 64) @"StillSettings"];
        cf = FigCaptureMetadataUtilitiesCreateAuxiliaryImagePropertiesFromGainMapSampleBuffer(v13);
      }

      else
      {
        ImageBuffer = 0;
        cf = 0;
      }

      HasDetectedFaces = BWSampleBufferHasDetectedFaces(*(a1 + 64), 0, 0, 1, 1, 1);
      v18 = HasDetectedFaces | BWSampleBufferHasDetectedHumanBodies(*(a1 + 64));
      v19 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"Depth");
      if (v19)
      {
        v103 = CMSampleBufferGetImageBuffer(v19);
      }

      else
      {
        v103 = 0;
      }

      v20 = *(a1 + 64);
      if (v18)
      {
        v21 = BWSampleBufferGetAttachedMedia(v20, 0x1F21AABB0);
        if (v21)
        {
          v130 = CMSampleBufferGetImageBuffer(v21);
        }

        else
        {
          v130 = 0;
        }

        v16 = v8;
        v23 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"PersonSemanticsHair");
        if (v23)
        {
          v129 = CMSampleBufferGetImageBuffer(v23);
        }

        else
        {
          v129 = 0;
        }

        v24 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"PersonSemanticsSkin");
        if (v24)
        {
          v128 = CMSampleBufferGetImageBuffer(v24);
        }

        else
        {
          v128 = 0;
        }

        v25 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"PersonSemanticsTeeth");
        if (v25)
        {
          v127 = CMSampleBufferGetImageBuffer(v25);
        }

        else
        {
          v127 = 0;
        }

        v26 = BWSampleBufferGetAttachedMedia(*(a1 + 64), @"PersonSemanticsGlasses");
        if (v26)
        {
          v126 = CMSampleBufferGetImageBuffer(v26);
        }

        else
        {
          v126 = 0;
        }
      }

      else if (BWInferenceGetAttachedInference(v20, 801, 0x1F219E5F0) && !dword_1ED844650)
      {
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
        v16 = v8;
      }

      else
      {
        v182 = 0;
        v181 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        v16 = v8;
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v129 = 0;
        v130 = 0;
      }

      v132 = [v16 objectForKeyedSubscript:{*off_1E798D220, *&v100, v101}];
    }

    else
    {
      cf = 0;
      v132 = 0;
      v126 = 0;
      v127 = 0;
      v128 = 0;
      v129 = 0;
      v130 = 0;
      v103 = 0;
      ImageBuffer = 0;
      v108 = 0;
      v123 = 0;
      v16 = 0;
    }

    v102 = v2;
    if (*v7 == 1)
    {
      kdebug_trace();
      if (*v7 == 1)
      {
        kdebug_trace();
      }
    }

    v109 = v16;
    if ([*(a1 + 40) requiresFaceLandmarks])
    {
      AttachedInference = BWInferenceGetAttachedInference(*(a1 + 64), 801, 0x1F219E5F0);
      if ([AttachedInference count])
      {
        v124 = [MEMORY[0x1E695DF70] array];
        v28 = CMGetAttachment(*(a1 + 64), *off_1E798A3C8, 0);
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        v29 = [AttachedInference countByEnumeratingWithState:&v175 objects:v174 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v176;
          v32 = *off_1E798A5B0;
          do
          {
            for (i = 0; i != v30; ++i)
            {
              if (*v176 != v31)
              {
                objc_enumerationMutation(AttachedInference);
              }

              [v124 addObject:{-[BWCoreImageFilterRenderer _visionKitFaceObservationToCoreImageDictionary:orientation:](*(a1 + 32), *(*(&v175 + 1) + 8 * i), objc_msgSend(v28, "objectForKeyedSubscript:", v32))}];
            }

            v30 = [AttachedInference countByEnumeratingWithState:&v175 objects:v174 count:16];
          }

          while (v30);
          v7 = MEMORY[0x1E695FF58];
        }
      }

      else if (*(a1 + 88) == 1)
      {
        v124 = CMGetAttachment(*(a1 + 64), @"PortraitFacesLandmarksArrayForPrewarm", 0);
      }

      else
      {
        v124 = 0;
      }

      v16 = v109;
    }

    else
    {
      v124 = 0;
    }

    if (*v7 == 1)
    {
      kdebug_trace();
      if (*v7 == 1)
      {
        kdebug_trace();
      }
    }

    v34 = [MEMORY[0x1E695DF70] array];
    v180[0] = 0;
    v35 = [*(a1 + 40) originalOutputFilter];
    v170 = 0u;
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v36 = [obj countByEnumeratingWithState:&v170 objects:v169 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v113 = 0;
      v114 = 0;
      v111 = 0;
      v112 = 0;
      v115 = 0;
      v116 = 0;
      v110 = 0;
      v122 = 0;
      v133 = *MEMORY[0x1E695FAB0];
      v134 = *v171;
      v106 = *MEMORY[0x1E695F9A8];
      v104 = *MEMORY[0x1E696D228];
      v105 = *MEMORY[0x1E695F9E0];
      v121 = *off_1E798D348;
      v119 = *off_1E798D018;
      v120 = *off_1E798CFC0;
      v117 = *off_1E798CEF8;
      v118 = *MEMORY[0x1E695FB20];
      while (1)
      {
        v39 = 0;
        do
        {
          if (*v171 != v134)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v170 + 1) + 8 * v39);
          [v40 setValue:v6 forKey:v133];
          [v34 addObject:v133];
          v41 = [v40 inputKeys];
          v136 = v39;
          if ([*(a1 + 40) requiresDepthMap])
          {
            v42 = [*(a1 + 40) depthTypeForFilter:v40];
            if (v42 == 1)
            {
              if (!v115)
              {
                v163 = v125;
                v164 = MEMORY[0x1E695E118];
                v44 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v108 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v164, &v163, 1)}];
                v45 = v44;
                v43 = @"inputDepthMap";
                goto LABEL_81;
              }

              v43 = @"inputDepthMap";
            }

            else
            {
              if (v42 != 2)
              {
                if (v42 == 3)
                {
                  if (v115)
                  {
                    v43 = @"inputBlurMap";
                    goto LABEL_82;
                  }

                  v167 = v125;
                  v168 = MEMORY[0x1E695E118];
                  v44 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v108 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v168, &v167, 1)}];
                  v45 = v44;
                  v43 = @"inputBlurMap";
LABEL_81:
                  v115 = v44;
                  if (v45)
                  {
                    goto LABEL_82;
                  }
                }

LABEL_83:
                if ([v41 containsObject:@"inputGainMap"])
                {
                  Mutable = cf;
                  if (!cf)
                  {
                    Mutable = CGImageMetadataCreateMutable();
                  }

                  cf = Mutable;
                  v47 = v122;
                  if (!v122)
                  {
                    v48 = MEMORY[0x1E695F658];
                    v162[0] = MEMORY[0x1E695E118];
                    v161[0] = v125;
                    v161[1] = v106;
                    v162[1] = [MEMORY[0x1E695DFB0] null];
                    v161[2] = v105;
                    v159 = v104;
                    v160 = cf;
                    v162[2] = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v160 forKeys:&v159 count:1];
                    v16 = v109;
                    v47 = [v48 imageWithCVPixelBuffer:ImageBuffer options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v162, v161, 3)}];
                  }

                  v122 = v47;
                  [v40 setValue:v47 forKey:@"inputGainMap"];
                  [v34 addObject:@"inputGainMap"];
                }

                if (v130 && (([v41 containsObject:@"inputMatte"] & 1) != 0 || objc_msgSend(v41, "containsObject:", @"inputMatteImage")))
                {
                  v49 = v116;
                  if (!v116)
                  {
                    v157 = v125;
                    v158 = MEMORY[0x1E695E118];
                    v49 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v130 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v158, &v157, 1)}];
                  }

                  v50 = @"inputMatte";
                  if (![v41 containsObject:@"inputMatte"])
                  {
                    v50 = @"inputMatteImage";
                  }

                  v116 = v49;
                  [v40 setValue:v49 forKey:v50];
                  [v34 addObject:v50];
                }

                if (v129 && [v41 containsObject:@"inputHairMask"])
                {
                  v51 = v111;
                  if (!v111)
                  {
                    v155 = v125;
                    v156 = MEMORY[0x1E695E118];
                    v51 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v129 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v156, &v155, 1)}];
                  }

                  v111 = v51;
                  [v40 setValue:v51 forKey:@"inputHairMask"];
                  [v34 addObject:@"inputHairMask"];
                }

                v52 = [objc_msgSend(CMGetAttachment(*(a1 + 64) @"StillSettings"];
                if (BWCIFilterArrayContainsPortraitEffectStageFilters(v52, 0) && [v41 containsObject:@"inputBestHairQuality"])
                {
                  [v40 setValue:MEMORY[0x1E695E110] forKey:@"inputBestHairQuality"];
                  [v34 addObject:@"inputBestHairQuality"];
                }

                if (v128 && [v41 containsObject:@"inputFaceMask"])
                {
                  v53 = v112;
                  if (!v112)
                  {
                    v153 = v125;
                    v154 = MEMORY[0x1E695E118];
                    v53 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v128 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v154, &v153, 1)}];
                  }

                  v112 = v53;
                  [v40 setValue:v53 forKey:@"inputFaceMask"];
                  [v34 addObject:@"inputFaceMask"];
                }

                if (v127 && [v41 containsObject:@"inputTeethMask"])
                {
                  v54 = v113;
                  if (!v113)
                  {
                    v151 = v125;
                    v152 = MEMORY[0x1E695E118];
                    v54 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v127 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v152, &v151, 1)}];
                  }

                  v113 = v54;
                  [v40 setValue:v54 forKey:@"inputTeethMask"];
                  [v34 addObject:@"inputTeethMask"];
                }

                if (v126 && [v41 containsObject:@"inputGlassesMask"])
                {
                  v55 = v114;
                  if (!v114)
                  {
                    v149 = v125;
                    v150 = MEMORY[0x1E695E118];
                    v55 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v126 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v150, &v149, 1)}];
                  }

                  v114 = v55;
                  [v40 setValue:v55 forKey:@"inputTeethMask"];
                  [v34 addObject:@"inputTeethMask"];
                }

                if (v132 && [v41 containsObject:@"inputStrength"])
                {
                  [v40 setValue:v132 forKey:@"inputStrength"];
                  [v34 addObject:@"inputStrength"];
                }

                v56 = CMGetAttachment(*(a1 + 64), v121, 0);
                if ([v41 containsObject:@"inputLumaNoiseScale"])
                {
                  if (v56)
                  {
                    v57 = v56;
                  }

                  else
                  {
                    v57 = &unk_1F224A8E0;
                  }

                  [v40 setValue:v57 forKey:@"inputLumaNoiseScale"];
                  [v34 addObject:@"inputLumaNoiseScale"];
                }

                goto LABEL_128;
              }

              if (v110)
              {
                v43 = @"inputDisparity";
                goto LABEL_82;
              }

              v165 = v125;
              v166 = MEMORY[0x1E695E118];
              v43 = @"inputDisparity";
              v110 = [MEMORY[0x1E695F658] imageWithCVPixelBuffer:v103 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v166, &v165, 1)}];
              if (!v110)
              {
                goto LABEL_83;
              }
            }

LABEL_82:
            [v40 setValue:? forKey:?];
            [v34 addObject:v43];
            goto LABEL_83;
          }

LABEL_128:
          if ([v41 containsObject:@"inputFaceLandmarkArray"])
          {
            v58 = MEMORY[0x1E696AEC0];
            v100 = COERCE_DOUBLE([v124 count]);
            [v58 stringWithFormat:@"face landmarks (%lu faces)"];
            [v40 setValue:v124 forKey:@"inputFaceLandmarkArray"];
            [v34 addObject:@"inputFaceLandmarkArray"];
          }

          if ([v41 containsObject:@"inputUseAbsoluteDisparity"])
          {
            v59 = [objc_msgSend(v16 objectForKeyedSubscript:{v120), "intValue"}] == 1;
            v60 = v59;
            v61 = "relative";
            if (v59)
            {
              v61 = "absolute";
            }

            [MEMORY[0x1E696AEC0] stringWithFormat:@"%s disparity", v61];
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v60), @"inputUseAbsoluteDisparity"}];
            [v34 addObject:@"inputUseAbsoluteDisparity"];
          }

          if ([v41 containsObject:@"inputDepthDataScore"])
          {
            *&v62 = COERCE_DOUBLE([v16 objectForKeyedSubscript:v119]);
            if (*&v62 != 0.0)
            {
              v63 = v62;
              v100 = *&v62;
              [MEMORY[0x1E696AEC0] stringWithFormat:@"portrait score %@"];
              [v40 setValue:v63 forKey:@"inputDepthDataScore"];
              [v34 addObject:@"inputDepthDataScore"];
            }
          }

          if ([v41 containsObject:@"inputFocalLengthNormalized"])
          {
            v179 = 0.0;
            FigDepthComputeNormalizedFocalLength(v16, &v179, v64, v65, v66, v67, v68, v69, *&v100);
            v100 = v179;
            [MEMORY[0x1E696AEC0] stringWithFormat:@"normalized focal length %.2f"];
            *&v70 = v179;
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v70), @"inputFocalLengthNormalized"}];
            [v34 addObject:@"inputFocalLengthNormalized"];
          }

          if (*(*(a1 + 32) + 12) == 2)
          {
            v100 = 0.5;
            [MEMORY[0x1E696AEC0] stringWithFormat:@"input scale %.2f"];
            LODWORD(v71) = 0.5;
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v71), v118}];
            [v34 addObject:v118];
          }

          if ([v41 containsObject:@"inputAperture"])
          {
            [objc_msgSend(v16 objectForKeyedSubscript:{v117), "floatValue"}];
            v73 = v72;
            v100 = v72;
            [MEMORY[0x1E696AEC0] stringWithFormat:@"input aperture %.2f"];
            *&v74 = v73;
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v74), @"inputAperture"}];
            [v34 addObject:@"inputAperture"];
          }

          if ([v41 containsObject:@"inputRenderProxy"])
          {
            v100 = *(*(a1 + 32) + 16);
            [MEMORY[0x1E696AEC0] stringWithFormat:@"input render quality %.2f"];
            LODWORD(v75) = *(*(a1 + 32) + 16);
            [v40 setValue:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v75), @"inputRenderProxy"}];
            [v34 addObject:@"inputRenderProxy"];
          }

          if ([v41 containsObject:@"inputAuxDataMetadata"])
          {
            [v40 setValue:v123 forKey:@"inputAuxDataMetadata"];
            [v34 addObject:@"inputAuxDataMetadata"];
          }

          v76 = *(a1 + 32);
          if (*(v76 + 56))
          {
            v77 = *(v76 + 12);
            if ([v41 containsObject:@"inputGenerateSpillMatte"] && !v77)
            {
              [v40 setValue:MEMORY[0x1E695E118] forKey:@"inputGenerateSpillMatte"];
              [v34 addObject:@"inputGenerateSpillMatte"];
            }
          }

          else
          {
            [v41 containsObject:@"inputGenerateSpillMatte"];
          }

          v78 = [v40 outputImage];
          v6 = v78;
          if (v35 == v40)
          {
            v38 = v78;
          }

          v39 = v136 + 1;
        }

        while (v37 != v136 + 1);
        v37 = [obj countByEnumeratingWithState:&v170 objects:v169 count:16];
        if (!v37)
        {
          goto LABEL_158;
        }
      }
    }

    v6 = 0;
    v38 = 0;
LABEL_158:
    v79 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
      if (*v79 == 1)
      {
        kdebug_trace();
      }
    }

    v80 = 0;
    if (*(a1 + 72) && v38)
    {
      [v102 render:v38 toCVPixelBuffer:?];
      v80 = 1;
    }

    if (*(a1 + 80) && v6)
    {
      v81 = [objc_alloc(MEMORY[0x1E695F678]) initWithPixelBuffer:*(a1 + 80)];
      if (*(a1 + 88))
      {
        [v6 extent];
        [v102 prepareRender:v6 fromRect:v81 toDestination:v180 atPoint:? error:?];
      }

      else
      {
        Width = CVPixelBufferGetWidth(*(a1 + 80));
        v83 = [v102 startTaskToRender:v6 fromRect:v81 toDestination:v180 atPoint:0.0 error:{0.0, Width, CVPixelBufferGetHeight(*(a1 + 80)), 0.0, 0.0}];
        if (!v180[0])
        {
          [v83 waitUntilCompletedAndReturnError:v180];
        }
      }

      v80 |= 2uLL;
    }

    v137 = v80;
    if (*v79 == 1)
    {
      kdebug_trace();
      if (*v79 == 1)
      {
        kdebug_trace();
      }
    }

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    v84 = [obj countByEnumeratingWithState:&v145 objects:v144 count:16];
    if (v84)
    {
      v85 = v84;
      v86 = *v146;
      do
      {
        for (j = 0; j != v85; ++j)
        {
          if (*v146 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v88 = *(*(&v145 + 1) + 8 * j);
          v140 = 0u;
          v141 = 0u;
          v142 = 0u;
          v143 = 0u;
          v89 = [v34 countByEnumeratingWithState:&v140 objects:v139 count:16];
          if (v89)
          {
            v90 = v89;
            v91 = *v141;
            do
            {
              for (k = 0; k != v90; ++k)
              {
                if (*v141 != v91)
                {
                  objc_enumerationMutation(v34);
                }

                v93 = *(*(&v140 + 1) + 8 * k);
                if ([objc_msgSend(v88 "inputKeys")])
                {
                  [v88 setValue:0 forKey:v93];
                }
              }

              v90 = [v34 countByEnumeratingWithState:&v140 objects:v139 count:16];
            }

            while (v90);
          }
        }

        v85 = [obj countByEnumeratingWithState:&v145 objects:v144 count:16];
      }

      while (v85);
    }

    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v94 = *(a1 + 48);
    if (v94)
    {
      v95 = *(*(a1 + 32) + 32);
      v138[0] = MEMORY[0x1E69E9820];
      v138[1] = 3221225472;
      v138[2] = __157__BWCoreImageFilterRenderer__renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_prewarming_completionHandler___block_invoke_1230;
      v138[3] = &unk_1E799A658;
      v138[5] = v94;
      v138[6] = v137;
      v138[4] = v180[0];
      dispatch_async(v95, v138);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v123)
    {
      CFRelease(v123);
    }

    v96 = *(a1 + 56);
    if (v96)
    {
      CFRelease(v96);
    }

    v97 = *(a1 + 64);
    if (v97)
    {
      CFRelease(v97);
    }

    v98 = *(a1 + 72);
    if (v98)
    {
      CFRelease(v98);
    }

    v99 = *(a1 + 80);
    if (v99)
    {
      CFRelease(v99);
    }
  }

  else
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      v15 = *(*(a1 + 32) + 32);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __157__BWCoreImageFilterRenderer__renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_prewarming_completionHandler___block_invoke_2;
      block[3] = &unk_1E79903B8;
      block[4] = v14;
      block[5] = 0;
      dispatch_async(v15, block);
    }
  }
}

+ (void)prewarmPortraitFilterVersion:(unsigned int)version semanticStyleFilters:(BOOL)filters
{
  if (filters)
  {
    [MEMORY[0x1E695F620] loadArchive:*MEMORY[0x1E695FB58]];
  }

  if (MGGetBoolAnswer())
  {
    if (version == 2)
    {
      v5 = NSSelectorFromString(&cfstr_Prewarm.isa);
      v6 = [MEMORY[0x1E695F648] filterWithName:@"CIPortraitEffectLightV2"];
      if (objc_opt_respondsToSelector())
      {

        [v6 performSelector:v5 withObject:0];
      }
    }

    else if (version == 1)
    {

      +[BWCoreImageFilterRenderer _prewarmCoreImagePortraitFilterV1];
    }
  }
}

- (void)_renderUsingParameters:(const void *)parameters inputPixelBuffer:(const void *)buffer inputSampleBuffer:(const void *)sampleBuffer originalPixelBuffer:(const void *)pixelBuffer processedPixelBuffer:(char)processedPixelBuffer prewarming:(uint64_t)prewarming completionHandler:
{
  if (self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (parameters)
      {
        CFRetain(parameters);
      }

      if (buffer)
      {
        CFRetain(buffer);
      }

      if (sampleBuffer)
      {
        CFRetain(sampleBuffer);
      }

      if (pixelBuffer)
      {
        CFRetain(pixelBuffer);
      }

      v16 = *(self + 24);
      block = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = __157__BWCoreImageFilterRenderer__renderUsingParameters_inputPixelBuffer_inputSampleBuffer_originalPixelBuffer_processedPixelBuffer_prewarming_completionHandler___block_invoke;
      v22 = &unk_1E799A680;
      selfCopy = self;
      v24 = a2;
      prewarmingCopy = prewarming;
      parametersCopy = parameters;
      processedPixelBufferCopy = processedPixelBuffer;
      bufferCopy = buffer;
      sampleBufferCopy = sampleBuffer;
      pixelBufferCopy = pixelBuffer;
      dispatch_async(v16, &block);
    }

    else
    {
      OUTLINED_FUNCTION_1_8();
      v17 = 0;
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v18, block, v20, v21, v22, selfCopy, v24);
    }
  }
}

- (void)_visionKitFaceObservationToCoreImageDictionary:(uint64_t)dictionary orientation:
{
  if (!self)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:20];
  [a2 boundingBox];
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = OUTLINED_FUNCTION_3_86(Mutable, v7, v8, v9, v10, v11, v12, v13, v46);
  OUTLINED_FUNCTION_4_76(v14, @"x");
  CFRelease(v14);
  v23 = OUTLINED_FUNCTION_3_86(v15, v16, v17, v18, v19, v20, v21, v22, v47);
  OUTLINED_FUNCTION_4_76(v23, @"y");
  CFRelease(v23);
  v32 = OUTLINED_FUNCTION_3_86(v24, v25, v26, v27, v28, v29, v30, v31, v48);
  OUTLINED_FUNCTION_4_76(v32, @"w");
  CFRelease(v32);
  v41 = OUTLINED_FUNCTION_3_86(v33, v34, v35, v36, v37, v38, v39, v40, v49);
  OUTLINED_FUNCTION_4_76(v41, @"h");
  CFRelease(v41);
  [v5 setObject:Mutable forKeyedSubscript:@"faceBoundingBox"];

  [v5 setObject:dictionary forKeyedSubscript:@"orientation"];
  v42 = MEMORY[0x1E696AD98];
  [a2 faceJunkinessIndex];
  [v5 setObject:objc_msgSend(v42 forKeyedSubscript:{"numberWithFloat:"), @"faceJunkinessIndex"}];
  v43 = MEMORY[0x1E696AD98];
  [a2 faceOrientationIndex];
  [v5 setObject:objc_msgSend(v43 forKeyedSubscript:{"numberWithFloat:"), @"faceOrientationIndex"}];
  [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"yaw"), @"yaw"}];
  [v5 setObject:objc_msgSend(a2 forKeyedSubscript:{"roll"), @"roll"}];
  landmarks = [a2 landmarks];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"allPoints")), @"allPoints"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"faceContour")), @"faceContour"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"leftEye")), @"leftEye"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"rightEye")), @"rightEye"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"leftEyebrow")), @"leftEyebrow"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"rightEyebrow")), @"rightEyebrow"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"nose")), @"nose"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"noseCrest")), @"noseCrest"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"medianLine")), @"medianLips"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"outerLips")), @"outerLips"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"innerLips")), @"innerLips"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"leftPupil")), @"leftPupil"}];
  [v5 setObject:OUTLINED_FUNCTION_2_99(objc_msgSend(landmarks forKeyedSubscript:{"rightPupil")), @"rightPupil"}];
  return v5;
}

- (void)coreImageArrayRepresentationForRegion:(uint64_t)region
{
  if (!region)
  {
    return 0;
  }

  if (!a2 || (v3 = [a2 pointCount], v4 = objc_msgSend(a2, "normalizedPoints"), !v3) || (v5 = v4) == 0)
  {
    OUTLINED_FUNCTION_1_8();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
    return 0;
  }

  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v3];
  v7 = (v5 + 8);
  v8 = MEMORY[0x1E695E9D8];
  v9 = MEMORY[0x1E695E9E8];
  do
  {
    v10 = *(v7 - 1);
    v11 = *v7;
    Mutable = CFDictionaryCreateMutable(0, 0, v8, v9);
    valuePtr = v10;
    v13 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"x", v13);
    CFRelease(v13);
    valuePtr = v11;
    v14 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionarySetValue(Mutable, @"y", v14);
    CFRelease(v14);
    [v6 addObject:Mutable];

    v7 += 2;
    --v3;
  }

  while (v3);
  return v6;
}

@end