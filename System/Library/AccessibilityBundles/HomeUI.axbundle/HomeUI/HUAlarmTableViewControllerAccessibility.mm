@interface HUAlarmTableViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUAlarmTableViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = HUAlarmTableViewControllerAccessibility;
  [(HUAlarmTableViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUAlarmTableViewControllerAccessibility;
  [(HUAlarmTableViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(HUAlarmTableViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end