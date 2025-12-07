@interface HandleReceiverUINotification
@end

@implementation HandleReceiverUINotification

void ___HandleReceiverUINotification_block_invoke(uint64_t a1, int a2)
{
  if (gLogCategory_AirPlayReceiverPlatform <= 50 && (gLogCategory_AirPlayReceiverPlatform != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverPlatform, "void _HandleReceiverUINotification(CMNotificationCenterRef, const void *, CFStringRef, const void *, CFTypeRef)_block_invoke", 33554482, "[%{ptr}] Stopping session on audio stop event.\n", *(a1 + 32));
  }

  AirPlayReceiverSessionControl(*(a1 + 32), a2, @"sessionDied", 0, 0, 0);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

@end