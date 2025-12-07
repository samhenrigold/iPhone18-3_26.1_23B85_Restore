@interface TSCellularPlanItemCell
- (TSCellularPlanItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setEnable:(BOOL)enable;
- (void)setIcon:(BOOL)icon;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
@end

@implementation TSCellularPlanItemCell

- (TSCellularPlanItemCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v79[7] = *MEMORY[0x277D85DE8];
  v78.receiver = self;
  v78.super_class = TSCellularPlanItemCell;
  v4 = [(TSCellularPlanItemCell *)&v78 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D756B8]);
    v6 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v8 = *(MEMORY[0x277CBF3A0] + 16);
    v9 = *(MEMORY[0x277CBF3A0] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], v7, v8, v9}];
    [(TSCellularPlanItemCell *)v4 setTitle:v10];

    v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
    title = [(TSCellularPlanItemCell *)v4 title];
    [title setFont:v11];

    title2 = [(TSCellularPlanItemCell *)v4 title];
    [title2 setNumberOfLines:0];

    title3 = [(TSCellularPlanItemCell *)v4 title];
    [title3 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v6, v7, v8, v9}];
    [(TSCellularPlanItemCell *)v4 setPlanInfo:v15];

    v16 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    planInfo = [(TSCellularPlanItemCell *)v4 planInfo];
    [planInfo setFont:v16];

    planInfo2 = [(TSCellularPlanItemCell *)v4 planInfo];
    [planInfo2 setNumberOfLines:0];

    planInfo3 = [(TSCellularPlanItemCell *)v4 planInfo];
    [planInfo3 setTranslatesAutoresizingMaskIntoConstraints:0];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    planInfo4 = [(TSCellularPlanItemCell *)v4 planInfo];
    [planInfo4 setTextColor:systemGrayColor];

    [(TSCellularPlanItemCell *)v4 setSeparatorInset:0.0, 50.0, 0.0, 0.0];
    contentView = [(TSCellularPlanItemCell *)v4 contentView];
    [contentView setLayoutMargins:{0.0, 0.0, 0.0, 40.0}];

    contentView2 = [(TSCellularPlanItemCell *)v4 contentView];
    title4 = [(TSCellularPlanItemCell *)v4 title];
    [contentView2 addSubview:title4];

    contentView3 = [(TSCellularPlanItemCell *)v4 contentView];
    planInfo5 = [(TSCellularPlanItemCell *)v4 planInfo];
    [contentView3 addSubview:planInfo5];

    v60 = MEMORY[0x277CCAAD0];
    title5 = [(TSCellularPlanItemCell *)v4 title];
    topAnchor = [title5 topAnchor];
    contentView4 = [(TSCellularPlanItemCell *)v4 contentView];
    layoutMarginsGuide = [contentView4 layoutMarginsGuide];
    topAnchor2 = [layoutMarginsGuide topAnchor];
    defaultMetrics = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics scaledValueForValue:0.0];
    v71 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:?];
    v79[0] = v71;
    title6 = [(TSCellularPlanItemCell *)v4 title];
    leadingAnchor = [title6 leadingAnchor];
    contentView5 = [(TSCellularPlanItemCell *)v4 contentView];
    layoutMarginsGuide2 = [contentView5 layoutMarginsGuide];
    leadingAnchor2 = [layoutMarginsGuide2 leadingAnchor];
    defaultMetrics2 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics2 scaledValueForValue:30.0];
    v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v79[1] = v64;
    title7 = [(TSCellularPlanItemCell *)v4 title];
    trailingAnchor = [title7 trailingAnchor];
    contentView6 = [(TSCellularPlanItemCell *)v4 contentView];
    layoutMarginsGuide3 = [contentView6 layoutMarginsGuide];
    trailingAnchor2 = [layoutMarginsGuide3 trailingAnchor];
    defaultMetrics3 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics3 scaledValueForValue:24.0];
    v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:?];
    v79[2] = v56;
    planInfo6 = [(TSCellularPlanItemCell *)v4 planInfo];
    topAnchor3 = [planInfo6 topAnchor];
    title8 = [(TSCellularPlanItemCell *)v4 title];
    bottomAnchor = [title8 bottomAnchor];
    v51 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
    v79[3] = v51;
    planInfo7 = [(TSCellularPlanItemCell *)v4 planInfo];
    leadingAnchor3 = [planInfo7 leadingAnchor];
    contentView7 = [(TSCellularPlanItemCell *)v4 contentView];
    layoutMarginsGuide4 = [contentView7 layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide4 leadingAnchor];
    defaultMetrics4 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics4 scaledValueForValue:30.0];
    v44 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    v79[4] = v44;
    planInfo8 = [(TSCellularPlanItemCell *)v4 planInfo];
    trailingAnchor3 = [planInfo8 trailingAnchor];
    contentView8 = [(TSCellularPlanItemCell *)v4 contentView];
    layoutMarginsGuide5 = [contentView8 layoutMarginsGuide];
    trailingAnchor4 = [layoutMarginsGuide5 trailingAnchor];
    defaultMetrics5 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics5 scaledValueForValue:24.0];
    v28 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:?];
    v79[5] = v28;
    contentView9 = [(TSCellularPlanItemCell *)v4 contentView];
    bottomAnchor2 = [contentView9 bottomAnchor];
    planInfo9 = [(TSCellularPlanItemCell *)v4 planInfo];
    bottomAnchor3 = [planInfo9 bottomAnchor];
    defaultMetrics6 = [MEMORY[0x277D75520] defaultMetrics];
    [defaultMetrics6 scaledValueForValue:13.0];
    v34 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:?];
    v79[6] = v34;
    v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:7];
    [v60 activateConstraints:v35];

    v36 = objc_opt_new();
    clearColor = [MEMORY[0x277D75348] clearColor];
    [v36 setBackgroundColor:clearColor];

    [(TSCellularPlanItemCell *)v4 setSelectedBackgroundView:v36];
  }

  return v4;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = TSCellularPlanItemCell;
  [(TSCellularPlanItemCell *)&v5 setSelected:selected animated:animated];
  [(TSCellularPlanItemCell *)self setNeedsLayout];
}

- (void)setIcon:(BOOL)icon
{
  iconCopy = icon;
  self->_isPhysical = icon;
  imageView = [(TSCellularPlanItemCell *)self imageView];
  if (iconCopy)
  {
    v6 = @"simcard";
  }

  else
  {
    v6 = @"esim";
  }

  v7 = [MEMORY[0x277D755B8] systemImageNamed:v6];
  [imageView setImage:v7];

  imageView2 = [(TSCellularPlanItemCell *)self imageView];
  labelColor = [MEMORY[0x277D75348] labelColor];
  [imageView2 setTintColor:labelColor];
}

- (void)setEnable:(BOOL)enable
{
  if (enable)
  {
    [(TSCellularPlanItemCell *)self setUserInteractionEnabled:1];
    title = [(TSCellularPlanItemCell *)self title];
    [title setEnabled:1];

    planInfo = [(TSCellularPlanItemCell *)self planInfo];
    [planInfo setEnabled:1];

    imageView = [(TSCellularPlanItemCell *)self imageView];
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [(TSCellularPlanItemCell *)self setUserInteractionEnabled:?];
    title2 = [(TSCellularPlanItemCell *)self title];
    [title2 setEnabled:0];

    planInfo2 = [(TSCellularPlanItemCell *)self planInfo];
    [planInfo2 setEnabled:0];

    imageView = [(TSCellularPlanItemCell *)self imageView];
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v8 = ;
  [imageView setTintColor:v8];
}

@end