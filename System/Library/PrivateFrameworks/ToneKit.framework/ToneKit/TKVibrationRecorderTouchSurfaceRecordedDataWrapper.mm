@interface TKVibrationRecorderTouchSurfaceRecordedDataWrapper
- (BOOL)getNormalizedTouchLocation:(CGPoint *)location touchPhase:(int *)phase forTimeInterval:(double)interval;
- (TKVibrationRecorderTouchSurfaceRecordedDataWrapper)initWithVibrationPatternMaximumDuration:(double)duration;
- (void)_prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:(double)duration;
- (void)_recordFinalDataWithNormalizedTouchLocation:(CGPoint)location touchPhase:(int)phase timeIntervalSinceBeginningOfPattern:(double)pattern;
- (void)_updateMaximumFramesPerSecondRate:(id)rate;
- (void)dealloc;
- (void)didStopRecording;
- (void)recordNormalizedTouchLocation:(CGPoint)location touchPhase:(int)phase;
@end

@implementation TKVibrationRecorderTouchSurfaceRecordedDataWrapper

- (TKVibrationRecorderTouchSurfaceRecordedDataWrapper)initWithVibrationPatternMaximumDuration:(double)duration
{
  v14.receiver = self;
  v14.super_class = TKVibrationRecorderTouchSurfaceRecordedDataWrapper;
  v4 = [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)&v14 init];
  v5 = v4;
  if (v4)
  {
    v4->_vibrationPatternMaximumDuration = duration;
    v4->_maximumFramesPerSecondRate = 60;
    v4->_isWarmUpModeEnabled = 1;
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v5->_warmUpModeDidStartTimestamp = v6;
    v7 = +[TKDisplayLinkManager currentDisplayLinkManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __94__TKVibrationRecorderTouchSurfaceRecordedDataWrapper_initWithVibrationPatternMaximumDuration___block_invoke;
    v12[3] = &unk_278316958;
    v8 = v5;
    v13 = v8;
    v9 = [v7 addObserverWithHandler:v12];
    displayLinkManagerObserverToken = v8->_displayLinkManagerObserverToken;
    v8->_displayLinkManagerObserverToken = v9;
  }

  return v5;
}

- (void)dealloc
{
  recordedData = self->_recordedData;
  if (recordedData)
  {
    free(recordedData);
  }

  v4.receiver = self;
  v4.super_class = TKVibrationRecorderTouchSurfaceRecordedDataWrapper;
  [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)&v4 dealloc];
}

- (void)_prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:(double)duration
{
  v4 = vcvtpd_u64_f64(self->_maximumFramesPerSecondRate * duration);
  recordedData = self->_recordedData;
  if (recordedData)
  {
    if (self->_recordedDataElementsCount < v4)
    {
      v6 = malloc_type_realloc(recordedData, 32 * v4, 0x1000040CA85BC40uLL);
      self->_recordedData = v6;
      bzero(&v6[32 * self->_recordedDataElementsCount], 32 * (v4 - self->_recordedDataElementsCount));
      self->_recordedDataElementsCount = v4;
    }
  }

  else
  {
    self->_recordedData = malloc_type_calloc(v4, 0x20uLL, 0x1000040CA85BC40uLL);
    self->_recordedDataElementsCount = v4;
    self->_recordedDataCursor = 0;
  }
}

- (void)_recordFinalDataWithNormalizedTouchLocation:(CGPoint)location touchPhase:(int)phase timeIntervalSinceBeginningOfPattern:(double)pattern
{
  v5 = *&phase;
  y = location.y;
  x = location.x;
  maximumFramesPerSecondRate = self->_maximumFramesPerSecondRate;
  v10 = vcvtmd_u64_f64(maximumFramesPerSecondRate * pattern);
  recordedDataElementsCount = self->_recordedDataElementsCount;
  if (recordedDataElementsCount <= v10)
  {
    v17 = recordedDataElementsCount / maximumFramesPerSecondRate + recordedDataElementsCount / maximumFramesPerSecondRate;
    if (v17 < pattern)
    {
      v17 = pattern + pattern;
    }

    [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:v17];

    [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _recordFinalDataWithNormalizedTouchLocation:v5 touchPhase:x timeIntervalSinceBeginningOfPattern:y, pattern];
  }

  else
  {
    v12 = self->_recordedData + 32 * v10;
    *v12 = x;
    *(v12 + 1) = *&location.y;
    *(v12 + 4) = phase;
    *(v12 + 3) = v10;
    if (v10)
    {
      recordedDataCursor = self->_recordedDataCursor;
      v14 = (v12 - 8);
      v15 = v10;
      do
      {
        if (*v14)
        {
          break;
        }

        *v14 = recordedDataCursor;
        v14 -= 4;
        --v15;
      }

      while (v15);
    }

    self->_recordedDataCursor = v10;
  }
}

- (void)recordNormalizedTouchLocation:(CGPoint)location touchPhase:(int)phase
{
  v4 = *&phase;
  y = location.y;
  x = location.x;
  v34 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9 = v8;
  vibrationPatternDidStartTimestamp = self->_vibrationPatternDidStartTimestamp;
  if (vibrationPatternDidStartTimestamp < 2.22044605e-16)
  {
    self->_vibrationPatternDidStartTimestamp = v9;
    vibrationPatternDidStartTimestamp = v9;
  }

  if (!self->_recordedData)
  {
    [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:self->_vibrationPatternMaximumDuration * 1.2];
    vibrationPatternDidStartTimestamp = self->_vibrationPatternDidStartTimestamp;
  }

  v11 = v9 - vibrationPatternDidStartTimestamp;
  if (v11 >= 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.0;
  }

  if (self->_isWarmUpModeEnabled)
  {
    recordedDataCursor = self->_recordedDataCursor;
    p_recordedDataCursor = &self->_recordedDataCursor;
    v13 = recordedDataCursor;
    v16 = *(p_recordedDataCursor - 2);
    v17 = 32 * *(p_recordedDataCursor - 1) / 0x28uLL;
    if (recordedDataCursor >= v17)
    {
      v18 = TLLogGeneral();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);

      if (v19)
      {
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/ToneLibraryUI/Kit/Vibrations/Recorder/Touch-Surface/TKVibrationRecorderTouchSurfaceRecordedDataWrapper.m"];
        v21 = TLLogGeneral();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          lastPathComponent = [v20 lastPathComponent];
          callStackSymbols = [MEMORY[0x277CCACC8] callStackSymbols];
          v26 = 136381443;
          v27 = "[TKVibrationRecorderTouchSurfaceRecordedDataWrapper recordNormalizedTouchLocation:touchPhase:]";
          v28 = 2113;
          v29 = lastPathComponent;
          v30 = 2049;
          v31 = 143;
          v32 = 2113;
          v33 = callStackSymbols;
          _os_log_impl(&dword_21C599000, v21, OS_LOG_TYPE_DEFAULT, "*** Assertion failure in %{private}s, %{private}@:%{private}lu.\n%{private}@", &v26, 0x2Au);
        }
      }

      else
      {
        v20 = TLLogGeneral();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          [TKVibrationRecorderTouchSurfaceRecordedDataWrapper recordNormalizedTouchLocation:v20 touchPhase:?];
        }
      }

      v24 = TLLogGeneral();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [TKVibrationRecorderTouchSurfaceRecordedDataWrapper recordNormalizedTouchLocation:v24 touchPhase:?];
      }

      v13 = *p_recordedDataCursor;
    }

    if (v13 < v17)
    {
      v25 = v16 + 40 * v13;
      *v25 = x;
      *(v25 + 8) = y;
      *(v25 + 16) = v4;
      *(v25 + 20) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = v12;
      ++*p_recordedDataCursor;
    }
  }

  else
  {

    [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _recordFinalDataWithNormalizedTouchLocation:v4 touchPhase:x timeIntervalSinceBeginningOfPattern:y, v12];
  }
}

- (void)didStopRecording
{
  if (self->_displayLinkManagerObserverToken)
  {
    v3 = +[TKDisplayLinkManager currentDisplayLinkManager];
    [v3 removeObserverWithToken:self->_displayLinkManagerObserverToken];

    displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
    self->_displayLinkManagerObserverToken = 0;
  }
}

- (BOOL)getNormalizedTouchLocation:(CGPoint *)location touchPhase:(int *)phase forTimeInterval:(double)interval
{
  v5 = vcvtmd_u64_f64(self->_maximumFramesPerSecondRate * interval);
  recordedDataCursor = self->_recordedDataCursor;
  if (recordedDataCursor < v5 || (recordedData = self->_recordedData, v8 = recordedData[4 * v5 + 3], v8 > recordedDataCursor))
  {
    v9 = 0;
    result = 0;
    if (!location)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v11 = &recordedData[4 * v8];
  v12 = *v11;
  v9 = *(v11 + 4);
  result = 1;
  if (location)
  {
LABEL_4:
    *location = v12;
  }

LABEL_5:
  if (phase)
  {
    *phase = v9;
  }

  return result;
}

- (void)_updateMaximumFramesPerSecondRate:(id)rate
{
  v11[1] = *MEMORY[0x277D85DE8];
  rateCopy = rate;
  if (self->_isWarmUpModeEnabled)
  {
    if (self->_displayLinkHasRefreshedAtLeastOnce)
    {
      v11[0] = rateCopy;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      if (v5 - self->_warmUpModeDidStartTimestamp >= 0.5)
      {
        recordedDataCursor = self->_recordedDataCursor;
        if (recordedDataCursor)
        {
          memcpy(v11 - ((40 * recordedDataCursor + 15) & 0xFFFFFFFFFFFFFFF0), self->_recordedData, 40 * recordedDataCursor);
          [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:self->_vibrationPatternMaximumDuration * 1.2];
          bzero(self->_recordedData, 32 * self->_recordedDataElementsCount);
          self->_recordedDataCursor = 0;
          v9 = (&v11[2] - ((40 * recordedDataCursor + 15) & 0xFFFFFFFFFFFFFFF0));
          do
          {
            [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _recordFinalDataWithNormalizedTouchLocation:*v9 touchPhase:*(v9 - 2) timeIntervalSinceBeginningOfPattern:*(v9 - 1), v9[2]];
            v9 += 5;
            --recordedDataCursor;
          }

          while (recordedDataCursor);
        }

        else
        {
          [(TKVibrationRecorderTouchSurfaceRecordedDataWrapper *)self _prepareRecordedDataBufferForStoringEnoughElementsForRecordingDuration:self->_vibrationPatternMaximumDuration * 1.2];
        }

        rateCopy = v11[0];
        self->_isWarmUpModeEnabled = 0;
        if (self->_displayLinkManagerObserverToken)
        {
          [v11[0] removeObserverWithToken:?];
          displayLinkManagerObserverToken = self->_displayLinkManagerObserverToken;
          self->_displayLinkManagerObserverToken = 0;

          rateCopy = v11[0];
        }
      }

      else
      {
        [v11[0] duration];
        rateCopy = v11[0];
        v7 = vcvtpd_u64_f64(1.0 / v6);
        if (self->_maximumFramesPerSecondRate < v7)
        {
          self->_maximumFramesPerSecondRate = v7;
        }
      }
    }

    else
    {
      self->_displayLinkHasRefreshedAtLeastOnce = 1;
    }
  }
}

- (void)recordNormalizedTouchLocation:(uint64_t *)a1 touchPhase:(NSObject *)a2 .cold.2(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_error_impl(&dword_21C599000, a2, OS_LOG_TYPE_ERROR, "Couldn't not handle recording touch location in warm up mode with index %lu.", &v3, 0xCu);
}

@end