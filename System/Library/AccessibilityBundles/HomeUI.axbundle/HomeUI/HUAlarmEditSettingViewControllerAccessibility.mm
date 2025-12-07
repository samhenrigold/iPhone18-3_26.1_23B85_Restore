@interface HUAlarmEditSettingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUAlarmEditSettingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUAlarmEditSettingViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"HUAlarmEditSettingViewController" hasInstanceMethod:@"tableView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = HUAlarmEditSettingViewControllerAccessibility;
  [(HUAlarmEditSettingViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUAlarmEditSettingViewControllerAccessibility;
  [(HUAlarmEditSettingViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(HUAlarmEditSettingViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end