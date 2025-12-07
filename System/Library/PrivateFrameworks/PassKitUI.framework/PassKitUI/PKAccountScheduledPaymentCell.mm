@interface PKAccountScheduledPaymentCell
- (BOOL)_useStackedLayoutForUsableWidth:(double)width;
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAccountPayment)payment;
- (PKAccountScheduledPaymentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIEdgeInsets)_effectiveLayoutMargins;
- (id)_amountAttributedString;
- (id)_amountString;
- (id)_dateString;
- (id)_frequencyAttributedString;
- (id)_frequencyString;
- (id)_statusAttributedString;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPayment:(id)payment forAccount:(id)account;
@end

@implementation PKAccountScheduledPaymentCell

- (PKAccountScheduledPaymentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v19.receiver = self;
  v19.super_class = PKAccountScheduledPaymentCell;
  v5 = [(PKAccountScheduledPaymentCell *)&v19 initWithStyle:style reuseIdentifier:identifier];
  if (v5)
  {
    v6 = [MEMORY[0x1E69DD030] layoutManagerForTableViewCellStyle:style];
    layoutManager = v5->_layoutManager;
    v5->_layoutManager = v6;

    v5->_featureIdentifier = 2;
    contentView = [(PKAccountScheduledPaymentCell *)v5 contentView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    frequencyLabel = v5->_frequencyLabel;
    v5->_frequencyLabel = v9;

    [(UILabel *)v5->_frequencyLabel setNumberOfLines:0];
    LODWORD(v11) = 1036831949;
    [(UILabel *)v5->_frequencyLabel _setHyphenationFactor:v11];
    [contentView addSubview:v5->_frequencyLabel];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    statusLabel = v5->_statusLabel;
    v5->_statusLabel = v12;

    [(UILabel *)v5->_statusLabel setNumberOfLines:0];
    LODWORD(v14) = 1036831949;
    [(UILabel *)v5->_statusLabel _setHyphenationFactor:v14];
    [contentView addSubview:v5->_statusLabel];
    v15 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    amountLabel = v5->_amountLabel;
    v5->_amountLabel = v15;

    [(UILabel *)v5->_amountLabel setNumberOfLines:0];
    LODWORD(v17) = 1036831949;
    [(UILabel *)v5->_amountLabel _setHyphenationFactor:v17];
    [contentView addSubview:v5->_amountLabel];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_sizing = 1;
  [(PKAccountScheduledPaymentCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 1.79769313e308];
  self->_sizing = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKAccountScheduledPaymentCell;
  [(PKAccountScheduledPaymentCell *)&v3 layoutSubviews];
  [(PKAccountScheduledPaymentCell *)self bounds];
  [(PKAccountScheduledPaymentCell *)self _layoutWithBounds:?];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(UITableViewCellLayoutManager *)self->_layoutManager contentRectForCell:self forState:0 rowWidth:bounds.size.width];
  v9 = v8;
  memset(&slice, 0, sizeof(slice));
  [(PKAccountScheduledPaymentCell *)self _effectiveLayoutMargins];
  v11 = x + v10;
  v12 = y + 14.0;
  v14 = v9 - (v10 + v13);
  remainder.origin.x = v11;
  remainder.origin.y = v12;
  v15 = height + -28.0;
  remainder.size.width = v14;
  remainder.size.height = height + -28.0;
  [(PKAccountScheduledPaymentCell *)self _shouldReverseLayoutDirection];
  v16 = PKContentAlignmentMake();
  if ([(PKAccountScheduledPaymentCell *)self _useStackedLayoutForUsableWidth:v14])
  {
    [(UILabel *)self->_frequencyLabel pkui_sizeThatFits:1 forceWordWrap:v14, height + -28.0];
    v24 = v18.n128_f64[0];
    if (!self->_sizing)
    {
      frequencyLabel = self->_frequencyLabel;
      v19.n128_f64[0] = v11;
      v20.n128_f64[0] = v12;
      v21.n128_f64[0] = v14;
      v22.n128_f64[0] = height + -28.0;
      PKSizeAlignedInRect(v16, v17, v18, v19, v20, v21, v22, v23);
      [(UILabel *)frequencyLabel setFrame:?];
    }

    v94.origin.x = v11;
    v94.origin.y = v12;
    v94.size.width = v14;
    v94.size.height = height + -28.0;
    CGRectDivide(v94, &slice, &remainder, v24, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 4.0, CGRectMinYEdge);
    [(UILabel *)self->_amountLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v33 = v27.n128_f64[0];
    if (!self->_sizing)
    {
      amountLabel = self->_amountLabel;
      v28.n128_u64[0] = *&remainder.origin.x;
      v29.n128_u64[0] = *&remainder.origin.y;
      v30.n128_u64[0] = *&remainder.size.width;
      v31.n128_u64[0] = *&remainder.size.height;
      PKSizeAlignedInRect(v16, v26, v27, v28, v29, v30, v31, v32);
      [(UILabel *)amountLabel setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, v33, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, 4.0, CGRectMinYEdge);
    v35 = v24 + 4.0 + 28.0 + v33 + 4.0;
    [(UILabel *)self->_statusLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v43 = v37.n128_f64[0];
    if (!self->_sizing)
    {
      statusLabel = self->_statusLabel;
      v38.n128_u64[0] = *&remainder.origin.x;
      v39.n128_u64[0] = *&remainder.origin.y;
      v40.n128_u64[0] = *&remainder.size.width;
      v41.n128_u64[0] = *&remainder.size.height;
      PKSizeAlignedInRect(v16, v36, v37, v38, v39, v40, v41, v42);
      [(UILabel *)statusLabel setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, v43, CGRectMinYEdge);
    v45 = v35 + v43;
  }

  else
  {
    v90 = width;
    [(UILabel *)self->_amountLabel pkui_sizeThatFits:1 forceWordWrap:(v14 + -16.0) * 0.5, height + -28.0];
    v47 = v46;
    v87 = *&v48;
    v49 = v14 - (v48 + 16.0);
    [(UILabel *)self->_frequencyLabel pkui_sizeThatFits:1 forceWordWrap:v49, height + -28.0];
    v86 = v50;
    v52 = v51;
    v53 = v51 + 2.0;
    [(UILabel *)self->_statusLabel pkui_sizeThatFits:1 forceWordWrap:v49, v15 - (v51 + 2.0)];
    v88 = *&v55;
    v89 = v54;
    v56 = fmax(v47, v53 + v55);
    v95.origin.x = v11;
    v95.origin.y = v12;
    v95.size.width = v14;
    v95.size.height = v15;
    CGRectDivide(v95, &slice, &remainder, v56, CGRectMinYEdge);
    v45 = v56 + 28.0;
    if (!self->_sizing)
    {
      v64 = self->_frequencyLabel;
      v59.n128_u64[0] = *&slice.origin.x;
      v60.n128_u64[0] = *&slice.origin.y;
      v61.n128_u64[0] = *&slice.size.width;
      v62.n128_u64[0] = *&slice.size.height;
      v57.n128_u64[0] = v86;
      v58.n128_f64[0] = v52;
      PKSizeAlignedInRect(v16, v57, v58, v59, v60, v61, v62, v63);
      [(UILabel *)v64 setFrame:?];
      v65 = self->_amountLabel;
      v66 = PKContentAlignmentMake();
      v67.n128_u64[0] = *&slice.origin.x;
      v68.n128_u64[0] = *&slice.origin.y;
      v69.n128_u64[0] = *&slice.size.width;
      v70.n128_u64[0] = *&slice.size.height;
      v71.n128_u64[0] = v87;
      v72.n128_f64[0] = v47;
      PKSizeAlignedInRect(v66, v71, v72, v67, v68, v69, v70, v73);
      [(UILabel *)v65 setFrame:?];
      v74 = self->_statusLabel;
      v75 = PKContentAlignmentMake();
      v76.n128_u64[0] = *&slice.origin.x;
      v77.n128_u64[0] = *&slice.origin.y;
      v78.n128_u64[0] = *&slice.size.width;
      v79.n128_u64[0] = *&slice.size.height;
      v81.n128_u64[0] = v88;
      v80.n128_u64[0] = v89;
      PKSizeAlignedInRect(v75, v80, v81, v76, v77, v78, v79, v82);
      [(UILabel *)v74 setFrame:?];
    }

    width = v90;
  }

  v83 = v45;
  v84 = ceilf(v83);
  v85 = width;
  result.height = v84;
  result.width = v85;
  return result;
}

- (BOOL)_useStackedLayoutForUsableWidth:(double)width
{
  v4 = (width + -16.0) * 0.5;
  [(UILabel *)self->_amountLabel pkui_sizeThatFits:1 forceWordWrap:1.79769313e308, 1.79769313e308];
  result = v5 > v4;
  self->_useStackedLayout = v5 > v4;
  return result;
}

- (UIEdgeInsets)_effectiveLayoutMargins
{
  _shouldReverseLayoutDirection = [(PKAccountScheduledPaymentCell *)self _shouldReverseLayoutDirection];
  contentView = [(PKAccountScheduledPaymentCell *)self contentView];
  [(PKAccountScheduledPaymentCell *)self separatorInset];
  v6 = v5;
  v8 = v7;
  [contentView layoutMargins];
  if (_shouldReverseLayoutDirection)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  v12 = fmax(v11, v9);
  if (_shouldReverseLayoutDirection)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  v14 = fmax(v13, v10);

  v15 = 0.0;
  v16 = 0.0;
  v17 = v12;
  v18 = v14;
  result.right = v18;
  result.bottom = v16;
  result.left = v17;
  result.top = v15;
  return result;
}

- (void)setPayment:(id)payment forAccount:(id)account
{
  obj = payment;
  accountCopy = account;
  objc_storeWeak(&self->_payment, obj);
  v7 = [obj isOnHoldForAccount:accountCopy];
  if (v7)
  {
    LOBYTE(v7) = [obj isBeforeNextCycleForAccount:accountCopy];
  }

  self->_onHold = v7;
  creditDetails = [accountCopy creditDetails];
  productTimeZone = [creditDetails productTimeZone];
  timeZone = self->_timeZone;
  self->_timeZone = productTimeZone;

  creditDetails2 = [accountCopy creditDetails];
  accountSummary = [creditDetails2 accountSummary];
  paymentDueDate = [accountSummary paymentDueDate];
  self->_hasPaymentDueDate = paymentDueDate != 0;

  frequencyLabel = self->_frequencyLabel;
  _frequencyAttributedString = [(PKAccountScheduledPaymentCell *)self _frequencyAttributedString];
  [(UILabel *)frequencyLabel setAttributedText:_frequencyAttributedString];

  amountLabel = self->_amountLabel;
  _amountAttributedString = [(PKAccountScheduledPaymentCell *)self _amountAttributedString];
  [(UILabel *)amountLabel setAttributedText:_amountAttributedString];

  statusLabel = self->_statusLabel;
  _statusAttributedString = [(PKAccountScheduledPaymentCell *)self _statusAttributedString];
  [(UILabel *)statusLabel setAttributedText:_statusAttributedString];

  [(PKAccountScheduledPaymentCell *)self setAccessoryType:1];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKAccountScheduledPaymentCell;
  [(PKAccountScheduledPaymentCell *)&v3 prepareForReuse];
  objc_storeWeak(&self->_payment, 0);
}

- (id)_frequencyAttributedString
{
  v11[2] = *MEMORY[0x1E69E9840];
  _frequencyString = [(PKAccountScheduledPaymentCell *)self _frequencyString];
  v10[0] = *MEMORY[0x1E69DB648];
  v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC28], 0x8000, 0);
  v11[0] = v4;
  v10[1] = *MEMORY[0x1E69DB650];
  titleColor = [(PKAccountScheduledPaymentCell *)self titleColor];
  labelColor = titleColor;
  if (!titleColor)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  v11[1] = labelColor;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (!titleColor)
  {
  }

  v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_frequencyString attributes:v7];

  return v8;
}

- (id)_statusAttributedString
{
  v14[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  if ([WeakRetained isRecurring])
  {
    v4 = objc_loadWeakRetained(&self->_payment);
    state = [v4 state];

    if (state == 4)
    {
      _dateString = PKLocalizedFeatureString();
      v7 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  _dateString = [(PKAccountScheduledPaymentCell *)self _dateString];
  v7 = 0;
LABEL_6:
  if ([_dateString length])
  {
    v13[0] = *MEMORY[0x1E69DB648];
    v8 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC30], 0x8000, 0);
    v14[0] = v8;
    v13[1] = *MEMORY[0x1E69DB650];
    if (v7)
    {
      [MEMORY[0x1E69DC888] redColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v10 = ;
    v14[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];

    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:_dateString attributes:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_frequencyString
{
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  scheduleDetails = [WeakRetained scheduleDetails];
  frequency = [scheduleDetails frequency];

  if ((frequency - 1) > 6)
  {
    v5 = 0;
  }

  else
  {
    v5 = PKLocalizedFeatureString();
  }

  return v5;
}

- (id)_amountString
{
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  scheduleDetails = [WeakRetained scheduleDetails];
  preset = [scheduleDetails preset];

  if (preset == 3 || preset == 2)
  {
    v12 = PKLocalizedFeatureString();
  }

  else if (preset == 1)
  {
    v6 = objc_loadWeakRetained(&self->_payment);
    currencyAmount = [v6 currencyAmount];
    amount = [currencyAmount amount];
    v9 = objc_loadWeakRetained(&self->_payment);
    currencyAmount2 = [v9 currencyAmount];
    currency = [currencyAmount2 currency];
    v12 = PKFormattedCurrencyStringFromNumber();
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_amountAttributedString
{
  v9[2] = *MEMORY[0x1E69E9840];
  _amountString = [(PKAccountScheduledPaymentCell *)self _amountString];
  if ([_amountString length])
  {
    v8[0] = *MEMORY[0x1E69DB648];
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC28], 0x8000, 0);
    v9[0] = v3;
    v8[1] = *MEMORY[0x1E69DB650];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    v9[1] = secondaryLabelColor;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];

    v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:_amountString attributes:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_dateString
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v3 setLocalizedDateFormatFromTemplate:@"MMM d"];
  [v3 setTimeZone:self->_timeZone];
  WeakRetained = objc_loadWeakRetained(&self->_payment);
  paymentDate = [WeakRetained paymentDate];

  if (self->_onHold)
  {
    v6 = PKLocalizedFeatureString();
LABEL_10:
    v10 = v6;
    goto LABEL_11;
  }

  if (paymentDate)
  {
    v7 = objc_loadWeakRetained(&self->_payment);
    isRecurring = [v7 isRecurring];

    if (isRecurring)
    {
      v9 = PKLocalizedFeatureString();
      v14 = [v3 stringFromDate:paymentDate];
      v10 = PKStringWithValidatedFormat();

      goto LABEL_11;
    }

    v6 = [v3 stringFromDate:paymentDate];
    goto LABEL_10;
  }

  v11 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_loadWeakRetained(&self->_payment);
    *buf = 138412290;
    v16 = v12;
    _os_log_impl(&dword_1BD026000, v11, OS_LOG_TYPE_DEFAULT, "Payment is missing payment date: %@", buf, 0xCu);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (PKAccountPayment)payment
{
  WeakRetained = objc_loadWeakRetained(&self->_payment);

  return WeakRetained;
}

@end