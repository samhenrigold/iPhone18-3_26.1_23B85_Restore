@interface PKCurrencyAmountEntryCollectionViewCell
- (BOOL)_inputIsValid:(id)valid;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCurrencyAmountEntryCollectionViewCell)initWithFrame:(CGRect)frame;
- (PKCurrencyAmountEntryCollectionViewCellDelegate)delegate;
- (id)_amountFromInput:(id)input;
- (void)layoutSubviews;
- (void)setCurrencyAmount:(id)amount;
- (void)setTitle:(id)title;
- (void)setTitleColor:(id)color;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation PKCurrencyAmountEntryCollectionViewCell

- (PKCurrencyAmountEntryCollectionViewCell)initWithFrame:(CGRect)frame
{
  v20.receiver = self;
  v20.super_class = PKCurrencyAmountEntryCollectionViewCell;
  v3 = [(PKCurrencyAmountEntryCollectionViewCell *)&v20 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PKCurrencyAmountEntryCollectionViewCell *)v3 contentView];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    titleColor = v4->_titleColor;
    v4->_titleColor = labelColor;

    v8 = objc_alloc(MEMORY[0x1E69DCC10]);
    v9 = [v8 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    [(UILabel *)v4->_titleLabel setTextColor:v4->_titleColor];
    [(UILabel *)v4->_titleLabel setNumberOfLines:1];
    v11 = v4->_titleLabel;
    v12 = *MEMORY[0x1E69DDCF8];
    v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
    [(UILabel *)v11 setFont:v13];

    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [contentView addSubview:v4->_titleLabel];
    LODWORD(v11) = [(PKCurrencyAmountEntryCollectionViewCell *)v4 _shouldReverseLayoutDirection];
    v14 = objc_alloc_init(MEMORY[0x1E69DD0B0]);
    amountTextField = v4->_amountTextField;
    v4->_amountTextField = v14;

    [(UITextField *)v4->_amountTextField setKeyboardType:8];
    if (v11)
    {
      v16 = 0;
    }

    else
    {
      v16 = 2;
    }

    [(UITextField *)v4->_amountTextField setTextAlignment:v16];
    v17 = v4->_amountTextField;
    v18 = PKFontForDefaultDesign(v12, 0);
    [(UITextField *)v17 setFont:v18];

    [(UITextField *)v4->_amountTextField setDelegate:v4];
    [(UITextField *)v4->_amountTextField setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
    [contentView addSubview:v4->_amountTextField];
  }

  return v4;
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
    [(PKCurrencyAmountEntryCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTitleColor:(id)color
{
  objc_storeStrong(&self->_titleColor, color);
  colorCopy = color;
  [(UILabel *)self->_titleLabel setTextColor:self->_titleColor];
}

- (void)setCurrencyAmount:(id)amount
{
  amountCopy = amount;
  v6 = amountCopy;
  if (amountCopy)
  {
    v17 = amountCopy;
    if (!self->_currencyFormatter || ([amountCopy currency], v7 = objc_claimAutoreleasedReturnValue(), -[PKCurrencyAmount currency](self->_currencyAmount, "currency"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "isEqualToString:", v8), v8, v7, v6 = v17, (v9 & 1) == 0))
    {
      currency = [v6 currency];
      v11 = PKMutableNumberFormatterForCurrencyCode();
      currencyFormatter = self->_currencyFormatter;
      self->_currencyFormatter = v11;
    }

    v13 = PKEqualObjects();
    v6 = v17;
    if ((v13 & 1) == 0)
    {
      objc_storeStrong(&self->_currencyAmount, amount);
      v14 = self->_currencyFormatter;
      amount = [(PKCurrencyAmount *)self->_currencyAmount amount];
      v16 = [(NSNumberFormatter *)v14 stringFromNumber:amount];

      [(UITextField *)self->_amountTextField setText:v16];
      v6 = v17;
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self, a2, 1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height);
  v5 = v4;
  v7 = v6;
  v8 = _UISolariumFeatureFlagEnabled();
  v9 = 44.0;
  if (v8)
  {
    v9 = 52.0;
  }

  v10 = fmin(v9, height);
  if (v7 >= v9)
  {
    v10 = v7;
  }

  v11 = v5;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v17[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = PKCurrencyAmountEntryCollectionViewCell;
  [(PKCurrencyAmountEntryCollectionViewCell *)&v16 layoutSubviews];
  v3 = objc_alloc(MEMORY[0x1E69DD180]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v5 = objc_alloc(MEMORY[0x1E69DC708]);
  v6 = MEMORY[0x1E69DC628];
  v7 = PKLocalizedString(&cfstr_Done.isa);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__PKCurrencyAmountEntryCollectionViewCell_layoutSubviews__block_invoke;
  v15[3] = &unk_1E8016068;
  v15[4] = self;
  v8 = [v6 actionWithTitle:v7 image:0 identifier:0 handler:v15];
  v9 = [v5 initWithPrimaryAction:v8];

  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
  v17[0] = v10;
  v17[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  [v4 setItems:v11];

  [v4 sizeToFit];
  [(UITextField *)self->_amountTextField setInputAccessoryView:v4];
  amountTextField = self->_amountTextField;
  if (self->_isEditable)
  {
    [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v13 = ;
  [(UITextField *)amountTextField setTextColor:v13];

  [(UITextField *)self->_amountTextField setUserInteractionEnabled:self->_isEditable];
  contentView = [(PKCurrencyAmountEntryCollectionViewCell *)self contentView];
  [contentView bounds];
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self);
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if (_UISolariumFeatureFlagEnabled())
  {
    v10 = 20.0;
  }

  else
  {
    v10 = 16.0;
  }

  v55.origin.x = x;
  v55.origin.y = y;
  v55.size.width = width;
  v55.size.height = height;
  v56 = CGRectInset(v55, v10, 13.0);
  v11 = v56.origin.x;
  v12 = v56.origin.y;
  v13 = v56.size.width;
  v14 = v56.size.height;
  [(UILabel *)self->_titleLabel sizeThatFits:v56.size.width, v56.size.height];
  v16 = v15;
  v18 = v17;
  [(UITextField *)self->_amountTextField sizeThatFits:v13, v14];
  v20 = v19;
  memset(&slice, 0, sizeof(slice));
  v52.origin.x = v11;
  v52.origin.y = v12;
  v52.size.width = v13;
  v52.size.height = v14;
  if (v16 + 8.0 + v21 > v13)
  {
    v22 = v18 + 2.0 + v19;
    v52.size.height = v22;
    p_slice = &slice;
    v57.origin.x = v11;
    v57.origin.y = v12;
    v57.size.width = v13;
    v57.size.height = v18 + 2.0 + v20;
    CGRectDivide(v57, &slice, &v52, v18, CGRectMinYEdge);
    v24 = slice.origin.x;
    v25 = slice.origin.y;
    v26 = slice.size.width;
    v27 = slice.size.height;
    CGRectDivide(v52, &slice, &v52, 2.0, CGRectMinYEdge);
    CGRectDivide(v52, &slice, &v52, v20, CGRectMinYEdge);
    if (layout)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if ([(PKCurrencyAmountEntryCollectionViewCell *)self _shouldReverseLayoutDirection])
  {
    v28 = CGRectMaxXEdge;
  }

  else
  {
    v28 = CGRectMinXEdge;
  }

  v29 = fmin(v13, v16);
  p_slice = &v52;
  v58.origin.x = v11;
  v58.origin.y = v12;
  v58.size.width = v13;
  v58.size.height = v14;
  CGRectDivide(v58, &slice, &v52, v29, v28);
  v30 = PKContentAlignmentMake();
  v31.n128_u64[0] = *&slice.origin.x;
  v32.n128_u64[0] = *&slice.origin.y;
  v33.n128_u64[0] = *&slice.size.width;
  v34.n128_u64[0] = *&slice.size.height;
  v35.n128_f64[0] = v29;
  v36.n128_f64[0] = v18;
  PKSizeAlignedInRect(v30, v35, v36, v31, v32, v33, v34, v37);
  v24 = v38;
  v25 = v39;
  v26 = v40;
  v27 = v41;
  CGRectDivide(v52, &slice, &v52, 8.0, v28);
  v22 = v27;
  if (!layout)
  {
LABEL_11:
    v43 = p_slice->size.width;
    v42 = p_slice->size.height;
    v44 = v25;
    v45 = width;
    v46 = v24;
    v48 = p_slice->origin.x;
    v47 = p_slice->origin.y;
    [(UILabel *)self->_titleLabel setFrame:v46, v44, v26, v27, *&v52.origin.x, *&v52.origin.y, *&v52.size.width];
    v49 = v47;
    width = v45;
    [(UITextField *)self->_amountTextField setFrame:v48, v49, v43, v42];
  }

LABEL_12:
  v50 = v22 + 26.0;
  v51 = width;
  result.height = v50;
  result.width = v51;
  return result;
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  text = [editingCopy text];
  v7 = [(PKCurrencyAmountEntryCollectionViewCell *)self _amountFromInput:text];

  v6 = [(NSNumberFormatter *)self->_currencyFormatter stringFromNumber:v7];
  [editingCopy setText:v6];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  text = [field text];
  v11 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  v12 = [(PKCurrencyAmountEntryCollectionViewCell *)self _inputIsValid:v11];
  if (v12)
  {
    v13 = [(PKCurrencyAmountEntryCollectionViewCell *)self _amountFromInput:v11];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained amountDidChange:v13];
  }

  return v12;
}

- (BOOL)_inputIsValid:(id)valid
{
  validCopy = valid;
  maximumFractionDigits = [(NSNumberFormatter *)self->_currencyFormatter maximumFractionDigits];
  currencySymbol = [(NSNumberFormatter *)self->_currencyFormatter currencySymbol];
  v7 = [validCopy stringByReplacingOccurrencesOfString:currencySymbol withString:&stru_1F3BD7330];
  v8 = [MEMORY[0x1E696AB90] decimalNumberWithString:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 pk_isNotANumber] ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  pk_posixStringDecimalPlaces = [v7 pk_posixStringDecimalPlaces];
  v12 = validCopy;
  v13 = currencySymbol;
  v14 = v13;
  if (v13 == v12)
  {
    v15 = 1;
  }

  else
  {
    v15 = 0;
    if (v12 && v13)
    {
      v15 = [v12 isEqualToString:v13];
    }
  }

  v16 = v7;
  v17 = v16;
  if (v16 == @".")
  {
    v18 = 1;
  }

  else if (v16)
  {
    v18 = [(__CFString *)v16 isEqualToString:@"."];
  }

  else
  {
    v18 = 0;
  }

  if (pk_posixStringDecimalPlaces <= maximumFractionDigits)
  {
    v19 = v10;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19 | v15 | v18;

  return v20 & 1;
}

- (id)_amountFromInput:(id)input
{
  currencyFormatter = self->_currencyFormatter;
  inputCopy = input;
  currencySymbol = [(NSNumberFormatter *)currencyFormatter currencySymbol];
  v7 = [inputCopy containsString:currencySymbol];

  if (v7)
  {
    v8 = [(NSNumberFormatter *)self->_currencyFormatter numberFromString:inputCopy];

    v9 = MEMORY[0x1E696AB90];
    if (v8)
    {
      objc_msgSend_decimalValue(v8);
    }

    else
    {
      v12[0] = 0;
      v12[1] = 0;
      v13 = 0;
    }

    v10 = [v9 decimalNumberWithDecimal:v12];
  }

  else
  {
    v10 = [MEMORY[0x1E696AB90] decimalNumberWithString:inputCopy];
  }

  return v10;
}

- (PKCurrencyAmountEntryCollectionViewCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end