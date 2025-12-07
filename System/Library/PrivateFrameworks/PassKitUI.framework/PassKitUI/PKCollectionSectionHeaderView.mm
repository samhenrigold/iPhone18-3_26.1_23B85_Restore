@interface PKCollectionSectionHeaderView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCollectionSectionHeaderView)initWithFrame:(CGRect)frame;
- (void)_resetFont;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setBottomPadding:(double)padding;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)setTopPadding:(double)padding;
@end

@implementation PKCollectionSectionHeaderView

- (PKCollectionSectionHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKCollectionSectionHeaderView;
  v3 = [(PKCollectionSectionHeaderView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKCollectionSectionHeaderView *)v3 _resetFont];
  }

  return v4;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKCollectionSectionHeaderView;
  [(PKCollectionSectionHeaderView *)&v4 layoutSubviews];
  contentView = [(PKCollectionSectionHeaderView *)self contentView];
  [contentView bounds];
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self, a2, 1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  topPadding = self->_topPadding;
  bottomPadding = self->_bottomPadding;
  v8 = bounds.origin.x + 4.0;
  v9 = bounds.origin.y + topPadding;
  width = bounds.size.width;
  v10 = bounds.size.width + -8.0;
  v11 = bounds.size.height - (topPadding + bottomPadding);
  contentView = [(PKCollectionSectionHeaderView *)self contentView];
  [contentView _shouldReverseLayoutDirection];

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v8;
  remainder.origin.y = v9;
  remainder.size.width = v10;
  remainder.size.height = v11;
  v13 = topPadding + 0.0 + bottomPadding;
  [(UILabel *)self->_primaryLabel sizeThatFits:v10, v11];
  v15 = v14;
  v17 = v16;
  [(UILabel *)self->_secondaryLabel sizeThatFits:v10, v11];
  v56 = v18;
  v20 = v19;
  v61.origin.x = v8;
  v61.origin.y = v9;
  v61.size.width = v10;
  v61.size.height = v11;
  CGRectDivide(v61, &slice, &remainder, v17, CGRectMinYEdge);
  v21 = PKContentAlignmentMake();
  v22.n128_u64[0] = *&slice.origin.x;
  v23.n128_u64[0] = *&slice.origin.y;
  v24.n128_u64[0] = *&slice.size.width;
  v25.n128_u64[0] = *&slice.size.height;
  v26.n128_u64[0] = v15;
  v27.n128_f64[0] = v17;
  PKSizeAlignedInRect(v21, v26, v27, v22, v23, v24, v25, v28);
  v54 = v30;
  v55 = v29;
  v32 = v31;
  v34 = v33;
  v35 = v13 + v33;
  if (v17 > 0.0 && v20 > 0.0)
  {
    CGRectDivide(remainder, &slice, &remainder, 5.0, CGRectMinYEdge);
    v35 = v35 + 5.0;
  }

  CGRectDivide(remainder, &slice, &remainder, v20, CGRectMinYEdge);
  v36 = PKContentAlignmentMake();
  v37.n128_u64[0] = *&slice.origin.x;
  v38.n128_u64[0] = *&slice.origin.y;
  v39.n128_u64[0] = *&slice.size.width;
  v40.n128_u64[0] = *&slice.size.height;
  v41.n128_u64[0] = v56;
  v42.n128_f64[0] = v20;
  PKSizeAlignedInRect(v36, v41, v42, v37, v38, v39, v40, v43);
  v48 = v47;
  if (!layout)
  {
    v49 = v44;
    v50 = v45;
    v51 = v46;
    [(UILabel *)self->_primaryLabel setFrame:v55, v54, v32, v34];
    [(UILabel *)self->_secondaryLabel setFrame:v49, v50, v51, v48];
  }

  v52 = v35 + v48;
  v53 = width;
  result.height = v52;
  result.width = v53;
  return result;
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = self->_primaryText;
  v18 = textCopy;
  v7 = primaryText;
  if (v7 == v18)
  {

LABEL_16:
    v9 = v18;
    goto LABEL_17;
  }

  if (!v18 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v18 isEqualToString:v7];

  v9 = v18;
  if (!v8)
  {
LABEL_8:
    _shouldReverseLayoutDirection = [(PKCollectionSectionHeaderView *)self _shouldReverseLayoutDirection];
    objc_storeStrong(&self->_primaryText, text);
    v11 = [(NSString *)self->_primaryText length];
    primaryLabel = self->_primaryLabel;
    if (v11)
    {
      if (!primaryLabel)
      {
        v13 = objc_alloc(MEMORY[0x1E69DCC10]);
        v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v15 = self->_primaryLabel;
        self->_primaryLabel = v14;

        [(UILabel *)self->_primaryLabel setFont:self->_primaryFont];
        [(UILabel *)self->_primaryLabel setNumberOfLines:0];
        if (_shouldReverseLayoutDirection)
        {
          v16 = 2;
        }

        else
        {
          v16 = 0;
        }

        [(UILabel *)self->_primaryLabel setTextAlignment:v16];
        [(PKCollectionSectionHeaderView *)self addSubview:self->_primaryLabel];
      }
    }

    else
    {
      [(UILabel *)primaryLabel removeFromSuperview];
      v17 = self->_primaryLabel;
      self->_primaryLabel = 0;
    }

    [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    [(PKCollectionSectionHeaderView *)self setNeedsLayout];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = self->_secondaryText;
  v20 = textCopy;
  v7 = secondaryText;
  if (v7 == v20)
  {

LABEL_16:
    v9 = v20;
    goto LABEL_17;
  }

  if (!v20 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v20 isEqualToString:v7];

  v9 = v20;
  if (!v8)
  {
LABEL_8:
    _shouldReverseLayoutDirection = [(PKCollectionSectionHeaderView *)self _shouldReverseLayoutDirection];
    objc_storeStrong(&self->_secondaryText, text);
    v11 = [(NSString *)self->_secondaryText length];
    secondaryLabel = self->_secondaryLabel;
    if (v11)
    {
      if (!secondaryLabel)
      {
        v13 = objc_alloc(MEMORY[0x1E69DCC10]);
        v14 = [v13 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v15 = self->_secondaryLabel;
        self->_secondaryLabel = v14;

        [(UILabel *)self->_secondaryLabel setFont:self->_secondaryFont];
        [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
        if (_shouldReverseLayoutDirection)
        {
          v16 = 2;
        }

        else
        {
          v16 = 0;
        }

        [(UILabel *)self->_secondaryLabel setTextAlignment:v16];
        v17 = self->_secondaryLabel;
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(UILabel *)v17 setTextColor:secondaryLabelColor];

        [(PKCollectionSectionHeaderView *)self addSubview:self->_secondaryLabel];
      }
    }

    else
    {
      [(UILabel *)secondaryLabel removeFromSuperview];
      v19 = self->_secondaryLabel;
      self->_secondaryLabel = 0;
    }

    [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
    [(PKCollectionSectionHeaderView *)self setNeedsLayout];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setTopPadding:(double)padding
{
  if (self->_topPadding != padding)
  {
    self->_topPadding = padding;
    [(PKCollectionSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)setBottomPadding:(double)padding
{
  if (self->_bottomPadding != padding)
  {
    self->_bottomPadding = padding;
    [(PKCollectionSectionHeaderView *)self setNeedsLayout];
  }
}

- (void)_resetFont
{
  v3 = *MEMORY[0x1E69DDC38];
  v4 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC0], *MEMORY[0x1E69DDC38], 2, 0);
  primaryFont = self->_primaryFont;
  self->_primaryFont = v4;

  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v3, 0, 0);
  secondaryFont = self->_secondaryFont;
  self->_secondaryFont = v6;
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = PKCollectionSectionHeaderView;
  [(PKCollectionSectionHeaderView *)&v7 prepareForReuse];
  [(UILabel *)self->_primaryLabel removeFromSuperview];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = 0;

  primaryText = self->_primaryText;
  self->_primaryText = 0;

  [(UILabel *)self->_secondaryLabel removeFromSuperview];
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = 0;

  secondaryText = self->_secondaryText;
  self->_secondaryText = 0;

  self->_topPadding = 0.0;
  self->_bottomPadding = 0.0;
  [(PKCollectionSectionHeaderView *)self _resetFont];
}

@end