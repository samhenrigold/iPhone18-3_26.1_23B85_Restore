@interface NTKBigNumeralsDigitalTimeView
- (NTKBigNumeralsDigitalTimeView)initWithDevice:(id)device;
- (NTKBigNumeralsDigitalTimeViewDelegate)delegate;
- (void)_updateLabels;
- (void)applyColorPalette:(id)palette;
- (void)applyRainbowColorTransitionWithFraction:(double)fraction colorPalette:(id)palette;
- (void)applyStyle:(unint64_t)style;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)applyTransitionFraction:(double)fraction fromTypeface:(unint64_t)typeface toTypeface:(unint64_t)toTypeface;
- (void)applyTypeface:(unint64_t)typeface;
- (void)cleanupTransition;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setShowingStatus:(BOOL)status;
@end

@implementation NTKBigNumeralsDigitalTimeView

- (NTKBigNumeralsDigitalTimeView)initWithDevice:(id)device
{
  deviceCopy = device;
  v38.receiver = self;
  v38.super_class = NTKBigNumeralsDigitalTimeView;
  v6 = [(NTKBigNumeralsDigitalTimeView *)&v38 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    v7->_statusBarTransitionFraction = 0.0;
    v8 = objc_opt_new();
    timeLabelsContainerView = v7->_timeLabelsContainerView;
    v7->_timeLabelsContainerView = v8;

    [(NTKBigNumeralsDigitalTimeView *)v7 addSubview:v7->_timeLabelsContainerView];
    v10 = [NTKBigNumeralsDigitalColorPalette multicolorAxialGradientLayerForColor:3012 device:deviceCopy];
    gradientLayer = v7->_gradientLayer;
    v7->_gradientLayer = v10;

    layer = [(NTKBigNumeralsDigitalTimeView *)v7 layer];
    [layer insertSublayer:v7->_gradientLayer atIndex:0];

    v13 = objc_alloc_init(CALayer);
    topLabelColorLayer = v7->_topLabelColorLayer;
    v7->_topLabelColorLayer = v13;

    layer2 = [(NTKBigNumeralsDigitalTimeView *)v7 layer];
    [layer2 insertSublayer:v7->_topLabelColorLayer above:v7->_gradientLayer];

    v16 = objc_alloc_init(CALayer);
    bottomLabelColorLayer = v7->_bottomLabelColorLayer;
    v7->_bottomLabelColorLayer = v16;

    layer3 = [(NTKBigNumeralsDigitalTimeView *)v7 layer];
    [layer3 insertSublayer:v7->_bottomLabelColorLayer above:v7->_gradientLayer];

    sub_2D6C(deviceCopy, v36);
    v19 = v37;
    if ([deviceCopy deviceCategory] == &dword_0 + 3)
    {
      v20 = @"A";
    }

    else
    {
      if ([deviceCopy deviceCategory] != &dword_4)
      {
        v22 = @"__TokyoFontDO";
        v21 = @"__TokyoFontD";
        goto LABEL_8;
      }

      v20 = @"G";
    }

    v21 = [@"__TokyoFontD" stringByAppendingString:v20];
    v22 = [@"__TokyoFontDO" stringByAppendingString:v20];
LABEL_8:
    LOBYTE(v31) = 0;
    v23 = [[NTKBigNumeralsTimeComponentLabel alloc] initWithDevice:deviceCopy timeComponent:0 fontVariant:1 filledFontSectName:v21 outlineFontSectName:v22 dsoHandle:&dword_0 fontSize:v19 useLigatures:v31];
    topLabel = v7->_topLabel;
    v7->_topLabel = v23;

    [(NTKBigNumeralsTimeComponentLabel *)v7->_topLabel setTextAlignment:2];
    [(UIView *)v7->_timeLabelsContainerView addSubview:v7->_topLabel];
    LOBYTE(v32) = 0;
    v25 = [[NTKBigNumeralsTimeComponentLabel alloc] initWithDevice:deviceCopy timeComponent:1 fontVariant:1 filledFontSectName:v21 outlineFontSectName:v22 dsoHandle:&dword_0 fontSize:v19 useLigatures:v32];
    bottomLabel = v7->_bottomLabel;
    v7->_bottomLabel = v25;

    [(NTKBigNumeralsTimeComponentLabel *)v7->_bottomLabel setTextAlignment:2];
    [(UIView *)v7->_timeLabelsContainerView addSubview:v7->_bottomLabel];
    [(NTKBigNumeralsDigitalTimeView *)v7 setMaskView:v7->_timeLabelsContainerView];
    objc_initWeak(&location, v7);
    v27 = +[CLKClockTimer sharedInstance];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_2164;
    v33[3] = &unk_C400;
    objc_copyWeak(&v34, &location);
    v28 = [v27 startUpdatesWithUpdateFrequency:0 withHandler:v33 identificationLog:&stru_C440];
    timerToken = v7->_timerToken;
    v7->_timerToken = v28;

    objc_destroyWeak(&v34);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[CLKClockTimer sharedInstance];
  [v3 stopUpdatesForToken:self->_timerToken];

  v4.receiver = self;
  v4.super_class = NTKBigNumeralsDigitalTimeView;
  [(NTKBigNumeralsDigitalTimeView *)&v4 dealloc];
}

- (void)setShowingStatus:(BOOL)status
{
  if (self->_showingStatus != status)
  {
    v15 = v6;
    v16 = v5;
    v17 = v3;
    v18 = v4;
    statusCopy = status;
    self->_showingStatus = status;
    v14 = 0;
    v12 = 0u;
    memset(v13, 0, sizeof(v13));
    sub_2D6C(self->_device, &v12);
    v9 = &v13[1] + 1;
    if (!statusCopy)
    {
      v9 = v13;
    }

    v10 = *v9;
    v11 = 0.0;
    if (statusCopy)
    {
      v11 = 1.0;
    }

    self->_statusBarTransitionFraction = v11;
    [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setFontSize:v10];
    [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel setFontSize:v10];
    [(NTKBigNumeralsDigitalTimeView *)self setNeedsLayout];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  objc_storeStrong(&self->_overrideDate, date);

  [(NTKBigNumeralsDigitalTimeView *)self _updateLabels];
}

- (void)_updateLabels
{
  overrideDate = self->_overrideDate;
  if (overrideDate)
  {
    v4 = overrideDate;
  }

  else
  {
    v4 = +[NTKDate faceDate];
  }

  v6 = v4;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setDate:v4];
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel setDate:v6];
  [(NTKBigNumeralsDigitalTimeView *)self setNeedsLayout];
  [(NTKBigNumeralsDigitalTimeView *)self layoutIfNeeded];
  delegate = [(NTKBigNumeralsDigitalTimeView *)self delegate];
  [delegate bigNumeralsDigitalTimeViewDidChangeTime];
}

- (void)layoutSubviews
{
  v45 = 0.0;
  memset(v44, 0, sizeof(v44));
  sub_2D6C(self->_device, v44);
  [(NTKBigNumeralsDigitalTimeView *)self bounds];
  v4 = v3;
  v40 = v5;
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  CLKInterpolateBetweenFloatsClipped();
  v37 = v8;
  v38 = *(v44 + 1);
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel sizeToFit];
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel sizeToFit];
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel bounds];
  v10 = v9;
  v42 = v11;
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel bounds];
  v13 = v12;
  v15 = v14;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel _lastLineBaseline];
  rect = v10;
  v16 = v4 - v10 - v7;
  v17 = v40 * 0.5;
  v41 = v40 * 0.5 + v37 - v18;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setFrame:v16];
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel _lastLineBaseline];
  v19 = v13;
  v39 = v13;
  v20 = v4 - v13 - v7;
  v22 = v17 + v38 - v21;
  [(NTKBigNumeralsTimeComponentLabel *)self->_bottomLabel setFrame:v20, v22, v19, v15];
  [CATransaction setDisableActions:1];
  v23 = v45;
  v24 = v41 - v45;
  v25 = v16 - v45;
  font = [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel font];
  [font ascender];
  v28 = v27 + v23 * 2.0;

  [(CALayer *)self->_topLabelColorLayer setFrame:v25, v24, rect + v23 * 2.0, v28];
  v29 = v22 - v23;
  font2 = [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel font];
  [font2 ascender];
  v32 = v31 + v23 * 2.0;

  [(CALayer *)self->_bottomLabelColorLayer setFrame:v20 - v23, v29, v39 + v23 * 2.0, v32];
  if (v16 >= v20)
  {
    v33 = v20;
  }

  else
  {
    v33 = v16;
  }

  v47.origin.x = v16;
  v47.size.height = v42;
  v47.origin.y = v41;
  v47.size.width = rect;
  v34 = CGRectGetMaxX(v47) - v33;
  [(CALayer *)self->_bottomLabelColorLayer frame];
  MaxY = CGRectGetMaxY(v48);
  [(CALayer *)self->_topLabelColorLayer frame];
  [(CAGradientLayer *)self->_gradientLayer setFrame:v33, v41, v34, MaxY - v36];

  [CATransaction setDisableActions:0];
}

- (void)applyTypeface:(unint64_t)typeface
{
  self->_typeface = typeface;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setTypeface:?];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel setTypeface:typeface];
}

- (void)applyTransitionFraction:(double)fraction fromTypeface:(unint64_t)typeface toTypeface:(unint64_t)toTypeface
{
  if (fraction <= 0.5)
  {
    toTypefaceCopy = typeface;
  }

  else
  {
    toTypefaceCopy = toTypeface;
  }

  self->_typeface = toTypefaceCopy;
  [NTKBigNumeralsTimeComponentLabel applyTransitionFraction:"applyTransitionFraction:fromTypeface:toTypeface:" fromTypeface:fraction toTypeface:?];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel applyTransitionFraction:typeface fromTypeface:toTypeface toTypeface:fraction];
}

- (void)applyStyle:(unint64_t)style
{
  self->_style = style;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel setStyle:style == 2];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel setStyle:style - 1 < 2];
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  if (fraction <= 0.5)
  {
    toStyleCopy = style;
  }

  else
  {
    toStyleCopy = toStyle;
  }

  self->_style = toStyleCopy;
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel applyTransitionFraction:style == 2 fromStyle:toStyle == 2 toStyle:fraction];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel applyTransitionFraction:style - 1 < 2 fromStyle:toStyle - 1 < 2 toStyle:fraction];
}

- (void)applyColorPalette:(id)palette
{
  paletteCopy = palette;
  objc_storeStrong(&self->_colorPalette, palette);
  hourDigits = [paletteCopy hourDigits];
  minuteDigits = [paletteCopy minuteDigits];
  [CATransaction setDisableActions:1];
  [(CALayer *)self->_topLabelColorLayer opacity];
  if (v7 == 1.0)
  {
    -[CALayer setBackgroundColor:](self->_topLabelColorLayer, "setBackgroundColor:", [hourDigits CGColor]);
  }

  else
  {
    [(CAGradientLayer *)self->_gradientLayer setHidden:0];
  }

  [(CALayer *)self->_bottomLabelColorLayer opacity];
  if (v8 == 1.0)
  {
    -[CALayer setBackgroundColor:](self->_bottomLabelColorLayer, "setBackgroundColor:", [minuteDigits CGColor]);
    [(CAGradientLayer *)self->_gradientLayer setHidden:1];
  }

  [CATransaction setDisableActions:0];
}

- (void)applyRainbowColorTransitionWithFraction:(double)fraction colorPalette:(id)palette
{
  paletteCopy = palette;
  [CATransaction setDisableActions:1];
  [(CAGradientLayer *)self->_gradientLayer setHidden:fabs(fraction) < 0.00000011920929];
  v6 = 1.0 - fraction;
  *&fraction = 1.0 - fraction;
  LODWORD(v6) = LODWORD(fraction);
  [(CALayer *)self->_topLabelColorLayer setOpacity:v6];
  LODWORD(v7) = LODWORD(fraction);
  [(CALayer *)self->_bottomLabelColorLayer setOpacity:v7];
  if (([(CAGradientLayer *)self->_gradientLayer isHidden]& 1) == 0)
  {
    hourDigits = [paletteCopy hourDigits];
    -[CALayer setBackgroundColor:](self->_topLabelColorLayer, "setBackgroundColor:", [hourDigits CGColor]);

    minuteDigits = [paletteCopy minuteDigits];
    -[CALayer setBackgroundColor:](self->_bottomLabelColorLayer, "setBackgroundColor:", [minuteDigits CGColor]);
  }

  [CATransaction setDisableActions:0];
}

- (void)cleanupTransition
{
  [(NTKBigNumeralsTimeComponentLabel *)self->_topLabel cleanupTransition];
  bottomLabel = self->_bottomLabel;

  [(NTKBigNumeralsTimeComponentLabel *)bottomLabel cleanupTransition];
}

- (NTKBigNumeralsDigitalTimeViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end