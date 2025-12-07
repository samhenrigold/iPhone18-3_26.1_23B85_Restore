@interface SKStoreProductViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SKStoreProductViewControllerInvertColorsAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SKStoreProductViewControllerInvertColorsAccessibility;
  [(SKStoreProductViewControllerInvertColorsAccessibility *)&v4 viewWillAppear:appear];
  [(SKStoreProductViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  if (AXProcessIsSpringBoard())
  {
    v4 = [(SKStoreProductViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
    layer = [v4 layer];
    [AXInvertColorsAppHelper toggleInvertColors:layer];
  }
}

@end