@interface PKPaymentPassTableViewCell
+ (double)heightForCellWithMinimum:(double)minimum hasSubTitle:(BOOL)title;
- (PKPaymentPassTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateLabelText;
- (void)_updateLabelTextColors;
- (void)layoutSubviews;
- (void)pk_applyAppearance:(id)appearance;
- (void)setDisabledMainLabelColor:(id)color;
- (void)setDisabledSubTextLabelColor:(id)color;
- (void)setMainLabelColor:(id)color;
- (void)setPass:(id)pass;
- (void)setPeerPaymentAccount:(id)account;
- (void)setSubTextLabelColor:(id)color;
- (void)setUserInteractionEnabled:(BOOL)enabled;
@end

@implementation PKPaymentPassTableViewCell

- (PKPaymentPassTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v27.receiver = self;
  v27.super_class = PKPaymentPassTableViewCell;
  v4 = [(PKPaymentPassTableViewCell *)&v27 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    mainLabelColor = v4->_mainLabelColor;
    v4->_mainLabelColor = labelColor;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    subTextLabelColor = v4->_subTextLabelColor;
    v4->_subTextLabelColor = secondaryLabelColor;

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    disabledMainLabelColor = v4->_disabledMainLabelColor;
    v4->_disabledMainLabelColor = tertiaryLabelColor;

    quaternaryLabelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    disabledSubTextLabelColor = v4->_disabledSubTextLabelColor;
    v4->_disabledSubTextLabelColor = quaternaryLabelColor;

    v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    mainLabel = v4->_mainLabel;
    v4->_mainLabel = v13;

    v15 = v4->_mainLabel;
    titleFont = [objc_opt_class() titleFont];
    [(UILabel *)v15 setFont:titleFont];

    [(UILabel *)v4->_mainLabel setTextColor:v4->_mainLabelColor];
    contentView = [(PKPaymentPassTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_mainLabel];

    v18 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subTextLabel = v4->_subTextLabel;
    v4->_subTextLabel = v18;

    v20 = v4->_subTextLabel;
    subTitleFont = [objc_opt_class() subTitleFont];
    [(UILabel *)v20 setFont:subTitleFont];

    [(UILabel *)v4->_subTextLabel setTextColor:v4->_subTextLabelColor];
    contentView2 = [(PKPaymentPassTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_subTextLabel];

    [(PKPaymentPassTableViewCell *)v4 setAutoresizingMask:18];
    v23 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    contentView3 = [(PKPaymentPassTableViewCell *)v4 contentView];
    [contentView3 addSubview:v23];

    [(UIView *)v23 startAnimating];
    cardSnapshotView = v4->_cardSnapshotView;
    v4->_cardSnapshotView = v23;
  }

  return v4;
}

+ (double)heightForCellWithMinimum:(double)minimum hasSubTitle:(BOOL)title
{
  titleCopy = title;
  titleFont = [self titleFont];
  [titleFont lineHeight];
  v9 = v8;

  if (titleCopy)
  {
    subTitleFont = [self subTitleFont];
    [subTitleFont lineHeight];
    v9 = v9 + v11;
  }

  result = v9 + 16.0;
  if (v9 + 16.0 <= minimum)
  {
    return minimum;
  }

  return result;
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  objc_storeStrong(&self->_pass, pass);
  if ([(PKPaymentPass *)self->_pass isStoredValuePass])
  {
    v6 = [objc_alloc(MEMORY[0x1E69B9308]) initWithPass:self->_pass];
    transitBalanceModel = self->_transitBalanceModel;
    self->_transitBalanceModel = v6;

    v8 = self->_transitBalanceModel;
    v9 = [MEMORY[0x1E69B9310] passPropertiesForPass:self->_pass];
    [(PKTransitBalanceModel *)v8 setTransitProperties:v9 andApplyStoredValueBalances:1];
  }

  else
  {
    v9 = self->_transitBalanceModel;
    self->_transitBalanceModel = 0;
  }

  [(PKPaymentPassTableViewCell *)self _updateLabelText];
  v10 = +[PKPassSnapshotter sharedInstance];
  pass = self->_pass;
  PKPassFrontFaceContentSize();
  v14.n128_f64[0] = v13.n128_f64[0] / v12 * 66.0;
  PKFloatRoundToPixel(v14, v13);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __38__PKPaymentPassTableViewCell_setPass___block_invoke;
  v16[3] = &unk_1E8010A38;
  v16[4] = self;
  [v10 snapshotWithPass:pass size:v16 completion:{66.0, v15}];
}

void __38__PKPaymentPassTableViewCell_setPass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__PKPaymentPassTableViewCell_setPass___block_invoke_2;
  v5[3] = &unk_1E8010A10;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __38__PKPaymentPassTableViewCell_setPass___block_invoke_2(uint64_t a1)
{
  [*(*(a1 + 32) + 1080) removeFromSuperview];
  v2 = *(a1 + 32);
  v3 = *(v2 + 1080);
  *(v2 + 1080) = 0;

  v4 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*(a1 + 40)];
  v5 = *(a1 + 32);
  v6 = *(v5 + 1080);
  *(v5 + 1080) = v4;

  [*(*(a1 + 32) + 1080) setAccessibilityIgnoresInvertColors:1];
  v7 = [*(a1 + 32) contentView];
  [v7 addSubview:*(*(a1 + 32) + 1080)];

  v8 = *(a1 + 32);

  return [v8 setNeedsLayout];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  v4.receiver = self;
  v4.super_class = PKPaymentPassTableViewCell;
  [(PKPaymentPassTableViewCell *)&v4 setUserInteractionEnabled:enabled];
  [(PKPaymentPassTableViewCell *)self _updateLabelTextColors];
}

- (void)setMainLabelColor:(id)color
{
  colorCopy = color;
  if (self->_mainLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_mainLabelColor, color);
    [(PKPaymentPassTableViewCell *)self _updateLabelTextColors];
    colorCopy = v6;
  }
}

- (void)setSubTextLabelColor:(id)color
{
  colorCopy = color;
  if (self->_subTextLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_subTextLabelColor, color);
    [(PKPaymentPassTableViewCell *)self _updateLabelTextColors];
    colorCopy = v6;
  }
}

- (void)setDisabledMainLabelColor:(id)color
{
  colorCopy = color;
  if (self->_disabledMainLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_disabledMainLabelColor, color);
    [(PKPaymentPassTableViewCell *)self _updateLabelTextColors];
    colorCopy = v6;
  }
}

- (void)setDisabledSubTextLabelColor:(id)color
{
  colorCopy = color;
  if (self->_disabledSubTextLabelColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_disabledSubTextLabelColor, color);
    [(PKPaymentPassTableViewCell *)self _updateLabelTextColors];
    colorCopy = v6;
  }
}

- (void)setPeerPaymentAccount:(id)account
{
  accountCopy = account;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_peerPaymentAccount, account);
    [(PKPaymentPassTableViewCell *)self _updateLabelText];
  }
}

- (void)layoutSubviews
{
  v61.receiver = self;
  v61.super_class = PKPaymentPassTableViewCell;
  [(PKPaymentPassTableViewCell *)&v61 layoutSubviews];
  contentView = [(PKPaymentPassTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  memset(&remainder, 0, sizeof(remainder));
  memset(&slice, 0, sizeof(slice));
  if ([(PKPaymentPassTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v12 = CGRectMaxXEdge;
  }

  else
  {
    v12 = CGRectMinXEdge;
  }

  v62.origin.x = v5;
  v62.origin.y = v7;
  v62.size.width = v9;
  v62.size.height = v11;
  CGRectDivide(v62, &slice, &remainder, 20.0, v12);
  [(UIView *)self->_cardSnapshotView frame];
  v14 = v13;
  v16 = v15;
  _shouldReverseLayoutDirection = [(PKPaymentPassTableViewCell *)self _shouldReverseLayoutDirection];
  v21.n128_u64[0] = *&remainder.origin.x;
  v22.n128_u64[0] = *&remainder.origin.y;
  v23.n128_u64[0] = *&remainder.size.width;
  v24.n128_u64[0] = *&remainder.size.height;
  if (_shouldReverseLayoutDirection)
  {
    v25 = 0x100000002;
  }

  else
  {
    v25 = 0x100000000;
  }

  v18.n128_u64[0] = v14;
  v19.n128_u64[0] = v16;
  PKSizeAlignedInRect(v25, v18, v19, v21, v22, v23, v24, v20);
  remainder.origin.x = v26;
  remainder.origin.y = v27;
  remainder.size.width = v28;
  remainder.size.height = v29;
  [(UIView *)self->_cardSnapshotView setFrame:?];
  memset(&v58, 0, sizeof(v58));
  if ([(PKPaymentPassTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v30 = CGRectMaxXEdge;
  }

  else
  {
    v30 = CGRectMinXEdge;
  }

  v63.origin.x = v5;
  v63.origin.y = v7;
  v63.size.width = v9;
  v63.size.height = v11;
  CGRectDivide(v63, &slice, &v58, 96.0, v30);
  if ([(PKPaymentPassTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v31 = CGRectMinXEdge;
  }

  else
  {
    v31 = CGRectMaxXEdge;
  }

  CGRectDivide(v58, &slice, &v58, 0.0, v31);
  [(UILabel *)self->_mainLabel frame];
  v33 = v32;
  width = v58.size.width;
  _shouldReverseLayoutDirection2 = [(PKPaymentPassTableViewCell *)self _shouldReverseLayoutDirection];
  v40.n128_u64[0] = *&v58.origin.y;
  v39.n128_u64[0] = *&v58.origin.x;
  v42.n128_u64[0] = *&v58.size.height;
  v41.n128_u64[0] = *&v58.size.width;
  if (_shouldReverseLayoutDirection2)
  {
    v43 = 0x100000002;
  }

  else
  {
    v43 = 0x100000000;
  }

  v36.n128_f64[0] = width;
  v37.n128_u64[0] = v33;
  PKSizeAlignedInRect(v43, v36, v37, v39, v40, v41, v42, v38);
  v58.origin.x = v44;
  v58.origin.y = v45;
  v58.size.width = v46;
  v58.size.height = v47;
  [(UILabel *)self->_mainLabel setFrame:?];
  [(UILabel *)self->_subTextLabel frame];
  v49 = v48;
  height = v58.size.height;
  v51 = v11 * 0.5 - (v58.size.height + v49) * 0.5;
  if (v51 <= 8.0)
  {
    v58.origin.y = v11 * 0.5 - (v58.size.height + v49) * 0.5;
    v54 = v58.size.width;
    x = v58.origin.x;
    v55 = v58.origin.x;
    v56 = v51;
    v57 = v58.size.width;
    MaxY = CGRectGetMaxY(*(&height - 3));
  }

  else
  {
    v58.origin.y = 8.0;
    MaxY = v11 + -8.0 - v49;
    x = v58.origin.x;
    v54 = v58.size.width;
  }

  [(UILabel *)self->_mainLabel setFrame:?];
  [(UILabel *)self->_subTextLabel setFrame:x, MaxY, v54, v49];
}

- (void)_updateLabelText
{
  mainLabel = self->_mainLabel;
  localizedDescription = [(PKPaymentPass *)self->_pass localizedDescription];
  [(UILabel *)mainLabel setText:localizedDescription];

  [(UILabel *)self->_mainLabel sizeToFit];
  isAccessPass = [(PKPaymentPass *)self->_pass isAccessPass];
  pass = self->_pass;
  if (isAccessPass)
  {
    currentBalance = [(PKPaymentPass *)pass fieldForKey:*MEMORY[0x1E69BC0D0]];
    v8 = [(PKPaymentPass *)self->_pass fieldForKey:*MEMORY[0x1E69BC0D8]];
    if ([(PKPaymentPass *)self->_pass supportsSharing])
    {
      v9 = currentBalance == 0;
    }

    else
    {
      v9 = 1;
    }

    v10 = currentBalance;
    if (v9 && (v10 = v8) == 0)
    {
      value = 0;
    }

    else
    {
      value = [v10 value];
    }

    goto LABEL_10;
  }

  if ([(PKPaymentPass *)pass isStoredValuePass])
  {
    displayableListOfBalances = [(PKTransitBalanceModel *)self->_transitBalanceModel displayableListOfBalances];
LABEL_13:
    if (displayableListOfBalances)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if ([(PKPaymentPass *)self->_pass hasAssociatedPeerPaymentAccount])
  {
    uniqueID = [(PKPaymentPass *)self->_pass uniqueID];
    associatedPassUniqueID = [(PKPeerPaymentAccount *)self->_peerPaymentAccount associatedPassUniqueID];
    v14 = uniqueID;
    v15 = associatedPassUniqueID;
    v16 = v15;
    if (v14 == v15)
    {

LABEL_26:
      currentBalance = [(PKPeerPaymentAccount *)self->_peerPaymentAccount currentBalance];
      value = [currentBalance minimalFormattedStringValue];
LABEL_10:

      displayableListOfBalances = value;
      goto LABEL_13;
    }

    if (v14)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
    }

    else
    {
      v18 = [v14 isEqualToString:v15];

      if (v18)
      {
        goto LABEL_26;
      }
    }
  }

LABEL_27:
  displayableListOfBalances = PKSanitizedPrimaryAccountRepresentationForPass();
LABEL_28:
  v20 = displayableListOfBalances;
  [(UILabel *)self->_subTextLabel setText:displayableListOfBalances];
  [(UILabel *)self->_subTextLabel sizeToFit];
  [(PKPaymentPassTableViewCell *)self setNeedsLayout];
}

- (void)_updateLabelTextColors
{
  isUserInteractionEnabled = [(PKPaymentPassTableViewCell *)self isUserInteractionEnabled];
  v4 = 2;
  if (isUserInteractionEnabled)
  {
    v4 = 0;
    v5 = 1;
  }

  else
  {
    v5 = 3;
  }

  [(UILabel *)self->_mainLabel setTextColor:*(&self->super.super.super.super.super.isa + OBJC_IVAR___PKPaymentPassTableViewCell__mainLabelColor[v4])];
  subTextLabel = self->_subTextLabel;
  v7 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___PKPaymentPassTableViewCell__mainLabelColor[v5]);

  [(UILabel *)subTextLabel setTextColor:v7];
}

- (void)pk_applyAppearance:(id)appearance
{
  v10.receiver = self;
  v10.super_class = PKPaymentPassTableViewCell;
  appearanceCopy = appearance;
  [(PKTableViewCell *)&v10 pk_applyAppearance:appearanceCopy];
  textColor = [appearanceCopy textColor];
  [(PKPaymentPassTableViewCell *)self setMainLabelColor:textColor];

  altTextColor = [appearanceCopy altTextColor];
  [(PKPaymentPassTableViewCell *)self setSubTextLabelColor:altTextColor];

  altTextColor2 = [appearanceCopy altTextColor];
  [(PKPaymentPassTableViewCell *)self setDisabledMainLabelColor:altTextColor2];

  altTextColor3 = [appearanceCopy altTextColor];
  [(PKPaymentPassTableViewCell *)self setDisabledSubTextLabelColor:altTextColor3];

  tintColor = [appearanceCopy tintColor];

  [(PKPaymentPassTableViewCell *)self setTintColor:tintColor];
}

@end