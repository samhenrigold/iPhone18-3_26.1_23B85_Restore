@interface UIDatePickerContainerView
@end

@implementation UIDatePickerContainerView

void __39___UIDatePickerContainerView_setFrame___block_invoke(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_presentation(*(a1 + 32), a2);
  [v3 dismissPresentationAnimated:0];
}

void __40___UIDatePickerContainerView_setBounds___block_invoke(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_presentation(*(a1 + 32), a2);
  [v3 dismissPresentationAnimated:0];
}

@end