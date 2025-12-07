@interface MRUOutputDeviceAssetView
- (CGSize)sizeThatFits:(CGSize)fits;
- (MRUOutputDeviceAssetView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAsset:(id)asset;
- (void)setGlyphState:(id)state;
- (void)setStylingProvider:(id)provider;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)updateContentSizeCategory;
- (void)updateVisibility;
- (void)updateVisualStyling;
@end

@implementation MRUOutputDeviceAssetView

- (void)layoutSubviews
{
  v43.receiver = self;
  v43.super_class = MRUOutputDeviceAssetView;
  [(MRUOutputDeviceAssetView *)&v43 layoutSubviews];
  [(MRUOutputDeviceAssetView *)self bounds];
  UIRectCenteredXInRect();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (![(MRUOutputDeviceAsset *)self->_asset type])
  {
    UIRectCenteredRect();
    v4 = v11;
    v6 = v12;
    v8 = v13;
    v10 = v14;
  }

  [(MRUAssetView *)self->_assetView setFrame:v4, v6, v8, v10];
  v44.origin.x = v4;
  v44.origin.y = v6;
  v44.size.width = v8;
  v44.size.height = v10;
  CGRectGetMaxY(v44);
  UIRectInset();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(BSUIEmojiLabelView *)self->_titleLabel sizeThatFits:v19, v21];
  MRUSizeCeilToViewScale(self, v23, v24);
  v45.origin.x = v16;
  v45.origin.y = v18;
  v45.size.width = v20;
  v45.size.height = v22;
  CGRectGetMinY(v45);
  v46.origin.x = v16;
  v46.origin.y = v18;
  v46.size.width = v20;
  v46.size.height = v22;
  CGRectGetWidth(v46);
  UIRectCenteredXInRect();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(BSUIEmojiLabelView *)self->_titleLabel setFrame:?];
  v47.origin.x = v26;
  v47.origin.y = v28;
  v47.size.width = v30;
  v47.size.height = v32;
  CGRectGetHeight(v47);
  UIRectInset();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  [(UILabel *)self->_subtitleLabel sizeThatFits:v37, v39];
  MRUSizeCeilToViewScale(self, v41, v42);
  v48.origin.x = v34;
  v48.origin.y = v36;
  v48.size.width = v38;
  v48.size.height = v40;
  CGRectGetMinY(v48);
  v49.origin.x = v34;
  v49.origin.y = v36;
  v49.size.width = v38;
  v49.size.height = v40;
  CGRectGetWidth(v49);
  UIRectCenteredXInRect();
  [(UILabel *)self->_subtitleLabel setFrame:?];
}

- (void)updateVisibility
{
  type = [(MRUOutputDeviceAsset *)self->_asset type];
  v4 = 1.0;
  if (!type)
  {
    v4 = 0.0;
  }

  titleLabel = self->_titleLabel;

  [(BSUIEmojiLabelView *)titleLabel setAlpha:v4];
}

- (MRUOutputDeviceAssetView)initWithFrame:(CGRect)frame
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = MRUOutputDeviceAssetView;
  v3 = [(MRUOutputDeviceAssetView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MRUAssetView);
    assetView = v3->_assetView;
    v3->_assetView = v4;

    [(MRUAssetView *)v3->_assetView setPackageScale:1.25];
    v6 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:1 scale:44.0];
    [(MRUAssetView *)v3->_assetView setImageSymbolConfiguration:v6];

    [(MRUAssetView *)v3->_assetView setUserInteractionEnabled:0];
    [(MRUAssetView *)v3->_assetView setClipsToBounds:0];
    [(MRUAssetView *)v3->_assetView controlCenterApplyPrimaryContentShadow];
    [(MRUOutputDeviceAssetView *)v3 addSubview:v3->_assetView];
    v7 = objc_alloc_init(MEMORY[0x1E698E7E0]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    [(BSUIEmojiLabelView *)v3->_titleLabel setTextAlignment:1];
    [(BSUIEmojiLabelView *)v3->_titleLabel setNumberOfLines:2];
    [(BSUIEmojiLabelView *)v3->_titleLabel setClipsToBounds:0];
    [(BSUIEmojiLabelView *)v3->_titleLabel controlCenterApplyPrimaryContentShadow];
    [(MRUOutputDeviceAssetView *)v3 addSubview:v3->_titleLabel];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v9;

    [(UILabel *)v3->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v3->_subtitleLabel setClipsToBounds:0];
    [(UILabel *)v3->_subtitleLabel controlCenterApplyPrimaryContentShadow];
    [(MRUOutputDeviceAssetView *)v3 addSubview:v3->_subtitleLabel];
    v18[0] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v12 = [(MRUOutputDeviceAssetView *)v3 registerForTraitChanges:v11 withAction:sel_updateVisualStyling];

    v17 = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    v14 = [(MRUOutputDeviceAssetView *)v3 registerForTraitChanges:v13 withAction:sel_updateContentSizeCategory];

    [(MRUOutputDeviceAssetView *)v3 updateContentSizeCategory];
    [(MRUOutputDeviceAssetView *)v3 updateVisibility];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 54.0;
  v7 = 54.0 + 8.0;
  mru_volumeTitleFont = [MEMORY[0x1E69DB878] mru_volumeTitleFont];
  [mru_volumeTitleFont lineHeight];
  v10 = v9;

  if ([(MRUOutputDeviceAsset *)self->_asset type])
  {
    [(BSUIEmojiLabelView *)self->_titleLabel sizeThatFits:width, height - v7];
    v13 = MRUSizeCeilToViewScale(self, v11, v12);
    if (v13 >= 54.0)
    {
      v6 = v13;
    }

    [(UILabel *)self->_subtitleLabel sizeThatFits:width, height - v7];
    v16 = MRUSizeCeilToViewScale(self, v14, v15);
    if (v16 >= v6)
    {
      v6 = v16;
    }
  }

  v17 = v7 + v10 + v10;
  if (v6 >= width)
  {
    v18 = width;
  }

  else
  {
    v18 = v6;
  }

  if (v17 >= height)
  {
    v17 = height;
  }

  result.height = v17;
  result.width = v18;
  return result;
}

- (void)setAsset:(id)asset
{
  objc_storeStrong(&self->_asset, asset);
  assetCopy = asset;
  [(MRUAssetView *)self->_assetView setAsset:assetCopy];

  [(MRUOutputDeviceAssetView *)self updateVisibility];

  [(MRUOutputDeviceAssetView *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  objc_storeStrong(&self->_title, title);
  titleCopy = title;
  [(BSUIEmojiLabelView *)self->_titleLabel setText:titleCopy];

  [(MRUOutputDeviceAssetView *)self setNeedsLayout];
}

- (void)setSubtitle:(id)subtitle
{
  objc_storeStrong(&self->_subtitle, subtitle);
  subtitleCopy = subtitle;
  [(UILabel *)self->_subtitleLabel setText:subtitleCopy];

  [(MRUOutputDeviceAssetView *)self setNeedsLayout];
}

- (void)setGlyphState:(id)state
{
  objc_storeStrong(&self->_glyphState, state);
  stateCopy = state;
  [(MRUAssetView *)self->_assetView setGlyphState:stateCopy];
}

- (void)setStylingProvider:(id)provider
{
  providerCopy = provider;
  if (self->_stylingProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_stylingProvider, provider);
    [(MRUAssetView *)self->_assetView setStylingProvider:v6];
    [(MRUOutputDeviceAssetView *)self updateVisualStyling];
    providerCopy = v6;
  }
}

- (void)updateVisualStyling
{
  stylingProvider = self->_stylingProvider;
  titleLabel = self->_titleLabel;
  traitCollection = [(MRUOutputDeviceAssetView *)self traitCollection];
  [(MRUVisualStylingProvider *)stylingProvider applyStyle:0 toView:titleLabel traitCollection:traitCollection];

  v6 = self->_stylingProvider;
  subtitleLabel = self->_subtitleLabel;
  traitCollection2 = [(MRUOutputDeviceAssetView *)self traitCollection];
  [(MRUVisualStylingProvider *)v6 applyStyle:0 toView:subtitleLabel traitCollection:traitCollection2];
}

- (void)updateContentSizeCategory
{
  mru_volumeTitleFont = [MEMORY[0x1E69DB878] mru_volumeTitleFont];
  [(BSUIEmojiLabelView *)self->_titleLabel setFont:mru_volumeTitleFont];

  mru_volumeButtonTitleFont = [MEMORY[0x1E69DB878] mru_volumeButtonTitleFont];
  [(UILabel *)self->_subtitleLabel setFont:mru_volumeButtonTitleFont];
}

@end