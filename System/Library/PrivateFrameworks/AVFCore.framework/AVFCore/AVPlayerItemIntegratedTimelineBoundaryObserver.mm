@interface AVPlayerItemIntegratedTimelineBoundaryObserver
- (AVPlayerItemIntegratedTimelineBoundaryObserver)initWithSegment:(id)segment offsetTimes:(id)times queue:(id)queue block:(id)block;
- (BOOL)_ensureItemTimeOffsetLiesInSegment:(id)segment item:(id)item;
- (BOOL)_isItemCurrentTimeWithinZeroOffsetBoundaryThreshold:(id)threshold offset:(id *)offset;
- (BOOL)hasObserverBeenScheduledYet;
- (id)_currentInterstitialIDForSnapshot:(id)snapshot;
- (id)scheduledSegment;
- (void)dealloc;
- (void)ensureBoundaryObserverSegmentStillExistsWithNewSnapshot:(id)snapshot;
- (void)rescheduleObserverWithSnapshot:(id)snapshot itemToSchedule:(id)schedule;
- (void)setOccasionalBoundaryObserver:(id)observer;
@end

@implementation AVPlayerItemIntegratedTimelineBoundaryObserver

- (AVPlayerItemIntegratedTimelineBoundaryObserver)initWithSegment:(id)segment offsetTimes:(id)times queue:(id)queue block:(id)block
{
  v13.receiver = self;
  v13.super_class = AVPlayerItemIntegratedTimelineBoundaryObserver;
  v10 = [(AVPlayerItemIntegratedTimelineBoundaryObserver *)&v13 init];
  if (v10)
  {
    if (queue)
    {
      queueCopy = queue;
    }

    else
    {
      queueCopy = MEMORY[0x1E69E96A0];
    }

    v10->_queue = queueCopy;
    dispatch_retain(queueCopy);
    v10->_segment = [segment copy];
    v10->_offsetTimes = [times copy];
    v10->_block = [block copy];
    v10->_mutex = FigSimpleMutexCreate();
  }

  return v10;
}

- (void)dealloc
{
  [(AVTimebaseObserver *)self->_boundaryObserver invalidate];

  dispatch_release(self->_queue);
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVPlayerItemIntegratedTimelineBoundaryObserver;
  [(AVPlayerItemIntegratedTimelineBoundaryObserver *)&v3 dealloc];
}

- (id)_currentInterstitialIDForSnapshot:(id)snapshot
{
  currentSegment = [snapshot currentSegment];
  if ([currentSegment segmentType] != 1)
  {
    return 0;
  }

  interstitialEvent = [currentSegment interstitialEvent];

  return [interstitialEvent identifier];
}

- (BOOL)_ensureItemTimeOffsetLiesInSegment:(id)segment item:(id)item
{
  _integratedTimelineOffsets = [item _integratedTimelineOffsets];
  v6 = 0uLL;
  v13 = 0u;
  memset(&v14, 0, sizeof(v14));
  v11 = 0u;
  v12 = 0u;
  if (segment)
  {
    objc_msgSend_timeMapping(segment);
    v6 = 0uLL;
  }

  *&v10.target.start.epoch = v6;
  *&v10.target.duration.timescale = v6;
  *&v10.source.duration.timescale = v6;
  *&v10.target.start.value = v6;
  *&v10.source.start.value = v6;
  *&v10.source.start.epoch = v6;
  CMTimeMappingMakeFromDictionary(&v10, [_integratedTimelineOffsets objectAtIndexedSubscript:0]);
  range = v14;
  target = v10.target;
  if (CMTimeRangeContainsTimeRange(&range, &target))
  {
    return 1;
  }

  range = v14;
  target = v10.target;
  return CMTimeRangeEqual(&range, &target) != 0;
}

- (BOOL)_isItemCurrentTimeWithinZeroOffsetBoundaryThreshold:(id)threshold offset:(id *)offset
{
  if (threshold)
  {
    objc_msgSend_currentTime(threshold, a2);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  v6 = *offset;
  CMTimeSubtract(&time, &lhs, &v6);
  return fabs(CMTimeGetSeconds(&time)) < 0.3;
}

- (void)setOccasionalBoundaryObserver:(id)observer
{
  boundaryObserver = self->_boundaryObserver;
  if (boundaryObserver != observer)
  {
    [(AVTimebaseObserver *)boundaryObserver invalidate];

    self->_boundaryObserver = observer;
  }
}

- (void)rescheduleObserverWithSnapshot:(id)snapshot itemToSchedule:(id)schedule
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = *(MEMORY[0x1E6960C78] + 32);
  v8 = *(MEMORY[0x1E6960C78] + 64);
  v9 = *(MEMORY[0x1E6960C78] + 80);
  *&v40.start.value = *(MEMORY[0x1E6960C78] + 48);
  *&v40.start.epoch = v8;
  *&v40.duration.timescale = v9;
  v10 = *MEMORY[0x1E6960C78];
  *&v39.start.epoch = *(MEMORY[0x1E6960C78] + 16);
  *&v39.duration.timescale = v7;
  v11 = *(MEMORY[0x1E6960C98] + 16);
  *&v38.start.value = *MEMORY[0x1E6960C98];
  *&v38.start.epoch = v11;
  *&v38.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
  *&v39.start.value = v10;
  timebase = [schedule timebase];
  array = [MEMORY[0x1E695DF70] array];
  if (schedule && !self->_segmentWasRemoved)
  {
    FigSimpleMutexLock();
    segmentType = [(AVPlayerItemSegment *)self->_segment segmentType];
    if (segmentType)
    {
      identifier = [(AVPlayerInterstitialEvent *)[(AVPlayerItemSegment *)self->_segment interstitialEvent] identifier];
      if (identifier == -[AVPlayerItemIntegratedTimelineBoundaryObserver _currentInterstitialIDForSnapshot:](self, "_currentInterstitialIDForSnapshot:", snapshot) && -[AVPlayerItemIntegratedTimelineBoundaryObserver _ensureItemTimeOffsetLiesInSegment:item:](self, "_ensureItemTimeOffsetLiesInSegment:item:", [snapshot currentSegment], schedule))
      {
        _interstitialEventItemTimeOffset = [schedule _interstitialEventItemTimeOffset];
        if (_interstitialEventItemTimeOffset)
        {
          CMTimeRangeMakeFromDictionary(&v38, _interstitialEventItemTimeOffset);
        }

        goto LABEL_13;
      }
    }

    else if (!self->_boundaryObserver)
    {
      segment = self->_segment;
      if (segment)
      {
        objc_msgSend_timeMapping(segment);
      }

      else
      {
        memset(lhs, 0, sizeof(lhs));
      }

      v39 = lhs[0];
      v40 = lhs[1];
      v38 = lhs[1];
LABEL_13:
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      offsetTimes = self->_offsetTimes;
      v18 = [(NSArray *)offsetTimes countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v18)
      {
        v19 = *v35;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v35 != v19)
            {
              objc_enumerationMutation(offsetTimes);
            }

            v21 = *(*(&v34 + 1) + 8 * i);
            memset(&location, 0, sizeof(location));
            if (v21)
            {
              objc_msgSend_CMTimeValue(v21);
            }

            memset(&v32, 0, sizeof(v32));
            if (segmentType)
            {
              v32 = location;
              memset(&v31, 0, sizeof(v31));
              lhs[0].start = location;
              *&rhs.start.value = *&v38.start.value;
              rhs.start.epoch = v38.start.epoch;
              CMTimeSubtract(&v31, &lhs[0].start, &rhs.start);
            }

            else
            {
              *&lhs[0].start.value = *&v38.start.value;
              lhs[0].start.epoch = v38.start.epoch;
              rhs.start = location;
              CMTimeAdd(&v32, &lhs[0].start, &rhs.start);
              memset(&v31, 0, sizeof(v31));
              v30 = v32;
              lhs[0] = v40;
              rhs = v39;
              CMTimeMapTimeFromRangeToRange(&v31, &v30, lhs, &rhs);
            }

            lhs[0].start = v31;
            if (CMTimeGetSeconds(&lhs[0].start) <= 0.3 && (lhs[0].start = v31, [(AVPlayerItemIntegratedTimelineBoundaryObserver *)self _isItemCurrentTimeWithinZeroOffsetBoundaryThreshold:schedule offset:lhs]))
            {
              (*(self->_block + 2))();
            }

            else
            {
              lhs[0] = v38;
              rhs.start = v32;
              if (((CMTimeRangeContainsTime(lhs, &rhs.start) == 0) & ~(segmentType == 0)) == 0)
              {
                lhs[0].start = v31;
                [array addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithCMTime:", lhs)}];
              }
            }
          }

          v18 = [(NSArray *)offsetTimes countByEnumeratingWithState:&v34 objects:v43 count:16];
        }

        while (v18);
      }

      if ([array count])
      {
        objc_initWeak(&location, self);
        if (dword_1EAEFCDD0)
        {
          LODWORD(v32.value) = 0;
          LOBYTE(v31.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = v32.value;
          value_low = LOBYTE(v31.value);
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v31.value))
          {
            v25 = value;
          }

          else
          {
            v25 = value & 0xFFFFFFFE;
          }

          if (v25)
          {
            LODWORD(rhs.start.value) = 136315906;
            *(&rhs.start.value + 4) = "[AVPlayerItemIntegratedTimelineBoundaryObserver rescheduleObserverWithSnapshot:itemToSchedule:]";
            LOWORD(rhs.start.flags) = 2048;
            *(&rhs.start.flags + 2) = self;
            HIWORD(rhs.start.epoch) = 2048;
            rhs.duration.value = schedule;
            LOWORD(rhs.duration.timescale) = 2112;
            *(&rhs.duration.timescale + 2) = array;
            _os_log_send_and_compose_impl(v25, 0, lhs, 128, &dword_196061000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< AVPlayerItemIntegratedTimeline >>>> %s: rescheduling boundary observer %p for item %p with sourceTimes %@", &rhs, 42);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __96__AVPlayerItemIntegratedTimelineBoundaryObserver_rescheduleObserverWithSnapshot_itemToSchedule___block_invoke;
        v28[3] = &unk_1E74636C0;
        objc_copyWeak(&v29, &location);
        self->_hasBeenScheduled = 1;
        v26 = [[AVOccasionalTimebaseObserver alloc] initWithTimebase:timebase times:array queue:self->_queue block:v28];
        [(AVPlayerItemIntegratedTimelineBoundaryObserver *)self setOccasionalBoundaryObserver:v26];

        objc_destroyWeak(&v29);
        objc_destroyWeak(&location);
      }
    }

    FigSimpleMutexUnlock();
  }
}

void *__96__AVPlayerItemIntegratedTimelineBoundaryObserver_rescheduleObserverWithSnapshot_itemToSchedule___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v2 = *(result[5] + 16);

    return v2();
  }

  return result;
}

- (void)ensureBoundaryObserverSegmentStillExistsWithNewSnapshot:(id)snapshot
{
  v18 = *MEMORY[0x1E69E9840];
  segments = [snapshot segments];
  FigSimpleMutexLock();
  if ([(AVPlayerItemSegment *)self->_segment segmentType]== 1 && !self->_segmentWasRemoved)
  {
    identifier = [(AVPlayerInterstitialEvent *)[(AVPlayerItemSegment *)self->_segment interstitialEvent] identifier];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [segments countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
LABEL_6:
      v9 = 0;
      while (1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(segments);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if ([v10 segmentType] == 1 && -[NSString isEqualToString:](identifier, "isEqualToString:", objc_msgSend(objc_msgSend(v10, "interstitialEvent"), "identifier")))
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [segments countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v7)
          {
            goto LABEL_6;
          }

          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_13:
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __106__AVPlayerItemIntegratedTimelineBoundaryObserver_ensureBoundaryObserverSegmentStillExistsWithNewSnapshot___block_invoke;
      block[3] = &unk_1E7460C00;
      block[4] = self;
      dispatch_async(queue, block);
      self->_segmentWasRemoved = 1;
      [(AVPlayerItemIntegratedTimelineBoundaryObserver *)self setOccasionalBoundaryObserver:0];
    }
  }

  FigSimpleMutexUnlock();
}

- (BOOL)hasObserverBeenScheduledYet
{
  FigSimpleMutexLock();
  hasBeenScheduled = self->_hasBeenScheduled;
  FigSimpleMutexUnlock();
  return hasBeenScheduled;
}

- (id)scheduledSegment
{
  FigSimpleMutexLock();
  segment = self->_segment;
  FigSimpleMutexUnlock();
  return segment;
}

@end