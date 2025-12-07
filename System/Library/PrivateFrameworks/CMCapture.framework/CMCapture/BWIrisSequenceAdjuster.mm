@interface BWIrisSequenceAdjuster
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedTimeForStillImageTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedTimeForTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)audioOffsetForOriginalStillImageTime:(SEL)time;
- (BOOL)discontinuityExistsBetweenCurrentPTS:(id *)s previousPTS:(id *)tS;
- (BWIrisSequenceAdjuster)initWithMediaTypes:(id)types visMotionMetadataPreloadingEnabled:(BOOL)enabled generateIFrames:(BOOL)frames attachedMediaKeysToPreserve:(id)preserve;
- (CMTime)_adjustedTimeForAudioBufferWithTime:(uint64_t)time@<X8>;
- (CMTime)_originalDurationForVideoBufferWithTime:(uint64_t)time@<X8>;
- (char)_adjustedTimeForVideoBufferWithTime:(unsigned int)time@<W2> forceKeepingBuffer:(uint64_t)buffer@<X3> discontinuityFrameAttributesOut:(uint64_t)out@<X8>;
- (opaqueCMSampleBuffer)dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:(int64_t)index;
- (uint64_t)_getPreviousTimeSkewOut:(uint64_t)result andNextTimeSkewOut:(void *)out forTime:(void *)time;
- (uint64_t)_indexOfTime:(uint64_t)time;
- (void)_adjustTimesInAudioInterleavingQueues;
- (void)_audioOffsetForOriginalStillImageTime:(CMTime *)time@<X2> adjustedStillImageTime:(uint64_t)imageTime@<X8>;
- (void)adjustMovieInfoTimes:(id)times;
- (void)dealloc;
- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer forMediaTypeWithIndex:(int64_t)index;
- (void)enqueueVideoBufferTime:(id *)time nativeTime:(id *)nativeTime isBracketFrame:(BOOL)frame isSISFrame:(BOOL)sFrame;
- (void)reset;
- (void)setMasterMovieOriginalStartTime:(id *)time;
@end

@implementation BWIrisSequenceAdjuster

- (void)reset
{
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *&self->_firstIrisAudioOffset.value = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  self->_firstIrisAudioOffset.epoch = v5;
  *&self->_nextAdjustedVideoTime.value = v4;
  self->_nextAdjustedVideoTime.epoch = v5;
  *&self->_masterMovieOriginalStartTime.value = v4;
  self->_masterMovieOriginalStartTime.epoch = v5;
  *&self->_previewFrameDuration.value = v4;
  self->_previewFrameDuration.epoch = v5;
  self->_lastVideoAdjustedTime.epoch = v5;
  *&self->_lastVideoAdjustedTime.value = v4;
  [(BWMotionDataPreserver *)self->_motionDataPreserver reset];

  self->_preservedAttachedMediaSbufByKeys = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  interleavingQueues = self->_interleavingQueues;
  v7 = [(NSMutableArray *)interleavingQueues countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(interleavingQueues);
        }

        [*(*(&v12 + 1) + 8 * v10++) removeAllObjects];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)interleavingQueues countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v8);
  }
}

- (BWIrisSequenceAdjuster)initWithMediaTypes:(id)types visMotionMetadataPreloadingEnabled:(BOOL)enabled generateIFrames:(BOOL)frames attachedMediaKeysToPreserve:(id)preserve
{
  v24.receiver = self;
  v24.super_class = BWIrisSequenceAdjuster;
  v10 = [(BWIrisSequenceAdjuster *)&v24 init];
  if (v10)
  {
    preserveCopy = preserve;
    v10->_interleavingQueues = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10->_discontinuities = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10->_mediaTypes = malloc_type_calloc(4uLL, [types count], 0x100004052888210uLL);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [types countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v21;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(types);
          }

          v13 = v16 + 1;
          v10->_mediaTypes[v16] = [*(*(&v20 + 1) + 8 * v15) intValue];
          -[NSMutableArray addObject:](v10->_interleavingQueues, "addObject:", [MEMORY[0x1E695DF70] array]);
          ++v15;
          ++v16;
        }

        while (v12 != v15);
        v12 = [types countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v12);
    }

    v10->_timeSkews = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!enabled)
    {
      v10->_motionDataPreserver = [[BWMotionDataPreserver alloc] initWithName:[(BWIrisSequenceAdjuster *)v10 description]];
    }

    v10->_generateIFrames = frames;
    v10->_attachedMediaKeysToPreserve = preserveCopy;
    [(BWIrisSequenceAdjuster *)v10 reset];
  }

  return v10;
}

- (void)dealloc
{
  free(self->_mediaTypes);

  v3.receiver = self;
  v3.super_class = BWIrisSequenceAdjuster;
  [(BWIrisSequenceAdjuster *)&v3 dealloc];
}

- (BOOL)discontinuityExistsBetweenCurrentPTS:(id *)s previousPTS:(id *)tS
{
  memset(&v11, 0, sizeof(v11));
  time = self->_previewFrameDuration;
  CMTimeMultiply(&v11, &time, 3);
  memset(&time, 0, sizeof(time));
  lhs = *s;
  rhs = *tS;
  CMTimeSubtract(&time, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  CMTimeMake(&rhs, 5, 1000);
  v7 = time;
  CMTimeAdd(&lhs, &v7, &rhs);
  rhs = lhs;
  v7 = v11;
  return CMTimeCompare(&rhs, &v7) > 0;
}

- (void)enqueueVideoBufferTime:(id *)time nativeTime:(id *)nativeTime isBracketFrame:(BOOL)frame isSISFrame:(BOOL)sFrame
{
  sFrameCopy = sFrame;
  frameCopy = frame;
  selfCopy = self;
  v11 = [(NSMutableArray *)self->_timeSkews count];
  if (v11 < 2)
  {
    goto LABEL_52;
  }

  nativeTimeCopy = nativeTime;
  v61 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 8);
  v12 = *(MEMORY[0x1E6960C70] + 12);
  v62 = v13;
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v44 = v61;
  value = v61;
  timescale = v13;
  v15 = (v12 & 1) == 0;
  v41 = frameCopy;
  v42 = sFrameCopy;
  timeCopy = time;
  if ((v12 & 1) == 0)
  {
    v16 = v11;
    v17 = v11 - 1;
    if (((v11 - 1) & 0x8000000000000000) == 0)
    {
      v43 = 0;
      v18 = 0;
      v19 = v12;
      v45 = v14;
      epoch = v14;
      flags = v12;
      while (1)
      {
        v21 = selfCopy;
        v22 = [(NSMutableArray *)selfCopy->_timeSkews objectAtIndexedSubscript:v17];
        if ([v22 isBracketFrame])
        {
          break;
        }

        if ((flags & 1) == 0)
        {
          if (v22)
          {
            objc_msgSend_native(v22);
            flags = v58.flags;
            epoch = v58.epoch;
          }

          else
          {
            epoch = 0;
            flags = 0;
            memset(&v58, 0, sizeof(v58));
          }

          value = v58.value;
          timescale = v58.timescale;
          if (v18)
          {
            isSISFrame = [v22 isSISFrame];
            v24 = v43;
            if (isSISFrame)
            {
              v24 = v22;
            }

            v43 = v24;
            v18 = 1;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_7;
        }

        if (![v22 isStartOfDiscontinuity])
        {
          if (v22)
          {
            objc_msgSend_native(v22);
            v19 = v58.flags;
            v45 = v58.epoch;
          }

          else
          {
            v45 = 0;
            v19 = 0;
            memset(&v58, 0, sizeof(v58));
          }

          selfCopy = v21;
          v61 = v58.value;
          v62 = v58.timescale;
          v16 = v17;
          goto LABEL_9;
        }

        v61 = v44;
        v62 = v13;
        v45 = v14;
        epoch = v14;
        value = v44;
        flags = v12;
        v19 = v12;
        timescale = v13;
LABEL_8:
        selfCopy = v21;
LABEL_9:
        v15 = (v19 & 1) == 0;
        if ((v19 & 1) == 0)
        {
          v17 = v16 - 1;
          if (((v16 - 1) & 0x8000000000000000) == 0)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      v61 = v44;
      v62 = v13;
      value = v44;
      timescale = v13;
      v18 |= [v22 isSISFrame];
      v45 = v14;
      epoch = v14;
      flags = v12;
      v19 = v12;
LABEL_7:
      v16 = v17;
      goto LABEL_8;
    }
  }

  v43 = 0;
  v45 = v14;
  epoch = v14;
  flags = v12;
  v19 = v12;
LABEL_28:
  frameCopy = v41;
  nativeTime = nativeTimeCopy;
  if (!v15)
  {
    memset(&v58, 0, sizeof(v58));
    lhs.value = value;
    lhs.timescale = timescale;
    lhs.flags = flags;
    lhs.epoch = epoch;
    rhs.value = v61;
    rhs.timescale = v62;
    rhs.flags = v19;
    rhs.epoch = v45;
    CMTimeSubtract(&v58, &lhs, &rhs);
    lhs = v58;
    if (CMTimeGetSeconds(&lhs) <= 0.133333333 || (selfCopy->_previewFrameDuration.flags & 1) == 0)
    {
      v55.epoch = v45;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      v55.value = v61;
      v55.timescale = v62;
      v55.flags = v19;
      CMTimeSubtract(&lhs, &rhs, &v55);
      selfCopy->_previewFrameDuration = lhs;
    }

    memset(&lhs, 0, sizeof(lhs));
    rhs = selfCopy->_previewFrameDuration;
    CMTimeMultiply(&lhs, &rhs, 3);
    lastObject = [(NSMutableArray *)selfCopy->_timeSkews lastObject];
    v26 = lastObject;
    memset(&rhs, 0, sizeof(rhs));
    if (lastObject)
    {
      objc_msgSend_native(lastObject);
    }

    else
    {
      memset(&v55, 0, sizeof(v55));
    }

    time1 = *nativeTimeCopy;
    CMTimeSubtract(&rhs, &time1, &v55);
    memset(&v55, 0, sizeof(v55));
    CMTimeMake(&time1, 5, 1000);
    time2 = rhs;
    CMTimeAdd(&v55, &time2, &time1);
    time1 = v55;
    time2 = lhs;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      [v26 setIsStartOfDiscontinuity:1];
      v27 = [BWIrisDiscontinuity alloc];
      if (v26)
      {
        objc_msgSend_original(v26);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      generateIFrames = selfCopy->_generateIFrames;
      timeSkews = selfCopy->_timeSkews;
      time2 = v55;
      previewFrameDuration = selfCopy->_previewFrameDuration;
      p_time1 = &time1;
      p_time2 = &time2;
      p_previewFrameDuration = &previewFrameDuration;
      v34 = v27;
      v35 = 0;
LABEL_46:
      v36 = [(BWIrisDiscontinuity *)v34 initWithTime:p_time1 duration:p_time2 targetFrameDuration:p_previewFrameDuration onlyRetime:v35 generateIFrames:generateIFrames timeSkews:timeSkews];
      if (v36)
      {
        [(NSMutableArray *)selfCopy->_discontinuities addObject:v36];
      }

      goto LABEL_49;
    }

    if (v43)
    {
      objc_msgSend_original(v43);
      if ((v50 & 0x100000000) != 0 && [v26 isBracketFrame] && objc_msgSend(v26, "isSISFrame") && (v41 & 1) == 0)
      {
        [v26 setIsStartOfDiscontinuity:1];
        memset(&time1, 0, sizeof(time1));
        objc_msgSend_native(v43);
        previewFrameDuration = *nativeTimeCopy;
        CMTimeSubtract(&time1, &previewFrameDuration, &time2);
        v28 = [BWIrisDiscontinuity alloc];
        objc_msgSend_original(v43);
        generateIFrames = selfCopy->_generateIFrames;
        timeSkews = selfCopy->_timeSkews;
        previewFrameDuration = time1;
        v47 = *&selfCopy->_previewFrameDuration.value;
        v48 = selfCopy->_previewFrameDuration.epoch;
        p_time1 = &time2;
        p_time2 = &previewFrameDuration;
        p_previewFrameDuration = &v47;
        v34 = v28;
        v35 = 1;
        goto LABEL_46;
      }
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
    }
  }

LABEL_49:
  if ([(NSMutableArray *)selfCopy->_discontinuities count]>= 0xC9)
  {
    [(NSMutableArray *)selfCopy->_discontinuities removeObjectAtIndex:0];
  }

  sFrameCopy = v42;
  time = timeCopy;
LABEL_52:
  v37 = [BWTimeSkew alloc];
  v58 = *nativeTime;
  lhs = *time;
  v38 = [(BWTimeSkew *)v37 initWithNativeTime:&v58 originalTime:&lhs isBracketFrame:frameCopy isSISFrame:sFrameCopy];
  [(NSMutableArray *)selfCopy->_timeSkews addObject:v38];

  if ([(NSMutableArray *)selfCopy->_timeSkews count]>= 0xC9)
  {
    [(NSMutableArray *)selfCopy->_timeSkews removeObjectAtIndex:0];
  }
}

- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer forMediaTypeWithIndex:(int64_t)index
{
  if (buffer)
  {
    memset(&v58, 0, sizeof(v58));
    CMSampleBufferGetPresentationTimeStamp(&v58, buffer);
    flags = v58.flags;
    v55 = 0;
    v53 = xmmword_1AD056798;
    v54 = 0;
    v8 = self->_mediaTypes[index];
    switch(v8)
    {
      case 0x6D657461u:
        v55 = CFRetain(buffer);
        if ((flags & 1) == 0)
        {
          goto LABEL_39;
        }

        break;
      case 0x76696465u:
        v11 = *MEMORY[0x1E69604E0];
        v12 = CMGetAttachment(buffer, *MEMORY[0x1E69604E0], 0);
        v13 = *MEMORY[0x1E695E4D0];
        v14 = v12 == *MEMORY[0x1E695E4D0];
        time2 = v58;
        [(BWIrisSequenceAdjuster *)self _adjustedTimeForVideoBufferWithTime:v14 forceKeepingBuffer:&v53 discontinuityFrameAttributesOut:&time1];
        value = time1.value;
        v9 = time1.flags;
        timescale = time1.timescale;
        epoch = time1.epoch;
        if (time1.flags)
        {
          if (self->_lastVideoAdjustedTime.flags)
          {
            time1.timescale = timescale;
            time2 = self->_lastVideoAdjustedTime;
            time1.value = value;
            if (CMTimeCompare(&time1, &time2) <= 0)
            {
              [BWIrisSequenceAdjuster enqueueSampleBuffer:forMediaTypeWithIndex:];
              goto LABEL_39;
            }
          }

          v17 = 0;
        }

        else
        {
          motionDataPreserver = self->_motionDataPreserver;
          v38 = v11;
          v39 = v13;
          v37 = motionDataPreserver == 0;
          if (motionDataPreserver)
          {
            v35 = time1.epoch;
            [(BWMotionDataPreserver *)motionDataPreserver preserveMotionDataForSoonToBeDroppedSampleBuffer:buffer];
          }

          else
          {
            if (self->_lastVideoAdjustedTime.flags)
            {
              CMTimeMake(&time2, self->_lastVideoAdjustedTime.timescale / 100, self->_lastVideoAdjustedTime.timescale);
              lhs = self->_lastVideoAdjustedTime;
              CMTimeAdd(&time1, &lhs, &time2);
            }

            else
            {
              CMSampleBufferGetPresentationTimeStamp(&time1, buffer);
            }

            value = time1.value;
            v9 = time1.flags;
            timescale = time1.timescale;
            v35 = time1.epoch;
          }

          v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          attachedMediaKeysToPreserve = self->_attachedMediaKeysToPreserve;
          v20 = [(NSArray *)attachedMediaKeysToPreserve countByEnumeratingWithState:&v46 objects:v45 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v47;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v47 != v22)
                {
                  objc_enumerationMutation(attachedMediaKeysToPreserve);
                }

                [v18 setObject:BWSampleBufferGetAttachedMedia(buffer forKeyedSubscript:{*(*(&v46 + 1) + 8 * i)), *(*(&v46 + 1) + 8 * i)}];
              }

              v21 = [(NSArray *)attachedMediaKeysToPreserve countByEnumeratingWithState:&v46 objects:v45 count:16];
            }

            while (v21);
          }

          v17 = v37;
          if ([v18 count])
          {

            self->_preservedAttachedMediaSbufByKeys = v18;
          }

          v11 = v38;
          v13 = v39;
          epoch = v36;
          if ((v9 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        time1.value = value;
        time1.timescale = timescale;
        time1.flags = v9;
        time1.epoch = epoch;
        time2 = **&MEMORY[0x1E6960C70];
        BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(buffer, &time1, &time2.value, &v55);
        v24 = v55;
        if (!v55)
        {
          [BWIrisSequenceAdjuster enqueueSampleBuffer:forMediaTypeWithIndex:];
          goto LABEL_39;
        }

        self->_lastVideoAdjustedTime.value = value;
        self->_lastVideoAdjustedTime.timescale = timescale;
        self->_lastVideoAdjustedTime.flags = v9;
        self->_lastVideoAdjustedTime.epoch = epoch;
        v25 = CMGetAttachment(v24, *off_1E798A3C8, 0);
        if (v53 == 1)
        {
          [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v54), 0x1F216ABB0}];
          [v25 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", *(&v53 + 1)), 0x1F216ABD0}];
          if (BYTE1(v53) == 1)
          {
            CMSetAttachment(v55, v11, v13, 1u);
          }
        }

        if (v17)
        {
          CMSetAttachment(v55, @"SampleDataToBeDropped", v13, 1u);
          [v25 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21AA550];
          goto LABEL_37;
        }

        v27 = self->_motionDataPreserver;
        if (v27)
        {
          [(BWMotionDataPreserver *)v27 prependPreservedMotionDataToSampleBuffer:v55];
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        preservedAttachedMediaSbufByKeys = self->_preservedAttachedMediaSbufByKeys;
        v29 = [(NSMutableDictionary *)preservedAttachedMediaSbufByKeys countByEnumeratingWithState:&v41 objects:v40 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v42;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v42 != v31)
              {
                objc_enumerationMutation(preservedAttachedMediaSbufByKeys);
              }

              v33 = *(*(&v41 + 1) + 8 * j);
              if (!BWSampleBufferGetAttachedMedia(v55, v33))
              {
                v34 = [(NSMutableDictionary *)self->_preservedAttachedMediaSbufByKeys objectForKeyedSubscript:v33];
                BWSampleBufferSetAttachedMedia(v55, v33, v34);
              }
            }

            v30 = [(NSMutableDictionary *)preservedAttachedMediaSbufByKeys countByEnumeratingWithState:&v41 objects:v40 count:16];
          }

          while (v30);
        }

        self->_preservedAttachedMediaSbufByKeys = 0;
        if ((v9 & 1) == 0)
        {
          goto LABEL_39;
        }

        break;
      case 0x736F756Eu:
        time2 = v58;
        [(BWIrisSequenceAdjuster *)self _adjustedTimeForAudioBufferWithTime:&time1];
        value = time1.value;
        LOBYTE(v9) = time1.flags;
        timescale = time1.timescale;
        time2 = **&MEMORY[0x1E6960C70];
        v10 = BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(buffer, &time1, &time2.value, &v55);
        if (!v55)
        {
          [BWIrisSequenceAdjuster enqueueSampleBuffer:v10 forMediaTypeWithIndex:?];
          goto LABEL_39;
        }

LABEL_37:
        if ((v9 & 1) == 0)
        {
          goto LABEL_39;
        }

        break;
      default:
        if ((*(MEMORY[0x1E6960C70] + 12) & 1) == 0)
        {
LABEL_39:
          if (v55)
          {
            CFRelease(v55);
          }

          return;
        }

        break;
    }

    v26 = [(NSMutableArray *)self->_interleavingQueues objectAtIndexedSubscript:index];
    [v26 addObject:v55];
    goto LABEL_39;
  }
}

- (CMTime)_adjustedTimeForAudioBufferWithTime:(uint64_t)time@<X8>
{
  if (result)
  {
    v5 = result;
    *time = *a2;
    result = [*&result->timescale count];
    if (result)
    {
      if ((v5[1].value & 0x100000000) != 0)
      {
        lhs = *a2;
        v6 = *&v5->epoch;
        return CMTimeSubtract(time, &lhs, &v6);
      }
    }
  }

  else
  {
    *time = 0;
    *(time + 8) = 0;
    *(time + 16) = 0;
  }

  return result;
}

- (char)_adjustedTimeForVideoBufferWithTime:(unsigned int)time@<W2> forceKeepingBuffer:(uint64_t)buffer@<X3> discontinuityFrameAttributesOut:(uint64_t)out@<X8>
{
  if (result)
  {
    v8 = result;
    v9 = result + 48;
    if ([*(result + 1) count])
    {
      v10 = (v8 + 48);
    }

    else
    {
      v10 = a2;
    }

    *out = *&v10->value;
    *(out + 16) = v10->epoch;
    v11 = MEMORY[0x1E6960C70];
    value = *MEMORY[0x1E6960C70];
    LODWORD(v12) = *(MEMORY[0x1E6960C70] + 12);
    timescale = *(MEMORY[0x1E6960C70] + 8);
    v13 = *(MEMORY[0x1E6960C70] + 16);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v14 = *(v8 + 1);
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v37 count:16];
    if (v15)
    {
      v23 = v15;
      v30 = v13;
      bufferCopy = buffer;
      v29 = v12;
      v24 = *v39;
LABEL_8:
      v25 = 0;
      while (1)
      {
        if (*v39 != v24)
        {
          objc_enumerationMutation(v14);
        }

        v12 = *(*(&v38 + 1) + 8 * v25);
        v36 = *a2;
        if ([v12 containsVideoBufferTime:&v36])
        {
          break;
        }

        if (v23 == ++v25)
        {
          v23 = [v14 countByEnumeratingWithState:&v38 objects:v37 count:16];
          if (v23)
          {
            goto LABEL_8;
          }

          v22 = 1;
          v13 = v30;
          LODWORD(v12) = v29;
          goto LABEL_20;
        }
      }

      v36 = *a2;
      v26 = [v12 shouldKeepBufferWithTime:&v36 forceKeepingBuffer:time nextAdjustedTimeInOut:v8 + 48 discontinuityFrameAttributesOut:bufferCopy];
      if (v12)
      {
        objc_msgSend_targetFrameDuration(v12);
        LODWORD(v12) = v36.flags;
        epoch = v36.epoch;
      }

      else
      {
        epoch = 0;
        memset(&v36, 0, sizeof(v36));
      }

      value = v36.value;
      timescale = v36.timescale;
      if (v26)
      {
        v22 = 0;
        v13 = epoch;
        goto LABEL_20;
      }

      *out = *v11;
      *(out + 16) = v30;
    }

    else
    {
      v22 = 1;
LABEL_20:
      if ((*(out + 12) & 1) == 0)
      {
        *out = *&a2->value;
        *(out + 16) = a2->epoch;
      }

      if (v22)
      {
        memset(&v36, 0, sizeof(v36));
        v35 = *a2;
        [(BWIrisSequenceAdjuster *)v8 _originalDurationForVideoBufferWithTime:&v36, v16, v17, v18, v19, v20, v21];
        if ((v12 & 1) == 0)
        {
          value = *(v8 + 14);
          LODWORD(v12) = *(v8 + 31);
          timescale = *(v8 + 30);
          v13 = *(v8 + 16);
        }

        if ((v36.flags & 1) == 0)
        {
          v36.value = value;
          v36.timescale = timescale;
          v36.flags = v12;
          v36.epoch = v13;
        }

        lhs = *out;
        rhs = v36;
        CMTimeAdd(&v35, &lhs, &rhs);
        *v9 = *&v35.value;
        *(v8 + 8) = v35.epoch;
      }
    }

    v36 = *a2;
    result = [(BWIrisSequenceAdjuster *)v8 _indexOfTime:v16, v17, v18, v19, v20, v21];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = [*(v8 + 10) objectAtIndexedSubscript:result];
      v36 = *out;
      return [v28 setAdjusted:&v36];
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

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)audioOffsetForOriginalStillImageTime:(SEL)time
{
  v6 = *a4;
  v5 = **&MEMORY[0x1E6960C70];
  [(BWIrisSequenceAdjuster *)self _audioOffsetForOriginalStillImageTime:&v5 adjustedStillImageTime:retstr];
  return result;
}

- (void)_audioOffsetForOriginalStillImageTime:(CMTime *)time@<X2> adjustedStillImageTime:(uint64_t)imageTime@<X8>
{
  if (result)
  {
    flags = time->flags;
    if ((flags & 1) == 0)
    {
      lhs = *a2;
      objc_msgSend_adjustedTimeForTime_(result, a2, &lhs);
      *time = v13;
      flags = time->flags;
    }

    if (~flags & 0x11) != 0 && (flags)
    {
      lhs = *a2;
      v11 = *time;
      CMTimeSubtract(&v13, &lhs, &v11);
      v14 = *&v13.timescale;
      if ((result[1].value & 0x100000000) != 0)
      {
        lhs.value = v13.value & ~(v13.value >> 63);
        *&lhs.timescale = v14;
        v11 = *&result->epoch;
        CMTimeSubtract(&v13, &lhs, &v11);
        value = v13.value;
        v14 = *&v13.timescale;
      }

      else
      {
        result->epoch = v13.value & ~(v13.value >> 63);
        *&result[1].value = v14;
        value = *MEMORY[0x1E6960CC0];
        v14 = *(MEMORY[0x1E6960CC0] + 8);
        [(BWIrisSequenceAdjuster *)result _adjustTimesInAudioInterleavingQueues];
      }

      *imageTime = value;
      *(imageTime + 8) = v14;
    }

    else
    {
      v9 = MEMORY[0x1E6960C70];
      *imageTime = *MEMORY[0x1E6960C70];
      *(imageTime + 16) = *(v9 + 16);
    }
  }

  else
  {
    *imageTime = 0;
    *(imageTime + 8) = 0;
    *(imageTime + 16) = 0;
  }
}

- (opaqueCMSampleBuffer)dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:(int64_t)index
{
  v5 = [(NSMutableArray *)self->_interleavingQueues objectAtIndexedSubscript:?];
  result = [v5 count];
  if (result)
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v13 = 0;
    memset(&v12, 0, sizeof(v12));
    CMSampleBufferGetPresentationTimeStamp(&v12, v7);
    v8 = self->_mediaTypes[index];
    if (v8 != 1986618469)
    {
      if (v8 != 1936684398)
      {
        if (v8 == 1835365473)
        {
          v10 = v12;
          v11 = v12;
          if ([(NSMutableArray *)self->_discontinuities count])
          {
            v14 = v10;
            objc_msgSend_adjustedTimeForTime_(self);
          }

          if (v11.flags)
          {
            if ((v11.flags & 0x10) != 0)
            {
              return v13;
            }

            v14 = v11;
            v10 = **&MEMORY[0x1E6960C70];
            v9 = BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(v7, &v14, &v10.value, &v13);
            if (!v13)
            {
              [BWIrisSequenceAdjuster dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:v9];
              return v13;
            }
          }
        }

LABEL_13:
        [v5 removeObjectAtIndex:0];
        return v13;
      }

      if ((self->_firstIrisAudioOffset.flags & 1) == 0)
      {
        return v13;
      }
    }

    v13 = CFRetain(v7);
    goto LABEL_13;
  }

  return result;
}

- (void)adjustMovieInfoTimes:(id)times
{
  v35 = 0;
  v36 = 0;
  v37 = 0;
  if (times)
  {
    objc_msgSend_movieStartTime(times, a2);
    memset(&v34, 0, sizeof(v34));
    objc_msgSend_movieEndTime(times);
    v31 = 0;
    v32 = 0;
    v33 = 0;
    objc_msgSend_movieEndingVideoPTS(times);
    memset(&v30, 0, sizeof(v30));
    objc_msgSend_stillImageCaptureTime(times);
  }

  else
  {
    memset(&v34, 0, sizeof(v34));
    v31 = 0;
    v32 = 0;
    v33 = 0;
    memset(&v30, 0, sizeof(v30));
  }

  memset(&v29[1], 0, sizeof(CMTime));
  if (self)
  {
    objc_msgSend_adjustedTimeForTime_(self);
    memset(v29, 0, 24);
    objc_msgSend_adjustedTimeForTime_(self);
    memset(&v28, 0, sizeof(v28));
    v27 = v34;
    objc_msgSend_adjustedTimeForTime_(self);
  }

  else
  {
    memset(v29, 0, 24);
    memset(&v28, 0, sizeof(v28));
  }

  time1 = v29[0];
  time2 = self->_nextAdjustedVideoTime;
  CMTimeMinimum(&v27, &time1, &time2);
  v29[0] = v27;
  time1 = v28;
  time2 = self->_nextAdjustedVideoTime;
  CMTimeMinimum(&v27, &time1, &time2);
  v28 = v27;
  memset(&v27, 0, sizeof(v27));
  time1 = v30;
  objc_msgSend_adjustedTimeForTime_(self);
  v5 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if ((v29[1].flags & 0x11) == 1)
  {
    time1 = v29[1];
    [times setMovieStartTime:&time1];
    if (times)
    {
      objc_msgSend_movieStartTime(times);
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }

    time1 = v22;
    [times setMovieTrimStartTime:&time1];
  }

  if ((v29[0].flags & 0x11) == 1)
  {
    time1 = v29[0];
    [times setMovieEndingVideoPTS:&time1];
  }

  if ((v28.flags & 0x11) == 1)
  {
    time1 = v28;
    [times setMovieEndTime:&time1];
    if (times)
    {
      objc_msgSend_movieEndTime(times);
    }

    else
    {
      memset(&v21[1], 0, 24);
    }

    time1 = *&v21[1];
    [times setMovieTrimEndTime:&time1];
  }

  if ((v27.flags & 0x11) == 1)
  {
    time1 = v27;
    [times setStillImageCaptureTime:&time1];
    return;
  }

  if ((v28.flags & 0x11) == 1)
  {
    v21[0] = 0;
    time1 = v30;
    [BWIrisSequenceAdjuster _getPreviousTimeSkewOut:v21 andNextTimeSkewOut:&v20 forTime:?];
    v6 = v21[0];
    if (v21[0])
    {
      objc_msgSend_adjusted(v21[0]);
      if (v19)
      {
        if (times)
        {
          objc_msgSend_audioOffset(times);
          if ((v17 & 0x100000000) != 0)
          {
            return;
          }
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
        }

        memset(&time1, 0, sizeof(time1));
        objc_msgSend_original(v6);
        lhs = v30;
        CMTimeSubtract(&time1, &lhs, &time2);
        CMTimeMake(&time2, 800, 1000);
        lhs = time1;
        if (CMTimeCompare(&lhs, &time2) <= 0)
        {
          CMTimeMake(&lhs, 5, 1000);
          rhs = v28;
          CMTimeSubtract(&time2, &rhs, &lhs);
          epoch = time2.epoch;
          v27 = time2;
          value = time2.value;
          flags = time2.flags;
          timescale = time2.timescale;
        }

        else
        {
          flags = *(v5 + 12);
          epoch = *(v5 + 16);
          memset(&time2, 0, sizeof(time2));
          objc_msgSend_original(v6);
          objc_msgSend_adjusted(v6);
          CMTimeSubtract(&time2, &lhs, &rhs);
          if (time2.flags)
          {
            rhs = v30;
            v13 = time2;
            CMTimeSubtract(&lhs, &rhs, &v13);
            v27 = lhs;
          }
        }

        time2 = v30;
        lhs = v27;
        if (CMTimeCompare(&time2, &lhs))
        {
          memset(&time2, 0, sizeof(time2));
          lhs = v30;
          rhs = v27;
          [(BWIrisSequenceAdjuster *)self _audioOffsetForOriginalStillImageTime:&rhs adjustedStillImageTime:&time2];
          if (time2.flags)
          {
            lhs = time2;
            rhs = **&MEMORY[0x1E6960CC0];
            if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
            {
              lhs = v27;
              [times setStillImageCaptureTime:&lhs];
              lhs = time2;
              [times setAudioOffset:&lhs];
            }
          }
        }

        if (flags)
        {
          if (times)
          {
            objc_msgSend_stillImageCaptureTime(times);
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          if (CMTimeCompare(&lhs, &time2) < 0)
          {
            time2.value = value;
            time2.timescale = timescale;
            time2.flags = flags;
            time2.epoch = epoch;
            [times setStillImageCaptureTime:&time2];
          }
        }

        if (times)
        {
          objc_msgSend_audioOffset(times);
          if ((v11 & 0x100000000) != 0)
          {
            return;
          }
        }

        else
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
        }

        if ([times isFinalEnqueuedIrisRequest])
        {
          CMTimeMake(&v9, 1, 1000);
          time2 = v9;
          [times setAudioOffset:&time2];
        }
      }
    }
  }
}

- (void)setMasterMovieOriginalStartTime:(id *)time
{
  v5 = *&time->var0;
  self->_masterMovieOriginalStartTime.epoch = time->var3;
  *&self->_masterMovieOriginalStartTime.value = v5;
  if ([(NSMutableArray *)self->_timeSkews count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_timeSkews reverseObjectEnumerator];
    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      v11 = MEMORY[0x1E6960C70];
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        if (v13)
        {
          objc_msgSend_original(v13);
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = *time;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          break;
        }

        v14 = [v13 copy];
        time1 = *v11;
        [v14 setAdjusted:&time1];
        [array insertObject:v14 atIndex:0];

        if (v9 == ++v12)
        {
          v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v40 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    self->_timeSkews = array;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    discontinuities = self->_discontinuities;
    v16 = [(NSMutableArray *)discontinuities countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(discontinuities);
          }

          [*(*(&v34 + 1) + 8 * i) resetWithNewTimeSkews:self->_timeSkews];
        }

        v17 = [(NSMutableArray *)discontinuities countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v17);
    }
  }

  if ([(NSMutableArray *)self->_discontinuities count])
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = self->_discontinuities;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v30;
LABEL_23:
      v26 = 0;
      while (1)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v29 + 1) + 8 * v26);
        if (v27)
        {
          objc_msgSend_time(v27);
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = *time;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          break;
        }

        [indexSet addIndex:v24++];
        if (v23 == ++v26)
        {
          v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v28 count:16];
          if (v23)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    [(NSMutableArray *)self->_discontinuities removeObjectsAtIndexes:indexSet];
  }
}

- (CMTime)_originalDurationForVideoBufferWithTime:(uint64_t)time@<X8>
{
  if (!result)
  {
    *time = 0;
    *(time + 8) = 0;
    *(time + 16) = 0;
    return result;
  }

  v10 = result;
  lhs = *a2;
  result = [(BWIrisSequenceAdjuster *)result _indexOfTime:a4, a5, a6, a7, a8, a9];
  if (result == 0x7FFFFFFFFFFFFFFFLL || (v11 = result, result = [*&v10[3].timescale count], v11 >= (&result[-1].epoch + 7)))
  {
    v14 = MEMORY[0x1E6960C70];
    *time = *MEMORY[0x1E6960C70];
    *(time + 16) = *(v14 + 16);
    return result;
  }

  v12 = [*&v10[3].timescale objectAtIndexedSubscript:v11];
  v13 = [*&v10[3].timescale objectAtIndexedSubscript:&v11->value + 1];
  if (!v13)
  {
    memset(&lhs, 0, sizeof(lhs));
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_9:
    memset(&rhs, 0, sizeof(rhs));
    return CMTimeSubtract(time, &lhs, &rhs);
  }

  objc_msgSend_original(v13);
  if (!v12)
  {
    goto LABEL_9;
  }

LABEL_6:
  objc_msgSend_original(v12);
  return CMTimeSubtract(time, &lhs, &rhs);
}

- (uint64_t)_getPreviousTimeSkewOut:(uint64_t)result andNextTimeSkewOut:(void *)out forTime:(void *)time
{
  if (result)
  {
    v5 = result;
    *time = 0;
    *out = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    reverseObjectEnumerator = [*(result + 80) reverseObjectEnumerator];
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v47;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v11 = *(*(&v46 + 1) + 8 * i);
          if (v11)
          {
            objc_msgSend_adjusted(v11);
            if (v44)
            {
              v12 = objc_msgSend_original(v11);
              if (OUTLINED_FUNCTION_2_110(v12, v13, v14, v15, v16, v17, v18, v19, v36, v37, v38, v39, v40, v41, v42, v43) < 1)
              {
                result = 0;
                *out = v11;
                return result;
              }
            }

            objc_msgSend_adjusted(v11);
            if ((v38 & 0x100000000) != 0)
            {
              v20 = objc_msgSend_original(v11);
              if (OUTLINED_FUNCTION_2_110(v20, v21, v22, v23, v24, v25, v26, v27, v36, v37, v38, v39, v40, v41, v42, v43) >= 1)
              {
                *time = v11;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_85();
            v38 = 0;
            v39 = 0;
            v37 = 0;
          }
        }

        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    firstObject = [*(v5 + 80) firstObject];
    if (firstObject)
    {
      firstObject = objc_msgSend_original(firstObject);
    }

    else
    {
      v43 = 0;
    }

    return OUTLINED_FUNCTION_2_110(firstObject, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43) > 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedTimeForTime:(SEL)time
{
  result = OUTLINED_FUNCTION_5_79(self, time, a4);
  if (!v87 || (v7 = result, result = objc_msgSend_adjusted(v87), (v86 & 1) == 0))
  {
    v8 = MEMORY[0x1E6960C68];
    *v4 = *MEMORY[0x1E6960C68];
    var3 = *(v8 + 16);
LABEL_4:
    *(v4 + 16) = var3;
    return result;
  }

  if (v7)
  {
    *v4 = *&a4->var0;
    var3 = a4->var3;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_17_33();
  v10 = v88;
  if (v88)
  {
    v11 = objc_msgSend_original(v88);
    OUTLINED_FUNCTION_7_68(v11, v12, v13, v14, v15, v16, v17, v18, v60, v66, v71, v76, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v83.value, *&v83.timescale, v83.epoch, v84);
    OUTLINED_FUNCTION_13_39();
    objc_msgSend_original(v88);
  }

  else
  {
    OUTLINED_FUNCTION_4_85();
    OUTLINED_FUNCTION_7_68(v19, v20, v21, v22, v23, v24, v25, v26, v60, v66, v71, v76, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v83.value, *&v83.timescale, v83.epoch, v84);
    OUTLINED_FUNCTION_13_39();
    OUTLINED_FUNCTION_4_85();
  }

  OUTLINED_FUNCTION_6_76(a4->var3, v61, v67, v72, v77, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], a4->var0, *&a4->var1, lhs.epoch, v83.value, *&v83.timescale, v83.epoch, v84);
  OUTLINED_FUNCTION_4_85();
  objc_msgSend_adjusted(v87);
  if (v88)
  {
    objc_msgSend_adjusted(v88);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  v27 = CMTimeSubtract(&v83, &lhs, rhs);
  OUTLINED_FUNCTION_10_51(v27, v28, v29, v30, v31, v32, v33, v34, v62, v68, v78, *rhs, *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, *&v83.value, v83.epoch);
  v43 = OUTLINED_FUNCTION_12_46(v35, v36, v37, v38, v39, v40, v41, v42, v63, v69, v73, v79, *rhs, *&rhs[16]);
  OUTLINED_FUNCTION_9_59(v44, v45, v46, v47, v48, v49, v50, v51, v43, v64, v70, v74, *rhs, *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v83.value, *&v83.timescale, v83.epoch, v84, v85);
  if (v10)
  {
    v52 = objc_msgSend_adjusted(v10);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_8_55(v52, v53, v54, v55, v56, v57, v58, v59, v65, v75, v80, *rhs, *&rhs[8], *&rhs[16], *&lhs.value, lhs.epoch);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedTimeForStillImageTime:(SEL)time
{
  v6 = OUTLINED_FUNCTION_5_79(self, time, a4);
  if (!v91)
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
LABEL_7:
    v18 = v92;
    if (v92)
    {
      objc_msgSend_original(v92);
      objc_msgSend_adjusted(v18);
      result = CMTimeCompare(&time1, &time2);
      if (result)
      {
        goto LABEL_13;
      }

      objc_msgSend_original(v18);
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      OUTLINED_FUNCTION_13_39();
      result = CMTimeCompare(&time1, &time2);
      if (result)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_4_85();
    }

    OUTLINED_FUNCTION_6_76(a4->var3, v62, v68, v73, v78, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], a4->var0, *&a4->var1, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, time2.value);
    CMTimeAbsoluteValue(&time1, &time2);
    CMTimeMake(&time2, a4->var1 / 1000, a4->var1);
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = MEMORY[0x1E6960C68];
    *v4 = *MEMORY[0x1E6960C68];
    var3 = *(v19 + 16);
LABEL_15:
    *(v4 + 16) = var3;
    return result;
  }

  v7 = v6;
  result = objc_msgSend_adjusted(v91);
  if ((v88 & 0x100000000) == 0)
  {
    goto LABEL_7;
  }

  if (v7)
  {
LABEL_14:
    *v4 = *&a4->var0;
    var3 = a4->var3;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_17_33();
  v9 = v92;
  if (v92)
  {
    v10 = objc_msgSend_original(v92);
    OUTLINED_FUNCTION_7_68(v10, v11, v12, v13, v14, v15, v16, v17, v62, v68, v73, v78, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, time2.value);
    OUTLINED_FUNCTION_13_39();
    objc_msgSend_original(v92);
  }

  else
  {
    OUTLINED_FUNCTION_4_85();
    OUTLINED_FUNCTION_7_68(v21, v22, v23, v24, v25, v26, v27, v28, v62, v68, v73, v78, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, time2.value);
    OUTLINED_FUNCTION_13_39();
    OUTLINED_FUNCTION_4_85();
  }

  OUTLINED_FUNCTION_6_76(a4->var3, v63, v69, v74, v79, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], a4->var0, *&a4->var1, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, time2.value);
  OUTLINED_FUNCTION_4_85();
  objc_msgSend_adjusted(v91);
  if (v92)
  {
    objc_msgSend_adjusted(v92);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  v29 = CMTimeSubtract(&v85, &lhs, rhs);
  OUTLINED_FUNCTION_10_51(v29, v30, v31, v32, v33, v34, v35, v36, v64, v70, v80, *rhs, *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, *&v85.value, v85.epoch);
  v45 = OUTLINED_FUNCTION_12_46(v37, v38, v39, v40, v41, v42, v43, v44, v65, v71, v75, v81, *rhs, *&rhs[16]);
  OUTLINED_FUNCTION_9_59(v46, v47, v48, v49, v50, v51, v52, v53, v45, v66, v72, v76, *rhs, *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, *&time2.value, time2.epoch);
  if (v9)
  {
    v54 = objc_msgSend_adjusted(v9);
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_8_55(v54, v55, v56, v57, v58, v59, v60, v61, v67, v77, v82, *rhs, *&rhs[8], *&rhs[16], *&lhs.value, lhs.epoch);
}

- (void)_adjustTimesInAudioInterleavingQueues
{
  if (self)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = *(self + 40);
    v33 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
    if (v33)
    {
      v31 = *v63;
      v2 = -1;
      v3 = MEMORY[0x1E6960C70];
      do
      {
        v4 = 0;
        v29 = v2;
        do
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v62 + 1) + 8 * v4);
          ++v2;
          if (*(*(self + 72) + 4 * v2) == 1936684398)
          {
            array = [MEMORY[0x1E695DF70] array];
            v7 = [v32 addObject:array];
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v15 = OUTLINED_FUNCTION_9_16(v7, v8, v9, v10, v11, v12, v13, v14, v28, v29, obj, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37.value, *&v37.timescale, v37.epoch, v38, v39.value, *&v39.timescale, v39.epoch, cf, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
            if (v15)
            {
              v16 = v15;
              v17 = *v58;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v58 != v17)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v19 = *(*(&v57 + 1) + 8 * i);
                  cf = 0;
                  memset(&v39, 0, sizeof(v39));
                  CMSampleBufferGetPresentationTimeStamp(&v37, v19);
                  [(BWIrisSequenceAdjuster *)self _adjustedTimeForAudioBufferWithTime:&v39];
                  v37 = v39;
                  v34 = *v3;
                  v35 = *(v3 + 16);
                  BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(v19, &v37, &v34, &cf);
                  [array addObject:cf];
                  CFRelease(cf);
                }

                v16 = OUTLINED_FUNCTION_9_16(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, obj, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37.value, *&v37.timescale, v37.epoch, v38, v39.value, *&v39.timescale, v39.epoch, cf, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
              }

              while (v16);
            }
          }

          else
          {
            [v32 addObject:*(*(&v62 + 1) + 8 * v4)];
          }

          ++v4;
        }

        while (v4 != v33);
        v2 = v29 + v33;
        v33 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
      }

      while (v33);
    }

    *(self + 40) = v32;
  }
}

- (uint64_t)_indexOfTime:(uint64_t)time
{
  if (!self)
  {
    return 0;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = *(self + 80);
  v10 = OUTLINED_FUNCTION_16_39(self, a2, time, a4, a5, a6, a7, a8, v26.value, *&v26.timescale, v26.epoch, time1.value);
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  v12 = 0;
  v13 = *v29;
LABEL_4:
  v14 = 0;
  v15 = v12;
  v12 += v11;
  while (1)
  {
    if (*v29 != v13)
    {
      objc_enumerationMutation(v9);
    }

    v16 = *(*(&v28 + 1) + 8 * v14);
    if (v16)
    {
      objc_msgSend_original(v16);
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v26 = *a2;
    v17 = CMTimeCompare(&time1, &v26);
    if (!v17)
    {
      return v15;
    }

    ++v15;
    if (v11 == ++v14)
    {
      v11 = OUTLINED_FUNCTION_16_39(v17, v18, v19, v20, v21, v22, v23, v24, v26.value, *&v26.timescale, v26.epoch, time1.value);
      if (v11)
      {
        goto LABEL_4;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

@end