@interface AddedBookmarkToastViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)presentToast;
@end

@implementation AddedBookmarkToastViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AddedBookmarkToastViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"AddedBookmarkToastViewController" hasInstanceMethod:@"presentToast" withFullSignature:{"v", 0}];
}

- (void)presentToast
{
  v2.receiver = self;
  v2.super_class = AddedBookmarkToastViewControllerAccessibility;
  [(AddedBookmarkToastViewControllerAccessibility *)&v2 presentToast];
  AXPerformBlockOnMainThreadAfterDelay();
}

void __61__AddedBookmarkToastViewControllerAccessibility_presentToast__block_invoke(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = *MEMORY[0x29EDC7ED8];
  v4 = [v2 view];
  UIAccessibilityPostNotification(v3, v4);
}

@end