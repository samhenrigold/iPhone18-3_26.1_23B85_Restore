@interface PBFPosterRackCollectionViewController_InvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)viewDidLayoutSubviews;
@end

@implementation PBFPosterRackCollectionViewController_InvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  if (_AXSInvertColorsEnabled() && (-[PBFPosterRackCollectionViewController_InvertColorsAccessibility safeUIViewForKey:](self, "safeUIViewForKey:", @"view"), v3 = objc_claimAutoreleasedReturnValue(), [v3 window], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "traitCollection"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "userInterfaceStyle"), v5, v4, v3, v6 == &dword_0 + 2))
  {
    v7 = [(PBFPosterRackCollectionViewController_InvertColorsAccessibility *)self safeUIViewForKey:@"view"];
    v8 = [UIColor colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    v10 = [AXInvertColorsAppHelper insertBackgroundView:v7 color:v8];

    layer = [v10 layer];
    [layer setZPosition:-100.0];
  }

  else
  {
    v10 = [(PBFPosterRackCollectionViewController_InvertColorsAccessibility *)self safeUIViewForKey:@"view"];
    [AXInvertColorsAppHelper removeBackgroundView:?];
  }
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = PBFPosterRackCollectionViewController_InvertColorsAccessibility;
  [(PBFPosterRackCollectionViewController_InvertColorsAccessibility *)&v10 viewDidLayoutSubviews];
  v3 = [(PBFPosterRackCollectionViewController_InvertColorsAccessibility *)self safeUIViewForKey:@"view"];
  window = [v3 window];

  objc_initWeak(&location, window);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_166D8;
  v7[3] = &unk_44968;
  objc_copyWeak(&v8, &location);
  [window _accessibilitySetInvertColorsSupportsDarkWindowInvertBlock:v7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_16718;
  v5[3] = &unk_44968;
  objc_copyWeak(&v6, &location);
  [window _accessibilitySetInvertColorsActsAsDarkWindowBlock:v5];
  [(PBFPosterRackCollectionViewController_InvertColorsAccessibility *)self _accessibilityLoadInvertColors];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

@end