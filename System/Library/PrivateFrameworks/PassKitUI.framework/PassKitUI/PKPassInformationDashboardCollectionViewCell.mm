@interface PKPassInformationDashboardCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPassInformationDashboardCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_createDisclosureViewIfNecessary;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshFonts;
- (void)setSecondaryText:(id)text;
- (void)setShowsDisclosureView:(BOOL)view;
- (void)setTertiaryText:(id)text;
- (void)setTitle:(id)title;
@end

@implementation PKPassInformationDashboardCollectionViewCell

- (PKPassInformationDashboardCollectionViewCell)initWithFrame:(CGRect)frame
{
  v21[2] = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = PKPassInformationDashboardCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v4;

    [(UILabel *)v3->_titleLabel setNumberOfLines:1];
    v6 = v3->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v6 setTextColor:labelColor];

    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v3->_secondaryLabel;
    v3->_secondaryLabel = v8;

    v10 = v3->_secondaryLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v10 setTextColor:secondaryLabelColor];

    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    tertiaryLabel = v3->_tertiaryLabel;
    v3->_tertiaryLabel = v12;

    v14 = v3->_tertiaryLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v14 setTextColor:secondaryLabelColor2];

    contentView = [(PKPassInformationDashboardCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_titleLabel];
    [contentView addSubview:v3->_secondaryLabel];
    [contentView addSubview:v3->_tertiaryLabel];
    [(PKPassInformationDashboardCollectionViewCell *)v3 refreshFonts];
    v21[0] = objc_opt_class();
    v21[1] = objc_opt_class();
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v18 = [(PKPassInformationDashboardCollectionViewCell *)v3 registerForTraitChanges:v17 withHandler:&__block_literal_global_9];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKPassInformationDashboardCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v3 prepareForReuse];
  [(PKPassInformationDashboardCollectionViewCell *)self setTitle:0];
  [(PKPassInformationDashboardCollectionViewCell *)self setSecondaryText:0];
  [(PKPassInformationDashboardCollectionViewCell *)self setTertiaryText:0];
  [(PKPassInformationDashboardCollectionViewCell *)self setShowsDisclosureView:0];
}

- (void)layoutSubviews
{
  v79.receiver = self;
  v79.super_class = PKPassInformationDashboardCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v79 layoutSubviews];
  if ([(PKPassInformationDashboardCollectionViewCell *)self _shouldReverseLayoutDirection])
  {
    v3 = CGRectMinXEdge;
  }

  else
  {
    v3 = CGRectMaxXEdge;
  }

  [(PKPassInformationDashboardCollectionViewCell *)self bounds];
  memset(&v77, 0, sizeof(v77));
  v5 = v4 + 16.0;
  v7 = v6 + 16.0;
  v9 = v8 + -32.0;
  v11 = v10 + -28.0;
  remainder.origin.x = v4 + 16.0;
  remainder.origin.y = v6 + 16.0;
  remainder.size.width = v8 + -32.0;
  remainder.size.height = v10 + -28.0;
  v12 = *(MEMORY[0x1E695F058] + 16);
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v12;
  [(UIImageView *)self->_disclosureView sizeThatFits:v8 + -32.0, v10 + -28.0];
  v14 = v13;
  v70 = v15;
  v80.origin.x = v5;
  v80.origin.y = v7;
  v80.size.width = v9;
  v80.size.height = v11;
  CGRectDivide(v80, &slice, &remainder, v14, v3);
  CGRectDivide(remainder, &v77, &remainder, 8.0, v3);
  v75 = remainder;
  size = remainder.size;
  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v18 = v17;
  v20 = v19;
  [(UILabel *)self->_secondaryLabel sizeThatFits:size];
  v22 = v21;
  v24 = v23;
  [(UILabel *)self->_tertiaryLabel sizeThatFits:size];
  v71 = v25;
  v27 = v26;
  v28 = fmax(v20, 0.0);
  v29 = -0.0;
  if (v24 > 0.0)
  {
    v29 = v24;
  }

  v30 = v28 + v29;
  if (v27 <= 0.0)
  {
    v31 = v30;
  }

  else
  {
    v31 = v30 + v27;
  }

  v75.size.height = v31;
  if (self->_showsDisclosureView)
  {
    memset(&v74, 0, sizeof(v74));
    CGRectDivide(slice, &slice, &v74, v20, CGRectMinYEdge);
    disclosureView = self->_disclosureView;
    v33 = PKContentAlignmentMake();
    v34.n128_u64[0] = *&slice.origin.x;
    v35.n128_u64[0] = *&slice.origin.y;
    v36.n128_u64[0] = *&slice.size.width;
    v37.n128_u64[0] = *&slice.size.height;
    v38.n128_f64[0] = v14;
    v39.n128_u64[0] = v70;
    PKSizeAlignedInRect(v33, v38, v39, v34, v35, v36, v37, v40);
    [(UIImageView *)disclosureView setFrame:?];
  }

  memset(&v74, 0, sizeof(v74));
  v81.origin.x = v75.origin.x;
  v81.origin.y = v75.origin.y;
  v81.size.width = size.width;
  v81.size.height = v31;
  CGRectDivide(v81, &v74, &v75, v20, CGRectMinYEdge);
  titleLabel = self->_titleLabel;
  v42 = PKContentAlignmentMake();
  v43.n128_u64[0] = *&v74.origin.x;
  v44.n128_u64[0] = *&v74.origin.y;
  v45.n128_u64[0] = *&v74.size.width;
  v46.n128_u64[0] = *&v74.size.height;
  v47.n128_u64[0] = fmin(v18, size.width);
  v48.n128_f64[0] = v20;
  PKSizeAlignedInRect(v42, v47, v48, v43, v44, v45, v46, v49);
  [(UILabel *)titleLabel setFrame:?];
  v50 = fmin(v22, v75.size.width);
  memset(&v73, 0, sizeof(v73));
  CGRectDivide(v75, &v73, &v75, v24, CGRectMinYEdge);
  secondaryLabel = self->_secondaryLabel;
  v52 = PKContentAlignmentMake();
  v53.n128_u64[0] = *&v73.origin.x;
  v54.n128_u64[0] = *&v73.origin.y;
  v55.n128_u64[0] = *&v73.size.width;
  v56.n128_u64[0] = *&v73.size.height;
  v57.n128_f64[0] = v50;
  v58.n128_f64[0] = v24;
  PKSizeAlignedInRect(v52, v57, v58, v53, v54, v55, v56, v59);
  [(UILabel *)secondaryLabel setFrame:?];
  v60 = fmin(v71, v75.size.width);
  memset(&v72, 0, sizeof(v72));
  CGRectDivide(v75, &v72, &v75, v27, CGRectMinYEdge);
  tertiaryLabel = self->_tertiaryLabel;
  v62 = PKContentAlignmentMake();
  v63.n128_u64[0] = *&v72.origin.x;
  v64.n128_u64[0] = *&v72.origin.y;
  v65.n128_u64[0] = *&v72.size.width;
  v66.n128_u64[0] = *&v72.size.height;
  v67.n128_f64[0] = v60;
  v68.n128_f64[0] = v27;
  PKSizeAlignedInRect(v62, v67, v68, v63, v64, v65, v66, v69);
  [(UILabel *)tertiaryLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(UILabel *)self->_titleLabel font:fits.width];
  [v5 lineHeight];
  v7 = v6 + 16.0;
  font = [(UILabel *)self->_secondaryLabel font];
  [font lineHeight];
  v10 = v7 + v9;
  font2 = [(UILabel *)self->_tertiaryLabel font];
  [font2 lineHeight];
  v13 = v10 + v12 + 12.0;

  v14.n128_f64[0] = fmax(v13, 76.0);
  PKFloatRoundToPixel(v14, v15);
  v17 = v16;
  v18 = width;
  result.height = v17;
  result.width = v18;
  return result;
}

- (void)setTitle:(id)title
{
  titleLabel = self->_titleLabel;
  v5 = [title copy];
  [(UILabel *)titleLabel setText:v5];

  [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
}

- (void)setSecondaryText:(id)text
{
  secondaryLabel = self->_secondaryLabel;
  v5 = [text copy];
  [(UILabel *)secondaryLabel setText:v5];

  [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
}

- (void)setTertiaryText:(id)text
{
  tertiaryLabel = self->_tertiaryLabel;
  v5 = [text copy];
  [(UILabel *)tertiaryLabel setText:v5];

  [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
}

- (void)setShowsDisclosureView:(BOOL)view
{
  if (self->_showsDisclosureView == !view)
  {
    self->_showsDisclosureView = view;
    if (view)
    {
      [(PKPassInformationDashboardCollectionViewCell *)self _createDisclosureViewIfNecessary];
      superview = [(UIImageView *)self->_disclosureView superview];

      if (!superview)
      {
        contentView = [(PKPassInformationDashboardCollectionViewCell *)self contentView];
        [contentView addSubview:self->_disclosureView];
      }
    }

    else
    {
      [(UIImageView *)self->_disclosureView removeFromSuperview];
    }

    [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)_createDisclosureViewIfNecessary
{
  if (!self->_disclosureView)
  {
    v3 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v4 = PKUISmallChevronImage();
    v5 = [v3 initWithImage:v4];

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v5 setTintColor:tertiaryLabelColor];

    [(UIImageView *)v5 setContentMode:1];
    disclosureView = self->_disclosureView;
    self->_disclosureView = v5;
  }
}

- (void)refreshFonts
{
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  [(UILabel *)self->_secondaryLabel setNumberOfLines:v5];
  [(UILabel *)self->_tertiaryLabel setNumberOfLines:v5];
  v6 = PKUIGetMinScreenWidthType();
  titleLabel = self->_titleLabel;
  v8 = v6 == 0;
  if (v6)
  {
    v9 = *MEMORY[0x1E69DDCF8];
  }

  else
  {
    v9 = *MEMORY[0x1E69DDD80];
  }

  v10 = *MEMORY[0x1E69DDC90];
  if (v8)
  {
    v11 = *MEMORY[0x1E69DDD28];
  }

  else
  {
    v11 = *MEMORY[0x1E69DDD80];
  }

  v12 = PKFontForDefaultDesign(v9, *MEMORY[0x1E69DDC90], 32770, 0);
  [(UILabel *)titleLabel setFont:v12];

  v13 = PKFontForDefaultDesign(v11, v10, 0x8000, 0);
  [(UILabel *)self->_secondaryLabel setFont:v13];
  [(UILabel *)self->_tertiaryLabel setFont:v13];
  [(PKPassInformationDashboardCollectionViewCell *)self setNeedsLayout];
}

@end