@interface _TSF_TSDUserFilteredClock
+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier;
- (BOOL)addTimestampWithMachAbsolute:(unint64_t)absolute andDomainTime:(unint64_t)time error:(id *)error;
- (BOOL)isAdaptive;
- (BOOL)resetFilterToNominal:(BOOL)nominal error:(id *)error;
- (BOOL)resetSyncServiceWithError:(id *)error;
- (unint64_t)nominalDomainInterval;
- (unint64_t)nominalMachInterval;
- (unsigned)filterShift;
@end

@implementation _TSF_TSDUserFilteredClock

+ (id)iokitMatchingDictionaryForClockIdentifier:(unint64_t)identifier
{
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  return v3;
}

- (BOOL)addTimestampWithMachAbsolute:(unint64_t)absolute andDomainTime:(unint64_t)time error:(id *)error
{
  connection = [(_TSF_TSDKernelClock *)self connection];
  v6 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v6 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock addTimestampWithMachAbsolute:andDomainTime:error:];
  }

  return v6;
}

- (BOOL)resetSyncServiceWithError:(id *)error
{
  connection = [(_TSF_TSDKernelClock *)self connection];
  v4 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v4 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock resetSyncServiceWithError:];
  }

  return v4;
}

- (BOOL)resetFilterToNominal:(BOOL)nominal error:(id *)error
{
  connection = [(_TSF_TSDKernelClock *)self connection];
  v5 = [connection callMethodWithSelector:? scalarInputs:? scalarInputCount:? scalarOutputs:? scalarOutputCount:? error:?];

  if ((v5 & 1) == 0)
  {
    [_TSF_TSDUserFilteredClock resetFilterToNominal:error:];
  }

  return v5;
}

- (unint64_t)nominalMachInterval
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unint64_t)nominalDomainInterval
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    unsignedLongLongValue = [v3 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (unsigned)filterShift
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

- (BOOL)isAdaptive
{
  service = [(_TSF_TSDKernelClock *)self service];
  v3 = [service iodPropertyForKey:?];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)addTimestampWithMachAbsolute:andDomainTime:error:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)resetSyncServiceWithError:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v0, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v1, v2, v3, v4, v5);
  }
}

- (void)resetFilterToNominal:error:.cold.1()
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