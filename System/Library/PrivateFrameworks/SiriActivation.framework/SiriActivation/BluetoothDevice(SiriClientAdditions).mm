@interface BluetoothDevice(SiriClientAdditions)
- (BOOL)ac_isEyesFree;
- (uint64_t)ac_isBluetoothVehicle;
@end

@implementation BluetoothDevice(SiriClientAdditions)

- (BOOL)ac_isEyesFree
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = [self getServiceSetting:1 key:@"BT_KEY_SIRI_EYESFREE_MODE"];
  if ([v2 BOOLValue])
  {

    return 1;
  }

  v3 = AFPreferencesAlwaysEyesFreeEnabled();

  if (v3)
  {
    return 1;
  }

  if (![self isServiceSupported:128])
  {
    return 0;
  }

  v10 = 0;
  v11[0] = 0;
  *(v11 + 7) = 0;
  [self device];
  if (BTDeviceGetAddressString())
  {
    return 0;
  }

  v9 = 0;
  *bytes = 0;
  if (BTDeviceAddressFromString())
  {
    return 0;
  }

  v6 = CFDataCreate(0, bytes, 6);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v4 = IAPBluetoothDeviceMode() == 2;
  CFRelease(v7);
  return v4;
}

- (uint64_t)ac_isBluetoothVehicle
{
  [self device];
  DeviceType = BTDeviceGetDeviceType();
  result = 0;
  if (!DeviceType)
  {
    return AFPreferencesAlwaysEyesFreeEnabled();
  }

  return result;
}

@end