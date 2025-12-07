@interface TelephonyUSBDeviceRegistrationHandleDestroy
@end

@implementation TelephonyUSBDeviceRegistrationHandleDestroy

void ___TelephonyUSBDeviceRegistrationHandleDestroy_block_invoke(uint64_t a1)
{
  v2 = "???";
  if (*(a1 + 32))
  {
    v2 = *(a1 + 32);
  }

  _TelephonyUtilDebugPrint("usb", "%s::%p::%s: \n", v2, *(a1 + 40), "_TelephonyUSBDeviceRegistrationHandleDestroy_block_invoke");
  v3 = *(a1 + 48);

  free(v3);
}

@end