@interface BWIrisStagingNode
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginIrisMovieCaptureTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endIrisMovieCaptureTime;
- (BOOL)_haveEnoughVideoStagedToStartFirstIrisRecording:(CMTime *)recording currentTime:(CMTime *)time emitEndTimeOut:;
- (BOOL)allInputsHaveReachedState:(int)state;
- (BOOL)waitUntilReadyToReceiveRequestsWithTimeout:(float)timeout;
- (BWIrisStagingNode)initWithNumberOfVideoInputs:(unint64_t)inputs numberOfAudioInputs:(unint64_t)audioInputs numberOfMetadataInputs:(unint64_t)metadataInputs autoTrimMethod:(int)method vitalityScoringEnabled:(BOOL)enabled captureDeviceHasOverCaptureEnabled:(BOOL)captureEnabled overCaptureEnabled:(BOOL)overCaptureEnabled depthEnabled:(BOOL)self0 videoStabilizationOverscanOverride:(float)self1 sequenceAdjusterEnabled:(BOOL)self2 visMotionMetadataPreloadingMode:(int)self3 frameReconstructionEnabled:(BOOL)self4 subjectRelightingEnabled:(BOOL)self5 intermediateJPEGCompressionQuality:(float)self6 intermediateJPEGCompressionRate:(float)self7 maxLossyCompressionLevel:(int)self8 temporaryMovieDirectoryURL:(id)self9 cameraInfoByPortType:(id)type smartStyleRenderingEnabled:(BOOL)renderingEnabled smartStyleReversibilityEnabled:(BOOL)reversibilityEnabled smartFramingEnabled:(BOOL)framingEnabled irisRequestDelegate:(id)delegate inferenceScheduler:(id)scheduler;
- (CMTime)_adjustedStartTimeForTrimmedStartTime:(__int128 *)time@<X2> ensuringAtLeast3FramesBeforeStillTime:(int)stillTime@<W3> ensuringFrameIsAfterTrimmedStartTime:(__int128 *)startTime@<X4> butNotEarlierThanOriginalStartTime:(char *)originalStartTime@<X5> adjustedStartBufferIndexOut:(uint64_t)out@<X8>;
- (CMTime)_earliestAllowedStillHostPTS;
- (CMTime)_emitSampleBuffer:(uint64_t)buffer forInputIndex:;
- (CMTime)_hostPTSForSampleBuffer:(uint64_t)buffer@<X8>;
- (CMTime)_maxPTSForIrisRequest:(uint64_t)request@<X8>;
- (CMTime)_mostRecentCuttingBufferPTSBeforePTS:(unint64_t *)s@<X2> cuttingBufferIndexOut:(uint64_t)out@<X8>;
- (CMTime)_trimQueueForInputIndex:(CMTime *)result;
- (char)_emittingInputsCount;
- (double)_prepareToEmitFramesFromStartTime:(uint64_t)time throughEndTime:(uint64_t)endTime;
- (double)_resumeStaging;
- (float)_appliedZoomFromSampleBuffer:(uint64_t)buffer;
- (int)enqueueIrisRequest:(id)request;
- (int)openValveWithIrisRequest:(id)request;
- (uint64_t)_adjustedStartTimeForSmartStyle:(int)style@<W2> allowSearchBackward:(CMTime *)backward@<X3> searchEndPTS:(uint64_t *)s@<X4> adjustedStartBufferIndexOut:(CMTime *)out@<X8>;
- (uint64_t)_emissionStatusForSampleBuffer:(uint64_t)result;
- (uint64_t)_emitBuffersThroughPTS:(uint64_t)s forInputIndex:(unint64_t *)index inOutBufferIndex:(unint64_t)bufferIndex bufferCount:;
- (uint64_t)_emitIrisRequestsOlderThanTime:(const void *)time withEndingVideoSampleTimingInfo:(uint64_t)info;
- (uint64_t)_informDelegateOfSoonToBeEmittedIrisRequestsForTime:(uint64_t)time;
- (uint64_t)_momentCaptureMovieRecordingInProgress;
- (uint64_t)_sbufHasSmartStyleReversibilityAttachedMedia:(uint64_t)media;
- (uint64_t)_updateRetainedBufferCount;
- (unint64_t)_indexOfBufferBeforeOrEqualToHostPTS:(uint64_t)s inputIndex:(CMTime *)index tolerance:;
- (unint64_t)_indexOfBufferBeforeOrEqualToPTS:(id *)s inputIndex:(unint64_t)index applyFrameDropsMitigation:(BOOL)mitigation;
- (void)_emitBuffersThroughPTS:(void *)result;
- (void)_emitIrisMovieRequestWithInfo:(uint64_t)info;
- (void)_emitIrisRequest:(uint64_t)request withEndingVideoSampleTimingInfo:;
- (void)_enqueueIrisRequest:(uint64_t)request;
- (void)_feedTrimmerWithInferencesSampleBuffer:(void *)result;
- (void)_feedTrimmerWithVideoSampleBuffer:(uint64_t)buffer;
- (void)_fillInRefMovieStartAndTrimTimesForStillImageTimesBeforeTime:(uint64_t)time;
- (void)_fillInStartAndTrimTimesForMasterMovieWithInfo:(uint64_t)info;
- (void)_findAndMarkCuttingBufferForVideoSbuf:(uint64_t)sbuf;
- (void)_flushAndSuspendStaging;
- (void)_processQueuedVideoFrames;
- (void)_serviceIrisRequestsForCurrentTime:(int)time emitBuffers:(int)buffers ensureStillImageTimesAreStaged:;
- (void)_setupDepthMediaConfigurationForInput:(uint64_t)input attachedMediaKey:;
- (void)_setupDepthMediaConfigurationForOutput:(uint64_t)output attachedMediaKey:;
- (void)_setupIrisAutoTrimmer;
- (void)_setupSmartStyleMediaConfigurationsForInput:(void *)result;
- (void)_setupSmartStyleMediaConfigurationsForOutput:(void *)result;
- (void)_signalReadyToReceiveRequestsWithEarliestAllowedStillHostPTS:(uint64_t)s;
- (void)_suspendStaging;
- (void)_tagStillImageVISKeyFrames;
- (void)_updateIrisInfoRequiresSRLCalculation:(CMAttachmentBearerRef)target withStillReferenceSampleBuffer:;
- (void)closeValve;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)prepareToFinishAllEnqueuedIrisRequestsWithEndTime:(id *)time;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
- (void)setBeginIrisMovieCaptureTime:(id *)time;
- (void)setBufferingTime:(id *)time;
- (void)setEndIrisMovieCaptureTime:(id *)time;
- (void)setMasterClock:(OpaqueCMClock *)clock;
- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)time forRequestWithSettingsID:(int64_t)d;
- (void)setTargetFrameDuration:(id *)duration;
@end

@implementation BWIrisStagingNode

- (uint64_t)_updateRetainedBufferCount
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(result "inputs")];
    if (result)
    {
      if (*(v1 + 140) & 1) != 0 && (*(v1 + 164))
      {
        OUTLINED_FUNCTION_44_5((v1 + 152));
        time2 = **&MEMORY[0x1E6960CC0];
        result = CMTimeCompare(&time1, &time2);
        if (result >= 1)
        {
          v2 = [OUTLINED_FUNCTION_4_3() objectAtIndexedSubscript:?];
          OUTLINED_FUNCTION_44_5((v1 + 128));
          Seconds = CMTimeGetSeconds(&time1);
          OUTLINED_FUNCTION_44_5((v1 + 152));
          v4 = ceil(Seconds / CMTimeGetSeconds(&time1)) + 1.0 + 3.0;
          v5 = (v4 + [*(v1 + 592) audioOffsetForOriginalStillImageTimeMaximumFrameLatency]);
          audioOffsetForOriginalStillImageTimeMaximumFrameLatency = [*(v1 + 592) audioOffsetForOriginalStillImageTimeMaximumFrameLatency];
          v7 = ((7 - *(v1 + 648) - audioOffsetForOriginalStillImageTimeMaximumFrameLatency) & ~((7 - *(v1 + 648) - audioOffsetForOriginalStillImageTimeMaximumFrameLatency) >> 31)) + v5;
          if (*(v1 + 616))
          {
            v8 = *(v1 + 608);
            if (v8)
            {

              *(v1 + 608) = 0;
            }

            v9 = (v7 * 1.5);
            *(v1 + 608) = [[BWMotionDataTimeMachine alloc] initWithCapacity:v9 synchronizedSlaveMotionDataCachingEnabled:*(v1 + 616) == 2 cacheEntireMetadataDictionary:0];
          }

          else
          {
            v9 = 0;
          }

          if (*(v1 + 680) == 1)
          {
            [v2 setRetainedBufferCount:0];
            [v2 setDelayedBufferCount:0];
            *(v1 + 652) = v7;
          }

          else
          {
            [v2 setDelayedBufferCount:v7];
          }

          specifiedAttachedMediaKeys = [v2 specifiedAttachedMediaKeys];
          OUTLINED_FUNCTION_43();
          result = [v11 countByEnumeratingWithState:? objects:? count:?];
          if (result)
          {
            v12 = result;
            v13 = *v20;
            do
            {
              v14 = 0;
              do
              {
                if (*v20 != v13)
                {
                  objc_enumerationMutation(specifiedAttachedMediaKeys);
                }

                v15 = *(v19 + 8 * v14);
                v16 = [v2 mediaConfigurationForAttachedMediaKey:v15];
                [v16 setDelayedBufferCount:v7];
                if ([BWAttachedMediaKeysAvailableOnSmartStyleLearnedFramesOnly() containsObject:v15])
                {
                  [v16 setDelayedBufferCount:v7];
                }

                if (objc_msgSend_isEqualToString_(v15))
                {
                  delayedBufferCount = [v16 delayedBufferCount];
                  delayedBufferCount2 = v9;
                  if (delayedBufferCount > v9)
                  {
                    delayedBufferCount2 = [v16 delayedBufferCount];
                  }

                  [v16 setDelayedBufferCount:delayedBufferCount2];
                }

                ++v14;
              }

              while (v12 != v14);
              OUTLINED_FUNCTION_43();
              result = [specifiedAttachedMediaKeys countByEnumeratingWithState:? objects:? count:?];
              v12 = result;
            }

            while (result);
          }
        }
      }
    }
  }

  return result;
}

- (void)prepareForCurrentConfigurationToBecomeLive
{
  v3.receiver = self;
  v3.super_class = BWIrisStagingNode;
  [(BWNode *)&v3 prepareForCurrentConfigurationToBecomeLive];
  FigSimpleMutexLock();
  [(BWIrisStagingNode *)self _setupIrisAutoTrimmer];
  FigSimpleMutexUnlock();
}

- (void)_setupIrisAutoTrimmer
{
  if (self)
  {
    if (!*(self + 528))
    {
      if (*(self + 512) > 0 || (OUTLINED_FUNCTION_33(), v2))
      {
        *(self + 528) = objc_alloc_init(FigIrisAutoTrimmer);
        CMTimeMake(&time, *(self + 160), *(self + 152));
        CMTimeGetSeconds(&time);
        [OUTLINED_FUNCTION_65_2() setVideoFrameRate:?];
        OUTLINED_FUNCTION_6_3(self + 128);
        CMTimeGetSeconds(&time);
        [OUTLINED_FUNCTION_65_2() setBufferHistorySeconds:?];
        OUTLINED_FUNCTION_6_3(self + 128);
        CMTimeMultiplyByRatio(&v4, &time, 1, 2);
        v3 = OUTLINED_FUNCTION_65_2();
        time = v4;
        [v3 setMaxHoldDuration:&time];
        [OUTLINED_FUNCTION_65_2() setVitalityScoringEnabled:?];
        OUTLINED_FUNCTION_33();
        if (v2)
        {
          [*(self + 528) setVitalityScoringSmartCameraPipelineVersion:*(self + 518) | (*(self + 520) << 16)];
        }

        [OUTLINED_FUNCTION_65_2() startMotionProcessing];
      }
    }
  }
}

- (double)_resumeStaging
{
  if (self)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    *(self + 224) = 0;
    *(self + 225) = 0;
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v4, HostTimeClock);
    result = *&v4.value;
    *(self + 228) = v4;
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWIrisStagingNode)initWithNumberOfVideoInputs:(unint64_t)inputs numberOfAudioInputs:(unint64_t)audioInputs numberOfMetadataInputs:(unint64_t)metadataInputs autoTrimMethod:(int)method vitalityScoringEnabled:(BOOL)enabled captureDeviceHasOverCaptureEnabled:(BOOL)captureEnabled overCaptureEnabled:(BOOL)overCaptureEnabled depthEnabled:(BOOL)self0 videoStabilizationOverscanOverride:(float)self1 sequenceAdjusterEnabled:(BOOL)self2 visMotionMetadataPreloadingMode:(int)self3 frameReconstructionEnabled:(BOOL)self4 subjectRelightingEnabled:(BOOL)self5 intermediateJPEGCompressionQuality:(float)self6 intermediateJPEGCompressionRate:(float)self7 maxLossyCompressionLevel:(int)self8 temporaryMovieDirectoryURL:(id)self9 cameraInfoByPortType:(id)type smartStyleRenderingEnabled:(BOOL)renderingEnabled smartStyleReversibilityEnabled:(BOOL)reversibilityEnabled smartFramingEnabled:(BOOL)framingEnabled irisRequestDelegate:(id)delegate inferenceScheduler:(id)scheduler
{
  captureEnabledCopy = captureEnabled;
  v25 = audioInputs + inputs;
  v85 = audioInputs + inputs + metadataInputs;
  if (!v85)
  {
    v73 = MEMORY[0x1E695DF30];
    v74 = *MEMORY[0x1E695D940];
    v75 = @"Need at least 1 input";
    goto LABEL_73;
  }

  enabledCopy = enabled;
  if (overCaptureEnabled && !captureEnabled)
  {
    v73 = MEMORY[0x1E695DF30];
    v74 = *MEMORY[0x1E695D940];
    v75 = @"captureDeviceHasOverCaptureEnabled must be true when overCaptureEnabled is true";
LABEL_73:
    objc_exception_throw([v73 exceptionWithName:v74 reason:v75 userInfo:{0, *&method, enabled}]);
  }

  v86.receiver = self;
  v86.super_class = BWIrisStagingNode;
  v34 = [(BWNode *)&v86 init];
  v35 = v34;
  if (!v34)
  {
    return v35;
  }

  metadataInputsCopy = metadataInputs;
  audioInputsCopy = audioInputs;
  HIDWORD(v76) = reconstructionEnabled;
  depthEnabledCopy2 = depthEnabled;
  [(BWNode *)v34 setSupportsConcurrentLiveInputCallbacks:1];
  v35->_spatialOverCaptureMasterMovieURL = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35->_stagingQueues = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35->_lastEmittedBuffers = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35->_valveOpenerSettingsID = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35->_irisRequestsInFlight = objc_alloc_init(MEMORY[0x1E695DF70]);
  *&v35->_doingJPEGCompression = type;
  *&v35->_visMotionMetadataPreloadingMode = delegate;
  v37 = MEMORY[0x1E6960C70];
  v83 = *(MEMORY[0x1E6960C70] + 16);
  *&v35->_stagingResumedTime.flags = v83;
  v82 = *v37;
  *(&v35->_flushAndSuspendPending + 3) = *v37;
  BYTE2(v35->_subjectRelightingResult) = renderingEnabled;
  LODWORD(v76) = reversibilityEnabled;
  BYTE3(v35->_subjectRelightingResult) = reversibilityEnabled;
  LODWORD(v35->_masterClock) = method;
  v77 = enabledCopy;
  BYTE4(v35->_masterClock) = enabledCopy;
  BYTE4(v35->_limitedGMErrorLogger) = relightingEnabled;
  *&v35->_emittedIrisRequestCount = FigSimpleMutexCreate();
  v35->_stateMutex = malloc_type_calloc(v85, 0x18uLL, 0x1000040504FFAC1uLL);
  *&v35->_compressedBufferPoolAllocationTimeoutMS = quality;
  *(&v35->_compressedBufferPoolAllocationTimeoutMS + 1) = rate;
  LOBYTE(v35->_synchronizedSlaveJPEGCompressor) = fmaxf(rate, *&v35->_compressedBufferPoolAllocationTimeoutMS) > 0.0;
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0;
  v39 = 0;
  v81 = v25;
  do
  {
    if (v39 >= inputs)
    {
      v40 = 1936684398;
    }

    else
    {
      v40 = 1986618469;
    }

    v41 = v39 < v25 && v39 < inputs;
    if (v39 >= v25)
    {
      v42 = 1835365473;
    }

    else
    {
      v42 = v40;
    }

    [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v42, v76)}];
    v43 = [[BWNodeInput alloc] initWithMediaType:v42 node:v35 index:v39];
    if (v41)
    {
      v44 = objc_alloc_init(BWVideoFormatRequirements);
      if (LOBYTE(v35->_synchronizedSlaveJPEGCompressor) == 1)
      {
        v45 = [MEMORY[0x1E695DF70] arrayWithArray:&unk_1F2248718];
        [v45 addObjectsFromArray:{FigCaptureSupportedPixelFormatsForCompressionType(4, 0, 0, level)}];
        [(BWVideoFormatRequirements *)v44 setSupportedPixelFormats:v45];
      }

      [(BWNodeInput *)v43 setFormatRequirements:v44];

      [(BWNodeInput *)v43 setPassthroughMode:LOBYTE(v35->_synchronizedSlaveJPEGCompressor) ^ 1u];
      BYTE4(v35->_minimumPrerollFrames) = captureEnabledCopy;
      if (captureEnabledCopy)
      {
        BYTE4(v35->_stagingResumedTime.epoch) = v35->_synchronizedSlaveJPEGCompressor & overCaptureEnabled;
        v46 = objc_alloc_init(BWNodeInputMediaConfiguration);
        [(BWNodeInputMediaConfiguration *)v46 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
        if (overCaptureEnabled)
        {
          [(BWNodeInputMediaConfiguration *)v46 setPassthroughMode:BYTE4(v35->_stagingResumedTime.epoch) ^ 1u];
          [(BWNodeInput *)v43 setMediaConfiguration:v46 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
          v35->_videoStabilizationOverscanOverride = 0.4;
        }

        else
        {
          [(BWNodeInputMediaConfiguration *)v46 setPassthroughMode:0];
          [(BWNodeInput *)v43 setMediaConfiguration:v46 forAttachedMediaKey:@"SynchronizedSlaveFrame"];
        }

        depthEnabledCopy2 = depthEnabled;
      }

      if (depthEnabledCopy2)
      {
        [(BWIrisStagingNode *)v35 _setupDepthMediaConfigurationForInput:v43 attachedMediaKey:@"DepthData_DX"];
        [(BWIrisStagingNode *)v35 _setupDepthMediaConfigurationForInput:v43 attachedMediaKey:@"DepthData_DY"];
      }

      *&v35->_minimumPrerollFrames = override;
      v25 = v81;
    }

    [(BWNode *)v35 addInput:v43];
    v47 = [[BWNodeOutput alloc] initWithMediaType:v42 node:v35];
    if (v41)
    {
      v48 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v47 setFormatRequirements:v48];
      [(BWNodeOutput *)v47 setPassthroughMode:LOBYTE(v35->_synchronizedSlaveJPEGCompressor) ^ 1u];
      [(BWNodeOutput *)v47 setIndexOfInputWhichDrivesThisOutput:v39];

      if (overCaptureEnabled)
      {
        v49 = objc_alloc_init(BWVideoFormatRequirements);
        v50 = objc_alloc_init(BWNodeOutputMediaConfiguration);
        [(BWNodeOutputMediaConfiguration *)v50 setFormatRequirements:v49];
        [(BWNodeOutputMediaConfiguration *)v50 setPassthroughMode:BYTE4(v35->_stagingResumedTime.epoch) ^ 1u];
        [(BWNodeOutputMediaConfiguration *)v50 setIndexOfInputWhichDrivesThisOutput:v39];
        [(BWNodeOutputMediaConfiguration *)v50 setAttachedMediaKeyOfInputWhichDrivesThisOutput:@"SynchronizedSlaveFrame"];
        if (BYTE4(v35->_stagingResumedTime.epoch))
        {
          v51 = @"CompressedSynchronizedSlaveFrame";
        }

        else
        {
          v51 = @"SynchronizedSlaveFrame";
        }

        v52 = v50;
        v25 = v81;
        [(BWNodeOutput *)v47 setMediaConfiguration:v52 forAttachedMediaKey:v51];
      }

      if (depthEnabledCopy2)
      {
        [(BWIrisStagingNode *)v35 _setupDepthMediaConfigurationForOutput:v47 attachedMediaKey:@"DepthData_DX"];
        [(BWIrisStagingNode *)v35 _setupDepthMediaConfigurationForOutput:v47 attachedMediaKey:@"DepthData_DY"];
      }

      if (BYTE2(v35->_subjectRelightingResult) == 1)
      {
        [(BWIrisStagingNode *)v35 _setupSmartStyleMediaConfigurationsForInput:v43];
        [(BWIrisStagingNode *)v35 _setupSmartStyleMediaConfigurationsForOutput:v47];
      }
    }

    [(BWNode *)v35 addOutput:v47];
    -[NSURL addObject:](v35->_spatialOverCaptureMasterMovieURL, "addObject:", [MEMORY[0x1E695DF70] array]);
    -[NSMutableArray addObject:](v35->_stagingQueues, "addObject:", [MEMORY[0x1E695DFB0] null]);
    v53 = v35->_stateMutex + v38;
    *v53 = v82;
    *(v53 + 2) = v83;

    ++v39;
    v38 += 24;
  }

  while (v85 != v39);
  if (v77)
  {
    *&v35->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching = v85;
    v54 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v35 index:*&v35->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching];
    v55 = objc_alloc_init(BWVideoFormatRequirements);
    [(BWNodeInput *)v54 setFormatRequirements:v55];

    [(BWNode *)v35 addInput:v54];
  }

  else
  {
    *&v35->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching = -1;
  }

  v56 = metadataInputsCopy;
  LODWORD(v35->_motionDataTimeMachine) = mode;
  v35->_inferencesInputIndex = scheduler;
  v35->_inferenceScheduler = [[BWMotionDataPreserver alloc] initWithName:[(BWNode *)v35 description]];
  if (adjusterEnabled)
  {
    motionDataTimeMachine = v35->_motionDataTimeMachine;
    if (v76)
    {
      v58 = BWAttachedMediaKeysAvailableOnSmartStyleLearnedFramesOnly();
    }

    else
    {
      v58 = 0;
    }

    v35->_motionDataPreserver = [[BWIrisSequenceAdjuster alloc] initWithMediaTypes:array visMotionMetadataPreloadingEnabled:motionDataTimeMachine != 0 generateIFrames:HIDWORD(v76) attachedMediaKeysToPreserve:v58];
  }

  v35->_masterMovieStartPTS.epoch = l;
  if (!inputs)
  {
    BYTE1(v35->_emissionMap) = 1;
  }

  if (!audioInputsCopy)
  {
    LOBYTE(v35->_emissionMap) = 1;
  }

  v59 = malloc_type_malloc(8 * v85, 0x100004000313F17uLL);
  v35->_cameraInfoByPortType = v59;
  if (v25 < v85)
  {
    v60 = (metadataInputsCopy + 1) & 0xFFFFFFFFFFFFFFFELL;
    v61 = vdupq_n_s64(metadataInputsCopy - 1);
    v62 = xmmword_1AD046360;
    v63 = v59 + 1;
    v64 = vdupq_n_s64(2uLL);
    v65 = v25;
    do
    {
      v66 = vmovn_s64(vcgeq_u64(v61, v62));
      if (v66.i8[0])
      {
        v63[-1].super.isa = v65;
      }

      if (v66.i8[4])
      {
        v63->super.isa = (v65 + 1);
      }

      v62 = vaddq_s64(v62, v64);
      v63 += 2;
      v65 += 2;
      v60 -= 2;
    }

    while (v60);
    if (!inputs)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v56 = 0;
  if (inputs)
  {
LABEL_59:
    v67 = 0;
    do
    {
      v59[v56 + v67].super.isa = v67;
      v67 = (v67 + 1);
    }

    while (inputs != v67);
    v56 += v67;
  }

LABEL_62:
  if (v25 > inputs)
  {
    v68 = 0;
    v69 = vdupq_n_s64(audioInputsCopy - 1);
    v70 = &v59[v56];
    do
    {
      v71 = vmovn_s64(vcgeq_u64(v69, vorrq_s8(vdupq_n_s64(v68), xmmword_1AD046360)));
      if (v71.i8[0])
      {
        v70[v68].super.isa = (inputs + v68);
      }

      if (v71.i8[4])
      {
        v70[v68 + 1].super.isa = (inputs + v68 + 1);
      }

      v68 += 2;
    }

    while (((audioInputsCopy + 1) & 0xFFFFFFFFFFFFFFFELL) != v68);
  }

  v35->_valveActiveVideoFrameReceptionStats = [[BWLimitedGMErrorLogger alloc] initWithName:@"BWIrisStagingNode" maxLoggingCount:10];
  v35->_delegate = 1000;
  v35->_intermediateJPEGDownstreamRetainedBufferCount = 0;
  LOBYTE(v35->_firstTrimStartPTS.epoch) = 1;
  BYTE4(v35->_subjectRelightingResult) = framingEnabled;
  v35->_readyToReceiveRequestsGroup = 2;
  [(BWNode *)v35 setSupportsLiveReconfiguration:1];
  [(BWNode *)v35 setRequiresEndOfDataForConfigurationChanges:1];
  return v35;
}

- (void)dealloc
{
  firstEmittedPTSArray = self->_firstEmittedPTSArray;
  if (firstEmittedPTSArray)
  {
    CFRelease(firstEmittedPTSArray);
  }

  free(self->_stateMutex);
  FigSimpleMutexDestroy();

  v4 = *&self->_additionalCompressedBufferCount;
  if (v4)
  {
  }

  intermediateJPEGCompressor = self->_intermediateJPEGCompressor;
  if (intermediateJPEGCompressor)
  {
  }

  v6 = *&self->_haveSeenFirstAudioSampleBuffer;
  if (v6)
  {
    dispatch_group_leave(v6);
  }

  free(self->_cameraInfoByPortType);

  v7.receiver = self;
  v7.super_class = BWIrisStagingNode;
  [(BWNode *)&v7 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  if ([input index] == *&self->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching)
  {
    return;
  }

  v9 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);
  if ([input mediaType] == 1986618469)
  {
    synchronizedSlaveJPEGCompressor = self->_synchronizedSlaveJPEGCompressor;
  }

  else
  {
    synchronizedSlaveJPEGCompressor = 0;
  }

  v11 = BYTE4(self->_stagingResumedTime.epoch);
  keyCopy2 = key;
  if (v11 != 1)
  {
    goto LABEL_9;
  }

  if (!objc_msgSend_isEqualToString_(key))
  {
    keyCopy2 = key;
LABEL_9:
    isEqualToString = objc_msgSend_isEqualToString_(keyCopy2);
    goto LABEL_10;
  }

  keyCopy2 = @"CompressedSynchronizedSlaveFrame";
  isEqualToString = objc_msgSend_isEqualToString_(@"CompressedSynchronizedSlaveFrame");
LABEL_10:
  if (isEqualToString && ![objc_msgSend(input mediaConfigurationForAttachedMediaKey:{key), "passthroughMode"}])
  {
    return;
  }

  v14 = [v9 mediaPropertiesForAttachedMediaKey:keyCopy2];
  if (v14)
  {
    if ((synchronizedSlaveJPEGCompressor & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v14 = objc_alloc_init(BWNodeOutputMediaProperties);
    [v9 _setMediaProperties:v14 forAttachedMediaKey:keyCopy2];
    if ((synchronizedSlaveJPEGCompressor & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  if ((objc_msgSend_isEqualToString_(keyCopy2) & 1) == 0 && !objc_msgSend_isEqualToString_(keyCopy2))
  {
LABEL_24:

    [(BWNodeOutputMediaProperties *)v14 setResolvedFormat:format];
    return;
  }

  v15 = objc_alloc_init(BWVideoFormatRequirements);
  Dimensions = CMVideoFormatDescriptionGetDimensions([format formatDescription]);
  [(BWVideoFormatRequirements *)v15 setWidth:Dimensions.width];
  [(BWVideoFormatRequirements *)v15 setHeight:*&Dimensions >> 32];
  v17 = FigCaptureEncodedByteStreamFormatForPixelFormat([format pixelFormat]);
  if (v17)
  {
    v20 = v17;
    -[BWVideoFormatRequirements setSupportedPixelFormats:](v15, "setSupportedPixelFormats:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1]);
  }

  if ([format colorSpaceProperties])
  {
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(format, "colorSpaceProperties")}];
    -[BWVideoFormatRequirements setSupportedColorSpaceProperties:](v15, "setSupportedColorSpaceProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1]);
  }

  v18 = [v9 mediaConfigurationForAttachedMediaKey:keyCopy2];
  [v18 setFormatRequirements:v15];
  [v18 setProvidesPixelBufferPool:0];
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (![input index])
  {
    FigSimpleMutexLock();
    [(BWIrisStagingNode *)self _setupIrisAutoTrimmer];
    if (!self->_stagingSuspended)
    {
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v9, HostTimeClock);
      *(&self->_flushAndSuspendPending + 3) = v9;
    }

    LODWORD(self->_limitedGMErrorLogger) = 0;
    FigSimpleMutexUnlock();
  }

  if ([input index] != *&self->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);
    if (![v7 liveFormat])
    {
      [v7 makeConfiguredFormatLive];
    }
  }
}

- (void)didReachEndOfDataForConfigurationID:(id)d input:(id)input
{
  FigSimpleMutexLock();
  if ([(BWIrisStagingNode *)self allInputsHaveReachedState:0])
  {
    BYTE1(self->_subjectRelightingResult) = 1;
    if (LOBYTE(self->_droppedFramePTSs) == 1)
    {
      v71 = **&MEMORY[0x1E6960C70];
      v6 = [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "lastObject"}];
      if (v6)
      {
        CMSampleBufferGetPresentationTimeStamp(&v71, v6);
        v49 = *&v71.value;
        *v50 = v71.epoch;
        [(BWIrisStagingNode *)self _serviceIrisRequestsForCurrentTime:0 emitBuffers:0 ensureStillImageTimesAreStaged:?];
      }

      array = [MEMORY[0x1E695DF70] array];
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      valveOpenerSettingsID = self->_valveOpenerSettingsID;
      v9 = [valveOpenerSettingsID countByEnumeratingWithState:&v67 objects:v66 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v68;
        v12 = MEMORY[0x1E6960CF0];
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v68 != v11)
            {
              objc_enumerationMutation(valveOpenerSettingsID);
            }

            v14 = *(*(&v67 + 1) + 8 * i);
            if (v14)
            {
              objc_msgSend_movieStartTime(v14);
              if ((v64 & 0x100000000) != 0)
              {
                v15 = *v12;
                v16 = v12[1];
                v52 = *(v12 + 8);
                v51 = v12[3];
                *v50 = v16;
                *&v50[8] = v71;
                v60 = *&v71.timescale;
                v61 = v51;
                v49 = v15;
                v62 = v52;
                *v59 = v15;
                *&v59[16] = *v50;
                [(BWIrisStagingNode *)self _emitIrisRequest:v14 withEndingVideoSampleTimingInfo:v59];
                [array addObject:v14];
              }
            }

            else
            {
              v64 = 0;
              v63 = 0;
              v65 = 0;
            }
          }

          v10 = [valveOpenerSettingsID countByEnumeratingWithState:&v67 objects:v66 count:16];
        }

        while (v10);
      }

      [self->_valveOpenerSettingsID removeObjectsInArray:array];
      if ([self->_valveOpenerSettingsID count])
      {
        [*&self->_visMotionMetadataPreloadingMode stagingNode:self valveClosedWithPendingIrisRequests:self->_valveOpenerSettingsID];
        [self->_valveOpenerSettingsID removeAllObjects];
      }
    }

    v17 = *&self->_vitalityScoringSmartCameraPipelineVersion.minor;
    if (v17)
    {
      [v17 stopMotionProcessing];

      *&self->_vitalityScoringSmartCameraPipelineVersion.minor = 0;
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    spatialOverCaptureMasterMovieURL = self->_spatialOverCaptureMasterMovieURL;
    v19 = [(NSURL *)spatialOverCaptureMasterMovieURL countByEnumeratingWithState:&v55 objects:v54 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v56;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(spatialOverCaptureMasterMovieURL);
          }

          [*(*(&v55 + 1) + 8 * j) removeAllObjects];
        }

        v20 = [(NSURL *)spatialOverCaptureMasterMovieURL countByEnumeratingWithState:&v55 objects:v54 count:16];
      }

      while (v20);
    }

    BYTE2(self->_emissionMap) = 0;
    epoch = self->_lastReceivedVideoTime.epoch;
    if (epoch)
    {
      [epoch average];
      v25 = v24;
      [self->_lastReceivedVideoTime.epoch multiplier];
      if (v26 > 0.0)
      {
        [self->_lastReceivedVideoTime.epoch multiplier];
        v25 = v25 / v27;
      }

      if (dword_1ED844290)
      {
        LODWORD(v71.value) = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = v71.value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
        {
          v30 = value;
        }

        else
        {
          v30 = value & 0xFFFFFFFE;
        }

        if (v30)
        {
          v31 = [self->_lastReceivedVideoTime.epoch description];
          v32 = 0.0;
          *v59 = 136315906;
          *&v59[4] = "[BWIrisStagingNode didReachEndOfDataForConfigurationID:input:]";
          *&v59[12] = 2048;
          *&v59[14] = self;
          *&v59[22] = 2112;
          *&v59[24] = v31;
          if (v25 > 0.0)
          {
            v32 = 1.0 / v25;
          }

          LOWORD(v60) = 2048;
          *(&v60 + 2) = v32;
          LODWORD(v43) = 42;
          v42 = v59;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      self->_lastReceivedVideoTime.epoch = 0;
    }

    BYTE5(self->_limitedGMErrorLogger) = 0;

    self->_subjectRelightingCalculator = 0;
    if (d)
    {
      v33 = [-[NSArray objectAtIndexedSubscript:](-[BWNode inputs](self "inputs")];
      [*&self->_additionalCompressedBufferCount prepareForVideoFormat:v33];
      [(BWIntermediateJPEGCompressor *)self->_intermediateJPEGCompressor prepareForVideoFormat:v33];
      if (([objc_msgSend(*&self->_numberOfVideoFramesReceived "preparedVideoFormat")] & 1) == 0)
      {

        *&self->_numberOfVideoFramesReceived = 0;
      }

      self->_readyToReceiveRequestsGroup = 5;
    }

    else
    {
      v34 = *&self->_additionalCompressedBufferCount;
      if (v34)
      {

        *&self->_additionalCompressedBufferCount = 0;
      }

      intermediateJPEGCompressor = self->_intermediateJPEGCompressor;
      if (intermediateJPEGCompressor)
      {

        self->_intermediateJPEGCompressor = 0;
      }

      *&self->_numberOfVideoFramesReceived = 0;
    }

    [(BWStats *)self->_valveActiveVideoFrameReceptionStats resetCurrentLoggingCounter:v42];
    BYTE1(self->_subjectRelightingResult) = 0;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    outputs = [(BWNode *)self outputs];
    v37 = [(NSArray *)outputs countByEnumeratingWithState:&v45 objects:v44 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v46;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v46 != v39)
          {
            objc_enumerationMutation(outputs);
          }

          v41 = *(*(&v45 + 1) + 8 * k);
          if ([v41 liveFormat])
          {
            [v41 markEndOfLiveOutputForConfigurationID:d];
          }
        }

        v38 = [(NSArray *)outputs countByEnumeratingWithState:&v45 objects:v44 count:16];
      }

      while (v38);
    }
  }

  FigSimpleMutexUnlock();
}

- (BOOL)allInputsHaveReachedState:(int)state
{
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  inputs = [(BWNode *)self inputs];
  v5 = [(NSArray *)inputs countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(inputs);
        }

        if ((state != 1) == ([*(*(&v11 + 1) + 8 * v8) liveFormat] != 0))
        {
          return 0;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)inputs countByEnumeratingWithState:&v11 objects:v10 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (CMTime)_earliestAllowedStillHostPTS
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    v4 = [v3[16].epoch objectAtIndexedSubscript:0];
    v5 = MEMORY[0x1E6960C88];
    *&a2->value = *MEMORY[0x1E6960C88];
    a2->epoch = *(v5 + 16);
    result = [v4 count];
    if (result >= v3[30].value)
    {
      -[BWIrisStagingNode _hostPTSForSampleBuffer:]([v4 objectAtIndexedSubscript:1], v3, a2);
      CMTimeMake(&rhs, a2->timescale / 1000, a2->timescale);
      v6 = *a2;
      return CMTimeAdd(a2, &v6, &rhs);
    }
  }

  else
  {
    a2->value = 0;
    *&a2->timescale = 0;
    a2->epoch = 0;
  }

  return result;
}

- (CMTime)_emitSampleBuffer:(uint64_t)buffer forInputIndex:
{
  if (result)
  {
    v5 = result;
    v39 = [-[CMTime outputs](result "outputs")];
    sampleBufferOut = 0;
    value = v5[25].value;
    if (!value)
    {
      BWCMSampleBufferCreateCopyIncludingMetadata(a2, &sampleBufferOut);
      goto LABEL_24;
    }

    [value enqueueSampleBuffer:a2 forMediaTypeWithIndex:buffer];
    if (!buffer)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v7 = *&v5[19].timescale;
      v8 = [v7 countByEnumeratingWithState:&v58 objects:v57 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v59;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v59 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v58 + 1) + 8 * i);
            if (v12)
            {
              objc_msgSend_audioOffset(v12);
              if ((v55 & 0x100000000) != 0)
              {
                continue;
              }

              CMSampleBufferGetPresentationTimeStamp(&time1, a2);
              objc_msgSend_stillImageCaptureTime(v12);
            }

            else
            {
              v54 = 0;
              v55 = 0;
              v56 = 0;
              CMSampleBufferGetPresentationTimeStamp(&time1, a2);
              memset(&time2, 0, sizeof(time2));
            }

            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              memset(&time1, 0, sizeof(time1));
              v13 = v5[25].value;
              if (v12)
              {
                objc_msgSend_stillImageCaptureTime(v12);
                if (!v13)
                {
                  continue;
                }
              }

              else
              {
                v50 = 0;
                v51 = 0;
                v52 = 0;
                if (!v13)
                {
                  continue;
                }
              }

              objc_msgSend_audioOffsetForOriginalStillImageTime_(v13);
              if (time1.flags)
              {
                time2 = time1;
                [v12 setAudioOffset:&time2];
              }
            }
          }

          v9 = [v7 countByEnumeratingWithState:&v58 objects:v57 count:16];
        }

        while (v9);
      }
    }

LABEL_24:
    key = *off_1E798A3C8;
    v37 = *off_1E798A8F8;
    v35 = *off_1E798A908;
    v36 = *MEMORY[0x1E695E4D0];
    v14 = sampleBufferOut;
    v15 = v39;
    while (1)
    {
      v16 = v5[25].value;
      if (v16 || v14 == 0)
      {
        v14 = [v16 dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:buffer];
        sampleBufferOut = v14;
        if (!v14)
        {
          break;
        }
      }

      if (!buffer)
      {
        time1.value = 0;
        *&time1.timescale = &time1;
        time1.epoch = 0x3810000000;
        v48 = &unk_1AD138BA7;
        memset(&v49, 0, sizeof(v49));
        CMSampleBufferGetPresentationTimeStamp(&v49, v14);
        v18 = *&v5[19].timescale;
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = __53__BWIrisStagingNode__emitSampleBuffer_forInputIndex___block_invoke;
        v46[3] = &unk_1E7991B20;
        v46[4] = v5;
        v46[5] = &time1;
        v46[6] = sampleBufferOut;
        [v18 enumerateObjectsUsingBlock:v46];
        v19 = MEMORY[0x1E696AD98];
        HostTimeClock = CMClockGetHostTimeClock();
        CMClockGetTime(&time2, HostTimeClock);
        CMTimeConvertScale(&v45, &time2, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
        v21 = [v19 numberWithLongLong:v45.value];
        CMSetAttachment(sampleBufferOut, @"IrisStagingNodeEmissionTimeStamp", v21, 1u);
        AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBufferOut, 0x1F21AAA50);
        if (AttachedMedia || (AttachedMedia = BWSampleBufferGetAttachedMedia(sampleBufferOut, @"SynchronizedSlaveFrame")) != 0)
        {
          CMSetAttachment(AttachedMedia, @"IrisStagingNodeEmissionTimeStamp", v21, 1u);
        }

        if (v5[34].value && BYTE5(v5[33].epoch) == 1)
        {
          if (BYTE2(v5[34].epoch) == 1)
          {
            if ([+[FigCaptureSmartStyle createFromDictionary:](FigCaptureSmartStyle createFromDictionary:{objc_msgSend(CMGetAttachment(sampleBufferOut, key, 0), "objectForKeyedSubscript:", v37)), "isIdentity"}])
            {
              v23 = *&v5[34].timescale;
              if (v23)
              {
                CMSetAttachment(sampleBufferOut, @"SubjectRelightingResult", v23, 1u);
              }

              v24 = BWSampleBufferGetAttachedMedia(sampleBufferOut, 0x1F21AB070);
              v25 = CMGetAttachment(v24, key, 0);
              if (!v25)
              {
                v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
                CMSetAttachment(v24, key, v25, 1u);
              }

              [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", *&v5[34].timescale != 0), v35}];
            }
          }

          else
          {
            v26 = *&v5[34].timescale;
            if (v26)
            {
              CMSetAttachment(sampleBufferOut, @"SubjectRelightingResult", v26, 1u);
            }
          }
        }

        if (BYTE3(v5[34].epoch) == 1)
        {
          if ([objc_msgSend(objc_msgSend(*&v5[19].timescale "firstObject")])
          {
            BWSynchronizeSmartStyleAttachedMediaPTS(sampleBufferOut);
          }

          else
          {
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v27 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(0, 1);
            v28 = [v27 countByEnumeratingWithState:&v41 objects:v40 count:16];
            if (v28)
            {
              v29 = *v42;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v42 != v29)
                  {
                    objc_enumerationMutation(v27);
                  }

                  BWSampleBufferRemoveAttachedMedia(sampleBufferOut, *(*(&v41 + 1) + 8 * j));
                }

                v28 = [v27 countByEnumeratingWithState:&v41 objects:v40 count:16];
              }

              while (v28);
            }
          }
        }

        _Block_object_dispose(&time1, 8);
        v14 = sampleBufferOut;
        if (BYTE2(v5[34].epoch) == 1)
        {
          v31 = CMGetAttachment(sampleBufferOut, key, 0);
          v32 = [v31 objectForKeyedSubscript:v37];
          v14 = sampleBufferOut;
          v15 = v39;
          if (!v32)
          {
            CMSetAttachment(sampleBufferOut, @"SampleDataToBeDropped", v36, 1u);
            [v31 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21AA550];
            v14 = sampleBufferOut;
          }
        }

        else
        {
          v15 = v39;
        }
      }

      [v15 emitSampleBuffer:v14];
      v14 = 0;
      if (sampleBufferOut)
      {
        CFRelease(sampleBufferOut);
        v14 = 0;
        sampleBufferOut = 0;
      }
    }

    result = [v5[17].value setObject:a2 atIndexedSubscript:buffer];
    v33 = v5[20].epoch + 24 * buffer;
    if ((*(v33 + 12) & 1) == 0)
    {
      result = CMSampleBufferGetPresentationTimeStamp(&time1, a2);
      v34 = *&time1.value;
      *(v33 + 16) = time1.epoch;
      *v33 = v34;
    }
  }

  return result;
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  if ([input index] != *&self->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching)
  {
    v7 = -[NSArray objectAtIndexedSubscript:](-[BWNode outputs](self, "outputs"), "objectAtIndexedSubscript:", [input index]);

    [v7 emitNodeError:error];
  }
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (![input index])
  {
    memset(&v9[1], 0, sizeof(CMTime));
    if (sample)
    {
      objc_msgSend_pts(sample);
    }

    v6 = *MEMORY[0x1E695E480];
    v9[0] = v9[1];
    v7 = CMTimeCopyAsDictionary(v9, v6);
    if (v7)
    {
      v8 = v7;
      [(NSMutableArray *)self->_lastEmittedBuffers addObject:v7];
      CFRelease(v8);
    }
  }
}

- (int)openValveWithIrisRequest:(id)request
{
  FigSimpleMutexLock();
  if (LOBYTE(self->_droppedFramePTSs) == 1)
  {
    if (dword_1ED844290)
    {
      LODWORD(rhs.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

LABEL_10:
    if (self->_droppedFramePTSs)
    {
      v7 = 0;
    }

    else
    {
      LODWORD(rhs.value) = 0;
      LOBYTE(type.value) = 0;
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      value = rhs.value;
      if (os_log_type_enabled(v8, type.value))
      {
        v10 = value;
      }

      else
      {
        v10 = value & 0xFFFFFFFE;
      }

      if (v10)
      {
        LODWORD(time2.value) = 136315394;
        *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = self;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v7 = -16959;
    }

    goto LABEL_78;
  }

  v77 = *MEMORY[0x1E6960C70];
  *&v105.value = *MEMORY[0x1E6960C70];
  v6 = *(MEMORY[0x1E6960C70] + 16);
  v105.epoch = v6;
  if (self->_stagingSuspended)
  {
    [request isMomentCaptureMovieRecording];
    _resumeStaging = [(BWIrisStagingNode *)self _resumeStaging];
    self->_flushAndSuspendPending = 1;
    if (request)
    {
      objc_msgSend_stillImageCaptureHostTime(request, _resumeStaging);
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v105 = time1;
  }

  else
  {
    [(BWIrisStagingNode *)self _earliestAllowedStillHostPTS];
  }

  if ([request isMomentCaptureMovieRecording])
  {
    time1 = v105;
    time2 = **&MEMORY[0x1E6960C88];
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (request)
      {
        objc_msgSend_stillImageCaptureHostTime(request);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      time2 = v105;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        memset(&rhs, 0, sizeof(rhs));
        HostTimeClock = CMClockGetHostTimeClock();
        firstEmittedPTSArray = self->_firstEmittedPTSArray;
        time1 = v105;
        CMSyncConvertTime(&rhs, &time1, HostTimeClock, firstEmittedPTSArray);
        LODWORD(type.value) = 0;
        LOBYTE(v102.value) = 0;
        v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v14 = type.value;
        if (os_log_type_enabled(v13, v102.value))
        {
          v15 = v14;
        }

        else
        {
          v15 = v14 & 0xFFFFFFFE;
        }

        if (v15)
        {
          *&v16 = COERCE_DOUBLE([objc_msgSend(request "settings")]);
          if (request)
          {
            objc_msgSend_stillImageCaptureHostTime(request);
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          Seconds = CMTimeGetSeconds(&time1);
          time1 = v105;
          v19 = CMTimeGetSeconds(&time1);
          if (request)
          {
            objc_msgSend_stillImageCaptureTime(request);
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          v20 = CMTimeGetSeconds(&time1);
          time1 = rhs;
          v21 = CMTimeGetSeconds(&time1);
          time1 = v105;
          v22 = CMTimeGetSeconds(&time1);
          if (request)
          {
            objc_msgSend_stillImageCaptureHostTime(request);
          }

          else
          {
            memset(&time1, 0, sizeof(time1));
          }

          v23 = CMTimeGetSeconds(&time1);
          LODWORD(time2.value) = 136316930;
          *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = self;
          HIWORD(time2.epoch) = 2048;
          v80 = *&v16;
          v81 = 2048;
          v82 = Seconds;
          v83 = 2048;
          v84 = v19;
          v85 = 2048;
          v86 = v20;
          v87 = 2048;
          v88 = v21;
          v89 = 2048;
          v90 = v22 - v23;
          LODWORD(v73) = 82;
          p_time2 = &time2;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        time1 = v105;
        time2 = rhs;
        [request setMomentCaptureRecordingStillImageCaptureHostTimeOverride:&time1 stillImageCaptureTimeOverride:&time2];
      }
    }
  }

  if ([request isMomentCaptureMovieRecording])
  {
    goto LABEL_64;
  }

  if (request)
  {
    objc_msgSend_stillImageCaptureHostTime(request);
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  time2 = v105;
  if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
  {
LABEL_64:
    memset(&v97, 0, sizeof(v97));
    CMSampleBufferGetPresentationTimeStamp(&v97, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "lastObject"}]);
    if (dword_1ED844290)
    {
      LODWORD(type.value) = 0;
      LOBYTE(v102.value) = 0;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v33 = type.value;
      if (os_log_type_enabled(v32, v102.value))
      {
        v34 = v33;
      }

      else
      {
        v34 = v33 & 0xFFFFFFFE;
      }

      if (v34)
      {
        *&v76 = COERCE_DOUBLE([objc_msgSend(request "settings")]);
        isMomentCaptureMovieRecording = [request isMomentCaptureMovieRecording];
        v42 = @"Live Photo";
        if (isMomentCaptureMovieRecording)
        {
          v42 = @"Moment Capture Movie Recording";
        }

        v75 = v42;
        if (request)
        {
          objc_msgSend_stillImageCaptureTime(request);
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v50 = CMTimeGetSeconds(&time1);
        mach_absolute_time();
        v51 = FigHostTimeToNanoseconds();
        if (request)
        {
          objc_msgSend_stillImageCaptureHostTime(request);
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        v52 = v51 / 1000000000.0;
        v53 = CMTimeGetSeconds(&time1);
        CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "firstObject"}]);
        v54 = CMTimeGetSeconds(&time1);
        time1 = v97;
        v55 = CMTimeGetSeconds(&time1);
        v56 = 0.0;
        v57 = 0.0;
        if ([(BWIrisStagingNode *)self _emittingInputsCount]!= 1)
        {
          CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{1), "firstObject"}]);
          v57 = CMTimeGetSeconds(&time1);
        }

        v58 = v52 - v53;
        if ([(BWIrisStagingNode *)self _emittingInputsCount]!= 1)
        {
          CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{1), "lastObject"}]);
          v56 = CMTimeGetSeconds(&time1);
        }

        v59 = v58 * 1000.0;
        if (request)
        {
          objc_msgSend_stillImageCaptureHostTime(request);
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        rhs = v105;
        CMTimeSubtract(&time1, &time2, &rhs);
        v60 = CMTimeGetSeconds(&time1);
        LODWORD(time2.value) = 136317698;
        *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
        LOWORD(time2.flags) = 2048;
        *(&time2.flags + 2) = self;
        HIWORD(time2.epoch) = 2048;
        v80 = *&v76;
        v81 = 2112;
        v82 = *&v75;
        v83 = 2048;
        v84 = v50;
        v85 = 2048;
        v86 = v59;
        v87 = 2048;
        v88 = v54;
        v89 = 2048;
        v90 = v55;
        v91 = 2048;
        v92 = v57;
        v93 = 2048;
        v94 = v56;
        v95 = 2048;
        v96 = v60 * 1000.0;
        LODWORD(v74) = 112;
        v72 = &time2;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    LOBYTE(self->_droppedFramePTSs) = 1;
    BYTE3(self->_droppedFramePTSs) = 0;
    BYTE4(self->_droppedFramePTSs) = [request isMomentCaptureMovieRecording];
    self->_valveDiscontinuitySearchLimit.epoch = [objc_msgSend(request "settings")];
    *&self->_frameGovernorReferenceTime.epoch = v77;
    *&self->_readyToEmitPTS.timescale = v6;
    *&self->_readyToEmitPTS.epoch = v77;
    *&self->_lastProcessedVideoPTS.timescale = v6;
    *&self->_lastProcessedVideoPTS.epoch = v77;
    *&self->_masterMovieStartPTS.timescale = v6;
    *&self->_trimmer = v77;
    *&self->_firstTrimStartPTS.timescale = v6;
    LODWORD(self->_irisRequestsSoonToBeEmitted) = 0;
    v61 = objc_alloc_init(BWStats);
    self->_overallVideoFrameReceptionStats = v61;
    [(BWStats *)v61 setMultiplier:1000.0];
    [(BWStats *)self->_overallVideoFrameReceptionStats setUnitDesignator:@"ms"];
    if ([request isMomentCaptureMovieRecording])
    {
      self->_sequenceAdjusterBackingStore = 0;
    }

    else
    {
      motionDataPreserver = self->_motionDataPreserver;
      self->_sequenceAdjusterBackingStore = motionDataPreserver;
      if (motionDataPreserver)
      {
        time2 = self->_targetFrameDuration;
        CMTimeMultiply(&time1, &time2, 5);
        CMTimeMake(&time2, 5, 1000);
        type = self->_targetFrameDuration;
        CMTimeAdd(&rhs, &type, &time2);
        CMTimeAdd(&time2, &time1, &rhs);
        rhs = v97;
        CMTimeAdd(&time1, &rhs, &time2);
        *&self->_valveOpen = time1;
LABEL_112:

        self->_masterMovieURL = 0;
        if ([request isMomentCaptureMovieRecording])
        {
          self->_temporaryMovieDirectoryURL = [objc_msgSend(request "settings")];
          self->_masterMovieURL = [objc_msgSend(request "settings")];
        }

        else
        {
          if (self->_masterMovieStartPTS.epoch)
          {
            v64 = [self->_masterMovieStartPTS.epoch URLByAppendingPathComponent:objc_msgSend(MEMORY[0x1E696AEC0] isDirectory:{"stringWithFormat:", @"master%lld.mov", objc_msgSend(objc_msgSend(request, "settings"), "settingsID")), 0}];
          }

          else
          {
            v63 = [objc_msgSend(request "settings")];
            v64 = [objc_msgSend(v63 "URLByDeletingLastPathComponent")];
          }

          v65 = v64;
          self->_temporaryMovieDirectoryURL = v65;
          [objc_msgSend(request "settings")];
          if ([objc_msgSend(request "settings")])
          {
            v66 = isn_addVariantToURL(self->_temporaryMovieDirectoryURL);
            self->_masterMovieURL = v66;
            [objc_msgSend(request "settings")];
          }
        }

        p_beginIrisMovieCaptureTime = &self->_beginIrisMovieCaptureTime;
        if (self->_beginIrisMovieCaptureTime.flags)
        {
          if (!request)
          {
            goto LABEL_123;
          }

          objc_msgSend_beginTrimMasterPTS(request);
          if ((v78 & 1) == 0 || (objc_msgSend_beginTrimMasterPTS(request), *&time2.value = *&p_beginIrisMovieCaptureTime->value, time2.epoch = self->_beginIrisMovieCaptureTime.epoch, (CMTimeCompare(&time2, &time1) & 0x80000000) == 0))
          {
LABEL_127:
            p_endIrisMovieCaptureTime = &self->_endIrisMovieCaptureTime;
            objc_msgSend_stillImageCaptureTime(request);
            goto LABEL_128;
          }
        }

        else if (!request)
        {
          p_beginIrisMovieCaptureTime->value = 0;
          *&self->_beginIrisMovieCaptureTime.timescale = 0;
          self->_beginIrisMovieCaptureTime.epoch = 0;
LABEL_123:
          p_endIrisMovieCaptureTime = &self->_endIrisMovieCaptureTime;
          memset(&time1, 0, sizeof(time1));
LABEL_128:
          v69 = *&p_endIrisMovieCaptureTime->value;
          time2.epoch = p_endIrisMovieCaptureTime->epoch;
          *&time2.value = v69;
          if (CMTimeCompare(&time2, &time1) <= 0)
          {
            *&p_endIrisMovieCaptureTime->value = v77;
            p_endIrisMovieCaptureTime->epoch = v6;
          }

          [BWIrisStagingNode _enqueueIrisRequest:?];
          goto LABEL_10;
        }

        objc_msgSend_beginTrimMasterPTS(request);
        *&p_beginIrisMovieCaptureTime->value = *&time1.value;
        self->_beginIrisMovieCaptureTime.epoch = time1.epoch;
        goto LABEL_127;
      }
    }

    *&self->_valveOpen = v77;
    *&self->_valveDiscontinuitySearchLimit.timescale = v6;
    goto LABEL_112;
  }

  memset(&rhs, 0, sizeof(rhs));
  v24 = CMClockGetHostTimeClock();
  CMClockGetTime(&rhs, v24);
  memset(&type, 0, sizeof(type));
  if (request)
  {
    objc_msgSend_stillImageCaptureHostTime(request);
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  time2 = rhs;
  CMTimeSubtract(&type, &time2, &time1);
  memset(&v102, 0, sizeof(v102));
  CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "lastObject"}]);
  time2 = rhs;
  CMTimeSubtract(&v102, &time2, &time1);
  memset(&v101, 0, sizeof(v101));
  time1 = rhs;
  time2 = *(&self->_flushAndSuspendPending + 3);
  CMTimeSubtract(&v101, &time1, &time2);
  memset(&v100, 0, sizeof(v100));
  CMTimeMake(&v100, 500, 1000);
  if ((v101.flags & 1) != 0 && (time1 = v101, time2 = v100, CMTimeCompare(&time1, &time2) < 0))
  {
    v99 = 0;
    v98 = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v99;
    if (os_log_type_enabled(v25, v98))
    {
      v27 = v26;
    }

    else
    {
      v27 = v26 & 0xFFFFFFFE;
    }

    if (v27)
    {
      time1 = v101;
      v28 = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136315650;
      *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = self;
      HIWORD(time2.epoch) = 2048;
      v80 = v28;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = -15544;
  }

  else
  {
    time1 = type;
    time2 = v102;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      if (v102.flags)
      {
        v99 = 0;
        v98 = OS_LOG_TYPE_DEFAULT;
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v30 = v99;
        if (os_log_type_enabled(v29, v98))
        {
          v31 = v30;
        }

        else
        {
          v31 = v30 & 0xFFFFFFFE;
        }

        if (v31)
        {
          LODWORD(time2.value) = 136315394;
          *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
          LOWORD(time2.flags) = 2048;
          *(&time2.flags + 2) = self;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v7 = -16959;
      }

      else
      {
        v7 = -16958;
      }
    }

    else
    {
      v7 = -16955;
    }
  }

  if (dword_1ED844290)
  {
    v99 = 0;
    v98 = OS_LOG_TYPE_DEFAULT;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v36 = v99;
    if (os_log_type_enabled(v35, v98))
    {
      v37 = v36;
    }

    else
    {
      v37 = v36 & 0xFFFFFFFE;
    }

    if (v37)
    {
      *&v40 = COERCE_DOUBLE([objc_msgSend(request "settings")]);
      if (request)
      {
        objc_msgSend_stillImageCaptureHostTime(request);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v43 = CMTimeGetSeconds(&time1);
      time1 = v105;
      v44 = CMTimeGetSeconds(&time1);
      CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "firstObject"}]);
      v45 = CMTimeGetSeconds(&time1);
      CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{0), "lastObject"}]);
      v46 = CMTimeGetSeconds(&time1);
      v47 = 0.0;
      v48 = 0.0;
      if ([(BWIrisStagingNode *)self _emittingInputsCount]!= 1)
      {
        CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{1), "firstObject"}]);
        v48 = CMTimeGetSeconds(&time1);
      }

      if ([(BWIrisStagingNode *)self _emittingInputsCount]!= 1)
      {
        CMSampleBufferGetPresentationTimeStamp(&time1, [-[NSURL objectAtIndexedSubscript:](self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:{1), "lastObject"}]);
        v47 = CMTimeGetSeconds(&time1);
      }

      mach_absolute_time();
      v49 = FigHostTimeToNanoseconds() / 1000000000.0;
      if (request)
      {
        objc_msgSend_stillImageCaptureHostTime(request);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v70 = CMTimeGetSeconds(&time1);
      LODWORD(time2.value) = 136317698;
      *(&time2.value + 4) = "[BWIrisStagingNode openValveWithIrisRequest:]";
      LOWORD(time2.flags) = 2048;
      *(&time2.flags + 2) = self;
      HIWORD(time2.epoch) = 2048;
      v80 = *&v40;
      v81 = 2048;
      v82 = v43;
      v83 = 2048;
      v84 = v44;
      v85 = 2048;
      v86 = v45;
      v87 = 2048;
      v88 = v46;
      v89 = 2048;
      v90 = v48;
      v91 = 2048;
      v92 = v47;
      v93 = 2048;
      v94 = (v49 - v70) * 1000.0;
      v95 = 1024;
      LODWORD(v96) = v7;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_78:
  droppedFramePTSs_low = LOBYTE(self->_droppedFramePTSs);
  FigSimpleMutexUnlock();
  if (droppedFramePTSs_low)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

- (void)closeValve
{
  FigSimpleMutexLock();
  if (self->_droppedFramePTSs)
  {
    if (dword_1ED844290)
    {
      v34 = 0;
      v33 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    overallVideoFrameReceptionStats = self->_overallVideoFrameReceptionStats;
    if (overallVideoFrameReceptionStats)
    {
      [(BWStats *)overallVideoFrameReceptionStats average];
      v7 = v6;
      [(BWStats *)self->_overallVideoFrameReceptionStats multiplier];
      if (v8 > 0.0)
      {
        [(BWStats *)self->_overallVideoFrameReceptionStats multiplier];
        v7 = v7 / v9;
      }

      if (dword_1ED844290)
      {
        v34 = 0;
        v33 = OS_LOG_TYPE_DEFAULT;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v11 = v34;
        if (os_log_type_enabled(v10, v33))
        {
          v12 = v11;
        }

        else
        {
          v12 = v11 & 0xFFFFFFFE;
        }

        if (v12)
        {
          v13 = [(BWStats *)self->_overallVideoFrameReceptionStats description];
          v14 = 0.0;
          v25 = 136315906;
          v26 = "[BWIrisStagingNode closeValve]";
          v27 = 2048;
          selfCopy = self;
          v29 = 2112;
          v30 = v13;
          if (v7 > 0.0)
          {
            v14 = 1.0 / v7;
          }

          v31 = 2048;
          v32 = v14;
          LODWORD(v23) = 42;
          v22 = &v25;
          _os_log_send_and_compose_impl();
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      self->_overallVideoFrameReceptionStats = 0;
    }

    _emittingInputsCount = [(BWIrisStagingNode *)self _emittingInputsCount];
    if (_emittingInputsCount)
    {
      v16 = _emittingInputsCount;
      v17 = 0;
      v18 = 0;
      v24 = *MEMORY[0x1E6960C70];
      v19 = *(MEMORY[0x1E6960C70] + 16);
      do
      {
        -[NSMutableArray setObject:atIndexedSubscript:](self->_stagingQueues, "setObject:atIndexedSubscript:", [MEMORY[0x1E695DFB0] null], v18);
        v20 = self->_stateMutex + v17;
        *v20 = v24;
        *(v20 + 2) = v19;
        v18 = (v18 + 1);
        v17 += 24;
      }

      while (v16 != v18);
    }

    LOBYTE(self->_droppedFramePTSs) = 0;
    v21 = MEMORY[0x1E6960C70];
    *&self->_valveOpen = *MEMORY[0x1E6960C70];
    *&self->_valveDiscontinuitySearchLimit.timescale = *(v21 + 16);
    BYTE1(self->_droppedFramePTSs) = 0;
    BYTE2(self->_droppedFramePTSs) = 0;
    BYTE5(self->_limitedGMErrorLogger) = 0;

    self->_subjectRelightingCalculator = 0;
    [(BWIrisSequenceAdjuster *)self->_sequenceAdjusterBackingStore reset];
    self->_sequenceAdjusterBackingStore = 0;
    if ([self->_valveOpenerSettingsID count])
    {
      [*&self->_visMotionMetadataPreloadingMode stagingNode:self valveClosedWithPendingIrisRequests:self->_valveOpenerSettingsID];
      [self->_valveOpenerSettingsID removeAllObjects];
    }

    if (self->_flushAndSuspendPending)
    {
      [(BWIrisStagingNode *)self _flushAndSuspendStaging];
    }
  }

  else if (dword_1ED844290)
  {
    v34 = 0;
    v33 = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexUnlock();
}

- (int)enqueueIrisRequest:(id)request
{
  FigSimpleMutexLock();
  if ([objc_msgSend(request "settings")] < self->_valveDiscontinuitySearchLimit.epoch)
  {
    if (dword_1ED844290)
    {
      v57 = 0;
      v56 = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = -16954;
    goto LABEL_11;
  }

  if (LOBYTE(self->_droppedFramePTSs) != 1 || (BYTE2(self->_droppedFramePTSs) & 1) != 0 || (BYTE1(self->_droppedFramePTSs) & 1) != 0)
  {
    if (dword_1ED844290)
    {
      v57 = 0;
      v56 = OS_LOG_TYPE_DEFAULT;
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v7 = -16953;
    goto LABEL_11;
  }

  if (dword_1ED844290)
  {
    v57 = 0;
    v56 = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  _momentCaptureMovieRecordingInProgress = [(BWIrisStagingNode *)self _momentCaptureMovieRecordingInProgress];
  FigSimpleMutexCheckIsLockedOnThisThread();
  masterMovieURL = self->_masterMovieURL;
  firstObject = [self->_valveOpenerSettingsID firstObject];
  semanticStyle = [firstObject semanticStyle];
  semanticStyle2 = [request semanticStyle];
  v14 = semanticStyle2;
  if (semanticStyle2 == semanticStyle)
  {
    v15 = 0;
  }

  else
  {
    v15 = [semanticStyle2 isEqual:semanticStyle] ^ 1;
  }

  settings = [objc_msgSend(firstObject settings];
  v16 = [objc_msgSend(request "settings")];
  v17 = BYTE3(self->_subjectRelightingResult);
  if (([request isMomentCaptureMovieRecording] & 1) != 0 || _momentCaptureMovieRecordingInProgress != objc_msgSend(request, "isMomentCaptureMovieRecording") || objc_msgSend(request, "spatialOverCaptureExpected") && !masterMovieURL)
  {
    if (!dword_1ED844290)
    {
LABEL_40:
      v7 = -16957;
      goto LABEL_11;
    }

    v57 = 0;
    v56 = OS_LOG_TYPE_DEFAULT;
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v19 = v57;
    if (os_log_type_enabled(v18, v56))
    {
      v20 = v19;
    }

    else
    {
      v20 = v19 & 0xFFFFFFFE;
    }

    if (v20)
    {
      v40 = [objc_msgSend(request "settings")];
      if ([request isMomentCaptureMovieRecording])
      {
        v21 = 84;
      }

      else
      {
        v21 = 70;
      }

      v38 = v21;
      if (_momentCaptureMovieRecordingInProgress)
      {
        v22 = 84;
      }

      else
      {
        v22 = 70;
      }

      spatialOverCaptureExpected = [request spatialOverCaptureExpected];
      v42 = 136316674;
      v43 = "[BWIrisStagingNode enqueueIrisRequest:]";
      if (spatialOverCaptureExpected)
      {
        v24 = 84;
      }

      else
      {
        v24 = 70;
      }

      v44 = 2048;
      if (masterMovieURL)
      {
        v25 = 84;
      }

      else
      {
        v25 = 70;
      }

      selfCopy3 = self;
      v46 = 2048;
      v47 = v40;
      v48 = 1024;
      v49 = v38;
      v50 = 1024;
      v51 = v22;
      v52 = 1024;
      v53 = v24;
      v54 = 1024;
      *v55 = v25;
      _os_log_send_and_compose_impl();
    }

LABEL_39:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_40;
  }

  if (!v15)
  {
    if ((v17 & (settings ^ v16) & 1) == 0)
    {
      [BWIrisStagingNode _enqueueIrisRequest:?];
      v7 = 0;
      goto LABEL_11;
    }

    if (!dword_1ED844290)
    {
      goto LABEL_40;
    }

    v57 = 0;
    v56 = OS_LOG_TYPE_DEFAULT;
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v32 = v57;
    if (!os_log_type_enabled(v31, v56))
    {
      v32 &= ~1u;
    }

    if (v32)
    {
      v33 = [objc_msgSend(request "settings")];
      v42 = 136316418;
      v43 = "[BWIrisStagingNode enqueueIrisRequest:]";
      if (v16)
      {
        v34 = 84;
      }

      else
      {
        v34 = 70;
      }

      v44 = 2048;
      selfCopy3 = self;
      if (settings)
      {
        v35 = 84;
      }

      else
      {
        v35 = 70;
      }

      v46 = 2048;
      v47 = v33;
      v48 = 1024;
      v49 = v34;
      v50 = 1024;
      v51 = v35;
      v52 = 1024;
      v53 = 70;
      _os_log_send_and_compose_impl();
    }

    goto LABEL_39;
  }

  if (dword_1ED844290)
  {
    v57 = 0;
    v56 = OS_LOG_TYPE_DEFAULT;
    v26 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v27 = v57;
    if (!os_log_type_enabled(v26, v56))
    {
      v27 &= ~1u;
    }

    if (v27)
    {
      v28 = [objc_msgSend(request "settings")];
      v42 = 136316418;
      v43 = "[BWIrisStagingNode enqueueIrisRequest:]";
      if (v14)
      {
        v29 = 84;
      }

      else
      {
        v29 = 70;
      }

      v44 = 2048;
      selfCopy3 = self;
      if (semanticStyle)
      {
        v30 = 84;
      }

      else
      {
        v30 = 70;
      }

      v46 = 2048;
      v47 = v28;
      v48 = 1024;
      v49 = v29;
      v50 = 1024;
      v51 = v30;
      v52 = 1024;
      v53 = 84;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = -15543;
LABEL_11:
  FigSimpleMutexUnlock();
  return v7;
}

- (void)prepareToFinishAllEnqueuedIrisRequestsWithEndTime:(id *)time
{
  FigSimpleMutexLock();
  time1 = *time;
  endIrisMovieCaptureTime = self->_endIrisMovieCaptureTime;
  if (CMTimeCompare(&time1, &endIrisMovieCaptureTime) < 0)
  {
    v5 = *&time->var0;
    self->_endIrisMovieCaptureTime.epoch = time->var3;
    *&self->_endIrisMovieCaptureTime.value = v5;
  }

  BYTE1(self->_droppedFramePTSs) = 1;
  FigSimpleMutexUnlock();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginIrisMovieCaptureTime
{
  FigSimpleMutexLock();
  *retstr = self->_beginIrisMovieCaptureTime;

  return FigSimpleMutexUnlock();
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endIrisMovieCaptureTime
{
  FigSimpleMutexLock();
  *retstr = self->_endIrisMovieCaptureTime;

  return FigSimpleMutexUnlock();
}

- (void)setEndIrisMovieCaptureTime:(id *)time
{
  FigSimpleMutexLock();
  var3 = time->var3;
  *&self->_endIrisMovieCaptureTime.value = *&time->var0;
  self->_endIrisMovieCaptureTime.epoch = var3;
  self->_beginIrisMovieCaptureTime = **&MEMORY[0x1E6960C70];
  [(BWIrisStagingNode *)self _suspendStaging];

  FigSimpleMutexUnlock();
}

- (void)setMomentCaptureMovieRecordingMasterEndTime:(id *)time forRequestWithSettingsID:(int64_t)d
{
  FigSimpleMutexLock();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  valveOpenerSettingsID = self->_valveOpenerSettingsID;
  v8 = [valveOpenerSettingsID countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(valveOpenerSettingsID);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        if ([objc_msgSend(v12 "settings")] == d)
        {
          if (dword_1ED844290)
          {
            v18 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          time = *time;
          [v12 setMomentCaptureMovieRecordingMasterEndTime:{&time, v14, v15}];
          goto LABEL_13;
        }
      }

      v9 = [valveOpenerSettingsID countByEnumeratingWithState:&v20 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  FigSimpleMutexUnlock();
}

- (BOOL)waitUntilReadyToReceiveRequestsWithTimeout:(float)timeout
{
  FigSimpleMutexLock();
  if (BYTE2(self->_emissionMap) == 1)
  {
    FigSimpleMutexUnlock();
    return 1;
  }

  else
  {
    v6 = *&self->_haveSeenFirstAudioSampleBuffer;
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v8 = dispatch_group_create();
      *&self->_haveSeenFirstAudioSampleBuffer = v8;
      v7 = v8;
      dispatch_group_enter(v7);
    }

    FigSimpleMutexUnlock();
    if (v7)
    {
      mach_absolute_time();
      v9 = dispatch_time(0, (timeout * 1000000000.0));
      v5 = dispatch_group_wait(v7, v9) == 0;
      mach_absolute_time();

      if (dword_1ED844290)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

- (void)setTargetFrameDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_targetFrameDuration.value = *&duration->var0;
  self->_targetFrameDuration.epoch = var3;
  [(BWIrisStagingNode *)self _updateRetainedBufferCount];
}

- (void)setMasterClock:(OpaqueCMClock *)clock
{
  firstEmittedPTSArray = self->_firstEmittedPTSArray;
  self->_firstEmittedPTSArray = clock;
  if (clock)
  {
    CFRetain(clock);
  }

  if (firstEmittedPTSArray)
  {

    CFRelease(firstEmittedPTSArray);
  }
}

- (CMTime)_hostPTSForSampleBuffer:(uint64_t)buffer@<X8>
{
  if (result)
  {
    v5 = result;
    v6 = MEMORY[0x1E6960C70];
    *buffer = *MEMORY[0x1E6960C70];
    *(buffer + 16) = *(v6 + 16);
    v7 = CMGetAttachment(target, *off_1E798A420, 0);
    if (v7)
    {

      return CMTimeMakeFromDictionary(buffer, v7);
    }

    else
    {
      memset(&v11, 0, sizeof(v11));
      CMSampleBufferGetPresentationTimeStamp(&v11, target);
      value = v5[21].value;
      HostTimeClock = CMClockGetHostTimeClock();
      v10 = v11;
      return CMSyncConvertTime(buffer, &v10, value, HostTimeClock);
    }
  }

  else
  {
    *buffer = 0;
    *(buffer + 8) = 0;
    *(buffer + 16) = 0;
  }

  return result;
}

- (CMTime)_maxPTSForIrisRequest:(uint64_t)request@<X8>
{
  if (result)
  {
    v5 = result;
    if ([a2 isMomentCaptureMovieRecording])
    {
      if (a2)
      {
        objc_msgSend_stillImageCaptureTime(a2);
        objc_msgSend_momentCaptureMovieRecordingMasterEndTime(a2);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
        memset(&v6, 0, sizeof(v6));
      }

      return CMTimeMaximum(request, &time1, &v6);
    }

    else
    {
      if (a2)
      {
        objc_msgSend_stillImageCaptureTime(a2);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v6 = *(v5 + 128);
      return CMTimeAdd(request, &time1, &v6);
    }
  }

  else
  {
    *request = 0;
    *(request + 8) = 0;
    *(request + 16) = 0;
  }

  return result;
}

opaqueCMSampleBuffer *__45__BWIrisStagingNode__trimQueueForInputIndex___block_invoke(uint64_t a1, opaqueCMSampleBuffer *a2, unint64_t a3)
{
  v6 = [*(a1 + 32) mediaType];
  result = a2;
  if (v6 != 1835365473)
  {
    if (*(a1 + 56) - 1 <= a3)
    {
      return 0;
    }

    result = [*(a1 + 40) objectAtIndexedSubscript:a3 + 1];
  }

  if (!result)
  {
    return result;
  }

  CMSampleBufferGetPresentationTimeStamp(&time1, result);
  v8 = *(a1 + 72);
  if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
  {
    return 0;
  }

  if ([*(*(a1 + 48) + 408) objectAtIndexedSubscript:*(a1 + 64)] == a2)
  {
    [*(*(a1 + 48) + 408) setObject:objc_msgSend(MEMORY[0x1E695DFB0] atIndexedSubscript:{"null"), *(a1 + 64)}];
  }

  return 1;
}

uint64_t __53__BWIrisStagingNode__emitSampleBuffer_forInputIndex___block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  result = [a2 stillImageEncoderKeyFrameEmitted];
  if ((result & 1) == 0)
  {
    memset(&v13, 0, sizeof(v13));
    if (a2)
    {
      objc_msgSend_stillImageCaptureTime(a2);
    }

    result = *(*(a1 + 32) + 600);
    if (result)
    {
      time2 = v13;
      result = objc_msgSend_adjustedTimeForStillImageTime_(result);
      v13 = v12;
    }

    if (v13.flags)
    {
      memset(&v12, 0, sizeof(v12));
      result = CMTimeMake(&v12, v13.timescale / 1000, v13.timescale);
      if ((~v13.flags & 0x11) != 0)
      {
        v8 = *(*(a1 + 40) + 8);
        lhs = v13;
        v9 = v12;
        CMTimeSubtract(&time2, &lhs, &v9);
        lhs = *(v8 + 32);
        result = CMTimeCompare(&lhs, &time2);
        *a4 = result < 0;
        if ((result & 0x80000000) == 0)
        {
          CMSetAttachment(*(a1 + 48), *MEMORY[0x1E69604E0], *MEMORY[0x1E695E4D0], 1u);
          return [a2 setStillImageEncoderKeyFrameEmitted:1];
        }
      }

      else
      {
        *a4 = 1;
      }
    }
  }

  return result;
}

- (unint64_t)_indexOfBufferBeforeOrEqualToPTS:(id *)s inputIndex:(unint64_t)index applyFrameDropsMitigation:(BOOL)mitigation
{
  mitigationCopy = mitigation;
  v8 = [(NSURL *)self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:index];
  v9 = [v8 count];
  if (!v9)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v9;
  v11 = 0;
  v12 = 0;
  v13 = v9 - 1;
  while (1)
  {
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetPresentationTimeStamp(&v21, [v8 objectAtIndexedSubscript:v11]);
    time1 = v21;
    time2 = *s;
    if (CMTimeCompare(&time1, &time2) > 0)
    {
      break;
    }

    if (v13 == v11)
    {
      memset(&time1, 0, sizeof(time1));
      time2 = v21;
      CMTimeConvertScale(&time1, &time2, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      memset(&time2, 0, sizeof(time2));
      time = *s;
      CMTimeConvertScale(&time2, &time, 1000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      time = time1;
      targetFrameDuration = time2;
      v12 = CMTimeCompare(&time, &targetFrameDuration) == 0;
    }

    if (++v11 >= v10)
    {
      if (v12)
      {
        return v13;
      }

      else
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }
  }

  if (v11)
  {
    result = v11 - 1;
  }

  else
  {
    result = 0;
  }

  if (v11 && mitigationCopy)
  {
    v15 = [v8 objectAtIndexedSubscript:v11 - 1];
    memset(&v21, 0, sizeof(v21));
    CMSampleBufferGetPresentationTimeStamp(&v21, v15);
    v16 = [v8 objectAtIndexedSubscript:v11];
    memset(&time1, 0, sizeof(time1));
    CMSampleBufferGetPresentationTimeStamp(&time1, v16);
    time = time1;
    targetFrameDuration = v21;
    CMTimeSubtract(&time2, &time, &targetFrameDuration);
    targetFrameDuration = self->_targetFrameDuration;
    CMTimeMultiply(&time, &targetFrameDuration, 3);
    if (CMTimeCompare(&time2, &time) <= 0)
    {
      return v11 - 1;
    }

    else
    {
      return v11;
    }
  }

  return result;
}

- (CMTime)_adjustedStartTimeForTrimmedStartTime:(__int128 *)time@<X2> ensuringAtLeast3FramesBeforeStillTime:(int)stillTime@<W3> ensuringFrameIsAfterTrimmedStartTime:(__int128 *)startTime@<X4> butNotEarlierThanOriginalStartTime:(char *)originalStartTime@<X5> adjustedStartBufferIndexOut:(uint64_t)out@<X8>
{
  if (result)
  {
    v12 = result;
    v13 = MEMORY[0x1E6960C70];
    *out = *MEMORY[0x1E6960C70];
    *(out + 16) = *(v13 + 16);
    v20 = *time;
    v21 = *(time + 2);
    v14 = [(CMTime *)result _indexOfBufferBeforeOrEqualToPTS:&v20 inputIndex:0 applyFrameDropsMitigation:0];
    v20 = *a2;
    v21 = *(a2 + 2);
    v15 = [v12 _indexOfBufferBeforeOrEqualToPTS:&v20 inputIndex:0 applyFrameDropsMitigation:0];
    v20 = *startTime;
    v21 = *(startTime + 2);
    v16 = [v12 _indexOfBufferBeforeOrEqualToPTS:&v20 inputIndex:0 applyFrameDropsMitigation:0];
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [BWIrisStagingNode _adjustedStartTimeForTrimmedStartTime:v16 ensuringAtLeast3FramesBeforeStillTime:? ensuringFrameIsAfterTrimmedStartTime:? butNotEarlierThanOriginalStartTime:? adjustedStartBufferIndexOut:?];
    }

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [BWIrisStagingNode _adjustedStartTimeForTrimmedStartTime:v16 ensuringAtLeast3FramesBeforeStillTime:? ensuringFrameIsAfterTrimmedStartTime:? butNotEarlierThanOriginalStartTime:? adjustedStartBufferIndexOut:?];
    }

    v17 = v16;
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [BWIrisStagingNode _adjustedStartTimeForTrimmedStartTime:v16 ensuringAtLeast3FramesBeforeStillTime:? ensuringFrameIsAfterTrimmedStartTime:? butNotEarlierThanOriginalStartTime:? adjustedStartBufferIndexOut:?];
    }

    else
    {
      if (stillTime && v15 + 1 < [objc_msgSend(v12[50] objectAtIndexedSubscript:{0), "count"}])
      {
        ++v15;
      }

      v18 = (v14 - 3);
      if (v14 - 3 <= v17)
      {
        v18 = v17;
      }

      if (v14 - v15 >= 3)
      {
        v19 = v15;
      }

      else
      {
        v19 = v18;
      }

      result = CMSampleBufferGetPresentationTimeStamp(out, [objc_msgSend(v12[50] objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", v19}]);
      if (originalStartTime)
      {
        *originalStartTime = v19;
      }
    }
  }

  else
  {
    *out = 0;
    *(out + 8) = 0;
    *(out + 16) = 0;
  }

  return result;
}

- (CMTime)_mostRecentCuttingBufferPTSBeforePTS:(unint64_t *)s@<X2> cuttingBufferIndexOut:(uint64_t)out@<X8>
{
  if (result)
  {
    v6 = result;
    v7 = MEMORY[0x1E6960C70];
    *out = *MEMORY[0x1E6960C70];
    *(out + 16) = *(v7 + 16);
    v13 = *a2;
    v14 = *(a2 + 2);
    v8 = [(CMTime *)result _indexOfBufferBeforeOrEqualToPTS:&v13 inputIndex:0 applyFrameDropsMitigation:0];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return [BWIrisStagingNode _mostRecentCuttingBufferPTSBeforePTS:cuttingBufferIndexOut:];
    }

    else
    {
      v9 = v8;
      v10 = [v6[16].epoch objectAtIndexedSubscript:0];
      result = [v10 count];
      if (v9 >= result)
      {
        return [BWIrisStagingNode _mostRecentCuttingBufferPTSBeforePTS:cuttingBufferIndexOut:];
      }

      else if ((v9 & 0x8000000000000000) == 0)
      {
        while (1)
        {
          v11 = [v10 objectAtIndexedSubscript:v9];
          result = [CMGetAttachment(v11 @"BufferRequiresCuttingInLivePhotoMovie"];
          if (result)
          {
            break;
          }

          if (v9-- <= 0)
          {
            return result;
          }
        }

        result = CMSampleBufferGetPresentationTimeStamp(out, v11);
        if (s)
        {
          *s = v9;
        }
      }
    }
  }

  else
  {
    *out = 0;
    *(out + 8) = 0;
    *(out + 16) = 0;
  }

  return result;
}

- (uint64_t)_adjustedStartTimeForSmartStyle:(int)style@<W2> allowSearchBackward:(CMTime *)backward@<X3> searchEndPTS:(uint64_t *)s@<X4> adjustedStartBufferIndexOut:(CMTime *)out@<X8>
{
  if (result)
  {
    v11 = result;
    v12 = [objc_msgSend(*(result + 400) objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", a2}];
    memset(&v33, 0, sizeof(v33));
    CMSampleBufferGetPresentationTimeStamp(&v33, v12);
    *out = v33;
    v13 = MEMORY[0x1E6960C70];
    *&v32.value = *MEMORY[0x1E6960C70];
    v14 = *(MEMORY[0x1E6960C70] + 16);
    v32.epoch = v14;
    *&v31.value = *&v32.value;
    v31.epoch = v14;
    result = [(BWIrisStagingNode *)v11 _sbufHasSmartStyleReversibilityAttachedMedia:v12];
    if ((result & 1) == 0)
    {
      sCopy = s;
      value = *v13;
      v15 = *(v13 + 12);
      timescale = *(v13 + 8);
      v27 = value;
      v28 = timescale;
      if (style)
      {
        v16 = a2;
        while (v16 >= 1)
        {
          v17 = [objc_msgSend(*(v11 + 400) objectAtIndexedSubscript:{0), "objectAtIndexedSubscript:", --v16}];
          if ([(BWIrisStagingNode *)v11 _sbufHasSmartStyleReversibilityAttachedMedia:v17])
          {
            CMSampleBufferGetPresentationTimeStamp(&time, v17);
            value = time.value;
            flags = time.flags;
            timescale = time.timescale;
            epoch = time.epoch;
            goto LABEL_9;
          }
        }
      }

      v16 = 0x7FFFFFFFFFFFFFFFLL;
      epoch = v14;
      flags = v15;
LABEL_9:
      LODWORD(v20) = a2 + 1;
      if ([objc_msgSend(*(v11 + 400) objectAtIndexedSubscript:{0), "count"}] <= v20)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = epoch;
        v20 = v20;
        while (1)
        {
          v21 = [objc_msgSend(*(v11 + 400) objectAtIndexedSubscript:{0, v22), "objectAtIndexedSubscript:", v20}];
          memset(&time, 0, sizeof(time));
          CMSampleBufferGetPresentationTimeStamp(&time, v21);
          time1 = time;
          time2 = *backward;
          if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
          {
LABEL_14:
            v20 = 0x7FFFFFFFFFFFFFFFLL;
            goto LABEL_15;
          }

          if ([(BWIrisStagingNode *)v11 _sbufHasSmartStyleReversibilityAttachedMedia:v21])
          {
            break;
          }

          if ([objc_msgSend(*(v11 + 400) objectAtIndexedSubscript:{0), "count"}] <= ++v20)
          {
            goto LABEL_14;
          }
        }

        CMSampleBufferGetPresentationTimeStamp(&time1, v21);
        v27 = time1.value;
        v15 = time1.flags;
        v28 = time1.timescale;
        v14 = time1.epoch;
LABEL_15:
        epoch = v22;
      }

      if ((flags | v15))
      {
        time1 = v33;
        time2.value = value;
        time2.timescale = timescale;
        time2.flags = flags;
        time2.epoch = epoch;
        CMTimeSubtract(&time, &time1, &time2);
        CMTimeAbsoluteValue(&v32, &time);
        time1.value = v27;
        time1.timescale = v28;
        time1.flags = v15;
        time1.epoch = v14;
        time2 = v33;
        CMTimeSubtract(&time, &time1, &time2);
        CMTimeAbsoluteValue(&v31, &time);
        time = v32;
        time1 = v31;
        result = CMTimeCompare(&time, &time1);
        if (result <= 0)
        {
          out->value = value;
          out->timescale = timescale;
          out->flags = flags;
          out->epoch = epoch;
          if (sCopy)
          {
            *sCopy = v16;
          }
        }

        else
        {
          out->value = v27;
          out->timescale = v28;
          out->flags = v15;
          out->epoch = v14;
          if (sCopy)
          {
            *sCopy = v20;
          }
        }
      }

      else
      {
        return [BWIrisStagingNode _adjustedStartTimeForSmartStyle:allowSearchBackward:searchEndPTS:adjustedStartBufferIndexOut:];
      }
    }
  }

  else
  {
    out->value = 0;
    *&out->timescale = 0;
    out->epoch = 0;
  }

  return result;
}

- (void)_setupDepthMediaConfigurationForInput:(uint64_t)input attachedMediaKey:
{
  if (result)
  {
    v5 = objc_alloc_init(BWNodeInputMediaConfiguration);
    [(BWNodeInputMediaConfiguration *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeInputMediaConfiguration *)v5 setPassthroughMode:1];

    return [a2 setMediaConfiguration:v5 forAttachedMediaKey:input];
  }

  return result;
}

- (void)_setupDepthMediaConfigurationForOutput:(uint64_t)output attachedMediaKey:
{
  if (result)
  {
    v5 = objc_alloc_init(BWNodeOutputMediaConfiguration);
    [(BWNodeOutputMediaConfiguration *)v5 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
    [(BWNodeOutputMediaConfiguration *)v5 setPassthroughMode:1];

    return [a2 setMediaConfiguration:v5 forAttachedMediaKey:output];
  }

  return result;
}

- (void)_setupSmartStyleMediaConfigurationsForInput:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_1_13();
    v4 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, *(v3 + 835));
    OUTLINED_FUNCTION_43();
    result = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v6 = result;
      do
      {
        v7 = 0;
        do
        {
          OUTLINED_FUNCTION_71();
          if (!v8)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v16 + 8 * v7);
          v10 = objc_alloc_init(BWNodeInputMediaConfiguration);
          v11 = objc_alloc_init(BWVideoFormatRequirements);
          [OUTLINED_FUNCTION_28() setFormatRequirements:?];
          [(BWNodeInputMediaConfiguration *)v10 setPassthroughMode:1];
          [a2 setMediaConfiguration:v10 forAttachedMediaKey:v9];
          v7 = v7 + 1;
        }

        while (v6 != v7);
        OUTLINED_FUNCTION_43();
        result = OUTLINED_FUNCTION_37(v12, v13, v14, v15);
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_setupSmartStyleMediaConfigurationsForOutput:(void *)result
{
  if (result)
  {
    OUTLINED_FUNCTION_1_13();
    v4 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, *(v3 + 835));
    OUTLINED_FUNCTION_43();
    result = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v6 = result;
      do
      {
        v7 = 0;
        do
        {
          OUTLINED_FUNCTION_71();
          if (!v8)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(v16 + 8 * v7);
          v10 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          v11 = objc_alloc_init(BWVideoFormatRequirements);
          [OUTLINED_FUNCTION_28() setFormatRequirements:?];
          [(BWNodeOutputMediaConfiguration *)v10 setPassthroughMode:1];
          [a2 setMediaConfiguration:v10 forAttachedMediaKey:v9];
          v7 = v7 + 1;
        }

        while (v6 != v7);
        OUTLINED_FUNCTION_43();
        result = OUTLINED_FUNCTION_37(v12, v13, v14, v15);
        v6 = result;
      }

      while (result);
    }
  }

  return result;
}

- (void)_serviceIrisRequestsForCurrentTime:(int)time emitBuffers:(int)buffers ensureStillImageTimesAreStaged:
{
  if (self)
  {
    [*(self + 464) firstObject];
    v28 = **&MEMORY[0x1E6960C70];
    OUTLINED_FUNCTION_69_2();
    if ((v9 & 1) == 0)
    {
      v10 = v7;
      if (v7)
      {
        v24 = v8;
        if (buffers)
        {
          OUTLINED_FUNCTION_98_2();
          if (![(BWIrisStagingNode *)self _haveEnoughVideoStagedToStartFirstIrisRecording:v10 currentTime:&v27 emitEndTimeOut:&v28])
          {
            OUTLINED_FUNCTION_69_2();
            if ((v12 & 1) == 0)
            {
              return;
            }

LABEL_11:
            OUTLINED_FUNCTION_37_7();
LABEL_14:
            [BWIrisStagingNode _fillInRefMovieStartAndTrimTimesForStillImageTimesBeforeTime:self];
            OUTLINED_FUNCTION_98_2();
            [(BWIrisStagingNode *)self _informDelegateOfSoonToBeEmittedIrisRequestsForTime:v18, v19, v20, v21, v22, v23];
            [(BWIrisStagingNode *)self _tagStillImageVISKeyFrames];
            if (time)
            {
              [(BWIrisStagingNode *)self _processQueuedVideoFrames];
            }

            return;
          }
        }

        [BWIrisStagingNode _fillInStartAndTrimTimesForMasterMovieWithInfo:self];
        objc_msgSend_movieStartTime(v10);
        if (v26)
        {
          objc_msgSend_movieTrimStartTime(v10, v24);
          *(self + 536) = v27;
          objc_msgSend_movieStartTime(v10);
          v25 = v28;
          [(BWIrisStagingNode *)self _prepareToEmitFramesFromStartTime:&v25 throughEndTime:v13, v14, v15, v16, v17];
        }
      }
    }

    OUTLINED_FUNCTION_69_2();
    if ((v11 & 1) == 0)
    {
      return;
    }

    if (!buffers)
    {
      goto LABEL_14;
    }

    goto LABEL_11;
  }
}

- (void)_emitIrisRequest:(uint64_t)request withEndingVideoSampleTimingInfo:
{
  if (!self)
  {
    return;
  }

  OUTLINED_FUNCTION_54();
  FigSimpleMutexCheckIsLockedOnThisThread();
  OUTLINED_FUNCTION_33();
  if (!v7)
  {
    return;
  }

  [v4 setFinalEnqueuedIrisRequest:{objc_msgSend(*(v3 + 464), "lastObject") == v4}];
  [v4 isFinalEnqueuedIrisRequest];
  *v204 = *(v3 + 352);
  [OUTLINED_FUNCTION_4_36() setMasterMovieStartTime:?];
  if ((*(request + 12) & 1) == 0)
  {
    OUTLINED_FUNCTION_88_1(rhs);
    lhs = *(v3 + 152);
    CMTimeSubtract(v204, &lhs, rhs);
    *request = *v204;
    *(request + 16) = *&v204[16];
  }

  *v204 = *(request + 24);
  v8 = [OUTLINED_FUNCTION_4_36() setMovieEndingVideoPTS:?];
  *v204 = *(request + 24);
  *&v204[16] = *(request + 40);
  *rhs = *request;
  *&rhs[16] = *(request + 16);
  v16 = OUTLINED_FUNCTION_83_1(v8, v9, v10, v11, v12, v13, v14, v15, v186, v194, v202.value, *&v202.timescale, v202.epoch, v203, v204[0]);
  CMTimeAdd(v18, v16, v17);
  *v204 = v221;
  [OUTLINED_FUNCTION_4_36() setMovieEndTime:?];
  if (v4)
  {
    objc_msgSend_movieTrimEndTime(v4);
    if (v220)
    {
      goto LABEL_11;
    }

    objc_msgSend_movieEndTime(v4);
  }

  else
  {
    OUTLINED_FUNCTION_81_1();
    v219 = 0;
    v218 = 0uLL;
  }

  *v204 = v218;
  [OUTLINED_FUNCTION_4_36() setMovieTrimEndTime:?];
LABEL_11:
  [OUTLINED_FUNCTION_116_0() setMasterMovieURL:?];
  [OUTLINED_FUNCTION_116_0() setSpatialOverCaptureMasterMovieURL:?];
  if ([v4 isFinalEnqueuedIrisRequest])
  {
    v19 = *(v3 + 480) > 0;
  }

  else
  {
    v19 = 0;
  }

  [v4 setFinalReferenceMovie:v19];
  OUTLINED_FUNCTION_33();
  if (v7 && ([v4 isMomentCaptureMovieRecording] & 1) == 0)
  {
    v205 = 0u;
    memset(v204, 0, sizeof(v204));
    if (v4)
    {
      v32 = OUTLINED_FUNCTION_24_2();
      objc_msgSend_movieTrimStartTime(v32);
      v33 = objc_msgSend_movieTrimEndTime(v4);
      v41 = OUTLINED_FUNCTION_73_0(v33, v34, v35, v36, v37, v38, v39, v40, v187, v195, v202.value, *&v202.timescale, v202.epoch, v203, *v204, *&v204[8], *&v204[16], *&v204[24], v205, *(&v205 + 1), v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, rhs[0]);
      CMTimeRangeFromTimeToTime(v43, v41, v42);
      v31 = *(v3 + 528);
      objc_msgSend_stillImageCaptureTime(v4);
    }

    else
    {
      memset(rhs, 0, 24);
      OUTLINED_FUNCTION_115_1();
      v28 = OUTLINED_FUNCTION_73_0(v20, v21, v22, v23, v24, v25, v26, v27, v187, v195, v202.value, *&v202.timescale, v202.epoch, v203, *v204, *&v204[8], *&v204[16], *&v204[24], v205, *(&v205 + 1), v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, rhs[0]);
      CMTimeRangeFromTimeToTime(v30, v28, v29);
      v31 = *(v3 + 528);
      OUTLINED_FUNCTION_115_1();
    }

    *rhs = *v204;
    *&rhs[16] = *&v204[16];
    v217 = v205;
    [v31 computeVitalityScoreForStillImageHostPTS:&lhs movieRange:rhs];
    [v4 setVitalityScore:?];
    [v4 setVitalityScoringVersion:{objc_msgSend(*(v3 + 528), "vitalityScoringVersion")}];
    [v4 setVitalityScoreValid:{objc_msgSend(v4, "vitalityScoringVersion") != 0}];
  }

  if ([v4 isFinalEnqueuedIrisRequest])
  {
    if (v4)
    {
      v52 = OUTLINED_FUNCTION_58_6();
      objc_msgSend_movieEndingVideoPTS(v52);
      v53 = OUTLINED_FUNCTION_24_2();
      v44 = objc_msgSend_stillImageCaptureTime(v53);
    }

    else
    {
      OUTLINED_FUNCTION_21_11();
    }

    v54 = OUTLINED_FUNCTION_83_1(v44, v45, v46, v47, v48, v49, v50, v51, v187, v195, v202.value, *&v202.timescale, v202.epoch, v203, v204[0]);
    v56 = CMTimeCompare(v54, v55);
    if (v56 <= 0)
    {
      if (dword_1ED844290)
      {
        v64 = OUTLINED_FUNCTION_12_23(v56, v57, v58, v59, v60, v61, v62, v63, v187, v195, v202.value);
        OUTLINED_FUNCTION_32_6(v64, v65, v66, v67, v68, v69, v70, v71, v188, v196, v202.value);
        OUTLINED_FUNCTION_46();
        if (v5)
        {
          v72 = [v4 description];
          *rhs = 136315394;
          OUTLINED_FUNCTION_10_20(v72, "[BWIrisStagingNode _emitIrisRequest:withEndingVideoSampleTimingInfo:]");
          OUTLINED_FUNCTION_11_0();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_13_0(v73, v74, v75, v76, v77);
      }

      [*(v3 + 600) reset];
      *(v3 + 600) = 0;
    }
  }

  if (*(v3 + 600))
  {
    if (v4)
    {
      v114 = OUTLINED_FUNCTION_58_6();
      objc_msgSend_movieEndTime(v114);
      v115 = OUTLINED_FUNCTION_24_2();
      v86 = objc_msgSend_stillImageCaptureTime(v115);
    }

    else
    {
      OUTLINED_FUNCTION_21_11();
    }

    v116 = OUTLINED_FUNCTION_83_1(v86, v87, v88, v89, v90, v91, v92, v93, v187, v195, v202.value, *&v202.timescale, v202.epoch, v203, v204[0]);
    v118 = CMTimeCompare(v116, v117);
    if ((v118 & 0x80000000) != 0 && dword_1ED844290)
    {
      v126 = OUTLINED_FUNCTION_12_23(v118, v119, v120, v121, v122, v123, v124, v125, v191, v199, v202.value);
      OUTLINED_FUNCTION_32_6(v126, v127, v128, v129, v130, v131, v132, v133, v192, v200, v202.value);
      OUTLINED_FUNCTION_46();
      if (v5)
      {
        v134 = [v4 description];
        *rhs = 136315394;
        *&rhs[4] = "[BWIrisStagingNode _emitIrisRequest:withEndingVideoSampleTimingInfo:]";
        *&rhs[12] = 2112;
        *&rhs[14] = v134;
        LODWORD(v199) = 22;
        v191 = rhs;
        OUTLINED_FUNCTION_11_0();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0(v135, v136, v137, v138, v139);
    }

    [OUTLINED_FUNCTION_123(600) adjustMovieInfoTimes:?];
    if (v4)
    {
      v148 = OUTLINED_FUNCTION_58_6();
      objc_msgSend_movieEndTime(v148);
      v149 = OUTLINED_FUNCTION_24_2();
      v140 = objc_msgSend_stillImageCaptureTime(v149);
    }

    else
    {
      OUTLINED_FUNCTION_21_11();
    }

    v150 = OUTLINED_FUNCTION_83_1(v140, v141, v142, v143, v144, v145, v146, v147, v191, v199, v202.value, *&v202.timescale, v202.epoch, v203, v204[0]);
    v152 = CMTimeCompare(v150, v151);
    if ((v152 & 0x80000000) == 0 || !dword_1ED844290)
    {
      goto LABEL_56;
    }

    v160 = OUTLINED_FUNCTION_12_23(v152, v153, v154, v155, v156, v157, v158, v159, v189, v197, v202.value);
    OUTLINED_FUNCTION_32_6(v160, v161, v162, v163, v164, v165, v166, v167, v193, v201, v202.value);
    OUTLINED_FUNCTION_46();
    if (!v5)
    {
      goto LABEL_55;
    }

LABEL_54:
    v168 = [v4 description];
    *rhs = 136315394;
    OUTLINED_FUNCTION_10_20(v168, "[BWIrisStagingNode _emitIrisRequest:withEndingVideoSampleTimingInfo:]");
    OUTLINED_FUNCTION_11_0();
    _os_log_send_and_compose_impl();
LABEL_55:
    OUTLINED_FUNCTION_2_4();
    OUTLINED_FUNCTION_13_0(v169, v170, v171, v172, v173);
    goto LABEL_56;
  }

  if (v4)
  {
    v94 = OUTLINED_FUNCTION_58_6();
    objc_msgSend_movieEndTime(v94);
    v95 = OUTLINED_FUNCTION_24_2();
    v78 = objc_msgSend_stillImageCaptureTime(v95);
  }

  else
  {
    OUTLINED_FUNCTION_21_11();
  }

  v96 = OUTLINED_FUNCTION_83_1(v78, v79, v80, v81, v82, v83, v84, v85, v187, v195, v202.value, *&v202.timescale, v202.epoch, v203, v204[0]);
  v98 = CMTimeCompare(v96, v97);
  if ((v98 & 0x80000000) != 0 && dword_1ED844290)
  {
    v106 = OUTLINED_FUNCTION_12_23(v98, v99, v100, v101, v102, v103, v104, v105, v189, v197, v202.value);
    OUTLINED_FUNCTION_32_6(v106, v107, v108, v109, v110, v111, v112, v113, v190, v198, v202.value);
    OUTLINED_FUNCTION_46();
    if (!v5)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

LABEL_56:
  [OUTLINED_FUNCTION_116_0() setStagingNodeOverallVideoFrameReceptionStats:?];
  [OUTLINED_FUNCTION_116_0() setStagingNodeValveActiveVideoFrameReceptionStats:?];
  if ([OUTLINED_FUNCTION_123(472) containsObject:?])
  {
    [OUTLINED_FUNCTION_123(472) removeObject:?];
  }

  else
  {
    [*(v3 + 624) stagingNode:v3 willEmitIrisRequest:v4];
  }

  [BWIrisStagingNode _emitIrisMovieRequestWithInfo:v3];
  ++*(v3 + 480);
  if ([v4 isFinalEnqueuedIrisRequest])
  {
    OUTLINED_FUNCTION_21_4(426);
    OUTLINED_FUNCTION_19_1((v3 + 432));
    if (v4)
    {
      v174 = OUTLINED_FUNCTION_24_2();
      objc_msgSend_movieEndingVideoPTS(v174);
    }

    else
    {
      memset(rhs, 0, 24);
    }

    OUTLINED_FUNCTION_88_1(v204);
    OUTLINED_FUNCTION_38_6();
    v175 = CMTimeSubtract(&lhs, &v202, v204);
    v183 = OUTLINED_FUNCTION_73_0(v175, v176, v177, v178, v179, v180, v181, v182, v189, v197, v202.value, *&v202.timescale, v202.epoch, v203, *v204, *&v204[8], *&v204[16], *&v204[24], v205, *(&v205 + 1), v206, v207, v208, v209, v210, v211, v212, v213, v214, v215, rhs[0]);
    CMTimeSubtract(v185, v183, v184);
    [(BWIrisStagingNode *)v3 _emitBuffersThroughPTS:v204];
    [(BWIrisStagingNode *)v3 _emitBuffersThroughPTS:?];
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  index = [input index];
  v8 = *&self->_trimLivePhotoMovieAtWideAndSuperWideAutoSwitching;
  if (index == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = [(NSURL *)self->_spatialOverCaptureMasterMovieURL objectAtIndexedSubscript:index];
  }

  v314 = 0;
  sampleBufferOut = 0;
  v313 = 0;
  v311 = *MEMORY[0x1E6960C70];
  v312 = *(MEMORY[0x1E6960C70] + 8);
  memset(&v310, 0, sizeof(v310));
  CMSampleBufferGetPresentationTimeStamp(&v310, buffer);
  v281 = 488;
  FigSimpleMutexLock();
  v279 = v9;
  if ([input mediaType] == 1936684398)
  {
    if ((self->_emissionMap & 1) == 0)
    {
      if (dword_1ED844290)
      {
        LODWORD(rhs[0].value) = 0;
        LOBYTE(v316.origin.x) = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        value = rhs[0].value;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, LOBYTE(v316.origin.x)))
        {
          v12 = value;
        }

        else
        {
          v12 = value & 0xFFFFFFFE;
        }

        if (v12)
        {
          OUTLINED_FUNCTION_1_52();
          CMTimeGetSeconds(time);
          *lhs = 136315650;
          OUTLINED_FUNCTION_33_9();
          OUTLINED_FUNCTION_13();
          _os_log_send_and_compose_impl();
        }

        OUTLINED_FUNCTION_2_4();
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v9 = v279;
      }

      LOBYTE(self->_emissionMap) = 1;
    }
  }

  else if (!index)
  {
    OUTLINED_FUNCTION_33();
    if (_ZF && (BYTE2(self->_emissionMap) & 1) == 0)
    {
      OUTLINED_FUNCTION_95_3();
      HostTimeClock = CMClockGetHostTimeClock();
      v239 = CMClockGetTime(time, HostTimeClock);
      OUTLINED_FUNCTION_52_6(v239, v240, v241, v242, v243, v244, v245, v246, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, v267, *&v270, v273, v276, v9, 488, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, v307.value, *&v307.timescale, v307.epoch, v308.value, *&v308.timescale);
      [BWIrisStagingNode _signalReadyToReceiveRequestsWithEarliestAllowedStillHostPTS:?];
    }

    OUTLINED_FUNCTION_33();
    if (_ZF)
    {
      if (!*&self->_numberOfVideoFramesReceived)
      {
        v14 = (SLODWORD(self->_limitedGMErrorLogger) + 1);
        LODWORD(self->_limitedGMErrorLogger) = v14;
        if (self->_readyToReceiveRequestsGroup < v14)
        {
          OUTLINED_FUNCTION_33();
          if (_ZF)
          {
            *&self->_numberOfVideoFramesReceived = [[BWSubjectRelightingCalculator alloc] initWithInferenceScheduler:self->_inferencesInputIndex];
            [input videoFormat];
            [OUTLINED_FUNCTION_28() prepareForVideoFormatAsync:?];
          }
        }
      }
    }
  }

  if (self->_stagingSuspended)
  {
    goto LABEL_99;
  }

  if (index)
  {
    if (index != v8)
    {
      v122 = 0;
LABEL_130:
      [v9 addObject:buffer];
      if ((BYTE2(self->_emissionMap) & 1) == 0)
      {
        OUTLINED_FUNCTION_95_3();
        _earliestAllowedStillHostPTS = [(BWIrisStagingNode *)self _earliestAllowedStillHostPTS];
        if (time[0].flags)
        {
          OUTLINED_FUNCTION_52_6(_earliestAllowedStillHostPTS, v169, v170, v171, v172, v173, v174, v175, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, v267, *&v270, v273, v276, v279, v281, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, v307.value, *&v307.timescale, v307.epoch, v308.value, *&v308.timescale);
          OUTLINED_FUNCTION_14_6(MEMORY[0x1E6960C88]);
          v176 = CMTimeCompare(lhs, rhs);
          if ((v176 & 0x80000000) != 0)
          {
            OUTLINED_FUNCTION_52_6(v176, v177, v178, v179, v180, v181, v182, v183, v248, v250, v252, v254, keya, key_8, v260, v262, v264, v266, v269, v272, v275, v278, v280, v282, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, v307.value, *&v307.timescale, v307.epoch, v308.value, *&v308.timescale);
            [BWIrisStagingNode _signalReadyToReceiveRequestsWithEarliestAllowedStillHostPTS:?];
          }
        }
      }

      v184 = OUTLINED_FUNCTION_112_3();
      [(BWIrisStagingNode *)v184 _trimQueueForInputIndex:v185];
      OUTLINED_FUNCTION_33();
      if (_ZF)
      {
        OUTLINED_FUNCTION_33();
        if (_ZF)
        {
          v186 = OUTLINED_FUNCTION_70();
          [(BWIrisStagingNode *)v186 _emitSampleBuffer:v187 forInputIndex:index];
        }

        else if (!index)
        {
          OUTLINED_FUNCTION_1_52();
          [(BWIrisStagingNode *)self _serviceIrisRequestsForCurrentTime:1 emitBuffers:1 ensureStillImageTimesAreStaged:?];
        }
      }

      goto LABEL_141;
    }

    v80 = OUTLINED_FUNCTION_70();
    [(BWIrisStagingNode *)v80 _feedTrimmerWithInferencesSampleBuffer:v81];
LABEL_99:
    v122 = 0;
    goto LABEL_141;
  }

  memset(&v308, 0, sizeof(v308));
  v15 = CMClockGetHostTimeClock();
  CMClockGetTime(&v308, v15);
  v16 = 784;
  if (self->_lastReceivedVideoTime.epoch)
  {
    *lhs = v308;
    OUTLINED_FUNCTION_14_6((&self->_recommendedMasterPortType + 4));
    CMTimeSubtract(time, lhs, rhs);
    Seconds = CMTimeGetSeconds(time);
    [self->_lastReceivedVideoTime.epoch addDataPoint:?];
    overallVideoFrameReceptionStats = self->_overallVideoFrameReceptionStats;
    if (overallVideoFrameReceptionStats)
    {
      [(BWStats *)overallVideoFrameReceptionStats addDataPoint:Seconds];
    }
  }

  else
  {
    v19 = objc_alloc_init(BWStats);
    self->_lastReceivedVideoTime.epoch = v19;
    [(BWStats *)v19 setMultiplier:1000.0];
    [self->_lastReceivedVideoTime.epoch setUnitDesignator:@"ms"];
  }

  *(&self->_recommendedMasterPortType + 4) = v308;
  memset(&v307, 0, sizeof(v307));
  v20 = MEMORY[0x1E6960CC0];
  if ((self->_frameGovernorReferenceTime.value & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_1_52();
    *lhs = *&self->_frameGovernorNextFrameThreshold.epoch;
    *&lhs[16] = *&self->_frameGovernorReferenceTime.timescale;
    CMTimeSubtract(&v307, time, lhs);
  }

  else
  {
    v307 = **&MEMORY[0x1E6960CC0];
  }

  memset(&v305, 0, sizeof(v305));
  v274 = 0;
  p_epoch = &self->_frameGovernorNextFrameThreshold.epoch;
  if ([v9 count])
  {
    CMSampleBufferGetPresentationTimeStamp(time, [v9 lastObject]);
    OUTLINED_FUNCTION_94();
    CMTimeSubtract(&v305, lhs, time);
  }

  else
  {
    v305 = *v20;
  }

  v21 = CMGetAttachment(buffer, @"LastRecommendedMasterSelectionReason", 0);
  v22 = v21;
  if (v21)
  {
    LODWORD(self->_recommendedMasterPortType) = [v21 intValue];
  }

  v268 = 732;
  if (BYTE4(self->_minimumPrerollFrames) == 1)
  {
    LODWORD(v20) = 736;
    videoStabilizationOverscanOverride = self->_videoStabilizationOverscanOverride;
    v24 = *&self->_minimumPrerollFrames;
    v263 = @"SynchronizedSlaveFrame";
    v265 = 728;
    AttachedMedia = BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame");
    v16 = off_1E798B540;
    if (AttachedMedia)
    {
      v201 = AttachedMedia;
      v261 = 736;
      v202 = 1.0;
      v203 = ((v24 + 1.0) + 0.2) * (videoStabilizationOverscanOverride + 1.0);
      v204 = CMGetAttachment(AttachedMedia, @"TotalZoomFactor", 0);
      v205 = 1.0;
      if (v204)
      {
        [v204 floatValue];
        v205 = v206;
      }

      v207 = OUTLINED_FUNCTION_70();
      v209 = [(BWIrisStagingNode *)v207 _appliedZoomFromSampleBuffer:v208];
      if ((v205 / v203) >= 1.0)
      {
        v202 = v205 / v203;
      }

      v253 = *off_1E798A3C8;
      keyb = [CMGetAttachment(v201 *off_1E798A3C8];
      v210 = OUTLINED_FUNCTION_84_1();
      v212 = CMGetAttachment(v210, v211, 0);
      if (!v212)
      {
        v212 = CMGetAttachment(v201, @"RecommendedMasterPortType", 0);
        if (!v212)
        {
          v212 = *&self->_spatialOverCapturePercentageToApply;
        }
      }

      v16 = off_1E798B540;
      v213 = *&self->_spatialOverCapturePercentageToApply;
      v214 = v212;
      if (v212 != v213)
      {

        *&self->_spatialOverCapturePercentageToApply = v214;
        LODWORD(v20) = 736;
      }

      v251 = v214;
      if (v22 || (v22 = CMGetAttachment(v201, @"LastRecommendedMasterSelectionReason", 0)) != 0)
      {
        LODWORD(self->_recommendedMasterPortType) = [v22 intValue];
      }

      if (v205 < v209 || objc_msgSend_isEqualToString_(keyb) && (objc_msgSend_isEqualToString_(v214) & 1) != 0 || objc_msgSend_isEqualToString_(keyb) && objc_msgSend_isEqualToString_(v214) && (LODWORD(self->_recommendedMasterPortType) - 1) <= 1)
      {
        BWCMSampleBufferCreateCopyIncludingMetadata(v201, &sampleBufferOut);
        if (!sampleBufferOut)
        {
          goto LABEL_210;
        }

        v215 = [CMGetAttachment(buffer @"AttachedMedia"];
        OUTLINED_FUNCTION_33();
        if (_ZF)
        {
          v303 = 0u;
          v304 = 0u;
          v301 = 0u;
          v302 = 0u;
          v216 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 1);
          v217 = [v216 countByEnumeratingWithState:&v301 objects:&v285 count:16];
          if (v217)
          {
            v218 = v217;
            v219 = *v302;
            do
            {
              for (i = 0; i != v218; ++i)
              {
                if (*v302 != v219)
                {
                  objc_enumerationMutation(v216);
                }

                [v215 setObject:BWSampleBufferGetAttachedMedia(v201 forKeyedSubscript:{*(*(&v301 + 1) + 8 * i)), *(*(&v301 + 1) + 8 * i)}];
              }

              v218 = [v216 countByEnumeratingWithState:&v301 objects:&v285 count:16];
            }

            while (v218);
          }
        }

        if ([v215 count])
        {
          v221 = [v215 copy];
          CMSetAttachment(sampleBufferOut, @"AttachedMedia", v221, 1u);
        }

        time[0].value = 0;
        BWCMSampleBufferCreateCopyIncludingMetadata(v201, time);
        v26 = &unk_1ED844000;
        LODWORD(v20) = 736;
        if (!time[0].value)
        {
          goto LABEL_210;
        }

        BWSampleBufferRemoveAllAttachedMedia(time[0].value);
        BWSampleBufferSetAttachedMedia(sampleBufferOut, @"SynchronizedSlaveFrame", time[0].value);
        CFRelease(time[0].value);
        BWSampleBufferRemoveAllAttachedMedia(buffer);
        buffer = sampleBufferOut;
        CMSampleBufferGetPresentationTimeStamp(time, sampleBufferOut);
        v310 = time[0];
        v16 = off_1E798B540;
      }

      else if (v202 >= v209)
      {
        BWCMSampleBufferCreateCopyIncludingMetadata(buffer, &v314);
        if (!v314)
        {
          goto LABEL_210;
        }

        BWSampleBufferRemoveAllAttachedMedia(v314);
        BWSampleBufferPropagateAttachedMedia(v201, v314);
        BWSampleBufferSetAttachedMedia(buffer, @"SynchronizedSlaveFrame", v314);
        v26 = &unk_1ED844000;
      }

      else
      {
        LODWORD(v26) = -310099968;
      }

      __asm { FMOV            V0.2D, #1.0 }

      *key = _Q0;
      if (!(_NF ^ _VF | _ZF))
      {
        v226 = BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame");
        if (!v226)
        {
          goto LABEL_210;
        }

        v227 = v226;
        v228 = CMGetAttachment(v226, @"FinalCropRectScaleFactorAtBaseZoom", 0);
        if (v228)
        {
          [v228 floatValue];
        }

        CMGetAttachment(v227, v253, 0);
        time[0].value = 0;
        *&time[0].timescale = 0;
        *&time[0].epoch = *key;
        FigCFDictionaryGetCGRectIfPresent();
        v320.origin.x = OUTLINED_FUNCTION_1();
        CGRectGetWidth(v320);
        v321.origin.x = OUTLINED_FUNCTION_1();
        CGRectGetHeight(v321);
        v322.origin.x = OUTLINED_FUNCTION_1();
        CGRectGetMidX(v322);
        v323.origin.x = OUTLINED_FUNCTION_1();
        CGRectGetMidY(v323);
        FigCFDictionarySetCGRect();
        v229 = *&self->_minimumPrerollFrames;
        LODWORD(v20) = 736;
        if (v229 > 0.0)
        {
          FigCaptureMetadataUtilitiesScaleFinalCropRectForPadding(v227, v229);
        }
      }

      OUTLINED_FUNCTION_33();
      if (_ZF)
      {
        v230 = OUTLINED_FUNCTION_47_1();
        v233 = CMGetAttachment(v230, v231, v232);
        if (v233)
        {
          *lhs = *MEMORY[0x1E695EFF8];
          CGPointMakeWithDictionaryRepresentation(v233, lhs);
          CMGetAttachment(buffer, v253, 0);
          v234 = *(MEMORY[0x1E695F058] + 16);
          *&time[0].value = *MEMORY[0x1E695F058];
          *&time[0].epoch = v234;
          if (!FigCFDictionaryGetCGRectIfPresent())
          {
            goto LABEL_210;
          }

          v235 = vsubq_f64(*key, *&time[0].epoch);
          v236 = vaddq_f64(*&time[0].value, *lhs);
          v237 = vbslq_s8(vcgtq_f64(v236, v235), v235, v236);
          *&time[0].value = vbicq_s8(v237, vcltzq_f64(v237));
          FigCFDictionarySetCGRect();
          LODWORD(v20) = 736;
        }
      }
    }

    else
    {
      v26 = &unk_1ED844000;
    }

    v27 = *&self->_minimumPrerollFrames;
    if (v27 > 0.0)
    {
      FigCaptureMetadataUtilitiesScaleFinalCropRectForPadding(buffer, v27);
      if (self->_videoStabilizationOverscanOverride > 0.0)
      {
        v28 = v16;
        LODWORD(v20) = v26;
        v29 = BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame");
        if (v29)
        {
          v30 = v29;
          v31 = CMGetAttachment(v29, *off_1E798A3C8, 0);
          v32 = OUTLINED_FUNCTION_84_1();
          v34 = CMGetAttachment(v32, v33, 0);
          v16 = *v16;
          v35 = [v31 objectForKeyedSubscript:*v28];
          [v34 objectForKeyedSubscript:v16];
          if (objc_msgSend_isEqualToString_(v35))
          {
            memset(time, 0, 32);
            if (FigCFDictionaryGetCGRectIfPresent() && (memset(lhs, 0, sizeof(lhs)), FigCFDictionaryGetCGRectIfPresent()))
            {
              ImageBuffer = CMSampleBufferGetImageBuffer(v30);
              Width = CVPixelBufferGetWidth(ImageBuffer);
              Height = CVPixelBufferGetHeight(ImageBuffer);
              memset(rhs, 0, 32);
              if (FigCFDictionaryGetCGRectIfPresent())
              {
                v40 = *&rhs[0].epoch;
                v39 = *&rhs[1].value;
              }

              else
              {
                rhs[0].value = 0;
                *&rhs[0].timescale = 0;
                v39 = Height;
                v40 = Width;
                *&rhs[0].epoch = Width;
                *&rhs[1].value = Height;
              }

              v188 = v40 / Width;
              v189 = v39 / Height;
              v16 = CMSampleBufferGetImageBuffer(buffer);
              v190 = CVPixelBufferGetWidth(v16);
              v191 = CVPixelBufferGetHeight(v16);
              memset(&v316, 0, sizeof(v316));
              if (!FigCFDictionaryGetCGRectIfPresent())
              {
                v316.origin.x = 0.0;
                v316.origin.y = 0.0;
                v316.size.width = v190;
                v316.size.height = v191;
              }

              v192 = *&lhs[16] * (fmin(v188 / *&time[0].epoch + -1.0, INFINITY) + 1.0);
              v193 = *&lhs[24] * (fmin(v189 / *&time[1].value + -1.0, INFINITY) + 1.0);
              v194 = v190 * v192;
              v195 = FigCaptureFloorFloatToMultipleOf(4, v194);
              v196 = v191 * v193;
              v197 = FigCaptureFloorFloatToMultipleOf(4, v196);
              v198.n128_u64[0] = *&v316.origin.x;
              v199 = OUTLINED_FUNCTION_129_2(v198, v195 - v316.size.width);
              v200.n128_u64[0] = *&v316.origin.y;
              v318.origin.y = OUTLINED_FUNCTION_129_2(v200, v197 - v316.size.height);
              v318.origin.x = v199;
              v318.size.width = v195;
              v318.size.height = v197;
              v319 = CGRectIntersection(v318, v316);
              if (!CGRectEqualToRect(v319, v316))
              {
                FigCFDictionarySetCGRect();
              }
            }

            else
            {
              OUTLINED_FUNCTION_2_47();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
            }
          }
        }
      }
    }
  }

  else
  {
    v41 = *&self->_minimumPrerollFrames;
    if (v41 > 0.0)
    {
      FigCaptureMetadataUtilitiesScaleFinalCropRectForPadding(buffer, v41);
    }
  }

  v42 = *(MEMORY[0x1E6960C70] + 16);
  v43 = OUTLINED_FUNCTION_47_1();
  if ([CMGetAttachment(v43 v44])
  {
    v46 = CMTimeMake(time, 16, 1000);
    OUTLINED_FUNCTION_63_3(v46, v47, v48, v49, v50, v51, v52, v53, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, 732, *&v270, 0, p_epoch, v279, v281, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, v307.value, *&v307.timescale, v307.epoch, v308.value, *&v308.timescale);
    v54 = OUTLINED_FUNCTION_47_1();
    v57 = [objc_msgSend(CMGetAttachment(v54 v55];
    if (v57 >= 1)
    {
      v58 = CMTimeMake(time, v57, 1000000);
      OUTLINED_FUNCTION_63_3(v58, v59, v60, v61, v62, v63, v64, v65, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, v268, *&v270, v274, p_epoch, v279, v281, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, v307.value, *&v307.timescale, v307.epoch, v308.value, *&v308.timescale);
    }

    memset(rhs, 0, 24);
    OUTLINED_FUNCTION_1_52();
    *lhs = v311;
    *&lhs[8] = v312;
    *&lhs[12] = v20;
    *&lhs[16] = v16;
    CMTimeAdd(rhs, time, lhs);
    if (dword_1ED844290)
    {
      LODWORD(v316.origin.x) = 0;
      HIBYTE(v284) = 0;
      v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      x_low = LODWORD(v316.origin.x);
      if (os_log_type_enabled(v66, HIBYTE(v284)))
      {
        v68 = x_low;
      }

      else
      {
        v68 = x_low & 0xFFFFFFFE;
      }

      if (v68)
      {
        OUTLINED_FUNCTION_1_52();
        v69 = CMTimeGetSeconds(time);
        OUTLINED_FUNCTION_100_2();
        v70 = CMTimeGetSeconds(time);
        *&time[0].value = v311;
        time[0].timescale = v312;
        time[0].flags = v20;
        time[0].epoch = v16;
        v71 = CMTimeGetSeconds(time);
        *lhs = 136315906;
        *&lhs[4] = "[BWIrisStagingNode renderSampleBuffer:forInput:]";
        *&lhs[12] = 2048;
        *&lhs[14] = v69;
        *&lhs[22] = 2048;
        *&lhs[24] = v70;
        LOWORD(v284) = 2048;
        *(&v284 + 2) = v71;
        LODWORD(v249) = 42;
        v247 = lhs;
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    OUTLINED_FUNCTION_100_2();
    *lhs = *MEMORY[0x1E6960C70];
    *&lhs[16] = v42;
    BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(buffer, time, lhs, &v313);
    v72 = v313;
    if (v313)
    {
      v42 = v16;
LABEL_65:
      BWSynchronizeSmartStyleAttachedMediaPTS(v72);
      buffer = v72;
      goto LABEL_66;
    }

LABEL_210:
    OUTLINED_FUNCTION_2_47();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v247);
    goto LABEL_99;
  }

  LODWORD(v20) = *(MEMORY[0x1E6960C70] + 12);
  v72 = v313;
  if (v313)
  {
    goto LABEL_65;
  }

LABEL_66:
  if (*&self->_vitalityScoringSmartCameraPipelineVersion.minor)
  {
    v73 = OUTLINED_FUNCTION_70();
    [BWIrisStagingNode _feedTrimmerWithVideoSampleBuffer:v73];
  }

  v74 = OUTLINED_FUNCTION_70();
  [(BWIrisStagingNode *)v74 _findAndMarkCuttingBufferForVideoSbuf:v75];
  OUTLINED_FUNCTION_33();
  if (!_ZF)
  {
    goto LABEL_99;
  }

  if ((BYTE1(self->_emissionMap) & 1) == 0)
  {
    if (dword_1ED844290)
    {
      LODWORD(rhs[0].value) = 0;
      LOBYTE(v316.origin.x) = 0;
      v76 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v77 = rhs[0].value;
      os_log_type_enabled(v76, LOBYTE(v316.origin.x));
      OUTLINED_FUNCTION_97_0();
      if (_ZF)
      {
        v79 = v78;
      }

      else
      {
        v79 = v77;
      }

      if (v79)
      {
        OUTLINED_FUNCTION_1_52();
        CMTimeGetSeconds(time);
        *lhs = 136315650;
        OUTLINED_FUNCTION_33_9();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    BYTE1(self->_emissionMap) = 1;
  }

  if ((self->_frameGovernorNextFrameThreshold.value & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_88_1(lhs);
    OUTLINED_FUNCTION_77_2();
    v83 = CMTimeSubtract(v82, rhs, lhs);
    OUTLINED_FUNCTION_35_7(v83, v84, v85, v86, v87, v88, v89, v90, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, v268, *&v270, v274, p_epoch, v279, v281, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, *&v307.value);
    if (CMTimeCompare(lhs, time) < 0)
    {
      [(BWInferenceScheduler *)self->_inferenceScheduler preserveMotionDataForSoonToBeDroppedSampleBuffer:buffer];
      goto LABEL_99;
    }
  }

  v271 = v42;
  v91 = p_epoch;
  if ((*(p_epoch + 12) & 1) == 0 || (OUTLINED_FUNCTION_42_6(&self->_targetFrameDuration), CMTimeMultiply(time, lhs, 2), *lhs = v305, v92 = CMTimeCompare(lhs, time), v92 > 0) || (OUTLINED_FUNCTION_35_7(v92, v93, v94, v95, v96, v97, v98, v99, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, v268, v42, v274, p_epoch, v279, v281, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, *&v307.value), OUTLINED_FUNCTION_77_2(), CMTimeSubtract(v123, lhs, rhs), OUTLINED_FUNCTION_88_1(lhs), CMTimeCompare(time, lhs) < 0))
  {
    *v91 = v310;
    v307 = **&MEMORY[0x1E6960CC0];
  }

  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_35_7(v100, self->_targetFrameDuration.timescale, LODWORD(self->_targetFrameDuration.value), v101, v102, v103, v104, v105, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, v268, v271, v274, p_epoch, v279, v281, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, *&v307.value);
  CMTimeMultiplyByRatio(time, lhs, v106, v107);
  rhs[0] = self->_targetFrameDuration;
  CMTimeMultiply(lhs, rhs, time[0].value / time[0].timescale + 1);
  *&self->_frameGovernorNextFrameThreshold.timescale = *&lhs[16];
  *&self->_compressSynchronizedSlaveAttachedMedia = *lhs;
  v108 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_1_52();
    CMTimeGetSeconds(time);
    kdebug_trace();
  }

  [(BWInferenceScheduler *)self->_inferenceScheduler prependPreservedMotionDataToSampleBuffer:buffer];
  OUTLINED_FUNCTION_33();
  if (!_ZF)
  {
    v122 = 0;
    goto LABEL_116;
  }

  LODWORD(v276) = LODWORD(self->_intermediateJPEGCompressionQuality) + LODWORD(self->_intermediateJPEGCompressionRate);
  v109 = OUTLINED_FUNCTION_84_1();
  v111 = BWSampleBufferGetAttachedMedia(v109, v110);
  if (v111)
  {
    if (self->_videoStabilizationOverscanOverride <= 0.0)
    {
      if ((*(&self->super.super.isa + v267) & 1) == 0)
      {
        -[BWStats logErrorNumber:errorString:](self->_valveActiveVideoFrameReceptionStats, "logErrorNumber:errorString:", 0xFFFFFFFFLL, [MEMORY[0x1E696AEC0] stringWithFormat:@"Primary media contains unexpected SynchronizedSlaveFrame."]);
      }

      v117 = 0;
    }

    else
    {
      v112 = v111;
      intermediateJPEGCompressor = self->_intermediateJPEGCompressor;
      if (!intermediateJPEGCompressor)
      {
        v114 = [BWIntermediateJPEGCompressor alloc];
        LODWORD(v115) = self->_compressedBufferPoolAllocationTimeoutMS;
        LODWORD(v116) = HIDWORD(self->_compressedBufferPoolAllocationTimeoutMS);
        intermediateJPEGCompressor = [(BWIntermediateJPEGCompressor *)v114 initWithCompressionQuality:(self->_intermediateJPEGDownstreamRetainedBufferCount + LODWORD(self->_intermediateJPEGCompressionRate)) compressionRate:(self->_intermediateJPEGDownstreamRetainedBufferCount + v276) jpegSurfacePoolLowWaterBufferCount:self->_delegate jpegSurfacePoolHighWaterBufferCount:@"synchronizedSlaveJPEGCompressor" compressedBufferPoolAllocationTimeoutMS:v115 name:v116];
        self->_intermediateJPEGCompressor = intermediateJPEGCompressor;
      }

      v117 = [(BWIntermediateJPEGCompressor *)intermediateJPEGCompressor newJPEGSampleBufferFromUncompressedSampleBuffer:v112];
      if (!v117)
      {
        valveActiveVideoFrameReceptionStats = self->_valveActiveVideoFrameReceptionStats;
        v119 = MEMORY[0x1E696AEC0];
        CMSampleBufferGetPresentationTimeStamp(time, v112);
        v247 = CMTimeGetSeconds(time);
        -[BWStats logErrorNumber:errorString:](valveActiveVideoFrameReceptionStats, "logErrorNumber:errorString:", 0xFFFFFFFFLL, [v119 stringWithFormat:@"Could not create intermediate JPEG for synchronized slave frame at %.4f"]);
        v120 = OUTLINED_FUNCTION_84_1();
        BWSampleBufferRemoveAttachedMedia(v120, v121);
        v122 = 0;
        buffer = 0;
        v108 = MEMORY[0x1E695FF58];
        goto LABEL_116;
      }
    }

    v124 = OUTLINED_FUNCTION_84_1();
    BWSampleBufferRemoveAttachedMedia(v124, v125);
  }

  else
  {
    v117 = 0;
  }

  v126 = *&self->_additionalCompressedBufferCount;
  if (!v126)
  {
    v127 = [BWIntermediateJPEGCompressor alloc];
    LODWORD(v128) = self->_compressedBufferPoolAllocationTimeoutMS;
    LODWORD(v129) = HIDWORD(self->_compressedBufferPoolAllocationTimeoutMS);
    v126 = [(BWIntermediateJPEGCompressor *)v127 initWithCompressionQuality:(self->_intermediateJPEGDownstreamRetainedBufferCount + LODWORD(self->_intermediateJPEGCompressionRate)) compressionRate:(self->_intermediateJPEGDownstreamRetainedBufferCount + v276) jpegSurfacePoolLowWaterBufferCount:self->_delegate jpegSurfacePoolHighWaterBufferCount:@"intermediateJPEGCompressor" compressedBufferPoolAllocationTimeoutMS:v128 name:v129];
    *&self->_additionalCompressedBufferCount = v126;
  }

  v130 = [(BWIntermediateJPEGCompressor *)v126 newJPEGSampleBufferFromUncompressedSampleBuffer:buffer];
  v122 = v130;
  if (v130)
  {
    v108 = MEMORY[0x1E695FF58];
    if (!v117)
    {
LABEL_115:
      buffer = v122;
      goto LABEL_116;
    }

    BWSampleBufferSetAttachedMedia(v130, 0x1F21AAA50, v117);
LABEL_114:
    CFRelease(v117);
    goto LABEL_115;
  }

  v131 = self->_valveActiveVideoFrameReceptionStats;
  v132 = MEMORY[0x1E696AEC0];
  CMSampleBufferGetPresentationTimeStamp(time, buffer);
  v247 = CMTimeGetSeconds(time);
  -[BWStats logErrorNumber:errorString:](v131, "logErrorNumber:errorString:", 0xFFFFFFFFLL, [v132 stringWithFormat:@"Could not create intermediate JPEG for primary frame at %.4f"]);
  v108 = MEMORY[0x1E695FF58];
  if (v117)
  {
    goto LABEL_114;
  }

  v122 = 0;
  buffer = 0;
LABEL_116:
  if (*v108 == 1)
  {
    kdebug_trace();
  }

  if (buffer)
  {
    sequenceAdjuster = self->_sequenceAdjuster;
    if (sequenceAdjuster)
    {
      v134 = [(BWIrisSequenceAdjuster *)sequenceAdjuster addMotionDataToCacheForSampleBuffer:buffer];
      v135 = *off_1E798A3C8;
      v136 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
      v137 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v134];
      v138 = *off_1E798CE70;
      [v136 setObject:v137 forKeyedSubscript:*off_1E798CE70];
      v139 = BWSampleBufferGetAttachedMedia(buffer, @"SynchronizedSlaveFrame");
      if (v139)
      {
        if (self->_sequenceAdjuster)
        {
          [CMGetAttachment(v139 v135];
        }
      }
    }

    v9 = v279;
    if (self->_motionDataPreserver)
    {
      OUTLINED_FUNCTION_95_3();
      v140 = OUTLINED_FUNCTION_47_1();
      v143 = CMGetAttachment(v140, v141, v142);
      CMTimeMakeFromDictionary(time, v143);
      index = v273;
      if ((time[0].flags & 1) == 0)
      {
        OUTLINED_FUNCTION_1_52();
      }

      v144 = OUTLINED_FUNCTION_47_1();
      [CMGetAttachment(v144 v145];
      v147 = OUTLINED_FUNCTION_47_1();
      v148 = [CMGetAttachment(v147 v148];
      if (v20)
      {
        OUTLINED_FUNCTION_114_1(v148, v151, v152, v153, v154, v155, v156, v157, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, v267, *&v270, v273, v276, v279, v281, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, v307.value, *&v307.timescale, v307.epoch, v308.value, *&v308.timescale);
        v316.origin.x = v311;
        *&v316.origin.y = __PAIR64__(v20, v312);
        v316.size.width = v270;
        CMTimeAdd(lhs, rhs, &v316);
        time[0] = *lhs;
      }

      OUTLINED_FUNCTION_94();
      *&v166 = OUTLINED_FUNCTION_114_1(v158, v159, v160, v161, v162, v163, v164, v165, v247, v249, v251, v253, key[0], key[1], v259, v261, v263, v265, v267, *&v270, v273, v276, v279, v281, *lhs, *&lhs[8], *&lhs[16], *&lhs[24], v284, *(&v284 + 1), v285, v286, v287, v288, v289, v290, v291, v292, v293, v294, v295, v296, v297, v298, v299, v300, v301, *(&v301 + 1), v302, *(&v302 + 1), v303, *(&v303 + 1), v304, *(&v304 + 1), v305.value, *&v305.timescale, v305.epoch, v306, v307.value, *&v307.timescale, v307.epoch, v308.value, *&v308.timescale).n128_u64[0];
      [v167 enqueueVideoBufferTime:lhs nativeTime:rhs isBracketFrame:v166 isSISFrame:?];
    }

    else
    {
      index = v273;
    }

    goto LABEL_130;
  }

LABEL_141:
  FigSimpleMutexUnlock();
  if (v313)
  {
    CFRelease(v313);
  }

  if (v122)
  {
    CFRelease(v122);
  }

  if (sampleBufferOut)
  {
    CFRelease(sampleBufferOut);
  }

  if (v314)
  {
    CFRelease(v314);
  }
}

- (void)_signalReadyToReceiveRequestsWithEarliestAllowedStillHostPTS:(uint64_t)s
{
  if (s)
  {
    OUTLINED_FUNCTION_54();
    *(v3 + 706) = 1;
    if (dword_1ED844290)
    {
      v17 = 0;
      v16 = 0;
      OUTLINED_FUNCTION_111_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_4_0();
      if (v2)
      {
        OUTLINED_FUNCTION_39_5();
        CMTimeGetSeconds(&time);
        OUTLINED_FUNCTION_48_5();
        OUTLINED_FUNCTION_105_1();
        OUTLINED_FUNCTION_5_0(v2, v5, &time, v6, &dword_1AC90E000);
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_39_0(v7, v8, v9, v10, v11);
    }

    *&v12 = OUTLINED_FUNCTION_39_5().n128_u64[0];
    [v13 stagingNode:v1 readyToReceiveRequestsWithEarliestAllowedStillImageCaptureHostPTS:{&time, v12}];
    v14 = *(v1 + 712);
    if (v14)
    {
      dispatch_group_leave(v14);

      *(v1 + 712) = 0;
    }
  }
}

- (float)_appliedZoomFromSampleBuffer:(uint64_t)buffer
{
  if (!buffer)
  {
    return 0.0;
  }

  v3 = CMGetAttachment(target, *off_1E798A3C8, 0);
  v4 = [v3 objectForKeyedSubscript:*off_1E798B540];
  [objc_msgSend(objc_msgSend(*(buffer + 688) objectForKeyedSubscript:{v4), "objectForKeyedSubscript:", *off_1E7989E50), "floatValue"}];
  v6 = v5;
  if (v5 <= 0.0)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v20, v21, v22, v23, v24, v25, *v26, *&v26[8]);
    FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
    v28 = 0;
    v27 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_115_0();
    if (v13)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      OUTLINED_FUNCTION_105_1();
      v18 = OUTLINED_FUNCTION_5_0(v15, v16, v26, v17, &dword_1AC90E000);
    }

    else
    {
      v18 = 0;
    }

    OUTLINED_FUNCTION_13_0(qword_1ED844288, 3, 1, v18, v18 != v26);
    *v26 = 138412290;
    *&v26[4] = v4;
    v19 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(FrameworkRadarComponent, v19, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWIrisStagingNode.m", 3846, @"LastShownDate:BWIrisStagingNode.m:3846", @"LastShownBuild:BWIrisStagingNode.m:3846", 0);
    free(v19);
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:*off_1E798B7B0];
    if (v7)
    {
      [v7 floatValue];
      return v6 * v8;
    }
  }

  return v6;
}

- (void)_feedTrimmerWithVideoSampleBuffer:(uint64_t)buffer
{
  if (buffer)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v4 = v3;
    v5 = CMGetAttachment(v1, *off_1E798A3C8, 0);
    v6 = [v5 objectForKeyedSubscript:*off_1E798B3D0];
    v7 = *(v4 + 528);
    [(BWIrisStagingNode *)v2 _hostPTSForSampleBuffer:v4, &v92];
    [v7 processISPMotionData:v6 forHostTime:&v92];
    if (*(v4 + 516) == 1)
    {
      v92.origin.x = 0.0;
      v92.origin.y = 0.0;
      __asm { FMOV            V0.2D, #1.0 }

      v92.size = _Q0;
      if (FigCFDictionaryGetCGRectIfPresent())
      {
        v94.origin.x = 0.0;
        v94.origin.y = 0.0;
        v94.size.width = 1.0;
        v94.size.height = 1.0;
        HIDWORD(v58) = !CGRectEqualToRect(v92, v94);
      }

      else
      {
        HIDWORD(v58) = 0;
      }

      v60 = [v5 objectForKeyedSubscript:*off_1E798B220];
      if ([v60 count])
      {
        v13 = *off_1E798AC90;
        v91[0] = *off_1E798ACB8;
        v91[1] = v13;
        v91[2] = *off_1E798ACA0;
        v87 = 0u;
        v88 = 0u;
        v89 = 0u;
        v90 = 0u;
        obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:3];
        v14 = [obj countByEnumeratingWithState:&v87 objects:v86 count:16];
        if (v14)
        {
          v15 = v14;
          v54 = v4;
          v16 = 0;
          v17 = *v88;
          v57 = *off_1E798ACE8;
          v55 = *off_1E798B780;
          v59 = -1;
          do
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v88 != v17)
              {
                objc_enumerationMutation(obj);
              }

              v19 = [v60 objectForKeyedSubscript:*(*(&v87 + 1) + 8 * i)];
              if (v19)
              {
                v20 = v19;
                v21 = [v19 objectForKeyedSubscript:v57];
                v29 = v21;
                if (HIDWORD(v58))
                {
                  v84 = 0u;
                  v85 = 0u;
                  v82 = 0u;
                  v83 = 0u;
                  v30 = OUTLINED_FUNCTION_125_0(v21, v22, v23, v24, v25, v26, v27, v28, v53, v54, v55, obj, v57, v58, v59, v60, v61, v62, v63, v64, *&v65.origin.x, *&v65.origin.y, *&v65.size.width, *&v65.size.height, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
                  if (v30)
                  {
                    v31 = v30;
                    v32 = *v83;
                    do
                    {
                      for (j = 0; j != v31; ++j)
                      {
                        if (*v83 != v32)
                        {
                          objc_enumerationMutation(v29);
                        }

                        memset(&v65, 0, sizeof(v65));
                        CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
                        if (CGRectIfPresent)
                        {
                          v93 = CGRectIntersection(v65, v92);
                          if (v93.size.width * v93.size.height <= v65.size.width * v65.size.height * 0.5)
                          {
                            v16 = v16;
                          }

                          else
                          {
                            v16 = (v16 + 1);
                          }
                        }
                      }

                      v31 = OUTLINED_FUNCTION_125_0(CGRectIfPresent, v35, v36, v37, v38, v39, v40, v41, v53, v54, v55, obj, v57, v58, v59, v60, v61, v62, v63, v64, *&v65.origin.x, *&v65.origin.y, *&v65.size.width, *&v65.size.height, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
                    }

                    while (v31);
                  }
                }

                else
                {
                  v16 = v16 + [v21 count];
                }

                if (v59 < 0)
                {
                  v59 = [objc_msgSend(v20 objectForKeyedSubscript:{v55), "longLongValue"}];
                }
              }
            }

            v15 = [obj countByEnumeratingWithState:&v87 objects:v86 count:16];
          }

          while (v15);
          if (v16 >= 1 && (v59 & 0x8000000000000000) == 0)
          {
            memset(&v65, 0, 24);
            v42 = FigHostTimeToNanoseconds();
            CMTimeMake(&v65, v42, 1000000000);
            v43 = OUTLINED_FUNCTION_65_2();
            *&v51 = OUTLINED_FUNCTION_36_8(v43, v44, v45, v46, v47, v48, v49, v50, v53, v54, v55, obj, v57, v58, v59, v60, v61, v62, v63, v64, *&v65.origin).n128_u64[0];
            [v52 processCountOfVisibleVitalityObjects:v16 forHostTime:{&v61, v51}];
          }
        }
      }
    }

    OUTLINED_FUNCTION_128_0();
  }
}

- (void)_findAndMarkCuttingBufferForVideoSbuf:(uint64_t)sbuf
{
  if (sbuf)
  {
    v4 = [objc_msgSend(*(sbuf + 400) objectAtIndexedSubscript:{0), "lastObject"}];
    if (v4)
    {
      v5 = v4;
      v6 = *off_1E798A3C8;
      v7 = CMGetAttachment(v4, *off_1E798A3C8, 0);
      v8 = CMGetAttachment(a2, v6, 0);
      if (*(sbuf + 560) == 1 && (*(sbuf + 752) - 1) <= 1 && ((v9 = *off_1E798B540, v10 = [v7 objectForKeyedSubscript:*off_1E798B540], v11 = objc_msgSend(v8, "objectForKeyedSubscript:", v9), v12 = *off_1E798A0C0, objc_msgSend_isEqualToString_(v10)) && (objc_msgSend_isEqualToString_(v11) & 1) != 0 || objc_msgSend_isEqualToString_(v10) && objc_msgSend_isEqualToString_(v11)))
      {
        if (dword_1ED844290)
        {
          v13 = OUTLINED_FUNCTION_27_5();
          OUTLINED_FUNCTION_136_0(v13);
          OUTLINED_FUNCTION_97_0();
          if (v15)
          {
            v16 = v14;
          }

          else
          {
            v16 = v12;
          }

          if (v16)
          {
            v17 = OUTLINED_FUNCTION_82_2();
            CMSampleBufferGetPresentationTimeStamp(v18, v17);
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_75();
            OUTLINED_FUNCTION_5_38();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          v42 = OUTLINED_FUNCTION_47_7();
          v19 = 1;
          OUTLINED_FUNCTION_31_0(v42, v43, v44, v45, v46);
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
        v19 = 0;
      }

      OUTLINED_FUNCTION_38_0();
      if (v15)
      {
        v20 = *off_1E798A8F8;
        v21 = [+[FigCaptureSmartStyle createFromDictionary:](FigCaptureSmartStyle createFromDictionary:{objc_msgSend(v7, "objectForKeyedSubscript:", *off_1E798A8F8)), "cast"}];
        v22 = [+[FigCaptureSmartStyle createFromDictionary:](FigCaptureSmartStyle createFromDictionary:{objc_msgSend(v8, "objectForKeyedSubscript:", v20)), "cast"}];
        if (v21 != v22 && ([v21 isEqual:v22] & 1) == 0)
        {
          if (dword_1ED844290)
          {
            v23 = OUTLINED_FUNCTION_27_5();
            OUTLINED_FUNCTION_136_0(v23);
            OUTLINED_FUNCTION_97_0();
            if (v15)
            {
              v25 = v24;
            }

            else
            {
              v25 = FigCaptureSmartStyle;
            }

            if (v25)
            {
              v26 = OUTLINED_FUNCTION_82_2();
              CMSampleBufferGetPresentationTimeStamp(v27, v26);
              CMTimeGetSeconds(&time);
              OUTLINED_FUNCTION_75();
              OUTLINED_FUNCTION_5_38();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            v28 = OUTLINED_FUNCTION_47_7();
            v19 = 1;
            OUTLINED_FUNCTION_31_0(v28, v29, v30, v31, v32);
          }

          else
          {
            v19 = 1;
          }
        }
      }

      OUTLINED_FUNCTION_38_0();
      if (v15 && (v33 = *off_1E798A8A8, v34 = [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798A8A8), "intValue"}], v34 != objc_msgSend(objc_msgSend(v8, "objectForKeyedSubscript:", v33), "intValue")))
      {
        if (dword_1ED844290)
        {
          v35 = OUTLINED_FUNCTION_27_5();
          v36 = v49;
          os_log_type_enabled(v35, v48);
          OUTLINED_FUNCTION_97_0();
          if (v15)
          {
            v38 = v37;
          }

          else
          {
            v38 = v36;
          }

          if (v38)
          {
            v39 = OUTLINED_FUNCTION_82_2();
            CMSampleBufferGetPresentationTimeStamp(v40, v39);
            CMTimeGetSeconds(&time);
            OUTLINED_FUNCTION_75();
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_2_4();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else if (!v19)
      {
        return;
      }

      v41 = *MEMORY[0x1E695E4D0];
      CMSetAttachment(a2, @"BufferRequiresCuttingInLivePhotoMovie", *MEMORY[0x1E695E4D0], 1u);
      CMSetAttachment(v5, *MEMORY[0x1E69604E0], v41, 1u);
    }
  }
}

- (void)_feedTrimmerWithInferencesSampleBuffer:(void *)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  AttachedInferenceResult = BWInferenceGetAttachedInferenceResult(a2, 101);
  result = [AttachedInferenceResult isValid];
  if (!result)
  {
    return result;
  }

  memset(&v22, 0, sizeof(v22));
  v5 = OUTLINED_FUNCTION_47_1();
  v8 = CMGetAttachment(v5, v6, v7);
  if (!v8)
  {
    CMSampleBufferGetPresentationTimeStamp(&v22, a2);
    if (AttachedInferenceResult)
    {
      goto LABEL_5;
    }

LABEL_7:
    OUTLINED_FUNCTION_66();
    goto LABEL_8;
  }

  CMTimeMakeFromDictionary(&v22, v8);
  if (!AttachedInferenceResult)
  {
    goto LABEL_7;
  }

LABEL_5:
  v9 = objc_msgSend_timestamp(AttachedInferenceResult);
LABEL_8:
  OUTLINED_FUNCTION_110_1(v9, v10, v11, v12, v13, v14, v15, v16, v19.value, *&v19.timescale, v19.epoch, v20, time2.value, *&time2.timescale, time2.epoch, *&v22.value);
  CMTimeCompare(&v19, &time2);
  inferences = [AttachedInferenceResult inferences];
  v18 = v3[66];
  if (AttachedInferenceResult)
  {
    objc_msgSend_timestamp(AttachedInferenceResult);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  return [v18 processInferences:inferences forHostTime:&time2];
}

- (CMTime)_trimQueueForInputIndex:(CMTime *)result
{
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x1E6960C70];
    value = *MEMORY[0x1E6960C70];
    timescale = *(MEMORY[0x1E6960C70] + 8);
    v5 = [result[16].epoch objectAtIndexedSubscript:a2];
    v6 = [v5 count];
    v7 = [-[CMTime inputs](v3 "inputs")];
    v8 = OUTLINED_FUNCTION_138(400);
    v9 = [v8 count];
    result = FigSimpleMutexCheckIsLockedOnThisThread();
    if (a2)
    {
      if (v9)
      {
        result = CMSampleBufferGetPresentationTimeStamp(&v21, [v8 objectAtIndexedSubscript:0]);
        value = v21.value;
        flags = v21.flags;
        timescale = v21.timescale;
        epoch = v21.epoch;
        if ((v21.flags & 1) == 0)
        {
          return result;
        }
      }

      else
      {
        flags = *(v4 + 12);
        epoch = *(v4 + 16);
        if ((flags & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_115_1();
      CMSampleBufferGetPresentationTimeStamp(&v21, [v5 lastObject]);
      lhs = v21;
      OUTLINED_FUNCTION_42_6(&v3[6].timescale);
      CMTimeAdd(&v20, &lhs, &rhs);
      v21 = v20;
      memset(&v20, 0, sizeof(v20));
      OUTLINED_FUNCTION_42_6(&v3[6].timescale);
      CMTimeMultiply(&lhs, &rhs, 3);
      rhs = *(v3 + 128);
      CMTimeAdd(&v20, &rhs, &lhs);
      rhs = v21;
      v17 = v20;
      result = CMTimeSubtract(&lhs, &rhs, &v17);
      value = lhs.value;
      flags = lhs.flags;
      timescale = lhs.timescale;
      epoch = lhs.epoch;
      if ((lhs.flags & 1) == 0)
      {
        return result;
      }
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__BWIrisStagingNode__trimQueueForInputIndex___block_invoke;
    v13[3] = &unk_1E7991AF8;
    v13[4] = v7;
    v13[5] = v5;
    v14 = timescale;
    v15 = flags;
    v16 = epoch;
    v13[6] = v3;
    v13[7] = v6;
    v13[8] = a2;
    v13[9] = value;
    result = [v5 removeObjectsAtIndexes:{objc_msgSend(v5, "indexesOfObjectsPassingTest:", v13)}];
    if (!a2)
    {
      if (LOBYTE(v3[28].timescale) == 1)
      {
        value_high = HIDWORD(v3[27].value);
      }

      else
      {
        value_high = [v7 delayedBufferCount];
      }

      result = [v5 count];
      if (result > value_high)
      {
        [v5 count];
        return [OUTLINED_FUNCTION_4_3() removeObjectsInRange:?];
      }
    }
  }

  return result;
}

- (char)_emittingInputsCount
{
  if (result)
  {
    v1 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    result = [objc_msgSend(v1 "inputs")];
    if (v1[71] == result - 1)
    {
      return (result - 1);
    }
  }

  return result;
}

- (void)_enqueueIrisRequest:(uint64_t)request
{
  if (request)
  {
    OUTLINED_FUNCTION_54();
    FigSimpleMutexCheckIsLockedOnThisThread();
    OUTLINED_FUNCTION_33();
    if (v3)
    {
      if (*(v1 + 376))
      {
        v4 = [objc_msgSend(v2 "settings")];
        isOriginalPhotoRecording = [v2 isOriginalPhotoRecording];
        v6 = &stru_1F216A3D0;
        if (isOriginalPhotoRecording)
        {
          v6 = @"_original";
        }

        [v2 setTemporaryMovieURL:{OUTLINED_FUNCTION_137_0(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"output%lld%@.mov", v4, v6))}];
        if ([v2 numberOfRequestedVariants] >= 2)
        {
          v79 = [objc_msgSend(v2 "settings")];
          v85 = @"_original";
          [v2 setTemporaryURLForSDOFOriginalMovie:{OUTLINED_FUNCTION_137_0(objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"output%lld%@.mov"}];
        }

        if ([objc_msgSend(v2 "settings")])
        {
          [v2 setSpatialOverCaptureTemporaryMovieURL:{isn_addVariantToURL(objc_msgSend(v2, "temporaryMovieURL"))}];
        }
      }

      [OUTLINED_FUNCTION_123(464) addObject:?];
      if ([*(v1 + 464) count] >= 2)
      {
        [v2 setIsOverlappingRequest:1];
      }

      v8 = *(v1 + 152);
      v9 = *(v1 + 160);
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v10 = *(v1 + 592);
      if (v10)
      {
        objc_msgSend_previewFrameDuration(v10);
        v11 = (v108 & 0x100000000) == 0;
      }

      else
      {
        v11 = 1;
      }

      if (v8)
      {
        if (v11)
        {
          v12 = v9;
        }

        else
        {
          v12 = v108;
        }

        *&v7 = v12 / v8;
        [v2 setTargetFrameRate:v7];
      }

      OUTLINED_FUNCTION_115_1();
      v13 = [objc_msgSend(OUTLINED_FUNCTION_34_0(400) "objectAtIndexedSubscript:"firstObject"")];
      CMSampleBufferGetPresentationTimeStamp(&v106, v13);
      memset(&v105, 0, sizeof(v105));
      v14 = [objc_msgSend(OUTLINED_FUNCTION_34_0(400) "objectAtIndexedSubscript:"lastObject"")];
      CMSampleBufferGetPresentationTimeStamp(&v105, v14);
      OUTLINED_FUNCTION_81_1();
      if ([(BWIrisStagingNode *)v1 _emittingInputsCount]== 1)
      {
        OUTLINED_FUNCTION_122_2();
      }

      else
      {
        CMSampleBufferGetPresentationTimeStamp(&v104, [objc_msgSend(*(v1 + 400) objectAtIndexedSubscript:{1), "firstObject"}]);
      }

      memset(&v103, 0, sizeof(v103));
      if ([(BWIrisStagingNode *)v1 _emittingInputsCount]== 1)
      {
        OUTLINED_FUNCTION_123_1();
      }

      else
      {
        CMSampleBufferGetPresentationTimeStamp(&v103, [objc_msgSend(*(v1 + 400) objectAtIndexedSubscript:{1), "lastObject"}]);
      }

      if (v2)
      {
        v15 = OUTLINED_FUNCTION_58_6();
        v16 = objc_msgSend_stillImageCaptureTime(v15);
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      v24 = OUTLINED_FUNCTION_56_4(v16, v17, v18, v19, v20, v21, v22, v23, v79, v85, v106.value, *&v106.timescale, v106.epoch, v92, time2.value);
      CMTimeSubtract(v26, v24, v25);
      *&time2.value = v102;
      [OUTLINED_FUNCTION_4_36() setStillTimeOffsetToVideoPrerollStartTime:?];
      if (v2)
      {
        v27 = OUTLINED_FUNCTION_58_6();
        v28 = objc_msgSend_stillImageCaptureTime(v27);
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      v36 = OUTLINED_FUNCTION_56_4(v28, v29, v30, v31, v32, v33, v34, v35, v80, v86, v105.value, *&v105.timescale, v105.epoch, v92, time2.value);
      CMTimeSubtract(v38, v36, v37);
      *&time2.value = v101;
      [OUTLINED_FUNCTION_4_36() setStillTimeOffsetToVideoPrerollStopTime:?];
      if (v2)
      {
        v39 = OUTLINED_FUNCTION_58_6();
        v40 = objc_msgSend_stillImageCaptureTime(v39);
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      v48 = OUTLINED_FUNCTION_56_4(v40, v41, v42, v43, v44, v45, v46, v47, v81, v87, v104.value, *&v104.timescale, v104.epoch, v92, time2.value);
      CMTimeSubtract(v50, v48, v49);
      *&time2.value = v100;
      [OUTLINED_FUNCTION_4_36() setStillTimeOffsetToAudioPrerollStartTime:?];
      if (v2)
      {
        v51 = OUTLINED_FUNCTION_58_6();
        v52 = objc_msgSend_stillImageCaptureTime(v51);
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      v60 = OUTLINED_FUNCTION_56_4(v52, v53, v54, v55, v56, v57, v58, v59, v82, v88, v103.value, *&v103.timescale, v103.epoch, v92, time2.value);
      CMTimeSubtract(v62, v60, v61);
      *&time2.value = v99;
      [OUTLINED_FUNCTION_4_36() setStillTimeOffsetToAudioPrerollStopTime:?];
      if (*(v1 + 816) && !*(v1 + 824) && (*(v1 + 813) & 1) == 0)
      {
        v63 = [OUTLINED_FUNCTION_34_0(400) objectAtIndexedSubscript:?];
        memset(&v98, 0, sizeof(v98));
        -[BWIrisStagingNode _hostPTSForSampleBuffer:]([v63 lastObject], v1, &v98);
        OUTLINED_FUNCTION_67_1();
        if (v2)
        {
          v64 = objc_msgSend_stillImageCaptureHostTime(v2);
          timescale = v97.timescale;
        }

        else
        {
          timescale = 0;
        }

        memset(&v96, 0, sizeof(v96));
        v66 = OUTLINED_FUNCTION_70_1(v64, timescale);
        CMTimeMake(&v96, v66, v67);
        lhs = v97;
        rhs = v96;
        CMTimeSubtract(&time2, &lhs, &rhs);
        lhs = v98;
        if (CMTimeCompare(&lhs, &time2) < 1 || (time2 = v97, lhs = v96, v72 = OUTLINED_FUNCTION_4_3(), -[BWIrisStagingNode _indexOfBufferBeforeOrEqualToHostPTS:inputIndex:tolerance:](v72, v73, v74, v75), OUTLINED_FUNCTION_79(), v3) || (v77 = [v63 objectAtIndexedSubscript:v76]) == 0)
        {
          if (dword_1ED844290)
          {
            LODWORD(rhs.value) = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            value = rhs.value;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v70 = value;
            }

            else
            {
              v70 = value & 0xFFFFFFFE;
            }

            if (v70)
            {
              v71 = OUTLINED_FUNCTION_89_2(v98.epoch, v83, v89, lhs.value, *&lhs.timescale, lhs.epoch, v92, v98.value, *&v98.timescale, time2.epoch);
              OUTLINED_FUNCTION_89_2(v97.epoch, v84, v90, lhs.value, *&lhs.timescale, lhs.epoch, v92, v97.value, *&v97.timescale, time2.epoch);
              LODWORD(lhs.value) = 136315650;
              OUTLINED_FUNCTION_48_5();
              *(&lhs.flags + 2) = v71;
              OUTLINED_FUNCTION_15_11();
              OUTLINED_FUNCTION_13();
              _os_log_send_and_compose_impl();
            }

            OUTLINED_FUNCTION_2_4();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        else
        {
          v78 = v77;
          OUTLINED_FUNCTION_21_4(813);
          [(BWIrisStagingNode *)v1 _updateIrisInfoRequiresSRLCalculation:v2 withStillReferenceSampleBuffer:v78];
          if ([v2 requiresGlobalSubjectRelightingCalculation])
          {
            *(v1 + 824) = [*(v1 + 816) startCalculationWithJPEGSampleBuffer:v78 stillImageRequestSettings:objc_msgSend(v2 stillImageCaptureSettings:{"stillImageRequestSettings"), objc_msgSend(v2, "stillImageCaptureSettings")}];
          }
        }
      }
    }
  }
}

- (void)_flushAndSuspendStaging
{
  if (result)
  {
    v1 = result;
    v2 = FigSimpleMutexCheckIsLockedOnThisThread();
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v3 = v1[50];
    v5 = OUTLINED_FUNCTION_37(v2, v4, &v13, v12);
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v3);
          }

          removeAllObjects = [*(*(&v13 + 1) + 8 * v8++) removeAllObjects];
        }

        while (v6 != v8);
        v6 = OUTLINED_FUNCTION_37(removeAllObjects, v10, &v13, v12);
      }

      while (v6);
    }

    [v1[83] flush];
    [v1[84] flush];
    OUTLINED_FUNCTION_21_4(224);
    *&v11 = OUTLINED_FUNCTION_19_1((v1 + 228)).n128_u64[0];
    *(v1 + 225) = 0;
    return [v1[2] suspendResources];
  }

  return result;
}

- (uint64_t)_momentCaptureMovieRecordingInProgress
{
  if (result)
  {
    v1 = result;
    v2 = FigSimpleMutexCheckIsLockedOnThisThread();
    v3 = *(v1 + 464);
    result = OUTLINED_FUNCTION_57(v2, v4, v5, v6, v7, v8, v9, v10, v22);
    if (result)
    {
      v11 = result;
      v12 = MEMORY[0];
      while (2)
      {
        v13 = 0;
        do
        {
          if (MEMORY[0] != v12)
          {
            objc_enumerationMutation(v3);
          }

          isMomentCaptureMovieRecording = [*(8 * v13) isMomentCaptureMovieRecording];
          if (isMomentCaptureMovieRecording)
          {
            return 1;
          }

          ++v13;
        }

        while (v11 != v13);
        result = OUTLINED_FUNCTION_57(isMomentCaptureMovieRecording, v15, v16, v17, v18, v19, v20, v21, v23);
        v11 = result;
        if (result)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (void)setBeginIrisMovieCaptureTime:(id *)time
{
  FigSimpleMutexLock();
  var3 = time->var3;
  *&self->_beginIrisMovieCaptureTime.value = *&time->var0;
  self->_beginIrisMovieCaptureTime.epoch = var3;
  self->_endIrisMovieCaptureTime = **&MEMORY[0x1E6960C70];
  [(BWIrisStagingNode *)self _resumeStaging];

  FigSimpleMutexUnlock();
}

- (void)_suspendStaging
{
  if (self)
  {
    FigSimpleMutexCheckIsLockedOnThisThread();
    if ((*(self + 224) & 1) == 0)
    {
      OUTLINED_FUNCTION_33();
      if (v2)
      {
        OUTLINED_FUNCTION_21_4(225);
      }

      else
      {

        [(BWIrisStagingNode *)self _flushAndSuspendStaging];
      }
    }
  }
}

- (void)setBufferingTime:(id *)time
{
  var3 = time->var3;
  *&self->_bufferingTime.value = *&time->var0;
  self->_bufferingTime.epoch = var3;
  [(BWIrisStagingNode *)self _updateRetainedBufferCount];
}

- (void)_updateIrisInfoRequiresSRLCalculation:(CMAttachmentBearerRef)target withStillReferenceSampleBuffer:
{
  if (result)
  {
    v4 = [objc_msgSend(CMGetAttachment(target *off_1E798A3C8];

    return [a2 setStillImageRequiresSmartStyleRenderingForSRL:v4];
  }

  return result;
}

- (unint64_t)_indexOfBufferBeforeOrEqualToHostPTS:(uint64_t)s inputIndex:(CMTime *)index tolerance:
{
  if (!self)
  {
    return 0;
  }

  v6 = [*(self + 400) objectAtIndexedSubscript:s];
  v7 = [v6 count];
  if (!v7)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v7;
  v9 = 0;
  while (1)
  {
    memset(v17, 0, sizeof(v17));
    -[BWIrisStagingNode _hostPTSForSampleBuffer:]([v6 objectAtIndexedSubscript:v9], self, v17);
    memset(&v16, 0, sizeof(v16));
    OUTLINED_FUNCTION_59_4();
    CMTimeSubtract(&v16, &lhs, &v14);
    v14 = v16;
    CMTimeAbsoluteValue(&lhs, &v14);
    v14 = *index;
    if ((CMTimeCompare(&v14, &lhs) & 0x80000000) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_59_4();
    v10 = CMTimeCompare(&lhs, &v14);
    if (v10 < 1)
    {
      ++v9;
    }

    if (v9 >= v8 || v10 >= 1)
    {
      v12 = v9 - 1;
      if (!v9)
      {
        v12 = 0;
      }

      if (v10 <= 0)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        return v12;
      }
    }
  }

  return v9;
}

- (void)_emitIrisMovieRequestWithInfo:(uint64_t)info
{
  if (info)
  {
    OUTLINED_FUNCTION_54();
    v17 = 0;
    memcpy(&__dst, MEMORY[0x1E6960CF0], sizeof(__dst));
    __dst.presentationTimeStamp = **&MEMORY[0x1E6960C80];
    if (!CMSampleBufferCreate(*MEMORY[0x1E695E480], 0, 1u, 0, 0, 0, 0, 1, &__dst, 0, 0, &v17))
    {
      if (dword_1ED844290)
      {
        v15 = 0;
        v14 = 0;
        OUTLINED_FUNCTION_111_1();
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        OUTLINED_FUNCTION_4_0();
        if (v3)
        {
          time = __dst.presentationTimeStamp;
          CMTimeGetSeconds(&time);
          OUTLINED_FUNCTION_75();
          OUTLINED_FUNCTION_5_38();
          OUTLINED_FUNCTION_5_0(v3, v5, &time, v6, &dword_1AC90E000);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_39_0(v7, v8, v9, v10, v11);
      }

      CMSetAttachment(v17, @"IrisMovieRequest", v2, 1u);
      output = [v1 output];
      [output emitSampleBuffer:v17];
      if (v17)
      {
        CFRelease(v17);
      }
    }
  }
}

- (void)_emitBuffersThroughPTS:(void *)result
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexCheckIsLockedOnThisThread();
    FigSimpleMutexCheckIsLockedOnThisThread();
    result = [objc_msgSend(v3 "inputs")];
    v4 = v3[71] == (result - 1) ? (result - 1) : result;
    if (v4)
    {
      v27 = a2;
      v25 = &v25;
      v31 = (&v25 - ((8 * v4 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = v31;
      v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      for (i = 0; i != v4; i = (i + 1))
      {
        v7 = [v3[50] objectAtIndexedSubscript:{i, v25}];
        v8 = [v3[51] objectAtIndexedSubscript:i];
        if (v8 == [MEMORY[0x1E695DFB0] null])
        {
          v10 = 0;
        }

        else
        {
          v9 = [v7 indexOfObjectIdenticalTo:{objc_msgSend(v3[51], "objectAtIndexedSubscript:", i)}];
          if (v9 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v10 = 0;
          }

          else
          {
            v10 = v9 + 1;
          }
        }

        v11 = [v7 count];
        v12 = v30;
        v31[i] = v11;
        v12[i] = v10;
        *(i + v5) = v10 >= v11;
      }

      v26 = OUTLINED_FUNCTION_138(400);
      v13 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      v14 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      do
      {
        v35 = *v27;
        if ((*v5 & 1) == 0 && (*v30 + 1) < *v31)
        {
          memset(&v34, 0, sizeof(v34));
          CMSampleBufferGetPresentationTimeStamp(&v34, [v26 objectAtIndexedSubscript:?]);
          OUTLINED_FUNCTION_103_2();
          OUTLINED_FUNCTION_123_1();
          v15 = CMTimeCompare(&time1, &time2);
          if (v15 <= 0)
          {
            v16 = OUTLINED_FUNCTION_70_1(v15, v34.timescale);
            CMTimeMake(&time1, v16, v17);
            time2 = v34;
            CMTimeSubtract(&v35, &time2, &time1);
          }
        }

        OUTLINED_FUNCTION_101_1();
        OUTLINED_FUNCTION_122_2();
        v28 = CMTimeCompare(&v34, &time1);
        v29 = 0;
        for (j = 0; j != v4; j = (j + 1))
        {
          v19 = *(*(v3 + v13[764]) + 8 * j);
          result = [objc_msgSend(objc_msgSend(v3 "inputs")];
          if (result == 1936684398 && (*(v3 + 427) & 1) == 0)
          {
            result = *(v3 + v14[808]);
            if (result)
            {
              result = [result readyToReleaseAudio];
              v20 = result;
            }

            else
            {
              v20 = 1;
            }
          }

          else
          {
            v20 = 0;
          }

          if ((v5[v19] & 1) == 0)
          {
            v21 = &v30[v19];
            v22 = v31[v19];
            OUTLINED_FUNCTION_101_1();
            result = [(BWIrisStagingNode *)v3 _emitBuffersThroughPTS:v19 forInputIndex:v21 inOutBufferIndex:v22 bufferCount:?];
            if (*(v3 + 427))
            {
              v23 = 1;
            }

            else if (result > 0)
            {
              v23 = v20;
            }

            else
            {
              v23 = 0;
            }

            *(v3 + 427) = v23;
            if (v28 && result)
            {
              v24 = *v21 == v22;
              v5[v19] = v24;
              v13 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
              v14 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
              if (!v24)
              {
                ++v29;
              }
            }

            else
            {
              v5[v19] = 1;
              v13 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
              v14 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
            }
          }
        }
      }

      while (v29 > 0);
    }
  }

  return result;
}

- (uint64_t)_emitBuffersThroughPTS:(uint64_t)s forInputIndex:(unint64_t *)index inOutBufferIndex:(unint64_t)bufferIndex bufferCount:
{
  if (!self)
  {
    return 0;
  }

  v37 = [*(self + 400) objectAtIndexedSubscript:?];
  bufferIndexCopy = *index;
  FigSimpleMutexCheckIsLockedOnThisThread();
  if (bufferIndexCopy >= bufferIndex)
  {
    v11 = 0;
  }

  else
  {
    indexCopy = index;
    v11 = 0;
    v38 = 0x1F219BEF0;
    HIDWORD(v35) = bufferIndex - bufferIndexCopy;
    while (1)
    {
      v12 = [v37 objectAtIndexedSubscript:bufferIndexCopy];
      memset(&v44, 0, sizeof(v44));
      CMSampleBufferGetPresentationTimeStamp(&v44, v12);
      time1 = *a2;
      time2 = v44;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        break;
      }

      if (!s && [OUTLINED_FUNCTION_96_1() count])
      {
        while ([OUTLINED_FUNCTION_96_1() count])
        {
          v13 = [OUTLINED_FUNCTION_96_1() objectAtIndexedSubscript:0];
          memset(&time1, 0, sizeof(time1));
          CMTimeMakeFromDictionary(&time1, v13);
          v14 = *(self + 496);
          time2 = time1;
          v15 = *v14;
          v39.epoch = *(v14 + 2);
          *&v39.value = v15;
          v16 = CMTimeCompare(&time2, &v39);
          if (v16 >= 1)
          {
            OUTLINED_FUNCTION_36_8(v16, v17, v18, v19, v20, v21, v22, v23, v35, indexCopy, v37, v38, v39.value, *&v39.timescale, v39.epoch, v40, time2.value, *&time2.timescale, time2.epoch, v42, *&time1.value);
            v39 = v44;
            if (CMTimeCompare(&time2, &v39) >= 1)
            {
              break;
            }

            *&v31 = OUTLINED_FUNCTION_36_8(BWDroppedSample, v24, v25, v26, v27, v28, v29, v30, v35, indexCopy, v37, v38, v39.value, *&v39.timescale, v39.epoch, v40, time2.value, *&time2.timescale, time2.epoch, v42, *&time1.value).n128_u64[0];
            v33 = [v32 newDroppedSampleWithReason:v38 pts:{&time2, v31}];
            [*(self + 16) emitDroppedSample:v33];
          }

          [OUTLINED_FUNCTION_96_1() removeObject:v13];
        }
      }

      [(BWIrisStagingNode *)self _emitSampleBuffer:v12 forInputIndex:s];
      v11 = (v11 + 1);
      if (++bufferIndexCopy == bufferIndex)
      {
        bufferIndexCopy = bufferIndex;
        v11 = HIDWORD(v35);
        break;
      }
    }

    index = indexCopy;
  }

  *index = bufferIndexCopy;
  return v11;
}

- (void)_processQueuedVideoFrames
{
  if (self)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v3 = [*(v1 + 400) objectAtIndexedSubscript:0];
    v4 = [v3 count];
    v5 = v4;
    if (*(v2 + 600) && (*(v2 + 444) & 1) != 0 && v4 >= 2)
    {
      memset(&v349, 0, sizeof(v349));
      v6 = v4;
      CMSampleBufferGetPresentationTimeStamp(&v349, [v3 objectAtIndexedSubscript:v4 - 1]);
      OUTLINED_FUNCTION_81_1();
      CMSampleBufferGetPresentationTimeStamp(&v348, [v3 objectAtIndexedSubscript:v5 - 2]);
      OUTLINED_FUNCTION_8_24();
      *&v7 = OUTLINED_FUNCTION_119_0().n128_u64[0];
      v9 = [v8 discontinuityExistsBetweenCurrentPTS:time previousPTS:{&time2, v7}];
      v10 = (v2 + 432);
      if (v9)
      {
        OUTLINED_FUNCTION_19_1(v10);
        if (dword_1ED844290)
        {
          v19 = OUTLINED_FUNCTION_74_1(v11, v12, v13, v14, v15, v16, v17, v18, v242, v251, v260, v269, v278, v287, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value, *&time2.timescale, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326.value);
          OUTLINED_FUNCTION_132_1(v19, v20, v21, v22, v23, v24, v25, v26, v243, v252, v261, v270, v279, v288, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value, *&time2.timescale, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326.value);
          OUTLINED_FUNCTION_30();
          time[0] = v348;
          CMTimeGetSeconds(time);
          OUTLINED_FUNCTION_8_24();
          Seconds = CMTimeGetSeconds(time);
          OUTLINED_FUNCTION_26_6(Seconds);
          v28 = OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_141(v28, v29, v30, v31, v32);
          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_56_0(v55, v56, v57, v58, v59);
        }
      }

      else
      {
        time[0] = v349;
        *&time2.value = *v10;
        time2.epoch = *(v2 + 448);
        v33 = CMTimeCompare(time, &time2);
        if ((v33 & 0x80000000) == 0)
        {
          if (dword_1ED844290)
          {
            v41 = OUTLINED_FUNCTION_74_1(v33, v34, v35, v36, v37, v38, v39, v40, v242, v251, v260, v269, v278, v287, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value, *&time2.timescale, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326.value);
            OUTLINED_FUNCTION_132_1(v41, v42, v43, v44, v45, v46, v47, v48, v244, v253, v262, v271, v280, v289, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value, *&time2.timescale, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326.value);
            OUTLINED_FUNCTION_30();
            OUTLINED_FUNCTION_8_24();
            CMTimeGetSeconds(time);
            time[0] = *(v2 + 432);
            v49 = CMTimeGetSeconds(time);
            OUTLINED_FUNCTION_26_6(v49);
            v50 = OUTLINED_FUNCTION_11_0();
            OUTLINED_FUNCTION_141(v50, v51, v52, v53, v54);
            OUTLINED_FUNCTION_2_4();
            OUTLINED_FUNCTION_56_0(v60, v61, v62, v63, v64);
          }

          OUTLINED_FUNCTION_19_1((v2 + 432));
        }
      }

      v5 = v6;
    }

    *v345 = 0u;
    v346 = 0u;
    *v343 = 0u;
    v344 = 0u;
    reverseObjectEnumerator = [v3 reverseObjectEnumerator];
    v66 = [reverseObjectEnumerator countByEnumeratingWithState:v343 objects:v342 count:16];
    v67 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    if (v66)
    {
      v68 = v66;
      v69 = *v344;
      v70 = v5;
      while (2)
      {
        v71 = 0;
        v72 = v70 - v68;
        do
        {
          if (*v344 != v69)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v73 = *(v343[1] + 8 * v71);
          memset(time, 0, 24);
          CMSampleBufferGetPresentationTimeStamp(time, v73);
          time2 = time[0];
          v349 = *(v2 + 328);
          if (CMTimeCompare(&time2, &v349) < 1)
          {
            v74 = v70 - v71;
            goto LABEL_23;
          }

          ++v71;
        }

        while (v68 != v71);
        v68 = [reverseObjectEnumerator countByEnumeratingWithState:v343 objects:v342 count:16];
        v70 = v72;
        if (v68)
        {
          continue;
        }

        break;
      }
    }

    v74 = 0;
LABEL_23:
    if (v74 < v5)
    {
      v75 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      v278 = v5;
      while (1)
      {
        v76 = [v3 objectAtIndexedSubscript:v74];
        memset(&v349, 0, sizeof(v349));
        CMSampleBufferGetPresentationTimeStamp(&v349, v76);
        v77 = [BWIrisStagingNode _emissionStatusForSampleBuffer:v2];
        switch(v77)
        {
          case 1:
          case 2:
            v78 = v77;
            v79 = (v2 + 304);
            if ((*(v2 + 316) & 1) == 0)
            {
              *v79 = *&v349.value;
              *(v2 + 320) = v349.epoch;
            }

            memcpy(time, MEMORY[0x1E6960CF0], 0x48uLL);
            *&time[1].value = *v79;
            time[1].epoch = *(v2 + 320);
            OUTLINED_FUNCTION_88_1(&time2);
            v348 = *(v2 + 152);
            CMTimeSubtract(time, &v348, &time2);
            OUTLINED_FUNCTION_81_1();
            time2 = time[1];
            rhs = time[0];
            v80 = CMTimeAdd(&v348, &time2, &rhs);
            if (*(v2 + 512) == 2)
            {
              *v339 = 0u;
              v340 = 0u;
              *v337 = 0u;
              v338 = 0u;
              v154 = *(v2 + v75[737]);
              v155 = OUTLINED_FUNCTION_134_1(v80, v81, v82, v83, v84, v85, v86, v87, v242, v251, v260, v3, v278, v287, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value, *&time2.timescale, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326.value, *&v326.timescale, v326.epoch, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336);
              if (!v155)
              {
LABEL_81:
                rhs = v349;
                OUTLINED_FUNCTION_92_2(v155, v156, v157, v158, v159, v160, v161, v162, v248, v257, v266, v275, v284, v293, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value);
                [(BWIrisStagingNode *)v2 _emitIrisRequestsOlderThanTime:&time2 withEndingVideoSampleTimingInfo:v210, v211, v212, v213, v214];
                v3 = v269;
                v67 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                v75 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                goto LABEL_53;
              }

              v163 = v155;
              v164 = *v338;
              while (2)
              {
                v165 = 0;
LABEL_62:
                if (*v338 != v164)
                {
                  objc_enumerationMutation(v154);
                }

                v166 = *(v337[1] + 8 * v165);
                if (v166)
                {
                  v167 = objc_msgSend_stillImageCaptureTime(*(v337[1] + 8 * v165));
                }

                else
                {
                  OUTLINED_FUNCTION_67_1();
                }

                if ((OUTLINED_FUNCTION_13_17(v167, v168, v169, v170, v171, v172, v173, v174, v248, v257, v266, v275, v284, v293, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value) & 0x80000000) == 0)
                {
                  if (v166)
                  {
                    started = objc_msgSend_movieStartTime(v166);
                  }

                  else
                  {
                    OUTLINED_FUNCTION_67_1();
                  }

                  v184 = OUTLINED_FUNCTION_13_17(started, v177, v178, v179, v180, v181, v182, v183, v248, v257, v266, v275, v284, v293, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value);
                  if (v78 == 2 && (v184 & 0x80000000) != 0)
                  {
                    OUTLINED_FUNCTION_30_4(v184, v185, v186, v187, v188, v189, v190, v191, v248, v257, v266, v275, v284, v293, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), *&time2.value, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, *&v326.value, v326.epoch);
                    OUTLINED_FUNCTION_88_1(&v326);
                    v192 = CMTimeSubtract(&time2, &rhs, &v326);
                    v200 = OUTLINED_FUNCTION_29_3(v192, v193, v194, v195, v196, v197, v198, v199, v249, v258, v267, v276, v285, v294, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), *&time2.value, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, *&v326.value, v326.epoch);
                    *&v175 = OUTLINED_FUNCTION_51_5(v200, v201, v202, v203, v204, v205, v206, v207, v208, v250, v259, v268, v277, v286, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), v209, time2.value).n128_u64[0];
                    break;
                  }

LABEL_79:
                  if (v163 == ++v165)
                  {
                    v155 = OUTLINED_FUNCTION_134_1(v184, v185, v186, v187, v188, v189, v190, v191, v248, v257, v266, v275, v284, v293, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value, *&time2.timescale, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, v326.value, *&v326.timescale, v326.epoch, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336);
                    v163 = v155;
                    if (!v155)
                    {
                      goto LABEL_81;
                    }

                    continue;
                  }

                  goto LABEL_62;
                }

                break;
              }

              if (v166)
              {
                v184 = objc_msgSend_movieTrimEndTime(v166, v175);
                if ((v324 & 0x100000000) != 0)
                {
                  goto LABEL_79;
                }
              }

              else
              {
                v323 = 0;
                v324 = 0;
                v325 = 0;
              }

              v184 = [v166 setMovieTrimEndTime:{&time2, OUTLINED_FUNCTION_119_0().n128_f64[0]}];
              goto LABEL_79;
            }

            *v314 = 0u;
            v315 = 0u;
            *v312 = 0u;
            v313 = 0u;
            v88 = *(v2 + v75[737]);
            v89 = [v88 countByEnumeratingWithState:v312 objects:&v296 count:16];
            if (v89)
            {
              v90 = v89;
              v269 = v3;
              v287 = *v313;
              v91 = 0;
              do
              {
                v92 = 0;
                v93 = v91;
                v260 = v91 + v90;
                do
                {
                  if (*v313 != v287)
                  {
                    objc_enumerationMutation(v88);
                  }

                  v94 = *(v312[1] + 8 * v92);
                  if (v94)
                  {
                    v95 = objc_msgSend_stillImageCaptureTime(*(v312[1] + 8 * v92));
                  }

                  else
                  {
                    OUTLINED_FUNCTION_67_1();
                  }

                  if ((OUTLINED_FUNCTION_13_17(v95, v96, v97, v98, v99, v100, v101, v102, v242, v251, v260, v269, v278, v287, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value) & 0x80000000) != 0)
                  {
                    v139 = v78 == 2;
                    v138 = v94;
                  }

                  else
                  {
                    if (v94)
                    {
                      v104 = objc_msgSend_movieStartTime(v94);
                    }

                    else
                    {
                      OUTLINED_FUNCTION_67_1();
                    }

                    v112 = OUTLINED_FUNCTION_13_17(v104, v105, v106, v107, v108, v109, v110, v111, v245, v254, v263, v272, v281, v290, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value);
                    if (v78 != 2 || (v112 & 0x80000000) == 0)
                    {
                      v91 = v93;
                      v67 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                      goto LABEL_50;
                    }

                    OUTLINED_FUNCTION_30_4(v112, v113, v114, v115, v116, v117, v118, v119, v242, v251, v260, v269, v278, v287, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), *&time2.value, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, *&v326.value, v326.epoch);
                    OUTLINED_FUNCTION_88_1(&v326);
                    v120 = CMTimeSubtract(&time2, &rhs, &v326);
                    v128 = OUTLINED_FUNCTION_29_3(v120, v121, v122, v123, v124, v125, v126, v127, v246, v255, v264, v273, v282, v291, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), *&time2.value, time2.epoch, v317, v318, v319, v320, v321, v322, v323, v324, v325, *&v326.value, v326.epoch);
                    *&v103 = OUTLINED_FUNCTION_51_5(v128, v129, v130, v131, v132, v133, v134, v135, v136, v247, v256, v265, v274, v283, v292, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), v137, time2.value).n128_u64[0];
                    v138 = v94;
                    v139 = 1;
                  }

                  v140 = [v138 setIsHardCut:{v139, v103}];
                  OUTLINED_FUNCTION_92_2(v140, v141, v142, v143, v144, v145, v146, v147, v245, v254, v263, v272, v281, v290, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value);
                  v148 = OUTLINED_FUNCTION_112_3();
                  [(BWIrisStagingNode *)v148 _emitIrisRequest:v149 withEndingVideoSampleTimingInfo:v150];
                  ++v93;
                  ++v92;
                  v67 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
                }

                while (v90 != v92);
                v151 = [v88 countByEnumeratingWithState:v312 objects:&v296 count:16];
                v90 = v151;
                v91 = v260;
              }

              while (v151);
LABEL_50:
              v3 = v269;
              v75 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
              if (v91)
              {
                [OUTLINED_FUNCTION_34_0(464) removeObjectsInRange:?];
              }
            }

            if (![*(v2 + v75[737]) count])
            {
              goto LABEL_54;
            }

LABEL_53:
            OUTLINED_FUNCTION_24_7(304);
LABEL_54:
            v5 = v278;
LABEL_56:
            if (![*(v2 + v75[737]) count])
            {
              goto LABEL_97;
            }

            if (++v74 == v5)
            {
              goto LABEL_84;
            }

            break;
          case 3:
            *&v152 = OUTLINED_FUNCTION_8_24().n128_u64[0];
            [v153 stagingNode:v2 waitingToEmitFrameWithPTS:{time, v152}];
            goto LABEL_56;
          case 4:
            memcpy(time, MEMORY[0x1E6960CF0], 0x48uLL);
            time[1] = *(v2 + 304);
            OUTLINED_FUNCTION_103_2();
            OUTLINED_FUNCTION_92_2(v215, v216, v217, v218, v219, v220, v221, v222, v242, v251, v260, v269, v278, v287, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), time2.value);
            [(BWIrisStagingNode *)v2 _emitIrisRequestsOlderThanTime:&time2 withEndingVideoSampleTimingInfo:v223, v224, v225, v226, v227];
            OUTLINED_FUNCTION_24_7(304);
            goto LABEL_56;
          case 5:
            *&v228 = OUTLINED_FUNCTION_8_24().n128_u64[0];
            [v229 stagingNode:v2 waitingToEmitFrameWithPTS:{time, v228}];
            goto LABEL_84;
          default:
            goto LABEL_56;
        }
      }
    }

LABEL_84:
    v230 = (v2 + 304);
    if ((*(v2 + 316) & 1) == 0)
    {
      goto LABEL_97;
    }

    memset(time, 0, 24);
    if (*(v2 + 528) && (*(v2 + 428) & 1) == 0)
    {
      *&time[0].value = *v230;
      time[0].epoch = *(v2 + 320);
    }

    else
    {
      CMTimeMake(&time2, 150, 1000);
      *&v349.value = *v230;
      v349.epoch = *(v2 + 320);
      CMTimeSubtract(time, &v349, &time2);
    }

    if (*(v2 + 444))
    {
      v231 = [v3 count];
      if (v231 + ~[*(v2 + 600) maximumNumberOfPreDiscontinuityFramesNeededToSatisfyAllDropFrameRecipes] < 0)
      {
        *&time[0].value = *MEMORY[0x1E6960C70];
        epoch = *(MEMORY[0x1E6960C70] + 16);
      }

      else
      {
        OUTLINED_FUNCTION_67_1();
        PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&time2, [v3 objectAtIndexedSubscript:?]);
        v349 = time[0];
        OUTLINED_FUNCTION_51_5(PresentationTimeStamp, v233, v234, v235, v236, v237, v238, v239, *&time[0].value, v242, v251, v260, v269, v278, v287, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306, v307, v308, v309, v310, v311, v312[0], v312[1], v313, *(&v313 + 1), v314[0], v314[1], v315, *(&v315 + 1), v240, time2.value);
        if (CMTimeCompare(&v349, &v348) < 0)
        {
          goto LABEL_95;
        }

        *&time[0].value = *&time2.value;
        epoch = time2.epoch;
      }

      time[0].epoch = epoch;
    }

LABEL_95:
    if (time[0].flags)
    {
      time2 = time[0];
      [(BWIrisStagingNode *)v2 _emitBuffersThroughPTS:?];
    }

LABEL_97:
    OUTLINED_FUNCTION_128_0();
  }
}

- (uint64_t)_emissionStatusForSampleBuffer:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_54();
    memset(&v58, 0, sizeof(v58));
    CMSampleBufferGetPresentationTimeStamp(&v58, v3);
    v56 = 0uLL;
    v57 = 0;
    LOBYTE(v54) = v58.value;
    OUTLINED_FUNCTION_43_6(v1 + 152);
    v12 = OUTLINED_FUNCTION_56_4(v4, v5, v6, v7, v8, v9, v10, v11, v46, v49, *v52, *&v52[8], *&v52[16], v53, v54);
    CMTimeAdd(v14, v12, v13);
    v54 = 0uLL;
    v55 = 0;
    OUTLINED_FUNCTION_43_6(v1 + 200);
    v23 = OUTLINED_FUNCTION_56_4(v15, v16, v17, v18, v19, v20, v21, v22, v47, v50, *v52, *&v52[8], *&v52[16], v53, 0);
    if (CMTimeCompare(v23, v24) >= 1)
    {
      lastObject = [*(v1 + 464) lastObject];
      if (!lastObject)
      {
        return 1;
      }

      objc_msgSend_stillImageCaptureTime(lastObject);
      OUTLINED_FUNCTION_43_6(v1 + 200);
      v34 = OUTLINED_FUNCTION_56_4(v26, v27, v28, v29, v30, v31, v32, v33, v48, v51, *v52, *&v52[8], *&v52[16], v53, v54);
      if (CMTimeCompare(v34, v35) < 0)
      {
        return 1;
      }
    }

    if (([(BWIrisStagingNode *)v1 _momentCaptureMovieRecordingInProgress]& 1) != 0)
    {
      return 4;
    }

    if (![CMGetAttachment(v2 @"BufferRequiresCuttingInLivePhotoMovie"])
    {
      if (*(v1 + 512))
      {
        OUTLINED_FUNCTION_28_5();
        [(BWIrisStagingNode *)v2 _hostPTSForSampleBuffer:v1, &v54];
        v40 = *(v1 + 528);
        *v52 = v54;
        *&v52[16] = v55;
        return [v40 emissionStatusForHostPTS:v52];
      }

      return 4;
    }

    if (dword_1ED844290)
    {
      OUTLINED_FUNCTION_111_1();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_115_0();
      if (v38)
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }

      if (v39)
      {
        OUTLINED_FUNCTION_89_2(v58.epoch, v48, v51, *v52, *&v52[8], *&v52[16], v53, v58.value, *&v58.timescale, v55);
        *v52 = 136315650;
        OUTLINED_FUNCTION_48_5();
        *&v52[14] = v1;
        OUTLINED_FUNCTION_15_11();
        OUTLINED_FUNCTION_13();
        _os_log_send_and_compose_impl();
      }

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_13_0(v41, v42, v43, v44, v45);
    }

    return 2;
  }

  return result;
}

- (uint64_t)_emitIrisRequestsOlderThanTime:(const void *)time withEndingVideoSampleTimingInfo:(uint64_t)info
{
  if (result)
  {
    timeCopy = time;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v9 = *(result + 464);
    result = OUTLINED_FUNCTION_124_2(result, a2, time, info, a5, a6, a7, a8, v36, v38, v40, v42, v45, v47, v48, v50, v52, v54, *v56, *&v56[8], *&v56[16], v57, *v58, *&v58[8], *&v58[16], *&v58[24], time1[0].value, *&time1[0].timescale, time1[0].epoch, time1[1].value, *&time1[1].timescale, time1[1].epoch, time1[2].value, *&time1[2].timescale, time1[2].epoch, v60, v61, v62, v63, v64, v65, v66, v67, v68, time2[0].value, *&time2[0].timescale, time2[0].epoch, time2[1].value, *&time2[1].timescale, time2[1].epoch, time2[2].value, *&time2[2].timescale, time2[2].epoch, time2[3].value, *&time2[3].timescale, time2[3].epoch);
    if (result)
    {
      v11 = result;
      v12 = 0;
      v55 = *v71;
      *&v10 = 136316418;
      v46 = v10;
LABEL_4:
      v13 = 0;
      v43 = v12 + v11;
      while (1)
      {
        if (*v71 != v55)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v70 + 1) + 8 * v13);
        memset(&time2[3], 0, sizeof(CMTime));
        v15 = OUTLINED_FUNCTION_112_3();
        [(BWIrisStagingNode *)v15 _maxPTSForIrisRequest:v16, v17];
        OUTLINED_FUNCTION_99_1();
        time2[0] = time2[3];
        result = CMTimeCompare(time1, time2);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        memcpy(time2, MEMORY[0x1E6960CF0], 0x48uLL);
        if ([v14 isMomentCaptureMovieRecording])
        {
          v51 = v9;
          v53 = timeCopy;
          time2[1] = time2[3];
          HIDWORD(v68) = 0;
          BYTE3(v68) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v19 = HIDWORD(v68);
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, BYTE3(v68)))
          {
            v20 = v19;
          }

          else
          {
            v20 = v19 & 0xFFFFFFFE;
          }

          if (v20)
          {
            v41 = [objc_msgSend(v14 "settings")];
            OUTLINED_FUNCTION_99_1();
            Seconds = CMTimeGetSeconds(time1);
            time1[0] = *(v53 + 24);
            v22 = CMTimeGetSeconds(time1);
            time1[0] = *v53;
            v23 = CMTimeGetSeconds(time1);
            time1[0] = time2[3];
            v24 = CMTimeGetSeconds(time1);
            *v56 = v46;
            *&v56[4] = "[BWIrisStagingNode _emitIrisRequestsOlderThanTime:withEndingVideoSampleTimingInfo:]";
            *&v56[12] = 2048;
            *&v56[14] = v41;
            *&v56[22] = 2048;
            v57 = *&Seconds;
            *v58 = 2048;
            *&v58[2] = v22;
            *&v58[10] = 2048;
            *&v58[12] = v23;
            *&v58[20] = 2048;
            *&v58[22] = v24;
            LODWORD(v39) = 62;
            v37 = v56;
            OUTLINED_FUNCTION_13();
            _os_log_send_and_compose_impl();
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          timeCopy = v53;
        }

        else
        {
          memcpy(time2, timeCopy, 0x48uLL);
        }

        memcpy(time1, time2, sizeof(time1));
        v25 = OUTLINED_FUNCTION_112_3();
        [(BWIrisStagingNode *)v25 _emitIrisRequest:v26 withEndingVideoSampleTimingInfo:v27];
        ++v12;
        if (v11 == ++v13)
        {
          result = OUTLINED_FUNCTION_124_2(v28, v29, v30, v31, v32, v33, v34, v35, v37, v39, v41, v43, v46, *(&v46 + 1), v49, v51, v53, v55, *v56, *&v56[8], *&v56[16], v57, *v58, *&v58[8], *&v58[16], *&v58[24], time1[0].value, *&time1[0].timescale, time1[0].epoch, time1[1].value, *&time1[1].timescale, time1[1].epoch, time1[2].value, *&time1[2].timescale, time1[2].epoch, v60, v61, v62, v63, v64, v65, v66, v67, v68, time2[0].value, *&time2[0].timescale, time2[0].epoch, time2[1].value, *&time2[1].timescale, time2[1].epoch, time2[2].value, *&time2[2].timescale, time2[2].epoch, time2[3].value, *&time2[3].timescale, time2[3].epoch);
          v11 = result;
          v12 = v44;
          if (result)
          {
            goto LABEL_4;
          }

          break;
        }
      }

      if (v12 >= 1)
      {
        return [OUTLINED_FUNCTION_34_0(464) removeObjectsInRange:?];
      }
    }
  }

  return result;
}

- (void)_fillInStartAndTrimTimesForMasterMovieWithInfo:(uint64_t)info
{
  if (info)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v4 = v3;
    v6 = v5;
    memset(v263, 0, 24);
    if (v3)
    {
      v7 = OUTLINED_FUNCTION_82_2();
      objc_msgSend_stillImageCaptureTime(v7);
    }

    else
    {
      memset(&v235, 0, sizeof(v235));
    }

    OUTLINED_FUNCTION_6_3(v6 + 128);
    v16 = OUTLINED_FUNCTION_117_1(v8, v9, v10, v11, v12, v13, v14, v15, v200, v208, v216, v224, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v235.value);
    CMTimeSubtract(v18, v16, v17);
    v19 = *MEMORY[0x1E6960C70];
    value = *MEMORY[0x1E6960C70];
    v20 = *(MEMORY[0x1E6960C70] + 8);
    v21 = *(MEMORY[0x1E6960C70] + 12);
    timescale = v20;
    v22 = *(MEMORY[0x1E6960C70] + 16);
    v260 = v263[0];
    v23 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v24 = *(v6 + 512);
    if ((v24 - 1) >= 2)
    {
      if (!v24)
      {
        OUTLINED_FUNCTION_76_1();
      }
    }

    else
    {
      memset(&v235, 0, sizeof(v235));
      if (v4)
      {
        v25 = OUTLINED_FUNCTION_109_1();
        objc_msgSend_stillImageCaptureHostTime(v25);
      }

      else
      {
        OUTLINED_FUNCTION_66();
      }

      v259 = *(v6 + 128);
      CMTimeSubtract(&v235, &lhs, &v259);
      OUTLINED_FUNCTION_66();
      if (v4)
      {
        v26 = OUTLINED_FUNCTION_109_1();
        objc_msgSend_stillImageCaptureHostTime(v26);
      }

      memset(&v259, 0, sizeof(v259));
      v27 = *(v6 + 528);
      if (v27 && (v258 = lhs, time = v235, objc_msgSend_beginTrimmingForStillImageHostPTS_minimumPTS_(v27), (v259.flags & 1) != 0))
      {
        HostTimeClock = CMClockGetHostTimeClock();
        v61 = *(v6 + 504);
        time = v259;
        CMSyncConvertTime(&v258, &time, HostTimeClock, v61);
        value = v258.value;
        flags = v258.flags;
        timescale = v258.timescale;
        epoch = v258.epoch;
        if (v4)
        {
          objc_msgSend_stillImageCaptureTime(v4);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        *(&v255 + 1) = __PAIR64__(flags, timescale);
        v256 = epoch;
        v254 = v263[0];
        *&v255 = value;
        [(BWIrisStagingNode *)v6 _adjustedStartTimeForTrimmedStartTime:&time.value ensuringAtLeast3FramesBeforeStillTime:0 ensuringFrameIsAfterTrimmedStartTime:&v254.value butNotEarlierThanOriginalStartTime:0 adjustedStartBufferIndexOut:&v258];
        value = v258.value;
        v21 = v258.flags;
        timescale = v258.timescale;
        v22 = v258.epoch;
        if (*(v6 + 512) == 1)
        {
          v263[0].value = value;
          *&v263[0].timescale = __PAIR64__(v258.flags, timescale);
          v263[0].epoch = v258.epoch;
        }
      }

      else
      {
        value = v19;
        timescale = v20;
      }
    }

    if ((v21 & 1) == 0)
    {
      OUTLINED_FUNCTION_38_0();
      if (!v28)
      {
        goto LABEL_50;
      }
    }

    *&v29 = OUTLINED_FUNCTION_9_21().n128_u64[0];
    v253 = OUTLINED_FUNCTION_135_1(v30, v31, v32, v33, v34, v35, v36, v37, v201, v209, v217, v225, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v29);
    OUTLINED_FUNCTION_79();
    if (v28)
    {
      goto LABEL_50;
    }

    v38 = [*(v6 + 400) objectAtIndexedSubscript:0];
    PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v235, [v38 objectAtIndexedSubscript:v253]);
    OUTLINED_FUNCTION_50_5(PresentationTimeStamp, v40, v41, v42, v43, v44, v45, v46, v47, v202, v210, v218, v226, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v48, v235.value);
    if (*(v6 + 188))
    {
      v235 = v263[0];
      OUTLINED_FUNCTION_6_3(v6 + 176);
      v57 = OUTLINED_FUNCTION_117_1(v49, v50, v51, v52, v53, v54, v55, v56, v203, v211, v219, v227, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v235.value);
      if (CMTimeCompare(v57, v58) < 0)
      {
        if (v4)
        {
          v59 = OUTLINED_FUNCTION_109_1();
          objc_msgSend_stillImageCaptureTime(v59);
        }

        else
        {
          OUTLINED_FUNCTION_66();
        }

        v259 = *(v6 + 176);
        v258 = v260;
        v64 = [(BWIrisStagingNode *)v6 _adjustedStartTimeForTrimmedStartTime:&lhs.value ensuringAtLeast3FramesBeforeStillTime:1 ensuringFrameIsAfterTrimmedStartTime:&v258.value butNotEarlierThanOriginalStartTime:&v253 adjustedStartBufferIndexOut:&v235];
        [v4 setMovieStartTimeRequiresCutting:{1, OUTLINED_FUNCTION_50_5(v64, v65, v66, v67, v68, v69, v70, v71, v72, v203, v211, v219, v227, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v73, v235.value).n128_f64[0]}];
      }
    }

    v251 = 0;
    v252 = 0x7FFFFFFFFFFFFFFFLL;
    v250 = 0uLL;
    if (v4)
    {
      v74 = OUTLINED_FUNCTION_82_2();
      objc_msgSend_stillImageCaptureTime(v74);
    }

    else
    {
      memset(&v235, 0, sizeof(v235));
    }

    [(BWIrisStagingNode *)v6 _mostRecentCuttingBufferPTSBeforePTS:&v252 cuttingBufferIndexOut:&v250];
    if (BYTE12(v250))
    {
      OUTLINED_FUNCTION_9_21();
      v83 = OUTLINED_FUNCTION_117_1(v75, v76, v77, v78, v79, v80, v81, v82, v203, v211, v219, v227, v250, *(&v250 + 1), v251, v233, v234, *(&v234 + 1), v235.value);
      if (CMTimeCompare(v83, v84) < 0)
      {
        OUTLINED_FUNCTION_102_1();
        *&v263[0].value = v250;
        v263[0].epoch = v251;
        v253 = v252;
        v85 = [v4 setMovieStartTimeRequiresCutting:1];
        if (dword_1ED844290)
        {
          v93 = OUTLINED_FUNCTION_75_1(v85, v86, v87, v88, v89, v90, v91, v92, v203, v211, v219, v2, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v235.value, *&v235.timescale, v235.epoch, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, *(&v250 + 1), v251, v252, v253, v254.value, *&v254.timescale, v254.epoch, v255, *(&v255 + 1), v256, time.value);
          OUTLINED_FUNCTION_133_2(v93, v94, v95, v96, v97, v98, v99, v100, v204, v212, v220, v228, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v235.value, *&v235.timescale, v235.epoch, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, *(&v250 + 1), v251, v252, v253, v254.value, *&v254.timescale, v254.epoch, v255, *(&v255 + 1), v256, time.value);
          OUTLINED_FUNCTION_30();
          if (v2)
          {
            v109 = OUTLINED_FUNCTION_93_0(v101, v102, v103, v104, v105, v106, v107, v108, v203, v211, v219, v227, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), *&v235.value, v235.epoch);
            OUTLINED_FUNCTION_9_21();
            Seconds = CMTimeGetSeconds(&v235);
            [objc_msgSend(v4 "settings")];
            LODWORD(lhs.value) = 136315906;
            OUTLINED_FUNCTION_75();
            *(&lhs.flags + 2) = v109;
            HIWORD(lhs.epoch) = v111;
            v233 = *&Seconds;
            LOWORD(v234) = v111;
            *(&v234 + 2) = v112;
            OUTLINED_FUNCTION_5_38();
            v113 = OUTLINED_FUNCTION_11_0();
            OUTLINED_FUNCTION_141(v113, v114, v115, v116, v117);
          }

          OUTLINED_FUNCTION_2_4();
          OUTLINED_FUNCTION_56_0(v118, v119, v120, v121, v122);
          LODWORD(v2) = v227;
          v23 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
        }
      }
    }

    OUTLINED_FUNCTION_38_0();
    if (v28 && [objc_msgSend(v4 "settings")])
    {
      *&v147 = OUTLINED_FUNCTION_102_1().n128_u64[0];
      v148 = v253;
      movieStartTimeRequiresCutting = [v4 movieStartTimeRequiresCutting];
      if (v4)
      {
        v150 = OUTLINED_FUNCTION_109_1();
        objc_msgSend_stillImageCaptureTime(v150);
      }

      else
      {
        OUTLINED_FUNCTION_66();
      }

      v151 = [(BWIrisStagingNode *)v6 _adjustedStartTimeForSmartStyle:v148 allowSearchBackward:movieStartTimeRequiresCutting ^ 1u searchEndPTS:&lhs adjustedStartBufferIndexOut:&v253, &v235];
      v169 = OUTLINED_FUNCTION_50_5(v151, v152, v153, v154, v155, v156, v157, v158, v159, v203, v211, v219, v227, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v160, v235.value);
      if (dword_1ED844290)
      {
        v170 = OUTLINED_FUNCTION_75_1(v161, v162, v163, v164, v165, v166, v167, v168, v203, v211, v219, v227, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v235.value, *&v235.timescale, v235.epoch, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, *(&v250 + 1), v251, v252, v253, v254.value, *&v254.timescale, v254.epoch, v255, *(&v255 + 1), v256, time.value);
        OUTLINED_FUNCTION_133_2(v170, v171, v172, v173, v174, v175, v176, v177, v207, v215, v223, v231, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), v235.value, *&v235.timescale, v235.epoch, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, *(&v250 + 1), v251, v252, v253, v254.value, *&v254.timescale, v254.epoch, v255, *(&v255 + 1), v256, time.value);
        OUTLINED_FUNCTION_30();
        if (v2)
        {
          v186 = OUTLINED_FUNCTION_93_0(v178, v179, v180, v181, v182, v183, v184, v185, v203, v211, v219, v227, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1), *&v235.value, v235.epoch);
          OUTLINED_FUNCTION_9_21();
          v187 = CMTimeGetSeconds(&v235);
          [objc_msgSend(v4 "settings")];
          LODWORD(lhs.value) = 136315906;
          OUTLINED_FUNCTION_75();
          *(&lhs.flags + 2) = v186;
          HIWORD(lhs.epoch) = v188;
          v233 = *&v187;
          LOWORD(v234) = v188;
          *(&v234 + 2) = v189;
          OUTLINED_FUNCTION_5_38();
          v190 = OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_141(v190, v191, v192, v193, v194);
        }

        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_56_0(v195, v196, v197, v198, v199);
        v23 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
      }

      [(BWIrisStagingNode *)v6 _updateSmartStyleRenderingBypassedForIrisMovieInfo:v4 startBufferIndex:v253, v169];
    }

    OUTLINED_FUNCTION_72_1();
    v235.timescale = v123;
    v235.flags = v21;
    v235.epoch = v22;
    v132 = OUTLINED_FUNCTION_117_1(v124, v125, v126, v127, v128, v129, v130, v131, v203, v211, v219, v227, v263[0].value, *&v263[0].timescale, v263[0].epoch, v233, v234, *(&v234 + 1), v235.value);
    if (CMTimeCompare(v132, v133) < 0)
    {
      OUTLINED_FUNCTION_76_1();
    }

    if (*(v6 + v23[744]) == 2)
    {
      OUTLINED_FUNCTION_72_1();
      v235.timescale = v134;
      v235.flags = v21;
      v235.epoch = v22;
      v253 = OUTLINED_FUNCTION_135_1(v135, v136, v137, v138, v139, v140, v141, v142, v205, v213, v221, v229, lhs.value, *&lhs.timescale, lhs.epoch, v233, v234, *(&v234 + 1));
      OUTLINED_FUNCTION_79();
      if (v28)
      {
        OUTLINED_FUNCTION_0();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v206, v214, v222, v230, LODWORD(lhs.value), *&lhs.timescale, lhs.epoch, v233);
        goto LABEL_50;
      }

      v143 = [*(v6 + 400) objectAtIndexedSubscript:0];
      CMSampleBufferGetPresentationTimeStamp(&v235, [v143 objectAtIndexedSubscript:v253]);
      value = v235.value;
      v144 = v235.flags;
      timescale = v235.timescale;
      v145 = v235.epoch;
    }

    else
    {
      value = v263[0].value;
      v144 = v263[0].flags;
      timescale = v263[0].timescale;
      v145 = v263[0].epoch;
    }

    [v4 setMovieStartTime:{&v235, OUTLINED_FUNCTION_9_21().n128_f64[0]}];
    OUTLINED_FUNCTION_72_1();
    v235.timescale = v146;
    v235.flags = v144;
    v235.epoch = v145;
    [v4 setMovieTrimStartTime:&v235];
LABEL_50:
    OUTLINED_FUNCTION_128_0();
  }
}

- (void)_fillInRefMovieStartAndTrimTimesForStillImageTimesBeforeTime:(uint64_t)time
{
  if (time)
  {
    OUTLINED_FUNCTION_60();
    v4 = v3;
    v6 = v5;
    v481 = 0u;
    v482 = 0u;
    v479 = 0u;
    v480 = 0u;
    v7 = *(v5 + 464);
    v14 = OUTLINED_FUNCTION_131_1(v5, v3, v8, v9, v10, v11, v12, v13, v235, v246, v257, v268, v278, v289, v299, v310, v321, v332, v343, v354, v364, v375, v386, v396, v407, v418, v428, v439, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474, *(&v474 + 1), v475);
    if (!v14)
    {
      goto LABEL_63;
    }

    v15 = v14;
    OUTLINED_FUNCTION_106_1();
    v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
    v322 = *v25;
    v333 = *v480;
    v311 = *v26;
    *&v27 = 136315906;
    *v258 = v27;
    *&v27 = 136315650;
    *v279 = v27;
    v300 = v4;
    while (1)
    {
      v28 = 0;
      do
      {
        if (*v480 != v333)
        {
          objc_enumerationMutation(v7);
        }

        v29 = *(*(&v479 + 1) + 8 * v28);
        if (v29)
        {
          started = objc_msgSend_movieStartTime(v29);
          if ((v477 & 0x100000000) != 0)
          {
            goto LABEL_49;
          }

          started = objc_msgSend_stillImageCaptureTime(v29);
        }

        else
        {
          v476 = 0;
          v477 = 0;
          v478 = 0;
          memset(&time, 0, sizeof(time));
        }

        v30 = OUTLINED_FUNCTION_62_2(started, v17, v18, v19, v20, v21, v22, v23, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, *v4, v4[1], v4[2], *&v451, v452, *(&v452 + 1), time.value);
        v32 = CMTimeCompare(v30, v31);
        if (v32 > 0)
        {
          goto LABEL_63;
        }

        v474 = 0uLL;
        v475 = 0;
        if (v29)
        {
          v32 = objc_msgSend_stillImageCaptureTime(v29);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v40 = OUTLINED_FUNCTION_62_2(v32, v33, v34, v35, v36, v37, v38, v39, v237, v248, v259, v269, v280, v290, v301, v312, v323, v334, v345, v355, v366, v377, v387, v398, v409, v419, v430, v441, *(v6 + *(v1 + 3252)), *(v6 + *(v1 + 3252) + 8), *(v6 + *(v1 + 3252) + 16), *&v451, v452, *(&v452 + 1), time.value);
        v43 = CMTimeSubtract(v42, v40, v41);
        v473 = [v6 _indexOfBufferBeforeOrEqualToPTS:&time inputIndex:0 applyFrameDropsMitigation:{1, OUTLINED_FUNCTION_7_27(v43, v44, v45, v46, v47, v48, v49, v50, v238, v249, v260, v270, v281, v291, v302, v313, v324, v335, v346, v356, v367, v378, v388, v399, v410, v420, v431, v442, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474).n128_f64[0]}];
        if (v473 == v2)
        {
          goto LABEL_63;
        }

        v51 = [OUTLINED_FUNCTION_138(v24[734]) objectAtIndexedSubscript:v473];
        PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&time, v51);
        *&v60 = OUTLINED_FUNCTION_40_5(PresentationTimeStamp, v53, v54, v55, v56, v57, v58, v59, v239, v250, v261, v271, v282, v292, v303, v314, v325, v336, v347, v357, v368, v379, v389, v400, v411, v421, v432, v443, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), *&time.value).n128_u64[0];
        if (*(v6 + 188))
        {
          OUTLINED_FUNCTION_6_33(v6 + 176);
          v69 = OUTLINED_FUNCTION_62_2(v61, v62, v63, v64, v65, v66, v67, v68, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value);
          v71 = CMTimeCompare(v69, v70);
          if ((v71 & 0x80000000) != 0)
          {
            if (v29)
            {
              v71 = objc_msgSend_stillImageCaptureTime(v29);
            }

            else
            {
              memset(&v450, 0, sizeof(v450));
            }

            OUTLINED_FUNCTION_41_6(v71, v72, v73, v74, v75, v76, v77, v78, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, *(v6 + 176), *(v6 + 184), *(v6 + 192), v473, v474);
            v79 = [(BWIrisStagingNode *)v6 _adjustedStartTimeForTrimmedStartTime:v471 ensuringAtLeast3FramesBeforeStillTime:&v450.value ensuringFrameIsAfterTrimmedStartTime:1 butNotEarlierThanOriginalStartTime:&v468 adjustedStartBufferIndexOut:&v473, &time];
            [v29 setMovieStartTimeRequiresCutting:{1, OUTLINED_FUNCTION_40_5(v79, v80, v81, v82, v83, v84, v85, v86, v240, v251, v262, v272, v283, v293, v304, v315, v326, v337, v348, v358, v369, v380, v390, v401, v412, v422, v433, v444, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), *&time.value).n128_f64[0]}];
            v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
          }
        }

        v467 = v2;
        v471[0] = 0;
        v471[1] = 0;
        v472 = 0;
        if (v29)
        {
          objc_msgSend_stillImageCaptureTime(v29, v60);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v87 = [(BWIrisStagingNode *)v6 _mostRecentCuttingBufferPTSBeforePTS:&v467 cuttingBufferIndexOut:v471];
        if ((v471[1] & 0x100000000) != 0)
        {
          OUTLINED_FUNCTION_7_27(v87, v88, v89, v90, v91, v92, v93, v94, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474);
          v103 = OUTLINED_FUNCTION_62_2(v95, v96, v97, v98, v99, v100, v101, v102, v241, v252, v263, v273, v284, v294, v305, v316, v327, v338, v349, v359, v370, v381, v391, v402, v413, v423, v434, v445, v471[0], v471[1], v472, *&v451, v452, *(&v452 + 1), time.value);
          v105 = CMTimeCompare(v103, v104);
          if ((v105 & 0x80000000) != 0)
          {
            OUTLINED_FUNCTION_41_6(v105, v106, v107, v108, v109, v110, v111, v112, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474);
            v474 = *v471;
            v475 = v472;
            v473 = v467;
            [v29 setMovieStartTimeRequiresCutting:1];
            if (dword_1ED844290)
            {
              HIDWORD(v466) = 0;
              BYTE3(v466) = 0;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_126_1(os_log_and_send_and_compose_flags_and_os_log_type, v114, v115, v116, v117, v118, v119, v120, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, SBYTE2(v466), BYTE3(v466), SHIDWORD(v466));
              OUTLINED_FUNCTION_115_0();
              if (v130)
              {
                v131 = v129;
              }

              else
              {
                v131 = v24;
              }

              if (v131)
              {
                OUTLINED_FUNCTION_90_1(v121, v122, v123, v124, v125, v126, v127, v128, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), *&time.value, time.epoch, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
                OUTLINED_FUNCTION_7_27(v132, v133, v134, v135, v136, v137, v138, v139, v242, v253, v264, v274, v285, v295, v306, v317, v328, v339, v350, v360, v371, v382, v392, v403, v414, v424, v435, v446, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474);
                Seconds = CMTimeGetSeconds(&time);
                [objc_msgSend(v29 "settings")];
                LODWORD(v450.value) = v258[0];
                OUTLINED_FUNCTION_22_8();
                v451 = Seconds;
                LOWORD(v452) = v141;
                *(&v452 + 2) = v142;
                OUTLINED_FUNCTION_45_6();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_13_0(v143, v144, v145, v146, v147);
              OUTLINED_FUNCTION_106_1();
              v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
            }
          }
        }

        if (*(v6 + 835) == 1)
        {
          v148 = [objc_msgSend(v29 "settings")];
          if (v148)
          {
            v186 = v4;
            v187 = v15;
            v188 = v7;
            *&v189 = OUTLINED_FUNCTION_41_6(v148, v149, v150, v151, v152, v153, v154, v155, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474).n128_u64[0];
            v190 = v473;
            movieStartTimeRequiresCutting = [v29 movieStartTimeRequiresCutting];
            if (v29)
            {
              objc_msgSend_stillImageCaptureTime(v29);
            }

            else
            {
              memset(&v450, 0, sizeof(v450));
            }

            v192 = [(BWIrisStagingNode *)v6 _adjustedStartTimeForSmartStyle:v190 allowSearchBackward:movieStartTimeRequiresCutting ^ 1u searchEndPTS:&v450 adjustedStartBufferIndexOut:&v473, &time];
            v200 = OUTLINED_FUNCTION_40_5(v192, v193, v194, v195, v196, v197, v198, v199, v244, v255, v266, v276, v287, v297, v308, v319, v330, v341, v352, v362, v373, v384, v394, v405, v416, v426, v437, v448, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), *&time.value);
            v7 = v188;
            v15 = v187;
            v4 = v186;
            if (dword_1ED844290)
            {
              HIDWORD(v466) = 0;
              BYTE3(v466) = 0;
              v201 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              OUTLINED_FUNCTION_126_1(v201, v202, v203, v204, v205, v206, v207, v208, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, SBYTE2(v466), BYTE3(v466), SHIDWORD(v466));
              OUTLINED_FUNCTION_115_0();
              if (v130)
              {
                v218 = v217;
              }

              else
              {
                v218 = v190;
              }

              if (v218)
              {
                OUTLINED_FUNCTION_90_1(v209, v210, v211, v212, v213, v214, v215, v216, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), *&time.value, time.epoch, v454, v455, v456, v457, v458, v459, v460, v461, v462, v463, v464, v465, v466, v467, v468, v469);
                OUTLINED_FUNCTION_7_27(v219, v220, v221, v222, v223, v224, v225, v226, v245, v256, v267, v277, v288, v298, v309, v320, v331, v342, v353, v363, v374, v385, v395, v406, v417, v427, v438, v449, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474);
                v227 = CMTimeGetSeconds(&time);
                [objc_msgSend(v29 "settings")];
                LODWORD(v450.value) = v258[0];
                OUTLINED_FUNCTION_22_8();
                v451 = v227;
                LOWORD(v452) = v228;
                *(&v452 + 2) = v229;
                OUTLINED_FUNCTION_45_6();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_13_0(v230, v231, v232, v233, v234);
              OUTLINED_FUNCTION_106_1();
            }

            [(BWIrisStagingNode *)v6 _updateSmartStyleRenderingBypassedForIrisMovieInfo:v29 startBufferIndex:v473, v200];
            v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
          }
        }

        started = [v29 movieStartTimeRequiresCutting];
        if (started)
        {
          if (v473 != v2)
          {
            v156 = [OUTLINED_FUNCTION_138(v24[734]) objectAtIndexedSubscript:v473];
            CMSetAttachment(v156, v322, v311, 1u);
            if (dword_1ED844290)
            {
              LODWORD(v468) = 0;
              BYTE4(v466) = 0;
              v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v2 = BYTE4(v466);
              os_log_type_enabled(v1, BYTE4(v466));
              OUTLINED_FUNCTION_4_0();
              if (v24)
              {
                CMSampleBufferGetPresentationTimeStamp(&time, v156);
                CMTimeGetSeconds(&time);
                [objc_msgSend(v29 "settings")];
                LODWORD(v450.value) = v279[0];
                OUTLINED_FUNCTION_22_8();
                v451 = *&v157;
                OUTLINED_FUNCTION_45_6();
                OUTLINED_FUNCTION_13();
                _os_log_send_and_compose_impl();
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_39_0(v158, v159, v160, v161, v162);
              v4 = v300;
              OUTLINED_FUNCTION_106_1();
              v24 = &OBJC_IVAR___BWStreamingFilterNode__maxLossyCompressionLevel;
            }
          }
        }

        v163 = *(v6 + 512);
        if (v163 == 2)
        {
          [v29 setMovieStartTime:{&time, OUTLINED_FUNCTION_7_27(started, v17, v18, v19, v20, v21, v22, v23, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474).n128_f64[0]}];
          OUTLINED_FUNCTION_6_33(v6 + 536);
          v183 = OUTLINED_FUNCTION_62_2(v175, v176, v177, v178, v179, v180, v181, v182, v243, v254, v265, v275, v286, v296, v307, v318, v329, v340, v351, v361, v372, v383, v393, v404, v415, v425, v436, v447, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value);
          CMTimeMaximum(v185, v183, v184);
          *&time.value = v344;
          started = [OUTLINED_FUNCTION_23_6() setMovieTrimStartTime:?];
        }

        else
        {
          if (v163 == 1)
          {
            OUTLINED_FUNCTION_6_33(v6 + 536);
            v172 = OUTLINED_FUNCTION_62_2(v164, v165, v166, v167, v168, v169, v170, v171, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value);
            CMTimeMaximum(v174, v172, v173);
            *&time.value = v376;
            [OUTLINED_FUNCTION_23_6() setMovieTrimStartTime:?];
            *&time.value = v376;
          }

          else
          {
            if (v163)
            {
              goto LABEL_49;
            }

            v408 = v474;
            v429 = v475;
            *&time.value = v474;
            [OUTLINED_FUNCTION_23_6() setMovieTrimStartTime:?];
            *&time.value = v408;
          }

          started = [OUTLINED_FUNCTION_23_6() setMovieStartTime:?];
        }

LABEL_49:
        ++v28;
      }

      while (v15 != v28);
      started = OUTLINED_FUNCTION_131_1(started, v17, v18, v19, v20, v21, v22, v23, v236, v247, v258[0], v258[1], v279[0], v279[1], v300, v311, v322, v333, v344, *(&v344 + 1), v365, v376, *(&v376 + 1), v397, v408, *(&v408 + 1), v429, v440, v450.value, *&v450.timescale, v450.epoch, *&v451, v452, *(&v452 + 1), time.value, *&time.timescale, time.epoch, v454, v455, v456, v457, v458, v459, *(&v459 + 1), v460, v461, v462, v463, v464, v465, v466, v467, v468, *(&v468 + 1), v469, v470, v471[0], v471[1], v472, v473, v474, *(&v474 + 1), v475);
      v15 = started;
      if (!started)
      {
LABEL_63:
        OUTLINED_FUNCTION_128_0();
        return;
      }
    }
  }
}

- (void)_tagStillImageVISKeyFrames
{
  if (self)
  {
    OUTLINED_FUNCTION_60();
    v2 = v1;
    v3 = MEMORY[0x1E6960C70];
    v65 = *(MEMORY[0x1E6960C70] + 12);
    epoch_high = *(MEMORY[0x1E6960C70] + 20);
    v4 = *MEMORY[0x1E6960C70];
    v64.epoch = *(MEMORY[0x1E6960C70] + 16);
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    *&v64.value = v4;
    v5 = *(v1 + 464);
    v7 = OUTLINED_FUNCTION_37(v1, v6, &v60, v59);
    if (v7)
    {
      v8 = v7;
      v49 = 0;
      v9 = 0;
      value = *v3;
      v51 = *(v3 + 8);
      v10 = *v61;
      key = *off_1E798A3C8;
      v48 = *off_1E798D4B0;
      v47 = *off_1E798A0A0;
      v45 = *off_1E798B4B8;
      v44 = *off_1E798B540;
      v43 = *off_1E798A0C0;
      v42 = *off_1E7989E50;
      v41 = *off_1E798A910;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v61 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v60 + 1) + 8 * i);
          AttachedMedia = [v12 isMomentCaptureMovieRecording];
          if ((AttachedMedia & 1) == 0)
          {
            AttachedMedia = [v12 stillImageVISKeyFrameTagged];
            if ((AttachedMedia & 1) == 0)
            {
              if (!v49)
              {
                v9 = [OUTLINED_FUNCTION_34_0(400) objectAtIndexedSubscript:?];
                v49 = [v9 objectAtIndexedSubscript:{objc_msgSend(v9, "count") - 1}];
                v15 = [(BWIrisStagingNode *)v49 _hostPTSForSampleBuffer:v2, &time2];
                value = time2.value;
                v65 = *&time2.flags;
                epoch_high = HIDWORD(time2.epoch);
                v16 = OUTLINED_FUNCTION_70_1(v15, time2.timescale);
                v51 = v17;
                CMTimeMake(&v64, v16, v17);
              }

              memset(&v58, 0, sizeof(v58));
              if (v12)
              {
                objc_msgSend_stillImageCaptureHostTime(v12);
              }

              lhs = v58;
              rhs = v64;
              CMTimeSubtract(&time2, &lhs, &rhs);
              lhs.value = value;
              lhs.timescale = v51;
              *&lhs.flags = v65;
              HIDWORD(lhs.epoch) = epoch_high;
              if (CMTimeCompare(&lhs, &time2) < 0)
              {
                goto LABEL_44;
              }

              OUTLINED_FUNCTION_118_1();
              lhs = v64;
              v18 = OUTLINED_FUNCTION_4_3();
              [(BWIrisStagingNode *)v18 _indexOfBufferBeforeOrEqualToHostPTS:v19 inputIndex:v20 tolerance:v21];
              OUTLINED_FUNCTION_79();
              if (v23)
              {
                goto LABEL_44;
              }

              v46 = v9;
              v24 = [v9 objectAtIndexedSubscript:v22];
              v25 = CMGetAttachment(v24, key, 0);
              [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v48];
              [v12 livePhotoMetadataStillImageKeyFrameSettingsID];
              [OUTLINED_FUNCTION_28() setObject:? forKeyedSubscript:?];
              [v12 setStillImageVISKeyFrameTagged:1];
              [v12 setStillImageCaptureLuxLevel:{objc_msgSend(objc_msgSend(v25, "objectForKeyedSubscript:", v45), "intValue")}];
              if ((*(v2 + 832) & 1) == 0)
              {
                v26 = CMGetAttachment(v24, @"TotalZoomFactor", 0);
                if (v26)
                {
                  [v26 floatValue];
                  v28 = v27;
                }

                else
                {
                  v28 = 1.0;
                }

                v29 = [v25 objectForKeyedSubscript:v44];
                [objc_msgSend(objc_msgSend(*(v2 + 688) objectForKeyedSubscript:{v43), "objectForKeyedSubscript:", v42), "floatValue"}];
                v31 = v30;
                if (objc_msgSend_isEqualToString_(v29))
                {
                  if (v31 > 0.0 && v28 >= v31)
                  {
                    [v12 setLimitStillImageTransformDuringVitalityPlayback:1];
                  }
                }
              }

              if (*(v2 + 816))
              {
                if ((*(v2 + 813) & 1) == 0)
                {
                  OUTLINED_FUNCTION_21_4(813);
                  [v12 setStillImageRequiresSmartStyleRenderingForSRL:{objc_msgSend(objc_msgSend(CMGetAttachment(v24, key, 0), "objectForKeyedSubscript:", v41), "BOOLValue")}];
                  if ([v12 requiresGlobalSubjectRelightingCalculation])
                  {
                    *(v2 + 824) = [*(v2 + 816) startCalculationWithJPEGSampleBuffer:v24 stillImageRequestSettings:objc_msgSend(v12 stillImageCaptureSettings:{"stillImageRequestSettings"), objc_msgSend(v12, "stillImageCaptureSettings")}];
                    if (dword_1ED844290)
                    {
                      LODWORD(rhs.value) = 0;
                      type = OS_LOG_TYPE_DEFAULT;
                      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                      v34 = rhs.value;
                      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                      {
                        v35 = v34;
                      }

                      else
                      {
                        v35 = v34 & 0xFFFFFFFE;
                      }

                      if (v35)
                      {
                        time2.value = value;
                        time2.timescale = v51;
                        *&time2.flags = v65;
                        HIDWORD(time2.epoch) = epoch_high;
                        Seconds = CMTimeGetSeconds(&time2);
                        OUTLINED_FUNCTION_118_1();
                        v37 = CMTimeGetSeconds(&time2);
                        LODWORD(lhs.value) = 136315650;
                        *(&lhs.value + 4) = "[BWIrisStagingNode _tagStillImageVISKeyFrames]";
                        LOWORD(lhs.flags) = 2048;
                        *(&lhs.flags + 2) = Seconds;
                        HIWORD(lhs.epoch) = 2048;
                        v54 = v37;
                        LODWORD(v40) = 32;
                        p_lhs = &lhs;
                        OUTLINED_FUNCTION_13();
                        _os_log_send_and_compose_impl();
                      }

                      OUTLINED_FUNCTION_2_4();
                      fig_log_call_emit_and_clean_up_after_send_and_compose();
                    }
                  }
                }

                if ([v12 requiresGlobalSubjectRelightingCalculation])
                {
                  [v12 setSubjectRelightingResult:*(v2 + 824)];
                  if (*(v2 + 824))
                  {
                    [objc_msgSend(v12 "settings")];
                  }
                }
              }

              AttachedMedia = BWSampleBufferGetAttachedMedia(v24, 0x1F21AAA50);
              if (AttachedMedia || (AttachedMedia = BWSampleBufferGetAttachedMedia(v24, @"SynchronizedSlaveFrame")) != 0)
              {
                v38 = CMGetAttachment(AttachedMedia, key, 0);
                [v38 setObject:objc_msgSend(v25 forKeyedSubscript:{"objectForKeyedSubscript:", v48), v48}];
                AttachedMedia = [v38 setObject:objc_msgSend(v25 forKeyedSubscript:{"objectForKeyedSubscript:", v47), v47}];
              }

              v9 = v46;
            }
          }
        }

        v8 = OUTLINED_FUNCTION_37(AttachedMedia, v14, &v60, v59);
      }

      while (v8);
    }

LABEL_44:
    OUTLINED_FUNCTION_128_0();
  }
}

- (double)_prepareToEmitFramesFromStartTime:(uint64_t)time throughEndTime:(uint64_t)endTime
{
  if (!self)
  {
    return result;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v10 = *(self + 400);
  v11 = OUTLINED_FUNCTION_127_1(self, a2, time, endTime, a5, a6, a7, a8, time, v34, v36, v37);
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = *v39;
  v14 = -1;
  v35 = 24;
  v15 = MEMORY[0x1E6960C70];
  do
  {
    v16 = 0;
    v17 = v35 + 24 * v14;
    do
    {
      if (*v39 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v18 = *(*(&v38 + 1) + 8 * v16);
      v19 = [self _indexOfBufferBeforeOrEqualToPTS:&v36 inputIndex:++v14 applyFrameDropsMitigation:{0, OUTLINED_FUNCTION_37_7().n128_f64[0]}];
      if (v19)
      {
        OUTLINED_FUNCTION_79();
        if (v27)
        {
          goto LABEL_11;
        }

        v19 = [*(self + 408) setObject:objc_msgSend(v18 atIndexedSubscript:{"objectAtIndexedSubscript:", v19 - 1), v14}];
      }

      v28 = *(self + 496) + v17;
      *v28 = *v15;
      *(v28 + 16) = *(v15 + 16);
LABEL_11:
      ++v16;
      v17 += 24;
    }

    while (v12 != v16);
    v12 = OUTLINED_FUNCTION_127_1(v19, v20, v21, v22, v23, v24, v25, v26, v33, v35, v36, v37);
  }

  while (v12);
LABEL_13:
  v29 = *(a2 + 16);
  *(self + 352) = *a2;
  *(self + 368) = v29;
  if (*(self + 600))
  {
    *&v30 = OUTLINED_FUNCTION_37_7().n128_u64[0];
    [v31 setMasterMovieOriginalStartTime:{&v36, v30}];
  }

  OUTLINED_FUNCTION_107_1((self + 328));
  *&result = OUTLINED_FUNCTION_107_1((self + 304)).n128_u64[0];
  return result;
}

- (BOOL)_haveEnoughVideoStagedToStartFirstIrisRecording:(CMTime *)recording currentTime:(CMTime *)time emitEndTimeOut:
{
  if (result)
  {
    v6 = result;
    v51 = *recording;
    memset(&v50, 0, sizeof(v50));
    if (a2)
    {
      objc_msgSend_stillImageCaptureHostTime(a2);
      objc_msgSend_stillImageCaptureHostTime(a2);
      CMTimeMake(&v50, v49 / 1000, v47);
      objc_msgSend_stillImageCaptureHostTime(a2);
    }

    else
    {
      OUTLINED_FUNCTION_81_1();
      v47 = 0;
      v48 = 0;
      v46 = 0;
      CMTimeMake(&v50, 0, 0);
      OUTLINED_FUNCTION_28_5();
    }

    time1 = v50;
    v7 = OUTLINED_FUNCTION_47_1();
    v11 = [(BWIrisStagingNode *)v7 _indexOfBufferBeforeOrEqualToHostPTS:v8 inputIndex:v9 tolerance:v10];
    v12 = OUTLINED_FUNCTION_91_2();
    v13 = *(v6 + 600);
    if (v13 && *(v6 + 528) && (*(v6 + 833) & 1) == 0)
    {
      audioOffsetForOriginalStillImageTimeMaximumFrameLatency = [v13 audioOffsetForOriginalStillImageTimeMaximumFrameLatency];
    }

    else
    {
      audioOffsetForOriginalStillImageTimeMaximumFrameLatency = 1;
    }

    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a2)
      {
        objc_msgSend_stillImageCaptureTime(a2);
      }

      else
      {
        OUTLINED_FUNCTION_28_5();
      }

      OUTLINED_FUNCTION_38_6();
      result = CMTimeCompare(&time1, &time2) > 0;
      if (time)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ([v12 count] <= audioOffsetForOriginalStillImageTimeMaximumFrameLatency + v11)
      {
        result = 0;
        if (!time)
        {
          return result;
        }

        goto LABEL_23;
      }

      if (v11 + 1 < [v12 count])
      {
        do
        {
          v15 = [OUTLINED_FUNCTION_91_2() objectAtIndexedSubscript:v11];
          memset(&v45, 0, sizeof(v45));
          CMSampleBufferGetPresentationTimeStamp(&v45, v15);
          time2 = v45;
          OUTLINED_FUNCTION_38_6();
          v24 = OUTLINED_FUNCTION_56_4(v16, v17, v18, v19, v20, v21, v22, v23, v38, v39, time1.value, *&time1.timescale, time1.epoch, v41, time2.value);
          if ((CMTimeCompare(v24, v25) & 0x80000000) == 0)
          {
            break;
          }

          v26 = [OUTLINED_FUNCTION_91_2() objectAtIndexedSubscript:v11 + 1];
          if ([CMGetAttachment(v26 @"BufferRequiresCuttingInLivePhotoMovie"])
          {
            v51 = v45;
            if (dword_1ED844290)
            {
              v44 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              OUTLINED_FUNCTION_111_1();
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              OUTLINED_FUNCTION_4_0();
              if (v12)
              {
                OUTLINED_FUNCTION_39_5();
                Seconds = CMTimeGetSeconds(&time2);
                OUTLINED_FUNCTION_89_2(v51.epoch, v38, v39, time1.value, *&time1.timescale, time1.epoch, v41, v51.value, *&v51.timescale, time2.epoch);
                LODWORD(time1.value) = 136315650;
                OUTLINED_FUNCTION_48_5();
                *(&time1.flags + 2) = Seconds;
                OUTLINED_FUNCTION_15_11();
                OUTLINED_FUNCTION_5_0(v12, v31, &time2, v32, &dword_1AC90E000);
              }

              OUTLINED_FUNCTION_2_4();
              OUTLINED_FUNCTION_39_0(v33, v34, v35, v36, v37);
            }

            break;
          }

          v27 = [v12 count];
          v28 = v11 + 2;
          ++v11;
        }

        while (v28 < v27);
      }

      result = 1;
      if (time)
      {
LABEL_23:
        *time = v51;
      }
    }
  }

  return result;
}

- (uint64_t)_informDelegateOfSoonToBeEmittedIrisRequestsForTime:(uint64_t)time
{
  if (result)
  {
    v9 = result;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v10 = *(result + 464);
    result = OUTLINED_FUNCTION_128_2(result, a2, time, a4, a5, a6, a7, a8, v31.value, *&v31.timescale, v31.epoch, v32, time1.value, *&time1.timescale, time1.epoch, v34, *(&v34 + 1), v35);
    if (result)
    {
      v11 = result;
      v12 = *v37;
LABEL_4:
      v13 = 0;
      while (1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        v34 = 0uLL;
        v35 = 0;
        v15 = [(BWIrisStagingNode *)v9 _maxPTSForIrisRequest:v14, &v34];
        OUTLINED_FUNCTION_110_1(v15, v16, v17, v18, v19, v20, v21, v22, v31.value, *&v31.timescale, v31.epoch, v32, *a2, a2[1], a2[2], v34);
        result = CMTimeCompare(&time1, &v31);
        if ((result & 0x80000000) != 0)
        {
          break;
        }

        v23 = [*(v9 + 472) containsObject:v14];
        if ((v23 & 1) == 0)
        {
          [*(v9 + 472) addObject:v14];
          v23 = [*(v9 + 624) stagingNode:v9 willEmitIrisRequest:v14];
        }

        if (v11 == ++v13)
        {
          result = OUTLINED_FUNCTION_128_2(v23, v24, v25, v26, v27, v28, v29, v30, v31.value, *&v31.timescale, v31.epoch, v32, time1.value, *&time1.timescale, time1.epoch, v34, *(&v34 + 1), v35);
          v11 = result;
          if (result)
          {
            goto LABEL_4;
          }

          return result;
        }
      }
    }
  }

  return result;
}

- (uint64_t)_sbufHasSmartStyleReversibilityAttachedMedia:(uint64_t)media
{
  if (!media)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_13();
  v3 = 1;
  v4 = BWAttachedMediaKeysRequiredBySmartStyleRenderingPipelines(1, 1);
  OUTLINED_FUNCTION_43();
  v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
LABEL_4:
    v8 = 0;
    while (1)
    {
      OUTLINED_FUNCTION_71();
      if (!v9)
      {
        objc_enumerationMutation(v4);
      }

      v10 = *(v16 + 8 * v8);
      if ((!BWSmartStyleRenderingShouldBeBypassed(a2) || (objc_msgSend_isEqualToString_(v10) & 1) == 0) && !BWSampleBufferGetAttachedMedia(a2, v10))
      {
        return 0;
      }

      if (v7 == ++v8)
      {
        OUTLINED_FUNCTION_43();
        v7 = OUTLINED_FUNCTION_37(v11, v12, v13, v14);
        if (v7)
        {
          goto LABEL_4;
        }

        return 1;
      }
    }
  }

  return v3;
}

@end