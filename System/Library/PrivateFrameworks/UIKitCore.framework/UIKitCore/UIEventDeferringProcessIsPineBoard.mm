@interface UIEventDeferringProcessIsPineBoard
@end

@implementation UIEventDeferringProcessIsPineBoard

void ___UIEventDeferringProcessIsPineBoard_block_invoke(uint64_t a1)
{
  v2 = _UIMainBundleIdentifier();
  if (objc_msgSend_isEqualToString_(v2))
  {
    isEqualToString = 1;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v2);
  }

  byte_1ED49FF29 = isEqualToString;
}

@end