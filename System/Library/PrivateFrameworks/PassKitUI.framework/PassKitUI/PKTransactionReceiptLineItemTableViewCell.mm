@interface PKTransactionReceiptLineItemTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKTransactionReceiptLineItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAmountText:(id)text;
- (void)setHasTrailingLineSeparator:(BOOL)separator;
- (void)setImage:(id)image;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)setSeparatorStyle:(int64_t)style;
- (void)setSuppressImage:(BOOL)image;
- (void)setTertiaryText:(id)text;
@end

@implementation PKTransactionReceiptLineItemTableViewCell

- (PKTransactionReceiptLineItemTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v43.receiver = self;
  v43.super_class = PKTransactionReceiptLineItemTableViewCell;
  v4 = [(PKTransactionReceiptLineItemTableViewCell *)&v43 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(PKTransactionReceiptLineItemTableViewCell *)v4 contentView];
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [v7 initWithFrame:{*MEMORY[0x1E695F058], v9, v10, v11}];
    imageView = v5->_imageView;
    v5->_imageView = v12;

    [(UIImageView *)v5->_imageView setContentMode:1];
    layer = [(UIImageView *)v5->_imageView layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer setCornerRadius:6.0];
    [layer setMasksToBounds:1];
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [layer setBorderColor:{objc_msgSend(tertiaryLabelColor, "CGColor")}];

    [layer setBorderWidth:PKUIPixelLength()];
    [contentView addSubview:v5->_imageView];
    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    amountLabel = v5->_amountLabel;
    v5->_amountLabel = v16;

    v18 = v5->_amountLabel;
    v19 = *MEMORY[0x1E69DDCF8];
    v20 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], 0);
    [(UILabel *)v18 setFont:v20];

    v21 = v5->_amountLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v21 setTextColor:labelColor];

    [(UILabel *)v5->_amountLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9448]];
    [contentView addSubview:v5->_amountLabel];
    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    primaryLabel = v5->_primaryLabel;
    v5->_primaryLabel = v23;

    v25 = v5->_primaryLabel;
    v26 = PKFontForDefaultDesign(v19, 0, 2, 0);
    [(UILabel *)v25 setFont:v26];

    v27 = v5->_primaryLabel;
    labelColor2 = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v27 setTextColor:labelColor2];

    [(UILabel *)v5->_primaryLabel setNumberOfLines:0];
    [(UILabel *)v5->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [contentView addSubview:v5->_primaryLabel];
    v29 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    secondaryLabel = v5->_secondaryLabel;
    v5->_secondaryLabel = v29;

    v31 = v5->_secondaryLabel;
    v32 = *MEMORY[0x1E69DDD80];
    v33 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], 0);
    [(UILabel *)v31 setFont:v33];

    v34 = v5->_secondaryLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v34 setTextColor:secondaryLabelColor];

    [(UILabel *)v5->_secondaryLabel setNumberOfLines:0];
    [(UILabel *)v5->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    [contentView addSubview:v5->_secondaryLabel];
    v36 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    tertiaryLabel = v5->_tertiaryLabel;
    v5->_tertiaryLabel = v36;

    v38 = v5->_tertiaryLabel;
    v39 = PKFontForDefaultDesign(v32, 0);
    [(UILabel *)v38 setFont:v39];

    v40 = v5->_tertiaryLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v40 setTextColor:secondaryLabelColor2];

    [(UILabel *)v5->_tertiaryLabel setNumberOfLines:0];
    [(UILabel *)v5->_tertiaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D10]];
    [contentView addSubview:v5->_tertiaryLabel];
    [(PKTransactionReceiptLineItemTableViewCell *)v5 setAccessibilityIdentifier:*MEMORY[0x1E69B98F0]];
  }

  return v5;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKTransactionReceiptLineItemTableViewCell;
  [(PKTransactionReceiptLineItemTableViewCell *)&v3 prepareForReuse];
  [(PKTransactionReceiptLineItemTableViewCell *)self setImage:0];
  [(PKTransactionReceiptLineItemTableViewCell *)self setPrimaryText:0];
  [(PKTransactionReceiptLineItemTableViewCell *)self setSecondaryText:0];
  [(PKTransactionReceiptLineItemTableViewCell *)self setTertiaryText:0];
  [(PKTransactionReceiptLineItemTableViewCell *)self setAmountText:0];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  [(UITableViewCell *)self pkui_effectiveLayoutMargins:fits.width];
  v6 = v5;
  v8 = v7;
  image = self->_image;
  if (image)
  {
    [(UIImage *)image size];
    PKSizeAspectFit();
    v11 = v10;
    v12 = 61.0;
  }

  else
  {
    v11 = 0.0;
    if (self->_suppressImage)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 61.0;
    }
  }

  if (self->_amountText)
  {
    [(UILabel *)self->_amountLabel pkui_sizeThatFits:width, 1.79769313e308];
    v15 = v14;
    if (v13 > 0.0)
    {
      v13 = v13 + 16.0;
    }
  }

  else
  {
    v13 = *MEMORY[0x1E695F060];
    v15 = *(MEMORY[0x1E695F060] + 8);
  }

  v16 = width - v12 - v13 - v6;
  v17 = v16 - v8;
  if (self->_primaryText)
  {
    [(UILabel *)self->_primaryLabel pkui_sizeThatFits:1 forceWordWrap:v16 - v8, 1.79769313e308];
    v19 = v18 + 0.0 + 2.0;
  }

  else
  {
    v19 = 0.0;
  }

  if (self->_secondaryText)
  {
    [(UILabel *)self->_secondaryLabel pkui_sizeThatFits:1 forceWordWrap:v17, 1.79769313e308];
    v19 = v19 + v20 + 2.0;
  }

  if (self->_tertiaryText)
  {
    [(UILabel *)self->_tertiaryLabel pkui_sizeThatFits:1 forceWordWrap:v17, 1.79769313e308];
    v19 = v19 + v21;
  }

  v22 = 16.0;
  v23 = fmax(v15, fmax(v11, v19)) + 16.0;
  if (!self->_hasTrailingLineSeparator)
  {
    v22 = 0.0;
  }

  v24 = v23 + v22;
  v25 = width;
  result.height = v24;
  result.width = v25;
  return result;
}

- (void)layoutSubviews
{
  v55.receiver = self;
  v55.super_class = PKTransactionReceiptLineItemTableViewCell;
  [(PKTransactionReceiptLineItemTableViewCell *)&v55 layoutSubviews];
  [(UITableViewCell *)self pkui_effectiveLayoutMargins];
  v4 = v3;
  v6 = v5;
  contentView = [(PKTransactionReceiptLineItemTableViewCell *)self contentView];
  [contentView bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v4 + v9;
  v17 = 16.0;
  v18 = v11 + 16.0;
  v19 = v13 - (v4 + v6);
  if (self->_hasTrailingLineSeparator)
  {
    v17 = 32.0;
  }

  v20 = v15 - v17;
  remainder.origin.x = v16;
  remainder.origin.y = v18;
  remainder.size.width = v19;
  remainder.size.height = v15 - v17;
  v21 = [(PKTransactionReceiptLineItemTableViewCell *)self _shouldReverseLayoutDirection:0];
  if (v21)
  {
    v22 = CGRectMaxXEdge;
  }

  else
  {
    v22 = CGRectMinXEdge;
  }

  if (self->_image || !self->_suppressImage)
  {
    v56.origin.x = v16;
    v56.origin.y = v18;
    v56.size.width = v19;
    v56.size.height = v20;
    CGRectDivide(v56, &v53, &remainder, 45.0, v22);
    [(UIImage *)self->_image size];
    imageView = self->_imageView;
    PKSizeAspectFit();
    v25 = v24;
    v27 = v26;
    v28 = PKContentAlignmentMake();
    v30.n128_u64[0] = *&v53.origin.y;
    v29.n128_u64[0] = *&v53.origin.x;
    v32.n128_u64[0] = *&v53.size.height;
    v31.n128_u64[0] = *&v53.size.width;
    v33.n128_u64[0] = v25;
    v34.n128_u64[0] = v27;
    PKSizeAlignedInRect(v28, v33, v34, v29, v30, v31, v32, v35);
    [(UIImageView *)imageView setFrame:?];
    CGRectDivide(remainder, &v53, &remainder, 16.0, v22);
  }

  else
  {
    [(UIImageView *)self->_imageView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  if (v21)
  {
    v36 = CGRectMinXEdge;
  }

  else
  {
    v36 = CGRectMaxXEdge;
  }

  [(UILabel *)self->_amountLabel pkui_sizeThatFits:remainder.size.width, remainder.size.height];
  v38 = *&v37;
  v40 = v39;
  CGRectDivide(remainder, &v53, &remainder, v37, v36);
  amountLabel = self->_amountLabel;
  v42 = PKContentAlignmentMake();
  v44.n128_u64[0] = *&v53.origin.y;
  v43.n128_u64[0] = *&v53.origin.x;
  v46.n128_u64[0] = *&v53.size.height;
  v45.n128_u64[0] = *&v53.size.width;
  v47.n128_u64[0] = v38;
  v48.n128_u64[0] = v40;
  PKSizeAlignedInRect(v42, v47, v48, v43, v44, v45, v46, v49);
  [(UILabel *)amountLabel setFrame:?];
  CGRectDivide(remainder, &v53, &remainder, 16.0, v36);
  [(UILabel *)self->_primaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &v53, &remainder, v50, CGRectMinYEdge);
  [(UILabel *)self->_primaryLabel setFrame:*&v53.origin, *&v53.size];
  CGRectDivide(remainder, &v53, &remainder, 2.0, CGRectMinYEdge);
  [(UILabel *)self->_secondaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &v53, &remainder, v51, CGRectMinYEdge);
  [(UILabel *)self->_secondaryLabel setFrame:*&v53.origin, *&v53.size];
  CGRectDivide(remainder, &v53, &remainder, 2.0, CGRectMinYEdge);
  [(UILabel *)self->_tertiaryLabel pkui_sizeThatFits:1 forceWordWrap:remainder.size.width, remainder.size.height];
  CGRectDivide(remainder, &v53, &remainder, v52, CGRectMinYEdge);
  [(UILabel *)self->_tertiaryLabel setFrame:*&v53.origin, *&v53.size];
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_image, image);
    [(UIImageView *)self->_imageView setImage:self->_image];
    [(PKTransactionReceiptLineItemTableViewCell *)self setNeedsLayout];
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  v5 = self->_primaryText;
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
    primaryText = self->_primaryText;
    self->_primaryText = v8;

    [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    [(PKTransactionReceiptLineItemTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  v5 = self->_secondaryText;
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
    secondaryText = self->_secondaryText;
    self->_secondaryText = v8;

    [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
    [(PKTransactionReceiptLineItemTableViewCell *)self setNeedsLayout];
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
    [(PKTransactionReceiptLineItemTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setAmountText:(id)text
{
  textCopy = text;
  v5 = self->_amountText;
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
    amountText = self->_amountText;
    self->_amountText = v8;

    [(UILabel *)self->_amountLabel setText:self->_amountText];
    [(PKTransactionReceiptLineItemTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setHasTrailingLineSeparator:(BOOL)separator
{
  if (self->_hasTrailingLineSeparator == !separator)
  {
    self->_hasTrailingLineSeparator = separator;
    [(PKTransactionReceiptLineItemTableViewCell *)self setSeparatorStyle:[(PKTransactionReceiptLineItemTableViewCell *)self separatorStyleForTrailingLineSeparator]];

    [(PKTransactionReceiptLineItemTableViewCell *)self setNeedsLayout];
  }
}

- (void)setSeparatorStyle:(int64_t)style
{
  if ([(PKTransactionReceiptLineItemTableViewCell *)self separatorStyleForTrailingLineSeparator]== style)
  {
    v5.receiver = self;
    v5.super_class = PKTransactionReceiptLineItemTableViewCell;
    [(PKTransactionReceiptLineItemTableViewCell *)&v5 setSeparatorStyle:style];
  }
}

- (void)setSuppressImage:(BOOL)image
{
  if (self->_suppressImage == !image)
  {
    self->_suppressImage = image;
    [(PKTransactionReceiptLineItemTableViewCell *)self setNeedsLayout];
  }
}

@end