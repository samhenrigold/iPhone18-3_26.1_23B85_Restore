@interface AXSpeakScreenButton
- (UIVisualEffectView)buttonEffectView;
- (void)setAlpha:(double)alpha;
- (void)setEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
@end

@implementation AXSpeakScreenButton

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v8.receiver = self;
  v8.super_class = AXSpeakScreenButton;
  [(AXSpeakScreenButton *)&v8 setEnabled:?];
  v5 = [UIBlurEffect effectWithStyle:19];
  v6 = [UIVibrancyEffect effectForBlurEffect:v5 style:!enabledCopy];
  buttonEffectView = [(AXSpeakScreenButton *)self buttonEffectView];
  [buttonEffectView setEffect:v6];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v11.receiver = self;
  v11.super_class = AXSpeakScreenButton;
  [(AXSpeakScreenButton *)&v11 setHidden:?];
  buttonEffectView = [(AXSpeakScreenButton *)self buttonEffectView];
  [buttonEffectView setHidden:hiddenCopy];

  borderEffectView = [(AXSpeakScreenButton *)self borderEffectView];
  [borderEffectView setHidden:hiddenCopy];

  borderEffectView2 = [(AXSpeakScreenButton *)self borderEffectView];
  contentView = [borderEffectView2 contentView];
  subviews = [contentView subviews];
  lastObject = [subviews lastObject];
  [lastObject setHidden:hiddenCopy];
}

- (void)setAlpha:(double)alpha
{
  v11.receiver = self;
  v11.super_class = AXSpeakScreenButton;
  [(AXSpeakScreenButton *)&v11 setAlpha:?];
  borderEffectView = [(AXSpeakScreenButton *)self borderEffectView];
  contentView = [borderEffectView contentView];
  subviews = [contentView subviews];
  lastObject = [subviews lastObject];
  [lastObject setAlpha:alpha];

  borderEffectView2 = [(AXSpeakScreenButton *)self borderEffectView];
  [borderEffectView2 setAlpha:alpha];

  buttonEffectView = [(AXSpeakScreenButton *)self buttonEffectView];
  [buttonEffectView setAlpha:alpha];
}

- (UIVisualEffectView)buttonEffectView
{
  WeakRetained = objc_loadWeakRetained(&self->_buttonEffectView);

  return WeakRetained;
}

@end