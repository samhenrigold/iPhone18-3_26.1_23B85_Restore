@interface CMSUtility
@end

@implementation CMSUtility

void __CMSUtility_PostInterruptionCommandNotification_block_invoke(uint64_t a1)
{
  CMSMUtility_PostNotificationToSession(*(a1 + 32), @"Interruption", *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
}

@end