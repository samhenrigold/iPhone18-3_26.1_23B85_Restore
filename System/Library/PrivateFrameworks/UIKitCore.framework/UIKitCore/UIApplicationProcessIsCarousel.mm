@interface UIApplicationProcessIsCarousel
@end

@implementation UIApplicationProcessIsCarousel

void ___UIApplicationProcessIsCarousel_block_invoke()
{
  if ([UIApp isFrontBoard])
  {
    v0 = _UIMainBundleIdentifier();
    byte_1EA992DBE = objc_msgSend_isEqualToString_(v0);
  }

  else
  {
    byte_1EA992DBE = 0;
  }
}

@end