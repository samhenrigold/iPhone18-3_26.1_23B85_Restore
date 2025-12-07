@interface VideosPlaybackViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation VideosPlaybackViewControllerInvertColorsAccessibility

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = VideosPlaybackViewControllerInvertColorsAccessibility;
  [(VideosPlaybackViewControllerInvertColorsAccessibility *)&v4 viewWillAppear:appear];
  [(VideosPlaybackViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(VideosPlaybackViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end