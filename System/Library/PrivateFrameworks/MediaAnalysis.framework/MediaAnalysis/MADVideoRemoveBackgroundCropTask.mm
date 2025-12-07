@interface MADVideoRemoveBackgroundCropTask
+ (id)taskWithAsset:(id)asset previewRequest:(id)request generationRequest:(id)generationRequest cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler;
- (BOOL)exportFutureSamples:(id)samples sequenceWriter:(id)writer progress:(id)progress error:(id *)error;
- (BOOL)exportPastSamples:(id)samples sequenceWriter:(id)writer progress:(id)progress error:(id *)error;
- (BOOL)isAnimatedStickerPreferredWithPastSamples:(id)samples futureSamples:(id)futureSamples;
- (BOOL)isCanceled;
- (BOOL)run:(id *)run;
- (BOOL)validateRequest:(id *)request;
- (CGRect)scaleNormalizedCropRect:(CGRect)rect forPixelBuffer:(__CVBuffer *)buffer;
- (MADVideoRemoveBackgroundCropTask)initWithAsset:(id)asset previewRequest:(id)request generationRequest:(id)generationRequest cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler;
- (__CVBuffer)generateMaskForSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation error:(id *)error;
- (id).cxx_construct;
- (id)compressSequenceData:(id)data sequenceWriter:(id)writer outputWidth:(unint64_t *)width outputHeight:(unint64_t *)height;
- (id)decodeSamplesUntilTime:(id *)time trackOutput:(id)output baseTime:(id *)baseTime progress:(id)progress error:(id *)error;
- (id)decodeSettingsForTrack:(id)track;
- (id)processFutureSamplesFromTrackOutput:(id)output baseTime:(id *)time orientation:(unsigned int)orientation maskSampleBuffer:(opaqueCMSampleBuffer *)buffer maskPixelBuffer:(__CVBuffer *)pixelBuffer cropUnion:(CGRect *)union endTime:(id *)endTime progress:(id)self0 error:(id *)self1;
- (id)processPastSampleBuffers:(id)buffers orientation:(unsigned int)orientation maskPixelBuffer:(__CVBuffer *)buffer cropUnion:(CGRect *)union progress:(id)progress error:(id *)error;
- (void)dealloc;
- (void)publishPayloadWidth:(unint64_t)width height:(unint64_t)height data:(id)data;
- (void)publishPreviewResultsTimeRange:(id *)range pastSamples:(id)samples futureSamples:(id)futureSamples cropRect:(CGRect)rect;
@end

@implementation MADVideoRemoveBackgroundCropTask

- (MADVideoRemoveBackgroundCropTask)initWithAsset:(id)asset previewRequest:(id)request generationRequest:(id)generationRequest cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler
{
  assetCopy = asset;
  requestCopy = request;
  generationRequestCopy = generationRequest;
  blockCopy = block;
  handlerCopy = handler;
  resultHandlerCopy = resultHandler;
  completionHandlerCopy = completionHandler;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __143__MADVideoRemoveBackgroundCropTask_initWithAsset_previewRequest_generationRequest_cancelBlock_progressHandler_resultHandler_completionHandler___block_invoke;
  aBlock[3] = &unk_1E834C7A0;
  v20 = completionHandlerCopy;
  v36 = v20;
  v21 = _Block_copy(aBlock);
  v34.receiver = self;
  v34.super_class = MADVideoRemoveBackgroundCropTask;
  v22 = [(VCPMABaseTask *)&v34 initWithCompletionHandler:v21];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_previewRequest, request);
    objc_storeStrong(&v23->_request, generationRequest);
    objc_storeStrong(&v23->_asset, asset);
    v24 = _Block_copy(handlerCopy);
    progressHandler = v23->_progressHandler;
    v23->_progressHandler = v24;

    v26 = _Block_copy(resultHandlerCopy);
    resultHandler = v23->_resultHandler;
    v23->_resultHandler = v26;

    v28 = _Block_copy(v20);
    completionHandler = v23->_completionHandler;
    v23->_completionHandler = v28;

    [(VCPMABaseTask *)v23 setCancelBlock:blockCopy, generationRequestCopy, requestCopy, assetCopy];
  }

  return v23;
}

+ (id)taskWithAsset:(id)asset previewRequest:(id)request generationRequest:(id)generationRequest cancelBlock:(id)block progressHandler:(id)handler resultHandler:(id)resultHandler completionHandler:(id)completionHandler
{
  assetCopy = asset;
  requestCopy = request;
  generationRequestCopy = generationRequest;
  blockCopy = block;
  handlerCopy = handler;
  resultHandlerCopy = resultHandler;
  completionHandlerCopy = completionHandler;
  v21 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy previewRequest:requestCopy generationRequest:generationRequestCopy cancelBlock:blockCopy progressHandler:handlerCopy resultHandler:resultHandlerCopy completionHandler:completionHandlerCopy];

  return v21;
}

- (void)dealloc
{
  globalSession = [MEMORY[0x1E6984688] globalSession];
  [globalSession releaseCachedResources];

  v4.receiver = self;
  v4.super_class = MADVideoRemoveBackgroundCropTask;
  [(VCPMABaseTask *)&v4 dealloc];
}

- (BOOL)isCanceled
{
  stickerIdentifiers = [(MADVideoRemoveBackgroundRequest *)self->_request stickerIdentifiers];
  if ([stickerIdentifiers count])
  {
    isCanceled = 0;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MADVideoRemoveBackgroundCropTask;
    isCanceled = [(VCPMABaseTask *)&v6 isCanceled];
  }

  return isCanceled;
}

- (BOOL)validateRequest:(id *)request
{
  v38[1] = *MEMORY[0x1E69E9840];
  maxDimension = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];
  if (maxDimension)
  {
    minDimension = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
    if (minDimension)
    {
      maxDimension2 = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];
      integerValue = [maxDimension2 integerValue];
      minDimension2 = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
      integerValue2 = [minDimension2 integerValue];

      if (integerValue < integerValue2)
      {
        v11 = MEMORY[0x1E696ABC0];
        v37 = *MEMORY[0x1E696A578];
        v12 = MEMORY[0x1E696AEC0];
        minDimension3 = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
        maxDimension3 = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];
        v15 = [v12 stringWithFormat:@"Invalid request - min dimension (%@) exceeds max dimension (%@)", minDimension3, maxDimension3];
        v38[0] = v15;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
        v17 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v16];
        v18 = *request;
        *request = v17;

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  maxFileSize = [(MADVideoRemoveBackgroundRequest *)self->_request maxFileSize];
  if (maxFileSize && (-[MADVideoRemoveBackgroundRequest maxFileSize](self->_request, "maxFileSize"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 unsignedIntegerValue], v20, maxFileSize, !v21))
  {
    v31 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v32 = MEMORY[0x1E696AEC0];
    minDimension3 = [(MADVideoRemoveBackgroundRequest *)self->_request maxFileSize];
    maxDimension3 = [v32 stringWithFormat:@"Invalid request - max file size (%@) must be greater than zero", minDimension3];
    v36 = maxDimension3;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v30 = [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];
  }

  else
  {
    instancePoint = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
    if (!instancePoint)
    {
      return 1;
    }

    instancePoint2 = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
    [instancePoint2 pointValue];
    v39.x = v24;
    v39.y = v25;
    v40.origin.x = 0.0;
    v40.origin.y = 0.0;
    v40.size.width = 1.0;
    v40.size.height = 1.0;
    v26 = CGRectContainsPoint(v40, v39);

    if (v26)
    {
      return 1;
    }

    v28 = MEMORY[0x1E696ABC0];
    v33 = *MEMORY[0x1E696A578];
    v29 = MEMORY[0x1E696AEC0];
    minDimension3 = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
    maxDimension3 = [v29 stringWithFormat:@"Invalid request - instance point (%@) outside of unit rect", minDimension3];
    v34 = maxDimension3;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    v30 = [v28 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v15];
  }

  v16 = *request;
  *request = v30;
LABEL_14:

  return 0;
}

- (id)decodeSettingsForTrack:(id)track
{
  v21 = *MEMORY[0x1E69E9840];
  trackCopy = track;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F49BBD88 forKeyedSubscript:*MEMORY[0x1E6966130]];
  maxDimension = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];

  if (maxDimension)
  {
    maxDimension2 = [(MADVideoRemoveBackgroundRequest *)self->_request maxDimension];
    [maxDimension2 doubleValue];
    v9 = v8;

    [trackCopy naturalSize];
    v12 = v10 >= v11 ? v10 : v11;
    if (v9 < v12)
    {
      v13 = ((v10 * (v9 / v12)) + 1) & 0xFFFFFFFFFFFFFFFELL;
      v14 = ((v11 * (v9 / v12)) + 1) & 0xFFFFFFFFFFFFFFFELL;
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        v18[0] = 67109376;
        v18[1] = v13;
        v19 = 1024;
        v20 = v14;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Scaling decode to %dx%d", v18, 0xEu);
      }

      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v13];
      [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x1E6966208]];

      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:v14];
      [dictionary setObject:v16 forKeyedSubscript:*MEMORY[0x1E69660B8]];
    }
  }

  return dictionary;
}

- (id)decodeSamplesUntilTime:(id *)time trackOutput:(id)output baseTime:(id *)baseTime progress:(id)progress error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  progressCopy = progress;
  v44 = outputCopy;
  track = [outputCopy track];
  buf.duration = *time;
  v41 = [track makeSampleCursorWithPresentationTimeStamp:&buf];

  if (MediaAnalysisLogLevel() >= 6)
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      if (v41)
      {
        objc_msgSend_presentationTimeStamp(v41);
        v15 = *lhs;
        objc_msgSend_presentationTimeStamp(v41);
        timescale = rhs.timescale;
      }

      else
      {
        timescale = 0;
        v15 = 0;
        memset(lhs, 0, 24);
        memset(&rhs, 0, sizeof(rhs));
      }

      var0 = time->var0;
      var1 = time->var1;
      LODWORD(buf.duration.value) = 134218752;
      *(&buf.duration.value + 4) = v15;
      LOWORD(buf.duration.flags) = 1024;
      *(&buf.duration.flags + 2) = timescale;
      WORD1(buf.duration.epoch) = 2048;
      *(&buf.duration.epoch + 4) = var0;
      WORD2(buf.presentationTimeStamp.value) = 1024;
      *(&buf.presentationTimeStamp.value + 6) = var1;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Decoding until %lld/%d (mask time: %lld/%d)", &buf, 0x22u);
    }
  }

  array = [MEMORY[0x1E695DF70] array];
  v42 = baseTime->var0;
  v19 = *MEMORY[0x1E696A768];
  v20 = *MEMORY[0x1E696A578];
  do
  {
    v21 = objc_autoreleasePoolPush();
    if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
    {
      v22 = MEMORY[0x1E696ABC0];
      v54 = v20;
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
      v55[0] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
      v25 = [v22 errorWithDomain:v19 code:-128 userInfo:v24];
      v26 = *error;
      *error = v25;

      v27 = 1;
      goto LABEL_37;
    }

    copyNextSampleBuffer = [v44 copyNextSampleBuffer];
    originalSBuf = copyNextSampleBuffer;
    if (copyNextSampleBuffer)
    {
      memset(&v45, 0, sizeof(v45));
      CMSampleBufferGetPresentationTimeStamp(&v45, copyNextSampleBuffer);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.duration.value) = 134218240;
        *(&buf.duration.value + 4) = v45.value;
        LOWORD(buf.duration.flags) = 1024;
        *(&buf.duration.flags + 2) = v45.timescale;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Decoded %lld/%d", &buf, 0x12u);
      }

      if (v42)
      {
        memset(&buf.presentationTimeStamp, 0, 48);
        v29 = MEMORY[0x1E6960C70];
        *&buf.duration.value = *MEMORY[0x1E6960C70];
        buf.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        *lhs = v45;
        rhs = *baseTime;
        CMTimeSubtract(&buf.presentationTimeStamp, lhs, &rhs);
        buf.decodeTimeStamp = *v29;
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *lhs = 134218752;
          *&lhs[4] = v45.value;
          *&lhs[12] = 1024;
          *&lhs[14] = v45.timescale;
          *&lhs[18] = 2048;
          *&lhs[20] = buf.presentationTimeStamp.value;
          v51 = 1024;
          v52 = buf.presentationTimeStamp.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Adjusting time %lld/%d --> %lld/%d", lhs, 0x22u);
        }

        rhs.value = 0;
        if (CMSampleBufferCreateCopyWithNewTiming(0, originalSBuf, 1, &buf, &rhs))
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *lhs = 134218240;
            *&lhs[4] = v45.value;
            *&lhs[12] = 1024;
            *&lhs[14] = v45.timescale;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Failed to adjust sample timing (%lld/%d)", lhs, 0x12u);
          }

          v30 = MEMORY[0x1E696ABC0];
          v48 = v20;
          v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to adjust sample timing (%lld/%d)", v45.value, v45.timescale];
          v49 = v31;
          v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v33 = [v30 errorWithDomain:v19 code:-18 userInfo:v32];
          v34 = *error;
          *error = v33;

          CF<__CVBuffer *>::~CF(&rhs);
          v27 = 1;
          goto LABEL_36;
        }

        value = rhs.value;
        if (rhs.value)
        {
          value = CFRetain(rhs.value);
        }

        *lhs = value;
        if (originalSBuf)
        {
          CFRelease(originalSBuf);
          value = *lhs;
        }

        originalSBuf = value;
        *lhs = 0;
        CF<__CVBuffer *>::~CF(lhs);
        CF<__CVBuffer *>::~CF(&rhs);
      }

      [array addObject:originalSBuf];
      [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
      if (v41)
      {
        objc_msgSend_presentationTimeStamp(v41);
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      buf.duration = v45;
      *lhs = rhs;
      if (CMTimeCompare(&buf.duration, lhs) >= 0)
      {
        v27 = 5;
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 5;
    }

LABEL_36:
    CF<__CVBuffer *>::~CF(&originalSBuf);
LABEL_37:
    objc_autoreleasePoolPop(v21);
  }

  while (!v27);
  if (v27 == 5)
  {
    v36 = array;
    v37 = array;
  }

  else
  {
    v37 = 0;
    v36 = array;
  }

  return v37;
}

- (__CVBuffer)generateMaskForSampleBuffer:(opaqueCMSampleBuffer *)buffer orientation:(unsigned int)orientation error:(id *)error
{
  v6 = *&orientation;
  v123[1] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Creating mask to seed tracking", buf, 2u);
  }

  v9 = +[MADImageRemoveBackgroundResource sharedResource];
  [v9 setMaskOnly:1];
  v10 = +[VCPMADResourceManager sharedManager];
  v106 = [v10 activateResource:v9];

  v11 = objc_alloc_init(MEMORY[0x1E6984560]);
  v12 = [v11 setRevision:1];
  if (DeviceHasANE(v12, v13))
  {
    defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
    [v11 setProcessingDevice:defaultANEDevice];
  }

  v15 = objc_alloc(MEMORY[0x1E69845B8]);
  session = [v9 session];
  v17 = [v15 initWithCMSampleBuffer:buffer orientation:v6 options:MEMORY[0x1E695E0F8] session:session];

  v19 = VCPSignPostLog(v18);
  v20 = os_signpost_id_generate(v19);

  v22 = VCPSignPostLog(v21);
  v23 = v22;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "VNGenerateInstanceMaskRequest_PerformRequest", "", buf, 2u);
  }

  v123[0] = v11;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:1];
  v108 = 0;
  v25 = [v17 performRequests:v24 error:&v108];
  v26 = v108;

  if (v25)
  {
    v28 = VCPSignPostLog(v27);
    v29 = v28;
    if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v20, "VNGenerateInstanceMaskRequest_PerformRequest", "", buf, 2u);
    }

    results = [v11 results];
    firstObject = [results firstObject];

    if (!firstObject)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Video frame failed to produce a mask", buf, 2u);
      }

      v47 = MEMORY[0x1E696ABC0];
      v121 = *MEMORY[0x1E696A578];
      allInstances4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video frame failed to produce a mask"];
      v122 = allInstances4;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v122 forKeys:&v121 count:1];
      v50 = [v47 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v49];
      v51 = *error;
      *error = v50;

      goto LABEL_45;
    }

    allInstances = [firstObject allInstances];
    v33 = [allInstances count] == 0;

    if (v33)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] No instances detected in video frame", buf, 2u);
      }

      v52 = MEMORY[0x1E696ABC0];
      v119 = *MEMORY[0x1E696A578];
      allInstances4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No instances detected in video frame"];
      v120 = allInstances4;
      v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
      v54 = [v52 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v53];
      v55 = *error;
      *error = v54;

      goto LABEL_45;
    }

    allInstances2 = [firstObject allInstances];
    if ([allInstances2 count] <= 1)
    {
    }

    else
    {
      instancePoint = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
      v36 = instancePoint == 0;

      if (!v36)
      {
        instancePoint2 = [(MADVideoRemoveBackgroundRequest *)self->_request instancePoint];
        [instancePoint2 pointValue];
        v39 = v38;
        v41 = v40;

        instanceMask = [firstObject instanceMask];
        v43 = instanceMask;
        *&v117[4] = instanceMask;
        v118 = 1;
        if (!instanceMask)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [MADVideoRemoveBackgroundCropTask generateMaskForSampleBuffer:orientation:error:];
          }

          *buf = -50;
          goto LABEL_44;
        }

        v44 = CVPixelBufferLockBaseAddress(instanceMask, 1uLL);
        *buf = v44;
        if (v44)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            [MADVideoRemoveBackgroundCropTask generateMaskForSampleBuffer:v43 orientation:v44 error:?];
          }

LABEL_44:
          v63 = MEMORY[0x1E696ABC0];
          v114 = *MEMORY[0x1E696A578];
          v64 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to lock instance mask"];
          v115 = v64;
          v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
          v66 = [v63 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v65];
          v67 = *error;
          *error = v66;

          allInstances4 = 0;
LABEL_45:
          v46 = 0;
LABEL_46:

          goto LABEL_47;
        }

        Width = CVPixelBufferGetWidth([firstObject instanceMask]);
        Height = CVPixelBufferGetHeight([firstObject instanceMask]);
        BytesPerRow = CVPixelBufferGetBytesPerRow([firstObject instanceMask]);
        BaseAddress = CVPixelBufferGetBaseAddress([firstObject instanceMask]);
        v73 = (v39 * (Width - 1));
        v74 = Width;
        v75 = ((1.0 - v41) * (Height - 1));
        v76 = &BaseAddress[BytesPerRow * v75];
        v103 = v73;
        v77 = Height;
        v78 = v76[v73];
        if (v76[v73])
        {
          if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_79;
          }

          *v111 = 67109632;
          *v112 = v78;
          *&v112[4] = 1024;
          *&v112[6] = v103;
          LOWORD(v113) = 1024;
          *(&v113 + 2) = v75;
          v79 = MEMORY[0x1E69E9C10];
          v80 = "[RMBG] Selecting instance %d at location (%d, %d)";
        }

        else
        {
          v100 = BaseAddress;
          v101 = v77;
          v102 = v74;
          if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v111 = 67109376;
            *v112 = v103;
            *&v112[4] = 1024;
            *&v112[6] = v75;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] No instance at (%d, %d), searching nearby", v111, 0xEu);
          }

          v78 = 0;
          v81 = 0;
          v82 = v101 - 50;
          if (v75 - 25 < v101 - 50)
          {
            v82 = v75 - 25;
          }

          if (v75 <= 25)
          {
            v83 = 0;
          }

          else
          {
            v83 = v82;
          }

          v84 = v102 - 50;
          if (v103 - 25 < v102 - 50)
          {
            v84 = v103 - 25;
          }

          if (v103 <= 25)
          {
            v85 = 0;
          }

          else
          {
            v85 = v84;
          }

          v86 = &v100[BytesPerRow * v83 + v85];
          v87 = v83 - v75;
          v88 = v85 - v103;
          v89 = 0x7FFFFFFF;
          do
          {
            for (i = 0; i != 50; ++i)
            {
              v91 = (v87 + v81) * (v87 + v81) + (v88 + i) * (v88 + i);
              if (v91 < v89)
              {
                v92 = *(v86 + i);
              }

              else
              {
                v91 = v89;
                v92 = v78;
              }

              if (*(v86 + i))
              {
                v89 = v91;
                v78 = v92;
              }
            }

            ++v81;
            v86 += BytesPerRow;
          }

          while (v81 != 50);
          if (!v78)
          {
            if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v111 = 134218240;
              *v112 = v39;
              *&v112[8] = 2048;
              v113 = v41;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] No instances near specified point (%0.2f, %0.2f)", v111, 0x16u);
            }

            v96 = MEMORY[0x1E696ABC0];
            v109 = *MEMORY[0x1E696A578];
            v104 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No instances near specified point (%0.2f, %0.2f)", *&v39, *&v41];
            v110 = v104;
            v97 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v110 forKeys:&v109 count:1];
            v93 = v43;
            v98 = [v96 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v97];
            v99 = *error;
            *error = v98;

            allInstances4 = 0;
            v94 = 0;
LABEL_80:
            v95 = CVPixelBufferUnlockBaseAddress(v93, 1uLL);
            if (v95 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *v111 = 134218240;
              *v112 = v93;
              *&v112[8] = 1024;
              LODWORD(v113) = v95;
              _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unlock CVPixelBuffer (%p, %d)", v111, 0x12u);
            }

            if ((v94 & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_37:
            v107 = v26;
            v46 = [firstObject createMaskForInstances:allInstances4 error:&v107];
            v60 = v107;

            if (v46)
            {
              [v106 reset];
            }

            else
            {
              v61 = [v60 copy];
              v62 = *error;
              *error = v61;

              v46 = 0;
            }

            v26 = v60;
            goto LABEL_46;
          }

          if (MediaAnalysisLogLevel() < 5 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
LABEL_79:
            allInstances4 = [MEMORY[0x1E696AC90] indexSetWithIndex:v78];
            v93 = v43;
            v94 = 1;
            goto LABEL_80;
          }

          *v111 = 67109632;
          *v112 = v78;
          *&v112[4] = 1024;
          *&v112[6] = v103;
          LOWORD(v113) = 1024;
          *(&v113 + 2) = v75;
          v79 = MEMORY[0x1E69E9C10];
          v80 = "[RMBG] Selecting instance %d near location (%d, %d)";
        }

        _os_log_impl(&dword_1C9B70000, v79, OS_LOG_TYPE_DEFAULT, v80, v111, 0x14u);
        goto LABEL_79;
      }
    }

    allInstances3 = [firstObject allInstances];
    v57 = [allInstances3 count];
    v58 = @"only instance";
    if (v57 > 1)
    {
      v58 = @"all instances";
    }

    v59 = v58;

    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v117 = v59;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Selecting %@", buf, 0xCu);
    }

    allInstances4 = [firstObject allInstances];

    goto LABEL_37;
  }

  v45 = [v26 copy];
  v46 = 0;
  firstObject = *error;
  *error = v45;
LABEL_47:

  objc_autoreleasePoolPop(context);
  return v46;
}

- (CGRect)scaleNormalizedCropRect:(CGRect)rect forPixelBuffer:(__CVBuffer *)buffer
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = CVPixelBufferGetWidth(buffer);
  v10 = CVPixelBufferGetHeight(buffer);
  v11 = round(x * v9);
  v12 = round((1.0 - y - height) * v10);
  v13 = round(width * v9);
  v14 = round(height * v10);
  v15 = 0;
  v16 = 0;
  v17 = v9;

  return CGRectIntersection(*&v11, *&v15);
}

- (id)processPastSampleBuffers:(id)buffers orientation:(unsigned int)orientation maskPixelBuffer:(__CVBuffer *)buffer cropUnion:(CGRect *)union progress:(id)progress error:(id *)error
{
  v79[1] = *MEMORY[0x1E69E9840];
  buffersCopy = buffers;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v12 = +[MADVideoRemoveBackgroundResource sharedResource];
  session = [v12 session];

  *&buf[16] = 0;
  *buf = kMaskUpdateInterval;
  v70 = [objc_alloc(MEMORY[0x1E69846A8]) initWithFrameUpdateSpacing:buf mask:buffer completionHandler:0];
  [v70 setGenerateCropRect:1];
  array = [MEMORY[0x1E695DF70] array];
  v62 = objc_alloc_init(MADConfidenceTracker);
  v13 = MEMORY[0x1E69E9C10];
  v67 = *MEMORY[0x1E696A768];
  v68 = *MEMORY[0x1E696A578];
  do
  {
    if (![buffersCopy count])
    {
      goto LABEL_35;
    }

    v14 = objc_autoreleasePoolPush();
    if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
    {
      v15 = MEMORY[0x1E696ABC0];
      v78 = v68;
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
      v79[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v79 forKeys:&v78 count:1];
      v18 = [v15 errorWithDomain:v67 code:-128 userInfo:v17];
      v19 = *error;
      *error = v18;

      v20 = 1;
    }

    else
    {
      lastObject = [buffersCopy lastObject];

      memset(&v75, 0, sizeof(v75));
      CMSampleBufferGetPresentationTimeStamp(&v75, lastObject);
      if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v75.value;
        *&buf[12] = 1024;
        *&buf[14] = v75.timescale;
        _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_INFO, "[RMBG][BW] Tracking mask %lld/%d", buf, 0x12u);
      }

      v22 = objc_alloc(MEMORY[0x1E69845B8]);
      v23 = [v22 initWithCMSampleBuffer:lastObject orientation:orientation options:MEMORY[0x1E695E0F8] session:session];
      v24 = VCPSignPostLog(v23);
      v25 = os_signpost_id_generate(v24);

      v27 = VCPSignPostLog(v26);
      v28 = v27;
      if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v25, "VNTrackMaskRequest_PerformRequest", "", buf, 2u);
      }

      v77 = v70;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v77 count:1];
      v74 = 0;
      v30 = [v23 performRequests:v29 error:&v74];
      v31 = v74;

      if (v30)
      {
        v33 = VCPSignPostLog(v32);
        v34 = v33;
        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v34, OS_SIGNPOST_INTERVAL_END, v25, "VNTrackMaskRequest_PerformRequest", "", buf, 2u);
        }

        results = [v70 results];
        firstObject = [results firstObject];

        if (firstObject)
        {
          if (+[MADVideoRemoveBackgroundSettings visionTrimEnabled](MADVideoRemoveBackgroundSettings, "visionTrimEnabled") && ([firstObject confidence], -[MADConfidenceTracker updateConfidence:](v62, "updateConfidence:", v37), v39 = v38, +[MADVideoRemoveBackgroundSettings visionTrimThreshold](MADVideoRemoveBackgroundSettings, "visionTrimThreshold"), v39 < v40))
          {
            if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              *&buf[4] = v75.value;
              *&buf[12] = 1024;
              *&buf[14] = v75.timescale;
              _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_DEFAULT, "[RMBG][BW] Confidence below threshold (%lld/%d), trimming", buf, 0x12u);
            }

            [buffersCopy removeAllObjects];
            v20 = 3;
          }

          else
          {
            x = union->origin.x;
            y = union->origin.y;
            width = union->size.width;
            height = union->size.height;
            [firstObject croppedBoundingBox];
            -[MADVideoRemoveBackgroundCropTask scaleNormalizedCropRect:forPixelBuffer:](self, "scaleNormalizedCropRect:forPixelBuffer:", [firstObject pixelBuffer], v45, v46, v47, v48);
            v82.origin.x = v49;
            v82.origin.y = v50;
            v82.size.width = v51;
            v82.size.height = v52;
            v81.origin.x = x;
            v81.origin.y = y;
            v81.size.width = width;
            v81.size.height = height;
            *union = CGRectUnion(v81, v82);
            v53 = [MADMattedFullFrame alloc];
            pixelBuffer = [firstObject pixelBuffer];
            objc_msgSend_timeRange(firstObject);
            v72 = *buf;
            v73 = *&buf[16];
            [firstObject confidence];
            v56 = [(MADMattedFullFrame *)v53 initWithPixelBuffer:pixelBuffer presentationTimestamp:&v72 confidence:v55];
            [array addObject:v56];

            [buffersCopy removeLastObject];
            [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
            v20 = 0;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *&buf[4] = v75.value;
            *&buf[12] = 1024;
            *&buf[14] = v75.timescale;
            _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_DEFAULT, "[RMBG][BW] No observation at time %lld/%d", buf, 0x12u);
          }

          v20 = 2;
        }
      }

      else
      {
        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v57 = [v31 description];
          *buf = 138412290;
          *&buf[4] = v57;
          _os_log_impl(&dword_1C9B70000, v13, OS_LOG_TYPE_ERROR, "[RMBG][BW] VNTrackMaskRequest failed (%@)", buf, 0xCu);
        }

        v58 = [v31 copy];
        firstObject = *error;
        *error = v58;
        v20 = 1;
      }
    }

    objc_autoreleasePoolPop(v14);
  }

  while (!v20 || v20 == 2);
  if (v20 == 3)
  {
LABEL_35:
    v59 = array;
    goto LABEL_37;
  }

  v59 = 0;
LABEL_37:

  objc_autoreleasePoolPop(context);

  return v59;
}

- (BOOL)exportPastSamples:(id)samples sequenceWriter:(id)writer progress:(id)progress error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  writerCopy = writer;
  progressCopy = progress;
  v44 = *MEMORY[0x1E696A768];
  v45 = *MEMORY[0x1E696A578];
  do
  {
    v11 = [samplesCopy count];
    if (!v11)
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
    {
      v13 = MEMORY[0x1E696ABC0];
      v56 = v45;
      lastObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
      v57[0] = lastObject;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v16 = [v13 errorWithDomain:v44 code:-128 userInfo:v15];
      v17 = *error;
      *error = v16;
    }

    else
    {
      lastObject = [samplesCopy lastObject];
      v18 = MediaAnalysisLogLevel();
      if (v18 >= 6)
      {
        v19 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          if (lastObject)
          {
            objc_msgSend_presentationTimestamp(lastObject);
            v21 = *v47;
            objc_msgSend_presentationTimestamp(lastObject);
            v22 = v46;
          }

          else
          {
            v22 = 0;
            v21 = 0;
            *v47 = 0;
            v48 = 0;
            v49 = 0;
            v46 = 0;
          }

          *buf = 134218240;
          v53 = v21;
          v54 = 1024;
          v55 = v22;
          v19 = MEMORY[0x1E69E9C10];
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Encoding %lld/%d", buf, 0x12u);
        }
      }

      v23 = VCPSignPostLog(v18);
      v24 = os_signpost_id_generate(v23);

      v26 = VCPSignPostLog(v25);
      v27 = v26;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *v47 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v24, "MADVideoRemoveBackground_ExportFrame", "", v47, 2u);
      }

      pixelBuffer = [lastObject pixelBuffer];
      if (lastObject)
      {
        objc_msgSend_presentationTimestamp(lastObject);
      }

      else
      {
        *v47 = 0;
        v48 = 0;
        v49 = 0;
      }

      v29 = [writerCopy addPixelBuffer:pixelBuffer withTime:v47];
      if (!v29)
      {
        v34 = VCPSignPostLog(v29);
        v35 = v34;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *v47 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v24, "MADVideoRemoveBackground_ExportFrame", "", v47, 2u);
        }

        [samplesCopy removeLastObject];
        [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
        v36 = 1;
        goto LABEL_28;
      }

      v30 = MEMORY[0x1E696ABC0];
      v50 = v45;
      v31 = MEMORY[0x1E696AEC0];
      if (lastObject)
      {
        objc_msgSend_presentationTimestamp(lastObject);
        v32 = *v47;
        objc_msgSend_presentationTimestamp(lastObject);
        v33 = v46;
      }

      else
      {
        v33 = 0;
        v32 = 0;
        *v47 = 0;
        v48 = 0;
        v49 = 0;
        v46 = 0;
      }

      v37 = [v31 stringWithFormat:@"Failed to export matted frame (%lld/%d)", v32, v33];
      v51 = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v39 = [v30 errorWithDomain:v44 code:-18 userInfo:v38];
      v40 = *error;
      *error = v39;
    }

    v36 = 0;
LABEL_28:

    objc_autoreleasePoolPop(v12);
  }

  while ((v36 & 1) != 0);

  return v11 == 0;
}

- (id)processFutureSamplesFromTrackOutput:(id)output baseTime:(id *)time orientation:(unsigned int)orientation maskSampleBuffer:(opaqueCMSampleBuffer *)buffer maskPixelBuffer:(__CVBuffer *)pixelBuffer cropUnion:(CGRect *)union endTime:(id *)endTime progress:(id)self0 error:(id *)self1
{
  v112[1] = *MEMORY[0x1E69E9840];
  outputCopy = output;
  progressCopy = progress;
  context = objc_autoreleasePoolPush();
  v14 = +[MADVideoRemoveBackgroundResource sharedResource];
  session = [v14 session];

  buf.duration.epoch = 0;
  *&buf.duration.value = kMaskUpdateInterval;
  v94 = [objc_alloc(MEMORY[0x1E69846A8]) initWithFrameUpdateSpacing:&buf mask:pixelBuffer completionHandler:0];
  [v94 setGenerateCropRect:1];
  v15 = objc_autoreleasePoolPush();
  v16 = objc_alloc(MEMORY[0x1E69845B8]);
  v17 = [v16 initWithCMSampleBuffer:buffer orientation:orientation options:MEMORY[0x1E695E0F8] session:session];
  v18 = VCPSignPostLog(v17);
  v19 = os_signpost_id_generate(v18);

  v21 = VCPSignPostLog(v20);
  v22 = v21;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    LOWORD(buf.duration.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v19, "VNTrackMaskRequest_PerformRequest", "", &buf, 2u);
  }

  v112[0] = v94;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:1];
  v101 = 0;
  v24 = [v17 performRequests:v23 error:&v101];
  v25 = v101;

  if (v24)
  {
    v27 = VCPSignPostLog(v26);
    v28 = v27;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      LOWORD(buf.duration.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v28, OS_SIGNPOST_INTERVAL_END, v19, "VNTrackMaskRequest_PerformRequest", "", &buf, 2u);
    }
  }

  else
  {
    v29 = [v25 copy];
    v28 = *error;
    *error = v29;
  }

  objc_autoreleasePoolPop(v15);
  v30 = v94;
  if (v24)
  {
    var0 = time->var0;
    array = [MEMORY[0x1E695DF70] array];
    v86 = objc_alloc_init(MADConfidenceTracker);
    v31 = *MEMORY[0x1E696A768];
    v96 = *MEMORY[0x1E696A578];
    while (1)
    {
      v32 = objc_autoreleasePoolPush();
      if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
      {
        v33 = MEMORY[0x1E696ABC0];
        v110 = v96;
        v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
        v111 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        v36 = [v33 errorWithDomain:v31 code:-128 userInfo:v35];
        v37 = *error;
        *error = v36;

        v38 = 1;
        goto LABEL_57;
      }

      copyNextSampleBuffer = [outputCopy copyNextSampleBuffer];
      originalSBuf = copyNextSampleBuffer;
      if (copyNextSampleBuffer)
      {
        memset(&presentationTimeStamp, 0, sizeof(presentationTimeStamp));
        CMSampleBufferGetPresentationTimeStamp(&presentationTimeStamp, copyNextSampleBuffer);
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          LODWORD(buf.duration.value) = 134218240;
          *(&buf.duration.value + 4) = presentationTimeStamp.value;
          LOWORD(buf.duration.flags) = 1024;
          *(&buf.duration.flags + 2) = presentationTimeStamp.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG][FW] Decoded %lld/%d", &buf, 0x12u);
        }

        [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
        if (!var0)
        {
          goto LABEL_32;
        }

        memset(&buf.presentationTimeStamp, 0, 48);
        v40 = MEMORY[0x1E6960C70];
        *&buf.duration.value = *MEMORY[0x1E6960C70];
        buf.duration.epoch = *(MEMORY[0x1E6960C70] + 16);
        *lhs = presentationTimeStamp;
        rhs = *time;
        CMTimeSubtract(&buf.presentationTimeStamp, lhs, &rhs);
        buf.decodeTimeStamp = *v40;
        if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
        {
          *lhs = 134218752;
          *&lhs[4] = presentationTimeStamp.value;
          *&lhs[12] = 1024;
          *&lhs[14] = presentationTimeStamp.timescale;
          *&lhs[18] = 2048;
          *&lhs[20] = buf.presentationTimeStamp.value;
          v107 = 1024;
          timescale = buf.presentationTimeStamp.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG][FW] Adjusting time %lld/%d --> %lld/%d", lhs, 0x22u);
        }

        rhs.value = 0;
        if (!CMSampleBufferCreateCopyWithNewTiming(0, originalSBuf, 1, &buf, &rhs))
        {
          value = rhs.value;
          if (rhs.value)
          {
            value = CFRetain(rhs.value);
          }

          *lhs = value;
          if (originalSBuf)
          {
            CFRelease(originalSBuf);
            value = *lhs;
          }

          originalSBuf = value;
          *lhs = 0;
          CF<__CVBuffer *>::~CF(lhs);
          presentationTimeStamp = buf.presentationTimeStamp;
          CF<__CVBuffer *>::~CF(&rhs);
LABEL_32:
          if (MediaAnalysisLogLevel() >= 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
          {
            LODWORD(buf.duration.value) = 134218240;
            *(&buf.duration.value + 4) = presentationTimeStamp.value;
            LOWORD(buf.duration.flags) = 1024;
            *(&buf.duration.flags + 2) = presentationTimeStamp.timescale;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG][FW] Tracking mask %lld/%d", &buf, 0x12u);
          }

          v47 = objc_alloc(MEMORY[0x1E69845B8]);
          v48 = [v47 initWithCMSampleBuffer:originalSBuf orientation:orientation options:MEMORY[0x1E695E0F8] session:session];
          v49 = VCPSignPostLog(v48);
          v50 = os_signpost_id_generate(v49);

          v52 = VCPSignPostLog(v51);
          v53 = v52;
          if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v52))
          {
            LOWORD(buf.duration.value) = 0;
            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v53, OS_SIGNPOST_INTERVAL_BEGIN, v50, "VNTrackMaskRequest_PerformRequest", "", &buf, 2u);
          }

          v103 = v94;
          v54 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v103 count:1];
          v98 = 0;
          v55 = [v48 performRequests:v54 error:&v98];
          v56 = v98;

          if (v55)
          {
            v58 = VCPSignPostLog(v57);
            v59 = v58;
            if (v50 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
            {
              LOWORD(buf.duration.value) = 0;
              _os_signpost_emit_with_name_impl(&dword_1C9B70000, v59, OS_SIGNPOST_INTERVAL_END, v50, "VNTrackMaskRequest_PerformRequest", "", &buf, 2u);
            }

            results = [v94 results];
            firstObject = [results firstObject];

            if (firstObject)
            {
              [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
              if (+[MADVideoRemoveBackgroundSettings visionTrimEnabled](MADVideoRemoveBackgroundSettings, "visionTrimEnabled") && ([firstObject confidence], -[MADConfidenceTracker updateConfidence:](v86, "updateConfidence:", v62), v64 = v63, +[MADVideoRemoveBackgroundSettings visionTrimThreshold](MADVideoRemoveBackgroundSettings, "visionTrimThreshold"), v64 < v65))
              {
                if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf.duration.value) = 134218240;
                  *(&buf.duration.value + 4) = presentationTimeStamp.value;
                  LOWORD(buf.duration.flags) = 1024;
                  *(&buf.duration.flags + 2) = presentationTimeStamp.timescale;
                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG][FW] Confidence below threshold (%lld/%d), trimming", &buf, 0x12u);
                }

                *endTime = presentationTimeStamp;
                v38 = 5;
              }

              else
              {
                x = union->origin.x;
                y = union->origin.y;
                width = union->size.width;
                height = union->size.height;
                [firstObject croppedBoundingBox];
                -[MADVideoRemoveBackgroundCropTask scaleNormalizedCropRect:forPixelBuffer:](self, "scaleNormalizedCropRect:forPixelBuffer:", [firstObject pixelBuffer], v70, v71, v72, v73);
                v115.origin.x = v74;
                v115.origin.y = v75;
                v115.size.width = v76;
                v115.size.height = v77;
                v114.origin.x = x;
                v114.origin.y = y;
                v114.size.width = width;
                v114.size.height = height;
                *union = CGRectUnion(v114, v115);
                v78 = [MADMattedFullFrame alloc];
                pixelBuffer = [firstObject pixelBuffer];
                buf.duration = presentationTimeStamp;
                [firstObject confidence];
                v81 = [(MADMattedFullFrame *)v78 initWithPixelBuffer:pixelBuffer presentationTimestamp:&buf confidence:v80];
                [array addObject:v81];

                v38 = 0;
              }
            }

            else
            {
              if (MediaAnalysisLogLevel() >= 4)
              {
                v83 = MEMORY[0x1E69E9C10];
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
                {
                  LODWORD(buf.duration.value) = 134218240;
                  *(&buf.duration.value + 4) = presentationTimeStamp.value;
                  LOWORD(buf.duration.flags) = 1024;
                  *(&buf.duration.flags + 2) = presentationTimeStamp.timescale;
                  _os_log_impl(&dword_1C9B70000, v83, OS_LOG_TYPE_DEFAULT, "[RMBG][FW] No observation at time %lld/%d", &buf, 0x12u);
                }
              }

              v38 = 4;
            }
          }

          else
          {
            v82 = [v56 copy];
            firstObject = *error;
            *error = v82;
            v38 = 1;
          }

          goto LABEL_56;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *lhs = 134218240;
          *&lhs[4] = presentationTimeStamp.value;
          *&lhs[12] = 1024;
          *&lhs[14] = presentationTimeStamp.timescale;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG][FW] Failed to adjust sample timing (%lld/%d)", lhs, 0x12u);
        }

        v41 = MEMORY[0x1E696ABC0];
        v104 = v96;
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to adjust sample timing (%lld/%d)", presentationTimeStamp.value, presentationTimeStamp.timescale];
        v105 = v42;
        v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
        v44 = [v41 errorWithDomain:v31 code:-18 userInfo:v43];
        v45 = *error;
        *error = v44;

        CF<__CVBuffer *>::~CF(&rhs);
        v38 = 1;
      }

      else
      {
        v38 = 5;
      }

LABEL_56:
      CF<__CVBuffer *>::~CF(&originalSBuf);
LABEL_57:
      objc_autoreleasePoolPop(v32);
      if (v38 && v38 != 4)
      {
        if (v38 == 5)
        {
          v84 = array;
        }

        else
        {
          v84 = 0;
        }

        v30 = v94;
        goto LABEL_64;
      }
    }
  }

  v84 = 0;
LABEL_64:

  objc_autoreleasePoolPop(context);

  return v84;
}

- (BOOL)isAnimatedStickerPreferredWithPastSamples:(id)samples futureSamples:(id)futureSamples
{
  v40 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  futureSamplesCopy = futureSamples;
  v7 = +[MADVideoRemoveBackgroundSettings visionTrimWindow];
  v8 = [samplesCopy count];
  if ([futureSamplesCopy count] + v8 <= 2 * v7)
  {
    LOBYTE(v21) = 0;
  }

  else
  {
    +[MADVideoRemoveBackgroundSettings visionPreferredVideoQualityThreshold];
    v10 = v9;
    +[MADVideoRemoveBackgroundSettings visionPreferredLowQualityProportionThreshold];
    v12 = v11;
    +[MADVideoRemoveBackgroundSettings visionPreferredWorstFrameScoreThreshold];
    v14 = v13;
    v15 = 0;
    v16 = 0;
    v17 = 1.0;
    while (v7 + v15 < [samplesCopy count])
    {
      v18 = [samplesCopy objectAtIndexedSubscript:v15];
      [v18 confidence];
      v20 = v19;

      if (v20 < v17)
      {
        v17 = v20;
      }

      if (v20 < v10)
      {
        ++v16;
      }

      ++v15;
    }

    for (i = 0; v7 + i < [futureSamplesCopy count]; ++i)
    {
      v23 = [futureSamplesCopy objectAtIndexedSubscript:i];
      [v23 confidence];
      v25 = v24;

      if (v25 < v17)
      {
        v17 = v25;
      }

      if (v25 < v10)
      {
        ++v16;
      }
    }

    v26 = [samplesCopy count];
    v27 = v16 / ([futureSamplesCopy count] + v26);
    v21 = v27 <= v12 && v17 >= v14;
    if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v29[0] = 67110400;
      v29[1] = v21;
      v30 = 2048;
      v31 = v27;
      v32 = 2048;
      v33 = v10;
      v34 = 2048;
      v35 = v12;
      v36 = 2048;
      v37 = v17;
      v38 = 2048;
      v39 = v14;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Vision Preferred: %d - low quality proportion: %0.3f (th_v: %0.3f, th_prop: %0.3f), worst frame score: %0.3f (th_wfs: %0.3f)", v29, 0x3Au);
    }
  }

  return v21;
}

- (BOOL)exportFutureSamples:(id)samples sequenceWriter:(id)writer progress:(id)progress error:(id *)error
{
  v57[1] = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  writerCopy = writer;
  progressCopy = progress;
  v44 = *MEMORY[0x1E696A768];
  v45 = *MEMORY[0x1E696A578];
  do
  {
    v11 = [samplesCopy count];
    if (!v11)
    {
      break;
    }

    v12 = objc_autoreleasePoolPush();
    if ([(MADVideoRemoveBackgroundCropTask *)self isCanceled])
    {
      v13 = MEMORY[0x1E696ABC0];
      v56 = v45;
      firstObject = [MEMORY[0x1E696AEC0] stringWithFormat:@"Request canceled"];
      v57[0] = firstObject;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v16 = [v13 errorWithDomain:v44 code:-128 userInfo:v15];
      v17 = *error;
      *error = v16;
    }

    else
    {
      firstObject = [samplesCopy firstObject];
      v18 = MediaAnalysisLogLevel();
      if (v18 >= 6)
      {
        v19 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          if (firstObject)
          {
            objc_msgSend_presentationTimestamp(firstObject);
            v21 = *v47;
            objc_msgSend_presentationTimestamp(firstObject);
            v22 = v46;
          }

          else
          {
            v22 = 0;
            v21 = 0;
            *v47 = 0;
            v48 = 0;
            v49 = 0;
            v46 = 0;
          }

          *buf = 134218240;
          v53 = v21;
          v54 = 1024;
          v55 = v22;
          v19 = MEMORY[0x1E69E9C10];
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Encoding %lld/%d", buf, 0x12u);
        }
      }

      v23 = VCPSignPostLog(v18);
      v24 = os_signpost_id_generate(v23);

      v26 = VCPSignPostLog(v25);
      v27 = v26;
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *v47 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v24, "MADVideoRemoveBackground_ExportFrame", "", v47, 2u);
      }

      pixelBuffer = [firstObject pixelBuffer];
      if (firstObject)
      {
        objc_msgSend_presentationTimestamp(firstObject);
      }

      else
      {
        *v47 = 0;
        v48 = 0;
        v49 = 0;
      }

      v29 = [writerCopy addPixelBuffer:pixelBuffer withTime:v47];
      if (!v29)
      {
        v34 = VCPSignPostLog(v29);
        v35 = v34;
        if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v34))
        {
          *v47 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C9B70000, v35, OS_SIGNPOST_INTERVAL_END, v24, "MADVideoRemoveBackground_ExportFrame", "", v47, 2u);
        }

        [samplesCopy removeObjectAtIndex:0];
        [progressCopy setCompletedUnitCount:{objc_msgSend(progressCopy, "completedUnitCount") + 1}];
        v36 = 1;
        goto LABEL_28;
      }

      v30 = MEMORY[0x1E696ABC0];
      v50 = v45;
      v31 = MEMORY[0x1E696AEC0];
      if (firstObject)
      {
        objc_msgSend_presentationTimestamp(firstObject);
        v32 = *v47;
        objc_msgSend_presentationTimestamp(firstObject);
        v33 = v46;
      }

      else
      {
        v33 = 0;
        v32 = 0;
        *v47 = 0;
        v48 = 0;
        v49 = 0;
        v46 = 0;
      }

      v37 = [v31 stringWithFormat:@"Failed to export matted frame (%lld/%d)", v32, v33];
      v51 = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v39 = [v30 errorWithDomain:v44 code:-18 userInfo:v38];
      v40 = *error;
      *error = v39;
    }

    v36 = 0;
LABEL_28:

    objc_autoreleasePoolPop(v12);
  }

  while ((v36 & 1) != 0);

  return v11 == 0;
}

- (id)compressSequenceData:(id)data sequenceWriter:(id)writer outputWidth:(unint64_t *)width outputHeight:(unint64_t *)height
{
  v51 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  writerCopy = writer;
  maxFileSize = [(MADVideoRemoveBackgroundRequest *)self->_request maxFileSize];
  unsignedIntegerValue = [maxFileSize unsignedIntegerValue];

  if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v48 = [dataCopy length];
    v49 = 1024;
    v50 = unsignedIntegerValue;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Output exceeds max file size (%d > %d); compressing...", buf, 0xEu);
  }

  minDimension = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
  if (minDimension)
  {
    minDimension2 = [(MADVideoRemoveBackgroundRequest *)self->_request minDimension];
    unsignedIntegerValue2 = [minDimension2 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 300;
  }

  v12 = MEMORY[0x1E695DF70];
  v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue2];
  v35 = [v12 arrayWithObject:v13];

  v14 = *width;
  if (*width <= *height)
  {
    v14 = *height;
  }

  if (v14 >= 0x259 && unsignedIntegerValue2 <= 0x257)
  {
    [v35 insertObject:&unk_1F49BBDA0 atIndex:0];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v35;
  v15 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v15)
  {
    goto LABEL_37;
  }

  v16 = *v43;
  v17 = MEMORY[0x1E69E9C10];
  do
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v43 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v42 + 1) + 8 * i);
      v20 = MediaAnalysisLogLevel();
      if (v20 >= 5)
      {
        v20 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (v20)
        {
          intValue = [v19 intValue];
          *buf = 67109120;
          v48 = intValue;
          _os_log_impl(&dword_1C9B70000, v17, OS_LOG_TYPE_DEFAULT, "[RMBG] Transcoding to max dimension %d", buf, 8u);
        }
      }

      v22 = VCPSignPostLog(v20);
      v23 = os_signpost_id_generate(v22);

      v25 = VCPSignPostLog(v24);
      v26 = v25;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v23, "MADVideoRemoveBackground_ReEncode", "", buf, 2u);
      }

      v27 = [objc_opt_class() transcodeSequenceData:dataCopy maxDimension:objc_msgSend(v19 outputWidth:"unsignedIntegerValue") outputHeight:{width, height}];
      v28 = VCPSignPostLog(v27);
      v29 = v28;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C9B70000, v29, OS_SIGNPOST_INTERVAL_END, v23, "MADVideoRemoveBackground_ReEncode", "", buf, 2u);
      }

      if (v27)
      {
        if ([v27 length] <= unsignedIntegerValue)
        {
          goto LABEL_38;
        }

        if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v30 = [v27 length];
          *buf = 67109376;
          v48 = v30;
          v49 = 1024;
          v50 = unsignedIntegerValue;
          v31 = v17;
          v32 = "[RMBG] Transcoded output exceeds max file size (%d vs %d)";
          v33 = 14;
LABEL_34:
          _os_log_impl(&dword_1C9B70000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
        }
      }

      else if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v31 = v17;
        v32 = "[RMBG] Failed to transcode sequence";
        v33 = 2;
        goto LABEL_34;
      }
    }

    v15 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v15);
LABEL_37:
  v27 = 0;
LABEL_38:

  return v27;
}

- (void)publishPreviewResultsTimeRange:(id *)range pastSamples:(id)samples futureSamples:(id)futureSamples cropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v62 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  futureSamplesCopy = futureSamples;
  v47 = samplesCopy;
  array = [MEMORY[0x1E695DF70] array];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  reverseObjectEnumerator = [samplesCopy reverseObjectEnumerator];
  v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v14)
  {
    v15 = *v56;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v56 != v15)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v17 = *(*(&v55 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = CVPixelBufferGetIOSurface([v17 pixelBuffer]);
        v20 = objc_alloc(MEMORY[0x1E69AE4C0]);
        if (v17)
        {
          objc_msgSend_presentationTimestamp(v17);
        }

        else
        {
          memset(buf, 0, sizeof(buf));
          *&v49 = 0;
        }

        v21 = [v20 initWithPresentationTimeStamp:buf surface:{v19, selfCopy}];
        [array addObject:v21];

        objc_autoreleasePoolPop(v18);
      }

      v14 = [reverseObjectEnumerator countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v14);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v22 = futureSamplesCopy;
  v23 = [v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v23)
  {
    v24 = *v52;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v52 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = *(*(&v51 + 1) + 8 * j);
        v27 = objc_autoreleasePoolPush();
        v28 = CVPixelBufferGetIOSurface([v26 pixelBuffer]);
        v29 = objc_alloc(MEMORY[0x1E69AE4C0]);
        if (v26)
        {
          objc_msgSend_presentationTimestamp(v26);
        }

        else
        {
          memset(buf, 0, sizeof(buf));
          *&v49 = 0;
        }

        v30 = [v29 initWithPresentationTimeStamp:buf surface:{v28, selfCopy}];
        [array addObject:v30];

        objc_autoreleasePoolPop(v27);
      }

      v23 = [v22 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v23);
  }

  if ([v47 count])
  {
    [v47 lastObject];
  }

  else
  {
    [v22 firstObject];
  }
  v31 = ;
  pixelBuffer = [v31 pixelBuffer];

  if (pixelBuffer)
  {
    v33 = CVPixelBufferGetWidth(pixelBuffer);
    v34 = CVPixelBufferGetHeight(pixelBuffer);
    v63.origin.x = x / v33;
    v63.origin.y = 1.0 - (y + height) / v34;
    v63.size.width = width / v33;
    v63.size.height = height / v34;
    v65.origin.x = 0.0;
    v65.origin.y = 0.0;
    v65.size.width = 1.0;
    v65.size.height = 1.0;
    v64 = CGRectIntersection(v63, v65);
    v35 = v64.origin.x;
    v36 = v64.origin.y;
    v37 = v64.size.width;
    v38 = v64.size.height;
  }

  else
  {
    v37 = 1.0;
    v35 = 0.0;
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Failed to normalize crop rect", buf, 2u);
    }

    v36 = 0.0;
    v38 = 1.0;
  }

  v39 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
  v40 = objc_alloc(MEMORY[0x1E69AE4D0]);
  v41 = *&range->var0.var3;
  *buf = *&range->var0.var0;
  v49 = v41;
  v50 = *&range->var1.var1;
  v42 = [v40 initWithTimeRange:buf frames:array normalizedCropRect:{v35, v36, v37, v38}];
  v59 = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
  [v39 setResults:v43];

  (*(selfCopy->_resultHandler + 2))();
}

- (void)publishPayloadWidth:(unint64_t)width height:(unint64_t)height data:(id)data
{
  v14[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v9 = objc_alloc_init(MEMORY[0x1E69AE4E8]);
  v10 = objc_alloc(MEMORY[0x1E69AE4E0]);
  outputType = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
  v12 = [v10 initWithUniformTypeIdentifier:outputType width:width height:height data:dataCopy];
  v14[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v9 setResults:v13];

  (*(self->_resultHandler + 2))();
}

- (BOOL)run:(id *)run
{
  v276[1] = *MEMORY[0x1E69E9840];
  if ([(MADVideoRemoveBackgroundCropTask *)self validateRequest:?])
  {
    v5 = [MEMORY[0x1E695DF00] now];
    [v5 timeIntervalSince1970];
    v7 = v6;

    v8 = MEMORY[0x1E6987E28];
    v9 = [(MADServiceVideoAsset *)self->_asset url];
    v10 = [v8 assetWithURL:v9];

    if (v10)
    {
      v250 = 0;
      v11 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v10 error:&v250];
      v12 = v250;
      v218 = v12;
      if (v11)
      {
        v13 = [v10 vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
        v217 = v13;
        if (!v13)
        {
          if (run)
          {
            v23 = MEMORY[0x1E696ABC0];
            v273 = *MEMORY[0x1E696A578];
            v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset contains no video tracks"];
            v274 = v24;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v274 forKeys:&v273 count:1];
            v26 = [v23 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v25];
            v27 = *run;
            *run = v26;
          }

          goto LABEL_50;
        }

        memset(&buf[1], 0, sizeof(CMTimeRange));
        objc_msgSend_timeRange(v13);
        if (+[MADVideoRemoveBackgroundSettings autoplayTrimEnabled])
        {
          memset(&range, 0, sizeof(range));
          asset = self->_asset;
          if (asset && (objc_msgSend_trimTimeRange(asset), (range.start.flags & 1) != 0) && (range.duration.flags & 1) != 0 && !range.duration.epoch && (range.duration.value & 0x8000000000000000) == 0 && (buf[0].start = range.duration, *&time2.start.value = *MEMORY[0x1E6960CC0], time2.start.epoch = *(MEMORY[0x1E6960CC0] + 16), CMTimeCompare(&buf[0].start, &time2.start)))
          {
            if (MediaAnalysisLogLevel() >= 6)
            {
              v59 = MEMORY[0x1E69E9C10];
              v60 = MEMORY[0x1E69E9C10];
              if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
              {
                *&buf[0].start.value = *&range.start.value;
                buf[0].start.epoch = range.start.epoch;
                Seconds = CMTimeGetSeconds(&buf[0].start);
                buf[0] = range;
                CMTimeRangeGetEnd(&time2.start, buf);
                v62 = CMTimeGetSeconds(&time2.start);
                LODWORD(v272.start.value) = 134218240;
                *(&v272.start.value + 4) = Seconds;
                LOWORD(v272.start.flags) = 2048;
                *(&v272.start.flags + 2) = v62;
                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Applying autoplay trim (%0.3fs-%0.3fs)", &v272, 0x16u);
              }
            }

            time2 = buf[1];
            v272 = range;
            CMTimeRangeGetIntersection(buf, &time2, &v272);
            buf[1] = buf[0];
          }

          else if (MediaAnalysisLogLevel() >= 4)
          {
            v15 = MEMORY[0x1E69E9C10];
            v16 = MEMORY[0x1E69E9C10];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf[0].start.value) = 0;
              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Autoplay trim range not available for asset", buf, 2u);
            }
          }
        }

        v246 = 0uLL;
        v247 = 0;
        request = self->_request;
        if (request)
        {
          objc_msgSend_maskTime(request);
          if (range.start.flags)
          {
            v18 = self->_request;
            if (v18)
            {
              objc_msgSend_maskTime(v18);
LABEL_28:
              range = buf[1];
              *&buf[0].start.value = v246;
              buf[0].start.epoch = v247;
              if (CMTimeRangeContainsTime(&range, &buf[0].start))
              {
                v216 = [(MADVideoRemoveBackgroundCropTask *)self decodeSettingsForTrack:v217];
                v29 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v217 outputSettings:?];
                if (v29)
                {
                  [v11 addOutput:v29];
                  range = buf[1];
                  [v11 setTimeRange:&range];
                  if ([v11 startReading])
                  {
                    v215 = v29;
                    vcp_imageOrientation = [v217 vcp_imageOrientation];
                    range = buf[1];
                    v211 = [v217 vcp_sampleCountForTimeRange:&range];
                    if (MediaAnalysisLogLevel() >= 6)
                    {
                      v30 = MEMORY[0x1E69E9C10];
                      v31 = MEMORY[0x1E69E9C10];
                      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
                      {
                        LODWORD(range.start.value) = 67109120;
                        HIDWORD(range.start.value) = v211;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Sample Count: %d", &range, 8u);
                      }
                    }

                    progressHandler = self->_progressHandler;
                    if (progressHandler)
                    {
                      progressHandler[2](0.0);
                    }

                    v211 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:3 * v211];
                    v243[0] = MEMORY[0x1E69E9820];
                    v243[1] = 3221225472;
                    v243[2] = __40__MADVideoRemoveBackgroundCropTask_run___block_invoke;
                    v243[3] = &unk_1E834D238;
                    v214 = v211;
                    v244 = v214;
                    selfCopy = self;
                    v210 = [VCPTimer timerWithInterval:250 unit:2 oneShot:0 andBlock:v243];
                    if (MediaAnalysisLogLevel() >= 7)
                    {
                      v34 = MEMORY[0x1E69E9C10];
                      v35 = MEMORY[0x1E69E9C10];
                      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
                      {
                        LOWORD(range.start.value) = 0;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RMBG] Resetting cached mask state", &range, 2u);
                      }
                    }

                    v36 = +[MADImageRemoveBackgroundResource sharedResource];
                    [v36 setCachedMaskState:0];

                    v38 = VCPSignPostLog(v37);
                    v39 = os_signpost_id_generate(v38);

                    v41 = VCPSignPostLog(v40);
                    v42 = v41;
                    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
                    {
                      LOWORD(range.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v39, "MADVideoRemoveBackground_DecodePastFrames", "", &range, 2u);
                    }

                    *&range.start.value = v246;
                    range.start.epoch = v247;
                    *&buf[0].start.value = *&buf[1].start.value;
                    buf[0].start.epoch = buf[1].start.epoch;
                    v213 = [(MADVideoRemoveBackgroundCropTask *)self decodeSamplesUntilTime:&range trackOutput:v215 baseTime:buf progress:v214 error:run];
                    if (!v213)
                    {
                      goto LABEL_47;
                    }

                    status = [v11 status];
                    if (status == 3)
                    {
                      error = [v11 error];
                      v45 = *run;
                      *run = error;

LABEL_47:
                      v19 = 0;
LABEL_176:

                      v53 = v244;
                      goto LABEL_177;
                    }

                    v63 = VCPSignPostLog(status);
                    v64 = v63;
                    if (v39 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v63))
                    {
                      LOWORD(range.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v64, OS_SIGNPOST_INTERVAL_END, v39, "MADVideoRemoveBackground_DecodePastFrames", "", &range, 2u);
                    }

                    lastObject = [v213 lastObject];
                    v242 = CFRetain(lastObject);

                    v67 = VCPSignPostLog(v66);
                    v68 = os_signpost_id_generate(v67);

                    v70 = VCPSignPostLog(v69);
                    v71 = v70;
                    if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
                    {
                      LOWORD(range.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v71, OS_SIGNPOST_INTERVAL_BEGIN, v68, "MADVideoRemoveBackground_GenerateMask", "", &range, 2u);
                    }

                    v72 = [(MADVideoRemoveBackgroundCropTask *)self generateMaskForSampleBuffer:v242 orientation:vcp_imageOrientation error:run];
                    cf = v72;
                    if (!v72)
                    {
                      v19 = 0;
LABEL_175:
                      CF<__CVBuffer *>::~CF(&cf);
                      CF<__CVBuffer *>::~CF(&v242);
                      goto LABEL_176;
                    }

                    v73 = VCPSignPostLog(v72);
                    v74 = v73;
                    if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v73))
                    {
                      LOWORD(range.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v74, OS_SIGNPOST_INTERVAL_END, v68, "MADVideoRemoveBackground_GenerateMask", "", &range, 2u);
                    }

                    v201 = +[MADVideoRemoveBackgroundResource sharedResource];
                    v75 = +[VCPMADResourceManager sharedManager];
                    v204 = [v75 activateResource:v201];

                    range.start.value = 0;
                    *&range.start.timescale = &range;
                    range.start.epoch = 0x5012000000;
                    range.duration.value = __Block_byref_object_copy__16;
                    *&range.duration.timescale = __Block_byref_object_dispose__16;
                    range.duration.epoch = &unk_1CA01F5A2;
                    v76 = MEMORY[0x1E695F050];
                    v77 = *(MEMORY[0x1E695F050] + 16);
                    v264 = *MEMORY[0x1E695F050];
                    v265 = v77;
                    buf[0].start.value = 0;
                    *&buf[0].start.timescale = buf;
                    buf[0].start.epoch = 0x3032000000;
                    buf[0].duration.value = __Block_byref_object_copy__520;
                    *&buf[0].duration.timescale = __Block_byref_object_dispose__521;
                    buf[0].duration.epoch = 0;
                    time2.start.value = 0;
                    *&time2.start.timescale = &time2;
                    time2.start.epoch = 0x3032000000;
                    time2.duration.value = __Block_byref_object_copy__520;
                    *&time2.duration.timescale = __Block_byref_object_dispose__521;
                    time2.duration.epoch = 0;
                    group = dispatch_group_create();
                    v78 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
                    v205 = dispatch_queue_create("trackMaskPastFrames", v78);

                    block[0] = MEMORY[0x1E69E9820];
                    block[1] = 3321888768;
                    block[2] = __40__MADVideoRemoveBackgroundCropTask_run___block_invoke_523;
                    block[3] = &unk_1F4968E50;
                    p_time2 = &time2;
                    block[4] = self;
                    v240 = vcp_imageOrientation;
                    v234 = v213;
                    v239 = cf;
                    if (cf)
                    {
                      CFRetain(cf);
                    }

                    p_range = &range;
                    v202 = v214;
                    v235 = v202;
                    v238 = buf;
                    dispatch_group_async(group, v205, block);
                    v79 = *(v76 + 16);
                    v232.origin = *v76;
                    v232.size = v79;
                    memset(&v231, 0, sizeof(v231));
                    v272 = buf[1];
                    End = CMTimeRangeGetEnd(&v231, &v272);
                    v81 = VCPSignPostLog(End);
                    v82 = os_signpost_id_generate(v81);

                    v84 = VCPSignPostLog(v83);
                    v85 = v84;
                    if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
                    {
                      LOWORD(v272.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v85, OS_SIGNPOST_INTERVAL_BEGIN, v82, "MADVideoRemoveBackground_ProcessFutureFrames", "", &v272, 2u);
                    }

                    *&v272.start.value = *&buf[1].start.value;
                    v272.start.epoch = buf[1].start.epoch;
                    v209 = [(MADVideoRemoveBackgroundCropTask *)self processFutureSamplesFromTrackOutput:v215 baseTime:&v272 orientation:vcp_imageOrientation maskSampleBuffer:v242 maskPixelBuffer:cf cropUnion:&v232 endTime:&v231 progress:v202 error:run];
                    v86 = VCPSignPostLog(v209);
                    v87 = v86;
                    if (v82 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v86))
                    {
                      LOWORD(v272.start.value) = 0;
                      _os_signpost_emit_with_name_impl(&dword_1C9B70000, v87, OS_SIGNPOST_INTERVAL_END, v82, "MADVideoRemoveBackground_ProcessFutureFrames", "", &v272, 2u);
                    }

                    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
                    v88 = v209;
                    if (!v209)
                    {
                      v19 = 0;
LABEL_174:

                      CF<__CVBuffer *>::~CF(&v239);
                      _Block_object_dispose(&time2, 8);

                      _Block_object_dispose(buf, 8);
                      _Block_object_dispose(&range, 8);

                      goto LABEL_175;
                    }

                    if (*(*&time2.start.timescale + 40))
                    {
                      [v204 reset];
                      v200 = [v209 count];
                      v199 = [*(*&time2.start.timescale + 40) count];
                      if (!+[MADVideoRemoveBackgroundSettings visionTrimEnabled])
                      {
                        goto LABEL_119;
                      }

                      memset(&v230, 0, sizeof(v230));
                      lastObject2 = [*(*&time2.start.timescale + 40) lastObject];
                      v90 = lastObject2;
                      if (lastObject2)
                      {
                        objc_msgSend_presentationTimestamp(lastObject2);
                      }

                      else
                      {
                        memset(&v230, 0, sizeof(v230));
                      }

                      *lhs = *&buf[1].start.value;
                      *&lhs[16] = buf[1].start.epoch;
                      rhs = v230;
                      CMTimeAdd(&v272.start, lhs, &rhs);
                      *&buf[1].start.value = *&v272.start.value;
                      v93 = *&v272.start.value;
                      buf[1].start.epoch = v272.start.epoch;
                      epoch = v272.start.epoch;
                      v272.start = v231;
                      *lhs = v93;
                      *&lhs[16] = epoch;
                      CMTimeSubtract(&rhs, &v272.start, lhs);
                      buf[1].duration = rhs;
                      if (MediaAnalysisLogLevel() >= 5)
                      {
                        v95 = MEMORY[0x1E69E9C10];
                        v96 = MEMORY[0x1E69E9C10];
                        if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                        {
                          *&v272.start.value = *&buf[1].start.value;
                          v272.start.epoch = buf[1].start.epoch;
                          v97 = CMTimeGetSeconds(&v272.start);
                          v272.start = v231;
                          v98 = CMTimeGetSeconds(&v272.start);
                          *lhs = 134218240;
                          *&lhs[4] = v97;
                          *&lhs[12] = 2048;
                          *&lhs[14] = v98;
                          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Tracking based trim (%0.3fs-%0.3fs)", lhs, 0x16u);
                        }
                      }

                      +[MADVideoRemoveBackgroundSettings visionTrimMininumDuration];
                      v100 = v99;
                      v272.start = buf[1].duration;
                      v101 = CMTimeGetSeconds(&v272.start);
                      if (v101 >= v100)
                      {
                        v228 = 0u;
                        v229 = 0u;
                        v226 = 0u;
                        v227 = 0u;
                        v102 = *(*&time2.start.timescale + 40);
                        v103 = [v102 countByEnumeratingWithState:&v226 objects:v260 count:16];
                        if (v103)
                        {
                          v104 = *v227;
                          do
                          {
                            for (i = 0; i != v103; ++i)
                            {
                              if (*v227 != v104)
                              {
                                objc_enumerationMutation(v102);
                              }

                              v106 = *(*(&v226 + 1) + 8 * i);
                              if (v106)
                              {
                                objc_msgSend_presentationTimestamp(*(*(&v226 + 1) + 8 * i));
                              }

                              else
                              {
                                memset(&rhs, 0, sizeof(rhs));
                              }

                              v272.start = rhs;
                              *lhs = v230;
                              CMTimeSubtract(&v225, &v272.start, lhs);
                              v272.start = v225;
                              [v106 setPresentationTimestamp:&v272];
                            }

                            v103 = [v102 countByEnumeratingWithState:&v226 objects:v260 count:16];
                          }

                          while (v103);
                        }

                        v223 = 0u;
                        v224 = 0u;
                        v221 = 0u;
                        v222 = 0u;
                        v107 = v209;
                        v108 = [v107 countByEnumeratingWithState:&v221 objects:v259 count:16];
                        if (v108)
                        {
                          v109 = *v222;
                          do
                          {
                            for (j = 0; j != v108; ++j)
                            {
                              if (*v222 != v109)
                              {
                                objc_enumerationMutation(v107);
                              }

                              v111 = *(*(&v221 + 1) + 8 * j);
                              if (v111)
                              {
                                objc_msgSend_presentationTimestamp(*(*(&v221 + 1) + 8 * j));
                              }

                              else
                              {
                                memset(&rhs, 0, sizeof(rhs));
                              }

                              v272.start = rhs;
                              *lhs = v230;
                              CMTimeSubtract(&v220, &v272.start, lhs);
                              v272.start = v220;
                              [v111 setPresentationTimestamp:&v272];
                            }

                            v108 = [v107 countByEnumeratingWithState:&v221 objects:v259 count:16];
                          }

                          while (v108);
                        }

                        v88 = v209;
LABEL_119:
                        memset(lhs, 0, sizeof(lhs));
                        v277 = CGRectUnion(*(*&range.start.timescale + 48), v232);
                        y = v277.origin.y;
                        *&v277.origin.y = vdupq_n_s64(0xFFFFFFFFFFFFFFFELL);
                        height = v277.size.height;
                        *lhs = vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(v277.origin), *&v277.origin.y));
                        *&lhs[16] = vcvtq_f64_u64(vandq_s8(vcvtq_u64_f64(v277.size), *&v277.origin.y));
                        if (MediaAnalysisLogLevel() >= 6)
                        {
                          v114 = MEMORY[0x1E69E9C10];
                          v115 = MEMORY[0x1E69E9C10];
                          if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
                          {
                            LODWORD(v272.start.value) = 67109888;
                            HIDWORD(v272.start.value) = *lhs;
                            LOWORD(v272.start.timescale) = 1024;
                            *(&v272.start.timescale + 2) = *&lhs[8];
                            HIWORD(v272.start.flags) = 1024;
                            LODWORD(v272.start.epoch) = (*lhs + *&lhs[16]);
                            WORD2(v272.start.epoch) = 1024;
                            *(&v272.start.epoch + 6) = (*&lhs[8] + *&lhs[24]);
                            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Crop (%d, %d) to (%d, %d)", &v272, 0x1Au);
                          }

                          v88 = v209;
                        }

                        if (self->_previewRequest)
                        {
                          v272 = buf[1];
                          [(MADVideoRemoveBackgroundCropTask *)self publishPreviewResultsTimeRange:&v272 pastSamples:*(*&time2.start.timescale + 40) futureSamples:v88 cropRect:*lhs, *&lhs[8], *&lhs[16], *&lhs[24]];
                          if (!self->_request)
                          {
                            (*(self->_completionHandler + 2))();
                            v19 = 1;
                            goto LABEL_174;
                          }
                        }

                        v198 = [(MADVideoRemoveBackgroundCropTask *)self isAnimatedStickerPreferredWithPastSamples:*(*&time2.start.timescale + 40) futureSamples:v88];
                        outputType = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
                        v117 = [MADAlphaSequenceWriter writerWithUniformTypeIdentifier:outputType frameCount:v211 crop:lhs];

                        if (v117)
                        {
                          v119 = VCPSignPostLog(v118);
                          v120 = os_signpost_id_generate(v119);

                          v122 = VCPSignPostLog(v121);
                          v123 = v122;
                          if (v120 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v122))
                          {
                            LOWORD(v272.start.value) = 0;
                            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v123, OS_SIGNPOST_INTERVAL_BEGIN, v120, "MADVideoRemoveBackground_EncodePastFrames", "", &v272, 2u);
                          }

                          v124 = [(MADVideoRemoveBackgroundCropTask *)self exportPastSamples:*(*&time2.start.timescale + 40) sequenceWriter:v117 progress:v202 error:run];
                          if (!v124)
                          {
                            goto LABEL_159;
                          }

                          v125 = VCPSignPostLog(v124);
                          v126 = v125;
                          if (v120 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v125))
                          {
                            LOWORD(v272.start.value) = 0;
                            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v126, OS_SIGNPOST_INTERVAL_END, v120, "MADVideoRemoveBackground_EncodePastFrames", "", &v272, 2u);
                          }

                          v128 = VCPSignPostLog(v127);
                          v129 = os_signpost_id_generate(v128);

                          v131 = VCPSignPostLog(v130);
                          v132 = v131;
                          if (v129 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v131))
                          {
                            LOWORD(v272.start.value) = 0;
                            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v132, OS_SIGNPOST_INTERVAL_BEGIN, v129, "MADVideoRemoveBackground_EncodeFutureFrames", "", &v272, 2u);
                          }

                          v133 = [(MADVideoRemoveBackgroundCropTask *)self exportFutureSamples:v209 sequenceWriter:v117 progress:v202 error:run];
                          if (!v133)
                          {
LABEL_159:
                            v19 = 0;
LABEL_172:

                            goto LABEL_173;
                          }

                          v134 = VCPSignPostLog(v133);
                          v135 = v134;
                          if (v129 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
                          {
                            LOWORD(v272.start.value) = 0;
                            _os_signpost_emit_with_name_impl(&dword_1C9B70000, v135, OS_SIGNPOST_INTERVAL_END, v129, "MADVideoRemoveBackground_EncodeFutureFrames", "", &v272, 2u);
                          }

                          if (MediaAnalysisLogLevel() >= 6)
                          {
                            v136 = MEMORY[0x1E69E9C10];
                            v137 = MEMORY[0x1E69E9C10];
                            if (os_log_type_enabled(v136, OS_LOG_TYPE_INFO))
                            {
                              LOWORD(v272.start.value) = 0;
                              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "[RMBG] Finalizing output", &v272, 2u);
                            }
                          }

                          v272 = buf[1];
                          CMTimeRangeGetEnd(&rhs, &v272);
                          outputType4 = [v117 finishWithEndTime:&rhs];
                          if (outputType4)
                          {
                            rhs.value = *&lhs[16];
                            v230.value = *&lhs[24];
                            maxFileSize = [(MADVideoRemoveBackgroundRequest *)self->_request maxFileSize];
                            if (maxFileSize && (v139 = [outputType4 length], -[MADVideoRemoveBackgroundRequest maxFileSize](self->_request, "maxFileSize"), v140 = objc_claimAutoreleasedReturnValue(), v141 = v139 > objc_msgSend(v140, "unsignedIntegerValue"), v140, maxFileSize, v141) && (-[MADVideoRemoveBackgroundCropTask compressSequenceData:sequenceWriter:outputWidth:outputHeight:](self, "compressSequenceData:sequenceWriter:outputWidth:outputHeight:", outputType4, v117, &rhs, &v230), v142 = objc_claimAutoreleasedReturnValue(), outputType4, (outputType4 = v142) == 0))
                            {
                              if (MediaAnalysisLogLevel() >= 3)
                              {
                                v193 = MEMORY[0x1E69E9C10];
                                v194 = MEMORY[0x1E69E9C10];
                                if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
                                {
                                  LOWORD(v272.start.value) = 0;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Failed to meet target filesize requirement", &v272, 2u);
                                }
                              }

                              v195 = MEMORY[0x1E696ABC0];
                              v252 = *MEMORY[0x1E696A578];
                              v152 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to meet target filesize requirement"];
                              v253 = v152;
                              v203 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
                              v196 = [v195 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v203];
                              outputType4 = 0;
                              v207 = *run;
                              *run = v196;
                            }

                            else
                            {
                              if (MediaAnalysisLogLevel() >= 5)
                              {
                                v143 = MEMORY[0x1E69E9C10];
                                v144 = MEMORY[0x1E69E9C10];
                                if (os_log_type_enabled(v143, OS_LOG_TYPE_DEFAULT))
                                {
                                  value = rhs.value;
                                  v146 = v230.value;
                                  v147 = [outputType4 length];
                                  LODWORD(v272.start.value) = 67109632;
                                  HIDWORD(v272.start.value) = value;
                                  LOWORD(v272.start.timescale) = 1024;
                                  *(&v272.start.timescale + 2) = v146;
                                  HIWORD(v272.start.flags) = 1024;
                                  LODWORD(v272.start.epoch) = v147;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Output - Resolution: %dx%d  Size: %d", &v272, 0x14u);
                                }
                              }

                              [v210 destroy];
                              v148 = self->_progressHandler;
                              if (v148)
                              {
                                v148[2](1.0);
                              }

                              stickerIdentifiers = [(MADVideoRemoveBackgroundRequest *)self->_request stickerIdentifiers];
                              v150 = [stickerIdentifiers count] == 0;

                              if (v150)
                              {
                                goto LABEL_197;
                              }

                              animatedStickerScore = [(MADServiceVideoAsset *)self->_asset animatedStickerScore];
                              v152 = animatedStickerScore;
                              if (animatedStickerScore)
                              {
                                [animatedStickerScore doubleValue];
                                v154 = v153;
                                +[MADVideoRemoveBackgroundSettings photosPreferredThreshold];
                                v156 = v155;
                                v157 = v198;
                                if (v154 < v155)
                                {
                                  v157 = 0;
                                }

                                v197 = v157;
                                v158 = MEMORY[0x1E696AEC0];
                                [v152 doubleValue];
                                [v158 stringWithFormat:@"%0.3f", v159];
                                v203 = v160 = v154 >= v156;
                              }

                              else
                              {
                                v160 = 1;
                                v203 = @"-";
                                v197 = v198;
                              }

                              if (MediaAnalysisLogLevel() >= 5)
                              {
                                v182 = MEMORY[0x1E69E9C10];
                                v183 = MEMORY[0x1E69E9C10];
                                if (os_log_type_enabled(v182, OS_LOG_TYPE_DEFAULT))
                                {
                                  LODWORD(v272.start.value) = 67109890;
                                  HIDWORD(v272.start.value) = v197;
                                  LOWORD(v272.start.timescale) = 1024;
                                  *(&v272.start.timescale + 2) = v198;
                                  HIWORD(v272.start.flags) = 1024;
                                  LODWORD(v272.start.epoch) = v160;
                                  WORD2(v272.start.epoch) = 2112;
                                  *(&v272.start.epoch + 6) = v203;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[RMBG] Preferred: %d (Vision: %d, Photos: %d - Score: %@)", &v272, 0x1Eu);
                                }
                              }

                              v184 = objc_alloc_init(_MADObjCStickerStoreFacade);
                              stickerIdentifiers2 = [(MADVideoRemoveBackgroundRequest *)self->_request stickerIdentifiers];
                              outputType2 = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
                              v219 = 0;
                              v187 = [(_MADObjCStickerStoreFacade *)v184 addAnimatedRepresentationWithIdentifiers:stickerIdentifiers2 data:outputType4 uti:outputType2 size:v197 isPreferred:&v219 error:rhs.value, v230.value];
                              v207 = v219;

                              if (v187)
                              {

LABEL_197:
                                [(MADVideoRemoveBackgroundCropTask *)self publishPayloadWidth:rhs.value height:v230.value data:outputType4];
                                (*(self->_completionHandler + 2))();
                                MADPLLogAnimatedStickerCreation(v199 + v200, v7);
                                v19 = 1;
                                goto LABEL_171;
                              }

                              if (MediaAnalysisLogLevel() >= 3)
                              {
                                v188 = MEMORY[0x1E69E9C10];
                                v189 = MEMORY[0x1E69E9C10];
                                if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
                                {
                                  v190 = [v207 description];
                                  LODWORD(v272.start.value) = 138412290;
                                  *(&v272.start.value + 4) = v190;
                                  _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Failed to update sticker (%@)", &v272, 0xCu);
                                }
                              }

                              v191 = [v207 copy];
                              v192 = *run;
                              *run = v191;
                            }
                          }

                          else
                          {
                            if (MediaAnalysisLogLevel() >= 3)
                            {
                              v176 = MEMORY[0x1E69E9C10];
                              v177 = MEMORY[0x1E69E9C10];
                              if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
                              {
                                LOWORD(v272.start.value) = 0;
                                _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to finalize output sequence", &v272, 2u);
                              }
                            }

                            v178 = MEMORY[0x1E696ABC0];
                            v254 = *MEMORY[0x1E696A578];
                            outputType4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to finalize output sequence"];
                            v255 = outputType4;
                            v179 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
                            v180 = [v178 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v179];
                            v181 = *run;
                            *run = v180;
                          }
                        }

                        else
                        {
                          if (MediaAnalysisLogLevel() >= 3)
                          {
                            v166 = MEMORY[0x1E69E9C10];
                            v167 = MEMORY[0x1E69E9C10];
                            if (os_log_type_enabled(v166, OS_LOG_TYPE_ERROR))
                            {
                              outputType3 = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
                              LODWORD(v272.start.value) = 138412290;
                              *(&v272.start.value + 4) = outputType3;
                              _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Invalid output type specified (%@)", &v272, 0xCu);
                            }
                          }

                          v169 = MEMORY[0x1E696ABC0];
                          v256 = *MEMORY[0x1E696A578];
                          v170 = MEMORY[0x1E696AEC0];
                          outputType4 = [(MADVideoRemoveBackgroundRequest *)self->_request outputType];
                          v212 = [v170 stringWithFormat:@"Invalid output type specified (%@)", outputType4];
                          v257 = v212;
                          v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
                          v173 = [v169 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v172];
                          v174 = *run;
                          *run = v173;
                        }

                        v19 = 0;
LABEL_171:

                        goto LABEL_172;
                      }

                      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                      {
                        LODWORD(v272.start.value) = 134218240;
                        *(&v272.start.value + 4) = v101;
                        LOWORD(v272.start.flags) = 2048;
                        *(&v272.start.flags + 2) = v100;
                        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[RMBG] Trimmed duration is too short (%0.3fs < %0.3fs)", &v272, 0x16u);
                      }

                      v161 = MEMORY[0x1E696ABC0];
                      v261 = *MEMORY[0x1E696A578];
                      v162 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Trimmed duration is too short (%0.3fs < %0.3fs)", *&v101, *&v100];
                      v262 = v162;
                      v163 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
                      v164 = [v161 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v163];
                      v165 = *run;
                      *run = v164;
                    }

                    else
                    {
                      v91 = [*(*&buf[0].start.timescale + 40) copy];
                      v92 = *run;
                      *run = v91;
                    }

                    v19 = 0;
LABEL_173:
                    v88 = v209;
                    goto LABEL_174;
                  }

                  if (run)
                  {
                    v56 = MEMORY[0x1E696ABC0];
                    v266 = *MEMORY[0x1E696A578];
                    v267 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to start decoding video track"];
                    v214 = v267;
                    v215 = v29;
                    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
                    v57 = [v56 errorWithDomain:*MEMORY[0x1E696A768] code:-19 userInfo:v53];
                    v58 = *run;
                    *run = v57;

                    goto LABEL_55;
                  }
                }

                else if (run)
                {
                  v52 = MEMORY[0x1E696ABC0];
                  v268 = *MEMORY[0x1E696A578];
                  v269 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create video track output"];
                  v214 = v269;
                  v215 = 0;
                  v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
                  v54 = [v52 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v53];
                  v55 = *run;
                  *run = v54;

LABEL_55:
                  v19 = 0;
LABEL_177:

                  v51 = v214;
                  goto LABEL_178;
                }

                v19 = 0;
LABEL_179:

                goto LABEL_180;
              }

              if (run)
              {
                v46 = MEMORY[0x1E696ABC0];
                v270 = *MEMORY[0x1E696A578];
                v47 = MEMORY[0x1E696AEC0];
                *&range.start.value = v246;
                range.start.epoch = v247;
                v48 = CMTimeGetSeconds(&range.start);
                *&range.start.value = *&buf[1].start.value;
                range.start.epoch = buf[1].start.epoch;
                v49 = CMTimeGetSeconds(&range.start);
                range = buf[1];
                CMTimeRangeGetEnd(&buf[0].start, &range);
                v216 = [v47 stringWithFormat:@"Mask time (%0.3fs) falls outside video time range (%0.3fs-%0.3fs)", *&v48, *&v49, CMTimeGetSeconds(&buf[0].start)];
                v271 = v216;
                v215 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                v50 = [v46 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:?];
                v19 = 0;
                v51 = *run;
                *run = v50;
LABEL_178:

                v29 = v215;
                goto LABEL_179;
              }

LABEL_50:
              v19 = 0;
LABEL_180:
              v22 = v217;
              goto LABEL_181;
            }

            goto LABEL_27;
          }
        }

        else
        {
          memset(&range, 0, 24);
        }

        v28 = self->_asset;
        if (v28)
        {
          objc_msgSend_stillTime(v28);
          goto LABEL_28;
        }

LABEL_27:
        v246 = 0uLL;
        v247 = 0;
        goto LABEL_28;
      }

      v21 = [v12 copy];
    }

    else
    {
      if (!run)
      {
        v19 = 0;
LABEL_182:

        return v19;
      }

      v20 = MEMORY[0x1E696ABC0];
      v275 = *MEMORY[0x1E696A578];
      v218 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load asset"];
      v276[0] = v218;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v276 forKeys:&v275 count:1];
      v21 = [v20 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v11];
    }

    v19 = 0;
    v22 = *run;
    *run = v21;
LABEL_181:

    goto LABEL_182;
  }

  return 0;
}

void __40__MADVideoRemoveBackgroundCropTask_run___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [*(a1 + 32) fractionCompleted];
    v4 = 134217984;
    v5 = v2 * 100.0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[RMBG] Progress: %0.2f%%", &v4, 0xCu);
  }

  v3 = *(*(a1 + 40) + 72);
  if (v3)
  {
    [*(a1 + 32) fractionCompleted];
    (*(v3 + 16))(v3);
  }
}

void __40__MADVideoRemoveBackgroundCropTask_run___block_invoke_523(uint64_t a1)
{
  v2 = VCPSignPostLog(a1);
  v3 = os_signpost_id_generate(v2);

  v5 = VCPSignPostLog(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MADVideoRemoveBackground_TrackMaskPastFrames", "", buf, 2u);
  }

  v7 = [*(a1 + 32) processPastSampleBuffers:*(a1 + 40) orientation:*(a1 + 88) maskPixelBuffer:*(a1 + 80) cropUnion:*(*(a1 + 64) + 8) + 48 progress:*(a1 + 48) error:*(*(a1 + 72) + 8) + 40];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v11 = VCPSignPostLog(v10);
  v12 = v11;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C9B70000, v12, OS_SIGNPOST_INTERVAL_END, v3, "MADVideoRemoveBackground_TrackMaskPastFrames", "", v13, 2u);
  }
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 8) = 0;
  return self;
}

- (void)generateMaskForSampleBuffer:(uint64_t)a1 orientation:(int)a2 error:.cold.1(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 134218240;
  v3 = a1;
  v4 = 1024;
  v5 = a2;
  _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to lock CVPixelBuffer (%p, %d)", &v2, 0x12u);
}

@end