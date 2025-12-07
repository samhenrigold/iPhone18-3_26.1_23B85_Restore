@interface REUpNextLargeWithDetailTextCell
+ (void)initialize;
- (REUpNextLargeWithDetailTextCell)initWithFrame:(CGRect)frame;
- (void)_updateHeaderColor;
- (void)configureWithContent:(id)content;
- (void)defaultTextColorDidChange;
@end

@implementation REUpNextLargeWithDetailTextCell

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    kActiveLayout_0 = 0x4033800000000000;
    kActiveLayout_1 = 0x4043800000000000;
    kActiveLayout_2 = 0x4010000000000000;
    kActiveLayout_3 = 0x3FF0000000000000;
    kActiveLayout_5 = 0x4030800000000000;
    kActiveLayout_4 = 0x402F000000000000;
    kActiveLayout_6 = 0x4043800000000000;
    kActiveLayout_7 = 0x4020000000000000;
    kActiveLayout_8 = 0x402F000000000000;
    kActiveLayout_10 = 0x4018000000000000;
    kActiveLayout_12 = 0x4018000000000000;
  }
}

- (REUpNextLargeWithDetailTextCell)initWithFrame:(CGRect)frame
{
  v116[18] = *MEMORY[0x277D85DE8];
  v115.receiver = self;
  v115.super_class = REUpNextLargeWithDetailTextCell;
  v3 = [(REUpNextBaseCell *)&v115 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_5];
    fontDescriptor = [v4 fontDescriptor];
    v113 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v6 = *MEMORY[0x277D74418];
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_6 weight:*MEMORY[0x277D74418]];
    cLKFontWithAlternativePunctuation = [v7 CLKFontWithAlternativePunctuation];

    v112 = [MEMORY[0x277CBBB08] fontWithDescriptor:v113 size:*&kActiveLayout_0];
    v8 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_4 weight:v6];
    cLKFontWithAlternativePunctuation2 = [v8 CLKFontWithAlternativePunctuation];
    cLKFontWithMonospacedNumbers = [cLKFontWithAlternativePunctuation2 CLKFontWithMonospacedNumbers];

    v10 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v3->_contentLayoutGuide;
    v3->_contentLayoutGuide = v10;

    v12 = objc_alloc(MEMORY[0x277CFA760]);
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v15 = *(MEMORY[0x277CBF3A0] + 16);
    v16 = *(MEMORY[0x277CBF3A0] + 24);
    v17 = [v12 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], v14, v15, v16}];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v17;

    [(CLKUIColoringLabel *)v3->_headerLabel setNowProvider:&__block_literal_global_1];
    [(CLKUIColoringLabel *)v3->_headerLabel setFont:v112];
    [(CLKUIColoringLabel *)v3->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_headerLabel setLineBreakMode:4];
    v19 = v3->_headerLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v19 setTextColor:whiteColor];

    v21 = [objc_alloc(MEMORY[0x277CFA760]) initWithFrame:2 options:{v13, v14, v15, v16}];
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v21;

    [(CLKUIColoringLabel *)v3->_bodyLabel setNowProvider:&__block_literal_global_7];
    [(CLKUIColoringLabel *)v3->_bodyLabel setFont:cLKFontWithAlternativePunctuation];
    [(CLKUIColoringLabel *)v3->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setLineBreakMode:4];
    v23 = v3->_bodyLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v23 setTextColor:whiteColor2];

    [(CLKUIColoringLabel *)v3->_bodyLabel setMinimumScaleFactor:0.75];
    [(CLKUIColoringLabel *)v3->_bodyLabel setAdjustsFontSizeToFitWidth:1];
    [(CLKUIColoringLabel *)v3->_bodyLabel setBaselineAdjustment:0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setNumberOfLines:1];
    LODWORD(v25) = 1132068864;
    [(CLKUIColoringLabel *)v3->_bodyLabel setContentCompressionResistancePriority:0 forAxis:v25];
    LODWORD(v26) = 1148846080;
    [(CLKUIColoringLabel *)v3->_bodyLabel setContentHuggingPriority:0 forAxis:v26];
    v27 = [[REUpNextImageView alloc] initWithFrame:v13, v14, v15, v16];
    bodyImage = v3->_bodyImage;
    v3->_bodyImage = v27;

    LODWORD(v29) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentCompressionResistancePriority:0 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentCompressionResistancePriority:1 forAxis:v32];
    [(REUpNextImageView *)v3->_bodyImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [objc_alloc(MEMORY[0x277CFA760]) initWithFrame:4 options:{v13, v14, v15, v16}];
    detail1Label = v3->_detail1Label;
    v3->_detail1Label = v33;

    [(CLKUIColoringLabel *)v3->_detail1Label setNowProvider:&__block_literal_global_10];
    [(CLKUIColoringLabel *)v3->_detail1Label setFont:cLKFontWithMonospacedNumbers];
    [(CLKUIColoringLabel *)v3->_detail1Label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_detail1Label setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_detail1Label setTextAlignment:2];
    v35 = v3->_detail1Label;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v35 setTextColor:whiteColor3];

    LODWORD(v37) = 1148846080;
    [(CLKUIColoringLabel *)v3->_detail1Label setContentCompressionResistancePriority:0 forAxis:v37];
    LODWORD(v38) = 1132068864;
    [(CLKUIColoringLabel *)v3->_detail1Label setContentHuggingPriority:0 forAxis:v38];
    v39 = [objc_alloc(MEMORY[0x277CFA760]) initWithFrame:4 options:{v13, v14, v15, v16}];
    detail2Label = v3->_detail2Label;
    v3->_detail2Label = v39;

    [(CLKUIColoringLabel *)v3->_detail2Label setNowProvider:&__block_literal_global_12];
    [(CLKUIColoringLabel *)v3->_detail2Label setFont:cLKFontWithMonospacedNumbers];
    v41 = v3->_detail2Label;
    whiteColor4 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v41 setTextColor:whiteColor4];

    [(CLKUIColoringLabel *)v3->_detail2Label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_detail2Label setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_detail2Label setTextAlignment:2];
    LODWORD(v43) = 1148846080;
    [(CLKUIColoringLabel *)v3->_detail2Label setContentCompressionResistancePriority:0 forAxis:v43];
    LODWORD(v44) = 1132068864;
    [(CLKUIColoringLabel *)v3->_detail2Label setContentHuggingPriority:0 forAxis:v44];
    contentView = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [contentView addLayoutGuide:v3->_contentLayoutGuide];

    contentView2 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [contentView2 addSubview:v3->_bodyImage];

    contentView3 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [contentView3 addSubview:v3->_headerLabel];

    contentView4 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [contentView4 addSubview:v3->_bodyLabel];

    contentView5 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [contentView5 addSubview:v3->_detail1Label];

    contentView6 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    [contentView6 addSubview:v3->_detail2Label];

    topAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    contentView7 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    topAnchor2 = [contentView7 topAnchor];
    v107 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v116[0] = v107;
    bottomAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    contentView8 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    bottomAnchor2 = [contentView8 bottomAnchor];
    v103 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
    v116[1] = v103;
    leadingAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    contentView9 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    leadingAnchor2 = [contentView9 leadingAnchor];
    v99 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&kActiveLayout_10];
    v116[2] = v99;
    trailingAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    contentView10 = [(REUpNextLargeWithDetailTextCell *)v3 contentView];
    trailingAnchor2 = [contentView10 trailingAnchor];
    v95 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-*&kActiveLayout_12];
    v116[3] = v95;
    firstBaselineAnchor = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    topAnchor3 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v92 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3 constant:*&kActiveLayout_0];
    v116[4] = v92;
    leadingAnchor3 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v89 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v116[5] = v89;
    trailingAnchor3 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v86 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v116[6] = v86;
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_bodyLabel firstBaselineAnchor];
    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v83 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:*&kActiveLayout_1];
    v116[7] = v83;
    lastBaselineAnchor = [(CLKUIColoringLabel *)v3->_bodyLabel lastBaselineAnchor];
    bottomAnchor3 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v80 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor3 constant:-*&kActiveLayout_7];
    v116[8] = v80;
    bottomAnchor4 = [(REUpNextImageView *)v3->_bodyImage bottomAnchor];
    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v3->_bodyLabel firstBaselineAnchor];
    v77 = [bottomAnchor4 constraintEqualToAnchor:firstBaselineAnchor4];
    v116[9] = v77;
    firstBaselineAnchor5 = [(CLKUIColoringLabel *)v3->_detail2Label firstBaselineAnchor];
    bottomAnchor5 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v74 = [firstBaselineAnchor5 constraintEqualToAnchor:bottomAnchor5 constant:-*&kActiveLayout_7];
    v116[10] = v74;
    firstBaselineAnchor6 = [(CLKUIColoringLabel *)v3->_detail1Label firstBaselineAnchor];
    firstBaselineAnchor7 = [(CLKUIColoringLabel *)v3->_detail2Label firstBaselineAnchor];
    v70 = [firstBaselineAnchor6 constraintEqualToAnchor:firstBaselineAnchor7 constant:-*&kActiveLayout_8];
    v116[11] = v70;
    leadingAnchor5 = [(CLKUIColoringLabel *)v3->_detail2Label leadingAnchor];
    leadingAnchor6 = [(CLKUIColoringLabel *)v3->_detail1Label leadingAnchor];
    v67 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v116[12] = v67;
    trailingAnchor5 = [(CLKUIColoringLabel *)v3->_detail2Label trailingAnchor];
    trailingAnchor6 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v64 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
    v116[13] = v64;
    leadingAnchor7 = [(CLKUIColoringLabel *)v3->_bodyLabel leadingAnchor];
    leadingAnchor8 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v61 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v116[14] = v61;
    leadingAnchor9 = [(REUpNextImageView *)v3->_bodyImage leadingAnchor];
    trailingAnchor7 = [(CLKUIColoringLabel *)v3->_bodyLabel trailingAnchor];
    v53 = [leadingAnchor9 constraintEqualToAnchor:trailingAnchor7 constant:*&kActiveLayout_2];
    v116[15] = v53;
    leadingAnchor10 = [(CLKUIColoringLabel *)v3->_detail1Label leadingAnchor];
    trailingAnchor8 = [(REUpNextImageView *)v3->_bodyImage trailingAnchor];
    v56 = [leadingAnchor10 constraintEqualToAnchor:trailingAnchor8 constant:*&kActiveLayout_3];
    v116[16] = v56;
    trailingAnchor9 = [(CLKUIColoringLabel *)v3->_detail1Label trailingAnchor];
    trailingAnchor10 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v59 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v116[17] = v59;
    v73 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:18];

    [MEMORY[0x277CCAAD0] activateConstraints:v73];
  }

  return v3;
}

- (void)_updateHeaderColor
{
  content = [(REUpNextBaseCell *)self content];
  if ([content tintColorAffectsHeader])
  {
    shouldOverrideContentHeaderColor = [(REUpNextBaseCell *)self shouldOverrideContentHeaderColor];

    if (shouldOverrideContentHeaderColor)
    {
      headerLabel = self->_headerLabel;
      content2 = [(REUpNextBaseCell *)self content];
      tintColor = [content2 tintColor];
      [(CLKUIColoringLabel *)headerLabel setTextColor:tintColor];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = self->_headerLabel;
  content2 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)v7 setTextColor:?];
LABEL_6:
}

- (void)defaultTextColorDidChange
{
  v9.receiver = self;
  v9.super_class = REUpNextLargeWithDetailTextCell;
  [(REUpNextBaseCell *)&v9 defaultTextColorDidChange];
  [(REUpNextLargeWithDetailTextCell *)self _updateHeaderColor];
  bodyLabel = self->_bodyLabel;
  defaultTextColor = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)bodyLabel setTextColor:defaultTextColor];

  detail1Label = self->_detail1Label;
  defaultTextColor2 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)detail1Label setTextColor:defaultTextColor2];

  detail2Label = self->_detail2Label;
  defaultTextColor3 = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)detail2Label setTextColor:defaultTextColor3];
}

- (void)configureWithContent:(id)content
{
  contentCopy = content;
  v24.receiver = self;
  v24.super_class = REUpNextLargeWithDetailTextCell;
  [(REUpNextBaseCell *)&v24 configureWithContent:contentCopy];
  bodyImage = self->_bodyImage;
  tintColor = [contentCopy tintColor];
  [(REUpNextImageView *)bodyImage setFallbackTintColor:tintColor];

  bodyImageProvider = [contentCopy bodyImageProvider];

  if (bodyImageProvider)
  {
    v8 = self->_bodyImage;
    bodyImageProvider2 = [contentCopy bodyImageProvider];
    [(REUpNextImageView *)v8 setImageProvider:bodyImageProvider2];
LABEL_5:

    goto LABEL_6;
  }

  overrideBodyImage = [contentCopy overrideBodyImage];

  if (overrideBodyImage)
  {
    v11 = self->_bodyImage;
    bodyImageProvider2 = [contentCopy overrideBodyImage];
    [(REUpNextImageView *)v11 setOverrideImage:bodyImageProvider2];
    goto LABEL_5;
  }

LABEL_6:
  [(REUpNextLargeWithDetailTextCell *)self _updateHeaderColor];
  headerLabel = self->_headerLabel;
  headerTextProvider = [contentCopy headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:headerTextProvider];

  bodyLabel = self->_bodyLabel;
  description1TextProvider = [contentCopy description1TextProvider];
  [(CLKUIColoringLabel *)bodyLabel setTextProvider:description1TextProvider];

  detail1Label = self->_detail1Label;
  description2TextProvider = [contentCopy description2TextProvider];
  [(CLKUIColoringLabel *)detail1Label setTextProvider:description2TextProvider];

  detail2Label = self->_detail2Label;
  description3TextProvider = [contentCopy description3TextProvider];
  [(CLKUIColoringLabel *)detail2Label setTextProvider:description3TextProvider];

  headerTextProvider2 = [contentCopy headerTextProvider];
  [headerTextProvider2 setPaused:0];

  description1TextProvider2 = [contentCopy description1TextProvider];
  [description1TextProvider2 setPaused:0];

  description2TextProvider2 = [contentCopy description2TextProvider];
  [description2TextProvider2 setPaused:0];

  description3TextProvider2 = [contentCopy description3TextProvider];
  [description3TextProvider2 setPaused:0];
}

@end