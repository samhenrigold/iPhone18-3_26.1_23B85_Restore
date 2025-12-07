@interface SKUIReviewsHistogramView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSArray)segmentedControlTitles;
- (SKUIReviewsHistogramView)initWithClientContext:(id)context;
- (UIControl)segmentedControl;
- (id)_countLabelString;
- (id)_histogramImageForValues:(id)values;
- (int64_t)selectedSegmentIndex;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setHistogramValues:(id)values;
- (void)setNumberOfUserRatings:(int64_t)ratings;
- (void)setSegmentedControlTitles:(id)titles;
- (void)setSelectedSegmentIndex:(int64_t)index;
- (void)setTitle:(id)title;
- (void)setUserRating:(double)rating;
- (void)setVersionString:(id)string;
@end

@implementation SKUIReviewsHistogramView

- (SKUIReviewsHistogramView)initWithClientContext:(id)context
{
  contextCopy = context;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIReviewsHistogramView initWithClientContext:];
  }

  v80.receiver = self;
  v80.super_class = SKUIReviewsHistogramView;
  v6 = [(SKUIReviewsHistogramView *)&v80 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clientContext, context);
    if (SKUIUserInterfaceIdiom(v7->_clientContext) == 1)
    {
      v8 = objc_alloc_init(SKUIStarRatingControl);
      starRatingControl = v7->_starRatingControl;
      v7->_starRatingControl = v8;

      v10 = v7->_starRatingControl;
      v11 = MEMORY[0x277D755B8];
      v14 = SKUIBundle(v12, v13);
      v15 = [v11 imageNamed:@"LightRateControl" inBundle:v14];
      [(SKUIStarRatingControl *)v10 setEmptyStarsImage:v15];

      v16 = v7->_starRatingControl;
      v17 = MEMORY[0x277D755B8];
      v20 = SKUIBundle(v18, v19);
      v21 = [v17 imageNamed:@"RateControlFilled" inBundle:v20];
      [(SKUIStarRatingControl *)v16 setFilledStarsImage:v21];

      [(SKUIStarRatingControl *)v7->_starRatingControl sizeToFit];
      [(SKUIReviewsHistogramView *)v7 addSubview:v7->_starRatingControl];
      v22 = objc_alloc_init(MEMORY[0x277D756B8]);
      p_starRatingControlLabel = &v7->_starRatingControlLabel;
      starRatingControlLabel = v7->_starRatingControlLabel;
      v7->_starRatingControlLabel = v22;

      v25 = v7->_starRatingControlLabel;
      backgroundColor = [(SKUIReviewsHistogramView *)v7 backgroundColor];
      [(UILabel *)v25 setBackgroundColor:backgroundColor];

      v27 = v7->_starRatingControlLabel;
      v28 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
      [(UILabel *)v27 setFont:v28];

      v29 = v7->_starRatingControlLabel;
      secondaryTextColor = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
      if (secondaryTextColor)
      {
        [(UILabel *)v29 setTextColor:secondaryTextColor];
      }

      else
      {
        v35 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
        [(UILabel *)v29 setTextColor:v35];
      }

      v36 = *p_starRatingControlLabel;
      clientContext = v7->_clientContext;
      v38 = 0x277D74000;
      if (clientContext)
      {
        [(SKUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_TAP_TO_RATE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REVIEWS_TAP_TO_RATE" inBundles:0 inTable:@"ProductPage"];
      }
      v50 = ;
      [v36 setText:v50];

      [*p_starRatingControlLabel sizeToFit];
    }

    else
    {
      v31 = [MEMORY[0x277D75220] buttonWithType:1];
      appSupportButton = v7->_appSupportButton;
      v7->_appSupportButton = v31;

      v33 = v7->_appSupportButton;
      v34 = v7->_clientContext;
      if (v34)
      {
        [(SKUIClientContext *)v34 localizedStringForKey:@"REVIEWS_HEADER_BUTTON_APP_SUPPORT" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REVIEWS_HEADER_BUTTON_APP_SUPPORT" inBundles:0 inTable:@"ProductPage"];
      }
      v39 = ;
      [(UIButton *)v33 setTitle:v39 forState:0];

      titleLabel = [(UIButton *)v7->_appSupportButton titleLabel];
      v41 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
      [titleLabel setFont:v41];

      titleLabel2 = [(UIButton *)v7->_appSupportButton titleLabel];
      [titleLabel2 setAdjustsFontSizeToFitWidth:1];

      titleLabel3 = [(UIButton *)v7->_appSupportButton titleLabel];
      [titleLabel3 setMinimumScaleFactor:0.833333333];

      [(UIButton *)v7->_appSupportButton sizeToFit];
      v44 = v7->_appSupportButton;
      secondaryTextColor2 = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
      [(UIButton *)v44 setTintColor:secondaryTextColor2];

      [(SKUIReviewsHistogramView *)v7 addSubview:v7->_appSupportButton];
      v46 = [MEMORY[0x277D75220] buttonWithType:1];
      p_starRatingControlLabel = &v7->_writeAReviewButton;
      writeAReviewButton = v7->_writeAReviewButton;
      v7->_writeAReviewButton = v46;

      v48 = v7->_writeAReviewButton;
      v49 = v7->_clientContext;
      v38 = 0x277D74000uLL;
      if (v49)
      {
        [(SKUIClientContext *)v49 localizedStringForKey:@"REVIEWS_HEADER_BUTTON_WRITE_A_REVIEW_IPHONE" inTable:@"ProductPage"];
      }

      else
      {
        [SKUIClientContext localizedStringForKey:@"REVIEWS_HEADER_BUTTON_WRITE_A_REVIEW_IPHONE" inBundles:0 inTable:@"ProductPage"];
      }
      v51 = ;
      [(UIButton *)v48 setTitle:v51 forState:0];

      titleLabel4 = [*p_starRatingControlLabel titleLabel];
      v53 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
      [titleLabel4 setFont:v53];

      titleLabel5 = [*p_starRatingControlLabel titleLabel];
      [titleLabel5 setAdjustsFontSizeToFitWidth:1];

      titleLabel6 = [*p_starRatingControlLabel titleLabel];
      [titleLabel6 setMinimumScaleFactor:0.833333333];

      [*p_starRatingControlLabel sizeToFit];
      v56 = *p_starRatingControlLabel;
      secondaryTextColor3 = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
      [v56 setTintColor:secondaryTextColor3];
    }

    [(SKUIReviewsHistogramView *)v7 addSubview:*p_starRatingControlLabel];
    v58 = objc_alloc(MEMORY[0x277D755E8]);
    v59 = [(SKUIReviewsHistogramView *)v7 _histogramImageForValues:&unk_2828D2F90];
    v60 = [v58 initWithImage:v59];
    histogramImageView = v7->_histogramImageView;
    v7->_histogramImageView = v60;

    [(UIImageView *)v7->_histogramImageView sizeToFit];
    [(SKUIReviewsHistogramView *)v7 addSubview:v7->_histogramImageView];
    v62 = objc_alloc(MEMORY[0x277D755E8]);
    v63 = [SKUIRatingStarsCache cacheWithProperties:1];
    v64 = [v63 ratingStarsImageForRating:0.0];
    v65 = [v62 initWithImage:v64];
    userRatingStarsView = v7->_userRatingStarsView;
    v7->_userRatingStarsView = v65;

    [(SKUIReviewsHistogramView *)v7 addSubview:v7->_userRatingStarsView];
    v67 = objc_alloc_init(MEMORY[0x277D756B8]);
    countLabel = v7->_countLabel;
    v7->_countLabel = v67;

    v69 = v7->_countLabel;
    secondaryTextColor4 = [(SKUIColorScheme *)v7->_colorScheme secondaryTextColor];
    if (secondaryTextColor4)
    {
      [(UILabel *)v69 setTextColor:secondaryTextColor4];
    }

    else
    {
      v71 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
      [(UILabel *)v69 setTextColor:v71];
    }

    [(UILabel *)v7->_countLabel setNumberOfLines:0];
    v72 = v7->_countLabel;
    v73 = [*(v38 + 768) systemFontOfSize:14.0];
    [(UILabel *)v72 setFont:v73];

    [(SKUIReviewsHistogramView *)v7 addSubview:v7->_countLabel];
    [(SKUIReviewsHistogramView *)v7 setNumberOfUserRatings:0];
    v74 = objc_alloc_init(MEMORY[0x277D75D18]);
    bottomSeparatorView = v7->_bottomSeparatorView;
    v7->_bottomSeparatorView = v74;

    v76 = v7->_bottomSeparatorView;
    v77 = objc_msgSend_primaryTextColor(v7->_colorScheme);
    if (v77)
    {
      [(UIView *)v76 setBackgroundColor:v77];
    }

    else
    {
      v78 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v76 setBackgroundColor:v78];
    }

    [(SKUIReviewsHistogramView *)v7 addSubview:v7->_bottomSeparatorView];
  }

  return v7;
}

- (UIControl)segmentedControl
{
  segmentedControl = self->_segmentedControl;
  if (!segmentedControl)
  {
    v4 = objc_alloc(MEMORY[0x277D75A08]);
    v5 = [v4 initWithItems:MEMORY[0x277CBEBF8]];
    v6 = self->_segmentedControl;
    self->_segmentedControl = v5;

    v7 = self->_segmentedControl;
    secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UISegmentedControl *)v7 setTintColor:secondaryTextColor];
    }

    else
    {
      v9 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
      [(UISegmentedControl *)v7 setTintColor:v9];
    }

    segmentedControl = self->_segmentedControl;
  }

  return segmentedControl;
}

- (NSArray)segmentedControlTitles
{
  array = [MEMORY[0x277CBEB18] array];
  if ([(UISegmentedControl *)self->_segmentedControl numberOfSegments])
  {
    v4 = 0;
    do
    {
      v5 = [(UISegmentedControl *)self->_segmentedControl titleForSegmentAtIndex:v4];
      if (v5)
      {
        [array addObject:v5];
      }

      ++v4;
    }

    while (v4 < [(UISegmentedControl *)self->_segmentedControl numberOfSegments]);
  }

  return array;
}

- (int64_t)selectedSegmentIndex
{
  segmentedControl = [(SKUIReviewsHistogramView *)self segmentedControl];
  selectedSegmentIndex = [segmentedControl selectedSegmentIndex];

  return selectedSegmentIndex;
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v24 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    countLabel = self->_countLabel;
    secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)countLabel setTextColor:secondaryTextColor];
    }

    else
    {
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
      [(UILabel *)countLabel setTextColor:v8];
    }

    starRatingControlLabel = self->_starRatingControlLabel;
    secondaryTextColor2 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UILabel *)starRatingControlLabel setTextColor:secondaryTextColor2];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)starRatingControlLabel setTextColor:blackColor];
    }

    titleLabel = self->_titleLabel;
    secondaryTextColor3 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor3)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor3];
    }

    else
    {
      blackColor2 = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor2];
    }

    histogramImageView = self->_histogramImageView;
    v16 = [(SKUIReviewsHistogramView *)self _histogramImageForValues:self->_histogramValues];
    [(UIImageView *)histogramImageView setImage:v16];

    segmentedControl = self->_segmentedControl;
    secondaryTextColor4 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor4)
    {
      [(UISegmentedControl *)segmentedControl setTintColor:secondaryTextColor4];
    }

    else
    {
      v19 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
      [(UISegmentedControl *)segmentedControl setTintColor:v19];
    }

    appSupportButton = self->_appSupportButton;
    secondaryTextColor5 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    [(UIButton *)appSupportButton setTintColor:secondaryTextColor5];

    writeAReviewButton = self->_writeAReviewButton;
    secondaryTextColor6 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    [(UIButton *)writeAReviewButton setTintColor:secondaryTextColor6];

    schemeCopy = v24;
  }
}

- (void)setHistogramValues:(id)values
{
  valuesCopy = values;
  if (!-[NSArray isEqualToArray:](self->_histogramValues, "isEqualToArray:") && [valuesCopy count] == 5)
  {
    objc_storeStrong(&self->_histogramValues, values);
    histogramImageView = self->_histogramImageView;
    v6 = [(SKUIReviewsHistogramView *)self _histogramImageForValues:self->_histogramValues];
    [(UIImageView *)histogramImageView setImage:v6];
  }
}

- (void)setNumberOfUserRatings:(int64_t)ratings
{
  self->_numberOfUserRatings = ratings;
  countLabel = self->_countLabel;
  _countLabelString = [(SKUIReviewsHistogramView *)self _countLabelString];
  [(UILabel *)countLabel setText:_countLabelString];

  [(SKUIReviewsHistogramView *)self setNeedsLayout];
}

- (void)setSegmentedControlTitles:(id)titles
{
  titlesCopy = titles;
  segmentedControl = [(SKUIReviewsHistogramView *)self segmentedControl];
  [segmentedControl removeAllSegments];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SKUIReviewsHistogramView_setSegmentedControlTitles___block_invoke;
  v8[3] = &unk_2781FDB98;
  v9 = segmentedControl;
  v6 = segmentedControl;
  [titlesCopy enumerateObjectsUsingBlock:v8];
  v7 = [titlesCopy count];

  if (v7)
  {
    [v6 sizeToFit];
    [(SKUIReviewsHistogramView *)self addSubview:v6];
  }

  else
  {
    [v6 removeFromSuperview];
  }
}

- (void)setSelectedSegmentIndex:(int64_t)index
{
  segmentedControl = [(SKUIReviewsHistogramView *)self segmentedControl];
  [segmentedControl setSelectedSegmentIndex:index];
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  if (text != titleCopy && (objc_msgSend_isEqualToString_(text) & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        backgroundColor = [(SKUIReviewsHistogramView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_titleLabel;
        secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v12 setTextColor:secondaryTextColor];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v12 setTextColor:blackColor];
        }

        [(SKUIReviewsHistogramView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIReviewsHistogramView *)self setNeedsLayout];
  }
}

- (void)setUserRating:(double)rating
{
  if (self->_userRating != rating)
  {
    self->_userRating = rating;
    userRatingStarsView = self->_userRatingStarsView;
    v6 = [SKUIRatingStarsCache cacheWithProperties:1];
    v5 = [v6 ratingStarsImageForRating:self->_userRating];
    [(UIImageView *)userRatingStarsView setImage:v5];
  }
}

- (void)setVersionString:(id)string
{
  if (self->_versionString != string)
  {
    v4 = [string copy];
    versionString = self->_versionString;
    self->_versionString = v4;

    countLabel = self->_countLabel;
    _countLabelString = [(SKUIReviewsHistogramView *)self _countLabelString];
    [(UILabel *)countLabel setText:_countLabelString];

    [(SKUIReviewsHistogramView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SKUIReviewsHistogramView *)self bounds];
  v4 = v3;
  v6 = v5;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v9 = v8;
    v11 = v10;
    [(UILabel *)self->_titleLabel setFrame:15.0, 11.0];
    v64.origin.x = 15.0;
    v64.origin.y = 11.0;
    v64.size.width = v9;
    v64.size.height = v11;
    v12 = CGRectGetMaxY(v64) + -4.0 + 19.0;
  }

  else
  {
    v12 = 15.0;
  }

  if ([(UISegmentedControl *)self->_segmentedControl isDescendantOfView:self])
  {
    [(UISegmentedControl *)self->_segmentedControl frame];
    v14 = v13;
    if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
    {
      v15 = 295.0;
    }

    else
    {
      currentDevice = [MEMORY[0x277D75418] currentDevice];
      if ([currentDevice userInterfaceIdiom] == 1)
      {
        v15 = 290.0;
      }

      else
      {
        mainScreen = [MEMORY[0x277D759A0] mainScreen];
        [mainScreen bounds];
        v15 = v18 + -30.0;
      }
    }

    [(UISegmentedControl *)self->_segmentedControl setFrame:15.0, v12, v15, v14];
    v65.origin.x = 15.0;
    v65.origin.y = v12;
    v65.size.width = v15;
    v65.size.height = v14;
    v12 = CGRectGetMaxY(v65) + 19.0;
  }

  if (self->_userRatingStarsView)
  {
    countLabel = self->_countLabel;
    if (countLabel)
    {
      [(UILabel *)countLabel frame];
      v20 = self->_countLabel;
      [(UIImageView *)self->_userRatingStarsView frame];
      [(UILabel *)v20 sizeThatFits:v4 + -45.0 - v21 + -9.0, 1.79769313e308];
      v23 = v22;
      v25 = v24;
      [(UIImageView *)self->_userRatingStarsView frame];
      v27 = v26 + 15.0 + 9.0;
      [(UILabel *)self->_countLabel setFrame:v27, (v12 + -4.0), v23, v25];
      v66.origin.x = v27;
      v66.origin.y = (v12 + -4.0);
      v66.size.width = v23;
      v66.size.height = v25;
      v28 = CGRectGetMaxY(v66) + -3.0;
      [(UIImageView *)self->_userRatingStarsView frame];
      [(UIImageView *)self->_userRatingStarsView setFrame:15.0, (v12 + 1.0)];
      v12 = v28 + 10.0;
    }
  }

  histogramImageView = self->_histogramImageView;
  if (histogramImageView)
  {
    [(UIImageView *)histogramImageView frame];
    v31 = v30;
    v33 = v32;
    [(UIImageView *)self->_histogramImageView setFrame:15.0, (v12 + -2.0)];
    v67.origin.x = 15.0;
    v67.origin.y = (v12 + -2.0);
    v67.size.width = v31;
    v67.size.height = v33;
    v12 = CGRectGetMaxY(v67) + 19.0 + -3.0;
  }

  if (self->_starRatingControl)
  {
    [(UILabel *)self->_countLabel frame];
    v61 = v12;
    v34 = CGRectGetMinY(v68) + -19.0;
    [(UIImageView *)self->_histogramImageView frame];
    MaxY = CGRectGetMaxY(v69);
    v36 = v4 * 0.5;
    v37 = floorf(v36);
    [(SKUIStarRatingControl *)self->_starRatingControl frame];
    v60 = v38;
    v40 = v39;
    [(UILabel *)self->_starRatingControlLabel frame];
    width = v70.size.width;
    v62 = v4;
    height = v70.size.height;
    v43 = v37 + 40.0;
    v44 = v6;
    v45 = MaxY - v34;
    v46 = (MaxY - v34 - v70.size.height) * 0.5;
    v47 = v34 + floorf(v46);
    v70.origin.x = v43;
    v70.origin.y = v47;
    MaxX = CGRectGetMaxX(v70);
    v49 = v45 - v40;
    v6 = v44;
    *&v49 = v49 * 0.5;
    v50 = v34 + floorf(*&v49);
    v12 = v61;
    [(SKUIStarRatingControl *)self->_starRatingControl setFrame:MaxX + 8.0, v50, v60, v40];
    v51 = height;
    v4 = v62;
    [(UILabel *)self->_starRatingControlLabel setFrame:v43, v47, width, v51];
  }

  if (self->_appSupportButton)
  {
    writeAReviewButton = self->_writeAReviewButton;
    if (writeAReviewButton)
    {
      v53 = (v4 + -30.0 + -10.0) * 0.5;
      v54 = floorf(v53);
      [(UIButton *)writeAReviewButton frame];
      [(UIButton *)self->_writeAReviewButton setFrame:15.0, (v12 + -11.0), v54];
      [(UIButton *)self->_appSupportButton frame];
      [(UIButton *)self->_appSupportButton setFrame:v4 + -15.0 - v54, (v12 + -11.0), v54];
    }
  }

  bottomSeparatorView = self->_bottomSeparatorView;
  if (bottomSeparatorView)
  {
    [(UIView *)bottomSeparatorView frame];
    mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen2 scale];
    v58 = 1.0 / v57;

    v59 = self->_bottomSeparatorView;

    [(UIView *)v59 setFrame:15.0, v6 - v58, v4 + -15.0, v58];
  }
}

- (void)setBackgroundColor:(id)color
{
  countLabel = self->_countLabel;
  colorCopy = color;
  [(UILabel *)countLabel setBackgroundColor:colorCopy];
  [(SKUIStarRatingControl *)self->_starRatingControl setBackgroundColor:colorCopy];
  [(UILabel *)self->_starRatingControlLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SKUIReviewsHistogramView;
  [(SKUIReviewsHistogramView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (SKUIUserInterfaceIdiom(self->_clientContext) == 1)
  {
    v5 = 136.0;
  }

  else
  {
    v5 = 168.0;
  }

  if ([(UISegmentedControl *)self->_segmentedControl isDescendantOfView:self])
  {
    [(UISegmentedControl *)self->_segmentedControl frame];
    v5 = v5 + v6 + 19.0;
  }

  countLabel = self->_countLabel;
  if (countLabel)
  {
    [(UIImageView *)self->_userRatingStarsView frame];
    [(UILabel *)countLabel sizeThatFits:width + -45.0 - v8 + -9.0, 1.79769313e308];
    v5 = v5 + v9 + -7.0;
  }

  v10 = width;
  v11 = v5;
  result.height = v11;
  result.width = v10;
  return result;
}

- (id)_histogramImageForValues:(id)values
{
  valuesCopy = values;
  selfCopy = self;
  v6 = SKUIUserInterfaceIdiom(self->_clientContext);
  mainScreen = &qword_215F3F000;
  if (v6 == 1)
  {
    v8 = 0;
    v9 = 295.0;
  }

  else
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice userInterfaceIdiom] == 1)
    {
      v8 = 0;
      v9 = 290.0;
    }

    else
    {
      mainScreen = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen bounds];
      v9 = v10 + -30.0;
      v8 = 1;
    }
  }

  v11 = [valuesCopy count] * 14.0;
  if (v8)
  {
  }

  v12 = v11;
  if (v6 != 1)
  {
  }

  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v15 = v14;
  v68.width = v9;
  v68.height = v12;
  UIGraphicsBeginImageContextWithOptions(v68, 0, v15);

  c = UIGraphicsGetCurrentContext();
  v16 = MEMORY[0x277D755B8];
  v18 = SKUIBundle(c, v17);
  v19 = [v16 imageNamed:@"SmallStarFull" inBundle:v18];

  v20 = objc_msgSend_primaryTextColor(selfCopy->_colorScheme);
  if (v20)
  {
    v21 = objc_msgSend_primaryTextColor(selfCopy->_colorScheme);
    v22 = SKUIColorWithAlpha(v21, 0.1);
    v23 = SKUITintedImage(v19, 0, v22);
  }

  else
  {
    v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
    v23 = SKUITintedImage(v19, 0, v21);
  }

  v24 = objc_msgSend_primaryTextColor(selfCopy->_colorScheme);
  if (v24)
  {
    v25 = SKUITintedImage(v19, 0, v24);
  }

  else
  {
    v26 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
    v25 = SKUITintedImage(v19, 0, v26);
  }

  [v19 size];
  v28 = v27;
  if ([valuesCopy count])
  {
    v29 = 0;
    v30 = (14.0 - v28) * 0.5;
    v31 = roundf(v30);
    do
    {
      if ([valuesCopy count])
      {
        v32 = 0;
        do
        {
          v33 = v32 + 1;
          if (v32 >= v29)
          {
            v34 = v25;
          }

          else
          {
            v34 = v23;
          }

          v35 = v32;
          v36 = v34;
          [v19 size];
          [v36 drawAtPoint:{v37 * v35, v31 + (v29 * 14.0)}];

          v38 = [valuesCopy count];
          v32 = v33;
        }

        while (v33 < v38);
      }

      ++v29;
    }

    while (v29 < [valuesCopy count]);
  }

  [v19 size];
  v40 = v39;
  v41 = [valuesCopy count];
  v42 = selfCopy;
  if (SKUIUserInterfaceIdiom(selfCopy->_clientContext) == 1)
  {
    v43 = 295.0;
    v44 = 424;
  }

  else
  {
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    if ([currentDevice2 userInterfaceIdiom] == 1)
    {
      v43 = 290.0;
    }

    else
    {
      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 bounds];
      v43 = v47 + -30.0;
    }

    v44 = 424;
  }

  if ([valuesCopy count])
  {
    v48 = 0;
    v49 = v40 * v41 + 9.0;
    v50 = v43 - v49;
    v51 = -1;
    do
    {
      v52 = [valuesCopy objectAtIndex:{objc_msgSend(valuesCopy, "count") + v51}];
      [v52 floatValue];
      v54 = v53;

      v66 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:v49 cornerRadius:{(v48 * 14.0) + 6.0, v50, 2.0, 2.0}];
      v55 = objc_msgSend_primaryTextColor(*(&v42->super.super.super.isa + v44));
      if (v55)
      {
        objc_msgSend_primaryTextColor(*(&v42->super.super.super.isa + v44));
        v57 = v56 = v44;
        v58 = SKUIColorWithAlpha(v57, 0.1);
        [v58 set];

        v42 = selfCopy;
      }

      else
      {
        [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.05];
        v57 = v56 = v44;
        [v57 set];
      }

      [v66 fill];
      CGContextSaveGState(c);
      v69.size.height = 2.0;
      v69.origin.x = v49;
      v69.origin.y = (v48 * 14.0) + 6.0;
      v69.size.width = v50 * v54;
      CGContextClipToRect(c, v69);
      v59 = objc_msgSend_primaryTextColor(*(&v42->super.super.super.isa + v56));
      v60 = v59;
      if (v59)
      {
        v44 = v56;
        [v59 set];
      }

      else
      {
        v61 = [MEMORY[0x277D75348] colorWithWhite:0.517647059 alpha:1.0];
        [v61 set];

        v44 = 424;
      }

      [v66 fill];
      CGContextRestoreGState(c);

      ++v48;
      --v51;
    }

    while (v48 < [valuesCopy count]);
  }

  v62 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v62;
}

- (id)_countLabelString
{
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v3 setNumberStyle:1];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numberOfUserRatings];
  v5 = [v3 stringFromNumber:v4];

  numberOfUserRatings = self->_numberOfUserRatings;
  if (!numberOfUserRatings)
  {
    clientContext = self->_clientContext;
    if (clientContext)
    {
      [(SKUIClientContext *)clientContext localizedStringForKey:@"REVIEWS_COUNT_NONE" inTable:@"ProductPage"];
    }

    else
    {
      [SKUIClientContext localizedStringForKey:@"REVIEWS_COUNT_NONE" inBundles:0 inTable:@"ProductPage"];
    }
    v12 = ;
    goto LABEL_27;
  }

  v7 = self->_clientContext;
  if (self->_versionString)
  {
    if (numberOfUserRatings == 1)
    {
      if (v7)
      {
        v8 = @"REVIEWS_COUNT_CURRENT_VERSION_ONE";
LABEL_13:
        v11 = [(SKUIClientContext *)v7 localizedStringForKey:v8 inTable:@"ProductPage"];
LABEL_22:
        v15 = v11;
        v12 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v11 validFormatSpecifiers:@"%@%@" error:0, v5, self->_versionString];

        goto LABEL_27;
      }

      v14 = @"REVIEWS_COUNT_CURRENT_VERSION_ONE";
    }

    else
    {
      if (v7)
      {
        v8 = @"REVIEWS_COUNT_CURRENT_VERSION_PLURAL";
        goto LABEL_13;
      }

      v14 = @"REVIEWS_COUNT_CURRENT_VERSION_PLURAL";
    }

    v11 = [SKUIClientContext localizedStringForKey:v14 inBundles:0 inTable:@"ProductPage"];
    goto LABEL_22;
  }

  if (numberOfUserRatings != 1)
  {
    if (v7)
    {
      v10 = @"REVIEWS_COUNT_ALL_VERSIONS_PLURAL";
      goto LABEL_18;
    }

    v16 = @"REVIEWS_COUNT_ALL_VERSIONS_PLURAL";
LABEL_25:
    v13 = [SKUIClientContext localizedStringForKey:v16 inBundles:0 inTable:@"ProductPage"];
    goto LABEL_26;
  }

  if (!v7)
  {
    v16 = @"REVIEWS_COUNT_ALL_VERSIONS_ONE";
    goto LABEL_25;
  }

  v10 = @"REVIEWS_COUNT_ALL_VERSIONS_ONE";
LABEL_18:
  v13 = [(SKUIClientContext *)v7 localizedStringForKey:v10 inTable:@"ProductPage"];
LABEL_26:
  v17 = v13;
  v12 = [MEMORY[0x277CCACA8] stringWithValidatedFormat:v13 validFormatSpecifiers:@"%@" error:0, v5];

LABEL_27:

  return v12;
}

- (void)initWithClientContext:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIReviewsHistogramView initWithClientContext:]";
}

@end