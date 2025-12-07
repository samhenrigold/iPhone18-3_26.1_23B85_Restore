@interface SBUILegibilityView
- (BOOL)_hideImageView;
- (BOOL)_hideShadowImageViewForStrength:(double *)strength;
- (BOOL)_updateContentImageView:(id)view;
- (BOOL)_updateOptions:(int64_t)options;
- (BOOL)_updateSettings:(id)settings;
- (BOOL)_updateShadow;
- (BOOL)_updateStrength:(double)strength;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSMutableDictionary)userInfo;
- (SBUILegibilityEngine)legibilityEngine;
- (SBUILegibilityView)initWithFrame:(CGRect)frame;
- (SBUILegibilityView)initWithSettings:(id)settings strength:(double)strength image:(id)image;
- (UIEdgeInsets)hitTestEdgeInsets;
- (id)drawingColor;
- (void)_cancelOperations;
- (void)_clearShadowAndMarkNeedsNew:(BOOL)new;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutImageView;
- (void)layoutSubviews;
- (void)setAlpha:(double)alpha;
- (void)setHidden:(BOOL)hidden;
- (void)setLegibilityEngine:(id)engine;
- (void)updateForChangedSettings:(id)settings options:(int64_t)options image:(id)image strength:(double)strength;
- (void)updateOrigImage:(id)image shadowImage:(id)shadowImage strengthenedShadowImage:(id)strengthenedShadowImage settings:(id)settings engine:(id)engine isTemplate:(BOOL)template withStrength:(double *)strength context:(id)self0;
- (void)willMoveToSuperview:(id)superview;
- (void)willMoveToWindow:(id)window;
@end

@implementation SBUILegibilityView

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v3 didMoveToWindow];
  [(SBUILegibilityView *)self _redrawShadowForNewContainer];
}

- (BOOL)_updateShadow
{
  v33 = *MEMORY[0x1E69E9840];
  superview = [(SBUILegibilityView *)self superview];
  if (!superview)
  {
    return 0;
  }

  v4 = superview;
  window = [(SBUILegibilityView *)self window];

  if (!window || !self->_needsUpdateShadow)
  {
    return 0;
  }

  v6 = self->_image;
  v7 = v6;
  if (v6 && self->_legibilitySettings)
  {
    if (self->_strength <= 0.0)
    {
      [(SBUILegibilityContainerView *)self->_shadowImageView setImage:0];
    }

    else
    {
      v8 = SBLogLegibility(v6);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

      Current = 0.0;
      if (v9)
      {
        Current = CFAbsoluteTimeGetCurrent();
      }

      v28 = 0;
      legibilityEngine = [(SBUILegibilityView *)self legibilityEngine];
      [legibilityEngine executeLegibilityUpdateForContainer:self forImage:v7 settings:self->_legibilitySettings strength:&self->_strength engineResult:&v28];
      _screen = [(SBUILegibilityView *)self _screen];
      if (_screen)
      {
        [(SBUILegibilityView *)self _screen];
      }

      else
      {
        [MEMORY[0x1E69DCEB0] mainScreen];
      }
      v15 = ;
      [v15 scale];
      self->_appliedScale = v16;

      if (v28 == 1 && self->_backfillTemplateResults)
      {
        v18 = [legibilityEngine executeAsyncLegibilityUpdateForContainer:self image:v7 settings:self->_legibilitySettings strength:&self->_strength completion:0];
        runningAsyncOperations = self->_runningAsyncOperations;
        if (!runningAsyncOperations)
        {
          v20 = objc_opt_new();
          v21 = self->_runningAsyncOperations;
          self->_runningAsyncOperations = v20;

          runningAsyncOperations = self->_runningAsyncOperations;
        }

        [(NSMutableArray *)runningAsyncOperations addObject:v18];
      }

      v22 = SBLogLegibility(v17);
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG);

      if (v23)
      {
        v24 = CFAbsoluteTimeGetCurrent();
        v26 = SBLogLegibility(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          userInfo = [(SBUILegibilityView *)self userInfo];
          *buf = 138412546;
          v30 = userInfo;
          v31 = 2048;
          v32 = v24 - Current;
          _os_log_debug_impl(&dword_1A9A79000, v26, OS_LOG_TYPE_DEBUG, "Legibility generation time (%@): %f", buf, 0x16u);
        }
      }
    }

    self->_needsUpdateShadow = 0;
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (SBUILegibilityView)initWithFrame:(CGRect)frame
{
  v11.receiver = self;
  v11.super_class = SBUILegibilityView;
  v3 = [(SBUILegibilityView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(SBUILegibilityView *)v3 layer];
    [layer setAllowsGroupBlending:0];

    v4->_options = 2;
    v6 = objc_opt_new();
    imageView = v4->_imageView;
    v4->_imageView = v6;

    [(SBUILegibilityContainerView *)v4->_imageView updateOptions:v4->_options];
    v8 = objc_opt_new();
    shadowImageView = v4->_shadowImageView;
    v4->_shadowImageView = v8;

    [(SBUILegibilityContainerView *)v4->_shadowImageView updateOptions:v4->_options];
    [(SBUILegibilityView *)v4 addSubview:v4->_shadowImageView];
    [(SBUILegibilityView *)v4 addSubview:v4->_imageView];
  }

  return v4;
}

- (SBUILegibilityView)initWithSettings:(id)settings strength:(double)strength image:(id)image
{
  settingsCopy = settings;
  imageCopy = image;
  [imageCopy size];
  v12 = [(SBUILegibilityView *)self initWithFrame:0.0, 0.0, v10, v11];
  v13 = v12;
  if (v12)
  {
    [(SBUILegibilityView *)v12 updateForChangedSettings:settingsCopy options:2 image:imageCopy strength:strength];
  }

  return v13;
}

- (void)dealloc
{
  [(SBUILegibilityView *)self _cancelOperations];
  v3.receiver = self;
  v3.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v3 dealloc];
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v4 setHidden:hidden];
  [(SBUILegibilityView *)self setNeedsLayout];
}

- (void)setAlpha:(double)alpha
{
  v4.receiver = self;
  v4.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v4 setAlpha:alpha];
  [(SBUILegibilityView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v27.receiver = self;
  v27.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v27 layoutSubviews];
  traitCollection = [(SBUILegibilityView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  [(SBUILegibilityView *)self bounds];
  image = [(SBUILegibilityView *)self image];
  [(SBUILegibilityView *)self layoutImageView];
  if (([(SBUILegibilityShadowView *)self->_shadowImageView isHidden]& 1) == 0)
  {
    image2 = [(SBUILegibilityContainerView *)self->_shadowImageView image];
    if (image2)
    {
      v8 = image == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
    }

    else
    {
      legibilitySettings = self->_legibilitySettings;

      if (legibilitySettings)
      {
        [(SBUILegibilityShadowView *)self->_shadowImageView frame];
        v25 = v11;
        v26 = v10;
        v13 = v12;
        rect2 = v14;
        legibilityEngine = [(SBUILegibilityView *)self legibilityEngine];
        image3 = [(SBUILegibilityContainerView *)self->_shadowImageView image];
        [legibilityEngine calculateShadowImageViewSizeForOriginalImage:image shadowImage:image3 settings:self->_legibilitySettings];

        v23 = v5;
        UIRectCenteredIntegralRectScale();
        x = v28.origin.x;
        y = v28.origin.y;
        width = v28.size.width;
        height = v28.size.height;
        v29.origin.y = v25;
        v29.origin.x = v26;
        v29.size.width = v13;
        v29.size.height = rect2;
        if (!CGRectEqualToRect(v28, v29))
        {
          [(SBUILegibilityShadowView *)self->_shadowImageView setFrame:x, y, width, height, v23];
        }
      }
    }
  }

  [(SBUILegibilityContainerView *)self->_imageView setHidden:[(SBUILegibilityView *)self _hideImageView]];
  imageView = self->_imageView;
  [(SBUILegibilityView *)self _imageViewAlpha];
  [(SBUILegibilityContainerView *)imageView setAlpha:?];
  [(SBUILegibilityShadowView *)self->_shadowImageView setHidden:[(SBUILegibilityView *)self _hideShadowImageViewForStrength:0]];
  shadowImageView = self->_shadowImageView;
  [(SBUILegibilityView *)self _shadowImageViewAlphaForStrength:0];
  [(SBUILegibilityShadowView *)shadowImageView setAlpha:?];
}

- (void)layoutImageView
{
  traitCollection = [(SBUILegibilityView *)self traitCollection];
  [traitCollection displayScale];

  [(SBUILegibilityView *)self bounds];
  image = [(SBUILegibilityView *)self image];
  [(SBUILegibilityContainerView *)self->_imageView frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (image)
  {
    [image size];
    BSRectWithSize();
    UIRectCenteredIntegralRectScale();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v13 = *MEMORY[0x1E695F058];
    v15 = *(MEMORY[0x1E695F058] + 8);
    v17 = *(MEMORY[0x1E695F058] + 16);
    v19 = *(MEMORY[0x1E695F058] + 24);
  }

  v22.origin.x = v5;
  v22.origin.y = v7;
  v22.size.width = v9;
  v22.size.height = v11;
  v23.origin.x = v13;
  v23.origin.y = v15;
  v23.size.width = v17;
  v23.size.height = v19;
  if (!CGRectEqualToRect(v22, v23))
  {
    [(SBUILegibilityContainerView *)self->_imageView setFrame:v13, v15, v17, v19];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  [(SBUILegibilityView *)self hitTestEdgeInsets];
  v9.f64[1] = v8;
  v11.f64[1] = v10;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v9, *MEMORY[0x1E69DDCE0]), vceqq_f64(v11, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    v29.receiver = self;
    v29.super_class = SBUILegibilityView;
    v26 = [(SBUILegibilityView *)&v29 pointInside:eventCopy withEvent:x, y];
  }

  else
  {
    [(SBUILegibilityView *)self bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(SBUILegibilityView *)self hitTestEdgeInsets];
    v21 = v15 + v20;
    v24 = v17 - (v22 + v23);
    v31.size.height = v19 - (v20 + v25);
    v31.origin.x = v13 + v22;
    v31.origin.y = v21;
    v31.size.width = v24;
    v30.x = x;
    v30.y = y;
    v26 = CGRectContainsPoint(v31, v30);
  }

  v27 = v26;

  return v27;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(SBUILegibilityView *)self image:fits.width];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)willMoveToSuperview:(id)superview
{
  superviewCopy = superview;
  v10.receiver = self;
  v10.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v10 willMoveToSuperview:superviewCopy];
  if (superviewCopy)
  {
    window = [superviewCopy window];
    screen = [window screen];
    [screen scale];
    v8 = v7;
    appliedScale = self->_appliedScale;

    if (v8 != appliedScale)
    {
      [(SBUILegibilityView *)self _clearShadowAndMarkNeedsNew:0];
    }
  }
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v3 didMoveToSuperview];
  [(SBUILegibilityView *)self _redrawShadowForNewContainer];
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  v9.receiver = self;
  v9.super_class = SBUILegibilityView;
  [(SBUILegibilityView *)&v9 willMoveToWindow:windowCopy];
  if (windowCopy)
  {
    screen = [windowCopy screen];
    [screen scale];
    v7 = v6;
    appliedScale = self->_appliedScale;

    if (v7 != appliedScale)
    {
      [(SBUILegibilityView *)self _clearShadowAndMarkNeedsNew:0];
    }
  }
}

- (NSMutableDictionary)userInfo
{
  userInfo = self->_userInfo;
  if (!userInfo)
  {
    v4 = objc_opt_new();
    v5 = self->_userInfo;
    self->_userInfo = v4;

    v6 = self->_userInfo;
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [(NSMutableDictionary *)v6 setObject:uUID forKey:@"UUID"];

    userInfo = self->_userInfo;
  }

  v8 = userInfo;

  return v8;
}

- (void)updateForChangedSettings:(id)settings options:(int64_t)options image:(id)image strength:(double)strength
{
  v34 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  imageCopy = image;
  v12 = BSEqualObjects();
  if (self->_needsUpdateShadow || !v12)
  {
    self->_needsUpdateShadow = 1;
  }

  else
  {
    image = [(SBUILegibilityContainerView *)self->_shadowImageView image];
    if (image)
    {
      image2 = [(SBUILegibilityContainerView *)self->_imageView image];
      if (image2)
      {
        v15 = self->_legibilitySettings != settingsCopy;
      }

      else
      {
        v15 = 1;
      }

      self->_needsUpdateShadow = v15;
    }

    else
    {
      self->_needsUpdateShadow = 1;
    }
  }

  v16 = [(SBUILegibilityView *)self _updateSettings:settingsCopy];
  v17 = [(SBUILegibilityView *)self _updateOptions:options];
  v18 = [(SBUILegibilityView *)self _updateContentImageView:imageCopy];

  if (v16 || v17 || v18 || self->_needsUpdateShadow)
  {
    [(SBUILegibilityView *)self _cancelOperations];
    self->_strength = strength;
    self->_appliedScale = 0.0;
    _updateShadow = [(SBUILegibilityView *)self _updateShadow];
    v21 = [(SBUILegibilityView *)self _updateStrength:strength];
    _updateFilters = [(SBUILegibilityView *)self _updateFilters];
    v23 = _updateFilters;
    v24 = SBLogLegibility(_updateFilters);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      userInfo = [(SBUILegibilityView *)self userInfo];
      v27[0] = 67109890;
      v27[1] = _updateShadow;
      v28 = 1024;
      v29 = v21;
      v30 = 1024;
      v31 = v23;
      v32 = 2112;
      v33 = userInfo;
      _os_log_debug_impl(&dword_1A9A79000, v24, OS_LOG_TYPE_DEBUG, "updateForChangedSettings committed! didUpdateShadow: %{BOOL}u -- didUpdateStrength: %{BOOL}u -- didUpdateFilters: %{BOOL}u -- userInfo: %@", v27, 0x1Eu);
    }

    [(SBUILegibilityView *)self setNeedsLayout];
    [(SBUILegibilityView *)self layoutIfNeeded];
    [(SBUILegibilityView *)self updateImage];
  }

  else
  {
    v25 = SBLogLegibility(v19);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [SBUILegibilityView updateForChangedSettings:self options:v25 image:? strength:?];
    }
  }
}

- (id)drawingColor
{
  usesSecondaryColor = [(SBUILegibilityView *)self usesSecondaryColor];
  legibilitySettings = self->_legibilitySettings;
  if (usesSecondaryColor)
  {
    [(SBUILegibilitySettings *)legibilitySettings secondaryColor];
  }

  else
  {
    [(SBUILegibilitySettings *)legibilitySettings primaryColor];
  }
  v5 = ;

  return v5;
}

- (BOOL)_updateOptions:(int64_t)options
{
  options = self->_options;
  if (options == options)
  {
    return 0;
  }

  optionsCopy = options;
  self->_options = options;
  usesColorFilters = [(SBUILegibilityView *)self usesColorFilters];
  v7 = options ^ optionsCopy;
  if (((options ^ optionsCopy) & 1) == 0 && ((options >> 1) & 1) == usesColorFilters)
  {
    return 0;
  }

  _updateFilters = [(SBUILegibilityView *)self _updateFilters];
  if (v7)
  {
    [(SBUILegibilityView *)self updateImage];
  }

  return _updateFilters;
}

- (BOOL)_updateSettings:(id)settings
{
  settingsCopy = settings;
  v6 = SBUILegibilitySettingsAreEqual(settingsCopy, self->_legibilitySettings);
  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
  }

  legibilitySettings = [(SBUILegibilityContainerView *)self->_imageView legibilitySettings];
  v8 = SBUILegibilitySettingsAreEqual(settingsCopy, legibilitySettings);

  if (v8)
  {
    v9 = v6 ^ 1;
  }

  else
  {
    [(SBUILegibilityContainerView *)self->_imageView setLegibilitySettings:settingsCopy];
    v9 = 1;
  }

  legibilitySettings2 = [(SBUILegibilityContainerView *)self->_shadowImageView legibilitySettings];
  v11 = SBUILegibilitySettingsAreEqual(settingsCopy, legibilitySettings2);

  if ((v11 & 1) == 0)
  {
    [(SBUILegibilityContainerView *)self->_shadowImageView setLegibilitySettings:settingsCopy];
    v9 = 1;
  }

  return v9;
}

- (BOOL)_updateContentImageView:(id)view
{
  viewCopy = view;
  [(SBUILegibilityContainerView *)self->_imageView setHidden:[(SBUILegibilityView *)self _hideImageView]];
  imageView = self->_imageView;
  [(SBUILegibilityView *)self _imageViewAlpha];
  [(SBUILegibilityContainerView *)imageView setAlpha:?];
  if (!viewCopy)
  {
    [(SBUILegibilityContainerView *)self->_imageView setImage:0];
    [(SBUILegibilityContainerView *)self->_shadowImageView setImage:0];
    self->_appliedScale = 0.0;
    image = self->_image;
    self->_image = 0;

LABEL_11:
    v7 = 1;
    goto LABEL_12;
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_image, view);
    [(UIImage *)self->_image size];
    v10 = v9;
    v12 = v11;
    [(SBUILegibilityContainerView *)self->_imageView setImage:self->_image];
    image = [(SBUILegibilityContainerView *)self->_imageView image];
    [image size];
    v15 = v14;
    v17 = v16;

    if (v15 != v10 || v17 != v12)
    {
      [(SBUILegibilityView *)self layoutImageView];
    }

    [(SBUILegibilityView *)self setNeedsLayout];
    goto LABEL_11;
  }

  v7 = 0;
LABEL_12:

  return v7;
}

- (BOOL)_updateStrength:(double)strength
{
  v23 = *MEMORY[0x1E69E9840];
  strength = [(SBUILegibilityContainerView *)self->_shadowImageView strength];
  v7 = v6;
  if (self->_strength == v6)
  {
    return 0;
  }

  self->_strength = strength;
  v9 = SBLogLegibility(strength);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

  Current = 0.0;
  if (v10)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  [(SBUILegibilityContainerView *)self->_shadowImageView setStrength:self->_strength];
  [(SBUILegibilityShadowView *)self->_shadowImageView setHidden:[(SBUILegibilityView *)self _hideShadowImageViewForStrength:0]];
  shadowImageView = self->_shadowImageView;
  [(SBUILegibilityView *)self _shadowImageViewAlphaForStrength:0];
  v13 = SBLogLegibility([(SBUILegibilityShadowView *)shadowImageView setAlpha:?]);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);

  if (v14)
  {
    v15 = CFAbsoluteTimeGetCurrent();
    v17 = SBLogLegibility(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      userInfo = [(SBUILegibilityView *)self userInfo];
      v19 = 138412546;
      v20 = userInfo;
      v21 = 2048;
      v22 = v15 - Current;
      _os_log_debug_impl(&dword_1A9A79000, v17, OS_LOG_TYPE_DEBUG, "(%@) legibility strength application time: %f", &v19, 0x16u);
    }
  }

  return v7 != strength;
}

- (BOOL)_hideShadowImageViewForStrength:(double *)strength
{
  p_strength = &self->_strength;
  if (strength)
  {
    p_strength = strength;
  }

  v5 = *p_strength;
  isHidden = [(SBUILegibilityView *)self isHidden];
  result = 1;
  if ((isHidden & 1) == 0 && v5 > 0.0)
  {
    [(SBUILegibilityView *)self alpha];
    return v8 <= 0.0;
  }

  return result;
}

- (BOOL)_hideImageView
{
  if (([(SBUILegibilityView *)self isHidden]& 1) != 0 || self->_hidesImage)
  {
    return 1;
  }

  [(SBUILegibilityView *)self alpha];
  return v4 <= 0.0;
}

- (void)updateOrigImage:(id)image shadowImage:(id)shadowImage strengthenedShadowImage:(id)strengthenedShadowImage settings:(id)settings engine:(id)engine isTemplate:(BOOL)template withStrength:(double *)strength context:(id)self0
{
  imageCopy = image;
  shadowImageCopy = shadowImage;
  strengthenedShadowImageCopy = strengthenedShadowImage;
  settingsCopy = settings;
  engineCopy = engine;
  contextCopy = context;
  if (contextCopy)
  {
    if ([(NSMutableArray *)self->_runningAsyncOperations containsObject:contextCopy])
    {
      [(NSMutableArray *)self->_runningAsyncOperations removeObject:contextCopy];
      if (![(NSMutableArray *)self->_runningAsyncOperations count])
      {
        runningAsyncOperations = self->_runningAsyncOperations;
        self->_runningAsyncOperations = 0;
      }
    }
  }

  image = self->_image;
  legibilitySettings = self->_legibilitySettings;
  legibilityEngine = [(SBUILegibilityView *)self legibilityEngine];

  if (image == imageCopy && legibilitySettings == settingsCopy && legibilityEngine == engineCopy)
  {
    [(SBUILegibilityContainerView *)self->_shadowImageView setLegibilitySettings:settingsCopy];
    [(SBUILegibilityContainerView *)self->_shadowImageView setLegibilityEngine:engineCopy];
    shadowImageView = self->_shadowImageView;
    if (strengthenedShadowImageCopy && strength)
    {
      [(SBUILegibilityShadowView *)shadowImageView setImage:shadowImageCopy strengthenedImage:strengthenedShadowImageCopy strength:*strength];
    }

    else
    {
      [(SBUILegibilityContainerView *)shadowImageView setImage:shadowImageCopy];
      [(SBUILegibilityContainerView *)self->_shadowImageView setStrength:self->_strength];
    }

    [(SBUILegibilityView *)self setNeedsLayout];
    [(SBUILegibilityView *)self layoutIfNeeded];
  }
}

- (SBUILegibilityEngine)legibilityEngine
{
  legibilityEngine = self->_legibilityEngine;
  if (!legibilityEngine)
  {
    v4 = +[SBUILegibilityDefaultEngine defaultEngine];
    v5 = self->_legibilityEngine;
    self->_legibilityEngine = v4;

    [(SBUILegibilityView *)self _cancelOperations];
    legibilityEngine = self->_legibilityEngine;
  }

  return legibilityEngine;
}

- (void)setLegibilityEngine:(id)engine
{
  engineCopy = engine;
  v5 = self->_legibilityEngine;
  if (([(SBUILegibilityEngine *)v5 isEqual:engineCopy]& 1) == 0)
  {
    if (v5)
    {
      [(SBUILegibilityView *)self _cancelOperations];
      objc_storeStrong(&self->_legibilityEngine, engine);
      [(SBUILegibilityView *)self _clearShadowAndMarkNeedsNew:0];
      [(SBUILegibilityView *)self _updateShadow];
    }

    else
    {
      objc_storeStrong(&self->_legibilityEngine, engine);
    }
  }
}

- (void)_clearShadowAndMarkNeedsNew:(BOOL)new
{
  newCopy = new;
  image = [(SBUILegibilityContainerView *)self->_shadowImageView image];

  if (image)
  {
    [(SBUILegibilityContainerView *)self->_shadowImageView setImage:0];
  }

  else if (!newCopy)
  {
    return;
  }

  self->_needsUpdateShadow = 1;
}

- (void)_cancelOperations
{
  if ([(NSMutableArray *)self->_runningAsyncOperations count])
  {
    [(NSMutableArray *)self->_runningAsyncOperations makeObjectsPerformSelector:sel_cancel];
    [(NSMutableArray *)self->_runningAsyncOperations removeAllObjects];
    runningAsyncOperations = self->_runningAsyncOperations;
    self->_runningAsyncOperations = 0;
  }
}

- (UIEdgeInsets)hitTestEdgeInsets
{
  top = self->_hitTestEdgeInsets.top;
  left = self->_hitTestEdgeInsets.left;
  bottom = self->_hitTestEdgeInsets.bottom;
  right = self->_hitTestEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)updateForChangedSettings:(NSObject *)a3 options:image:strength:.cold.1(unsigned __int8 *a1, void *a2, NSObject *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = [a2 userInfo];
  v6[0] = 67110146;
  v6[1] = 0;
  v7 = 1024;
  v8 = 0;
  v9 = 1024;
  v10 = 0;
  v11 = 1024;
  v12 = v4;
  v13 = 2112;
  v14 = v5;
  _os_log_debug_impl(&dword_1A9A79000, a3, OS_LOG_TYPE_DEBUG, "updateForChangedSettings abandoned! settingsWereUpdated: %{BOOL}u -- optionsWereUpdated: %{BOOL}u -- contentWasUpdated: %{BOOL}u -- _needsUpdateShadow: %{BOOL}u -- userInfo: %@", v6, 0x24u);
}

@end