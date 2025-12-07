@interface WFConfiguredSystemAction
@end

@implementation WFConfiguredSystemAction

uint64_t __59__WFConfiguredSystemAction_LNValue__systemActionWithValue___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 identifier];
  v3 = v2;
  if (v2 == @"encodedSystemAction")
  {
    isEqualToString = 1;
  }

  else if (v2)
  {
    isEqualToString = objc_msgSend_isEqualToString_(v2);
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

@end