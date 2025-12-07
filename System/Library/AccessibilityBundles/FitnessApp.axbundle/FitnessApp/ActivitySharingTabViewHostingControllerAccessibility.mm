@interface ActivitySharingTabViewHostingControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation ActivitySharingTabViewHostingControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FitnessApp.ActivitySharingTabViewHostingController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewIsAppearing:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"navigationItem" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UINavigationItem" hasInstanceMethod:@"rightBarButtonItem" withFullSignature:{"@", 0}];
}

- (void)viewIsAppearing:(BOOL)appearing
{
  v7.receiver = self;
  v7.super_class = ActivitySharingTabViewHostingControllerAccessibility;
  [(ActivitySharingTabViewHostingControllerAccessibility *)&v7 viewIsAppearing:appearing];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  navigationItem = [v3 navigationItem];
  rightBarButtonItem = [navigationItem rightBarButtonItem];
  v6 = accessibilityLocalizedString(@"sharing");
  [rightBarButtonItem setAccessibilityLabel:v6];
}

@end