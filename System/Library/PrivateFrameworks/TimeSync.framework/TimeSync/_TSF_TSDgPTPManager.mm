@interface _TSF_TSDgPTPManager
+ (id)diagnosticInfo;
+ (id)gPTPManager;
+ (id)sharedgPTPManager;
+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)timeout;
+ (void)diagnosticInfo;
+ (void)initialize;
+ (void)notifyWhengPTPManagerIsAvailable:(id)available;
+ (void)notifyWhengPTPManagerIsUnavailable:(id)unavailable;
- (BOOL)addAVBPTPInstanceIndex:(unsigned __int16)index identifier:(unint64_t *)identifier error:(id *)error;
- (BOOL)addAirPlayPTPInstance:(unint64_t *)instance error:(id *)error;
- (BOOL)addCopresencePTPInstance:(unint64_t *)instance ntpAndUpTimeOffsetNsec:(int64_t)nsec isLocalClockSourceFromNTP:(BOOL)p error:(id *)error;
- (BOOL)addCopresencePTPInstanceRefWithError:(id *)error;
- (BOOL)addPTPInstance:(unint64_t *)instance error:(id *)error;
- (BOOL)addTimeOfDayPTPInstance:(unint64_t *)instance error:(id *)error;
- (BOOL)dockReplayTimestamps:(id *)timestamps;
- (BOOL)logInterfaceStatisticsWithError:(id *)error;
- (BOOL)removeAVBPTPInstanceWithIndex:(unsigned __int16)index error:(id *)error;
- (BOOL)removeAirPlayPTPInstanceWithError:(id *)error;
- (BOOL)removeCopresencePTPInstanceWithError:(id *)error;
- (BOOL)removePTPInstanceWithIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)startReplayTimestamps:(id)timestamps;
- (BOOL)stopReplayTimestamps:(id)timestamps;
- (_TSF_TSDgPTPClock)systemDomain;
- (_TSF_TSDgPTPManager)init;
- (unint64_t)airPlayPTPInstanceClockIdentifier;
- (unint64_t)avbPTPInstance0ClockIdentifier;
- (unint64_t)avbPTPInstance1ClockIdentifier;
- (unint64_t)avbPTPInstance2ClockIdentifier;
- (unint64_t)avbPTPInstance3ClockIdentifier;
- (unint64_t)copresencePTPInstanceClockIdentifier;
- (void)dealloc;
- (void)init;
@end

@implementation _TSF_TSDgPTPManager

+ (void)initialize
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

+ (void)notifyWhengPTPManagerIsAvailable:(id)available
{
  availableCopy = available;
  v4 = _kextNotifier;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __56___TSF_TSDgPTPManager_notifyWhengPTPManagerIsAvailable___block_invoke;
  v9 = &unk_279DBD760;
  v10 = availableCopy;
  v5 = availableCopy;
  [v4 notifyWhenServiceIsAvailable:?];
}

+ (void)notifyWhengPTPManagerIsUnavailable:(id)unavailable
{
  unavailableCopy = unavailable;
  v4 = _kextNotifier;
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __58___TSF_TSDgPTPManager_notifyWhengPTPManagerIsUnavailable___block_invoke;
  v9 = &unk_279DBD760;
  v10 = unavailableCopy;
  v5 = unavailableCopy;
  [v4 notifyWhenServiceIsUnavailable:?];
}

+ (id)sharedgPTPManager
{
  if (sharedgPTPManager_onceToken != -1)
  {
    +[_TSF_TSDgPTPManager sharedgPTPManager];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40___TSF_TSDgPTPManager_sharedgPTPManager__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_sync(_sharedgPTPManagerQueue, block);
  v3 = _sharedgPTPManager_0;

  return v3;
}

+ (id)sharedgPTPManagerSyncWithTimeout:(unint64_t)timeout
{
  v5 = dispatch_semaphore_create(0);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __56___TSF_TSDgPTPManager_sharedgPTPManagerSyncWithTimeout___block_invoke;
  v14 = &unk_279DBD538;
  v6 = v5;
  v15 = v6;
  [self notifyWhengPTPManagerIsAvailable:?];
  v7 = dispatch_time(0, 1000000 * timeout);
  if (dispatch_semaphore_wait(v6, v7))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to find gPTP manager within the timeout period.\n", v10, 2u);
    }

    sharedgPTPManager = 0;
  }

  else
  {
    sharedgPTPManager = [self sharedgPTPManager];
  }

  return sharedgPTPManager;
}

+ (id)gPTPManager
{
  v2 = objc_alloc_init(_TSF_TSDgPTPManager);
  if (!v2)
  {
    v3 = 10;
    do
    {
      usleep(0x2710u);
      v2 = objc_alloc_init(_TSF_TSDgPTPManager);
      if (v3 < 2)
      {
        break;
      }

      --v3;
    }

    while (!v2);
  }

  return v2;
}

- (_TSF_TSDgPTPManager)init
{
  v15.receiver = self;
  v15.super_class = _TSF_TSDgPTPManager;
  v2 = [(_TSF_TSDgPTPManager *)&v15 init];
  if (!v2)
  {
    return v2;
  }

  v3 = MEMORY[0x277D1AE20];
  v4 = [MEMORY[0x277D1AE20] serviceMatching:?];
  v5 = [v3 matchingService:?];
  service = v2->_service;
  v2->_service = v5;

  if (!v2->_service)
  {
    [(_TSF_TSDgPTPManager *)v2 init];
    return 0;
  }

  v7 = [_TSF_IODConnection initWithService:"initWithService:andType:" andType:?];
  connection = v2->_connection;
  v2->_connection = v7;

  if (!v2->_connection)
  {
    [(_TSF_TSDgPTPManager *)v2 init];
    return 0;
  }

  v9 = [(IOKService *)v2->_service iodPropertyForKey:?];
  v10 = v9;
  if (v9)
  {
    unsignedLongLongValue = [v9 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  v2->_systemDomainClockIdentifier = unsignedLongLongValue;
  v12 = dispatch_queue_create("com.apple.TimeSync.TSDgPTPManager.systemDomain", 0);
  systemDomainQueue = v2->_systemDomainQueue;
  v2->_systemDomainQueue = v12;

  return v2;
}

- (_TSF_TSDgPTPClock)systemDomain
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__0;
  v10 = __Block_byref_object_dispose__0;
  v11 = 0;
  systemDomainQueue = self->_systemDomainQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35___TSF_TSDgPTPManager_systemDomain__block_invoke;
  v5[3] = &unk_279DBD560;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(systemDomainQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)addPTPInstance:(unint64_t *)instance error:(id *)error
{
  if (!instance)
  {
    return 0;
  }

  v5 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v5)
  {
    [_TSF_TSDgPTPManager addPTPInstance:error:];
  }

  *instance = v7;
  return v5;
}

- (BOOL)addTimeOfDayPTPInstance:(unint64_t *)instance error:(id *)error
{
  if (!instance)
  {
    return 0;
  }

  v5 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v5)
  {
    [_TSF_TSDgPTPManager addTimeOfDayPTPInstance:error:];
  }

  *instance = v7;
  return v5;
}

- (BOOL)removePTPInstanceWithIdentifier:(unint64_t)identifier error:(id *)error
{
  v4 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v4)
  {
    [_TSF_TSDgPTPManager removePTPInstanceWithIdentifier:error:];
  }

  return v4;
}

- (BOOL)addAVBPTPInstanceIndex:(unsigned __int16)index identifier:(unint64_t *)identifier error:(id *)error
{
  if (!identifier)
  {
    return 0;
  }

  v6 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v6)
  {
    [_TSF_TSDgPTPManager addAVBPTPInstanceIndex:identifier:error:];
  }

  *identifier = v8;
  return v6;
}

- (BOOL)removeAVBPTPInstanceWithIndex:(unsigned __int16)index error:(id *)error
{
  v4 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v4)
  {
    [_TSF_TSDgPTPManager removeAVBPTPInstanceWithIndex:error:];
  }

  return v4;
}

- (unint64_t)avbPTPInstance0ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:?];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unint64_t)avbPTPInstance1ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:?];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unint64_t)avbPTPInstance2ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:?];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unint64_t)avbPTPInstance3ClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:?];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (unint64_t)airPlayPTPInstanceClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:?];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (BOOL)addAirPlayPTPInstance:(unint64_t *)instance error:(id *)error
{
  if (!instance)
  {
    return 0;
  }

  v5 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v5)
  {
    [_TSF_TSDgPTPManager addAirPlayPTPInstance:error:];
  }

  *instance = v7;
  return v5;
}

- (BOOL)removeAirPlayPTPInstanceWithError:(id *)error
{
  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v3)
  {
    [_TSF_TSDgPTPManager removeAirPlayPTPInstanceWithError:];
  }

  return v3;
}

- (unint64_t)copresencePTPInstanceClockIdentifier
{
  v2 = [(IOKService *)self->_service iodPropertyForKey:?];
  v3 = v2;
  if (v2)
  {
    unsignedLongLongValue = [v2 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = -1;
  }

  return unsignedLongLongValue;
}

- (BOOL)addCopresencePTPInstance:(unint64_t *)instance ntpAndUpTimeOffsetNsec:(int64_t)nsec isLocalClockSourceFromNTP:(BOOL)p error:(id *)error
{
  if (!instance)
  {
    return 0;
  }

  v7 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v7)
  {
    [_TSF_TSDgPTPManager addCopresencePTPInstance:ntpAndUpTimeOffsetNsec:isLocalClockSourceFromNTP:error:];
  }

  *instance = v9;
  return v7;
}

- (BOOL)removeCopresencePTPInstanceWithError:(id *)error
{
  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v3)
  {
    [_TSF_TSDgPTPManager removeCopresencePTPInstanceWithError:];
  }

  return v3;
}

- (BOOL)addCopresencePTPInstanceRefWithError:(id *)error
{
  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v3)
  {
    [_TSF_TSDgPTPManager addCopresencePTPInstanceRefWithError:];
  }

  return v3;
}

- (BOOL)logInterfaceStatisticsWithError:(id *)error
{
  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];
  if (!v3)
  {
    [_TSF_TSDgPTPManager logInterfaceStatisticsWithError:];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[_TSF_TSDClockManager sharedClockManager];
  [v3 removegPTPServicesWithError:?];

  v4.receiver = self;
  v4.super_class = _TSF_TSDgPTPManager;
  [(_TSF_TSDgPTPManager *)&v4 dealloc];
}

+ (id)diagnosticInfo
{
  v2 = MEMORY[0x277D1AE20];
  v3 = [MEMORY[0x277D1AE20] serviceMatching:?];
  v4 = [v2 matchingService:?];

  if (!v4)
  {
    +[(_TSF_TSDgPTPManager *)&v19];
LABEL_25:
    dictionary = v19;
    goto LABEL_20;
  }

  if (([v4 conformsToIOClassName:?] & 1) == 0)
  {
    +[(_TSF_TSDgPTPManager *)&v19];
    goto LABEL_25;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  ioClassName = [v4 ioClassName];
  [dictionary setObject:? forKeyedSubscript:?];

  v7 = [v4 iodPropertyForKey:?];
  if (v7)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v8 = [v4 iodPropertyForKey:?];

  if (v8)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v9 = [v4 iodPropertyForKey:?];

  if (v9)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v10 = [v4 iodPropertyForKey:?];

  if (v10)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v11 = [v4 iodPropertyForKey:?];

  if (v11)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v12 = [v4 iodPropertyForKey:?];

  if (v12)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  v13 = [v4 iodPropertyForKey:?];

  if (v13)
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

  array = [MEMORY[0x277CBEB18] array];
  v15 = [v4 childIteratorInServicePlaneWithError:?];
  v18 = MEMORY[0x277D85DD0];
  v16 = array;
  [v15 enumerateWithBlock:{v18, 3221225472, __37___TSF_TSDgPTPManager_diagnosticInfo__block_invoke, &unk_279DBD7A8}];
  if ([v16 count])
  {
    [dictionary setObject:? forKeyedSubscript:?];
  }

LABEL_20:

  return dictionary;
}

- (BOOL)dockReplayTimestamps:(id *)timestamps
{
  if (!timestamps)
  {
    return 0;
  }

  v3 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:scalarOutputs:scalarOutputCount:error:" scalarInputs:timestamps scalarInputCount:152 scalarOutputs:timestamps->var1 scalarOutputCount:40 * timestamps->var0.var1 error:?];
  if (!v3)
  {
    [_TSF_TSDgPTPManager dockReplayTimestamps:];
  }

  return v3;
}

- (BOOL)startReplayTimestamps:(id)timestamps
{
  connection = self->_connection;
  timestampsCopy = timestamps;
  timestampsCopy2 = timestamps;
  [timestampsCopy2 UTF8String];
  [timestampsCopy2 length];

  v9 = 0;
  v7 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:" scalarInputs:0 scalarInputCount:&v9 structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
  if ((v7 & 1) == 0)
  {
    [_TSF_TSDgPTPManager startReplayTimestamps:];
  }

  return v7;
}

- (BOOL)stopReplayTimestamps:(id)timestamps
{
  connection = self->_connection;
  timestampsCopy = timestamps;
  timestampsCopy2 = timestamps;
  [timestampsCopy2 UTF8String];
  [timestampsCopy2 length];

  v9 = 0;
  v7 = [_TSF_IODConnection callMethodWithSelector:"callMethodWithSelector:scalarInputs:scalarInputCount:structInput:structInputSize:scalarOutputs:scalarOutputCount:error:" scalarInputs:0 scalarInputCount:&v9 structInput:? structInputSize:? scalarOutputs:? scalarOutputCount:? error:?];
  if ((v7 & 1) == 0)
  {
    [_TSF_TSDgPTPManager stopReplayTimestamps:];
  }

  return v7;
}

- (void)init
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

- (void)addPTPInstance:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addTimeOfDayPTPInstance:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removePTPInstanceWithIdentifier:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addAVBPTPInstanceIndex:identifier:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removeAVBPTPInstanceWithIndex:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addAirPlayPTPInstance:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removeAirPlayPTPInstanceWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addCopresencePTPInstance:ntpAndUpTimeOffsetNsec:isLocalClockSourceFromNTP:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)removeCopresencePTPInstanceWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)addCopresencePTPInstanceRefWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)logInterfaceStatisticsWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

+ (void)diagnosticInfo
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

- (void)dockReplayTimestamps:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)startReplayTimestamps:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)stopReplayTimestamps:.cold.1()
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