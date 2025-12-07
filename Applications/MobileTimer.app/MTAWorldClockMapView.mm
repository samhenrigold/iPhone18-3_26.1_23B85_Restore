@interface MTAWorldClockMapView
+ (double)mapHeightForWidth:(double)width;
+ (void)updateNewYearsDay;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MTAWorldClockMapView)initWithFrame:(CGRect)frame;
- (double)maxWidthForDateStringWithFont:(id)font;
- (double)terminatorUpdateInterval;
- (void)addCity:(id)city animated:(BOOL)animated;
- (void)cancelTerminatorUpdate;
- (void)didMoveToWindow;
- (void)handleLocaleChange;
- (void)handleSignificantTimeChange:(id)change;
- (void)layoutSubviews;
- (void)removeCity:(id)city;
- (void)resizeCityViews;
- (void)scheduleTerminatorUpdate;
- (void)setCities:(id)cities;
- (void)startUpdatingTime;
- (void)stopUpdatingTime;
- (void)updateTerminator;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation MTAWorldClockMapView

- (MTAWorldClockMapView)initWithFrame:(CGRect)frame
{
  v26.receiver = self;
  v26.super_class = MTAWorldClockMapView;
  v3 = [(MTAWorldClockMapView *)&v26 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(NSDateFormatter);
    timeFormatter = v3->_timeFormatter;
    v3->_timeFormatter = v4;

    [(NSDateFormatter *)v3->_timeFormatter setTimeStyle:1];
    v6 = objc_alloc_init(NSMutableDictionary);
    cityViews = v3->_cityViews;
    v3->_cityViews = v6;

    v8 = [[UIImageView alloc] initWithImage:0];
    mapWithTerminator = v3->_mapWithTerminator;
    v3->_mapWithTerminator = v8;

    [(MTAWorldClockMapView *)v3 addSubview:v3->_mapWithTerminator];
    [objc_opt_class() updateNewYearsDay];
    [(MTAWorldClockMapView *)v3 updateTerminator];
    v10 = +[MTAWorldClockMapCityView secondaryLabelFont];
    [(MTAWorldClockMapView *)v3 maxWidthForDateStringWithFont:v10];
    v3->_maxTimeStringWidth = v11;

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v12 = +[WorldClockManager sharedManager];
    cities = [v12 cities];

    v14 = [cities countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(cities);
          }

          [(MTAWorldClockMapView *)v3 addCity:*(*(&v22 + 1) + 8 * v17) animated:0];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [cities countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v15);
    }

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v3 selector:"handleLocaleChange" name:NSCurrentLocaleDidChangeNotification object:0];

    v19 = +[NSNotificationCenter defaultCenter];
    [v19 addObserver:v3 selector:"handleSignificantTimeChange:" name:UIApplicationSignificantTimeChangeNotification object:0];

    v20 = v3;
  }

  return v3;
}

- (void)handleLocaleChange
{
  v3 = +[MTAWorldClockMapCityView secondaryLabelFont];
  [(MTAWorldClockMapView *)self maxWidthForDateStringWithFont:v3];
  self->_maxTimeStringWidth = v4;

  [(MTAWorldClockMapView *)self resizeCityViews];

  [(MTAWorldClockMapView *)self setNeedsLayout];
}

- (void)handleSignificantTimeChange:(id)change
{
  [objc_opt_class() updateNewYearsDay];

  [(MTAWorldClockMapView *)self updateTerminator];
}

- (void)resizeCityViews
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  allValues = [(NSMutableDictionary *)self->_cityViews allValues];
  v4 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setTimeLabelWidth:self->_maxTimeStringWidth];
        [v8 handleLocaleChange];
        [v8 sizeToFit];
        [v8 setNeedsLayout];
      }

      v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (double)mapHeightForWidth:(double)width
{
  if (qword_1000D2A60 != -1)
  {
    sub_100073738();
  }

  [qword_1000D2948[5 * sub_100020CB8(self a2];
  v5 = v4;
  v6 = MTUIShouldUseLargePadLayout();
  v7 = 10.0;
  if (v6)
  {
    v7 = 13.0;
  }

  return v5 + v7 * 2.0;
}

- (double)maxWidthForDateStringWithFont:(id)font
{
  fontCopy = font;
  v5 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v6 = +[NSTimeZone systemTimeZone];
  [v5 setTimeZone:v6];

  v7 = objc_alloc_init(NSDateComponents);
  [v7 setYear:{2010, 0, 0xCuLL, xmmword_10008B960, xmmword_10008B970}];
  [v7 setMonth:7];
  [v7 setDay:10];
  [v7 setSecond:0];
  v8 = 0;
  v9 = 0.0;
  do
  {
    [v7 setHour:*(&v15 + v8)];
    [v7 setMinute:*(&v15 + v8 + 8)];
    v10 = [v5 dateFromComponents:v7];
    v11 = [(NSDateFormatter *)self->_timeFormatter stringFromDate:v10];
    [v11 _legacy_sizeWithFont:fontCopy];
    v13 = v12;

    if (v13 > v9)
    {
      v9 = v13;
    }

    v8 += 16;
  }

  while (v8 != 64);

  return v9 + 6.0;
}

- (void)addCity:(id)city animated:(BOOL)animated
{
  animatedCopy = animated;
  cityCopy = city;
  cityViews = self->_cityViews;
  v13 = cityCopy;
  alCityId = [cityCopy alCityId];
  v9 = [(NSMutableDictionary *)cityViews objectForKey:alCityId];

  if (!v9)
  {
    v10 = [[MTAWorldClockMapCityView alloc] initWithCity:v13];
    [(MTAWorldClockMapCityView *)v10 start];
    [(MTAWorldClockMapCityView *)v10 setTimeFormatter:self->_timeFormatter];
    [(MTAWorldClockMapCityView *)v10 setTimeLabelWidth:self->_maxTimeStringWidth];
    [(MTAWorldClockMapCityView *)v10 sizeToFit];
    v11 = self->_cityViews;
    alCityId2 = [v13 alCityId];
    [(NSMutableDictionary *)v11 setObject:v10 forKey:alCityId2];

    [(MTAWorldClockMapView *)self addSubview:v10];
    if (animatedCopy)
    {
      objc_storeStrong(&self->_addedCityView, v10);
    }
  }
}

- (void)removeCity:(id)city
{
  cityViews = self->_cityViews;
  cityCopy = city;
  alCityId = [cityCopy alCityId];
  v7 = [(NSMutableDictionary *)cityViews objectForKey:alCityId];

  v8 = self->_cityViews;
  alCityId2 = [cityCopy alCityId];

  [(NSMutableDictionary *)v8 removeObjectForKey:alCityId2];
  [(MTAWorldClockMapView *)self setNeedsLayout];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10001EE14;
  v13[3] = &unk_1000ADAB0;
  v14 = v7;
  selfCopy = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001EE54;
  v11[3] = &unk_1000ADFF8;
  v12 = v14;
  v10 = v14;
  [UIView animateWithDuration:0 delay:v13 options:v11 animations:0.3 completion:0.0];
}

- (void)setCities:(id)cities
{
  citiesCopy = cities;
  allKeys = [(NSMutableDictionary *)self->_cityViews allKeys];
  v6 = [NSMutableSet setWithArray:allKeys];

  v7 = [citiesCopy valueForKey:@"alCityId"];
  v8 = [NSMutableSet setWithArray:v7];

  if (([v6 isEqualToSet:v8] & 1) == 0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = self->_cityViews;
    v10 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [(NSMutableDictionary *)self->_cityViews objectForKeyedSubscript:*(*(&v24 + 1) + 8 * v13)];
          [v14 removeFromSuperview];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [(NSMutableDictionary *)v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    [(NSMutableDictionary *)self->_cityViews removeAllObjects];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = citiesCopy;
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(MTAWorldClockMapView *)self addCity:*(*(&v20 + 1) + 8 * v19) animated:0, v20];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v17);
    }
  }
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  window = [(MTAWorldClockMapView *)self window];

  if (window)
  {
    v7 = [UISnapshotView alloc];
    [(UIImageView *)self->_mapWithTerminator frame];
    v8 = [v7 initWithFrame:?];
    [v8 captureSnapshotOfView:self->_mapWithTerminator withSnapshotType:1];
    [(MTAWorldClockMapView *)self insertSubview:v8 aboveSubview:self->_mapWithTerminator];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001F1F4;
    v12[3] = &unk_1000AD9A0;
    v13 = v8;
    selfCopy = self;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10001F248;
    v10[3] = &unk_1000AD9C8;
    v11 = v13;
    v9 = v13;
    [coordinatorCopy animateAlongsideTransition:v12 completion:v10];
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  sub_10001F290(self, a2, fits.width, fits.height);
  v7 = v5 / v6;
  v8 = width / (v5 / v6);
  if (width / height >= v7)
  {
    v9 = height;
  }

  else
  {
    v9 = v8;
  }

  v10 = width;
  result.height = v9;
  result.width = v10;
  return result;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = MTAWorldClockMapView;
  [(MTAWorldClockMapView *)&v4 didMoveToWindow];
  if (self->_needsUpdateTerminator)
  {
    window = [(MTAWorldClockMapView *)self window];

    if (window)
    {
      [(MTAWorldClockMapView *)self updateTerminator];
    }
  }
}

- (void)layoutSubviews
{
  [(MTAWorldClockMapView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(MTAWorldClockMapView *)self updateTerminator];
  [(UIImageView *)self->_mapWithTerminator setImage:self->_terminatorImages[0]];
  mapWithTerminator = self->_mapWithTerminator;
  v48 = v8;
  v49 = v10;
  [(UIImageView *)mapWithTerminator setFrame:v4, v6, v8, v10];
  allValues = [(NSMutableDictionary *)self->_cityViews allValues];
  v13 = [allValues count];
  v14 = __chkstk_darwin(v13);
  v15 = &v46 - 2 * v14;
  if (v14)
  {
    v46.f64[0] = v4;
    v46.f64[1] = v6;
    v47 = &v46;
    v16 = 0;
    f64 = v15[1].f64;
    do
    {
      v18 = [allValues objectAtIndex:{v16, *&v46, v47}];
      [v18 setIconPlacement:1];
      v19 = v18;
      city = [v19 city];
      alCity = [city alCity];
      [alCity latitude];
      alCity2 = [city alCity];
      [alCity2 longitude];
      v23 = MTUILocationCoordinate2DMake();
      sub_100020B64(v23, v24, v25, v26, v48, v49);

      [v19 frame];
      v28 = v27;
      v30 = v29;
      [v19 hotspotOffset];

      MTUIRoundToPixel();
      MTUIRoundToPixel();

      MTUIRoundToPixel();
      v32 = v31;
      MTUIRoundToPixel();
      *(f64 - 2) = v32;
      *(f64 - 1) = v33;
      *f64 = v28;
      f64[1] = v30;
      f64 += 4;

      ++v16;
    }

    while (v13 != v16);
    sub_10001F750(v15, v13, allValues, v46.f64[0], v46.f64[1], v48, v49);
    v34 = 0;
    v35 = v15[1].f64;
    do
    {
      v36 = [allValues objectAtIndexedSubscript:v34];
      v38 = *v35;
      v37 = v35[1];
      MTUIRoundToPixel();
      v40 = v39;
      MTUIRoundToPixel();
      v42 = v41;
      addedCityView = self->_addedCityView;
      if (addedCityView)
      {
        v44 = v36 == addedCityView;
      }

      else
      {
        v44 = 1;
      }

      if (v44)
      {
        [(MTAWorldClockMapCityView *)v36 setFrame:v40, v41, v38, v37];
      }

      else
      {
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10001FF44;
        v50[3] = &unk_1000ADCC0;
        v51 = v36;
        v52 = v40;
        v53 = v42;
        v54 = v38;
        v55 = v37;
        [UIView animateWithDuration:v50 animations:0.3];
      }

      ++v34;
      v35 += 4;
    }

    while (v13 != v34);
  }

  else
  {
    sub_10001F750(&v46, v13, allValues, v4, v6, v48, v49);
  }

  v45 = self->_addedCityView;
  self->_addedCityView = 0;
}

- (void)startUpdatingTime
{
  [(MTAWorldClockMapView *)self scheduleTerminatorUpdate];
  allValues = [(NSMutableDictionary *)self->_cityViews allValues];
  [allValues makeObjectsPerformSelector:"start"];
}

- (void)stopUpdatingTime
{
  [(MTAWorldClockMapView *)self cancelTerminatorUpdate];
  allValues = [(NSMutableDictionary *)self->_cityViews allValues];
  [allValues makeObjectsPerformSelector:"stop"];
}

- (double)terminatorUpdateInterval
{
  MTUIMainScreenScale();
  v4 = v3;
  [(MTAWorldClockMapView *)self bounds];
  result = 112.5;
  if (v4 * v5 != 0.0)
  {
    return 86400.0 / (v4 * v5);
  }

  return result;
}

- (void)cancelTerminatorUpdate
{
  [(NSTimer *)self->_terminatorTimer invalidate];
  terminatorTimer = self->_terminatorTimer;
  self->_terminatorTimer = 0;
}

- (void)scheduleTerminatorUpdate
{
  [(MTAWorldClockMapView *)self cancelTerminatorUpdate];
  v3 = [NSTimer alloc];
  v4 = +[NSDate date];
  [(MTAWorldClockMapView *)self terminatorUpdateInterval];
  v5 = [v3 initWithFireDate:v4 interval:self target:"updateTerminator" selector:0 userInfo:1 repeats:?];
  terminatorTimer = self->_terminatorTimer;
  self->_terminatorTimer = v5;

  v7 = +[NSRunLoop currentRunLoop];
  [v7 addTimer:self->_terminatorTimer forMode:NSDefaultRunLoopMode];
}

- (void)updateTerminator
{
  [(MTAWorldClockMapView *)self bounds];
  if (!CGRectIsEmpty(v69))
  {
    obj = +[NSDate date];
    [(MTAWorldClockMapView *)self bounds];
    v3 = CGRectEqualToRect(v70, self->_lastTerminatorUpdateBounds);
    if (!v3 || ([(MTAWorldClockMapView *)self terminatorUpdateInterval], v5 = v4, [(NSDate *)self->_terminatorTimestamp timeIntervalSinceDate:obj], v5 - fabs(v6) < 1.0))
    {
      window = [(MTAWorldClockMapView *)self window];

      if (window)
      {
        v66 = v3;
        [(MTAWorldClockMapView *)self bounds];
        v9 = v8;
        v11 = v10;
        MTUIMainScreenScale();
        v13 = v12;
        v14 = v12 * v9;
        v15 = (v12 * v9);
        v16 = v12 * v11;
        v17 = (v12 * v11);
        DeviceRGB = CGColorSpaceCreateDeviceRGB();
        v19 = v14;
        v20 = v16;
        size = 4 * v15 * v17;
        v65 = malloc_type_malloc(size, 0x5AE69908uLL);
        v21 = CGBitmapContextCreate(v65, v15, v17, 8uLL, 4 * v15, DeviceRGB, 0x2002u);
        v71.origin.x = 0.0;
        v71.origin.y = 0.0;
        v71.size.width = v19;
        v71.size.height = v20;
        CGContextClearRect(v21, v71);
        CGContextTranslateCTM(v21, 0.0, v20);
        CGContextScaleCTM(v21, v13, -v13);
        CGContextSetAlpha(v21, 0.6);
        v22 = +[UIColor blackColor];
        CGContextSetFillColorWithColor(v21, [v22 CGColor]);

        v23 = +[NSDate date];
        sub_10002105C(v23);
        v24 = sub_100020890(1);
        CGContextAddPath(v21, [v24 CGPath]);

        CGContextFillPath(v21);
        v25 = [UIColor colorWithWhite:1.0 alpha:0.9];
        CGContextSetStrokeColorWithColor(v21, [v25 CGColor]);

        v26 = +[NSDate date];
        sub_10002105C(v26);
        v27 = sub_100020890(0);
        CGContextAddPath(v21, [v27 CGPath]);

        v28 = DeviceRGB;
        CGContextStrokePath(v21);
        v29 = malloc_type_calloc(1uLL, size, 0x935C0090uLL);
        v30 = CGBitmapContextCreate(v29, v15, v17, 8uLL, 4 * v15, DeviceRGB, 0x2006u);
        v31 = +[UIColor mtui_backgroundColor];
        CGContextSetFillColorWithColor(v30, [v31 CGColor]);

        v72.origin.x = 0.0;
        v72.origin.y = 0.0;
        v72.size.width = v19;
        v72.size.height = v20;
        CGContextFillRect(v30, v72);
        v34 = [sub_100020C18(v32 v33];
        sub_10001F290(v34, v35, v9, v11);
        if (v13 == 1.0)
        {
          v40 = v39;
        }

        else
        {
          v40 = v13 * v39;
        }

        if (v13 == 1.0)
        {
          v41 = v38;
        }

        else
        {
          v41 = v13 * v38;
        }

        if (v13 == 1.0)
        {
          v42 = v36;
        }

        else
        {
          v37 = v13 * v37;
          v42 = v13 * v36;
        }

        v43 = v42;
        v44 = v41;
        v45 = v40;
        v73.origin.y = v20 - CGRectGetMaxY(*(&v37 - 1));
        v73.origin.x = v42;
        v73.size.width = v41;
        v73.size.height = v40;
        CGContextDrawImage(v30, v73, v34);
        Image = CGBitmapContextCreateImage(v21);
        v74.origin.x = 0.0;
        v74.origin.y = 0.0;
        v74.size.width = v19;
        v74.size.height = v20;
        CGContextDrawImage(v30, v74, Image);
        CGImageRelease(Image);
        v47 = -180;
        Mutable = CGPathCreateMutable();
        do
        {
          v47 += 30;
          v49 = MTUILocationCoordinate2DMake();
          v53 = sub_100020B64(v49, v50, v51, v52, v9, v11);
          v54 = v13 * (floorf(v53) + 0.5);
          CGPathMoveToPoint(Mutable, 0, v54, 0.0);
          CGPathAddLineToPoint(Mutable, 0, v54, v20);
        }

        while (v47 < 150);
        v55 = +[UIColor whiteColor];
        CGContextSetStrokeColorWithColor(v30, [v55 CGColor]);

        CGContextSetAlpha(v30, 0.100000001);
        CGContextSetLineWidth(v30, v13);
        CGContextAddPath(v30, Mutable);
        CGContextStrokePath(v30);
        v56 = CGBitmapContextCreateImage(v30);
        v57 = [[UIImage alloc] initWithCGImage:v56 scale:0 orientation:v13];
        CGImageRelease(v56);
        CGColorSpaceRelease(v28);
        CGContextRelease(v30);
        CGContextRelease(v21);
        CGPathRelease(Mutable);
        free(v65);
        free(v29);
        v58 = self->_terminatorImages[0];
        self->_terminatorImages[0] = v57;

        objc_storeStrong(&self->_terminatorTimestamp, obj);
        [(MTAWorldClockMapView *)self bounds];
        self->_lastTerminatorUpdateBounds.origin.x = v59;
        self->_lastTerminatorUpdateBounds.origin.y = v60;
        self->_lastTerminatorUpdateBounds.size.width = v61;
        self->_lastTerminatorUpdateBounds.size.height = v62;
        self->_needsUpdateTerminator = 0;
        if (self->_terminatorTimer)
        {
          v63 = v66;
        }

        else
        {
          v63 = 1;
        }

        if ((v63 & 1) == 0)
        {
          [(MTAWorldClockMapView *)self scheduleTerminatorUpdate];
        }

        [(MTAWorldClockMapView *)self setNeedsLayout];
      }

      else
      {
        self->_needsUpdateTerminator = 1;
      }
    }
  }
}

+ (void)updateNewYearsDay
{
  v7 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
  v2 = [NSTimeZone timeZoneForSecondsFromGMT:0];
  [v7 setTimeZone:v2];

  v3 = +[NSDate date];
  v4 = [v7 components:4 fromDate:v3];

  [v4 setMonth:1];
  [v4 setDay:1];
  [v4 setHour:0];
  [v4 setMinute:0];
  [v4 setSecond:0];
  v5 = [v7 dateFromComponents:v4];
  v6 = qword_1000D2940;
  qword_1000D2940 = v5;
}

@end