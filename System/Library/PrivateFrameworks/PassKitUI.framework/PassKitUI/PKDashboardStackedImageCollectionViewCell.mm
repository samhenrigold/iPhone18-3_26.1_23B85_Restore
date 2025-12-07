@interface PKDashboardStackedImageCollectionViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardStackedImageCollectionViewCell)initWithFrame:(CGRect)frame;
- (double)_contentHeightWithWidth:(double)width;
- (void)layoutSubviews;
- (void)setIcon:(id)icon;
- (void)setSubtitle:(id)subtitle;
- (void)setTertiaryText:(id)text;
- (void)setTitle:(id)title;
@end

@implementation PKDashboardStackedImageCollectionViewCell

- (PKDashboardStackedImageCollectionViewCell)initWithFrame:(CGRect)frame
{
  v33.receiver = self;
  v33.super_class = PKDashboardStackedImageCollectionViewCell;
  v3 = [(PKDashboardCollectionViewCell *)&v33 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    contentView = [(PKDashboardStackedImageCollectionViewCell *)v3 contentView];
    v6 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v7 = *MEMORY[0x1E695F058];
    v8 = *(MEMORY[0x1E695F058] + 8);
    v9 = *(MEMORY[0x1E695F058] + 16);
    v10 = *(MEMORY[0x1E695F058] + 24);
    v11 = [v6 initWithFrame:{*MEMORY[0x1E695F058], v8, v9, v10}];
    iconImageView = v4->_iconImageView;
    v4->_iconImageView = v11;

    [(UIImageView *)v4->_iconImageView _setContinuousCornerRadius:8.0];
    [(UIImageView *)v4->_iconImageView setClipsToBounds:1];
    [(UIImageView *)v4->_iconImageView setContentMode:1];
    layer = [(UIImageView *)v4->_iconImageView layer];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [layer setBorderColor:{objc_msgSend(tertiaryLabelColor, "CGColor")}];

    [layer setBorderWidth:PKUIPixelLength()];
    [contentView addSubview:v4->_iconImageView];
    v15 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v15;

    v17 = v4->_titleLabel;
    v18 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0, 2, 0);
    [(UILabel *)v17 setFont:v18];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    [contentView addSubview:v4->_titleLabel];
    v19 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    subtitleLabel = v4->_subtitleLabel;
    v4->_subtitleLabel = v19;

    v21 = v4->_subtitleLabel;
    v22 = *MEMORY[0x1E69DDD80];
    v23 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [(UILabel *)v21 setFont:v23];

    v24 = v4->_subtitleLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v24 setTextColor:secondaryLabelColor];

    [(UILabel *)v4->_subtitleLabel setNumberOfLines:2];
    [(UILabel *)v4->_subtitleLabel setTextAlignment:1];
    [contentView addSubview:v4->_subtitleLabel];
    v26 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v7, v8, v9, v10}];
    tertiaryLabel = v4->_tertiaryLabel;
    v4->_tertiaryLabel = v26;

    v28 = v4->_tertiaryLabel;
    v29 = PKFontForDefaultDesign(v22, 0);
    [(UILabel *)v28 setFont:v29];

    v30 = v4->_tertiaryLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v30 setTextColor:secondaryLabelColor2];

    [(UILabel *)v4->_tertiaryLabel setNumberOfLines:2];
    [(UILabel *)v4->_tertiaryLabel setTextAlignment:1];
    [contentView addSubview:v4->_tertiaryLabel];
  }

  return v4;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(PKDashboardStackedImageCollectionViewCell *)self _contentHeightWithWidth:fits.width + -32.0, fits.height];
  v5 = fmax(v4 + 32.0, 200.0);
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (double)_contentHeightWithWidth:(double)width
{
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:width, 1.79769313e308];
  v6 = v5 + 86.0;
  text = [(UILabel *)self->_subtitleLabel text];

  if (text)
  {
    [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:width, 1.79769313e308];
    v6 = v6 + v8 + 3.0;
  }

  text2 = [(UILabel *)self->_tertiaryLabel text];

  if (text2)
  {
    [(UILabel *)self->_tertiaryLabel pkui_sizeThatFits:1 forceWordWrap:width, 1.79769313e308];
    return v6 + v10 + 3.0;
  }

  return v6;
}

- (void)layoutSubviews
{
  v81.receiver = self;
  v81.super_class = PKDashboardStackedImageCollectionViewCell;
  [(PKDashboardCollectionViewCell *)&v81 layoutSubviews];
  contentView = [(PKDashboardStackedImageCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  memset(&v79, 0, sizeof(v79));
  x = v5 + 16.0;
  y = v7 + 16.0;
  width = v9 + -32.0;
  remainder.origin.x = x;
  remainder.origin.y = y;
  v15 = v11 + -32.0;
  remainder.size.width = width;
  remainder.size.height = v15;
  v82.origin.x = x;
  v82.origin.y = y;
  v82.size.width = width;
  v82.size.height = v15;
  [(PKDashboardStackedImageCollectionViewCell *)self _contentHeightWithWidth:CGRectGetWidth(v82)];
  v17 = v16;
  v83.origin.x = x;
  v83.origin.y = y;
  v83.size.width = width;
  v83.size.height = v15;
  if (v17 < CGRectGetHeight(v83))
  {
    v84.origin.x = x;
    v84.origin.y = y;
    v84.size.width = width;
    v84.size.height = v15;
    Height = CGRectGetHeight(v84);
    v19.n128_u64[0] = 0.5;
    v20.n128_f64[0] = (Height - v17) * 0.5;
    PKFloatRoundToPixel(v20, v19);
    CGRectDivide(remainder, &v79, &remainder, v21, CGRectMinYEdge);
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    v15 = remainder.size.height;
  }

  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = width;
  v85.size.height = v15;
  CGRectDivide(v85, &v79, &remainder, 70.0, CGRectMinYEdge);
  iconImageView = self->_iconImageView;
  [(UIImage *)self->_icon size];
  PKSizeAspectFit();
  v24.n128_u64[0] = *&v79.origin.y;
  v23.n128_u64[0] = *&v79.origin.x;
  v26.n128_u64[0] = *&v79.size.height;
  v25.n128_u64[0] = *&v79.size.width;
  v27 = *MEMORY[0x1E69BB7F8];
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v28, v29, v23, v24, v25, v26, v30);
  [(UIImageView *)iconImageView setFrame:?];
  CGRectDivide(remainder, &v79, &remainder, 16.0, CGRectMinYEdge);
  [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
  v32 = v31;
  v34 = *&v33;
  CGRectDivide(remainder, &v79, &remainder, v33, CGRectMinYEdge);
  titleLabel = self->_titleLabel;
  v37.n128_u64[0] = *&v79.origin.y;
  v36.n128_u64[0] = *&v79.origin.x;
  v39.n128_u64[0] = *&v79.size.height;
  v38.n128_u64[0] = *&v79.size.width;
  v40.n128_u64[0] = v32;
  v41.n128_u64[0] = v34;
  PKSizeAlignedInRect(v27, v40, v41, v36, v37, v38, v39, v42);
  [(UILabel *)titleLabel setFrame:?];
  text = [(UILabel *)self->_subtitleLabel text];

  if (text)
  {
    CGRectDivide(remainder, &v79, &remainder, 3.0, CGRectMinYEdge);
    [(UILabel *)self->_subtitleLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v45 = v44;
    v47 = *&v46;
    CGRectDivide(remainder, &v79, &remainder, v46, CGRectMinYEdge);
    subtitleLabel = self->_subtitleLabel;
    v50.n128_u64[0] = *&v79.origin.y;
    v49.n128_u64[0] = *&v79.origin.x;
    v52.n128_u64[0] = *&v79.size.height;
    v51.n128_u64[0] = *&v79.size.width;
    v53.n128_u64[0] = v45;
    v54.n128_u64[0] = v47;
    PKSizeAlignedInRect(v27, v53, v54, v49, v50, v51, v52, v55);
    v60 = subtitleLabel;
  }

  else
  {
    v60 = self->_subtitleLabel;
    v56 = *MEMORY[0x1E695F058];
    v57 = *(MEMORY[0x1E695F058] + 8);
    v58 = *(MEMORY[0x1E695F058] + 16);
    v59 = *(MEMORY[0x1E695F058] + 24);
  }

  [(UILabel *)v60 setFrame:v56, v57, v58, v59, *&v79.origin, *&v79.size];
  text2 = [(UILabel *)self->_tertiaryLabel text];

  if (text2)
  {
    CGRectDivide(remainder, &v79, &remainder, 3.0, CGRectMinYEdge);
    [(UILabel *)self->_tertiaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
    v63 = v62;
    v65 = *&v64;
    CGRectDivide(remainder, &v79, &remainder, v64, CGRectMinYEdge);
    tertiaryLabel = self->_tertiaryLabel;
    v68.n128_u64[0] = *&v79.origin.y;
    v67.n128_u64[0] = *&v79.origin.x;
    v70.n128_u64[0] = *&v79.size.height;
    v69.n128_u64[0] = *&v79.size.width;
    v71.n128_u64[0] = v63;
    v72.n128_u64[0] = v65;
    PKSizeAlignedInRect(v27, v71, v72, v67, v68, v69, v70, v73);
    v78 = tertiaryLabel;
  }

  else
  {
    v78 = self->_tertiaryLabel;
    v74 = *MEMORY[0x1E695F058];
    v75 = *(MEMORY[0x1E695F058] + 8);
    v76 = *(MEMORY[0x1E695F058] + 16);
    v77 = *(MEMORY[0x1E695F058] + 24);
  }

  [(UILabel *)v78 setFrame:v74, v75, v76, v77];
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_icon, icon);
    [(UIImageView *)self->_iconImageView setImage:self->_icon];
    [(PKDashboardStackedImageCollectionViewCell *)self setNeedsLayout];
  }
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
    [(PKDashboardStackedImageCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v5 = self->_subtitle;
  v6 = subtitleCopy;
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
    subtitle = self->_subtitle;
    self->_subtitle = v8;

    [(UILabel *)self->_subtitleLabel setText:self->_subtitle];
    [(PKDashboardStackedImageCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTertiaryText:(id)text
{
  textCopy = text;
  v5 = self->_tertiaryText;
  v6 = textCopy;
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
    tertiaryText = self->_tertiaryText;
    self->_tertiaryText = v8;

    [(UILabel *)self->_tertiaryLabel setText:self->_tertiaryText];
    [(PKDashboardStackedImageCollectionViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

@end