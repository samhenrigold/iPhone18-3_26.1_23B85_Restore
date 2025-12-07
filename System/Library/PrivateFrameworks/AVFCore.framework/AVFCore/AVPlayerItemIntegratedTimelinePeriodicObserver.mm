@interface AVPlayerItemIntegratedTimelinePeriodicObserver
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getNextPeriodicFireTimeFromIntegratedCurrentTime:(SEL)time;
- (AVPlayerItemIntegratedTimelinePeriodicObserver)initWithInterval:(id *)interval queue:(id)queue block:(id)block integratedTimeline:(id)timeline;
- (BOOL)_doesTimeResideInItemIntegratedTimelineOffsets:(id *)offsets withOffsets:(id)withOffsets timeMappingOut:(id *)out;
- (BOOL)hasObserverBeenScheduledYet;
- (void)dealloc;
- (void)rescheduleObserverWithSnapshot:(id)snapshot itemToSchedule:(id)schedule;
@end

@implementation AVPlayerItemIntegratedTimelinePeriodicObserver

- (AVPlayerItemIntegratedTimelinePeriodicObserver)initWithInterval:(id *)interval queue:(id)queue block:(id)block integratedTimeline:(id)timeline
{
  objc_initWeak(&location, timeline);
  v16.receiver = self;
  v16.super_class = AVPlayerItemIntegratedTimelinePeriodicObserver;
  v10 = [(AVPlayerItemIntegratedTimelinePeriodicObserver *)&v16 init];
  v11 = v10;
  if (v10)
  {
    var3 = interval->var3;
    *&v10->_interval.value = *&interval->var0;
    if (queue)
    {
      queueCopy = queue;
    }

    else
    {
      queueCopy = MEMORY[0x1E69E96A0];
    }

    v11->_interval.epoch = var3;
    v11->_queue = queueCopy;
    dispatch_retain(queueCopy);
    v11->_block = [block copy];
    v14 = objc_loadWeak(&location);
    objc_storeWeak(&v11->_integratedTimeline, v14);
    v11->_mutex = FigSimpleMutexCreate();
  }

  objc_destroyWeak(&location);
  return v11;
}

- (void)dealloc
{
  [(AVTimebaseObserver *)self->_periodicObserver invalidate];

  dispatch_release(self->_queue);
  FigSimpleMutexDestroy();
  v3.receiver = self;
  v3.super_class = AVPlayerItemIntegratedTimelinePeriodicObserver;
  [(AVPlayerItemIntegratedTimelinePeriodicObserver *)&v3 dealloc];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_getNextPeriodicFireTimeFromIntegratedCurrentTime:(SEL)time
{
  memset(&v9, 0, sizeof(v9));
  timescale = self->_interval.timescale;
  v8 = *a4;
  CMTimeConvertScale(&v9, &v8, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
  return CMTimeMake(retstr, self->_interval.value + self->_interval.value * (v9.value / self->_interval.value), self->_interval.timescale);
}

- (BOOL)_doesTimeResideInItemIntegratedTimelineOffsets:(id *)offsets withOffsets:(id)withOffsets timeMappingOut:(id *)out
{
  v8 = *(MEMORY[0x1E6960C78] + 48);
  *&v22.source.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
  *&v22.target.start.value = v8;
  v9 = *(MEMORY[0x1E6960C78] + 80);
  *&v22.target.start.epoch = *(MEMORY[0x1E6960C78] + 64);
  *&v22.target.duration.timescale = v9;
  v10 = *(MEMORY[0x1E6960C78] + 16);
  *&v22.source.start.value = *MEMORY[0x1E6960C78];
  *&v22.source.start.epoch = v10;
  if (![withOffsets count])
  {
    if (!out)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v11 = 1;
  do
  {
    CMTimeMappingMakeFromDictionary(&v22, [withOffsets objectAtIndex:v11 - 1]);
    range = v22.target;
    v20 = *offsets;
    v12 = CMTimeRangeContainsTime(&range, &v20);
    v13 = v12 != 0;
    if (v11 >= [withOffsets count])
    {
      break;
    }

    ++v11;
  }

  while (!v12);
  if (out)
  {
    if (v12)
    {
      v13 = 1;
      v14 = &v22;
LABEL_10:
      v15 = *&v14->source.start.epoch;
      *&out->var0.var0.var0 = *&v14->source.start.value;
      *&out->var0.var0.var3 = v15;
      v16 = *&v14->source.duration.timescale;
      v17 = *&v14->target.start.value;
      v18 = *&v14->target.duration.timescale;
      *&out->var1.var0.var3 = *&v14->target.start.epoch;
      *&out->var1.var1.var1 = v18;
      *&out->var0.var1.var1 = v16;
      *&out->var1.var0.var0 = v17;
      return v13;
    }

LABEL_9:
    v13 = 0;
    v14 = MEMORY[0x1E6960C78];
    goto LABEL_10;
  }

  return v13;
}

- (void)rescheduleObserverWithSnapshot:(id)snapshot itemToSchedule:(id)schedule
{
  v53 = *MEMORY[0x1E69E9840];
  currentSegment = [snapshot currentSegment];
  v49 = 0uLL;
  v50 = 0;
  if (snapshot)
  {
    objc_msgSend_currentTime(snapshot);
  }

  timebase = [schedule timebase];
  v48 = **&MEMORY[0x1E6960CC0];
  start = **&MEMORY[0x1E6960C70];
  v46 = start;
  interval = self->_interval;
  v9 = *(MEMORY[0x1E6960C78] + 48);
  *&v43.duration.timescale = *(MEMORY[0x1E6960C78] + 32);
  *&v44.start.value = v9;
  v10 = *(MEMORY[0x1E6960C78] + 80);
  *&v44.start.epoch = *(MEMORY[0x1E6960C78] + 64);
  *&v44.duration.timescale = v10;
  v11 = *(MEMORY[0x1E6960C78] + 16);
  *&v43.start.value = *MEMORY[0x1E6960C78];
  *&v43.start.epoch = v11;
  v42 = 0;
  segmentType = [currentSegment segmentType];
  v13 = segmentType == 1 && [objc_msgSend(currentSegment "interstitialEvent")] == 0;
  if (schedule)
  {
    FigSimpleMutexLock();
    *&range.start.value = v49;
    range.start.epoch = v50;
    objc_msgSend__getNextPeriodicFireTimeFromIntegratedCurrentTime_(self);
    range.start = v46;
    [snapshot mapTime:&range toSegment:&v42 atSegmentOffset:&start];
    _integratedTimelineOffsets = [schedule _integratedTimelineOffsets];
    range.start = v46;
    v15 = [(AVPlayerItemIntegratedTimelinePeriodicObserver *)self _doesTimeResideInItemIntegratedTimelineOffsets:&range withOffsets:_integratedTimelineOffsets timeMappingOut:&v43];
    v16 = v15;
    if (!v15)
    {
      goto LABEL_39;
    }

    if (currentSegment)
    {
      objc_msgSend_timeMapping(currentSegment);
    }

    else
    {
      v40 = 0u;
      memset(&v41, 0, sizeof(v41));
      v38 = 0u;
      v39 = 0u;
    }

    range = v41;
    *&time.start.value = *&v44.start.value;
    time.start.epoch = v44.start.epoch;
    if (CMTimeRangeContainsTime(&range, &time.start))
    {
LABEL_39:
      if ((self->_observedTimeMapping.target.start.flags & 1) == 0 || (self->_observedTimeMapping.target.duration.flags & 1) == 0 || self->_observedTimeMapping.target.duration.epoch || self->_observedTimeMapping.target.duration.value < 0 || (v30 = *&self->_observedTimeMapping.source.start.epoch, *&range.start.value = *&self->_observedTimeMapping.source.start.value, *&range.start.epoch = v30, *&range.duration.timescale = *&self->_observedTimeMapping.source.duration.timescale, time = v43, !CMTimeRangeEqual(&range, &time)) || (v31 = *&self->_observedTimeMapping.target.start.epoch, *&range.start.value = *&self->_observedTimeMapping.target.start.value, *&range.start.epoch = v31, *&range.duration.timescale = *&self->_observedTimeMapping.target.duration.timescale, time = v44, !CMTimeRangeEqual(&range, &time)))
      {
        if (v42 != currentSegment || !v16 || v13)
        {
          CMTimeMake(&interval, 0x7FFFFFFFFFFFFFFFLL, 1);
          if (snapshot)
          {
            objc_msgSend_currentTime(snapshot);
          }

          else
          {
            memset(&range, 0, 24);
          }

          -[AVPlayerItemIntegratedTimelinePeriodicObserver _doesTimeResideInItemIntegratedTimelineOffsets:withOffsets:timeMappingOut:](self, "_doesTimeResideInItemIntegratedTimelineOffsets:withOffsets:timeMappingOut:", &range, [schedule _integratedTimelineOffsets], &v43);
        }

        else
        {
          if (segmentType == 1)
          {
            time.start = v46;
            rhs = v44.start;
            CMTimeSubtract(&range.start, &time.start, &rhs);
            start = range.start;
          }

          timescale = self->_interval.timescale;
          time.start = start;
          CMTimeConvertScale(&range.start, &time.start, timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          start = range.start;
          memset(&range, 0, 24);
          v18 = self->_interval.timescale;
          *&time.start.value = *&v43.start.value;
          time.start.epoch = v43.start.epoch;
          CMTimeConvertScale(&range.start, &time.start, v18, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
          memset(&time, 0, 24);
          rhs = range.start;
          lhs = start;
          CMTimeAdd(&time.start, &rhs, &lhs);
          memset(&rhs, 0, sizeof(rhs));
          CMTimeMake(&rhs, time.start.value / self->_interval.value * self->_interval.value, self->_interval.timescale);
          lhs = time.start;
          v35 = rhs;
          CMTimeSubtract(&v48, &lhs, &v35);
          interval = self->_interval;
        }

        v19 = *&v44.start.value;
        *&self->_observedTimeMapping.source.duration.timescale = *&v43.duration.timescale;
        *&self->_observedTimeMapping.target.start.value = v19;
        v20 = *&v44.duration.timescale;
        *&self->_observedTimeMapping.target.start.epoch = *&v44.start.epoch;
        *&self->_observedTimeMapping.target.duration.timescale = v20;
        v21 = *&v43.start.epoch;
        *&self->_observedTimeMapping.source.start.value = *&v43.start.value;
        *&self->_observedTimeMapping.source.start.epoch = v21;
        [(AVTimebaseObserver *)self->_periodicObserver invalidate];

        self->_periodicObserver = 0;
        if (dword_1EAEFCDD0)
        {
          LODWORD(rhs.value) = 0;
          LOBYTE(lhs.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          value = rhs.value;
          value_low = LOBYTE(lhs.value);
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, lhs.value))
          {
            v25 = value;
          }

          else
          {
            v25 = value & 0xFFFFFFFE;
          }

          if (v25)
          {
            range.start = v48;
            Seconds = CMTimeGetSeconds(&range.start);
            range.start = interval;
            v27 = CMTimeGetSeconds(&range.start);
            LODWORD(time.start.value) = 136315906;
            *(&time.start.value + 4) = "[AVPlayerItemIntegratedTimelinePeriodicObserver rescheduleObserverWithSnapshot:itemToSchedule:]";
            LOWORD(time.start.flags) = 2048;
            *(&time.start.flags + 2) = self;
            HIWORD(time.start.epoch) = 2048;
            time.duration.value = Seconds;
            LOWORD(time.duration.timescale) = 2048;
            *(&time.duration.timescale + 2) = v27;
            _os_log_send_and_compose_impl(v25, 0, &range, 128, &dword_196061000, os_log_and_send_and_compose_flags_and_os_log_type, value_low, "<<<< AVPlayerItemIntegratedTimeline >>>> %s: rescheduling observer %p with offset %f, interval %f", &time, 42, v32, v33[0]);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        objc_initWeak(&rhs, self);
        *&v33[0] = MEMORY[0x1E69E9820];
        *&v33[1] = 3221225472;
        *&v33[2] = __96__AVPlayerItemIntegratedTimelinePeriodicObserver_rescheduleObserverWithSnapshot_itemToSchedule___block_invoke;
        *&v33[3] = &unk_1E7465BB8;
        objc_copyWeak(&v34, &rhs);
        self->_hasBeenScheduled = 1;
        v28 = [AVPeriodicTimebaseObserver alloc];
        queue = self->_queue;
        range.start = interval;
        time.start = v48;
        self->_periodicObserver = [(AVPeriodicTimebaseObserver *)v28 initWithTimebase:timebase interval:&range offset:&time queue:queue block:v33];
        objc_destroyWeak(&v34);
        objc_destroyWeak(&rhs);
      }
    }

    FigSimpleMutexUnlock();
  }
}

void __96__AVPlayerItemIntegratedTimelinePeriodicObserver_rescheduleObserverWithSnapshot_itemToSchedule___block_invoke(uint64_t a1)
{
  Weak = objc_loadWeak((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  if (Weak)
  {
    if (objc_loadWeak(Weak + 21))
    {
      v9 = 0uLL;
      v10 = 0;
      v3 = objc_loadWeak(Weak + 21);
      if (v3)
      {
        objc_msgSend_currentTime(v3);
        if (BYTE12(v9))
        {
          v5 = Weak[6];
          v6 = v5[2];
          v7 = v9;
          v8 = v10;
          v6(v5, &v7, v4);
        }
      }
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (BOOL)hasObserverBeenScheduledYet
{
  FigSimpleMutexLock();
  hasBeenScheduled = self->_hasBeenScheduled;
  FigSimpleMutexUnlock();
  return hasBeenScheduled;
}

@end