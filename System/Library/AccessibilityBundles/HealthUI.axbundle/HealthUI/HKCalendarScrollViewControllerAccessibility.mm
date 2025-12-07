@interface HKCalendarScrollViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation HKCalendarScrollViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HKCalendarScrollViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"HKCalendarScrollViewController" hasInstanceMethod:@"scrollView" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = HKCalendarScrollViewControllerAccessibility;
  [(HKCalendarScrollViewControllerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(HKCalendarScrollViewControllerAccessibility *)self safeValueForKey:@"scrollView"];
  [v3 setIsAccessibilityOpaqueElementProvider:1];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = HKCalendarScrollViewControllerAccessibility;
  [(HKCalendarScrollViewControllerAccessibility *)&v4 viewDidAppear:appear];
  [(HKCalendarScrollViewControllerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end