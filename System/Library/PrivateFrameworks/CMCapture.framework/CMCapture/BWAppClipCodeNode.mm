@interface BWAppClipCodeNode
- (BWAppClipCodeNode)initWithProcessingQueuePriority:(unsigned int)priority;
- (uint64_t)_endAppClipCodeSession;
- (void)_processSampleBuffer:(uint64_t)buffer;
- (void)_startAppClipCodeSession;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didReceiveAppC3DUpdate:(void *)update userData:;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWAppClipCodeNode

- (BWAppClipCodeNode)initWithProcessingQueuePriority:(unsigned int)priority
{
  v9.receiver = self;
  v9.super_class = BWAppClipCodeNode;
  v3 = [(BWNode *)&v9 init];
  if (v3)
  {
    v4 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v3];
    [(BWNodeInput *)v4 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNode *)v3 addInput:v4];
    [(BWFormatRequirements *)[(BWNodeInput *)v3->super._input formatRequirements] setSupportedPixelFormats:&unk_1F2248370];
    v5 = [[BWNodeOutput alloc] initWithMediaType:1836016234 node:v3];
    [(BWNodeOutput *)v5 setFormat:[BWMetadataObjectFormat formatWithMetadataIdentifiers:0]];
    [(BWNode *)v3 addOutput:v5];
    v3->_weakSelf = [FigWeakReference weakReferenceToObject:v3];
    v3->_processingQueue = FigDispatchQueueCreateWithPriority();
    if (MEMORY[0x1EEE83408])
    {
      v6 = MEMORY[0x1EEE83410] == 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = !v6;
    v3->_appC3DAvailable = v7;
  }

  return v3;
}

- (void)dealloc
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__BWAppClipCodeNode_dealloc__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(processingQueue, block);

  v4.receiver = self;
  v4.super_class = BWAppClipCodeNode;
  [(BWNode *)&v4 dealloc];
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BWAppClipCodeNode_prepareForCurrentConfigurationToBecomeLive__block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_async(processingQueue, block);
  v4.receiver = self;
  v4.super_class = BWAppClipCodeNode;
  [(BWNode *)&v4 prepareForCurrentConfigurationToBecomeLive];
}

- (void)didReachEndOfDataForInput:(id)input
{
  processingQueue = self->_processingQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__BWAppClipCodeNode_didReachEndOfDataForInput___block_invoke;
  block[3] = &unk_1E798F870;
  block[4] = self;
  dispatch_sync(processingQueue, block);
  v6.receiver = self;
  v6.super_class = BWAppClipCodeNode;
  [(BWNode *)&v6 didReachEndOfDataForInput:input];
}

- (uint64_t)_endAppClipCodeSession
{
  if (result)
  {
    v1 = result;
    result = _FigIsCurrentDispatchQueue();
    if (!result)
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      result = FigDebugAssert3(v2);
    }

    if (*(v1 + 136) == 1)
    {
      result = *(v1 + 128);
      if (result)
      {
        result = AppC3DRelease();
        *(v1 + 128) = 0;
      }
    }
  }

  return result;
}

- (void)_startAppClipCodeSession
{
  if (self)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v2);
    }

    if (*(self + 136) == 1 && !*(self + 128))
    {
      AppC3DConfigCreate();
      AppC3DConfigSetTrackingMode();
      AppC3DConfigSetMaxNumberCodesToTrack();
      AppC3DCreate();
      AppC3DSetUpdateCallback();
    }
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = CMGetAttachment(buffer, *off_1E798A340, 0);
  v7 = v6;
  if (v6)
  {
    dispatch_group_enter(v6);
  }

  if ([CMGetAttachment(buffer *off_1E798A460])
  {
    processingQueue = self->_processingQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__BWAppClipCodeNode_renderSampleBuffer_forInput___block_invoke;
    v9[3] = &unk_1E7990178;
    v9[4] = self;
    v9[5] = buffer;
    dispatch_sync(processingQueue, v9);
  }

  if (v7)
  {
    dispatch_group_leave(v7);
  }
}

- (void)_processSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    if (!_FigIsCurrentDispatchQueue())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_2_5();
      FigDebugAssert3(v11);
    }

    v22 = 0;
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetPresentationTimeStamp(&v21, a2);
    *time = v21;
    CMTimeGetSeconds(time);
    v20 = 0u;
    memset(time, 0, sizeof(time));
    v4 = CMGetAttachment(a2, *MEMORY[0x1E6960470], 0);
    if (v4)
    {
      v5 = v4;
      if ([v4 length] == 48)
      {
        [v5 getBytes:time length:{objc_msgSend(v5, "length")}];
        v14 = vcvtq_f64_f32(vzip1_s32(*time, *&time[16]));
        v15 = vcvtq_f64_f32(__PAIR64__(*&time[4], v20));
        v16 = vcvtq_f64_f32(vzip2_s32(*&time[16], *&v20));
        v17 = vcvtq_f64_f32(vzip1_s32(*&vextq_s8(*time, *time, 8uLL), *&vextq_s8(*&time[16], *&time[16], 8uLL)));
        v18 = *(&v20 + 2);
        ImageBuffer = CMSampleBufferGetImageBuffer(a2);
        if (ImageBuffer && (*(buffer + 160) & 1) == 0)
        {
          v7 = ImageBuffer;
          *(buffer + 164) = [CMGetAttachment(ImageBuffer @"RotationDegrees"];
          *(buffer + 168) = [CMGetAttachment(v7 @"MirroredHorizontal"];
          *(buffer + 169) = [CMGetAttachment(v7 @"MirroredVertical"];
          *(buffer + 160) = 1;
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v9 = *MEMORY[0x1E695E480];
        v13 = v21;
        [dictionary setObject:CMTimeCopyAsDictionary(&v13 forKeyedSubscript:{v9), @"pts"}];
        memset(&v12, 0, sizeof(v12));
        BWGetOriginalPresentationTimeStampFromBuffer(a2, &v12);
        v13 = v12;
        [dictionary setObject:CMTimeCopyAsDictionary(&v13 forKeyedSubscript:{v9), @"OriginalPTS"}];
        [dictionary setObject:CMGetAttachment(a2 forKeyedSubscript:{*off_1E798A438, 0), @"primaryCaptureRectBeforeCropping"}];
        [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
        if (*(buffer + 136) == 1)
        {
          CMSampleBufferGetImageBuffer(a2);
          AppC3DProcessCameraFrameData();
          v10 = v22;
          if (v22 || (AppC3DFlush(), (v10 = v22) != 0))
          {
            CFRelease(v10);
          }
        }
      }
    }
  }
}

- (void)didReceiveAppC3DUpdate:(void *)update userData:
{
  if (self)
  {
    v48 = 0;
    NumberOfTrackingData = AppC3DTrackingResultGetNumberOfTrackingData();
    dictionaryRepresentation = [update objectForKeyedSubscript:@"pts"];
    value = [MEMORY[0x1E695DF70] array];
    if (NumberOfTrackingData)
    {
      v6 = 0;
      do
      {
        OUTLINED_FUNCTION_1_37();
        v7 = AppC3DTrackingResultCreateData();
        v8 = v48;
        if (v48)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_1_37();
        Metadata = AppC3DTrackingResultGetMetadata();
        v8 = v48;
        if (v48)
        {
          goto LABEL_29;
        }

        DataVersion = AppC3DTrackingResultGetDataVersion();
        v8 = v48;
        if (v48)
        {
          goto LABEL_29;
        }

        OUTLINED_FUNCTION_1_37();
        v11 = AppC3DTrackingResultCreateCorners();
        v8 = v48;
        if (v48)
        {
          goto LABEL_29;
        }

        if ([v11 count] != 4)
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", sampleTimingArray, v36, sampleSizeArray, v38, v39, v3, @"TimeStamp", @"BoundingRect");
          goto LABEL_28;
        }

        v12 = *(MEMORY[0x1E695F050] + 16);
        rect.origin = *MEMORY[0x1E695F050];
        rect.size = v12;
        CGRectMakeWithDictionaryRepresentation([update objectForKeyedSubscript:@"primaryCaptureRectBeforeCropping"], &rect);
        memset(&v44, 0, 48);
        FigCaptureGetTransformForMirroringRotationAndCrop(*(self + 168), *(self + 169), *(self + 164), &v44, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
        v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
        v14 = 0;
        v15 = 0.0;
        x = 1.0;
        v17 = 1.0;
        v18 = 0.0;
        do
        {
          point.x = 0.0;
          point.y = 0.0;
          CGPointMakeWithDictionaryRepresentation([v11 objectAtIndexedSubscript:v14], &point);
          v19 = vaddq_f64(*&v44.presentationTimeStamp.timescale, vmlaq_n_f64(vmulq_n_f64(*&v44.duration.epoch, point.y), *&v44.duration.value, point.x));
          point = v19;
          y = v19.y;
          [v13 addObject:CGPointCreateDictionaryRepresentation(v19)];
          if (point.x < x)
          {
            x = point.x;
          }

          if (point.x > v15)
          {
            v15 = point.x;
          }

          if (point.y < v17)
          {
            v17 = point.y;
          }

          if (point.y > v18)
          {
            v18 = point.y;
          }

          ++v14;
        }

        while (v14 != 4);
        v49.origin.x = x;
        v49.origin.y = v17;
        v49.size.width = (v15 - x);
        v49.size.height = (v18 - v17);
        v21 = CGRectCreateDictionaryRepresentation(v49);
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        [dictionary setObject:v7 forKeyedSubscript:@"RawData"];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", Metadata), @"Metadata"}];
        [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedChar:", DataVersion), @"Version"}];
        [dictionary setObject:v13 forKeyedSubscript:@"Corners"];
        [dictionary setObject:v21 forKeyedSubscript:@"BoundingRect"];
        [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"TimeStamp"];
        [value addObject:dictionary];
      }

      while (++v6 != NumberOfTrackingData);
    }

    v23 = [update objectForKeyedSubscript:@"OriginalPTS"];
    memset(&v45, 0, sizeof(v45));
    CMTimeMakeFromDictionary(&v45, v23);
    v24 = NumberOfTrackingData;
    if (!NumberOfTrackingData)
    {
      v24 = *(self + 184);
    }

    *(self + 184) = NumberOfTrackingData;
    v25 = *(self + 176);
    v44.duration = v45;
    [v25 node:self didEmitCodesCount:NumberOfTrackingData emittedIdentifiers:0 originalPTS:&v44];
    if (v24 >= 1)
    {
      *&v44.duration.value = *MEMORY[0x1E6960C70];
      v43 = *&v44.duration.value;
      v44.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
      epoch = v44.duration.epoch;
      memset(&rect, 0, 24);
      CMTimeMakeFromDictionary(&rect, dictionaryRepresentation);
      *&v44.presentationTimeStamp.value = rect.origin;
      v44.presentationTimeStamp.epoch = *&rect.size.width;
      *&v44.decodeTimeStamp.value = v43;
      v44.decodeTimeStamp.epoch = epoch;
      point.x = 0.0;
      OUTLINED_FUNCTION_2_5();
      v33 = CMSampleBufferCreate(v27, v28, v29, v30, v31, v32, 0, 1, &v44, 0, 0, &point);
      v34 = point.x;
      if (*&point.x && !v33)
      {
        CMSetAttachment(*&point.x, @"AppClipCodes", value, 1u);
        CMSetAttachment(*&point.x, @"AppClipCodesCount", [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(value, "count")}], 1u);
        [*(self + 16) emitSampleBuffer:*&point.x];
        v34 = point.x;
      }

      if (v34 != 0.0)
      {
        CFRelease(*&v34);
      }
    }

LABEL_28:
    v8 = v48;
    if (v48)
    {
LABEL_29:
      CFRelease(v8);
    }
  }
}

@end