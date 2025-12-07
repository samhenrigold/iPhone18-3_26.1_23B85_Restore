@interface PKSoftwareUpdateTableView
- (PKSoftwareUpdateTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (id)_messageAttributedStringWithTextColor:(id)color;
- (void)layoutSubviews;
- (void)setContext:(int64_t)context;
- (void)setLinkColor:(id)color;
- (void)setTextColor:(id)color;
@end

@implementation PKSoftwareUpdateTableView

- (PKSoftwareUpdateTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  v26.receiver = self;
  v26.super_class = PKSoftwareUpdateTableView;
  v4 = [(PKSoftwareUpdateTableView *)&v26 initWithFrame:style style:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v4)
  {
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    textColor = v4->_textColor;
    v4->_textColor = grayColor;

    linkColor = v4->_linkColor;
    v4->_linkColor = 0;

    v8 = objc_alloc_init(MEMORY[0x1E69DCEF8]);
    scrollView = v4->_scrollView;
    v4->_scrollView = v8;

    [(PKSoftwareUpdateTableView *)v4 addSubview:v4->_scrollView];
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v10;

    [(UILabel *)v4->_titleLabel setTextAlignment:1];
    v12 = v4->_titleLabel;
    v13 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(UILabel *)v12 setFont:v13];

    v14 = v4->_titleLabel;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)v14 setBackgroundColor:clearColor];

    [(UILabel *)v4->_titleLabel setTextColor:v4->_textColor];
    [(UILabel *)v4->_titleLabel setNumberOfLines:0];
    [(UILabel *)v4->_titleLabel setLineBreakMode:0];
    [(UILabel *)v4->_titleLabel setAdjustsFontForContentSizeCategory:1];
    v16 = PKDeviceSpecificLocalizedStringKeyForKey(@"FAIL_FORWARD_UPDATE_TITLE", 0);
    v17 = v4->_titleLabel;
    v18 = PKLocalizedPaymentString(v16);
    [(UILabel *)v17 setText:v18];

    [(UIScrollView *)v4->_scrollView addSubview:v4->_titleLabel];
    v19 = objc_alloc_init(MEMORY[0x1E69DD168]);
    messageView = v4->_messageView;
    v4->_messageView = v19;

    v21 = v4->_messageView;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UITextView *)v21 setBackgroundColor:clearColor2];

    [(UITextView *)v4->_messageView setEditable:0];
    [(UITextView *)v4->_messageView _setInteractiveTextSelectionDisabled:1];
    [(UITextView *)v4->_messageView setAdjustsFontForContentSizeCategory:1];
    [(UITextView *)v4->_messageView setDataDetectorTypes:2];
    [(UITextView *)v4->_messageView setScrollingEnabled:0];
    v23 = v4->_messageView;
    v24 = [(PKSoftwareUpdateTableView *)v4 _messageAttributedStringWithTextColor:v4->_textColor];
    [(UITextView *)v23 setAttributedText:v24];

    [(UIScrollView *)v4->_scrollView addSubview:v4->_messageView];
    [(PKSoftwareUpdateTableView *)v4 setContext:0];
  }

  return v4;
}

- (void)setContext:(int64_t)context
{
  self->_context = context;
  IsBridge = PKPaymentSetupContextIsBridge();
  v7 = PKDeviceSpecificLocalizedStringKeyForKey(@"FAIL_FORWARD_UPDATE_TITLE", IsBridge);
  titleLabel = self->_titleLabel;
  v6 = PKLocalizedPaymentString(v7);
  [(UILabel *)titleLabel setText:v6];

  [(PKSoftwareUpdateTableView *)self setNeedsLayout];
}

- (void)setTextColor:(id)color
{
  colorCopy = color;
  if (self->_textColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_textColor, color);
    [(UILabel *)self->_titleLabel setTextColor:v8];
    messageView = self->_messageView;
    v7 = [(PKSoftwareUpdateTableView *)self _messageAttributedStringWithTextColor:v8];
    [(UITextView *)messageView setAttributedText:v7];

    colorCopy = v8;
  }
}

- (void)setLinkColor:(id)color
{
  v9[1] = *MEMORY[0x1E69E9840];
  colorCopy = color;
  if (self->_linkColor != colorCopy)
  {
    objc_storeStrong(&self->_linkColor, color);
    messageView = self->_messageView;
    if (colorCopy)
    {
      v8 = *MEMORY[0x1E69DB650];
      v9[0] = colorCopy;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [(UITextView *)messageView setLinkTextAttributes:v7];
    }

    else
    {
      [(UITextView *)messageView setLinkTextAttributes:0];
    }
  }
}

- (void)layoutSubviews
{
  v53.receiver = self;
  v53.super_class = PKSoftwareUpdateTableView;
  [(PKSoftwareUpdateTableView *)&v53 layoutSubviews];
  safeAreaLayoutGuide = [(PKSoftwareUpdateTableView *)self safeAreaLayoutGuide];
  [safeAreaLayoutGuide layoutFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  font = [(UILabel *)self->_titleLabel font];
  [(PKSoftwareUpdateTableView *)self directionalLayoutMargins];
  v14 = v13;
  [(PKSoftwareUpdateTableView *)self directionalLayoutMargins];
  v16 = v14 + v15;
  [(UIScrollView *)self->_scrollView setFrame:v5, v7, v9, v11];
  titleLabel = self->_titleLabel;
  [(PKSoftwareUpdateTableView *)self bounds];
  v19.n128_u64[0] = 5.0;
  v20.n128_f64[0] = v18 * 3.0 / 5.0;
  PKFloatRoundToPixel(v20, v19);
  [(UILabel *)titleLabel pkui_sizeThatFits:1 forceWordWrap:?];
  v22 = v21;
  v24 = v23;
  [font _bodyLeading];
  v27 = v9 - v16;
  if (v24 > v25.n128_f64[0] + v25.n128_f64[0])
  {
    [(UILabel *)self->_titleLabel pkui_sizeThatFits:1 forceWordWrap:v9 - v16, 1.79769313e308];
    v22 = v25.n128_f64[0];
    v24 = v26.n128_f64[0];
  }

  v28 = self->_titleLabel;
  v25.n128_f64[0] = (v9 - v22) * 0.5;
  PKFloatRoundToPixel(v25, v26);
  v30 = v29;
  [font ascender];
  v31.n128_u64[0] = 0x4057600000000000;
  v33.n128_f64[0] = 93.5 - v32;
  PKFloatRoundToPixel(v33, v31);
  [(UILabel *)v28 setFrame:v30, v34, v22, v24];
  [(UITextView *)self->_messageView sizeThatFits:v27, 1.79769313e308];
  v36 = v35;
  v38 = v37.n128_f64[0];
  messageView = self->_messageView;
  v40.n128_f64[0] = (v9 - v35) * 0.5;
  PKFloatRoundToPixel(v40, v37);
  v42 = v41;
  [(UILabel *)self->_titleLabel frame];
  MaxY = CGRectGetMaxY(v54);
  [font descender];
  v45 = MaxY - v44;
  [font _bodyLeading];
  v47 = v45 + v46;
  [font ascender];
  v49.n128_f64[0] = v47 - v48;
  PKFloatRoundToPixel(v49, v50);
  [(UITextView *)messageView setFrame:v42, v51, v36, v38];
  scrollView = self->_scrollView;
  [(UITextView *)self->_messageView frame];
  [(UIScrollView *)scrollView setContentSize:v9, CGRectGetMaxY(v55)];
}

- (id)_messageAttributedStringWithTextColor:(id)color
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E69DB7D0];
  colorCopy = color;
  defaultParagraphStyle = [v3 defaultParagraphStyle];
  v6 = [defaultParagraphStyle mutableCopy];

  [v6 setAlignment:1];
  v14[0] = *MEMORY[0x1E69DB648];
  v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v8 = *MEMORY[0x1E69DB650];
  v15[0] = v7;
  v15[1] = colorCopy;
  v9 = *MEMORY[0x1E69DB688];
  v14[1] = v8;
  v14[2] = v9;
  v15[2] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

  v11 = PKLocalizedPaymentString(&cfstr_FailForwardUpd_0.isa);
  v12 = PKAttributedStringByParsingLinksInString();

  return v12;
}

@end