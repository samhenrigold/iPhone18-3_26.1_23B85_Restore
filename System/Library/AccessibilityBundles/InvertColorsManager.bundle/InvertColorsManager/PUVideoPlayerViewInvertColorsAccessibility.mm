@interface PUVideoPlayerViewInvertColorsAccessibility
- (void)_accessibilityForceInvertColorsUpdateFlagForSuperview:(id)superview;
- (void)_setAncestorIgnoresInvertColors:(BOOL)colors;
- (void)layoutSubviews;
- (void)willMoveToSuperview:(id)superview;
@end

@implementation PUVideoPlayerViewInvertColorsAccessibility

- (void)_setAncestorIgnoresInvertColors:(BOOL)colors
{
  v3.receiver = self;
  v3.super_class = PUVideoPlayerViewInvertColorsAccessibility;
  [(PUVideoPlayerViewInvertColorsAccessibility *)&v3 _setAncestorIgnoresInvertColors:colors];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PUVideoPlayerViewInvertColorsAccessibility;
  [(PUVideoPlayerViewInvertColorsAccessibility *)&v5 layoutSubviews];
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  superview = [v3 superview];
  [(PUVideoPlayerViewInvertColorsAccessibility *)self _accessibilityForceInvertColorsUpdateFlagForSuperview:superview];
}

- (void)willMoveToSuperview:(id)superview
{
  v5.receiver = self;
  v5.super_class = PUVideoPlayerViewInvertColorsAccessibility;
  superviewCopy = superview;
  [(PUVideoPlayerViewInvertColorsAccessibility *)&v5 willMoveToSuperview:superviewCopy];
  [(PUVideoPlayerViewInvertColorsAccessibility *)self _accessibilityForceInvertColorsUpdateFlagForSuperview:superviewCopy, v5.receiver, v5.super_class];
}

- (void)_accessibilityForceInvertColorsUpdateFlagForSuperview:(id)superview
{
  superviewCopy = superview;
  if (superviewCopy)
  {
    v5 = superviewCopy;
    do
    {
      accessibilityIgnoresInvertColors = [v5 accessibilityIgnoresInvertColors];
      if (accessibilityIgnoresInvertColors)
      {
        break;
      }

      superview = [v5 superview];

      v5 = superview;
    }

    while (superview);
  }

  else
  {
    accessibilityIgnoresInvertColors = 0;
  }

  [(PUVideoPlayerViewInvertColorsAccessibility *)self _setAncestorIgnoresInvertColors:accessibilityIgnoresInvertColors];

  [AXInvertColorsAppHelper toggleInvertColors:self];
}

@end