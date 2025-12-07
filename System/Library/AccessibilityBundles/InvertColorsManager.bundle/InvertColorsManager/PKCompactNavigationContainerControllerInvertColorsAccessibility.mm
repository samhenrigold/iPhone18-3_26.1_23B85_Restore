@interface PKCompactNavigationContainerControllerInvertColorsAccessibility
+ (id)dimmingColor;
@end

@implementation PKCompactNavigationContainerControllerInvertColorsAccessibility

+ (id)dimmingColor
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PKCompactNavigationContainerControllerInvertColorsAccessibility;
  v2 = objc_msgSendSuper2(&v10, "dimmingColor");
  if (UIAccessibilityIsInvertColorsEnabled() && (AXUIApplicationWindows(), v3 = objc_claimAutoreleasedReturnValue(), [v3 firstObject], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceStyle"), v5, v4, v3, v6 == &dword_0 + 2))
  {
    v7 = +[UIColor whiteColor];
    v8 = [v7 colorWithAlphaComponent:0.75];
  }

  else
  {
    v8 = v2;
  }

  return v8;
}

@end