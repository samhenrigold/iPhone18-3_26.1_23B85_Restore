@interface OnboardingInfoViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation OnboardingInfoViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = OnboardingInfoViewControllerAccessibility;
  [(OnboardingInfoViewControllerAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(OnboardingInfoViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = [v3 _accessibilityDescendantOfType:objc_opt_class()];

  [v4 _setAccessibilityTraitsBlock:&__block_literal_global_1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = OnboardingInfoViewControllerAccessibility;
  [(OnboardingInfoViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(OnboardingInfoViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end