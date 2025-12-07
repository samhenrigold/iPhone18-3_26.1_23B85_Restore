@interface VerificationSummaryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation VerificationSummaryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HealthExposureNotificationUI.VerificationSummaryViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = VerificationSummaryViewControllerAccessibility;
  [(VerificationSummaryViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VerificationSummaryViewControllerAccessibility;
  [(VerificationSummaryViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(VerificationSummaryViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end