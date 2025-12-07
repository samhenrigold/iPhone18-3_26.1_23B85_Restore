@interface PKPaymentSetupNoResultsView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKPaymentSetupNoResultsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setActionButtonTitle:(id)title addTarget:(id)target action:(SEL)action;
- (void)setIcon:(id)icon;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation PKPaymentSetupNoResultsView

- (PKPaymentSetupNoResultsView)initWithFrame:(CGRect)frame
{
  v27.receiver = self;
  v27.super_class = PKPaymentSetupNoResultsView;
  v3 = [(PKPaymentSetupNoResultsView *)&v27 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    [(PKPaymentSetupNoResultsView *)v3 setBackgroundColor:systemBackgroundColor];

    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"magnifyingglass"];
    v7 = [v5 initWithImage:v6];
    iconImageView = v3->_iconImageView;
    v3->_iconImageView = v7;

    [(UIImageView *)v3->_iconImageView setContentMode:1];
    v9 = v3->_iconImageView;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UIImageView *)v9 setTintColor:secondaryLabelColor];

    [(PKPaymentSetupNoResultsView *)v3 addSubview:v3->_iconImageView];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v11;

    v13 = v3->_titleLabel;
    v14 = *MEMORY[0x1E69DDC28];
    v15 = PKFontForDefaultDesign(*MEMORY[0x1E69DDDC8], *MEMORY[0x1E69DDC28]);
    [(UILabel *)v13 setFont:v15];

    v16 = v3->_titleLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v16 setTextColor:labelColor];

    v18 = v3->_titleLabel;
    v19 = PKLocalizedPaymentString(&cfstr_PaymentSetupNo.isa);
    [(UILabel *)v18 setText:v19];

    [(UILabel *)v3->_titleLabel setTextAlignment:1];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    [(PKPaymentSetupNoResultsView *)v3 addSubview:v3->_titleLabel];
    v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v20;

    v22 = v3->_subtitleLabel;
    v23 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], v14);
    [(UILabel *)v22 setFont:v23];

    v24 = v3->_subtitleLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v24 setTextColor:secondaryLabelColor2];

    [(UILabel *)v3->_subtitleLabel setTextAlignment:1];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    [(PKPaymentSetupNoResultsView *)v3 addSubview:v3->_subtitleLabel];
  }

  return v3;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKPaymentSetupNoResultsView;
  [(PKPaymentSetupNoResultsView *)&v3 layoutSubviews];
  [(PKPaymentSetupNoResultsView *)self bounds];
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
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  readableContentGuide = [(PKPaymentSetupNoResultsView *)self readableContentGuide];
  [readableContentGuide layoutFrame];
  v12 = v11;

  if (layout)
  {
    v13 = 0.0;
LABEL_5:
    v17 = 1;
    goto LABEL_7;
  }

  objc_msgSend__layoutWithBounds_isTemplateLayout_(self, x, y, width, height);
  if (v15.n128_f64[0] < height)
  {
    v14.n128_f64[0] = height - v15.n128_f64[0];
    v15.n128_u64[0] = 0.5;
    v14.n128_f64[0] = v14.n128_f64[0] * 0.5;
    PKFloatRoundToPixel(v14, v15);
    v13 = v16;
    goto LABEL_5;
  }

  v17 = 0;
  v13 = 15.0;
LABEL_7:
  image = [(UIImageView *)self->_iconImageView image];

  if (image)
  {
    if (v17)
    {
      v47.origin.x = (width + -50.0) * 0.5;
      v47.origin.y = v13;
      v47.size.width = 50.0;
      v47.size.height = 50.0;
      v19 = CGRectGetMaxY(v47) + 20.0;
      if (!layout)
      {
        [(UIImageView *)self->_iconImageView setFrame:(width + -50.0) * 0.5, v13, 50.0, 50.0];
      }
    }

    else
    {
      v19 = v13;
    }

    [(UIImageView *)self->_iconImageView setHidden:v17 ^ 1u];
    v13 = v19;
  }

  v20 = v12 + -12.0;
  text = [(UILabel *)self->_titleLabel text];
  v22 = [text length];

  if (v22)
  {
    [(UILabel *)self->_titleLabel sizeThatFits:v20, height];
    v24 = v23;
    v26 = v25;
    v27 = (width - v23) * 0.5;
    v48.origin.x = v27;
    v48.origin.y = v13;
    v48.size.width = v24;
    v48.size.height = v26;
    v28 = CGRectGetMaxY(v48) + 15.0;
    if (!layout)
    {
      [(UILabel *)self->_titleLabel setFrame:v27, v13, v24, v26];
    }
  }

  else
  {
    v28 = v13;
  }

  text2 = [(UILabel *)self->_subtitleLabel text];
  v30 = [text2 length];

  if (v30)
  {
    [(UILabel *)self->_subtitleLabel sizeThatFits:v20, height];
    v32 = v31;
    v34 = v33;
    v35 = (width - v31) * 0.5;
    v49.origin.x = v35;
    v49.origin.y = v28;
    v49.size.width = v32;
    v49.size.height = v34;
    v36 = CGRectGetMaxY(v49) + 15.0;
    if (!layout)
    {
      [(UILabel *)self->_subtitleLabel setFrame:v35, v28, v32, v34];
    }
  }

  else
  {
    v36 = v28;
  }

  actionButton = self->_actionButton;
  if (actionButton)
  {
    [(UIButton *)actionButton sizeThatFits:v20, height];
    v39 = v38;
    v41 = v40;
    v42 = (width - v38) * 0.5;
    v50.origin.x = v42;
    v50.origin.y = v36;
    v50.size.width = v39;
    v50.size.height = v41;
    MaxY = CGRectGetMaxY(v50);
    if (!layout)
    {
      [(UIButton *)self->_actionButton setFrame:v42, v36, v39, v41];
    }
  }

  else
  {
    MaxY = v36;
  }

  v44 = width;
  v45 = MaxY;
  result.height = v45;
  result.width = v44;
  return result;
}

- (void)setIcon:(id)icon
{
  [(UIImageView *)self->_iconImageView setImage:icon];

  [(PKPaymentSetupNoResultsView *)self setNeedsLayout];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  v5 = [text isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:titleCopy];
    [(PKPaymentSetupNoResultsView *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  text = [(UILabel *)self->_subtitleLabel text];
  v5 = [text isEqualToString:subtitleCopy];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
    [(PKPaymentSetupNoResultsView *)self setNeedsLayout];
  }
}

- (void)setActionButtonTitle:(id)title addTarget:(id)target action:(SEL)action
{
  titleCopy = title;
  targetCopy = target;
  v9 = titleCopy;
  v10 = targetCopy;
  actionButton = self->_actionButton;
  if (titleCopy && v10)
  {
    if (!actionButton)
    {
      v12 = [MEMORY[0x1E69DC738] buttonWithType:1];
      v13 = self->_actionButton;
      self->_actionButton = v12;

      [(UIButton *)self->_actionButton setExclusiveTouch:1];
      titleLabel = [(UIButton *)self->_actionButton titleLabel];
      [titleLabel setNumberOfLines:0];
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [titleLabel setTextColor:labelColor];

      [titleLabel setTextAlignment:1];
      v16 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0];
      [titleLabel setFont:v16];

      [(PKPaymentSetupNoResultsView *)self addSubview:self->_actionButton];
      v9 = titleCopy;
      actionButton = self->_actionButton;
    }

    [(UIButton *)actionButton setTitle:v9 forState:0];
    [(UIButton *)self->_actionButton addTarget:v10 action:action forControlEvents:0x2000];
  }

  else
  {
    [(UIButton *)actionButton removeFromSuperview];
    v17 = self->_actionButton;
    self->_actionButton = 0;
  }

  [(PKPaymentSetupNoResultsView *)self setNeedsLayout];
}

@end