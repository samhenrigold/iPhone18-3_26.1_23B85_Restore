@interface JFXAVMediaDataReader
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData;
- ($AC64C642040120CEEAD84DEEACA9A5CE)JFX_allMediaTimeRange;
- ($AC64C642040120CEEAD84DEEACA9A5CE)currentReadingRange;
- ($AC64C642040120CEEAD84DEEACA9A5CE)readableTimeRange;
- (BOOL)JFX_resetReaderFromTime:(id *)time;
- (BOOL)JFX_shouldResetReaderWhenSeekingFromStartTimeOfCurrentData:(id *)data toTime:(id *)time;
- (BOOL)beginReading;
- (BOOL)beginReadingAtTime:(id *)time;
- (BOOL)beginReadingAtTimeRange:(id *)range;
- (BOOL)hasRemainingAvailableData;
- (BOOL)prepareAssetReaderForReading;
- (BOOL)readAheadToTime:(id *)time;
- (BOOL)seekToTime:(id *)time;
- (BOOL)seekingAheadIsExpensiveFromTime:(id *)time toTime:(id *)toTime;
- (JFXAVMediaDataReader)initWithAVAssetTrack:(id)track withName:(id)name;
- (id)createAssetReader;
- (id)createAssetReaderTrackOutput;
- (void)JFX_configureAssetReaderToReadFromTime:(id *)time;
- (void)JFX_configureAssetReaderTrackOutput;
- (void)JFX_releaseReadersForReset;
- (void)JFX_resetReaderIfNecessaryToSeekFromStartTimeOfCurrentData:(id *)data toTime:(id *)time;
- (void)JFX_resetReadingRangeWhenScrubbingToTime:(id *)time;
- (void)cancelReadingForReaderReset;
- (void)didFailWithError:(id)error;
- (void)didUpdateReadingRange;
- (void)readAndDiscardRemainingAvailableData;
- (void)setCurrentReadingRange:(id *)range;
- (void)setIsScrubbing:(BOOL)scrubbing;
- (void)setReadableTimeRange:(id *)range;
@end

@implementation JFXAVMediaDataReader

- (JFXAVMediaDataReader)initWithAVAssetTrack:(id)track withName:(id)name
{
  trackCopy = track;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = JFXAVMediaDataReader;
  v9 = [(JFXAVMediaDataReader *)&v17 init];
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CC08E0];
    v12 = *(MEMORY[0x277CC08E0] + 16);
    *(v9 + 104) = *MEMORY[0x277CC08E0];
    *(v9 + 120) = v12;
    *(v9 + 136) = *(v11 + 32);
    objc_storeStrong(v9 + 5, track);
    asset = [*(v10 + 5) asset];
    v14 = *(v10 + 6);
    *(v10 + 6) = asset;

    *(v10 + 9) = JFXSignpostIDFromObject(v10);
    objc_storeStrong(v10 + 2, name);
    if (trackCopy)
    {
      objc_msgSend_minFrameDuration(trackCopy);
    }

    else
    {
      memset(&v16, 0, sizeof(v16));
    }

    *(v10 + 80) = v16;
    if ((v10[92] & 1) == 0)
    {
      CMTimeMake(&v16, 1, +[JFXMediaSettings frameRate]);
      *(v10 + 80) = v16;
    }
  }

  return v10;
}

- (BOOL)beginReading
{
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  objc_msgSend_JFX_allMediaTimeRange(self, a2);
  v4[0] = v5;
  v4[1] = v6;
  v4[2] = v7;
  return [(JFXAVMediaDataReader *)self beginReadingAtTimeRange:v4];
}

- (BOOL)beginReadingAtTimeRange:(id *)range
{
  v33 = *MEMORY[0x277D85DE8];
  if ([(JFXAVMediaDataReader *)self status]== 1)
  {
    objc_msgSend_readableTimeRange(self);
    v5 = *&range->var0.var3;
    *&range2.start.value = *&range->var0.var0;
    *&range2.start.epoch = v5;
    *&range2.duration.timescale = *&range->var1.var1;
    if (CMTimeRangeEqual(&range1, &range2))
    {
      return 1;
    }
  }

  memset(&v27, 0, sizeof(v27));
  objc_msgSend_JFX_allMediaTimeRange(self);
  *&range2.start.value = *&range->var1.var0;
  range2.start.epoch = range->var1.var3;
  *&time2.start.value = kMinimumReadingRangeDuration;
  time2.start.epoch = 0;
  CMTimeMaximum(&range1.start, &range2.start, &time2.start);
  *&range->var1.var0 = *&range1.start.value;
  range->var1.var3 = range1.start.epoch;
  memset(&v26, 0, sizeof(v26));
  objc_msgSend_minimumFrameDuration(self);
  v7 = *&range->var0.var0;
  time2 = v27;
  *&v23.value = v7;
  *&range1.start.value = *&v27.start.value;
  *&range1.start.epoch = *&v27.start.epoch;
  v23.epoch = range->var0.var3;
  memset(&start, 0, sizeof(start));
  *&range1.duration.timescale = *&v27.duration.timescale;
  CMTimeRangeGetEnd(&range2.start, &range1);
  *&range1.start.value = v24;
  range1.start.epoch = v25;
  CMTimeSubtract(&start, &range2.start, &range1.start);
  memset(&v30, 0, sizeof(v30));
  *&range1.start.value = *&time2.start.value;
  range1.start.epoch = time2.start.epoch;
  range2.start = start;
  CMTimeMaximum(&v30, &range1.start, &range2.start);
  range1.start = v30;
  *&range2.start.value = *&time2.start.value;
  range2.start.epoch = time2.start.epoch;
  if (CMTimeCompare(&range1.start, &range2.start))
  {
    memset(&range1, 0, sizeof(range1));
    *&range2.start.value = *&time2.start.value;
    range2.start.epoch = time2.start.epoch;
    end = v30;
    CMTimeRangeFromTimeToTime(&range1, &range2.start, &end);
    end = v23;
    range2 = range1;
    CMTimeClampToRange(&v26, &end, &range2);
  }

  else
  {
    v26 = v30;
  }

  memset(&range2, 0, 24);
  v8 = *&range->var0.var3;
  *&range1.start.value = *&range->var0.var0;
  *&range1.start.epoch = v8;
  *&range1.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&time2.start, &range1);
  range1 = v27;
  CMTimeClampToRange(&range2.start, &time2.start, &range1);
  time2.start = v26;
  start = range2.start;
  CMTimeRangeFromTimeToTime(&range1, &time2.start, &start);
  v9 = *&range1.start.epoch;
  *&range->var0.var0 = *&range1.start.value;
  *&range->var0.var3 = v9;
  *&range->var1.var1 = *&range1.duration.timescale;
  v10 = *&range->var0.var3;
  *&range1.start.value = *&range->var0.var0;
  *&range1.start.epoch = v10;
  *&range1.duration.timescale = *&range->var1.var1;
  [(JFXAVMediaDataReader *)self setReadableTimeRange:&range1];
  v11 = JFXLog_DebugMediaDataReader();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *&range1.start.value = *&range->var0.var0;
    range1.start.epoch = range->var0.var3;
    Seconds = CMTimeGetSeconds(&range1.start);
    v18 = *&range->var0.var3;
    *&range1.start.value = *&range->var0.var0;
    *&range1.start.epoch = v18;
    *&range1.duration.timescale = *&range->var1.var1;
    CMTimeRangeGetEnd(&time2.start, &range1);
    *&v19 = CMTimeGetSeconds(&time2.start);
    LODWORD(range1.start.value) = 138412802;
    *(&range1.start.value + 4) = self;
    LOWORD(range1.start.flags) = 2048;
    *(&range1.start.flags + 2) = Seconds;
    HIWORD(range1.start.epoch) = 2048;
    range1.duration.value = v19;
    _os_log_debug_impl(&dword_242A3B000, v11, OS_LOG_TYPE_DEBUG, "%@ beginReadingAtTimeRange %f-%f", &range1, 0x20u);
  }

  v14 = JFXMediaDataReaderEventSignpostPointCategory(v12, v13);
  signPostID = [(JFXAVMediaDataReader *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = signPostID;
    if (os_signpost_enabled(v14))
    {
      LOWORD(range1.start.value) = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v14, OS_SIGNPOST_EVENT, v16, "beginReadingAtTimeRange", &unk_242B66C87, &range1, 2u);
    }
  }

  objc_msgSend_readableTimeRange(self);
  *&range1.start.value = v20;
  range1.start.epoch = v21;
  if ([(JFXAVMediaDataReader *)self status]== 1)
  {
    *&time2.start.value = *&range1.start.value;
    time2.start.epoch = range1.start.epoch;
    return [(JFXAVMediaDataReader *)self JFX_resetReaderFromTime:&time2];
  }

  else
  {
    *&time2.start.value = *&range1.start.value;
    time2.start.epoch = range1.start.epoch;
    return [(JFXAVMediaDataReader *)self beginReadingAtTime:&time2];
  }
}

- (void)setIsScrubbing:(BOOL)scrubbing
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_isScrubbing != scrubbing)
  {
    scrubbingCopy = scrubbing;
    self->_isScrubbing = scrubbing;
    v5 = JFXLog_DebugMediaDataReader();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(JFXAVMediaDataReader *)self setIsScrubbing:scrubbingCopy, v5];
    }

    v8 = JFXMediaDataReaderEventSignpostPointCategory(v6, v7);
    signPostID = [(JFXAVMediaDataReader *)self signPostID];
    if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v10 = signPostID;
      if (os_signpost_enabled(v8))
      {
        v11[0] = 67109120;
        v11[1] = scrubbingCopy;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v8, OS_SIGNPOST_EVENT, v10, "ScrubModeChanged", "scrubbingMode set to %{BOOL}d", v11, 8u);
      }
    }

    if ([(JFXAVMediaDataReader *)self status]== 1)
    {
      objc_msgSend_startTimeOfCurrentData(self);
      [(JFXAVMediaDataReader *)self JFX_resetReaderFromTime:v11];
    }
  }
}

- (BOOL)beginReadingAtTime:(id *)time
{
  v24 = *MEMORY[0x277D85DE8];
  status = [(JFXAVMediaDataReader *)self status];
  if (status != 1)
  {
    v23 = *time;
    Seconds = CMTimeGetSeconds(&v23);
    v9 = JFXMediaDataReaderIntervalSignpostCategory(v7, v8);
    signPostID = [(JFXAVMediaDataReader *)self signPostID];
    if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = signPostID;
      if (os_signpost_enabled(v9))
      {
        LODWORD(v23.var0) = 134217984;
        *(&v23.var0 + 4) = Seconds;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v11, "beginReadingAtTime", "beginReading %f", &v23, 0xCu);
      }
    }

    v12 = JFXLog_DebugMediaDataReader();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(JFXAVMediaDataReader *)self beginReadingAtTime:v12, Seconds];
    }

    createAssetReader = [(JFXAVMediaDataReader *)self createAssetReader];
    [(JFXAVMediaDataReader *)self setAssetReader:createAssetReader];

    assetReader = [(JFXAVMediaDataReader *)self assetReader];

    if (!assetReader)
    {
      goto LABEL_11;
    }

    v23 = *time;
    [(JFXAVMediaDataReader *)self JFX_configureAssetReaderToReadFromTime:&v23];
    createAssetReaderTrackOutput = [(JFXAVMediaDataReader *)self createAssetReaderTrackOutput];
    [(JFXAVMediaDataReader *)self setAssetReaderTrackOutput:createAssetReaderTrackOutput];

    assetReaderTrackOutput = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];

    if (!assetReaderTrackOutput)
    {
      goto LABEL_11;
    }

    [(JFXAVMediaDataReader *)self JFX_configureAssetReaderTrackOutput];
    LODWORD(status) = [(JFXAVMediaDataReader *)self prepareAssetReaderForReading];
    if (status)
    {
      if ([(JFXAVMediaDataReader *)self status]== 2)
      {
LABEL_11:
        LOBYTE(status) = 0;
        return status;
      }

      [(JFXAVMediaDataReader *)self setStatus:1];
      didUpdateReadingRange = [(JFXAVMediaDataReader *)self didUpdateReadingRange];
      v19 = JFXMediaDataReaderIntervalSignpostCategory(didUpdateReadingRange, v18);
      signPostID2 = [(JFXAVMediaDataReader *)self signPostID];
      if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v21 = signPostID2;
        if (os_signpost_enabled(v19))
        {
          LOWORD(v23.var0) = 0;
          _os_signpost_emit_with_name_impl(&dword_242A3B000, v19, OS_SIGNPOST_INTERVAL_END, v21, "beginReadingAtTime", &unk_242B66C87, &v23, 2u);
        }
      }

      LOBYTE(status) = [(JFXAVMediaDataReader *)self status]!= 2;
    }
  }

  return status;
}

- (void)JFX_configureAssetReaderToReadFromTime:(id *)time
{
  memset(&v11, 0, sizeof(v11));
  memset(&start, 0, sizeof(start));
  objc_msgSend_readableTimeRange(self, a2);
  CMTimeRangeGetEnd(&start, &range);
  if ([(JFXAVMediaDataReader *)self isScrubbing])
  {
    memset(&range, 0, 24);
    lhs = *time;
    *&rhs.value = kDefaultScrubbingReadingRangeDuration;
    rhs.epoch = 0;
    CMTimeAdd(&range.start, &lhs, &rhs);
    lhs = range.start;
    rhs = start;
    if (CMTimeCompare(&lhs, &rhs) < 0)
    {
      start = range.start;
    }
  }

  *&range.start.value = *&time->var0;
  range.start.epoch = time->var3;
  lhs = start;
  CMTimeRangeFromTimeToTime(&v11, &range.start, &lhs);
  range = v11;
  [(JFXAVMediaDataReader *)self setCurrentReadingRange:&range];
  v6 = v11;
  assetReader = [(JFXAVMediaDataReader *)self assetReader];
  range = v6;
  [assetReader setTimeRange:&range];
}

- (void)setCurrentReadingRange:(id *)range
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *&range->var0.var0;
  v6 = *&range->var0.var3;
  *&self->_currentReadingRange.duration.timescale = *&range->var1.var1;
  *&self->_currentReadingRange.start.epoch = v6;
  *&self->_currentReadingRange.start.value = v5;
  v7 = JFXLog_DebugMediaDataReader();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);

  if (v8)
  {
    v9 = JFXLog_DebugMediaDataReader();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *time = *&range->var0.var0;
      *&time[16] = range->var0.var3;
      Seconds = CMTimeGetSeconds(time);
      v11 = *&range->var0.var3;
      *time = *&range->var0.var0;
      *&time[16] = v11;
      *v22 = *&range->var1.var1;
      CMTimeRangeGetEnd(&v20, time);
      v12 = CMTimeGetSeconds(&v20);
      objc_msgSend_readableTimeRange(self);
      *time = v18;
      *&time[16] = v19;
      v13 = CMTimeGetSeconds(time);
      objc_msgSend_readableTimeRange(self);
      CMTimeRangeGetEnd(&v20, time);
      v14 = CMTimeGetSeconds(&v20);
      asset = [(JFXAVMediaDataReader *)self asset];
      v16 = asset;
      if (asset)
      {
        objc_msgSend_duration(asset);
      }

      else
      {
        memset(time, 0, 24);
      }

      v17 = CMTimeGetSeconds(time);
      *time = 138413570;
      *&time[4] = self;
      *&time[12] = 2048;
      *&time[14] = Seconds;
      *&time[22] = 2048;
      *&time[24] = v12;
      *v22 = 2048;
      *&v22[2] = v13;
      *&v22[10] = 2048;
      *&v22[12] = v14;
      v23 = 2048;
      v24 = v17;
      _os_log_debug_impl(&dword_242A3B000, v9, OS_LOG_TYPE_DEBUG, "%@ asset reading range configured to start:%f end:%f with overall mediaStart %f, mediaDuration %f assetDuration %f", time, 0x3Eu);
    }
  }
}

- (void)JFX_configureAssetReaderTrackOutput
{
  if ([(JFXAVMediaDataReader *)self isScrubbing])
  {
    assetReaderTrackOutput = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
    [assetReaderTrackOutput setSupportsRandomAccess:1];
  }

  assetReaderTrackOutput2 = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
  [assetReaderTrackOutput2 setAlwaysCopiesSampleData:0];
}

- (id)createAssetReader
{
  v3 = MEMORY[0x277CE6410];
  asset = [(JFXAVMediaDataReader *)self asset];
  v9 = 0;
  v5 = [v3 assetReaderWithAsset:asset error:&v9];
  v6 = v9;

  if (v5)
  {
    v7 = v5;
  }

  else
  {
    [(JFXAVMediaDataReader *)self didFailWithError:v6];
  }

  return v5;
}

- (id)createAssetReaderTrackOutput
{
  v2 = MEMORY[0x277CE6430];
  assetTrack = [(JFXAVMediaDataReader *)self assetTrack];
  v4 = [v2 assetReaderTrackOutputWithTrack:assetTrack outputSettings:0];

  return v4;
}

- (BOOL)prepareAssetReaderForReading
{
  assetReader = [(JFXAVMediaDataReader *)self assetReader];
  assetReaderTrackOutput = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
  [assetReader addOutput:assetReaderTrackOutput];

  assetReader2 = [(JFXAVMediaDataReader *)self assetReader];
  startReading = [assetReader2 startReading];

  if ((startReading & 1) == 0)
  {
    assetReader3 = [(JFXAVMediaDataReader *)self assetReader];
    error = [assetReader3 error];
    [(JFXAVMediaDataReader *)self didFailWithError:error];
  }

  return startReading;
}

- (BOOL)seekToTime:(id *)time
{
  v38 = *MEMORY[0x277D85DE8];
  if ([(JFXAVMediaDataReader *)self status]== 2)
  {
    goto LABEL_11;
  }

  objc_msgSend_readableTimeRange(self);
  objc_msgSend_minimumFrameDuration(self);
  *&v28.value = *&time->var0;
  v28.epoch = time->var3;
  memset(&v36, 0, sizeof(v36));
  range = v31;
  CMTimeRangeGetEnd(&lhs.start, &range);
  *&range.start.value = v29;
  range.start.epoch = v30;
  CMTimeSubtract(&v36, &lhs.start, &range.start);
  memset(&v35, 0, sizeof(v35));
  *&range.start.value = *&v31.start.value;
  range.start.epoch = v31.start.epoch;
  lhs.start = v36;
  CMTimeMaximum(&v35, &range.start, &lhs.start);
  range.start = v35;
  *&lhs.start.value = *&v31.start.value;
  lhs.start.epoch = v31.start.epoch;
  if (CMTimeCompare(&range.start, &lhs.start))
  {
    memset(&range, 0, sizeof(range));
    *&lhs.start.value = *&v31.start.value;
    lhs.start.epoch = v31.start.epoch;
    end = v35;
    CMTimeRangeFromTimeToTime(&range, &lhs.start, &end);
    end = v28;
    lhs = range;
    CMTimeClampToRange(&v32, &end, &lhs);
  }

  else
  {
    v32 = v35;
  }

  *time = v32;
  memset(&lhs, 0, 24);
  started = objc_msgSend_startTimeOfCurrentData(self, *&v28.value, v28.epoch);
  v7 = JFXMediaDataReaderIntervalSignpostCategory(started, v6);
  signPostID = [(JFXAVMediaDataReader *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = signPostID;
    if (os_signpost_enabled(v7))
    {
      *&range.start.value = *&lhs.start.value;
      range.start.epoch = lhs.start.epoch;
      Seconds = CMTimeGetSeconds(&range.start);
      *&range.start.value = *&time->var0;
      range.start.epoch = time->var3;
      v11 = CMTimeGetSeconds(&range.start);
      LODWORD(range.start.value) = 134218240;
      *(&range.start.value + 4) = Seconds;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = v11;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v9, "Seeking", "seek from %f to %f ", &range, 0x16u);
    }
  }

  v12 = JFXLog_DebugMediaDataReader();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *&range.start.value = *&lhs.start.value;
    range.start.epoch = lhs.start.epoch;
    v23 = CMTimeGetSeconds(&range.start);
    *&range.start.value = *&time->var0;
    range.start.epoch = time->var3;
    *&v24 = CMTimeGetSeconds(&range.start);
    LODWORD(range.start.value) = 138412802;
    *(&range.start.value + 4) = self;
    LOWORD(range.start.flags) = 2048;
    *(&range.start.flags + 2) = v23;
    HIWORD(range.start.epoch) = 2048;
    range.duration.value = v24;
    _os_log_debug_impl(&dword_242A3B000, v12, OS_LOG_TYPE_DEBUG, "%@ seek from %f to %f", &range, 0x20u);
  }

  *&range.start.value = *&lhs.start.value;
  range.start.epoch = lhs.start.epoch;
  *&v31.start.value = *&time->var0;
  v31.start.epoch = time->var3;
  [(JFXAVMediaDataReader *)self JFX_resetReaderIfNecessaryToSeekFromStartTimeOfCurrentData:&range toTime:&v31];
  if ([(JFXAVMediaDataReader *)self status]== 2)
  {
LABEL_11:
    LOBYTE(v13) = 0;
  }

  else
  {
    *&range.start.value = *&time->var0;
    range.start.epoch = time->var3;
    v13 = [(JFXAVMediaDataReader *)self readAheadToTime:&range];
    v15 = JFXMediaDataReaderIntervalSignpostCategory(v13, v14);
    signPostID2 = [(JFXAVMediaDataReader *)self signPostID];
    if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v17 = signPostID2;
      if (os_signpost_enabled(v15))
      {
        LOWORD(range.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v15, OS_SIGNPOST_INTERVAL_END, v17, "Seeking", &unk_242B66C87, &range, 2u);
      }
    }

    v18 = JFXLog_DebugMediaDataReader();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);
    if (v13)
    {
      if (v19)
      {
        *&range.start.value = *&time->var0;
        range.start.epoch = time->var3;
        v20 = CMTimeGetSeconds(&range.start);
        objc_msgSend_startTimeOfCurrentData(self);
        *&v21 = CMTimeGetSeconds(&range.start);
        LODWORD(range.start.value) = 138412802;
        *(&range.start.value + 4) = self;
        LOWORD(range.start.flags) = 2048;
        *(&range.start.flags + 2) = v20;
        HIWORD(range.start.epoch) = 2048;
        range.duration.value = v21;
        _os_log_debug_impl(&dword_242A3B000, v18, OS_LOG_TYPE_DEBUG, "%@ data found for time %f at %f", &range, 0x20u);
      }
    }

    else if (v19)
    {
      *&range.start.value = *&time->var0;
      range.start.epoch = time->var3;
      v25 = CMTimeGetSeconds(&range.start);
      status = [(JFXAVMediaDataReader *)self status];
      error = [(JFXAVMediaDataReader *)self error];
      LODWORD(range.start.value) = 138413058;
      *(&range.start.value + 4) = self;
      LOWORD(range.start.flags) = 2048;
      *(&range.start.flags + 2) = v25;
      HIWORD(range.start.epoch) = 2048;
      range.duration.value = status;
      LOWORD(range.duration.timescale) = 2112;
      *(&range.duration.timescale + 2) = error;
      _os_log_debug_impl(&dword_242A3B000, v18, OS_LOG_TYPE_DEBUG, "%@ data not found for time %f, status %ld error %@", &range, 0x2Au);
    }
  }

  return v13;
}

- (void)JFX_resetReaderIfNecessaryToSeekFromStartTimeOfCurrentData:(id *)data toTime:(id *)time
{
  v7 = *data;
  v6 = *time;
  if ([(JFXAVMediaDataReader *)self JFX_shouldResetReaderWhenSeekingFromStartTimeOfCurrentData:&v7 toTime:&v6])
  {
    if ([(JFXAVMediaDataReader *)self isScrubbing])
    {
      v7 = *time;
      [(JFXAVMediaDataReader *)self JFX_resetReadingRangeWhenScrubbingToTime:&v7];
    }

    else
    {
      v7 = *time;
      [(JFXAVMediaDataReader *)self JFX_resetReaderFromTime:&v7];
    }
  }
}

- (BOOL)JFX_shouldResetReaderWhenSeekingFromStartTimeOfCurrentData:(id *)data toTime:(id *)time
{
  v24 = *MEMORY[0x277D85DE8];
  time.start = *data;
  Seconds = CMTimeGetSeconds(&time.start);
  time.start = *time;
  v8 = CMTimeGetSeconds(&time.start);
  time.start = *time;
  v22 = *data;
  v9 = CMTimeCompare(&time.start, &v22);
  if ((v9 & 0x80000000) != 0)
  {
    v19 = JFXMediaDataReaderEventSignpostPointCategory(v9, v10);
    signPostID = [(JFXAVMediaDataReader *)self signPostID];
    if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v21 = signPostID;
      if (os_signpost_enabled(v19))
      {
        LODWORD(time.start.value) = 134218240;
        *(&time.start.value + 4) = Seconds;
        LOWORD(time.start.flags) = 2048;
        *(&time.start.flags + 2) = v8;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v19, OS_SIGNPOST_EVENT, v21, "Seeking", "seek backwards from %f to %f", &time, 0x16u);
      }
    }

    v16 = JFXLog_DebugMediaDataReader();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    LODWORD(time.start.value) = 138412802;
    *(&time.start.value + 4) = self;
    LOWORD(time.start.flags) = 2048;
    *(&time.start.flags + 2) = Seconds;
    HIWORD(time.start.epoch) = 2048;
    time.duration.value = v8;
    v17 = "%@ seek backwards from %f to %f";
    goto LABEL_19;
  }

  *&time.start.value = *&time->var0;
  time.start.epoch = time->var3;
  v22 = *data;
  if (CMTimeCompare(&time.start, &v22) >= 1)
  {
    *&time.start.value = *&data->var0;
    time.start.epoch = data->var3;
    v22 = *time;
    v11 = [(JFXAVMediaDataReader *)self seekingAheadIsExpensiveFromTime:&time toTime:&v22];
    if (v11)
    {
      v13 = JFXMediaDataReaderEventSignpostPointCategory(v11, v12);
      signPostID2 = [(JFXAVMediaDataReader *)self signPostID];
      if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v15 = signPostID2;
        if (os_signpost_enabled(v13))
        {
          LODWORD(time.start.value) = 134218240;
          *(&time.start.value + 4) = Seconds;
          LOWORD(time.start.flags) = 2048;
          *(&time.start.flags + 2) = v8;
          _os_signpost_emit_with_name_impl(&dword_242A3B000, v13, OS_SIGNPOST_EVENT, v15, "Seeking", "large seek forward from %f to %f", &time, 0x16u);
        }
      }

      v16 = JFXLog_DebugMediaDataReader();
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      LODWORD(time.start.value) = 138412802;
      *(&time.start.value + 4) = self;
      LOWORD(time.start.flags) = 2048;
      *(&time.start.flags + 2) = Seconds;
      HIWORD(time.start.epoch) = 2048;
      time.duration.value = v8;
      v17 = "%@ large seek forward from %f to %f";
LABEL_19:
      _os_log_debug_impl(&dword_242A3B000, v16, OS_LOG_TYPE_DEBUG, v17, &time, 0x20u);
LABEL_16:

      return 1;
    }
  }

  if (![(JFXAVMediaDataReader *)self isScrubbing])
  {
    return 0;
  }

  objc_msgSend_currentReadingRange(self);
  v22 = *time;
  return !CMTimeRangeContainsTime(&time, &v22);
}

- (BOOL)seekingAheadIsExpensiveFromTime:(id *)time toTime:(id *)toTime
{
  v7 = *time;
  Seconds = CMTimeGetSeconds(&v7);
  v7 = *toTime;
  return CMTimeGetSeconds(&v7) - Seconds > 1.0;
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  v5 = JFXLog_mediaDataReader();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(JFXAVMediaDataReader *)self didFailWithError:errorCopy, v5];
  }

  [(JFXAVMediaDataReader *)self setError:errorCopy];
  [(JFXAVMediaDataReader *)self setStatus:2];
}

- (BOOL)JFX_resetReaderFromTime:(id *)time
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = *time;
  Seconds = CMTimeGetSeconds(&v18);
  v8 = JFXMediaDataReaderIntervalSignpostCategory(v6, v7);
  signPostID = [(JFXAVMediaDataReader *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signPostID;
    if (os_signpost_enabled(v8))
    {
      LODWORD(v18.var0) = 134217984;
      *(&v18.var0 + 4) = Seconds;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "resetReader", "resetReaderAtTime %f", &v18, 0xCu);
    }
  }

  v11 = JFXLog_DebugMediaDataReader();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [JFXAVMediaDataReader JFX_resetReaderFromTime:];
  }

  [(JFXAVMediaDataReader *)self cancelReadingForReaderReset];
  [(JFXAVMediaDataReader *)self JFX_releaseReadersForReset];
  [(JFXAVMediaDataReader *)self setStatus:0];
  v18 = *time;
  v12 = [(JFXAVMediaDataReader *)self beginReadingAtTime:&v18];
  v14 = JFXMediaDataReaderIntervalSignpostCategory(v12, v13);
  signPostID2 = [(JFXAVMediaDataReader *)self signPostID];
  if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v16 = signPostID2;
    if (os_signpost_enabled(v14))
    {
      LOWORD(v18.var0) = 0;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v14, OS_SIGNPOST_INTERVAL_END, v16, "resetReader", &unk_242B66C87, &v18, 2u);
    }
  }

  return v12;
}

- (void)cancelReadingForReaderReset
{
  assetReader = [(JFXAVMediaDataReader *)self assetReader];
  [assetReader cancelReading];
}

- (void)JFX_releaseReadersForReset
{
  [(JFXAVMediaDataReader *)self setAssetReader:0];

  [(JFXAVMediaDataReader *)self setAssetReaderTrackOutput:0];
}

- (void)JFX_resetReadingRangeWhenScrubbingToTime:(id *)time
{
  v24 = *MEMORY[0x277D85DE8];
  time.start = *time;
  Seconds = CMTimeGetSeconds(&time.start);
  v8 = JFXMediaDataReaderIntervalSignpostCategory(v6, v7);
  signPostID = [(JFXAVMediaDataReader *)self signPostID];
  if (signPostID - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = signPostID;
    if (os_signpost_enabled(v8))
    {
      LODWORD(time.start.value) = 134217984;
      *(&time.start.value + 4) = Seconds;
      _os_signpost_emit_with_name_impl(&dword_242A3B000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v10, "resetReadingRangeWhenScrubbingToTime", "reset when scrubbing at %f", &time, 0xCu);
    }
  }

  v11 = JFXLog_DebugMediaDataReader();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [JFXAVMediaDataReader JFX_resetReadingRangeWhenScrubbingToTime:];
  }

  if (![(JFXAVMediaDataReader *)self hasRemainingAvailableData]|| ([(JFXAVMediaDataReader *)self readAndDiscardRemainingAvailableData], [(JFXAVMediaDataReader *)self status]!= 2))
  {
    memset(&time, 0, sizeof(time));
    *&timeCopy2.start.value = *&time->var0;
    timeCopy2.start.epoch = time->var3;
    *&duration.value = kDefaultScrubbingReadingRangeDuration;
    duration.epoch = 0;
    CMTimeRangeMake(&time, &timeCopy2.start, &duration);
    timeCopy2 = time;
    v12 = [MEMORY[0x277CCAE60] valueWithCMTimeRange:&timeCopy2];
    v22 = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

    assetReaderTrackOutput = [(JFXAVMediaDataReader *)self assetReaderTrackOutput];
    [assetReaderTrackOutput resetForReadingTimeRanges:v13];

    timeCopy2 = time;
    [(JFXAVMediaDataReader *)self setCurrentReadingRange:&timeCopy2];
    didUpdateReadingRange = [(JFXAVMediaDataReader *)self didUpdateReadingRange];
    v17 = JFXMediaDataReaderIntervalSignpostCategory(didUpdateReadingRange, v16);
    signPostID2 = [(JFXAVMediaDataReader *)self signPostID];
    if (signPostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = signPostID2;
      if (os_signpost_enabled(v17))
      {
        LOWORD(timeCopy2.start.value) = 0;
        _os_signpost_emit_with_name_impl(&dword_242A3B000, v17, OS_SIGNPOST_INTERVAL_END, v19, "resetReadingRangeWhenScrubbingToTime", &unk_242B66C87, &timeCopy2, 2u);
      }
    }
  }
}

- (void)didUpdateReadingRange
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (BOOL)readAheadToTime:(id *)time
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (void)readAndDiscardRemainingAvailableData
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)startTimeOfCurrentData
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a3);
  v7 = [v5 stringWithFormat:@"must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (BOOL)hasRemainingAvailableData
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)JFX_allMediaTimeRange
{
  asset = [(JFXAVMediaDataReader *)self asset];
  v5 = asset;
  if (asset)
  {
    objc_msgSend_duration(asset);
  }

  else
  {
    memset(&duration, 0, sizeof(duration));
  }

  v7 = **&MEMORY[0x277CC08F0];
  CMTimeRangeMake(retstr, &v7, &duration);

  return result;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)readableTimeRange
{
  v3 = *&self[2].var1.var0;
  *&retstr->var0.var0 = *&self[2].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[2].var1.var3;
  return self;
}

- (void)setReadableTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_readableTimeRange.duration.timescale = *&range->var1.var1;
  *&self->_readableTimeRange.start.epoch = v4;
  *&self->_readableTimeRange.start.value = v3;
}

- ($AC64C642040120CEEAD84DEEACA9A5CE)currentReadingRange
{
  v3 = *&self[3].var1.var0;
  *&retstr->var0.var0 = *&self[3].var0.var1;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[3].var1.var3;
  return self;
}

- (void)setIsScrubbing:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_242A3B000, log, OS_LOG_TYPE_DEBUG, "%@ scrubbingMode set to %{BOOL}d", &v3, 0x12u);
}

- (void)beginReadingAtTime:(double)a3 .cold.1(void *a1, NSObject *a2, double a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138412802;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  v8 = 1024;
  v9 = [a1 isScrubbing];
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "%@ begin reading for time %f isScrubbing %{BOOL}d", &v4, 0x1Cu);
}

- (void)didFailWithError:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_242A3B000, log, OS_LOG_TYPE_ERROR, "%@ reading did fail, and can no longer be read with error %@", &v3, 0x16u);
}

- (void)JFX_resetReaderFromTime:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_242A3B000, v0, OS_LOG_TYPE_DEBUG, "%@ reset reader at time %f", v1, 0x16u);
}

- (void)JFX_resetReadingRangeWhenScrubbingToTime:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_5();
  _os_log_debug_impl(&dword_242A3B000, v0, OS_LOG_TYPE_DEBUG, "%@ resetReadingRangeWhenScrubbingToTime for time %f", v1, 0x16u);
}

@end