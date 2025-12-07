@interface NSBSettingsController
- (id)specifiers;
- (void)_setSelectedMetric:(unint64_t)metric;
- (void)preferencesObservedUpdate:(id)update;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NSBSettingsController

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = NSBSettingsController;
  [(NSBSettingsController *)&v6 viewDidLoad];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"STOCKS_TITLE" value:&stru_C5A0 table:@"StocksBridgeSettings"];
  [(NSBSettingsController *)self setTitle:v4];

  v5 = +[StocksSyncComplicationPreferences sharedPreferences];
  [v5 addPreferencesObserver:self];
}

- (void)viewWillAppear:(BOOL)appear
{
  v12.receiver = self;
  v12.super_class = NSBSettingsController;
  [(NSBSettingsController *)&v12 viewWillAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  bundleURL = [v3 bundleURL];
  v7 = [v4 initWithKey:@"STOCKS_TITLE" table:@"StocksBridgeSettings" locale:v5 bundleURL:bundleURL];

  bundleIdentifier = [v3 bundleIdentifier];
  bundleIdentifier2 = [v3 bundleIdentifier];
  v10 = [NSString stringWithFormat:@"bridge:root=%@", bundleIdentifier2];
  v11 = [NSURL URLWithString:v10];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForApplicationSettingWithIconSpecifierIdentifier:bundleIdentifier title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v11];
}

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v28 = OBJC_IVAR___PSListController__specifiers;
    v31 = +[NSMutableArray array];
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"CURRENT_PRICE" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"POINTS_CHANGE" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"PERCENTAGE_CHANGE" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"MARKET_CAP" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v30 = v5;
    v12 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v34[0] = v12;
    v29 = v7;
    v13 = [PSSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v34[1] = v13;
    v14 = [PSSpecifier preferenceSpecifierNamed:v9 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v34[2] = v14;
    v15 = [PSSpecifier preferenceSpecifierNamed:v11 target:self set:0 get:0 detail:0 cell:3 edit:0];
    v34[3] = v15;
    v16 = [NSArray arrayWithObjects:v34 count:4];

    v17 = +[StocksSyncComplicationPreferences sharedPreferences];
    complicationDisplayMode = [v17 complicationDisplayMode];

    v20 = stocks_bridge_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v33 = complicationDisplayMode;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Selected complication metric: %lu.", buf, 0xCu);
    }

    v21 = [v16 objectAtIndexedSubscript:complicationDisplayMode];
    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"COMPLICATION_SHOWS" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v24 = [PSSpecifier groupSpecifierWithName:v23];
    [v24 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];
    [v24 setProperty:v21 forKey:PSRadioGroupCheckedSpecifierKey];

    [v31 addObject:v24];
    [v31 addObjectsFromArray:v16];
    v25 = [v31 copy];
    v26 = *&self->PSListController_opaque[v28];
    *&self->PSListController_opaque[v28] = v25;

    v3 = *&self->PSListController_opaque[v28];
  }

  return v3;
}

- (void)_setSelectedMetric:(unint64_t)metric
{
  v4 = stocks_bridge_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 134217984;
    metricCopy = metric;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Selecting complication metric: %lu.", &v6, 0xCu);
  }

  v5 = +[StocksSyncComplicationPreferences sharedPreferences];
  [v5 setComplicationDisplayMode:metric];

  +[StocksSyncAppLauncher launchPhoneApp];
}

- (void)preferencesObservedUpdate:(id)update
{
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] = 0;

  [(NSBSettingsController *)self reloadSpecifiers];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  v11.receiver = self;
  v11.super_class = NSBSettingsController;
  [(NSBSettingsController *)&v11 tableView:view didSelectRowAtIndexPath:pathCopy];
  if (![pathCopy section])
  {
    v7 = [(NSBSettingsController *)self indexForIndexPath:pathCopy];
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"CURRENT_PRICE" value:&stru_C5A0 table:@"StocksBridgeSettings"];

    v10 = [(NSBSettingsController *)self indexOfSpecifierID:v9];
    if (v7 >= v10)
    {
      [(NSBSettingsController *)self _setSelectedMetric:v7 - v10];
    }
  }
}

@end