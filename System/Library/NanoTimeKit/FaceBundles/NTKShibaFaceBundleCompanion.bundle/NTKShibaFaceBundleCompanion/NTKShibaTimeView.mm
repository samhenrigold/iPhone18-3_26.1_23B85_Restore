@interface NTKShibaTimeView
- (NTKShibaTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style andDevice:(id)device;
- (id)_customDialBackgroundView;
- (id)_secondTickActiveColorForColorPalette:(id)palette;
- (id)_secondTickInactiveColorForColorPalette:(id)palette;
- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette animateElements:(BOOL)elements;
- (void)layoutSubviews;
- (void)setPalette:(id)palette;
@end

@implementation NTKShibaTimeView

- (NTKShibaTimeView)initWithFrame:(CGRect)frame style:(unint64_t)style andDevice:(id)device
{
  v12.receiver = self;
  v12.super_class = NTKShibaTimeView;
  v5 = [(NTKShibaTimeView *)&v12 initWithFrame:style style:device andDevice:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    digitalTimeLabel = [(NTKShibaTimeView *)v5 digitalTimeLabel];
    [digitalTimeLabel setHidden:1];

    v8 = +[UIColor blackColor];
    analogHandsView = [(NTKShibaTimeView *)v6 analogHandsView];
    secondHandView = [analogHandsView secondHandView];
    [secondHandView setHandDotColor:v8];
  }

  return v6;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = NTKShibaTimeView;
  [(NTKShibaTimeView *)&v8 layoutSubviews];
  digitalContainerView = [(NTKShibaTimeView *)self digitalContainerView];
  [digitalContainerView setClipsToBounds:1];

  digitalContainerView2 = [(NTKShibaTimeView *)self digitalContainerView];
  layer = [digitalContainerView2 layer];
  digitalContainerView3 = [(NTKShibaTimeView *)self digitalContainerView];
  [digitalContainerView3 bounds];
  [layer setCornerRadius:v7 * 0.5];
}

- (id)_customDialBackgroundView
{
  v2 = objc_opt_new();

  return v2;
}

- (void)setPalette:(id)palette
{
  paletteCopy = palette;
  activeTickColor = [paletteCopy activeTickColor];
  activeColor = self->_activeColor;
  self->_activeColor = activeTickColor;

  inactiveTickColor = [paletteCopy inactiveTickColor];
  inactiveColor = self->_inactiveColor;
  self->_inactiveColor = inactiveTickColor;

  secondHandColor = [paletteCopy secondHandColor];

  secondHandColor = self->_secondHandColor;
  self->_secondHandColor = secondHandColor;

  [(NTKShibaTimeView *)self _applyColorToAnalogHands];

  [(NTKShibaTimeView *)self _refreshDigitalTicks];
}

- (void)applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette animateElements:(BOOL)elements
{
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  activeTickColor = [paletteCopy activeTickColor];
  activeTickColor2 = [colorPaletteCopy activeTickColor];
  v12 = NTKInterpolateBetweenColors();
  activeColor = self->_activeColor;
  self->_activeColor = v12;

  inactiveTickColor = [paletteCopy inactiveTickColor];
  inactiveTickColor2 = [colorPaletteCopy inactiveTickColor];
  v16 = NTKInterpolateBetweenColors();
  inactiveColor = self->_inactiveColor;
  self->_inactiveColor = v16;

  secondHandColor = [paletteCopy secondHandColor];

  secondHandColor2 = [colorPaletteCopy secondHandColor];

  v20 = NTKInterpolateBetweenColors();
  secondHandColor = self->_secondHandColor;
  self->_secondHandColor = v20;

  [(NTKShibaTimeView *)self _applyColorToAnalogHands];

  [(NTKShibaTimeView *)self _refreshDigitalTicks];
}

- (id)_secondTickActiveColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  tritiumOnFraction = self->_tritiumOnFraction;
  if (tritiumOnFraction >= 1.0)
  {
    v11.receiver = self;
    v11.super_class = NTKShibaTimeView;
    v8 = [(NTKShibaTimeView *)&v11 _secondTickInactiveColorForColorPalette:paletteCopy];
  }

  else
  {
    if (tritiumOnFraction > 0.0)
    {
      v10.receiver = self;
      v10.super_class = NTKShibaTimeView;
      v6 = [(NTKShibaTimeView *)&v10 _secondTickInactiveColorForColorPalette:paletteCopy];
      v7 = NTKInterpolateBetweenColors();

      goto LABEL_7;
    }

    v8 = self->_activeColor;
  }

  v7 = v8;
LABEL_7:

  return v7;
}

- (id)_secondTickInactiveColorForColorPalette:(id)palette
{
  paletteCopy = palette;
  tritiumOnFraction = self->_tritiumOnFraction;
  if (tritiumOnFraction >= 1.0)
  {
    v11.receiver = self;
    v11.super_class = NTKShibaTimeView;
    v8 = [(NTKShibaTimeView *)&v11 _secondTickInactiveColorForColorPalette:paletteCopy];
  }

  else
  {
    if (tritiumOnFraction > 0.0)
    {
      v10.receiver = self;
      v10.super_class = NTKShibaTimeView;
      v6 = [(NTKShibaTimeView *)&v10 _secondTickInactiveColorForColorPalette:paletteCopy];
      v7 = NTKInterpolateBetweenColors();

      goto LABEL_7;
    }

    v8 = self->_inactiveColor;
  }

  v7 = v8;
LABEL_7:

  return v7;
}

@end