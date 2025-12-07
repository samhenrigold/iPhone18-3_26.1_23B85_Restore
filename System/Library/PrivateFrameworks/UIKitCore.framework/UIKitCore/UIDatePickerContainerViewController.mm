@interface UIDatePickerContainerViewController
@end

@implementation UIDatePickerContainerViewController

void __64___UIDatePickerContainerViewController_keyboardFrameWillChange___block_invoke(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend_presentation(*(a1 + 32), a2);
  v5 = [v4 platterView];

  if (v5 && [v5 isUserInteractionEnabled])
  {
    [*(a1 + 32) keyboardAdjustmentOffset];
    v7 = v6;
    [v5 frame];
    v24 = CGRectOffset(v23, 0.0, -v7);
    x = v24.origin.x;
    y = v24.origin.y;
    width = v24.size.width;
    height = v24.size.height;
    v12 = objc_msgSend_presentation(*(a1 + 32));
    v13 = [v12 activeDatePicker];
    v14 = [v13 _style];

    v26.origin.x = x;
    v26.origin.y = y;
    v26.size.width = width;
    v26.size.height = height;
    if (CGRectIntersectsRect(*(*(*(a1 + 40) + 8) + 32), v26))
    {
      v27.origin.x = x;
      v27.origin.y = y;
      v27.size.width = width;
      v27.size.height = height;
      v25 = CGRectIntersection(*(*(*(a1 + 40) + 8) + 32), v27);
      CGRectGetHeight(v25);
      [v14 overlayPlatterDefaultMargin];
    }

    UIRoundToViewScale(v5);
    v16 = v15;
    [*(a1 + 32) setKeyboardAdjustmentOffset:?];
    if (v16 != v7)
    {
      v17 = *(*(*(a1 + 48) + 8) + 24);
      v18 = *(*(*(a1 + 56) + 8) + 24);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __64___UIDatePickerContainerViewController_keyboardFrameWillChange___block_invoke_2;
      v19[3] = &unk_1E70F6848;
      v20 = v5;
      v21 = v7;
      v22 = v16;
      [UIView animateWithDuration:v18 delay:v19 options:0 animations:v17 completion:0.0];
    }
  }
}

uint64_t __64___UIDatePickerContainerViewController_keyboardFrameWillChange___block_invoke_2(uint64_t a1, const char *a2)
{
  memset(&v9, 0, sizeof(v9));
  v3 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_transform(v3, a2);
  }

  v4 = -*(a1 + 40);
  v7 = v9;
  CGAffineTransformTranslate(&v8, &v7, 0.0, v4);
  v9 = v8;
  v5 = *(a1 + 48);
  if (v5 != 0.0)
  {
    v7 = v9;
    CGAffineTransformTranslate(&v8, &v7, 0.0, v5);
    v9 = v8;
  }

  v8 = v9;
  return [*(a1 + 32) setTransform:&v8];
}

@end