@interface UIFontPickerPersistToRecentsForSuite
@end

@implementation UIFontPickerPersistToRecentsForSuite

void ___UIFontPickerPersistToRecentsForSuite_block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [_UIFontPickerFontInfo infoWithName:?];
  if ([v3 isFontFamilyAvailable])
  {
    v4 = [v3 familyName];
    v5 = [*(a1 + 32) familyName];
    isEqual = objc_msgSend_isEqual_(v4);

    if ((isEqual & 1) == 0)
    {
      [*(a1 + 40) addObject:v7];
    }
  }
}

@end