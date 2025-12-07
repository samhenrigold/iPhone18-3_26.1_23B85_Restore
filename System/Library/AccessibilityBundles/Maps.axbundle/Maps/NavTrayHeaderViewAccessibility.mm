@interface NavTrayHeaderViewAccessibility
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateContentAndReloadStackView:(BOOL)view;
@end

@implementation NavTrayHeaderViewAccessibility

- (void)_accessibilityLoadAccessibilityInformation
{
  v2.receiver = self;
  v2.super_class = NavTrayHeaderViewAccessibility;
  [(NavTrayHeaderViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)_updateContentAndReloadStackView:(BOOL)view
{
  v3.receiver = self;
  v3.super_class = NavTrayHeaderViewAccessibility;
  [(NavTrayHeaderViewAccessibility *)&v3 _updateContentAndReloadStackView:view];
}

@end