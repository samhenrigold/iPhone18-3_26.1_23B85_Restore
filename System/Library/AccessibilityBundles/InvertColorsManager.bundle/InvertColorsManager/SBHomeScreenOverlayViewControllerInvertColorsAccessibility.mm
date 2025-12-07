@interface SBHomeScreenOverlayViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SBHomeScreenOverlayViewControllerInvertColorsAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SBHomeScreenOverlayViewControllerInvertColorsAccessibility;
  [(SBHomeScreenOverlayViewControllerInvertColorsAccessibility *)&v4 viewWillAppear:appear];
  [(SBHomeScreenOverlayViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(SBHomeScreenOverlayViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"backgroundView"];
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    [v3 setAccessibilityMaterialViewMimicsReduceTransparency:1];
    if (AXInvertColorsIsSystemWideDarkModeEnabled())
    {
      +[UIColor darkGrayColor];
    }

    else
    {
      +[UIColor lightGrayColor];
    }
    v2 = ;
    [v3 setBackgroundColor:v2];
  }

  else
  {
    [v3 setBackgroundColor:0];
  }
}

@end