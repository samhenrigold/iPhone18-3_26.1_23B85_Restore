@interface ASAccessoryCompanionAppCell
- (void)commonInit;
@end

@implementation ASAccessoryCompanionAppCell

- (void)commonInit
{
  v22[4] = *MEMORY[0x277D85DE8];
  contentView = [(ASAccessoryCompanionAppCell *)self contentView];
  specifier = [(PSTableCell *)self specifier];
  userInfo = [specifier userInfo];

  v5 = [[ASAccessoryCompanionAppView alloc] initWithBundleID:userInfo];
  appView = self->_appView;
  self->_appView = v5;

  [(ASAccessoryCompanionAppView *)self->_appView setTranslatesAutoresizingMaskIntoConstraints:0];
  [contentView addSubview:self->_appView];
  v16 = MEMORY[0x277CCAAD0];
  topAnchor = [(ASAccessoryCompanionAppView *)self->_appView topAnchor];
  topAnchor2 = [contentView topAnchor];
  v18 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[0] = v18;
  bottomAnchor = [(ASAccessoryCompanionAppView *)self->_appView bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v8 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v22[1] = v8;
  leadingAnchor = [(ASAccessoryCompanionAppView *)self->_appView leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[2] = v11;
  trailingAnchor = [(ASAccessoryCompanionAppView *)self->_appView trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v14 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
  [v16 activateConstraints:v15];
}

@end