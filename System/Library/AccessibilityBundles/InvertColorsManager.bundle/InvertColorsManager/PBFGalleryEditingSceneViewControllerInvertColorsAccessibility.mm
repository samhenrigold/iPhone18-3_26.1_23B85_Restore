@interface PBFGalleryEditingSceneViewControllerInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation PBFGalleryEditingSceneViewControllerInvertColorsAccessibility

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PBFGalleryEditingSceneViewControllerInvertColorsAccessibility;
  [(PBFGalleryEditingSceneViewControllerInvertColorsAccessibility *)&v4 viewDidAppear:appear];
  [(PBFGalleryEditingSceneViewControllerInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  v2 = [(PBFGalleryEditingSceneViewControllerInvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  [v2 setAccessibilityIgnoresInvertColors:1];
}

@end