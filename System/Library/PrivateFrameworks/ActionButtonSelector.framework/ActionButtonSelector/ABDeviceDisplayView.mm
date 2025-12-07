@interface ABDeviceDisplayView
- (ABDeviceDisplayView)initWithFrame:(CGRect)frame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_resetSprings;
- (void)_setSilentModeEnabled:(BOOL)enabled animated:(BOOL)animated;
- (void)_shake;
- (void)_transitionIslandToCompact;
- (void)_transitionIslandToGrowing;
- (void)_transitionIslandToInert;
- (void)_transitionIslandToLarge;
- (void)layoutSubviews;
- (void)setIslandMode:(void *)result;
@end

@implementation ABDeviceDisplayView

- (ABDeviceDisplayView)initWithFrame:(CGRect)frame
{
  v51[4] = *MEMORY[0x277D85DE8];
  v50.receiver = self;
  v50.super_class = ABDeviceDisplayView;
  v3 = [(ABDeviceDisplayView *)&v50 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = ABDisplayPackageName(v46, v4);
    v45 = [v46 URLForResource:v5 withExtension:@"ca"];

    v6 = [MEMORY[0x277CD9F28] packageWithContentsOfURL:v45 type:*MEMORY[0x277CDA7F8] options:0 error:0];
    package = v3->_package;
    v3->_package = v6;

    rootLayer = [(CAPackage *)v3->_package rootLayer];
    [rootLayer setGeometryFlipped:1];

    v9 = [(CAPackage *)v3->_package publishedObjectWithName:@"island"];
    islandLayer = v3->_islandLayer;
    v3->_islandLayer = v9;

    v11 = [(CAPackage *)v3->_package publishedObjectWithName:@"ringer"];
    ringerLayer = v3->_ringerLayer;
    v3->_ringerLayer = v11;

    v13 = [(CAPackage *)v3->_package publishedObjectWithName:@"Wallpaper"];
    wallpaperLayer = v3->_wallpaperLayer;
    v3->_wallpaperLayer = v13;

    v15 = [objc_alloc(MEMORY[0x277CD9FB8]) initWithLayer:v3->_ringerLayer];
    ringerStateController = v3->_ringerStateController;
    v3->_ringerStateController = v15;

    [(ABDeviceDisplayView *)v3 _setSilentModeEnabled:1 animated:0];
    v17 = objc_opt_new();
    islandY = v3->_islandY;
    v3->_islandY = v17;

    v19 = objc_opt_new();
    islandWidth = v3->_islandWidth;
    v3->_islandWidth = v19;

    v21 = objc_opt_new();
    islandHeight = v3->_islandHeight;
    v3->_islandHeight = v21;

    v23 = objc_opt_new();
    islandShake1 = v3->_islandShake1;
    v3->_islandShake1 = v23;

    [(ABFloatSpringProperty *)v3->_islandShake1 setBounce:0.0 duration:0.45];
    v25 = objc_opt_new();
    islandShake2 = v3->_islandShake2;
    v3->_islandShake2 = v25;

    [(ABFloatSpringProperty *)v3->_islandShake2 setBounce:0.82322 duration:0.22214];
    v27 = objc_opt_new();
    ringerVisible = v3->_ringerVisible;
    v3->_ringerVisible = v27;

    v29 = MEMORY[0x277D755B8];
    v30 = ABHeroWallpaperImageName();
    v31 = [v29 imageNamed:v30 inBundle:v46 withConfiguration:0];

    if (v31)
    {
      v32 = v31;
      -[CALayer setContents:](v3->_wallpaperLayer, "setContents:", [v31 CGImage]);
    }

    [(ABDeviceDisplayView *)v3 _transitionIslandToInert];
    [(ABDeviceDisplayView *)v3 _resetSprings];
    objc_initWeak(&location, v3);
    v33 = MEMORY[0x277D75D18];
    v51[0] = v3->_islandY;
    v51[1] = v3->_islandWidth;
    v51[2] = v3->_islandHeight;
    v51[3] = v3->_ringerVisible;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __37__ABDeviceDisplayView_initWithFrame___block_invoke;
    v47[3] = &unk_278BFFD20;
    objc_copyWeak(&v48, &location);
    [v33 _createTransformerWithInputAnimatableProperties:v34 presentationValueChangedCallback:v47];

    position = [(CALayer *)v3->_islandLayer position];
    v37 = v36;
    v39 = v38;
    IsD23 = ABDeviceIsD23(position);
    v41 = 0.0;
    if (IsD23)
    {
      v41 = 14.0;
    }

    [(CALayer *)v3->_islandLayer setPosition:v37, v39 + v41];
    layer = [(ABDeviceDisplayView *)v3 layer];
    rootLayer2 = [(CAPackage *)v3->_package rootLayer];
    [layer addSublayer:rootLayer2];

    objc_destroyWeak(&v48);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __37__ABDeviceDisplayView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(CAPackage *)self->_package rootLayer:fits.width];
  [v3 bounds];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = ABDeviceDisplayView;
  [(ABDeviceDisplayView *)&v27 layoutSubviews];
  disableActions = [MEMORY[0x277CD9FF0] disableActions];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(ABDeviceDisplayView *)self bounds];
  v5 = v4 * 0.5;
  v7 = v6 * 0.5;
  rootLayer = [(CAPackage *)self->_package rootLayer];
  [rootLayer setPosition:{v5, v7}];

  [(ABFloatSpringProperty *)self->_islandWidth output];
  v10 = v9;
  [(ABFloatSpringProperty *)self->_islandHeight output];
  v12 = v11;
  if (v11 > 105.0)
  {
    [(CALayer *)self->_islandLayer setBounds:0.0, 0.0, v10, v11];
    [(ABFloatSpringProperty *)self->_islandShake1 output];
    v14 = v5 + v13;
    [(ABFloatSpringProperty *)self->_islandShake2 output];
    v16 = v14 + v15;
    [(ABFloatSpringProperty *)self->_islandY output];
    [(CALayer *)self->_islandLayer setPosition:v16, v17];
    [(CALayer *)self->_islandLayer setCornerRadius:v12 * 0.5];
    [(ABFloatSpringProperty *)self->_ringerVisible output];
    v19 = pow(v18, 3.0);
    v20 = v19;
    *&v19 = v19;
    [(CALayer *)self->_ringerLayer setOpacity:v19];
    ringerLayer = self->_ringerLayer;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:20.0 - v20 * 20.0];
    [(CALayer *)ringerLayer setValue:v22 forKeyPath:@"filters.gaussianBlur.inputRadius"];

    v23 = v12 / 110.0 * (v20 * 0.5 + 0.5);
    v24 = self->_ringerLayer;
    v25 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
    [(CALayer *)v24 setValue:v25 forKeyPath:@"transform.scale.xy"];

    [(CALayer *)self->_ringerLayer bounds];
    [(CALayer *)self->_ringerLayer setPosition:v23 * v26 * 0.5 + (v12 - v23 * v26) * 0.5, v12 * 0.5];
  }

  [MEMORY[0x277CD9FF0] setDisableActions:disableActions];
}

- (void)_resetSprings
{
  [(ABFloatSpringProperty *)self->_islandY input];
  [(ABFloatSpringProperty *)self->_islandY setOutput:?];
  [(ABFloatSpringProperty *)self->_islandWidth input];
  [(ABFloatSpringProperty *)self->_islandWidth setOutput:?];
  [(ABFloatSpringProperty *)self->_islandHeight input];
  [(ABFloatSpringProperty *)self->_islandHeight setOutput:?];
  [(ABFloatSpringProperty *)self->_ringerVisible input];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setOutput:?];
}

- (void)_setSilentModeEnabled:(BOOL)enabled animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_isSilentModeEnabled = enabled;
  ringerLayer = self->_ringerLayer;
  if (enabled)
  {
    v7 = @"silent";
  }

  else
  {
    v7 = @"ringer";
  }

  v8 = [(CALayer *)ringerLayer stateWithName:v7];
  v9 = 0.0;
  if (animatedCopy)
  {
    *&v9 = 1.0;
  }

  v11 = v8;
  [CAStateController setState:"setState:ofLayer:transitionSpeed:" ofLayer:v9 transitionSpeed:?];
  if (self->_isSilentModeEnabled && animatedCopy)
  {
    [(ABDeviceDisplayView *)self _shake];
  }
}

- (void)_shake
{
  islandShake1 = self->_islandShake1;
  [(ABFloatSpringProperty *)islandShake1 input];
  [(ABFloatSpringProperty *)islandShake1 setInput:v4 + 20.0];
  v5 = dispatch_time(0, 275000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__ABDeviceDisplayView__shake__block_invoke;
  block[3] = &unk_278BFFC38;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

uint64_t __29__ABDeviceDisplayView__shake__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 480);
  [v1 input];
  v3 = v2 + -20.0;

  return [v1 setInput:v3];
}

- (void)_transitionIslandToInert
{
  [(ABFloatSpringProperty *)self->_islandWidth setBounce:0.0 duration:0.5];
  [(ABFloatSpringProperty *)self->_islandWidth setInput:371.0];
  [(ABFloatSpringProperty *)self->_islandHeight setBounce:0.0 duration:0.5];
  [(ABFloatSpringProperty *)self->_islandHeight setInput:110.0];
  IsD23 = ABDeviceIsD23([(ABFloatSpringProperty *)self->_islandY setBounce:0.0 duration:0.55]);
  v4 = 90.0;
  if (IsD23)
  {
    v4 = 104.0;
  }

  [(ABFloatSpringProperty *)self->_islandY setInput:v4];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setInput:0.0];
}

- (void)_transitionIslandToCompact
{
  [(ABFloatSpringProperty *)self->_islandWidth setBounce:0.0 duration:0.35];
  [(ABFloatSpringProperty *)self->_islandWidth setInput:540.0];
  [(ABFloatSpringProperty *)self->_islandHeight setBounce:0.0 duration:0.35];
  [(ABFloatSpringProperty *)self->_islandHeight setInput:110.0];
  IsD23 = ABDeviceIsD23([(ABFloatSpringProperty *)self->_islandY setBounce:0.0 duration:0.55]);
  v4 = 90.0;
  if (IsD23)
  {
    v4 = 104.0;
  }

  [(ABFloatSpringProperty *)self->_islandY setInput:v4];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setInput:1.0];
}

- (void)_transitionIslandToGrowing
{
  [(ABFloatSpringProperty *)self->_islandWidth setBounce:0.0 duration:2.5];
  [(ABFloatSpringProperty *)self->_islandWidth setInput:624.0];
  [(ABFloatSpringProperty *)self->_islandHeight setBounce:0.0 duration:2.5];
  [(ABFloatSpringProperty *)self->_islandHeight setInput:171.0];
  IsD23 = ABDeviceIsD23([(ABFloatSpringProperty *)self->_islandY setBounce:0.0 duration:2.5]);
  v4 = 105.0;
  if (IsD23)
  {
    v4 = 119.0;
  }

  [(ABFloatSpringProperty *)self->_islandY setInput:v4];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setInput:1.0];
}

- (void)_transitionIslandToLarge
{
  [(ABFloatSpringProperty *)self->_islandWidth setBounce:0.4 duration:0.5];
  [(ABFloatSpringProperty *)self->_islandWidth setInput:624.0];
  [(ABFloatSpringProperty *)self->_islandHeight setBounce:0.4 duration:0.55];
  [(ABFloatSpringProperty *)self->_islandHeight setInput:171.0];
  IsD23 = ABDeviceIsD23([(ABFloatSpringProperty *)self->_islandY setBounce:0.0 duration:0.55]);
  v4 = 105.0;
  if (IsD23)
  {
    v4 = 119.0;
  }

  [(ABFloatSpringProperty *)self->_islandY setInput:v4];
  ringerVisible = self->_ringerVisible;

  [(ABFloatSpringProperty *)ringerVisible setInput:1.0];
}

- (void)setIslandMode:(void *)result
{
  if (result)
  {
    v2 = result;
    if (result[63] != a2)
    {
      result[63] = a2;
      switch(a2)
      {
        case 0:

          result = [result _transitionIslandToInert];
          break;
        case 1:

          result = [result _transitionIslandToCompact];
          break;
        case 2:

          result = [result _transitionIslandToGrowing];
          break;
        case 3:
          [result _transitionIslandToLarge];

          result = [v2 _toggleSilentMode];
          break;
        default:
          return result;
      }
    }
  }

  return result;
}

@end