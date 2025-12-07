@interface AVMobileGlassControlsView
- (AVMobileGlassControlsLayoutConfiguration)layoutConfiguration;
- (AVMobileGlassControlsView)init;
- (AVMobileGlassControlsViewDelegate)delegate;
- (NSArray)detachedViews;
- (double)_controlsExpansionYOffset;
- (double)_layoutContentTabsInFrame:(_BYTE *)frame withConfiguration:(double)configuration canFitState:(double)state;
- (void)_attachViews:(uint64_t)views;
- (void)_detachViews:(uint64_t)views;
- (void)_setUpContentTabsContainerViewIfNeeded;
- (void)_setUpPlaybackControlsContainerViewIfNeeded;
- (void)_setUpTopControlsContainerViewIfNeeded;
- (void)_setUpTransportControlsContainerViewIfNeeded;
- (void)_setUpTransportControlsViewIfNeeded;
- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated;
- (void)didMoveToWindow;
- (void)glassTransportControlsView:(id)view didAttachControlsViews:(id)views;
- (void)glassTransportControlsView:(id)view didDetachControlsViews:(id)views;
- (void)layoutSubviews;
- (void)setAuxiliaryControlsView:(id)view;
- (void)setBackgroundView:(id)view;
- (void)setContentTabsView:(id)view;
- (void)setDisplayModeControlsView:(id)view;
- (void)setLayoutAllowed:(BOOL)allowed;
- (void)setLayoutConfiguration:(AVMobileGlassControlsLayoutConfiguration *)configuration;
- (void)setLiveEdgeContentTagView:(id)view;
- (void)setPlaybackControlsView:(id)view;
- (void)setStyleSheet:(id)sheet;
- (void)setTimelineView:(id)view;
- (void)setTitlebarView:(id)view;
- (void)setVolumeControlsView:(id)view;
- (void)updateForContentIntersection;
@end

@implementation AVMobileGlassControlsView

- (AVMobileGlassControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (AVMobileGlassControlsLayoutConfiguration)layoutConfiguration
{
  p_layoutConfiguration = &self->_layoutConfiguration;
  v5 = *&self->_layoutConfiguration.expanded;
  *&retstr->includedControls = *&self->_layoutConfiguration.includedControls;
  *&retstr->expanded = v5;
  pinnedAuxiliaryControls = self->_layoutConfiguration.pinnedAuxiliaryControls;
  retstr->auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  result = pinnedAuxiliaryControls;
  retstr->pinnedAuxiliaryControls = result;
  v8 = *&p_layoutConfiguration->volumeSliderInsets.left;
  *&retstr->timelineSliderInsets.right = *&p_layoutConfiguration->timelineSliderInsets.right;
  *&retstr->volumeSliderInsets.left = v8;
  v9 = *&p_layoutConfiguration->contentTabsLayout;
  *&retstr->volumeSliderInsets.right = *&p_layoutConfiguration->volumeSliderInsets.right;
  *&retstr->contentTabsLayout = v9;
  v10 = *&p_layoutConfiguration->timelineSliderInsets.left;
  *&retstr->contentTabPresented = *&p_layoutConfiguration->contentTabPresented;
  *&retstr->timelineSliderInsets.left = v10;
  return result;
}

- (void)_setUpTransportControlsContainerViewIfNeeded
{
  v15[3] = *MEMORY[0x1E69E9840];
  if (!self->_transportControlsContainerView)
  {
    v3 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.0];
    cGColor = [v3 CGColor];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:{1.0, cGColor}];
    v15[1] = [v5 CGColor];
    v6 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    v15[2] = [v6 CGColor];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:3];

    v8 = objc_alloc_init(MEMORY[0x1E6979380]);
    [(CAGradientLayer *)v8 setColors:v7];
    [(CAGradientLayer *)v8 setLocations:&unk_1EFF12E00];
    [(CAGradientLayer *)v8 setStartPoint:0.5, 0.0];
    [(CAGradientLayer *)v8 setEndPoint:0.5, 1.0];
    v9 = objc_alloc_init(AVGlassBackedGroupView);
    [(AVView *)v9 setIgnoresTouches:1];
    [(AVView *)v9 setAutomaticallyUpdatesSubviewContentIntersections:1];
    [(AVGlassBackedGroupView *)v9 setAutoresizingMask:0];
    layer = [(AVGlassBackedGroupView *)v9 layer];
    [layer setMask:v8];

    transportControlsContainerMask = self->_transportControlsContainerMask;
    self->_transportControlsContainerMask = v8;
    v12 = v8;

    transportControlsContainerView = self->_transportControlsContainerView;
    self->_transportControlsContainerView = v9;
    v14 = v9;

    [(AVMobileGlassControlsView *)self addSubview:v14];
  }
}

- (void)_setUpTopControlsContainerViewIfNeeded
{
  if (!self->_topControlsContainerView)
  {
    v3 = objc_alloc_init(AVGlassBackedGroupView);
    [(AVView *)v3 setIgnoresTouches:1];
    [(AVView *)v3 setAutomaticallyUpdatesSubviewContentIntersections:1];
    [(AVGlassBackedGroupView *)v3 setAutoresizingMask:0];
    topControlsContainerView = self->_topControlsContainerView;
    self->_topControlsContainerView = v3;
    v5 = v3;

    [(AVMobileGlassControlsView *)self addSubview:v5];
  }
}

- (void)_setUpPlaybackControlsContainerViewIfNeeded
{
  if (!self->_playbackControlsContainerView)
  {
    v3 = objc_alloc_init(AVGlassBackedGroupView);
    [(AVView *)v3 setIgnoresTouches:1];
    [(AVView *)v3 setAutomaticallyUpdatesSubviewContentIntersections:1];
    [(AVGlassBackedGroupView *)v3 setAutoresizingMask:0];
    playbackControlsContainerView = self->_playbackControlsContainerView;
    self->_playbackControlsContainerView = v3;
    v5 = v3;

    [(AVMobileGlassControlsView *)self addSubview:v5];
  }
}

- (void)_setUpContentTabsContainerViewIfNeeded
{
  if (!self->_contentTabsContainerView)
  {
    v3 = objc_alloc_init(AVGlassBackedGroupView);
    [(AVView *)v3 setIgnoresTouches:1];
    [(AVView *)v3 setAutomaticallyUpdatesSubviewContentIntersections:1];
    [(AVGlassBackedGroupView *)v3 setAutoresizingMask:0];
    contentTabsContainerView = self->_contentTabsContainerView;
    self->_contentTabsContainerView = v3;
    v5 = v3;

    [(AVMobileGlassControlsView *)self addSubview:v5];
  }
}

- (void)updateForContentIntersection
{
  v5.receiver = self;
  v5.super_class = AVMobileGlassControlsView;
  [(AVView *)&v5 updateForContentIntersection];
  traitCollection = [(AVMobileGlassControlsView *)self traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle == 1)
  {
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)avkit_intrinsicContentSizeOfSubviewWasInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  if (self->_displayModeControlsView == invalidatedCopy || self->_volumeControlsView == invalidatedCopy || self->_auxiliaryControlsView == invalidatedCopy || self->_titlebarView == invalidatedCopy || self->_transportControlsView == invalidatedCopy)
  {
    v5 = invalidatedCopy;
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    invalidatedCopy = v5;
  }
}

- (void)layoutSubviews
{
  v249 = *MEMORY[0x1E69E9840];
  if (![(AVMobileGlassControlsView *)self layoutAllowed])
  {
    goto LABEL_114;
  }

  [(AVMobileGlassControlsView *)self bounds];
  v215 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(AVView *)self contentIntersection];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  traitCollection = [(AVMobileGlassControlsView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    v250.origin.x = v11;
    v250.origin.y = v13;
    v250.size.width = v15;
    v250.size.height = v17;
    IsNull = CGRectIsNull(v250);

    if (IsNull)
    {
      v15 = v7;
      v20 = v215;
    }

    else
    {
      v20 = v11;
    }

    if (IsNull)
    {
      v13 = v5;
      v21 = v9;
    }

    else
    {
      v21 = v17;
    }
  }

  else
  {

    v15 = v7;
    v20 = v215;
    v13 = v5;
    v21 = v9;
  }

  layoutMarginsGuide = [(AVMobileGlassControlsView *)self layoutMarginsGuide];
  [layoutMarginsGuide layoutFrame];
  v217 = v24;
  v218 = v23;
  v212 = v25;
  v214 = v26;

  includedControls = self->_layoutConfiguration.includedControls;
  v221 = *&self->_layoutConfiguration.excludedControls;
  controlsPadding = self->_layoutConfiguration.controlsPadding;
  auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  v28 = self->_layoutConfiguration.pinnedAuxiliaryControls;
  contentTabPresented = self->_layoutConfiguration.contentTabPresented;
  contentTabsDismissing = self->_layoutConfiguration.contentTabsDismissing;
  contentTabTransitioning = self->_layoutConfiguration.contentTabTransitioning;
  v31 = *(&self->_layoutConfiguration.timelineSliderInsets.left + 3);
  v244 = *(&self->_layoutConfiguration.contentTabTransitioning + 1);
  v245[0] = v31;
  *(v245 + 13) = *&self->_layoutConfiguration.timelineSliderInsets.right;
  bottom = self->_layoutConfiguration.volumeSliderInsets.bottom;
  left = self->_layoutConfiguration.volumeSliderInsets.left;
  right = self->_layoutConfiguration.volumeSliderInsets.right;
  contentTabsPresentationLayout = self->_layoutConfiguration.contentTabsPresentationLayout;
  contentTabsLayout = self->_layoutConfiguration.contentTabsLayout;
  contentTabPresentationHeight = self->_layoutConfiguration.contentTabPresentationHeight;
  [(AVMobileGlassBackgroundView *)self->_backgroundView setFrame:v20, v13, v15, v21];
  [(AVGlassBackedGroupView *)self->_contentTabsContainerView setFrame:v215, v5, v7, v9];
  v220 = v221;
  v34 = v28;
  v242 = v244;
  v243[0] = v245[0];
  *(v243 + 13) = *(v245 + 13);
  v238 = 0;
  v35 = v212;
  v36 = v214;
  if (contentTabPresented)
  {
    v36 = v214;
    if (contentTabsPresentationLayout == 1)
    {
      v38 = v217;
      v37 = v218;
      v39 = v214;
      v36 = v214 - (contentTabPresentationHeight - CGRectGetMinY(*(&v35 - 1)));
    }
  }

  v202 = contentTabTransitioning;
  v216 = v34;
  v40 = self->_playbackControlsView;
  effectiveUserInterfaceLayoutDirection = [(AVMobileGlassControlsView *)self effectiveUserInterfaceLayoutDirection];
  [(AVMobileGlassPlaybackControlsView *)v40 intrinsicContentSize];
  v43 = v42;
  [(AVMobileGlassControlsView *)self layoutMargins];
  v45 = v44;
  v47 = v46;
  [(AVMobileGlassControlsView *)self bounds];
  if ((includedControls & 8) != 0)
  {
    v57 = v49;
    v58 = v51;
    v59 = v43;
    v60 = v36;
    v209 = *(MEMORY[0x1E695F058] + 8);
    rect = *MEMORY[0x1E695F058];
    v207 = *(MEMORY[0x1E695F058] + 24);
    v208 = *(MEMORY[0x1E695F058] + 16);
    if (v59 < v60 || vabds_f32(v59, v60) < 0.00000011921)
    {
      v56 = 0.0;
      v198 = v50;
      v200 = v48;
      if (contentTabPresented)
      {
        v54 = (v47 + v212 + v36 + v45 - v43) * 0.5 - controlsPadding;
        if (!contentTabsPresentationLayout)
        {
          v61 = v54 - vabdd_f64(v43 + v54, v36 - contentTabPresentationHeight);
          v56 = contentTabPresentationHeight <= v43 + v54 ? v43 + v54 - (v36 - contentTabPresentationHeight) : 0.0;
          if (contentTabPresentationHeight <= v43 + v54)
          {
            v54 = v61;
          }
        }
      }

      else
      {
        v54 = v57 + (v58 - v43) * 0.5;
      }

      currentDevice = [MEMORY[0x1E69DC938] currentDevice];
      [currentDevice userInterfaceIdiom];

      v251.size.width = v217;
      v251.origin.x = v218;
      v251.origin.y = v54;
      v251.size.height = v43;
      MinX = CGRectGetMinX(v251);
      v252.size.width = v217;
      v252.origin.x = v218;
      v252.origin.y = v54;
      v252.size.height = v43;
      CGRectGetWidth(v252);
      v253.size.width = v198;
      v253.origin.x = v200;
      v253.origin.y = v57;
      v253.size.height = v58;
      CGRectGetHeight(v253);
      [(AVGlassBackedGroupView *)self->_playbackControlsContainerView setFrame:MinX];
      [(AVGlassBackedGroupView *)self->_playbackControlsContainerView bounds];
      x = v254.origin.x;
      v64 = CGRectGetMidY(v254) + v43 * -0.5;
      v65 = x;
      v55 = v217;
      [(UIView *)v40 avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:v65, v64, v217, v43];
      v52 = 1;
      v53 = v218;
    }

    else
    {
      v52 = 0;
      v56 = 0.0;
      v43 = *(MEMORY[0x1E695F058] + 24);
      v55 = *(MEMORY[0x1E695F058] + 16);
      v54 = *(MEMORY[0x1E695F058] + 8);
      v53 = *MEMORY[0x1E695F058];
    }
  }

  else
  {
    v52 = 0;
    v53 = *MEMORY[0x1E695F058];
    v54 = *(MEMORY[0x1E695F058] + 8);
    v55 = *(MEMORY[0x1E695F058] + 16);
    v43 = *(MEMORY[0x1E695F058] + 24);
    v56 = 0.0;
    v207 = v43;
    v208 = v55;
    v209 = v54;
    rect = *MEMORY[0x1E695F058];
  }

  if (contentTabPresented && contentTabsPresentationLayout == 0)
  {
    v66 = v56 + v54;
  }

  else
  {
    v66 = v54;
  }

  BYTE2(v238) = v52;

  v255.origin.x = v53;
  v255.origin.y = v66;
  v255.size.width = v55;
  v255.size.height = v43;
  MaxY = CGRectGetMaxY(v255);
  if (BYTE2(v238) == 1)
  {
    [(AVMobileGlassControlsView *)self bounds];
    v187 = v67;
    v256.origin.x = v218;
    v256.origin.y = v212;
    v256.size.width = v217;
    v256.size.height = v214;
    MinY = CGRectGetMinY(v256);
    v257.origin.x = v218;
    v257.origin.y = v212;
    v257.size.width = v217;
    v257.size.height = v214;
    v68 = CGRectGetMaxY(v257);
    v258.origin.x = v53;
    v258.origin.y = v66;
    v258.size.width = v55;
    v258.size.height = v43;
    v69 = CGRectGetMinY(v258);
    v259.origin.x = v53;
    v259.origin.y = v66;
    v259.size.width = v55;
    v259.size.height = v43;
    v70 = CGRectGetMaxY(v259);
    v71 = v68 - v70;
    v260.origin.x = v218;
    v260.origin.y = v70;
    v260.size.width = v217;
    v260.size.height = v71;
    v186 = CGRectGetMinY(v260);
    v72 = contentTabsPresentationLayout;
    v194 = contentTabsLayout;
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView sizeThatFits:v217, v214];
    v188 = v73;
    v213 = v216;
    v74 = self->_displayModeControlsView;
    v75 = self->_volumeControlsView;
    effectiveUserInterfaceLayoutDirection2 = [(AVMobileGlassControlsView *)self effectiveUserInterfaceLayoutDirection];
    v261.origin.x = v218;
    v261.origin.y = MinY;
    v261.size.width = v217;
    v261.size.height = v69 - MinY - controlsPadding;
    Height = CGRectGetHeight(v261);
    v190 = v70;
    v262.origin.x = v218;
    v262.origin.y = MinY;
    v262.size.width = v217;
    v262.size.height = v69 - MinY - controlsPadding;
    Width = CGRectGetWidth(v262);
    [(AVMobileGlassControlsStyleSheet *)self->_styleSheet controlsFullscreenInternalSpacing];
    v80 = v79;
    [(AVMobileGlassVolumeControlsView *)v75 intrinsicContentSize];
    v82 = v81;
    v84 = v83;
    [(AVMobileGlassDisplayModeControlsView *)v74 intrinsicContentSize];
    v86 = Width * 0.5;
    if (v85 >= v84)
    {
      v84 = v85;
    }

    if (v82 >= v86)
    {
      v87 = Width * 0.5;
    }

    else
    {
      v87 = v82;
    }

    if (v87 < v84)
    {
      v87 = v84;
    }

    v192 = v87;
    v88 = Width - v87 - v80;
    if (v86 >= v88)
    {
      v86 = v88;
    }

    [(AVMobileGlassDisplayModeControlsView *)v74 sizeThatFits:v86, v84];
    v90 = v89;
    _controlsExpansionYOffset = [(AVMobileGlassControlsView *)self _controlsExpansionYOffset];
    v189 = v71;
    v92 = 0;
    v93 = v84 < Height;
    if (vabdd_f64(v84, Height) < 2.22044605e-16)
    {
      v93 = 1;
    }

    v94 = v93 & (includedControls >> 1);
    if ((includedControls & 4) != 0)
    {
      v95 = v207;
      v96 = v208;
      y = v209;
      v98 = rect;
      if (!v93)
      {
        goto LABEL_51;
      }

      v99 = Width - (v80 + v90);
      v100 = v99 <= v192;
      if (vabdd_f64(v99, v192) < 2.22044605e-16)
      {
        v100 = 1;
      }

      if (!v94 || !v100)
      {
        [(UIView *)v74 avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:v218, MinY - _controlsExpansionYOffset, v90, v84];
        v265.origin.y = v209;
        v265.origin.x = rect;
        v265.size.height = v207;
        v265.size.width = v208;
        v280.origin.x = v218;
        v280.origin.y = MinY - _controlsExpansionYOffset;
        v280.size.width = v90;
        v280.size.height = v84;
        v266 = CGRectUnion(v265, v280);
        v98 = v266.origin.x;
        y = v266.origin.y;
        v96 = v266.size.width;
        v95 = v266.size.height;
        v92 = 1;
        if (v94)
        {
          goto LABEL_52;
        }

        goto LABEL_57;
      }

      v92 = 0;
    }

    v95 = v207;
    v96 = v208;
    y = v209;
    v98 = rect;
LABEL_51:
    if (v94)
    {
LABEL_52:
      if (fabs(left) <= fabs(right))
      {
        v101 = right;
      }

      else
      {
        v101 = left;
      }

      v102 = v218 + Width - v192 + v101;
      [(UIView *)v75 avkit_setFrame:effectiveUserInterfaceLayoutDirection2 inLayoutDirection:v102, MinY - _controlsExpansionYOffset, v192, v84];
      v263.origin.x = v98;
      v263.origin.y = y;
      v263.size.width = v96;
      v263.size.height = v95;
      v279.origin.x = v102;
      v279.origin.y = MinY - _controlsExpansionYOffset;
      v279.size.width = v192;
      v279.size.height = v84;
      v264 = CGRectUnion(v263, v279);
      v98 = v264.origin.x;
      y = v264.origin.y;
      v103 = v264.size.width;
      v104 = v264.size.height;
      v105 = v72;
      goto LABEL_58;
    }

LABEL_57:
    v105 = v72;
    v103 = v96;
    v104 = v95;
LABEL_58:
    v267.origin.x = v98;
    v267.origin.y = y;
    v267.size.width = v103;
    v267.size.height = v104;
    v281.origin.y = v209;
    v281.origin.x = rect;
    v281.size.height = v207;
    v281.size.width = v208;
    v106 = v98;
    v107 = v103;
    v108 = v104;
    if (!CGRectEqualToRect(v267, v281))
    {
      [(AVMobileGlassControlsView *)self bounds];
      v106 = CGRectGetMinX(v268);
      [(AVMobileGlassControlsView *)self bounds];
      v107 = CGRectGetWidth(v269);
      currentDevice2 = [MEMORY[0x1E69DC938] currentDevice];
      userInterfaceIdiom = [currentDevice2 userInterfaceIdiom];
      v111 = 50.0;
      if (userInterfaceIdiom == 1)
      {
        v111 = 70.0;
      }

      v108 = v104 + v111;
    }

    [(AVGlassBackedGroupView *)self->_topControlsContainerView setFrame:v106, y, v107, v108];
    BYTE1(v238) = v92;
    HIBYTE(v238) = v94;

    v112 = v213;
    if ((contentTabPresented || v202) && self->_contentTabsView && (includedControls & 0x40) != 0)
    {
      v270.origin.x = v98;
      v270.origin.y = y;
      recta = v103;
      v270.size.width = v103;
      v270.size.height = v104;
      v113 = controlsPadding + CGRectGetMaxY(v270);
      v222 = includedControls;
      v223 = v220;
      v224 = controlsPadding;
      v225 = auxiliaryControlsPlacement;
      v230 = v242;
      v226 = v213;
      v227 = contentTabPresented;
      v228 = contentTabsDismissing;
      v229 = v202;
      *v231 = v243[0];
      *&v231[13] = *(v243 + 13);
      v232 = left;
      v233 = bottom;
      v234 = right;
      v235 = v105;
      v236 = v194;
      v237 = contentTabPresentationHeight;
      v104 = [(AVMobileGlassControlsView *)&self->super.super.super.super.isa _layoutContentTabsInFrame:&v238 withConfiguration:v218 canFitState:v113, v217, v214 - v104];
      v116 = v115;
      v118 = v117;
      v120 = v119;
      v271.origin.x = v98;
      v271.origin.y = y;
      v271.size.width = recta;
      v271.size.height = v104;
      v121 = CGRectGetMaxY(v271);
      v272.origin.x = v104;
      v272.origin.y = v116;
      v272.size.width = v118;
      v272.size.height = v120;
      v122 = CGRectGetMinY(v272);
      v273.origin.x = v98;
      v273.origin.y = y;
      v273.size.width = recta;
      v273.size.height = v104;
      v123 = v122 - CGRectGetMaxY(v273) - controlsPadding;
      v124 = v187 - contentTabPresentationHeight;
    }

    else
    {
      v124 = 0.0;
      if ((includedControls & 0x40) != 0)
      {
        v123 = v189;
        if (v188 >= v189)
        {
          v121 = v190;
        }

        else
        {
          v222 = includedControls;
          v223 = v220;
          v224 = controlsPadding;
          v225 = auxiliaryControlsPlacement;
          v230 = v242;
          v226 = v213;
          v227 = contentTabPresented;
          v228 = contentTabsDismissing;
          v229 = v202;
          *v231 = v243[0];
          *&v231[13] = *(v243 + 13);
          v232 = left;
          v233 = bottom;
          v234 = right;
          v235 = v105;
          v236 = v194;
          v237 = contentTabPresentationHeight;
          v121 = v190;
          v274.origin.x = [(AVMobileGlassControlsView *)&self->super.super.super.super.isa _layoutContentTabsInFrame:&v238 withConfiguration:v218 canFitState:v190, v217, v189];
          v125 = v274.origin.x;
          v126 = v274.origin.y;
          v127 = v274.size.width;
          v128 = v274.size.height;
          v129 = v238;
          if (v129 == CGRectEqualToRect(v274, *MEMORY[0x1E695F050]))
          {
            v130 = _AVLog();
            if (os_log_type_enabled(v130, OS_LOG_TYPE_ERROR))
            {
              v184 = v238;
              v278.origin.x = v125;
              v278.origin.y = v126;
              v278.size.width = v127;
              v278.size.height = v128;
              v185 = NSStringFromCGRect(v278);
              *buf = 67109378;
              *&buf[4] = v184;
              LOWORD(v247) = 2112;
              *(&v247 + 2) = v185;
              _os_log_error_impl(&dword_18B49C000, v130, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. Fitting state and layout rect for content tabs UI does not match. canFitContentTabs: %d  contentTabsLayoutFrame: %@", buf, 0x12u);

              v112 = v213;
            }
          }

          if (v238 == 1)
          {
            v275.origin.x = v125;
            v275.origin.y = v126;
            v275.size.width = v127;
            v275.size.height = v128;
            v121 = v186;
            v123 = CGRectGetMinY(v275) - v186 - controlsPadding;
          }
        }
      }

      else
      {
        v123 = v189;
        v121 = v190;
      }
    }

    v131 = v112;
    if (v124 >= MaxY)
    {
      v132 = v124;
    }

    else
    {
      v132 = MaxY;
    }

    v133 = self->_transportControlsContainerView;
    v134 = self->_transportControlsView;
    [(AVMobileGlassControlsView *)self bounds];
    v136 = v135;
    v138 = v137;
    v140 = v139;
    v142 = v141;
    _controlsExpansionYOffset2 = [(AVMobileGlassControlsView *)self _controlsExpansionYOffset];
    effectiveUserInterfaceLayoutDirection3 = [(AVMobileGlassControlsView *)self effectiveUserInterfaceLayoutDirection];
    [(AVGlassBackedGroupView *)v133 setFrame:v136, v138, v140, v142];
    [(UIView *)v134 avkit_setFrame:effectiveUserInterfaceLayoutDirection3 inLayoutDirection:v218, v121 + _controlsExpansionYOffset2, v217, v123];
    v146 = v131;
    [(AVMobileGlassControlsView *)self bounds];
    v148 = v147;
    v150 = v149;
    v152 = v151;
    v154 = v153;
    v155 = self->_layoutConfiguration.contentTabPresented || self->_layoutConfiguration.contentTabTransitioning;
    [(AVMobileGlassControlsView *)self bounds];
    v158 = 0.0;
    v159 = 0.0;
    if (v155)
    {
      if (v156 <= v157)
      {
        v160 = 200.0;
      }

      else
      {
        v160 = 20.0;
      }

      v161 = 60.0;
      if (v156 > v157)
      {
        v161 = -30.0;
      }

      v162 = v132 + v161;
      v276.origin.x = v218;
      v276.origin.y = v162;
      v276.size.width = v217;
      v276.size.height = v160;
      v163 = CGRectGetMaxY(v276);
      v277.origin.x = v218;
      v277.origin.y = v162;
      v277.size.width = v217;
      v277.size.height = v160;
      v158 = v163 / v154;
      v159 = CGRectGetMinY(v277) / v154;
    }

    v164 = [MEMORY[0x1E696AD98] numberWithDouble:v159];
    *buf = v164;
    v165 = [MEMORY[0x1E696AD98] numberWithDouble:v158];
    *&v247 = v165;
    *(&v247 + 1) = &unk_1EFF130E0;
    v166 = [MEMORY[0x1E695DEC8] arrayWithObjects:buf count:3];

    [MEMORY[0x1E6979518] begin];
    [MEMORY[0x1E6979518] setDisableActions:1];
    [(CAGradientLayer *)self->_transportControlsContainerMask setFrame:v148, v150, v152, v154];
    [(CAGradientLayer *)self->_transportControlsContainerMask setLocations:v166];
    [MEMORY[0x1E6979518] commit];
  }

  v167 = v238;
  *buf = self->_contentTabsView;
  *&v247 = self->_displayModeControlsView;
  *(&v247 + 1) = self->_playbackControlsView;
  v248 = self->_volumeControlsView;
  v239 = v167 & 0x101;
  v240 = BYTE2(v167) & 1;
  v241 = HIBYTE(v167) & 1;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  for (i = 0; i != 4; ++i)
  {
    v171 = *&buf[8 * i];
    v172 = v171;
    if (v171)
    {
      v173 = *(&v239 + i);
      if ([v171 isHidden] == v173)
      {
        [v172 setHidden:v173 ^ 1u];
        if (v173)
        {
          v174 = array2;
        }

        else
        {
          v174 = array;
        }

        [v174 addObject:v172];
      }
    }
  }

  if ([array count])
  {
    v175 = array;
    [(AVMobileGlassControlsView *)self _detachViews:v175];
    if (v175)
    {
      if ([v175 count])
      {
        delegate = [(AVMobileGlassControlsView *)self delegate];
        v177 = objc_opt_respondsToSelector();

        if (v177)
        {
          delegate2 = [(AVMobileGlassControlsView *)self delegate];
          [delegate2 glassControlsView:self didDetachControlsViews:v175];
        }
      }
    }
  }

  if ([array2 count])
  {
    v179 = array2;
    [(AVMobileGlassControlsView *)self _attachViews:v179];
    if (v179)
    {
      if ([v179 count])
      {
        delegate3 = [(AVMobileGlassControlsView *)self delegate];
        v181 = objc_opt_respondsToSelector();

        if (v181)
        {
          delegate4 = [(AVMobileGlassControlsView *)self delegate];
          [delegate4 glassControlsView:self didAttachControlsViews:v179];
        }
      }
    }
  }

  for (j = 24; j != -8; j -= 8)
  {
  }

LABEL_114:
  v219.receiver = self;
  v219.super_class = AVMobileGlassControlsView;
  [(AVView *)&v219 layoutSubviews];
}

- (double)_layoutContentTabsInFrame:(_BYTE *)frame withConfiguration:(double)configuration canFitState:(double)state
{
  v13 = self[69];
  v14 = *(a2 + 24);
  [self layoutMargins];
  v57 = v16;
  v58 = v15;
  v18 = v17;
  v20 = v19;
  effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
  _controlsExpansionYOffset = [(AVMobileGlassControlsView *)self _controlsExpansionYOffset];
  [v13 intrinsicContentSize];
  v25 = v24;
  v59 = v14 + v24 + 50.0;
  v26 = state + a7;
  v27 = *(a2 + 128);
  v56 = a6;
  if (v27 == 1 && (*(a2 + 50) & 1) == 0)
  {
    v28 = *(a2 + 48);
  }

  else
  {
    v28 = 1;
  }

  v29 = *&v28 & ((*a2 & 0x40) >> 6);
  if (v13)
  {
    v30 = *&v28 & ((*a2 & 0x40) >> 6);
  }

  else
  {
    v30 = 0;
  }

  if (a7 >= v59)
  {
    v31 = 1;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = v31 & v29;
  if ((v31 & v29) != 0)
  {
    v33 = v26 - v24;
  }

  else
  {
    v33 = state + a7;
  }

  configurationCopy = configuration;
  if (v27 == 1)
  {
    v35 = v26 + v14;
    if (*(a2 + 49))
    {
      v33 = v35;
    }
  }

  v36 = _controlsExpansionYOffset;
  v55 = v20;
  if (!v30)
  {
    v38 = v24;
    goto LABEL_34;
  }

  v37 = *(a2 + 136) - v24 - v14 - v20;
  if (v37 <= 0.0)
  {
    v37 = a7 - v24 - v14;
  }

  if (v37 >= a7 - v24 - v14)
  {
    v37 = a7 - v24 - v14;
  }

  if (v37 >= 50.0)
  {
    v38 = v37;
  }

  else
  {
    v38 = 50.0;
  }

  if ((*(a2 + 50) & 1) == 0)
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (*(a2 + 48))
  {
LABEL_30:
    [self bounds];
    v40 = 0.0;
    if (v41 > v42)
    {
      v40 = v18;
    }

    v33 = v33 - (v38 - v20 + v40);
    v39 = v14 + v20 + v20 + v25;
    goto LABEL_33;
  }

  v33 = v33 - (v14 - v18);
  v39 = v14 - v20;
LABEL_33:
  v38 = v39 + v38;
LABEL_34:
  v43 = configurationCopy - v58;
  v44 = v36 + v33;
  [self[69] avkit_setFrame:effectiveUserInterfaceLayoutDirection inLayoutDirection:{configurationCopy - v58, v36 + v33, v57 + v56 + v58, v38}];
  v46 = *MEMORY[0x1E695F050];
  v45 = *(MEMORY[0x1E695F050] + 8);
  v48 = *(MEMORY[0x1E695F050] + 16);
  v47 = *(MEMORY[0x1E695F050] + 24);
  if (v32)
  {
    [self safeAreaInsets];
    if (v49 < v58)
    {
      v49 = v58;
    }

    if (v50 < v57)
    {
      v50 = v57;
    }

    [self[69] setLayoutMargins:{v18, v49, v55, v50}];
    v63.origin.x = v46;
    v63.origin.y = v45;
    v63.size.width = v48;
    v63.size.height = v47;
    v65.origin.x = v43;
    v65.origin.y = v44;
    v65.size.width = v57 + v56 + v58;
    v65.size.height = v38;
    *&v46 = CGRectUnion(v63, v65);
    if (*(a2 + 48) == 1)
    {
      [self bounds];
      MaxY = CGRectGetMaxY(v64);
      if (*(a2 + 48) == 1 && MaxY - v44 != *(a2 + 136))
      {
        v52 = _AVLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *v62 = 0;
          _os_log_error_impl(&dword_18B49C000, v52, OS_LOG_TYPE_ERROR, "The content tabs layout frame height does not match the given contentTabsPresentationHeight.", v62, 2u);
        }
      }
    }
  }

  if (frame)
  {
    *frame = (a7 >= v59) & v29;
  }

  else
  {
    v53 = _AVLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v53, OS_LOG_TYPE_ERROR, "Error: Internal inconsistency. AVMobileGlassControlsViewCanFitState cannot be nil.", buf, 2u);
    }
  }

  return v46;
}

- (void)_attachViews:(uint64_t)views
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (views)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if ([*(views + 520) containsObject:v9])
          {
            [*(views + 520) removeObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (void)_detachViews:(uint64_t)views
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (views)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          if (([*(views + 520) containsObject:v9] & 1) == 0)
          {
            [*(views + 520) addObject:v9];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }
}

- (double)_controlsExpansionYOffset
{
  objc_msgSend_layoutConfiguration(self, a2, 0, 0);

  return 0.0;
}

- (void)didMoveToWindow
{
  v2.receiver = self;
  v2.super_class = AVMobileGlassControlsView;
  [(AVMobileGlassControlsView *)&v2 didMoveToWindow];
}

- (void)glassTransportControlsView:(id)view didDetachControlsViews:(id)views
{
  viewsCopy = views;
  [(AVMobileGlassControlsView *)self _detachViews:viewsCopy];
  delegate = [(AVMobileGlassControlsView *)self delegate];
  [delegate glassControlsView:self didDetachControlsViews:viewsCopy];
}

- (void)glassTransportControlsView:(id)view didAttachControlsViews:(id)views
{
  viewsCopy = views;
  [(AVMobileGlassControlsView *)self _attachViews:viewsCopy];
  delegate = [(AVMobileGlassControlsView *)self delegate];
  [delegate glassControlsView:self didAttachControlsViews:viewsCopy];
}

- (void)setVolumeControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassVolumeControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: volumeControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_volumeControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: volumeControlsView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    volumeControlsView = self->_volumeControlsView;
  }

  else
  {
    volumeControlsView = 0;
  }

  if (volumeControlsView != viewCopy)
  {
    [(AVMobileGlassVolumeControlsView *)volumeControlsView removeFromSuperview];
    objc_storeStrong(&self->_volumeControlsView, view);
    [(AVView *)self->_volumeControlsView setHidden:1];
    [(AVMobileGlassControlsView *)self _setUpTopControlsContainerViewIfNeeded];
    [(AVGlassBackedGroupView *)self->_topControlsContainerView addSubview:self->_volumeControlsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)setTitlebarView:(id)view
{
  viewCopy = view;
  if (self->_titlebarView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_titlebarView, view);
    [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setTitlebarView:self->_titlebarView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)_setUpTransportControlsViewIfNeeded
{
  if (self)
  {
    v2 = !*(self + 536) && !*(self + 568) && !*(self + 584) && *(self + 592) == 0;
    if (*(self + 528) == 1 && !v2 && !*(self + 624))
    {
      [self _setUpTransportControlsContainerViewIfNeeded];
      v5 = *(self + 504);
      v3 = objc_alloc_init(AVMobileGlassTransportControlsView);
      [(AVMobileGlassTransportControlsView *)v3 setDelegate:self];
      [(AVMobileGlassTransportControlsView *)v3 setAutoresizingMask:0];
      [(AVView *)v3 setAutomaticallyUpdatesSubviewContentIntersections:1];
      [(AVMobileGlassTransportControlsView *)v3 setLayoutAllowed:1];
      [(AVView *)v3 setIgnoresTouches:1];
      [(AVMobileGlassTransportControlsView *)v3 setStyleSheet:*(self + 608)];
      [v5 addSubview:v3];
      v4 = *(self + 624);
      *(self + 624) = v3;
    }
  }
}

- (void)setTimelineView:(id)view
{
  viewCopy = view;
  if (self->_timelineView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_timelineView, view);
    [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setTimelineView:self->_timelineView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)setPlaybackControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassPlaybackControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: playbackControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_playbackControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: playbackControlsView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    playbackControlsView = self->_playbackControlsView;
  }

  else
  {
    playbackControlsView = 0;
  }

  if (playbackControlsView != viewCopy)
  {
    [(AVMobileGlassPlaybackControlsView *)playbackControlsView removeFromSuperview];
    objc_storeStrong(&self->_playbackControlsView, view);
    [(AVView *)self->_playbackControlsView setHidden:1];
    [(AVMobileGlassControlsView *)self _setUpPlaybackControlsContainerViewIfNeeded];
    [(AVGlassBackedGroupView *)self->_playbackControlsContainerView addSubview:self->_playbackControlsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)setLiveEdgeContentTagView:(id)view
{
  viewCopy = view;
  if (self->_liveEdgeContentTagView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_liveEdgeContentTagView, view);
    [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setLiveEdgeContentTagView:self->_liveEdgeContentTagView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)setDisplayModeControlsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassDisplayModeControlsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: displayModeControlsView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_displayModeControlsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: displayModeControlsView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    displayModeControlsView = self->_displayModeControlsView;
  }

  else
  {
    displayModeControlsView = 0;
  }

  if (displayModeControlsView != viewCopy)
  {
    [(AVMobileGlassDisplayModeControlsView *)displayModeControlsView removeFromSuperview];
    objc_storeStrong(&self->_displayModeControlsView, view);
    [(AVView *)self->_displayModeControlsView setHidden:1];
    [(AVMobileGlassControlsView *)self _setUpTopControlsContainerViewIfNeeded];
    [(AVGlassBackedGroupView *)self->_topControlsContainerView addSubview:self->_displayModeControlsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)setContentTabsView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassContentTabsView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: contentTabView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_contentTabsView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: contentTabsView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    contentTabsView = self->_contentTabsView;
  }

  else
  {
    contentTabsView = 0;
  }

  if (contentTabsView != viewCopy)
  {
    [(AVMobileGlassContentTabsView *)contentTabsView removeFromSuperview];
    objc_storeStrong(&self->_contentTabsView, view);
    [(AVMobileGlassControlsView *)self _setUpContentTabsContainerViewIfNeeded];
    [(AVGlassBackedGroupView *)self->_contentTabsContainerView addSubview:self->_contentTabsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
  }
}

- (void)setBackgroundView:(id)view
{
  viewCopy = view;
  superview = [(AVMobileGlassBackgroundView *)viewCopy superview];

  if (superview)
  {
    v7 = _AVLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18B49C000, v7, OS_LOG_TYPE_ERROR, "Error: backgroundView is already a subview of another view.", buf, 2u);
    }
  }

  if (self->_backgroundView)
  {
    v8 = _AVLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_18B49C000, v8, OS_LOG_TYPE_ERROR, "Error: backgroundView should only be set once on an AVMobileGlassControlsView.", v10, 2u);
    }

    backgroundView = self->_backgroundView;
  }

  else
  {
    backgroundView = 0;
  }

  if (backgroundView != viewCopy)
  {
    [(AVMobileGlassBackgroundView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, view);
    [(AVMobileGlassControlsView *)self insertSubview:self->_backgroundView atIndex:0];
  }
}

- (void)setAuxiliaryControlsView:(id)view
{
  viewCopy = view;
  if (self->_auxiliaryControlsView != viewCopy)
  {
    v6 = viewCopy;
    objc_storeStrong(&self->_auxiliaryControlsView, view);
    [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setAuxiliaryControlsView:self->_auxiliaryControlsView];
    [(AVMobileGlassControlsView *)self setNeedsLayout];
    viewCopy = v6;
  }
}

- (void)setLayoutConfiguration:(AVMobileGlassControlsLayoutConfiguration *)configuration
{
  p_layoutConfiguration = &self->_layoutConfiguration;
  v6 = *&self->_layoutConfiguration.expanded;
  v49[0] = *&self->_layoutConfiguration.includedControls;
  v49[1] = v6;
  auxiliaryControlsPlacement = self->_layoutConfiguration.auxiliaryControlsPlacement;
  p_pinnedAuxiliaryControls = &self->_layoutConfiguration.pinnedAuxiliaryControls;
  v51 = self->_layoutConfiguration.pinnedAuxiliaryControls;
  pinnedAuxiliaryControls = configuration->pinnedAuxiliaryControls;
  v41 = configuration->auxiliaryControlsPlacement;
  v9 = *&p_layoutConfiguration->volumeSliderInsets.left;
  v54 = *&p_layoutConfiguration->timelineSliderInsets.right;
  v55 = v9;
  v10 = *&p_layoutConfiguration->contentTabsLayout;
  v56 = *&p_layoutConfiguration->volumeSliderInsets.right;
  v57 = v10;
  v11 = *&p_layoutConfiguration->timelineSliderInsets.left;
  v52 = *&p_layoutConfiguration->contentTabPresented;
  v53 = v11;
  v12 = *&configuration->expanded;
  v39 = *&configuration->includedControls;
  v40 = v12;
  v42 = pinnedAuxiliaryControls;
  v13 = *&configuration->volumeSliderInsets.left;
  v45 = *&configuration->timelineSliderInsets.right;
  v46 = v13;
  v14 = *&configuration->contentTabsLayout;
  v47 = *&configuration->volumeSliderInsets.right;
  v48 = v14;
  v15 = *&configuration->timelineSliderInsets.left;
  v43 = *&configuration->contentTabPresented;
  v44 = v15;
  if (!AVMobileGlassControlsLayoutConfigurationsEqual(v49, &v39))
  {
    v16 = *&configuration->includedControls;
    v17 = *&configuration->expanded;
    p_layoutConfiguration->auxiliaryControlsPlacement = configuration->auxiliaryControlsPlacement;
    *&p_layoutConfiguration->includedControls = v16;
    *&p_layoutConfiguration->expanded = v17;
    objc_storeStrong(p_pinnedAuxiliaryControls, configuration->pinnedAuxiliaryControls);
    v18 = *&configuration->timelineSliderInsets.left;
    *&p_layoutConfiguration->contentTabPresented = *&configuration->contentTabPresented;
    *&p_layoutConfiguration->timelineSliderInsets.left = v18;
    v19 = *&configuration->timelineSliderInsets.right;
    v20 = *&configuration->volumeSliderInsets.left;
    v21 = *&configuration->contentTabsLayout;
    *&p_layoutConfiguration->volumeSliderInsets.right = *&configuration->volumeSliderInsets.right;
    *&p_layoutConfiguration->contentTabsLayout = v21;
    *&p_layoutConfiguration->timelineSliderInsets.right = v19;
    *&p_layoutConfiguration->volumeSliderInsets.left = v20;
    v22 = configuration->pinnedAuxiliaryControls;
    v31 = configuration->auxiliaryControlsPlacement;
    transportControlsView = self->_transportControlsView;
    v24 = *&configuration->expanded;
    v29 = *&configuration->includedControls;
    v30 = v24;
    v25 = v22;
    v32 = v25;
    v26 = *&configuration->volumeSliderInsets.left;
    v35 = *&configuration->timelineSliderInsets.right;
    v36 = v26;
    v27 = *&configuration->contentTabsLayout;
    v37 = *&configuration->volumeSliderInsets.right;
    v38 = v27;
    v28 = *&configuration->timelineSliderInsets.left;
    v33 = *&configuration->contentTabPresented;
    v34 = v28;
    if (transportControlsView)
    {
      [(AVMobileGlassTransportControlsView *)transportControlsView setLayoutConfiguration:&v29];
    }

    else
    {
    }

    [(AVMobileGlassControlsView *)self setNeedsLayout:v29];
  }
}

- (void)setLayoutAllowed:(BOOL)allowed
{
  if (self->_layoutAllowed != allowed)
  {
    self->_layoutAllowed = allowed;
    [(AVMobileGlassTransportControlsView *)self->_transportControlsView setLayoutAllowed:?];
    if (self->_layoutAllowed)
    {
      [(AVMobileGlassControlsView *)self _setUpTransportControlsViewIfNeeded];

      [(AVMobileGlassControlsView *)self setNeedsLayout];
    }
  }
}

- (NSArray)detachedViews
{
  v2 = [(NSMutableArray *)self->_detachedViews copy];

  return v2;
}

- (void)setStyleSheet:(id)sheet
{
  sheetCopy = sheet;
  if (self->_styleSheet != sheetCopy)
  {
    v13 = sheetCopy;
    objc_storeStrong(&self->_styleSheet, sheet);
    auxiliaryControlsView = [(AVMobileGlassControlsView *)self auxiliaryControlsView];
    displayModeControlsView = [(AVMobileGlassControlsView *)self displayModeControlsView];
    liveEdgeContentTagView = [(AVMobileGlassControlsView *)self liveEdgeContentTagView];
    playbackControlsView = [(AVMobileGlassControlsView *)self playbackControlsView];
    timelineView = [(AVMobileGlassControlsView *)self timelineView];
    titlebarView = [(AVMobileGlassControlsView *)self titlebarView];
    transportControlsView = [(AVMobileGlassControlsView *)self transportControlsView];
    [auxiliaryControlsView setStyleSheet:self->_styleSheet];
    [displayModeControlsView setStyleSheet:self->_styleSheet];
    [liveEdgeContentTagView setStyleSheet:self->_styleSheet];
    [playbackControlsView setStyleSheet:self->_styleSheet];
    [timelineView setStyleSheet:self->_styleSheet];
    [titlebarView setStyleSheet:self->_styleSheet];
    [transportControlsView setStyleSheet:self->_styleSheet];

    [(AVMobileGlassControlsView *)self setNeedsLayout];
    sheetCopy = v13;
  }
}

- (AVMobileGlassControlsView)init
{
  v8.receiver = self;
  v8.super_class = AVMobileGlassControlsView;
  v2 = [(AVMobileGlassControlsView *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 632) = 0u;
    *(v2 + 648) = 0u;
    v4 = *(v2 + 84);
    *(v2 + 83) = 0;
    *(v2 + 84) = 0;

    *(v3 + 744) = 0u;
    *(v3 + 760) = 0u;
    *(v3 + 712) = 0u;
    *(v3 + 728) = 0u;
    *(v3 + 680) = 0u;
    *(v3 + 696) = 0u;
    v3[528] = 1;
    array = [MEMORY[0x1E695DF70] array];
    v6 = *(v3 + 65);
    *(v3 + 65) = array;
  }

  return v3;
}

@end