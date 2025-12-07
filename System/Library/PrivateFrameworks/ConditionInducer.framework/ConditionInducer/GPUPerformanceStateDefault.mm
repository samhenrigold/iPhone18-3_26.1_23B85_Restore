@interface GPUPerformanceStateDefault
+ (BOOL)supportsConsistentStateDevice:(id)device;
+ (id)consistentStateDevice;
+ (id)perfLevelEnumToGPUStateStringKey:(unsigned int)key;
+ (unsigned)ioAccelerator;
- (BOOL)_acquireLock;
- (BOOL)_setConsistentPerformanceLevel;
- (BOOL)active;
- (BOOL)isDestructive;
- (BOOL)isInternalOnly;
- (BOOL)setUp;
- (GPUPerformanceStateDefault)initWithGPUPerformanceState:(unsigned int)state;
- (id)identifierName;
- (id)userFriendlyName;
- (void)_cleanup;
- (void)_dumpCurrentState:(id)state;
- (void)tearDown;
@end

@implementation GPUPerformanceStateDefault

+ (unsigned)ioAccelerator
{
  v2 = *MEMORY[0x277CD28A0];
  v3 = IOServiceMatching("IOAccelerator");
  result = IOServiceGetMatchingService(v2, v3);
  if (!result)
  {
    v5 = IOServiceMatching("IOAcceleratorES");

    return IOServiceGetMatchingService(v2, v5);
  }

  return result;
}

+ (BOOL)supportsConsistentStateDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

+ (id)consistentStateDevice
{
  v2 = MTLCreateSystemDefaultDevice();
  if ([GPUPerformanceStateDefault supportsConsistentStateDevice:v2])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)perfLevelEnumToGPUStateStringKey:(unsigned int)key
{
  if (key < 4)
  {
    return off_278DF81F8[key];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    +[GPUPerformanceStateDefault perfLevelEnumToGPUStateStringKey:];
  }

  return 0;
}

- (id)identifierName
{
  v8 = 0;
  v2 = @"GPUPerformanceState";
  v3 = [COConditionSession prepareInfoDictForBuiltInCondition:@"GPUPerformanceState" error:&v8];
  v4 = [v3 objectForKey:@"ConditionIdentifierName"];
  v5 = v4;
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v2 = v4;
  }

  return v2;
}

- (id)userFriendlyName
{
  v6 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"GPUPerformanceState" error:&v6];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKey:@"ConditionUserFriendlyName"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isDestructive
{
  v5 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"GPUPerformanceState" error:&v5];
  v3 = v2;
  if (v2)
  {
    [v2 valueForKey:@"ConditionIsDestructive"];
  }

  return 1;
}

- (BOOL)isInternalOnly
{
  v5 = 0;
  v2 = [COConditionSession prepareInfoDictForBuiltInCondition:@"GPUPerformanceState" error:&v5];
  v3 = v2;
  if (v2)
  {
    [v2 valueForKey:@"ConditionIsInternalOnly"];
  }

  return 1;
}

- (GPUPerformanceStateDefault)initWithGPUPerformanceState:(unsigned int)state
{
  v12 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = GPUPerformanceStateDefault;
  v4 = [(COCondition *)&v9 init];
  v5 = v4;
  if (v4)
  {
    if (!state)
    {
      [GPUPerformanceStateDefault initWithGPUPerformanceState:];
    }

    v4->_desiredGPUPerformanceState = state;
    v4->_acceleratorService = +[GPUPerformanceStateDefault ioAccelerator];
    v5->_performanceLevel = state;
    v6 = objc_opt_new();
    applePMPPerfStateControl = v5->_applePMPPerfStateControl;
    v5->_applePMPPerfStateControl = v6;

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      stateCopy = state;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Set Performance State: %lu", buf, 0xCu);
    }
  }

  return v5;
}

- (BOOL)_acquireLock
{
  outputStruct = 256;
  v2 = CallIO(self->_connection, &outputStruct, &outputStruct, "ConsistentPerfState_Lock");
  if (!v2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [GPUPerformanceStateDefault _acquireLock];
  }

  return v2;
}

- (void)_cleanup
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.dt.gputools.gpuperfstate"];
  [v3 removeObjectForKey:@"gpuperfstate"];
  consistentDevice = self->_consistentDevice;
  if (consistentDevice)
  {
    [(AGXConsistentStateDevice *)consistentDevice disableConsistentPerfState];
LABEL_8:
    [(ApplePMPPerfStateControl *)self->_applePMPPerfStateControl tearDown];
    goto LABEL_9;
  }

  connection = self->_connection;
  if (connection)
  {
    outputStruct = 0;
    if (!CallIO(connection, &outputStruct, &outputStruct, "ConsistentPerfState_Unlock") && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [GPUPerformanceStateDefault _cleanup];
    }

    IOServiceClose(self->_connection);
    self->_connection = 0;
    goto LABEL_8;
  }

LABEL_9:
}

- (BOOL)_setConsistentPerformanceLevel
{
  consistentDevice = self->_consistentDevice;
  if (!consistentDevice)
  {
    performanceLevel = self->_performanceLevel;
    outputStruct = 1;
    BYTE1(outputStruct) = performanceLevel;
    if (!CallIO(self->_connection, &outputStruct, &outputStruct, "ConsistentPerfState_Set"))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [GPUPerformanceStateDefault _setConsistentPerformanceLevel];
      }

      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (([(AGXConsistentStateDevice *)consistentDevice enableConsistentPerfState:self->_performanceLevel]& 1) != 0)
  {
LABEL_6:
    LOBYTE(v4) = 1;
    return v4;
  }

  v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
  if (v4)
  {
    [GPUPerformanceStateDefault _setConsistentPerformanceLevel];
LABEL_9:
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)setUp
{
  v11 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Starting Setup - %@ Condition", &v9, 0xCu);
  }

  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.dt.gputools.gpuperfstate"];
  [v3 setInteger:self->_performanceLevel forKey:@"gpuperfstate"];
  v4 = +[GPUPerformanceStateDefault consistentStateDevice];
  consistentDevice = self->_consistentDevice;
  self->_consistentDevice = v4;

  if (!self->_consistentDevice)
  {
    if (IOServiceOpen(self->_acceleratorService, *MEMORY[0x277D85F48], 1u, &self->_connection))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [GPUPerformanceStateDefault setUp];
      }

      goto LABEL_12;
    }

    if (![(GPUPerformanceStateDefault *)self _acquireLock])
    {
      goto LABEL_13;
    }
  }

  if (![(GPUPerformanceStateDefault *)self _setConsistentPerformanceLevel])
  {
LABEL_12:
    [(GPUPerformanceStateDefault *)self _cleanup];
LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Finished Setup - %@ Condition", &v9, 0xCu);
  }

  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[GPUPerformanceStateDefault setUp]"];
  [(GPUPerformanceStateDefault *)self _dumpCurrentState:v6];

  if ([(ApplePMPPerfStateControl *)self->_applePMPPerfStateControl setupConnectionForPowerState:self->_performanceLevel - 1])
  {
    v7 = 1;
  }

  else
  {
    v7 = 1;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      selfCopy3 = self;
      _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Unable to Setup PMP %@ Condition", &v9, 0xCu);
    }
  }

LABEL_14:

  return v7;
}

- (void)_dumpCurrentState:(id)state
{
  v15 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  consistentDevice = self->_consistentDevice;
  if (consistentDevice)
  {
    v6 = [(AGXConsistentStateDevice *)consistentDevice getConsistentPerfStateInfoAndReset:0];
    if (v6)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v10 = stateCopy;
        v11 = 2112;
        *v12 = v6;
        _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ Consistent Perf State Status: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      [GPUPerformanceStateDefault _dumpCurrentState:];
    }
  }

  else
  {
    connection = self->_connection;
    if (connection)
    {
      outputStruct = 2;
      if (CallIO(connection, &outputStruct, &outputStruct, "ConsistentPerfState_Get"))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v10 = stateCopy;
          v11 = 1024;
          *v12 = BYTE2(outputStruct);
          *&v12[4] = 1024;
          *&v12[6] = BYTE3(outputStruct);
          v13 = 1024;
          v14 = BYTE4(outputStruct);
          _os_log_impl(&dword_243E0F000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%@ Consistent Perf State Status: is_enabled=%u was_maintained=%u level=%u", buf, 0x1Eu);
        }
      }

      else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        [GPUPerformanceStateDefault _dumpCurrentState:];
      }
    }
  }
}

- (void)tearDown
{
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[GPUPerformanceStateDefault tearDown]"];
  [(GPUPerformanceStateDefault *)self _dumpCurrentState:v3];

  [(GPUPerformanceStateDefault *)self _cleanup];
}

- (BOOL)active
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.dt.gputools.gpuperfstate"];
  if (!self->_performanceLevel)
  {
    [GPUPerformanceStateDefault active];
  }

  v4 = v3;
  v5 = self->_performanceLevel == [v3 integerForKey:@"gpuperfstate"];

  return v5;
}

@end