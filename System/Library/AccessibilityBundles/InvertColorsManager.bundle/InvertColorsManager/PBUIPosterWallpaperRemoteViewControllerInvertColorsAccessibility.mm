@interface PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility;
  [(PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility *)&v4 viewDidAppear:appear];
  [(PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PBUIPosterWallpaperRemoteViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end