@interface PKInsitutionTableCell
+ (double)estimatedHeightForCell;
+ (id)bankConnectImageProvider;
- (PKInsitutionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)_configureCellWithSpecifier:(id)specifier;
- (void)_configureMainLabelWithText:(id)text;
- (void)_configureSubTextLabelWithText:(id)text textColor:(id)color;
- (void)layoutSubviews;
- (void)setConnectedInstitution:(id)institution;
- (void)setSpecifier:(id)specifier;
@end

@implementation PKInsitutionTableCell

- (PKInsitutionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v12.receiver = self;
  v12.super_class = PKInsitutionTableCell;
  v9 = [(PSTableCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(PKInsitutionTableCell *)v9 setSpecifier:specifierCopy];
    [(PKInsitutionTableCell *)v10 setAutoresizingMask:18];
  }

  return v10;
}

- (void)setConnectedInstitution:(id)institution
{
  institutionCopy = institution;
  if (self->_connectedInstitution != institutionCopy)
  {
    objc_storeStrong(&self->_connectedInstitution, institution);
    contentView = [(PKInsitutionTableCell *)self contentView];
    snapshotSpinner = self->_snapshotSpinner;
    if (!snapshotSpinner)
    {
      v8 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
      v9 = self->_snapshotSpinner;
      self->_snapshotSpinner = v8;

      [(UIActivityIndicatorView *)self->_snapshotSpinner startAnimating];
      snapshotSpinner = self->_snapshotSpinner;
    }

    [contentView addSubview:snapshotSpinner];
    [(UIImageView *)self->_iconImageView setImage:0];
    v10 = PKUIScreenScale();
    v11 = +[PKInsitutionTableCell bankConnectImageProvider];
    institution = [(FKBankConnectInstitutionsProviderResponse *)self->_connectedInstitution institution];
    institutionIdentifier = [institution institutionIdentifier];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __49__PKInsitutionTableCell_setConnectedInstitution___block_invoke;
    v17[3] = &unk_1E80148C8;
    v18 = institutionIdentifier;
    selfCopy = self;
    v20 = contentView;
    v21 = v11;
    v14 = v11;
    v15 = contentView;
    v16 = institutionIdentifier;
    [v14 logoForInstitutionID:v16 size:v17 scale:29.0 completion:{29.0, v10}];
  }
}

void __49__PKInsitutionTableCell_setConnectedInstitution___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__PKInsitutionTableCell_setConnectedInstitution___block_invoke_2;
  v8[3] = &unk_1E8011C98;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = v4;
  v10 = v5;
  v11 = v3;
  v12 = v6;
  v7 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __49__PKInsitutionTableCell_setConnectedInstitution___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(*(a1 + 40) + 1208) institution];
  v4 = [v3 institutionIdentifier];
  LODWORD(v2) = [v2 isEqualToString:v4];

  if (v2)
  {
    v5 = *(*(a1 + 40) + 1232);
    if (v5)
    {
      [v5 setImage:*(a1 + 48)];
    }

    else
    {
      v6 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:*(a1 + 48)];
      v7 = *(a1 + 40);
      v8 = *(v7 + 1232);
      *(v7 + 1232) = v6;

      [*(*(a1 + 40) + 1232) setAccessibilityIgnoresInvertColors:1];
      [*(a1 + 56) addSubview:*(*(a1 + 40) + 1232)];
    }

    [*(*(a1 + 40) + 1232) setContentMode:1];
    [*(*(a1 + 40) + 1224) removeFromSuperview];
    v9 = *(a1 + 40);
    v10 = *(v9 + 1224);
    *(v9 + 1224) = 0;

    v11 = *(a1 + 40);

    [v11 setNeedsLayout];
  }
}

+ (id)bankConnectImageProvider
{
  if (qword_1EBD68300 != -1)
  {
    dispatch_once(&qword_1EBD68300, &__block_literal_global_48);
  }

  v3 = _MergedGlobals_1_3;

  return v3;
}

void __49__PKInsitutionTableCell_bankConnectImageProvider__block_invoke()
{
  v0 = objc_alloc_init(getFKBankConnectImageProviderClass());
  v1 = _MergedGlobals_1_3;
  _MergedGlobals_1_3 = v0;
}

- (void)_configureMainLabelWithText:(id)text
{
  textCopy = text;
  titleLabel = self->_titleLabel;
  v11 = textCopy;
  if (!titleLabel)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v7 = self->_titleLabel;
    self->_titleLabel = v6;

    v8 = self->_titleLabel;
    titleFont = [objc_opt_class() titleFont];
    [(UILabel *)v8 setFont:titleFont];

    textCopy = v11;
    titleLabel = self->_titleLabel;
  }

  [(UILabel *)titleLabel setText:textCopy];
  [(UILabel *)self->_titleLabel sizeToFit];
  contentView = [(PKInsitutionTableCell *)self contentView];
  [contentView addSubview:self->_titleLabel];
}

- (void)_configureSubTextLabelWithText:(id)text textColor:(id)color
{
  textCopy = text;
  colorCopy = color;
  subTitleLabel = self->_subTitleLabel;
  if (!subTitleLabel)
  {
    v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v9 = self->_subTitleLabel;
    self->_subTitleLabel = v8;

    v10 = self->_subTitleLabel;
    subTitleFont = [objc_opt_class() subTitleFont];
    [(UILabel *)v10 setFont:subTitleFont];

    subTitleLabel = self->_subTitleLabel;
  }

  if (colorCopy)
  {
    [(UILabel *)subTitleLabel setTextColor:colorCopy];
    subTitleLabel = self->_subTitleLabel;
  }

  [(UILabel *)subTitleLabel setText:textCopy];
  [(UILabel *)self->_subTitleLabel sizeToFit];
  contentView = [(PKInsitutionTableCell *)self contentView];
  [contentView addSubview:self->_subTitleLabel];
}

- (void)_configureCellWithSpecifier:(id)specifier
{
  institution = [(FKBankConnectInstitutionsProviderResponse *)self->_connectedInstitution institution];
  name = [institution name];
  [(PKInsitutionTableCell *)self _configureMainLabelWithText:name];

  [(PKInsitutionTableCell *)self setAccessoryType:1];
  if ([(FKBankConnectInstitutionsProviderResponse *)self->_connectedInstitution consentStatus]== 1)
  {
    v7 = PKLocalizedBankConnectString(&cfstr_BankConnectDis.isa);
  }

  else
  {
    v7 = 0;
  }

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [(PKInsitutionTableCell *)self _configureSubTextLabelWithText:v7 textColor:systemBlueColor];
}

- (void)setSpecifier:(id)specifier
{
  specifierCopy = specifier;
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57F8]));
  v6 = [WeakRetained isEqual:specifierCopy];

  if ((v6 & 1) == 0)
  {
    v8.receiver = self;
    v8.super_class = PKInsitutionTableCell;
    [(PSTableCell *)&v8 setSpecifier:specifierCopy];
    v7 = [specifierCopy objectForKeyedSubscript:@"pkConnectedInsitution"];
    [(PKInsitutionTableCell *)self setConnectedInstitution:v7];
    [(PKInsitutionTableCell *)self _configureCellWithSpecifier:specifierCopy];
  }
}

- (void)layoutSubviews
{
  v40.receiver = self;
  v40.super_class = PKInsitutionTableCell;
  [(PSTableCell *)&v40 layoutSubviews];
  if ([(PKInsitutionTableCell *)self _shouldReverseLayoutDirection])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  contentView = [(PKInsitutionTableCell *)self contentView];
  [contentView bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&rect, 0, sizeof(rect));
  remainder = v41;
  CGRectDivide(v41, &slice, &remainder, 16.0, v3);
  CGRectDivide(remainder, &rect, &remainder, 29.0, v3);
  CGRectDivide(remainder, &slice, &remainder, 16.0, v3);
  width = remainder.size.width;
  [(UILabel *)self->_titleLabel sizeThatFits:remainder.size.width, 1.79769313e308];
  v7 = v6;
  [(UILabel *)self->_subTitleLabel sizeThatFits:width, 1.79769313e308];
  v9 = v8;
  v12.n128_u64[0] = *&remainder.origin.y;
  v11.n128_u64[0] = *&remainder.origin.x;
  v14.n128_u64[0] = *&remainder.size.height;
  v13.n128_u64[0] = *&remainder.size.width;
  v15.n128_f64[0] = v7 + 8.0 + 2.0 + v8 + 8.0;
  v10 = v15.n128_f64[0];
  v16.n128_u64[0] = *&remainder.size.width;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v13, v15, v11, v12, v16, v14, v17);
  x = v42.origin.x;
  v20 = v19;
  v21 = v42.size.width;
  v42.origin.y = v19 + 8.0;
  y = v42.origin.y;
  v42.size.height = v7;
  [(UILabel *)self->_subTitleLabel setFrame:v42.origin.x, CGRectGetMaxY(v42) + 2.0, v42.size.width, v9];
  [(UILabel *)self->_titleLabel setFrame:x, y, v21, v7];
  v23 = 60.0;
  if (v10 >= 60.0)
  {
    v23 = v10;
  }

  v24 = [MEMORY[0x1E696AD98] numberWithDouble:{v23, *&rect.origin.x, *&rect.origin.y}];
  WeakRetained = objc_loadWeakRetained((&self->super.super.super.super.super.isa + *MEMORY[0x1E69C57F8]));
  [WeakRetained setObject:v24 forKeyedSubscript:*MEMORY[0x1E69C5988]];

  rect.size.height = v10;
  rect.origin.y = v20;
  snapshotSpinner = self->_snapshotSpinner;
  v43.origin.x = rect.origin.x;
  v43.size.width = rect.size.width;
  v43.origin.y = v20;
  v43.size.height = v10;
  MidX = CGRectGetMidX(v43);
  [(UIActivityIndicatorView *)snapshotSpinner setCenter:MidX, CGRectGetMidY(rect)];
  iconImageView = self->_iconImageView;
  if (iconImageView)
  {
    image = [(UIImageView *)iconImageView image];

    if (image)
    {
      v32.n128_u64[0] = *&rect.origin.x;
      v33.n128_u64[0] = *&rect.origin.y;
      v34.n128_u64[0] = *&rect.size.width;
      v35.n128_u64[0] = *&rect.size.height;
      v30.n128_u64[0] = 29.0;
      v31.n128_u64[0] = 29.0;
      PKSizeAlignedInRect(v3 | 0x100000000, v30, v31, v32, v33, v34, v35, v36);
      [(UIImageView *)self->_iconImageView setFrame:?];
    }
  }

  [(PKInsitutionTableCell *)self setSeparatorInset:0.0, 61.0, 0.0, 16.0];
}

+ (double)estimatedHeightForCell
{
  titleFont = [self titleFont];
  [titleFont lineHeight];
  v5 = v4;
  subTitleFont = [self subTitleFont];
  [subTitleFont lineHeight];
  v8 = v5 + v7;

  return fmax(fmax(v8 + 2.0 + 16.0, 45.0), 60.0);
}

@end