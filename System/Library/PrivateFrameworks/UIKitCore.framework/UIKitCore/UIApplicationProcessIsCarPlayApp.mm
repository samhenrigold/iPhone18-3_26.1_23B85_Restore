@interface UIApplicationProcessIsCarPlayApp
@end

@implementation UIApplicationProcessIsCarPlayApp

void ___UIApplicationProcessIsCarPlayApp_block_invoke()
{
  if ([UIApp isFrontBoard])
  {
    v0 = _UIMainBundleIdentifier();
    byte_1EA992DC2 = objc_msgSend_isEqualToString_(v0);
  }

  else
  {
    byte_1EA992DC2 = 0;
  }
}

@end