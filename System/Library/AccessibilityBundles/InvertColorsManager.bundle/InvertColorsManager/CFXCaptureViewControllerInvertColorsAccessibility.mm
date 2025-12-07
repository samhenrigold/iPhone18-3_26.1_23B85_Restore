@interface CFXCaptureViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CFXCaptureViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = [(CFXCaptureViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CFXCaptureViewControllerInvertColorsAccessibility;
  [(CFXCaptureViewControllerInvertColorsAccessibility *)&v4 viewWillAppear:appear];
  [(CFXCaptureViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end