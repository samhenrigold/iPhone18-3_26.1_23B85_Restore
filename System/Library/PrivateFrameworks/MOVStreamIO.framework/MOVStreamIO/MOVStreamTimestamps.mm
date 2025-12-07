@interface MOVStreamTimestamps
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endTimeForAssetTrack:(SEL)track;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeAtIndex:(SEL)index;
- ($B22509A9E1E897CB5DF0DB02A23A695A)restrictedTimeRange;
- ($B22509A9E1E897CB5DF0DB02A23A695A)timeRangeFrom:(SEL)from to:(unint64_t)to;
- (MOVStreamSampleTimeList)timeList;
- (MOVStreamTimestamps)init;
- (MOVStreamTimestamps)initWithAssetTrack:(id)track;
- (MOVStreamTimestamps)initWithAssetTrack:(id)track restrictedTimeRange:(id *)range;
- (NSArray)cmtimes;
- (NSArray)times;
- (_NSRange)frameRangeFrom:(id *)from to:(id *)to;
- (id)description;
- (id)sampleTimelineForAssetTrack:(id)track;
- (id)sampleTimelineForAssetTrack:(id)track shouldStartTimestampsAtZero:(BOOL)zero;
- (unint64_t)count;
- (void)setRestrictedTimeRange:(id *)range;
- (void)setShouldAppendEndOfStreamTimestamp:(BOOL)timestamp;
- (void)setShouldStartTimestampsAtZero:(BOOL)zero;
@end

@implementation MOVStreamTimestamps

- (MOVStreamTimestamps)initWithAssetTrack:(id)track
{
  v3 = *(MEMORY[0x277CC08D0] + 16);
  v5[0] = *MEMORY[0x277CC08D0];
  v5[1] = v3;
  v5[2] = *(MEMORY[0x277CC08D0] + 32);
  return [(MOVStreamTimestamps *)self initWithAssetTrack:track restrictedTimeRange:v5];
}

- (MOVStreamTimestamps)initWithAssetTrack:(id)track restrictedTimeRange:(id *)range
{
  v22 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v20.receiver = self;
  v20.super_class = MOVStreamTimestamps;
  v8 = [(MOVStreamTimestamps *)&v20 init];
  v9 = v8;
  if (!v8)
  {
LABEL_8:
    v13 = v9;
    goto LABEL_12;
  }

  if (trackCopy)
  {
    objc_storeStrong(&v8->_assetTrack, track);
    *&v9->_shouldStartTimestampsAtZero = 1;
    if ((range->var0.var2 & 1) == 0 || (range->var1.var2 & 1) == 0 || range->var1.var3 || range->var1.var0 < 0)
    {
      start = **&MEMORY[0x277CC08A8];
      v18 = **&MEMORY[0x277CC08B8];
      CMTimeRangeMake(&v21, &start, &v18);
      v10 = *&v21.start.epoch;
      *&range->var0.var0 = *&v21.start.value;
      *&range->var0.var3 = v10;
      *&range->var1.var1 = *&v21.duration.timescale;
    }

    v11 = *&range->var0.var0;
    v12 = *&range->var0.var3;
    *&v9->_restrictedTimeRange.duration.timescale = *&range->var1.var1;
    *&v9->_restrictedTimeRange.start.epoch = v12;
    *&v9->_restrictedTimeRange.start.value = v11;
    goto LABEL_8;
  }

  v14 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    LODWORD(v21.start.value) = 138412290;
    *(&v21.start.value + 4) = v16;
    _os_log_impl(&dword_257883000, v14, OS_LOG_TYPE_ERROR, "❌ ERROR: Could not create %{pubic}@ with nil parameter", &v21, 0xCu);
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (MOVStreamTimestamps)init
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[MIOLog defaultLog];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_257883000, v3, OS_LOG_TYPE_ERROR, "❌ ERROR: Do not call [%{public}@ init].", &v7, 0xCu);
  }

  return 0;
}

- (id)description
{
  timeList = [(MOVStreamTimestamps *)self timeList];
  v3 = [timeList description];

  return v3;
}

- (void)setShouldStartTimestampsAtZero:(BOOL)zero
{
  if (self->_shouldStartTimestampsAtZero != zero)
  {
    self->_shouldStartTimestampsAtZero = zero;
    [(MOVStreamTimestamps *)self clearCachedProperties];
  }
}

- (void)setShouldAppendEndOfStreamTimestamp:(BOOL)timestamp
{
  if (self->_shouldAppendEndOfStreamTimestamp != timestamp)
  {
    self->_shouldAppendEndOfStreamTimestamp = timestamp;
    [(MOVStreamTimestamps *)self clearCachedProperties];
  }
}

- (MOVStreamSampleTimeList)timeList
{
  timeList = self->_timeList;
  if (!timeList)
  {
    if (self->_assetTrack)
    {
      v4 = [(MOVStreamTimestamps *)self sampleTimelineForAssetTrack:?];
      v5 = self->_timeList;
      self->_timeList = v4;

      timeList = self->_timeList;
    }

    else
    {
      timeList = 0;
    }
  }

  return timeList;
}

- (_NSRange)frameRangeFrom:(id *)from to:(id *)to
{
  timeList = [(MOVStreamTimestamps *)self timeList];
  v13 = *from;
  v12 = *to;
  v7 = [timeList frameRangeFrom:&v13 to:&v12];
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.length = v11;
  result.location = v10;
  return result;
}

- ($B22509A9E1E897CB5DF0DB02A23A695A)timeRangeFrom:(SEL)from to:(unint64_t)to
{
  timeList = [(MOVStreamTimestamps *)self timeList];
  if (timeList)
  {
    v10 = timeList;
    [timeList timeRangeFrom:to to:a5];
    timeList = v10;
  }

  else
  {
    *&retstr->var0.var3 = 0u;
    *&retstr->var1.var1 = 0u;
    *&retstr->var0.var0 = 0u;
  }

  return result;
}

- (NSArray)times
{
  timeList = [(MOVStreamTimestamps *)self timeList];
  times = [timeList times];

  return times;
}

- (NSArray)cmtimes
{
  timeList = [(MOVStreamTimestamps *)self timeList];
  cmtimes = [timeList cmtimes];

  return cmtimes;
}

- (unint64_t)count
{
  timeList = [(MOVStreamTimestamps *)self timeList];
  v3 = [timeList count];

  return v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)timeAtIndex:(SEL)index
{
  timeList = [(MOVStreamTimestamps *)self timeList];
  if (timeList)
  {
    v7 = timeList;
    objc_msgSend_timeAtIndex_(timeList);
    timeList = v7;
  }

  else
  {
    retstr->var0 = 0;
    *&retstr->var1 = 0;
    retstr->var3 = 0;
  }

  return result;
}

- (id)sampleTimelineForAssetTrack:(id)track
{
  trackCopy = track;
  v5 = [(MOVStreamTimestamps *)self sampleTimelineForAssetTrack:trackCopy shouldStartTimestampsAtZero:[(MOVStreamTimestamps *)self shouldStartTimestampsAtZero]];
  if ([(MOVStreamTimestamps *)self shouldAppendEndOfStreamTimestamp])
  {
    memset(&v10, 0, sizeof(v10));
    objc_msgSend_endTimeForAssetTrack_(self);
    if (0 >> 96)
    {
      time1 = v10;
      v8 = **&MEMORY[0x277CC08F8];
      if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
      {
        time1 = v10;
        [v5 appendTime:&time1];
      }
    }
  }

  timeline = [v5 timeline];

  return timeline;
}

- (id)sampleTimelineForAssetTrack:(id)track shouldStartTimestampsAtZero:(BOOL)zero
{
  zeroCopy = zero;
  v56 = *MEMORY[0x277D85DE8];
  trackCopy = track;
  v6 = objc_opt_new();
  if (trackCopy)
  {
    segments = [trackCopy segments];
    v29 = segments;
    v30 = trackCopy;
    if ([segments count])
    {
      v8 = -[MOVStreamSampleTimeRangeBuffer initWithCapacity:]([MOVStreamSampleTimeRangeBuffer alloc], "initWithCapacity:", [segments count]);
      v9 = -[MOVStreamSampleTimeRangeBuffer initWithCapacity:]([MOVStreamSampleTimeRangeBuffer alloc], "initWithCapacity:", [segments count]);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v10 = segments;
      v11 = [v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v52;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v52 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v51 + 1) + 8 * i);
            if (([v15 isEmpty] & 1) == 0)
            {
              if (v15)
              {
                objc_msgSend_timeMapping(v15);
                if (BYTE12(v48))
                {
                  objc_msgSend_timeMapping(v15);
                  if (v44)
                  {
                    objc_msgSend_timeMapping(v15);
                    if (!v43)
                    {
                      objc_msgSend_timeMapping(v15);
                      if ((v42 & 0x8000000000000000) == 0)
                      {
                        objc_msgSend_timeMapping(v15);
                        lhs = *&rhs[3].duration.timescale;
                        [(MOVStreamSampleTimeRangeBuffer *)v8 appendTimeRange:&lhs];
                        objc_msgSend_timeMapping(v15);
                        lhs = *&rhs[2].duration.timescale;
                        [(MOVStreamSampleTimeRangeBuffer *)v9 appendTimeRange:&lhs];
                      }
                    }
                  }
                }
              }

              else
              {
                v49 = 0u;
                v50 = 0u;
                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
              }
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v51 objects:v55 count:16];
        }

        while (v12);
      }

      timeRangeList = [(MOVStreamSampleTimeRangeBuffer *)v8 timeRangeList];
      timeRangeList2 = [(MOVStreamSampleTimeRangeBuffer *)v9 timeRangeList];

      trackCopy = v30;
    }

    else
    {
      timeRangeList2 = 0;
      timeRangeList = 0;
    }

    makeSampleCursorAtFirstSampleInDecodeOrder = [trackCopy makeSampleCursorAtFirstSampleInDecodeOrder];
    if (makeSampleCursorAtFirstSampleInDecodeOrder)
    {
      if (timeRangeList)
      {
        v19 = timeRangeList2 == 0;
      }

      else
      {
        v19 = 1;
      }

      v20 = !v19;
      v21 = MEMORY[0x277CC08F8];
      do
      {
        memset(&rhs[1], 0, 24);
        objc_msgSend_presentationTimeStamp(makeSampleCursorAtFirstSampleInDecodeOrder);
        if (v20)
        {
          lhs.start = rhs[1].start;
          if ([timeRangeList indexOfTimeRangeAtTime:&lhs] < 0)
          {
            memset(&v39, 0, sizeof(v39));
            objc_msgSend_currentSampleDuration(makeSampleCursorAtFirstSampleInDecodeOrder);
            memset(&v38, 0, sizeof(v38));
            lhs.start = rhs[1].start;
            rhs[0].start = v39;
            CMTimeAdd(&v38, &lhs.start, &rhs[0].start);
            lhs.start = v38;
            if ([timeRangeList indexOfTimeRangeAtTime:&lhs] == -1)
            {
              *&rhs[1].start.value = *MEMORY[0x277CC0890];
              epoch = *(MEMORY[0x277CC0890] + 16);
            }

            else
            {
              memset(&lhs, 0, sizeof(lhs));
              objc_msgSend_timeRangeAtIndex_(timeRangeList);
              memset(rhs, 0, 48);
              objc_msgSend_timeRangeAtIndex_(timeRangeList2);
              start = rhs[1].start;
              fromRange = lhs;
              toRange = rhs[0];
              CMTimeMapTimeFromRangeToRange(&v35, &start, &fromRange, &toRange);
              *&rhs[1].start.value = *&v35.value;
              epoch = v35.epoch;
            }
          }

          else
          {
            memset(&lhs, 0, sizeof(lhs));
            objc_msgSend_timeRangeAtIndex_(timeRangeList);
            memset(rhs, 0, 48);
            objc_msgSend_timeRangeAtIndex_(timeRangeList2);
            v38 = rhs[1].start;
            fromRange = lhs;
            toRange = rhs[0];
            CMTimeMapTimeFromRangeToRange(&v39, &v38, &fromRange, &toRange);
            *&rhs[1].start.value = *&v39.value;
            epoch = v39.epoch;
          }

          rhs[1].start.epoch = epoch;
        }

        if (rhs[1].start.flags)
        {
          v23 = *&self->_restrictedTimeRange.start.epoch;
          *&lhs.start.value = *&self->_restrictedTimeRange.start.value;
          *&lhs.start.epoch = v23;
          *&lhs.duration.timescale = *&self->_restrictedTimeRange.duration.timescale;
          rhs[0].start = rhs[1].start;
          if (CMTimeRangeContainsTime(&lhs, &rhs[0].start))
          {
            if ([v6 isEmpty])
            {
              lhs.start = rhs[1].start;
              v32 = *v21;
              *&rhs[0].start.value = *v21;
              v24 = *(v21 + 2);
              rhs[0].start.epoch = v24;
              v25 = CMTimeCompare(&lhs.start, &rhs[0].start);
              v26 = zeroCopy;
              if (zeroCopy)
              {
                lhs.start = rhs[1].start;
                *&rhs[0].start.value = v32;
                rhs[0].start.epoch = v24;
                v26 = CMTimeCompare(&lhs.start, &rhs[0].start) != 0;
              }

              if (v25 < 0 || v26)
              {
                *&lhs.start.value = v32;
                lhs.start.epoch = v24;
                [v6 appendTime:&lhs];
              }
            }

            lhs.start = rhs[1].start;
            v33 = *v21;
            *&rhs[0].start.value = *v21;
            v27 = *(v21 + 2);
            rhs[0].start.epoch = v27;
            if ((CMTimeCompare(&lhs.start, &rhs[0].start) & 0x80000000) == 0)
            {
              lhs.start = rhs[1].start;
              *&rhs[0].start.value = v33;
              rhs[0].start.epoch = v27;
              if (CMTimeCompare(&lhs.start, &rhs[0].start) || [v6 isEmpty])
              {
                lhs.start = rhs[1].start;
                [v6 appendTime:&lhs];
              }
            }
          }
        }
      }

      while ([makeSampleCursorAtFirstSampleInDecodeOrder stepInPresentationOrderByCount:1]);
    }

    trackCopy = v30;
  }

  return v6;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)endTimeForAssetTrack:(SEL)track
{
  *retstr = **&MEMORY[0x277CC0890];
  if (a4)
  {
    objc_msgSend_timeRange(a4, track);
    return CMTimeRangeGetEnd(retstr, &v5);
  }

  return self;
}

- ($B22509A9E1E897CB5DF0DB02A23A695A)restrictedTimeRange
{
  v3 = *&self[1].var0.var1;
  *&retstr->var0.var0 = *&self->var1.var3;
  *&retstr->var0.var3 = v3;
  *&retstr->var1.var1 = *&self[1].var1.var0;
  return self;
}

- (void)setRestrictedTimeRange:(id *)range
{
  v3 = *&range->var0.var0;
  v4 = *&range->var0.var3;
  *&self->_restrictedTimeRange.duration.timescale = *&range->var1.var1;
  *&self->_restrictedTimeRange.start.epoch = v4;
  *&self->_restrictedTimeRange.start.value = v3;
}

@end