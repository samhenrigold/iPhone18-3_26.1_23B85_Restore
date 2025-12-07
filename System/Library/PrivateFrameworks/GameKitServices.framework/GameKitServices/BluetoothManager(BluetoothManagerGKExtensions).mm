@interface BluetoothManager(BluetoothManagerGKExtensions)
- (uint64_t)localDeviceSupportsService:()BluetoothManagerGKExtensions;
@end

@implementation BluetoothManager(BluetoothManagerGKExtensions)

- (uint64_t)localDeviceSupportsService:()BluetoothManagerGKExtensions
{
  if (!*(self + *MEMORY[0x277CF3250]))
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [BluetoothManager(BluetoothManagerGKExtensions) localDeviceSupportsService:];
      }
    }

    return -1;
  }

  if (BTLocalDeviceSupportsService())
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [BluetoothManager(BluetoothManagerGKExtensions) localDeviceSupportsService:];
      }
    }

    return -1;
  }

  return 0;
}

- (void)localDeviceSupportsService:()BluetoothManagerGKExtensions .cold.1()
{
  v10 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_17();
  v4 = v0;
  v5 = "[BluetoothManager(BluetoothManagerGKExtensions) localDeviceSupportsService:]";
  v6 = 1024;
  v7 = 41;
  v8 = 1024;
  v9 = v1;
  _os_log_error_impl(&dword_24E50C000, v2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Could not check bluetooth to see if service supported. %d", v3, 0x22u);
}

- (void)localDeviceSupportsService:()BluetoothManagerGKExtensions .cold.2()
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d no local BT device in the BT manager.", v2, v3, v4, v5);
}

@end