@interface NTKMagmaEffectsView
- (NTKMagmaEffectsView)initWithFrame:(CGRect)frame device:(id)device;
- (id)_buttonColor;
- (void)_addEffect:(id)effect;
- (void)_loadBackgroundIfNeeded;
- (void)_loadSwoosh;
- (void)_setupQuadView;
- (void)_tapAtPoint:(CGPoint)point;
- (void)_triggerDanceAnimation;
- (void)_triggerTimeChangeAnimation;
- (void)_updatePaused;
- (void)applyDeviceMotion:(id)motion;
- (void)buttonHighlightedChanged:(BOOL)changed;
- (void)dealloc;
- (void)layoutSubviews;
- (void)magmaRendererPrepareForFrameWithTime:(double)time;
- (void)setColorPalette:(id)palette;
- (void)setEditing:(BOOL)editing;
- (void)timeFormatterTextDidChange:(id)change;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation NTKMagmaEffectsView

- (NTKMagmaEffectsView)initWithFrame:(CGRect)frame device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKMagmaEffectsView;
  height = [(NTKMagmaEffectsView *)&v22 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_device, device);
    v12->_distortionMultiplier = 1.0;
    v12->_lastTapTime = 0.0;
    [(NTKMagmaEffectsView *)v12 _setupQuadView];
    v13 = objc_alloc_init(NTKMagmaMotionEffect);
    motionEffect = v12->_motionEffect;
    v12->_motionEffect = v13;

    v15 = objc_alloc_init(NTKMagmaCrownEffect);
    crownEffect = v12->_crownEffect;
    v12->_crownEffect = v15;

    v17 = objc_opt_new();
    effects = v12->_effects;
    v12->_effects = v17;

    [(NTKMagmaEffectsView *)v12 _addEffect:v12->_motionEffect];
    [(NTKMagmaEffectsView *)v12 _addEffect:v12->_crownEffect];
    v19 = [[CLKTimeFormatter alloc] initWithForcesLatinNumbers:1];
    timeFormatter = v12->_timeFormatter;
    v12->_timeFormatter = v19;

    [(CLKTimeFormatter *)v12->_timeFormatter setIncludeSeparatorInTimeSubstringFromSeparatorText:0];
    [(CLKTimeFormatter *)v12->_timeFormatter setZeroPadTimeSubstringToSeparatorText:1];
    [(CLKTimeFormatter *)v12->_timeFormatter addObserver:v12];
  }

  return v12;
}

- (void)dealloc
{
  [(CLKTimeFormatter *)self->_timeFormatter removeObserver:self];
  v3.receiver = self;
  v3.super_class = NTKMagmaEffectsView;
  [(NTKMagmaEffectsView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKMagmaEffectsView;
  [(NTKMagmaEffectsView *)&v2 layoutSubviews];
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(NTKMagmaQuad *)self->_quad setRunPhysics:!editing];
  }
}

- (void)_updatePaused
{
  paused = self->_paused;
  [(CLKUIQuadView *)self->_quadView setPaused:paused];

  [(NTKMagmaEffectsView *)self setUserInteractionEnabled:paused ^ 1];
}

- (void)_setupQuadView
{
  [(NTKMagmaEffectsView *)self bounds];
  v3 = [CLKUIQuadView quadViewWithFrame:@"Mgma" identifier:?];
  quadView = self->_quadView;
  self->_quadView = v3;

  v5 = [NTKMagmaQuad alloc];
  [(CLKDevice *)self->_device screenScale];
  v6 = [(NTKMagmaQuad *)v5 initWithScale:?];
  quad = self->_quad;
  self->_quad = v6;

  [(CLKUIQuadView *)self->_quadView addQuad:self->_quad];
  [(NTKMagmaQuad *)self->_quad setRunPhysics:0];
  [(NTKMagmaQuad *)self->_quad setDelegate:self];
  [(NTKMagmaEffectsView *)self _loadSwoosh];
  v8 = self->_quadView;

  [(NTKMagmaEffectsView *)self addSubview:v8];
}

- (void)magmaRendererPrepareForFrameWithTime:(double)time
{
  if (self->_buttonHighlightAnimating)
  {
    v5 = (time - self->_buttonHighlightLastChange) / 0.15;
    if (v5 > 1.0)
    {
      v5 = 1.0;
    }

    self->_buttonHighlightFraction = 1.0 - v5;
    if (fabs(v5 + -1.0) < 0.00000011920929)
    {
      self->_buttonHighlightFraction = 0.0;
      self->_buttonHighlightAnimating = 0;
    }

    quad = self->_quad;
    _buttonColor = [(NTKMagmaEffectsView *)self _buttonColor];
    [(NTKMagmaQuad *)quad setLogoColor:_buttonColor];
  }

  obj = self->_effects;
  objc_sync_enter(obj);
  v8 = [(NSMutableArray *)self->_effects copy];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        [v13 applyForTime:self->_quad quad:time];
        if ([v13 isComplete])
        {
          [(NSMutableArray *)self->_effects removeObject:v13];
          v14 = _NTKLoggingObjectForDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [objc_opt_class() description];
            *buf = 138412290;
            v22 = v15;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "Magma effect %@ completed", buf, 0xCu);
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v10);
  }

  objc_sync_exit(obj);
}

- (void)timeFormatterTextDidChange:(id)change
{
  changeCopy = change;
  v5 = changeCopy;
  if (self->_shouldSkipTimeFormatterTextChange)
  {
    self->_shouldSkipTimeFormatterTextChange = 0;
  }

  else
  {
    timeSubstringToSeparatorText = [changeCopy timeSubstringToSeparatorText];
    timeSubstringFromSeparatorText = [v5 timeSubstringFromSeparatorText];
    if (![timeSubstringToSeparatorText isEqual:self->_displayedUpperLabelText] || (objc_msgSend(timeSubstringFromSeparatorText, "isEqual:", self->_displayedLowerLabelText) & 1) == 0)
    {
      objc_storeStrong(&self->_displayedUpperLabelText, timeSubstringToSeparatorText);
      objc_storeStrong(&self->_displayedLowerLabelText, timeSubstringFromSeparatorText);
      sub_3768(self->_device, &v26);
      v8 = *(&v26 + 1);
      sub_3768(self->_device, &v24);
      v9 = v8 - v25;
      v22 = 0u;
      v23 = 0u;
      sub_3768(self->_device, v21);
      objc_msgSend_renderTimeWithHour_minute_fontSize_lineSpacing_(NTKMagmaTimeRenderer, *v21, v9);
      [(NTKMagmaEffectsView *)self bounds];
      [v22 size];
      [(NTKMagmaEffectsView *)self bounds];
      sub_3768(self->_device, &v20);
      CLKPointRoundForDevice();
      v11 = v10;
      v13 = v12;
      quad = self->_quad;
      [v22 size];
      [(NTKMagmaQuad *)quad setScreenBoundRect:v11, v13, v15, v16];
      [(NTKMagmaQuad *)self->_quad updateTimeTextureWithImage:v22 tritiumImage:v11 origin:v13];
      if (self->_showingOverrideTime)
      {
        v17 = 1;
      }

      else
      {
        overrideDate = [v5 overrideDate];
        v17 = overrideDate != 0;
      }

      if (!self->_inTritium && !self->_paused && !v17)
      {
        [(NTKMagmaEffectsView *)self _triggerTimeChangeAnimation];
      }
    }

    overrideDate2 = [v5 overrideDate];
    self->_showingOverrideTime = overrideDate2 != 0;
  }
}

- (void)_addEffect:(id)effect
{
  effectCopy = effect;
  v5 = self->_effects;
  objc_sync_enter(v5);
  [(NSMutableArray *)self->_effects addObject:effectCopy];
  v6 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Magma effect %@ started", &v8, 0xCu);
  }

  objc_sync_exit(v5);
}

- (void)_triggerTimeChangeAnimation
{
  v3 = [[NTKMagmaTimeChangeEffect alloc] initWithStart:CACurrentMediaTime() duration:0.5 magnitude:11.5 radius:0.3];
  [(NTKMagmaEffectsView *)self _addEffect:v3];
}

- (void)_triggerDanceAnimation
{
  v3 = [[NTKMagmaTritiumOffEffect alloc] initWithStart:CACurrentMediaTime() duration:0.4 magnitude:1.25 radius:0.3 speed:0.5];
  [(NTKMagmaEffectsView *)self _addEffect:v3];
}

- (void)applyDeviceMotion:(id)motion
{
  motionCopy = motion;
  v50 = motionCopy;
  if (motionCopy)
  {
    [motionCopy rotationRate];
    v48 = v6;
    v49 = v5;
    v8 = v7;
    [v50 userAcceleration];
    v46 = v10;
    v47 = v9;
    NTKMagmaGetTuningWithDefault();
    v12 = v11;
    NTKMagmaGetTuningWithDefault();
    v14 = v13;
    NTKMagmaGetTuningWithDefault();
    v16 = v15;
    v17 = v8 * v14;
    if (v8 * v14 < -v12)
    {
      v17 = -v12;
    }

    if (v17 >= v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = v17;
    }

    NTKMagmaGetTuningWithDefault();
    v20 = v19;
    NTKMagmaGetTuningWithDefault();
    v44 = v21;
    NTKMagmaGetTuningWithDefault();
    v23 = v22;
    v24.f64[0] = v48;
    v24.f64[1] = v49;
    v25 = vcvt_f32_f64(vmulq_n_f64(vnegq_f64(v24), v44));
    v26 = sqrtf(vaddv_f32(vmul_f32(v25, v25)));
    if (v26 > 0.0)
    {
      v27 = fmin(v20 / v26, 1.0);
      v25 = vmul_n_f32(v25, v27);
    }

    v28 = -v18;
    NTKMagmaGetTuningWithDefault();
    v30 = v29;
    NTKMagmaGetTuningWithDefault();
    v45 = v31;
    NTKMagmaGetTuningWithDefault();
    v33.f64[0] = v47;
    v34.f64[0] = v47;
    v34.f64[1] = -v46;
    v35 = vcvt_f32_f64(vmulq_n_f64(v34, *&v45));
    v36 = sqrtf(vaddv_f32(vmul_f32(v35, v35)));
    if (v36 > 0.0)
    {
      v37 = fmin(v30 / v36, 1.0);
      v35 = vmul_n_f32(v35, v37);
    }

    v38.f64[0] = v49;
    v38.f64[1] = v48;
    *&v38.f64[0] = vcvt_f32_f64(v38);
    v33.f64[1] = v46;
    v39 = vcvt_f32_f64(v33);
    v40 = v16 * v28 + sqrtf(vaddv_f32(vmul_f32(*&v38.f64[0], *&v38.f64[0]))) * v23 + sqrtf(vaddv_f32(vmul_f32(v39, v39))) * v32;
    [(NTKMagmaMotionEffect *)self->_motionEffect setLinear:COERCE_DOUBLE(vadd_f32(v25, v35)), v45];
    *&v41 = v28;
    [(NTKMagmaMotionEffect *)self->_motionEffect setSpin:v41];
    motionEffect = self->_motionEffect;
    *&v43 = v40;
  }

  else
  {
    [(NTKMagmaMotionEffect *)self->_motionEffect setLinear:0.0];
    [(NTKMagmaMotionEffect *)self->_motionEffect setSpin:0.0];
    motionEffect = self->_motionEffect;
    v43 = 0.0;
  }

  [(NTKMagmaMotionEffect *)motionEffect setNoise:v43];
}

- (void)_loadSwoosh
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  sub_3768(self->_device, &v19);
  v18 = [NTKMagmaFaceBundle imageWithName:@"victory-logo"];
  v3 = *(&v21 + 1);
  v4 = *&v21;
  [(CLKDevice *)self->_device screenScale];
  v6 = v4 * v5;
  v7 = (v4 * v5);
  [(CLKDevice *)self->_device screenScale];
  v9 = v3 * v8;
  v10 = (v3 * v8);
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v12 = CGBitmapContextCreate(0, v7, v10, 8uLL, v7, DeviceGray, 7u);
  v13 = v18;
  cGImage = [v18 CGImage];
  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v6;
  v23.size.height = v9;
  CGContextDrawImage(v12, v23, cGImage);
  Image = CGBitmapContextCreateImage(v12);
  [(CLKDevice *)self->_device screenScale];
  v16 = [UIImage imageWithCGImage:Image scale:0 orientation:?];
  CGImageRelease(Image);
  CGColorSpaceRelease(DeviceGray);
  CGContextRelease(v12);
  [(NTKMagmaEffectsView *)self bounds];
  v17 = CGRectGetMidX(v24) - v4 * 0.5;
  [(NTKMagmaEffectsView *)self bounds];
  [(NTKMagmaQuad *)self->_quad updateLogoTextureWithImage:v16 origin:v17, CGRectGetHeight(v25) * 0.5 + *(&v20 + 1) - v3];
}

- (void)_loadBackgroundIfNeeded
{
  if (![(NTKMagmaColorPalette *)self->_palette isSpecialColor])
  {
    return;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  palette = self->_palette;
  if ((isKindOfClass & 1) == 0)
  {
    if (([(NTKMagmaColorPalette *)palette isRainbowColor]& 1) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  v34 = palette;
  fromPalette = [(NTKMagmaColorPalette *)v34 fromPalette];
  toPalette = [(NTKMagmaColorPalette *)v34 toPalette];
  if (([toPalette isTritium] & 1) == 0)
  {
    backgroundStyle = [fromPalette backgroundStyle];
    if (backgroundStyle == [toPalette backgroundStyle])
    {
      [(NTKMagmaColorPalette *)v34 transitionFraction];
      if (v8 < 0.5)
      {
        isRainbowColor = [fromPalette isRainbowColor];

        if (!isRainbowColor)
        {
          goto LABEL_15;
        }

LABEL_9:
        if (self->_rainbowIsLoaded)
        {
          return;
        }

        v10 = 1;
        goto LABEL_16;
      }

      isRainbowColor2 = [toPalette isRainbowColor];

      if (isRainbowColor2)
      {
        goto LABEL_9;
      }

LABEL_15:
      v10 = 0;
LABEL_16:
      [(CLKDevice *)self->_device screenBounds];
      v13 = v12;
      v15 = v14;
      [(CLKDevice *)self->_device screenScale];
      v17 = v16;
      v18 = (v13 * v16);
      v19 = (v15 * v16);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      v21 = CGBitmapContextCreate(0, v18, v19, 8uLL, 4 * v18, DeviceRGB, 0x4001u);
      if (v10)
      {
        v22 = NTKImageNamed();
        cGImage = [v22 CGImage];
        v39.origin.x = 0.0;
        v39.origin.y = 0.0;
        v39.size.width = v18;
        v39.size.height = v19;
        CGContextDrawImage(v21, v39, cGImage);
        self->_rainbowIsLoaded = 1;
      }

      else
      {
        v24 = +[CAGradientLayer layer];
        v36[0] = @"frame";
        v25 = +[NSNull null];
        v37[0] = v25;
        v36[1] = @"contentsScale";
        v26 = +[NSNull null];
        v37[1] = v26;
        v36[2] = @"colors";
        v27 = +[NSNull null];
        v37[2] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v37 forKeys:v36 count:3];
        [v24 setActions:v28];

        [(NTKMagmaEffectsView *)self bounds];
        [v24 setFrame:?];
        [v24 setContentsScale:v17];
        maskedBackgroundStart = [(NTKMagmaColorPalette *)self->_palette maskedBackgroundStart];
        v35[0] = [maskedBackgroundStart CGColor];
        maskedBackgroundEnd = [(NTKMagmaColorPalette *)self->_palette maskedBackgroundEnd];
        v35[1] = [maskedBackgroundEnd CGColor];
        v31 = [NSArray arrayWithObjects:v35 count:2];
        [v24 setColors:v31];

        CGContextTranslateCTM(v21, 0.0, v19);
        CGContextScaleCTM(v21, v17, -v17);
        [v24 renderInContext:v21];
        self->_rainbowIsLoaded = 0;
      }

      Image = CGBitmapContextCreateImage(v21);
      v33 = [UIImage imageWithCGImage:Image scale:0 orientation:v17];
      CGImageRelease(Image);
      CGColorSpaceRelease(DeviceRGB);
      CGContextRelease(v21);
      [(NTKMagmaQuad *)self->_quad updateBackgroundTextureWithImage:v33];

      return;
    }
  }
}

- (id)_buttonColor
{
  swoosh = [(NTKMagmaColorPalette *)self->_palette swoosh];
  v4 = [swoosh colorWithAlphaComponent:0.6];

  swoosh2 = [(NTKMagmaColorPalette *)self->_palette swoosh];
  v6 = NTKInterpolateBetweenColors();

  return v6;
}

- (void)setColorPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  [(NTKMagmaEffectsView *)self _loadBackgroundIfNeeded];
  backgroundTextureAlpha = [paletteCopy backgroundTextureAlpha];
  [backgroundTextureAlpha doubleValue];
  v7 = v6;

  backgroundMask = [paletteCopy backgroundMask];
  [backgroundMask doubleValue];
  v10 = v9;

  quad = self->_quad;
  digitsOutline = [paletteCopy digitsOutline];
  [(NTKMagmaQuad *)quad setTimeOutlineColor:digitsOutline];

  v13 = self->_quad;
  digits = [paletteCopy digits];
  [(NTKMagmaQuad *)v13 setTimeFillColor:digits];

  *&v15 = v7;
  [(NTKMagmaQuad *)self->_quad setBackgroundTextureAlpha:v15];
  v16 = self->_quad;
  backgroundStart = [paletteCopy backgroundStart];
  [(NTKMagmaQuad *)v16 setBackgroundTopColor:backgroundStart];

  v18 = self->_quad;
  backgroundEnd = [paletteCopy backgroundEnd];
  [(NTKMagmaQuad *)v18 setBackgroundBottomColor:backgroundEnd];

  v20 = self->_quad;
  _buttonColor = [(NTKMagmaEffectsView *)self _buttonColor];
  [(NTKMagmaQuad *)v20 setLogoColor:_buttonColor];

  *&v22 = v10;
  [(NTKMagmaQuad *)self->_quad setMaskingFraction:v22];
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  beganCopy = began;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [beganCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(beganCopy);
        }

        [*(*(&v10 + 1) + 8 * v9) locationInView:self];
        [(NTKMagmaEffectsView *)self _tapAtPoint:?];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [beganCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_tapAtPoint:(CGPoint)point
{
  x = point.x;
  y = point.y;
  v4 = CACurrentMediaTime();
  if (v4 - self->_lastTapTime >= 0.1)
  {
    self->_lastTapTime = v4;
    NTKMagmaGetTuningWithDefault();
    v6 = v5;
    NTKMagmaGetTuningWithDefault();
    v11 = v7;
    v10.f64[0] = x;
    v10.f64[1] = y;
    v8 = COERCE_DOUBLE(vcvt_f32_f64(v10));
    quad = self->_quad;
    *v10.f64 = v6;
    *&v11 = v11;
    if (v6 <= 0.0)
    {

      [(NTKMagmaQuad *)quad applyQuadraticRepuslorWithOrigin:v8 magnitude:v10.f64[0] radius:v11];
    }

    else
    {

      [(NTKMagmaQuad *)quad applyUniformRepuslorWithOrigin:v8 magnitude:v10.f64[0] radius:v11];
    }
  }
}

- (void)buttonHighlightedChanged:(BOOL)changed
{
  self->_buttonHighlighted = changed;
  if (changed)
  {
    v4 = 0;
    v5 = 1.0;
    v6 = &OBJC_IVAR___NTKMagmaEffectsView__buttonHighlightFraction;
  }

  else
  {
    v4 = 1;
    v6 = &OBJC_IVAR___NTKMagmaEffectsView__buttonHighlightLastChange;
    v5 = CACurrentMediaTime();
  }

  *(&self->super.super.super.isa + *v6) = v5;
  self->_buttonHighlightAnimating = v4;
  quad = self->_quad;
  _buttonColor = [(NTKMagmaEffectsView *)self _buttonColor];
  [(NTKMagmaQuad *)quad setLogoColor:_buttonColor];
}

@end