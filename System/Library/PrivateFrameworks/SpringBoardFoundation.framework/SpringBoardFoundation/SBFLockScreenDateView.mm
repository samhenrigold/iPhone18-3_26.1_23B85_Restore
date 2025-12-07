@interface SBFLockScreenDateView
+ ($01BB1521EC52D44A8E7628F5261DCEC8)metricsForFont:(id)font;
+ ($01BB1521EC52D44A8E7628F5261DCEC8)timeFontMetrics;
+ (double)defaultHeight;
+ (id)timeFont;
- ($01BB1521EC52D44A8E7628F5261DCEC8)customTimeMetrics;
- (CGRect)_subtitleViewFrameForView:(id)view alignmentPercent:(double)percent;
- (CGRect)_timeLabelFrameForAlignmentPercent:(double)percent;
- (CGRect)chargingVisualInformationTimeFrame;
- (CGRect)chargingVisualInformationTimeSubtitleFrame;
- (CGRect)presentationExtentForAlignmentPercent:(double)percent;
- (CGRect)restingFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SBFLockScreenDateView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)_cachedGlyphInsetsTimeFontForString:(id)string;
- (UIEdgeInsets)_timeLabelInsetsForTimeString:(id)string;
- (UIView)timeView;
- (double)subtitleBaselineOffsetFromOrigin;
- (double)timeBaselineOffsetFromOrigin;
- (id)_effectiveTextColor;
- (void)_cacheCustomTimeMetrics;
- (void)_layoutSubtitle;
- (void)_setDate:(id)date inTimeZone:(id)zone;
- (void)_setSubtitleAlpha:(double)alpha;
- (void)_updateActiveSubtitleView;
- (void)_updateAdaptiveTime;
- (void)_updateForNewFont;
- (void)_updateLabelAlpha;
- (void)_updateLabels;
- (void)_updatePreferredContentSizeCategoryForEnvironment:(id)environment previousTraitCollection:(id)collection;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setAlignmentPercent:(double)percent;
- (void)setCustomSubtitleView:(id)view;
- (void)setCustomTimeFont:(id)font;
- (void)setCustomTimeNumberingSystem:(id)system;
- (void)setDateToTimeStretch:(double)stretch;
- (void)setInlineComplicationView:(id)view;
- (void)setLegibilitySettings:(id)settings;
- (void)setMaximumAdaptiveTimeTextHeight:(double)height;
- (void)setMaximumSubtitleWidth:(double)width;
- (void)setPosterHasComplications:(BOOL)complications;
- (void)setRestrictsVibrancy:(BOOL)vibrancy;
- (void)setSubtitleHidden:(BOOL)hidden;
- (void)setSubtitleLegibilityStrength:(double)strength;
- (void)setSubtitleOnTop:(BOOL)top;
- (void)setTextColor:(id)color;
- (void)setTimeAlpha:(double)alpha subtitleAlpha:(double)subtitleAlpha;
- (void)setTimeGlassInterfaceStyle:(int64_t)style;
- (void)setTimeLegibilityStrength:(double)strength;
- (void)setTimeSupportsStretch:(BOOL)stretch;
- (void)setUseCompactDateFormat:(BOOL)format;
- (void)setUseLandscapeTimeFontSize:(BOOL)size;
- (void)setVibrancyConfiguration:(id)configuration;
- (void)updateFormat;
@end

@implementation SBFLockScreenDateView

- (void)_updateLabels
{
  v3 = MEMORY[0x1E698E670];
  autoupdatingCurrentLocale = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
  v7 = [v3 formatterForDateAsTimeNoAMPMWithLocale:autoupdatingCurrentLocale];

  [v7 setTimeZone:self->_timeZone];
  v5 = [v7 stringFromDate:self->_date];
  if (self->_date)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F3D19FF0;
  }

  [(SBUILegibilityLabel *)self->_timeLabel setString:v6];
  [(SBFLockScreenDateView *)self _updateUsesCompactDateFormat];
  [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView _setDate:self->_date inTimeZone:self->_timeZone];
  [(SBUILegibilityLabel *)self->_timeLabel sizeToFit];
  [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView sizeToFit];
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setDisplayDate:self->_date];
  [(SBFLockScreenDateView *)self setNeedsLayout];
}

- (void)updateFormat
{
  mEMORY[0x1E698E670] = [MEMORY[0x1E698E670] sharedInstance];
  [mEMORY[0x1E698E670] resetFormattersIfNecessary];
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = SBFLockScreenDateView;
  [(SBFLockScreenDateView *)&v13 layoutSubviews];
  [(SBFLockScreenDateView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  view = [(CSProminentDisplayViewController *)self->_prominentDisplayViewController view];
  [view setFrame:{v4, v6, v8, v10}];

  timeLabel = self->_timeLabel;
  [(SBFLockScreenDateView *)self _timeLabelFrameForAlignmentPercent:self->_alignmentPercent];
  [(SBUILegibilityLabel *)timeLabel setFrame:?];
  [(SBFLockScreenDateView *)self _layoutSubtitle];
}

- (void)_layoutSubtitle
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithObject:self->_dateSubtitleView];
  v4 = v3;
  if (self->_customSubtitleView)
  {
    [v3 addObject:?];
  }

  if (self->_inlineComplicationView)
  {
    [v4 addObject:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [(SBFLockScreenDateView *)self _subtitleViewFrameForView:v10 alignmentPercent:self->_alignmentPercent, v11];
        [v10 setFrame:?];
        if (objc_opt_respondsToSelector())
        {
          [v10 setAlignmentPercent:self->_alignmentPercent];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

+ (double)defaultHeight
{
  v4 = __sb__runningInSpringBoard();
  v5 = v4;
  if (v4)
  {
    if (SBFEffectiveDeviceClass() != 2)
    {
      return 115.0;
    }
  }

  else
  {
    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    if ([currentDevice userInterfaceIdiom] != 1)
    {
      v6 = 115.0;
LABEL_12:

      return v6;
    }
  }

  v7 = __sb__runningInSpringBoard();
  v8 = v7;
  if (v7)
  {
    __sb__mainScreenReferenceBounds();
  }

  else
  {
    mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
    [mainScreen _referenceBounds];
  }

  BSSizeRoundForScale();
  v6 = dbl_1BEAD3B60[v9 >= *(MEMORY[0x1E69D4380] + 280)];
  if ((v8 & 1) == 0)
  {
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_12;
  }

  return v6;
}

- (SBFLockScreenDateView)initWithFrame:(CGRect)frame
{
  v39[2] = *MEMORY[0x1E69E9840];
  v33.receiver = self;
  v33.super_class = SBFLockScreenDateView;
  v3 = [(SBFLockScreenDateView *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_timeAlpha = 1.0;
    v3->_subtitleAlpha = 1.0;
    v5 = [objc_alloc(MEMORY[0x1E69DD5B8]) initWithStyle:1];
    legibilitySettings = v4->_legibilitySettings;
    v4->_legibilitySettings = v5;

    v4->_alignmentPercent = 0.0;
    v4->_maximumSubtitleWidth = INFINITY;
    timeZone = v4->_timeZone;
    v4->_timeZone = 0;

    timeFont = [objc_opt_class() timeFont];
    [(SBFLockScreenDateView *)v4 setCustomTimeFont:timeFont];

    objc_initWeak(&location, v4);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __39__SBFLockScreenDateView_initWithFrame___block_invoke;
    v30 = &unk_1E807F470;
    objc_copyWeak(&v31, &location);
    v11 = [defaultCenter addObserverForName:*MEMORY[0x1E69DD898] object:0 queue:mainQueue usingBlock:&v27];

    v12 = objc_opt_self();
    v39[0] = v12;
    v13 = objc_opt_self();
    v39[1] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:{2, v27, v28, v29, v30}];
    v15 = [(SBFLockScreenDateView *)v4 registerForTraitChanges:v14 withTarget:v4 action:sel__updatePreferredContentSizeCategoryForEnvironment_previousTraitCollection_];
    contentSizeCategoryTraitChangeRegistration = v4->_contentSizeCategoryTraitChangeRegistration;
    v4->_contentSizeCategoryTraitChangeRegistration = v15;

    v35 = 0;
    v36 = &v35;
    v37 = 0x2050000000;
    v17 = getSBUILegibilityLabelClass_softClass;
    v38 = getSBUILegibilityLabelClass_softClass;
    if (!getSBUILegibilityLabelClass_softClass)
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __getSBUILegibilityLabelClass_block_invoke;
      v34[3] = &unk_1E807F028;
      v34[4] = &v35;
      __getSBUILegibilityLabelClass_block_invoke(v34);
      v17 = v36[3];
    }

    v18 = v17;
    _Block_object_dispose(&v35, 8);
    v19 = [v17 alloc];
    v20 = [v19 initWithSettings:v4->_legibilitySettings strength:&stru_1F3D19FF0 string:v4->_customTimeFont font:*MEMORY[0x1E69DE9E8]];
    timeLabel = v4->_timeLabel;
    v4->_timeLabel = v20;

    v22 = v4->_timeLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(SBUILegibilityLabel *)v22 setBackgroundColor:clearColor];

    v24 = [[SBFLockScreenDateSubtitleDateView alloc] initWithDate:0];
    dateSubtitleView = v4->_dateSubtitleView;
    v4->_dateSubtitleView = v24;

    [(SBFLockScreenDateView *)v4 setAccessibilityIdentifier:@"lockscreen-date-view"];
    objc_storeStrong(&v4->_activeSubtitleView, v4->_dateSubtitleView);
    if ((_os_feature_enabled_impl() & 1) == 0)
    {
      [(SBFLockScreenDateView *)v4 addSubview:v4->_timeLabel];
      [(SBFLockScreenDateView *)v4 addSubview:v4->_dateSubtitleView];
    }

    [(SBFLockScreenDateView *)v4 updateFormat];
    objc_destroyWeak(&v31);

    objc_destroyWeak(&location);
  }

  return v4;
}

void __39__SBFLockScreenDateView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cacheCustomTimeMetrics];
}

- (void)dealloc
{
  [(SBFLockScreenDateView *)self unregisterForTraitChanges:self->_contentSizeCategoryTraitChangeRegistration];
  v3.receiver = self;
  v3.super_class = SBFLockScreenDateView;
  [(SBFLockScreenDateView *)&v3 dealloc];
}

- (void)setSubtitleHidden:(BOOL)hidden
{
  v3 = 1.0;
  if (hidden)
  {
    v3 = 0.0;
  }

  [(SBFLockScreenDateView *)self _setSubtitleAlpha:v3];
}

- (void)setUseLandscapeTimeFontSize:(BOOL)size
{
  if (self->_useLandscapeTimeFontSize != size)
  {
    self->_useLandscapeTimeFontSize = size;
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setUsesLandscapeTimeFontVariant:?];
  }
}

- (void)setUseCompactDateFormat:(BOOL)format
{
  if (self->_useCompactDateFormat != format)
  {
    self->_useCompactDateFormat = format;
    [(SBFLockScreenDateView *)self _updateUsesCompactDateFormat];
    [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView sizeToFit];

    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)_setDate:(id)date inTimeZone:(id)zone
{
  dateCopy = date;
  objc_storeStrong(&self->_timeZone, zone);
  zoneCopy = zone;
  date = self->_date;
  self->_date = dateCopy;

  [(SBFLockScreenDateView *)self _updateLabels];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_overrideTextColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_overrideTextColor, color);
    [(SBUILegibilityLabel *)self->_timeLabel setTextColor:self->_overrideTextColor];
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setTextColor:self->_overrideTextColor];
    [(SBFLockScreenDateView *)self _updateLabelAlpha];
    colorCopy = v6;
  }
}

- (void)setRestrictsVibrancy:(BOOL)vibrancy
{
  if (self->_restrictsVibrancy != vibrancy)
  {
    self->_restrictsVibrancy = vibrancy;
    if (vibrancy)
    {
      effectType = 1;
    }

    else
    {
      effectType = [(BSUIVibrancyConfiguration *)self->_vibrancyConfiguration effectType];
    }

    prominentDisplayViewController = self->_prominentDisplayViewController;

    [(CSProminentDisplayViewController *)prominentDisplayViewController setEffectType:effectType];
  }
}

- (void)setVibrancyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (self->_vibrancyConfiguration != configurationCopy)
  {
    v16 = configurationCopy;
    objc_storeStrong(&self->_vibrancyConfiguration, configuration);
    color = [(BSUIVibrancyConfiguration *)v16 color];
    overrideTextColor = self->_overrideTextColor;
    self->_overrideTextColor = color;

    [(SBUILegibilityLabel *)self->_timeLabel setTextColor:self->_overrideTextColor];
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setTextColor:self->_overrideTextColor];
    prominentDisplayViewController = self->_prominentDisplayViewController;
    if (self->_restrictsVibrancy)
    {
      effectType = 1;
    }

    else
    {
      effectType = [(BSUIVibrancyConfiguration *)v16 effectType];
    }

    [(CSProminentDisplayViewController *)prominentDisplayViewController setEffectType:effectType];
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setBackgroundType:[(BSUIVibrancyConfiguration *)v16 backgroundType]];
    v10 = self->_prominentDisplayViewController;
    groupName = [(BSUIVibrancyConfiguration *)v16 groupName];
    [(CSProminentDisplayViewController *)v10 setGroupName:groupName];

    alternativeVibrancyEffectLUT = [(BSUIVibrancyConfiguration *)v16 alternativeVibrancyEffectLUT];
    v13 = self->_prominentDisplayViewController;
    lutIdentifier = [alternativeVibrancyEffectLUT lutIdentifier];
    bundleURL = [alternativeVibrancyEffectLUT bundleURL];
    [(CSProminentDisplayViewController *)v13 setAlternativeVibrancyEffectLUTIdentifier:lutIdentifier alternativeVibrancyEffectLUTBundleURL:bundleURL];

    [(SBFLockScreenDateView *)self _updateLabelAlpha];
    configurationCopy = v16;
  }
}

- (void)setTimeLegibilityStrength:(double)strength
{
  if (self->_timeLegibilityStrength != strength)
  {
    self->_timeLegibilityStrength = strength;
    [(SBUILegibilityLabel *)self->_timeLabel setStrength:?];
  }
}

- (void)setSubtitleLegibilityStrength:(double)strength
{
  if (self->_subtitleLegibilityStrength != strength)
  {
    self->_subtitleLegibilityStrength = strength;
    [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView setStrength:?];
    customSubtitleView = self->_customSubtitleView;
    subtitleLegibilityStrength = self->_subtitleLegibilityStrength;

    [(SBFLockScreenDateSubtitleView *)customSubtitleView setStrength:subtitleLegibilityStrength];
  }
}

- (void)setLegibilitySettings:(id)settings
{
  settingsCopy = settings;
  if (![(_UILegibilitySettings *)self->_legibilitySettings sb_isEqualToLegibilitySettings:?])
  {
    objc_storeStrong(&self->_legibilitySettings, settings);
    [(SBUILegibilityLabel *)self->_timeLabel setLegibilitySettings:self->_legibilitySettings];
    [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView setLegibilitySettings:self->_legibilitySettings];
    [(SBFLockScreenDateSubtitleView *)self->_customSubtitleView setLegibilitySettings:self->_legibilitySettings];
    prominentDisplayViewController = self->_prominentDisplayViewController;
    _effectiveTextColor = [(SBFLockScreenDateView *)self _effectiveTextColor];
    [(CSProminentDisplayViewController *)prominentDisplayViewController setTextColor:_effectiveTextColor];

    [(SBFLockScreenDateView *)self _updateLabels];
  }
}

- (void)setAlignmentPercent:(double)percent
{
  if (self->_alignmentPercent != percent)
  {
    self->_alignmentPercent = percent;
    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setDateToTimeStretch:(double)stretch
{
  if (self->_dateToTimeStretch != stretch)
  {
    self->_dateToTimeStretch = stretch;
    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setMaximumSubtitleWidth:(double)width
{
  if (self->_maximumSubtitleWidth != width)
  {
    [(SBFLockScreenDateView *)self bounds];
    Width = CGRectGetWidth(v7);
    if (Width >= width)
    {
      Width = width;
    }

    self->_maximumSubtitleWidth = Width;

    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setMaximumAdaptiveTimeTextHeight:(double)height
{
  if (self->_maximumAdaptiveTimeTextHeight != height)
  {
    self->_maximumAdaptiveTimeTextHeight = height;
    [(SBFLockScreenDateView *)self _updateAdaptiveTime];
  }
}

- (void)setTimeAlpha:(double)alpha subtitleAlpha:(double)subtitleAlpha
{
  if (BSFloatEqualToFloat())
  {
    p_subtitleAlpha = &self->_subtitleAlpha;
    if (BSFloatEqualToFloat())
    {
      return;
    }

    goto LABEL_5;
  }

  self->_timeAlpha = alpha;
  p_subtitleAlpha = &self->_subtitleAlpha;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
LABEL_5:
    *p_subtitleAlpha = subtitleAlpha;
  }

  [(SBFLockScreenDateView *)self _updateLabelAlpha];
}

- (void)setInlineComplicationView:(id)view
{
  viewCopy = view;
  if (self->_inlineComplicationView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_inlineComplicationView, view);
    [(SBFLockScreenDateView *)self _updateActiveSubtitleView];
    viewCopy = v6;
  }
}

- (void)setCustomSubtitleView:(id)view
{
  viewCopy = view;
  v6 = viewCopy;
  if (self->_customSubtitleView != viewCopy)
  {
    v7 = viewCopy;
    viewCopy = _os_feature_enabled_impl();
    v6 = v7;
    if ((viewCopy & 1) == 0)
    {
      objc_storeStrong(&self->_customSubtitleView, view);
      [v7 setLegibilitySettings:self->_legibilitySettings];
      [v7 setStrength:self->_subtitleLegibilityStrength];
      viewCopy = [(SBFLockScreenDateView *)self _updateActiveSubtitleView];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](viewCopy, v6);
}

- (void)_updateActiveSubtitleView
{
  v3 = self->_activeSubtitleView;
  customSubtitleView = self->_customSubtitleView;
  if (!customSubtitleView)
  {
    customSubtitleView = self->_inlineComplicationView;
    if (!customSubtitleView)
    {
      customSubtitleView = self->_dateSubtitleView;
    }
  }

  v5 = customSubtitleView;
  objc_storeStrong(&self->_activeSubtitleView, v5);
  [(SBFLockScreenDateSubtitleDateView *)v5 sizeToFit];
  if ([MEMORY[0x1E69DD250] _isInAnimationBlock])
  {
    [MEMORY[0x1E69DD250] _currentAnimationDuration];
    v7 = v6;
    v8 = MEMORY[0x1E698E7D0];
    v9 = MEMORY[0x1E698E608];
    v10 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB0]];
    v11 = [v9 settingsWithDuration:v10 timingFunction:v7 * 0.5];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __50__SBFLockScreenDateView__updateActiveSubtitleView__block_invoke;
    v17[3] = &unk_1E807F178;
    v18 = v3;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__SBFLockScreenDateView__updateActiveSubtitleView__block_invoke_2;
    v12[3] = &unk_1E807F4B8;
    v13 = v5;
    selfCopy = self;
    v15 = v18;
    v16 = v7;
    [v8 animateWithSettings:v11 actions:v17 completion:v12];
  }

  else
  {
    if (v3 != self->_dateSubtitleView)
    {
      [(SBFLockScreenDateSubtitleDateView *)v3 removeFromSuperview];
    }

    [(SBFLockScreenDateView *)self addSubview:v5];
    [(SBFLockScreenDateView *)self _updateLabelAlpha];
    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

void __50__SBFLockScreenDateView__updateActiveSubtitleView__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  [*(a1 + 40) addSubview:*(a1 + 32)];
  v2 = *(a1 + 40);
  if (*(a1 + 48) != v2[54])
  {
    [*(a1 + 48) removeFromSuperview];
    v2 = *(a1 + 40);
  }

  [v2 setNeedsLayout];
  v3 = MEMORY[0x1E698E7D0];
  v4 = MEMORY[0x1E698E608];
  v5 = *(a1 + 56) * 0.5;
  v6 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979ED0]];
  v7 = [v4 settingsWithDuration:v6 timingFunction:v5];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__SBFLockScreenDateView__updateActiveSubtitleView__block_invoke_3;
  v8[3] = &unk_1E807F178;
  v8[4] = *(a1 + 40);
  [v3 animateWithSettings:v7 actions:v8 completion:&__block_literal_global_7];
}

- (CGRect)presentationExtentForAlignmentPercent:(double)percent
{
  [(SBFLockScreenDateView *)self _timeLabelFrameForAlignmentPercent:?];
  x = v5;
  y = v7;
  width = v9;
  height = v11;
  superview = [(SBFLockScreenDateSubtitleView *)self->_customSubtitleView superview];
  if (superview)
  {
    subtitleAlpha = self->_subtitleAlpha;

    if (subtitleAlpha > 0.0)
    {
      [(SBFLockScreenDateView *)self _subtitleViewFrameForView:self->_customSubtitleView alignmentPercent:percent];
      v35.origin.x = v15;
      v35.origin.y = v16;
      v35.size.width = v17;
      v35.size.height = v18;
      v31.origin.x = x;
      v31.origin.y = y;
      v31.size.width = width;
      v31.size.height = height;
      v32 = CGRectUnion(v31, v35);
      x = v32.origin.x;
      y = v32.origin.y;
      width = v32.size.width;
      height = v32.size.height;
    }
  }

  superview2 = [(SBFLockScreenDateSubtitleDateView *)self->_dateSubtitleView superview];
  if (superview2)
  {
    v21 = self->_subtitleAlpha;

    if (v21 > 0.0)
    {
      [(SBFLockScreenDateView *)self _subtitleViewFrameForView:self->_dateSubtitleView alignmentPercent:percent];
      v36.origin.x = v22;
      v36.origin.y = v23;
      v36.size.width = v24;
      v36.size.height = v25;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      CGRectUnion(v33, v36);
    }
  }

  SBFMainScreenScale(superview2, v20);

  BSRectRoundForScale();
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

- (void)setCustomTimeFont:(id)font
{
  v4 = [font copy];
  v5 = v4;
  if (!v4)
  {
    v5 = +[SBFLockScreenDateView timeFont];
  }

  objc_storeStrong(&self->_customTimeFont, v5);
  if (!v4)
  {
  }

  [(SBFLockScreenDateView *)self _cacheCustomTimeMetrics];

  [(SBFLockScreenDateView *)self _updateForNewFont];
}

- (void)setTimeSupportsStretch:(BOOL)stretch
{
  if (self->_timeSupportsStretch != stretch)
  {
    self->_timeSupportsStretch = stretch;
    [(SBFLockScreenDateView *)self _updateForNewFont];

    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setPosterHasComplications:(BOOL)complications
{
  if (self->_posterHasComplications != complications)
  {
    self->_posterHasComplications = complications;
    [(SBFLockScreenDateView *)self _updateForNewFont];

    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setSubtitleOnTop:(BOOL)top
{
  if (self->_subtitleOnTop != top)
  {
    self->_subtitleOnTop = top;
    [(SBFLockScreenDateView *)self setNeedsLayout];
  }
}

- (void)setCustomTimeNumberingSystem:(id)system
{
  v4 = [system copy];
  customTimeNumberingSystem = self->_customTimeNumberingSystem;
  self->_customTimeNumberingSystem = v4;

  prominentDisplayViewController = self->_prominentDisplayViewController;
  v7 = self->_customTimeNumberingSystem;

  [(CSProminentDisplayViewController *)prominentDisplayViewController setNumberingSystem:v7];
}

- (void)_cacheCustomTimeMetrics
{
  v3 = _os_feature_enabled_impl();
  p_customTimeMetrics = &self->_customTimeMetrics;
  v5 = objc_opt_class();
  v6 = v5;
  if (v3)
  {
    v15 = +[SBFLockScreenDateView timeFont];
    [v6 metricsForFont:v15];
    p_customTimeMetrics->ascender = v7;
    self->_customTimeMetrics.descender = v8;
    self->_customTimeMetrics.bodyLeading = v9;
    self->_customTimeMetrics.capHeight = v10;
  }

  else
  {
    [v5 metricsForFont:self->_customTimeFont];
    p_customTimeMetrics->ascender = v11;
    self->_customTimeMetrics.descender = v12;
    self->_customTimeMetrics.bodyLeading = v13;
    self->_customTimeMetrics.capHeight = v14;
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(SBFLockScreenDateView *)self _timeLabelFrameForAlignmentPercent:self->_alignmentPercent, fits.height];
  v5 = v4;
  rect = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(SBFLockScreenDateView *)self _subtitleViewFrameForView:self->_dateSubtitleView alignmentPercent:self->_alignmentPercent];
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = v15;
  if (self->_subtitleOnTop)
  {
    v12 = v5;
    v13 = v7;
    v14 = v9;
    v15 = v11;
  }

  rect_16 = CGRectGetMaxY(*&v12);
  v30.origin.x = v5;
  v30.origin.y = v7;
  v30.size.width = v9;
  v30.size.height = v11;
  MinX = CGRectGetMinX(v30);
  v31.origin.x = v16;
  v31.origin.y = v17;
  v31.size.width = v18;
  v31.size.height = v19;
  v21 = CGRectGetMinX(v31);
  if (MinX < v21)
  {
    v21 = MinX;
  }

  rect_8 = v21;
  v32.origin.x = rect;
  v32.origin.y = v7;
  v32.size.width = v9;
  v32.size.height = v11;
  MaxX = CGRectGetMaxX(v32);
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  v23 = CGRectGetMaxX(v33);
  if (MaxX >= v23)
  {
    v23 = MaxX;
  }

  v24 = v23 - rect_8;
  if (v24 < 0.0)
  {
    v24 = -v24;
  }

  v25 = rect_16;
  result.height = v25;
  result.width = v24;
  return result;
}

- (UIView)timeView
{
  prominentDisplayViewController = [(SBFLockScreenDateView *)self prominentDisplayViewController];
  view = [prominentDisplayViewController view];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getCSProminentDisplayViewClass_softClass;
  v15 = getCSProminentDisplayViewClass_softClass;
  if (!getCSProminentDisplayViewClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getCSProminentDisplayViewClass_block_invoke;
    v11[3] = &unk_1E807F028;
    v11[4] = &v12;
    __getCSProminentDisplayViewClass_block_invoke(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  v6 = view;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  timeView = [v8 timeView];

  return timeView;
}

- (CGRect)chargingVisualInformationTimeFrame
{
  [(SBFLockScreenDateView *)self _timeLabelFrameForAlignmentPercent:0.0];
  v6 = self->_restingFrame.origin.x + v5;
  v8 = v7 + self->_restingFrame.origin.y;
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v8;
  result.origin.x = v6;
  return result;
}

- (CGRect)chargingVisualInformationTimeSubtitleFrame
{
  customSubtitleView = self->_customSubtitleView;
  if (!customSubtitleView)
  {
    customSubtitleView = self->_dateSubtitleView;
  }

  [(SBFLockScreenDateView *)self _subtitleViewFrameForView:customSubtitleView alignmentPercent:0.0];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(SBFLockScreenDateView *)self chargingVisualInformationTimeFrame];
  v11 = v10;
  v12 = v5 + self->_restingFrame.origin.x;
  +[SBFDashBoardViewMetrics timeLabelToSubtitleLabelDifferenceY];
  v14 = v11 + v13;
  v15 = v12;
  v16 = v7;
  v17 = v9;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v14;
  result.origin.x = v15;
  return result;
}

- (void)_setSubtitleAlpha:(double)alpha
{
  if (self->_subtitleAlpha != alpha)
  {
    self->_subtitleAlpha = alpha;
    [(SBFLockScreenDateView *)self _updateLabelAlpha];
  }
}

- (void)_updateLabelAlpha
{
  [(SBUILegibilityLabel *)self->_timeLabel setAlpha:self->_timeAlpha];
  [(SBFLockScreenDateSubtitleView *)self->_customSubtitleView setAlpha:self->_subtitleAlpha];
  [(UIView *)self->_inlineComplicationView setAlpha:self->_subtitleAlpha];
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setContentAlpha:1 forElements:self->_timeAlpha];
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setContentAlpha:14 forElements:self->_subtitleAlpha];
  if (self->_customSubtitleView || self->_inlineComplicationView)
  {
    dateSubtitleView = self->_dateSubtitleView;
    subtitleAlpha = 0.0;
  }

  else
  {
    dateSubtitleView = self->_dateSubtitleView;
    subtitleAlpha = self->_subtitleAlpha;
  }

  [(SBFLockScreenDateSubtitleDateView *)dateSubtitleView setAlpha:subtitleAlpha];
}

- (id)_effectiveTextColor
{
  overrideTextColor = self->_overrideTextColor;
  if (overrideTextColor)
  {
    primaryColor = overrideTextColor;
  }

  else
  {
    primaryColor = [(_UILegibilitySettings *)self->_legibilitySettings primaryColor];
  }

  return primaryColor;
}

- (CGRect)_timeLabelFrameForAlignmentPercent:(double)percent
{
  [(SBUILegibilityLabel *)self->_timeLabel frame];
  v6 = v5;
  v8 = v7;
  string = [(SBUILegibilityLabel *)self->_timeLabel string];
  [(SBFLockScreenDateView *)self _timeLabelInsetsForTimeString:string];
  v11 = v10;
  v13 = v12;

  [(SBFLockScreenDateView *)self bounds];
  v16 = (percent + 1.0) * (v15 - v11 - v13 - v6) * 0.5;
  v17 = 0.0;
  if (self->_subtitleOnTop)
  {
    [(SBFLockScreenDateView *)self bounds];
    v17 = CGRectGetHeight(v29) - (self->_customTimeMetrics.capHeight - self->_customTimeMetrics.descender);
  }

  v18 = v11 + v16;
  v14.n128_f64[0] = percent;
  ShouldRoundFramesForAlignmentPercent = _SBFLockScreenDateViewShouldRoundFramesForAlignmentPercent(v14);
  if (ShouldRoundFramesForAlignmentPercent)
  {
    SBFMainScreenScale(ShouldRoundFramesForAlignmentPercent, v20);
    BSRectRoundForScale();
    v18 = v21;
    v17 = v22;
    v6 = v23;
    v8 = v24;
  }

  v25 = v18;
  v26 = v17;
  v27 = v6;
  v28 = v8;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (UIEdgeInsets)_timeLabelInsetsForTimeString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v5 = [stringCopy substringWithRange:{0, 1}];
    v6 = [stringCopy substringWithRange:{objc_msgSend(stringCopy, "length") - 1, 1}];
    [(SBFLockScreenDateView *)self _cachedGlyphInsetsTimeFontForString:v5];
    v8 = v7;
    [(SBFLockScreenDateView *)self _cachedGlyphInsetsTimeFontForString:v6];
    v10 = v9;
    if ([v6 isEqualToString:@"1"])
    {
      mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
      UIRoundToScreenScale();
      v10 = v12;
    }

    v13 = -v8;
    v14 = -v10;

    v15 = 0.0;
    v16 = 0.0;
  }

  else
  {
    v15 = *MEMORY[0x1E69DDCE0];
    v13 = *(MEMORY[0x1E69DDCE0] + 8);
    v16 = *(MEMORY[0x1E69DDCE0] + 16);
    v14 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  v17 = v15;
  v18 = v13;
  v19 = v16;
  v20 = v14;
  result.right = v20;
  result.bottom = v19;
  result.left = v18;
  result.top = v17;
  return result;
}

- (UIEdgeInsets)_cachedGlyphInsetsTimeFontForString:(id)string
{
  v32[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (_cachedGlyphInsetsTimeFontForString__onceToken != -1)
  {
    [SBFLockScreenDateView _cachedGlyphInsetsTimeFontForString:];
  }

  v5 = [_cachedGlyphInsetsTimeFontForString__leadingInsetForNumber objectForKeyedSubscript:stringCopy];
  v6 = [_cachedGlyphInsetsTimeFontForString__trailingInsetForNumber objectForKeyedSubscript:stringCopy];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    customTimeFont = self->_customTimeFont;
    v31 = *MEMORY[0x1E69DB648];
    v32[0] = customTimeFont;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v11 = *MEMORY[0x1E695F060];
    v12 = *(MEMORY[0x1E695F060] + 8);
    [stringCopy boundingRectWithSize:8 options:v10 attributes:0 context:{*MEMORY[0x1E695F060], v12}];
    UIRectIntegralWithScale();
    v14 = v13;
    v16 = v15;
    [stringCopy boundingRectWithSize:0 options:v10 attributes:0 context:{v11, v12}];
    UIRectIntegralWithScale();
    v18 = v17;
    v20 = v14 - v19;
    v21 = [MEMORY[0x1E696AD98] numberWithDouble:v14 - v19];

    v22 = [MEMORY[0x1E696AD98] numberWithDouble:v18 - v16 - v20];

    [_cachedGlyphInsetsTimeFontForString__leadingInsetForNumber setObject:v21 forKeyedSubscript:stringCopy];
    [_cachedGlyphInsetsTimeFontForString__trailingInsetForNumber setObject:v22 forKeyedSubscript:stringCopy];

    v7 = v22;
    v5 = v21;
  }

  [v5 floatValue];
  v24 = v23;
  [v7 floatValue];
  v26 = v25;

  v27 = v24;
  v28 = v26;
  v29 = 0.0;
  v30 = 0.0;
  result.right = v28;
  result.bottom = v30;
  result.left = v27;
  result.top = v29;
  return result;
}

uint64_t __61__SBFLockScreenDateView__cachedGlyphInsetsTimeFontForString___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v1 = _cachedGlyphInsetsTimeFontForString__leadingInsetForNumber;
  _cachedGlyphInsetsTimeFontForString__leadingInsetForNumber = v0;

  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:10];
  v3 = _cachedGlyphInsetsTimeFontForString__trailingInsetForNumber;
  _cachedGlyphInsetsTimeFontForString__trailingInsetForNumber = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

- (CGRect)_subtitleViewFrameForView:(id)view alignmentPercent:(double)percent
{
  [view frame];
  v7 = v6;
  v9 = v8;
  [(SBFLockScreenDateView *)self maximumSubtitleWidth];
  if (v7 >= v10)
  {
    v7 = v10;
  }

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1 || ([*MEMORY[0x1E69DDA98] activeInterfaceOrientation] - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    [(SBFLockScreenDateView *)self bounds];
    v14 = (v15 - v7) * 0.5 + percent * ((v15 - v7) * 0.5);
  }

  else
  {
    [(SBFLockScreenDateView *)self bounds];
    v14 = (percent + 1.0) * (v13 - v7) * 0.5;
  }

  +[SBFDashBoardViewMetrics timeToSubtitleLabelBaselineDifferenceY];
  dateToTimeStretch = self->_dateToTimeStretch;
  if (dateToTimeStretch < 0.0)
  {
    dateToTimeStretch = 0.0;
  }

  v18 = v16 + dateToTimeStretch;
  if (self->_subtitleOnTop)
  {
    +[SBFLockScreenDateSubtitleView labelFontMetrics];
    v20 = v19;
    v22 = v21;
    [(SBUILegibilityLabel *)self->_timeLabel origin];
    v25 = v24 + self->_customTimeMetrics.ascender - self->_customTimeMetrics.capHeight - v18 - (v20 - v22);
  }

  else
  {
    [(SBUILegibilityLabel *)self->_timeLabel origin];
    v27 = v18 + v26 + self->_customTimeMetrics.ascender;
    +[SBFLockScreenDateSubtitleView labelFontMetrics];
    v25 = v27 - v23.n128_f64[0];
  }

  v23.n128_f64[0] = percent;
  ShouldRoundFramesForAlignmentPercent = _SBFLockScreenDateViewShouldRoundFramesForAlignmentPercent(v23);
  if (ShouldRoundFramesForAlignmentPercent)
  {
    SBFMainScreenScale(ShouldRoundFramesForAlignmentPercent, v29);
    BSRectRoundForScale();
    v14 = v30;
    v25 = v31;
    v7 = v32;
    v9 = v33;
  }

  v34 = v14;
  v35 = v25;
  v36 = v7;
  v37 = v9;
  result.size.height = v37;
  result.size.width = v36;
  result.origin.y = v35;
  result.origin.x = v34;
  return result;
}

+ (id)timeFont
{
  if (timeFont_onceToken != -1)
  {
    +[SBFLockScreenDateView timeFont];
  }

  v3 = timeFont_timeFont;
  if (!timeFont_timeFont)
  {
    v4 = __sb__runningInSpringBoard();
    if (v4)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v174 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice userInterfaceIdiom] != 1)
      {
        v174 = 0x100000000;
        goto LABEL_13;
      }
    }

    HIDWORD(v174) = v4 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice28 = __sb__runningInSpringBoard();
      if (currentDevice28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen _referenceBounds];
      }

      LODWORD(v174) = currentDevice28 ^ 1;
      BSSizeRoundForScale();
      if (v19 == *(MEMORY[0x1E69D4380] + 288) && v18 == *(MEMORY[0x1E69D4380] + 296))
      {
        v164 = 0;
        v165 = 0;
        v163 = 0;
        v162 = 0;
        v166 = 0;
        v161 = 0;
        v160 = 0;
        v167 = 0;
        v159 = 0;
        v158 = 0;
        v148 = 0;
        v168 = 0;
        v169 = 0;
        v157 = 0;
        v156 = 0;
        v170 = 0;
        v155 = 0;
        v154 = 0;
        v171 = 0;
        v153 = 0;
        v152 = 0;
        v172 = 0;
        v151 = 0;
        v150 = 0;
        v173 = 0;
        v149 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_499;
      }
    }

    else
    {
      LODWORD(v174) = 0;
    }

LABEL_13:
    v6 = __sb__runningInSpringBoard();
    if (v6)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v173 = 0;
        goto LABEL_22;
      }
    }

    else
    {
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice2 userInterfaceIdiom] != 1)
      {
        v173 = 0x100000000;
        goto LABEL_22;
      }
    }

    HIDWORD(v173) = v6 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice28 = __sb__runningInSpringBoard();
      if (currentDevice28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen2 _referenceBounds];
      }

      LODWORD(v173) = currentDevice28 ^ 1;
      BSSizeRoundForScale();
      if (v21 >= *(MEMORY[0x1E69D4380] + 440))
      {
        v164 = 0;
        v165 = 0;
        v163 = 0;
        v162 = 0;
        v166 = 0;
        v161 = 0;
        v160 = 0;
        v167 = 0;
        v159 = 0;
        v158 = 0;
        v148 = 0;
        v168 = 0;
        v169 = 0;
        v157 = 0;
        v156 = 0;
        v170 = 0;
        v155 = 0;
        v154 = 0;
        v171 = 0;
        v153 = 0;
        v152 = 0;
        v172 = 0;
        v151 = 0;
        v150 = 0;
        v149 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_499;
      }
    }

    else
    {
      LODWORD(v173) = 0;
    }

LABEL_22:
    v7 = __sb__runningInSpringBoard();
    if (v7)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v172 = 0;
        goto LABEL_31;
      }
    }

    else
    {
      currentDevice3 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice3 userInterfaceIdiom] != 1)
      {
        v172 = 0x100000000;
        goto LABEL_31;
      }
    }

    HIDWORD(v172) = v7 ^ 1;
    if (SBFEffectiveHomeButtonType() == 2)
    {
      currentDevice28 = __sb__runningInSpringBoard();
      if (currentDevice28)
      {
        __sb__mainScreenReferenceBounds();
      }

      else
      {
        mainScreen3 = [MEMORY[0x1E69DCEB0] mainScreen];
        [mainScreen3 _referenceBounds];
      }

      LODWORD(v172) = currentDevice28 ^ 1;
      BSSizeRoundForScale();
      if (v22 >= *(MEMORY[0x1E69D4380] + 376))
      {
        v164 = 0;
        v165 = 0;
        v163 = 0;
        v162 = 0;
        v166 = 0;
        v161 = 0;
        v160 = 0;
        v167 = 0;
        v159 = 0;
        v158 = 0;
        v148 = 0;
        v168 = 0;
        v169 = 0;
        v157 = 0;
        v156 = 0;
        v170 = 0;
        v155 = 0;
        v154 = 0;
        v171 = 0;
        v153 = 0;
        v152 = 0;
        v150 = 0;
        v151 = 0;
        v149 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = 0;
        goto LABEL_499;
      }
    }

    else
    {
      LODWORD(v172) = 0;
    }

LABEL_31:
    v8 = __sb__runningInSpringBoard();
    if (v8)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v171 = 0;
        goto LABEL_40;
      }
    }

    else
    {
      currentDevice4 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice4 userInterfaceIdiom] != 1)
      {
        v171 = 0x100000000;
        goto LABEL_40;
      }
    }

    HIDWORD(v171) = v8 ^ 1;
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen4 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen4 _referenceBounds];
    }

    LODWORD(v171) = currentDevice28 ^ 1;
    BSSizeRoundForScale();
    if (v9 >= *(MEMORY[0x1E69D4380] + 280))
    {
      v164 = 0;
      v165 = 0;
      v163 = 0;
      v162 = 0;
      v166 = 0;
      v161 = 0;
      v160 = 0;
      v167 = 0;
      v159 = 0;
      v158 = 0;
      v148 = 0;
      v168 = 0;
      v169 = 0;
      v157 = 0;
      v156 = 0;
      v170 = 0;
      v155 = 0;
      v154 = 0;
      v152 = 0;
      v153 = 0;
      v150 = 0;
      v151 = 0;
      v149 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_499;
    }

LABEL_40:
    v10 = __sb__runningInSpringBoard();
    if (v10)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v170 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      currentDevice5 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice5 userInterfaceIdiom] != 1)
      {
        v170 = 0x100000000;
        goto LABEL_50;
      }
    }

    HIDWORD(v170) = v10 ^ 1;
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen5 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen5 _referenceBounds];
    }

    LODWORD(v170) = currentDevice28 ^ 1;
    BSSizeRoundForScale();
    if (v16 >= *(MEMORY[0x1E69D4380] + 264))
    {
      v164 = 0;
      v165 = 0;
      v163 = 0;
      v162 = 0;
      v166 = 0;
      v161 = 0;
      v160 = 0;
      v167 = 0;
      v159 = 0;
      v158 = 0;
      v148 = 0;
      v168 = 0;
      v169 = 0;
      v157 = 0;
      v156 = 0;
      v154 = 0;
      v155 = 0;
      v152 = 0;
      v153 = 0;
      v150 = 0;
      v151 = 0;
      v149 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_499;
    }

LABEL_50:
    v17 = __sb__runningInSpringBoard();
    if (v17)
    {
      if (SBFEffectiveDeviceClass() != 2)
      {
        v169 = 0;
        goto LABEL_191;
      }
    }

    else
    {
      currentDevice6 = [MEMORY[0x1E69DC938] currentDevice];
      if ([currentDevice6 userInterfaceIdiom] != 1)
      {
        v169 = 0x100000000;
        goto LABEL_191;
      }
    }

    HIDWORD(v169) = v17 ^ 1;
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      __sb__mainScreenReferenceBounds();
    }

    else
    {
      mainScreen6 = [MEMORY[0x1E69DCEB0] mainScreen];
      [mainScreen6 _referenceBounds];
    }

    LODWORD(v169) = currentDevice28 ^ 1;
    BSSizeRoundForScale();
    if (v29 >= *(MEMORY[0x1E69D4380] + 248))
    {
      v164 = 0;
      v165 = 0;
      v163 = 0;
      v162 = 0;
      v166 = 0;
      v161 = 0;
      v160 = 0;
      v167 = 0;
      v159 = 0;
      v158 = 0;
      v148 = 0;
      v168 = 0;
      v156 = 0;
      v157 = 0;
      v154 = 0;
      v155 = 0;
      v152 = 0;
      v153 = 0;
      v150 = 0;
      v151 = 0;
      v149 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      goto LABEL_499;
    }

LABEL_191:
    currentDevice28 = __sb__runningInSpringBoard();
    if (currentDevice28)
    {
      userInterfaceIdiom = SBFEffectiveDeviceClass();
      if (userInterfaceIdiom != 2)
      {
        goto LABEL_193;
      }
    }

    else
    {
      currentDevice7 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice7 userInterfaceIdiom];
      if (userInterfaceIdiom != 1)
      {
LABEL_193:
        v168 = currentDevice28 ^ 1;
        if (!_SBF_Private_IsD94Like(userInterfaceIdiom, v31))
        {
LABEL_197:
          v167 = 0;
          goto LABEL_207;
        }

        v32 = __sb__runningInSpringBoard();
        if (v32)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_197;
          }
        }

        else
        {
          currentDevice8 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice8 userInterfaceIdiom])
          {
            v167 = 0x100000000;
            goto LABEL_207;
          }
        }

        HIDWORD(v167) = v32 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen7 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen7 _referenceBounds];
          }

          LODWORD(v167) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v37 >= *(MEMORY[0x1E69D4380] + 200))
          {
            v164 = 0;
            v165 = 0;
            v163 = 0;
            v162 = 0;
            v166 = 0;
            v161 = 0;
            v160 = 0;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v148 = 0;
            v155 = 0;
            v156 = 0;
            v153 = 0;
            v154 = 0;
            v151 = 0;
            v152 = 0;
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v167) = 0;
        }

LABEL_207:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            IsD94Like = SBFEffectiveDeviceClass();
            if (IsD94Like != 1)
            {
              v166 = 0;
              goto LABEL_217;
            }
          }
        }

        else
        {
          currentDevice9 = [MEMORY[0x1E69DC938] currentDevice];
          IsD94Like = [currentDevice9 userInterfaceIdiom];
          if (IsD94Like)
          {
            v166 = 0x100000000;
            goto LABEL_217;
          }
        }

        HIDWORD(v166) = currentDevice28 ^ 1;
        IsD94Like = SBFEffectiveHomeButtonType();
        if (IsD94Like == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen8 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen8 _referenceBounds];
          }

          LODWORD(v166) = currentDevice28 ^ 1;
          IsD94Like = BSSizeRoundForScale();
          if (v35 >= *(MEMORY[0x1E69D4380] + 200))
          {
            goto LABEL_221;
          }
        }

        else
        {
          LODWORD(v166) = 0;
        }

LABEL_217:
        IsD94Like = _SBF_Private_IsD94Like(IsD94Like, v34);
        if (IsD94Like)
        {
          v164 = 0;
          v165 = 0;
          v163 = 0;
          v162 = 0;
          v161 = 0;
          v160 = 0;
          v159 = 0;
          v157 = 0;
          v158 = 0;
          v148 = 0;
          v155 = 0;
          v156 = 0;
          v153 = 0;
          v154 = 0;
          v151 = 0;
          v152 = 0;
          v149 = 0;
          v150 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_221:
        if (!_SBF_Private_IsD64Like(IsD94Like, v34))
        {
LABEL_225:
          v165 = 0;
          goto LABEL_235;
        }

        v36 = __sb__runningInSpringBoard();
        if (v36)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_225;
          }
        }

        else
        {
          currentDevice10 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice10 userInterfaceIdiom])
          {
            v165 = 0x100000000;
            goto LABEL_235;
          }
        }

        HIDWORD(v165) = v36 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen9 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen9 _referenceBounds];
          }

          LODWORD(v165) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v45 >= *(MEMORY[0x1E69D4380] + 136))
          {
            v164 = 0;
            v163 = 0;
            v162 = 0;
            v161 = 0;
            v160 = 0;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v148 = 0;
            v155 = 0;
            v156 = 0;
            v153 = 0;
            v154 = 0;
            v151 = 0;
            v152 = 0;
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v165) = 0;
        }

LABEL_235:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            userInterfaceIdiom2 = SBFEffectiveDeviceClass();
            if (userInterfaceIdiom2 != 1)
            {
              v164 = 0;
              goto LABEL_245;
            }
          }
        }

        else
        {
          currentDevice11 = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom2 = [currentDevice11 userInterfaceIdiom];
          if (userInterfaceIdiom2)
          {
            v164 = 0x100000000;
            goto LABEL_245;
          }
        }

        HIDWORD(v164) = currentDevice28 ^ 1;
        userInterfaceIdiom2 = SBFEffectiveHomeButtonType();
        if (userInterfaceIdiom2 == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen10 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen10 _referenceBounds];
          }

          LODWORD(v164) = currentDevice28 ^ 1;
          userInterfaceIdiom2 = BSSizeRoundForScale();
          if (v40 >= *(MEMORY[0x1E69D4380] + 136))
          {
            goto LABEL_249;
          }
        }

        else
        {
          LODWORD(v164) = 0;
        }

LABEL_245:
        if (_SBF_Private_IsD64Like(userInterfaceIdiom2, v39))
        {
          v163 = 0;
          v162 = 0;
          v161 = 0;
          v160 = 0;
          v159 = 0;
          v157 = 0;
          v158 = 0;
          v148 = 0;
          v155 = 0;
          v156 = 0;
          v153 = 0;
          v154 = 0;
          v151 = 0;
          v152 = 0;
          v149 = 0;
          v150 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_249:
        v41 = __sb__runningInSpringBoard();
        if (v41)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v163 = 0;
            goto LABEL_259;
          }
        }

        else
        {
          currentDevice12 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice12 userInterfaceIdiom])
          {
            v163 = 0x100000000;
            goto LABEL_259;
          }
        }

        HIDWORD(v163) = v41 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen11 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen11 _referenceBounds];
          }

          LODWORD(v163) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v44 >= *(MEMORY[0x1E69D4380] + 136))
          {
            v162 = 0;
            v161 = 0;
            v160 = 0;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v148 = 0;
            v155 = 0;
            v156 = 0;
            v153 = 0;
            v154 = 0;
            v151 = 0;
            v152 = 0;
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v163) = 0;
        }

LABEL_259:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            userInterfaceIdiom3 = SBFEffectiveDeviceClass();
            if (userInterfaceIdiom3 != 1)
            {
              v162 = 0;
              HIDWORD(v161) = 0;
              goto LABEL_269;
            }
          }
        }

        else
        {
          currentDevice13 = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom3 = [currentDevice13 userInterfaceIdiom];
          if (userInterfaceIdiom3)
          {
            HIDWORD(v161) = 0;
            v162 = 1;
            goto LABEL_269;
          }
        }

        v162 = currentDevice28 ^ 1;
        userInterfaceIdiom3 = SBFEffectiveHomeButtonType();
        if (userInterfaceIdiom3 == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen12 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen12 _referenceBounds];
          }

          HIDWORD(v161) = currentDevice28 ^ 1;
          userInterfaceIdiom3 = BSSizeRoundForScale();
          if (v46 >= *(MEMORY[0x1E69D4380] + 136))
          {
            goto LABEL_279;
          }
        }

        else
        {
          HIDWORD(v161) = 0;
        }

LABEL_269:
        if (_SBF_Private_IsD54(userInterfaceIdiom3, v43))
        {
          LODWORD(v161) = 0;
          v160 = 0;
          v159 = 0;
          v157 = 0;
          v158 = 0;
          v148 = 0;
          v155 = 0;
          v156 = 0;
          v153 = 0;
          v154 = 0;
          v151 = 0;
          v152 = 0;
          v149 = 0;
          v150 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_279:
        v47 = __sb__runningInSpringBoard();
        if (v47)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            LODWORD(v161) = 0;
            HIDWORD(v160) = 0;
            goto LABEL_289;
          }
        }

        else
        {
          currentDevice14 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice14 userInterfaceIdiom])
          {
            HIDWORD(v160) = 0;
            LODWORD(v161) = 1;
            goto LABEL_289;
          }
        }

        LODWORD(v161) = v47 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v48 = __sb__runningInSpringBoard();
          if (v48)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen13 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen13 _referenceBounds];
          }

          currentDevice28 = v48 ^ 1u;
          v51 = BSSizeRoundForScale();
          HIDWORD(v160) = currentDevice28;
          if (v53 >= *(MEMORY[0x1E69D4380] + 120) && (_SBF_Private_IsN84OrSimilarDevice(v51, v52) & 1) != 0)
          {
            LODWORD(v160) = 0;
            v159 = 0;
            v157 = 0;
            v158 = 0;
            v148 = 0;
            v155 = 0;
            v156 = 0;
            v153 = 0;
            v154 = 0;
            v151 = 0;
            v152 = 0;
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          HIDWORD(v160) = 0;
        }

LABEL_289:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            IsD33OrSimilarDevice = SBFEffectiveDeviceClass();
            if (IsD33OrSimilarDevice != 1)
            {
              LODWORD(v160) = 0;
              HIDWORD(v159) = 0;
              goto LABEL_299;
            }
          }
        }

        else
        {
          currentDevice15 = [MEMORY[0x1E69DC938] currentDevice];
          IsD33OrSimilarDevice = [currentDevice15 userInterfaceIdiom];
          if (IsD33OrSimilarDevice)
          {
            HIDWORD(v159) = 0;
            LODWORD(v160) = 1;
            goto LABEL_299;
          }
        }

        LODWORD(v160) = currentDevice28 ^ 1;
        IsD33OrSimilarDevice = SBFEffectiveHomeButtonType();
        if (IsD33OrSimilarDevice == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen14 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen14 _referenceBounds];
          }

          HIDWORD(v159) = currentDevice28 ^ 1;
          IsD33OrSimilarDevice = BSSizeRoundForScale();
          if (v54 >= *(MEMORY[0x1E69D4380] + 120))
          {
            goto LABEL_308;
          }
        }

        else
        {
          HIDWORD(v159) = 0;
        }

LABEL_299:
        IsD33OrSimilarDevice = _SBF_Private_IsD33OrSimilarDevice(IsD33OrSimilarDevice, v50);
        if (IsD33OrSimilarDevice)
        {
          IsD33OrSimilarDevice = _SBF_Private_IsN84ZoomedOrSimilarDevice(IsD33OrSimilarDevice, v50);
          if (IsD33OrSimilarDevice)
          {
            LODWORD(v159) = 0;
            v157 = 0;
            v158 = 0;
            v148 = 0;
            v155 = 0;
            v156 = 0;
            v153 = 0;
            v154 = 0;
            v151 = 0;
            v152 = 0;
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

LABEL_308:
        if (!_SBF_Private_IsD93Like(IsD33OrSimilarDevice, v50))
        {
LABEL_312:
          LODWORD(v159) = 0;
          HIDWORD(v158) = 0;
          goto LABEL_319;
        }

        v55 = __sb__runningInSpringBoard();
        if (v55)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_312;
          }
        }

        else
        {
          currentDevice16 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice16 userInterfaceIdiom])
          {
            HIDWORD(v158) = 0;
            LODWORD(v159) = 1;
            goto LABEL_319;
          }
        }

        LODWORD(v159) = v55 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen15 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen15 _referenceBounds];
          }

          HIDWORD(v158) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v60 >= *(MEMORY[0x1E69D4380] + 184))
          {
            LODWORD(v158) = 0;
            v148 = 0;
            v156 = 0;
            v157 = 0;
            v154 = 0;
            v155 = 0;
            v152 = 0;
            v153 = 0;
            v150 = 0;
            v151 = 0;
            v149 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          HIDWORD(v158) = 0;
        }

LABEL_319:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            IsD93Like = SBFEffectiveDeviceClass();
            if (IsD93Like != 1)
            {
              LODWORD(v158) = 0;
              v148 = 0;
              goto LABEL_329;
            }
          }
        }

        else
        {
          currentDevice17 = [MEMORY[0x1E69DC938] currentDevice];
          IsD93Like = [currentDevice17 userInterfaceIdiom];
          if (IsD93Like)
          {
            v148 = 0;
            LODWORD(v158) = 1;
            goto LABEL_329;
          }
        }

        LODWORD(v158) = currentDevice28 ^ 1;
        IsD93Like = SBFEffectiveHomeButtonType();
        if (IsD93Like == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen16 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen16 _referenceBounds];
          }

          v148 = currentDevice28 ^ 1;
          IsD93Like = BSSizeRoundForScale();
          if (v58 >= *(MEMORY[0x1E69D4380] + 184))
          {
            goto LABEL_333;
          }
        }

        else
        {
          v148 = 0;
        }

LABEL_329:
        IsD93Like = _SBF_Private_IsD93Like(IsD93Like, v57);
        if (IsD93Like)
        {
          v156 = 0;
          v157 = 0;
          v154 = 0;
          v155 = 0;
          v152 = 0;
          v153 = 0;
          v150 = 0;
          v151 = 0;
          v149 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_333:
        if (!_SBF_Private_IsD63Like(IsD93Like, v57))
        {
LABEL_337:
          v157 = 0;
          goto LABEL_347;
        }

        v59 = __sb__runningInSpringBoard();
        if (v59)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_337;
          }
        }

        else
        {
          currentDevice18 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice18 userInterfaceIdiom])
          {
            v157 = 0x100000000;
            goto LABEL_347;
          }
        }

        HIDWORD(v157) = v59 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          v61 = __sb__runningInSpringBoard();
          if (v61)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen17 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen17 _referenceBounds];
          }

          currentDevice28 = v61 ^ 1u;
          BSSizeRoundForScale();
          LODWORD(v157) = currentDevice28;
          if (v66 >= *(MEMORY[0x1E69D4380] + 104))
          {
            v155 = 0;
            v156 = 0;
            v153 = 0;
            v154 = 0;
            v151 = 0;
            v152 = 0;
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v157) = 0;
        }

LABEL_347:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            IsD63Like = SBFEffectiveDeviceClass();
            if (IsD63Like != 1)
            {
              v156 = 0;
              goto LABEL_357;
            }
          }
        }

        else
        {
          currentDevice19 = [MEMORY[0x1E69DC938] currentDevice];
          IsD63Like = [currentDevice19 userInterfaceIdiom];
          if (IsD63Like)
          {
            v156 = 0x100000000;
            goto LABEL_357;
          }
        }

        HIDWORD(v156) = currentDevice28 ^ 1;
        IsD63Like = SBFEffectiveHomeButtonType();
        if (IsD63Like == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen18 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen18 _referenceBounds];
          }

          LODWORD(v156) = currentDevice28 ^ 1;
          IsD63Like = BSSizeRoundForScale();
          if (v64 >= *(MEMORY[0x1E69D4380] + 104))
          {
            goto LABEL_361;
          }
        }

        else
        {
          LODWORD(v156) = 0;
        }

LABEL_357:
        IsD63Like = _SBF_Private_IsD63Like(IsD63Like, v63);
        if (IsD63Like)
        {
          v154 = 0;
          v155 = 0;
          v152 = 0;
          v153 = 0;
          v150 = 0;
          v151 = 0;
          v149 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_361:
        if (!_SBF_Private_IsD23Like(IsD63Like, v63))
        {
LABEL_365:
          v155 = 0;
          goto LABEL_375;
        }

        v65 = __sb__runningInSpringBoard();
        if (v65)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            goto LABEL_365;
          }
        }

        else
        {
          currentDevice20 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice20 userInterfaceIdiom])
          {
            v155 = 0x100000000;
            goto LABEL_375;
          }
        }

        HIDWORD(v155) = v65 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen19 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen19 _referenceBounds];
          }

          LODWORD(v155) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v74 >= *(MEMORY[0x1E69D4380] + 216))
          {
            v153 = 0;
            v154 = 0;
            v151 = 0;
            v152 = 0;
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v155) = 0;
        }

LABEL_375:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            userInterfaceIdiom4 = SBFEffectiveDeviceClass();
            if (userInterfaceIdiom4 != 1)
            {
              v154 = 0;
              goto LABEL_385;
            }
          }
        }

        else
        {
          currentDevice21 = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom4 = [currentDevice21 userInterfaceIdiom];
          if (userInterfaceIdiom4)
          {
            v154 = 0x100000000;
            goto LABEL_385;
          }
        }

        HIDWORD(v154) = currentDevice28 ^ 1;
        userInterfaceIdiom4 = SBFEffectiveHomeButtonType();
        if (userInterfaceIdiom4 == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen20 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen20 _referenceBounds];
          }

          LODWORD(v154) = currentDevice28 ^ 1;
          userInterfaceIdiom4 = BSSizeRoundForScale();
          if (v69 >= *(MEMORY[0x1E69D4380] + 216))
          {
            goto LABEL_389;
          }
        }

        else
        {
          LODWORD(v154) = 0;
        }

LABEL_385:
        if (_SBF_Private_IsD23Like(userInterfaceIdiom4, v68))
        {
          v152 = 0;
          v153 = 0;
          v150 = 0;
          v151 = 0;
          v149 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_389:
        v70 = __sb__runningInSpringBoard();
        if (v70)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v153 = 0;
            goto LABEL_399;
          }
        }

        else
        {
          currentDevice22 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice22 userInterfaceIdiom])
          {
            v153 = 0x100000000;
            goto LABEL_399;
          }
        }

        HIDWORD(v153) = v70 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen21 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen21 _referenceBounds];
          }

          LODWORD(v153) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v73 >= *(MEMORY[0x1E69D4380] + 120))
          {
            v151 = 0;
            v152 = 0;
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v153) = 0;
        }

LABEL_399:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            userInterfaceIdiom5 = SBFEffectiveDeviceClass();
            if (userInterfaceIdiom5 != 1)
            {
              v152 = 0;
              goto LABEL_409;
            }
          }
        }

        else
        {
          currentDevice23 = [MEMORY[0x1E69DC938] currentDevice];
          userInterfaceIdiom5 = [currentDevice23 userInterfaceIdiom];
          if (userInterfaceIdiom5)
          {
            v152 = 0x100000000;
            goto LABEL_409;
          }
        }

        HIDWORD(v152) = currentDevice28 ^ 1;
        userInterfaceIdiom5 = SBFEffectiveHomeButtonType();
        if (userInterfaceIdiom5 == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen22 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen22 _referenceBounds];
          }

          LODWORD(v152) = currentDevice28 ^ 1;
          userInterfaceIdiom5 = BSSizeRoundForScale();
          if (v75 >= *(MEMORY[0x1E69D4380] + 120))
          {
            goto LABEL_419;
          }
        }

        else
        {
          LODWORD(v152) = 0;
        }

LABEL_409:
        if (_SBF_Private_IsD33OrSimilarDevice(userInterfaceIdiom5, v72))
        {
          v150 = 0;
          v151 = 0;
          v149 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_419:
        v76 = __sb__runningInSpringBoard();
        if (v76)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v151 = 0;
            goto LABEL_429;
          }
        }

        else
        {
          currentDevice24 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice24 userInterfaceIdiom])
          {
            v151 = 0x100000000;
            goto LABEL_429;
          }
        }

        HIDWORD(v151) = v76 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen23 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen23 _referenceBounds];
          }

          LODWORD(v151) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v79 >= *(MEMORY[0x1E69D4380] + 104))
          {
            v149 = 0;
            v150 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v151) = 0;
        }

LABEL_429:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass())
          {
            IsD53 = SBFEffectiveDeviceClass();
            if (IsD53 != 1)
            {
              v150 = 0;
              goto LABEL_439;
            }
          }
        }

        else
        {
          currentDevice25 = [MEMORY[0x1E69DC938] currentDevice];
          IsD53 = [currentDevice25 userInterfaceIdiom];
          if (IsD53)
          {
            v150 = 0x100000000;
            goto LABEL_439;
          }
        }

        HIDWORD(v150) = currentDevice28 ^ 1;
        IsD53 = SBFEffectiveHomeButtonType();
        if (IsD53 == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen24 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen24 _referenceBounds];
          }

          LODWORD(v150) = currentDevice28 ^ 1;
          IsD53 = BSSizeRoundForScale();
          if (v80 >= *(MEMORY[0x1E69D4380] + 104))
          {
            goto LABEL_446;
          }
        }

        else
        {
          LODWORD(v150) = 0;
        }

LABEL_439:
        IsD53 = _SBF_Private_IsD53(IsD53, v78);
        if (IsD53)
        {
LABEL_452:
          v149 = 0;
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          v15 = 0;
          goto LABEL_499;
        }

LABEL_446:
        IsD16 = _SBF_Private_IsD16(IsD53, v78);
        if (IsD16)
        {
          IsD16 = _SBF_Private_IsD52OrSimilarDevice(IsD16, v82);
          if (IsD16)
          {
            goto LABEL_452;
          }
        }

        IsD52ZoomedOrSimilarDevice = _SBF_Private_IsD52ZoomedOrSimilarDevice(IsD16, v82);
        if (IsD52ZoomedOrSimilarDevice)
        {
          IsD52ZoomedOrSimilarDevice = _SBF_Private_IsD16(IsD52ZoomedOrSimilarDevice, v84);
          if (IsD52ZoomedOrSimilarDevice)
          {
            goto LABEL_452;
          }
        }

        IsD52OrSimilarDevice = _SBF_Private_IsD52OrSimilarDevice(IsD52ZoomedOrSimilarDevice, v84);
        if (IsD52OrSimilarDevice & 1) != 0 || (_SBF_Private_IsD52ZoomedOrSimilarDevice(IsD52OrSimilarDevice, v86))
        {
          goto LABEL_452;
        }

        v87 = __sb__runningInSpringBoard();
        if (v87)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v149 = 0;
            goto LABEL_463;
          }
        }

        else
        {
          currentDevice26 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice26 userInterfaceIdiom])
          {
            v149 = 0x100000000;
            goto LABEL_463;
          }
        }

        HIDWORD(v149) = v87 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen25 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen25 _referenceBounds];
          }

          LODWORD(v149) = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v91 >= *(MEMORY[0x1E69D4380] + 88))
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          LODWORD(v149) = 0;
        }

LABEL_463:
        v88 = __sb__runningInSpringBoard();
        if (v88)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v11 = 0;
            v12 = 0;
            goto LABEL_473;
          }
        }

        else
        {
          currentDevice27 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice27 userInterfaceIdiom])
          {
            v12 = 0;
            v11 = 1;
            goto LABEL_473;
          }
        }

        v11 = v88 ^ 1;
        if (SBFEffectiveHomeButtonType() == 2)
        {
          currentDevice28 = __sb__runningInSpringBoard();
          if (currentDevice28)
          {
            __sb__mainScreenReferenceBounds();
          }

          else
          {
            mainScreen26 = [MEMORY[0x1E69DCEB0] mainScreen];
            [mainScreen26 _referenceBounds];
          }

          v12 = currentDevice28 ^ 1;
          BSSizeRoundForScale();
          if (v92 >= *(MEMORY[0x1E69D4380] + 72))
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
            goto LABEL_499;
          }
        }

        else
        {
          v12 = 0;
        }

LABEL_473:
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
          {
            v13 = 0;
            v14 = 0;
LABEL_483:
            mainScreen27 = __sb__runningInSpringBoard();
            if (mainScreen27)
            {
              if (SBFEffectiveDeviceClass() && SBFEffectiveDeviceClass() != 1)
              {
LABEL_486:
                v15 = 0;
                goto LABEL_499;
              }
            }

            else
            {
              currentDevice28 = [MEMORY[0x1E69DC938] currentDevice];
              if ([currentDevice28 userInterfaceIdiom])
              {
                v15 = 1;
                goto LABEL_499;
              }
            }

            v15 = mainScreen27 ^ 1;
            v93 = __sb__runningInSpringBoard();
            if (v93)
            {
              __sb__mainScreenReferenceBounds();
            }

            else
            {
              mainScreen27 = [MEMORY[0x1E69DCEB0] mainScreen];
              [mainScreen27 _referenceBounds];
            }

            BSSizeRoundForScale();
            if (v93 != 1)
            {

              if (v15)
              {
                goto LABEL_500;
              }

              goto LABEL_71;
            }

LABEL_499:
            if (v15)
            {
LABEL_500:

              if (!v14)
              {
LABEL_73:
                if (v13)
                {

                  if (!v12)
                  {
                    goto LABEL_75;
                  }
                }

                else if (!v12)
                {
LABEL_75:
                  if (!v11)
                  {
LABEL_77:
                    if (v149)
                    {
                    }

                    if (HIDWORD(v149))
                    {
                    }

                    if (v150)
                    {
                    }

                    if (HIDWORD(v150))
                    {
                    }

                    if (v151)
                    {
                    }

                    if (HIDWORD(v151))
                    {
                    }

                    if (v152)
                    {
                    }

                    if (HIDWORD(v152))
                    {
                    }

                    if (v153)
                    {
                    }

                    if (HIDWORD(v153))
                    {
                    }

                    if (v154)
                    {
                    }

                    if (HIDWORD(v154))
                    {
                    }

                    if (v155)
                    {
                    }

                    if (HIDWORD(v155))
                    {
                    }

                    if (v156)
                    {
                    }

                    if (HIDWORD(v156))
                    {
                    }

                    if (v157)
                    {
                    }

                    if (HIDWORD(v157))
                    {
                    }

                    if (v148)
                    {
                    }

                    if (v158)
                    {
                    }

                    if (HIDWORD(v158))
                    {
                    }

                    if (v159)
                    {
                    }

                    if (HIDWORD(v159))
                    {
                    }

                    if (v160)
                    {
                    }

                    if (HIDWORD(v160))
                    {
                    }

                    if (v161)
                    {
                    }

                    if (HIDWORD(v161))
                    {
                    }

                    if (v162)
                    {
                    }

                    if (v163)
                    {
                    }

                    if (HIDWORD(v163))
                    {
                    }

                    if (v164)
                    {
                    }

                    if (HIDWORD(v164))
                    {
                    }

                    if (v165)
                    {
                    }

                    if (HIDWORD(v165))
                    {
                    }

                    if (v166)
                    {
                    }

                    if (HIDWORD(v166))
                    {
                    }

                    if (v167)
                    {
                    }

                    if (HIDWORD(v167))
                    {
                    }

                    if (v168)
                    {
                    }

                    if (v169)
                    {
                    }

                    if (HIDWORD(v169))
                    {
                    }

                    if (v170)
                    {
                    }

                    if (HIDWORD(v170))
                    {
                    }

                    if (v171)
                    {
                    }

                    if (HIDWORD(v171))
                    {
                    }

                    if (v172)
                    {
                    }

                    if (HIDWORD(v172))
                    {
                    }

                    if (v173)
                    {
                    }

                    if (HIDWORD(v173))
                    {
                    }

                    if (v174)
                    {
                    }

                    if (HIDWORD(v174))
                    {
                    }

                    v176 = 0;
                    v177 = &v176;
                    v178 = 0x2050000000;
                    v23 = getCSProminentLayoutControllerClass_softClass;
                    v179 = getCSProminentLayoutControllerClass_softClass;
                    if (!getCSProminentLayoutControllerClass_softClass)
                    {
                      v175[0] = MEMORY[0x1E69E9820];
                      v175[1] = 3221225472;
                      v175[2] = __getCSProminentLayoutControllerClass_block_invoke;
                      v175[3] = &unk_1E807F028;
                      v175[4] = &v176;
                      __getCSProminentLayoutControllerClass_block_invoke(v175);
                      v23 = v177[3];
                    }

                    v24 = v23;
                    _Block_object_dispose(&v176, 8);
                    [v23 fontSizeForElementType:1 isLandscapeVariant:{(objc_msgSend(*MEMORY[0x1E69DDA98], "activeInterfaceOrientation") - 3) < 2}];
                    v26 = CTFontCreateWithNameAndOptions(@".SFSoftTime-Semibold", v25, 0, 0x20000uLL);
                    v27 = timeFont_timeFont;
                    timeFont_timeFont = v26;

                    v3 = timeFont_timeFont;
                    goto LABEL_182;
                  }

LABEL_76:

                  goto LABEL_77;
                }

                if (!v11)
                {
                  goto LABEL_77;
                }

                goto LABEL_76;
              }

LABEL_72:

              goto LABEL_73;
            }

LABEL_71:
            if (!v14)
            {
              goto LABEL_73;
            }

            goto LABEL_72;
          }
        }

        else
        {
          currentDevice29 = [MEMORY[0x1E69DC938] currentDevice];
          if ([currentDevice29 userInterfaceIdiom])
          {
            v14 = 0;
            v13 = 1;
            goto LABEL_483;
          }
        }

        v13 = currentDevice28 ^ 1;
        currentDevice28 = __sb__runningInSpringBoard();
        if (currentDevice28)
        {
          __sb__mainScreenReferenceBounds();
        }

        else
        {
          mainScreen28 = [MEMORY[0x1E69DCEB0] mainScreen];
          [mainScreen28 _referenceBounds];
        }

        v14 = currentDevice28 ^ 1;
        BSSizeRoundForScale();
        if (v89 >= *(MEMORY[0x1E69D4380] + 56))
        {
          goto LABEL_486;
        }

        goto LABEL_483;
      }
    }

    v164 = 0;
    v165 = 0;
    v163 = 0;
    v162 = 0;
    v166 = 0;
    v161 = 0;
    v160 = 0;
    v167 = 0;
    v159 = 0;
    v158 = 0;
    v148 = 0;
    v156 = 0;
    v157 = 0;
    v154 = 0;
    v155 = 0;
    v152 = 0;
    v153 = 0;
    v150 = 0;
    v151 = 0;
    v149 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v168 = currentDevice28 ^ 1;
    goto LABEL_499;
  }

LABEL_182:

  return v3;
}

void __33__SBFLockScreenDateView_timeFont__block_invoke()
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DD898];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_47];
}

void __33__SBFLockScreenDateView_timeFont__block_invoke_2()
{
  v0 = timeFont_timeFont;
  timeFont_timeFont = 0;
}

+ ($01BB1521EC52D44A8E7628F5261DCEC8)timeFontMetrics
{
  if (timeFontMetrics_onceToken[0] != -1)
  {
    +[SBFLockScreenDateView timeFontMetrics];
  }

  v3 = *&timeFontMetrics_timeFontMetrics;
  v4 = *&qword_1ED69D270;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(timeFontMetrics_timeFontMetrics, SBFFontMetricsZero), vceqq_f64(*&qword_1ED69D270, unk_1BEAD5BD8)))))
  {
    timeFont = [self timeFont];
    [self metricsForFont:timeFont];
    *&timeFontMetrics_timeFontMetrics = v8;
    *(&timeFontMetrics_timeFontMetrics + 1) = v9;
    qword_1ED69D270 = v10;
    dbl_1ED69D278 = v11;

    v5 = *(&timeFontMetrics_timeFontMetrics + 1);
    v3 = *&timeFontMetrics_timeFontMetrics;
    v4 = *&qword_1ED69D270;
  }

  else
  {
    v5 = *(&timeFontMetrics_timeFontMetrics + 1);
  }

  v6 = dbl_1ED69D278;
  result.var3 = v6;
  result.var2 = v4;
  result.var1 = v5;
  result.var0 = v3;
  return result;
}

void __40__SBFLockScreenDateView_timeFontMetrics__block_invoke()
{
  timeFontMetrics_timeFontMetrics = SBFFontMetricsZero;
  *&qword_1ED69D270 = unk_1BEAD5BD8;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  v0 = *MEMORY[0x1E69DD898];
  v1 = [MEMORY[0x1E696ADC8] mainQueue];
  v2 = [v3 addObserverForName:v0 object:0 queue:v1 usingBlock:&__block_literal_global_54];
}

double __40__SBFLockScreenDateView_timeFontMetrics__block_invoke_2()
{
  result = *&SBFFontMetricsZero;
  timeFontMetrics_timeFontMetrics = SBFFontMetricsZero;
  *&qword_1ED69D270 = unk_1BEAD5BD8;
  return result;
}

+ ($01BB1521EC52D44A8E7628F5261DCEC8)metricsForFont:(id)font
{
  fontCopy = font;
  [fontCopy ascender];
  v5 = v4;
  [fontCopy descender];
  v7 = v6;
  [fontCopy _bodyLeading];
  v9 = v8;
  [fontCopy capHeight];
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.var3 = v15;
  result.var2 = v14;
  result.var1 = v13;
  result.var0 = v12;
  return result;
}

- (double)timeBaselineOffsetFromOrigin
{
  [(SBUILegibilityLabel *)self->_timeLabel frame];
  MaxY = CGRectGetMaxY(v6);
  [(SBUILegibilityLabel *)self->_timeLabel firstBaselineOffsetFromBottom];
  return MaxY - v4;
}

- (double)subtitleBaselineOffsetFromOrigin
{
  if (self->_customSubtitleView)
  {
    customSubtitleView = self->_customSubtitleView;
  }

  else
  {
    customSubtitleView = self->_dateSubtitleView;
  }

  [(SBFLockScreenDateSubtitleView *)customSubtitleView baselineOffsetFromOrigin];
  return result;
}

- (void)_updatePreferredContentSizeCategoryForEnvironment:(id)environment previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [(SBFLockScreenDateView *)self traitCollection];
  v7 = traitCollection;
  if (collectionCopy)
  {
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [collectionCopy preferredContentSizeCategory];
    v10 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    legibilityWeight = [v7 legibilityWeight];
    legibilityWeight2 = [collectionCopy legibilityWeight];
    if (!v10 || legibilityWeight != legibilityWeight2)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __99__SBFLockScreenDateView__updatePreferredContentSizeCategoryForEnvironment_previousTraitCollection___block_invoke;
      block[3] = &unk_1E807F178;
      block[4] = self;
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }
}

- (void)_updateAdaptiveTime
{
  v13 = *MEMORY[0x1E69E9840];
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setBaseFont:self->_customTimeFont];
  v3 = _os_feature_enabled_impl();
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v4 = !self->_posterHasComplications;
    if (!v3)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = self->_timeSupportsStretch && v4;
    goto LABEL_8;
  }

  v4 = 1;
  if (v3)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 0;
LABEL_8:
  v6 = v5;
  [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setAdaptsTimeTextHeight:v5];
LABEL_9:
  maximumAdaptiveTimeTextHeight = self->_maximumAdaptiveTimeTextHeight;
  if (objc_opt_respondsToSelector())
  {
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController maximumAdaptiveTimeTextHeight];
    if (v8 >= self->_maximumAdaptiveTimeTextHeight)
    {
      maximumAdaptiveTimeTextHeight = self->_maximumAdaptiveTimeTextHeight;
    }

    else
    {
      maximumAdaptiveTimeTextHeight = v8;
    }
  }

  if (objc_opt_respondsToSelector())
  {
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setAdaptiveTimeTextHeight:maximumAdaptiveTimeTextHeight];
  }

  v9 = SBLogDashBoard();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109376;
    v10[1] = v6;
    v11 = 2048;
    v12 = maximumAdaptiveTimeTextHeight;
    _os_log_impl(&dword_1BEA11000, v9, OS_LOG_TYPE_DEFAULT, "[Adaptive Time] Time adapts text height: %{BOOL}u with maximum height: %f", v10, 0x12u);
  }
}

- (void)_updateForNewFont
{
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(SBUILegibilityLabel *)self->_timeLabel setFont:self->_customTimeFont];
  }

  [(SBFLockScreenDateView *)self _updateAdaptiveTime];

  [(SBFLockScreenDateView *)self _updateLabels];
}

- (void)setTimeGlassInterfaceStyle:(int64_t)style
{
  if (self->_timeGlassInterfaceStyle != style)
  {
    self->_timeGlassInterfaceStyle = style;
    [(CSProminentDisplayViewController *)self->_prominentDisplayViewController setTimeGlassInterfaceStyle:?];
  }
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)customTimeMetrics
{
  ascender = self->_customTimeMetrics.ascender;
  descender = self->_customTimeMetrics.descender;
  bodyLeading = self->_customTimeMetrics.bodyLeading;
  capHeight = self->_customTimeMetrics.capHeight;
  result.var3 = capHeight;
  result.var2 = bodyLeading;
  result.var1 = descender;
  result.var0 = ascender;
  return result;
}

- (CGRect)restingFrame
{
  x = self->_restingFrame.origin.x;
  y = self->_restingFrame.origin.y;
  width = self->_restingFrame.size.width;
  height = self->_restingFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end