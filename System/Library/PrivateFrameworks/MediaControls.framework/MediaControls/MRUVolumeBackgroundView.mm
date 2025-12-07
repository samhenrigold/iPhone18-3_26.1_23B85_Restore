@interface MRUVolumeBackgroundView
- (BOOL)hasExpandedButtons;
- (MRUVolumeBackgroundView)initWithFrame:(CGRect)frame;
- (double)totalHorizontalSliderWidth;
- (void)collapseExpandableButtons;
- (void)expandButton:(id)button;
- (void)layoutSubviews;
- (void)layoutSubviewsHorizontal;
- (void)layoutSubviewsVertical;
- (void)setShowConversationAwarenessButton:(BOOL)button;
- (void)setShowEnvironmentSlider:(BOOL)slider;
- (void)setShowNowPlayingView:(BOOL)view;
- (void)setShowPrimaryListeningModeButton:(BOOL)button;
- (void)setShowSecondaryAssetView:(BOOL)view;
- (void)setShowSecondaryListeningModeButton:(BOOL)button;
- (void)setShowSpatialAudioModeButton:(BOOL)button;
- (void)setStylingProvider:(id)provider;
- (void)updateVisibility;
@end

@implementation MRUVolumeBackgroundView

- (void)updateVisibility
{
  v3 = 1.0;
  v4 = 1.0;
  if (self->_showSecondaryListeningModeButton)
  {
    if ([(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded])
    {
      v4 = 0.5;
    }

    else
    {
      v4 = 1.0;
    }
  }

  if (self->_showPrimaryListeningModeButton)
  {
    if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      v3 = 0.5;
    }

    else
    {
      v3 = 1.0;
    }
  }

  hasExpandedButtons = [(MRUVolumeBackgroundView *)self hasExpandedButtons];
  v6 = 0.0;
  v7 = 1.0;
  if (!self->_showNowPlayingView)
  {
    v7 = 0.0;
  }

  [(MRUVolumeNowPlayingView *)self->_nowPlayingView setAlpha:v7];
  if (MRULayoutShouldBeVertical())
  {
    [(MRUOutputDeviceAssetView *)self->_primaryAssetView setAlpha:v4];
    if (self->_showSecondaryAssetView)
    {
      v8 = v3;
    }

    else
    {
      v8 = 0.0;
    }

    [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setAlpha:v8];
    showPrimaryListeningModeButton = self->_showPrimaryListeningModeButton;
    if (showPrimaryListeningModeButton && hasExpandedButtons)
    {
      v10 = ![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded];
    }

    else
    {
      v10 = !showPrimaryListeningModeButton;
    }

    v21 = 0.0;
    if (!v10)
    {
      v21 = 1.0;
    }

    [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAlpha:v21];
    showSecondaryListeningModeButton = self->_showSecondaryListeningModeButton;
    if (showSecondaryListeningModeButton && hasExpandedButtons)
    {
      v23 = ![(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded];
    }

    else
    {
      v23 = !showSecondaryListeningModeButton;
    }

    v26 = 0.0;
    if (!v23)
    {
      v26 = 1.0;
    }

    [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAlpha:v26];
    showSpatialAudioModeButton = self->_showSpatialAudioModeButton;
    if (showSpatialAudioModeButton && hasExpandedButtons)
    {
      v28 = ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded];
    }

    else
    {
      v28 = !showSpatialAudioModeButton;
    }

    v29 = 0.0;
    if (!v28)
    {
      v29 = 1.0;
    }

LABEL_63:
    [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setAlpha:v29];
    showConversationAwarenessButton = self->_showConversationAwarenessButton;
    if (showConversationAwarenessButton && hasExpandedButtons)
    {
      v34 = ![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded];
    }

    else
    {
      v34 = !showConversationAwarenessButton;
    }

    v35 = 0.0;
    if (!v34)
    {
      v35 = 1.0;
    }

    [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setAlpha:v35];
    v18 = !self->_showNowPlayingView;
    v19 = 0.0;
    v20 = 1.0;
    goto LABEL_69;
  }

  if (!self->_showSecondaryAssetView)
  {
    [(MRUOutputDeviceAssetView *)self->_primaryAssetView setAlpha:1.0];
    [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setAlpha:0.0];
    v24 = self->_showPrimaryListeningModeButton;
    if (v24 && hasExpandedButtons)
    {
      v25 = ![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded];
    }

    else
    {
      v25 = !v24;
    }

    if (v25)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }

    [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAlpha:v30];
    [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAlpha:0.0];
    v31 = self->_showSpatialAudioModeButton;
    if (v31 && hasExpandedButtons)
    {
      v32 = ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded];
    }

    else
    {
      v32 = !v31;
    }

    v29 = 1.0;
    if (v32)
    {
      v29 = 0.0;
    }

    goto LABEL_63;
  }

  if (!self->_showPrimaryListeningModeButton || (v11 = [(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded], v12 = 0.0, !v11))
  {
    v12 = v4;
  }

  [(MRUOutputDeviceAssetView *)self->_primaryAssetView setAlpha:v12];
  v13 = 0.0;
  if (self->_showSecondaryAssetView)
  {
    if (!self->_showSecondaryListeningModeButton || (v14 = [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded], v13 = 0.0, !v14))
    {
      v13 = v3;
    }
  }

  [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setAlpha:v13];
  if (self->_showPrimaryListeningModeButton && (!self->_showSpatialAudioModeButton || ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded]))
  {
    v6 = v4;
  }

  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAlpha:v6];
  v15 = 0.0;
  if (self->_showSecondaryListeningModeButton)
  {
    v16 = v3;
  }

  else
  {
    v16 = 0.0;
  }

  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAlpha:v16];
  v17 = 1.0;
  if (!self->_showSpatialAudioModeButton)
  {
    v17 = 0.0;
  }

  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setAlpha:v17];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setAlpha:0.0];
  if (self->_showNowPlayingView)
  {
    v15 = 1.0;
    if (self->_showSpatialAudioModeButton)
    {
      v18 = ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded];
      v19 = 1.0;
      v20 = 0.0;
LABEL_69:
      if (v18)
      {
        v15 = v19;
      }

      else
      {
        v15 = v20;
      }
    }
  }

  nowPlayingView = self->_nowPlayingView;

  [(MRUVolumeNowPlayingView *)nowPlayingView setAlpha:v15];
}

- (BOOL)hasExpandedButtons
{
  if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded]|| [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded]|| [(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
  {
    return 1;
  }

  conversationAwarenessButton = self->_conversationAwarenessButton;

  return [(MediaControlsExpandableButton *)conversationAwarenessButton isExpanded];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MRUVolumeBackgroundView;
  [(MRUVolumeBackgroundView *)&v3 layoutSubviews];
  if (MRULayoutShouldBeVertical())
  {
    [(MRUVolumeBackgroundView *)self layoutSubviewsVertical];
  }

  else
  {
    [(MRUVolumeBackgroundView *)self layoutSubviewsHorizontal];
  }
}

- (void)layoutSubviewsVertical
{
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAxis:0];
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAxis:0];
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setAxis:0];
  v3 = [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setAxis:0];
  [(MRUVolumeNowPlayingView *)self->_nowPlayingView setAxis:MRUIsSmallScreen(v3, v4) ^ 1];
  traitCollection = [(MRUVolumeBackgroundView *)self traitCollection];
  [traitCollection displayScale];
  v7 = v6;
  v46 = v6;

  MRUExpandedContentInsets(v8, v9);
  MRUVerticalScreenInset(self);
  v10 = CCUISliderExpandedContentModuleWidth();
  v39 = v11;
  MRUDefaultExpandedWidth(v10, v12);
  CCUISliderExpandedContentModuleHeight();
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectCenteredIntegralRectScale();
  v44 = v13;
  v45 = v14;
  v16 = v15;
  rect = v17;
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectInset();
  x = v48.origin.x;
  y = v48.origin.y;
  width = v48.size.width;
  height = v48.size.height;
  MinX = CGRectGetMinX(v48);
  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  MinY = CGRectGetMinY(v49);
  v50.origin.x = x;
  v50.origin.y = y;
  v50.size.width = width;
  v50.size.height = height;
  v23 = CGRectGetWidth(v50);
  v51.origin.x = v44;
  v51.size.width = v45;
  v40 = v16;
  v51.origin.y = v16;
  v51.size.height = rect;
  v24 = CGRectGetMinY(v51);
  v41 = y;
  v42 = x;
  v52.origin.x = x;
  v52.origin.y = y;
  v52.size.width = width;
  v52.size.height = height;
  v25 = v24 - CGRectGetMinY(v52);
  if (self->_showSecondaryAssetView)
  {
    v26 = v39;
  }

  else
  {
    v26 = v23;
  }

  [(MRUOutputDeviceAssetView *)self->_primaryAssetView sizeThatFits:v26, v25];
  UIRectCenteredIntegralRectScale();
  [(MRUOutputDeviceAssetView *)self->_primaryAssetView setFrame:v46];
  v53.origin.x = MinX;
  v53.origin.y = MinY;
  v53.size.width = v23;
  v53.size.height = v25;
  CGRectGetMaxX(v53);
  v54.origin.x = MinX;
  v54.origin.y = MinY;
  v54.size.width = v23;
  v54.size.height = v25;
  CGRectGetMinY(v54);
  v55.origin.x = MinX;
  v55.origin.y = MinY;
  v55.size.width = v23;
  v55.size.height = v25;
  [(MRUOutputDeviceAssetView *)self->_secondaryAssetView sizeThatFits:v39, CGRectGetHeight(v55)];
  UIRectCenteredIntegralRectScale();
  [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setFrame:v46];
  if (self->_showSecondaryAssetView)
  {
    v27 = width;
    v28 = height;
    if (![(MRUVolumeBackgroundView *)self hasExpandedButtons])
    {
      v56.origin.y = v41;
      v56.origin.x = v42;
      v56.size.width = width;
      v56.size.height = height;
      CGRectGetWidth(v56);
    }
  }

  else
  {
    v27 = width;
    v28 = height;
  }

  v57.origin.x = v42;
  v57.origin.y = v41;
  v57.size.width = v27;
  v57.size.height = v28;
  CGRectGetMaxY(v57);
  v58.origin.x = v44;
  v58.size.width = v45;
  v58.origin.y = v40;
  v58.size.height = rect;
  CGRectGetMaxY(v58);
  v59.origin.x = v42;
  v59.origin.y = v41;
  v59.size.width = v27;
  v59.size.height = v28;
  CGRectGetHeight(v59);
  UIRectInset();
  v29 = v60.origin.x;
  v30 = v60.origin.y;
  v31 = v60.size.width;
  v32 = v60.size.height;
  CGRectGetWidth(v60);
  showSecondaryAssetView = self->_showSecondaryAssetView;
  if (self->_showSpatialAudioModeButton && self->_showSecondaryAssetView)
  {
    if (![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      goto LABEL_22;
    }

    showSecondaryAssetView = self->_showSecondaryAssetView;
  }

  if (showSecondaryAssetView && ![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
  {
    goto LABEL_22;
  }

  showSpatialAudioModeButton = self->_showSpatialAudioModeButton;
  if (!self->_showConversationAwarenessButton || !self->_showSpatialAudioModeButton)
  {
    goto LABEL_19;
  }

  if (![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
  {
LABEL_22:
    UIRectInset();
    goto LABEL_23;
  }

  showSpatialAudioModeButton = self->_showSpatialAudioModeButton;
LABEL_19:
  if ((showSpatialAudioModeButton || self->_showConversationAwarenessButton) && ![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
  {
    goto LABEL_22;
  }

LABEL_23:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setFrame:?];
  if (![(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded])
  {
    UIRectInset();
  }

  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setFrame:?];
  if (self->_showSecondaryAssetView && ![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
  {
    goto LABEL_33;
  }

  if (self->_showPrimaryListeningModeButton)
  {
    if (!self->_showConversationAwarenessButton)
    {
      goto LABEL_32;
    }

    if (![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
    {
LABEL_33:
      UIRectInset();
      goto LABEL_34;
    }

    if (self->_showPrimaryListeningModeButton)
    {
      goto LABEL_32;
    }
  }

  if (self->_showConversationAwarenessButton)
  {
LABEL_32:
    if (![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
    {
      goto LABEL_33;
    }
  }

LABEL_34:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setFrame:?];
  if (self->_showPrimaryListeningModeButton)
  {
    if (!self->_showSpatialAudioModeButton)
    {
      goto LABEL_38;
    }

    if (![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
    {
      goto LABEL_41;
    }

    if (self->_showPrimaryListeningModeButton)
    {
LABEL_38:
      if ([(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
      {
        goto LABEL_39;
      }

LABEL_41:
      UIRectInset();
      goto LABEL_42;
    }
  }

LABEL_39:
  if (self->_showSpatialAudioModeButton && ![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded:v29])
  {
    goto LABEL_41;
  }

LABEL_42:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setFrame:?];
  v61.origin.x = v42;
  v61.origin.y = v41;
  v61.size.width = v27;
  v61.size.height = v28;
  CGRectGetMinX(v61);
  v62.origin.x = v44;
  v62.origin.y = v40;
  v62.size.width = v45;
  v62.size.height = rect;
  CGRectGetMaxY(v62);
  v63.origin.x = v42;
  v63.origin.y = v41;
  v63.size.width = v27;
  v63.size.height = v28;
  v35 = CGRectGetWidth(v63);
  v64.origin.y = v30;
  v64.origin.x = v29;
  v64.size.width = v31;
  v64.size.height = v32;
  v36 = CGRectGetMinY(v64);
  v65.origin.x = v44;
  v65.origin.y = v40;
  v65.size.width = v45;
  v65.size.height = rect;
  [(MRUVolumeNowPlayingView *)self->_nowPlayingView sizeThatFits:v35, v36 - CGRectGetMaxY(v65)];
  UIRectCenteredIntegralRectScale();
  nowPlayingView = self->_nowPlayingView;

  [(MRUVolumeNowPlayingView *)nowPlayingView setFrame:?];
}

- (MRUVolumeBackgroundView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = MRUVolumeBackgroundView;
  v3 = [(MRUVolumeBackgroundView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MRUOutputDeviceAssetView);
    primaryAssetView = v3->_primaryAssetView;
    v3->_primaryAssetView = v4;

    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_primaryAssetView];
    v6 = objc_alloc_init(MRUOutputDeviceAssetView);
    secondaryAssetView = v3->_secondaryAssetView;
    v3->_secondaryAssetView = v6;

    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_secondaryAssetView];
    v8 = objc_alloc_init(MRUVolumeNowPlayingView);
    nowPlayingView = v3->_nowPlayingView;
    v3->_nowPlayingView = v8;

    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_nowPlayingView];
    initForControlCenter = [[MediaControlsExpandableButton alloc] initForControlCenter];
    primaryListeningModeButton = v3->_primaryListeningModeButton;
    v3->_primaryListeningModeButton = initForControlCenter;

    [(MediaControlsExpandableButton *)v3->_primaryListeningModeButton setMaximumExpandedSize:0.0, 226.0];
    [(MediaControlsExpandableButton *)v3->_primaryListeningModeButton setButtonImageSize:54.0, 54.0];
    [(MediaControlsExpandableButton *)v3->_primaryListeningModeButton setContentVerticalAlignment:1];
    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_primaryListeningModeButton];
    initForControlCenter2 = [[MediaControlsExpandableButton alloc] initForControlCenter];
    secondaryListeningModeButton = v3->_secondaryListeningModeButton;
    v3->_secondaryListeningModeButton = initForControlCenter2;

    [(MediaControlsExpandableButton *)v3->_secondaryListeningModeButton setMaximumExpandedSize:0.0, 226.0];
    [(MediaControlsExpandableButton *)v3->_secondaryListeningModeButton setButtonImageSize:54.0, 54.0];
    [(MediaControlsExpandableButton *)v3->_secondaryListeningModeButton setContentVerticalAlignment:1];
    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_secondaryListeningModeButton];
    initForControlCenter3 = [[MediaControlsExpandableButton alloc] initForControlCenter];
    spatialAudioModeButton = v3->_spatialAudioModeButton;
    v3->_spatialAudioModeButton = initForControlCenter3;

    [(MediaControlsExpandableButton *)v3->_spatialAudioModeButton setMaximumExpandedSize:0.0, 226.0];
    [(MediaControlsExpandableButton *)v3->_spatialAudioModeButton setButtonImageSize:54.0, 54.0];
    [(MediaControlsExpandableButton *)v3->_spatialAudioModeButton setContentVerticalAlignment:1];
    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_spatialAudioModeButton];
    initForControlCenter4 = [[MediaControlsExpandableButton alloc] initForControlCenter];
    conversationAwarenessButton = v3->_conversationAwarenessButton;
    v3->_conversationAwarenessButton = initForControlCenter4;

    [(MediaControlsExpandableButton *)v3->_conversationAwarenessButton setMaximumExpandedSize:0.0, 226.0];
    [(MediaControlsExpandableButton *)v3->_conversationAwarenessButton setButtonImageSize:54.0, 54.0];
    [(MediaControlsExpandableButton *)v3->_conversationAwarenessButton setContentVerticalAlignment:1];
    [(MRUVolumeBackgroundView *)v3 addSubview:v3->_conversationAwarenessButton];
    [(MRUVolumeBackgroundView *)v3 updateVisibility];
  }

  return v3;
}

- (void)layoutSubviewsHorizontal
{
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setAxis:1];
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setAxis:1];
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setAxis:1];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setAxis:1];
  v3 = self->_showSecondaryAssetView && self->_showSpatialAudioModeButton;
  [(MRUVolumeNowPlayingView *)self->_nowPlayingView setAxis:v3];
  traitCollection = [(MRUVolumeBackgroundView *)self traitCollection];
  [traitCollection displayScale];
  v49 = v5;

  MRUExpandedContentInsets(v6, v7);
  MRUHortizonalScreenInset(self);
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectInset();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  CCUISliderExpandedContentModuleWidth();
  CCUISliderExpandedContentModuleHeight();
  v52.origin.x = v9;
  v52.origin.y = v11;
  v52.size.width = v13;
  v52.size.height = v15;
  Width = CGRectGetWidth(v52);
  [(MRUVolumeBackgroundView *)self totalHorizontalSliderWidth];
  v18 = Width - v17;
  v19 = 2.0;
  if (self->_showSecondaryAssetView && self->_showSpatialAudioModeButton)
  {
    v19 = 3.0;
  }

  v20 = v18 / v19;
  v53.origin.x = v9;
  v53.origin.y = v11;
  v53.size.width = v13;
  v53.size.height = v15;
  CGRectGetMinX(v53);
  v50 = v20;
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectCenteredYInRectScale();
  v46 = v22;
  v47 = v21;
  v43 = v24;
  v45 = v23;
  v54.origin.x = v9;
  v54.origin.y = v11;
  v54.size.width = v13;
  v54.size.height = v15;
  CGRectGetMaxX(v54);
  [(MRUVolumeBackgroundView *)self bounds];
  UIRectCenteredYInRectScale();
  v40 = v26;
  v41 = v25;
  v38 = v28;
  v39 = v27;
  v55.origin.x = v9;
  v55.origin.y = v11;
  v55.size.width = v13;
  v55.size.height = v15;
  [MediaControlsExpandableButton collapsedHeightWithImageHeight:54.0 maximumHeight:CGRectGetHeight(v55) / 3.0, v49];
  v56.origin.x = v9;
  v56.origin.y = v11;
  v56.size.width = v13;
  v56.size.height = v15;
  MinX = CGRectGetMinX(v56);
  v57.origin.x = v9;
  v57.origin.y = v11;
  v57.size.width = v13;
  v57.size.height = v15;
  MinY = CGRectGetMinY(v57);
  v58.origin.x = v9;
  v58.origin.y = v11;
  v58.size.width = v13;
  v58.size.height = v15;
  Height = CGRectGetHeight(v58);
  v59.origin.y = v46;
  v59.origin.x = v47;
  v59.size.height = v43;
  v59.size.width = v45;
  MaxX = CGRectGetMaxX(v59);
  v60.origin.x = v9;
  v60.origin.y = v11;
  v60.size.width = v13;
  v60.size.height = v15;
  v44 = CGRectGetMinY(v60);
  v61.origin.x = v9;
  v61.origin.y = v11;
  v61.size.width = v13;
  v61.size.height = v15;
  v42 = CGRectGetHeight(v61);
  v62.origin.y = v40;
  v62.origin.x = v41;
  v62.size.height = v38;
  v62.size.width = v39;
  CGRectGetMaxX(v62);
  v63.origin.x = v9;
  v63.origin.y = v11;
  v63.size.width = v13;
  v63.size.height = v15;
  CGRectGetMinY(v63);
  v64.origin.x = v9;
  v64.origin.y = v11;
  v64.size.width = v13;
  v64.size.height = v15;
  CGRectGetHeight(v64);
  UIRectInset();
  if (self->_showSecondaryAssetView || self->_showNowPlayingView)
  {
    UIRectInset();
  }

  UIRectIntegralWithScale();
  [(MRUOutputDeviceAssetView *)self->_primaryAssetView setFrame:?];
  UIRectInset();
  UIRectIntegralWithScale();
  [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setFrame:?];
  if (self->_showSecondaryAssetView)
  {
    if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      goto LABEL_21;
    }

    if (self->_showSecondaryAssetView)
    {
      goto LABEL_20;
    }
  }

  if (!self->_showSpatialAudioModeButton)
  {
    goto LABEL_17;
  }

  if (self->_showConversationAwarenessButton)
  {
    if (![(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      goto LABEL_20;
    }

    if (!self->_showSpatialAudioModeButton)
    {
LABEL_17:
      if (!self->_showConversationAwarenessButton)
      {
        goto LABEL_19;
      }
    }
  }

  if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
  {
LABEL_19:
    if ([(MediaControlsExpandableButton *)self->_primaryListeningModeButton isExpanded])
    {
      goto LABEL_21;
    }
  }

LABEL_20:
  UIRectInset();
LABEL_21:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setFrame:?];
  if (![(MediaControlsExpandableButton *)self->_secondaryListeningModeButton isExpanded])
  {
    UIRectInset();
  }

  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setFrame:?];
  if (self->_showSecondaryAssetView)
  {
    isExpanded = [(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded];
    v35 = v42;
    v33 = v44;
    v34 = v50;
    v32 = MaxX;
    if (isExpanded)
    {
      goto LABEL_34;
    }

    if (self->_showSecondaryAssetView)
    {
      goto LABEL_33;
    }
  }

  if (!self->_showPrimaryListeningModeButton)
  {
    goto LABEL_30;
  }

  if (self->_showConversationAwarenessButton)
  {
    if (![(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded:v32])
    {
      goto LABEL_33;
    }

    if (!self->_showPrimaryListeningModeButton)
    {
LABEL_30:
      if (!self->_showConversationAwarenessButton)
      {
        goto LABEL_32;
      }
    }
  }

  if ([(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
  {
LABEL_32:
    if ([(MediaControlsExpandableButton *)self->_spatialAudioModeButton isExpanded])
    {
      goto LABEL_34;
    }
  }

LABEL_33:
  UIRectInset();
LABEL_34:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setFrame:?];
  if (!self->_showPrimaryListeningModeButton)
  {
    goto LABEL_39;
  }

  if (self->_showSpatialAudioModeButton)
  {
    if (![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
    {
LABEL_42:
      UIRectInset();
      goto LABEL_43;
    }

    if (!self->_showPrimaryListeningModeButton)
    {
      goto LABEL_39;
    }
  }

  if (![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
  {
    goto LABEL_42;
  }

LABEL_39:
  if (self->_showSpatialAudioModeButton && ![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded]|| ![(MediaControlsExpandableButton *)self->_conversationAwarenessButton isExpanded])
  {
    goto LABEL_42;
  }

LABEL_43:
  UIRectIntegralWithScale();
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setFrame:?];
  [(MRUVolumeNowPlayingView *)self->_nowPlayingView sizeThatFits:v50, Height];
  v65.origin.x = MinX;
  v65.origin.y = MinY;
  v65.size.width = v50;
  v65.size.height = Height;
  CGRectGetMidY(v65);
  UIRectCenteredXInRectScale();
  if (self->_showSecondaryAssetView)
  {
    v66.origin.x = MaxX;
    v66.origin.y = v44;
    v66.size.width = v50;
    v66.size.height = v42;
    CGRectGetMidY(v66);
    UIRectCenteredXInRectScale();
  }

  nowPlayingView = self->_nowPlayingView;

  [(MRUVolumeNowPlayingView *)nowPlayingView setFrame:?];
}

- (void)setShowSecondaryAssetView:(BOOL)view
{
  self->_showSecondaryAssetView = view;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowNowPlayingView:(BOOL)view
{
  self->_showNowPlayingView = view;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowPrimaryListeningModeButton:(BOOL)button
{
  self->_showPrimaryListeningModeButton = button;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowSecondaryListeningModeButton:(BOOL)button
{
  self->_showSecondaryListeningModeButton = button;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowSpatialAudioModeButton:(BOOL)button
{
  self->_showSpatialAudioModeButton = button;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowConversationAwarenessButton:(BOOL)button
{
  self->_showConversationAwarenessButton = button;
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (void)setShowEnvironmentSlider:(BOOL)slider
{
  if (self->_showEnvironmentSlider != slider)
  {
    self->_showEnvironmentSlider = slider;
    [(MRUVolumeBackgroundView *)self setNeedsLayout];
  }
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUOutputDeviceAssetView *)self->_primaryAssetView setStylingProvider:v6];
    [(MRUOutputDeviceAssetView *)self->_secondaryAssetView setStylingProvider:v6];
    [(MRUVolumeNowPlayingView *)self->_nowPlayingView setStylingProvider:v6];
    [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setStylingProvider:v6];
    [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setStylingProvider:v6];
    [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setStylingProvider:v6];
    [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setStylingProvider:v6];
    providerCopy = v6;
  }
}

- (void)expandButton:(id)button
{
  buttonCopy = button;
  [(MediaControlsExpandableButton *)buttonCopy setExpanded:1];
  p_primaryListeningModeButton = &self->_primaryListeningModeButton;
  primaryListeningModeButton = self->_primaryListeningModeButton;
  if (primaryListeningModeButton == buttonCopy)
  {
    primaryListeningModeButton = self->_secondaryListeningModeButton;
    p_primaryListeningModeButton = &self->_secondaryListeningModeButton;
LABEL_6:
    [(MediaControlsExpandableButton *)primaryListeningModeButton setExpanded:0];
    [(MediaControlsExpandableButton *)*p_primaryListeningModeButton setUserInteractionEnabled:0];
    goto LABEL_7;
  }

  if (self->_secondaryListeningModeButton == buttonCopy || self->_spatialAudioModeButton == buttonCopy)
  {
    goto LABEL_6;
  }

LABEL_7:
  [(MRUVolumeBackgroundView *)self updateVisibility];
}

- (void)collapseExpandableButtons
{
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setExpanded:0];
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setExpanded:0];
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setExpanded:0];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setExpanded:0];
  [(MediaControlsExpandableButton *)self->_primaryListeningModeButton setUserInteractionEnabled:1];
  [(MediaControlsExpandableButton *)self->_secondaryListeningModeButton setUserInteractionEnabled:1];
  [(MediaControlsExpandableButton *)self->_spatialAudioModeButton setUserInteractionEnabled:1];
  [(MediaControlsExpandableButton *)self->_conversationAwarenessButton setUserInteractionEnabled:1];
  [(MRUVolumeBackgroundView *)self updateVisibility];

  [(MRUVolumeBackgroundView *)self setNeedsLayout];
}

- (double)totalHorizontalSliderWidth
{
  if (self->_showSecondaryAssetView)
  {
    if (self->_showSpatialAudioModeButton)
    {
      CCUISliderExpandedContentModuleWidth();
      return v3 + v3;
    }

    goto LABEL_5;
  }

  if (self->_showEnvironmentSlider)
  {
LABEL_5:

    return MRUDefaultExpandedWidth(self, a2);
  }

  CCUISliderExpandedContentModuleWidth();
  return result;
}

@end