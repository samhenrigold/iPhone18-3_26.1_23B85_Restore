@interface PKAccountSupportTopicExplanationCollectionViewCell
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setExplanationContent:(id)content;
@end

@implementation PKAccountSupportTopicExplanationCollectionViewCell

- (void)setExplanationContent:(id)content
{
  contentCopy = content;
  contentView = [(PKAccountSupportTopicExplanationCollectionViewCell *)self contentView];
  if (!self->_primaryLabel)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = self->_primaryLabel;
    self->_primaryLabel = v5;

    [(UILabel *)self->_primaryLabel setNumberOfLines:0];
    v7 = self->_primaryLabel;
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
    [(UILabel *)v7 setFont:v8];

    v9 = self->_primaryLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v9 setTextColor:labelColor];

    [contentView addSubview:self->_primaryLabel];
  }

  if (!self->_secondaryLabel)
  {
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = self->_secondaryLabel;
    self->_secondaryLabel = v11;

    [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
    v13 = self->_secondaryLabel;
    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD00]];
    [(UILabel *)v13 setFont:v14];

    v15 = self->_secondaryLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v15 setTextColor:secondaryLabelColor];

    [contentView addSubview:self->_secondaryLabel];
  }

  if (!self->_iconImageView)
  {
    v17 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    iconImageView = self->_iconImageView;
    self->_iconImageView = v17;

    [(UIImageView *)self->_iconImageView setContentMode:1];
    v19 = self->_iconImageView;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UIImageView *)v19 setTintColor:labelColor2];

    [contentView addSubview:self->_iconImageView];
  }

  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [contentView setBackgroundColor:secondarySystemGroupedBackgroundColor];

  v22 = self->_primaryLabel;
  title = [contentCopy title];
  [(UILabel *)v22 setText:title];

  v24 = self->_secondaryLabel;
  subtitle = [contentCopy subtitle];
  [(UILabel *)v24 setText:subtitle];

  v26 = self->_iconImageView;
  v27 = MEMORY[0x1E69DCAB8];
  systemImageName = [contentCopy systemImageName];

  v29 = [v27 systemImageNamed:systemImageName];
  [(UIImageView *)v26 setImage:v29];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKAccountSupportTopicExplanationCollectionViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKAccountSupportTopicExplanationCollectionViewCell;
  [(PKAccountSupportTopicExplanationCollectionViewCell *)&v4 layoutSubviews];
  contentView = [(PKAccountSupportTopicExplanationCollectionViewCell *)self contentView];
  [contentView bounds];
  [(PKAccountSupportTopicExplanationCollectionViewCell *)self _layoutWithBounds:?];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKAccountSupportTopicExplanationCollectionViewCell;
  [(PKAccountSupportTopicExplanationCollectionViewCell *)&v3 prepareForReuse];
  [(UILabel *)self->_primaryLabel setText:0];
  [(UILabel *)self->_secondaryLabel setText:0];
  [(UIImageView *)self->_iconImageView setImage:0];
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  if ([(PKAccountSupportTopicExplanationCollectionViewCell *)self _shouldReverseLayoutDirection])
  {
    v8 = CGRectMaxXEdge;
  }

  else
  {
    v8 = CGRectMinXEdge;
  }

  memset(&slice, 0, sizeof(slice));
  v9 = x + 16.0;
  v10 = y + 20.0;
  v11 = height + -40.0;
  remainder.origin.x = v9;
  remainder.origin.y = v10;
  remainder.size.width = width + -32.0;
  remainder.size.height = height + -40.0;
  image = [(UIImageView *)self->_iconImageView image];

  if (image)
  {
    v13 = PKContentAlignmentMake();
    memset(&v62, 0, sizeof(v62));
    font = [(UILabel *)self->_primaryLabel font];
    [font lineHeight];
    v16 = v15;

    v66.origin.x = v9;
    v66.origin.y = v10;
    v66.size.width = width + -32.0;
    v66.size.height = v11;
    CGRectDivide(v66, &v62, &remainder, v16, v8);
    CGRectDivide(remainder, &slice, &remainder, 4.0, v8);
    iconImageView = self->_iconImageView;
    v19.n128_u64[0] = *&v62.origin.y;
    v18.n128_u64[0] = *&v62.origin.x;
    v21.n128_u64[0] = *&v62.size.height;
    v20.n128_u64[0] = *&v62.size.width;
    v22.n128_f64[0] = v16;
    v23.n128_f64[0] = v16;
    PKSizeAlignedInRect(v13, v22, v23, v18, v19, v20, v21, v24);
    [(UIImageView *)iconImageView setFrame:?];
  }

  else
  {
    v16 = 0.0;
  }

  text = [(UILabel *)self->_primaryLabel text];
  v26 = [text length];

  if (v26)
  {
    memset(&v62, 0, sizeof(v62));
    [(UILabel *)self->_primaryLabel sizeThatFits:remainder.size.width, remainder.size.height];
    v28 = v27;
    v30 = v29;
    CGRectDivide(remainder, &v62, &remainder, v29, CGRectMinYEdge);
    primaryLabel = self->_primaryLabel;
    v32 = PKContentAlignmentMake();
    v34.n128_u64[0] = *&v62.origin.y;
    v33.n128_u64[0] = *&v62.origin.x;
    v36.n128_u64[0] = *&v62.size.height;
    v35.n128_u64[0] = *&v62.size.width;
    v37.n128_u64[0] = v28;
    v38.n128_f64[0] = v30;
    PKSizeAlignedInRect(v32, v37, v38, v33, v34, v35, v36, v39);
    [(UILabel *)primaryLabel setFrame:?];
    v16 = fmax(v30, v16);
  }

  text2 = [(UILabel *)self->_secondaryLabel text];
  v41 = [text2 length];

  if (v41)
  {
    if (v16 > 0.0)
    {
      remainder.origin.x = v9;
      remainder.origin.y = v10;
      remainder.size.width = width + -32.0;
      remainder.size.height = v11;
      v67.origin.x = v9;
      v67.origin.y = v10;
      v67.size.width = width + -32.0;
      v67.size.height = v11;
      CGRectDivide(v67, &slice, &remainder, v16, CGRectMinYEdge);
      CGRectDivide(remainder, &slice, &remainder, 14.0, CGRectMinYEdge);
    }

    memset(&v62, 0, sizeof(v62));
    [(UILabel *)self->_secondaryLabel sizeThatFits:remainder.size.width, remainder.size.height, 0, 0, 0, 0];
    v43 = v42;
    v45 = *&v44;
    CGRectDivide(remainder, &v62, &remainder, v44, CGRectMinYEdge);
    secondaryLabel = self->_secondaryLabel;
    v47 = PKContentAlignmentMake();
    v49.n128_u64[0] = *&v62.origin.y;
    v48.n128_u64[0] = *&v62.origin.x;
    v51.n128_u64[0] = *&v62.size.height;
    v50.n128_u64[0] = *&v62.size.width;
    v52.n128_u64[0] = v43;
    v53.n128_u64[0] = v45;
    PKSizeAlignedInRect(v47, v52, v53, v48, v49, v50, v51, v54);
    [(UILabel *)secondaryLabel setFrame:?];
  }

  v55 = 20.0;
  if (v16 > 0.0)
  {
    v56 = v16 + 20.0;
    text3 = [(UILabel *)self->_secondaryLabel text];
    v58 = [text3 length];

    if (v58)
    {
      v55 = v56 + 14.0;
    }

    else
    {
      v55 = v56;
    }
  }

  [(UILabel *)self->_secondaryLabel frame];
  v60 = v55 + v59 + 20.0;
  v61 = width;
  result.height = v60;
  result.width = v61;
  return result;
}

@end