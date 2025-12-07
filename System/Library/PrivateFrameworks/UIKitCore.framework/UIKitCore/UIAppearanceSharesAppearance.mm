@interface UIAppearanceSharesAppearance
@end

@implementation UIAppearanceSharesAppearance

void *___UIAppearanceSharesAppearance_block_invoke()
{
  v0 = _UIMainBundleIdentifier();
  result = objc_msgSend_isEqualToString_(v0);
  byte_1ED49E5DB = result ^ 1;
  return result;
}

@end