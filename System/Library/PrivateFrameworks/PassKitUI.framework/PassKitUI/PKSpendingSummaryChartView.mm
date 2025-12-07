@interface PKSpendingSummaryChartView
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKSpendingSummaryChartView)initWithFrame:(CGRect)frame;
- (void)_configureBarView:(id)view smallContext:(BOOL)context;
- (void)configureWithSummary:(id)summary presentationStyle:(unint64_t)style;
- (void)layoutSubviews;
- (void)setBlurDisabled:(BOOL)disabled;
- (void)setPrioritizeLegendPlacementUI:(BOOL)i;
- (void)setShowLegendGraph:(BOOL)graph;
- (void)setShowLegendLabels:(BOOL)labels;
- (void)setShowPlaceholders:(BOOL)placeholders;
@end

@implementation PKSpendingSummaryChartView

- (PKSpendingSummaryChartView)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = PKSpendingSummaryChartView;
  v3 = [(PKSpendingSummaryChartView *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = *MEMORY[0x1E69DDD10];
    v5 = *MEMORY[0x1E69DDC70];
    v6 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD10], *MEMORY[0x1E69DDC70]);
    fontForLabels = v3->_fontForLabels;
    v3->_fontForLabels = v6;

    v8 = PKFontForDefaultDesign(v4, v5);
    fontForValues = v3->_fontForValues;
    v3->_fontForValues = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    legendLabels = v3->_legendLabels;
    v3->_legendLabels = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    bars = v3->_bars;
    v3->_bars = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    horizontalAxis = v3->_horizontalAxis;
    v3->_horizontalAxis = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
    valueLabels = v3->_valueLabels;
    v3->_valueLabels = v16;

    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    currentCalendar = v3->_currentCalendar;
    v3->_currentCalendar = currentCalendar;

    v3->_isCompactUI = PKUIGetMinScreenWidthType() == 0;
  }

  return v3;
}

- (void)configureWithSummary:(id)summary presentationStyle:(unint64_t)style
{
  summaryCopy = summary;
  objc_storeStrong(&self->_summary, summary);
  self->_chartMaxAmount = 0.0;
  self->_groupsMaxAmount = 0.0;
  self->_presentationStyle = style;
  totalSpending = [summaryCopy totalSpending];
  currency = [totalSpending currency];

  summaryType = [summaryCopy summaryType];
  if (summaryType == 2)
  {
    v63 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v63 setLocalizedDateFormatFromTemplate:@"MMM"];
    v61 = 0;
    goto LABEL_9;
  }

  if (summaryType == 1)
  {
    v61 = objc_alloc_init(MEMORY[0x1E696AB88]);
    [v61 setDateTemplate:@"d"];
    v63 = 0;
LABEL_9:
    v10 = 4;
    goto LABEL_13;
  }

  if (summaryType)
  {
    v61 = 0;
    v63 = 0;
    [summaryCopy spendingsPerCalendarUnit];
    goto LABEL_14;
  }

  v63 = objc_alloc_init(MEMORY[0x1E696AB78]);
  if (self->_isCompactUI || self->_prioritizeLegendPlacement)
  {
    v9 = @"EEEEE";
  }

  else
  {
    v9 = @"EEE";
  }

  [v63 setLocalizedDateFormatFromTemplate:v9];
  v61 = 0;
  v10 = 3;
LABEL_13:
  [summaryCopy spendingsPerCalendarUnit];
  v11 = LABEL_14:;
  v65 = v11;
  if ([v11 count])
  {
    v12 = 0;
    v13 = *MEMORY[0x1E695F058];
    v14 = *(MEMORY[0x1E695F058] + 8);
    v15 = *(MEMORY[0x1E695F058] + 16);
    v16 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v17 = [v11 objectAtIndex:v12];
      if ([(NSMutableArray *)self->_legendLabels count]<= v12 || ([(NSMutableArray *)self->_legendLabels objectAtIndex:v12], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v13, v14, v15, v16}];
        [v18 setNumberOfLines:1];
        [v18 setAdjustsFontSizeToFitWidth:1];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v18 setTextColor:secondaryLabelColor];

        [(NSMutableArray *)self->_legendLabels addObject:v18];
        [(PKSpendingSummaryChartView *)self addSubview:v18];
      }

      [v18 setFont:self->_fontForLabels];
      [v18 setHidden:0];
      startDate = [v17 startDate];
      summaryType2 = [summaryCopy summaryType];
      if (!summaryType2 || summaryType2 == 2)
      {
        v25 = [v63 stringFromDate:startDate];
        pk_uppercaseFirstStringForPreferredLocale = [v25 pk_uppercaseFirstStringForPreferredLocale];
        [v18 setText:pk_uppercaseFirstStringForPreferredLocale];
      }

      else
      {
        if (summaryType2 != 1)
        {
          goto LABEL_28;
        }

        isCompactUI = self->_isCompactUI;
        v23 = startDate;
        if (!isCompactUI)
        {
          endDate = [v17 endDate];
          v23 = endDate;
        }

        v24 = [v61 stringFromDate:startDate toDate:v23];
        [v18 setText:v24];

        v25 = endDate;
        if (isCompactUI)
        {
          goto LABEL_28;
        }
      }

LABEL_28:
      if ([(NSMutableArray *)self->_bars count]<= v12 || ([(NSMutableArray *)self->_bars objectAtIndex:v12], (v27 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v27 = [[PKSegmentedBarView alloc] initWithFrame:v13, v14, v15, v16];
        [(PKSpendingSummaryChartView *)self _configureBarView:v27 smallContext:self->_showPlaceholders];
        [(PKSegmentedBarView *)v27 setShowPlaceholder:self->_showPlaceholders];
        [(PKSegmentedBarView *)v27 setBlurDisabled:self->_blurDisabled];
        [(NSMutableArray *)self->_bars addObject:v27];
        [(PKSpendingSummaryChartView *)self addSubview:v27];
      }

      [(PKSegmentedBarView *)v27 setHidden:0];
      totalSpending2 = [v17 totalSpending];
      amount = [totalSpending2 amount];
      [amount floatValue];
      v31 = v30;

      if (self->_groupsMaxAmount < v31)
      {
        self->_groupsMaxAmount = v31;
      }

      ++v12;
      v11 = v65;
    }

    while (v12 < [v65 count]);
  }

  groupsMaxAmount = self->_groupsMaxAmount;
  if (groupsMaxAmount <= 0.0)
  {
    previousMaxAmount = [summaryCopy previousMaxAmount];

    if (previousMaxAmount)
    {
      previousMaxAmount2 = [summaryCopy previousMaxAmount];
      amount2 = [previousMaxAmount2 amount];
      [amount2 floatValue];
      self->_chartMaxAmount = (10 * ((llroundf(v37) + 10) / 10));
    }

    else if (([summaryCopy isLoading] & 1) == 0)
    {
      self->_chartMaxAmount = 10.0;
    }
  }

  else
  {
    v33 = groupsMaxAmount;
    self->_chartMaxAmount = (10 * ((llroundf(v33) + 10) / 10));
  }

  v38 = 0;
  chartMaxAmount = self->_chartMaxAmount;
  if (chartMaxAmount <= 50.0)
  {
    v40 = 3;
  }

  else
  {
    v40 = v60;
  }

  self->_axisCount = 2 * v40 - 1;
  v41 = chartMaxAmount / (v40 - 1);
  v42 = *MEMORY[0x1E695F058];
  v43 = *(MEMORY[0x1E695F058] + 8);
  v44 = *(MEMORY[0x1E695F058] + 16);
  v45 = *(MEMORY[0x1E695F058] + 24);
  v46 = 0.0;
  do
  {
    if ([(NSMutableArray *)self->_horizontalAxis count]<= v38 || ([(NSMutableArray *)self->_horizontalAxis objectAtIndex:v38], (v47 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v47 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v42, v43, v44, v45}];
      [(NSMutableArray *)self->_horizontalAxis addObject:v47];
      [(PKSpendingSummaryChartView *)self addSubview:v47];
    }

    [v47 setHidden:0];
    if (v38)
    {
      systemGray5Color = [MEMORY[0x1E69DC888] systemGray5Color];
      [v47 setBackgroundColor:systemGray5Color];
    }

    else
    {
      systemGray3Color = [MEMORY[0x1E69DC888] systemGray3Color];
      [v47 setBackgroundColor:systemGray3Color];

      if ([(NSMutableArray *)self->_valueLabels count]<= v38 >> 1 || ([(NSMutableArray *)self->_valueLabels objectAtIndex:v38 >> 1], (systemGray5Color = objc_claimAutoreleasedReturnValue()) == 0))
      {
        systemGray5Color = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v42, v43, v44, v45}];
        [systemGray5Color setNumberOfLines:1];
        [systemGray5Color setAdjustsFontSizeToFitWidth:1];
        [systemGray5Color setMinimumScaleFactor:0.5];
        [systemGray5Color setBaselineAdjustment:1];
        [systemGray5Color setFont:self->_fontForValues];
        secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [systemGray5Color setTextColor:secondaryLabelColor2];

        [(NSMutableArray *)self->_valueLabels addObject:systemGray5Color];
        [(PKSpendingSummaryChartView *)self addSubview:systemGray5Color];
      }

      [systemGray5Color setHidden:self->_chartMaxAmount <= 0.0];
      if (currency)
      {
        v51 = [objc_alloc(MEMORY[0x1E696AB90]) initWithDouble:round(v46)];
        v52 = PKCurrencyAmountCreate(v51, currency);
        minimalFormattedStringValue = [v52 minimalFormattedStringValue];
        [systemGray5Color setText:minimalFormattedStringValue];
      }

      else
      {
        [systemGray5Color setText:0];
      }

      if ((v38 >> 1) + 2 == v40)
      {
        v46 = self->_chartMaxAmount;
      }

      else
      {
        v46 = v41 + v46;
      }
    }

    ++v38;
  }

  while (v38 < self->_axisCount);
  for (i = [v65 count]; i < -[NSMutableArray count](self->_legendLabels, "count"); ++i)
  {
    v55 = [(NSMutableArray *)self->_legendLabels objectAtIndex:i];
    [v55 setHidden:1];

    v56 = [(NSMutableArray *)self->_bars objectAtIndex:i];
    [v56 setHidden:1];
  }

  for (j = self->_axisCount; j < [(NSMutableArray *)self->_horizontalAxis count]; ++j)
  {
    v58 = [(NSMutableArray *)self->_horizontalAxis objectAtIndex:j];
    [v58 setHidden:1];
  }

  while (v40 < [(NSMutableArray *)self->_valueLabels count])
  {
    v59 = [(NSMutableArray *)self->_valueLabels objectAtIndex:v40];
    [v59 setHidden:1];

    ++v40;
  }

  [(PKSpendingSummaryChartView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v97.receiver = self;
  v97.super_class = PKSpendingSummaryChartView;
  [(PKSpendingSummaryChartView *)&v97 layoutSubviews];
  [(PKSpendingSummaryChartView *)self bounds];
  v6 = v5;
  v8 = v7;
  memset(&slice, 0, sizeof(slice));
  *&remainder.origin.x = v3.n128_u64[0];
  *&remainder.origin.y = v4.n128_u64[0];
  remainder.size.width = v5;
  remainder.size.height = v7;
  v9 = MEMORY[0x1E695F058];
  if (self->_showLegendGraph)
  {
    v3.n128_u64[0] = 0x3FB999999999999ALL;
    v4.n128_u64[0] = 0x3FC3333333333333;
    if (self->_isCompactUI)
    {
      v3.n128_f64[0] = 0.15;
    }

    v3.n128_f64[0] = v5 * v3.n128_f64[0];
    PKFloatRoundToPixel(v3, v4);
    CGRectDivide(remainder, &slice, &remainder, v10, CGRectMaxXEdge);
    height = remainder.size.height;
    x = slice.origin.x;
    width = slice.size.width;
    if (self->_isCompactUI)
    {
      v12 = 2.0;
    }

    else
    {
      v12 = 7.0;
    }

    v13 = remainder.origin.x;
    y = remainder.origin.y;
    v15 = remainder.size.width;
    CGRectDivide(*(&height - 3), &slice, &remainder, v12, CGRectMaxXEdge);
    if (self->_showLegendGraph)
    {
      CGRectDivide(remainder, &slice, &remainder, 8.0, CGRectMinYEdge);
    }
  }

  else
  {
    x = *MEMORY[0x1E695F058];
    width = 0.0;
  }

  if (self->_showLegendLabels)
  {
    firstObject = [(NSMutableArray *)self->_legendLabels firstObject];
    [firstObject sizeThatFits:{v6, v8}];
    v18 = v17;

    CGRectDivide(remainder, &slice, &remainder, v18, CGRectMaxYEdge);
    v83 = slice.size.height;
    v84 = slice.size.width;
    CGRectDivide(remainder, &slice, &remainder, 7.0, CGRectMaxYEdge);
  }

  else
  {
    v83 = *(v9 + 24);
    v84 = *(v9 + 16);
  }

  v19 = remainder.size.height;
  v85 = remainder.size.width;
  v86 = remainder.origin.x;
  v78 = remainder.origin.y;
  CGRectGetMaxY(remainder);
  summaryType = [(PKSpendingSummary *)self->_summary summaryType];
  v81 = summaryType;
  v21 = 20.0;
  if (summaryType == 2)
  {
    v21 = 12.0;
  }

  v22 = 10.0;
  if (summaryType == 2)
  {
    v22 = 6.0;
  }

  if (self->_showLegendGraph)
  {
    v23 = v21;
  }

  else
  {
    v23 = v22;
  }

  v24 = v23 * 0.5;
  spendingsPerCalendarUnit = [(PKSpendingSummary *)self->_summary spendingsPerCalendarUnit];
  v25 = [spendingsPerCalendarUnit count];
  v27.n128_u64[0] = 0;
  v28 = 0.0;
  if (self->_prioritizeLegendPlacement && self->_showLegendLabels)
  {
    firstObject2 = [(NSMutableArray *)self->_legendLabels firstObject];
    [firstObject2 sizeThatFits:{v84, v83}];
    v31 = v30 * 0.5;

    v28 = fmax(v31 - v24, 0.0);
    lastObject = [(NSMutableArray *)self->_legendLabels lastObject];
    [lastObject sizeThatFits:{v84, v83}];
    v34 = v33 * 0.5;

    v27.n128_f64[0] = fmax(v34 - v24, 0.0);
  }

  if (self->_showLegendGraph)
  {
    v35 = 5.0;
  }

  else
  {
    v35 = 0.0;
  }

  v26.n128_u64[0] = -2.0;
  v27.n128_f64[0] = v85 - (v27.n128_f64[0] + v28) - v23 + v35 * -2.0;
  PKFloatRoundToPixel(v27, v26);
  v37 = v36;
  v38.n128_f64[0] = v86 + v24 + v28;
  PKFloatRoundToPixel(v38, v39);
  v41 = v40;
  v94[0] = 0;
  v94[1] = v94;
  v94[2] = 0x2020000000;
  v94[3] = 0;
  objc_initWeak(&location, self);
  presentationStyle = self->_presentationStyle;
  v88 = presentationStyle < 4;
  summaryType2 = [(PKSpendingSummary *)self->_summary summaryType];
  if (v25)
  {
    v45 = 0;
    v46 = v37 / (v25 - 1);
    v47 = v41 + v35;
    v87 = 0xCu >> (presentationStyle & 0xF);
    v48 = v88 & (2u >> (presentationStyle & 0xF));
    do
    {
      if (self->_showLegendLabels)
      {
        v49 = [(NSMutableArray *)self->_legendLabels objectAtIndex:v45];
        [v49 sizeThatFits:{v84, v83}];
        v51.n128_f64[0] = v47 + v50 * -0.5;
        PKFloatRoundToPixel(v51, v52);
        [v49 setFrame:?];
        v53 = v45 & 1;
        if ((v45 & 1) != 0 && v81 != 2)
        {
          v53 = summaryType2 == 1 && self->_prioritizeLegendPlacement;
        }

        [v49 setHidden:v53];
      }

      v54 = [spendingsPerCalendarUnit objectAtIndex:v45];
      v55 = [[PKSpendingSummaryChartBarConfiguration alloc] initWithSummary:v54];
      v56 = [(NSMutableArray *)self->_bars objectAtIndex:v45];
      v59 = 0.0;
      if (self->_chartMaxAmount > 0.0)
      {
        [(PKSpendingSummaryChartBarConfiguration *)v55 totalValue];
        if (v60.n128_f64[0] > 0.0)
        {
          v61.n128_u64[0] = *&self->_chartMaxAmount;
          v60.n128_f64[0] = v19 * (v60.n128_f64[0] / v61.n128_f64[0]);
          PKFloatRoundToPixel(v60, v61);
          v59 = v62;
        }

        [v56 minimumLength];
        v58.n128_f64[0] = fmin(v59, v19);
        v59 = fmax(v58.n128_f64[0], v57.n128_f64[0]);
      }

      v57.n128_f64[0] = v47 - v24;
      PKFloatRoundToPixel(v57, v58);
      [v56 setFrame:?];
      layer = [v56 layer];
      [layer setOpacity:0.0];

      v90[0] = MEMORY[0x1E69E9820];
      v90[1] = 3221225472;
      v90[2] = __44__PKSpendingSummaryChartView_layoutSubviews__block_invoke;
      v90[3] = &unk_1E8021300;
      objc_copyWeak(v91, &location);
      v91[1] = v25;
      v92 = v48;
      v90[4] = self;
      v90[5] = v94;
      [v56 configureWithBarConfiguration:v55 axis:1 maximumLength:v88 & v87 barLength:v90 synchronous:v19 completion:v59];
      [(PKSpendingSummaryChartView *)self bringSubviewToFront:v56];
      v47 = v46 + v47;
      objc_destroyWeak(v91);

      ++v45;
    }

    while (v25 != v45);
  }

  v43.n128_f64[0] = v19 / (self->_axisCount - 1);
  PKFloatRoundToPixel(v43, v44);
  v65 = v64;
  v66 = PKUIPixelLength();
  if (self->_showLegendGraph && self->_axisCount)
  {
    v67 = v66;
    v68 = 0;
    v69 = v78 + v19;
    do
    {
      v70 = [(NSMutableArray *)self->_horizontalAxis objectAtIndex:v68];
      [v70 setFrame:{v86, v69 - v67, v85, v67}];
      if ((v68 & 1) == 0 && self->_chartMaxAmount > 0.0)
      {
        v71 = [(NSMutableArray *)self->_valueLabels objectAtIndex:v68 >> 1];
        [v71 sizeThatFits:{width, 1.79769313e308}];
        v73 = v72;
        v75 = v74.n128_f64[0];
        v76.n128_f64[0] = v69 + v74.n128_f64[0] * -0.5;
        PKFloatRoundToPixel(v76, v74);
        [v71 setFrame:{x + 2.0, v77, fmin(width, v73), v75}];
      }

      v69 = v69 - v65;

      ++v68;
    }

    while (v68 < self->_axisCount);
  }

  objc_destroyWeak(&location);
  _Block_object_dispose(v94, 8);
}

void __44__PKSpendingSummaryChartView_layoutSubviews__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (++*(*(*(a1 + 40) + 8) + 24) == *(a1 + 56))
    {
      if (*(a1 + 64) == 1 && *(*(a1 + 32) + 510) == 1)
      {
        v3 = [MEMORY[0x1E69BC7A0] createDefaultFactory];
      }

      else
      {
        v3 = 0;
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __44__PKSpendingSummaryChartView_layoutSubviews__block_invoke_2;
      v11[3] = &unk_1E80183C0;
      v11[4] = *(a1 + 32);
      [v3 setAnimationDelayHandler:v11];
      if (*(a1 + 56))
      {
        v4 = 0;
        do
        {
          v5 = [WeakRetained[54] objectAtIndex:v4];
          v6 = [v5 layer];
          [v6 opacity];
          if (*&v7 != 1.0)
          {
            v8 = *&v7;
            LODWORD(v7) = 1.0;
            [v6 setOpacity:v7];
            if (v3)
            {
              v9 = [v3 springAnimationForView:v5 withKeyPath:@"opacity"];
              [v9 pkui_updateForAdditiveAnimationFromScalar:v8 toScalar:1.0];
              v10 = [v6 pkui_addAdditiveAnimation:v9];
            }
          }

          ++v4;
        }

        while (v4 < *(a1 + 56));
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  fits.width = 0.26;
  fits.height = 0.55;
  if (self->_showLegendGraph)
  {
    fits.width = 0.55;
  }

  fits.width = width * fits.width;
  PKFloatRoundToPixel(fits, *&fits.height);
  v5 = v4;
  v6 = width;
  result.height = v5;
  result.width = v6;
  return result;
}

- (void)setShowLegendLabels:(BOOL)labels
{
  if (self->_showLegendLabels == !labels)
  {
    self->_showLegendLabels = labels;
    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)setShowLegendGraph:(BOOL)graph
{
  if (self->_showLegendGraph == !graph)
  {
    self->_showLegendGraph = graph;
    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)setShowPlaceholders:(BOOL)placeholders
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_showPlaceholders == !placeholders)
  {
    placeholdersCopy = placeholders;
    self->_showPlaceholders = placeholders;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_bars;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(PKSpendingSummaryChartView *)self _configureBarView:*(*(&v10 + 1) + 8 * v9++) smallContext:placeholdersCopy, v10];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)setPrioritizeLegendPlacementUI:(BOOL)i
{
  if (self->_prioritizeLegendPlacement == !i)
  {
    self->_prioritizeLegendPlacement = i;
    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)setBlurDisabled:(BOOL)disabled
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_blurDisabled == !disabled)
  {
    disabledCopy = disabled;
    self->_blurDisabled = disabled;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_bars;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) setBlurDisabled:{disabledCopy, v10}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }

    [(PKSpendingSummaryChartView *)self setNeedsLayout];
  }
}

- (void)_configureBarView:(id)view smallContext:(BOOL)context
{
  contextCopy = context;
  viewCopy = view;
  [viewCopy setShowPlaceholder:contextCopy];
  [viewCopy setUseSmallCornerRadius:contextCopy];
  [viewCopy setRoundBaselineCorners:contextCopy];
}

@end