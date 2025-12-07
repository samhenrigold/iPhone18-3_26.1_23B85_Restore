@interface TSDCgPTPClock
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number flags:(unint64_t *)flags;
- (BOOL)convertFrom32BitASTime:(unsigned int *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFrom32BitASTime:(unsigned int *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count;
- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFromDomainTime:(unint64_t *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)convertFromTimeSyncTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error;
- (TSDCgPTPClock)initWithKernelClock:(id)clock;
- (id).cxx_construct;
- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time;
- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)time;
- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)machAbsoluteFromgPTPTime:(id)time;
- (unint64_t)timeSyncTimeFromgPTPTime:(id)time;
- (void)_getInitialSyncInfo;
- (void)dealloc;
- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)didChangeLocalPortWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock;
- (void)updateGrandmasterIdentity:(unint64_t)identity andgPTPPath:(id)path;
- (void)updateLockState:(int)state;
- (void)updateWithSyncInfoValid:(BOOL)valid syncFlags:(unsigned __int8)flags timeSyncTime:(unint64_t)time domainTimeHi:(unint64_t)hi domainTimeLo:(unint64_t)lo cumulativeScaledRate:(unint64_t)rate inverseCumulativeScaledRate:(unint64_t)scaledRate grandmasterID:(unint64_t)self0 localPortNumber:(unsigned __int16)self1;
@end

@implementation TSDCgPTPClock

- (id).cxx_construct
{
  for (i = 0; i != 512; i += 64)
  {
    v3 = self + i + 360;
    *v3 = 0;
    v3[1] = 0;
  }

  return self;
}

- (TSDCgPTPClock)initWithKernelClock:(id)clock
{
  clockCopy = clock;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12.receiver = self;
    v12.super_class = TSDCgPTPClock;
    v6 = [(TSDCKernelClock *)&v12 initWithKernelClock:clockCopy];
    selfCopy = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_gPTPClock, clock);
      v8 = +[TSClockManager sharedClockManager];
      timeSyncClock = [v8 timeSyncClock];
      timeSyncClock = selfCopy->_timeSyncClock;
      selfCopy->_timeSyncClock = timeSyncClock;

      [(_TSF_TSDgPTPClock *)selfCopy->_gPTPClock addImplClock:?];
      [(TSDCgPTPClock *)selfCopy _getInitialSyncInfo];
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  [(_TSF_TSDgPTPClock *)self->_gPTPClock removeImplClock:?];
  v3.receiver = self;
  v3.super_class = TSDCgPTPClock;
  [(TSDCKernelClock *)&v3 dealloc];
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
          *domainTimeCopy++ = [TSDCgPTPClock convertFromMachAbsoluteToDomainTime:"convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCgPTPClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
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
          *absoluteTimeCopy++ = [TSDCgPTPClock convertFromDomainToMachAbsoluteTime:"convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCgPTPClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
    return v11;
  }
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval
{
  translationClock = [(TSDCKernelClock *)self translationClock];
  [translationClock convertFromMachAbsoluteIntervalToDomainInterval:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  [translationClock2 convertFromDomainIntervalToTimeSyncTimeInterval:?];

  return [(TSDCgPTPClock *)self convertFromTimeSyncTimeIntervalToDomainInterval:?];
}

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval
{
  [(TSDCgPTPClock *)self convertFromDomainIntervalToTimeSyncTimeInterval:?];
  translationClock = [(TSDCKernelClock *)self translationClock];
  [translationClock convertFromTimeSyncTimeIntervalToDomainInterval:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v6 = [translationClock2 convertFromDomainIntervalToMachAbsoluteInterval:?];

  return v6;
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
          v9 = *timeCopy++;
          v10 = -1;
          if (v9)
          {
            v10 = [TSDCgPTPClock convertFromTimeSyncTimeToDomainTime:"convertFromTimeSyncTimeToDomainTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
          }

          *domainTimeCopy++ = v10;
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFromTimeSyncTime:toDomainTime:withCount:];
      return v12;
    }
  }

  else
  {
    [TSDCgPTPClock convertFromTimeSyncTime:toDomainTime:withCount:];
    return v13;
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
          *syncTimeCopy++ = [TSDCgPTPClock convertFromDomainTimeToTimeSyncTime:"convertFromDomainTimeToTimeSyncTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFromDomainTime:toTimeSyncTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCgPTPClock convertFromDomainTime:toTimeSyncTime:withCount:];
    return v11;
  }
}

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval
{
  validIndex = [(TSDCKernelClock *)self validIndex];
  if (interval == -1)
  {
    [TSDCgPTPClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v8;
  }

  if (validIndex >= 8)
  {
    [TSDCgPTPClock convertFromTimeSyncTimeIntervalToDomainInterval:];
    return v8;
  }

  cumulativeScaledRate = self->_timeInfo[validIndex].cumulativeScaledRate;

  return scaledInterval(interval, cumulativeScaledRate);
}

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval
{
  validIndex = [(TSDCKernelClock *)self validIndex];
  if (interval == -1)
  {
    [TSDCgPTPClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v8;
  }

  if (validIndex >= 8)
  {
    [TSDCgPTPClock convertFromDomainIntervalToTimeSyncTimeInterval:];
    return v8;
  }

  inverseCumulativeScaledRate = self->_timeInfo[validIndex].inverseCumulativeScaledRate;

  return scaledInterval(interval, inverseCumulativeScaledRate);
}

- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time
{
  v29 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v17 = 136315138;
    v18 = "[TSDCgPTPClock gPTPTimeFromMachAbsoluteTime:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v17, 0xCu);
  }

  translationClock = [(TSDCKernelClock *)self translationClock];
  v8 = [translationClock convertFromMachAbsoluteToDomainTime:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v10 = [translationClock2 convertFromDomainToTimeSyncTime:?];

  v11 = [(TSDCgPTPClock *)self gPTPTimeFromTimeSyncTime:?];
  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    seconds = [v11 seconds];
    nanoseconds = [v11 nanoseconds];
    v17 = 136316418;
    v18 = "[TSDCgPTPClock gPTPTimeFromMachAbsoluteTime:]";
    v19 = 2048;
    timeCopy = time;
    v21 = 2048;
    v22 = v8;
    v23 = 2048;
    v24 = v10;
    v25 = 2048;
    v26 = seconds;
    v27 = 1024;
    v28 = nanoseconds;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s MachAbsoluteTime=%llu intermediateTime=%llu timeSyncTime=%llu gPTPTime.seconds=%llu gPTPTime.nanoseconds=%u", &v17, 0x3Au);
  }

  return v11;
}

- (unint64_t)machAbsoluteFromgPTPTime:(id)time
{
  v29 = *MEMORY[0x277D85DE8];
  timeCopy = time;
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v17 = 136315138;
    v18 = "[TSDCgPTPClock machAbsoluteFromgPTPTime:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v17, 0xCu);
  }

  v7 = [(TSDCgPTPClock *)self timeSyncTimeFromgPTPTime:?];
  translationClock = [(TSDCKernelClock *)self translationClock];
  v9 = [translationClock convertFromTimeSyncToDomainTime:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v11 = [translationClock2 convertFromDomainToMachAbsoluteTime:?];

  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    seconds = [timeCopy seconds];
    nanoseconds = [timeCopy nanoseconds];
    v17 = 136316418;
    v18 = "[TSDCgPTPClock machAbsoluteFromgPTPTime:]";
    v19 = 2048;
    v20 = seconds;
    v21 = 1024;
    v22 = nanoseconds;
    v23 = 2048;
    v24 = v7;
    v25 = 2048;
    v26 = v9;
    v27 = 2048;
    v28 = v11;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s gPTPTime.seconds=%llu gPTPTime.nanoseconds=%u timeSyncTime=%llu intermediateTime=%llu MachAbsoluteTime=%llu", &v17, 0x3Au);
  }

  return v11;
}

- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)time
{
  v25 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v15 = 136315138;
    v16 = "[TSDCgPTPClock convertFrom32BitASToMachAbsoluteTime:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v15, 0xCu);
  }

  v7 = [(TSDCgPTPClock *)self convertFrom32BitASToTimeSyncTime:?];
  translationClock = [(TSDCKernelClock *)self translationClock];
  v9 = [translationClock convertFromTimeSyncToDomainTime:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v11 = [translationClock2 convertFromDomainToMachAbsoluteTime:?];

  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    v15 = 136316162;
    v16 = "[TSDCgPTPClock convertFrom32BitASToMachAbsoluteTime:]";
    v17 = 1024;
    timeCopy = time;
    v19 = 2048;
    v20 = v7;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v11;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s domainTime=%u timeSyncTime=%llu intermediateTime=%llu MachAbsoluteTime=%llu", &v15, 0x30u);
  }

  return v11;
}

- (BOOL)convertFrom32BitASTime:(unsigned int *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count
{
  if (time)
  {
    absoluteTimeCopy = absoluteTime;
    if (absoluteTime)
    {
      if (count)
      {
        timeCopy = time;
        countCopy = count;
        do
        {
          ++timeCopy;
          *absoluteTimeCopy++ = [(TSDCgPTPClock *)self convertFrom32BitASToMachAbsoluteTime:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFrom32BitASTime:toMachAbsoluteTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCgPTPClock convertFrom32BitASTime:toMachAbsoluteTime:withCount:];
    return v11;
  }
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v27 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v17 = 136315138;
    v18 = "[TSDCgPTPClock convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v17, 0xCu);
  }

  translationClock = [(TSDCKernelClock *)self translationClock];
  v10 = [translationClock convertFromMachAbsoluteToDomainTime:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v12 = [translationClock2 convertFromDomainToTimeSyncTime:?];

  v13 = [TSDCgPTPClock convertFromTimeSyncTimeToDomainTime:"convertFromTimeSyncTimeToDomainTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    v17 = 136316162;
    v18 = "[TSDCgPTPClock convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:]";
    v19 = 2048;
    timeCopy = time;
    v21 = 2048;
    v22 = v10;
    v23 = 2048;
    v24 = v12;
    v25 = 2048;
    v26 = v13;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s machAbsoluteTime=%llu intermediateTime=%llu timeSyncTime=%llu domainTime=%llu", &v17, 0x34u);
  }

  return v13;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v27 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog))
  {
    v17 = 136315138;
    v18 = "[TSDCgPTPClock convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:]";
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, getSignpostId, &unk_26F0DFDB1, "%s", &v17, 0xCu);
  }

  v9 = [TSDCgPTPClock convertFromDomainTimeToTimeSyncTime:"convertFromDomainTimeToTimeSyncTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  translationClock = [(TSDCKernelClock *)self translationClock];
  v11 = [translationClock convertFromTimeSyncToDomainTime:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v13 = [translationClock2 convertFromDomainToMachAbsoluteTime:?];

  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(getOsLog2))
  {
    v17 = 136316162;
    v18 = "[TSDCgPTPClock convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:]";
    v19 = 2048;
    timeCopy = time;
    v21 = 2048;
    v22 = v9;
    v23 = 2048;
    v24 = v11;
    v25 = 2048;
    v26 = v13;
    _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, getSignpostId2, &unk_26F0DFDB1, "%s domainTime=%llu timeSyncTime=%llu intermediateTime=%llu  machAbsoluteTime=%llu", &v17, 0x34u);
  }

  return v13;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
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

  if (![TSDCgPTPClock getTimeSyncTimeRateRatioNumerator:"getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:" denominator:error timeSyncAnchor:? andDomainAnchor:? forGrandmasterIdentity:? portNumber:? withError:?])
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v20;
  }

  translationClock = [(TSDCKernelClock *)self translationClock];
  v14 = [translationClock getTimeSyncTimeRateRatioNumerator:? denominator:? timeSyncAnchor:? andDomainAnchor:? withError:?];

  if ((v14 & 1) == 0)
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v20;
  }

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v16 = [translationClock2 getMachAbsoluteRateRatioNumerator:? denominator:? machAnchor:? andDomainAnchor:? withError:?];

  if ((v16 & 1) == 0)
  {
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
    return v20;
  }

  __C(0, 0, 0, 0, 0, 0, numerator, denominator);
  if (anchor)
  {
    translationClock3 = [(TSDCKernelClock *)self translationClock];
    translationClock4 = [(TSDCKernelClock *)self translationClock];
    [translationClock4 convertFromTimeSyncToDomainTime:?];
    *anchor = [translationClock3 convertFromDomainToMachAbsoluteTime:?];
  }

  return 1;
}

- (id)getMetrics
{
  getMetrics = [(_TSF_TSDgPTPClock *)self->_gPTPClock getMetrics];

  return getMetrics;
}

- (id)getMetricsWithDelta:(id)delta
{
  v3 = [(_TSF_TSDgPTPClock *)self->_gPTPClock getMetricsWithDelta:?];

  return v3;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  translationClock = [(TSDCKernelClock *)self translationClock];
  [translationClock convertFromMachAbsoluteToDomainTime:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  [translationClock2 convertFromDomainToTimeSyncTime:?];

  v8 = [TSDCgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:"convertFromTimeSyncTimeTo128BitgPTPTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  [TSDCgPTPClock convertFrom128BitgPTPTimeToTimeSyncTime:"convertFrom128BitgPTPTimeToTimeSyncTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  translationClock = [(TSDCKernelClock *)self translationClock];
  [translationClock convertFromTimeSyncToDomainTime:?];

  translationClock2 = [(TSDCKernelClock *)self translationClock];
  v8 = [translationClock2 convertFromDomainToMachAbsoluteTime:?];

  return v8;
}

- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v3 = [TSDCgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:"convertFromTimeSyncTimeTo128BitgPTPTime:grandmasterUsed:portNumber:flags:" grandmasterUsed:? portNumber:? flags:?];
  v5 = 0;
  if (v3 != -1 || v4 != -1)
  {
    v7 = (v16 >> 2) & 1;
    *&v13 = v4;
    *(&v13 + 1) = v3;
    *v11 = xmmword_26F0DFC10;
    v12[0] = IOTS_U128::operator/(&v13, v11);
    v12[1] = v8;
    operator*(v12, 0x3B9ACA00uLL, v11);
    LOBYTE(v10) = v7;
    v5 = [TSgPTPTime initWithSeconds:"initWithSeconds:nanoseconds:onGrandmaster:withLocalPortNumber:ptpTimescale:timeTraceable:frequencyTraceable:" nanoseconds:v10 onGrandmaster:? withLocalPortNumber:? ptpTimescale:? timeTraceable:? frequencyTraceable:?];
  }

  return v5;
}

- (unint64_t)timeSyncTimeFromgPTPTime:(id)time
{
  timeCopy = time;
  IOTS_uint64mul([timeCopy seconds], 1000000000);
  [timeCopy nanoseconds];
  v5 = [TSDCgPTPClock convertFrom128BitgPTPTimeToTimeSyncTime:"convertFrom128BitgPTPTimeToTimeSyncTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];

  return v5;
}

- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time
{
  v53 = *MEMORY[0x277D85DE8];
  timeSyncClock = self->_timeSyncClock;
  mach_absolute_time();
  selfCopy = self;
  v31 = [(TSClock *)timeSyncClock convertFromMachAbsoluteToDomainTime:?];
  v32 = [TSDCgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:"convertFromTimeSyncTimeTo128BitgPTPTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  v7 = v6;
  if (v32 == -1 && v6 == -1)
  {
    [TSDCgPTPClock convertFrom32BitASToTimeSyncTime:];
    return *buf;
  }

  v9 = v6 & 0xFFFFFFFF00000000 | time;
  v10 = HIDWORD(v6) == 0;
  v11 = v9 - 0x100000000;
  v12 = v9 + 0x100000000;
  v13 = v6 > 0xFFFFFFFEFFFFFFFFLL;
  if (v6 <= 0xFFFFFFFEFFFFFFFFLL)
  {
    v14 = v32;
  }

  else
  {
    v14 = v32 + 1;
  }

  if (v9 <= v6)
  {
    v15 = v6 - v9;
  }

  else
  {
    v15 = v9 - v6;
  }

  v16 = ((__PAIR128__(v32, HIDWORD(v6)) - 1) >> 64);
  if (v11 <= v6)
  {
    v10 = 1;
  }

  if ((__PAIR128__(v32, HIDWORD(v6)) - 1) >> 64 <= v32 && v10)
  {
    v17 = v6 - v11;
  }

  else
  {
    v17 = v11 - v6;
  }

  if (v12 <= v6)
  {
    v13 = 1;
  }

  if (v14 <= v32 && v13)
  {
    v18 = v6 - v12;
  }

  else
  {
    v18 = v12 - v6;
  }

  if (v15 > v17 || v15 > v18)
  {
    if (v17 <= v15 && v17 <= v18)
    {
      if (v17 <= 0x59682EFF)
      {
        v25 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          clockIdentifier = [(TSDCKernelClock *)selfCopy clockIdentifier];
          *buf = 134219008;
          *&buf[4] = clockIdentifier;
          v35 = 2048;
          v36 = 1500;
          v37 = 2048;
          v38 = v15;
          v39 = 2048;
          v40 = v17;
          v41 = 2048;
          v42 = v18;
          _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Converted a 32 time with past which is more than %llu milliseconds from now. nowSplicedDiffMag %llu nowPastDiffMag %llu nowFutureDiffMag %llu\n", buf, 0x34u);
        }

        v25 = 1;
      }

      v9 -= 0x100000000;
      goto LABEL_57;
    }

    if (v18 <= v15 && v18 <= v17)
    {
      if (v18 <= 0x59682EFF)
      {
        v25 = 0;
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          clockIdentifier2 = [(TSDCKernelClock *)selfCopy clockIdentifier];
          *buf = 134219008;
          *&buf[4] = clockIdentifier2;
          v35 = 2048;
          v36 = 1500;
          v37 = 2048;
          v38 = v15;
          v39 = 2048;
          v40 = v17;
          v41 = 2048;
          v42 = v18;
          _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Converted a 32 time with future which is more than %llu milliseconds from now. nowSplicedDiffMag %llu nowPastDiffMag %llu nowFutureDiffMag %llu\n", buf, 0x34u);
        }

        v25 = 1;
      }

      v16 = v14;
      v9 += 0x100000000;
      goto LABEL_57;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    *buf = 134218752;
    *&buf[4] = [(TSDCKernelClock *)selfCopy clockIdentifier];
    v35 = 2048;
    v36 = v15;
    v37 = 2048;
    v38 = v17;
    v39 = 2048;
    v40 = v18;
    v22 = MEMORY[0x277D86220];
    v23 = "TSDCgPTPClock(0x%016llx): Converted a 32 time which didn't match a closest one condition. nowSplicedDiffMag %llu nowPastDiffMag %llu nowFutureDiffMag %llu\n";
    v24 = 42;
    goto LABEL_41;
  }

  if (v15 <= 0x59682EFF)
  {
    v25 = 0;
    goto LABEL_48;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219008;
    *&buf[4] = [(TSDCKernelClock *)selfCopy clockIdentifier];
    v35 = 2048;
    v36 = 1500;
    v37 = 2048;
    v38 = v15;
    v39 = 2048;
    v40 = v17;
    v41 = 2048;
    v42 = v18;
    v22 = MEMORY[0x277D86220];
    v23 = "TSDCgPTPClock(0x%016llx): Converted a 32 time with spliced which is more than %llu milliseconds from now. nowSplicedDiffMag %llu nowPastDiffMag %llu nowFutureDiffMag %llu\n";
    v24 = 52;
LABEL_41:
    _os_log_impl(&dword_26F080000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, v24);
  }

LABEL_42:
  v25 = 1;
LABEL_48:
  v16 = v32;
LABEL_57:
  v28 = [TSDCgPTPClock convertFrom128BitgPTPTimeToTimeSyncTime:selfCopy grandmasterUsed:"convertFrom128BitgPTPTimeToTimeSyncTime:grandmasterUsed:portNumber:" portNumber:?];
  if (v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier3 = [(TSDCKernelClock *)selfCopy clockIdentifier];
    *buf = 134220288;
    *&buf[4] = clockIdentifier3;
    v35 = 2048;
    v36 = v7;
    v37 = 2048;
    v38 = v32;
    v39 = 2048;
    v40 = v7;
    v41 = 2048;
    v42 = v31;
    v43 = 2048;
    v44 = v9;
    v45 = 2048;
    v46 = v16;
    v47 = 2048;
    v48 = v9;
    v49 = 2048;
    v50 = v28;
    v51 = 2048;
    v52 = v7 - v9;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Now gPTP %llu (%llx.%016llx) now mach %llu convert gPTP %llu (%llx.%016llx) mach %llu diff %lld\n", buf, 0x66u);
  }

  return v28;
}

- (BOOL)convertFrom32BitASTime:(unsigned int *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count
{
  if (time)
  {
    syncTimeCopy = syncTime;
    if (syncTime)
    {
      if (count)
      {
        timeCopy = time;
        countCopy = count;
        do
        {
          ++timeCopy;
          *syncTimeCopy++ = [(TSDCgPTPClock *)self convertFrom32BitASToTimeSyncTime:?];
          --countCopy;
        }

        while (countCopy);
      }

      return 1;
    }

    else
    {
      [TSDCgPTPClock convertFrom32BitASTime:toTimeSyncTime:withCount:];
      return v10;
    }
  }

  else
  {
    [TSDCgPTPClock convertFrom32BitASTime:toTimeSyncTime:withCount:];
    return v11;
  }
}

- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v56 = *MEMORY[0x277D85DE8];
  timeSyncClock = self->_timeSyncClock;
  mach_absolute_time();
  v33 = [(TSClock *)timeSyncClock convertFromMachAbsoluteToDomainTime:?];
  v9 = [TSDCgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:"convertFromTimeSyncTimeTo128BitgPTPTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  v10 = v8;
  if (v9 == -1 && v8 == -1)
  {
    [TSDCgPTPClock convertFromDomainTimeToTimeSyncTime:grandmasterUsed:portNumber:];
    return *buf;
  }

  v12 = time - v8;
  v34 = v8 - time;
  if (v8 >= time)
  {
    v13 = v8 - time;
  }

  else
  {
    v13 = time - v8;
  }

  if (!v9)
  {
    if (v8 > time)
    {
      v14 = -2;
    }

    else
    {
      v14 = -1;
    }

    v15 = time - v8;
    goto LABEL_15;
  }

  v14 = v8 >= time;
  if (v9 != -1)
  {
    v15 = v8 - time;
LABEL_15:
    v16 = v8 <= time;
    goto LABEL_20;
  }

  if (v8 < time)
  {
    v16 = -2;
  }

  else
  {
    v16 = -1;
  }

  v12 = v8 - time;
  v15 = v8 - time;
LABEL_20:
  if (v14)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15 >= v13;
  }

  if (!v17)
  {
    if (v16 == v14)
    {
      if (v12 >= v15)
      {
        goto LABEL_55;
      }
    }

    else if (v16 > v14)
    {
      goto LABEL_55;
    }

LABEL_43:
    if (v14)
    {
      v24 = 1;
    }

    else
    {
      v24 = v15 >= v12;
    }

    v25 = !v24;
    if (v13 >= v12 && (v25 & 1) == 0)
    {
      v26 = v9 + 1;
      if (v12 > 0x8BB2C96FFFLL)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219776;
          *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
          v38 = 2048;
          v39 = 600000;
          v40 = 2048;
          v41 = 0;
          v42 = 2048;
          v43 = v13;
          v44 = 2048;
          v45 = v14;
          v46 = 2048;
          timeCopy = v15;
          v48 = 2048;
          v49 = 0;
          v50 = 2048;
          timeCopy2 = v12;
          v27 = MEMORY[0x277D86220];
          v28 = "TSDCgPTPClock(0x%016llx): Converted a 64 time with future which is more than %llu milliseconds from now. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
LABEL_58:
          _os_log_impl(&dword_26F080000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x52u);
        }

LABEL_59:
        v29 = 1;
        goto LABEL_67;
      }

      goto LABEL_60;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_64;
    }

    *buf = 134219520;
    *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
    v38 = 2048;
    v39 = 0;
    v40 = 2048;
    v41 = v13;
    v42 = 2048;
    v43 = v14;
    v44 = 2048;
    v45 = v15;
    v46 = 2048;
    timeCopy = v16;
    v48 = 2048;
    v49 = v12;
    v19 = MEMORY[0x277D86220];
    v20 = "TSDCgPTPClock(0x%016llx): Converted a 64 time which didn't match a closest one condition. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
    v21 = 72;
    goto LABEL_63;
  }

  if (v16)
  {
    v18 = 1;
  }

  else
  {
    v18 = v12 >= v13;
  }

  if (!v18)
  {
    if (v14)
    {
      v22 = 0;
    }

    else
    {
      v22 = v13 >= v15;
    }

    if (v22 && v12 >= v15)
    {
LABEL_55:
      v26 = v9 - 1;
      if (v15 > 0x8BB2C96FFFLL)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219776;
          *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
          v38 = 2048;
          v39 = 600000;
          v40 = 2048;
          v41 = 0;
          v42 = 2048;
          v43 = v13;
          v44 = 2048;
          v45 = v14;
          v46 = 2048;
          timeCopy = v15;
          v48 = 2048;
          v49 = v16;
          v50 = 2048;
          timeCopy2 = v12;
          v27 = MEMORY[0x277D86220];
          v28 = "TSDCgPTPClock(0x%016llx): Converted a 64 time with past which is more than %llu milliseconds from now. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
          goto LABEL_58;
        }

        goto LABEL_59;
      }

LABEL_60:
      v29 = 0;
      goto LABEL_67;
    }

    goto LABEL_43;
  }

  if (v13 <= 0x8BB2C96FFFLL)
  {
    v29 = 0;
    goto LABEL_66;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134219776;
    *&buf[4] = [(TSDCKernelClock *)self clockIdentifier];
    v38 = 2048;
    v39 = 600000;
    v40 = 2048;
    v41 = 0;
    v42 = 2048;
    v43 = v13;
    v44 = 2048;
    v45 = v14;
    v46 = 2048;
    timeCopy = v15;
    v48 = 2048;
    v49 = v16;
    v50 = 2048;
    timeCopy2 = v12;
    v19 = MEMORY[0x277D86220];
    v20 = "TSDCgPTPClock(0x%016llx): Converted a 64 time with spliced which is more than %llu milliseconds from now. nowSplicedDiffMag %llx.%016llx nowPastDiffMag %llx.%016llx nowFutureDiffMag %llx.%016llx\n";
    v21 = 82;
LABEL_63:
    _os_log_impl(&dword_26F080000, v19, OS_LOG_TYPE_DEFAULT, v20, buf, v21);
  }

LABEL_64:
  v29 = 1;
LABEL_66:
  v26 = v9;
LABEL_67:
  v30 = [TSDCgPTPClock convertFrom128BitgPTPTimeToTimeSyncTime:"convertFrom128BitgPTPTimeToTimeSyncTime:grandmasterUsed:portNumber:" grandmasterUsed:? portNumber:?];
  if (v29 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134220288;
    *&buf[4] = clockIdentifier;
    v38 = 2048;
    v39 = v10;
    v40 = 2048;
    v41 = v9;
    v42 = 2048;
    v43 = v10;
    v44 = 2048;
    v45 = v33;
    v46 = 2048;
    timeCopy = time;
    v48 = 2048;
    v49 = v26;
    v50 = 2048;
    timeCopy2 = time;
    v52 = 2048;
    v53 = v30;
    v54 = 2048;
    v55 = v34;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Now gPTP %llu (%llx.%016llx) now mach %llu convert gPTP %llu (%llx.%016llx) mach %llu diff %lld\n", buf, 0x66u);
  }

  if (used)
  {
    *used = -1;
  }

  if (number)
  {
    *number = -1;
  }

  return v30;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  validIndex = [(TSDCKernelClock *)self validIndex];
  v17 = validIndex;
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

  if (identity)
  {
    *identity = -1;
  }

  if (number)
  {
    *number = -1;
  }

  if (validIndex >= 8)
  {
    [TSDCgPTPClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
  }

  else
  {
    if (numerator)
    {
      *numerator = self->_timeInfo[validIndex].cumulativeScaledRate;
    }

    if (denominator)
    {
      *denominator = 0x20000000000;
    }

    if (anchor)
    {
      *anchor = self->_timeInfo[validIndex].timeSyncTime;
    }

    if (domainAnchor)
    {
      *domainAnchor = self->_timeInfo[validIndex].domainTime.lo;
    }

    if (identity)
    {
      *identity = self->_timeInfo[validIndex].grandmasterID;
    }

    if (number)
    {
      *number = self->_timeInfo[validIndex].localPortNumber;
    }
  }

  return v17 < 8;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v5 = [TSDCgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:"convertFromTimeSyncTimeTo128BitgPTPTime:grandmasterUsed:portNumber:flags:" grandmasterUsed:? portNumber:? flags:?];
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number flags:(unint64_t *)flags
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = -1;
  validIndex = [(TSDCKernelClock *)self validIndex];
  v13 = validIndex;
  if (time == -1 || validIndex == -1)
  {
    if (validIndex == -1 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134217984;
      clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Attempting to convert from Mach but index == -1\n", &v35, 0xCu);
    }

    if (used)
    {
      *used = -1;
    }

    if (number)
    {
      *number = -1;
    }

    if (!flags)
    {
      goto LABEL_35;
    }

    goto LABEL_14;
  }

  v17 = &self->_timeInfo[validIndex];
  if (!v17->syncInfoValid)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v35 = 134218240;
      clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
      v37 = 1024;
      LODWORD(timeCopy) = v13;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Attempting to convert from Mach but sync info at index %u is not valid\n", &v35, 0x12u);
    }

    if (used)
    {
      *used = -1;
    }

    if (number)
    {
      *number = -1;
    }

    if (!flags)
    {
LABEL_35:
      v16 = -1;
      goto LABEL_46;
    }

LABEL_14:
    v15 = 0x8000000000000000;
    v16 = -1;
LABEL_15:
    *flags = v15;
    goto LABEL_46;
  }

  timeSyncTime = v17->timeSyncTime;
  if (timeSyncTime <= time)
  {
    v19 = time - timeSyncTime;
  }

  else
  {
    v19 = timeSyncTime - time;
  }

  v20 = scaledInterval(v19, v17->cumulativeScaledRate);
  v21 = v20;
  hi = v17->domainTime.hi;
  if (timeSyncTime <= time)
  {
    lo = v17->domainTime.lo;
    v11 = lo + v20;
    if (__CFADD__(lo, v20))
    {
      v16 = hi + 1;
    }

    else
    {
      v16 = v17->domainTime.hi;
    }

    if (!used)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v23 = v17->domainTime.lo;
  if (hi)
  {
    v24 = 1;
  }

  else
  {
    v24 = v23 > v20;
  }

  if (v24)
  {
    v25 = __PAIR128__(hi, v23) - v20;
    v16 = *(&v25 + 1);
    v11 = v25;
    if (!used)
    {
      goto LABEL_41;
    }

LABEL_40:
    *used = v17->grandmasterID;
    goto LABEL_41;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier2 = [(TSDCKernelClock *)self clockIdentifier];
    timeSyncClock = self->_timeSyncClock;
    mach_absolute_time();
    v33 = [(TSClock *)timeSyncClock convertFromMachAbsoluteToDomainTime:?];
    v34 = v17->domainTime.lo;
    v35 = 134219008;
    clockIdentifier = clockIdentifier2;
    v37 = 2048;
    timeCopy = time;
    v39 = 2048;
    v40 = v33;
    v41 = 2048;
    v42 = v21;
    v43 = 2048;
    v44 = v34;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Trying to convert from a timesync time nanosecond time %llu (%llu) that would result in a negative gPTP time %llu %llu\n", &v35, 0x34u);
  }

  v16 = -1;
  if (used)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (number)
  {
    *number = v17->localPortNumber;
  }

  if (flags)
  {
    v27 = (v17->syncFlags >> 3) & 1;
    *flags = v27;
    syncFlags = v17->syncFlags;
    if ((syncFlags & 0x30) != 0)
    {
      v15 = (syncFlags >> 3) & 6 | v27;
      goto LABEL_15;
    }
  }

LABEL_46:
  v29 = v11;
  result.var1 = v29;
  result.var0 = v16;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  var1 = time.var1;
  var0 = time.var0;
  v43 = *MEMORY[0x277D85DE8];
  v10 = -1;
  validIndex = [(TSDCKernelClock *)self validIndex];
  v12 = validIndex;
  if (var0 == -1)
  {
    if (var1 == -1 || validIndex == -1)
    {
      if (validIndex != -1)
      {
        goto LABEL_19;
      }

      goto LABEL_14;
    }
  }

  else if (validIndex == -1)
  {
LABEL_14:
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v29 = 134217984;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v17 = MEMORY[0x277D86220];
    v18 = "TSDCgPTPClock(0x%016llx): Attempting to convert to Mach but index == -1\n";
    v19 = 12;
    goto LABEL_18;
  }

  v13 = &self->_timeInfo[validIndex];
  if (!v13->syncInfoValid)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v29 = 134218240;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v31 = 1024;
    LODWORD(v32) = v12;
    v17 = MEMORY[0x277D86220];
    v18 = "TSDCgPTPClock(0x%016llx): Attempting to convert to Mach but sync info at index %u is not valid\n";
    v19 = 18;
LABEL_18:
    _os_log_impl(&dword_26F080000, v17, OS_LOG_TYPE_DEFAULT, v18, &v29, v19);
LABEL_19:
    if (used)
    {
      *used = -1;
    }

    if (number)
    {
      localPortNumber = -1;
LABEL_32:
      *number = localPortNumber;
      return v10;
    }

    return v10;
  }

  lo = v13->domainTime.lo;
  hi = v13->domainTime.hi;
  if (hi > var0 || (hi == var0 ? (v16 = lo > var1) : (v16 = 0), v16))
  {
    v21 = scaledInterval(lo - var1, v13->inverseCumulativeScaledRate);
    timeSyncTime = v13->timeSyncTime;
    v16 = timeSyncTime > v21;
    v23 = timeSyncTime - v21;
    if (v16)
    {
      v10 = v23;
    }

    else
    {
      v24 = v21;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        clockIdentifier2 = [(TSDCKernelClock *)self clockIdentifier];
        v27 = v13->timeSyncTime;
        v29 = 134219520;
        clockIdentifier = clockIdentifier2;
        v31 = 2048;
        v32 = var0;
        v33 = 2048;
        v34 = var1;
        v35 = 2048;
        v36 = var1;
        v37 = 2048;
        v38 = v24;
        v39 = 2048;
        v40 = v27;
        v41 = 2048;
        v42 = mach_absolute_time();
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx): Trying to convert from a gPTP time %llx.%016llx (%llu) that would result in a negative mach_absolute time %llu %llu %llu\n", &v29, 0x48u);
      }
    }
  }

  else
  {
    v10 = v13->timeSyncTime + scaledInterval(var1 - lo, v13->inverseCumulativeScaledRate);
  }

  if (used)
  {
    *used = v13->grandmasterID;
  }

  if (number)
  {
    localPortNumber = v13->localPortNumber;
    goto LABEL_32;
  }

  return v10;
}

- (void)_getInitialSyncInfo
{
  v34 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v17 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v13 = 0;
  v14 = 0;
  v12 = 0;
  [(_TSF_TSDKernelClock *)self->_gPTPClock lockState];
  gPTPClock = self->_gPTPClock;
  v11 = 0;
  v4 = [_TSF_TSDgPTPClock getSyncInfoWithSyncInfoValid:"getSyncInfoWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:error:" syncFlags:&v14 timeSyncTime:&v13 domainTimeHi:&v12 domainTimeLo:&v11 cumulativeScaledRate:? inverseCumulativeScaledRate:? grandmasterID:? localPortNumber:? error:?];
  v5 = v11;
  gptpPath = [(_TSF_TSDgPTPClock *)self->_gPTPClock gptpPath];
  if ((v4 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v22 = 136316418;
      v23 = "success == YES";
      v24 = 2048;
      v25 = 0;
      v26 = 2048;
      v27 = 0;
      v28 = 2080;
      v29 = "";
      v30 = 2080;
      v31 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/DC/TSDCgPTPClock.mm";
      v32 = 1024;
      v33 = 1070;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v22, 0x3Au);
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 description];
      v9 = v8;
      -[TSDCTranslationClock getInitialSyncInfo].cold.1([v8 UTF8String], v22, v8);
    }

    v17 = -1;
    v18 = -1;
    v15 = 1;
    v16 = -1;
    v14 = 1;
    v13 = -1;
    v12 = -1;
    v19 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    *buf = 134217984;
    v21 = clockIdentifier;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) _getInitialSyncInfo: response", buf, 0xCu);
  }

  LOWORD(v10) = v12;
  [TSDCgPTPClock updateWithSyncInfoValid:"updateWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:" syncFlags:v14 timeSyncTime:v13 domainTimeHi:v10 domainTimeLo:? cumulativeScaledRate:? inverseCumulativeScaledRate:? grandmasterID:? localPortNumber:?];
  [TSDCgPTPClock updateGrandmasterIdentity:"updateGrandmasterIdentity:andgPTPPath:" andgPTPPath:?];
  [(TSDCgPTPClock *)self updateLockState:?];
}

- (void)didBeginClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  v17 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218496;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v13 = 2048;
    dCopy = d;
    v15 = 1024;
    v16 = portCopy;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) didBeginClockGrandmasterChangeWithGrandmasterID:0x%016llx localPort:%hu", &v11, 0x1Cu);
  }

  client = [(TSDCKernelClock *)self client];
  [client didBeginClockGrandmasterChange];

  client2 = [(TSDCKernelClock *)self client];
  [client2 didBeginClockGrandmasterChangeWithGrandmasterID:? localPort:?];
}

- (void)didEndClockGrandmasterChangeWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  v17 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218496;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v13 = 2048;
    dCopy = d;
    v15 = 1024;
    v16 = portCopy;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) didEndClockGrandmasterChangeWithGrandmasterID:0x%016llx localPort:%hu", &v11, 0x1Cu);
  }

  client = [(TSDCKernelClock *)self client];
  [client didEndClockGrandmasterChange];

  client2 = [(TSDCKernelClock *)self client];
  [client2 didEndClockGrandmasterChangeWithGrandmasterID:? localPort:?];
}

- (void)didChangeLocalPortWithGrandmasterID:(unint64_t)d localPort:(unsigned __int16)port forClock:(id)clock
{
  portCopy = port;
  v16 = *MEMORY[0x277D85DE8];
  clockCopy = clock;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218496;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v12 = 2048;
    dCopy = d;
    v14 = 1024;
    v15 = portCopy;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) didChangeLocalPortWithGrandmasterID:0x%016llx localPort:%hu", &v10, 0x1Cu);
  }

  client = [(TSDCKernelClock *)self client];
  [client didChangeLocalPortWithGrandmasterID:? localPort:?];
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
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) updateLockState:%d", &v5, 0x12u);
  }

  os_unfair_lock_lock([(TSDCKernelClock *)self getUpdateLock]);
  [(TSDCKernelClock *)self setInternalLockState:?];
  if ([(TSDCKernelClock *)self internalLockState]== 2)
  {
    [(TSDCKernelClock *)self validIndex];
  }

  os_unfair_lock_unlock([(TSDCKernelClock *)self getUpdateLock]);
  [(TSDCKernelClock *)self postLockStateChange:?];
}

- (void)updateWithSyncInfoValid:(BOOL)valid syncFlags:(unsigned __int8)flags timeSyncTime:(unint64_t)time domainTimeHi:(unint64_t)hi domainTimeLo:(unint64_t)lo cumulativeScaledRate:(unint64_t)rate inverseCumulativeScaledRate:(unint64_t)scaledRate grandmasterID:(unint64_t)self0 localPortNumber:(unsigned __int16)self1
{
  lockState = [(TSDCKernelClock *)self lockState];
  v25 = 0;
  v26 = 0;
  if (time == -1)
  {
    [TSDCgPTPClock updateWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:];
  }

  else if (hi == -1)
  {
    [TSDCgPTPClock updateWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:];
  }

  else
  {
    internalLockState = lockState;
    os_unfair_lock_lock([(TSDCKernelClock *)self getUpdateLock]);
    v19 = &self->_timeInfo[(([(TSDCKernelClock *)self validIndex]+ 1) & 7)];
    v19->syncInfoValid = 1;
    v19->syncFlags = flags;
    v19->timeSyncTime = time;
    v19->domainTime.lo = lo;
    v19->domainTime.hi = hi;
    v19->cumulativeScaledRate = rate;
    v19->inverseCumulativeScaledRate = scaledRate;
    v19->grandmasterID = d;
    v19->localPortNumber = number;
    [(TSDCKernelClock *)self setValidIndex:?];
    [TSDCgPTPClock getMachAbsoluteRateRatioNumerator:"getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:" denominator:? machAnchor:? andDomainAnchor:? withError:?];
    mach_timebase_info(&info);
    v25 /= info.denom;
    v26 /= info.numer;
    v20 = v26 / v25;
    propertyUpdateQueue = [(TSDCKernelClock *)self propertyUpdateQueue];

    if (propertyUpdateQueue)
    {
      propertyUpdateQueue2 = [(TSDCKernelClock *)self propertyUpdateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __169__TSDCgPTPClock_updateWithSyncInfoValid_syncFlags_timeSyncTime_domainTimeHi_domainTimeLo_cumulativeScaledRate_inverseCumulativeScaledRate_grandmasterID_localPortNumber___block_invoke;
      block[3] = &unk_279DBD9D8;
      block[4] = self;
      *&block[5] = v20;
      dispatch_async(propertyUpdateQueue2, block);
    }

    else
    {
      [(TSDCKernelClock *)self setHostRateRatio:?];
    }

    if ([(TSDCKernelClock *)self internalLockState]== 2 && internalLockState != 2)
    {
      internalLockState = [(TSDCKernelClock *)self internalLockState];
    }

    os_unfair_lock_unlock([(TSDCKernelClock *)self getUpdateLock]);
    if (internalLockState != [(TSDCKernelClock *)self lockState])
    {
      [(TSDCKernelClock *)self postLockStateChange:?];
    }
  }
}

void __169__TSDCgPTPClock_updateWithSyncInfoValid_syncFlags_timeSyncTime_domainTimeHi_domainTimeLo_cumulativeScaledRate_inverseCumulativeScaledRate_grandmasterID_localPortNumber___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setHostRateRatio:?];

  objc_autoreleasePoolPop(v2);
}

- (void)updateGrandmasterIdentity:(unint64_t)identity andgPTPPath:(id)path
{
  v17 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    clockIdentifier = [(TSDCKernelClock *)self clockIdentifier];
    v15 = 2048;
    identityCopy = identity;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCgPTPClock(0x%016llx) updateGrandmasterIdentity:0x%016llx andgPTPPath:...", buf, 0x16u);
  }

  propertyUpdateQueue = [(TSDCKernelClock *)self propertyUpdateQueue];
  v8 = propertyUpdateQueue == 0;

  if (v8)
  {
    [(TSDCgPTPClock *)self setGrandmasterIdentity:?];
    [(TSDCgPTPClock *)self setGptpPath:?];
  }

  else
  {
    propertyUpdateQueue2 = [(TSDCKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__TSDCgPTPClock_updateGrandmasterIdentity_andgPTPPath___block_invoke;
    block[3] = &unk_279DBDA00;
    block[4] = self;
    identityCopy2 = identity;
    v11 = pathCopy;
    dispatch_async(propertyUpdateQueue2, block);
  }
}

void __55__TSDCgPTPClock_updateGrandmasterIdentity_andgPTPPath___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setGrandmasterIdentity:?];
  [*(a1 + 32) setGptpPath:?];

  objc_autoreleasePoolPop(v2);
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

- (void)convertFrom32BitASTime:toMachAbsoluteTime:withCount:.cold.1()
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

- (void)convertFrom32BitASTime:toMachAbsoluteTime:withCount:.cold.2()
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

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.1()
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

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.2()
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

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.3()
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

- (void)convertFrom32BitASToTimeSyncTime:.cold.1()
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

- (void)convertFrom32BitASTime:toTimeSyncTime:withCount:.cold.1()
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

- (void)convertFrom32BitASTime:toTimeSyncTime:withCount:.cold.2()
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

- (void)convertFromDomainTimeToTimeSyncTime:grandmasterUsed:portNumber:.cold.1()
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

- (void)getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)updateWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)updateWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:.cold.2()
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