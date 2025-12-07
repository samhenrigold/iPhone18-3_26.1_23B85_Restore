@interface WFShortcutsSettingsLegalNoticesController
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation WFShortcutsSettingsLegalNoticesController

- (void)viewDidAppear:(BOOL)appear
{
  v22.receiver = self;
  v22.super_class = WFShortcutsSettingsLegalNoticesController;
  [(WFShortcutsSettingsLegalNoticesController *)&v22 viewDidAppear:appear];
  v4 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.Apps/com.apple.shortcuts/ShortcutsLegalNotices"];
  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v7 bundleURL];
  v9 = [v5 initWithKey:@"Legal Notices" table:0 locale:v6 bundleURL:bundleURL];

  v10 = [_NSLocalizedStringResource alloc];
  v11 = +[NSLocale currentLocale];
  v12 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v12 bundleURL];
  v14 = [v10 initWithKey:@"Apps" table:0 locale:v11 bundleURL:bundleURL2];

  v15 = [_NSLocalizedStringResource alloc];
  v16 = +[NSLocale currentLocale];
  v17 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL3 = [v17 bundleURL];
  v19 = [v15 initWithKey:@"Shortcuts" table:0 locale:v16 bundleURL:bundleURL3];

  v20 = VCBundleIdentifierShortcutsiOS;
  v23[0] = v14;
  v23[1] = v19;
  v21 = [NSArray arrayWithObjects:v23 count:2];
  [(WFShortcutsSettingsLegalNoticesController *)self pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v20 title:v9 localizedNavigationComponents:v21 deepLink:v4];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = WFShortcutsSettingsLegalNoticesController;
  [(WFShortcutsSettingsLegalNoticesController *)&v4 viewDidLoad];
  v3 = WFShortcutsSettingsLocalizedString(@"Legal Notices");
  [(WFShortcutsSettingsLegalNoticesController *)self setTitle:v3];
}

@end