@interface MKMapViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_setPreferredConfiguration:(id)configuration onInit:(BOOL)init;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation MKMapViewInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  [(MKMapViewInvertColorsAccessibility *)self safeValueForKey:@"preferredConfiguration"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x5810000000;
  v15 = &unk_2CA01;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v19 = 0;
  AXPerformSafeBlock();
  v5 = *(v13 + 2);
  v4 = *(v13 + 3);
  v21 = v13[10];
  v6 = *(v13 + 4);
  v20[1] = v4;
  v20[2] = v6;
  v20[0] = v5;

  _Block_object_dispose(&v12, 8);
  v7 = _MKMapTypeForCartographicConfiguration() - 1;
  traitCollection = [(MKMapViewInvertColorsAccessibility *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  v11 = v7 < 4 || userInterfaceStyle == &dword_0 + 2;
  if (v11 != [(MKMapViewInvertColorsAccessibility *)self accessibilityIgnoresInvertColors])
  {
    [(MKMapViewInvertColorsAccessibility *)self setAccessibilityIgnoresInvertColors:v11];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = MKMapViewInvertColorsAccessibility;
  [(MKMapViewInvertColorsAccessibility *)&v4 traitCollectionDidChange:change];
  [AXInvertColorsAppHelper toggleInvertColors:self];
}

- (void)_setPreferredConfiguration:(id)configuration onInit:(BOOL)init
{
  v5.receiver = self;
  v5.super_class = MKMapViewInvertColorsAccessibility;
  [(MKMapViewInvertColorsAccessibility *)&v5 _setPreferredConfiguration:configuration onInit:init];
  [(MKMapViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MKMapViewInvertColorsAccessibility;
  [(MKMapViewInvertColorsAccessibility *)&v3 layoutSubviews];
  [(MKMapViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

@end