@interface PKProvisioningProgressView
- (CGSize)_layoutWithBounds:(CGRect)bounds applyLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKProvisioningProgressView)init;
- (void)createViews;
- (void)layoutSubviews;
- (void)setHeaderView:(id)view;
- (void)setPrimaryText:(id)text;
- (void)setShowingCheckmark:(BOOL)checkmark animated:(BOOL)animated;
@end

@implementation PKProvisioningProgressView

- (PKProvisioningProgressView)init
{
  v5.receiver = self;
  v5.super_class = PKProvisioningProgressView;
  v2 = [(PKProvisioningProgressView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKProvisioningProgressView *)v2 createViews];
  }

  return v3;
}

- (void)createViews
{
  PKSetupViewConstantsViewMargin();
  [(PKProvisioningProgressView *)self layoutMargins];
  [(PKProvisioningProgressView *)self setLayoutMargins:?];
  v3 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
  scrollView = self->_scrollView;
  self->_scrollView = v3;

  [(PKProvisioningProgressView *)self addSubview:self->_scrollView];
  v5 = [MEMORY[0x1E69DD168] pkui_plainNonInteractiveTextViewWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  primaryLabel = self->_primaryLabel;
  self->_primaryLabel = v5;

  v7 = *MEMORY[0x1E69DDCE0];
  v8 = *(MEMORY[0x1E69DDCE0] + 8);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  v10 = *(MEMORY[0x1E69DDCE0] + 24);
  [(UITextView *)self->_primaryLabel setTextContainerInset:*MEMORY[0x1E69DDCE0], v8, v9, v10];
  [(UITextView *)self->_primaryLabel setEditable:0];
  [(UITextView *)self->_primaryLabel setSelectable:1];
  [(UITextView *)self->_primaryLabel _setInteractiveTextSelectionDisabled:1];
  [(UITextView *)self->_primaryLabel setContentInset:v7, v8, v9, v10];
  [(UITextView *)self->_primaryLabel setContentInsetAdjustmentBehavior:2];
  textContainer = [(UITextView *)self->_primaryLabel textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [(UITextView *)self->_primaryLabel setTextAlignment:4];
  v12 = self->_primaryLabel;
  v13 = PKOBKHeaderTitleTextColor();
  [(UITextView *)v12 setTextColor:v13];

  v14 = self->_primaryLabel;
  v16 = PKOBKHeaderTitleFont(v15);
  [(UITextView *)v14 setFont:v16];

  textContainer2 = [(UITextView *)self->_primaryLabel textContainer];
  [textContainer2 setMaximumNumberOfLines:0];
  [textContainer2 setLineBreakMode:4];
  [(UIScrollView *)self->_scrollView addSubview:self->_primaryLabel];
  v17 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  secondaryLabel = self->_secondaryLabel;
  self->_secondaryLabel = v17;

  v19 = self->_secondaryLabel;
  v21 = PKOBKHeaderSubtitleFont(v20);
  [(UILabel *)v19 setFont:v21];

  v22 = [(UILabel *)self->_secondaryLabel setNumberOfLines:0];
  v23 = self->_secondaryLabel;
  v24 = PKOBKBodyTextColor(v22);
  [(UILabel *)v23 setTextColor:v24];

  [(UILabel *)self->_secondaryLabel setTextAlignment:4];
  [(UIScrollView *)self->_scrollView addSubview:self->_secondaryLabel];
  v25 = [objc_alloc(MEMORY[0x1E69DCE48]) initWithProgressViewStyle:0];
  progressView = self->_progressView;
  self->_progressView = v25;

  [(PKProvisioningProgressView *)self addSubview:self->_progressView];
  v27 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  progressLabel = self->_progressLabel;
  self->_progressLabel = v27;

  v29 = self->_progressLabel;
  v30 = PKOBKBulletSubtitleFont();
  [(UILabel *)v29 setFont:v30];

  [(UILabel *)self->_progressLabel setNumberOfLines:1];
  v31 = [(UILabel *)self->_progressLabel setTextAlignment:1];
  v32 = self->_progressLabel;
  v33 = PKOBKBodyTextColor(v31);
  [(UILabel *)v32 setTextColor:v33];

  [(PKProvisioningProgressView *)self addSubview:self->_progressLabel];
  v34 = objc_alloc_init(PKCheckmarkView);
  checkmarkView = self->_checkmarkView;
  self->_checkmarkView = v34;

  [(UIScrollView *)self->_scrollView addSubview:self->_checkmarkView];
}

- (void)setHeaderView:(id)view
{
  viewCopy = view;
  headerView = self->_headerView;
  v7 = viewCopy;
  if (headerView != viewCopy)
  {
    [(UIView *)headerView removeFromSuperview];
    objc_storeStrong(&self->_headerView, view);
    if (self->_headerView)
    {
      [(UIScrollView *)self->_scrollView addSubview:?];
      [(PKProvisioningProgressView *)self setNeedsLayout];
    }
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  v5 = [textCopy length];
  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy];

  defaultParagraphStyle = [MEMORY[0x1E69DB7D0] defaultParagraphStyle];
  v7 = [defaultParagraphStyle mutableCopy];

  [v7 setLineBreakMode:0];
  v8 = PKOBKHeaderTitleFont([v7 setAlignment:1]);
  [v11 addAttribute:*MEMORY[0x1E69DB648] value:v8 range:{0, v5}];
  [v11 addAttribute:*MEMORY[0x1E69DB688] value:v7 range:{0, v5}];
  v9 = *MEMORY[0x1E69DB650];
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [v11 addAttribute:v9 value:labelColor range:{0, v5}];

  [(UITextView *)self->_primaryLabel setAttributedText:v11];
}

- (void)setShowingCheckmark:(BOOL)checkmark animated:(BOOL)animated
{
  if (self->_showingCheckmark != checkmark)
  {
    self->_showingCheckmark = checkmark;
    [PKCheckmarkView showCheckmark:"showCheckmark:animated:" animated:?];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKProvisioningProgressView;
  [(PKProvisioningProgressView *)&v3 layoutSubviews];
  [(PKProvisioningProgressView *)self bounds];
  [(PKProvisioningProgressView *)self _layoutWithBounds:1 applyLayout:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKProvisioningProgressView *)self _layoutWithBounds:0 applyLayout:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds applyLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PKProvisioningProgressView *)self layoutMargins];
  v11 = v10;
  v13 = width - (v10 + v12);
  [(UIProgressView *)self->_progressView frame];
  v15 = v14;
  [(UILabel *)self->_progressLabel sizeThatFits:v13];
  v17 = v16;
  v74.origin.x = x;
  v74.origin.y = y;
  v74.size.width = width;
  v74.size.height = height;
  v71 = CGRectGetMaxY(v74) - v17 - v15 + -50.0 + -13.0 + -10.0;
  if (layoutCopy)
  {
    [(UIScrollView *)self->_scrollView frame];
    v78.origin.x = v18;
    v78.origin.y = v19;
    v78.size.width = v20;
    v78.size.height = v21;
    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    if (!CGRectEqualToRect(v75, v78))
    {
      [(UIScrollView *)self->_scrollView setFrame:x, y, width, v71];
    }
  }

  headerView = self->_headerView;
  v72 = 0.0;
  if (headerView)
  {
    [(UIView *)headerView sizeThatFits:width, 1.79769313e308];
    PKSizeRoundToPixel(v23, v24);
    v72 = v25 + 25.0;
    if (layoutCopy)
    {
      [(UIView *)self->_headerView setFrame:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), width, v25];
    }
  }

  v26 = x + v11;
  [(UITextView *)self->_primaryLabel sizeThatFits:v13 + -20.0, 1.79769313e308];
  v29 = v28;
  if (layoutCopy)
  {
    [(UITextView *)self->_primaryLabel setFrame:v26, v72, v27, v28];
  }

  v68 = v29;
  v30 = _UISolariumFeatureFlagEnabled();
  v31 = 8.0;
  if (v30)
  {
    v31 = 0.0;
  }

  v69 = v31;
  checkmarkView = self->_checkmarkView;
  v70 = v17;
  if (checkmarkView && layoutCopy)
  {
    [(PKCheckmarkView *)checkmarkView sizeThatFits:width, height];
    layoutManager = [(UITextView *)self->_primaryLabel layoutManager];
    textContainer = [(UITextView *)self->_primaryLabel textContainer];
    [layoutManager ensureLayoutForTextContainer:textContainer];

    primaryLabel = self->_primaryLabel;
    endOfDocument = [(UITextView *)primaryLabel endOfDocument];
    v37 = [(UITextView *)primaryLabel positionFromPosition:endOfDocument offset:-1];

    v38 = self->_primaryLabel;
    endOfDocument2 = [(UITextView *)v38 endOfDocument];
    v40 = [(UITextView *)v38 textRangeFromPosition:v37 toPosition:endOfDocument2];

    [(UITextView *)self->_primaryLabel firstRectForRange:v40];
    [(PKProvisioningProgressView *)self convertRect:self->_primaryLabel fromView:?];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    _shouldReverseLayoutDirection = [(PKProvisioningProgressView *)self _shouldReverseLayoutDirection];
    v50 = v42;
    v51 = v44;
    v52 = v46;
    v53 = v48;
    if (_shouldReverseLayoutDirection)
    {
      CGRectGetMinX(*&v50);
    }

    else
    {
      CGRectGetMaxX(*&v50);
    }

    UIRectCenteredYInRect();
    [(PKCheckmarkView *)self->_checkmarkView setFrame:?];

    v17 = v70;
  }

  [(UILabel *)self->_secondaryLabel sizeThatFits:v13, 1.79769313e308];
  if (layoutCopy)
  {
    v56 = v55.n128_f64[0];
    [(UILabel *)self->_secondaryLabel setFrame:v26, v72 + v68 + v69, v13, v55.n128_f64[0]];
    v76.origin.x = v26;
    v76.origin.y = v72 + v68 + v69;
    v17 = v70;
    v76.size.width = v13;
    v76.size.height = v56;
    [(UIScrollView *)self->_scrollView setContentSize:width, CGRectGetMaxY(v76)];
  }

  v55.n128_f64[0] = v71;
  v54.n128_f64[0] = v13 * 0.65;
  PKFloatRoundToPixel(v54, v55);
  UIRectCenteredXInRect();
  v61 = v57;
  v62 = v58;
  v63 = v59;
  v64 = v60;
  if (layoutCopy)
  {
    [(UIProgressView *)self->_progressView setFrame:v57, v58, v59, v60];
    v77.origin.x = v61;
    v77.origin.y = v62;
    v77.size.width = v63;
    v77.size.height = v64;
    v65 = CGRectGetMaxY(v77) + 13.0;
    [(UILabel *)self->_progressLabel setFrame:v26, v65, v13, v17];
  }

  else
  {
    v65 = CGRectGetMaxY(*&v57) + 13.0;
  }

  v66 = v17 + v65;
  v67 = width;
  result.height = v66;
  result.width = v67;
  return result;
}

@end