@interface _TSF_TSDgPTPClock
+ (id)availablegPTPClockIdentifiers;
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (BOOL)addLinkLayerPortOnInterfaceNamed:(id)named allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addReverseSyncOnInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner syncInterval:(unsigned int)interval error:(id *)error;
- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error;
- (BOOL)convertFrom32BitASTime:(unsigned int *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFrom32BitASTime:(unsigned int *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error;
- (BOOL)getSyncInfoWithSyncInfoValid:(BOOL *)valid syncFlags:(char *)flags timeSyncTime:(unint64_t *)time domainTimeHi:(unint64_t *)hi domainTimeLo:(unint64_t *)lo cumulativeScaledRate:(unint64_t *)rate inverseCumulativeScaledRate:(unint64_t *)scaledRate grandmasterID:(unint64_t *)self0 localPortNumber:(unsigned __int16 *)self1 error:(id *)self2;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error;
- (BOOL)removeLinkLayerPortFromInterfaceNamed:(id)named error:(id *)error;
- (BOOL)removeReverseSyncFromInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner error:(id *)error;
- (BOOL)removeUnicastLinkLayerEtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error;
- (BOOL)removeUnicastLinkLayerPtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error;
- (BOOL)removeUnicastUDPv4EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error;
- (BOOL)removeUnicastUDPv4PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error;
- (BOOL)removeUnicastUDPv6EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error;
- (BOOL)removeUnicastUDPv6PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error;
- (BOOL)setPreferredGM:(BOOL)m error:(id *)error;
- (BOOL)updateNtpAnchorOffset:(int64_t)offset isLocalClockSourceFromNTP:(BOOL)p error:(id *)error;
- (NSArray)ports;
- (_TSF_TSDgPTPClock)initWithClockIdentifier:(unint64_t)identifier pid:(int)pid;
- (id)_gptpPath;
- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time;
- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time;
- (id)getMetrics;
- (id)getMetricsWithDelta:(id)delta;
- (id)portWithPortNumber:(unsigned __int16)number;
- (unint64_t)_grandmasterIdentity;
- (unint64_t)clockIdentity;
- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)time;
- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time;
- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)convertFromTimeSyncTimeToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number;
- (unint64_t)machAbsoluteFromgPTPTime:(id)time;
- (unint64_t)timeSyncTimeFromgPTPTime:(id)time;
- (unsigned)clockAccuracy;
- (unsigned)clockClass;
- (unsigned)clockPriority1;
- (unsigned)clockPriority2;
- (void)_handleInterestNotification:(unsigned int)notification withArgument:(void *)argument;
- (void)_handleNotification:(unsigned int)notification withArg1:(unint64_t)arg1 andArg2:(unint64_t)arg2;
- (void)_handleRefreshConnection;
- (void)_refreshGrandmasterIdentityOnNotificationQueue;
- (void)addImplClock:(id)clock;
- (void)dealloc;
- (void)removeImplClock:(id)clock;
@end

@implementation _TSF_TSDgPTPClock

- (id)_gptpPath
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEA60] arrayWithArray:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_grandmasterIdentity
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

+ (id)availablegPTPClockIdentifiers
{
  array = [MEMORY[0x277CBEB18] array];
  v3 = MEMORY[0x277D1AE20];
  v4 = [MEMORY[0x277D1AE20] serviceMatching:?];
  v5 = [v3 matchingServices:? error:?];

  v6 = array;
  [v5 enumerateWithBlock:?];

  return v6;
}

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v3;
}

- (_TSF_TSDgPTPClock)initWithClockIdentifier:(unint64_t)identifier pid:(int)pid
{
  v4 = *&pid;
  weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  implClocks = self->_implClocks;
  self->_implClocks = weakObjectsPointerArray;

  self->_implClocksLock._os_unfair_lock_opaque = 0;
  v14.receiver = self;
  v14.super_class = _TSF_TSDgPTPClock;
  v9 = [(_TSF_TSDKernelClock *)&v14 initWithClockIdentifier:identifier pid:v4];
  v10 = v9;
  if (v9)
  {
    _gptpPath = [(_TSF_TSDgPTPClock *)v9 _gptpPath];
    gptpPath = v10->_gptpPath;
    v10->_gptpPath = _gptpPath;

    v10->_grandmasterIdentity = [(_TSF_TSDgPTPClock *)v10 _grandmasterIdentity];
  }

  return v10;
}

- (unint64_t)convertFrom32BitASToMachAbsoluteTime:(unsigned int)time
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = -1;
  timeCopy = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDgPTPClock convertFrom32BitASToMachAbsoluteTime:];
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

- (BOOL)convertFrom32BitASTime:(unsigned int *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count
{
  countCopy = count;
  v39[12] = *MEMORY[0x277D85DE8];
  if (count < 0xC)
  {
    v18 = 0;
    v19 = 1;
    if (!count)
    {
      return v19 & 1;
    }

    goto LABEL_13;
  }

  v8 = 0;
  v24 = 12 * ((count - 12) / 0xC);
  v25 = 1;
  timeCopy = time;
  do
  {
    v10 = 0;
    v26 = 12;
    v11 = timeCopy;
    do
    {
      v12 = *v11;
      v11 += 4;
      *&v13 = v12;
      *(&v13 + 1) = DWORD1(v12);
      v14 = v13;
      *&v13 = DWORD2(v12);
      *(&v13 + 1) = HIDWORD(v12);
      v15 = &v39[v10];
      *v15 = v14;
      v15[1] = v13;
      v10 += 4;
    }

    while (v10 != 12);
    connection = [(_TSF_TSDKernelClock *)self connection];
    v17 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v17 & 1) == 0)
    {
      v25 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v28 = "callResult == YES";
        v29 = 2048;
        v30 = 0;
        v31 = 2048;
        v32 = 0;
        v33 = 2080;
        v34 = "";
        v35 = 2080;
        v36 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/clocksyncd/IOKit/TSDgPTPClock.m";
        v37 = 1024;
        v38 = 164;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
        v25 = 0;
      }
    }

    countCopy -= 12;
    v8 += 12;
    timeCopy += 12;
  }

  while (countCopy > 0xB);
  v19 = v25;
  v18 = v24 + 12;
  if (countCopy)
  {
LABEL_13:
    v20 = 0;
    *buf = countCopy;
    do
    {
      v39[v20] = time[v18 + v20];
      ++v20;
    }

    while (countCopy != v20);
    connection2 = [(_TSF_TSDKernelClock *)self connection];
    v22 = [connection2 callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v22 & 1) == 0)
    {
      [_TSF_TSDgPTPClock convertFrom32BitASTime:? toMachAbsoluteTime:? withCount:?];
      v19 = v26;
    }
  }

  return v19 & 1;
}

- (id)gPTPTimeFromMachAbsoluteTime:(unint64_t)time
{
  v11 = *MEMORY[0x277D85DE8];
  memset(&v8[1], 255, 24);
  v8[4] = 0;
  v9 = 0;
  timeCopy = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v4)
  {
    LOBYTE(v7) = (v9 & 4) != 0;
    v5 = [TSgPTPTime initWithSeconds:"initWithSeconds:nanoseconds:onGrandmaster:withLocalPortNumber:ptpTimescale:timeTraceable:frequencyTraceable:" nanoseconds:v7 onGrandmaster:? withLocalPortNumber:? ptpTimescale:? timeTraceable:? frequencyTraceable:?];
  }

  else
  {
    [_TSF_TSDgPTPClock gPTPTimeFromMachAbsoluteTime:v8];
    v5 = v8[0];
  }

  return v5;
}

- (unint64_t)machAbsoluteFromgPTPTime:(id)time
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = -1;
  v9 = 1;
  timeCopy = time;
  seconds = [timeCopy seconds];
  nanoseconds = [timeCopy nanoseconds];

  v12 = nanoseconds;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v7 & 1) == 0)
  {
    [_TSF_TSDgPTPClock machAbsoluteFromgPTPTime:];
  }

  if (v7)
  {
    return v10;
  }

  else
  {
    return -1;
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromMachAbsoluteTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v15 = -1;
  v16 = -1;
  v17 = 0xFFFFLL;
  v11 = 4;
  timeCopy = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v8)
  {
    v9 = v14;
    v10 = v15;
    if (used)
    {
      *used = v16;
    }

    if (number)
    {
      *number = v17;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromMachAbsoluteTo128BitgPTPTime:&v12 grandmasterUsed:&v13 portNumber:?];
    v10 = v12;
    v9 = v13;
  }

  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToMachAbsoluteTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  timeCopy = time;
  v10 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFrom128BitgPTPTimeToMachAbsoluteTime:grandmasterUsed:portNumber:];
    return v11;
  }

  return result;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = -1;
  v13 = -1;
  v14 = 0;
  timeCopy = time;
  v10 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:];
    return v11;
  }

  return result;
}

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  timeCopy = time;
  v10 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:];
    return v11;
  }

  return result;
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  v18 = vdupq_n_s64(1uLL);
  connection = [(_TSF_TSDKernelClock *)self connection];
  v16 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v16)
  {
    if (numerator)
    {
      *numerator = v18.i64[0];
    }

    if (denominator)
    {
      *denominator = v18.u64[1];
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
  }

  else
  {
    [_TSF_TSDgPTPClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
  }

  return v16;
}

- (unint64_t)convertFrom32BitASToTimeSyncTime:(unsigned int)time
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = -1;
  timeCopy = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDgPTPClock convertFrom32BitASToTimeSyncTime:];
  }

  if (v4)
  {
    return v7;
  }

  else
  {
    return -1;
  }
}

- (BOOL)convertFrom32BitASTime:(unsigned int *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count
{
  countCopy = count;
  v39[12] = *MEMORY[0x277D85DE8];
  if (count < 0xC)
  {
    v18 = 0;
    v19 = 1;
    if (!count)
    {
      return v19 & 1;
    }

    goto LABEL_13;
  }

  v8 = 0;
  v24 = 12 * ((count - 12) / 0xC);
  v25 = 1;
  timeCopy = time;
  do
  {
    v10 = 0;
    v26 = 12;
    v11 = timeCopy;
    do
    {
      v12 = *v11;
      v11 += 4;
      *&v13 = v12;
      *(&v13 + 1) = DWORD1(v12);
      v14 = v13;
      *&v13 = DWORD2(v12);
      *(&v13 + 1) = HIDWORD(v12);
      v15 = &v39[v10];
      *v15 = v14;
      v15[1] = v13;
      v10 += 4;
    }

    while (v10 != 12);
    connection = [(_TSF_TSDKernelClock *)self connection];
    v17 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v17 & 1) == 0)
    {
      v25 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316418;
        v28 = "callResult == YES";
        v29 = 2048;
        v30 = 0;
        v31 = 2048;
        v32 = 0;
        v33 = 2080;
        v34 = "";
        v35 = 2080;
        v36 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/clocksyncd/IOKit/TSDgPTPClock.m";
        v37 = 1024;
        v38 = 448;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
        v25 = 0;
      }
    }

    countCopy -= 12;
    v8 += 12;
    timeCopy += 12;
  }

  while (countCopy > 0xB);
  v19 = v25;
  v18 = v24 + 12;
  if (countCopy)
  {
LABEL_13:
    v20 = 0;
    *buf = countCopy;
    do
    {
      v39[v20] = time[v18 + v20];
      ++v20;
    }

    while (countCopy != v20);
    connection2 = [(_TSF_TSDKernelClock *)self connection];
    v22 = [connection2 callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v22 & 1) == 0)
    {
      [_TSF_TSDgPTPClock convertFrom32BitASTime:? toTimeSyncTime:? withCount:?];
      v19 = v26;
    }
  }

  return v19 & 1;
}

- (id)gPTPTimeFromTimeSyncTime:(unint64_t)time
{
  v11 = *MEMORY[0x277D85DE8];
  memset(&v8[1], 255, 24);
  v8[4] = 0;
  v9 = 0;
  timeCopy = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v4)
  {
    LOBYTE(v7) = (v9 & 4) != 0;
    v5 = [TSgPTPTime initWithSeconds:"initWithSeconds:nanoseconds:onGrandmaster:withLocalPortNumber:ptpTimescale:timeTraceable:frequencyTraceable:" nanoseconds:v7 onGrandmaster:? withLocalPortNumber:? ptpTimescale:? timeTraceable:? frequencyTraceable:?];
  }

  else
  {
    [_TSF_TSDgPTPClock gPTPTimeFromTimeSyncTime:v8];
    v5 = v8[0];
  }

  return v5;
}

- (unint64_t)timeSyncTimeFromgPTPTime:(id)time
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = -1;
  v9 = 1;
  timeCopy = time;
  seconds = [timeCopy seconds];
  nanoseconds = [timeCopy nanoseconds];

  v12 = nanoseconds;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v7 & 1) == 0)
  {
    [_TSF_TSDgPTPClock timeSyncTimeFromgPTPTime:];
  }

  if (v7)
  {
    return v10;
  }

  else
  {
    return -1;
  }
}

- ($7DEDF3842AEFB7F1E6DF5AF62E424A02)convertFromTimeSyncTimeTo128BitgPTPTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = -1;
  v15 = -1;
  v16 = -1;
  v17 = 0xFFFFLL;
  v11 = 4;
  timeCopy = time;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v8)
  {
    v9 = v14;
    v10 = v15;
    if (used)
    {
      *used = v16;
    }

    if (number)
    {
      *number = v17;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromTimeSyncTimeTo128BitgPTPTime:&v12 grandmasterUsed:&v13 portNumber:?];
    v10 = v12;
    v9 = v13;
  }

  result.var1 = v10;
  result.var0 = v9;
  return result;
}

- (unint64_t)convertFrom128BitgPTPTimeToTimeSyncTime:(id)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  timeCopy = time;
  v10 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFrom128BitgPTPTimeToTimeSyncTime:grandmasterUsed:portNumber:];
    return v11;
  }

  return result;
}

- (unint64_t)convertFromTimeSyncTimeToDomainTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = -1;
  v13 = -1;
  v14 = 0;
  timeCopy = time;
  v10 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromTimeSyncTimeToDomainTime:grandmasterUsed:portNumber:];
    return v11;
  }

  return result;
}

- (unint64_t)convertFromDomainTimeToTimeSyncTime:(unint64_t)time grandmasterUsed:(unint64_t *)used portNumber:(unsigned __int16 *)number
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = -1;
  v13 = -1;
  v14 = 0xFFFFLL;
  timeCopy = time;
  v10 = 3;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v8 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v8)
  {
    result = v12;
    if (used)
    {
      *used = v13;
    }

    if (number)
    {
      *number = v14;
    }
  }

  else
  {
    [_TSF_TSDgPTPClock convertFromDomainTimeToTimeSyncTime:grandmasterUsed:portNumber:];
    return v11;
  }

  return result;
}

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor forGrandmasterIdentity:(unint64_t *)identity portNumber:(unsigned __int16 *)number withError:(id *)error
{
  v18 = vdupq_n_s64(1uLL);
  connection = [(_TSF_TSDKernelClock *)self connection];
  v16 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v16)
  {
    if (numerator)
    {
      *numerator = v18.i64[0];
    }

    if (denominator)
    {
      *denominator = v18.u64[1];
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
  }

  else
  {
    [_TSF_TSDgPTPClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:];
  }

  return v16;
}

- (void)_handleInterestNotification:(unsigned int)notification withArgument:(void *)argument
{
  v21 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = _TSF_TSDgPTPClock;
  [(_TSF_TSDKernelClock *)&v20 _handleInterestNotification:*&notification withArgument:argument];
  if (notification == -536870608)
  {
    propertyUpdateQueue = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
    if (!propertyUpdateQueue)
    {
      propertyUpdateQueue = [(_TSF_TSDKernelClock *)self notificationQueue];
    }

    _grandmasterIdentity = [(_TSF_TSDgPTPClock *)self _grandmasterIdentity];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62___TSF_TSDgPTPClock__handleInterestNotification_withArgument___block_invoke;
    block[3] = &unk_279DBD7F8;
    block[4] = self;
    block[5] = _grandmasterIdentity;
    dispatch_async(propertyUpdateQueue, block);
    _gptpPath = [(_TSF_TSDgPTPClock *)self _gptpPath];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62___TSF_TSDgPTPClock__handleInterestNotification_withArgument___block_invoke_2;
    v16[3] = &unk_279DBD738;
    v9 = _gptpPath;
    v17 = v9;
    selfCopy = self;
    dispatch_async(propertyUpdateQueue, v16);
    os_unfair_lock_lock(&self->_implClocksLock);
    [(NSPointerArray *)self->_implClocks compact];
    v10 = self->_implClocks;
    v11 = [NSPointerArray countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v11)
    {
      v12 = v11;
      v13 = MEMORY[0];
      do
      {
        for (i = 0; i != v12; i = (i + 1))
        {
          if (MEMORY[0] != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(8 * i);
          if ([v15 conformsToProtocol:?])
          {
            [v15 updateGrandmasterIdentity:? andgPTPPath:?];
          }
        }

        v12 = [NSPointerArray countByEnumeratingWithState:v10 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v12);
    }

    os_unfair_lock_unlock(&self->_implClocksLock);
  }
}

- (void)_refreshGrandmasterIdentityOnNotificationQueue
{
  v21 = *MEMORY[0x277D85DE8];
  _grandmasterIdentity = [(_TSF_TSDgPTPClock *)self _grandmasterIdentity];
  _gptpPath = [(_TSF_TSDgPTPClock *)self _gptpPath];
  propertyUpdateQueue = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  if (!propertyUpdateQueue || (v6 = propertyUpdateQueue, [(_TSF_TSDKernelClock *)self propertyUpdateQueue], v7 = objc_claimAutoreleasedReturnValue(), [(_TSF_TSDKernelClock *)self notificationQueue], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v6, v7 == v8))
  {
    if (_grandmasterIdentity != [(_TSF_TSDgPTPClock *)self grandmasterIdentity])
    {
      [(_TSF_TSDgPTPClock *)self setGrandmasterIdentity:?];
    }

    gptpPath = [(_TSF_TSDgPTPClock *)self gptpPath];
    v11 = [_gptpPath isEqual:?];

    if ((v11 & 1) == 0)
    {
      [(_TSF_TSDgPTPClock *)self setGptpPath:?];
    }
  }

  else
  {
    propertyUpdateQueue2 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67___TSF_TSDgPTPClock__refreshGrandmasterIdentityOnNotificationQueue__block_invoke;
    block[3] = &unk_279DBD8C0;
    v20 = _grandmasterIdentity;
    block[4] = self;
    v19 = _gptpPath;
    dispatch_sync(propertyUpdateQueue2, block);
  }

  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v12 = self->_implClocks;
  v13 = [NSPointerArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v13)
  {
    v14 = v13;
    v15 = MEMORY[0];
    do
    {
      for (i = 0; i != v14; i = (i + 1))
      {
        if (MEMORY[0] != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(8 * i);
        if ([v17 conformsToProtocol:?])
        {
          [v17 updateGrandmasterIdentity:? andgPTPPath:?];
        }
      }

      v14 = [NSPointerArray countByEnumeratingWithState:v12 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v14);
  }

  os_unfair_lock_unlock(&self->_implClocksLock);
}

- (void)_handleRefreshConnection
{
  v3.receiver = self;
  v3.super_class = _TSF_TSDgPTPClock;
  [(_TSF_TSDKernelClock *)&v3 _handleRefreshConnection];
  [(_TSF_TSDgPTPClock *)self _refreshGrandmasterIdentityOnNotificationQueue];
}

- (void)_handleNotification:(unsigned int)notification withArg1:(unint64_t)arg1 andArg2:(unint64_t)arg2
{
  v7 = *&notification;
  if (notification == 2004)
  {
    [(_TSF_TSDgPTPClock *)self _refreshGrandmasterIdentityOnNotificationQueue];
  }

  v9.receiver = self;
  v9.super_class = _TSF_TSDgPTPClock;
  [(_TSF_TSDKernelClock *)&v9 _handleNotification:v7 withArg1:arg1 andArg2:arg2];
}

- (unint64_t)clockIdentity
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unsigned)clockPriority1
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)clockPriority2
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)clockClass
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (unsigned)clockAccuracy
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedCharValue = [v3 unsignedCharValue];
  }

  else
  {
    unsignedCharValue = 0;
  }

  return unsignedCharValue;
}

- (BOOL)addLinkLayerPortOnInterfaceNamed:(id)named allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v13 = 1;
  v8 = [named dataUsingEncoding:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v8 bytes];
  [v8 length];
  v10 = [connection callMethodWithSelector:&v13 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v10 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addLinkLayerPortOnInterfaceNamed:number allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v11 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v11 = v14;
LABEL_4:
    *number = v11;
  }

LABEL_5:

  return v10;
}

- (BOOL)removeLinkLayerPortFromInterfaceNamed:(id)named error:(id *)error
{
  v5 = [named dataUsingEncoding:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v5 bytes];
  [v5 length];
  v7 = [connection callMethodWithSelector:? structInput:? structInputSize:? error:?];

  if ((v7 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeLinkLayerPortFromInterfaceNamed:error:];
  }

  return v7;
}

- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17[0] = 1;
  v17[1] = address;
  v9 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v11 = [v9 dataWithBytes:? length:?];
  v12 = [namedCopy dataUsingEncoding:?];

  [v11 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v11 bytes];
  [v11 length];
  v14 = [connection callMethodWithSelector:v17 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv4PtPPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastUDPv4PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error
{
  v6 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v8 = [v6 dataWithBytes:? length:?];
  v9 = [namedCopy dataUsingEncoding:?];

  [v8 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v8 bytes];
  [v8 length];
  v11 = [connection callMethodWithSelector:? structInput:? structInputSize:? error:?];

  if ((v11 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv4PtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v11;
}

- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 1;
  v9 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v11 = [v9 dataWithBytes:? length:?];
  v12 = [namedCopy dataUsingEncoding:?];

  [v11 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v11 bytes];
  [v11 length];
  v14 = [connection callMethodWithSelector:&v17 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv6PtPPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastUDPv6PtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  v6 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v8 = [v6 dataWithBytes:? length:?];
  v9 = [namedCopy dataUsingEncoding:?];

  [v8 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v8 bytes];
  [v8 length];
  v11 = [connection callMethodWithSelector:? structInput:? structInputSize:? error:?];

  if ((v11 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv6PtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v11;
}

- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 1;
  v9 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v11 = [v9 dataWithBytes:? length:?];
  v12 = [namedCopy dataUsingEncoding:?];

  [v11 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v11 bytes];
  [v11 length];
  v14 = [connection callMethodWithSelector:&v17 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastLinkLayerPtPPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastLinkLayerPtPPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  v6 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v8 = [v6 dataWithBytes:? length:?];
  v9 = [namedCopy dataUsingEncoding:?];

  [v8 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v8 bytes];
  [v8 length];
  v11 = [connection callMethodWithSelector:? structInput:? structInputSize:? error:?];

  if ((v11 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastLinkLayerPtPPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v11;
}

- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17[0] = 1;
  v17[1] = address;
  v9 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v11 = [v9 dataWithBytes:? length:?];
  v12 = [namedCopy dataUsingEncoding:?];

  [v11 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v11 bytes];
  [v11 length];
  v14 = [connection callMethodWithSelector:v17 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv4EtEPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastUDPv4EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(unsigned int)address error:(id *)error
{
  v6 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v8 = [v6 dataWithBytes:? length:?];
  v9 = [namedCopy dataUsingEncoding:?];

  [v8 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v8 bytes];
  [v8 length];
  v11 = [connection callMethodWithSelector:? structInput:? structInputSize:? error:?];

  if ((v11 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv4EtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v11;
}

- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 1;
  v9 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v11 = [v9 dataWithBytes:? length:?];
  v12 = [namedCopy dataUsingEncoding:?];

  [v11 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v11 bytes];
  [v11 length];
  v14 = [connection callMethodWithSelector:&v17 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastUDPv6EtEPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastUDPv6EtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  v6 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v8 = [v6 dataWithBytes:? length:?];
  v9 = [namedCopy dataUsingEncoding:?];

  [v8 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v8 bytes];
  [v8 length];
  v11 = [connection callMethodWithSelector:? structInput:? structInputSize:? error:?];

  if ((v11 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastUDPv6EtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v11;
}

- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(id)named withDestinationAddress:(const char *)address allocatedPortNumber:(unsigned __int16 *)number error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v17 = 1;
  v9 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v11 = [v9 dataWithBytes:? length:?];
  v12 = [namedCopy dataUsingEncoding:?];

  [v11 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v11 bytes];
  [v11 length];
  v14 = [connection callMethodWithSelector:&v17 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v14 & 1) == 0)
  {
    if ([_TSF_TSDgPTPClock addUnicastLinkLayerEtEPortOnInterfaceNamed:number withDestinationAddress:? allocatedPortNumber:? error:?])
    {
      goto LABEL_5;
    }

    v15 = -1;
    goto LABEL_4;
  }

  if (number)
  {
    v15 = v18;
LABEL_4:
    *number = v15;
  }

LABEL_5:

  return v14;
}

- (BOOL)removeUnicastLinkLayerEtEPortFromInterfaceNamed:(id)named withDestinationAddress:(const char *)address error:(id *)error
{
  v6 = MEMORY[0x277CBEB28];
  namedCopy = named;
  v8 = [v6 dataWithBytes:? length:?];
  v9 = [namedCopy dataUsingEncoding:?];

  [v8 appendData:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v8 bytes];
  [v8 length];
  v11 = [connection callMethodWithSelector:? structInput:? structInputSize:? error:?];

  if ((v11 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeUnicastLinkLayerEtEPortFromInterfaceNamed:withDestinationAddress:error:];
  }

  return v11;
}

- (BOOL)addReverseSyncOnInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner syncInterval:(unsigned int)interval error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  numnerCopy = numner;
  intervalCopy = interval;
  v12 = 0;
  v8 = [named dataUsingEncoding:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v8 bytes];
  [v8 length];
  v10 = [connection callMethodWithSelector:&v12 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v10 & 1) == 0)
  {
    [_TSF_TSDgPTPClock addReverseSyncOnInterfaceNamed:withDomainNumner:syncInterval:error:];
  }

  return v10;
}

- (BOOL)removeReverseSyncFromInterfaceNamed:(id)named withDomainNumner:(unsigned __int8)numner error:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  numnerCopy = numner;
  v11 = 0;
  v7 = [named dataUsingEncoding:?];
  connection = [(_TSF_TSDKernelClock *)self connection];
  [v7 bytes];
  [v7 length];
  v9 = [connection callMethodWithSelector:&v11 scalarInputs:error scalarInputCount:? structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v9 & 1) == 0)
  {
    [_TSF_TSDgPTPClock removeReverseSyncFromInterfaceNamed:withDomainNumner:error:];
  }

  return v9;
}

- (BOOL)getSyncInfoWithSyncInfoValid:(BOOL *)valid syncFlags:(char *)flags timeSyncTime:(unint64_t *)time domainTimeHi:(unint64_t *)hi domainTimeLo:(unint64_t *)lo cumulativeScaledRate:(unint64_t *)rate inverseCumulativeScaledRate:(unint64_t *)scaledRate grandmasterID:(unint64_t *)self0 localPortNumber:(unsigned __int16 *)self1 error:(id *)self2
{
  v21 = vdupq_n_s64(1uLL);
  connection = [(_TSF_TSDKernelClock *)self connection];
  v19 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v19)
  {
    if (!time)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDgPTPClock getSyncInfoWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:error:];
  if (time)
  {
LABEL_3:
    *time = -1;
  }

LABEL_4:
  if (hi)
  {
    *hi = -1;
  }

  if (lo)
  {
    *lo = -1;
  }

  if (rate)
  {
    *rate = v21.i64[0];
  }

  if (scaledRate)
  {
    *scaledRate = v21.u64[1];
  }

  if (d)
  {
    *d = -1;
  }

  if (valid)
  {
    *valid = 0;
  }

  if (flags)
  {
    *flags = 0;
  }

  if (number)
  {
    *number = -1;
  }

  return v19;
}

- (NSArray)ports
{
  array = [MEMORY[0x277CBEB18] array];
  service = [(_TSF_TSDKernelClock *)self service];
  v5 = [service childIteratorInServicePlaneWithError:?];

  v6 = array;
  [v5 enumerateWithBlock:?];

  return v6;
}

- (id)portWithPortNumber:(unsigned __int16)number
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  service = [(_TSF_TSDKernelClock *)self service];
  v5 = [service childIteratorInServicePlaneWithError:?];

  LOWORD(v8) = number;
  [v5 enumerateWithBlock:{MEMORY[0x277D85DD0], 3221225472, __40___TSF_TSDgPTPClock_portWithPortNumber___block_invoke, &unk_279DBE058, &v9, v8}];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)getMetrics
{
  v2 = [[_TSF_TSDClockMetrics alloc] initWithClock:?];

  return v2;
}

- (id)getMetricsWithDelta:(id)delta
{
  deltaCopy = delta;
  getMetrics = [(_TSF_TSDgPTPClock *)self getMetrics];
  v6 = [getMetrics getDelta:?];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _TSF_TSDgPTPClock;
  [(_TSF_TSDgPTPClock *)&v2 dealloc];
}

+ (id)diagnosticInfoForService:(id)service
{
  v9.receiver = self;
  v9.super_class = &OBJC_METACLASS____TSF_TSDgPTPClock;
  serviceCopy = service;
  v4 = objc_msgSendSuper2(&v9, sel_diagnosticInfoForService_, serviceCopy);
  array = [MEMORY[0x277CBEB18] array];
  v6 = [serviceCopy childIteratorInServicePlaneWithError:?];

  v7 = array;
  [v6 enumerateWithBlock:?];
  [v4 setObject:? forKeyedSubscript:?];

  return v4;
}

- (void)addImplClock:(id)clock
{
  clockCopy = clock;
  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v5 = self->_implClocks;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v7; i = (i + 1))
      {
        if (MEMORY[0] != v8)
        {
          objc_enumerationMutation(v5);
        }

        if (*(8 * i) == clockCopy)
        {

          goto LABEL_11;
        }
      }

      v7 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_implClocks addPointer:?];
LABEL_11:
  os_unfair_lock_unlock(&self->_implClocksLock);
}

- (void)removeImplClock:(id)clock
{
  clockCopy = clock;
  os_unfair_lock_lock(&self->_implClocksLock);
  [(NSPointerArray *)self->_implClocks compact];
  v5 = self->_implClocks;
  v6 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = MEMORY[0];
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (MEMORY[0] != v9)
        {
          objc_enumerationMutation(v5);
        }

        if (*(8 * v10) == clockCopy)
        {

          [(NSPointerArray *)self->_implClocks removePointerAtIndex:?];
          goto LABEL_11;
        }

        ++v11;
        v10 = (v10 + 1);
      }

      while (v7 != v10);
      v7 = [NSPointerArray countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  os_unfair_lock_unlock(&self->_implClocksLock);
}

- (BOOL)setPreferredGM:(BOOL)m error:(id *)error
{
  mCopy = m;
  v16 = *MEMORY[0x277D85DE8];
  mCopy2 = m;
  v14 = -1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v7 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    code = [*error code];
    *buf = 67109376;
    v11 = mCopy;
    v12 = 2048;
    v13 = code;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDgPTPClock setPreferredGm(%u) = %ld", buf, 0x12u);
  }

  return v7;
}

- (BOOL)updateNtpAnchorOffset:(int64_t)offset isLocalClockSourceFromNTP:(BOOL)p error:(id *)error
{
  pCopy = p;
  v20 = *MEMORY[0x277D85DE8];
  offsetCopy = offset;
  pCopy2 = p;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v9 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    code = [*error code];
    v12 = 134218496;
    offsetCopy2 = offset;
    v14 = 1024;
    v15 = pCopy;
    v16 = 2048;
    v17 = code;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDgPTPClock updateNtpAnchorOffset(%lld %d) = %ld", &v12, 0x1Cu);
  }

  return v9;
}

- (void)convertFrom32BitASToMachAbsoluteTime:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFrom32BitASTime:(_BYTE *)a1 toMachAbsoluteTime:withCount:.cold.1(_BYTE *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

- (void)gPTPTimeFromMachAbsoluteTime:(void *)a1 .cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

- (void)machAbsoluteFromgPTPTime:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFromMachAbsoluteTo128BitgPTPTime:(uint64_t)a1 grandmasterUsed:(void *)a2 portNumber:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v6, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, v8, v9, v10, v11);
  }

  *a3 = a1;
  *a2 = a1;
}

- (void)convertFrom128BitgPTPTimeToMachAbsoluteTime:grandmasterUsed:portNumber:.cold.1()
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

- (void)convertFromMachAbsoluteToDomainTime:grandmasterUsed:portNumber:.cold.1()
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

- (void)convertFromDomainToMachAbsoluteTime:grandmasterUsed:portNumber:.cold.1()
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

- (void)getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:forGrandmasterIdentity:portNumber:withError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFrom32BitASToTimeSyncTime:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFrom32BitASTime:(_BYTE *)a1 toTimeSyncTime:withCount:.cold.1(_BYTE *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

- (void)gPTPTimeFromTimeSyncTime:(void *)a1 .cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }

  *a1 = 0;
}

- (void)timeSyncTimeFromgPTPTime:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFromTimeSyncTimeTo128BitgPTPTime:(uint64_t)a1 grandmasterUsed:(void *)a2 portNumber:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v6, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v7, v8, v9, v10, v11);
  }

  *a3 = a1;
  *a2 = a1;
}

- (void)convertFrom128BitgPTPTimeToTimeSyncTime:grandmasterUsed:portNumber:.cold.1()
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

- (void)convertFromTimeSyncTimeToDomainTime:grandmasterUsed:portNumber:.cold.1()
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

- (BOOL)addLinkLayerPortOnInterfaceNamed:(uint64_t)a1 allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v8);
  }

  return a1 == 0;
}

- (void)removeLinkLayerPortFromInterfaceNamed:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (BOOL)addUnicastUDPv4PtPPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v8);
  }

  return a1 == 0;
}

- (void)removeUnicastUDPv4PtPPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (BOOL)addUnicastUDPv6PtPPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v8);
  }

  return a1 == 0;
}

- (void)removeUnicastUDPv6PtPPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (BOOL)addUnicastLinkLayerPtPPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v8);
  }

  return a1 == 0;
}

- (void)removeUnicastLinkLayerPtPPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (BOOL)addUnicastUDPv4EtEPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v8);
  }

  return a1 == 0;
}

- (void)removeUnicastUDPv4EtEPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (BOOL)addUnicastUDPv6EtEPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v8);
  }

  return a1 == 0;
}

- (void)removeUnicastUDPv6EtEPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (BOOL)addUnicastLinkLayerEtEPortOnInterfaceNamed:(uint64_t)a1 withDestinationAddress:allocatedPortNumber:error:.cold.1(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v8);
  }

  return a1 == 0;
}

- (void)removeUnicastLinkLayerEtEPortFromInterfaceNamed:withDestinationAddress:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addReverseSyncOnInterfaceNamed:withDomainNumner:syncInterval:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removeReverseSyncFromInterfaceNamed:withDomainNumner:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)getSyncInfoWithSyncInfoValid:syncFlags:timeSyncTime:domainTimeHi:domainTimeLo:cumulativeScaledRate:inverseCumulativeScaledRate:grandmasterID:localPortNumber:error:.cold.1()
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