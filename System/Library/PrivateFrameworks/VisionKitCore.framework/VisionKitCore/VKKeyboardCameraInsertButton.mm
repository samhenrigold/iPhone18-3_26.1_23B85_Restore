@interface VKKeyboardCameraInsertButton
- (CGSize)intrinsicContentSize;
- (VKKeyboardCameraInsertButton)initWithPrimaryAction:(id)action;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation VKKeyboardCameraInsertButton

- (VKKeyboardCameraInsertButton)initWithPrimaryAction:(id)action
{
  v73[4] = *MEMORY[0x1E69E9840];
  actionCopy = action;
  v71.receiver = self;
  v71.super_class = VKKeyboardCameraInsertButton;
  v5 = [(VKKeyboardCameraInsertButton *)&v71 init];
  v6 = v5;
  if (v5)
  {
    v70 = actionCopy;
    if (vk_solariumEnabled(v5))
    {
      _tintedGlassButtonConfiguration = [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
      [_tintedGlassButtonConfiguration setContentInsets:{12.0, 25.0, 12.0, 25.0}];
      v69 = _tintedGlassButtonConfiguration;
      v8 = [MEMORY[0x1E69DC738] buttonWithConfiguration:_tintedGlassButtonConfiguration primaryAction:actionCopy];
      button = v6->_button;
      v6->_button = v8;

      [(UIButton *)v6->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)v6->_button setRole:1];
      [(VKKeyboardCameraInsertButton *)v6 setOverrideUserInterfaceStyle:2];
      [(VKKeyboardCameraInsertButton *)v6 addSubview:v6->_button];
      v10 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v11 = [v10 boldSystemFontOfSize:?];
      titleLabel = [(UIButton *)v6->_button titleLabel];
      [titleLabel setFont:v11];

      v59 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(UIButton *)v6->_button leadingAnchor];
      leadingAnchor2 = [(VKKeyboardCameraInsertButton *)v6 leadingAnchor];
      v63 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v73[0] = v63;
      bottomAnchor = [(UIButton *)v6->_button bottomAnchor];
      bottomAnchor2 = [(VKKeyboardCameraInsertButton *)v6 bottomAnchor];
      v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v73[1] = v14;
      topAnchor = [(UIButton *)v6->_button topAnchor];
      topAnchor2 = [(VKKeyboardCameraInsertButton *)v6 topAnchor];
      v17 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v73[2] = v17;
      trailingAnchor = [(UIButton *)v6->_button trailingAnchor];
      trailingAnchor2 = [(VKKeyboardCameraInsertButton *)v6 trailingAnchor];
      v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v73[3] = v20;
      v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:4];
      [v59 activateConstraints:v21];

      [(VKKeyboardCameraInsertButton *)v6 setEnabled:1];
    }

    else
    {
      filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
      [filledButtonConfiguration setContentInsets:{12.0, 25.0, 12.0, 25.0}];
      background = [filledButtonConfiguration background];
      [background setCornerRadius:15.0];

      v69 = filledButtonConfiguration;
      v24 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:actionCopy];
      v25 = v6->_button;
      v6->_button = v24;

      [(UIButton *)v6->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      [(UIButton *)v6->_button setAlpha:0.85];
      [(UIButton *)v6->_button setRole:1];
      v26 = objc_alloc(MEMORY[0x1E69DD298]);
      v27 = [MEMORY[0x1E69DC730] effectWithStyle:1];
      v28 = [v26 initWithEffect:v27];
      effectView = v6->_effectView;
      v6->_effectView = v28;

      [(UIVisualEffectView *)v6->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
      defaultMetrics = [MEMORY[0x1E69DCA40] defaultMetrics];
      traitCollection = [(UIButton *)v6->_button traitCollection];
      [defaultMetrics scaledValueForValue:traitCollection compatibleWithTraitCollection:15.0];
      v33 = v32;

      [(UIVisualEffectView *)v6->_effectView _setContinuousCornerRadius:v33];
      [(VKKeyboardCameraInsertButton *)v6 addSubview:v6->_effectView];
      [(VKKeyboardCameraInsertButton *)v6 addSubview:v6->_button];
      v34 = MEMORY[0x1E69DB878];
      [MEMORY[0x1E69DB878] systemFontSize];
      v35 = [v34 boldSystemFontOfSize:?];
      titleLabel2 = [(UIButton *)v6->_button titleLabel];
      [titleLabel2 setFont:v35];

      v54 = MEMORY[0x1E696ACD8];
      leadingAnchor3 = [(UIVisualEffectView *)v6->_effectView leadingAnchor];
      leadingAnchor4 = [(VKKeyboardCameraInsertButton *)v6 leadingAnchor];
      v64 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v72[0] = v64;
      bottomAnchor3 = [(UIVisualEffectView *)v6->_effectView bottomAnchor];
      bottomAnchor4 = [(VKKeyboardCameraInsertButton *)v6 bottomAnchor];
      v58 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v72[1] = v58;
      topAnchor3 = [(UIVisualEffectView *)v6->_effectView topAnchor];
      topAnchor4 = [(VKKeyboardCameraInsertButton *)v6 topAnchor];
      v55 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
      v72[2] = v55;
      trailingAnchor3 = [(UIVisualEffectView *)v6->_effectView trailingAnchor];
      trailingAnchor4 = [(VKKeyboardCameraInsertButton *)v6 trailingAnchor];
      v51 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v72[3] = v51;
      leadingAnchor5 = [(UIButton *)v6->_button leadingAnchor];
      leadingAnchor6 = [(UIVisualEffectView *)v6->_effectView leadingAnchor];
      v48 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v72[4] = v48;
      bottomAnchor5 = [(UIButton *)v6->_button bottomAnchor];
      bottomAnchor6 = [(VKKeyboardCameraInsertButton *)v6 bottomAnchor];
      v38 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v72[5] = v38;
      topAnchor5 = [(UIButton *)v6->_button topAnchor];
      topAnchor6 = [(VKKeyboardCameraInsertButton *)v6 topAnchor];
      v41 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
      v72[6] = v41;
      trailingAnchor5 = [(UIButton *)v6->_button trailingAnchor];
      trailingAnchor6 = [(VKKeyboardCameraInsertButton *)v6 trailingAnchor];
      v44 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v72[7] = v44;
      v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:v72 count:8];
      [v54 activateConstraints:v45];
    }

    actionCopy = v70;
  }

  return v6;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    if (vk_solariumEnabled([(UIButton *)self->_button setEnabled:?]))
    {
      if (self->_enabled)
      {
        [MEMORY[0x1E69DC740] _tintedGlassButtonConfiguration];
      }

      else
      {
        [MEMORY[0x1E69DC740] _glassButtonConfiguration];
      }
      v4 = ;
      [v4 setContentInsets:{12.0, 25.0, 12.0, 25.0}];
      [(UIButton *)self->_button setConfiguration:v4];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIButton *)self->_button intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

@end