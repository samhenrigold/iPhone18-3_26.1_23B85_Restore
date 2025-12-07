@interface UIApplicationProcessIsSpringBoard
@end

@implementation UIApplicationProcessIsSpringBoard

void ___UIApplicationProcessIsSpringBoard_block_invoke()
{
  if ([UIApp isFrontBoard])
  {
    v0 = _UIMainBundleIdentifier();
    byte_1EA992DB9 = objc_msgSend_isEqualToString_(v0);
  }

  else
  {
    byte_1EA992DB9 = 0;
  }
}

@end