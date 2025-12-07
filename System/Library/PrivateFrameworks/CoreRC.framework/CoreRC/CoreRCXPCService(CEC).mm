@interface CoreRCXPCService(CEC)
@end

@implementation CoreRCXPCService(CEC)

- (uint64_t)_performDeckControlSetDeckStatusAsync:()CEC forDevice:allowRemoteDevice:reply:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_class();
  v6 = CoreCECDeckInfoString(a2);
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(CEC) _performDeckControlSetDeckStatusAsync:forDevice:allowRemoteDevice:reply:]", 10, "%@ performDeckControlSetDeckStatusAsync: %@ forDevice: %@ reply: called\n", v5, v6, a3);
}

- (void)_performDeckControlSetDeckStatusAsync:()CEC forDevice:allowRemoteDevice:reply:.cold.2(void *a1, const char *a2)
{
  result = OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  *a1 = result;
  return result;
}

- (uint64_t)_performSetAudioMuteStatus:()CEC withDeviceAsync:allowRemoteDevice:reply:.cold.1(uint64_t a1, char a2)
{
  v3 = objc_opt_class();
  v4 = "NO";
  if (a2)
  {
    v4 = "YES";
  }

  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(CEC) _performSetAudioMuteStatus:withDeviceAsync:allowRemoteDevice:reply:]", 10, "%@ performSetAudioMuteStatus:withDeviceAsync:reply: called (%s)\n", v3, v4);
}

- (uint64_t)queryLocalInstanceAsync:()CEC bus:reply:.cold.1(uint64_t a1, const char *a2)
{
  v3 = OUTLINED_FUNCTION_4_1(MEMORY[0x277CCA9B8], a2, *MEMORY[0x277CCA590]);
  v4 = *(a1 + 16);

  return v4(a1, 0, v3);
}

- (uint64_t)cecDevice:()CEC requestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_class();
  v6 = CoreCECActivationStatusString(a2);
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(CEC) cecDevice:requestAudioReturnChannelStatusChangeTo:didFinishWithResult:error:]", 10, "NOTIFY %@ cecDevice: %@ requestAudioReturnChannelStatusChangeTo: %@\n", v5, a3, v6);
}

- (uint64_t)cecDevice:()CEC requestSystemAudioModeStatusChangeTo:didFinishWithResult:error:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_class();
  v6 = CoreCECActivationStatusString(a2);
  return LogPrintF(&gLogCategory_CoreRCXPC, "[CoreRCXPCService(CEC) cecDevice:requestSystemAudioModeStatusChangeTo:didFinishWithResult:error:]", 10, "NOTIFY %@ cecDevice: %@ requestSystemAudioModeStatusChangeTo: %@\n", v5, a3, v6);
}

@end