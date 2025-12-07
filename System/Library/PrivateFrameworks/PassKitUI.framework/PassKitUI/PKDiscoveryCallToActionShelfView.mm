@interface PKDiscoveryCallToActionShelfView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)_wordmarkAssetSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDiscoveryCallToActionShelfView)initWithShelf:(id)shelf;
- (PKDiscoveryCardViewDelegate)delegate;
- (double)_desiredWordmarkAssetHeight;
- (void)_buttonPressed:(id)pressed;
- (void)layoutSubviews;
- (void)linkedApplicationDidChangeState:(id)state;
- (void)setImage:(id)image animated:(BOOL)animated;
- (void)setShowActivityIndicator:(BOOL)indicator;
- (void)setWordmarkAsset:(id)asset animated:(BOOL)animated;
@end

@implementation PKDiscoveryCallToActionShelfView

- (PKDiscoveryCallToActionShelfView)initWithShelf:(id)shelf
{
  v73[1] = *MEMORY[0x1E69E9840];
  shelfCopy = shelf;
  v72.receiver = self;
  v72.super_class = PKDiscoveryCallToActionShelfView;
  v5 = [(PKDiscoveryCallToActionShelfView *)&v72 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_24;
  }

  objc_storeStrong(&v5->_ctaShelf, shelf);
  callToAction = [shelfCopy callToAction];
  callToAction = v6->_callToAction;
  v6->_callToAction = callToAction;

  icon = [(PKDiscoveryCallToAction *)v6->_callToAction icon];
  icon = v6->_icon;
  v6->_icon = icon;

  wordmarkAsset = [(PKDiscoveryCallToAction *)v6->_callToAction wordmarkAsset];
  wordmarkAsset = v6->_wordmarkAsset;
  v6->_wordmarkAsset = wordmarkAsset;

  v6->_hasIcon = v6->_icon != 0;
  localizedButtonText = [(PKDiscoveryCallToAction *)v6->_callToAction localizedButtonText];
  if (localizedButtonText)
  {
    v14 = [(PKDiscoveryCallToAction *)v6->_callToAction action]!= 0;
  }

  else
  {
    v14 = 0;
  }

  v6->_hasButton = v14;

  v6->_hasWordmarkAsset = v6->_wordmarkAsset != 0;
  secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  [(PKDiscoveryCallToActionShelfView *)v6 setBackgroundColor:secondarySystemBackgroundColor];

  localizedTitle = [(PKDiscoveryCallToAction *)v6->_callToAction localizedTitle];
  v16 = MEMORY[0x1E695F058];
  if (localizedTitle)
  {
    v6->_hasTitle = 1;
  }

  else
  {
    pk_stringIfNotEmpty = [0 pk_stringIfNotEmpty];
    v6->_hasTitle = pk_stringIfNotEmpty != 0;

    if (!v6->_hasTitle)
    {
      goto LABEL_9;
    }
  }

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*v16, v16[1], v16[2], v16[3]}];
  titleLabel = v6->_titleLabel;
  v6->_titleLabel = v18;

  [(UILabel *)v6->_titleLabel setText:localizedTitle];
  v20 = v6->_titleLabel;
  v21 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], 0, *MEMORY[0x1E69DB958]);
  [(UILabel *)v20 setFont:v21];

  v22 = v6->_titleLabel;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v22 setTextColor:labelColor];

  [(UILabel *)v6->_titleLabel setNumberOfLines:1];
  [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_titleLabel];
LABEL_9:
  localizedSubtitle = [(PKDiscoveryCallToAction *)v6->_callToAction localizedSubtitle];
  if (localizedSubtitle)
  {
    v6->_hasSubtitle = 1;
LABEL_12:
    v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{*v16, v16[1], v16[2], v16[3]}];
    subtitleLabel = v6->_subtitleLabel;
    v6->_subtitleLabel = v26;

    [(UILabel *)v6->_subtitleLabel setText:localizedSubtitle];
    v28 = v6->_subtitleLabel;
    v29 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [(UILabel *)v28 setFont:v29];

    v30 = v6->_subtitleLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v30 setTextColor:secondaryLabelColor];

    [(UILabel *)v6->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v6->_subtitleLabel setTextAlignment:1];
    [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_subtitleLabel];
    goto LABEL_13;
  }

  pk_stringIfNotEmpty2 = [0 pk_stringIfNotEmpty];
  v6->_hasSubtitle = pk_stringIfNotEmpty2 != 0;

  if (v6->_hasSubtitle)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v6->_hasIcon)
  {
    v6->_iconSize = vdupq_n_s64(0x4056000000000000uLL);
    v32 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{*v16, v16[1], v16[2], v16[3]}];
    iconImageView = v6->_iconImageView;
    v6->_iconImageView = v32;

    v34 = v6->_iconImageView;
    v35 = MEMORY[0x1E69DC888];
    backgroundColor = [(PKDiscoveryMedia *)v6->_icon backgroundColor];
    v37 = [v35 pkui_colorWithPKColor:backgroundColor];
    [(UIImageView *)v34 setBackgroundColor:v37];

    [(UIImageView *)v6->_iconImageView setContentMode:1];
    [(UIImageView *)v6->_iconImageView setAccessibilityIgnoresInvertColors:1];
    v38 = v6->_iconImageView;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v38 setTintColor:labelColor2];

    layer = [(UIImageView *)v6->_iconImageView layer];
    [layer setCornerRadius:14.0];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer setMasksToBounds:1];
    [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_iconImageView];
  }

  if (v6->_hasWordmarkAsset)
  {
    v41 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{*v16, v16[1], v16[2], v16[3]}];
    wordmarkImageView = v6->_wordmarkImageView;
    v6->_wordmarkImageView = v41;

    v43 = v6->_wordmarkImageView;
    v44 = MEMORY[0x1E69DC888];
    backgroundColor2 = [(PKDiscoveryMedia *)v6->_wordmarkAsset backgroundColor];
    v46 = [v44 pkui_colorWithPKColor:backgroundColor2];
    [(UIImageView *)v43 setBackgroundColor:v46];

    [(UIImageView *)v6->_wordmarkImageView setContentMode:1];
    [(UIImageView *)v6->_wordmarkImageView setAccessibilityIgnoresInvertColors:1];
    v47 = v6->_wordmarkImageView;
    labelColor3 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v47 setTintColor:labelColor3];

    layer2 = [(UIImageView *)v6->_wordmarkImageView layer];
    [layer2 setMasksToBounds:1];

    [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_wordmarkImageView];
  }

  if (*(&v6->super.super.super.super.isa + v66) == 1)
  {
    filledButtonConfiguration = [MEMORY[0x1E69DC740] filledButtonConfiguration];
    [filledButtonConfiguration setCornerStyle:4];
    localizedButtonText2 = [(PKDiscoveryCallToAction *)v6->_callToAction localizedButtonText];
    [filledButtonConfiguration setTitle:localizedButtonText2];

    objc_initWeak(&location, v6);
    v52 = MEMORY[0x1E69DC628];
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __50__PKDiscoveryCallToActionShelfView_initWithShelf___block_invoke;
    v69[3] = &unk_1E8010A60;
    objc_copyWeak(&v70, &location);
    v53 = localizedSubtitle;
    v54 = [v52 actionWithHandler:v69];
    v55 = [MEMORY[0x1E69DC738] buttonWithConfiguration:filledButtonConfiguration primaryAction:v54];
    button = v6->_button;
    v6->_button = v55;

    v57 = v6->_button;
    v58 = *MEMORY[0x1E69DDC88];
    v59 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC88], 2, 0);
    [(UIButton *)v57 pkui_updateTitleTextAttributesWithFont:v59];

    [(UIButton *)v6->_button setMaximumContentSizeCategory:v58];
    [(PKDiscoveryCallToActionShelfView *)v6 addSubview:v6->_button];

    localizedSubtitle = v53;
    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);
  }

  if ([(PKDiscoveryCallToAction *)v6->_callToAction action]== 8)
  {
    appStoreAppIdentifier = [(PKDiscoveryCallToAction *)v6->_callToAction appStoreAppIdentifier];
    if (appStoreAppIdentifier)
    {
      v61 = [PKLinkedApplication alloc];
      v73[0] = appStoreAppIdentifier;
      v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v73 count:1];
      v63 = [(PKLinkedApplication *)v61 initWithStoreIDs:v62 defaultLaunchURL:0];
      linkedApplication = v6->_linkedApplication;
      v6->_linkedApplication = v63;

      [(PKLinkedApplication *)v6->_linkedApplication addObserver:v6];
      [(PKDiscoveryCallToActionShelfView *)v6 setShowActivityIndicator:1];
      [(PKLinkedApplication *)v6->_linkedApplication reloadApplicationStateIfNecessary];
    }
  }

LABEL_24:
  return v6;
}

void __50__PKDiscoveryCallToActionShelfView_initWithShelf___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 sender];

  [WeakRetained _buttonPressed:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDiscoveryCallToActionShelfView;
  [(PKDiscoveryCallToActionShelfView *)&v3 layoutSubviews];
  [(PKDiscoveryCallToActionShelfView *)self bounds];
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self, a2, 1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PKDiscoveryShelfView *)self contentInsets];
  v11 = x + v10;
  v13 = y + v12;
  v15 = width - (v10 + v14);
  v17 = height - (v12 + v16);
  remainder.origin.x = v11;
  remainder.origin.y = v13;
  remainder.size.width = v15;
  remainder.size.height = v17;
  memset(&v90, 0, sizeof(v90));
  _isFooterWordmarkOnly = [(PKDiscoveryCallToActionShelfView *)self _isFooterWordmarkOnly];
  v19 = _isFooterWordmarkOnly;
  if (self->_hasIcon)
  {
    v93.origin.x = v11;
    v93.origin.y = v13;
    v93.size.width = v15;
    v93.size.height = v17;
    CGRectDivide(v93, &v90, &remainder, 20.0, CGRectMinYEdge);
    CGRectDivide(remainder, &v90, &remainder, self->_iconSize.height, CGRectMinYEdge);
    v26.n128_u64[0] = *&self->_iconSize.height;
    v27 = v26.n128_f64[0] + 20.0;
    if (!layout)
    {
      iconImageView = self->_iconImageView;
      v20.n128_u64[0] = *&self->_iconSize.width;
      v22.n128_u64[0] = *&v90.origin.y;
      v21.n128_u64[0] = *&v90.origin.x;
      v24.n128_u64[0] = *&v90.size.height;
      v23.n128_u64[0] = *&v90.size.width;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v20, v26, v21, v22, v23, v24, v25);
      [(UIImageView *)iconImageView setFrame:?];
    }

    CGRectDivide(remainder, &v90, &remainder, 11.0, CGRectMinYEdge);
    v29 = v27 + 11.0;
  }

  else
  {
    v29 = 0.0;
    if (!_isFooterWordmarkOnly)
    {
      v29 = 24.0;
      v94.origin.x = v11;
      v94.origin.y = v13;
      v94.size.width = v15;
      v94.size.height = v17;
      CGRectDivide(v94, &v90, &remainder, 24.0, CGRectMinYEdge);
    }
  }

  if (self->_hasWordmarkAsset)
  {
    if (v19)
    {
      v30 = 80.0;
    }

    else
    {
      v30 = 0.0;
    }

    CGRectDivide(remainder, &v90, &remainder, v30, CGRectMinYEdge);
    v31 = v30 + v29;
    [(PKDiscoveryCallToActionShelfView *)self _wordmarkAssetSize];
    v33 = v32;
    CGRectDivide(remainder, &v90, &remainder, v32, CGRectMinYEdge);
    v41 = v31 + v33;
    if (!layout)
    {
      wordmarkImageView = self->_wordmarkImageView;
      v34.n128_u64[0] = *&self->_wordmarkAssetSize.width;
      v35.n128_u64[0] = *&self->_wordmarkAssetSize.height;
      v37.n128_u64[0] = *&v90.origin.y;
      v36.n128_u64[0] = *&v90.origin.x;
      v39.n128_u64[0] = *&v90.size.height;
      v38.n128_u64[0] = *&v90.size.width;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v34, v35, v36, v37, v38, v39, v40);
      [(UIImageView *)wordmarkImageView setFrame:?];
      v43 = self->_wordmarkImageView;
      [(PKDiscoveryMedia *)self->_wordmarkAsset height];
      v45 = v44;
      [(PKDiscoveryCallToActionShelfView *)self _desiredWordmarkAssetHeight];
      [(UIImageView *)v43 setContentScaleFactor:v45 / v46];
    }

    if (v19)
    {
      v47 = 80.0;
    }

    else
    {
      v47 = 11.0;
    }

    CGRectDivide(remainder, &v90, &remainder, v47, CGRectMinYEdge);
    v29 = v47 + v41;
  }

  if (self->_hasTitle)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
    v49 = v48;
    v51 = v50;
    CGRectDivide(remainder, &v90, &remainder, v50, CGRectMinYEdge);
    v29 = v29 + v51;
    if (!layout)
    {
      titleLabel = self->_titleLabel;
      v55.n128_u64[0] = *&v90.origin.y;
      v54.n128_u64[0] = *&v90.origin.x;
      v57.n128_u64[0] = *&v90.size.height;
      v56.n128_u64[0] = *&v90.size.width;
      v52.n128_u64[0] = v49;
      v53.n128_f64[0] = v51;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v52, v53, v54, v55, v56, v57, v58);
      [(UILabel *)titleLabel setFrame:?];
    }
  }

  if (self->_hasSubtitle)
  {
    v60 = remainder.size.width;
    v61 = remainder.size.height;
    if (self->_hasTitle)
    {
      v62 = remainder.origin.x;
      v63 = remainder.origin.y;
      CGRectDivide(*(&v60 - 2), &v90, &remainder, 2.0, CGRectMinYEdge);
      v29 = v29 + 2.0;
      v60 = remainder.size.width;
      v61 = remainder.size.height;
    }

    [(UILabel *)self->_subtitleLabel sizeThatFits:v60, v61];
    v65 = v64;
    v67 = v66;
    CGRectDivide(remainder, &v90, &remainder, v66, CGRectMinYEdge);
    v29 = v29 + v67;
    if (!layout)
    {
      subtitleLabel = self->_subtitleLabel;
      v71.n128_u64[0] = *&v90.origin.y;
      v70.n128_u64[0] = *&v90.origin.x;
      v73.n128_u64[0] = *&v90.size.height;
      v72.n128_u64[0] = *&v90.size.width;
      v68.n128_u64[0] = v65;
      v69.n128_f64[0] = v67;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v68, v69, v70, v71, v72, v73, v74);
      [(UILabel *)subtitleLabel setFrame:?];
    }
  }

  if (self->_hasButton)
  {
    if (self->_hasTitle || self->_hasSubtitle)
    {
      CGRectDivide(remainder, &v90, &remainder, 11.0, CGRectMinYEdge);
      v29 = v29 + 11.0;
    }

    [(UIButton *)self->_button sizeThatFits:remainder.size.width, remainder.size.height];
    v77 = v76;
    v79 = v78;
    CGRectDivide(remainder, &v90, &remainder, v78, CGRectMinYEdge);
    v29 = v29 + v79;
    if (!layout)
    {
      button = self->_button;
      v83.n128_u64[0] = *&v90.origin.y;
      v82.n128_u64[0] = *&v90.origin.x;
      v85.n128_u64[0] = *&v90.size.height;
      v84.n128_u64[0] = *&v90.size.width;
      v80.n128_u64[0] = v77;
      v81.n128_f64[0] = v79;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v80, v81, v82, v83, v84, v85, v86);
      [(UIButton *)button setFrame:?];
    }
  }

  if (!v19)
  {
    CGRectDivide(remainder, &v90, &remainder, 24.0, CGRectMinYEdge);
    v29 = v29 + 24.0;
  }

  v88 = width;
  v89 = v29;
  result.height = v89;
  result.width = v88;
  return result;
}

- (void)setShowActivityIndicator:(BOOL)indicator
{
  if (self->_showActivityIndicator == !indicator)
  {
    self->_showActivityIndicator = indicator;
    button = self->_button;
    if (indicator)
    {
      [(UIButton *)self->_button pkui_updateConfigurationWithTitle:0];
    }

    else
    {
      localizedButtonText = [(PKDiscoveryCallToAction *)self->_callToAction localizedButtonText];
      [(UIButton *)button pkui_updateConfigurationWithTitle:localizedButtonText];
    }

    [(UIButton *)self->_button pkui_updateConfigurationShowingActivityIndicator:self->_showActivityIndicator];
    v6 = self->_button;
    v7 = !self->_showActivityIndicator;

    [(UIButton *)v6 setEnabled:v7];
  }
}

- (void)setImage:(id)image animated:(BOOL)animated
{
  animatedCopy = animated;
  ctaShelf = self->_ctaShelf;
  imageCopy = image;
  if ([(PKDiscoveryCallToActionShelf *)ctaShelf useImageAsTitle])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [imageCopy imageWithRenderingMode:v8];

  if (animatedCopy)
  {
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __54__PKDiscoveryCallToActionShelfView_setImage_animated___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v9;
    [v10 pkui_animateUsingOptions:4 animations:v11 completion:0];
  }

  else
  {
    [(UIImageView *)self->_iconImageView setImage:v9];
  }
}

- (void)setWordmarkAsset:(id)asset animated:(BOOL)animated
{
  animatedCopy = animated;
  ctaShelf = self->_ctaShelf;
  assetCopy = asset;
  if ([(PKDiscoveryCallToActionShelf *)ctaShelf useImageAsTitle])
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = [assetCopy imageWithRenderingMode:v8];

  if (animatedCopy)
  {
    v10 = MEMORY[0x1E69DD250];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __62__PKDiscoveryCallToActionShelfView_setWordmarkAsset_animated___block_invoke;
    v11[3] = &unk_1E8010A10;
    v11[4] = self;
    v12 = v9;
    [v10 pkui_animateUsingOptions:4 animations:v11 completion:0];
  }

  else
  {
    [(UIImageView *)self->_wordmarkImageView setImage:v9];
  }
}

- (void)linkedApplicationDidChangeState:(id)state
{
  stateCopy = state;
  [(PKDiscoveryCallToActionShelfView *)self setShowActivityIndicator:0];
  isInstalled = [stateCopy isInstalled];

  button = self->_button;
  if (isInstalled)
  {
    localizedButtonText = [(PKDiscoveryCallToAction *)self->_callToAction localizedButtonText];
    [(UIButton *)button pkui_updateConfigurationWithTitle:localizedButtonText];
  }

  else
  {
    localizedButtonText = PKLocalizedString(&cfstr_ViewButton.isa);
    pk_uppercaseStringForPreferredLocale = [localizedButtonText pk_uppercaseStringForPreferredLocale];
    [(UIButton *)button pkui_updateConfigurationWithTitle:pk_uppercaseStringForPreferredLocale];
  }

  [(PKDiscoveryCallToActionShelfView *)self setNeedsLayout];
}

- (void)_buttonPressed:(id)pressed
{
  if ([(PKDiscoveryCallToAction *)self->_callToAction action]== 8 && [(PKLinkedApplication *)self->_linkedApplication isInstalled])
  {
    linkedApplication = self->_linkedApplication;

    [(PKLinkedApplication *)linkedApplication openApplication:0];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    callToAction = self->_callToAction;
    itemIdentifier = [(PKDiscoveryShelfView *)self itemIdentifier];
    [WeakRetained discoveryCardViewCTATapped:self callToAction:callToAction itemIdentifier:itemIdentifier];
  }
}

- (double)_desiredWordmarkAssetHeight
{
  _isFooterWordmarkOnly = [(PKDiscoveryCallToActionShelfView *)self _isFooterWordmarkOnly];
  result = 48.0;
  if (!_isFooterWordmarkOnly)
  {
    return 30.0;
  }

  return result;
}

- (CGSize)_wordmarkAssetSize
{
  p_wordmarkAssetSize = &self->_wordmarkAssetSize;
  if (self->_hasWordmarkAsset)
  {
    width = p_wordmarkAssetSize->width;
    if (p_wordmarkAssetSize->width == 0.0 && self->_wordmarkAssetSize.height == 0.0)
    {
      [(PKDiscoveryMedia *)self->_wordmarkAsset width];
      width = v5;
      [(PKDiscoveryMedia *)self->_wordmarkAsset height];
      v7 = v6;
      [(PKDiscoveryCallToActionShelfView *)self _desiredWordmarkAssetHeight];
      if (v7 > 0.0 && width > 0.0)
      {
        width = width * (v8 / v7);
      }

      p_wordmarkAssetSize->width = width;
      p_wordmarkAssetSize->height = v8;
    }
  }

  else
  {
    *p_wordmarkAssetSize = *MEMORY[0x1E695F060];
    width = p_wordmarkAssetSize->width;
  }

  height = p_wordmarkAssetSize->height;
  v10 = width;
  result.height = height;
  result.width = v10;
  return result;
}

- (PKDiscoveryCardViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end