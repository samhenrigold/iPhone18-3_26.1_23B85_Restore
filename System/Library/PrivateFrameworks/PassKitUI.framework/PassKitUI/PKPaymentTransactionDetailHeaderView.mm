@interface PKPaymentTransactionDetailHeaderView
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentTransactionDetailHeaderView)initWithFrame:(CGRect)frame;
- (void)_updateImageViewDynamicColors;
- (void)layoutSubviews;
- (void)setAmountText:(id)text;
- (void)setMerchantIcon:(id)icon;
- (void)setSecondarySubtitleText:(id)text;
- (void)setSubtitleText:(id)text;
- (void)setTertiarySubtitleText:(id)text;
@end

@implementation PKPaymentTransactionDetailHeaderView

- (PKPaymentTransactionDetailHeaderView)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = PKPaymentTransactionDetailHeaderView;
  v3 = [(PKPaymentTransactionDetailHeaderView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    amountLabel = v3->_amountLabel;
    v3->_amountLabel = v4;

    v6 = v3->_amountLabel;
    v7 = PKRoundedSystemFontOfSizeAndWeight(64.0, *MEMORY[0x1E69DB980]);
    [(UILabel *)v6 setFont:v7];

    [(UILabel *)v3->_amountLabel setTextAlignment:1];
    [(UILabel *)v3->_amountLabel setNumberOfLines:1];
    [(UILabel *)v3->_amountLabel setAdjustsFontSizeToFitWidth:1];
    contentView = [(PKPaymentTransactionDetailHeaderView *)v3 contentView];
    [contentView addSubview:v3->_amountLabel];

    [(UILabel *)v3->_amountLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v3->_useStroke = 1;
    systemTraitsAffectingColorAppearance = [MEMORY[0x1E69DD1B8] systemTraitsAffectingColorAppearance];
    v10 = [(PKPaymentTransactionDetailHeaderView *)v3 registerForTraitChanges:systemTraitsAffectingColorAppearance withHandler:&__block_literal_global_57];
  }

  return v3;
}

- (void)setAmountText:(id)text
{
  textCopy = text;
  v5 = self->_amountText;
  v6 = textCopy;
  v13 = v6;
  if (v5 == v6)
  {

LABEL_12:
    v8 = v13;
    goto LABEL_13;
  }

  if (!v6 || !v5)
  {

    v8 = v13;
    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  v8 = v13;
  if (!v7)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    amountText = self->_amountText;
    self->_amountText = v9;

    [(UILabel *)self->_amountLabel setText:self->_amountText];
    amountLabel = self->_amountLabel;
    if (self->_inBridge)
    {
      [MEMORY[0x1E69DC888] whiteColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] labelColor];
    }
    v12 = ;
    [(UILabel *)amountLabel setTextColor:v12];

    [(PKPaymentTransactionDetailHeaderView *)self setNeedsLayout];
    goto LABEL_12;
  }

LABEL_13:
}

- (void)setSubtitleText:(id)text
{
  textCopy = text;
  v5 = self->_subtitleText;
  v6 = textCopy;
  v23 = v6;
  if (v5 == v6)
  {

LABEL_21:
    v8 = v23;
    goto LABEL_22;
  }

  if (!v6 || !v5)
  {

    v8 = v23;
    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  v8 = v23;
  if (!v7)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    subtitleText = self->_subtitleText;
    self->_subtitleText = v9;

    v11 = self->_subtitleText;
    subtitleLabel = self->_subtitleLabel;
    if (v11)
    {
      if (!subtitleLabel)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v14 = self->_subtitleLabel;
        self->_subtitleLabel = v13;

        v15 = self->_subtitleLabel;
        if (self->_hasProminentSubtitle)
        {
          v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC30], 2, 0);
          [(UILabel *)v15 setFont:v16];

          v17 = self->_subtitleLabel;
          if (self->_inBridge)
          {
            [MEMORY[0x1E69DC888] whiteColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] labelColor];
          }
        }

        else
        {
          v20 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
          [(UILabel *)v15 setFont:v20];

          v17 = self->_subtitleLabel;
          if (self->_inBridge)
          {
            [MEMORY[0x1E69DC888] systemGrayColor];
          }

          else
          {
            [MEMORY[0x1E69DC888] secondaryLabelColor];
          }
        }
        v18 = ;
        v21 = v18;
        [(UILabel *)v17 setTextColor:v18];

        [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
        [(UILabel *)self->_subtitleLabel setTextAlignment:1];
        [(UILabel *)self->_subtitleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
        contentView = [(PKPaymentTransactionDetailHeaderView *)self contentView];
        [contentView addSubview:self->_subtitleLabel];

        subtitleLabel = self->_subtitleLabel;
        v11 = self->_subtitleText;
      }

      [(UILabel *)subtitleLabel setText:v11];
    }

    else
    {
      [(UILabel *)subtitleLabel removeFromSuperview];
      v19 = self->_subtitleLabel;
      self->_subtitleLabel = 0;
    }

    [(PKPaymentTransactionDetailHeaderView *)self setNeedsLayout];
    goto LABEL_21;
  }

LABEL_22:
}

- (void)setSecondarySubtitleText:(id)text
{
  textCopy = text;
  v5 = self->_secondarySubtitleText;
  v6 = textCopy;
  v21 = v6;
  if (v5 == v6)
  {

LABEL_17:
    v8 = v21;
    goto LABEL_18;
  }

  if (!v6 || !v5)
  {

    v8 = v21;
    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  v8 = v21;
  if (!v7)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    secondarySubtitleText = self->_secondarySubtitleText;
    self->_secondarySubtitleText = v9;

    v11 = self->_secondarySubtitleText;
    secondaryLabel = self->_secondaryLabel;
    if (v11)
    {
      if (!secondaryLabel)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v14 = self->_secondaryLabel;
        self->_secondaryLabel = v13;

        v15 = self->_secondaryLabel;
        v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
        [(UILabel *)v15 setFont:v16];

        v17 = self->_secondaryLabel;
        if (self->_inBridge)
        {
          [MEMORY[0x1E69DC888] systemGrayColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] secondaryLabelColor];
        }
        v19 = ;
        [(UILabel *)v17 setTextColor:v19];

        [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
        [(UILabel *)self->_secondaryLabel setTextAlignment:1];
        [(UILabel *)self->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9BE0]];
        contentView = [(PKPaymentTransactionDetailHeaderView *)self contentView];
        [contentView addSubview:self->_secondaryLabel];

        secondaryLabel = self->_secondaryLabel;
        v11 = self->_secondarySubtitleText;
      }

      [(UILabel *)secondaryLabel setText:v11];
    }

    else
    {
      [(UILabel *)secondaryLabel removeFromSuperview];
      v18 = self->_secondaryLabel;
      self->_secondaryLabel = 0;
    }

    [(PKPaymentTransactionDetailHeaderView *)self setNeedsLayout];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)setTertiarySubtitleText:(id)text
{
  textCopy = text;
  v5 = self->_tertiarySubtitleText;
  v6 = textCopy;
  v21 = v6;
  if (v5 == v6)
  {

LABEL_17:
    v8 = v21;
    goto LABEL_18;
  }

  if (!v6 || !v5)
  {

    v8 = v21;
    goto LABEL_8;
  }

  v7 = [(NSString *)v5 isEqualToString:v6];

  v8 = v21;
  if (!v7)
  {
LABEL_8:
    v9 = [(NSString *)v8 copy];
    tertiarySubtitleText = self->_tertiarySubtitleText;
    self->_tertiarySubtitleText = v9;

    v11 = self->_tertiarySubtitleText;
    tertiaryLabel = self->_tertiaryLabel;
    if (v11)
    {
      if (!tertiaryLabel)
      {
        v13 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v14 = self->_tertiaryLabel;
        self->_tertiaryLabel = v13;

        v15 = self->_tertiaryLabel;
        v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
        [(UILabel *)v15 setFont:v16];

        v17 = self->_tertiaryLabel;
        if (self->_inBridge)
        {
          [MEMORY[0x1E69DC888] systemGrayColor];
        }

        else
        {
          [MEMORY[0x1E69DC888] secondaryLabelColor];
        }
        v19 = ;
        [(UILabel *)v17 setTextColor:v19];

        [(UILabel *)self->_tertiaryLabel setNumberOfLines:0];
        [(UILabel *)self->_tertiaryLabel setTextAlignment:1];
        [(UILabel *)self->_tertiaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D10]];
        contentView = [(PKPaymentTransactionDetailHeaderView *)self contentView];
        [contentView addSubview:self->_tertiaryLabel];

        tertiaryLabel = self->_tertiaryLabel;
        v11 = self->_tertiarySubtitleText;
      }

      [(UILabel *)tertiaryLabel setText:v11];
    }

    else
    {
      [(UILabel *)tertiaryLabel removeFromSuperview];
      v18 = self->_tertiaryLabel;
      self->_tertiaryLabel = 0;
    }

    [(PKPaymentTransactionDetailHeaderView *)self setNeedsLayout];
    goto LABEL_17;
  }

LABEL_18:
}

- (void)setMerchantIcon:(id)icon
{
  iconCopy = icon;
  if (self->_merchantIcon != iconCopy)
  {
    v13 = iconCopy;
    objc_storeStrong(&self->_merchantIcon, icon);
    merchantIcon = self->_merchantIcon;
    merchantIconImageView = self->_merchantIconImageView;
    if (merchantIcon)
    {
      if (!merchantIconImageView)
      {
        v8 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
        v9 = self->_merchantIconImageView;
        self->_merchantIconImageView = v8;

        [(UIImageView *)self->_merchantIconImageView setContentMode:1];
        [(UIImageView *)self->_merchantIconImageView setClipsToBounds:1];
        [(UIImageView *)self->_merchantIconImageView _setContinuousCornerRadius:8.0];
        if (self->_useStroke)
        {
          layer = [(UIImageView *)self->_merchantIconImageView layer];
          [layer setBorderWidth:PKUIPixelLength()];
        }

        contentView = [(PKPaymentTransactionDetailHeaderView *)self contentView];
        [contentView addSubview:self->_merchantIconImageView];

        merchantIconImageView = self->_merchantIconImageView;
        merchantIcon = self->_merchantIcon;
      }

      [(UIImageView *)merchantIconImageView setImage:merchantIcon];
      [(PKPaymentTransactionDetailHeaderView *)self _updateImageViewDynamicColors];
    }

    else
    {
      [(UIImageView *)merchantIconImageView removeFromSuperview];
      v12 = self->_merchantIconImageView;
      self->_merchantIconImageView = 0;
    }

    [(PKPaymentTransactionDetailHeaderView *)self setNeedsLayout];
    iconCopy = v13;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKPaymentTransactionDetailHeaderView;
  [(PKPaymentTransactionDetailHeaderView *)&v4 layoutSubviews];
  contentView = [(PKPaymentTransactionDetailHeaderView *)self contentView];
  [contentView bounds];
  [(PKPaymentTransactionDetailHeaderView *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKPaymentTransactionDetailHeaderView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = bounds.origin.x + 16.0;
  v9 = 0.0;
  v10 = bounds.origin.y + 0.0;
  v11 = bounds.size.width + -32.0;
  v12 = bounds.size.height + -22.0;
  remainder.origin.x = v8;
  remainder.origin.y = v10;
  remainder.size.width = v11;
  remainder.size.height = v12;
  memset(&v77, 0, sizeof(v77));
  if (self->_merchantIcon)
  {
    CGRectDivide(*&v8, &v77, &remainder, 80.0, CGRectMinYEdge);
    if (!self->_isTemplateLayout)
    {
      merchantIconImageView = self->_merchantIconImageView;
      v14 = PKContentAlignmentMake();
      v16.n128_u64[0] = *&v77.origin.y;
      v15.n128_u64[0] = *&v77.origin.x;
      v18.n128_u64[0] = *&v77.size.height;
      v17.n128_u64[0] = *&v77.size.width;
      v19.n128_u64[0] = 0x4054000000000000;
      v20.n128_u64[0] = 0x4054000000000000;
      PKSizeAlignedInRect(v14, v19, v20, v15, v16, v17, v18, v21);
      [(UIImageView *)merchantIconImageView setFrame:?];
    }

    CGRectDivide(remainder, &v77, &remainder, 20.0, CGRectMinYEdge);
    v9 = 100.0;
  }

  if ([(NSString *)self->_amountText length:*&v77.origin])
  {
    [(UILabel *)self->_amountLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
    v24 = v23;
    if (!self->_isTemplateLayout)
    {
      v25 = v22;
      amountLabel = self->_amountLabel;
      v27 = PKContentAlignmentMake();
      v28.n128_u64[0] = *&remainder.origin.x;
      v29.n128_u64[0] = *&remainder.origin.y;
      v30.n128_u64[0] = *&remainder.size.width;
      v31.n128_u64[0] = *&remainder.size.height;
      v32.n128_u64[0] = v25;
      v33.n128_f64[0] = v24;
      PKSizeAlignedInRect(v27, v32, v33, v28, v29, v30, v31, v34);
      [(UILabel *)amountLabel setFrame:?];
    }

    CGRectDivide(remainder, &v77, &remainder, v24, CGRectMinYEdge);
    v9 = v9 + v24;
  }

  subtitleLabel = self->_subtitleLabel;
  if (subtitleLabel)
  {
    [(UILabel *)subtitleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v38 = v37;
    if (!self->_isTemplateLayout)
    {
      v39 = v36;
      v40 = self->_subtitleLabel;
      v41 = PKContentAlignmentMake();
      v42.n128_u64[0] = *&remainder.origin.x;
      v43.n128_u64[0] = *&remainder.origin.y;
      v44.n128_u64[0] = *&remainder.size.width;
      v45.n128_u64[0] = *&remainder.size.height;
      v46.n128_u64[0] = v39;
      v47.n128_f64[0] = v38;
      PKSizeAlignedInRect(v41, v46, v47, v42, v43, v44, v45, v48);
      [(UILabel *)v40 setFrame:?];
    }

    CGRectDivide(remainder, &v77, &remainder, v38, CGRectMinYEdge);
    v9 = v9 + v38;
  }

  if (self->_secondaryLabel)
  {
    CGRectDivide(remainder, &v77, &remainder, 4.0, CGRectMinYEdge);
    [(UILabel *)self->_secondaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v51 = v50;
    if (!self->_isTemplateLayout)
    {
      v52 = v49;
      secondaryLabel = self->_secondaryLabel;
      v54 = PKContentAlignmentMake();
      v55.n128_u64[0] = *&remainder.origin.x;
      v56.n128_u64[0] = *&remainder.origin.y;
      v57.n128_u64[0] = *&remainder.size.width;
      v58.n128_u64[0] = *&remainder.size.height;
      v59.n128_u64[0] = v52;
      v60.n128_f64[0] = v51;
      PKSizeAlignedInRect(v54, v59, v60, v55, v56, v57, v58, v61);
      [(UILabel *)secondaryLabel setFrame:?];
    }

    CGRectDivide(remainder, &v77, &remainder, v51, CGRectMinYEdge);
    v9 = v9 + v51 + 4.0;
  }

  if (self->_tertiaryLabel)
  {
    CGRectDivide(remainder, &v77, &remainder, 4.0, CGRectMinYEdge);
    [(UILabel *)self->_tertiaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v64 = v63;
    if (!self->_isTemplateLayout)
    {
      v65 = v62;
      tertiaryLabel = self->_tertiaryLabel;
      v67 = PKContentAlignmentMake();
      v68.n128_u64[0] = *&remainder.origin.x;
      v69.n128_u64[0] = *&remainder.origin.y;
      v70.n128_u64[0] = *&remainder.size.width;
      v71.n128_u64[0] = *&remainder.size.height;
      v72.n128_u64[0] = v65;
      v73.n128_f64[0] = v64;
      PKSizeAlignedInRect(v67, v72, v73, v68, v69, v70, v71, v74);
      [(UILabel *)tertiaryLabel setFrame:?];
    }

    CGRectDivide(remainder, &v77, &remainder, v64, CGRectMinYEdge);
    v9 = v9 + v64 + 4.0;
  }

  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v80.size.height = height;
  v75 = CGRectGetWidth(v80);
  v76 = v9 + 22.0;
  result.height = v76;
  result.width = v75;
  return result;
}

- (void)_updateImageViewDynamicColors
{
  traitCollection = [(PKPaymentTransactionDetailHeaderView *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PKPaymentTransactionDetailHeaderView__updateImageViewDynamicColors__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  PKUIPerformWithEffectiveTraitCollection(traitCollection, v4);
}

void __69__PKPaymentTransactionDetailHeaderView__updateImageViewDynamicColors__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 640) layer];
  v1 = [MEMORY[0x1E69DC888] systemGrayColor];
  [v2 setBorderColor:{objc_msgSend(v1, "CGColor")}];
}

@end