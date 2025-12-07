@interface UIApplicationProcessIsUIKitester
@end

@implementation UIApplicationProcessIsUIKitester

void ___UIApplicationProcessIsUIKitester_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  byte_1EA992DBD = objc_msgSend_isEqualToString_(v0);
}

@end