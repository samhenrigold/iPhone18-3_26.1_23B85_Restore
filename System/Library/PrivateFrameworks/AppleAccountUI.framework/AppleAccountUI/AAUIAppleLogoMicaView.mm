@interface AAUIAppleLogoMicaView
- (AAUIAppleLogoMicaView)init;
- (void)_updateColors;
- (void)layoutSubviews;
- (void)loadMicaFile;
@end

@implementation AAUIAppleLogoMicaView

- (AAUIAppleLogoMicaView)init
{
  v5.receiver = self;
  v5.super_class = AAUIAppleLogoMicaView;
  v2 = [(AAUIAppleLogoMicaView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AAUIAppleLogoMicaView *)v2 loadMicaFile];
  }

  return v3;
}

- (void)loadMicaFile
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"SignInProgress" ofType:@"caar"];

  v5 = [AAUIMicaPlayer alloc];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v7 = [(AAUIMicaPlayer *)v5 initWithPath:v4 retinaScale:?];
  [(AAUIAppleLogoMicaView *)self setMicaPlayer:v7];

  micaPlayer = [(AAUIAppleLogoMicaView *)self micaPlayer];
  layer = [(AAUIAppleLogoMicaView *)self layer];
  [micaPlayer addToLayer:layer onTop:1 gravity:*MEMORY[0x1E6979DE8]];

  micaPlayer2 = [(AAUIAppleLogoMicaView *)self micaPlayer];
  [micaPlayer2 pause];

  v11 = objc_opt_self();
  v14[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v13 = [(AAUIAppleLogoMicaView *)self registerForTraitChanges:v12 withAction:sel__updateColors];

  [(AAUIAppleLogoMicaView *)self _updateColors];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = AAUIAppleLogoMicaView;
  [(AAUIAppleLogoMicaView *)&v5 layoutSubviews];
  micaPlayer = self->_micaPlayer;
  layer = [(AAUIAppleLogoMicaView *)self layer];
  [(AAUIMicaPlayer *)micaPlayer moveAndResizeWithinParentLayer:layer usingGravity:*MEMORY[0x1E6979DE8] animate:0];
}

- (void)_updateColors
{
  v16[2] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  micaPlayer = [(AAUIAppleLogoMicaView *)self micaPlayer];
  v4 = [micaPlayer publishedLayerWithKey:@"Transparency Gradient" required:1];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    disableActions = [MEMORY[0x1E6979518] disableActions];
    [MEMORY[0x1E6979518] setDisableActions:1];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    v9 = [systemBlueColor colorWithAlphaComponent:0.7];
    traitCollection = [(AAUIAppleLogoMicaView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle == 1)
    {
      v16[0] = [v9 CGColor];
      v12 = v16;
      v13 = systemBlueColor;
    }

    else
    {
      cGColor = [systemBlueColor CGColor];
      v12 = &cGColor;
      v13 = v9;
    }

    v12[1] = [v13 CGColor];
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    [v5 setColors:v14];

    [MEMORY[0x1E6979518] setDisableActions:disableActions];
  }

  else
  {
    systemBlueColor = _AAUILogSystem(v6);
    if (os_log_type_enabled(systemBlueColor, OS_LOG_TYPE_ERROR))
    {
      [(AAUIAppleLogoMicaView *)systemBlueColor _updateColors];
    }
  }
}

@end