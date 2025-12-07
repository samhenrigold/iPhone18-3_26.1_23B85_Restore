@interface UIView
@end

@implementation UIView

void __60__UIView_TVMLKitAdditions__tv_disableAnimation_forProperty___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v2, sel__shouldAnimatePropertyWithKey_);
  v4 = class_getInstanceMethod(v2, sel_tv_shouldAnimatePropertyWithKey_);

  method_exchangeImplementations(InstanceMethod, v4);
}

@end