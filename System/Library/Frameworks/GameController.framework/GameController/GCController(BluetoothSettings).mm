@interface GCController(BluetoothSettings)
@end

@implementation GCController(BluetoothSettings)

+ (void)_settingsSupportedForBTClassicDevice:()BluetoothSettings settingsStore:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_ERROR, "[GCController doesBTDeviceSupportGamepadSettings:] received invalid BT address data: %@", &v2, 0xCu);
}

@end