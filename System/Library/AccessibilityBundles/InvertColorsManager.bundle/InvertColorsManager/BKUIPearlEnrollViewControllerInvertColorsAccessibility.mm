@interface BKUIPearlEnrollViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)forceDarkBackground:(BOOL)background animated:(BOOL)animated;
@end

@implementation BKUIPearlEnrollViewControllerInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = [(BKUIPearlEnrollViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v3 setAccessibilityIgnoresInvertColors:{-[BKUIPearlEnrollViewControllerInvertColorsAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"_darkBackground"}];

  v4 = [(BKUIPearlEnrollViewControllerInvertColorsAccessibility *)self safeValueForKeyPath:@"parentViewController.navigationController.navigationBar"];
  [v4 setAccessibilityIgnoresInvertColors:{-[BKUIPearlEnrollViewControllerInvertColorsAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"_darkBackground"}];
}

- (void)forceDarkBackground:(BOOL)background animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = BKUIPearlEnrollViewControllerInvertColorsAccessibility;
  [(BKUIPearlEnrollViewControllerInvertColorsAccessibility *)&v5 forceDarkBackground:background animated:animated];
  [(BKUIPearlEnrollViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end