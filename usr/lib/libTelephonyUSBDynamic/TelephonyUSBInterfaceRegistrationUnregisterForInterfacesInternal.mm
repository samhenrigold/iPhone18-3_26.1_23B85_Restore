@interface TelephonyUSBInterfaceRegistrationUnregisterForInterfacesInternal
@end

@implementation TelephonyUSBInterfaceRegistrationUnregisterForInterfacesInternal

void ___TelephonyUSBInterfaceRegistrationUnregisterForInterfacesInternal_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (v3)
  {
    if (*v2)
    {
      _TelephonyUtilDebugPrint("usb", "%s::%p::%s: Removing Source %p\n", (v2 + 48), *(v2 + 56), "_TelephonyUSBInterfaceRegistrationUnregisterForInterfacesInternal_block_invoke", v3);
      CFRunLoopRemoveSource(**(a1 + 32), *(*(a1 + 32) + 8), *MEMORY[0x29EDB8FC0]);
      v3 = *(*(a1 + 32) + 8);
    }

    CFRelease(v3);
    *(*(a1 + 32) + 8) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 16);
  if (v4)
  {
    IONotificationPortDestroy(v4);
    *(*(a1 + 32) + 16) = 0;
  }
}

@end