@interface ASAccessoryInfoHeaderCell
- (void)commonInit;
@end

@implementation ASAccessoryInfoHeaderCell

- (void)commonInit
{
  v26[4] = *MEMORY[0x277D85DE8];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [(ASAccessoryInfoHeaderCell *)self setBackgroundColor:clearColor];

  specifier = [(PSTableCell *)self specifier];
  userInfo = [specifier userInfo];

  v5 = [[ASAccessoryInfoHeaderView alloc] initWithDevice:userInfo insets:16.0, 16.0, 16.0, 16.0];
  [(ASAccessoryInfoHeaderView *)v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView = [(ASAccessoryInfoHeaderCell *)self contentView];
  [contentView addSubview:v5];

  v17 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(ASAccessoryInfoHeaderView *)v5 leadingAnchor];
  contentView2 = [(ASAccessoryInfoHeaderCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v26[0] = v21;
  trailingAnchor = [(ASAccessoryInfoHeaderView *)v5 trailingAnchor];
  contentView3 = [(ASAccessoryInfoHeaderCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v26[1] = v16;
  topAnchor = [(ASAccessoryInfoHeaderView *)v5 topAnchor];
  contentView4 = [(ASAccessoryInfoHeaderCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v26[2] = v10;
  bottomAnchor = [(ASAccessoryInfoHeaderView *)v5 bottomAnchor];
  contentView5 = [(ASAccessoryInfoHeaderCell *)self contentView];
  bottomAnchor2 = [contentView5 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v26[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v17 activateConstraints:v15];
}

@end