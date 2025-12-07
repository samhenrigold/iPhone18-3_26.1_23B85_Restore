@interface DirectionsStepView
+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom;
+ (double)_heightForRoadDescriptionViewWithStep:(id)step forWidth:(double)width;
+ (double)_textWidthForWidth:(double)width withManeuver:(BOOL)maneuver metrics:(id *)metrics;
+ (double)heightForWidth:(double)width route:(id)route step:(id)step idiom:(int64_t)idiom;
+ (id)_multiPartAttributedStringForRoadDescriptionsInStep:(id)step;
+ (id)_roadDescriptionsLabelForStep:(id)step width:(double)width;
- (double)_dimAlpha;
- (id)_majorLabelColor;
- (id)_minorLabelColor;
- (id)_shieldImageFromStep:(id)step route:(id)route shieldSize:(int64_t)size;
- (id)signView;
- (void)_updateSignViewForStep:(id)step maneuverImage:(id)image route:(id)route;
- (void)_updateStyleValuesFromTheme;
- (void)layoutSubviews;
- (void)setIsDimmedStep:(BOOL)step;
- (void)setIsSelectedRow:(BOOL)row;
- (void)setRoute:(id)route step:(id)step stepIndex:(unint64_t)index alignToLeftEdgeIfNoManeuverSign:(BOOL)sign size:(int64_t)size;
- (void)setTrailingView:(id)view;
@end

@implementation DirectionsStepView

- (id)_minorLabelColor
{
  v3 = +[UIColor secondaryLabelColor];
  if (self->_isDimmedStep)
  {
    [(DirectionsStepView *)self _dimAlpha];
    v4 = [v3 colorWithAlphaComponent:?];

    v3 = v4;
  }

  return v3;
}

- (id)_majorLabelColor
{
  v3 = +[UIColor labelColor];
  if (self->_isDimmedStep)
  {
    [(DirectionsStepView *)self _dimAlpha];
    v4 = [v3 colorWithAlphaComponent:?];

    v3 = v4;
  }

  return v3;
}

- (void)_updateStyleValuesFromTheme
{
  v3 = 1.0;
  if (self->_isDimmedStep)
  {
    [(DirectionsStepView *)self _dimAlpha];
  }

  [(SimpleSignView *)self->_signView setAlpha:v3];
  labels = [(LabelListView *)self->_labelListView labels];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100659DDC;
  v5[3] = &unk_101624DA0;
  v5[4] = self;
  [labels enumerateObjectsUsingBlock:v5];
  [(SimpleSignView *)self->_signView updateStyleForTheme];
}

- (double)_dimAlpha
{
  traitCollection = [(DirectionsStepView *)self traitCollection];
  v3 = dbl_101212820[[traitCollection userInterfaceStyle] == 2];

  return v3;
}

- (void)setIsDimmedStep:(BOOL)step
{
  if (self->_isDimmedStep != step)
  {
    self->_isDimmedStep = step;
    [(DirectionsStepView *)self _updateStyleValuesFromTheme];
  }
}

- (void)setIsSelectedRow:(BOOL)row
{
  if (self->_isSelectedRow != row)
  {
    self->_isSelectedRow = row;
    [(DirectionsStepView *)self _updateStyleValuesFromTheme];
  }
}

- (id)signView
{
  signView = self->_signView;
  if (!signView)
  {
    v9 = 0u;
    v4 = objc_opt_class();
    v5 = [(DirectionsStepView *)self traitCollection:0];
    [v5 userInterfaceIdiom];
    if (v4)
    {
      objc_msgSend_cellMetricsForIdiom_(v4);
    }

    else
    {
      v9 = 0u;
    }

    v6 = [[SimpleSignView alloc] initWithFrame:0.0, 0.0, *(&v9 + 1), 0.0];
    v7 = self->_signView;
    self->_signView = v6;

    [(SimpleSignView *)self->_signView setManeuverViewEdgeInsets:5.0, 5.0, 5.0, 5.0];
    signView = self->_signView;
  }

  return signView;
}

- (void)_updateSignViewForStep:(id)step maneuverImage:(id)image route:(id)route
{
  stepCopy = step;
  imageCopy = image;
  drivingSide = [stepCopy drivingSide];
  [(DirectionsStepView *)self _updateStyleValuesFromTheme];
  junction = [stepCopy junction];
  if (junction)
  {
    v11 = [MKJunction alloc];
    junction2 = [stepCopy junction];
    v13 = [v11 initWithJunction:junction2];
  }

  else
  {
    v13 = 0;
  }

  v14 = [GuidanceManeuverArtwork alloc];
  maneuverType = [stepCopy maneuverType];
  artworkOverride = [stepCopy artworkOverride];
  v17 = [(GuidanceManeuverArtwork *)v14 initWithManeuver:maneuverType junction:v13 drivingSide:drivingSide artworkDataSource:artworkOverride];
  maneuverView = [(SimpleSignView *)self->_signView maneuverView];
  [maneuverView setManeuverArtwork:v17];

  maneuverView2 = [(SimpleSignView *)self->_signView maneuverView];
  [maneuverView2 setFraming:1];

  v20 = objc_opt_class();
  if (v20)
  {
    objc_msgSend_arrowMetrics(v20);
  }

  else
  {
    memset(__src, 0, sizeof(__src));
  }

  maneuverView3 = [(SimpleSignView *)self->_signView maneuverView];
  memcpy(__dst, __src, sizeof(__dst));
  [maneuverView3 setArrowMetrics:__dst];

  v22 = objc_opt_class();
  if (v22)
  {
    objc_msgSend_junctionArrowMetrics(v22);
  }

  else
  {
    memset(v28, 0, sizeof(v28));
  }

  v23 = [(SimpleSignView *)self->_signView maneuverView:v28[0]];
  memcpy(__dst, v28, sizeof(__dst));
  [v23 setJunctionArrowMetrics:__dst];

  if ([stepCopy isEVChargerStep])
  {
    v24 = +[GEOFeatureStyleAttributes evChargerStyleAttributes];
    signViewIconSize = [objc_opt_class() signViewIconSize];
    v26 = +[UIScreen mainScreen];
    [v26 scale];
    v27 = [MKIconManager imageForStyle:v24 size:signViewIconSize forScale:0 format:?];
    [(SimpleSignView *)self->_signView setShieldImage:v27];
  }

  else
  {
    [(SimpleSignView *)self->_signView setShieldImage:imageCopy];
  }
}

- (id)_shieldImageFromStep:(id)step route:(id)route shieldSize:(int64_t)size
{
  stepCopy = step;
  routeCopy = route;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_10065A598;
  v25 = sub_10065A5A8;
  v26 = 0;
  geoStep = [stepCopy geoStep];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10065A5B0;
  v20[3] = &unk_101660090;
  v20[4] = &v27;
  v20[5] = &v21;
  [geoStep shieldInfo:v20];

  geoStep2 = [stepCopy geoStep];
  if ([geoStep2 maneuverType] == 12)
  {
    v11 = *(v28 + 6);

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    goto LABEL_9;
  }

  geoStep3 = [stepCopy geoStep];
  if (![geoStep3 maneuverIsHighwayExit])
  {
    v17 = 0;
    goto LABEL_8;
  }

  v18 = *(v28 + 6);

  if (!v18)
  {
    goto LABEL_6;
  }

LABEL_3:
  geoStep2 = objc_alloc_init(VKIconModifiers);
  [geoStep2 setText:v22[5]];
  geoStep3 = +[VKIconManager sharedManager];
  v13 = *(v28 + 6);
  v14 = v22[5];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  *&v16 = v16;
  v17 = [geoStep3 imageForDataID:v13 text:v14 contentScale:size sizeGroup:geoStep2 modifiers:v16];

LABEL_8:
LABEL_9:
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (void)setTrailingView:(id)view
{
  viewCopy = view;
  trailingView = self->_trailingView;
  if (trailingView != viewCopy)
  {
    [(UIView *)trailingView removeFromSuperview];
    objc_storeStrong(&self->_trailingView, view);
    [(UIView *)self->_trailingView _mapkit_fittingSize];
    [(NSLayoutConstraint *)self->_trailingGuideWidth setConstant:?];
    if (self->_trailingView)
    {
      [(DirectionsStepView *)self addSubview:?];
      topAnchor = [(UIView *)self->_trailingView topAnchor];
      topAnchor2 = [(UILayoutGuide *)self->_trailingViewGuide topAnchor];
      v17 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
      v20[0] = v17;
      bottomAnchor = [(UIView *)self->_trailingView bottomAnchor];
      bottomAnchor2 = [(UILayoutGuide *)self->_trailingViewGuide bottomAnchor];
      v7 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
      v20[1] = v7;
      leadingAnchor = [(UIView *)self->_trailingView leadingAnchor];
      leadingAnchor2 = [(UILayoutGuide *)self->_trailingViewGuide leadingAnchor];
      v10 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v20[2] = v10;
      trailingAnchor = [(UIView *)self->_trailingView trailingAnchor];
      trailingAnchor2 = [(UILayoutGuide *)self->_trailingViewGuide trailingAnchor];
      v13 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v20[3] = v13;
      v14 = [NSArray arrayWithObjects:v20 count:4];
      [NSLayoutConstraint activateConstraints:v14];
    }

    [(DirectionsStepView *)self setNeedsLayout];
  }
}

- (void)setRoute:(id)route step:(id)step stepIndex:(unint64_t)index alignToLeftEdgeIfNoManeuverSign:(BOOL)sign size:(int64_t)size
{
  routeCopy = route;
  stepCopy = step;
  v13 = +[UIDevice currentDevice];
  if ([v13 userInterfaceIdiom] == 1)
  {

    goto LABEL_4;
  }

  v14 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v14 userInterfaceIdiom];

  if (userInterfaceIdiom == 5)
  {
LABEL_4:
    if (!(routeCopy | stepCopy))
    {
      goto LABEL_24;
    }
  }

  self->_alignLeftIfNoManeuverSign = sign;
  v16 = [objc_opt_class() _labelListViewClassForRoute:routeCopy step:stepCopy];
  v17 = objc_opt_class();
  labelListView = self->_labelListView;
  if (v16 == v17)
  {
    [(RouteStepLabelListView *)labelListView setRoute:routeCopy step:stepCopy tableMode:0];
  }

  else
  {
    [(RouteStepLabelListView *)labelListView removeFromSuperview];
    v19 = [[v16 alloc] initWithRoute:routeCopy step:stepCopy tableMode:0];
    v20 = self->_labelListView;
    self->_labelListView = v19;

    [(LabelListView *)self->_labelListView setTextAlignment:+[NSLocale currentTextAlignment]];
    [(DirectionsStepView *)self addSubview:self->_labelListView];
  }

  if (!self->_signView)
  {
    v68 = 0u;
    v21 = objc_opt_class();
    traitCollection = [(DirectionsStepView *)self traitCollection];
    [traitCollection userInterfaceIdiom];
    if (v21)
    {
      objc_msgSend_cellMetricsForIdiom_(v21);
    }

    else
    {
      v68 = 0u;
    }

    v23 = [[SimpleSignView alloc] initWithFrame:0.0, 0.0, *(&v68 + 1), 0.0];
    signView = self->_signView;
    self->_signView = v23;

    signView = [(DirectionsStepView *)self signView];
    [(DirectionsStepView *)self addSubview:signView];
  }

  [(MKMultiPartLabel *)self->_roadDescriptionLabel removeFromSuperview];
  geoStep = [stepCopy geoStep];
  roadDescriptionsCount = [geoStep roadDescriptionsCount];

  if (roadDescriptionsCount)
  {
    if (self->_roadDescriptionLabel)
    {
      roadDescriptionLabel = [objc_opt_class() _multiPartAttributedStringForRoadDescriptionsInStep:stepCopy];
      [(MKMultiPartLabel *)self->_roadDescriptionLabel setMultiPartString:roadDescriptionLabel];
    }

    else
    {
      [(DirectionsStepView *)self bounds];
      v30 = v29;
      [(NSLayoutConstraint *)self->_trailingGuideWidth constant];
      v32 = v31;
      [(RouteStepLabelListView *)self->_labelListView frame];
      v33 = v30 - (v32 + CGRectGetMinX(v70));
      v34 = [objc_opt_class() _roadDescriptionsLabelForStep:stepCopy width:v33];
      roadDescriptionLabel = self->_roadDescriptionLabel;
      self->_roadDescriptionLabel = v34;
    }

    [(DirectionsStepView *)self addSubview:self->_roadDescriptionLabel];
  }

  v35 = objc_alloc_init(UILayoutGuide);
  trailingViewGuide = self->_trailingViewGuide;
  self->_trailingViewGuide = v35;

  [(DirectionsStepView *)self addLayoutGuide:self->_trailingViewGuide];
  v37 = objc_opt_class();
  traitCollection2 = [(DirectionsStepView *)self traitCollection];
  [traitCollection2 userInterfaceIdiom];
  v66 = stepCopy;
  v67 = routeCopy;
  if (v37)
  {
    objc_msgSend_cellMetricsForIdiom_(v37);
  }

  widthAnchor = [(UILayoutGuide *)self->_trailingViewGuide widthAnchor];
  v40 = [widthAnchor constraintEqualToConstant:0.0];
  trailingGuideWidth = self->_trailingGuideWidth;
  self->_trailingGuideWidth = v40;

  trailingAnchor = [(DirectionsStepView *)self trailingAnchor];
  trailingAnchor2 = [(UILayoutGuide *)self->_trailingViewGuide trailingAnchor];
  v44 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:0.0];
  trailingGuideToContentViewConstraint = self->_trailingGuideToContentViewConstraint;
  self->_trailingGuideToContentViewConstraint = v44;

  v46 = objc_opt_new();
  topAnchor = [(UILayoutGuide *)self->_trailingViewGuide topAnchor];
  topAnchor2 = [(DirectionsStepView *)self topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v69[0] = v48;
  bottomAnchor = [(UILayoutGuide *)self->_trailingViewGuide bottomAnchor];
  bottomAnchor2 = [(DirectionsStepView *)self bottomAnchor];
  v51 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v52 = self->_trailingGuideToContentViewConstraint;
  v69[1] = v51;
  v69[2] = v52;
  v53 = v46;
  v69[3] = self->_trailingGuideWidth;
  v54 = [NSArray arrayWithObjects:v69 count:4];
  [v46 addObjectsFromArray:v54];

  [NSLayoutConstraint activateConstraints:v46];
  stepCopy = v66;
  routeCopy = v67;
  v55 = sub_100F5C4B8(v66, v67);
  v56 = v55;
  if (v55)
  {
    mapItemIfLoaded = [v55 mapItemIfLoaded];
    traitCollection3 = [(DirectionsStepView *)self traitCollection];
    [traitCollection3 displayScale];
    v60 = +[MKMapItem _maps_markerImageForMapItem:scale:size:useMarkerFallback:](MKMapItem, "_maps_markerImageForMapItem:scale:size:useMarkerFallback:", mapItemIfLoaded, [objc_opt_class() signViewIconSize], 1, v59);

    [(DirectionsStepView *)self setAccessibilityIdentifier:@"DirectionsStepCell.Waypoint"];
  }

  else
  {
    v61 = [(DirectionsStepView *)self _shieldImageFromStep:v66 route:v67 shieldSize:v64];
    image = [v61 image];
    [v61 contentScale];
    v60 = [UIImage imageWithCGImage:image scale:0 orientation:v63];
    [(DirectionsStepView *)self setAccessibilityIdentifier:@"DirectionsStepCell.Maneuver"];
  }

  [(DirectionsStepView *)self _updateSignViewForStep:v66 maneuverImage:v60 route:v67];
  [(DirectionsStepView *)self setNeedsLayout];

LABEL_24:
}

- (void)layoutSubviews
{
  v85.receiver = self;
  v85.super_class = DirectionsStepView;
  [(DirectionsStepView *)&v85 layoutSubviews];
  maneuverView = [(SimpleSignView *)self->_signView maneuverView];
  maneuverArtwork = [maneuverView maneuverArtwork];
  if ([maneuverArtwork maneuver])
  {

LABEL_4:
    v6 = 0;
    v7 = 1;
    goto LABEL_5;
  }

  shieldImage = [(SimpleSignView *)self->_signView shieldImage];

  if (shieldImage)
  {
    goto LABEL_4;
  }

  v7 = !self->_alignLeftIfNoManeuverSign;
  v6 = 1;
LABEL_5:
  v84 = 0;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v8 = objc_opt_class();
  traitCollection = [(DirectionsStepView *)self traitCollection];
  [traitCollection userInterfaceIdiom];
  if (v8)
  {
    objc_msgSend_cellMetricsForIdiom_(v8);
  }

  else
  {
    v84 = 0;
    v82 = 0u;
    v83 = 0u;
    v80 = 0u;
    v81 = 0u;
  }

  [(DirectionsStepView *)self bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [(NSLayoutConstraint *)self->_trailingGuideWidth constant];
  v19 = v15 - v18;
  v20 = objc_opt_class();
  v78[2] = v82;
  v78[3] = v83;
  v79 = v84;
  v78[0] = v80;
  v78[1] = v81;
  [v20 _textWidthForWidth:v7 withManeuver:v78 metrics:v19];
  v22 = v21;
  v89.origin.x = v11;
  v89.origin.y = v13;
  v89.size.width = v19;
  v89.size.height = v17;
  [(RouteStepLabelListView *)self->_labelListView layoutToFitSize:v22, CGRectGetHeight(v89)];
  [(RouteStepLabelListView *)self->_labelListView frame];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  if (v7)
  {
    v29 = *(&v83 + 1) + *&v82 + *&v83;
  }

  else
  {
    v29 = *&v82;
  }

  [(MKMultiPartLabel *)self->_roadDescriptionLabel frame];
  superview = [(MKMultiPartLabel *)self->_roadDescriptionLabel superview];
  if (superview)
  {
    [(MKMultiPartLabel *)self->_roadDescriptionLabel sizeThatFits:v22, 1.79769313e308];
    v32 = v31;
  }

  else
  {
    v32 = 0.0;
  }

  [(DirectionsStepView *)self bounds];
  v69 = v33;
  v71 = v34;
  v67 = *&v82;
  v68 = v35;
  v36 = v83;
  v66 = *(&v83 + 1);
  [(SimpleSignView *)self->_signView setHidden:v6];
  v90.origin.x = v29;
  v90.origin.y = v24;
  v90.size.width = v26;
  v90.size.height = v28;
  Height = CGRectGetHeight(v90);
  v91.origin.y = 0.0;
  v91.origin.x = v29;
  v91.size.width = v22;
  v91.size.height = v32;
  if (CGRectGetHeight(v91) > 0.00000011920929)
  {
    v92.origin.x = v29;
    v92.origin.y = v24;
    v92.size.width = v26;
    v92.size.height = v28;
    if (CGRectGetHeight(v92) <= 0.00000011920929)
    {
      v38 = Height;
    }

    else
    {
      v38 = Height + 4.0;
    }

    v93.origin.y = 0.0;
    v93.origin.x = v29;
    v93.size.width = v22;
    v93.size.height = v32;
    Height = v38 + CGRectGetHeight(v93);
  }

  v72 = v32;
  v73 = v22;
  [(DirectionsStepView *)self bounds];
  v39 = v28;
  v40 = (CGRectGetHeight(v94) - Height) * 0.5;
  v95.origin.x = v29;
  v95.origin.y = v40;
  v95.size.width = v26;
  v95.size.height = v28;
  v65 = CGRectGetMaxY(v95) + 4.0;
  [(SimpleSignView *)self->_signView frame];
  v41 = v26;
  v43 = v42;
  v45 = v44;
  v70 = round(v69 + (*&v36 + v67 + v66 - v42) * 0.5);
  v46 = round(v71 + (v68 - v44) * 0.5);
  if (sub_10000FA08(self) == 5)
  {
    v96.origin.x = v29;
    v96.origin.y = v40;
    v47 = v41;
    v96.size.width = v41;
    v96.size.height = v39;
    v48 = CGRectGetHeight(v96);
    [(SimpleSignView *)self->_signView frame];
    if (v48 > CGRectGetHeight(v97))
    {
      v46 = 10.0;
    }
  }

  else
  {
    v47 = v41;
  }

  [(SimpleSignView *)self->_signView setFrame:v70, v46, v43, v45];
  [(RouteStepLabelListView *)self->_labelListView setFrame:v29, v40, v47, v39];
  [(MKMultiPartLabel *)self->_roadDescriptionLabel setFrame:v29, v65, v73, v72];
  [(MKMultiPartLabel *)self->_roadDescriptionLabel setBounds:0.0, 0.0, v73, v72];
  v49 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v49 userInterfaceLayoutDirection];

  if (userInterfaceLayoutDirection == 1)
  {
    roadDescriptionLabel = self->_roadDescriptionLabel;
    if (roadDescriptionLabel)
    {
      v88[0] = self->_labelListView;
      v88[1] = roadDescriptionLabel;
      v88[2] = self->_signView;
      v52 = v88;
      v53 = 3;
    }

    else
    {
      signView = self->_signView;
      v87[0] = self->_labelListView;
      v87[1] = signView;
      v52 = v87;
      v53 = 2;
    }

    v55 = [NSArray arrayWithObjects:v52 count:v53];
    [(DirectionsStepView *)self bounds];
    MaxX = CGRectGetMaxX(v98);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v57 = v55;
    v58 = [v57 countByEnumeratingWithState:&v74 objects:v86 count:16];
    if (v58)
    {
      v59 = v58;
      v60 = *v75;
      do
      {
        for (i = 0; i != v59; i = i + 1)
        {
          if (*v75 != v60)
          {
            objc_enumerationMutation(v57);
          }

          v62 = *(*(&v74 + 1) + 8 * i);
          [v62 frame];
          [v62 setFrame:MaxX - (v63 + v64)];
        }

        v59 = [v57 countByEnumeratingWithState:&v74 objects:v86 count:16];
      }

      while (v59);
    }
  }
}

+ (id)_multiPartAttributedStringForRoadDescriptionsInStep:(id)step
{
  stepCopy = step;
  if (qword_10195CDC0 != -1)
  {
    dispatch_once(&qword_10195CDC0, &stru_101624D78);
  }

  v5 = [NSMutableArray alloc];
  geoStep = [stepCopy geoStep];
  v7 = [v5 initWithCapacity:{objc_msgSend(geoStep, "roadDescriptionsCount")}];

  geoStep2 = [stepCopy geoStep];
  roadDescriptions = [geoStep2 roadDescriptions];

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = roadDescriptions;
  v10 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        formattedDescription = [v14 formattedDescription];
        v27 = NSForegroundColorAttributeName;
        accentColor = [v14 accentColor];
        v17 = accentColor;
        if (!accentColor)
        {
          v3 = +[UIColor labelColor];
          v17 = v3;
        }

        v28 = v17;
        v18 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [NSAttributedString _mapkit_attributedTransitStringForServerFormattedString:formattedDescription defaultAttributes:v18];

        if (!accentColor)
        {
        }

        [v7 addObject:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  v20 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v7 repeatedSeparator:qword_10195CDC8];

  return v20;
}

+ (id)_roadDescriptionsLabelForStep:(id)step width:(double)width
{
  stepCopy = step;
  v7 = [[MKMultiPartLabel alloc] initWithFrame:{0.0, 0.0, width, 0.0}];
  [v7 setNumberOfLines:0];
  [v7 setTextInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v8 = [objc_msgSend(self _labelListViewClassForRoute:0 step:{stepCopy), "fontsForStrings:route:step:tableMode:", &off_1016EC860, 0, stepCopy, 0}];
  lastObject = [v8 lastObject];
  [v7 setFont:lastObject];

  v10 = [self _multiPartAttributedStringForRoadDescriptionsInStep:stepCopy];

  [v7 setMultiPartString:v10];

  return v7;
}

+ (double)heightForWidth:(double)width route:(id)route step:(id)step idiom:(int64_t)idiom
{
  stepCopy = step;
  routeCopy = route;
  geoStep = [stepCopy geoStep];
  v13 = [geoStep maneuverType] != 0;

  v14 = [self _labelListViewClassForRoute:routeCopy step:stepCopy];
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  objc_msgSend_cellMetricsForIdiom_(self);
  v22[2] = v26;
  v22[3] = v27;
  v23 = v28;
  v22[0] = v24;
  v22[1] = v25;
  [self _textWidthForWidth:v13 withManeuver:v22 metrics:width];
  v16 = v15;
  [v14 heightForWidth:routeCopy route:stepCopy step:idiom idiom:?];
  v18 = v17;

  [self _heightForRoadDescriptionViewWithStep:stepCopy forWidth:v16];
  v20 = v19;

  return fmax(v20 + v18 + *&v24 + *(&v24 + 1), *(&v25 + 1));
}

+ (double)_textWidthForWidth:(double)width withManeuver:(BOOL)maneuver metrics:(id *)metrics
{
  result = width - (metrics->var4 + metrics->var5);
  if (maneuver)
  {
    return result - (metrics->var6 + metrics->var7);
  }

  return result;
}

+ (double)_heightForRoadDescriptionViewWithStep:(id)step forWidth:(double)width
{
  stepCopy = step;
  geoStep = [stepCopy geoStep];
  roadDescriptions = [geoStep roadDescriptions];
  v8 = [roadDescriptions count];

  if (v8)
  {
    v9 = [objc_opt_class() _roadDescriptionsLabelForStep:stepCopy width:width];
    [v9 sizeThatFits:{width, 1.79769313e308}];
    v11 = v10;
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

+ ($8452678F12DBC466148836A9D382CAFC)cellMetricsForIdiom:(SEL)idiom
{
  if (a4 == 5)
  {
    _Q1 = xmmword_101212830;
    v5 = 22.0;
    v6 = 5.0;
    v7 = 40.0;
  }

  else
  {
    __asm { FMOV            V1.2D, #15.0 }

    v5 = 30.0;
    v6 = 15.0;
    v7 = 60.0;
  }

  retstr->var0 = v6;
  retstr->var1 = v6;
  retstr->var2 = 17.0;
  retstr->var3 = v7;
  *&retstr->var4 = _Q1;
  *&retstr->var5 = _Q1;
  retstr->var7 = v5;
  retstr->var8 = v5;
  return result;
}

@end