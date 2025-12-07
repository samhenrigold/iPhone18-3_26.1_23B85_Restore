@interface PRQuickActionsEditingReticleView
- (PRQuickActionsEditingReticleView)init;
- (void)layoutSubviews;
- (void)setShowsEmptyView:(BOOL)view;
@end

@implementation PRQuickActionsEditingReticleView

- (PRQuickActionsEditingReticleView)init
{
  v38[4] = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = PRQuickActionsEditingReticleView;
  v2 = [(PRQuickActionsEditingReticleView *)&v37 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E698E818]);
    vibrancyView = v2->_vibrancyView;
    v2->_vibrancyView = v3;

    v5 = [(BSUIVibrancyEffectView *)v2->_vibrancyView setUserInteractionEnabled:0];
    [(BSUIVibrancyEffectView *)v2->_vibrancyView setBlurEnabled:PREditingSupportsLiveBlurs(v5, v6)];
    [(PRQuickActionsEditingReticleView *)v2 addSubview:v2->_vibrancyView];
    v7 = objc_alloc_init(PREditingReticleView);
    reticleView = v2->_reticleView;
    v2->_reticleView = v7;

    [(PREditingReticleView *)v2->_reticleView setAutoresizingMask:18];
    contentView = [(BSUIVibrancyEffectView *)v2->_vibrancyView contentView];
    [contentView addSubview:v2->_reticleView];

    v10 = MEMORY[0x1E69DCAB8];
    v11 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
    v36 = [v10 systemImageNamed:@"plus" withConfiguration:v11];

    v12 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v36];
    plusImageView = v2->_plusImageView;
    v2->_plusImageView = v12;

    v14 = v2->_plusImageView;
    v15 = MEMORY[0x1E69DC888];
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v17 = [standardUserDefaults objectForKey:@"PRReticleBorderColor"];
    v18 = v17;
    if (!v17)
    {
      v17 = &unk_1F1C6BE60;
    }

    [v17 doubleValue];
    v19 = [v15 colorWithWhite:? alpha:?];
    [(UIImageView *)v14 setTintColor:v19];

    [(UIImageView *)v2->_plusImageView setContentMode:1];
    [(UIImageView *)v2->_plusImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView2 = [(BSUIVibrancyEffectView *)v2->_vibrancyView contentView];
    [contentView2 addSubview:v2->_plusImageView];

    [(UIImageView *)v2->_plusImageView setHidden:1];
    v31 = MEMORY[0x1E696ACD8];
    heightAnchor = [(UIImageView *)v2->_plusImageView heightAnchor];
    heightAnchor2 = [(PRQuickActionsEditingReticleView *)v2 heightAnchor];
    v33 = [heightAnchor constraintEqualToAnchor:heightAnchor2 multiplier:0.5];
    v38[0] = v33;
    widthAnchor = [(UIImageView *)v2->_plusImageView widthAnchor];
    widthAnchor2 = [(PRQuickActionsEditingReticleView *)v2 widthAnchor];
    v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2 multiplier:0.5];
    v38[1] = v21;
    centerYAnchor = [(UIImageView *)v2->_plusImageView centerYAnchor];
    centerYAnchor2 = [(PRQuickActionsEditingReticleView *)v2 centerYAnchor];
    v24 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v38[2] = v24;
    centerXAnchor = [(UIImageView *)v2->_plusImageView centerXAnchor];
    centerXAnchor2 = [(PRQuickActionsEditingReticleView *)v2 centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v38[3] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
    [v31 activateConstraints:v28];
  }

  return v2;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = PRQuickActionsEditingReticleView;
  [(PRQuickActionsEditingReticleView *)&v5 layoutSubviews];
  [(PRQuickActionsEditingReticleView *)self bounds];
  v4 = v3;
  [(BSUIVibrancyEffectView *)self->_vibrancyView setFrame:?];
  [(PREditingReticleView *)self->_reticleView setOutlineBorderCornerRadius:v4 * 0.5];
}

- (void)setShowsEmptyView:(BOOL)view
{
  if (self->_showsEmptyView != view)
  {
    self->_showsEmptyView = view;
    [(UIImageView *)self->_plusImageView setHidden:!view];
  }
}

@end