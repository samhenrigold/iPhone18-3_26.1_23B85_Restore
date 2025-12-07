@interface REUpNextLargeTextCell
+ (void)initialize;
- (REUpNextLargeTextCell)initWithFrame:(CGRect)frame;
- (void)_updateHeaderColor;
- (void)configureWithContent:(id)content;
- (void)defaultTextColorDidChange;
- (void)updateConstraints;
@end

@implementation REUpNextLargeTextCell

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    kActiveLayout_0_2 = 0x4033800000000000;
    kActiveLayout_1_2 = 0x4043800000000000;
    kActiveLayout_2_2 = 0x4012000000000000;
    kActiveLayout_3_1 = 0x4030800000000000;
    kActiveLayout_4_1 = 0x4043800000000000;
    kActiveLayout_5_1 = 0x4020000000000000;
    kActiveLayout_8_0 = 0x4018000000000000;
    kActiveLayout_10_0 = 0x4018000000000000;
  }
}

- (REUpNextLargeTextCell)initWithFrame:(CGRect)frame
{
  v136[9] = *MEMORY[0x277D85DE8];
  v130.receiver = self;
  v130.super_class = REUpNextLargeTextCell;
  v3 = [(REUpNextBaseCell *)&v130 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_3_1];
    fontDescriptor = [v4 fontDescriptor];
    v129 = [fontDescriptor fontDescriptorWithSymbolicTraits:2];

    v6 = [MEMORY[0x277CBBB08] systemFontOfSize:*&kActiveLayout_4_1 weight:*MEMORY[0x277D74418]];
    cLKFontWithAlternativePunctuation = [v6 CLKFontWithAlternativePunctuation];
    standardBodyFont = v3->_standardBodyFont;
    v3->_standardBodyFont = cLKFontWithAlternativePunctuation;

    cLKFontWithMonospacedNumbers = [(CLKFont *)v3->_standardBodyFont CLKFontWithMonospacedNumbers];
    monospaceBodyFont = v3->_monospaceBodyFont;
    v3->_monospaceBodyFont = cLKFontWithMonospacedNumbers;

    v11 = [MEMORY[0x277CBBB08] fontWithDescriptor:v129 size:*&kActiveLayout_3_1];
    v12 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v3->_contentLayoutGuide;
    v3->_contentLayoutGuide = v12;

    v14 = objc_alloc(MEMORY[0x277CFA760]);
    v15 = *MEMORY[0x277CBF3A0];
    v16 = *(MEMORY[0x277CBF3A0] + 8);
    v17 = *(MEMORY[0x277CBF3A0] + 16);
    v18 = *(MEMORY[0x277CBF3A0] + 24);
    v19 = [v14 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], v16, v17, v18}];
    headerLabel = v3->_headerLabel;
    v3->_headerLabel = v19;

    [(CLKUIColoringLabel *)v3->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_headerLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_headerLabel setNowProvider:&__block_literal_global_3];
    v128 = v11;
    [(CLKUIColoringLabel *)v3->_headerLabel setFont:v11];
    v21 = v3->_headerLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v21 setTextColor:whiteColor];

    v23 = [objc_alloc(MEMORY[0x277CFA760]) initWithFrame:6 options:{v15, v16, v17, v18}];
    bodyLabel = v3->_bodyLabel;
    v3->_bodyLabel = v23;

    [(CLKUIColoringLabel *)v3->_bodyLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setLineBreakMode:4];
    [(CLKUIColoringLabel *)v3->_bodyLabel setNowProvider:&__block_literal_global_7_0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setFont:v3->_standardBodyFont];
    v25 = v3->_bodyLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v25 setTextColor:whiteColor2];

    [(CLKUIColoringLabel *)v3->_bodyLabel setMinimumScaleFactor:0.75];
    [(CLKUIColoringLabel *)v3->_bodyLabel setAdjustsFontSizeToFitWidth:1];
    [(CLKUIColoringLabel *)v3->_bodyLabel setBaselineAdjustment:0];
    [(CLKUIColoringLabel *)v3->_bodyLabel setNumberOfLines:1];
    v27 = [[REUpNextImageView alloc] initWithFrame:v15, v16, v17, v18];
    headerImage = v3->_headerImage;
    v3->_headerImage = v27;

    LODWORD(v29) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentHuggingPriority:0 forAxis:v29];
    LODWORD(v30) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentHuggingPriority:1 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentCompressionResistancePriority:0 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(REUpNextImageView *)v3->_headerImage setContentCompressionResistancePriority:1 forAxis:v32];
    [(REUpNextImageView *)v3->_headerImage setTranslatesAutoresizingMaskIntoConstraints:0];
    v33 = [[REUpNextImageView alloc] initWithFrame:v15, v16, v17, v18];
    bodyImage = v3->_bodyImage;
    v3->_bodyImage = v33;

    LODWORD(v35) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentHuggingPriority:0 forAxis:v35];
    LODWORD(v36) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentHuggingPriority:1 forAxis:v36];
    LODWORD(v37) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentCompressionResistancePriority:0 forAxis:v37];
    LODWORD(v38) = 1148846080;
    [(REUpNextImageView *)v3->_bodyImage setContentCompressionResistancePriority:1 forAxis:v38];
    [(REUpNextImageView *)v3->_bodyImage setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(REUpNextLargeTextCell *)v3 contentView];
    [contentView addLayoutGuide:v3->_contentLayoutGuide];

    contentView2 = [(REUpNextLargeTextCell *)v3 contentView];
    [contentView2 addSubview:v3->_headerImage];

    contentView3 = [(REUpNextLargeTextCell *)v3 contentView];
    [contentView3 addSubview:v3->_headerLabel];

    contentView4 = [(REUpNextLargeTextCell *)v3 contentView];
    [contentView4 addSubview:v3->_bodyLabel];

    contentView5 = [(REUpNextLargeTextCell *)v3 contentView];
    [contentView5 addSubview:v3->_bodyImage];

    [v11 capHeight];
    UIRoundToViewScale();
    v45 = v44;
    topAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    contentView6 = [(REUpNextLargeTextCell *)v3 contentView];
    topAnchor2 = [contentView6 topAnchor];
    v123 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:0.0];
    v136[0] = v123;
    bottomAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    contentView7 = [(REUpNextLargeTextCell *)v3 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    v119 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-0.0];
    v136[1] = v119;
    leadingAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    contentView8 = [(REUpNextLargeTextCell *)v3 contentView];
    leadingAnchor2 = [contentView8 leadingAnchor];
    v115 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:*&kActiveLayout_8_0];
    v136[2] = v115;
    trailingAnchor = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    contentView9 = [(REUpNextLargeTextCell *)v3 contentView];
    trailingAnchor2 = [contentView9 trailingAnchor];
    v111 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-*&kActiveLayout_10_0];
    v136[3] = v111;
    centerYAnchor = [(REUpNextImageView *)v3->_headerImage centerYAnchor];
    firstBaselineAnchor = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v108 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor constant:-v45];
    v136[4] = v108;
    firstBaselineAnchor2 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    topAnchor3 = [(UILayoutGuide *)v3->_contentLayoutGuide topAnchor];
    v105 = [firstBaselineAnchor2 constraintEqualToAnchor:topAnchor3 constant:*&kActiveLayout_0_2];
    v136[5] = v105;
    bottomAnchor3 = [(REUpNextImageView *)v3->_bodyImage bottomAnchor];
    firstBaselineAnchor3 = [(CLKUIColoringLabel *)v3->_bodyLabel firstBaselineAnchor];
    v48 = [bottomAnchor3 constraintEqualToAnchor:firstBaselineAnchor3];
    v136[6] = v48;
    firstBaselineAnchor4 = [(CLKUIColoringLabel *)v3->_bodyLabel firstBaselineAnchor];
    firstBaselineAnchor5 = [(CLKUIColoringLabel *)v3->_headerLabel firstBaselineAnchor];
    v51 = [firstBaselineAnchor4 constraintEqualToAnchor:firstBaselineAnchor5 constant:*&kActiveLayout_1_2];
    v136[7] = v51;
    lastBaselineAnchor = [(CLKUIColoringLabel *)v3->_bodyLabel lastBaselineAnchor];
    bottomAnchor4 = [(UILayoutGuide *)v3->_contentLayoutGuide bottomAnchor];
    v54 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor4 constant:-*&kActiveLayout_5_1];
    v136[8] = v54;
    v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v136 count:9];

    leadingAnchor3 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    leadingAnchor4 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v57 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v135[0] = v57;
    trailingAnchor3 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    trailingAnchor4 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v60 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v135[1] = v60;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v135 count:2];
    headerWithNoImageConstraints = v3->_headerWithNoImageConstraints;
    v3->_headerWithNoImageConstraints = v61;

    leadingAnchor5 = [(REUpNextImageView *)v3->_headerImage leadingAnchor];
    leadingAnchor6 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v65 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v134[0] = v65;
    leadingAnchor7 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    trailingAnchor5 = [(REUpNextImageView *)v3->_headerImage trailingAnchor];
    v68 = [leadingAnchor7 constraintEqualToAnchor:trailingAnchor5 constant:*&kActiveLayout_2_2];
    v134[1] = v68;
    trailingAnchor6 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    trailingAnchor7 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v71 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v134[2] = v71;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:v134 count:3];
    headerWithLeftImageConstraints = v3->_headerWithLeftImageConstraints;
    v3->_headerWithLeftImageConstraints = v72;

    leadingAnchor8 = [(CLKUIColoringLabel *)v3->_headerLabel leadingAnchor];
    leadingAnchor9 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v76 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9];
    v133[0] = v76;
    trailingAnchor8 = [(CLKUIColoringLabel *)v3->_headerLabel trailingAnchor];
    leadingAnchor10 = [(REUpNextImageView *)v3->_headerImage leadingAnchor];
    v79 = [trailingAnchor8 constraintEqualToAnchor:leadingAnchor10 constant:-*&kActiveLayout_2_2];
    v133[1] = v79;
    trailingAnchor9 = [(REUpNextImageView *)v3->_headerImage trailingAnchor];
    trailingAnchor10 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v82 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v133[2] = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:v133 count:3];
    headerWithRightImageConstraints = v3->_headerWithRightImageConstraints;
    v3->_headerWithRightImageConstraints = v83;

    leadingAnchor11 = [(CLKUIColoringLabel *)v3->_bodyLabel leadingAnchor];
    leadingAnchor12 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v87 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
    v132[0] = v87;
    trailingAnchor11 = [(CLKUIColoringLabel *)v3->_bodyLabel trailingAnchor];
    trailingAnchor12 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v90 = [trailingAnchor11 constraintEqualToAnchor:trailingAnchor12];
    v132[1] = v90;
    v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:2];
    bodyWithNoImageConstraints = v3->_bodyWithNoImageConstraints;
    v3->_bodyWithNoImageConstraints = v91;

    leadingAnchor13 = [(REUpNextImageView *)v3->_bodyImage leadingAnchor];
    leadingAnchor14 = [(UILayoutGuide *)v3->_contentLayoutGuide leadingAnchor];
    v95 = [leadingAnchor13 constraintEqualToAnchor:leadingAnchor14];
    v131[0] = v95;
    leadingAnchor15 = [(CLKUIColoringLabel *)v3->_bodyLabel leadingAnchor];
    trailingAnchor13 = [(REUpNextImageView *)v3->_bodyImage trailingAnchor];
    v98 = [leadingAnchor15 constraintEqualToAnchor:trailingAnchor13 constant:0.0];
    v131[1] = v98;
    trailingAnchor14 = [(CLKUIColoringLabel *)v3->_bodyLabel trailingAnchor];
    trailingAnchor15 = [(UILayoutGuide *)v3->_contentLayoutGuide trailingAnchor];
    v101 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15];
    v131[2] = v101;
    v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v131 count:3];
    bodyWithLeftImageConstraints = v3->_bodyWithLeftImageConstraints;
    v3->_bodyWithLeftImageConstraints = v102;

    [MEMORY[0x277CCAAD0] activateConstraints:v3->_bodyWithNoImageConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v3->_headerWithNoImageConstraints];
    [MEMORY[0x277CCAAD0] activateConstraints:v127];
  }

  return v3;
}

- (void)updateConstraints
{
  content = [(REUpNextBaseCell *)self content];
  headerImageProvider = [content headerImageProvider];
  if (headerImageProvider)
  {
    v5 = 1;
  }

  else
  {
    overrideHeaderImage = [content overrideHeaderImage];
    v5 = overrideHeaderImage != 0;
  }

  headerImageEdge = [content headerImageEdge];
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if (self->_showingHeaderImage != v5 || headerImageEdge != self->_currentImageEdge)
  {
    self->_currentImageEdge = headerImageEdge;
    self->_showingHeaderImage = v5;
    headerImage = self->_headerImage;
    if (v5)
    {
      [(REUpNextImageView *)headerImage setHidden:0];
      [v9 addObjectsFromArray:self->_headerWithNoImageConstraints];
      headerImageEdge2 = [content headerImageEdge];
      if (headerImageEdge2 == 2)
      {
        v12 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithLeftImageConstraints;
      }

      else
      {
        v12 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithRightImageConstraints;
      }

      if (headerImageEdge2 == 2)
      {
        v13 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithRightImageConstraints;
      }

      else
      {
        v13 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithLeftImageConstraints;
      }
    }

    else
    {
      [(REUpNextImageView *)headerImage setHidden:1];
      [v9 addObjectsFromArray:self->_headerWithLeftImageConstraints];
      v13 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithNoImageConstraints;
      v12 = &OBJC_IVAR___REUpNextLargeTextCell__headerWithRightImageConstraints;
    }

    [v9 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v12)];
    [v8 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v13)];
  }

  bodyImageProvider = [content bodyImageProvider];
  if (bodyImageProvider)
  {
    v15 = 1;
  }

  else
  {
    overrideBodyImage = [content overrideBodyImage];
    v15 = overrideBodyImage != 0;
  }

  if (self->_showingBodyImage != v15)
  {
    self->_showingBodyImage = v15;
    if (v15)
    {
      v17 = &OBJC_IVAR___REUpNextLargeTextCell__bodyWithNoImageConstraints;
    }

    else
    {
      v17 = &OBJC_IVAR___REUpNextLargeTextCell__bodyWithLeftImageConstraints;
    }

    if (v15)
    {
      v18 = &OBJC_IVAR___REUpNextLargeTextCell__bodyWithLeftImageConstraints;
    }

    else
    {
      v18 = &OBJC_IVAR___REUpNextLargeTextCell__bodyWithNoImageConstraints;
    }

    [(REUpNextImageView *)self->_bodyImage setHidden:!v15];
    [v9 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v17)];
    [v8 addObjectsFromArray:*(&self->super.super.super.super.super.super.isa + *v18)];
  }

  [MEMORY[0x277CCAAD0] deactivateConstraints:v9];
  [MEMORY[0x277CCAAD0] activateConstraints:v8];
  v19.receiver = self;
  v19.super_class = REUpNextLargeTextCell;
  [(REUpNextLargeTextCell *)&v19 updateConstraints];
}

- (void)_updateHeaderColor
{
  content = [(REUpNextBaseCell *)self content];
  if ([content tintColorAffectsHeader] && !-[REUpNextBaseCell shouldOverrideContentHeaderColor](self, "shouldOverrideContentHeaderColor"))
  {
    headerLabel = self->_headerLabel;
    tintColor = [content tintColor];
  }

  else
  {
    headerLabel = self->_headerLabel;
    tintColor = [(REUpNextBaseCell *)self defaultTextColor];
  }

  v5 = tintColor;
  [(CLKUIColoringLabel *)headerLabel setTextColor:tintColor];
}

- (void)defaultTextColorDidChange
{
  v4.receiver = self;
  v4.super_class = REUpNextLargeTextCell;
  [(REUpNextBaseCell *)&v4 defaultTextColorDidChange];
  [(REUpNextLargeTextCell *)self _updateHeaderColor];
  defaultTextColor = [(REUpNextBaseCell *)self defaultTextColor];
  [(CLKUIColoringLabel *)self->_bodyLabel setTextColor:defaultTextColor];
}

- (void)configureWithContent:(id)content
{
  contentCopy = content;
  v29.receiver = self;
  v29.super_class = REUpNextLargeTextCell;
  [(REUpNextBaseCell *)&v29 configureWithContent:contentCopy];
  useMonospaceFont = [contentCopy useMonospaceFont];
  v6 = &OBJC_IVAR___REUpNextLargeTextCell__standardBodyFont;
  if (useMonospaceFont)
  {
    v6 = &OBJC_IVAR___REUpNextLargeTextCell__monospaceBodyFont;
  }

  [(CLKUIColoringLabel *)self->_bodyLabel setFont:*(&self->super.super.super.super.super.super.isa + *v6)];
  headerImage = self->_headerImage;
  tintColor = [contentCopy tintColor];
  [(REUpNextImageView *)headerImage setFallbackTintColor:tintColor];

  headerImageProvider = [contentCopy headerImageProvider];

  if (headerImageProvider)
  {
    v10 = self->_headerImage;
    headerImageProvider2 = [contentCopy headerImageProvider];
    [(REUpNextImageView *)v10 setImageProvider:headerImageProvider2];
  }

  else
  {
    overrideHeaderImage = [contentCopy overrideHeaderImage];

    if (!overrideHeaderImage)
    {
      goto LABEL_8;
    }

    v13 = self->_headerImage;
    headerImageProvider2 = [contentCopy overrideHeaderImage];
    [(REUpNextImageView *)v13 setOverrideImage:headerImageProvider2];
  }

LABEL_8:
  bodyImage = self->_bodyImage;
  tintColor2 = [contentCopy tintColor];
  [(REUpNextImageView *)bodyImage setFallbackTintColor:tintColor2];

  bodyImageProvider = [contentCopy bodyImageProvider];

  if (bodyImageProvider)
  {
    v17 = self->_bodyImage;
    bodyImageProvider2 = [contentCopy bodyImageProvider];
    [(REUpNextImageView *)v17 setImageProvider:bodyImageProvider2];
  }

  else
  {
    overrideBodyImage = [contentCopy overrideBodyImage];

    if (!overrideBodyImage)
    {
      goto LABEL_13;
    }

    v20 = self->_bodyImage;
    bodyImageProvider2 = [contentCopy overrideBodyImage];
    [(REUpNextImageView *)v20 setOverrideImage:bodyImageProvider2];
  }

LABEL_13:
  [(REUpNextLargeTextCell *)self _updateHeaderColor];
  headerLabel = self->_headerLabel;
  headerTextProvider = [contentCopy headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:headerTextProvider];

  overrideBodyString = [contentCopy overrideBodyString];

  bodyLabel = self->_bodyLabel;
  if (overrideBodyString)
  {
    [(CLKUIColoringLabel *)self->_bodyLabel setTextProvider:0];
    v25 = self->_bodyLabel;
    overrideBodyString2 = [contentCopy overrideBodyString];
    [(CLKUIColoringLabel *)v25 setText:overrideBodyString2];
  }

  else
  {
    overrideBodyString2 = [contentCopy description1TextProvider];
    [(CLKUIColoringLabel *)bodyLabel setTextProvider:overrideBodyString2];
  }

  headerTextProvider2 = [contentCopy headerTextProvider];
  [headerTextProvider2 setPaused:0];

  description1TextProvider = [contentCopy description1TextProvider];
  [description1TextProvider setPaused:0];

  [(REUpNextLargeTextCell *)self setNeedsUpdateConstraints];
}

@end