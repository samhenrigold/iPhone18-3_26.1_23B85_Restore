@interface SBUIPasscodeLockViewFactoryInvertColorsAccessibility
+ (id)_passcodeLockViewForStyle:(int)style withLightStyle:(BOOL)lightStyle;
@end

@implementation SBUIPasscodeLockViewFactoryInvertColorsAccessibility

+ (id)_passcodeLockViewForStyle:(int)style withLightStyle:(BOOL)lightStyle
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___SBUIPasscodeLockViewFactoryInvertColorsAccessibility;
  v4 = objc_msgSendSuper2(&v6, "_passcodeLockViewForStyle:withLightStyle:", *&style, lightStyle);
  [v4 setAccessibilityIgnoresInvertColors:_AXSInvertColorsEnabledGlobalCached() != 0];

  return v4;
}

@end