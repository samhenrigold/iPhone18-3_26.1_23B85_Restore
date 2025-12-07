@interface GKBluetoothSupport
+ (int)_determineBluetoothStatus;
+ (int)bluetoothStatus;
+ (void)_btPowerStateChanged:(id)changed;
+ (void)_determineBluetoothStatus;
+ (void)turnBluetoothOn;
@end

@implementation GKBluetoothSupport

+ (int)bluetoothStatus
{
  result = __bluetoothStatus;
  if (!__bluetoothStatus)
  {
    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      __bluetoothStatus = [self _determineBluetoothStatus];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __37__GKBluetoothSupport_bluetoothStatus__block_invoke;
      block[3] = &unk_279682BA8;
      block[4] = self;
      dispatch_sync(MEMORY[0x277D85CD0], block);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v5 = *MEMORY[0x277CF3230];
    [defaultCenter addObserver:self selector:sel__btPowerStateChanged_ name:*MEMORY[0x277CF3230] object:0];
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
    return __bluetoothStatus;
  }

  return result;
}

void *__37__GKBluetoothSupport_bluetoothStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineBluetoothStatus];
  __bluetoothStatus = result;
  return result;
}

+ (void)turnBluetoothOn
{
  v2 = [objc_msgSend(self "_bluetoothManagerClass")];

  [v2 setPowered:1];
}

+ (int)_determineBluetoothStatus
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [objc_msgSend(self "_bluetoothManagerClass")];
  if (v3)
  {
    v4 = v3;
    if ([v3 available])
    {
      v5 = [v4 localDeviceSupportsService:2048];
      if (v5 != -1)
      {
        if (v5)
        {
          powered = [v4 powered];
          if (powered)
          {
            v6 = 5;
          }

          else
          {
            v6 = 4;
          }

          if (VRTraceGetErrorLogLevelForModule() >= 7)
          {
            v14 = VRTraceErrorLogLevelToCSTR();
            v15 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              v16 = @"OFF";
              v18 = 136315906;
              v19 = v14;
              v20 = 2080;
              v21 = "+[GKBluetoothSupport _determineBluetoothStatus]";
              if (powered)
              {
                v16 = @"ON";
              }

              v22 = 1024;
              v23 = 142;
              v24 = 2112;
              v25 = v16;
              _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d determined bluetooth is %@", &v18, 0x26u);
            }
          }
        }

        else
        {
          if (VRTraceGetErrorLogLevelForModule() >= 3)
          {
            VRTraceErrorLogLevelToCSTR();
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
            {
              +[GKBluetoothSupport _determineBluetoothStatus];
            }
          }

          return 1;
        }

        return v6;
      }

      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v6 = 3;
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          +[GKBluetoothSupport _determineBluetoothStatus];
        }

        return v6;
      }

      return 3;
    }

    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        +[GKBluetoothSupport _determineBluetoothStatus];
      }
    }

    return 0;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        +[(GKBluetoothSupport *)v7];
      }
    }

    v9 = [objc_msgSend(objc_opt_class() "_bluetoothManagerClass")];
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    if (v9 == 9)
    {
      if (ErrorLogLevelForModule >= 3)
      {
        VRTraceErrorLogLevelToCSTR();
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          +[GKBluetoothSupport _determineBluetoothStatus];
        }
      }

      return 2;
    }

    else
    {
      if (ErrorLogLevelForModule < 3)
      {
        return 3;
      }

      v6 = 3;
      v11 = VRTraceErrorLogLevelToCSTR();
      v12 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        +[(GKBluetoothSupport *)v11];
      }
    }
  }

  return v6;
}

+ (void)_btPowerStateChanged:(id)changed
{
  if (![MEMORY[0x277CCACC8] isMainThread])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__GKBluetoothSupport__btPowerStateChanged___block_invoke;
    block[3] = &unk_279682BA8;
    block[4] = self;
    dispatch_sync(MEMORY[0x277D85CD0], block);
    if (!__bluetoothStatus)
    {
      return;
    }

    goto LABEL_5;
  }

  __bluetoothStatus = [self _determineBluetoothStatus];
  if (__bluetoothStatus)
  {
LABEL_5:
    [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  }
}

void *__43__GKBluetoothSupport__btPowerStateChanged___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _determineBluetoothStatus];
  __bluetoothStatus = result;
  return result;
}

+ (void)_determineBluetoothStatus
{
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_2_1(&dword_24E50C000, v0, v1, " [%s] %s:%d Device does not have Bluetooth.", v2, v3, v4, v5);
}

@end