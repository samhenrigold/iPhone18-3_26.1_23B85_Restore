@interface TelephonyUSBDeviceRegistrationHandlePoll
@end

@implementation TelephonyUSBDeviceRegistrationHandlePoll

uint64_t ___TelephonyUSBDeviceRegistrationHandlePoll_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: source %p\n", (v2 + 48), *(v2 + 56), "_TelephonyUSBDeviceRegistrationCheckDeviceAdded", *(v2 + 8));
  (*(*(v2 + 32) + 16))();
  v3 = *(a1 + 32);
  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: source %p\n", (v3 + 48), *(v3 + 56), "_TelephonyUSBDeviceRegistrationCheckDeviceRemoved", *(v3 + 8));
  v4 = *(*(v3 + 40) + 16);

  return v4();
}

@end