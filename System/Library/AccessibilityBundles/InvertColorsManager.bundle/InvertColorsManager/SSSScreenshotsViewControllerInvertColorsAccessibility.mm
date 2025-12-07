@interface SSSScreenshotsViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SSSScreenshotsViewControllerInvertColorsAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SSSScreenshotsViewControllerInvertColorsAccessibility;
  [(SSSScreenshotsViewControllerInvertColorsAccessibility *)&v4 viewWillAppear:appear];
  [(SSSScreenshotsViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(SSSScreenshotsViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  window = [v3 window];
  [window setAccessibilityIgnoresInvertColors:1];
}

@end