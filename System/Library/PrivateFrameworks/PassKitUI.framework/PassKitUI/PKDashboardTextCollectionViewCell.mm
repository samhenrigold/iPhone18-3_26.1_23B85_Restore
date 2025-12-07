@interface PKDashboardTextCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardTextCollectionViewCell)initWithFrame:(CGRect)frame;
- (double)_minimumHeight;
- (id)_defaultSubtitleFont;
- (id)_defaultTitleFont;
- (void)_setAccessoryImageAfterApplyingSymbolConfiguration;
- (void)_setFonts;
- (void)_setIconImageAfterApplyingSymbolConfiguration;
- (void)_setSubtitleImageAfterApplyingSymbolConfiguration;
- (void)_setTitleImageAfterApplyingSymbolConfiguration;
- (void)layoutSubviews;
- (void)setAccessoryColor:(id)color;
- (void)setAccessoryImage:(id)image;
- (void)setHideDisclosure:(BOOL)disclosure;
- (void)setIconImage:(id)image;
- (void)setSubtitle:(id)subtitle;
- (void)setSubtitleColor:(id)color;
- (void)setSubtitleImage:(id)image;
- (void)setTextLayoutStyle:(int64_t)style;
- (void)setTitle:(id)title;
- (void)setTitleColor:(id)color;
- (void)setTitleImage:(id)image;
@end

@implementation PKDashboardTextCollectionViewCell

- (PKDashboardTextCollectionViewCell)initWithFrame:(CGRect)frame
{
  v43[2] = *MEMORY[0x1E69E9840];
  v42.receiver = self;
  v42.super_class = PKDashboardTextCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v42 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PKDashboardTextCollectionViewCell *)v3 contentView];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v11;

    v13 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v13;

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    v15 = v4->_titleLabel;
    _defaultTitleColor = [(PKDashboardTextCollectionViewCell *)v4 _defaultTitleColor];
    [(UILabel *)v15 setTextColor:_defaultTitleColor];

    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v17 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    titleImageView = v4->_titleImageView;
    v4->_titleImageView = v17;

    v19 = v4->_titleImageView;
    _defaultTitleColor2 = [(PKDashboardTextCollectionViewCell *)v4 _defaultTitleColor];
    [(UIImageView *)v19 setTintColor:_defaultTitleColor2];

    v21 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v21;

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v4->_subtitleLabel setLineBreakMode:0];
    v23 = v4->_subtitleLabel;
    _defaultSubtitleColor = [(PKDashboardTextCollectionViewCell *)v4 _defaultSubtitleColor];
    [(UILabel *)v23 setTextColor:_defaultSubtitleColor];

    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    v25 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    subtitleImageView = v4->_subtitleImageView;
    v4->_subtitleImageView = v25;

    v27 = v4->_subtitleImageView;
    _defaultSubtitleColor2 = [(PKDashboardTextCollectionViewCell *)v4 _defaultSubtitleColor];
    [(UIImageView *)v27 setTintColor:_defaultSubtitleColor2];

    v29 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v7, v8, v9, v10}];
    accessoryImageView = v4->_accessoryImageView;
    v4->_accessoryImageView = v29;

    v31 = v4->_accessoryImageView;
    _defaultAccessoryColor = [(PKDashboardTextCollectionViewCell *)v4 _defaultAccessoryColor];
    [(UIImageView *)v31 setTintColor:_defaultAccessoryColor];

    [(PKDashboardTextCollectionViewCell *)v4 _setFonts];
    [contentView addSubview:v4->_iconImageView];
    [contentView addSubview:v4->_titleLabel];
    [contentView addSubview:v4->_titleImageView];
    [contentView addSubview:v4->_subtitleLabel];
    [contentView addSubview:v4->_subtitleImageView];
    [contentView addSubview:v4->_accessoryImageView];
    v33 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v34 = ;
    v35 = [v33 initWithImage:{v34, 768}];
    disclosureView = v4->_disclosureView;
    v4->_disclosureView = v35;

    [(UIImageView *)v4->_disclosureView setContentMode:1];
    v37 = v4->_disclosureView;
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v37 setTintColor:tertiaryLabelColor];

    [contentView addSubview:v4->_disclosureView];
    v4->_disclosureAlignment = 0;
    v43[0] = objc_opt_class();
    v43[1] = objc_opt_class();
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
    v40 = [(PKDashboardTextCollectionViewCell *)v4 registerForTraitChanges:v39 withHandler:&__block_literal_global_81];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKDashboardCollectionViewCell *)self horizontalInset:fits.width];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  if (!self->_hideDisclosure)
  {
    [(UIImageView *)self->_disclosureView bounds];
    v8 = v6 + v9;
  }

  if (self->_iconImage)
  {
    image = [(UIImageView *)self->_iconImageView image];
    [image size];
    v7 = v11 + 10.0;
  }

  if (self->_accessoryImage)
  {
    image2 = [(UIImageView *)self->_accessoryImageView image];
    [image2 size];
    v14 = v6 + v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = width + v6 * -2.0 - v7 - v8 - v14;
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:v15, 1.79769313e308];
  v17 = v16;
  if (self->_titleImage)
  {
    image3 = [(UIImageView *)self->_titleImageView image];
    v19 = image3;
    if (image3)
    {
      objc_msgSend_pkui_alignmentSizeThatFits_maximumScale_(image3, v15, 1.79769313e308, 1.0);
      v20 = v46;
    }

    else
    {
      v20 = 0.0;
    }
  }

  else
  {
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:v15, 1.79769313e308];
  v22 = v21;
  if (self->_subtitleImage)
  {
    image4 = [(UIImageView *)self->_subtitleImageView image];
    v24 = image4;
    if (image4)
    {
      objc_msgSend_pkui_alignmentSizeThatFits_maximumScale_(image4, v15, 1.79769313e308, 1.0);
      v25 = *(&v42 + 1);
    }

    else
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v25 = 0.0;
    }
  }

  else
  {
    v25 = *(MEMORY[0x1E695F060] + 8);
  }

  textLayoutStyle = self->_textLayoutStyle;
  v27 = 0.0;
  if (v17 <= v20)
  {
    v28 = v20;
  }

  else
  {
    v28 = v17;
  }

  v29 = v28 + 18.0;
  if (v22 <= v25)
  {
    v30 = v25;
  }

  else
  {
    v30 = v22;
  }

  v31 = v29 + v30;
  if (v17 <= v20)
  {
    v32 = v20;
  }

  else
  {
    v32 = v17;
  }

  v33 = v32 + 22.0;
  if (v22 <= v25)
  {
    v34 = v25;
  }

  else
  {
    v34 = v22;
  }

  v35 = v33 + v34;
  if (v17 <= v20)
  {
    v36 = v20;
  }

  else
  {
    v36 = v17;
  }

  if (!textLayoutStyle)
  {
    v27 = v36 + 22.0;
  }

  if (textLayoutStyle == 1)
  {
    v27 = v35;
  }

  if (textLayoutStyle == 2)
  {
    v37 = v31;
  }

  else
  {
    v37 = v27;
  }

  [(PKDashboardTextCollectionViewCell *)self _minimumHeight:v27];
  if (v37 <= v38)
  {
    [(PKDashboardTextCollectionViewCell *)self _minimumHeight];
    v37 = v39;
  }

  v40 = width;
  v41 = v37;
  result.height = v41;
  result.width = v40;
  return result;
}

- (void)layoutSubviews
{
  v109.receiver = self;
  v109.super_class = PKDashboardTextCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v109 layoutSubviews];
  _shouldReverseLayoutDirection = [(PKDashboardTextCollectionViewCell *)self _shouldReverseLayoutDirection];
  contentView = [(PKDashboardTextCollectionViewCell *)self contentView];
  [contentView bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  memset(&v107, 0, sizeof(v107));
  [(PKDashboardCollectionViewCell *)self horizontalInset];
  v14 = v13;
  textLayoutStyle = self->_textLayoutStyle;
  v16 = 11.0;
  if (textLayoutStyle == 2)
  {
    v16 = 9.0;
  }

  v17 = 22.0;
  if (textLayoutStyle == 2)
  {
    v17 = 18.0;
  }

  v18 = _shouldReverseLayoutDirection == 0;
  if (_shouldReverseLayoutDirection)
  {
    v19 = CGRectMaxXEdge;
  }

  else
  {
    v19 = CGRectMinXEdge;
  }

  remainder.origin.x = v14 + v6;
  remainder.origin.y = v8 + v16;
  remainder.size.width = v10 - (v14 + v14);
  remainder.size.height = v12 - v17;
  if (v18)
  {
    v20 = CGRectMaxXEdge;
  }

  else
  {
    v20 = CGRectMinXEdge;
  }

  if (self->_hideDisclosure)
  {
    [(UIImageView *)self->_disclosureView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  else if (!self->_disclosureAlignment)
  {
    [(UIImageView *)self->_disclosureView sizeThatFits:?];
    CGRectDivide(remainder, &v107, &remainder, v21, v20);
    [(UIImageView *)self->_disclosureView setFrame:*&v107.origin, *&v107.size];
    CGRectDivide(remainder, &v107, &remainder, v14, v20);
  }

  accessoryImageView = self->_accessoryImageView;
  v23 = MEMORY[0x1E69BB7F8];
  if (self->_accessoryImage)
  {
    image = [(UIImageView *)accessoryImageView image];
    [image size];

    PKSizeAspectFit();
    v26 = *&v25;
    v28 = v27;
    CGRectDivide(remainder, &v107, &remainder, v25, v20);
    v29 = self->_accessoryImageView;
    v31.n128_u64[0] = *&v107.origin.y;
    v30.n128_u64[0] = *&v107.origin.x;
    v33.n128_u64[0] = *&v107.size.height;
    v32.n128_u64[0] = *&v107.size.width;
    v34.n128_u64[0] = v26;
    v35.n128_u64[0] = v28;
    PKSizeAlignedInRect(*v23, v34, v35, v30, v31, v32, v33, v36);
    [(UIImageView *)v29 setFrame:?];
    CGRectDivide(remainder, &v107, &remainder, v14, v20);
  }

  else
  {
    [(UIImageView *)accessoryImageView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  iconImageView = self->_iconImageView;
  if (self->_iconImage)
  {
    image2 = [(UIImageView *)iconImageView image];
    [image2 size];

    PKSizeAspectFit();
    v40 = *&v39;
    v42 = v41;
    CGRectDivide(remainder, &v107, &remainder, v39, v19);
    v43 = self->_iconImageView;
    v45.n128_u64[0] = *&v107.origin.y;
    v44.n128_u64[0] = *&v107.origin.x;
    v47.n128_u64[0] = *&v107.size.height;
    v46.n128_u64[0] = *&v107.size.width;
    v48.n128_u64[0] = v40;
    v49.n128_u64[0] = v42;
    PKSizeAlignedInRect(*v23, v48, v49, v44, v45, v46, v47, v50);
    [(UIImageView *)v43 setFrame:?];
    CGRectDivide(remainder, &v107, &remainder, 10.0, v19);
  }

  else
  {
    [(UIImageView *)iconImageView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  v51 = self->_textLayoutStyle;
  if ((v51 - 1) < 2)
  {
    if (self->_subtitleImage)
    {
      image3 = [(UIImageView *)self->_subtitleImageView image];
      [image3 size];

      PKSizeAspectFit();
      v54 = v53;
      v56 = v55;
      CGRectDivide(remainder, &v107, &remainder, v55, CGRectMaxYEdge);
      [(UILabel *)self->_subtitleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      subtitleImageView = self->_subtitleImageView;
      v58 = PKContentAlignmentMake();
      v63.n128_u64[0] = *&v107.origin.y;
      v62.n128_u64[0] = *&v107.origin.x;
      v65.n128_u64[0] = *&v107.size.height;
      v64.n128_u64[0] = *&v107.size.width;
LABEL_27:
      v59.n128_f64[0] = v54;
      v60.n128_f64[0] = v56;
      PKSizeAlignedInRect(v58, v59, v60, v62, v63, v64, v65, v61);
      v73 = subtitleImageView;
LABEL_34:
      [(UIImageView *)v73 setFrame:v69, v70, v71, v72];
      goto LABEL_35;
    }

    subtitleLabel = self->_subtitleLabel;
    if (self->_subtitle)
    {
      [(UILabel *)subtitleLabel pkui_sizeThatFits:remainder.size.width, 1.79769313e308];
      v76 = v75;
      x = remainder.origin.x;
      y = remainder.origin.y;
      width = remainder.size.width;
      height = remainder.size.height;
      v81 = CGRectMaxYEdge;
LABEL_32:
      CGRectDivide(*&x, &v107, &remainder, v76, v81);
      [(UILabel *)self->_subtitleLabel setFrame:*&v107.origin, *&v107.size];
      v73 = self->_subtitleImageView;
      v69 = *MEMORY[0x1E695F058];
      v70 = *(MEMORY[0x1E695F058] + 8);
      v71 = *(MEMORY[0x1E695F058] + 16);
      v72 = *(MEMORY[0x1E695F058] + 24);
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (!v51)
  {
    if (self->_subtitleImage)
    {
      image4 = [(UIImageView *)self->_subtitleImageView image];
      [image4 size];

      PKSizeAspectFit();
      v54 = v67;
      v56 = v68;
      CGRectDivide(remainder, &v107, &remainder, v67, v20);
      [(UILabel *)self->_subtitleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
      subtitleImageView = self->_subtitleImageView;
      v63.n128_u64[0] = *&v107.origin.y;
      v62.n128_u64[0] = *&v107.origin.x;
      v65.n128_u64[0] = *&v107.size.height;
      v64.n128_u64[0] = *&v107.size.width;
      v58 = *v23;
      goto LABEL_27;
    }

    subtitleLabel = self->_subtitleLabel;
    if (self->_subtitle)
    {
      [(UILabel *)subtitleLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
      v76 = v82;
      x = remainder.origin.x;
      y = remainder.origin.y;
      width = remainder.size.width;
      height = remainder.size.height;
      v81 = v20;
      goto LABEL_32;
    }

LABEL_33:
    v83 = *MEMORY[0x1E695F058];
    v84 = *(MEMORY[0x1E695F058] + 8);
    v85 = *(MEMORY[0x1E695F058] + 16);
    v86 = *(MEMORY[0x1E695F058] + 24);
    [(UILabel *)subtitleLabel setFrame:*MEMORY[0x1E695F058], v84, v85, v86];
    v73 = self->_subtitleImageView;
    v69 = v83;
    v70 = v84;
    v71 = v85;
    v72 = v86;
    goto LABEL_34;
  }

LABEL_35:
  if (!self->_hideDisclosure && self->_disclosureAlignment == 1)
  {
    [(UIImageView *)self->_disclosureView sizeThatFits:remainder.size.width, remainder.size.height];
    CGRectDivide(remainder, &v107, &remainder, v87, v20);
    [(UIImageView *)self->_disclosureView setFrame:*&v107.origin, *&v107.size];
    CGRectDivide(remainder, &v107, &remainder, v14, v20);
  }

  if (self->_titleImage)
  {
    image5 = [(UIImageView *)self->_titleImageView image];
    [image5 size];

    PKSizeAspectFit();
    v90 = v89;
    v92 = v91;
    [(UILabel *)self->_titleLabel setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    titleImageView = self->_titleImageView;
    v94 = PKContentAlignmentMake();
    v95.n128_u64[0] = *&remainder.origin.x;
    v96.n128_u64[0] = *&remainder.origin.y;
    v97.n128_u64[0] = *&remainder.size.width;
    v98.n128_u64[0] = *&remainder.size.height;
    v99.n128_u64[0] = v90;
    v100.n128_u64[0] = v92;
    PKSizeAlignedInRect(v94, v99, v100, v95, v96, v97, v98, v101);
    v106 = titleImageView;
  }

  else
  {
    [(UILabel *)self->_titleLabel setFrame:remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height];
    v106 = self->_titleImageView;
    v102 = *MEMORY[0x1E695F058];
    v103 = *(MEMORY[0x1E695F058] + 8);
    v104 = *(MEMORY[0x1E695F058] + 16);
    v105 = *(MEMORY[0x1E695F058] + 24);
  }

  [(UIImageView *)v106 setFrame:v102, v103, v104, v105];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  v5 = self->_title;
  v6 = titleCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    title = self->_title;
    self->_title = v8;

    [(UILabel *)self->_titleLabel setText:self->_title];
    [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTitleImage:(id)image
{
  imageCopy = image;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleImage, image);
    [(PKDashboardTextCollectionViewCell *)self _setTitleImageAfterApplyingSymbolConfiguration];
    [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = self->_subtitle;
  v6 = subtitleCopy;
  v10 = v6;
  if (v5 == v6)
  {

    goto LABEL_9;
  }

  if (!v6 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    subtitle = self->_subtitle;
    self->_subtitle = v8;

    [(UILabel *)self->_subtitleLabel setText:self->_subtitle];
    [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSubtitleImage:(id)image
{
  imageCopy = image;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_subtitleImage, image);
    [(PKDashboardTextCollectionViewCell *)self _setSubtitleImageAfterApplyingSymbolConfiguration];
    [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setAccessoryImage:(id)image
{
  imageCopy = image;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_accessoryImage, image);
    [(PKDashboardTextCollectionViewCell *)self _setAccessoryImageAfterApplyingSymbolConfiguration];
    [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  if (PKEqualObjects())
  {
    _defaultTitleColor = [(PKDashboardTextCollectionViewCell *)self _defaultTitleColor];
    [(UILabel *)self->_titleLabel setTextColor:_defaultTitleColor];
    [(UIImageView *)self->_titleImageView setTintColor:_defaultTitleColor];
  }

  else
  {
    objc_storeStrong(&self->_titleColor, color);
    [(UILabel *)self->_titleLabel setTextColor:colorCopy];
    [(UIImageView *)self->_titleImageView setTintColor:colorCopy];
  }
}

- (void)setSubtitleColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_subtitleColor, color);
    if (colorCopy)
    {
      [(UILabel *)self->_subtitleLabel setTextColor:?];
      [(UIImageView *)self->_subtitleImageView setTintColor:colorCopy];
    }

    else
    {
      _defaultSubtitleColor = [(PKDashboardTextCollectionViewCell *)self _defaultSubtitleColor];
      [(UILabel *)self->_subtitleLabel setTextColor:_defaultSubtitleColor];
      [(UIImageView *)self->_subtitleImageView setTintColor:_defaultSubtitleColor];
    }
  }
}

- (void)setAccessoryColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    if (colorCopy)
    {
      objc_storeStrong(&self->_accessoryColor, color);
      [(UIImageView *)self->_accessoryImageView setTintColor:colorCopy];
    }

    else
    {
      _defaultAccessoryColor = [(PKDashboardTextCollectionViewCell *)self _defaultAccessoryColor];
      [(UIImageView *)self->_accessoryImageView setTintColor:_defaultAccessoryColor];
    }
  }
}

- (void)setHideDisclosure:(BOOL)disclosure
{
  if (self->_hideDisclosure == !disclosure)
  {
    self->_hideDisclosure = disclosure;
    [(UIImageView *)self->_disclosureView setHidden:?];

    [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTextLayoutStyle:(int64_t)style
{
  if (self->_textLayoutStyle != style)
  {
    self->_textLayoutStyle = style;
    [(PKDashboardTextCollectionViewCell *)self _setFonts];

    [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_iconImage, image);
    [(PKDashboardTextCollectionViewCell *)self _setIconImageAfterApplyingSymbolConfiguration];
    [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)_setFonts
{
  titleFont = self->_titleFont;
  if (titleFont)
  {
    _defaultTitleFont = titleFont;
  }

  else
  {
    _defaultTitleFont = [(PKDashboardTextCollectionViewCell *)self _defaultTitleFont];
  }

  v8 = _defaultTitleFont;
  subtitleFont = self->_subtitleFont;
  if (subtitleFont)
  {
    _defaultSubtitleFont = subtitleFont;
  }

  else
  {
    _defaultSubtitleFont = [(PKDashboardTextCollectionViewCell *)self _defaultSubtitleFont];
  }

  v7 = _defaultSubtitleFont;
  [(UILabel *)self->_titleLabel setFont:v8];
  [(PKDashboardTextCollectionViewCell *)self _setTitleImageAfterApplyingSymbolConfiguration];
  [(UILabel *)self->_subtitleLabel setFont:v7];
  [(PKDashboardTextCollectionViewCell *)self _setSubtitleImageAfterApplyingSymbolConfiguration];
  [(PKDashboardTextCollectionViewCell *)self _setIconImageAfterApplyingSymbolConfiguration];
  [(PKDashboardTextCollectionViewCell *)self _setAccessoryImageAfterApplyingSymbolConfiguration];
  [(PKDashboardTextCollectionViewCell *)self setNeedsLayout];
}

- (id)_defaultTitleFont
{
  textLayoutStyle = self->_textLayoutStyle;
  if (textLayoutStyle >= 2)
  {
    if (textLayoutStyle == 2)
    {
      self = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38], 2, 0);
    }
  }

  else
  {
    self = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
  }

  return self;
}

- (id)_defaultSubtitleFont
{
  textLayoutStyle = self->_textLayoutStyle;
  if (textLayoutStyle == 2)
  {
    v5 = MEMORY[0x1E69DDD00];
    goto LABEL_7;
  }

  if (textLayoutStyle == 1)
  {
    v5 = MEMORY[0x1E69DDD80];
LABEL_7:
    v3 = *v5;
    v4 = *MEMORY[0x1E69DDC38];
    goto LABEL_8;
  }

  if (textLayoutStyle)
  {
    goto LABEL_9;
  }

  v3 = *MEMORY[0x1E69DDCF8];
  v4 = 0;
LABEL_8:
  self = PKFontForDefaultDesign(v3, v4);
LABEL_9:

  return self;
}

- (void)_setTitleImageAfterApplyingSymbolConfiguration
{
  if (self->_titleImage)
  {
    v3 = MEMORY[0x1E69DCAD8];
    font = [(UILabel *)self->_titleLabel font];
    v8 = [v3 configurationWithFont:font scale:-1];

    titleImageView = self->_titleImageView;
    v6 = [(UIImage *)self->_titleImage imageByApplyingSymbolConfiguration:v8];
    [(UIImageView *)titleImageView setImage:v6];
  }

  else
  {
    v7 = self->_titleImageView;

    [(UIImageView *)v7 setImage:0];
  }
}

- (void)_setSubtitleImageAfterApplyingSymbolConfiguration
{
  if (self->_subtitleImage)
  {
    v3 = MEMORY[0x1E69DCAD8];
    font = [(UILabel *)self->_subtitleLabel font];
    v8 = [v3 configurationWithFont:font scale:-1];

    subtitleImageView = self->_subtitleImageView;
    v6 = [(UIImage *)self->_subtitleImage imageByApplyingSymbolConfiguration:v8];
    [(UIImageView *)subtitleImageView setImage:v6];
  }

  else
  {
    v7 = self->_subtitleImageView;

    [(UIImageView *)v7 setImage:0];
  }
}

- (void)_setIconImageAfterApplyingSymbolConfiguration
{
  if (self->_iconImage)
  {
    v11 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
    v3 = [MEMORY[0x1E69DCAD8] configurationWithFont:v11 scale:-1];
    iconImage = self->_iconImage;
    textColor = [(UILabel *)self->_titleLabel textColor];
    v6 = [(UIImage *)iconImage imageWithTintColor:textColor];
    v7 = [v6 imageWithRenderingMode:1];

    iconImageView = self->_iconImageView;
    v9 = [v7 imageByApplyingSymbolConfiguration:v3];
    [(UIImageView *)iconImageView setImage:v9];
  }

  else
  {
    v10 = self->_iconImageView;

    [(UIImageView *)v10 setImage:0];
  }
}

- (void)_setAccessoryImageAfterApplyingSymbolConfiguration
{
  if (self->_accessoryImage)
  {
    v7 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD40], *MEMORY[0x1E69DDC38], 2, 0);
    v3 = [MEMORY[0x1E69DCAD8] configurationWithFont:v7 scale:3];
    accessoryImageView = self->_accessoryImageView;
    v5 = [(UIImage *)self->_accessoryImage imageByApplyingSymbolConfiguration:v3];
    [(UIImageView *)accessoryImageView setImage:v5];
  }

  else
  {
    v6 = self->_accessoryImageView;

    [(UIImageView *)v6 setImage:0];
  }
}

- (double)_minimumHeight
{
  cellConfiguration = [MEMORY[0x1E69DCC28] cellConfiguration];
  traitCollection = [(PKDashboardTextCollectionViewCell *)self traitCollection];
  [cellConfiguration _minimumHeightForTraitCollection:traitCollection];
  v6 = v5;

  return v6;
}

@end