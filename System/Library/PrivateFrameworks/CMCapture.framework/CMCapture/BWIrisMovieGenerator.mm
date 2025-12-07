@interface BWIrisMovieGenerator
+ (uint64_t)_addNewMetadataTrackToAssetWriter:(uint64_t)writer forTrackTimeScale:(unsigned int *)scale yieldingTrackID:;
+ (void)initialize;
- (BOOL)flush;
- (BOOL)flushAsync;
- (BOOL)suspended;
- (BWIrisMovieGenerator)initWithReadableByteStream:(uint64_t)stream metadataByteStream:(BOOL)byteStream forFrontFacingCamera:(BOOL)camera forExternalCamera:(BOOL)externalCamera clientExpectsCameraMountedInLandscapeOrientation:(BOOL)orientation sampleReferenceMoviesEnabled:(void *)enabled movieGenerationQueue:(void *)queue irisStillImageMovieMetadataCache:(void *)self0 videoOrientationTimeMachine:;
- (double)_findIrisShortestTrackDuration:(CMTime *)duration audioTrackDuration:(char)trackDuration flush:(double)result;
- (uint64_t)_cancelAllPendingIrisMoviesWithError:(uint64_t)result;
- (uint64_t)_completedMovieInfoAndCallbacksForShortestTrackDuration:(__int128 *)duration audioTrackDuration:(char)trackDuration flush:;
- (uint64_t)_doIrisMovieParsing:(uint64_t)parsing;
- (uint64_t)_generateCompletedIrisMovies:(uint64_t)result;
- (uint64_t)_generateRefMovieForInfo:(uint64_t)info movieLevelMetadata:(int)metadata generateMetadataMovie:;
- (unsigned)_generateIrisMovies:(unsigned int *)movies;
- (void)_getAdjustedRefMovieEndTime:(CMTime *)time@<X8>;
- (void)_getAdjustedRefMovieStartTime:(CMTime *)time@<X8>;
- (void)dealloc;
- (void)parseAdditionalFragments;
- (void)setActualMovieStartTime:(id *)time;
- (void)setSuspended:(BOOL)suspended;
- (void)updateOverCaptureQualityScoresForMoviesEndingBefore:(id *)before fromMetadataRingBuffer:(id)buffer;
- (void)writeMovieWithInfo:(id)info completionHandler:(id)handler;
@end

@implementation BWIrisMovieGenerator

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (void)dealloc
{
  byteStream = self->_byteStream;
  if (byteStream)
  {
    CFRelease(byteStream);
  }

  masterMovieReader = self->_masterMovieReader;
  if (masterMovieReader)
  {
    CFRelease(masterMovieReader);
  }

  [(NSMutableArray *)self->_movieInfoAndCallbacks count];

  FigSimpleMutexDestroy();
  FigAtomicDecrement32();
  if (dword_1EB58DEC0)
  {
    v8 = 0;
    v7 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v6.receiver = self;
  v6.super_class = BWIrisMovieGenerator;
  [(BWIrisMovieGenerator *)&v6 dealloc];
}

- (void)writeMovieWithInfo:(id)info completionHandler:(id)handler
{
  FigSimpleMutexLock();
  v7 = [-[NSMutableArray lastObject](self->_movieInfoAndCallbacks "lastObject")];
  if (v7)
  {
    objc_msgSend_movieTrimEndTime(v7);
    if (info)
    {
      objc_msgSend_movieTrimEndTime(info);
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
    }

    CMTimeCompare(&time1, &v10);
  }

  v8 = [BWIrisMovieInfoAndCallback movieInfoAndCallbackWithMovieInfo:info callback:handler, v10.value, *&v10.timescale, v10.epoch];
  [(NSMutableArray *)self->_movieInfoAndCallbacks addObject:v8];
  if ([[(BWIrisMovieInfoAndCallback *)v8 info] numberOfRequestedVariants]< 2)
  {
    numberOfRequestedVariants = 1;
  }

  else
  {
    numberOfRequestedVariants = [[(BWIrisMovieInfoAndCallback *)v8 info] numberOfRequestedVariants];
  }

  self->_numberOfPendingReferenceMovies += numberOfRequestedVariants;
  FigSimpleMutexUnlock();
}

- (void)parseAdditionalFragments
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  movieGenerationQueue = self->_movieGenerationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__BWIrisMovieGenerator_parseAdditionalFragments__block_invoke;
  v5[3] = &unk_1E798F870;
  v5[4] = self;
  fig_dispatch_async_autoreleasepool(movieGenerationQueue, v5);
  if (*v3 == 1)
  {
    kdebug_trace();
  }
}

- (BOOL)flush
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  movieGenerationQueue = self->_movieGenerationQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__BWIrisMovieGenerator_flush__block_invoke;
  v5[3] = &unk_1E798FAF8;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(movieGenerationQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return (v3 & 1) == 0;
}

- (BOOL)flushAsync
{
  movieGenerationQueue = self->_movieGenerationQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__BWIrisMovieGenerator_flushAsync__block_invoke;
  v6[3] = &unk_1E798F870;
  v6[4] = self;
  fig_dispatch_async_autoreleasepool(movieGenerationQueue, v6);
  FigSimpleMutexLock();
  v4 = [(NSMutableArray *)self->_movieInfoAndCallbacks count]== 0;
  FigSimpleMutexUnlock();
  return v4;
}

- (void)updateOverCaptureQualityScoresForMoviesEndingBefore:(id *)before fromMetadataRingBuffer:(id)buffer
{
  FigSimpleMutexLock();
  v5 = [(NSMutableArray *)self->_movieInfoAndCallbacks count];
  if (v5 - 1 >= 0)
  {
    [-[NSMutableArray objectAtIndexedSubscript:](self->_movieInfoAndCallbacks objectAtIndexedSubscript:{v5 - 1), "overCaptureQualityScore"}];
  }

  FigSimpleMutexUnlock();
}

uint64_t __99__BWIrisMovieGenerator_updateOverCaptureQualityScoresForMoviesEndingBefore_fromMetadataRingBuffer___block_invoke(uint64_t a1, uint64_t a2, CMTime *a3, uint64_t a4, _BYTE *a5)
{
  time1 = *a3;
  v9 = *(a1 + 40);
  result = CMTimeCompare(&time1, &v9);
  if ((result & 0x80000000) != 0)
  {
    return [*(a1 + 32) processMetadata:a2];
  }

  *a5 = 1;
  return result;
}

- (void)setSuspended:(BOOL)suspended
{
  FigSimpleMutexLock();
  self->_suspended = suspended;

  FigSimpleMutexUnlock();
}

- (BOOL)suspended
{
  FigSimpleMutexLock();
  suspended = self->_suspended;
  FigSimpleMutexUnlock();
  return suspended;
}

uint64_t __105__BWIrisMovieGenerator__completedMovieInfoAndCallbacksForShortestTrackDuration_audioTrackDuration_flush___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if ([a2 processed])
  {
    return 0;
  }

  memset(&v17, 0, sizeof(v17));
  v8 = [a2 info];
  if (v8)
  {
    objc_msgSend_movieEndTime(v8);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v9 = [a2 info];
  if (v9)
  {
    objc_msgSend_audioOffset(v9);
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  CMTimeAdd(&v17, &lhs, &rhs);
  if (*(a1 + 88))
  {
    return 1;
  }

  memset(&lhs, 0, sizeof(lhs));
  v10 = *(a1 + 32);
  v11 = [a2 info];
  if (!v10)
  {
    goto LABEL_16;
  }

  if (*(v10 + 84))
  {
    lhs = *(v10 + 72);
    goto LABEL_17;
  }

  if (!v11)
  {
LABEL_16:
    memset(&lhs, 0, sizeof(lhs));
    goto LABEL_17;
  }

  objc_msgSend_masterMovieStartTime(v11);
LABEL_17:
  time1 = v17;
  v13 = lhs;
  CMTimeSubtract(&rhs, &time1, &v13);
  time1 = *(a1 + 40);
  if ((CMTimeCompare(&time1, &rhs) & 0x80000000) == 0)
  {
    v12 = [a2 info];
    if (v12)
    {
      objc_msgSend_movieEndTime(v12);
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v13 = lhs;
    CMTimeSubtract(&rhs, &time1, &v13);
    time1 = *(a1 + 64);
    if (CMTimeCompare(&rhs, &time1) < 1)
    {
      return 1;
    }
  }

  result = 0;
  *a4 = 1;
  return result;
}

- (void)_getAdjustedRefMovieStartTime:(CMTime *)time@<X8>
{
  if (!self)
  {
    time->value = 0;
    *&time->timescale = 0;
    time->epoch = 0;
    return;
  }

  *time = *a2;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  cf = 0;
  v6 = *(self + 48);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_19;
  }

  v8 = v7(v6, 0, 1986618469, &v26, &v27);
  if (v8)
  {
LABEL_19:
    [BWIrisMovieGenerator _getAdjustedRefMovieStartTime:v8];
    goto LABEL_11;
  }

  v9 = v26;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    v11 = 4294954514;
    goto LABEL_21;
  }

  v11 = v10(v9, &v25);
  if (v11)
  {
LABEL_21:
    [BWIrisMovieGenerator _getAdjustedRefMovieStartTime:v11];
    goto LABEL_11;
  }

  memset(&v23, 0, sizeof(v23));
  CMTimeMake(&rhs, 5, 1000);
  lhs = *a2;
  CMTimeAdd(&v23, &lhs, &rhs);
  v12 = v25;
  lhs = v23;
  v13 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v13)
  {
    rhs = lhs;
    v14 = v13(v12, &rhs, &cf, 0, 0);
    if (!v14)
    {
      v19 = *MEMORY[0x1E6960C70];
      v20 = *(MEMORY[0x1E6960C70] + 16);
      v15 = cf;
      v16 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v16 && !v16(v15, &v19) && (BYTE12(v19) & 1) != 0)
      {
        v17 = v19;
        *&time->value = v19;
        v18 = v20;
        time->epoch = v20;
        *&rhs.value = v17;
        rhs.epoch = v18;
        lhs = *a2;
        CMTimeCompare(&rhs, &lhs);
      }

      else
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v3, v19, *(&v19 + 1), v20, v21, lhs.value, lhs.timescale);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v14 = 4294954514;
  }

  [BWIrisMovieGenerator _getAdjustedRefMovieStartTime:v14];
LABEL_11:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)_getAdjustedRefMovieEndTime:(CMTime *)time@<X8>
{
  if (!self)
  {
    time->value = 0;
    *&time->timescale = 0;
    time->epoch = 0;
    return;
  }

  *time = *a2;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v23 = **&MEMORY[0x1E6960C70];
  v22 = v23;
  v21 = v23;
  v5 = *(self + 48);
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v6)
  {
    v7 = 4294954514;
    goto LABEL_19;
  }

  v7 = v6(v5, 0, 1986618469, &v26, &v27);
  if (v7)
  {
LABEL_19:
    [BWIrisMovieGenerator _getAdjustedRefMovieEndTime:v7];
    goto LABEL_11;
  }

  v8 = v26;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v9)
  {
    v10 = 4294954514;
    goto LABEL_21;
  }

  v10 = v9(v8, &v25);
  if (v10)
  {
LABEL_21:
    [BWIrisMovieGenerator _getAdjustedRefMovieEndTime:v10];
    goto LABEL_11;
  }

  v11 = v25;
  rhs = *a2;
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    lhs = rhs;
    v13 = v12(v11, &lhs, &v24, 0, 0);
    if (!v13)
    {
      v14 = v24;
      v15 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v15 && !v15(v14, &v23) && (v23.flags & 1) != 0)
      {
        v16 = v24;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v17 && !v17(v16, &v21) && (v21.flags & 1) != 0)
        {
          lhs = v23;
          rhs = v21;
          CMTimeAdd(&v22, &lhs, &rhs);
          v18 = *&v22.value;
          *&time->value = *&v22.value;
          epoch = v22.epoch;
          time->epoch = v22.epoch;
          *&lhs.value = v18;
          lhs.epoch = epoch;
          rhs = *a2;
          CMTimeCompare(&lhs, &rhs);
        }

        else
        {
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1EB58DEB8, "<<<< BWIrisMovieGenerator >>>> Fig", "! err && ((Boolean)(((lastFrameDuration).flags & kCMTimeFlags_Valid) != 0))", "bail", 0, "BWIrisMovieGenerator.m", 2042, 0);
        }
      }

      else
      {
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1EB58DEB8, "<<<< BWIrisMovieGenerator >>>> Fig", "! err && ((Boolean)(((lastFrameStartTime).flags & kCMTimeFlags_Valid) != 0))", "bail", 0, "BWIrisMovieGenerator.m", 2039, 0);
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = 4294954514;
  }

  [BWIrisMovieGenerator _getAdjustedRefMovieEndTime:v13];
LABEL_11:
  if (v26)
  {
    CFRelease(v26);
  }

  if (v25)
  {
    CFRelease(v25);
  }

  if (v24)
  {
    CFRelease(v24);
  }
}

+ (uint64_t)_addNewMetadataTrackToAssetWriter:(uint64_t)writer forTrackTimeScale:(unsigned int *)scale yieldingTrackID:
{
  objc_opt_self();
  v17 = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v7)
  {
    v8 = 4294954514;
    goto LABEL_11;
  }

  v8 = v7(a2, 1835365473, &v17);
  if (v8)
  {
LABEL_11:
    [BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:v8 forTrackTimeScale:? yieldingTrackID:?];
    return 0;
  }

  v9 = v17;
  v10 = [MEMORY[0x1E696AD98] numberWithInt:writer];
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v11)
  {
    v12 = 4294954514;
    goto LABEL_13;
  }

  v12 = v11(a2, v9, *MEMORY[0x1E6971D78], v10);
  if (v12)
  {
LABEL_13:
    [BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:v12 forTrackTimeScale:? yieldingTrackID:?];
    return 0;
  }

  v13 = v17;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 64);
  if (!v14)
  {
    v15 = 4294954514;
    goto LABEL_15;
  }

  v15 = v14(a2, v13, *MEMORY[0x1E6971D38], *MEMORY[0x1E695E4C0]);
  if (v15)
  {
LABEL_15:
    [BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:v15 forTrackTimeScale:? yieldingTrackID:?];
    return 0;
  }

  if (scale)
  {
    *scale = v17;
  }

  return 1;
}

- (void)setActualMovieStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_actualMovieStartTime.epoch = time->var3;
  *&self->_actualMovieStartTime.value = v3;
}

- (BWIrisMovieGenerator)initWithReadableByteStream:(uint64_t)stream metadataByteStream:(BOOL)byteStream forFrontFacingCamera:(BOOL)camera forExternalCamera:(BOOL)externalCamera clientExpectsCameraMountedInLandscapeOrientation:(BOOL)orientation sampleReferenceMoviesEnabled:(void *)enabled movieGenerationQueue:(void *)queue irisStillImageMovieMetadataCache:(void *)self0 videoOrientationTimeMachine:
{
  selfCopy = self;
  if (self)
  {
    if (a2 && enabled)
    {
      v22.receiver = self;
      v22.super_class = BWIrisMovieGenerator;
      v17 = [(BWIrisMovieGenerator *)&v22 init];
      selfCopy = v17;
      if (v17)
      {
        v17->_sourceIsFrontFacingCamera = byteStream;
        v17->_sourceIsExternalCamera = camera;
        v17->_clientExpectsCameraMountedInLandscapeOrientation = externalCamera;
        v17->_sampleReferenceMoviesEnabled = orientation;
        v17->_byteStream = CFRetain(a2);
        selfCopy->_movieInfoAndCallbacksMutex = FigSimpleMutexCreate();
        selfCopy->_movieInfoAndCallbacks = objc_alloc_init(MEMORY[0x1E695DF70]);
        selfCopy->_movieGenerationQueue = enabled;
        v18 = MEMORY[0x1E6960C70];
        *&selfCopy->_actualMovieStartTime.value = *MEMORY[0x1E6960C70];
        selfCopy->_actualMovieStartTime.epoch = *(v18 + 16);
        selfCopy->_irisStillImageMovieMetadataCache = queue;
        selfCopy->_videoOrientationTimeMachine = cache;
        v19 = [BWLimitedGMErrorLogger alloc];
        selfCopy->_limitedGMErrorLogger = -[BWLimitedGMErrorLogger initWithName:maxLoggingCount:](v19, "initWithName:maxLoggingCount:", [MEMORY[0x1E696AEC0] stringWithFormat:@"%p Live Photo Movie Generator", selfCopy], 10);
        FigAtomicIncrement32();
        if (dword_1EB58DEC0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");

      return 0;
    }
  }

  return selfCopy;
}

- (unsigned)_generateIrisMovies:(unsigned int *)movies
{
  moviesCopy = movies;
  if (!movies)
  {
    return moviesCopy;
  }

  v3 = a2;
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  if (*(moviesCopy + 57) == 1)
  {
    [(BWIrisMovieGenerator *)moviesCopy _cancelAllPendingIrisMoviesWithError:?];
    suspended = [moviesCopy suspended];
LABEL_10:
    moviesCopy = suspended;
    goto LABEL_11;
  }

  if (!_FigIsCurrentDispatchQueue())
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v17, v18, v19, v20, v21, v22, v23, v24);
  }

  if (![(BWIrisMovieGenerator *)moviesCopy _doIrisMovieParsing:v3])
  {
    v6 = OUTLINED_FUNCTION_46_0();
    [(BWIrisMovieGenerator *)v6 _findIrisShortestTrackDuration:v7 audioTrackDuration:v8 flush:v9, v10];
    v11 = OUTLINED_FUNCTION_46_0();
    v15 = [(BWIrisMovieGenerator *)v11 _completedMovieInfoAndCallbacksForShortestTrackDuration:v12 audioTrackDuration:v13 flush:v14];
    suspended = [(BWIrisMovieGenerator *)moviesCopy _generateCompletedIrisMovies:v15];
    goto LABEL_10;
  }

  moviesCopy = 0;
LABEL_11:
  if (*v4 == 1)
  {
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return moviesCopy;
}

void __29__BWIrisMovieGenerator_flush__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  *(*(*(a1 + 40) + 8) + 24) = [(BWIrisMovieGenerator *)*(a1 + 32) _generateIrisMovies:?];

  objc_autoreleasePoolPop(v2);
}

- (uint64_t)_cancelAllPendingIrisMoviesWithError:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    FigSimpleMutexLock();
    v4 = *(v3 + 104);
    OUTLINED_FUNCTION_43();
    v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = MEMORY[0];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(8 * i);
          v10 = objc_autoreleasePoolPush();
          v11 = 1;
          [v9 setProcessed:1];
          if ([objc_msgSend(v9 "info")] >= 2)
          {
            v11 = [objc_msgSend(v9 "info")];
          }

          v12 = *(v3 + 112);
          v13 = __OFSUB__(v12, v11);
          v14 = v12 - v11;
          if (v14 < 0 != v13)
          {
            v14 = 0;
          }

          *(v3 + 112) = v14;
          callback = [v9 callback];
          (*(callback + 16))(callback, [v9 info], a2);
          objc_autoreleasePoolPop(v10);
        }

        OUTLINED_FUNCTION_43();
        v6 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    [*(v3 + 104) removeAllObjects];
    return FigSimpleMutexUnlock();
  }

  return result;
}

- (uint64_t)_doIrisMovieParsing:(uint64_t)parsing
{
  if (!parsing)
  {
    return 0;
  }

  v4 = (parsing + 48);
  if (!*(parsing + 48))
  {
    v13 = *MEMORY[0x1E6971A20];
    v14 = MEMORY[0x1E695E118];
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v5 = FigFormatReaderCreateForStream();
    if (v5)
    {
      v6 = v5;
      OUTLINED_FUNCTION_1_5();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v11, "<<<< BWIrisMovieGenerator >>>> Fig", "err == 0 ", "bail", 0, "BWIrisMovieGenerator.m", 435);
      return v6;
    }
  }

  if (*(parsing + 56))
  {
    return 0;
  }

  v12 = 0;
  v7 = *v4;
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (v8)
  {
    v9 = v8(v7, 0, &v12);
  }

  else
  {
    v9 = -12782;
  }

  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v9;
  }

  if (v6)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", qword_1EB58DEB8, "<<<< BWIrisMovieGenerator >>>> Fig", "err == 0 ", "bail", 0, "BWIrisMovieGenerator.m", 469, v6);
  }

  else if ((v12 & 4) != 0)
  {
    *(parsing + 56) = 1;
  }

  return v6;
}

- (double)_findIrisShortestTrackDuration:(CMTime *)duration audioTrackDuration:(char)trackDuration flush:(double)result
{
  if (self)
  {
    v20 = **&MEMORY[0x1E6960C88];
    v7 = *MEMORY[0x1E6960C70];
    *&v19.value = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    v19.epoch = v8;
    if ((trackDuration & 1) == 0)
    {
      v9 = *(self + 48);
      *&v18.value = v7;
      v18.epoch = v8;
      v26 = 0;
      v27[0] = 0;
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (!v10 || v10(v9, &v26))
      {
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

      else if (v26 >= 1)
      {
        v11 = 0;
        v12 = *MEMORY[0x1E6973AF8];
        v13 = *MEMORY[0x1E695E480];
        while (1)
        {
          v25 = 0;
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
          if (!v14 || v14(v9, v11, 0, &v25 + 4, &v25))
          {
            break;
          }

          if (HIDWORD(v25) != 1835365473 || (qtrmg_metadataTrackWithIDShouldBePropagated(v9, v25) & 1) != 0)
          {
            v15 = *(*(CMBaseObjectGetVTable() + 16) + 48);
            if (!v15)
            {
              break;
            }

            if (v15(v9, v11, v27, 0, 0))
            {
              break;
            }

            v24 = 0;
            FigBaseObject = FigTrackReaderGetFigBaseObject();
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (!v17 || v17(FigBaseObject, v12, v13, &v24))
            {
              break;
            }

            memset(&v23, 0, sizeof(v23));
            CMTimeMakeFromDictionary(&v23, v24);
            if (v24)
            {
              CFRelease(v24);
            }

            if (HIDWORD(v25) == 1936684398)
            {
              v20 = v23;
            }

            time1 = v18;
            time2 = v23;
            CMTimeMinimum(&v18, &time1, &time2);
            if (v27[0])
            {
              CFRelease(v27[0]);
              v27[0] = 0;
            }
          }

          if (++v11 >= v26)
          {
            goto LABEL_24;
          }
        }

        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      }

LABEL_24:
      if (v27[0])
      {
        CFRelease(v27[0]);
      }

      v19 = v18;
    }

    *a2 = v19;
    result = *&v20.value;
    *duration = v20;
  }

  return result;
}

- (uint64_t)_completedMovieInfoAndCallbacksForShortestTrackDuration:(__int128 *)duration audioTrackDuration:(char)trackDuration flush:
{
  if (!self)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v8 = *(self + 104);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __105__BWIrisMovieGenerator__completedMovieInfoAndCallbacksForShortestTrackDuration_audioTrackDuration_flush___block_invoke;
  v11[3] = &unk_1E798FB48;
  trackDurationCopy = trackDuration;
  v11[4] = self;
  v12 = *duration;
  v13 = *(duration + 2);
  v14 = *a2;
  v15 = *(a2 + 2);
  v9 = [*(self + 104) objectsAtIndexes:{objc_msgSend(v8, "indexesOfObjectsPassingTest:", v11)}];
  FigSimpleMutexUnlock();
  return v9;
}

- (uint64_t)_generateCompletedIrisMovies:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    OUTLINED_FUNCTION_43();
    result = [v4 countByEnumeratingWithState:? objects:? count:?];
    if (result)
    {
      v5 = result;
      v6 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (MEMORY[0] != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *(8 * i);
          v9 = objc_autoreleasePoolPush();
          if ([v3 suspended])
          {
            objc_autoreleasePoolPop(v9);
            return 1;
          }

          [v8 setProcessed:1];
          v10 = v8;
          info = [v8 info];
          v12 = [objc_msgSend(info "settings")];
          v13 = v12;
          if (*(v3 + 136))
          {
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVitalityDisabledIfRequired(v12);
          }

          if ([info isVitalityScoreValid])
          {
            [info vitalityScore];
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithVitalityScore(v13, [info vitalityScoringVersion], v14);
          }

          if ([info limitStillImageTransformDuringVitalityPlayback])
          {
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithLimitStillImageTransformFlagIfRequired(v13);
          }

          if ([objc_msgSend(info "subjectRelightingResult")])
          {
            [objc_msgSend(info "subjectRelightingResult")];
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSubjectRelightingAppliedCurveParameter(v13, v15);
          }

          if ([objc_msgSend(info "stillImageRequestSettings")])
          {
            v13 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSmartStyleMetadata(v13, [objc_msgSend(info "stillImageRequestSettings")], objc_msgSend(objc_msgSend(info, "settings"), "smartStyleRenderingBypassed"));
          }

          [v8 overCaptureQualityScore];
          [v8 overCaptureQualityScore];
          v17 = v16;
          v18 = FigCaptureMetadataUtilitiesCreateMovieLevelMetadataWithSpatialOverCaptureQualityScore(v13, [v8 overCaptureQualityScoringVersion], v17);
          v19 = [(BWIrisMovieGenerator *)v3 _generateRefMovieForInfo:info movieLevelMetadata:v18 generateMetadataMovie:0];
          FigSimpleMutexLock();
          if ([objc_msgSend(v8 "info")] < 2)
          {
            v20 = 1;
          }

          else
          {
            v20 = [objc_msgSend(v8 "info")];
          }

          v21 = *(v3 + 112);
          v22 = __OFSUB__(v21, v20);
          v23 = v21 - v20;
          if (v23 < 0 != v22)
          {
            v23 = 0;
          }

          *(v3 + 112) = v23;
          FigSimpleMutexUnlock();
          callback = [v8 callback];
          (*(callback + 16))(callback, info, v19);
          FigSimpleMutexLock();
          [*(v3 + 104) removeObjectIdenticalTo:v8];
          FigSimpleMutexUnlock();

          objc_autoreleasePoolPop(v9);
        }

        OUTLINED_FUNCTION_43();
        v5 = [a2 countByEnumeratingWithState:? objects:? count:?];
        result = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (uint64_t)_generateRefMovieForInfo:(uint64_t)info movieLevelMetadata:(int)metadata generateMetadataMovie:
{
  if (!self)
  {
    return 0;
  }

  selfCopy = self;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    if (a2)
    {
      v9 = OUTLINED_FUNCTION_23();
      objc_msgSend_stillImageCaptureHostTime(v9);
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    *&rhs.value = *&lhs.value;
    OUTLINED_FUNCTION_22_0(lhs.epoch);
    CMTimeGetSeconds(v10);
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  if (!a2)
  {
    return 4294950346;
  }

  objc_msgSend_masterMovieStartTime(a2);
  if ((v471 & 1) == 0)
  {
    return 4294950346;
  }

  objc_msgSend_stillImageCaptureTime(a2);
  if ((v470 & 1) == 0)
  {
    return 4294950346;
  }

  v11 = OUTLINED_FUNCTION_18_3();
  objc_msgSend_stillImageCaptureTime(v11);
  v12 = OUTLINED_FUNCTION_23();
  objc_msgSend_masterMovieStartTime(v12);
  v13 = OUTLINED_FUNCTION_21_1();
  if (CMTimeCompare(v13, v14) < 1)
  {
    return 4294950346;
  }

  v468 = 0;
  v469 = 0;
  v466 = 0;
  v467 = 0;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  *v357 = *MEMORY[0x1E6960C88];
  *&v465.value = *MEMORY[0x1E6960C88];
  v355 = *(MEMORY[0x1E6960C88] + 16);
  v465.epoch = v355;
  *v351 = *MEMORY[0x1E6960C80];
  *&v464.value = *MEMORY[0x1E6960C80];
  v349 = *(MEMORY[0x1E6960C80] + 16);
  v464.epoch = v349;
  v463 = 0;
  v461 = 0;
  v460 = 0;
  v462 = 0;
  v16 = *MEMORY[0x1E695E480];
  v460 = FigReentrantMutexCreateWithFlags();
  v461 = FigConditionVariableCreate();
  v462 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([a2 numberOfRequestedVariants] != 1)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v335, v337, v339, v341, v343, value);
    SampleBuffer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58DEB8, 0xFFFFCE14, "<<<< BWIrisMovieGenerator >>>>", 0x345, v4, v273, v274, v330);
    v106 = *(selfCopy + 152);
    goto LABEL_119;
  }

  v458 = 0uLL;
  v459 = 0;
  v359 = v4;
  if (*(selfCopy + 84))
  {
    v458 = *(selfCopy + 72);
    v459 = *(selfCopy + 88);
  }

  else
  {
    objc_msgSend_masterMovieStartTime(a2);
  }

  v19 = OUTLINED_FUNCTION_18_3();
  objc_msgSend_movieStartTime(v19);
  v20 = OUTLINED_FUNCTION_23();
  objc_msgSend_movieTrimStartTime(v20);
  v21 = OUTLINED_FUNCTION_21_1();
  v23 = CMTimeCompare(v21, v22);
  v24 = OUTLINED_FUNCTION_18_3();
  objc_msgSend_masterMovieStartTime(v24);
  OUTLINED_FUNCTION_41_0();
  v25 = OUTLINED_FUNCTION_21_1();
  v395 = dictionary;
  v403 = selfCopy;
  if (CMTimeCompare(v25, v26))
  {
    OUTLINED_FUNCTION_38_1();
    v27 = OUTLINED_FUNCTION_18_3();
    objc_msgSend_masterMovieStartTime(v27);
    OUTLINED_FUNCTION_41_0();
    CMTimeSubtract(&v457, &lhs, &rhs);
    if (dword_1EB58DEC0)
    {
      LODWORD(v442.value) = 0;
      LOBYTE(type.value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7_8();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v29 = OUTLINED_FUNCTION_18_3();
    objc_msgSend_movieStartTime(v29);
    v30 = OUTLINED_FUNCTION_23();
    objc_msgSend_masterMovieStartTime(v30);
    v31 = OUTLINED_FUNCTION_21_1();
    if (!CMTimeCompare(v31, v32))
    {
      *&rhs.value = v458;
      [OUTLINED_FUNCTION_13_5(v459) setMovieStartTime:?];
      if (!v23)
      {
        objc_msgSend_movieStartTime(a2);
        *&rhs.value = v453;
        [OUTLINED_FUNCTION_13_5(v454) setMovieTrimStartTime:?];
      }
    }

    *&rhs.value = v458;
    [OUTLINED_FUNCTION_13_5(v459) setMasterMovieStartTime:?];
  }

  if ([a2 temporaryMovieURL])
  {
    temporaryMovieURL = [a2 temporaryMovieURL];
  }

  else
  {
    temporaryMovieURL = [a2 outputMovieURL];
  }

  v34 = temporaryMovieURL;
  v35 = OUTLINED_FUNCTION_18_3();
  objc_msgSend_movieTrimStartTime(v35);
  v36 = OUTLINED_FUNCTION_23();
  objc_msgSend_masterMovieStartTime(v36);
  v37 = OUTLINED_FUNCTION_21_1();
  CMTimeSubtract(v39, v37, v38);
  *&lhs.value = 0uLL;
  v40 = OUTLINED_FUNCTION_40_0(0);
  [(BWIrisMovieGenerator *)v40 _getAdjustedRefMovieStartTime:v41, v42];
  v452 = rhs;
  v43 = OUTLINED_FUNCTION_18_3();
  objc_msgSend_movieTrimEndTime(v43);
  v44 = OUTLINED_FUNCTION_23();
  objc_msgSend_masterMovieStartTime(v44);
  v45 = OUTLINED_FUNCTION_21_1();
  CMTimeSubtract(v47, v45, v46);
  *&lhs.value = 0uLL;
  v48 = OUTLINED_FUNCTION_40_0(0);
  [(BWIrisMovieGenerator *)v48 _getAdjustedRefMovieEndTime:v49, v50];
  v451 = rhs;
  v51 = *(selfCopy + 48);
  SampleBuffer = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{MEMORY[0x1E695E118], *MEMORY[0x1E6971330], 0}];
  [a2 masterMovieURL];
  v52 = FigAssetReaderCreateWithURLAndFormatReader();
  if (v52)
  {
    SampleBuffer = v52;
    OUTLINED_FUNCTION_0_14();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v327, v332, v335, v337, v339, v341, v343, value);
    v106 = *(selfCopy + 152);
    goto LABEL_119;
  }

  v328 = *MEMORY[0x1E6971580];
  v333 = 0;
  [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:MEMORY[0x1E695E118]];
  TrackCount = FigAssetWriterCreateWithURL();
  if (TrackCount || (CMNotificationCenterGetDefaultLocalCenter(), OUTLINED_FUNCTION_20_2(), TrackCount = CMNotificationCenterAddListener(), TrackCount) || info && (TrackCount = FigAssetWriterSetFormatWriterProperty(v468, *MEMORY[0x1E6971C00], info), TrackCount) || (TrackCount = FigFormatReaderGetTrackCount(v51, &v466), TrackCount))
  {
    SampleBuffer = TrackCount;
    OUTLINED_FUNCTION_0_14();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v328, 0, v335, v337, v339, v341, v343, value);
    v106 = *(selfCopy + 152);
    goto LABEL_119;
  }

  v54 = v466;
  if (metadata && v466 != 1)
  {
    OUTLINED_FUNCTION_3_6();
    LODWORD(v328) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v328, 0, v335, v337, v339, v341, v343, value);
    v107 = 0;
    SampleBuffer = 0xFFFFFFFFLL;
    goto LABEL_121;
  }

  *(selfCopy + 64) = -1;
  if (v54 >= 1)
  {
    v367 = v34;
    v55 = 0;
    LODWORD(v384) = 0;
    v378 = 0;
    v56 = 0;
    v401 = 0;
    v57 = 0;
    v339 = *MEMORY[0x1E6971D48];
    v341 = *MEMORY[0x1E6971DB0];
    v363 = *MEMORY[0x1E69739F0];
    v347 = *MEMORY[0x1E6971E20];
    v361 = *MEMORY[0x1E6983518];
    key = *MEMORY[0x1E6971F90];
    v371 = *MEMORY[0x1E6971F88];
    value = *MEMORY[0x1E6971EE8];
    v380 = -1;
    v369 = *MEMORY[0x1E6971D90];
    v343 = *MEMORY[0x1E6971EF0];
    v376 = *MEMORY[0x1E6971D78];
    v365 = *MEMORY[0x1E6971DF8];
    value_low = -1;
    while (1)
    {
      LODWORD(v442.value) = 0;
      LODWORD(type.value) = 0;
      LODWORD(v440.value) = 0;
      LODWORD(v439.value) = 0;
      v58 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (!v58)
      {
        SampleBuffer = 4294954514;
        goto LABEL_116;
      }

      v59 = v58(v51, v57, 0, &type, &v442);
      if (v59)
      {
        SampleBuffer = v59;
LABEL_116:
        v105 = MEMORY[0x1E696AEC0];
        v328 = v57;
        v103 = @"copy track with index %d";
LABEL_117:
        [v105 stringWithFormat:v103, v328, v333];
        goto LABEL_118;
      }

      v60 = type.value;
      if (!metadata)
      {
        break;
      }

      OUTLINED_FUNCTION_37_3();
      if (v61)
      {
        break;
      }

LABEL_94:
      if (++v57 >= v466)
      {
        goto LABEL_97;
      }
    }

    if (v60 == 1986618469)
    {
      SampleBuffer = v56;
      v56 = (v56 + 1);
      if ([a2 requestedSDOFVariants] == 2 && SampleBuffer)
      {
        goto LABEL_94;
      }

      v61 = [a2 requestedSDOFVariants] != 1 || v56 == 2;
      if (!v61)
      {
        goto LABEL_94;
      }

      LODWORD(v55) = qtrmg_getTrackTimescale(v51, LODWORD(v442.value));
    }

    else
    {
      OUTLINED_FUNCTION_37_3();
      if (v61)
      {
        if (!qtrmg_metadataTrackWithIDShouldBePropagated(v51, LODWORD(v442.value)))
        {
          goto LABEL_94;
        }

        if (value_low == -1)
        {
          value_low = SLODWORD(v442.value);
        }
      }
    }

    if (*(selfCopy + 11) == 1)
    {
      if (FigAssetReaderEnableOriginalSampleReferenceExtractionFromTrack(v469, LODWORD(v442.value), &v440))
      {
        OUTLINED_FUNCTION_27();
        [MEMORY[0x1E696AEC0] stringWithFormat:@"enable original sample reference extraction for index %d", v57, 0];
        goto LABEL_118;
      }
    }

    else if (FigAssetReaderEnableOriginalSampleExtractionFromTrack(v469, LODWORD(v442.value), &v440))
    {
      OUTLINED_FUNCTION_27();
      [MEMORY[0x1E696AEC0] stringWithFormat:@"enable original sample extraction for index %d", v57, 0];
LABEL_118:
      v106 = OUTLINED_FUNCTION_24_0();
LABEL_119:
      [v106 logErrorNumber:SampleBuffer errorString:?];
      goto LABEL_120;
    }

    v62 = LODWORD(type.value);
    if (LODWORD(type.value) == 1986618469)
    {
      v380 = SLODWORD(v440.value);
    }

    else if (LODWORD(type.value) == 1936684398)
    {
      *(selfCopy + 64) = SLODWORD(v440.value);
    }

    if (FigAssetWriterAddNativeTrack(v468, v62, &v439))
    {
      OUTLINED_FUNCTION_27();
      [MEMORY[0x1E696AEC0] stringWithFormat:@"add native track for index %d", v57, 0];
      goto LABEL_118;
    }

    v397 = v56;
    v63 = [MEMORY[0x1E696AD98] numberWithLong:v401];
    [dictionary2 setObject:v63 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", LODWORD(v439.value))}];
    v388 = v55;
    if (LODWORD(type.value) != 1635088502)
    {
      if (LODWORD(type.value) != 1986618469)
      {
        if (LODWORD(type.value) == 1936684398)
        {
          CMTimeMake(&rhs, 10, 1);
          v81 = CMTimeCopyAsDictionary(&rhs, v16);
          v82 = OUTLINED_FUNCTION_31_1();
          SampleBuffer = FigAssetWriterSetFormatWriterTrackProperty(v82, v83, v341, v81);
          CFRelease(v81);
          if (SampleBuffer)
          {
            OUTLINED_FUNCTION_45_2();
            v103 = @"set preferred chunk duration for track %d";
            goto LABEL_117;
          }

          *&rhs.value = *MEMORY[0x1E6960CC0];
          OUTLINED_FUNCTION_22_0(*(MEMORY[0x1E6960CC0] + 16));
          v85 = CMTimeCopyAsDictionary(v84, v16);
          v86 = OUTLINED_FUNCTION_31_1();
          SampleBuffer = FigAssetWriterSetFormatWriterTrackProperty(v86, v87, v339, v85);
          CFRelease(v85);
          if (SampleBuffer)
          {
            OUTLINED_FUNCTION_45_2();
            v103 = @"set interleave advance for track %d";
            goto LABEL_117;
          }
        }

        else
        {
          OUTLINED_FUNCTION_37_3();
          if (v61)
          {
            [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", LODWORD(v439.value))}];
            v64 = HIDWORD(v378);
            if (!HIDWORD(v378))
            {
              v64 = v439.value;
            }

            HIDWORD(v378) = v64;
          }
        }

        goto LABEL_90;
      }

      LODWORD(v384) = v439.value;
    }

    selfCopy = v16;
    v65 = FigFormatReaderCopyTrackByID(v51, LODWORD(v442.value), &v467);
    if (v65 || (v66 = [a2 settings], v67 = objc_msgSend(v66, "videoRotationDegrees"), v68 = objc_msgSend(v66, "videoMirrored"), rhs.value = 0, v65 = FigTrackReaderCopyProperty(v467, v363, selfCopy, &rhs), v65))
    {
      SampleBuffer = v65;
      OUTLINED_FUNCTION_0_14();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
      goto LABEL_300;
    }

    SampleBuffer = [objc_msgSend(rhs.value objectForKeyedSubscript:{@"Width", "intValue"}];
    v69 = [objc_msgSend(rhs.value objectForKeyedSubscript:{@"Height", "intValue"}];

    if (BWBuildVideoTrackMatrix(v67, v68, 0, *(v403 + 8), *(v403 + 9), 0, SampleBuffer | (v69 << 32)))
    {
      v70 = OUTLINED_FUNCTION_31_1();
      if (FigAssetWriterSetFormatWriterTrackProperty(v70, v71, v347, v72))
      {
        OUTLINED_FUNCTION_35();
        OUTLINED_FUNCTION_45_2();
        [v198 stringWithFormat:@"set track matrix for track %d"];
        [OUTLINED_FUNCTION_24_0() logErrorNumber:SampleBuffer errorString:?];
        goto LABEL_120;
      }
    }

    LODWORD(v378) = [objc_msgSend(objc_msgSend(objc_msgSend(v66 "videoSettings")];
    lhs.value = 0;
    v16 = selfCopy;
    v73 = FigMetadataCopyTrackQuickTimeMetadata();
    if (v73)
    {
      SampleBuffer = v73;
      OUTLINED_FUNCTION_0_14();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v328, 0, v335, v337, v339, v341, v343, value);
LABEL_300:
      selfCopy = v403;
LABEL_120:
      v107 = 0;
      goto LABEL_121;
    }

    selfCopy = v403;
    if (lhs.value)
    {
      Mutable = CFDictionaryCreateMutable(v16, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryAddValue(Mutable, key, lhs.value);
      CFRelease(lhs.value);
      CFDictionaryAddValue(Mutable, v371, value);
      v75 = OUTLINED_FUNCTION_31_1();
      SampleBuffer = FigAssetWriterSetFormatWriterTrackProperty(v75, v76, v369, Mutable);
      CFRelease(Mutable);
      if (SampleBuffer)
      {
        OUTLINED_FUNCTION_3_6();
        LODWORD(v328) = SampleBuffer;
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v328);
        goto LABEL_120;
      }
    }

    v457.value = 0;
    v77 = FigMetadataCopyTrackQuickTimeUserdata();
    if (v77)
    {
      goto LABEL_303;
    }

    if (v457.value)
    {
      dictionary3 = [MEMORY[0x1E695DF90] dictionary];
      [dictionary3 setObject:v343 forKeyedSubscript:v371];
      [dictionary3 setObject:v457.value forKeyedSubscript:key];
      if (v457.value)
      {
        CFRelease(v457.value);
      }

      v79 = OUTLINED_FUNCTION_31_1();
      v77 = FigAssetWriterSetFormatWriterTrackProperty(v79, v80, v369, dictionary3);
      if (v77)
      {
LABEL_303:
        SampleBuffer = v77;
        OUTLINED_FUNCTION_0_14();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v328);
        goto LABEL_120;
      }
    }

    if (v467)
    {
      CFRelease(v467);
      v467 = 0;
    }

LABEL_90:
    TrackTimescale = qtrmg_getTrackTimescale(v51, LODWORD(v442.value));
    SampleBuffer = LODWORD(v439.value);
    [MEMORY[0x1E696AD98] numberWithInt:TrackTimescale];
    v89 = OUTLINED_FUNCTION_24_0();
    if (FigAssetWriterSetFormatWriterTrackProperty(v89, SampleBuffer, v376, v90))
    {
      OUTLINED_FUNCTION_27();
      [MEMORY[0x1E696AEC0] stringWithFormat:@"set time scale %d for track %d", TrackTimescale, LODWORD(v439.value)];
      goto LABEL_118;
    }

    if (*(selfCopy + 11) == 1)
    {
      [objc_msgSend(v367 "URLByDeletingLastPathComponent")];
      v91 = OUTLINED_FUNCTION_31_1();
      if (FigAssetWriterSetFormatWriterTrackProperty(v91, v92, v365, v93))
      {
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_45_2();
        v103 = @"set sample reference base URL for track %d";
        goto LABEL_117;
      }
    }

    ++v401;
    SampleBuffer = 0x1E696A000uLL;
    v94 = [MEMORY[0x1E696AD98] numberWithInt:LODWORD(v440.value)];
    [v395 setObject:v94 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", LODWORD(v439.value))}];
    v55 = v388;
    v56 = v397;
    goto LABEL_94;
  }

  value_low = -1;
  v401 = 0;
  v378 = 0;
  v380 = -1;
  LODWORD(v384) = 0;
  v55 = 0;
LABEL_97:
  selfCopy = v16;
  objc_msgSend_stillImageCaptureTime(a2);
  if ((v450 & 1) != 0 && (metadata & 1) == 0 && [BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:v468 forTrackTimeScale:v55 yieldingTrackID:&v463 + 1])
  {
    [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", HIDWORD(v463))}];
  }

  SampleBuffer = array2;
  v95 = v395;
  if ([objc_msgSend(a2 "settings")] && *(v403 + 144) && +[BWIrisMovieGenerator _addNewMetadataTrackToAssetWriter:forTrackTimeScale:yieldingTrackID:](BWIrisMovieGenerator, v468, v55, &v463))
  {
    [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v463)}];
  }

  allKeys = [v395 allKeys];
  v97 = qtrmg_setupMetadataTrackReferences(v468, v384, array2);
  if (v97)
  {
    SampleBuffer = v97;
    OUTLINED_FUNCTION_0_14();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v328, 0, v335, v337, v339, v341, v343, value);
    selfCopy = v403;
    v106 = *(v403 + 152);
    goto LABEL_119;
  }

  memset(&v449, 0, sizeof(v449));
  rhs = v452;
  CMTimeConvertScale(&v449, &rhs, v55, kCMTimeRoundingMethod_QuickTime);
  v448 = v451;
  memset(&v447, 0, sizeof(v447));
  objc_msgSend_audioOffset(a2);
  if (v446)
  {
    v98 = OUTLINED_FUNCTION_18_3();
    objc_msgSend_audioOffset(v98);
    lhs = v448;
    CMTimeAdd(&v447, &lhs, &rhs);
  }

  else
  {
    v447 = v448;
  }

  OUTLINED_FUNCTION_5_11();
  CMTimeConvertScale(&v448, &rhs, v99, kCMTimeRoundingMethod_QuickTime);
  lhs = v447;
  CMTimeConvertScale(&rhs, &lhs, v449.timescale, kCMTimeRoundingMethod_QuickTime);
  v447 = rhs;
  rhs = v449;
  lhs = v447;
  if (FigAssetReaderStartExtractionForTimeRange(v469, &rhs.value, &lhs.value))
  {
    OUTLINED_FUNCTION_35();
    v100 = MEMORY[0x1E696AEC0];
    *&rhs.value = *&v449.value;
    OUTLINED_FUNCTION_22_0(v449.epoch);
    Seconds = CMTimeGetSeconds(v101);
    OUTLINED_FUNCTION_5_11();
    v328 = *&Seconds;
    v333 = CMTimeGetSeconds(&rhs);
    v103 = @"start extraction %.4lf to %.4lf";
LABEL_114:
    v105 = v100;
    goto LABEL_117;
  }

  rhs = v449;
  if (FigAssetWriterBeginSession(v468, &rhs.value))
  {
    OUTLINED_FUNCTION_35();
    v100 = MEMORY[0x1E696AEC0];
    *&rhs.value = *&v449.value;
    OUTLINED_FUNCTION_22_0(v449.epoch);
    v328 = CMTimeGetSeconds(v104);
    v103 = @"begin session from %.4lf";
    goto LABEL_114;
  }

  keya = allKeys;
  if (v401 <= 0)
  {
    OUTLINED_FUNCTION_3_6();
    LODWORD(v328) = 0;
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v328, 0, v335, v337, v339, v341, v343, value);
    v107 = 0;
    SampleBuffer = 0xFFFFFFFFLL;
    goto LABEL_321;
  }

  v112 = OUTLINED_FUNCTION_57_1(24 * v401, 0x504FFAC1u);
  v113 = *MEMORY[0x1E6960C70];
  v114 = *(MEMORY[0x1E6960C70] + 16);
  v377 = v112;
  v115 = v112;
  v116 = v401;
  do
  {
    *v115 = v113;
    v115[2] = v114;
    v115 += 3;
    --v116;
  }

  while (v116);
  *v398 = v113;
  HIDWORD(v386) = v55;
  if (![v395 count])
  {
    SampleBuffer = 0;
    goto LABEL_229;
  }

  v117 = *MEMORY[0x1E6960560];
  v384 = *MEMORY[0x1E6960558];
  while (1)
  {
    v445 = 0;
    v118 = qtrmg_trackIDForNextTrackBelowWater(&v460, &v445);
    if (v118)
    {
      SampleBuffer = v118;
      OUTLINED_FUNCTION_0_14();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v328, v333, v335, v337, v339, v341, v343, value);
      selfCopy = v403;
      v203 = *(v403 + 152);
LABEL_248:
      [v203 logErrorNumber:SampleBuffer errorString:?];
LABEL_280:
      v107 = v377;
      goto LABEL_121;
    }

    v119 = v445;
    intValue = [v445 intValue];
    if ([v95 objectForKeyedSubscript:v119])
    {
      break;
    }

    SampleBuffer = 0;
LABEL_144:
    if (![v95 count])
    {
LABEL_229:
      i = 0x1E696A000uLL;
      v188 = v401;
      selfCopy = v403;
      v189 = HIDWORD(v386);
      if (![array2 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", HIDWORD(v463))}])
      {
        goto LABEL_249;
      }

      OUTLINED_FUNCTION_28_0();
      v190 = OUTLINED_FUNCTION_23();
      objc_msgSend_stillImageCaptureTime(v190);
      objc_msgSend_masterMovieStartTime(a2);
      v191 = OUTLINED_FUNCTION_52_1();
      CMTimeSubtract(v193, v191, v192);
      data = *(v403 + 136);
      if (data)
      {
        v195 = [data copyAndClearStillImageTransformDataForSettingsID:{objc_msgSend(a2, "livePhotoMetadataStillImageKeyFrameSettingsID")}];
        if (v195)
        {
          data = v195;
        }

        else
        {
          data = [MEMORY[0x1E695DEF0] data];
          if (!data)
          {
            goto LABEL_245;
          }
        }

        settings = [a2 settings];
        [objc_msgSend(objc_msgSend(settings "videoSettings")];
        [objc_msgSend(objc_msgSend(settings "videoSettings")];
        v189 = HIDWORD(v386);
        i = 0x1E696A000;
      }

LABEL_245:
      OUTLINED_FUNCTION_12_3();
      SampleBuffer = qtrmg_writeStillImageTimeMetadataSample(v200, v201, &lhs.value, data, v202, v189);
      if (SampleBuffer)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"write still image metadata to track %d", HIDWORD(v463)];
LABEL_247:
        v203 = OUTLINED_FUNCTION_24_0();
        goto LABEL_248;
      }

LABEL_249:
      v107 = v377;
      if (![array2 containsObject:{objc_msgSend(*(i + 3480), "numberWithInt:", v463)}])
      {
LABEL_256:
        OUTLINED_FUNCTION_5_11();
        if (FigAssetWriterEndSession(v208, &rhs.value))
        {
          OUTLINED_FUNCTION_27();
          v209 = MEMORY[0x1E696AEC0];
          OUTLINED_FUNCTION_5_11();
          [v209 stringWithFormat:@"end session to %.4lf", CMTimeGetSeconds(&rhs)];
          goto LABEL_258;
        }

        OUTLINED_FUNCTION_5_11();
        OUTLINED_FUNCTION_10_3();
        v211 = OUTLINED_FUNCTION_21_1();
        v214 = CMTimeSubtract(v213, v211, v212);
        v222 = OUTLINED_FUNCTION_53_2(v214, v215, v216, v217, v218, v219, v220, v221, v328, v333, v335, v337, v339, v341, v343, value, v347, v349, v351[0], v351[1], v353, v355, v357[0], v357[1], v359, v361, v363, v365, v367, v369, v371, keya, v377, v378, v380, array2, v384, v386, value_low, dictionary2, array, v395, v398[0], v398[1], v401, v403, v404, v406, v408, v410, v412, v414, v416, v418, v420, v422, v424, v426, v428, v430, v432, v434);
        v223 = MEMORY[0x1E6971CE0];
        if (v222)
        {
          v224 = v222;
          v225 = MEMORY[0];
          v399 = *MEMORY[0x1E6971CE0];
          SampleBuffer = 24;
          while (2)
          {
            for (i = 0; i != v224; ++i)
            {
              if (MEMORY[0] != v225)
              {
                objc_enumerationMutation(keyb);
              }

              v226 = *(8 * i);
              v227 = [objc_msgSend(v392 objectForKeyedSubscript:{v226), "integerValue"}];
              if (v227 >= v188)
              {
                SampleBuffer = 0;
                goto LABEL_280;
              }

              v228 = v377 + 24 * v227;
              v442.value = *v228;
              v442.timescale = *(v228 + 8);
              v229 = *(v228 + 12);
              if (v229)
              {
                v238 = *(v228 + 16);
                OUTLINED_FUNCTION_28_0();
                OUTLINED_FUNCTION_10_3();
                v457.value = v442.value;
                v457.timescale = v442.timescale;
                v457.flags = v229;
                v457.epoch = v238;
                v239 = OUTLINED_FUNCTION_52_1();
                CMTimeSubtract(v241, v239, v240);
                OUTLINED_FUNCTION_12_3();
                if (CMTimeGetSeconds(&lhs) > 0.0005)
                {
                  OUTLINED_FUNCTION_12_3();
                  v457 = **&MEMORY[0x1E6960CC0];
                  v242 = OUTLINED_FUNCTION_52_1();
                  if (CMTimeCompare(v242, v243) < 1)
                  {
                    v247 = MEMORY[0x1E696AEC0];
                    lhs.value = v442.value;
                    lhs.timescale = v442.timescale;
                    lhs.flags = v229;
                    lhs.epoch = v238;
                    v248 = CMTimeGetSeconds(&lhs);
                    OUTLINED_FUNCTION_10_3();
                    v249 = CMTimeGetSeconds(&lhs);
                    OUTLINED_FUNCTION_12_3();
                    v338 = v226;
                    v334 = *&v249;
                    v336 = -CMTimeGetSeconds(&lhs);
                    p_lhs = *&v248;
                    [v247 stringWithFormat:@"Earliest read PTS %.4lf is larger than from value %.4lf by %.4lf for track %@, not able to make an edit"];
                    v230 = [OUTLINED_FUNCTION_24_0() logErrorNumber:0xFFFFFFFFLL errorString:?];
                  }

                  else
                  {
                    memset(&lhs, 0, sizeof(lhs));
                    OUTLINED_FUNCTION_44_1();
                    v244 = OUTLINED_FUNCTION_52_1();
                    v246 = BWTrackEditListArrayForRegularTrackInIrisMovie(v244, v245);
                    SampleBuffer = v468;
                    v230 = FigAssetWriterSetFormatWriterTrackProperty(v468, [v226 intValue], v399, v246);
                    if (v230)
                    {
                      OUTLINED_FUNCTION_27();
                      [MEMORY[0x1E696AEC0] stringWithFormat:@"set edit list for track %d", objc_msgSend(v226, "intValue")];
                      [OUTLINED_FUNCTION_24_0() logErrorNumber:SampleBuffer errorString:?];
                      goto LABEL_280;
                    }
                  }
                }

                v188 = v402;
                SampleBuffer = 24;
              }

              else
              {
                p_lhs = v226;
                [MEMORY[0x1E696AEC0] stringWithFormat:@"Earliest read PTS not available for track %@, not able to make an edit"];
                v230 = [OUTLINED_FUNCTION_24_0() logErrorNumber:0xFFFFFFFFLL errorString:?];
              }
            }

            v224 = OUTLINED_FUNCTION_53_2(v230, v231, v232, v233, v234, v235, v236, v237, p_lhs, v334, *&v336, v338, v340, v342, v344, valuea, v348, v350, v352[0], v352[1], v354, v356, v358[0], v358[1], v360, v362, v364, v366, v368, v370, v372, keyb, v377, v379, v381, v383, v385, v387, v390, v392, v394, v396, v399, v400, v402, v403, v405, v407, v409, v411, v413, v415, v417, v419, v421, v423, v425, v427, v429, v431, v433, v435);
            v223 = MEMORY[0x1E6971CE0];
            if (v224)
            {
              continue;
            }

            break;
          }
        }

        if (HIDWORD(v463))
        {
          v250 = BWTrackEditListArrayForStillImageDisplayTimeTrackInIrisTrimmedMovie(a2, SHIDWORD(v387));
          if (FigAssetWriterSetFormatWriterTrackProperty(v468, HIDWORD(v463), *v223, v250))
          {
            OUTLINED_FUNCTION_27();
            [MEMORY[0x1E696AEC0] stringWithFormat:@"set edit list for still image track %d", HIDWORD(v463)];
            goto LABEL_247;
          }
        }

        v251 = FigAssetWriterFinish(v468);
        v107 = v377;
        if (v251 || (FigBaseObject = FigAssetReaderGetFigBaseObject(), v251 = CMBaseObjectInvalidate(FigBaseObject), v251) || (v253 = FigAssetWriterGetFigBaseObject(), v251 = CMBaseObjectInvalidate(v253), v251))
        {
          SampleBuffer = v251;
          OUTLINED_FUNCTION_0_14();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", p_lhs, v334, *&v336, v338, v340, v342, v344, valuea);
          v210 = *(selfCopy + 152);
          goto LABEL_259;
        }

        OUTLINED_FUNCTION_51();
        *&lhs.value = *v358;
        lhs.epoch = v356;
        v254 = OUTLINED_FUNCTION_21_1();
        if (!CMTimeCompare(v254, v255) || (OUTLINED_FUNCTION_50(), *&lhs.value = *v352, lhs.epoch = v350, v256 = OUTLINED_FUNCTION_21_1(), !CMTimeCompare(v256, v257)))
        {
          SampleBuffer = 0;
          goto LABEL_121;
        }

        OUTLINED_FUNCTION_38_1();
        OUTLINED_FUNCTION_51();
        OUTLINED_FUNCTION_10_3();
        v258 = OUTLINED_FUNCTION_21_1();
        CMTimeSubtract(v260, v258, v259);
        memset(&v442, 0, sizeof(v442));
        v261 = OUTLINED_FUNCTION_18_3();
        objc_msgSend_movieStartTime(v261);
        lhs = v457;
        v262 = OUTLINED_FUNCTION_21_1();
        CMTimeAdd(v264, v262, v263);
        if (([a2 containsTrims] & 1) == 0)
        {
          if (dword_1EB58DEC0)
          {
            LODWORD(v440.value) = 0;
            LOBYTE(v439.value) = 0;
            v265 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_55(v265);
            OUTLINED_FUNCTION_29();
            if (i)
            {
              v266 = OUTLINED_FUNCTION_18_3();
              objc_msgSend_movieTrimStartTime(v266);
              CMTimeGetSeconds(&rhs);
              OUTLINED_FUNCTION_15_0();
              CMTimeGetSeconds(&rhs);
              v267 = OUTLINED_FUNCTION_23();
              objc_msgSend_movieTrimStartTime(v267);
              OUTLINED_FUNCTION_34();
              CMTimeGetSeconds(&rhs);
              LODWORD(lhs.value) = 136316162;
              OUTLINED_FUNCTION_2_15("[BWIrisMovieGenerator _generateRefMovieForInfo:movieLevelMetadata:generateMetadataMovie:]", p_lhs, v334, *&v336, v338, v340, v342, v344, valuea, v348, v350, v352[0], v352[1], v354, v356, v358[0], v358[1], v360, v362, v364, v366, v368, v370, v372, keyb, v377, v379, v381, v383, v385, v387, v390, v392, v394, v396, v399, v400, v402, v403);
              OUTLINED_FUNCTION_49(v268);
              OUTLINED_FUNCTION_14_0(v269, v270, v271, v272, &dword_1AC90E000);
            }

            OUTLINED_FUNCTION_7_8();
            OUTLINED_FUNCTION_56_0(v275, v276, v277, v278, v279);
          }

          *&rhs.value = *&v442.value;
          [OUTLINED_FUNCTION_13_5(v442.epoch) setMovieTrimStartTime:?];
        }

        if (dword_1EB58DEC0)
        {
          LODWORD(v440.value) = 0;
          LOBYTE(v439.value) = 0;
          v280 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_55(v280);
          OUTLINED_FUNCTION_29();
          if (i)
          {
            v281 = OUTLINED_FUNCTION_18_3();
            objc_msgSend_movieStartTime(v281);
            CMTimeGetSeconds(&rhs);
            OUTLINED_FUNCTION_15_0();
            CMTimeGetSeconds(&rhs);
            v282 = OUTLINED_FUNCTION_23();
            objc_msgSend_movieStartTime(v282);
            OUTLINED_FUNCTION_34();
            CMTimeGetSeconds(&rhs);
            [a2 description];
            LODWORD(lhs.value) = 136316418;
            OUTLINED_FUNCTION_2_15("[BWIrisMovieGenerator _generateRefMovieForInfo:movieLevelMetadata:generateMetadataMovie:]", p_lhs, v334, *&v336, v338, v340, v342, v344, valuea, v348, v350, v352[0], v352[1], v354, v356, v358[0], v358[1], v360, v362, v364, v366, v368, v370, v372, keyb, v377, v379, v381, v383, v385, v387, v390, v392, v394, v396, v399, v400, v402, v403);
            v284 = OUTLINED_FUNCTION_33_2(v283);
            p_lhs = &lhs;
            OUTLINED_FUNCTION_14_0(v284, v285, v286, v287, &dword_1AC90E000);
          }

          OUTLINED_FUNCTION_7_8();
          OUTLINED_FUNCTION_56_0(v288, v289, v290, v291, v292);
        }

        *&rhs.value = *&v442.value;
        [OUTLINED_FUNCTION_13_5(v442.epoch) setMovieStartTime:?];
        memset(&type, 0, sizeof(type));
        OUTLINED_FUNCTION_50();
        lhs = v465;
        v293 = OUTLINED_FUNCTION_21_1();
        CMTimeSubtract(v295, v293, v294);
        memset(&v440, 0, sizeof(v440));
        v296 = OUTLINED_FUNCTION_18_3();
        objc_msgSend_movieStartTime(v296);
        lhs = type;
        v297 = OUTLINED_FUNCTION_21_1();
        CMTimeAdd(v299, v297, v298);
        if (([a2 containsTrims] & 1) == 0)
        {
          if (dword_1EB58DEC0)
          {
            LODWORD(v437.value) = 0;
            LOBYTE(v436.value) = 0;
            v300 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            OUTLINED_FUNCTION_54_2(v300);
            OUTLINED_FUNCTION_29();
            if (i)
            {
              v301 = OUTLINED_FUNCTION_18_3();
              objc_msgSend_movieTrimEndTime(v301);
              CMTimeGetSeconds(&rhs);
              OUTLINED_FUNCTION_9_2();
              CMTimeGetSeconds(&rhs);
              v302 = OUTLINED_FUNCTION_23();
              objc_msgSend_movieTrimEndTime(v302);
              OUTLINED_FUNCTION_25();
              CMTimeSubtract(&rhs, &v439, &lhs);
              CMTimeGetSeconds(&rhs);
              LODWORD(lhs.value) = 136316162;
              OUTLINED_FUNCTION_2_15("[BWIrisMovieGenerator _generateRefMovieForInfo:movieLevelMetadata:generateMetadataMovie:]", p_lhs, v334, *&v336, v338, v340, v342, v344, valuea, v348, v350, v352[0], v352[1], v354, v356, v358[0], v358[1], v360, v362, v364, v366, v368, v370, v372, keyb, v377, v379, v381, v383, v385, v387, v390, v392, v394, v396, v399, v400, v402, v403);
              OUTLINED_FUNCTION_49(v303);
              OUTLINED_FUNCTION_14_0(v304, v305, v306, v307, &dword_1AC90E000);
            }

            OUTLINED_FUNCTION_7_8();
            OUTLINED_FUNCTION_56_0(v308, v309, v310, v311, v312);
          }

          [a2 setMovieTrimEndTime:{&rhs, OUTLINED_FUNCTION_9_2().n128_f64[0]}];
        }

        if (dword_1EB58DEC0)
        {
          LODWORD(v437.value) = 0;
          LOBYTE(v436.value) = 0;
          v313 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          OUTLINED_FUNCTION_54_2(v313);
          OUTLINED_FUNCTION_29();
          if (i)
          {
            v314 = OUTLINED_FUNCTION_18_3();
            objc_msgSend_movieEndTime(v314);
            CMTimeGetSeconds(&rhs);
            OUTLINED_FUNCTION_9_2();
            CMTimeGetSeconds(&rhs);
            v315 = OUTLINED_FUNCTION_23();
            objc_msgSend_movieEndTime(v315);
            OUTLINED_FUNCTION_25();
            CMTimeSubtract(&rhs, &v439, &lhs);
            CMTimeGetSeconds(&rhs);
            [a2 description];
            LODWORD(lhs.value) = 136316418;
            OUTLINED_FUNCTION_2_15("[BWIrisMovieGenerator _generateRefMovieForInfo:movieLevelMetadata:generateMetadataMovie:]", p_lhs, v334, *&v336, v338, v340, v342, v344, valuea, v348, v350, v352[0], v352[1], v354, v356, v358[0], v358[1], v360, v362, v364, v366, v368, v370, v372, keyb, v377, v379, v381, v383, v385, v387, v390, v392, v394, v396, v399, v400, v402, v403);
            v317 = OUTLINED_FUNCTION_33_2(v316);
            OUTLINED_FUNCTION_14_0(v317, v318, v319, v320, &dword_1AC90E000);
          }

          OUTLINED_FUNCTION_7_8();
          OUTLINED_FUNCTION_56_0(v321, v322, v323, v324, v325);
        }

        [a2 setMovieEndTime:{&rhs, OUTLINED_FUNCTION_9_2().n128_f64[0]}];
        SampleBuffer = 0;
        v107 = v377;
LABEL_321:
        selfCopy = v403;
        goto LABEL_121;
      }

      v204 = *(v403 + 144);
      v205 = OUTLINED_FUNCTION_18_3();
      objc_msgSend_masterMovieStartTime(v205);
      OUTLINED_FUNCTION_10_3();
      v457 = v448;
      i = [v204 copyVideoOrientationSbufFromPTS:&lhs toPTS:&v457 referencePTS:&rhs];
      if ([i count])
      {
        OUTLINED_FUNCTION_5_11();
        if (!qtrmg_writeVideoOrientationMetadataSamples(v206, v207, i, &rhs))
        {
LABEL_255:

          goto LABEL_256;
        }

        OUTLINED_FUNCTION_27();
        [MEMORY[0x1E696AEC0] stringWithFormat:@"write video orientation metadata to track %d", v463];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"copy video orientation samples from %@", *(v403 + 144)];
      }

      [OUTLINED_FUNCTION_24_0() logErrorNumber:SampleBuffer errorString:?];
      goto LABEL_255;
    }
  }

  v121 = [objc_msgSend(v95 objectForKeyedSubscript:{v119), "intValue"}];
  v444 = 0;
  if (FigAssetWriterIsTrackQueueAboveHighWaterLevel(v468, intValue))
  {
LABEL_141:
    SampleBuffer = 0;
LABEL_142:
    v95 = v395;
    [v395 removeObjectsForKeys:array];
    [array removeAllObjects];
    goto LABEL_144;
  }

  while (1)
  {
    sbuf = 0;
    SampleBuffer = FigAssetReaderExtractAndRetainNextSampleBuffer(v469, v121, &v444, &sbuf);
    if (SampleBuffer)
    {
      v122 = 84;
      if (!v444)
      {
        v122 = 70;
      }

      v333 = v122;
      [MEMORY[0x1E696AEC0] stringWithFormat:@"extract next sample for %d (complete %c)", v121];
      [OUTLINED_FUNCTION_24_0() logErrorNumber:SampleBuffer errorString:?];
    }

    else if (value_low <= v121 && CMSampleBufferGetNumSamples(sbuf) == 1)
    {
      OUTLINED_FUNCTION_5_11();
      v186 = qtrmg_createTrimmedSampleBufferIfNeeded(v185, &rhs);
      if (v186)
      {
        v123 = v186;
        CFRelease(sbuf);
        sbuf = v123;
        OUTLINED_FUNCTION_28_0();
LABEL_153:
        CMSampleBufferGetPresentationTimeStamp(&rhs, v123);
        goto LABEL_155;
      }
    }

    v123 = sbuf;
    OUTLINED_FUNCTION_28_0();
    if (v123)
    {
      goto LABEL_153;
    }

    OUTLINED_FUNCTION_36_1(0, v124, v125, v126, v127, v128, v129, v130, v131, v328, v333, v335, v337, v339, v341, v343, value, v347, v349, v351[0], v351[1], v353, v355, v357[0], v357[1], v359, v361, v363, v365, v367, v369, v371, keya, v377, v378, v380, array2, v384, v386, value_low, dictionary2, array, v395, v132);
LABEL_155:
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_38_1();
    if (v133)
    {
      CMSampleBufferGetDecodeTimeStamp(&v457, v133);
      memset(&v442, 0, sizeof(v442));
      if (sbuf)
      {
        CMSampleBufferGetDuration(&v442, sbuf);
        goto LABEL_160;
      }
    }

    else
    {
      *&v457.value = *v398;
      v457.epoch = v114;
    }

    *&v442.value = *v398;
    v442.epoch = v114;
LABEL_160:
    memset(&type, 0, sizeof(type));
    if (v442.flags)
    {
      OUTLINED_FUNCTION_16_6();
      v439 = v442;
      CMTimeAdd(&type, &v440, &v439);
    }

    else
    {
      type = rhs;
    }

    if ((v457.flags & 1) == 0)
    {
      OUTLINED_FUNCTION_44_1();
    }

    if (CMGetAttachment(sbuf, v117, 0))
    {
      v134 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_16_6();
      *&v439.value = *&v449.value;
      OUTLINED_FUNCTION_11_4(v449.epoch);
      v134 = CMTimeCompare(v135, v136) >= 0;
    }

    v137 = *(v403 + 64);
    if (v137 & 0x8000000000000000) == 0 && v137 == v121 && (rhs.flags)
    {
      v438 = 0;
      memset(&v440, 0, sizeof(v440));
      objc_msgSend_audioOffset(a2);
      v437 = rhs;
      CMTimeSubtract(&v440, &v437, &v439);
      memset(&v439, 0, sizeof(v439));
      if (v442.flags)
      {
        OUTLINED_FUNCTION_42_0();
        v436 = v442;
        CMTimeAdd(&v439, &v437, &v436);
      }

      else
      {
        OUTLINED_FUNCTION_25();
      }

      *&v437.value = *&v439.value;
      v145 = OUTLINED_FUNCTION_32(v439.epoch);
      v148 = sbuf;
      if (v145 < 0)
      {
        if (sbuf)
        {
          CFRelease(sbuf);
          sbuf = 0;
        }

        *&v442.value = OUTLINED_FUNCTION_36_1(v148, v138, v139, v140, v141, v142, v143, v144, v146, v328, v333, v335, v337, v339, v341, v343, value, v347, v349, v351[0], v351[1], v353, v355, v357[0], v357[1], v359, v361, v363, v365, v367, v369, v371, keya, v377, v378, v380, array2, v384, v386, value_low, dictionary2, array, v395, v147);
        v442.epoch = v114;
        *&type.value = *&v442.value;
        type.epoch = v114;
      }

      else if (sbuf)
      {
        OUTLINED_FUNCTION_42_0();
        *&v436.value = *v398;
        v436.epoch = v114;
        SampleBuffer = BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(v149, &v437, &v436.value, &v438);
        CFRelease(sbuf);
        sbuf = v438;
        v150 = OUTLINED_FUNCTION_9_2();
        type = v439;
        *&v437.value = v150;
        v134 = OUTLINED_FUNCTION_32(v151) > 0;
      }
    }

    v152 = CMGetAttachment(sbuf, v384, 0) != 0;
    if ((rhs.flags & 1) == 0)
    {
      goto LABEL_181;
    }

    if (*(v403 + 64) == v121)
    {
      *&v440.value = *&rhs.value;
      epoch = rhs.epoch;
LABEL_185:
      OUTLINED_FUNCTION_4_16(epoch);
      if (CMTimeCompare(v154, v155) > 0)
      {
        goto LABEL_186;
      }

      goto LABEL_181;
    }

    if (v380 == v121)
    {
      if (v378)
      {
        if (CMSampleBufferGetNumSamples(sbuf) >= 1)
        {
          OUTLINED_FUNCTION_30_0();
          OUTLINED_FUNCTION_4_16(v177);
          if (CMTimeCompare(v178, v179) >= 1)
          {
            if (CMGetAttachment(sbuf, v117, 0))
            {
              CMRemoveAttachment(sbuf, v117);
            }

            v152 = 1;
          }
        }

        goto LABEL_181;
      }

      OUTLINED_FUNCTION_30_0();
      goto LABEL_185;
    }

    if (intValue >= SHIDWORD(v378))
    {
      *&v440.value = *&rhs.value;
      OUTLINED_FUNCTION_4_16(rhs.epoch);
      if ((CMTimeCompareApproximately(v183, v184) & 0x80000000) == 0)
      {
LABEL_186:
        v165 = sbuf;
        if (sbuf)
        {
          CFRelease(sbuf);
          sbuf = 0;
        }

        v444 = 1;
        OUTLINED_FUNCTION_36_1(v165, v156, v157, v158, v159, v160, v161, v162, v163, v328, v333, v335, v337, v339, v341, v343, value, v347, v349, v351[0], v351[1], v353, v355, v357[0], v357[1], v359, v361, v363, v365, v367, v369, v371, keya, v377, v378, v380, array2, v384, v386, value_low, dictionary2, array, v395, v164);
LABEL_189:
        FigAssetWriterMarkEndOfDataForTrack(v468, intValue);
        [array addObject:v445];
        goto LABEL_190;
      }
    }

    else
    {
      OUTLINED_FUNCTION_30_0();
      OUTLINED_FUNCTION_4_16(v180);
      if (CMTimeCompare(v181, v182) >= 1)
      {
        goto LABEL_186;
      }
    }

LABEL_181:
    if (v444)
    {
      goto LABEL_189;
    }

LABEL_190:
    if (!sbuf)
    {
      goto LABEL_207;
    }

    if (CMSampleBufferGetNumSamples(sbuf) < 1)
    {
      goto LABEL_206;
    }

    v166 = FigAssetWriterAddSampleBuffer(v468, intValue, sbuf);
    if (v166)
    {
      break;
    }

    if ((rhs.flags & 0x1D) == 1)
    {
      if (v134)
      {
        OUTLINED_FUNCTION_16_6();
        *&v439.value = *&v465.value;
        OUTLINED_FUNCTION_11_4(v465.epoch);
        if (CMTimeCompare(v167, v168) < 0)
        {
          v465 = rhs;
        }
      }

      if ((type.flags & 0x1D) == 1)
      {
        OUTLINED_FUNCTION_30_0();
        v440.epoch = v169;
        *&v439.value = *&v464.value;
        OUTLINED_FUNCTION_11_4(v464.epoch);
        if (CMTimeCompare(v170, v171) >= 1 && !v152)
        {
          v464 = type;
        }
      }

      if ((v442.flags & 1) == 0)
      {
        v328 = intValue;
        [MEMORY[0x1E696AEC0] stringWithFormat:@"wrote sample with no duration to track %d"];
        [OUTLINED_FUNCTION_24_0() logErrorNumber:0 errorString:?];
      }

      v172 = v377 + 24 * [objc_msgSend(dictionary2 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", intValue)), "integerValue"}];
      v437.value = *v172;
      v437.timescale = *(v172 + 8);
      v173 = *(v172 + 12);
      if ((v173 & 1) == 0 || (v174 = *(v172 + 16), v440.value = v437.value, v440.timescale = v437.timescale, v440.flags = v173, v440.epoch = v174, *&v439.value = *&lhs.value, OUTLINED_FUNCTION_11_4(lhs.epoch), CMTimeCompare(v175, v176) >= 1))
      {
        *v172 = lhs;
      }
    }

    SampleBuffer = 0;
LABEL_206:
    CFRelease(sbuf);
LABEL_207:
    if (SampleBuffer || v444)
    {
      goto LABEL_142;
    }

    if (FigAssetWriterIsTrackQueueAboveHighWaterLevel(v468, intValue))
    {
      goto LABEL_141;
    }
  }

  SampleBuffer = v166;
  v196 = CMCopyDictionaryOfAttachments(selfCopy, sbuf, 1u);
  if (v196)
  {
    CFRelease(v196);
  }

  v197 = CMCopyDictionaryOfAttachments(selfCopy, sbuf, 0);
  v107 = v377;
  if (v197)
  {
    CFRelease(v197);
  }

  selfCopy = v403;
  [MEMORY[0x1E696AEC0] stringWithFormat:@"add sample buffer to track %d", intValue];
LABEL_258:
  v210 = OUTLINED_FUNCTION_24_0();
LABEL_259:
  [v210 logErrorNumber:SampleBuffer errorString:?];
LABEL_121:
  if (v469)
  {
    CFRelease(v469);
  }

  CMNotificationCenterGetDefaultLocalCenter();
  OUTLINED_FUNCTION_20_2();
  v108 = CMNotificationCenterRemoveListener();
  if (v108)
  {
    v109 = v108;
    [*(selfCopy + 152) logErrorNumber:v108 errorString:@"remove queue level callbacks"];
    if (SampleBuffer)
    {
      SampleBuffer = SampleBuffer;
    }

    else
    {
      SampleBuffer = v109;
    }
  }

  if (v468)
  {
    CFRelease(v468);
  }

  if (v467)
  {
    CFRelease(v467);
  }

  FigSimpleMutexDestroy();
  FigConditionVariableDestroy();
  v462 = 0;
  v460 = 0;
  v461 = 0;
  free(v107);
  if (*MEMORY[0x1E695FF58] == 1)
  {
    v110 = OUTLINED_FUNCTION_23();
    objc_msgSend_stillImageCaptureHostTime(v110);
    *&rhs.value = *&lhs.value;
    OUTLINED_FUNCTION_22_0(lhs.epoch);
    CMTimeGetSeconds(v111);
    OUTLINED_FUNCTION_19_0();
    kdebug_trace();
  }

  return SampleBuffer;
}

@end