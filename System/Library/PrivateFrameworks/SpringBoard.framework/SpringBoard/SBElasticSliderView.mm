@interface SBElasticSliderView
- (BOOL)_usesSolariumBackground;
- (CGPoint)_elasticGlyphCenterForDefaultGlyphCenter:(CGPoint)center;
- (CGPoint)glyphCenter;
- (SBElasticSliderView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)shadowOutsets;
- (double)_fractionToRegularMetrics;
- (double)_minorAxisElasticLength;
- (id)_createElasticBackgroundView;
- (void)_layoutAccessoryViews;
- (void)_updateCornerRadius;
- (void)_updateGlyphScaleForAdditiveScaleOrAxisUpdate;
- (void)_updateShadowMode;
- (void)layoutElasticContentViews;
- (void)setAccessoryLayoutEdge:(unint64_t)edge;
- (void)setAccessoryViewPadding:(double)padding;
- (void)setAdditiveGlyphScaleFactor:(double)factor;
- (void)setAxis:(unint64_t)axis;
- (void)setCompactMinorAxisDimension:(double)dimension;
- (void)setContinuousSliderCornerRadius:(double)radius;
- (void)setCornerRadiusMinorAxisFraction:(double)fraction;
- (void)setLeadingAccessoryView:(id)view;
- (void)setRegularMinorAxisDimension:(double)dimension;
- (void)setShadowMode:(unint64_t)mode;
- (void)setTrailingAccessoryView:(id)view;
@end

@implementation SBElasticSliderView

- (SBElasticSliderView)initWithFrame:(CGRect)frame
{
  v39.receiver = self;
  v39.super_class = SBElasticSliderView;
  v3 = [(CCUIContinuousSliderView *)&v39 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_accessoryLayoutEdge = 0;
    [(SBElasticSliderView *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v5, v7, v9, v11}];
    maskView = v4->_maskView;
    v4->_maskView = v13;

    [(UIView *)v4->_maskView setUserInteractionEnabled:0];
    layer = [(UIView *)v4->_maskView layer];
    [layer setCompositingFilter:*MEMORY[0x277CDA310]];

    elasticContentBoundaryView = [(CCUIBaseSliderView *)v4 elasticContentBoundaryView];
    [elasticContentBoundaryView insertSubview:v4->_maskView atIndex:0];

    _usesSolariumBackground = [(SBElasticSliderView *)v4 _usesSolariumBackground];
    if (!_usesSolariumBackground)
    {
      v18 = MEMORY[0x277D26718];
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      userInterfaceIdiom = [currentDevice userInterfaceIdiom];

      if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
      {
        v21 = @"elasticHUDBackgroundSheer";
      }

      else
      {
        v21 = @"elasticHUDBackground";
      }

      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v23 = [v18 materialViewWithRecipeNamed:v21 inBundle:v22 options:2 initialWeighting:0 scaleAdjustment:1.0];
      baseMaterialView = v4->_baseMaterialView;
      v4->_baseMaterialView = v23;

      v25 = v4->_baseMaterialView;
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%p", @"SBElasticSliderMaterialView", v4];
      [(MTMaterialView *)v25 setGroupNameBase:v26];

      elasticContentView = [(CCUIBaseSliderView *)v4 elasticContentView];
      [elasticContentView insertSubview:v4->_baseMaterialView atIndex:0];
    }

    elasticContentView2 = [(CCUIBaseSliderView *)v4 elasticContentView];
    [elasticContentView2 setClipsToBounds:1];
    v29 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{v6, v8, v10, v12}];
    shadowView = v4->_shadowView;
    v4->_shadowView = v29;

    layer2 = [(UIView *)v4->_shadowView layer];
    [layer2 setShadowPathIsBounds:1];

    elasticBackgroundContentView = [(CCUIBaseSliderView *)v4 elasticBackgroundContentView];
    [elasticBackgroundContentView insertSubview:v4->_shadowView atIndex:0];

    [(SBElasticSliderView *)v4 _updateShadowMode];
    if (_usesSolariumBackground)
    {
      elasticBackgroundContentView2 = [objc_alloc(MEMORY[0x277D763B0]) initWithVariant:8];
      [elasticBackgroundContentView2 setSubvariant:@"volumeSlider"];
      [elasticContentView2 _setBackground:elasticBackgroundContentView2];
    }

    else
    {
      v34 = [(MTMaterialView *)v4->_baseMaterialView copy];
      captureOnlyMaterialView = v4->_captureOnlyMaterialView;
      v4->_captureOnlyMaterialView = v34;

      [(MTMaterialView *)v4->_captureOnlyMaterialView setCaptureOnly:1];
      v36 = v4->_captureOnlyMaterialView;
      groupNameBase = [(MTMaterialView *)v4->_baseMaterialView groupNameBase];
      [(MTMaterialView *)v36 setGroupNameBase:groupNameBase];

      elasticBackgroundContentView2 = [(CCUIBaseSliderView *)v4 elasticBackgroundContentView];
      [elasticBackgroundContentView2 insertSubview:v4->_captureOnlyMaterialView atIndex:0];
    }
  }

  return v4;
}

- (void)setContinuousSliderCornerRadius:(double)radius
{
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView _setContinuousCornerRadius:radius];

  [(UIView *)self->_shadowView _setContinuousCornerRadius:radius];
  layer = [(UIView *)self->_shadowView layer];
  [layer setShadowOffset:{0.0, radius * 0.25}];
}

- (void)layoutElasticContentViews
{
  v12.receiver = self;
  v12.super_class = SBElasticSliderView;
  [(CCUIContinuousSliderView *)&v12 layoutElasticContentViews];
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(MTMaterialView *)self->_captureOnlyMaterialView setFrame:v5, v7, v9, v11];
  [(MTMaterialView *)self->_baseMaterialView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_shadowView setFrame:v5, v7, v9, v11];
  [(UIView *)self->_maskView setFrame:v5, v7, v9, v11];
  [(SBElasticSliderView *)self _updateCornerRadius];
  [(SBElasticSliderView *)self _layoutAccessoryViews];
  [(SBElasticSliderView *)self _updateShadowMode];
}

- (CGPoint)glyphCenter
{
  v5.receiver = self;
  v5.super_class = SBElasticSliderView;
  [(CCUIContinuousSliderView *)&v5 glyphCenter];
  [(SBElasticSliderView *)self _elasticGlyphCenterForDefaultGlyphCenter:?];
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)setAxis:(unint64_t)axis
{
  if ([(CCUIContinuousSliderView *)self axis]!= axis)
  {
    v5.receiver = self;
    v5.super_class = SBElasticSliderView;
    [(CCUIContinuousSliderView *)&v5 setAxis:axis];
    [(SBElasticSliderView *)self _updateGlyphScaleForAdditiveScaleOrAxisUpdate];
  }
}

- (void)setCornerRadiusMinorAxisFraction:(double)fraction
{
  if (self->_cornerRadiusMinorAxisFraction != fraction)
  {
    self->_cornerRadiusMinorAxisFraction = fraction;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (void)setRegularMinorAxisDimension:(double)dimension
{
  if (self->_regularMinorAxisDimension != dimension)
  {
    self->_regularMinorAxisDimension = dimension;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (void)setCompactMinorAxisDimension:(double)dimension
{
  if (self->_compactMinorAxisDimension != dimension)
  {
    self->_compactMinorAxisDimension = dimension;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (void)setAdditiveGlyphScaleFactor:(double)factor
{
  if (self->_additiveGlyphScaleFactor != factor)
  {
    self->_additiveGlyphScaleFactor = factor;
    [(SBElasticSliderView *)self _updateGlyphScaleForAdditiveScaleOrAxisUpdate];
  }
}

- (void)setShadowMode:(unint64_t)mode
{
  if (self->_shadowMode != mode)
  {
    self->_shadowMode = mode;
    [(SBElasticSliderView *)self _updateShadowMode];
  }
}

- (UIEdgeInsets)shadowOutsets
{
  layer = [(UIView *)self->_shadowView layer];
  [layer shadowOffset];
  [layer shadowRadius];
  UIEdgeInsetsMakeWithEdges();
  UIEdgeInsetsMin();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (void)setLeadingAccessoryView:(id)view
{
  viewCopy = view;
  leadingAccessoryView = self->_leadingAccessoryView;
  if (leadingAccessoryView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)leadingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_leadingAccessoryView, view);
    elasticBackgroundContentView = [(CCUIBaseSliderView *)self elasticBackgroundContentView];
    [elasticBackgroundContentView addSubview:v8];

    [(SBElasticSliderView *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (void)setTrailingAccessoryView:(id)view
{
  viewCopy = view;
  trailingAccessoryView = self->_trailingAccessoryView;
  if (trailingAccessoryView != viewCopy)
  {
    v8 = viewCopy;
    [(UIView *)trailingAccessoryView removeFromSuperview];
    objc_storeStrong(&self->_trailingAccessoryView, view);
    elasticBackgroundContentView = [(CCUIBaseSliderView *)self elasticBackgroundContentView];
    [elasticBackgroundContentView addSubview:v8];

    [(SBElasticSliderView *)self setNeedsLayout];
    viewCopy = v8;
  }
}

- (void)setAccessoryLayoutEdge:(unint64_t)edge
{
  if (self->_accessoryLayoutEdge != edge)
  {
    self->_accessoryLayoutEdge = edge;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (void)setAccessoryViewPadding:(double)padding
{
  if (self->_accessoryViewPadding != padding)
  {
    self->_accessoryViewPadding = padding;
    [(SBElasticSliderView *)self setNeedsLayout];
  }
}

- (double)_minorAxisElasticLength
{
  elasticContentView = [(CCUIBaseSliderView *)self elasticContentView];
  [elasticContentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  axis = [(CCUIContinuousSliderView *)self axis];
  v13 = v5;
  v14 = v7;
  v15 = v9;
  v16 = v11;
  if (axis == 1)
  {

    return CGRectGetHeight(*&v13);
  }

  else
  {

    return CGRectGetWidth(*&v13);
  }
}

- (double)_fractionToRegularMetrics
{
  [(SBElasticSliderView *)self regularMinorAxisDimension];
  v4 = v3;
  [(SBElasticSliderView *)self compactMinorAxisDimension];
  v6 = v5;
  [(SBElasticSliderView *)self _minorAxisElasticLength];
  if (v4 <= 0.0 || v6 <= 0.0 || v7 <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return fmax(fmin((v7 - v6) / (v4 - v6) * 4.0, 1.0), 0.0);
  }
}

- (void)_updateCornerRadius
{
  [(SBElasticSliderView *)self _fractionToRegularMetrics];
  v4 = v3;
  [(SBElasticSliderView *)self _minorAxisElasticLength];
  v6 = v5;
  [(SBElasticSliderView *)self cornerRadiusMinorAxisFraction];
  v8 = v6 * (v4 * v7 + (1.0 - v4) * 0.5);

  [(SBElasticSliderView *)self setContinuousSliderCornerRadius:v8];
}

- (void)_layoutAccessoryViews
{
  leadingAccessoryView = [(SBElasticSliderView *)self leadingAccessoryView];
  trailingAccessoryView = [(SBElasticSliderView *)self trailingAccessoryView];
  objc_msgSend_frame(leadingAccessoryView);
  v67 = v4;
  v69 = v5;
  v7 = v6;
  rect = v8;
  objc_msgSend_frame(trailingAccessoryView);
  v10 = v9;
  v71 = v11;
  v13 = v12;
  v76 = v14;
  elasticBackgroundContentView = [(CCUIBaseSliderView *)self elasticBackgroundContentView];
  [elasticBackgroundContentView bounds];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(SBElasticSliderView *)self accessoryViewPadding];
  v25 = v24;
  accessoryLayoutEdge = [(SBElasticSliderView *)self accessoryLayoutEdge];
  if (accessoryLayoutEdge == 4)
  {
    v84.origin.x = v17;
    v84.origin.y = v19;
    v84.size.width = v21;
    v84.size.height = v23;
    MidX = CGRectGetMidX(v84);
    v85.origin.x = v17;
    v85.origin.y = v19;
    v85.size.width = v21;
    v85.size.height = v23;
    CGRectGetMaxY(v85);
    v86.origin.x = v67;
    v86.origin.y = v69;
    v86.size.width = v7;
    v86.size.height = rect;
    v30 = CGRectGetHeight(v86) * 0.5;
    v87.origin.x = v10;
    v87.origin.y = v71;
    v87.size.width = v13;
    v87.size.height = v76;
    v29 = 0;
    v28 = 0;
    v31 = v25 * 0.5 + v30 + CGRectGetHeight(v87) * 0.5;
    objc_msgSend_frame(leadingAccessoryView, v31, *&MidX);
  }

  else
  {
    if (!accessoryLayoutEdge)
    {
      if ([(CCUIContinuousSliderView *)self axis]== 1)
      {
        LOBYTE(accessoryLayoutEdge) = 2;
      }

      else
      {
        LOBYTE(accessoryLayoutEdge) = 1;
      }
    }

    if ((accessoryLayoutEdge & 2) != 0)
    {
      effectiveUserInterfaceLayoutDirection = [(SBElasticSliderView *)self effectiveUserInterfaceLayoutDirection];
      v66 = v13;
      v33 = v17;
      v34 = v19;
      v35 = v21;
      v36 = v23;
      if (effectiveUserInterfaceLayoutDirection == 1)
      {
        v37 = v25 + CGRectGetMaxX(*&v33);
        v88.origin.x = v17;
        v88.origin.y = v19;
        v88.size.width = v21;
        v88.size.height = v23;
        v38 = CGRectGetMinX(v88) - v13 - v25;
      }

      else
      {
        v37 = CGRectGetMinX(*&v33) - v7 - v25;
        v89.origin.x = v17;
        v89.origin.y = v19;
        v89.size.width = v21;
        v89.size.height = v23;
        v38 = v25 + CGRectGetMaxX(v89);
      }

      v90.origin.x = v17;
      v90.origin.y = v19;
      v90.size.width = v21;
      v90.size.height = v23;
      MidY = CGRectGetMidY(v90);
      v91.origin.x = v37;
      v91.origin.y = v69;
      v91.size.width = v7;
      v91.size.height = rect;
      v40 = MidY - CGRectGetHeight(v91) * 0.5;
      v92.origin.x = v17;
      v92.origin.y = v19;
      v92.size.width = v21;
      v92.size.height = v23;
      v41 = CGRectGetMidY(v92);
      v93.origin.x = v38;
      v93.origin.y = v71;
      v93.size.width = v66;
      v93.size.height = v76;
      v72 = v41 - CGRectGetHeight(v93) * 0.5;
      v94.origin.x = v37;
      v94.origin.y = v40;
      v94.size.width = v7;
      v94.size.height = rect;
      CGRectGetMidX(v94);
      v95.origin.x = v37;
      v95.origin.y = v40;
      v95.size.width = v7;
      v95.size.height = rect;
      CGRectGetMidY(v95);
      v96.origin.x = v38;
      v96.origin.y = v72;
      v96.size.width = v66;
      v96.size.height = v76;
      CGRectGetMidX(v96);
      v97.origin.x = v38;
      v97.origin.y = v72;
      v97.size.width = v66;
      v97.size.height = v76;
      MaxY = CGRectGetMidY(v97);
      v29 = 0;
      v28 = 1;
    }

    else
    {
      v80.origin.x = v17;
      v80.origin.y = v19;
      v80.size.width = v21;
      v80.size.height = v23;
      CGRectGetMidX(v80);
      v81.origin.x = v17;
      v81.origin.y = v19;
      v81.size.width = v21;
      v81.size.height = v23;
      CGRectGetMinY(v81);
      v82.origin.x = v17;
      v82.origin.y = v19;
      v82.size.width = v21;
      v82.size.height = v23;
      CGRectGetMidX(v82);
      v83.origin.x = v17;
      v83.origin.y = v19;
      v83.size.width = v21;
      v83.size.height = v23;
      MaxY = CGRectGetMaxY(v83);
      v28 = 0;
      v29 = 1;
    }

    objc_msgSend_frame(leadingAccessoryView, MaxY);
  }

  SBUnintegralizedRectCenteredAboutPoint();
  v68 = v42;
  v44 = v43;
  recta = v46;
  v77 = v45;
  objc_msgSend_frame(trailingAccessoryView);
  SBUnintegralizedRectCenteredAboutPoint();
  v48 = v47;
  v50 = v49;
  v70 = v52;
  v73 = v51;
  traitCollection = [(SBElasticSliderView *)self traitCollection];
  [traitCollection displayScale];

  objc_msgSend_frame(leadingAccessoryView);
  UIRectCenteredAboutPointScale();
  v55 = v54;
  v57 = v56;
  objc_msgSend_frame(trailingAccessoryView);
  UIRectCenteredAboutPointScale();
  if (v28)
  {
    v60 = v55;
  }

  else
  {
    v58 = v48;
    v60 = v68;
  }

  if (v28)
  {
    v61 = v44;
  }

  else
  {
    v61 = v57;
  }

  if (v28)
  {
    v62 = v50;
  }

  else
  {
    v62 = v59;
  }

  if ((v29 & (v58 < 2.0)) != 0)
  {
    v63 = 2.0;
  }

  else
  {
    v63 = v58;
  }

  if ((v29 & (v60 < 2.0)) != 0)
  {
    v64 = 2.0;
  }

  else
  {
    v64 = v60;
  }

  [leadingAccessoryView setFrame:{v64, v61, v77, recta}];
  [trailingAccessoryView setFrame:{v63, v62, v73, v70}];
}

- (void)_updateShadowMode
{
  shadowMode = self->_shadowMode;
  if (shadowMode == 1)
  {
    v3 = 5.0;
    v4 = 1050253722;
  }

  else if (shadowMode)
  {
    v4 = 0;
    v3 = 0.0;
  }

  else
  {
    v3 = 20.0;
    v4 = 1043878380;
  }

  layer = [(UIView *)self->_shadowView layer];
  LODWORD(v5) = v4;
  [layer setShadowOpacity:v5];
  [layer setShadowRadius:v3];
}

- (CGPoint)_elasticGlyphCenterForDefaultGlyphCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  glyphContainerView = [(CCUIBaseSliderView *)self glyphContainerView];
  [glyphContainerView bounds];
  v8 = v7;
  v10 = v9;

  if ([(CCUIContinuousSliderView *)self axis]== 2)
  {
    v11 = v8 * 0.5;
    v12 = v10 - v8;
  }

  else
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v11 = v8 - v10;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 * 0.5;
  }

  [(SBElasticSliderView *)self _fractionToRegularMetrics];
  v14 = y * v13 + (1.0 - v13) * v12;
  v15 = x * v13 + (1.0 - v13) * v11;
  result.y = v14;
  result.x = v15;
  return result;
}

- (void)_updateGlyphScaleForAdditiveScaleOrAxisUpdate
{
  [(SBElasticSliderView *)self additiveGlyphScaleFactor];
  v4 = v3;
  v5 = dbl_21F8A7ED0[[(CCUIContinuousSliderView *)self axis]== 2];
  v6 = _UISolariumEnabled();
  v7 = v5 * 0.9;
  if (!v6)
  {
    v7 = v5;
  }

  v8 = 1.0;
  if (v4 != 0.0)
  {
    v8 = v4;
  }

  v9 = v8 * v7;

  [(CCUIBaseSliderView *)self setGlyphScale:v9];
}

- (id)_createElasticBackgroundView
{
  if ([(SBElasticSliderView *)self _usesSolariumBackground])
  {
    v2 = 0;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v5 = MEMORY[0x277D26718];
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v2 = [v5 materialViewWithRecipeNamed:@"elasticHUDModuleSheer" inBundle:v6 options:0 initialWeighting:0 scaleAdjustment:1.0];
    }

    else
    {
      v2 = [MEMORY[0x277D26718] materialViewWithRecipe:4];
    }
  }

  return v2;
}

- (BOOL)_usesSolariumBackground
{
  v2 = _UISolariumEnabled();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

@end