@interface BWVideoDepthNode
- (BWVideoDepthNode)initWithInferenceScheduler:(id)scheduler captureDevice:(id)device videoDepthConfiguration:(id)configuration extraDepthOutputRetainedBufferCount:(int)count error:(int *)error;
- (CGFloat)_getInferenceCropRectAndAttachRenderingCropRect:(uint64_t)rect;
- (id)inputFormatForAttachedMediaKey:(id)key;
- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key;
- (id)inputVideoFormatForAttachedMediaKey:(id)key;
- (id)outputFormatForAttachedMediaKey:(id)key;
- (id)outputVideoFormatForAttachedMediaKey:(id)key;
- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format;
- (uint64_t)_processPCEDepth:(CFTypeRef *)depth toDepthSampleBuffer:;
- (void)_releaseResources;
- (void)_removeNonPropagatedAttachedMediaFromSampleBuffer:(uint64_t)buffer;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWVideoDepthNode

- (void)dealloc
{
  [(BWVideoDepthNode *)self _releaseResources];

  v3.receiver = self;
  v3.super_class = BWVideoDepthNode;
  [(BWNode *)&v3 dealloc];
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  if (!d && self->_releasesResourcesAtEndOfData)
  {
    [(BWVideoDepthNode *)self _releaseResources];
  }

  v7.receiver = self;
  v7.super_class = BWVideoDepthNode;
  [(BWNode *)&v7 didReachEndOfDataForConfigurationID:d input:input];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, @"PrimaryFormat"))
  {
    [(BWNodeOutput *)self->super._output setFormat:format];
  }

  else if ((objc_msgSend_isEqualToString_(key) & 1) != 0 || objc_msgSend_isEqualToString_(key))
  {
    v9 = -[BWVideoFormatRequirements initWithPixelBufferAttributes:]([BWInferenceVideoFormatRequirements alloc], "initWithPixelBufferAttributes:", [format pixelBufferAttributes]);
    [(BWInferenceVideoFormatRequirements *)v9 setIncludesInvalidContent:0];
    v16 = v9;
    v10 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1]);
    [(NSMutableDictionary *)self->_inferenceVideoFormatsToPrepareByAttachedMediaKeys setObject:v10 forKeyedSubscript:key];
    if (objc_msgSend_isEqualToString_(key))
    {

      self->_primaryMediaInputFormat = v10;
    }
  }

  else if (!self->_useMonocularInference && objc_msgSend_isEqualToString_(key))
  {
    v11 = objc_alloc_init(BWInferenceVideoFormatRequirements);
    -[BWVideoFormatRequirements setWidth:](v11, "setWidth:", [format width]);
    -[BWVideoFormatRequirements setHeight:](v11, "setHeight:", [format height]);
    [(BWVideoFormatRequirements *)v11 setSupportedPixelFormats:&unk_1F2249090];
    [(BWVideoFormatRequirements *)v11 setBytesPerRowAlignment:64];
    if (self->_sourceIsNuri)
    {
      depthDataBaseRotation = 0;
    }

    else
    {
      depthDataBaseRotation = [(BWFigVideoCaptureDevice *)self->_captureDevice depthDataBaseRotation];
    }

    [(BWInferenceVideoFormatRequirements *)v11 setRotationDegrees:depthDataBaseRotation];
    v15 = v11;
    v13 = +[BWInferenceVideoFormat formatByResolvingRequirements:](BWInferenceVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1]);
    self->_disparityInputFormat = v13;
    [(NSMutableDictionary *)self->_inferenceVideoFormatsToPrepareByAttachedMediaKeys setObject:v13 forKeyedSubscript:0x1F219EAD0];
  }

  v14.receiver = self;
  v14.super_class = BWVideoDepthNode;
  [(BWNode *)&v14 didSelectFormat:format forInput:input forAttachedMediaKey:key];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
  v8 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798A660), "BOOLValue"}];
  if ([objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798A838), "BOOLValue"}])
  {
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAAD0);
    v10 = *off_1E798A360;
    v11 = CMGetAttachment(AttachedMedia, *off_1E798A360, 0);
    memset(&rect, 0, sizeof(rect));
    CGRectMakeWithDictionaryRepresentation(v11, &rect);
    v13.f64[0] = FigCaptureMetadataUtilitiesScaleRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, self->_cropRectScaleFactor, v12);
    v73.origin.x = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v13, v14, v15, v16, 0.0, 0.0, 1.0, 1.0);
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v73);
    CMSetAttachment(AttachedMedia, v10, DictionaryRepresentation, 1u);
    CFRelease(DictionaryRepresentation);
  }

  if ((self->_skipProcessing | v8))
  {
    if (v8)
    {
      v18 = BWSampleBufferGetAttachedMedia(buffer, 0x1F21AAAD0);
      v19 = CGRectCreateDictionaryRepresentation(self->_lastInferenceCropRect);
      CMSetAttachment(v18, *off_1E798A360, v19, 1u);
      if (v19)
      {
        CFRelease(v19);
      }

      [(BWVideoDepthNode *)self _getInferenceCropRectAndAttachRenderingCropRect:buffer];
    }

    else
    {
      previousFeaturesSampleBuffer = self->_previousFeaturesSampleBuffer;
      if (previousFeaturesSampleBuffer)
      {
        CFRelease(previousFeaturesSampleBuffer);
        self->_previousFeaturesSampleBuffer = 0;
      }

      previousDisparitySampleBuffer = self->_previousDisparitySampleBuffer;
      if (previousDisparitySampleBuffer)
      {
        CFRelease(previousDisparitySampleBuffer);
        self->_previousDisparitySampleBuffer = 0;
      }
    }

    BWSampleBufferRemoveAttachedMedia(buffer, @"Depth");
    goto LABEL_13;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  target = 0;
  cf = 0;
  memset(&rect, 0, 24);
  CMSampleBufferGetPresentationTimeStamp(&rect, buffer);
  if (!self->_useMonocularInference && ![(BWVideoDepthNode *)self _processPCEDepth:buffer toDepthSampleBuffer:&cf])
  {
    goto LABEL_61;
  }

  BWSampleBufferRemoveAttachedMedia(buffer, @"Depth");
  if (!self->_useMonocularInference)
  {
    BWSampleBufferSetAttachedMedia(buffer, 0x1F219EAD0, cf);
  }

  if (self->_previousDisparitySampleBuffer)
  {
    v22 = self->_previousFeaturesSampleBuffer == 0;
  }

  else
  {
    v22 = 1;
  }

  if (self->_useMonocularInference && [(BWVideoDepthInferenceConfiguration *)self->_videoDepthConfiguration colorInputRotationChangesWithAspectRatio])
  {
    v23 = CMGetAttachment(buffer, *off_1E798A440, 0);
    if (v23)
    {
      LODWORD(v23) = [v23 BOOLValue];
    }

    self->_networkInputIsRotated = v23 ^ 1;
    v24 = self->_previousAspectRatioIsLandscape != v23;
    self->_previousAspectRatioIsLandscape = v23;
    if (!v24 && !v22)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  if (v22)
  {
LABEL_30:
    v25 = self->_previousFeaturesSampleBuffer;
    if (v25)
    {
      CFRelease(v25);
      self->_previousFeaturesSampleBuffer = 0;
    }

    v26 = self->_previousDisparitySampleBuffer;
    if (v26)
    {
      CFRelease(v26);
      self->_previousDisparitySampleBuffer = 0;
    }

    self->_previousDisparitySampleBuffer = CreateSampleBuffer();
    self->_previousFeaturesSampleBuffer = CreateSampleBuffer();
  }

LABEL_35:
  BWSampleBufferSetAttachedMedia(buffer, 0x1F219EAF0, self->_previousDisparitySampleBuffer);
  BWSampleBufferSetAttachedMedia(buffer, 0x1F219EB70, self->_disparityPostprocessingInStateSampleBuffer);
  BWSampleBufferSetAttachedMedia(buffer, 0x1F219EC30, self->_previousFeaturesSampleBuffer);
  BWSampleBufferSetAttachedMedia(buffer, 0x1F219EB90, self->_disparityPostprocessingOutStateSampleBuffer);
  if (!self->_useMonocularInference)
  {
    goto LABEL_42;
  }

  if (self->_disparityScalingFactor <= 0.0)
  {
    v27 = [(BWVideoDepthNode *)self _getInferenceCropRectAndAttachRenderingCropRect:buffer];
    v29 = v28;
    v31 = v30;
    v33 = v32;
    [(BWVideoDepthInferenceConfiguration *)self->_videoDepthConfiguration getMonocularDepthScaleFactor:buffer inputImageIsRotated:self->_networkInputIsRotated inferenceCropRect:?];
    self->_disparityScalingFactor = v34;
    self->_lastInferenceCropRect.origin.x = v27;
    self->_lastInferenceCropRect.origin.y = v29;
    self->_lastInferenceCropRect.size.width = v31;
    self->_lastInferenceCropRect.size.height = v33;
  }

  if (CVPixelBufferLockBaseAddress(self->_disparityMultiplierPixelBuffer, 0))
  {
    [BWVideoDepthNode renderSampleBuffer:forInput:];
  }

  else
  {
    BaseAddress = CVPixelBufferGetBaseAddress(self->_disparityMultiplierPixelBuffer);
    _S0 = self->_disparityScalingFactor;
    __asm { FCVT            H0, S0 }

    *BaseAddress = LOWORD(_S0);
    if (CVPixelBufferUnlockBaseAddress(self->_disparityMultiplierPixelBuffer, 0))
    {
      [BWVideoDepthNode renderSampleBuffer:forInput:];
    }

    else
    {
      SampleBuffer = CreateSampleBuffer();
      if (SampleBuffer)
      {
        v42 = SampleBuffer;
        BWSampleBufferSetAttachedMedia(buffer, 0x1F219EC70, SampleBuffer);
        CFRelease(v42);
LABEL_42:
        v43 = self->_previousFeaturesSampleBuffer;
        if (v43)
        {
          CFRelease(v43);
          self->_previousFeaturesSampleBuffer = 0;
        }

        v44 = self->_previousDisparitySampleBuffer;
        if (v44)
        {
          CFRelease(v44);
          self->_previousDisparitySampleBuffer = 0;
        }

        if ([(BWInferenceEngine *)self->_inferenceEngine performInferencesOnSampleBuffer:buffer attachingResultsToSampleBuffer:buffer skippingInferencesWithTypes:0])
        {
          goto LABEL_61;
        }

        v45 = BWSampleBufferGetAttachedMedia(buffer, @"Depth");
        ImageBuffer = CMSampleBufferGetImageBuffer(v45);
        *&time.value = rect.origin;
        time.epoch = *&rect.size.width;
        if (BWSampleBufferCreateFromPixelBuffer(ImageBuffer, &time, &self->_depthFormatDescription, &target))
        {
          goto LABEL_61;
        }

        v47 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        [v47 setObject:objc_msgSend(v7 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B540), *off_1E798B540}];
        [v47 setObject:objc_msgSend(v7 forKeyedSubscript:{"objectForKeyedSubscript:", @"MirroredHorizontal", @"MirroredHorizontal"}];
        CMSetAttachment(target, v6, v47, 1u);

        BWSampleBufferSetAttachedMedia(buffer, @"Depth", target);
        if (!self->_useMonocularInference)
        {
          goto LABEL_57;
        }

        v48 = [(BWVideoDepthNode *)self _getInferenceCropRectAndAttachRenderingCropRect:buffer];
        v52 = v48;
        v53 = v49;
        v54 = v50;
        v55 = v51;
        self->_lastInferenceCropRect.origin.x = v48;
        self->_lastInferenceCropRect.origin.y = v49;
        self->_lastInferenceCropRect.size.width = v50;
        self->_lastInferenceCropRect.size.height = v51;
        disparityAPSScaling = self->_disparityAPSScaling;
        if (disparityAPSScaling)
        {
          if ([(BWDisparityAPSScaling *)disparityAPSScaling isAPSScalingNeededForSbuf:buffer])
          {
            *&lhs.value = rect.origin;
            lhs.epoch = *&rect.size.width;
            rhs = self->_lastTimeStampWhenAPSComputed;
            CMTimeSubtract(&time, &lhs, &rhs);
            if (CMTimeGetSeconds(&time) > 0.200000003)
            {
              [(BWDisparityAPSScaling *)self->_disparityAPSScaling previewScalingFactorWithDisparityBuffer:ImageBuffer sbuf:buffer];
              if (v58 <= 0.0)
              {
                [(BWVideoDepthInferenceConfiguration *)self->_videoDepthConfiguration getMonocularDepthScaleFactor:buffer inputImageIsRotated:self->_networkInputIsRotated inferenceCropRect:v52, v53, v54, v55];
                disparityScalingFactor = self->_disparityScalingFactor;
              }

              else
              {
                disparityScalingFactor = self->_disparityScalingFactor;
                v60 = v58 * disparityScalingFactor;
              }

              v66 = disparityScalingFactor * 0.8 + v60 * 0.2;
              self->_disparityScalingFactor = v66;
              *&self->_lastTimeStampWhenAPSComputed.value = rect.origin;
              self->_lastTimeStampWhenAPSComputed.epoch = *&rect.size.width;
            }

            goto LABEL_57;
          }

          [(BWVideoDepthInferenceConfiguration *)self->_videoDepthConfiguration getMonocularDepthScaleFactor:buffer inputImageIsRotated:self->_networkInputIsRotated inferenceCropRect:v52, v53, v54, v55];
          v57 = self->_disparityScalingFactor * 0.8 + v61 * 0.2;
        }

        else
        {
          [(BWVideoDepthInferenceConfiguration *)self->_videoDepthConfiguration getMonocularDepthScaleFactor:buffer inputImageIsRotated:self->_networkInputIsRotated inferenceCropRect:v48, v49, v50, v51];
        }

        self->_disparityScalingFactor = v57;
LABEL_57:
        disparityPostprocessingInStateSampleBuffer = self->_disparityPostprocessingInStateSampleBuffer;
        self->_disparityPostprocessingInStateSampleBuffer = self->_disparityPostprocessingOutStateSampleBuffer;
        self->_disparityPostprocessingOutStateSampleBuffer = disparityPostprocessingInStateSampleBuffer;
        v63 = BWSampleBufferGetAttachedMedia(buffer, 0x1F219EBF0);
        self->_previousDisparitySampleBuffer = v63;
        if (v63)
        {
          CFRetain(v63);
        }

        v64 = BWSampleBufferGetAttachedMedia(buffer, 0x1F219EC50);
        self->_previousFeaturesSampleBuffer = v64;
        if (v64)
        {
          CFRetain(v64);
        }
      }
    }
  }

LABEL_61:
  [(BWVideoDepthNode *)self _removeNonPropagatedAttachedMediaFromSampleBuffer:buffer];
  if (cf)
  {
    CFRelease(cf);
  }

  if (target)
  {
    CFRelease(target);
  }

  if (self->_backpressureEvent)
  {
    metalCommandBuffer = [(BWInferenceEngine *)self->_inferenceEngine metalCommandBuffer];
    [metalCommandBuffer encodeSignalEvent:self->_backpressureEvent value:{objc_msgSend(CMGetAttachment(buffer, @"CinematicInferencesBackpressureEventNumber", 0), "longLongValue")}];
    [metalCommandBuffer commit];
    CMRemoveAttachment(buffer, @"CinematicInferencesBackpressureEventNumber");
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

LABEL_13:
  [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
}

- (CGFloat)_getInferenceCropRectAndAttachRenderingCropRect:(uint64_t)rect
{
  if (rect)
  {
    v43.origin.x = FigCaptureUnityRect();
    v43.origin.y = v4;
    v43.size.width = v5;
    v43.size.height = v6;
    AttachedMedia = BWSampleBufferGetAttachedMedia(a2, 0x1F21AAAD0);
    v8 = CMGetAttachment(AttachedMedia, *off_1E798A360, 0);
    if (v8)
    {
      memset(&rect, 0, sizeof(rect));
      CGRectMakeWithDictionaryRepresentation(v8, &rect);
      v9 = CMGetAttachment(AttachedMedia, *off_1E798A398, 0);
      if (v9)
      {
        memset(&v41, 0, sizeof(v41));
        CGRectMakeWithDictionaryRepresentation(v9, &v41);
        ImageBuffer = CMSampleBufferGetImageBuffer(AttachedMedia);
        Width = CVPixelBufferGetWidth(ImageBuffer);
        Height = CVPixelBufferGetHeight(ImageBuffer);
        FigCaptureMetadataUtilitiesExtendRectToAspectRatioOfTargetDimensions(Width | (Height << 32), *(rect + 248), &v43.origin.x, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
        FigCaptureMetadataUtilitiesDenormalizeCropRect(v41.origin.x, v41.origin.y, v41.size.width, v41.size.height, Width, Height);
        v14 = v13;
        v16 = v15;
        matched = FigCaptureMetadataUtilitiesMatchOrientationOfSize(*(rect + 248), *(rect + 252), v13, v15);
        v19 = v18;
        if (CGRectEqualToRect(v41, v43))
        {
          v20 = 0.0;
          v21 = 0.0;
        }

        else
        {
          FigCaptureMetadataUtilitiesDenormalizeCropRect(v43.origin.x, v43.origin.y, v43.size.width, v43.size.height, Width, Height);
          v23 = matched * (v14 / v22);
          v25 = v19 * (v16 / v24);
          v26 = v23;
          v27 = (matched - v23) * 0.5;
          v28 = v25;
          v29 = (v19 - v25) * 0.5;
          v30.f64[0] = v27;
          v20 = FigCaptureMetadataUtilitiesClampRectToBoundingRect(v30, v29, v26, v28, 0.0, 0.0, matched, v19);
          v21 = v31;
          matched = v32;
          v19 = v33;
        }

        v34 = [CMGetAttachment(AttachedMedia @"RotationDegrees"];
        if (v34 == 90)
        {
          v35 = matched;
        }

        else
        {
          v35 = v19;
        }

        if (v34 == 90)
        {
          v36 = v19;
        }

        else
        {
          v36 = matched;
        }

        if (v34 == 90)
        {
          v37 = v20;
        }

        else
        {
          v37 = v21;
        }

        if (v34 == 90)
        {
          v38 = v21;
        }

        else
        {
          v38 = v20;
        }

        DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*(&v35 - 3));
        CMSetAttachment(a2, *off_1E798A390, DictionaryRepresentation, 1u);
        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }
      }

      else
      {
        [BWVideoDepthNode _getInferenceCropRectAndAttachRenderingCropRect:];
      }
    }

    else
    {
      [BWVideoDepthNode _getInferenceCropRectAndAttachRenderingCropRect:];
    }
  }

  else
  {
    memset(&v43, 0, sizeof(v43));
  }

  return v43.origin.x;
}

- (id)preparedOutputPixelBufferPoolForAttachedMediaKey:(id)key format:(id)format
{
  if (!objc_msgSend_isEqualToString_(key, a2, @"Depth", format))
  {
    if (objc_msgSend_isEqualToString_(key))
    {
      v8 = 288;
    }

    else
    {
      if (!objc_msgSend_isEqualToString_(key))
      {
        return 0;
      }

      v8 = 296;
    }

    return *(&self->super.super.isa + v8);
  }

  v6 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:@"Depth"];

  return [v6 preparedPixelBufferPool];
}

- (id)inputFormatForAttachedMediaKey:(id)key
{
  v3 = [(BWNodeInput *)self->super._input mediaPropertiesForAttachedMediaKey:key];

  return [v3 resolvedVideoFormat];
}

- (id)inputVideoFormatForAttachedMediaKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, 0x1F219EAF0))
  {
    v5 = 280;
    return *(&self->super.super.isa + v5);
  }

  if ((objc_msgSend_isEqualToString_(key) & 1) != 0 || objc_msgSend_isEqualToString_(key))
  {
    v5 = 272;
    return *(&self->super.super.isa + v5);
  }

  if ((objc_msgSend_isEqualToString_(key) & 1) != 0 || objc_msgSend_isEqualToString_(key))
  {
    v5 = 264;
    return *(&self->super.super.isa + v5);
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    v5 = 336;
    return *(&self->super.super.isa + v5);
  }

  v7 = [(BWNodeInput *)self->super._input mediaPropertiesForAttachedMediaKey:key];

  return [v7 resolvedVideoFormat];
}

- (id)inputInferenceVideoFormatForAttachedMediaKey:(id)key
{
  if (objc_msgSend_isEqualToString_(key, a2, 0x1F219EAD0))
  {
    v5 = &OBJC_IVAR___BWVideoDepthNode__disparityInputFormat;
    return *(&self->super.super.isa + *v5);
  }

  if (objc_msgSend_isEqualToString_(key))
  {
    v5 = &OBJC_IVAR___BWVideoDepthNode__primaryMediaInputFormat;
    return *(&self->super.super.isa + *v5);
  }

  return 0;
}

- (id)outputFormatForAttachedMediaKey:(id)key
{
  v3 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:key];

  return [v3 resolvedFormat];
}

- (id)outputVideoFormatForAttachedMediaKey:(id)key
{
  v3 = [(BWNodeOutput *)self->super._output mediaPropertiesForAttachedMediaKey:key];

  return [v3 resolvedVideoFormat];
}

- (BWVideoDepthNode)initWithInferenceScheduler:(id)scheduler captureDevice:(id)device videoDepthConfiguration:(id)configuration extraDepthOutputRetainedBufferCount:(int)count error:(int *)error
{
  v45.receiver = self;
  v45.super_class = BWVideoDepthNode;
  v11 = [(BWNode *)&v45 init:scheduler];
  result = 0;
  if (configuration && v11)
  {
    *(v11 + 258) = [configuration sourceIsNuri];
    v36 = 2 * [configuration concurrencyWidth];
    *(v11 + 17) = scheduler;
    deviceCopy = device;
    *(v11 + 23) = deviceCopy;
    if (([deviceCopy attachesUprightExifOrientationMetadataToStreamingFrames] & 1) == 0)
    {
      [*(v11 + 23) setAttachesUprightExifOrientationMetadataToStreamingFrames:1];
    }

    v14 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v11];
    v15 = objc_alloc_init(BWVideoFormatRequirements);
    [OUTLINED_FUNCTION_28() setFormatRequirements:?];
    [(BWNodeInput *)v14 setPassthroughMode:1];
    if ([*(v11 + 23) depthType] - 1 <= 1)
    {
      v16 = objc_alloc_init(BWNodeInputMediaConfiguration);
      v17 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v17 setSupportedPixelFormats:&unk_1F2249030];
      [(BWNodeInputMediaConfiguration *)v16 setFormatRequirements:v17];
      [(BWNodeInputMediaConfiguration *)v16 setPassthroughMode:0];
      [(BWNodeInput *)v14 setMediaConfiguration:v16 forAttachedMediaKey:@"Depth"];
    }

    v18 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v18 setRetainedBufferCount:v36];
    [(BWNodeInputMediaConfiguration *)v18 setPassthroughMode:0];
    [(BWNodeInput *)v14 setMediaConfiguration:v18 forAttachedMediaKey:0x1F219EC10];
    if ([configuration usePrimaryPreviewSourceAttachedMediaForInference])
    {
      v19 = objc_alloc_init(BWNodeInputMediaConfiguration);
      [(BWNodeInputMediaConfiguration *)v19 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)v19 setPassthroughMode:0];
      [(BWNodeInput *)v14 setMediaConfiguration:v19 forAttachedMediaKey:0x1F21AAAD0];
    }

    [v11 addInput:v14];

    *(v11 + 31) = [configuration outputDimensions];
    v20 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
    [(BWNodeOutput *)v20 setPassthroughMode:1];
    v21 = objc_alloc_init(BWVideoFormatRequirements);
    [OUTLINED_FUNCTION_28() setFormatRequirements:?];
    v22 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v22 setSupportedPixelFormats:&unk_1F2249048];
    [(BWVideoFormatRequirements *)v22 setWidth:v11[62]];
    [(BWVideoFormatRequirements *)v22 setHeight:v11[63]];
    v23 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v23 setPassthroughMode:0];
    [(BWNodeOutputMediaConfiguration *)v23 setProvidesPixelBufferPool:1];
    [(BWNodeOutputMediaConfiguration *)v23 setOwningNodeRetainedBufferCount:(count + 1)];
    [(BWNodeOutputMediaConfiguration *)v23 setFormatRequirements:v22];
    [(BWNodeOutput *)v20 setMediaConfiguration:v23 forAttachedMediaKey:@"Depth"];
    [v11 addOutput:v20];
    *(v11 + 38) = [configuration backpressureEvent];
    *(v11 + 145) = 1;
    v24 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWVideoFormatRequirements *)v24 setSupportedPixelFormats:&unk_1F2249060];
    -[BWVideoFormatRequirements setWidth:](v24, "setWidth:", [configuration outputDimensions]);
    -[BWVideoFormatRequirements setHeight:](v24, "setHeight:", [configuration outputDimensions] >> 32);
    v44 = v24;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
    *(v11 + 34) = [OUTLINED_FUNCTION_28() formatByResolvingRequirements:?];
    *(v11 + 39) = configuration;
    *(v11 + 320) = [configuration videoDepthAlgorithm] == 4;
    *(v11 + 321) = [*(v11 + 23) cinematicVideoEnabled] ^ 1;
    v11[86] = -1082130432;
    v25 = *(MEMORY[0x1E695F058] + 16);
    *(v11 + 24) = *MEMORY[0x1E695F058];
    *(v11 + 25) = v25;
    FigGetCFPreferenceDoubleWithDefault();
    *&v26 = v26;
    v11[104] = LODWORD(v26);
    if (*(v11 + 320) == 1)
    {
      featuresPixelFormat = [configuration featuresPixelFormat];
      v28 = objc_alloc_init(BWVideoFormatRequirements);
      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:featuresPixelFormat];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
      [OUTLINED_FUNCTION_28() setSupportedPixelFormats:?];
      -[BWVideoFormatRequirements setWidth:](v28, "setWidth:", [configuration featuresDimensions]);
      -[BWVideoFormatRequirements setHeight:](v28, "setHeight:", [configuration featuresDimensions] >> 32);
      v42 = v28;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v42 count:1];
      *(v11 + 35) = [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];
      colorFeaturesPixelFormat = [configuration colorFeaturesPixelFormat];
      v30 = objc_alloc_init(BWVideoFormatRequirements);
      v41 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:colorFeaturesPixelFormat];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
      [OUTLINED_FUNCTION_28() setSupportedPixelFormats:?];
      -[BWVideoFormatRequirements setWidth:](v30, "setWidth:", [configuration colorFeaturesDimensions]);
      -[BWVideoFormatRequirements setHeight:](v30, "setHeight:", [configuration colorFeaturesDimensions] >> 32);
      v40 = v30;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
      *(v11 + 33) = [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];
      result = [configuration disparityMultiplierFormat];
      if (!result)
      {
        return result;
      }

      *(v11 + 42) = result;
      if ([objc_msgSend(configuration "portType")])
      {
        result = -[BWDisparityAPSScaling initWithPortType:sensorIDString:]([BWDisparityAPSScaling alloc], "initWithPortType:sensorIDString:", [configuration portType], objc_msgSend(configuration, "sensorIDString"));
        *(v11 + 44) = result;
        if (!result)
        {
          return result;
        }

        v31 = MEMORY[0x1E6960CC0];
        *(v11 + 90) = *MEMORY[0x1E6960CC0];
        *(v11 + 47) = *(v31 + 16);
      }
    }

    else
    {
      inputDimensions = [configuration inputDimensions];
      v33 = [configuration inputDimensions] >> 32;
      v34 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWVideoFormatRequirements *)v34 setSupportedPixelFormats:&unk_1F2249078];
      [(BWVideoFormatRequirements *)v34 setWidth:inputDimensions];
      [(BWVideoFormatRequirements *)v34 setHeight:v33];
      v39 = v34;
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
      *(v11 + 35) = [OUTLINED_FUNCTION_7() formatByResolvingRequirements:?];
      v35 = objc_alloc_init(BWVideoFormatRequirements);
      v38 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(configuration, "featuresPixelFormat")}];
      [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [OUTLINED_FUNCTION_7() setSupportedPixelFormats:?];
      -[BWVideoFormatRequirements setWidth:](v35, "setWidth:", [configuration featuresDimensions]);
      -[BWVideoFormatRequirements setHeight:](v35, "setHeight:", [configuration featuresDimensions] >> 32);
      v37 = v35;
      *(v11 + 33) = +[BWVideoFormat formatByResolvingRequirements:](BWVideoFormat, "formatByResolvingRequirements:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1]);
    }

    *(v11 + 36) = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", *(v11 + 35), v36, @"VideoDepthNodeDisparityPool", [*(v11 + 2) memoryPool]);
    *(v11 + 37) = -[BWPixelBufferPool initWithVideoFormat:capacity:name:memoryPool:]([BWPixelBufferPool alloc], "initWithVideoFormat:capacity:name:memoryPool:", *(v11 + 33), v36, @"VideoDepthNodeFeaturesPool", [*(v11 + 2) memoryPool]);
    *(v11 + 21) = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v11 setSupportsLiveReconfiguration:1];
    [v11 setSupportsPrepareWhileRunning:1];
    return v11;
  }

  return result;
}

- (void)_releaseResources
{
  if (self)
  {

    *(self + 184) = 0;
    *(self + 128) = 0;

    *(self + 136) = 0;
    *(self + 152) = 0;

    *(self + 160) = 0;
    *(self + 288) = 0;

    *(self + 296) = 0;
    *(self + 304) = 0;

    *(self + 264) = 0;
    *(self + 272) = 0;

    *(self + 280) = 0;
    v2 = *(self + 224);
    if (v2)
    {
      CFRelease(v2);
      *(self + 224) = 0;
    }

    v3 = *(self + 232);
    if (v3)
    {
      CFRelease(v3);
      *(self + 232) = 0;
    }

    v4 = *(self + 176);
    if (v4)
    {
      CFRelease(v4);
      *(self + 176) = 0;
    }

    v5 = *(self + 192);
    if (v5)
    {
      CFRelease(v5);
      *(self + 192) = 0;
    }

    v6 = *(self + 208);
    if (v6)
    {
      CFRelease(v6);
      *(self + 208) = 0;
    }

    v7 = *(self + 216);
    if (v7)
    {
      CFRelease(v7);
      *(self + 216) = 0;
    }

    v8 = *(self + 240);
    if (v8)
    {
      CFRelease(v8);
      *(self + 240) = 0;
    }

    v9 = *(self + 200);
    if (v9)
    {
      CFRelease(v9);
      *(self + 200) = 0;
    }

    v10 = *(self + 336);
    if (v10)
    {

      *(self + 336) = 0;
      v11 = *(self + 328);
      if (v11)
      {
        CFRelease(v11);
        *(self + 328) = 0;
      }
    }

    *(self + 168) = 0;
    *(self + 146) = 0;
  }
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v26.receiver = self;
  v26.super_class = BWVideoDepthNode;
  [(BWNode *)&v26 prepareForCurrentConfigurationToBecomeLive];
  if (self->_nodePrepared)
  {
    return;
  }

  PixelBuffer = CreatePixelBuffer();
  self->_disparityPostprocessingInStateSampleBuffer = CreateSampleBuffer();
  if (PixelBuffer)
  {
    CFRelease(PixelBuffer);
  }

  v4 = CreatePixelBuffer();
  self->_disparityPostprocessingOutStateSampleBuffer = CreateSampleBuffer();
  if (v4)
  {
    CFRelease(v4);
  }

  if (FigCaptureOptimizedBWInferenceScalingPathSupported())
  {
    v5 = objc_alloc_init(BWInferenceProcessingConfiguration);
    [(BWInferenceProcessingConfiguration *)v5 setScalingStrategy:10];
    [(BWInferenceProcessingConfiguration *)v5 setFilterType:2];
  }

  else
  {
    v5 = 0;
  }

  v6 = [[BWInferenceEngine alloc] initWithScheduler:self->_inferenceScheduler priority:6 processingConfiguration:v5 name:0];
  self->_inferenceEngine = v6;
  if (self->_useMonocularInference)
  {
    if ([+[FigCaptureCameraParameters monocularStreamingDepthType]!= 2 sharedInstance]
    {
      goto LABEL_13;
    }

    [(BWVideoDepthInferenceConfiguration *)self->_videoDepthConfiguration loadMonocularVideoPipeline];
    v7 = [(BWInferenceEngine *)self->_inferenceEngine addInferenceOfType:119 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:self->_videoDepthConfiguration];
    if (!v7)
    {
      v8 = CreatePixelBuffer();
      self->_disparityMultiplierPixelBuffer = v8;
      if (!v8)
      {
LABEL_13:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_2_33();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0);
        return;
      }

      goto LABEL_15;
    }

LABEL_34:
    v18 = v7;
    fig_log_get_emitter();
    OUTLINED_FUNCTION_2_33();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v18);
    return;
  }

  v7 = [(BWInferenceEngine *)v6 addInferenceOfType:109 version:BWInferenceVersionMakeMajor(1) & 0xFFFFFFFFFFFFLL configuration:self->_videoDepthConfiguration];
  if (v7)
  {
    goto LABEL_34;
  }

LABEL_15:
  initialDisparityPixelBuffer = self->_initialDisparityPixelBuffer;
  if (initialDisparityPixelBuffer)
  {
    CFRelease(initialDisparityPixelBuffer);
    self->_initialDisparityPixelBuffer = 0;
  }

  [(BWVideoFormat *)self->_internalDisparityVideoFormat width];
  [(BWVideoFormat *)self->_internalDisparityVideoFormat height];
  [(BWVideoFormat *)self->_internalDisparityVideoFormat pixelFormat];
  self->_initialDisparityPixelBuffer = CreatePixelBuffer();
  self->_previousDisparitySampleBuffer = CreateSampleBuffer();
  initialFeaturesPixelBuffer = self->_initialFeaturesPixelBuffer;
  if (initialFeaturesPixelBuffer)
  {
    CFRelease(initialFeaturesPixelBuffer);
    self->_initialFeaturesPixelBuffer = 0;
  }

  [(BWVideoFormat *)self->_featuresVideoFormat width];
  [(BWVideoFormat *)self->_featuresVideoFormat height];
  [(BWVideoFormat *)self->_featuresVideoFormat pixelFormat];
  self->_initialFeaturesPixelBuffer = CreatePixelBuffer();
  self->_previousFeaturesSampleBuffer = CreateSampleBuffer();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_inferenceVideoFormatsToPrepareByAttachedMediaKeys;
  v11 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      v14 = 0;
      v19 = v12;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        v16 = [(NSMutableDictionary *)self->_inferenceVideoFormatsToPrepareByAttachedMediaKeys objectForKeyedSubscript:v15];
        if ([v15 isEqual:0x1F219EAD0])
        {
          blankDisparityPixelBuffer = self->_blankDisparityPixelBuffer;
          if (blankDisparityPixelBuffer)
          {
            CFRelease(blankDisparityPixelBuffer);
            self->_blankDisparityPixelBuffer = 0;
          }

          [v16 width];
          [v16 height];
          self->_blankDisparityPixelBuffer = CreatePixelBuffer();
          v12 = v19;
        }

        [(BWInferenceEngine *)self->_inferenceEngine prepareForInputInferenceVideoFormat:v16 attachedMediaKey:v15];
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v22 objects:v21 count:16];
    }

    while (v12);
  }

  [(NSMutableDictionary *)self->_inferenceVideoFormatsToPrepareByAttachedMediaKeys removeAllObjects];
  if (![(BWInferenceEngine *)self->_inferenceEngine prepareForInferenceWithFormatProvider:self pixelBufferPoolProvider:self])
  {
    [(BWFigVideoCaptureDevice *)self->_captureDevice setPreviewVideoDepthNodeUnprepared:0];
    self->_nodePrepared = 1;
  }
}

- (uint64_t)_processPCEDepth:(CFTypeRef *)depth toDepthSampleBuffer:
{
  if (result)
  {
    v6 = result;
    AttachedMedia = BWSampleBufferGetAttachedMedia(a2, @"Depth");
    *depth = AttachedMedia;
    if (AttachedMedia)
    {
      CFRetain(AttachedMedia);
      v8 = *depth != 0;
    }

    else
    {
      v8 = 0;
    }

    v9 = [CMGetAttachment(a2 *off_1E798D2A8];
    if (*(v6 + 257) == 1)
    {
      *(v6 + 257) = v9 == 1 || !v8;
      if ((*(v6 + 257) & 1) == 0)
      {
        goto LABEL_14;
      }

      v10 = *(v6 + 257) ^ 1;
    }

    else
    {
      *(v6 + 257) = v9 == 1;
      if ((*(v6 + 257) & 1) == 0)
      {
        return ((v8 | [CMGetAttachment(a2 @"DepthDisabled"]) & 1) != 0;
      }

      v10 = 0;
    }

    v11 = OUTLINED_FUNCTION_2_81();
    [v12 updateSDOFBackgroundShiftSum:v11 invalidShiftRatio:? closeCanonicalDisparityAverage:? faceCanonicalDisparityAverages:? erodedForegroundRatio:? foregroundRatio:? occluded:? faces:? personSegmentationRatio:?];
    if (*depth)
    {
      CFRelease(*depth);
      *depth = 0;
    }

    memset(&v23, 0, sizeof(v23));
    CMSampleBufferGetPresentationTimeStamp(&v23, a2);
    v13 = *(v6 + 240);
    v22 = v23;
    v14 = BWSampleBufferCreateFromPixelBuffer(v13, &v22, (v6 + 176), depth);
    if (v14)
    {
      v21 = v14;
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v21, v3, v22.value, *&v22.timescale, LODWORD(v22.epoch), v23.value, *&v23.timescale, LODWORD(v23.epoch));
      return 0;
    }

    CMSetAttachment(a2, *off_1E798D2B0, MEMORY[0x1E695E118], 1u);
    if ((v10 & 1) == 0)
    {
      return ((v8 | [CMGetAttachment(a2 @"DepthDisabled"]) & 1) != 0;
    }

LABEL_14:
    v15 = *(v6 + 192);
    if (v15)
    {
      CFRelease(v15);
    }

    *(v6 + 192) = CreateSampleBuffer();
    v16 = *(v6 + 200);
    if (v16)
    {
      CFRelease(v16);
    }

    *(v6 + 200) = CreateSampleBuffer();
    [*(v6 + 272) width];
    [*(v6 + 272) height];
    [*(v6 + 272) pixelFormat];
    PixelBuffer = CreatePixelBuffer();
    v18 = *(v6 + 208);
    if (v18)
    {
      CFRelease(v18);
    }

    *(v6 + 208) = CreateSampleBuffer();
    if (PixelBuffer)
    {
      CFRelease(PixelBuffer);
    }

    v19 = OUTLINED_FUNCTION_2_81();
    [v20 updateSDOFBackgroundShiftSum:v19 invalidShiftRatio:? closeCanonicalDisparityAverage:? faceCanonicalDisparityAverages:? erodedForegroundRatio:? foregroundRatio:? occluded:? faces:? personSegmentationRatio:?];
    return ((v8 | [CMGetAttachment(a2 @"DepthDisabled"]) & 1) != 0;
  }

  return result;
}

- (void)_removeNonPropagatedAttachedMediaFromSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EAF0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EAD0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EB30);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EB50);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EBF0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EA90);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EC10);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EB90);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EB70);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EC30);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EC50);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EAB0);
    BWSampleBufferRemoveAttachedMedia(a2, 0x1F219EC70);

    BWSampleBufferRemoveAttachedMedia(a2, 0x1F21AAAD0);
  }
}

@end