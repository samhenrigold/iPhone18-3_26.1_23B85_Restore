@interface VKKeyboardCameraCloseButton
- (CGSize)intrinsicContentSize;
- (VKKeyboardCameraCloseButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation VKKeyboardCameraCloseButton

- (VKKeyboardCameraCloseButton)initWithFrame:(CGRect)frame
{
  v54[4] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = VKKeyboardCameraCloseButton;
  v3 = [(VKKeyboardCameraCloseButton *)&v52 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = vk_solariumEnabled(v3);
    v6 = [MEMORY[0x1E69DC738] buttonWithType:7];
    button = v4->_button;
    v4->_button = v6;

    v8 = v4->_button;
    if (v5)
    {
      [(UIButton *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      _glassButtonConfiguration = [MEMORY[0x1E69DC740] _glassButtonConfiguration];
      [(UIButton *)v4->_button setConfiguration:_glassButtonConfiguration];

      [(VKKeyboardCameraCloseButton *)v4 setOverrideUserInterfaceStyle:2];
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UIButton *)v4->_button setTintColor:labelColor];

      [(VKKeyboardCameraCloseButton *)v4 addSubview:v4->_button];
      v11 = MEMORY[0x1E696ACD8];
      leadingAnchor = [(UIButton *)v4->_button leadingAnchor];
      leadingAnchor2 = [(VKKeyboardCameraCloseButton *)v4 leadingAnchor];
      v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v54[0] = v14;
      bottomAnchor = [(UIButton *)v4->_button bottomAnchor];
      bottomAnchor2 = [(VKKeyboardCameraCloseButton *)v4 bottomAnchor];
      v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v54[1] = v17;
      topAnchor = [(UIButton *)v4->_button topAnchor];
      topAnchor2 = [(VKKeyboardCameraCloseButton *)v4 topAnchor];
      v51 = topAnchor;
      v49 = [topAnchor constraintEqualToAnchor:?];
      v54[2] = v49;
      trailingAnchor = [(UIButton *)v4->_button trailingAnchor];
      trailingAnchor2 = [(VKKeyboardCameraCloseButton *)v4 trailingAnchor];
      v47 = [trailingAnchor constraintEqualToAnchor:?];
      v54[3] = v47;
      leadingAnchor5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:4];
      [v11 activateConstraints:leadingAnchor5];
    }

    else
    {
      [(UIButton *)v8 setAlpha:0.85];
      [(UIButton *)v4->_button setTranslatesAutoresizingMaskIntoConstraints:0];
      v21 = objc_alloc(MEMORY[0x1E69DD298]);
      v22 = [MEMORY[0x1E69DC730] effectWithStyle:1];
      v23 = [v21 initWithEffect:v22];
      effectView = v4->_effectView;
      v4->_effectView = v23;

      [(UIVisualEffectView *)v4->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(VKKeyboardCameraCloseButton *)v4 addSubview:v4->_effectView];
      [(VKKeyboardCameraCloseButton *)v4 addSubview:v4->_button];
      v44 = MEMORY[0x1E696ACD8];
      leadingAnchor3 = [(UIVisualEffectView *)v4->_effectView leadingAnchor];
      leadingAnchor4 = [(VKKeyboardCameraCloseButton *)v4 leadingAnchor];
      v45 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v53[0] = v45;
      bottomAnchor3 = [(UIVisualEffectView *)v4->_effectView bottomAnchor];
      bottomAnchor4 = [(VKKeyboardCameraCloseButton *)v4 bottomAnchor];
      v42 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
      v53[1] = v42;
      topAnchor3 = [(UIVisualEffectView *)v4->_effectView topAnchor];
      topAnchor2 = [(VKKeyboardCameraCloseButton *)v4 topAnchor];
      v51 = topAnchor3;
      v49 = [topAnchor3 constraintEqualToAnchor:?];
      v53[2] = v49;
      trailingAnchor3 = [(UIVisualEffectView *)v4->_effectView trailingAnchor];
      trailingAnchor2 = [(VKKeyboardCameraCloseButton *)v4 trailingAnchor];
      v47 = [trailingAnchor3 constraintEqualToAnchor:?];
      v53[3] = v47;
      leadingAnchor5 = [(UIButton *)v4->_button leadingAnchor];
      leadingAnchor6 = [(UIVisualEffectView *)v4->_effectView leadingAnchor];
      v38 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v53[4] = v38;
      bottomAnchor5 = [(UIButton *)v4->_button bottomAnchor];
      bottomAnchor6 = [(VKKeyboardCameraCloseButton *)v4 bottomAnchor];
      v26 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
      v53[5] = v26;
      topAnchor4 = [(UIButton *)v4->_button topAnchor];
      topAnchor5 = [(VKKeyboardCameraCloseButton *)v4 topAnchor];
      v29 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
      v53[6] = v29;
      trailingAnchor4 = [(UIButton *)v4->_button trailingAnchor];
      trailingAnchor5 = [(VKKeyboardCameraCloseButton *)v4 trailingAnchor];
      v32 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
      v53[7] = v32;
      v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:8];
      [v44 activateConstraints:v33];

      trailingAnchor = trailingAnchor3;
      bottomAnchor2 = bottomAnchor4;

      leadingAnchor2 = leadingAnchor4;
      bottomAnchor = bottomAnchor3;

      leadingAnchor = leadingAnchor3;
      v14 = v45;

      v17 = v42;
    }
  }

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = 44.0;
  v3 = 44.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = VKKeyboardCameraCloseButton;
  layoutSubviews = [(VKKeyboardCameraCloseButton *)&v4 layoutSubviews];
  if ((vk_solariumEnabled(layoutSubviews) & 1) == 0)
  {
    [(UIButton *)self->_button bounds];
    [(UIVisualEffectView *)self->_effectView _setContinuousCornerRadius:CGRectGetWidth(v5) * 0.5];
  }
}

@end