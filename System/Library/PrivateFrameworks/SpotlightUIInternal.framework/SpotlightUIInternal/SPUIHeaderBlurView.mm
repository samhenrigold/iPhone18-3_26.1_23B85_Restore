@interface SPUIHeaderBlurView
- (SPUIHeaderBlurView)init;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)setKeyboardIsUp:(BOOL)up;
- (void)setTintColor:(id)color;
- (void)setUseInPlaceFilteredBlur:(BOOL)blur;
- (void)updateEffect;
@end

@implementation SPUIHeaderBlurView

- (SPUIHeaderBlurView)init
{
  v9.receiver = self;
  v9.super_class = SPUIHeaderBlurView;
  v2 = [(SPUIHeaderBlurView *)&v9 init];
  if (v2)
  {
    if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel_keyboardWillShow name:*MEMORY[0x277D76C60] object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v2 selector:sel_keyboardWillHide name:*MEMORY[0x277D76C50] object:0];

      defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter3 addObserver:v2 selector:sel_updateEffect name:*MEMORY[0x277D764C8] object:0];

      [(SPUIHeaderBlurView *)v2 setKeyboardIsUp:1];
      if (_UISolariumEnabled())
      {
        contentView = [(SPUIHeaderBlurView *)v2 contentView];
        [SPUIViewUtilities setGlassForView:contentView style:1];
      }
    }

    else
    {
      [(SPUIHeaderBlurView *)v2 updateEffect];
    }

    contentView2 = [(SPUIHeaderBlurView *)v2 contentView];
    [contentView2 setAlpha:1.0];
  }

  return v2;
}

- (void)updateEffect
{
  v20[1] = *MEMORY[0x277D85DE8];
  if (_UISolariumEnabled())
  {
    [(SPUIHeaderBlurView *)self setBackgroundEffects:MEMORY[0x277CBEBF8]];

    [(SPUIHeaderBlurView *)self _setGroupName:0];
  }

  else
  {
    if (UIAccessibilityIsReduceTransparencyEnabled())
    {
      v3 = MEMORY[0x277D75358];
      darkGrayColor = [MEMORY[0x277D75348] darkGrayColor];
      v5 = [v3 colorEffectColor:darkGrayColor];
      v20[0] = v5;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
      [(SPUIHeaderBlurView *)self setBackgroundEffects:v6];

      selfCopy2 = self;
      v8 = 0;
    }

    else
    {
      if ([MEMORY[0x277D65D28] bottomSearchFieldEnabled])
      {
        v9 = objc_opt_new();
        v10 = [MEMORY[0x277D75210] _effectWithBlurRadius:30.0 scale:0.1];
        [v9 addObject:v10];

        v11 = [MEMORY[0x277D75358] colorEffectSaturate:1.6];
        v19[0] = v11;
        v12 = [MEMORY[0x277D75358] colorEffectBrightness:0.15];
        v19[1] = v12;
        v13 = [MEMORY[0x277D75358] colorEffectLuminanceCurveMap:&unk_287C4F848 blendingAmount:0.5];
        v19[2] = v13;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
        [v9 addObjectsFromArray:v14];

        [(SPUIHeaderBlurView *)self setBackgroundEffects:v9];
        return;
      }

      v15 = [MEMORY[0x277D75210] effectWithBlurRadius:22.5];
      v18[0] = v15;
      v16 = [MEMORY[0x277D75358] colorEffectSaturate:1.3];
      v18[1] = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      [(SPUIHeaderBlurView *)self setBackgroundEffects:v17];

      v8 = @"SPUIHeaderBlurView";
      selfCopy2 = self;
    }

    [(SPUIHeaderBlurView *)selfCopy2 _setGroupName:v8];
  }
}

- (void)setKeyboardIsUp:(BOOL)up
{
  if (self->_keyboardIsUp != up)
  {
    self->_keyboardIsUp = up;
    [(SPUIHeaderBlurView *)self updateEffect];
  }
}

- (void)setUseInPlaceFilteredBlur:(BOOL)blur
{
  if (self->_useInPlaceFilteredBlur != blur)
  {
    self->_useInPlaceFilteredBlur = blur;
    [(SPUIHeaderBlurView *)self updateEffect];
  }
}

- (void)setTintColor:(id)color
{
  v4.receiver = self;
  v4.super_class = SPUIHeaderBlurView;
  [(SPUIHeaderBlurView *)&v4 setTintColor:color];
  [(SPUIHeaderBlurView *)self updateEffect];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = SPUIHeaderBlurView;
  [(SPUIHeaderBlurView *)&v6 _setContinuousCornerRadius:?];
  contentView = [(SPUIHeaderBlurView *)self contentView];
  [contentView _setContinuousCornerRadius:radius];
}

@end