@interface PKDashboardMessageActionView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardMessageActionView)initWithFrame:(CGRect)frame;
- (void)_commonInit;
- (void)_configureView;
- (void)_updateFonts;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAccessory:(unint64_t)accessory;
- (void)setTitleFont:(id)font;
- (void)setTitleText:(id)text;
- (void)setTitleTextColor:(id)color;
- (void)updateWithMessage:(id)message;
@end

@implementation PKDashboardMessageActionView

- (PKDashboardMessageActionView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKDashboardMessageActionView;
  v3 = [(PKDashboardMessageActionView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardMessageActionView *)v3 _commonInit];
  }

  return v4;
}

- (void)_commonInit
{
  self->_smallDevice = PKUIGetMinScreenWidthType() == 0;
  v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  spinnerView = self->_spinnerView;
  self->_spinnerView = v3;

  [(UIActivityIndicatorView *)self->_spinnerView startAnimating];
  [(UIActivityIndicatorView *)self->_spinnerView setHidden:1];
  [(PKDashboardMessageActionView *)self addSubview:self->_spinnerView];
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v6 = PKUIChevronImage();
  v7 = [v5 initWithImage:v6];
  disclosureView = self->_disclosureView;
  self->_disclosureView = v7;

  v9 = self->_disclosureView;
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v9 setTintColor:tertiaryLabelColor];

  [(UIImageView *)self->_disclosureView setHidden:1];
  [(PKDashboardMessageActionView *)self addSubview:self->_disclosureView];
  v11 = *MEMORY[0x1E69B93D0];

  [(PKDashboardMessageActionView *)self setAccessibilityIdentifier:v11];
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  titleText = self->_titleText;
  v9 = textCopy;
  v7 = titleText;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_titleText, text);
    [(PKDashboardMessageActionView *)self _configureView];
  }

LABEL_9:
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, font);
    [(PKDashboardMessageActionView *)self _configureView];
  }
}

- (void)setTitleTextColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleTextColor, color);
    [(PKDashboardMessageActionView *)self _configureView];
  }
}

- (void)setAccessory:(unint64_t)accessory
{
  if (self->_accessory != accessory)
  {
    self->_accessory = accessory;
    if (accessory == 2)
    {
      [(UIImageView *)self->_disclosureView setHidden:1];
      [(UIActivityIndicatorView *)self->_spinnerView setHidden:0];
      spinnerView = self->_spinnerView;

      [(UIActivityIndicatorView *)spinnerView startAnimating];
    }

    else
    {
      if (accessory == 1)
      {
        disclosureView = self->_disclosureView;
        v5 = 0;
      }

      else
      {
        if (accessory)
        {
          return;
        }

        disclosureView = self->_disclosureView;
        v5 = 1;
      }

      [(UIImageView *)disclosureView setHidden:v5];
      v6 = self->_spinnerView;

      [(UIActivityIndicatorView *)v6 setHidden:1];
    }
  }
}

- (void)updateWithMessage:(id)message
{
  messageCopy = message;
  buttonTitle = [messageCopy buttonTitle];
  [(PKDashboardMessageActionView *)self setTitleText:buttonTitle];

  if ([messageCopy isDestructiveAction])
  {
    [MEMORY[0x1E69DC888] systemRedColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] labelColor];
  }
  v5 = ;
  [(PKDashboardMessageActionView *)self setTitleTextColor:v5];

  if ([messageCopy showSpinner])
  {
    showDisclosure = 2;
  }

  else
  {
    showDisclosure = [messageCopy showDisclosure];
  }

  [(PKDashboardMessageActionView *)self setAccessory:showDisclosure];
  [(PKDashboardMessageActionView *)self _updateFonts];
  [(PKDashboardMessageActionView *)self setNeedsLayout];
  [(PKDashboardMessageActionView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9B58]];
}

- (void)_updateFonts
{
  if (self->_smallDevice)
  {
    v3 = MEMORY[0x1E69DDD00];
  }

  else
  {
    v3 = MEMORY[0x1E69DDCF8];
  }

  v4 = PKFontForDefaultDesign(*v3, *MEMORY[0x1E69DDC38], 0x8000, 0);
  [(PKDashboardMessageActionView *)self setTitleFont:v4];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardMessageActionView;
  [(PKDashboardMessageActionView *)&v3 layoutSubviews];
  [(PKDashboardMessageActionView *)self bounds];
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
  v6 = bounds.origin.x + 16.0;
  v7 = bounds.origin.y + 16.0;
  memset(&v78, 0, sizeof(v78));
  width = bounds.size.width;
  v8 = bounds.size.width + -32.0;
  remainder.origin.x = bounds.origin.x + 16.0;
  remainder.origin.y = bounds.origin.y + 16.0;
  v9 = bounds.size.height + -32.0;
  remainder.size.width = bounds.size.width + -32.0;
  remainder.size.height = bounds.size.height + -32.0;
  _shouldReverseLayoutDirection = [(PKDashboardMessageActionView *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v11 = CGRectMaxXEdge;
  }

  else
  {
    v11 = CGRectMinXEdge;
  }

  [(UIImageView *)self->_disclosureView sizeThatFits:v8, 3.40282347e38];
  v13 = v12;
  v15 = v14;
  [(UIActivityIndicatorView *)self->_spinnerView sizeThatFits:v8, 3.40282347e38];
  v17 = fmax(v13, v16);
  v19 = fmax(v15, v18);
  v20 = MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 8);
  v75 = *MEMORY[0x1E695F058];
  if (v17 <= 0.0)
  {
    v47 = *(MEMORY[0x1E695F058] + 16);
    v49 = *(MEMORY[0x1E695F058] + 24);
    v72 = v47;
    v73 = v49;
    v70 = *MEMORY[0x1E695F058];
    v71 = *(MEMORY[0x1E695F058] + 8);
    v33 = v19;
  }

  else
  {
    if (_shouldReverseLayoutDirection)
    {
      v22 = CGRectMinXEdge;
    }

    else
    {
      v22 = CGRectMaxXEdge;
    }

    *&v69 = v19;
    v23 = *(MEMORY[0x1E695F058] + 16);
    slice.origin = *MEMORY[0x1E695F058];
    slice.size = v23;
    v24 = v6;
    v23.width = v7;
    v25 = v8;
    v26 = v9;
    CGRectDivide(*(&v23 - 8), &slice, &remainder, v17, v22);
    CGRectDivide(remainder, &v78, &remainder, 11.0, v22);
    v27 = PKContentAlignmentMake();
    v28.n128_u64[0] = *&slice.origin.x;
    v29.n128_u64[0] = *&slice.origin.y;
    v30.n128_u64[0] = *&slice.size.width;
    v31.n128_u64[0] = *&slice.size.height;
    v32.n128_f64[0] = v17;
    v33 = *&v69;
    v34.n128_u64[0] = v69;
    PKSizeAlignedInRect(v27, v32, v34, v28, v29, v30, v31, v35);
    slice.origin.x = v36;
    slice.origin.y = v37;
    slice.size.width = v38;
    slice.size.height = v39;
    PKRectCenteredIntegralRect();
    v70 = v40;
    v71 = v41;
    v72 = v42;
    v73 = v43;
    PKRectCenteredIntegralRect();
    v75 = v44;
    v21 = v45;
    v47 = v46;
    v49 = v48;
    v8 = remainder.size.width;
  }

  [(UILabel *)self->_titleLabel sizeThatFits:v8, 3.40282347e38, v69];
  v51 = *&v50;
  v53 = v52;
  v54 = *(v20 + 16);
  slice.origin = *v20;
  slice.size = v54;
  if (v50 > 0.0)
  {
    CGRectDivide(remainder, &slice, &remainder, v50, v11);
    v55 = PKContentAlignmentMake();
    v56.n128_u64[0] = *&slice.origin.x;
    v57.n128_u64[0] = *&slice.origin.y;
    v58.n128_u64[0] = *&slice.size.width;
    v59.n128_u64[0] = *&slice.size.height;
    v60.n128_u64[0] = v51;
    v61.n128_u64[0] = v53;
    PKSizeAlignedInRect(v55, v60, v61, v56, v57, v58, v59, v62);
    slice.origin.x = v63;
    slice.origin.y = v64;
    slice.size.width = v65;
    slice.size.height = v66;
  }

  if (!layout)
  {
    [(UILabel *)self->_titleLabel setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
    [(UIActivityIndicatorView *)self->_spinnerView setFrame:v75, v21, v47, v49];
    [(UIImageView *)self->_disclosureView setFrame:v70, v71, v72, v73];
  }

  v67 = fmax(slice.size.height, v33) + 32.0;
  v68 = width;
  result.height = v67;
  result.width = v68;
  return result;
}

- (void)_configureView
{
  titleText = self->_titleText;
  titleLabel = self->_titleLabel;
  if (titleText)
  {
    if (!titleLabel)
    {
      v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
      v6 = self->_titleLabel;
      self->_titleLabel = v5;

      [(UILabel *)self->_titleLabel setNumberOfLines:1];
      [(UILabel *)self->_titleLabel setAdjustsFontSizeToFitWidth:1];
      [(PKDashboardMessageActionView *)self addSubview:self->_titleLabel];
      titleLabel = self->_titleLabel;
    }

    [(UILabel *)titleLabel setFont:self->_titleFont];
    [(UILabel *)self->_titleLabel setTextColor:self->_titleTextColor];
    [(UILabel *)self->_titleLabel setText:self->_titleText];
  }

  else
  {
    [(UILabel *)titleLabel removeFromSuperview];
    v7 = self->_titleLabel;
    self->_titleLabel = 0;
  }

  [(PKDashboardMessageActionView *)self setNeedsLayout];
}

- (void)prepareForReuse
{
  [(UILabel *)self->_titleLabel removeFromSuperview];
  titleLabel = self->_titleLabel;
  self->_titleLabel = 0;

  titleText = self->_titleText;
  self->_titleText = 0;

  titleFont = self->_titleFont;
  self->_titleFont = 0;

  titleTextColor = self->_titleTextColor;
  self->_titleTextColor = 0;

  [(PKDashboardMessageActionView *)self setAccessory:0];
}

@end