@interface FullLocationHistoryDevicesList
- (FullLocationHistoryDevicesList)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)setUpConstraints;
@end

@implementation FullLocationHistoryDevicesList

- (FullLocationHistoryDevicesList)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v9.receiver = self;
  v9.super_class = FullLocationHistoryDevicesList;
  v5 = [(PSTableCell *)&v9 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  if (v5)
  {
    v6 = [[_TtC21CommunicationsSetupUI28CKSettingsCheckInDevicesList alloc] initWithFullDataSharing:1];
    devicesList = v5->_devicesList;
    v5->_devicesList = v6;

    [(FullLocationHistoryDevicesList *)v5 setUpConstraints];
  }

  return v5;
}

- (void)setUpConstraints
{
  v31[4] = *MEMORY[0x277D85DE8];
  devicesList = [(FullLocationHistoryDevicesList *)self devicesList];
  getView = [devicesList getView];

  view = [getView view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];

  inputViewController = [(FullLocationHistoryDevicesList *)self inputViewController];
  [inputViewController addChildViewController:getView];

  contentView = [(FullLocationHistoryDevicesList *)self contentView];
  view2 = [getView view];
  [contentView addSubview:view2];

  v21 = MEMORY[0x277CCAAD0];
  view3 = [getView view];
  centerYAnchor = [view3 centerYAnchor];
  contentView2 = [(FullLocationHistoryDevicesList *)self contentView];
  centerYAnchor2 = [contentView2 centerYAnchor];
  v26 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v31[0] = v26;
  view4 = [getView view];
  centerXAnchor = [view4 centerXAnchor];
  contentView3 = [(FullLocationHistoryDevicesList *)self contentView];
  centerXAnchor2 = [contentView3 centerXAnchor];
  v20 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v31[1] = v20;
  view5 = [getView view];
  widthAnchor = [view5 widthAnchor];
  contentView4 = [(FullLocationHistoryDevicesList *)self contentView];
  widthAnchor2 = [contentView4 widthAnchor];
  v11 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v31[2] = v11;
  contentView5 = [(FullLocationHistoryDevicesList *)self contentView];
  heightAnchor = [contentView5 heightAnchor];
  view6 = [getView view];
  heightAnchor2 = [view6 heightAnchor];
  v16 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
  v31[3] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:4];
  [v21 activateConstraints:v17];
}

@end