@interface SafariSettingsUpdatableListItemsController
- (SafariSettingsUpdatableListItemsController)init;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SafariSettingsUpdatableListItemsController

- (SafariSettingsUpdatableListItemsController)init
{
  v13.receiver = self;
  v13.super_class = SafariSettingsUpdatableListItemsController;
  v2 = [(SafariSettingsUpdatableListItemsController *)&v13 init];
  if (v2)
  {
    v3 = +[NSDistributedNotificationCenter defaultCenter];
    v4 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFOpenLinksInBackgroundDefaultsKey];
    [v3 addObserver:v2 selector:"_reload" name:v4 object:0];

    v5 = +[NSDistributedNotificationCenter defaultCenter];
    v6 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:WBSCloseTabsAutomaticallyDefaultsKey];
    [v5 addObserver:v2 selector:"_reload" name:v6 object:0];

    v7 = +[NSDistributedNotificationCenter defaultCenter];
    v8 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFSearchEngineStringDefaultsKey];
    [v7 addObserver:v2 selector:"_reload" name:v8 object:0];

    v9 = +[NSDistributedNotificationCenter defaultCenter];
    v10 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFPrivateSearchEngineStringDefaultsKey];
    [v9 addObserver:v2 selector:"_reload" name:v10 object:0];

    v11 = v2;
  }

  return v2;
}

- (void)viewWillAppear:(BOOL)appear
{
  v18.receiver = self;
  v18.super_class = SafariSettingsUpdatableListItemsController;
  [(SafariSettingsUpdatableListItemsController *)&v18 viewWillAppear:appear];
  specifier = [(SafariSettingsUpdatableListItemsController *)self specifier];
  identifier = [specifier identifier];

  specifier2 = [(SafariSettingsUpdatableListItemsController *)self specifier];
  name = [specifier2 name];

  v17 = identifier;
  v8 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.Apps/com.apple.mobilesafari/%@", identifier];
  v9 = [NSURL URLWithString:v8];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v10 bundleURL];

  v12 = +[NSLocale currentLocale];
  v13 = [[_NSLocalizedStringResource alloc] initWithKey:name table:0 locale:v12 bundleURL:bundleURL];
  v14 = [[_NSLocalizedStringResource alloc] initWithKey:@"Safari" table:@"Safari" locale:v12 bundleURL:bundleURL];
  v15 = [[_NSLocalizedStringResource alloc] initWithKey:@"Apps" table:@"Safari" locale:v12 bundleURL:bundleURL];
  if (objc_opt_respondsToSelector())
  {
    v19[0] = v15;
    v19[1] = v14;
    v16 = [NSArray arrayWithObjects:v19 count:2];
    [(SafariSettingsUpdatableListItemsController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:@"com.apple.mobilesafari" title:v13 localizedNavigationComponents:v16 deepLink:v9];
  }
}

@end