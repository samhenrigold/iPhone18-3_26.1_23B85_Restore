@interface PKStackedLabelCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKStackedLabelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_applyLabelStyles;
- (void)layoutSubviews;
- (void)setDetailImage:(id)image;
- (void)setDetailText:(id)text;
- (void)setDetailTextColor:(id)color;
- (void)setTitleText:(id)text;
- (void)setTitleTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKStackedLabelCell

- (PKStackedLabelCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v17.receiver = self;
  v17.super_class = PKStackedLabelCell;
  v4 = [(PKStackedLabelCell *)&v17 initWithStyle:0 reuseIdentifier:identifier];
  if (v4)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    titleTextColor = v4->_titleTextColor;
    v4->_titleTextColor = labelColor;

    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    detailTextColor = v4->_detailTextColor;
    v4->_detailTextColor = secondaryLabelColor;

    v9 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v9;

    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setTextAlignment:4];
    [(UILabel *)v4->_titleLabel setTextColor:v4->_titleTextColor];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v11;

    [(UILabel *)v4->_detailLabel setNumberOfLines:0];
    [(UILabel *)v4->_detailLabel setTextAlignment:4];
    [(UILabel *)v4->_detailLabel setTextColor:v4->_detailTextColor];
    [(UILabel *)v4->_detailLabel setLineBreakMode:4];
    [(UILabel *)v4->_detailLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    detailImageView = v4->_detailImageView;
    v4->_detailImageView = v13;

    [(PKStackedLabelCell *)v4 _applyLabelStyles];
    contentView = [(PKStackedLabelCell *)v4 contentView];
    [contentView addSubview:v4->_titleLabel];
    [contentView addSubview:v4->_detailLabel];
    [contentView addSubview:v4->_detailImageView];
    v4->_isRTL = [(PKStackedLabelCell *)v4 _shouldReverseLayoutDirection];
  }

  return v4;
}

- (void)_applyLabelStyles
{
  titleLabel = self->_titleLabel;
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)titleLabel setFont:v5];

  detailLabel = self->_detailLabel;
  v7 = PKFontForDefaultDesign(v4, 0);
  [(UILabel *)detailLabel setFont:v7];
}

- (void)layoutSubviews
{
  v91.receiver = self;
  v91.super_class = PKStackedLabelCell;
  [(PKStackedLabelCell *)&v91 layoutSubviews];
  [(UILabel *)self->_titleLabel frame];
  [(UILabel *)self->_detailLabel frame];
  [(UIImageView *)self->_detailImageView frame];
  font = [(UILabel *)self->_titleLabel font];
  [font lineHeight];
  v85 = v4;

  font2 = [(UILabel *)self->_detailLabel font];
  [font2 lineHeight];
  v7 = v6;

  contentView = [(PKStackedLabelCell *)self contentView];
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [contentView bounds];
  v18 = v12 + v17;
  v20 = v10 + v19;
  v22 = v21 - (v12 + v16);
  v24 = v23 - (v10 + v14);
  remainder.origin.x = v18;
  remainder.origin.y = v20;
  remainder.size.width = v22;
  remainder.size.height = v24;
  memset(&slice, 0, sizeof(slice));
  [(UILabel *)self->_titleLabel sizeThatFits:v22, v24];
  v26 = v25;
  amount = v27;
  [(UILabel *)self->_detailLabel sizeThatFits:v22, v24];
  v29 = v28;
  v88 = v30;
  [(UIImageView *)self->_detailImageView sizeThatFits:v22, v24];
  v32 = v31;
  v86 = v33.n128_u64[0];
  v34.n128_f64[0] = v7 * 0.0986;
  PKFloatRoundToPixel(v34, v33);
  v36 = v35;
  v87 = v29;
  v37 = v26 + v29;
  v38 = *&v32;
  v39 = v36 + v37 + v32 + v85 * 0.4863;
  if (self->_isRTL)
  {
    v40 = CGRectMaxXEdge;
  }

  else
  {
    v40 = CGRectMinXEdge;
  }

  v41 = PKContentAlignmentMake();
  if (v39 <= v22)
  {
    v67 = PKContentAlignmentMake();
    CGRectDivide(remainder, &slice, &remainder, v26, v40);
    titleLabel = self->_titleLabel;
    v69.n128_u64[0] = *&slice.size.width;
    v70.n128_u64[0] = *&slice.size.height;
    v71.n128_u64[0] = *&slice.origin.x;
    v72.n128_u64[0] = *&slice.origin.y;
    v73.n128_u64[0] = *&slice.size.width;
    v74.n128_u64[0] = *&slice.size.height;
    PKSizeAlignedInRect(v41, v69, v70, v71, v72, v73, v74, v75);
    [(UILabel *)titleLabel setFrame:?];
    CGRectDivide(remainder, &slice, &remainder, remainder.size.width - v87 - v36, v40);
    detailImageView = self->_detailImageView;
    v77.n128_u64[0] = *&slice.origin.x;
    v78.n128_u64[0] = *&slice.origin.y;
    v79.n128_u64[0] = *&slice.size.width;
    v80.n128_u64[0] = *&slice.size.height;
    v81.n128_u64[0] = v38;
    v82.n128_u64[0] = v86;
    PKSizeAlignedInRect(v67, v81, v82, v77, v78, v79, v80, v83);
    [(UIImageView *)detailImageView setFrame:?];
    CGRectDivide(remainder, &slice, &remainder, v36, v40);
    detailLabel = self->_detailLabel;
    v60.n128_u64[0] = *&remainder.origin.x;
    v61.n128_u64[0] = *&remainder.origin.y;
    v62.n128_u64[0] = *&remainder.size.width;
    v63.n128_u64[0] = *&remainder.size.height;
    v64.n128_f64[0] = v87;
    v65.n128_u64[0] = v88;
    v66 = v67;
  }

  else
  {
    v92.origin.x = v18;
    v92.origin.y = v20;
    v92.size.width = v22;
    v92.size.height = v24;
    CGRectDivide(v92, &slice, &remainder, amount, CGRectMinYEdge);
    v42 = self->_titleLabel;
    v43.n128_u64[0] = *&slice.size.width;
    v44.n128_u64[0] = *&slice.size.height;
    v45.n128_u64[0] = *&slice.origin.x;
    v46.n128_u64[0] = *&slice.origin.y;
    v47.n128_u64[0] = *&slice.size.width;
    v48.n128_u64[0] = *&slice.size.height;
    PKSizeAlignedInRect(v41, v43, v44, v45, v46, v47, v48, v49);
    [(UILabel *)v42 setFrame:?];
    CGRectDivide(remainder, &slice, &remainder, 6.0, CGRectMinYEdge);
    CGRectDivide(remainder, &slice, &remainder, *&v38, v40);
    v50 = self->_detailImageView;
    v51.n128_u64[0] = *&slice.origin.x;
    v52.n128_u64[0] = *&slice.origin.y;
    v53.n128_u64[0] = *&slice.size.width;
    v54.n128_u64[0] = *&slice.size.height;
    v55.n128_u64[0] = v38;
    v56.n128_u64[0] = v86;
    PKSizeAlignedInRect(v41, v55, v56, v51, v52, v53, v54, v57);
    [(UIImageView *)v50 setFrame:?];
    CGRectDivide(remainder, &slice, &remainder, v36, v40);
    detailLabel = self->_detailLabel;
    v60.n128_u64[0] = *&remainder.origin.x;
    v61.n128_u64[0] = *&remainder.origin.y;
    v62.n128_u64[0] = *&remainder.size.width;
    v63.n128_u64[0] = *&remainder.size.height;
    v64.n128_f64[0] = v87;
    v65.n128_u64[0] = v88;
    v66 = v41;
  }

  PKSizeAlignedInRect(v66, v64, v65, v60, v61, v62, v63, v58);
  [(UILabel *)detailLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  v4 = [(PKStackedLabelCell *)self contentView:fits.width];
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v37 = v6;
  v38 = v5;
  v8 = v7;
  v10 = v9;
  [v4 frame];
  v12 = v11 - (v8 + v10);
  [(UILabel *)self->_titleLabel sizeThatFits:v12, 1.79769313e308];
  v14 = v13;
  v16 = v15;
  [(UILabel *)self->_detailLabel sizeThatFits:v12, 1.79769313e308];
  v18 = v17;
  v20 = v19;
  [(UIImageView *)self->_detailImageView sizeThatFits:v12, 1.79769313e308];
  v22 = v21;
  font = [(UILabel *)self->_titleLabel font];
  [font lineHeight];
  v25 = v24;

  font2 = [(UILabel *)self->_detailLabel font];
  [font2 lineHeight];
  v28 = v27;

  v29 = fmax(v16, v20);
  if (v14 + v18 + v22 + v25 * 0.4863 + v28 * 0.0986 <= v12)
  {
    v30 = v29;
  }

  else
  {
    v30 = v16 + 6.0 + v20;
  }

  PKSizeRoundToPixel(width, v37 + v38 + v30);
  v32 = v31;
  v34 = v33;

  v35 = v32;
  v36 = v34;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = PKStackedLabelCell;
  [(PKStackedLabelCell *)&v4 traitCollectionDidChange:change];
  [(PKStackedLabelCell *)self _applyLabelStyles];
  [(PKStackedLabelCell *)self setNeedsLayout];
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  v6 = self->_titleText;
  v7 = textCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_titleText, text);
    [(UILabel *)self->_titleLabel setText:self->_titleText];
    [(UILabel *)self->_titleLabel sizeToFit];
    [(PKStackedLabelCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  v6 = self->_detailText;
  v7 = textCopy;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v6 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_detailText, text);
    [(UILabel *)self->_detailLabel setText:v9];
    [(UILabel *)self->_detailLabel sizeToFit];
    [(PKStackedLabelCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setDetailImage:(id)image
{
  imageCopy = image;
  if (self->_detailImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_detailImage, image);
    [(UIImageView *)self->_detailImageView setImage:v6];
    [(UIImageView *)self->_detailImageView setTintColor:self->_detailTextColor];
    [(PKStackedLabelCell *)self setNeedsLayout];
    imageCopy = v6;
  }
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleTextColor, color);
    [(UILabel *)self->_titleLabel setTextColor:self->_titleTextColor];
  }
}

- (void)setDetailTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_detailTextColor, color);
    [(UILabel *)self->_detailLabel setTextColor:self->_detailTextColor];
  }
}

@end