@interface PKCommutePlanDetailsTableViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCommutePlanDetailsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier passDetailViewStyle:(int64_t)viewStyle;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
@end

@implementation PKCommutePlanDetailsTableViewCell

- (PKCommutePlanDetailsTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier passDetailViewStyle:(int64_t)viewStyle
{
  v24.receiver = self;
  v24.super_class = PKCommutePlanDetailsTableViewCell;
  v6 = [(PKCommutePlanDetailsTableViewCell *)&v24 initWithStyle:style reuseIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    contentView = [(PKCommutePlanDetailsTableViewCell *)v6 contentView];
    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v7->_primaryLabel;
    v7->_primaryLabel = v9;

    [(UILabel *)v7->_primaryLabel setNumberOfLines:0];
    [(UILabel *)v7->_primaryLabel setLineBreakMode:0];
    v11 = v7->_primaryLabel;
    v12 = *MEMORY[0x1E69DDC90];
    v13 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC90]);
    [(UILabel *)v11 setFont:v13];

    v14 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v7->_secondaryLabel;
    v7->_secondaryLabel = v14;

    [(UILabel *)v7->_secondaryLabel setNumberOfLines:0];
    [(UILabel *)v7->_secondaryLabel setLineBreakMode:0];
    v16 = v7->_secondaryLabel;
    v17 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], v12);
    [(UILabel *)v16 setFont:v17];

    v18 = v7->_primaryLabel;
    if (viewStyle == 2)
    {
      secondaryLabelColor = PKBridgeAppearanceGetAppearanceSpecifier();
      textColor = [secondaryLabelColor textColor];
      [(UILabel *)v18 setTextColor:textColor];
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(UILabel *)v18 setTextColor:labelColor];

      v22 = v7->_secondaryLabel;
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)v22 setTextColor:secondaryLabelColor];
    }

    [contentView addSubview:v7->_primaryLabel];
    [contentView addSubview:v7->_secondaryLabel];
  }

  return v7;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKCommutePlanDetailsTableViewCell;
  [(PKCommutePlanDetailsTableViewCell *)&v4 layoutSubviews];
  contentView = [(PKCommutePlanDetailsTableViewCell *)self contentView];
  [contentView bounds];
  [(PKCommutePlanDetailsTableViewCell *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_templateLayout = 1;
  [(PKCommutePlanDetailsTableViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, 1.79769313e308];
  self->_templateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PKCommutePlanDetailsTableViewCell;
  [(PKCommutePlanDetailsTableViewCell *)&v5 prepareForReuse];
  primaryText = self->_primaryText;
  self->_primaryText = 0;

  secondaryText = self->_secondaryText;
  self->_secondaryText = 0;
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = self->_primaryText;
  v10 = textCopy;
  v6 = primaryText;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_primaryText;
    self->_primaryText = v8;

    [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    [(PKCommutePlanDetailsTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = self->_secondaryText;
  v10 = textCopy;
  v6 = secondaryText;
  if (v6 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !v6)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:v6];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_secondaryText;
    self->_secondaryText = v8;

    [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
    [(PKCommutePlanDetailsTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  memset(&slice, 0, sizeof(slice));
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v9 = x + v8;
  v10 = y + 10.0;
  v12 = width - (v8 + v11);
  remainder.origin.x = v9;
  remainder.origin.y = v10;
  v13 = height + -20.0;
  remainder.size.width = v12;
  remainder.size.height = v13;
  [(PKCommutePlanDetailsTableViewCell *)self _shouldReverseLayoutDirection];
  [(UILabel *)self->_primaryLabel pkui_sizeThatFits:1 forceWordWrap:v12, v13];
  v15 = v14;
  v17 = v16;
  v40.origin.x = v9;
  v40.origin.y = v10;
  v40.size.width = v12;
  v40.size.height = v13;
  CGRectDivide(v40, &slice, &remainder, v17, CGRectMinYEdge);
  v35 = slice.origin.y;
  v36 = slice.origin.x;
  v33 = slice.size.height;
  v34 = slice.size.width;
  CGRectDivide(remainder, &slice, &remainder, 4.0, CGRectMinYEdge);
  v18 = v17 + 4.0 + 20.0;
  if (PKStringIsBlank(self->_secondaryText))
  {
    if (!self->_templateLayout)
    {
      primaryLabel = self->_primaryLabel;
      v20 = PKContentAlignmentMake();
      v21.n128_u64[0] = v15;
      v22.n128_f64[0] = v17;
      v23.n128_f64[0] = v9;
      v24.n128_f64[0] = v10;
      v25.n128_f64[0] = v12;
      v26.n128_f64[0] = v13;
      PKSizeAlignedInRect(v20, v21, v22, v23, v24, v25, v26, v27);
      [(UILabel *)primaryLabel setFrame:?];
    }
  }

  else
  {
    [(UILabel *)self->_secondaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v29 = v28;
    CGRectDivide(remainder, &slice, &remainder, v28, CGRectMinYEdge);
    if (!self->_templateLayout)
    {
      [(UILabel *)self->_primaryLabel setFrame:v36, v35, v34, v33];
      [(UILabel *)self->_secondaryLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    }

    v18 = v18 + v29;
  }

  v30 = v18;
  v31 = ceilf(v30);
  v32 = width;
  result.height = v31;
  result.width = v32;
  return result;
}

@end