@interface UIApplicationIsAppleAppOrTestingHarness
@end

@implementation UIApplicationIsAppleAppOrTestingHarness

void ___UIApplicationIsAppleAppOrTestingHarness_block_invoke()
{
  v0 = +[UIApplication displayIdentifier];
  byte_1EA9946E4 = [v0 hasPrefix:@"com.apple."];

  v1 = +[UIApplication displayIdentifier];
  byte_1EA9946E5 = objc_msgSend_isEqualToString_(v1);
}

@end