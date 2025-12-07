@interface UIApplicationIsWidgetServer
@end

@implementation UIApplicationIsWidgetServer

void ___UIApplicationIsWidgetServer_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  isEqualToString = objc_msgSend_isEqualToString_(v0);

  if (isEqualToString)
  {
    byte_1EA992DAF = 1;
  }
}

@end