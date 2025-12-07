@interface HUOLDAlarmTableViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HUOLDAlarmTableViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = HUOLDAlarmTableViewControllerAccessibility;
  [(HUOLDAlarmTableViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HUOLDAlarmTableViewControllerAccessibility;
  [(HUOLDAlarmTableViewControllerAccessibility *)&v4 viewWillAppear:appear];
  [(HUOLDAlarmTableViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end