@interface HandleConnectionDemise
@end

@implementation HandleConnectionDemise

void __figXPCConnection_HandleConnectionDemise_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, figXPCConnection_DeadConnectionObjectApplierFunction, *(a1 + 40));
  }

  v3 = *(*(*(a1 + 40) + 16) + 56);
  if (v3)
  {
    v3();
  }

  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, @"xpcConnectionNotification_ServerDied", *(a1 + 40), 0, 0, v5, v6, v7, v9);
  CFRelease(*(a1 + 40));
  v8 = *(a1 + 32);
  if (v8)
  {

    CFRelease(v8);
  }
}

@end