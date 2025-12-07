@interface UISheetIndexOfDetentWithIdentifier
@end

@implementation UISheetIndexOfDetentWithIdentifier

uint64_t ___UISheetIndexOfDetentWithIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = v4;
  v7 = v6;
  if (v5 == v6)
  {
    isEqual = 1;
  }

  else
  {
    isEqual = 0;
    if (v5 && v6)
    {
      isEqual = objc_msgSend_isEqual_(v5);
    }
  }

  return isEqual;
}

@end