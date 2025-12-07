@interface WTMainPopoverViewControllerAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation WTMainPopoverViewControllerAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = WTMainPopoverViewControllerAccessibility;
  [(WTMainPopoverViewControllerAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = WTMainPopoverViewControllerAccessibility;
  [(WTMainPopoverViewControllerAccessibility *)&v6 viewDidAppear:appear];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = *MEMORY[0x29EDC7F10];
  view = [v3 view];
  UIAccessibilityPostNotification(v4, view);
}

@end