@interface PKDashboardTitleDetailCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardTitleDetailCell)initWithFrame:(CGRect)frame;
- (void)_updateDefaultValues;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetFonts;
- (void)setAccessory:(unint64_t)accessory;
- (void)setDetailTextColor:(id)color;
- (void)setTitleText:(id)text detail:(id)detail;
- (void)setTitleTextColor:(id)color;
@end

@implementation PKDashboardTitleDetailCell

- (PKDashboardTitleDetailCell)initWithFrame:(CGRect)frame
{
  v31[1] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PKDashboardTitleDetailCell;
  v3 = [(PKDashboardCollectionViewCell *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PKDashboardTitleDetailCell *)v3 contentView];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    defaultTitleTextColor = v4->_defaultTitleTextColor;
    v4->_defaultTitleTextColor = labelColor;

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = *MEMORY[0x1E695F058];
    v10 = *(MEMORY[0x1E695F058] + 8);
    v11 = *(MEMORY[0x1E695F058] + 16);
    v12 = *(MEMORY[0x1E695F058] + 24);
    v13 = [v8 initWithFrame:{*MEMORY[0x1E695F058], v10, v11, v12}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v13;

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [contentView addSubview:v4->_titleLabel];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v9, v10, v11, v12}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v15;

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v4->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [contentView addSubview:v4->_subtitleLabel];
    v17 = objc_alloc_init(MEMORY[0x1E696ADA0]);
    numberFormatter = v4->_numberFormatter;
    v4->_numberFormatter = v17;

    v19 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinnerView = v4->_spinnerView;
    v4->_spinnerView = v19;

    [(UIActivityIndicatorView *)v4->_spinnerView startAnimating];
    [(UIActivityIndicatorView *)v4->_spinnerView setHidden:1];
    [contentView addSubview:v4->_spinnerView];
    v21 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v22 = ;
    v23 = [v21 initWithImage:v22];
    disclosureView = v4->_disclosureView;
    v4->_disclosureView = v23;

    v25 = v4->_disclosureView;
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v25 setTintColor:tertiaryLabelColor];

    [(UIImageView *)v4->_disclosureView setHidden:1];
    [contentView addSubview:v4->_disclosureView];
    [(PKDashboardTitleDetailCell *)v4 resetFonts];
    [(PKDashboardTitleDetailCell *)v4 _updateDefaultValues];
    v31[0] = objc_opt_class();
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
    v28 = [(PKDashboardTitleDetailCell *)v4 registerForTraitChanges:v27 withHandler:&__block_literal_global_15];
  }

  return v4;
}

- (void)resetFonts
{
  titleLabel = self->_titleLabel;
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = *MEMORY[0x1E69DDC38];
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  [(UILabel *)titleLabel setFont:v6];

  subtitleLabel = self->_subtitleLabel;
  v8 = PKFontForDefaultDesign(v4, v5);
  [(UILabel *)subtitleLabel setFont:v8];
}

- (void)setTitleText:(id)text detail:(id)detail
{
  textCopy = text;
  detailCopy = detail;
  titleText = self->_titleText;
  v16 = textCopy;
  v10 = titleText;
  if (v10 == v16)
  {
  }

  else
  {
    if (!v16 || !v10)
    {
      v13 = v16;
LABEL_13:

      goto LABEL_14;
    }

    v11 = [(NSString *)v16 isEqualToString:v10];

    if (!v11)
    {
      goto LABEL_14;
    }
  }

  detailText = self->_detailText;
  v13 = detailCopy;
  v14 = detailText;
  v10 = v14;
  if (v14 == v13)
  {

    goto LABEL_16;
  }

  if (!v13 || !v14)
  {
    goto LABEL_13;
  }

  v15 = [(NSString *)v13 isEqualToString:v14];

  if (!v15)
  {
LABEL_14:
    objc_storeStrong(&self->_titleText, text);
    objc_storeStrong(&self->_detailText, detail);
    [(UILabel *)self->_titleLabel setText:self->_titleText];
    [(UILabel *)self->_subtitleLabel setText:self->_detailText];
    [(PKDashboardTitleDetailCell *)self setNeedsLayout];
  }

LABEL_16:
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  v4 = PKEqualObjects();
  v5 = colorCopy;
  if ((v4 & 1) == 0)
  {
    defaultTitleTextColor = colorCopy;
    if (!colorCopy)
    {
      defaultTitleTextColor = self->_defaultTitleTextColor;
    }

    objc_storeStrong(&self->_titleTextColor, defaultTitleTextColor);
    [(UILabel *)self->_titleLabel setTextColor:self->_titleTextColor];
    v5 = colorCopy;
  }
}

- (void)setDetailTextColor:(id)color
{
  colorCopy = color;
  v4 = PKEqualObjects();
  v5 = colorCopy;
  if ((v4 & 1) == 0)
  {
    defaultTitleTextColor = colorCopy;
    if (!colorCopy)
    {
      defaultTitleTextColor = self->_defaultTitleTextColor;
    }

    objc_storeStrong(&self->_detailTextColor, defaultTitleTextColor);
    [(UILabel *)self->_subtitleLabel setTextColor:self->_detailTextColor];
    v5 = colorCopy;
  }
}

- (void)setAccessory:(unint64_t)accessory
{
  if (self->_accessory != accessory)
  {
    self->_accessory = accessory;
    if (accessory <= 2)
    {
      v4 = 3u >> (accessory & 7);
      [(UIImageView *)self->_disclosureView setHidden:(accessory & 1) == 0];
      spinnerView = self->_spinnerView;

      [(UIActivityIndicatorView *)spinnerView setHidden:v4 & 1];
    }
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKDashboardTitleDetailCell;
  [(PKDashboardCollectionViewCell *)&v4 layoutSubviews];
  contentView = [(PKDashboardTitleDetailCell *)self contentView];
  [contentView bounds];
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
  v105.receiver = self;
  v105.super_class = PKDashboardTitleDetailCell;
  [(PKDashboardCollectionViewCell *)&v105 layoutSubviews];
  v10 = x + 12.0;
  v11 = y + 12.0;
  v99 = width;
  v12 = width + -24.0;
  memset(&v104, 0, sizeof(v104));
  remainder.origin.x = v10;
  remainder.origin.y = y + 12.0;
  v13 = height + -24.0;
  remainder.size.width = v12;
  remainder.size.height = height + -24.0;
  _shouldReverseLayoutDirection = [(PKDashboardTitleDetailCell *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v15 = CGRectMaxXEdge;
  }

  else
  {
    v15 = CGRectMinXEdge;
  }

  if (_shouldReverseLayoutDirection)
  {
    v16 = CGRectMinXEdge;
  }

  else
  {
    v16 = CGRectMaxXEdge;
  }

  [(UIImageView *)self->_disclosureView sizeThatFits:v12, 3.40282347e38];
  v18 = v17;
  v20 = v19;
  [(UIActivityIndicatorView *)self->_spinnerView sizeThatFits:v12, 3.40282347e38];
  v22 = fmax(v18, v21);
  v24 = fmax(v20, v23);
  v25 = MEMORY[0x1E695F058];
  v26 = *(MEMORY[0x1E695F058] + 8);
  v100 = *MEMORY[0x1E695F058];
  if (v22 <= 0.0)
  {
    v51 = *(MEMORY[0x1E695F058] + 16);
    v53 = *(MEMORY[0x1E695F058] + 24);
    v92 = v51;
    v94 = v53;
    v88 = *MEMORY[0x1E695F058];
    v90 = *(MEMORY[0x1E695F058] + 8);
    v37 = v24;
  }

  else
  {
    *&v97 = v24;
    v27 = *(MEMORY[0x1E695F058] + 16);
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v27;
    v28 = v10;
    v27.width = v11;
    v29 = v12;
    v30 = v13;
    CGRectDivide(*(&v27 - 8), &slice, &remainder, v22, v16);
    CGRectDivide(remainder, &v104, &remainder, 11.0, v16);
    v31 = PKContentAlignmentMake();
    v32.n128_u64[0] = *&slice.origin.x;
    v33.n128_u64[0] = *&slice.origin.y;
    v34.n128_u64[0] = *&slice.size.width;
    v35.n128_u64[0] = *&slice.size.height;
    v36.n128_f64[0] = v22;
    v37 = *&v97;
    v38.n128_u64[0] = v97;
    PKSizeAlignedInRect(v31, v36, v38, v32, v33, v34, v35, v39);
    slice.origin.x = v40;
    slice.origin.y = v41;
    slice.size.width = v42;
    slice.size.height = v43;
    PKRectCenteredIntegralRect();
    v88 = v44;
    v90 = v45;
    v92 = v46;
    v94 = v47;
    PKRectCenteredIntegralRect();
    v100 = v48;
    v26 = v49;
    v51 = v50;
    v53 = v52;
    v12 = remainder.size.width;
  }

  [(UILabel *)self->_subtitleLabel sizeThatFits:v12 * 0.5, 3.40282347e38, v88, v90, *&v92, *&v94];
  v55 = *&v54;
  v57 = v56;
  v96 = *(v25 + 16);
  v98 = *v25;
  slice.origin = *v25;
  slice.size = v96;
  if (v54 > 0.0)
  {
    CGRectDivide(remainder, &slice, &remainder, v54, v16);
    v58 = PKContentAlignmentMake();
    v59.n128_u64[0] = *&slice.origin.x;
    v60.n128_u64[0] = *&slice.origin.y;
    v61.n128_u64[0] = *&slice.size.width;
    v62.n128_u64[0] = *&slice.size.height;
    v63.n128_u64[0] = v55;
    v64.n128_u64[0] = v57;
    PKSizeAlignedInRect(v58, v63, v64, v59, v60, v61, v62, v65);
    slice.origin.x = v66;
    slice.origin.y = v67;
    slice.size.width = v68;
    slice.size.height = v69;
  }

  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, 3.40282347e38];
  v72 = *&v70;
  v101.origin = v98;
  v101.size = v96;
  if (v70 > 0.0)
  {
    v73 = v71;
    CGRectDivide(remainder, &v101, &remainder, v70, v15);
    v74 = PKContentAlignmentMake();
    v75.n128_u64[0] = *&v101.origin.x;
    v76.n128_u64[0] = *&v101.origin.y;
    v77.n128_u64[0] = *&v101.size.width;
    v78.n128_u64[0] = *&v101.size.height;
    v79.n128_u64[0] = v72;
    v80.n128_u64[0] = v73;
    PKSizeAlignedInRect(v74, v79, v80, v75, v76, v77, v78, v81);
    v101.origin.x = v82;
    v101.origin.y = v83;
    v101.size.width = v84;
    v101.size.height = v85;
  }

  if (!layout)
  {
    [(UILabel *)self->_titleLabel setFrame:v101.origin.x, v101.origin.y, v101.size.width, v101.size.height];
    [(UILabel *)self->_subtitleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    [(UIActivityIndicatorView *)self->_spinnerView setFrame:v100, v26, v51, v53];
    [(UIImageView *)self->_disclosureView setFrame:v89, v91, v93, v95];
  }

  v86 = fmax(v101.size.height, fmax(slice.size.height, v37)) + 24.0;
  v87 = v99;
  result.height = v86;
  result.width = v87;
  return result;
}

- (void)_updateDefaultValues
{
  [(UILabel *)self->_titleLabel setTextColor:self->_defaultTitleTextColor];
  subtitleLabel = self->_subtitleLabel;
  defaultTitleTextColor = self->_defaultTitleTextColor;

  [(UILabel *)subtitleLabel setTextColor:defaultTitleTextColor];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = PKDashboardTitleDetailCell;
  [(PKDashboardCollectionViewCell *)&v7 prepareForReuse];
  titleText = self->_titleText;
  self->_titleText = 0;

  detailText = self->_detailText;
  self->_detailText = 0;

  titleTextColor = self->_titleTextColor;
  self->_titleTextColor = 0;

  detailTextColor = self->_detailTextColor;
  self->_detailTextColor = 0;

  self->_accessory = 0;
  [(UIImageView *)self->_disclosureView setHidden:1];
  [(UIActivityIndicatorView *)self->_spinnerView setHidden:1];
  [(PKDashboardTitleDetailCell *)self _updateDefaultValues];
}

@end