@interface AVOfflineVideoStabilizer
+ (id)offlineVideoStabilizerWithTargetFrameDuration:(id *)duration dataProvider:(id)provider destinationBufferPool:(__CVPixelBufferPool *)pool stabilizationEnabled:(BOOL)enabled;
- (AVOfflineVideoStabilizer)initWithTargetFrameDuration:(id *)duration dataProvider:(id)provider destinationBufferPool:(__CVPixelBufferPool *)pool stabilizationEnabled:(BOOL)enabled;
- (int)_setupVISProcessor;
- (int)_validateSourcePixelBuffer:(__CVBuffer *)buffer withSampleTime:(id *)time metadata:(id)metadata isEndOfData:(BOOL *)data;
- (int)_validateStabilizationMetadata:(id)metadata withSampleTime:(id *)time isEndOfData:(BOOL *)data;
- (opaqueCMSampleBuffer)_copyStabilizedSampleBuffer:(id *)buffer;
- (opaqueCMSampleBuffer)_createSampleBufferWithPixelBuffer:(__CVBuffer *)buffer sampleTime:(id *)time futureMetadata:(id)metadata status:(int *)status;
- (opaqueCMSampleBuffer)copyStabilizedSampleBuffer:(id *)buffer;
- (uint64_t)_setupVISProcessor;
- (unint64_t)_extendedRowsOfOutputBuffer;
- (void)_teardownVISProcessor;
- (void)dealloc;
- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)buffer withStatus:(int)status;
@end

@implementation AVOfflineVideoStabilizer

+ (id)offlineVideoStabilizerWithTargetFrameDuration:(id *)duration dataProvider:(id)provider destinationBufferPool:(__CVPixelBufferPool *)pool stabilizationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = objc_alloc(objc_opt_class());
  v12 = *duration;
  return [v10 initWithTargetFrameDuration:&v12 dataProvider:provider destinationBufferPool:pool stabilizationEnabled:enabledCopy];
}

- (AVOfflineVideoStabilizer)initWithTargetFrameDuration:(id *)duration dataProvider:(id)provider destinationBufferPool:(__CVPixelBufferPool *)pool stabilizationEnabled:(BOOL)enabled
{
  if (AVCaptureClientHasEntitlement(AVCaptureEntitlementOfflineVideoStabilizer))
  {
    if ((duration->var2 & 1) != 0 && (time1 = *duration, time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(&time1, &time2) > 0))
    {
      if (provider)
      {
        if (pool)
        {
          v20.receiver = self;
          v20.super_class = AVOfflineVideoStabilizer;
          v11 = [(AVOfflineVideoStabilizer *)&v20 init];
          v12 = v11;
          if (v11)
          {
            v13 = *&duration->var0;
            *(v11 + 3) = duration->var3;
            *(v11 + 8) = v13;
            *(v11 + 9) = 1056964608;
            *(v11 + 8) = vcvtps_s32_f32(duration->var1 / duration->var0);
            *(v11 + 5) = [objc_alloc(MEMORY[0x1E6988198]) initWithReferencedObject:provider];
            v12->_pixelBufferPool = CFRetain(pool);
            v12->_stabilizationEnabled = enabled;
            v12->_outputSampleBuffers = objc_alloc_init(MEMORY[0x1E695DF70]);
            v12->_futureFrameMetadataDicts = objc_alloc_init(MEMORY[0x1E695DF70]);
            v12->_isFirstFrame = 1;
          }

          return v12;
        }

        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
      }

      else
      {
        v14 = MEMORY[0x1E695DF30];
        v15 = *MEMORY[0x1E695D940];
      }
    }

    else
    {
      v14 = MEMORY[0x1E695DF30];
      v15 = *MEMORY[0x1E695D940];
    }
  }

  else
  {
    v14 = MEMORY[0x1E695DF30];
    v15 = *MEMORY[0x1E695D940];
  }

  v16 = [v14 exceptionWithName:v15 reason:AVMethodExceptionReasonWithObjectAndSelector() userInfo:0];

  if (AVCaptureShouldThrowForAPIViolations(v17, v18))
  {
    objc_exception_throw(v16);
  }

  NSLog(&cfstr_SuppressingExc.isa, v16);
  return 0;
}

- (void)dealloc
{
  [(AVOfflineVideoStabilizer *)self _teardownVISProcessor];

  pixelBufferPool = self->_pixelBufferPool;
  if (pixelBufferPool)
  {
    CFRelease(pixelBufferPool);
  }

  cachedVideoFormatDescription = self->_cachedVideoFormatDescription;
  if (cachedVideoFormatDescription)
  {
    CFRelease(cachedVideoFormatDescription);
  }

  v5.receiver = self;
  v5.super_class = AVOfflineVideoStabilizer;
  [(AVOfflineVideoStabilizer *)&v5 dealloc];
}

- (opaqueCMSampleBuffer)copyStabilizedSampleBuffer:(id *)buffer
{
  v6 = 0;
  result = [(AVOfflineVideoStabilizer *)self _copyStabilizedSampleBuffer:&v6];
  if (result | v6)
  {
LABEL_4:
    if (!buffer)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (self->_videoOutputFrameNumber == 1)
  {
    result = [(AVOfflineVideoStabilizer *)self _copyStabilizedSampleBuffer:&v6];
    goto LABEL_4;
  }

  result = 0;
  if (!buffer)
  {
    return result;
  }

LABEL_5:
  *buffer = v6;
  return result;
}

- (opaqueCMSampleBuffer)_copyStabilizedSampleBuffer:(id *)buffer
{
  _setupVISProcessor = 0;
  referencedObject = [(AVWeakReference *)self->_dataProviderWeakReference referencedObject];
  p_clientMarkedEndOfMetadata = &self->_clientMarkedEndOfMetadata;
  if (self->_clientMarkedEndOfMetadata)
  {
    v6 = 0;
LABEL_11:
    if (self->_clientMarkedEndOfVideoData)
    {
      v13 = 0;
      v14 = 0;
      bufferCopy3 = buffer;
    }

    else
    {
      firstObject = [(NSMutableArray *)self->_futureFrameMetadataDicts firstObject];
      v25 = **&MEMORY[0x1E6960C70];
      v14 = [referencedObject copySourcePixelBufferForFrameNumber:self->_videoOutputFrameNumber outputSampleTime:&v25 stabilizer:self];
      time = v25;
      _setupVISProcessor = [(AVOfflineVideoStabilizer *)self _validateSourcePixelBuffer:v14 withSampleTime:&time metadata:firstObject isEndOfData:&self->_clientMarkedEndOfVideoData];
      bufferCopy3 = buffer;
      if (_setupVISProcessor)
      {
        v13 = 0;
        goto LABEL_31;
      }

      if (self->_clientMarkedEndOfVideoData)
      {
        finishProcessing = [(VISProcessor *)self->_visProcessor finishProcessing];
        v13 = 0;
        _setupVISProcessor = finishProcessing;
        self->_isFirstFrame = 1;
        if (finishProcessing)
        {
          goto LABEL_31;
        }
      }

      else
      {
        time = v25;
        v13 = [(AVOfflineVideoStabilizer *)self _createSampleBufferWithPixelBuffer:v14 sampleTime:&time futureMetadata:v6 status:&_setupVISProcessor];
        if (_setupVISProcessor)
        {
          goto LABEL_31;
        }

        visProcessor = self->_visProcessor;
        if (!visProcessor)
        {
          _setupVISProcessor = [(AVOfflineVideoStabilizer *)self _setupVISProcessor];
          if (_setupVISProcessor)
          {
            goto LABEL_31;
          }

          visProcessor = self->_visProcessor;
        }

        _setupVISProcessor = [(VISProcessor *)visProcessor enqueueBufferForProcessing:v13];
        if (_setupVISProcessor)
        {
          [AVOfflineVideoStabilizer _copyStabilizedSampleBuffer:];
          goto LABEL_31;
        }

        self->_isFirstFrame = 0;
        [(NSMutableArray *)self->_futureFrameMetadataDicts removeObject:firstObject];
        ++self->_videoOutputFrameNumber;
      }
    }

    firstObject2 = [(NSMutableArray *)self->_outputSampleBuffers firstObject];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (firstObject2)
      {
        v20 = CFGetTypeID(firstObject2);
        if (v20 != CMSampleBufferGetTypeID())
        {
          goto LABEL_31;
        }

        CMRemoveAttachment(firstObject2, *MEMORY[0x1E6990D40]);
        CFRetain(firstObject2);
        [(NSMutableArray *)self->_outputSampleBuffers removeObjectAtIndex:0];
      }

LABEL_32:
      v11 = _setupVISProcessor;
      goto LABEL_33;
    }

    _setupVISProcessor = [firstObject2 intValue];
    [(NSMutableArray *)self->_outputSampleBuffers removeObjectAtIndex:0];
LABEL_31:
    firstObject2 = 0;
    goto LABEL_32;
  }

  v6 = 0;
  v7 = *MEMORY[0x1E6991528];
  metadataOutputFrameNumber = self->_metadataOutputFrameNumber;
  v23 = *MEMORY[0x1E6960C70];
  v9 = *(MEMORY[0x1E6960C70] + 16);
  while (1)
  {
    *&v25.value = v23;
    v25.epoch = v9;
    v10 = [referencedObject copySourceStabilizationMetadataForFrameNumber:metadataOutputFrameNumber outputSampleTime:&v25 stabilizer:self];
    time = v25;
    v11 = [(AVOfflineVideoStabilizer *)self _validateStabilizationMetadata:v10 withSampleTime:&time isEndOfData:&self->_clientMarkedEndOfMetadata];
    _setupVISProcessor = v11;
    if (v11)
    {
      break;
    }

    if (*p_clientMarkedEndOfMetadata)
    {
      metadataOutputFrameNumber = self->_metadataOutputFrameNumber;
      metadataPrimingCount = self->_metadataPrimingCount;
      if (metadataOutputFrameNumber < metadataPrimingCount)
      {
        self->_metadataPrimingCount = metadataOutputFrameNumber;
        LODWORD(metadataPrimingCount) = metadataOutputFrameNumber;
      }
    }

    else
    {
      v6 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v10];
      time = v25;
      [v6 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", CMTimeGetSeconds(&time)), v7}];
      time = v25;
      [v6 setObject:objc_msgSend(MEMORY[0x1E696B098] forKeyedSubscript:{"valueWithCMTime:", &time), @"CinematicFutureOutputFramePTSValue"}];
      [(NSMutableArray *)self->_futureFrameMetadataDicts addObject:v6];
      metadataOutputFrameNumber = self->_metadataOutputFrameNumber + 1;
      self->_metadataOutputFrameNumber = metadataOutputFrameNumber;
      LODWORD(metadataPrimingCount) = self->_metadataPrimingCount;
    }

    if (metadataOutputFrameNumber > metadataPrimingCount || *p_clientMarkedEndOfMetadata)
    {
      goto LABEL_11;
    }
  }

  v13 = 0;
  v14 = 0;
  firstObject2 = 0;
  bufferCopy3 = buffer;
LABEL_33:
  if (v11 != -11822)
  {
    if (!v11)
    {
      goto LABEL_38;
    }

    [(AVOfflineVideoStabilizer *)self _teardownVISProcessor];
  }

  if (bufferCopy3)
  {
    *bufferCopy3 = AVLocalizedErrorWithUnderlyingOSStatus();
  }

LABEL_38:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  return firstObject2;
}

- (unint64_t)_extendedRowsOfOutputBuffer
{
  PixelBufferAttributes = CVPixelBufferPoolGetPixelBufferAttributes(self->_pixelBufferPool);
  intValue = [objc_msgSend_objectForKeyedSubscript_(PixelBufferAttributes) intValue];
  return ((intValue + 15) & 0xFFFFFFFFFFFFFFF0) - intValue;
}

- (int)_setupVISProcessor
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  futureFrameMetadataDicts = self->_futureFrameMetadataDicts;
  v4 = [(NSMutableArray *)futureFrameMetadataDicts countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v4)
  {
    v5 = *v34;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(futureFrameMetadataDicts);
        }

        if (objc_msgSend_objectForKeyedSubscript_(*(*(&v33 + 1) + 8 * i)))
        {
          v4 = 1;
          goto LABEL_11;
        }
      }

      v4 = [(NSMutableArray *)futureFrameMetadataDicts countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v7 = objc_msgSend_objectForKeyedSubscript_([(NSMutableArray *)self->_futureFrameMetadataDicts firstObject]);
  if (([v7 isEqualToString:*MEMORY[0x1E6990CA0]] & 1) == 0)
  {
    [v7 isEqualToString:*MEMORY[0x1E6990CA8]];
  }

  v8 = [objc_msgSend(MEMORY[0x1E698F770] "sharedInstance")];
  if (!v8)
  {
    [(AVOfflineVideoStabilizer *)v26 _setupVISProcessor];
    return v26[0];
  }

  v9 = v8;
  v10 = [MEMORY[0x1E6991798] VISConfigurationForVersion:v8];
  if (!v10)
  {
    [(AVOfflineVideoStabilizer *)v26 _setupVISProcessor];
    return v26[0];
  }

  v11 = v10;
  v12 = [MEMORY[0x1E6991798] VISProcessorForVersion:v9];
  self->_visProcessor = v12;
  if (!v12)
  {
    [(AVOfflineVideoStabilizer *)v26 _setupVISProcessor];
    return v26[0];
  }

  [(VISProcessor *)v12 setDelegate:self];
  [v11 setExtendedOutputRowsToFill:{-[AVOfflineVideoStabilizer _extendedRowsOfOutputBuffer](self, "_extendedRowsOfOutputBuffer")}];
  [v11 setInputPixelBufferAttributes:self->_cachedInputBufferAttributes];
  [v11 setOutputPixelBufferAttributes:CVPixelBufferPoolGetPixelBufferAttributes(self->_pixelBufferPool)];
  [v11 setTransformPlatform:0];
  v30 = *MEMORY[0x1E6990E28];
  v31 = &unk_1F1CE9F80;
  [v11 setSensorIDDict:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v31, &v30, 1)}];
  [v11 setSmoothingMethod:2];
  [v11 setSphereCorrectionEnabled:v4];
  [v11 setUseISPMotionData:1];
  [v11 setCinematicLookAheadFrameCount:self->_metadataPrimingCount];
  *&v13 = self->_lookAheadTime;
  [v11 setCinematicLookAheadTime:v13];
  [v11 setOutputPixelBufferPool:self->_pixelBufferPool];
  [v11 setGpuPriority:0];
  [v11 setMetalSubmissionAndCompletionQueuePriority:0];
  [v11 setVideoStabilizationDisabled:!self->_stabilizationEnabled];
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  FigCaptureGetDeviceToCameraTransform();
  v14 = 0;
  DWORD2(v27) = v15;
  DWORD2(v28) = v16;
  *&v27 = v17;
  *&v28 = v18;
  DWORD2(v29) = v19;
  *&v29 = v20;
  v21 = v26;
  do
  {
    for (j = 0; j != 3; ++j)
    {
      *&v21[2 * j] = *((&v27 + j) & 0xFFFFFFFFFFFFFFF3 | (4 * (v14 & 3)));
    }

    ++v14;
    v21 += 6;
  }

  while (v14 != 3);
  [v11 setCameraExtrinsicMatrix:{objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", v26, 72)}];
  [(VISProcessor *)self->_visProcessor setConfiguration:v11];
  v23 = [(VISProcessor *)self->_visProcessor prepareToProcess:0];
  v24 = v23;
  if (v23)
  {
    [(AVOfflineVideoStabilizer *)v23 _setupVISProcessor];
  }

  return v24;
}

- (void)_teardownVISProcessor
{
  visProcessor = self->_visProcessor;
  if (visProcessor)
  {
    [(VISProcessor *)visProcessor finishProcessing];
    v4 = self->_visProcessor;
  }
}

- (void)didCompleteProcessingOfBuffer:(opaqueCMSampleBuffer *)buffer withStatus:(int)status
{
  if (buffer)
  {
    outputSampleBuffers = self->_outputSampleBuffers;

LABEL_4:
    [(NSMutableArray *)outputSampleBuffers addObject:?];
    return;
  }

  if (status)
  {
    v6 = self->_outputSampleBuffers;
    [MEMORY[0x1E696AD98] numberWithInt:*&status];
    outputSampleBuffers = v6;

    goto LABEL_4;
  }
}

- (int)_validateStabilizationMetadata:(id)metadata withSampleTime:(id *)time isEndOfData:(BOOL *)data
{
  if (metadata)
  {
    if (time->var2)
    {
      if (!self->_requiredMetadataKeys)
      {
        v9 = objc_alloc(MEMORY[0x1E695DFD8]);
        self->_requiredMetadataKeys = [v9 initWithObjects:{*MEMORY[0x1E69910A8], *MEMORY[0x1E6990FA8], *MEMORY[0x1E69914A0], *MEMORY[0x1E6990FC8], *MEMORY[0x1E6991018], *MEMORY[0x1E6991498], *MEMORY[0x1E69914B8], *MEMORY[0x1E69914B0], 0}];
      }

      if (!self->_optionalMetadataKeys)
      {
        v10 = objc_alloc(MEMORY[0x1E695DFD8]);
        self->_optionalMetadataKeys = [v10 initWithObjects:{*MEMORY[0x1E69914C0], *MEMORY[0x1E69914A8], *MEMORY[0x1E6991050], *MEMORY[0x1E6991118], *MEMORY[0x1E6991150], 0}];
      }

      v11 = [MEMORY[0x1E695DFA8] setWithArray:{objc_msgSend(metadata, "allKeys")}];
      [v11 minusSet:self->_requiredMetadataKeys];
      [v11 minusSet:self->_optionalMetadataKeys];
      [v11 count];
      if ([v11 count] || (v12 = objc_msgSend(MEMORY[0x1E695DFA8], "setWithSet:", self->_requiredMetadataKeys), objc_msgSend(v12, "minusSet:", objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(metadata, "allKeys"))), objc_msgSend(v12, "count"), (v13 = objc_msgSend(v12, "count")) != 0))
      {
        fig_log_get_emitter();
        OUTLINED_FUNCTION_0_2();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
        LODWORD(v13) = -11822;
      }
    }

    else
    {
      fig_log_get_emitter();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v17, v19, v20, v21, v22, v23);
      fig_log_get_emitter();
      LODWORD(v13) = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v16, v18);
    }
  }

  else
  {
    LODWORD(v13) = 0;
  }

  if (data)
  {
    *data = metadata == 0;
  }

  return v13;
}

- (int)_validateSourcePixelBuffer:(__CVBuffer *)buffer withSampleTime:(id *)time metadata:(id)metadata isEndOfData:(BOOL *)data
{
  if (!buffer)
  {
    result = 0;
    goto LABEL_7;
  }

  if ((time->var2 & 1) == 0)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
LABEL_13:
    result = -11822;
    goto LABEL_7;
  }

  memset(&v13, 0, sizeof(v13));
  v9 = objc_msgSend_objectForKeyedSubscript_(metadata, a2, @"CinematicFutureOutputFramePTSValue");
  if (v9)
  {
    objc_msgSend_CMTimeValue(v9);
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  time1 = v13;
  time2 = *time;
  result = CMTimeCompare(&time1, &time2);
  if (result)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
    goto LABEL_13;
  }

LABEL_7:
  if (data)
  {
    *data = buffer == 0;
  }

  return result;
}

- (opaqueCMSampleBuffer)_createSampleBufferWithPixelBuffer:(__CVBuffer *)buffer sampleTime:(id *)time futureMetadata:(id)metadata status:(int *)status
{
  sampleBufferOut = 0;
  sampleTiming.presentationTimeStamp = *time;
  sampleTiming.decodeTimeStamp = sampleTiming.presentationTimeStamp;
  sampleTiming.duration = self->_targetFrameDuration;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (!self->_cachedInputBufferAttributes)
  {
    self->_cachedInputBufferAttributes = objc_alloc_init(MEMORY[0x1E695DF90]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_cachedInputBufferAttributes, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetWidth(buffer)], *MEMORY[0x1E6966208]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_cachedInputBufferAttributes, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedLong:CVPixelBufferGetHeight(buffer)], *MEMORY[0x1E69660B8]);
    -[NSMutableDictionary setObject:forKeyedSubscript:](self->_cachedInputBufferAttributes, "setObject:forKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:CVPixelBufferGetPixelFormatType(buffer)], *MEMORY[0x1E6966130]);
  }

  p_cachedVideoFormatDescription = &self->_cachedVideoFormatDescription;
  cachedVideoFormatDescription = self->_cachedVideoFormatDescription;
  v13 = *MEMORY[0x1E695E480];
  v14 = 1;
  while (1)
  {
    v15 = v14;
    if (cachedVideoFormatDescription)
    {
      goto LABEL_7;
    }

    v16 = CMVideoFormatDescriptionCreateForImageBuffer(v13, buffer, &self->_cachedVideoFormatDescription);
    if (v16)
    {
      break;
    }

    cachedVideoFormatDescription = *p_cachedVideoFormatDescription;
LABEL_7:
    v17 = CMSampleBufferCreateForImageBuffer(v13, buffer, 1u, 0, 0, cachedVideoFormatDescription, &sampleTiming, &sampleBufferOut);
    v18 = v17;
    if (v17 != -12743)
    {
      if (!v17)
      {
LABEL_13:
        if (self->_isFirstFrame)
        {
          futureFrameMetadataDicts = self->_futureFrameMetadataDicts;
          if ([(NSMutableArray *)futureFrameMetadataDicts count]> self->_metadataPrimingCount)
          {
            futureFrameMetadataDicts = [(NSMutableArray *)self->_futureFrameMetadataDicts subarrayWithRange:0];
          }

          [v10 setObject:futureFrameMetadataDicts forKeyedSubscript:*MEMORY[0x1E69912F0]];
        }

        if (metadata)
        {
          [v10 setObject:metadata forKeyedSubscript:*MEMORY[0x1E69912E8]];
        }

        CMSetAttachment(sampleBufferOut, *MEMORY[0x1E6990D40], v10, 1u);
      }

      if (!status)
      {
        goto LABEL_22;
      }

LABEL_21:
      *status = v18;
      goto LABEL_22;
    }

    if (*p_cachedVideoFormatDescription)
    {
      CFRelease(*p_cachedVideoFormatDescription);
      *p_cachedVideoFormatDescription = 0;
    }

    cachedVideoFormatDescription = 0;
    v14 = 0;
    if ((v15 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v18 = v16;
  if (status)
  {
    goto LABEL_21;
  }

LABEL_22:

  return sampleBufferOut;
}

- (uint64_t)_setupVISProcessor
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_3();
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *self = result;
  return result;
}

@end