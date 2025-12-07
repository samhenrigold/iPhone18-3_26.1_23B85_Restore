@interface TSCellularPlanUsesTableViewCell
- (TSCellularPlanUsesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setLabel:(id)label description:(id)description badge:(id)badge;
@end

@implementation TSCellularPlanUsesTableViewCell

- (TSCellularPlanUsesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v59[5] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = TSCellularPlanUsesTableViewCell;
  v4 = [(TSCellularPlanUsesTableViewCell *)&v58 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [(TSCellularPlanUsesTableViewCell *)v4 setTitleLabel:v10];

    v11 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleLabel = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    [titleLabel setFont:v11];

    titleLabel2 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    [titleLabel2 setNumberOfLines:0];

    titleLabel3 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    [titleLabel3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    [(TSCellularPlanUsesTableViewCell *)v4 setDescriptionLabel:v15];

    v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    descriptionLabel = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [descriptionLabel setFont:v16];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    descriptionLabel2 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [descriptionLabel2 setTextColor:systemGrayColor];

    descriptionLabel3 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [descriptionLabel3 setNumberOfLines:0];

    descriptionLabel4 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [descriptionLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    [contentView setLayoutMargins:{0.0, 25.0, 0.0, 25.0}];

    contentView2 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    titleLabel4 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    [contentView2 addSubview:titleLabel4];

    contentView3 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    descriptionLabel5 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    [contentView3 addSubview:descriptionLabel5];

    v46 = MEMORY[0x277CCAAD0];
    titleLabel5 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    topAnchor = [titleLabel5 topAnchor];
    contentView4 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    topAnchor2 = [contentView4 topAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:12.0];
    v52 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v59[0] = v52;
    descriptionLabel6 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    topAnchor3 = [descriptionLabel6 topAnchor];
    titleLabel6 = [(TSCellularPlanUsesTableViewCell *)v4 titleLabel];
    bottomAnchor = [titleLabel6 bottomAnchor];
    v47 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v59[1] = v47;
    descriptionLabel7 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    leadingAnchor = [descriptionLabel7 leadingAnchor];
    contentView5 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    layoutMarginsGuide = [contentView5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v40 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v59[2] = v40;
    descriptionLabel8 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    trailingAnchor = [descriptionLabel8 trailingAnchor];
    contentView6 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    trailingAnchor2 = [contentView6 trailingAnchor];
    v28 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v59[3] = v28;
    contentView7 = [(TSCellularPlanUsesTableViewCell *)v4 contentView];
    bottomAnchor2 = [contentView7 bottomAnchor];
    descriptionLabel9 = [(TSCellularPlanUsesTableViewCell *)v4 descriptionLabel];
    bottomAnchor3 = [descriptionLabel9 bottomAnchor];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:12.0];
    v34 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:?];
    v59[4] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:5];
    [v46 activateConstraints:v35];
  }

  return v4;
}

- (void)setLabel:(id)label description:(id)description badge:(id)badge
{
  v53[1] = *MEMORY[0x277D85DE8];
  descriptionCopy = description;
  badgeCopy = badge;
  labelCopy = label;
  titleLabel = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
  [titleLabel setText:labelCopy];

  badge = [(TSCellularPlanUsesTableViewCell *)self badge];

  if (badge)
  {
    badge2 = [(TSCellularPlanUsesTableViewCell *)self badge];
    [badge2 removeFromSuperview];
  }

  v49 = badgeCopy;
  v14 = [MEMORY[0x277CBDB08] badgeForText:badgeCopy];
  [(TSCellularPlanUsesTableViewCell *)self setBadge:v14];

  v52 = *MEMORY[0x277D74068];
  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  v53[0] = systemGrayColor;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  badge3 = [(TSCellularPlanUsesTableViewCell *)self badge];
  [badge3 setViewAttributes:v16];

  contentView = [(TSCellularPlanUsesTableViewCell *)self contentView];
  badge4 = [(TSCellularPlanUsesTableViewCell *)self badge];
  [contentView addSubview:badge4];

  v48 = descriptionCopy;
  if (descriptionCopy)
  {
    descriptionLabel = [(TSCellularPlanUsesTableViewCell *)self descriptionLabel];
    [descriptionLabel setText:descriptionCopy];
  }

  else
  {
    titleLabel2 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
    [titleLabel2 setTextAlignment:1];

    descriptionLabel = [(TSCellularPlanUsesTableViewCell *)self contentView];
    titleLabel3 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
    [descriptionLabel addSubview:titleLabel3];
  }

  contentView2 = [(TSCellularPlanUsesTableViewCell *)self contentView];
  badge5 = [(TSCellularPlanUsesTableViewCell *)self badge];
  leadingAnchor = [badge5 leadingAnchor];
  contentView3 = [(TSCellularPlanUsesTableViewCell *)self contentView];
  layoutMarginsGuide = [contentView3 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v42 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v51[0] = v42;
  badge6 = [(TSCellularPlanUsesTableViewCell *)self badge];
  trailingAnchor = [badge6 trailingAnchor];
  titleLabel4 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
  leadingAnchor3 = [titleLabel4 leadingAnchor];
  defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
  [defaultMetrics scaledValueForValue:-4.0];
  v36 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:?];
  v51[1] = v36;
  badge7 = [(TSCellularPlanUsesTableViewCell *)self badge];
  centerYAnchor = [badge7 centerYAnchor];
  titleLabel5 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
  centerYAnchor2 = [titleLabel5 centerYAnchor];
  v27 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v51[2] = v27;
  badge8 = [(TSCellularPlanUsesTableViewCell *)self badge];
  widthAnchor = [badge8 widthAnchor];
  v30 = [widthAnchor constraintLessThanOrEqualToConstant:300.0];
  v51[3] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:4];
  [contentView2 addConstraints:v31];

  badge9 = [(TSCellularPlanUsesTableViewCell *)self badge];
  titleLabel6 = [(TSCellularPlanUsesTableViewCell *)self titleLabel];
  [titleLabel6 contentHuggingPriorityForAxis:0];
  *&v35 = v34 + 1.0;
  [badge9 setContentHuggingPriority:0 forAxis:v35];
}

@end