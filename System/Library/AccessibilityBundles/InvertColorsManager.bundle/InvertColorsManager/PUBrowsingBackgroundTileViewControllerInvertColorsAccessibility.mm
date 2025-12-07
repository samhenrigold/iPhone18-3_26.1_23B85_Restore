@interface PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility
- (id)backgroundColorOverride;
@end

@implementation PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility

- (id)backgroundColorOverride
{
  v12.receiver = self;
  v12.super_class = PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility;
  backgroundColorOverride = [(PUBrowsingBackgroundTileViewControllerInvertColorsAccessibility *)&v12 backgroundColorOverride];
  if (!UIAccessibilityIsInvertColorsEnabled() || backgroundColorOverride && (AXColorGetLuma(), v3 >= 0.5) || (__UIAccessibilitySafeClass(), v4 = objc_claimAutoreleasedReturnValue(), [v4 view], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "window"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "traitCollection"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "userInterfaceStyle"), v7, v6, v5, v4, v8 == &dword_0 + 2))
  {
    v9 = backgroundColorOverride;
  }

  else
  {
    v9 = +[UIColor whiteColor];
  }

  v10 = v9;

  return v10;
}

@end