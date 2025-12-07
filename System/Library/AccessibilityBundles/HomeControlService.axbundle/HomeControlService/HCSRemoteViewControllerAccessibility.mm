@interface HCSRemoteViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)willBeginTransition:(BOOL)transition forCompactModule:(BOOL)module;
@end

@implementation HCSRemoteViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HCSRemoteViewController" hasInstanceMethod:@"willBeginTransition:forCompactModule:" withFullSignature:{"v", "B", "B", 0}];
  [validationsCopy validateClass:@"HCSRemoteViewController" hasInstanceMethod:@"dashboardNavigationView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"HUDashboardNavigationView" hasInstanceMethod:@"headerTitleLabel" withFullSignature:{"@", 0}];
}

- (void)willBeginTransition:(BOOL)transition forCompactModule:(BOOL)module
{
  transitionCopy = transition;
  v9.receiver = self;
  v9.super_class = HCSRemoteViewControllerAccessibility;
  [(HCSRemoteViewControllerAccessibility *)&v9 willBeginTransition:transition forCompactModule:module];
  if (transitionCopy)
  {
    v6 = [(HCSRemoteViewControllerAccessibility *)self safeValueForKey:@"dashboardNavigationView"];
    v7 = [v6 safeValueForKey:@"headerTitleLabel"];

    v8 = v7;
    AXPerformBlockOnMainThreadAfterDelay();
  }
}

@end