@interface TSDCUserFilteredClock
- (BOOL)addTimestampWithMachAbsolute:(unint64_t)absolute andDomainTime:(unint64_t)time error:(id *)error;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (BOOL)waitTimeSyncTimeUpdate;
- (TSDCUserFilteredClock)initWithKernelClock:(id)clock;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time;
@end

@implementation TSDCUserFilteredClock

- (TSDCUserFilteredClock)initWithKernelClock:(id)clock
{
  clockCopy = clock;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8.receiver = self;
    v8.super_class = TSDCUserFilteredClock;
    v6 = [(TSDCKernelClock *)&v8 initWithKernelClock:clockCopy];
    self = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_userFilteredClock, clock);
    }

    self->_lastValidIndex = -1;
    self->_needTimeSyncTimeUpdate = 0;
  }

  return self;
}

- (BOOL)waitTimeSyncTimeUpdate
{
  v9 = *MEMORY[0x277D85DE8];
  if (!self->_needTimeSyncTimeUpdate)
  {
    return 1;
  }

  v3 = (self->_lastValidIndex + 1) & 7;
  if ([(TSDCKernelClock *)self validIndex]== v3)
  {
    v4 = 0;
    v5 = 1;
LABEL_8:
    if (v4 < 2)
    {
      return 1;
    }
  }

  else
  {
    v6 = -1;
    while (1)
    {
      usleep(0x2710u);
      if (v6 == 98)
      {
        break;
      }

      ++v6;
      if ([(TSDCKernelClock *)self validIndex]== v3)
      {
        v5 = v6 < 0x63;
        v4 = v6 + 1;
        goto LABEL_8;
      }
    }

    v5 = 0;
    v4 = 100;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = 10000 * v4;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "waitTimeSyncTimeUpdate delayed %u us\n", v8, 8u);
  }

  return v5;
}

- (BOOL)addTimestampWithMachAbsolute:(unint64_t)absolute andDomainTime:(unint64_t)time error:(id *)error
{
  self->_needTimeSyncTimeUpdate = 1;
  self->_lastValidIndex = [(TSDCKernelClock *)self validIndex];
  userFilteredClock = self->_userFilteredClock;

  return [_TSF_TSDUserFilteredClock addTimestampWithMachAbsolute:"addTimestampWithMachAbsolute:andDomainTime:error:" andDomainTime:? error:?];
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time
{
  v19 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = getSignpostId;
    if (os_signpost_enabled(getOsLog))
    {
      v13 = 136315138;
      v14 = "[TSDCUserFilteredClock convertFromMachAbsoluteToDomainTime:]";
      _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, &unk_26F0DFDB1, "%s", &v13, 0xCu);
    }
  }

  v8 = [(TSDCKernelClock *)self convertFromTimeSyncToDomainTime:?];
  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = getSignpostId2;
    if (os_signpost_enabled(getOsLog2))
    {
      v13 = 136315650;
      v14 = "[TSDCUserFilteredClock convertFromMachAbsoluteToDomainTime:]";
      v15 = 2048;
      timeCopy = time;
      v17 = 2048;
      v18 = v8;
      _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, v11, &unk_26F0DFDB1, "%s machAbsoluteTime=%llu domainTime=%llu", &v13, 0x20u);
    }
  }

  return v8;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time
{
  v19 = *MEMORY[0x277D85DE8];
  getOsLog = [(TSDCKernelClock *)self getOsLog];
  getSignpostId = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = getSignpostId;
    if (os_signpost_enabled(getOsLog))
    {
      v13 = 136315138;
      v14 = "[TSDCUserFilteredClock convertFromDomainToMachAbsoluteTime:]";
      _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog, OS_SIGNPOST_INTERVAL_BEGIN, v7, &unk_26F0DFDB1, "%s", &v13, 0xCu);
    }
  }

  v8 = [(TSDCKernelClock *)self convertFromDomainToTimeSyncTime:?];
  getOsLog2 = [(TSDCKernelClock *)self getOsLog];
  getSignpostId2 = [(TSDCKernelClock *)self getSignpostId];
  if (getSignpostId2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v11 = getSignpostId2;
    if (os_signpost_enabled(getOsLog2))
    {
      v13 = 136315650;
      v14 = "[TSDCUserFilteredClock convertFromDomainToMachAbsoluteTime:]";
      v15 = 2048;
      timeCopy = time;
      v17 = 2048;
      v18 = v8;
      _os_signpost_emit_with_name_impl(&dword_26F080000, getOsLog2, OS_SIGNPOST_INTERVAL_END, v11, &unk_26F0DFDB1, "%s domainTime=%llu machAbsoluteTime=%llu", &v13, 0x20u);
    }
  }

  return v8;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  v7 = [TSDCKernelClock getTimeSyncTimeRateRatioNumerator:"getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:" denominator:? timeSyncAnchor:? andDomainAnchor:? withError:?];
  if (!v7)
  {
    [TSDCUserFilteredClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:];
  }

  return v7;
}

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:.cold.1()
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = 136316418;
    v1 = "[self getTimeSyncTimeRateRatioNumerator:numerator denominator:denominator timeSyncAnchor:machAnchor andDomainAnchor:domainAnchor withError:error]";
    v2 = 2048;
    v3 = 0;
    v4 = 2048;
    v5 = 0;
    v6 = 2080;
    v7 = "";
    v8 = 2080;
    v9 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/TimeSync/DC/TSDCUserFilteredClock.m";
    v10 = 1024;
    v11 = 141;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", &v0, 0x3Au);
  }
}

@end