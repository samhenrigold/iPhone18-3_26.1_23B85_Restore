@interface CKBSDefaultRepliesViewController
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation CKBSDefaultRepliesViewController

- (void)viewWillAppear:(BOOL)appear
{
  v17.receiver = self;
  v17.super_class = CKBSDefaultRepliesViewController;
  [(CKBSDefaultRepliesViewController *)&v17 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"DEFAULT_REPLIES" table:@"MessagesNotificationsSpecifiers" locale:v5 bundleURL:bundleURL];

  v8 = [_NSLocalizedStringResource alloc];
  v9 = +[NSLocale currentLocale];
  bundleURL2 = [v3 bundleURL];
  v11 = [v8 initWithKey:@"NANO_APP_TITLE" table:@"MessagesNotificationsSpecifiers" locale:v9 bundleURL:bundleURL2];

  bundleIdentifier = [v3 bundleIdentifier];
  v18 = v11;
  v13 = [NSArray arrayWithObjects:&v18 count:1];
  bundleIdentifier2 = [v3 bundleIdentifier];
  v15 = [NSString stringWithFormat:@"bridge:root=%@&path=DEFAULT_REPLIES_ID", bundleIdentifier2];
  v16 = [NSURL URLWithString:v15];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:bundleIdentifier title:v7 localizedNavigationComponents:v13 deepLink:v16];
}

@end