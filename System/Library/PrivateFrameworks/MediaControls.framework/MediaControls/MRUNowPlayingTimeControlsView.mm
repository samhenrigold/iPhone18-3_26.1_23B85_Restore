@interface MRUNowPlayingTimeControlsView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUNowPlayingTimeControlsView)initWithFrame:(CGRect)frame;
- (double)timeLabelsAlpha;
- (id)viewForLastBaselineLayout;
- (int64_t)labelStyle;
- (void)layoutSubviews;
- (void)layoutSubviewsLive;
- (void)layoutTimeLabels;
- (void)setContentScale:(double)scale;
- (void)setLayout:(int64_t)layout;
- (void)setLeftAlignLive:(BOOL)live;
- (void)setOnScreen:(BOOL)screen;
- (void)setSliderExpansionFactor:(double)factor;
- (void)setSliderHeight:(double)height;
- (void)setStylingProvider:(id)provider;
- (void)setTimeControls:(id)controls forPresentationInterval:(id)interval;
- (void)sliderTouchCancel:(id)cancel;
- (void)sliderValueChanged:(id)changed;
- (void)updateBackgroundMask;
- (void)updateBacklightLuminance;
- (void)updateContentSizeCategory;
- (void)updateDisplayLink;
- (void)updateDisplayLinkPaused;
- (void)updateElapsedTime;
- (void)updateElapsedTimeForDate:(id)date;
- (void)updateElapsedTimeOnDisplayLinkTick:(id)tick;
- (void)updateElapsedTimeWithElapsedTime:(double)time;
- (void)updateElapsedTimeWithThrottle;
- (void)updateVisibility;
- (void)updateVisualStyling;
@end

@implementation MRUNowPlayingTimeControlsView

- (MRUNowPlayingTimeControlsView)initWithFrame:(CGRect)frame
{
  v52[6] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = MRUNowPlayingTimeControlsView;
  v3 = [(MRUNowPlayingTimeControlsView *)&v49 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_sliderHeight = 7.0;
    v5 = objc_alloc_init(MRUSlider);
    slider = v4->_slider;
    v4->_slider = v5;

    [(MRUSlider *)v4->_slider setHitRectInset:-24.0, -24.0, -24.0, -24.0];
    [(MRUSlider *)v4->_slider setExpansionFactor:1.71428571];
    [(MRUSlider *)v4->_slider setStretchLimit:8.0];
    [(MRUSlider *)v4->_slider setSemanticContentAttribute:3];
    objc_initWeak(&location, v4);
    v43 = MEMORY[0x1E69E9820];
    v44 = 3221225472;
    v45 = __47__MRUNowPlayingTimeControlsView_initWithFrame___block_invoke;
    v46 = &unk_1E7664140;
    objc_copyWeak(&v47, &location);
    [(MRUSlider *)v4->_slider setAnimations:&v43];
    [(MRUSlider *)v4->_slider addTarget:v4 action:sel_sliderTouchDown_ forControlEvents:1, v43, v44, v45, v46];
    [(MRUSlider *)v4->_slider addTarget:v4 action:sel_sliderValueChanged_ forControlEvents:4544];
    [(MRUSlider *)v4->_slider addTarget:v4 action:sel_sliderTouchCancel_ forControlEvents:256];
    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_slider];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    elapsedTimeLabel = v4->_elapsedTimeLabel;
    v4->_elapsedTimeLabel = v7;

    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_elapsedTimeLabel];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    remainingTimeLabel = v4->_remainingTimeLabel;
    v4->_remainingTimeLabel = v9;

    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_remainingTimeLabel];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    liveLabel = v4->_liveLabel;
    v4->_liveLabel = v11;

    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_liveLabel];
    v13 = objc_alloc_init(MEMORY[0x1E6979380]);
    liveBackgroundMask = v4->_liveBackgroundMask;
    v4->_liveBackgroundMask = v13;

    [(CAGradientLayer *)v4->_liveBackgroundMask setStartPoint:0.0, 0.0];
    [(CAGradientLayer *)v4->_liveBackgroundMask setEndPoint:1.0, 0.0];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    v16 = blackColor;
    v52[0] = [blackColor CGColor];
    blackColor2 = [MEMORY[0x1E69DC888] blackColor];
    v18 = blackColor2;
    v52[1] = [blackColor2 CGColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v20 = clearColor;
    v52[2] = [clearColor CGColor];
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    v22 = clearColor2;
    v52[3] = [clearColor2 CGColor];
    blackColor3 = [MEMORY[0x1E69DC888] blackColor];
    v24 = blackColor3;
    v52[4] = [blackColor3 CGColor];
    blackColor4 = [MEMORY[0x1E69DC888] blackColor];
    v26 = blackColor4;
    v52[5] = [blackColor4 CGColor];
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:6];
    [(CAGradientLayer *)v4->_liveBackgroundMask setColors:v27];

    v28 = objc_alloc_init(MEMORY[0x1E69DD250]);
    liveBackground = v4->_liveBackground;
    v4->_liveBackground = v28;

    v30 = v4->_liveBackgroundMask;
    layer = [(UIView *)v4->_liveBackground layer];
    [layer setMask:v30];

    [(MRUNowPlayingTimeControlsView *)v4 addSubview:v4->_liveBackground];
    v32 = objc_alloc_init(MEMORY[0x1E6988158]);
    elapsedTimeFormatter = v4->_elapsedTimeFormatter;
    v4->_elapsedTimeFormatter = v32;

    [(AVTimeFormatter *)v4->_elapsedTimeFormatter setStyle:1];
    v34 = objc_alloc_init(MEMORY[0x1E6988158]);
    remainingTimeFormatter = v4->_remainingTimeFormatter;
    v4->_remainingTimeFormatter = v34;

    [(AVTimeFormatter *)v4->_remainingTimeFormatter setStyle:2];
    v36 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\d" options:0 error:0];
    regexNumberDecimalDigit = v4->_regexNumberDecimalDigit;
    v4->_regexNumberDecimalDigit = v36;

    v4->_contentScale = 1.0;
    v51 = objc_opt_class();
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v39 = [(MRUNowPlayingTimeControlsView *)v4 registerForTraitChanges:v38 withAction:sel_updateContentSizeCategory];

    v50[0] = objc_opt_class();
    v50[1] = objc_opt_class();
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
    v41 = [(MRUNowPlayingTimeControlsView *)v4 registerForTraitChanges:v40 withAction:sel_updateBacklightLuminance];

    [(MRUNowPlayingTimeControlsView *)v4 updateContentSizeCategory];
    [(MRUNowPlayingTimeControlsView *)v4 updateVisibility];
    [(MRUNowPlayingTimeControlsView *)v4 setAccessibilityIdentifier:@"UIA.MediaControls.NowPlaying.TimeControlsView"];
    objc_destroyWeak(&v47);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __47__MRUNowPlayingTimeControlsView_initWithFrame___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateVisualStyling];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 layoutTimeLabels];
}

- (void)layoutSubviews
{
  v103.receiver = self;
  v103.super_class = MRUNowPlayingTimeControlsView;
  [(MRUNowPlayingTimeControlsView *)&v103 layoutSubviews];
  if ([(MRUTimeControls *)self->_timeControls isLive])
  {
    [(MRUNowPlayingTimeControlsView *)self layoutSubviewsLive];
    return;
  }

  [(MRUNowPlayingTimeControlsView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [traitCollection displayScale];

  layout = self->_layout;
  if (layout == 4)
  {
    v112.origin.x = v4;
    v112.origin.y = v6;
    v112.size.width = v8;
    v112.size.height = v10;
    MinX = CGRectGetMinX(v112);
    v113.origin.x = v4;
    v113.origin.y = v6;
    v113.size.width = v8;
    v113.size.height = v10;
    MinY = CGRectGetMinY(v113);
    v114.origin.x = v4;
    v114.origin.y = v6;
    v114.size.width = v8;
    v114.size.height = v10;
    Width = CGRectGetWidth(v114);
    sliderHeight = self->_sliderHeight;
    [(MRUSlider *)self->_slider setFrame:MinX, MinY, Width, sliderHeight];
    v115.origin.x = MinX;
    v115.origin.y = MinY;
    v115.size.width = Width;
    v115.size.height = sliderHeight;
    CGRectGetMaxY(v115);
    UIRectInset();
    v37 = v36;
    v98 = v36;
    v39 = v38;
    v41 = v40;
    v43 = v42;
    [(UILabel *)self->_elapsedTimeLabel sizeThatFits:v40, v42];
    MRUSizeCeilToViewScale(self, v44, v45);
    v116.origin.x = v37;
    v116.origin.y = v39;
    v116.size.width = v41;
    v116.size.height = v43;
    CGRectGetMinY(v116);
    UIRectIntegralWithScale();
    [(UILabel *)self->_elapsedTimeLabel setFrame:?];
    [(UILabel *)self->_remainingTimeLabel sizeThatFits:v41, v43];
    MRUSizeCeilToViewScale(self, v46, v47);
    v117.origin.x = v98;
    v117.origin.y = v39;
    v117.size.width = v41;
    v117.size.height = v43;
    CGRectGetMaxX(v117);
    v118.origin.x = v98;
    v118.origin.y = v39;
    v118.size.width = v41;
    v118.size.height = v43;
    v13 = MinX;
    v16 = MinY;
    CGRectGetMinY(v118);
    goto LABEL_9;
  }

  if (layout == 3)
  {
    v106.origin.x = v4;
    v106.origin.y = v6;
    v106.size.width = v8;
    v106.size.height = v10;
    CGRectGetMinX(v106);
    v107.origin.x = v4;
    v107.origin.y = v6;
    v107.size.width = v8;
    v107.size.height = v10;
    CGRectGetWidth(v107);
    traitCollection2 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    [traitCollection2 displayScale];
    v94 = v18;
    UIRectCenteredYInRectScale();
    v13 = v19;
    v21 = v20;
    v99 = v22;
    v101 = v20;
    v23 = v22;
    sliderHeight = v24;

    [(MRUSlider *)self->_slider setFrame:v13, v21, v23, sliderHeight, v94];
    v108.origin.x = v13;
    v108.origin.y = v21;
    v108.size.width = v23;
    v108.size.height = sliderHeight;
    CGRectGetMaxY(v108);
    UIRectInset();
    v26 = v25;
    v97 = v27;
    v29 = v28;
    v31 = v30;
    [(UILabel *)self->_elapsedTimeLabel sizeThatFits:v28, v30];
    MRUSizeCeilToViewScale(self, v32, v33);
    v109.origin.x = v26;
    v109.origin.y = v97;
    v109.size.width = v29;
    v109.size.height = v31;
    CGRectGetMinY(v109);
    UIRectIntegralWithScale();
    [(UILabel *)self->_elapsedTimeLabel setFrame:?];
    [(UILabel *)self->_remainingTimeLabel sizeThatFits:v29, v31];
    MRUSizeCeilToViewScale(self, v34, v35);
    v110.origin.x = v26;
    v110.origin.y = v97;
    v110.size.width = v29;
    v110.size.height = v31;
    CGRectGetMaxX(v110);
    v111.origin.x = v26;
    v111.origin.y = v97;
    v111.size.width = v29;
    v111.size.height = v31;
    v16 = v101;
    CGRectGetMinY(v111);
    Width = v99;
LABEL_9:
    UIRectIntegralWithScale();
    remainingTimeLabel = self->_remainingTimeLabel;
LABEL_15:
    [remainingTimeLabel setFrame:{v48, v49, v50, v51, v93}];
    goto LABEL_16;
  }

  if (layout != 2)
  {
    [(UILabel *)self->_elapsedTimeLabel sizeThatFits:v8, v10];
    MRUSizeCeilToViewScale(self, v53, v54);
    traitCollection3 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    [traitCollection3 displayScale];
    v95 = v56;
    UIRectCenteredYInRectScale();
    v58 = v57;
    v60 = v59;
    v62 = v61;
    v64 = v63;

    [(UILabel *)self->_elapsedTimeLabel setFrame:v58, v60, v62, v64, v95];
    if (([(UILabel *)self->_elapsedTimeLabel isHidden]& 1) == 0)
    {
      v119.origin.x = v58;
      v119.origin.y = v60;
      v119.size.width = v62;
      v119.size.height = v64;
      CGRectGetWidth(v119);
      UIRectInset();
      v4 = v65;
      v6 = v66;
      v8 = v67;
      v10 = v68;
    }

    [(UILabel *)self->_remainingTimeLabel sizeThatFits:v8, v10];
    MRUSizeCeilToViewScale(self, v69, v70);
    v120.origin.x = v4;
    v120.origin.y = v6;
    v120.size.width = v8;
    v120.size.height = v10;
    CGRectGetMaxX(v120);
    traitCollection4 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    [traitCollection4 displayScale];
    v96 = v72;
    UIRectCenteredYInRectScale();
    v74 = v73;
    v76 = v75;
    v78 = v77;
    v80 = v79;

    [(UILabel *)self->_remainingTimeLabel setFrame:v74, v76, v78, v80, v96];
    if (([(UILabel *)self->_remainingTimeLabel isHidden]& 1) == 0)
    {
      v121.origin.x = v74;
      v121.origin.y = v76;
      v121.size.width = v78;
      v121.size.height = v80;
      CGRectGetWidth(v121);
      UIRectInset();
      v4 = v81;
      v6 = v82;
      v8 = v83;
      v10 = v84;
    }

    v122.origin.x = v4;
    v122.origin.y = v6;
    v122.size.width = v8;
    v122.size.height = v10;
    CGRectGetMinX(v122);
    v123.origin.x = v4;
    v123.origin.y = v6;
    v123.size.width = v8;
    v123.size.height = v10;
    CGRectGetWidth(v123);
    traitCollection5 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    [traitCollection5 displayScale];
    v93 = v86;
    UIRectCenteredYInRectScale();
    v13 = v87;
    v16 = v88;
    Width = v89;
    sliderHeight = v90;

    remainingTimeLabel = self->_slider;
    v48 = v13;
    v49 = v16;
    v50 = Width;
    v51 = sliderHeight;
    goto LABEL_15;
  }

  v104.origin.x = v4;
  v104.origin.y = v6;
  v104.size.width = v8;
  v104.size.height = v10;
  v13 = CGRectGetMinX(v104);
  v105.origin.x = v4;
  v105.origin.y = v6;
  v105.size.width = v8;
  v105.size.height = v10;
  Width = CGRectGetWidth(v105);
  sliderHeight = self->_sliderHeight;
  v16 = 0.0;
  [(MRUSlider *)self->_slider setFrame:v13, 0.0, Width, sliderHeight];
  [(MRUNowPlayingTimeControlsView *)self layoutTimeLabels];
LABEL_16:
  v124.origin.x = v13;
  v124.origin.y = v16;
  v124.size.width = Width;
  v124.size.height = sliderHeight;
  v91 = -CGRectGetMinX(v124);
  v125.origin.x = v13;
  v125.origin.y = v16;
  v125.size.width = Width;
  v125.size.height = sliderHeight;
  MaxX = CGRectGetMaxX(v125);
  [(MRUNowPlayingTimeControlsView *)self bounds];
  [(MRUSlider *)self->_slider setHitRectInset:-24.0, v91, -24.0, MaxX - CGRectGetWidth(v126)];
}

- (void)layoutSubviewsLive
{
  [(MRUNowPlayingTimeControlsView *)self bounds];
  y = v28.origin.y;
  x = v28.origin.x;
  width = v28.size.width;
  height = v28.size.height;
  v29 = CGRectInset(v28, 20.0, 0.0);
  [(UILabel *)self->_liveLabel sizeThatFits:v29.size.width, v29.size.height];
  UIRectGetCenter();
  traitCollection = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [traitCollection displayScale];
  UIRectCenteredAboutPointScale();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(UILabel *)self->_liveLabel setFrame:v7, v9, v11, v13];
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  CGRectGetWidth(v30);
  traitCollection2 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [traitCollection2 displayScale];
  v24 = v15;
  UIRectCenteredYInRectScale();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;

  [(UIView *)self->_liveBackground setFrame:v17, v19, v21, v23, v24];
  v31.origin.x = v17;
  v31.origin.y = v19;
  v31.size.width = v21;
  v31.size.height = v23;
  [(UIView *)self->_liveBackground _setContinuousCornerRadius:CGRectGetHeight(v31) * 0.5];

  [(MRUNowPlayingTimeControlsView *)self updateBackgroundMask];
}

- (void)layoutTimeLabels
{
  if (self->_layout == 2)
  {
    v3 = 0.0;
    if ([(MRUSlider *)self->_slider isTracking])
    {
      sliderHeight = self->_sliderHeight;
      [(MRUSlider *)self->_slider expansionFactor];
      v3 = -(self->_sliderHeight - sliderHeight * v5) * 0.5;
    }

    [(MRUNowPlayingTimeControlsView *)self bounds];
    [(MRUSlider *)self->_slider frame];
    UIRectInset();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(UILabel *)self->_elapsedTimeLabel sizeThatFits:v10, v12];
    v36 = MRUSizeCeilToViewScale(self, v14, v15);
    v37 = v16;
    v17 = v16;
    v41.origin.x = v7;
    v41.origin.y = v9;
    v41.size.width = v11;
    v41.size.height = v13;
    v18 = v3;
    v19 = v3 + CGRectGetMinY(v41);
    [(UILabel *)self->_elapsedTimeLabel bounds];
    v38 = v20;
    v39 = v21;
    [(UILabel *)self->_elapsedTimeLabel setFrame:0.0, v19, v36, v17];
    [(UILabel *)self->_remainingTimeLabel sizeThatFits:v11, v13];
    v24 = MRUSizeCeilToViewScale(self, v22, v23);
    v26 = v25;
    v42.origin.x = v7;
    v42.origin.y = v9;
    v42.size.width = v11;
    v42.size.height = v13;
    v27 = CGRectGetMaxX(v42) - v24;
    v43.origin.x = v7;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v13;
    v28 = v18 + CGRectGetMinY(v43);
    [(UILabel *)self->_remainingTimeLabel bounds];
    v30 = v29;
    v32 = v31;
    [(UILabel *)self->_remainingTimeLabel setFrame:v27, v28, v24, v26];
    if (v38 != v36 || v39 != v37 || v30 != v24 || v32 != v26)
    {

      [(MRUNowPlayingTimeControlsView *)self invalidateIntrinsicContentSize];
    }
  }
}

- (CGSize)intrinsicContentSize
{
  if (self->_layout == 2)
  {
    [(UILabel *)self->_elapsedTimeLabel intrinsicContentSize];
    MRUSizeCeilToViewScale(self, v3, v4);
    v6 = v5 + self->_sliderHeight + 6.0;
    v7 = 0.0;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = MRUNowPlayingTimeControlsView;
    [(MRUNowPlayingTimeControlsView *)&v8 intrinsicContentSize];
  }

  result.height = v6;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  layout = self->_layout;
  if (layout == 4)
  {
    contentScale = self->_contentScale;
    v7 = 28.0;
LABEL_9:
    v6 = contentScale * v7;
    goto LABEL_10;
  }

  if (layout != 2)
  {
    if (layout == 1)
    {
      contentScale = 24.0;
    }

    else
    {
      contentScale = 44.0;
    }

    v7 = self->_contentScale;
    goto LABEL_9;
  }

  [(MRUNowPlayingTimeControlsView *)self intrinsicContentSize:fits.width];
LABEL_10:
  v8 = width;
  result.height = v6;
  result.width = v8;
  return result;
}

- (id)viewForLastBaselineLayout
{
  if (self->_layout == 2)
  {
    viewForLastBaselineLayout = self->_elapsedTimeLabel;
  }

  else
  {
    v4.receiver = self;
    v4.super_class = MRUNowPlayingTimeControlsView;
    viewForLastBaselineLayout = [(MRUNowPlayingTimeControlsView *)&v4 viewForLastBaselineLayout];
  }

  return viewForLastBaselineLayout;
}

- (void)setTimeControls:(id)controls forPresentationInterval:(id)interval
{
  objc_storeStrong(&self->_timeControls, controls);
  controlsCopy = controls;
  intervalCopy = interval;
  [controlsCopy startTime];
  *&v9 = v9;
  [(MRUSlider *)self->_slider setMinimumValue:v9];
  objc_msgSend_duration(controlsCopy);
  *&v10 = v10;
  [(MRUSlider *)self->_slider setMaximumValue:v10];
  scrubbable = [controlsCopy scrubbable];
  slider = [(MRUNowPlayingTimeControlsView *)self slider];
  [slider setEnabled:scrubbable];

  isEnabled = [controlsCopy isEnabled];
  slider2 = [(MRUNowPlayingTimeControlsView *)self slider];
  [slider2 setMinimumTrackVisible:isEnabled];

  liveText = [controlsCopy liveText];

  liveLabel = [(MRUNowPlayingTimeControlsView *)self liveLabel];
  [liveLabel setText:liveText];

  startDate = [intervalCopy startDate];

  [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeForDate:startDate];
  [(MRUNowPlayingTimeControlsView *)self updateDisplayLinkPaused];
  [(MRUNowPlayingTimeControlsView *)self updateVisibility];

  [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUSlider *)self->_slider setStylingProvider:v6];
    [(MRUNowPlayingTimeControlsView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    [(MRUNowPlayingTimeControlsView *)self updateDisplayLink];
  }
}

- (void)setLayout:(int64_t)layout
{
  if (self->_layout != layout)
  {
    self->_layout = layout;
    [(MRUNowPlayingTimeControlsView *)self updateContentSizeCategory];
    [(MRUSlider *)self->_slider setStretchLimit:MRUNowPlayingTimeControlsStretchLimit(layout)];

    [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
  }
}

- (void)setLeftAlignLive:(BOOL)live
{
  if (self->_leftAlignLive != live)
  {
    self->_leftAlignLive = live;
    [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
  }
}

- (void)setSliderHeight:(double)height
{
  if (self->_sliderHeight != height)
  {
    self->_sliderHeight = height;
    [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
  }
}

- (void)setSliderExpansionFactor:(double)factor
{
  if (self->_sliderExpansionFactor != factor)
  {
    self->_sliderExpansionFactor = factor;
    [(MRUSlider *)self->_slider setExpansionFactor:?];

    [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
  }
}

- (void)setContentScale:(double)scale
{
  if (vabdd_f64(self->_contentScale, scale) > 2.22044605e-16)
  {
    self->_contentScale = scale;
    [(MRUNowPlayingTimeControlsView *)self updateContentSizeCategory];
  }
}

- (void)sliderValueChanged:(id)changed
{
  changedCopy = changed;
  [changedCopy value];
  [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeWithElapsedTime:v4];
  if (self->_layout != 2)
  {
    [(MRUNowPlayingTimeControlsView *)self layoutIfNeeded];
  }

  if (([changedCopy isTracking] & 1) == 0)
  {
    [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeWithThrottle];
  }
}

- (void)sliderTouchCancel:(id)cancel
{
  [(MRUNowPlayingTimeControlsView *)self updateDisplayLinkPaused];

  [(MRUNowPlayingTimeControlsView *)self updateElapsedTime];
}

- (CGRect)hitRect
{
  if (self->_layout == 2)
  {
    v23.receiver = self;
    v23.super_class = MRUNowPlayingTimeControlsView;
    [(MRUNowPlayingTimeControlsView *)&v23 hitRect];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(MRUSlider *)self->_slider hitRectInset];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = v4 + v13;
    v18 = v6 + v12;
    v20 = v8 - (v14 + v19);
    v21 = v10 - (v12 + v16);
  }

  else
  {
    v22.receiver = self;
    v22.super_class = MRUNowPlayingTimeControlsView;
    [(MRUNowPlayingTimeControlsView *)&v22 hitRect];
  }

  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(MRUNowPlayingTimeControlsView *)self hitRect];
  v10 = x;
  v11 = y;

  return CGRectContainsPoint(*&v6, *&v10);
}

- (void)updateBacklightLuminance
{
  [(MRUNowPlayingTimeControlsView *)self updateElapsedTime];

  [(MRUNowPlayingTimeControlsView *)self updateVisualStyling];
}

- (void)updateVisualStyling
{
  labelStyle = [(MRUNowPlayingTimeControlsView *)self labelStyle];
  stylingProvider = self->_stylingProvider;
  elapsedTimeLabel = self->_elapsedTimeLabel;
  traitCollection = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:labelStyle toView:elapsedTimeLabel traitCollection:traitCollection];

  v7 = self->_stylingProvider;
  remainingTimeLabel = self->_remainingTimeLabel;
  traitCollection2 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [(MRUVisualStylingProvider *)v7 applyStyle:labelStyle toView:remainingTimeLabel traitCollection:traitCollection2];

  v10 = self->_stylingProvider;
  liveLabel = self->_liveLabel;
  traitCollection3 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [(MRUVisualStylingProvider *)v10 applyStyle:labelStyle toView:liveLabel traitCollection:traitCollection3];

  v13 = self->_stylingProvider;
  liveBackground = self->_liveBackground;
  traitCollection4 = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  [(MRUVisualStylingProvider *)v13 applyStyle:3 toView:liveBackground traitCollection:traitCollection4];
}

- (int64_t)labelStyle
{
  if (([(MRUSlider *)self->_slider isTracking]& 1) != 0)
  {
    return 0;
  }

  traitCollection = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  mr_shouldDim = [traitCollection mr_shouldDim];

  if (mr_shouldDim)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (double)timeLabelsAlpha
{
  v3 = 1.0;
  if (([(MRUSlider *)self->_slider isTracking]& 1) == 0)
  {
    traitCollection = [(MRUNowPlayingTimeControlsView *)self traitCollection];
    mr_shouldDim = [traitCollection mr_shouldDim];

    if ((mr_shouldDim & 1) == 0)
    {
      if (self->_layout == 2)
      {
        return 0.5;
      }

      else
      {
        return 1.0;
      }
    }
  }

  return v3;
}

- (void)updateDisplayLink
{
  displayLink = self->_displayLink;
  if (self->_onScreen)
  {
    if (!displayLink)
    {
      v4 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_updateElapsedTimeOnDisplayLinkTick_];
      v5 = self->_displayLink;
      self->_displayLink = v4;

      v11 = CAFrameRateRangeMake(1.0, 30.0, 5.0);
      [(CADisplayLink *)self->_displayLink setPreferredFrameRateRange:*&v11.minimum, *&v11.maximum, *&v11.preferred];
      v6 = self->_displayLink;
      mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
      [(CADisplayLink *)v6 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

      [(MRUNowPlayingTimeControlsView *)self updateDisplayLinkPaused];
    }
  }

  else if (displayLink)
  {
    mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
    [(CADisplayLink *)displayLink removeFromRunLoop:mainRunLoop2 forMode:*MEMORY[0x1E695DA28]];

    [(CADisplayLink *)self->_displayLink invalidate];
    v9 = self->_displayLink;
    self->_displayLink = 0;
  }
}

- (void)updateDisplayLinkPaused
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = ([(MRUSlider *)self->_slider isTracking]& 1) != 0 || ([(MRUTimeControls *)self->_timeControls rate], v3 == 0.0) || ![(MRUTimeControls *)self->_timeControls isEnabled]|| self->_timeControls == 0;
  v5 = [(CADisplayLink *)self->_displayLink setPaused:v4];
  if (self->_debugPreviousDisplayLinkPaused != v4)
  {
    v6 = MCLogCategoryDefault(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      isTracking = [(MRUSlider *)self->_slider isTracking];
      timeControls = self->_timeControls;
      v10 = 138543874;
      v11 = v7;
      v12 = 1024;
      v13 = isTracking;
      v14 = 2114;
      v15 = timeControls;
      _os_log_impl(&dword_1A20FC000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ updateDisplayLinkPaused tracking: %{BOOL}u | time controls: %{public}@", &v10, 0x1Cu);
    }

    self->_debugPreviousDisplayLinkPaused = v4;
  }
}

- (void)updateElapsedTimeOnDisplayLinkTick:(id)tick
{
  [(MRUNowPlayingTimeControlsView *)self updateElapsedTime];

  [(MRUNowPlayingTimeControlsView *)self layoutIfNeeded];
}

- (void)updateElapsedTime
{
  v3 = [MEMORY[0x1E695DF00] now];
  [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeForDate:v3];
}

- (void)updateElapsedTimeForDate:(id)date
{
  dateCopy = date;
  if (([(MRUSlider *)self->_slider isTracking]& 1) == 0)
  {
    [(MRUTimeControls *)self->_timeControls elapsedTimeForDate:dateCopy];
    v5 = v4;
    *&v4 = v4;
    [(MRUSlider *)self->_slider setValue:v4];
    [(MRUNowPlayingTimeControlsView *)self updateElapsedTimeWithElapsedTime:v5];
  }
}

- (void)updateElapsedTimeWithElapsedTime:(double)time
{
  objc_msgSend_duration(self->_timeControls, a2);
  if (v5 <= time)
  {
    time = v5;
  }

  v13 = [(AVTimeFormatter *)self->_elapsedTimeFormatter stringFromSeconds:time];
  remainingTimeFormatter = self->_remainingTimeFormatter;
  objc_msgSend_duration(self->_timeControls);
  time = [(AVTimeFormatter *)remainingTimeFormatter stringFromSeconds:v7 - time];
  traitCollection = [(MRUNowPlayingTimeControlsView *)self traitCollection];
  if ([traitCollection mr_shouldDim])
  {
  }

  else
  {
    isEnabled = [(MRUTimeControls *)self->_timeControls isEnabled];

    if (isEnabled)
    {
      [(UILabel *)self->_elapsedTimeLabel setText:v13];
      [(UILabel *)self->_remainingTimeLabel setText:time];
      goto LABEL_8;
    }
  }

  v11 = -[NSRegularExpression stringByReplacingMatchesInString:options:range:withTemplate:](self->_regexNumberDecimalDigit, "stringByReplacingMatchesInString:options:range:withTemplate:", v13, 0, 0, [v13 length], @"–");
  [(UILabel *)self->_elapsedTimeLabel setText:v11];

  v12 = -[NSRegularExpression stringByReplacingMatchesInString:options:range:withTemplate:](self->_regexNumberDecimalDigit, "stringByReplacingMatchesInString:options:range:withTemplate:", time, 0, 0, [time length], @"–");
  [(UILabel *)self->_remainingTimeLabel setText:v12];

LABEL_8:
  [(MRUNowPlayingTimeControlsView *)self setNeedsLayout];
}

- (void)updateElapsedTimeWithThrottle
{
  [(MSVTimer *)self->_updateElapsedTimeThrottleTimer invalidate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__MRUNowPlayingTimeControlsView_updateElapsedTimeWithThrottle__block_invoke;
  v5[3] = &unk_1E7663898;
  v5[4] = self;
  v3 = [MEMORY[0x1E69B14D8] timerWithInterval:0 repeats:v5 block:0.05];
  updateElapsedTimeThrottleTimer = self->_updateElapsedTimeThrottleTimer;
  self->_updateElapsedTimeThrottleTimer = v3;
}

uint64_t __62__MRUNowPlayingTimeControlsView_updateElapsedTimeWithThrottle__block_invoke(uint64_t a1)
{
  [*(a1 + 32) updateDisplayLinkPaused];
  v2 = [*(a1 + 32) slider];
  [v2 value];
  v4 = v3;
  v5 = [*(a1 + 32) timeControls];
  [v5 setElapsedTime:v4];

  v6 = *(a1 + 32);

  return [v6 setUpdateElapsedTimeThrottleTimer:0];
}

- (void)updateBackgroundMask
{
  v13[5] = *MEMORY[0x1E69E9840];
  [(UIView *)self->_liveBackground bounds];
  [(CAGradientLayer *)self->_liveBackgroundMask setFrame:?];
  [(UIView *)self->_liveBackground frame];
  v3 = 20.0 / CGRectGetWidth(v14);
  [(UILabel *)self->_liveLabel frame];
  MinX = CGRectGetMinX(v15);
  [(UIView *)self->_liveBackground frame];
  v5 = MinX / CGRectGetWidth(v16);
  [(UILabel *)self->_liveLabel frame];
  MaxX = CGRectGetMaxX(v17);
  [(UIView *)self->_liveBackground frame];
  v7 = MaxX / CGRectGetWidth(v18);
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:{v5 - v3, &unk_1F148B268}];
  v13[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v13[2] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v7];
  v13[3] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v3 + v7];
  v13[4] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:5];
  [(CAGradientLayer *)self->_liveBackgroundMask setLocations:v12];
}

- (void)updateContentSizeCategory
{
  if (self->_layout == 2)
  {
    [MEMORY[0x1E69DB878] mru_ambientTimeFont];
  }

  else
  {
    [MEMORY[0x1E69DB878] mru_timeFontWithScale:self->_contentScale];
  }
  v3 = ;
  [(UILabel *)self->_elapsedTimeLabel setFont:v3];
  [(UILabel *)self->_remainingTimeLabel setFont:v3];
  [(UILabel *)self->_liveLabel setFont:v3];
}

- (void)updateVisibility
{
  isLive = [(MRUTimeControls *)self->_timeControls isLive];
  [(UILabel *)self->_elapsedTimeLabel setHidden:isLive];
  [(UILabel *)self->_remainingTimeLabel setHidden:isLive];
  [(MRUSlider *)self->_slider setHidden:isLive];
  [(UILabel *)self->_liveLabel setHidden:isLive ^ 1];
  liveBackground = self->_liveBackground;

  [(UIView *)liveBackground setHidden:isLive ^ 1];
}

@end