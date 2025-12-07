@interface BluetoothEndpoint
@end

@implementation BluetoothEndpoint

void __BluetoothEndpoint_Disassociate_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  v3 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v3)
  {
    v3(v2);
  }

  v4 = *(a1 + 32);

  CFRelease(v4);
}

@end