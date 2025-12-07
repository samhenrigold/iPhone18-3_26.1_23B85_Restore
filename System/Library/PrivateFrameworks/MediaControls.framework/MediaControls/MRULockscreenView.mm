@interface MRULockscreenView
- (CGRect)suggestionsFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRULockscreenView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentEdgeInsets;
- (void)layoutSubviews;
- (void)setContentEdgeInsets:(UIEdgeInsets)insets;
- (void)setOnScreen:(BOOL)screen;
- (void)setShowArtworkView:(BOOL)view;
- (void)setShowSuggestionsView:(BOOL)view;
- (void)setShowVolumeControlsView:(BOOL)view;
- (void)setStylingProvider:(id)provider;
- (void)setSuggestionsView:(id)view;
- (void)updateOnScreen;
- (void)updateTextAlignment;
- (void)updateVisibility;
@end

@implementation MRULockscreenView

- (MRULockscreenView)initWithFrame:(CGRect)frame
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = MRULockscreenView;
  v3 = [(MRULockscreenView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(MRULockscreenView *)v3 layer];
    [layer setHitTestsAsOpaque:1];

    v6 = objc_alloc_init(MRUNowPlayingHeaderView);
    headerView = v4->_headerView;
    v4->_headerView = v6;

    [(MRUNowPlayingHeaderView *)v4->_headerView setLayout:0];
    labelView = [(MRUNowPlayingHeaderView *)v4->_headerView labelView];
    [labelView setLayout:2];

    [(MRULockscreenView *)v4 addSubview:v4->_headerView];
    v9 = objc_alloc_init(MRUNowPlayingTimeControlsView);
    timeControlsView = v4->_timeControlsView;
    v4->_timeControlsView = v9;

    [(MRUNowPlayingTimeControlsView *)v4->_timeControlsView setLayout:1];
    [(MRULockscreenView *)v4 addSubview:v4->_timeControlsView];
    v11 = objc_alloc_init(MRUNowPlayingTransportControlsView);
    transportControlsView = v4->_transportControlsView;
    v4->_transportControlsView = v11;

    [(MRUNowPlayingTransportControlsView *)v4->_transportControlsView setLayout:2];
    [(MRULockscreenView *)v4 addSubview:v4->_transportControlsView];
    v13 = objc_alloc_init(MRUNowPlayingVolumeControlsView);
    volumeControlsView = v4->_volumeControlsView;
    v4->_volumeControlsView = v13;

    [(MRUNowPlayingVolumeControlsView *)v4->_volumeControlsView setLayout:1];
    [(MRULockscreenView *)v4 addSubview:v4->_volumeControlsView];
    v15 = objc_alloc_init(MRUArtworkView);
    artworkView = v4->_artworkView;
    v4->_artworkView = v15;

    [(MRUArtworkView *)v4->_artworkView setStyle:1];
    [(MRUArtworkView *)v4->_artworkView setAnimation:1];
    pointerInteraction = [(MRUArtworkView *)v4->_artworkView pointerInteraction];
    [pointerInteraction setEnabled:1];

    [(MRULockscreenView *)v4 addSubview:v4->_artworkView];
    v4->_showArtworkView = 1;
    v4->_showVolumeControlsView = 1;
    [(MRULockscreenView *)v4 updateTextAlignment];
    [(MRULockscreenView *)v4 updateVisibility];
    [(MRULockscreenView *)v4 setAccessibilityIdentifier:@"UIA.MediaControls.LockscreenView"];
    v22[0] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
    v19 = [(MRULockscreenView *)v4 registerForTraitChanges:v18 withAction:sel_updateDimmed];
  }

  return v4;
}

- (void)layoutSubviews
{
  v91 = *MEMORY[0x1E69E9840];
  v86.receiver = self;
  v86.super_class = MRULockscreenView;
  [(MRULockscreenView *)&v86 layoutSubviews];
  bounds = [(MRULockscreenView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MCLogCategoryDefault(bounds);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v92.origin.x = v5;
    v92.origin.y = v7;
    v92.size.width = v9;
    v92.size.height = v11;
    v14 = NSStringFromCGRect(v92);
    *buf = 138543618;
    v88 = v13;
    v89 = 2114;
    v90 = v14;
    _os_log_impl(&dword_1A20FC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ frame: %{public}@", buf, 0x16u);
  }

  traitCollection = [(MRULockscreenView *)self traitCollection];
  [traitCollection displayScale];
  v85 = v16;

  [(MRULockscreenView *)self suggestionsFrame];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(UIView *)self->_suggestionsView setFrame:?];
  if (self->_showSuggestionsView)
  {
    v93.origin.x = v18;
    v93.origin.y = v20;
    v93.size.width = v22;
    v93.size.height = v24;
    CGRectGetHeight(v93);
    UIRectInset();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
  }

  else
  {
    top = self->_contentEdgeInsets.top;
    left = self->_contentEdgeInsets.left;
    v26 = v5 + left;
    v28 = v7 + top;
    v30 = v9 - (left + self->_contentEdgeInsets.right);
    v32 = v11 - (top + self->_contentEdgeInsets.bottom);
  }

  [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v30, v32];
  v36 = v35;
  v38 = v37;
  v94.origin.x = v26;
  v94.origin.y = v28;
  v94.size.width = v30;
  v94.size.height = v32;
  MinX = CGRectGetMinX(v94);
  v95.origin.x = v26;
  v95.origin.y = v28;
  v95.size.width = v30;
  v95.size.height = v32;
  MaxY = CGRectGetMaxY(v95);
  v41 = MaxY - v38;
  [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setFrame:MinX, MaxY - v38, v36, v38];
  if (self->_showVolumeControlsView)
  {
    v96.origin.x = MinX;
    v96.origin.y = v41;
    v96.size.width = v36;
    v96.size.height = v38;
    CGRectGetHeight(v96);
    UIRectInset();
    v26 = v42;
    v28 = v43;
    v30 = v44;
    v32 = v45;
  }

  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v30, v32];
  v47 = v46;
  v49 = v48;
  v97.origin.x = v26;
  v97.origin.y = v28;
  v97.size.width = v30;
  v97.size.height = v32;
  v50 = CGRectGetMinX(v97);
  v98.origin.x = v26;
  v98.origin.y = v28;
  v98.size.width = v30;
  v98.size.height = v32;
  v51 = CGRectGetMaxY(v98);
  v52 = v51 - v49;
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setFrame:v50, v51 - v49, v47, v49];
  v99.origin.x = v50;
  v99.origin.y = v52;
  v99.size.width = v47;
  v99.size.height = v49;
  CGRectGetHeight(v99);
  UIRectInset();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v57, v59];
  v100.origin.x = v54;
  v100.origin.y = v56;
  v100.size.width = v58;
  v100.size.height = v60;
  CGRectGetMinX(v100);
  v101.origin.x = v54;
  v101.origin.y = v56;
  v101.size.width = v58;
  v101.size.height = v60;
  CGRectGetMaxY(v101);
  UIRectInset();
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v68 = v67;
  [(MRULockscreenView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setFrame:?];
  v102.origin.x = v62;
  v102.origin.y = v64;
  v102.size.width = v66;
  v102.size.height = v68;
  CGRectGetHeight(v102);
  UIRectInset();
  v70 = v69;
  v72 = v71;
  v74 = v73;
  v76 = v75;
  if (!self->_showSuggestionsView && self->_showArtworkView)
  {
    UIRectInset();
    v70 = v77;
    v72 = v78;
    v74 = v79;
    v76 = v80;
  }

  v103.origin.x = v70;
  v103.origin.y = v72;
  v103.size.width = v74;
  v103.size.height = v76;
  CGRectGetMinX(v103);
  v104.origin.x = v70;
  v104.origin.y = v72;
  v104.size.width = v74;
  v104.size.height = v76;
  CGRectGetMinY(v104);
  [(MRULockscreenView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUArtworkView *)self->_artworkView setFrame:?];
  if (!self->_showSuggestionsView && self->_showArtworkView)
  {
    UIRectInset();
    v70 = v81;
    v72 = v82;
    v74 = v83;
    v76 = v84;
  }

  [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v74, v76];
  v105.origin.x = v70;
  v105.origin.y = v72;
  v105.size.width = v74;
  v105.size.height = v76;
  CGRectGetMinX(v105);
  v106.origin.x = v70;
  v106.origin.y = v72;
  v106.size.width = v74;
  v106.size.height = v76;
  CGRectGetMinY(v106);
  UIRectCenteredYInRectScale();
  [(MRULockscreenView *)self bounds];
  MPRectByApplyingUserInterfaceLayoutDirectionInRect();
  [(MRUNowPlayingHeaderView *)self->_headerView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  bottom = self->_contentEdgeInsets.bottom;
  v6 = self->_contentEdgeInsets.left + self->_contentEdgeInsets.right;
  if (self->_showSuggestionsView)
  {
    v7 = fits.height - bottom;
    [(UIView *)self->_suggestionsView sizeThatFits:fits.width];
    v9 = v7 - v8;
    v10 = bottom + v8;
  }

  else
  {
    v10 = bottom + self->_contentEdgeInsets.top;
    v9 = fits.height - v10;
  }

  v11 = width - v6;
  [(MRUNowPlayingHeaderView *)self->_headerView sizeThatFits:v11, v9];
  if (self->_showArtworkView && !self->_showSuggestionsView)
  {
    v13 = 57.0;
    if (v12 > 57.0)
    {
      v13 = v12;
    }

    v12 = v13 + 7.0;
  }

  v14 = v10 + v12;
  v15 = v9 - v12;
  [(MRUNowPlayingTimeControlsView *)self->_timeControlsView sizeThatFits:v11, v15];
  v17 = v15 - v16;
  v18 = v14 + v16;
  [(MRUNowPlayingTransportControlsView *)self->_transportControlsView sizeThatFits:v11, v17];
  v20 = v18 + v19 + 7.0;
  if (self->_showVolumeControlsView)
  {
    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView sizeThatFits:v11, v17 - (v19 + 7.0)];
    v20 = v20 + v21 + 7.0;
  }

  v22 = width;
  v23 = v20;
  result.height = v23;
  result.width = v22;
  return result;
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUArtworkView *)self->_artworkView setStylingProvider:v6];
    [(MRUNowPlayingHeaderView *)self->_headerView setStylingProvider:v6];
    [(MRUNowPlayingTimeControlsView *)self->_timeControlsView setStylingProvider:v6];
    [(MRUNowPlayingTransportControlsView *)self->_transportControlsView setStylingProvider:v6];
    [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setStylingProvider:v6];
    providerCopy = v6;
  }
}

- (void)setSuggestionsView:(id)view
{
  viewCopy = view;
  suggestionsView = self->_suggestionsView;
  if (suggestionsView != viewCopy)
  {
    [(UIView *)suggestionsView removeFromSuperview];
    objc_storeStrong(&self->_suggestionsView, view);
    [(MRULockscreenView *)self addSubview:viewCopy];
    v7 = MEMORY[0x1E69DD250];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __40__MRULockscreenView_setSuggestionsView___block_invoke;
    v11 = &unk_1E76639D0;
    v12 = viewCopy;
    selfCopy = self;
    [v7 performWithoutAnimation:&v8];
    [(MRULockscreenView *)self updateVisibility:v8];
    [(MRULockscreenView *)self setNeedsLayout];
  }
}

uint64_t __40__MRULockscreenView_setSuggestionsView___block_invoke(uint64_t a1)
{
  [*(a1 + 40) suggestionsFrame];
  [*(a1 + 32) setFrame:?];
  v2 = *(a1 + 32);

  return [v2 layoutIfNeeded];
}

- (void)setOnScreen:(BOOL)screen
{
  if (self->_onScreen != screen)
  {
    self->_onScreen = screen;
    [(MRULockscreenView *)self updateOnScreen];
  }
}

- (void)setShowArtworkView:(BOOL)view
{
  if (self->_showArtworkView != view)
  {
    self->_showArtworkView = view;
    [(MRULockscreenView *)self updateTextAlignment];
    [(MRULockscreenView *)self updateVisibility];

    [(MRULockscreenView *)self setNeedsLayout];
  }
}

- (void)setShowVolumeControlsView:(BOOL)view
{
  if (self->_showVolumeControlsView != view)
  {
    self->_showVolumeControlsView = view;
    [(MRULockscreenView *)self updateVisibility];

    [(MRULockscreenView *)self setNeedsLayout];
  }
}

- (void)setShowSuggestionsView:(BOOL)view
{
  if (self->_showSuggestionsView != view)
  {
    self->_showSuggestionsView = view;
    [(MRULockscreenView *)self updateTextAlignment];
    [(MRULockscreenView *)self updateVisibility];

    [(MRULockscreenView *)self setNeedsLayout];
  }
}

- (void)setContentEdgeInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentEdgeInsets.top, v3), vceqq_f64(*&self->_contentEdgeInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentEdgeInsets = insets;
    [(MRULockscreenView *)self setNeedsLayout];
  }
}

- (void)updateTextAlignment
{
  if (self->_showSuggestionsView)
  {
    v2 = 1;
  }

  else if (self->_showArtworkView)
  {
    v2 = 4;
  }

  else
  {
    v2 = 1;
  }

  [(MRUNowPlayingHeaderView *)self->_headerView setTextAlignment:v2];
}

- (void)updateOnScreen
{
  onScreen = self->_onScreen;
  if (onScreen)
  {
    traitCollection = [(MRULockscreenView *)self traitCollection];
    v5 = [traitCollection mr_shouldDim] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  labelView = [(MRUNowPlayingHeaderView *)self->_headerView labelView];
  [labelView setMarqueeEnabled:v5];

  if (onScreen)
  {
  }

  v7 = self->_onScreen;
  timeControlsView = self->_timeControlsView;

  [(MRUNowPlayingTimeControlsView *)timeControlsView setOnScreen:v7];
}

- (void)updateVisibility
{
  v3 = 0.0;
  if (!self->_showSuggestionsView && self->_showArtworkView)
  {
    v3 = 1.0;
  }

  [(MRUArtworkView *)self->_artworkView setAlpha:v3];
  if (self->_showArtworkView)
  {
    v4 = *(MEMORY[0x1E695EFD0] + 16);
    *&v9.a = *MEMORY[0x1E695EFD0];
    *&v9.c = v4;
    *&v9.tx = *(MEMORY[0x1E695EFD0] + 32);
  }

  else
  {
    CGAffineTransformMakeScale(&v9, 0.01, 0.01);
  }

  artworkView = self->_artworkView;
  v8 = v9;
  [(MRUArtworkView *)artworkView setTransform:&v8];
  if (self->_showVolumeControlsView)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.0;
  }

  [(MRUNowPlayingVolumeControlsView *)self->_volumeControlsView setAlpha:v6];
  if (self->_showSuggestionsView)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  [(UIView *)self->_suggestionsView setAlpha:v7];
}

- (CGRect)suggestionsFrame
{
  [(MRULockscreenView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)self->_suggestionsView sizeThatFits:v7, v9];
  v12 = v11;
  v14 = v13;
  v20.origin.x = v4;
  v20.origin.y = v6;
  v20.size.width = v8;
  v20.size.height = v10;
  MinX = CGRectGetMinX(v20);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  MinY = CGRectGetMinY(v21);
  v17 = MinX;
  v18 = v12;
  v19 = v14;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = MinY;
  result.origin.x = v17;
  return result;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end