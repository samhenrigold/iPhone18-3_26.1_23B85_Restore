@interface NCNotificationListInsetMarginHorizontal
@end

@implementation NCNotificationListInsetMarginHorizontal

void ___NCNotificationListInsetMarginHorizontal_block_invoke()
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  if ([v2 userInterfaceIdiom])
  {
  }

  else
  {
    v4.origin.x = NCMainScreenReferenceBounds(0, v0);
    Width = CGRectGetWidth(v4);

    if (Width >= 393.0)
    {
      _NCNotificationListInsetMarginHorizontal___insetMarginHorizontal = 0x402C000000000000;
    }
  }
}

@end