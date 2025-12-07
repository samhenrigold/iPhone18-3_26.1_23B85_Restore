@interface UIApplicationIsKeyboardMediaService
@end

@implementation UIApplicationIsKeyboardMediaService

void ___UIApplicationIsKeyboardMediaService_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  isEqualToString = objc_msgSend_isEqualToString_(v0);

  if (isEqualToString)
  {
    byte_1EA992DAE = 1;
  }
}

@end