@interface TPSBridgeSettingsController
- (id)localizedPaneTitle;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TPSBridgeSettingsController

- (void)viewWillAppear:(BOOL)appear
{
  v14.receiver = self;
  v14.super_class = TPSBridgeSettingsController;
  [(TPSBridgeSettingsController *)&v14 viewWillAppear:appear];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [_NSLocalizedStringResource alloc];
  titleKey = [(TPSBridgeSettingsController *)self titleKey];
  v7 = +[NSLocale currentLocale];
  bundleURL = [v4 bundleURL];
  v9 = [v5 initWithKey:titleKey table:@"Localizable" locale:v7 bundleURL:bundleURL];

  bundleIdentifier = [v4 bundleIdentifier];
  bundleIdentifier2 = [v4 bundleIdentifier];
  v12 = [NSString stringWithFormat:@"bridge:root=%@", bundleIdentifier2];
  v13 = [NSURL URLWithString:v12];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:bundleIdentifier title:v9 localizedNavigationComponents:&__NSArray0__struct deepLink:v13];
}

- (id)localizedPaneTitle
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  titleKey = [(TPSBridgeSettingsController *)self titleKey];
  v5 = [v3 localizedStringForKey:titleKey value:&stru_40F8 table:0];

  return v5;
}

@end