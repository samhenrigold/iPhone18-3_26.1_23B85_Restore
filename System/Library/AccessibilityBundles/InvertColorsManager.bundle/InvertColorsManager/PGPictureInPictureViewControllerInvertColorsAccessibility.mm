@interface PGPictureInPictureViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PGPictureInPictureViewControllerInvertColorsAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PGPictureInPictureViewControllerInvertColorsAccessibility;
  [(PGPictureInPictureViewControllerInvertColorsAccessibility *)&v4 viewDidAppear:appear];
  [(PGPictureInPictureViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v3 = [(PGPictureInPictureViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  superview = [v3 superview];
  [superview setAccessibilityIgnoresInvertColors:1];
}

@end