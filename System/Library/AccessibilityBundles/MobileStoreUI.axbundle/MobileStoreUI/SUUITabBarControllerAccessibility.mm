@interface SUUITabBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setFloatingOverlayViewController:(id)controller animated:(BOOL)animated;
@end

@implementation SUUITabBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SUUITabBarController" hasInstanceVariable:@"_floatingOverlayView" withType:"SUUIFloatingOverlayView"];
  [validationsCopy validateClass:@"SUUITabBarController" hasInstanceMethod:@"setFloatingOverlayViewController: animated:" withFullSignature:{"v", "@", "B", 0}];
}

- (void)setFloatingOverlayViewController:(id)controller animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = SUUITabBarControllerAccessibility;
  [(SUUITabBarControllerAccessibility *)&v6 setFloatingOverlayViewController:controller animated:animated];
  v5 = [(SUUITabBarControllerAccessibility *)self safeValueForKey:@"_floatingOverlayView"];
  [v5 setAccessibilityIdentifier:@"FloatingPreview"];
}

@end