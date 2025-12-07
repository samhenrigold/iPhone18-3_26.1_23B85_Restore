@interface BluetoothEndpointUpdateWithDescription
@end

@implementation BluetoothEndpointUpdateWithDescription

void ___BluetoothEndpointUpdateWithDescription_block_invoke(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);

  CFRelease(v2);
}

@end