@interface PKContinuityPaymentCardSummaryView
- (PKContinuityPaymentCardSummaryView)initWithFrame:(CGRect)frame;
- (id)_formatTextForString:(id)string alerting:(BOOL)alerting;
- (void)_createLabels;
- (void)_createSubviews;
- (void)_prepareImageAndValueConstraints;
- (void)setCardDescription:(id)description;
- (void)setShowsAlert:(BOOL)alert;
- (void)setSubtitle:(id)subtitle;
- (void)updateConstraints;
@end

@implementation PKContinuityPaymentCardSummaryView

- (PKContinuityPaymentCardSummaryView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKContinuityPaymentCardSummaryView;
  v3 = [(PKContinuityPaymentCardSummaryView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_showsAlert = 0;
    [(PKContinuityPaymentCardSummaryView *)v3 _createSubviews];
    [(PKContinuityPaymentCardSummaryView *)v4 _prepareImageAndValueConstraints];
  }

  return v4;
}

- (void)_createSubviews
{
  [(PKContinuityPaymentCardSummaryView *)self _createLabels];
  v3 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
  thumbnailView = self->_thumbnailView;
  self->_thumbnailView = v3;

  [(UIImageView *)self->_thumbnailView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_thumbnailView setAccessibilityIgnoresInvertColors:1];
  v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
  v6 = PKUIImageNamed(@"Payment_AlertAccessory");
  pkui_osloErrorColor = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
  v8 = [v6 _flatImageWithColor:pkui_osloErrorColor];
  v9 = [v5 initWithImage:v8];
  alertView = self->_alertView;
  self->_alertView = v9;

  [(UIImageView *)self->_alertView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_alertView setHidden:!self->_showsAlert];
  [(PKContinuityPaymentCardSummaryView *)self setTranslatesAutoresizingMaskIntoConstraints:0];
  [(PKContinuityPaymentCardSummaryView *)self addSubview:self->_descriptionView];
  [(PKContinuityPaymentCardSummaryView *)self addSubview:self->_subtitleView];
  [(PKContinuityPaymentCardSummaryView *)self addSubview:self->_thumbnailView];
  v11 = self->_alertView;

  [(PKContinuityPaymentCardSummaryView *)self addSubview:v11];
}

- (void)_createLabels
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  descriptionView = self->_descriptionView;
  self->_descriptionView = v3;

  [(UILabel *)self->_descriptionView setNumberOfLines:1];
  [(UILabel *)self->_descriptionView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_cardDescription)
  {
    cardDescription = self->_cardDescription;
  }

  else
  {
    cardDescription = &stru_1F3BD7330;
  }

  objc_storeStrong(&self->_cardDescription, cardDescription);
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleView = self->_subtitleView;
  self->_subtitleView = v6;

  [(UILabel *)self->_subtitleView setNumberOfLines:1];
  [(UILabel *)self->_subtitleView setTranslatesAutoresizingMaskIntoConstraints:0];
  if (self->_subtitle)
  {
    subtitle = self->_subtitle;
  }

  else
  {
    subtitle = &stru_1F3BD7330;
  }

  objc_storeStrong(&self->_subtitle, subtitle);
  v9 = self->_descriptionView;
  v10 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:self->_cardDescription alerting:0];
  [(UILabel *)v9 setAttributedText:v10];

  v11 = self->_subtitleView;
  v12 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:self->_subtitle alerting:self->_showsAlert];
  [(UILabel *)v11 setAttributedText:v12];
}

- (id)_formatTextForString:(id)string alerting:(BOOL)alerting
{
  alertingCopy = alerting;
  v20[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69DB7D0];
  stringCopy = string;
  defaultParagraphStyle = [v5 defaultParagraphStyle];
  v8 = [defaultParagraphStyle mutableCopy];

  [v8 setLineBreakMode:4];
  v9 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC30]);
  v10 = objc_alloc(MEMORY[0x1E695DF90]);
  v11 = *MEMORY[0x1E69DB648];
  v20[0] = v9;
  v12 = *MEMORY[0x1E69DB688];
  v19[0] = v11;
  v19[1] = v12;
  v13 = [v8 copy];
  v20[1] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v15 = [v10 initWithDictionary:v14];

  if (alertingCopy)
  {
    pkui_osloErrorColor = [MEMORY[0x1E69DC888] pkui_osloErrorColor];
    [v15 setObject:pkui_osloErrorColor forKey:*MEMORY[0x1E69DB650]];
  }

  v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy attributes:v15];

  return v17;
}

- (void)setShowsAlert:(BOOL)alert
{
  if (self->_showsAlert != alert)
  {
    self->_showsAlert = alert;
    [(UIImageView *)self->_alertView setHidden:!alert];
    subtitleView = self->_subtitleView;
    v5 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:self->_subtitle alerting:self->_showsAlert];
    [(UILabel *)subtitleView setAttributedText:v5];

    [(PKContinuityPaymentCardSummaryView *)self setNeedsUpdateConstraints];
  }
}

- (void)setCardDescription:(id)description
{
  descriptionCopy = &stru_1F3BD7330;
  if (description)
  {
    descriptionCopy = description;
  }

  v5 = descriptionCopy;
  cardDescription = self->_cardDescription;
  self->_cardDescription = v5;
  v7 = v5;

  descriptionView = self->_descriptionView;
  v9 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:v7 alerting:0];
  [(UILabel *)descriptionView setAttributedText:v9];
}

- (void)setSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
  }

  else
  {
    subtitleCopy = &stru_1F3BD7330;
  }

  v5 = subtitleCopy;
  if (self->_subtitle != v5)
  {
    subtitleView = self->_subtitleView;
    v8 = v5;
    v7 = [(PKContinuityPaymentCardSummaryView *)self _formatTextForString:v5 alerting:self->_showsAlert];
    [(UILabel *)subtitleView setAttributedText:v7];

    objc_storeStrong(&self->_subtitle, subtitleCopy);
    [(PKContinuityPaymentCardSummaryView *)self setNeedsUpdateConstraints];
    v5 = v8;
  }
}

- (void)_prepareImageAndValueConstraints
{
  array = [MEMORY[0x1E695DF70] array];
  PKPassFrontFaceContentSize();
  v5.n128_f64[0] = v4.n128_f64[0] / v3 * 41.0;
  PKFloatRoundToPixel(v5, v4);
  v7 = v6;
  v8 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_thumbnailView attribute:5 relatedBy:0 toItem:self attribute:17 multiplier:1.0 constant:42.0];
  [array addObject:v8];

  v9 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_thumbnailView attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v7];
  [array addObject:v9];

  v10 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_thumbnailView attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:41.0];
  [array addObject:v10];

  centerYAnchor = [(UIImageView *)self->_thumbnailView centerYAnchor];
  centerYAnchor2 = [(PKContinuityPaymentCardSummaryView *)self centerYAnchor];
  v13 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [array addObject:v13];

  centerYAnchor3 = [(UIImageView *)self->_alertView centerYAnchor];
  centerYAnchor4 = [(PKContinuityPaymentCardSummaryView *)self centerYAnchor];
  v16 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  [array addObject:v16];

  trailingAnchor = [(UIImageView *)self->_alertView trailingAnchor];
  layoutMarginsGuide = [(PKContinuityPaymentCardSummaryView *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v20];

  v21 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_descriptionView attribute:5 relatedBy:0 toItem:self attribute:17 multiplier:1.0 constant:100.0];
  [array addObject:v21];

  v22 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_descriptionView attribute:6 relatedBy:-1 toItem:self attribute:18 multiplier:1.0 constant:0.0];
  textToTrailingConstraint = self->_textToTrailingConstraint;
  self->_textToTrailingConstraint = v22;

  v24 = [MEMORY[0x1E696ACD8] constraintWithItem:self->_descriptionView attribute:6 relatedBy:-1 toItem:self->_alertView attribute:5 multiplier:1.0 constant:-12.0];
  textToAlertConstraint = self->_textToAlertConstraint;
  self->_textToAlertConstraint = v24;

  [array addObject:self->_textToTrailingConstraint];
  v80 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD08], *MEMORY[0x1E69DDC30]);
  [v80 _bodyLeading];
  v27 = v26;
  v28 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  v29 = objc_alloc_init(MEMORY[0x1E69DCC20]);
  [(PKContinuityPaymentCardSummaryView *)self addLayoutGuide:v28];
  [(PKContinuityPaymentCardSummaryView *)self addLayoutGuide:v29];
  heightAnchor = [v28 heightAnchor];
  heightAnchor2 = [v29 heightAnchor];
  v32 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  [array addObject:v32];

  topAnchor = [v28 topAnchor];
  topAnchor2 = [(PKContinuityPaymentCardSummaryView *)self topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [array addObject:v35];

  bottomAnchor = [v29 bottomAnchor];
  bottomAnchor2 = [(PKContinuityPaymentCardSummaryView *)self bottomAnchor];
  v38 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [array addObject:v38];

  bottomAnchor3 = [v28 bottomAnchor];
  firstBaselineAnchor = [(UILabel *)self->_descriptionView firstBaselineAnchor];
  [v80 capHeight];
  v42 = [bottomAnchor3 constraintEqualToAnchor:firstBaselineAnchor constant:-v41];
  [array addObject:v42];

  heightAnchor3 = [v28 heightAnchor];
  v44 = [heightAnchor3 constraintGreaterThanOrEqualToConstant:14.0];
  [array addObject:v44];

  array2 = [MEMORY[0x1E695DF70] array];
  subtitleConstraints = self->_subtitleConstraints;
  self->_subtitleConstraints = array2;

  v47 = self->_subtitleConstraints;
  topAnchor3 = [v29 topAnchor];
  firstBaselineAnchor2 = [(UILabel *)self->_subtitleView firstBaselineAnchor];
  v50 = [topAnchor3 constraintEqualToAnchor:firstBaselineAnchor2];
  [(NSMutableArray *)v47 addObject:v50];

  v51 = self->_subtitleConstraints;
  leadingAnchor = [(UILabel *)self->_subtitleView leadingAnchor];
  leadingAnchor2 = [(UILabel *)self->_descriptionView leadingAnchor];
  v54 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [(NSMutableArray *)v51 addObject:v54];

  v55 = self->_subtitleConstraints;
  firstBaselineAnchor3 = [(UILabel *)self->_subtitleView firstBaselineAnchor];
  firstBaselineAnchor4 = [(UILabel *)self->_descriptionView firstBaselineAnchor];
  v58 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4 constant:v27];
  [(NSMutableArray *)v55 addObject:v58];

  v59 = self->_subtitleConstraints;
  centerXAnchor = [(UILabel *)self->_subtitleView centerXAnchor];
  centerXAnchor2 = [(UILabel *)self->_descriptionView centerXAnchor];
  v62 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  [(NSMutableArray *)v59 addObject:v62];

  v63 = self->_subtitleConstraints;
  trailingAnchor3 = [(UILabel *)self->_subtitleView trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_descriptionView trailingAnchor];
  v66 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  [(NSMutableArray *)v63 addObject:v66];

  array3 = [MEMORY[0x1E695DF70] array];
  singleLineConstraints = self->_singleLineConstraints;
  self->_singleLineConstraints = array3;

  v69 = self->_singleLineConstraints;
  centerYAnchor5 = [(UILabel *)self->_descriptionView centerYAnchor];
  centerYAnchor6 = [(PKContinuityPaymentCardSummaryView *)self centerYAnchor];
  v72 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
  [(NSMutableArray *)v69 addObject:v72];

  v73 = self->_singleLineConstraints;
  topAnchor4 = [v29 topAnchor];
  firstBaselineAnchor5 = [(UILabel *)self->_descriptionView firstBaselineAnchor];
  v76 = [topAnchor4 constraintEqualToAnchor:firstBaselineAnchor5];
  [(NSMutableArray *)v73 addObject:v76];

  [array addObjectsFromArray:self->_singleLineConstraints];
  [array addObjectsFromArray:self->_subtitleConstraints];
  heightAnchor4 = [v29 heightAnchor];
  v78 = [heightAnchor4 constraintEqualToConstant:1.0];

  LODWORD(v79) = 1132068864;
  [v78 setPriority:v79];
  [array addObject:v78];
  [MEMORY[0x1E696ACD8] activateConstraints:array];
}

- (void)updateConstraints
{
  [(NSLayoutConstraint *)self->_textToTrailingConstraint setActive:!self->_showsAlert];
  [(NSLayoutConstraint *)self->_textToAlertConstraint setActive:self->_showsAlert];
  subtitle = self->_subtitle;
  if (subtitle && ([(NSString *)subtitle isEqual:&stru_1F3BD7330]& 1) == 0)
  {
    [MEMORY[0x1E696ACD8] activateConstraints:self->_subtitleConstraints];
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_singleLineConstraints];
  }

  else
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:self->_subtitleConstraints];
    [MEMORY[0x1E696ACD8] activateConstraints:self->_singleLineConstraints];
  }

  v4.receiver = self;
  v4.super_class = PKContinuityPaymentCardSummaryView;
  [(PKContinuityPaymentCardSummaryView *)&v4 updateConstraints];
}

@end