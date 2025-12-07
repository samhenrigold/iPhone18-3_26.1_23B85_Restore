@interface UITextChoiceAccelerationBubble
@end

@implementation UITextChoiceAccelerationBubble

uint64_t __56___UITextChoiceAccelerationBubble_updateViewForOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) candidate];
  v5 = [v4 input];
  isEqualToString = objc_msgSend_isEqualToString_(v5);

  if (isEqualToString)
  {
    v7 = 1;
  }

  else
  {
    v8 = [*(a1 + 32) replacement];
    v9 = [v8 revertText];
    v10 = objc_msgSend_isEqualToString_(v9);

    if (v10)
    {
      v7 = 1;
    }

    else
    {
      v11 = [v8 alternativeRevertTexts];
      v7 = [v11 containsObject:v3];
    }
  }

  return v7;
}

void *__63___UITextChoiceAccelerationBubble_removeAnimated_withDuration___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) reset];
  *(*(a1 + 32) + 458) = 0;
  return result;
}

@end