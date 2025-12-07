@interface PKDashboardBalanceView
- (CGSize)_layoutWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKDashboardBalanceView)initWithFrame:(CGRect)frame;
- (void)_buttonPressed:(id)pressed;
- (void)createSubviews;
- (void)layoutSubviews;
- (void)resetFonts;
- (void)setAvailableCredit:(id)credit;
- (void)setBalance:(id)balance;
- (void)setTitle:(id)title;
- (void)setTitleColor:(id)color;
- (void)setTopUpAction:(id)action;
- (void)setTopUpEnabled:(BOOL)enabled;
- (void)setTopUpTitle:(id)title;
@end

@implementation PKDashboardBalanceView

- (PKDashboardBalanceView)initWithFrame:(CGRect)frame
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKDashboardBalanceView;
  v3 = [(PKDashboardCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKDashboardBalanceView *)v3 createSubviews];
    [(PKDashboardCollectionViewCell *)v4 setMaskType:3];
    [(PKDashboardCollectionViewCell *)v4 setWantsCustomAppearance:0];
    v4->_topUpEnabled = 1;
    v9[0] = objc_opt_class();
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v6 = [(PKDashboardBalanceView *)v4 registerForTraitChanges:v5 withHandler:&__block_literal_global_195];
  }

  return v4;
}

- (void)createSubviews
{
  contentView = [(PKDashboardBalanceView *)self contentView];
  v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  v6 = self->_titleLabel;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v6 setTextColor:secondaryLabelColor];

  [(UILabel *)self->_titleLabel setNumberOfLines:1];
  [(UILabel *)self->_titleLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [contentView addSubview:self->_titleLabel];
  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  detailLabel = self->_detailLabel;
  self->_detailLabel = v8;

  v10 = self->_detailLabel;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v10 setTextColor:labelColor];

  [(UILabel *)self->_detailLabel setNumberOfLines:0];
  [(UILabel *)self->_detailLabel setAccessibilityIdentifier:*MEMORY[0x1E69B96F8]];
  [contentView addSubview:self->_detailLabel];
  v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  availableCreditLabel = self->_availableCreditLabel;
  self->_availableCreditLabel = v12;

  [(UILabel *)self->_availableCreditLabel setNumberOfLines:2];
  v14 = self->_availableCreditLabel;
  secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v14 setTextColor:secondaryLabelColor2];

  [(UILabel *)self->_availableCreditLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  [contentView addSubview:self->_availableCreditLabel];
  v30 = 0x4034000000000000;
  v31 = xmmword_1BE0B69E0;
  v32 = vdupq_n_s64(2uLL);
  v16 = [[PKContinuousButton alloc] initWithConfiguration:&v30];
  actionButton = self->_actionButton;
  self->_actionButton = v16;

  v18 = self->_actionButton;
  labelColor2 = [MEMORY[0x1E69DC888] labelColor];
  [(PKContinuousButton *)v18 setTintColor:labelColor2];

  v20 = self->_actionButton;
  defaultBackgroundColor = [objc_opt_class() defaultBackgroundColor];
  [(PKContinuousButton *)v20 updateTitleColorWithColor:defaultBackgroundColor];

  [(PKContinuousButton *)self->_actionButton setContentEdgeInsets:10.0, 16.0, 10.0, 16.0];
  [(PKContinuousButton *)self->_actionButton addTarget:self action:sel__buttonPressed_ forControlEvents:64];
  [(PKContinuousButton *)self->_actionButton setAccessibilityIdentifier:*MEMORY[0x1E69B93D0]];
  [contentView addSubview:self->_actionButton];
  v22 = [MEMORY[0x1E69DCAD8] configurationWithWeight:6];
  v23 = [MEMORY[0x1E69DCAD8] configurationWithScale:1];
  v24 = [v22 configurationByApplyingConfiguration:v23];

  v25 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward" withConfiguration:v24];
  v26 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v25];
  disclosureView = self->_disclosureView;
  self->_disclosureView = v26;

  v28 = self->_disclosureView;
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v28 setTintColor:tertiaryLabelColor];

  [contentView addSubview:self->_disclosureView];
  [(PKDashboardBalanceView *)self resetFonts];
  [(PKDashboardBalanceView *)self setAccessibilityIdentifier:*MEMORY[0x1E69B9500]];
}

- (void)resetFonts
{
  titleLabel = self->_titleLabel;
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = *MEMORY[0x1E69DDC38];
  v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38], 0x8000, 0);
  [(UILabel *)titleLabel setFont:v6];

  detailLabel = self->_detailLabel;
  v8 = PKFontForDesign(*MEMORY[0x1E69DB8D8], *MEMORY[0x1E69DDDB8], v5, 32770, 0, *MEMORY[0x1E69DB958]);
  [(UILabel *)detailLabel setFont:v8];

  availableCreditLabel = self->_availableCreditLabel;
  v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD80], v5, 0x8000, 0);
  [(UILabel *)availableCreditLabel setFont:v10];

  titleLabel = [(PKContinuousButton *)self->_actionButton titleLabel];
  v11 = PKFontForDefaultDesign(v4, *MEMORY[0x1E69DDC50], 2, 0);
  [titleLabel setFont:v11];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  v10 = titleCopy;
  titleCopy2 = title;
  if (titleCopy2 == v10)
  {

    goto LABEL_9;
  }

  if (!v10 || !titleCopy2)
  {

    goto LABEL_8;
  }

  v7 = [(NSString *)v10 isEqualToString:titleCopy2];

  if (!v7)
  {
LABEL_8:
    v8 = [(NSString *)v10 copy];
    v9 = self->_title;
    self->_title = v8;

    [(UILabel *)self->_titleLabel setText:self->_title];
    [(PKDashboardBalanceView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, color);
    titleLabel = self->_titleLabel;
    if (self->_titleColor)
    {
      [(UILabel *)self->_titleLabel setTextColor:?];
    }

    else
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [(UILabel *)titleLabel setTextColor:secondaryLabelColor];
    }

    [(PKDashboardBalanceView *)self setNeedsLayout];
  }
}

- (void)setBalance:(id)balance
{
  balanceCopy = balance;
  balance = self->_balance;
  v9 = balanceCopy;
  balanceCopy2 = balance;
  if (balanceCopy2 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !balanceCopy2)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:balanceCopy2];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_balance, balance);
    [(UILabel *)self->_detailLabel setText:self->_balance];
    [(PKDashboardBalanceView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setAvailableCredit:(id)credit
{
  creditCopy = credit;
  availableCredit = self->_availableCredit;
  v9 = creditCopy;
  v7 = availableCredit;
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
    objc_storeStrong(&self->_availableCredit, credit);
    [(UILabel *)self->_availableCreditLabel setText:self->_availableCredit];
    [(PKDashboardBalanceView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTopUpTitle:(id)title
{
  titleCopy = title;
  topUpTitle = self->_topUpTitle;
  v9 = titleCopy;
  v7 = topUpTitle;
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
    objc_storeStrong(&self->_topUpTitle, title);
    [(PKContinuousButton *)self->_actionButton setTitle:self->_topUpTitle forState:0];
    [(PKDashboardBalanceView *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTopUpAction:(id)action
{
  v4 = _Block_copy(action);
  topUpAction = self->_topUpAction;
  self->_topUpAction = v4;

  [(PKContinuousButton *)self->_actionButton setHidden:self->_topUpAction == 0];

  [(PKDashboardBalanceView *)self setNeedsLayout];
}

- (void)setTopUpEnabled:(BOOL)enabled
{
  if (self->_topUpEnabled == !enabled)
  {
    self->_topUpEnabled = enabled;
    [(PKContinuousButton *)self->_actionButton setEnabled:?];
    actionButton = self->_actionButton;
    if (self->_topUpEnabled)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      [(PKContinuousButton *)actionButton setTintColor:labelColor];

      v6 = self->_actionButton;
      defaultBackgroundColor = [objc_opt_class() defaultBackgroundColor];
      v8 = v6;
    }

    else
    {
      systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
      [(PKContinuousButton *)actionButton setTintColor:systemFillColor];

      v10 = self->_actionButton;
      defaultBackgroundColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v8 = v10;
    }

    v11 = defaultBackgroundColor;
    [(PKContinuousButton *)v8 updateTitleColorWithColor:?];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKDashboardBalanceView;
  [(PKDashboardCollectionViewCell *)&v3 layoutSubviews];
  [(PKDashboardBalanceView *)self bounds];
  [(PKDashboardBalanceView *)self _layoutWithBounds:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  self->_isTemplateLayout = 1;
  [(PKDashboardBalanceView *)self _layoutWithBounds:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  self->_isTemplateLayout = 0;
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = _UISolariumFeatureFlagEnabled();
  v9 = _UISolariumFeatureFlagEnabled();
  if (v8)
  {
    v10 = 15.0;
  }

  else
  {
    v10 = 13.0;
  }

  v11 = 26.0;
  if (v8)
  {
    v11 = 30.0;
  }

  v12 = 16.0;
  if (v9)
  {
    v12 = 11.0;
  }

  v111.origin.x = x;
  v111.origin.y = y;
  amount = v10;
  v13 = x + v10;
  v110 = v12;
  v14 = y + v12;
  v111.size.width = width;
  v111.size.height = height;
  v15 = width - v11;
  v16 = 32.0;
  if (v9)
  {
    v16 = 22.0;
  }

  v17 = height - v16;
  if ([(PKDashboardBalanceView *)self _shouldReverseLayoutDirection])
  {
    v18 = CGRectMinXEdge;
  }

  else
  {
    v18 = CGRectMaxXEdge;
  }

  remainder.origin.x = v13;
  remainder.origin.y = v14;
  remainder.size.width = v15;
  remainder.size.height = v17;
  font = [(UILabel *)self->_titleLabel font];
  [font pointSize];
  v21 = v20;

  [(UILabel *)self->_titleLabel sizeThatFits:v15, v17];
  v108 = v22;
  v109 = v23;
  [(UILabel *)self->_detailLabel sizeThatFits:v15, v17];
  v25 = v24;
  [(PKContinuousButton *)self->_actionButton sizeThatFits:v15, v17];
  v27 = v26;
  v106 = v28;
  if (self->_showDisclosure)
  {
    [(UIImageView *)self->_disclosureView sizeThatFits:v15, v17];
    v30 = v29;
    v105 = v31;
  }

  else
  {
    v30 = *MEMORY[0x1E695F060];
    v105 = *(MEMORY[0x1E695F060] + 8);
  }

  if (v21 < 30.0 && fmax(v108, v25) + v27 + v30 + amount * 2.0 <= v15)
  {
    v34 = 0;
    v33 = 1;
    v32 = 2;
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v34 = 1;
  }

  [(UILabel *)self->_titleLabel setNumberOfLines:v32];
  titleLabel = [(PKContinuousButton *)self->_actionButton titleLabel];
  [titleLabel setNumberOfLines:v33];

  memset(&slice, 0, sizeof(slice));
  if (v27 <= v15)
  {
    v36 = v27;
  }

  else
  {
    v36 = v15;
  }

  if (self->_showDisclosure)
  {
    v115.origin.x = v13;
    v115.origin.y = v14;
    v115.size.width = v15;
    v115.size.height = v17;
    CGRectDivide(v115, &slice, &remainder, v30, v18);
    if (!self->_isTemplateLayout)
    {
      disclosureView = self->_disclosureView;
      v39.n128_u64[0] = *&slice.origin.x;
      v40.n128_u64[0] = *&slice.origin.y;
      v41.n128_u64[0] = *&slice.size.width;
      v42.n128_u64[0] = *&slice.size.height;
      v37.n128_f64[0] = v30;
      v38.n128_u64[0] = v105;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v37, v38, v39, v40, v41, v42, v43);
      [(UIImageView *)disclosureView setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, amount, v18);
  }

  else
  {
    [(UIImageView *)self->_disclosureView setFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  }

  topUpAction = self->_topUpAction;
  if (topUpAction)
  {
    v46 = v34;
  }

  else
  {
    v46 = 1;
  }

  if ((v46 & 1) == 0)
  {
    CGRectDivide(remainder, &slice, &remainder, v36, v18);
    if (!self->_isTemplateLayout)
    {
      actionButton = self->_actionButton;
      v49.n128_u64[0] = *&slice.origin.x;
      v50.n128_u64[0] = *&slice.origin.y;
      v51.n128_u64[0] = *&slice.size.width;
      v52.n128_u64[0] = *&slice.size.height;
      v47.n128_f64[0] = v36;
      v48.n128_f64[0] = v106;
      PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v47, v48, v49, v50, v51, v52, v53);
      [(PKContinuousButton *)actionButton setFrame:?];
    }

    CGRectDivide(remainder, &slice, &remainder, 4.0, v18);
    topUpAction = self->_topUpAction;
  }

  v55 = topUpAction == 0;
  v56 = v34 ^ 1;
  if (v55)
  {
    v56 = 1;
  }

  if (v56)
  {
    v57 = PKContentAlignmentMake();
  }

  else
  {
    v57 = *MEMORY[0x1E69BB7F8];
  }

  v58 = remainder.size.width;
  CGRectDivide(remainder, &slice, &remainder, v109, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    v59.n128_f64[0] = fmin(v58, v108);
    titleLabel = self->_titleLabel;
    v61.n128_u64[0] = *&slice.origin.x;
    v62.n128_u64[0] = *&slice.origin.y;
    v63.n128_u64[0] = *&slice.size.width;
    v64.n128_u64[0] = *&slice.size.height;
    v60.n128_f64[0] = v109;
    PKSizeAlignedInRect(v57, v59, v60, v61, v62, v63, v64, v65);
    [(UILabel *)titleLabel setFrame:?];
  }

  [(UILabel *)self->_detailLabel sizeThatFits:remainder.size.width, remainder.size.height];
  v68 = v67;
  v70 = v69;
  v71 = remainder.size.width;
  CGRectDivide(remainder, &slice, &remainder, v69, CGRectMinYEdge);
  if (!self->_isTemplateLayout)
  {
    v72.n128_f64[0] = fmin(v71, v68);
    detailLabel = self->_detailLabel;
    v74.n128_u64[0] = *&slice.origin.x;
    v75.n128_u64[0] = *&slice.origin.y;
    v76.n128_u64[0] = *&slice.size.width;
    v77.n128_u64[0] = *&slice.size.height;
    v73.n128_f64[0] = v70;
    PKSizeAlignedInRect(v57, v72, v73, v74, v75, v76, v77, v78);
    [(UILabel *)detailLabel setFrame:?];
  }

  v80 = v110 + v109 + v70;
  if ([(NSString *)self->_availableCredit length])
  {
    [(UILabel *)self->_availableCreditLabel sizeThatFits:remainder.size.width, remainder.size.height];
    v82 = v81;
    v84 = v83;
    v85 = remainder.size.width;
    CGRectDivide(remainder, &slice, &remainder, v83, CGRectMinYEdge);
    v80 = v80 + v84;
    if (!self->_isTemplateLayout)
    {
      v86.n128_f64[0] = fmin(v85, v82);
      availableCreditLabel = self->_availableCreditLabel;
      v88.n128_u64[0] = *&slice.origin.x;
      v89.n128_u64[0] = *&slice.origin.y;
      v90.n128_u64[0] = *&slice.size.width;
      v91.n128_u64[0] = *&slice.size.height;
      v87.n128_f64[0] = v84;
      PKSizeAlignedInRect(v57, v86, v87, v88, v89, v90, v91, v92);
      [(UILabel *)availableCreditLabel setFrame:?];
    }
  }

  v94 = v34 ^ 1;
  if (!self->_topUpAction)
  {
    v94 = 1;
  }

  if ((v94 & 1) == 0)
  {
    CGRectDivide(remainder, &slice, &remainder, v106, CGRectMinYEdge);
    v80 = v106 + v80;
    if (!self->_isTemplateLayout)
    {
      if (self->_topUpAction)
      {
        v102 = self->_actionButton;
        v97.n128_u64[0] = *&slice.origin.x;
        v98.n128_u64[0] = *&slice.origin.y;
        v99.n128_u64[0] = *&slice.size.width;
        v100.n128_u64[0] = *&slice.size.height;
        v95.n128_f64[0] = v36;
        v96.n128_f64[0] = v106;
        PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v95, v96, v97, v98, v99, v100, v101);
        [(PKContinuousButton *)v102 setFrame:?];
      }
    }
  }

  v103 = CGRectGetWidth(v111);
  v104 = v110 + v80;
  result.height = v104;
  result.width = v103;
  return result;
}

- (void)_buttonPressed:(id)pressed
{
  topUpAction = self->_topUpAction;
  if (topUpAction)
  {
    topUpAction[2]();
  }
}

@end