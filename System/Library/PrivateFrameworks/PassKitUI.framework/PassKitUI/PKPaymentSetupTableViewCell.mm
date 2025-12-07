@interface PKPaymentSetupTableViewCell
+ (CGSize)defaultImageViewSize;
- (PKPaymentSetupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setShowBetaBadge:(BOOL)badge;
- (void)setThumbnail:(id)thumbnail type:(int64_t)type animated:(BOOL)animated;
@end

@implementation PKPaymentSetupTableViewCell

- (PKPaymentSetupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v27.receiver = self;
  v27.super_class = PKPaymentSetupTableViewCell;
  v4 = [(PKPaymentSetupTableViewCell *)&v27 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PKPaymentSetupTableViewCell *)v4 contentView];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    cardImageView = v5->_cardImageView;
    v5->_cardImageView = v12;

    [(UIImageView *)v5->_cardImageView setAccessibilityIgnoresInvertColors:1];
    [contentView addSubview:v5->_cardImageView];
    v14 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v8, v9, v10, v11}];
    iconImageView = v5->_iconImageView;
    v5->_iconImageView = v14;

    [(UIImageView *)v5->_iconImageView setAccessibilityIgnoresInvertColors:1];
    [(UIImageView *)v5->_iconImageView setContentMode:1];
    [contentView addSubview:v5->_iconImageView];
    layer = [(UIImageView *)v5->_cardImageView layer];
    PKUIPixelLength();
    v17 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.21];
    [v17 CGColor];
    PKPaymentStyleApplyCorners();

    [layer setShouldRasterize:1];
    [layer setRasterizationScale:PKUIScreenScale()];
    v18 = [MEMORY[0x1E69DB878] systemFontOfSize:12.0];
    v19 = [MEMORY[0x1E69DC888] colorWithRed:0.909803922 green:0.364705882 blue:0.0 alpha:1.0];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    betaLabel = v5->_betaLabel;
    v5->_betaLabel = v20;

    v22 = v5->_betaLabel;
    v23 = PKLocalizedPaymentString(&cfstr_CardTypeBetaBa.isa);
    [(UILabel *)v22 setText:v23];

    layer2 = [(UILabel *)v5->_betaLabel layer];

    [layer2 setBorderWidth:1.0];
    [layer2 setCornerRadius:3.0];
    [layer2 setBorderColor:{objc_msgSend(v19, "CGColor")}];
    [(UILabel *)v5->_betaLabel setTextColor:v19];
    [(UILabel *)v5->_betaLabel setFont:v18];
    [(UILabel *)v5->_betaLabel setTextAlignment:1];
    textLabel = [(PKPaymentSetupTableViewCell *)v5 textLabel];
    [textLabel setNumberOfLines:2];
  }

  return v5;
}

- (void)setShowBetaBadge:(BOOL)badge
{
  if (self->_showBetaBadge != badge)
  {
    if (badge)
    {
      contentView = [(PKPaymentSetupTableViewCell *)self contentView];
      [contentView addSubview:self->_betaLabel];
    }

    else
    {
      [(UILabel *)self->_betaLabel removeFromSuperview];
    }
  }

  self->_showBetaBadge = badge;
}

- (void)setThumbnail:(id)thumbnail type:(int64_t)type animated:(BOOL)animated
{
  animatedCopy = animated;
  thumbnailCopy = thumbnail;
  if (self->_thumbnail != thumbnailCopy || self->_thumbnailType != type)
  {
    objc_storeStrong(&self->_thumbnail, thumbnail);
    self->_thumbnailType = type;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PKPaymentSetupTableViewCell_setThumbnail_type_animated___block_invoke;
    aBlock[3] = &unk_1E8013D60;
    aBlock[4] = self;
    v13 = thumbnailCopy;
    v14 = animatedCopy;
    v10 = _Block_copy(aBlock);
    v11 = v10;
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] transitionWithView:self duration:5242880 options:v10 animations:0 completion:0.3];
    }

    else
    {
      (*(v10 + 2))(v10);
    }
  }
}

void *__58__PKPaymentSetupTableViewCell_setThumbnail_type_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = &OBJC_IVAR___PKPaymentSetupTableViewCell__cardImageView;
  v4 = v2[136];
  if (v4)
  {
    if (v4 != 1)
    {
      goto LABEL_6;
    }

    v5 = &OBJC_IVAR___PKPaymentSetupTableViewCell__cardImageView;
    v3 = &OBJC_IVAR___PKPaymentSetupTableViewCell__iconImageView;
  }

  else
  {
    v5 = &OBJC_IVAR___PKPaymentSetupTableViewCell__iconImageView;
  }

  v6 = *v3;
  [*(v2 + v6) setImage:*(a1 + 40)];
  [*(*(a1 + 32) + v6) setAlpha:1.0];
  v7 = *v5;
  [*(*(a1 + 32) + v7) setImage:0];
  [*(*(a1 + 32) + v7) setAlpha:0.0];
  v2 = *(a1 + 32);
LABEL_6:
  result = [v2 setNeedsLayout];
  if (*(a1 + 48) == 1)
  {
    v9 = *(a1 + 32);

    return [v9 layoutIfNeeded];
  }

  return result;
}

- (void)layoutSubviews
{
  v68[1] = *MEMORY[0x1E69E9840];
  v66.receiver = self;
  v66.super_class = PKPaymentSetupTableViewCell;
  [(PKPaymentSetupTableViewCell *)&v66 layoutSubviews];
  _shouldReverseLayoutDirection = [(PKPaymentSetupTableViewCell *)self _shouldReverseLayoutDirection];
  contentView = [(PKPaymentSetupTableViewCell *)self contentView];
  [contentView frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v69.origin.x = v6;
  v69.origin.y = v8;
  v69.size.width = v10;
  v69.size.height = v12;
  Width = CGRectGetWidth(v69);
  v70.origin.x = v6;
  v70.origin.y = v8;
  v70.size.width = v10;
  v70.size.height = v12;
  v14.n128_f64[0] = CGRectGetHeight(v70);
  thumbnail = self->_thumbnail;
  v17 = *MEMORY[0x1E695F058];
  v18 = *(MEMORY[0x1E695F058] + 8);
  v64 = v14.n128_u64[0];
  if (thumbnail)
  {
    v15.n128_u64[0] = 0.5;
    v14.n128_f64[0] = (v14.n128_f64[0] + -32.0) * 0.5;
    PKFloatRoundToPixel(v14, v15);
    v20 = v19;
    if (_shouldReverseLayoutDirection)
    {
      v21 = Width + -53.0 + -15.0;
    }

    else
    {
      v21 = 15.0;
    }

    v22 = 53.0;
    v23 = 32.0;
  }

  else
  {
    v22 = *(MEMORY[0x1E695F058] + 16);
    v23 = *(MEMORY[0x1E695F058] + 24);
    v20 = *(MEMORY[0x1E695F058] + 8);
    v21 = *MEMORY[0x1E695F058];
  }

  [(UIImageView *)self->_cardImageView setFrame:v21, v20, v22, v23, v64];
  iconImageView = self->_iconImageView;
  v25.n128_u64[0] = 0x4040000000000000;
  v26.n128_u64[0] = 0x4040000000000000;
  v27.n128_f64[0] = v21;
  v28.n128_f64[0] = v20;
  v29.n128_f64[0] = v22;
  v30.n128_f64[0] = v23;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v25, v26, v27, v28, v29, v30, v31);
  [(UIImageView *)iconImageView setFrame:?];
  if (thumbnail)
  {
    if ([(PKPaymentSetupTableViewCell *)self accessoryType])
    {
      v32 = 0.0;
    }

    else
    {
      v32 = 40.0;
    }

    v71.origin.x = v21;
    v71.origin.y = v20;
    v71.size.width = v22;
    v71.size.height = v23;
    v33 = Width - CGRectGetWidth(v71) + -30.0 - v32;
    textLabel = [(PKPaymentSetupTableViewCell *)self textLabel];
    [textLabel sizeToFit];
    [textLabel sizeThatFits:{v33, 1.79769313e308}];
    v37 = v36;
    if (v33 >= v35)
    {
      v33 = v35;
    }

    v72.origin.x = v17;
    v72.origin.y = v18;
    v72.size.width = v33;
    v72.size.height = v37;
    v38 = (v65 - CGRectGetHeight(v72)) * 0.5;
    v39 = v21;
    v40 = v20;
    v41 = v22;
    v42 = v23;
    if (_shouldReverseLayoutDirection)
    {
      v43 = CGRectGetMinX(*&v39) + -15.0 - v33;
    }

    else
    {
      v43 = CGRectGetMaxX(*&v39) + 15.0;
    }

    [textLabel setFrame:{v43, v38, v33, v37}];
  }

  if (self->_showBetaBadge)
  {
    [(UILabel *)self->_betaLabel frame];
    if (v44 >= 40.0)
    {
      v46 = v44;
    }

    else
    {
      v46 = 40.0;
    }

    if (v45 >= 19.0)
    {
      v47 = v45;
    }

    else
    {
      v47 = 19.0;
    }

    text = [(UILabel *)self->_betaLabel text];
    v67 = *MEMORY[0x1E69DB648];
    font = [(UILabel *)self->_betaLabel font];
    v68[0] = font;
    v50 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    [text sizeWithAttributes:v50];
    v52 = v51;

    if (v46 >= v52 + 20.0)
    {
      v53 = v46;
    }

    else
    {
      v53 = v52 + 20.0;
    }

    textLabel2 = [(PKPaymentSetupTableViewCell *)self textLabel];
    [textLabel2 frame];
    v56 = v55;
    v58 = v57;

    v59.n128_f64[0] = v65 * 0.5;
    v60.n128_f64[0] = v65 * 0.5 - v47 * 0.5;
    PKFloatRoundToPixel(v60, v59);
    v62 = v61;
    v63 = v56 - v53 + -11.0;
    if (!_shouldReverseLayoutDirection)
    {
      v63 = v56 + v58 + 11.0;
    }

    [(UILabel *)self->_betaLabel setFrame:v63, v62, v53, v47];
  }
}

+ (CGSize)defaultImageViewSize
{
  v2 = 53.0;
  v3 = 32.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = PKPaymentSetupTableViewCell;
  [(PKTableViewCell *)&v4 prepareForReuse];
  textLabel = [(PKPaymentSetupTableViewCell *)self textLabel];
  [textLabel setText:0];

  [(PKPaymentSetupTableViewCell *)self setThumbnail:0 type:0 animated:0];
  [(PKPaymentSetupTableViewCell *)self setShowBetaBadge:0];
}

@end