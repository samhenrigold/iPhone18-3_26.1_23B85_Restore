@interface MRUVolumeView
- (BOOL)isGroupRenderingRequired;
- (MRUVolumeView)initWithFrame:(CGRect)frame;
- (NSArray)punchOutRenderingViews;
- (void)layoutSubviews;
- (void)setCompactContinuousCornerRadius:(double)radius;
- (void)setContentMetrics:(id)metrics;
- (void)setExpanded:(BOOL)expanded;
- (void)setPrimaryInteractionEnabled:(BOOL)enabled;
- (void)setSecondaryInteractionEnabled:(BOOL)enabled;
- (void)setShowEnvironmentSlider:(BOOL)slider;
- (void)setShowSecondarySlider:(BOOL)slider;
- (void)setShowSpatialAudioModeButton:(BOOL)button;
- (void)setShowStepper:(BOOL)stepper;
- (void)updateContentMetrics;
- (void)updateVisibility;
@end

@implementation MRUVolumeView

- (MRUVolumeView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = MRUVolumeView;
  v3 = [(MRUVolumeView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MRUContinuousSliderView alloc];
    v5 = *MEMORY[0x1E695F058];
    v6 = *(MEMORY[0x1E695F058] + 8);
    v7 = *(MEMORY[0x1E695F058] + 16);
    v8 = *(MEMORY[0x1E695F058] + 24);
    v9 = [(CCUIContinuousSliderView *)v4 initWithFrame:*MEMORY[0x1E695F058], v6, v7, v8];
    primarySlider = v3->_primarySlider;
    v3->_primarySlider = v9;

    [(MRUContinuousSliderView *)v3->_primarySlider setGlyphScale:MRUVolumeSliderGlyphScale()];
    [(CCUIBaseSliderView *)v3->_primarySlider setName:@"MRUVolumeIdentifierPrimaryMultiCategoryVolumeSlider"];
    [(CCUIBaseSliderView *)v3->_primarySlider setShouldIncludeVolumeButtonsInput:+[MRUFeatureFlagProvider isVolumeInputControlCenterEnabled]];
    [(CCUIBaseSliderView *)v3->_primarySlider setInteractiveWhenUnexpanded:1];
    [(MRUContinuousSliderView *)v3->_primarySlider setAccessibilityIdentifier:@"cc-volume-slider"];
    [(MRUVolumeView *)v3 addSubview:v3->_primarySlider];
    v11 = [(CCUIContinuousSliderView *)[MRUContinuousSliderView alloc] initWithFrame:v5, v6, v7, v8];
    secondarySlider = v3->_secondarySlider;
    v3->_secondarySlider = v11;

    [(MRUContinuousSliderView *)v3->_secondarySlider setAccessibilityIdentifier:@"cc-secondary-volume-slider"];
    [(MRUVolumeView *)v3 addSubview:v3->_secondarySlider];
    v13 = objc_alloc_init(MEMORY[0x1E6997260]);
    environmentSlider = v3->_environmentSlider;
    v3->_environmentSlider = v13;

    v15 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"hearingdevice.ear"];
    [(CCUIContinuousSliderView *)v3->_environmentSlider setGlyphImage:v15];

    [(MRUVolumeView *)v3 addSubview:v3->_environmentSlider];
    v16 = [[MRUVolumeStepperView alloc] initWithFrame:v5, v6, v7, v8];
    stepper = v3->_stepper;
    v3->_stepper = v16;

    [(MRUVolumeStepperView *)v3->_stepper setAccessibilityIdentifier:@"cc-volume-stepper"];
    [(MRUVolumeView *)v3 addSubview:v3->_stepper];
    v18 = [MRUVisualStylingProvider alloc];
    v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
    v20 = [(MRUVisualStylingProvider *)v18 initWithTraitCollection:v19];
    stylingProvider = v3->_stylingProvider;
    v3->_stylingProvider = v20;

    [(MRUVolumeView *)v3 updateContentMetrics];
    [(MRUVolumeView *)v3 updateVisibility];
  }

  return v3;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = MRUVolumeView;
  [(MRUVolumeView *)&v30 layoutSubviews];
  [(MRUVolumeView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = CCUISliderExpandedContentModuleWidth();
  v13 = v12;
  v15 = MRUDefaultExpandedWidth(v11, v14);
  if (self->_expanded)
  {
    ShouldBeVertical = MRULayoutShouldBeVertical();
    if (!ShouldBeVertical && self->_showSpatialAudioModeButton && self->_showSecondarySlider)
    {
      MRUExpandedContentInsets(ShouldBeVertical, v17);
      MRUHortizonalScreenInset(self);
      UIRectInset();
      CGRectGetWidth(v31);
    }

    else
    {
      v34.origin.x = v4;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v10;
      CGRectGetWidth(v34);
    }

    UIRectInset();
    x = v35.origin.x;
    y = v35.origin.y;
    width = v35.size.width;
    height = v35.size.height;
    CGRectGetHeight(v35);
    v6 = 0.0;
    UIRectCenteredRect();
    [(MRUVolumeStepperView *)self->_stepper setFrame:?];
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = height;
    MinX = CGRectGetMinX(v36);
    v37.origin.x = x;
    v37.origin.y = y;
    v37.size.width = width;
    v37.size.height = height;
    v26 = CGRectGetHeight(v37);
    if (self->_showSecondarySlider || self->_showEnvironmentSlider)
    {
      v27 = v13;
      v28 = 0.0;
    }

    else
    {
      UIRectCenteredRect();
      MinX = v29;
    }

    [(MRUContinuousSliderView *)self->_primarySlider setFrame:MinX, v28, v27, v26];
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v20 = CGRectGetMaxX(v38) - v13;
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = height;
    v10 = CGRectGetHeight(v39);
  }

  else
  {
    [(MRUVolumeStepperView *)self->_stepper setFrame:v4, v6, v8, v10];
    [(MRUContinuousSliderView *)self->_primarySlider setFrame:v4, v6, v8, v10];
    v18 = v15 + v13 * -2.0;
    v32.origin.x = v4;
    v32.origin.y = v6;
    v32.size.width = v8;
    v32.size.height = v10;
    v19 = CGRectGetWidth(v32) / v13;
    v33.origin.x = v4;
    v33.origin.y = v6;
    v33.size.width = v8;
    v33.size.height = v10;
    v20 = CGRectGetWidth(v33) + v18 * v19;
    v13 = v8;
  }

  [(MRUContinuousSliderView *)self->_secondarySlider setFrame:v20, v6, v13, v10];
  [(CCUIContinuousSliderView *)self->_environmentSlider setFrame:v20, v6, v13, v10];
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(MRUVolumeView *)self updateContentMetrics];
    [(MRUVolumeView *)self updateVisibility];

    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowSecondarySlider:(BOOL)slider
{
  if (self->_showSecondarySlider != slider)
  {
    self->_showSecondarySlider = slider;
    [(MRUVolumeView *)self updateVisibility];

    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowEnvironmentSlider:(BOOL)slider
{
  if (self->_showEnvironmentSlider != slider)
  {
    self->_showEnvironmentSlider = slider;
    [(MRUVolumeView *)self updateVisibility];

    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowStepper:(BOOL)stepper
{
  if (self->_showStepper != stepper)
  {
    self->_showStepper = stepper;
    [(MRUVolumeView *)self updateVisibility];

    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setShowSpatialAudioModeButton:(BOOL)button
{
  if (self->_showSpatialAudioModeButton != button)
  {
    self->_showSpatialAudioModeButton = button;
    [(MRUVolumeView *)self setNeedsLayout];
  }
}

- (void)setPrimaryInteractionEnabled:(BOOL)enabled
{
  if (self->_primaryInteractionEnabled != enabled)
  {
    self->_primaryInteractionEnabled = enabled;
    [(MRUVolumeView *)self updateVisibility];
  }
}

- (void)setSecondaryInteractionEnabled:(BOOL)enabled
{
  if (self->_secondaryInteractionEnabled != enabled)
  {
    self->_secondaryInteractionEnabled = enabled;
    [(MRUVolumeView *)self updateVisibility];
  }
}

- (void)setCompactContinuousCornerRadius:(double)radius
{
  if (self->_compactContinuousCornerRadius != radius)
  {
    self->_compactContinuousCornerRadius = radius;
    [(MRUVolumeView *)self updateVisibility];
  }
}

- (void)setContentMetrics:(id)metrics
{
  metricsCopy = metrics;
  v5 = self->_contentMetrics;
  v6 = v5;
  if (v5 == metricsCopy)
  {
  }

  else
  {
    v7 = [(CCUIModuleContentMetrics *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_contentMetrics, metrics);
      [(MRUVolumeView *)self updateContentMetrics];
    }
  }
}

- (BOOL)isGroupRenderingRequired
{
  if (self->_showStepper)
  {
    return 0;
  }

  if ([(CCUIBaseSliderView *)self->_primarySlider isGroupRenderingRequired])
  {
    return 1;
  }

  secondarySlider = self->_secondarySlider;

  return [(CCUIBaseSliderView *)secondarySlider isGroupRenderingRequired];
}

- (NSArray)punchOutRenderingViews
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  punchOutRenderingViews = [(CCUIBaseSliderView *)self->_primarySlider punchOutRenderingViews];
  [v3 addObjectsFromArray:punchOutRenderingViews];

  punchOutRenderingViews2 = [(CCUIBaseSliderView *)self->_secondarySlider punchOutRenderingViews];
  [v3 addObjectsFromArray:punchOutRenderingViews2];

  v6 = [v3 copy];

  return v6;
}

- (void)updateContentMetrics
{
  v3 = self->_contentMetrics;
  v4 = v3;
  if (self->_expanded)
  {
    v6 = v3;
    [(CCUIModuleContentMetrics *)v3 gridGeometryInfo];
    v5 = [MEMORY[0x1E6997270] defaultMetricsForGridGeometryInfo:95.0];

    v4 = v5;
  }

  v7 = v4;
  [(CCUIBaseSliderView *)self->_primarySlider setContentMetrics:v4];
  [(CCUIContinuousSliderView *)self->_environmentSlider setContentMetrics:v7];
}

- (void)updateVisibility
{
  showStepper = self->_showStepper;
  stepper = self->_stepper;
  if (showStepper)
  {
    [(MRUVolumeStepperView *)stepper setAlpha:1.0];
    [(MRUContinuousSliderView *)self->_primarySlider setAlpha:0.0];
    [(MRUContinuousSliderView *)self->_secondarySlider setAlpha:0.0];
  }

  else
  {
    [(MRUVolumeStepperView *)stepper setAlpha:0.0];
    v5 = !self->_expanded || self->_showEnvironmentSlider;
    [(CCUIBaseSliderView *)self->_primarySlider setGlyphVisible:v5];
    v6 = 1.0;
    if (!self->_primaryInteractionEnabled)
    {
      v6 = 0.5;
      if (!self->_expanded)
      {
        v6 = 1.0;
      }
    }

    [(MRUContinuousSliderView *)self->_primarySlider setAlpha:v6];
    if (self->_expanded && self->_showSecondarySlider)
    {
      if (self->_secondaryInteractionEnabled)
      {
        secondarySlider = self->_secondarySlider;
        v8 = 1.0;
      }

      else
      {
        v8 = 0.5;
        secondarySlider = self->_secondarySlider;
      }

      [(MRUContinuousSliderView *)secondarySlider setAlpha:v8];
    }

    else
    {
      [(MRUContinuousSliderView *)self->_secondarySlider setAlpha:0.0];
    }
  }

  v9 = 0.0;
  if (self->_expanded && self->_showEnvironmentSlider)
  {
    v9 = 1.0;
  }

  [(CCUIContinuousSliderView *)self->_environmentSlider setAlpha:v9];
  if (self->_expanded)
  {
    CCUISliderExpandedModuleContinuousCornerRadius();
    compactContinuousCornerRadius = v10;
  }

  else
  {
    compactContinuousCornerRadius = self->_compactContinuousCornerRadius;
  }

  [(CCUIBaseSliderView *)self->_primarySlider setContinuousSliderCornerRadius:compactContinuousCornerRadius];
  [(CCUIBaseSliderView *)self->_secondarySlider setContinuousSliderCornerRadius:compactContinuousCornerRadius];
  [(CCUIContinuousSliderView *)self->_environmentSlider setContinuousSliderCornerRadius:compactContinuousCornerRadius];
  v12 = self->_stepper;

  [(MRUVolumeStepperView *)v12 setContinuousButtonCornerRadius:compactContinuousCornerRadius];
}

@end