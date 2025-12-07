@interface PKPaymentTransactionLocationTableViewCell
- (BOOL)_shouldShowDisclosureIndicator;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentTransactionLocationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)_disclosureView;
- (void)layoutSubviews;
- (void)setTransaction:(id)transaction;
@end

@implementation PKPaymentTransactionLocationTableViewCell

- (PKPaymentTransactionLocationTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = PKPaymentTransactionLocationTableViewCell;
  v4 = [(PKPaymentTransactionLocationTableViewCell *)&v17 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PKPaymentTransactionLocationTableViewCell *)v4 contentView];
    v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v7;

    v9 = objc_alloc_init(PKTransactionMapView);
    mapView = v5->_mapView;
    v5->_mapView = v9;

    [(PKTransactionMapView *)v5->_mapView setShowsMerchantName:1];
    v11 = v5->_titleLabel;
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v11 setFont:v12];

    v13 = v5->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v13 setTextColor:labelColor];

    [(UILabel *)v5->_titleLabel setNumberOfLines:1];
    [(UILabel *)v5->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [contentView addSubview:v5->_titleLabel];
    [contentView addSubview:v5->_mapView];
    _disclosureView = [(PKPaymentTransactionLocationTableViewCell *)v5 _disclosureView];
    [contentView addSubview:_disclosureView];

    [(PKPaymentTransactionLocationTableViewCell *)v5 setPreservesSuperviewLayoutMargins:1];
    [(PKPaymentTransactionLocationTableViewCell *)v5 setAccessibilityIdentifier:*MEMORY[0x1E69B9908]];
  }

  return v5;
}

- (void)layoutSubviews
{
  v57.receiver = self;
  v57.super_class = PKPaymentTransactionLocationTableViewCell;
  [(PKPaymentTransactionLocationTableViewCell *)&v57 layoutSubviews];
  contentView = [(PKPaymentTransactionLocationTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  remainder.origin.x = v5;
  remainder.origin.y = v7;
  remainder.size.width = v9;
  remainder.size.height = v11;
  if ([(PKPaymentTransactionLocationTableViewCell *)self _shouldReverseLayoutDirection:0])
  {
    v12 = CGRectMinXEdge;
  }

  else
  {
    v12 = CGRectMaxXEdge;
  }

  v58.origin.x = v5;
  v58.origin.y = v7;
  v58.size.width = v9;
  v58.size.height = v11;
  Width = CGRectGetWidth(v58);
  mapView = self->_mapView;
  v15 = PKContentAlignmentMake();
  v16.n128_f64[0] = Width;
  v17.n128_u64[0] = 0x4066A00000000000;
  v18.n128_f64[0] = v5;
  v19.n128_f64[0] = v7;
  v20.n128_f64[0] = v9;
  v21.n128_f64[0] = v11;
  PKSizeAlignedInRect(v15, v16, v17, v18, v19, v20, v21, v22);
  [(PKTransactionMapView *)mapView setFrame:?];
  v59.origin.x = v5;
  v59.origin.y = v7;
  v59.size.width = v9;
  v59.size.height = v11;
  CGRectDivide(v59, &v55, &remainder, 181.0, CGRectMinYEdge);
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v24 = v23;
  v27.f64[1] = v26;
  remainder.origin = vaddq_f64(remainder.origin, v27);
  remainder.size.width = remainder.size.width - (v27.f64[0] + v23);
  remainder.size.height = remainder.size.height - (v26 + v25);
  _disclosureView = [(PKPaymentTransactionLocationTableViewCell *)self _disclosureView];
  [_disclosureView bounds];
  v30 = v29;
  v32 = v31;

  disclosureView = self->_disclosureView;
  v34 = PKContentAlignmentMake();
  v35.n128_u64[0] = *&remainder.origin.x;
  v36.n128_u64[0] = *&remainder.origin.y;
  v37.n128_u64[0] = *&remainder.size.width;
  v38.n128_u64[0] = *&remainder.size.height;
  v39.n128_f64[0] = v30;
  v40.n128_u64[0] = v32;
  PKSizeAlignedInRect(v34, v39, v40, v35, v36, v37, v38, v41);
  [(UIImageView *)disclosureView setFrame:?];
  CGRectDivide(remainder, &v55, &remainder, v24 + v30, v12);
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
  v43 = v42;
  v45 = v44;
  titleLabel = self->_titleLabel;
  v47 = PKContentAlignmentMake();
  v48.n128_u64[0] = *&remainder.origin.x;
  v49.n128_u64[0] = *&remainder.origin.y;
  v50.n128_u64[0] = *&remainder.size.width;
  v51.n128_u64[0] = *&remainder.size.height;
  v52.n128_u64[0] = v43;
  v53.n128_u64[0] = v45;
  PKSizeAlignedInRect(v47, v52, v53, v48, v49, v50, v51, v54);
  [(UILabel *)titleLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UITableViewCell *)self pkui_effectiveLayoutMargins:fits.width];
  v6 = v5;
  v8 = v7;
  text = [(UILabel *)self->_titleLabel text];

  if (text)
  {
    font = [(UILabel *)self->_titleLabel font];
    [font lineHeight];
    v12 = v8 + v6 + v11 + 181.0;
  }

  else
  {
    v12 = 181.0;
  }

  v13 = width;
  v14 = v12;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)setTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (self->_transaction != transactionCopy)
  {
    v15 = transactionCopy;
    objc_storeStrong(&self->_transaction, transaction);
    merchant = [(PKPaymentTransaction *)v15 merchant];
    displayName = [merchant displayName];

    if (displayName)
    {
LABEL_18:
      [(UILabel *)self->_titleLabel setText:displayName];
      [(PKTransactionMapView *)self->_mapView setTransaction:v15];
      [(UIImageView *)self->_disclosureView setHidden:[(PKPaymentTransactionLocationTableViewCell *)self _shouldShowDisclosureIndicator]^ 1];

      transactionCopy = v15;
      goto LABEL_19;
    }

    displayLocation = [(PKPaymentTransaction *)self->_transaction displayLocation];
    if (displayLocation)
    {
      displayName = displayLocation;
      goto LABEL_18;
    }

    startStation = [(PKPaymentTransaction *)self->_transaction startStation];
    endStation = [(PKPaymentTransaction *)self->_transaction endStation];
    v11 = endStation;
    if (startStation)
    {
      v12 = endStation == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      if (!(startStation | endStation))
      {
        displayName = 0;
        goto LABEL_17;
      }

      if (startStation)
      {
        v13 = startStation;
      }

      else
      {
        v13 = endStation;
      }

      v14 = v13;
    }

    else
    {
      v14 = PKLocalizedPaymentString(&cfstr_TransitTransac.isa, &cfstr_12.isa, startStation, endStation);
    }

    displayName = v14;
LABEL_17:

    goto LABEL_18;
  }

LABEL_19:
}

- (BOOL)_shouldShowDisclosureIndicator
{
  merchant = [(PKPaymentTransaction *)self->_transaction merchant];
  if ([merchant shouldIgnoreMapsMatches])
  {
    v3 = 0;
  }

  else
  {
    mapsMerchant = [merchant mapsMerchant];
    v3 = [mapsMerchant identifier] != 0;
  }

  return v3;
}

- (id)_disclosureView
{
  disclosureView = self->_disclosureView;
  if (!disclosureView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DCAE0]);
    if (_UISolariumFeatureFlagEnabled())
    {
      PKUISmallChevronImage();
    }

    else
    {
      PKUIChevronImage();
    }
    v5 = ;
    v6 = [v4 initWithImage:v5];

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v6 setTintColor:tertiaryLabelColor];

    v8 = self->_disclosureView;
    self->_disclosureView = v6;

    disclosureView = self->_disclosureView;
  }

  return disclosureView;
}

@end