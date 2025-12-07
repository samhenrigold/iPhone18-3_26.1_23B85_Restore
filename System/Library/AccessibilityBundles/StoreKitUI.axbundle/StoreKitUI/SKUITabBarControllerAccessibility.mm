@interface SKUITabBarControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)setFloatingOverlayViewController:(id)controller animated:(BOOL)animated;
@end

@implementation SKUITabBarControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SKUITabBarController" hasInstanceVariable:@"_floatingOverlayView" withType:"SKUIFloatingOverlayView"];
  [validationsCopy validateClass:@"SKUITabBarController" hasInstanceMethod:@"setFloatingOverlayViewController: animated:" withFullSignature:{"v", "@", "B", 0}];
}

- (void)setFloatingOverlayViewController:(id)controller animated:(BOOL)animated
{
  v6.receiver = self;
  v6.super_class = SKUITabBarControllerAccessibility;
  [(SKUITabBarControllerAccessibility *)&v6 setFloatingOverlayViewController:controller animated:animated];
  v5 = [(SKUITabBarControllerAccessibility *)self safeValueForKey:@"_floatingOverlayView"];
  [v5 setAccessibilityIdentifier:@"FloatingPreview"];
}

@end