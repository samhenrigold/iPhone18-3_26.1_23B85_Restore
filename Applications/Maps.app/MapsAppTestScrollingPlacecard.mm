@interface MapsAppTestScrollingPlacecard
- (BOOL)runTest;
- (void)_scrollingTest;
- (void)placecardDidPresent;
@end

@implementation MapsAppTestScrollingPlacecard

- (void)_scrollingTest
{
  testName = [(MapsAppTest *)self testName];
  BOOL = GEOConfigGetBOOL();
  placeViewController = [(MapsAppTestPlacecardChrome *)self placeViewController];
  view = [placeViewController view];
  v7 = objc_opt_class();
  v8 = sub_1009F0B70(view, v7);

  if (BOOL)
  {
    RPTContentSizeInDirection();
    v10 = v9;
    RPTGetBoundsForView();
    v15 = [[RPTScrollViewTestParameters alloc] initWithTestName:testName scrollBounds:1 scrollContentLength:&stru_1016318C8 direction:v11 completionHandler:{v12, v13, v14, v10}];
    window = [v8 window];
    v17 = [RPTCoordinateSpaceConverter converterFromWindow:window];
    [v15 setConversion:v17];

    objc_initWeak(&location, self);
    v24 = v15;
    v18 = [NSArray arrayWithObjects:&v24 count:1];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1009F32C0;
    v20[3] = &unk_101661340;
    objc_copyWeak(&v22, &location);
    v21 = testName;
    v19 = [RPTGroupScrollTestParameters newWithTestName:v21 parameters:v18 completionHandler:v20];

    [RPTTestRunner runTestWithParameters:v19];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    [v8 _performScrollTest:testName iterations:10 delta:20];
  }
}

- (void)placecardDidPresent
{
  v3 = dispatch_time(0, 2000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1009F33B0;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (BOOL)runTest
{
  [(MapsAppTestPlacecardChrome *)self setPlacecardChromeDelegate:self];
  v4.receiver = self;
  v4.super_class = MapsAppTestScrollingPlacecard;
  return [(MapsAppTestPlacecardChrome *)&v4 runTest];
}

@end