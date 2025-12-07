@interface NTKDigitalTimeGraphicCircularView
- (CLKMonochromeFilterProvider)filterProvider;
- (id)initFullColorImageViewWithDevice:(id)device;
- (void)_startClockUpdates;
- (void)_stopClockUpdates;
- (void)_updateProgress;
- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason;
- (void)layoutSubviews;
- (void)setLayoutConstants:(id *)constants;
- (void)transitionToMonochromeWithFraction:(double)fraction;
@end

@implementation NTKDigitalTimeGraphicCircularView

- (void)layoutSubviews
{
  v28.receiver = self;
  v28.super_class = NTKDigitalTimeGraphicCircularView;
  [(NTKDigitalTimeGraphicCircularView *)&v28 layoutSubviews];
  [(NTKDigitalTimeGraphicCircularView *)self bounds];
  x = v31.origin.x;
  y = v31.origin.y;
  width = v31.size.width;
  height = v31.size.height;
  v7 = CGRectGetWidth(v31);
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v8 = CGRectGetHeight(v32);
  if (v7 < v8)
  {
    v8 = v7;
  }

  v9 = v8 * 0.5;
  layer = [(NTKDigitalTimeGraphicCircularView *)self layer];
  [layer setCornerRadius:v9];
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v11 = CGRectGetWidth(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v12 = CGRectGetHeight(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MidX = CGRectGetMidX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  MidY = CGRectGetMidY(v36);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  unfilledSecondsDialView = [(NTKDigitalTimeGraphicCircularView *)self unfilledSecondsDialView];
  v29[0] = unfilledSecondsDialView;
  filledSecondsDialView = [(NTKDigitalTimeGraphicCircularView *)self filledSecondsDialView];
  v29[1] = filledSecondsDialView;
  v17 = [NSArray arrayWithObjects:v29 count:2];

  v18 = [v17 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * i);
        [v22 setBounds:{0.0, 0.0, v11, v12}];
        [v22 setCenter:{MidX, MidY}];
      }

      v19 = [v17 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v19);
  }

  timeLabel = [(NTKDigitalTimeGraphicCircularView *)self timeLabel];
  [timeLabel setBounds:{0.0, 0.0, v11, v12}];
  [timeLabel setCenter:{MidX, MidY}];
}

- (id)initFullColorImageViewWithDevice:(id)device
{
  deviceCopy = device;
  v30.receiver = self;
  v30.super_class = NTKDigitalTimeGraphicCircularView;
  v5 = [(NTKDigitalTimeGraphicCircularView *)&v30 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = objc_opt_class();
    objc_msgSend__layoutConstantsForDevice_(v6);
    v8 = v7;
    v5->_layoutConstants.secondsTickSize.width = v9;
    v5->_layoutConstants.secondsTickSize.height = v10;
    v5->_layoutConstants.secondsDialDiameter = v11;
    v5->_layoutConstants.timeFontSize = v7;
    v5->_inactiveTickAccentAlpha = 0.25;
    v5->_activeTickAccentAlpha = 0.9;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_5A38;
    v28[3] = &unk_10508;
    v28[4] = 60;
    *&v28[5] = v9;
    *&v28[6] = v10;
    v29 = xmmword_CC80;
    v12 = objc_retainBlock(v28);
    v13 = [UIColor colorWithWhite:1.0 alpha:v5->_inactiveTickAccentAlpha];
    v14 = (v12[2])(v12, v13);
    unfilledSecondsDialView = v5->_unfilledSecondsDialView;
    v5->_unfilledSecondsDialView = v14;

    [(NTKDigitalTimeGraphicCircularView *)v5 addSubview:v5->_unfilledSecondsDialView];
    v16 = [UIColor colorWithWhite:1.0 alpha:v5->_activeTickAccentAlpha];
    v17 = (v12[2])(v12, v16);
    filledSecondsDialView = v5->_filledSecondsDialView;
    v5->_filledSecondsDialView = v17;

    LODWORD(v19) = 0.5;
    [(NTKRichComplicationDialView *)v5->_filledSecondsDialView setProgress:v19];
    [(NTKDigitalTimeGraphicCircularView *)v5 addSubview:v5->_filledSecondsDialView];
    v20 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v8 design:UIFontWeightSemibold];
    cLKFontWithAlternativePunctuation = [v20 CLKFontWithAlternativePunctuation];

    v22 = [[NTKDigitalTimeLabel alloc] initWithTimeLabelOptions:1 forDevice:deviceCopy];
    [v22 setFont:cLKFontWithAlternativePunctuation];
    v23 = +[UIColor whiteColor];
    [v22 setColor:v23];

    v24 = +[UIColor systemOrangeColor];
    [v22 setTextColor:v24];

    timeLabel = v5->_timeLabel;
    v5->_timeLabel = v22;
    v26 = v22;

    [(NTKDigitalTimeGraphicCircularView *)v5 addSubview:v5->_timeLabel];
  }

  return v5;
}

- (void)configureWithImageProvider:(id)provider reason:(int64_t)reason
{
  providerCopy = provider;
  metadata = [providerCopy metadata];
  v7 = [metadata objectForKey:@"NTKDigitalTimeGraphicCircularViewOverrideDateKey"];
  tritium_isTritiumInactiveFullColorImageProvider = [providerCopy tritium_isTritiumInactiveFullColorImageProvider];

  if (tritium_isTritiumInactiveFullColorImageProvider && !v7)
  {
    v7 = +[CLKDate complicationDate];
  }

  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy2 = self;
    v10 = v7;
  }

  else
  {
    selfCopy2 = self;
    v10 = 0;
  }

  [(NTKDigitalTimeGraphicCircularView *)selfCopy2 setOverrideDate:v10];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_5C2C;
  v13[3] = &unk_10528;
  v14 = tritium_isTritiumInactiveFullColorImageProvider;
  v11 = objc_retainBlock(v13);
  filledSecondsDialView = [(NTKDigitalTimeGraphicCircularView *)self filledSecondsDialView];
  (v11[2])(v11, filledSecondsDialView);
  [(NTKDigitalTimeGraphicCircularView *)self _updateProgress];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  _filterStyle = [objc_opt_class() _filterStyle];
  filterProvider = [(NTKDigitalTimeGraphicCircularView *)self filterProvider];
  device = [filterProvider device];
  v8 = NTKShowGossamerUI();

  if (v8)
  {
    _filterStyle = 0;
  }

  filterProvider2 = [(NTKDigitalTimeGraphicCircularView *)self filterProvider];
  v23 = [filterProvider2 filtersForView:self style:_filterStyle fraction:fraction];

  if (v23)
  {
    timeLabel = [(NTKDigitalTimeGraphicCircularView *)self timeLabel];
    layer = [timeLabel layer];
    [layer setFilters:v23];
  }

  filterProvider3 = [(NTKDigitalTimeGraphicCircularView *)self filterProvider];
  device2 = [filterProvider3 device];
  v14 = NTKShowGossamerUI();

  if (v14)
  {
    filterProvider4 = [(NTKDigitalTimeGraphicCircularView *)self filterProvider];
    v16 = [filterProvider4 colorForView:self accented:1];

    v17 = +[UIColor whiteColor];
    v18 = NTKInterpolateBetweenColors();

    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    unfilledSecondsDialView = [(NTKDigitalTimeGraphicCircularView *)self unfilledSecondsDialView];
    v20 = [v18 colorWithAlphaComponent:self->_inactiveTickAccentAlpha];
    [unfilledSecondsDialView setTickColor:v20];

    filledSecondsDialView = [(NTKDigitalTimeGraphicCircularView *)self filledSecondsDialView];
    v22 = [v18 colorWithAlphaComponent:self->_activeTickAccentAlpha];
    [filledSecondsDialView setTickColor:v22];

    +[CATransaction commit];
  }
}

- (void)_startClockUpdates
{
  clockTimerToken = [(NTKDigitalTimeGraphicCircularView *)self clockTimerToken];
  if (!clockTimerToken)
  {
    objc_initWeak(&location, self);
    v4 = +[CLKClockTimer sharedInstance];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_5FE8;
    v8 = &unk_104A0;
    objc_copyWeak(&v9, &location);
    clockTimerToken = [v4 startUpdatesWithUpdateFrequency:1 withHandler:&v5 identificationLog:&stru_10548];

    [(NTKDigitalTimeGraphicCircularView *)self setClockTimerToken:clockTimerToken, v5, v6, v7, v8];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

- (void)_stopClockUpdates
{
  clockTimerToken = [(NTKDigitalTimeGraphicCircularView *)self clockTimerToken];
  if (clockTimerToken)
  {
    v5 = clockTimerToken;
    v4 = +[CLKClockTimer sharedInstance];
    [v4 stopUpdatesForToken:v5];

    [(NTKDigitalTimeGraphicCircularView *)self setClockTimerToken:0];
    clockTimerToken = v5;
  }
}

- (void)_updateProgress
{
  overrideDate = [(NTKDigitalTimeGraphicCircularView *)self overrideDate];
  v4 = overrideDate;
  if (overrideDate)
  {
    v5 = overrideDate;
  }

  else
  {
    v5 = +[NTKDate faceDate];
  }

  v6 = v5;
  v7 = +[NSCalendar currentCalendar];
  v8 = ([v7 component:128 fromDate:v6] % 60) / 60.0;
  timeLabel = [(NTKDigitalTimeGraphicCircularView *)self timeLabel];
  timeFormatter = [timeLabel timeFormatter];
  filledSecondsDialView = [(NTKDigitalTimeGraphicCircularView *)self filledSecondsDialView];
  +[CATransaction begin];
  [CATransaction setAnimationDuration:0.0];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_62A0;
  v18 = &unk_10570;
  v22 = v8;
  v19 = filledSecondsDialView;
  v20 = timeFormatter;
  v21 = v4;
  v12 = v4;
  v13 = timeFormatter;
  v14 = filledSecondsDialView;
  [UIView performWithoutAnimation:&v15];
  [CATransaction commit:v15];
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

- (void)setLayoutConstants:(id *)constants
{
  self->_layoutConstants.secondsTickSize.width = v3;
  self->_layoutConstants.secondsTickSize.height = v4;
  self->_layoutConstants.secondsDialDiameter = v5;
  self->_layoutConstants.timeFontSize = v6;
}

@end