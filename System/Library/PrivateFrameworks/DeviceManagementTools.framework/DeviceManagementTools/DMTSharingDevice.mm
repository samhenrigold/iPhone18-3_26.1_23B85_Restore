@interface DMTSharingDevice
+ (BOOL)deviceIsPairedAccordingToFlags:(unsigned int)flags;
+ (unint64_t)devicePairingStateFromSFPairState:(unsigned int)state;
- (DMTSharingDevice)initWithDevice:(id)device;
@end

@implementation DMTSharingDevice

- (DMTSharingDevice)initWithDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  model = [deviceCopy model];
  bleDevice = [deviceCopy bleDevice];
  rssi = [bleDevice rssi];
  v10 = +[DMTSharingDevice deviceIsPairedAccordingToFlags:](DMTSharingDevice, "deviceIsPairedAccordingToFlags:", [deviceCopy deviceFlags]);
  v11 = +[DMTSharingDevice devicePairingStateFromSFPairState:](DMTSharingDevice, "devicePairingStateFromSFPairState:", [deviceCopy systemPairState]);
  v12 = [MEMORY[0x277CBEAA8] now];
  v15.receiver = self;
  v15.super_class = DMTSharingDevice;
  v13 = [(CATSharingDevice *)&v15 initWithIdentifier:identifier modelIdentifier:model RSSI:rssi paired:v10 pairingState:v11 detectionTime:v12];

  if (v13)
  {
    objc_storeStrong(&v13->_sharingDevice, device);
  }

  return v13;
}

+ (BOOL)deviceIsPairedAccordingToFlags:(unsigned int)flags
{
  v4 = _DMTLogGeneral_7(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [DMTSharingDevice deviceIsPairedAccordingToFlags:flags];
  }

  v6 = _DMTLogGeneral_7(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v8 = _DMTLogGeneral_7(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v10 = _DMTLogGeneral_7(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v12 = _DMTLogGeneral_7(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v14 = _DMTLogGeneral_7(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v16 = _DMTLogGeneral_7(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v18 = _DMTLogGeneral_7(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v20 = _DMTLogGeneral_7(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v22 = _DMTLogGeneral_7(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v24 = _DMTLogGeneral_7(v23);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v26 = _DMTLogGeneral_7(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v28 = _DMTLogGeneral_7(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v30 = _DMTLogGeneral_7(v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  v32 = _DMTLogGeneral_7(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    +[DMTSharingDevice deviceIsPairedAccordingToFlags:];
  }

  return (flags >> 10) & 1;
}

+ (unint64_t)devicePairingStateFromSFPairState:(unsigned int)state
{
  v3 = *&state;
  v4 = _DMTLogGeneral_7(self);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3 <= 19)
  {
    if (!v3)
    {
      if (v5)
      {
        +[DMTSharingDevice devicePairingStateFromSFPairState:];
      }

      goto LABEL_16;
    }

    if (v3 == 10)
    {
      if (v5)
      {
        +[DMTSharingDevice devicePairingStateFromSFPairState:];
      }

      v6 = 1;
      goto LABEL_20;
    }

LABEL_12:
    if (v5)
    {
      [DMTSharingDevice devicePairingStateFromSFPairState:v3];
    }

LABEL_16:
    v6 = 0;
    goto LABEL_20;
  }

  if (v3 == 20)
  {
    if (v5)
    {
      +[DMTSharingDevice devicePairingStateFromSFPairState:];
    }

    v6 = 2;
  }

  else
  {
    if (v3 != 30)
    {
      goto LABEL_12;
    }

    if (v5)
    {
      +[DMTSharingDevice devicePairingStateFromSFPairState:];
    }

    v6 = 3;
  }

LABEL_20:

  return v6;
}

+ (void)deviceIsPairedAccordingToFlags:(int)a1 .cold.1(int a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithBool:a1 == 0];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v2, v3, "SFDeviceFlagsNone: %{public}@", v4, v5, v6, v7);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.2()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsMyMe: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.3()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsFamily: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.4()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsFriend: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.5()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsMyiCloud: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.6()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsPeerMe: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.7()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsRangingCapable: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.8()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsSharedHome: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.9()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsAirDropUsable: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.10()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsResume: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.11()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsDeviceClose: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.12()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsPaired: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.13()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsShareAudio: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.14()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsTempPaired: %{public}@", v3, v4, v5, v6);
}

+ (void)deviceIsPairedAccordingToFlags:.cold.15()
{
  v0 = [OUTLINED_FUNCTION_2_2(MEMORY[0x277CCABB0]) numberWithBool:?];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v1, v2, "SFDeviceFlagsEveryoneMode: %{public}@", v3, v4, v5, v6);
}

+ (void)devicePairingStateFromSFPairState:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_1(&dword_24891B000, v2, v3, "Unknown pair state: %{public}@, Sharing has either violated their API contract or added new states.", v4, v5, v6, v7);
}

@end