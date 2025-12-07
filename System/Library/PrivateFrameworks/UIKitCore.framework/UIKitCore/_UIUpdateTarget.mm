@interface _UIUpdateTarget
+ (_UIUpdateTarget)targetWithCADisplay:(uint64_t)display;
- (_BYTE)start;
- (_BYTE)stop;
- (_UIUpdateTarget)init;
- (double)requestPresentaionForMode:(int64_t)mode@<X2> earliestReferenceDeadlineTime:(int64_t)time@<X3> earliestCommitDeadlineTime:(uint64_t *)deadlineTime@<X8>;
- (uint64_t)sync;
- (uint64_t)syncedRequestedMaxFrameDuration;
- (void)dealloc;
@end

@implementation _UIUpdateTarget

- (uint64_t)sync
{
  if (result)
  {
    v1 = result;
    [*(result + 8) heartbeatRate];
    v2 = UCTimeFromSeconds();
    minimumFrameDuration = [*(v1 + 8) minimumFrameDuration];
    if (v2)
    {
      v4 = minimumFrameDuration;
    }

    else
    {
      v2 = UCTimeFromSeconds();
      v4 = 1;
    }

    v5 = v2 * v4;
    if (*(v1 + 40) == v5)
    {
      return 0;
    }

    else
    {
      *(v1 + 40) = v5;
      v6 = UCTimeFromSeconds();
      v7 = v2 + 7;
      if (v2 >= 0)
      {
        v7 = v2;
      }

      if (v6 <= v7 >> 3)
      {
        v8 = v7 >> 3;
      }

      else
      {
        v8 = v6;
      }

      *(v1 + 32) = v8;
      v9 = _UIDeviceNativeUserInterfaceIdiomIgnoringClassic();
      if (v9 == 4)
      {
        v10 = 1;
      }

      else if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = _UIVariableFrameDurationEnabled();
      }

      *(v1 + 48) = v5 << v10;
      v11 = _UIMachDurationForMediaDuration(0.004);
      v12 = *(v1 + 32);
      *(v1 + 72) = v11;
      *(v1 + 80) = v5 - v12;
      kdebug_trace();
      return 1;
    }
  }

  return result;
}

- (_UIUpdateTarget)init
{
  v6.receiver = self;
  v6.super_class = _UIUpdateTarget;
  v2 = [(_UIUpdateTarget *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_displayId = [(CADisplay *)v2->_display.direct displayId];
    isPaused = [(CADynamicFrameRateSource *)v3->_frameSource.direct isPaused];
    v3->_frameSourceActive = isPaused ^ 1;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(isPaused))
    {
      kdebug_trace();
    }

    v3->_minFrameDuration = 0;
  }

  return v3;
}

- (uint64_t)syncedRequestedMaxFrameDuration
{
  if (result)
  {
    [*(result + 8) highestLocalPreferredFrameRateRequest];
    if (v1 <= 0.0)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {

      return UCTimeFromSeconds();
    }
  }

  return result;
}

- (_BYTE)start
{
  if (result)
  {
    v1 = result;
    result[28] = 1;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(result))
    {
      kdebug_trace();
    }

    v2 = *(v1 + 2);

    return [v2 setPaused:0];
  }

  return result;
}

- (_BYTE)stop
{
  if (result)
  {
    v1 = result;
    result[28] = 0;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(result))
    {
      kdebug_trace();
    }

    v2 = *(v1 + 2);

    return [v2 setPaused:1];
  }

  return result;
}

- (void)dealloc
{
  direct = self->_frameSource.direct;
  self->_frameSource.direct = 0;

  v4 = self->_display.direct;
  self->_display.direct = 0;

  v5.receiver = self;
  v5.super_class = _UIUpdateTarget;
  [(_UIUpdateTarget *)&v5 dealloc];
}

+ (_UIUpdateTarget)targetWithCADisplay:(uint64_t)display
{
  objc_opt_self();
  v3 = [_UIUpdateTarget alloc];
  if (v3)
  {
    v4 = v3;
    objc_storeStrong(&v3->_display.direct, a2);
    v5 = [objc_alloc(MEMORY[0x1E6979348]) initWithDisplay:a2];
    direct = v4->_frameSource.direct;
    v4->_frameSource.direct = v5;

    v3 = [(_UIUpdateTarget *)v4 init];
  }

  return v3;
}

- (double)requestPresentaionForMode:(int64_t)mode@<X2> earliestReferenceDeadlineTime:(int64_t)time@<X3> earliestCommitDeadlineTime:(uint64_t *)deadlineTime@<X8>
{
  if (self)
  {
    v10 = *(self + 32);
    UCTimeToSeconds();
    [*(self + 16) commitDeadlineAfterTimestamp:?];
    v11 = UCTimeFromSeconds();
    timeCopy = v11;
    if (!v11)
    {
      v11 = mach_absolute_time();
      modeCopy = *(self + 40) + v11;
      if (modeCopy <= mode)
      {
        modeCopy = mode;
      }

      if (modeCopy <= time)
      {
        timeCopy = time;
      }

      else
      {
        timeCopy = modeCopy;
      }
    }

    v15 = timeCopy - *(self + 8 * a2 + 64);
    v16 = *(self + 48 + 8 * a2);
    v17 = timeCopy - *(self + 80);
    v18 = v16 - *(self + 48);
    *deadlineTime = timeCopy;
    deadlineTime[1] = v15;
    deadlineTime[2] = v17;
    deadlineTime[3] = v16 + timeCopy;
    deadlineTime[4] = v18;
    deadlineTime[5] = v15 + v10;
    if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck(v11))
    {

      kdebug_trace();
    }
  }

  else
  {
    result = 0.0;
    *(deadlineTime + 1) = 0u;
    *(deadlineTime + 2) = 0u;
    *deadlineTime = 0u;
  }

  return result;
}

@end