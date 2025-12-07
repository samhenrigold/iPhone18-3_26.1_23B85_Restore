@interface SBIconViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
- (id)_contextMenuInteraction:(id)interaction previewForIconWithConfigurationOptions:(unint64_t)options highlighted:(BOOL)highlighted;
@end

@implementation SBIconViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  if (_AXSInvertColorsEnabledGlobalCached())
  {
    isKindOfClass = 1;
  }

  else
  {
    v4 = [(SBIconViewInvertColorsAccessibility *)self safeValueForKey:@"superview"];
    NSClassFromString(@"SBFloatingDockIconListView");
    if (objc_opt_isKindOfClass())
    {
      isKindOfClass = 1;
    }

    else
    {
      NSClassFromString(@"SBDockIconListView");
      isKindOfClass = objc_opt_isKindOfClass();
    }
  }

  return isKindOfClass & 1;
}

- (id)_contextMenuInteraction:(id)interaction previewForIconWithConfigurationOptions:(unint64_t)options highlighted:(BOOL)highlighted
{
  v8.receiver = self;
  v8.super_class = SBIconViewInvertColorsAccessibility;
  v5 = [(SBIconViewInvertColorsAccessibility *)&v8 _contextMenuInteraction:interaction previewForIconWithConfigurationOptions:options highlighted:highlighted];
  view = [v5 view];
  [view setAccessibilityIgnoresInvertColors:1];

  return v5;
}

@end