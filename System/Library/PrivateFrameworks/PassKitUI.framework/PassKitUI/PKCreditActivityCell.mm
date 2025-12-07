@interface PKCreditActivityCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKCreditActivityCell)initWithFrame:(CGRect)frame;
- (void)_createSubviews;
- (void)layoutSubviews;
- (void)setRewardsSummary:(id)summary;
- (void)setRewardsSummaryFont:(id)font;
- (void)setRewardsSummaryTextColor:(id)color;
- (void)setTitle:(id)title;
- (void)setTitleFont:(id)font;
@end

@implementation PKCreditActivityCell

- (PKCreditActivityCell)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = PKCreditActivityCell;
  v3 = [(PKDashboardCollectionViewCell *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v3->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
    [(PKCreditActivityCell *)v3 _createSubviews];
  }

  return v3;
}

- (void)_createSubviews
{
  contentView = [(PKCreditActivityCell *)self contentView];
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  labelTitle = self->_labelTitle;
  self->_labelTitle = v3;

  [(UILabel *)self->_labelTitle setNumberOfLines:1];
  [(UILabel *)self->_labelTitle setAdjustsFontSizeToFitWidth:1];
  v5 = self->_labelTitle;
  labelColor = [MEMORY[0x1E69DC888] labelColor];
  [(UILabel *)v5 setTextColor:labelColor];

  [(UILabel *)self->_labelTitle setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
  [contentView addSubview:self->_labelTitle];
  v7 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  labelRewardsSummary = self->_labelRewardsSummary;
  self->_labelRewardsSummary = v7;

  [(UILabel *)self->_labelRewardsSummary setNumberOfLines:1];
  [(UILabel *)self->_labelRewardsSummary setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_labelRewardsSummary setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
  [contentView addSubview:self->_labelRewardsSummary];
  v9 = [PKSpendingSummaryChartView alloc];
  v10 = [(PKSpendingSummaryChartView *)v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  chartView = self->_chartView;
  self->_chartView = v10;

  [(PKSpendingSummaryChartView *)self->_chartView setShowLegendGraph:0];
  [(PKSpendingSummaryChartView *)self->_chartView setShowPlaceholders:1];
  [(PKSpendingSummaryChartView *)self->_chartView setShowLegendLabels:0];
  [contentView addSubview:self->_chartView];
  [(PKCreditActivityCell *)self setAccessibilityIdentifier:*MEMORY[0x1E69B93E0]];
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self->_labelTitle font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_labelTitle setFont:fontCopy];
    [(PKCreditActivityCell *)self setNeedsLayout];
  }
}

- (void)setRewardsSummaryFont:(id)font
{
  fontCopy = font;
  font = [(UILabel *)self->_labelRewardsSummary font];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_labelRewardsSummary setFont:fontCopy];
    [(PKCreditActivityCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v57.receiver = self;
  v57.super_class = PKCreditActivityCell;
  [(PKDashboardCollectionViewCell *)&v57 layoutSubviews];
  v3 = 8.0;
  if (!self->_isCompactUI)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v3 = 16.0;
    }

    else
    {
      v3 = 12.0;
    }
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v4 = 12.0;
  }

  else
  {
    v4 = 8.0;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v5 = 16.0;
  }

  else
  {
    v5 = 8.0;
  }

  [(PKCreditActivityCell *)self bounds];
  v7 = v3 + v6;
  v9 = v4 + v8;
  v11 = v10 - (v3 + v3);
  v13 = v12 - (v4 + v5);
  [(PKCreditActivityCell *)self _shouldReverseLayoutDirection];
  memset(&slice, 0, sizeof(slice));
  v55.size.width = v11;
  v55.size.height = v13;
  [(UILabel *)self->_labelTitle sizeThatFits:v11, v13, *&v7, *&v9];
  v15 = *&v14;
  v17 = fmin(v11, v16);
  v18 = v14 + 0.0;
  v58.origin.x = v7;
  v58.origin.y = v9;
  v58.size.width = v11;
  v58.size.height = v13;
  CGRectDivide(v58, &slice, &v55, v18, CGRectMinYEdge);
  labelTitle = self->_labelTitle;
  v20 = PKContentAlignmentMake();
  v21.n128_u64[0] = *&slice.origin.x;
  v22.n128_u64[0] = *&slice.origin.y;
  v23.n128_u64[0] = *&slice.size.width;
  v24.n128_u64[0] = *&slice.size.height;
  v25.n128_f64[0] = v17;
  v26.n128_u64[0] = v15;
  PKSizeAlignedInRect(v20, v25, v26, v21, v22, v23, v24, v27);
  [(UILabel *)labelTitle setFrame:?];
  [(UILabel *)self->_labelRewardsSummary sizeThatFits:v55.size.width, v55.size.height];
  v29 = *&v28;
  v31 = fmin(v55.size.width, v30);
  CGRectDivide(v55, &slice, &v55, v28 + 7.0, CGRectMinYEdge);
  labelRewardsSummary = self->_labelRewardsSummary;
  v33 = PKContentAlignmentMake();
  v34.n128_u64[0] = *&slice.origin.x;
  v35.n128_u64[0] = *&slice.origin.y;
  v36.n128_u64[0] = *&slice.size.width;
  v37.n128_u64[0] = *&slice.size.height;
  v38.n128_f64[0] = v31;
  v39.n128_u64[0] = v29;
  PKSizeAlignedInRect(v33, v38, v39, v34, v35, v36, v37, v40);
  [(UILabel *)labelRewardsSummary setFrame:?];
  if (self->_useAccessibilityLayout)
  {
    v41.n128_f64[0] = v11 * 0.5;
    PKFloatRoundToPixel(v41, v42);
    width = v43;
  }

  else
  {
    width = v55.size.width;
  }

  height = v55.size.height;
  chartView = self->_chartView;
  v47 = PKContentAlignmentMake();
  v48.n128_u64[0] = *&v55.origin.x;
  v49.n128_u64[0] = *&v55.origin.y;
  v50.n128_u64[0] = *&v55.size.width;
  v51.n128_u64[0] = *&v55.size.height;
  v52.n128_f64[0] = width;
  v53.n128_f64[0] = height;
  PKSizeAlignedInRect(v47, v52, v53, v48, v49, v50, v51, v54);
  [(PKSpendingSummaryChartView *)chartView setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v6 = 8.0;
  if (!self->_isCompactUI)
  {
    if (_UISolariumFeatureFlagEnabled())
    {
      v6 = 16.0;
    }

    else
    {
      v6 = 12.0;
    }
  }

  v7 = _UISolariumFeatureFlagEnabled();
  v8 = _UISolariumFeatureFlagEnabled();
  v11 = width + v6 * -2.0;
  v12 = v11;
  if (self->_useAccessibilityLayout)
  {
    v9.n128_f64[0] = v11 * 0.5;
    PKFloatRoundToPixel(v9, v10);
    v12 = v13;
  }

  v14 = 8.0;
  v15 = 16.0;
  if (!v8)
  {
    v15 = 8.0;
  }

  if (v7)
  {
    v14 = 12.0;
  }

  v16 = v14 + v15;
  [(UILabel *)self->_labelTitle sizeThatFits:v11, height];
  v18 = v16 + v17 + 7.0;
  [(UILabel *)self->_labelRewardsSummary sizeThatFits:v11, height];
  v20 = v18 + v19 + 7.0;
  [(PKSpendingSummaryChartView *)self->_chartView sizeThatFits:v12, height];
  v22 = v20 + v21;
  v23 = width;
  result.height = v22;
  result.width = v23;
  return result;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = self->_title;
  v9 = titleCopy;
  titleCopy2 = title;
  if (titleCopy2 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !titleCopy2)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:titleCopy2];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_title, title);
    [(UILabel *)self->_labelTitle setText:self->_title];
    [(PKCreditActivityCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setRewardsSummary:(id)summary
{
  summaryCopy = summary;
  rewardsSummary = self->_rewardsSummary;
  v9 = summaryCopy;
  v7 = rewardsSummary;
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
    objc_storeStrong(&self->_rewardsSummary, summary);
    [(UILabel *)self->_labelRewardsSummary setText:self->_rewardsSummary];
    [(PKCreditActivityCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setRewardsSummaryTextColor:(id)color
{
  colorCopy = color;
  textColor = [(UILabel *)self->_labelRewardsSummary textColor];
  v5 = PKEqualObjects();

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_labelRewardsSummary setTextColor:colorCopy];
  }
}

@end