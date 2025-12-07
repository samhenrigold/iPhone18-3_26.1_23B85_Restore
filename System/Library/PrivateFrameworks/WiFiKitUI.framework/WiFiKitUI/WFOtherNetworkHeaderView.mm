@interface WFOtherNetworkHeaderView
- (NSString)title;
- (WFOtherNetworkHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)_configureContents;
- (void)setTitle:(id)title;
@end

@implementation WFOtherNetworkHeaderView

- (WFOtherNetworkHeaderView)initWithReuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = WFOtherNetworkHeaderView;
  v3 = [(WFOtherNetworkHeaderView *)&v8 initWithReuseIdentifier:identifier];
  v4 = objc_opt_new();
  [(WFOtherNetworkHeaderView *)v3 setTitleLabel:v4];

  [(UILabel *)v3->_titleLabel sizeToFit];
  [(UILabel *)v3->_titleLabel setTextAlignment:1];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
  [(UILabel *)v3->_titleLabel setFont:v5];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [(UILabel *)v3->_titleLabel setTextColor:secondaryLabelColor];

  [(WFOtherNetworkHeaderView *)v3 _configureContents];
  return v3;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  titleLabel = [(WFOtherNetworkHeaderView *)self titleLabel];
  v7 = titleLabel;
  if (titleCopy)
  {
    v6 = titleCopy;
  }

  else
  {
    v6 = &stru_288308678;
  }

  [titleLabel setText:v6];

  [(WFOtherNetworkHeaderView *)self setTitleLabel:v7];
}

- (NSString)title
{
  titleLabel = [(WFOtherNetworkHeaderView *)self titleLabel];
  text = [titleLabel text];

  return text;
}

- (void)_configureContents
{
  v48[9] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  titleLabel = [(WFOtherNetworkHeaderView *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(WFOtherNetworkHeaderView *)self contentView];
  [contentView addSubview:v3];

  contentView2 = [(WFOtherNetworkHeaderView *)self contentView];
  titleLabel2 = [(WFOtherNetworkHeaderView *)self titleLabel];
  [contentView2 addSubview:titleLabel2];

  v31 = MEMORY[0x277CCAAD0];
  titleLabel3 = [(WFOtherNetworkHeaderView *)self titleLabel];
  leadingAnchor = [titleLabel3 leadingAnchor];
  contentView3 = [(WFOtherNetworkHeaderView *)self contentView];
  leadingAnchor2 = [contentView3 leadingAnchor];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v48[0] = v43;
  titleLabel4 = [(WFOtherNetworkHeaderView *)self titleLabel];
  topAnchor = [titleLabel4 topAnchor];
  contentView4 = [(WFOtherNetworkHeaderView *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v38 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v48[1] = v38;
  titleLabel5 = [(WFOtherNetworkHeaderView *)self titleLabel];
  trailingAnchor = [titleLabel5 trailingAnchor];
  contentView5 = [(WFOtherNetworkHeaderView *)self contentView];
  trailingAnchor2 = [contentView5 trailingAnchor];
  v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v48[2] = v33;
  titleLabel6 = [(WFOtherNetworkHeaderView *)self titleLabel];
  bottomAnchor = [titleLabel6 bottomAnchor];
  topAnchor3 = [v3 topAnchor];
  v28 = [bottomAnchor constraintEqualToAnchor:topAnchor3];
  v48[3] = v28;
  leadingAnchor3 = [v3 leadingAnchor];
  contentView6 = [(WFOtherNetworkHeaderView *)self contentView];
  leadingAnchor4 = [contentView6 leadingAnchor];
  v23 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v48[4] = v23;
  topAnchor4 = [v3 topAnchor];
  titleLabel7 = [(WFOtherNetworkHeaderView *)self titleLabel];
  bottomAnchor2 = [titleLabel7 bottomAnchor];
  v19 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2];
  v48[5] = v19;
  trailingAnchor3 = [v3 trailingAnchor];
  contentView7 = [(WFOtherNetworkHeaderView *)self contentView];
  trailingAnchor4 = [contentView7 trailingAnchor];
  v10 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v48[6] = v10;
  v27 = v3;
  bottomAnchor3 = [v3 bottomAnchor];
  contentView8 = [(WFOtherNetworkHeaderView *)self contentView];
  bottomAnchor4 = [contentView8 bottomAnchor];
  v14 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v48[7] = v14;
  heightAnchor = [v3 heightAnchor];
  v16 = [heightAnchor constraintEqualToConstant:24.0];
  v48[8] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:9];
  [v31 activateConstraints:v17];
}

@end