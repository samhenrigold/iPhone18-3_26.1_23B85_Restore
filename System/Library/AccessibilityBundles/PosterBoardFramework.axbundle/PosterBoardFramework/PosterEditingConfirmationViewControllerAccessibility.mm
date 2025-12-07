@interface PosterEditingConfirmationViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PosterEditingConfirmationViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PosterBoard.PosterEditingConfirmationViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"PosterBoard.PosterEditingConfirmationViewController" hasSwiftFieldOfAnyClass:@"continueButton"];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = PosterEditingConfirmationViewControllerAccessibility;
  [(PosterEditingConfirmationViewControllerAccessibility *)&v6 viewDidAppear:appear];
  v4 = *MEMORY[0x29EDC7ED8];
  v5 = [(PosterEditingConfirmationViewControllerAccessibility *)self safeSwiftValueForKey:@"continueButton"];
  UIAccessibilityPostNotification(v4, v5);
}

@end