@interface TSDCKernelClock
+ (id)clockWithIdentifier:(unint64_t)identifier;
- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFromDomainTime:(unint64_t *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)convertFromTimeSyncTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (TSDCKernelClock)initWithKernelClock:(id)clock;
- (TSKernelClock)client;
- (id)getOsLog;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time;
- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time;
- (unint64_t)getSignpostId;
- (void)_getInitialSyncInfo;
- (void)dealloc;
- (void)didChangeClockMasterForClock:(id)clock;
- (void)didChangeLockStateTo:(int)to forClock:(id)clock;
- (void)didResetClock:(id)clock;
- (void)postLockStateChange:(int)change;
- (void)updateLockState:(int)state;
- (void)updateTimeSyncTime:(unint64_t)time timeSyncInterval:(unint64_t)interval domainTime:(unint64_t)domainTime domainInterval:(unint64_t)domainInterval;
@end

@implementation TSDCKernelClock

- (id)getOsLog
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__TSDCKernelClock_getOsLog__block_invoke;
  block[3] = &unk_279DBD538;
  block[4] = self;
  if (getOsLog_onceToken != -1)
  {
    dispatch_once(&getOsLog_onceToken, block);
  }

  return getOsLog_clockLog;
}

- (unint64_t)getSignpostId
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__TSDCKernelClock_getSignpostId__block_invoke;
  block[3] = &unk_279DBD538;
  block[4] = self;
  if (getSignpostId_onceToken != -1)
  {
    dispatch_once(&getSignpostId_onceToken, block);
  }

  return getSignpostId_signpostId;
}

+ (id)clockWithIdentifier:(unint64_t)identifier
{
  v3 = +[_TSF_TSDClockManager sharedClockManager];
  v4 = [v3 clockWithClockIdentifier:?];

  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = off_279DBD220;
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      v5 = off_279DBD208;
      if (isKindOfClass)
      {
        v5 = off_279DBD218;
      }
    }

    v6 = [objc_alloc(*v5) initWithKernelClock:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (TSDCKernelClock)initWithKernelClock:(id)clock
{
  clockCopy = clock;
  v15.receiver = self;
  v15.super_class = TSDCKernelClock;
  v6 = [(TSDCKernelClock *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v6->_updateLock._os_unfair_lock_opaque = 0;
    v6->_clockIdentifier = [clockCopy clockIdentifier];
    v7->_hostRateRatio = 1.0;
    v7->_validIndex = -1;
    v8 = +[TSClockManager sharedClockManager];
    translationClock = [v8 translationClock];
    translationClock = v7->_translationClock;
    v7->_translationClock = translationClock;

    objc_storeStrong(&v7->_kernelClock, clock);
    [(_TSF_TSDKernelClock *)v7->_kernelClock addClient:?];
    v11 = +[_TSF_TSDClockSyncManager sharedClockSyncManager];
    [(_TSF_TSDKernelClock *)v7->_kernelClock clockIdentifier];
    v12 = [v11 clockSyncForClockIdentifier:? pid:?];
    clockSync = v7->_clockSync;
    v7->_clockSync = v12;

    [(_TSF_TSDClockSync *)v7->_clockSync addUpdateClient:?];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(TSDCKernelClock *)v7 _getInitialSyncInfo];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(_TSF_TSDClockSync *)self->_clockSync removeUpdateClient:?];
  v3 = +[_TSF_TSDClockSyncManager sharedClockSyncManager];
  [(_TSF_TSDKernelClock *)self->_kernelClock clockIdentifier];
  [v3 releaseClockSyncForClockIdentifier:?];

  [(_TSF_TSDKernelClock *)self->_kernelClock finalizeNotifications];
  [(_TSF_TSDKernelClock *)self->_kernelClock removeClient:?];
  v4.receiver = self;
  v4.super_class = TSDCKernelClock;
  [(TSDCKernelClock *)&v4 dealloc];
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time
{
  v25 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = getSignpostId;
    if (os_signpost_enabled(getOsLog))
    {
      v15 = 136315138;
      v16 = "[TSDCKernelClock convertFromMachAbsoluteToDomainTime:]";
      _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, &unk_26F0DFDB1, "%s", &v15, 0xCu);
    }
  }

  v8 = [(TSClock *)self->_translationClock convertFromMachAbsoluteToDomainTime:?];
  v9 = [(TSClock *)self->_translationClock convertFromDomainToTimeSyncTime:?];
  v10 = [(TSDCKernelClock *)self convertFromTimeSyncToDomainTime:?];
  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = getSignpostId2;
    if (os_signpost_enabled(getOsLog2))
    {
      v15 = 136316162;
      v16 = "[TSDCKernelClock convertFromMachAbsoluteToDomainTime:]";
      v17 = 2048;
      timeCopy = time;
      v19 = 2048;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, v13, &unk_26F0DFDB1, "%s MachAbsoluteTime=%llu intermediateTime=%llu timeSyncTime=%llu  domainTime=%llu", &v15, 0x34u);
    }
  }

  return v10;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time
{
  v25 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = getSignpostId;
    if (os_signpost_enabled(getOsLog))
    {
      v15 = 136315138;
      v16 = "[TSDCKernelClock convertFromDomainToMachAbsoluteTime:]";
      _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, &unk_26F0DFDB1, "%s", &v15, 0xCu);
    }
  }

  v8 = [(TSDCKernelClock *)self convertFromDomainToTimeSyncTime:?];
  v9 = [(TSClock *)self->_translationClock convertFromTimeSyncToDomainTime:?];
  v10 = [(TSClock *)self->_translationClock convertFromDomainToMachAbsoluteTime:?];
  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v13 = getSignpostId2;
    if (os_signpost_enabled(getOsLog2))
    {
      v15 = 136316162;
      v16 = "[TSDCKernelClock convertFromDomainToMachAbsoluteTime:]";
      v17 = 2048;
      timeCopy = time;
      v19 = 2048;
      v20 = v8;
      v21 = 2048;
      v22 = v9;
      v23 = 2048;
      v24 = v10;
      _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, v13, &unk_26F0DFDB1, "%s domainTime=%llu timeSyncTime=%llu intermediateTime=%llu MachAbsoluteTime=%llu", &v15, 0x34u);
    }
  }

  return v10;
}

void __27__TSDCKernelClock_getOsLog__block_invoke(uint64_t a1)
{
  v1 = objc_opt_class();
  v5 = NSStringFromClass(v1);
  v2 = v5;
  v3 = os_log_create("TimeSync", [v5 UTF8String]);
  v4 = getOsLog_clockLog;
  getOsLog_clockLog = v3;
}

void __32__TSDCKernelClock_getSignpostId__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) getOsLog];
  getSignpostId_signpostId = os_signpost_id_generate(v1);
}

- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count
{
  if (time)
  {
    domainTimeCopy = domainTime;
    if (domainTime)
    {
      if (count)
      {
        timeCopy = time;
        countCopy = count;
        do
        {
          ++timeCopy;
          *domainTimeCopy++ = [(TSDCKernelClock *)self convertFromMachAbsoluteToDomainTime:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCKernelClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCKernelClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
    return v11;
  }
}

- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count
{
  if (absoluteTime)
  {
    timeCopy = time;
    if (time)
    {
      if (count)
      {
        absoluteTimeCopy = absoluteTime;
        countCopy = count;
        do
        {
          ++timeCopy;
          *absoluteTimeCopy++ = [(TSDCKernelClock *)self convertFromDomainToMachAbsoluteTime:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCKernelClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCKernelClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
    return v11;
  }
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval
{
  [(TSClock *)self->_translationClock convertFromMachAbsoluteIntervalToDomainInterval:?];
  [(TSClock *)self->_translationClock convertFromDomainIntervalToTimeSyncTimeInterval:?];

  return [(TSDCKernelClock *)self convertFromTimeSyncTimeIntervalToDomainInterval:?];
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval
{
  [(TSDCKernelClock *)self convertFromDomainIntervalToTimeSyncTimeInterval:?];
  [(TSClock *)self->_translationClock convertFromTimeSyncTimeIntervalToDomainInterval:?];
  translationClock = self->_translationClock;

  return [(TSClock *)translationClock convertFromDomainIntervalToMachAbsoluteInterval:?];
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  if (numerator)
  {
    *numerator = 1;
  }

  if (denominator)
  {
    *denominator = 1;
  }

  if (anchor)
  {
    *anchor = -1;
  }

  if (domainAnchor)
  {
    *domainAnchor = -1;
  }

  if (![(TSDCKernelClock *)self getTimeSyncTimeRateRatioNumerator:0 denominator:0 timeSyncAnchor:0 andDomainAnchor:0 withError:?])
  {
    [TSDCKernelClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:];
    return v17;
  }

  if (![TSClock getTimeSyncTimeRateRatioNumerator:"getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:" denominator:? timeSyncAnchor:? andDomainAnchor:? withError:?])
  {
    [TSDCKernelClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:];
    return v17;
  }

  if (![TSClock getMachAbsoluteRateRatioNumerator:"getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:" denominator:? machAnchor:? andDomainAnchor:? withError:?])
  {
    [TSDCKernelClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:];
    return v17;
  }

  __C(0, v16, v14, 0, v15, v13, numerator, denominator);
  if (anchor)
  {
    translationClock = self->_translationClock;
    [(TSClock *)translationClock convertFromTimeSyncToDomainTime:?];
    *anchor = [(TSClock *)translationClock convertFromDomainToMachAbsoluteTime:?];
  }

  return 1;
}

- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time
{
  if (time == -1)
  {
    [TSDCKernelClock convertFromTimeSyncToDomainTime:];
    return v11;
  }

  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSDCKernelClock convertFromTimeSyncToDomainTime:];
    return v11;
  }

  v4 = &self->super.isa + 4 * validIndex;
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[4];
  v9 = v4[3];

  return TSTimeXtoTimeY(time, v5, v9, v6, v7);
}

- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time
{
  if (time == -1)
  {
    [TSDCKernelClock convertFromDomainToTimeSyncTime:];
    return v11;
  }

  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSDCKernelClock convertFromDomainToTimeSyncTime:];
    return v11;
  }

  v4 = &self->super.isa + 4 * validIndex;
  v6 = v4[1];
  v5 = v4[2];
  v7 = v4[3];
  v9 = v4[4];

  return TSTimeXtoTimeY(time, v5, v9, v6, v7);
}

- (BOOL)convertFromTimeSyncTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count
{
  if (time)
  {
    domainTimeCopy = domainTime;
    if (domainTime)
    {
      if (count)
      {
        timeCopy = time;
        countCopy = count;
        do
        {
          ++timeCopy;
          *domainTimeCopy++ = [(TSDCKernelClock *)self convertFromTimeSyncToDomainTime:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCKernelClock convertFromTimeSyncTime:toDomainTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCKernelClock convertFromTimeSyncTime:toDomainTime:withCount:];
    return v11;
  }
}

- (BOOL)convertFromDomainTime:(unint64_t *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count
{
  if (syncTime)
  {
    timeCopy = time;
    if (time)
    {
      if (count)
      {
        syncTimeCopy = syncTime;
        countCopy = count;
        do
        {
          ++timeCopy;
          *syncTimeCopy++ = [(TSDCKernelClock *)self convertFromDomainToTimeSyncTime:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCKernelClock convertFromDomainTime:toTimeSyncTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCKernelClock convertFromDomainTime:toTimeSyncTime:withCount:];
    return v11;
  }
}

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval
{
  if (interval == -1)
  {
    [TSDCKernelClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v9;
  }

  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSDCKernelClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v9;
  }

  v4 = self + 32 * validIndex;
  v5 = *(v4 + 3);
  v7 = *(v4 + 4);

  return TSIntervalXtoIntervalY(interval, v5, v7);
}

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval
{
  if (interval == -1)
  {
    [TSDCKernelClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v9;
  }

  validIndex = self->_validIndex;
  if (validIndex >= 8)
  {
    [TSDCKernelClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v9;
  }

  domainTimeInterval = self->_timeInfo[validIndex].domainTimeInterval;
  timeSyncTimeInterval = self->_timeInfo[validIndex].timeSyncTimeInterval;

  return TSIntervalXtoIntervalY(interval, domainTimeInterval, timeSyncTimeInterval);
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  validIndex = self->_validIndex;
  if (numerator)
  {
    *numerator = 1;
  }

  if (denominator)
  {
    *denominator = 1;
  }

  if (anchor)
  {
    *anchor = -1;
  }

  if (domainAnchor)
  {
    *domainAnchor = -1;
  }

  if (validIndex >= 8)
  {
    [TSDCKernelClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:];
  }

  else
  {
    if (numerator)
    {
      *numerator = self->_timeInfo[validIndex].timeSyncTimeInterval;
    }

    if (denominator)
    {
      *denominator = self->_timeInfo[validIndex].domainTimeInterval;
    }

    v8 = self + 32 * validIndex;
    if (anchor)
    {
      *anchor = *(v8 + 1);
    }

    if (domainAnchor)
    {
      *domainAnchor = *(v8 + 2);
    }
  }

  return validIndex < 8;
}

- (void)_getInitialSyncInfo
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = [0 description];
  v1 = 136315138;
  uTF8String = [v0 UTF8String];
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error getting initial sync info %s", &v1, 0xCu);
}

- (void)postLockStateChange:(int)change
{
  v14 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v12 = 1024;
    changeCopy = change;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCKernelClock(0x%016llx) postLockStateChange:%d", buf, 0x12u);
  }

  propertyUpdateQueue = [(TSDCKernelClock *)self propertyUpdateQueue];

  if (propertyUpdateQueue)
  {
    propertyUpdateQueue2 = [(TSDCKernelClock *)self propertyUpdateQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __39__TSDCKernelClock_postLockStateChange___block_invoke;
    v8[3] = &unk_279DBD7D0;
    v8[4] = self;
    changeCopy2 = change;
    dispatch_async(propertyUpdateQueue2, v8);
  }

  else
  {
    [(TSDCKernelClock *)self setLockState:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained didChangeLockStateTo:?];
}

void __39__TSDCKernelClock_postLockStateChange___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setLockState:?];

  objc_autoreleasePoolPop(v2);
}

- (void)updateLockState:(int)state
{
  v9 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134218240;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v7 = 1024;
    stateCopy = state;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCKernelClock(0x%016llx) updateLockState:%d", &v5, 0x12u);
  }

  os_unfair_lock_lock(&self->_updateLock);
  self->_internalLockState = state;
  os_unfair_lock_unlock(&self->_updateLock);
  [(TSDCKernelClock *)self postLockStateChange:?];
}

- (void)updateTimeSyncTime:(unint64_t)time timeSyncInterval:(unint64_t)interval domainTime:(unint64_t)domainTime domainInterval:(unint64_t)domainInterval
{
  lockState = [(TSDCKernelClock *)self lockState];
  if (time == -1)
  {
    [TSDCKernelClock updateTimeSyncTime:timeSyncInterval:domainTime:domainInterval:];
  }

  else if (domainTime == -1)
  {
    [TSDCKernelClock updateTimeSyncTime:timeSyncInterval:domainTime:domainInterval:];
  }

  else if (interval)
  {
    if (domainInterval)
    {
      v12 = lockState;
      os_unfair_lock_lock(&self->_updateLock);
      v13 = (self->_validIndex + 1) & 7;
      v14 = &self->super.isa + 4 * v13;
      v14[1] = time;
      v14[2] = domainTime;
      v14[3] = interval;
      v14[4] = domainInterval;
      self->_validIndex = v13;
      v24 = 0;
      v25 = 0;
      [TSDCKernelClock getMachAbsoluteRateRatioNumerator:"getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:" denominator:? machAnchor:? andDomainAnchor:? withError:?];
      info = 0;
      mach_timebase_info(&info);
      v24 /= info.denom;
      v25 /= info.numer;
      v15 = v25 / v24;
      propertyUpdateQueue = [(TSDCKernelClock *)self propertyUpdateQueue];

      if (propertyUpdateQueue)
      {
        propertyUpdateQueue2 = [(TSDCKernelClock *)self propertyUpdateQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __81__TSDCKernelClock_updateTimeSyncTime_timeSyncInterval_domainTime_domainInterval___block_invoke;
        block[3] = &unk_279DBD7F8;
        block[4] = self;
        *&block[5] = v15;
        dispatch_async(propertyUpdateQueue2, block);
      }

      else
      {
        [(TSDCKernelClock *)self setHostRateRatio:?];
      }

      internalLockState = self->_internalLockState;
      if (internalLockState == 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v12;
      }

      if (v12 != 2 && internalLockState == 2)
      {
        v21 = 2;
      }

      else
      {
        v21 = v19;
      }

      os_unfair_lock_unlock(&self->_updateLock);
      if (v12 != v21)
      {
        [(TSDCKernelClock *)self postLockStateChange:?];
      }
    }

    else
    {
      [TSDCKernelClock updateTimeSyncTime:timeSyncInterval:domainTime:domainInterval:];
    }
  }

  else
  {
    [TSDCKernelClock updateTimeSyncTime:timeSyncInterval:domainTime:domainInterval:];
  }
}

void __81__TSDCKernelClock_updateTimeSyncTime_timeSyncInterval_domainTime_domainInterval___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setHostRateRatio:?];

  objc_autoreleasePoolPop(v2);
}

- (void)didResetClock:(id)clock
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCKernelClock(0x%016llx) didResetClock", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained didResetClock];
}

- (void)didChangeClockMasterForClock:(id)clock
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCKernelClock(0x%016llx) didChangeClockMasterForClock", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_client);
  [WeakRetained didChangeClockMaster];
}

- (void)didChangeLockStateTo:(int)to forClock:(id)clock
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCKernelClock(0x%016llx) didChangeLockStateTo", &v5, 0xCu);
  }

  [(TSDCKernelClock *)self updateLockState:?];
}

- (TSKernelClock)client
{
  WeakRetained = objc_loadWeakRetained(&self->_client);

  return WeakRetained;
}

- (void)convertFromMachAbsoluteTime:toDomainTime:withCount:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)convertFromMachAbsoluteTime:toDomainTime:withCount:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)convertFromDomainTime:toMachAbsoluteTime:withCount:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)convertFromDomainTime:toMachAbsoluteTime:withCount:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:.cold.3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)convertFromTimeSyncToDomainTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)convertFromTimeSyncToDomainTime:.cold.2()
{
  OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)convertFromDomainToTimeSyncTime:.cold.1()
{
  OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)convertFromDomainToTimeSyncTime:.cold.2()
{
  OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)convertFromTimeSyncTime:toDomainTime:withCount:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)convertFromTimeSyncTime:toDomainTime:withCount:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)convertFromDomainTime:toTimeSyncTime:withCount:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)convertFromDomainTime:toTimeSyncTime:withCount:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_3();
}

- (void)convertFromTimeSyncTimeIntervalToDomainInterval:.cold.1()
{
  OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)convertFromTimeSyncTimeIntervalToDomainInterval:.cold.2()
{
  OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)convertFromDomainIntervalToTimeSyncTimeInterval:.cold.1()
{
  OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)convertFromDomainIntervalToTimeSyncTimeInterval:.cold.2()
{
  OUTLINED_FUNCTION_5();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_4();
}

- (void)getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)updateTimeSyncTime:timeSyncInterval:domainTime:domainInterval:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)updateTimeSyncTime:timeSyncInterval:domainTime:domainInterval:.cold.2()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)updateTimeSyncTime:timeSyncInterval:domainTime:domainInterval:.cold.3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)updateTimeSyncTime:timeSyncInterval:domainTime:domainInterval:.cold.4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

@end