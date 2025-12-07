@interface VCPVideoProcessor
- (BOOL)_analyzeWithStart:(id *)start andDuration:(id *)duration error:(id *)error;
- (BOOL)analyzeWithError:(id *)error;
- (BOOL)analyzeWithStart:(id *)start andDuration:(id *)duration error:(id *)error;
- (VCPVideoProcessor)initWithURL:(id)l;
- (void)setDecoderSettings:(id)settings;
@end

@implementation VCPVideoProcessor

- (void)setDecoderSettings:(id)settings
{
  settingsCopy = settings;
  v4 = [settingsCopy count];
  if (v4)
  {
    v4 = settingsCopy;
  }

  decoderSettings = self->_decoderSettings;
  self->_decoderSettings = v4;
}

- (VCPVideoProcessor)initWithURL:(id)l
{
  v28[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  v25.receiver = self;
  v25.super_class = VCPVideoProcessor;
  v6 = [(VCPVideoProcessor *)&v25 init];
  v7 = v6;
  if (!v6)
  {
LABEL_14:
    v17 = v7;
    goto LABEL_15;
  }

  objc_storeStrong(&v6->_url, l);
  v8 = objc_alloc_init(VCPVideoProcessorSession);
  session = v7->_session;
  v7->_session = v8;

  v27 = *MEMORY[0x1E6966130];
  v28[0] = &unk_1F49BDC18;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  decoderSettings = v7->_decoderSettings;
  v7->_decoderSettings = v10;

  v24 = 0uLL;
  v12 = MEMORY[0x1E6988168];
  url = v7->_url;
  v14 = +[VCPVideoProcessor urlAssetOptions];
  v15 = [v12 URLAssetWithURL:url options:v14];
  v16 = v15;
  if (v15)
  {
    objc_msgSend_duration(v15);
  }

  else
  {
    v24 = 0uLL;
  }

  if (BYTE12(v24))
  {
    *&buf.value = v24;
    buf.epoch = 0;
    v7->_videoDuration = CMTimeGetSeconds(&buf);
    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v18 = *&v7->_videoDuration;
      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = v18;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPVideoProcessor] Initialized with video duration: %.4f", &buf, 0xCu);
    }

    v19 = objc_alloc_init(MADAVAssetResourceLoaderDelegate);
    resourceLoaderDelegate = v7->_resourceLoaderDelegate;
    v7->_resourceLoaderDelegate = v19;

    v21 = dispatch_queue_create("com.apple.mediaanalysisd.VCPVideoProcessor.ResourceLoaderDelegate", 0);
    resourceLoaderDelegateQueue = v7->_resourceLoaderDelegateQueue;
    v7->_resourceLoaderDelegateQueue = v21;

    goto LABEL_14;
  }

  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[VCPVideoProcessor] Initialization faiure, invalid video duration", &buf, 2u);
  }

  v17 = 0;
LABEL_15:

  return v17;
}

- (BOOL)_analyzeWithStart:(id *)start andDuration:(id *)duration error:(id *)error
{
  v101[1] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E6988168];
  url = self->_url;
  urlAssetOptions = [objc_opt_class() urlAssetOptions];
  v12 = [v9 URLAssetWithURL:url options:urlAssetOptions];

  if (v12)
  {
    resourceLoader = [v12 resourceLoader];
    [resourceLoader setDelegate:self->_resourceLoaderDelegate queue:self->_resourceLoaderDelegateQueue];

    v14 = [MEMORY[0x1E6987E78] assetReaderWithAsset:v12 error:error];
    if (!v14)
    {
      v30 = 0;
LABEL_81:

      goto LABEL_82;
    }

    v15 = [v12 vcp_firstEnabledTrackWithMediaType:*MEMORY[0x1E6987608]];
    v16 = v15;
    if (v15)
    {
      if (!self->_requiresSyncFrameDetectionFromNalUnit)
      {
        goto LABEL_12;
      }

      formatDescriptions = [v15 formatDescriptions];
      if ([formatDescriptions count] != 1)
      {
        if (!error)
        {
          v30 = 0;
LABEL_79:

          goto LABEL_80;
        }

        v33 = MEMORY[0x1E696ABC0];
        v96 = *MEMORY[0x1E696A578];
        v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video track contains %d (expecting 1) format description(s)", objc_msgSend(formatDescriptions, "count")];
        v97 = v25;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
        *error = [v33 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v34];

LABEL_41:
        v30 = 0;
        goto LABEL_78;
      }

      v17 = [formatDescriptions objectAtIndexedSubscript:0];
      MediaSubType = CMFormatDescriptionGetMediaSubType(v17);

      if (MediaSubType != 1635148593 && MediaSubType != 1752589105 && error)
      {
        v71 = MEMORY[0x1E696ABC0];
        v94 = *MEMORY[0x1E696A578];
        mediaSubType = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsupported codec type: %d", MediaSubType];
        v95 = mediaSubType;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
        *error = [v71 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v20];
      }

      if (MediaSubType == 1635148593 || MediaSubType == 1752589105)
      {
LABEL_12:
        v21 = [(NSDictionary *)self->_decoderSettings objectForKeyedSubscript:@"AppliesPreferredTrackTransform"];
        bOOLValue = [v21 BOOLValue];

        formatDescriptions = [(NSDictionary *)self->_decoderSettings mutableCopy];
        [formatDescriptions removeObjectForKey:@"AppliesPreferredTrackTransform"];
        objc_msgSend_preferredTransform(v16);
        v72 = angleForTransform(&range);
        if (self->_requiresSyncFrameDetectionFromNalUnit)
        {
          v23 = 0;
        }

        else
        {
          v23 = formatDescriptions;
        }

        v24 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:v16 outputSettings:v23];
        v25 = v24;
        if (v24)
        {
          if (bOOLValue && !self->_requiresSyncFrameDetectionFromNalUnit)
          {
            [v24 setAppliesPreferredTrackTransform:1];
          }

          *&start.start.value = *&start->var0;
          start.start.epoch = start->var3;
          duration = *duration;
          CMTimeRangeMake(&range, &start.start, &duration);
          objc_msgSend_timeRange(v16);
          CMTimeRangeGetIntersection(&v83, &range, &start);
          range = v83;
          [v14 setTimeRange:&range];
          [v14 addOutput:v25];
          if ([v14 startReading])
          {
            -[VCPVideoProcessorSession setOrientation:](self->_session, "setOrientation:", [v16 vcp_imageOrientation]);
            progressHandler = self->_progressHandler;
            if (progressHandler)
            {
              progressHandler[2](0.0);
            }

            range.start.value = 0;
            *&range.start.timescale = &range;
            range.start.epoch = 0x4812000000;
            range.duration.value = __Block_byref_object_copy__46;
            *&range.duration.timescale = __Block_byref_object_dispose__46;
            range.duration.epoch = &unk_1CA01F5A2;
            epoch = 0;
            v79 = 0uLL;
            objc_msgSend_timeRange(v14);
            v79 = *&start.start.value;
            epoch = start.start.epoch;
            v75[0] = MEMORY[0x1E69E9820];
            v75[1] = 3221225472;
            v75[2] = __57__VCPVideoProcessor__analyzeWithStart_andDuration_error___block_invoke;
            v75[3] = &unk_1E834FE18;
            v75[4] = self;
            p_range = &range;
            v27 = v14;
            v76 = v27;
            v70 = [VCPTimer timerWithIntervalSeconds:1 isOneShot:0 andBlock:v75];
            v28 = atomic_load(&self->_canceled);
            if (v28)
            {
LABEL_23:
              [v27 cancelReading];
LABEL_24:
              if ([(VCPVideoProcessorSession *)self->_session allRequestsFinished])
              {
                goto LABEL_25;
              }

              if ([v27 status] == 4)
              {
                if (error)
                {
                  v57 = MEMORY[0x1E696ABC0];
                  v86 = *MEMORY[0x1E696A578];
                  v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Video processor cancelled"];
                  v87 = v58;
                  v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
                  *error = [v57 errorWithDomain:*MEMORY[0x1E696A768] code:-128 userInfo:v59];
                }
              }

              else if ([v27 status] == 2)
              {
                session = self->_session;
                objc_msgSend_timeRange(v27);
                CMTimeRangeGetEnd(&duration, &start);
                if ([(VCPVideoProcessorSession *)session flushWithEndTime:&duration error:error])
                {
LABEL_25:
                  [v70 destroy];
                  v29 = self->_progressHandler;
                  if (v29)
                  {
                    v29[2](1.0);
                  }

                  v30 = 1;
                  goto LABEL_77;
                }
              }

              else if (error)
              {
                v61 = MEMORY[0x1E696ABC0];
                v84 = *MEMORY[0x1E696A578];
                v62 = MEMORY[0x1E696AEC0];
                error = [v27 error];
                v64 = [v62 stringWithFormat:@"Failed to complete video decoding: %@", error];
                v85 = v64;
                v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
                *error = [v61 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v65];
              }

LABEL_76:
              v30 = 0;
LABEL_77:

              _Block_object_dispose(&range, 8);
              goto LABEL_78;
            }

            if (bOOLValue)
            {
              v41 = v72;
            }

            else
            {
              v41 = 0;
            }

            v73 = v41;
            while (1)
            {
              allRequestsFinished = [(VCPVideoProcessorSession *)self->_session allRequestsFinished];
              if (allRequestsFinished)
              {
                goto LABEL_23;
              }

              v43 = VCPSignPostLog(allRequestsFinished);
              v44 = os_signpost_id_generate(v43);

              v46 = VCPSignPostLog(v45);
              v47 = v46;
              if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
              {
                LOWORD(start.start.value) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v47, OS_SIGNPOST_INTERVAL_BEGIN, v44, "AVAssetReaderTrackOutput_copyNextSampleBuffer", "", &start, 2u);
              }

              duration.value = [v25 copyNextSampleBuffer];
              v48 = VCPSignPostLog(duration.value);
              v49 = v48;
              if (v44 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
              {
                LOWORD(start.start.value) = 0;
                _os_signpost_emit_with_name_impl(&dword_1C9B70000, v49, OS_SIGNPOST_INTERVAL_END, v44, "AVAssetReaderTrackOutput_copyNextSampleBuffer", "", &start, 2u);
              }

              value = duration.value;
              if (!duration.value)
              {
                CF<__CVBuffer *>::~CF(&duration);
                goto LABEL_24;
              }

              if (self->_requiresSyncFrameDetectionFromNalUnit)
              {
                if (![VCPVideoSyncFrameDecoder isSyncFrameForCMSampleBuffer:?])
                {
                  goto LABEL_62;
                }

                syncFrameDecoder = self->_syncFrameDecoder;
                if (!syncFrameDecoder)
                {
                  v52 = [VCPVideoSyncFrameDecoder alloc];
                  v53 = [(VCPVideoSyncFrameDecoder *)v52 initWithDecoderSettings:self->_decoderSettings formatDescription:CMSampleBufferGetFormatDescription(duration.value) rotationAngle:v73];
                  v54 = self->_syncFrameDecoder;
                  self->_syncFrameDecoder = v53;

                  syncFrameDecoder = self->_syncFrameDecoder;
                  if (!syncFrameDecoder)
                  {
                    if (error)
                    {
                      v67 = MEMORY[0x1E696ABC0];
                      v88 = *MEMORY[0x1E696A578];
                      v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create VCPVideoSyncFrameDecoder"];
                      v89 = v68;
                      v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
                      *error = [v67 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v69];
                    }

                    goto LABEL_75;
                  }
                }

                start.start.value = 0;
                if (![(VCPVideoSyncFrameDecoder *)syncFrameDecoder decodeCMSampleBuffer:duration.value toCMSampleBuffer:&start error:error])
                {
                  CF<__CVBuffer *>::~CF(&start);
LABEL_75:
                  CF<__CVBuffer *>::~CF(&duration);
                  goto LABEL_76;
                }

                CF<__CVBuffer *>::operator=(&duration, &start);
                CF<__CVBuffer *>::~CF(&start);
                value = duration.value;
              }

              if (![(VCPVideoProcessorSession *)self->_session processSampleBuffer:value error:error])
              {
                goto LABEL_75;
              }

              CMSampleBufferGetPresentationTimeStamp(&start.start, duration.value);
              v55 = *&range.start.timescale;
              *(*&range.start.timescale + 48) = *&start.start.value;
              *(v55 + 64) = start.start.epoch;
LABEL_62:
              CF<__CVBuffer *>::~CF(&duration);
              v56 = atomic_load(&self->_canceled);
              if (v56)
              {
                goto LABEL_23;
              }
            }
          }

          if (error)
          {
            v38 = MEMORY[0x1E696ABC0];
            v90 = *MEMORY[0x1E696A578];
            v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to start decoding video track"];
            v91 = v39;
            v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
            *error = [v38 errorWithDomain:*MEMORY[0x1E696A768] code:-19 userInfo:v40];
          }
        }

        else if (error)
        {
          v35 = MEMORY[0x1E696ABC0];
          v92 = *MEMORY[0x1E696A578];
          v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create video track output"];
          v93 = v36;
          v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
          *error = [v35 errorWithDomain:*MEMORY[0x1E696A768] code:-18 userInfo:v37];
        }

        goto LABEL_41;
      }
    }

    else if (error)
    {
      v32 = MEMORY[0x1E696ABC0];
      v98 = *MEMORY[0x1E696A578];
      formatDescriptions = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset contains no video tracks"];
      v99 = formatDescriptions;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      [v32 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v25];
      *error = v30 = 0;
LABEL_78:

      goto LABEL_79;
    }

    v30 = 0;
LABEL_80:

    goto LABEL_81;
  }

  if (error)
  {
    v31 = MEMORY[0x1E696ABC0];
    v100 = *MEMORY[0x1E696A578];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load asset"];
    v101[0] = v14;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v101 forKeys:&v100 count:1];
    [v31 errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:v16];
    *error = v30 = 0;
    goto LABEL_80;
  }

  v30 = 0;
LABEL_82:

  return v30;
}

void __57__VCPVideoProcessor__analyzeWithStart_andDuration_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) progressHandler];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(*(a1 + 48) + 8);
    if (v3)
    {
      objc_msgSend_timeRange(v3);
    }

    else
    {
      memset(v8, 0, sizeof(v8));
    }

    lhs = v4[2];
    rhs = v8[0];
    CMTimeSubtract(&time, &lhs, &rhs);
    Seconds = CMTimeGetSeconds(&time);
    v6 = *(a1 + 40);
    if (v6)
    {
      objc_msgSend_timeRange(v6);
    }

    else
    {
      memset(&v8[0].epoch, 0, 32);
    }

    lhs = v8[1];
    v7 = CMTimeGetSeconds(&lhs);
    v2[2](v2, Seconds / v7);
  }
}

- (BOOL)analyzeWithStart:(id *)start andDuration:(id *)duration error:(id *)error
{
  v9 = objc_autoreleasePoolPush();
  buf = *start;
  v18 = *duration;
  v17 = 0;
  v10 = [(VCPVideoProcessor *)self _analyzeWithStart:&buf andDuration:&v18 error:&v17];
  v11 = v17;
  if (v10)
  {
    v12 = 1;
  }

  else
  {
    v13 = [(NSDictionary *)self->_decoderSettings objectForKeyedSubscript:*MEMORY[0x1E6987D38]];

    if (v13)
    {
      if (MediaAnalysisLogLevel() >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.var0) = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Attempting second pass decoding via VTDecompressionSession", &buf, 2u);
      }

      self->_requiresSyncFrameDetectionFromNalUnit = 1;
      buf = *start;
      v18 = *duration;
      v16 = v11;
      v12 = [(VCPVideoProcessor *)self _analyzeWithStart:&buf andDuration:&v18 error:&v16];
      v14 = v16;

      v11 = v14;
    }

    else
    {
      v12 = 0;
    }
  }

  objc_autoreleasePoolPop(v9);
  if (error && v11)
  {
    *error = [v11 copy];
  }

  return v12;
}

- (BOOL)analyzeWithError:(id *)error
{
  v6 = *MEMORY[0x1E6960CC0];
  v7 = *(MEMORY[0x1E6960CC0] + 16);
  v4 = *MEMORY[0x1E6960C88];
  v5 = *(MEMORY[0x1E6960C88] + 16);
  return [(VCPVideoProcessor *)self analyzeWithStart:&v6 andDuration:&v4 error:error];
}

@end