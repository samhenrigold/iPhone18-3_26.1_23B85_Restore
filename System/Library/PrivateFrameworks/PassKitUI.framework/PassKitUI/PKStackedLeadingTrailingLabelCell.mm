@interface PKStackedLeadingTrailingLabelCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_layoutLabelsSideBySide:(CGRect)side allocated:(CGRect *)allocated unallocated:(CGRect *)unallocated isTemplateLayout:(BOOL)layout;
- (double)_layoutLabelsStacked:(CGRect)stacked allocated:(CGRect *)allocated unallocated:(CGRect *)unallocated isTemplateLayout:(BOOL)layout;
- (void)_updateProgressBar;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setDetailText:(id)text;
- (void)setLeadingPrimaryText:(id)text;
- (void)setLeadingSecondaryText:(id)text;
- (void)setProgress:(double)progress;
- (void)setProgressBarEndColor:(id)color;
- (void)setProgressBarStartColor:(id)color;
- (void)setShowProgressBar:(BOOL)bar;
- (void)setTrailingPrimaryText:(id)text;
- (void)setTrailingSecondaryText:(id)text;
@end

@implementation PKStackedLeadingTrailingLabelCell

- (void)setLeadingPrimaryText:(id)text
{
  textCopy = text;
  leadingPrimaryText = self->_leadingPrimaryText;
  v20 = textCopy;
  v7 = leadingPrimaryText;
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
    objc_storeStrong(&self->_leadingPrimaryText, text);
    v10 = [(NSString *)self->_leadingPrimaryText length];
    leadingPrimaryLabel = self->_leadingPrimaryLabel;
    if (v10)
    {
      if (!leadingPrimaryLabel)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_leadingPrimaryLabel;
        self->_leadingPrimaryLabel = v13;

        v15 = self->_leadingPrimaryLabel;
        v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38], 0x8000, 0);
        [(UILabel *)v15 setFont:v16];

        [(UILabel *)self->_leadingPrimaryLabel setNumberOfLines:0];
        v17 = self->_leadingPrimaryLabel;
        if ([(PKStackedLeadingTrailingLabelCell *)self _shouldReverseLayoutDirection])
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        [(UILabel *)v17 setTextAlignment:v18];
        [(PKStackedLeadingTrailingLabelCell *)self addSubview:self->_leadingPrimaryLabel];
      }
    }

    else
    {
      [(UILabel *)leadingPrimaryLabel removeFromSuperview];
      v19 = self->_leadingPrimaryLabel;
      self->_leadingPrimaryLabel = 0;
    }

    [(UILabel *)self->_leadingPrimaryLabel setText:self->_leadingPrimaryText];
    [(UILabel *)self->_leadingPrimaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setLeadingSecondaryText:(id)text
{
  textCopy = text;
  leadingSecondaryText = self->_leadingSecondaryText;
  v20 = textCopy;
  v7 = leadingSecondaryText;
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
    objc_storeStrong(&self->_leadingSecondaryText, text);
    v10 = [(NSString *)self->_leadingSecondaryText length];
    leadingSecondaryLabel = self->_leadingSecondaryLabel;
    if (v10)
    {
      if (!leadingSecondaryLabel)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_leadingSecondaryLabel;
        self->_leadingSecondaryLabel = v13;

        v15 = self->_leadingSecondaryLabel;
        v16 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC38], 32770, 0, *MEMORY[0x1E69DB958]);
        [(UILabel *)v15 setFont:v16];

        [(UILabel *)self->_leadingSecondaryLabel setNumberOfLines:0];
        v17 = self->_leadingSecondaryLabel;
        if ([(PKStackedLeadingTrailingLabelCell *)self _shouldReverseLayoutDirection])
        {
          v18 = 2;
        }

        else
        {
          v18 = 0;
        }

        [(UILabel *)v17 setTextAlignment:v18];
        [(PKStackedLeadingTrailingLabelCell *)self addSubview:self->_leadingSecondaryLabel];
      }
    }

    else
    {
      [(UILabel *)leadingSecondaryLabel removeFromSuperview];
      v19 = self->_leadingSecondaryLabel;
      self->_leadingSecondaryLabel = 0;
    }

    [(UILabel *)self->_leadingSecondaryLabel setText:self->_leadingSecondaryText];
    [(UILabel *)self->_leadingSecondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setTrailingPrimaryText:(id)text
{
  textCopy = text;
  trailingPrimaryText = self->_trailingPrimaryText;
  v20 = textCopy;
  v7 = trailingPrimaryText;
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
    objc_storeStrong(&self->_trailingPrimaryText, text);
    v10 = [(NSString *)self->_trailingPrimaryText length];
    trailingPrimaryLabel = self->_trailingPrimaryLabel;
    if (v10)
    {
      if (!trailingPrimaryLabel)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_trailingPrimaryLabel;
        self->_trailingPrimaryLabel = v13;

        v15 = self->_trailingPrimaryLabel;
        v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38], 0x8000, 0);
        [(UILabel *)v15 setFont:v16];

        [(UILabel *)self->_trailingPrimaryLabel setNumberOfLines:0];
        v17 = self->_trailingPrimaryLabel;
        if ([(PKStackedLeadingTrailingLabelCell *)self _shouldReverseLayoutDirection])
        {
          v18 = 0;
        }

        else
        {
          v18 = 2;
        }

        [(UILabel *)v17 setTextAlignment:v18];
        [(PKStackedLeadingTrailingLabelCell *)self addSubview:self->_trailingPrimaryLabel];
      }
    }

    else
    {
      [(UILabel *)trailingPrimaryLabel removeFromSuperview];
      v19 = self->_trailingPrimaryLabel;
      self->_trailingPrimaryLabel = 0;
    }

    [(UILabel *)self->_trailingPrimaryLabel setText:self->_trailingPrimaryText];
    [(UILabel *)self->_trailingPrimaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9BF0]];
    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setTrailingSecondaryText:(id)text
{
  textCopy = text;
  trailingSecondaryText = self->_trailingSecondaryText;
  v20 = textCopy;
  v7 = trailingSecondaryText;
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
    objc_storeStrong(&self->_trailingSecondaryText, text);
    v10 = [(NSString *)self->_trailingSecondaryText length];
    trailingSecondaryLabel = self->_trailingSecondaryLabel;
    if (v10)
    {
      if (!trailingSecondaryLabel)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_trailingSecondaryLabel;
        self->_trailingSecondaryLabel = v13;

        v15 = self->_trailingSecondaryLabel;
        v16 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], *MEMORY[0x1E69DDC38], 32770, 0, *MEMORY[0x1E69DB958]);
        [(UILabel *)v15 setFont:v16];

        [(UILabel *)self->_trailingSecondaryLabel setNumberOfLines:0];
        v17 = self->_trailingSecondaryLabel;
        if ([(PKStackedLeadingTrailingLabelCell *)self _shouldReverseLayoutDirection])
        {
          v18 = 0;
        }

        else
        {
          v18 = 2;
        }

        [(UILabel *)v17 setTextAlignment:v18];
        [(PKStackedLeadingTrailingLabelCell *)self addSubview:self->_trailingSecondaryLabel];
      }
    }

    else
    {
      [(UILabel *)trailingSecondaryLabel removeFromSuperview];
      v19 = self->_trailingSecondaryLabel;
      self->_trailingSecondaryLabel = 0;
    }

    [(UILabel *)self->_trailingSecondaryLabel setText:self->_trailingSecondaryText];
    [(UILabel *)self->_trailingSecondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9BE8]];
    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setDetailText:(id)text
{
  textCopy = text;
  detailText = self->_detailText;
  v22 = textCopy;
  v7 = detailText;
  if (v7 == v22)
  {

LABEL_16:
    v9 = v22;
    goto LABEL_17;
  }

  if (!v22 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v22 isEqualToString:v7];

  v9 = v22;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_detailText, text);
    v10 = [(NSString *)self->_detailText length];
    detailLabel = self->_detailLabel;
    if (v10)
    {
      if (!detailLabel)
      {
        v12 = objc_alloc(MEMORY[0x1E69DCC10]);
        v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
        v14 = self->_detailLabel;
        self->_detailLabel = v13;

        v15 = self->_detailLabel;
        v16 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], *MEMORY[0x1E69DDC38], 0x8000, 0);
        [(UILabel *)v15 setFont:v16];

        v17 = self->_detailLabel;
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [(UILabel *)v17 setTextColor:secondaryLabelColor];

        [(UILabel *)self->_detailLabel setNumberOfLines:0];
        v19 = self->_detailLabel;
        if ([(PKStackedLeadingTrailingLabelCell *)self _shouldReverseLayoutDirection])
        {
          v20 = 2;
        }

        else
        {
          v20 = 0;
        }

        [(UILabel *)v19 setTextAlignment:v20];
        [(PKStackedLeadingTrailingLabelCell *)self addSubview:self->_detailLabel];
      }
    }

    else
    {
      [(UILabel *)detailLabel removeFromSuperview];
      v21 = self->_detailLabel;
      self->_detailLabel = 0;
    }

    [(UILabel *)self->_detailLabel setText:self->_detailText];
    [(UILabel *)self->_detailLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
    goto LABEL_16;
  }

LABEL_17:
}

- (void)setShowProgressBar:(BOOL)bar
{
  if (self->_showProgressBar != bar)
  {
    self->_showProgressBar = bar;
    [(PKStackedLeadingTrailingLabelCell *)self _updateProgressBar];

    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
  }
}

- (void)setProgress:(double)progress
{
  if (self->_progress != progress)
  {
    self->_progress = progress;
    [(PKStackedLeadingTrailingLabelCell *)self _updateProgressBar];

    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
  }
}

- (void)setProgressBarStartColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_progressBarStartColor, color);
    [(PKStackedLeadingTrailingLabelCell *)self _updateProgressBar];
    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
  }
}

- (void)setProgressBarEndColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_progressBarEndColor, color);
    [(PKStackedLeadingTrailingLabelCell *)self _updateProgressBar];
    [(PKStackedLeadingTrailingLabelCell *)self setNeedsLayout];
  }
}

- (void)_updateProgressBar
{
  showProgressBar = self->_showProgressBar;
  progressBar = self->_progressBar;
  if (showProgressBar)
  {
    if (!progressBar)
    {
      v5 = objc_alloc_init(PKProgressBar);
      v6 = self->_progressBar;
      self->_progressBar = v5;

      [(PKStackedLeadingTrailingLabelCell *)self addSubview:self->_progressBar];
      progressBar = self->_progressBar;
    }

    [(PKProgressBar *)progressBar setProgress:self->_progress];
    [(PKProgressBar *)self->_progressBar setCornerRadius:4.0];
    [(PKProgressBar *)self->_progressBar setGradientStartColor:self->_progressBarStartColor];
    v7 = self->_progressBar;
    progressBarEndColor = self->_progressBarEndColor;

    [(PKProgressBar *)v7 setGradientEndColor:progressBarEndColor];
  }

  else
  {
    [(PKProgressBar *)progressBar removeFromSuperview];
    v9 = self->_progressBar;
    self->_progressBar = 0;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKStackedLeadingTrailingLabelCell;
  [(PKStackedLeadingTrailingLabelCell *)&v4 layoutSubviews];
  contentView = [(PKStackedLeadingTrailingLabelCell *)self contentView];
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
  layoutCopy = layout;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = PKTableViewCellTextInset();
  v11 = x + v10;
  v12 = y + 15.0;
  v65 = width;
  v13 = width - (v10 + PKTableViewCellTextInset());
  v14 = height + -30.0;
  [(PKStackedLeadingTrailingLabelCell *)self _shouldReverseLayoutDirection];
  v15 = MEMORY[0x1E695F058];
  v16 = *(MEMORY[0x1E695F058] + 16);
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v16;
  remainder.origin.x = v11;
  remainder.origin.y = v12;
  remainder.size.width = v13;
  remainder.size.height = height + -30.0;
  [(UILabel *)self->_leadingPrimaryLabel sizeThatFits:v13, 3.40282347e38];
  v18 = v17;
  [(UILabel *)self->_trailingPrimaryLabel sizeThatFits:v13, 3.40282347e38];
  v20 = v19;
  [(UILabel *)self->_leadingSecondaryLabel sizeThatFits:v13, 3.40282347e38];
  v22 = v21;
  [(UILabel *)self->_trailingSecondaryLabel sizeThatFits:v13, 3.40282347e38];
  v24 = v22 + v23;
  if (v18 + v20 <= v13 && v24 <= v13)
  {
    [(PKStackedLeadingTrailingLabelCell *)self _layoutLabelsSideBySide:&slice allocated:&remainder unallocated:layoutCopy isTemplateLayout:v11, v12, v13, v14];
  }

  else
  {
    [(PKStackedLeadingTrailingLabelCell *)self _layoutLabelsStacked:&slice allocated:&remainder unallocated:layoutCopy isTemplateLayout:v11, v12, v13, v14];
  }

  v27 = v26 + 0.0;
  if (self->_showProgressBar)
  {
    if (self->_leadingPrimaryText || self->_leadingSecondaryText || self->_trailingPrimaryText || self->_trailingSecondaryText)
    {
      CGRectDivide(remainder, &slice, &remainder, 12.0, CGRectMinYEdge);
      v27 = v27 + 12.0;
    }

    v27 = v27 + 20.0;
    CGRectDivide(remainder, &slice, &remainder, 20.0, CGRectMinYEdge);
    v28.n128_u64[0] = *&slice.origin.x;
    v29.n128_u64[0] = *&slice.origin.y;
    v30.n128_u64[0] = *&slice.size.width;
    v31.n128_u64[0] = *&slice.size.height;
    v32.n128_u64[0] = 20.0;
    v33.n128_f64[0] = v13;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v33, v32, v28, v29, v30, v31, v34);
    v63 = v36;
    v64 = v35;
    v38 = v37;
    v40 = v39;
  }

  else
  {
    v63 = v15[1];
    v64 = *v15;
    v38 = v15[2];
    v40 = v15[3];
  }

  [(UILabel *)self->_detailLabel sizeThatFits:v13, 3.40282347e38];
  v42 = *&v41;
  v44 = v43;
  if (v41 > 0.0 && self->_showProgressBar)
  {
    CGRectDivide(remainder, &slice, &remainder, 12.0, CGRectMinYEdge);
    v27 = v27 + 12.0;
  }

  CGRectDivide(remainder, &slice, &remainder, v44, CGRectMinYEdge);
  v45 = PKContentAlignmentMake();
  v46.n128_u64[0] = *&slice.origin.x;
  v47.n128_u64[0] = *&slice.origin.y;
  v48.n128_u64[0] = *&slice.size.width;
  v49.n128_u64[0] = *&slice.size.height;
  v50.n128_u64[0] = v42;
  v51.n128_f64[0] = v44;
  PKSizeAlignedInRect(v45, v50, v51, v46, v47, v48, v49, v52);
  if (!layoutCopy)
  {
    v57 = v53;
    v58 = v54;
    v59 = v55;
    v60 = v56;
    [(PKProgressBar *)self->_progressBar setFrame:v64, v63, v38, v40];
    [(UILabel *)self->_detailLabel setFrame:v57, v58, v59, v60];
  }

  v61 = v44 + v27 + 15.0 + 15.0;
  v62 = v65;
  result.height = v61;
  result.width = v62;
  return result;
}

- (double)_layoutLabelsSideBySide:(CGRect)side allocated:(CGRect *)allocated unallocated:(CGRect *)unallocated isTemplateLayout:(BOOL)layout
{
  height = side.size.height;
  width = side.size.width;
  y = side.origin.y;
  x = side.origin.x;
  if ([(PKStackedLeadingTrailingLabelCell *)self _shouldReverseLayoutDirection])
  {
    v15 = CGRectMinXEdge;
  }

  else
  {
    v15 = CGRectMaxXEdge;
  }

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = width;
  remainder.size.height = height;
  [(UILabel *)self->_leadingPrimaryLabel sizeThatFits:width, 3.40282347e38];
  v17 = v16;
  v19 = v18;
  [(UILabel *)self->_trailingPrimaryLabel sizeThatFits:width, 3.40282347e38];
  v21 = v20;
  v23 = fmax(v19, v22);
  v95.origin.x = x;
  v95.origin.y = y;
  v95.size.width = width;
  v95.size.height = height;
  CGRectDivide(v95, &slice, &remainder, v23, CGRectMinYEdge);
  memset(&v92, 0, sizeof(v92));
  CGRectDivide(slice, &v92, &slice, v21, v15);
  v24 = PKContentAlignmentMake();
  v25.n128_u64[0] = *&v92.origin.x;
  v26.n128_u64[0] = *&v92.origin.y;
  v27.n128_u64[0] = *&v92.size.width;
  v28.n128_u64[0] = *&v92.size.height;
  v29.n128_f64[0] = v21;
  v30.n128_f64[0] = v23;
  PKSizeAlignedInRect(v24, v29, v30, v25, v26, v27, v28, v31);
  v92.origin.x = v32;
  v92.origin.y = v33;
  v92.size.width = v34;
  v92.size.height = v35;
  v36 = PKContentAlignmentMake();
  v37.n128_u64[0] = *&slice.origin.x;
  v38.n128_u64[0] = *&slice.origin.y;
  v39.n128_u64[0] = *&slice.size.width;
  v40.n128_u64[0] = *&slice.size.height;
  v41.n128_u64[0] = v17;
  v42.n128_f64[0] = v23;
  PKSizeAlignedInRect(v36, v41, v42, v37, v38, v39, v40, v43);
  v89 = v45;
  v90 = v44;
  v47 = v46;
  v49 = v48;
  [(UILabel *)self->_leadingSecondaryLabel sizeThatFits:width, 3.40282347e38];
  v51 = v50;
  v53 = v52;
  [(UILabel *)self->_trailingSecondaryLabel sizeThatFits:width, 3.40282347e38];
  v55 = v54;
  v57 = fmax(v53, v56);
  CGRectDivide(remainder, &slice, &remainder, v57, CGRectMinYEdge);
  memset(&v91, 0, sizeof(v91));
  CGRectDivide(slice, &v91, &slice, v55, v15);
  v58 = PKContentAlignmentMake();
  v59.n128_u64[0] = *&v91.origin.x;
  v60.n128_u64[0] = *&v91.origin.y;
  v61.n128_u64[0] = *&v91.size.width;
  v62.n128_u64[0] = *&v91.size.height;
  v63.n128_f64[0] = v55;
  v64.n128_f64[0] = v57;
  PKSizeAlignedInRect(v58, v63, v64, v59, v60, v61, v62, v65);
  v91.origin.x = v66;
  v91.origin.y = v67;
  v91.size.width = v68;
  v91.size.height = v69;
  v70 = PKContentAlignmentMake();
  v71.n128_u64[0] = *&slice.origin.x;
  v72.n128_u64[0] = *&slice.origin.y;
  v73.n128_u64[0] = *&slice.size.width;
  v74.n128_u64[0] = *&slice.size.height;
  v75.n128_u64[0] = v51;
  v76.n128_f64[0] = v57;
  PKSizeAlignedInRect(v70, v75, v76, v71, v72, v73, v74, v77);
  if (!layout)
  {
    v82 = v78;
    v83 = v79;
    v84 = v80;
    v85 = v81;
    [(UILabel *)self->_leadingPrimaryLabel setFrame:v90, v89, v47, v49];
    [(UILabel *)self->_trailingPrimaryLabel setFrame:v92.origin.x, v92.origin.y, v92.size.width, v92.size.height];
    [(UILabel *)self->_leadingSecondaryLabel setFrame:v82, v83, v84, v85];
    [(UILabel *)self->_trailingSecondaryLabel setFrame:v91.origin.x, v91.origin.y, v91.size.width, v91.size.height];
  }

  if (allocated)
  {
    size = slice.size;
    allocated->origin = slice.origin;
    allocated->size = size;
  }

  if (unallocated)
  {
    v87 = remainder.size;
    unallocated->origin = remainder.origin;
    unallocated->size = v87;
  }

  return v23 + 0.0 + v57;
}

- (double)_layoutLabelsStacked:(CGRect)stacked allocated:(CGRect *)allocated unallocated:(CGRect *)unallocated isTemplateLayout:(BOOL)layout
{
  height = stacked.size.height;
  width = stacked.size.width;
  y = stacked.origin.y;
  x = stacked.origin.x;
  [(PKStackedLeadingTrailingLabelCell *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = width;
  remainder.size.height = height;
  [(UILabel *)self->_leadingPrimaryLabel sizeThatFits:width, 3.40282347e38];
  v15 = v14;
  v17 = v16;
  v99.origin.x = x;
  v99.origin.y = y;
  v99.size.width = width;
  v99.size.height = height;
  CGRectDivide(v99, &slice, &remainder, v17, CGRectMinYEdge);
  v18 = PKContentAlignmentMake();
  v19.n128_u64[0] = *&slice.origin.x;
  v20.n128_u64[0] = *&slice.origin.y;
  v21.n128_u64[0] = *&slice.size.width;
  v22.n128_u64[0] = *&slice.size.height;
  v23.n128_u64[0] = v15;
  v24.n128_f64[0] = v17;
  PKSizeAlignedInRect(v18, v23, v24, v19, v20, v21, v22, v25);
  v94 = v27;
  v95 = v26;
  v93 = v28;
  v96 = v29;
  [(UILabel *)self->_leadingSecondaryLabel sizeThatFits:width, 3.40282347e38];
  v31 = v30;
  v33 = *&v32;
  CGRectDivide(remainder, &slice, &remainder, v32, CGRectMinYEdge);
  v34 = PKContentAlignmentMake();
  v35.n128_u64[0] = *&slice.origin.x;
  v36.n128_u64[0] = *&slice.origin.y;
  v37.n128_u64[0] = *&slice.size.width;
  v38.n128_u64[0] = *&slice.size.height;
  v39.n128_u64[0] = v31;
  v40.n128_u64[0] = v33;
  PKSizeAlignedInRect(v34, v39, v40, v35, v36, v37, v38, v41);
  v91 = v43;
  v92 = v42;
  v90 = v44;
  v46 = v45;
  CGRectDivide(remainder, &slice, &remainder, 10.0, CGRectMinYEdge);
  [(UILabel *)self->_trailingPrimaryLabel sizeThatFits:width, 3.40282347e38];
  v48 = v47;
  v50 = *&v49;
  CGRectDivide(remainder, &slice, &remainder, v49, CGRectMinYEdge);
  v51 = PKContentAlignmentMake();
  v52.n128_u64[0] = *&slice.origin.x;
  v53.n128_u64[0] = *&slice.origin.y;
  v54.n128_u64[0] = *&slice.size.width;
  v55.n128_u64[0] = *&slice.size.height;
  v56.n128_u64[0] = v48;
  v57.n128_u64[0] = v50;
  PKSizeAlignedInRect(v51, v56, v57, v52, v53, v54, v55, v58);
  v89 = v59;
  v61 = v60;
  v63 = v62;
  v65 = v64;
  [(UILabel *)self->_trailingSecondaryLabel sizeThatFits:width, 3.40282347e38];
  v67 = v66;
  v69 = *&v68;
  CGRectDivide(remainder, &slice, &remainder, v68, CGRectMinYEdge);
  v70 = PKContentAlignmentMake();
  v71.n128_u64[0] = *&slice.origin.x;
  v72.n128_u64[0] = *&slice.origin.y;
  v73.n128_u64[0] = *&slice.size.width;
  v74.n128_u64[0] = *&slice.size.height;
  v75.n128_u64[0] = v67;
  v76.n128_u64[0] = v69;
  PKSizeAlignedInRect(v70, v75, v76, v71, v72, v73, v74, v77);
  if (!layout)
  {
    v82 = v78;
    v83 = v79;
    v84 = v80;
    v85 = v81;
    [(UILabel *)self->_leadingPrimaryLabel setFrame:v95, v94, v93, v96];
    [(UILabel *)self->_trailingPrimaryLabel setFrame:v89, v61, v63, v65];
    [(UILabel *)self->_leadingSecondaryLabel setFrame:v92, v91, v90, v46];
    [(UILabel *)self->_trailingSecondaryLabel setFrame:v82, v83, v84, v85];
  }

  if (allocated)
  {
    size = slice.size;
    allocated->origin = slice.origin;
    allocated->size = size;
  }

  if (unallocated)
  {
    v87 = remainder.size;
    unallocated->origin = remainder.origin;
    unallocated->size = v87;
  }

  return v46 + v96 + 0.0 + v46 + 10.0 + v65;
}

- (void)prepareForReuse
{
  v14.receiver = self;
  v14.super_class = PKStackedLeadingTrailingLabelCell;
  [(PKStackedLeadingTrailingLabelCell *)&v14 prepareForReuse];
  [(UILabel *)self->_leadingPrimaryLabel removeFromSuperview];
  leadingPrimaryLabel = self->_leadingPrimaryLabel;
  self->_leadingPrimaryLabel = 0;

  leadingPrimaryText = self->_leadingPrimaryText;
  self->_leadingPrimaryText = 0;

  [(UILabel *)self->_trailingPrimaryLabel removeFromSuperview];
  trailingPrimaryLabel = self->_trailingPrimaryLabel;
  self->_trailingPrimaryLabel = 0;

  trailingPrimaryText = self->_trailingPrimaryText;
  self->_trailingPrimaryText = 0;

  [(UILabel *)self->_leadingSecondaryLabel removeFromSuperview];
  leadingSecondaryLabel = self->_leadingSecondaryLabel;
  self->_leadingSecondaryLabel = 0;

  leadingSecondaryText = self->_leadingSecondaryText;
  self->_leadingSecondaryText = 0;

  [(UILabel *)self->_trailingSecondaryLabel removeFromSuperview];
  trailingSecondaryLabel = self->_trailingSecondaryLabel;
  self->_trailingSecondaryLabel = 0;

  trailingSecondaryText = self->_trailingSecondaryText;
  self->_trailingSecondaryText = 0;

  [(UILabel *)self->_detailLabel removeFromSuperview];
  detailLabel = self->_detailLabel;
  self->_detailLabel = 0;

  detailText = self->_detailText;
  self->_detailText = 0;

  [(PKProgressBar *)self->_progressBar removeFromSuperview];
  progressBar = self->_progressBar;
  self->_progressBar = 0;

  self->_progress = 0.0;
  self->_showProgressBar = 0;
}

@end