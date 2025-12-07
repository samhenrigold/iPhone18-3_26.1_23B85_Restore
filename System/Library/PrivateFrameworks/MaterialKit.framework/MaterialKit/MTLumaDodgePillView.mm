@interface MTLumaDodgePillView
+ (CGSize)suggestedSizeForContentWidth:(double)width withSettings:(id)settings;
+ (void)initialize;
- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)suggestedSizeForContentWidth:(double)width;
- (MTLumaDodgePillBackgroundLuminanceObserver)backgroundLumninanceObserver;
- (MTLumaDodgePillView)initWithFrame:(CGRect)frame settings:(id)settings graphicsQuality:(int64_t)quality;
- (NSString)description;
- (unint64_t)_dodgeMode;
- (void)_configureLowQualityEffectViewForMode:(unint64_t)mode path:(id)path;
- (void)_updateBaseContentColor:(id)color;
- (void)_updateLumaTracking;
- (void)_updateModeConfiguration;
- (void)_updatePowerAnalysisOverrideSettings;
- (void)_updateStyle;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)backdropLayer:(id)layer didChangeLuma:(double)luma;
- (void)bounce;
- (void)dealloc;
- (void)layoutSubviews;
- (void)resetBackgroundLuminanceHysteresis;
- (void)setBackgroundLuminanceBias:(int64_t)bias;
- (void)setBackgroundLumninanceObserver:(id)observer;
- (void)setCustomPillShapePath:(id)path animated:(BOOL)animated;
- (void)setStyle:(int64_t)style;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation MTLumaDodgePillView

- (unint64_t)_dodgeMode
{
  v2 = (*(self + 461) >> 4) & 3;
  if (!v2)
  {
    return (*(self + 461) >> 2) & 3;
  }

  return v2;
}

- (void)_updateStyle
{
  _dodgeMode = [(MTLumaDodgePillView *)self _dodgeMode];
  if (_dodgeMode != 2)
  {
    if (_dodgeMode != 1)
    {
      layer = [(MTLumaDodgePillView *)self layer];
      layer2 = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];
      [layer2 CGColor];
      [layer setContentsMultiplyColor:?];
LABEL_18:

      return;
    }

    settings = self->_settings;
    v5 = (*(self + 460) << 28 >> 28);
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        blackSettings = [(MTLumaDodgePillSettings *)settings blackSettings];
        goto LABEL_17;
      }

      if (v5 == 4)
      {
        blackSettings = [(MTLumaDodgePillSettings *)settings whiteSettings];
        goto LABEL_17;
      }
    }

    else
    {
      if (v5 == 1)
      {
        blackSettings = [(MTLumaDodgePillSettings *)settings thinSettings];
        goto LABEL_17;
      }

      if (v5 == 2)
      {
        blackSettings = [(MTLumaDodgePillSettings *)settings graySettings];
LABEL_17:
        layer = blackSettings;
        layer2 = [(MTLumaDodgePillView *)self layer];
        v8 = MEMORY[0x277CCABB0];
        [(MTLumaDodgePillSettings *)self->_settings colorAddWhiteness];
        [layer colorAddOpacity];
        v9 = [v8 numberWithDouble:?];
        [layer2 setValue:? forKeyPath:?];

        v10 = MEMORY[0x277CCABB0];
        [layer lumaMapPlusColorOpacity];
        v11 = [v10 numberWithDouble:?];
        [layer2 setValue:? forKeyPath:?];

        v12 = MEMORY[0x277CCABB0];
        [layer overlayBlendOpacity];
        v13 = [v12 numberWithDouble:?];
        [layer2 setValue:? forKeyPath:?];

        v14 = MEMORY[0x277CCABB0];
        [layer blur];
        v15 = [v14 numberWithDouble:?];
        [layer2 setValue:? forKeyPath:?];

        v16 = MEMORY[0x277CCABB0];
        [layer brightness];
        v17 = [v16 numberWithDouble:?];
        [layer2 setValue:? forKeyPath:?];

        v18 = MEMORY[0x277CCABB0];
        [layer saturation];
        v19 = [v18 numberWithDouble:?];
        [layer2 setValue:? forKeyPath:?];

        goto LABEL_18;
      }
    }

    blackSettings = [(MTLumaDodgePillSettings *)settings noneSettings];
    goto LABEL_17;
  }

  [(MTLumaDodgePillView *)self _updateBaseContentColor:?];
}

- (void)_updateModeConfiguration
{
  _dodgeMode = [(MTLumaDodgePillView *)self _dodgeMode];
  [MTLumaDodgePillView _configureLowQualityEffectViewForMode:"_configureLowQualityEffectViewForMode:path:" path:?];
  layer = [(MTLumaDodgePillView *)self layer];
  v5 = layer;
  if (_dodgeMode == 2)
  {
    [layer setFilters:?];

    layer2 = [(MTLumaDodgePillView *)self layer];
    [layer2 setContents:?];

    layer3 = [(MTLumaDodgePillView *)self layer];
    [layer3 setContentsMultiplyColor:?];

    layer4 = [(MTLumaDodgePillView *)self layer];
    [layer4 setEnabled:?];

    layer5 = [(MTLumaDodgePillView *)self layer];
    [layer5 setCaptureOnly:?];

    layer6 = [(MTLumaDodgePillView *)self layer];
    [layer6 setScale:?];
  }

  else
  {
    if (_dodgeMode == 1)
    {
      [layer setContents:?];

      layer7 = [(MTLumaDodgePillView *)self layer];
      [layer7 setContentsMultiplyColor:?];

      layer8 = [(MTLumaDodgePillView *)self layer];
      [layer8 setScale:?];

      layer9 = [(MTLumaDodgePillView *)self layer];
      [layer9 setEnabled:?];

      layer10 = [(MTLumaDodgePillView *)self layer];
      [layer10 setCaptureOnly:?];

      v10 = [MEMORY[0x277CD9EA0] filterWithType:?];
      [v10 setName:?];
      v11 = MEMORY[0x277D755B8];
      v12 = MEMORY[0x277CCA8D8];
      objc_opt_class();
      v13 = [v12 bundleForClass:?];
      v14 = [v11 imageNamed:? inBundle:?];
      [v14 CGImage];
      [v10 setValue:? forKey:?];

      v15 = [MEMORY[0x277CD9EA0] filterWithType:?];
      [v15 setName:?];
      [v15 setValue:? forKey:?];
      v16 = [MEMORY[0x277CD9EA0] filterWithType:?];
      [v16 setName:?];
      v17 = [MEMORY[0x277CD9EA0] filterWithType:?];
      [v17 setName:?];
      layer11 = [(MTLumaDodgePillView *)self layer];
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
      [layer11 setFilters:?];

      return;
    }

    [layer setScale:?];

    layer12 = [(MTLumaDodgePillView *)self layer];
    [layer12 setFilters:?];

    layer13 = [(MTLumaDodgePillView *)self layer];
    [layer13 setEnabled:?];

    v31.width = 1.0;
    v31.height = 1.0;
    UIGraphicsBeginImageContextWithOptions(v31, 1, 1.0);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [whiteColor setFill];

    v32.origin.x = 0.0;
    v32.origin.y = 0.0;
    v32.size.width = 1.0;
    v32.size.height = 1.0;
    UIRectFill(v32);
    layer6 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    layer14 = [(MTLumaDodgePillView *)self layer];
    v28 = layer6;
    [layer6 CGImage];
    [layer14 setContents:?];
  }
}

- (void)_updateLumaTracking
{
  _dodgeMode = [(MTLumaDodgePillView *)self _dodgeMode];
  v4 = _dodgeMode;
  if (!self->_disableLumaTracking && (_dodgeMode == 2 || (WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver), WeakRetained, WeakRetained)))
  {
    layer = [(MTLumaDodgePillView *)self layer];
    [layer setTracksLuma:?];
  }

  else
  {
    layer2 = [(MTLumaDodgePillView *)self layer];
    [layer2 setTracksLuma:?];

    self->_lumaIsValid = 0;
    *(self + 460) &= 0x8Fu;
    if (v4 != 2)
    {
      return;
    }

    layer = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];
    [(MTLumaDodgePillView *)self _updateBaseContentColor:?];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = MTLumaDodgePillView;
  [(MTLumaDodgePillView *)&v4 layoutSubviews];
  lowQualityEffectView = self->_lowQualityEffectView;
  [(MTLumaDodgePillView *)self bounds];
  [(_MTLumaDodgePillLowQualityEffectView *)lowQualityEffectView setFrame:?];
}

- (void)dealloc
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "pill=%p dealloc'ed", &v2, 0xCu);
}

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {

    MTRegisterMaterialKitLogging();
  }
}

- (MTLumaDodgePillView)initWithFrame:(CGRect)frame settings:(id)settings graphicsQuality:(int64_t)quality
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  settingsCopy = settings;
  if (!settingsCopy)
  {
    [MTLumaDodgePillView initWithFrame:a2 settings:self graphicsQuality:?];
  }

  v23.receiver = self;
  v23.super_class = MTLumaDodgePillView;
  height = [(MTPillView *)&v23 initWithFrame:settingsCopy settings:x, y, width, height];
  v15 = height;
  if (height)
  {
    *(height + 460) &= 0xF0u;
    if (quality)
    {
      v16 = 8;
    }

    else
    {
      v16 = 4;
    }

    *(height + 461) = *(height + 461) & 0xF3 | v16;
    objc_storeStrong(&height->_settings, settings);
    v17 = +[MTLumaDodgePillDomain rootSettings];
    v18 = *(v15 + 416);
    *(v15 + 416) = v17;

    [*(v15 + 416) addKeyObserver:?];
    *(v15 + 481) = [*(v15 + 416) disableLumaTracking];
    *(v15 + 461) = *(v15 + 461) & 0xCF | (16 * ([*(v15 + 416) overrideDodgeMode] & 3));
    v19 = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];
    v20 = *(v15 + 472);
    *(v15 + 472) = v19;

    [v15 _updateModeConfiguration];
    [v15 _updateStyle];
    [v15 _updateLumaTracking];
    v21 = MTLogLuma;
    if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_DEBUG))
    {
      [MTLumaDodgePillView initWithFrame:v15 settings:v21 graphicsQuality:?];
    }
  }

  return v15;
}

- (void)_updateBaseContentColor:(id)color
{
  objc_storeStrong(&self->_baseContentColor, color);
  colorCopy = color;
  v6 = colorCopy;
  v7 = *(self + 460);
  if ((v7 & 0xF) == 3)
  {
    v8 = 0.25;
  }

  else
  {
    if ((v7 << 28 >> 28) != 4)
    {
      v16 = *(MEMORY[0x277CD9DA0] + 32);
      v17 = *(MEMORY[0x277CD9DA0] + 48);
      v18 = *(MEMORY[0x277CD9DA0] + 16);
      v14 = *MEMORY[0x277CD9DA0];
      v15 = *(MEMORY[0x277CD9DA0] + 64);
      goto LABEL_7;
    }

    v8 = 1.025;
  }

  *&v9 = LODWORD(v8) | 0xBD99168700000000;
  *(&v9 + 1) = 0xBCE978D5BE1645A2;
  *&v10 = 3169417429;
  v18 = v9;
  LODWORD(v9) = 0;
  *(&v9 + 1) = v8;
  *(&v9 + 1) = 0xBE1645A2BD991687;
  *(&v10 + 1) = LODWORD(v8);
  v16 = v9;
  v17 = v10;
  v15 = xmmword_21E612020;
  v14 = xmmword_21E612030;
LABEL_7:
  v19[0] = v14;
  v19[1] = v18;
  v19[2] = v16;
  v19[3] = v17;
  v19[4] = v15;
  v11 = MTCGColorByApplyingCAColorMatrix([colorCopy CGColor], v19, 0);
  lowQualityEffectView = self->_lowQualityEffectView;
  v13 = [MEMORY[0x277D75348] colorWithCGColor:?];
  [(_MTLumaDodgePillLowQualityEffectView *)lowQualityEffectView setContentColor:?];

  CGColorRelease(v11);
}

- (void)_configureLowQualityEffectViewForMode:(unint64_t)mode path:(id)path
{
  pathCopy = path;
  v21 = pathCopy;
  if (mode != 2)
  {
    [(_MTLumaDodgePillLowQualityEffectView *)self->_lowQualityEffectView removeFromSuperview];
    lowQualityEffectView = self->_lowQualityEffectView;
    self->_lowQualityEffectView = 0;

    goto LABEL_13;
  }

  v7 = pathCopy;
  v8 = self->_lowQualityEffectView;
  if (v7)
  {
    if (v8)
    {
      if (objc_opt_respondsToSelector())
      {
        goto LABEL_13;
      }

      v8 = self->_lowQualityEffectView;
    }

    [(_MTLumaDodgePillLowQualityEffectView *)v8 removeFromSuperview];
    v9 = self->_lowQualityEffectView;
    self->_lowQualityEffectView = 0;

    v10 = [_MTLumaDodgePillCustomShapeLowQualityEffectView alloc];
    [(MTLumaDodgePillView *)self bounds];
    v11 = [(_MTLumaDodgePillCustomShapeLowQualityEffectView *)v10 initWithFrame:?];
    shapeLayer = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v14 = [blackColor colorWithAlphaComponent:?];
    [v14 CGColor];
    [shapeLayer setFillColor:?];

    [shapeLayer setLineCap:?];
    [shapeLayer setLineJoin:?];
    [shapeLayer setLineWidth:?];
    shapeLayer2 = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
    [v21 CGPath];
    [shapeLayer2 setPath:?];

    v16 = self->_lowQualityEffectView;
    self->_lowQualityEffectView = v11;
  }

  else
  {
    if (v8)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_13;
      }

      v8 = self->_lowQualityEffectView;
    }

    [(_MTLumaDodgePillLowQualityEffectView *)v8 removeFromSuperview];
    v18 = self->_lowQualityEffectView;
    self->_lowQualityEffectView = 0;

    v19 = [_MTLumaDodgePillLowQualityEffectView alloc];
    [(MTLumaDodgePillView *)self bounds];
    v20 = [(_MTLumaDodgePillLowQualityEffectView *)v19 initWithFrame:?];
    shapeLayer = self->_lowQualityEffectView;
    self->_lowQualityEffectView = v20;
  }

  [(MTLumaDodgePillView *)self _updateBaseContentColor:?];
  [(MTLumaDodgePillView *)self addSubview:?];
LABEL_13:
}

- (void)_updatePowerAnalysisOverrideSettings
{
  self->_disableLumaTracking = [(MTLumaDodgePillSettings *)self->_domainSettings disableLumaTracking];
  v3 = (*(self + 461) >> 4) & 3;
  overrideDodgeMode = [(MTLumaDodgePillSettings *)self->_domainSettings overrideDodgeMode];
  *(self + 461) = (16 * (overrideDodgeMode & 3)) | *(self + 461) & 0xCF;
  if ((overrideDodgeMode & 3) != v3)
  {
    [(MTLumaDodgePillView *)self _updateModeConfiguration];
    [(MTLumaDodgePillView *)self _updateStyle];
  }

  [(MTLumaDodgePillView *)self _updateLumaTracking];
}

- (void)backdropLayer:(id)layer didChangeLuma:(double)luma
{
  v29 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v6 = MTLogLuma;
  if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_DEBUG))
  {
    [(MTLumaDodgePillView *)self backdropLayer:v6 didChangeLuma:luma];
  }

  v7 = *(self + 460);
  lumaIsValid = self->_lumaIsValid;
  self->_luma = luma;
  layer = [(MTLumaDodgePillView *)self layer];
  tracksLuma = [layer tracksLuma];

  if (!tracksLuma)
  {
    v14 = MTLogLuma;
    if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
    {
      *v27 = 134218240;
      *&v27[4] = self;
      *&v27[12] = 2048;
      *&v27[14] = luma;
      _os_log_impl(&dword_21E600000, v14, OS_LOG_TYPE_INFO, "pill=%p unexpected luma change (%.2f) - reporting unknown", v27, 0x16u);
    }

    v11 = *(self + 460) & 0x8F;
    goto LABEL_13;
  }

  self->_lumaIsValid = 1;
  [(MTLumaDodgePillSettings *)self->_settings brightLumaThreshold];
  if (BSFloatGreaterThanOrEqualToFloat())
  {
    v11 = *(self + 460);
    if ((v11 & 0x70) == 0x20)
    {
      goto LABEL_14;
    }

    v12 = MTLogLuma;
    if (!os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    *v27 = 134218240;
    *&v27[4] = self;
    *&v27[12] = 2048;
    *&v27[14] = luma;
    v13 = "pill=%p responding to light luma change (%.2f)";
    goto LABEL_8;
  }

  [(MTLumaDodgePillSettings *)self->_settings darkLumaThreshold];
  v18 = BSFloatLessThanOrEqualToFloat();
  v11 = *(self + 460);
  if (v18)
  {
    if ((v11 & 0x70) != 0x10)
    {
      v12 = MTLogLuma;
      if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
      {
        *v27 = 134218240;
        *&v27[4] = self;
        *&v27[12] = 2048;
        *&v27[14] = luma;
        v19 = "pill=%p responding to dark luma change (%.2f)";
LABEL_27:
        _os_log_impl(&dword_21E600000, v12, OS_LOG_TYPE_INFO, v19, v27, 0x16u);
        goto LABEL_28;
      }

      goto LABEL_28;
    }
  }

  else if ((v11 & 0x70) == 0)
  {
    if ((*(self + 230) & 0x380) != 0)
    {
      v20 = MTLogLuma;
      if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
      {
        v21 = (*(self + 230) << 6) >> 13;
        v22 = v20;
        v23 = NSStringFromMTLumaDodgePillBackgroundLuminance(v21);
        *v27 = 134218498;
        *&v27[4] = self;
        *&v27[12] = 2048;
        *&v27[14] = luma;
        *&v27[22] = 2114;
        v28 = v23;
        _os_log_impl(&dword_21E600000, v22, OS_LOG_TYPE_INFO, "pill=%p ambiguous initial luma (%.2f) - biased %{public}@", v27, 0x20u);
      }

      v11 = (*(self + 230) >> 3) & 0x70 | *(self + 460) & 0x8F;
      goto LABEL_13;
    }

    v24 = *(self + 460);
    if ((v24 & 0xF) == 4)
    {
      v12 = MTLogLuma;
      if (!os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
      {
        goto LABEL_28;
      }

      *v27 = 134218240;
      *&v27[4] = self;
      *&v27[12] = 2048;
      *&v27[14] = luma;
      v19 = "pill=%p ambiguous initial luma (%.2f) - assuming dark since current style is white";
      goto LABEL_27;
    }

    if ((v24 << 28 >> 28) == 3)
    {
      v12 = MTLogLuma;
      if (!os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
      {
        goto LABEL_9;
      }

      *v27 = 134218240;
      *&v27[4] = self;
      *&v27[12] = 2048;
      *&v27[14] = luma;
      v13 = "pill=%p ambiguous initial luma (%.2f) - assuming light since current style is black";
LABEL_8:
      _os_log_impl(&dword_21E600000, v12, OS_LOG_TYPE_INFO, v13, v27, 0x16u);
LABEL_9:
      v11 = *(self + 460) & 0x8F | 0x20;
LABEL_13:
      *(self + 460) = v11;
      goto LABEL_14;
    }

    [(MTLumaDodgePillSettings *)self->_settings initialLumaThreshold];
    v25 = BSFloatGreaterThanOrEqualToFloat();
    v12 = MTLogLuma;
    v26 = os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO);
    if (v25)
    {
      if (!v26)
      {
        goto LABEL_9;
      }

      *v27 = 134218240;
      *&v27[4] = self;
      *&v27[12] = 2048;
      *&v27[14] = luma;
      v13 = "pill=%p ambiguous initial luma (%.2f) - defaulting light";
      goto LABEL_8;
    }

    if (v26)
    {
      *v27 = 134218240;
      *&v27[4] = self;
      *&v27[12] = 2048;
      *&v27[14] = luma;
      v19 = "pill=%p ambiguous initial luma (%.2f) - defaulting dark";
      goto LABEL_27;
    }

LABEL_28:
    v11 = *(self + 460) & 0x8F | 0x10;
    goto LABEL_13;
  }

LABEL_14:
  if (((v11 ^ v7) & 0x70) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver);
    [WeakRetained lumaDodgePillDidDetectBackgroundLuminanceChange:?];
  }

  if ([(MTLumaDodgePillView *)self _dodgeMode:*v27]== 2)
  {
    if (BSFloatEqualToFloat())
    {
      v16 = self->_lumaIsValid == lumaIsValid;
    }

    else
    {
      v16 = 0;
    }

    if (!v16)
    {
      v17 = [MEMORY[0x277D75348] colorWithWhite:? alpha:?];
      [(MTLumaDodgePillView *)self _updateBaseContentColor:?];
    }
  }
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if (__supportedAnimationPropertyKey(keyCopy))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLumaDodgePillView;
    v5 = [(MTLumaDodgePillView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (BOOL)_shouldAnimatePropertyAdditivelyWithKey:(id)key
{
  keyCopy = key;
  if (__supportedAnimationPropertyKey(keyCopy))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MTLumaDodgePillView;
    v5 = [(MTLumaDodgePillView *)&v7 _shouldAnimatePropertyAdditivelyWithKey:keyCopy];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(MTLumaDodgePillSettings *)self->_settings maxWidth];
  v6 = v5;
  [(MTLumaDodgePillSettings *)self->_settings minWidth];
  if (v7 < width)
  {
    v7 = width;
  }

  if (v6 <= v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  [(MTLumaDodgePillSettings *)self->_settings height];
  v10 = v9;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  [(MTLumaDodgePillView *)self frame];
  v5 = NSStringFromCGRect(v11);
  v6 = NSStringFromMTLumaDodgePillStyle((*(self + 460) << 60) >> 60);
  v7 = NSStringFromMTLumaDodgePillBackgroundLuminance((2 * *(self + 460)) >> 5);
  v8 = [v3 stringWithFormat:v4, self, v5, v6, v7];

  return v8;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  BSDispatchQueueAssertMain();
  bounceAnimationsInFlight = self->_bounceAnimationsInFlight;
  if (bounceAnimationsInFlight < 2)
  {
    self->_bounceAnimationsInFlight = 0;
    layer = [(MTLumaDodgePillView *)self layer];
    v7 = self->_bounceAnimationKeys;
    v8 = [NSMutableArray countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v8)
    {
      v9 = v8;
      v10 = MEMORY[0];
      do
      {
        for (i = 0; i != v9; i = (i + 1))
        {
          if (MEMORY[0] != v10)
          {
            objc_enumerationMutation(v7);
          }

          [layer removeAnimationForKey:?];
        }

        v9 = [NSMutableArray countByEnumeratingWithState:v7 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v9);
    }

    bounceAnimationKeys = self->_bounceAnimationKeys;
    self->_bounceAnimationKeys = 0;
  }

  else
  {
    self->_bounceAnimationsInFlight = bounceAnimationsInFlight - 1;
  }
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  if (self->_domainSettings == settings)
  {
    BSDispatchMain();
  }
}

- (void)setStyle:(int64_t)style
{
  v16 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (style != (*(self + 460) << 60) >> 60)
  {
    v5 = MTLogLuma;
    if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
    {
      v6 = (*(self + 460) << 60) >> 60;
      v7 = v5;
      v8 = NSStringFromMTLumaDodgePillStyle(v6);
      v9 = NSStringFromMTLumaDodgePillStyle(style);
      v10 = 134218498;
      selfCopy = self;
      v12 = 2114;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_21E600000, v7, OS_LOG_TYPE_INFO, "pill=%p changing style from %{public}@ to %{public}@", &v10, 0x20u);
    }

    *(self + 460) = *(self + 460) & 0xF0 | style & 0xF;
    [(MTLumaDodgePillView *)self _updateStyle];
  }
}

- (void)setBackgroundLumninanceObserver:(id)observer
{
  obj = observer;
  BSDispatchQueueAssertMain();
  WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_backgroundLumninanceObserver, obj);
  }

  [(MTLumaDodgePillView *)self _updateLumaTracking];
}

- (void)setBackgroundLuminanceBias:(int64_t)bias
{
  biasCopy = bias;
  BSDispatchQueueAssertMain();
  *(self + 230) = *(self + 230) & 0xFC7F | ((biasCopy & 7) << 7);
}

- (void)resetBackgroundLuminanceHysteresis
{
  v7 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  v3 = MTLogLuma;
  if (os_log_type_enabled(MTLogLuma, OS_LOG_TYPE_INFO))
  {
    v5 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_21E600000, v3, OS_LOG_TYPE_INFO, "pill=%p resetting luma hysteresis by request", &v5, 0xCu);
  }

  *(self + 460) &= 0x8Fu;
  if (self->_lumaIsValid)
  {
    layer = [(MTLumaDodgePillView *)self layer];
    [MTLumaDodgePillView backdropLayer:"backdropLayer:didChangeLuma:" didChangeLuma:?];
  }
}

- (void)bounce
{
  BSDispatchQueueAssertMain();
  v3 = ++bounce___unique;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:bounce___unique];
  v13 = [v4 copy];

  v5 = [MEMORY[0x277CD9FA0] animationWithKeyPath:?];
  [v5 setAdditive:?];
  [v5 setMass:?];
  [v5 setStiffness:?];
  [v5 setDamping:?];
  [v5 setFromValue:?];
  [v5 setToValue:?];
  [v5 setFillMode:?];
  [v5 setRemovedOnCompletion:?];
  [v5 setDelegate:?];
  [v5 settlingDuration];
  [v5 setDuration:?];
  [v5 setBeginTimeMode:?];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v3];
  v7 = [v6 copy];

  v8 = [MEMORY[0x277CD9FA0] animationWithKeyPath:?];
  [v8 setAdditive:?];
  [v8 setMass:?];
  [v8 setStiffness:?];
  [v8 setDamping:?];
  [v8 setFromValue:?];
  [v8 setToValue:?];
  [v8 setFillMode:?];
  [v8 setRemovedOnCompletion:?];
  [v8 setDelegate:?];
  [v8 settlingDuration];
  [v8 setDuration:?];
  [v8 setBeginTime:?];
  [v8 setBeginTimeMode:?];
  self->_bounceAnimationsInFlight += 2;
  bounceAnimationKeys = self->_bounceAnimationKeys;
  if (!bounceAnimationKeys)
  {
    v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    v11 = self->_bounceAnimationKeys;
    self->_bounceAnimationKeys = v10;

    bounceAnimationKeys = self->_bounceAnimationKeys;
  }

  [(NSMutableArray *)bounceAnimationKeys addObject:?];
  [(NSMutableArray *)self->_bounceAnimationKeys addObject:?];
  layer = [(MTLumaDodgePillView *)self layer];
  [layer addAnimation:? forKey:?];
  [layer addAnimation:? forKey:?];
}

+ (CGSize)suggestedSizeForContentWidth:(double)width withSettings:(id)settings
{
  settingsCopy = settings;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
  v8 = v7;
  v10 = v9;

  if (v8 <= v10)
  {
    v11 = v8;
  }

  else
  {
    v11 = v10;
  }

  if (BSFloatLessThanOrEqualToFloat())
  {
    [settingsCopy minWidth];
  }

  else
  {
    if (v8 < v10)
    {
      v8 = v10;
    }

    if (!BSFloatGreaterThanOrEqualToFloat())
    {
      [settingsCopy minWidth];
      v15 = v14;
      [settingsCopy maxWidth];
      v13 = v15 + (width - v11) * ((v16 - v15) / (v8 - v11));
      goto LABEL_12;
    }

    [settingsCopy maxWidth];
  }

  v13 = v12;
LABEL_12:
  [settingsCopy height];
  v18 = v17;

  v19 = v13;
  v20 = v18;
  result.height = v20;
  result.width = v19;
  return result;
}

- (CGSize)suggestedSizeForContentWidth:(double)width
{
  v3 = objc_opt_class();

  [v3 suggestedSizeForContentWidth:? withSettings:?];
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)setCustomPillShapePath:(id)path animated:(BOOL)animated
{
  animatedCopy = animated;
  pathCopy = path;
  objc_storeStrong(&self->_customPillShapePath, path);
  [(MTLumaDodgePillView *)self _dodgeMode];
  [MTLumaDodgePillView _configureLowQualityEffectViewForMode:"_configureLowQualityEffectViewForMode:path:" path:?];
  lowQualityEffectView = self->_lowQualityEffectView;
  v8 = objc_opt_class();
  v9 = lowQualityEffectView;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  shapeLayer = [(_MTLumaDodgePillLowQualityEffectView *)v11 shapeLayer];
  if (shapeLayer && !CGPathEqualToPath([pathCopy CGPath], objc_msgSend(shapeLayer, "path")))
  {
    if (animatedCopy)
    {
      v13 = [MEMORY[0x277CD9E10] animationWithKeyPath:?];
      presentationLayer = [shapeLayer presentationLayer];
      [presentationLayer path];
      [v13 setFromValue:?];

      [pathCopy CGPath];
      [v13 setToValue:?];
      [shapeLayer removeAnimationForKey:?];
      [shapeLayer addAnimation:? forKey:?];
    }

    [pathCopy CGPath];
    [shapeLayer setPath:?];
  }
}

- (MTLumaDodgePillBackgroundLuminanceObserver)backgroundLumninanceObserver
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundLumninanceObserver);

  return WeakRetained;
}

- (void)initWithFrame:(uint64_t)a1 settings:(uint64_t)a2 graphicsQuality:.cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  [v2 handleFailureInMethod:@"settings != nil" object:? file:? lineNumber:? description:?];
}

- (void)initWithFrame:(uint64_t)a1 settings:(NSObject *)a2 graphicsQuality:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "pill=%p initialized", &v2, 0xCu);
}

- (void)backdropLayer:(double)a3 didChangeLuma:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218240;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&dword_21E600000, a2, OS_LOG_TYPE_DEBUG, "pill=%p luma change (%.2f)", &v3, 0x16u);
}

@end