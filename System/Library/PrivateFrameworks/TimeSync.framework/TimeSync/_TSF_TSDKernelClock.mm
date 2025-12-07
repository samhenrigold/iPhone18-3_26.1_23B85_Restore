@interface _TSF_TSDKernelClock
+ (id)availableKernelClockIdentifiers;
+ (id)clockNameForClockIdentifier:(unint64_t)identifier;
+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier;
+ (id)diagnosticInfoForService:(id)service;
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
+ (id)serviceForClockIdentifier:(unint64_t)identifier;
- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count;
- (BOOL)convertFromDomainTime:(unint64_t *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count;
- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)convertFromTimeSyncTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count;
- (BOOL)deregisterAsyncCallback;
- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error;
- (BOOL)registerAsyncCallback;
- (IOKService)service;
- (NSString)clockName;
- (_TSF_IODConnection)connection;
- (_TSF_TSDKernelClock)initWithClockIdentifier:(unint64_t)identifier pid:(int)pid;
- (double)hostRateRatio;
- (id)clients;
- (int)_lockState;
- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval;
- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time;
- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time;
- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time;
- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval;
- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time;
- (unsigned)getCoreAudioReanchors;
- (void)_handleInterestNotification:(unsigned int)notification withArgument:(void *)argument;
- (void)_handleNotification:(unsigned int)notification withArg1:(unint64_t)arg1 andArg2:(unint64_t)arg2;
- (void)_handleNotification:(unsigned int)notification withArgs:(unint64_t *)args ofCount:(unsigned int)count;
- (void)_lockState;
- (void)_refreshLockStateOnNotificationQueue;
- (void)addClient:(id)client;
- (void)finalizeNotifications;
- (void)getCoreAudioReanchors;
- (void)hostRateRatio;
- (void)registerAsyncCallback;
- (void)removeClient:(id)client;
- (void)updateCoreAudioReanchors:(unsigned int)reanchors;
@end

@implementation _TSF_TSDKernelClock

- (int)_lockState
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v3)
  {
    return v6[1];
  }

  [(_TSF_TSDKernelClock *)v6 _lockState];
  return v6[0];
}

- (_TSF_IODConnection)connection
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

- (id)clients
{
  os_unfair_lock_lock(&self->_clientsLock);
  allObjects = [(NSPointerArray *)self->_clients allObjects];
  os_unfair_lock_unlock(&self->_clientsLock);

  return allObjects;
}

- (void)_refreshLockStateOnNotificationQueue
{
  v17 = *MEMORY[0x277D85DE8];
  _lockState = [(_TSF_TSDKernelClock *)self _lockState];
  propertyUpdateQueue = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
  if (!propertyUpdateQueue || (v5 = propertyUpdateQueue, [(_TSF_TSDKernelClock *)self propertyUpdateQueue], v6 = objc_claimAutoreleasedReturnValue(), [(_TSF_TSDKernelClock *)self notificationQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v5, v6 == v7))
  {
    if (_lockState != [(_TSF_TSDKernelClock *)self lockState])
    {
      [(_TSF_TSDKernelClock *)self setLockState:?];
    }
  }

  else
  {
    propertyUpdateQueue2 = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59___TSF_TSDKernelClock__refreshLockStateOnNotificationQueue__block_invoke;
    block[3] = &unk_279DBD7D0;
    v16 = _lockState;
    block[4] = self;
    dispatch_sync(propertyUpdateQueue2, block);
  }

  clients = [(_TSF_TSDKernelClock *)self clients];
  v10 = [clients countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(clients);
        }

        v14 = *(8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 didChangeLockStateTo:? forClock:?];
        }
      }

      v11 = [clients countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }
}

- (IOKService)service
{
  os_unfair_lock_lock(&self->_serviceLock);
  v3 = self->_service;
  os_unfair_lock_unlock(&self->_serviceLock);

  return v3;
}

+ (id)availableKernelClockIdentifiers
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

- (_TSF_TSDKernelClock)initWithClockIdentifier:(unint64_t)identifier pid:(int)pid
{
  v4 = *&pid;
  v35.receiver = self;
  v35.super_class = _TSF_TSDKernelClock;
  v6 = [(_TSF_TSDKernelClock *)&v35 init];
  v7 = v6;
  if (v6)
  {
    v6->_clockIdentifier = identifier;
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    clients = v7->_clients;
    v7->_clients = weakObjectsPointerArray;

    v7->_clientsLock._os_unfair_lock_opaque = 0;
    location[1] = 0;
    os_parse_boot_arg_int();
    v7->_logNotifyTest = 0;
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = v12;
    if (v4 < 1)
    {
      [v10 stringWithFormat:v12, identifier, v32];
    }

    else
    {
      [v10 stringWithFormat:v12, identifier, v4];
    }
    v14 = ;

    v15 = dispatch_queue_create([v14 UTF8String], 0);
    notificationsQueue = v7->_notificationsQueue;
    v7->_notificationsQueue = v15;

    v17 = v7->_notificationsQueue;
    if (v17)
    {
      objc_storeStrong(&v7->_propertyUpdateQueue, v17);
      v7->_asyncCallbackRefcon = 0;
      v7->_serviceLock._os_unfair_lock_opaque = 0;
      v18 = MEMORY[0x277D1AE20];
      v19 = [objc_opt_class() iokitMatchingDictionaryForClockIdentifier:?];
      v20 = [v18 matchingService:?];
      service = v7->_service;
      v7->_service = v20;

      if (v7->_service)
      {
        v22 = [_TSF_IODConnection initWithService:"initWithService:andType:" andType:?];
        connection = v7->_connection;
        v7->_connection = v22;

        if (v7->_connection)
        {
          v7->_lockState = [(_TSF_TSDKernelClock *)v7 _lockState];
          if (v7->_notificationsQueue)
          {
            v24 = objc_alloc(MEMORY[0x277D1AE18]);
            notificationQueue = [(_TSF_TSDKernelClock *)v7 notificationQueue];
            v26 = [v24 initOnDispatchQueue:?];
            notificationPort = v7->_notificationPort;
            v7->_notificationPort = v26;

            if (v7->_notificationPort)
            {
              [(_TSF_TSDKernelClock *)v7 registerAsyncCallback];
              objc_initWeak(location, v7);
              v28 = v7->_service;
              objc_copyWeak(&v33, location);
              v29 = [IOKService addInterestNotifcationOfType:v28 usingNotificationPort:"addInterestNotifcationOfType:usingNotificationPort:error:withHandler:" error:? withHandler:?];
              interestNotification = v7->_interestNotification;
              v7->_interestNotification = v29;

              objc_destroyWeak(&v33);
              objc_destroyWeak(location);
LABEL_11:

              return v7;
            }

            [_TSF_TSDKernelClock initWithClockIdentifier:v7 pid:?];
          }

          else
          {
            [_TSF_TSDKernelClock initWithClockIdentifier:v7 pid:?];
          }
        }

        else
        {
          [_TSF_TSDKernelClock initWithClockIdentifier:v7 pid:?];
        }
      }

      else
      {
        [_TSF_TSDKernelClock initWithClockIdentifier:v7 pid:?];
      }
    }

    else
    {
      [_TSF_TSDKernelClock initWithClockIdentifier:v7 pid:?];
    }

    v7 = 0;
    goto LABEL_11;
  }

  return v7;
}

- (unint64_t)convertFromMachAbsoluteToDomainTime:(unint64_t)time
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = -1;
  v8 = 0;
  v6 = 2;
  timeCopy = time;
  v10 = 0;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromMachAbsoluteToDomainTime:];
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

- (unint64_t)convertFromDomainToMachAbsoluteTime:(unint64_t)time
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = -1;
  v8 = 0;
  v6 = 2;
  timeCopy = time;
  v10 = 0;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromDomainToMachAbsoluteTime:];
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

- (BOOL)convertFromMachAbsoluteTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count
{
  countCopy = count;
  v30 = *MEMORY[0x277D85DE8];
  if (count < 0xC)
  {
    v8 = 1;
    if (!count)
    {
      return v8 & 1;
    }

    goto LABEL_11;
  }

  v8 = 1;
  *&v5 = 136316418;
  v16 = v5;
  do
  {
    v17 = 12;
    connection = [(_TSF_TSDKernelClock *)self connection];
    v12 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v12 & 1) == 0)
    {
      v8 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v16;
        v19 = "callResult == YES";
        v20 = 2048;
        v21 = 0;
        v22 = 2048;
        v23 = 0;
        v24 = 2080;
        v25 = "";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/clocksyncd/IOKit/TSDKernelClock.m";
        v28 = 1024;
        v29 = 235;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
        v8 = 0;
      }
    }

    countCopy -= 12;
    time += 12;
    domainTime += 12;
  }

  while (countCopy > 0xB);
  if (countCopy)
  {
LABEL_11:
    *buf = countCopy;
    connection2 = [(_TSF_TSDKernelClock *)self connection];
    v14 = [connection2 callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v14 & 1) == 0)
    {
      [_TSF_TSDKernelClock convertFromMachAbsoluteTime:toDomainTime:withCount:];
      v8 = v17;
    }
  }

  return v8 & 1;
}

- (BOOL)convertFromDomainTime:(unint64_t *)time toMachAbsoluteTime:(unint64_t *)absoluteTime withCount:(unsigned int)count
{
  countCopy = count;
  v30 = *MEMORY[0x277D85DE8];
  if (count < 0xC)
  {
    v8 = 1;
    if (!count)
    {
      return v8 & 1;
    }

    goto LABEL_11;
  }

  v8 = 1;
  *&v5 = 136316418;
  v16 = v5;
  do
  {
    v17 = 12;
    connection = [(_TSF_TSDKernelClock *)self connection];
    v12 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v12 & 1) == 0)
    {
      v8 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v16;
        v19 = "callResult == YES";
        v20 = 2048;
        v21 = 0;
        v22 = 2048;
        v23 = 0;
        v24 = 2080;
        v25 = "";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/clocksyncd/IOKit/TSDKernelClock.m";
        v28 = 1024;
        v29 = 270;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
        v8 = 0;
      }
    }

    countCopy -= 12;
    time += 12;
    absoluteTime += 12;
  }

  while (countCopy > 0xB);
  if (countCopy)
  {
LABEL_11:
    *buf = countCopy;
    connection2 = [(_TSF_TSDKernelClock *)self connection];
    v14 = [connection2 callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v14 & 1) == 0)
    {
      [_TSF_TSDKernelClock convertFromDomainTime:toMachAbsoluteTime:withCount:];
      v8 = v17;
    }
  }

  return v8 & 1;
}

- (unint64_t)convertFromMachAbsoluteIntervalToDomainInterval:(unint64_t)interval
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = -1;
  intervalCopy = interval;
  v6 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromMachAbsoluteIntervalToDomainInterval:];
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

- (unint64_t)convertFromDomainIntervalToMachAbsoluteInterval:(unint64_t)interval
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = -1;
  intervalCopy = interval;
  v6 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromDomainIntervalToMachAbsoluteInterval:];
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

- (double)hostRateRatio
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = 2;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v3)
  {
    info = 0;
    mach_timebase_info(&info);
    return (v7 / info.numer) / (v8 / info.denom);
  }

  else
  {
    [(_TSF_TSDKernelClock *)&info hostRateRatio];
    return *&info;
  }
}

- (BOOL)getMachAbsoluteRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator machAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  v14 = vdupq_n_s64(1uLL);
  connection = [(_TSF_TSDKernelClock *)self connection];
  v12 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v12)
  {
    if (!numerator)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDKernelClock getMachAbsoluteRateRatioNumerator:denominator:machAnchor:andDomainAnchor:withError:];
  if (numerator)
  {
LABEL_3:
    *numerator = v14.i64[0];
  }

LABEL_4:
  if (denominator)
  {
    *denominator = v14.u64[1];
  }

  if (anchor)
  {
    *anchor = -1;
  }

  if (domainAnchor)
  {
    *domainAnchor = -1;
  }

  return v12;
}

- (unint64_t)convertFromTimeSyncToDomainTime:(unint64_t)time
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = -1;
  timeCopy = time;
  v6 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromTimeSyncToDomainTime:];
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

- (unint64_t)convertFromDomainToTimeSyncTime:(unint64_t)time
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = -1;
  timeCopy = time;
  v6 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromDomainToTimeSyncTime:];
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

- (BOOL)convertFromTimeSyncTime:(unint64_t *)time toDomainTime:(unint64_t *)domainTime withCount:(unsigned int)count
{
  countCopy = count;
  v30 = *MEMORY[0x277D85DE8];
  if (count < 0xC)
  {
    v8 = 1;
    if (!count)
    {
      return v8 & 1;
    }

    goto LABEL_11;
  }

  v8 = 1;
  *&v5 = 136316418;
  v16 = v5;
  do
  {
    v17 = 12;
    connection = [(_TSF_TSDKernelClock *)self connection];
    v12 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v12 & 1) == 0)
    {
      v8 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v16;
        v19 = "callResult == YES";
        v20 = 2048;
        v21 = 0;
        v22 = 2048;
        v23 = 0;
        v24 = 2080;
        v25 = "";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/clocksyncd/IOKit/TSDKernelClock.m";
        v28 = 1024;
        v29 = 464;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
        v8 = 0;
      }
    }

    countCopy -= 12;
    time += 12;
    domainTime += 12;
  }

  while (countCopy > 0xB);
  if (countCopy)
  {
LABEL_11:
    *buf = countCopy;
    connection2 = [(_TSF_TSDKernelClock *)self connection];
    v14 = [connection2 callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v14 & 1) == 0)
    {
      [_TSF_TSDKernelClock convertFromTimeSyncTime:toDomainTime:withCount:];
      v8 = v17;
    }
  }

  return v8 & 1;
}

- (BOOL)convertFromDomainTime:(unint64_t *)time toTimeSyncTime:(unint64_t *)syncTime withCount:(unsigned int)count
{
  countCopy = count;
  v30 = *MEMORY[0x277D85DE8];
  if (count < 0xC)
  {
    v8 = 1;
    if (!count)
    {
      return v8 & 1;
    }

    goto LABEL_11;
  }

  v8 = 1;
  *&v5 = 136316418;
  v16 = v5;
  do
  {
    v17 = 12;
    connection = [(_TSF_TSDKernelClock *)self connection];
    v12 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v12 & 1) == 0)
    {
      v8 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = v16;
        v19 = "callResult == YES";
        v20 = 2048;
        v21 = 0;
        v22 = 2048;
        v23 = 0;
        v24 = 2080;
        v25 = "";
        v26 = 2080;
        v27 = "/Library/Caches/com.apple.xbs/Sources/TimeSync/clocksyncd/IOKit/TSDKernelClock.m";
        v28 = 1024;
        v29 = 499;
        _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", buf, 0x3Au);
        v8 = 0;
      }
    }

    countCopy -= 12;
    time += 12;
    syncTime += 12;
  }

  while (countCopy > 0xB);
  if (countCopy)
  {
LABEL_11:
    *buf = countCopy;
    connection2 = [(_TSF_TSDKernelClock *)self connection];
    v14 = [connection2 callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

    if ((v14 & 1) == 0)
    {
      [_TSF_TSDKernelClock convertFromDomainTime:toTimeSyncTime:withCount:];
      v8 = v17;
    }
  }

  return v8 & 1;
}

- (unint64_t)convertFromTimeSyncTimeIntervalToDomainInterval:(unint64_t)interval
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = -1;
  intervalCopy = interval;
  v6 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromTimeSyncTimeIntervalToDomainInterval:];
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

- (unint64_t)convertFromDomainIntervalToTimeSyncTimeInterval:(unint64_t)interval
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = -1;
  intervalCopy = interval;
  v6 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDKernelClock convertFromDomainIntervalToTimeSyncTimeInterval:];
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

- (BOOL)getTimeSyncTimeRateRatioNumerator:(unint64_t *)numerator denominator:(unint64_t *)denominator timeSyncAnchor:(unint64_t *)anchor andDomainAnchor:(unint64_t *)domainAnchor withError:(id *)error
{
  v14 = vdupq_n_s64(1uLL);
  connection = [(_TSF_TSDKernelClock *)self connection];
  v12 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if (v12)
  {
    if (!numerator)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  [_TSF_TSDKernelClock getTimeSyncTimeRateRatioNumerator:denominator:timeSyncAnchor:andDomainAnchor:withError:];
  if (numerator)
  {
LABEL_3:
    *numerator = v14.i64[0];
  }

LABEL_4:
  if (denominator)
  {
    *denominator = v14.u64[1];
  }

  if (anchor)
  {
    *anchor = -1;
  }

  if (domainAnchor)
  {
    *domainAnchor = -1;
  }

  return v12;
}

- (void)updateCoreAudioReanchors:(unsigned int)reanchors
{
  v9 = *MEMORY[0x277D85DE8];
  reanchorsCopy = reanchors;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = reanchors;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Updating Core Audio Reanchors += %u\n", v7, 8u);
  }

  connection = [(_TSF_TSDKernelClock *)self connection];
  v6 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v6 & 1) == 0)
  {
    [_TSF_TSDKernelClock updateCoreAudioReanchors:];
  }
}

- (unsigned)getCoreAudioReanchors
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = 1;
  connection = [(_TSF_TSDKernelClock *)self connection];
  v3 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v3 & 1) == 0)
  {
    [_TSF_TSDKernelClock getCoreAudioReanchors];
  }

  return v6;
}

- (void)_handleNotification:(unsigned int)notification withArg1:(unint64_t)arg1 andArg2:(unint64_t)arg2
{
  if (notification == 2001)
  {

    [(_TSF_TSDKernelClock *)self _refreshLockStateOnNotificationQueue];
  }

  else
  {
    clients = [(_TSF_TSDKernelClock *)self clients];
    v7 = [clients countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(clients);
          }

          v11 = *(8 * i);
          if (notification > 2003)
          {
            if (notification == 2004)
            {
              if (objc_opt_respondsToSelector())
              {
                [v11 didEndClockGrandmasterChangeForClock:?];
              }

              if (objc_opt_respondsToSelector())
              {
                [v11 didEndClockGrandmasterChangeWithGrandmasterID:? localPort:? forClock:?];
              }
            }

            else if (notification == 2005)
            {
              if (objc_opt_respondsToSelector())
              {
                [v11 didProcessSync:?];
              }
            }

            else if (notification == 2006 && (objc_opt_respondsToSelector() & 1) != 0)
            {
              [v11 didChangeLocalPortWithGrandmasterID:? localPort:? forClock:?];
            }
          }

          else
          {
            switch(notification)
            {
              case 0x7D0u:
                if (objc_opt_respondsToSelector())
                {
                  [v11 didResetClock:?];
                }

                break;
              case 0x7D2u:
                if (objc_opt_respondsToSelector())
                {
                  [v11 didChangeClockMasterForClock:?];
                }

                break;
              case 0x7D3u:
                if (objc_opt_respondsToSelector())
                {
                  [v11 didBeginClockGrandmasterChangeForClock:?];
                }

                if (objc_opt_respondsToSelector())
                {
                  [v11 didBeginClockGrandmasterChangeWithGrandmasterID:? localPort:? forClock:?];
                }

                break;
            }
          }
        }

        v8 = [clients countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }
  }
}

- (void)_handleNotification:(unsigned int)notification withArgs:(unint64_t *)args ofCount:(unsigned int)count
{
  v37 = *MEMORY[0x277D85DE8];
  if (notification == 2007 && count == 12)
  {
    v21 = *args;
    v19 = *(args + 8) | (args[3] << 32);
    v20 = *(args + 4) | (args[1] << 32);
    v6 = *(args + 12) | (args[5] << 32);
    v7 = *(args + 16) | (args[7] << 32);
    v8 = *(args + 20) | (args[9] << 32);
    v9 = *(args + 22);
    if (self->_logNotifyTest && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110656;
      notificationCopy = v21;
      v25 = 2048;
      v26 = v20;
      v27 = 2048;
      v28 = v19;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v7;
      v33 = 2048;
      v34 = v8;
      v35 = 1024;
      v36 = v9;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDKernelClock _handleNotification kIOTimeSyncDomainNotificationEtEDelayStats localPortNumber=%u mean=%llu median=%llu stddev=%llu min=%llu max=%llu numberOfSamples=%u", buf, 0x40u);
    }

    clients = [(_TSF_TSDKernelClock *)self clients];
    v11 = [clients countByEnumeratingWithState:? objects:? count:?];
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
            objc_enumerationMutation(clients);
          }

          v15 = *(8 * i);
          if (objc_opt_respondsToSelector())
          {
            LODWORD(v18) = v9;
            [v15 didGetStatsOfLocalPortNumber:v18 mean:self median:? stddev:? min:? max:? numberOfSamples:? forClock:?];
          }
        }

        v12 = [clients countByEnumeratingWithState:? objects:? count:?];
      }

      while (v12);
    }
  }

  else if (count == 4)
  {
    v16 = *(args + 2) | (*args << 32);
    v17 = *(args + 6) | (args[2] << 32);
    if (self->_logNotifyTest && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      notificationCopy = notification;
      v25 = 2048;
      v26 = v16;
      v27 = 2048;
      v28 = v17;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDKernelClock _handleNotification notification=%u arg1=%llu arg2=%llu", buf, 0x1Cu);
    }

    [_TSF_TSDKernelClock _handleNotification:"_handleNotification:withArg1:andArg2:" withArg1:? andArg2:?];
  }
}

- (BOOL)registerAsyncCallback
{
  v3 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  self->_asyncCallbackRefcon = [v3 allocateRefcon:?];
  p_asyncCallbackRefcon = &self->_asyncCallbackRefcon;

  connection = [(_TSF_TSDKernelClock *)self connection];
  v6 = [connection registerAsyncNotificationsWithSelector:? callBack:? refcon:? callbackQueue:?];

  if ((v6 & 1) == 0)
  {
    [(_TSF_TSDKernelClock *)p_asyncCallbackRefcon registerAsyncCallback];
  }

  return v6;
}

- (BOOL)deregisterAsyncCallback
{
  v3 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v3 releaseRefcon:?];

  connection = [(_TSF_TSDKernelClock *)self connection];
  LOBYTE(v3) = [connection deregisterAsyncNotificationsWithSelector:?];

  return v3;
}

- (void)_handleInterestNotification:(unsigned int)notification withArgument:(void *)argument
{
  if (notification == -536870608)
  {
    _lockState = [(_TSF_TSDKernelClock *)self _lockState];
    propertyUpdateQueue = [(_TSF_TSDKernelClock *)self propertyUpdateQueue];
    if (!propertyUpdateQueue)
    {
      propertyUpdateQueue = [(_TSF_TSDKernelClock *)self notificationQueue];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64___TSF_TSDKernelClock__handleInterestNotification_withArgument___block_invoke;
    v9[3] = &unk_279DBD7D0;
    v10 = _lockState;
    v9[4] = self;
    dispatch_async(propertyUpdateQueue, v9);
  }

  else if (notification == -536870896)
  {
    os_unfair_lock_lock(&self->_serviceLock);
    connection = self->_connection;
    self->_connection = 0;

    service = self->_service;
    self->_service = 0;

    os_unfair_lock_unlock(&self->_serviceLock);
  }
}

- (void)addClient:(id)client
{
  v17 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientsLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(_TSF_TSDKernelClock *)self description];
    *buf = 136315394;
    v14 = uTF8String;
    v15 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Adding Client %s to clock %s\n", buf, 0x16u);
  }

  [(NSPointerArray *)self->_clients compact];
  v8 = self->_clients;
  v9 = [NSPointerArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        if (*(8 * i) == clientCopy)
        {

          goto LABEL_13;
        }
      }

      v10 = [NSPointerArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  [(NSPointerArray *)self->_clients addPointer:?];
LABEL_13:
  os_unfair_lock_unlock(&self->_clientsLock);
}

- (void)removeClient:(id)client
{
  v19 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  os_unfair_lock_lock(&self->_clientsLock);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = [clientCopy description];
    uTF8String = [v5 UTF8String];
    v7 = [(_TSF_TSDKernelClock *)self description];
    *buf = 136315394;
    v16 = uTF8String;
    v17 = 2080;
    uTF8String2 = [v7 UTF8String];
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Removing Client %s from clock %s\n", buf, 0x16u);
  }

  [(NSPointerArray *)self->_clients compact];
  v8 = self->_clients;
  v9 = [NSPointerArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = MEMORY[0];
    while (2)
    {
      v13 = 0;
      v14 = v11;
      v11 += v10;
      do
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v8);
        }

        if (*(8 * v13) == clientCopy)
        {

          [(NSPointerArray *)self->_clients removePointerAtIndex:?];
          goto LABEL_13;
        }

        ++v14;
        v13 = (v13 + 1);
      }

      while (v10 != v13);
      v10 = [NSPointerArray countByEnumeratingWithState:v8 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
  os_unfair_lock_unlock(&self->_clientsLock);
}

- (NSString)clockName
{
  service = [(_TSF_TSDKernelClock *)self service];

  v4 = MEMORY[0x277CCACA8];
  if (service)
  {
    service2 = [(_TSF_TSDKernelClock *)self service];
    ioClassName = [service2 ioClassName];
    v7 = [v4 stringWithFormat:ioClassName, -[_TSF_TSDKernelClock clockIdentifier](self, "clockIdentifier")];
  }

  else
  {
    v8 = objc_opt_class();
    service2 = NSStringFromClass(v8);
    v7 = [v4 stringWithFormat:service2, -[_TSF_TSDKernelClock clockIdentifier](self, "clockIdentifier")];
  }

  return v7;
}

- (void)finalizeNotifications
{
  [(_TSF_TSDKernelClock *)self deregisterAsyncCallback];
  interestNotification = self->_interestNotification;
  self->_interestNotification = 0;

  notificationPort = self->_notificationPort;
  self->_notificationPort = 0;
}

+ (id)serviceForClockIdentifier:(unint64_t)identifier
{
  v3 = [self iokitMatchingDictionaryForClockIdentifier:?];
  v4 = [MEMORY[0x277D1AE20] matchingService:?];

  return v4;
}

+ (id)diagnosticInfoForService:(id)service
{
  v3 = MEMORY[0x277CBEB38];
  serviceCopy = service;
  dictionary = [v3 dictionary];
  ioClassName = [serviceCopy ioClassName];
  [dictionary setObject:? forKeyedSubscript:?];

  iodProperties = [serviceCopy iodProperties];

  [dictionary addEntriesFromDictionary:?];
  [dictionary removeObjectForKey:?];
  [dictionary removeObjectForKey:?];

  return dictionary;
}

+ (id)diagnosticInfoForClockIdentifier:(unint64_t)identifier
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CCABB0] numberWithLongLong:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v6 = [objc_opt_class() clockNameForClockIdentifier:?];
  [dictionary setObject:? forKeyedSubscript:?];

  v7 = [self serviceForClockIdentifier:?];
  if (v7)
  {
    v8 = [self diagnosticInfoForService:?];
    [dictionary addEntriesFromDictionary:?];
  }

  return dictionary;
}

+ (id)clockNameForClockIdentifier:(unint64_t)identifier
{
  v4 = [self serviceForClockIdentifier:?];
  v5 = v4;
  v6 = MEMORY[0x277CCACA8];
  if (v4)
  {
    [v4 ioClassName];
  }

  else
  {
    v7 = objc_opt_class();
    NSStringFromClass(v7);
  }
  v8 = ;
  identifier = [v6 stringWithFormat:v8, identifier];

  return identifier;
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.2(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.3(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.4(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)initWithClockIdentifier:(void *)a1 pid:.cold.5(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)convertFromMachAbsoluteToDomainTime:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFromDomainToMachAbsoluteTime:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
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

- (void)convertFromMachAbsoluteIntervalToDomainInterval:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFromDomainIntervalToMachAbsoluteInterval:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)_lockState
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }

  *self = 0;
}

- (void)hostRateRatio
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }

  *self = 0x3FF0000000000000;
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
}

- (void)convertFromTimeSyncToDomainTime:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFromDomainToTimeSyncTime:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
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

- (void)convertFromTimeSyncTimeIntervalToDomainInterval:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)convertFromDomainIntervalToTimeSyncTimeInterval:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
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

- (void)updateCoreAudioReanchors:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)getCoreAudioReanchors
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)registerAsyncCallback
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v1, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v2, v3, v4, v5, v7);
  }

  v6 = +[_TSF_TSDCallbackRefconMap sharedTSDCallbackRefconMap];
  [v6 releaseRefcon:?];
}

@end