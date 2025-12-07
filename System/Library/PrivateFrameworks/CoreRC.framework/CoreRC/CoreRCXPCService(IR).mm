@interface CoreRCXPCService(IR)
@end

@implementation CoreRCXPCService(IR)

- (uint64_t)_setOSDNameAsync:()IR forDevice:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _setOSDNameAsync:forDevice:reply:]", 10, "%@ %s called\n", v2, v3);
}

- (uint64_t)_setPairStateAsync:()IR forAppleRemote:reply:.cold.1(uint64_t a1, const char *a2, uint64_t a3)
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _setPairStateAsync:forAppleRemote:reply:]", 10, "%@ %s called, inDevice:%@\n", v5, Name, a3);
}

- (void)_setPairStateAsync:()IR forAppleRemote:reply:.cold.3(void *a1)
{
  OUTLINED_FUNCTION_2_3();
  result = [v2 errorWithDomain:? code:? userInfo:?];
  *a1 = result;
  return result;
}

- (uint64_t)addDeviceOnBusAsync:()IR withType:matching:reply:.cold.1(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v2 = OUTLINED_FUNCTION_0_4();

  return v3(v2, 0);
}

- (uint64_t)updateMappingWithSessionOwningDeviceAsync:()IR forTargetDevice:reply:.cold.1(uint64_t a1, const char *a2)
{
  OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v2 = OUTLINED_FUNCTION_0_4();

  return v3(v2, 0);
}

- (uint64_t)_deleteDeviceAsync:()IR fromBus:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _deleteDeviceAsync:fromBus:reply:]", 10, "%@ %s called\n", v2, v3);
}

- (uint64_t)_sendCommandAsync:()IR fromDevice:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _sendCommandAsync:fromDevice:reply:]", 10, "%@ %s called\n", v2, v3);
}

- (uint64_t)_clearAllStoredCommandsFromDeviceAsync:()IR reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _clearAllStoredCommandsFromDeviceAsync:reply:]", 10, "%@ %s called\n", v2, v3);
}

- (uint64_t)_setCommandAsync:()IR target:source:forButtonCombination:delay:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _setCommandAsync:target:source:forButtonCombination:delay:reply:]", 10, "%@ %s called\n", v2, v3);
}

- (uint64_t)_changeButtonCombinationAsync:()IR delay:enabled:forDevice:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _changeButtonCombinationAsync:delay:enabled:forDevice:reply:]", 10, "%@ %s called\n", v2, v3);
}

- (uint64_t)_startLearningCommandAsync:()IR withDevice:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _startLearningCommandAsync:withDevice:reply:]", 10, "%@ %s called\n", v2, v3);
}

- (uint64_t)_endLearningWithDeviceAsync:()IR reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _endLearningWithDeviceAsync:reply:]", 10, "%@ %s called\n", v2, v3);
}

- (uint64_t)_addMappingWithDeviceAsync:()IR withProtocolID:options:commandToMap:command:repeat:reply:.cold.1(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v3 = OUTLINED_FUNCTION_4_2();
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(IR) _addMappingWithDeviceAsync:withProtocolID:options:commandToMap:command:repeat:reply:]", 10, "%@ %s called\n", v2, v3);
}

@end