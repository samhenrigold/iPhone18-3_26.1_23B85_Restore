@interface UIWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
- (void)_commonInitAttachedWindow:(BOOL)window debugName:(id)name scene:(id)scene;
@end

@implementation UIWindowInvertColorsAccessibility

- (void)_commonInitAttachedWindow:(BOOL)window debugName:(id)name scene:(id)scene
{
  v6.receiver = self;
  v6.super_class = UIWindowInvertColorsAccessibility;
  [(UIWindowInvertColorsAccessibility *)&v6 _commonInitAttachedWindow:window debugName:name scene:scene];
  [(UIWindowInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  traitCollection = [(UIWindowInvertColorsAccessibility *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == &dword_0 + 2)
  {
    rootViewController = [(UIWindowInvertColorsAccessibility *)self rootViewController];
    _hostedWindowScene = [rootViewController _hostedWindowScene];

    if (_hostedWindowScene)
    {
      return 0;
    }
  }

  v8.receiver = self;
  v8.super_class = UIWindowInvertColorsAccessibility;
  return [(UIWindowInvertColorsAccessibility *)&v8 _accessibilityInvertColorsSupportsDarkWindowInvert];
}

@end