@interface PKPaymentTransactionMapCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentTransactionMapCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)_updateSpinnerAndDisclosureIndicator;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)resetFonts;
- (void)setShowDisclosureIndicator:(BOOL)indicator;
- (void)setShowSpinner:(BOOL)spinner;
@end

@implementation PKPaymentTransactionMapCollectionViewCell

- (PKPaymentTransactionMapCollectionViewCell)initWithFrame:(CGRect)frame
{
  v22[1] = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = PKPaymentTransactionMapCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(PKTransactionMapView);
    mapView = v3->_mapView;
    v3->_mapView = v4;

    [(PKTransactionMapView *)v3->_mapView setShowsMerchantName:1];
    contentView = [(PKPaymentTransactionMapCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_mapView];

    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v7;

    contentView2 = [(PKPaymentTransactionMapCollectionViewCell *)v3 contentView];
    [contentView2 addSubview:v3->_titleLabel];

    v10 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v11 = ;
    v12 = [v10 initWithImage:v11];

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v12 setTintColor:tertiaryLabelColor];

    disclosureView = v3->_disclosureView;
    v3->_disclosureView = v12;
    v15 = v12;

    v16 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    spinner = v3->_spinner;
    v3->_spinner = v16;

    [(UIActivityIndicatorView *)v3->_spinner sizeToFit];
    [(PKPaymentTransactionMapCollectionViewCell *)v3 resetFonts];
    v22[0] = objc_opt_class();
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];

    v19 = [(PKPaymentTransactionMapCollectionViewCell *)v3 registerForTraitChanges:v18 withHandler:&__block_literal_global_46];
    [(PKPaymentTransactionMapCollectionViewCell *)v3 setAccessibilityIdentifier:*MEMORY[0x1E69B9D38]];
  }

  return v3;
}

- (void)resetFonts
{
  titleLabel = self->_titleLabel;
  v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
  [(UILabel *)titleLabel setFont:v3];
}

- (void)setShowDisclosureIndicator:(BOOL)indicator
{
  if (self->_showDisclosureIndicator != indicator)
  {
    self->_showDisclosureIndicator = indicator;
    [(PKPaymentTransactionMapCollectionViewCell *)self _updateSpinnerAndDisclosureIndicator];
  }
}

- (void)setShowSpinner:(BOOL)spinner
{
  if (self->_showSpinner != spinner)
  {
    self->_showSpinner = spinner;
    spinner = self->_spinner;
    if (spinner)
    {
      [(UIActivityIndicatorView *)spinner startAnimating];
    }

    else
    {
      [(UIActivityIndicatorView *)spinner stopAnimating];
    }

    [(PKPaymentTransactionMapCollectionViewCell *)self _updateSpinnerAndDisclosureIndicator];
  }
}

- (void)_updateSpinnerAndDisclosureIndicator
{
  if (self->_showSpinner)
  {
    v3 = &OBJC_IVAR___PKPaymentTransactionMapCollectionViewCell__disclosureView;
    superview = [(UIActivityIndicatorView *)self->_spinner superview];

    if (!superview)
    {
      contentView = [(PKPaymentTransactionMapCollectionViewCell *)self contentView];
      [contentView addSubview:self->_spinner];
    }
  }

  else
  {
    v3 = &OBJC_IVAR___PKPaymentTransactionMapCollectionViewCell__disclosureView;
    if (self->_showDisclosureIndicator)
    {
      v3 = &OBJC_IVAR___PKPaymentTransactionMapCollectionViewCell__spinner;
      superview2 = [(UIImageView *)self->_disclosureView superview];

      if (!superview2)
      {
        contentView2 = [(PKPaymentTransactionMapCollectionViewCell *)self contentView];
        [contentView2 addSubview:self->_disclosureView];

        v3 = &OBJC_IVAR___PKPaymentTransactionMapCollectionViewCell__spinner;
      }
    }

    else
    {
      [(UIActivityIndicatorView *)self->_spinner removeFromSuperview];
    }
  }

  [*(&self->super.super.super.super.super.super.isa + *v3) removeFromSuperview];

  [(PKPaymentTransactionMapCollectionViewCell *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionMapCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v4 prepareForReuse];
  item = self->_item;
  self->_item = 0;

  [(UILabel *)self->_titleLabel setText:0];
  [(PKPaymentTransactionMapCollectionViewCell *)self setShowSpinner:0];
  [(PKPaymentTransactionMapCollectionViewCell *)self setShowDisclosureIndicator:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v5 = [(UILabel *)self->_titleLabel text:fits.width];

  if (v5)
  {
    font = [(UILabel *)self->_titleLabel font];
    [font lineHeight];
    v7.n128_u64[0] = 28.0;
    v9.n128_f64[0] = v8 + 28.0;
    PKFloatRoundToPixel(v9, v7);
    v11 = v10 + 200.0;
  }

  else
  {
    v11 = 200.0;
  }

  v12 = width;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v56.receiver = self;
  v56.super_class = PKPaymentTransactionMapCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v56 layoutSubviews];
  contentView = [(PKPaymentTransactionMapCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  remainder.origin.x = v4;
  remainder.origin.y = v6;
  remainder.size.width = v8;
  remainder.size.height = v10;

  memset(&v54, 0, sizeof(v54));
  v57.origin.x = v5;
  v57.origin.y = v7;
  v57.size.width = v9;
  v57.size.height = v11;
  CGRectDivide(v57, &v54, &remainder, 200.0, CGRectMinYEdge);
  [(PKTransactionMapView *)self->_mapView setFrame:*&v54.origin, *&v54.size];
  CGRectDivide(remainder, &v54, &remainder, 14.0, CGRectMinYEdge);
  CGRectDivide(remainder, &v54, &remainder, 14.0, CGRectMinXEdge);
  CGRectDivide(remainder, &v54, &remainder, 14.0, CGRectMaxXEdge);
  CGRectDivide(remainder, &v54, &remainder, 14.0, CGRectMaxYEdge);
  superview = [(UIActivityIndicatorView *)self->_spinner superview];

  if (superview)
  {
    [(UIActivityIndicatorView *)self->_spinner frame];
    PKSizeAspectFit();
    v14 = v13;
    v16 = v15;
    spinner = self->_spinner;
    v18 = PKContentAlignmentMake();
    v19.n128_u64[0] = *&remainder.origin.x;
    v20.n128_u64[0] = *&remainder.origin.y;
    v21.n128_u64[0] = *&remainder.size.width;
    v22.n128_u64[0] = *&remainder.size.height;
    v23.n128_f64[0] = v14;
    v24.n128_u64[0] = v16;
    PKSizeAlignedInRect(v18, v23, v24, v19, v20, v21, v22, v25);
    [(UIActivityIndicatorView *)spinner setFrame:?];
    v26 = v14 + 14.0;
LABEL_5:
    CGRectDivide(remainder, &v54, &remainder, v26, CGRectMaxXEdge);
    goto LABEL_6;
  }

  superview2 = [(UIImageView *)self->_disclosureView superview];

  if (superview2)
  {
    [(UIImageView *)self->_disclosureView frame];
    v29 = *&v28;
    v31 = v30;
    CGRectDivide(remainder, &v54, &remainder, v28, CGRectMaxXEdge);
    disclosureView = self->_disclosureView;
    v33 = PKContentAlignmentMake();
    v35.n128_u64[0] = *&v54.origin.y;
    v34.n128_u64[0] = *&v54.origin.x;
    v37.n128_u64[0] = *&v54.size.height;
    v36.n128_u64[0] = *&v54.size.width;
    v38.n128_u64[0] = v29;
    v39.n128_u64[0] = v31;
    PKSizeAlignedInRect(v33, v38, v39, v34, v35, v36, v37, v40);
    [(UIImageView *)disclosureView setFrame:?];
    v26 = 14.0;
    goto LABEL_5;
  }

LABEL_6:
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
  v42 = v41;
  v44 = v43;
  titleLabel = self->_titleLabel;
  v46 = PKContentAlignmentMake();
  v47.n128_u64[0] = *&remainder.origin.x;
  v48.n128_u64[0] = *&remainder.origin.y;
  v49.n128_u64[0] = *&remainder.size.width;
  v50.n128_u64[0] = *&remainder.size.height;
  v51.n128_u64[0] = v42;
  v52.n128_u64[0] = v44;
  PKSizeAlignedInRect(v46, v51, v52, v47, v48, v49, v50, v53);
  [(UILabel *)titleLabel setFrame:?];
}

@end