@interface MTMaterialViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)layoutSubviews;
- (void)setAccessibilityMaterialViewMimicsReduceTransparency:(BOOL)transparency;
- (void)setContentReplacedWithSnapshot:(BOOL)snapshot;
@end

@implementation MTMaterialViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v3 = 1;
  [(MTMaterialViewInvertColorsAccessibility *)self _accessibilitySetBoolValue:1 forKey:@"LoadingInvertColors"];
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  if (!UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = [(MTMaterialViewInvertColorsAccessibility *)self accessibilityMaterialViewMimicsReduceTransparency]& IsInvertColorsEnabled;
  }

  v5 = [(MTMaterialViewInvertColorsAccessibility *)self safeValueForKey:@"_materialLayer"];
  v6 = [v5 safeBoolForKey:@"isReduceTransparencyEnabled"];

  if (v3 != v6)
  {
    LOBYTE(v7) = v3;
    BYTE1(v7) = IsInvertColorsEnabled;
    AXPerformSafeBlock();
    [(MTMaterialViewInvertColorsAccessibility *)self _accessibilitySetBoolValue:0 forKey:@"LoadingInvertColors", _NSConcreteStackBlock, 3221225472, sub_1152C, &unk_44800, self, v7];
  }
}

- (void)setAccessibilityMaterialViewMimicsReduceTransparency:(BOOL)transparency
{
  v4.receiver = self;
  v4.super_class = MTMaterialViewInvertColorsAccessibility;
  [(MTMaterialViewInvertColorsAccessibility *)&v4 setAccessibilityMaterialViewMimicsReduceTransparency:transparency];
  [(MTMaterialViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MTMaterialViewInvertColorsAccessibility;
  [(MTMaterialViewInvertColorsAccessibility *)&v3 layoutSubviews];
  if (([(MTMaterialViewInvertColorsAccessibility *)self _accessibilityBoolValueForKey:@"LoadingInvertColors"]& 1) == 0)
  {
    [(MTMaterialViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  }
}

- (void)setContentReplacedWithSnapshot:(BOOL)snapshot
{
  snapshotCopy = snapshot;
  v14 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  if (AXProcessIsSpringBoard() && ([v5 superview], v6 = objc_claimAutoreleasedReturnValue(), AXSafeClassFromString(), isKindOfClass = objc_opt_isKindOfClass(), v6, (isKindOfClass & 1) != 0))
  {
    v14 = 0;
    objc_opt_class();
    v8 = [v5 safeValueForKey:@"_materialLayer"];
    v9 = __UIAccessibilityCastAsClass();

    v10 = [v9 valueForKeyPath:@"filters.InvertColorsDoubleInvert"];
    v11 = v10 == 0;
  }

  else
  {
    v9 = 0;
    v11 = 1;
  }

  v13.receiver = self;
  v13.super_class = MTMaterialViewInvertColorsAccessibility;
  [(MTMaterialViewInvertColorsAccessibility *)&v13 setContentReplacedWithSnapshot:snapshotCopy];
  if (!_AXSInvertColorsEnabledGlobalCached() && !v11)
  {
    filters = [v9 filters];

    if (!filters)
    {
      [AXInvertColorsAppHelper toggleInvertColors:v9 moveFilterToFront:1];
    }
  }
}

@end