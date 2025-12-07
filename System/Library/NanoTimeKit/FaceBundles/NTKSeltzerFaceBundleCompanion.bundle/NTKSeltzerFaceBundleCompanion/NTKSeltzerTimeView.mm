@interface NTKSeltzerTimeView
- (CGAffineTransform)_moonViewTransformForStyle:(SEL)style;
- (CGSize)_cardinalSecondTickSize;
- (CGSize)_hourTickSize;
- (CGSize)_minuteTickSize;
- (CGSize)_secondTickSize;
- (NTKSeltzerTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style andDevice:(id)device;
- (double)_cardinalSecondTickInset;
- (double)_hourTickInset;
- (double)_minuteTickInset;
- (double)_secondTickInset;
- (id)_customDialBackgroundView;
- (id)_digitalLabelFont;
- (void)_setupAnalogHandsView;
- (void)applyDataMode:(int64_t)mode;
- (void)applyInteractiveModeProgress:(double)progress;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setPalette:(id)palette;
- (void)setStyle:(unint64_t)style;
- (void)updateCrownDate:(id)date animated:(BOOL)animated;
@end

@implementation NTKSeltzerTimeView

- (NTKSeltzerTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style andDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v34.receiver = self;
  v34.super_class = NTKSeltzerTimeView;
  height = [(NTKSeltzerTimeView *)&v34 initWithFrame:style style:deviceCopy andDevice:x, y, width, height];
  if (height)
  {
    sub_2078(deviceCopy, &v32);
    v13 = v33;
    v14 = [NUNIAstronomyVistaConfiguration defaultConfigurationWithDevice:deviceCopy];
    v15 = [[NUNIAstronomyVistaView alloc] initWithFrame:v14 configuration:{0.0, 0.0, v13, v13}];
    astronomyVistaView = height->_astronomyVistaView;
    height->_astronomyVistaView = v15;

    [(NUNIAstronomyVistaView *)height->_astronomyVistaView setOpaque:0];
    objc_initWeak(&location, height);
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1260;
    v29 = &unk_10448;
    objc_copyWeak(&v30, &location);
    v17 = objc_retainBlock(&v26);
    v18 = [NUNIScene alloc];
    v19 = [v18 initWithSphereoids:24 currentDateBlock:{v17, v26, v27, v28, v29}];
    [(NUNIAstronomyVistaView *)height->_astronomyVistaView setScene:v19];
    [(NUNIAstronomyVistaView *)height->_astronomyVistaView applyVista:1 transitionStyle:0];
    [(NUNIAstronomyVistaView *)height->_astronomyVistaView setFrameInterval:3];
    [(NUNIAstronomyVistaView *)height->_astronomyVistaView updateSunLocationAnimated:0];
    dialBackgroundView = [(NTKSeltzerTimeView *)height dialBackgroundView];
    [dialBackgroundView addSubview:height->_astronomyVistaView];

    dialBackgroundView2 = [(NTKSeltzerTimeView *)height dialBackgroundView];
    [dialBackgroundView2 sendSubviewToBack:height->_astronomyVistaView];

    v22 = +[UIColor blackColor];
    analogHandsView = [(NTKSeltzerTimeView *)height analogHandsView];
    secondHandView = [analogHandsView secondHandView];
    [secondHandView setHandDotColor:v22];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }

  return height;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKSeltzerTimeView;
  [(NTKSeltzerTimeView *)&v4 layoutSubviews];
  dialBackgroundView = [(NTKSeltzerTimeView *)self dialBackgroundView];
  [dialBackgroundView bounds];
  CLKRectGetCenter();
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setCenter:?];
}

- (void)applyDataMode:(int64_t)mode
{
  if (mode == 4 || mode == 2)
  {
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView stopAnimation];
  }

  else if (mode == 1)
  {
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView startAnimation];
  }
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = NTKSeltzerTimeView;
  [(NTKSeltzerTimeView *)&v8 setOverrideDate:dateCopy duration:duration];
  if (self->_overrideDate != dateCopy && ![(NSDate *)dateCopy isEqualToDate:?])
  {
    objc_storeStrong(&self->_overrideDate, date);
    [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:duration > 0.0];
  }
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  [(NTKSeltzerTimeView *)self _applyColorToAnalogHands];

  [(NTKSeltzerTimeView *)self _applyColorToDigitalLabelAndTicks];
}

- (void)setStyle:(unint64_t)style
{
  v6.receiver = self;
  v6.super_class = NTKSeltzerTimeView;
  [(NTKSeltzerTimeView *)&v6 setStyle:?];
  objc_msgSend__moonViewTransformForStyle_(self);
  astronomyVistaView = self->_astronomyVistaView;
  v5[0] = v5[3];
  v5[1] = v5[4];
  v5[2] = v5[5];
  [(NUNIAstronomyVistaView *)astronomyVistaView setTransform:v5];
}

- (id)_customDialBackgroundView
{
  v2 = objc_alloc_init(UIView);

  return v2;
}

- (CGAffineTransform)_moonViewTransformForStyle:(SEL)style
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(NTKSeltzerTimeView *)self device:0];
  sub_2078(v6, &v10);

  v7 = &v10 + 1;
  if (!a4)
  {
    v7 = &v10;
  }

  v8 = *v7 / *&v11;

  return CGAffineTransformMakeScale(retstr, v8, v8);
}

- (void)applyInteractiveModeProgress:(double)progress
{
  [(NTKSeltzerTimeView *)self style];
  objc_msgSend__moonViewTransformForStyle_(self);
  v15 = *&CGAffineTransformIdentity.a;
  v16 = *&CGAffineTransformIdentity.c;
  v17 = *&CGAffineTransformIdentity.tx;
  CLKInterpolateBetweenTransform();
  astronomyVistaView = self->_astronomyVistaView;
  v18[0] = v18[3];
  v18[1] = v18[4];
  v18[2] = v18[5];
  [(NUNIAstronomyVistaView *)astronomyVistaView setTransform:v18, v15, v16, v17];
  CLKInterpolateBetweenFloatsClipped();
  v7 = v6;
  if ([(NTKSeltzerTimeView *)self style])
  {
    digitalTicksContainerView = [(NTKSeltzerTimeView *)self digitalTicksContainerView];
    [digitalTicksContainerView setAlpha:v7];

    CLKInterpolateBetweenFloatsClipped();
    v10 = v9;
    [(NTKSeltzerTimeView *)self digitalTimeLabel];
  }

  else
  {
    analogContainerView = [(NTKSeltzerTimeView *)self analogContainerView];
    [analogContainerView setAlpha:v7];

    CLKInterpolateBetweenFloatsClipped();
    v10 = v12;
    [(NTKSeltzerTimeView *)self analogHandsView];
  }
  v13 = ;
  [v13 setAlpha:v10];

  if (progress <= 0.0)
  {
    v14 = 3;
  }

  else
  {
    if (progress < 1.0)
    {
      return;
    }

    v14 = 0;
  }

  [(NUNIAstronomyVistaView *)self->_astronomyVistaView setFrameInterval:v14];
}

- (void)updateCrownDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  objc_storeStrong(&self->_crownDate, date);
  dateCopy = date;
  [(NUNIAstronomyVistaView *)self->_astronomyVistaView updateSunLocationAnimated:animatedCopy];
}

- (void)_setupAnalogHandsView
{
  v3 = [NTKSeltzerAnalogHandsView alloc];
  device = [(NTKSeltzerTimeView *)self device];
  v5 = [(NTKSeltzerAnalogHandsView *)v3 initForDevice:device];
  [(NTKSeltzerTimeView *)self setAnalogHandsView:v5];

  analogHandsView = [(NTKSeltzerTimeView *)self analogHandsView];
  [(NTKSeltzerTimeView *)self addSubview:analogHandsView];
}

- (double)_minuteTickInset
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v3 = [(NTKSeltzerTimeView *)self device:0];
  sub_2078(v3, &v6);

  [(NTKSeltzerTimeView *)self _hourTickInset];
  return v4 + *&v8 * 2.0 - *&v7 * 2.0;
}

- (double)_hourTickInset
{
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  device = [(NTKSeltzerTimeView *)self device];
  sub_2078(device, &v6);

  [(NTKSeltzerTimeView *)self bounds];
  MidY = CGRectGetMidY(v13);
  return MidY + *&v6 * -0.5 - *(&v7 + 1) - *&v10 + MidY + *&v6 * -0.5 - *(&v7 + 1) - *&v10;
}

- (CGSize)_minuteTickSize
{
  device = [(NTKSeltzerTimeView *)self device];
  sub_2078(device, &v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_hourTickSize
{
  device = [(NTKSeltzerTimeView *)self device];
  sub_2078(device, v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)_secondTickInset
{
  v7 = 0u;
  v3 = [(NTKSeltzerTimeView *)self device:0];
  sub_2078(v3, &v6);

  [(NTKSeltzerTimeView *)self _cardinalSecondTickInset];
  return v4 + *&v7;
}

- (double)_cardinalSecondTickInset
{
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  device = [(NTKSeltzerTimeView *)self device];
  sub_2078(device, v6);

  [(NTKSeltzerTimeView *)self bounds];
  MidY = CGRectGetMidY(v12);
  return MidY + *(v6 + 1) * -0.5 - *&v7 - *&v11 + MidY + *(v6 + 1) * -0.5 - *&v7 - *&v11;
}

- (CGSize)_secondTickSize
{
  device = [(NTKSeltzerTimeView *)self device];
  sub_2078(device, v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)_cardinalSecondTickSize
{
  device = [(NTKSeltzerTimeView *)self device];
  sub_2078(device, v7);
  v3 = v8;
  v4 = v9;

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

- (id)_digitalLabelFont
{
  device = [(NTKSeltzerTimeView *)self device];
  sub_2078(device, v5);
  v3 = [CLKFont compactSoftFontOfSize:v6 weight:UIFontWeightThin];

  return v3;
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  if (style != toStyle)
  {
    v44 = v14;
    v45 = v13;
    v46 = v12;
    v47 = v11;
    v48 = v10;
    v49 = v9;
    v50 = v8;
    v51 = v7;
    v52 = v5;
    v53 = v6;
    CLKMapFractionIntoRange();
    v17 = v16;
    CLKMapFractionIntoRange();
    v19 = v18;
    CLKMapFractionIntoRange();
    v21 = v20;
    CLKMapFractionIntoRange();
    v23 = v22;
    memset(&v43, 0, sizeof(v43));
    CGAffineTransformMakeScale(&v43, v21, v21);
    memset(&v42, 0, sizeof(v42));
    CGAffineTransformMakeScale(&v42, v23, v23);
    analogContainerView = [(NTKSeltzerTimeView *)self analogContainerView];
    [analogContainerView setAlpha:v17];

    analogHandsView = [(NTKSeltzerTimeView *)self analogHandsView];
    [analogHandsView setAlpha:v17];

    digitalContainerView = [(NTKSeltzerTimeView *)self digitalContainerView];
    [digitalContainerView setAlpha:v19];

    v41 = v43;
    analogContainerView2 = [(NTKSeltzerTimeView *)self analogContainerView];
    v40 = v41;
    [analogContainerView2 setTransform:&v40];

    v39 = v43;
    analogHandsView2 = [(NTKSeltzerTimeView *)self analogHandsView];
    v40 = v39;
    [analogHandsView2 setTransform:&v40];

    v38 = v42;
    digitalContainerView2 = [(NTKSeltzerTimeView *)self digitalContainerView];
    v40 = v38;
    [digitalContainerView2 setTransform:&v40];

    CLKMapFractionIntoRange();
    v31 = v30;
    CLKMapFractionIntoRange();
    memset(&v40, 0, sizeof(v40));
    CGAffineTransformMakeScale(&v40, v32, v32);
    objc_msgSend__moonViewTransformForStyle_(self);
    astronomyVistaView = self->_astronomyVistaView;
    v37[0] = v37[1];
    [(NUNIAstronomyVistaView *)astronomyVistaView setTransform:v37];
    dialBackgroundView = [(NTKSeltzerTimeView *)self dialBackgroundView];
    [dialBackgroundView setAlpha:v31];

    v36 = v40;
    dialBackgroundView2 = [(NTKSeltzerTimeView *)self dialBackgroundView];
    v37[0] = v36;
    [dialBackgroundView2 setTransform:v37];
  }
}

@end