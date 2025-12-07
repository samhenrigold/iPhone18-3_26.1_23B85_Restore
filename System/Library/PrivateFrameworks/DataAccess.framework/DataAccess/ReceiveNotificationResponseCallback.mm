@interface ReceiveNotificationResponseCallback
@end

@implementation ReceiveNotificationResponseCallback

void ___ReceiveNotificationResponseCallback_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

@end