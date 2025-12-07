@interface AppleTVSetupStartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation AppleTVSetupStartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppleTVSetupStartViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"AppleTVSetupStartViewController" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
}

- (void)viewWillAppear:(BOOL)appear
{
  v7.receiver = self;
  v7.super_class = AppleTVSetupStartViewControllerAccessibility;
  [(AppleTVSetupStartViewControllerAccessibility *)&v7 viewWillAppear:appear];
  v4 = [(AppleTVSetupStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  v5 = accessibilityLocalizedString(@"dismiss.button");
  [v4 setAccessibilityLabel:v5];

  v6 = [(AppleTVSetupStartViewControllerAccessibility *)self safeValueForKey:@"_dismissButton"];
  [v6 _accessibilitySetUserTestingIsCancelButton:1];
}

@end